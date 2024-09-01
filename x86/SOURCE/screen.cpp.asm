;-------------------------------------------------------------------------------
;                                                                              -
;  Module 84: D:\SOURCE\screen.cpp                                             -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function '.fn_init_mod_84'                    -
;-------------------------------------------------
.fn_init_mod_84:
   4c0c0:	52                   	push   edx
   4c0c1:	56                   	push   esi
   4c0c2:	b8 10 3c 01 00       	mov    eax,@obj3:screen_cpp_variable_7                              ; fixup: num: 11838, src obj: 1, src ofs: 0x4c0c3, dst obj: 3, dst ofs: 0x13c10
   4c0c7:	e8 06 60 02 00       	call   __wcpp_2_mod_register__
   4c0cc:	31 d2                	xor    edx,edx
   4c0ce:	be 01 00 00 00       	mov    esi,0x1
   4c0d3:	89 15 84 5a 02 00    	mov    DWORD PTR ds:@obj3:the_screen,edx                            ; fixup: num: 11837, src obj: 1, src ofs: 0x4c0d5, dst obj: 3, dst ofs: 0x25a84
   4c0d9:	89 15 8c 5a 02 00    	mov    DWORD PTR ds:@obj3:the_list_variable_1,edx                   ; fixup: num: 11836, src obj: 1, src ofs: 0x4c0db, dst obj: 3, dst ofs: 0x25a8c
   4c0df:	89 15 88 5a 02 00    	mov    DWORD PTR ds:@obj3:the_list,edx                              ; fixup: num: 11835, src obj: 1, src ofs: 0x4c0e1, dst obj: 3, dst ofs: 0x25a88
   4c0e5:	89 35 18 3c 01 00    	mov    DWORD PTR ds:@obj3:screen_cpp_variable_8,esi                 ; fixup: num: 11834, src obj: 1, src ofs: 0x4c0e7, dst obj: 3, dst ofs: 0x13c18
   4c0eb:	5e                   	pop    esi
   4c0ec:	5a                   	pop    edx
   4c0ed:	c3                   	ret    
   4c0ee:	8b c0                	mov    eax,eax

;-------------------------------------------------
;  Function 'get_bitmap'                         -
;-------------------------------------------------
get_bitmap:
   4c0f0:	53                   	push   ebx
   4c0f1:	51                   	push   ecx
   4c0f2:	89 d1                	mov    ecx,edx
   4c0f4:	85 d2                	test   edx,edx
   4c0f6:	75 05                	jne    get_bitmap_branch_1
   4c0f8:	31 c0                	xor    eax,eax
   4c0fa:	59                   	pop    ecx
   4c0fb:	5b                   	pop    ebx
   4c0fc:	c3                   	ret    
get_bitmap_branch_1:
   4c0fd:	8b 18                	mov    ebx,DWORD PTR [eax]
   4c0ff:	85 db                	test   ebx,ebx
   4c101:	74 1b                	je     get_bitmap_branch_4
get_bitmap_branch_2:
   4c103:	8b 53 10             	mov    edx,DWORD PTR [ebx+0x10]
   4c106:	85 d2                	test   edx,edx
   4c108:	74 0d                	je     get_bitmap_branch_3
   4c10a:	89 d0                	mov    eax,edx
   4c10c:	89 ca                	mov    edx,ecx
   4c10e:	e8 1d a3 02 00       	call   strcmp_
   4c113:	85 c0                	test   eax,eax
   4c115:	74 07                	je     get_bitmap_branch_4
get_bitmap_branch_3:
   4c117:	8b 5b 48             	mov    ebx,DWORD PTR [ebx+0x48]
   4c11a:	85 db                	test   ebx,ebx
   4c11c:	75 e5                	jne    get_bitmap_branch_2
get_bitmap_branch_4:
   4c11e:	89 d8                	mov    eax,ebx
   4c120:	59                   	pop    ecx
   4c121:	5b                   	pop    ebx
   4c122:	c3                   	ret    
   4c123:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   4c129:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
   4c12f:	90                   	nop

;-------------------------------------------------
;  Function 'insert_bitmap'                      -
;-------------------------------------------------
insert_bitmap:
   4c130:	53                   	push   ebx
   4c131:	51                   	push   ecx
   4c132:	56                   	push   esi
   4c133:	57                   	push   edi
   4c134:	55                   	push   ebp
   4c135:	81 ec 94 00 00 00    	sub    esp,0x94
   4c13b:	89 c7                	mov    edi,eax
   4c13d:	89 d1                	mov    ecx,edx
   4c13f:	89 d0                	mov    eax,edx
   4c141:	e8 fa f2 fe ff       	call   scale_mod_75
   4c146:	8b 52 04             	mov    edx,DWORD PTR [edx+0x4]
   4c149:	31 f6                	xor    esi,esi
   4c14b:	85 d2                	test   edx,edx
   4c14d:	74 08                	je     insert_bitmap_branch_1
   4c14f:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
   4c152:	8b 00                	mov    eax,DWORD PTR [eax]
   4c154:	89 41 2c             	mov    DWORD PTR [ecx+0x2c],eax
insert_bitmap_branch_1:
   4c157:	8b 59 04             	mov    ebx,DWORD PTR [ecx+0x4]
   4c15a:	85 db                	test   ebx,ebx
   4c15c:	74 06                	je     insert_bitmap_branch_2
   4c15e:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
   4c161:	89 41 30             	mov    DWORD PTR [ecx+0x30],eax
insert_bitmap_branch_2:
   4c164:	8b 1f                	mov    ebx,DWORD PTR [edi]
   4c166:	85 db                	test   ebx,ebx
   4c168:	0f 84 ce 02 00 00    	je     insert_bitmap_branch_30
insert_bitmap_branch_3:
   4c16e:	8b 6b 10             	mov    ebp,DWORD PTR [ebx+0x10]
   4c171:	85 ed                	test   ebp,ebp
   4c173:	0f 84 ab 02 00 00    	je     insert_bitmap_branch_29
   4c179:	8b 41 10             	mov    eax,DWORD PTR [ecx+0x10]
   4c17c:	85 c0                	test   eax,eax
   4c17e:	0f 84 a0 02 00 00    	je     insert_bitmap_branch_29
   4c184:	89 c2                	mov    edx,eax
   4c186:	89 e8                	mov    eax,ebp
   4c188:	e8 a3 a2 02 00       	call   strcmp_
   4c18d:	85 c0                	test   eax,eax
   4c18f:	0f 85 8f 02 00 00    	jne    insert_bitmap_branch_29
   4c195:	83 79 38 15          	cmp    DWORD PTR [ecx+0x38],0x15
   4c199:	0f 8d 42 05 00 00    	jge    insert_bitmap_branch_60
   4c19f:	8b 51 3c             	mov    edx,DWORD PTR [ecx+0x3c]
   4c1a2:	8b 79 24             	mov    edi,DWORD PTR [ecx+0x24]
   4c1a5:	8b 41 40             	mov    eax,DWORD PTR [ecx+0x40]
   4c1a8:	8b 69 28             	mov    ebp,DWORD PTR [ecx+0x28]
   4c1ab:	8b 59 30             	mov    ebx,DWORD PTR [ecx+0x30]
   4c1ae:	01 e8                	add    eax,ebp
   4c1b0:	01 fa                	add    edx,edi
   4c1b2:	89 44 24 60          	mov    DWORD PTR [esp+0x60],eax
   4c1b6:	89 d7                	mov    edi,edx
   4c1b8:	01 d8                	add    eax,ebx
   4c1ba:	8b 6c 24 60          	mov    ebp,DWORD PTR [esp+0x60]
   4c1be:	89 44 24 5c          	mov    DWORD PTR [esp+0x5c],eax
   4c1c2:	31 db                	xor    ebx,ebx
   4c1c4:	8b 41 2c             	mov    eax,DWORD PTR [ecx+0x2c]
   4c1c7:	89 5c 24 04          	mov    DWORD PTR [esp+0x4],ebx
   4c1cb:	01 d0                	add    eax,edx
   4c1cd:	b9 84 5a 02 00       	mov    ecx,@obj3:the_screen                                         ; fixup: num: 11840, src obj: 1, src ofs: 0x4c1ce, dst obj: 3, dst ofs: 0x25a84
   4c1d2:	89 4c 24 74          	mov    DWORD PTR [esp+0x74],ecx
   4c1d6:	89 c6                	mov    esi,eax
   4c1d8:	8b 4c 24 5c          	mov    ecx,DWORD PTR [esp+0x5c]
   4c1dc:	89 f3                	mov    ebx,esi
   4c1de:	a1 84 5a 02 00       	mov    eax,ds:@obj3:the_screen                                      ; fixup: num: 11839, src obj: 1, src ofs: 0x4c1df, dst obj: 3, dst ofs: 0x25a84
   4c1e3:	85 db                	test   ebx,ebx
   4c1e5:	7d 04                	jge    insert_bitmap_branch_4
   4c1e7:	30 d2                	xor    dl,dl
   4c1e9:	eb 22                	jmp    insert_bitmap_branch_8
insert_bitmap_branch_4:
   4c1eb:	81 fa 7f 02 00 00    	cmp    edx,0x27f
   4c1f1:	7e 04                	jle    insert_bitmap_branch_5
   4c1f3:	30 d2                	xor    dl,dl
   4c1f5:	eb 16                	jmp    insert_bitmap_branch_8
insert_bitmap_branch_5:
   4c1f7:	85 c9                	test   ecx,ecx
   4c1f9:	7d 04                	jge    insert_bitmap_branch_6
   4c1fb:	30 d2                	xor    dl,dl
   4c1fd:	eb 0e                	jmp    insert_bitmap_branch_8
insert_bitmap_branch_6:
   4c1ff:	81 fd df 01 00 00    	cmp    ebp,0x1df
   4c205:	7e 04                	jle    insert_bitmap_branch_7
   4c207:	30 d2                	xor    dl,dl
   4c209:	eb 02                	jmp    insert_bitmap_branch_8
insert_bitmap_branch_7:
   4c20b:	b2 01                	mov    dl,0x1
insert_bitmap_branch_8:
   4c20d:	84 d2                	test   dl,dl
   4c20f:	0f 84 cc 04 00 00    	je     insert_bitmap_branch_60
   4c215:	81 fe 7f 02 00 00    	cmp    esi,0x27f
   4c21b:	7e 05                	jle    insert_bitmap_branch_9
   4c21d:	be 7f 02 00 00       	mov    esi,0x27f
insert_bitmap_branch_9:
   4c222:	85 ff                	test   edi,edi
   4c224:	7d 02                	jge    insert_bitmap_branch_10
   4c226:	31 ff                	xor    edi,edi
insert_bitmap_branch_10:
   4c228:	81 f9 df 01 00 00    	cmp    ecx,0x1df
   4c22e:	7e 05                	jle    insert_bitmap_branch_11
   4c230:	b9 df 01 00 00       	mov    ecx,0x1df
insert_bitmap_branch_11:
   4c235:	85 ed                	test   ebp,ebp
   4c237:	7d 02                	jge    insert_bitmap_branch_12
   4c239:	31 c9                	xor    ecx,ecx
insert_bitmap_branch_12:
   4c23b:	85 c0                	test   eax,eax
   4c23d:	0f 84 78 01 00 00    	je     insert_bitmap_branch_27
   4c243:	8b 58 04             	mov    ebx,DWORD PTR [eax+0x4]
   4c246:	89 5c 24 6c          	mov    DWORD PTR [esp+0x6c],ebx
   4c24a:	8b 58 08             	mov    ebx,DWORD PTR [eax+0x8]
   4c24d:	8b 10                	mov    edx,DWORD PTR [eax]
   4c24f:	89 5c 24 68          	mov    DWORD PTR [esp+0x68],ebx
   4c253:	8b 58 0c             	mov    ebx,DWORD PTR [eax+0xc]
   4c256:	39 d6                	cmp    esi,edx
   4c258:	7d 04                	jge    insert_bitmap_branch_13
   4c25a:	30 db                	xor    bl,bl
   4c25c:	eb 1e                	jmp    insert_bitmap_branch_17
insert_bitmap_branch_13:
   4c25e:	3b 7c 24 68          	cmp    edi,DWORD PTR [esp+0x68]
   4c262:	7e 04                	jle    insert_bitmap_branch_14
   4c264:	30 db                	xor    bl,bl
   4c266:	eb 14                	jmp    insert_bitmap_branch_17
insert_bitmap_branch_14:
   4c268:	3b 4c 24 6c          	cmp    ecx,DWORD PTR [esp+0x6c]
   4c26c:	7d 04                	jge    insert_bitmap_branch_15
   4c26e:	30 db                	xor    bl,bl
   4c270:	eb 0a                	jmp    insert_bitmap_branch_17
insert_bitmap_branch_15:
   4c272:	39 dd                	cmp    ebp,ebx
   4c274:	7e 04                	jle    insert_bitmap_branch_16
   4c276:	30 db                	xor    bl,bl
   4c278:	eb 02                	jmp    insert_bitmap_branch_17
insert_bitmap_branch_16:
   4c27a:	b3 01                	mov    bl,0x1
insert_bitmap_branch_17:
   4c27c:	84 db                	test   bl,bl
   4c27e:	0f 84 2b 01 00 00    	je     insert_bitmap_branch_26
   4c284:	8b 18                	mov    ebx,DWORD PTR [eax]
   4c286:	39 df                	cmp    edi,ebx
   4c288:	7d 02                	jge    insert_bitmap_branch_18
   4c28a:	89 fb                	mov    ebx,edi
insert_bitmap_branch_18:
   4c28c:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
   4c28f:	89 9c 24 80 00 00 00 	mov    DWORD PTR [esp+0x80],ebx
   4c296:	39 d5                	cmp    ebp,edx
   4c298:	7d 02                	jge    insert_bitmap_branch_19
   4c29a:	89 ea                	mov    edx,ebp
insert_bitmap_branch_19:
   4c29c:	8b 58 08             	mov    ebx,DWORD PTR [eax+0x8]
   4c29f:	89 94 24 84 00 00 00 	mov    DWORD PTR [esp+0x84],edx
   4c2a6:	39 de                	cmp    esi,ebx
   4c2a8:	7e 04                	jle    insert_bitmap_branch_20
   4c2aa:	89 f2                	mov    edx,esi
   4c2ac:	eb 02                	jmp    insert_bitmap_branch_21
insert_bitmap_branch_20:
   4c2ae:	89 da                	mov    edx,ebx
insert_bitmap_branch_21:
   4c2b0:	89 94 24 8c 00 00 00 	mov    DWORD PTR [esp+0x8c],edx
   4c2b7:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
   4c2ba:	39 d1                	cmp    ecx,edx
   4c2bc:	7e 04                	jle    insert_bitmap_branch_22
   4c2be:	89 cb                	mov    ebx,ecx
   4c2c0:	eb 02                	jmp    insert_bitmap_branch_23
insert_bitmap_branch_22:
   4c2c2:	89 d3                	mov    ebx,edx
insert_bitmap_branch_23:
   4c2c4:	89 f2                	mov    edx,esi
   4c2c6:	29 fa                	sub    edx,edi
   4c2c8:	89 54 24 48          	mov    DWORD PTR [esp+0x48],edx
   4c2cc:	89 ca                	mov    edx,ecx
   4c2ce:	29 ea                	sub    edx,ebp
   4c2d0:	42                   	inc    edx
   4c2d1:	89 54 24 40          	mov    DWORD PTR [esp+0x40],edx
   4c2d5:	8b 54 24 48          	mov    edx,DWORD PTR [esp+0x48]
   4c2d9:	42                   	inc    edx
   4c2da:	0f af 54 24 40       	imul   edx,DWORD PTR [esp+0x40]
   4c2df:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
   4c2e3:	8b 10                	mov    edx,DWORD PTR [eax]
   4c2e5:	89 54 24 0c          	mov    DWORD PTR [esp+0xc],edx
   4c2e9:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
   4c2ec:	89 54 24 10          	mov    DWORD PTR [esp+0x10],edx
   4c2f0:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
   4c2f3:	89 54 24 14          	mov    DWORD PTR [esp+0x14],edx
   4c2f7:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
   4c2fa:	89 54 24 18          	mov    DWORD PTR [esp+0x18],edx
   4c2fe:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
   4c302:	2b 54 24 0c          	sub    edx,DWORD PTR [esp+0xc]
   4c306:	89 54 24 48          	mov    DWORD PTR [esp+0x48],edx
   4c30a:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
   4c30e:	2b 54 24 10          	sub    edx,DWORD PTR [esp+0x10]
   4c312:	42                   	inc    edx
   4c313:	89 54 24 40          	mov    DWORD PTR [esp+0x40],edx
   4c317:	8b 54 24 48          	mov    edx,DWORD PTR [esp+0x48]
   4c31b:	42                   	inc    edx
   4c31c:	0f af 54 24 40       	imul   edx,DWORD PTR [esp+0x40]
   4c321:	89 54 24 1c          	mov    DWORD PTR [esp+0x1c],edx
   4c325:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
   4c329:	03 54 24 1c          	add    edx,DWORD PTR [esp+0x1c]
   4c32d:	89 54 24 4c          	mov    DWORD PTR [esp+0x4c],edx
   4c331:	8b 94 24 8c 00 00 00 	mov    edx,DWORD PTR [esp+0x8c]
   4c338:	2b 94 24 80 00 00 00 	sub    edx,DWORD PTR [esp+0x80]
   4c33f:	89 54 24 48          	mov    DWORD PTR [esp+0x48],edx
   4c343:	89 da                	mov    edx,ebx
   4c345:	2b 94 24 84 00 00 00 	sub    edx,DWORD PTR [esp+0x84]
   4c34c:	42                   	inc    edx
   4c34d:	89 54 24 40          	mov    DWORD PTR [esp+0x40],edx
   4c351:	8b 54 24 48          	mov    edx,DWORD PTR [esp+0x48]
   4c355:	42                   	inc    edx
   4c356:	0f af 54 24 40       	imul   edx,DWORD PTR [esp+0x40]
   4c35b:	89 54 24 20          	mov    DWORD PTR [esp+0x20],edx
   4c35f:	8b 54 24 4c          	mov    edx,DWORD PTR [esp+0x4c]
   4c363:	3b 54 24 20          	cmp    edx,DWORD PTR [esp+0x20]
   4c367:	7c 46                	jl     insert_bitmap_branch_26
   4c369:	8b bc 24 80 00 00 00 	mov    edi,DWORD PTR [esp+0x80]
   4c370:	8b ac 24 84 00 00 00 	mov    ebp,DWORD PTR [esp+0x84]
   4c377:	89 d9                	mov    ecx,ebx
   4c379:	8b 5c 24 04          	mov    ebx,DWORD PTR [esp+0x4]
   4c37d:	8b b4 24 8c 00 00 00 	mov    esi,DWORD PTR [esp+0x8c]
   4c384:	85 db                	test   ebx,ebx
   4c386:	74 08                	je     insert_bitmap_branch_24
   4c388:	8b 50 10             	mov    edx,DWORD PTR [eax+0x10]
   4c38b:	89 53 10             	mov    DWORD PTR [ebx+0x10],edx
   4c38e:	eb 09                	jmp    insert_bitmap_branch_25
insert_bitmap_branch_24:
   4c390:	8b 5c 24 74          	mov    ebx,DWORD PTR [esp+0x74]
   4c394:	8b 50 10             	mov    edx,DWORD PTR [eax+0x10]
   4c397:	89 13                	mov    DWORD PTR [ebx],edx
insert_bitmap_branch_25:
   4c399:	e8 da 5c 02 00       	call   W?$dln(pnv)v
   4c39e:	31 c0                	xor    eax,eax
   4c3a0:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
   4c3a4:	8b 44 24 74          	mov    eax,DWORD PTR [esp+0x74]
   4c3a8:	8b 00                	mov    eax,DWORD PTR [eax]
   4c3aa:	e9 8c fe ff ff       	jmp    insert_bitmap_branch_12
insert_bitmap_branch_26:
   4c3af:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
   4c3b3:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
   4c3b6:	e9 80 fe ff ff       	jmp    insert_bitmap_branch_12
insert_bitmap_branch_27:
   4c3bb:	8b 44 24 74          	mov    eax,DWORD PTR [esp+0x74]
   4c3bf:	8b 00                	mov    eax,DWORD PTR [eax]
   4c3c1:	89 44 24 54          	mov    DWORD PTR [esp+0x54],eax
   4c3c5:	b8 14 00 00 00       	mov    eax,0x14
   4c3ca:	8b 54 24 74          	mov    edx,DWORD PTR [esp+0x74]
   4c3ce:	e8 45 5b 02 00       	call   W?$nwn(ui)pnv
   4c3d3:	89 02                	mov    DWORD PTR [edx],eax
   4c3d5:	85 c0                	test   eax,eax
   4c3d7:	75 0f                	jne    insert_bitmap_branch_28
   4c3d9:	bb 8f bc 00 00       	mov    ebx,@obj3:screen_cpp_variable_5                              ; fixup: num: 11841, src obj: 1, src ofs: 0x4c3da, dst obj: 3, dst ofs: 0xbc8f
   4c3de:	ba f4 01 00 00       	mov    edx,0x1f4
   4c3e3:	e8 48 bc fe ff       	call   _error_report
insert_bitmap_branch_28:
   4c3e8:	8b 44 24 74          	mov    eax,DWORD PTR [esp+0x74]
   4c3ec:	8b 00                	mov    eax,DWORD PTR [eax]
   4c3ee:	8b 54 24 54          	mov    edx,DWORD PTR [esp+0x54]
   4c3f2:	89 50 10             	mov    DWORD PTR [eax+0x10],edx
   4c3f5:	8b 44 24 74          	mov    eax,DWORD PTR [esp+0x74]
   4c3f9:	8b 00                	mov    eax,DWORD PTR [eax]
   4c3fb:	89 38                	mov    DWORD PTR [eax],edi
   4c3fd:	8b 44 24 74          	mov    eax,DWORD PTR [esp+0x74]
   4c401:	8b 00                	mov    eax,DWORD PTR [eax]
   4c403:	89 70 08             	mov    DWORD PTR [eax+0x8],esi
   4c406:	8b 44 24 74          	mov    eax,DWORD PTR [esp+0x74]
   4c40a:	8b 00                	mov    eax,DWORD PTR [eax]
   4c40c:	89 68 04             	mov    DWORD PTR [eax+0x4],ebp
   4c40f:	8b 44 24 74          	mov    eax,DWORD PTR [esp+0x74]
   4c413:	8b 00                	mov    eax,DWORD PTR [eax]
   4c415:	89 48 0c             	mov    DWORD PTR [eax+0xc],ecx
   4c418:	81 c4 94 00 00 00    	add    esp,0x94
   4c41e:	5d                   	pop    ebp
   4c41f:	5f                   	pop    edi
   4c420:	5e                   	pop    esi
   4c421:	59                   	pop    ecx
   4c422:	5b                   	pop    ebx
   4c423:	c3                   	ret    
insert_bitmap_branch_29:
   4c424:	d9 43 1c             	fld    DWORD PTR [ebx+0x1c]
   4c427:	d8 59 1c             	fcomp  DWORD PTR [ecx+0x1c]
   4c42a:	df e0                	fnstsw ax
   4c42c:	9e                   	sahf   
   4c42d:	72 0d                	jb     insert_bitmap_branch_30
   4c42f:	89 de                	mov    esi,ebx
   4c431:	8b 5b 48             	mov    ebx,DWORD PTR [ebx+0x48]
   4c434:	85 db                	test   ebx,ebx
   4c436:	0f 85 32 fd ff ff    	jne    insert_bitmap_branch_3
insert_bitmap_branch_30:
   4c43c:	85 f6                	test   esi,esi
   4c43e:	74 0b                	je     insert_bitmap_branch_31
   4c440:	89 4e 48             	mov    DWORD PTR [esi+0x48],ecx
   4c443:	89 59 48             	mov    DWORD PTR [ecx+0x48],ebx
   4c446:	89 71 44             	mov    DWORD PTR [ecx+0x44],esi
   4c449:	eb 0a                	jmp    insert_bitmap_branch_32
insert_bitmap_branch_31:
   4c44b:	8b 07                	mov    eax,DWORD PTR [edi]
   4c44d:	89 41 48             	mov    DWORD PTR [ecx+0x48],eax
   4c450:	89 71 44             	mov    DWORD PTR [ecx+0x44],esi
   4c453:	89 0f                	mov    DWORD PTR [edi],ecx
insert_bitmap_branch_32:
   4c455:	8b 51 48             	mov    edx,DWORD PTR [ecx+0x48]
   4c458:	85 d2                	test   edx,edx
   4c45a:	74 03                	je     insert_bitmap_branch_33
   4c45c:	89 4a 44             	mov    DWORD PTR [edx+0x44],ecx
insert_bitmap_branch_33:
   4c45f:	3b 77 04             	cmp    esi,DWORD PTR [edi+0x4]
   4c462:	75 03                	jne    insert_bitmap_branch_34
   4c464:	89 4f 04             	mov    DWORD PTR [edi+0x4],ecx
insert_bitmap_branch_34:
   4c467:	83 79 38 15          	cmp    DWORD PTR [ecx+0x38],0x15
   4c46b:	0f 8d 70 02 00 00    	jge    insert_bitmap_branch_60
   4c471:	8b 41 3c             	mov    eax,DWORD PTR [ecx+0x3c]
   4c474:	8b 79 24             	mov    edi,DWORD PTR [ecx+0x24]
   4c477:	8b 51 40             	mov    edx,DWORD PTR [ecx+0x40]
   4c47a:	8b 69 28             	mov    ebp,DWORD PTR [ecx+0x28]
   4c47d:	8b 59 2c             	mov    ebx,DWORD PTR [ecx+0x2c]
   4c480:	01 f8                	add    eax,edi
   4c482:	01 ea                	add    edx,ebp
   4c484:	89 44 24 64          	mov    DWORD PTR [esp+0x64],eax
   4c488:	89 d5                	mov    ebp,edx
   4c48a:	8b 41 30             	mov    eax,DWORD PTR [ecx+0x30]
   4c48d:	8b 7c 24 64          	mov    edi,DWORD PTR [esp+0x64]
   4c491:	01 d0                	add    eax,edx
   4c493:	b9 84 5a 02 00       	mov    ecx,@obj3:the_screen                                         ; fixup: num: 11843, src obj: 1, src ofs: 0x4c494, dst obj: 3, dst ofs: 0x25a84
   4c498:	89 44 24 58          	mov    DWORD PTR [esp+0x58],eax
   4c49c:	8b 44 24 64          	mov    eax,DWORD PTR [esp+0x64]
   4c4a0:	89 4c 24 78          	mov    DWORD PTR [esp+0x78],ecx
   4c4a4:	01 d8                	add    eax,ebx
   4c4a6:	8b 4c 24 58          	mov    ecx,DWORD PTR [esp+0x58]
   4c4aa:	31 db                	xor    ebx,ebx
   4c4ac:	89 c6                	mov    esi,eax
   4c4ae:	89 1c 24             	mov    DWORD PTR [esp],ebx
   4c4b1:	89 f3                	mov    ebx,esi
   4c4b3:	a1 84 5a 02 00       	mov    eax,ds:@obj3:the_screen                                      ; fixup: num: 11842, src obj: 1, src ofs: 0x4c4b4, dst obj: 3, dst ofs: 0x25a84
   4c4b8:	85 db                	test   ebx,ebx
   4c4ba:	7d 04                	jge    insert_bitmap_branch_35
   4c4bc:	30 d2                	xor    dl,dl
   4c4be:	eb 22                	jmp    insert_bitmap_branch_39
insert_bitmap_branch_35:
   4c4c0:	81 ff 7f 02 00 00    	cmp    edi,0x27f
   4c4c6:	7e 04                	jle    insert_bitmap_branch_36
   4c4c8:	30 d2                	xor    dl,dl
   4c4ca:	eb 16                	jmp    insert_bitmap_branch_39
insert_bitmap_branch_36:
   4c4cc:	85 c9                	test   ecx,ecx
   4c4ce:	7d 04                	jge    insert_bitmap_branch_37
   4c4d0:	30 d2                	xor    dl,dl
   4c4d2:	eb 0e                	jmp    insert_bitmap_branch_39
insert_bitmap_branch_37:
   4c4d4:	81 fa df 01 00 00    	cmp    edx,0x1df
   4c4da:	7e 04                	jle    insert_bitmap_branch_38
   4c4dc:	30 d2                	xor    dl,dl
   4c4de:	eb 02                	jmp    insert_bitmap_branch_39
insert_bitmap_branch_38:
   4c4e0:	b2 01                	mov    dl,0x1
insert_bitmap_branch_39:
   4c4e2:	84 d2                	test   dl,dl
   4c4e4:	0f 84 f7 01 00 00    	je     insert_bitmap_branch_60
   4c4ea:	81 fe 7f 02 00 00    	cmp    esi,0x27f
   4c4f0:	7e 05                	jle    insert_bitmap_branch_40
   4c4f2:	be 7f 02 00 00       	mov    esi,0x27f
insert_bitmap_branch_40:
   4c4f7:	85 ff                	test   edi,edi
   4c4f9:	7d 02                	jge    insert_bitmap_branch_41
   4c4fb:	31 ff                	xor    edi,edi
insert_bitmap_branch_41:
   4c4fd:	81 f9 df 01 00 00    	cmp    ecx,0x1df
   4c503:	7e 05                	jle    insert_bitmap_branch_42
   4c505:	b9 df 01 00 00       	mov    ecx,0x1df
insert_bitmap_branch_42:
   4c50a:	85 ed                	test   ebp,ebp
   4c50c:	7d 02                	jge    insert_bitmap_branch_43
   4c50e:	31 c9                	xor    ecx,ecx
insert_bitmap_branch_43:
   4c510:	85 c0                	test   eax,eax
   4c512:	0f 84 6c 01 00 00    	je     insert_bitmap_branch_58
   4c518:	8b 10                	mov    edx,DWORD PTR [eax]
   4c51a:	8b 58 08             	mov    ebx,DWORD PTR [eax+0x8]
   4c51d:	89 54 24 24          	mov    DWORD PTR [esp+0x24],edx
   4c521:	89 5c 24 70          	mov    DWORD PTR [esp+0x70],ebx
   4c525:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
   4c528:	8b 58 0c             	mov    ebx,DWORD PTR [eax+0xc]
   4c52b:	3b 74 24 24          	cmp    esi,DWORD PTR [esp+0x24]
   4c52f:	7d 04                	jge    insert_bitmap_branch_44
   4c531:	30 db                	xor    bl,bl
   4c533:	eb 1c                	jmp    insert_bitmap_branch_48
insert_bitmap_branch_44:
   4c535:	3b 7c 24 70          	cmp    edi,DWORD PTR [esp+0x70]
   4c539:	7e 04                	jle    insert_bitmap_branch_45
   4c53b:	30 db                	xor    bl,bl
   4c53d:	eb 12                	jmp    insert_bitmap_branch_48
insert_bitmap_branch_45:
   4c53f:	39 d1                	cmp    ecx,edx
   4c541:	7d 04                	jge    insert_bitmap_branch_46
   4c543:	30 db                	xor    bl,bl
   4c545:	eb 0a                	jmp    insert_bitmap_branch_48
insert_bitmap_branch_46:
   4c547:	39 dd                	cmp    ebp,ebx
   4c549:	7e 04                	jle    insert_bitmap_branch_47
   4c54b:	30 db                	xor    bl,bl
   4c54d:	eb 02                	jmp    insert_bitmap_branch_48
insert_bitmap_branch_47:
   4c54f:	b3 01                	mov    bl,0x1
insert_bitmap_branch_48:
   4c551:	84 db                	test   bl,bl
   4c553:	0f 84 20 01 00 00    	je     insert_bitmap_branch_57
   4c559:	8b 18                	mov    ebx,DWORD PTR [eax]
   4c55b:	39 df                	cmp    edi,ebx
   4c55d:	7d 04                	jge    insert_bitmap_branch_49
   4c55f:	89 fa                	mov    edx,edi
   4c561:	eb 02                	jmp    insert_bitmap_branch_50
insert_bitmap_branch_49:
   4c563:	89 da                	mov    edx,ebx
insert_bitmap_branch_50:
   4c565:	89 54 24 7c          	mov    DWORD PTR [esp+0x7c],edx
   4c569:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
   4c56c:	39 d5                	cmp    ebp,edx
   4c56e:	7d 02                	jge    insert_bitmap_branch_51
   4c570:	89 ea                	mov    edx,ebp
insert_bitmap_branch_51:
   4c572:	8b 58 08             	mov    ebx,DWORD PTR [eax+0x8]
   4c575:	89 94 24 88 00 00 00 	mov    DWORD PTR [esp+0x88],edx
   4c57c:	39 de                	cmp    esi,ebx
   4c57e:	7e 02                	jle    insert_bitmap_branch_52
   4c580:	89 f3                	mov    ebx,esi
insert_bitmap_branch_52:
   4c582:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
   4c585:	89 9c 24 90 00 00 00 	mov    DWORD PTR [esp+0x90],ebx
   4c58c:	39 d1                	cmp    ecx,edx
   4c58e:	7e 04                	jle    insert_bitmap_branch_53
   4c590:	89 cb                	mov    ebx,ecx
   4c592:	eb 02                	jmp    insert_bitmap_branch_54
insert_bitmap_branch_53:
   4c594:	89 d3                	mov    ebx,edx
insert_bitmap_branch_54:
   4c596:	89 f2                	mov    edx,esi
   4c598:	29 fa                	sub    edx,edi
   4c59a:	89 54 24 48          	mov    DWORD PTR [esp+0x48],edx
   4c59e:	89 ca                	mov    edx,ecx
   4c5a0:	29 ea                	sub    edx,ebp
   4c5a2:	42                   	inc    edx
   4c5a3:	89 54 24 40          	mov    DWORD PTR [esp+0x40],edx
   4c5a7:	8b 54 24 48          	mov    edx,DWORD PTR [esp+0x48]
   4c5ab:	42                   	inc    edx
   4c5ac:	0f af 54 24 40       	imul   edx,DWORD PTR [esp+0x40]
   4c5b1:	89 54 24 28          	mov    DWORD PTR [esp+0x28],edx
   4c5b5:	8b 10                	mov    edx,DWORD PTR [eax]
   4c5b7:	89 54 24 2c          	mov    DWORD PTR [esp+0x2c],edx
   4c5bb:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
   4c5be:	89 54 24 30          	mov    DWORD PTR [esp+0x30],edx
   4c5c2:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
   4c5c5:	89 54 24 34          	mov    DWORD PTR [esp+0x34],edx
   4c5c9:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
   4c5cc:	89 54 24 38          	mov    DWORD PTR [esp+0x38],edx
   4c5d0:	8b 54 24 34          	mov    edx,DWORD PTR [esp+0x34]
   4c5d4:	2b 54 24 2c          	sub    edx,DWORD PTR [esp+0x2c]
   4c5d8:	89 54 24 48          	mov    DWORD PTR [esp+0x48],edx
   4c5dc:	8b 54 24 38          	mov    edx,DWORD PTR [esp+0x38]
   4c5e0:	2b 54 24 30          	sub    edx,DWORD PTR [esp+0x30]
   4c5e4:	42                   	inc    edx
   4c5e5:	89 54 24 40          	mov    DWORD PTR [esp+0x40],edx
   4c5e9:	8b 54 24 48          	mov    edx,DWORD PTR [esp+0x48]
   4c5ed:	42                   	inc    edx
   4c5ee:	0f af 54 24 40       	imul   edx,DWORD PTR [esp+0x40]
   4c5f3:	89 54 24 3c          	mov    DWORD PTR [esp+0x3c],edx
   4c5f7:	8b 54 24 28          	mov    edx,DWORD PTR [esp+0x28]
   4c5fb:	03 54 24 3c          	add    edx,DWORD PTR [esp+0x3c]
   4c5ff:	89 54 24 40          	mov    DWORD PTR [esp+0x40],edx
   4c603:	8b 94 24 90 00 00 00 	mov    edx,DWORD PTR [esp+0x90]
   4c60a:	2b 54 24 7c          	sub    edx,DWORD PTR [esp+0x7c]
   4c60e:	89 54 24 48          	mov    DWORD PTR [esp+0x48],edx
   4c612:	89 da                	mov    edx,ebx
   4c614:	2b 94 24 88 00 00 00 	sub    edx,DWORD PTR [esp+0x88]
   4c61b:	42                   	inc    edx
   4c61c:	89 54 24 4c          	mov    DWORD PTR [esp+0x4c],edx
   4c620:	8b 54 24 48          	mov    edx,DWORD PTR [esp+0x48]
   4c624:	42                   	inc    edx
   4c625:	0f af 54 24 4c       	imul   edx,DWORD PTR [esp+0x4c]
   4c62a:	89 54 24 44          	mov    DWORD PTR [esp+0x44],edx
   4c62e:	8b 54 24 40          	mov    edx,DWORD PTR [esp+0x40]
   4c632:	3b 54 24 44          	cmp    edx,DWORD PTR [esp+0x44]
   4c636:	7c 41                	jl     insert_bitmap_branch_57
   4c638:	8b 7c 24 7c          	mov    edi,DWORD PTR [esp+0x7c]
   4c63c:	8b ac 24 88 00 00 00 	mov    ebp,DWORD PTR [esp+0x88]
   4c643:	89 d9                	mov    ecx,ebx
   4c645:	8b 1c 24             	mov    ebx,DWORD PTR [esp]
   4c648:	8b b4 24 90 00 00 00 	mov    esi,DWORD PTR [esp+0x90]
   4c64f:	85 db                	test   ebx,ebx
   4c651:	74 08                	je     insert_bitmap_branch_55
   4c653:	8b 50 10             	mov    edx,DWORD PTR [eax+0x10]
   4c656:	89 53 10             	mov    DWORD PTR [ebx+0x10],edx
   4c659:	eb 09                	jmp    insert_bitmap_branch_56
insert_bitmap_branch_55:
   4c65b:	8b 5c 24 78          	mov    ebx,DWORD PTR [esp+0x78]
   4c65f:	8b 50 10             	mov    edx,DWORD PTR [eax+0x10]
   4c662:	89 13                	mov    DWORD PTR [ebx],edx
insert_bitmap_branch_56:
   4c664:	e8 0f 5a 02 00       	call   W?$dln(pnv)v
   4c669:	31 c0                	xor    eax,eax
   4c66b:	89 04 24             	mov    DWORD PTR [esp],eax
   4c66e:	8b 44 24 78          	mov    eax,DWORD PTR [esp+0x78]
   4c672:	8b 00                	mov    eax,DWORD PTR [eax]
   4c674:	e9 97 fe ff ff       	jmp    insert_bitmap_branch_43
insert_bitmap_branch_57:
   4c679:	89 04 24             	mov    DWORD PTR [esp],eax
   4c67c:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
   4c67f:	e9 8c fe ff ff       	jmp    insert_bitmap_branch_43
insert_bitmap_branch_58:
   4c684:	8b 44 24 78          	mov    eax,DWORD PTR [esp+0x78]
   4c688:	8b 00                	mov    eax,DWORD PTR [eax]
   4c68a:	89 44 24 50          	mov    DWORD PTR [esp+0x50],eax
   4c68e:	b8 14 00 00 00       	mov    eax,0x14
   4c693:	8b 54 24 78          	mov    edx,DWORD PTR [esp+0x78]
   4c697:	e8 7c 58 02 00       	call   W?$nwn(ui)pnv
   4c69c:	89 02                	mov    DWORD PTR [edx],eax
   4c69e:	85 c0                	test   eax,eax
   4c6a0:	75 0f                	jne    insert_bitmap_branch_59
   4c6a2:	bb 8f bc 00 00       	mov    ebx,@obj3:screen_cpp_variable_5                              ; fixup: num: 11845, src obj: 1, src ofs: 0x4c6a3, dst obj: 3, dst ofs: 0xbc8f
   4c6a7:	ba f4 01 00 00       	mov    edx,0x1f4
   4c6ac:	e8 7f b9 fe ff       	call   _error_report
insert_bitmap_branch_59:
   4c6b1:	8b 44 24 78          	mov    eax,DWORD PTR [esp+0x78]
   4c6b5:	8b 00                	mov    eax,DWORD PTR [eax]
   4c6b7:	8b 54 24 50          	mov    edx,DWORD PTR [esp+0x50]
   4c6bb:	89 50 10             	mov    DWORD PTR [eax+0x10],edx
   4c6be:	8b 44 24 78          	mov    eax,DWORD PTR [esp+0x78]
   4c6c2:	8b 00                	mov    eax,DWORD PTR [eax]
   4c6c4:	89 38                	mov    DWORD PTR [eax],edi
   4c6c6:	8b 44 24 78          	mov    eax,DWORD PTR [esp+0x78]
   4c6ca:	8b 00                	mov    eax,DWORD PTR [eax]
   4c6cc:	89 70 08             	mov    DWORD PTR [eax+0x8],esi
   4c6cf:	8b 44 24 78          	mov    eax,DWORD PTR [esp+0x78]
   4c6d3:	8b 00                	mov    eax,DWORD PTR [eax]
   4c6d5:	89 68 04             	mov    DWORD PTR [eax+0x4],ebp
   4c6d8:	8b 44 24 78          	mov    eax,DWORD PTR [esp+0x78]
   4c6dc:	8b 00                	mov    eax,DWORD PTR [eax]
   4c6de:	89 48 0c             	mov    DWORD PTR [eax+0xc],ecx
insert_bitmap_branch_60:
   4c6e1:	81 c4 94 00 00 00    	add    esp,0x94
   4c6e7:	5d                   	pop    ebp
   4c6e8:	5f                   	pop    edi
   4c6e9:	5e                   	pop    esi
   4c6ea:	59                   	pop    ecx
   4c6eb:	5b                   	pop    ebx
   4c6ec:	c3                   	ret    
   4c6ed:	8d 40 00             	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'remove_bitmap'                      -
;-------------------------------------------------
remove_bitmap:
   4c6f0:	53                   	push   ebx
   4c6f1:	51                   	push   ecx
   4c6f2:	56                   	push   esi
   4c6f3:	57                   	push   edi
   4c6f4:	55                   	push   ebp
   4c6f5:	83 ec 4c             	sub    esp,0x4c
   4c6f8:	89 c1                	mov    ecx,eax
   4c6fa:	89 d3                	mov    ebx,edx
   4c6fc:	31 d2                	xor    edx,edx
   4c6fe:	85 db                	test   ebx,ebx
   4c700:	0f 84 c4 02 00 00    	je     remove_bitmap_branch_33
   4c706:	3b 1d d4 61 02 00    	cmp    ebx,DWORD PTR ds:@obj3:temp_next                             ; fixup: num: 11844, src obj: 1, src ofs: 0x4c708, dst obj: 3, dst ofs: 0x261d4
   4c70c:	75 07                	jne    remove_bitmap_branch_1
   4c70e:	8b 00                	mov    eax,DWORD PTR [eax]
   4c710:	a3 d4 61 02 00       	mov    ds:@obj3:temp_next,eax                                       ; fixup: num: 11848, src obj: 1, src ofs: 0x4c711, dst obj: 3, dst ofs: 0x261d4
remove_bitmap_branch_1:
   4c715:	8b 01                	mov    eax,DWORD PTR [ecx]
   4c717:	85 c0                	test   eax,eax
   4c719:	0f 84 ab 02 00 00    	je     remove_bitmap_branch_33
remove_bitmap_branch_2:
   4c71f:	39 d8                	cmp    eax,ebx
   4c721:	0f 85 96 02 00 00    	jne    remove_bitmap_branch_32
   4c727:	85 d2                	test   edx,edx
   4c729:	75 14                	jne    remove_bitmap_branch_3
   4c72b:	8b 11                	mov    edx,DWORD PTR [ecx]
   4c72d:	8b 52 48             	mov    edx,DWORD PTR [edx+0x48]
   4c730:	89 11                	mov    DWORD PTR [ecx],edx
   4c732:	85 d2                	test   edx,edx
   4c734:	74 16                	je     remove_bitmap_branch_4
   4c736:	c7 42 44 00 00 00 00 	mov    DWORD PTR [edx+0x44],0x0
   4c73d:	eb 15                	jmp    remove_bitmap_branch_6
remove_bitmap_branch_3:
   4c73f:	8b 5b 48             	mov    ebx,DWORD PTR [ebx+0x48]
   4c742:	89 5a 48             	mov    DWORD PTR [edx+0x48],ebx
   4c745:	8b 68 48             	mov    ebp,DWORD PTR [eax+0x48]
   4c748:	85 ed                	test   ebp,ebp
   4c74a:	75 05                	jne    remove_bitmap_branch_5
remove_bitmap_branch_4:
   4c74c:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
   4c74f:	eb 03                	jmp    remove_bitmap_branch_6
remove_bitmap_branch_5:
   4c751:	89 55 44             	mov    DWORD PTR [ebp+0x44],edx
remove_bitmap_branch_6:
   4c754:	83 78 38 15          	cmp    DWORD PTR [eax+0x38],0x15
   4c758:	0f 8d 6c 02 00 00    	jge    remove_bitmap_branch_33
   4c75e:	bf 84 5a 02 00       	mov    edi,@obj3:the_screen                                         ; fixup: num: 11847, src obj: 1, src ofs: 0x4c75f, dst obj: 3, dst ofs: 0x25a84
   4c763:	8b 50 3c             	mov    edx,DWORD PTR [eax+0x3c]
   4c766:	8b 58 24             	mov    ebx,DWORD PTR [eax+0x24]
   4c769:	8b 48 28             	mov    ecx,DWORD PTR [eax+0x28]
   4c76c:	8b 70 30             	mov    esi,DWORD PTR [eax+0x30]
   4c76f:	89 7c 24 38          	mov    DWORD PTR [esp+0x38],edi
   4c773:	01 da                	add    edx,ebx
   4c775:	8b 58 40             	mov    ebx,DWORD PTR [eax+0x40]
   4c778:	89 d7                	mov    edi,edx
   4c77a:	01 cb                	add    ebx,ecx
   4c77c:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
   4c77f:	89 5c 24 2c          	mov    DWORD PTR [esp+0x2c],ebx
   4c783:	01 d0                	add    eax,edx
   4c785:	8b 6c 24 2c          	mov    ebp,DWORD PTR [esp+0x2c]
   4c789:	01 f3                	add    ebx,esi
   4c78b:	89 d9                	mov    ecx,ebx
   4c78d:	31 db                	xor    ebx,ebx
   4c78f:	89 c6                	mov    esi,eax
   4c791:	89 5c 24 48          	mov    DWORD PTR [esp+0x48],ebx
   4c795:	89 f3                	mov    ebx,esi
   4c797:	a1 84 5a 02 00       	mov    eax,ds:@obj3:the_screen                                      ; fixup: num: 11846, src obj: 1, src ofs: 0x4c798, dst obj: 3, dst ofs: 0x25a84
   4c79c:	85 db                	test   ebx,ebx
   4c79e:	7d 04                	jge    remove_bitmap_branch_7
   4c7a0:	30 d2                	xor    dl,dl
   4c7a2:	eb 22                	jmp    remove_bitmap_branch_11
remove_bitmap_branch_7:
   4c7a4:	81 fa 7f 02 00 00    	cmp    edx,0x27f
   4c7aa:	7e 04                	jle    remove_bitmap_branch_8
   4c7ac:	30 d2                	xor    dl,dl
   4c7ae:	eb 16                	jmp    remove_bitmap_branch_11
remove_bitmap_branch_8:
   4c7b0:	85 c9                	test   ecx,ecx
   4c7b2:	7d 04                	jge    remove_bitmap_branch_9
   4c7b4:	30 d2                	xor    dl,dl
   4c7b6:	eb 0e                	jmp    remove_bitmap_branch_11
remove_bitmap_branch_9:
   4c7b8:	81 fd df 01 00 00    	cmp    ebp,0x1df
   4c7be:	7e 04                	jle    remove_bitmap_branch_10
   4c7c0:	30 d2                	xor    dl,dl
   4c7c2:	eb 02                	jmp    remove_bitmap_branch_11
remove_bitmap_branch_10:
   4c7c4:	b2 01                	mov    dl,0x1
remove_bitmap_branch_11:
   4c7c6:	84 d2                	test   dl,dl
   4c7c8:	0f 84 fc 01 00 00    	je     remove_bitmap_branch_33
   4c7ce:	81 fe 7f 02 00 00    	cmp    esi,0x27f
   4c7d4:	7e 05                	jle    remove_bitmap_branch_12
   4c7d6:	be 7f 02 00 00       	mov    esi,0x27f
remove_bitmap_branch_12:
   4c7db:	85 ff                	test   edi,edi
   4c7dd:	7d 02                	jge    remove_bitmap_branch_13
   4c7df:	31 ff                	xor    edi,edi
remove_bitmap_branch_13:
   4c7e1:	81 f9 df 01 00 00    	cmp    ecx,0x1df
   4c7e7:	7e 05                	jle    remove_bitmap_branch_14
   4c7e9:	b9 df 01 00 00       	mov    ecx,0x1df
remove_bitmap_branch_14:
   4c7ee:	85 ed                	test   ebp,ebp
   4c7f0:	7d 02                	jge    remove_bitmap_branch_15
   4c7f2:	31 c9                	xor    ecx,ecx
remove_bitmap_branch_15:
   4c7f4:	85 c0                	test   eax,eax
   4c7f6:	0f 84 5b 01 00 00    	je     remove_bitmap_branch_30
   4c7fc:	8b 58 04             	mov    ebx,DWORD PTR [eax+0x4]
   4c7ff:	89 5c 24 30          	mov    DWORD PTR [esp+0x30],ebx
   4c803:	8b 58 08             	mov    ebx,DWORD PTR [eax+0x8]
   4c806:	8b 10                	mov    edx,DWORD PTR [eax]
   4c808:	89 5c 24 34          	mov    DWORD PTR [esp+0x34],ebx
   4c80c:	8b 58 0c             	mov    ebx,DWORD PTR [eax+0xc]
   4c80f:	39 d6                	cmp    esi,edx
   4c811:	7d 04                	jge    remove_bitmap_branch_16
   4c813:	30 d2                	xor    dl,dl
   4c815:	eb 1e                	jmp    remove_bitmap_branch_20
remove_bitmap_branch_16:
   4c817:	3b 7c 24 34          	cmp    edi,DWORD PTR [esp+0x34]
   4c81b:	7e 04                	jle    remove_bitmap_branch_17
   4c81d:	30 d2                	xor    dl,dl
   4c81f:	eb 14                	jmp    remove_bitmap_branch_20
remove_bitmap_branch_17:
   4c821:	3b 4c 24 30          	cmp    ecx,DWORD PTR [esp+0x30]
   4c825:	7d 04                	jge    remove_bitmap_branch_18
   4c827:	30 d2                	xor    dl,dl
   4c829:	eb 0a                	jmp    remove_bitmap_branch_20
remove_bitmap_branch_18:
   4c82b:	39 dd                	cmp    ebp,ebx
   4c82d:	7e 04                	jle    remove_bitmap_branch_19
   4c82f:	30 d2                	xor    dl,dl
   4c831:	eb 02                	jmp    remove_bitmap_branch_20
remove_bitmap_branch_19:
   4c833:	b2 01                	mov    dl,0x1
remove_bitmap_branch_20:
   4c835:	84 d2                	test   dl,dl
   4c837:	0f 84 0e 01 00 00    	je     remove_bitmap_branch_29
   4c83d:	8b 18                	mov    ebx,DWORD PTR [eax]
   4c83f:	39 df                	cmp    edi,ebx
   4c841:	7d 04                	jge    remove_bitmap_branch_21
   4c843:	89 fa                	mov    edx,edi
   4c845:	eb 02                	jmp    remove_bitmap_branch_22
remove_bitmap_branch_21:
   4c847:	89 da                	mov    edx,ebx
remove_bitmap_branch_22:
   4c849:	89 54 24 3c          	mov    DWORD PTR [esp+0x3c],edx
   4c84d:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
   4c850:	39 d5                	cmp    ebp,edx
   4c852:	7d 02                	jge    remove_bitmap_branch_23
   4c854:	89 ea                	mov    edx,ebp
remove_bitmap_branch_23:
   4c856:	8b 58 08             	mov    ebx,DWORD PTR [eax+0x8]
   4c859:	89 54 24 40          	mov    DWORD PTR [esp+0x40],edx
   4c85d:	39 de                	cmp    esi,ebx
   4c85f:	7e 04                	jle    remove_bitmap_branch_24
   4c861:	89 f2                	mov    edx,esi
   4c863:	eb 02                	jmp    remove_bitmap_branch_25
remove_bitmap_branch_24:
   4c865:	89 da                	mov    edx,ebx
remove_bitmap_branch_25:
   4c867:	89 54 24 44          	mov    DWORD PTR [esp+0x44],edx
   4c86b:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
   4c86e:	39 d1                	cmp    ecx,edx
   4c870:	7e 02                	jle    remove_bitmap_branch_26
   4c872:	89 ca                	mov    edx,ecx
remove_bitmap_branch_26:
   4c874:	89 f3                	mov    ebx,esi
   4c876:	29 fb                	sub    ebx,edi
   4c878:	89 5c 24 20          	mov    DWORD PTR [esp+0x20],ebx
   4c87c:	89 cb                	mov    ebx,ecx
   4c87e:	29 eb                	sub    ebx,ebp
   4c880:	43                   	inc    ebx
   4c881:	89 5c 24 18          	mov    DWORD PTR [esp+0x18],ebx
   4c885:	8b 5c 24 20          	mov    ebx,DWORD PTR [esp+0x20]
   4c889:	43                   	inc    ebx
   4c88a:	0f af 5c 24 18       	imul   ebx,DWORD PTR [esp+0x18]
   4c88f:	89 1c 24             	mov    DWORD PTR [esp],ebx
   4c892:	8b 18                	mov    ebx,DWORD PTR [eax]
   4c894:	89 5c 24 04          	mov    DWORD PTR [esp+0x4],ebx
   4c898:	8b 58 04             	mov    ebx,DWORD PTR [eax+0x4]
   4c89b:	89 5c 24 08          	mov    DWORD PTR [esp+0x8],ebx
   4c89f:	8b 58 08             	mov    ebx,DWORD PTR [eax+0x8]
   4c8a2:	89 5c 24 0c          	mov    DWORD PTR [esp+0xc],ebx
   4c8a6:	8b 58 0c             	mov    ebx,DWORD PTR [eax+0xc]
   4c8a9:	89 5c 24 10          	mov    DWORD PTR [esp+0x10],ebx
   4c8ad:	8b 5c 24 0c          	mov    ebx,DWORD PTR [esp+0xc]
   4c8b1:	2b 5c 24 04          	sub    ebx,DWORD PTR [esp+0x4]
   4c8b5:	89 5c 24 20          	mov    DWORD PTR [esp+0x20],ebx
   4c8b9:	8b 5c 24 10          	mov    ebx,DWORD PTR [esp+0x10]
   4c8bd:	2b 5c 24 08          	sub    ebx,DWORD PTR [esp+0x8]
   4c8c1:	43                   	inc    ebx
   4c8c2:	89 5c 24 18          	mov    DWORD PTR [esp+0x18],ebx
   4c8c6:	8b 5c 24 20          	mov    ebx,DWORD PTR [esp+0x20]
   4c8ca:	43                   	inc    ebx
   4c8cb:	0f af 5c 24 18       	imul   ebx,DWORD PTR [esp+0x18]
   4c8d0:	89 5c 24 14          	mov    DWORD PTR [esp+0x14],ebx
   4c8d4:	8b 1c 24             	mov    ebx,DWORD PTR [esp]
   4c8d7:	03 5c 24 14          	add    ebx,DWORD PTR [esp+0x14]
   4c8db:	89 5c 24 18          	mov    DWORD PTR [esp+0x18],ebx
   4c8df:	8b 5c 24 44          	mov    ebx,DWORD PTR [esp+0x44]
   4c8e3:	2b 5c 24 3c          	sub    ebx,DWORD PTR [esp+0x3c]
   4c8e7:	89 5c 24 20          	mov    DWORD PTR [esp+0x20],ebx
   4c8eb:	89 d3                	mov    ebx,edx
   4c8ed:	2b 5c 24 40          	sub    ebx,DWORD PTR [esp+0x40]
   4c8f1:	43                   	inc    ebx
   4c8f2:	89 5c 24 24          	mov    DWORD PTR [esp+0x24],ebx
   4c8f6:	8b 5c 24 20          	mov    ebx,DWORD PTR [esp+0x20]
   4c8fa:	43                   	inc    ebx
   4c8fb:	0f af 5c 24 24       	imul   ebx,DWORD PTR [esp+0x24]
   4c900:	89 5c 24 1c          	mov    DWORD PTR [esp+0x1c],ebx
   4c904:	8b 5c 24 18          	mov    ebx,DWORD PTR [esp+0x18]
   4c908:	3b 5c 24 1c          	cmp    ebx,DWORD PTR [esp+0x1c]
   4c90c:	7c 3d                	jl     remove_bitmap_branch_29
   4c90e:	8b 7c 24 3c          	mov    edi,DWORD PTR [esp+0x3c]
   4c912:	8b 6c 24 40          	mov    ebp,DWORD PTR [esp+0x40]
   4c916:	8b 74 24 44          	mov    esi,DWORD PTR [esp+0x44]
   4c91a:	8b 5c 24 48          	mov    ebx,DWORD PTR [esp+0x48]
   4c91e:	89 d1                	mov    ecx,edx
   4c920:	85 db                	test   ebx,ebx
   4c922:	74 08                	je     remove_bitmap_branch_27
   4c924:	8b 50 10             	mov    edx,DWORD PTR [eax+0x10]
   4c927:	89 53 10             	mov    DWORD PTR [ebx+0x10],edx
   4c92a:	eb 09                	jmp    remove_bitmap_branch_28
remove_bitmap_branch_27:
   4c92c:	8b 5c 24 38          	mov    ebx,DWORD PTR [esp+0x38]
   4c930:	8b 50 10             	mov    edx,DWORD PTR [eax+0x10]
   4c933:	89 13                	mov    DWORD PTR [ebx],edx
remove_bitmap_branch_28:
   4c935:	e8 3e 57 02 00       	call   W?$dln(pnv)v
   4c93a:	31 c0                	xor    eax,eax
   4c93c:	89 44 24 48          	mov    DWORD PTR [esp+0x48],eax
   4c940:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
   4c944:	8b 00                	mov    eax,DWORD PTR [eax]
   4c946:	e9 a9 fe ff ff       	jmp    remove_bitmap_branch_15
remove_bitmap_branch_29:
   4c94b:	89 44 24 48          	mov    DWORD PTR [esp+0x48],eax
   4c94f:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
   4c952:	e9 9d fe ff ff       	jmp    remove_bitmap_branch_15
remove_bitmap_branch_30:
   4c957:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
   4c95b:	8b 00                	mov    eax,DWORD PTR [eax]
   4c95d:	89 44 24 28          	mov    DWORD PTR [esp+0x28],eax
   4c961:	b8 14 00 00 00       	mov    eax,0x14
   4c966:	8b 54 24 38          	mov    edx,DWORD PTR [esp+0x38]
   4c96a:	e8 a9 55 02 00       	call   W?$nwn(ui)pnv
   4c96f:	89 02                	mov    DWORD PTR [edx],eax
   4c971:	85 c0                	test   eax,eax
   4c973:	75 0f                	jne    remove_bitmap_branch_31
   4c975:	bb 8f bc 00 00       	mov    ebx,@obj3:screen_cpp_variable_5                              ; fixup: num: 11849, src obj: 1, src ofs: 0x4c976, dst obj: 3, dst ofs: 0xbc8f
   4c97a:	ba f4 01 00 00       	mov    edx,0x1f4
   4c97f:	e8 ac b6 fe ff       	call   _error_report
remove_bitmap_branch_31:
   4c984:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
   4c988:	8b 00                	mov    eax,DWORD PTR [eax]
   4c98a:	8b 54 24 28          	mov    edx,DWORD PTR [esp+0x28]
   4c98e:	89 50 10             	mov    DWORD PTR [eax+0x10],edx
   4c991:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
   4c995:	8b 00                	mov    eax,DWORD PTR [eax]
   4c997:	89 38                	mov    DWORD PTR [eax],edi
   4c999:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
   4c99d:	8b 00                	mov    eax,DWORD PTR [eax]
   4c99f:	89 70 08             	mov    DWORD PTR [eax+0x8],esi
   4c9a2:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
   4c9a6:	8b 00                	mov    eax,DWORD PTR [eax]
   4c9a8:	89 68 04             	mov    DWORD PTR [eax+0x4],ebp
   4c9ab:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
   4c9af:	8b 00                	mov    eax,DWORD PTR [eax]
   4c9b1:	89 48 0c             	mov    DWORD PTR [eax+0xc],ecx
   4c9b4:	83 c4 4c             	add    esp,0x4c
   4c9b7:	5d                   	pop    ebp
   4c9b8:	5f                   	pop    edi
   4c9b9:	5e                   	pop    esi
   4c9ba:	59                   	pop    ecx
   4c9bb:	5b                   	pop    ebx
   4c9bc:	c3                   	ret    
remove_bitmap_branch_32:
   4c9bd:	89 c2                	mov    edx,eax
   4c9bf:	8b 40 48             	mov    eax,DWORD PTR [eax+0x48]
   4c9c2:	85 c0                	test   eax,eax
   4c9c4:	0f 85 55 fd ff ff    	jne    remove_bitmap_branch_2
remove_bitmap_branch_33:
   4c9ca:	83 c4 4c             	add    esp,0x4c
   4c9cd:	5d                   	pop    ebp
   4c9ce:	5f                   	pop    edi
   4c9cf:	5e                   	pop    esi
   4c9d0:	59                   	pop    ecx
   4c9d1:	5b                   	pop    ebx
   4c9d2:	c3                   	ret    
   4c9d3:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   4c9d9:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
   4c9df:	90                   	nop

;-------------------------------------------------
;  Function 'remove_all'                         -
;-------------------------------------------------
remove_all:
   4c9e0:	53                   	push   ebx
   4c9e1:	51                   	push   ecx
   4c9e2:	52                   	push   edx
   4c9e3:	56                   	push   esi
   4c9e4:	89 c1                	mov    ecx,eax
   4c9e6:	8b 18                	mov    ebx,DWORD PTR [eax]
   4c9e8:	85 db                	test   ebx,ebx
   4c9ea:	0f 85 6e 01 00 00    	jne    remove_all_branch_8
   4c9f0:	5e                   	pop    esi
   4c9f1:	5a                   	pop    edx
   4c9f2:	59                   	pop    ecx
   4c9f3:	5b                   	pop    ebx
   4c9f4:	c3                   	ret    
remove_all_branch_1:
   4c9f5:	89 da                	mov    edx,ebx
   4c9f7:	89 c8                	mov    eax,ecx
   4c9f9:	e8 f2 fc ff ff       	call   remove_bitmap
   4c9fe:	8b 53 10             	mov    edx,DWORD PTR [ebx+0x10]
   4ca01:	85 d2                	test   edx,edx
   4ca03:	75 19                	jne    remove_all_branch_2
   4ca05:	85 db                	test   ebx,ebx
   4ca07:	0f 84 ee 01 00 00    	je     remove_all_branch_12
   4ca0d:	89 d8                	mov    eax,ebx
   4ca0f:	e8 8c e9 fe ff       	call   W?$dt:BTMAP$n()_
   4ca14:	e8 5f 56 02 00       	call   W?$dln(pnv)v
   4ca19:	e9 dd 01 00 00       	jmp    remove_all_branch_12
remove_all_branch_2:
   4ca1e:	89 d0                	mov    eax,edx
   4ca20:	ba 70 bc 00 00       	mov    edx,@obj3:screen_cpp_variable_1                              ; fixup: num: 11853, src obj: 1, src ofs: 0x4ca21, dst obj: 3, dst ofs: 0xbc70
   4ca25:	e8 06 9a 02 00       	call   strcmp_
   4ca2a:	85 c0                	test   eax,eax
   4ca2c:	0f 84 c9 01 00 00    	je     remove_all_branch_12
   4ca32:	ba 7a bc 00 00       	mov    edx,@obj3:screen_cpp_variable_2                              ; fixup: num: 11852, src obj: 1, src ofs: 0x4ca33, dst obj: 3, dst ofs: 0xbc7a
   4ca37:	8b 43 10             	mov    eax,DWORD PTR [ebx+0x10]
   4ca3a:	e8 f1 99 02 00       	call   strcmp_
   4ca3f:	85 c0                	test   eax,eax
   4ca41:	0f 84 b4 01 00 00    	je     remove_all_branch_12
   4ca47:	ba 82 bc 00 00       	mov    edx,@obj3:screen_cpp_variable_3                              ; fixup: num: 11851, src obj: 1, src ofs: 0x4ca48, dst obj: 3, dst ofs: 0xbc82
   4ca4c:	8b 43 10             	mov    eax,DWORD PTR [ebx+0x10]
   4ca4f:	e8 dc 99 02 00       	call   strcmp_
   4ca54:	85 c0                	test   eax,eax
   4ca56:	0f 84 9f 01 00 00    	je     remove_all_branch_12
   4ca5c:	ba 8b bc 00 00       	mov    edx,@obj3:screen_cpp_variable_4                              ; fixup: num: 11850, src obj: 1, src ofs: 0x4ca5d, dst obj: 3, dst ofs: 0xbc8b
   4ca61:	8b 43 10             	mov    eax,DWORD PTR [ebx+0x10]
   4ca64:	e8 b4 45 02 00       	call   strstr_
   4ca69:	85 c0                	test   eax,eax
   4ca6b:	0f 85 8a 01 00 00    	jne    remove_all_branch_12
   4ca71:	85 db                	test   ebx,ebx
   4ca73:	0f 84 82 01 00 00    	je     remove_all_branch_12
   4ca79:	89 d8                	mov    eax,ebx
   4ca7b:	31 d2                	xor    edx,edx
   4ca7d:	e8 1e e9 fe ff       	call   W?$dt:BTMAP$n()_
   4ca82:	e8 f1 55 02 00       	call   W?$dln(pnv)v
   4ca87:	89 f3                	mov    ebx,esi
   4ca89:	85 f6                	test   esi,esi
   4ca8b:	0f 85 cd 00 00 00    	jne    remove_all_branch_8
   4ca91:	5e                   	pop    esi
   4ca92:	5a                   	pop    edx
   4ca93:	59                   	pop    ecx
   4ca94:	5b                   	pop    ebx
   4ca95:	c3                   	ret    
remove_all_branch_3:
   4ca96:	80 7b 56 00          	cmp    BYTE PTR [ebx+0x56],0x0
   4ca9a:	0f 85 5b 01 00 00    	jne    remove_all_branch_12
   4caa0:	89 da                	mov    edx,ebx
   4caa2:	89 c8                	mov    eax,ecx
   4caa4:	e8 47 fc ff ff       	call   remove_bitmap
   4caa9:	85 db                	test   ebx,ebx
   4caab:	0f 84 4a 01 00 00    	je     remove_all_branch_12
   4cab1:	ba 01 00 00 00       	mov    edx,0x1
   4cab6:	89 d8                	mov    eax,ebx
   4cab8:	e8 e3 e8 fe ff       	call   W?$dt:BTMAP$n()_
   4cabd:	e8 b6 55 02 00       	call   W?$dln(pnv)v
   4cac2:	89 f3                	mov    ebx,esi
   4cac4:	85 f6                	test   esi,esi
   4cac6:	0f 85 92 00 00 00    	jne    remove_all_branch_8
   4cacc:	5e                   	pop    esi
   4cacd:	5a                   	pop    edx
   4cace:	59                   	pop    ecx
   4cacf:	5b                   	pop    ebx
   4cad0:	c3                   	ret    
remove_all_branch_4:
   4cad1:	89 da                	mov    edx,ebx
   4cad3:	89 c8                	mov    eax,ecx
   4cad5:	e8 16 fc ff ff       	call   remove_bitmap
   4cada:	89 f3                	mov    ebx,esi
   4cadc:	85 f6                	test   esi,esi
   4cade:	0f 85 7a 00 00 00    	jne    remove_all_branch_8
   4cae4:	5e                   	pop    esi
   4cae5:	5a                   	pop    edx
   4cae6:	59                   	pop    ecx
   4cae7:	5b                   	pop    ebx
   4cae8:	c3                   	ret    
remove_all_branch_5:
   4cae9:	89 da                	mov    edx,ebx
   4caeb:	89 c8                	mov    eax,ecx
   4caed:	e8 fe fb ff ff       	call   remove_bitmap
   4caf2:	85 db                	test   ebx,ebx
   4caf4:	0f 84 01 01 00 00    	je     remove_all_branch_12
   4cafa:	89 d8                	mov    eax,ebx
   4cafc:	31 d2                	xor    edx,edx
   4cafe:	e8 bd 76 ff ff       	call   W?$dt:MONSTER$n()_
   4cb03:	e8 70 55 02 00       	call   W?$dln(pnv)v
   4cb08:	89 f3                	mov    ebx,esi
   4cb0a:	85 f6                	test   esi,esi
   4cb0c:	75 50                	jne    remove_all_branch_8
   4cb0e:	5e                   	pop    esi
   4cb0f:	5a                   	pop    edx
   4cb10:	59                   	pop    ecx
   4cb11:	5b                   	pop    ebx
   4cb12:	c3                   	ret    
remove_all_branch_6:
   4cb13:	89 da                	mov    edx,ebx
   4cb15:	89 c8                	mov    eax,ecx
   4cb17:	e8 d4 fb ff ff       	call   remove_bitmap
   4cb1c:	85 db                	test   ebx,ebx
   4cb1e:	0f 84 d7 00 00 00    	je     remove_all_branch_12
   4cb24:	89 d8                	mov    eax,ebx
   4cb26:	31 d2                	xor    edx,edx
   4cb28:	e8 33 f4 fe ff       	call   W?$dt:ANIMATION$n()_
   4cb2d:	e8 46 55 02 00       	call   W?$dln(pnv)v
   4cb32:	89 f3                	mov    ebx,esi
   4cb34:	85 f6                	test   esi,esi
   4cb36:	75 26                	jne    remove_all_branch_8
   4cb38:	5e                   	pop    esi
   4cb39:	5a                   	pop    edx
   4cb3a:	59                   	pop    ecx
   4cb3b:	5b                   	pop    ebx
   4cb3c:	c3                   	ret    
remove_all_branch_7:
   4cb3d:	85 db                	test   ebx,ebx
   4cb3f:	0f 84 b6 00 00 00    	je     remove_all_branch_12
   4cb45:	89 d8                	mov    eax,ebx
   4cb47:	31 d2                	xor    edx,edx
   4cb49:	e8 d2 d3 ff ff       	call   W?$dt:TEXTBM$n()_
   4cb4e:	e8 25 55 02 00       	call   W?$dln(pnv)v
   4cb53:	89 f3                	mov    ebx,esi
   4cb55:	85 f6                	test   esi,esi
   4cb57:	75 05                	jne    remove_all_branch_8
   4cb59:	5e                   	pop    esi
   4cb5a:	5a                   	pop    edx
   4cb5b:	59                   	pop    ecx
   4cb5c:	5b                   	pop    ebx
   4cb5d:	c3                   	ret    
remove_all_branch_8:
   4cb5e:	8b 43 38             	mov    eax,DWORD PTR [ebx+0x38]
   4cb61:	8b 73 48             	mov    esi,DWORD PTR [ebx+0x48]
   4cb64:	83 f8 05             	cmp    eax,0x5
   4cb67:	72 4a                	jb     remove_all_branch_10
   4cb69:	0f 86 62 ff ff ff    	jbe    remove_all_branch_4
   4cb6f:	83 f8 15             	cmp    eax,0x15
   4cb72:	72 26                	jb     remove_all_branch_9
   4cb74:	83 f8 16             	cmp    eax,0x16
   4cb77:	0f 86 78 fe ff ff    	jbe    remove_all_branch_1
   4cb7d:	83 f8 17             	cmp    eax,0x17
   4cb80:	0f 86 10 ff ff ff    	jbe    remove_all_branch_3
   4cb86:	83 f8 19             	cmp    eax,0x19
   4cb89:	0f 86 66 fe ff ff    	jbe    remove_all_branch_1
   4cb8f:	89 f3                	mov    ebx,esi
   4cb91:	85 f6                	test   esi,esi
   4cb93:	75 c9                	jne    remove_all_branch_8
   4cb95:	5e                   	pop    esi
   4cb96:	5a                   	pop    edx
   4cb97:	59                   	pop    ecx
   4cb98:	5b                   	pop    ebx
   4cb99:	c3                   	ret    
remove_all_branch_9:
   4cb9a:	83 f8 06             	cmp    eax,0x6
   4cb9d:	0f 86 46 ff ff ff    	jbe    remove_all_branch_5
   4cba3:	83 f8 07             	cmp    eax,0x7
   4cba6:	74 95                	je     remove_all_branch_7
   4cba8:	89 f3                	mov    ebx,esi
   4cbaa:	85 f6                	test   esi,esi
   4cbac:	75 b0                	jne    remove_all_branch_8
   4cbae:	5e                   	pop    esi
   4cbaf:	5a                   	pop    edx
   4cbb0:	59                   	pop    ecx
   4cbb1:	5b                   	pop    ebx
   4cbb2:	c3                   	ret    
remove_all_branch_10:
   4cbb3:	83 f8 01             	cmp    eax,0x1
   4cbb6:	72 3b                	jb     remove_all_branch_11
   4cbb8:	0f 86 55 ff ff ff    	jbe    remove_all_branch_6
   4cbbe:	83 f8 03             	cmp    eax,0x3
   4cbc1:	72 38                	jb     remove_all_branch_12
   4cbc3:	0f 86 2c fe ff ff    	jbe    remove_all_branch_1
   4cbc9:	89 da                	mov    edx,ebx
   4cbcb:	89 c8                	mov    eax,ecx
   4cbcd:	e8 1e fb ff ff       	call   remove_bitmap
   4cbd2:	85 db                	test   ebx,ebx
   4cbd4:	74 25                	je     remove_all_branch_12
   4cbd6:	89 d8                	mov    eax,ebx
   4cbd8:	31 d2                	xor    edx,edx
   4cbda:	e8 51 84 ff ff       	call   W?$dt:NON_PLAYER_CHARACTER$n()_
   4cbdf:	e8 94 54 02 00       	call   W?$dln(pnv)v
   4cbe4:	89 f3                	mov    ebx,esi
   4cbe6:	85 f6                	test   esi,esi
   4cbe8:	0f 85 70 ff ff ff    	jne    remove_all_branch_8
   4cbee:	5e                   	pop    esi
   4cbef:	5a                   	pop    edx
   4cbf0:	59                   	pop    ecx
   4cbf1:	5b                   	pop    ebx
   4cbf2:	c3                   	ret    
remove_all_branch_11:
   4cbf3:	85 c0                	test   eax,eax
   4cbf5:	0f 84 fa fd ff ff    	je     remove_all_branch_1
remove_all_branch_12:
   4cbfb:	89 f3                	mov    ebx,esi
   4cbfd:	85 f6                	test   esi,esi
   4cbff:	0f 85 59 ff ff ff    	jne    remove_all_branch_8
   4cc05:	5e                   	pop    esi
   4cc06:	5a                   	pop    edx
   4cc07:	59                   	pop    ecx
   4cc08:	5b                   	pop    ebx
   4cc09:	c3                   	ret    
   4cc0a:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'move_bitmap'                        -
;-------------------------------------------------
move_bitmap:
   4cc10:	56                   	push   esi
   4cc11:	57                   	push   edi
   4cc12:	55                   	push   ebp
   4cc13:	81 ec f0 00 00 00    	sub    esp,0xf0
   4cc19:	89 44 24 74          	mov    DWORD PTR [esp+0x74],eax
   4cc1d:	89 54 24 78          	mov    DWORD PTR [esp+0x78],edx
   4cc21:	89 5c 24 70          	mov    DWORD PTR [esp+0x70],ebx
   4cc25:	89 4c 24 64          	mov    DWORD PTR [esp+0x64],ecx
   4cc29:	db 84 24 00 01 00 00 	fild   DWORD PTR [esp+0x100]
   4cc30:	d9 5c 24 54          	fstp   DWORD PTR [esp+0x54]
   4cc34:	d9 42 1c             	fld    DWORD PTR [edx+0x1c]
   4cc37:	d8 5c 24 54          	fcomp  DWORD PTR [esp+0x54]
   4cc3b:	df e0                	fnstsw ax
   4cc3d:	9e                   	sahf   
   4cc3e:	0f 85 a9 05 00 00    	jne    move_bitmap_branch_53
   4cc44:	3b 5a 3c             	cmp    ebx,DWORD PTR [edx+0x3c]
   4cc47:	75 09                	jne    move_bitmap_branch_1
   4cc49:	3b 4a 40             	cmp    ecx,DWORD PTR [edx+0x40]
   4cc4c:	0f 84 6e 0b 00 00    	je     move_bitmap_branch_92
move_bitmap_branch_1:
   4cc52:	8b 44 24 78          	mov    eax,DWORD PTR [esp+0x78]
   4cc56:	83 78 38 15          	cmp    DWORD PTR [eax+0x38],0x15
   4cc5a:	0f 8d b1 02 00 00    	jge    move_bitmap_branch_27
   4cc60:	8b 5c 24 78          	mov    ebx,DWORD PTR [esp+0x78]
   4cc64:	8b 50 3c             	mov    edx,DWORD PTR [eax+0x3c]
   4cc67:	8b 68 24             	mov    ebp,DWORD PTR [eax+0x24]
   4cc6a:	8b 40 40             	mov    eax,DWORD PTR [eax+0x40]
   4cc6d:	8b 4b 28             	mov    ecx,DWORD PTR [ebx+0x28]
   4cc70:	8b 73 30             	mov    esi,DWORD PTR [ebx+0x30]
   4cc73:	01 ea                	add    edx,ebp
   4cc75:	01 c8                	add    eax,ecx
   4cc77:	89 d5                	mov    ebp,edx
   4cc79:	89 44 24 60          	mov    DWORD PTR [esp+0x60],eax
   4cc7d:	01 f0                	add    eax,esi
   4cc7f:	8b 4c 24 60          	mov    ecx,DWORD PTR [esp+0x60]
   4cc83:	89 44 24 58          	mov    DWORD PTR [esp+0x58],eax
   4cc87:	8b 43 2c             	mov    eax,DWORD PTR [ebx+0x2c]
   4cc8a:	8b 7c 24 58          	mov    edi,DWORD PTR [esp+0x58]
   4cc8e:	01 d0                	add    eax,edx
   4cc90:	31 db                	xor    ebx,ebx
   4cc92:	89 44 24 38          	mov    DWORD PTR [esp+0x38],eax
   4cc96:	89 9c 24 d0 00 00 00 	mov    DWORD PTR [esp+0xd0],ebx
   4cc9d:	8b 44 24 74          	mov    eax,DWORD PTR [esp+0x74]
   4cca1:	8b 74 24 38          	mov    esi,DWORD PTR [esp+0x38]
   4cca5:	89 84 24 94 00 00 00 	mov    DWORD PTR [esp+0x94],eax
   4ccac:	8b 00                	mov    eax,DWORD PTR [eax]
   4ccae:	85 f6                	test   esi,esi
   4ccb0:	7d 04                	jge    move_bitmap_branch_2
   4ccb2:	30 d2                	xor    dl,dl
   4ccb4:	eb 22                	jmp    move_bitmap_branch_6
move_bitmap_branch_2:
   4ccb6:	81 fa 7f 02 00 00    	cmp    edx,0x27f
   4ccbc:	7e 04                	jle    move_bitmap_branch_3
   4ccbe:	30 d2                	xor    dl,dl
   4ccc0:	eb 16                	jmp    move_bitmap_branch_6
move_bitmap_branch_3:
   4ccc2:	85 ff                	test   edi,edi
   4ccc4:	7d 04                	jge    move_bitmap_branch_4
   4ccc6:	30 d2                	xor    dl,dl
   4ccc8:	eb 0e                	jmp    move_bitmap_branch_6
move_bitmap_branch_4:
   4ccca:	81 f9 df 01 00 00    	cmp    ecx,0x1df
   4ccd0:	7e 04                	jle    move_bitmap_branch_5
   4ccd2:	30 d2                	xor    dl,dl
   4ccd4:	eb 02                	jmp    move_bitmap_branch_6
move_bitmap_branch_5:
   4ccd6:	b2 01                	mov    dl,0x1
move_bitmap_branch_6:
   4ccd8:	84 d2                	test   dl,dl
   4ccda:	0f 84 31 02 00 00    	je     move_bitmap_branch_27
   4cce0:	81 fe 7f 02 00 00    	cmp    esi,0x27f
   4cce6:	7e 05                	jle    move_bitmap_branch_7
   4cce8:	be 7f 02 00 00       	mov    esi,0x27f
move_bitmap_branch_7:
   4cced:	85 ed                	test   ebp,ebp
   4ccef:	7d 02                	jge    move_bitmap_branch_8
   4ccf1:	31 ed                	xor    ebp,ebp
move_bitmap_branch_8:
   4ccf3:	81 ff df 01 00 00    	cmp    edi,0x1df
   4ccf9:	7e 05                	jle    move_bitmap_branch_9
   4ccfb:	bf df 01 00 00       	mov    edi,0x1df
move_bitmap_branch_9:
   4cd00:	85 c9                	test   ecx,ecx
   4cd02:	7d 02                	jge    move_bitmap_branch_10
   4cd04:	31 ff                	xor    edi,edi
move_bitmap_branch_10:
   4cd06:	85 c0                	test   eax,eax
   4cd08:	0f 84 91 01 00 00    	je     move_bitmap_branch_25
   4cd0e:	8b 58 04             	mov    ebx,DWORD PTR [eax+0x4]
   4cd11:	89 9c 24 80 00 00 00 	mov    DWORD PTR [esp+0x80],ebx
   4cd18:	8b 58 08             	mov    ebx,DWORD PTR [eax+0x8]
   4cd1b:	8b 10                	mov    edx,DWORD PTR [eax]
   4cd1d:	89 9c 24 84 00 00 00 	mov    DWORD PTR [esp+0x84],ebx
   4cd24:	8b 58 0c             	mov    ebx,DWORD PTR [eax+0xc]
   4cd27:	39 d6                	cmp    esi,edx
   4cd29:	7d 04                	jge    move_bitmap_branch_11
   4cd2b:	30 d2                	xor    dl,dl
   4cd2d:	eb 24                	jmp    move_bitmap_branch_15
move_bitmap_branch_11:
   4cd2f:	3b ac 24 84 00 00 00 	cmp    ebp,DWORD PTR [esp+0x84]
   4cd36:	7e 04                	jle    move_bitmap_branch_12
   4cd38:	30 d2                	xor    dl,dl
   4cd3a:	eb 17                	jmp    move_bitmap_branch_15
move_bitmap_branch_12:
   4cd3c:	3b bc 24 80 00 00 00 	cmp    edi,DWORD PTR [esp+0x80]
   4cd43:	7d 04                	jge    move_bitmap_branch_13
   4cd45:	30 d2                	xor    dl,dl
   4cd47:	eb 0a                	jmp    move_bitmap_branch_15
move_bitmap_branch_13:
   4cd49:	39 d9                	cmp    ecx,ebx
   4cd4b:	7e 04                	jle    move_bitmap_branch_14
   4cd4d:	30 d2                	xor    dl,dl
   4cd4f:	eb 02                	jmp    move_bitmap_branch_15
move_bitmap_branch_14:
   4cd51:	b2 01                	mov    dl,0x1
move_bitmap_branch_15:
   4cd53:	84 d2                	test   dl,dl
   4cd55:	0f 84 35 01 00 00    	je     move_bitmap_branch_24
   4cd5b:	8b 18                	mov    ebx,DWORD PTR [eax]
   4cd5d:	39 dd                	cmp    ebp,ebx
   4cd5f:	7d 04                	jge    move_bitmap_branch_16
   4cd61:	89 ea                	mov    edx,ebp
   4cd63:	eb 02                	jmp    move_bitmap_branch_17
move_bitmap_branch_16:
   4cd65:	89 da                	mov    edx,ebx
move_bitmap_branch_17:
   4cd67:	89 94 24 bc 00 00 00 	mov    DWORD PTR [esp+0xbc],edx
   4cd6e:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
   4cd71:	39 d1                	cmp    ecx,edx
   4cd73:	7d 02                	jge    move_bitmap_branch_18
   4cd75:	89 ca                	mov    edx,ecx
move_bitmap_branch_18:
   4cd77:	8b 58 08             	mov    ebx,DWORD PTR [eax+0x8]
   4cd7a:	89 94 24 a0 00 00 00 	mov    DWORD PTR [esp+0xa0],edx
   4cd81:	39 de                	cmp    esi,ebx
   4cd83:	7e 04                	jle    move_bitmap_branch_19
   4cd85:	89 f2                	mov    edx,esi
   4cd87:	eb 02                	jmp    move_bitmap_branch_20
move_bitmap_branch_19:
   4cd89:	89 da                	mov    edx,ebx
move_bitmap_branch_20:
   4cd8b:	89 94 24 a8 00 00 00 	mov    DWORD PTR [esp+0xa8],edx
   4cd92:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
   4cd95:	39 d7                	cmp    edi,edx
   4cd97:	7e 02                	jle    move_bitmap_branch_21
   4cd99:	89 fa                	mov    edx,edi
move_bitmap_branch_21:
   4cd9b:	89 f3                	mov    ebx,esi
   4cd9d:	29 eb                	sub    ebx,ebp
   4cd9f:	89 5c 24 40          	mov    DWORD PTR [esp+0x40],ebx
   4cda3:	89 fb                	mov    ebx,edi
   4cda5:	29 cb                	sub    ebx,ecx
   4cda7:	43                   	inc    ebx
   4cda8:	89 5c 24 38          	mov    DWORD PTR [esp+0x38],ebx
   4cdac:	8b 5c 24 40          	mov    ebx,DWORD PTR [esp+0x40]
   4cdb0:	43                   	inc    ebx
   4cdb1:	0f af 5c 24 38       	imul   ebx,DWORD PTR [esp+0x38]
   4cdb6:	89 1c 24             	mov    DWORD PTR [esp],ebx
   4cdb9:	8b 18                	mov    ebx,DWORD PTR [eax]
   4cdbb:	89 5c 24 04          	mov    DWORD PTR [esp+0x4],ebx
   4cdbf:	8b 58 04             	mov    ebx,DWORD PTR [eax+0x4]
   4cdc2:	89 5c 24 08          	mov    DWORD PTR [esp+0x8],ebx
   4cdc6:	8b 58 08             	mov    ebx,DWORD PTR [eax+0x8]
   4cdc9:	89 5c 24 0c          	mov    DWORD PTR [esp+0xc],ebx
   4cdcd:	8b 58 0c             	mov    ebx,DWORD PTR [eax+0xc]
   4cdd0:	89 5c 24 10          	mov    DWORD PTR [esp+0x10],ebx
   4cdd4:	8b 5c 24 0c          	mov    ebx,DWORD PTR [esp+0xc]
   4cdd8:	2b 5c 24 04          	sub    ebx,DWORD PTR [esp+0x4]
   4cddc:	89 5c 24 40          	mov    DWORD PTR [esp+0x40],ebx
   4cde0:	8b 5c 24 10          	mov    ebx,DWORD PTR [esp+0x10]
   4cde4:	2b 5c 24 08          	sub    ebx,DWORD PTR [esp+0x8]
   4cde8:	43                   	inc    ebx
   4cde9:	89 5c 24 38          	mov    DWORD PTR [esp+0x38],ebx
   4cded:	8b 5c 24 40          	mov    ebx,DWORD PTR [esp+0x40]
   4cdf1:	43                   	inc    ebx
   4cdf2:	0f af 5c 24 38       	imul   ebx,DWORD PTR [esp+0x38]
   4cdf7:	89 5c 24 14          	mov    DWORD PTR [esp+0x14],ebx
   4cdfb:	8b 1c 24             	mov    ebx,DWORD PTR [esp]
   4cdfe:	03 5c 24 14          	add    ebx,DWORD PTR [esp+0x14]
   4ce02:	89 5c 24 44          	mov    DWORD PTR [esp+0x44],ebx
   4ce06:	8b 9c 24 a8 00 00 00 	mov    ebx,DWORD PTR [esp+0xa8]
   4ce0d:	2b 9c 24 bc 00 00 00 	sub    ebx,DWORD PTR [esp+0xbc]
   4ce14:	89 5c 24 40          	mov    DWORD PTR [esp+0x40],ebx
   4ce18:	89 d3                	mov    ebx,edx
   4ce1a:	2b 9c 24 a0 00 00 00 	sub    ebx,DWORD PTR [esp+0xa0]
   4ce21:	43                   	inc    ebx
   4ce22:	89 5c 24 38          	mov    DWORD PTR [esp+0x38],ebx
   4ce26:	8b 5c 24 40          	mov    ebx,DWORD PTR [esp+0x40]
   4ce2a:	43                   	inc    ebx
   4ce2b:	0f af 5c 24 38       	imul   ebx,DWORD PTR [esp+0x38]
   4ce30:	89 5c 24 18          	mov    DWORD PTR [esp+0x18],ebx
   4ce34:	8b 5c 24 44          	mov    ebx,DWORD PTR [esp+0x44]
   4ce38:	3b 5c 24 18          	cmp    ebx,DWORD PTR [esp+0x18]
   4ce3c:	7c 52                	jl     move_bitmap_branch_24
   4ce3e:	8b ac 24 bc 00 00 00 	mov    ebp,DWORD PTR [esp+0xbc]
   4ce45:	8b 8c 24 a0 00 00 00 	mov    ecx,DWORD PTR [esp+0xa0]
   4ce4c:	8b b4 24 a8 00 00 00 	mov    esi,DWORD PTR [esp+0xa8]
   4ce53:	8b 9c 24 d0 00 00 00 	mov    ebx,DWORD PTR [esp+0xd0]
   4ce5a:	89 d7                	mov    edi,edx
   4ce5c:	85 db                	test   ebx,ebx
   4ce5e:	74 08                	je     move_bitmap_branch_22
   4ce60:	8b 50 10             	mov    edx,DWORD PTR [eax+0x10]
   4ce63:	89 53 10             	mov    DWORD PTR [ebx+0x10],edx
   4ce66:	eb 0c                	jmp    move_bitmap_branch_23
move_bitmap_branch_22:
   4ce68:	8b 9c 24 94 00 00 00 	mov    ebx,DWORD PTR [esp+0x94]
   4ce6f:	8b 50 10             	mov    edx,DWORD PTR [eax+0x10]
   4ce72:	89 13                	mov    DWORD PTR [ebx],edx
move_bitmap_branch_23:
   4ce74:	e8 ff 51 02 00       	call   W?$dln(pnv)v
   4ce79:	31 c0                	xor    eax,eax
   4ce7b:	89 84 24 d0 00 00 00 	mov    DWORD PTR [esp+0xd0],eax
   4ce82:	8b 84 24 94 00 00 00 	mov    eax,DWORD PTR [esp+0x94]
   4ce89:	8b 00                	mov    eax,DWORD PTR [eax]
   4ce8b:	e9 76 fe ff ff       	jmp    move_bitmap_branch_10
move_bitmap_branch_24:
   4ce90:	89 84 24 d0 00 00 00 	mov    DWORD PTR [esp+0xd0],eax
   4ce97:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
   4ce9a:	e9 67 fe ff ff       	jmp    move_bitmap_branch_10
move_bitmap_branch_25:
   4ce9f:	8b 84 24 94 00 00 00 	mov    eax,DWORD PTR [esp+0x94]
   4cea6:	8b 00                	mov    eax,DWORD PTR [eax]
   4cea8:	89 44 24 48          	mov    DWORD PTR [esp+0x48],eax
   4ceac:	b8 14 00 00 00       	mov    eax,0x14
   4ceb1:	8b 94 24 94 00 00 00 	mov    edx,DWORD PTR [esp+0x94]
   4ceb8:	e8 5b 50 02 00       	call   W?$nwn(ui)pnv
   4cebd:	89 02                	mov    DWORD PTR [edx],eax
   4cebf:	85 c0                	test   eax,eax
   4cec1:	75 0f                	jne    move_bitmap_branch_26
   4cec3:	bb 8f bc 00 00       	mov    ebx,@obj3:screen_cpp_variable_5                              ; fixup: num: 11854, src obj: 1, src ofs: 0x4cec4, dst obj: 3, dst ofs: 0xbc8f
   4cec8:	ba f4 01 00 00       	mov    edx,0x1f4
   4cecd:	e8 5e b1 fe ff       	call   _error_report
move_bitmap_branch_26:
   4ced2:	8b 84 24 94 00 00 00 	mov    eax,DWORD PTR [esp+0x94]
   4ced9:	8b 00                	mov    eax,DWORD PTR [eax]
   4cedb:	8b 54 24 48          	mov    edx,DWORD PTR [esp+0x48]
   4cedf:	89 50 10             	mov    DWORD PTR [eax+0x10],edx
   4cee2:	8b 84 24 94 00 00 00 	mov    eax,DWORD PTR [esp+0x94]
   4cee9:	8b 00                	mov    eax,DWORD PTR [eax]
   4ceeb:	89 28                	mov    DWORD PTR [eax],ebp
   4ceed:	8b 84 24 94 00 00 00 	mov    eax,DWORD PTR [esp+0x94]
   4cef4:	8b 00                	mov    eax,DWORD PTR [eax]
   4cef6:	89 70 08             	mov    DWORD PTR [eax+0x8],esi
   4cef9:	8b 84 24 94 00 00 00 	mov    eax,DWORD PTR [esp+0x94]
   4cf00:	8b 00                	mov    eax,DWORD PTR [eax]
   4cf02:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
   4cf05:	8b 84 24 94 00 00 00 	mov    eax,DWORD PTR [esp+0x94]
   4cf0c:	8b 00                	mov    eax,DWORD PTR [eax]
   4cf0e:	89 78 0c             	mov    DWORD PTR [eax+0xc],edi
move_bitmap_branch_27:
   4cf11:	8b 54 24 78          	mov    edx,DWORD PTR [esp+0x78]
   4cf15:	8b 44 24 70          	mov    eax,DWORD PTR [esp+0x70]
   4cf19:	89 42 3c             	mov    DWORD PTR [edx+0x3c],eax
   4cf1c:	8b 44 24 64          	mov    eax,DWORD PTR [esp+0x64]
   4cf20:	89 42 40             	mov    DWORD PTR [edx+0x40],eax
   4cf23:	83 7a 38 15          	cmp    DWORD PTR [edx+0x38],0x15
   4cf27:	0f 8d 93 08 00 00    	jge    move_bitmap_branch_92
   4cf2d:	8b 44 24 78          	mov    eax,DWORD PTR [esp+0x78]
   4cf31:	8b 54 24 78          	mov    edx,DWORD PTR [esp+0x78]
   4cf35:	8b 40 3c             	mov    eax,DWORD PTR [eax+0x3c]
   4cf38:	8b 5a 24             	mov    ebx,DWORD PTR [edx+0x24]
   4cf3b:	8d 14 18             	lea    edx,[eax+ebx*1]
   4cf3e:	8b 44 24 78          	mov    eax,DWORD PTR [esp+0x78]
   4cf42:	8b 5c 24 78          	mov    ebx,DWORD PTR [esp+0x78]
   4cf46:	8b 40 40             	mov    eax,DWORD PTR [eax+0x40]
   4cf49:	8b 4b 28             	mov    ecx,DWORD PTR [ebx+0x28]
   4cf4c:	89 d7                	mov    edi,edx
   4cf4e:	01 c8                	add    eax,ecx
   4cf50:	8b 73 30             	mov    esi,DWORD PTR [ebx+0x30]
   4cf53:	89 44 24 5c          	mov    DWORD PTR [esp+0x5c],eax
   4cf57:	01 f0                	add    eax,esi
   4cf59:	8b 4c 24 5c          	mov    ecx,DWORD PTR [esp+0x5c]
   4cf5d:	89 44 24 50          	mov    DWORD PTR [esp+0x50],eax
   4cf61:	8b 43 2c             	mov    eax,DWORD PTR [ebx+0x2c]
   4cf64:	8b 74 24 50          	mov    esi,DWORD PTR [esp+0x50]
   4cf68:	01 d0                	add    eax,edx
   4cf6a:	31 db                	xor    ebx,ebx
   4cf6c:	89 44 24 38          	mov    DWORD PTR [esp+0x38],eax
   4cf70:	89 9c 24 d8 00 00 00 	mov    DWORD PTR [esp+0xd8],ebx
   4cf77:	8b 44 24 74          	mov    eax,DWORD PTR [esp+0x74]
   4cf7b:	8b 6c 24 38          	mov    ebp,DWORD PTR [esp+0x38]
   4cf7f:	89 84 24 8c 00 00 00 	mov    DWORD PTR [esp+0x8c],eax
   4cf86:	8b 00                	mov    eax,DWORD PTR [eax]
   4cf88:	85 ed                	test   ebp,ebp
   4cf8a:	7d 04                	jge    move_bitmap_branch_28
   4cf8c:	30 d2                	xor    dl,dl
   4cf8e:	eb 22                	jmp    move_bitmap_branch_32
move_bitmap_branch_28:
   4cf90:	81 fa 7f 02 00 00    	cmp    edx,0x27f
   4cf96:	7e 04                	jle    move_bitmap_branch_29
   4cf98:	30 d2                	xor    dl,dl
   4cf9a:	eb 16                	jmp    move_bitmap_branch_32
move_bitmap_branch_29:
   4cf9c:	85 f6                	test   esi,esi
   4cf9e:	7d 04                	jge    move_bitmap_branch_30
   4cfa0:	30 d2                	xor    dl,dl
   4cfa2:	eb 0e                	jmp    move_bitmap_branch_32
move_bitmap_branch_30:
   4cfa4:	81 f9 df 01 00 00    	cmp    ecx,0x1df
   4cfaa:	7e 04                	jle    move_bitmap_branch_31
   4cfac:	30 d2                	xor    dl,dl
   4cfae:	eb 02                	jmp    move_bitmap_branch_32
move_bitmap_branch_31:
   4cfb0:	b2 01                	mov    dl,0x1
move_bitmap_branch_32:
   4cfb2:	84 d2                	test   dl,dl
   4cfb4:	0f 84 06 08 00 00    	je     move_bitmap_branch_92
   4cfba:	81 fd 7f 02 00 00    	cmp    ebp,0x27f
   4cfc0:	7e 05                	jle    move_bitmap_branch_33
   4cfc2:	bd 7f 02 00 00       	mov    ebp,0x27f
move_bitmap_branch_33:
   4cfc7:	85 ff                	test   edi,edi
   4cfc9:	7d 02                	jge    move_bitmap_branch_34
   4cfcb:	31 ff                	xor    edi,edi
move_bitmap_branch_34:
   4cfcd:	81 fe df 01 00 00    	cmp    esi,0x1df
   4cfd3:	7e 05                	jle    move_bitmap_branch_35
   4cfd5:	be df 01 00 00       	mov    esi,0x1df
move_bitmap_branch_35:
   4cfda:	85 c9                	test   ecx,ecx
   4cfdc:	7d 02                	jge    move_bitmap_branch_36
   4cfde:	31 f6                	xor    esi,esi
move_bitmap_branch_36:
   4cfe0:	85 c0                	test   eax,eax
   4cfe2:	0f 84 87 01 00 00    	je     move_bitmap_branch_51
   4cfe8:	8b 10                	mov    edx,DWORD PTR [eax]
   4cfea:	89 54 24 1c          	mov    DWORD PTR [esp+0x1c],edx
   4cfee:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
   4cff1:	8b 58 0c             	mov    ebx,DWORD PTR [eax+0xc]
   4cff4:	89 54 24 7c          	mov    DWORD PTR [esp+0x7c],edx
   4cff8:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
   4cffb:	3b 6c 24 1c          	cmp    ebp,DWORD PTR [esp+0x1c]
   4cfff:	7d 04                	jge    move_bitmap_branch_37
   4d001:	30 d2                	xor    dl,dl
   4d003:	eb 1c                	jmp    move_bitmap_branch_41
move_bitmap_branch_37:
   4d005:	39 d7                	cmp    edi,edx
   4d007:	7e 04                	jle    move_bitmap_branch_38
   4d009:	30 d2                	xor    dl,dl
   4d00b:	eb 14                	jmp    move_bitmap_branch_41
move_bitmap_branch_38:
   4d00d:	3b 74 24 7c          	cmp    esi,DWORD PTR [esp+0x7c]
   4d011:	7d 04                	jge    move_bitmap_branch_39
   4d013:	30 d2                	xor    dl,dl
   4d015:	eb 0a                	jmp    move_bitmap_branch_41
move_bitmap_branch_39:
   4d017:	39 d9                	cmp    ecx,ebx
   4d019:	7e 04                	jle    move_bitmap_branch_40
   4d01b:	30 d2                	xor    dl,dl
   4d01d:	eb 02                	jmp    move_bitmap_branch_41
move_bitmap_branch_40:
   4d01f:	b2 01                	mov    dl,0x1
move_bitmap_branch_41:
   4d021:	84 d2                	test   dl,dl
   4d023:	0f 84 37 01 00 00    	je     move_bitmap_branch_50
   4d029:	8b 18                	mov    ebx,DWORD PTR [eax]
   4d02b:	39 df                	cmp    edi,ebx
   4d02d:	7d 04                	jge    move_bitmap_branch_42
   4d02f:	89 fa                	mov    edx,edi
   4d031:	eb 02                	jmp    move_bitmap_branch_43
move_bitmap_branch_42:
   4d033:	89 da                	mov    edx,ebx
move_bitmap_branch_43:
   4d035:	89 94 24 ac 00 00 00 	mov    DWORD PTR [esp+0xac],edx
   4d03c:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
   4d03f:	39 d1                	cmp    ecx,edx
   4d041:	7d 02                	jge    move_bitmap_branch_44
   4d043:	89 ca                	mov    edx,ecx
move_bitmap_branch_44:
   4d045:	8b 58 08             	mov    ebx,DWORD PTR [eax+0x8]
   4d048:	89 94 24 c0 00 00 00 	mov    DWORD PTR [esp+0xc0],edx
   4d04f:	39 dd                	cmp    ebp,ebx
   4d051:	7e 04                	jle    move_bitmap_branch_45
   4d053:	89 ea                	mov    edx,ebp
   4d055:	eb 02                	jmp    move_bitmap_branch_46
move_bitmap_branch_45:
   4d057:	89 da                	mov    edx,ebx
move_bitmap_branch_46:
   4d059:	89 94 24 c4 00 00 00 	mov    DWORD PTR [esp+0xc4],edx
   4d060:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
   4d063:	39 d6                	cmp    esi,edx
   4d065:	7e 02                	jle    move_bitmap_branch_47
   4d067:	89 f2                	mov    edx,esi
move_bitmap_branch_47:
   4d069:	89 eb                	mov    ebx,ebp
   4d06b:	29 fb                	sub    ebx,edi
   4d06d:	89 5c 24 40          	mov    DWORD PTR [esp+0x40],ebx
   4d071:	89 f3                	mov    ebx,esi
   4d073:	29 cb                	sub    ebx,ecx
   4d075:	43                   	inc    ebx
   4d076:	89 5c 24 38          	mov    DWORD PTR [esp+0x38],ebx
   4d07a:	8b 5c 24 40          	mov    ebx,DWORD PTR [esp+0x40]
   4d07e:	43                   	inc    ebx
   4d07f:	0f af 5c 24 38       	imul   ebx,DWORD PTR [esp+0x38]
   4d084:	89 5c 24 20          	mov    DWORD PTR [esp+0x20],ebx
   4d088:	8b 18                	mov    ebx,DWORD PTR [eax]
   4d08a:	89 5c 24 24          	mov    DWORD PTR [esp+0x24],ebx
   4d08e:	8b 58 04             	mov    ebx,DWORD PTR [eax+0x4]
   4d091:	89 5c 24 28          	mov    DWORD PTR [esp+0x28],ebx
   4d095:	8b 58 08             	mov    ebx,DWORD PTR [eax+0x8]
   4d098:	89 5c 24 2c          	mov    DWORD PTR [esp+0x2c],ebx
   4d09c:	8b 58 0c             	mov    ebx,DWORD PTR [eax+0xc]
   4d09f:	89 5c 24 30          	mov    DWORD PTR [esp+0x30],ebx
   4d0a3:	8b 5c 24 2c          	mov    ebx,DWORD PTR [esp+0x2c]
   4d0a7:	2b 5c 24 24          	sub    ebx,DWORD PTR [esp+0x24]
   4d0ab:	89 5c 24 40          	mov    DWORD PTR [esp+0x40],ebx
   4d0af:	8b 5c 24 30          	mov    ebx,DWORD PTR [esp+0x30]
   4d0b3:	2b 5c 24 28          	sub    ebx,DWORD PTR [esp+0x28]
   4d0b7:	43                   	inc    ebx
   4d0b8:	89 5c 24 38          	mov    DWORD PTR [esp+0x38],ebx
   4d0bc:	8b 5c 24 40          	mov    ebx,DWORD PTR [esp+0x40]
   4d0c0:	43                   	inc    ebx
   4d0c1:	0f af 5c 24 38       	imul   ebx,DWORD PTR [esp+0x38]
   4d0c6:	89 5c 24 34          	mov    DWORD PTR [esp+0x34],ebx
   4d0ca:	8b 5c 24 20          	mov    ebx,DWORD PTR [esp+0x20]
   4d0ce:	03 5c 24 34          	add    ebx,DWORD PTR [esp+0x34]
   4d0d2:	89 5c 24 38          	mov    DWORD PTR [esp+0x38],ebx
   4d0d6:	8b 9c 24 c4 00 00 00 	mov    ebx,DWORD PTR [esp+0xc4]
   4d0dd:	2b 9c 24 ac 00 00 00 	sub    ebx,DWORD PTR [esp+0xac]
   4d0e4:	89 5c 24 40          	mov    DWORD PTR [esp+0x40],ebx
   4d0e8:	89 d3                	mov    ebx,edx
   4d0ea:	2b 9c 24 c0 00 00 00 	sub    ebx,DWORD PTR [esp+0xc0]
   4d0f1:	43                   	inc    ebx
   4d0f2:	89 5c 24 44          	mov    DWORD PTR [esp+0x44],ebx
   4d0f6:	8b 5c 24 40          	mov    ebx,DWORD PTR [esp+0x40]
   4d0fa:	43                   	inc    ebx
   4d0fb:	0f af 5c 24 44       	imul   ebx,DWORD PTR [esp+0x44]
   4d100:	89 5c 24 3c          	mov    DWORD PTR [esp+0x3c],ebx
   4d104:	8b 5c 24 38          	mov    ebx,DWORD PTR [esp+0x38]
   4d108:	3b 5c 24 3c          	cmp    ebx,DWORD PTR [esp+0x3c]
   4d10c:	7c 52                	jl     move_bitmap_branch_50
   4d10e:	8b bc 24 ac 00 00 00 	mov    edi,DWORD PTR [esp+0xac]
   4d115:	8b 8c 24 c0 00 00 00 	mov    ecx,DWORD PTR [esp+0xc0]
   4d11c:	8b ac 24 c4 00 00 00 	mov    ebp,DWORD PTR [esp+0xc4]
   4d123:	8b 9c 24 d8 00 00 00 	mov    ebx,DWORD PTR [esp+0xd8]
   4d12a:	89 d6                	mov    esi,edx
   4d12c:	85 db                	test   ebx,ebx
   4d12e:	74 08                	je     move_bitmap_branch_48
   4d130:	8b 50 10             	mov    edx,DWORD PTR [eax+0x10]
   4d133:	89 53 10             	mov    DWORD PTR [ebx+0x10],edx
   4d136:	eb 0c                	jmp    move_bitmap_branch_49
move_bitmap_branch_48:
   4d138:	8b 9c 24 8c 00 00 00 	mov    ebx,DWORD PTR [esp+0x8c]
   4d13f:	8b 50 10             	mov    edx,DWORD PTR [eax+0x10]
   4d142:	89 13                	mov    DWORD PTR [ebx],edx
move_bitmap_branch_49:
   4d144:	e8 2f 4f 02 00       	call   W?$dln(pnv)v
   4d149:	31 c0                	xor    eax,eax
   4d14b:	89 84 24 d8 00 00 00 	mov    DWORD PTR [esp+0xd8],eax
   4d152:	8b 84 24 8c 00 00 00 	mov    eax,DWORD PTR [esp+0x8c]
   4d159:	8b 00                	mov    eax,DWORD PTR [eax]
   4d15b:	e9 80 fe ff ff       	jmp    move_bitmap_branch_36
move_bitmap_branch_50:
   4d160:	89 84 24 d8 00 00 00 	mov    DWORD PTR [esp+0xd8],eax
   4d167:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
   4d16a:	e9 71 fe ff ff       	jmp    move_bitmap_branch_36
move_bitmap_branch_51:
   4d16f:	8b 84 24 8c 00 00 00 	mov    eax,DWORD PTR [esp+0x8c]
   4d176:	8b 00                	mov    eax,DWORD PTR [eax]
   4d178:	89 44 24 4c          	mov    DWORD PTR [esp+0x4c],eax
   4d17c:	b8 14 00 00 00       	mov    eax,0x14
   4d181:	8b 94 24 8c 00 00 00 	mov    edx,DWORD PTR [esp+0x8c]
   4d188:	e8 8b 4d 02 00       	call   W?$nwn(ui)pnv
   4d18d:	89 02                	mov    DWORD PTR [edx],eax
   4d18f:	85 c0                	test   eax,eax
   4d191:	75 0f                	jne    move_bitmap_branch_52
   4d193:	bb 8f bc 00 00       	mov    ebx,@obj3:screen_cpp_variable_5                              ; fixup: num: 11859, src obj: 1, src ofs: 0x4d194, dst obj: 3, dst ofs: 0xbc8f
   4d198:	ba f4 01 00 00       	mov    edx,0x1f4
   4d19d:	e8 8e ae fe ff       	call   _error_report
move_bitmap_branch_52:
   4d1a2:	8b 84 24 8c 00 00 00 	mov    eax,DWORD PTR [esp+0x8c]
   4d1a9:	8b 00                	mov    eax,DWORD PTR [eax]
   4d1ab:	8b 54 24 4c          	mov    edx,DWORD PTR [esp+0x4c]
   4d1af:	89 50 10             	mov    DWORD PTR [eax+0x10],edx
   4d1b2:	8b 84 24 8c 00 00 00 	mov    eax,DWORD PTR [esp+0x8c]
   4d1b9:	8b 00                	mov    eax,DWORD PTR [eax]
   4d1bb:	89 38                	mov    DWORD PTR [eax],edi
   4d1bd:	8b 84 24 8c 00 00 00 	mov    eax,DWORD PTR [esp+0x8c]
   4d1c4:	8b 00                	mov    eax,DWORD PTR [eax]
   4d1c6:	89 68 08             	mov    DWORD PTR [eax+0x8],ebp
   4d1c9:	8b 84 24 8c 00 00 00 	mov    eax,DWORD PTR [esp+0x8c]
   4d1d0:	8b 00                	mov    eax,DWORD PTR [eax]
   4d1d2:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
   4d1d5:	8b 84 24 8c 00 00 00 	mov    eax,DWORD PTR [esp+0x8c]
   4d1dc:	8b 00                	mov    eax,DWORD PTR [eax]
   4d1de:	89 70 0c             	mov    DWORD PTR [eax+0xc],esi
   4d1e1:	81 c4 f0 00 00 00    	add    esp,0xf0
   4d1e7:	5d                   	pop    ebp
   4d1e8:	5f                   	pop    edi
   4d1e9:	5e                   	pop    esi
   4d1ea:	c2 04 00             	ret    0x4
move_bitmap_branch_53:
   4d1ed:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 11861, src obj: 1, src ofs: 0x4d1ee, dst obj: 3, dst ofs: 0x25a88
   4d1f2:	e8 f9 f4 ff ff       	call   remove_bitmap
   4d1f7:	8b 54 24 78          	mov    edx,DWORD PTR [esp+0x78]
   4d1fb:	8b 44 24 54          	mov    eax,DWORD PTR [esp+0x54]
   4d1ff:	89 5a 3c             	mov    DWORD PTR [edx+0x3c],ebx
   4d202:	89 d7                	mov    edi,edx
   4d204:	89 42 1c             	mov    DWORD PTR [edx+0x1c],eax
   4d207:	89 d0                	mov    eax,edx
   4d209:	89 4a 40             	mov    DWORD PTR [edx+0x40],ecx
   4d20c:	e8 2f e2 fe ff       	call   scale_mod_75
   4d211:	8b 52 04             	mov    edx,DWORD PTR [edx+0x4]
   4d214:	31 ed                	xor    ebp,ebp
   4d216:	85 d2                	test   edx,edx
   4d218:	74 0c                	je     move_bitmap_branch_54
   4d21a:	89 f8                	mov    eax,edi
   4d21c:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
   4d21f:	89 fa                	mov    edx,edi
   4d221:	8b 00                	mov    eax,DWORD PTR [eax]
   4d223:	89 42 2c             	mov    DWORD PTR [edx+0x2c],eax
move_bitmap_branch_54:
   4d226:	8b 5f 04             	mov    ebx,DWORD PTR [edi+0x4]
   4d229:	85 db                	test   ebx,ebx
   4d22b:	74 06                	je     move_bitmap_branch_55
   4d22d:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
   4d230:	89 47 30             	mov    DWORD PTR [edi+0x30],eax
move_bitmap_branch_55:
   4d233:	8b 35 88 5a 02 00    	mov    esi,DWORD PTR ds:@obj3:the_list                              ; fixup: num: 11860, src obj: 1, src ofs: 0x4d235, dst obj: 3, dst ofs: 0x25a88
   4d239:	85 f6                	test   esi,esi
   4d23b:	0f 84 c5 02 00 00    	je     move_bitmap_branch_72
move_bitmap_branch_56:
   4d241:	8b 4e 10             	mov    ecx,DWORD PTR [esi+0x10]
   4d244:	85 c9                	test   ecx,ecx
   4d246:	0f 84 a2 02 00 00    	je     move_bitmap_branch_71
   4d24c:	8b 47 10             	mov    eax,DWORD PTR [edi+0x10]
   4d24f:	85 c0                	test   eax,eax
   4d251:	0f 84 97 02 00 00    	je     move_bitmap_branch_71
   4d257:	89 c2                	mov    edx,eax
   4d259:	89 c8                	mov    eax,ecx
   4d25b:	e8 d0 91 02 00       	call   strcmp_
   4d260:	85 c0                	test   eax,eax
   4d262:	0f 85 86 02 00 00    	jne    move_bitmap_branch_71
   4d268:	83 7f 38 15          	cmp    DWORD PTR [edi+0x38],0x15
   4d26c:	0f 8d 4e 05 00 00    	jge    move_bitmap_branch_92
   4d272:	68 df 01 00 00       	push   0x1df
   4d277:	8b 47 3c             	mov    eax,DWORD PTR [edi+0x3c]
   4d27a:	8b 4f 24             	mov    ecx,DWORD PTR [edi+0x24]
   4d27d:	8b 57 40             	mov    edx,DWORD PTR [edi+0x40]
   4d280:	8b 77 28             	mov    esi,DWORD PTR [edi+0x28]
   4d283:	8b 5f 2c             	mov    ebx,DWORD PTR [edi+0x2c]
   4d286:	68 7f 02 00 00       	push   0x27f
   4d28b:	01 c8                	add    eax,ecx
   4d28d:	01 f2                	add    edx,esi
   4d28f:	8b 35 84 5a 02 00    	mov    esi,DWORD PTR ds:@obj3:the_screen                            ; fixup: num: 11863, src obj: 1, src ofs: 0x4d291, dst obj: 3, dst ofs: 0x25a84
   4d295:	89 c5                	mov    ebp,eax
   4d297:	89 94 24 ec 00 00 00 	mov    DWORD PTR [esp+0xec],edx
   4d29e:	8b 4f 30             	mov    ecx,DWORD PTR [edi+0x30]
   4d2a1:	01 c3                	add    ebx,eax
   4d2a3:	bf 84 5a 02 00       	mov    edi,@obj3:the_screen                                         ; fixup: num: 11862, src obj: 1, src ofs: 0x4d2a4, dst obj: 3, dst ofs: 0x25a84
   4d2a8:	89 5c 24 70          	mov    DWORD PTR [esp+0x70],ebx
   4d2ac:	89 9c 24 f4 00 00 00 	mov    DWORD PTR [esp+0xf4],ebx
   4d2b3:	31 db                	xor    ebx,ebx
   4d2b5:	01 d1                	add    ecx,edx
   4d2b7:	53                   	push   ebx
   4d2b8:	89 bc 24 9c 00 00 00 	mov    DWORD PTR [esp+0x9c],edi
   4d2bf:	89 9c 24 e8 00 00 00 	mov    DWORD PTR [esp+0xe8],ebx
   4d2c6:	53                   	push   ebx
   4d2c7:	8b 5c 24 78          	mov    ebx,DWORD PTR [esp+0x78]
   4d2cb:	89 cf                	mov    edi,ecx
   4d2cd:	e8 fe 0d 00 00       	call   overlaps
   4d2d2:	84 c0                	test   al,al
   4d2d4:	0f 84 e6 04 00 00    	je     move_bitmap_branch_92
   4d2da:	81 7c 24 68 7f 02 00 00 	cmp    DWORD PTR [esp+0x68],0x27f
   4d2e2:	7e 0b                	jle    move_bitmap_branch_57
   4d2e4:	c7 84 24 ec 00 00 00 7f 02 00 00 	mov    DWORD PTR [esp+0xec],0x27f
move_bitmap_branch_57:
   4d2ef:	85 ed                	test   ebp,ebp
   4d2f1:	7d 02                	jge    move_bitmap_branch_58
   4d2f3:	31 ed                	xor    ebp,ebp
move_bitmap_branch_58:
   4d2f5:	81 ff df 01 00 00    	cmp    edi,0x1df
   4d2fb:	7e 05                	jle    move_bitmap_branch_59
   4d2fd:	bf df 01 00 00       	mov    edi,0x1df
move_bitmap_branch_59:
   4d302:	83 bc 24 e4 00 00 00 00 	cmp    DWORD PTR [esp+0xe4],0x0
   4d30a:	7d 02                	jge    move_bitmap_branch_60
   4d30c:	31 ff                	xor    edi,edi
move_bitmap_branch_60:
   4d30e:	85 f6                	test   esi,esi
   4d310:	0f 84 54 01 00 00    	je     move_bitmap_branch_69
   4d316:	8b 46 0c             	mov    eax,DWORD PTR [esi+0xc]
   4d319:	50                   	push   eax
   4d31a:	8b 56 08             	mov    edx,DWORD PTR [esi+0x8]
   4d31d:	52                   	push   edx
   4d31e:	8b 5e 04             	mov    ebx,DWORD PTR [esi+0x4]
   4d321:	8b 0e                	mov    ecx,DWORD PTR [esi]
   4d323:	53                   	push   ebx
   4d324:	89 e8                	mov    eax,ebp
   4d326:	8b 94 24 f0 00 00 00 	mov    edx,DWORD PTR [esp+0xf0]
   4d32d:	51                   	push   ecx
   4d32e:	8b 9c 24 fc 00 00 00 	mov    ebx,DWORD PTR [esp+0xfc]
   4d335:	89 f9                	mov    ecx,edi
   4d337:	e8 94 0d 00 00       	call   overlaps
   4d33c:	84 c0                	test   al,al
   4d33e:	0f 84 17 01 00 00    	je     move_bitmap_branch_68
   4d344:	8b 06                	mov    eax,DWORD PTR [esi]
   4d346:	39 c5                	cmp    ebp,eax
   4d348:	7d 02                	jge    move_bitmap_branch_61
   4d34a:	89 e8                	mov    eax,ebp
move_bitmap_branch_61:
   4d34c:	89 84 24 a4 00 00 00 	mov    DWORD PTR [esp+0xa4],eax
   4d353:	8b 56 04             	mov    edx,DWORD PTR [esi+0x4]
   4d356:	8b 84 24 e4 00 00 00 	mov    eax,DWORD PTR [esp+0xe4]
   4d35d:	39 d0                	cmp    eax,edx
   4d35f:	7c 02                	jl     move_bitmap_branch_62
   4d361:	89 d0                	mov    eax,edx
move_bitmap_branch_62:
   4d363:	89 84 24 b4 00 00 00 	mov    DWORD PTR [esp+0xb4],eax
   4d36a:	8b 5e 08             	mov    ebx,DWORD PTR [esi+0x8]
   4d36d:	8b 84 24 ec 00 00 00 	mov    eax,DWORD PTR [esp+0xec]
   4d374:	39 d8                	cmp    eax,ebx
   4d376:	7f 02                	jg     move_bitmap_branch_63
   4d378:	89 d8                	mov    eax,ebx
move_bitmap_branch_63:
   4d37a:	8b 4e 0c             	mov    ecx,DWORD PTR [esi+0xc]
   4d37d:	89 84 24 98 00 00 00 	mov    DWORD PTR [esp+0x98],eax
   4d384:	39 cf                	cmp    edi,ecx
   4d386:	7e 09                	jle    move_bitmap_branch_64
   4d388:	89 bc 24 cc 00 00 00 	mov    DWORD PTR [esp+0xcc],edi
   4d38f:	eb 07                	jmp    move_bitmap_branch_65
move_bitmap_branch_64:
   4d391:	89 8c 24 cc 00 00 00 	mov    DWORD PTR [esp+0xcc],ecx
move_bitmap_branch_65:
   4d398:	8b 9c 24 ec 00 00 00 	mov    ebx,DWORD PTR [esp+0xec]
   4d39f:	8b 94 24 e4 00 00 00 	mov    edx,DWORD PTR [esp+0xe4]
   4d3a6:	89 f9                	mov    ecx,edi
   4d3a8:	89 e8                	mov    eax,ebp
   4d3aa:	e8 11 0d 00 00       	call   area
   4d3af:	89 44 24 44          	mov    DWORD PTR [esp+0x44],eax
   4d3b3:	8b 4e 0c             	mov    ecx,DWORD PTR [esi+0xc]
   4d3b6:	8b 5e 08             	mov    ebx,DWORD PTR [esi+0x8]
   4d3b9:	8b 56 04             	mov    edx,DWORD PTR [esi+0x4]
   4d3bc:	8b 06                	mov    eax,DWORD PTR [esi]
   4d3be:	e8 fd 0c 00 00       	call   area
   4d3c3:	8b 54 24 44          	mov    edx,DWORD PTR [esp+0x44]
   4d3c7:	8b 8c 24 cc 00 00 00 	mov    ecx,DWORD PTR [esp+0xcc]
   4d3ce:	8b 9c 24 98 00 00 00 	mov    ebx,DWORD PTR [esp+0x98]
   4d3d5:	01 c2                	add    edx,eax
   4d3d7:	8b 84 24 a4 00 00 00 	mov    eax,DWORD PTR [esp+0xa4]
   4d3de:	89 54 24 44          	mov    DWORD PTR [esp+0x44],edx
   4d3e2:	8b 94 24 b4 00 00 00 	mov    edx,DWORD PTR [esp+0xb4]
   4d3e9:	e8 d2 0c 00 00       	call   area
   4d3ee:	3b 44 24 44          	cmp    eax,DWORD PTR [esp+0x44]
   4d3f2:	7f 67                	jg     move_bitmap_branch_68
   4d3f4:	8b ac 24 a4 00 00 00 	mov    ebp,DWORD PTR [esp+0xa4]
   4d3fb:	8b 84 24 b4 00 00 00 	mov    eax,DWORD PTR [esp+0xb4]
   4d402:	8b bc 24 cc 00 00 00 	mov    edi,DWORD PTR [esp+0xcc]
   4d409:	89 84 24 e4 00 00 00 	mov    DWORD PTR [esp+0xe4],eax
   4d410:	8b 84 24 98 00 00 00 	mov    eax,DWORD PTR [esp+0x98]
   4d417:	8b 9c 24 dc 00 00 00 	mov    ebx,DWORD PTR [esp+0xdc]
   4d41e:	89 84 24 ec 00 00 00 	mov    DWORD PTR [esp+0xec],eax
   4d425:	85 db                	test   ebx,ebx
   4d427:	74 08                	je     move_bitmap_branch_66
   4d429:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
   4d42c:	89 43 10             	mov    DWORD PTR [ebx+0x10],eax
   4d42f:	eb 0c                	jmp    move_bitmap_branch_67
move_bitmap_branch_66:
   4d431:	8b 94 24 90 00 00 00 	mov    edx,DWORD PTR [esp+0x90]
   4d438:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
   4d43b:	89 02                	mov    DWORD PTR [edx],eax
move_bitmap_branch_67:
   4d43d:	89 f0                	mov    eax,esi
   4d43f:	31 c9                	xor    ecx,ecx
   4d441:	8b b4 24 90 00 00 00 	mov    esi,DWORD PTR [esp+0x90]
   4d448:	e8 2b 4c 02 00       	call   W?$dln(pnv)v
   4d44d:	89 8c 24 dc 00 00 00 	mov    DWORD PTR [esp+0xdc],ecx
   4d454:	8b 36                	mov    esi,DWORD PTR [esi]
   4d456:	e9 b3 fe ff ff       	jmp    move_bitmap_branch_60
move_bitmap_branch_68:
   4d45b:	89 b4 24 dc 00 00 00 	mov    DWORD PTR [esp+0xdc],esi
   4d462:	8b 76 10             	mov    esi,DWORD PTR [esi+0x10]
   4d465:	e9 a4 fe ff ff       	jmp    move_bitmap_branch_60
move_bitmap_branch_69:
   4d46a:	8b 8c 24 90 00 00 00 	mov    ecx,DWORD PTR [esp+0x90]
   4d471:	b8 14 00 00 00       	mov    eax,0x14
   4d476:	8b 94 24 90 00 00 00 	mov    edx,DWORD PTR [esp+0x90]
   4d47d:	8b 09                	mov    ecx,DWORD PTR [ecx]
   4d47f:	e8 94 4a 02 00       	call   W?$nwn(ui)pnv
   4d484:	89 02                	mov    DWORD PTR [edx],eax
   4d486:	85 c0                	test   eax,eax
   4d488:	75 0f                	jne    move_bitmap_branch_70
   4d48a:	bb 8f bc 00 00       	mov    ebx,@obj3:screen_cpp_variable_5                              ; fixup: num: 11864, src obj: 1, src ofs: 0x4d48b, dst obj: 3, dst ofs: 0xbc8f
   4d48f:	ba f4 01 00 00       	mov    edx,0x1f4
   4d494:	e8 97 ab fe ff       	call   _error_report
move_bitmap_branch_70:
   4d499:	8b 84 24 90 00 00 00 	mov    eax,DWORD PTR [esp+0x90]
   4d4a0:	8b 00                	mov    eax,DWORD PTR [eax]
   4d4a2:	89 48 10             	mov    DWORD PTR [eax+0x10],ecx
   4d4a5:	8b 84 24 90 00 00 00 	mov    eax,DWORD PTR [esp+0x90]
   4d4ac:	8b 00                	mov    eax,DWORD PTR [eax]
   4d4ae:	89 28                	mov    DWORD PTR [eax],ebp
   4d4b0:	8b 84 24 90 00 00 00 	mov    eax,DWORD PTR [esp+0x90]
   4d4b7:	8b 00                	mov    eax,DWORD PTR [eax]
   4d4b9:	8b 94 24 ec 00 00 00 	mov    edx,DWORD PTR [esp+0xec]
   4d4c0:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
   4d4c3:	8b 84 24 90 00 00 00 	mov    eax,DWORD PTR [esp+0x90]
   4d4ca:	8b 00                	mov    eax,DWORD PTR [eax]
   4d4cc:	8b 94 24 e4 00 00 00 	mov    edx,DWORD PTR [esp+0xe4]
   4d4d3:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
   4d4d6:	8b 84 24 90 00 00 00 	mov    eax,DWORD PTR [esp+0x90]
   4d4dd:	8b 00                	mov    eax,DWORD PTR [eax]
   4d4df:	89 78 0c             	mov    DWORD PTR [eax+0xc],edi
   4d4e2:	81 c4 f0 00 00 00    	add    esp,0xf0
   4d4e8:	5d                   	pop    ebp
   4d4e9:	5f                   	pop    edi
   4d4ea:	5e                   	pop    esi
   4d4eb:	c2 04 00             	ret    0x4
move_bitmap_branch_71:
   4d4ee:	d9 46 1c             	fld    DWORD PTR [esi+0x1c]
   4d4f1:	d8 5f 1c             	fcomp  DWORD PTR [edi+0x1c]
   4d4f4:	df e0                	fnstsw ax
   4d4f6:	9e                   	sahf   
   4d4f7:	72 0d                	jb     move_bitmap_branch_72
   4d4f9:	89 f5                	mov    ebp,esi
   4d4fb:	8b 76 48             	mov    esi,DWORD PTR [esi+0x48]
   4d4fe:	85 f6                	test   esi,esi
   4d500:	0f 85 3b fd ff ff    	jne    move_bitmap_branch_56
move_bitmap_branch_72:
   4d506:	85 ed                	test   ebp,ebp
   4d508:	74 0b                	je     move_bitmap_branch_73
   4d50a:	89 7d 48             	mov    DWORD PTR [ebp+0x48],edi
   4d50d:	89 77 48             	mov    DWORD PTR [edi+0x48],esi
   4d510:	89 6f 44             	mov    DWORD PTR [edi+0x44],ebp
   4d513:	eb 11                	jmp    move_bitmap_branch_74
move_bitmap_branch_73:
   4d515:	a1 88 5a 02 00       	mov    eax,ds:@obj3:the_list                                        ; fixup: num: 11868, src obj: 1, src ofs: 0x4d516, dst obj: 3, dst ofs: 0x25a88
   4d51a:	89 47 48             	mov    DWORD PTR [edi+0x48],eax
   4d51d:	89 6f 44             	mov    DWORD PTR [edi+0x44],ebp
   4d520:	89 3d 88 5a 02 00    	mov    DWORD PTR ds:@obj3:the_list,edi                              ; fixup: num: 11867, src obj: 1, src ofs: 0x4d522, dst obj: 3, dst ofs: 0x25a88
move_bitmap_branch_74:
   4d526:	8b 57 48             	mov    edx,DWORD PTR [edi+0x48]
   4d529:	85 d2                	test   edx,edx
   4d52b:	74 03                	je     move_bitmap_branch_75
   4d52d:	89 7a 44             	mov    DWORD PTR [edx+0x44],edi
move_bitmap_branch_75:
   4d530:	3b 2d 8c 5a 02 00    	cmp    ebp,DWORD PTR ds:@obj3:the_list_variable_1                   ; fixup: num: 11866, src obj: 1, src ofs: 0x4d532, dst obj: 3, dst ofs: 0x25a8c
   4d536:	75 06                	jne    move_bitmap_branch_76
   4d538:	89 3d 8c 5a 02 00    	mov    DWORD PTR ds:@obj3:the_list_variable_1,edi                   ; fixup: num: 11865, src obj: 1, src ofs: 0x4d53a, dst obj: 3, dst ofs: 0x25a8c
move_bitmap_branch_76:
   4d53e:	83 7f 38 15          	cmp    DWORD PTR [edi+0x38],0x15
   4d542:	0f 8d 78 02 00 00    	jge    move_bitmap_branch_92
   4d548:	68 df 01 00 00       	push   0x1df
   4d54d:	8b 47 3c             	mov    eax,DWORD PTR [edi+0x3c]
   4d550:	8b 77 24             	mov    esi,DWORD PTR [edi+0x24]
   4d553:	8b 57 40             	mov    edx,DWORD PTR [edi+0x40]
   4d556:	8b 6f 28             	mov    ebp,DWORD PTR [edi+0x28]
   4d559:	8b 4f 30             	mov    ecx,DWORD PTR [edi+0x30]
   4d55c:	8b 5f 2c             	mov    ebx,DWORD PTR [edi+0x2c]
   4d55f:	01 f0                	add    eax,esi
   4d561:	68 7f 02 00 00       	push   0x27f
   4d566:	01 c3                	add    ebx,eax
   4d568:	01 ea                	add    edx,ebp
   4d56a:	89 5c 24 74          	mov    DWORD PTR [esp+0x74],ebx
   4d56e:	bb 84 5a 02 00       	mov    ebx,@obj3:the_screen                                         ; fixup: num: 11870, src obj: 1, src ofs: 0x4d56f, dst obj: 3, dst ofs: 0x25a84
   4d573:	8b 35 84 5a 02 00    	mov    esi,DWORD PTR ds:@obj3:the_screen                            ; fixup: num: 11869, src obj: 1, src ofs: 0x4d575, dst obj: 3, dst ofs: 0x25a84
   4d579:	89 9c 24 90 00 00 00 	mov    DWORD PTR [esp+0x90],ebx
   4d580:	8b 5c 24 74          	mov    ebx,DWORD PTR [esp+0x74]
   4d584:	89 c5                	mov    ebp,eax
   4d586:	89 9c 24 f0 00 00 00 	mov    DWORD PTR [esp+0xf0],ebx
   4d58d:	31 db                	xor    ebx,ebx
   4d58f:	89 94 24 e8 00 00 00 	mov    DWORD PTR [esp+0xe8],edx
   4d596:	53                   	push   ebx
   4d597:	01 d1                	add    ecx,edx
   4d599:	89 9c 24 e0 00 00 00 	mov    DWORD PTR [esp+0xe0],ebx
   4d5a0:	53                   	push   ebx
   4d5a1:	8b 5c 24 7c          	mov    ebx,DWORD PTR [esp+0x7c]
   4d5a5:	89 cf                	mov    edi,ecx
   4d5a7:	e8 24 0b 00 00       	call   overlaps
   4d5ac:	84 c0                	test   al,al
   4d5ae:	0f 84 0c 02 00 00    	je     move_bitmap_branch_92
   4d5b4:	81 7c 24 6c 7f 02 00 00 	cmp    DWORD PTR [esp+0x6c],0x27f
   4d5bc:	7e 0b                	jle    move_bitmap_branch_77
   4d5be:	c7 84 24 e8 00 00 00 7f 02 00 00 	mov    DWORD PTR [esp+0xe8],0x27f
move_bitmap_branch_77:
   4d5c9:	85 ed                	test   ebp,ebp
   4d5cb:	7d 02                	jge    move_bitmap_branch_78
   4d5cd:	31 ed                	xor    ebp,ebp
move_bitmap_branch_78:
   4d5cf:	81 ff df 01 00 00    	cmp    edi,0x1df
   4d5d5:	7e 05                	jle    move_bitmap_branch_79
   4d5d7:	bf df 01 00 00       	mov    edi,0x1df
move_bitmap_branch_79:
   4d5dc:	83 bc 24 e0 00 00 00 00 	cmp    DWORD PTR [esp+0xe0],0x0
   4d5e4:	7d 02                	jge    move_bitmap_branch_80
   4d5e6:	31 ff                	xor    edi,edi
move_bitmap_branch_80:
   4d5e8:	85 f6                	test   esi,esi
   4d5ea:	0f 84 58 01 00 00    	je     move_bitmap_branch_90
   4d5f0:	8b 4e 0c             	mov    ecx,DWORD PTR [esi+0xc]
   4d5f3:	51                   	push   ecx
   4d5f4:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
   4d5f7:	50                   	push   eax
   4d5f8:	8b 56 04             	mov    edx,DWORD PTR [esi+0x4]
   4d5fb:	8b 1e                	mov    ebx,DWORD PTR [esi]
   4d5fd:	52                   	push   edx
   4d5fe:	89 f9                	mov    ecx,edi
   4d600:	89 e8                	mov    eax,ebp
   4d602:	53                   	push   ebx
   4d603:	8b 94 24 f0 00 00 00 	mov    edx,DWORD PTR [esp+0xf0]
   4d60a:	8b 9c 24 f8 00 00 00 	mov    ebx,DWORD PTR [esp+0xf8]
   4d611:	e8 ba 0a 00 00       	call   overlaps
   4d616:	84 c0                	test   al,al
   4d618:	0f 84 1b 01 00 00    	je     move_bitmap_branch_89
   4d61e:	8b 0e                	mov    ecx,DWORD PTR [esi]
   4d620:	39 cd                	cmp    ebp,ecx
   4d622:	7d 04                	jge    move_bitmap_branch_81
   4d624:	89 e8                	mov    eax,ebp
   4d626:	eb 02                	jmp    move_bitmap_branch_82
move_bitmap_branch_81:
   4d628:	89 c8                	mov    eax,ecx
move_bitmap_branch_82:
   4d62a:	89 84 24 9c 00 00 00 	mov    DWORD PTR [esp+0x9c],eax
   4d631:	8b 56 04             	mov    edx,DWORD PTR [esi+0x4]
   4d634:	8b 84 24 e0 00 00 00 	mov    eax,DWORD PTR [esp+0xe0]
   4d63b:	39 d0                	cmp    eax,edx
   4d63d:	7c 02                	jl     move_bitmap_branch_83
   4d63f:	89 d0                	mov    eax,edx
move_bitmap_branch_83:
   4d641:	89 84 24 b0 00 00 00 	mov    DWORD PTR [esp+0xb0],eax
   4d648:	8b 5e 08             	mov    ebx,DWORD PTR [esi+0x8]
   4d64b:	8b 84 24 e8 00 00 00 	mov    eax,DWORD PTR [esp+0xe8]
   4d652:	39 d8                	cmp    eax,ebx
   4d654:	7f 02                	jg     move_bitmap_branch_84
   4d656:	89 d8                	mov    eax,ebx
move_bitmap_branch_84:
   4d658:	8b 4e 0c             	mov    ecx,DWORD PTR [esi+0xc]
   4d65b:	89 84 24 b8 00 00 00 	mov    DWORD PTR [esp+0xb8],eax
   4d662:	39 cf                	cmp    edi,ecx
   4d664:	7e 09                	jle    move_bitmap_branch_85
   4d666:	89 bc 24 c8 00 00 00 	mov    DWORD PTR [esp+0xc8],edi
   4d66d:	eb 07                	jmp    move_bitmap_branch_86
move_bitmap_branch_85:
   4d66f:	89 8c 24 c8 00 00 00 	mov    DWORD PTR [esp+0xc8],ecx
move_bitmap_branch_86:
   4d676:	8b 9c 24 e8 00 00 00 	mov    ebx,DWORD PTR [esp+0xe8]
   4d67d:	8b 94 24 e0 00 00 00 	mov    edx,DWORD PTR [esp+0xe0]
   4d684:	89 f9                	mov    ecx,edi
   4d686:	89 e8                	mov    eax,ebp
   4d688:	e8 33 0a 00 00       	call   area
   4d68d:	89 44 24 44          	mov    DWORD PTR [esp+0x44],eax
   4d691:	8b 4e 0c             	mov    ecx,DWORD PTR [esi+0xc]
   4d694:	8b 5e 08             	mov    ebx,DWORD PTR [esi+0x8]
   4d697:	8b 56 04             	mov    edx,DWORD PTR [esi+0x4]
   4d69a:	8b 06                	mov    eax,DWORD PTR [esi]
   4d69c:	e8 1f 0a 00 00       	call   area
   4d6a1:	8b 54 24 44          	mov    edx,DWORD PTR [esp+0x44]
   4d6a5:	8b 8c 24 c8 00 00 00 	mov    ecx,DWORD PTR [esp+0xc8]
   4d6ac:	8b 9c 24 b8 00 00 00 	mov    ebx,DWORD PTR [esp+0xb8]
   4d6b3:	01 c2                	add    edx,eax
   4d6b5:	8b 84 24 9c 00 00 00 	mov    eax,DWORD PTR [esp+0x9c]
   4d6bc:	89 54 24 44          	mov    DWORD PTR [esp+0x44],edx
   4d6c0:	8b 94 24 b0 00 00 00 	mov    edx,DWORD PTR [esp+0xb0]
   4d6c7:	e8 f4 09 00 00       	call   area
   4d6cc:	3b 44 24 44          	cmp    eax,DWORD PTR [esp+0x44]
   4d6d0:	7f 67                	jg     move_bitmap_branch_89
   4d6d2:	8b ac 24 9c 00 00 00 	mov    ebp,DWORD PTR [esp+0x9c]
   4d6d9:	8b 84 24 b0 00 00 00 	mov    eax,DWORD PTR [esp+0xb0]
   4d6e0:	8b bc 24 c8 00 00 00 	mov    edi,DWORD PTR [esp+0xc8]
   4d6e7:	89 84 24 e0 00 00 00 	mov    DWORD PTR [esp+0xe0],eax
   4d6ee:	8b 84 24 b8 00 00 00 	mov    eax,DWORD PTR [esp+0xb8]
   4d6f5:	8b 9c 24 d4 00 00 00 	mov    ebx,DWORD PTR [esp+0xd4]
   4d6fc:	89 84 24 e8 00 00 00 	mov    DWORD PTR [esp+0xe8],eax
   4d703:	85 db                	test   ebx,ebx
   4d705:	74 08                	je     move_bitmap_branch_87
   4d707:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
   4d70a:	89 43 10             	mov    DWORD PTR [ebx+0x10],eax
   4d70d:	eb 0c                	jmp    move_bitmap_branch_88
move_bitmap_branch_87:
   4d70f:	8b 94 24 88 00 00 00 	mov    edx,DWORD PTR [esp+0x88]
   4d716:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
   4d719:	89 02                	mov    DWORD PTR [edx],eax
move_bitmap_branch_88:
   4d71b:	89 f0                	mov    eax,esi
   4d71d:	31 c9                	xor    ecx,ecx
   4d71f:	8b b4 24 88 00 00 00 	mov    esi,DWORD PTR [esp+0x88]
   4d726:	e8 4d 49 02 00       	call   W?$dln(pnv)v
   4d72b:	89 8c 24 d4 00 00 00 	mov    DWORD PTR [esp+0xd4],ecx
   4d732:	8b 36                	mov    esi,DWORD PTR [esi]
   4d734:	e9 af fe ff ff       	jmp    move_bitmap_branch_80
move_bitmap_branch_89:
   4d739:	89 b4 24 d4 00 00 00 	mov    DWORD PTR [esp+0xd4],esi
   4d740:	8b 76 10             	mov    esi,DWORD PTR [esi+0x10]
   4d743:	e9 a0 fe ff ff       	jmp    move_bitmap_branch_80
move_bitmap_branch_90:
   4d748:	8b 8c 24 88 00 00 00 	mov    ecx,DWORD PTR [esp+0x88]
   4d74f:	b8 14 00 00 00       	mov    eax,0x14
   4d754:	8b 94 24 88 00 00 00 	mov    edx,DWORD PTR [esp+0x88]
   4d75b:	8b 09                	mov    ecx,DWORD PTR [ecx]
   4d75d:	e8 b6 47 02 00       	call   W?$nwn(ui)pnv
   4d762:	89 02                	mov    DWORD PTR [edx],eax
   4d764:	85 c0                	test   eax,eax
   4d766:	75 0f                	jne    move_bitmap_branch_91
   4d768:	bb 8f bc 00 00       	mov    ebx,@obj3:screen_cpp_variable_5                              ; fixup: num: 11871, src obj: 1, src ofs: 0x4d769, dst obj: 3, dst ofs: 0xbc8f
   4d76d:	ba f4 01 00 00       	mov    edx,0x1f4
   4d772:	e8 b9 a8 fe ff       	call   _error_report
move_bitmap_branch_91:
   4d777:	8b 84 24 88 00 00 00 	mov    eax,DWORD PTR [esp+0x88]
   4d77e:	8b 00                	mov    eax,DWORD PTR [eax]
   4d780:	89 48 10             	mov    DWORD PTR [eax+0x10],ecx
   4d783:	8b 84 24 88 00 00 00 	mov    eax,DWORD PTR [esp+0x88]
   4d78a:	8b 00                	mov    eax,DWORD PTR [eax]
   4d78c:	89 28                	mov    DWORD PTR [eax],ebp
   4d78e:	8b 84 24 88 00 00 00 	mov    eax,DWORD PTR [esp+0x88]
   4d795:	8b 00                	mov    eax,DWORD PTR [eax]
   4d797:	8b 94 24 e8 00 00 00 	mov    edx,DWORD PTR [esp+0xe8]
   4d79e:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
   4d7a1:	8b 84 24 88 00 00 00 	mov    eax,DWORD PTR [esp+0x88]
   4d7a8:	8b 00                	mov    eax,DWORD PTR [eax]
   4d7aa:	8b 94 24 e0 00 00 00 	mov    edx,DWORD PTR [esp+0xe0]
   4d7b1:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
   4d7b4:	8b 84 24 88 00 00 00 	mov    eax,DWORD PTR [esp+0x88]
   4d7bb:	8b 00                	mov    eax,DWORD PTR [eax]
   4d7bd:	89 78 0c             	mov    DWORD PTR [eax+0xc],edi
move_bitmap_branch_92:
   4d7c0:	81 c4 f0 00 00 00    	add    esp,0xf0
   4d7c6:	5d                   	pop    ebp
   4d7c7:	5f                   	pop    edi
   4d7c8:	5e                   	pop    esi
   4d7c9:	c2 04 00             	ret    0x4
   4d7cc:	8d 44 20 00          	lea    eax,[eax+eiz*1+0x0]

;-------------------------------------------------
;  Function 'refresh_bitmap'                     -
;-------------------------------------------------
refresh_bitmap:
   4d7d0:	53                   	push   ebx
   4d7d1:	51                   	push   ecx
   4d7d2:	56                   	push   esi
   4d7d3:	57                   	push   edi
   4d7d4:	55                   	push   ebp
   4d7d5:	83 ec 54             	sub    esp,0x54
   4d7d8:	89 44 24 30          	mov    DWORD PTR [esp+0x30],eax
   4d7dc:	83 7a 38 15          	cmp    DWORD PTR [edx+0x38],0x15
   4d7e0:	0f 8d 64 02 00 00    	jge    refresh_bitmap_branch_26
   4d7e6:	8b 42 3c             	mov    eax,DWORD PTR [edx+0x3c]
   4d7e9:	8b 4a 24             	mov    ecx,DWORD PTR [edx+0x24]
   4d7ec:	8b 5a 40             	mov    ebx,DWORD PTR [edx+0x40]
   4d7ef:	8b 72 28             	mov    esi,DWORD PTR [edx+0x28]
   4d7f2:	8b 7a 2c             	mov    edi,DWORD PTR [edx+0x2c]
   4d7f5:	01 c8                	add    eax,ecx
   4d7f7:	01 f3                	add    ebx,esi
   4d7f9:	89 44 24 34          	mov    DWORD PTR [esp+0x34],eax
   4d7fd:	8b 42 30             	mov    eax,DWORD PTR [edx+0x30]
   4d800:	89 dd                	mov    ebp,ebx
   4d802:	01 d8                	add    eax,ebx
   4d804:	31 d2                	xor    edx,edx
   4d806:	89 44 24 2c          	mov    DWORD PTR [esp+0x2c],eax
   4d80a:	89 54 24 50          	mov    DWORD PTR [esp+0x50],edx
   4d80e:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
   4d812:	8b 4c 24 2c          	mov    ecx,DWORD PTR [esp+0x2c]
   4d816:	01 f8                	add    eax,edi
   4d818:	8b 7c 24 34          	mov    edi,DWORD PTR [esp+0x34]
   4d81c:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
   4d820:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
   4d824:	8b 74 24 18          	mov    esi,DWORD PTR [esp+0x18]
   4d828:	89 44 24 40          	mov    DWORD PTR [esp+0x40],eax
   4d82c:	8b 00                	mov    eax,DWORD PTR [eax]
   4d82e:	85 f6                	test   esi,esi
   4d830:	7d 04                	jge    refresh_bitmap_branch_1
   4d832:	30 d2                	xor    dl,dl
   4d834:	eb 22                	jmp    refresh_bitmap_branch_5
refresh_bitmap_branch_1:
   4d836:	81 ff 7f 02 00 00    	cmp    edi,0x27f
   4d83c:	7e 04                	jle    refresh_bitmap_branch_2
   4d83e:	30 d2                	xor    dl,dl
   4d840:	eb 16                	jmp    refresh_bitmap_branch_5
refresh_bitmap_branch_2:
   4d842:	85 c9                	test   ecx,ecx
   4d844:	7d 04                	jge    refresh_bitmap_branch_3
   4d846:	30 d2                	xor    dl,dl
   4d848:	eb 0e                	jmp    refresh_bitmap_branch_5
refresh_bitmap_branch_3:
   4d84a:	81 fb df 01 00 00    	cmp    ebx,0x1df
   4d850:	7e 04                	jle    refresh_bitmap_branch_4
   4d852:	30 d2                	xor    dl,dl
   4d854:	eb 02                	jmp    refresh_bitmap_branch_5
refresh_bitmap_branch_4:
   4d856:	b2 01                	mov    dl,0x1
refresh_bitmap_branch_5:
   4d858:	84 d2                	test   dl,dl
   4d85a:	0f 84 ea 01 00 00    	je     refresh_bitmap_branch_26
   4d860:	81 fe 7f 02 00 00    	cmp    esi,0x27f
   4d866:	7e 05                	jle    refresh_bitmap_branch_6
   4d868:	be 7f 02 00 00       	mov    esi,0x27f
refresh_bitmap_branch_6:
   4d86d:	85 ff                	test   edi,edi
   4d86f:	7d 02                	jge    refresh_bitmap_branch_7
   4d871:	31 ff                	xor    edi,edi
refresh_bitmap_branch_7:
   4d873:	81 f9 df 01 00 00    	cmp    ecx,0x1df
   4d879:	7e 05                	jle    refresh_bitmap_branch_8
   4d87b:	b9 df 01 00 00       	mov    ecx,0x1df
refresh_bitmap_branch_8:
   4d880:	85 ed                	test   ebp,ebp
   4d882:	7d 02                	jge    refresh_bitmap_branch_9
   4d884:	31 c9                	xor    ecx,ecx
refresh_bitmap_branch_9:
   4d886:	85 c0                	test   eax,eax
   4d888:	0f 84 5f 01 00 00    	je     refresh_bitmap_branch_24
   4d88e:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
   4d891:	89 54 24 38          	mov    DWORD PTR [esp+0x38],edx
   4d895:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
   4d898:	8b 18                	mov    ebx,DWORD PTR [eax]
   4d89a:	89 54 24 3c          	mov    DWORD PTR [esp+0x3c],edx
   4d89e:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
   4d8a1:	39 de                	cmp    esi,ebx
   4d8a3:	7d 04                	jge    refresh_bitmap_branch_10
   4d8a5:	30 d2                	xor    dl,dl
   4d8a7:	eb 1e                	jmp    refresh_bitmap_branch_14
refresh_bitmap_branch_10:
   4d8a9:	3b 7c 24 3c          	cmp    edi,DWORD PTR [esp+0x3c]
   4d8ad:	7e 04                	jle    refresh_bitmap_branch_11
   4d8af:	30 d2                	xor    dl,dl
   4d8b1:	eb 14                	jmp    refresh_bitmap_branch_14
refresh_bitmap_branch_11:
   4d8b3:	3b 4c 24 38          	cmp    ecx,DWORD PTR [esp+0x38]
   4d8b7:	7d 04                	jge    refresh_bitmap_branch_12
   4d8b9:	30 d2                	xor    dl,dl
   4d8bb:	eb 0a                	jmp    refresh_bitmap_branch_14
refresh_bitmap_branch_12:
   4d8bd:	39 d5                	cmp    ebp,edx
   4d8bf:	7e 04                	jle    refresh_bitmap_branch_13
   4d8c1:	30 d2                	xor    dl,dl
   4d8c3:	eb 02                	jmp    refresh_bitmap_branch_14
refresh_bitmap_branch_13:
   4d8c5:	b2 01                	mov    dl,0x1
refresh_bitmap_branch_14:
   4d8c7:	84 d2                	test   dl,dl
   4d8c9:	0f 84 12 01 00 00    	je     refresh_bitmap_branch_23
   4d8cf:	8b 10                	mov    edx,DWORD PTR [eax]
   4d8d1:	39 d7                	cmp    edi,edx
   4d8d3:	7d 02                	jge    refresh_bitmap_branch_15
   4d8d5:	89 fa                	mov    edx,edi
refresh_bitmap_branch_15:
   4d8d7:	8b 58 04             	mov    ebx,DWORD PTR [eax+0x4]
   4d8da:	89 54 24 44          	mov    DWORD PTR [esp+0x44],edx
   4d8de:	39 dd                	cmp    ebp,ebx
   4d8e0:	7d 04                	jge    refresh_bitmap_branch_16
   4d8e2:	89 ea                	mov    edx,ebp
   4d8e4:	eb 02                	jmp    refresh_bitmap_branch_17
refresh_bitmap_branch_16:
   4d8e6:	89 da                	mov    edx,ebx
refresh_bitmap_branch_17:
   4d8e8:	89 54 24 4c          	mov    DWORD PTR [esp+0x4c],edx
   4d8ec:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
   4d8ef:	39 d6                	cmp    esi,edx
   4d8f1:	7e 02                	jle    refresh_bitmap_branch_18
   4d8f3:	89 f2                	mov    edx,esi
refresh_bitmap_branch_18:
   4d8f5:	8b 58 0c             	mov    ebx,DWORD PTR [eax+0xc]
   4d8f8:	89 54 24 48          	mov    DWORD PTR [esp+0x48],edx
   4d8fc:	39 d9                	cmp    ecx,ebx
   4d8fe:	7e 04                	jle    refresh_bitmap_branch_19
   4d900:	89 ca                	mov    edx,ecx
   4d902:	eb 02                	jmp    refresh_bitmap_branch_20
refresh_bitmap_branch_19:
   4d904:	89 da                	mov    edx,ebx
refresh_bitmap_branch_20:
   4d906:	89 f3                	mov    ebx,esi
   4d908:	29 fb                	sub    ebx,edi
   4d90a:	89 5c 24 20          	mov    DWORD PTR [esp+0x20],ebx
   4d90e:	89 cb                	mov    ebx,ecx
   4d910:	29 eb                	sub    ebx,ebp
   4d912:	43                   	inc    ebx
   4d913:	89 5c 24 18          	mov    DWORD PTR [esp+0x18],ebx
   4d917:	8b 5c 24 20          	mov    ebx,DWORD PTR [esp+0x20]
   4d91b:	43                   	inc    ebx
   4d91c:	0f af 5c 24 18       	imul   ebx,DWORD PTR [esp+0x18]
   4d921:	89 1c 24             	mov    DWORD PTR [esp],ebx
   4d924:	8b 18                	mov    ebx,DWORD PTR [eax]
   4d926:	89 5c 24 04          	mov    DWORD PTR [esp+0x4],ebx
   4d92a:	8b 58 04             	mov    ebx,DWORD PTR [eax+0x4]
   4d92d:	89 5c 24 08          	mov    DWORD PTR [esp+0x8],ebx
   4d931:	8b 58 08             	mov    ebx,DWORD PTR [eax+0x8]
   4d934:	89 5c 24 0c          	mov    DWORD PTR [esp+0xc],ebx
   4d938:	8b 58 0c             	mov    ebx,DWORD PTR [eax+0xc]
   4d93b:	89 5c 24 10          	mov    DWORD PTR [esp+0x10],ebx
   4d93f:	8b 5c 24 0c          	mov    ebx,DWORD PTR [esp+0xc]
   4d943:	2b 5c 24 04          	sub    ebx,DWORD PTR [esp+0x4]
   4d947:	89 5c 24 20          	mov    DWORD PTR [esp+0x20],ebx
   4d94b:	8b 5c 24 10          	mov    ebx,DWORD PTR [esp+0x10]
   4d94f:	2b 5c 24 08          	sub    ebx,DWORD PTR [esp+0x8]
   4d953:	43                   	inc    ebx
   4d954:	89 5c 24 18          	mov    DWORD PTR [esp+0x18],ebx
   4d958:	8b 5c 24 20          	mov    ebx,DWORD PTR [esp+0x20]
   4d95c:	43                   	inc    ebx
   4d95d:	0f af 5c 24 18       	imul   ebx,DWORD PTR [esp+0x18]
   4d962:	89 5c 24 14          	mov    DWORD PTR [esp+0x14],ebx
   4d966:	8b 1c 24             	mov    ebx,DWORD PTR [esp]
   4d969:	03 5c 24 14          	add    ebx,DWORD PTR [esp+0x14]
   4d96d:	89 5c 24 18          	mov    DWORD PTR [esp+0x18],ebx
   4d971:	8b 5c 24 48          	mov    ebx,DWORD PTR [esp+0x48]
   4d975:	2b 5c 24 44          	sub    ebx,DWORD PTR [esp+0x44]
   4d979:	89 5c 24 20          	mov    DWORD PTR [esp+0x20],ebx
   4d97d:	89 d3                	mov    ebx,edx
   4d97f:	2b 5c 24 4c          	sub    ebx,DWORD PTR [esp+0x4c]
   4d983:	43                   	inc    ebx
   4d984:	89 5c 24 24          	mov    DWORD PTR [esp+0x24],ebx
   4d988:	8b 5c 24 20          	mov    ebx,DWORD PTR [esp+0x20]
   4d98c:	43                   	inc    ebx
   4d98d:	0f af 5c 24 24       	imul   ebx,DWORD PTR [esp+0x24]
   4d992:	89 5c 24 1c          	mov    DWORD PTR [esp+0x1c],ebx
   4d996:	8b 5c 24 18          	mov    ebx,DWORD PTR [esp+0x18]
   4d99a:	3b 5c 24 1c          	cmp    ebx,DWORD PTR [esp+0x1c]
   4d99e:	7c 41                	jl     refresh_bitmap_branch_23
   4d9a0:	8b 7c 24 44          	mov    edi,DWORD PTR [esp+0x44]
   4d9a4:	8b 6c 24 4c          	mov    ebp,DWORD PTR [esp+0x4c]
   4d9a8:	89 d1                	mov    ecx,edx
   4d9aa:	8b 54 24 50          	mov    edx,DWORD PTR [esp+0x50]
   4d9ae:	8b 74 24 48          	mov    esi,DWORD PTR [esp+0x48]
   4d9b2:	85 d2                	test   edx,edx
   4d9b4:	74 0c                	je     refresh_bitmap_branch_21
   4d9b6:	8b 5c 24 50          	mov    ebx,DWORD PTR [esp+0x50]
   4d9ba:	8b 50 10             	mov    edx,DWORD PTR [eax+0x10]
   4d9bd:	89 53 10             	mov    DWORD PTR [ebx+0x10],edx
   4d9c0:	eb 09                	jmp    refresh_bitmap_branch_22
refresh_bitmap_branch_21:
   4d9c2:	8b 5c 24 40          	mov    ebx,DWORD PTR [esp+0x40]
   4d9c6:	8b 50 10             	mov    edx,DWORD PTR [eax+0x10]
   4d9c9:	89 13                	mov    DWORD PTR [ebx],edx
refresh_bitmap_branch_22:
   4d9cb:	e8 a8 46 02 00       	call   W?$dln(pnv)v
   4d9d0:	31 db                	xor    ebx,ebx
   4d9d2:	8b 44 24 40          	mov    eax,DWORD PTR [esp+0x40]
   4d9d6:	89 5c 24 50          	mov    DWORD PTR [esp+0x50],ebx
   4d9da:	8b 00                	mov    eax,DWORD PTR [eax]
   4d9dc:	e9 a5 fe ff ff       	jmp    refresh_bitmap_branch_9
refresh_bitmap_branch_23:
   4d9e1:	89 44 24 50          	mov    DWORD PTR [esp+0x50],eax
   4d9e5:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
   4d9e8:	e9 99 fe ff ff       	jmp    refresh_bitmap_branch_9
refresh_bitmap_branch_24:
   4d9ed:	8b 44 24 40          	mov    eax,DWORD PTR [esp+0x40]
   4d9f1:	8b 00                	mov    eax,DWORD PTR [eax]
   4d9f3:	89 44 24 28          	mov    DWORD PTR [esp+0x28],eax
   4d9f7:	b8 14 00 00 00       	mov    eax,0x14
   4d9fc:	8b 54 24 40          	mov    edx,DWORD PTR [esp+0x40]
   4da00:	e8 13 45 02 00       	call   W?$nwn(ui)pnv
   4da05:	89 02                	mov    DWORD PTR [edx],eax
   4da07:	85 c0                	test   eax,eax
   4da09:	75 0f                	jne    refresh_bitmap_branch_25
   4da0b:	bb 8f bc 00 00       	mov    ebx,@obj3:screen_cpp_variable_5                              ; fixup: num: 11872, src obj: 1, src ofs: 0x4da0c, dst obj: 3, dst ofs: 0xbc8f
   4da10:	ba f4 01 00 00       	mov    edx,0x1f4
   4da15:	e8 16 a6 fe ff       	call   _error_report
refresh_bitmap_branch_25:
   4da1a:	8b 44 24 40          	mov    eax,DWORD PTR [esp+0x40]
   4da1e:	8b 00                	mov    eax,DWORD PTR [eax]
   4da20:	8b 54 24 28          	mov    edx,DWORD PTR [esp+0x28]
   4da24:	89 50 10             	mov    DWORD PTR [eax+0x10],edx
   4da27:	8b 44 24 40          	mov    eax,DWORD PTR [esp+0x40]
   4da2b:	8b 00                	mov    eax,DWORD PTR [eax]
   4da2d:	89 38                	mov    DWORD PTR [eax],edi
   4da2f:	8b 44 24 40          	mov    eax,DWORD PTR [esp+0x40]
   4da33:	8b 00                	mov    eax,DWORD PTR [eax]
   4da35:	89 70 08             	mov    DWORD PTR [eax+0x8],esi
   4da38:	8b 44 24 40          	mov    eax,DWORD PTR [esp+0x40]
   4da3c:	8b 00                	mov    eax,DWORD PTR [eax]
   4da3e:	89 68 04             	mov    DWORD PTR [eax+0x4],ebp
   4da41:	8b 44 24 40          	mov    eax,DWORD PTR [esp+0x40]
   4da45:	8b 00                	mov    eax,DWORD PTR [eax]
   4da47:	89 48 0c             	mov    DWORD PTR [eax+0xc],ecx
refresh_bitmap_branch_26:
   4da4a:	83 c4 54             	add    esp,0x54
   4da4d:	5d                   	pop    ebp
   4da4e:	5f                   	pop    edi
   4da4f:	5e                   	pop    esi
   4da50:	59                   	pop    ecx
   4da51:	5b                   	pop    ebx
   4da52:	c3                   	ret    
   4da53:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   4da59:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
   4da5f:	90                   	nop

;-------------------------------------------------
;  Function 'refresh_area'                       -
;-------------------------------------------------
refresh_area:
   4da60:	56                   	push   esi
   4da61:	57                   	push   edi
   4da62:	55                   	push   ebp
   4da63:	83 ec 48             	sub    esp,0x48
   4da66:	8b 6c 24 58          	mov    ebp,DWORD PTR [esp+0x58]
   4da6a:	89 44 24 34          	mov    DWORD PTR [esp+0x34],eax
   4da6e:	89 d6                	mov    esi,edx
   4da70:	89 df                	mov    edi,ebx
   4da72:	31 d2                	xor    edx,edx
   4da74:	8b 00                	mov    eax,DWORD PTR [eax]
   4da76:	89 54 24 44          	mov    DWORD PTR [esp+0x44],edx
   4da7a:	85 c9                	test   ecx,ecx
   4da7c:	7d 04                	jge    refresh_area_branch_1
   4da7e:	30 d2                	xor    dl,dl
   4da80:	eb 22                	jmp    refresh_area_branch_5
refresh_area_branch_1:
   4da82:	81 fe 7f 02 00 00    	cmp    esi,0x27f
   4da88:	7e 04                	jle    refresh_area_branch_2
   4da8a:	30 d2                	xor    dl,dl
   4da8c:	eb 16                	jmp    refresh_area_branch_5
refresh_area_branch_2:
   4da8e:	85 ed                	test   ebp,ebp
   4da90:	7d 04                	jge    refresh_area_branch_3
   4da92:	30 d2                	xor    dl,dl
   4da94:	eb 0e                	jmp    refresh_area_branch_5
refresh_area_branch_3:
   4da96:	81 fb df 01 00 00    	cmp    ebx,0x1df
   4da9c:	7e 04                	jle    refresh_area_branch_4
   4da9e:	30 d2                	xor    dl,dl
   4daa0:	eb 02                	jmp    refresh_area_branch_5
refresh_area_branch_4:
   4daa2:	b2 01                	mov    dl,0x1
refresh_area_branch_5:
   4daa4:	84 d2                	test   dl,dl
   4daa6:	0f 84 ea 01 00 00    	je     refresh_area_branch_26
   4daac:	81 f9 7f 02 00 00    	cmp    ecx,0x27f
   4dab2:	7e 05                	jle    refresh_area_branch_6
   4dab4:	b9 7f 02 00 00       	mov    ecx,0x27f
refresh_area_branch_6:
   4dab9:	85 f6                	test   esi,esi
   4dabb:	7d 02                	jge    refresh_area_branch_7
   4dabd:	31 f6                	xor    esi,esi
refresh_area_branch_7:
   4dabf:	81 fd df 01 00 00    	cmp    ebp,0x1df
   4dac5:	7e 05                	jle    refresh_area_branch_8
   4dac7:	bd df 01 00 00       	mov    ebp,0x1df
refresh_area_branch_8:
   4dacc:	85 ff                	test   edi,edi
   4dace:	7d 02                	jge    refresh_area_branch_9
   4dad0:	31 ed                	xor    ebp,ebp
refresh_area_branch_9:
   4dad2:	85 c0                	test   eax,eax
   4dad4:	0f 84 5f 01 00 00    	je     refresh_area_branch_24
   4dada:	8b 10                	mov    edx,DWORD PTR [eax]
   4dadc:	89 14 24             	mov    DWORD PTR [esp],edx
   4dadf:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
   4dae2:	8b 58 08             	mov    ebx,DWORD PTR [eax+0x8]
   4dae5:	89 54 24 30          	mov    DWORD PTR [esp+0x30],edx
   4dae9:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
   4daec:	3b 0c 24             	cmp    ecx,DWORD PTR [esp]
   4daef:	7d 04                	jge    refresh_area_branch_10
   4daf1:	30 d2                	xor    dl,dl
   4daf3:	eb 1c                	jmp    refresh_area_branch_14
refresh_area_branch_10:
   4daf5:	39 de                	cmp    esi,ebx
   4daf7:	7e 04                	jle    refresh_area_branch_11
   4daf9:	30 d2                	xor    dl,dl
   4dafb:	eb 14                	jmp    refresh_area_branch_14
refresh_area_branch_11:
   4dafd:	3b 6c 24 30          	cmp    ebp,DWORD PTR [esp+0x30]
   4db01:	7d 04                	jge    refresh_area_branch_12
   4db03:	30 d2                	xor    dl,dl
   4db05:	eb 0a                	jmp    refresh_area_branch_14
refresh_area_branch_12:
   4db07:	39 d7                	cmp    edi,edx
   4db09:	7e 04                	jle    refresh_area_branch_13
   4db0b:	30 d2                	xor    dl,dl
   4db0d:	eb 02                	jmp    refresh_area_branch_14
refresh_area_branch_13:
   4db0f:	b2 01                	mov    dl,0x1
refresh_area_branch_14:
   4db11:	84 d2                	test   dl,dl
   4db13:	0f 84 14 01 00 00    	je     refresh_area_branch_23
   4db19:	8b 10                	mov    edx,DWORD PTR [eax]
   4db1b:	39 d6                	cmp    esi,edx
   4db1d:	7d 02                	jge    refresh_area_branch_15
   4db1f:	89 f2                	mov    edx,esi
refresh_area_branch_15:
   4db21:	8b 58 04             	mov    ebx,DWORD PTR [eax+0x4]
   4db24:	89 54 24 3c          	mov    DWORD PTR [esp+0x3c],edx
   4db28:	39 df                	cmp    edi,ebx
   4db2a:	7d 04                	jge    refresh_area_branch_16
   4db2c:	89 fa                	mov    edx,edi
   4db2e:	eb 02                	jmp    refresh_area_branch_17
refresh_area_branch_16:
   4db30:	89 da                	mov    edx,ebx
refresh_area_branch_17:
   4db32:	89 54 24 40          	mov    DWORD PTR [esp+0x40],edx
   4db36:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
   4db39:	39 d1                	cmp    ecx,edx
   4db3b:	7e 02                	jle    refresh_area_branch_18
   4db3d:	89 ca                	mov    edx,ecx
refresh_area_branch_18:
   4db3f:	8b 58 0c             	mov    ebx,DWORD PTR [eax+0xc]
   4db42:	89 54 24 38          	mov    DWORD PTR [esp+0x38],edx
   4db46:	39 dd                	cmp    ebp,ebx
   4db48:	7e 04                	jle    refresh_area_branch_19
   4db4a:	89 ea                	mov    edx,ebp
   4db4c:	eb 02                	jmp    refresh_area_branch_20
refresh_area_branch_19:
   4db4e:	89 da                	mov    edx,ebx
refresh_area_branch_20:
   4db50:	89 cb                	mov    ebx,ecx
   4db52:	29 f3                	sub    ebx,esi
   4db54:	89 5c 24 24          	mov    DWORD PTR [esp+0x24],ebx
   4db58:	89 eb                	mov    ebx,ebp
   4db5a:	29 fb                	sub    ebx,edi
   4db5c:	43                   	inc    ebx
   4db5d:	89 5c 24 1c          	mov    DWORD PTR [esp+0x1c],ebx
   4db61:	8b 5c 24 24          	mov    ebx,DWORD PTR [esp+0x24]
   4db65:	43                   	inc    ebx
   4db66:	0f af 5c 24 1c       	imul   ebx,DWORD PTR [esp+0x1c]
   4db6b:	89 5c 24 04          	mov    DWORD PTR [esp+0x4],ebx
   4db6f:	8b 18                	mov    ebx,DWORD PTR [eax]
   4db71:	89 5c 24 08          	mov    DWORD PTR [esp+0x8],ebx
   4db75:	8b 58 04             	mov    ebx,DWORD PTR [eax+0x4]
   4db78:	89 5c 24 0c          	mov    DWORD PTR [esp+0xc],ebx
   4db7c:	8b 58 08             	mov    ebx,DWORD PTR [eax+0x8]
   4db7f:	89 5c 24 10          	mov    DWORD PTR [esp+0x10],ebx
   4db83:	8b 58 0c             	mov    ebx,DWORD PTR [eax+0xc]
   4db86:	89 5c 24 14          	mov    DWORD PTR [esp+0x14],ebx
   4db8a:	8b 5c 24 10          	mov    ebx,DWORD PTR [esp+0x10]
   4db8e:	2b 5c 24 08          	sub    ebx,DWORD PTR [esp+0x8]
   4db92:	89 5c 24 24          	mov    DWORD PTR [esp+0x24],ebx
   4db96:	8b 5c 24 14          	mov    ebx,DWORD PTR [esp+0x14]
   4db9a:	2b 5c 24 0c          	sub    ebx,DWORD PTR [esp+0xc]
   4db9e:	43                   	inc    ebx
   4db9f:	89 5c 24 1c          	mov    DWORD PTR [esp+0x1c],ebx
   4dba3:	8b 5c 24 24          	mov    ebx,DWORD PTR [esp+0x24]
   4dba7:	43                   	inc    ebx
   4dba8:	0f af 5c 24 1c       	imul   ebx,DWORD PTR [esp+0x1c]
   4dbad:	89 5c 24 18          	mov    DWORD PTR [esp+0x18],ebx
   4dbb1:	8b 5c 24 04          	mov    ebx,DWORD PTR [esp+0x4]
   4dbb5:	03 5c 24 18          	add    ebx,DWORD PTR [esp+0x18]
   4dbb9:	89 5c 24 1c          	mov    DWORD PTR [esp+0x1c],ebx
   4dbbd:	8b 5c 24 38          	mov    ebx,DWORD PTR [esp+0x38]
   4dbc1:	2b 5c 24 3c          	sub    ebx,DWORD PTR [esp+0x3c]
   4dbc5:	89 5c 24 24          	mov    DWORD PTR [esp+0x24],ebx
   4dbc9:	89 d3                	mov    ebx,edx
   4dbcb:	2b 5c 24 40          	sub    ebx,DWORD PTR [esp+0x40]
   4dbcf:	43                   	inc    ebx
   4dbd0:	89 5c 24 28          	mov    DWORD PTR [esp+0x28],ebx
   4dbd4:	8b 5c 24 24          	mov    ebx,DWORD PTR [esp+0x24]
   4dbd8:	43                   	inc    ebx
   4dbd9:	0f af 5c 24 28       	imul   ebx,DWORD PTR [esp+0x28]
   4dbde:	89 5c 24 20          	mov    DWORD PTR [esp+0x20],ebx
   4dbe2:	8b 5c 24 1c          	mov    ebx,DWORD PTR [esp+0x1c]
   4dbe6:	3b 5c 24 20          	cmp    ebx,DWORD PTR [esp+0x20]
   4dbea:	7c 41                	jl     refresh_area_branch_23
   4dbec:	8b 74 24 3c          	mov    esi,DWORD PTR [esp+0x3c]
   4dbf0:	8b 7c 24 40          	mov    edi,DWORD PTR [esp+0x40]
   4dbf4:	89 d5                	mov    ebp,edx
   4dbf6:	8b 54 24 44          	mov    edx,DWORD PTR [esp+0x44]
   4dbfa:	8b 4c 24 38          	mov    ecx,DWORD PTR [esp+0x38]
   4dbfe:	85 d2                	test   edx,edx
   4dc00:	74 0c                	je     refresh_area_branch_21
   4dc02:	8b 5c 24 44          	mov    ebx,DWORD PTR [esp+0x44]
   4dc06:	8b 50 10             	mov    edx,DWORD PTR [eax+0x10]
   4dc09:	89 53 10             	mov    DWORD PTR [ebx+0x10],edx
   4dc0c:	eb 09                	jmp    refresh_area_branch_22
refresh_area_branch_21:
   4dc0e:	8b 5c 24 34          	mov    ebx,DWORD PTR [esp+0x34]
   4dc12:	8b 50 10             	mov    edx,DWORD PTR [eax+0x10]
   4dc15:	89 13                	mov    DWORD PTR [ebx],edx
refresh_area_branch_22:
   4dc17:	e8 5c 44 02 00       	call   W?$dln(pnv)v
   4dc1c:	31 db                	xor    ebx,ebx
   4dc1e:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
   4dc22:	89 5c 24 44          	mov    DWORD PTR [esp+0x44],ebx
   4dc26:	8b 00                	mov    eax,DWORD PTR [eax]
   4dc28:	e9 a5 fe ff ff       	jmp    refresh_area_branch_9
refresh_area_branch_23:
   4dc2d:	89 44 24 44          	mov    DWORD PTR [esp+0x44],eax
   4dc31:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
   4dc34:	e9 99 fe ff ff       	jmp    refresh_area_branch_9
refresh_area_branch_24:
   4dc39:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
   4dc3d:	8b 00                	mov    eax,DWORD PTR [eax]
   4dc3f:	89 44 24 2c          	mov    DWORD PTR [esp+0x2c],eax
   4dc43:	b8 14 00 00 00       	mov    eax,0x14
   4dc48:	8b 54 24 34          	mov    edx,DWORD PTR [esp+0x34]
   4dc4c:	e8 c7 42 02 00       	call   W?$nwn(ui)pnv
   4dc51:	89 02                	mov    DWORD PTR [edx],eax
   4dc53:	85 c0                	test   eax,eax
   4dc55:	75 0f                	jne    refresh_area_branch_25
   4dc57:	bb 8f bc 00 00       	mov    ebx,@obj3:screen_cpp_variable_5                              ; fixup: num: 11875, src obj: 1, src ofs: 0x4dc58, dst obj: 3, dst ofs: 0xbc8f
   4dc5c:	ba f4 01 00 00       	mov    edx,0x1f4
   4dc61:	e8 ca a3 fe ff       	call   _error_report
refresh_area_branch_25:
   4dc66:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
   4dc6a:	8b 00                	mov    eax,DWORD PTR [eax]
   4dc6c:	8b 54 24 2c          	mov    edx,DWORD PTR [esp+0x2c]
   4dc70:	89 50 10             	mov    DWORD PTR [eax+0x10],edx
   4dc73:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
   4dc77:	8b 00                	mov    eax,DWORD PTR [eax]
   4dc79:	89 30                	mov    DWORD PTR [eax],esi
   4dc7b:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
   4dc7f:	8b 00                	mov    eax,DWORD PTR [eax]
   4dc81:	89 48 08             	mov    DWORD PTR [eax+0x8],ecx
   4dc84:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
   4dc88:	8b 00                	mov    eax,DWORD PTR [eax]
   4dc8a:	89 78 04             	mov    DWORD PTR [eax+0x4],edi
   4dc8d:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
   4dc91:	8b 00                	mov    eax,DWORD PTR [eax]
   4dc93:	89 68 0c             	mov    DWORD PTR [eax+0xc],ebp
refresh_area_branch_26:
   4dc96:	83 c4 48             	add    esp,0x48
   4dc99:	5d                   	pop    ebp
   4dc9a:	5f                   	pop    edi
   4dc9b:	5e                   	pop    esi
   4dc9c:	c2 04 00             	ret    0x4
   4dc9f:	90                   	nop

;-------------------------------------------------
;  Function 'update_mod_84'                      -
;-------------------------------------------------
update_mod_84:
   4dca0:	53                   	push   ebx
   4dca1:	51                   	push   ecx
   4dca2:	52                   	push   edx
   4dca3:	56                   	push   esi
   4dca4:	57                   	push   edi
   4dca5:	55                   	push   ebp
   4dca6:	83 ec 1c             	sub    esp,0x1c
   4dca9:	89 04 24             	mov    DWORD PTR [esp],eax
   4dcac:	e8 51 44 02 00       	call   clock_
   4dcb1:	8b 15 94 60 02 00    	mov    edx,DWORD PTR ds:@obj3:pointer                               ; fixup: num: 11874, src obj: 1, src ofs: 0x4dcb3, dst obj: 3, dst ofs: 0x26094
   4dcb7:	a3 44 7e 01 00       	mov    ds:@obj3:current_time,eax                                    ; fixup: num: 11873, src obj: 1, src ofs: 0x4dcb8, dst obj: 3, dst ofs: 0x17e44
   4dcbc:	31 ed                	xor    ebp,ebp
   4dcbe:	85 d2                	test   edx,edx
   4dcc0:	74 07                	je     update_mod_84_branch_1
   4dcc2:	89 d0                	mov    eax,edx
   4dcc4:	e8 17 bd 01 00       	call   update_mod_90
update_mod_84_branch_1:
   4dcc9:	8b 04 24             	mov    eax,DWORD PTR [esp]
   4dccc:	8b 00                	mov    eax,DWORD PTR [eax]
   4dcce:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
   4dcd2:	85 c0                	test   eax,eax
   4dcd4:	0f 84 61 01 00 00    	je     update_mod_84_branch_13
   4dcda:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
   4dcde:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
   4dce1:	2b 02                	sub    eax,DWORD PTR [edx]
   4dce3:	8b 7a 04             	mov    edi,DWORD PTR [edx+0x4]
   4dce6:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
   4dcea:	8b 42 0c             	mov    eax,DWORD PTR [edx+0xc]
   4dced:	29 f8                	sub    eax,edi
   4dcef:	8b 35 88 5a 02 00    	mov    esi,DWORD PTR ds:@obj3:the_list                              ; fixup: num: 11876, src obj: 1, src ofs: 0x4dcf1, dst obj: 3, dst ofs: 0x25a88
   4dcf5:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
   4dcf9:	85 f6                	test   esi,esi
   4dcfb:	0f 84 c9 00 00 00    	je     update_mod_84_branch_9
update_mod_84_branch_2:
   4dd01:	83 7e 04 00          	cmp    DWORD PTR [esi+0x4],0x0
   4dd05:	0f 84 b4 00 00 00    	je     update_mod_84_branch_8
   4dd0b:	83 7e 38 15          	cmp    DWORD PTR [esi+0x38],0x15
   4dd0f:	0f 8d aa 00 00 00    	jge    update_mod_84_branch_8
   4dd15:	8b 46 40             	mov    eax,DWORD PTR [esi+0x40]
   4dd18:	8b 7e 30             	mov    edi,DWORD PTR [esi+0x30]
   4dd1b:	8b 56 28             	mov    edx,DWORD PTR [esi+0x28]
   4dd1e:	01 f8                	add    eax,edi
   4dd20:	01 c2                	add    edx,eax
   4dd22:	89 54 24 18          	mov    DWORD PTR [esp+0x18],edx
   4dd26:	8b 46 3c             	mov    eax,DWORD PTR [esi+0x3c]
   4dd29:	8b 56 2c             	mov    edx,DWORD PTR [esi+0x2c]
   4dd2c:	8b 7e 24             	mov    edi,DWORD PTR [esi+0x24]
   4dd2f:	01 d0                	add    eax,edx
   4dd31:	8b 56 24             	mov    edx,DWORD PTR [esi+0x24]
   4dd34:	01 c7                	add    edi,eax
   4dd36:	8b 46 3c             	mov    eax,DWORD PTR [esi+0x3c]
   4dd39:	01 d0                	add    eax,edx
   4dd3b:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
   4dd3f:	8b 04 24             	mov    eax,DWORD PTR [esp]
   4dd42:	8b 4e 40             	mov    ecx,DWORD PTR [esi+0x40]
   4dd45:	8b 5e 28             	mov    ebx,DWORD PTR [esi+0x28]
   4dd48:	8b 00                	mov    eax,DWORD PTR [eax]
   4dd4a:	01 d9                	add    ecx,ebx
   4dd4c:	8b 10                	mov    edx,DWORD PTR [eax]
   4dd4e:	8b 58 08             	mov    ebx,DWORD PTR [eax+0x8]
   4dd51:	89 54 24 14          	mov    DWORD PTR [esp+0x14],edx
   4dd55:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
   4dd58:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
   4dd5b:	3b 5c 24 04          	cmp    ebx,DWORD PTR [esp+0x4]
   4dd5f:	7d 04                	jge    update_mod_84_branch_3
   4dd61:	30 c0                	xor    al,al
   4dd63:	eb 1e                	jmp    update_mod_84_branch_7
update_mod_84_branch_3:
   4dd65:	3b 7c 24 14          	cmp    edi,DWORD PTR [esp+0x14]
   4dd69:	7d 04                	jge    update_mod_84_branch_4
   4dd6b:	30 c0                	xor    al,al
   4dd6d:	eb 14                	jmp    update_mod_84_branch_7
update_mod_84_branch_4:
   4dd6f:	39 c8                	cmp    eax,ecx
   4dd71:	7d 04                	jge    update_mod_84_branch_5
   4dd73:	30 c0                	xor    al,al
   4dd75:	eb 0c                	jmp    update_mod_84_branch_7
update_mod_84_branch_5:
   4dd77:	3b 54 24 18          	cmp    edx,DWORD PTR [esp+0x18]
   4dd7b:	7e 04                	jle    update_mod_84_branch_6
   4dd7d:	30 c0                	xor    al,al
   4dd7f:	eb 02                	jmp    update_mod_84_branch_7
update_mod_84_branch_6:
   4dd81:	b0 01                	mov    al,0x1
update_mod_84_branch_7:
   4dd83:	84 c0                	test   al,al
   4dd85:	74 38                	je     update_mod_84_branch_8
   4dd87:	8b 14 24             	mov    edx,DWORD PTR [esp]
   4dd8a:	55                   	push   ebp
   4dd8b:	8b 46 3c             	mov    eax,DWORD PTR [esi+0x3c]
   4dd8e:	8b 7e 24             	mov    edi,DWORD PTR [esi+0x24]
   4dd91:	8b 5e 28             	mov    ebx,DWORD PTR [esi+0x28]
   4dd94:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
   4dd97:	8b 12                	mov    edx,DWORD PTR [edx]
   4dd99:	51                   	push   ecx
   4dd9a:	01 f8                	add    eax,edi
   4dd9c:	8b 3a                	mov    edi,DWORD PTR [edx]
   4dd9e:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
   4dda2:	29 c7                	sub    edi,eax
   4dda4:	8b 46 40             	mov    eax,DWORD PTR [esi+0x40]
   4dda7:	8b 52 04             	mov    edx,DWORD PTR [edx+0x4]
   4ddaa:	01 d8                	add    eax,ebx
   4ddac:	8b 5c 24 14          	mov    ebx,DWORD PTR [esp+0x14]
   4ddb0:	29 c2                	sub    edx,eax
   4ddb2:	89 f8                	mov    eax,edi
   4ddb4:	01 d1                	add    ecx,edx
   4ddb6:	01 fb                	add    ebx,edi
   4ddb8:	e8 c3 55 fc ff       	call   get_transparent_bm_window
   4ddbd:	89 c5                	mov    ebp,eax
update_mod_84_branch_8:
   4ddbf:	8b 76 48             	mov    esi,DWORD PTR [esi+0x48]
   4ddc2:	85 f6                	test   esi,esi
   4ddc4:	0f 85 37 ff ff ff    	jne    update_mod_84_branch_2
update_mod_84_branch_9:
   4ddca:	85 ed                	test   ebp,ebp
   4ddcc:	74 35                	je     update_mod_84_branch_11
   4ddce:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
   4ddd1:	50                   	push   eax
   4ddd2:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
   4ddd6:	8b 4d 04             	mov    ecx,DWORD PTR [ebp+0x4]
   4ddd9:	8b 00                	mov    eax,DWORD PTR [eax]
   4dddb:	8b 5d 00             	mov    ebx,DWORD PTR [ebp+0x0]
   4ddde:	6a 00                	push   0x0
   4dde0:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
   4dde3:	8b 00                	mov    eax,DWORD PTR [eax]
   4dde5:	e8 66 7d fb ff       	call   VESA_blit
   4ddea:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
   4dded:	85 d2                	test   edx,edx
   4ddef:	74 07                	je     update_mod_84_branch_10
   4ddf1:	89 d0                	mov    eax,edx
   4ddf3:	e8 f0 35 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
update_mod_84_branch_10:
   4ddf8:	89 e8                	mov    eax,ebp
   4ddfa:	e8 e9 35 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   4ddff:	31 ed                	xor    ebp,ebp
   4de01:	eb 1d                	jmp    update_mod_84_branch_12
update_mod_84_branch_11:
   4de03:	6a 01                	push   0x1
   4de05:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
   4de09:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
   4de0d:	8b 5c 24 10          	mov    ebx,DWORD PTR [esp+0x10]
   4de11:	55                   	push   ebp
   4de12:	8b 00                	mov    eax,DWORD PTR [eax]
   4de14:	41                   	inc    ecx
   4de15:	43                   	inc    ebx
   4de16:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
   4de19:	8b 00                	mov    eax,DWORD PTR [eax]
   4de1b:	e8 30 79 fb ff       	call   VESA_rectangle
update_mod_84_branch_12:
   4de20:	8b 04 24             	mov    eax,DWORD PTR [esp]
   4de23:	8b 00                	mov    eax,DWORD PTR [eax]
   4de25:	8b 14 24             	mov    edx,DWORD PTR [esp]
   4de28:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
   4de2b:	89 02                	mov    DWORD PTR [edx],eax
   4de2d:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
   4de31:	e8 42 42 02 00       	call   W?$dln(pnv)v
   4de36:	e9 8e fe ff ff       	jmp    update_mod_84_branch_1
update_mod_84_branch_13:
   4de3b:	83 c4 1c             	add    esp,0x1c
   4de3e:	5d                   	pop    ebp
   4de3f:	5f                   	pop    edi
   4de40:	5e                   	pop    esi
   4de41:	5a                   	pop    edx
   4de42:	59                   	pop    ecx
   4de43:	5b                   	pop    ebx
   4de44:	c3                   	ret    
   4de45:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   4de4b:	8d 52 00             	lea    edx,[edx+0x0]
   4de4e:	8b db                	mov    ebx,ebx

;-------------------------------------------------
;  Function 'W?$dt:TIMER$n()_'                   -
;-------------------------------------------------
W?$dt:TIMER$n()_:
   4de50:	ba 01 00 00 00       	mov    edx,0x1
   4de55:	e9 46 d5 fe ff       	jmp    W?$dt:BTMAP$n()_
;-------------------------------------------------
;  Bad code 84 (zero after jmp):                 -
;-------------------------------------------------
;  4de50:	ba 01 00 00 00       	mov    edx,0x1
;  4de55:	e9 46 d5 fe ff       	jmp    0x3b3a0
;  4de5a:	00 00                	add    BYTE PTR [eax],al
;  4de5c:	00 00                	add    BYTE PTR [eax],al
;-------------------------------------------------
;  Padding data (6 bytes):                       -
;-------------------------------------------------
   4de5a:	00 00 00 00 00 00    	db     6 dup(0x00)
;-------------------------------------------------
;  End of bad code 84                            -
;-------------------------------------------------

;-------------------------------------------------
;  Function 'W?$dt:BITMAP_LIST$n()_'             -
;-------------------------------------------------
W?$dt:BITMAP_LIST$n()_:
   4de60:	53                   	push   ebx
   4de61:	51                   	push   ecx
   4de62:	56                   	push   esi
   4de63:	57                   	push   edi
   4de64:	89 c7                	mov    edi,eax
   4de66:	8b 18                	mov    ebx,DWORD PTR [eax]
   4de68:	89 c1                	mov    ecx,eax
   4de6a:	85 db                	test   ebx,ebx
   4de6c:	0f 85 7c 01 00 00    	jne    W?$dt:BITMAP_LIST$n()__branch_8
   4de72:	89 f8                	mov    eax,edi
   4de74:	5f                   	pop    edi
   4de75:	5e                   	pop    esi
   4de76:	59                   	pop    ecx
   4de77:	5b                   	pop    ebx
   4de78:	c3                   	ret    
W?$dt:BITMAP_LIST$n()__branch_1:
   4de79:	89 da                	mov    edx,ebx
   4de7b:	89 c8                	mov    eax,ecx
   4de7d:	e8 6e e8 ff ff       	call   remove_bitmap
   4de82:	8b 53 10             	mov    edx,DWORD PTR [ebx+0x10]
   4de85:	85 d2                	test   edx,edx
   4de87:	75 19                	jne    W?$dt:BITMAP_LIST$n()__branch_2
   4de89:	85 db                	test   ebx,ebx
   4de8b:	0f 84 00 02 00 00    	je     W?$dt:BITMAP_LIST$n()__branch_12
   4de91:	89 d8                	mov    eax,ebx
   4de93:	e8 08 d5 fe ff       	call   W?$dt:BTMAP$n()_
   4de98:	e8 db 41 02 00       	call   W?$dln(pnv)v
   4de9d:	e9 ef 01 00 00       	jmp    W?$dt:BITMAP_LIST$n()__branch_12
W?$dt:BITMAP_LIST$n()__branch_2:
   4dea2:	89 d0                	mov    eax,edx
   4dea4:	ba 70 bc 00 00       	mov    edx,@obj3:screen_cpp_variable_1                              ; fixup: num: 11858, src obj: 1, src ofs: 0x4dea5, dst obj: 3, dst ofs: 0xbc70
   4dea9:	e8 82 85 02 00       	call   strcmp_
   4deae:	85 c0                	test   eax,eax
   4deb0:	0f 84 db 01 00 00    	je     W?$dt:BITMAP_LIST$n()__branch_12
   4deb6:	ba 7a bc 00 00       	mov    edx,@obj3:screen_cpp_variable_2                              ; fixup: num: 11857, src obj: 1, src ofs: 0x4deb7, dst obj: 3, dst ofs: 0xbc7a
   4debb:	8b 43 10             	mov    eax,DWORD PTR [ebx+0x10]
   4debe:	e8 6d 85 02 00       	call   strcmp_
   4dec3:	85 c0                	test   eax,eax
   4dec5:	0f 84 c6 01 00 00    	je     W?$dt:BITMAP_LIST$n()__branch_12
   4decb:	ba 82 bc 00 00       	mov    edx,@obj3:screen_cpp_variable_3                              ; fixup: num: 11856, src obj: 1, src ofs: 0x4decc, dst obj: 3, dst ofs: 0xbc82
   4ded0:	8b 43 10             	mov    eax,DWORD PTR [ebx+0x10]
   4ded3:	e8 58 85 02 00       	call   strcmp_
   4ded8:	85 c0                	test   eax,eax
   4deda:	0f 84 b1 01 00 00    	je     W?$dt:BITMAP_LIST$n()__branch_12
   4dee0:	ba 8b bc 00 00       	mov    edx,@obj3:screen_cpp_variable_4                              ; fixup: num: 11855, src obj: 1, src ofs: 0x4dee1, dst obj: 3, dst ofs: 0xbc8b
   4dee5:	8b 43 10             	mov    eax,DWORD PTR [ebx+0x10]
   4dee8:	e8 30 31 02 00       	call   strstr_
   4deed:	85 c0                	test   eax,eax
   4deef:	0f 85 9c 01 00 00    	jne    W?$dt:BITMAP_LIST$n()__branch_12
   4def5:	85 db                	test   ebx,ebx
   4def7:	0f 84 94 01 00 00    	je     W?$dt:BITMAP_LIST$n()__branch_12
   4defd:	89 d8                	mov    eax,ebx
   4deff:	31 d2                	xor    edx,edx
   4df01:	e8 9a d4 fe ff       	call   W?$dt:BTMAP$n()_
   4df06:	e8 6d 41 02 00       	call   W?$dln(pnv)v
   4df0b:	89 f3                	mov    ebx,esi
   4df0d:	85 f6                	test   esi,esi
   4df0f:	0f 85 d9 00 00 00    	jne    W?$dt:BITMAP_LIST$n()__branch_8
   4df15:	89 f8                	mov    eax,edi
   4df17:	5f                   	pop    edi
   4df18:	5e                   	pop    esi
   4df19:	59                   	pop    ecx
   4df1a:	5b                   	pop    ebx
   4df1b:	c3                   	ret    
W?$dt:BITMAP_LIST$n()__branch_3:
   4df1c:	80 7b 56 00          	cmp    BYTE PTR [ebx+0x56],0x0
   4df20:	0f 85 6b 01 00 00    	jne    W?$dt:BITMAP_LIST$n()__branch_12
   4df26:	89 da                	mov    edx,ebx
   4df28:	89 c8                	mov    eax,ecx
   4df2a:	e8 c1 e7 ff ff       	call   remove_bitmap
   4df2f:	85 db                	test   ebx,ebx
   4df31:	0f 84 5a 01 00 00    	je     W?$dt:BITMAP_LIST$n()__branch_12
   4df37:	ba 01 00 00 00       	mov    edx,0x1
   4df3c:	89 d8                	mov    eax,ebx
   4df3e:	e8 5d d4 fe ff       	call   W?$dt:BTMAP$n()_
   4df43:	e8 30 41 02 00       	call   W?$dln(pnv)v
   4df48:	89 f3                	mov    ebx,esi
   4df4a:	85 f6                	test   esi,esi
   4df4c:	0f 85 9c 00 00 00    	jne    W?$dt:BITMAP_LIST$n()__branch_8
   4df52:	89 f8                	mov    eax,edi
   4df54:	5f                   	pop    edi
   4df55:	5e                   	pop    esi
   4df56:	59                   	pop    ecx
   4df57:	5b                   	pop    ebx
   4df58:	c3                   	ret    
W?$dt:BITMAP_LIST$n()__branch_4:
   4df59:	89 da                	mov    edx,ebx
   4df5b:	89 c8                	mov    eax,ecx
   4df5d:	e8 8e e7 ff ff       	call   remove_bitmap
   4df62:	89 f3                	mov    ebx,esi
   4df64:	85 f6                	test   esi,esi
   4df66:	0f 85 82 00 00 00    	jne    W?$dt:BITMAP_LIST$n()__branch_8
   4df6c:	89 f8                	mov    eax,edi
   4df6e:	5f                   	pop    edi
   4df6f:	5e                   	pop    esi
   4df70:	59                   	pop    ecx
   4df71:	5b                   	pop    ebx
   4df72:	c3                   	ret    
W?$dt:BITMAP_LIST$n()__branch_5:
   4df73:	89 da                	mov    edx,ebx
   4df75:	89 c8                	mov    eax,ecx
   4df77:	e8 74 e7 ff ff       	call   remove_bitmap
   4df7c:	85 db                	test   ebx,ebx
   4df7e:	0f 84 0d 01 00 00    	je     W?$dt:BITMAP_LIST$n()__branch_12
   4df84:	89 d8                	mov    eax,ebx
   4df86:	31 d2                	xor    edx,edx
   4df88:	e8 33 62 ff ff       	call   W?$dt:MONSTER$n()_
   4df8d:	e8 e6 40 02 00       	call   W?$dln(pnv)v
   4df92:	89 f3                	mov    ebx,esi
   4df94:	85 f6                	test   esi,esi
   4df96:	75 56                	jne    W?$dt:BITMAP_LIST$n()__branch_8
   4df98:	89 f8                	mov    eax,edi
   4df9a:	5f                   	pop    edi
   4df9b:	5e                   	pop    esi
   4df9c:	59                   	pop    ecx
   4df9d:	5b                   	pop    ebx
   4df9e:	c3                   	ret    
W?$dt:BITMAP_LIST$n()__branch_6:
   4df9f:	89 da                	mov    edx,ebx
   4dfa1:	89 c8                	mov    eax,ecx
   4dfa3:	e8 48 e7 ff ff       	call   remove_bitmap
   4dfa8:	85 db                	test   ebx,ebx
   4dfaa:	0f 84 e1 00 00 00    	je     W?$dt:BITMAP_LIST$n()__branch_12
   4dfb0:	89 d8                	mov    eax,ebx
   4dfb2:	31 d2                	xor    edx,edx
   4dfb4:	e8 a7 df fe ff       	call   W?$dt:ANIMATION$n()_
   4dfb9:	e8 ba 40 02 00       	call   W?$dln(pnv)v
   4dfbe:	89 f3                	mov    ebx,esi
   4dfc0:	85 f6                	test   esi,esi
   4dfc2:	75 2a                	jne    W?$dt:BITMAP_LIST$n()__branch_8
   4dfc4:	89 f8                	mov    eax,edi
   4dfc6:	5f                   	pop    edi
   4dfc7:	5e                   	pop    esi
   4dfc8:	59                   	pop    ecx
   4dfc9:	5b                   	pop    ebx
   4dfca:	c3                   	ret    
W?$dt:BITMAP_LIST$n()__branch_7:
   4dfcb:	85 db                	test   ebx,ebx
   4dfcd:	0f 84 be 00 00 00    	je     W?$dt:BITMAP_LIST$n()__branch_12
   4dfd3:	89 d8                	mov    eax,ebx
   4dfd5:	31 d2                	xor    edx,edx
   4dfd7:	e8 44 bf ff ff       	call   W?$dt:TEXTBM$n()_
   4dfdc:	e8 97 40 02 00       	call   W?$dln(pnv)v
   4dfe1:	89 f3                	mov    ebx,esi
   4dfe3:	85 f6                	test   esi,esi
   4dfe5:	75 07                	jne    W?$dt:BITMAP_LIST$n()__branch_8
   4dfe7:	89 f8                	mov    eax,edi
   4dfe9:	5f                   	pop    edi
   4dfea:	5e                   	pop    esi
   4dfeb:	59                   	pop    ecx
   4dfec:	5b                   	pop    ebx
   4dfed:	c3                   	ret    
W?$dt:BITMAP_LIST$n()__branch_8:
   4dfee:	8b 43 38             	mov    eax,DWORD PTR [ebx+0x38]
   4dff1:	8b 73 48             	mov    esi,DWORD PTR [ebx+0x48]
   4dff4:	83 f8 05             	cmp    eax,0x5
   4dff7:	72 4e                	jb     W?$dt:BITMAP_LIST$n()__branch_10
   4dff9:	0f 86 5a ff ff ff    	jbe    W?$dt:BITMAP_LIST$n()__branch_4
   4dfff:	83 f8 15             	cmp    eax,0x15
   4e002:	72 28                	jb     W?$dt:BITMAP_LIST$n()__branch_9
   4e004:	83 f8 16             	cmp    eax,0x16
   4e007:	0f 86 6c fe ff ff    	jbe    W?$dt:BITMAP_LIST$n()__branch_1
   4e00d:	83 f8 17             	cmp    eax,0x17
   4e010:	0f 86 06 ff ff ff    	jbe    W?$dt:BITMAP_LIST$n()__branch_3
   4e016:	83 f8 19             	cmp    eax,0x19
   4e019:	0f 86 5a fe ff ff    	jbe    W?$dt:BITMAP_LIST$n()__branch_1
   4e01f:	89 f3                	mov    ebx,esi
   4e021:	85 f6                	test   esi,esi
   4e023:	75 c9                	jne    W?$dt:BITMAP_LIST$n()__branch_8
   4e025:	89 f8                	mov    eax,edi
   4e027:	5f                   	pop    edi
   4e028:	5e                   	pop    esi
   4e029:	59                   	pop    ecx
   4e02a:	5b                   	pop    ebx
   4e02b:	c3                   	ret    
W?$dt:BITMAP_LIST$n()__branch_9:
   4e02c:	83 f8 06             	cmp    eax,0x6
   4e02f:	0f 86 3e ff ff ff    	jbe    W?$dt:BITMAP_LIST$n()__branch_5
   4e035:	83 f8 07             	cmp    eax,0x7
   4e038:	74 91                	je     W?$dt:BITMAP_LIST$n()__branch_7
   4e03a:	89 f3                	mov    ebx,esi
   4e03c:	85 f6                	test   esi,esi
   4e03e:	75 ae                	jne    W?$dt:BITMAP_LIST$n()__branch_8
   4e040:	89 f8                	mov    eax,edi
   4e042:	5f                   	pop    edi
   4e043:	5e                   	pop    esi
   4e044:	59                   	pop    ecx
   4e045:	5b                   	pop    ebx
   4e046:	c3                   	ret    
W?$dt:BITMAP_LIST$n()__branch_10:
   4e047:	83 f8 01             	cmp    eax,0x1
   4e04a:	72 3d                	jb     W?$dt:BITMAP_LIST$n()__branch_11
   4e04c:	0f 86 4d ff ff ff    	jbe    W?$dt:BITMAP_LIST$n()__branch_6
   4e052:	83 f8 03             	cmp    eax,0x3
   4e055:	72 3a                	jb     W?$dt:BITMAP_LIST$n()__branch_12
   4e057:	0f 86 1c fe ff ff    	jbe    W?$dt:BITMAP_LIST$n()__branch_1
   4e05d:	89 da                	mov    edx,ebx
   4e05f:	89 c8                	mov    eax,ecx
   4e061:	e8 8a e6 ff ff       	call   remove_bitmap
   4e066:	85 db                	test   ebx,ebx
   4e068:	74 27                	je     W?$dt:BITMAP_LIST$n()__branch_12
   4e06a:	89 d8                	mov    eax,ebx
   4e06c:	31 d2                	xor    edx,edx
   4e06e:	e8 bd 6f ff ff       	call   W?$dt:NON_PLAYER_CHARACTER$n()_
   4e073:	e8 00 40 02 00       	call   W?$dln(pnv)v
   4e078:	89 f3                	mov    ebx,esi
   4e07a:	85 f6                	test   esi,esi
   4e07c:	0f 85 6c ff ff ff    	jne    W?$dt:BITMAP_LIST$n()__branch_8
   4e082:	89 f8                	mov    eax,edi
   4e084:	5f                   	pop    edi
   4e085:	5e                   	pop    esi
   4e086:	59                   	pop    ecx
   4e087:	5b                   	pop    ebx
   4e088:	c3                   	ret    
W?$dt:BITMAP_LIST$n()__branch_11:
   4e089:	85 c0                	test   eax,eax
   4e08b:	0f 84 e8 fd ff ff    	je     W?$dt:BITMAP_LIST$n()__branch_1
W?$dt:BITMAP_LIST$n()__branch_12:
   4e091:	89 f3                	mov    ebx,esi
   4e093:	85 f6                	test   esi,esi
   4e095:	0f 85 53 ff ff ff    	jne    W?$dt:BITMAP_LIST$n()__branch_8
   4e09b:	89 f8                	mov    eax,edi
   4e09d:	5f                   	pop    edi
   4e09e:	5e                   	pop    esi
   4e09f:	59                   	pop    ecx
   4e0a0:	5b                   	pop    ebx
   4e0a1:	c3                   	ret    
;-------------------------------------------------
;  Bad code 85 (zero after ret):                 -
;-------------------------------------------------
;  4e0a0:	5b                   	pop    ebx
;  4e0a1:	c3                   	ret    
;  4e0a2:	00 00                	add    BYTE PTR [eax],al
;  4e0a4:	00 00                	add    BYTE PTR [eax],al
;-------------------------------------------------
;  Padding data (14 bytes):                      -
;-------------------------------------------------
   4e0a2:	00 00 00 00 00 00 .. 	db     14 dup(0x00)
;-------------------------------------------------
;  End of bad code 85                            -
;-------------------------------------------------

;-------------------------------------------------
;  Function 'W?$ct:BITMAP_LIST$n()_'             -
;-------------------------------------------------
W?$ct:BITMAP_LIST$n()_:
   4e0b0:	52                   	push   edx
   4e0b1:	c7 40 04 00 00 00 00 	mov    DWORD PTR [eax+0x4],0x0
   4e0b8:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
   4e0bb:	89 10                	mov    DWORD PTR [eax],edx
   4e0bd:	5a                   	pop    edx
   4e0be:	c3                   	ret    
   4e0bf:	90                   	nop

;-------------------------------------------------
;  Function 'area'                               -
;-------------------------------------------------
area:
   4e0c0:	29 c3                	sub    ebx,eax
   4e0c2:	89 c8                	mov    eax,ecx
   4e0c4:	29 d0                	sub    eax,edx
   4e0c6:	43                   	inc    ebx
   4e0c7:	40                   	inc    eax
   4e0c8:	0f af c3             	imul   eax,ebx
   4e0cb:	c3                   	ret    
   4e0cc:	8d 44 20 00          	lea    eax,[eax+eiz*1+0x0]

;-------------------------------------------------
;  Function 'overlaps'                           -
;-------------------------------------------------
overlaps:
   4e0d0:	3b 5c 24 04          	cmp    ebx,DWORD PTR [esp+0x4]
   4e0d4:	7d 05                	jge    overlaps_branch_1
   4e0d6:	30 c0                	xor    al,al
   4e0d8:	c2 10 00             	ret    0x10
overlaps_branch_1:
   4e0db:	3b 44 24 0c          	cmp    eax,DWORD PTR [esp+0xc]
   4e0df:	7e 05                	jle    overlaps_branch_2
   4e0e1:	30 c0                	xor    al,al
   4e0e3:	c2 10 00             	ret    0x10
overlaps_branch_2:
   4e0e6:	3b 4c 24 08          	cmp    ecx,DWORD PTR [esp+0x8]
   4e0ea:	7d 05                	jge    overlaps_branch_3
   4e0ec:	30 c0                	xor    al,al
   4e0ee:	c2 10 00             	ret    0x10
overlaps_branch_3:
   4e0f1:	3b 54 24 10          	cmp    edx,DWORD PTR [esp+0x10]
   4e0f5:	7e 05                	jle    overlaps_branch_4
   4e0f7:	30 c0                	xor    al,al
   4e0f9:	c2 10 00             	ret    0x10
overlaps_branch_4:
   4e0fc:	b0 01                	mov    al,0x1
   4e0fe:	c2 10 00             	ret    0x10
   4e101:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   4e107:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
   4e10d:	8d 40 00             	lea    eax,[eax+0x0]

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 84 (D:\SOURCE\screen.cpp)                                     -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 84: D:\SOURCE\screen.cpp                                             -
;                                                                              -
;-------------------------------------------------------------------------------
screen_cpp_variable_1:
    bc70:	49 4e 56 5f 50 41 4e 45 4c 00 	db     "INV_PANEL",0x00
screen_cpp_variable_2:
    bc7a:	50 43 5f 48 45 41 44 00 	db     "PC_HEAD",0x00
screen_cpp_variable_3:
    bc82:	4e 50 43 5f 48 45 41 44 00 	db     "NPC_HEAD",0x00
screen_cpp_variable_4:
    bc8b:	51 51 65 00          	db     "QQe",0x00
screen_cpp_variable_5:
    bc8f:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
    bca7:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 84 (D:\SOURCE\screen.cpp)                                     -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 84: D:\SOURCE\screen.cpp                                             -
;                                                                              -
;-------------------------------------------------------------------------------
screen_cpp_variable_6:
   10d4c:	03                   	db     0x03                                                         ; dec:   3, chr: ''
   10d4d:	00 00 00             	db     3 dup(0x00)                                                  ; dec:   0, chr: '\0'
   10d50:	60 de 04 00          	dd     @obj1:W?$dt:BITMAP_LIST$n()_                                 ; fixup: num: 21347, src obj: 3, src ofs: 0x10d50, dst obj: 1, dst ofs: 0x4de60
   10d54:	88 5a 02 00          	dd     @obj3:the_list                                               ; fixup: num: 21346, src obj: 3, src ofs: 0x10d54, dst obj: 3, dst ofs: 0x25a88
W?$Wts0fn$BITMAP_LIST$$$nx[]uc:
   10d58:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
   10d59:	b0 e0 04 00          	dd     @obj1:W?$ct:BITMAP_LIST$n()_                                 ; fixup: num: 21350, src obj: 3, src ofs: 0x10d59, dst obj: 1, dst ofs: 0x4e0b0
   10d5d:	48 14 07 00          	dd     @obj1:__wcpp_2_undefed_cdtor__                               ; fixup: num: 21349, src obj: 3, src ofs: 0x10d5d, dst obj: 1, dst ofs: 0x71448
   10d61:	60 de 04 00          	dd     @obj1:W?$dt:BITMAP_LIST$n()_                                 ; fixup: num: 21348, src obj: 3, src ofs: 0x10d61, dst obj: 1, dst ofs: 0x4de60
   10d65:	08                   	db     0x08                                                         ; dec:   8, chr: '\b'
   10d66:	00 00 00 00 00 00    	db     6 dup(0x00)                                                  ; dec:   0, chr: '\0'

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 84 (D:\SOURCE\screen.cpp)                                     -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 84: D:\SOURCE\screen.cpp                                             -
;                                                                              -
;-------------------------------------------------------------------------------
screen_cpp_variable_7:
   13c10:	00 00 00 00          	db     4 dup(0x00)                                                  ; dec:   0, chr: '\0'
   13c14:	4c 0d 01 00          	dd     @obj3:screen_cpp_variable_6                                  ; fixup: num: 21493, src obj: 3, src ofs: 0x13c14, dst obj: 3, dst ofs: 0x10d4c
screen_cpp_variable_8:                                                                              ; access size: DWORD
   13c18:	00 00 00 00          	dd     0x00000000

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 84 (D:\SOURCE\screen.cpp)                                     -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 84: D:\SOURCE\screen.cpp                                             -
;                                                                              -
;-------------------------------------------------------------------------------
.mod_init_mod_84:
   16db6:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
   16db7:	40                   	db     0x40                                                         ; dec:  64, chr: '@'
   16db8:	c0 c0 04 00          	dd     @obj1:.fn_init_mod_84                                        ; fixup: num: 21654, src obj: 3, src ofs: 0x16db8, dst obj: 1, dst ofs: 0x4c0c0

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 84 (D:\SOURCE\screen.cpp)                                     -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 84: D:\SOURCE\screen.cpp                                             -
;                                                                              -
;-------------------------------------------------------------------------------
the_screen:                                                                                         ; access size: DWORD
   25a84:	00 00 00 00          	dd     0x00000000
the_list:                                                                                           ; access size: DWORD
   25a88:	00 00 00 00          	dd     0x00000000
the_list_variable_1:                                                                                ; access size: DWORD
   25a8c:	00 00 00 00          	dd     0x00000000

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 84 (D:\SOURCE\screen.cpp)                                     -
;                                                                              -
;-------------------------------------------------------------------------------