;-------------------------------------------------------------------------------
;                                                                              -
;  Module 76: D:\SOURCE\classes.cpp                                            -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function 'classes_cpp_'                       -
;-------------------------------------------------
classes_cpp_:
   3b880:	b8 23 9c 00 00       	mov    eax,@obj3:classes_cpp_variable_5                             ; fixup: num: 10600, src obj: 1, src ofs: 0x3b881, dst obj: 3, dst ofs: 0x9c23
   3b885:	e9 e5 57 03 00       	jmp    puts_
   3b88a:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function                                      -
;  'W?$ct:ANIMATION$n(pnapnaiibipn(ui)pnvpna)_'  -
;-------------------------------------------------
W?$ct:ANIMATION$n(pnapnaiibipn(ui)pnvpna)_:
   3b890:	56                   	push   esi
   3b891:	57                   	push   edi
   3b892:	55                   	push   ebp
   3b893:	89 c7                	mov    edi,eax
   3b895:	89 d6                	mov    esi,edx
   3b897:	89 dd                	mov    ebp,ebx
   3b899:	89 cb                	mov    ebx,ecx
   3b89b:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
   3b89f:	8b 54 24 20          	mov    edx,DWORD PTR [esp+0x20]
   3b8a3:	52                   	push   edx
   3b8a4:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
   3b8a8:	50                   	push   eax
   3b8a9:	ff 74 24 1c          	push   DWORD PTR [esp+0x1c]
   3b8ad:	89 ea                	mov    edx,ebp
   3b8af:	89 f8                	mov    eax,edi
   3b8b1:	e8 ba f2 ff ff       	call   W?$ct:BTMAP$n(pnaiibipna)_
   3b8b6:	c7 80 88 10 00 00 00 00 00 00 	mov    DWORD PTR [eax+0x1088],0x0
   3b8c0:	c6 40 52 01          	mov    BYTE PTR [eax+0x52],0x1
   3b8c4:	c6 40 54 01          	mov    BYTE PTR [eax+0x54],0x1
   3b8c8:	c6 40 4f 01          	mov    BYTE PTR [eax+0x4f],0x1
   3b8cc:	c6 40 09 00          	mov    BYTE PTR [eax+0x9],0x0
   3b8d0:	c6 40 53 00          	mov    BYTE PTR [eax+0x53],0x0
   3b8d4:	c7 80 24 11 00 00 ff ff ff ff 	mov    DWORD PTR [eax+0x1124],0xffffffff
   3b8de:	c7 80 b4 10 00 00 00 00 c6 c2 	mov    DWORD PTR [eax+0x10b4],0xc2c60000
   3b8e8:	c7 80 64 10 00 00 ff ff ff ff 	mov    DWORD PTR [eax+0x1064],0xffffffff
   3b8f2:	c7 80 a4 10 00 00 00 00 00 00 	mov    DWORD PTR [eax+0x10a4],0x0
   3b8fc:	c7 80 a8 10 00 00 00 00 00 00 	mov    DWORD PTR [eax+0x10a8],0x0
   3b906:	c7 80 84 10 00 00 ff ff ff ff 	mov    DWORD PTR [eax+0x1084],0xffffffff
   3b910:	c6 40 0c 00          	mov    BYTE PTR [eax+0xc],0x0
   3b914:	8b 90 24 11 00 00    	mov    edx,DWORD PTR [eax+0x1124]
   3b91a:	89 90 ac 10 00 00    	mov    DWORD PTR [eax+0x10ac],edx
   3b920:	8b 90 a4 10 00 00    	mov    edx,DWORD PTR [eax+0x10a4]
   3b926:	89 c7                	mov    edi,eax
   3b928:	89 90 a0 10 00 00    	mov    DWORD PTR [eax+0x10a0],edx
   3b92e:	b8 2f 9c 00 00       	mov    eax,@obj3:classes_cpp_variable_6                             ; fixup: num: 10610, src obj: 1, src ofs: 0x3b92f, dst obj: 3, dst ofs: 0x9c2f
   3b933:	89 ea                	mov    edx,ebp
   3b935:	e8 f6 aa 03 00       	call   strcmp_
   3b93a:	85 c0                	test   eax,eax
   3b93c:	75 48                	jne    W?$ct:ANIMATION$n(pnapnaiibipn(ui)pnvpna)__branch_1
   3b93e:	b9 89 00 00 00       	mov    ecx,0x89
   3b943:	bb 32 9c 00 00       	mov    ebx,@obj3:classes_cpp_variable_7                             ; fixup: num: 10609, src obj: 1, src ofs: 0x3b944, dst obj: 3, dst ofs: 0x9c32
   3b948:	8b 15 ac 60 02 00    	mov    edx,DWORD PTR ds:@obj3:pc_buffer                             ; fixup: num: 10608, src obj: 1, src ofs: 0x3b94a, dst obj: 3, dst ofs: 0x260ac
   3b94e:	89 f0                	mov    eax,esi
   3b950:	e8 8b 14 fd ff       	call   XFILE_read2
   3b955:	89 c5                	mov    ebp,eax
   3b957:	85 c0                	test   eax,eax
   3b959:	0f 85 a1 00 00 00    	jne    W?$ct:ANIMATION$n(pnapnaiibipn(ui)pnvpna)__branch_4
   3b95f:	89 f0                	mov    eax,esi
   3b961:	e8 1a 13 fd ff       	call   XFILE_size
   3b966:	50                   	push   eax
   3b967:	56                   	push   esi
   3b968:	68 3e 9c 00 00       	push   @obj3:classes_cpp_variable_8                                 ; fixup: num: 10607, src obj: 1, src ofs: 0x3b969, dst obj: 3, dst ofs: 0x9c3e
   3b96d:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 10606, src obj: 1, src ofs: 0x3b96e, dst obj: 3, dst ofs: 0x237fc
   3b972:	bb fc 37 02 00       	mov    ebx,@obj3:log_buffer                                         ; fixup: num: 10605, src obj: 1, src ofs: 0x3b973, dst obj: 3, dst ofs: 0x237fc
   3b977:	e8 65 52 03 00       	call   sprintf_
   3b97c:	83 c4 10             	add    esp,0x10
   3b97f:	ba 8c 00 00 00       	mov    edx,0x8c
   3b984:	eb 73                	jmp    W?$ct:ANIMATION$n(pnapnaiibipn(ui)pnvpna)__branch_3
W?$ct:ANIMATION$n(pnapnaiibipn(ui)pnvpna)__branch_1:
   3b986:	89 f0                	mov    eax,esi
   3b988:	e8 f3 12 fd ff       	call   XFILE_size
   3b98d:	e8 01 5b 03 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   3b992:	89 c5                	mov    ebp,eax
   3b994:	85 c0                	test   eax,eax
   3b996:	75 2b                	jne    W?$ct:ANIMATION$n(pnapnaiibipn(ui)pnvpna)__branch_2
   3b998:	89 f0                	mov    eax,esi
   3b99a:	e8 e1 12 fd ff       	call   XFILE_size
   3b99f:	50                   	push   eax
   3b9a0:	68 66 9c 00 00       	push   @obj3:classes_cpp_variable_9                                 ; fixup: num: 10604, src obj: 1, src ofs: 0x3b9a1, dst obj: 3, dst ofs: 0x9c66
   3b9a5:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 10603, src obj: 1, src ofs: 0x3b9a6, dst obj: 3, dst ofs: 0x237fc
   3b9aa:	bb fc 37 02 00       	mov    ebx,@obj3:log_buffer                                         ; fixup: num: 10602, src obj: 1, src ofs: 0x3b9ab, dst obj: 3, dst ofs: 0x237fc
   3b9af:	e8 2d 52 03 00       	call   sprintf_
   3b9b4:	83 c4 0c             	add    esp,0xc
   3b9b7:	ba 99 00 00 00       	mov    edx,0x99
   3b9bc:	31 c0                	xor    eax,eax
   3b9be:	e8 6d c6 ff ff       	call   _error_report
W?$ct:ANIMATION$n(pnapnaiibipn(ui)pnvpna)__branch_2:
   3b9c3:	b9 9c 00 00 00       	mov    ecx,0x9c
   3b9c8:	bb 87 9c 00 00       	mov    ebx,@obj3:classes_cpp_variable_10                            ; fixup: num: 10601, src obj: 1, src ofs: 0x3b9c9, dst obj: 3, dst ofs: 0x9c87
   3b9cd:	89 ea                	mov    edx,ebp
   3b9cf:	89 f0                	mov    eax,esi
   3b9d1:	e8 0a 14 fd ff       	call   XFILE_read2
   3b9d6:	89 c5                	mov    ebp,eax
   3b9d8:	85 c0                	test   eax,eax
   3b9da:	75 24                	jne    W?$ct:ANIMATION$n(pnapnaiibipn(ui)pnvpna)__branch_4
   3b9dc:	56                   	push   esi
   3b9dd:	68 93 9c 00 00       	push   @obj3:classes_cpp_variable_11                                ; fixup: num: 10613, src obj: 1, src ofs: 0x3b9de, dst obj: 3, dst ofs: 0x9c93
   3b9e2:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 10612, src obj: 1, src ofs: 0x3b9e3, dst obj: 3, dst ofs: 0x237fc
   3b9e7:	bb fc 37 02 00       	mov    ebx,@obj3:log_buffer                                         ; fixup: num: 10611, src obj: 1, src ofs: 0x3b9e8, dst obj: 3, dst ofs: 0x237fc
   3b9ec:	e8 f0 51 03 00       	call   sprintf_
   3b9f1:	83 c4 0c             	add    esp,0xc
   3b9f4:	ba 9f 00 00 00       	mov    edx,0x9f
W?$ct:ANIMATION$n(pnapnaiibipn(ui)pnvpna)__branch_3:
   3b9f9:	31 c0                	xor    eax,eax
   3b9fb:	e8 30 c6 ff ff       	call   _error_report
W?$ct:ANIMATION$n(pnapnaiibipn(ui)pnvpna)__branch_4:
   3ba00:	89 ea                	mov    edx,ebp
   3ba02:	89 f8                	mov    eax,edi
   3ba04:	e8 e7 06 00 00       	call   initialize_from_abm
   3ba09:	89 f8                	mov    eax,edi
   3ba0b:	e8 80 08 00 00       	call   show
   3ba10:	89 f8                	mov    eax,edi
   3ba12:	5d                   	pop    ebp
   3ba13:	5f                   	pop    edi
   3ba14:	5e                   	pop    esi
   3ba15:	c2 14 00             	ret    0x14
   3ba18:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   3ba1e:	8b d2                	mov    edx,edx

;-------------------------------------------------
;  Function                                      -
;  'W?$ct:ANIMATION$n(pnaipnaiibiucucuc)_'       -
;-------------------------------------------------
W?$ct:ANIMATION$n(pnaipnaiibiucucuc)_:
   3ba20:	56                   	push   esi
   3ba21:	57                   	push   edi
   3ba22:	55                   	push   ebp
   3ba23:	83 ec 04             	sub    esp,0x4
   3ba26:	89 c6                	mov    esi,eax
   3ba28:	89 d7                	mov    edi,edx
   3ba2a:	89 dd                	mov    ebp,ebx
   3ba2c:	8b 5c 24 14          	mov    ebx,DWORD PTR [esp+0x14]
   3ba30:	89 ca                	mov    edx,ecx
   3ba32:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
   3ba36:	6a 00                	push   0x0
   3ba38:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
   3ba3c:	50                   	push   eax
   3ba3d:	ff 74 24 24          	push   DWORD PTR [esp+0x24]
   3ba41:	89 f0                	mov    eax,esi
   3ba43:	e8 28 f1 ff ff       	call   W?$ct:BTMAP$n(pnaiibipna)_
   3ba48:	c7 80 88 10 00 00 00 00 00 00 	mov    DWORD PTR [eax+0x1088],0x0
   3ba52:	c6 40 52 01          	mov    BYTE PTR [eax+0x52],0x1
   3ba56:	c6 40 54 01          	mov    BYTE PTR [eax+0x54],0x1
   3ba5a:	c6 40 4f 01          	mov    BYTE PTR [eax+0x4f],0x1
   3ba5e:	c6 40 09 00          	mov    BYTE PTR [eax+0x9],0x0
   3ba62:	c7 80 ac 10 00 00 ff ff ff ff 	mov    DWORD PTR [eax+0x10ac],0xffffffff
   3ba6c:	c7 80 b4 10 00 00 00 00 c6 c2 	mov    DWORD PTR [eax+0x10b4],0xc2c60000
   3ba76:	89 c3                	mov    ebx,eax
   3ba78:	c7 80 24 11 00 00 ff ff ff ff 	mov    DWORD PTR [eax+0x1124],0xffffffff
   3ba82:	c6 43 53 00          	mov    BYTE PTR [ebx+0x53],0x0
   3ba86:	c7 43 38 01 00 00 00 	mov    DWORD PTR [ebx+0x38],0x1
   3ba8d:	c6 43 0c 00          	mov    BYTE PTR [ebx+0xc],0x0
   3ba91:	c6 43 08 00          	mov    BYTE PTR [ebx+0x8],0x0
   3ba95:	c7 83 64 10 00 00 ff ff ff ff 	mov    DWORD PTR [ebx+0x1064],0xffffffff
   3ba9f:	c7 83 a4 10 00 00 00 00 00 00 	mov    DWORD PTR [ebx+0x10a4],0x0
   3baa9:	89 c6                	mov    esi,eax
   3baab:	c7 83 a8 10 00 00 00 00 00 00 	mov    DWORD PTR [ebx+0x10a8],0x0
   3bab5:	8a 44 24 24          	mov    al,BYTE PTR [esp+0x24]
   3bab9:	c7 83 84 10 00 00 ff ff ff ff 	mov    DWORD PTR [ebx+0x1084],0xffffffff
   3bac3:	88 43 50             	mov    BYTE PTR [ebx+0x50],al
   3bac6:	8a 44 24 28          	mov    al,BYTE PTR [esp+0x28]
   3baca:	88 43 4c             	mov    BYTE PTR [ebx+0x4c],al
   3bacd:	8a 44 24 2c          	mov    al,BYTE PTR [esp+0x2c]
   3bad1:	88 43 51             	mov    BYTE PTR [ebx+0x51],al
   3bad4:	89 2c 24             	mov    DWORD PTR [esp],ebp
   3bad7:	8b 83 a4 10 00 00    	mov    eax,DWORD PTR [ebx+0x10a4]
   3badd:	89 d9                	mov    ecx,ebx
   3badf:	89 83 a0 10 00 00    	mov    DWORD PTR [ebx+0x10a0],eax
   3bae5:	85 ed                	test   ebp,ebp
   3bae7:	74 14                	je     W?$ct:ANIMATION$n(pnaipnaiibiucucuc)__branch_1
   3bae9:	b8 64 00 00 00       	mov    eax,0x64
   3baee:	89 c2                	mov    edx,eax
   3baf0:	c1 fa 1f             	sar    edx,0x1f
   3baf3:	f7 fd                	idiv   ebp
   3baf5:	89 83 60 10 00 00    	mov    DWORD PTR [ebx+0x1060],eax
   3bafb:	eb 06                	jmp    W?$ct:ANIMATION$n(pnaipnaiibiucucuc)__branch_2
W?$ct:ANIMATION$n(pnaipnaiibiucucuc)__branch_1:
   3bafd:	89 ab 60 10 00 00    	mov    DWORD PTR [ebx+0x1060],ebp
W?$ct:ANIMATION$n(pnaipnaiibiucucuc)__branch_2:
   3bb03:	8b 14 24             	mov    edx,DWORD PTR [esp]
   3bb06:	3b 91 68 10 00 00    	cmp    edx,DWORD PTR [ecx+0x1068]
   3bb0c:	74 10                	je     W?$ct:ANIMATION$n(pnaipnaiibiucucuc)__branch_3
   3bb0e:	c7 81 5c 10 00 00 00 00 00 00 	mov    DWORD PTR [ecx+0x105c],0x0
   3bb18:	89 91 68 10 00 00    	mov    DWORD PTR [ecx+0x1068],edx
W?$ct:ANIMATION$n(pnaipnaiibiucucuc)__branch_3:
   3bb1e:	89 f8                	mov    eax,edi
   3bb20:	e8 5b 11 fd ff       	call   XFILE_size
   3bb25:	85 c0                	test   eax,eax
   3bb27:	7f 24                	jg     W?$ct:ANIMATION$n(pnaipnaiibiucucuc)__branch_4
   3bb29:	57                   	push   edi
   3bb2a:	68 b3 9c 00 00       	push   @obj3:classes_cpp_variable_12                                ; fixup: num: 10615, src obj: 1, src ofs: 0x3bb2b, dst obj: 3, dst ofs: 0x9cb3
   3bb2f:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 10614, src obj: 1, src ofs: 0x3bb30, dst obj: 3, dst ofs: 0x237fc
   3bb34:	bb fc 37 02 00       	mov    ebx,@obj3:log_buffer                                         ; fixup: num: 10620, src obj: 1, src ofs: 0x3bb35, dst obj: 3, dst ofs: 0x237fc
   3bb39:	e8 a3 50 03 00       	call   sprintf_
   3bb3e:	83 c4 0c             	add    esp,0xc
   3bb41:	ba c5 00 00 00       	mov    edx,0xc5
   3bb46:	31 c0                	xor    eax,eax
   3bb48:	e8 e3 c4 ff ff       	call   _error_report
W?$ct:ANIMATION$n(pnaipnaiibiucucuc)__branch_4:
   3bb4d:	89 f8                	mov    eax,edi
   3bb4f:	b9 cc 00 00 00       	mov    ecx,0xcc
   3bb54:	e8 27 11 fd ff       	call   XFILE_size
   3bb59:	83 c0 04             	add    eax,0x4
   3bb5c:	bb d3 9c 00 00       	mov    ebx,@obj3:classes_cpp_variable_13                            ; fixup: num: 10619, src obj: 1, src ofs: 0x3bb5d, dst obj: 3, dst ofs: 0x9cd3
   3bb61:	e8 2d 59 03 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   3bb66:	89 c2                	mov    edx,eax
   3bb68:	89 f8                	mov    eax,edi
   3bb6a:	e8 71 12 fd ff       	call   XFILE_read2
   3bb6f:	89 c1                	mov    ecx,eax
   3bb71:	85 c0                	test   eax,eax
   3bb73:	75 2c                	jne    W?$ct:ANIMATION$n(pnaipnaiibiucucuc)__branch_5
   3bb75:	89 f8                	mov    eax,edi
   3bb77:	e8 04 11 fd ff       	call   XFILE_size
   3bb7c:	50                   	push   eax
   3bb7d:	57                   	push   edi
   3bb7e:	68 df 9c 00 00       	push   @obj3:classes_cpp_variable_14                                ; fixup: num: 10618, src obj: 1, src ofs: 0x3bb7f, dst obj: 3, dst ofs: 0x9cdf
   3bb83:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 10617, src obj: 1, src ofs: 0x3bb84, dst obj: 3, dst ofs: 0x237fc
   3bb88:	bb fc 37 02 00       	mov    ebx,@obj3:log_buffer                                         ; fixup: num: 10616, src obj: 1, src ofs: 0x3bb89, dst obj: 3, dst ofs: 0x237fc
   3bb8d:	e8 4f 50 03 00       	call   sprintf_
   3bb92:	83 c4 10             	add    esp,0x10
   3bb95:	ba cf 00 00 00       	mov    edx,0xcf
   3bb9a:	31 c0                	xor    eax,eax
   3bb9c:	e8 8f c4 ff ff       	call   _error_report
W?$ct:ANIMATION$n(pnaipnaiibiucucuc)__branch_5:
   3bba1:	89 ca                	mov    edx,ecx
   3bba3:	89 f0                	mov    eax,esi
   3bba5:	e8 46 05 00 00       	call   initialize_from_abm
   3bbaa:	89 f0                	mov    eax,esi
   3bbac:	e8 df 06 00 00       	call   show
   3bbb1:	8b 1e                	mov    ebx,DWORD PTR [esi]
   3bbb3:	85 db                	test   ebx,ebx
   3bbb5:	75 08                	jne    W?$ct:ANIMATION$n(pnaipnaiibiucucuc)__branch_6
   3bbb7:	89 5e 2c             	mov    DWORD PTR [esi+0x2c],ebx
   3bbba:	89 5e 30             	mov    DWORD PTR [esi+0x30],ebx
   3bbbd:	eb 0d                	jmp    W?$ct:ANIMATION$n(pnaipnaiibiucucuc)__branch_7
W?$ct:ANIMATION$n(pnaipnaiibiucucuc)__branch_6:
   3bbbf:	8b 03                	mov    eax,DWORD PTR [ebx]
   3bbc1:	89 46 2c             	mov    DWORD PTR [esi+0x2c],eax
   3bbc4:	8b 06                	mov    eax,DWORD PTR [esi]
   3bbc6:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
   3bbc9:	89 46 30             	mov    DWORD PTR [esi+0x30],eax
W?$ct:ANIMATION$n(pnaipnaiibiucucuc)__branch_7:
   3bbcc:	89 f0                	mov    eax,esi
   3bbce:	83 c4 04             	add    esp,0x4
   3bbd1:	5d                   	pop    ebp
   3bbd2:	5f                   	pop    edi
   3bbd3:	5e                   	pop    esi
   3bbd4:	c2 1c 00             	ret    0x1c
   3bbd7:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   3bbdd:	8d 52 00             	lea    edx,[edx+0x0]

;-------------------------------------------------
;  Function 'W?$ct:ANIMATION$n(pn$_anim_type$$p  -
;  n(ui)pnv)_'                                   -
;-------------------------------------------------
W?$ct:ANIMATION$n(pn$_anim_type$$pn(ui)pnv)_:
   3bbe0:	51                   	push   ecx
   3bbe1:	56                   	push   esi
   3bbe2:	57                   	push   edi
   3bbe3:	55                   	push   ebp
   3bbe4:	89 c7                	mov    edi,eax
   3bbe6:	89 d6                	mov    esi,edx
   3bbe8:	6a 00                	push   0x0
   3bbea:	6a 03                	push   0x3
   3bbec:	83 ec 04             	sub    esp,0x4
   3bbef:	db 42 08             	fild   DWORD PTR [edx+0x8]
   3bbf2:	d9 1c 24             	fstp   DWORD PTR [esp]
   3bbf5:	8b 4a 04             	mov    ecx,DWORD PTR [edx+0x4]
   3bbf8:	8b 1a                	mov    ebx,DWORD PTR [edx]
   3bbfa:	8b 52 18             	mov    edx,DWORD PTR [edx+0x18]
   3bbfd:	e8 6e ef ff ff       	call   W?$ct:BTMAP$n(pnaiibipna)_
   3bc02:	c7 80 88 10 00 00 00 00 00 00 	mov    DWORD PTR [eax+0x1088],0x0
   3bc0c:	c6 40 09 00          	mov    BYTE PTR [eax+0x9],0x0
   3bc10:	c6 40 4f 00          	mov    BYTE PTR [eax+0x4f],0x0
   3bc14:	c7 80 ac 10 00 00 ff ff ff ff 	mov    DWORD PTR [eax+0x10ac],0xffffffff
   3bc1e:	c7 80 b4 10 00 00 00 00 c6 c2 	mov    DWORD PTR [eax+0x10b4],0xc2c60000
   3bc28:	89 c3                	mov    ebx,eax
   3bc2a:	c7 80 24 11 00 00 ff ff ff ff 	mov    DWORD PTR [eax+0x1124],0xffffffff
   3bc34:	89 c7                	mov    edi,eax
   3bc36:	8a 46 1e             	mov    al,BYTE PTR [esi+0x1e]
   3bc39:	88 43 50             	mov    BYTE PTR [ebx+0x50],al
   3bc3c:	8a 46 1f             	mov    al,BYTE PTR [esi+0x1f]
   3bc3f:	88 43 4c             	mov    BYTE PTR [ebx+0x4c],al
   3bc42:	8a 46 20             	mov    al,BYTE PTR [esi+0x20]
   3bc45:	88 43 51             	mov    BYTE PTR [ebx+0x51],al
   3bc48:	8a 46 1c             	mov    al,BYTE PTR [esi+0x1c]
   3bc4b:	88 43 52             	mov    BYTE PTR [ebx+0x52],al
   3bc4e:	8a 46 1d             	mov    al,BYTE PTR [esi+0x1d]
   3bc51:	88 43 54             	mov    BYTE PTR [ebx+0x54],al
   3bc54:	8a 46 21             	mov    al,BYTE PTR [esi+0x21]
   3bc57:	c7 43 38 01 00 00 00 	mov    DWORD PTR [ebx+0x38],0x1
   3bc5e:	c6 43 0c 00          	mov    BYTE PTR [ebx+0xc],0x0
   3bc62:	c6 43 08 01          	mov    BYTE PTR [ebx+0x8],0x1
   3bc66:	c7 83 64 10 00 00 ff ff ff ff 	mov    DWORD PTR [ebx+0x1064],0xffffffff
   3bc70:	c7 83 a4 10 00 00 00 00 00 00 	mov    DWORD PTR [ebx+0x10a4],0x0
   3bc7a:	c7 83 a8 10 00 00 00 00 00 00 	mov    DWORD PTR [ebx+0x10a8],0x0
   3bc84:	c7 83 84 10 00 00 ff ff ff ff 	mov    DWORD PTR [ebx+0x1084],0xffffffff
   3bc8e:	88 43 53             	mov    BYTE PTR [ebx+0x53],al
   3bc91:	8b 83 a4 10 00 00    	mov    eax,DWORD PTR [ebx+0x10a4]
   3bc97:	89 83 a0 10 00 00    	mov    DWORD PTR [ebx+0x10a0],eax
   3bc9d:	8b 4e 0c             	mov    ecx,DWORD PTR [esi+0xc]
   3bca0:	89 dd                	mov    ebp,ebx
   3bca2:	85 c9                	test   ecx,ecx
   3bca4:	74 14                	je     W?$ct:ANIMATION$n(pn$_anim_type$$pn(ui)pnv)__branch_1
   3bca6:	b8 64 00 00 00       	mov    eax,0x64
   3bcab:	89 c2                	mov    edx,eax
   3bcad:	c1 fa 1f             	sar    edx,0x1f
   3bcb0:	f7 f9                	idiv   ecx
   3bcb2:	89 83 60 10 00 00    	mov    DWORD PTR [ebx+0x1060],eax
   3bcb8:	eb 06                	jmp    W?$ct:ANIMATION$n(pn$_anim_type$$pn(ui)pnv)__branch_2
W?$ct:ANIMATION$n(pn$_anim_type$$pn(ui)pnv)__branch_1:
   3bcba:	89 8b 60 10 00 00    	mov    DWORD PTR [ebx+0x1060],ecx
W?$ct:ANIMATION$n(pn$_anim_type$$pn(ui)pnv)__branch_2:
   3bcc0:	3b 8d 68 10 00 00    	cmp    ecx,DWORD PTR [ebp+0x1068]
   3bcc6:	74 10                	je     W?$ct:ANIMATION$n(pn$_anim_type$$pn(ui)pnv)__branch_3
   3bcc8:	c7 85 5c 10 00 00 00 00 00 00 	mov    DWORD PTR [ebp+0x105c],0x0
   3bcd2:	89 8d 68 10 00 00    	mov    DWORD PTR [ebp+0x1068],ecx
W?$ct:ANIMATION$n(pn$_anim_type$$pn(ui)pnv)__branch_3:
   3bcd8:	8b 46 14             	mov    eax,DWORD PTR [esi+0x14]
   3bcdb:	e8 a0 0f fd ff       	call   XFILE_size
   3bce0:	85 c0                	test   eax,eax
   3bce2:	7f 27                	jg     W?$ct:ANIMATION$n(pn$_anim_type$$pn(ui)pnv)__branch_4
   3bce4:	8b 5e 14             	mov    ebx,DWORD PTR [esi+0x14]
   3bce7:	53                   	push   ebx
   3bce8:	68 07 9d 00 00       	push   @obj3:classes_cpp_variable_15                                ; fixup: num: 10546, src obj: 1, src ofs: 0x3bce9, dst obj: 3, dst ofs: 0x9d07
   3bced:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 10545, src obj: 1, src ofs: 0x3bcee, dst obj: 3, dst ofs: 0x237fc
   3bcf2:	ba fc 00 00 00       	mov    edx,0xfc
   3bcf7:	e8 e5 4e 03 00       	call   sprintf_
   3bcfc:	83 c4 0c             	add    esp,0xc
   3bcff:	bb fc 37 02 00       	mov    ebx,@obj3:log_buffer                                         ; fixup: num: 10544, src obj: 1, src ofs: 0x3bd00, dst obj: 3, dst ofs: 0x237fc
   3bd04:	31 c0                	xor    eax,eax
   3bd06:	e8 25 c3 ff ff       	call   _error_report
W?$ct:ANIMATION$n(pn$_anim_type$$pn(ui)pnv)__branch_4:
   3bd0b:	8b 46 14             	mov    eax,DWORD PTR [esi+0x14]
   3bd0e:	b9 05 01 00 00       	mov    ecx,0x105
   3bd13:	e8 68 0f fd ff       	call   XFILE_size
   3bd18:	83 c0 04             	add    eax,0x4
   3bd1b:	bb 19 9d 00 00       	mov    ebx,@obj3:classes_cpp_variable_16                            ; fixup: num: 10543, src obj: 1, src ofs: 0x3bd1c, dst obj: 3, dst ofs: 0x9d19
   3bd20:	e8 6e 57 03 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   3bd25:	8b 6e 14             	mov    ebp,DWORD PTR [esi+0x14]
   3bd28:	89 c2                	mov    edx,eax
   3bd2a:	89 e8                	mov    eax,ebp
   3bd2c:	e8 af 10 fd ff       	call   XFILE_read2
   3bd31:	89 c1                	mov    ecx,eax
   3bd33:	85 c0                	test   eax,eax
   3bd35:	75 30                	jne    W?$ct:ANIMATION$n(pn$_anim_type$$pn(ui)pnv)__branch_5
   3bd37:	8b 46 14             	mov    eax,DWORD PTR [esi+0x14]
   3bd3a:	e8 41 0f fd ff       	call   XFILE_size
   3bd3f:	50                   	push   eax
   3bd40:	8b 6e 14             	mov    ebp,DWORD PTR [esi+0x14]
   3bd43:	55                   	push   ebp
   3bd44:	68 25 9d 00 00       	push   @obj3:classes_cpp_variable_17                                ; fixup: num: 10549, src obj: 1, src ofs: 0x3bd45, dst obj: 3, dst ofs: 0x9d25
   3bd49:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 10548, src obj: 1, src ofs: 0x3bd4a, dst obj: 3, dst ofs: 0x237fc
   3bd4e:	bb fc 37 02 00       	mov    ebx,@obj3:log_buffer                                         ; fixup: num: 10547, src obj: 1, src ofs: 0x3bd4f, dst obj: 3, dst ofs: 0x237fc
   3bd53:	e8 89 4e 03 00       	call   sprintf_
   3bd58:	83 c4 10             	add    esp,0x10
   3bd5b:	ba 08 01 00 00       	mov    edx,0x108
   3bd60:	31 c0                	xor    eax,eax
   3bd62:	e8 c9 c2 ff ff       	call   _error_report
W?$ct:ANIMATION$n(pn$_anim_type$$pn(ui)pnv)__branch_5:
   3bd67:	89 ca                	mov    edx,ecx
   3bd69:	89 f8                	mov    eax,edi
   3bd6b:	e8 80 03 00 00       	call   initialize_from_abm
   3bd70:	89 f8                	mov    eax,edi
   3bd72:	e8 19 05 00 00       	call   show
   3bd77:	80 7f 4c 00          	cmp    BYTE PTR [edi+0x4c],0x0
   3bd7b:	74 0a                	je     W?$ct:ANIMATION$n(pn$_anim_type$$pn(ui)pnv)__branch_6
   3bd7d:	89 f8                	mov    eax,edi
   3bd7f:	8b 97 6c 10 00 00    	mov    edx,DWORD PTR [edi+0x106c]
   3bd85:	eb 05                	jmp    W?$ct:ANIMATION$n(pn$_anim_type$$pn(ui)pnv)__branch_7
W?$ct:ANIMATION$n(pn$_anim_type$$pn(ui)pnv)__branch_6:
   3bd87:	89 f8                	mov    eax,edi
   3bd89:	8b 56 24             	mov    edx,DWORD PTR [esi+0x24]
W?$ct:ANIMATION$n(pn$_anim_type$$pn(ui)pnv)__branch_7:
   3bd8c:	e8 0f 0b 00 00       	call   go_to_frame_mod_76
   3bd91:	89 f8                	mov    eax,edi
   3bd93:	5d                   	pop    ebp
   3bd94:	5f                   	pop    edi
   3bd95:	5e                   	pop    esi
   3bd96:	59                   	pop    ecx
   3bd97:	c3                   	ret    
   3bd98:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   3bd9e:	8b d2                	mov    edx,edx

;-------------------------------------------------
;  Function                                      -
;  'W?$ct:ANIMATION$n(pnaipnaiibiucucucb)_'      -
;-------------------------------------------------
W?$ct:ANIMATION$n(pnaipnaiibiucucucb)_:
   3bda0:	56                   	push   esi
   3bda1:	57                   	push   edi
   3bda2:	55                   	push   ebp
   3bda3:	83 ec 04             	sub    esp,0x4
   3bda6:	89 c6                	mov    esi,eax
   3bda8:	89 d7                	mov    edi,edx
   3bdaa:	89 dd                	mov    ebp,ebx
   3bdac:	8b 5c 24 14          	mov    ebx,DWORD PTR [esp+0x14]
   3bdb0:	89 ca                	mov    edx,ecx
   3bdb2:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
   3bdb6:	6a 00                	push   0x0
   3bdb8:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
   3bdbc:	50                   	push   eax
   3bdbd:	ff 74 24 24          	push   DWORD PTR [esp+0x24]
   3bdc1:	89 f0                	mov    eax,esi
   3bdc3:	e8 a8 ed ff ff       	call   W?$ct:BTMAP$n(pnaiibipna)_
   3bdc8:	c7 80 88 10 00 00 00 00 00 00 	mov    DWORD PTR [eax+0x1088],0x0
   3bdd2:	c6 40 52 01          	mov    BYTE PTR [eax+0x52],0x1
   3bdd6:	c6 40 54 01          	mov    BYTE PTR [eax+0x54],0x1
   3bdda:	c6 40 4f 01          	mov    BYTE PTR [eax+0x4f],0x1
   3bdde:	c6 40 09 00          	mov    BYTE PTR [eax+0x9],0x0
   3bde2:	c7 80 ac 10 00 00 ff ff ff ff 	mov    DWORD PTR [eax+0x10ac],0xffffffff
   3bdec:	c7 80 b4 10 00 00 00 00 c6 c2 	mov    DWORD PTR [eax+0x10b4],0xc2c60000
   3bdf6:	89 c3                	mov    ebx,eax
   3bdf8:	c7 80 24 11 00 00 ff ff ff ff 	mov    DWORD PTR [eax+0x1124],0xffffffff
   3be02:	c6 43 53 00          	mov    BYTE PTR [ebx+0x53],0x0
   3be06:	c7 43 38 01 00 00 00 	mov    DWORD PTR [ebx+0x38],0x1
   3be0d:	c6 43 0c 01          	mov    BYTE PTR [ebx+0xc],0x1
   3be11:	c6 43 08 00          	mov    BYTE PTR [ebx+0x8],0x0
   3be15:	c7 83 64 10 00 00 ff ff ff ff 	mov    DWORD PTR [ebx+0x1064],0xffffffff
   3be1f:	c7 83 a4 10 00 00 00 00 00 00 	mov    DWORD PTR [ebx+0x10a4],0x0
   3be29:	89 c6                	mov    esi,eax
   3be2b:	c7 83 a8 10 00 00 00 00 00 00 	mov    DWORD PTR [ebx+0x10a8],0x0
   3be35:	8a 44 24 24          	mov    al,BYTE PTR [esp+0x24]
   3be39:	c7 83 84 10 00 00 ff ff ff ff 	mov    DWORD PTR [ebx+0x1084],0xffffffff
   3be43:	88 43 50             	mov    BYTE PTR [ebx+0x50],al
   3be46:	8a 44 24 28          	mov    al,BYTE PTR [esp+0x28]
   3be4a:	88 43 4c             	mov    BYTE PTR [ebx+0x4c],al
   3be4d:	8a 44 24 2c          	mov    al,BYTE PTR [esp+0x2c]
   3be51:	88 43 51             	mov    BYTE PTR [ebx+0x51],al
   3be54:	89 2c 24             	mov    DWORD PTR [esp],ebp
   3be57:	8b 83 a4 10 00 00    	mov    eax,DWORD PTR [ebx+0x10a4]
   3be5d:	89 d9                	mov    ecx,ebx
   3be5f:	89 83 a0 10 00 00    	mov    DWORD PTR [ebx+0x10a0],eax
   3be65:	85 ed                	test   ebp,ebp
   3be67:	74 14                	je     W?$ct:ANIMATION$n(pnaipnaiibiucucucb)__branch_1
   3be69:	b8 64 00 00 00       	mov    eax,0x64
   3be6e:	89 c2                	mov    edx,eax
   3be70:	c1 fa 1f             	sar    edx,0x1f
   3be73:	f7 fd                	idiv   ebp
   3be75:	89 83 60 10 00 00    	mov    DWORD PTR [ebx+0x1060],eax
   3be7b:	eb 06                	jmp    W?$ct:ANIMATION$n(pnaipnaiibiucucucb)__branch_2
W?$ct:ANIMATION$n(pnaipnaiibiucucucb)__branch_1:
   3be7d:	89 ab 60 10 00 00    	mov    DWORD PTR [ebx+0x1060],ebp
W?$ct:ANIMATION$n(pnaipnaiibiucucucb)__branch_2:
   3be83:	8b 14 24             	mov    edx,DWORD PTR [esp]
   3be86:	3b 91 68 10 00 00    	cmp    edx,DWORD PTR [ecx+0x1068]
   3be8c:	74 10                	je     W?$ct:ANIMATION$n(pnaipnaiibiucucucb)__branch_3
   3be8e:	c7 81 5c 10 00 00 00 00 00 00 	mov    DWORD PTR [ecx+0x105c],0x0
   3be98:	89 91 68 10 00 00    	mov    DWORD PTR [ecx+0x1068],edx
W?$ct:ANIMATION$n(pnaipnaiibiucucucb)__branch_3:
   3be9e:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
   3bea2:	89 46 18             	mov    DWORD PTR [esi+0x18],eax
   3bea5:	89 f8                	mov    eax,edi
   3bea7:	e8 d4 0d fd ff       	call   XFILE_size
   3beac:	85 c0                	test   eax,eax
   3beae:	7f 24                	jg     W?$ct:ANIMATION$n(pnaipnaiibiucucucb)__branch_4
   3beb0:	57                   	push   edi
   3beb1:	68 3f 9d 00 00       	push   @obj3:classes_cpp_variable_18                                ; fixup: num: 10556, src obj: 1, src ofs: 0x3beb2, dst obj: 3, dst ofs: 0x9d3f
   3beb6:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 10555, src obj: 1, src ofs: 0x3beb7, dst obj: 3, dst ofs: 0x237fc
   3bebb:	bb fc 37 02 00       	mov    ebx,@obj3:log_buffer                                         ; fixup: num: 10554, src obj: 1, src ofs: 0x3bebc, dst obj: 3, dst ofs: 0x237fc
   3bec0:	e8 1c 4d 03 00       	call   sprintf_
   3bec5:	83 c4 0c             	add    esp,0xc
   3bec8:	ba 2e 01 00 00       	mov    edx,0x12e
   3becd:	31 c0                	xor    eax,eax
   3becf:	e8 5c c1 ff ff       	call   _error_report
W?$ct:ANIMATION$n(pnaipnaiibiucucucb)__branch_4:
   3bed4:	89 f8                	mov    eax,edi
   3bed6:	b9 35 01 00 00       	mov    ecx,0x135
   3bedb:	e8 a0 0d fd ff       	call   XFILE_size
   3bee0:	83 c0 04             	add    eax,0x4
   3bee3:	bb 5f 9d 00 00       	mov    ebx,@obj3:classes_cpp_variable_19                            ; fixup: num: 10553, src obj: 1, src ofs: 0x3bee4, dst obj: 3, dst ofs: 0x9d5f
   3bee8:	e8 a6 55 03 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   3beed:	89 c2                	mov    edx,eax
   3beef:	89 f8                	mov    eax,edi
   3bef1:	e8 ea 0e fd ff       	call   XFILE_read2
   3bef6:	89 c1                	mov    ecx,eax
   3bef8:	85 c0                	test   eax,eax
   3befa:	75 2c                	jne    W?$ct:ANIMATION$n(pnaipnaiibiucucucb)__branch_5
   3befc:	89 f8                	mov    eax,edi
   3befe:	e8 7d 0d fd ff       	call   XFILE_size
   3bf03:	50                   	push   eax
   3bf04:	57                   	push   edi
   3bf05:	68 6b 9d 00 00       	push   @obj3:classes_cpp_variable_20                                ; fixup: num: 10552, src obj: 1, src ofs: 0x3bf06, dst obj: 3, dst ofs: 0x9d6b
   3bf0a:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 10551, src obj: 1, src ofs: 0x3bf0b, dst obj: 3, dst ofs: 0x237fc
   3bf0f:	bb fc 37 02 00       	mov    ebx,@obj3:log_buffer                                         ; fixup: num: 10550, src obj: 1, src ofs: 0x3bf10, dst obj: 3, dst ofs: 0x237fc
   3bf14:	e8 c8 4c 03 00       	call   sprintf_
   3bf19:	83 c4 10             	add    esp,0x10
   3bf1c:	ba 38 01 00 00       	mov    edx,0x138
   3bf21:	31 c0                	xor    eax,eax
   3bf23:	e8 08 c1 ff ff       	call   _error_report
W?$ct:ANIMATION$n(pnaipnaiibiucucucb)__branch_5:
   3bf28:	89 ca                	mov    edx,ecx
   3bf2a:	89 f0                	mov    eax,esi
   3bf2c:	e8 bf 01 00 00       	call   initialize_from_abm
   3bf31:	89 f0                	mov    eax,esi
   3bf33:	e8 58 03 00 00       	call   show
   3bf38:	8b 1e                	mov    ebx,DWORD PTR [esi]
   3bf3a:	85 db                	test   ebx,ebx
   3bf3c:	75 08                	jne    W?$ct:ANIMATION$n(pnaipnaiibiucucucb)__branch_6
   3bf3e:	89 5e 2c             	mov    DWORD PTR [esi+0x2c],ebx
   3bf41:	89 5e 30             	mov    DWORD PTR [esi+0x30],ebx
   3bf44:	eb 0d                	jmp    W?$ct:ANIMATION$n(pnaipnaiibiucucucb)__branch_7
W?$ct:ANIMATION$n(pnaipnaiibiucucucb)__branch_6:
   3bf46:	8b 03                	mov    eax,DWORD PTR [ebx]
   3bf48:	89 46 2c             	mov    DWORD PTR [esi+0x2c],eax
   3bf4b:	8b 06                	mov    eax,DWORD PTR [esi]
   3bf4d:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
   3bf50:	89 46 30             	mov    DWORD PTR [esi+0x30],eax
W?$ct:ANIMATION$n(pnaipnaiibiucucucb)__branch_7:
   3bf53:	89 f0                	mov    eax,esi
   3bf55:	83 c4 04             	add    esp,0x4
   3bf58:	5d                   	pop    ebp
   3bf59:	5f                   	pop    edi
   3bf5a:	5e                   	pop    esi
   3bf5b:	c2 20 00             	ret    0x20
   3bf5e:	8b c0                	mov    eax,eax

;-------------------------------------------------
;  Function 'W?$dt:ANIMATION$n()_'               -
;-------------------------------------------------
W?$dt:ANIMATION$n()_:
   3bf60:	53                   	push   ebx
   3bf61:	51                   	push   ecx
   3bf62:	56                   	push   esi
   3bf63:	57                   	push   edi
   3bf64:	89 c3                	mov    ebx,eax
   3bf66:	bf 04 5a 02 00       	mov    edi,@obj3:_id_holder                                         ; fixup: num: 10557, src obj: 1, src ofs: 0x3bf67, dst obj: 3, dst ofs: 0x25a04
   3bf6b:	8b 70 10             	mov    esi,DWORD PTR [eax+0x10]
   3bf6e:	57                   	push   edi
W?$dt:ANIMATION$n()__branch_1:
   3bf6f:	8a 06                	mov    al,BYTE PTR [esi]
   3bf71:	88 07                	mov    BYTE PTR [edi],al
   3bf73:	3c 00                	cmp    al,0x0
   3bf75:	74 10                	je     W?$dt:ANIMATION$n()__branch_2
   3bf77:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   3bf7a:	83 c6 02             	add    esi,0x2
   3bf7d:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   3bf80:	83 c7 02             	add    edi,0x2
   3bf83:	3c 00                	cmp    al,0x0
   3bf85:	75 e8                	jne    W?$dt:ANIMATION$n()__branch_1
W?$dt:ANIMATION$n()__branch_2:
   3bf87:	5f                   	pop    edi
   3bf88:	c6 43 51 00          	mov    BYTE PTR [ebx+0x51],0x0
   3bf8c:	c7 83 64 10 00 00 ff ff ff ff 	mov    DWORD PTR [ebx+0x1064],0xffffffff
   3bf96:	8a 43 51             	mov    al,BYTE PTR [ebx+0x51]
   3bf99:	88 43 4c             	mov    BYTE PTR [ebx+0x4c],al
   3bf9c:	8b 83 64 10 00 00    	mov    eax,DWORD PTR [ebx+0x1064]
   3bfa2:	89 83 7c 10 00 00    	mov    DWORD PTR [ebx+0x107c],eax
   3bfa8:	db 83 7c 10 00 00    	fild   DWORD PTR [ebx+0x107c]
   3bfae:	d9 53 1c             	fst    DWORD PTR [ebx+0x1c]
   3bfb1:	e8 92 9d 03 00       	call   __CHP
   3bfb6:	db 5b 40             	fistp  DWORD PTR [ebx+0x40]
   3bfb9:	c7 83 84 10 00 00 ff ff ff ff 	mov    DWORD PTR [ebx+0x1084],0xffffffff
   3bfc3:	c6 43 50 01          	mov    BYTE PTR [ebx+0x50],0x1
   3bfc7:	c7 83 60 10 00 00 07 00 00 00 	mov    DWORD PTR [ebx+0x1060],0x7
   3bfd1:	89 83 68 10 00 00    	mov    DWORD PTR [ebx+0x1068],eax
   3bfd7:	89 83 6c 10 00 00    	mov    DWORD PTR [ebx+0x106c],eax
   3bfdd:	89 83 78 10 00 00    	mov    DWORD PTR [ebx+0x1078],eax
   3bfe3:	89 da                	mov    edx,ebx
   3bfe5:	8b 43 40             	mov    eax,DWORD PTR [ebx+0x40]
   3bfe8:	8b 8b 68 10 00 00    	mov    ecx,DWORD PTR [ebx+0x1068]
   3bfee:	89 43 3c             	mov    DWORD PTR [ebx+0x3c],eax
   3bff1:	83 f9 0e             	cmp    ecx,0xe
   3bff4:	74 14                	je     W?$dt:ANIMATION$n()__branch_3
   3bff6:	c7 83 68 10 00 00 0e 00 00 00 	mov    DWORD PTR [ebx+0x1068],0xe
   3c000:	c7 83 5c 10 00 00 00 00 00 00 	mov    DWORD PTR [ebx+0x105c],0x0
W?$dt:ANIMATION$n()__branch_3:
   3c00a:	8b 72 58             	mov    esi,DWORD PTR [edx+0x58]
   3c00d:	85 f6                	test   esi,esi
   3c00f:	74 0e                	je     W?$dt:ANIMATION$n()__branch_4
   3c011:	89 f0                	mov    eax,esi
   3c013:	e8 d0 53 03 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   3c018:	c7 42 58 00 00 00 00 	mov    DWORD PTR [edx+0x58],0x0
W?$dt:ANIMATION$n()__branch_4:
   3c01f:	c7 42 28 ff ff ff ff 	mov    DWORD PTR [edx+0x28],0xffffffff
   3c026:	8b 42 28             	mov    eax,DWORD PTR [edx+0x28]
   3c029:	89 42 24             	mov    DWORD PTR [edx+0x24],eax
   3c02c:	ba 01 00 00 00       	mov    edx,0x1
   3c031:	89 d8                	mov    eax,ebx
   3c033:	e8 68 f3 ff ff       	call   W?$dt:BTMAP$n()_
   3c038:	5f                   	pop    edi
   3c039:	5e                   	pop    esi
   3c03a:	59                   	pop    ecx
   3c03b:	5b                   	pop    ebx
   3c03c:	c3                   	ret    
   3c03d:	8d 40 00             	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'initialize_mod_76'                  -
;-------------------------------------------------
initialize_mod_76:
   3c040:	53                   	push   ebx
   3c041:	51                   	push   ecx
   3c042:	52                   	push   edx
   3c043:	89 c2                	mov    edx,eax
   3c045:	c7 80 84 10 00 00 ff ff ff ff 	mov    DWORD PTR [eax+0x1084],0xffffffff
   3c04f:	c6 40 50 01          	mov    BYTE PTR [eax+0x50],0x1
   3c053:	c6 40 51 00          	mov    BYTE PTR [eax+0x51],0x0
   3c057:	8a 40 51             	mov    al,BYTE PTR [eax+0x51]
   3c05a:	c7 82 64 10 00 00 ff ff ff ff 	mov    DWORD PTR [edx+0x1064],0xffffffff
   3c064:	88 42 4c             	mov    BYTE PTR [edx+0x4c],al
   3c067:	8b 82 64 10 00 00    	mov    eax,DWORD PTR [edx+0x1064]
   3c06d:	89 82 7c 10 00 00    	mov    DWORD PTR [edx+0x107c],eax
   3c073:	db 82 7c 10 00 00    	fild   DWORD PTR [edx+0x107c]
   3c079:	d9 52 1c             	fst    DWORD PTR [edx+0x1c]
   3c07c:	e8 c7 9c 03 00       	call   __CHP
   3c081:	db 5a 40             	fistp  DWORD PTR [edx+0x40]
   3c084:	c7 82 60 10 00 00 07 00 00 00 	mov    DWORD PTR [edx+0x1060],0x7
   3c08e:	89 82 68 10 00 00    	mov    DWORD PTR [edx+0x1068],eax
   3c094:	89 82 6c 10 00 00    	mov    DWORD PTR [edx+0x106c],eax
   3c09a:	89 82 78 10 00 00    	mov    DWORD PTR [edx+0x1078],eax
   3c0a0:	8b 42 40             	mov    eax,DWORD PTR [edx+0x40]
   3c0a3:	8b 9a 68 10 00 00    	mov    ebx,DWORD PTR [edx+0x1068]
   3c0a9:	89 42 3c             	mov    DWORD PTR [edx+0x3c],eax
   3c0ac:	83 fb 0e             	cmp    ebx,0xe
   3c0af:	74 14                	je     initialize_mod_76_branch_1
   3c0b1:	c7 82 68 10 00 00 0e 00 00 00 	mov    DWORD PTR [edx+0x1068],0xe
   3c0bb:	c7 82 5c 10 00 00 00 00 00 00 	mov    DWORD PTR [edx+0x105c],0x0
initialize_mod_76_branch_1:
   3c0c5:	8b 4a 58             	mov    ecx,DWORD PTR [edx+0x58]
   3c0c8:	85 c9                	test   ecx,ecx
   3c0ca:	74 0e                	je     initialize_mod_76_branch_2
   3c0cc:	89 c8                	mov    eax,ecx
   3c0ce:	e8 15 53 03 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   3c0d3:	c7 42 58 00 00 00 00 	mov    DWORD PTR [edx+0x58],0x0
initialize_mod_76_branch_2:
   3c0da:	c7 42 28 ff ff ff ff 	mov    DWORD PTR [edx+0x28],0xffffffff
   3c0e1:	8b 42 28             	mov    eax,DWORD PTR [edx+0x28]
   3c0e4:	89 42 24             	mov    DWORD PTR [edx+0x24],eax
   3c0e7:	5a                   	pop    edx
   3c0e8:	59                   	pop    ecx
   3c0e9:	5b                   	pop    ebx
   3c0ea:	c3                   	ret    
   3c0eb:	8d 40 00             	lea    eax,[eax+0x0]
   3c0ee:	8b c9                	mov    ecx,ecx

;-------------------------------------------------
;  Function 'initialize_from_abm'                -
;-------------------------------------------------
initialize_from_abm:
   3c0f0:	53                   	push   ebx
   3c0f1:	51                   	push   ecx
   3c0f2:	56                   	push   esi
   3c0f3:	89 c1                	mov    ecx,eax
   3c0f5:	89 d0                	mov    eax,edx
   3c0f7:	c7 81 74 10 00 00 ff ff ff ff 	mov    DWORD PTR [ecx+0x1074],0xffffffff
   3c101:	8b 91 68 10 00 00    	mov    edx,DWORD PTR [ecx+0x1068]
   3c107:	89 41 58             	mov    DWORD PTR [ecx+0x58],eax
   3c10a:	89 91 80 10 00 00    	mov    DWORD PTR [ecx+0x1080],edx
   3c110:	8b 10                	mov    edx,DWORD PTR [eax]
   3c112:	89 91 7c 10 00 00    	mov    DWORD PTR [ecx+0x107c],edx
   3c118:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
   3c11b:	83 c2 10             	add    edx,0x10
   3c11e:	89 91 70 10 00 00    	mov    DWORD PTR [ecx+0x1070],edx
   3c124:	83 c0 08             	add    eax,0x8
   3c127:	8b 91 7c 10 00 00    	mov    edx,DWORD PTR [ecx+0x107c]
   3c12d:	c7 81 78 10 00 00 00 00 00 00 	mov    DWORD PTR [ecx+0x1078],0x0
   3c137:	4a                   	dec    edx
   3c138:	8b 99 7c 10 00 00    	mov    ebx,DWORD PTR [ecx+0x107c]
   3c13e:	89 91 6c 10 00 00    	mov    DWORD PTR [ecx+0x106c],edx
   3c144:	31 d2                	xor    edx,edx
   3c146:	85 db                	test   ebx,ebx
   3c148:	7e 1e                	jle    initialize_from_abm_branch_2
   3c14a:	89 cb                	mov    ebx,ecx
initialize_from_abm_branch_1:
   3c14c:	89 43 5c             	mov    DWORD PTR [ebx+0x5c],eax
   3c14f:	8b 70 11             	mov    esi,DWORD PTR [eax+0x11]
   3c152:	83 c0 08             	add    eax,0x8
   3c155:	83 c6 11             	add    esi,0x11
   3c158:	42                   	inc    edx
   3c159:	01 f0                	add    eax,esi
   3c15b:	8b b1 7c 10 00 00    	mov    esi,DWORD PTR [ecx+0x107c]
   3c161:	83 c3 04             	add    ebx,0x4
   3c164:	39 f2                	cmp    edx,esi
   3c166:	7c e4                	jl     initialize_from_abm_branch_1
initialize_from_abm_branch_2:
   3c168:	b8 0c 00 00 00       	mov    eax,0xc
   3c16d:	e8 21 53 03 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   3c172:	89 01                	mov    DWORD PTR [ecx],eax
   3c174:	85 c0                	test   eax,eax
   3c176:	75 0f                	jne    initialize_from_abm_branch_3
   3c178:	bb c6 9d 00 00       	mov    ebx,@obj3:classes_cpp_variable_21                            ; fixup: num: 10622, src obj: 1, src ofs: 0x3c179, dst obj: 3, dst ofs: 0x9dc6
   3c17d:	ba 8f 01 00 00       	mov    edx,0x18f
   3c182:	e8 a9 be ff ff       	call   _error_report
initialize_from_abm_branch_3:
   3c187:	8b 81 70 10 00 00    	mov    eax,DWORD PTR [ecx+0x1070]
   3c18d:	e8 01 53 03 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   3c192:	8b 11                	mov    edx,DWORD PTR [ecx]
   3c194:	89 42 08             	mov    DWORD PTR [edx+0x8],eax
   3c197:	8b 01                	mov    eax,DWORD PTR [ecx]
   3c199:	83 78 08 00          	cmp    DWORD PTR [eax+0x8],0x0
   3c19d:	75 11                	jne    initialize_from_abm_branch_4
   3c19f:	bb de 9d 00 00       	mov    ebx,@obj3:classes_cpp_variable_22                            ; fixup: num: 10621, src obj: 1, src ofs: 0x3c1a0, dst obj: 3, dst ofs: 0x9dde
   3c1a4:	ba 92 01 00 00       	mov    edx,0x192
   3c1a9:	31 c0                	xor    eax,eax
   3c1ab:	e8 80 be ff ff       	call   _error_report
initialize_from_abm_branch_4:
   3c1b0:	8b 11                	mov    edx,DWORD PTR [ecx]
   3c1b2:	8b 81 70 10 00 00    	mov    eax,DWORD PTR [ecx+0x1070]
   3c1b8:	89 02                	mov    DWORD PTR [edx],eax
   3c1ba:	8b 01                	mov    eax,DWORD PTR [ecx]
   3c1bc:	31 d2                	xor    edx,edx
   3c1be:	c7 40 04 01 00 00 00 	mov    DWORD PTR [eax+0x4],0x1
   3c1c5:	89 c8                	mov    eax,ecx
   3c1c7:	e8 d4 06 00 00       	call   go_to_frame_mod_76
   3c1cc:	5e                   	pop    esi
   3c1cd:	59                   	pop    ecx
   3c1ce:	5b                   	pop    ebx
   3c1cf:	c3                   	ret    

;-------------------------------------------------
;  Function 'set_frames_per_second'              -
;-------------------------------------------------
set_frames_per_second:
   3c1d0:	53                   	push   ebx
   3c1d1:	51                   	push   ecx
   3c1d2:	89 c3                	mov    ebx,eax
   3c1d4:	89 d1                	mov    ecx,edx
   3c1d6:	85 d2                	test   edx,edx
   3c1d8:	74 14                	je     set_frames_per_second_branch_1
   3c1da:	b8 64 00 00 00       	mov    eax,0x64
   3c1df:	89 c2                	mov    edx,eax
   3c1e1:	c1 fa 1f             	sar    edx,0x1f
   3c1e4:	f7 f9                	idiv   ecx
   3c1e6:	89 83 60 10 00 00    	mov    DWORD PTR [ebx+0x1060],eax
   3c1ec:	eb 06                	jmp    set_frames_per_second_branch_2
set_frames_per_second_branch_1:
   3c1ee:	89 90 60 10 00 00    	mov    DWORD PTR [eax+0x1060],edx
set_frames_per_second_branch_2:
   3c1f4:	3b 8b 68 10 00 00    	cmp    ecx,DWORD PTR [ebx+0x1068]
   3c1fa:	74 10                	je     set_frames_per_second_branch_3
   3c1fc:	c7 83 5c 10 00 00 00 00 00 00 	mov    DWORD PTR [ebx+0x105c],0x0
   3c206:	89 8b 68 10 00 00    	mov    DWORD PTR [ebx+0x1068],ecx
set_frames_per_second_branch_3:
   3c20c:	59                   	pop    ecx
   3c20d:	5b                   	pop    ebx
   3c20e:	c3                   	ret    
   3c20f:	90                   	nop

;-------------------------------------------------
;  Function 'stopped'                            -
;-------------------------------------------------
stopped:
   3c210:	52                   	push   edx
   3c211:	83 b8 64 10 00 00 00 	cmp    DWORD PTR [eax+0x1064],0x0
   3c218:	7d 04                	jge    stopped_branch_1
   3c21a:	b0 01                	mov    al,0x1
   3c21c:	5a                   	pop    edx
   3c21d:	c3                   	ret    
stopped_branch_1:
   3c21e:	80 78 50 00          	cmp    BYTE PTR [eax+0x50],0x0
   3c222:	75 30                	jne    stopped_branch_3
   3c224:	80 78 4c 00          	cmp    BYTE PTR [eax+0x4c],0x0
   3c228:	74 12                	je     stopped_branch_2
   3c22a:	8b 90 64 10 00 00    	mov    edx,DWORD PTR [eax+0x1064]
   3c230:	3b 90 78 10 00 00    	cmp    edx,DWORD PTR [eax+0x1078]
   3c236:	75 04                	jne    stopped_branch_2
   3c238:	b0 01                	mov    al,0x1
   3c23a:	5a                   	pop    edx
   3c23b:	c3                   	ret    
stopped_branch_2:
   3c23c:	80 78 4c 00          	cmp    BYTE PTR [eax+0x4c],0x0
   3c240:	75 12                	jne    stopped_branch_3
   3c242:	8b 90 64 10 00 00    	mov    edx,DWORD PTR [eax+0x1064]
   3c248:	3b 90 6c 10 00 00    	cmp    edx,DWORD PTR [eax+0x106c]
   3c24e:	75 04                	jne    stopped_branch_3
   3c250:	b0 01                	mov    al,0x1
   3c252:	5a                   	pop    edx
   3c253:	c3                   	ret    
stopped_branch_3:
   3c254:	30 c0                	xor    al,al
   3c256:	5a                   	pop    edx
   3c257:	c3                   	ret    
   3c258:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   3c25e:	8b d2                	mov    edx,edx

;-------------------------------------------------
;  Function 'hide'                               -
;-------------------------------------------------
hide:
   3c260:	52                   	push   edx
   3c261:	8b 90 84 10 00 00    	mov    edx,DWORD PTR [eax+0x1084]
   3c267:	4a                   	dec    edx
   3c268:	89 90 84 10 00 00    	mov    DWORD PTR [eax+0x1084],edx
   3c26e:	83 fa ff             	cmp    edx,0xffffffff
   3c271:	75 15                	jne    hide_branch_1
   3c273:	83 b8 64 10 00 00 00 	cmp    DWORD PTR [eax+0x1064],0x0
   3c27a:	7c 0c                	jl     hide_branch_1
   3c27c:	89 c2                	mov    edx,eax
   3c27e:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 10623, src obj: 1, src ofs: 0x3c27f, dst obj: 3, dst ofs: 0x25a88
   3c283:	e8 68 04 01 00       	call   remove_bitmap
hide_branch_1:
   3c288:	5a                   	pop    edx
   3c289:	c3                   	ret    
   3c28a:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'show'                               -
;-------------------------------------------------
show:
   3c290:	53                   	push   ebx
   3c291:	51                   	push   ecx
   3c292:	52                   	push   edx
   3c293:	56                   	push   esi
   3c294:	57                   	push   edi
   3c295:	55                   	push   ebp
   3c296:	83 ec 30             	sub    esp,0x30
   3c299:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
   3c29d:	8b 90 84 10 00 00    	mov    edx,DWORD PTR [eax+0x1084]
   3c2a3:	42                   	inc    edx
   3c2a4:	89 90 84 10 00 00    	mov    DWORD PTR [eax+0x1084],edx
   3c2aa:	0f 85 49 05 00 00    	jne    show_branch_36
   3c2b0:	83 b8 64 10 00 00 00 	cmp    DWORD PTR [eax+0x1064],0x0
   3c2b7:	0f 8c 3c 05 00 00    	jl     show_branch_36
   3c2bd:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
   3c2c1:	8b 80 74 10 00 00    	mov    eax,DWORD PTR [eax+0x1074]
   3c2c7:	8b b2 64 10 00 00    	mov    esi,DWORD PTR [edx+0x1064]
   3c2cd:	39 f0                	cmp    eax,esi
   3c2cf:	0f 84 16 05 00 00    	je     show_branch_35
   3c2d5:	89 b2 74 10 00 00    	mov    DWORD PTR [edx+0x1074],esi
   3c2db:	8d 04 b5 00 00 00 00 	lea    eax,[esi*4+0x0]
   3c2e2:	01 d0                	add    eax,edx
   3c2e4:	8b 40 5c             	mov    eax,DWORD PTR [eax+0x5c]
   3c2e7:	8d 68 08             	lea    ebp,[eax+0x8]
   3c2ea:	83 c0 19             	add    eax,0x19
   3c2ed:	89 45 0d             	mov    DWORD PTR [ebp+0xd],eax
   3c2f0:	80 7a 4f 00          	cmp    BYTE PTR [edx+0x4f],0x0
   3c2f4:	0f 85 a5 02 00 00    	jne    show_branch_18
   3c2fa:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
   3c2fe:	8b 10                	mov    edx,DWORD PTR [eax]
   3c300:	c6 40 4f 01          	mov    BYTE PTR [eax+0x4f],0x1
   3c304:	85 d2                	test   edx,edx
   3c306:	75 48                	jne    show_branch_2
   3c308:	b8 0c 00 00 00       	mov    eax,0xc
   3c30d:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
   3c311:	e8 7d 51 03 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   3c316:	89 02                	mov    DWORD PTR [edx],eax
   3c318:	85 c0                	test   eax,eax
   3c31a:	75 0f                	jne    show_branch_1
   3c31c:	bb f6 9d 00 00       	mov    ebx,@obj3:classes_cpp_variable_23                            ; fixup: num: 10624, src obj: 1, src ofs: 0x3c31d, dst obj: 3, dst ofs: 0x9df6
   3c321:	ba f6 01 00 00       	mov    edx,0x1f6
   3c326:	e8 05 bd ff ff       	call   _error_report
show_branch_1:
   3c32b:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
   3c32f:	8b 00                	mov    eax,DWORD PTR [eax]
   3c331:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
   3c335:	c7 40 04 00 00 00 00 	mov    DWORD PTR [eax+0x4],0x0
   3c33c:	8b 12                	mov    edx,DWORD PTR [edx]
   3c33e:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
   3c341:	89 02                	mov    DWORD PTR [edx],eax
   3c343:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
   3c347:	8b 00                	mov    eax,DWORD PTR [eax]
   3c349:	c7 40 08 00 00 00 00 	mov    DWORD PTR [eax+0x8],0x0
show_branch_2:
   3c350:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
   3c354:	8b 00                	mov    eax,DWORD PTR [eax]
   3c356:	83 78 08 00          	cmp    DWORD PTR [eax+0x8],0x0
   3c35a:	75 18                	jne    show_branch_3
   3c35c:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
   3c360:	8b 80 70 10 00 00    	mov    eax,DWORD PTR [eax+0x1070]
   3c366:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
   3c36a:	e8 24 51 03 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   3c36f:	8b 12                	mov    edx,DWORD PTR [edx]
   3c371:	89 42 08             	mov    DWORD PTR [edx+0x8],eax
show_branch_3:
   3c374:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
   3c378:	8b 00                	mov    eax,DWORD PTR [eax]
   3c37a:	83 78 08 00          	cmp    DWORD PTR [eax+0x8],0x0
   3c37e:	75 11                	jne    show_branch_4
   3c380:	bb 0e 9e 00 00       	mov    ebx,@obj3:classes_cpp_variable_24                            ; fixup: num: 10625, src obj: 1, src ofs: 0x3c381, dst obj: 3, dst ofs: 0x9e0e
   3c385:	ba fc 01 00 00       	mov    edx,0x1fc
   3c38a:	31 c0                	xor    eax,eax
   3c38c:	e8 9f bc ff ff       	call   _error_report
show_branch_4:
   3c391:	8b 74 24 1c          	mov    esi,DWORD PTR [esp+0x1c]
   3c395:	89 e9                	mov    ecx,ebp
   3c397:	8b 36                	mov    esi,DWORD PTR [esi]
   3c399:	85 f6                	test   esi,esi
   3c39b:	0f 85 f8 00 00 00    	jne    show_branch_12
   3c3a1:	b8 0c 00 00 00       	mov    eax,0xc
   3c3a6:	e8 6d 5b 03 00       	call   W?$nwn(ui)pnv
   3c3ab:	85 c0                	test   eax,eax
   3c3ad:	0f 84 a5 00 00 00    	je     show_branch_9
   3c3b3:	89 c7                	mov    edi,eax
   3c3b5:	89 c2                	mov    edx,eax
   3c3b7:	8b 75 00             	mov    esi,DWORD PTR [ebp+0x0]
   3c3ba:	8b 5d 04             	mov    ebx,DWORD PTR [ebp+0x4]
   3c3bd:	89 74 24 04          	mov    DWORD PTR [esp+0x4],esi
   3c3c1:	89 5c 24 10          	mov    DWORD PTR [esp+0x10],ebx
   3c3c5:	8b 28                	mov    ebp,DWORD PTR [eax]
   3c3c7:	c7 40 08 00 00 00 00 	mov    DWORD PTR [eax+0x8],0x0
   3c3ce:	39 ee                	cmp    esi,ebp
   3c3d0:	75 09                	jne    show_branch_5
   3c3d2:	3b 58 04             	cmp    ebx,DWORD PTR [eax+0x4]
   3c3d5:	0f 84 7b 00 00 00    	je     show_branch_8
show_branch_5:
   3c3db:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
   3c3df:	89 02                	mov    DWORD PTR [edx],eax
   3c3e1:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
   3c3e5:	8b 2a                	mov    ebp,DWORD PTR [edx]
   3c3e7:	89 42 04             	mov    DWORD PTR [edx+0x4],eax
   3c3ea:	85 ed                	test   ebp,ebp
   3c3ec:	75 17                	jne    show_branch_6
   3c3ee:	85 c0                	test   eax,eax
   3c3f0:	75 13                	jne    show_branch_6
   3c3f2:	8b 72 08             	mov    esi,DWORD PTR [edx+0x8]
   3c3f5:	85 f6                	test   esi,esi
   3c3f7:	74 5d                	je     show_branch_8
   3c3f9:	89 f0                	mov    eax,esi
   3c3fb:	e8 e8 4f 03 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   3c400:	89 6a 08             	mov    DWORD PTR [edx+0x8],ebp
   3c403:	eb 51                	jmp    show_branch_8
show_branch_6:
   3c405:	8b 5a 08             	mov    ebx,DWORD PTR [edx+0x8]
   3c408:	85 db                	test   ebx,ebx
   3c40a:	74 07                	je     show_branch_7
   3c40c:	89 d8                	mov    eax,ebx
   3c40e:	e8 d5 4f 03 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
show_branch_7:
   3c413:	8b 02                	mov    eax,DWORD PTR [edx]
   3c415:	0f af 42 04          	imul   eax,DWORD PTR [edx+0x4]
   3c419:	c7 42 08 00 00 00 00 	mov    DWORD PTR [edx+0x8],0x0
   3c420:	e8 6e 50 03 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   3c425:	89 42 08             	mov    DWORD PTR [edx+0x8],eax
   3c428:	85 c0                	test   eax,eax
   3c42a:	75 2a                	jne    show_branch_8
   3c42c:	8b 02                	mov    eax,DWORD PTR [edx]
   3c42e:	50                   	push   eax
   3c42f:	8b 5a 04             	mov    ebx,DWORD PTR [edx+0x4]
   3c432:	53                   	push   ebx
   3c433:	68 84 9b 00 00       	push   @obj3:classes_cpp_variable_1                                 ; fixup: num: 10631, src obj: 1, src ofs: 0x3c434, dst obj: 3, dst ofs: 0x9b84
   3c438:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 10630, src obj: 1, src ofs: 0x3c439, dst obj: 3, dst ofs: 0x237fc
   3c43d:	ba 96 00 00 00       	mov    edx,0x96
   3c442:	e8 9a 47 03 00       	call   sprintf_
   3c447:	83 c4 10             	add    esp,0x10
   3c44a:	bb fc 37 02 00       	mov    ebx,@obj3:log_buffer                                         ; fixup: num: 10629, src obj: 1, src ofs: 0x3c44b, dst obj: 3, dst ofs: 0x237fc
   3c44f:	31 c0                	xor    eax,eax
   3c451:	e8 da bb ff ff       	call   _error_report
show_branch_8:
   3c456:	89 f8                	mov    eax,edi
show_branch_9:
   3c458:	89 c6                	mov    esi,eax
   3c45a:	85 c0                	test   eax,eax
   3c45c:	75 0f                	jne    show_branch_10
   3c45e:	bb aa 9b 00 00       	mov    ebx,@obj3:classes_cpp_variable_2                             ; fixup: num: 10628, src obj: 1, src ofs: 0x3c45f, dst obj: 3, dst ofs: 0x9baa
   3c463:	ba a2 00 00 00       	mov    edx,0xa2
   3c468:	e8 c3 bb ff ff       	call   _error_report
show_branch_10:
   3c46d:	85 f6                	test   esi,esi
   3c46f:	75 11                	jne    show_branch_11
   3c471:	bb c3 9b 00 00       	mov    ebx,@obj3:classes_cpp_variable_3                             ; fixup: num: 10627, src obj: 1, src ofs: 0x3c472, dst obj: 3, dst ofs: 0x9bc3
   3c476:	ba a3 00 00 00       	mov    edx,0xa3
   3c47b:	31 c0                	xor    eax,eax
   3c47d:	e8 ae bb ff ff       	call   _error_report
show_branch_11:
   3c482:	83 7e 08 00          	cmp    DWORD PTR [esi+0x8],0x0
   3c486:	75 11                	jne    show_branch_12
   3c488:	bb f3 9b 00 00       	mov    ebx,@obj3:classes_cpp_variable_4                             ; fixup: num: 10626, src obj: 1, src ofs: 0x3c489, dst obj: 3, dst ofs: 0x9bf3
   3c48d:	ba a4 00 00 00       	mov    edx,0xa4
   3c492:	31 c0                	xor    eax,eax
   3c494:	e8 97 bb ff ff       	call   _error_report
show_branch_12:
   3c499:	8b 01                	mov    eax,DWORD PTR [ecx]
   3c49b:	89 06                	mov    DWORD PTR [esi],eax
   3c49d:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
   3c4a0:	89 46 04             	mov    DWORD PTR [esi+0x4],eax
   3c4a3:	80 79 08 00          	cmp    BYTE PTR [ecx+0x8],0x0
   3c4a7:	75 25                	jne    show_branch_13
   3c4a9:	8b 01                	mov    eax,DWORD PTR [ecx]
   3c4ab:	0f af 41 04          	imul   eax,DWORD PTR [ecx+0x4]
   3c4af:	8b 51 0d             	mov    edx,DWORD PTR [ecx+0xd]
   3c4b2:	8b 7e 08             	mov    edi,DWORD PTR [esi+0x8]
   3c4b5:	89 d6                	mov    esi,edx
   3c4b7:	89 c1                	mov    ecx,eax
   3c4b9:	57                   	push   edi
   3c4ba:	89 c8                	mov    eax,ecx
   3c4bc:	c1 e9 02             	shr    ecx,0x2
   3c4bf:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
   3c4c1:	8a c8                	mov    cl,al
   3c4c3:	80 e1 03             	and    cl,0x3
   3c4c6:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
   3c4c8:	5f                   	pop    edi
   3c4c9:	e9 7a 00 00 00       	jmp    show_branch_17
show_branch_13:
   3c4ce:	31 c0                	xor    eax,eax
   3c4d0:	89 44 24 28          	mov    DWORD PTR [esp+0x28],eax
   3c4d4:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
   3c4d7:	8b 69 0d             	mov    ebp,DWORD PTR [ecx+0xd]
   3c4da:	89 44 24 20          	mov    DWORD PTR [esp+0x20],eax
   3c4de:	8b 41 09             	mov    eax,DWORD PTR [ecx+0x9]
   3c4e1:	01 e8                	add    eax,ebp
   3c4e3:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
   3c4e7:	39 c5                	cmp    ebp,eax
   3c4e9:	73 5d                	jae    show_branch_17
show_branch_14:
   3c4eb:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
   3c4ef:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
   3c4f3:	01 c1                	add    ecx,eax
   3c4f5:	31 c0                	xor    eax,eax
   3c4f7:	8a 45 00             	mov    al,BYTE PTR [ebp+0x0]
   3c4fa:	89 44 24 28          	mov    DWORD PTR [esp+0x28],eax
   3c4fe:	45                   	inc    ebp
   3c4ff:	8a 7c 24 28          	mov    bh,BYTE PTR [esp+0x28]
   3c503:	89 4c 24 20          	mov    DWORD PTR [esp+0x20],ecx
   3c507:	f6 c7 80             	test   bh,0x80
   3c50a:	74 1a                	je     show_branch_15
   3c50c:	89 c7                	mov    edi,eax
   3c50e:	45                   	inc    ebp
   3c50f:	31 d2                	xor    edx,edx
   3c511:	83 e7 7f             	and    edi,0x7f
   3c514:	89 c8                	mov    eax,ecx
   3c516:	8a 55 ff             	mov    dl,BYTE PTR [ebp-0x1]
   3c519:	89 fb                	mov    ebx,edi
   3c51b:	89 7c 24 28          	mov    DWORD PTR [esp+0x28],edi
   3c51f:	e8 ac 4e 03 00       	call   memset_
   3c524:	eb 1c                	jmp    show_branch_16
show_branch_15:
   3c526:	8b 7c 24 20          	mov    edi,DWORD PTR [esp+0x20]
   3c52a:	89 c1                	mov    ecx,eax
   3c52c:	89 ee                	mov    esi,ebp
   3c52e:	57                   	push   edi
   3c52f:	89 c8                	mov    eax,ecx
   3c531:	c1 e9 02             	shr    ecx,0x2
   3c534:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
   3c536:	8a c8                	mov    cl,al
   3c538:	80 e1 03             	and    cl,0x3
   3c53b:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
   3c53d:	5f                   	pop    edi
   3c53e:	03 6c 24 28          	add    ebp,DWORD PTR [esp+0x28]
show_branch_16:
   3c542:	3b 6c 24 18          	cmp    ebp,DWORD PTR [esp+0x18]
   3c546:	72 a3                	jb     show_branch_14
show_branch_17:
   3c548:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
   3c54c:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
   3c550:	8b 52 20             	mov    edx,DWORD PTR [edx+0x20]
   3c553:	8b 40 20             	mov    eax,DWORD PTR [eax+0x20]
   3c556:	c1 fa 1f             	sar    edx,0x1f
   3c559:	2b c2                	sub    eax,edx
   3c55b:	d1 f8                	sar    eax,1
   3c55d:	89 04 24             	mov    DWORD PTR [esp],eax
   3c560:	db 04 24             	fild   DWORD PTR [esp]
   3c563:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
   3c567:	d8 68 1c             	fsubr  DWORD PTR [eax+0x1c]
   3c56a:	83 ec 04             	sub    esp,0x4
   3c56d:	d9 1c 24             	fstp   DWORD PTR [esp]
   3c570:	8b 00                	mov    eax,DWORD PTR [eax]
   3c572:	8b 54 24 20          	mov    edx,DWORD PTR [esp+0x20]
   3c576:	8b 58 04             	mov    ebx,DWORD PTR [eax+0x4]
   3c579:	8b 52 40             	mov    edx,DWORD PTR [edx+0x40]
   3c57c:	d1 eb                	shr    ebx,1
   3c57e:	29 da                	sub    edx,ebx
   3c580:	89 d3                	mov    ebx,edx
   3c582:	8b 10                	mov    edx,DWORD PTR [eax]
   3c584:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
   3c588:	d1 ea                	shr    edx,1
   3c58a:	8b 40 3c             	mov    eax,DWORD PTR [eax+0x3c]
   3c58d:	29 d0                	sub    eax,edx
   3c58f:	89 c2                	mov    edx,eax
   3c591:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
   3c595:	e8 56 f1 ff ff       	call   set_xyz
   3c59a:	e9 4c 02 00 00       	jmp    show_branch_35
show_branch_18:
   3c59f:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
   3c5a3:	83 38 00             	cmp    DWORD PTR [eax],0x0
   3c5a6:	75 49                	jne    show_branch_20
   3c5a8:	b8 0c 00 00 00       	mov    eax,0xc
   3c5ad:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
   3c5b1:	e8 dd 4e 03 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   3c5b6:	89 02                	mov    DWORD PTR [edx],eax
   3c5b8:	85 c0                	test   eax,eax
   3c5ba:	75 0f                	jne    show_branch_19
   3c5bc:	bb 26 9e 00 00       	mov    ebx,@obj3:classes_cpp_variable_25                            ; fixup: num: 10632, src obj: 1, src ofs: 0x3c5bd, dst obj: 3, dst ofs: 0x9e26
   3c5c1:	ba 05 02 00 00       	mov    edx,0x205
   3c5c6:	e8 65 ba ff ff       	call   _error_report
show_branch_19:
   3c5cb:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
   3c5cf:	8b 00                	mov    eax,DWORD PTR [eax]
   3c5d1:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
   3c5d7:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
   3c5db:	8b 00                	mov    eax,DWORD PTR [eax]
   3c5dd:	c7 40 04 00 00 00 00 	mov    DWORD PTR [eax+0x4],0x0
   3c5e4:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
   3c5e8:	8b 00                	mov    eax,DWORD PTR [eax]
   3c5ea:	c7 40 08 00 00 00 00 	mov    DWORD PTR [eax+0x8],0x0
show_branch_20:
   3c5f1:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
   3c5f5:	8b 00                	mov    eax,DWORD PTR [eax]
   3c5f7:	83 78 08 00          	cmp    DWORD PTR [eax+0x8],0x0
   3c5fb:	75 18                	jne    show_branch_21
   3c5fd:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
   3c601:	8b 80 70 10 00 00    	mov    eax,DWORD PTR [eax+0x1070]
   3c607:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
   3c60b:	e8 83 4e 03 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   3c610:	8b 12                	mov    edx,DWORD PTR [edx]
   3c612:	89 42 08             	mov    DWORD PTR [edx+0x8],eax
show_branch_21:
   3c615:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
   3c619:	8b 00                	mov    eax,DWORD PTR [eax]
   3c61b:	83 78 08 00          	cmp    DWORD PTR [eax+0x8],0x0
   3c61f:	75 11                	jne    show_branch_22
   3c621:	bb 3e 9e 00 00       	mov    ebx,@obj3:classes_cpp_variable_26                            ; fixup: num: 10633, src obj: 1, src ofs: 0x3c622, dst obj: 3, dst ofs: 0x9e3e
   3c626:	ba 0b 02 00 00       	mov    edx,0x20b
   3c62b:	31 c0                	xor    eax,eax
   3c62d:	e8 fe b9 ff ff       	call   _error_report
show_branch_22:
   3c632:	8b 74 24 1c          	mov    esi,DWORD PTR [esp+0x1c]
   3c636:	89 e9                	mov    ecx,ebp
   3c638:	8b 36                	mov    esi,DWORD PTR [esi]
   3c63a:	85 f6                	test   esi,esi
   3c63c:	0f 85 f8 00 00 00    	jne    show_branch_30
   3c642:	b8 0c 00 00 00       	mov    eax,0xc
   3c647:	e8 cc 58 03 00       	call   W?$nwn(ui)pnv
   3c64c:	85 c0                	test   eax,eax
   3c64e:	0f 84 a5 00 00 00    	je     show_branch_27
   3c654:	89 c7                	mov    edi,eax
   3c656:	89 c2                	mov    edx,eax
   3c658:	8b 75 00             	mov    esi,DWORD PTR [ebp+0x0]
   3c65b:	8b 5d 04             	mov    ebx,DWORD PTR [ebp+0x4]
   3c65e:	89 74 24 0c          	mov    DWORD PTR [esp+0xc],esi
   3c662:	89 5c 24 08          	mov    DWORD PTR [esp+0x8],ebx
   3c666:	8b 28                	mov    ebp,DWORD PTR [eax]
   3c668:	c7 40 08 00 00 00 00 	mov    DWORD PTR [eax+0x8],0x0
   3c66f:	39 ee                	cmp    esi,ebp
   3c671:	75 09                	jne    show_branch_23
   3c673:	3b 58 04             	cmp    ebx,DWORD PTR [eax+0x4]
   3c676:	0f 84 7b 00 00 00    	je     show_branch_26
show_branch_23:
   3c67c:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
   3c680:	89 02                	mov    DWORD PTR [edx],eax
   3c682:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
   3c686:	8b 2a                	mov    ebp,DWORD PTR [edx]
   3c688:	89 42 04             	mov    DWORD PTR [edx+0x4],eax
   3c68b:	85 ed                	test   ebp,ebp
   3c68d:	75 17                	jne    show_branch_24
   3c68f:	85 c0                	test   eax,eax
   3c691:	75 13                	jne    show_branch_24
   3c693:	8b 72 08             	mov    esi,DWORD PTR [edx+0x8]
   3c696:	85 f6                	test   esi,esi
   3c698:	74 5d                	je     show_branch_26
   3c69a:	89 f0                	mov    eax,esi
   3c69c:	e8 47 4d 03 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   3c6a1:	89 6a 08             	mov    DWORD PTR [edx+0x8],ebp
   3c6a4:	eb 51                	jmp    show_branch_26
show_branch_24:
   3c6a6:	8b 5a 08             	mov    ebx,DWORD PTR [edx+0x8]
   3c6a9:	85 db                	test   ebx,ebx
   3c6ab:	74 07                	je     show_branch_25
   3c6ad:	89 d8                	mov    eax,ebx
   3c6af:	e8 34 4d 03 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
show_branch_25:
   3c6b4:	8b 02                	mov    eax,DWORD PTR [edx]
   3c6b6:	0f af 42 04          	imul   eax,DWORD PTR [edx+0x4]
   3c6ba:	c7 42 08 00 00 00 00 	mov    DWORD PTR [edx+0x8],0x0
   3c6c1:	e8 cd 4d 03 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   3c6c6:	89 42 08             	mov    DWORD PTR [edx+0x8],eax
   3c6c9:	85 c0                	test   eax,eax
   3c6cb:	75 2a                	jne    show_branch_26
   3c6cd:	8b 02                	mov    eax,DWORD PTR [edx]
   3c6cf:	50                   	push   eax
   3c6d0:	8b 5a 04             	mov    ebx,DWORD PTR [edx+0x4]
   3c6d3:	53                   	push   ebx
   3c6d4:	68 84 9b 00 00       	push   @obj3:classes_cpp_variable_1                                 ; fixup: num: 10639, src obj: 1, src ofs: 0x3c6d5, dst obj: 3, dst ofs: 0x9b84
   3c6d9:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 10638, src obj: 1, src ofs: 0x3c6da, dst obj: 3, dst ofs: 0x237fc
   3c6de:	ba 96 00 00 00       	mov    edx,0x96
   3c6e3:	e8 f9 44 03 00       	call   sprintf_
   3c6e8:	83 c4 10             	add    esp,0x10
   3c6eb:	bb fc 37 02 00       	mov    ebx,@obj3:log_buffer                                         ; fixup: num: 10637, src obj: 1, src ofs: 0x3c6ec, dst obj: 3, dst ofs: 0x237fc
   3c6f0:	31 c0                	xor    eax,eax
   3c6f2:	e8 39 b9 ff ff       	call   _error_report
show_branch_26:
   3c6f7:	89 f8                	mov    eax,edi
show_branch_27:
   3c6f9:	89 c6                	mov    esi,eax
   3c6fb:	85 c0                	test   eax,eax
   3c6fd:	75 0f                	jne    show_branch_28
   3c6ff:	bb aa 9b 00 00       	mov    ebx,@obj3:classes_cpp_variable_2                             ; fixup: num: 10636, src obj: 1, src ofs: 0x3c700, dst obj: 3, dst ofs: 0x9baa
   3c704:	ba a2 00 00 00       	mov    edx,0xa2
   3c709:	e8 22 b9 ff ff       	call   _error_report
show_branch_28:
   3c70e:	85 f6                	test   esi,esi
   3c710:	75 11                	jne    show_branch_29
   3c712:	bb c3 9b 00 00       	mov    ebx,@obj3:classes_cpp_variable_3                             ; fixup: num: 10635, src obj: 1, src ofs: 0x3c713, dst obj: 3, dst ofs: 0x9bc3
   3c717:	ba a3 00 00 00       	mov    edx,0xa3
   3c71c:	31 c0                	xor    eax,eax
   3c71e:	e8 0d b9 ff ff       	call   _error_report
show_branch_29:
   3c723:	83 7e 08 00          	cmp    DWORD PTR [esi+0x8],0x0
   3c727:	75 11                	jne    show_branch_30
   3c729:	bb f3 9b 00 00       	mov    ebx,@obj3:classes_cpp_variable_4                             ; fixup: num: 10634, src obj: 1, src ofs: 0x3c72a, dst obj: 3, dst ofs: 0x9bf3
   3c72e:	ba a4 00 00 00       	mov    edx,0xa4
   3c733:	31 c0                	xor    eax,eax
   3c735:	e8 f6 b8 ff ff       	call   _error_report
show_branch_30:
   3c73a:	8b 01                	mov    eax,DWORD PTR [ecx]
   3c73c:	89 06                	mov    DWORD PTR [esi],eax
   3c73e:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
   3c741:	89 46 04             	mov    DWORD PTR [esi+0x4],eax
   3c744:	80 79 08 00          	cmp    BYTE PTR [ecx+0x8],0x0
   3c748:	75 25                	jne    show_branch_31
   3c74a:	8b 01                	mov    eax,DWORD PTR [ecx]
   3c74c:	0f af 41 04          	imul   eax,DWORD PTR [ecx+0x4]
   3c750:	8b 51 0d             	mov    edx,DWORD PTR [ecx+0xd]
   3c753:	8b 7e 08             	mov    edi,DWORD PTR [esi+0x8]
   3c756:	89 d6                	mov    esi,edx
   3c758:	89 c1                	mov    ecx,eax
   3c75a:	57                   	push   edi
   3c75b:	89 c8                	mov    eax,ecx
   3c75d:	c1 e9 02             	shr    ecx,0x2
   3c760:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
   3c762:	8a c8                	mov    cl,al
   3c764:	80 e1 03             	and    cl,0x3
   3c767:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
   3c769:	5f                   	pop    edi
   3c76a:	e9 7c 00 00 00       	jmp    show_branch_35
show_branch_31:
   3c76f:	31 c0                	xor    eax,eax
   3c771:	89 44 24 2c          	mov    DWORD PTR [esp+0x2c],eax
   3c775:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
   3c778:	8b 69 0d             	mov    ebp,DWORD PTR [ecx+0xd]
   3c77b:	89 44 24 24          	mov    DWORD PTR [esp+0x24],eax
   3c77f:	8b 41 09             	mov    eax,DWORD PTR [ecx+0x9]
   3c782:	01 e8                	add    eax,ebp
   3c784:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
   3c788:	39 c5                	cmp    ebp,eax
   3c78a:	73 5f                	jae    show_branch_35
show_branch_32:
   3c78c:	8b 44 24 2c          	mov    eax,DWORD PTR [esp+0x2c]
   3c790:	8b 54 24 24          	mov    edx,DWORD PTR [esp+0x24]
   3c794:	01 c2                	add    edx,eax
   3c796:	31 c0                	xor    eax,eax
   3c798:	8a 45 00             	mov    al,BYTE PTR [ebp+0x0]
   3c79b:	89 44 24 2c          	mov    DWORD PTR [esp+0x2c],eax
   3c79f:	45                   	inc    ebp
   3c7a0:	8a 4c 24 2c          	mov    cl,BYTE PTR [esp+0x2c]
   3c7a4:	89 54 24 24          	mov    DWORD PTR [esp+0x24],edx
   3c7a8:	f6 c1 80             	test   cl,0x80
   3c7ab:	74 1c                	je     show_branch_33
   3c7ad:	89 c1                	mov    ecx,eax
   3c7af:	45                   	inc    ebp
   3c7b0:	31 d2                	xor    edx,edx
   3c7b2:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
   3c7b6:	83 e1 7f             	and    ecx,0x7f
   3c7b9:	8a 55 ff             	mov    dl,BYTE PTR [ebp-0x1]
   3c7bc:	89 cb                	mov    ebx,ecx
   3c7be:	89 4c 24 2c          	mov    DWORD PTR [esp+0x2c],ecx
   3c7c2:	e8 09 4c 03 00       	call   memset_
   3c7c7:	eb 1c                	jmp    show_branch_34
show_branch_33:
   3c7c9:	89 c1                	mov    ecx,eax
   3c7cb:	89 ee                	mov    esi,ebp
   3c7cd:	89 d7                	mov    edi,edx
   3c7cf:	8b 5c 24 2c          	mov    ebx,DWORD PTR [esp+0x2c]
   3c7d3:	57                   	push   edi
   3c7d4:	89 c8                	mov    eax,ecx
   3c7d6:	c1 e9 02             	shr    ecx,0x2
   3c7d9:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
   3c7db:	8a c8                	mov    cl,al
   3c7dd:	80 e1 03             	and    cl,0x3
   3c7e0:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
   3c7e2:	5f                   	pop    edi
   3c7e3:	01 dd                	add    ebp,ebx
show_branch_34:
   3c7e5:	3b 6c 24 14          	cmp    ebp,DWORD PTR [esp+0x14]
   3c7e9:	72 a1                	jb     show_branch_32
show_branch_35:
   3c7eb:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
   3c7ef:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 10640, src obj: 1, src ofs: 0x3c7f0, dst obj: 3, dst ofs: 0x25a88
   3c7f4:	e8 37 f9 00 00       	call   insert_bitmap
show_branch_36:
   3c7f9:	83 c4 30             	add    esp,0x30
   3c7fc:	5d                   	pop    ebp
   3c7fd:	5f                   	pop    edi
   3c7fe:	5e                   	pop    esi
   3c7ff:	5a                   	pop    edx
   3c800:	59                   	pop    ecx
   3c801:	5b                   	pop    ebx
   3c802:	c3                   	ret    
   3c803:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   3c809:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
   3c80f:	90                   	nop

;-------------------------------------------------
;  Function 'move'                               -
;-------------------------------------------------
move:
   3c810:	53                   	push   ebx
   3c811:	51                   	push   ecx
   3c812:	52                   	push   edx
   3c813:	56                   	push   esi
   3c814:	57                   	push   edi
   3c815:	83 ec 04             	sub    esp,0x4
   3c818:	83 b8 84 10 00 00 00 	cmp    DWORD PTR [eax+0x1084],0x0
   3c81f:	7c 2e                	jl     move_branch_1
   3c821:	d9 44 24 24          	fld    DWORD PTR [esp+0x24]
   3c825:	e8 1e 95 03 00       	call   __CHP
   3c82a:	db 1c 24             	fistp  DWORD PTR [esp]
   3c82d:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
   3c831:	89 c2                	mov    edx,eax
   3c833:	8b 70 28             	mov    esi,DWORD PTR [eax+0x28]
   3c836:	8b 78 24             	mov    edi,DWORD PTR [eax+0x24]
   3c839:	8b 1c 24             	mov    ebx,DWORD PTR [esp]
   3c83c:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 10642, src obj: 1, src ofs: 0x3c83d, dst obj: 3, dst ofs: 0x25a84
   3c841:	53                   	push   ebx
   3c842:	8b 5c 24 20          	mov    ebx,DWORD PTR [esp+0x20]
   3c846:	01 f1                	add    ecx,esi
   3c848:	01 fb                	add    ebx,edi
   3c84a:	e8 c1 03 01 00       	call   move_bitmap
move_branch_1:
   3c84f:	83 c4 04             	add    esp,0x4
   3c852:	5f                   	pop    edi
   3c853:	5e                   	pop    esi
   3c854:	5a                   	pop    edx
   3c855:	59                   	pop    ecx
   3c856:	5b                   	pop    ebx
   3c857:	c2 0c 00             	ret    0xc
   3c85a:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'move_mod_76'                        -
;-------------------------------------------------
move_mod_76:
   3c860:	51                   	push   ecx
   3c861:	56                   	push   esi
   3c862:	83 ec 04             	sub    esp,0x4
   3c865:	83 b8 84 10 00 00 00 	cmp    DWORD PTR [eax+0x1084],0x0
   3c86c:	7c 26                	jl     move_mod_76_branch_1
   3c86e:	d9 44 24 10          	fld    DWORD PTR [esp+0x10]
   3c872:	e8 d1 94 03 00       	call   __CHP
   3c877:	db 1c 24             	fistp  DWORD PTR [esp]
   3c87a:	8b 48 28             	mov    ecx,DWORD PTR [eax+0x28]
   3c87d:	01 d9                	add    ecx,ebx
   3c87f:	8b 58 24             	mov    ebx,DWORD PTR [eax+0x24]
   3c882:	8b 34 24             	mov    esi,DWORD PTR [esp]
   3c885:	01 d3                	add    ebx,edx
   3c887:	56                   	push   esi
   3c888:	89 c2                	mov    edx,eax
   3c88a:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 10641, src obj: 1, src ofs: 0x3c88b, dst obj: 3, dst ofs: 0x25a84
   3c88f:	e8 7c 03 01 00       	call   move_bitmap
move_mod_76_branch_1:
   3c894:	83 c4 04             	add    esp,0x4
   3c897:	5e                   	pop    esi
   3c898:	59                   	pop    ecx
   3c899:	c2 04 00             	ret    0x4
   3c89c:	8d 44 20 00          	lea    eax,[eax+eiz*1+0x0]

;-------------------------------------------------
;  Function 'go_to_frame_mod_76'                 -
;-------------------------------------------------
go_to_frame_mod_76:
   3c8a0:	53                   	push   ebx
   3c8a1:	51                   	push   ecx
   3c8a2:	56                   	push   esi
   3c8a3:	57                   	push   edi
   3c8a4:	55                   	push   ebp
   3c8a5:	89 c1                	mov    ecx,eax
   3c8a7:	89 d6                	mov    esi,edx
   3c8a9:	3b b0 7c 10 00 00    	cmp    esi,DWORD PTR [eax+0x107c]
   3c8af:	7f 18                	jg     go_to_frame_mod_76_branch_1
   3c8b1:	8b 80 78 10 00 00    	mov    eax,DWORD PTR [eax+0x1078]
   3c8b7:	8b 99 7c 10 00 00    	mov    ebx,DWORD PTR [ecx+0x107c]
   3c8bd:	39 d8                	cmp    eax,ebx
   3c8bf:	7f 08                	jg     go_to_frame_mod_76_branch_1
   3c8c1:	3b 99 6c 10 00 00    	cmp    ebx,DWORD PTR [ecx+0x106c]
   3c8c7:	7d 28                	jge    go_to_frame_mod_76_branch_2
go_to_frame_mod_76_branch_1:
   3c8c9:	8b 69 10             	mov    ebp,DWORD PTR [ecx+0x10]
   3c8cc:	55                   	push   ebp
   3c8cd:	56                   	push   esi
   3c8ce:	68 56 9e 00 00       	push   @obj3:classes_cpp_variable_27                                ; fixup: num: 10646, src obj: 1, src ofs: 0x3c8cf, dst obj: 3, dst ofs: 0x9e56
   3c8d3:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 10645, src obj: 1, src ofs: 0x3c8d4, dst obj: 3, dst ofs: 0x237fc
   3c8d8:	bb fc 37 02 00       	mov    ebx,@obj3:log_buffer                                         ; fixup: num: 10644, src obj: 1, src ofs: 0x3c8d9, dst obj: 3, dst ofs: 0x237fc
   3c8dd:	e8 ff 42 03 00       	call   sprintf_
   3c8e2:	83 c4 10             	add    esp,0x10
   3c8e5:	ba 2a 02 00 00       	mov    edx,0x22a
   3c8ea:	31 c0                	xor    eax,eax
   3c8ec:	e8 3f b7 ff ff       	call   _error_report
go_to_frame_mod_76_branch_2:
   3c8f1:	8b 81 84 10 00 00    	mov    eax,DWORD PTR [ecx+0x1084]
   3c8f7:	48                   	dec    eax
   3c8f8:	89 81 84 10 00 00    	mov    DWORD PTR [ecx+0x1084],eax
   3c8fe:	83 f8 ff             	cmp    eax,0xffffffff
   3c901:	75 15                	jne    go_to_frame_mod_76_branch_3
   3c903:	83 b9 64 10 00 00 00 	cmp    DWORD PTR [ecx+0x1064],0x0
   3c90a:	7c 0c                	jl     go_to_frame_mod_76_branch_3
   3c90c:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 10643, src obj: 1, src ofs: 0x3c90d, dst obj: 3, dst ofs: 0x25a88
   3c911:	89 ca                	mov    edx,ecx
   3c913:	e8 d8 fd 00 00       	call   remove_bitmap
go_to_frame_mod_76_branch_3:
   3c918:	83 fe ff             	cmp    esi,0xffffffff
   3c91b:	75 56                	jne    go_to_frame_mod_76_branch_6
   3c91d:	8b 81 64 10 00 00    	mov    eax,DWORD PTR [ecx+0x1064]
   3c923:	48                   	dec    eax
   3c924:	8b 91 78 10 00 00    	mov    edx,DWORD PTR [ecx+0x1078]
   3c92a:	89 81 64 10 00 00    	mov    DWORD PTR [ecx+0x1064],eax
   3c930:	39 d0                	cmp    eax,edx
   3c932:	0f 8d 8f 00 00 00    	jge    go_to_frame_mod_76_branch_10
   3c938:	8a 71 50             	mov    dh,BYTE PTR [ecx+0x50]
   3c93b:	84 f6                	test   dh,dh
   3c93d:	74 1b                	je     go_to_frame_mod_76_branch_5
   3c93f:	80 79 51 00          	cmp    BYTE PTR [ecx+0x51],0x0
   3c943:	74 5b                	je     go_to_frame_mod_76_branch_7
   3c945:	c6 41 4c 00          	mov    BYTE PTR [ecx+0x4c],0x0
go_to_frame_mod_76_branch_4:
   3c949:	8b 81 78 10 00 00    	mov    eax,DWORD PTR [ecx+0x1078]
   3c94f:	89 81 64 10 00 00    	mov    DWORD PTR [ecx+0x1064],eax
   3c955:	e9 6d 00 00 00       	jmp    go_to_frame_mod_76_branch_10
go_to_frame_mod_76_branch_5:
   3c95a:	8b 81 78 10 00 00    	mov    eax,DWORD PTR [ecx+0x1078]
   3c960:	8b 59 38             	mov    ebx,DWORD PTR [ecx+0x38]
   3c963:	89 81 64 10 00 00    	mov    DWORD PTR [ecx+0x1064],eax
   3c969:	83 fb 01             	cmp    ebx,0x1
   3c96c:	75 59                	jne    go_to_frame_mod_76_branch_10
   3c96e:	88 71 52             	mov    BYTE PTR [ecx+0x52],dh
   3c971:	eb 54                	jmp    go_to_frame_mod_76_branch_10
go_to_frame_mod_76_branch_6:
   3c973:	83 fe fe             	cmp    esi,0xfffffffe
   3c976:	75 49                	jne    go_to_frame_mod_76_branch_9
   3c978:	8b b1 64 10 00 00    	mov    esi,DWORD PTR [ecx+0x1064]
   3c97e:	46                   	inc    esi
   3c97f:	8b b9 6c 10 00 00    	mov    edi,DWORD PTR [ecx+0x106c]
   3c985:	89 b1 64 10 00 00    	mov    DWORD PTR [ecx+0x1064],esi
   3c98b:	39 fe                	cmp    esi,edi
   3c98d:	7e 38                	jle    go_to_frame_mod_76_branch_10
   3c98f:	8a 61 50             	mov    ah,BYTE PTR [ecx+0x50]
   3c992:	84 e4                	test   ah,ah
   3c994:	74 18                	je     go_to_frame_mod_76_branch_8
   3c996:	80 79 51 00          	cmp    BYTE PTR [ecx+0x51],0x0
   3c99a:	74 ad                	je     go_to_frame_mod_76_branch_4
   3c99c:	c6 41 4c 01          	mov    BYTE PTR [ecx+0x4c],0x1
go_to_frame_mod_76_branch_7:
   3c9a0:	8b 81 6c 10 00 00    	mov    eax,DWORD PTR [ecx+0x106c]
   3c9a6:	89 81 64 10 00 00    	mov    DWORD PTR [ecx+0x1064],eax
   3c9ac:	eb 19                	jmp    go_to_frame_mod_76_branch_10
go_to_frame_mod_76_branch_8:
   3c9ae:	8b 69 38             	mov    ebp,DWORD PTR [ecx+0x38]
   3c9b1:	89 b9 64 10 00 00    	mov    DWORD PTR [ecx+0x1064],edi
   3c9b7:	83 fd 01             	cmp    ebp,0x1
   3c9ba:	75 0b                	jne    go_to_frame_mod_76_branch_10
   3c9bc:	88 61 52             	mov    BYTE PTR [ecx+0x52],ah
   3c9bf:	eb 06                	jmp    go_to_frame_mod_76_branch_10
go_to_frame_mod_76_branch_9:
   3c9c1:	89 b1 64 10 00 00    	mov    DWORD PTR [ecx+0x1064],esi
go_to_frame_mod_76_branch_10:
   3c9c7:	8b 71 38             	mov    esi,DWORD PTR [ecx+0x38]
   3c9ca:	83 fe 01             	cmp    esi,0x1
   3c9cd:	0f 84 b1 00 00 00    	je     go_to_frame_mod_76_branch_12
   3c9d3:	83 fe 04             	cmp    esi,0x4
   3c9d6:	0f 84 a8 00 00 00    	je     go_to_frame_mod_76_branch_12
   3c9dc:	d9 81 a8 10 00 00    	fld    DWORD PTR [ecx+0x10a8]
   3c9e2:	8b b1 a0 10 00 00    	mov    esi,DWORD PTR [ecx+0x10a0]
   3c9e8:	8b a9 88 10 00 00    	mov    ebp,DWORD PTR [ecx+0x1088]
   3c9ee:	8b 41 3c             	mov    eax,DWORD PTR [ecx+0x3c]
   3c9f1:	01 ee                	add    esi,ebp
   3c9f3:	d8 41 1c             	fadd   DWORD PTR [ecx+0x1c]
   3c9f6:	01 f0                	add    eax,esi
   3c9f8:	89 41 3c             	mov    DWORD PTR [ecx+0x3c],eax
   3c9fb:	8b 51 40             	mov    edx,DWORD PTR [ecx+0x40]
   3c9fe:	03 91 a4 10 00 00    	add    edx,DWORD PTR [ecx+0x10a4]
   3ca04:	8b 41 10             	mov    eax,DWORD PTR [ecx+0x10]
   3ca07:	89 51 40             	mov    DWORD PTR [ecx+0x40],edx
   3ca0a:	ba 89 9e 00 00       	mov    edx,@obj3:classes_cpp_variable_28                            ; fixup: num: 10648, src obj: 1, src ofs: 0x3ca0b, dst obj: 3, dst ofs: 0x9e89
   3ca0f:	d9 59 1c             	fstp   DWORD PTR [ecx+0x1c]
   3ca12:	e8 19 9a 03 00       	call   strcmp_
   3ca17:	85 c0                	test   eax,eax
   3ca19:	74 69                	je     go_to_frame_mod_76_branch_12
   3ca1b:	ba 8f 9e 00 00       	mov    edx,@obj3:classes_cpp_variable_29                            ; fixup: num: 10647, src obj: 1, src ofs: 0x3ca1c, dst obj: 3, dst ofs: 0x9e8f
   3ca20:	8b 41 10             	mov    eax,DWORD PTR [ecx+0x10]
   3ca23:	e8 08 9a 03 00       	call   strcmp_
   3ca28:	85 c0                	test   eax,eax
   3ca2a:	74 58                	je     go_to_frame_mod_76_branch_12
   3ca2c:	8b 35 08 3c 01 00    	mov    esi,DWORD PTR ds:@obj3:move_min_x                            ; fixup: num: 10654, src obj: 1, src ofs: 0x3ca2e, dst obj: 3, dst ofs: 0x13c08
   3ca32:	8b 59 24             	mov    ebx,DWORD PTR [ecx+0x24]
   3ca35:	8b 79 3c             	mov    edi,DWORD PTR [ecx+0x3c]
   3ca38:	29 de                	sub    esi,ebx
   3ca3a:	39 fe                	cmp    esi,edi
   3ca3c:	7e 27                	jle    go_to_frame_mod_76_branch_11
   3ca3e:	56                   	push   esi
   3ca3f:	53                   	push   ebx
   3ca40:	a1 08 3c 01 00       	mov    eax,ds:@obj3:move_min_x                                      ; fixup: num: 10653, src obj: 1, src ofs: 0x3ca41, dst obj: 3, dst ofs: 0x13c08
   3ca45:	50                   	push   eax
   3ca46:	57                   	push   edi
   3ca47:	68 97 9e 00 00       	push   @obj3:classes_cpp_variable_30                                ; fixup: num: 10652, src obj: 1, src ofs: 0x3ca48, dst obj: 3, dst ofs: 0x9e97
   3ca4c:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 10651, src obj: 1, src ofs: 0x3ca4d, dst obj: 3, dst ofs: 0x237fc
   3ca51:	e8 8b 41 03 00       	call   sprintf_
   3ca56:	8b 35 08 3c 01 00    	mov    esi,DWORD PTR ds:@obj3:move_min_x                            ; fixup: num: 10650, src obj: 1, src ofs: 0x3ca58, dst obj: 3, dst ofs: 0x13c08
   3ca5c:	2b 71 24             	sub    esi,DWORD PTR [ecx+0x24]
   3ca5f:	83 c4 18             	add    esp,0x18
   3ca62:	89 71 3c             	mov    DWORD PTR [ecx+0x3c],esi
go_to_frame_mod_76_branch_11:
   3ca65:	8b 71 3c             	mov    esi,DWORD PTR [ecx+0x3c]
   3ca68:	8b 79 24             	mov    edi,DWORD PTR [ecx+0x24]
   3ca6b:	8b 69 2c             	mov    ebp,DWORD PTR [ecx+0x2c]
   3ca6e:	01 fe                	add    esi,edi
   3ca70:	a1 0c 3c 01 00       	mov    eax,ds:@obj3:move_max_x                                      ; fixup: num: 10649, src obj: 1, src ofs: 0x3ca71, dst obj: 3, dst ofs: 0x13c0c
   3ca75:	01 ee                	add    esi,ebp
   3ca77:	39 c6                	cmp    esi,eax
   3ca79:	7e 09                	jle    go_to_frame_mod_76_branch_12
   3ca7b:	89 c6                	mov    esi,eax
   3ca7d:	29 fe                	sub    esi,edi
   3ca7f:	29 ee                	sub    esi,ebp
   3ca81:	89 71 3c             	mov    DWORD PTR [ecx+0x3c],esi
go_to_frame_mod_76_branch_12:
   3ca84:	8b 81 64 10 00 00    	mov    eax,DWORD PTR [ecx+0x1064]
   3ca8a:	c7 81 88 10 00 00 00 00 00 00 	mov    DWORD PTR [ecx+0x1088],0x0
   3ca94:	8b 44 81 5c          	mov    eax,DWORD PTR [ecx+eax*4+0x5c]
   3ca98:	8b 00                	mov    eax,DWORD PTR [eax]
   3ca9a:	89 41 24             	mov    DWORD PTR [ecx+0x24],eax
   3ca9d:	8b 81 64 10 00 00    	mov    eax,DWORD PTR [ecx+0x1064]
   3caa3:	8b 44 81 5c          	mov    eax,DWORD PTR [ecx+eax*4+0x5c]
   3caa7:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
   3caaa:	89 41 28             	mov    DWORD PTR [ecx+0x28],eax
   3caad:	89 c8                	mov    eax,ecx
   3caaf:	e8 dc f7 ff ff       	call   show
   3cab4:	5d                   	pop    ebp
   3cab5:	5f                   	pop    edi
   3cab6:	5e                   	pop    esi
   3cab7:	59                   	pop    ecx
   3cab8:	5b                   	pop    ebx
   3cab9:	c3                   	ret    
   3caba:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'refresh'                            -
;-------------------------------------------------
refresh:
   3cac0:	c7 80 ac 10 00 00 ff ff ff ff 	mov    DWORD PTR [eax+0x10ac],0xffffffff
   3caca:	c7 80 b4 10 00 00 00 00 c6 c2 	mov    DWORD PTR [eax+0x10b4],0xc2c60000
   3cad4:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   3cada:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]

;-------------------------------------------------
;  Function 'update_mod_76'                      -
;-------------------------------------------------
update_mod_76:
   3cae0:	53                   	push   ebx
   3cae1:	51                   	push   ecx
   3cae2:	52                   	push   edx
   3cae3:	56                   	push   esi
   3cae4:	57                   	push   edi
   3cae5:	55                   	push   ebp
   3cae6:	83 ec 10             	sub    esp,0x10
   3cae9:	89 c7                	mov    edi,eax
   3caeb:	83 b8 64 10 00 00 00 	cmp    DWORD PTR [eax+0x1064],0x0
   3caf2:	0f 8c ee 01 00 00    	jl     anim_distance_branch_11
   3caf8:	80 78 52 00          	cmp    BYTE PTR [eax+0x52],0x0
   3cafc:	0f 84 e4 01 00 00    	je     anim_distance_branch_11
   3cb02:	e8 fb 55 03 00       	call   clock_
   3cb07:	3b 87 5c 10 00 00    	cmp    eax,DWORD PTR [edi+0x105c]
   3cb0d:	0f 82 cf 01 00 00    	jb     anim_distance_branch_10
   3cb13:	80 7f 4c 00          	cmp    BYTE PTR [edi+0x4c],0x0
   3cb17:	74 43                	je     anim_distance_branch_1
   3cb19:	ba ff ff ff ff       	mov    edx,0xffffffff
   3cb1e:	eb 41                	jmp    anim_distance_branch_2

;-------------------------------------------------
;  Function 'anim_distance'                      -
;-------------------------------------------------
anim_distance:
   3cb20:	53                   	push   ebx
   3cb21:	51                   	push   ecx
   3cb22:	56                   	push   esi
   3cb23:	57                   	push   edi
   3cb24:	89 c3                	mov    ebx,eax
   3cb26:	89 d1                	mov    ecx,edx
   3cb28:	8b 70 3c             	mov    esi,DWORD PTR [eax+0x3c]
   3cb2b:	03 70 24             	add    esi,DWORD PTR [eax+0x24]
   3cb2e:	8b 53 2c             	mov    edx,DWORD PTR [ebx+0x2c]
   3cb31:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
   3cb34:	c1 fa 1f             	sar    edx,0x1f
   3cb37:	2b c2                	sub    eax,edx
   3cb39:	d1 f8                	sar    eax,1
   3cb3b:	01 c6                	add    esi,eax
   3cb3d:	8b 41 2c             	mov    eax,DWORD PTR [ecx+0x2c]
   3cb40:	89 c2                	mov    edx,eax
   3cb42:	c1 fa 1f             	sar    edx,0x1f
   3cb45:	2b c2                	sub    eax,edx
   3cb47:	d1 f8                	sar    eax,1
   3cb49:	8b 79 24             	mov    edi,DWORD PTR [ecx+0x24]
   3cb4c:	8b 59 3c             	mov    ebx,DWORD PTR [ecx+0x3c]
   3cb4f:	01 fb                	add    ebx,edi
   3cb51:	01 d8                	add    eax,ebx
   3cb53:	29 c6                	sub    esi,eax
   3cb55:	89 f0                	mov    eax,esi
   3cb57:	5f                   	pop    edi
   3cb58:	5e                   	pop    esi
   3cb59:	59                   	pop    ecx
   3cb5a:	5b                   	pop    ebx
   3cb5b:	c3                   	ret    
anim_distance_branch_1:
   3cb5c:	ba fe ff ff ff       	mov    edx,0xfffffffe
anim_distance_branch_2:
   3cb61:	89 f8                	mov    eax,edi
   3cb63:	e8 38 fd ff ff       	call   go_to_frame_mod_76
   3cb68:	e8 95 55 03 00       	call   clock_
   3cb6d:	8b 97 60 10 00 00    	mov    edx,DWORD PTR [edi+0x1060]
   3cb73:	c6 47 4e 01          	mov    BYTE PTR [edi+0x4e],0x1
   3cb77:	01 d0                	add    eax,edx
   3cb79:	8b 4f 38             	mov    ecx,DWORD PTR [edi+0x38]
   3cb7c:	89 87 5c 10 00 00    	mov    DWORD PTR [edi+0x105c],eax
   3cb82:	83 f9 02             	cmp    ecx,0x2
   3cb85:	0f 84 5b 01 00 00    	je     anim_distance_branch_11
   3cb8b:	83 f9 01             	cmp    ecx,0x1
   3cb8e:	75 37                	jne    anim_distance_branch_4
   3cb90:	80 7f 53 00          	cmp    BYTE PTR [edi+0x53],0x0
   3cb94:	0f 84 4c 01 00 00    	je     anim_distance_branch_11
   3cb9a:	8b 87 64 10 00 00    	mov    eax,DWORD PTR [edi+0x1064]
   3cba0:	3b 87 6c 10 00 00    	cmp    eax,DWORD PTR [edi+0x106c]
   3cba6:	0f 85 3a 01 00 00    	jne    anim_distance_branch_11
   3cbac:	8b 47 10             	mov    eax,DWORD PTR [edi+0x10]
   3cbaf:	e8 0c 61 01 00       	call   get_anim
   3cbb4:	85 c0                	test   eax,eax
   3cbb6:	74 08                	je     anim_distance_branch_3
   3cbb8:	c6 40 1c 00          	mov    BYTE PTR [eax+0x1c],0x0
   3cbbc:	c6 40 1d 00          	mov    BYTE PTR [eax+0x1d],0x0
anim_distance_branch_3:
   3cbc0:	30 c0                	xor    al,al
   3cbc2:	e9 21 01 00 00       	jmp    anim_distance_branch_12
anim_distance_branch_4:
   3cbc7:	c7 87 9c 10 00 00 00 00 00 00 	mov    DWORD PTR [edi+0x109c],0x0
   3cbd1:	8b 35 88 5a 02 00    	mov    esi,DWORD PTR ds:@obj3:the_list                              ; fixup: num: 10655, src obj: 1, src ofs: 0x3cbd3, dst obj: 3, dst ofs: 0x25a88
   3cbd7:	c6 47 4d 01          	mov    BYTE PTR [edi+0x4d],0x1
   3cbdb:	85 f6                	test   esi,esi
   3cbdd:	0f 84 03 01 00 00    	je     anim_distance_branch_11
anim_distance_branch_5:
   3cbe3:	8b 46 38             	mov    eax,DWORD PTR [esi+0x38]
   3cbe6:	83 f8 02             	cmp    eax,0x2
   3cbe9:	0f 84 dc 00 00 00    	je     anim_distance_branch_9
   3cbef:	83 f8 03             	cmp    eax,0x3
   3cbf2:	0f 84 d3 00 00 00    	je     anim_distance_branch_9
   3cbf8:	83 f8 15             	cmp    eax,0x15
   3cbfb:	0f 84 ca 00 00 00    	je     anim_distance_branch_9
   3cc01:	83 f8 19             	cmp    eax,0x19
   3cc04:	0f 84 c1 00 00 00    	je     anim_distance_branch_9
   3cc0a:	39 fe                	cmp    esi,edi
   3cc0c:	0f 84 b9 00 00 00    	je     anim_distance_branch_9
   3cc12:	80 be a0 11 00 00 38 	cmp    BYTE PTR [esi+0x11a0],0x38
   3cc19:	0f 84 ac 00 00 00    	je     anim_distance_branch_9
   3cc1f:	db 47 20             	fild   DWORD PTR [edi+0x20]
   3cc22:	d8 47 1c             	fadd   DWORD PTR [edi+0x1c]
   3cc25:	e8 1e 91 03 00       	call   __CHP
   3cc2a:	db 5c 24 04          	fistp  DWORD PTR [esp+0x4]
   3cc2e:	d9 47 1c             	fld    DWORD PTR [edi+0x1c]
   3cc31:	e8 12 91 03 00       	call   __CHP
   3cc36:	db 5c 24 08          	fistp  DWORD PTR [esp+0x8]
   3cc3a:	db 46 20             	fild   DWORD PTR [esi+0x20]
   3cc3d:	d8 46 1c             	fadd   DWORD PTR [esi+0x1c]
   3cc40:	e8 03 91 03 00       	call   __CHP
   3cc45:	db 5c 24 0c          	fistp  DWORD PTR [esp+0xc]
   3cc49:	d9 46 1c             	fld    DWORD PTR [esi+0x1c]
   3cc4c:	e8 f7 90 03 00       	call   __CHP
   3cc51:	db 1c 24             	fistp  DWORD PTR [esp]
   3cc54:	8b 6c 24 04          	mov    ebp,DWORD PTR [esp+0x4]
   3cc58:	3b 2c 24             	cmp    ebp,DWORD PTR [esp]
   3cc5b:	7d 04                	jge    anim_distance_branch_6
   3cc5d:	30 c0                	xor    al,al
   3cc5f:	eb 10                	jmp    anim_distance_branch_8
anim_distance_branch_6:
   3cc61:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
   3cc65:	3b 44 24 08          	cmp    eax,DWORD PTR [esp+0x8]
   3cc69:	7d 04                	jge    anim_distance_branch_7
   3cc6b:	30 c0                	xor    al,al
   3cc6d:	eb 02                	jmp    anim_distance_branch_8
anim_distance_branch_7:
   3cc6f:	b0 01                	mov    al,0x1
anim_distance_branch_8:
   3cc71:	84 c0                	test   al,al
   3cc73:	74 56                	je     anim_distance_branch_9
   3cc75:	89 f2                	mov    edx,esi
   3cc77:	89 f8                	mov    eax,edi
   3cc79:	e8 82 ea ff ff       	call   bm_overlaps
   3cc7e:	84 c0                	test   al,al
   3cc80:	74 49                	je     anim_distance_branch_9
   3cc82:	8b 57 3c             	mov    edx,DWORD PTR [edi+0x3c]
   3cc85:	8b 5f 24             	mov    ebx,DWORD PTR [edi+0x24]
   3cc88:	8b 46 3c             	mov    eax,DWORD PTR [esi+0x3c]
   3cc8b:	8b 4e 24             	mov    ecx,DWORD PTR [esi+0x24]
   3cc8e:	8b 6f 28             	mov    ebp,DWORD PTR [edi+0x28]
   3cc91:	01 da                	add    edx,ebx
   3cc93:	01 c8                	add    eax,ecx
   3cc95:	8b 5f 40             	mov    ebx,DWORD PTR [edi+0x40]
   3cc98:	8b 4e 28             	mov    ecx,DWORD PTR [esi+0x28]
   3cc9b:	29 c2                	sub    edx,eax
   3cc9d:	8b 46 40             	mov    eax,DWORD PTR [esi+0x40]
   3cca0:	01 eb                	add    ebx,ebp
   3cca2:	01 c8                	add    eax,ecx
   3cca4:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
   3cca7:	29 c3                	sub    ebx,eax
   3cca9:	8b 47 04             	mov    eax,DWORD PTR [edi+0x4]
   3ccac:	e8 2f dd ff ff       	call   collide
   3ccb1:	84 c0                	test   al,al
   3ccb3:	74 16                	je     anim_distance_branch_9
   3ccb5:	c6 47 4d 00          	mov    BYTE PTR [edi+0x4d],0x0
   3ccb9:	b0 01                	mov    al,0x1
   3ccbb:	89 b7 9c 10 00 00    	mov    DWORD PTR [edi+0x109c],esi
   3ccc1:	83 c4 10             	add    esp,0x10
   3ccc4:	5d                   	pop    ebp
   3ccc5:	5f                   	pop    edi
   3ccc6:	5e                   	pop    esi
   3ccc7:	5a                   	pop    edx
   3ccc8:	59                   	pop    ecx
   3ccc9:	5b                   	pop    ebx
   3ccca:	c3                   	ret    
anim_distance_branch_9:
   3cccb:	8b 76 48             	mov    esi,DWORD PTR [esi+0x48]
   3ccce:	85 f6                	test   esi,esi
   3ccd0:	0f 85 0d ff ff ff    	jne    anim_distance_branch_5
   3ccd6:	b0 01                	mov    al,0x1
   3ccd8:	83 c4 10             	add    esp,0x10
   3ccdb:	5d                   	pop    ebp
   3ccdc:	5f                   	pop    edi
   3ccdd:	5e                   	pop    esi
   3ccde:	5a                   	pop    edx
   3ccdf:	59                   	pop    ecx
   3cce0:	5b                   	pop    ebx
   3cce1:	c3                   	ret    
anim_distance_branch_10:
   3cce2:	c6 47 4e 00          	mov    BYTE PTR [edi+0x4e],0x0
anim_distance_branch_11:
   3cce6:	b0 01                	mov    al,0x1
anim_distance_branch_12:
   3cce8:	83 c4 10             	add    esp,0x10
   3cceb:	5d                   	pop    ebp
   3ccec:	5f                   	pop    edi
   3cced:	5e                   	pop    esi
   3ccee:	5a                   	pop    edx
   3ccef:	59                   	pop    ecx
   3ccf0:	5b                   	pop    ebx
   3ccf1:	c3                   	ret    
   3ccf2:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   3ccf8:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
   3ccfe:	8b c0                	mov    eax,eax

;-------------------------------------------------
;  Function 'W?$ct:NON_PLAYER_CHARACTER$n(pn$_n  -
;  pc_type$$pn(ui)pnv)_'                         -
;-------------------------------------------------
W?$ct:NON_PLAYER_CHARACTER$n(pn$_npc_type$$pn(ui)pnv)_:
   3cd00:	51                   	push   ecx
   3cd01:	56                   	push   esi
   3cd02:	57                   	push   edi
   3cd03:	55                   	push   ebp
   3cd04:	83 ec 04             	sub    esp,0x4
   3cd07:	89 c6                	mov    esi,eax
   3cd09:	89 d7                	mov    edi,edx
   3cd0b:	8b 52 34             	mov    edx,DWORD PTR [edx+0x34]
   3cd0e:	52                   	push   edx
   3cd0f:	53                   	push   ebx
   3cd10:	6a 05                	push   0x5
   3cd12:	83 ec 04             	sub    esp,0x4
   3cd15:	db 47 08             	fild   DWORD PTR [edi+0x8]
   3cd18:	d9 1c 24             	fstp   DWORD PTR [esp]
   3cd1b:	8b 5f 04             	mov    ebx,DWORD PTR [edi+0x4]
   3cd1e:	8b 0f                	mov    ecx,DWORD PTR [edi]
   3cd20:	53                   	push   ebx
   3cd21:	8b 57 14             	mov    edx,DWORD PTR [edi+0x14]
   3cd24:	8b 5f 18             	mov    ebx,DWORD PTR [edi+0x18]
   3cd27:	e8 64 eb ff ff       	call   W?$ct:ANIMATION$n(pnapnaiibipn(ui)pnvpna)_
   3cd2c:	89 c6                	mov    esi,eax
   3cd2e:	c6 80 b4 11 00 00 00 	mov    BYTE PTR [eax+0x11b4],0x0
   3cd35:	b8 28 11 00 00       	mov    eax,0x1128
   3cd3a:	e8 d9 51 03 00       	call   W?$nwn(ui)pnv
   3cd3f:	89 c5                	mov    ebp,eax
   3cd41:	85 c0                	test   eax,eax
   3cd43:	74 33                	je     W?$ct:NON_PLAYER_CHARACTER$n(pn$_npc_type$$pn(ui)pnv)__branch_1
   3cd45:	6a 00                	push   0x0
   3cd47:	6a 00                	push   0x0
   3cd49:	6a 00                	push   0x0
   3cd4b:	6a 00                	push   0x0
   3cd4d:	68 00 00 c6 c2       	push   0xc2c60000
   3cd52:	68 58 02 00 00       	push   0x258
   3cd57:	bb 0a 00 00 00       	mov    ebx,0xa
   3cd5c:	6a 00                	push   0x0
   3cd5e:	31 c0                	xor    eax,eax
   3cd60:	ba bc 9e 00 00       	mov    edx,@obj3:classes_cpp_variable_31                            ; fixup: num: 10657, src obj: 1, src ofs: 0x3cd61, dst obj: 3, dst ofs: 0x9ebc
   3cd65:	e8 ce 9b 03 00       	call   tmpnam_
   3cd6a:	e8 30 42 03 00       	call   strdup_                                                      ; aliases: strdup_, _strdup_
   3cd6f:	89 c1                	mov    ecx,eax
   3cd71:	89 e8                	mov    eax,ebp
   3cd73:	e8 a8 ec ff ff       	call   W?$ct:ANIMATION$n(pnaipnaiibiucucuc)_
W?$ct:NON_PLAYER_CHARACTER$n(pn$_npc_type$$pn(ui)pnv)__branch_1:
   3cd78:	89 86 a8 11 00 00    	mov    DWORD PTR [esi+0x11a8],eax
   3cd7e:	85 c0                	test   eax,eax
   3cd80:	75 0f                	jne    W?$ct:NON_PLAYER_CHARACTER$n(pn$_npc_type$$pn(ui)pnv)__branch_2
   3cd82:	bb c6 9e 00 00       	mov    ebx,@obj3:classes_cpp_variable_32                            ; fixup: num: 10656, src obj: 1, src ofs: 0x3cd83, dst obj: 3, dst ofs: 0x9ec6
   3cd87:	ba 05 03 00 00       	mov    edx,0x305
   3cd8c:	e8 9f b2 ff ff       	call   _error_report
W?$ct:NON_PLAYER_CHARACTER$n(pn$_npc_type$$pn(ui)pnv)__branch_2:
   3cd91:	8b 86 a8 11 00 00    	mov    eax,DWORD PTR [esi+0x11a8]
   3cd97:	c6 40 0c 00          	mov    BYTE PTR [eax+0xc],0x0
   3cd9b:	8b 86 a8 11 00 00    	mov    eax,DWORD PTR [esi+0x11a8]
   3cda1:	c6 40 50 00          	mov    BYTE PTR [eax+0x50],0x0
   3cda5:	8b 86 a8 11 00 00    	mov    eax,DWORD PTR [esi+0x11a8]
   3cdab:	c6 40 53 00          	mov    BYTE PTR [eax+0x53],0x0
   3cdaf:	8b 86 a8 11 00 00    	mov    eax,DWORD PTR [esi+0x11a8]
   3cdb5:	c6 40 52 00          	mov    BYTE PTR [eax+0x52],0x0
   3cdb9:	8b 96 a8 11 00 00    	mov    edx,DWORD PTR [esi+0x11a8]
   3cdbf:	8b aa 84 10 00 00    	mov    ebp,DWORD PTR [edx+0x1084]
   3cdc5:	4d                   	dec    ebp
   3cdc6:	89 aa 84 10 00 00    	mov    DWORD PTR [edx+0x1084],ebp
   3cdcc:	83 fd ff             	cmp    ebp,0xffffffff
   3cdcf:	75 13                	jne    W?$ct:NON_PLAYER_CHARACTER$n(pn$_npc_type$$pn(ui)pnv)__branch_3
   3cdd1:	83 ba 64 10 00 00 00 	cmp    DWORD PTR [edx+0x1064],0x0
   3cdd8:	7c 0a                	jl     W?$ct:NON_PLAYER_CHARACTER$n(pn$_npc_type$$pn(ui)pnv)__branch_3
   3cdda:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 10658, src obj: 1, src ofs: 0x3cddb, dst obj: 3, dst ofs: 0x25a88
   3cddf:	e8 0c f9 00 00       	call   remove_bitmap
W?$ct:NON_PLAYER_CHARACTER$n(pn$_npc_type$$pn(ui)pnv)__branch_3:
   3cde4:	c7 86 b0 11 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x11b0],0x0
   3cdee:	8b 86 b0 11 00 00    	mov    eax,DWORD PTR [esi+0x11b0]
   3cdf4:	89 86 ac 11 00 00    	mov    DWORD PTR [esi+0x11ac],eax
   3cdfa:	89 86 88 10 00 00    	mov    DWORD PTR [esi+0x1088],eax
   3ce00:	8b 46 20             	mov    eax,DWORD PTR [esi+0x20]
   3ce03:	89 c2                	mov    edx,eax
   3ce05:	c1 fa 1f             	sar    edx,0x1f
   3ce08:	2b c2                	sub    eax,edx
   3ce0a:	d1 f8                	sar    eax,1
   3ce0c:	8b 57 08             	mov    edx,DWORD PTR [edi+0x8]
   3ce0f:	29 c2                	sub    edx,eax
   3ce11:	89 14 24             	mov    DWORD PTR [esp],edx
   3ce14:	db 04 24             	fild   DWORD PTR [esp]
   3ce17:	83 ec 04             	sub    esp,0x4
   3ce1a:	d9 1c 24             	fstp   DWORD PTR [esp]
   3ce1d:	8b 5f 04             	mov    ebx,DWORD PTR [edi+0x4]
   3ce20:	8b 4e 28             	mov    ecx,DWORD PTR [esi+0x28]
   3ce23:	8b 56 24             	mov    edx,DWORD PTR [esi+0x24]
   3ce26:	29 cb                	sub    ebx,ecx
   3ce28:	8b 0f                	mov    ecx,DWORD PTR [edi]
   3ce2a:	8b 46 2c             	mov    eax,DWORD PTR [esi+0x2c]
   3ce2d:	29 d1                	sub    ecx,edx
   3ce2f:	89 c2                	mov    edx,eax
   3ce31:	c1 fa 1f             	sar    edx,0x1f
   3ce34:	2b c2                	sub    eax,edx
   3ce36:	d1 f8                	sar    eax,1
   3ce38:	8b 6e 30             	mov    ebp,DWORD PTR [esi+0x30]
   3ce3b:	89 ca                	mov    edx,ecx
   3ce3d:	29 eb                	sub    ebx,ebp
   3ce3f:	29 c2                	sub    edx,eax
   3ce41:	89 f0                	mov    eax,esi
   3ce43:	e8 a8 e8 ff ff       	call   set_xyz
   3ce48:	c6 46 0c 00          	mov    BYTE PTR [esi+0xc],0x0
   3ce4c:	c7 46 04 00 00 00 00 	mov    DWORD PTR [esi+0x4],0x0
   3ce53:	89 f0                	mov    eax,esi
   3ce55:	c7 86 78 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x1078],0x0
   3ce5f:	31 d2                	xor    edx,edx
   3ce61:	c7 86 6c 10 00 00 3b 00 00 00 	mov    DWORD PTR [esi+0x106c],0x3b
   3ce6b:	e8 30 fa ff ff       	call   go_to_frame_mod_76
   3ce70:	c6 86 a0 11 00 00 34 	mov    BYTE PTR [esi+0x11a0],0x34
   3ce77:	c6 46 50 01          	mov    BYTE PTR [esi+0x50],0x1
   3ce7b:	c6 46 51 00          	mov    BYTE PTR [esi+0x51],0x0
   3ce7f:	c6 46 4c 00          	mov    BYTE PTR [esi+0x4c],0x0
   3ce83:	8a 86 a0 11 00 00    	mov    al,BYTE PTR [esi+0x11a0]
   3ce89:	88 86 a1 11 00 00    	mov    BYTE PTR [esi+0x11a1],al
   3ce8f:	8b 6f 0c             	mov    ebp,DWORD PTR [edi+0xc]
   3ce92:	89 f3                	mov    ebx,esi
   3ce94:	85 ed                	test   ebp,ebp
   3ce96:	74 14                	je     W?$ct:NON_PLAYER_CHARACTER$n(pn$_npc_type$$pn(ui)pnv)__branch_4
   3ce98:	b8 64 00 00 00       	mov    eax,0x64
   3ce9d:	89 c2                	mov    edx,eax
   3ce9f:	c1 fa 1f             	sar    edx,0x1f
   3cea2:	f7 fd                	idiv   ebp
   3cea4:	89 86 60 10 00 00    	mov    DWORD PTR [esi+0x1060],eax
   3ceaa:	eb 06                	jmp    W?$ct:NON_PLAYER_CHARACTER$n(pn$_npc_type$$pn(ui)pnv)__branch_5
W?$ct:NON_PLAYER_CHARACTER$n(pn$_npc_type$$pn(ui)pnv)__branch_4:
   3ceac:	89 ae 60 10 00 00    	mov    DWORD PTR [esi+0x1060],ebp
W?$ct:NON_PLAYER_CHARACTER$n(pn$_npc_type$$pn(ui)pnv)__branch_5:
   3ceb2:	3b ab 68 10 00 00    	cmp    ebp,DWORD PTR [ebx+0x1068]
   3ceb8:	74 10                	je     W?$ct:NON_PLAYER_CHARACTER$n(pn$_npc_type$$pn(ui)pnv)__branch_6
   3ceba:	c7 83 5c 10 00 00 00 00 00 00 	mov    DWORD PTR [ebx+0x105c],0x0
   3cec4:	89 ab 68 10 00 00    	mov    DWORD PTR [ebx+0x1068],ebp
W?$ct:NON_PLAYER_CHARACTER$n(pn$_npc_type$$pn(ui)pnv)__branch_6:
   3ceca:	c7 46 38 04 00 00 00 	mov    DWORD PTR [esi+0x38],0x4
   3ced1:	c7 86 8c 11 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x118c],0x0
   3cedb:	c7 86 40 11 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x1140],0x0
   3cee5:	c7 86 a4 11 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x11a4],0x0
   3ceef:	c6 86 28 11 00 00 00 	mov    BYTE PTR [esi+0x1128],0x0
   3cef6:	c6 46 08 01          	mov    BYTE PTR [esi+0x8],0x1
   3cefa:	8b 07                	mov    eax,DWORD PTR [edi]
   3cefc:	89 86 98 11 00 00    	mov    DWORD PTR [esi+0x1198],eax
   3cf02:	8a 47 25             	mov    al,BYTE PTR [edi+0x25]
   3cf05:	c7 86 9c 11 00 00 0f 27 00 00 	mov    DWORD PTR [esi+0x119c],0x270f
   3cf0f:	c7 86 88 11 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x1188],0x0
   3cf19:	c7 86 48 11 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x1148],0x0
   3cf23:	c7 86 4c 11 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x114c],0x0
   3cf2d:	c7 86 50 11 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x1150],0x0
   3cf37:	c7 86 54 11 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x1154],0x0
   3cf41:	c7 86 58 11 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x1158],0x0
   3cf4b:	c7 86 5c 11 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x115c],0x0
   3cf55:	c7 86 60 11 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x1160],0x0
   3cf5f:	c7 86 64 11 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x1164],0x0
   3cf69:	88 46 52             	mov    BYTE PTR [esi+0x52],al
   3cf6c:	8b 6f 30             	mov    ebp,DWORD PTR [edi+0x30]
   3cf6f:	55                   	push   ebp
   3cf70:	68 de 9e 00 00       	push   @obj3:classes_cpp_variable_33                                ; fixup: num: 10660, src obj: 1, src ofs: 0x3cf71, dst obj: 3, dst ofs: 0x9ede
   3cf75:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 10659, src obj: 1, src ofs: 0x3cf76, dst obj: 3, dst ofs: 0x237fc
   3cf7a:	e8 62 3c 03 00       	call   sprintf_
   3cf7f:	8b 47 30             	mov    eax,DWORD PTR [edi+0x30]
   3cf82:	83 c4 0c             	add    esp,0xc
   3cf85:	85 c0                	test   eax,eax
   3cf87:	74 28                	je     W?$ct:NON_PLAYER_CHARACTER$n(pn$_npc_type$$pn(ui)pnv)__branch_8
   3cf89:	e8 f2 fc fc ff       	call   XFILE_size
   3cf8e:	83 f8 ff             	cmp    eax,0xffffffff
   3cf91:	74 1e                	je     W?$ct:NON_PLAYER_CHARACTER$n(pn$_npc_type$$pn(ui)pnv)__branch_8
   3cf93:	b8 88 00 00 00       	mov    eax,0x88
   3cf98:	e8 7b 4f 03 00       	call   W?$nwn(ui)pnv
   3cf9d:	85 c0                	test   eax,eax
   3cf9f:	74 08                	je     W?$ct:NON_PLAYER_CHARACTER$n(pn$_npc_type$$pn(ui)pnv)__branch_7
   3cfa1:	8b 57 30             	mov    edx,DWORD PTR [edi+0x30]
   3cfa4:	e8 c7 b4 fc ff       	call   W?$ct:SOUND$n(pna)_
W?$ct:NON_PLAYER_CHARACTER$n(pn$_npc_type$$pn(ui)pnv)__branch_7:
   3cfa9:	89 86 68 11 00 00    	mov    DWORD PTR [esi+0x1168],eax
   3cfaf:	eb 0a                	jmp    W?$ct:NON_PLAYER_CHARACTER$n(pn$_npc_type$$pn(ui)pnv)__branch_9
W?$ct:NON_PLAYER_CHARACTER$n(pn$_npc_type$$pn(ui)pnv)__branch_8:
   3cfb1:	c7 86 68 11 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x1168],0x0
W?$ct:NON_PLAYER_CHARACTER$n(pn$_npc_type$$pn(ui)pnv)__branch_9:
   3cfbb:	c7 86 78 11 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x1178],0x0
   3cfc5:	c7 86 8c 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x108c],0x0
   3cfcf:	c7 86 90 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x1090],0x0
   3cfd9:	c7 86 94 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x1094],0x0
   3cfe3:	c7 86 98 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x1098],0x0
   3cfed:	80 7f 24 00          	cmp    BYTE PTR [edi+0x24],0x0
   3cff1:	74 63                	je     W?$ct:NON_PLAYER_CHARACTER$n(pn$_npc_type$$pn(ui)pnv)__branch_13
   3cff3:	c6 86 a0 11 00 00 38 	mov    BYTE PTR [esi+0x11a0],0x38
   3cffa:	8a 86 a0 11 00 00    	mov    al,BYTE PTR [esi+0x11a0]
   3d000:	88 86 a1 11 00 00    	mov    BYTE PTR [esi+0x11a1],al
   3d006:	83 7f 2c 01          	cmp    DWORD PTR [edi+0x2c],0x1
   3d00a:	74 09                	je     W?$ct:NON_PLAYER_CHARACTER$n(pn$_npc_type$$pn(ui)pnv)__branch_10
   3d00c:	80 3d bc 0f 01 00 00 	cmp    BYTE PTR ds:@obj3:gore,0x0                                   ; fixup: num: 10789, src obj: 1, src ofs: 0x3d00e, dst obj: 3, dst ofs: 0x10fbc
   3d013:	75 17                	jne    W?$ct:NON_PLAYER_CHARACTER$n(pn$_npc_type$$pn(ui)pnv)__branch_11
W?$ct:NON_PLAYER_CHARACTER$n(pn$_npc_type$$pn(ui)pnv)__branch_10:
   3d015:	c7 86 78 10 00 00 4f 00 00 00 	mov    DWORD PTR [esi+0x1078],0x4f
   3d01f:	8b 86 78 10 00 00    	mov    eax,DWORD PTR [esi+0x1078]
   3d025:	ba 4f 00 00 00       	mov    edx,0x4f
   3d02a:	eb 15                	jmp    W?$ct:NON_PLAYER_CHARACTER$n(pn$_npc_type$$pn(ui)pnv)__branch_12
W?$ct:NON_PLAYER_CHARACTER$n(pn$_npc_type$$pn(ui)pnv)__branch_11:
   3d02c:	c7 86 78 10 00 00 45 00 00 00 	mov    DWORD PTR [esi+0x1078],0x45
   3d036:	8b 86 78 10 00 00    	mov    eax,DWORD PTR [esi+0x1078]
   3d03c:	ba 45 00 00 00       	mov    edx,0x45
W?$ct:NON_PLAYER_CHARACTER$n(pn$_npc_type$$pn(ui)pnv)__branch_12:
   3d041:	89 86 6c 10 00 00    	mov    DWORD PTR [esi+0x106c],eax
   3d047:	89 f0                	mov    eax,esi
   3d049:	e8 52 f8 ff ff       	call   go_to_frame_mod_76
   3d04e:	c6 46 52 00          	mov    BYTE PTR [esi+0x52],0x0
   3d052:	c6 46 08 00          	mov    BYTE PTR [esi+0x8],0x0
W?$ct:NON_PLAYER_CHARACTER$n(pn$_npc_type$$pn(ui)pnv)__branch_13:
   3d056:	ba f9 9e 00 00       	mov    edx,@obj3:classes_cpp_variable_34                            ; fixup: num: 10798, src obj: 1, src ofs: 0x3d057, dst obj: 3, dst ofs: 0x9ef9
   3d05b:	8b 47 18             	mov    eax,DWORD PTR [edi+0x18]
   3d05e:	e8 cd 93 03 00       	call   strcmp_
   3d063:	85 c0                	test   eax,eax
   3d065:	0f 85 bd 00 00 00    	jne    W?$ct:NON_PLAYER_CHARACTER$n(pn$_npc_type$$pn(ui)pnv)__branch_20
   3d06b:	c7 86 84 11 00 00 08 00 00 00 	mov    DWORD PTR [esi+0x1184],0x8
   3d075:	8b 9e 84 11 00 00    	mov    ebx,DWORD PTR [esi+0x1184]
   3d07b:	53                   	push   ebx
   3d07c:	68 05 9f 00 00       	push   @obj3:classes_cpp_variable_35                                ; fixup: num: 10797, src obj: 1, src ofs: 0x3d07d, dst obj: 3, dst ofs: 0x9f05
   3d081:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 10796, src obj: 1, src ofs: 0x3d082, dst obj: 3, dst ofs: 0x237fc
   3d086:	e8 56 3b 03 00       	call   sprintf_
   3d08b:	83 c4 0c             	add    esp,0xc
   3d08e:	b8 88 00 00 00       	mov    eax,0x88
   3d093:	e8 80 4e 03 00       	call   W?$nwn(ui)pnv
   3d098:	85 c0                	test   eax,eax
   3d09a:	74 0a                	je     W?$ct:NON_PLAYER_CHARACTER$n(pn$_npc_type$$pn(ui)pnv)__branch_14
   3d09c:	ba 15 9f 00 00       	mov    edx,@obj3:classes_cpp_variable_36                            ; fixup: num: 10795, src obj: 1, src ofs: 0x3d09d, dst obj: 3, dst ofs: 0x9f15
   3d0a1:	e8 ca b3 fc ff       	call   W?$ct:SOUND$n(pna)_
W?$ct:NON_PLAYER_CHARACTER$n(pn$_npc_type$$pn(ui)pnv)__branch_14:
   3d0a6:	a3 f8 59 02 00       	mov    ds:@obj3:stef_scrm,eax                                       ; fixup: num: 10794, src obj: 1, src ofs: 0x3d0a7, dst obj: 3, dst ofs: 0x259f8
   3d0ab:	85 c0                	test   eax,eax
   3d0ad:	75 0f                	jne    W?$ct:NON_PLAYER_CHARACTER$n(pn$_npc_type$$pn(ui)pnv)__branch_15
   3d0af:	bb 33 9f 00 00       	mov    ebx,@obj3:classes_cpp_variable_37                            ; fixup: num: 10793, src obj: 1, src ofs: 0x3d0b0, dst obj: 3, dst ofs: 0x9f33
   3d0b4:	ba 51 03 00 00       	mov    edx,0x351
   3d0b9:	e8 72 af ff ff       	call   _error_report
W?$ct:NON_PLAYER_CHARACTER$n(pn$_npc_type$$pn(ui)pnv)__branch_15:
   3d0be:	b8 88 00 00 00       	mov    eax,0x88
   3d0c3:	e8 50 4e 03 00       	call   W?$nwn(ui)pnv
   3d0c8:	85 c0                	test   eax,eax
   3d0ca:	74 0a                	je     W?$ct:NON_PLAYER_CHARACTER$n(pn$_npc_type$$pn(ui)pnv)__branch_16
   3d0cc:	ba 4b 9f 00 00       	mov    edx,@obj3:classes_cpp_variable_38                            ; fixup: num: 10792, src obj: 1, src ofs: 0x3d0cd, dst obj: 3, dst ofs: 0x9f4b
   3d0d1:	e8 9a b3 fc ff       	call   W?$ct:SOUND$n(pna)_
W?$ct:NON_PLAYER_CHARACTER$n(pn$_npc_type$$pn(ui)pnv)__branch_16:
   3d0d6:	a3 fc 59 02 00       	mov    ds:@obj3:stef_scrm_variable_1,eax                            ; fixup: num: 10791, src obj: 1, src ofs: 0x3d0d7, dst obj: 3, dst ofs: 0x259fc
   3d0db:	85 c0                	test   eax,eax
   3d0dd:	75 0f                	jne    W?$ct:NON_PLAYER_CHARACTER$n(pn$_npc_type$$pn(ui)pnv)__branch_17
   3d0df:	bb 69 9f 00 00       	mov    ebx,@obj3:classes_cpp_variable_39                            ; fixup: num: 10790, src obj: 1, src ofs: 0x3d0e0, dst obj: 3, dst ofs: 0x9f69
   3d0e4:	ba 53 03 00 00       	mov    edx,0x353
   3d0e9:	e8 42 af ff ff       	call   _error_report
W?$ct:NON_PLAYER_CHARACTER$n(pn$_npc_type$$pn(ui)pnv)__branch_17:
   3d0ee:	b8 88 00 00 00       	mov    eax,0x88
   3d0f3:	e8 20 4e 03 00       	call   W?$nwn(ui)pnv
   3d0f8:	85 c0                	test   eax,eax
   3d0fa:	74 0a                	je     W?$ct:NON_PLAYER_CHARACTER$n(pn$_npc_type$$pn(ui)pnv)__branch_18
   3d0fc:	ba 81 9f 00 00       	mov    edx,@obj3:classes_cpp_variable_40                            ; fixup: num: 10803, src obj: 1, src ofs: 0x3d0fd, dst obj: 3, dst ofs: 0x9f81
   3d101:	e8 6a b3 fc ff       	call   W?$ct:SOUND$n(pna)_
W?$ct:NON_PLAYER_CHARACTER$n(pn$_npc_type$$pn(ui)pnv)__branch_18:
   3d106:	a3 00 5a 02 00       	mov    ds:@obj3:stef_scrm_variable_2,eax                            ; fixup: num: 10802, src obj: 1, src ofs: 0x3d107, dst obj: 3, dst ofs: 0x25a00
   3d10b:	85 c0                	test   eax,eax
   3d10d:	75 0f                	jne    W?$ct:NON_PLAYER_CHARACTER$n(pn$_npc_type$$pn(ui)pnv)__branch_19
   3d10f:	bb 9f 9f 00 00       	mov    ebx,@obj3:classes_cpp_variable_41                            ; fixup: num: 10801, src obj: 1, src ofs: 0x3d110, dst obj: 3, dst ofs: 0x9f9f
   3d114:	ba 55 03 00 00       	mov    edx,0x355
   3d119:	e8 12 af ff ff       	call   _error_report
W?$ct:NON_PLAYER_CHARACTER$n(pn$_npc_type$$pn(ui)pnv)__branch_19:
   3d11e:	a1 f8 59 02 00       	mov    eax,ds:@obj3:stef_scrm                                       ; fixup: num: 10800, src obj: 1, src ofs: 0x3d11f, dst obj: 3, dst ofs: 0x259f8
   3d123:	e8 88 c6 fc ff       	call   play
W?$ct:NON_PLAYER_CHARACTER$n(pn$_npc_type$$pn(ui)pnv)__branch_20:
   3d128:	89 f0                	mov    eax,esi
   3d12a:	83 c4 04             	add    esp,0x4
   3d12d:	5d                   	pop    ebp
   3d12e:	5f                   	pop    edi
   3d12f:	5e                   	pop    esi
   3d130:	59                   	pop    ecx
   3d131:	c3                   	ret    
   3d132:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   3d138:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
   3d13e:	8b c0                	mov    eax,eax

;-------------------------------------------------
;  Function 'W?$ct:NON_PLAYER_CHARACTER$n(pnapn  -
;  aiibiiipn(ui)pnv)_'                           -
;-------------------------------------------------
W?$ct:NON_PLAYER_CHARACTER$n(pnapnaiibiiipn(ui)pnv)_:
   3d140:	56                   	push   esi
   3d141:	57                   	push   edi
   3d142:	55                   	push   ebp
   3d143:	89 c6                	mov    esi,eax
   3d145:	89 cd                	mov    ebp,ecx
   3d147:	6a 00                	push   0x0
   3d149:	8b 4c 24 28          	mov    ecx,DWORD PTR [esp+0x28]
   3d14d:	51                   	push   ecx
   3d14e:	8b 7c 24 20          	mov    edi,DWORD PTR [esp+0x20]
   3d152:	57                   	push   edi
   3d153:	ff 74 24 20          	push   DWORD PTR [esp+0x20]
   3d157:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
   3d15b:	50                   	push   eax
   3d15c:	89 e9                	mov    ecx,ebp
   3d15e:	89 f0                	mov    eax,esi
   3d160:	e8 2b e7 ff ff       	call   W?$ct:ANIMATION$n(pnapnaiibipn(ui)pnvpna)_
   3d165:	c6 80 b4 11 00 00 00 	mov    BYTE PTR [eax+0x11b4],0x0
   3d16c:	89 c3                	mov    ebx,eax
   3d16e:	c7 80 b0 11 00 00 00 00 00 00 	mov    DWORD PTR [eax+0x11b0],0x0
   3d178:	89 c6                	mov    esi,eax
   3d17a:	8b 80 b0 11 00 00    	mov    eax,DWORD PTR [eax+0x11b0]
   3d180:	89 83 ac 11 00 00    	mov    DWORD PTR [ebx+0x11ac],eax
   3d186:	89 83 88 10 00 00    	mov    DWORD PTR [ebx+0x1088],eax
   3d18c:	ba b7 9f 00 00       	mov    edx,@obj3:classes_cpp_variable_42                            ; fixup: num: 10799, src obj: 1, src ofs: 0x3d18d, dst obj: 3, dst ofs: 0x9fb7
   3d191:	8b 43 10             	mov    eax,DWORD PTR [ebx+0x10]
   3d194:	e8 97 92 03 00       	call   strcmp_
   3d199:	85 c0                	test   eax,eax
   3d19b:	0f 85 94 00 00 00    	jne    W?$ct:NON_PLAYER_CHARACTER$n(pnapnaiibiiipn(ui)pnv)__branch_3
   3d1a1:	b8 28 11 00 00       	mov    eax,0x1128
   3d1a6:	e8 6d 4d 03 00       	call   W?$nwn(ui)pnv
   3d1ab:	89 c7                	mov    edi,eax
   3d1ad:	85 c0                	test   eax,eax
   3d1af:	74 33                	je     W?$ct:NON_PLAYER_CHARACTER$n(pnapnaiibiiipn(ui)pnv)__branch_1
   3d1b1:	6a 00                	push   0x0
   3d1b3:	6a 00                	push   0x0
   3d1b5:	6a 00                	push   0x0
   3d1b7:	6a 00                	push   0x0
   3d1b9:	68 00 00 c6 c2       	push   0xc2c60000
   3d1be:	68 58 02 00 00       	push   0x258
   3d1c3:	bb 0a 00 00 00       	mov    ebx,0xa
   3d1c8:	6a 00                	push   0x0
   3d1ca:	31 c0                	xor    eax,eax
   3d1cc:	ba c1 9f 00 00       	mov    edx,@obj3:classes_cpp_variable_43                            ; fixup: num: 10806, src obj: 1, src ofs: 0x3d1cd, dst obj: 3, dst ofs: 0x9fc1
   3d1d1:	e8 62 97 03 00       	call   tmpnam_
   3d1d6:	e8 c4 3d 03 00       	call   strdup_                                                      ; aliases: strdup_, _strdup_
   3d1db:	89 c1                	mov    ecx,eax
   3d1dd:	89 f8                	mov    eax,edi
   3d1df:	e8 3c e8 ff ff       	call   W?$ct:ANIMATION$n(pnaipnaiibiucucuc)_
W?$ct:NON_PLAYER_CHARACTER$n(pnapnaiibiiipn(ui)pnv)__branch_1:
   3d1e4:	89 86 a8 11 00 00    	mov    DWORD PTR [esi+0x11a8],eax
   3d1ea:	85 c0                	test   eax,eax
   3d1ec:	75 0f                	jne    W?$ct:NON_PLAYER_CHARACTER$n(pnapnaiibiiipn(ui)pnv)__branch_2
   3d1ee:	bb cb 9f 00 00       	mov    ebx,@obj3:classes_cpp_variable_44                            ; fixup: num: 10805, src obj: 1, src ofs: 0x3d1ef, dst obj: 3, dst ofs: 0x9fcb
   3d1f3:	ba 68 03 00 00       	mov    edx,0x368
   3d1f8:	e8 33 ae ff ff       	call   _error_report
W?$ct:NON_PLAYER_CHARACTER$n(pnapnaiibiiipn(ui)pnv)__branch_2:
   3d1fd:	8b 96 a8 11 00 00    	mov    edx,DWORD PTR [esi+0x11a8]
   3d203:	8b ba 68 10 00 00    	mov    edi,DWORD PTR [edx+0x1068]
   3d209:	c7 82 60 10 00 00 03 00 00 00 	mov    DWORD PTR [edx+0x1060],0x3
   3d213:	83 ff 1e             	cmp    edi,0x1e
   3d216:	0f 84 04 01 00 00    	je     W?$ct:NON_PLAYER_CHARACTER$n(pnapnaiibiiipn(ui)pnv)__branch_8
   3d21c:	c7 82 68 10 00 00 1e 00 00 00 	mov    DWORD PTR [edx+0x1068],0x1e
   3d226:	c7 82 5c 10 00 00 00 00 00 00 	mov    DWORD PTR [edx+0x105c],0x0
   3d230:	e9 eb 00 00 00       	jmp    W?$ct:NON_PLAYER_CHARACTER$n(pnapnaiibiiipn(ui)pnv)__branch_8
W?$ct:NON_PLAYER_CHARACTER$n(pnapnaiibiiipn(ui)pnv)__branch_3:
   3d235:	ba e3 9f 00 00       	mov    edx,@obj3:classes_cpp_variable_45                            ; fixup: num: 10804, src obj: 1, src ofs: 0x3d236, dst obj: 3, dst ofs: 0x9fe3
   3d23a:	8b 43 10             	mov    eax,DWORD PTR [ebx+0x10]
   3d23d:	e8 ee 91 03 00       	call   strcmp_
   3d242:	85 c0                	test   eax,eax
   3d244:	0f 85 8d 00 00 00    	jne    W?$ct:NON_PLAYER_CHARACTER$n(pnapnaiibiiipn(ui)pnv)__branch_6
   3d24a:	b8 28 11 00 00       	mov    eax,0x1128
   3d24f:	e8 c4 4c 03 00       	call   W?$nwn(ui)pnv
   3d254:	89 c7                	mov    edi,eax
   3d256:	85 c0                	test   eax,eax
   3d258:	74 33                	je     W?$ct:NON_PLAYER_CHARACTER$n(pnapnaiibiiipn(ui)pnv)__branch_4
   3d25a:	6a 00                	push   0x0
   3d25c:	6a 00                	push   0x0
   3d25e:	6a 00                	push   0x0
   3d260:	6a 00                	push   0x0
   3d262:	68 00 00 c6 c2       	push   0xc2c60000
   3d267:	68 58 02 00 00       	push   0x258
   3d26c:	bb 0a 00 00 00       	mov    ebx,0xa
   3d271:	6a 00                	push   0x0
   3d273:	31 c0                	xor    eax,eax
   3d275:	ba ea 9f 00 00       	mov    edx,@obj3:classes_cpp_variable_46                            ; fixup: num: 10808, src obj: 1, src ofs: 0x3d276, dst obj: 3, dst ofs: 0x9fea
   3d27a:	e8 b9 96 03 00       	call   tmpnam_
   3d27f:	e8 1b 3d 03 00       	call   strdup_                                                      ; aliases: strdup_, _strdup_
   3d284:	89 c1                	mov    ecx,eax
   3d286:	89 f8                	mov    eax,edi
   3d288:	e8 93 e7 ff ff       	call   W?$ct:ANIMATION$n(pnaipnaiibiucucuc)_
W?$ct:NON_PLAYER_CHARACTER$n(pnapnaiibiiipn(ui)pnv)__branch_4:
   3d28d:	89 86 a8 11 00 00    	mov    DWORD PTR [esi+0x11a8],eax
   3d293:	85 c0                	test   eax,eax
   3d295:	75 0f                	jne    W?$ct:NON_PLAYER_CHARACTER$n(pnapnaiibiiipn(ui)pnv)__branch_5
   3d297:	bb f5 9f 00 00       	mov    ebx,@obj3:classes_cpp_variable_47                            ; fixup: num: 10807, src obj: 1, src ofs: 0x3d298, dst obj: 3, dst ofs: 0x9ff5
   3d29c:	ba 6e 03 00 00       	mov    edx,0x36e
   3d2a1:	e8 8a ad ff ff       	call   _error_report
W?$ct:NON_PLAYER_CHARACTER$n(pnapnaiibiiipn(ui)pnv)__branch_5:
   3d2a6:	8b 96 a8 11 00 00    	mov    edx,DWORD PTR [esi+0x11a8]
   3d2ac:	8b 9a 68 10 00 00    	mov    ebx,DWORD PTR [edx+0x1068]
   3d2b2:	c7 82 60 10 00 00 03 00 00 00 	mov    DWORD PTR [edx+0x1060],0x3
   3d2bc:	83 fb 1e             	cmp    ebx,0x1e
   3d2bf:	74 5f                	je     W?$ct:NON_PLAYER_CHARACTER$n(pnapnaiibiiipn(ui)pnv)__branch_8
   3d2c1:	c7 82 68 10 00 00 1e 00 00 00 	mov    DWORD PTR [edx+0x1068],0x1e
   3d2cb:	c7 82 5c 10 00 00 00 00 00 00 	mov    DWORD PTR [edx+0x105c],0x0
   3d2d5:	eb 49                	jmp    W?$ct:NON_PLAYER_CHARACTER$n(pnapnaiibiiipn(ui)pnv)__branch_8
W?$ct:NON_PLAYER_CHARACTER$n(pnapnaiibiiipn(ui)pnv)__branch_6:
   3d2d7:	b8 28 11 00 00       	mov    eax,0x1128
   3d2dc:	e8 37 4c 03 00       	call   W?$nwn(ui)pnv
   3d2e1:	89 c7                	mov    edi,eax
   3d2e3:	85 c0                	test   eax,eax
   3d2e5:	74 33                	je     W?$ct:NON_PLAYER_CHARACTER$n(pnapnaiibiiipn(ui)pnv)__branch_7
   3d2e7:	6a 00                	push   0x0
   3d2e9:	6a 00                	push   0x0
   3d2eb:	6a 00                	push   0x0
   3d2ed:	6a 00                	push   0x0
   3d2ef:	68 00 00 c6 c2       	push   0xc2c60000
   3d2f4:	68 58 02 00 00       	push   0x258
   3d2f9:	bb 0a 00 00 00       	mov    ebx,0xa
   3d2fe:	6a 00                	push   0x0
   3d300:	31 c0                	xor    eax,eax
   3d302:	ba 0d a0 00 00       	mov    edx,@obj3:classes_cpp_variable_48                            ; fixup: num: 10812, src obj: 1, src ofs: 0x3d303, dst obj: 3, dst ofs: 0xa00d
   3d307:	e8 2c 96 03 00       	call   tmpnam_
   3d30c:	e8 8e 3c 03 00       	call   strdup_                                                      ; aliases: strdup_, _strdup_
   3d311:	89 c1                	mov    ecx,eax
   3d313:	89 f8                	mov    eax,edi
   3d315:	e8 06 e7 ff ff       	call   W?$ct:ANIMATION$n(pnaipnaiibiucucuc)_
W?$ct:NON_PLAYER_CHARACTER$n(pnapnaiibiiipn(ui)pnv)__branch_7:
   3d31a:	89 86 a8 11 00 00    	mov    DWORD PTR [esi+0x11a8],eax
W?$ct:NON_PLAYER_CHARACTER$n(pnapnaiibiiipn(ui)pnv)__branch_8:
   3d320:	8b 86 a8 11 00 00    	mov    eax,DWORD PTR [esi+0x11a8]
   3d326:	85 c0                	test   eax,eax
   3d328:	75 0f                	jne    W?$ct:NON_PLAYER_CHARACTER$n(pnapnaiibiiipn(ui)pnv)__branch_9
   3d32a:	bb 17 a0 00 00       	mov    ebx,@obj3:classes_cpp_variable_49                            ; fixup: num: 10811, src obj: 1, src ofs: 0x3d32b, dst obj: 3, dst ofs: 0xa017
   3d32f:	ba 74 03 00 00       	mov    edx,0x374
   3d334:	e8 f7 ac ff ff       	call   _error_report
W?$ct:NON_PLAYER_CHARACTER$n(pnapnaiibiiipn(ui)pnv)__branch_9:
   3d339:	8b 86 a8 11 00 00    	mov    eax,DWORD PTR [esi+0x11a8]
   3d33f:	c6 40 0c 00          	mov    BYTE PTR [eax+0xc],0x0
   3d343:	8b 86 a8 11 00 00    	mov    eax,DWORD PTR [esi+0x11a8]
   3d349:	c6 40 50 00          	mov    BYTE PTR [eax+0x50],0x0
   3d34d:	8b 86 a8 11 00 00    	mov    eax,DWORD PTR [esi+0x11a8]
   3d353:	c6 40 53 00          	mov    BYTE PTR [eax+0x53],0x0
   3d357:	8b 86 a8 11 00 00    	mov    eax,DWORD PTR [esi+0x11a8]
   3d35d:	c6 40 52 00          	mov    BYTE PTR [eax+0x52],0x0
   3d361:	8b 96 a8 11 00 00    	mov    edx,DWORD PTR [esi+0x11a8]
   3d367:	8b 9a 84 10 00 00    	mov    ebx,DWORD PTR [edx+0x1084]
   3d36d:	4b                   	dec    ebx
   3d36e:	89 9a 84 10 00 00    	mov    DWORD PTR [edx+0x1084],ebx
   3d374:	83 fb ff             	cmp    ebx,0xffffffff
   3d377:	75 13                	jne    W?$ct:NON_PLAYER_CHARACTER$n(pnapnaiibiiipn(ui)pnv)__branch_10
   3d379:	83 ba 64 10 00 00 00 	cmp    DWORD PTR [edx+0x1064],0x0
   3d380:	7c 0a                	jl     W?$ct:NON_PLAYER_CHARACTER$n(pnapnaiibiiipn(ui)pnv)__branch_10
   3d382:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 10810, src obj: 1, src ofs: 0x3d383, dst obj: 3, dst ofs: 0x25a88
   3d387:	e8 64 f3 00 00       	call   remove_bitmap
W?$ct:NON_PLAYER_CHARACTER$n(pnapnaiibiiipn(ui)pnv)__branch_10:
   3d38c:	c6 46 0c 01          	mov    BYTE PTR [esi+0xc],0x1
   3d390:	80 7e 0c 00          	cmp    BYTE PTR [esi+0xc],0x0
   3d394:	74 40                	je     W?$ct:NON_PLAYER_CHARACTER$n(pnapnaiibiiipn(ui)pnv)__branch_11
   3d396:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
   3d399:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
   3d39c:	52                   	push   edx
   3d39d:	8b 18                	mov    ebx,DWORD PTR [eax]
   3d39f:	53                   	push   ebx
   3d3a0:	68 2f a0 00 00       	push   @obj3:classes_cpp_variable_50                                ; fixup: num: 10809, src obj: 1, src ofs: 0x3d3a1, dst obj: 3, dst ofs: 0xa02f
   3d3a5:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 10818, src obj: 1, src ofs: 0x3d3a6, dst obj: 3, dst ofs: 0x237fc
   3d3aa:	e8 32 38 03 00       	call   sprintf_
   3d3af:	8b 06                	mov    eax,DWORD PTR [esi]
   3d3b1:	83 c4 10             	add    esp,0x10
   3d3b4:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
   3d3b7:	51                   	push   ecx
   3d3b8:	8b 38                	mov    edi,DWORD PTR [eax]
   3d3ba:	57                   	push   edi
   3d3bb:	68 4c a0 00 00       	push   @obj3:classes_cpp_variable_51                                ; fixup: num: 10817, src obj: 1, src ofs: 0x3d3bc, dst obj: 3, dst ofs: 0xa04c
   3d3c0:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 10816, src obj: 1, src ofs: 0x3d3c1, dst obj: 3, dst ofs: 0x237fc
   3d3c5:	e8 17 38 03 00       	call   sprintf_
   3d3ca:	83 c4 10             	add    esp,0x10
   3d3cd:	c7 46 04 00 00 00 00 	mov    DWORD PTR [esi+0x4],0x0
   3d3d4:	eb 05                	jmp    W?$ct:NON_PLAYER_CHARACTER$n(pnapnaiibiiipn(ui)pnv)__branch_12
W?$ct:NON_PLAYER_CHARACTER$n(pnapnaiibiiipn(ui)pnv)__branch_11:
   3d3d6:	8b 06                	mov    eax,DWORD PTR [esi]
   3d3d8:	89 46 04             	mov    DWORD PTR [esi+0x4],eax
W?$ct:NON_PLAYER_CHARACTER$n(pnapnaiibiiipn(ui)pnv)__branch_12:
   3d3db:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
   3d3de:	50                   	push   eax
   3d3df:	31 c0                	xor    eax,eax
   3d3e1:	8a 46 0c             	mov    al,BYTE PTR [esi+0xc]
   3d3e4:	50                   	push   eax
   3d3e5:	68 69 a0 00 00       	push   @obj3:classes_cpp_variable_52                                ; fixup: num: 10815, src obj: 1, src ofs: 0x3d3e6, dst obj: 3, dst ofs: 0xa069
   3d3ea:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 10814, src obj: 1, src ofs: 0x3d3eb, dst obj: 3, dst ofs: 0x237fc
   3d3ef:	e8 ed 37 03 00       	call   sprintf_
   3d3f4:	c7 86 78 10 00 00 3b 00 00 00 	mov    DWORD PTR [esi+0x1078],0x3b
   3d3fe:	8b 0d ac 5b 02 00    	mov    ecx,DWORD PTR ds:@obj3:pc_real_x                             ; fixup: num: 10813, src obj: 1, src ofs: 0x3d400, dst obj: 3, dst ofs: 0x25bac
   3d404:	c6 86 a0 11 00 00 00 	mov    BYTE PTR [esi+0x11a0],0x0
   3d40b:	83 c4 10             	add    esp,0x10
   3d40e:	8b 56 3c             	mov    edx,DWORD PTR [esi+0x3c]
   3d411:	8b 5e 24             	mov    ebx,DWORD PTR [esi+0x24]
   3d414:	8b 86 78 10 00 00    	mov    eax,DWORD PTR [esi+0x1078]
   3d41a:	01 da                	add    edx,ebx
   3d41c:	89 86 6c 10 00 00    	mov    DWORD PTR [esi+0x106c],eax
   3d422:	39 ca                	cmp    edx,ecx
   3d424:	7e 0f                	jle    W?$ct:NON_PLAYER_CHARACTER$n(pnapnaiibiiipn(ui)pnv)__branch_13
   3d426:	83 7e 38 06          	cmp    DWORD PTR [esi+0x38],0x6
   3d42a:	75 09                	jne    W?$ct:NON_PLAYER_CHARACTER$n(pnapnaiibiiipn(ui)pnv)__branch_13
   3d42c:	c6 86 a1 11 00 00 07 	mov    BYTE PTR [esi+0x11a1],0x7
   3d433:	eb 07                	jmp    W?$ct:NON_PLAYER_CHARACTER$n(pnapnaiibiiipn(ui)pnv)__branch_14
W?$ct:NON_PLAYER_CHARACTER$n(pnapnaiibiiipn(ui)pnv)__branch_13:
   3d435:	c6 86 a1 11 00 00 0e 	mov    BYTE PTR [esi+0x11a1],0xe
W?$ct:NON_PLAYER_CHARACTER$n(pnapnaiibiiipn(ui)pnv)__branch_14:
   3d43c:	c6 46 50 00          	mov    BYTE PTR [esi+0x50],0x0
   3d440:	c6 46 51 00          	mov    BYTE PTR [esi+0x51],0x0
   3d444:	c7 86 80 10 00 00 11 00 00 00 	mov    DWORD PTR [esi+0x1080],0x11
   3d44e:	89 f7                	mov    edi,esi
   3d450:	8b 9e 80 10 00 00    	mov    ebx,DWORD PTR [esi+0x1080]
   3d456:	c6 46 4c 00          	mov    BYTE PTR [esi+0x4c],0x0
   3d45a:	85 db                	test   ebx,ebx
   3d45c:	74 14                	je     W?$ct:NON_PLAYER_CHARACTER$n(pnapnaiibiiipn(ui)pnv)__branch_15
   3d45e:	b8 64 00 00 00       	mov    eax,0x64
   3d463:	89 c2                	mov    edx,eax
   3d465:	c1 fa 1f             	sar    edx,0x1f
   3d468:	f7 fb                	idiv   ebx
   3d46a:	89 86 60 10 00 00    	mov    DWORD PTR [esi+0x1060],eax
   3d470:	eb 06                	jmp    W?$ct:NON_PLAYER_CHARACTER$n(pnapnaiibiiipn(ui)pnv)__branch_16
W?$ct:NON_PLAYER_CHARACTER$n(pnapnaiibiiipn(ui)pnv)__branch_15:
   3d472:	89 9e 60 10 00 00    	mov    DWORD PTR [esi+0x1060],ebx
W?$ct:NON_PLAYER_CHARACTER$n(pnapnaiibiiipn(ui)pnv)__branch_16:
   3d478:	3b 9f 68 10 00 00    	cmp    ebx,DWORD PTR [edi+0x1068]
   3d47e:	74 10                	je     W?$ct:NON_PLAYER_CHARACTER$n(pnapnaiibiiipn(ui)pnv)__branch_17
   3d480:	c7 87 5c 10 00 00 00 00 00 00 	mov    DWORD PTR [edi+0x105c],0x0
   3d48a:	89 9f 68 10 00 00    	mov    DWORD PTR [edi+0x1068],ebx
W?$ct:NON_PLAYER_CHARACTER$n(pnapnaiibiiipn(ui)pnv)__branch_17:
   3d490:	c7 46 38 04 00 00 00 	mov    DWORD PTR [esi+0x38],0x4
   3d497:	c7 86 a4 11 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x11a4],0x0
   3d4a1:	c6 86 28 11 00 00 00 	mov    BYTE PTR [esi+0x1128],0x0
   3d4a8:	c6 46 08 01          	mov    BYTE PTR [esi+0x8],0x1
   3d4ac:	c7 86 88 11 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x1188],0x0
   3d4b6:	c7 86 50 11 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x1150],0x0
   3d4c0:	c7 86 5c 11 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x115c],0x0
   3d4ca:	c7 86 64 11 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x1164],0x0
   3d4d4:	c7 86 68 11 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x1168],0x0
   3d4de:	c7 86 98 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x1098],0x0
   3d4e8:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
   3d4ec:	89 ae 98 11 00 00    	mov    DWORD PTR [esi+0x1198],ebp
   3d4f2:	89 86 8c 11 00 00    	mov    DWORD PTR [esi+0x118c],eax
   3d4f8:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
   3d4fc:	89 86 40 11 00 00    	mov    DWORD PTR [esi+0x1140],eax
   3d502:	a1 44 7e 01 00       	mov    eax,ds:@obj3:current_time                                    ; fixup: num: 10839, src obj: 1, src ofs: 0x3d503, dst obj: 3, dst ofs: 0x17e44
   3d507:	89 86 44 11 00 00    	mov    DWORD PTR [esi+0x1144],eax
   3d50d:	8b 86 50 11 00 00    	mov    eax,DWORD PTR [esi+0x1150]
   3d513:	89 86 4c 11 00 00    	mov    DWORD PTR [esi+0x114c],eax
   3d519:	89 86 48 11 00 00    	mov    DWORD PTR [esi+0x1148],eax
   3d51f:	8b 86 5c 11 00 00    	mov    eax,DWORD PTR [esi+0x115c]
   3d525:	89 86 58 11 00 00    	mov    DWORD PTR [esi+0x1158],eax
   3d52b:	89 86 54 11 00 00    	mov    DWORD PTR [esi+0x1154],eax
   3d531:	8b 86 64 11 00 00    	mov    eax,DWORD PTR [esi+0x1164]
   3d537:	89 86 60 11 00 00    	mov    DWORD PTR [esi+0x1160],eax
   3d53d:	8b 86 98 10 00 00    	mov    eax,DWORD PTR [esi+0x1098]
   3d543:	89 86 94 10 00 00    	mov    DWORD PTR [esi+0x1094],eax
   3d549:	89 86 90 10 00 00    	mov    DWORD PTR [esi+0x1090],eax
   3d54f:	89 86 8c 10 00 00    	mov    DWORD PTR [esi+0x108c],eax
   3d555:	89 f0                	mov    eax,esi
   3d557:	5d                   	pop    ebp
   3d558:	5f                   	pop    edi
   3d559:	5e                   	pop    esi
   3d55a:	c2 18 00             	ret    0x18
   3d55d:	8d 40 00             	lea    eax,[eax+0x0]
W?$ct:NON_PLAYER_CHARACTER$n(pnapnaiibiiipn(ui)pnv)__reference_1:                                   ; access size: DWORDS
   3d560:	76 13                	jbe    @obj1:update_mod_76_2_reference_46                           ; fixup: num: 10838, src obj: 1, src ofs: 0x3d560, dst obj: 1, dst ofs: 0x41376
   3d562:	04 00                	add    al,0x0
   3d564:	12 13                	adc    dl,BYTE PTR [ebx]                                            ; fixup: num: 10837, src obj: 1, src ofs: 0x3d564, dst obj: 1, dst ofs: 0x41312
   3d566:	04 00                	add    al,0x0
   3d568:	ae                   	scas   al,BYTE PTR es:[edi]                                         ; fixup: num: 10836, src obj: 1, src ofs: 0x3d568, dst obj: 1, dst ofs: 0x412ae
   3d569:	12 04 00             	adc    al,BYTE PTR [eax+eax*1]
   3d56c:	d4 13                	aam    0x13                                                         ; fixup: num: 10835, src obj: 1, src ofs: 0x3d56c, dst obj: 1, dst ofs: 0x413d4
   3d56e:	04 00                	add    al,0x0
W?$ct:NON_PLAYER_CHARACTER$n(pnapnaiibiiipn(ui)pnv)__reference_2:                                   ; access size: DWORDS
   3d570:	7c ed                	jl     @obj1:update_mod_76_2_reference_1                            ; fixup: num: 10834, src obj: 1, src ofs: 0x3d570, dst obj: 1, dst ofs: 0x3ed7c
   3d572:	03 00                	add    eax,DWORD PTR [eax]
   3d574:	79 f1                	jns    @obj1:update_mod_76_2_reference_4                            ; fixup: num: 10833, src obj: 1, src ofs: 0x3d574, dst obj: 1, dst ofs: 0x3f179
   3d576:	03 00                	add    eax,DWORD PTR [eax]
   3d578:	cd f3                	int    0xf3                                                         ; fixup: num: 10832, src obj: 1, src ofs: 0x3d578, dst obj: 1, dst ofs: 0x3f3cd
   3d57a:	03 00                	add    eax,DWORD PTR [eax]
   3d57c:	db ef                	fucomi st,st(7)                                                     ; fixup: num: 10831, src obj: 1, src ofs: 0x3d57c, dst obj: 1, dst ofs: 0x3efdb
   3d57e:	03 00                	add    eax,DWORD PTR [eax]
   3d580:	e3 f5                	jecxz  @obj1:update_mod_76_2_reference_6                            ; fixup: num: 10830, src obj: 1, src ofs: 0x3d580, dst obj: 1, dst ofs: 0x3f5e3
   3d582:	03 00                	add    eax,DWORD PTR [eax]
   3d584:	d1 15 04 00 d1 15    	rcl    DWORD PTR ds:0x15d10004,1                                    ; fixup: num: 10829, src obj: 1, src ofs: 0x3d584, dst obj: 1, dst ofs: 0x415d1; fixup: num: 10828, src obj: 1, src ofs: 0x3d588, dst obj: 1, dst ofs: 0x415d1
   3d58a:	04 00                	add    al,0x0
   3d58c:	22 f8                	and    bh,al                                                        ; fixup: num: 10827, src obj: 1, src ofs: 0x3d58c, dst obj: 1, dst ofs: 0x3f822
   3d58e:	03 00                	add    eax,DWORD PTR [eax]
   3d590:	ad                   	lods   eax,DWORD PTR ds:[esi]                                       ; fixup: num: 10826, src obj: 1, src ofs: 0x3d590, dst obj: 1, dst ofs: 0x3fcad
   3d591:	fc                   	cld    
   3d592:	03 00                	add    eax,DWORD PTR [eax]
   3d594:	d1 15 04 00 d1 15    	rcl    DWORD PTR ds:0x15d10004,1                                    ; fixup: num: 10825, src obj: 1, src ofs: 0x3d594, dst obj: 1, dst ofs: 0x415d1; fixup: num: 10824, src obj: 1, src ofs: 0x3d598, dst obj: 1, dst ofs: 0x415d1
   3d59a:	04 00                	add    al,0x0
   3d59c:	bd f6 03 00 d1       	mov    ebp,0xd10003f6                                               ; fixup: num: 10823, src obj: 1, src ofs: 0x3d59c, dst obj: 1, dst ofs: 0x3f6bd; fixup: num: 10822, src obj: 1, src ofs: 0x3d5a0, dst obj: 1, dst ofs: 0x415d1
   3d5a1:	15 04 00 d1 15       	adc    eax,0x15d10004                                               ; fixup: num: 10821, src obj: 1, src ofs: 0x3d5a4, dst obj: 1, dst ofs: 0x415d1
   3d5a6:	04 00                	add    al,0x0
   3d5a8:	56                   	push   esi                                                          ; fixup: num: 10820, src obj: 1, src ofs: 0x3d5a8, dst obj: 1, dst ofs: 0x3f956
   3d5a9:	f9                   	stc    
   3d5aa:	03 00                	add    eax,DWORD PTR [eax]
   3d5ac:	19 fd                	sbb    ebp,edi                                                      ; fixup: num: 10819, src obj: 1, src ofs: 0x3d5ac, dst obj: 1, dst ofs: 0x3fd19
   3d5ae:	03 00                	add    eax,DWORD PTR [eax]
   3d5b0:	d1 15 04 00 d1 15    	rcl    DWORD PTR ds:0x15d10004,1                                    ; fixup: num: 10761, src obj: 1, src ofs: 0x3d5b0, dst obj: 1, dst ofs: 0x415d1; fixup: num: 10760, src obj: 1, src ofs: 0x3d5b4, dst obj: 1, dst ofs: 0x415d1
   3d5b6:	04 00                	add    al,0x0
   3d5b8:	85 fd                	test   ebp,edi                                                      ; fixup: num: 10759, src obj: 1, src ofs: 0x3d5b8, dst obj: 1, dst ofs: 0x3fd85
   3d5ba:	03 00                	add    eax,DWORD PTR [eax]
   3d5bc:	d9 fd                	fscale                                                              ; fixup: num: 10758, src obj: 1, src ofs: 0x3d5bc, dst obj: 1, dst ofs: 0x3fdd9
   3d5be:	03 00                	add    eax,DWORD PTR [eax]
   3d5c0:	2d fe 03 00 81       	sub    eax,0x810003fe                                               ; fixup: num: 10757, src obj: 1, src ofs: 0x3d5c0, dst obj: 1, dst ofs: 0x3fe2d; fixup: num: 10756, src obj: 1, src ofs: 0x3d5c4, dst obj: 1, dst ofs: 0x3fe81
   3d5c5:	fe 03                	inc    BYTE PTR [ebx]
   3d5c7:	00 9a ff 03 00 38    	add    BYTE PTR [edx+0x380003ff],bl                                 ; fixup: num: 10755, src obj: 1, src ofs: 0x3d5c8, dst obj: 1, dst ofs: 0x3ff9a; fixup: num: 10754, src obj: 1, src ofs: 0x3d5cc, dst obj: 1, dst ofs: 0x3ff38
   3d5cd:	ff 03                	inc    DWORD PTR [ebx]
   3d5cf:	00 d5                	add    ch,dl                                                        ; fixup: num: 10753, src obj: 1, src ofs: 0x3d5d0, dst obj: 1, dst ofs: 0x3fed5
   3d5d1:	fe 03                	inc    BYTE PTR [ebx]
   3d5d3:	00 c3                	add    bl,al                                                        ; fixup: num: 10752, src obj: 1, src ofs: 0x3d5d4, dst obj: 1, dst ofs: 0x400c3
   3d5d5:	00 04 00             	add    BYTE PTR [eax+eax*1],al
   3d5d8:	60                   	pusha                                                               ; fixup: num: 10751, src obj: 1, src ofs: 0x3d5d8, dst obj: 1, dst ofs: 0x40060
   3d5d9:	00 04 00             	add    BYTE PTR [eax+eax*1],al
   3d5dc:	fd                   	std                                                                 ; fixup: num: 10750, src obj: 1, src ofs: 0x3d5dc, dst obj: 1, dst ofs: 0x3fffd
   3d5dd:	ff 03                	inc    DWORD PTR [ebx]
   3d5df:	00 28                	add    BYTE PTR [eax],ch                                            ; fixup: num: 10749, src obj: 1, src ofs: 0x3d5e0, dst obj: 1, dst ofs: 0x40228
   3d5e1:	02 04 00             	add    al,BYTE PTR [eax+eax*1]
   3d5e4:	a7                   	cmps   DWORD PTR ds:[esi],DWORD PTR es:[edi]                        ; fixup: num: 10748, src obj: 1, src ofs: 0x3d5e4, dst obj: 1, dst ofs: 0x401a7
   3d5e5:	01 04 00             	add    DWORD PTR [eax+eax*1],eax
   3d5e8:	26 01 04 00          	add    DWORD PTR es:[eax+eax*1],eax                                 ; fixup: num: 10747, src obj: 1, src ofs: 0x3d5e8, dst obj: 1, dst ofs: 0x40126
   3d5ec:	ab                   	stos   DWORD PTR es:[edi],eax                                       ; fixup: num: 10746, src obj: 1, src ofs: 0x3d5ec, dst obj: 1, dst ofs: 0x403ab
   3d5ed:	03 04 00             	add    eax,DWORD PTR [eax+eax*1]
   3d5f0:	2a 03                	sub    al,BYTE PTR [ebx]                                            ; fixup: num: 10745, src obj: 1, src ofs: 0x3d5f0, dst obj: 1, dst ofs: 0x4032a
   3d5f2:	04 00                	add    al,0x0
   3d5f4:	a9 02 04 00 7d       	test   eax,0x7d000402                                               ; fixup: num: 10744, src obj: 1, src ofs: 0x3d5f4, dst obj: 1, dst ofs: 0x402a9; fixup: num: 10743, src obj: 1, src ofs: 0x3d5f8, dst obj: 1, dst ofs: 0x4157d
   3d5f9:	15 04 00 7d 15       	adc    eax,0x157d0004                                               ; fixup: num: 10742, src obj: 1, src ofs: 0x3d5fc, dst obj: 1, dst ofs: 0x4157d
   3d5fe:	04 00                	add    al,0x0
   3d600:	7d 15                	jge    @obj1:update_mod_76_2_reference_48                           ; fixup: num: 10741, src obj: 1, src ofs: 0x3d600, dst obj: 1, dst ofs: 0x4157d
   3d602:	04 00                	add    al,0x0
   3d604:	7d 15                	jge    @obj1:update_mod_76_2_reference_48                           ; fixup: num: 10740, src obj: 1, src ofs: 0x3d604, dst obj: 1, dst ofs: 0x4157d
   3d606:	04 00                	add    al,0x0
   3d608:	7d 15                	jge    @obj1:update_mod_76_2_reference_48                           ; fixup: num: 10739, src obj: 1, src ofs: 0x3d608, dst obj: 1, dst ofs: 0x4157d
   3d60a:	04 00                	add    al,0x0
   3d60c:	7d 15                	jge    @obj1:update_mod_76_2_reference_48                           ; fixup: num: 10738, src obj: 1, src ofs: 0x3d60c, dst obj: 1, dst ofs: 0x4157d
   3d60e:	04 00                	add    al,0x0
   3d610:	2c 04                	sub    al,0x4                                                       ; fixup: num: 10737, src obj: 1, src ofs: 0x3d610, dst obj: 1, dst ofs: 0x4042c
   3d612:	04 00                	add    al,0x0
   3d614:	a2 04 04 00 18       	mov    ds:0x18000404,al                                             ; fixup: num: 10736, src obj: 1, src ofs: 0x3d614, dst obj: 1, dst ofs: 0x404a2; fixup: num: 10735, src obj: 1, src ofs: 0x3d618, dst obj: 1, dst ofs: 0x40518
   3d619:	05 04 00 8e 05       	add    eax,0x58e0004                                                ; fixup: num: 10734, src obj: 1, src ofs: 0x3d61c, dst obj: 1, dst ofs: 0x4058e
   3d61e:	04 00                	add    al,0x0
   3d620:	04 06                	add    al,0x6                                                       ; fixup: num: 10733, src obj: 1, src ofs: 0x3d620, dst obj: 1, dst ofs: 0x40604
   3d622:	04 00                	add    al,0x0
   3d624:	78 06                	js     @obj1:update_mod_76_2_reference_35                           ; fixup: num: 10849, src obj: 1, src ofs: 0x3d624, dst obj: 1, dst ofs: 0x40678
   3d626:	04 00                	add    al,0x0
   3d628:	ee                   	out    dx,al                                                        ; fixup: num: 10848, src obj: 1, src ofs: 0x3d628, dst obj: 1, dst ofs: 0x406ee
   3d629:	06                   	push   es
   3d62a:	04 00                	add    al,0x0
   3d62c:	64 07                	fs pop es                                                           ; fixup: num: 10847, src obj: 1, src ofs: 0x3d62c, dst obj: 1, dst ofs: 0x40764
   3d62e:	04 00                	add    al,0x0
   3d630:	da 07                	fiadd  DWORD PTR [edi]                                              ; fixup: num: 10846, src obj: 1, src ofs: 0x3d630, dst obj: 1, dst ofs: 0x407da
   3d632:	04 00                	add    al,0x0
   3d634:	50                   	push   eax                                                          ; fixup: num: 10845, src obj: 1, src ofs: 0x3d634, dst obj: 1, dst ofs: 0x40850
   3d635:	08 04 00             	or     BYTE PTR [eax+eax*1],al
   3d638:	c6                   	(bad)                                                               ; fixup: num: 10844, src obj: 1, src ofs: 0x3d638, dst obj: 1, dst ofs: 0x408c6
   3d639:	08 04 00             	or     BYTE PTR [eax+eax*1],al
   3d63c:	3a 09                	cmp    cl,BYTE PTR [ecx]                                            ; fixup: num: 10843, src obj: 1, src ofs: 0x3d63c, dst obj: 1, dst ofs: 0x4093a
   3d63e:	04 00                	add    al,0x0
   3d640:	7d 15                	jge    @obj1:update_mod_76_2_reference_48                           ; fixup: num: 10842, src obj: 1, src ofs: 0x3d640, dst obj: 1, dst ofs: 0x4157d
   3d642:	04 00                	add    al,0x0
   3d644:	75 0a                	jne    @obj1:update_mod_76_2_reference_43                           ; fixup: num: 10841, src obj: 1, src ofs: 0x3d644, dst obj: 1, dst ofs: 0x40a75
   3d646:	04 00                	add    al,0x0
   3d648:	7d 15                	jge    @obj1:update_mod_76_2_reference_48                           ; fixup: num: 10840, src obj: 1, src ofs: 0x3d648, dst obj: 1, dst ofs: 0x4157d
   3d64a:	04 00                	add    al,0x0
   3d64c:	7d 15                	jge    @obj1:update_mod_76_2_reference_48                           ; fixup: num: 10687, src obj: 1, src ofs: 0x3d64c, dst obj: 1, dst ofs: 0x4157d
   3d64e:	04 00                	add    al,0x0
   3d650:	b0 09                	mov    al,0x9                                                       ; fixup: num: 10686, src obj: 1, src ofs: 0x3d650, dst obj: 1, dst ofs: 0x409b0
   3d652:	04 00                	add    al,0x0
   3d654:	bd fa 03 00 b5       	mov    ebp,0xb50003fa                                               ; fixup: num: 10685, src obj: 1, src ofs: 0x3d654, dst obj: 1, dst ofs: 0x3fabd; fixup: num: 10684, src obj: 1, src ofs: 0x3d658, dst obj: 1, dst ofs: 0x3fbb5
   3d659:	fb                   	sti    
   3d65a:	03 00                	add    eax,DWORD PTR [eax]
W?$ct:NON_PLAYER_CHARACTER$n(pnapnaiibiiipn(ui)pnv)__reference_3:                                   ; access size: DWORDS
   3d65c:	93                   	xchg   ebx,eax                                                      ; fixup: num: 10683, src obj: 1, src ofs: 0x3d65c, dst obj: 1, dst ofs: 0x41593
   3d65d:	15 04 00 93 15       	adc    eax,0x15930004                                               ; fixup: num: 10682, src obj: 1, src ofs: 0x3d660, dst obj: 1, dst ofs: 0x41593
   3d662:	04 00                	add    al,0x0
   3d664:	93                   	xchg   ebx,eax                                                      ; fixup: num: 10681, src obj: 1, src ofs: 0x3d664, dst obj: 1, dst ofs: 0x41593
   3d665:	15 04 00 93 15       	adc    eax,0x15930004                                               ; fixup: num: 10680, src obj: 1, src ofs: 0x3d668, dst obj: 1, dst ofs: 0x41593
   3d66a:	04 00                	add    al,0x0
   3d66c:	23 20                	and    esp,DWORD PTR [eax]                                          ; fixup: num: 10679, src obj: 1, src ofs: 0x3d66c, dst obj: 1, dst ofs: 0x42023
   3d66e:	04 00                	add    al,0x0
   3d670:	6a 24                	push   0x24                                                         ; fixup: num: 10678, src obj: 1, src ofs: 0x3d670, dst obj: 1, dst ofs: 0x4246a
   3d672:	04 00                	add    al,0x0
   3d674:	6a 24                	push   0x24                                                         ; fixup: num: 10677, src obj: 1, src ofs: 0x3d674, dst obj: 1, dst ofs: 0x4246a
   3d676:	04 00                	add    al,0x0
   3d678:	f7 15 04 00 fb 24    	not    DWORD PTR ds:0x24fb0004                                      ; fixup: num: 10676, src obj: 1, src ofs: 0x3d678, dst obj: 1, dst ofs: 0x415f7; fixup: num: 10788, src obj: 1, src ofs: 0x3d67c, dst obj: 1, dst ofs: 0x424fb
   3d67e:	04 00                	add    al,0x0
   3d680:	6a 24                	push   0x24                                                         ; fixup: num: 10787, src obj: 1, src ofs: 0x3d680, dst obj: 1, dst ofs: 0x4246a
   3d682:	04 00                	add    al,0x0
   3d684:	6a 24                	push   0x24                                                         ; fixup: num: 10786, src obj: 1, src ofs: 0x3d684, dst obj: 1, dst ofs: 0x4246a
   3d686:	04 00                	add    al,0x0
   3d688:	4d                   	dec    ebp                                                          ; fixup: num: 10785, src obj: 1, src ofs: 0x3d688, dst obj: 1, dst ofs: 0x4224d
   3d689:	22 04 00             	and    al,BYTE PTR [eax+eax*1]
   3d68c:	6a 24                	push   0x24                                                         ; fixup: num: 10784, src obj: 1, src ofs: 0x3d68c, dst obj: 1, dst ofs: 0x4246a
   3d68e:	04 00                	add    al,0x0
   3d690:	6a 24                	push   0x24                                                         ; fixup: num: 10783, src obj: 1, src ofs: 0x3d690, dst obj: 1, dst ofs: 0x4246a
   3d692:	04 00                	add    al,0x0
   3d694:	73 18                	jae    @obj1:update_mod_76_2_reference_52                           ; fixup: num: 10782, src obj: 1, src ofs: 0x3d694, dst obj: 1, dst ofs: 0x41873
   3d696:	04 00                	add    al,0x0
   3d698:	95                   	xchg   ebp,eax                                                      ; fixup: num: 10781, src obj: 1, src ofs: 0x3d698, dst obj: 1, dst ofs: 0x42595
   3d699:	25 04 00 6a 24       	and    eax,0x246a0004                                               ; fixup: num: 10780, src obj: 1, src ofs: 0x3d69c, dst obj: 1, dst ofs: 0x4246a
   3d69e:	04 00                	add    al,0x0
   3d6a0:	6a 24                	push   0x24                                                         ; fixup: num: 10779, src obj: 1, src ofs: 0x3d6a0, dst obj: 1, dst ofs: 0x4246a
   3d6a2:	04 00                	add    al,0x0
   3d6a4:	34 26                	xor    al,0x26                                                      ; fixup: num: 10778, src obj: 1, src ofs: 0x3d6a4, dst obj: 1, dst ofs: 0x42634
   3d6a6:	04 00                	add    al,0x0
   3d6a8:	ab                   	stos   DWORD PTR es:[edi],eax                                       ; fixup: num: 10777, src obj: 1, src ofs: 0x3d6a8, dst obj: 1, dst ofs: 0x426ab
   3d6a9:	26 04 00             	es add al,0x0
   3d6ac:	9d                   	popf                                                                ; fixup: num: 10776, src obj: 1, src ofs: 0x3d6ac, dst obj: 1, dst ofs: 0x3ef9d
   3d6ad:	ef                   	out    dx,eax
   3d6ae:	03 00                	add    eax,DWORD PTR [eax]
   3d6b0:	9d                   	popf                                                                ; fixup: num: 10775, src obj: 1, src ofs: 0x3d6b0, dst obj: 1, dst ofs: 0x3ef9d
   3d6b1:	ef                   	out    dx,eax
   3d6b2:	03 00                	add    eax,DWORD PTR [eax]
   3d6b4:	25 27 04 00 25       	and    eax,0x25000427                                               ; fixup: num: 10774, src obj: 1, src ofs: 0x3d6b4, dst obj: 1, dst ofs: 0x42725; fixup: num: 10773, src obj: 1, src ofs: 0x3d6b8, dst obj: 1, dst ofs: 0x42725
   3d6b9:	27                   	daa    
   3d6ba:	04 00                	add    al,0x0
   3d6bc:	25 27 04 00 25       	and    eax,0x25000427                                               ; fixup: num: 10772, src obj: 1, src ofs: 0x3d6bc, dst obj: 1, dst ofs: 0x42725; fixup: num: 10771, src obj: 1, src ofs: 0x3d6c0, dst obj: 1, dst ofs: 0x42725
   3d6c1:	27                   	daa    
   3d6c2:	04 00                	add    al,0x0
   3d6c4:	25 27 04 00 25       	and    eax,0x25000427                                               ; fixup: num: 10770, src obj: 1, src ofs: 0x3d6c4, dst obj: 1, dst ofs: 0x42725; fixup: num: 10769, src obj: 1, src ofs: 0x3d6c8, dst obj: 1, dst ofs: 0x42725
   3d6c9:	27                   	daa    
   3d6ca:	04 00                	add    al,0x0
   3d6cc:	51                   	push   ecx                                                          ; fixup: num: 10768, src obj: 1, src ofs: 0x3d6cc, dst obj: 1, dst ofs: 0x43551
   3d6cd:	35 04 00 51 35       	xor    eax,0x35510004                                               ; fixup: num: 10767, src obj: 1, src ofs: 0x3d6d0, dst obj: 1, dst ofs: 0x43551
   3d6d2:	04 00                	add    al,0x0
   3d6d4:	51                   	push   ecx                                                          ; fixup: num: 10766, src obj: 1, src ofs: 0x3d6d4, dst obj: 1, dst ofs: 0x43551
   3d6d5:	35 04 00 1e 36       	xor    eax,0x361e0004                                               ; fixup: num: 10765, src obj: 1, src ofs: 0x3d6d8, dst obj: 1, dst ofs: 0x4361e
   3d6da:	04 00                	add    al,0x0
   3d6dc:	1e                   	push   ds                                                           ; fixup: num: 10764, src obj: 1, src ofs: 0x3d6dc, dst obj: 1, dst ofs: 0x4361e
   3d6dd:	36 04 00             	ss add al,0x0
   3d6e0:	1e                   	push   ds                                                           ; fixup: num: 10763, src obj: 1, src ofs: 0x3d6e0, dst obj: 1, dst ofs: 0x4361e
   3d6e1:	36 04 00             	ss add al,0x0
   3d6e4:	9d                   	popf                                                                ; fixup: num: 10762, src obj: 1, src ofs: 0x3d6e4, dst obj: 1, dst ofs: 0x3ef9d
   3d6e5:	ef                   	out    dx,eax
   3d6e6:	03 00                	add    eax,DWORD PTR [eax]
   3d6e8:	9d                   	popf                                                                ; fixup: num: 10714, src obj: 1, src ofs: 0x3d6e8, dst obj: 1, dst ofs: 0x3ef9d
   3d6e9:	ef                   	out    dx,eax
   3d6ea:	03 00                	add    eax,DWORD PTR [eax]
   3d6ec:	9d                   	popf                                                                ; fixup: num: 10713, src obj: 1, src ofs: 0x3d6ec, dst obj: 1, dst ofs: 0x3ef9d
   3d6ed:	ef                   	out    dx,eax
   3d6ee:	03 00                	add    eax,DWORD PTR [eax]
   3d6f0:	9d                   	popf                                                                ; fixup: num: 10712, src obj: 1, src ofs: 0x3d6f0, dst obj: 1, dst ofs: 0x3ef9d
   3d6f1:	ef                   	out    dx,eax
   3d6f2:	03 00                	add    eax,DWORD PTR [eax]
   3d6f4:	9d                   	popf                                                                ; fixup: num: 10711, src obj: 1, src ofs: 0x3d6f4, dst obj: 1, dst ofs: 0x3ef9d
   3d6f5:	ef                   	out    dx,eax
   3d6f6:	03 00                	add    eax,DWORD PTR [eax]
   3d6f8:	9d                   	popf                                                                ; fixup: num: 10710, src obj: 1, src ofs: 0x3d6f8, dst obj: 1, dst ofs: 0x3ef9d
   3d6f9:	ef                   	out    dx,eax
   3d6fa:	03 00                	add    eax,DWORD PTR [eax]
   3d6fc:	ee                   	out    dx,al                                                        ; fixup: num: 10709, src obj: 1, src ofs: 0x3d6fc, dst obj: 1, dst ofs: 0x436ee
   3d6fd:	36 04 00             	ss add al,0x0
   3d700:	ee                   	out    dx,al                                                        ; fixup: num: 10708, src obj: 1, src ofs: 0x3d700, dst obj: 1, dst ofs: 0x436ee
   3d701:	36 04 00             	ss add al,0x0
   3d704:	ee                   	out    dx,al                                                        ; fixup: num: 10707, src obj: 1, src ofs: 0x3d704, dst obj: 1, dst ofs: 0x436ee
   3d705:	36 04 00             	ss add al,0x0
   3d708:	ee                   	out    dx,al                                                        ; fixup: num: 10706, src obj: 1, src ofs: 0x3d708, dst obj: 1, dst ofs: 0x436ee
   3d709:	36 04 00             	ss add al,0x0
   3d70c:	ee                   	out    dx,al                                                        ; fixup: num: 10705, src obj: 1, src ofs: 0x3d70c, dst obj: 1, dst ofs: 0x436ee
   3d70d:	36 04 00             	ss add al,0x0
   3d710:	ee                   	out    dx,al                                                        ; fixup: num: 10704, src obj: 1, src ofs: 0x3d710, dst obj: 1, dst ofs: 0x436ee
   3d711:	36 04 00             	ss add al,0x0
   3d714:	ee                   	out    dx,al                                                        ; fixup: num: 10703, src obj: 1, src ofs: 0x3d714, dst obj: 1, dst ofs: 0x436ee
   3d715:	36 04 00             	ss add al,0x0
   3d718:	ee                   	out    dx,al                                                        ; fixup: num: 10702, src obj: 1, src ofs: 0x3d718, dst obj: 1, dst ofs: 0x436ee
   3d719:	36 04 00             	ss add al,0x0
   3d71c:	ee                   	out    dx,al                                                        ; fixup: num: 10701, src obj: 1, src ofs: 0x3d71c, dst obj: 1, dst ofs: 0x436ee
   3d71d:	36 04 00             	ss add al,0x0
   3d720:	ee                   	out    dx,al                                                        ; fixup: num: 10700, src obj: 1, src ofs: 0x3d720, dst obj: 1, dst ofs: 0x436ee
   3d721:	36 04 00             	ss add al,0x0
   3d724:	ee                   	out    dx,al                                                        ; fixup: num: 10699, src obj: 1, src ofs: 0x3d724, dst obj: 1, dst ofs: 0x436ee
   3d725:	36 04 00             	ss add al,0x0
   3d728:	ee                   	out    dx,al                                                        ; fixup: num: 10698, src obj: 1, src ofs: 0x3d728, dst obj: 1, dst ofs: 0x436ee
   3d729:	36 04 00             	ss add al,0x0
   3d72c:	9d                   	popf                                                                ; fixup: num: 10697, src obj: 1, src ofs: 0x3d72c, dst obj: 1, dst ofs: 0x3ef9d
   3d72d:	ef                   	out    dx,eax
   3d72e:	03 00                	add    eax,DWORD PTR [eax]
   3d730:	9d                   	popf                                                                ; fixup: num: 10696, src obj: 1, src ofs: 0x3d730, dst obj: 1, dst ofs: 0x3ef9d
   3d731:	ef                   	out    dx,eax
   3d732:	03 00                	add    eax,DWORD PTR [eax]
   3d734:	9d                   	popf                                                                ; fixup: num: 10695, src obj: 1, src ofs: 0x3d734, dst obj: 1, dst ofs: 0x3ef9d
   3d735:	ef                   	out    dx,eax
   3d736:	03 00                	add    eax,DWORD PTR [eax]
   3d738:	9d                   	popf                                                                ; fixup: num: 10694, src obj: 1, src ofs: 0x3d738, dst obj: 1, dst ofs: 0x3ef9d
   3d739:	ef                   	out    dx,eax
   3d73a:	03 00                	add    eax,DWORD PTR [eax]
   3d73c:	9d                   	popf                                                                ; fixup: num: 10693, src obj: 1, src ofs: 0x3d73c, dst obj: 1, dst ofs: 0x3ef9d
   3d73d:	ef                   	out    dx,eax
   3d73e:	03 00                	add    eax,DWORD PTR [eax]
   3d740:	d7                   	xlat   BYTE PTR ds:[ebx]                                            ; fixup: num: 10692, src obj: 1, src ofs: 0x3d740, dst obj: 1, dst ofs: 0x41ad7
   3d741:	1a 04 00             	sbb    al,BYTE PTR [eax+eax*1]
   3d744:	a9 1c 04 00 8d       	test   eax,0x8d00041c                                               ; fixup: num: 10691, src obj: 1, src ofs: 0x3d744, dst obj: 1, dst ofs: 0x41ca9
   3d749:	80 00 00             	add    BYTE PTR [eax],0x0
   3d74c:	00 00                	add    BYTE PTR [eax],al
   3d74e:	8b d2                	mov    edx,edx

;-------------------------------------------------
;  Function 'update_mod_76_2'                    -
;-------------------------------------------------
update_mod_76_2:
   3d750:	53                   	push   ebx
   3d751:	51                   	push   ecx
   3d752:	52                   	push   edx
   3d753:	56                   	push   esi
   3d754:	57                   	push   edi
   3d755:	55                   	push   ebp
   3d756:	83 ec 40             	sub    esp,0x40
   3d759:	89 c6                	mov    esi,eax
   3d75b:	83 78 38 06          	cmp    DWORD PTR [eax+0x38],0x6
   3d75f:	75 26                	jne    update_mod_76_2_branch_1
   3d761:	0f be 80 a1 11 00 00 	movsx  eax,BYTE PTR [eax+0x11a1]
   3d768:	50                   	push   eax
   3d769:	0f be 86 a0 11 00 00 	movsx  eax,BYTE PTR [esi+0x11a0]
   3d770:	50                   	push   eax
   3d771:	8b 5e 10             	mov    ebx,DWORD PTR [esi+0x10]
   3d774:	53                   	push   ebx
   3d775:	68 97 a0 00 00       	push   @obj3:classes_cpp_variable_54                                ; fixup: num: 10690, src obj: 1, src ofs: 0x3d776, dst obj: 3, dst ofs: 0xa097
   3d77a:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 10689, src obj: 1, src ofs: 0x3d77b, dst obj: 3, dst ofs: 0x237fc
   3d77f:	e8 5d 34 03 00       	call   sprintf_
   3d784:	83 c4 14             	add    esp,0x14
update_mod_76_2_branch_1:
   3d787:	83 7e 38 05          	cmp    DWORD PTR [esi+0x38],0x5
   3d78b:	75 1f                	jne    update_mod_76_2_branch_2
   3d78d:	80 3d b1 3e 01 00 00 	cmp    BYTE PTR ds:@obj3:show_pc,0x0                                ; fixup: num: 10688, src obj: 1, src ofs: 0x3d78f, dst obj: 3, dst ofs: 0x13eb1
   3d794:	0f 84 35 18 00 00    	je     update_mod_76_2_branch_172
   3d79a:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 10720, src obj: 1, src ofs: 0x3d79b, dst obj: 3, dst ofs: 0x25bd4
   3d79f:	80 b8 b4 11 00 00 00 	cmp    BYTE PTR [eax+0x11b4],0x0
   3d7a6:	0f 85 23 18 00 00    	jne    update_mod_76_2_branch_172
update_mod_76_2_branch_2:
   3d7ac:	80 be a0 11 00 00 38 	cmp    BYTE PTR [esi+0x11a0],0x38
   3d7b3:	75 21                	jne    update_mod_76_2_branch_3
   3d7b5:	bf 0a 00 00 00       	mov    edi,0xa
   3d7ba:	30 db                	xor    bl,bl
   3d7bc:	bd 75 02 00 00       	mov    ebp,0x275
   3d7c1:	88 1d 9c 60 02 00    	mov    BYTE PTR ds:@obj3:combat_mode,bl                             ; fixup: num: 10719, src obj: 1, src ofs: 0x3d7c3, dst obj: 3, dst ofs: 0x2609c
   3d7c7:	89 3d 08 3c 01 00    	mov    DWORD PTR ds:@obj3:move_min_x,edi                            ; fixup: num: 10718, src obj: 1, src ofs: 0x3d7c9, dst obj: 3, dst ofs: 0x13c08
   3d7cd:	89 2d 0c 3c 01 00    	mov    DWORD PTR ds:@obj3:move_max_x,ebp                            ; fixup: num: 10717, src obj: 1, src ofs: 0x3d7cf, dst obj: 3, dst ofs: 0x13c0c
   3d7d3:	88 5e 08             	mov    BYTE PTR [esi+0x8],bl
update_mod_76_2_branch_3:
   3d7d6:	8b 86 a8 11 00 00    	mov    eax,DWORD PTR [esi+0x11a8]
   3d7dc:	85 c0                	test   eax,eax
   3d7de:	74 34                	je     update_mod_76_2_branch_4
   3d7e0:	8a 78 52             	mov    bh,BYTE PTR [eax+0x52]
   3d7e3:	89 c2                	mov    edx,eax
   3d7e5:	84 ff                	test   bh,bh
   3d7e7:	75 2b                	jne    update_mod_76_2_branch_4
   3d7e9:	8b 98 84 10 00 00    	mov    ebx,DWORD PTR [eax+0x1084]
   3d7ef:	85 db                	test   ebx,ebx
   3d7f1:	7c 21                	jl     update_mod_76_2_branch_4
   3d7f3:	8d 4b ff             	lea    ecx,[ebx-0x1]
   3d7f6:	89 88 84 10 00 00    	mov    DWORD PTR [eax+0x1084],ecx
   3d7fc:	83 f9 ff             	cmp    ecx,0xffffffff
   3d7ff:	75 13                	jne    update_mod_76_2_branch_4
   3d801:	83 b8 64 10 00 00 00 	cmp    DWORD PTR [eax+0x1064],0x0
   3d808:	7c 0a                	jl     update_mod_76_2_branch_4
   3d80a:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 10716, src obj: 1, src ofs: 0x3d80b, dst obj: 3, dst ofs: 0x25a88
   3d80f:	e8 dc ee 00 00       	call   remove_bitmap
update_mod_76_2_branch_4:
   3d814:	8b 46 3c             	mov    eax,DWORD PTR [esi+0x3c]
   3d817:	03 46 24             	add    eax,DWORD PTR [esi+0x24]
   3d81a:	8b 5e 38             	mov    ebx,DWORD PTR [esi+0x38]
   3d81d:	89 86 98 11 00 00    	mov    DWORD PTR [esi+0x1198],eax
   3d823:	83 fb 04             	cmp    ebx,0x4
   3d826:	75 3a                	jne    update_mod_76_2_branch_5
   3d828:	8a 8e a0 11 00 00    	mov    cl,BYTE PTR [esi+0x11a0]
   3d82e:	80 f9 34             	cmp    cl,0x34
   3d831:	75 2f                	jne    update_mod_76_2_branch_5
   3d833:	3a 8e a1 11 00 00    	cmp    cl,BYTE PTR [esi+0x11a1]
   3d839:	75 27                	jne    update_mod_76_2_branch_5
   3d83b:	80 3d 9c 60 02 00 00 	cmp    BYTE PTR ds:@obj3:combat_mode,0x0                            ; fixup: num: 10715, src obj: 1, src ofs: 0x3d83d, dst obj: 3, dst ofs: 0x2609c
   3d842:	0f 84 80 17 00 00    	je     update_mod_76_2_branch_171
   3d848:	ba ba a0 00 00       	mov    edx,@obj3:classes_cpp_variable_55                            ; fixup: num: 10723, src obj: 1, src ofs: 0x3d849, dst obj: 3, dst ofs: 0xa0ba
   3d84d:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
   3d850:	e8 db 8b 03 00       	call   strcmp_
   3d855:	85 c0                	test   eax,eax
   3d857:	0f 85 6b 17 00 00    	jne    update_mod_76_2_branch_171
   3d85d:	e9 6d 17 00 00       	jmp    update_mod_76_2_branch_172
update_mod_76_2_branch_5:
   3d862:	83 7e 38 05          	cmp    DWORD PTR [esi+0x38],0x5
   3d866:	75 21                	jne    update_mod_76_2_branch_6
   3d868:	80 3d 9c 60 02 00 00 	cmp    BYTE PTR ds:@obj3:combat_mode,0x0                            ; fixup: num: 10722, src obj: 1, src ofs: 0x3d86a, dst obj: 3, dst ofs: 0x2609c
   3d86f:	75 18                	jne    update_mod_76_2_branch_6
   3d871:	0f bf 05 08 59 02 00 	movsx  eax,WORD PTR ds:@obj3:raw_key                                ; fixup: num: 10721, src obj: 1, src ofs: 0x3d874, dst obj: 3, dst ofs: 0x25908
   3d878:	83 f8 38             	cmp    eax,0x38
   3d87b:	75 0c                	jne    update_mod_76_2_branch_6
   3d87d:	c7 86 80 10 00 00 1e 00 00 00 	mov    DWORD PTR [esi+0x1080],0x1e
   3d887:	eb 0a                	jmp    update_mod_76_2_branch_7
update_mod_76_2_branch_6:
   3d889:	c7 86 80 10 00 00 11 00 00 00 	mov    DWORD PTR [esi+0x1080],0x11
update_mod_76_2_branch_7:
   3d893:	8b be 64 10 00 00    	mov    edi,DWORD PTR [esi+0x1064]
   3d899:	89 f0                	mov    eax,esi
   3d89b:	85 ff                	test   edi,edi
   3d89d:	7d 04                	jge    update_mod_76_2_branch_8
   3d89f:	b0 01                	mov    al,0x1
   3d8a1:	eb 32                	jmp    update_mod_76_2_branch_11
update_mod_76_2_branch_8:
   3d8a3:	80 7e 50 00          	cmp    BYTE PTR [esi+0x50],0x0
   3d8a7:	75 2a                	jne    update_mod_76_2_branch_10
   3d8a9:	80 7e 4c 00          	cmp    BYTE PTR [esi+0x4c],0x0
   3d8ad:	74 0c                	je     update_mod_76_2_branch_9
   3d8af:	3b be 78 10 00 00    	cmp    edi,DWORD PTR [esi+0x1078]
   3d8b5:	75 04                	jne    update_mod_76_2_branch_9
   3d8b7:	b0 01                	mov    al,0x1
   3d8b9:	eb 1a                	jmp    update_mod_76_2_branch_11
update_mod_76_2_branch_9:
   3d8bb:	80 78 4c 00          	cmp    BYTE PTR [eax+0x4c],0x0
   3d8bf:	75 12                	jne    update_mod_76_2_branch_10
   3d8c1:	8b 90 64 10 00 00    	mov    edx,DWORD PTR [eax+0x1064]
   3d8c7:	3b 90 6c 10 00 00    	cmp    edx,DWORD PTR [eax+0x106c]
   3d8cd:	75 04                	jne    update_mod_76_2_branch_10
   3d8cf:	b0 01                	mov    al,0x1
   3d8d1:	eb 02                	jmp    update_mod_76_2_branch_11
update_mod_76_2_branch_10:
   3d8d3:	30 c0                	xor    al,al
update_mod_76_2_branch_11:
   3d8d5:	84 c0                	test   al,al
   3d8d7:	0f 84 72 5e 00 00    	je     update_mod_76_2_branch_530
   3d8dd:	83 be a4 11 00 00 00 	cmp    DWORD PTR [esi+0x11a4],0x0
   3d8e4:	0f 85 23 0a 00 00    	jne    update_mod_76_2_branch_74
   3d8ea:	80 be a1 11 00 00 1c 	cmp    BYTE PTR [esi+0x11a1],0x1c
   3d8f1:	0f 8d 16 0a 00 00    	jge    update_mod_76_2_branch_74
   3d8f7:	83 7e 38 06          	cmp    DWORD PTR [esi+0x38],0x6
   3d8fb:	0f 85 00 03 00 00    	jne    update_mod_76_2_branch_25
   3d901:	8b 1d d4 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:pc                                    ; fixup: num: 10727, src obj: 1, src ofs: 0x3d903, dst obj: 3, dst ofs: 0x25bd4
   3d907:	d9 43 1c             	fld    DWORD PTR [ebx+0x1c]
   3d90a:	d8 05 91 a7 00 00    	fadd   DWORD PTR ds:@obj3:classes_cpp_variable_135                  ; fixup: num: 10726, src obj: 1, src ofs: 0x3d90c, dst obj: 3, dst ofs: 0xa791
   3d910:	d8 5e 1c             	fcomp  DWORD PTR [esi+0x1c]
   3d913:	df e0                	fnstsw ax
   3d915:	9e                   	sahf   
   3d916:	0f 87 b7 02 00 00    	ja     update_mod_76_2_branch_24
   3d91c:	d9 43 1c             	fld    DWORD PTR [ebx+0x1c]
   3d91f:	d8 05 95 a7 00 00    	fadd   DWORD PTR ds:@obj3:classes_cpp_variable_136                  ; fixup: num: 10725, src obj: 1, src ofs: 0x3d921, dst obj: 3, dst ofs: 0xa795
   3d925:	d8 5e 1c             	fcomp  DWORD PTR [esi+0x1c]
   3d928:	df e0                	fnstsw ax
   3d92a:	9e                   	sahf   
   3d92b:	0f 82 a2 02 00 00    	jb     update_mod_76_2_branch_24
   3d931:	8b 4e 3c             	mov    ecx,DWORD PTR [esi+0x3c]
   3d934:	8b 56 24             	mov    edx,DWORD PTR [esi+0x24]
   3d937:	8b 46 2c             	mov    eax,DWORD PTR [esi+0x2c]
   3d93a:	01 d1                	add    ecx,edx
   3d93c:	89 c2                	mov    edx,eax
   3d93e:	c1 fa 1f             	sar    edx,0x1f
   3d941:	2b c2                	sub    eax,edx
   3d943:	d1 f8                	sar    eax,1
   3d945:	8d 3c 01             	lea    edi,[ecx+eax*1]
   3d948:	8b 43 3c             	mov    eax,DWORD PTR [ebx+0x3c]
   3d94b:	8b 4b 24             	mov    ecx,DWORD PTR [ebx+0x24]
   3d94e:	01 c1                	add    ecx,eax
   3d950:	8b 43 2c             	mov    eax,DWORD PTR [ebx+0x2c]
   3d953:	89 c2                	mov    edx,eax
   3d955:	c1 fa 1f             	sar    edx,0x1f
   3d958:	2b c2                	sub    eax,edx
   3d95a:	d1 f8                	sar    eax,1
   3d95c:	01 c8                	add    eax,ecx
   3d95e:	29 c7                	sub    edi,eax
   3d960:	89 f8                	mov    eax,edi
   3d962:	89 f9                	mov    ecx,edi
   3d964:	99                   	cdq    
   3d965:	31 d0                	xor    eax,edx
   3d967:	29 d0                	sub    eax,edx
   3d969:	3b 86 2c 11 00 00    	cmp    eax,DWORD PTR [esi+0x112c]
   3d96f:	0f 8f ec 01 00 00    	jg     update_mod_76_2_branch_20
   3d975:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 10724, src obj: 1, src ofs: 0x3d976, dst obj: 3, dst ofs: 0x25bd4
   3d97a:	8a 90 a0 11 00 00    	mov    dl,BYTE PTR [eax+0x11a0]
   3d980:	80 fa 18             	cmp    dl,0x18
   3d983:	75 1d                	jne    update_mod_76_2_branch_12
   3d985:	80 fa 17             	cmp    dl,0x17
   3d988:	75 18                	jne    update_mod_76_2_branch_12
   3d98a:	80 fa 16             	cmp    dl,0x16
   3d98d:	75 13                	jne    update_mod_76_2_branch_12
   3d98f:	80 fa 1b             	cmp    dl,0x1b
   3d992:	75 0e                	jne    update_mod_76_2_branch_12
   3d994:	80 fa 1a             	cmp    dl,0x1a
   3d997:	75 09                	jne    update_mod_76_2_branch_12
   3d999:	80 fa 19             	cmp    dl,0x19
   3d99c:	0f 84 bf 01 00 00    	je     update_mod_76_2_branch_20
update_mod_76_2_branch_12:
   3d9a2:	8b 86 44 11 00 00    	mov    eax,DWORD PTR [esi+0x1144]
   3d9a8:	8b 3d 44 7e 01 00    	mov    edi,DWORD PTR ds:@obj3:current_time                          ; fixup: num: 10730, src obj: 1, src ofs: 0x3d9aa, dst obj: 3, dst ofs: 0x17e44
   3d9ae:	83 c0 32             	add    eax,0x32
   3d9b1:	39 f8                	cmp    eax,edi
   3d9b3:	72 1f                	jb     update_mod_76_2_branch_13
   3d9b5:	8b 86 2c 11 00 00    	mov    eax,DWORD PTR [esi+0x112c]
   3d9bb:	89 c2                	mov    edx,eax
   3d9bd:	bb 03 00 00 00       	mov    ebx,0x3
   3d9c2:	c1 fa 1f             	sar    edx,0x1f
   3d9c5:	f7 fb                	idiv   ebx
   3d9c7:	89 c3                	mov    ebx,eax
   3d9c9:	89 c8                	mov    eax,ecx
   3d9cb:	99                   	cdq    
   3d9cc:	31 d0                	xor    eax,edx
   3d9ce:	29 d0                	sub    eax,edx
   3d9d0:	39 d8                	cmp    eax,ebx
   3d9d2:	7f 32                	jg     update_mod_76_2_branch_14
update_mod_76_2_branch_13:
   3d9d4:	80 be a0 11 00 00 1c 	cmp    BYTE PTR [esi+0x11a0],0x1c
   3d9db:	7d 29                	jge    update_mod_76_2_branch_14
   3d9dd:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 10729, src obj: 1, src ofs: 0x3d9de, dst obj: 3, dst ofs: 0x25bd4
   3d9e2:	89 86 a4 11 00 00    	mov    DWORD PTR [esi+0x11a4],eax
   3d9e8:	e8 ea 8a 03 00       	call   rand_
   3d9ed:	89 c2                	mov    edx,eax
   3d9ef:	bb 64 00 00 00       	mov    ebx,0x64
   3d9f4:	c1 fa 1f             	sar    edx,0x1f
   3d9f7:	f7 fb                	idiv   ebx
   3d9f9:	a1 44 7e 01 00       	mov    eax,ds:@obj3:current_time                                    ; fixup: num: 10728, src obj: 1, src ofs: 0x3d9fa, dst obj: 3, dst ofs: 0x17e44
   3d9fe:	01 d0                	add    eax,edx
   3da00:	89 86 44 11 00 00    	mov    DWORD PTR [esi+0x1144],eax
update_mod_76_2_branch_14:
   3da06:	8b ae 24 11 00 00    	mov    ebp,DWORD PTR [esi+0x1124]
   3da0c:	85 ed                	test   ebp,ebp
   3da0e:	0f 8c ed 01 00 00    	jl     update_mod_76_2_branch_25
   3da14:	8d 04 ad 00 00 00 00 	lea    eax,[ebp*4+0x0]
   3da1b:	29 e8                	sub    eax,ebp
   3da1d:	8d 04 85 00 00 00 00 	lea    eax,[eax*4+0x0]
   3da24:	01 f0                	add    eax,esi
   3da26:	83 b8 ac 10 00 00 ff 	cmp    DWORD PTR [eax+0x10ac],0xffffffff
   3da2d:	0f 8e ce 01 00 00    	jle    update_mod_76_2_branch_25
   3da33:	c7 80 ac 10 00 00 ff ff ff ff 	mov    DWORD PTR [eax+0x10ac],0xffffffff
   3da3d:	c7 86 24 11 00 00 ff ff ff ff 	mov    DWORD PTR [esi+0x1124],0xffffffff
   3da47:	8a ae a0 11 00 00    	mov    ch,BYTE PTR [esi+0x11a0]
   3da4d:	c7 86 a0 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x10a0],0x0
   3da57:	80 fd 07             	cmp    ch,0x7
   3da5a:	74 05                	je     update_mod_76_2_branch_15
   3da5c:	80 fd 39             	cmp    ch,0x39
   3da5f:	75 79                	jne    update_mod_76_2_branch_17
update_mod_76_2_branch_15:
   3da61:	c6 86 a0 11 00 00 01 	mov    BYTE PTR [esi+0x11a0],0x1
   3da68:	8a 86 a0 11 00 00    	mov    al,BYTE PTR [esi+0x11a0]
   3da6e:	8a be 8e 11 00 00    	mov    bh,BYTE PTR [esi+0x118e]
   3da74:	88 86 a1 11 00 00    	mov    BYTE PTR [esi+0x11a1],al
   3da7a:	f6 c7 10             	test   bh,0x10
   3da7d:	74 27                	je     update_mod_76_2_branch_16
   3da7f:	ba 0e 00 00 00       	mov    edx,0xe
   3da84:	89 f0                	mov    eax,esi
   3da86:	e8 15 ee ff ff       	call   go_to_frame_mod_76
   3da8b:	c7 86 78 10 00 00 0e 00 00 00 	mov    DWORD PTR [esi+0x1078],0xe
   3da95:	8b 86 78 10 00 00    	mov    eax,DWORD PTR [esi+0x1078]
   3da9b:	89 86 6c 10 00 00    	mov    DWORD PTR [esi+0x106c],eax
   3daa1:	e9 5b 01 00 00       	jmp    update_mod_76_2_branch_25
update_mod_76_2_branch_16:
   3daa6:	f6 86 8c 11 00 00 10 	test   BYTE PTR [esi+0x118c],0x10
   3daad:	0f 84 4e 01 00 00    	je     update_mod_76_2_branch_25
   3dab3:	ba 0f 00 00 00       	mov    edx,0xf
   3dab8:	89 f0                	mov    eax,esi
   3daba:	e8 e1 ed ff ff       	call   go_to_frame_mod_76
   3dabf:	c7 86 78 10 00 00 0f 00 00 00 	mov    DWORD PTR [esi+0x1078],0xf
   3dac9:	8b 86 78 10 00 00    	mov    eax,DWORD PTR [esi+0x1078]
   3dacf:	89 86 6c 10 00 00    	mov    DWORD PTR [esi+0x106c],eax
   3dad5:	e9 27 01 00 00       	jmp    update_mod_76_2_branch_25
update_mod_76_2_branch_17:
   3dada:	80 fd 0e             	cmp    ch,0xe
   3dadd:	74 09                	je     update_mod_76_2_branch_18
   3dadf:	80 fd 3a             	cmp    ch,0x3a
   3dae2:	0f 85 19 01 00 00    	jne    update_mod_76_2_branch_25
update_mod_76_2_branch_18:
   3dae8:	c6 86 a0 11 00 00 02 	mov    BYTE PTR [esi+0x11a0],0x2
   3daef:	8a 86 a0 11 00 00    	mov    al,BYTE PTR [esi+0x11a0]
   3daf5:	8a b6 8e 11 00 00    	mov    dh,BYTE PTR [esi+0x118e]
   3dafb:	88 86 a1 11 00 00    	mov    BYTE PTR [esi+0x11a1],al
   3db01:	f6 c6 20             	test   dh,0x20
   3db04:	74 27                	je     update_mod_76_2_branch_19
   3db06:	ba 2c 00 00 00       	mov    edx,0x2c
   3db0b:	89 f0                	mov    eax,esi
   3db0d:	e8 8e ed ff ff       	call   go_to_frame_mod_76
   3db12:	c7 86 78 10 00 00 2c 00 00 00 	mov    DWORD PTR [esi+0x1078],0x2c
   3db1c:	8b 86 78 10 00 00    	mov    eax,DWORD PTR [esi+0x1078]
   3db22:	89 86 6c 10 00 00    	mov    DWORD PTR [esi+0x106c],eax
   3db28:	e9 d4 00 00 00       	jmp    update_mod_76_2_branch_25
update_mod_76_2_branch_19:
   3db2d:	f6 86 8c 11 00 00 40 	test   BYTE PTR [esi+0x118c],0x40
   3db34:	0f 84 c7 00 00 00    	je     update_mod_76_2_branch_25
   3db3a:	ba 2d 00 00 00       	mov    edx,0x2d
   3db3f:	89 f0                	mov    eax,esi
   3db41:	e8 5a ed ff ff       	call   go_to_frame_mod_76
   3db46:	c7 86 78 10 00 00 2d 00 00 00 	mov    DWORD PTR [esi+0x1078],0x2d
   3db50:	8b 86 78 10 00 00    	mov    eax,DWORD PTR [esi+0x1078]
   3db56:	89 86 6c 10 00 00    	mov    DWORD PTR [esi+0x106c],eax
   3db5c:	e9 a0 00 00 00       	jmp    update_mod_76_2_branch_25
update_mod_76_2_branch_20:
   3db61:	85 c9                	test   ecx,ecx
   3db63:	7d 2f                	jge    update_mod_76_2_branch_21
   3db65:	f6 86 8c 11 00 00 40 	test   BYTE PTR [esi+0x118c],0x40
   3db6c:	74 26                	je     update_mod_76_2_branch_21
   3db6e:	8b 15 d4 5b 02 00    	mov    edx,DWORD PTR ds:@obj3:pc                                    ; fixup: num: 10661, src obj: 1, src ofs: 0x3db70, dst obj: 3, dst ofs: 0x25bd4
   3db74:	a1 ac 5b 02 00       	mov    eax,ds:@obj3:pc_real_x                                       ; fixup: num: 10732, src obj: 1, src ofs: 0x3db75, dst obj: 3, dst ofs: 0x25bac
   3db79:	03 42 2c             	add    eax,DWORD PTR [edx+0x2c]
   3db7c:	8b 9e 2c 11 00 00    	mov    ebx,DWORD PTR [esi+0x112c]
   3db82:	01 c3                	add    ebx,eax
   3db84:	8b 46 2c             	mov    eax,DWORD PTR [esi+0x2c]
   3db87:	89 c2                	mov    edx,eax
   3db89:	c1 fa 1f             	sar    edx,0x1f
   3db8c:	2b c2                	sub    eax,edx
   3db8e:	d1 f8                	sar    eax,1
   3db90:	29 c3                	sub    ebx,eax
   3db92:	eb 2d                	jmp    update_mod_76_2_branch_22
update_mod_76_2_branch_21:
   3db94:	f6 86 8c 11 00 00 10 	test   BYTE PTR [esi+0x118c],0x10
   3db9b:	74 2a                	je     update_mod_76_2_branch_23
   3db9d:	8b 46 2c             	mov    eax,DWORD PTR [esi+0x2c]
   3dba0:	89 c2                	mov    edx,eax
   3dba2:	c1 fa 1f             	sar    edx,0x1f
   3dba5:	2b c2                	sub    eax,edx
   3dba7:	d1 f8                	sar    eax,1
   3dba9:	8b 1d ac 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:pc_real_x                             ; fixup: num: 10731, src obj: 1, src ofs: 0x3dbab, dst obj: 3, dst ofs: 0x25bac
   3dbaf:	2b 9e 2c 11 00 00    	sub    ebx,DWORD PTR [esi+0x112c]
   3dbb5:	c7 86 24 11 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x1124],0x0
   3dbbf:	01 c3                	add    ebx,eax
update_mod_76_2_branch_22:
   3dbc1:	89 9e ac 10 00 00    	mov    DWORD PTR [esi+0x10ac],ebx
update_mod_76_2_branch_23:
   3dbc7:	c7 86 24 11 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x1124],0x0
   3dbd1:	eb 2e                	jmp    update_mod_76_2_branch_25
update_mod_76_2_branch_24:
   3dbd3:	8a ae 8c 11 00 00    	mov    ch,BYTE PTR [esi+0x118c]
   3dbd9:	f6 c5 08             	test   ch,0x8
   3dbdc:	74 23                	je     update_mod_76_2_branch_25
   3dbde:	f6 c5 20             	test   ch,0x20
   3dbe1:	74 1e                	je     update_mod_76_2_branch_25
   3dbe3:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 10662, src obj: 1, src ofs: 0x3dbe4, dst obj: 3, dst ofs: 0x25bd4
   3dbe8:	8b 50 1c             	mov    edx,DWORD PTR [eax+0x1c]
   3dbeb:	89 96 b4 10 00 00    	mov    DWORD PTR [esi+0x10b4],edx
   3dbf1:	d9 40 1c             	fld    DWORD PTR [eax+0x1c]
   3dbf4:	c7 86 24 11 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x1124],0x0
   3dbfe:	d9 5e 1c             	fstp   DWORD PTR [esi+0x1c]
update_mod_76_2_branch_25:
   3dc01:	8b 96 24 11 00 00    	mov    edx,DWORD PTR [esi+0x1124]
   3dc07:	8d 04 95 00 00 00 00 	lea    eax,[edx*4+0x0]
   3dc0e:	29 d0                	sub    eax,edx
   3dc10:	8d 04 85 00 00 00 00 	lea    eax,[eax*4+0x0]
   3dc17:	01 f0                	add    eax,esi
   3dc19:	83 b8 ac 10 00 00 ff 	cmp    DWORD PTR [eax+0x10ac],0xffffffff
   3dc20:	75 23                	jne    update_mod_76_2_branch_26
   3dc22:	d9 80 b4 10 00 00    	fld    DWORD PTR [eax+0x10b4]
   3dc28:	e8 1b 81 03 00       	call   __CHP
   3dc2d:	db 5c 24 04          	fistp  DWORD PTR [esp+0x4]
   3dc31:	83 7c 24 04 9d       	cmp    DWORD PTR [esp+0x4],0xffffff9d
   3dc36:	75 0d                	jne    update_mod_76_2_branch_26
   3dc38:	85 d2                	test   edx,edx
   3dc3a:	7c 09                	jl     update_mod_76_2_branch_26
   3dc3c:	8d 6a ff             	lea    ebp,[edx-0x1]
   3dc3f:	89 ae 24 11 00 00    	mov    DWORD PTR [esi+0x1124],ebp
update_mod_76_2_branch_26:
   3dc45:	8b 86 24 11 00 00    	mov    eax,DWORD PTR [esi+0x1124]
   3dc4b:	83 f8 ff             	cmp    eax,0xffffffff
   3dc4e:	0f 8e af 02 00 00    	jle    update_mod_76_2_branch_44
   3dc54:	89 c2                	mov    edx,eax
   3dc56:	8d 04 85 00 00 00 00 	lea    eax,[eax*4+0x0]
   3dc5d:	29 d0                	sub    eax,edx
   3dc5f:	d9 84 86 b4 10 00 00 	fld    DWORD PTR [esi+eax*4+0x10b4]
   3dc66:	e8 dd 80 03 00       	call   __CHP
   3dc6b:	db 5c 24 04          	fistp  DWORD PTR [esp+0x4]
   3dc6f:	83 7c 24 04 9d       	cmp    DWORD PTR [esp+0x4],0xffffff9d
   3dc74:	0f 84 89 02 00 00    	je     update_mod_76_2_branch_44
   3dc7a:	d9 46 1c             	fld    DWORD PTR [esi+0x1c]
   3dc7d:	d8 05 85 a7 00 00    	fadd   DWORD PTR ds:@obj3:classes_cpp_variable_132                  ; fixup: num: 10665, src obj: 1, src ofs: 0x3dc7f, dst obj: 3, dst ofs: 0xa785
   3dc83:	8b 96 24 11 00 00    	mov    edx,DWORD PTR [esi+0x1124]
   3dc89:	8d 04 95 00 00 00 00 	lea    eax,[edx*4+0x0]
   3dc90:	29 d0                	sub    eax,edx
   3dc92:	8d 04 85 00 00 00 00 	lea    eax,[eax*4+0x0]
   3dc99:	8d 14 30             	lea    edx,[eax+esi*1]
   3dc9c:	c7 86 a8 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x10a8],0x0
   3dca6:	d8 9a b4 10 00 00    	fcomp  DWORD PTR [edx+0x10b4]
   3dcac:	df e0                	fnstsw ax
   3dcae:	9e                   	sahf   
   3dcaf:	77 0a                	ja     update_mod_76_2_branch_27
   3dcb1:	8b 1d 0c 3f 01 00    	mov    ebx,DWORD PTR ds:@obj3:found_door_facing                     ; fixup: num: 10664, src obj: 1, src ofs: 0x3dcb3, dst obj: 3, dst ofs: 0x13f0c
   3dcb7:	85 db                	test   ebx,ebx
   3dcb9:	75 4f                	jne    update_mod_76_2_branch_31
update_mod_76_2_branch_27:
   3dcbb:	8a a6 a0 11 00 00    	mov    ah,BYTE PTR [esi+0x11a0]
   3dcc1:	84 e4                	test   ah,ah
   3dcc3:	74 05                	je     update_mod_76_2_branch_28
   3dcc5:	80 fc 04             	cmp    ah,0x4
   3dcc8:	75 09                	jne    update_mod_76_2_branch_29
update_mod_76_2_branch_28:
   3dcca:	c6 86 a1 11 00 00 04 	mov    BYTE PTR [esi+0x11a1],0x4
   3dcd1:	eb 1b                	jmp    update_mod_76_2_branch_30
update_mod_76_2_branch_29:
   3dcd3:	80 fc 07             	cmp    ah,0x7
   3dcd6:	74 16                	je     update_mod_76_2_branch_30
   3dcd8:	80 fc 0e             	cmp    ah,0xe
   3dcdb:	74 11                	je     update_mod_76_2_branch_30
   3dcdd:	80 fc 39             	cmp    ah,0x39
   3dce0:	74 0c                	je     update_mod_76_2_branch_30
   3dce2:	80 fc 3a             	cmp    ah,0x3a
   3dce5:	74 07                	je     update_mod_76_2_branch_30
   3dce7:	c6 86 a1 11 00 00 00 	mov    BYTE PTR [esi+0x11a1],0x0
update_mod_76_2_branch_30:
   3dcee:	83 be 8c 10 00 00 00 	cmp    DWORD PTR [esi+0x108c],0x0
   3dcf5:	0f 85 fe 01 00 00    	jne    update_mod_76_2_branch_43
   3dcfb:	c7 86 a8 10 00 00 00 00 80 bf 	mov    DWORD PTR [esi+0x10a8],0xbf800000
   3dd05:	e9 ef 01 00 00       	jmp    update_mod_76_2_branch_43
update_mod_76_2_branch_31:
   3dd0a:	d9 46 1c             	fld    DWORD PTR [esi+0x1c]
   3dd0d:	d8 05 81 a7 00 00    	fadd   DWORD PTR ds:@obj3:classes_cpp_variable_131                  ; fixup: num: 10663, src obj: 1, src ofs: 0x3dd0f, dst obj: 3, dst ofs: 0xa781
   3dd13:	d8 9a b4 10 00 00    	fcomp  DWORD PTR [edx+0x10b4]
   3dd19:	df e0                	fnstsw ax
   3dd1b:	9e                   	sahf   
   3dd1c:	72 05                	jb     update_mod_76_2_branch_32
   3dd1e:	83 fb 03             	cmp    ebx,0x3
   3dd21:	75 50                	jne    update_mod_76_2_branch_36
update_mod_76_2_branch_32:
   3dd23:	8a b6 a0 11 00 00    	mov    dh,BYTE PTR [esi+0x11a0]
   3dd29:	80 fe 03             	cmp    dh,0x3
   3dd2c:	74 05                	je     update_mod_76_2_branch_33
   3dd2e:	80 fe 0b             	cmp    dh,0xb
   3dd31:	75 09                	jne    update_mod_76_2_branch_34
update_mod_76_2_branch_33:
   3dd33:	c6 86 a1 11 00 00 0b 	mov    BYTE PTR [esi+0x11a1],0xb
   3dd3a:	eb 1b                	jmp    update_mod_76_2_branch_35
update_mod_76_2_branch_34:
   3dd3c:	80 fe 07             	cmp    dh,0x7
   3dd3f:	74 16                	je     update_mod_76_2_branch_35
   3dd41:	80 fe 0e             	cmp    dh,0xe
   3dd44:	74 11                	je     update_mod_76_2_branch_35
   3dd46:	80 fe 39             	cmp    dh,0x39
   3dd49:	74 0c                	je     update_mod_76_2_branch_35
   3dd4b:	80 fe 3a             	cmp    dh,0x3a
   3dd4e:	74 07                	je     update_mod_76_2_branch_35
   3dd50:	c6 86 a1 11 00 00 03 	mov    BYTE PTR [esi+0x11a1],0x3
update_mod_76_2_branch_35:
   3dd57:	83 be 90 10 00 00 00 	cmp    DWORD PTR [esi+0x1090],0x0
   3dd5e:	0f 85 95 01 00 00    	jne    update_mod_76_2_branch_43
   3dd64:	c7 86 a8 10 00 00 00 00 80 3f 	mov    DWORD PTR [esi+0x10a8],0x3f800000
   3dd6e:	e9 86 01 00 00       	jmp    update_mod_76_2_branch_43
update_mod_76_2_branch_36:
   3dd73:	8b 96 24 11 00 00    	mov    edx,DWORD PTR [esi+0x1124]
   3dd79:	8d 04 95 00 00 00 00 	lea    eax,[edx*4+0x0]
   3dd80:	29 d0                	sub    eax,edx
   3dd82:	c7 86 a8 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x10a8],0x0
   3dd8c:	c7 84 86 b4 10 00 00 00 00 c6 c2 	mov    DWORD PTR [esi+eax*4+0x10b4],0xc2c60000
   3dd97:	8b be 24 11 00 00    	mov    edi,DWORD PTR [esi+0x1124]
   3dd9d:	83 ff ff             	cmp    edi,0xffffffff
   3dda0:	7e 1b                	jle    update_mod_76_2_branch_37
   3dda2:	8d 04 bd 00 00 00 00 	lea    eax,[edi*4+0x0]
   3dda9:	29 f8                	sub    eax,edi
   3ddab:	8b ac 86 ac 10 00 00 	mov    ebp,DWORD PTR [esi+eax*4+0x10ac]
   3ddb2:	83 fd ff             	cmp    ebp,0xffffffff
   3ddb5:	75 06                	jne    update_mod_76_2_branch_37
   3ddb7:	89 ae 24 11 00 00    	mov    DWORD PTR [esi+0x1124],ebp
update_mod_76_2_branch_37:
   3ddbd:	80 be a0 11 00 00 04 	cmp    BYTE PTR [esi+0x11a0],0x4
   3ddc4:	75 4d                	jne    update_mod_76_2_branch_38
   3ddc6:	83 3d 0c 3f 01 00 00 	cmp    DWORD PTR ds:@obj3:found_door_facing,0x0                     ; fixup: num: 10668, src obj: 1, src ofs: 0x3ddc8, dst obj: 3, dst ofs: 0x13f0c
   3ddcd:	74 44                	je     update_mod_76_2_branch_38
   3ddcf:	c6 86 a0 11 00 00 00 	mov    BYTE PTR [esi+0x11a0],0x0
   3ddd6:	8a 86 a0 11 00 00    	mov    al,BYTE PTR [esi+0x11a0]
   3dddc:	ba 3b 00 00 00       	mov    edx,0x3b
   3dde1:	88 86 a1 11 00 00    	mov    BYTE PTR [esi+0x11a1],al
   3dde7:	89 f0                	mov    eax,esi
   3dde9:	e8 b2 ea ff ff       	call   go_to_frame_mod_76
   3ddee:	c7 86 78 10 00 00 3b 00 00 00 	mov    DWORD PTR [esi+0x1078],0x3b
   3ddf8:	c7 86 a8 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x10a8],0x0
   3de02:	8b 86 78 10 00 00    	mov    eax,DWORD PTR [esi+0x1078]
   3de08:	89 86 6c 10 00 00    	mov    DWORD PTR [esi+0x106c],eax
   3de0e:	e9 87 00 00 00       	jmp    update_mod_76_2_branch_41
update_mod_76_2_branch_38:
   3de13:	80 be a0 11 00 00 0b 	cmp    BYTE PTR [esi+0x11a0],0xb
   3de1a:	75 4a                	jne    update_mod_76_2_branch_39
   3de1c:	83 3d 0c 3f 01 00 03 	cmp    DWORD PTR ds:@obj3:found_door_facing,0x3                     ; fixup: num: 10667, src obj: 1, src ofs: 0x3de1e, dst obj: 3, dst ofs: 0x13f0c
   3de23:	74 41                	je     update_mod_76_2_branch_39
   3de25:	c6 86 a0 11 00 00 03 	mov    BYTE PTR [esi+0x11a0],0x3
   3de2c:	8a 86 a0 11 00 00    	mov    al,BYTE PTR [esi+0x11a0]
   3de32:	ba 28 00 00 00       	mov    edx,0x28
   3de37:	88 86 a1 11 00 00    	mov    BYTE PTR [esi+0x11a1],al
   3de3d:	89 f0                	mov    eax,esi
   3de3f:	e8 5c ea ff ff       	call   go_to_frame_mod_76
   3de44:	c7 86 78 10 00 00 28 00 00 00 	mov    DWORD PTR [esi+0x1078],0x28
   3de4e:	c7 86 a8 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x10a8],0x0
   3de58:	8b 86 78 10 00 00    	mov    eax,DWORD PTR [esi+0x1078]
   3de5e:	89 86 6c 10 00 00    	mov    DWORD PTR [esi+0x106c],eax
   3de64:	eb 34                	jmp    update_mod_76_2_branch_41
update_mod_76_2_branch_39:
   3de66:	80 be a0 11 00 00 03 	cmp    BYTE PTR [esi+0x11a0],0x3
   3de6d:	75 12                	jne    update_mod_76_2_branch_40
   3de6f:	83 3d 0c 3f 01 00 03 	cmp    DWORD PTR ds:@obj3:found_door_facing,0x3                     ; fixup: num: 10666, src obj: 1, src ofs: 0x3de71, dst obj: 3, dst ofs: 0x13f0c
   3de76:	75 09                	jne    update_mod_76_2_branch_40
   3de78:	c6 86 a1 11 00 00 0b 	mov    BYTE PTR [esi+0x11a1],0xb
   3de7f:	eb 19                	jmp    update_mod_76_2_branch_41
update_mod_76_2_branch_40:
   3de81:	80 be a0 11 00 00 00 	cmp    BYTE PTR [esi+0x11a0],0x0
   3de88:	75 10                	jne    update_mod_76_2_branch_41
   3de8a:	83 3d 0c 3f 01 00 00 	cmp    DWORD PTR ds:@obj3:found_door_facing,0x0                     ; fixup: num: 10673, src obj: 1, src ofs: 0x3de8c, dst obj: 3, dst ofs: 0x13f0c
   3de91:	75 07                	jne    update_mod_76_2_branch_41
   3de93:	c6 86 a1 11 00 00 04 	mov    BYTE PTR [esi+0x11a1],0x4
update_mod_76_2_branch_41:
   3de9a:	83 7e 38 05          	cmp    DWORD PTR [esi+0x38],0x5
   3de9e:	75 59                	jne    update_mod_76_2_branch_43
   3dea0:	a1 c4 5a 02 00       	mov    eax,ds:@obj3:current_room                                    ; fixup: num: 10672, src obj: 1, src ofs: 0x3dea1, dst obj: 3, dst ofs: 0x25ac4
   3dea5:	db 40 04             	fild   DWORD PTR [eax+0x4]
   3dea8:	d9 5c 24 24          	fstp   DWORD PTR [esp+0x24]
   3deac:	d9 46 1c             	fld    DWORD PTR [esi+0x1c]
   3deaf:	d8 5c 24 24          	fcomp  DWORD PTR [esp+0x24]
   3deb3:	df e0                	fnstsw ax
   3deb5:	9e                   	sahf   
   3deb6:	73 07                	jae    update_mod_76_2_branch_42
   3deb8:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
   3debc:	89 46 1c             	mov    DWORD PTR [esi+0x1c],eax
update_mod_76_2_branch_42:
   3debf:	a1 c4 5a 02 00       	mov    eax,ds:@obj3:current_room                                    ; fixup: num: 10671, src obj: 1, src ofs: 0x3dec0, dst obj: 3, dst ofs: 0x25ac4
   3dec4:	db 40 08             	fild   DWORD PTR [eax+0x8]
   3dec7:	d9 5c 24 3c          	fstp   DWORD PTR [esp+0x3c]
   3decb:	d9 46 1c             	fld    DWORD PTR [esi+0x1c]
   3dece:	d8 5c 24 3c          	fcomp  DWORD PTR [esp+0x3c]
   3ded2:	df e0                	fnstsw ax
   3ded4:	9e                   	sahf   
   3ded5:	76 22                	jbe    update_mod_76_2_branch_43
   3ded7:	8b 44 24 3c          	mov    eax,DWORD PTR [esp+0x3c]
   3dedb:	83 ec 08             	sub    esp,0x8
   3dede:	89 46 1c             	mov    DWORD PTR [esi+0x1c],eax
   3dee1:	d9 46 1c             	fld    DWORD PTR [esi+0x1c]
   3dee4:	dd 1c 24             	fstp   QWORD PTR [esp]
   3dee7:	68 c6 a0 00 00       	push   @obj3:classes_cpp_variable_56                                ; fixup: num: 10670, src obj: 1, src ofs: 0x3dee8, dst obj: 3, dst ofs: 0xa0c6
   3deec:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 10669, src obj: 1, src ofs: 0x3deed, dst obj: 3, dst ofs: 0x237fc
   3def1:	e8 eb 2c 03 00       	call   sprintf_
   3def6:	83 c4 10             	add    esp,0x10
update_mod_76_2_branch_43:
   3def9:	80 7e 4d 00          	cmp    BYTE PTR [esi+0x4d],0x0
   3defd:	0f 84 0a 04 00 00    	je     update_mod_76_2_branch_74
update_mod_76_2_branch_44:
   3df03:	8b 96 24 11 00 00    	mov    edx,DWORD PTR [esi+0x1124]
   3df09:	83 fa ff             	cmp    edx,0xffffffff
   3df0c:	0f 8e fb 03 00 00    	jle    update_mod_76_2_branch_74
   3df12:	8d 04 95 00 00 00 00 	lea    eax,[edx*4+0x0]
   3df19:	29 d0                	sub    eax,edx
   3df1b:	8d 04 85 00 00 00 00 	lea    eax,[eax*4+0x0]
   3df22:	8d 14 30             	lea    edx,[eax+esi*1]
   3df25:	83 ba ac 10 00 00 ff 	cmp    DWORD PTR [edx+0x10ac],0xffffffff
   3df2c:	0f 84 db 03 00 00    	je     update_mod_76_2_branch_74
   3df32:	db 82 ac 10 00 00    	fild   DWORD PTR [edx+0x10ac]
   3df38:	d9 5c 24 20          	fstp   DWORD PTR [esp+0x20]
   3df3c:	d9 46 18             	fld    DWORD PTR [esi+0x18]
   3df3f:	d8 0d 99 a7 00 00    	fmul   DWORD PTR ds:@obj3:classes_cpp_variable_137                  ; fixup: num: 10675, src obj: 1, src ofs: 0x3df41, dst obj: 3, dst ofs: 0xa799
   3df45:	d9 5c 24 18          	fstp   DWORD PTR [esp+0x18]
   3df49:	d9 44 24 20          	fld    DWORD PTR [esp+0x20]
   3df4d:	d8 64 24 18          	fsub   DWORD PTR [esp+0x18]
   3df51:	db 86 98 11 00 00    	fild   DWORD PTR [esi+0x1198]
   3df57:	d9 5c 24 34          	fstp   DWORD PTR [esp+0x34]
   3df5b:	d8 5c 24 34          	fcomp  DWORD PTR [esp+0x34]
   3df5f:	df e0                	fnstsw ax
   3df61:	9e                   	sahf   
   3df62:	77 0f                	ja     update_mod_76_2_branch_45
   3df64:	8b 0d 0c 3f 01 00    	mov    ecx,DWORD PTR ds:@obj3:found_door_facing                     ; fixup: num: 10674, src obj: 1, src ofs: 0x3df66, dst obj: 3, dst ofs: 0x13f0c
   3df6a:	83 f9 02             	cmp    ecx,0x2
   3df6d:	0f 85 8d 00 00 00    	jne    update_mod_76_2_branch_50
update_mod_76_2_branch_45:
   3df73:	80 be a1 11 00 00 02 	cmp    BYTE PTR [esi+0x11a1],0x2
   3df7a:	75 16                	jne    update_mod_76_2_branch_46
   3df7c:	8a ae a0 11 00 00    	mov    ch,BYTE PTR [esi+0x11a0]
   3df82:	80 fd 0e             	cmp    ch,0xe
   3df85:	75 0b                	jne    update_mod_76_2_branch_46
   3df87:	88 ae a1 11 00 00    	mov    BYTE PTR [esi+0x11a1],ch
   3df8d:	e9 7b 03 00 00       	jmp    update_mod_76_2_branch_74
update_mod_76_2_branch_46:
   3df92:	8a 86 a0 11 00 00    	mov    al,BYTE PTR [esi+0x11a0]
   3df98:	3c 0e                	cmp    al,0xe
   3df9a:	0f 84 6d 03 00 00    	je     update_mod_76_2_branch_74
   3dfa0:	8a a6 a1 11 00 00    	mov    ah,BYTE PTR [esi+0x11a1]
   3dfa6:	80 fc 0e             	cmp    ah,0xe
   3dfa9:	0f 84 5e 03 00 00    	je     update_mod_76_2_branch_74
   3dfaf:	3c 3a                	cmp    al,0x3a
   3dfb1:	0f 84 56 03 00 00    	je     update_mod_76_2_branch_74
   3dfb7:	80 fc 3a             	cmp    ah,0x3a
   3dfba:	0f 84 4d 03 00 00    	je     update_mod_76_2_branch_74
   3dfc0:	3c 0f                	cmp    al,0xf
   3dfc2:	0f 84 45 03 00 00    	je     update_mod_76_2_branch_74
   3dfc8:	3c 19                	cmp    al,0x19
   3dfca:	74 0c                	je     update_mod_76_2_branch_47
   3dfcc:	3c 1a                	cmp    al,0x1a
   3dfce:	74 08                	je     update_mod_76_2_branch_47
   3dfd0:	3c 1b                	cmp    al,0x1b
   3dfd2:	74 04                	je     update_mod_76_2_branch_47
   3dfd4:	3c 08                	cmp    al,0x8
   3dfd6:	75 07                	jne    update_mod_76_2_branch_48
update_mod_76_2_branch_47:
   3dfd8:	c6 86 a1 11 00 00 02 	mov    BYTE PTR [esi+0x11a1],0x2
update_mod_76_2_branch_48:
   3dfdf:	80 be a0 11 00 00 02 	cmp    BYTE PTR [esi+0x11a0],0x2
   3dfe6:	75 0c                	jne    update_mod_76_2_branch_49
   3dfe8:	c6 86 a1 11 00 00 0e 	mov    BYTE PTR [esi+0x11a1],0xe
   3dfef:	e9 19 03 00 00       	jmp    update_mod_76_2_branch_74
update_mod_76_2_branch_49:
   3dff4:	c6 86 a1 11 00 00 02 	mov    BYTE PTR [esi+0x11a1],0x2
   3dffb:	e9 0d 03 00 00       	jmp    update_mod_76_2_branch_74
update_mod_76_2_branch_50:
   3e000:	d9 44 24 20          	fld    DWORD PTR [esp+0x20]
   3e004:	d8 44 24 18          	fadd   DWORD PTR [esp+0x18]
   3e008:	d8 5c 24 34          	fcomp  DWORD PTR [esp+0x34]
   3e00c:	df e0                	fnstsw ax
   3e00e:	9e                   	sahf   
   3e00f:	72 09                	jb     update_mod_76_2_branch_51
   3e011:	83 f9 01             	cmp    ecx,0x1
   3e014:	0f 85 94 00 00 00    	jne    update_mod_76_2_branch_56
update_mod_76_2_branch_51:
   3e01a:	80 be a1 11 00 00 01 	cmp    BYTE PTR [esi+0x11a1],0x1
   3e021:	75 16                	jne    update_mod_76_2_branch_52
   3e023:	8a b6 a0 11 00 00    	mov    dh,BYTE PTR [esi+0x11a0]
   3e029:	80 fe 07             	cmp    dh,0x7
   3e02c:	75 0b                	jne    update_mod_76_2_branch_52
   3e02e:	88 b6 a1 11 00 00    	mov    BYTE PTR [esi+0x11a1],dh
   3e034:	e9 d4 02 00 00       	jmp    update_mod_76_2_branch_74
update_mod_76_2_branch_52:
   3e039:	8a 9e a0 11 00 00    	mov    bl,BYTE PTR [esi+0x11a0]
   3e03f:	80 fb 07             	cmp    bl,0x7
   3e042:	0f 84 c5 02 00 00    	je     update_mod_76_2_branch_74
   3e048:	8a be a1 11 00 00    	mov    bh,BYTE PTR [esi+0x11a1]
   3e04e:	80 ff 07             	cmp    bh,0x7
   3e051:	0f 84 b6 02 00 00    	je     update_mod_76_2_branch_74
   3e057:	80 fb 39             	cmp    bl,0x39
   3e05a:	0f 84 ad 02 00 00    	je     update_mod_76_2_branch_74
   3e060:	80 ff 39             	cmp    bh,0x39
   3e063:	0f 84 a4 02 00 00    	je     update_mod_76_2_branch_74
   3e069:	80 fb 08             	cmp    bl,0x8
   3e06c:	0f 84 9b 02 00 00    	je     update_mod_76_2_branch_74
   3e072:	80 fb 16             	cmp    bl,0x16
   3e075:	74 0f                	je     update_mod_76_2_branch_53
   3e077:	80 fb 17             	cmp    bl,0x17
   3e07a:	74 0a                	je     update_mod_76_2_branch_53
   3e07c:	80 fb 18             	cmp    bl,0x18
   3e07f:	74 05                	je     update_mod_76_2_branch_53
   3e081:	80 fb 0f             	cmp    bl,0xf
   3e084:	75 07                	jne    update_mod_76_2_branch_54
update_mod_76_2_branch_53:
   3e086:	c6 86 a1 11 00 00 01 	mov    BYTE PTR [esi+0x11a1],0x1
update_mod_76_2_branch_54:
   3e08d:	80 be a0 11 00 00 01 	cmp    BYTE PTR [esi+0x11a0],0x1
   3e094:	75 0c                	jne    update_mod_76_2_branch_55
   3e096:	c6 86 a1 11 00 00 07 	mov    BYTE PTR [esi+0x11a1],0x7
   3e09d:	e9 6b 02 00 00       	jmp    update_mod_76_2_branch_74
update_mod_76_2_branch_55:
   3e0a2:	c6 86 a1 11 00 00 01 	mov    BYTE PTR [esi+0x11a1],0x1
   3e0a9:	e9 5f 02 00 00       	jmp    update_mod_76_2_branch_74
update_mod_76_2_branch_56:
   3e0ae:	c7 82 ac 10 00 00 ff ff ff ff 	mov    DWORD PTR [edx+0x10ac],0xffffffff
   3e0b8:	8a 86 a0 11 00 00    	mov    al,BYTE PTR [esi+0x11a0]
   3e0be:	c7 86 a0 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x10a0],0x0
   3e0c8:	3c 07                	cmp    al,0x7
   3e0ca:	74 08                	je     update_mod_76_2_branch_57
   3e0cc:	3c 39                	cmp    al,0x39
   3e0ce:	74 04                	je     update_mod_76_2_branch_57
   3e0d0:	3c 01                	cmp    al,0x1
   3e0d2:	75 68                	jne    update_mod_76_2_branch_59
update_mod_76_2_branch_57:
   3e0d4:	83 3d 0c 3f 01 00 01 	cmp    DWORD PTR ds:@obj3:found_door_facing,0x1                     ; fixup: num: 10905, src obj: 1, src ofs: 0x3e0d6, dst obj: 3, dst ofs: 0x13f0c
   3e0db:	74 5f                	je     update_mod_76_2_branch_59
   3e0dd:	c6 86 a0 11 00 00 01 	mov    BYTE PTR [esi+0x11a0],0x1
   3e0e4:	8a 86 a0 11 00 00    	mov    al,BYTE PTR [esi+0x11a0]
   3e0ea:	88 86 a1 11 00 00    	mov    BYTE PTR [esi+0x11a1],al
   3e0f0:	f6 86 8e 11 00 00 10 	test   BYTE PTR [esi+0x118e],0x10
   3e0f7:	74 1b                	je     update_mod_76_2_branch_58
   3e0f9:	ba 0e 00 00 00       	mov    edx,0xe
   3e0fe:	89 f0                	mov    eax,esi
   3e100:	e8 9b e7 ff ff       	call   go_to_frame_mod_76
   3e105:	c7 86 78 10 00 00 0e 00 00 00 	mov    DWORD PTR [esi+0x1078],0xe
   3e10f:	e9 9b 00 00 00       	jmp    update_mod_76_2_branch_62
update_mod_76_2_branch_58:
   3e114:	f6 86 8c 11 00 00 10 	test   BYTE PTR [esi+0x118c],0x10
   3e11b:	0f 84 9a 00 00 00    	je     update_mod_76_2_branch_63
   3e121:	ba 0f 00 00 00       	mov    edx,0xf
   3e126:	89 f0                	mov    eax,esi
   3e128:	e8 73 e7 ff ff       	call   go_to_frame_mod_76
   3e12d:	c7 86 78 10 00 00 0f 00 00 00 	mov    DWORD PTR [esi+0x1078],0xf
   3e137:	e9 73 00 00 00       	jmp    update_mod_76_2_branch_62
update_mod_76_2_branch_59:
   3e13c:	8a b6 a0 11 00 00    	mov    dh,BYTE PTR [esi+0x11a0]
   3e142:	80 fe 0e             	cmp    dh,0xe
   3e145:	74 0a                	je     update_mod_76_2_branch_60
   3e147:	80 fe 3a             	cmp    dh,0x3a
   3e14a:	74 05                	je     update_mod_76_2_branch_60
   3e14c:	80 fe 02             	cmp    dh,0x2
   3e14f:	75 6a                	jne    update_mod_76_2_branch_63
update_mod_76_2_branch_60:
   3e151:	83 3d 0c 3f 01 00 02 	cmp    DWORD PTR ds:@obj3:found_door_facing,0x2                     ; fixup: num: 10906, src obj: 1, src ofs: 0x3e153, dst obj: 3, dst ofs: 0x13f0c
   3e158:	74 61                	je     update_mod_76_2_branch_63
   3e15a:	c6 86 a0 11 00 00 02 	mov    BYTE PTR [esi+0x11a0],0x2
   3e161:	8a 86 a0 11 00 00    	mov    al,BYTE PTR [esi+0x11a0]
   3e167:	8a 8e 8e 11 00 00    	mov    cl,BYTE PTR [esi+0x118e]
   3e16d:	88 86 a1 11 00 00    	mov    BYTE PTR [esi+0x11a1],al
   3e173:	f6 c1 20             	test   cl,0x20
   3e176:	74 18                	je     update_mod_76_2_branch_61
   3e178:	ba 2c 00 00 00       	mov    edx,0x2c
   3e17d:	89 f0                	mov    eax,esi
   3e17f:	e8 1c e7 ff ff       	call   go_to_frame_mod_76
   3e184:	c7 86 78 10 00 00 2c 00 00 00 	mov    DWORD PTR [esi+0x1078],0x2c
   3e18e:	eb 1f                	jmp    update_mod_76_2_branch_62
update_mod_76_2_branch_61:
   3e190:	f6 86 8c 11 00 00 40 	test   BYTE PTR [esi+0x118c],0x40
   3e197:	74 22                	je     update_mod_76_2_branch_63
   3e199:	ba 2d 00 00 00       	mov    edx,0x2d
   3e19e:	89 f0                	mov    eax,esi
   3e1a0:	e8 fb e6 ff ff       	call   go_to_frame_mod_76
   3e1a5:	c7 86 78 10 00 00 2d 00 00 00 	mov    DWORD PTR [esi+0x1078],0x2d
update_mod_76_2_branch_62:
   3e1af:	8b 86 78 10 00 00    	mov    eax,DWORD PTR [esi+0x1078]
   3e1b5:	89 86 6c 10 00 00    	mov    DWORD PTR [esi+0x106c],eax
update_mod_76_2_branch_63:
   3e1bb:	8b 96 24 11 00 00    	mov    edx,DWORD PTR [esi+0x1124]
   3e1c1:	8d 04 95 00 00 00 00 	lea    eax,[edx*4+0x0]
   3e1c8:	29 d0                	sub    eax,edx
   3e1ca:	d9 84 86 b4 10 00 00 	fld    DWORD PTR [esi+eax*4+0x10b4]
   3e1d1:	e8 72 7b 03 00       	call   __CHP
   3e1d6:	db 5c 24 04          	fistp  DWORD PTR [esp+0x4]
   3e1da:	83 7c 24 04 9d       	cmp    DWORD PTR [esp+0x4],0xffffff9d
   3e1df:	75 0a                	jne    update_mod_76_2_branch_64
   3e1e1:	c7 86 24 11 00 00 ff ff ff ff 	mov    DWORD PTR [esi+0x1124],0xffffffff
update_mod_76_2_branch_64:
   3e1eb:	8b 1d 0c 3f 01 00    	mov    ebx,DWORD PTR ds:@obj3:found_door_facing                     ; fixup: num: 10910, src obj: 1, src ofs: 0x3e1ed, dst obj: 3, dst ofs: 0x13f0c
   3e1f1:	85 db                	test   ebx,ebx
   3e1f3:	0f 8c 14 01 00 00    	jl     update_mod_76_2_branch_74
   3e1f9:	83 fb 02             	cmp    ebx,0x2
   3e1fc:	75 1a                	jne    update_mod_76_2_branch_65
   3e1fe:	80 be a1 11 00 00 0e 	cmp    BYTE PTR [esi+0x11a1],0xe
   3e205:	74 11                	je     update_mod_76_2_branch_65
   3e207:	c6 86 a1 11 00 00 02 	mov    BYTE PTR [esi+0x11a1],0x2
   3e20e:	c7 86 24 11 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x1124],0x0
update_mod_76_2_branch_65:
   3e218:	83 3d 0c 3f 01 00 01 	cmp    DWORD PTR ds:@obj3:found_door_facing,0x1                     ; fixup: num: 10909, src obj: 1, src ofs: 0x3e21a, dst obj: 3, dst ofs: 0x13f0c
   3e21f:	75 1a                	jne    update_mod_76_2_branch_66
   3e221:	80 be a1 11 00 00 07 	cmp    BYTE PTR [esi+0x11a1],0x7
   3e228:	74 11                	je     update_mod_76_2_branch_66
   3e22a:	c6 86 a1 11 00 00 01 	mov    BYTE PTR [esi+0x11a1],0x1
   3e231:	c7 86 24 11 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x1124],0x0
update_mod_76_2_branch_66:
   3e23b:	8b 2d 0c 3f 01 00    	mov    ebp,DWORD PTR ds:@obj3:found_door_facing                     ; fixup: num: 10908, src obj: 1, src ofs: 0x3e23d, dst obj: 3, dst ofs: 0x13f0c
   3e241:	85 ed                	test   ebp,ebp
   3e243:	75 33                	jne    update_mod_76_2_branch_67
   3e245:	80 be a1 11 00 00 04 	cmp    BYTE PTR [esi+0x11a1],0x4
   3e24c:	74 2a                	je     update_mod_76_2_branch_67
   3e24e:	89 ae 24 11 00 00    	mov    DWORD PTR [esi+0x1124],ebp
   3e254:	8d 04 ad 00 00 00 00 	lea    eax,[ebp*4+0x0]
   3e25b:	8d 04 85 00 00 00 00 	lea    eax,[eax*4+0x0]
   3e262:	c6 86 a1 11 00 00 00 	mov    BYTE PTR [esi+0x11a1],0x0
   3e269:	8d 14 06             	lea    edx,[esi+eax*1]
   3e26c:	8b 86 98 11 00 00    	mov    eax,DWORD PTR [esi+0x1198]
   3e272:	89 82 ac 10 00 00    	mov    DWORD PTR [edx+0x10ac],eax
update_mod_76_2_branch_67:
   3e278:	83 3d 0c 3f 01 00 03 	cmp    DWORD PTR ds:@obj3:found_door_facing,0x3                     ; fixup: num: 10907, src obj: 1, src ofs: 0x3e27a, dst obj: 3, dst ofs: 0x13f0c
   3e27f:	75 3f                	jne    update_mod_76_2_branch_68
   3e281:	80 be a1 11 00 00 0b 	cmp    BYTE PTR [esi+0x11a1],0xb
   3e288:	74 36                	je     update_mod_76_2_branch_68
   3e28a:	c7 86 24 11 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x1124],0x0
   3e294:	8b 96 24 11 00 00    	mov    edx,DWORD PTR [esi+0x1124]
   3e29a:	8d 04 95 00 00 00 00 	lea    eax,[edx*4+0x0]
   3e2a1:	29 d0                	sub    eax,edx
   3e2a3:	8d 04 85 00 00 00 00 	lea    eax,[eax*4+0x0]
   3e2aa:	c6 86 a1 11 00 00 03 	mov    BYTE PTR [esi+0x11a1],0x3
   3e2b1:	8d 14 06             	lea    edx,[esi+eax*1]
   3e2b4:	8b 86 98 11 00 00    	mov    eax,DWORD PTR [esi+0x1198]
   3e2ba:	89 82 ac 10 00 00    	mov    DWORD PTR [edx+0x10ac],eax
update_mod_76_2_branch_68:
   3e2c0:	8a 8e a1 11 00 00    	mov    cl,BYTE PTR [esi+0x11a1]
   3e2c6:	84 c9                	test   cl,cl
   3e2c8:	75 07                	jne    update_mod_76_2_branch_69
   3e2ca:	b8 de a0 00 00       	mov    eax,@obj3:classes_cpp_variable_57                            ; fixup: num: 10917, src obj: 1, src ofs: 0x3e2cb, dst obj: 3, dst ofs: 0xa0de
   3e2cf:	eb 29                	jmp    update_mod_76_2_branch_73
update_mod_76_2_branch_69:
   3e2d1:	80 f9 01             	cmp    cl,0x1
   3e2d4:	75 07                	jne    update_mod_76_2_branch_70
   3e2d6:	b8 e6 a0 00 00       	mov    eax,@obj3:classes_cpp_variable_58                            ; fixup: num: 10916, src obj: 1, src ofs: 0x3e2d7, dst obj: 3, dst ofs: 0xa0e6
   3e2db:	eb 1d                	jmp    update_mod_76_2_branch_73
update_mod_76_2_branch_70:
   3e2dd:	80 f9 02             	cmp    cl,0x2
   3e2e0:	75 07                	jne    update_mod_76_2_branch_71
   3e2e2:	b8 eb a0 00 00       	mov    eax,@obj3:classes_cpp_variable_59                            ; fixup: num: 10915, src obj: 1, src ofs: 0x3e2e3, dst obj: 3, dst ofs: 0xa0eb
   3e2e7:	eb 11                	jmp    update_mod_76_2_branch_73
update_mod_76_2_branch_71:
   3e2e9:	80 f9 03             	cmp    cl,0x3
   3e2ec:	75 07                	jne    update_mod_76_2_branch_72
   3e2ee:	b8 f1 a0 00 00       	mov    eax,@obj3:classes_cpp_variable_60                            ; fixup: num: 10914, src obj: 1, src ofs: 0x3e2ef, dst obj: 3, dst ofs: 0xa0f1
   3e2f3:	eb 05                	jmp    update_mod_76_2_branch_73
update_mod_76_2_branch_72:
   3e2f5:	b8 f6 a0 00 00       	mov    eax,@obj3:classes_cpp_variable_61                            ; fixup: num: 10913, src obj: 1, src ofs: 0x3e2f6, dst obj: 3, dst ofs: 0xa0f6
update_mod_76_2_branch_73:
   3e2fa:	50                   	push   eax
   3e2fb:	68 fe a0 00 00       	push   @obj3:classes_cpp_variable_62                                ; fixup: num: 10912, src obj: 1, src ofs: 0x3e2fc, dst obj: 3, dst ofs: 0xa0fe
   3e300:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 10911, src obj: 1, src ofs: 0x3e301, dst obj: 3, dst ofs: 0x237fc
   3e305:	e8 d7 28 03 00       	call   sprintf_
   3e30a:	83 c4 0c             	add    esp,0xc
update_mod_76_2_branch_74:
   3e30d:	8b 96 a4 11 00 00    	mov    edx,DWORD PTR [esi+0x11a4]
   3e313:	85 d2                	test   edx,edx
   3e315:	0f 84 d5 01 00 00    	je     update_mod_76_2_branch_85
   3e31b:	80 ba a1 11 00 00 38 	cmp    BYTE PTR [edx+0x11a1],0x38
   3e322:	0f 84 c8 01 00 00    	je     update_mod_76_2_branch_85
   3e328:	80 be a1 11 00 00 38 	cmp    BYTE PTR [esi+0x11a1],0x38
   3e32f:	0f 84 bb 01 00 00    	je     update_mod_76_2_branch_85
   3e335:	bd 00 00 01 00       	mov    ebp,0x10000
   3e33a:	bf 00 10 00 00       	mov    edi,0x1000
update_mod_76_2_branch_75:
   3e33f:	e8 93 81 03 00       	call   rand_
   3e344:	89 c2                	mov    edx,eax
   3e346:	bb 03 00 00 00       	mov    ebx,0x3
   3e34b:	c1 fa 1f             	sar    edx,0x1f
   3e34e:	f7 fb                	idiv   ebx
   3e350:	c7 86 ac 10 00 00 ff ff ff ff 	mov    DWORD PTR [esi+0x10ac],0xffffffff
   3e35a:	c7 86 b4 10 00 00 00 00 c6 c2 	mov    DWORD PTR [esi+0x10b4],0xc2c60000
   3e364:	8b 86 a4 11 00 00    	mov    eax,DWORD PTR [esi+0x11a4]
   3e36a:	c7 86 24 11 00 00 ff ff ff ff 	mov    DWORD PTR [esi+0x1124],0xffffffff
   3e374:	89 d3                	mov    ebx,edx
   3e376:	8b 50 3c             	mov    edx,DWORD PTR [eax+0x3c]
   3e379:	8b 48 24             	mov    ecx,DWORD PTR [eax+0x24]
   3e37c:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
   3e37f:	8b 00                	mov    eax,DWORD PTR [eax]
   3e381:	01 ca                	add    edx,ecx
   3e383:	d1 e8                	shr    eax,1
   3e385:	8d 0c 02             	lea    ecx,[edx+eax*1]
   3e388:	83 7e 38 05          	cmp    DWORD PTR [esi+0x38],0x5
   3e38c:	0f 84 c3 00 00 00    	je     update_mod_76_2_branch_80
   3e392:	8b 46 2c             	mov    eax,DWORD PTR [esi+0x2c]
   3e395:	89 c2                	mov    edx,eax
   3e397:	c1 fa 1f             	sar    edx,0x1f
   3e39a:	2b c2                	sub    eax,edx
   3e39c:	d1 f8                	sar    eax,1
   3e39e:	03 86 98 11 00 00    	add    eax,DWORD PTR [esi+0x1198]
   3e3a4:	39 c1                	cmp    ecx,eax
   3e3a6:	0f 8e a9 00 00 00    	jle    update_mod_76_2_branch_80
   3e3ac:	8a 8e a0 11 00 00    	mov    cl,BYTE PTR [esi+0x11a0]
   3e3b2:	80 f9 02             	cmp    cl,0x2
   3e3b5:	74 0e                	je     update_mod_76_2_branch_76
   3e3b7:	80 f9 0e             	cmp    cl,0xe
   3e3ba:	74 09                	je     update_mod_76_2_branch_76
   3e3bc:	80 f9 3a             	cmp    cl,0x3a
   3e3bf:	0f 85 84 00 00 00    	jne    update_mod_76_2_branch_79
update_mod_76_2_branch_76:
   3e3c5:	85 db                	test   ebx,ebx
   3e3c7:	75 24                	jne    update_mod_76_2_branch_77
   3e3c9:	f6 86 8d 11 00 00 08 	test   BYTE PTR [esi+0x118d],0x8
   3e3d0:	74 1b                	je     update_mod_76_2_branch_77
   3e3d2:	8b 86 a4 11 00 00    	mov    eax,DWORD PTR [esi+0x11a4]
   3e3d8:	f6 80 8d 11 00 00 40 	test   BYTE PTR [eax+0x118d],0x40
   3e3df:	74 0c                	je     update_mod_76_2_branch_77
   3e3e1:	c6 86 a1 11 00 00 19 	mov    BYTE PTR [esi+0x11a1],0x19
   3e3e8:	e9 03 01 00 00       	jmp    update_mod_76_2_branch_85
update_mod_76_2_branch_77:
   3e3ed:	83 fb 01             	cmp    ebx,0x1
   3e3f0:	75 23                	jne    update_mod_76_2_branch_78
   3e3f2:	85 be 8c 11 00 00    	test   DWORD PTR [esi+0x118c],edi
   3e3f8:	74 1b                	je     update_mod_76_2_branch_78
   3e3fa:	8b 86 a4 11 00 00    	mov    eax,DWORD PTR [esi+0x11a4]
   3e400:	f6 80 8d 11 00 00 80 	test   BYTE PTR [eax+0x118d],0x80
   3e407:	74 0c                	je     update_mod_76_2_branch_78
   3e409:	c6 86 a1 11 00 00 1a 	mov    BYTE PTR [esi+0x11a1],0x1a
   3e410:	e9 db 00 00 00       	jmp    update_mod_76_2_branch_85
update_mod_76_2_branch_78:
   3e415:	83 fb 02             	cmp    ebx,0x2
   3e418:	0f 85 21 ff ff ff    	jne    update_mod_76_2_branch_75
   3e41e:	f6 86 8d 11 00 00 20 	test   BYTE PTR [esi+0x118d],0x20
   3e425:	0f 84 14 ff ff ff    	je     update_mod_76_2_branch_75
   3e42b:	8b 86 a4 11 00 00    	mov    eax,DWORD PTR [esi+0x11a4]
   3e431:	85 a8 8c 11 00 00    	test   DWORD PTR [eax+0x118c],ebp
   3e437:	0f 84 02 ff ff ff    	je     update_mod_76_2_branch_75
   3e43d:	c6 86 a1 11 00 00 1b 	mov    BYTE PTR [esi+0x11a1],0x1b
   3e444:	e9 a7 00 00 00       	jmp    update_mod_76_2_branch_85
update_mod_76_2_branch_79:
   3e449:	c6 86 a1 11 00 00 02 	mov    BYTE PTR [esi+0x11a1],0x2
   3e450:	e9 9b 00 00 00       	jmp    update_mod_76_2_branch_85
update_mod_76_2_branch_80:
   3e455:	8a b6 a0 11 00 00    	mov    dh,BYTE PTR [esi+0x11a0]
   3e45b:	80 fe 01             	cmp    dh,0x1
   3e45e:	74 0e                	je     update_mod_76_2_branch_81
   3e460:	80 fe 07             	cmp    dh,0x7
   3e463:	74 09                	je     update_mod_76_2_branch_81
   3e465:	80 fe 39             	cmp    dh,0x39
   3e468:	0f 85 7b 00 00 00    	jne    update_mod_76_2_branch_84
update_mod_76_2_branch_81:
   3e46e:	85 db                	test   ebx,ebx
   3e470:	75 21                	jne    update_mod_76_2_branch_82
   3e472:	f6 86 8d 11 00 00 08 	test   BYTE PTR [esi+0x118d],0x8
   3e479:	74 18                	je     update_mod_76_2_branch_82
   3e47b:	8b 86 a4 11 00 00    	mov    eax,DWORD PTR [esi+0x11a4]
   3e481:	f6 80 8d 11 00 00 40 	test   BYTE PTR [eax+0x118d],0x40
   3e488:	74 09                	je     update_mod_76_2_branch_82
   3e48a:	c6 86 a1 11 00 00 16 	mov    BYTE PTR [esi+0x11a1],0x16
   3e491:	eb 5d                	jmp    update_mod_76_2_branch_85
update_mod_76_2_branch_82:
   3e493:	83 fb 01             	cmp    ebx,0x1
   3e496:	75 20                	jne    update_mod_76_2_branch_83
   3e498:	85 be 8c 11 00 00    	test   DWORD PTR [esi+0x118c],edi
   3e49e:	74 18                	je     update_mod_76_2_branch_83
   3e4a0:	8b 86 a4 11 00 00    	mov    eax,DWORD PTR [esi+0x11a4]
   3e4a6:	f6 80 8d 11 00 00 80 	test   BYTE PTR [eax+0x118d],0x80
   3e4ad:	74 09                	je     update_mod_76_2_branch_83
   3e4af:	c6 86 a1 11 00 00 17 	mov    BYTE PTR [esi+0x11a1],0x17
   3e4b6:	eb 38                	jmp    update_mod_76_2_branch_85
update_mod_76_2_branch_83:
   3e4b8:	83 fb 02             	cmp    ebx,0x2
   3e4bb:	0f 85 7e fe ff ff    	jne    update_mod_76_2_branch_75
   3e4c1:	f6 86 8d 11 00 00 20 	test   BYTE PTR [esi+0x118d],0x20
   3e4c8:	0f 84 71 fe ff ff    	je     update_mod_76_2_branch_75
   3e4ce:	8b 86 a4 11 00 00    	mov    eax,DWORD PTR [esi+0x11a4]
   3e4d4:	85 a8 8c 11 00 00    	test   DWORD PTR [eax+0x118c],ebp
   3e4da:	0f 84 5f fe ff ff    	je     update_mod_76_2_branch_75
   3e4e0:	c6 86 a1 11 00 00 18 	mov    BYTE PTR [esi+0x11a1],0x18
   3e4e7:	eb 07                	jmp    update_mod_76_2_branch_85
update_mod_76_2_branch_84:
   3e4e9:	c6 86 a1 11 00 00 01 	mov    BYTE PTR [esi+0x11a1],0x1
update_mod_76_2_branch_85:
   3e4f0:	83 be 84 11 00 00 00 	cmp    DWORD PTR [esi+0x1184],0x0
   3e4f7:	0f 8f ed 02 00 00    	jg     update_mod_76_2_branch_109
   3e4fd:	80 be a1 11 00 00 2b 	cmp    BYTE PTR [esi+0x11a1],0x2b
   3e504:	0f 8f e0 02 00 00    	jg     update_mod_76_2_branch_109
   3e50a:	80 be a0 11 00 00 2b 	cmp    BYTE PTR [esi+0x11a0],0x2b
   3e511:	0f 8f d3 02 00 00    	jg     update_mod_76_2_branch_109
   3e517:	8b 8e a8 11 00 00    	mov    ecx,DWORD PTR [esi+0x11a8]
   3e51d:	85 c9                	test   ecx,ecx
   3e51f:	74 4f                	je     update_mod_76_2_branch_87
   3e521:	8b b9 84 10 00 00    	mov    edi,DWORD PTR [ecx+0x1084]
   3e527:	89 ca                	mov    edx,ecx
   3e529:	85 ff                	test   edi,edi
   3e52b:	7c 43                	jl     update_mod_76_2_branch_87
   3e52d:	8b aa 84 10 00 00    	mov    ebp,DWORD PTR [edx+0x1084]
   3e533:	30 ed                	xor    ch,ch
   3e535:	4d                   	dec    ebp
   3e536:	88 2d 9c 60 02 00    	mov    BYTE PTR ds:@obj3:combat_mode,ch                             ; fixup: num: 10918, src obj: 1, src ofs: 0x3e538, dst obj: 3, dst ofs: 0x2609c
   3e53c:	89 aa 84 10 00 00    	mov    DWORD PTR [edx+0x1084],ebp
   3e542:	83 fd ff             	cmp    ebp,0xffffffff
   3e545:	75 13                	jne    update_mod_76_2_branch_86
   3e547:	83 ba 64 10 00 00 00 	cmp    DWORD PTR [edx+0x1064],0x0
   3e54e:	7c 0a                	jl     update_mod_76_2_branch_86
   3e550:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 10921, src obj: 1, src ofs: 0x3e551, dst obj: 3, dst ofs: 0x25a88
   3e555:	e8 96 e1 00 00       	call   remove_bitmap
update_mod_76_2_branch_86:
   3e55a:	b9 0a 00 00 00       	mov    ecx,0xa
   3e55f:	bf 75 02 00 00       	mov    edi,0x275
   3e564:	89 0d 08 3c 01 00    	mov    DWORD PTR ds:@obj3:move_min_x,ecx                            ; fixup: num: 10920, src obj: 1, src ofs: 0x3e566, dst obj: 3, dst ofs: 0x13c08
   3e56a:	89 3d 0c 3c 01 00    	mov    DWORD PTR ds:@obj3:move_max_x,edi                            ; fixup: num: 10919, src obj: 1, src ofs: 0x3e56c, dst obj: 3, dst ofs: 0x13c0c
update_mod_76_2_branch_87:
   3e570:	8b ae 68 10 00 00    	mov    ebp,DWORD PTR [esi+0x1068]
   3e576:	c7 86 60 10 00 00 07 00 00 00 	mov    DWORD PTR [esi+0x1060],0x7
   3e580:	83 fd 0e             	cmp    ebp,0xe
   3e583:	74 14                	je     update_mod_76_2_branch_88
   3e585:	c7 86 68 10 00 00 0e 00 00 00 	mov    DWORD PTR [esi+0x1068],0xe
   3e58f:	c7 86 5c 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x105c],0x0
update_mod_76_2_branch_88:
   3e599:	c7 86 ac 10 00 00 ff ff ff ff 	mov    DWORD PTR [esi+0x10ac],0xffffffff
   3e5a3:	c7 86 b4 10 00 00 00 00 c6 c2 	mov    DWORD PTR [esi+0x10b4],0xc2c60000
   3e5ad:	8a 86 a0 11 00 00    	mov    al,BYTE PTR [esi+0x11a0]
   3e5b3:	c7 86 24 11 00 00 ff ff ff ff 	mov    DWORD PTR [esi+0x1124],0xffffffff
   3e5bd:	3c 19                	cmp    al,0x19
   3e5bf:	74 38                	je     update_mod_76_2_branch_89
   3e5c1:	3c 1a                	cmp    al,0x1a
   3e5c3:	74 34                	je     update_mod_76_2_branch_89
   3e5c5:	3c 1b                	cmp    al,0x1b
   3e5c7:	74 30                	je     update_mod_76_2_branch_89
   3e5c9:	3c 1c                	cmp    al,0x1c
   3e5cb:	74 2c                	je     update_mod_76_2_branch_89
   3e5cd:	3c 1d                	cmp    al,0x1d
   3e5cf:	74 28                	je     update_mod_76_2_branch_89
   3e5d1:	3c 1e                	cmp    al,0x1e
   3e5d3:	74 24                	je     update_mod_76_2_branch_89
   3e5d5:	3c 02                	cmp    al,0x2
   3e5d7:	74 20                	je     update_mod_76_2_branch_89
   3e5d9:	3c 08                	cmp    al,0x8
   3e5db:	74 1c                	je     update_mod_76_2_branch_89
   3e5dd:	3c 0e                	cmp    al,0xe
   3e5df:	74 18                	je     update_mod_76_2_branch_89
   3e5e1:	3c 3a                	cmp    al,0x3a
   3e5e3:	74 14                	je     update_mod_76_2_branch_89
   3e5e5:	3c 10                	cmp    al,0x10
   3e5e7:	74 10                	je     update_mod_76_2_branch_89
   3e5e9:	3c 0d                	cmp    al,0xd
   3e5eb:	74 0c                	je     update_mod_76_2_branch_89
   3e5ed:	3c 11                	cmp    al,0x11
   3e5ef:	74 08                	je     update_mod_76_2_branch_89
   3e5f1:	3c 0c                	cmp    al,0xc
   3e5f3:	0f 85 70 00 00 00    	jne    update_mod_76_2_branch_93
update_mod_76_2_branch_89:
   3e5f9:	bb 0a 00 00 00       	mov    ebx,0xa
   3e5fe:	30 d2                	xor    dl,dl
   3e600:	b9 75 02 00 00       	mov    ecx,0x275
   3e605:	88 15 9c 60 02 00    	mov    BYTE PTR ds:@obj3:combat_mode,dl                             ; fixup: num: 10925, src obj: 1, src ofs: 0x3e607, dst obj: 3, dst ofs: 0x2609c
   3e60b:	89 1d 08 3c 01 00    	mov    DWORD PTR ds:@obj3:move_min_x,ebx                            ; fixup: num: 10924, src obj: 1, src ofs: 0x3e60d, dst obj: 3, dst ofs: 0x13c08
   3e611:	8a 35 bc 0f 01 00    	mov    dh,BYTE PTR ds:@obj3:gore                                    ; fixup: num: 10923, src obj: 1, src ofs: 0x3e613, dst obj: 3, dst ofs: 0x10fbc
   3e617:	89 0d 0c 3c 01 00    	mov    DWORD PTR ds:@obj3:move_max_x,ecx                            ; fixup: num: 10922, src obj: 1, src ofs: 0x3e619, dst obj: 3, dst ofs: 0x13c0c
   3e61d:	84 f6                	test   dh,dh
   3e61f:	74 12                	je     update_mod_76_2_branch_90
   3e621:	f6 86 8e 11 00 00 02 	test   BYTE PTR [esi+0x118e],0x2
   3e628:	74 15                	je     update_mod_76_2_branch_91
   3e62a:	f6 86 88 11 00 00 01 	test   BYTE PTR [esi+0x1188],0x1
   3e631:	74 0c                	je     update_mod_76_2_branch_91
update_mod_76_2_branch_90:
   3e633:	c6 86 a1 11 00 00 28 	mov    BYTE PTR [esi+0x11a1],0x28
   3e63a:	e9 e2 00 00 00       	jmp    update_mod_76_2_branch_99
update_mod_76_2_branch_91:
   3e63f:	f6 86 8e 11 00 00 08 	test   BYTE PTR [esi+0x118e],0x8
   3e646:	74 15                	je     update_mod_76_2_branch_92
   3e648:	f6 86 88 11 00 00 04 	test   BYTE PTR [esi+0x1188],0x4
   3e64f:	74 0c                	je     update_mod_76_2_branch_92
   3e651:	c6 86 a1 11 00 00 2c 	mov    BYTE PTR [esi+0x11a1],0x2c
   3e658:	e9 c4 00 00 00       	jmp    update_mod_76_2_branch_99
update_mod_76_2_branch_92:
   3e65d:	c6 86 a1 11 00 00 2a 	mov    BYTE PTR [esi+0x11a1],0x2a
   3e664:	e9 b8 00 00 00       	jmp    update_mod_76_2_branch_99
update_mod_76_2_branch_93:
   3e669:	3c 16                	cmp    al,0x16
   3e66b:	74 38                	je     update_mod_76_2_branch_94
   3e66d:	3c 17                	cmp    al,0x17
   3e66f:	74 34                	je     update_mod_76_2_branch_94
   3e671:	3c 18                	cmp    al,0x18
   3e673:	74 30                	je     update_mod_76_2_branch_94
   3e675:	3c 1f                	cmp    al,0x1f
   3e677:	74 2c                	je     update_mod_76_2_branch_94
   3e679:	3c 20                	cmp    al,0x20
   3e67b:	74 28                	je     update_mod_76_2_branch_94
   3e67d:	3c 21                	cmp    al,0x21
   3e67f:	74 24                	je     update_mod_76_2_branch_94
   3e681:	3c 01                	cmp    al,0x1
   3e683:	74 20                	je     update_mod_76_2_branch_94
   3e685:	3c 0f                	cmp    al,0xf
   3e687:	74 1c                	je     update_mod_76_2_branch_94
   3e689:	3c 07                	cmp    al,0x7
   3e68b:	74 18                	je     update_mod_76_2_branch_94
   3e68d:	3c 39                	cmp    al,0x39
   3e68f:	74 14                	je     update_mod_76_2_branch_94
   3e691:	3c 06                	cmp    al,0x6
   3e693:	74 10                	je     update_mod_76_2_branch_94
   3e695:	3c 09                	cmp    al,0x9
   3e697:	74 0c                	je     update_mod_76_2_branch_94
   3e699:	3c 05                	cmp    al,0x5
   3e69b:	74 08                	je     update_mod_76_2_branch_94
   3e69d:	3c 0a                	cmp    al,0xa
   3e69f:	0f 85 66 00 00 00    	jne    update_mod_76_2_branch_98
update_mod_76_2_branch_94:
   3e6a5:	b8 0a 00 00 00       	mov    eax,0xa
   3e6aa:	30 db                	xor    bl,bl
   3e6ac:	ba 75 02 00 00       	mov    edx,0x275
   3e6b1:	88 1d 9c 60 02 00    	mov    BYTE PTR ds:@obj3:combat_mode,bl                             ; fixup: num: 10932, src obj: 1, src ofs: 0x3e6b3, dst obj: 3, dst ofs: 0x2609c
   3e6b7:	a3 08 3c 01 00       	mov    ds:@obj3:move_min_x,eax                                      ; fixup: num: 10931, src obj: 1, src ofs: 0x3e6b8, dst obj: 3, dst ofs: 0x13c08
   3e6bc:	8a 3d bc 0f 01 00    	mov    bh,BYTE PTR ds:@obj3:gore                                    ; fixup: num: 10930, src obj: 1, src ofs: 0x3e6be, dst obj: 3, dst ofs: 0x10fbc
   3e6c2:	89 15 0c 3c 01 00    	mov    DWORD PTR ds:@obj3:move_max_x,edx                            ; fixup: num: 10929, src obj: 1, src ofs: 0x3e6c4, dst obj: 3, dst ofs: 0x13c0c
   3e6c8:	84 ff                	test   bh,bh
   3e6ca:	74 12                	je     update_mod_76_2_branch_95
   3e6cc:	f6 86 8e 11 00 00 02 	test   BYTE PTR [esi+0x118e],0x2
   3e6d3:	74 12                	je     update_mod_76_2_branch_96
   3e6d5:	f6 86 88 11 00 00 01 	test   BYTE PTR [esi+0x1188],0x1
   3e6dc:	74 09                	je     update_mod_76_2_branch_96
update_mod_76_2_branch_95:
   3e6de:	c6 86 a1 11 00 00 29 	mov    BYTE PTR [esi+0x11a1],0x29
   3e6e5:	eb 3a                	jmp    update_mod_76_2_branch_99
update_mod_76_2_branch_96:
   3e6e7:	f6 86 8e 11 00 00 08 	test   BYTE PTR [esi+0x118e],0x8
   3e6ee:	74 12                	je     update_mod_76_2_branch_97
   3e6f0:	f6 86 88 11 00 00 04 	test   BYTE PTR [esi+0x1188],0x4
   3e6f7:	74 09                	je     update_mod_76_2_branch_97
   3e6f9:	c6 86 a1 11 00 00 2d 	mov    BYTE PTR [esi+0x11a1],0x2d
   3e700:	eb 1f                	jmp    update_mod_76_2_branch_99
update_mod_76_2_branch_97:
   3e702:	c6 86 a1 11 00 00 2b 	mov    BYTE PTR [esi+0x11a1],0x2b
   3e709:	eb 16                	jmp    update_mod_76_2_branch_99
update_mod_76_2_branch_98:
   3e70b:	0f be c0             	movsx  eax,al
   3e70e:	50                   	push   eax
   3e70f:	68 27 a1 00 00       	push   @obj3:classes_cpp_variable_63                                ; fixup: num: 10928, src obj: 1, src ofs: 0x3e710, dst obj: 3, dst ofs: 0xa127
   3e714:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 10927, src obj: 1, src ofs: 0x3e715, dst obj: 3, dst ofs: 0x237fc
   3e719:	e8 c3 24 03 00       	call   sprintf_
   3e71e:	83 c4 0c             	add    esp,0xc
update_mod_76_2_branch_99:
   3e721:	83 7e 38 05          	cmp    DWORD PTR [esi+0x38],0x5
   3e725:	0f 85 bf 00 00 00    	jne    update_mod_76_2_branch_109
   3e72b:	8a 86 a0 11 00 00    	mov    al,BYTE PTR [esi+0x11a0]
   3e731:	84 c0                	test   al,al
   3e733:	74 04                	je     update_mod_76_2_branch_100
   3e735:	3c 04                	cmp    al,0x4
   3e737:	75 51                	jne    update_mod_76_2_branch_104
update_mod_76_2_branch_100:
   3e739:	80 3d bc 0f 01 00 00 	cmp    BYTE PTR ds:@obj3:gore,0x0                                   ; fixup: num: 10926, src obj: 1, src ofs: 0x3e73b, dst obj: 3, dst ofs: 0x10fbc
   3e740:	74 12                	je     update_mod_76_2_branch_101
   3e742:	f6 86 8e 11 00 00 02 	test   BYTE PTR [esi+0x118e],0x2
   3e749:	74 15                	je     update_mod_76_2_branch_102
   3e74b:	f6 86 88 11 00 00 01 	test   BYTE PTR [esi+0x1188],0x1
   3e752:	74 0c                	je     update_mod_76_2_branch_102
update_mod_76_2_branch_101:
   3e754:	c6 86 a1 11 00 00 2e 	mov    BYTE PTR [esi+0x11a1],0x2e
   3e75b:	e9 8a 00 00 00       	jmp    update_mod_76_2_branch_109
update_mod_76_2_branch_102:
   3e760:	f6 86 8e 11 00 00 08 	test   BYTE PTR [esi+0x118e],0x8
   3e767:	74 15                	je     update_mod_76_2_branch_103
   3e769:	f6 86 88 11 00 00 04 	test   BYTE PTR [esi+0x1188],0x4
   3e770:	74 0c                	je     update_mod_76_2_branch_103
   3e772:	c6 86 a1 11 00 00 32 	mov    BYTE PTR [esi+0x11a1],0x32
   3e779:	e9 6c 00 00 00       	jmp    update_mod_76_2_branch_109
update_mod_76_2_branch_103:
   3e77e:	c6 86 a1 11 00 00 30 	mov    BYTE PTR [esi+0x11a1],0x30
   3e785:	e9 60 00 00 00       	jmp    update_mod_76_2_branch_109
update_mod_76_2_branch_104:
   3e78a:	3c 03                	cmp    al,0x3
   3e78c:	74 04                	je     update_mod_76_2_branch_105
   3e78e:	3c 0b                	cmp    al,0xb
   3e790:	75 58                	jne    update_mod_76_2_branch_109
update_mod_76_2_branch_105:
   3e792:	80 3d bc 0f 01 00 00 	cmp    BYTE PTR ds:@obj3:gore,0x0                                   ; fixup: num: 10934, src obj: 1, src ofs: 0x3e794, dst obj: 3, dst ofs: 0x10fbc
   3e799:	74 12                	je     update_mod_76_2_branch_106
   3e79b:	f6 86 8e 11 00 00 02 	test   BYTE PTR [esi+0x118e],0x2
   3e7a2:	74 12                	je     update_mod_76_2_branch_107
   3e7a4:	f6 86 88 11 00 00 01 	test   BYTE PTR [esi+0x1188],0x1
   3e7ab:	74 09                	je     update_mod_76_2_branch_107
update_mod_76_2_branch_106:
   3e7ad:	c6 86 a1 11 00 00 2f 	mov    BYTE PTR [esi+0x11a1],0x2f
   3e7b4:	eb 34                	jmp    update_mod_76_2_branch_109
update_mod_76_2_branch_107:
   3e7b6:	f6 86 8e 11 00 00 04 	test   BYTE PTR [esi+0x118e],0x4
   3e7bd:	74 12                	je     update_mod_76_2_branch_108
   3e7bf:	f6 86 88 11 00 00 02 	test   BYTE PTR [esi+0x1188],0x2
   3e7c6:	74 09                	je     update_mod_76_2_branch_108
   3e7c8:	c6 86 a1 11 00 00 31 	mov    BYTE PTR [esi+0x11a1],0x31
   3e7cf:	eb 19                	jmp    update_mod_76_2_branch_109
update_mod_76_2_branch_108:
   3e7d1:	f6 86 8e 11 00 00 08 	test   BYTE PTR [esi+0x118e],0x8
   3e7d8:	74 10                	je     update_mod_76_2_branch_109
   3e7da:	f6 86 88 11 00 00 04 	test   BYTE PTR [esi+0x1188],0x4
   3e7e1:	74 07                	je     update_mod_76_2_branch_109
   3e7e3:	c6 86 a1 11 00 00 33 	mov    BYTE PTR [esi+0x11a1],0x33
update_mod_76_2_branch_109:
   3e7ea:	83 7e 38 05          	cmp    DWORD PTR [esi+0x38],0x5
   3e7ee:	75 3e                	jne    update_mod_76_2_branch_111
   3e7f0:	a1 c4 5a 02 00       	mov    eax,ds:@obj3:current_room                                    ; fixup: num: 10933, src obj: 1, src ofs: 0x3e7f1, dst obj: 3, dst ofs: 0x25ac4
   3e7f5:	db 40 04             	fild   DWORD PTR [eax+0x4]
   3e7f8:	d9 5c 24 1c          	fstp   DWORD PTR [esp+0x1c]
   3e7fc:	d9 46 1c             	fld    DWORD PTR [esi+0x1c]
   3e7ff:	d8 5c 24 1c          	fcomp  DWORD PTR [esp+0x1c]
   3e803:	df e0                	fnstsw ax
   3e805:	9e                   	sahf   
   3e806:	73 07                	jae    update_mod_76_2_branch_110
   3e808:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
   3e80c:	89 46 1c             	mov    DWORD PTR [esi+0x1c],eax
update_mod_76_2_branch_110:
   3e80f:	a1 c4 5a 02 00       	mov    eax,ds:@obj3:current_room                                    ; fixup: num: 10939, src obj: 1, src ofs: 0x3e810, dst obj: 3, dst ofs: 0x25ac4
   3e814:	db 40 08             	fild   DWORD PTR [eax+0x8]
   3e817:	d9 5c 24 38          	fstp   DWORD PTR [esp+0x38]
   3e81b:	d9 46 1c             	fld    DWORD PTR [esi+0x1c]
   3e81e:	d8 5c 24 38          	fcomp  DWORD PTR [esp+0x38]
   3e822:	df e0                	fnstsw ax
   3e824:	9e                   	sahf   
   3e825:	76 07                	jbe    update_mod_76_2_branch_111
   3e827:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
   3e82b:	89 46 1c             	mov    DWORD PTR [esi+0x1c],eax
update_mod_76_2_branch_111:
   3e82e:	ba 33 a1 00 00       	mov    edx,@obj3:classes_cpp_variable_64                            ; fixup: num: 10938, src obj: 1, src ofs: 0x3e82f, dst obj: 3, dst ofs: 0xa133
   3e833:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
   3e836:	c6 46 4c 00          	mov    BYTE PTR [esi+0x4c],0x0
   3e83a:	e8 f1 7b 03 00       	call   strcmp_
   3e83f:	85 c0                	test   eax,eax
   3e841:	0f 84 f6 01 00 00    	je     update_mod_76_2_branch_131
update_mod_76_2_branch_112:
   3e847:	8a 86 a1 11 00 00    	mov    al,BYTE PTR [esi+0x11a1]
   3e84d:	3c 3a                	cmp    al,0x3a
   3e84f:	0f 87 28 2d 00 00    	ja     update_mod_76_2_reference_48
   3e855:	25 ff 00 00 00       	and    eax,0xff
   3e85a:	2e ff 24 85 70 d5 03 00 	jmp    DWORD PTR cs:[eax*4+@obj1:W?$ct:NON_PLAYER_CHARACTER$n(pnapnaiibiiipn(ui)pnv)__reference_2]; fixup: num: 10937, src obj: 1, src ofs: 0x3e85e, dst obj: 1, dst ofs: 0x3d570
update_mod_76_2_branch_113:
   3e862:	b8 3a a1 00 00       	mov    eax,@obj3:classes_cpp_variable_65                            ; fixup: num: 10936, src obj: 1, src ofs: 0x3e863, dst obj: 3, dst ofs: 0xa13a
   3e867:	50                   	push   eax
   3e868:	b8 fc 37 02 00       	mov    eax,@obj3:log_buffer                                         ; fixup: num: 10935, src obj: 1, src ofs: 0x3e869, dst obj: 3, dst ofs: 0x237fc
   3e86d:	50                   	push   eax
   3e86e:	e8 6e 23 03 00       	call   sprintf_
   3e873:	83 c4 08             	add    esp,0x8
update_mod_76_2_branch_114:
   3e876:	8a 86 a1 11 00 00    	mov    al,BYTE PTR [esi+0x11a1]
   3e87c:	88 c4                	mov    ah,al
   3e87e:	3c 09                	cmp    al,0x9
   3e880:	0f 82 87 04 00 00    	jb     update_mod_76_2_branch_156
   3e886:	0f 86 98 03 00 00    	jbe    update_mod_76_2_branch_147
   3e88c:	3c 0e                	cmp    al,0xe
   3e88e:	0f 82 4c 04 00 00    	jb     update_mod_76_2_branch_155
   3e894:	0f 86 e6 03 00 00    	jbe    update_mod_76_2_branch_151
   3e89a:	3c 11                	cmp    al,0x11
   3e89c:	0f 82 23 04 00 00    	jb     update_mod_76_2_branch_154
   3e8a2:	0f 86 06 04 00 00    	jbe    update_mod_76_2_branch_153
   3e8a8:	3c 39                	cmp    al,0x39
   3e8aa:	0f 82 0e 00 00 00    	jb     update_mod_76_2_branch_115
   3e8b0:	0f 86 40 03 00 00    	jbe    update_mod_76_2_branch_145
   3e8b6:	3c 3a                	cmp    al,0x3a
   3e8b8:	0f 84 4f 03 00 00    	je     update_mod_76_2_branch_146
update_mod_76_2_branch_115:
   3e8be:	0f be 86 a1 11 00 00 	movsx  eax,BYTE PTR [esi+0x11a1]
   3e8c5:	50                   	push   eax
   3e8c6:	68 dd a5 00 00       	push   @obj3:classes_cpp_variable_106                               ; fixup: num: 10951, src obj: 1, src ofs: 0x3e8c7, dst obj: 3, dst ofs: 0xa5dd
   3e8cb:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 10950, src obj: 1, src ofs: 0x3e8cc, dst obj: 3, dst ofs: 0x237fc
   3e8d0:	e8 0c 23 03 00       	call   sprintf_
   3e8d5:	83 c4 0c             	add    esp,0xc
   3e8d8:	e9 6a ff ff ff       	jmp    update_mod_76_2_branch_112
update_mod_76_2_branch_116:
   3e8dd:	b8 51 a1 00 00       	mov    eax,@obj3:classes_cpp_variable_66                            ; fixup: num: 10949, src obj: 1, src ofs: 0x3e8de, dst obj: 3, dst ofs: 0xa151
   3e8e2:	50                   	push   eax
   3e8e3:	b8 fc 37 02 00       	mov    eax,@obj3:log_buffer                                         ; fixup: num: 10948, src obj: 1, src ofs: 0x3e8e4, dst obj: 3, dst ofs: 0x237fc
   3e8e8:	50                   	push   eax
   3e8e9:	e8 f3 22 03 00       	call   sprintf_
   3e8ee:	83 c4 08             	add    esp,0x8
   3e8f1:	eb 83                	jmp    update_mod_76_2_branch_114
update_mod_76_2_branch_117:
   3e8f3:	b8 65 a1 00 00       	mov    eax,@obj3:classes_cpp_variable_67                            ; fixup: num: 10947, src obj: 1, src ofs: 0x3e8f4, dst obj: 3, dst ofs: 0xa165
   3e8f8:	50                   	push   eax
   3e8f9:	b8 fc 37 02 00       	mov    eax,@obj3:log_buffer                                         ; fixup: num: 10946, src obj: 1, src ofs: 0x3e8fa, dst obj: 3, dst ofs: 0x237fc
   3e8fe:	50                   	push   eax
   3e8ff:	e8 dd 22 03 00       	call   sprintf_
   3e904:	83 c4 08             	add    esp,0x8
   3e907:	e9 6a ff ff ff       	jmp    update_mod_76_2_branch_114
update_mod_76_2_branch_118:
   3e90c:	b8 8e a1 00 00       	mov    eax,@obj3:classes_cpp_variable_69                            ; fixup: num: 10945, src obj: 1, src ofs: 0x3e90d, dst obj: 3, dst ofs: 0xa18e
   3e911:	50                   	push   eax
   3e912:	b8 fc 37 02 00       	mov    eax,@obj3:log_buffer                                         ; fixup: num: 10944, src obj: 1, src ofs: 0x3e913, dst obj: 3, dst ofs: 0x237fc
   3e917:	50                   	push   eax
   3e918:	e8 c4 22 03 00       	call   sprintf_
   3e91d:	83 c4 08             	add    esp,0x8
   3e920:	e9 51 ff ff ff       	jmp    update_mod_76_2_branch_114
update_mod_76_2_branch_119:
   3e925:	b8 a6 a1 00 00       	mov    eax,@obj3:classes_cpp_variable_70                            ; fixup: num: 10943, src obj: 1, src ofs: 0x3e926, dst obj: 3, dst ofs: 0xa1a6
   3e92a:	50                   	push   eax
   3e92b:	b8 fc 37 02 00       	mov    eax,@obj3:log_buffer                                         ; fixup: num: 10942, src obj: 1, src ofs: 0x3e92c, dst obj: 3, dst ofs: 0x237fc
   3e930:	50                   	push   eax
   3e931:	e8 ab 22 03 00       	call   sprintf_
   3e936:	83 c4 08             	add    esp,0x8
   3e939:	e9 38 ff ff ff       	jmp    update_mod_76_2_branch_114
update_mod_76_2_branch_120:
   3e93e:	b8 c4 a1 00 00       	mov    eax,@obj3:classes_cpp_variable_71                            ; fixup: num: 10941, src obj: 1, src ofs: 0x3e93f, dst obj: 3, dst ofs: 0xa1c4
   3e943:	50                   	push   eax
   3e944:	b8 fc 37 02 00       	mov    eax,@obj3:log_buffer                                         ; fixup: num: 10940, src obj: 1, src ofs: 0x3e945, dst obj: 3, dst ofs: 0x237fc
   3e949:	50                   	push   eax
   3e94a:	e8 92 22 03 00       	call   sprintf_
   3e94f:	83 c4 08             	add    esp,0x8
   3e952:	e9 1f ff ff ff       	jmp    update_mod_76_2_branch_114
update_mod_76_2_branch_121:
   3e957:	68 e2 a1 00 00       	push   @obj3:classes_cpp_variable_72                                ; fixup: num: 10966, src obj: 1, src ofs: 0x3e958, dst obj: 3, dst ofs: 0xa1e2
   3e95c:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 10965, src obj: 1, src ofs: 0x3e95d, dst obj: 3, dst ofs: 0x237fc
   3e961:	e8 7b 22 03 00       	call   sprintf_
   3e966:	83 c4 08             	add    esp,0x8
   3e969:	e9 08 ff ff ff       	jmp    update_mod_76_2_branch_114
update_mod_76_2_branch_122:
   3e96e:	68 f7 a1 00 00       	push   @obj3:classes_cpp_variable_73                                ; fixup: num: 10964, src obj: 1, src ofs: 0x3e96f, dst obj: 3, dst ofs: 0xa1f7
   3e973:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 10963, src obj: 1, src ofs: 0x3e974, dst obj: 3, dst ofs: 0x237fc
   3e978:	e8 64 22 03 00       	call   sprintf_
   3e97d:	83 c4 08             	add    esp,0x8
   3e980:	e9 f1 fe ff ff       	jmp    update_mod_76_2_branch_114
update_mod_76_2_branch_123:
   3e985:	68 11 a2 00 00       	push   @obj3:classes_cpp_variable_74                                ; fixup: num: 10962, src obj: 1, src ofs: 0x3e986, dst obj: 3, dst ofs: 0xa211
   3e98a:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 10961, src obj: 1, src ofs: 0x3e98b, dst obj: 3, dst ofs: 0x237fc
   3e98f:	e8 4d 22 03 00       	call   sprintf_
   3e994:	83 c4 08             	add    esp,0x8
   3e997:	e9 da fe ff ff       	jmp    update_mod_76_2_branch_114
update_mod_76_2_branch_124:
   3e99c:	68 41 a2 00 00       	push   @obj3:classes_cpp_variable_76                                ; fixup: num: 10960, src obj: 1, src ofs: 0x3e99d, dst obj: 3, dst ofs: 0xa241
   3e9a1:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 10959, src obj: 1, src ofs: 0x3e9a2, dst obj: 3, dst ofs: 0x237fc
   3e9a6:	e8 36 22 03 00       	call   sprintf_
   3e9ab:	83 c4 08             	add    esp,0x8
   3e9ae:	e9 c3 fe ff ff       	jmp    update_mod_76_2_branch_114
update_mod_76_2_branch_125:
   3e9b3:	68 5e a2 00 00       	push   @obj3:classes_cpp_variable_77                                ; fixup: num: 10958, src obj: 1, src ofs: 0x3e9b4, dst obj: 3, dst ofs: 0xa25e
   3e9b8:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 10957, src obj: 1, src ofs: 0x3e9b9, dst obj: 3, dst ofs: 0x237fc
   3e9bd:	e8 1f 22 03 00       	call   sprintf_
   3e9c2:	83 c4 08             	add    esp,0x8
   3e9c5:	e9 ac fe ff ff       	jmp    update_mod_76_2_branch_114
update_mod_76_2_branch_126:
   3e9ca:	68 7b a2 00 00       	push   @obj3:classes_cpp_variable_78                                ; fixup: num: 10956, src obj: 1, src ofs: 0x3e9cb, dst obj: 3, dst ofs: 0xa27b
   3e9cf:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 10955, src obj: 1, src ofs: 0x3e9d0, dst obj: 3, dst ofs: 0x237fc
   3e9d4:	e8 08 22 03 00       	call   sprintf_
   3e9d9:	83 c4 08             	add    esp,0x8
   3e9dc:	e9 95 fe ff ff       	jmp    update_mod_76_2_branch_114
update_mod_76_2_branch_127:
   3e9e1:	68 90 a2 00 00       	push   @obj3:classes_cpp_variable_79                                ; fixup: num: 10954, src obj: 1, src ofs: 0x3e9e2, dst obj: 3, dst ofs: 0xa290
   3e9e6:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 10953, src obj: 1, src ofs: 0x3e9e7, dst obj: 3, dst ofs: 0x237fc
   3e9eb:	e8 f1 21 03 00       	call   sprintf_
   3e9f0:	83 c4 08             	add    esp,0x8
   3e9f3:	e9 7e fe ff ff       	jmp    update_mod_76_2_branch_114
update_mod_76_2_branch_128:
   3e9f8:	68 cc a2 00 00       	push   @obj3:classes_cpp_variable_81                                ; fixup: num: 10952, src obj: 1, src ofs: 0x3e9f9, dst obj: 3, dst ofs: 0xa2cc
   3e9fd:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 10856, src obj: 1, src ofs: 0x3e9fe, dst obj: 3, dst ofs: 0x237fc
   3ea02:	e8 da 21 03 00       	call   sprintf_
   3ea07:	83 c4 08             	add    esp,0x8
   3ea0a:	e9 67 fe ff ff       	jmp    update_mod_76_2_branch_114
update_mod_76_2_branch_129:
   3ea0f:	68 e2 a2 00 00       	push   @obj3:classes_cpp_variable_82                                ; fixup: num: 10855, src obj: 1, src ofs: 0x3ea10, dst obj: 3, dst ofs: 0xa2e2
   3ea14:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 10854, src obj: 1, src ofs: 0x3ea15, dst obj: 3, dst ofs: 0x237fc
   3ea19:	e8 c3 21 03 00       	call   sprintf_
   3ea1e:	83 c4 08             	add    esp,0x8
   3ea21:	e9 50 fe ff ff       	jmp    update_mod_76_2_branch_114
update_mod_76_2_branch_130:
   3ea26:	68 17 a3 00 00       	push   @obj3:classes_cpp_variable_84                                ; fixup: num: 10853, src obj: 1, src ofs: 0x3ea27, dst obj: 3, dst ofs: 0xa317
   3ea2b:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 10852, src obj: 1, src ofs: 0x3ea2c, dst obj: 3, dst ofs: 0x237fc
   3ea30:	e8 ac 21 03 00       	call   sprintf_
   3ea35:	83 c4 08             	add    esp,0x8
   3ea38:	e9 39 fe ff ff       	jmp    update_mod_76_2_branch_114
update_mod_76_2_branch_131:
   3ea3d:	8a 86 a0 11 00 00    	mov    al,BYTE PTR [esi+0x11a0]
   3ea43:	88 c4                	mov    ah,al
   3ea45:	3c 09                	cmp    al,0x9
   3ea47:	0f 82 75 00 00 00    	jb     update_mod_76_2_branch_134
   3ea4d:	0f 86 49 ff ff ff    	jbe    update_mod_76_2_branch_124
   3ea53:	3c 0e                	cmp    al,0xe
   3ea55:	72 3e                	jb     update_mod_76_2_branch_133
   3ea57:	76 9f                	jbe    update_mod_76_2_branch_128
   3ea59:	3c 11                	cmp    al,0x11
   3ea5b:	72 1d                	jb     update_mod_76_2_branch_132
   3ea5d:	76 c7                	jbe    update_mod_76_2_branch_130
   3ea5f:	3c 39                	cmp    al,0x39
   3ea61:	0f 82 c5 00 00 00    	jb     update_mod_76_2_branch_137
   3ea67:	0f 86 01 ff ff ff    	jbe    update_mod_76_2_branch_122
   3ea6d:	3c 3a                	cmp    al,0x3a
   3ea6f:	0f 84 10 ff ff ff    	je     update_mod_76_2_branch_123
   3ea75:	e9 b2 00 00 00       	jmp    update_mod_76_2_branch_137
update_mod_76_2_branch_132:
   3ea7a:	3c 0f                	cmp    al,0xf
   3ea7c:	76 91                	jbe    update_mod_76_2_branch_129
   3ea7e:	68 f8 a2 00 00       	push   @obj3:classes_cpp_variable_83                                ; fixup: num: 10851, src obj: 1, src ofs: 0x3ea7f, dst obj: 3, dst ofs: 0xa2f8
   3ea83:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 10850, src obj: 1, src ofs: 0x3ea84, dst obj: 3, dst ofs: 0x237fc
   3ea88:	e8 54 21 03 00       	call   sprintf_
   3ea8d:	83 c4 08             	add    esp,0x8
   3ea90:	e9 e1 fd ff ff       	jmp    update_mod_76_2_branch_114
update_mod_76_2_branch_133:
   3ea95:	3c 0b                	cmp    al,0xb
   3ea97:	0f 82 16 ff ff ff    	jb     update_mod_76_2_branch_125
   3ea9d:	0f 86 27 ff ff ff    	jbe    update_mod_76_2_branch_126
   3eaa3:	3c 0c                	cmp    al,0xc
   3eaa5:	0f 86 36 ff ff ff    	jbe    update_mod_76_2_branch_127
   3eaab:	68 ae a2 00 00       	push   @obj3:classes_cpp_variable_80                                ; fixup: num: 10866, src obj: 1, src ofs: 0x3eaac, dst obj: 3, dst ofs: 0xa2ae
   3eab0:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 10865, src obj: 1, src ofs: 0x3eab1, dst obj: 3, dst ofs: 0x237fc
   3eab5:	e8 27 21 03 00       	call   sprintf_
   3eaba:	83 c4 08             	add    esp,0x8
   3eabd:	e9 b4 fd ff ff       	jmp    update_mod_76_2_branch_114
update_mod_76_2_branch_134:
   3eac2:	3c 04                	cmp    al,0x4
   3eac4:	72 33                	jb     update_mod_76_2_branch_135
   3eac6:	0f 86 40 fe ff ff    	jbe    update_mod_76_2_branch_118
   3eacc:	3c 06                	cmp    al,0x6
   3eace:	0f 82 51 fe ff ff    	jb     update_mod_76_2_branch_119
   3ead4:	0f 86 64 fe ff ff    	jbe    update_mod_76_2_branch_120
   3eada:	3c 07                	cmp    al,0x7
   3eadc:	0f 86 75 fe ff ff    	jbe    update_mod_76_2_branch_121
   3eae2:	68 2c a2 00 00       	push   @obj3:classes_cpp_variable_75                                ; fixup: num: 10864, src obj: 1, src ofs: 0x3eae3, dst obj: 3, dst ofs: 0xa22c
   3eae7:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 10863, src obj: 1, src ofs: 0x3eae8, dst obj: 3, dst ofs: 0x237fc
   3eaec:	e8 f0 20 03 00       	call   sprintf_
   3eaf1:	83 c4 08             	add    esp,0x8
   3eaf4:	e9 7d fd ff ff       	jmp    update_mod_76_2_branch_114
update_mod_76_2_branch_135:
   3eaf9:	3c 01                	cmp    al,0x1
   3eafb:	72 27                	jb     update_mod_76_2_branch_136
   3eafd:	0f 86 da fd ff ff    	jbe    update_mod_76_2_branch_116
   3eb03:	3c 02                	cmp    al,0x2
   3eb05:	0f 86 e8 fd ff ff    	jbe    update_mod_76_2_branch_117
   3eb0b:	b8 7a a1 00 00       	mov    eax,@obj3:classes_cpp_variable_68                            ; fixup: num: 10862, src obj: 1, src ofs: 0x3eb0c, dst obj: 3, dst ofs: 0xa17a
   3eb10:	50                   	push   eax
   3eb11:	b8 fc 37 02 00       	mov    eax,@obj3:log_buffer                                         ; fixup: num: 10861, src obj: 1, src ofs: 0x3eb12, dst obj: 3, dst ofs: 0x237fc
   3eb16:	50                   	push   eax
   3eb17:	e8 c5 20 03 00       	call   sprintf_
   3eb1c:	83 c4 08             	add    esp,0x8
   3eb1f:	e9 52 fd ff ff       	jmp    update_mod_76_2_branch_114
update_mod_76_2_branch_136:
   3eb24:	84 c0                	test   al,al
   3eb26:	0f 84 36 fd ff ff    	je     update_mod_76_2_branch_113
update_mod_76_2_branch_137:
   3eb2c:	0f be 86 a0 11 00 00 	movsx  eax,BYTE PTR [esi+0x11a0]
   3eb33:	50                   	push   eax
   3eb34:	68 36 a3 00 00       	push   @obj3:classes_cpp_variable_85                                ; fixup: num: 10860, src obj: 1, src ofs: 0x3eb35, dst obj: 3, dst ofs: 0xa336
   3eb39:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 10859, src obj: 1, src ofs: 0x3eb3a, dst obj: 3, dst ofs: 0x237fc
   3eb3e:	e8 9e 20 03 00       	call   sprintf_
   3eb43:	83 c4 0c             	add    esp,0xc
   3eb46:	e9 2b fd ff ff       	jmp    update_mod_76_2_branch_114
update_mod_76_2_branch_138:
   3eb4b:	b8 41 a3 00 00       	mov    eax,@obj3:classes_cpp_variable_86                            ; fixup: num: 10858, src obj: 1, src ofs: 0x3eb4c, dst obj: 3, dst ofs: 0xa341
   3eb50:	50                   	push   eax
   3eb51:	b8 fc 37 02 00       	mov    eax,@obj3:log_buffer                                         ; fixup: num: 10857, src obj: 1, src ofs: 0x3eb52, dst obj: 3, dst ofs: 0x237fc
   3eb56:	50                   	push   eax
   3eb57:	e8 85 20 03 00       	call   sprintf_
   3eb5c:	83 c4 08             	add    esp,0x8
   3eb5f:	e9 e3 fc ff ff       	jmp    update_mod_76_2_branch_112
update_mod_76_2_branch_139:
   3eb64:	b8 60 a3 00 00       	mov    eax,@obj3:classes_cpp_variable_87                            ; fixup: num: 10880, src obj: 1, src ofs: 0x3eb65, dst obj: 3, dst ofs: 0xa360
   3eb69:	50                   	push   eax
   3eb6a:	b8 fc 37 02 00       	mov    eax,@obj3:log_buffer                                         ; fixup: num: 10879, src obj: 1, src ofs: 0x3eb6b, dst obj: 3, dst ofs: 0x237fc
   3eb6f:	50                   	push   eax
   3eb70:	e8 6c 20 03 00       	call   sprintf_
   3eb75:	83 c4 08             	add    esp,0x8
   3eb78:	e9 ca fc ff ff       	jmp    update_mod_76_2_branch_112
update_mod_76_2_branch_140:
   3eb7d:	b8 7c a3 00 00       	mov    eax,@obj3:classes_cpp_variable_88                            ; fixup: num: 10878, src obj: 1, src ofs: 0x3eb7e, dst obj: 3, dst ofs: 0xa37c
   3eb82:	50                   	push   eax
   3eb83:	b8 fc 37 02 00       	mov    eax,@obj3:log_buffer                                         ; fixup: num: 10877, src obj: 1, src ofs: 0x3eb84, dst obj: 3, dst ofs: 0x237fc
   3eb88:	50                   	push   eax
   3eb89:	e8 53 20 03 00       	call   sprintf_
   3eb8e:	83 c4 08             	add    esp,0x8
   3eb91:	e9 b1 fc ff ff       	jmp    update_mod_76_2_branch_112
update_mod_76_2_branch_141:
   3eb96:	b8 b5 a3 00 00       	mov    eax,@obj3:classes_cpp_variable_90                            ; fixup: num: 10876, src obj: 1, src ofs: 0x3eb97, dst obj: 3, dst ofs: 0xa3b5
   3eb9b:	50                   	push   eax
   3eb9c:	b8 fc 37 02 00       	mov    eax,@obj3:log_buffer                                         ; fixup: num: 10875, src obj: 1, src ofs: 0x3eb9d, dst obj: 3, dst ofs: 0x237fc
   3eba1:	50                   	push   eax
   3eba2:	e8 3a 20 03 00       	call   sprintf_
   3eba7:	83 c4 08             	add    esp,0x8
   3ebaa:	e9 98 fc ff ff       	jmp    update_mod_76_2_branch_112
update_mod_76_2_branch_142:
   3ebaf:	b8 d5 a3 00 00       	mov    eax,@obj3:classes_cpp_variable_91                            ; fixup: num: 10874, src obj: 1, src ofs: 0x3ebb0, dst obj: 3, dst ofs: 0xa3d5
   3ebb4:	50                   	push   eax
   3ebb5:	b8 fc 37 02 00       	mov    eax,@obj3:log_buffer                                         ; fixup: num: 10873, src obj: 1, src ofs: 0x3ebb6, dst obj: 3, dst ofs: 0x237fc
   3ebba:	50                   	push   eax
   3ebbb:	e8 21 20 03 00       	call   sprintf_
   3ebc0:	83 c4 08             	add    esp,0x8
   3ebc3:	e9 7f fc ff ff       	jmp    update_mod_76_2_branch_112
update_mod_76_2_branch_143:
   3ebc8:	68 fb a3 00 00       	push   @obj3:classes_cpp_variable_92                                ; fixup: num: 10872, src obj: 1, src ofs: 0x3ebc9, dst obj: 3, dst ofs: 0xa3fb
   3ebcd:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 10871, src obj: 1, src ofs: 0x3ebce, dst obj: 3, dst ofs: 0x237fc
   3ebd2:	e8 0a 20 03 00       	call   sprintf_
   3ebd7:	83 c4 08             	add    esp,0x8
   3ebda:	e9 68 fc ff ff       	jmp    update_mod_76_2_branch_112
update_mod_76_2_branch_144:
   3ebdf:	68 21 a4 00 00       	push   @obj3:classes_cpp_variable_93                                ; fixup: num: 10870, src obj: 1, src ofs: 0x3ebe0, dst obj: 3, dst ofs: 0xa421
   3ebe4:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 10869, src obj: 1, src ofs: 0x3ebe5, dst obj: 3, dst ofs: 0x237fc
   3ebe9:	e8 f3 1f 03 00       	call   sprintf_
   3ebee:	83 c4 08             	add    esp,0x8
   3ebf1:	e9 51 fc ff ff       	jmp    update_mod_76_2_branch_112
update_mod_76_2_branch_145:
   3ebf6:	68 3e a4 00 00       	push   @obj3:classes_cpp_variable_94                                ; fixup: num: 10868, src obj: 1, src ofs: 0x3ebf7, dst obj: 3, dst ofs: 0xa43e
   3ebfb:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 10867, src obj: 1, src ofs: 0x3ebfc, dst obj: 3, dst ofs: 0x237fc
   3ec00:	e8 dc 1f 03 00       	call   sprintf_
   3ec05:	83 c4 08             	add    esp,0x8
   3ec08:	e9 3a fc ff ff       	jmp    update_mod_76_2_branch_112
update_mod_76_2_branch_146:
   3ec0d:	68 60 a4 00 00       	push   @obj3:classes_cpp_variable_95                                ; fixup: num: 10895, src obj: 1, src ofs: 0x3ec0e, dst obj: 3, dst ofs: 0xa460
   3ec12:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 10894, src obj: 1, src ofs: 0x3ec13, dst obj: 3, dst ofs: 0x237fc
   3ec17:	e8 c5 1f 03 00       	call   sprintf_
   3ec1c:	83 c4 08             	add    esp,0x8
   3ec1f:	e9 23 fc ff ff       	jmp    update_mod_76_2_branch_112
update_mod_76_2_branch_147:
   3ec24:	68 a0 a4 00 00       	push   @obj3:classes_cpp_variable_97                                ; fixup: num: 10893, src obj: 1, src ofs: 0x3ec25, dst obj: 3, dst ofs: 0xa4a0
   3ec29:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 10892, src obj: 1, src ofs: 0x3ec2a, dst obj: 3, dst ofs: 0x237fc
   3ec2e:	e8 ae 1f 03 00       	call   sprintf_
   3ec33:	83 c4 08             	add    esp,0x8
   3ec36:	e9 0c fc ff ff       	jmp    update_mod_76_2_branch_112
update_mod_76_2_branch_148:
   3ec3b:	68 c5 a4 00 00       	push   @obj3:classes_cpp_variable_98                                ; fixup: num: 10891, src obj: 1, src ofs: 0x3ec3c, dst obj: 3, dst ofs: 0xa4c5
   3ec40:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 10890, src obj: 1, src ofs: 0x3ec41, dst obj: 3, dst ofs: 0x237fc
   3ec45:	e8 97 1f 03 00       	call   sprintf_
   3ec4a:	83 c4 08             	add    esp,0x8
   3ec4d:	e9 f5 fb ff ff       	jmp    update_mod_76_2_branch_112
update_mod_76_2_branch_149:
   3ec52:	68 ea a4 00 00       	push   @obj3:classes_cpp_variable_99                                ; fixup: num: 10889, src obj: 1, src ofs: 0x3ec53, dst obj: 3, dst ofs: 0xa4ea
   3ec57:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 10888, src obj: 1, src ofs: 0x3ec58, dst obj: 3, dst ofs: 0x237fc
   3ec5c:	e8 80 1f 03 00       	call   sprintf_
   3ec61:	83 c4 08             	add    esp,0x8
   3ec64:	e9 de fb ff ff       	jmp    update_mod_76_2_branch_112
update_mod_76_2_branch_150:
   3ec69:	68 07 a5 00 00       	push   @obj3:classes_cpp_variable_100                               ; fixup: num: 10887, src obj: 1, src ofs: 0x3ec6a, dst obj: 3, dst ofs: 0xa507
   3ec6e:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 10886, src obj: 1, src ofs: 0x3ec6f, dst obj: 3, dst ofs: 0x237fc
   3ec73:	e8 69 1f 03 00       	call   sprintf_
   3ec78:	83 c4 08             	add    esp,0x8
   3ec7b:	e9 c7 fb ff ff       	jmp    update_mod_76_2_branch_112
update_mod_76_2_branch_151:
   3ec80:	68 53 a5 00 00       	push   @obj3:classes_cpp_variable_102                               ; fixup: num: 10885, src obj: 1, src ofs: 0x3ec81, dst obj: 3, dst ofs: 0xa553
   3ec85:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 10884, src obj: 1, src ofs: 0x3ec86, dst obj: 3, dst ofs: 0x237fc
   3ec8a:	e8 52 1f 03 00       	call   sprintf_
   3ec8f:	83 c4 08             	add    esp,0x8
   3ec92:	e9 b0 fb ff ff       	jmp    update_mod_76_2_branch_112
update_mod_76_2_branch_152:
   3ec97:	68 71 a5 00 00       	push   @obj3:classes_cpp_variable_103                               ; fixup: num: 10883, src obj: 1, src ofs: 0x3ec98, dst obj: 3, dst ofs: 0xa571
   3ec9c:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 10882, src obj: 1, src ofs: 0x3ec9d, dst obj: 3, dst ofs: 0x237fc
   3eca1:	e8 3b 1f 03 00       	call   sprintf_
   3eca6:	83 c4 08             	add    esp,0x8
   3eca9:	e9 99 fb ff ff       	jmp    update_mod_76_2_branch_112
update_mod_76_2_branch_153:
   3ecae:	68 b6 a5 00 00       	push   @obj3:classes_cpp_variable_105                               ; fixup: num: 10881, src obj: 1, src ofs: 0x3ecaf, dst obj: 3, dst ofs: 0xa5b6
   3ecb3:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 10904, src obj: 1, src ofs: 0x3ecb4, dst obj: 3, dst ofs: 0x237fc
   3ecb8:	e8 24 1f 03 00       	call   sprintf_
   3ecbd:	83 c4 08             	add    esp,0x8
   3ecc0:	e9 82 fb ff ff       	jmp    update_mod_76_2_branch_112
update_mod_76_2_branch_154:
   3ecc5:	3c 0f                	cmp    al,0xf
   3ecc7:	76 ce                	jbe    update_mod_76_2_branch_152
   3ecc9:	68 8f a5 00 00       	push   @obj3:classes_cpp_variable_104                               ; fixup: num: 10903, src obj: 1, src ofs: 0x3ecca, dst obj: 3, dst ofs: 0xa58f
   3ecce:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 10902, src obj: 1, src ofs: 0x3eccf, dst obj: 3, dst ofs: 0x237fc
   3ecd3:	e8 09 1f 03 00       	call   sprintf_
   3ecd8:	83 c4 08             	add    esp,0x8
   3ecdb:	e9 67 fb ff ff       	jmp    update_mod_76_2_branch_112
update_mod_76_2_branch_155:
   3ece0:	3c 0b                	cmp    al,0xb
   3ece2:	0f 82 53 ff ff ff    	jb     update_mod_76_2_branch_148
   3ece8:	0f 86 64 ff ff ff    	jbe    update_mod_76_2_branch_149
   3ecee:	3c 0c                	cmp    al,0xc
   3ecf0:	0f 86 73 ff ff ff    	jbe    update_mod_76_2_branch_150
   3ecf6:	68 2d a5 00 00       	push   @obj3:classes_cpp_variable_101                               ; fixup: num: 10901, src obj: 1, src ofs: 0x3ecf7, dst obj: 3, dst ofs: 0xa52d
   3ecfb:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 10900, src obj: 1, src ofs: 0x3ecfc, dst obj: 3, dst ofs: 0x237fc
   3ed00:	e8 dc 1e 03 00       	call   sprintf_
   3ed05:	83 c4 08             	add    esp,0x8
   3ed08:	e9 3a fb ff ff       	jmp    update_mod_76_2_branch_112
update_mod_76_2_branch_156:
   3ed0d:	3c 04                	cmp    al,0x4
   3ed0f:	72 33                	jb     update_mod_76_2_branch_157
   3ed11:	0f 86 7f fe ff ff    	jbe    update_mod_76_2_branch_141
   3ed17:	3c 06                	cmp    al,0x6
   3ed19:	0f 82 90 fe ff ff    	jb     update_mod_76_2_branch_142
   3ed1f:	0f 86 a3 fe ff ff    	jbe    update_mod_76_2_branch_143
   3ed25:	3c 07                	cmp    al,0x7
   3ed27:	0f 86 b2 fe ff ff    	jbe    update_mod_76_2_branch_144
   3ed2d:	68 83 a4 00 00       	push   @obj3:classes_cpp_variable_96                                ; fixup: num: 10899, src obj: 1, src ofs: 0x3ed2e, dst obj: 3, dst ofs: 0xa483
   3ed32:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 10898, src obj: 1, src ofs: 0x3ed33, dst obj: 3, dst ofs: 0x237fc
   3ed37:	e8 a5 1e 03 00       	call   sprintf_
   3ed3c:	83 c4 08             	add    esp,0x8
   3ed3f:	e9 03 fb ff ff       	jmp    update_mod_76_2_branch_112
update_mod_76_2_branch_157:
   3ed44:	3c 01                	cmp    al,0x1
   3ed46:	72 27                	jb     update_mod_76_2_branch_158
   3ed48:	0f 86 16 fe ff ff    	jbe    update_mod_76_2_branch_139
   3ed4e:	3c 02                	cmp    al,0x2
   3ed50:	0f 86 27 fe ff ff    	jbe    update_mod_76_2_branch_140
   3ed56:	b8 99 a3 00 00       	mov    eax,@obj3:classes_cpp_variable_89                            ; fixup: num: 10897, src obj: 1, src ofs: 0x3ed57, dst obj: 3, dst ofs: 0xa399
   3ed5b:	50                   	push   eax
   3ed5c:	b8 fc 37 02 00       	mov    eax,@obj3:log_buffer                                         ; fixup: num: 10896, src obj: 1, src ofs: 0x3ed5d, dst obj: 3, dst ofs: 0x237fc
   3ed61:	50                   	push   eax
   3ed62:	e8 7a 1e 03 00       	call   sprintf_
   3ed67:	83 c4 08             	add    esp,0x8
   3ed6a:	e9 d8 fa ff ff       	jmp    update_mod_76_2_branch_112
update_mod_76_2_branch_158:
   3ed6f:	84 c0                	test   al,al
   3ed71:	0f 84 d4 fd ff ff    	je     update_mod_76_2_branch_138
   3ed77:	e9 42 fb ff ff       	jmp    update_mod_76_2_branch_115
update_mod_76_2_reference_1:
   3ed7c:	c7 86 a4 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x10a4],0x0
   3ed86:	db 86 a4 10 00 00    	fild   DWORD PTR [esi+0x10a4]
   3ed8c:	d9 96 a8 10 00 00    	fst    DWORD PTR [esi+0x10a8]
   3ed92:	e8 b1 6f 03 00       	call   __CHP
   3ed97:	8a be 8d 11 00 00    	mov    bh,BYTE PTR [esi+0x118d]
   3ed9d:	db 9e a0 10 00 00    	fistp  DWORD PTR [esi+0x10a0]
   3eda3:	f6 c7 04             	test   bh,0x4
   3eda6:	0f 84 f1 01 00 00    	je     update_mod_76_2_reference_2
   3edac:	8a 8e a0 11 00 00    	mov    cl,BYTE PTR [esi+0x11a0]
   3edb2:	84 c9                	test   cl,cl
   3edb4:	0f 84 e3 01 00 00    	je     update_mod_76_2_reference_2
   3edba:	80 f9 04             	cmp    cl,0x4
   3edbd:	74 19                	je     update_mod_76_2_branch_159
   3edbf:	80 f9 06             	cmp    cl,0x6
   3edc2:	74 14                	je     update_mod_76_2_branch_159
   3edc4:	80 f9 10             	cmp    cl,0x10
   3edc7:	74 0f                	je     update_mod_76_2_branch_159
   3edc9:	80 f9 22             	cmp    cl,0x22
   3edcc:	74 0a                	je     update_mod_76_2_branch_159
   3edce:	80 f9 23             	cmp    cl,0x23
   3edd1:	74 05                	je     update_mod_76_2_branch_159
   3edd3:	80 f9 24             	cmp    cl,0x24
   3edd6:	75 2e                	jne    update_mod_76_2_branch_160
update_mod_76_2_branch_159:
   3edd8:	ba 3b 00 00 00       	mov    edx,0x3b
   3eddd:	89 f0                	mov    eax,esi
   3eddf:	c6 86 a0 11 00 00 00 	mov    BYTE PTR [esi+0x11a0],0x0
   3ede6:	e8 b5 da ff ff       	call   go_to_frame_mod_76
   3edeb:	c7 86 78 10 00 00 3b 00 00 00 	mov    DWORD PTR [esi+0x1078],0x3b
   3edf5:	8b 86 78 10 00 00    	mov    eax,DWORD PTR [esi+0x1078]
   3edfb:	89 86 6c 10 00 00    	mov    DWORD PTR [esi+0x106c],eax
   3ee01:	e9 97 01 00 00       	jmp    update_mod_76_2_reference_2
update_mod_76_2_branch_160:
   3ee06:	80 f9 01             	cmp    cl,0x1
   3ee09:	74 3c                	je     update_mod_76_2_branch_161
   3ee0b:	80 f9 07             	cmp    cl,0x7
   3ee0e:	74 37                	je     update_mod_76_2_branch_161
   3ee10:	80 f9 39             	cmp    cl,0x39
   3ee13:	74 32                	je     update_mod_76_2_branch_161
   3ee15:	80 f9 0f             	cmp    cl,0xf
   3ee18:	74 2d                	je     update_mod_76_2_branch_161
   3ee1a:	80 f9 16             	cmp    cl,0x16
   3ee1d:	74 28                	je     update_mod_76_2_branch_161
   3ee1f:	80 f9 17             	cmp    cl,0x17
   3ee22:	74 23                	je     update_mod_76_2_branch_161
   3ee24:	80 f9 18             	cmp    cl,0x18
   3ee27:	74 1e                	je     update_mod_76_2_branch_161
   3ee29:	80 f9 21             	cmp    cl,0x21
   3ee2c:	74 19                	je     update_mod_76_2_branch_161
   3ee2e:	80 f9 20             	cmp    cl,0x20
   3ee31:	74 14                	je     update_mod_76_2_branch_161
   3ee33:	80 f9 1f             	cmp    cl,0x1f
   3ee36:	74 0f                	je     update_mod_76_2_branch_161
   3ee38:	80 f9 0a             	cmp    cl,0xa
   3ee3b:	74 0a                	je     update_mod_76_2_branch_161
   3ee3d:	80 f9 05             	cmp    cl,0x5
   3ee40:	74 05                	je     update_mod_76_2_branch_161
   3ee42:	80 f9 09             	cmp    cl,0x9
   3ee45:	75 72                	jne    update_mod_76_2_branch_164
update_mod_76_2_branch_161:
   3ee47:	ba 0e 00 00 00       	mov    edx,0xe
   3ee4c:	c6 86 a0 11 00 00 06 	mov    BYTE PTR [esi+0x11a0],0x6
   3ee53:	89 f0                	mov    eax,esi
   3ee55:	c6 46 4c 01          	mov    BYTE PTR [esi+0x4c],0x1
   3ee59:	e8 42 da ff ff       	call   go_to_frame_mod_76
   3ee5e:	c7 86 6c 10 00 00 0e 00 00 00 	mov    DWORD PTR [esi+0x106c],0xe
   3ee68:	89 f1                	mov    ecx,esi
   3ee6a:	8b 9e 80 10 00 00    	mov    ebx,DWORD PTR [esi+0x1080]
   3ee70:	c7 86 78 10 00 00 0a 00 00 00 	mov    DWORD PTR [esi+0x1078],0xa
   3ee7a:	85 db                	test   ebx,ebx
   3ee7c:	74 14                	je     update_mod_76_2_branch_162
   3ee7e:	b8 64 00 00 00       	mov    eax,0x64
   3ee83:	89 c2                	mov    edx,eax
   3ee85:	c1 fa 1f             	sar    edx,0x1f
   3ee88:	f7 fb                	idiv   ebx
   3ee8a:	89 86 60 10 00 00    	mov    DWORD PTR [esi+0x1060],eax
   3ee90:	eb 06                	jmp    update_mod_76_2_branch_163
update_mod_76_2_branch_162:
   3ee92:	89 9e 60 10 00 00    	mov    DWORD PTR [esi+0x1060],ebx
update_mod_76_2_branch_163:
   3ee98:	3b 99 68 10 00 00    	cmp    ebx,DWORD PTR [ecx+0x1068]
   3ee9e:	0f 84 f9 00 00 00    	je     update_mod_76_2_reference_2
   3eea4:	c7 81 5c 10 00 00 00 00 00 00 	mov    DWORD PTR [ecx+0x105c],0x0
   3eeae:	89 99 68 10 00 00    	mov    DWORD PTR [ecx+0x1068],ebx
   3eeb4:	e9 e4 00 00 00       	jmp    update_mod_76_2_reference_2
update_mod_76_2_branch_164:
   3eeb9:	80 f9 02             	cmp    cl,0x2
   3eebc:	74 3c                	je     update_mod_76_2_branch_165
   3eebe:	80 f9 0e             	cmp    cl,0xe
   3eec1:	74 37                	je     update_mod_76_2_branch_165
   3eec3:	80 f9 3a             	cmp    cl,0x3a
   3eec6:	74 32                	je     update_mod_76_2_branch_165
   3eec8:	80 f9 08             	cmp    cl,0x8
   3eecb:	74 2d                	je     update_mod_76_2_branch_165
   3eecd:	80 f9 19             	cmp    cl,0x19
   3eed0:	74 28                	je     update_mod_76_2_branch_165
   3eed2:	80 f9 1a             	cmp    cl,0x1a
   3eed5:	74 23                	je     update_mod_76_2_branch_165
   3eed7:	80 f9 1b             	cmp    cl,0x1b
   3eeda:	74 1e                	je     update_mod_76_2_branch_165
   3eedc:	80 f9 1e             	cmp    cl,0x1e
   3eedf:	74 19                	je     update_mod_76_2_branch_165
   3eee1:	80 f9 1d             	cmp    cl,0x1d
   3eee4:	74 14                	je     update_mod_76_2_branch_165
   3eee6:	80 f9 1c             	cmp    cl,0x1c
   3eee9:	74 0f                	je     update_mod_76_2_branch_165
   3eeeb:	80 f9 0c             	cmp    cl,0xc
   3eeee:	74 0a                	je     update_mod_76_2_branch_165
   3eef0:	80 f9 11             	cmp    cl,0x11
   3eef3:	74 05                	je     update_mod_76_2_branch_165
   3eef5:	80 f9 0d             	cmp    cl,0xd
   3eef8:	75 6e                	jne    update_mod_76_2_branch_168
update_mod_76_2_branch_165:
   3eefa:	ba 37 00 00 00       	mov    edx,0x37
   3eeff:	89 f0                	mov    eax,esi
   3ef01:	c6 86 a0 11 00 00 10 	mov    BYTE PTR [esi+0x11a0],0x10
   3ef08:	e8 93 d9 ff ff       	call   go_to_frame_mod_76
   3ef0d:	c7 86 6c 10 00 00 3b 00 00 00 	mov    DWORD PTR [esi+0x106c],0x3b
   3ef17:	89 f1                	mov    ecx,esi
   3ef19:	8b 9e 80 10 00 00    	mov    ebx,DWORD PTR [esi+0x1080]
   3ef1f:	c7 86 78 10 00 00 37 00 00 00 	mov    DWORD PTR [esi+0x1078],0x37
   3ef29:	85 db                	test   ebx,ebx
   3ef2b:	74 14                	je     update_mod_76_2_branch_166
   3ef2d:	b8 64 00 00 00       	mov    eax,0x64
   3ef32:	89 c2                	mov    edx,eax
   3ef34:	c1 fa 1f             	sar    edx,0x1f
   3ef37:	f7 fb                	idiv   ebx
   3ef39:	89 86 60 10 00 00    	mov    DWORD PTR [esi+0x1060],eax
   3ef3f:	eb 06                	jmp    update_mod_76_2_branch_167
update_mod_76_2_branch_166:
   3ef41:	89 9e 60 10 00 00    	mov    DWORD PTR [esi+0x1060],ebx
update_mod_76_2_branch_167:
   3ef47:	3b 99 68 10 00 00    	cmp    ebx,DWORD PTR [ecx+0x1068]
   3ef4d:	0f 84 4a 00 00 00    	je     update_mod_76_2_reference_2
   3ef53:	c7 81 5c 10 00 00 00 00 00 00 	mov    DWORD PTR [ecx+0x105c],0x0
   3ef5d:	89 99 68 10 00 00    	mov    DWORD PTR [ecx+0x1068],ebx
   3ef63:	e9 35 00 00 00       	jmp    update_mod_76_2_reference_2
update_mod_76_2_branch_168:
   3ef68:	80 f9 03             	cmp    cl,0x3
   3ef6b:	74 09                	je     update_mod_76_2_branch_169
   3ef6d:	80 f9 0b             	cmp    cl,0xb
   3ef70:	0f 85 27 00 00 00    	jne    update_mod_76_2_reference_2
update_mod_76_2_branch_169:
   3ef76:	ba 28 00 00 00       	mov    edx,0x28
   3ef7b:	89 f0                	mov    eax,esi
   3ef7d:	c6 86 a0 11 00 00 0c 	mov    BYTE PTR [esi+0x11a0],0xc
   3ef84:	e8 17 d9 ff ff       	call   go_to_frame_mod_76
   3ef89:	c7 86 6c 10 00 00 28 00 00 00 	mov    DWORD PTR [esi+0x106c],0x28
   3ef93:	c7 86 78 10 00 00 2c 00 00 00 	mov    DWORD PTR [esi+0x1078],0x2c
update_mod_76_2_reference_2:
   3ef9d:	8b 96 9c 10 00 00    	mov    edx,DWORD PTR [esi+0x109c]
   3efa3:	85 d2                	test   edx,edx
   3efa5:	75 18                	jne    update_mod_76_2_branch_170
   3efa7:	89 96 90 10 00 00    	mov    DWORD PTR [esi+0x1090],edx
   3efad:	89 96 8c 10 00 00    	mov    DWORD PTR [esi+0x108c],edx
   3efb3:	89 96 98 10 00 00    	mov    DWORD PTR [esi+0x1098],edx
   3efb9:	89 96 94 10 00 00    	mov    DWORD PTR [esi+0x1094],edx
update_mod_76_2_branch_170:
   3efbf:	80 be a0 11 00 00 38 	cmp    BYTE PTR [esi+0x11a0],0x38
   3efc6:	74 07                	je     update_mod_76_2_branch_172
update_mod_76_2_branch_171:
   3efc8:	89 f0                	mov    eax,esi
   3efca:	e8 11 db ff ff       	call   update_mod_76
update_mod_76_2_branch_172:
   3efcf:	b0 01                	mov    al,0x1
   3efd1:	83 c4 40             	add    esp,0x40
   3efd4:	5d                   	pop    ebp
   3efd5:	5f                   	pop    edi
   3efd6:	5e                   	pop    esi
   3efd7:	5a                   	pop    edx
   3efd8:	59                   	pop    ecx
   3efd9:	5b                   	pop    ebx
   3efda:	c3                   	ret    
update_mod_76_2_reference_3:
   3efdb:	c7 86 a4 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x10a4],0x0
   3efe5:	db 86 a4 10 00 00    	fild   DWORD PTR [esi+0x10a4]
   3efeb:	d9 96 a8 10 00 00    	fst    DWORD PTR [esi+0x10a8]
   3eff1:	e8 52 6d 03 00       	call   __CHP
   3eff6:	8a a6 8d 11 00 00    	mov    ah,BYTE PTR [esi+0x118d]
   3effc:	db 9e a0 10 00 00    	fistp  DWORD PTR [esi+0x10a0]
   3f002:	f6 c4 02             	test   ah,0x2
   3f005:	74 96                	je     update_mod_76_2_reference_2
   3f007:	8a 96 a0 11 00 00    	mov    dl,BYTE PTR [esi+0x11a0]
   3f00d:	80 fa 03             	cmp    dl,0x3
   3f010:	74 8b                	je     update_mod_76_2_reference_2
   3f012:	80 fa 09             	cmp    dl,0x9
   3f015:	74 19                	je     update_mod_76_2_branch_173
   3f017:	80 fa 0d             	cmp    dl,0xd
   3f01a:	74 14                	je     update_mod_76_2_branch_173
   3f01c:	80 fa 0b             	cmp    dl,0xb
   3f01f:	74 0f                	je     update_mod_76_2_branch_173
   3f021:	80 fa 25             	cmp    dl,0x25
   3f024:	74 0a                	je     update_mod_76_2_branch_173
   3f026:	80 fa 26             	cmp    dl,0x26
   3f029:	74 05                	je     update_mod_76_2_branch_173
   3f02b:	80 fa 27             	cmp    dl,0x27
   3f02e:	75 2e                	jne    update_mod_76_2_branch_174
update_mod_76_2_branch_173:
   3f030:	ba 28 00 00 00       	mov    edx,0x28
   3f035:	89 f0                	mov    eax,esi
   3f037:	c6 86 a0 11 00 00 03 	mov    BYTE PTR [esi+0x11a0],0x3
   3f03e:	e8 5d d8 ff ff       	call   go_to_frame_mod_76
   3f043:	c7 86 78 10 00 00 28 00 00 00 	mov    DWORD PTR [esi+0x1078],0x28
   3f04d:	8b 86 78 10 00 00    	mov    eax,DWORD PTR [esi+0x1078]
   3f053:	89 86 6c 10 00 00    	mov    DWORD PTR [esi+0x106c],eax
   3f059:	e9 3f ff ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_branch_174:
   3f05e:	80 fa 01             	cmp    dl,0x1
   3f061:	74 3c                	je     update_mod_76_2_branch_175
   3f063:	80 fa 07             	cmp    dl,0x7
   3f066:	74 37                	je     update_mod_76_2_branch_175
   3f068:	80 fa 39             	cmp    dl,0x39
   3f06b:	74 32                	je     update_mod_76_2_branch_175
   3f06d:	80 fa 0f             	cmp    dl,0xf
   3f070:	74 2d                	je     update_mod_76_2_branch_175
   3f072:	80 fa 16             	cmp    dl,0x16
   3f075:	74 28                	je     update_mod_76_2_branch_175
   3f077:	80 fa 17             	cmp    dl,0x17
   3f07a:	74 23                	je     update_mod_76_2_branch_175
   3f07c:	80 fa 18             	cmp    dl,0x18
   3f07f:	74 1e                	je     update_mod_76_2_branch_175
   3f081:	80 fa 21             	cmp    dl,0x21
   3f084:	74 19                	je     update_mod_76_2_branch_175
   3f086:	80 fa 20             	cmp    dl,0x20
   3f089:	74 14                	je     update_mod_76_2_branch_175
   3f08b:	80 fa 1f             	cmp    dl,0x1f
   3f08e:	74 0f                	je     update_mod_76_2_branch_175
   3f090:	80 fa 05             	cmp    dl,0x5
   3f093:	74 0a                	je     update_mod_76_2_branch_175
   3f095:	80 fa 0a             	cmp    dl,0xa
   3f098:	74 05                	je     update_mod_76_2_branch_175
   3f09a:	80 fa 06             	cmp    dl,0x6
   3f09d:	75 2c                	jne    update_mod_76_2_branch_176
update_mod_76_2_branch_175:
   3f09f:	ba 19 00 00 00       	mov    edx,0x19
   3f0a4:	89 f0                	mov    eax,esi
   3f0a6:	c6 86 a0 11 00 00 09 	mov    BYTE PTR [esi+0x11a0],0x9
   3f0ad:	e8 ee d7 ff ff       	call   go_to_frame_mod_76
   3f0b2:	c7 86 6c 10 00 00 1d 00 00 00 	mov    DWORD PTR [esi+0x106c],0x1d
   3f0bc:	c7 86 78 10 00 00 19 00 00 00 	mov    DWORD PTR [esi+0x1078],0x19
   3f0c6:	e9 d2 fe ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_branch_176:
   3f0cb:	80 fa 02             	cmp    dl,0x2
   3f0ce:	74 3c                	je     update_mod_76_2_branch_177
   3f0d0:	80 fa 0e             	cmp    dl,0xe
   3f0d3:	74 37                	je     update_mod_76_2_branch_177
   3f0d5:	80 fa 3a             	cmp    dl,0x3a
   3f0d8:	74 32                	je     update_mod_76_2_branch_177
   3f0da:	80 fa 08             	cmp    dl,0x8
   3f0dd:	74 2d                	je     update_mod_76_2_branch_177
   3f0df:	80 fa 19             	cmp    dl,0x19
   3f0e2:	74 28                	je     update_mod_76_2_branch_177
   3f0e4:	80 fa 1a             	cmp    dl,0x1a
   3f0e7:	74 23                	je     update_mod_76_2_branch_177
   3f0e9:	80 fa 1b             	cmp    dl,0x1b
   3f0ec:	74 1e                	je     update_mod_76_2_branch_177
   3f0ee:	80 fa 1e             	cmp    dl,0x1e
   3f0f1:	74 19                	je     update_mod_76_2_branch_177
   3f0f3:	80 fa 1d             	cmp    dl,0x1d
   3f0f6:	74 14                	je     update_mod_76_2_branch_177
   3f0f8:	80 fa 1c             	cmp    dl,0x1c
   3f0fb:	74 0f                	je     update_mod_76_2_branch_177
   3f0fd:	80 fa 11             	cmp    dl,0x11
   3f100:	74 0a                	je     update_mod_76_2_branch_177
   3f102:	80 fa 0c             	cmp    dl,0xc
   3f105:	74 05                	je     update_mod_76_2_branch_177
   3f107:	80 fa 10             	cmp    dl,0x10
   3f10a:	75 30                	jne    update_mod_76_2_branch_178
update_mod_76_2_branch_177:
   3f10c:	ba 2c 00 00 00       	mov    edx,0x2c
   3f111:	c6 86 a0 11 00 00 0d 	mov    BYTE PTR [esi+0x11a0],0xd
   3f118:	89 f0                	mov    eax,esi
   3f11a:	c6 46 4c 01          	mov    BYTE PTR [esi+0x4c],0x1
   3f11e:	e8 7d d7 ff ff       	call   go_to_frame_mod_76
   3f123:	c7 86 6c 10 00 00 2c 00 00 00 	mov    DWORD PTR [esi+0x106c],0x2c
   3f12d:	c7 86 78 10 00 00 28 00 00 00 	mov    DWORD PTR [esi+0x1078],0x28
   3f137:	e9 61 fe ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_branch_178:
   3f13c:	84 d2                	test   dl,dl
   3f13e:	74 09                	je     update_mod_76_2_branch_179
   3f140:	80 fa 04             	cmp    dl,0x4
   3f143:	0f 85 54 fe ff ff    	jne    update_mod_76_2_reference_2
update_mod_76_2_branch_179:
   3f149:	ba 3b 00 00 00       	mov    edx,0x3b
   3f14e:	c6 86 a0 11 00 00 11 	mov    BYTE PTR [esi+0x11a0],0x11
   3f155:	89 f0                	mov    eax,esi
   3f157:	c6 46 4c 01          	mov    BYTE PTR [esi+0x4c],0x1
   3f15b:	e8 40 d7 ff ff       	call   go_to_frame_mod_76
   3f160:	c7 86 6c 10 00 00 3b 00 00 00 	mov    DWORD PTR [esi+0x106c],0x3b
   3f16a:	c7 86 78 10 00 00 37 00 00 00 	mov    DWORD PTR [esi+0x1078],0x37
   3f174:	e9 24 fe ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_reference_4:
   3f179:	c7 86 a4 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x10a4],0x0
   3f183:	db 86 a4 10 00 00    	fild   DWORD PTR [esi+0x10a4]
   3f189:	d9 96 a8 10 00 00    	fst    DWORD PTR [esi+0x10a8]
   3f18f:	e8 b4 6b 03 00       	call   __CHP
   3f194:	8a be 8c 11 00 00    	mov    bh,BYTE PTR [esi+0x118c]
   3f19a:	db 9e a0 10 00 00    	fistp  DWORD PTR [esi+0x10a0]
   3f1a0:	f6 c7 80             	test   bh,0x80
   3f1a3:	0f 84 f4 fd ff ff    	je     update_mod_76_2_reference_2
   3f1a9:	8a 8e a0 11 00 00    	mov    cl,BYTE PTR [esi+0x11a0]
   3f1af:	80 f9 01             	cmp    cl,0x1
   3f1b2:	0f 84 e5 fd ff ff    	je     update_mod_76_2_reference_2
   3f1b8:	80 f9 05             	cmp    cl,0x5
   3f1bb:	74 3c                	je     update_mod_76_2_branch_180
   3f1bd:	80 f9 0a             	cmp    cl,0xa
   3f1c0:	74 37                	je     update_mod_76_2_branch_180
   3f1c2:	80 f9 13             	cmp    cl,0x13
   3f1c5:	74 32                	je     update_mod_76_2_branch_180
   3f1c7:	80 f9 15             	cmp    cl,0x15
   3f1ca:	74 2d                	je     update_mod_76_2_branch_180
   3f1cc:	80 f9 07             	cmp    cl,0x7
   3f1cf:	74 28                	je     update_mod_76_2_branch_180
   3f1d1:	80 f9 39             	cmp    cl,0x39
   3f1d4:	74 23                	je     update_mod_76_2_branch_180
   3f1d6:	80 f9 0f             	cmp    cl,0xf
   3f1d9:	74 1e                	je     update_mod_76_2_branch_180
   3f1db:	80 f9 21             	cmp    cl,0x21
   3f1de:	74 19                	je     update_mod_76_2_branch_180
   3f1e0:	80 f9 20             	cmp    cl,0x20
   3f1e3:	74 14                	je     update_mod_76_2_branch_180
   3f1e5:	80 f9 1f             	cmp    cl,0x1f
   3f1e8:	74 0f                	je     update_mod_76_2_branch_180
   3f1ea:	80 f9 16             	cmp    cl,0x16
   3f1ed:	74 0a                	je     update_mod_76_2_branch_180
   3f1ef:	80 f9 17             	cmp    cl,0x17
   3f1f2:	74 05                	je     update_mod_76_2_branch_180
   3f1f4:	80 f9 18             	cmp    cl,0x18
   3f1f7:	75 2e                	jne    update_mod_76_2_branch_181
update_mod_76_2_branch_180:
   3f1f9:	ba 0e 00 00 00       	mov    edx,0xe
   3f1fe:	89 f0                	mov    eax,esi
   3f200:	c6 86 a0 11 00 00 01 	mov    BYTE PTR [esi+0x11a0],0x1
   3f207:	e8 94 d6 ff ff       	call   go_to_frame_mod_76
   3f20c:	c7 86 78 10 00 00 0e 00 00 00 	mov    DWORD PTR [esi+0x1078],0xe
   3f216:	8b 86 78 10 00 00    	mov    eax,DWORD PTR [esi+0x1078]
   3f21c:	89 86 6c 10 00 00    	mov    DWORD PTR [esi+0x106c],eax
   3f222:	e9 76 fd ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_branch_181:
   3f227:	80 f9 03             	cmp    cl,0x3
   3f22a:	74 0a                	je     update_mod_76_2_branch_182
   3f22c:	80 f9 0b             	cmp    cl,0xb
   3f22f:	74 05                	je     update_mod_76_2_branch_182
   3f231:	80 f9 09             	cmp    cl,0x9
   3f234:	75 72                	jne    update_mod_76_2_branch_185
update_mod_76_2_branch_182:
   3f236:	ba 1d 00 00 00       	mov    edx,0x1d
   3f23b:	c6 86 a0 11 00 00 0a 	mov    BYTE PTR [esi+0x11a0],0xa
   3f242:	89 f0                	mov    eax,esi
   3f244:	c6 46 4c 01          	mov    BYTE PTR [esi+0x4c],0x1
   3f248:	e8 53 d6 ff ff       	call   go_to_frame_mod_76
   3f24d:	c7 86 6c 10 00 00 1d 00 00 00 	mov    DWORD PTR [esi+0x106c],0x1d
   3f257:	89 f1                	mov    ecx,esi
   3f259:	8b 9e 80 10 00 00    	mov    ebx,DWORD PTR [esi+0x1080]
   3f25f:	c7 86 78 10 00 00 19 00 00 00 	mov    DWORD PTR [esi+0x1078],0x19
   3f269:	85 db                	test   ebx,ebx
   3f26b:	74 14                	je     update_mod_76_2_branch_183
   3f26d:	b8 64 00 00 00       	mov    eax,0x64
   3f272:	89 c2                	mov    edx,eax
   3f274:	c1 fa 1f             	sar    edx,0x1f
   3f277:	f7 fb                	idiv   ebx
   3f279:	89 86 60 10 00 00    	mov    DWORD PTR [esi+0x1060],eax
   3f27f:	eb 06                	jmp    update_mod_76_2_branch_184
update_mod_76_2_branch_183:
   3f281:	89 9e 60 10 00 00    	mov    DWORD PTR [esi+0x1060],ebx
update_mod_76_2_branch_184:
   3f287:	3b 99 68 10 00 00    	cmp    ebx,DWORD PTR [ecx+0x1068]
   3f28d:	0f 84 0a fd ff ff    	je     update_mod_76_2_reference_2
   3f293:	c7 81 5c 10 00 00 00 00 00 00 	mov    DWORD PTR [ecx+0x105c],0x0
   3f29d:	89 99 68 10 00 00    	mov    DWORD PTR [ecx+0x1068],ebx
   3f2a3:	e9 f5 fc ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_branch_185:
   3f2a8:	84 c9                	test   cl,cl
   3f2aa:	74 0f                	je     update_mod_76_2_branch_186
   3f2ac:	80 f9 04             	cmp    cl,0x4
   3f2af:	74 0a                	je     update_mod_76_2_branch_186
   3f2b1:	80 f9 10             	cmp    cl,0x10
   3f2b4:	74 05                	je     update_mod_76_2_branch_186
   3f2b6:	80 f9 06             	cmp    cl,0x6
   3f2b9:	75 6e                	jne    update_mod_76_2_branch_189
update_mod_76_2_branch_186:
   3f2bb:	ba 0a 00 00 00       	mov    edx,0xa
   3f2c0:	89 f0                	mov    eax,esi
   3f2c2:	c6 86 a0 11 00 00 05 	mov    BYTE PTR [esi+0x11a0],0x5
   3f2c9:	e8 d2 d5 ff ff       	call   go_to_frame_mod_76
   3f2ce:	c7 86 6c 10 00 00 0e 00 00 00 	mov    DWORD PTR [esi+0x106c],0xe
   3f2d8:	89 f1                	mov    ecx,esi
   3f2da:	8b 9e 80 10 00 00    	mov    ebx,DWORD PTR [esi+0x1080]
   3f2e0:	c7 86 78 10 00 00 0a 00 00 00 	mov    DWORD PTR [esi+0x1078],0xa
   3f2ea:	85 db                	test   ebx,ebx
   3f2ec:	74 14                	je     update_mod_76_2_branch_187
   3f2ee:	b8 64 00 00 00       	mov    eax,0x64
   3f2f3:	89 c2                	mov    edx,eax
   3f2f5:	c1 fa 1f             	sar    edx,0x1f
   3f2f8:	f7 fb                	idiv   ebx
   3f2fa:	89 86 60 10 00 00    	mov    DWORD PTR [esi+0x1060],eax
   3f300:	eb 06                	jmp    update_mod_76_2_branch_188
update_mod_76_2_branch_187:
   3f302:	89 9e 60 10 00 00    	mov    DWORD PTR [esi+0x1060],ebx
update_mod_76_2_branch_188:
   3f308:	3b 99 68 10 00 00    	cmp    ebx,DWORD PTR [ecx+0x1068]
   3f30e:	0f 84 89 fc ff ff    	je     update_mod_76_2_reference_2
   3f314:	c7 81 5c 10 00 00 00 00 00 00 	mov    DWORD PTR [ecx+0x105c],0x0
   3f31e:	89 99 68 10 00 00    	mov    DWORD PTR [ecx+0x1068],ebx
   3f324:	e9 74 fc ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_branch_189:
   3f329:	80 f9 02             	cmp    cl,0x2
   3f32c:	74 31                	je     update_mod_76_2_branch_190
   3f32e:	80 f9 0e             	cmp    cl,0xe
   3f331:	74 2c                	je     update_mod_76_2_branch_190
   3f333:	80 f9 3a             	cmp    cl,0x3a
   3f336:	74 27                	je     update_mod_76_2_branch_190
   3f338:	80 f9 08             	cmp    cl,0x8
   3f33b:	74 22                	je     update_mod_76_2_branch_190
   3f33d:	80 f9 1e             	cmp    cl,0x1e
   3f340:	74 1d                	je     update_mod_76_2_branch_190
   3f342:	80 f9 1d             	cmp    cl,0x1d
   3f345:	74 18                	je     update_mod_76_2_branch_190
   3f347:	80 f9 1c             	cmp    cl,0x1c
   3f34a:	74 13                	je     update_mod_76_2_branch_190
   3f34c:	80 f9 19             	cmp    cl,0x19
   3f34f:	74 0e                	je     update_mod_76_2_branch_190
   3f351:	80 f9 1a             	cmp    cl,0x1a
   3f354:	74 09                	je     update_mod_76_2_branch_190
   3f356:	80 f9 1b             	cmp    cl,0x1b
   3f359:	0f 85 3e fc ff ff    	jne    update_mod_76_2_reference_2
update_mod_76_2_branch_190:
   3f35f:	ba 37 00 00 00       	mov    edx,0x37
   3f364:	89 f0                	mov    eax,esi
   3f366:	c6 86 a0 11 00 00 10 	mov    BYTE PTR [esi+0x11a0],0x10
   3f36d:	e8 2e d5 ff ff       	call   go_to_frame_mod_76
   3f372:	c7 86 6c 10 00 00 3b 00 00 00 	mov    DWORD PTR [esi+0x106c],0x3b
   3f37c:	89 f1                	mov    ecx,esi
   3f37e:	8b 9e 80 10 00 00    	mov    ebx,DWORD PTR [esi+0x1080]
   3f384:	c7 86 78 10 00 00 37 00 00 00 	mov    DWORD PTR [esi+0x1078],0x37
   3f38e:	85 db                	test   ebx,ebx
   3f390:	74 14                	je     update_mod_76_2_branch_191
   3f392:	b8 64 00 00 00       	mov    eax,0x64
   3f397:	89 c2                	mov    edx,eax
   3f399:	c1 fa 1f             	sar    edx,0x1f
   3f39c:	f7 fb                	idiv   ebx
   3f39e:	89 86 60 10 00 00    	mov    DWORD PTR [esi+0x1060],eax
   3f3a4:	eb 06                	jmp    update_mod_76_2_branch_192
update_mod_76_2_branch_191:
   3f3a6:	89 9e 60 10 00 00    	mov    DWORD PTR [esi+0x1060],ebx
update_mod_76_2_branch_192:
   3f3ac:	3b 99 68 10 00 00    	cmp    ebx,DWORD PTR [ecx+0x1068]
   3f3b2:	0f 84 e5 fb ff ff    	je     update_mod_76_2_reference_2
   3f3b8:	c7 81 5c 10 00 00 00 00 00 00 	mov    DWORD PTR [ecx+0x105c],0x0
   3f3c2:	89 99 68 10 00 00    	mov    DWORD PTR [ecx+0x1068],ebx
   3f3c8:	e9 d0 fb ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_reference_5:
   3f3cd:	c7 86 a4 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x10a4],0x0
   3f3d7:	db 86 a4 10 00 00    	fild   DWORD PTR [esi+0x10a4]
   3f3dd:	d9 96 a8 10 00 00    	fst    DWORD PTR [esi+0x10a8]
   3f3e3:	e8 60 69 03 00       	call   __CHP
   3f3e8:	8a be 8d 11 00 00    	mov    bh,BYTE PTR [esi+0x118d]
   3f3ee:	db 9e a0 10 00 00    	fistp  DWORD PTR [esi+0x10a0]
   3f3f4:	f6 c7 02             	test   bh,0x2
   3f3f7:	0f 84 a0 fb ff ff    	je     update_mod_76_2_reference_2
   3f3fd:	8a 8e a0 11 00 00    	mov    cl,BYTE PTR [esi+0x11a0]
   3f403:	80 f9 02             	cmp    cl,0x2
   3f406:	0f 84 91 fb ff ff    	je     update_mod_76_2_reference_2
   3f40c:	80 f9 0c             	cmp    cl,0xc
   3f40f:	74 3c                	je     update_mod_76_2_branch_193
   3f411:	80 f9 11             	cmp    cl,0x11
   3f414:	74 37                	je     update_mod_76_2_branch_193
   3f416:	80 f9 12             	cmp    cl,0x12
   3f419:	74 32                	je     update_mod_76_2_branch_193
   3f41b:	80 f9 14             	cmp    cl,0x14
   3f41e:	74 2d                	je     update_mod_76_2_branch_193
   3f420:	80 f9 0e             	cmp    cl,0xe
   3f423:	74 28                	je     update_mod_76_2_branch_193
   3f425:	80 f9 3a             	cmp    cl,0x3a
   3f428:	74 23                	je     update_mod_76_2_branch_193
   3f42a:	80 f9 08             	cmp    cl,0x8
   3f42d:	74 1e                	je     update_mod_76_2_branch_193
   3f42f:	80 f9 1e             	cmp    cl,0x1e
   3f432:	74 19                	je     update_mod_76_2_branch_193
   3f434:	80 f9 1d             	cmp    cl,0x1d
   3f437:	74 14                	je     update_mod_76_2_branch_193
   3f439:	80 f9 1c             	cmp    cl,0x1c
   3f43c:	74 0f                	je     update_mod_76_2_branch_193
   3f43e:	80 f9 19             	cmp    cl,0x19
   3f441:	74 0a                	je     update_mod_76_2_branch_193
   3f443:	80 f9 1a             	cmp    cl,0x1a
   3f446:	74 05                	je     update_mod_76_2_branch_193
   3f448:	80 f9 1b             	cmp    cl,0x1b
   3f44b:	75 2e                	jne    update_mod_76_2_branch_194
update_mod_76_2_branch_193:
   3f44d:	ba 2c 00 00 00       	mov    edx,0x2c
   3f452:	89 f0                	mov    eax,esi
   3f454:	c6 86 a0 11 00 00 02 	mov    BYTE PTR [esi+0x11a0],0x2
   3f45b:	e8 40 d4 ff ff       	call   go_to_frame_mod_76
   3f460:	c7 86 78 10 00 00 2c 00 00 00 	mov    DWORD PTR [esi+0x1078],0x2c
   3f46a:	8b 86 78 10 00 00    	mov    eax,DWORD PTR [esi+0x1078]
   3f470:	89 86 6c 10 00 00    	mov    DWORD PTR [esi+0x106c],eax
   3f476:	e9 22 fb ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_branch_194:
   3f47b:	80 f9 03             	cmp    cl,0x3
   3f47e:	74 0a                	je     update_mod_76_2_branch_195
   3f480:	80 f9 0b             	cmp    cl,0xb
   3f483:	74 05                	je     update_mod_76_2_branch_195
   3f485:	80 f9 0d             	cmp    cl,0xd
   3f488:	75 6e                	jne    update_mod_76_2_branch_198
update_mod_76_2_branch_195:
   3f48a:	ba 28 00 00 00       	mov    edx,0x28
   3f48f:	89 f0                	mov    eax,esi
   3f491:	c6 86 a0 11 00 00 0c 	mov    BYTE PTR [esi+0x11a0],0xc
   3f498:	e8 03 d4 ff ff       	call   go_to_frame_mod_76
   3f49d:	c7 86 6c 10 00 00 2c 00 00 00 	mov    DWORD PTR [esi+0x106c],0x2c
   3f4a7:	89 f1                	mov    ecx,esi
   3f4a9:	8b 9e 80 10 00 00    	mov    ebx,DWORD PTR [esi+0x1080]
   3f4af:	c7 86 78 10 00 00 28 00 00 00 	mov    DWORD PTR [esi+0x1078],0x28
   3f4b9:	85 db                	test   ebx,ebx
   3f4bb:	74 14                	je     update_mod_76_2_branch_196
   3f4bd:	b8 64 00 00 00       	mov    eax,0x64
   3f4c2:	89 c2                	mov    edx,eax
   3f4c4:	c1 fa 1f             	sar    edx,0x1f
   3f4c7:	f7 fb                	idiv   ebx
   3f4c9:	89 86 60 10 00 00    	mov    DWORD PTR [esi+0x1060],eax
   3f4cf:	eb 06                	jmp    update_mod_76_2_branch_197
update_mod_76_2_branch_196:
   3f4d1:	89 9e 60 10 00 00    	mov    DWORD PTR [esi+0x1060],ebx
update_mod_76_2_branch_197:
   3f4d7:	3b 99 68 10 00 00    	cmp    ebx,DWORD PTR [ecx+0x1068]
   3f4dd:	0f 84 ba fa ff ff    	je     update_mod_76_2_reference_2
   3f4e3:	c7 81 5c 10 00 00 00 00 00 00 	mov    DWORD PTR [ecx+0x105c],0x0
   3f4ed:	89 99 68 10 00 00    	mov    DWORD PTR [ecx+0x1068],ebx
   3f4f3:	e9 a5 fa ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_branch_198:
   3f4f8:	84 c9                	test   cl,cl
   3f4fa:	74 0f                	je     update_mod_76_2_branch_199
   3f4fc:	80 f9 04             	cmp    cl,0x4
   3f4ff:	74 0a                	je     update_mod_76_2_branch_199
   3f501:	80 f9 10             	cmp    cl,0x10
   3f504:	74 05                	je     update_mod_76_2_branch_199
   3f506:	80 f9 06             	cmp    cl,0x6
   3f509:	75 30                	jne    update_mod_76_2_branch_200
update_mod_76_2_branch_199:
   3f50b:	ba 3b 00 00 00       	mov    edx,0x3b
   3f510:	c6 86 a0 11 00 00 11 	mov    BYTE PTR [esi+0x11a0],0x11
   3f517:	89 f0                	mov    eax,esi
   3f519:	c6 46 4c 01          	mov    BYTE PTR [esi+0x4c],0x1
   3f51d:	e8 7e d3 ff ff       	call   go_to_frame_mod_76
   3f522:	c7 86 6c 10 00 00 3b 00 00 00 	mov    DWORD PTR [esi+0x106c],0x3b
   3f52c:	c7 86 78 10 00 00 37 00 00 00 	mov    DWORD PTR [esi+0x1078],0x37
   3f536:	e9 62 fa ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_branch_200:
   3f53b:	80 f9 01             	cmp    cl,0x1
   3f53e:	74 31                	je     update_mod_76_2_branch_201
   3f540:	80 f9 07             	cmp    cl,0x7
   3f543:	74 2c                	je     update_mod_76_2_branch_201
   3f545:	80 f9 39             	cmp    cl,0x39
   3f548:	74 27                	je     update_mod_76_2_branch_201
   3f54a:	80 f9 0f             	cmp    cl,0xf
   3f54d:	74 22                	je     update_mod_76_2_branch_201
   3f54f:	80 f9 21             	cmp    cl,0x21
   3f552:	74 1d                	je     update_mod_76_2_branch_201
   3f554:	80 f9 20             	cmp    cl,0x20
   3f557:	74 18                	je     update_mod_76_2_branch_201
   3f559:	80 f9 1f             	cmp    cl,0x1f
   3f55c:	74 13                	je     update_mod_76_2_branch_201
   3f55e:	80 f9 16             	cmp    cl,0x16
   3f561:	74 0e                	je     update_mod_76_2_branch_201
   3f563:	80 f9 17             	cmp    cl,0x17
   3f566:	74 09                	je     update_mod_76_2_branch_201
   3f568:	80 f9 18             	cmp    cl,0x18
   3f56b:	0f 85 2c fa ff ff    	jne    update_mod_76_2_reference_2
update_mod_76_2_branch_201:
   3f571:	ba 0e 00 00 00       	mov    edx,0xe
   3f576:	c6 86 a0 11 00 00 06 	mov    BYTE PTR [esi+0x11a0],0x6
   3f57d:	89 f0                	mov    eax,esi
   3f57f:	c6 46 4c 01          	mov    BYTE PTR [esi+0x4c],0x1
   3f583:	e8 18 d3 ff ff       	call   go_to_frame_mod_76
   3f588:	c7 86 6c 10 00 00 0e 00 00 00 	mov    DWORD PTR [esi+0x106c],0xe
   3f592:	89 f1                	mov    ecx,esi
   3f594:	8b 9e 80 10 00 00    	mov    ebx,DWORD PTR [esi+0x1080]
   3f59a:	c7 86 78 10 00 00 0a 00 00 00 	mov    DWORD PTR [esi+0x1078],0xa
   3f5a4:	85 db                	test   ebx,ebx
   3f5a6:	74 14                	je     update_mod_76_2_branch_202
   3f5a8:	b8 64 00 00 00       	mov    eax,0x64
   3f5ad:	89 c2                	mov    edx,eax
   3f5af:	c1 fa 1f             	sar    edx,0x1f
   3f5b2:	f7 fb                	idiv   ebx
   3f5b4:	89 86 60 10 00 00    	mov    DWORD PTR [esi+0x1060],eax
   3f5ba:	eb 06                	jmp    update_mod_76_2_branch_203
update_mod_76_2_branch_202:
   3f5bc:	89 9e 60 10 00 00    	mov    DWORD PTR [esi+0x1060],ebx
update_mod_76_2_branch_203:
   3f5c2:	3b 99 68 10 00 00    	cmp    ebx,DWORD PTR [ecx+0x1068]
   3f5c8:	0f 84 cf f9 ff ff    	je     update_mod_76_2_reference_2
   3f5ce:	c7 81 5c 10 00 00 00 00 00 00 	mov    DWORD PTR [ecx+0x105c],0x0
   3f5d8:	89 99 68 10 00 00    	mov    DWORD PTR [ecx+0x1068],ebx
   3f5de:	e9 ba f9 ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_reference_6:
   3f5e3:	f6 86 8c 11 00 00 08 	test   BYTE PTR [esi+0x118c],0x8
   3f5ea:	0f 84 ad f9 ff ff    	je     update_mod_76_2_reference_2
   3f5f0:	83 be 8c 10 00 00 00 	cmp    DWORD PTR [esi+0x108c],0x0
   3f5f7:	0f 85 a0 f9 ff ff    	jne    update_mod_76_2_reference_2
   3f5fd:	8a ae a0 11 00 00    	mov    ch,BYTE PTR [esi+0x11a0]
   3f603:	84 ed                	test   ch,ch
   3f605:	74 09                	je     update_mod_76_2_branch_204
   3f607:	80 fd 04             	cmp    ch,0x4
   3f60a:	0f 85 8d f9 ff ff    	jne    update_mod_76_2_reference_2
update_mod_76_2_branch_204:
   3f610:	c6 86 a0 11 00 00 04 	mov    BYTE PTR [esi+0x11a0],0x4
   3f617:	a1 c4 5a 02 00       	mov    eax,ds:@obj3:current_room                                    ; fixup: num: 10967, src obj: 1, src ofs: 0x3f618, dst obj: 3, dst ofs: 0x25ac4
   3f61c:	c6 86 a1 11 00 00 00 	mov    BYTE PTR [esi+0x11a1],0x0
   3f623:	db 40 04             	fild   DWORD PTR [eax+0x4]
   3f626:	d8 5e 1c             	fcomp  DWORD PTR [esi+0x1c]
   3f629:	df e0                	fnstsw ax
   3f62b:	9e                   	sahf   
   3f62c:	72 2f                	jb     update_mod_76_2_branch_205
   3f62e:	c7 86 a4 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x10a4],0x0
   3f638:	c7 86 a8 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x10a8],0x0
   3f642:	c7 86 b4 10 00 00 00 00 c6 c2 	mov    DWORD PTR [esi+0x10b4],0xc2c60000
   3f64c:	8b 86 a4 10 00 00    	mov    eax,DWORD PTR [esi+0x10a4]
   3f652:	89 86 a0 10 00 00    	mov    DWORD PTR [esi+0x10a0],eax
   3f658:	e9 40 f9 ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_branch_205:
   3f65d:	8b 9e 80 10 00 00    	mov    ebx,DWORD PTR [esi+0x1080]
   3f663:	89 f1                	mov    ecx,esi
   3f665:	85 db                	test   ebx,ebx
   3f667:	74 14                	je     update_mod_76_2_branch_206
   3f669:	b8 64 00 00 00       	mov    eax,0x64
   3f66e:	89 c2                	mov    edx,eax
   3f670:	c1 fa 1f             	sar    edx,0x1f
   3f673:	f7 fb                	idiv   ebx
   3f675:	89 86 60 10 00 00    	mov    DWORD PTR [esi+0x1060],eax
   3f67b:	eb 06                	jmp    update_mod_76_2_branch_207
update_mod_76_2_branch_206:
   3f67d:	89 9e 60 10 00 00    	mov    DWORD PTR [esi+0x1060],ebx
update_mod_76_2_branch_207:
   3f683:	3b 99 68 10 00 00    	cmp    ebx,DWORD PTR [ecx+0x1068]
   3f689:	74 10                	je     update_mod_76_2_branch_208
   3f68b:	c7 81 5c 10 00 00 00 00 00 00 	mov    DWORD PTR [ecx+0x105c],0x0
   3f695:	89 99 68 10 00 00    	mov    DWORD PTR [ecx+0x1068],ebx
update_mod_76_2_branch_208:
   3f69b:	89 f0                	mov    eax,esi
   3f69d:	c7 86 78 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x1078],0x0
   3f6a7:	31 d2                	xor    edx,edx
   3f6a9:	c7 86 6c 10 00 00 09 00 00 00 	mov    DWORD PTR [esi+0x106c],0x9
   3f6b3:	e8 e8 d1 ff ff       	call   go_to_frame_mod_76
   3f6b8:	e9 e0 f8 ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_reference_7:
   3f6bd:	0f be 86 a0 11 00 00 	movsx  eax,BYTE PTR [esi+0x11a0]
   3f6c4:	50                   	push   eax
   3f6c5:	b8 f0 a5 00 00       	mov    eax,@obj3:classes_cpp_variable_107                           ; fixup: num: 10969, src obj: 1, src ofs: 0x3f6c6, dst obj: 3, dst ofs: 0xa5f0
   3f6ca:	50                   	push   eax
   3f6cb:	b8 fc 37 02 00       	mov    eax,@obj3:log_buffer                                         ; fixup: num: 10968, src obj: 1, src ofs: 0x3f6cc, dst obj: 3, dst ofs: 0x237fc
   3f6d0:	50                   	push   eax
   3f6d1:	e8 0b 15 03 00       	call   sprintf_
   3f6d6:	8a b6 8c 11 00 00    	mov    dh,BYTE PTR [esi+0x118c]
   3f6dc:	83 c4 0c             	add    esp,0xc
   3f6df:	f6 c6 20             	test   dh,0x20
   3f6e2:	0f 84 b5 f8 ff ff    	je     update_mod_76_2_reference_2
   3f6e8:	83 be 90 10 00 00 00 	cmp    DWORD PTR [esi+0x1090],0x0
   3f6ef:	74 53                	je     update_mod_76_2_branch_209
   3f6f1:	8b 96 ac 10 00 00    	mov    edx,DWORD PTR [esi+0x10ac]
   3f6f7:	52                   	push   edx
   3f6f8:	b8 fb a5 00 00       	mov    eax,@obj3:classes_cpp_variable_108                           ; fixup: num: 10972, src obj: 1, src ofs: 0x3f6f9, dst obj: 3, dst ofs: 0xa5fb
   3f6fd:	50                   	push   eax
   3f6fe:	b8 fc 37 02 00       	mov    eax,@obj3:log_buffer                                         ; fixup: num: 10971, src obj: 1, src ofs: 0x3f6ff, dst obj: 3, dst ofs: 0x237fc
   3f703:	50                   	push   eax
   3f704:	e8 d8 14 03 00       	call   sprintf_
   3f709:	c7 86 a4 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x10a4],0x0
   3f713:	c7 86 a8 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x10a8],0x0
   3f71d:	83 c4 0c             	add    esp,0xc
   3f720:	8b 9e ac 10 00 00    	mov    ebx,DWORD PTR [esi+0x10ac]
   3f726:	c7 86 b4 10 00 00 00 00 c6 c2 	mov    DWORD PTR [esi+0x10b4],0xc2c60000
   3f730:	83 fb ff             	cmp    ebx,0xffffffff
   3f733:	0f 85 64 f8 ff ff    	jne    update_mod_76_2_reference_2
   3f739:	89 9e 24 11 00 00    	mov    DWORD PTR [esi+0x1124],ebx
   3f73f:	e9 59 f8 ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_branch_209:
   3f744:	8a 9e a0 11 00 00    	mov    bl,BYTE PTR [esi+0x11a0]
   3f74a:	80 fb 03             	cmp    bl,0x3
   3f74d:	74 09                	je     update_mod_76_2_branch_210
   3f74f:	80 fb 0b             	cmp    bl,0xb
   3f752:	0f 85 ab 00 00 00    	jne    update_mod_76_2_branch_215
update_mod_76_2_branch_210:
   3f758:	c6 86 a0 11 00 00 0b 	mov    BYTE PTR [esi+0x11a0],0xb
   3f75f:	a1 c4 5a 02 00       	mov    eax,ds:@obj3:current_room                                    ; fixup: num: 10970, src obj: 1, src ofs: 0x3f760, dst obj: 3, dst ofs: 0x25ac4
   3f764:	c6 86 a1 11 00 00 03 	mov    BYTE PTR [esi+0x11a1],0x3
   3f76b:	db 40 08             	fild   DWORD PTR [eax+0x8]
   3f76e:	d8 5e 1c             	fcomp  DWORD PTR [esi+0x1c]
   3f771:	df e0                	fnstsw ax
   3f773:	9e                   	sahf   
   3f774:	77 2f                	ja     update_mod_76_2_branch_211
   3f776:	c7 86 a4 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x10a4],0x0
   3f780:	c7 86 a8 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x10a8],0x0
   3f78a:	c7 86 b4 10 00 00 00 00 c6 c2 	mov    DWORD PTR [esi+0x10b4],0xc2c60000
   3f794:	8b 86 a4 10 00 00    	mov    eax,DWORD PTR [esi+0x10a4]
   3f79a:	89 86 a0 10 00 00    	mov    DWORD PTR [esi+0x10a0],eax
   3f7a0:	e9 f8 f7 ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_branch_211:
   3f7a5:	8b 9e 80 10 00 00    	mov    ebx,DWORD PTR [esi+0x1080]
   3f7ab:	89 f1                	mov    ecx,esi
   3f7ad:	85 db                	test   ebx,ebx
   3f7af:	74 14                	je     update_mod_76_2_branch_212
   3f7b1:	b8 64 00 00 00       	mov    eax,0x64
   3f7b6:	89 c2                	mov    edx,eax
   3f7b8:	c1 fa 1f             	sar    edx,0x1f
   3f7bb:	f7 fb                	idiv   ebx
   3f7bd:	89 86 60 10 00 00    	mov    DWORD PTR [esi+0x1060],eax
   3f7c3:	eb 06                	jmp    update_mod_76_2_branch_213
update_mod_76_2_branch_212:
   3f7c5:	89 9e 60 10 00 00    	mov    DWORD PTR [esi+0x1060],ebx
update_mod_76_2_branch_213:
   3f7cb:	3b 99 68 10 00 00    	cmp    ebx,DWORD PTR [ecx+0x1068]
   3f7d1:	74 10                	je     update_mod_76_2_branch_214
   3f7d3:	c7 81 5c 10 00 00 00 00 00 00 	mov    DWORD PTR [ecx+0x105c],0x0
   3f7dd:	89 99 68 10 00 00    	mov    DWORD PTR [ecx+0x1068],ebx
update_mod_76_2_branch_214:
   3f7e3:	ba 1e 00 00 00       	mov    edx,0x1e
   3f7e8:	c7 86 6c 10 00 00 27 00 00 00 	mov    DWORD PTR [esi+0x106c],0x27
   3f7f2:	89 f0                	mov    eax,esi
   3f7f4:	c7 86 78 10 00 00 1e 00 00 00 	mov    DWORD PTR [esi+0x1078],0x1e
   3f7fe:	e8 9d d0 ff ff       	call   go_to_frame_mod_76
update_mod_76_2_branch_215:
   3f803:	0f be 86 a0 11 00 00 	movsx  eax,BYTE PTR [esi+0x11a0]
   3f80a:	50                   	push   eax
   3f80b:	68 11 a6 00 00       	push   @obj3:classes_cpp_variable_109                               ; fixup: num: 10974, src obj: 1, src ofs: 0x3f80c, dst obj: 3, dst ofs: 0xa611
   3f810:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 10973, src obj: 1, src ofs: 0x3f811, dst obj: 3, dst ofs: 0x237fc
   3f815:	e8 c7 13 03 00       	call   sprintf_
   3f81a:	83 c4 0c             	add    esp,0xc
   3f81d:	e9 7b f7 ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_reference_8:
   3f822:	f6 86 8c 11 00 00 10 	test   BYTE PTR [esi+0x118c],0x10
   3f829:	0f 84 6e f7 ff ff    	je     update_mod_76_2_reference_2
   3f82f:	83 be 94 10 00 00 00 	cmp    DWORD PTR [esi+0x1094],0x0
   3f836:	0f 85 61 f7 ff ff    	jne    update_mod_76_2_reference_2
   3f83c:	8a 8e a0 11 00 00    	mov    cl,BYTE PTR [esi+0x11a0]
   3f842:	80 f9 01             	cmp    cl,0x1
   3f845:	74 13                	je     update_mod_76_2_branch_216
   3f847:	80 f9 07             	cmp    cl,0x7
   3f84a:	74 0e                	je     update_mod_76_2_branch_216
   3f84c:	80 f9 0f             	cmp    cl,0xf
   3f84f:	74 09                	je     update_mod_76_2_branch_216
   3f851:	80 f9 39             	cmp    cl,0x39
   3f854:	0f 85 89 00 00 00    	jne    update_mod_76_2_branch_219
update_mod_76_2_branch_216:
   3f85a:	c6 86 a0 11 00 00 07 	mov    BYTE PTR [esi+0x11a0],0x7
   3f861:	c6 86 a1 11 00 00 01 	mov    BYTE PTR [esi+0x11a1],0x1
   3f868:	ba 0f 00 00 00       	mov    edx,0xf
   3f86d:	c7 86 6c 10 00 00 18 00 00 00 	mov    DWORD PTR [esi+0x106c],0x18
   3f877:	89 f0                	mov    eax,esi
   3f879:	c7 86 78 10 00 00 0f 00 00 00 	mov    DWORD PTR [esi+0x1078],0xf
   3f883:	e8 18 d0 ff ff       	call   go_to_frame_mod_76
   3f888:	d9 46 18             	fld    DWORD PTR [esi+0x18]
   3f88b:	d8 0d 85 a7 00 00    	fmul   DWORD PTR ds:@obj3:classes_cpp_variable_132                  ; fixup: num: 10975, src obj: 1, src ofs: 0x3f88d, dst obj: 3, dst ofs: 0xa785
   3f891:	e8 b2 64 03 00       	call   __CHP
   3f896:	89 f1                	mov    ecx,esi
   3f898:	8b 9e 80 10 00 00    	mov    ebx,DWORD PTR [esi+0x1080]
   3f89e:	db 9e a0 10 00 00    	fistp  DWORD PTR [esi+0x10a0]
   3f8a4:	85 db                	test   ebx,ebx
   3f8a6:	74 14                	je     update_mod_76_2_branch_217
   3f8a8:	b8 64 00 00 00       	mov    eax,0x64
   3f8ad:	89 c2                	mov    edx,eax
   3f8af:	c1 fa 1f             	sar    edx,0x1f
   3f8b2:	f7 fb                	idiv   ebx
   3f8b4:	89 86 60 10 00 00    	mov    DWORD PTR [esi+0x1060],eax
   3f8ba:	eb 06                	jmp    update_mod_76_2_branch_218
update_mod_76_2_branch_217:
   3f8bc:	89 9e 60 10 00 00    	mov    DWORD PTR [esi+0x1060],ebx
update_mod_76_2_branch_218:
   3f8c2:	3b 99 68 10 00 00    	cmp    ebx,DWORD PTR [ecx+0x1068]
   3f8c8:	0f 84 cf f6 ff ff    	je     update_mod_76_2_reference_2
   3f8ce:	c7 81 5c 10 00 00 00 00 00 00 	mov    DWORD PTR [ecx+0x105c],0x0
   3f8d8:	89 99 68 10 00 00    	mov    DWORD PTR [ecx+0x1068],ebx
   3f8de:	e9 ba f6 ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_branch_219:
   3f8e3:	80 f9 0e             	cmp    cl,0xe
   3f8e6:	74 0a                	je     update_mod_76_2_branch_220
   3f8e8:	80 f9 3a             	cmp    cl,0x3a
   3f8eb:	74 05                	je     update_mod_76_2_branch_220
   3f8ed:	80 f9 02             	cmp    cl,0x2
   3f8f0:	75 2e                	jne    update_mod_76_2_branch_221
update_mod_76_2_branch_220:
   3f8f2:	ba 3b 00 00 00       	mov    edx,0x3b
   3f8f7:	89 f0                	mov    eax,esi
   3f8f9:	c6 86 a0 11 00 00 00 	mov    BYTE PTR [esi+0x11a0],0x0
   3f900:	e8 9b cf ff ff       	call   go_to_frame_mod_76
   3f905:	c7 86 78 10 00 00 3b 00 00 00 	mov    DWORD PTR [esi+0x1078],0x3b
   3f90f:	8b 86 78 10 00 00    	mov    eax,DWORD PTR [esi+0x1078]
   3f915:	89 86 6c 10 00 00    	mov    DWORD PTR [esi+0x106c],eax
   3f91b:	e9 7d f6 ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_branch_221:
   3f920:	84 c9                	test   cl,cl
   3f922:	0f 85 75 f6 ff ff    	jne    update_mod_76_2_reference_2
   3f928:	ba 0e 00 00 00       	mov    edx,0xe
   3f92d:	89 f0                	mov    eax,esi
   3f92f:	c6 86 a0 11 00 00 01 	mov    BYTE PTR [esi+0x11a0],0x1
   3f936:	e8 65 cf ff ff       	call   go_to_frame_mod_76
   3f93b:	c7 86 78 10 00 00 0e 00 00 00 	mov    DWORD PTR [esi+0x1078],0xe
   3f945:	8b 86 78 10 00 00    	mov    eax,DWORD PTR [esi+0x1078]
   3f94b:	89 86 6c 10 00 00    	mov    DWORD PTR [esi+0x106c],eax
   3f951:	e9 47 f6 ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_reference_9:
   3f956:	f6 86 8c 11 00 00 40 	test   BYTE PTR [esi+0x118c],0x40
   3f95d:	0f 84 3a f6 ff ff    	je     update_mod_76_2_reference_2
   3f963:	83 be 98 10 00 00 00 	cmp    DWORD PTR [esi+0x1098],0x0
   3f96a:	0f 85 2d f6 ff ff    	jne    update_mod_76_2_reference_2
   3f970:	8a 96 a0 11 00 00    	mov    dl,BYTE PTR [esi+0x11a0]
   3f976:	80 fa 02             	cmp    dl,0x2
   3f979:	74 13                	je     update_mod_76_2_branch_222
   3f97b:	80 fa 0e             	cmp    dl,0xe
   3f97e:	74 0e                	je     update_mod_76_2_branch_222
   3f980:	80 fa 08             	cmp    dl,0x8
   3f983:	74 09                	je     update_mod_76_2_branch_222
   3f985:	80 fa 3a             	cmp    dl,0x3a
   3f988:	0f 85 89 00 00 00    	jne    update_mod_76_2_branch_225
update_mod_76_2_branch_222:
   3f98e:	c6 86 a0 11 00 00 0e 	mov    BYTE PTR [esi+0x11a0],0xe
   3f995:	c6 86 a1 11 00 00 02 	mov    BYTE PTR [esi+0x11a1],0x2
   3f99c:	ba 2d 00 00 00       	mov    edx,0x2d
   3f9a1:	c7 86 6c 10 00 00 36 00 00 00 	mov    DWORD PTR [esi+0x106c],0x36
   3f9ab:	89 f0                	mov    eax,esi
   3f9ad:	c7 86 78 10 00 00 2d 00 00 00 	mov    DWORD PTR [esi+0x1078],0x2d
   3f9b7:	e8 e4 ce ff ff       	call   go_to_frame_mod_76
   3f9bc:	d9 46 18             	fld    DWORD PTR [esi+0x18]
   3f9bf:	d8 0d 81 a7 00 00    	fmul   DWORD PTR ds:@obj3:classes_cpp_variable_131                  ; fixup: num: 10976, src obj: 1, src ofs: 0x3f9c1, dst obj: 3, dst ofs: 0xa781
   3f9c5:	e8 7e 63 03 00       	call   __CHP
   3f9ca:	89 f1                	mov    ecx,esi
   3f9cc:	8b 9e 80 10 00 00    	mov    ebx,DWORD PTR [esi+0x1080]
   3f9d2:	db 9e a0 10 00 00    	fistp  DWORD PTR [esi+0x10a0]
   3f9d8:	85 db                	test   ebx,ebx
   3f9da:	74 14                	je     update_mod_76_2_branch_223
   3f9dc:	b8 64 00 00 00       	mov    eax,0x64
   3f9e1:	89 c2                	mov    edx,eax
   3f9e3:	c1 fa 1f             	sar    edx,0x1f
   3f9e6:	f7 fb                	idiv   ebx
   3f9e8:	89 86 60 10 00 00    	mov    DWORD PTR [esi+0x1060],eax
   3f9ee:	eb 06                	jmp    update_mod_76_2_branch_224
update_mod_76_2_branch_223:
   3f9f0:	89 9e 60 10 00 00    	mov    DWORD PTR [esi+0x1060],ebx
update_mod_76_2_branch_224:
   3f9f6:	3b 99 68 10 00 00    	cmp    ebx,DWORD PTR [ecx+0x1068]
   3f9fc:	0f 84 9b f5 ff ff    	je     update_mod_76_2_reference_2
   3fa02:	c7 81 5c 10 00 00 00 00 00 00 	mov    DWORD PTR [ecx+0x105c],0x0
   3fa0c:	89 99 68 10 00 00    	mov    DWORD PTR [ecx+0x1068],ebx
   3fa12:	e9 86 f5 ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_branch_225:
   3fa17:	80 fa 07             	cmp    dl,0x7
   3fa1a:	74 0a                	je     update_mod_76_2_branch_226
   3fa1c:	80 fa 39             	cmp    dl,0x39
   3fa1f:	74 05                	je     update_mod_76_2_branch_226
   3fa21:	80 fa 01             	cmp    dl,0x1
   3fa24:	75 2e                	jne    update_mod_76_2_branch_227
update_mod_76_2_branch_226:
   3fa26:	ba 28 00 00 00       	mov    edx,0x28
   3fa2b:	89 f0                	mov    eax,esi
   3fa2d:	c6 86 a0 11 00 00 03 	mov    BYTE PTR [esi+0x11a0],0x3
   3fa34:	e8 67 ce ff ff       	call   go_to_frame_mod_76
   3fa39:	c7 86 78 10 00 00 28 00 00 00 	mov    DWORD PTR [esi+0x1078],0x28
   3fa43:	8b 86 78 10 00 00    	mov    eax,DWORD PTR [esi+0x1078]
   3fa49:	89 86 6c 10 00 00    	mov    DWORD PTR [esi+0x106c],eax
   3fa4f:	e9 49 f5 ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_branch_227:
   3fa54:	80 fa 03             	cmp    dl,0x3
   3fa57:	75 2e                	jne    update_mod_76_2_branch_228
   3fa59:	ba 2c 00 00 00       	mov    edx,0x2c
   3fa5e:	89 f0                	mov    eax,esi
   3fa60:	c6 86 a0 11 00 00 02 	mov    BYTE PTR [esi+0x11a0],0x2
   3fa67:	e8 34 ce ff ff       	call   go_to_frame_mod_76
   3fa6c:	c7 86 78 10 00 00 2c 00 00 00 	mov    DWORD PTR [esi+0x1078],0x2c
   3fa76:	8b 86 78 10 00 00    	mov    eax,DWORD PTR [esi+0x1078]
   3fa7c:	89 86 6c 10 00 00    	mov    DWORD PTR [esi+0x106c],eax
   3fa82:	e9 16 f5 ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_branch_228:
   3fa87:	84 d2                	test   dl,dl
   3fa89:	0f 85 0e f5 ff ff    	jne    update_mod_76_2_reference_2
   3fa8f:	ba 2c 00 00 00       	mov    edx,0x2c
   3fa94:	89 f0                	mov    eax,esi
   3fa96:	c6 86 a0 11 00 00 02 	mov    BYTE PTR [esi+0x11a0],0x2
   3fa9d:	e8 fe cd ff ff       	call   go_to_frame_mod_76
   3faa2:	c7 86 78 10 00 00 2c 00 00 00 	mov    DWORD PTR [esi+0x1078],0x2c
   3faac:	8b 86 78 10 00 00    	mov    eax,DWORD PTR [esi+0x1078]
   3fab2:	89 86 6c 10 00 00    	mov    DWORD PTR [esi+0x106c],eax
   3fab8:	e9 e0 f4 ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_reference_10:
   3fabd:	f6 86 8c 11 00 00 10 	test   BYTE PTR [esi+0x118c],0x10
   3fac4:	0f 84 d3 f4 ff ff    	je     update_mod_76_2_reference_2
   3faca:	83 be 94 10 00 00 00 	cmp    DWORD PTR [esi+0x1094],0x0
   3fad1:	0f 85 c6 f4 ff ff    	jne    update_mod_76_2_reference_2
   3fad7:	8a 8e a0 11 00 00    	mov    cl,BYTE PTR [esi+0x11a0]
   3fadd:	80 f9 01             	cmp    cl,0x1
   3fae0:	74 0f                	je     update_mod_76_2_branch_229
   3fae2:	80 f9 07             	cmp    cl,0x7
   3fae5:	74 0a                	je     update_mod_76_2_branch_229
   3fae7:	80 f9 0f             	cmp    cl,0xf
   3faea:	74 05                	je     update_mod_76_2_branch_229
   3faec:	80 f9 39             	cmp    cl,0x39
   3faef:	75 3d                	jne    update_mod_76_2_branch_230
update_mod_76_2_branch_229:
   3faf1:	c6 86 a0 11 00 00 39 	mov    BYTE PTR [esi+0x11a0],0x39
   3faf8:	c6 86 a1 11 00 00 01 	mov    BYTE PTR [esi+0x11a1],0x1
   3faff:	ba 0f 00 00 00       	mov    edx,0xf
   3fb04:	c7 86 6c 10 00 00 14 00 00 00 	mov    DWORD PTR [esi+0x106c],0x14
   3fb0e:	89 f0                	mov    eax,esi
   3fb10:	c7 86 78 10 00 00 0f 00 00 00 	mov    DWORD PTR [esi+0x1078],0xf
   3fb1a:	e8 81 cd ff ff       	call   go_to_frame_mod_76
   3fb1f:	c7 86 a0 10 00 00 f8 ff ff ff 	mov    DWORD PTR [esi+0x10a0],0xfffffff8
   3fb29:	e9 6f f4 ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_branch_230:
   3fb2e:	80 f9 0e             	cmp    cl,0xe
   3fb31:	74 0a                	je     update_mod_76_2_branch_231
   3fb33:	80 f9 3a             	cmp    cl,0x3a
   3fb36:	74 05                	je     update_mod_76_2_branch_231
   3fb38:	80 f9 02             	cmp    cl,0x2
   3fb3b:	75 2e                	jne    update_mod_76_2_branch_232
update_mod_76_2_branch_231:
   3fb3d:	ba 3b 00 00 00       	mov    edx,0x3b
   3fb42:	89 f0                	mov    eax,esi
   3fb44:	c6 86 a0 11 00 00 00 	mov    BYTE PTR [esi+0x11a0],0x0
   3fb4b:	e8 50 cd ff ff       	call   go_to_frame_mod_76
   3fb50:	c7 86 78 10 00 00 3b 00 00 00 	mov    DWORD PTR [esi+0x1078],0x3b
   3fb5a:	8b 86 78 10 00 00    	mov    eax,DWORD PTR [esi+0x1078]
   3fb60:	89 86 6c 10 00 00    	mov    DWORD PTR [esi+0x106c],eax
   3fb66:	e9 32 f4 ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_branch_232:
   3fb6b:	84 c9                	test   cl,cl
   3fb6d:	74 18                	je     update_mod_76_2_branch_233
   3fb6f:	80 f9 03             	cmp    cl,0x3
   3fb72:	74 13                	je     update_mod_76_2_branch_233
   3fb74:	80 f9 04             	cmp    cl,0x4
   3fb77:	74 0e                	je     update_mod_76_2_branch_233
   3fb79:	80 f9 0b             	cmp    cl,0xb
   3fb7c:	74 09                	je     update_mod_76_2_branch_233
   3fb7e:	80 f9 3a             	cmp    cl,0x3a
   3fb81:	0f 85 16 f4 ff ff    	jne    update_mod_76_2_reference_2
update_mod_76_2_branch_233:
   3fb87:	ba 0e 00 00 00       	mov    edx,0xe
   3fb8c:	89 f0                	mov    eax,esi
   3fb8e:	c6 86 a0 11 00 00 01 	mov    BYTE PTR [esi+0x11a0],0x1
   3fb95:	e8 06 cd ff ff       	call   go_to_frame_mod_76
   3fb9a:	c7 86 78 10 00 00 0e 00 00 00 	mov    DWORD PTR [esi+0x1078],0xe
   3fba4:	8b 86 78 10 00 00    	mov    eax,DWORD PTR [esi+0x1078]
   3fbaa:	89 86 6c 10 00 00    	mov    DWORD PTR [esi+0x106c],eax
   3fbb0:	e9 e8 f3 ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_reference_11:
   3fbb5:	f6 86 8c 11 00 00 40 	test   BYTE PTR [esi+0x118c],0x40
   3fbbc:	0f 84 db f3 ff ff    	je     update_mod_76_2_reference_2
   3fbc2:	83 be 98 10 00 00 00 	cmp    DWORD PTR [esi+0x1098],0x0
   3fbc9:	0f 85 ce f3 ff ff    	jne    update_mod_76_2_reference_2
   3fbcf:	8a a6 a0 11 00 00    	mov    ah,BYTE PTR [esi+0x11a0]
   3fbd5:	80 fc 02             	cmp    ah,0x2
   3fbd8:	74 0f                	je     update_mod_76_2_branch_234
   3fbda:	80 fc 0e             	cmp    ah,0xe
   3fbdd:	74 0a                	je     update_mod_76_2_branch_234
   3fbdf:	80 fc 08             	cmp    ah,0x8
   3fbe2:	74 05                	je     update_mod_76_2_branch_234
   3fbe4:	80 fc 3a             	cmp    ah,0x3a
   3fbe7:	75 3d                	jne    update_mod_76_2_branch_235
update_mod_76_2_branch_234:
   3fbe9:	c6 86 a0 11 00 00 3a 	mov    BYTE PTR [esi+0x11a0],0x3a
   3fbf0:	c6 86 a1 11 00 00 02 	mov    BYTE PTR [esi+0x11a1],0x2
   3fbf7:	ba 2d 00 00 00       	mov    edx,0x2d
   3fbfc:	c7 86 6c 10 00 00 32 00 00 00 	mov    DWORD PTR [esi+0x106c],0x32
   3fc06:	89 f0                	mov    eax,esi
   3fc08:	c7 86 78 10 00 00 2d 00 00 00 	mov    DWORD PTR [esi+0x1078],0x2d
   3fc12:	e8 89 cc ff ff       	call   go_to_frame_mod_76
   3fc17:	c7 86 a0 10 00 00 08 00 00 00 	mov    DWORD PTR [esi+0x10a0],0x8
   3fc21:	e9 77 f3 ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_branch_235:
   3fc26:	80 fc 07             	cmp    ah,0x7
   3fc29:	74 0a                	je     update_mod_76_2_branch_236
   3fc2b:	80 fc 39             	cmp    ah,0x39
   3fc2e:	74 05                	je     update_mod_76_2_branch_236
   3fc30:	80 fc 01             	cmp    ah,0x1
   3fc33:	75 2e                	jne    update_mod_76_2_branch_237
update_mod_76_2_branch_236:
   3fc35:	ba 28 00 00 00       	mov    edx,0x28
   3fc3a:	89 f0                	mov    eax,esi
   3fc3c:	c6 86 a0 11 00 00 03 	mov    BYTE PTR [esi+0x11a0],0x3
   3fc43:	e8 58 cc ff ff       	call   go_to_frame_mod_76
   3fc48:	c7 86 78 10 00 00 28 00 00 00 	mov    DWORD PTR [esi+0x1078],0x28
   3fc52:	8b 86 78 10 00 00    	mov    eax,DWORD PTR [esi+0x1078]
   3fc58:	89 86 6c 10 00 00    	mov    DWORD PTR [esi+0x106c],eax
   3fc5e:	e9 3a f3 ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_branch_237:
   3fc63:	80 fc 03             	cmp    ah,0x3
   3fc66:	74 17                	je     update_mod_76_2_branch_238
   3fc68:	84 e4                	test   ah,ah
   3fc6a:	74 13                	je     update_mod_76_2_branch_238
   3fc6c:	80 fc 0b             	cmp    ah,0xb
   3fc6f:	74 0e                	je     update_mod_76_2_branch_238
   3fc71:	80 fc 04             	cmp    ah,0x4
   3fc74:	74 09                	je     update_mod_76_2_branch_238
   3fc76:	80 fc 39             	cmp    ah,0x39
   3fc79:	0f 85 1e f3 ff ff    	jne    update_mod_76_2_reference_2
update_mod_76_2_branch_238:
   3fc7f:	ba 2c 00 00 00       	mov    edx,0x2c
   3fc84:	89 f0                	mov    eax,esi
   3fc86:	c6 86 a0 11 00 00 02 	mov    BYTE PTR [esi+0x11a0],0x2
   3fc8d:	e8 0e cc ff ff       	call   go_to_frame_mod_76
   3fc92:	c7 86 78 10 00 00 2c 00 00 00 	mov    DWORD PTR [esi+0x1078],0x2c
   3fc9c:	8b 86 78 10 00 00    	mov    eax,DWORD PTR [esi+0x1078]
   3fca2:	89 86 6c 10 00 00    	mov    DWORD PTR [esi+0x106c],eax
   3fca8:	e9 f0 f2 ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_reference_12:
   3fcad:	f6 86 8c 11 00 00 40 	test   BYTE PTR [esi+0x118c],0x40
   3fcb4:	0f 84 e3 f2 ff ff    	je     update_mod_76_2_reference_2
   3fcba:	8a ae a0 11 00 00    	mov    ch,BYTE PTR [esi+0x11a0]
   3fcc0:	80 fd 02             	cmp    ch,0x2
   3fcc3:	74 1d                	je     update_mod_76_2_branch_239
   3fcc5:	80 fd 0e             	cmp    ch,0xe
   3fcc8:	74 18                	je     update_mod_76_2_branch_239
   3fcca:	80 fd 3a             	cmp    ch,0x3a
   3fccd:	74 13                	je     update_mod_76_2_branch_239
   3fccf:	80 fd 19             	cmp    ch,0x19
   3fcd2:	74 0e                	je     update_mod_76_2_branch_239
   3fcd4:	80 fd 1a             	cmp    ch,0x1a
   3fcd7:	74 09                	je     update_mod_76_2_branch_239
   3fcd9:	80 fd 1b             	cmp    ch,0x1b
   3fcdc:	0f 85 bb f2 ff ff    	jne    update_mod_76_2_reference_2
update_mod_76_2_branch_239:
   3fce2:	c6 86 a0 11 00 00 08 	mov    BYTE PTR [esi+0x11a0],0x8
   3fce9:	c6 86 a1 11 00 00 02 	mov    BYTE PTR [esi+0x11a1],0x2
   3fcf0:	ba 36 00 00 00       	mov    edx,0x36
   3fcf5:	c7 86 6c 10 00 00 36 00 00 00 	mov    DWORD PTR [esi+0x106c],0x36
   3fcff:	89 f0                	mov    eax,esi
   3fd01:	c7 86 78 10 00 00 2d 00 00 00 	mov    DWORD PTR [esi+0x1078],0x2d
   3fd0b:	e8 90 cb ff ff       	call   go_to_frame_mod_76
   3fd10:	c6 46 4c 01          	mov    BYTE PTR [esi+0x4c],0x1
   3fd14:	e9 84 f2 ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_reference_13:
   3fd19:	f6 86 8c 11 00 00 10 	test   BYTE PTR [esi+0x118c],0x10
   3fd20:	0f 84 77 f2 ff ff    	je     update_mod_76_2_reference_2
   3fd26:	8a b6 a0 11 00 00    	mov    dh,BYTE PTR [esi+0x11a0]
   3fd2c:	80 fe 01             	cmp    dh,0x1
   3fd2f:	74 1d                	je     update_mod_76_2_branch_240
   3fd31:	80 fe 07             	cmp    dh,0x7
   3fd34:	74 18                	je     update_mod_76_2_branch_240
   3fd36:	80 fe 39             	cmp    dh,0x39
   3fd39:	74 13                	je     update_mod_76_2_branch_240
   3fd3b:	80 fe 16             	cmp    dh,0x16
   3fd3e:	74 0e                	je     update_mod_76_2_branch_240
   3fd40:	80 fe 17             	cmp    dh,0x17
   3fd43:	74 09                	je     update_mod_76_2_branch_240
   3fd45:	80 fe 18             	cmp    dh,0x18
   3fd48:	0f 85 4f f2 ff ff    	jne    update_mod_76_2_reference_2
update_mod_76_2_branch_240:
   3fd4e:	c6 86 a0 11 00 00 0f 	mov    BYTE PTR [esi+0x11a0],0xf
   3fd55:	c6 86 a1 11 00 00 01 	mov    BYTE PTR [esi+0x11a1],0x1
   3fd5c:	ba 18 00 00 00       	mov    edx,0x18
   3fd61:	c7 86 6c 10 00 00 18 00 00 00 	mov    DWORD PTR [esi+0x106c],0x18
   3fd6b:	89 f0                	mov    eax,esi
   3fd6d:	c7 86 78 10 00 00 0f 00 00 00 	mov    DWORD PTR [esi+0x1078],0xf
   3fd77:	e8 24 cb ff ff       	call   go_to_frame_mod_76
   3fd7c:	c6 46 4c 01          	mov    BYTE PTR [esi+0x4c],0x1
   3fd80:	e9 18 f2 ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_reference_14:
   3fd85:	c7 86 a4 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x10a4],0x0
   3fd8f:	db 86 a4 10 00 00    	fild   DWORD PTR [esi+0x10a4]
   3fd95:	d9 96 a8 10 00 00    	fst    DWORD PTR [esi+0x10a8]
   3fd9b:	e8 a8 5f 03 00       	call   __CHP
   3fda0:	c6 86 a0 11 00 00 12 	mov    BYTE PTR [esi+0x11a0],0x12
   3fda7:	c6 86 a1 11 00 00 02 	mov    BYTE PTR [esi+0x11a1],0x2
   3fdae:	c7 86 78 10 00 00 3c 00 00 00 	mov    DWORD PTR [esi+0x1078],0x3c
   3fdb8:	ba 3c 00 00 00       	mov    edx,0x3c
   3fdbd:	c7 86 6c 10 00 00 40 00 00 00 	mov    DWORD PTR [esi+0x106c],0x40
   3fdc7:	89 f0                	mov    eax,esi
   3fdc9:	db 9e a0 10 00 00    	fistp  DWORD PTR [esi+0x10a0]
   3fdcf:	e8 cc ca ff ff       	call   go_to_frame_mod_76
   3fdd4:	e9 c4 f1 ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_reference_15:
   3fdd9:	c7 86 a4 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x10a4],0x0
   3fde3:	db 86 a4 10 00 00    	fild   DWORD PTR [esi+0x10a4]
   3fde9:	d9 96 a8 10 00 00    	fst    DWORD PTR [esi+0x10a8]
   3fdef:	e8 54 5f 03 00       	call   __CHP
   3fdf4:	c6 86 a0 11 00 00 13 	mov    BYTE PTR [esi+0x11a0],0x13
   3fdfb:	c6 86 a1 11 00 00 01 	mov    BYTE PTR [esi+0x11a1],0x1
   3fe02:	c7 86 78 10 00 00 41 00 00 00 	mov    DWORD PTR [esi+0x1078],0x41
   3fe0c:	ba 41 00 00 00       	mov    edx,0x41
   3fe11:	c7 86 6c 10 00 00 45 00 00 00 	mov    DWORD PTR [esi+0x106c],0x45
   3fe1b:	89 f0                	mov    eax,esi
   3fe1d:	db 9e a0 10 00 00    	fistp  DWORD PTR [esi+0x10a0]
   3fe23:	e8 78 ca ff ff       	call   go_to_frame_mod_76
   3fe28:	e9 70 f1 ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_reference_16:
   3fe2d:	c7 86 a4 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x10a4],0x0
   3fe37:	db 86 a4 10 00 00    	fild   DWORD PTR [esi+0x10a4]
   3fe3d:	d9 96 a8 10 00 00    	fst    DWORD PTR [esi+0x10a8]
   3fe43:	e8 00 5f 03 00       	call   __CHP
   3fe48:	c6 86 a0 11 00 00 14 	mov    BYTE PTR [esi+0x11a0],0x14
   3fe4f:	c6 86 a1 11 00 00 02 	mov    BYTE PTR [esi+0x11a1],0x2
   3fe56:	c7 86 78 10 00 00 46 00 00 00 	mov    DWORD PTR [esi+0x1078],0x46
   3fe60:	ba 46 00 00 00       	mov    edx,0x46
   3fe65:	c7 86 6c 10 00 00 4a 00 00 00 	mov    DWORD PTR [esi+0x106c],0x4a
   3fe6f:	89 f0                	mov    eax,esi
   3fe71:	db 9e a0 10 00 00    	fistp  DWORD PTR [esi+0x10a0]
   3fe77:	e8 24 ca ff ff       	call   go_to_frame_mod_76
   3fe7c:	e9 1c f1 ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_reference_17:
   3fe81:	c7 86 a4 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x10a4],0x0
   3fe8b:	db 86 a4 10 00 00    	fild   DWORD PTR [esi+0x10a4]
   3fe91:	d9 96 a8 10 00 00    	fst    DWORD PTR [esi+0x10a8]
   3fe97:	e8 ac 5e 03 00       	call   __CHP
   3fe9c:	c6 86 a0 11 00 00 15 	mov    BYTE PTR [esi+0x11a0],0x15
   3fea3:	c6 86 a1 11 00 00 01 	mov    BYTE PTR [esi+0x11a1],0x1
   3feaa:	c7 86 78 10 00 00 4b 00 00 00 	mov    DWORD PTR [esi+0x1078],0x4b
   3feb4:	ba 4b 00 00 00       	mov    edx,0x4b
   3feb9:	c7 86 6c 10 00 00 4f 00 00 00 	mov    DWORD PTR [esi+0x106c],0x4f
   3fec3:	89 f0                	mov    eax,esi
   3fec5:	db 9e a0 10 00 00    	fistp  DWORD PTR [esi+0x10a0]
   3fecb:	e8 d0 c9 ff ff       	call   go_to_frame_mod_76
   3fed0:	e9 c8 f0 ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_reference_18:
   3fed5:	c7 86 a4 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x10a4],0x0
   3fedf:	db 86 a4 10 00 00    	fild   DWORD PTR [esi+0x10a4]
   3fee5:	d9 96 a8 10 00 00    	fst    DWORD PTR [esi+0x10a8]
   3feeb:	e8 58 5e 03 00       	call   __CHP
   3fef0:	8a ae 8d 11 00 00    	mov    ch,BYTE PTR [esi+0x118d]
   3fef6:	db 9e a0 10 00 00    	fistp  DWORD PTR [esi+0x10a0]
   3fefc:	f6 c5 20             	test   ch,0x20
   3feff:	0f 84 98 f0 ff ff    	je     update_mod_76_2_reference_2
   3ff05:	c6 86 a0 11 00 00 18 	mov    BYTE PTR [esi+0x11a0],0x18
   3ff0c:	c6 86 a1 11 00 00 01 	mov    BYTE PTR [esi+0x11a1],0x1
   3ff13:	ba 50 00 00 00       	mov    edx,0x50
   3ff18:	c7 86 78 10 00 00 50 00 00 00 	mov    DWORD PTR [esi+0x1078],0x50
   3ff22:	89 f0                	mov    eax,esi
   3ff24:	c7 86 6c 10 00 00 59 00 00 00 	mov    DWORD PTR [esi+0x106c],0x59
   3ff2e:	e8 6d c9 ff ff       	call   go_to_frame_mod_76
   3ff33:	e9 65 f0 ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_reference_19:
   3ff38:	c7 86 a4 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x10a4],0x0
   3ff42:	db 86 a4 10 00 00    	fild   DWORD PTR [esi+0x10a4]
   3ff48:	d9 96 a8 10 00 00    	fst    DWORD PTR [esi+0x10a8]
   3ff4e:	e8 f5 5d 03 00       	call   __CHP
   3ff53:	8a 86 8d 11 00 00    	mov    al,BYTE PTR [esi+0x118d]
   3ff59:	db 9e a0 10 00 00    	fistp  DWORD PTR [esi+0x10a0]
   3ff5f:	a8 10                	test   al,0x10
   3ff61:	0f 84 36 f0 ff ff    	je     update_mod_76_2_reference_2
   3ff67:	c6 86 a0 11 00 00 17 	mov    BYTE PTR [esi+0x11a0],0x17
   3ff6e:	c6 86 a1 11 00 00 01 	mov    BYTE PTR [esi+0x11a1],0x1
   3ff75:	ba 5a 00 00 00       	mov    edx,0x5a
   3ff7a:	c7 86 78 10 00 00 5a 00 00 00 	mov    DWORD PTR [esi+0x1078],0x5a
   3ff84:	89 f0                	mov    eax,esi
   3ff86:	c7 86 6c 10 00 00 63 00 00 00 	mov    DWORD PTR [esi+0x106c],0x63
   3ff90:	e8 0b c9 ff ff       	call   go_to_frame_mod_76
   3ff95:	e9 03 f0 ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_reference_20:
   3ff9a:	c7 86 a4 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x10a4],0x0
   3ffa4:	db 86 a4 10 00 00    	fild   DWORD PTR [esi+0x10a4]
   3ffaa:	d9 96 a8 10 00 00    	fst    DWORD PTR [esi+0x10a8]
   3ffb0:	e8 93 5d 03 00       	call   __CHP
   3ffb5:	8a a6 8d 11 00 00    	mov    ah,BYTE PTR [esi+0x118d]
   3ffbb:	db 9e a0 10 00 00    	fistp  DWORD PTR [esi+0x10a0]
   3ffc1:	f6 c4 08             	test   ah,0x8
   3ffc4:	0f 84 d3 ef ff ff    	je     update_mod_76_2_reference_2
   3ffca:	c6 86 a0 11 00 00 16 	mov    BYTE PTR [esi+0x11a0],0x16
   3ffd1:	c6 86 a1 11 00 00 01 	mov    BYTE PTR [esi+0x11a1],0x1
   3ffd8:	ba 64 00 00 00       	mov    edx,0x64
   3ffdd:	c7 86 78 10 00 00 64 00 00 00 	mov    DWORD PTR [esi+0x1078],0x64
   3ffe7:	89 f0                	mov    eax,esi
   3ffe9:	c7 86 6c 10 00 00 6d 00 00 00 	mov    DWORD PTR [esi+0x106c],0x6d
   3fff3:	e8 a8 c8 ff ff       	call   go_to_frame_mod_76
   3fff8:	e9 a0 ef ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_reference_21:
   3fffd:	c7 86 a4 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x10a4],0x0
   40007:	db 86 a4 10 00 00    	fild   DWORD PTR [esi+0x10a4]
   4000d:	d9 96 a8 10 00 00    	fst    DWORD PTR [esi+0x10a8]
   40013:	e8 30 5d 03 00       	call   __CHP
   40018:	8a 9e 8d 11 00 00    	mov    bl,BYTE PTR [esi+0x118d]
   4001e:	db 9e a0 10 00 00    	fistp  DWORD PTR [esi+0x10a0]
   40024:	f6 c3 20             	test   bl,0x20
   40027:	0f 84 70 ef ff ff    	je     update_mod_76_2_reference_2
   4002d:	c6 86 a0 11 00 00 1b 	mov    BYTE PTR [esi+0x11a0],0x1b
   40034:	c6 86 a1 11 00 00 02 	mov    BYTE PTR [esi+0x11a1],0x2
   4003b:	ba 6e 00 00 00       	mov    edx,0x6e
   40040:	c7 86 78 10 00 00 6e 00 00 00 	mov    DWORD PTR [esi+0x1078],0x6e
   4004a:	89 f0                	mov    eax,esi
   4004c:	c7 86 6c 10 00 00 77 00 00 00 	mov    DWORD PTR [esi+0x106c],0x77
   40056:	e8 45 c8 ff ff       	call   go_to_frame_mod_76
   4005b:	e9 3d ef ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_reference_22:
   40060:	c7 86 a4 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x10a4],0x0
   4006a:	db 86 a4 10 00 00    	fild   DWORD PTR [esi+0x10a4]
   40070:	d9 96 a8 10 00 00    	fst    DWORD PTR [esi+0x10a8]
   40076:	e8 cd 5c 03 00       	call   __CHP
   4007b:	8a be 8d 11 00 00    	mov    bh,BYTE PTR [esi+0x118d]
   40081:	db 9e a0 10 00 00    	fistp  DWORD PTR [esi+0x10a0]
   40087:	f6 c7 10             	test   bh,0x10
   4008a:	0f 84 0d ef ff ff    	je     update_mod_76_2_reference_2
   40090:	c6 86 a0 11 00 00 1a 	mov    BYTE PTR [esi+0x11a0],0x1a
   40097:	c6 86 a1 11 00 00 02 	mov    BYTE PTR [esi+0x11a1],0x2
   4009e:	ba 78 00 00 00       	mov    edx,0x78
   400a3:	c7 86 78 10 00 00 78 00 00 00 	mov    DWORD PTR [esi+0x1078],0x78
   400ad:	89 f0                	mov    eax,esi
   400af:	c7 86 6c 10 00 00 81 00 00 00 	mov    DWORD PTR [esi+0x106c],0x81
   400b9:	e8 e2 c7 ff ff       	call   go_to_frame_mod_76
   400be:	e9 da ee ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_reference_23:
   400c3:	c7 86 a4 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x10a4],0x0
   400cd:	db 86 a4 10 00 00    	fild   DWORD PTR [esi+0x10a4]
   400d3:	d9 96 a8 10 00 00    	fst    DWORD PTR [esi+0x10a8]
   400d9:	e8 6a 5c 03 00       	call   __CHP
   400de:	8a 8e 8d 11 00 00    	mov    cl,BYTE PTR [esi+0x118d]
   400e4:	db 9e a0 10 00 00    	fistp  DWORD PTR [esi+0x10a0]
   400ea:	f6 c1 08             	test   cl,0x8
   400ed:	0f 84 aa ee ff ff    	je     update_mod_76_2_reference_2
   400f3:	c6 86 a0 11 00 00 19 	mov    BYTE PTR [esi+0x11a0],0x19
   400fa:	c6 86 a1 11 00 00 02 	mov    BYTE PTR [esi+0x11a1],0x2
   40101:	ba 82 00 00 00       	mov    edx,0x82
   40106:	c7 86 78 10 00 00 82 00 00 00 	mov    DWORD PTR [esi+0x1078],0x82
   40110:	89 f0                	mov    eax,esi
   40112:	c7 86 6c 10 00 00 8b 00 00 00 	mov    DWORD PTR [esi+0x106c],0x8b
   4011c:	e8 7f c7 ff ff       	call   go_to_frame_mod_76
   40121:	e9 77 ee ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_reference_24:
   40126:	f6 86 8e 11 00 00 01 	test   BYTE PTR [esi+0x118e],0x1
   4012d:	0f 84 6a ee ff ff    	je     update_mod_76_2_reference_2
   40133:	c6 86 a0 11 00 00 1e 	mov    BYTE PTR [esi+0x11a0],0x1e
   4013a:	ba 8c 00 00 00       	mov    edx,0x8c
   4013f:	c6 86 a1 11 00 00 02 	mov    BYTE PTR [esi+0x11a1],0x2
   40146:	b9 04 00 00 00       	mov    ecx,0x4
   4014b:	c7 86 78 10 00 00 8c 00 00 00 	mov    DWORD PTR [esi+0x1078],0x8c
   40155:	89 f0                	mov    eax,esi
   40157:	c7 86 6c 10 00 00 8e 00 00 00 	mov    DWORD PTR [esi+0x106c],0x8e
   40161:	e8 3a c7 ff ff       	call   go_to_frame_mod_76
   40166:	89 f3                	mov    ebx,esi
   40168:	85 c9                	test   ecx,ecx
   4016a:	74 14                	je     update_mod_76_2_branch_241
   4016c:	b8 64 00 00 00       	mov    eax,0x64
   40171:	89 c2                	mov    edx,eax
   40173:	c1 fa 1f             	sar    edx,0x1f
   40176:	f7 f9                	idiv   ecx
   40178:	89 86 60 10 00 00    	mov    DWORD PTR [esi+0x1060],eax
   4017e:	eb 06                	jmp    update_mod_76_2_branch_242
update_mod_76_2_branch_241:
   40180:	89 8e 60 10 00 00    	mov    DWORD PTR [esi+0x1060],ecx
update_mod_76_2_branch_242:
   40186:	3b 8b 68 10 00 00    	cmp    ecx,DWORD PTR [ebx+0x1068]
   4018c:	0f 84 0b ee ff ff    	je     update_mod_76_2_reference_2
   40192:	c7 83 5c 10 00 00 00 00 00 00 	mov    DWORD PTR [ebx+0x105c],0x0
   4019c:	89 8b 68 10 00 00    	mov    DWORD PTR [ebx+0x1068],ecx
   401a2:	e9 f6 ed ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_reference_25:
   401a7:	f6 86 8d 11 00 00 80 	test   BYTE PTR [esi+0x118d],0x80
   401ae:	0f 84 e9 ed ff ff    	je     update_mod_76_2_reference_2
   401b4:	c6 86 a0 11 00 00 1d 	mov    BYTE PTR [esi+0x11a0],0x1d
   401bb:	ba 8f 00 00 00       	mov    edx,0x8f
   401c0:	c6 86 a1 11 00 00 02 	mov    BYTE PTR [esi+0x11a1],0x2
   401c7:	b9 04 00 00 00       	mov    ecx,0x4
   401cc:	c7 86 78 10 00 00 8f 00 00 00 	mov    DWORD PTR [esi+0x1078],0x8f
   401d6:	89 f0                	mov    eax,esi
   401d8:	c7 86 6c 10 00 00 91 00 00 00 	mov    DWORD PTR [esi+0x106c],0x91
   401e2:	e8 b9 c6 ff ff       	call   go_to_frame_mod_76
   401e7:	89 f3                	mov    ebx,esi
   401e9:	85 c9                	test   ecx,ecx
   401eb:	74 14                	je     update_mod_76_2_branch_243
   401ed:	b8 64 00 00 00       	mov    eax,0x64
   401f2:	89 c2                	mov    edx,eax
   401f4:	c1 fa 1f             	sar    edx,0x1f
   401f7:	f7 f9                	idiv   ecx
   401f9:	89 86 60 10 00 00    	mov    DWORD PTR [esi+0x1060],eax
   401ff:	eb 06                	jmp    update_mod_76_2_branch_244
update_mod_76_2_branch_243:
   40201:	89 8e 60 10 00 00    	mov    DWORD PTR [esi+0x1060],ecx
update_mod_76_2_branch_244:
   40207:	3b 8b 68 10 00 00    	cmp    ecx,DWORD PTR [ebx+0x1068]
   4020d:	0f 84 8a ed ff ff    	je     update_mod_76_2_reference_2
   40213:	c7 83 5c 10 00 00 00 00 00 00 	mov    DWORD PTR [ebx+0x105c],0x0
   4021d:	89 8b 68 10 00 00    	mov    DWORD PTR [ebx+0x1068],ecx
   40223:	e9 75 ed ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_reference_26:
   40228:	f6 86 8d 11 00 00 40 	test   BYTE PTR [esi+0x118d],0x40
   4022f:	0f 84 68 ed ff ff    	je     update_mod_76_2_reference_2
   40235:	c6 86 a0 11 00 00 1c 	mov    BYTE PTR [esi+0x11a0],0x1c
   4023c:	ba 92 00 00 00       	mov    edx,0x92
   40241:	c6 86 a1 11 00 00 02 	mov    BYTE PTR [esi+0x11a1],0x2
   40248:	b9 04 00 00 00       	mov    ecx,0x4
   4024d:	c7 86 78 10 00 00 92 00 00 00 	mov    DWORD PTR [esi+0x1078],0x92
   40257:	89 f0                	mov    eax,esi
   40259:	c7 86 6c 10 00 00 94 00 00 00 	mov    DWORD PTR [esi+0x106c],0x94
   40263:	e8 38 c6 ff ff       	call   go_to_frame_mod_76
   40268:	89 f3                	mov    ebx,esi
   4026a:	85 c9                	test   ecx,ecx
   4026c:	74 14                	je     update_mod_76_2_branch_245
   4026e:	b8 64 00 00 00       	mov    eax,0x64
   40273:	89 c2                	mov    edx,eax
   40275:	c1 fa 1f             	sar    edx,0x1f
   40278:	f7 f9                	idiv   ecx
   4027a:	89 86 60 10 00 00    	mov    DWORD PTR [esi+0x1060],eax
   40280:	eb 06                	jmp    update_mod_76_2_branch_246
update_mod_76_2_branch_245:
   40282:	89 8e 60 10 00 00    	mov    DWORD PTR [esi+0x1060],ecx
update_mod_76_2_branch_246:
   40288:	3b 8b 68 10 00 00    	cmp    ecx,DWORD PTR [ebx+0x1068]
   4028e:	0f 84 09 ed ff ff    	je     update_mod_76_2_reference_2
   40294:	c7 83 5c 10 00 00 00 00 00 00 	mov    DWORD PTR [ebx+0x105c],0x0
   4029e:	89 8b 68 10 00 00    	mov    DWORD PTR [ebx+0x1068],ecx
   402a4:	e9 f4 ec ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_reference_27:
   402a9:	f6 86 8e 11 00 00 01 	test   BYTE PTR [esi+0x118e],0x1
   402b0:	0f 84 e7 ec ff ff    	je     update_mod_76_2_reference_2
   402b6:	c6 86 a0 11 00 00 21 	mov    BYTE PTR [esi+0x11a0],0x21
   402bd:	ba 95 00 00 00       	mov    edx,0x95
   402c2:	c6 86 a1 11 00 00 01 	mov    BYTE PTR [esi+0x11a1],0x1
   402c9:	b9 04 00 00 00       	mov    ecx,0x4
   402ce:	c7 86 78 10 00 00 95 00 00 00 	mov    DWORD PTR [esi+0x1078],0x95
   402d8:	89 f0                	mov    eax,esi
   402da:	c7 86 6c 10 00 00 97 00 00 00 	mov    DWORD PTR [esi+0x106c],0x97
   402e4:	e8 b7 c5 ff ff       	call   go_to_frame_mod_76
   402e9:	89 f3                	mov    ebx,esi
   402eb:	85 c9                	test   ecx,ecx
   402ed:	74 14                	je     update_mod_76_2_branch_247
   402ef:	b8 64 00 00 00       	mov    eax,0x64
   402f4:	89 c2                	mov    edx,eax
   402f6:	c1 fa 1f             	sar    edx,0x1f
   402f9:	f7 f9                	idiv   ecx
   402fb:	89 86 60 10 00 00    	mov    DWORD PTR [esi+0x1060],eax
   40301:	eb 06                	jmp    update_mod_76_2_branch_248
update_mod_76_2_branch_247:
   40303:	89 8e 60 10 00 00    	mov    DWORD PTR [esi+0x1060],ecx
update_mod_76_2_branch_248:
   40309:	3b 8b 68 10 00 00    	cmp    ecx,DWORD PTR [ebx+0x1068]
   4030f:	0f 84 88 ec ff ff    	je     update_mod_76_2_reference_2
   40315:	c7 83 5c 10 00 00 00 00 00 00 	mov    DWORD PTR [ebx+0x105c],0x0
   4031f:	89 8b 68 10 00 00    	mov    DWORD PTR [ebx+0x1068],ecx
   40325:	e9 73 ec ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_reference_28:
   4032a:	f6 86 8d 11 00 00 80 	test   BYTE PTR [esi+0x118d],0x80
   40331:	0f 84 66 ec ff ff    	je     update_mod_76_2_reference_2
   40337:	c6 86 a0 11 00 00 20 	mov    BYTE PTR [esi+0x11a0],0x20
   4033e:	ba 98 00 00 00       	mov    edx,0x98
   40343:	c6 86 a1 11 00 00 01 	mov    BYTE PTR [esi+0x11a1],0x1
   4034a:	b9 04 00 00 00       	mov    ecx,0x4
   4034f:	c7 86 78 10 00 00 98 00 00 00 	mov    DWORD PTR [esi+0x1078],0x98
   40359:	89 f0                	mov    eax,esi
   4035b:	c7 86 6c 10 00 00 9a 00 00 00 	mov    DWORD PTR [esi+0x106c],0x9a
   40365:	e8 36 c5 ff ff       	call   go_to_frame_mod_76
   4036a:	89 f3                	mov    ebx,esi
   4036c:	85 c9                	test   ecx,ecx
   4036e:	74 14                	je     update_mod_76_2_branch_249
   40370:	b8 64 00 00 00       	mov    eax,0x64
   40375:	89 c2                	mov    edx,eax
   40377:	c1 fa 1f             	sar    edx,0x1f
   4037a:	f7 f9                	idiv   ecx
   4037c:	89 86 60 10 00 00    	mov    DWORD PTR [esi+0x1060],eax
   40382:	eb 06                	jmp    update_mod_76_2_branch_250
update_mod_76_2_branch_249:
   40384:	89 8e 60 10 00 00    	mov    DWORD PTR [esi+0x1060],ecx
update_mod_76_2_branch_250:
   4038a:	3b 8b 68 10 00 00    	cmp    ecx,DWORD PTR [ebx+0x1068]
   40390:	0f 84 07 ec ff ff    	je     update_mod_76_2_reference_2
   40396:	c7 83 5c 10 00 00 00 00 00 00 	mov    DWORD PTR [ebx+0x105c],0x0
   403a0:	89 8b 68 10 00 00    	mov    DWORD PTR [ebx+0x1068],ecx
   403a6:	e9 f2 eb ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_reference_29:
   403ab:	f6 86 8d 11 00 00 40 	test   BYTE PTR [esi+0x118d],0x40
   403b2:	0f 84 e5 eb ff ff    	je     update_mod_76_2_reference_2
   403b8:	c6 86 a0 11 00 00 1f 	mov    BYTE PTR [esi+0x11a0],0x1f
   403bf:	ba 9b 00 00 00       	mov    edx,0x9b
   403c4:	c6 86 a1 11 00 00 01 	mov    BYTE PTR [esi+0x11a1],0x1
   403cb:	b9 04 00 00 00       	mov    ecx,0x4
   403d0:	c7 86 78 10 00 00 9b 00 00 00 	mov    DWORD PTR [esi+0x1078],0x9b
   403da:	89 f0                	mov    eax,esi
   403dc:	c7 86 6c 10 00 00 9d 00 00 00 	mov    DWORD PTR [esi+0x106c],0x9d
   403e6:	e8 b5 c4 ff ff       	call   go_to_frame_mod_76
   403eb:	89 f3                	mov    ebx,esi
   403ed:	85 c9                	test   ecx,ecx
   403ef:	74 14                	je     update_mod_76_2_branch_251
   403f1:	b8 64 00 00 00       	mov    eax,0x64
   403f6:	89 c2                	mov    edx,eax
   403f8:	c1 fa 1f             	sar    edx,0x1f
   403fb:	f7 f9                	idiv   ecx
   403fd:	89 86 60 10 00 00    	mov    DWORD PTR [esi+0x1060],eax
   40403:	eb 06                	jmp    update_mod_76_2_branch_252
update_mod_76_2_branch_251:
   40405:	89 8e 60 10 00 00    	mov    DWORD PTR [esi+0x1060],ecx
update_mod_76_2_branch_252:
   4040b:	3b 8b 68 10 00 00    	cmp    ecx,DWORD PTR [ebx+0x1068]
   40411:	0f 84 86 eb ff ff    	je     update_mod_76_2_reference_2
   40417:	c7 83 5c 10 00 00 00 00 00 00 	mov    DWORD PTR [ebx+0x105c],0x0
   40421:	89 8b 68 10 00 00    	mov    DWORD PTR [ebx+0x1068],ecx
   40427:	e9 71 eb ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_reference_30:
   4042c:	f6 86 8e 11 00 00 02 	test   BYTE PTR [esi+0x118e],0x2
   40433:	0f 84 64 eb ff ff    	je     update_mod_76_2_reference_2
   40439:	c7 86 a4 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x10a4],0x0
   40443:	db 86 a4 10 00 00    	fild   DWORD PTR [esi+0x10a4]
   40449:	d9 96 a8 10 00 00    	fst    DWORD PTR [esi+0x10a8]
   4044f:	e8 f4 58 03 00       	call   __CHP
   40454:	db 9e a0 10 00 00    	fistp  DWORD PTR [esi+0x10a0]
   4045a:	c6 86 a0 11 00 00 28 	mov    BYTE PTR [esi+0x11a0],0x28
   40461:	c6 86 a1 11 00 00 38 	mov    BYTE PTR [esi+0x11a1],0x38
   40468:	ba b0 00 00 00       	mov    edx,0xb0
   4046d:	c7 86 78 10 00 00 b0 00 00 00 	mov    DWORD PTR [esi+0x1078],0xb0
   40477:	89 f0                	mov    eax,esi
   40479:	c7 86 6c 10 00 00 b9 00 00 00 	mov    DWORD PTR [esi+0x106c],0xb9
   40483:	e8 18 c4 ff ff       	call   go_to_frame_mod_76
   40488:	8b be 68 11 00 00    	mov    edi,DWORD PTR [esi+0x1168]
   4048e:	85 ff                	test   edi,edi
   40490:	0f 84 07 eb ff ff    	je     update_mod_76_2_reference_2
   40496:	89 f8                	mov    eax,edi
   40498:	e8 13 93 fc ff       	call   play
   4049d:	e9 fb ea ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_reference_31:
   404a2:	f6 86 8e 11 00 00 02 	test   BYTE PTR [esi+0x118e],0x2
   404a9:	0f 84 ee ea ff ff    	je     update_mod_76_2_reference_2
   404af:	c7 86 a4 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x10a4],0x0
   404b9:	db 86 a4 10 00 00    	fild   DWORD PTR [esi+0x10a4]
   404bf:	d9 96 a8 10 00 00    	fst    DWORD PTR [esi+0x10a8]
   404c5:	e8 7e 58 03 00       	call   __CHP
   404ca:	db 9e a0 10 00 00    	fistp  DWORD PTR [esi+0x10a0]
   404d0:	c6 86 a0 11 00 00 29 	mov    BYTE PTR [esi+0x11a0],0x29
   404d7:	c6 86 a1 11 00 00 38 	mov    BYTE PTR [esi+0x11a1],0x38
   404de:	ba ba 00 00 00       	mov    edx,0xba
   404e3:	c7 86 78 10 00 00 ba 00 00 00 	mov    DWORD PTR [esi+0x1078],0xba
   404ed:	89 f0                	mov    eax,esi
   404ef:	c7 86 6c 10 00 00 c3 00 00 00 	mov    DWORD PTR [esi+0x106c],0xc3
   404f9:	e8 a2 c3 ff ff       	call   go_to_frame_mod_76
   404fe:	8b 8e 68 11 00 00    	mov    ecx,DWORD PTR [esi+0x1168]
   40504:	85 c9                	test   ecx,ecx
   40506:	0f 84 91 ea ff ff    	je     update_mod_76_2_reference_2
   4050c:	89 c8                	mov    eax,ecx
   4050e:	e8 9d 92 fc ff       	call   play
   40513:	e9 85 ea ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_reference_32:
   40518:	f6 86 8e 11 00 00 04 	test   BYTE PTR [esi+0x118e],0x4
   4051f:	0f 84 78 ea ff ff    	je     update_mod_76_2_reference_2
   40525:	c7 86 a4 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x10a4],0x0
   4052f:	db 86 a4 10 00 00    	fild   DWORD PTR [esi+0x10a4]
   40535:	d9 96 a8 10 00 00    	fst    DWORD PTR [esi+0x10a8]
   4053b:	e8 08 58 03 00       	call   __CHP
   40540:	db 9e a0 10 00 00    	fistp  DWORD PTR [esi+0x10a0]
   40546:	c6 86 a0 11 00 00 2a 	mov    BYTE PTR [esi+0x11a0],0x2a
   4054d:	c6 86 a1 11 00 00 38 	mov    BYTE PTR [esi+0x11a1],0x38
   40554:	ba 00 01 00 00       	mov    edx,0x100
   40559:	c7 86 78 10 00 00 00 01 00 00 	mov    DWORD PTR [esi+0x1078],0x100
   40563:	89 f0                	mov    eax,esi
   40565:	c7 86 6c 10 00 00 09 01 00 00 	mov    DWORD PTR [esi+0x106c],0x109
   4056f:	e8 2c c3 ff ff       	call   go_to_frame_mod_76
   40574:	8b 9e 68 11 00 00    	mov    ebx,DWORD PTR [esi+0x1168]
   4057a:	85 db                	test   ebx,ebx
   4057c:	0f 84 1b ea ff ff    	je     update_mod_76_2_reference_2
   40582:	89 d8                	mov    eax,ebx
   40584:	e8 27 92 fc ff       	call   play
   40589:	e9 0f ea ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_reference_33:
   4058e:	f6 86 8e 11 00 00 04 	test   BYTE PTR [esi+0x118e],0x4
   40595:	0f 84 02 ea ff ff    	je     update_mod_76_2_reference_2
   4059b:	c7 86 a4 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x10a4],0x0
   405a5:	db 86 a4 10 00 00    	fild   DWORD PTR [esi+0x10a4]
   405ab:	d9 96 a8 10 00 00    	fst    DWORD PTR [esi+0x10a8]
   405b1:	e8 92 57 03 00       	call   __CHP
   405b6:	db 9e a0 10 00 00    	fistp  DWORD PTR [esi+0x10a0]
   405bc:	c6 86 a0 11 00 00 2b 	mov    BYTE PTR [esi+0x11a0],0x2b
   405c3:	c6 86 a1 11 00 00 38 	mov    BYTE PTR [esi+0x11a1],0x38
   405ca:	ba 0a 01 00 00       	mov    edx,0x10a
   405cf:	c7 86 78 10 00 00 0a 01 00 00 	mov    DWORD PTR [esi+0x1078],0x10a
   405d9:	89 f0                	mov    eax,esi
   405db:	c7 86 6c 10 00 00 13 01 00 00 	mov    DWORD PTR [esi+0x106c],0x113
   405e5:	e8 b6 c2 ff ff       	call   go_to_frame_mod_76
   405ea:	8b 96 68 11 00 00    	mov    edx,DWORD PTR [esi+0x1168]
   405f0:	85 d2                	test   edx,edx
   405f2:	0f 84 a5 e9 ff ff    	je     update_mod_76_2_reference_2
   405f8:	89 d0                	mov    eax,edx
   405fa:	e8 b1 91 fc ff       	call   play
   405ff:	e9 99 e9 ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_reference_34:
   40604:	f6 86 8e 11 00 00 08 	test   BYTE PTR [esi+0x118e],0x8
   4060b:	0f 84 8c e9 ff ff    	je     update_mod_76_2_reference_2
   40611:	c7 86 a4 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x10a4],0x0
   4061b:	db 86 a4 10 00 00    	fild   DWORD PTR [esi+0x10a4]
   40621:	d9 96 a8 10 00 00    	fst    DWORD PTR [esi+0x10a8]
   40627:	e8 1c 57 03 00       	call   __CHP
   4062c:	db 9e a0 10 00 00    	fistp  DWORD PTR [esi+0x10a0]
   40632:	c6 86 a0 11 00 00 2c 	mov    BYTE PTR [esi+0x11a0],0x2c
   40639:	c6 86 a1 11 00 00 38 	mov    BYTE PTR [esi+0x11a1],0x38
   40640:	ba 14 01 00 00       	mov    edx,0x114
   40645:	c7 86 78 10 00 00 14 01 00 00 	mov    DWORD PTR [esi+0x1078],0x114
   4064f:	89 f0                	mov    eax,esi
   40651:	c7 86 6c 10 00 00 1d 01 00 00 	mov    DWORD PTR [esi+0x106c],0x11d
   4065b:	e8 40 c2 ff ff       	call   go_to_frame_mod_76
   40660:	8b 86 68 11 00 00    	mov    eax,DWORD PTR [esi+0x1168]
   40666:	85 c0                	test   eax,eax
   40668:	0f 84 2f e9 ff ff    	je     update_mod_76_2_reference_2
   4066e:	e8 3d 91 fc ff       	call   play
   40673:	e9 25 e9 ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_reference_35:
   40678:	f6 86 8e 11 00 00 08 	test   BYTE PTR [esi+0x118e],0x8
   4067f:	0f 84 18 e9 ff ff    	je     update_mod_76_2_reference_2
   40685:	c7 86 a4 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x10a4],0x0
   4068f:	db 86 a4 10 00 00    	fild   DWORD PTR [esi+0x10a4]
   40695:	d9 96 a8 10 00 00    	fst    DWORD PTR [esi+0x10a8]
   4069b:	e8 a8 56 03 00       	call   __CHP
   406a0:	db 9e a0 10 00 00    	fistp  DWORD PTR [esi+0x10a0]
   406a6:	c6 86 a0 11 00 00 2d 	mov    BYTE PTR [esi+0x11a0],0x2d
   406ad:	c6 86 a1 11 00 00 38 	mov    BYTE PTR [esi+0x11a1],0x38
   406b4:	ba 1e 01 00 00       	mov    edx,0x11e
   406b9:	c7 86 78 10 00 00 1e 01 00 00 	mov    DWORD PTR [esi+0x1078],0x11e
   406c3:	89 f0                	mov    eax,esi
   406c5:	c7 86 6c 10 00 00 27 01 00 00 	mov    DWORD PTR [esi+0x106c],0x127
   406cf:	e8 cc c1 ff ff       	call   go_to_frame_mod_76
   406d4:	8b ae 68 11 00 00    	mov    ebp,DWORD PTR [esi+0x1168]
   406da:	85 ed                	test   ebp,ebp
   406dc:	0f 84 bb e8 ff ff    	je     update_mod_76_2_reference_2
   406e2:	89 e8                	mov    eax,ebp
   406e4:	e8 c7 90 fc ff       	call   play
   406e9:	e9 af e8 ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_reference_36:
   406ee:	f6 86 8e 11 00 00 02 	test   BYTE PTR [esi+0x118e],0x2
   406f5:	0f 84 a2 e8 ff ff    	je     update_mod_76_2_reference_2
   406fb:	c7 86 a4 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x10a4],0x0
   40705:	db 86 a4 10 00 00    	fild   DWORD PTR [esi+0x10a4]
   4070b:	d9 96 a8 10 00 00    	fst    DWORD PTR [esi+0x10a8]
   40711:	e8 32 56 03 00       	call   __CHP
   40716:	db 9e a0 10 00 00    	fistp  DWORD PTR [esi+0x10a0]
   4071c:	c6 86 a0 11 00 00 2e 	mov    BYTE PTR [esi+0x11a0],0x2e
   40723:	c6 86 a1 11 00 00 38 	mov    BYTE PTR [esi+0x11a1],0x38
   4072a:	ba c4 00 00 00       	mov    edx,0xc4
   4072f:	c7 86 78 10 00 00 c4 00 00 00 	mov    DWORD PTR [esi+0x1078],0xc4
   40739:	89 f0                	mov    eax,esi
   4073b:	c7 86 6c 10 00 00 cd 00 00 00 	mov    DWORD PTR [esi+0x106c],0xcd
   40745:	e8 56 c1 ff ff       	call   go_to_frame_mod_76
   4074a:	8b be 68 11 00 00    	mov    edi,DWORD PTR [esi+0x1168]
   40750:	85 ff                	test   edi,edi
   40752:	0f 84 45 e8 ff ff    	je     update_mod_76_2_reference_2
   40758:	89 f8                	mov    eax,edi
   4075a:	e8 51 90 fc ff       	call   play
   4075f:	e9 39 e8 ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_reference_37:
   40764:	f6 86 8e 11 00 00 02 	test   BYTE PTR [esi+0x118e],0x2
   4076b:	0f 84 2c e8 ff ff    	je     update_mod_76_2_reference_2
   40771:	c7 86 a4 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x10a4],0x0
   4077b:	db 86 a4 10 00 00    	fild   DWORD PTR [esi+0x10a4]
   40781:	d9 96 a8 10 00 00    	fst    DWORD PTR [esi+0x10a8]
   40787:	e8 bc 55 03 00       	call   __CHP
   4078c:	db 9e a0 10 00 00    	fistp  DWORD PTR [esi+0x10a0]
   40792:	c6 86 a0 11 00 00 2f 	mov    BYTE PTR [esi+0x11a0],0x2f
   40799:	c6 86 a1 11 00 00 38 	mov    BYTE PTR [esi+0x11a1],0x38
   407a0:	ba ce 00 00 00       	mov    edx,0xce
   407a5:	c7 86 78 10 00 00 ce 00 00 00 	mov    DWORD PTR [esi+0x1078],0xce
   407af:	89 f0                	mov    eax,esi
   407b1:	c7 86 6c 10 00 00 d7 00 00 00 	mov    DWORD PTR [esi+0x106c],0xd7
   407bb:	e8 e0 c0 ff ff       	call   go_to_frame_mod_76
   407c0:	8b 8e 68 11 00 00    	mov    ecx,DWORD PTR [esi+0x1168]
   407c6:	85 c9                	test   ecx,ecx
   407c8:	0f 84 cf e7 ff ff    	je     update_mod_76_2_reference_2
   407ce:	89 c8                	mov    eax,ecx
   407d0:	e8 db 8f fc ff       	call   play
   407d5:	e9 c3 e7 ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_reference_38:
   407da:	f6 86 8e 11 00 00 04 	test   BYTE PTR [esi+0x118e],0x4
   407e1:	0f 84 b6 e7 ff ff    	je     update_mod_76_2_reference_2
   407e7:	c7 86 a4 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x10a4],0x0
   407f1:	db 86 a4 10 00 00    	fild   DWORD PTR [esi+0x10a4]
   407f7:	d9 96 a8 10 00 00    	fst    DWORD PTR [esi+0x10a8]
   407fd:	e8 46 55 03 00       	call   __CHP
   40802:	db 9e a0 10 00 00    	fistp  DWORD PTR [esi+0x10a0]
   40808:	c6 86 a0 11 00 00 30 	mov    BYTE PTR [esi+0x11a0],0x30
   4080f:	c6 86 a1 11 00 00 38 	mov    BYTE PTR [esi+0x11a1],0x38
   40816:	ba d8 00 00 00       	mov    edx,0xd8
   4081b:	c7 86 78 10 00 00 d8 00 00 00 	mov    DWORD PTR [esi+0x1078],0xd8
   40825:	89 f0                	mov    eax,esi
   40827:	c7 86 6c 10 00 00 e1 00 00 00 	mov    DWORD PTR [esi+0x106c],0xe1
   40831:	e8 6a c0 ff ff       	call   go_to_frame_mod_76
   40836:	8b 9e 68 11 00 00    	mov    ebx,DWORD PTR [esi+0x1168]
   4083c:	85 db                	test   ebx,ebx
   4083e:	0f 84 59 e7 ff ff    	je     update_mod_76_2_reference_2
   40844:	89 d8                	mov    eax,ebx
   40846:	e8 65 8f fc ff       	call   play
   4084b:	e9 4d e7 ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_reference_39:
   40850:	f6 86 8e 11 00 00 04 	test   BYTE PTR [esi+0x118e],0x4
   40857:	0f 84 40 e7 ff ff    	je     update_mod_76_2_reference_2
   4085d:	c7 86 a4 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x10a4],0x0
   40867:	db 86 a4 10 00 00    	fild   DWORD PTR [esi+0x10a4]
   4086d:	d9 96 a8 10 00 00    	fst    DWORD PTR [esi+0x10a8]
   40873:	e8 d0 54 03 00       	call   __CHP
   40878:	db 9e a0 10 00 00    	fistp  DWORD PTR [esi+0x10a0]
   4087e:	c6 86 a0 11 00 00 31 	mov    BYTE PTR [esi+0x11a0],0x31
   40885:	c6 86 a1 11 00 00 38 	mov    BYTE PTR [esi+0x11a1],0x38
   4088c:	ba e2 00 00 00       	mov    edx,0xe2
   40891:	c7 86 78 10 00 00 e2 00 00 00 	mov    DWORD PTR [esi+0x1078],0xe2
   4089b:	89 f0                	mov    eax,esi
   4089d:	c7 86 6c 10 00 00 eb 00 00 00 	mov    DWORD PTR [esi+0x106c],0xeb
   408a7:	e8 f4 bf ff ff       	call   go_to_frame_mod_76
   408ac:	8b 96 68 11 00 00    	mov    edx,DWORD PTR [esi+0x1168]
   408b2:	85 d2                	test   edx,edx
   408b4:	0f 84 e3 e6 ff ff    	je     update_mod_76_2_reference_2
   408ba:	89 d0                	mov    eax,edx
   408bc:	e8 ef 8e fc ff       	call   play
   408c1:	e9 d7 e6 ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_reference_40:
   408c6:	f6 86 8e 11 00 00 08 	test   BYTE PTR [esi+0x118e],0x8
   408cd:	0f 84 ca e6 ff ff    	je     update_mod_76_2_reference_2
   408d3:	c7 86 a4 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x10a4],0x0
   408dd:	db 86 a4 10 00 00    	fild   DWORD PTR [esi+0x10a4]
   408e3:	d9 96 a8 10 00 00    	fst    DWORD PTR [esi+0x10a8]
   408e9:	e8 5a 54 03 00       	call   __CHP
   408ee:	db 9e a0 10 00 00    	fistp  DWORD PTR [esi+0x10a0]
   408f4:	c6 86 a0 11 00 00 32 	mov    BYTE PTR [esi+0x11a0],0x32
   408fb:	c6 86 a1 11 00 00 38 	mov    BYTE PTR [esi+0x11a1],0x38
   40902:	ba ec 00 00 00       	mov    edx,0xec
   40907:	c7 86 78 10 00 00 ec 00 00 00 	mov    DWORD PTR [esi+0x1078],0xec
   40911:	89 f0                	mov    eax,esi
   40913:	c7 86 6c 10 00 00 f5 00 00 00 	mov    DWORD PTR [esi+0x106c],0xf5
   4091d:	e8 7e bf ff ff       	call   go_to_frame_mod_76
   40922:	8b 86 68 11 00 00    	mov    eax,DWORD PTR [esi+0x1168]
   40928:	85 c0                	test   eax,eax
   4092a:	0f 84 6d e6 ff ff    	je     update_mod_76_2_reference_2
   40930:	e8 7b 8e fc ff       	call   play
   40935:	e9 63 e6 ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_reference_41:
   4093a:	f6 86 8e 11 00 00 08 	test   BYTE PTR [esi+0x118e],0x8
   40941:	0f 84 56 e6 ff ff    	je     update_mod_76_2_reference_2
   40947:	c7 86 a4 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x10a4],0x0
   40951:	db 86 a4 10 00 00    	fild   DWORD PTR [esi+0x10a4]
   40957:	d9 96 a8 10 00 00    	fst    DWORD PTR [esi+0x10a8]
   4095d:	e8 e6 53 03 00       	call   __CHP
   40962:	db 9e a0 10 00 00    	fistp  DWORD PTR [esi+0x10a0]
   40968:	c6 86 a0 11 00 00 33 	mov    BYTE PTR [esi+0x11a0],0x33
   4096f:	c6 86 a1 11 00 00 38 	mov    BYTE PTR [esi+0x11a1],0x38
   40976:	ba f6 00 00 00       	mov    edx,0xf6
   4097b:	c7 86 78 10 00 00 f6 00 00 00 	mov    DWORD PTR [esi+0x1078],0xf6
   40985:	89 f0                	mov    eax,esi
   40987:	c7 86 6c 10 00 00 ff 00 00 00 	mov    DWORD PTR [esi+0x106c],0xff
   40991:	e8 0a bf ff ff       	call   go_to_frame_mod_76
   40996:	8b ae 68 11 00 00    	mov    ebp,DWORD PTR [esi+0x1168]
   4099c:	85 ed                	test   ebp,ebp
   4099e:	0f 84 f9 e5 ff ff    	je     update_mod_76_2_reference_2
   409a4:	89 e8                	mov    eax,ebp
   409a6:	e8 05 8e fc ff       	call   play
   409ab:	e9 ed e5 ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_reference_42:
   409b0:	c7 86 a4 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x10a4],0x0
   409ba:	db 86 a4 10 00 00    	fild   DWORD PTR [esi+0x10a4]
   409c0:	d9 96 a8 10 00 00    	fst    DWORD PTR [esi+0x10a8]
   409c6:	e8 7d 53 03 00       	call   __CHP
   409cb:	c7 86 ac 10 00 00 ff ff ff ff 	mov    DWORD PTR [esi+0x10ac],0xffffffff
   409d5:	c7 86 b4 10 00 00 00 00 c6 c2 	mov    DWORD PTR [esi+0x10b4],0xc2c60000
   409df:	c7 86 24 11 00 00 ff ff ff ff 	mov    DWORD PTR [esi+0x1124],0xffffffff
   409e9:	8a 96 a0 11 00 00    	mov    dl,BYTE PTR [esi+0x11a0]
   409ef:	db 9e a0 10 00 00    	fistp  DWORD PTR [esi+0x10a0]
   409f5:	80 fa 38             	cmp    dl,0x38
   409f8:	0f 84 9f e5 ff ff    	je     update_mod_76_2_reference_2
   409fe:	8b 86 64 10 00 00    	mov    eax,DWORD PTR [esi+0x1064]
   40a04:	3b 86 6c 10 00 00    	cmp    eax,DWORD PTR [esi+0x106c]
   40a0a:	0f 85 8d e5 ff ff    	jne    update_mod_76_2_reference_2
   40a10:	c6 86 a0 11 00 00 38 	mov    BYTE PTR [esi+0x11a0],0x38
   40a17:	8b 1d b4 5a 02 00    	mov    ebx,DWORD PTR ds:@obj3:monster_list                          ; fixup: num: 10978, src obj: 1, src ofs: 0x40a19, dst obj: 3, dst ofs: 0x25ab4
   40a1d:	c6 46 08 00          	mov    BYTE PTR [esi+0x8],0x0
   40a21:	85 db                	test   ebx,ebx
   40a23:	0f 84 74 e5 ff ff    	je     update_mod_76_2_reference_2
update_mod_76_2_branch_253:
   40a29:	8b 56 10             	mov    edx,DWORD PTR [esi+0x10]
   40a2c:	8b 43 34             	mov    eax,DWORD PTR [ebx+0x34]
   40a2f:	e8 fc 59 03 00       	call   strcmp_
   40a34:	85 c0                	test   eax,eax
   40a36:	75 2e                	jne    update_mod_76_2_branch_254
   40a38:	c6 83 84 00 00 00 01 	mov    BYTE PTR [ebx+0x84],0x1
   40a3f:	8b 86 64 10 00 00    	mov    eax,DWORD PTR [esi+0x1064]
   40a45:	89 43 28             	mov    DWORD PTR [ebx+0x28],eax
   40a48:	8b 43 2c             	mov    eax,DWORD PTR [ebx+0x2c]
   40a4b:	e8 90 04 01 00       	call   execute_command
   40a50:	c7 05 bc 60 02 00 01 00 00 00 	mov    DWORD PTR ds:@obj3:godeathflic_demands,0x1          ; fixup: num: 10977, src obj: 1, src ofs: 0x40a52, dst obj: 3, dst ofs: 0x260bc
   40a5a:	30 c0                	xor    al,al
   40a5c:	83 c4 40             	add    esp,0x40
   40a5f:	5d                   	pop    ebp
   40a60:	5f                   	pop    edi
   40a61:	5e                   	pop    esi
   40a62:	5a                   	pop    edx
   40a63:	59                   	pop    ecx
   40a64:	5b                   	pop    ebx
   40a65:	c3                   	ret    
update_mod_76_2_branch_254:
   40a66:	8b 9b 90 00 00 00    	mov    ebx,DWORD PTR [ebx+0x90]
   40a6c:	85 db                	test   ebx,ebx
   40a6e:	75 b9                	jne    update_mod_76_2_branch_253
   40a70:	e9 28 e5 ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_reference_43:
   40a75:	8a b6 a0 11 00 00    	mov    dh,BYTE PTR [esi+0x11a0]
   40a7b:	80 fe 35             	cmp    dh,0x35
   40a7e:	0f 84 e4 01 00 00    	je     update_mod_76_2_branch_266
   40a84:	80 fe 38             	cmp    dh,0x38
   40a87:	0f 84 db 01 00 00    	je     update_mod_76_2_branch_266
   40a8d:	c7 86 a4 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x10a4],0x0
   40a97:	db 86 a4 10 00 00    	fild   DWORD PTR [esi+0x10a4]
   40a9d:	d9 96 a8 10 00 00    	fst    DWORD PTR [esi+0x10a8]
   40aa3:	e8 a0 52 03 00       	call   __CHP
   40aa8:	c6 86 a0 11 00 00 35 	mov    BYTE PTR [esi+0x11a0],0x35
   40aaf:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
   40ab2:	db 9e a0 10 00 00    	fistp  DWORD PTR [esi+0x10a0]
   40ab8:	e8 43 22 01 00       	call   get_npc
   40abd:	89 c3                	mov    ebx,eax
   40abf:	85 c0                	test   eax,eax
   40ac1:	0f 84 d6 e4 ff ff    	je     update_mod_76_2_reference_2
   40ac7:	ba 1c a6 00 00       	mov    edx,@obj3:classes_cpp_variable_110                           ; fixup: num: 10987, src obj: 1, src ofs: 0x40ac8, dst obj: 3, dst ofs: 0xa61c
   40acc:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
   40acf:	e8 5c 59 03 00       	call   strcmp_
   40ad4:	85 c0                	test   eax,eax
   40ad6:	0f 85 b3 00 00 00    	jne    update_mod_76_2_branch_260
   40adc:	d9 46 1c             	fld    DWORD PTR [esi+0x1c]
   40adf:	dc 05 9d a7 00 00    	fadd   QWORD PTR ds:@obj3:classes_cpp_variable_138                  ; fixup: num: 10986, src obj: 1, src ofs: 0x40ae1, dst obj: 3, dst ofs: 0xa79d
   40ae5:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 10985, src obj: 1, src ofs: 0x40ae6, dst obj: 3, dst ofs: 0x25bd4
   40aea:	d9 58 1c             	fstp   DWORD PTR [eax+0x1c]
   40aed:	8b 96 84 11 00 00    	mov    edx,DWORD PTR [esi+0x1184]
   40af3:	d9 40 1c             	fld    DWORD PTR [eax+0x1c]
   40af6:	52                   	push   edx
   40af7:	b8 28 a6 00 00       	mov    eax,@obj3:classes_cpp_variable_111                           ; fixup: num: 10984, src obj: 1, src ofs: 0x40af8, dst obj: 3, dst ofs: 0xa628
   40afc:	50                   	push   eax
   40afd:	b8 fc 37 02 00       	mov    eax,@obj3:log_buffer                                         ; fixup: num: 10983, src obj: 1, src ofs: 0x40afe, dst obj: 3, dst ofs: 0x237fc
   40b02:	b1 01                	mov    cl,0x1
   40b04:	50                   	push   eax
   40b05:	88 0d 9c 60 02 00    	mov    BYTE PTR ds:@obj3:combat_mode,cl                             ; fixup: num: 10982, src obj: 1, src ofs: 0x40b07, dst obj: 3, dst ofs: 0x2609c
   40b0b:	d9 1d a0 60 02 00    	fstp   DWORD PTR ds:@obj3:combat_plane                              ; fixup: num: 10981, src obj: 1, src ofs: 0x40b0d, dst obj: 3, dst ofs: 0x260a0
   40b11:	e8 cb 00 03 00       	call   sprintf_
   40b16:	8b 8e 84 11 00 00    	mov    ecx,DWORD PTR [esi+0x1184]
   40b1c:	49                   	dec    ecx
   40b1d:	83 c4 0c             	add    esp,0xc
   40b20:	89 8e 84 11 00 00    	mov    DWORD PTR [esi+0x1184],ecx
   40b26:	83 f9 07             	cmp    ecx,0x7
   40b29:	7f 4b                	jg     update_mod_76_2_branch_259
   40b2b:	85 c9                	test   ecx,ecx
   40b2d:	7c 47                	jl     update_mod_76_2_branch_259
   40b2f:	83 f9 07             	cmp    ecx,0x7
   40b32:	75 07                	jne    update_mod_76_2_branch_255
   40b34:	a1 f8 59 02 00       	mov    eax,ds:@obj3:stef_scrm                                       ; fixup: num: 10980, src obj: 1, src ofs: 0x40b35, dst obj: 3, dst ofs: 0x259f8
   40b39:	eb 2c                	jmp    update_mod_76_2_branch_257
update_mod_76_2_branch_255:
   40b3b:	8b 86 84 11 00 00    	mov    eax,DWORD PTR [esi+0x1184]
   40b41:	89 c2                	mov    edx,eax
   40b43:	b9 02 00 00 00       	mov    ecx,0x2
   40b48:	c1 fa 1f             	sar    edx,0x1f
   40b4b:	f7 f9                	idiv   ecx
   40b4d:	85 d2                	test   edx,edx
   40b4f:	75 11                	jne    update_mod_76_2_branch_256
   40b51:	a1 fc 59 02 00       	mov    eax,ds:@obj3:stef_scrm_variable_1                            ; fixup: num: 10979, src obj: 1, src ofs: 0x40b52, dst obj: 3, dst ofs: 0x259fc
   40b56:	e8 e5 8c fc ff       	call   stop
   40b5b:	a1 00 5a 02 00       	mov    eax,ds:@obj3:stef_scrm_variable_2                            ; fixup: num: 10993, src obj: 1, src ofs: 0x40b5c, dst obj: 3, dst ofs: 0x25a00
   40b60:	eb 0f                	jmp    update_mod_76_2_branch_258
update_mod_76_2_branch_256:
   40b62:	a1 00 5a 02 00       	mov    eax,ds:@obj3:stef_scrm_variable_2                            ; fixup: num: 10992, src obj: 1, src ofs: 0x40b63, dst obj: 3, dst ofs: 0x25a00
update_mod_76_2_branch_257:
   40b67:	e8 d4 8c fc ff       	call   stop
   40b6c:	a1 fc 59 02 00       	mov    eax,ds:@obj3:stef_scrm_variable_1                            ; fixup: num: 10991, src obj: 1, src ofs: 0x40b6d, dst obj: 3, dst ofs: 0x259fc
update_mod_76_2_branch_258:
   40b71:	e8 3a 8c fc ff       	call   play
update_mod_76_2_branch_259:
   40b76:	8b 96 84 11 00 00    	mov    edx,DWORD PTR [esi+0x1184]
   40b7c:	52                   	push   edx
   40b7d:	68 38 a6 00 00       	push   @obj3:classes_cpp_variable_112                               ; fixup: num: 10990, src obj: 1, src ofs: 0x40b7e, dst obj: 3, dst ofs: 0xa638
   40b82:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 10989, src obj: 1, src ofs: 0x40b83, dst obj: 3, dst ofs: 0x237fc
   40b87:	e8 55 00 03 00       	call   sprintf_
   40b8c:	83 c4 0c             	add    esp,0xc
update_mod_76_2_branch_260:
   40b8f:	8b 8e 68 11 00 00    	mov    ecx,DWORD PTR [esi+0x1168]
   40b95:	85 c9                	test   ecx,ecx
   40b97:	74 07                	je     update_mod_76_2_branch_261
   40b99:	89 c8                	mov    eax,ecx
   40b9b:	e8 10 8c fc ff       	call   play
update_mod_76_2_branch_261:
   40ba0:	83 7b 1c 00          	cmp    DWORD PTR [ebx+0x1c],0x0
   40ba4:	74 25                	je     update_mod_76_2_branch_262
   40ba6:	ba 3c 00 00 00       	mov    edx,0x3c
   40bab:	c7 86 78 10 00 00 3c 00 00 00 	mov    DWORD PTR [esi+0x1078],0x3c
   40bb5:	89 f0                	mov    eax,esi
   40bb7:	c7 86 6c 10 00 00 45 00 00 00 	mov    DWORD PTR [esi+0x106c],0x45
   40bc1:	e8 da bc ff ff       	call   go_to_frame_mod_76
   40bc6:	e9 d2 e3 ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_branch_262:
   40bcb:	8a ae 88 11 00 00    	mov    ch,BYTE PTR [esi+0x1188]
   40bd1:	f6 c5 01             	test   ch,0x1
   40bd4:	75 09                	jne    update_mod_76_2_branch_263
   40bd6:	80 3d bc 0f 01 00 00 	cmp    BYTE PTR ds:@obj3:gore,0x0                                   ; fixup: num: 10988, src obj: 1, src ofs: 0x40bd8, dst obj: 3, dst ofs: 0x10fbc
   40bdd:	75 2c                	jne    update_mod_76_2_branch_264
update_mod_76_2_branch_263:
   40bdf:	ba 46 00 00 00       	mov    edx,0x46
   40be4:	c7 86 78 10 00 00 46 00 00 00 	mov    DWORD PTR [esi+0x1078],0x46
   40bee:	89 f0                	mov    eax,esi
   40bf0:	c7 86 6c 10 00 00 4f 00 00 00 	mov    DWORD PTR [esi+0x106c],0x4f
   40bfa:	e8 a1 bc ff ff       	call   go_to_frame_mod_76
   40bff:	c7 43 2c 01 00 00 00 	mov    DWORD PTR [ebx+0x2c],0x1
   40c06:	e9 92 e3 ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_branch_264:
   40c0b:	f6 c5 02             	test   ch,0x2
   40c0e:	74 2c                	je     update_mod_76_2_branch_265
   40c10:	ba 3c 00 00 00       	mov    edx,0x3c
   40c15:	c7 86 78 10 00 00 3c 00 00 00 	mov    DWORD PTR [esi+0x1078],0x3c
   40c1f:	89 f0                	mov    eax,esi
   40c21:	c7 86 6c 10 00 00 45 00 00 00 	mov    DWORD PTR [esi+0x106c],0x45
   40c2b:	e8 70 bc ff ff       	call   go_to_frame_mod_76
   40c30:	c7 43 2c 02 00 00 00 	mov    DWORD PTR [ebx+0x2c],0x2
   40c37:	e9 61 e3 ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_branch_265:
   40c3c:	ba 3c 00 00 00       	mov    edx,0x3c
   40c41:	c7 86 78 10 00 00 3c 00 00 00 	mov    DWORD PTR [esi+0x1078],0x3c
   40c4b:	89 f0                	mov    eax,esi
   40c4d:	c7 86 6c 10 00 00 45 00 00 00 	mov    DWORD PTR [esi+0x106c],0x45
   40c57:	e8 44 bc ff ff       	call   go_to_frame_mod_76
   40c5c:	c7 43 2c 04 00 00 00 	mov    DWORD PTR [ebx+0x2c],0x4
   40c63:	e9 35 e3 ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_branch_266:
   40c68:	8b 86 64 10 00 00    	mov    eax,DWORD PTR [esi+0x1064]
   40c6e:	3b 86 6c 10 00 00    	cmp    eax,DWORD PTR [esi+0x106c]
   40c74:	0f 85 23 e3 ff ff    	jne    update_mod_76_2_reference_2
   40c7a:	ba 48 a6 00 00       	mov    edx,@obj3:classes_cpp_variable_113                           ; fixup: num: 10996, src obj: 1, src ofs: 0x40c7b, dst obj: 3, dst ofs: 0xa648
   40c7f:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
   40c82:	e8 a9 57 03 00       	call   strcmp_
   40c87:	85 c0                	test   eax,eax
   40c89:	75 5c                	jne    update_mod_76_2_branch_267
   40c8b:	d9 46 1c             	fld    DWORD PTR [esi+0x1c]
   40c8e:	dc 05 9d a7 00 00    	fadd   QWORD PTR ds:@obj3:classes_cpp_variable_138                  ; fixup: num: 10995, src obj: 1, src ofs: 0x40c90, dst obj: 3, dst ofs: 0xa79d
   40c94:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 10994, src obj: 1, src ofs: 0x40c95, dst obj: 3, dst ofs: 0x25bd4
   40c99:	d9 50 1c             	fst    DWORD PTR [eax+0x1c]
   40c9c:	c6 86 a0 11 00 00 34 	mov    BYTE PTR [esi+0x11a0],0x34
   40ca3:	c7 86 78 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x1078],0x0
   40cad:	b7 01                	mov    bh,0x1
   40caf:	c7 86 6c 10 00 00 3b 00 00 00 	mov    DWORD PTR [esi+0x106c],0x3b
   40cb9:	31 d2                	xor    edx,edx
   40cbb:	8a 86 a0 11 00 00    	mov    al,BYTE PTR [esi+0x11a0]
   40cc1:	88 3d 9c 60 02 00    	mov    BYTE PTR ds:@obj3:combat_mode,bh                             ; fixup: num: 10999, src obj: 1, src ofs: 0x40cc3, dst obj: 3, dst ofs: 0x2609c
   40cc7:	88 86 a1 11 00 00    	mov    BYTE PTR [esi+0x11a1],al
   40ccd:	89 f0                	mov    eax,esi
   40ccf:	d9 1d a0 60 02 00    	fstp   DWORD PTR ds:@obj3:combat_plane                              ; fixup: num: 10998, src obj: 1, src ofs: 0x40cd1, dst obj: 3, dst ofs: 0x260a0
   40cd5:	e8 c6 bb ff ff       	call   go_to_frame_mod_76
   40cda:	83 be 84 11 00 00 00 	cmp    DWORD PTR [esi+0x1184],0x0
   40ce1:	0f 8f b6 e2 ff ff    	jg     update_mod_76_2_reference_2
update_mod_76_2_branch_267:
   40ce7:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
   40cea:	c6 46 08 00          	mov    BYTE PTR [esi+0x8],0x0
   40cee:	e8 0d 20 01 00       	call   get_npc
   40cf3:	89 04 24             	mov    DWORD PTR [esp],eax
   40cf6:	85 c0                	test   eax,eax
   40cf8:	0f 84 9f e2 ff ff    	je     update_mod_76_2_reference_2
   40cfe:	8b 68 1c             	mov    ebp,DWORD PTR [eax+0x1c]
   40d01:	85 ed                	test   ebp,ebp
   40d03:	0f 84 13 08 00 00    	je     update_mod_76_2_branch_326
   40d09:	89 e8                	mov    eax,ebp
   40d0b:	e8 30 20 01 00       	call   get_monster
   40d10:	89 c5                	mov    ebp,eax
   40d12:	85 c0                	test   eax,eax
   40d14:	0f 84 83 e2 ff ff    	je     update_mod_76_2_reference_2
   40d1a:	8b 8e a8 11 00 00    	mov    ecx,DWORD PTR [esi+0x11a8]
   40d20:	85 c9                	test   ecx,ecx
   40d22:	74 2d                	je     update_mod_76_2_branch_268
   40d24:	8b b9 84 10 00 00    	mov    edi,DWORD PTR [ecx+0x1084]
   40d2a:	89 ca                	mov    edx,ecx
   40d2c:	85 ff                	test   edi,edi
   40d2e:	7c 21                	jl     update_mod_76_2_branch_268
   40d30:	8d 47 ff             	lea    eax,[edi-0x1]
   40d33:	89 81 84 10 00 00    	mov    DWORD PTR [ecx+0x1084],eax
   40d39:	83 f8 ff             	cmp    eax,0xffffffff
   40d3c:	75 13                	jne    update_mod_76_2_branch_268
   40d3e:	83 b9 64 10 00 00 00 	cmp    DWORD PTR [ecx+0x1064],0x0
   40d45:	7c 0a                	jl     update_mod_76_2_branch_268
   40d47:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 10997, src obj: 1, src ofs: 0x40d48, dst obj: 3, dst ofs: 0x25a88
   40d4c:	e8 9f b9 00 00       	call   remove_bitmap
update_mod_76_2_branch_268:
   40d51:	8b 04 24             	mov    eax,DWORD PTR [esp]
   40d54:	c6 40 25 00          	mov    BYTE PTR [eax+0x25],0x0
   40d58:	c6 40 26 00          	mov    BYTE PTR [eax+0x26],0x0
   40d5c:	c6 40 24 01          	mov    BYTE PTR [eax+0x24],0x1
   40d60:	c6 86 a0 11 00 00 38 	mov    BYTE PTR [esi+0x11a0],0x38
   40d67:	8a 86 a0 11 00 00    	mov    al,BYTE PTR [esi+0x11a0]
   40d6d:	88 86 a1 11 00 00    	mov    BYTE PTR [esi+0x11a1],al
   40d73:	c6 85 80 00 00 00 01 	mov    BYTE PTR [ebp+0x80],0x1
   40d7a:	c6 85 81 00 00 00 01 	mov    BYTE PTR [ebp+0x81],0x1
   40d81:	d9 46 1c             	fld    DWORD PTR [esi+0x1c]
   40d84:	e8 bf 4f 03 00       	call   __CHP
   40d89:	b8 bc 11 00 00       	mov    eax,0x11bc
   40d8e:	db 5d 08             	fistp  DWORD PTR [ebp+0x8]
   40d91:	e8 82 11 03 00       	call   W?$nwn(ui)pnv
   40d96:	85 c0                	test   eax,eax
   40d98:	0f 84 19 07 00 00    	je     update_mod_76_2_branch_323
   40d9e:	68 93 14 07 00       	push   @obj1:_nmalloc_                                              ; aliases: _nmalloc_, malloc_; fixup: num: 11000, src obj: 1, src ofs: 0x40d9f, dst obj: 1, dst ofs: 0x71493
   40da3:	6a 00                	push   0x0
   40da5:	8b 55 20             	mov    edx,DWORD PTR [ebp+0x20]
   40da8:	52                   	push   edx
   40da9:	6a 05                	push   0x5
   40dab:	83 ec 04             	sub    esp,0x4
   40dae:	db 45 08             	fild   DWORD PTR [ebp+0x8]
   40db1:	d9 1c 24             	fstp   DWORD PTR [esp]
   40db4:	8b 5d 04             	mov    ebx,DWORD PTR [ebp+0x4]
   40db7:	8b 4d 00             	mov    ecx,DWORD PTR [ebp+0x0]
   40dba:	53                   	push   ebx
   40dbb:	8b 55 30             	mov    edx,DWORD PTR [ebp+0x30]
   40dbe:	8b 5d 34             	mov    ebx,DWORD PTR [ebp+0x34]
   40dc1:	e8 7a c3 ff ff       	call   W?$ct:NON_PLAYER_CHARACTER$n(pnapnaiibiiipn(ui)pnv)_
   40dc6:	c7 80 68 11 00 00 00 00 00 00 	mov    DWORD PTR [eax+0x1168],0x0
   40dd0:	c7 80 34 11 00 00 00 00 00 00 	mov    DWORD PTR [eax+0x1134],0x0
   40dda:	c7 80 38 11 00 00 00 00 00 00 	mov    DWORD PTR [eax+0x1138],0x0
   40de4:	8b 50 30             	mov    edx,DWORD PTR [eax+0x30]
   40de7:	8b 58 40             	mov    ebx,DWORD PTR [eax+0x40]
   40dea:	c7 40 38 06 00 00 00 	mov    DWORD PTR [eax+0x38],0x6
   40df1:	29 d3                	sub    ebx,edx
   40df3:	89 58 40             	mov    DWORD PTR [eax+0x40],ebx
   40df6:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
   40df9:	89 90 2c 11 00 00    	mov    DWORD PTR [eax+0x112c],edx
   40dff:	8b 55 18             	mov    edx,DWORD PTR [ebp+0x18]
   40e02:	89 90 80 11 00 00    	mov    DWORD PTR [eax+0x1180],edx
   40e08:	8a 95 80 00 00 00    	mov    dl,BYTE PTR [ebp+0x80]
   40e0e:	c7 80 9c 11 00 00 0f 27 00 00 	mov    DWORD PTR [eax+0x119c],0x270f
   40e18:	88 50 52             	mov    BYTE PTR [eax+0x52],dl
   40e1b:	8b 95 88 00 00 00    	mov    edx,DWORD PTR [ebp+0x88]
   40e21:	89 15 08 3c 01 00    	mov    DWORD PTR ds:@obj3:move_min_x,edx                            ; fixup: num: 11002, src obj: 1, src ofs: 0x40e23, dst obj: 3, dst ofs: 0x13c08
   40e27:	8b 95 8c 00 00 00    	mov    edx,DWORD PTR [ebp+0x8c]
   40e2d:	89 15 0c 3c 01 00    	mov    DWORD PTR ds:@obj3:move_max_x,edx                            ; fixup: num: 11001, src obj: 1, src ofs: 0x40e2f, dst obj: 3, dst ofs: 0x13c0c
   40e33:	8b 55 20             	mov    edx,DWORD PTR [ebp+0x20]
   40e36:	89 90 8c 11 00 00    	mov    DWORD PTR [eax+0x118c],edx
   40e3c:	8b 50 5c             	mov    edx,DWORD PTR [eax+0x5c]
   40e3f:	89 ef                	mov    edi,ebp
   40e41:	89 c1                	mov    ecx,eax
   40e43:	8b 6a 11             	mov    ebp,DWORD PTR [edx+0x11]
   40e46:	83 c2 08             	add    edx,0x8
   40e49:	83 fd 01             	cmp    ebp,0x1
   40e4c:	76 07                	jbe    update_mod_76_2_branch_269
   40e4e:	80 88 8c 11 00 00 08 	or     BYTE PTR [eax+0x118c],0x8
update_mod_76_2_branch_269:
   40e55:	8b 81 98 00 00 00    	mov    eax,DWORD PTR [ecx+0x98]
   40e5b:	8b 50 11             	mov    edx,DWORD PTR [eax+0x11]
   40e5e:	83 c0 08             	add    eax,0x8
   40e61:	83 fa 01             	cmp    edx,0x1
   40e64:	76 07                	jbe    update_mod_76_2_branch_270
   40e66:	80 89 8c 11 00 00 10 	or     BYTE PTR [ecx+0x118c],0x10
update_mod_76_2_branch_270:
   40e6d:	8b 81 d4 00 00 00    	mov    eax,DWORD PTR [ecx+0xd4]
   40e73:	8b 58 11             	mov    ebx,DWORD PTR [eax+0x11]
   40e76:	83 c0 08             	add    eax,0x8
   40e79:	83 fb 01             	cmp    ebx,0x1
   40e7c:	76 07                	jbe    update_mod_76_2_branch_271
   40e7e:	80 89 8c 11 00 00 20 	or     BYTE PTR [ecx+0x118c],0x20
update_mod_76_2_branch_271:
   40e85:	8b 81 10 01 00 00    	mov    eax,DWORD PTR [ecx+0x110]
   40e8b:	8b 68 11             	mov    ebp,DWORD PTR [eax+0x11]
   40e8e:	83 c0 08             	add    eax,0x8
   40e91:	83 fd 01             	cmp    ebp,0x1
   40e94:	76 07                	jbe    update_mod_76_2_branch_272
   40e96:	80 89 8c 11 00 00 40 	or     BYTE PTR [ecx+0x118c],0x40
update_mod_76_2_branch_272:
   40e9d:	8b 81 84 00 00 00    	mov    eax,DWORD PTR [ecx+0x84]
   40ea3:	8b 50 11             	mov    edx,DWORD PTR [eax+0x11]
   40ea6:	83 c0 08             	add    eax,0x8
   40ea9:	83 fa 01             	cmp    edx,0x1
   40eac:	76 07                	jbe    update_mod_76_2_branch_273
   40eae:	80 89 8c 11 00 00 80 	or     BYTE PTR [ecx+0x118c],0x80
update_mod_76_2_branch_273:
   40eb5:	8b 81 c0 00 00 00    	mov    eax,DWORD PTR [ecx+0xc0]
   40ebb:	8b 58 11             	mov    ebx,DWORD PTR [eax+0x11]
   40ebe:	83 c0 08             	add    eax,0x8
   40ec1:	83 fb 01             	cmp    ebx,0x1
   40ec4:	76 07                	jbe    update_mod_76_2_branch_274
   40ec6:	80 89 8d 11 00 00 01 	or     BYTE PTR [ecx+0x118d],0x1
update_mod_76_2_branch_274:
   40ecd:	8b 81 fc 00 00 00    	mov    eax,DWORD PTR [ecx+0xfc]
   40ed3:	8b 68 11             	mov    ebp,DWORD PTR [eax+0x11]
   40ed6:	83 c0 08             	add    eax,0x8
   40ed9:	83 fd 01             	cmp    ebp,0x1
   40edc:	76 07                	jbe    update_mod_76_2_branch_275
   40ede:	80 89 8d 11 00 00 02 	or     BYTE PTR [ecx+0x118d],0x2
update_mod_76_2_branch_275:
   40ee5:	8b 81 38 01 00 00    	mov    eax,DWORD PTR [ecx+0x138]
   40eeb:	8b 50 11             	mov    edx,DWORD PTR [eax+0x11]
   40eee:	83 c0 08             	add    eax,0x8
   40ef1:	83 fa 01             	cmp    edx,0x1
   40ef4:	76 07                	jbe    update_mod_76_2_branch_276
   40ef6:	80 89 8d 11 00 00 04 	or     BYTE PTR [ecx+0x118d],0x4
update_mod_76_2_branch_276:
   40efd:	8b 81 ec 01 00 00    	mov    eax,DWORD PTR [ecx+0x1ec]
   40f03:	8b 58 11             	mov    ebx,DWORD PTR [eax+0x11]
   40f06:	83 c0 08             	add    eax,0x8
   40f09:	83 fb 01             	cmp    ebx,0x1
   40f0c:	77 11                	ja     update_mod_76_2_branch_277
   40f0e:	8b 81 64 02 00 00    	mov    eax,DWORD PTR [ecx+0x264]
   40f14:	8b 68 11             	mov    ebp,DWORD PTR [eax+0x11]
   40f17:	83 c0 08             	add    eax,0x8
   40f1a:	83 fd 01             	cmp    ebp,0x1
   40f1d:	76 07                	jbe    update_mod_76_2_branch_278
update_mod_76_2_branch_277:
   40f1f:	80 89 8d 11 00 00 08 	or     BYTE PTR [ecx+0x118d],0x8
update_mod_76_2_branch_278:
   40f26:	8b 81 c4 01 00 00    	mov    eax,DWORD PTR [ecx+0x1c4]
   40f2c:	8b 50 11             	mov    edx,DWORD PTR [eax+0x11]
   40f2f:	83 c0 08             	add    eax,0x8
   40f32:	83 fa 01             	cmp    edx,0x1
   40f35:	77 11                	ja     update_mod_76_2_branch_279
   40f37:	8b 81 3c 02 00 00    	mov    eax,DWORD PTR [ecx+0x23c]
   40f3d:	8b 58 11             	mov    ebx,DWORD PTR [eax+0x11]
   40f40:	83 c0 08             	add    eax,0x8
   40f43:	83 fb 01             	cmp    ebx,0x1
   40f46:	76 07                	jbe    update_mod_76_2_branch_280
update_mod_76_2_branch_279:
   40f48:	80 89 8d 11 00 00 10 	or     BYTE PTR [ecx+0x118d],0x10
update_mod_76_2_branch_280:
   40f4f:	8b 81 9c 01 00 00    	mov    eax,DWORD PTR [ecx+0x19c]
   40f55:	8b 68 11             	mov    ebp,DWORD PTR [eax+0x11]
   40f58:	83 c0 08             	add    eax,0x8
   40f5b:	83 fd 01             	cmp    ebp,0x1
   40f5e:	77 11                	ja     update_mod_76_2_branch_281
   40f60:	8b 81 14 02 00 00    	mov    eax,DWORD PTR [ecx+0x214]
   40f66:	8b 50 11             	mov    edx,DWORD PTR [eax+0x11]
   40f69:	83 c0 08             	add    eax,0x8
   40f6c:	83 fa 01             	cmp    edx,0x1
   40f6f:	76 07                	jbe    update_mod_76_2_branch_282
update_mod_76_2_branch_281:
   40f71:	80 89 8d 11 00 00 20 	or     BYTE PTR [ecx+0x118d],0x20
update_mod_76_2_branch_282:
   40f78:	8b 81 c8 02 00 00    	mov    eax,DWORD PTR [ecx+0x2c8]
   40f7e:	8b 58 11             	mov    ebx,DWORD PTR [eax+0x11]
   40f81:	83 c0 08             	add    eax,0x8
   40f84:	83 fb 01             	cmp    ebx,0x1
   40f87:	77 11                	ja     update_mod_76_2_branch_283
   40f89:	8b 81 a4 02 00 00    	mov    eax,DWORD PTR [ecx+0x2a4]
   40f8f:	8b 68 11             	mov    ebp,DWORD PTR [eax+0x11]
   40f92:	83 c0 08             	add    eax,0x8
   40f95:	83 fd 01             	cmp    ebp,0x1
   40f98:	76 07                	jbe    update_mod_76_2_branch_284
update_mod_76_2_branch_283:
   40f9a:	80 89 8d 11 00 00 40 	or     BYTE PTR [ecx+0x118d],0x40
update_mod_76_2_branch_284:
   40fa1:	8b 81 bc 02 00 00    	mov    eax,DWORD PTR [ecx+0x2bc]
   40fa7:	8b 50 11             	mov    edx,DWORD PTR [eax+0x11]
   40faa:	83 c0 08             	add    eax,0x8
   40fad:	83 fa 01             	cmp    edx,0x1
   40fb0:	77 11                	ja     update_mod_76_2_branch_285
   40fb2:	8b 81 98 02 00 00    	mov    eax,DWORD PTR [ecx+0x298]
   40fb8:	8b 58 11             	mov    ebx,DWORD PTR [eax+0x11]
   40fbb:	83 c0 08             	add    eax,0x8
   40fbe:	83 fb 01             	cmp    ebx,0x1
   40fc1:	76 07                	jbe    update_mod_76_2_branch_286
update_mod_76_2_branch_285:
   40fc3:	80 89 8d 11 00 00 80 	or     BYTE PTR [ecx+0x118d],0x80
update_mod_76_2_branch_286:
   40fca:	8b 81 b0 02 00 00    	mov    eax,DWORD PTR [ecx+0x2b0]
   40fd0:	8b 68 11             	mov    ebp,DWORD PTR [eax+0x11]
   40fd3:	83 c0 08             	add    eax,0x8
   40fd6:	83 fd 01             	cmp    ebp,0x1
   40fd9:	77 11                	ja     update_mod_76_2_branch_287
   40fdb:	8b 81 8c 02 00 00    	mov    eax,DWORD PTR [ecx+0x28c]
   40fe1:	8b 50 11             	mov    edx,DWORD PTR [eax+0x11]
   40fe4:	83 c0 08             	add    eax,0x8
   40fe7:	83 fa 01             	cmp    edx,0x1
   40fea:	76 07                	jbe    update_mod_76_2_branch_288
update_mod_76_2_branch_287:
   40fec:	80 89 8e 11 00 00 01 	or     BYTE PTR [ecx+0x118e],0x1
update_mod_76_2_branch_288:
   40ff3:	8b 81 1c 03 00 00    	mov    eax,DWORD PTR [ecx+0x31c]
   40ff9:	8b 58 11             	mov    ebx,DWORD PTR [eax+0x11]
   40ffc:	83 c0 08             	add    eax,0x8
   40fff:	83 fb 01             	cmp    ebx,0x1
   41002:	76 07                	jbe    update_mod_76_2_branch_289
   41004:	80 89 8e 11 00 00 02 	or     BYTE PTR [ecx+0x118e],0x2
update_mod_76_2_branch_289:
   4100b:	8b 81 5c 04 00 00    	mov    eax,DWORD PTR [ecx+0x45c]
   41011:	8b 68 11             	mov    ebp,DWORD PTR [eax+0x11]
   41014:	83 c0 08             	add    eax,0x8
   41017:	83 fd 01             	cmp    ebp,0x1
   4101a:	76 07                	jbe    update_mod_76_2_branch_290
   4101c:	80 89 8e 11 00 00 04 	or     BYTE PTR [ecx+0x118e],0x4
update_mod_76_2_branch_290:
   41023:	8b 81 ac 04 00 00    	mov    eax,DWORD PTR [ecx+0x4ac]
   41029:	8b 50 11             	mov    edx,DWORD PTR [eax+0x11]
   4102c:	83 c0 08             	add    eax,0x8
   4102f:	83 fa 01             	cmp    edx,0x1
   41032:	76 07                	jbe    update_mod_76_2_branch_291
   41034:	80 89 8e 11 00 00 08 	or     BYTE PTR [ecx+0x118e],0x8
update_mod_76_2_branch_291:
   4103b:	8b 81 94 00 00 00    	mov    eax,DWORD PTR [ecx+0x94]
   41041:	8b 58 11             	mov    ebx,DWORD PTR [eax+0x11]
   41044:	83 c0 08             	add    eax,0x8
   41047:	83 fb 01             	cmp    ebx,0x1
   4104a:	76 07                	jbe    update_mod_76_2_branch_292
   4104c:	80 89 8e 11 00 00 10 	or     BYTE PTR [ecx+0x118e],0x10
update_mod_76_2_branch_292:
   41053:	8b 81 0c 01 00 00    	mov    eax,DWORD PTR [ecx+0x10c]
   41059:	8b 68 11             	mov    ebp,DWORD PTR [eax+0x11]
   4105c:	83 c0 08             	add    eax,0x8
   4105f:	83 fd 01             	cmp    ebp,0x1
   41062:	76 07                	jbe    update_mod_76_2_branch_293
   41064:	80 89 8e 11 00 00 20 	or     BYTE PTR [ecx+0x118e],0x20
update_mod_76_2_branch_293:
   4106b:	8b 81 48 01 00 00    	mov    eax,DWORD PTR [ecx+0x148]
   41071:	8b 50 11             	mov    edx,DWORD PTR [eax+0x11]
   41074:	83 c0 08             	add    eax,0x8
   41077:	83 fa 01             	cmp    edx,0x1
   4107a:	76 07                	jbe    update_mod_76_2_branch_294
   4107c:	80 89 8e 11 00 00 40 	or     BYTE PTR [ecx+0x118e],0x40
update_mod_76_2_branch_294:
   41083:	8b 81 fc 00 00 00    	mov    eax,DWORD PTR [ecx+0xfc]
   41089:	8b 58 11             	mov    ebx,DWORD PTR [eax+0x11]
   4108c:	83 c0 08             	add    eax,0x8
   4108f:	83 fb 01             	cmp    ebx,0x1
   41092:	76 07                	jbe    update_mod_76_2_branch_295
   41094:	80 89 8e 11 00 00 80 	or     BYTE PTR [ecx+0x118e],0x80
update_mod_76_2_branch_295:
   4109b:	80 bf 84 00 00 00 00 	cmp    BYTE PTR [edi+0x84],0x0
   410a2:	74 41                	je     update_mod_76_2_branch_296
   410a4:	80 bf 81 00 00 00 00 	cmp    BYTE PTR [edi+0x81],0x0
   410ab:	0f 84 7b 03 00 00    	je     update_mod_76_2_branch_319
   410b1:	c6 81 a0 11 00 00 38 	mov    BYTE PTR [ecx+0x11a0],0x38
   410b8:	8a 81 a0 11 00 00    	mov    al,BYTE PTR [ecx+0x11a0]
   410be:	88 81 a1 11 00 00    	mov    BYTE PTR [ecx+0x11a1],al
   410c4:	8b 47 28             	mov    eax,DWORD PTR [edi+0x28]
   410c7:	89 81 78 10 00 00    	mov    DWORD PTR [ecx+0x1078],eax
   410cd:	89 c2                	mov    edx,eax
   410cf:	89 81 6c 10 00 00    	mov    DWORD PTR [ecx+0x106c],eax
   410d5:	89 c8                	mov    eax,ecx
   410d7:	e8 c4 b7 ff ff       	call   go_to_frame_mod_76
   410dc:	c6 41 52 00          	mov    BYTE PTR [ecx+0x52],0x0
   410e0:	e9 47 03 00 00       	jmp    update_mod_76_2_branch_319
update_mod_76_2_branch_296:
   410e5:	c7 81 3c 11 00 00 02 00 00 00 	mov    DWORD PTR [ecx+0x113c],0x2
   410ef:	8b 47 14             	mov    eax,DWORD PTR [edi+0x14]
   410f2:	89 81 84 11 00 00    	mov    DWORD PTR [ecx+0x1184],eax
   410f8:	83 7f 4c 00          	cmp    DWORD PTR [edi+0x4c],0x0
   410fc:	74 22                	je     update_mod_76_2_branch_298
   410fe:	b8 88 00 00 00       	mov    eax,0x88
   41103:	e8 10 0e 03 00       	call   W?$nwn(ui)pnv
   41108:	85 c0                	test   eax,eax
   4110a:	74 08                	je     update_mod_76_2_branch_297
   4110c:	8b 57 4c             	mov    edx,DWORD PTR [edi+0x4c]
   4110f:	e8 5c 73 fc ff       	call   W?$ct:SOUND$n(pna)_
update_mod_76_2_branch_297:
   41114:	89 81 48 11 00 00    	mov    DWORD PTR [ecx+0x1148],eax
   4111a:	ff 81 34 11 00 00    	inc    DWORD PTR [ecx+0x1134]
update_mod_76_2_branch_298:
   41120:	83 7f 50 00          	cmp    DWORD PTR [edi+0x50],0x0
   41124:	74 29                	je     update_mod_76_2_branch_300
   41126:	b8 88 00 00 00       	mov    eax,0x88
   4112b:	e8 e8 0d 03 00       	call   W?$nwn(ui)pnv
   41130:	85 c0                	test   eax,eax
   41132:	74 08                	je     update_mod_76_2_branch_299
   41134:	8b 57 50             	mov    edx,DWORD PTR [edi+0x50]
   41137:	e8 34 73 fc ff       	call   W?$ct:SOUND$n(pna)_
update_mod_76_2_branch_299:
   4113c:	8b 99 34 11 00 00    	mov    ebx,DWORD PTR [ecx+0x1134]
   41142:	89 81 4c 11 00 00    	mov    DWORD PTR [ecx+0x114c],eax
   41148:	43                   	inc    ebx
   41149:	89 99 34 11 00 00    	mov    DWORD PTR [ecx+0x1134],ebx
update_mod_76_2_branch_300:
   4114f:	83 7f 54 00          	cmp    DWORD PTR [edi+0x54],0x0
   41153:	74 22                	je     update_mod_76_2_branch_302
   41155:	b8 88 00 00 00       	mov    eax,0x88
   4115a:	e8 b9 0d 03 00       	call   W?$nwn(ui)pnv
   4115f:	85 c0                	test   eax,eax
   41161:	74 08                	je     update_mod_76_2_branch_301
   41163:	8b 57 54             	mov    edx,DWORD PTR [edi+0x54]
   41166:	e8 05 73 fc ff       	call   W?$ct:SOUND$n(pna)_
update_mod_76_2_branch_301:
   4116b:	89 81 50 11 00 00    	mov    DWORD PTR [ecx+0x1150],eax
   41171:	ff 81 34 11 00 00    	inc    DWORD PTR [ecx+0x1134]
update_mod_76_2_branch_302:
   41177:	8b 47 70             	mov    eax,DWORD PTR [edi+0x70]
   4117a:	89 81 6c 11 00 00    	mov    DWORD PTR [ecx+0x116c],eax
   41180:	83 7f 58 00          	cmp    DWORD PTR [edi+0x58],0x0
   41184:	74 29                	je     update_mod_76_2_branch_304
   41186:	b8 88 00 00 00       	mov    eax,0x88
   4118b:	e8 88 0d 03 00       	call   W?$nwn(ui)pnv
   41190:	85 c0                	test   eax,eax
   41192:	74 08                	je     update_mod_76_2_branch_303
   41194:	8b 57 58             	mov    edx,DWORD PTR [edi+0x58]
   41197:	e8 d4 72 fc ff       	call   W?$ct:SOUND$n(pna)_
update_mod_76_2_branch_303:
   4119c:	8b 99 38 11 00 00    	mov    ebx,DWORD PTR [ecx+0x1138]
   411a2:	89 81 54 11 00 00    	mov    DWORD PTR [ecx+0x1154],eax
   411a8:	43                   	inc    ebx
   411a9:	89 99 38 11 00 00    	mov    DWORD PTR [ecx+0x1138],ebx
update_mod_76_2_branch_304:
   411af:	83 7f 5c 00          	cmp    DWORD PTR [edi+0x5c],0x0
   411b3:	74 22                	je     update_mod_76_2_branch_306
   411b5:	b8 88 00 00 00       	mov    eax,0x88
   411ba:	e8 59 0d 03 00       	call   W?$nwn(ui)pnv
   411bf:	85 c0                	test   eax,eax
   411c1:	74 08                	je     update_mod_76_2_branch_305
   411c3:	8b 57 5c             	mov    edx,DWORD PTR [edi+0x5c]
   411c6:	e8 a5 72 fc ff       	call   W?$ct:SOUND$n(pna)_
update_mod_76_2_branch_305:
   411cb:	89 81 58 11 00 00    	mov    DWORD PTR [ecx+0x1158],eax
   411d1:	ff 81 38 11 00 00    	inc    DWORD PTR [ecx+0x1138]
update_mod_76_2_branch_306:
   411d7:	83 7f 60 00          	cmp    DWORD PTR [edi+0x60],0x0
   411db:	74 29                	je     update_mod_76_2_branch_308
   411dd:	b8 88 00 00 00       	mov    eax,0x88
   411e2:	e8 31 0d 03 00       	call   W?$nwn(ui)pnv
   411e7:	85 c0                	test   eax,eax
   411e9:	74 08                	je     update_mod_76_2_branch_307
   411eb:	8b 57 60             	mov    edx,DWORD PTR [edi+0x60]
   411ee:	e8 7d 72 fc ff       	call   W?$ct:SOUND$n(pna)_
update_mod_76_2_branch_307:
   411f3:	8b 99 38 11 00 00    	mov    ebx,DWORD PTR [ecx+0x1138]
   411f9:	89 81 5c 11 00 00    	mov    DWORD PTR [ecx+0x115c],eax
   411ff:	43                   	inc    ebx
   41200:	89 99 38 11 00 00    	mov    DWORD PTR [ecx+0x1138],ebx
update_mod_76_2_branch_308:
   41206:	8b 47 74             	mov    eax,DWORD PTR [edi+0x74]
   41209:	89 81 70 11 00 00    	mov    DWORD PTR [ecx+0x1170],eax
   4120f:	83 7f 64 00          	cmp    DWORD PTR [edi+0x64],0x0
   41213:	74 1c                	je     update_mod_76_2_branch_310
   41215:	b8 88 00 00 00       	mov    eax,0x88
   4121a:	e8 f9 0c 03 00       	call   W?$nwn(ui)pnv
   4121f:	85 c0                	test   eax,eax
   41221:	74 08                	je     update_mod_76_2_branch_309
   41223:	8b 57 64             	mov    edx,DWORD PTR [edi+0x64]
   41226:	e8 45 72 fc ff       	call   W?$ct:SOUND$n(pna)_
update_mod_76_2_branch_309:
   4122b:	89 81 60 11 00 00    	mov    DWORD PTR [ecx+0x1160],eax
update_mod_76_2_branch_310:
   41231:	83 7f 68 00          	cmp    DWORD PTR [edi+0x68],0x0
   41235:	74 1c                	je     update_mod_76_2_branch_312
   41237:	b8 88 00 00 00       	mov    eax,0x88
   4123c:	e8 d7 0c 03 00       	call   W?$nwn(ui)pnv
   41241:	85 c0                	test   eax,eax
   41243:	74 08                	je     update_mod_76_2_branch_311
   41245:	8b 57 68             	mov    edx,DWORD PTR [edi+0x68]
   41248:	e8 23 72 fc ff       	call   W?$ct:SOUND$n(pna)_
update_mod_76_2_branch_311:
   4124d:	89 81 64 11 00 00    	mov    DWORD PTR [ecx+0x1164],eax
update_mod_76_2_branch_312:
   41253:	8b 47 78             	mov    eax,DWORD PTR [edi+0x78]
   41256:	89 81 74 11 00 00    	mov    DWORD PTR [ecx+0x1174],eax
   4125c:	83 7f 6c 00          	cmp    DWORD PTR [edi+0x6c],0x0
   41260:	0f 84 1c 00 00 00    	je     update_mod_76_2_branch_314
   41266:	b8 88 00 00 00       	mov    eax,0x88
   4126b:	e8 a8 0c 03 00       	call   W?$nwn(ui)pnv
   41270:	85 c0                	test   eax,eax
   41272:	74 08                	je     update_mod_76_2_branch_313
   41274:	8b 57 6c             	mov    edx,DWORD PTR [edi+0x6c]
   41277:	e8 f4 71 fc ff       	call   W?$ct:SOUND$n(pna)_
update_mod_76_2_branch_313:
   4127c:	89 81 68 11 00 00    	mov    DWORD PTR [ecx+0x1168],eax
update_mod_76_2_branch_314:
   41282:	8b 47 7c             	mov    eax,DWORD PTR [edi+0x7c]
   41285:	89 81 78 11 00 00    	mov    DWORD PTR [ecx+0x1178],eax
   4128b:	8a 47 24             	mov    al,BYTE PTR [edi+0x24]
   4128e:	88 81 a0 11 00 00    	mov    BYTE PTR [ecx+0x11a0],al
   41294:	88 81 a1 11 00 00    	mov    BYTE PTR [ecx+0x11a1],al
   4129a:	8b 47 24             	mov    eax,DWORD PTR [edi+0x24]
   4129d:	83 f8 03             	cmp    eax,0x3
   412a0:	0f 87 86 01 00 00    	ja     update_mod_76_2_branch_319
   412a6:	2e ff 24 85 60 d5 03 00 	jmp    DWORD PTR cs:[eax*4+@obj1:W?$ct:NON_PLAYER_CHARACTER$n(pnapnaiibiiipn(ui)pnv)__reference_1]; fixup: num: 11003, src obj: 1, src ofs: 0x412aa, dst obj: 1, dst ofs: 0x3d560
update_mod_76_2_reference_44:
   412ae:	f6 81 8e 11 00 00 20 	test   BYTE PTR [ecx+0x118e],0x20
   412b5:	74 27                	je     update_mod_76_2_branch_315
   412b7:	ba 2c 00 00 00       	mov    edx,0x2c
   412bc:	89 c8                	mov    eax,ecx
   412be:	e8 dd b5 ff ff       	call   go_to_frame_mod_76
   412c3:	c7 81 78 10 00 00 2c 00 00 00 	mov    DWORD PTR [ecx+0x1078],0x2c
   412cd:	8b 81 78 10 00 00    	mov    eax,DWORD PTR [ecx+0x1078]
   412d3:	89 81 6c 10 00 00    	mov    DWORD PTR [ecx+0x106c],eax
   412d9:	e9 4e 01 00 00       	jmp    update_mod_76_2_branch_319
update_mod_76_2_branch_315:
   412de:	f6 81 8c 11 00 00 40 	test   BYTE PTR [ecx+0x118c],0x40
   412e5:	0f 84 41 01 00 00    	je     update_mod_76_2_branch_319
   412eb:	ba 2d 00 00 00       	mov    edx,0x2d
   412f0:	89 c8                	mov    eax,ecx
   412f2:	e8 a9 b5 ff ff       	call   go_to_frame_mod_76
   412f7:	c7 81 78 10 00 00 2d 00 00 00 	mov    DWORD PTR [ecx+0x1078],0x2d
   41301:	8b 81 78 10 00 00    	mov    eax,DWORD PTR [ecx+0x1078]
   41307:	89 81 6c 10 00 00    	mov    DWORD PTR [ecx+0x106c],eax
   4130d:	e9 1a 01 00 00       	jmp    update_mod_76_2_branch_319
update_mod_76_2_reference_45:
   41312:	f6 81 8e 11 00 00 10 	test   BYTE PTR [ecx+0x118e],0x10
   41319:	74 27                	je     update_mod_76_2_branch_316
   4131b:	ba 0e 00 00 00       	mov    edx,0xe
   41320:	89 c8                	mov    eax,ecx
   41322:	e8 79 b5 ff ff       	call   go_to_frame_mod_76
   41327:	c7 81 78 10 00 00 0e 00 00 00 	mov    DWORD PTR [ecx+0x1078],0xe
   41331:	8b 81 78 10 00 00    	mov    eax,DWORD PTR [ecx+0x1078]
   41337:	89 81 6c 10 00 00    	mov    DWORD PTR [ecx+0x106c],eax
   4133d:	e9 ea 00 00 00       	jmp    update_mod_76_2_branch_319
update_mod_76_2_branch_316:
   41342:	f6 81 8c 11 00 00 10 	test   BYTE PTR [ecx+0x118c],0x10
   41349:	0f 84 dd 00 00 00    	je     update_mod_76_2_branch_319
   4134f:	ba 0f 00 00 00       	mov    edx,0xf
   41354:	89 c8                	mov    eax,ecx
   41356:	e8 45 b5 ff ff       	call   go_to_frame_mod_76
   4135b:	c7 81 78 10 00 00 0f 00 00 00 	mov    DWORD PTR [ecx+0x1078],0xf
   41365:	8b 81 78 10 00 00    	mov    eax,DWORD PTR [ecx+0x1078]
   4136b:	89 81 6c 10 00 00    	mov    DWORD PTR [ecx+0x106c],eax
   41371:	e9 b6 00 00 00       	jmp    update_mod_76_2_branch_319
update_mod_76_2_reference_46:
   41376:	f6 81 8e 11 00 00 40 	test   BYTE PTR [ecx+0x118e],0x40
   4137d:	74 27                	je     update_mod_76_2_branch_317
   4137f:	ba 3b 00 00 00       	mov    edx,0x3b
   41384:	89 c8                	mov    eax,ecx
   41386:	e8 15 b5 ff ff       	call   go_to_frame_mod_76
   4138b:	c7 81 78 10 00 00 3b 00 00 00 	mov    DWORD PTR [ecx+0x1078],0x3b
   41395:	8b 81 78 10 00 00    	mov    eax,DWORD PTR [ecx+0x1078]
   4139b:	89 81 6c 10 00 00    	mov    DWORD PTR [ecx+0x106c],eax
   413a1:	e9 86 00 00 00       	jmp    update_mod_76_2_branch_319
update_mod_76_2_branch_317:
   413a6:	f6 81 8c 11 00 00 08 	test   BYTE PTR [ecx+0x118c],0x8
   413ad:	0f 84 79 00 00 00    	je     update_mod_76_2_branch_319
   413b3:	89 c8                	mov    eax,ecx
   413b5:	31 d2                	xor    edx,edx
   413b7:	e8 e4 b4 ff ff       	call   go_to_frame_mod_76
   413bc:	c7 81 78 10 00 00 00 00 00 00 	mov    DWORD PTR [ecx+0x1078],0x0
   413c6:	8b 81 78 10 00 00    	mov    eax,DWORD PTR [ecx+0x1078]
   413cc:	89 81 6c 10 00 00    	mov    DWORD PTR [ecx+0x106c],eax
   413d2:	eb 58                	jmp    update_mod_76_2_branch_319
update_mod_76_2_reference_47:
   413d4:	f6 81 8e 11 00 00 80 	test   BYTE PTR [ecx+0x118e],0x80
   413db:	74 24                	je     update_mod_76_2_branch_318
   413dd:	ba 28 00 00 00       	mov    edx,0x28
   413e2:	89 c8                	mov    eax,ecx
   413e4:	e8 b7 b4 ff ff       	call   go_to_frame_mod_76
   413e9:	c7 81 78 10 00 00 28 00 00 00 	mov    DWORD PTR [ecx+0x1078],0x28
   413f3:	8b 81 78 10 00 00    	mov    eax,DWORD PTR [ecx+0x1078]
   413f9:	89 81 6c 10 00 00    	mov    DWORD PTR [ecx+0x106c],eax
   413ff:	eb 2b                	jmp    update_mod_76_2_branch_319
update_mod_76_2_branch_318:
   41401:	f6 81 8c 11 00 00 20 	test   BYTE PTR [ecx+0x118c],0x20
   41408:	74 22                	je     update_mod_76_2_branch_319
   4140a:	ba 1e 00 00 00       	mov    edx,0x1e
   4140f:	89 c8                	mov    eax,ecx
   41411:	e8 8a b4 ff ff       	call   go_to_frame_mod_76
   41416:	c7 81 78 10 00 00 1e 00 00 00 	mov    DWORD PTR [ecx+0x1078],0x1e
   41420:	8b 81 78 10 00 00    	mov    eax,DWORD PTR [ecx+0x1078]
   41426:	89 81 6c 10 00 00    	mov    DWORD PTR [ecx+0x106c],eax
update_mod_76_2_branch_319:
   4142c:	8b 41 20             	mov    eax,DWORD PTR [ecx+0x20]
   4142f:	89 c2                	mov    edx,eax
   41431:	c1 fa 1f             	sar    edx,0x1f
   41434:	2b c2                	sub    eax,edx
   41436:	d1 f8                	sar    eax,1
   41438:	8b 57 08             	mov    edx,DWORD PTR [edi+0x8]
   4143b:	29 c2                	sub    edx,eax
   4143d:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
   41441:	db 44 24 04          	fild   DWORD PTR [esp+0x4]
   41445:	83 ec 04             	sub    esp,0x4
   41448:	d9 1c 24             	fstp   DWORD PTR [esp]
   4144b:	8b 47 04             	mov    eax,DWORD PTR [edi+0x4]
   4144e:	8b 59 28             	mov    ebx,DWORD PTR [ecx+0x28]
   41451:	8b 51 24             	mov    edx,DWORD PTR [ecx+0x24]
   41454:	29 d8                	sub    eax,ebx
   41456:	8b 3f                	mov    edi,DWORD PTR [edi]
   41458:	89 c3                	mov    ebx,eax
   4145a:	8b 41 2c             	mov    eax,DWORD PTR [ecx+0x2c]
   4145d:	29 d7                	sub    edi,edx
   4145f:	89 c2                	mov    edx,eax
   41461:	c1 fa 1f             	sar    edx,0x1f
   41464:	2b c2                	sub    eax,edx
   41466:	d1 f8                	sar    eax,1
   41468:	8b 69 30             	mov    ebp,DWORD PTR [ecx+0x30]
   4146b:	89 fa                	mov    edx,edi
   4146d:	29 eb                	sub    ebx,ebp
   4146f:	29 c2                	sub    edx,eax
   41471:	89 c8                	mov    eax,ecx
   41473:	e8 78 a2 ff ff       	call   set_xyz
   41478:	8b 41 3c             	mov    eax,DWORD PTR [ecx+0x3c]
   4147b:	8b 59 24             	mov    ebx,DWORD PTR [ecx+0x24]
   4147e:	8b 3d ac 5b 02 00    	mov    edi,DWORD PTR ds:@obj3:pc_real_x                             ; fixup: num: 11006, src obj: 1, src ofs: 0x41480, dst obj: 3, dst ofs: 0x25bac
   41484:	01 d8                	add    eax,ebx
   41486:	39 f8                	cmp    eax,edi
   41488:	7e 09                	jle    update_mod_76_2_branch_320
   4148a:	c6 81 a1 11 00 00 07 	mov    BYTE PTR [ecx+0x11a1],0x7
   41491:	eb 07                	jmp    update_mod_76_2_branch_321
update_mod_76_2_branch_320:
   41493:	c6 81 a1 11 00 00 0e 	mov    BYTE PTR [ecx+0x11a1],0xe
update_mod_76_2_branch_321:
   4149a:	ba 54 a6 00 00       	mov    edx,@obj3:classes_cpp_variable_114                           ; fixup: num: 11005, src obj: 1, src ofs: 0x4149b, dst obj: 3, dst ofs: 0xa654
   4149f:	8b 41 10             	mov    eax,DWORD PTR [ecx+0x10]
   414a2:	e8 89 4f 03 00       	call   strcmp_
   414a7:	85 c0                	test   eax,eax
   414a9:	75 0a                	jne    update_mod_76_2_branch_322
   414ab:	c7 81 3c 11 00 00 07 00 00 00 	mov    DWORD PTR [ecx+0x113c],0x7
update_mod_76_2_branch_322:
   414b5:	89 c8                	mov    eax,ecx
update_mod_76_2_branch_323:
   414b7:	89 c1                	mov    ecx,eax
   414b9:	85 c0                	test   eax,eax
   414bb:	75 0f                	jne    update_mod_76_2_branch_324
   414bd:	bb 5b a6 00 00       	mov    ebx,@obj3:classes_cpp_variable_115                           ; fixup: num: 11004, src obj: 1, src ofs: 0x414be, dst obj: 3, dst ofs: 0xa65b
   414c2:	ba c8 0a 00 00       	mov    edx,0xac8
   414c7:	e8 64 6b ff ff       	call   _error_report
update_mod_76_2_branch_324:
   414cc:	d9 46 1c             	fld    DWORD PTR [esi+0x1c]
   414cf:	b6 01                	mov    dh,0x1
   414d1:	c7 81 ac 11 00 00 00 00 00 00 	mov    DWORD PTR [ecx+0x11ac],0x0
   414db:	8b 04 24             	mov    eax,DWORD PTR [esp]
   414de:	c7 81 b0 11 00 00 00 00 00 00 	mov    DWORD PTR [ecx+0x11b0],0x0
   414e8:	88 35 9c 60 02 00    	mov    BYTE PTR ds:@obj3:combat_mode,dh                             ; fixup: num: 11011, src obj: 1, src ofs: 0x414ea, dst obj: 3, dst ofs: 0x2609c
   414ee:	8b 68 10             	mov    ebp,DWORD PTR [eax+0x10]
   414f1:	d9 1d a0 60 02 00    	fstp   DWORD PTR ds:@obj3:combat_plane                              ; fixup: num: 11010, src obj: 1, src ofs: 0x414f3, dst obj: 3, dst ofs: 0x260a0
   414f7:	85 ed                	test   ebp,ebp
   414f9:	74 15                	je     update_mod_76_2_branch_325
   414fb:	c7 05 bc 60 02 00 01 00 00 00 	mov    DWORD PTR ds:@obj3:godeathflic_demands,0x1          ; fixup: num: 11009, src obj: 1, src ofs: 0x414fd, dst obj: 3, dst ofs: 0x260bc
   41505:	8b 04 24             	mov    eax,DWORD PTR [esp]
   41508:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
   4150b:	e8 d0 f9 00 00       	call   execute_command
update_mod_76_2_branch_325:
   41510:	30 c0                	xor    al,al
   41512:	83 c4 40             	add    esp,0x40
   41515:	5d                   	pop    ebp
   41516:	5f                   	pop    edi
   41517:	5e                   	pop    esi
   41518:	5a                   	pop    edx
   41519:	59                   	pop    ecx
   4151a:	5b                   	pop    ebx
   4151b:	c3                   	ret    
update_mod_76_2_branch_326:
   4151c:	83 78 10 00          	cmp    DWORD PTR [eax+0x10],0x0
   41520:	74 3c                	je     update_mod_76_2_branch_327
   41522:	80 78 24 00          	cmp    BYTE PTR [eax+0x24],0x0
   41526:	75 36                	jne    update_mod_76_2_branch_327
   41528:	c6 40 24 01          	mov    BYTE PTR [eax+0x24],0x1
   4152c:	c6 86 a0 11 00 00 38 	mov    BYTE PTR [esi+0x11a0],0x38
   41533:	8a 96 a0 11 00 00    	mov    dl,BYTE PTR [esi+0x11a0]
   41539:	88 96 a1 11 00 00    	mov    BYTE PTR [esi+0x11a1],dl
   4153f:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
   41542:	bb 01 00 00 00       	mov    ebx,0x1
   41547:	e8 94 f9 00 00       	call   execute_command
   4154c:	b0 01                	mov    al,0x1
   4154e:	89 1d bc 60 02 00    	mov    DWORD PTR ds:@obj3:godeathflic_demands,ebx                   ; fixup: num: 11008, src obj: 1, src ofs: 0x41550, dst obj: 3, dst ofs: 0x260bc
   41554:	83 c4 40             	add    esp,0x40
   41557:	5d                   	pop    ebp
   41558:	5f                   	pop    edi
   41559:	5e                   	pop    esi
   4155a:	5a                   	pop    edx
   4155b:	59                   	pop    ecx
   4155c:	5b                   	pop    ebx
   4155d:	c3                   	ret    
update_mod_76_2_branch_327:
   4155e:	8b 04 24             	mov    eax,DWORD PTR [esp]
   41561:	c6 40 24 01          	mov    BYTE PTR [eax+0x24],0x1
   41565:	c6 86 a0 11 00 00 38 	mov    BYTE PTR [esi+0x11a0],0x38
   4156c:	8a 86 a0 11 00 00    	mov    al,BYTE PTR [esi+0x11a0]
   41572:	88 86 a1 11 00 00    	mov    BYTE PTR [esi+0x11a1],al
   41578:	e9 20 da ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_reference_48:
   4157d:	bb 73 a6 00 00       	mov    ebx,@obj3:classes_cpp_variable_116                           ; fixup: num: 11007, src obj: 1, src ofs: 0x4157e, dst obj: 3, dst ofs: 0xa673
   41582:	ba ea 0a 00 00       	mov    edx,0xaea
   41587:	31 c0                	xor    eax,eax
   41589:	e8 a2 6a ff ff       	call   _error_report
   4158e:	e9 0a da ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_reference_49:
   41593:	8b 9e 80 10 00 00    	mov    ebx,DWORD PTR [esi+0x1080]
   41599:	89 f1                	mov    ecx,esi
   4159b:	85 db                	test   ebx,ebx
   4159d:	74 14                	je     update_mod_76_2_branch_328
   4159f:	b8 64 00 00 00       	mov    eax,0x64
   415a4:	89 c2                	mov    edx,eax
   415a6:	c1 fa 1f             	sar    edx,0x1f
   415a9:	f7 fb                	idiv   ebx
   415ab:	89 86 60 10 00 00    	mov    DWORD PTR [esi+0x1060],eax
   415b1:	eb 06                	jmp    update_mod_76_2_branch_329
update_mod_76_2_branch_328:
   415b3:	89 9e 60 10 00 00    	mov    DWORD PTR [esi+0x1060],ebx
update_mod_76_2_branch_329:
   415b9:	3b 99 68 10 00 00    	cmp    ebx,DWORD PTR [ecx+0x1068]
   415bf:	74 10                	je     update_mod_76_2_reference_50
   415c1:	c7 81 5c 10 00 00 00 00 00 00 	mov    DWORD PTR [ecx+0x105c],0x0
   415cb:	89 99 68 10 00 00    	mov    DWORD PTR [ecx+0x1068],ebx
update_mod_76_2_reference_50:
   415d1:	c7 86 a4 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x10a4],0x0
   415db:	db 86 a4 10 00 00    	fild   DWORD PTR [esi+0x10a4]
   415e1:	d9 96 a8 10 00 00    	fst    DWORD PTR [esi+0x10a8]
   415e7:	e8 5c 47 03 00       	call   __CHP
   415ec:	db 9e a0 10 00 00    	fistp  DWORD PTR [esi+0x10a0]
   415f2:	e9 a6 d9 ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_reference_51:
   415f7:	8b 8e 80 10 00 00    	mov    ecx,DWORD PTR [esi+0x1080]
   415fd:	89 f3                	mov    ebx,esi
   415ff:	85 c9                	test   ecx,ecx
   41601:	74 14                	je     update_mod_76_2_branch_330
   41603:	b8 64 00 00 00       	mov    eax,0x64
   41608:	89 c2                	mov    edx,eax
   4160a:	c1 fa 1f             	sar    edx,0x1f
   4160d:	f7 f9                	idiv   ecx
   4160f:	89 86 60 10 00 00    	mov    DWORD PTR [esi+0x1060],eax
   41615:	eb 06                	jmp    update_mod_76_2_branch_331
update_mod_76_2_branch_330:
   41617:	89 8e 60 10 00 00    	mov    DWORD PTR [esi+0x1060],ecx
update_mod_76_2_branch_331:
   4161d:	3b 8b 68 10 00 00    	cmp    ecx,DWORD PTR [ebx+0x1068]
   41623:	74 10                	je     update_mod_76_2_branch_332
   41625:	c7 83 5c 10 00 00 00 00 00 00 	mov    DWORD PTR [ebx+0x105c],0x0
   4162f:	89 8b 68 10 00 00    	mov    DWORD PTR [ebx+0x1068],ecx
update_mod_76_2_branch_332:
   41635:	8b 86 98 11 00 00    	mov    eax,DWORD PTR [esi+0x1198]
   4163b:	83 f8 1e             	cmp    eax,0x1e
   4163e:	0f 8d 7e 00 00 00    	jge    update_mod_76_2_branch_333
   41644:	50                   	push   eax
   41645:	8b 9e a0 10 00 00    	mov    ebx,DWORD PTR [esi+0x10a0]
   4164b:	53                   	push   ebx
   4164c:	68 82 a6 00 00       	push   @obj3:classes_cpp_variable_117                               ; fixup: num: 11013, src obj: 1, src ofs: 0x4164d, dst obj: 3, dst ofs: 0xa682
   41651:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 11012, src obj: 1, src ofs: 0x41652, dst obj: 3, dst ofs: 0x237fc
   41656:	e8 86 f5 02 00       	call   sprintf_
   4165b:	c6 86 a0 11 00 00 01 	mov    BYTE PTR [esi+0x11a0],0x1
   41662:	ba 0e 00 00 00       	mov    edx,0xe
   41667:	8a 86 a0 11 00 00    	mov    al,BYTE PTR [esi+0x11a0]
   4166d:	83 c4 10             	add    esp,0x10
   41670:	88 86 a1 11 00 00    	mov    BYTE PTR [esi+0x11a1],al
   41676:	89 f0                	mov    eax,esi
   41678:	c7 86 ac 10 00 00 ff ff ff ff 	mov    DWORD PTR [esi+0x10ac],0xffffffff
   41682:	e8 19 b2 ff ff       	call   go_to_frame_mod_76
   41687:	c7 86 78 10 00 00 0e 00 00 00 	mov    DWORD PTR [esi+0x1078],0xe
   41691:	c7 86 a4 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x10a4],0x0
   4169b:	c7 86 a8 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x10a8],0x0
   416a5:	8b 86 78 10 00 00    	mov    eax,DWORD PTR [esi+0x1078]
   416ab:	89 86 6c 10 00 00    	mov    DWORD PTR [esi+0x106c],eax
   416b1:	8b 86 a4 10 00 00    	mov    eax,DWORD PTR [esi+0x10a4]
   416b7:	89 86 a0 10 00 00    	mov    DWORD PTR [esi+0x10a0],eax
   416bd:	e9 db d8 ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_branch_333:
   416c2:	8b 96 9c 10 00 00    	mov    edx,DWORD PTR [esi+0x109c]
   416c8:	85 d2                	test   edx,edx
   416ca:	0f 84 fd 00 00 00    	je     update_mod_76_2_branch_336
   416d0:	8a 5a 08             	mov    bl,BYTE PTR [edx+0x8]
   416d3:	89 d0                	mov    eax,edx
   416d5:	84 db                	test   bl,bl
   416d7:	0f 84 f0 00 00 00    	je     update_mod_76_2_branch_336
   416dd:	3b 96 98 10 00 00    	cmp    edx,DWORD PTR [esi+0x1098]
   416e3:	0f 84 e4 00 00 00    	je     update_mod_76_2_branch_336
   416e9:	3b 96 8c 10 00 00    	cmp    edx,DWORD PTR [esi+0x108c]
   416ef:	0f 84 d8 00 00 00    	je     update_mod_76_2_branch_336
   416f5:	3b 96 90 10 00 00    	cmp    edx,DWORD PTR [esi+0x1090]
   416fb:	0f 84 cc 00 00 00    	je     update_mod_76_2_branch_336
   41701:	8b 52 3c             	mov    edx,DWORD PTR [edx+0x3c]
   41704:	8b 68 24             	mov    ebp,DWORD PTR [eax+0x24]
   41707:	8b 86 98 11 00 00    	mov    eax,DWORD PTR [esi+0x1198]
   4170d:	01 ea                	add    edx,ebp
   4170f:	39 c2                	cmp    edx,eax
   41711:	0f 8d b6 00 00 00    	jge    update_mod_76_2_branch_336
   41717:	d9 86 b4 10 00 00    	fld    DWORD PTR [esi+0x10b4]
   4171d:	e8 26 46 03 00       	call   __CHP
   41722:	db 5c 24 04          	fistp  DWORD PTR [esp+0x4]
   41726:	8b 7c 24 04          	mov    edi,DWORD PTR [esp+0x4]
   4172a:	c7 86 ac 10 00 00 ff ff ff ff 	mov    DWORD PTR [esi+0x10ac],0xffffffff
   41734:	83 ff 9d             	cmp    edi,0xffffff9d
   41737:	75 0a                	jne    update_mod_76_2_branch_334
   41739:	c7 86 24 11 00 00 ff ff ff ff 	mov    DWORD PTR [esi+0x1124],0xffffffff
update_mod_76_2_branch_334:
   41743:	8b 86 9c 10 00 00    	mov    eax,DWORD PTR [esi+0x109c]
   41749:	c6 86 a0 11 00 00 01 	mov    BYTE PTR [esi+0x11a0],0x1
   41750:	89 86 94 10 00 00    	mov    DWORD PTR [esi+0x1094],eax
   41756:	8a 86 a0 11 00 00    	mov    al,BYTE PTR [esi+0x11a0]
   4175c:	ba 0e 00 00 00       	mov    edx,0xe
   41761:	88 86 a1 11 00 00    	mov    BYTE PTR [esi+0x11a1],al
   41767:	89 f0                	mov    eax,esi
   41769:	e8 32 b1 ff ff       	call   go_to_frame_mod_76
   4176e:	c7 86 78 10 00 00 0e 00 00 00 	mov    DWORD PTR [esi+0x1078],0xe
   41778:	c7 86 a4 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x10a4],0x0
   41782:	c7 86 a8 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x10a8],0x0
   4178c:	8b 86 78 10 00 00    	mov    eax,DWORD PTR [esi+0x1078]
   41792:	89 86 6c 10 00 00    	mov    DWORD PTR [esi+0x106c],eax
   41798:	8b 86 a4 10 00 00    	mov    eax,DWORD PTR [esi+0x10a4]
   4179e:	8b ae 60 11 00 00    	mov    ebp,DWORD PTR [esi+0x1160]
   417a4:	89 86 a0 10 00 00    	mov    DWORD PTR [esi+0x10a0],eax
   417aa:	85 ed                	test   ebp,ebp
   417ac:	74 07                	je     update_mod_76_2_branch_335
   417ae:	89 e8                	mov    eax,ebp
   417b0:	e8 fb 7f fc ff       	call   play
update_mod_76_2_branch_335:
   417b5:	8b 86 64 11 00 00    	mov    eax,DWORD PTR [esi+0x1164]
   417bb:	85 c0                	test   eax,eax
   417bd:	0f 84 da d7 ff ff    	je     update_mod_76_2_reference_2
   417c3:	e8 e8 7f fc ff       	call   play
   417c8:	e9 d0 d7 ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_branch_336:
   417cd:	f7 86 a8 10 00 00 ff ff ff 7f 	test   DWORD PTR [esi+0x10a8],0x7fffffff
   417d7:	74 2b                	je     update_mod_76_2_branch_338
   417d9:	8b 15 c4 5a 02 00    	mov    edx,DWORD PTR ds:@obj3:current_room                          ; fixup: num: 11014, src obj: 1, src ofs: 0x417db, dst obj: 3, dst ofs: 0x25ac4
   417df:	db 42 04             	fild   DWORD PTR [edx+0x4]
   417e2:	d8 5e 1c             	fcomp  DWORD PTR [esi+0x1c]
   417e5:	df e0                	fnstsw ax
   417e7:	9e                   	sahf   
   417e8:	77 10                	ja     update_mod_76_2_branch_337
   417ea:	db 46 20             	fild   DWORD PTR [esi+0x20]
   417ed:	d8 46 1c             	fadd   DWORD PTR [esi+0x1c]
   417f0:	db 42 08             	fild   DWORD PTR [edx+0x8]
   417f3:	de d9                	fcompp 
   417f5:	df e0                	fnstsw ax
   417f7:	9e                   	sahf   
   417f8:	73 0a                	jae    update_mod_76_2_branch_338
update_mod_76_2_branch_337:
   417fa:	c7 86 a8 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x10a8],0x0
update_mod_76_2_branch_338:
   41804:	83 7e 38 05          	cmp    DWORD PTR [esi+0x38],0x5
   41808:	74 50                	je     update_mod_76_2_branch_341
   4180a:	8b 86 78 10 00 00    	mov    eax,DWORD PTR [esi+0x1078]
   41810:	8b 8e 74 11 00 00    	mov    ecx,DWORD PTR [esi+0x1174]
   41816:	8b be 64 10 00 00    	mov    edi,DWORD PTR [esi+0x1064]
   4181c:	01 c8                	add    eax,ecx
   4181e:	39 f8                	cmp    eax,edi
   41820:	75 0e                	jne    update_mod_76_2_branch_339
   41822:	8b ae 60 11 00 00    	mov    ebp,DWORD PTR [esi+0x1160]
   41828:	85 ed                	test   ebp,ebp
   4182a:	74 04                	je     update_mod_76_2_branch_339
   4182c:	89 e8                	mov    eax,ebp
   4182e:	eb 25                	jmp    update_mod_76_2_branch_340
update_mod_76_2_branch_339:
   41830:	8b 86 78 10 00 00    	mov    eax,DWORD PTR [esi+0x1078]
   41836:	03 86 74 11 00 00    	add    eax,DWORD PTR [esi+0x1174]
   4183c:	8b 9e 64 10 00 00    	mov    ebx,DWORD PTR [esi+0x1064]
   41842:	83 c0 04             	add    eax,0x4
   41845:	39 d8                	cmp    eax,ebx
   41847:	75 11                	jne    update_mod_76_2_branch_341
   41849:	8b 8e 64 11 00 00    	mov    ecx,DWORD PTR [esi+0x1164]
   4184f:	85 c9                	test   ecx,ecx
   41851:	74 07                	je     update_mod_76_2_branch_341
   41853:	89 c8                	mov    eax,ecx
update_mod_76_2_branch_340:
   41855:	e8 56 7f fc ff       	call   play
update_mod_76_2_branch_341:
   4185a:	d9 46 18             	fld    DWORD PTR [esi+0x18]
   4185d:	d8 0d 85 a7 00 00    	fmul   DWORD PTR ds:@obj3:classes_cpp_variable_132                  ; fixup: num: 11015, src obj: 1, src ofs: 0x4185f, dst obj: 3, dst ofs: 0xa785
   41863:	e8 e0 44 03 00       	call   __CHP
   41868:	db 9e a0 10 00 00    	fistp  DWORD PTR [esi+0x10a0]
   4186e:	e9 2a d7 ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_reference_52:
   41873:	8b 9e 80 10 00 00    	mov    ebx,DWORD PTR [esi+0x1080]
   41879:	89 f1                	mov    ecx,esi
   4187b:	85 db                	test   ebx,ebx
   4187d:	74 14                	je     update_mod_76_2_branch_342
   4187f:	b8 64 00 00 00       	mov    eax,0x64
   41884:	89 c2                	mov    edx,eax
   41886:	c1 fa 1f             	sar    edx,0x1f
   41889:	f7 fb                	idiv   ebx
   4188b:	89 86 60 10 00 00    	mov    DWORD PTR [esi+0x1060],eax
   41891:	eb 06                	jmp    update_mod_76_2_branch_343
update_mod_76_2_branch_342:
   41893:	89 9e 60 10 00 00    	mov    DWORD PTR [esi+0x1060],ebx
update_mod_76_2_branch_343:
   41899:	3b 99 68 10 00 00    	cmp    ebx,DWORD PTR [ecx+0x1068]
   4189f:	74 10                	je     update_mod_76_2_branch_344
   418a1:	c7 81 5c 10 00 00 00 00 00 00 	mov    DWORD PTR [ecx+0x105c],0x0
   418ab:	89 99 68 10 00 00    	mov    DWORD PTR [ecx+0x1068],ebx
update_mod_76_2_branch_344:
   418b1:	81 be 98 11 00 00 62 02 00 00 	cmp    DWORD PTR [esi+0x1198],0x262
   418bb:	7e 64                	jle    update_mod_76_2_branch_345
   418bd:	c6 86 a0 11 00 00 02 	mov    BYTE PTR [esi+0x11a0],0x2
   418c4:	8a 86 a0 11 00 00    	mov    al,BYTE PTR [esi+0x11a0]
   418ca:	ba 2c 00 00 00       	mov    edx,0x2c
   418cf:	88 86 a1 11 00 00    	mov    BYTE PTR [esi+0x11a1],al
   418d5:	89 f0                	mov    eax,esi
   418d7:	c7 86 ac 10 00 00 ff ff ff ff 	mov    DWORD PTR [esi+0x10ac],0xffffffff
   418e1:	e8 ba af ff ff       	call   go_to_frame_mod_76
   418e6:	c7 86 78 10 00 00 2c 00 00 00 	mov    DWORD PTR [esi+0x1078],0x2c
   418f0:	c7 86 a4 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x10a4],0x0
   418fa:	c7 86 a8 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x10a8],0x0
   41904:	8b 86 78 10 00 00    	mov    eax,DWORD PTR [esi+0x1078]
   4190a:	89 86 6c 10 00 00    	mov    DWORD PTR [esi+0x106c],eax
   41910:	8b 86 a4 10 00 00    	mov    eax,DWORD PTR [esi+0x10a4]
   41916:	89 86 a0 10 00 00    	mov    DWORD PTR [esi+0x10a0],eax
   4191c:	e9 7c d6 ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_branch_345:
   41921:	8b 9e 9c 10 00 00    	mov    ebx,DWORD PTR [esi+0x109c]
   41927:	85 db                	test   ebx,ebx
   41929:	0f 84 ff 00 00 00    	je     update_mod_76_2_branch_348
   4192f:	8a 53 08             	mov    dl,BYTE PTR [ebx+0x8]
   41932:	89 d8                	mov    eax,ebx
   41934:	84 d2                	test   dl,dl
   41936:	0f 84 f2 00 00 00    	je     update_mod_76_2_branch_348
   4193c:	3b 9e 94 10 00 00    	cmp    ebx,DWORD PTR [esi+0x1094]
   41942:	0f 84 e6 00 00 00    	je     update_mod_76_2_branch_348
   41948:	3b 9e 8c 10 00 00    	cmp    ebx,DWORD PTR [esi+0x108c]
   4194e:	0f 84 da 00 00 00    	je     update_mod_76_2_branch_348
   41954:	3b 9e 90 10 00 00    	cmp    ebx,DWORD PTR [esi+0x1090]
   4195a:	0f 84 ce 00 00 00    	je     update_mod_76_2_branch_348
   41960:	8b 53 3c             	mov    edx,DWORD PTR [ebx+0x3c]
   41963:	8b 5b 24             	mov    ebx,DWORD PTR [ebx+0x24]
   41966:	8b 8e 98 11 00 00    	mov    ecx,DWORD PTR [esi+0x1198]
   4196c:	01 da                	add    edx,ebx
   4196e:	39 ca                	cmp    edx,ecx
   41970:	0f 8e b8 00 00 00    	jle    update_mod_76_2_branch_348
   41976:	d9 86 b4 10 00 00    	fld    DWORD PTR [esi+0x10b4]
   4197c:	e8 c7 43 03 00       	call   __CHP
   41981:	db 5c 24 04          	fistp  DWORD PTR [esp+0x4]
   41985:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
   41989:	c7 86 ac 10 00 00 ff ff ff ff 	mov    DWORD PTR [esi+0x10ac],0xffffffff
   41993:	83 f8 9d             	cmp    eax,0xffffff9d
   41996:	75 0a                	jne    update_mod_76_2_branch_346
   41998:	c7 86 24 11 00 00 ff ff ff ff 	mov    DWORD PTR [esi+0x1124],0xffffffff
update_mod_76_2_branch_346:
   419a2:	8b 86 9c 10 00 00    	mov    eax,DWORD PTR [esi+0x109c]
   419a8:	c6 86 a0 11 00 00 02 	mov    BYTE PTR [esi+0x11a0],0x2
   419af:	89 86 98 10 00 00    	mov    DWORD PTR [esi+0x1098],eax
   419b5:	8a 86 a0 11 00 00    	mov    al,BYTE PTR [esi+0x11a0]
   419bb:	ba 2c 00 00 00       	mov    edx,0x2c
   419c0:	88 86 a1 11 00 00    	mov    BYTE PTR [esi+0x11a1],al
   419c6:	89 f0                	mov    eax,esi
   419c8:	e8 d3 ae ff ff       	call   go_to_frame_mod_76
   419cd:	c7 86 78 10 00 00 2c 00 00 00 	mov    DWORD PTR [esi+0x1078],0x2c
   419d7:	c7 86 a4 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x10a4],0x0
   419e1:	c7 86 a8 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x10a8],0x0
   419eb:	8b 86 78 10 00 00    	mov    eax,DWORD PTR [esi+0x1078]
   419f1:	89 86 6c 10 00 00    	mov    DWORD PTR [esi+0x106c],eax
   419f7:	8b 86 a4 10 00 00    	mov    eax,DWORD PTR [esi+0x10a4]
   419fd:	8b 96 60 11 00 00    	mov    edx,DWORD PTR [esi+0x1160]
   41a03:	89 86 a0 10 00 00    	mov    DWORD PTR [esi+0x10a0],eax
   41a09:	85 d2                	test   edx,edx
   41a0b:	74 07                	je     update_mod_76_2_branch_347
   41a0d:	89 d0                	mov    eax,edx
   41a0f:	e8 9c 7d fc ff       	call   play
update_mod_76_2_branch_347:
   41a14:	8b 9e 64 11 00 00    	mov    ebx,DWORD PTR [esi+0x1164]
   41a1a:	85 db                	test   ebx,ebx
   41a1c:	0f 84 7b d5 ff ff    	je     update_mod_76_2_reference_2
   41a22:	89 d8                	mov    eax,ebx
   41a24:	e8 87 7d fc ff       	call   play
   41a29:	e9 6f d5 ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_branch_348:
   41a2e:	d9 86 a8 10 00 00    	fld    DWORD PTR [esi+0x10a8]
   41a34:	d9 ee                	fldz   
   41a36:	de d9                	fcompp 
   41a38:	df e0                	fnstsw ax
   41a3a:	9e                   	sahf   
   41a3b:	74 2b                	je     update_mod_76_2_branch_350
   41a3d:	8b 15 c4 5a 02 00    	mov    edx,DWORD PTR ds:@obj3:current_room                          ; fixup: num: 11016, src obj: 1, src ofs: 0x41a3f, dst obj: 3, dst ofs: 0x25ac4
   41a43:	db 42 04             	fild   DWORD PTR [edx+0x4]
   41a46:	d8 5e 1c             	fcomp  DWORD PTR [esi+0x1c]
   41a49:	df e0                	fnstsw ax
   41a4b:	9e                   	sahf   
   41a4c:	77 10                	ja     update_mod_76_2_branch_349
   41a4e:	db 46 20             	fild   DWORD PTR [esi+0x20]
   41a51:	d8 46 1c             	fadd   DWORD PTR [esi+0x1c]
   41a54:	db 42 08             	fild   DWORD PTR [edx+0x8]
   41a57:	de d9                	fcompp 
   41a59:	df e0                	fnstsw ax
   41a5b:	9e                   	sahf   
   41a5c:	73 0a                	jae    update_mod_76_2_branch_350
update_mod_76_2_branch_349:
   41a5e:	c7 86 a8 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x10a8],0x0
update_mod_76_2_branch_350:
   41a68:	83 7e 38 05          	cmp    DWORD PTR [esi+0x38],0x5
   41a6c:	74 50                	je     update_mod_76_2_branch_353
   41a6e:	8b 86 78 10 00 00    	mov    eax,DWORD PTR [esi+0x1078]
   41a74:	8b ae 74 11 00 00    	mov    ebp,DWORD PTR [esi+0x1174]
   41a7a:	8b 96 64 10 00 00    	mov    edx,DWORD PTR [esi+0x1064]
   41a80:	01 e8                	add    eax,ebp
   41a82:	39 d0                	cmp    eax,edx
   41a84:	75 0e                	jne    update_mod_76_2_branch_351
   41a86:	8b 9e 60 11 00 00    	mov    ebx,DWORD PTR [esi+0x1160]
   41a8c:	85 db                	test   ebx,ebx
   41a8e:	74 04                	je     update_mod_76_2_branch_351
   41a90:	89 d8                	mov    eax,ebx
   41a92:	eb 25                	jmp    update_mod_76_2_branch_352
update_mod_76_2_branch_351:
   41a94:	8b 86 78 10 00 00    	mov    eax,DWORD PTR [esi+0x1078]
   41a9a:	03 86 74 11 00 00    	add    eax,DWORD PTR [esi+0x1174]
   41aa0:	8b be 64 10 00 00    	mov    edi,DWORD PTR [esi+0x1064]
   41aa6:	83 c0 04             	add    eax,0x4
   41aa9:	39 f8                	cmp    eax,edi
   41aab:	75 11                	jne    update_mod_76_2_branch_353
   41aad:	8b ae 64 11 00 00    	mov    ebp,DWORD PTR [esi+0x1164]
   41ab3:	85 ed                	test   ebp,ebp
   41ab5:	74 07                	je     update_mod_76_2_branch_353
   41ab7:	89 e8                	mov    eax,ebp
update_mod_76_2_branch_352:
   41ab9:	e8 f2 7c fc ff       	call   play
update_mod_76_2_branch_353:
   41abe:	d9 46 18             	fld    DWORD PTR [esi+0x18]
   41ac1:	d8 0d 81 a7 00 00    	fmul   DWORD PTR ds:@obj3:classes_cpp_variable_131                  ; fixup: num: 11017, src obj: 1, src ofs: 0x41ac3, dst obj: 3, dst ofs: 0xa781
   41ac7:	e8 7c 42 03 00       	call   __CHP
   41acc:	db 9e a0 10 00 00    	fistp  DWORD PTR [esi+0x10a0]
   41ad2:	e9 c6 d4 ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_reference_53:
   41ad7:	8b 9e 80 10 00 00    	mov    ebx,DWORD PTR [esi+0x1080]
   41add:	89 f1                	mov    ecx,esi
   41adf:	85 db                	test   ebx,ebx
   41ae1:	74 14                	je     update_mod_76_2_branch_354
   41ae3:	b8 64 00 00 00       	mov    eax,0x64
   41ae8:	89 c2                	mov    edx,eax
   41aea:	c1 fa 1f             	sar    edx,0x1f
   41aed:	f7 fb                	idiv   ebx
   41aef:	89 86 60 10 00 00    	mov    DWORD PTR [esi+0x1060],eax
   41af5:	eb 06                	jmp    update_mod_76_2_branch_355
update_mod_76_2_branch_354:
   41af7:	89 9e 60 10 00 00    	mov    DWORD PTR [esi+0x1060],ebx
update_mod_76_2_branch_355:
   41afd:	3b 99 68 10 00 00    	cmp    ebx,DWORD PTR [ecx+0x1068]
   41b03:	74 10                	je     update_mod_76_2_branch_356
   41b05:	c7 81 5c 10 00 00 00 00 00 00 	mov    DWORD PTR [ecx+0x105c],0x0
   41b0f:	89 99 68 10 00 00    	mov    DWORD PTR [ecx+0x1068],ebx
update_mod_76_2_branch_356:
   41b15:	83 be 98 11 00 00 14 	cmp    DWORD PTR [esi+0x1198],0x14
   41b1c:	7d 44                	jge    update_mod_76_2_branch_357
   41b1e:	c6 86 a0 11 00 00 01 	mov    BYTE PTR [esi+0x11a0],0x1
   41b25:	8a 86 a0 11 00 00    	mov    al,BYTE PTR [esi+0x11a0]
   41b2b:	ba 0e 00 00 00       	mov    edx,0xe
   41b30:	88 86 a1 11 00 00    	mov    BYTE PTR [esi+0x11a1],al
   41b36:	89 f0                	mov    eax,esi
   41b38:	c7 86 ac 10 00 00 ff ff ff ff 	mov    DWORD PTR [esi+0x10ac],0xffffffff
   41b42:	e8 59 ad ff ff       	call   go_to_frame_mod_76
   41b47:	c7 86 78 10 00 00 0e 00 00 00 	mov    DWORD PTR [esi+0x1078],0xe
   41b51:	8b 86 78 10 00 00    	mov    eax,DWORD PTR [esi+0x1078]
   41b57:	89 86 6c 10 00 00    	mov    DWORD PTR [esi+0x106c],eax
   41b5d:	e9 3b d4 ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_branch_357:
   41b62:	8b 96 9c 10 00 00    	mov    edx,DWORD PTR [esi+0x109c]
   41b68:	85 d2                	test   edx,edx
   41b6a:	0f 84 9d 00 00 00    	je     update_mod_76_2_branch_358
   41b70:	8a 5a 08             	mov    bl,BYTE PTR [edx+0x8]
   41b73:	89 d0                	mov    eax,edx
   41b75:	84 db                	test   bl,bl
   41b77:	0f 84 90 00 00 00    	je     update_mod_76_2_branch_358
   41b7d:	3b 96 98 10 00 00    	cmp    edx,DWORD PTR [esi+0x1098]
   41b83:	0f 84 84 00 00 00    	je     update_mod_76_2_branch_358
   41b89:	3b 96 8c 10 00 00    	cmp    edx,DWORD PTR [esi+0x108c]
   41b8f:	0f 84 78 00 00 00    	je     update_mod_76_2_branch_358
   41b95:	3b 96 90 10 00 00    	cmp    edx,DWORD PTR [esi+0x1090]
   41b9b:	74 70                	je     update_mod_76_2_branch_358
   41b9d:	8b 52 3c             	mov    edx,DWORD PTR [edx+0x3c]
   41ba0:	8b 68 24             	mov    ebp,DWORD PTR [eax+0x24]
   41ba3:	8b 9e 98 11 00 00    	mov    ebx,DWORD PTR [esi+0x1198]
   41ba9:	01 ea                	add    edx,ebp
   41bab:	39 da                	cmp    edx,ebx
   41bad:	7d 5e                	jge    update_mod_76_2_branch_358
   41baf:	c6 86 a0 11 00 00 01 	mov    BYTE PTR [esi+0x11a0],0x1
   41bb6:	89 86 94 10 00 00    	mov    DWORD PTR [esi+0x1094],eax
   41bbc:	8a 86 a0 11 00 00    	mov    al,BYTE PTR [esi+0x11a0]
   41bc2:	ba 0e 00 00 00       	mov    edx,0xe
   41bc7:	88 86 a1 11 00 00    	mov    BYTE PTR [esi+0x11a1],al
   41bcd:	89 f0                	mov    eax,esi
   41bcf:	e8 cc ac ff ff       	call   go_to_frame_mod_76
   41bd4:	c7 86 78 10 00 00 0e 00 00 00 	mov    DWORD PTR [esi+0x1078],0xe
   41bde:	c7 86 a0 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x10a0],0x0
   41be8:	c7 86 a4 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x10a4],0x0
   41bf2:	c7 86 a8 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x10a8],0x0
   41bfc:	8b 86 78 10 00 00    	mov    eax,DWORD PTR [esi+0x1078]
   41c02:	89 86 6c 10 00 00    	mov    DWORD PTR [esi+0x106c],eax
   41c08:	e9 90 d3 ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_branch_358:
   41c0d:	f7 86 a8 10 00 00 ff ff ff 7f 	test   DWORD PTR [esi+0x10a8],0x7fffffff
   41c17:	74 2b                	je     update_mod_76_2_branch_360
   41c19:	8b 15 c4 5a 02 00    	mov    edx,DWORD PTR ds:@obj3:current_room                          ; fixup: num: 11018, src obj: 1, src ofs: 0x41c1b, dst obj: 3, dst ofs: 0x25ac4
   41c1f:	db 42 04             	fild   DWORD PTR [edx+0x4]
   41c22:	d8 5e 1c             	fcomp  DWORD PTR [esi+0x1c]
   41c25:	df e0                	fnstsw ax
   41c27:	9e                   	sahf   
   41c28:	77 10                	ja     update_mod_76_2_branch_359
   41c2a:	db 46 20             	fild   DWORD PTR [esi+0x20]
   41c2d:	d8 46 1c             	fadd   DWORD PTR [esi+0x1c]
   41c30:	db 42 08             	fild   DWORD PTR [edx+0x8]
   41c33:	de d9                	fcompp 
   41c35:	df e0                	fnstsw ax
   41c37:	9e                   	sahf   
   41c38:	73 0a                	jae    update_mod_76_2_branch_360
update_mod_76_2_branch_359:
   41c3a:	c7 86 a8 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x10a8],0x0
update_mod_76_2_branch_360:
   41c44:	83 7e 38 05          	cmp    DWORD PTR [esi+0x38],0x5
   41c48:	74 50                	je     update_mod_76_2_branch_363
   41c4a:	8b 86 78 10 00 00    	mov    eax,DWORD PTR [esi+0x1078]
   41c50:	8b ae 74 11 00 00    	mov    ebp,DWORD PTR [esi+0x1174]
   41c56:	8b 96 64 10 00 00    	mov    edx,DWORD PTR [esi+0x1064]
   41c5c:	01 e8                	add    eax,ebp
   41c5e:	39 d0                	cmp    eax,edx
   41c60:	75 0e                	jne    update_mod_76_2_branch_361
   41c62:	8b 9e 60 11 00 00    	mov    ebx,DWORD PTR [esi+0x1160]
   41c68:	85 db                	test   ebx,ebx
   41c6a:	74 04                	je     update_mod_76_2_branch_361
   41c6c:	89 d8                	mov    eax,ebx
   41c6e:	eb 25                	jmp    update_mod_76_2_branch_362
update_mod_76_2_branch_361:
   41c70:	8b 86 78 10 00 00    	mov    eax,DWORD PTR [esi+0x1078]
   41c76:	03 86 74 11 00 00    	add    eax,DWORD PTR [esi+0x1174]
   41c7c:	8b be 64 10 00 00    	mov    edi,DWORD PTR [esi+0x1064]
   41c82:	83 c0 04             	add    eax,0x4
   41c85:	39 f8                	cmp    eax,edi
   41c87:	75 11                	jne    update_mod_76_2_branch_363
   41c89:	8b ae 64 11 00 00    	mov    ebp,DWORD PTR [esi+0x1164]
   41c8f:	85 ed                	test   ebp,ebp
   41c91:	74 07                	je     update_mod_76_2_branch_363
   41c93:	89 e8                	mov    eax,ebp
update_mod_76_2_branch_362:
   41c95:	e8 16 7b fc ff       	call   play
update_mod_76_2_branch_363:
   41c9a:	c7 86 a0 10 00 00 f8 ff ff ff 	mov    DWORD PTR [esi+0x10a0],0xfffffff8
   41ca4:	e9 f4 d2 ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_reference_54:
   41ca9:	8b 9e 80 10 00 00    	mov    ebx,DWORD PTR [esi+0x1080]
   41caf:	89 f1                	mov    ecx,esi
   41cb1:	85 db                	test   ebx,ebx
   41cb3:	74 14                	je     update_mod_76_2_branch_364
   41cb5:	b8 64 00 00 00       	mov    eax,0x64
   41cba:	89 c2                	mov    edx,eax
   41cbc:	c1 fa 1f             	sar    edx,0x1f
   41cbf:	f7 fb                	idiv   ebx
   41cc1:	89 86 60 10 00 00    	mov    DWORD PTR [esi+0x1060],eax
   41cc7:	eb 06                	jmp    update_mod_76_2_branch_365
update_mod_76_2_branch_364:
   41cc9:	89 9e 60 10 00 00    	mov    DWORD PTR [esi+0x1060],ebx
update_mod_76_2_branch_365:
   41ccf:	3b 99 68 10 00 00    	cmp    ebx,DWORD PTR [ecx+0x1068]
   41cd5:	74 10                	je     update_mod_76_2_branch_366
   41cd7:	c7 81 5c 10 00 00 00 00 00 00 	mov    DWORD PTR [ecx+0x105c],0x0
   41ce1:	89 99 68 10 00 00    	mov    DWORD PTR [ecx+0x1068],ebx
update_mod_76_2_branch_366:
   41ce7:	8b ae 98 11 00 00    	mov    ebp,DWORD PTR [esi+0x1198]
   41ced:	81 fd 58 02 00 00    	cmp    ebp,0x258
   41cf3:	7e 44                	jle    update_mod_76_2_branch_367
   41cf5:	c6 86 a0 11 00 00 02 	mov    BYTE PTR [esi+0x11a0],0x2
   41cfc:	8a 86 a0 11 00 00    	mov    al,BYTE PTR [esi+0x11a0]
   41d02:	ba 2c 00 00 00       	mov    edx,0x2c
   41d07:	88 86 a1 11 00 00    	mov    BYTE PTR [esi+0x11a1],al
   41d0d:	89 f0                	mov    eax,esi
   41d0f:	c7 86 ac 10 00 00 ff ff ff ff 	mov    DWORD PTR [esi+0x10ac],0xffffffff
   41d19:	e8 82 ab ff ff       	call   go_to_frame_mod_76
   41d1e:	c7 86 78 10 00 00 2c 00 00 00 	mov    DWORD PTR [esi+0x1078],0x2c
   41d28:	8b 86 78 10 00 00    	mov    eax,DWORD PTR [esi+0x1078]
   41d2e:	89 86 6c 10 00 00    	mov    DWORD PTR [esi+0x106c],eax
   41d34:	e9 64 d2 ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_branch_367:
   41d39:	8b 86 9c 10 00 00    	mov    eax,DWORD PTR [esi+0x109c]
   41d3f:	85 c0                	test   eax,eax
   41d41:	0f 84 40 02 00 00    	je     update_mod_76_2_branch_377
   41d47:	80 78 08 00          	cmp    BYTE PTR [eax+0x8],0x0
   41d4b:	0f 84 36 02 00 00    	je     update_mod_76_2_branch_377
   41d51:	3b 86 94 10 00 00    	cmp    eax,DWORD PTR [esi+0x1094]
   41d57:	0f 84 2a 02 00 00    	je     update_mod_76_2_branch_377
   41d5d:	3b 86 8c 10 00 00    	cmp    eax,DWORD PTR [esi+0x108c]
   41d63:	0f 84 1e 02 00 00    	je     update_mod_76_2_branch_377
   41d69:	3b 86 90 10 00 00    	cmp    eax,DWORD PTR [esi+0x1090]
   41d6f:	0f 84 12 02 00 00    	je     update_mod_76_2_branch_377
   41d75:	8b 50 3c             	mov    edx,DWORD PTR [eax+0x3c]
   41d78:	03 50 24             	add    edx,DWORD PTR [eax+0x24]
   41d7b:	39 ea                	cmp    edx,ebp
   41d7d:	0f 8e 04 02 00 00    	jle    update_mod_76_2_branch_377
   41d83:	8b 8e ac 10 00 00    	mov    ecx,DWORD PTR [esi+0x10ac]
   41d89:	89 f3                	mov    ebx,esi
   41d8b:	83 f9 ff             	cmp    ecx,0xffffffff
   41d8e:	75 1a                	jne    update_mod_76_2_branch_368
   41d90:	d9 86 b4 10 00 00    	fld    DWORD PTR [esi+0x10b4]
   41d96:	e8 ad 3f 03 00       	call   __CHP
   41d9b:	db 5c 24 04          	fistp  DWORD PTR [esp+0x4]
   41d9f:	83 7c 24 04 9d       	cmp    DWORD PTR [esp+0x4],0xffffff9d
   41da4:	0f 84 79 01 00 00    	je     update_mod_76_2_branch_376
update_mod_76_2_branch_368:
   41daa:	8b ab 24 11 00 00    	mov    ebp,DWORD PTR [ebx+0x1124]
   41db0:	45                   	inc    ebp
   41db1:	8a 8b a0 11 00 00    	mov    cl,BYTE PTR [ebx+0x11a0]
   41db7:	89 ab 24 11 00 00    	mov    DWORD PTR [ebx+0x1124],ebp
   41dbd:	80 f9 07             	cmp    cl,0x7
   41dc0:	74 13                	je     update_mod_76_2_branch_369
   41dc2:	80 f9 0e             	cmp    cl,0xe
   41dc5:	74 0e                	je     update_mod_76_2_branch_369
   41dc7:	80 f9 39             	cmp    cl,0x39
   41dca:	74 09                	je     update_mod_76_2_branch_369
   41dcc:	80 f9 3a             	cmp    cl,0x3a
   41dcf:	0f 85 94 00 00 00    	jne    update_mod_76_2_branch_372
update_mod_76_2_branch_369:
   41dd5:	8b 8b 9c 10 00 00    	mov    ecx,DWORD PTR [ebx+0x109c]
   41ddb:	8b 41 20             	mov    eax,DWORD PTR [ecx+0x20]
   41dde:	89 c2                	mov    edx,eax
   41de0:	c1 fa 1f             	sar    edx,0x1f
   41de3:	2b c2                	sub    eax,edx
   41de5:	d1 f8                	sar    eax,1
   41de7:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
   41deb:	db 44 24 04          	fild   DWORD PTR [esp+0x4]
   41def:	8b ab 24 11 00 00    	mov    ebp,DWORD PTR [ebx+0x1124]
   41df5:	8d 55 ff             	lea    edx,[ebp-0x1]
   41df8:	d8 41 1c             	fadd   DWORD PTR [ecx+0x1c]
   41dfb:	8d 04 95 00 00 00 00 	lea    eax,[edx*4+0x0]
   41e02:	29 d0                	sub    eax,edx
   41e04:	8d 04 85 00 00 00 00 	lea    eax,[eax*4+0x0]
   41e0b:	8d 3c 03             	lea    edi,[ebx+eax*1]
   41e0e:	8d 04 ad 00 00 00 00 	lea    eax,[ebp*4+0x0]
   41e15:	29 e8                	sub    eax,ebp
   41e17:	8d 04 85 00 00 00 00 	lea    eax,[eax*4+0x0]
   41e1e:	8d 14 18             	lea    edx,[eax+ebx*1]
   41e21:	d8 9f b4 10 00 00    	fcomp  DWORD PTR [edi+0x10b4]
   41e27:	df e0                	fnstsw ax
   41e29:	9e                   	sahf   
   41e2a:	77 0c                	ja     update_mod_76_2_branch_370
   41e2c:	db 41 20             	fild   DWORD PTR [ecx+0x20]
   41e2f:	d8 41 1c             	fadd   DWORD PTR [ecx+0x1c]
   41e32:	d9 e8                	fld1   
   41e34:	de c1                	faddp  st(1),st
   41e36:	eb 0c                	jmp    update_mod_76_2_branch_371
update_mod_76_2_branch_370:
   41e38:	db 43 20             	fild   DWORD PTR [ebx+0x20]
   41e3b:	d8 69 1c             	fsubr  DWORD PTR [ecx+0x1c]
   41e3e:	d8 05 7d a7 00 00    	fadd   DWORD PTR ds:@obj3:classes_cpp_variable_130                  ; fixup: num: 11019, src obj: 1, src ofs: 0x41e40, dst obj: 3, dst ofs: 0xa77d
update_mod_76_2_branch_371:
   41e44:	d9 9a b4 10 00 00    	fstp   DWORD PTR [edx+0x10b4]
   41e4a:	8b 93 24 11 00 00    	mov    edx,DWORD PTR [ebx+0x1124]
   41e50:	8d 04 95 00 00 00 00 	lea    eax,[edx*4+0x0]
   41e57:	29 d0                	sub    eax,edx
   41e59:	c7 84 83 ac 10 00 00 ff ff ff ff 	mov    DWORD PTR [ebx+eax*4+0x10ac],0xffffffff
   41e64:	e9 ba 00 00 00       	jmp    update_mod_76_2_branch_376
update_mod_76_2_branch_372:
   41e69:	80 f9 04             	cmp    cl,0x4
   41e6c:	74 09                	je     update_mod_76_2_branch_373
   41e6e:	80 f9 0b             	cmp    cl,0xb
   41e71:	0f 85 ac 00 00 00    	jne    update_mod_76_2_branch_376
update_mod_76_2_branch_373:
   41e77:	8b 83 9c 10 00 00    	mov    eax,DWORD PTR [ebx+0x109c]
   41e7d:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
   41e80:	8b 00                	mov    eax,DWORD PTR [eax]
   41e82:	d1 e8                	shr    eax,1
   41e84:	50                   	push   eax
   41e85:	68 aa a6 00 00       	push   @obj3:classes_cpp_variable_118                               ; fixup: num: 11021, src obj: 1, src ofs: 0x41e86, dst obj: 3, dst ofs: 0xa6aa
   41e8a:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 11020, src obj: 1, src ofs: 0x41e8b, dst obj: 3, dst ofs: 0x237fc
   41e8f:	e8 4d ed 02 00       	call   sprintf_
   41e94:	8b 93 9c 10 00 00    	mov    edx,DWORD PTR [ebx+0x109c]
   41e9a:	83 c4 0c             	add    esp,0xc
   41e9d:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
   41ea0:	89 44 24 30          	mov    DWORD PTR [esp+0x30],eax
   41ea4:	8b 00                	mov    eax,DWORD PTR [eax]
   41ea6:	8b 7a 3c             	mov    edi,DWORD PTR [edx+0x3c]
   41ea9:	d1 e8                	shr    eax,1
   41eab:	01 c7                	add    edi,eax
   41ead:	8b 83 24 11 00 00    	mov    eax,DWORD PTR [ebx+0x1124]
   41eb3:	89 44 24 28          	mov    DWORD PTR [esp+0x28],eax
   41eb7:	8d 48 ff             	lea    ecx,[eax-0x1]
   41eba:	8d 04 8d 00 00 00 00 	lea    eax,[ecx*4+0x0]
   41ec1:	29 c8                	sub    eax,ecx
   41ec3:	8d 04 85 00 00 00 00 	lea    eax,[eax*4+0x0]
   41eca:	8b 4c 24 28          	mov    ecx,DWORD PTR [esp+0x28]
   41ece:	8d 2c 03             	lea    ebp,[ebx+eax*1]
   41ed1:	8d 04 8d 00 00 00 00 	lea    eax,[ecx*4+0x0]
   41ed8:	29 c8                	sub    eax,ecx
   41eda:	8d 04 85 00 00 00 00 	lea    eax,[eax*4+0x0]
   41ee1:	8d 0c 18             	lea    ecx,[eax+ebx*1]
   41ee4:	3b bd ac 10 00 00    	cmp    edi,DWORD PTR [ebp+0x10ac]
   41eea:	7f 0e                	jg     update_mod_76_2_branch_374
   41eec:	8b 42 3c             	mov    eax,DWORD PTR [edx+0x3c]
   41eef:	8b 54 24 30          	mov    edx,DWORD PTR [esp+0x30]
   41ef3:	03 02                	add    eax,DWORD PTR [edx]
   41ef5:	83 c0 28             	add    eax,0x28
   41ef8:	eb 09                	jmp    update_mod_76_2_branch_375
update_mod_76_2_branch_374:
   41efa:	8b 42 3c             	mov    eax,DWORD PTR [edx+0x3c]
   41efd:	2b 43 2c             	sub    eax,DWORD PTR [ebx+0x2c]
   41f00:	83 e8 28             	sub    eax,0x28
update_mod_76_2_branch_375:
   41f03:	89 81 ac 10 00 00    	mov    DWORD PTR [ecx+0x10ac],eax
   41f09:	8b 93 24 11 00 00    	mov    edx,DWORD PTR [ebx+0x1124]
   41f0f:	8d 04 95 00 00 00 00 	lea    eax,[edx*4+0x0]
   41f16:	29 d0                	sub    eax,edx
   41f18:	c7 84 83 b4 10 00 00 00 00 c6 c2 	mov    DWORD PTR [ebx+eax*4+0x10b4],0xc2c60000
update_mod_76_2_branch_376:
   41f23:	8b 86 9c 10 00 00    	mov    eax,DWORD PTR [esi+0x109c]
   41f29:	c6 86 a0 11 00 00 02 	mov    BYTE PTR [esi+0x11a0],0x2
   41f30:	89 86 98 10 00 00    	mov    DWORD PTR [esi+0x1098],eax
   41f36:	8a 86 a0 11 00 00    	mov    al,BYTE PTR [esi+0x11a0]
   41f3c:	ba 2c 00 00 00       	mov    edx,0x2c
   41f41:	88 86 a1 11 00 00    	mov    BYTE PTR [esi+0x11a1],al
   41f47:	89 f0                	mov    eax,esi
   41f49:	e8 52 a9 ff ff       	call   go_to_frame_mod_76
   41f4e:	c7 86 78 10 00 00 2c 00 00 00 	mov    DWORD PTR [esi+0x1078],0x2c
   41f58:	c7 86 a0 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x10a0],0x0
   41f62:	c7 86 a4 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x10a4],0x0
   41f6c:	c7 86 a8 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x10a8],0x0
   41f76:	8b 86 78 10 00 00    	mov    eax,DWORD PTR [esi+0x1078]
   41f7c:	89 86 6c 10 00 00    	mov    DWORD PTR [esi+0x106c],eax
   41f82:	e9 16 d0 ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_branch_377:
   41f87:	f7 86 a8 10 00 00 ff ff ff 7f 	test   DWORD PTR [esi+0x10a8],0x7fffffff
   41f91:	74 2b                	je     update_mod_76_2_branch_379
   41f93:	8b 15 c4 5a 02 00    	mov    edx,DWORD PTR ds:@obj3:current_room                          ; fixup: num: 11022, src obj: 1, src ofs: 0x41f95, dst obj: 3, dst ofs: 0x25ac4
   41f99:	db 42 04             	fild   DWORD PTR [edx+0x4]
   41f9c:	d8 5e 1c             	fcomp  DWORD PTR [esi+0x1c]
   41f9f:	df e0                	fnstsw ax
   41fa1:	9e                   	sahf   
   41fa2:	77 10                	ja     update_mod_76_2_branch_378
   41fa4:	db 46 20             	fild   DWORD PTR [esi+0x20]
   41fa7:	d8 46 1c             	fadd   DWORD PTR [esi+0x1c]
   41faa:	db 42 08             	fild   DWORD PTR [edx+0x8]
   41fad:	de d9                	fcompp 
   41faf:	df e0                	fnstsw ax
   41fb1:	9e                   	sahf   
   41fb2:	73 0a                	jae    update_mod_76_2_branch_379
update_mod_76_2_branch_378:
   41fb4:	c7 86 a8 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x10a8],0x0
update_mod_76_2_branch_379:
   41fbe:	83 7e 38 05          	cmp    DWORD PTR [esi+0x38],0x5
   41fc2:	74 50                	je     update_mod_76_2_branch_382
   41fc4:	8b 86 78 10 00 00    	mov    eax,DWORD PTR [esi+0x1078]
   41fca:	8b 9e 74 11 00 00    	mov    ebx,DWORD PTR [esi+0x1174]
   41fd0:	8b 8e 64 10 00 00    	mov    ecx,DWORD PTR [esi+0x1064]
   41fd6:	01 d8                	add    eax,ebx
   41fd8:	39 c8                	cmp    eax,ecx
   41fda:	75 0e                	jne    update_mod_76_2_branch_380
   41fdc:	8b be 60 11 00 00    	mov    edi,DWORD PTR [esi+0x1160]
   41fe2:	85 ff                	test   edi,edi
   41fe4:	74 04                	je     update_mod_76_2_branch_380
   41fe6:	89 f8                	mov    eax,edi
   41fe8:	eb 25                	jmp    update_mod_76_2_branch_381
update_mod_76_2_branch_380:
   41fea:	8b 86 78 10 00 00    	mov    eax,DWORD PTR [esi+0x1078]
   41ff0:	03 86 74 11 00 00    	add    eax,DWORD PTR [esi+0x1174]
   41ff6:	8b 96 64 10 00 00    	mov    edx,DWORD PTR [esi+0x1064]
   41ffc:	83 c0 04             	add    eax,0x4
   41fff:	39 d0                	cmp    eax,edx
   42001:	75 11                	jne    update_mod_76_2_branch_382
   42003:	8b 9e 64 11 00 00    	mov    ebx,DWORD PTR [esi+0x1164]
   42009:	85 db                	test   ebx,ebx
   4200b:	74 07                	je     update_mod_76_2_branch_382
   4200d:	89 d8                	mov    eax,ebx
update_mod_76_2_branch_381:
   4200f:	e8 9c 77 fc ff       	call   play
update_mod_76_2_branch_382:
   42014:	c7 86 a0 10 00 00 08 00 00 00 	mov    DWORD PTR [esi+0x10a0],0x8
   4201e:	e9 7a cf ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_reference_55:
   42023:	8b 8e 80 10 00 00    	mov    ecx,DWORD PTR [esi+0x1080]
   42029:	89 f3                	mov    ebx,esi
   4202b:	85 c9                	test   ecx,ecx
   4202d:	74 14                	je     update_mod_76_2_branch_383
   4202f:	b8 64 00 00 00       	mov    eax,0x64
   42034:	89 c2                	mov    edx,eax
   42036:	c1 fa 1f             	sar    edx,0x1f
   42039:	f7 f9                	idiv   ecx
   4203b:	89 86 60 10 00 00    	mov    DWORD PTR [esi+0x1060],eax
   42041:	eb 06                	jmp    update_mod_76_2_branch_384
update_mod_76_2_branch_383:
   42043:	89 8e 60 10 00 00    	mov    DWORD PTR [esi+0x1060],ecx
update_mod_76_2_branch_384:
   42049:	3b 8b 68 10 00 00    	cmp    ecx,DWORD PTR [ebx+0x1068]
   4204f:	74 10                	je     update_mod_76_2_branch_385
   42051:	c7 83 5c 10 00 00 00 00 00 00 	mov    DWORD PTR [ebx+0x105c],0x0
   4205b:	89 8b 68 10 00 00    	mov    DWORD PTR [ebx+0x1068],ecx
update_mod_76_2_branch_385:
   42061:	a1 c4 5a 02 00       	mov    eax,ds:@obj3:current_room                                    ; fixup: num: 11023, src obj: 1, src ofs: 0x42062, dst obj: 3, dst ofs: 0x25ac4
   42066:	db 40 04             	fild   DWORD PTR [eax+0x4]
   42069:	d8 5e 1c             	fcomp  DWORD PTR [esi+0x1c]
   4206c:	df e0                	fnstsw ax
   4206e:	9e                   	sahf   
   4206f:	72 6f                	jb     update_mod_76_2_branch_386
   42071:	c7 86 a4 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x10a4],0x0
   4207b:	c6 86 a0 11 00 00 00 	mov    BYTE PTR [esi+0x11a0],0x0
   42082:	8b 86 a4 10 00 00    	mov    eax,DWORD PTR [esi+0x10a4]
   42088:	89 86 a0 10 00 00    	mov    DWORD PTR [esi+0x10a0],eax
   4208e:	8a 86 a0 11 00 00    	mov    al,BYTE PTR [esi+0x11a0]
   42094:	ba 3b 00 00 00       	mov    edx,0x3b
   42099:	88 86 a1 11 00 00    	mov    BYTE PTR [esi+0x11a1],al
   4209f:	89 f0                	mov    eax,esi
   420a1:	c7 86 a8 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x10a8],0x0
   420ab:	e8 f0 a7 ff ff       	call   go_to_frame_mod_76
   420b0:	c7 86 78 10 00 00 3b 00 00 00 	mov    DWORD PTR [esi+0x1078],0x3b
   420ba:	8b 86 78 10 00 00    	mov    eax,DWORD PTR [esi+0x1078]
   420c0:	89 86 6c 10 00 00    	mov    DWORD PTR [esi+0x106c],eax
   420c6:	a1 c4 5a 02 00       	mov    eax,ds:@obj3:current_room                                    ; fixup: num: 11024, src obj: 1, src ofs: 0x420c7, dst obj: 3, dst ofs: 0x25ac4
   420cb:	db 40 04             	fild   DWORD PTR [eax+0x4]
   420ce:	c7 86 b4 10 00 00 00 00 c6 c2 	mov    DWORD PTR [esi+0x10b4],0xc2c60000
   420d8:	d9 5e 1c             	fstp   DWORD PTR [esi+0x1c]
   420db:	e9 bd ce ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_branch_386:
   420e0:	8b 9e 9c 10 00 00    	mov    ebx,DWORD PTR [esi+0x109c]
   420e6:	85 db                	test   ebx,ebx
   420e8:	0f 84 d7 00 00 00    	je     update_mod_76_2_branch_389
   420ee:	89 d8                	mov    eax,ebx
   420f0:	80 7b 08 00          	cmp    BYTE PTR [ebx+0x8],0x0
   420f4:	0f 84 cb 00 00 00    	je     update_mod_76_2_branch_389
   420fa:	3b 86 98 10 00 00    	cmp    eax,DWORD PTR [esi+0x1098]
   42100:	0f 84 bf 00 00 00    	je     update_mod_76_2_branch_389
   42106:	3b 86 94 10 00 00    	cmp    eax,DWORD PTR [esi+0x1094]
   4210c:	0f 84 b3 00 00 00    	je     update_mod_76_2_branch_389
   42112:	3b 86 90 10 00 00    	cmp    eax,DWORD PTR [esi+0x1090]
   42118:	0f 84 a7 00 00 00    	je     update_mod_76_2_branch_389
   4211e:	8b 96 ac 10 00 00    	mov    edx,DWORD PTR [esi+0x10ac]
   42124:	c7 86 b4 10 00 00 00 00 c6 c2 	mov    DWORD PTR [esi+0x10b4],0xc2c60000
   4212e:	83 fa ff             	cmp    edx,0xffffffff
   42131:	75 06                	jne    update_mod_76_2_branch_387
   42133:	89 96 24 11 00 00    	mov    DWORD PTR [esi+0x1124],edx
update_mod_76_2_branch_387:
   42139:	8b 86 9c 10 00 00    	mov    eax,DWORD PTR [esi+0x109c]
   4213f:	c6 86 a0 11 00 00 00 	mov    BYTE PTR [esi+0x11a0],0x0
   42146:	89 86 8c 10 00 00    	mov    DWORD PTR [esi+0x108c],eax
   4214c:	8a 86 a0 11 00 00    	mov    al,BYTE PTR [esi+0x11a0]
   42152:	ba 3b 00 00 00       	mov    edx,0x3b
   42157:	88 86 a1 11 00 00    	mov    BYTE PTR [esi+0x11a1],al
   4215d:	89 f0                	mov    eax,esi
   4215f:	e8 3c a7 ff ff       	call   go_to_frame_mod_76
   42164:	c7 86 78 10 00 00 3b 00 00 00 	mov    DWORD PTR [esi+0x1078],0x3b
   4216e:	c7 86 a4 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x10a4],0x0
   42178:	c7 86 a8 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x10a8],0x0
   42182:	8b 86 78 10 00 00    	mov    eax,DWORD PTR [esi+0x1078]
   42188:	89 86 6c 10 00 00    	mov    DWORD PTR [esi+0x106c],eax
   4218e:	8b 86 a4 10 00 00    	mov    eax,DWORD PTR [esi+0x10a4]
   42194:	8b 9e 60 11 00 00    	mov    ebx,DWORD PTR [esi+0x1160]
   4219a:	89 86 a0 10 00 00    	mov    DWORD PTR [esi+0x10a0],eax
   421a0:	85 db                	test   ebx,ebx
   421a2:	74 07                	je     update_mod_76_2_branch_388
   421a4:	89 d8                	mov    eax,ebx
   421a6:	e8 05 76 fc ff       	call   play
update_mod_76_2_branch_388:
   421ab:	8b 8e 64 11 00 00    	mov    ecx,DWORD PTR [esi+0x1164]
   421b1:	85 c9                	test   ecx,ecx
   421b3:	0f 84 e4 cd ff ff    	je     update_mod_76_2_reference_2
   421b9:	89 c8                	mov    eax,ecx
   421bb:	e8 f0 75 fc ff       	call   play
   421c0:	e9 d8 cd ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_branch_389:
   421c5:	83 7e 38 05          	cmp    DWORD PTR [esi+0x38],0x5
   421c9:	74 4e                	je     update_mod_76_2_branch_392
   421cb:	8b 86 78 10 00 00    	mov    eax,DWORD PTR [esi+0x1078]
   421d1:	8b 96 74 11 00 00    	mov    edx,DWORD PTR [esi+0x1174]
   421d7:	8b 9e 64 10 00 00    	mov    ebx,DWORD PTR [esi+0x1064]
   421dd:	01 d0                	add    eax,edx
   421df:	39 d8                	cmp    eax,ebx
   421e1:	75 0e                	jne    update_mod_76_2_branch_390
   421e3:	8b 8e 60 11 00 00    	mov    ecx,DWORD PTR [esi+0x1160]
   421e9:	85 c9                	test   ecx,ecx
   421eb:	74 04                	je     update_mod_76_2_branch_390
   421ed:	89 c8                	mov    eax,ecx
   421ef:	eb 23                	jmp    update_mod_76_2_branch_391
update_mod_76_2_branch_390:
   421f1:	8b 86 78 10 00 00    	mov    eax,DWORD PTR [esi+0x1078]
   421f7:	03 86 74 11 00 00    	add    eax,DWORD PTR [esi+0x1174]
   421fd:	8b ae 64 10 00 00    	mov    ebp,DWORD PTR [esi+0x1064]
   42203:	83 c0 04             	add    eax,0x4
   42206:	39 e8                	cmp    eax,ebp
   42208:	75 0f                	jne    update_mod_76_2_branch_392
   4220a:	8b 86 64 11 00 00    	mov    eax,DWORD PTR [esi+0x1164]
   42210:	85 c0                	test   eax,eax
   42212:	74 05                	je     update_mod_76_2_branch_392
update_mod_76_2_branch_391:
   42214:	e8 97 75 fc ff       	call   play
update_mod_76_2_branch_392:
   42219:	a1 c4 5a 02 00       	mov    eax,ds:@obj3:current_room                                    ; fixup: num: 11025, src obj: 1, src ofs: 0x4221a, dst obj: 3, dst ofs: 0x25ac4
   4221e:	c7 86 a8 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x10a8],0x0
   42228:	d9 40 20             	fld    DWORD PTR [eax+0x20]
   4222b:	d8 ae a8 10 00 00    	fsubr  DWORD PTR [esi+0x10a8]
   42231:	d9 9e a8 10 00 00    	fstp   DWORD PTR [esi+0x10a8]
   42237:	8b 86 40 11 00 00    	mov    eax,DWORD PTR [esi+0x1140]
   4223d:	99                   	cdq    
   4223e:	31 d0                	xor    eax,edx
   42240:	29 d0                	sub    eax,edx
   42242:	89 86 a4 10 00 00    	mov    DWORD PTR [esi+0x10a4],eax
   42248:	e9 50 cd ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_reference_56:
   4224d:	8b 9e 80 10 00 00    	mov    ebx,DWORD PTR [esi+0x1080]
   42253:	89 f1                	mov    ecx,esi
   42255:	85 db                	test   ebx,ebx
   42257:	74 14                	je     update_mod_76_2_branch_393
   42259:	b8 64 00 00 00       	mov    eax,0x64
   4225e:	89 c2                	mov    edx,eax
   42260:	c1 fa 1f             	sar    edx,0x1f
   42263:	f7 fb                	idiv   ebx
   42265:	89 86 60 10 00 00    	mov    DWORD PTR [esi+0x1060],eax
   4226b:	eb 06                	jmp    update_mod_76_2_branch_394
update_mod_76_2_branch_393:
   4226d:	89 9e 60 10 00 00    	mov    DWORD PTR [esi+0x1060],ebx
update_mod_76_2_branch_394:
   42273:	3b 99 68 10 00 00    	cmp    ebx,DWORD PTR [ecx+0x1068]
   42279:	74 10                	je     update_mod_76_2_branch_395
   4227b:	c7 81 5c 10 00 00 00 00 00 00 	mov    DWORD PTR [ecx+0x105c],0x0
   42285:	89 99 68 10 00 00    	mov    DWORD PTR [ecx+0x1068],ebx
update_mod_76_2_branch_395:
   4228b:	a1 c4 5a 02 00       	mov    eax,ds:@obj3:current_room                                    ; fixup: num: 11027, src obj: 1, src ofs: 0x4228c, dst obj: 3, dst ofs: 0x25ac4
   42290:	db 40 08             	fild   DWORD PTR [eax+0x8]
   42293:	d8 5e 1c             	fcomp  DWORD PTR [esi+0x1c]
   42296:	df e0                	fnstsw ax
   42298:	9e                   	sahf   
   42299:	77 6f                	ja     update_mod_76_2_branch_396
   4229b:	c7 86 a4 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x10a4],0x0
   422a5:	c6 86 a0 11 00 00 03 	mov    BYTE PTR [esi+0x11a0],0x3
   422ac:	8b 86 a4 10 00 00    	mov    eax,DWORD PTR [esi+0x10a4]
   422b2:	89 86 a0 10 00 00    	mov    DWORD PTR [esi+0x10a0],eax
   422b8:	8a 86 a0 11 00 00    	mov    al,BYTE PTR [esi+0x11a0]
   422be:	ba 28 00 00 00       	mov    edx,0x28
   422c3:	88 86 a1 11 00 00    	mov    BYTE PTR [esi+0x11a1],al
   422c9:	89 f0                	mov    eax,esi
   422cb:	c7 86 a8 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x10a8],0x0
   422d5:	e8 c6 a5 ff ff       	call   go_to_frame_mod_76
   422da:	c7 86 78 10 00 00 28 00 00 00 	mov    DWORD PTR [esi+0x1078],0x28
   422e4:	8b 86 78 10 00 00    	mov    eax,DWORD PTR [esi+0x1078]
   422ea:	89 86 6c 10 00 00    	mov    DWORD PTR [esi+0x106c],eax
   422f0:	a1 c4 5a 02 00       	mov    eax,ds:@obj3:current_room                                    ; fixup: num: 11026, src obj: 1, src ofs: 0x422f1, dst obj: 3, dst ofs: 0x25ac4
   422f5:	db 40 08             	fild   DWORD PTR [eax+0x8]
   422f8:	c7 86 b4 10 00 00 00 00 c6 c2 	mov    DWORD PTR [esi+0x10b4],0xc2c60000
   42302:	d9 5e 1c             	fstp   DWORD PTR [esi+0x1c]
   42305:	e9 93 cc ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_branch_396:
   4230a:	8b ae 9c 10 00 00    	mov    ebp,DWORD PTR [esi+0x109c]
   42310:	85 ed                	test   ebp,ebp
   42312:	0f 84 d8 00 00 00    	je     update_mod_76_2_branch_399
   42318:	8a 75 08             	mov    dh,BYTE PTR [ebp+0x8]
   4231b:	89 e8                	mov    eax,ebp
   4231d:	84 f6                	test   dh,dh
   4231f:	0f 84 cb 00 00 00    	je     update_mod_76_2_branch_399
   42325:	3b ae 98 10 00 00    	cmp    ebp,DWORD PTR [esi+0x1098]
   4232b:	0f 84 bf 00 00 00    	je     update_mod_76_2_branch_399
   42331:	3b ae 8c 10 00 00    	cmp    ebp,DWORD PTR [esi+0x108c]
   42337:	0f 84 b3 00 00 00    	je     update_mod_76_2_branch_399
   4233d:	3b ae 94 10 00 00    	cmp    ebp,DWORD PTR [esi+0x1094]
   42343:	0f 84 a7 00 00 00    	je     update_mod_76_2_branch_399
   42349:	8b 86 ac 10 00 00    	mov    eax,DWORD PTR [esi+0x10ac]
   4234f:	c7 86 b4 10 00 00 00 00 c6 c2 	mov    DWORD PTR [esi+0x10b4],0xc2c60000
   42359:	83 f8 ff             	cmp    eax,0xffffffff
   4235c:	75 06                	jne    update_mod_76_2_branch_397
   4235e:	89 86 24 11 00 00    	mov    DWORD PTR [esi+0x1124],eax
update_mod_76_2_branch_397:
   42364:	8b 86 9c 10 00 00    	mov    eax,DWORD PTR [esi+0x109c]
   4236a:	c6 86 a0 11 00 00 03 	mov    BYTE PTR [esi+0x11a0],0x3
   42371:	89 86 90 10 00 00    	mov    DWORD PTR [esi+0x1090],eax
   42377:	8a 86 a0 11 00 00    	mov    al,BYTE PTR [esi+0x11a0]
   4237d:	ba 28 00 00 00       	mov    edx,0x28
   42382:	88 86 a1 11 00 00    	mov    BYTE PTR [esi+0x11a1],al
   42388:	89 f0                	mov    eax,esi
   4238a:	e8 11 a5 ff ff       	call   go_to_frame_mod_76
   4238f:	c7 86 78 10 00 00 28 00 00 00 	mov    DWORD PTR [esi+0x1078],0x28
   42399:	c7 86 a4 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x10a4],0x0
   423a3:	c7 86 a8 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x10a8],0x0
   423ad:	8b 86 78 10 00 00    	mov    eax,DWORD PTR [esi+0x1078]
   423b3:	89 86 6c 10 00 00    	mov    DWORD PTR [esi+0x106c],eax
   423b9:	8b 86 a4 10 00 00    	mov    eax,DWORD PTR [esi+0x10a4]
   423bf:	8b 96 60 11 00 00    	mov    edx,DWORD PTR [esi+0x1160]
   423c5:	89 86 a0 10 00 00    	mov    DWORD PTR [esi+0x10a0],eax
   423cb:	85 d2                	test   edx,edx
   423cd:	74 07                	je     update_mod_76_2_branch_398
   423cf:	89 d0                	mov    eax,edx
   423d1:	e8 da 73 fc ff       	call   play
update_mod_76_2_branch_398:
   423d6:	8b 9e 64 11 00 00    	mov    ebx,DWORD PTR [esi+0x1164]
   423dc:	85 db                	test   ebx,ebx
   423de:	0f 84 b9 cb ff ff    	je     update_mod_76_2_reference_2
   423e4:	89 d8                	mov    eax,ebx
   423e6:	e8 c5 73 fc ff       	call   play
   423eb:	e9 ad cb ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_branch_399:
   423f0:	83 7e 38 05          	cmp    DWORD PTR [esi+0x38],0x5
   423f4:	74 50                	je     update_mod_76_2_branch_402
   423f6:	8b 86 78 10 00 00    	mov    eax,DWORD PTR [esi+0x1078]
   423fc:	8b ae 74 11 00 00    	mov    ebp,DWORD PTR [esi+0x1174]
   42402:	8b 96 64 10 00 00    	mov    edx,DWORD PTR [esi+0x1064]
   42408:	01 e8                	add    eax,ebp
   4240a:	39 d0                	cmp    eax,edx
   4240c:	75 0e                	jne    update_mod_76_2_branch_400
   4240e:	8b 9e 60 11 00 00    	mov    ebx,DWORD PTR [esi+0x1160]
   42414:	85 db                	test   ebx,ebx
   42416:	74 04                	je     update_mod_76_2_branch_400
   42418:	89 d8                	mov    eax,ebx
   4241a:	eb 25                	jmp    update_mod_76_2_branch_401
update_mod_76_2_branch_400:
   4241c:	8b 86 78 10 00 00    	mov    eax,DWORD PTR [esi+0x1078]
   42422:	03 86 74 11 00 00    	add    eax,DWORD PTR [esi+0x1174]
   42428:	8b be 64 10 00 00    	mov    edi,DWORD PTR [esi+0x1064]
   4242e:	83 c0 04             	add    eax,0x4
   42431:	39 f8                	cmp    eax,edi
   42433:	75 11                	jne    update_mod_76_2_branch_402
   42435:	8b ae 64 11 00 00    	mov    ebp,DWORD PTR [esi+0x1164]
   4243b:	85 ed                	test   ebp,ebp
   4243d:	74 07                	je     update_mod_76_2_branch_402
   4243f:	89 e8                	mov    eax,ebp
update_mod_76_2_branch_401:
   42441:	e8 6a 73 fc ff       	call   play
update_mod_76_2_branch_402:
   42446:	a1 c4 5a 02 00       	mov    eax,ds:@obj3:current_room                                    ; fixup: num: 11028, src obj: 1, src ofs: 0x42447, dst obj: 3, dst ofs: 0x25ac4
   4244b:	8b 50 20             	mov    edx,DWORD PTR [eax+0x20]
   4244e:	89 96 a8 10 00 00    	mov    DWORD PTR [esi+0x10a8],edx
   42454:	8b 86 40 11 00 00    	mov    eax,DWORD PTR [esi+0x1140]
   4245a:	99                   	cdq    
   4245b:	31 d0                	xor    eax,edx
   4245d:	29 d0                	sub    eax,edx
   4245f:	89 86 a4 10 00 00    	mov    DWORD PTR [esi+0x10a4],eax
   42465:	e9 33 cb ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_reference_57:
   4246a:	8b 86 78 10 00 00    	mov    eax,DWORD PTR [esi+0x1078]
   42470:	8b 8e 74 11 00 00    	mov    ecx,DWORD PTR [esi+0x1174]
   42476:	8b be 64 10 00 00    	mov    edi,DWORD PTR [esi+0x1064]
   4247c:	01 c8                	add    eax,ecx
   4247e:	39 f8                	cmp    eax,edi
   42480:	75 11                	jne    update_mod_76_2_branch_403
   42482:	8b ae 64 11 00 00    	mov    ebp,DWORD PTR [esi+0x1164]
   42488:	85 ed                	test   ebp,ebp
   4248a:	74 07                	je     update_mod_76_2_branch_403
   4248c:	89 e8                	mov    eax,ebp
   4248e:	e8 1d 73 fc ff       	call   play
update_mod_76_2_branch_403:
   42493:	c7 86 a4 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x10a4],0x0
   4249d:	db 86 a4 10 00 00    	fild   DWORD PTR [esi+0x10a4]
   424a3:	d9 96 a8 10 00 00    	fst    DWORD PTR [esi+0x10a8]
   424a9:	e8 9a 38 03 00       	call   __CHP
   424ae:	89 f1                	mov    ecx,esi
   424b0:	8b 9e 80 10 00 00    	mov    ebx,DWORD PTR [esi+0x1080]
   424b6:	db 9e a0 10 00 00    	fistp  DWORD PTR [esi+0x10a0]
   424bc:	85 db                	test   ebx,ebx
   424be:	74 14                	je     update_mod_76_2_branch_404
   424c0:	b8 64 00 00 00       	mov    eax,0x64
   424c5:	89 c2                	mov    edx,eax
   424c7:	c1 fa 1f             	sar    edx,0x1f
   424ca:	f7 fb                	idiv   ebx
   424cc:	89 86 60 10 00 00    	mov    DWORD PTR [esi+0x1060],eax
   424d2:	eb 06                	jmp    update_mod_76_2_branch_405
update_mod_76_2_branch_404:
   424d4:	89 9e 60 10 00 00    	mov    DWORD PTR [esi+0x1060],ebx
update_mod_76_2_branch_405:
   424da:	3b 99 68 10 00 00    	cmp    ebx,DWORD PTR [ecx+0x1068]
   424e0:	0f 84 b7 ca ff ff    	je     update_mod_76_2_reference_2
   424e6:	c7 81 5c 10 00 00 00 00 00 00 	mov    DWORD PTR [ecx+0x105c],0x0
   424f0:	89 99 68 10 00 00    	mov    DWORD PTR [ecx+0x1068],ebx
   424f6:	e9 a2 ca ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_reference_58:
   424fb:	8b 86 78 10 00 00    	mov    eax,DWORD PTR [esi+0x1078]
   42501:	8b 8e 6c 10 00 00    	mov    ecx,DWORD PTR [esi+0x106c]
   42507:	8b be 74 11 00 00    	mov    edi,DWORD PTR [esi+0x1174]
   4250d:	01 c8                	add    eax,ecx
   4250f:	8b ae 64 10 00 00    	mov    ebp,DWORD PTR [esi+0x1064]
   42515:	29 f8                	sub    eax,edi
   42517:	39 e8                	cmp    eax,ebp
   42519:	75 0f                	jne    update_mod_76_2_branch_406
   4251b:	8b 86 64 11 00 00    	mov    eax,DWORD PTR [esi+0x1164]
   42521:	85 c0                	test   eax,eax
   42523:	74 05                	je     update_mod_76_2_branch_406
   42525:	e8 86 72 fc ff       	call   play
update_mod_76_2_branch_406:
   4252a:	83 be 98 11 00 00 14 	cmp    DWORD PTR [esi+0x1198],0x14
   42531:	7e 14                	jle    update_mod_76_2_branch_407
   42533:	d9 46 18             	fld    DWORD PTR [esi+0x18]
   42536:	d8 0d 85 a7 00 00    	fmul   DWORD PTR ds:@obj3:classes_cpp_variable_132                  ; fixup: num: 11029, src obj: 1, src ofs: 0x42538, dst obj: 3, dst ofs: 0xa785
   4253c:	e8 07 38 03 00       	call   __CHP
   42541:	db 9e a0 10 00 00    	fistp  DWORD PTR [esi+0x10a0]
update_mod_76_2_branch_407:
   42547:	89 f1                	mov    ecx,esi
   42549:	8b 9e 80 10 00 00    	mov    ebx,DWORD PTR [esi+0x1080]
   4254f:	c6 86 a1 11 00 00 02 	mov    BYTE PTR [esi+0x11a1],0x2
   42556:	85 db                	test   ebx,ebx
   42558:	74 14                	je     update_mod_76_2_branch_408
   4255a:	b8 64 00 00 00       	mov    eax,0x64
   4255f:	89 c2                	mov    edx,eax
   42561:	c1 fa 1f             	sar    edx,0x1f
   42564:	f7 fb                	idiv   ebx
   42566:	89 86 60 10 00 00    	mov    DWORD PTR [esi+0x1060],eax
   4256c:	eb 06                	jmp    update_mod_76_2_branch_409
update_mod_76_2_branch_408:
   4256e:	89 9e 60 10 00 00    	mov    DWORD PTR [esi+0x1060],ebx
update_mod_76_2_branch_409:
   42574:	3b 99 68 10 00 00    	cmp    ebx,DWORD PTR [ecx+0x1068]
   4257a:	0f 84 1d ca ff ff    	je     update_mod_76_2_reference_2
   42580:	c7 81 5c 10 00 00 00 00 00 00 	mov    DWORD PTR [ecx+0x105c],0x0
   4258a:	89 99 68 10 00 00    	mov    DWORD PTR [ecx+0x1068],ebx
   42590:	e9 08 ca ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_reference_59:
   42595:	8b 86 78 10 00 00    	mov    eax,DWORD PTR [esi+0x1078]
   4259b:	8b ae 6c 10 00 00    	mov    ebp,DWORD PTR [esi+0x106c]
   425a1:	8b 96 74 11 00 00    	mov    edx,DWORD PTR [esi+0x1174]
   425a7:	01 e8                	add    eax,ebp
   425a9:	8b 9e 64 10 00 00    	mov    ebx,DWORD PTR [esi+0x1064]
   425af:	29 d0                	sub    eax,edx
   425b1:	39 d8                	cmp    eax,ebx
   425b3:	75 11                	jne    update_mod_76_2_branch_410
   425b5:	8b 8e 64 11 00 00    	mov    ecx,DWORD PTR [esi+0x1164]
   425bb:	85 c9                	test   ecx,ecx
   425bd:	74 07                	je     update_mod_76_2_branch_410
   425bf:	89 c8                	mov    eax,ecx
   425c1:	e8 ea 71 fc ff       	call   play
update_mod_76_2_branch_410:
   425c6:	81 be 98 11 00 00 f4 01 00 00 	cmp    DWORD PTR [esi+0x1198],0x1f4
   425d0:	7d 14                	jge    update_mod_76_2_branch_411
   425d2:	d9 46 18             	fld    DWORD PTR [esi+0x18]
   425d5:	d8 0d 81 a7 00 00    	fmul   DWORD PTR ds:@obj3:classes_cpp_variable_131                  ; fixup: num: 11030, src obj: 1, src ofs: 0x425d7, dst obj: 3, dst ofs: 0xa781
   425db:	e8 68 37 03 00       	call   __CHP
   425e0:	db 9e a0 10 00 00    	fistp  DWORD PTR [esi+0x10a0]
update_mod_76_2_branch_411:
   425e6:	89 f1                	mov    ecx,esi
   425e8:	8b 9e 80 10 00 00    	mov    ebx,DWORD PTR [esi+0x1080]
   425ee:	c6 86 a1 11 00 00 01 	mov    BYTE PTR [esi+0x11a1],0x1
   425f5:	85 db                	test   ebx,ebx
   425f7:	74 14                	je     update_mod_76_2_branch_412
   425f9:	b8 64 00 00 00       	mov    eax,0x64
   425fe:	89 c2                	mov    edx,eax
   42600:	c1 fa 1f             	sar    edx,0x1f
   42603:	f7 fb                	idiv   ebx
   42605:	89 86 60 10 00 00    	mov    DWORD PTR [esi+0x1060],eax
   4260b:	eb 06                	jmp    update_mod_76_2_branch_413
update_mod_76_2_branch_412:
   4260d:	89 9e 60 10 00 00    	mov    DWORD PTR [esi+0x1060],ebx
update_mod_76_2_branch_413:
   42613:	3b 99 68 10 00 00    	cmp    ebx,DWORD PTR [ecx+0x1068]
   42619:	0f 84 7e c9 ff ff    	je     update_mod_76_2_reference_2
   4261f:	c7 81 5c 10 00 00 00 00 00 00 	mov    DWORD PTR [ecx+0x105c],0x0
   42629:	89 99 68 10 00 00    	mov    DWORD PTR [ecx+0x1068],ebx
   4262f:	e9 69 c9 ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_reference_60:
   42634:	83 be 98 11 00 00 24 	cmp    DWORD PTR [esi+0x1198],0x24
   4263b:	7e 27                	jle    update_mod_76_2_branch_414
   4263d:	8b 86 78 10 00 00    	mov    eax,DWORD PTR [esi+0x1078]
   42643:	8b 96 64 10 00 00    	mov    edx,DWORD PTR [esi+0x1064]
   42649:	83 c0 02             	add    eax,0x2
   4264c:	39 d0                	cmp    eax,edx
   4264e:	7d 14                	jge    update_mod_76_2_branch_414
   42650:	d9 46 18             	fld    DWORD PTR [esi+0x18]
   42653:	d8 0d 8d a7 00 00    	fmul   DWORD PTR ds:@obj3:classes_cpp_variable_134                  ; fixup: num: 11031, src obj: 1, src ofs: 0x42655, dst obj: 3, dst ofs: 0xa78d
   42659:	e8 ea 36 03 00       	call   __CHP
   4265e:	db 9e a0 10 00 00    	fistp  DWORD PTR [esi+0x10a0]
update_mod_76_2_branch_414:
   42664:	8b 9e 80 10 00 00    	mov    ebx,DWORD PTR [esi+0x1080]
   4266a:	89 f1                	mov    ecx,esi
   4266c:	85 db                	test   ebx,ebx
   4266e:	74 14                	je     update_mod_76_2_branch_415
   42670:	b8 64 00 00 00       	mov    eax,0x64
   42675:	89 c2                	mov    edx,eax
   42677:	c1 fa 1f             	sar    edx,0x1f
   4267a:	f7 fb                	idiv   ebx
   4267c:	89 86 60 10 00 00    	mov    DWORD PTR [esi+0x1060],eax
   42682:	eb 06                	jmp    update_mod_76_2_branch_416
update_mod_76_2_branch_415:
   42684:	89 9e 60 10 00 00    	mov    DWORD PTR [esi+0x1060],ebx
update_mod_76_2_branch_416:
   4268a:	3b 99 68 10 00 00    	cmp    ebx,DWORD PTR [ecx+0x1068]
   42690:	0f 84 07 c9 ff ff    	je     update_mod_76_2_reference_2
   42696:	c7 81 5c 10 00 00 00 00 00 00 	mov    DWORD PTR [ecx+0x105c],0x0
   426a0:	89 99 68 10 00 00    	mov    DWORD PTR [ecx+0x1068],ebx
   426a6:	e9 f2 c8 ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_reference_61:
   426ab:	81 be 98 11 00 00 68 02 00 00 	cmp    DWORD PTR [esi+0x1198],0x268
   426b5:	7d 27                	jge    update_mod_76_2_branch_417
   426b7:	8b 86 78 10 00 00    	mov    eax,DWORD PTR [esi+0x1078]
   426bd:	8b 96 64 10 00 00    	mov    edx,DWORD PTR [esi+0x1064]
   426c3:	83 c0 02             	add    eax,0x2
   426c6:	39 d0                	cmp    eax,edx
   426c8:	7d 14                	jge    update_mod_76_2_branch_417
   426ca:	d9 46 18             	fld    DWORD PTR [esi+0x18]
   426cd:	d8 0d 89 a7 00 00    	fmul   DWORD PTR ds:@obj3:classes_cpp_variable_133                  ; fixup: num: 11034, src obj: 1, src ofs: 0x426cf, dst obj: 3, dst ofs: 0xa789
   426d3:	e8 70 36 03 00       	call   __CHP
   426d8:	db 9e a0 10 00 00    	fistp  DWORD PTR [esi+0x10a0]
update_mod_76_2_branch_417:
   426de:	8b 9e 80 10 00 00    	mov    ebx,DWORD PTR [esi+0x1080]
   426e4:	89 f1                	mov    ecx,esi
   426e6:	85 db                	test   ebx,ebx
   426e8:	74 14                	je     update_mod_76_2_branch_418
   426ea:	b8 64 00 00 00       	mov    eax,0x64
   426ef:	89 c2                	mov    edx,eax
   426f1:	c1 fa 1f             	sar    edx,0x1f
   426f4:	f7 fb                	idiv   ebx
   426f6:	89 86 60 10 00 00    	mov    DWORD PTR [esi+0x1060],eax
   426fc:	eb 06                	jmp    update_mod_76_2_branch_419
update_mod_76_2_branch_418:
   426fe:	89 9e 60 10 00 00    	mov    DWORD PTR [esi+0x1060],ebx
update_mod_76_2_branch_419:
   42704:	3b 99 68 10 00 00    	cmp    ebx,DWORD PTR [ecx+0x1068]
   4270a:	0f 84 8d c8 ff ff    	je     update_mod_76_2_reference_2
   42710:	c7 81 5c 10 00 00 00 00 00 00 	mov    DWORD PTR [ecx+0x105c],0x0
   4271a:	89 99 68 10 00 00    	mov    DWORD PTR [ecx+0x1068],ebx
   42720:	e9 78 c8 ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_reference_62:
   42725:	8b 96 9c 10 00 00    	mov    edx,DWORD PTR [esi+0x109c]
   4272b:	85 d2                	test   edx,edx
   4272d:	74 1c                	je     update_mod_76_2_branch_420
   4272f:	8b 5a 10             	mov    ebx,DWORD PTR [edx+0x10]
   42732:	89 d0                	mov    eax,edx
   42734:	85 db                	test   ebx,ebx
   42736:	74 13                	je     update_mod_76_2_branch_420
   42738:	53                   	push   ebx
   42739:	68 b2 a6 00 00       	push   @obj3:classes_cpp_variable_119                               ; fixup: num: 11033, src obj: 1, src ofs: 0x4273a, dst obj: 3, dst ofs: 0xa6b2
   4273e:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 11032, src obj: 1, src ofs: 0x4273f, dst obj: 3, dst ofs: 0x237fc
   42743:	e8 99 e4 02 00       	call   sprintf_
   42748:	83 c4 0c             	add    esp,0xc
update_mod_76_2_branch_420:
   4274b:	8b 7e 38             	mov    edi,DWORD PTR [esi+0x38]
   4274e:	83 ff 04             	cmp    edi,0x4
   42751:	75 0f                	jne    update_mod_76_2_branch_421
   42753:	8b 86 9c 10 00 00    	mov    eax,DWORD PTR [esi+0x109c]
   42759:	3b 78 38             	cmp    edi,DWORD PTR [eax+0x38]
   4275c:	0f 84 3b c8 ff ff    	je     update_mod_76_2_reference_2
update_mod_76_2_branch_421:
   42762:	83 be 34 11 00 00 00 	cmp    DWORD PTR [esi+0x1134],0x0
   42769:	0f 8e 0a 01 00 00    	jle    update_mod_76_2_branch_428
   4276f:	83 7e 38 05          	cmp    DWORD PTR [esi+0x38],0x5
   42773:	75 57                	jne    update_mod_76_2_branch_423
   42775:	8b 15 d4 5b 02 00    	mov    edx,DWORD PTR ds:@obj3:pc                                    ; fixup: num: 11036, src obj: 1, src ofs: 0x42777, dst obj: 3, dst ofs: 0x25bd4
   4277b:	83 ba bc 11 00 00 0e 	cmp    DWORD PTR [edx+0x11bc],0xe
   42782:	75 48                	jne    update_mod_76_2_branch_423
   42784:	8b 86 78 10 00 00    	mov    eax,DWORD PTR [esi+0x1078]
   4278a:	03 86 3c 11 00 00    	add    eax,DWORD PTR [esi+0x113c]
   42790:	8b 8e 64 10 00 00    	mov    ecx,DWORD PTR [esi+0x1064]
   42796:	48                   	dec    eax
   42797:	39 c8                	cmp    eax,ecx
   42799:	0f 85 da 00 00 00    	jne    update_mod_76_2_branch_428
   4279f:	83 3d 60 5b 02 00 00 	cmp    DWORD PTR ds:@obj3:gascans,0x0                               ; fixup: num: 11035, src obj: 1, src ofs: 0x427a1, dst obj: 3, dst ofs: 0x25b60
   427a6:	75 14                	jne    update_mod_76_2_branch_422
   427a8:	8b 82 bc 11 00 00    	mov    eax,DWORD PTR [edx+0x11bc]
   427ae:	e8 5d 51 00 00       	call   SpendRoundOfAmmo
   427b3:	c6 46 4c 01          	mov    BYTE PTR [esi+0x4c],0x1
   427b7:	e9 e1 c7 ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_branch_422:
   427bc:	8b 82 bc 11 00 00    	mov    eax,DWORD PTR [edx+0x11bc]
   427c2:	e8 49 51 00 00       	call   SpendRoundOfAmmo
   427c7:	e9 ad 00 00 00       	jmp    update_mod_76_2_branch_428
update_mod_76_2_branch_423:
   427cc:	8b 4e 38             	mov    ecx,DWORD PTR [esi+0x38]
   427cf:	83 f9 05             	cmp    ecx,0x5
   427d2:	75 15                	jne    update_mod_76_2_branch_424
   427d4:	39 c9                	cmp    ecx,ecx
   427d6:	0f 85 9d 00 00 00    	jne    update_mod_76_2_branch_428
   427dc:	f6 86 8c 11 00 00 04 	test   BYTE PTR [esi+0x118c],0x4
   427e3:	0f 85 90 00 00 00    	jne    update_mod_76_2_branch_428
update_mod_76_2_branch_424:
   427e9:	e8 e9 3c 03 00       	call   rand_
   427ee:	89 c2                	mov    edx,eax
   427f0:	8b ae 34 11 00 00    	mov    ebp,DWORD PTR [esi+0x1134]
   427f6:	c1 fa 1f             	sar    edx,0x1f
   427f9:	f7 fd                	idiv   ebp
   427fb:	89 d1                	mov    ecx,edx
   427fd:	8b 86 78 10 00 00    	mov    eax,DWORD PTR [esi+0x1078]
   42803:	8b 96 6c 11 00 00    	mov    edx,DWORD PTR [esi+0x116c]
   42809:	8b 9e 64 10 00 00    	mov    ebx,DWORD PTR [esi+0x1064]
   4280f:	01 d0                	add    eax,edx
   42811:	39 d8                	cmp    eax,ebx
   42813:	0f 85 60 00 00 00    	jne    update_mod_76_2_branch_428
   42819:	83 bc 8e 48 11 00 00 00 	cmp    DWORD PTR [esi+ecx*4+0x1148],0x0
   42821:	74 56                	je     update_mod_76_2_branch_428
   42823:	31 db                	xor    ebx,ebx
   42825:	85 ed                	test   ebp,ebp
   42827:	7e 2a                	jle    update_mod_76_2_branch_427
   42829:	89 f2                	mov    edx,esi
update_mod_76_2_branch_425:
   4282b:	8b 82 48 11 00 00    	mov    eax,DWORD PTR [edx+0x1148]
   42831:	e8 aa 70 fc ff       	call   playing
   42836:	84 c0                	test   al,al
   42838:	74 0b                	je     update_mod_76_2_branch_426
   4283a:	8b 82 48 11 00 00    	mov    eax,DWORD PTR [edx+0x1148]
   42840:	e8 fb 6f fc ff       	call   stop
update_mod_76_2_branch_426:
   42845:	43                   	inc    ebx
   42846:	8b be 34 11 00 00    	mov    edi,DWORD PTR [esi+0x1134]
   4284c:	83 c2 04             	add    edx,0x4
   4284f:	39 fb                	cmp    ebx,edi
   42851:	7c d8                	jl     update_mod_76_2_branch_425
update_mod_76_2_branch_427:
   42853:	8b 84 8e 48 11 00 00 	mov    eax,DWORD PTR [esi+ecx*4+0x1148]
   4285a:	e8 51 6f fc ff       	call   play
   4285f:	8b ae 64 10 00 00    	mov    ebp,DWORD PTR [esi+0x1064]
   42865:	55                   	push   ebp
   42866:	51                   	push   ecx
   42867:	68 c2 a6 00 00       	push   @obj3:classes_cpp_variable_120                               ; fixup: num: 11038, src obj: 1, src ofs: 0x42868, dst obj: 3, dst ofs: 0xa6c2
   4286c:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 11037, src obj: 1, src ofs: 0x4286d, dst obj: 3, dst ofs: 0x237fc
   42871:	e8 6b e3 02 00       	call   sprintf_
   42876:	83 c4 10             	add    esp,0x10
update_mod_76_2_branch_428:
   42879:	f6 86 8c 11 00 00 04 	test   BYTE PTR [esi+0x118c],0x4
   42880:	0f 84 51 03 00 00    	je     update_mod_76_2_branch_463
   42886:	8b 86 78 10 00 00    	mov    eax,DWORD PTR [esi+0x1078]
   4288c:	03 86 3c 11 00 00    	add    eax,DWORD PTR [esi+0x113c]
   42892:	8b 9e 64 10 00 00    	mov    ebx,DWORD PTR [esi+0x1064]
   42898:	48                   	dec    eax
   42899:	39 d8                	cmp    eax,ebx
   4289b:	0f 85 71 00 00 00    	jne    update_mod_76_2_branch_435
   428a1:	8b 4e 38             	mov    ecx,DWORD PTR [esi+0x38]
   428a4:	83 f9 05             	cmp    ecx,0x5
   428a7:	0f 85 65 00 00 00    	jne    update_mod_76_2_branch_435
   428ad:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 11047, src obj: 1, src ofs: 0x428ae, dst obj: 3, dst ofs: 0x25bd4
   428b2:	8b 80 bc 11 00 00    	mov    eax,DWORD PTR [eax+0x11bc]
   428b8:	83 f8 02             	cmp    eax,0x2
   428bb:	75 07                	jne    update_mod_76_2_branch_429
   428bd:	a1 5c 5b 02 00       	mov    eax,ds:@obj3:nails                                           ; fixup: num: 11046, src obj: 1, src ofs: 0x428be, dst obj: 3, dst ofs: 0x25b5c
   428c2:	eb 31                	jmp    update_mod_76_2_branch_434
update_mod_76_2_branch_429:
   428c4:	83 f8 03             	cmp    eax,0x3
   428c7:	75 07                	jne    update_mod_76_2_branch_430
   428c9:	a1 6c 5b 02 00       	mov    eax,ds:@obj3:shotgun_shells                                  ; fixup: num: 11045, src obj: 1, src ofs: 0x428ca, dst obj: 3, dst ofs: 0x25b6c
   428ce:	eb 25                	jmp    update_mod_76_2_branch_434
update_mod_76_2_branch_430:
   428d0:	83 f8 04             	cmp    eax,0x4
   428d3:	75 07                	jne    update_mod_76_2_branch_431
   428d5:	a1 68 5b 02 00       	mov    eax,ds:@obj3:mmbullets                                       ; fixup: num: 11044, src obj: 1, src ofs: 0x428d6, dst obj: 3, dst ofs: 0x25b68
   428da:	eb 19                	jmp    update_mod_76_2_branch_434
update_mod_76_2_branch_431:
   428dc:	39 c8                	cmp    eax,ecx
   428de:	75 07                	jne    update_mod_76_2_branch_432
   428e0:	a1 64 5b 02 00       	mov    eax,ds:@obj3:bullets                                         ; fixup: num: 11043, src obj: 1, src ofs: 0x428e1, dst obj: 3, dst ofs: 0x25b64
   428e5:	eb 0e                	jmp    update_mod_76_2_branch_434
update_mod_76_2_branch_432:
   428e7:	83 f8 0e             	cmp    eax,0xe
   428ea:	75 07                	jne    update_mod_76_2_branch_433
   428ec:	a1 60 5b 02 00       	mov    eax,ds:@obj3:gascans                                         ; fixup: num: 11042, src obj: 1, src ofs: 0x428ed, dst obj: 3, dst ofs: 0x25b60
   428f1:	eb 02                	jmp    update_mod_76_2_branch_434
update_mod_76_2_branch_433:
   428f3:	31 c0                	xor    eax,eax
update_mod_76_2_branch_434:
   428f5:	85 c0                	test   eax,eax
   428f7:	75 19                	jne    update_mod_76_2_branch_435
   428f9:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 11041, src obj: 1, src ofs: 0x428fa, dst obj: 3, dst ofs: 0x25bd4
   428fe:	8b 80 bc 11 00 00    	mov    eax,DWORD PTR [eax+0x11bc]
   42904:	e8 07 50 00 00       	call   SpendRoundOfAmmo
   42909:	c6 46 4c 01          	mov    BYTE PTR [esi+0x4c],0x1
   4290d:	e9 8b c6 ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_branch_435:
   42912:	8b 86 78 10 00 00    	mov    eax,DWORD PTR [esi+0x1078]
   42918:	03 86 3c 11 00 00    	add    eax,DWORD PTR [esi+0x113c]
   4291e:	8b ae 64 10 00 00    	mov    ebp,DWORD PTR [esi+0x1064]
   42924:	40                   	inc    eax
   42925:	39 e8                	cmp    eax,ebp
   42927:	0f 85 70 c6 ff ff    	jne    update_mod_76_2_reference_2
   4292d:	83 7e 38 05          	cmp    DWORD PTR [esi+0x38],0x5
   42931:	0f 85 61 00 00 00    	jne    update_mod_76_2_branch_442
   42937:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 11040, src obj: 1, src ofs: 0x42938, dst obj: 3, dst ofs: 0x25bd4
   4293c:	8b 80 bc 11 00 00    	mov    eax,DWORD PTR [eax+0x11bc]
   42942:	83 f8 02             	cmp    eax,0x2
   42945:	75 07                	jne    update_mod_76_2_branch_436
   42947:	a1 5c 5b 02 00       	mov    eax,ds:@obj3:nails                                           ; fixup: num: 11039, src obj: 1, src ofs: 0x42948, dst obj: 3, dst ofs: 0x25b5c
   4294c:	eb 32                	jmp    update_mod_76_2_branch_441
update_mod_76_2_branch_436:
   4294e:	83 f8 03             	cmp    eax,0x3
   42951:	75 07                	jne    update_mod_76_2_branch_437
   42953:	a1 6c 5b 02 00       	mov    eax,ds:@obj3:shotgun_shells                                  ; fixup: num: 11053, src obj: 1, src ofs: 0x42954, dst obj: 3, dst ofs: 0x25b6c
   42958:	eb 26                	jmp    update_mod_76_2_branch_441
update_mod_76_2_branch_437:
   4295a:	83 f8 04             	cmp    eax,0x4
   4295d:	75 07                	jne    update_mod_76_2_branch_438
   4295f:	a1 68 5b 02 00       	mov    eax,ds:@obj3:mmbullets                                       ; fixup: num: 11052, src obj: 1, src ofs: 0x42960, dst obj: 3, dst ofs: 0x25b68
   42964:	eb 1a                	jmp    update_mod_76_2_branch_441
update_mod_76_2_branch_438:
   42966:	83 f8 05             	cmp    eax,0x5
   42969:	75 07                	jne    update_mod_76_2_branch_439
   4296b:	a1 64 5b 02 00       	mov    eax,ds:@obj3:bullets                                         ; fixup: num: 11051, src obj: 1, src ofs: 0x4296c, dst obj: 3, dst ofs: 0x25b64
   42970:	eb 0e                	jmp    update_mod_76_2_branch_441
update_mod_76_2_branch_439:
   42972:	83 f8 0e             	cmp    eax,0xe
   42975:	75 07                	jne    update_mod_76_2_branch_440
   42977:	a1 60 5b 02 00       	mov    eax,ds:@obj3:gascans                                         ; fixup: num: 11050, src obj: 1, src ofs: 0x42978, dst obj: 3, dst ofs: 0x25b60
   4297c:	eb 02                	jmp    update_mod_76_2_branch_441
update_mod_76_2_branch_440:
   4297e:	31 c0                	xor    eax,eax
update_mod_76_2_branch_441:
   42980:	85 c0                	test   eax,eax
   42982:	0f 84 15 c6 ff ff    	je     update_mod_76_2_reference_2
   42988:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 11049, src obj: 1, src ofs: 0x42989, dst obj: 3, dst ofs: 0x25bd4
   4298d:	8b 80 bc 11 00 00    	mov    eax,DWORD PTR [eax+0x11bc]
   42993:	e8 78 4f 00 00       	call   SpendRoundOfAmmo
update_mod_76_2_branch_442:
   42998:	c7 86 9c 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x109c],0x0
   429a2:	8b 1d 88 5a 02 00    	mov    ebx,DWORD PTR ds:@obj3:the_list                              ; fixup: num: 11048, src obj: 1, src ofs: 0x429a4, dst obj: 3, dst ofs: 0x25a88
   429a8:	85 db                	test   ebx,ebx
   429aa:	0f 84 19 02 00 00    	je     update_mod_76_2_branch_462
update_mod_76_2_branch_443:
   429b0:	8b 4b 10             	mov    ecx,DWORD PTR [ebx+0x10]
   429b3:	85 c9                	test   ecx,ecx
   429b5:	74 12                	je     update_mod_76_2_branch_444
   429b7:	89 c8                	mov    eax,ecx
   429b9:	8b 56 10             	mov    edx,DWORD PTR [esi+0x10]
   429bc:	e8 6f 3a 03 00       	call   strcmp_
   429c1:	85 c0                	test   eax,eax
   429c3:	0f 84 f5 01 00 00    	je     update_mod_76_2_branch_461
update_mod_76_2_branch_444:
   429c9:	80 bb a0 11 00 00 38 	cmp    BYTE PTR [ebx+0x11a0],0x38
   429d0:	0f 84 e8 01 00 00    	je     update_mod_76_2_branch_461
   429d6:	8b 7b 38             	mov    edi,DWORD PTR [ebx+0x38]
   429d9:	83 ff 05             	cmp    edi,0x5
   429dc:	74 22                	je     update_mod_76_2_branch_445
   429de:	83 ff 04             	cmp    edi,0x4
   429e1:	74 1d                	je     update_mod_76_2_branch_445
   429e3:	83 ff 06             	cmp    edi,0x6
   429e6:	0f 85 d2 01 00 00    	jne    update_mod_76_2_branch_461
   429ec:	8a 8b a1 11 00 00    	mov    cl,BYTE PTR [ebx+0x11a1]
   429f2:	80 f9 28             	cmp    cl,0x28
   429f5:	7c 09                	jl     update_mod_76_2_branch_445
   429f7:	80 f9 34             	cmp    cl,0x34
   429fa:	0f 85 be 01 00 00    	jne    update_mod_76_2_branch_461
update_mod_76_2_branch_445:
   42a00:	db 46 20             	fild   DWORD PTR [esi+0x20]
   42a03:	d8 46 1c             	fadd   DWORD PTR [esi+0x1c]
   42a06:	e8 3d 33 03 00       	call   __CHP
   42a0b:	db 5c 24 14          	fistp  DWORD PTR [esp+0x14]
   42a0f:	d9 46 1c             	fld    DWORD PTR [esi+0x1c]
   42a12:	e8 31 33 03 00       	call   __CHP
   42a17:	db 5c 24 0c          	fistp  DWORD PTR [esp+0xc]
   42a1b:	db 43 20             	fild   DWORD PTR [ebx+0x20]
   42a1e:	d8 43 1c             	fadd   DWORD PTR [ebx+0x1c]
   42a21:	e8 22 33 03 00       	call   __CHP
   42a26:	db 5c 24 08          	fistp  DWORD PTR [esp+0x8]
   42a2a:	d9 43 1c             	fld    DWORD PTR [ebx+0x1c]
   42a2d:	e8 16 33 03 00       	call   __CHP
   42a32:	db 5c 24 04          	fistp  DWORD PTR [esp+0x4]
   42a36:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
   42a3a:	3b 54 24 04          	cmp    edx,DWORD PTR [esp+0x4]
   42a3e:	7d 04                	jge    update_mod_76_2_branch_446
   42a40:	30 c0                	xor    al,al
   42a42:	eb 10                	jmp    update_mod_76_2_branch_448
update_mod_76_2_branch_446:
   42a44:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
   42a48:	3b 44 24 0c          	cmp    eax,DWORD PTR [esp+0xc]
   42a4c:	7d 04                	jge    update_mod_76_2_branch_447
   42a4e:	30 c0                	xor    al,al
   42a50:	eb 02                	jmp    update_mod_76_2_branch_448
update_mod_76_2_branch_447:
   42a52:	b0 01                	mov    al,0x1
update_mod_76_2_branch_448:
   42a54:	84 c0                	test   al,al
   42a56:	0f 84 62 01 00 00    	je     update_mod_76_2_branch_461
   42a5c:	8b 7b 38             	mov    edi,DWORD PTR [ebx+0x38]
   42a5f:	83 ff 06             	cmp    edi,0x6
   42a62:	75 53                	jne    update_mod_76_2_branch_454
   42a64:	39 ff                	cmp    edi,edi
   42a66:	75 17                	jne    update_mod_76_2_branch_450
   42a68:	8a 86 a0 11 00 00    	mov    al,BYTE PTR [esi+0x11a0]
   42a6e:	3c 16                	cmp    al,0x16
   42a70:	74 04                	je     update_mod_76_2_branch_449
   42a72:	3c 19                	cmp    al,0x19
   42a74:	75 09                	jne    update_mod_76_2_branch_450
update_mod_76_2_branch_449:
   42a76:	f6 83 8d 11 00 00 40 	test   BYTE PTR [ebx+0x118d],0x40
   42a7d:	75 38                	jne    update_mod_76_2_branch_454
update_mod_76_2_branch_450:
   42a7f:	8a b6 a0 11 00 00    	mov    dh,BYTE PTR [esi+0x11a0]
   42a85:	80 fe 17             	cmp    dh,0x17
   42a88:	74 05                	je     update_mod_76_2_branch_451
   42a8a:	80 fe 1a             	cmp    dh,0x1a
   42a8d:	75 09                	jne    update_mod_76_2_branch_452
update_mod_76_2_branch_451:
   42a8f:	f6 83 8d 11 00 00 80 	test   BYTE PTR [ebx+0x118d],0x80
   42a96:	75 1f                	jne    update_mod_76_2_branch_454
update_mod_76_2_branch_452:
   42a98:	8a 86 a0 11 00 00    	mov    al,BYTE PTR [esi+0x11a0]
   42a9e:	3c 18                	cmp    al,0x18
   42aa0:	74 08                	je     update_mod_76_2_branch_453
   42aa2:	3c 1b                	cmp    al,0x1b
   42aa4:	0f 85 14 01 00 00    	jne    update_mod_76_2_branch_461
update_mod_76_2_branch_453:
   42aaa:	f6 83 8e 11 00 00 01 	test   BYTE PTR [ebx+0x118e],0x1
   42ab1:	0f 84 07 01 00 00    	je     update_mod_76_2_branch_461
update_mod_76_2_branch_454:
   42ab7:	8b 43 3c             	mov    eax,DWORD PTR [ebx+0x3c]
   42aba:	8b 53 24             	mov    edx,DWORD PTR [ebx+0x24]
   42abd:	8b 8e 98 11 00 00    	mov    ecx,DWORD PTR [esi+0x1198]
   42ac3:	01 d0                	add    eax,edx
   42ac5:	39 c8                	cmp    eax,ecx
   42ac7:	7d 09                	jge    update_mod_76_2_branch_455
   42ac9:	80 be a0 11 00 00 17 	cmp    BYTE PTR [esi+0x11a0],0x17
   42ad0:	74 4d                	je     update_mod_76_2_branch_456
update_mod_76_2_branch_455:
   42ad2:	8b 4b 3c             	mov    ecx,DWORD PTR [ebx+0x3c]
   42ad5:	8b 7b 24             	mov    edi,DWORD PTR [ebx+0x24]
   42ad8:	8b ae 98 11 00 00    	mov    ebp,DWORD PTR [esi+0x1198]
   42ade:	01 f9                	add    ecx,edi
   42ae0:	39 e9                	cmp    ecx,ebp
   42ae2:	7d 5a                	jge    update_mod_76_2_branch_457
   42ae4:	8b 7e 3c             	mov    edi,DWORD PTR [esi+0x3c]
   42ae7:	8b 56 24             	mov    edx,DWORD PTR [esi+0x24]
   42aea:	8b 46 2c             	mov    eax,DWORD PTR [esi+0x2c]
   42aed:	01 d7                	add    edi,edx
   42aef:	89 c2                	mov    edx,eax
   42af1:	c1 fa 1f             	sar    edx,0x1f
   42af4:	2b c2                	sub    eax,edx
   42af6:	d1 f8                	sar    eax,1
   42af8:	29 c7                	sub    edi,eax
   42afa:	8b 43 2c             	mov    eax,DWORD PTR [ebx+0x2c]
   42afd:	89 c2                	mov    edx,eax
   42aff:	c1 fa 1f             	sar    edx,0x1f
   42b02:	2b c2                	sub    eax,edx
   42b04:	d1 f8                	sar    eax,1
   42b06:	83 ef 1e             	sub    edi,0x1e
   42b09:	01 c8                	add    eax,ecx
   42b0b:	39 f8                	cmp    eax,edi
   42b0d:	7e 2f                	jle    update_mod_76_2_branch_457
   42b0f:	8a 8e a0 11 00 00    	mov    cl,BYTE PTR [esi+0x11a0]
   42b15:	80 f9 18             	cmp    cl,0x18
   42b18:	74 05                	je     update_mod_76_2_branch_456
   42b1a:	80 f9 16             	cmp    cl,0x16
   42b1d:	75 1f                	jne    update_mod_76_2_branch_457
update_mod_76_2_branch_456:
   42b1f:	8b ae 9c 10 00 00    	mov    ebp,DWORD PTR [esi+0x109c]
   42b25:	85 ed                	test   ebp,ebp
   42b27:	0f 84 8b 00 00 00    	je     update_mod_76_2_branch_460
   42b2d:	8b 53 3c             	mov    edx,DWORD PTR [ebx+0x3c]
   42b30:	3b 55 3c             	cmp    edx,DWORD PTR [ebp+0x3c]
   42b33:	0f 8e 85 00 00 00    	jle    update_mod_76_2_branch_461
   42b39:	e9 7a 00 00 00       	jmp    update_mod_76_2_branch_460
update_mod_76_2_branch_457:
   42b3e:	8b 43 3c             	mov    eax,DWORD PTR [ebx+0x3c]
   42b41:	8b 4b 24             	mov    ecx,DWORD PTR [ebx+0x24]
   42b44:	8b be 98 11 00 00    	mov    edi,DWORD PTR [esi+0x1198]
   42b4a:	01 c8                	add    eax,ecx
   42b4c:	39 f8                	cmp    eax,edi
   42b4e:	7e 09                	jle    update_mod_76_2_branch_458
   42b50:	80 be a0 11 00 00 1a 	cmp    BYTE PTR [esi+0x11a0],0x1a
   42b57:	74 4d                	je     update_mod_76_2_branch_459
update_mod_76_2_branch_458:
   42b59:	8b 4b 3c             	mov    ecx,DWORD PTR [ebx+0x3c]
   42b5c:	8b 6b 24             	mov    ebp,DWORD PTR [ebx+0x24]
   42b5f:	8b 86 98 11 00 00    	mov    eax,DWORD PTR [esi+0x1198]
   42b65:	01 e9                	add    ecx,ebp
   42b67:	39 c1                	cmp    ecx,eax
   42b69:	7e 53                	jle    update_mod_76_2_branch_461
   42b6b:	8b 7e 3c             	mov    edi,DWORD PTR [esi+0x3c]
   42b6e:	8b 56 24             	mov    edx,DWORD PTR [esi+0x24]
   42b71:	8b 46 2c             	mov    eax,DWORD PTR [esi+0x2c]
   42b74:	01 d7                	add    edi,edx
   42b76:	89 c2                	mov    edx,eax
   42b78:	c1 fa 1f             	sar    edx,0x1f
   42b7b:	2b c2                	sub    eax,edx
   42b7d:	d1 f8                	sar    eax,1
   42b7f:	01 c7                	add    edi,eax
   42b81:	8b 43 2c             	mov    eax,DWORD PTR [ebx+0x2c]
   42b84:	89 c2                	mov    edx,eax
   42b86:	c1 fa 1f             	sar    edx,0x1f
   42b89:	2b c2                	sub    eax,edx
   42b8b:	d1 f8                	sar    eax,1
   42b8d:	83 c7 1e             	add    edi,0x1e
   42b90:	29 c1                	sub    ecx,eax
   42b92:	39 f9                	cmp    ecx,edi
   42b94:	7d 28                	jge    update_mod_76_2_branch_461
   42b96:	8a a6 a0 11 00 00    	mov    ah,BYTE PTR [esi+0x11a0]
   42b9c:	80 fc 1b             	cmp    ah,0x1b
   42b9f:	74 05                	je     update_mod_76_2_branch_459
   42ba1:	80 fc 19             	cmp    ah,0x19
   42ba4:	75 18                	jne    update_mod_76_2_branch_461
update_mod_76_2_branch_459:
   42ba6:	8b 8e 9c 10 00 00    	mov    ecx,DWORD PTR [esi+0x109c]
   42bac:	85 c9                	test   ecx,ecx
   42bae:	74 08                	je     update_mod_76_2_branch_460
   42bb0:	8b 43 3c             	mov    eax,DWORD PTR [ebx+0x3c]
   42bb3:	3b 41 3c             	cmp    eax,DWORD PTR [ecx+0x3c]
   42bb6:	7d 06                	jge    update_mod_76_2_branch_461
update_mod_76_2_branch_460:
   42bb8:	89 9e 9c 10 00 00    	mov    DWORD PTR [esi+0x109c],ebx
update_mod_76_2_branch_461:
   42bbe:	8b 5b 48             	mov    ebx,DWORD PTR [ebx+0x48]
   42bc1:	85 db                	test   ebx,ebx
   42bc3:	0f 85 e7 fd ff ff    	jne    update_mod_76_2_branch_443
update_mod_76_2_branch_462:
   42bc9:	83 be 9c 10 00 00 00 	cmp    DWORD PTR [esi+0x109c],0x0
   42bd0:	75 64                	jne    update_mod_76_2_branch_466
   42bd2:	e9 c6 c3 ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_branch_463:
   42bd7:	80 be 28 11 00 00 00 	cmp    BYTE PTR [esi+0x1128],0x0
   42bde:	0f 85 fc 08 00 00    	jne    update_mod_76_2_branch_513
   42be4:	8b 86 9c 10 00 00    	mov    eax,DWORD PTR [esi+0x109c]
   42bea:	8b 50 38             	mov    edx,DWORD PTR [eax+0x38]
   42bed:	83 fa 04             	cmp    edx,0x4
   42bf0:	74 0e                	je     update_mod_76_2_branch_464
   42bf2:	83 fa 06             	cmp    edx,0x6
   42bf5:	74 09                	je     update_mod_76_2_branch_464
   42bf7:	83 fa 05             	cmp    edx,0x5
   42bfa:	0f 85 e0 08 00 00    	jne    update_mod_76_2_branch_513
update_mod_76_2_branch_464:
   42c00:	8b 86 9c 10 00 00    	mov    eax,DWORD PTR [esi+0x109c]
   42c06:	8a a8 a1 11 00 00    	mov    ch,BYTE PTR [eax+0x11a1]
   42c0c:	80 fd 28             	cmp    ch,0x28
   42c0f:	7c 09                	jl     update_mod_76_2_branch_465
   42c11:	80 fd 34             	cmp    ch,0x34
   42c14:	0f 85 c6 08 00 00    	jne    update_mod_76_2_branch_513
update_mod_76_2_branch_465:
   42c1a:	8b 86 78 10 00 00    	mov    eax,DWORD PTR [esi+0x1078]
   42c20:	8b be 3c 11 00 00    	mov    edi,DWORD PTR [esi+0x113c]
   42c26:	8b ae 64 10 00 00    	mov    ebp,DWORD PTR [esi+0x1064]
   42c2c:	01 f8                	add    eax,edi
   42c2e:	39 e8                	cmp    eax,ebp
   42c30:	0f 8f aa 08 00 00    	jg     update_mod_76_2_branch_513
update_mod_76_2_branch_466:
   42c36:	8b 86 9c 10 00 00    	mov    eax,DWORD PTR [esi+0x109c]
   42c3c:	8b 78 10             	mov    edi,DWORD PTR [eax+0x10]
   42c3f:	57                   	push   edi
   42c40:	68 e8 a6 00 00       	push   @obj3:classes_cpp_variable_121                               ; fixup: num: 11056, src obj: 1, src ofs: 0x42c41, dst obj: 3, dst ofs: 0xa6e8
   42c45:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 11055, src obj: 1, src ofs: 0x42c46, dst obj: 3, dst ofs: 0x237fc
   42c4a:	e8 92 df 02 00       	call   sprintf_
   42c4f:	8b 86 9c 10 00 00    	mov    eax,DWORD PTR [esi+0x109c]
   42c55:	83 c4 0c             	add    esp,0xc
   42c58:	ba f2 a6 00 00       	mov    edx,@obj3:classes_cpp_variable_122                           ; fixup: num: 11054, src obj: 1, src ofs: 0x42c59, dst obj: 3, dst ofs: 0xa6f2
   42c5d:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
   42c60:	e8 cb 37 03 00       	call   strcmp_
   42c65:	85 c0                	test   eax,eax
   42c67:	75 51                	jne    update_mod_76_2_branch_467
   42c69:	8b 86 9c 10 00 00    	mov    eax,DWORD PTR [esi+0x109c]
   42c6f:	c6 80 a0 11 00 00 34 	mov    BYTE PTR [eax+0x11a0],0x34
   42c76:	8b 96 9c 10 00 00    	mov    edx,DWORD PTR [esi+0x109c]
   42c7c:	8a 80 a0 11 00 00    	mov    al,BYTE PTR [eax+0x11a0]
   42c82:	88 82 a1 11 00 00    	mov    BYTE PTR [edx+0x11a1],al
   42c88:	8b 86 9c 10 00 00    	mov    eax,DWORD PTR [esi+0x109c]
   42c8e:	c7 80 78 10 00 00 00 00 00 00 	mov    DWORD PTR [eax+0x1078],0x0
   42c98:	8b 86 9c 10 00 00    	mov    eax,DWORD PTR [esi+0x109c]
   42c9e:	c7 80 6c 10 00 00 3b 00 00 00 	mov    DWORD PTR [eax+0x106c],0x3b
   42ca8:	31 d2                	xor    edx,edx
   42caa:	8b 86 9c 10 00 00    	mov    eax,DWORD PTR [esi+0x109c]
   42cb0:	e8 eb 9b ff ff       	call   go_to_frame_mod_76
   42cb5:	e9 e3 c2 ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_branch_467:
   42cba:	c6 46 4c 01          	mov    BYTE PTR [esi+0x4c],0x1
   42cbe:	8b 96 9c 10 00 00    	mov    edx,DWORD PTR [esi+0x109c]
   42cc4:	8b 86 8c 11 00 00    	mov    eax,DWORD PTR [esi+0x118c]
   42cca:	89 82 88 11 00 00    	mov    DWORD PTR [edx+0x1188],eax
   42cd0:	8b 86 9c 10 00 00    	mov    eax,DWORD PTR [esi+0x109c]
   42cd6:	8b 68 38             	mov    ebp,DWORD PTR [eax+0x38]
   42cd9:	83 fd 06             	cmp    ebp,0x6
   42cdc:	74 05                	je     update_mod_76_2_branch_468
   42cde:	83 fd 05             	cmp    ebp,0x5
   42ce1:	75 07                	jne    update_mod_76_2_branch_469
update_mod_76_2_branch_468:
   42ce3:	c6 05 9c 60 02 00 01 	mov    BYTE PTR ds:@obj3:combat_mode,0x1                            ; fixup: num: 11059, src obj: 1, src ofs: 0x42ce5, dst obj: 3, dst ofs: 0x2609c
update_mod_76_2_branch_469:
   42cea:	8b 46 1c             	mov    eax,DWORD PTR [esi+0x1c]
   42ced:	a3 a0 60 02 00       	mov    ds:@obj3:combat_plane,eax                                    ; fixup: num: 11058, src obj: 1, src ofs: 0x42cee, dst obj: 3, dst ofs: 0x260a0
   42cf2:	d9 05 a0 60 02 00    	fld    DWORD PTR ds:@obj3:combat_plane                              ; fixup: num: 11057, src obj: 1, src ofs: 0x42cf4, dst obj: 3, dst ofs: 0x260a0
   42cf8:	8b 86 9c 10 00 00    	mov    eax,DWORD PTR [esi+0x109c]
   42cfe:	d9 58 1c             	fstp   DWORD PTR [eax+0x1c]
   42d01:	8b 86 9c 10 00 00    	mov    eax,DWORD PTR [esi+0x109c]
   42d07:	89 86 b8 11 00 00    	mov    DWORD PTR [esi+0x11b8],eax
   42d0d:	89 b0 b8 11 00 00    	mov    DWORD PTR [eax+0x11b8],esi
   42d13:	8a 9e a0 11 00 00    	mov    bl,BYTE PTR [esi+0x11a0]
   42d19:	80 fb 18             	cmp    bl,0x18
   42d1c:	74 0a                	je     update_mod_76_2_branch_470
   42d1e:	80 fb 17             	cmp    bl,0x17
   42d21:	74 05                	je     update_mod_76_2_branch_470
   42d23:	80 fb 16             	cmp    bl,0x16
   42d26:	75 12                	jne    update_mod_76_2_branch_471
update_mod_76_2_branch_470:
   42d28:	8b 86 9c 10 00 00    	mov    eax,DWORD PTR [esi+0x109c]
   42d2e:	c7 80 ac 11 00 00 ee ff ff ff 	mov    DWORD PTR [eax+0x11ac],0xffffffee
   42d38:	eb 10                	jmp    update_mod_76_2_branch_472
update_mod_76_2_branch_471:
   42d3a:	8b 86 9c 10 00 00    	mov    eax,DWORD PTR [esi+0x109c]
   42d40:	c7 80 ac 11 00 00 12 00 00 00 	mov    DWORD PTR [eax+0x11ac],0x12
update_mod_76_2_branch_472:
   42d4a:	8b 86 9c 10 00 00    	mov    eax,DWORD PTR [esi+0x109c]
   42d50:	c7 80 b0 11 00 00 03 00 00 00 	mov    DWORD PTR [eax+0x11b0],0x3
   42d5a:	8b 86 9c 10 00 00    	mov    eax,DWORD PTR [esi+0x109c]
   42d60:	8b 98 a8 11 00 00    	mov    ebx,DWORD PTR [eax+0x11a8]
   42d66:	85 db                	test   ebx,ebx
   42d68:	0f 84 8d 00 00 00    	je     update_mod_76_2_branch_474
   42d6e:	c6 43 52 01          	mov    BYTE PTR [ebx+0x52],0x1
   42d72:	8b 86 9c 10 00 00    	mov    eax,DWORD PTR [esi+0x109c]
   42d78:	8b 80 a8 11 00 00    	mov    eax,DWORD PTR [eax+0x11a8]
   42d7e:	83 b8 84 10 00 00 00 	cmp    DWORD PTR [eax+0x1084],0x0
   42d85:	7d 05                	jge    update_mod_76_2_branch_473
   42d87:	e8 04 95 ff ff       	call   show
update_mod_76_2_branch_473:
   42d8c:	8b 86 9c 10 00 00    	mov    eax,DWORD PTR [esi+0x109c]
   42d92:	31 d2                	xor    edx,edx
   42d94:	8b 80 a8 11 00 00    	mov    eax,DWORD PTR [eax+0x11a8]
   42d9a:	e8 01 9b ff ff       	call   go_to_frame_mod_76
   42d9f:	d9 05 a0 60 02 00    	fld    DWORD PTR ds:@obj3:combat_plane                              ; fixup: num: 11062, src obj: 1, src ofs: 0x42da1, dst obj: 3, dst ofs: 0x260a0
   42da5:	8b 86 9c 10 00 00    	mov    eax,DWORD PTR [esi+0x109c]
   42dab:	dc 05 9d a7 00 00    	fadd   QWORD PTR ds:@obj3:classes_cpp_variable_138                  ; fixup: num: 11061, src obj: 1, src ofs: 0x42dad, dst obj: 3, dst ofs: 0xa79d
   42db1:	8b 48 40             	mov    ecx,DWORD PTR [eax+0x40]
   42db4:	8b 78 28             	mov    edi,DWORD PTR [eax+0x28]
   42db7:	8b 90 a8 11 00 00    	mov    edx,DWORD PTR [eax+0x11a8]
   42dbd:	8b 58 3c             	mov    ebx,DWORD PTR [eax+0x3c]
   42dc0:	8b 68 24             	mov    ebp,DWORD PTR [eax+0x24]
   42dc3:	8b 82 84 10 00 00    	mov    eax,DWORD PTR [edx+0x1084]
   42dc9:	01 f9                	add    ecx,edi
   42dcb:	01 eb                	add    ebx,ebp
   42dcd:	d9 5c 24 2c          	fstp   DWORD PTR [esp+0x2c]
   42dd1:	85 c0                	test   eax,eax
   42dd3:	7c 26                	jl     update_mod_76_2_branch_474
   42dd5:	d9 44 24 2c          	fld    DWORD PTR [esp+0x2c]
   42dd9:	e8 6a 2f 03 00       	call   __CHP
   42dde:	db 5c 24 14          	fistp  DWORD PTR [esp+0x14]
   42de2:	8b 6a 28             	mov    ebp,DWORD PTR [edx+0x28]
   42de5:	8b 42 24             	mov    eax,DWORD PTR [edx+0x24]
   42de8:	8b 7c 24 14          	mov    edi,DWORD PTR [esp+0x14]
   42dec:	01 e9                	add    ecx,ebp
   42dee:	57                   	push   edi
   42def:	01 c3                	add    ebx,eax
   42df1:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 11060, src obj: 1, src ofs: 0x42df2, dst obj: 3, dst ofs: 0x25a84
   42df6:	e8 15 9e 00 00       	call   move_bitmap
update_mod_76_2_branch_474:
   42dfb:	8b 9e 9c 10 00 00    	mov    ebx,DWORD PTR [esi+0x109c]
   42e01:	83 7b 38 04          	cmp    DWORD PTR [ebx+0x38],0x4
   42e05:	0f 84 75 06 00 00    	je     update_mod_76_2_branch_511
   42e0b:	8a 86 a0 11 00 00    	mov    al,BYTE PTR [esi+0x11a0]
   42e11:	3c 1b                	cmp    al,0x1b
   42e13:	74 04                	je     update_mod_76_2_branch_475
   42e15:	3c 18                	cmp    al,0x18
   42e17:	75 13                	jne    update_mod_76_2_branch_476
update_mod_76_2_branch_475:
   42e19:	8b 86 9c 10 00 00    	mov    eax,DWORD PTR [esi+0x109c]
   42e1f:	f6 80 8e 11 00 00 01 	test   BYTE PTR [eax+0x118e],0x1
   42e26:	0f 84 71 c1 ff ff    	je     update_mod_76_2_reference_2
update_mod_76_2_branch_476:
   42e2c:	8a b6 a0 11 00 00    	mov    dh,BYTE PTR [esi+0x11a0]
   42e32:	80 fe 1a             	cmp    dh,0x1a
   42e35:	74 05                	je     update_mod_76_2_branch_477
   42e37:	80 fe 17             	cmp    dh,0x17
   42e3a:	75 13                	jne    update_mod_76_2_branch_478
update_mod_76_2_branch_477:
   42e3c:	8b 86 9c 10 00 00    	mov    eax,DWORD PTR [esi+0x109c]
   42e42:	f6 80 8d 11 00 00 80 	test   BYTE PTR [eax+0x118d],0x80
   42e49:	0f 84 4e c1 ff ff    	je     update_mod_76_2_reference_2
update_mod_76_2_branch_478:
   42e4f:	8a 8e a0 11 00 00    	mov    cl,BYTE PTR [esi+0x11a0]
   42e55:	80 f9 19             	cmp    cl,0x19
   42e58:	74 05                	je     update_mod_76_2_branch_479
   42e5a:	80 f9 16             	cmp    cl,0x16
   42e5d:	75 13                	jne    update_mod_76_2_branch_480
update_mod_76_2_branch_479:
   42e5f:	8b 86 9c 10 00 00    	mov    eax,DWORD PTR [esi+0x109c]
   42e65:	f6 80 8d 11 00 00 40 	test   BYTE PTR [eax+0x118d],0x40
   42e6c:	0f 84 2b c1 ff ff    	je     update_mod_76_2_reference_2
update_mod_76_2_branch_480:
   42e72:	8a 96 a0 11 00 00    	mov    dl,BYTE PTR [esi+0x11a0]
   42e78:	8b 86 9c 10 00 00    	mov    eax,DWORD PTR [esi+0x109c]
   42e7e:	80 c2 06             	add    dl,0x6
   42e81:	88 90 a1 11 00 00    	mov    BYTE PTR [eax+0x11a1],dl
   42e87:	8b 96 9c 10 00 00    	mov    edx,DWORD PTR [esi+0x109c]
   42e8d:	85 d2                	test   edx,edx
   42e8f:	0f 84 a2 05 00 00    	je     update_mod_76_2_branch_508
   42e95:	8b 5a 10             	mov    ebx,DWORD PTR [edx+0x10]
   42e98:	89 d0                	mov    eax,edx
   42e9a:	85 db                	test   ebx,ebx
   42e9c:	0f 84 95 05 00 00    	je     update_mod_76_2_branch_508
   42ea2:	ba f8 a6 00 00       	mov    edx,@obj3:classes_cpp_variable_123                           ; fixup: num: 11064, src obj: 1, src ofs: 0x42ea3, dst obj: 3, dst ofs: 0xa6f8
   42ea7:	89 d8                	mov    eax,ebx
   42ea9:	e8 82 35 03 00       	call   strcmp_
   42eae:	85 c0                	test   eax,eax
   42eb0:	0f 85 81 05 00 00    	jne    update_mod_76_2_branch_508
   42eb6:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 11063, src obj: 1, src ofs: 0x42eb7, dst obj: 3, dst ofs: 0x25bd4
   42ebb:	83 b8 bc 11 00 00 08 	cmp    DWORD PTR [eax+0x11bc],0x8
   42ec2:	0f 85 6f 05 00 00    	jne    update_mod_76_2_branch_508
   42ec8:	80 3d 73 5a 02 00 00 	cmp    BYTE PTR ds:@obj3:cain_hit_by_flail,0x0                      ; fixup: num: 11073, src obj: 1, src ofs: 0x42eca, dst obj: 3, dst ofs: 0x25a73
   42ecf:	0f 85 62 05 00 00    	jne    update_mod_76_2_branch_508
   42ed5:	c6 05 73 5a 02 00 01 	mov    BYTE PTR ds:@obj3:cain_hit_by_flail,0x1                      ; fixup: num: 11072, src obj: 1, src ofs: 0x42ed7, dst obj: 3, dst ofs: 0x25a73
   42edc:	80 3d bc 0f 01 00 00 	cmp    BYTE PTR ds:@obj3:gore,0x0                                   ; fixup: num: 11071, src obj: 1, src ofs: 0x42ede, dst obj: 3, dst ofs: 0x10fbc
   42ee3:	74 0c                	je     update_mod_76_2_branch_481
   42ee5:	b8 fd a6 00 00       	mov    eax,@obj3:classes_cpp_variable_124                           ; fixup: num: 11070, src obj: 1, src ofs: 0x42ee6, dst obj: 3, dst ofs: 0xa6fd
   42eea:	31 d2                	xor    edx,edx
   42eec:	e8 5f f6 01 00       	call   play_fvi
update_mod_76_2_branch_481:
   42ef1:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 11069, src obj: 1, src ofs: 0x42ef2, dst obj: 3, dst ofs: 0x25a88
   42ef6:	8b 96 9c 10 00 00    	mov    edx,DWORD PTR [esi+0x109c]
   42efc:	89 35 d4 61 02 00    	mov    DWORD PTR ds:@obj3:temp_next,esi                             ; fixup: num: 11068, src obj: 1, src ofs: 0x42efe, dst obj: 3, dst ofs: 0x261d4
   42f02:	e8 e9 97 00 00       	call   remove_bitmap
   42f07:	b8 12 a7 00 00       	mov    eax,@obj3:classes_cpp_variable_125                           ; fixup: num: 11067, src obj: 1, src ofs: 0x42f08, dst obj: 3, dst ofs: 0xa712
   42f0c:	e8 ef fd 00 00       	call   get_npc
   42f11:	89 c3                	mov    ebx,eax
   42f13:	85 c0                	test   eax,eax
   42f15:	0f 84 f3 04 00 00    	je     update_mod_76_2_branch_506
   42f1b:	8b 8e 9c 10 00 00    	mov    ecx,DWORD PTR [esi+0x109c]
   42f21:	8b 51 3c             	mov    edx,DWORD PTR [ecx+0x3c]
   42f24:	8b 79 24             	mov    edi,DWORD PTR [ecx+0x24]
   42f27:	01 fa                	add    edx,edi
   42f29:	89 10                	mov    DWORD PTR [eax],edx
   42f2b:	e8 50 4f 02 00       	call   logHeap                                                      ; aliases: logHeap, walk_heap
   42f30:	b8 18 a7 00 00       	mov    eax,@obj3:classes_cpp_variable_126                           ; fixup: num: 11066, src obj: 1, src ofs: 0x42f31, dst obj: 3, dst ofs: 0xa718
   42f35:	e8 06 fe 00 00       	call   get_monster
   42f3a:	85 c0                	test   eax,eax
   42f3c:	74 07                	je     update_mod_76_2_branch_482
   42f3e:	c6 80 84 00 00 00 01 	mov    BYTE PTR [eax+0x84],0x1
update_mod_76_2_branch_482:
   42f45:	8b 86 9c 10 00 00    	mov    eax,DWORD PTR [esi+0x109c]
   42f4b:	85 c0                	test   eax,eax
   42f4d:	74 0c                	je     update_mod_76_2_branch_483
   42f4f:	31 d2                	xor    edx,edx
   42f51:	e8 da 20 00 00       	call   W?$dt:NON_PLAYER_CHARACTER$n()_
   42f56:	e8 1d f1 02 00       	call   W?$dln(pnv)v
update_mod_76_2_branch_483:
   42f5b:	c7 86 9c 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x109c],0x0
   42f65:	e8 16 4f 02 00       	call   logHeap                                                      ; aliases: logHeap, walk_heap
   42f6a:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 11065, src obj: 1, src ofs: 0x42f6b, dst obj: 3, dst ofs: 0x25bd4
   42f6f:	c7 80 90 10 00 00 00 00 00 00 	mov    DWORD PTR [eax+0x1090],0x0
   42f79:	8b 90 90 10 00 00    	mov    edx,DWORD PTR [eax+0x1090]
   42f7f:	89 90 8c 10 00 00    	mov    DWORD PTR [eax+0x108c],edx
   42f85:	89 90 98 10 00 00    	mov    DWORD PTR [eax+0x1098],edx
   42f8b:	89 90 94 10 00 00    	mov    DWORD PTR [eax+0x1094],edx
   42f91:	c6 43 25 01          	mov    BYTE PTR [ebx+0x25],0x1
   42f95:	c6 43 26 01          	mov    BYTE PTR [ebx+0x26],0x1
   42f99:	d9 46 1c             	fld    DWORD PTR [esi+0x1c]
   42f9c:	e8 a7 2d 03 00       	call   __CHP
   42fa1:	b8 bc 11 00 00       	mov    eax,0x11bc
   42fa6:	db 5b 08             	fistp  DWORD PTR [ebx+0x8]
   42fa9:	e8 6a ef 02 00       	call   W?$nwn(ui)pnv
   42fae:	85 c0                	test   eax,eax
   42fb0:	0f 84 37 04 00 00    	je     update_mod_76_2_branch_504
   42fb6:	8b 53 34             	mov    edx,DWORD PTR [ebx+0x34]
   42fb9:	52                   	push   edx
   42fba:	68 93 14 07 00       	push   @obj1:_nmalloc_                                              ; aliases: _nmalloc_, malloc_; fixup: num: 11074, src obj: 1, src ofs: 0x42fbb, dst obj: 1, dst ofs: 0x71493
   42fbf:	6a 05                	push   0x5
   42fc1:	83 ec 04             	sub    esp,0x4
   42fc4:	db 43 08             	fild   DWORD PTR [ebx+0x8]
   42fc7:	d9 1c 24             	fstp   DWORD PTR [esp]
   42fca:	89 dd                	mov    ebp,ebx
   42fcc:	8b 4b 04             	mov    ecx,DWORD PTR [ebx+0x4]
   42fcf:	8b 53 18             	mov    edx,DWORD PTR [ebx+0x18]
   42fd2:	8b 7b 14             	mov    edi,DWORD PTR [ebx+0x14]
   42fd5:	51                   	push   ecx
   42fd6:	8b 0b                	mov    ecx,DWORD PTR [ebx]
   42fd8:	89 d3                	mov    ebx,edx
   42fda:	89 fa                	mov    edx,edi
   42fdc:	e8 af 88 ff ff       	call   W?$ct:ANIMATION$n(pnapnaiibipn(ui)pnvpna)_
   42fe1:	89 c7                	mov    edi,eax
   42fe3:	c6 80 b4 11 00 00 00 	mov    BYTE PTR [eax+0x11b4],0x0
   42fea:	b8 28 11 00 00       	mov    eax,0x1128
   42fef:	e8 24 ef 02 00       	call   W?$nwn(ui)pnv
   42ff4:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
   42ff8:	85 c0                	test   eax,eax
   42ffa:	74 35                	je     update_mod_76_2_branch_484
   42ffc:	6a 00                	push   0x0
   42ffe:	6a 00                	push   0x0
   43000:	6a 00                	push   0x0
   43002:	6a 00                	push   0x0
   43004:	68 00 00 c6 c2       	push   0xc2c60000
   43009:	68 58 02 00 00       	push   0x258
   4300e:	bb 0a 00 00 00       	mov    ebx,0xa
   43013:	6a 00                	push   0x0
   43015:	31 c0                	xor    eax,eax
   43017:	ba bc 9e 00 00       	mov    edx,@obj3:classes_cpp_variable_31                            ; fixup: num: 11075, src obj: 1, src ofs: 0x43018, dst obj: 3, dst ofs: 0x9ebc
   4301c:	e8 17 39 03 00       	call   tmpnam_
   43021:	e8 79 df 02 00       	call   strdup_                                                      ; aliases: strdup_, _strdup_
   43026:	89 c1                	mov    ecx,eax
   43028:	8b 44 24 2c          	mov    eax,DWORD PTR [esp+0x2c]
   4302c:	e8 ef 89 ff ff       	call   W?$ct:ANIMATION$n(pnaipnaiibiucucuc)_
update_mod_76_2_branch_484:
   43031:	89 87 a8 11 00 00    	mov    DWORD PTR [edi+0x11a8],eax
   43037:	85 c0                	test   eax,eax
   43039:	75 0f                	jne    update_mod_76_2_branch_485
   4303b:	bb c6 9e 00 00       	mov    ebx,@obj3:classes_cpp_variable_32                            ; fixup: num: 11077, src obj: 1, src ofs: 0x4303c, dst obj: 3, dst ofs: 0x9ec6
   43040:	ba 05 03 00 00       	mov    edx,0x305
   43045:	e8 e6 4f ff ff       	call   _error_report
update_mod_76_2_branch_485:
   4304a:	8b 87 a8 11 00 00    	mov    eax,DWORD PTR [edi+0x11a8]
   43050:	c6 40 0c 00          	mov    BYTE PTR [eax+0xc],0x0
   43054:	8b 87 a8 11 00 00    	mov    eax,DWORD PTR [edi+0x11a8]
   4305a:	c6 40 50 00          	mov    BYTE PTR [eax+0x50],0x0
   4305e:	8b 87 a8 11 00 00    	mov    eax,DWORD PTR [edi+0x11a8]
   43064:	c6 40 53 00          	mov    BYTE PTR [eax+0x53],0x0
   43068:	8b 87 a8 11 00 00    	mov    eax,DWORD PTR [edi+0x11a8]
   4306e:	c6 40 52 00          	mov    BYTE PTR [eax+0x52],0x0
   43072:	8b 97 a8 11 00 00    	mov    edx,DWORD PTR [edi+0x11a8]
   43078:	8b 9a 84 10 00 00    	mov    ebx,DWORD PTR [edx+0x1084]
   4307e:	4b                   	dec    ebx
   4307f:	89 9a 84 10 00 00    	mov    DWORD PTR [edx+0x1084],ebx
   43085:	83 fb ff             	cmp    ebx,0xffffffff
   43088:	75 13                	jne    update_mod_76_2_branch_486
   4308a:	83 ba 64 10 00 00 00 	cmp    DWORD PTR [edx+0x1064],0x0
   43091:	7c 0a                	jl     update_mod_76_2_branch_486
   43093:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 11076, src obj: 1, src ofs: 0x43094, dst obj: 3, dst ofs: 0x25a88
   43098:	e8 53 96 00 00       	call   remove_bitmap
update_mod_76_2_branch_486:
   4309d:	c7 87 b0 11 00 00 00 00 00 00 	mov    DWORD PTR [edi+0x11b0],0x0
   430a7:	8b 87 b0 11 00 00    	mov    eax,DWORD PTR [edi+0x11b0]
   430ad:	89 87 ac 11 00 00    	mov    DWORD PTR [edi+0x11ac],eax
   430b3:	89 87 88 10 00 00    	mov    DWORD PTR [edi+0x1088],eax
   430b9:	8b 47 20             	mov    eax,DWORD PTR [edi+0x20]
   430bc:	89 c2                	mov    edx,eax
   430be:	c1 fa 1f             	sar    edx,0x1f
   430c1:	2b c2                	sub    eax,edx
   430c3:	d1 f8                	sar    eax,1
   430c5:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
   430c8:	29 c2                	sub    edx,eax
   430ca:	89 54 24 14          	mov    DWORD PTR [esp+0x14],edx
   430ce:	db 44 24 14          	fild   DWORD PTR [esp+0x14]
   430d2:	83 ec 04             	sub    esp,0x4
   430d5:	d9 1c 24             	fstp   DWORD PTR [esp]
   430d8:	8b 45 04             	mov    eax,DWORD PTR [ebp+0x4]
   430db:	8b 57 28             	mov    edx,DWORD PTR [edi+0x28]
   430de:	8b 5f 30             	mov    ebx,DWORD PTR [edi+0x30]
   430e1:	29 d0                	sub    eax,edx
   430e3:	29 d8                	sub    eax,ebx
   430e5:	8b 4f 24             	mov    ecx,DWORD PTR [edi+0x24]
   430e8:	89 c3                	mov    ebx,eax
   430ea:	8b 45 00             	mov    eax,DWORD PTR [ebp+0x0]
   430ed:	29 c8                	sub    eax,ecx
   430ef:	89 c1                	mov    ecx,eax
   430f1:	8b 47 2c             	mov    eax,DWORD PTR [edi+0x2c]
   430f4:	89 c2                	mov    edx,eax
   430f6:	c1 fa 1f             	sar    edx,0x1f
   430f9:	2b c2                	sub    eax,edx
   430fb:	d1 f8                	sar    eax,1
   430fd:	89 ca                	mov    edx,ecx
   430ff:	29 c2                	sub    edx,eax
   43101:	89 f8                	mov    eax,edi
   43103:	e8 e8 85 ff ff       	call   set_xyz
   43108:	c6 47 0c 00          	mov    BYTE PTR [edi+0xc],0x0
   4310c:	c7 47 04 00 00 00 00 	mov    DWORD PTR [edi+0x4],0x0
   43113:	89 f8                	mov    eax,edi
   43115:	c7 87 78 10 00 00 00 00 00 00 	mov    DWORD PTR [edi+0x1078],0x0
   4311f:	31 d2                	xor    edx,edx
   43121:	c7 87 6c 10 00 00 3b 00 00 00 	mov    DWORD PTR [edi+0x106c],0x3b
   4312b:	e8 70 97 ff ff       	call   go_to_frame_mod_76
   43130:	c6 87 a0 11 00 00 34 	mov    BYTE PTR [edi+0x11a0],0x34
   43137:	c6 47 50 01          	mov    BYTE PTR [edi+0x50],0x1
   4313b:	c6 47 51 00          	mov    BYTE PTR [edi+0x51],0x0
   4313f:	c6 47 4c 00          	mov    BYTE PTR [edi+0x4c],0x0
   43143:	8a 87 a0 11 00 00    	mov    al,BYTE PTR [edi+0x11a0]
   43149:	88 87 a1 11 00 00    	mov    BYTE PTR [edi+0x11a1],al
   4314f:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
   43152:	89 f9                	mov    ecx,edi
   43154:	85 db                	test   ebx,ebx
   43156:	74 14                	je     update_mod_76_2_branch_487
   43158:	b8 64 00 00 00       	mov    eax,0x64
   4315d:	89 c2                	mov    edx,eax
   4315f:	c1 fa 1f             	sar    edx,0x1f
   43162:	f7 fb                	idiv   ebx
   43164:	89 87 60 10 00 00    	mov    DWORD PTR [edi+0x1060],eax
   4316a:	eb 06                	jmp    update_mod_76_2_branch_488
update_mod_76_2_branch_487:
   4316c:	89 9f 60 10 00 00    	mov    DWORD PTR [edi+0x1060],ebx
update_mod_76_2_branch_488:
   43172:	3b 99 68 10 00 00    	cmp    ebx,DWORD PTR [ecx+0x1068]
   43178:	74 10                	je     update_mod_76_2_branch_489
   4317a:	c7 81 5c 10 00 00 00 00 00 00 	mov    DWORD PTR [ecx+0x105c],0x0
   43184:	89 99 68 10 00 00    	mov    DWORD PTR [ecx+0x1068],ebx
update_mod_76_2_branch_489:
   4318a:	c7 47 38 04 00 00 00 	mov    DWORD PTR [edi+0x38],0x4
   43191:	c7 87 8c 11 00 00 00 00 00 00 	mov    DWORD PTR [edi+0x118c],0x0
   4319b:	c7 87 40 11 00 00 00 00 00 00 	mov    DWORD PTR [edi+0x1140],0x0
   431a5:	c7 87 a4 11 00 00 00 00 00 00 	mov    DWORD PTR [edi+0x11a4],0x0
   431af:	c6 87 28 11 00 00 00 	mov    BYTE PTR [edi+0x1128],0x0
   431b6:	c6 47 08 01          	mov    BYTE PTR [edi+0x8],0x1
   431ba:	8b 45 00             	mov    eax,DWORD PTR [ebp+0x0]
   431bd:	89 87 98 11 00 00    	mov    DWORD PTR [edi+0x1198],eax
   431c3:	8a 45 25             	mov    al,BYTE PTR [ebp+0x25]
   431c6:	c7 87 9c 11 00 00 0f 27 00 00 	mov    DWORD PTR [edi+0x119c],0x270f
   431d0:	c7 87 88 11 00 00 00 00 00 00 	mov    DWORD PTR [edi+0x1188],0x0
   431da:	c7 87 48 11 00 00 00 00 00 00 	mov    DWORD PTR [edi+0x1148],0x0
   431e4:	c7 87 4c 11 00 00 00 00 00 00 	mov    DWORD PTR [edi+0x114c],0x0
   431ee:	c7 87 50 11 00 00 00 00 00 00 	mov    DWORD PTR [edi+0x1150],0x0
   431f8:	c7 87 54 11 00 00 00 00 00 00 	mov    DWORD PTR [edi+0x1154],0x0
   43202:	c7 87 58 11 00 00 00 00 00 00 	mov    DWORD PTR [edi+0x1158],0x0
   4320c:	c7 87 5c 11 00 00 00 00 00 00 	mov    DWORD PTR [edi+0x115c],0x0
   43216:	c7 87 60 11 00 00 00 00 00 00 	mov    DWORD PTR [edi+0x1160],0x0
   43220:	c7 87 64 11 00 00 00 00 00 00 	mov    DWORD PTR [edi+0x1164],0x0
   4322a:	88 47 52             	mov    BYTE PTR [edi+0x52],al
   4322d:	8b 55 30             	mov    edx,DWORD PTR [ebp+0x30]
   43230:	52                   	push   edx
   43231:	68 de 9e 00 00       	push   @obj3:classes_cpp_variable_33                                ; fixup: num: 11080, src obj: 1, src ofs: 0x43232, dst obj: 3, dst ofs: 0x9ede
   43236:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 11079, src obj: 1, src ofs: 0x43237, dst obj: 3, dst ofs: 0x237fc
   4323b:	e8 a1 d9 02 00       	call   sprintf_
   43240:	8b 5d 30             	mov    ebx,DWORD PTR [ebp+0x30]
   43243:	83 c4 0c             	add    esp,0xc
   43246:	85 db                	test   ebx,ebx
   43248:	74 2a                	je     update_mod_76_2_branch_491
   4324a:	89 d8                	mov    eax,ebx
   4324c:	e8 2f 9a fc ff       	call   XFILE_size
   43251:	83 f8 ff             	cmp    eax,0xffffffff
   43254:	74 1e                	je     update_mod_76_2_branch_491
   43256:	b8 88 00 00 00       	mov    eax,0x88
   4325b:	e8 b8 ec 02 00       	call   W?$nwn(ui)pnv
   43260:	85 c0                	test   eax,eax
   43262:	74 08                	je     update_mod_76_2_branch_490
   43264:	8b 55 30             	mov    edx,DWORD PTR [ebp+0x30]
   43267:	e8 04 52 fc ff       	call   W?$ct:SOUND$n(pna)_
update_mod_76_2_branch_490:
   4326c:	89 87 68 11 00 00    	mov    DWORD PTR [edi+0x1168],eax
   43272:	eb 0a                	jmp    update_mod_76_2_branch_492
update_mod_76_2_branch_491:
   43274:	c7 87 68 11 00 00 00 00 00 00 	mov    DWORD PTR [edi+0x1168],0x0
update_mod_76_2_branch_492:
   4327e:	c7 87 78 11 00 00 00 00 00 00 	mov    DWORD PTR [edi+0x1178],0x0
   43288:	c7 87 8c 10 00 00 00 00 00 00 	mov    DWORD PTR [edi+0x108c],0x0
   43292:	c7 87 90 10 00 00 00 00 00 00 	mov    DWORD PTR [edi+0x1090],0x0
   4329c:	c7 87 94 10 00 00 00 00 00 00 	mov    DWORD PTR [edi+0x1094],0x0
   432a6:	c7 87 98 10 00 00 00 00 00 00 	mov    DWORD PTR [edi+0x1098],0x0
   432b0:	80 7d 24 00          	cmp    BYTE PTR [ebp+0x24],0x0
   432b4:	74 63                	je     update_mod_76_2_branch_496
   432b6:	c6 87 a0 11 00 00 38 	mov    BYTE PTR [edi+0x11a0],0x38
   432bd:	8a 87 a0 11 00 00    	mov    al,BYTE PTR [edi+0x11a0]
   432c3:	88 87 a1 11 00 00    	mov    BYTE PTR [edi+0x11a1],al
   432c9:	83 7d 2c 01          	cmp    DWORD PTR [ebp+0x2c],0x1
   432cd:	74 09                	je     update_mod_76_2_branch_493
   432cf:	80 3d bc 0f 01 00 00 	cmp    BYTE PTR ds:@obj3:gore,0x0                                   ; fixup: num: 11078, src obj: 1, src ofs: 0x432d1, dst obj: 3, dst ofs: 0x10fbc
   432d6:	75 17                	jne    update_mod_76_2_branch_494
update_mod_76_2_branch_493:
   432d8:	c7 87 78 10 00 00 4f 00 00 00 	mov    DWORD PTR [edi+0x1078],0x4f
   432e2:	8b 87 78 10 00 00    	mov    eax,DWORD PTR [edi+0x1078]
   432e8:	ba 4f 00 00 00       	mov    edx,0x4f
   432ed:	eb 15                	jmp    update_mod_76_2_branch_495
update_mod_76_2_branch_494:
   432ef:	c7 87 78 10 00 00 45 00 00 00 	mov    DWORD PTR [edi+0x1078],0x45
   432f9:	8b 87 78 10 00 00    	mov    eax,DWORD PTR [edi+0x1078]
   432ff:	ba 45 00 00 00       	mov    edx,0x45
update_mod_76_2_branch_495:
   43304:	89 87 6c 10 00 00    	mov    DWORD PTR [edi+0x106c],eax
   4330a:	89 f8                	mov    eax,edi
   4330c:	e8 8f 95 ff ff       	call   go_to_frame_mod_76
   43311:	c6 47 52 00          	mov    BYTE PTR [edi+0x52],0x0
   43315:	c6 47 08 00          	mov    BYTE PTR [edi+0x8],0x0
update_mod_76_2_branch_496:
   43319:	ba f9 9e 00 00       	mov    edx,@obj3:classes_cpp_variable_34                            ; fixup: num: 11086, src obj: 1, src ofs: 0x4331a, dst obj: 3, dst ofs: 0x9ef9
   4331e:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
   43321:	e8 0a 31 03 00       	call   strcmp_
   43326:	85 c0                	test   eax,eax
   43328:	0f 85 bd 00 00 00    	jne    update_mod_76_2_branch_503
   4332e:	c7 87 84 11 00 00 08 00 00 00 	mov    DWORD PTR [edi+0x1184],0x8
   43338:	8b af 84 11 00 00    	mov    ebp,DWORD PTR [edi+0x1184]
   4333e:	55                   	push   ebp
   4333f:	68 05 9f 00 00       	push   @obj3:classes_cpp_variable_35                                ; fixup: num: 11085, src obj: 1, src ofs: 0x43340, dst obj: 3, dst ofs: 0x9f05
   43344:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 11084, src obj: 1, src ofs: 0x43345, dst obj: 3, dst ofs: 0x237fc
   43349:	e8 93 d8 02 00       	call   sprintf_
   4334e:	83 c4 0c             	add    esp,0xc
   43351:	b8 88 00 00 00       	mov    eax,0x88
   43356:	e8 bd eb 02 00       	call   W?$nwn(ui)pnv
   4335b:	85 c0                	test   eax,eax
   4335d:	74 0a                	je     update_mod_76_2_branch_497
   4335f:	ba 15 9f 00 00       	mov    edx,@obj3:classes_cpp_variable_36                            ; fixup: num: 11083, src obj: 1, src ofs: 0x43360, dst obj: 3, dst ofs: 0x9f15
   43364:	e8 07 51 fc ff       	call   W?$ct:SOUND$n(pna)_
update_mod_76_2_branch_497:
   43369:	a3 f8 59 02 00       	mov    ds:@obj3:stef_scrm,eax                                       ; fixup: num: 11082, src obj: 1, src ofs: 0x4336a, dst obj: 3, dst ofs: 0x259f8
   4336e:	85 c0                	test   eax,eax
   43370:	75 0f                	jne    update_mod_76_2_branch_498
   43372:	bb 33 9f 00 00       	mov    ebx,@obj3:classes_cpp_variable_37                            ; fixup: num: 11081, src obj: 1, src ofs: 0x43373, dst obj: 3, dst ofs: 0x9f33
   43377:	ba 51 03 00 00       	mov    edx,0x351
   4337c:	e8 af 4c ff ff       	call   _error_report
update_mod_76_2_branch_498:
   43381:	b8 88 00 00 00       	mov    eax,0x88
   43386:	e8 8d eb 02 00       	call   W?$nwn(ui)pnv
   4338b:	85 c0                	test   eax,eax
   4338d:	74 0a                	je     update_mod_76_2_branch_499
   4338f:	ba 4b 9f 00 00       	mov    edx,@obj3:classes_cpp_variable_38                            ; fixup: num: 11095, src obj: 1, src ofs: 0x43390, dst obj: 3, dst ofs: 0x9f4b
   43394:	e8 d7 50 fc ff       	call   W?$ct:SOUND$n(pna)_
update_mod_76_2_branch_499:
   43399:	a3 fc 59 02 00       	mov    ds:@obj3:stef_scrm_variable_1,eax                            ; fixup: num: 11094, src obj: 1, src ofs: 0x4339a, dst obj: 3, dst ofs: 0x259fc
   4339e:	85 c0                	test   eax,eax
   433a0:	75 0f                	jne    update_mod_76_2_branch_500
   433a2:	bb 69 9f 00 00       	mov    ebx,@obj3:classes_cpp_variable_39                            ; fixup: num: 11093, src obj: 1, src ofs: 0x433a3, dst obj: 3, dst ofs: 0x9f69
   433a7:	ba 53 03 00 00       	mov    edx,0x353
   433ac:	e8 7f 4c ff ff       	call   _error_report
update_mod_76_2_branch_500:
   433b1:	b8 88 00 00 00       	mov    eax,0x88
   433b6:	e8 5d eb 02 00       	call   W?$nwn(ui)pnv
   433bb:	85 c0                	test   eax,eax
   433bd:	74 0a                	je     update_mod_76_2_branch_501
   433bf:	ba 81 9f 00 00       	mov    edx,@obj3:classes_cpp_variable_40                            ; fixup: num: 11092, src obj: 1, src ofs: 0x433c0, dst obj: 3, dst ofs: 0x9f81
   433c4:	e8 a7 50 fc ff       	call   W?$ct:SOUND$n(pna)_
update_mod_76_2_branch_501:
   433c9:	a3 00 5a 02 00       	mov    ds:@obj3:stef_scrm_variable_2,eax                            ; fixup: num: 11091, src obj: 1, src ofs: 0x433ca, dst obj: 3, dst ofs: 0x25a00
   433ce:	85 c0                	test   eax,eax
   433d0:	75 0f                	jne    update_mod_76_2_branch_502
   433d2:	bb 9f 9f 00 00       	mov    ebx,@obj3:classes_cpp_variable_41                            ; fixup: num: 11090, src obj: 1, src ofs: 0x433d3, dst obj: 3, dst ofs: 0x9f9f
   433d7:	ba 55 03 00 00       	mov    edx,0x355
   433dc:	e8 4f 4c ff ff       	call   _error_report
update_mod_76_2_branch_502:
   433e1:	a1 f8 59 02 00       	mov    eax,ds:@obj3:stef_scrm                                       ; fixup: num: 11089, src obj: 1, src ofs: 0x433e2, dst obj: 3, dst ofs: 0x259f8
   433e6:	e8 c5 63 fc ff       	call   play
update_mod_76_2_branch_503:
   433eb:	89 f8                	mov    eax,edi
update_mod_76_2_branch_504:
   433ed:	89 c1                	mov    ecx,eax
   433ef:	85 c0                	test   eax,eax
   433f1:	75 0f                	jne    update_mod_76_2_branch_505
   433f3:	bb 1d a7 00 00       	mov    ebx,@obj3:classes_cpp_variable_127                           ; fixup: num: 11088, src obj: 1, src ofs: 0x433f4, dst obj: 3, dst ofs: 0xa71d
   433f8:	ba 53 0d 00 00       	mov    edx,0xd53
   433fd:	e8 2e 4c ff ff       	call   _error_report
update_mod_76_2_branch_505:
   43402:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 11087, src obj: 1, src ofs: 0x43403, dst obj: 3, dst ofs: 0x25a88
   43407:	89 ca                	mov    edx,ecx
   43409:	e8 22 8d 00 00       	call   insert_bitmap
update_mod_76_2_branch_506:
   4340e:	8b 86 9c 10 00 00    	mov    eax,DWORD PTR [esi+0x109c]
   43414:	85 c0                	test   eax,eax
   43416:	74 0e                	je     update_mod_76_2_branch_507
   43418:	74 0c                	je     update_mod_76_2_branch_507
   4341a:	31 d2                	xor    edx,edx
   4341c:	e8 7f 7f ff ff       	call   W?$dt:BTMAP$n()_
   43421:	e8 52 ec 02 00       	call   W?$dln(pnv)v
update_mod_76_2_branch_507:
   43426:	e8 55 4a 02 00       	call   logHeap                                                      ; aliases: logHeap, walk_heap
   4342b:	b0 01                	mov    al,0x1
   4342d:	83 c4 40             	add    esp,0x40
   43430:	5d                   	pop    ebp
   43431:	5f                   	pop    edi
   43432:	5e                   	pop    esi
   43433:	5a                   	pop    edx
   43434:	59                   	pop    ecx
   43435:	5b                   	pop    ebx
   43436:	c3                   	ret    
update_mod_76_2_branch_508:
   43437:	8b 86 9c 10 00 00    	mov    eax,DWORD PTR [esi+0x109c]
   4343d:	83 78 38 05          	cmp    DWORD PTR [eax+0x38],0x5
   43441:	75 09                	jne    update_mod_76_2_branch_509
   43443:	80 3d c4 61 02 00 00 	cmp    BYTE PTR ds:@obj3:god_mode,0x0                               ; fixup: num: 11100, src obj: 1, src ofs: 0x43445, dst obj: 3, dst ofs: 0x261c4
   4344a:	75 2b                	jne    update_mod_76_2_branch_510
update_mod_76_2_branch_509:
   4344c:	8b 86 9c 10 00 00    	mov    eax,DWORD PTR [esi+0x109c]
   43452:	8b 96 80 11 00 00    	mov    edx,DWORD PTR [esi+0x1180]
   43458:	29 90 84 11 00 00    	sub    DWORD PTR [eax+0x1184],edx
   4345e:	8b 86 9c 10 00 00    	mov    eax,DWORD PTR [esi+0x109c]
   43464:	83 b8 84 11 00 00 00 	cmp    DWORD PTR [eax+0x1184],0x0
   4346b:	7d 0a                	jge    update_mod_76_2_branch_510
   4346d:	c7 80 84 11 00 00 00 00 00 00 	mov    DWORD PTR [eax+0x1184],0x0
update_mod_76_2_branch_510:
   43477:	c6 86 28 11 00 00 01 	mov    BYTE PTR [esi+0x1128],0x1
   4347e:	eb 60                	jmp    update_mod_76_2_branch_513
update_mod_76_2_branch_511:
   43480:	8b 4b 10             	mov    ecx,DWORD PTR [ebx+0x10]
   43483:	51                   	push   ecx
   43484:	68 35 a7 00 00       	push   @obj3:classes_cpp_variable_128                               ; fixup: num: 11099, src obj: 1, src ofs: 0x43485, dst obj: 3, dst ofs: 0xa735
   43489:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 11098, src obj: 1, src ofs: 0x4348a, dst obj: 3, dst ofs: 0x237fc
   4348e:	e8 4e d7 02 00       	call   sprintf_
   43493:	8a ab a1 11 00 00    	mov    ch,BYTE PTR [ebx+0x11a1]
   43499:	83 c4 0c             	add    esp,0xc
   4349c:	80 fd 35             	cmp    ch,0x35
   4349f:	74 18                	je     update_mod_76_2_branch_512
   434a1:	c6 83 a1 11 00 00 35 	mov    BYTE PTR [ebx+0x11a1],0x35
   434a8:	89 d8                	mov    eax,ebx
   434aa:	8b 93 6c 10 00 00    	mov    edx,DWORD PTR [ebx+0x106c]
   434b0:	c6 43 50 00          	mov    BYTE PTR [ebx+0x50],0x0
   434b4:	e8 e7 93 ff ff       	call   go_to_frame_mod_76
update_mod_76_2_branch_512:
   434b9:	8b be 78 10 00 00    	mov    edi,DWORD PTR [esi+0x1078]
   434bf:	57                   	push   edi
   434c0:	8b ae 6c 10 00 00    	mov    ebp,DWORD PTR [esi+0x106c]
   434c6:	55                   	push   ebp
   434c7:	8b 86 64 10 00 00    	mov    eax,DWORD PTR [esi+0x1064]
   434cd:	50                   	push   eax
   434ce:	68 49 a7 00 00       	push   @obj3:classes_cpp_variable_129                               ; fixup: num: 11097, src obj: 1, src ofs: 0x434cf, dst obj: 3, dst ofs: 0xa749
   434d3:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 11096, src obj: 1, src ofs: 0x434d4, dst obj: 3, dst ofs: 0x237fc
   434d8:	e8 04 d7 02 00       	call   sprintf_
   434dd:	83 c4 14             	add    esp,0x14
update_mod_76_2_branch_513:
   434e0:	80 7e 4c 00          	cmp    BYTE PTR [esi+0x4c],0x0
   434e4:	75 11                	jne    update_mod_76_2_branch_514
   434e6:	8b 86 6c 10 00 00    	mov    eax,DWORD PTR [esi+0x106c]
   434ec:	8b be 64 10 00 00    	mov    edi,DWORD PTR [esi+0x1064]
   434f2:	48                   	dec    eax
   434f3:	39 f8                	cmp    eax,edi
   434f5:	74 17                	je     update_mod_76_2_branch_515
update_mod_76_2_branch_514:
   434f7:	80 7e 4c 00          	cmp    BYTE PTR [esi+0x4c],0x0
   434fb:	74 22                	je     update_mod_76_2_branch_516
   434fd:	8b 86 78 10 00 00    	mov    eax,DWORD PTR [esi+0x1078]
   43503:	8b ae 64 10 00 00    	mov    ebp,DWORD PTR [esi+0x1064]
   43509:	40                   	inc    eax
   4350a:	39 e8                	cmp    eax,ebp
   4350c:	75 11                	jne    update_mod_76_2_branch_516
update_mod_76_2_branch_515:
   4350e:	c7 86 a4 11 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x11a4],0x0
   43518:	c6 86 28 11 00 00 00 	mov    BYTE PTR [esi+0x1128],0x0
update_mod_76_2_branch_516:
   4351f:	8b 86 68 10 00 00    	mov    eax,DWORD PTR [esi+0x1068]
   43525:	c7 86 60 10 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1060],0x3
   4352f:	83 f8 1e             	cmp    eax,0x1e
   43532:	0f 84 65 ba ff ff    	je     update_mod_76_2_reference_2
   43538:	c7 86 68 10 00 00 1e 00 00 00 	mov    DWORD PTR [esi+0x1068],0x1e
   43542:	c7 86 5c 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x105c],0x0
   4354c:	e9 4c ba ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_reference_63:
   43551:	83 be 98 11 00 00 50 	cmp    DWORD PTR [esi+0x1198],0x50
   43558:	7e 1d                	jle    update_mod_76_2_branch_517
   4355a:	f6 86 8c 11 00 00 40 	test   BYTE PTR [esi+0x118c],0x40
   43561:	74 14                	je     update_mod_76_2_branch_517
   43563:	d9 46 18             	fld    DWORD PTR [esi+0x18]
   43566:	d8 0d 85 a7 00 00    	fmul   DWORD PTR ds:@obj3:classes_cpp_variable_132                  ; fixup: num: 11101, src obj: 1, src ofs: 0x43568, dst obj: 3, dst ofs: 0xa785
   4356c:	e8 d7 27 03 00       	call   __CHP
   43571:	db 9e a0 10 00 00    	fistp  DWORD PTR [esi+0x10a0]
update_mod_76_2_branch_517:
   43577:	83 be 38 11 00 00 00 	cmp    DWORD PTR [esi+0x1138],0x0
   4357e:	7e 5a                	jle    update_mod_76_2_branch_521
   43580:	e8 52 2f 03 00       	call   rand_
   43585:	89 c2                	mov    edx,eax
   43587:	8b be 38 11 00 00    	mov    edi,DWORD PTR [esi+0x1138]
   4358d:	c1 fa 1f             	sar    edx,0x1f
   43590:	f7 ff                	idiv   edi
   43592:	89 d1                	mov    ecx,edx
   43594:	83 bc 8e 54 11 00 00 00 	cmp    DWORD PTR [esi+ecx*4+0x1154],0x0
   4359c:	74 3c                	je     update_mod_76_2_branch_521
   4359e:	31 db                	xor    ebx,ebx
   435a0:	85 ff                	test   edi,edi
   435a2:	7e 2a                	jle    update_mod_76_2_branch_520
   435a4:	89 f2                	mov    edx,esi
update_mod_76_2_branch_518:
   435a6:	8b 82 54 11 00 00    	mov    eax,DWORD PTR [edx+0x1154]
   435ac:	e8 2f 63 fc ff       	call   playing
   435b1:	84 c0                	test   al,al
   435b3:	74 0b                	je     update_mod_76_2_branch_519
   435b5:	8b 82 54 11 00 00    	mov    eax,DWORD PTR [edx+0x1154]
   435bb:	e8 80 62 fc ff       	call   stop
update_mod_76_2_branch_519:
   435c0:	43                   	inc    ebx
   435c1:	8b be 38 11 00 00    	mov    edi,DWORD PTR [esi+0x1138]
   435c7:	83 c2 04             	add    edx,0x4
   435ca:	39 fb                	cmp    ebx,edi
   435cc:	7c d8                	jl     update_mod_76_2_branch_518
update_mod_76_2_branch_520:
   435ce:	8b 84 8e 54 11 00 00 	mov    eax,DWORD PTR [esi+ecx*4+0x1154]
   435d5:	e8 d6 61 fc ff       	call   play
update_mod_76_2_branch_521:
   435da:	8b 86 64 10 00 00    	mov    eax,DWORD PTR [esi+0x1064]
   435e0:	3b 86 6c 10 00 00    	cmp    eax,DWORD PTR [esi+0x106c]
   435e6:	0f 85 b1 b9 ff ff    	jne    update_mod_76_2_reference_2
   435ec:	8b 86 68 10 00 00    	mov    eax,DWORD PTR [esi+0x1068]
   435f2:	c7 86 60 10 00 00 14 00 00 00 	mov    DWORD PTR [esi+0x1060],0x14
   435fc:	83 f8 05             	cmp    eax,0x5
   435ff:	0f 84 98 b9 ff ff    	je     update_mod_76_2_reference_2
   43605:	c7 86 68 10 00 00 05 00 00 00 	mov    DWORD PTR [esi+0x1068],0x5
   4360f:	c7 86 5c 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x105c],0x0
   43619:	e9 7f b9 ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_reference_64:
   4361e:	81 be 98 11 00 00 58 02 00 00 	cmp    DWORD PTR [esi+0x1198],0x258
   43628:	7d 1d                	jge    update_mod_76_2_branch_522
   4362a:	f6 86 8c 11 00 00 10 	test   BYTE PTR [esi+0x118c],0x10
   43631:	74 14                	je     update_mod_76_2_branch_522
   43633:	d9 46 18             	fld    DWORD PTR [esi+0x18]
   43636:	d8 0d 81 a7 00 00    	fmul   DWORD PTR ds:@obj3:classes_cpp_variable_131                  ; fixup: num: 11102, src obj: 1, src ofs: 0x43638, dst obj: 3, dst ofs: 0xa781
   4363c:	e8 07 27 03 00       	call   __CHP
   43641:	db 9e a0 10 00 00    	fistp  DWORD PTR [esi+0x10a0]
update_mod_76_2_branch_522:
   43647:	83 be 38 11 00 00 00 	cmp    DWORD PTR [esi+0x1138],0x0
   4364e:	7e 5a                	jle    update_mod_76_2_branch_526
   43650:	e8 82 2e 03 00       	call   rand_
   43655:	89 c2                	mov    edx,eax
   43657:	8b ae 38 11 00 00    	mov    ebp,DWORD PTR [esi+0x1138]
   4365d:	c1 fa 1f             	sar    edx,0x1f
   43660:	f7 fd                	idiv   ebp
   43662:	89 d1                	mov    ecx,edx
   43664:	83 bc 8e 54 11 00 00 00 	cmp    DWORD PTR [esi+ecx*4+0x1154],0x0
   4366c:	74 3c                	je     update_mod_76_2_branch_526
   4366e:	31 db                	xor    ebx,ebx
   43670:	85 ed                	test   ebp,ebp
   43672:	7e 2a                	jle    update_mod_76_2_branch_525
   43674:	89 f2                	mov    edx,esi
update_mod_76_2_branch_523:
   43676:	8b 82 54 11 00 00    	mov    eax,DWORD PTR [edx+0x1154]
   4367c:	e8 5f 62 fc ff       	call   playing
   43681:	84 c0                	test   al,al
   43683:	74 0b                	je     update_mod_76_2_branch_524
   43685:	8b 82 54 11 00 00    	mov    eax,DWORD PTR [edx+0x1154]
   4368b:	e8 b0 61 fc ff       	call   stop
update_mod_76_2_branch_524:
   43690:	43                   	inc    ebx
   43691:	8b be 38 11 00 00    	mov    edi,DWORD PTR [esi+0x1138]
   43697:	83 c2 04             	add    edx,0x4
   4369a:	39 fb                	cmp    ebx,edi
   4369c:	7c d8                	jl     update_mod_76_2_branch_523
update_mod_76_2_branch_525:
   4369e:	8b 84 8e 54 11 00 00 	mov    eax,DWORD PTR [esi+ecx*4+0x1154]
   436a5:	e8 06 61 fc ff       	call   play
update_mod_76_2_branch_526:
   436aa:	8b 86 64 10 00 00    	mov    eax,DWORD PTR [esi+0x1064]
   436b0:	3b 86 6c 10 00 00    	cmp    eax,DWORD PTR [esi+0x106c]
   436b6:	0f 85 e1 b8 ff ff    	jne    update_mod_76_2_reference_2
   436bc:	8b 86 68 10 00 00    	mov    eax,DWORD PTR [esi+0x1068]
   436c2:	c7 86 60 10 00 00 14 00 00 00 	mov    DWORD PTR [esi+0x1060],0x14
   436cc:	83 f8 05             	cmp    eax,0x5
   436cf:	0f 84 c8 b8 ff ff    	je     update_mod_76_2_reference_2
   436d5:	c7 86 68 10 00 00 05 00 00 00 	mov    DWORD PTR [esi+0x1068],0x5
   436df:	c7 86 5c 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x105c],0x0
   436e9:	e9 af b8 ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_reference_65:
   436ee:	8b 9e 80 10 00 00    	mov    ebx,DWORD PTR [esi+0x1080]
   436f4:	89 f1                	mov    ecx,esi
   436f6:	85 db                	test   ebx,ebx
   436f8:	74 14                	je     update_mod_76_2_branch_527
   436fa:	b8 64 00 00 00       	mov    eax,0x64
   436ff:	89 c2                	mov    edx,eax
   43701:	c1 fa 1f             	sar    edx,0x1f
   43704:	f7 fb                	idiv   ebx
   43706:	89 86 60 10 00 00    	mov    DWORD PTR [esi+0x1060],eax
   4370c:	eb 06                	jmp    update_mod_76_2_branch_528
update_mod_76_2_branch_527:
   4370e:	89 9e 60 10 00 00    	mov    DWORD PTR [esi+0x1060],ebx
update_mod_76_2_branch_528:
   43714:	3b 99 68 10 00 00    	cmp    ebx,DWORD PTR [ecx+0x1068]
   4371a:	74 10                	je     update_mod_76_2_branch_529
   4371c:	c7 81 5c 10 00 00 00 00 00 00 	mov    DWORD PTR [ecx+0x105c],0x0
   43726:	89 99 68 10 00 00    	mov    DWORD PTR [ecx+0x1068],ebx
update_mod_76_2_branch_529:
   4372c:	30 ff                	xor    bh,bh
   4372e:	ba 0a 00 00 00       	mov    edx,0xa
   43733:	88 3d 9c 60 02 00    	mov    BYTE PTR ds:@obj3:combat_mode,bh                             ; fixup: num: 11108, src obj: 1, src ofs: 0x43735, dst obj: 3, dst ofs: 0x2609c
   43739:	bb 75 02 00 00       	mov    ebx,0x275
   4373e:	89 15 08 3c 01 00    	mov    DWORD PTR ds:@obj3:move_min_x,edx                            ; fixup: num: 11107, src obj: 1, src ofs: 0x43740, dst obj: 3, dst ofs: 0x13c08
   43744:	89 1d 0c 3c 01 00    	mov    DWORD PTR ds:@obj3:move_max_x,ebx                            ; fixup: num: 11106, src obj: 1, src ofs: 0x43746, dst obj: 3, dst ofs: 0x13c0c
   4374a:	e9 4e b8 ff ff       	jmp    update_mod_76_2_reference_2
update_mod_76_2_branch_530:
   4374f:	8a 86 a0 11 00 00    	mov    al,BYTE PTR [esi+0x11a0]
   43755:	3c 3a                	cmp    al,0x3a
   43757:	0f 87 40 b8 ff ff    	ja     update_mod_76_2_reference_2
   4375d:	25 ff 00 00 00       	and    eax,0xff
   43762:	2e ff 24 85 5c d6 03 00 	jmp    DWORD PTR cs:[eax*4+@obj1:W?$ct:NON_PLAYER_CHARACTER$n(pnapnaiibiiipn(ui)pnv)__reference_3]; fixup: num: 11105, src obj: 1, src ofs: 0x43766, dst obj: 1, dst ofs: 0x3d65c
   4376a:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'update_combat'                      -
;-------------------------------------------------
update_combat:
   43770:	53                   	push   ebx
   43771:	51                   	push   ecx
   43772:	52                   	push   edx
   43773:	89 c3                	mov    ebx,eax
   43775:	ba a5 a7 00 00       	mov    edx,@obj3:classes_cpp_variable_139                           ; fixup: num: 11104, src obj: 1, src ofs: 0x43776, dst obj: 3, dst ofs: 0xa7a5
   4377a:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
   4377d:	e8 ae 2c 03 00       	call   strcmp_
   43782:	85 c0                	test   eax,eax
   43784:	75 26                	jne    update_combat_branch_1
   43786:	a0 9c 60 02 00       	mov    al,ds:@obj3:combat_mode                                      ; fixup: num: 11103, src obj: 1, src ofs: 0x43787, dst obj: 3, dst ofs: 0x2609c
   4378b:	50                   	push   eax
   4378c:	8b 93 88 10 00 00    	mov    edx,DWORD PTR [ebx+0x1088]
   43792:	52                   	push   edx
   43793:	8b 8b ac 11 00 00    	mov    ecx,DWORD PTR [ebx+0x11ac]
   43799:	51                   	push   ecx
   4379a:	68 ac a7 00 00       	push   @obj3:classes_cpp_variable_140                               ; fixup: num: 11114, src obj: 1, src ofs: 0x4379b, dst obj: 3, dst ofs: 0xa7ac
   4379f:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 11113, src obj: 1, src ofs: 0x437a0, dst obj: 3, dst ofs: 0x237fc
   437a4:	e8 38 d4 02 00       	call   sprintf_
   437a9:	83 c4 14             	add    esp,0x14
update_combat_branch_1:
   437ac:	83 bb ac 11 00 00 00 	cmp    DWORD PTR [ebx+0x11ac],0x0
   437b3:	74 4b                	je     update_combat_branch_3
   437b5:	83 bb 88 10 00 00 00 	cmp    DWORD PTR [ebx+0x1088],0x0
   437bc:	75 42                	jne    update_combat_branch_3
   437be:	80 3d 9c 60 02 00 00 	cmp    BYTE PTR ds:@obj3:combat_mode,0x0                            ; fixup: num: 11112, src obj: 1, src ofs: 0x437c0, dst obj: 3, dst ofs: 0x2609c
   437c5:	74 39                	je     update_combat_branch_3
   437c7:	ba d3 a7 00 00       	mov    edx,@obj3:classes_cpp_variable_141                           ; fixup: num: 11111, src obj: 1, src ofs: 0x437c8, dst obj: 3, dst ofs: 0xa7d3
   437cc:	8b 43 10             	mov    eax,DWORD PTR [ebx+0x10]
   437cf:	e8 5c 2c 03 00       	call   strcmp_
   437d4:	8b 83 ac 11 00 00    	mov    eax,DWORD PTR [ebx+0x11ac]
   437da:	89 83 88 10 00 00    	mov    DWORD PTR [ebx+0x1088],eax
   437e0:	85 c0                	test   eax,eax
   437e2:	7e 10                	jle    update_combat_branch_2
   437e4:	8b 83 b0 11 00 00    	mov    eax,DWORD PTR [ebx+0x11b0]
   437ea:	29 83 ac 11 00 00    	sub    DWORD PTR [ebx+0x11ac],eax
   437f0:	5a                   	pop    edx
   437f1:	59                   	pop    ecx
   437f2:	5b                   	pop    ebx
   437f3:	c3                   	ret    
update_combat_branch_2:
   437f4:	8b 83 b0 11 00 00    	mov    eax,DWORD PTR [ebx+0x11b0]
   437fa:	01 83 ac 11 00 00    	add    DWORD PTR [ebx+0x11ac],eax
update_combat_branch_3:
   43800:	5a                   	pop    edx
   43801:	59                   	pop    ecx
   43802:	5b                   	pop    ebx
   43803:	c3                   	ret    
   43804:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   4380a:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]

;-------------------------------------------------
;  Function 'change2monster'                     -
;-------------------------------------------------
change2monster:
   43810:	53                   	push   ebx
   43811:	52                   	push   edx
   43812:	89 c3                	mov    ebx,eax
   43814:	8b 50 10             	mov    edx,DWORD PTR [eax+0x10]
   43817:	52                   	push   edx
   43818:	68 35 a7 00 00       	push   @obj3:classes_cpp_variable_128                               ; fixup: num: 11110, src obj: 1, src ofs: 0x43819, dst obj: 3, dst ofs: 0xa735
   4381d:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 11109, src obj: 1, src ofs: 0x4381e, dst obj: 3, dst ofs: 0x237fc
   43822:	e8 ba d3 02 00       	call   sprintf_
   43827:	8a a3 a1 11 00 00    	mov    ah,BYTE PTR [ebx+0x11a1]
   4382d:	83 c4 0c             	add    esp,0xc
   43830:	80 fc 35             	cmp    ah,0x35
   43833:	74 18                	je     change2monster_branch_1
   43835:	c6 83 a1 11 00 00 35 	mov    BYTE PTR [ebx+0x11a1],0x35
   4383c:	89 d8                	mov    eax,ebx
   4383e:	8b 93 6c 10 00 00    	mov    edx,DWORD PTR [ebx+0x106c]
   43844:	c6 43 50 00          	mov    BYTE PTR [ebx+0x50],0x0
   43848:	e8 53 90 ff ff       	call   go_to_frame_mod_76
change2monster_branch_1:
   4384d:	5a                   	pop    edx
   4384e:	5b                   	pop    ebx
   4384f:	c3                   	ret    

;-------------------------------------------------
;  Function 'get_next_dest'                      -
;-------------------------------------------------
get_next_dest:
   43850:	53                   	push   ebx
   43851:	51                   	push   ecx
   43852:	52                   	push   edx
   43853:	56                   	push   esi
   43854:	57                   	push   edi
   43855:	55                   	push   ebp
   43856:	83 ec 04             	sub    esp,0x4
   43859:	89 c3                	mov    ebx,eax
   4385b:	83 b8 ac 10 00 00 ff 	cmp    DWORD PTR [eax+0x10ac],0xffffffff
   43862:	75 18                	jne    get_next_dest_branch_1
   43864:	d9 80 b4 10 00 00    	fld    DWORD PTR [eax+0x10b4]
   4386a:	e8 d9 24 03 00       	call   __CHP
   4386f:	db 1c 24             	fistp  DWORD PTR [esp]
   43872:	83 3c 24 9d          	cmp    DWORD PTR [esp],0xffffff9d
   43876:	0f 84 6e 01 00 00    	je     get_next_dest_branch_9
get_next_dest_branch_1:
   4387c:	8b b3 24 11 00 00    	mov    esi,DWORD PTR [ebx+0x1124]
   43882:	46                   	inc    esi
   43883:	8a a3 a0 11 00 00    	mov    ah,BYTE PTR [ebx+0x11a0]
   43889:	89 b3 24 11 00 00    	mov    DWORD PTR [ebx+0x1124],esi
   4388f:	80 fc 07             	cmp    ah,0x7
   43892:	74 13                	je     get_next_dest_branch_2
   43894:	80 fc 0e             	cmp    ah,0xe
   43897:	74 0e                	je     get_next_dest_branch_2
   43899:	80 fc 39             	cmp    ah,0x39
   4389c:	74 09                	je     get_next_dest_branch_2
   4389e:	80 fc 3a             	cmp    ah,0x3a
   438a1:	0f 85 97 00 00 00    	jne    get_next_dest_branch_5
get_next_dest_branch_2:
   438a7:	8b 8b 9c 10 00 00    	mov    ecx,DWORD PTR [ebx+0x109c]
   438ad:	8b 41 20             	mov    eax,DWORD PTR [ecx+0x20]
   438b0:	89 c2                	mov    edx,eax
   438b2:	c1 fa 1f             	sar    edx,0x1f
   438b5:	2b c2                	sub    eax,edx
   438b7:	d1 f8                	sar    eax,1
   438b9:	89 04 24             	mov    DWORD PTR [esp],eax
   438bc:	db 04 24             	fild   DWORD PTR [esp]
   438bf:	8b 93 24 11 00 00    	mov    edx,DWORD PTR [ebx+0x1124]
   438c5:	8d 72 ff             	lea    esi,[edx-0x1]
   438c8:	d8 41 1c             	fadd   DWORD PTR [ecx+0x1c]
   438cb:	8d 04 b5 00 00 00 00 	lea    eax,[esi*4+0x0]
   438d2:	29 f0                	sub    eax,esi
   438d4:	8d 04 85 00 00 00 00 	lea    eax,[eax*4+0x0]
   438db:	8d 34 03             	lea    esi,[ebx+eax*1]
   438de:	8d 04 95 00 00 00 00 	lea    eax,[edx*4+0x0]
   438e5:	29 d0                	sub    eax,edx
   438e7:	8d 04 85 00 00 00 00 	lea    eax,[eax*4+0x0]
   438ee:	8d 14 03             	lea    edx,[ebx+eax*1]
   438f1:	d8 9e b4 10 00 00    	fcomp  DWORD PTR [esi+0x10b4]
   438f7:	df e0                	fnstsw ax
   438f9:	9e                   	sahf   
   438fa:	77 0c                	ja     get_next_dest_branch_3
   438fc:	db 41 20             	fild   DWORD PTR [ecx+0x20]
   438ff:	d8 41 1c             	fadd   DWORD PTR [ecx+0x1c]
   43902:	d9 e8                	fld1   
   43904:	de c1                	faddp  st(1),st
   43906:	eb 0c                	jmp    get_next_dest_branch_4
get_next_dest_branch_3:
   43908:	db 43 20             	fild   DWORD PTR [ebx+0x20]
   4390b:	d8 69 1c             	fsubr  DWORD PTR [ecx+0x1c]
   4390e:	d8 05 da a7 00 00    	fadd   DWORD PTR ds:@obj3:classes_cpp_variable_142                  ; fixup: num: 11117, src obj: 1, src ofs: 0x43910, dst obj: 3, dst ofs: 0xa7da
get_next_dest_branch_4:
   43914:	d9 9a b4 10 00 00    	fstp   DWORD PTR [edx+0x10b4]
   4391a:	8b 8b 24 11 00 00    	mov    ecx,DWORD PTR [ebx+0x1124]
   43920:	8d 04 8d 00 00 00 00 	lea    eax,[ecx*4+0x0]
   43927:	29 c8                	sub    eax,ecx
   43929:	c7 84 83 ac 10 00 00 ff ff ff ff 	mov    DWORD PTR [ebx+eax*4+0x10ac],0xffffffff
   43934:	83 c4 04             	add    esp,0x4
   43937:	5d                   	pop    ebp
   43938:	5f                   	pop    edi
   43939:	5e                   	pop    esi
   4393a:	5a                   	pop    edx
   4393b:	59                   	pop    ecx
   4393c:	5b                   	pop    ebx
   4393d:	c3                   	ret    
get_next_dest_branch_5:
   4393e:	80 fc 04             	cmp    ah,0x4
   43941:	74 09                	je     get_next_dest_branch_6
   43943:	80 fc 0b             	cmp    ah,0xb
   43946:	0f 85 9e 00 00 00    	jne    get_next_dest_branch_9
get_next_dest_branch_6:
   4394c:	8b 83 9c 10 00 00    	mov    eax,DWORD PTR [ebx+0x109c]
   43952:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
   43955:	8b 00                	mov    eax,DWORD PTR [eax]
   43957:	d1 e8                	shr    eax,1
   43959:	50                   	push   eax
   4395a:	68 aa a6 00 00       	push   @obj3:classes_cpp_variable_118                               ; fixup: num: 11116, src obj: 1, src ofs: 0x4395b, dst obj: 3, dst ofs: 0xa6aa
   4395f:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 11115, src obj: 1, src ofs: 0x43960, dst obj: 3, dst ofs: 0x237fc
   43964:	e8 78 d2 02 00       	call   sprintf_
   43969:	8b 8b 9c 10 00 00    	mov    ecx,DWORD PTR [ebx+0x109c]
   4396f:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
   43972:	8b 2a                	mov    ebp,DWORD PTR [edx]
   43974:	8b 79 3c             	mov    edi,DWORD PTR [ecx+0x3c]
   43977:	d1 ed                	shr    ebp,1
   43979:	8b b3 24 11 00 00    	mov    esi,DWORD PTR [ebx+0x1124]
   4397f:	01 fd                	add    ebp,edi
   43981:	8d 7e ff             	lea    edi,[esi-0x1]
   43984:	8d 04 bd 00 00 00 00 	lea    eax,[edi*4+0x0]
   4398b:	29 f8                	sub    eax,edi
   4398d:	8d 04 85 00 00 00 00 	lea    eax,[eax*4+0x0]
   43994:	8d 3c 03             	lea    edi,[ebx+eax*1]
   43997:	8d 04 b5 00 00 00 00 	lea    eax,[esi*4+0x0]
   4399e:	83 c4 0c             	add    esp,0xc
   439a1:	29 f0                	sub    eax,esi
   439a3:	8d 04 85 00 00 00 00 	lea    eax,[eax*4+0x0]
   439aa:	8b bf ac 10 00 00    	mov    edi,DWORD PTR [edi+0x10ac]
   439b0:	8d 34 03             	lea    esi,[ebx+eax*1]
   439b3:	39 fd                	cmp    ebp,edi
   439b5:	7f 0a                	jg     get_next_dest_branch_7
   439b7:	8b 41 3c             	mov    eax,DWORD PTR [ecx+0x3c]
   439ba:	03 02                	add    eax,DWORD PTR [edx]
   439bc:	83 c0 28             	add    eax,0x28
   439bf:	eb 09                	jmp    get_next_dest_branch_8
get_next_dest_branch_7:
   439c1:	8b 41 3c             	mov    eax,DWORD PTR [ecx+0x3c]
   439c4:	2b 43 2c             	sub    eax,DWORD PTR [ebx+0x2c]
   439c7:	83 e8 28             	sub    eax,0x28
get_next_dest_branch_8:
   439ca:	89 86 ac 10 00 00    	mov    DWORD PTR [esi+0x10ac],eax
   439d0:	8b 93 24 11 00 00    	mov    edx,DWORD PTR [ebx+0x1124]
   439d6:	8d 04 95 00 00 00 00 	lea    eax,[edx*4+0x0]
   439dd:	29 d0                	sub    eax,edx
   439df:	c7 84 83 b4 10 00 00 00 00 c6 c2 	mov    DWORD PTR [ebx+eax*4+0x10b4],0xc2c60000
get_next_dest_branch_9:
   439ea:	83 c4 04             	add    esp,0x4
   439ed:	5d                   	pop    ebp
   439ee:	5f                   	pop    edi
   439ef:	5e                   	pop    esi
   439f0:	5a                   	pop    edx
   439f1:	59                   	pop    ecx
   439f2:	5b                   	pop    ebx
   439f3:	c3                   	ret    
get_next_dest_reference_1:                                                                          ; access size: DWORDS
   439f4:	fa                   	cli                                                                 ; fixup: num: 11121, src obj: 1, src ofs: 0x439f4, dst obj: 1, dst ofs: 0x43ffa
   439f5:	3f                   	aas    
   439f6:	04 00                	add    al,0x0
   439f8:	96                   	xchg   esi,eax                                                      ; fixup: num: 11120, src obj: 1, src ofs: 0x439f8, dst obj: 1, dst ofs: 0x43f96
   439f9:	3f                   	aas    
   439fa:	04 00                	add    al,0x0
   439fc:	32 3f                	xor    bh,BYTE PTR [edi]                                            ; fixup: num: 11119, src obj: 1, src ofs: 0x439fc, dst obj: 1, dst ofs: 0x43f32
   439fe:	04 00                	add    al,0x0
   43a00:	58                   	pop    eax                                                          ; fixup: num: 11118, src obj: 1, src ofs: 0x43a00, dst obj: 1, dst ofs: 0x44058
   43a01:	40                   	inc    eax
   43a02:	04 00                	add    al,0x0
   43a04:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   43a0a:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]

;-------------------------------------------------
;  Function 'W?$ct:MONSTER$n(pn$_monster_type$$  -
;  pn(ui)pnv)_'                                  -
;-------------------------------------------------
W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)_:
   43a10:	51                   	push   ecx
   43a11:	56                   	push   esi
   43a12:	57                   	push   edi
   43a13:	55                   	push   ebp
   43a14:	83 ec 04             	sub    esp,0x4
   43a17:	89 c6                	mov    esi,eax
   43a19:	89 d7                	mov    edi,edx
   43a1b:	53                   	push   ebx
   43a1c:	6a 00                	push   0x0
   43a1e:	8b 52 20             	mov    edx,DWORD PTR [edx+0x20]
   43a21:	52                   	push   edx
   43a22:	6a 05                	push   0x5
   43a24:	83 ec 04             	sub    esp,0x4
   43a27:	db 47 08             	fild   DWORD PTR [edi+0x8]
   43a2a:	d9 1c 24             	fstp   DWORD PTR [esp]
   43a2d:	8b 5f 04             	mov    ebx,DWORD PTR [edi+0x4]
   43a30:	8b 0f                	mov    ecx,DWORD PTR [edi]
   43a32:	53                   	push   ebx
   43a33:	8b 57 30             	mov    edx,DWORD PTR [edi+0x30]
   43a36:	8b 5f 34             	mov    ebx,DWORD PTR [edi+0x34]
   43a39:	e8 02 97 ff ff       	call   W?$ct:NON_PLAYER_CHARACTER$n(pnapnaiibiiipn(ui)pnv)_
   43a3e:	c7 80 68 11 00 00 00 00 00 00 	mov    DWORD PTR [eax+0x1168],0x0
   43a48:	c7 80 34 11 00 00 00 00 00 00 	mov    DWORD PTR [eax+0x1134],0x0
   43a52:	c7 80 38 11 00 00 00 00 00 00 	mov    DWORD PTR [eax+0x1138],0x0
   43a5c:	8b 50 30             	mov    edx,DWORD PTR [eax+0x30]
   43a5f:	8b 48 40             	mov    ecx,DWORD PTR [eax+0x40]
   43a62:	c7 40 38 06 00 00 00 	mov    DWORD PTR [eax+0x38],0x6
   43a69:	29 d1                	sub    ecx,edx
   43a6b:	89 48 40             	mov    DWORD PTR [eax+0x40],ecx
   43a6e:	8b 57 0c             	mov    edx,DWORD PTR [edi+0xc]
   43a71:	89 90 2c 11 00 00    	mov    DWORD PTR [eax+0x112c],edx
   43a77:	8b 57 18             	mov    edx,DWORD PTR [edi+0x18]
   43a7a:	89 90 80 11 00 00    	mov    DWORD PTR [eax+0x1180],edx
   43a80:	8a 97 80 00 00 00    	mov    dl,BYTE PTR [edi+0x80]
   43a86:	c7 80 9c 11 00 00 0f 27 00 00 	mov    DWORD PTR [eax+0x119c],0x270f
   43a90:	88 50 52             	mov    BYTE PTR [eax+0x52],dl
   43a93:	8b 97 88 00 00 00    	mov    edx,DWORD PTR [edi+0x88]
   43a99:	89 15 08 3c 01 00    	mov    DWORD PTR ds:@obj3:move_min_x,edx                            ; fixup: num: 11123, src obj: 1, src ofs: 0x43a9b, dst obj: 3, dst ofs: 0x13c08
   43a9f:	8b 97 8c 00 00 00    	mov    edx,DWORD PTR [edi+0x8c]
   43aa5:	89 15 0c 3c 01 00    	mov    DWORD PTR ds:@obj3:move_max_x,edx                            ; fixup: num: 11122, src obj: 1, src ofs: 0x43aa7, dst obj: 3, dst ofs: 0x13c0c
   43aab:	8b 57 20             	mov    edx,DWORD PTR [edi+0x20]
   43aae:	89 90 8c 11 00 00    	mov    DWORD PTR [eax+0x118c],edx
   43ab4:	8b 50 5c             	mov    edx,DWORD PTR [eax+0x5c]
   43ab7:	89 c6                	mov    esi,eax
   43ab9:	8b 6a 11             	mov    ebp,DWORD PTR [edx+0x11]
   43abc:	83 c2 08             	add    edx,0x8
   43abf:	83 fd 01             	cmp    ebp,0x1
   43ac2:	76 07                	jbe    W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_1
   43ac4:	80 88 8c 11 00 00 08 	or     BYTE PTR [eax+0x118c],0x8
W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_1:
   43acb:	8b 86 98 00 00 00    	mov    eax,DWORD PTR [esi+0x98]
   43ad1:	8b 50 11             	mov    edx,DWORD PTR [eax+0x11]
   43ad4:	83 c0 08             	add    eax,0x8
   43ad7:	83 fa 01             	cmp    edx,0x1
   43ada:	76 07                	jbe    W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_2
   43adc:	80 8e 8c 11 00 00 10 	or     BYTE PTR [esi+0x118c],0x10
W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_2:
   43ae3:	8b 86 d4 00 00 00    	mov    eax,DWORD PTR [esi+0xd4]
   43ae9:	8b 58 11             	mov    ebx,DWORD PTR [eax+0x11]
   43aec:	83 c0 08             	add    eax,0x8
   43aef:	83 fb 01             	cmp    ebx,0x1
   43af2:	76 07                	jbe    W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_3
   43af4:	80 8e 8c 11 00 00 20 	or     BYTE PTR [esi+0x118c],0x20
W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_3:
   43afb:	8b 86 10 01 00 00    	mov    eax,DWORD PTR [esi+0x110]
   43b01:	8b 48 11             	mov    ecx,DWORD PTR [eax+0x11]
   43b04:	83 c0 08             	add    eax,0x8
   43b07:	83 f9 01             	cmp    ecx,0x1
   43b0a:	76 07                	jbe    W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_4
   43b0c:	80 8e 8c 11 00 00 40 	or     BYTE PTR [esi+0x118c],0x40
W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_4:
   43b13:	8b 86 84 00 00 00    	mov    eax,DWORD PTR [esi+0x84]
   43b19:	8b 68 11             	mov    ebp,DWORD PTR [eax+0x11]
   43b1c:	83 c0 08             	add    eax,0x8
   43b1f:	83 fd 01             	cmp    ebp,0x1
   43b22:	76 07                	jbe    W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_5
   43b24:	80 8e 8c 11 00 00 80 	or     BYTE PTR [esi+0x118c],0x80
W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_5:
   43b2b:	8b 86 c0 00 00 00    	mov    eax,DWORD PTR [esi+0xc0]
   43b31:	8b 50 11             	mov    edx,DWORD PTR [eax+0x11]
   43b34:	83 c0 08             	add    eax,0x8
   43b37:	83 fa 01             	cmp    edx,0x1
   43b3a:	76 07                	jbe    W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_6
   43b3c:	80 8e 8d 11 00 00 01 	or     BYTE PTR [esi+0x118d],0x1
W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_6:
   43b43:	8b 86 fc 00 00 00    	mov    eax,DWORD PTR [esi+0xfc]
   43b49:	8b 58 11             	mov    ebx,DWORD PTR [eax+0x11]
   43b4c:	83 c0 08             	add    eax,0x8
   43b4f:	83 fb 01             	cmp    ebx,0x1
   43b52:	76 07                	jbe    W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_7
   43b54:	80 8e 8d 11 00 00 02 	or     BYTE PTR [esi+0x118d],0x2
W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_7:
   43b5b:	8b 86 38 01 00 00    	mov    eax,DWORD PTR [esi+0x138]
   43b61:	8b 48 11             	mov    ecx,DWORD PTR [eax+0x11]
   43b64:	83 c0 08             	add    eax,0x8
   43b67:	83 f9 01             	cmp    ecx,0x1
   43b6a:	76 07                	jbe    W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_8
   43b6c:	80 8e 8d 11 00 00 04 	or     BYTE PTR [esi+0x118d],0x4
W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_8:
   43b73:	8b 86 ec 01 00 00    	mov    eax,DWORD PTR [esi+0x1ec]
   43b79:	8b 68 11             	mov    ebp,DWORD PTR [eax+0x11]
   43b7c:	83 c0 08             	add    eax,0x8
   43b7f:	83 fd 01             	cmp    ebp,0x1
   43b82:	77 11                	ja     W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_9
   43b84:	8b 86 64 02 00 00    	mov    eax,DWORD PTR [esi+0x264]
   43b8a:	8b 50 11             	mov    edx,DWORD PTR [eax+0x11]
   43b8d:	83 c0 08             	add    eax,0x8
   43b90:	83 fa 01             	cmp    edx,0x1
   43b93:	76 07                	jbe    W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_10
W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_9:
   43b95:	80 8e 8d 11 00 00 08 	or     BYTE PTR [esi+0x118d],0x8
W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_10:
   43b9c:	8b 86 c4 01 00 00    	mov    eax,DWORD PTR [esi+0x1c4]
   43ba2:	8b 58 11             	mov    ebx,DWORD PTR [eax+0x11]
   43ba5:	83 c0 08             	add    eax,0x8
   43ba8:	83 fb 01             	cmp    ebx,0x1
   43bab:	77 11                	ja     W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_11
   43bad:	8b 86 3c 02 00 00    	mov    eax,DWORD PTR [esi+0x23c]
   43bb3:	8b 48 11             	mov    ecx,DWORD PTR [eax+0x11]
   43bb6:	83 c0 08             	add    eax,0x8
   43bb9:	83 f9 01             	cmp    ecx,0x1
   43bbc:	76 07                	jbe    W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_12
W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_11:
   43bbe:	80 8e 8d 11 00 00 10 	or     BYTE PTR [esi+0x118d],0x10
W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_12:
   43bc5:	8b 86 9c 01 00 00    	mov    eax,DWORD PTR [esi+0x19c]
   43bcb:	8b 68 11             	mov    ebp,DWORD PTR [eax+0x11]
   43bce:	83 c0 08             	add    eax,0x8
   43bd1:	83 fd 01             	cmp    ebp,0x1
   43bd4:	77 11                	ja     W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_13
   43bd6:	8b 86 14 02 00 00    	mov    eax,DWORD PTR [esi+0x214]
   43bdc:	8b 50 11             	mov    edx,DWORD PTR [eax+0x11]
   43bdf:	83 c0 08             	add    eax,0x8
   43be2:	83 fa 01             	cmp    edx,0x1
   43be5:	76 07                	jbe    W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_14
W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_13:
   43be7:	80 8e 8d 11 00 00 20 	or     BYTE PTR [esi+0x118d],0x20
W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_14:
   43bee:	8b 86 c8 02 00 00    	mov    eax,DWORD PTR [esi+0x2c8]
   43bf4:	8b 58 11             	mov    ebx,DWORD PTR [eax+0x11]
   43bf7:	83 c0 08             	add    eax,0x8
   43bfa:	83 fb 01             	cmp    ebx,0x1
   43bfd:	77 11                	ja     W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_15
   43bff:	8b 86 a4 02 00 00    	mov    eax,DWORD PTR [esi+0x2a4]
   43c05:	8b 48 11             	mov    ecx,DWORD PTR [eax+0x11]
   43c08:	83 c0 08             	add    eax,0x8
   43c0b:	83 f9 01             	cmp    ecx,0x1
   43c0e:	76 07                	jbe    W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_16
W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_15:
   43c10:	80 8e 8d 11 00 00 40 	or     BYTE PTR [esi+0x118d],0x40
W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_16:
   43c17:	8b 86 bc 02 00 00    	mov    eax,DWORD PTR [esi+0x2bc]
   43c1d:	8b 68 11             	mov    ebp,DWORD PTR [eax+0x11]
   43c20:	83 c0 08             	add    eax,0x8
   43c23:	83 fd 01             	cmp    ebp,0x1
   43c26:	77 11                	ja     W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_17
   43c28:	8b 86 98 02 00 00    	mov    eax,DWORD PTR [esi+0x298]
   43c2e:	8b 50 11             	mov    edx,DWORD PTR [eax+0x11]
   43c31:	83 c0 08             	add    eax,0x8
   43c34:	83 fa 01             	cmp    edx,0x1
   43c37:	76 07                	jbe    W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_18
W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_17:
   43c39:	80 8e 8d 11 00 00 80 	or     BYTE PTR [esi+0x118d],0x80
W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_18:
   43c40:	8b 86 b0 02 00 00    	mov    eax,DWORD PTR [esi+0x2b0]
   43c46:	8b 58 11             	mov    ebx,DWORD PTR [eax+0x11]
   43c49:	83 c0 08             	add    eax,0x8
   43c4c:	83 fb 01             	cmp    ebx,0x1
   43c4f:	77 11                	ja     W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_19
   43c51:	8b 86 8c 02 00 00    	mov    eax,DWORD PTR [esi+0x28c]
   43c57:	8b 48 11             	mov    ecx,DWORD PTR [eax+0x11]
   43c5a:	83 c0 08             	add    eax,0x8
   43c5d:	83 f9 01             	cmp    ecx,0x1
   43c60:	76 07                	jbe    W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_20
W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_19:
   43c62:	80 8e 8e 11 00 00 01 	or     BYTE PTR [esi+0x118e],0x1
W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_20:
   43c69:	8b 86 1c 03 00 00    	mov    eax,DWORD PTR [esi+0x31c]
   43c6f:	8b 68 11             	mov    ebp,DWORD PTR [eax+0x11]
   43c72:	83 c0 08             	add    eax,0x8
   43c75:	83 fd 01             	cmp    ebp,0x1
   43c78:	76 07                	jbe    W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_21
   43c7a:	80 8e 8e 11 00 00 02 	or     BYTE PTR [esi+0x118e],0x2
W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_21:
   43c81:	8b 86 5c 04 00 00    	mov    eax,DWORD PTR [esi+0x45c]
   43c87:	8b 50 11             	mov    edx,DWORD PTR [eax+0x11]
   43c8a:	83 c0 08             	add    eax,0x8
   43c8d:	83 fa 01             	cmp    edx,0x1
   43c90:	76 07                	jbe    W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_22
   43c92:	80 8e 8e 11 00 00 04 	or     BYTE PTR [esi+0x118e],0x4
W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_22:
   43c99:	8b 86 ac 04 00 00    	mov    eax,DWORD PTR [esi+0x4ac]
   43c9f:	8b 58 11             	mov    ebx,DWORD PTR [eax+0x11]
   43ca2:	83 c0 08             	add    eax,0x8
   43ca5:	83 fb 01             	cmp    ebx,0x1
   43ca8:	76 07                	jbe    W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_23
   43caa:	80 8e 8e 11 00 00 08 	or     BYTE PTR [esi+0x118e],0x8
W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_23:
   43cb1:	8b 86 94 00 00 00    	mov    eax,DWORD PTR [esi+0x94]
   43cb7:	8b 48 11             	mov    ecx,DWORD PTR [eax+0x11]
   43cba:	83 c0 08             	add    eax,0x8
   43cbd:	83 f9 01             	cmp    ecx,0x1
   43cc0:	76 07                	jbe    W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_24
   43cc2:	80 8e 8e 11 00 00 10 	or     BYTE PTR [esi+0x118e],0x10
W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_24:
   43cc9:	8b 86 0c 01 00 00    	mov    eax,DWORD PTR [esi+0x10c]
   43ccf:	8b 68 11             	mov    ebp,DWORD PTR [eax+0x11]
   43cd2:	83 c0 08             	add    eax,0x8
   43cd5:	83 fd 01             	cmp    ebp,0x1
   43cd8:	76 07                	jbe    W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_25
   43cda:	80 8e 8e 11 00 00 20 	or     BYTE PTR [esi+0x118e],0x20
W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_25:
   43ce1:	8b 86 48 01 00 00    	mov    eax,DWORD PTR [esi+0x148]
   43ce7:	8b 50 11             	mov    edx,DWORD PTR [eax+0x11]
   43cea:	83 c0 08             	add    eax,0x8
   43ced:	83 fa 01             	cmp    edx,0x1
   43cf0:	76 07                	jbe    W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_26
   43cf2:	80 8e 8e 11 00 00 40 	or     BYTE PTR [esi+0x118e],0x40
W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_26:
   43cf9:	8b 86 fc 00 00 00    	mov    eax,DWORD PTR [esi+0xfc]
   43cff:	8b 58 11             	mov    ebx,DWORD PTR [eax+0x11]
   43d02:	83 c0 08             	add    eax,0x8
   43d05:	83 fb 01             	cmp    ebx,0x1
   43d08:	76 07                	jbe    W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_27
   43d0a:	80 8e 8e 11 00 00 80 	or     BYTE PTR [esi+0x118e],0x80
W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_27:
   43d11:	80 bf 84 00 00 00 00 	cmp    BYTE PTR [edi+0x84],0x0
   43d18:	74 41                	je     W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_28
   43d1a:	80 bf 81 00 00 00 00 	cmp    BYTE PTR [edi+0x81],0x0
   43d21:	0f 84 89 03 00 00    	je     W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_51
   43d27:	c6 86 a0 11 00 00 38 	mov    BYTE PTR [esi+0x11a0],0x38
   43d2e:	8a 86 a0 11 00 00    	mov    al,BYTE PTR [esi+0x11a0]
   43d34:	88 86 a1 11 00 00    	mov    BYTE PTR [esi+0x11a1],al
   43d3a:	8b 47 28             	mov    eax,DWORD PTR [edi+0x28]
   43d3d:	89 86 78 10 00 00    	mov    DWORD PTR [esi+0x1078],eax
   43d43:	89 c2                	mov    edx,eax
   43d45:	89 86 6c 10 00 00    	mov    DWORD PTR [esi+0x106c],eax
   43d4b:	89 f0                	mov    eax,esi
   43d4d:	e8 4e 8b ff ff       	call   go_to_frame_mod_76
   43d52:	c6 46 52 00          	mov    BYTE PTR [esi+0x52],0x0
   43d56:	e9 55 03 00 00       	jmp    W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_51
W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_28:
   43d5b:	c7 86 3c 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x113c],0x2
   43d65:	8b 47 14             	mov    eax,DWORD PTR [edi+0x14]
   43d68:	89 86 84 11 00 00    	mov    DWORD PTR [esi+0x1184],eax
   43d6e:	83 7f 4c 00          	cmp    DWORD PTR [edi+0x4c],0x0
   43d72:	74 29                	je     W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_30
   43d74:	b8 88 00 00 00       	mov    eax,0x88
   43d79:	e8 9a e1 02 00       	call   W?$nwn(ui)pnv
   43d7e:	85 c0                	test   eax,eax
   43d80:	74 08                	je     W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_29
   43d82:	8b 57 4c             	mov    edx,DWORD PTR [edi+0x4c]
   43d85:	e8 e6 46 fc ff       	call   W?$ct:SOUND$n(pna)_
W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_29:
   43d8a:	8b ae 34 11 00 00    	mov    ebp,DWORD PTR [esi+0x1134]
   43d90:	89 86 48 11 00 00    	mov    DWORD PTR [esi+0x1148],eax
   43d96:	45                   	inc    ebp
   43d97:	89 ae 34 11 00 00    	mov    DWORD PTR [esi+0x1134],ebp
W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_30:
   43d9d:	83 7f 50 00          	cmp    DWORD PTR [edi+0x50],0x0
   43da1:	74 29                	je     W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_32
   43da3:	b8 88 00 00 00       	mov    eax,0x88
   43da8:	e8 6b e1 02 00       	call   W?$nwn(ui)pnv
   43dad:	85 c0                	test   eax,eax
   43daf:	74 08                	je     W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_31
   43db1:	8b 57 50             	mov    edx,DWORD PTR [edi+0x50]
   43db4:	e8 b7 46 fc ff       	call   W?$ct:SOUND$n(pna)_
W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_31:
   43db9:	8b 96 34 11 00 00    	mov    edx,DWORD PTR [esi+0x1134]
   43dbf:	89 86 4c 11 00 00    	mov    DWORD PTR [esi+0x114c],eax
   43dc5:	42                   	inc    edx
   43dc6:	89 96 34 11 00 00    	mov    DWORD PTR [esi+0x1134],edx
W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_32:
   43dcc:	83 7f 54 00          	cmp    DWORD PTR [edi+0x54],0x0
   43dd0:	74 29                	je     W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_34
   43dd2:	b8 88 00 00 00       	mov    eax,0x88
   43dd7:	e8 3c e1 02 00       	call   W?$nwn(ui)pnv
   43ddc:	85 c0                	test   eax,eax
   43dde:	74 08                	je     W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_33
   43de0:	8b 57 54             	mov    edx,DWORD PTR [edi+0x54]
   43de3:	e8 88 46 fc ff       	call   W?$ct:SOUND$n(pna)_
W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_33:
   43de8:	8b 8e 34 11 00 00    	mov    ecx,DWORD PTR [esi+0x1134]
   43dee:	89 86 50 11 00 00    	mov    DWORD PTR [esi+0x1150],eax
   43df4:	41                   	inc    ecx
   43df5:	89 8e 34 11 00 00    	mov    DWORD PTR [esi+0x1134],ecx
W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_34:
   43dfb:	8b 47 70             	mov    eax,DWORD PTR [edi+0x70]
   43dfe:	89 86 6c 11 00 00    	mov    DWORD PTR [esi+0x116c],eax
   43e04:	83 7f 58 00          	cmp    DWORD PTR [edi+0x58],0x0
   43e08:	74 22                	je     W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_36
   43e0a:	b8 88 00 00 00       	mov    eax,0x88
   43e0f:	e8 04 e1 02 00       	call   W?$nwn(ui)pnv
   43e14:	85 c0                	test   eax,eax
   43e16:	74 08                	je     W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_35
   43e18:	8b 57 58             	mov    edx,DWORD PTR [edi+0x58]
   43e1b:	e8 50 46 fc ff       	call   W?$ct:SOUND$n(pna)_
W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_35:
   43e20:	89 86 54 11 00 00    	mov    DWORD PTR [esi+0x1154],eax
   43e26:	ff 86 38 11 00 00    	inc    DWORD PTR [esi+0x1138]
W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_36:
   43e2c:	83 7f 5c 00          	cmp    DWORD PTR [edi+0x5c],0x0
   43e30:	74 29                	je     W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_38
   43e32:	b8 88 00 00 00       	mov    eax,0x88
   43e37:	e8 dc e0 02 00       	call   W?$nwn(ui)pnv
   43e3c:	85 c0                	test   eax,eax
   43e3e:	74 08                	je     W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_37
   43e40:	8b 57 5c             	mov    edx,DWORD PTR [edi+0x5c]
   43e43:	e8 28 46 fc ff       	call   W?$ct:SOUND$n(pna)_
W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_37:
   43e48:	8b 9e 38 11 00 00    	mov    ebx,DWORD PTR [esi+0x1138]
   43e4e:	89 86 58 11 00 00    	mov    DWORD PTR [esi+0x1158],eax
   43e54:	43                   	inc    ebx
   43e55:	89 9e 38 11 00 00    	mov    DWORD PTR [esi+0x1138],ebx
W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_38:
   43e5b:	83 7f 60 00          	cmp    DWORD PTR [edi+0x60],0x0
   43e5f:	74 29                	je     W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_40
   43e61:	b8 88 00 00 00       	mov    eax,0x88
   43e66:	e8 ad e0 02 00       	call   W?$nwn(ui)pnv
   43e6b:	85 c0                	test   eax,eax
   43e6d:	74 08                	je     W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_39
   43e6f:	8b 57 60             	mov    edx,DWORD PTR [edi+0x60]
   43e72:	e8 f9 45 fc ff       	call   W?$ct:SOUND$n(pna)_
W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_39:
   43e77:	8b ae 38 11 00 00    	mov    ebp,DWORD PTR [esi+0x1138]
   43e7d:	89 86 5c 11 00 00    	mov    DWORD PTR [esi+0x115c],eax
   43e83:	45                   	inc    ebp
   43e84:	89 ae 38 11 00 00    	mov    DWORD PTR [esi+0x1138],ebp
W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_40:
   43e8a:	8b 47 74             	mov    eax,DWORD PTR [edi+0x74]
   43e8d:	89 86 70 11 00 00    	mov    DWORD PTR [esi+0x1170],eax
   43e93:	83 7f 64 00          	cmp    DWORD PTR [edi+0x64],0x0
   43e97:	74 1c                	je     W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_42
   43e99:	b8 88 00 00 00       	mov    eax,0x88
   43e9e:	e8 75 e0 02 00       	call   W?$nwn(ui)pnv
   43ea3:	85 c0                	test   eax,eax
   43ea5:	74 08                	je     W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_41
   43ea7:	8b 57 64             	mov    edx,DWORD PTR [edi+0x64]
   43eaa:	e8 c1 45 fc ff       	call   W?$ct:SOUND$n(pna)_
W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_41:
   43eaf:	89 86 60 11 00 00    	mov    DWORD PTR [esi+0x1160],eax
W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_42:
   43eb5:	83 7f 68 00          	cmp    DWORD PTR [edi+0x68],0x0
   43eb9:	74 1c                	je     W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_44
   43ebb:	b8 88 00 00 00       	mov    eax,0x88
   43ec0:	e8 53 e0 02 00       	call   W?$nwn(ui)pnv
   43ec5:	85 c0                	test   eax,eax
   43ec7:	74 08                	je     W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_43
   43ec9:	8b 57 68             	mov    edx,DWORD PTR [edi+0x68]
   43ecc:	e8 9f 45 fc ff       	call   W?$ct:SOUND$n(pna)_
W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_43:
   43ed1:	89 86 64 11 00 00    	mov    DWORD PTR [esi+0x1164],eax
W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_44:
   43ed7:	8b 47 78             	mov    eax,DWORD PTR [edi+0x78]
   43eda:	89 86 74 11 00 00    	mov    DWORD PTR [esi+0x1174],eax
   43ee0:	83 7f 6c 00          	cmp    DWORD PTR [edi+0x6c],0x0
   43ee4:	0f 84 1c 00 00 00    	je     W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_46
   43eea:	b8 88 00 00 00       	mov    eax,0x88
   43eef:	e8 24 e0 02 00       	call   W?$nwn(ui)pnv
   43ef4:	85 c0                	test   eax,eax
   43ef6:	74 08                	je     W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_45
   43ef8:	8b 57 6c             	mov    edx,DWORD PTR [edi+0x6c]
   43efb:	e8 70 45 fc ff       	call   W?$ct:SOUND$n(pna)_
W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_45:
   43f00:	89 86 68 11 00 00    	mov    DWORD PTR [esi+0x1168],eax
W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_46:
   43f06:	8b 47 7c             	mov    eax,DWORD PTR [edi+0x7c]
   43f09:	89 86 78 11 00 00    	mov    DWORD PTR [esi+0x1178],eax
   43f0f:	8a 47 24             	mov    al,BYTE PTR [edi+0x24]
   43f12:	88 86 a0 11 00 00    	mov    BYTE PTR [esi+0x11a0],al
   43f18:	88 86 a1 11 00 00    	mov    BYTE PTR [esi+0x11a1],al
   43f1e:	8b 47 24             	mov    eax,DWORD PTR [edi+0x24]
   43f21:	83 f8 03             	cmp    eax,0x3
   43f24:	0f 87 86 01 00 00    	ja     W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_51
   43f2a:	2e ff 24 85 f4 39 04 00 	jmp    DWORD PTR cs:[eax*4+@obj1:get_next_dest_reference_1]      ; fixup: num: 11124, src obj: 1, src ofs: 0x43f2e, dst obj: 1, dst ofs: 0x439f4
W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__reference_1:
   43f32:	f6 86 8e 11 00 00 20 	test   BYTE PTR [esi+0x118e],0x20
   43f39:	74 27                	je     W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_47
   43f3b:	ba 2c 00 00 00       	mov    edx,0x2c
   43f40:	89 f0                	mov    eax,esi
   43f42:	e8 59 89 ff ff       	call   go_to_frame_mod_76
   43f47:	c7 86 78 10 00 00 2c 00 00 00 	mov    DWORD PTR [esi+0x1078],0x2c
   43f51:	8b 86 78 10 00 00    	mov    eax,DWORD PTR [esi+0x1078]
   43f57:	89 86 6c 10 00 00    	mov    DWORD PTR [esi+0x106c],eax
   43f5d:	e9 4e 01 00 00       	jmp    W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_51
W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_47:
   43f62:	f6 86 8c 11 00 00 40 	test   BYTE PTR [esi+0x118c],0x40
   43f69:	0f 84 41 01 00 00    	je     W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_51
   43f6f:	ba 2d 00 00 00       	mov    edx,0x2d
   43f74:	89 f0                	mov    eax,esi
   43f76:	e8 25 89 ff ff       	call   go_to_frame_mod_76
   43f7b:	c7 86 78 10 00 00 2d 00 00 00 	mov    DWORD PTR [esi+0x1078],0x2d
   43f85:	8b 86 78 10 00 00    	mov    eax,DWORD PTR [esi+0x1078]
   43f8b:	89 86 6c 10 00 00    	mov    DWORD PTR [esi+0x106c],eax
   43f91:	e9 1a 01 00 00       	jmp    W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_51
W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__reference_2:
   43f96:	f6 86 8e 11 00 00 10 	test   BYTE PTR [esi+0x118e],0x10
   43f9d:	74 27                	je     W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_48
   43f9f:	ba 0e 00 00 00       	mov    edx,0xe
   43fa4:	89 f0                	mov    eax,esi
   43fa6:	e8 f5 88 ff ff       	call   go_to_frame_mod_76
   43fab:	c7 86 78 10 00 00 0e 00 00 00 	mov    DWORD PTR [esi+0x1078],0xe
   43fb5:	8b 86 78 10 00 00    	mov    eax,DWORD PTR [esi+0x1078]
   43fbb:	89 86 6c 10 00 00    	mov    DWORD PTR [esi+0x106c],eax
   43fc1:	e9 ea 00 00 00       	jmp    W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_51
W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_48:
   43fc6:	f6 86 8c 11 00 00 10 	test   BYTE PTR [esi+0x118c],0x10
   43fcd:	0f 84 dd 00 00 00    	je     W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_51
   43fd3:	ba 0f 00 00 00       	mov    edx,0xf
   43fd8:	89 f0                	mov    eax,esi
   43fda:	e8 c1 88 ff ff       	call   go_to_frame_mod_76
   43fdf:	c7 86 78 10 00 00 0f 00 00 00 	mov    DWORD PTR [esi+0x1078],0xf
   43fe9:	8b 86 78 10 00 00    	mov    eax,DWORD PTR [esi+0x1078]
   43fef:	89 86 6c 10 00 00    	mov    DWORD PTR [esi+0x106c],eax
   43ff5:	e9 b6 00 00 00       	jmp    W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_51
W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__reference_3:
   43ffa:	f6 86 8e 11 00 00 40 	test   BYTE PTR [esi+0x118e],0x40
   44001:	74 27                	je     W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_49
   44003:	ba 3b 00 00 00       	mov    edx,0x3b
   44008:	89 f0                	mov    eax,esi
   4400a:	e8 91 88 ff ff       	call   go_to_frame_mod_76
   4400f:	c7 86 78 10 00 00 3b 00 00 00 	mov    DWORD PTR [esi+0x1078],0x3b
   44019:	8b 86 78 10 00 00    	mov    eax,DWORD PTR [esi+0x1078]
   4401f:	89 86 6c 10 00 00    	mov    DWORD PTR [esi+0x106c],eax
   44025:	e9 86 00 00 00       	jmp    W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_51
W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_49:
   4402a:	f6 86 8c 11 00 00 08 	test   BYTE PTR [esi+0x118c],0x8
   44031:	0f 84 79 00 00 00    	je     W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_51
   44037:	89 f0                	mov    eax,esi
   44039:	31 d2                	xor    edx,edx
   4403b:	e8 60 88 ff ff       	call   go_to_frame_mod_76
   44040:	c7 86 78 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x1078],0x0
   4404a:	8b 86 78 10 00 00    	mov    eax,DWORD PTR [esi+0x1078]
   44050:	89 86 6c 10 00 00    	mov    DWORD PTR [esi+0x106c],eax
   44056:	eb 58                	jmp    W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_51
W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__reference_4:
   44058:	f6 86 8e 11 00 00 80 	test   BYTE PTR [esi+0x118e],0x80
   4405f:	74 24                	je     W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_50
   44061:	ba 28 00 00 00       	mov    edx,0x28
   44066:	89 f0                	mov    eax,esi
   44068:	e8 33 88 ff ff       	call   go_to_frame_mod_76
   4406d:	c7 86 78 10 00 00 28 00 00 00 	mov    DWORD PTR [esi+0x1078],0x28
   44077:	8b 86 78 10 00 00    	mov    eax,DWORD PTR [esi+0x1078]
   4407d:	89 86 6c 10 00 00    	mov    DWORD PTR [esi+0x106c],eax
   44083:	eb 2b                	jmp    W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_51
W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_50:
   44085:	f6 86 8c 11 00 00 20 	test   BYTE PTR [esi+0x118c],0x20
   4408c:	74 22                	je     W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_51
   4408e:	ba 1e 00 00 00       	mov    edx,0x1e
   44093:	89 f0                	mov    eax,esi
   44095:	e8 06 88 ff ff       	call   go_to_frame_mod_76
   4409a:	c7 86 78 10 00 00 1e 00 00 00 	mov    DWORD PTR [esi+0x1078],0x1e
   440a4:	8b 86 78 10 00 00    	mov    eax,DWORD PTR [esi+0x1078]
   440aa:	89 86 6c 10 00 00    	mov    DWORD PTR [esi+0x106c],eax
W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_51:
   440b0:	8b 46 20             	mov    eax,DWORD PTR [esi+0x20]
   440b3:	89 c2                	mov    edx,eax
   440b5:	c1 fa 1f             	sar    edx,0x1f
   440b8:	2b c2                	sub    eax,edx
   440ba:	d1 f8                	sar    eax,1
   440bc:	8b 57 08             	mov    edx,DWORD PTR [edi+0x8]
   440bf:	29 c2                	sub    edx,eax
   440c1:	89 14 24             	mov    DWORD PTR [esp],edx
   440c4:	db 04 24             	fild   DWORD PTR [esp]
   440c7:	83 ec 04             	sub    esp,0x4
   440ca:	d9 1c 24             	fstp   DWORD PTR [esp]
   440cd:	8b 5f 04             	mov    ebx,DWORD PTR [edi+0x4]
   440d0:	8b 4e 28             	mov    ecx,DWORD PTR [esi+0x28]
   440d3:	8b 56 24             	mov    edx,DWORD PTR [esi+0x24]
   440d6:	29 cb                	sub    ebx,ecx
   440d8:	8b 0f                	mov    ecx,DWORD PTR [edi]
   440da:	8b 46 2c             	mov    eax,DWORD PTR [esi+0x2c]
   440dd:	29 d1                	sub    ecx,edx
   440df:	89 c2                	mov    edx,eax
   440e1:	c1 fa 1f             	sar    edx,0x1f
   440e4:	2b c2                	sub    eax,edx
   440e6:	d1 f8                	sar    eax,1
   440e8:	8b 6e 30             	mov    ebp,DWORD PTR [esi+0x30]
   440eb:	89 ca                	mov    edx,ecx
   440ed:	29 eb                	sub    ebx,ebp
   440ef:	29 c2                	sub    edx,eax
   440f1:	89 f0                	mov    eax,esi
   440f3:	e8 f8 75 ff ff       	call   set_xyz
   440f8:	8b 46 3c             	mov    eax,DWORD PTR [esi+0x3c]
   440fb:	8b 5e 24             	mov    ebx,DWORD PTR [esi+0x24]
   440fe:	8b 0d ac 5b 02 00    	mov    ecx,DWORD PTR ds:@obj3:pc_real_x                             ; fixup: num: 11167, src obj: 1, src ofs: 0x44100, dst obj: 3, dst ofs: 0x25bac
   44104:	01 d8                	add    eax,ebx
   44106:	39 c8                	cmp    eax,ecx
   44108:	7e 09                	jle    W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_52
   4410a:	c6 86 a1 11 00 00 07 	mov    BYTE PTR [esi+0x11a1],0x7
   44111:	eb 07                	jmp    W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_53
W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_52:
   44113:	c6 86 a1 11 00 00 0e 	mov    BYTE PTR [esi+0x11a1],0xe
W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_53:
   4411a:	ba 54 a6 00 00       	mov    edx,@obj3:classes_cpp_variable_114                           ; fixup: num: 11166, src obj: 1, src ofs: 0x4411b, dst obj: 3, dst ofs: 0xa654
   4411f:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
   44122:	e8 09 23 03 00       	call   strcmp_
   44127:	85 c0                	test   eax,eax
   44129:	75 0a                	jne    W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_54
   4412b:	c7 86 3c 11 00 00 07 00 00 00 	mov    DWORD PTR [esi+0x113c],0x7
W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)__branch_54:
   44135:	89 f0                	mov    eax,esi
   44137:	83 c4 04             	add    esp,0x4
   4413a:	5d                   	pop    ebp
   4413b:	5f                   	pop    edi
   4413c:	5e                   	pop    esi
   4413d:	59                   	pop    ecx
   4413e:	c3                   	ret    
   4413f:	90                   	nop

;-------------------------------------------------
;  Function 'update_mod_76_3'                    -
;-------------------------------------------------
update_mod_76_3:
   44140:	53                   	push   ebx
   44141:	52                   	push   edx
   44142:	89 c2                	mov    edx,eax
   44144:	80 b8 a0 11 00 00 38 	cmp    BYTE PTR [eax+0x11a0],0x38
   4414b:	74 2d                	je     update_mod_76_3_branch_2
   4414d:	89 d0                	mov    eax,edx
   4414f:	e8 1c f6 ff ff       	call   update_combat
   44154:	80 7a 4e 00          	cmp    BYTE PTR [edx+0x4e],0x0
   44158:	74 14                	je     update_mod_76_3_branch_1
   4415a:	80 7a 52 00          	cmp    BYTE PTR [edx+0x52],0x0
   4415e:	74 0e                	je     update_mod_76_3_branch_1
   44160:	89 d0                	mov    eax,edx
   44162:	e8 e9 95 ff ff       	call   update_mod_76_2
   44167:	84 c0                	test   al,al
   44169:	75 49                	jne    update_mod_76_3_branch_3
   4416b:	5a                   	pop    edx
   4416c:	5b                   	pop    ebx
   4416d:	c3                   	ret    
update_mod_76_3_branch_1:
   4416e:	89 d0                	mov    eax,edx
   44170:	e8 6b 89 ff ff       	call   update_mod_76
   44175:	b0 01                	mov    al,0x1
   44177:	5a                   	pop    edx
   44178:	5b                   	pop    ebx
   44179:	c3                   	ret    
update_mod_76_3_branch_2:
   4417a:	c7 82 88 10 00 00 00 00 00 00 	mov    DWORD PTR [edx+0x1088],0x0
   44184:	30 db                	xor    bl,bl
   44186:	8b 82 88 10 00 00    	mov    eax,DWORD PTR [edx+0x1088]
   4418c:	88 1d 9c 60 02 00    	mov    BYTE PTR ds:@obj3:combat_mode,bl                             ; fixup: num: 11172, src obj: 1, src ofs: 0x4418e, dst obj: 3, dst ofs: 0x2609c
   44192:	89 82 b0 11 00 00    	mov    DWORD PTR [edx+0x11b0],eax
   44198:	bb 75 02 00 00       	mov    ebx,0x275
   4419d:	89 82 ac 11 00 00    	mov    DWORD PTR [edx+0x11ac],eax
   441a3:	ba 0a 00 00 00       	mov    edx,0xa
   441a8:	89 1d 0c 3c 01 00    	mov    DWORD PTR ds:@obj3:move_max_x,ebx                            ; fixup: num: 11171, src obj: 1, src ofs: 0x441aa, dst obj: 3, dst ofs: 0x13c0c
   441ae:	89 15 08 3c 01 00    	mov    DWORD PTR ds:@obj3:move_min_x,edx                            ; fixup: num: 11170, src obj: 1, src ofs: 0x441b0, dst obj: 3, dst ofs: 0x13c08
update_mod_76_3_branch_3:
   441b4:	b0 01                	mov    al,0x1
   441b6:	5a                   	pop    edx
   441b7:	5b                   	pop    ebx
   441b8:	c3                   	ret    
   441b9:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   441bf:	90                   	nop

;-------------------------------------------------
;  Function 'W?$dt:MONSTER$n()_'                 -
;-------------------------------------------------
W?$dt:MONSTER$n()_:
   441c0:	ba 01 00 00 00       	mov    edx,0x1
   441c5:	e9 66 0e 00 00       	jmp    W?$dt:NON_PLAYER_CHARACTER$n()_
   441ca:	8b c0                	mov    eax,eax
W?$dt:MONSTER$n()__reference_1:                                                                     ; access size: DWORDS
   441cc:	1f                   	pop    ds                                                           ; fixup: num: 11169, src obj: 1, src ofs: 0x441cc, dst obj: 1, dst ofs: 0x4441f
   441cd:	44                   	inc    esp
   441ce:	04 00                	add    al,0x0
   441d0:	b7 44                	mov    bh,0x44                                                      ; fixup: num: 11168, src obj: 1, src ofs: 0x441d0, dst obj: 1, dst ofs: 0x444b7
   441d2:	04 00                	add    al,0x0
   441d4:	47                   	inc    edi                                                          ; fixup: num: 11196, src obj: 1, src ofs: 0x441d4, dst obj: 1, dst ofs: 0x44547
   441d5:	45                   	inc    ebp
   441d6:	04 00                	add    al,0x0
   441d8:	b9 45 04 00 2b       	mov    ecx,0x2b000445                                               ; fixup: num: 11195, src obj: 1, src ofs: 0x441d8, dst obj: 1, dst ofs: 0x445b9; fixup: num: 11194, src obj: 1, src ofs: 0x441dc, dst obj: 1, dst ofs: 0x4462b
   441dd:	46                   	inc    esi
   441de:	04 00                	add    al,0x0
   441e0:	9d                   	popf                                                                ; fixup: num: 11193, src obj: 1, src ofs: 0x441e0, dst obj: 1, dst ofs: 0x4469d
   441e1:	46                   	inc    esi
   441e2:	04 00                	add    al,0x0
   441e4:	0f 47 04 00          	cmova  eax,DWORD PTR [eax+eax*1]                                    ; fixup: num: 11192, src obj: 1, src ofs: 0x441e4, dst obj: 1, dst ofs: 0x4470f
   441e8:	9f                   	lahf                                                                ; fixup: num: 11191, src obj: 1, src ofs: 0x441e8, dst obj: 1, dst ofs: 0x4479f
   441e9:	47                   	inc    edi
   441ea:	04 00                	add    al,0x0
   441ec:	2f                   	das                                                                 ; fixup: num: 11190, src obj: 1, src ofs: 0x441ec, dst obj: 1, dst ofs: 0x4482f
   441ed:	48                   	dec    eax
   441ee:	04 00                	add    al,0x0
   441f0:	bf 48 04 00 4f       	mov    edi,0x4f000448                                               ; fixup: num: 11189, src obj: 1, src ofs: 0x441f0, dst obj: 1, dst ofs: 0x448bf; fixup: num: 11188, src obj: 1, src ofs: 0x441f4, dst obj: 1, dst ofs: 0x4494f
   441f5:	49                   	dec    ecx
   441f6:	04 00                	add    al,0x0
   441f8:	dd 49 04             	fisttp QWORD PTR [ecx+0x4]                                          ; fixup: num: 11187, src obj: 1, src ofs: 0x441f8, dst obj: 1, dst ofs: 0x449dd
   441fb:	00 6b 4a             	add    BYTE PTR [ebx+0x4a],ch                                       ; fixup: num: 11186, src obj: 1, src ofs: 0x441fc, dst obj: 1, dst ofs: 0x44a6b
   441fe:	04 00                	add    al,0x0
   44200:	f7 4a 04 00 8d 4b 04 	test   DWORD PTR [edx+0x4],@obj1:W?$ct:PLAYER_CHARACTER$n(iiib)__reference_1500; fixup: num: 11185, src obj: 1, src ofs: 0x44200, dst obj: 1, dst ofs: 0x44af7; fixup: num: 11184, src obj: 1, src ofs: 0x44204, dst obj: 1, dst ofs: 0x44b8d
   44207:	00 05 4c 04 00 91    	add    BYTE PTR ds:0x9100044c,al                                    ; fixup: num: 11183, src obj: 1, src ofs: 0x44208, dst obj: 1, dst ofs: 0x44c05; fixup: num: 11182, src obj: 1, src ofs: 0x4420c, dst obj: 1, dst ofs: 0x44c91
   4420d:	4c                   	dec    esp
   4420e:	04 00                	add    al,0x0
   44210:	1b 4d 04             	sbb    ecx,DWORD PTR [ebp+0x4]                                      ; fixup: num: 11181, src obj: 1, src ofs: 0x44210, dst obj: 1, dst ofs: 0x44d1b
   44213:	00 a7 4d 04 00 31    	add    BYTE PTR [edi+0x3100044d],ah                                 ; fixup: num: 11180, src obj: 1, src ofs: 0x44214, dst obj: 1, dst ofs: 0x44da7; fixup: num: 11179, src obj: 1, src ofs: 0x44218, dst obj: 1, dst ofs: 0x44e31
   44219:	4e                   	dec    esi
   4421a:	04 00                	add    al,0x0
   4421c:	bd 4e 04 00        	mov    ebp,0x5600044e                                                 ; fixup: num: 11178, src obj: 1, src ofs: 0x4421c, dst obj: 1, dst ofs: 0x44ebd

;-------------------------------------------------
;  Function 'W?$ct:PLAYER_CHARACTER$n(iiib)_'    -
;-------------------------------------------------
W?$ct:PLAYER_CHARACTER$n(iiib)_:
   44220:	56                   	push   esi
   44221:	57                   	push   edi
   44222:	55                   	push   ebp
   44223:	89 c6                	mov    esi,eax
   44225:	89 d7                	mov    edi,edx
   44227:	68 93 14 07 00       	push   @obj1:_nmalloc_                                              ; aliases: _nmalloc_, malloc_; fixup: num: 11177, src obj: 1, src ofs: 0x44228, dst obj: 1, dst ofs: 0x71493
   4422c:	6a 00                	push   0x0
   4422e:	6a 00                	push   0x0
   44230:	6a 03                	push   0x3
   44232:	ff 74 24 20          	push   DWORD PTR [esp+0x20]
   44236:	8b 14 95 b4 3e 01 00 	mov    edx,DWORD PTR [edx*4+@obj3:pc_list]                          ; fixup: num: 11176, src obj: 1, src ofs: 0x44239, dst obj: 3, dst ofs: 0x13eb4
   4423d:	51                   	push   ecx
   4423e:	89 d9                	mov    ecx,ebx
   44240:	bb de a7 00 00       	mov    ebx,@obj3:classes_cpp_variable_143                           ; fixup: num: 11175, src obj: 1, src ofs: 0x44241, dst obj: 3, dst ofs: 0xa7de
   44245:	e8 f6 8e ff ff       	call   W?$ct:NON_PLAYER_CHARACTER$n(pnapnaiibiiipn(ui)pnv)_
   4424a:	89 c1                	mov    ecx,eax
   4424c:	89 c6                	mov    esi,eax
   4424e:	b8 e1 a7 00 00       	mov    eax,@obj3:classes_cpp_variable_144                           ; fixup: num: 11174, src obj: 1, src ofs: 0x4424f, dst obj: 3, dst ofs: 0xa7e1
   44253:	e8 47 cd 02 00       	call   strdup_                                                      ; aliases: strdup_, _strdup_
   44258:	89 41 14             	mov    DWORD PTR [ecx+0x14],eax
   4425b:	85 c0                	test   eax,eax
   4425d:	75 0f                	jne    W?$ct:PLAYER_CHARACTER$n(iiib)__branch_1
   4425f:	bb f0 a7 00 00       	mov    ebx,@obj3:classes_cpp_variable_145                           ; fixup: num: 11173, src obj: 1, src ofs: 0x44260, dst obj: 3, dst ofs: 0xa7f0
   44264:	ba b4 0f 00 00       	mov    edx,0xfb4
   44269:	e8 c2 3d ff ff       	call   _error_report
W?$ct:PLAYER_CHARACTER$n(iiib)__branch_1:
   4426e:	c7 46 04 00 00 00 00 	mov    DWORD PTR [esi+0x4],0x0
   44275:	c7 46 38 05 00 00 00 	mov    DWORD PTR [esi+0x38],0x5
   4427c:	c7 86 8c 11 00 00 f8 ff ff 00 	mov    DWORD PTR [esi+0x118c],0xfffff8
   44286:	a1 b4 5b 02 00       	mov    eax,ds:@obj3:pc_hit_points                                   ; fixup: num: 11203, src obj: 1, src ofs: 0x44287, dst obj: 3, dst ofs: 0x25bb4
   4428b:	c7 86 34 11 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x1134],0x0
   44295:	89 86 84 11 00 00    	mov    DWORD PTR [esi+0x1184],eax
   4429b:	a1 b8 5b 02 00       	mov    eax,ds:@obj3:pc_tiredness                                    ; fixup: num: 11202, src obj: 1, src ofs: 0x4429c, dst obj: 3, dst ofs: 0x25bb8
   442a0:	89 86 9c 11 00 00    	mov    DWORD PTR [esi+0x119c],eax
   442a6:	b8 88 00 00 00       	mov    eax,0x88
   442ab:	89 be bc 11 00 00    	mov    DWORD PTR [esi+0x11bc],edi
   442b1:	e8 62 dc 02 00       	call   W?$nwn(ui)pnv
   442b6:	85 c0                	test   eax,eax
   442b8:	74 0a                	je     W?$ct:PLAYER_CHARACTER$n(iiib)__branch_2
   442ba:	ba 2d a8 00 00       	mov    edx,@obj3:classes_cpp_variable_146                           ; fixup: num: 11201, src obj: 1, src ofs: 0x442bb, dst obj: 3, dst ofs: 0xa82d
   442bf:	e8 ac 41 fc ff       	call   W?$ct:SOUND$n(pna)_
W?$ct:PLAYER_CHARACTER$n(iiib)__branch_2:
   442c4:	89 86 68 11 00 00    	mov    DWORD PTR [esi+0x1168],eax
   442ca:	85 c0                	test   eax,eax
   442cc:	75 0f                	jne    W?$ct:PLAYER_CHARACTER$n(iiib)__branch_3
   442ce:	bb 4a a8 00 00       	mov    ebx,@obj3:classes_cpp_variable_147                           ; fixup: num: 11200, src obj: 1, src ofs: 0x442cf, dst obj: 3, dst ofs: 0xa84a
   442d3:	ba bd 0f 00 00       	mov    edx,0xfbd
   442d8:	e8 53 3d ff ff       	call   _error_report
W?$ct:PLAYER_CHARACTER$n(iiib)__branch_3:
   442dd:	b8 88 00 00 00       	mov    eax,0x88
   442e2:	c7 86 78 11 00 00 3d 00 00 00 	mov    DWORD PTR [esi+0x1178],0x3d
   442ec:	e8 27 dc 02 00       	call   W?$nwn(ui)pnv
   442f1:	85 c0                	test   eax,eax
   442f3:	74 0a                	je     W?$ct:PLAYER_CHARACTER$n(iiib)__branch_4
   442f5:	ba 62 a8 00 00       	mov    edx,@obj3:classes_cpp_variable_148                           ; fixup: num: 11199, src obj: 1, src ofs: 0x442f6, dst obj: 3, dst ofs: 0xa862
   442fa:	e8 71 41 fc ff       	call   W?$ct:SOUND$n(pna)_
W?$ct:PLAYER_CHARACTER$n(iiib)__branch_4:
   442ff:	89 86 54 11 00 00    	mov    DWORD PTR [esi+0x1154],eax
   44305:	85 c0                	test   eax,eax
   44307:	75 0f                	jne    W?$ct:PLAYER_CHARACTER$n(iiib)__branch_5
   44309:	bb 80 a8 00 00       	mov    ebx,@obj3:classes_cpp_variable_149                           ; fixup: num: 11198, src obj: 1, src ofs: 0x4430a, dst obj: 3, dst ofs: 0xa880
   4430e:	ba c0 0f 00 00       	mov    edx,0xfc0
   44313:	e8 18 3d ff ff       	call   _error_report
W?$ct:PLAYER_CHARACTER$n(iiib)__branch_5:
   44318:	b8 88 00 00 00       	mov    eax,0x88
   4431d:	e8 f6 db 02 00       	call   W?$nwn(ui)pnv
   44322:	85 c0                	test   eax,eax
   44324:	74 0a                	je     W?$ct:PLAYER_CHARACTER$n(iiib)__branch_6
   44326:	ba 98 a8 00 00       	mov    edx,@obj3:classes_cpp_variable_150                           ; fixup: num: 11197, src obj: 1, src ofs: 0x44327, dst obj: 3, dst ofs: 0xa898
   4432b:	e8 40 41 fc ff       	call   W?$ct:SOUND$n(pna)_
W?$ct:PLAYER_CHARACTER$n(iiib)__branch_6:
   44330:	89 86 58 11 00 00    	mov    DWORD PTR [esi+0x1158],eax
   44336:	85 c0                	test   eax,eax
   44338:	75 0f                	jne    W?$ct:PLAYER_CHARACTER$n(iiib)__branch_7
   4433a:	bb b6 a8 00 00       	mov    ebx,@obj3:classes_cpp_variable_151                           ; fixup: num: 11210, src obj: 1, src ofs: 0x4433b, dst obj: 3, dst ofs: 0xa8b6
   4433f:	ba c2 0f 00 00       	mov    edx,0xfc2
   44344:	e8 e7 3c ff ff       	call   _error_report
W?$ct:PLAYER_CHARACTER$n(iiib)__branch_7:
   44349:	b8 88 00 00 00       	mov    eax,0x88
   4434e:	e8 c5 db 02 00       	call   W?$nwn(ui)pnv
   44353:	85 c0                	test   eax,eax
   44355:	74 0a                	je     W?$ct:PLAYER_CHARACTER$n(iiib)__branch_8
   44357:	ba ce a8 00 00       	mov    edx,@obj3:classes_cpp_variable_152                           ; fixup: num: 11209, src obj: 1, src ofs: 0x44358, dst obj: 3, dst ofs: 0xa8ce
   4435c:	e8 0f 41 fc ff       	call   W?$ct:SOUND$n(pna)_
W?$ct:PLAYER_CHARACTER$n(iiib)__branch_8:
   44361:	89 86 5c 11 00 00    	mov    DWORD PTR [esi+0x115c],eax
   44367:	85 c0                	test   eax,eax
   44369:	75 0f                	jne    W?$ct:PLAYER_CHARACTER$n(iiib)__branch_9
   4436b:	bb ec a8 00 00       	mov    ebx,@obj3:classes_cpp_variable_153                           ; fixup: num: 11208, src obj: 1, src ofs: 0x4436c, dst obj: 3, dst ofs: 0xa8ec
   44370:	ba c4 0f 00 00       	mov    edx,0xfc4
   44375:	e8 b6 3c ff ff       	call   _error_report
W?$ct:PLAYER_CHARACTER$n(iiib)__branch_9:
   4437a:	b8 88 00 00 00       	mov    eax,0x88
   4437f:	e8 94 db 02 00       	call   W?$nwn(ui)pnv
   44384:	85 c0                	test   eax,eax
   44386:	74 0a                	je     W?$ct:PLAYER_CHARACTER$n(iiib)__branch_10
   44388:	ba 04 a9 00 00       	mov    edx,@obj3:classes_cpp_variable_154                           ; fixup: num: 11207, src obj: 1, src ofs: 0x44389, dst obj: 3, dst ofs: 0xa904
   4438d:	e8 de 40 fc ff       	call   W?$ct:SOUND$n(pna)_
W?$ct:PLAYER_CHARACTER$n(iiib)__branch_10:
   44392:	89 86 60 11 00 00    	mov    DWORD PTR [esi+0x1160],eax
   44398:	85 c0                	test   eax,eax
   4439a:	75 0f                	jne    W?$ct:PLAYER_CHARACTER$n(iiib)__branch_11
   4439c:	bb 22 a9 00 00       	mov    ebx,@obj3:classes_cpp_variable_155                           ; fixup: num: 11206, src obj: 1, src ofs: 0x4439d, dst obj: 3, dst ofs: 0xa922
   443a1:	ba c6 0f 00 00       	mov    edx,0xfc6
   443a6:	e8 85 3c ff ff       	call   _error_report
W?$ct:PLAYER_CHARACTER$n(iiib)__branch_11:
   443ab:	b8 88 00 00 00       	mov    eax,0x88
   443b0:	e8 63 db 02 00       	call   W?$nwn(ui)pnv
   443b5:	85 c0                	test   eax,eax
   443b7:	74 0a                	je     W?$ct:PLAYER_CHARACTER$n(iiib)__branch_12
   443b9:	ba 3a a9 00 00       	mov    edx,@obj3:classes_cpp_variable_156                           ; fixup: num: 11205, src obj: 1, src ofs: 0x443ba, dst obj: 3, dst ofs: 0xa93a
   443be:	e8 ad 40 fc ff       	call   W?$ct:SOUND$n(pna)_
W?$ct:PLAYER_CHARACTER$n(iiib)__branch_12:
   443c3:	89 86 64 11 00 00    	mov    DWORD PTR [esi+0x1164],eax
   443c9:	85 c0                	test   eax,eax
   443cb:	0f 85 0f 00 00 00    	jne    W?$ct:PLAYER_CHARACTER$n(iiib)__branch_13
   443d1:	bb 58 a9 00 00       	mov    ebx,@obj3:classes_cpp_variable_157                           ; fixup: num: 11204, src obj: 1, src ofs: 0x443d2, dst obj: 3, dst ofs: 0xa958
   443d6:	ba c8 0f 00 00       	mov    edx,0xfc8
   443db:	e8 50 3c ff ff       	call   _error_report
W?$ct:PLAYER_CHARACTER$n(iiib)__branch_13:
   443e0:	c7 86 74 11 00 00 04 00 00 00 	mov    DWORD PTR [esi+0x1174],0x4
   443ea:	c7 86 38 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1138],0x3
   443f4:	c7 86 70 11 00 00 01 00 00 00 	mov    DWORD PTR [esi+0x1170],0x1
   443fe:	8b 86 bc 11 00 00    	mov    eax,DWORD PTR [esi+0x11bc]
   44404:	c7 86 6c 11 00 00 01 00 00 00 	mov    DWORD PTR [esi+0x116c],0x1
   4440e:	83 f8 14             	cmp    eax,0x14
   44411:	0f 87 2b 0b 00 00    	ja     W?$ct:PLAYER_CHARACTER$n(iiib)__branch_72
   44417:	2e ff 24 85 cc 41 04 00 	jmp    DWORD PTR cs:[eax*4+@obj1:W?$dt:MONSTER$n()__reference_1] ; fixup: num: 11214, src obj: 1, src ofs: 0x4441b, dst obj: 1, dst ofs: 0x441cc
W?$ct:PLAYER_CHARACTER$n(iiib)__reference_1:
   4441f:	8b be 8c 11 00 00    	mov    edi,DWORD PTR [esi+0x118c]
   44425:	47                   	inc    edi
   44426:	b8 88 00 00 00       	mov    eax,0x88
   4442b:	89 be 8c 11 00 00    	mov    DWORD PTR [esi+0x118c],edi
   44431:	e8 e2 da 02 00       	call   W?$nwn(ui)pnv
   44436:	89 c3                	mov    ebx,eax
   44438:	89 c2                	mov    edx,eax
   4443a:	85 c0                	test   eax,eax
   4443c:	74 0a                	je     W?$ct:PLAYER_CHARACTER$n(iiib)__branch_14
   4443e:	ba 70 a9 00 00       	mov    edx,@obj3:classes_cpp_variable_158                           ; fixup: num: 11213, src obj: 1, src ofs: 0x4443f, dst obj: 3, dst ofs: 0xa970
   44443:	e8 28 40 fc ff       	call   W?$ct:SOUND$n(pna)_
W?$ct:PLAYER_CHARACTER$n(iiib)__branch_14:
   44448:	89 86 48 11 00 00    	mov    DWORD PTR [esi+0x1148],eax
   4444e:	b8 88 00 00 00       	mov    eax,0x88
   44453:	e8 c0 da 02 00       	call   W?$nwn(ui)pnv
   44458:	85 c0                	test   eax,eax
   4445a:	74 0a                	je     W?$ct:PLAYER_CHARACTER$n(iiib)__branch_15
   4445c:	ba 8d a9 00 00       	mov    edx,@obj3:classes_cpp_variable_159                           ; fixup: num: 11212, src obj: 1, src ofs: 0x4445d, dst obj: 3, dst ofs: 0xa98d
   44461:	e8 0a 40 fc ff       	call   W?$ct:SOUND$n(pna)_
W?$ct:PLAYER_CHARACTER$n(iiib)__branch_15:
   44466:	89 86 4c 11 00 00    	mov    DWORD PTR [esi+0x114c],eax
   4446c:	b8 88 00 00 00       	mov    eax,0x88
   44471:	e8 a2 da 02 00       	call   W?$nwn(ui)pnv
   44476:	85 c0                	test   eax,eax
   44478:	74 0a                	je     W?$ct:PLAYER_CHARACTER$n(iiib)__branch_16
   4447a:	ba aa a9 00 00       	mov    edx,@obj3:classes_cpp_variable_160                           ; fixup: num: 11211, src obj: 1, src ofs: 0x4447b, dst obj: 3, dst ofs: 0xa9aa
   4447f:	e8 ec 3f fc ff       	call   W?$ct:SOUND$n(pna)_
W?$ct:PLAYER_CHARACTER$n(iiib)__branch_16:
   44484:	c7 86 6c 11 00 00 01 00 00 00 	mov    DWORD PTR [esi+0x116c],0x1
   4448e:	c7 86 34 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1134],0x3
   44498:	c7 86 80 11 00 00 01 00 00 00 	mov    DWORD PTR [esi+0x1180],0x1
   444a2:	c7 86 3c 11 00 00 05 00 00 00 	mov    DWORD PTR [esi+0x113c],0x5
   444ac:	89 86 50 11 00 00    	mov    DWORD PTR [esi+0x1150],eax
   444b2:	e9 8b 0a 00 00       	jmp    W?$ct:PLAYER_CHARACTER$n(iiib)__branch_72
W?$ct:PLAYER_CHARACTER$n(iiib)__reference_2:
   444b7:	c7 86 80 11 00 00 05 00 00 00 	mov    DWORD PTR [esi+0x1180],0x5
   444c1:	8b 8e 8c 11 00 00    	mov    ecx,DWORD PTR [esi+0x118c]
   444c7:	c7 86 3c 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x113c],0x2
   444d1:	83 c1 02             	add    ecx,0x2
   444d4:	b8 88 00 00 00       	mov    eax,0x88
   444d9:	89 8e 8c 11 00 00    	mov    DWORD PTR [esi+0x118c],ecx
   444df:	e8 34 da 02 00       	call   W?$nwn(ui)pnv
   444e4:	89 c3                	mov    ebx,eax
   444e6:	89 c2                	mov    edx,eax
   444e8:	85 c0                	test   eax,eax
   444ea:	74 0a                	je     W?$ct:PLAYER_CHARACTER$n(iiib)__branch_17
   444ec:	ba c7 a9 00 00       	mov    edx,@obj3:classes_cpp_variable_161                           ; fixup: num: 11217, src obj: 1, src ofs: 0x444ed, dst obj: 3, dst ofs: 0xa9c7
   444f1:	e8 7a 3f fc ff       	call   W?$ct:SOUND$n(pna)_
W?$ct:PLAYER_CHARACTER$n(iiib)__branch_17:
   444f6:	89 86 48 11 00 00    	mov    DWORD PTR [esi+0x1148],eax
   444fc:	b8 88 00 00 00       	mov    eax,0x88
   44501:	e8 12 da 02 00       	call   W?$nwn(ui)pnv
   44506:	85 c0                	test   eax,eax
   44508:	74 0a                	je     W?$ct:PLAYER_CHARACTER$n(iiib)__branch_18
   4450a:	ba e4 a9 00 00       	mov    edx,@obj3:classes_cpp_variable_162                           ; fixup: num: 11216, src obj: 1, src ofs: 0x4450b, dst obj: 3, dst ofs: 0xa9e4
   4450f:	e8 5c 3f fc ff       	call   W?$ct:SOUND$n(pna)_
W?$ct:PLAYER_CHARACTER$n(iiib)__branch_18:
   44514:	89 86 4c 11 00 00    	mov    DWORD PTR [esi+0x114c],eax
   4451a:	b8 88 00 00 00       	mov    eax,0x88
   4451f:	e8 f4 d9 02 00       	call   W?$nwn(ui)pnv
   44524:	85 c0                	test   eax,eax
   44526:	74 0a                	je     W?$ct:PLAYER_CHARACTER$n(iiib)__branch_19
   44528:	ba 01 aa 00 00       	mov    edx,@obj3:classes_cpp_variable_163                           ; fixup: num: 11215, src obj: 1, src ofs: 0x44529, dst obj: 3, dst ofs: 0xaa01
   4452d:	e8 3e 3f fc ff       	call   W?$ct:SOUND$n(pna)_
W?$ct:PLAYER_CHARACTER$n(iiib)__branch_19:
   44532:	c7 86 34 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1134],0x3
   4453c:	89 86 50 11 00 00    	mov    DWORD PTR [esi+0x1150],eax
   44542:	e9 fb 09 00 00       	jmp    W?$ct:PLAYER_CHARACTER$n(iiib)__branch_72
W?$ct:PLAYER_CHARACTER$n(iiib)__reference_3:
   44547:	c7 86 80 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x1180],0x2
   44551:	8b 9e 8c 11 00 00    	mov    ebx,DWORD PTR [esi+0x118c]
   44557:	c7 86 3c 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x113c],0x2
   44561:	83 c3 04             	add    ebx,0x4
   44564:	b8 88 00 00 00       	mov    eax,0x88
   44569:	89 9e 8c 11 00 00    	mov    DWORD PTR [esi+0x118c],ebx
   4456f:	e8 a4 d9 02 00       	call   W?$nwn(ui)pnv
   44574:	89 c3                	mov    ebx,eax
   44576:	89 c2                	mov    edx,eax
   44578:	85 c0                	test   eax,eax
   4457a:	74 0a                	je     W?$ct:PLAYER_CHARACTER$n(iiib)__branch_20
   4457c:	ba 1e aa 00 00       	mov    edx,@obj3:classes_cpp_variable_164                           ; fixup: num: 11220, src obj: 1, src ofs: 0x4457d, dst obj: 3, dst ofs: 0xaa1e
   44581:	e8 ea 3e fc ff       	call   W?$ct:SOUND$n(pna)_
W?$ct:PLAYER_CHARACTER$n(iiib)__branch_20:
   44586:	89 86 48 11 00 00    	mov    DWORD PTR [esi+0x1148],eax
   4458c:	b8 88 00 00 00       	mov    eax,0x88
   44591:	e8 82 d9 02 00       	call   W?$nwn(ui)pnv
   44596:	85 c0                	test   eax,eax
   44598:	74 0a                	je     W?$ct:PLAYER_CHARACTER$n(iiib)__branch_21
   4459a:	ba 3c aa 00 00       	mov    edx,@obj3:classes_cpp_variable_165                           ; fixup: num: 11219, src obj: 1, src ofs: 0x4459b, dst obj: 3, dst ofs: 0xaa3c
   4459f:	e8 cc 3e fc ff       	call   W?$ct:SOUND$n(pna)_
W?$ct:PLAYER_CHARACTER$n(iiib)__branch_21:
   445a4:	c7 86 34 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x1134],0x2
   445ae:	89 86 4c 11 00 00    	mov    DWORD PTR [esi+0x114c],eax
   445b4:	e9 89 09 00 00       	jmp    W?$ct:PLAYER_CHARACTER$n(iiib)__branch_72
W?$ct:PLAYER_CHARACTER$n(iiib)__reference_4:
   445b9:	c7 86 80 11 00 00 07 00 00 00 	mov    DWORD PTR [esi+0x1180],0x7
   445c3:	8b 96 8c 11 00 00    	mov    edx,DWORD PTR [esi+0x118c]
   445c9:	c7 86 3c 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x113c],0x2
   445d3:	83 c2 04             	add    edx,0x4
   445d6:	b8 88 00 00 00       	mov    eax,0x88
   445db:	89 96 8c 11 00 00    	mov    DWORD PTR [esi+0x118c],edx
   445e1:	e8 32 d9 02 00       	call   W?$nwn(ui)pnv
   445e6:	89 c3                	mov    ebx,eax
   445e8:	89 c2                	mov    edx,eax
   445ea:	85 c0                	test   eax,eax
   445ec:	74 0a                	je     W?$ct:PLAYER_CHARACTER$n(iiib)__branch_22
   445ee:	ba 59 aa 00 00       	mov    edx,@obj3:classes_cpp_variable_166                           ; fixup: num: 11218, src obj: 1, src ofs: 0x445ef, dst obj: 3, dst ofs: 0xaa59
   445f3:	e8 78 3e fc ff       	call   W?$ct:SOUND$n(pna)_
W?$ct:PLAYER_CHARACTER$n(iiib)__branch_22:
   445f8:	89 86 48 11 00 00    	mov    DWORD PTR [esi+0x1148],eax
   445fe:	b8 88 00 00 00       	mov    eax,0x88
   44603:	e8 10 d9 02 00       	call   W?$nwn(ui)pnv
   44608:	85 c0                	test   eax,eax
   4460a:	74 0a                	je     W?$ct:PLAYER_CHARACTER$n(iiib)__branch_23
   4460c:	ba 77 aa 00 00       	mov    edx,@obj3:classes_cpp_variable_167                           ; fixup: num: 11223, src obj: 1, src ofs: 0x4460d, dst obj: 3, dst ofs: 0xaa77
   44611:	e8 5a 3e fc ff       	call   W?$ct:SOUND$n(pna)_
W?$ct:PLAYER_CHARACTER$n(iiib)__branch_23:
   44616:	c7 86 34 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x1134],0x2
   44620:	89 86 4c 11 00 00    	mov    DWORD PTR [esi+0x114c],eax
   44626:	e9 17 09 00 00       	jmp    W?$ct:PLAYER_CHARACTER$n(iiib)__branch_72
W?$ct:PLAYER_CHARACTER$n(iiib)__reference_5:
   4462b:	8b 86 8c 11 00 00    	mov    eax,DWORD PTR [esi+0x118c]
   44631:	c7 86 80 11 00 00 06 00 00 00 	mov    DWORD PTR [esi+0x1180],0x6
   4463b:	83 c0 04             	add    eax,0x4
   4463e:	89 86 8c 11 00 00    	mov    DWORD PTR [esi+0x118c],eax
   44644:	b8 88 00 00 00       	mov    eax,0x88
   44649:	c7 86 3c 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x113c],0x2
   44653:	e8 c0 d8 02 00       	call   W?$nwn(ui)pnv
   44658:	89 c3                	mov    ebx,eax
   4465a:	89 c2                	mov    edx,eax
   4465c:	85 c0                	test   eax,eax
   4465e:	74 0a                	je     W?$ct:PLAYER_CHARACTER$n(iiib)__branch_24
   44660:	ba 95 aa 00 00       	mov    edx,@obj3:classes_cpp_variable_168                           ; fixup: num: 11222, src obj: 1, src ofs: 0x44661, dst obj: 3, dst ofs: 0xaa95
   44665:	e8 06 3e fc ff       	call   W?$ct:SOUND$n(pna)_
W?$ct:PLAYER_CHARACTER$n(iiib)__branch_24:
   4466a:	89 86 48 11 00 00    	mov    DWORD PTR [esi+0x1148],eax
   44670:	b8 88 00 00 00       	mov    eax,0x88
   44675:	e8 9e d8 02 00       	call   W?$nwn(ui)pnv
   4467a:	85 c0                	test   eax,eax
   4467c:	74 0a                	je     W?$ct:PLAYER_CHARACTER$n(iiib)__branch_25
   4467e:	ba b2 aa 00 00       	mov    edx,@obj3:classes_cpp_variable_169                           ; fixup: num: 11221, src obj: 1, src ofs: 0x4467f, dst obj: 3, dst ofs: 0xaab2
   44683:	e8 e8 3d fc ff       	call   W?$ct:SOUND$n(pna)_
W?$ct:PLAYER_CHARACTER$n(iiib)__branch_25:
   44688:	c7 86 34 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x1134],0x2
   44692:	89 86 4c 11 00 00    	mov    DWORD PTR [esi+0x114c],eax
   44698:	e9 a5 08 00 00       	jmp    W?$ct:PLAYER_CHARACTER$n(iiib)__branch_72
W?$ct:PLAYER_CHARACTER$n(iiib)__reference_6:
   4469d:	c7 86 80 11 00 00 06 00 00 00 	mov    DWORD PTR [esi+0x1180],0x6
   446a7:	8b ae 8c 11 00 00    	mov    ebp,DWORD PTR [esi+0x118c]
   446ad:	c7 86 3c 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x113c],0x2
   446b7:	83 c5 04             	add    ebp,0x4
   446ba:	b8 88 00 00 00       	mov    eax,0x88
   446bf:	89 ae 8c 11 00 00    	mov    DWORD PTR [esi+0x118c],ebp
   446c5:	e8 4e d8 02 00       	call   W?$nwn(ui)pnv
   446ca:	89 c3                	mov    ebx,eax
   446cc:	89 c2                	mov    edx,eax
   446ce:	85 c0                	test   eax,eax
   446d0:	74 0a                	je     W?$ct:PLAYER_CHARACTER$n(iiib)__branch_26
   446d2:	ba cf aa 00 00       	mov    edx,@obj3:classes_cpp_variable_170                           ; fixup: num: 11226, src obj: 1, src ofs: 0x446d3, dst obj: 3, dst ofs: 0xaacf
   446d7:	e8 94 3d fc ff       	call   W?$ct:SOUND$n(pna)_
W?$ct:PLAYER_CHARACTER$n(iiib)__branch_26:
   446dc:	89 86 48 11 00 00    	mov    DWORD PTR [esi+0x1148],eax
   446e2:	b8 88 00 00 00       	mov    eax,0x88
   446e7:	e8 2c d8 02 00       	call   W?$nwn(ui)pnv
   446ec:	85 c0                	test   eax,eax
   446ee:	74 0a                	je     W?$ct:PLAYER_CHARACTER$n(iiib)__branch_27
   446f0:	ba ec aa 00 00       	mov    edx,@obj3:classes_cpp_variable_171                           ; fixup: num: 11225, src obj: 1, src ofs: 0x446f1, dst obj: 3, dst ofs: 0xaaec
   446f5:	e8 76 3d fc ff       	call   W?$ct:SOUND$n(pna)_
W?$ct:PLAYER_CHARACTER$n(iiib)__branch_27:
   446fa:	c7 86 34 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x1134],0x2
   44704:	89 86 4c 11 00 00    	mov    DWORD PTR [esi+0x114c],eax
   4470a:	e9 33 08 00 00       	jmp    W?$ct:PLAYER_CHARACTER$n(iiib)__branch_72
W?$ct:PLAYER_CHARACTER$n(iiib)__reference_7:
   4470f:	c7 86 80 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1180],0x3
   44719:	8b be 8c 11 00 00    	mov    edi,DWORD PTR [esi+0x118c]
   4471f:	c7 86 3c 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x113c],0x2
   44729:	83 c7 02             	add    edi,0x2
   4472c:	b8 88 00 00 00       	mov    eax,0x88
   44731:	89 be 8c 11 00 00    	mov    DWORD PTR [esi+0x118c],edi
   44737:	e8 dc d7 02 00       	call   W?$nwn(ui)pnv
   4473c:	89 c3                	mov    ebx,eax
   4473e:	89 c2                	mov    edx,eax
   44740:	85 c0                	test   eax,eax
   44742:	74 0a                	je     W?$ct:PLAYER_CHARACTER$n(iiib)__branch_28
   44744:	ba 09 ab 00 00       	mov    edx,@obj3:classes_cpp_variable_172                           ; fixup: num: 11224, src obj: 1, src ofs: 0x44745, dst obj: 3, dst ofs: 0xab09
   44749:	e8 22 3d fc ff       	call   W?$ct:SOUND$n(pna)_
W?$ct:PLAYER_CHARACTER$n(iiib)__branch_28:
   4474e:	89 86 48 11 00 00    	mov    DWORD PTR [esi+0x1148],eax
   44754:	b8 88 00 00 00       	mov    eax,0x88
   44759:	e8 ba d7 02 00       	call   W?$nwn(ui)pnv
   4475e:	85 c0                	test   eax,eax
   44760:	74 0a                	je     W?$ct:PLAYER_CHARACTER$n(iiib)__branch_29
   44762:	ba 26 ab 00 00       	mov    edx,@obj3:classes_cpp_variable_173                           ; fixup: num: 11125, src obj: 1, src ofs: 0x44763, dst obj: 3, dst ofs: 0xab26
   44767:	e8 04 3d fc ff       	call   W?$ct:SOUND$n(pna)_
W?$ct:PLAYER_CHARACTER$n(iiib)__branch_29:
   4476c:	89 86 4c 11 00 00    	mov    DWORD PTR [esi+0x114c],eax
   44772:	b8 88 00 00 00       	mov    eax,0x88
   44777:	e8 9c d7 02 00       	call   W?$nwn(ui)pnv
   4477c:	85 c0                	test   eax,eax
   4477e:	74 0a                	je     W?$ct:PLAYER_CHARACTER$n(iiib)__branch_30
   44780:	ba 43 ab 00 00       	mov    edx,@obj3:classes_cpp_variable_174                           ; fixup: num: 11229, src obj: 1, src ofs: 0x44781, dst obj: 3, dst ofs: 0xab43
   44785:	e8 e6 3c fc ff       	call   W?$ct:SOUND$n(pna)_
W?$ct:PLAYER_CHARACTER$n(iiib)__branch_30:
   4478a:	c7 86 34 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1134],0x3
   44794:	89 86 50 11 00 00    	mov    DWORD PTR [esi+0x1150],eax
   4479a:	e9 a3 07 00 00       	jmp    W?$ct:PLAYER_CHARACTER$n(iiib)__branch_72
W?$ct:PLAYER_CHARACTER$n(iiib)__reference_8:
   4479f:	c7 86 80 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1180],0x3
   447a9:	8b 8e 8c 11 00 00    	mov    ecx,DWORD PTR [esi+0x118c]
   447af:	c7 86 3c 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x113c],0x2
   447b9:	83 c1 02             	add    ecx,0x2
   447bc:	b8 88 00 00 00       	mov    eax,0x88
   447c1:	89 8e 8c 11 00 00    	mov    DWORD PTR [esi+0x118c],ecx
   447c7:	e8 4c d7 02 00       	call   W?$nwn(ui)pnv
   447cc:	89 c3                	mov    ebx,eax
   447ce:	89 c2                	mov    edx,eax
   447d0:	85 c0                	test   eax,eax
   447d2:	74 0a                	je     W?$ct:PLAYER_CHARACTER$n(iiib)__branch_31
   447d4:	ba 60 ab 00 00       	mov    edx,@obj3:classes_cpp_variable_175                           ; fixup: num: 11228, src obj: 1, src ofs: 0x447d5, dst obj: 3, dst ofs: 0xab60
   447d9:	e8 92 3c fc ff       	call   W?$ct:SOUND$n(pna)_
W?$ct:PLAYER_CHARACTER$n(iiib)__branch_31:
   447de:	89 86 48 11 00 00    	mov    DWORD PTR [esi+0x1148],eax
   447e4:	b8 88 00 00 00       	mov    eax,0x88
   447e9:	e8 2a d7 02 00       	call   W?$nwn(ui)pnv
   447ee:	85 c0                	test   eax,eax
   447f0:	74 0a                	je     W?$ct:PLAYER_CHARACTER$n(iiib)__branch_32
   447f2:	ba 7d ab 00 00       	mov    edx,@obj3:classes_cpp_variable_176                           ; fixup: num: 11227, src obj: 1, src ofs: 0x447f3, dst obj: 3, dst ofs: 0xab7d
   447f7:	e8 74 3c fc ff       	call   W?$ct:SOUND$n(pna)_
W?$ct:PLAYER_CHARACTER$n(iiib)__branch_32:
   447fc:	89 86 4c 11 00 00    	mov    DWORD PTR [esi+0x114c],eax
   44802:	b8 88 00 00 00       	mov    eax,0x88
   44807:	e8 0c d7 02 00       	call   W?$nwn(ui)pnv
   4480c:	85 c0                	test   eax,eax
   4480e:	74 0a                	je     W?$ct:PLAYER_CHARACTER$n(iiib)__branch_33
   44810:	ba 9a ab 00 00       	mov    edx,@obj3:classes_cpp_variable_177                           ; fixup: num: 11129, src obj: 1, src ofs: 0x44811, dst obj: 3, dst ofs: 0xab9a
   44815:	e8 56 3c fc ff       	call   W?$ct:SOUND$n(pna)_
W?$ct:PLAYER_CHARACTER$n(iiib)__branch_33:
   4481a:	c7 86 34 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1134],0x3
   44824:	89 86 50 11 00 00    	mov    DWORD PTR [esi+0x1150],eax
   4482a:	e9 13 07 00 00       	jmp    W?$ct:PLAYER_CHARACTER$n(iiib)__branch_72
W?$ct:PLAYER_CHARACTER$n(iiib)__reference_9:
   4482f:	c7 86 80 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1180],0x3
   44839:	8b 9e 8c 11 00 00    	mov    ebx,DWORD PTR [esi+0x118c]
   4483f:	c7 86 3c 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x113c],0x2
   44849:	83 c3 02             	add    ebx,0x2
   4484c:	b8 88 00 00 00       	mov    eax,0x88
   44851:	89 9e 8c 11 00 00    	mov    DWORD PTR [esi+0x118c],ebx
   44857:	e8 bc d6 02 00       	call   W?$nwn(ui)pnv
   4485c:	89 c3                	mov    ebx,eax
   4485e:	89 c2                	mov    edx,eax
   44860:	85 c0                	test   eax,eax
   44862:	74 0a                	je     W?$ct:PLAYER_CHARACTER$n(iiib)__branch_34
   44864:	ba b7 ab 00 00       	mov    edx,@obj3:classes_cpp_variable_178                           ; fixup: num: 11128, src obj: 1, src ofs: 0x44865, dst obj: 3, dst ofs: 0xabb7
   44869:	e8 02 3c fc ff       	call   W?$ct:SOUND$n(pna)_
W?$ct:PLAYER_CHARACTER$n(iiib)__branch_34:
   4486e:	89 86 48 11 00 00    	mov    DWORD PTR [esi+0x1148],eax
   44874:	b8 88 00 00 00       	mov    eax,0x88
   44879:	e8 9a d6 02 00       	call   W?$nwn(ui)pnv
   4487e:	85 c0                	test   eax,eax
   44880:	74 0a                	je     W?$ct:PLAYER_CHARACTER$n(iiib)__branch_35
   44882:	ba d4 ab 00 00       	mov    edx,@obj3:classes_cpp_variable_179                           ; fixup: num: 11127, src obj: 1, src ofs: 0x44883, dst obj: 3, dst ofs: 0xabd4
   44887:	e8 e4 3b fc ff       	call   W?$ct:SOUND$n(pna)_
W?$ct:PLAYER_CHARACTER$n(iiib)__branch_35:
   4488c:	89 86 4c 11 00 00    	mov    DWORD PTR [esi+0x114c],eax
   44892:	b8 88 00 00 00       	mov    eax,0x88
   44897:	e8 7c d6 02 00       	call   W?$nwn(ui)pnv
   4489c:	85 c0                	test   eax,eax
   4489e:	74 0a                	je     W?$ct:PLAYER_CHARACTER$n(iiib)__branch_36
   448a0:	ba f1 ab 00 00       	mov    edx,@obj3:classes_cpp_variable_180                           ; fixup: num: 11126, src obj: 1, src ofs: 0x448a1, dst obj: 3, dst ofs: 0xabf1
   448a5:	e8 c6 3b fc ff       	call   W?$ct:SOUND$n(pna)_
W?$ct:PLAYER_CHARACTER$n(iiib)__branch_36:
   448aa:	c7 86 34 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1134],0x3
   448b4:	89 86 50 11 00 00    	mov    DWORD PTR [esi+0x1150],eax
   448ba:	e9 83 06 00 00       	jmp    W?$ct:PLAYER_CHARACTER$n(iiib)__branch_72
W?$ct:PLAYER_CHARACTER$n(iiib)__reference_10:
   448bf:	c7 86 80 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1180],0x3
   448c9:	8b 96 8c 11 00 00    	mov    edx,DWORD PTR [esi+0x118c]
   448cf:	c7 86 3c 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x113c],0x2
   448d9:	83 c2 02             	add    edx,0x2
   448dc:	b8 88 00 00 00       	mov    eax,0x88
   448e1:	89 96 8c 11 00 00    	mov    DWORD PTR [esi+0x118c],edx
   448e7:	e8 2c d6 02 00       	call   W?$nwn(ui)pnv
   448ec:	89 c3                	mov    ebx,eax
   448ee:	89 c2                	mov    edx,eax
   448f0:	85 c0                	test   eax,eax
   448f2:	74 0a                	je     W?$ct:PLAYER_CHARACTER$n(iiib)__branch_37
   448f4:	ba 0e ac 00 00       	mov    edx,@obj3:classes_cpp_variable_181                           ; fixup: num: 11132, src obj: 1, src ofs: 0x448f5, dst obj: 3, dst ofs: 0xac0e
   448f9:	e8 72 3b fc ff       	call   W?$ct:SOUND$n(pna)_
W?$ct:PLAYER_CHARACTER$n(iiib)__branch_37:
   448fe:	89 86 48 11 00 00    	mov    DWORD PTR [esi+0x1148],eax
   44904:	b8 88 00 00 00       	mov    eax,0x88
   44909:	e8 0a d6 02 00       	call   W?$nwn(ui)pnv
   4490e:	85 c0                	test   eax,eax
   44910:	74 0a                	je     W?$ct:PLAYER_CHARACTER$n(iiib)__branch_38
   44912:	ba 2b ac 00 00       	mov    edx,@obj3:classes_cpp_variable_182                           ; fixup: num: 11131, src obj: 1, src ofs: 0x44913, dst obj: 3, dst ofs: 0xac2b
   44917:	e8 54 3b fc ff       	call   W?$ct:SOUND$n(pna)_
W?$ct:PLAYER_CHARACTER$n(iiib)__branch_38:
   4491c:	89 86 4c 11 00 00    	mov    DWORD PTR [esi+0x114c],eax
   44922:	b8 88 00 00 00       	mov    eax,0x88
   44927:	e8 ec d5 02 00       	call   W?$nwn(ui)pnv
   4492c:	85 c0                	test   eax,eax
   4492e:	74 0a                	je     W?$ct:PLAYER_CHARACTER$n(iiib)__branch_39
   44930:	ba 48 ac 00 00       	mov    edx,@obj3:classes_cpp_variable_183                           ; fixup: num: 11130, src obj: 1, src ofs: 0x44931, dst obj: 3, dst ofs: 0xac48
   44935:	e8 36 3b fc ff       	call   W?$ct:SOUND$n(pna)_
W?$ct:PLAYER_CHARACTER$n(iiib)__branch_39:
   4493a:	c7 86 34 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1134],0x3
   44944:	89 86 50 11 00 00    	mov    DWORD PTR [esi+0x1150],eax
   4494a:	e9 f3 05 00 00       	jmp    W?$ct:PLAYER_CHARACTER$n(iiib)__branch_72
W?$ct:PLAYER_CHARACTER$n(iiib)__reference_11:
   4494f:	8b 86 8c 11 00 00    	mov    eax,DWORD PTR [esi+0x118c]
   44955:	c7 86 80 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1180],0x3
   4495f:	40                   	inc    eax
   44960:	89 86 8c 11 00 00    	mov    DWORD PTR [esi+0x118c],eax
   44966:	b8 88 00 00 00       	mov    eax,0x88
   4496b:	c7 86 3c 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x113c],0x2
   44975:	e8 9e d5 02 00       	call   W?$nwn(ui)pnv
   4497a:	89 c3                	mov    ebx,eax
   4497c:	89 c2                	mov    edx,eax
   4497e:	85 c0                	test   eax,eax
   44980:	74 0a                	je     W?$ct:PLAYER_CHARACTER$n(iiib)__branch_40
   44982:	ba 65 ac 00 00       	mov    edx,@obj3:classes_cpp_variable_184                           ; fixup: num: 11135, src obj: 1, src ofs: 0x44983, dst obj: 3, dst ofs: 0xac65
   44987:	e8 e4 3a fc ff       	call   W?$ct:SOUND$n(pna)_
W?$ct:PLAYER_CHARACTER$n(iiib)__branch_40:
   4498c:	89 86 48 11 00 00    	mov    DWORD PTR [esi+0x1148],eax
   44992:	b8 88 00 00 00       	mov    eax,0x88
   44997:	e8 7c d5 02 00       	call   W?$nwn(ui)pnv
   4499c:	85 c0                	test   eax,eax
   4499e:	74 0a                	je     W?$ct:PLAYER_CHARACTER$n(iiib)__branch_41
   449a0:	ba 82 ac 00 00       	mov    edx,@obj3:classes_cpp_variable_185                           ; fixup: num: 11134, src obj: 1, src ofs: 0x449a1, dst obj: 3, dst ofs: 0xac82
   449a5:	e8 c6 3a fc ff       	call   W?$ct:SOUND$n(pna)_
W?$ct:PLAYER_CHARACTER$n(iiib)__branch_41:
   449aa:	89 86 4c 11 00 00    	mov    DWORD PTR [esi+0x114c],eax
   449b0:	b8 88 00 00 00       	mov    eax,0x88
   449b5:	e8 5e d5 02 00       	call   W?$nwn(ui)pnv
   449ba:	85 c0                	test   eax,eax
   449bc:	74 0a                	je     W?$ct:PLAYER_CHARACTER$n(iiib)__branch_42
   449be:	ba 9f ac 00 00       	mov    edx,@obj3:classes_cpp_variable_186                           ; fixup: num: 11133, src obj: 1, src ofs: 0x449bf, dst obj: 3, dst ofs: 0xac9f
   449c3:	e8 a8 3a fc ff       	call   W?$ct:SOUND$n(pna)_
W?$ct:PLAYER_CHARACTER$n(iiib)__branch_42:
   449c8:	c7 86 34 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1134],0x3
   449d2:	89 86 50 11 00 00    	mov    DWORD PTR [esi+0x1150],eax
   449d8:	e9 65 05 00 00       	jmp    W?$ct:PLAYER_CHARACTER$n(iiib)__branch_72
W?$ct:PLAYER_CHARACTER$n(iiib)__reference_12:
   449dd:	c7 86 80 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1180],0x3
   449e7:	8b ae 8c 11 00 00    	mov    ebp,DWORD PTR [esi+0x118c]
   449ed:	c7 86 3c 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x113c],0x2
   449f7:	83 c5 02             	add    ebp,0x2
   449fa:	b8 88 00 00 00       	mov    eax,0x88
   449ff:	89 ae 8c 11 00 00    	mov    DWORD PTR [esi+0x118c],ebp
   44a05:	e8 0e d5 02 00       	call   W?$nwn(ui)pnv
   44a0a:	89 c3                	mov    ebx,eax
   44a0c:	85 c0                	test   eax,eax
   44a0e:	74 0a                	je     W?$ct:PLAYER_CHARACTER$n(iiib)__branch_43
   44a10:	ba bc ac 00 00       	mov    edx,@obj3:classes_cpp_variable_187                           ; fixup: num: 11139, src obj: 1, src ofs: 0x44a11, dst obj: 3, dst ofs: 0xacbc
   44a15:	e8 56 3a fc ff       	call   W?$ct:SOUND$n(pna)_
W?$ct:PLAYER_CHARACTER$n(iiib)__branch_43:
   44a1a:	89 86 48 11 00 00    	mov    DWORD PTR [esi+0x1148],eax
   44a20:	b8 88 00 00 00       	mov    eax,0x88
   44a25:	e8 ee d4 02 00       	call   W?$nwn(ui)pnv
   44a2a:	85 c0                	test   eax,eax
   44a2c:	74 0a                	je     W?$ct:PLAYER_CHARACTER$n(iiib)__branch_44
   44a2e:	ba d9 ac 00 00       	mov    edx,@obj3:classes_cpp_variable_188                           ; fixup: num: 11138, src obj: 1, src ofs: 0x44a2f, dst obj: 3, dst ofs: 0xacd9
   44a33:	e8 38 3a fc ff       	call   W?$ct:SOUND$n(pna)_
W?$ct:PLAYER_CHARACTER$n(iiib)__branch_44:
   44a38:	89 86 4c 11 00 00    	mov    DWORD PTR [esi+0x114c],eax
   44a3e:	b8 88 00 00 00       	mov    eax,0x88
   44a43:	e8 d0 d4 02 00       	call   W?$nwn(ui)pnv
   44a48:	85 c0                	test   eax,eax
   44a4a:	74 0a                	je     W?$ct:PLAYER_CHARACTER$n(iiib)__branch_45
   44a4c:	ba f6 ac 00 00       	mov    edx,@obj3:classes_cpp_variable_189                           ; fixup: num: 11137, src obj: 1, src ofs: 0x44a4d, dst obj: 3, dst ofs: 0xacf6
   44a51:	e8 1a 3a fc ff       	call   W?$ct:SOUND$n(pna)_
W?$ct:PLAYER_CHARACTER$n(iiib)__branch_45:
   44a56:	c7 86 34 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1134],0x3
   44a60:	89 86 50 11 00 00    	mov    DWORD PTR [esi+0x1150],eax
   44a66:	e9 d7 04 00 00       	jmp    W?$ct:PLAYER_CHARACTER$n(iiib)__branch_72
W?$ct:PLAYER_CHARACTER$n(iiib)__reference_13:
   44a6b:	c7 86 80 11 00 00 04 00 00 00 	mov    DWORD PTR [esi+0x1180],0x4
   44a75:	8b be 8c 11 00 00    	mov    edi,DWORD PTR [esi+0x118c]
   44a7b:	c7 86 3c 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x113c],0x2
   44a85:	83 c7 02             	add    edi,0x2
   44a88:	b8 88 00 00 00       	mov    eax,0x88
   44a8d:	89 be 8c 11 00 00    	mov    DWORD PTR [esi+0x118c],edi
   44a93:	e8 80 d4 02 00       	call   W?$nwn(ui)pnv
   44a98:	85 c0                	test   eax,eax
   44a9a:	74 0a                	je     W?$ct:PLAYER_CHARACTER$n(iiib)__branch_46
   44a9c:	ba 13 ad 00 00       	mov    edx,@obj3:classes_cpp_variable_190                           ; fixup: num: 11136, src obj: 1, src ofs: 0x44a9d, dst obj: 3, dst ofs: 0xad13
   44aa1:	e8 ca 39 fc ff       	call   W?$ct:SOUND$n(pna)_
W?$ct:PLAYER_CHARACTER$n(iiib)__branch_46:
   44aa6:	89 86 48 11 00 00    	mov    DWORD PTR [esi+0x1148],eax
   44aac:	b8 88 00 00 00       	mov    eax,0x88
   44ab1:	e8 62 d4 02 00       	call   W?$nwn(ui)pnv
   44ab6:	85 c0                	test   eax,eax
   44ab8:	74 0a                	je     W?$ct:PLAYER_CHARACTER$n(iiib)__branch_47
   44aba:	ba 30 ad 00 00       	mov    edx,@obj3:classes_cpp_variable_191                           ; fixup: num: 11144, src obj: 1, src ofs: 0x44abb, dst obj: 3, dst ofs: 0xad30
   44abf:	e8 ac 39 fc ff       	call   W?$ct:SOUND$n(pna)_
W?$ct:PLAYER_CHARACTER$n(iiib)__branch_47:
   44ac4:	89 86 4c 11 00 00    	mov    DWORD PTR [esi+0x114c],eax
   44aca:	b8 88 00 00 00       	mov    eax,0x88
   44acf:	e8 44 d4 02 00       	call   W?$nwn(ui)pnv
   44ad4:	85 c0                	test   eax,eax
   44ad6:	74 0a                	je     W?$ct:PLAYER_CHARACTER$n(iiib)__branch_48
   44ad8:	ba 4d ad 00 00       	mov    edx,@obj3:classes_cpp_variable_192                           ; fixup: num: 11143, src obj: 1, src ofs: 0x44ad9, dst obj: 3, dst ofs: 0xad4d
   44add:	e8 8e 39 fc ff       	call   W?$ct:SOUND$n(pna)_
W?$ct:PLAYER_CHARACTER$n(iiib)__branch_48:
   44ae2:	c7 86 34 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1134],0x3
   44aec:	89 86 50 11 00 00    	mov    DWORD PTR [esi+0x1150],eax
   44af2:	e9 4b 04 00 00       	jmp    W?$ct:PLAYER_CHARACTER$n(iiib)__branch_72
W?$ct:PLAYER_CHARACTER$n(iiib)__reference_14:
   44af7:	8b 8e 8c 11 00 00    	mov    ecx,DWORD PTR [esi+0x118c]
   44afd:	83 c1 02             	add    ecx,0x2
   44b00:	b8 88 00 00 00       	mov    eax,0x88
   44b05:	89 8e 8c 11 00 00    	mov    DWORD PTR [esi+0x118c],ecx
   44b0b:	e8 08 d4 02 00       	call   W?$nwn(ui)pnv
   44b10:	85 c0                	test   eax,eax
   44b12:	74 0a                	je     W?$ct:PLAYER_CHARACTER$n(iiib)__branch_49
   44b14:	ba 6a ad 00 00       	mov    edx,@obj3:classes_cpp_variable_193                           ; fixup: num: 11142, src obj: 1, src ofs: 0x44b15, dst obj: 3, dst ofs: 0xad6a
   44b19:	e8 52 39 fc ff       	call   W?$ct:SOUND$n(pna)_
W?$ct:PLAYER_CHARACTER$n(iiib)__branch_49:
   44b1e:	89 86 48 11 00 00    	mov    DWORD PTR [esi+0x1148],eax
   44b24:	b8 88 00 00 00       	mov    eax,0x88
   44b29:	e8 ea d3 02 00       	call   W?$nwn(ui)pnv
   44b2e:	85 c0                	test   eax,eax
   44b30:	74 0a                	je     W?$ct:PLAYER_CHARACTER$n(iiib)__branch_50
   44b32:	ba 87 ad 00 00       	mov    edx,@obj3:classes_cpp_variable_194                           ; fixup: num: 11141, src obj: 1, src ofs: 0x44b33, dst obj: 3, dst ofs: 0xad87
   44b37:	e8 34 39 fc ff       	call   W?$ct:SOUND$n(pna)_
W?$ct:PLAYER_CHARACTER$n(iiib)__branch_50:
   44b3c:	89 86 4c 11 00 00    	mov    DWORD PTR [esi+0x114c],eax
   44b42:	b8 88 00 00 00       	mov    eax,0x88
   44b47:	e8 cc d3 02 00       	call   W?$nwn(ui)pnv
   44b4c:	85 c0                	test   eax,eax
   44b4e:	74 0a                	je     W?$ct:PLAYER_CHARACTER$n(iiib)__branch_51
   44b50:	ba a4 ad 00 00       	mov    edx,@obj3:classes_cpp_variable_195                           ; fixup: num: 11140, src obj: 1, src ofs: 0x44b51, dst obj: 3, dst ofs: 0xada4
   44b55:	e8 16 39 fc ff       	call   W?$ct:SOUND$n(pna)_
W?$ct:PLAYER_CHARACTER$n(iiib)__branch_51:
   44b5a:	c7 86 6c 11 00 00 01 00 00 00 	mov    DWORD PTR [esi+0x116c],0x1
   44b64:	c7 86 34 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1134],0x3
   44b6e:	c7 86 80 11 00 00 04 00 00 00 	mov    DWORD PTR [esi+0x1180],0x4
   44b78:	c7 86 3c 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x113c],0x2
   44b82:	89 86 50 11 00 00    	mov    DWORD PTR [esi+0x1150],eax
   44b88:	e9 b5 03 00 00       	jmp    W?$ct:PLAYER_CHARACTER$n(iiib)__branch_72
W?$ct:PLAYER_CHARACTER$n(iiib)__reference_15:
   44b8d:	8b 9e 8c 11 00 00    	mov    ebx,DWORD PTR [esi+0x118c]
   44b93:	83 c3 02             	add    ebx,0x2
   44b96:	b8 88 00 00 00       	mov    eax,0x88
   44b9b:	89 9e 8c 11 00 00    	mov    DWORD PTR [esi+0x118c],ebx
   44ba1:	e8 72 d3 02 00       	call   W?$nwn(ui)pnv
   44ba6:	85 c0                	test   eax,eax
   44ba8:	74 0a                	je     W?$ct:PLAYER_CHARACTER$n(iiib)__branch_52
   44baa:	ba c1 ad 00 00       	mov    edx,@obj3:classes_cpp_variable_196                           ; fixup: num: 11146, src obj: 1, src ofs: 0x44bab, dst obj: 3, dst ofs: 0xadc1
   44baf:	e8 bc 38 fc ff       	call   W?$ct:SOUND$n(pna)_
W?$ct:PLAYER_CHARACTER$n(iiib)__branch_52:
   44bb4:	89 86 48 11 00 00    	mov    DWORD PTR [esi+0x1148],eax
   44bba:	b8 88 00 00 00       	mov    eax,0x88
   44bbf:	e8 54 d3 02 00       	call   W?$nwn(ui)pnv
   44bc4:	85 c0                	test   eax,eax
   44bc6:	74 0a                	je     W?$ct:PLAYER_CHARACTER$n(iiib)__branch_53
   44bc8:	ba df ad 00 00       	mov    edx,@obj3:classes_cpp_variable_197                           ; fixup: num: 11145, src obj: 1, src ofs: 0x44bc9, dst obj: 3, dst ofs: 0xaddf
   44bcd:	e8 9e 38 fc ff       	call   W?$ct:SOUND$n(pna)_
W?$ct:PLAYER_CHARACTER$n(iiib)__branch_53:
   44bd2:	c7 86 6c 11 00 00 01 00 00 00 	mov    DWORD PTR [esi+0x116c],0x1
   44bdc:	c7 86 34 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x1134],0x2
   44be6:	c7 86 80 11 00 00 04 00 00 00 	mov    DWORD PTR [esi+0x1180],0x4
   44bf0:	c7 86 3c 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x113c],0x2
   44bfa:	89 86 4c 11 00 00    	mov    DWORD PTR [esi+0x114c],eax
   44c00:	e9 3d 03 00 00       	jmp    W?$ct:PLAYER_CHARACTER$n(iiib)__branch_72
W?$ct:PLAYER_CHARACTER$n(iiib)__reference_16:
   44c05:	c7 86 80 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1180],0x3
   44c0f:	8b 96 8c 11 00 00    	mov    edx,DWORD PTR [esi+0x118c]
   44c15:	c7 86 3c 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x113c],0x2
   44c1f:	83 c2 02             	add    edx,0x2
   44c22:	b8 88 00 00 00       	mov    eax,0x88
   44c27:	89 96 8c 11 00 00    	mov    DWORD PTR [esi+0x118c],edx
   44c2d:	e8 e6 d2 02 00       	call   W?$nwn(ui)pnv
   44c32:	85 c0                	test   eax,eax
   44c34:	74 0a                	je     W?$ct:PLAYER_CHARACTER$n(iiib)__branch_54
   44c36:	ba fd ad 00 00       	mov    edx,@obj3:classes_cpp_variable_198                           ; fixup: num: 11150, src obj: 1, src ofs: 0x44c37, dst obj: 3, dst ofs: 0xadfd
   44c3b:	e8 30 38 fc ff       	call   W?$ct:SOUND$n(pna)_
W?$ct:PLAYER_CHARACTER$n(iiib)__branch_54:
   44c40:	89 86 48 11 00 00    	mov    DWORD PTR [esi+0x1148],eax
   44c46:	b8 88 00 00 00       	mov    eax,0x88
   44c4b:	e8 c8 d2 02 00       	call   W?$nwn(ui)pnv
   44c50:	85 c0                	test   eax,eax
   44c52:	74 0a                	je     W?$ct:PLAYER_CHARACTER$n(iiib)__branch_55
   44c54:	ba 1a ae 00 00       	mov    edx,@obj3:classes_cpp_variable_199                           ; fixup: num: 11149, src obj: 1, src ofs: 0x44c55, dst obj: 3, dst ofs: 0xae1a
   44c59:	e8 12 38 fc ff       	call   W?$ct:SOUND$n(pna)_
W?$ct:PLAYER_CHARACTER$n(iiib)__branch_55:
   44c5e:	89 86 4c 11 00 00    	mov    DWORD PTR [esi+0x114c],eax
   44c64:	b8 88 00 00 00       	mov    eax,0x88
   44c69:	e8 aa d2 02 00       	call   W?$nwn(ui)pnv
   44c6e:	85 c0                	test   eax,eax
   44c70:	74 0a                	je     W?$ct:PLAYER_CHARACTER$n(iiib)__branch_56
   44c72:	ba 37 ae 00 00       	mov    edx,@obj3:classes_cpp_variable_200                           ; fixup: num: 11148, src obj: 1, src ofs: 0x44c73, dst obj: 3, dst ofs: 0xae37
   44c77:	e8 f4 37 fc ff       	call   W?$ct:SOUND$n(pna)_
W?$ct:PLAYER_CHARACTER$n(iiib)__branch_56:
   44c7c:	c7 86 34 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1134],0x3
   44c86:	89 86 50 11 00 00    	mov    DWORD PTR [esi+0x1150],eax
   44c8c:	e9 b1 02 00 00       	jmp    W?$ct:PLAYER_CHARACTER$n(iiib)__branch_72
W?$ct:PLAYER_CHARACTER$n(iiib)__reference_17:
   44c91:	8b 86 8c 11 00 00    	mov    eax,DWORD PTR [esi+0x118c]
   44c97:	c7 86 80 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1180],0x3
   44ca1:	40                   	inc    eax
   44ca2:	89 86 8c 11 00 00    	mov    DWORD PTR [esi+0x118c],eax
   44ca8:	b8 88 00 00 00       	mov    eax,0x88
   44cad:	c7 86 3c 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x113c],0x2
   44cb7:	e8 5c d2 02 00       	call   W?$nwn(ui)pnv
   44cbc:	85 c0                	test   eax,eax
   44cbe:	74 0a                	je     W?$ct:PLAYER_CHARACTER$n(iiib)__branch_57
   44cc0:	ba 54 ae 00 00       	mov    edx,@obj3:classes_cpp_variable_201                           ; fixup: num: 11147, src obj: 1, src ofs: 0x44cc1, dst obj: 3, dst ofs: 0xae54
   44cc5:	e8 a6 37 fc ff       	call   W?$ct:SOUND$n(pna)_
W?$ct:PLAYER_CHARACTER$n(iiib)__branch_57:
   44cca:	89 86 48 11 00 00    	mov    DWORD PTR [esi+0x1148],eax
   44cd0:	b8 88 00 00 00       	mov    eax,0x88
   44cd5:	e8 3e d2 02 00       	call   W?$nwn(ui)pnv
   44cda:	85 c0                	test   eax,eax
   44cdc:	74 0a                	je     W?$ct:PLAYER_CHARACTER$n(iiib)__branch_58
   44cde:	ba 71 ae 00 00       	mov    edx,@obj3:classes_cpp_variable_202                           ; fixup: num: 11154, src obj: 1, src ofs: 0x44cdf, dst obj: 3, dst ofs: 0xae71
   44ce3:	e8 88 37 fc ff       	call   W?$ct:SOUND$n(pna)_
W?$ct:PLAYER_CHARACTER$n(iiib)__branch_58:
   44ce8:	89 86 4c 11 00 00    	mov    DWORD PTR [esi+0x114c],eax
   44cee:	b8 88 00 00 00       	mov    eax,0x88
   44cf3:	e8 20 d2 02 00       	call   W?$nwn(ui)pnv
   44cf8:	85 c0                	test   eax,eax
   44cfa:	74 0a                	je     W?$ct:PLAYER_CHARACTER$n(iiib)__branch_59
   44cfc:	ba 8e ae 00 00       	mov    edx,@obj3:classes_cpp_variable_203                           ; fixup: num: 11153, src obj: 1, src ofs: 0x44cfd, dst obj: 3, dst ofs: 0xae8e
   44d01:	e8 6a 37 fc ff       	call   W?$ct:SOUND$n(pna)_
W?$ct:PLAYER_CHARACTER$n(iiib)__branch_59:
   44d06:	c7 86 34 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1134],0x3
   44d10:	89 86 50 11 00 00    	mov    DWORD PTR [esi+0x1150],eax
   44d16:	e9 27 02 00 00       	jmp    W?$ct:PLAYER_CHARACTER$n(iiib)__branch_72
W?$ct:PLAYER_CHARACTER$n(iiib)__reference_18:
   44d1b:	c7 86 80 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1180],0x3
   44d25:	8b ae 8c 11 00 00    	mov    ebp,DWORD PTR [esi+0x118c]
   44d2b:	c7 86 3c 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x113c],0x2
   44d35:	83 c5 02             	add    ebp,0x2
   44d38:	b8 88 00 00 00       	mov    eax,0x88
   44d3d:	89 ae 8c 11 00 00    	mov    DWORD PTR [esi+0x118c],ebp
   44d43:	e8 d0 d1 02 00       	call   W?$nwn(ui)pnv
   44d48:	85 c0                	test   eax,eax
   44d4a:	74 0a                	je     W?$ct:PLAYER_CHARACTER$n(iiib)__branch_60
   44d4c:	ba ab ae 00 00       	mov    edx,@obj3:classes_cpp_variable_204                           ; fixup: num: 11152, src obj: 1, src ofs: 0x44d4d, dst obj: 3, dst ofs: 0xaeab
   44d51:	e8 1a 37 fc ff       	call   W?$ct:SOUND$n(pna)_
W?$ct:PLAYER_CHARACTER$n(iiib)__branch_60:
   44d56:	89 86 48 11 00 00    	mov    DWORD PTR [esi+0x1148],eax
   44d5c:	b8 88 00 00 00       	mov    eax,0x88
   44d61:	e8 b2 d1 02 00       	call   W?$nwn(ui)pnv
   44d66:	85 c0                	test   eax,eax
   44d68:	74 0a                	je     W?$ct:PLAYER_CHARACTER$n(iiib)__branch_61
   44d6a:	ba c8 ae 00 00       	mov    edx,@obj3:classes_cpp_variable_205                           ; fixup: num: 11151, src obj: 1, src ofs: 0x44d6b, dst obj: 3, dst ofs: 0xaec8
   44d6f:	e8 fc 36 fc ff       	call   W?$ct:SOUND$n(pna)_
W?$ct:PLAYER_CHARACTER$n(iiib)__branch_61:
   44d74:	89 86 4c 11 00 00    	mov    DWORD PTR [esi+0x114c],eax
   44d7a:	b8 88 00 00 00       	mov    eax,0x88
   44d7f:	e8 94 d1 02 00       	call   W?$nwn(ui)pnv
   44d84:	85 c0                	test   eax,eax
   44d86:	74 0a                	je     W?$ct:PLAYER_CHARACTER$n(iiib)__branch_62
   44d88:	ba e5 ae 00 00       	mov    edx,@obj3:classes_cpp_variable_206                           ; fixup: num: 11158, src obj: 1, src ofs: 0x44d89, dst obj: 3, dst ofs: 0xaee5
   44d8d:	e8 de 36 fc ff       	call   W?$ct:SOUND$n(pna)_
W?$ct:PLAYER_CHARACTER$n(iiib)__branch_62:
   44d92:	c7 86 34 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1134],0x3
   44d9c:	89 86 50 11 00 00    	mov    DWORD PTR [esi+0x1150],eax
   44da2:	e9 9b 01 00 00       	jmp    W?$ct:PLAYER_CHARACTER$n(iiib)__branch_72
W?$ct:PLAYER_CHARACTER$n(iiib)__reference_19:
   44da7:	c7 86 80 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1180],0x3
   44db1:	8b be 8c 11 00 00    	mov    edi,DWORD PTR [esi+0x118c]
   44db7:	c7 86 3c 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x113c],0x2
   44dc1:	47                   	inc    edi
   44dc2:	b8 88 00 00 00       	mov    eax,0x88
   44dc7:	89 be 8c 11 00 00    	mov    DWORD PTR [esi+0x118c],edi
   44dcd:	e8 46 d1 02 00       	call   W?$nwn(ui)pnv
   44dd2:	85 c0                	test   eax,eax
   44dd4:	74 0a                	je     W?$ct:PLAYER_CHARACTER$n(iiib)__branch_63
   44dd6:	ba 02 af 00 00       	mov    edx,@obj3:classes_cpp_variable_207                           ; fixup: num: 11157, src obj: 1, src ofs: 0x44dd7, dst obj: 3, dst ofs: 0xaf02
   44ddb:	e8 90 36 fc ff       	call   W?$ct:SOUND$n(pna)_
W?$ct:PLAYER_CHARACTER$n(iiib)__branch_63:
   44de0:	89 86 48 11 00 00    	mov    DWORD PTR [esi+0x1148],eax
   44de6:	b8 88 00 00 00       	mov    eax,0x88
   44deb:	e8 28 d1 02 00       	call   W?$nwn(ui)pnv
   44df0:	85 c0                	test   eax,eax
   44df2:	74 0a                	je     W?$ct:PLAYER_CHARACTER$n(iiib)__branch_64
   44df4:	ba 1f af 00 00       	mov    edx,@obj3:classes_cpp_variable_208                           ; fixup: num: 11156, src obj: 1, src ofs: 0x44df5, dst obj: 3, dst ofs: 0xaf1f
   44df9:	e8 72 36 fc ff       	call   W?$ct:SOUND$n(pna)_
W?$ct:PLAYER_CHARACTER$n(iiib)__branch_64:
   44dfe:	89 86 4c 11 00 00    	mov    DWORD PTR [esi+0x114c],eax
   44e04:	b8 88 00 00 00       	mov    eax,0x88
   44e09:	e8 0a d1 02 00       	call   W?$nwn(ui)pnv
   44e0e:	85 c0                	test   eax,eax
   44e10:	74 0a                	je     W?$ct:PLAYER_CHARACTER$n(iiib)__branch_65
   44e12:	ba 3c af 00 00       	mov    edx,@obj3:classes_cpp_variable_209                           ; fixup: num: 11155, src obj: 1, src ofs: 0x44e13, dst obj: 3, dst ofs: 0xaf3c
   44e17:	e8 54 36 fc ff       	call   W?$ct:SOUND$n(pna)_
W?$ct:PLAYER_CHARACTER$n(iiib)__branch_65:
   44e1c:	c7 86 34 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1134],0x3
   44e26:	89 86 50 11 00 00    	mov    DWORD PTR [esi+0x1150],eax
   44e2c:	e9 11 01 00 00       	jmp    W?$ct:PLAYER_CHARACTER$n(iiib)__branch_72
W?$ct:PLAYER_CHARACTER$n(iiib)__reference_20:
   44e31:	c7 86 80 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1180],0x3
   44e3b:	8b 8e 8c 11 00 00    	mov    ecx,DWORD PTR [esi+0x118c]
   44e41:	c7 86 3c 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x113c],0x2
   44e4b:	83 c1 02             	add    ecx,0x2
   44e4e:	b8 88 00 00 00       	mov    eax,0x88
   44e53:	89 8e 8c 11 00 00    	mov    DWORD PTR [esi+0x118c],ecx
   44e59:	e8 ba d0 02 00       	call   W?$nwn(ui)pnv
   44e5e:	85 c0                	test   eax,eax
   44e60:	74 0a                	je     W?$ct:PLAYER_CHARACTER$n(iiib)__branch_66
   44e62:	ba 59 af 00 00       	mov    edx,@obj3:classes_cpp_variable_210                           ; fixup: num: 11161, src obj: 1, src ofs: 0x44e63, dst obj: 3, dst ofs: 0xaf59
   44e67:	e8 04 36 fc ff       	call   W?$ct:SOUND$n(pna)_
W?$ct:PLAYER_CHARACTER$n(iiib)__branch_66:
   44e6c:	89 86 48 11 00 00    	mov    DWORD PTR [esi+0x1148],eax
   44e72:	b8 88 00 00 00       	mov    eax,0x88
   44e77:	e8 9c d0 02 00       	call   W?$nwn(ui)pnv
   44e7c:	85 c0                	test   eax,eax
   44e7e:	74 0a                	je     W?$ct:PLAYER_CHARACTER$n(iiib)__branch_67
   44e80:	ba 76 af 00 00       	mov    edx,@obj3:classes_cpp_variable_211                           ; fixup: num: 11160, src obj: 1, src ofs: 0x44e81, dst obj: 3, dst ofs: 0xaf76
   44e85:	e8 e6 35 fc ff       	call   W?$ct:SOUND$n(pna)_
W?$ct:PLAYER_CHARACTER$n(iiib)__branch_67:
   44e8a:	89 86 4c 11 00 00    	mov    DWORD PTR [esi+0x114c],eax
   44e90:	b8 88 00 00 00       	mov    eax,0x88
   44e95:	e8 7e d0 02 00       	call   W?$nwn(ui)pnv
   44e9a:	85 c0                	test   eax,eax
   44e9c:	74 0a                	je     W?$ct:PLAYER_CHARACTER$n(iiib)__branch_68
   44e9e:	ba 93 af 00 00       	mov    edx,@obj3:classes_cpp_variable_212                           ; fixup: num: 11159, src obj: 1, src ofs: 0x44e9f, dst obj: 3, dst ofs: 0xaf93
   44ea3:	e8 c8 35 fc ff       	call   W?$ct:SOUND$n(pna)_
W?$ct:PLAYER_CHARACTER$n(iiib)__branch_68:
   44ea8:	c7 86 34 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1134],0x3
   44eb2:	89 86 50 11 00 00    	mov    DWORD PTR [esi+0x1150],eax
   44eb8:	e9 85 00 00 00       	jmp    W?$ct:PLAYER_CHARACTER$n(iiib)__branch_72
W?$ct:PLAYER_CHARACTER$n(iiib)__reference_21:
   44ebd:	c7 86 80 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x1180],0x2
   44ec7:	8b 9e 8c 11 00 00    	mov    ebx,DWORD PTR [esi+0x118c]
   44ecd:	c7 86 3c 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x113c],0x2
   44ed7:	43                   	inc    ebx
   44ed8:	b8 88 00 00 00       	mov    eax,0x88
   44edd:	89 9e 8c 11 00 00    	mov    DWORD PTR [esi+0x118c],ebx
   44ee3:	e8 30 d0 02 00       	call   W?$nwn(ui)pnv
   44ee8:	85 c0                	test   eax,eax
   44eea:	74 0a                	je     W?$ct:PLAYER_CHARACTER$n(iiib)__branch_69
   44eec:	ba b0 af 00 00       	mov    edx,@obj3:classes_cpp_variable_213                           ; fixup: num: 11165, src obj: 1, src ofs: 0x44eed, dst obj: 3, dst ofs: 0xafb0
   44ef1:	e8 7a 35 fc ff       	call   W?$ct:SOUND$n(pna)_
W?$ct:PLAYER_CHARACTER$n(iiib)__branch_69:
   44ef6:	89 86 48 11 00 00    	mov    DWORD PTR [esi+0x1148],eax
   44efc:	b8 88 00 00 00       	mov    eax,0x88
   44f01:	e8 12 d0 02 00       	call   W?$nwn(ui)pnv
   44f06:	85 c0                	test   eax,eax
   44f08:	74 0a                	je     W?$ct:PLAYER_CHARACTER$n(iiib)__branch_70
   44f0a:	ba cd af 00 00       	mov    edx,@obj3:classes_cpp_variable_214                           ; fixup: num: 11164, src obj: 1, src ofs: 0x44f0b, dst obj: 3, dst ofs: 0xafcd
   44f0f:	e8 5c 35 fc ff       	call   W?$ct:SOUND$n(pna)_
W?$ct:PLAYER_CHARACTER$n(iiib)__branch_70:
   44f14:	89 86 4c 11 00 00    	mov    DWORD PTR [esi+0x114c],eax
   44f1a:	b8 88 00 00 00       	mov    eax,0x88
   44f1f:	e8 f4 cf 02 00       	call   W?$nwn(ui)pnv
   44f24:	85 c0                	test   eax,eax
   44f26:	74 0a                	je     W?$ct:PLAYER_CHARACTER$n(iiib)__branch_71
   44f28:	ba ea af 00 00       	mov    edx,@obj3:classes_cpp_variable_215                           ; fixup: num: 11163, src obj: 1, src ofs: 0x44f29, dst obj: 3, dst ofs: 0xafea
   44f2d:	e8 3e 35 fc ff       	call   W?$ct:SOUND$n(pna)_
W?$ct:PLAYER_CHARACTER$n(iiib)__branch_71:
   44f32:	c7 86 34 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1134],0x3
   44f3c:	89 86 50 11 00 00    	mov    DWORD PTR [esi+0x1150],eax
W?$ct:PLAYER_CHARACTER$n(iiib)__branch_72:
   44f42:	8b ae 34 11 00 00    	mov    ebp,DWORD PTR [esi+0x1134]
   44f48:	31 c9                	xor    ecx,ecx
   44f4a:	85 ed                	test   ebp,ebp
   44f4c:	7e 2a                	jle    W?$ct:PLAYER_CHARACTER$n(iiib)__branch_75
   44f4e:	89 f7                	mov    edi,esi
W?$ct:PLAYER_CHARACTER$n(iiib)__branch_73:
   44f50:	83 bf 48 11 00 00 00 	cmp    DWORD PTR [edi+0x1148],0x0
   44f57:	75 11                	jne    W?$ct:PLAYER_CHARACTER$n(iiib)__branch_74
   44f59:	bb 07 b0 00 00       	mov    ebx,@obj3:classes_cpp_variable_216                           ; fixup: num: 11162, src obj: 1, src ofs: 0x44f5a, dst obj: 3, dst ofs: 0xb007
   44f5e:	ba 53 10 00 00       	mov    edx,0x1053
   44f63:	31 c0                	xor    eax,eax
   44f65:	e8 c6 30 ff ff       	call   _error_report
W?$ct:PLAYER_CHARACTER$n(iiib)__branch_74:
   44f6a:	41                   	inc    ecx
   44f6b:	8b 86 34 11 00 00    	mov    eax,DWORD PTR [esi+0x1134]
   44f71:	83 c7 04             	add    edi,0x4
   44f74:	39 c1                	cmp    ecx,eax
   44f76:	7c d8                	jl     W?$ct:PLAYER_CHARACTER$n(iiib)__branch_73
W?$ct:PLAYER_CHARACTER$n(iiib)__branch_75:
   44f78:	8b 8e 80 10 00 00    	mov    ecx,DWORD PTR [esi+0x1080]
   44f7e:	89 f7                	mov    edi,esi
   44f80:	85 c9                	test   ecx,ecx
   44f82:	74 14                	je     W?$ct:PLAYER_CHARACTER$n(iiib)__branch_76
   44f84:	b8 64 00 00 00       	mov    eax,0x64
   44f89:	89 c2                	mov    edx,eax
   44f8b:	c1 fa 1f             	sar    edx,0x1f
   44f8e:	f7 f9                	idiv   ecx
   44f90:	89 86 60 10 00 00    	mov    DWORD PTR [esi+0x1060],eax
   44f96:	eb 06                	jmp    W?$ct:PLAYER_CHARACTER$n(iiib)__branch_77
W?$ct:PLAYER_CHARACTER$n(iiib)__branch_76:
   44f98:	89 8e 60 10 00 00    	mov    DWORD PTR [esi+0x1060],ecx
W?$ct:PLAYER_CHARACTER$n(iiib)__branch_77:
   44f9e:	3b 8f 68 10 00 00    	cmp    ecx,DWORD PTR [edi+0x1068]
   44fa4:	74 10                	je     W?$ct:PLAYER_CHARACTER$n(iiib)__branch_78
   44fa6:	c7 87 5c 10 00 00 00 00 00 00 	mov    DWORD PTR [edi+0x105c],0x0
   44fb0:	89 8f 68 10 00 00    	mov    DWORD PTR [edi+0x1068],ecx
W?$ct:PLAYER_CHARACTER$n(iiib)__branch_78:
   44fb6:	83 7e 38 05          	cmp    DWORD PTR [esi+0x38],0x5
   44fba:	74 0a                	je     W?$ct:PLAYER_CHARACTER$n(iiib)__branch_79
   44fbc:	c7 86 80 10 00 00 11 00 00 00 	mov    DWORD PTR [esi+0x1080],0x11
W?$ct:PLAYER_CHARACTER$n(iiib)__branch_79:
   44fc6:	8b 46 40             	mov    eax,DWORD PTR [esi+0x40]
   44fc9:	8b 56 28             	mov    edx,DWORD PTR [esi+0x28]
   44fcc:	8b 5e 30             	mov    ebx,DWORD PTR [esi+0x30]
   44fcf:	29 d0                	sub    eax,edx
   44fd1:	29 d8                	sub    eax,ebx
   44fd3:	8b 4e 24             	mov    ecx,DWORD PTR [esi+0x24]
   44fd6:	89 c3                	mov    ebx,eax
   44fd8:	8b 46 3c             	mov    eax,DWORD PTR [esi+0x3c]
   44fdb:	29 c8                	sub    eax,ecx
   44fdd:	89 c1                	mov    ecx,eax
   44fdf:	8b 46 2c             	mov    eax,DWORD PTR [esi+0x2c]
   44fe2:	89 c2                	mov    edx,eax
   44fe4:	c1 fa 1f             	sar    edx,0x1f
   44fe7:	2b c2                	sub    eax,edx
   44fe9:	d1 f8                	sar    eax,1
   44feb:	ff 76 1c             	push   DWORD PTR [esi+0x1c]
   44fee:	89 ca                	mov    edx,ecx
   44ff0:	29 c2                	sub    edx,eax
   44ff2:	89 f0                	mov    eax,esi
   44ff4:	e8 f7 66 ff ff       	call   set_xyz
   44ff9:	89 f0                	mov    eax,esi
   44ffb:	5d                   	pop    ebp
   44ffc:	5f                   	pop    edi
   44ffd:	5e                   	pop    esi
   44ffe:	c2 04 00             	ret    0x4
   45001:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   45007:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
   4500d:	8d 40 00             	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'W?$dt:PLAYER_CHARACTER$n()_'        -
;-------------------------------------------------
W?$dt:PLAYER_CHARACTER$n()_:
   45010:	8b 90 84 11 00 00    	mov    edx,DWORD PTR [eax+0x1184]
   45016:	89 15 b4 5b 02 00    	mov    DWORD PTR ds:@obj3:pc_hit_points,edx                         ; fixup: num: 11263, src obj: 1, src ofs: 0x45018, dst obj: 3, dst ofs: 0x25bb4
   4501c:	8b 90 9c 11 00 00    	mov    edx,DWORD PTR [eax+0x119c]
   45022:	89 15 b8 5b 02 00    	mov    DWORD PTR ds:@obj3:pc_tiredness,edx                          ; fixup: num: 11262, src obj: 1, src ofs: 0x45024, dst obj: 3, dst ofs: 0x25bb8
   45028:	ba 01 00 00 00       	mov    edx,0x1
   4502d:	8d 40 00             	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'W?$dt:NON_PLAYER_CHARACTER$n()_'    -
;-------------------------------------------------
W?$dt:NON_PLAYER_CHARACTER$n()_:
   45030:	53                   	push   ebx
   45031:	51                   	push   ecx
   45032:	56                   	push   esi
   45033:	57                   	push   edi
   45034:	55                   	push   ebp
   45035:	89 c3                	mov    ebx,eax
   45037:	83 b8 a8 11 00 00 00 	cmp    DWORD PTR [eax+0x11a8],0x0
   4503e:	0f 84 40 01 00 00    	je     W?$dt:NON_PLAYER_CHARACTER$n()__branch_7
   45044:	30 e4                	xor    ah,ah
   45046:	c7 83 b0 11 00 00 00 00 00 00 	mov    DWORD PTR [ebx+0x11b0],0x0
   45050:	88 25 9c 60 02 00    	mov    BYTE PTR ds:@obj3:combat_mode,ah                             ; fixup: num: 11266, src obj: 1, src ofs: 0x45052, dst obj: 3, dst ofs: 0x2609c
   45056:	8b 83 b0 11 00 00    	mov    eax,DWORD PTR [ebx+0x11b0]
   4505c:	8b 93 a8 11 00 00    	mov    edx,DWORD PTR [ebx+0x11a8]
   45062:	89 83 ac 11 00 00    	mov    DWORD PTR [ebx+0x11ac],eax
   45068:	8b 8a 84 10 00 00    	mov    ecx,DWORD PTR [edx+0x1084]
   4506e:	85 c9                	test   ecx,ecx
   45070:	7c 21                	jl     W?$dt:NON_PLAYER_CHARACTER$n()__branch_1
   45072:	8d 71 ff             	lea    esi,[ecx-0x1]
   45075:	89 b2 84 10 00 00    	mov    DWORD PTR [edx+0x1084],esi
   4507b:	83 fe ff             	cmp    esi,0xffffffff
   4507e:	75 13                	jne    W?$dt:NON_PLAYER_CHARACTER$n()__branch_1
   45080:	83 ba 64 10 00 00 00 	cmp    DWORD PTR [edx+0x1064],0x0
   45087:	7c 0a                	jl     W?$dt:NON_PLAYER_CHARACTER$n()__branch_1
   45089:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 11265, src obj: 1, src ofs: 0x4508a, dst obj: 3, dst ofs: 0x25a88
   4508e:	e8 5d 76 00 00       	call   remove_bitmap
W?$dt:NON_PLAYER_CHARACTER$n()__branch_1:
   45093:	8b 93 a8 11 00 00    	mov    edx,DWORD PTR [ebx+0x11a8]
   45099:	85 d2                	test   edx,edx
   4509b:	0f 84 d9 00 00 00    	je     W?$dt:NON_PLAYER_CHARACTER$n()__branch_6
   450a1:	bf 04 5a 02 00       	mov    edi,@obj3:_id_holder                                         ; fixup: num: 11264, src obj: 1, src ofs: 0x450a2, dst obj: 3, dst ofs: 0x25a04
   450a6:	8b 72 10             	mov    esi,DWORD PTR [edx+0x10]
   450a9:	57                   	push   edi
W?$dt:NON_PLAYER_CHARACTER$n()__branch_2:
   450aa:	8a 06                	mov    al,BYTE PTR [esi]
   450ac:	88 07                	mov    BYTE PTR [edi],al
   450ae:	3c 00                	cmp    al,0x0
   450b0:	74 10                	je     W?$dt:NON_PLAYER_CHARACTER$n()__branch_3
   450b2:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   450b5:	83 c6 02             	add    esi,0x2
   450b8:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   450bb:	83 c7 02             	add    edi,0x2
   450be:	3c 00                	cmp    al,0x0
   450c0:	75 e8                	jne    W?$dt:NON_PLAYER_CHARACTER$n()__branch_2
W?$dt:NON_PLAYER_CHARACTER$n()__branch_3:
   450c2:	5f                   	pop    edi
   450c3:	c6 42 51 00          	mov    BYTE PTR [edx+0x51],0x0
   450c7:	c7 82 64 10 00 00 ff ff ff ff 	mov    DWORD PTR [edx+0x1064],0xffffffff
   450d1:	8a 42 51             	mov    al,BYTE PTR [edx+0x51]
   450d4:	88 42 4c             	mov    BYTE PTR [edx+0x4c],al
   450d7:	8b 82 64 10 00 00    	mov    eax,DWORD PTR [edx+0x1064]
   450dd:	89 82 7c 10 00 00    	mov    DWORD PTR [edx+0x107c],eax
   450e3:	db 82 7c 10 00 00    	fild   DWORD PTR [edx+0x107c]
   450e9:	d9 52 1c             	fst    DWORD PTR [edx+0x1c]
   450ec:	e8 57 0c 03 00       	call   __CHP
   450f1:	db 5a 40             	fistp  DWORD PTR [edx+0x40]
   450f4:	c7 82 84 10 00 00 ff ff ff ff 	mov    DWORD PTR [edx+0x1084],0xffffffff
   450fe:	c6 42 50 01          	mov    BYTE PTR [edx+0x50],0x1
   45102:	89 82 68 10 00 00    	mov    DWORD PTR [edx+0x1068],eax
   45108:	89 82 6c 10 00 00    	mov    DWORD PTR [edx+0x106c],eax
   4510e:	89 82 78 10 00 00    	mov    DWORD PTR [edx+0x1078],eax
   45114:	8b 42 40             	mov    eax,DWORD PTR [edx+0x40]
   45117:	89 d5                	mov    ebp,edx
   45119:	89 42 3c             	mov    DWORD PTR [edx+0x3c],eax
   4511c:	89 d1                	mov    ecx,edx
   4511e:	8b 82 68 10 00 00    	mov    eax,DWORD PTR [edx+0x1068]
   45124:	c7 82 60 10 00 00 07 00 00 00 	mov    DWORD PTR [edx+0x1060],0x7
   4512e:	83 f8 0e             	cmp    eax,0xe
   45131:	74 14                	je     W?$dt:NON_PLAYER_CHARACTER$n()__branch_4
   45133:	c7 82 68 10 00 00 0e 00 00 00 	mov    DWORD PTR [edx+0x1068],0xe
   4513d:	c7 82 5c 10 00 00 00 00 00 00 	mov    DWORD PTR [edx+0x105c],0x0
W?$dt:NON_PLAYER_CHARACTER$n()__branch_4:
   45147:	8b 51 58             	mov    edx,DWORD PTR [ecx+0x58]
   4514a:	85 d2                	test   edx,edx
   4514c:	74 0e                	je     W?$dt:NON_PLAYER_CHARACTER$n()__branch_5
   4514e:	89 d0                	mov    eax,edx
   45150:	e8 93 c2 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   45155:	c7 41 58 00 00 00 00 	mov    DWORD PTR [ecx+0x58],0x0
W?$dt:NON_PLAYER_CHARACTER$n()__branch_5:
   4515c:	c7 41 28 ff ff ff ff 	mov    DWORD PTR [ecx+0x28],0xffffffff
   45163:	8b 41 28             	mov    eax,DWORD PTR [ecx+0x28]
   45166:	ba 01 00 00 00       	mov    edx,0x1
   4516b:	89 41 24             	mov    DWORD PTR [ecx+0x24],eax
   4516e:	89 e8                	mov    eax,ebp
   45170:	e8 2b 62 ff ff       	call   W?$dt:BTMAP$n()_
   45175:	e8 fe ce 02 00       	call   W?$dln(pnv)v
W?$dt:NON_PLAYER_CHARACTER$n()__branch_6:
   4517a:	c7 83 a8 11 00 00 00 00 00 00 	mov    DWORD PTR [ebx+0x11a8],0x0
W?$dt:NON_PLAYER_CHARACTER$n()__branch_7:
   45184:	ba 8b a0 00 00       	mov    edx,@obj3:classes_cpp_variable_53                            ; fixup: num: 11267, src obj: 1, src ofs: 0x45185, dst obj: 3, dst ofs: 0xa08b
   45189:	8b 43 10             	mov    eax,DWORD PTR [ebx+0x10]
   4518c:	e8 9f 12 03 00       	call   strcmp_
   45191:	85 c0                	test   eax,eax
   45193:	75 3f                	jne    W?$dt:NON_PLAYER_CHARACTER$n()__branch_10
   45195:	a1 f8 59 02 00       	mov    eax,ds:@obj3:stef_scrm                                       ; fixup: num: 11270, src obj: 1, src ofs: 0x45196, dst obj: 3, dst ofs: 0x259f8
   4519a:	85 c0                	test   eax,eax
   4519c:	74 0c                	je     W?$dt:NON_PLAYER_CHARACTER$n()__branch_8
   4519e:	31 d2                	xor    edx,edx
   451a0:	e8 8b 38 fc ff       	call   W?$dt:SOUND$n()_
   451a5:	e8 ce ce 02 00       	call   W?$dln(pnv)v
W?$dt:NON_PLAYER_CHARACTER$n()__branch_8:
   451aa:	a1 fc 59 02 00       	mov    eax,ds:@obj3:stef_scrm_variable_1                            ; fixup: num: 11269, src obj: 1, src ofs: 0x451ab, dst obj: 3, dst ofs: 0x259fc
   451af:	85 c0                	test   eax,eax
   451b1:	74 0c                	je     W?$dt:NON_PLAYER_CHARACTER$n()__branch_9
   451b3:	31 d2                	xor    edx,edx
   451b5:	e8 76 38 fc ff       	call   W?$dt:SOUND$n()_
   451ba:	e8 b9 ce 02 00       	call   W?$dln(pnv)v
W?$dt:NON_PLAYER_CHARACTER$n()__branch_9:
   451bf:	a1 00 5a 02 00       	mov    eax,ds:@obj3:stef_scrm_variable_2                            ; fixup: num: 11268, src obj: 1, src ofs: 0x451c0, dst obj: 3, dst ofs: 0x25a00
   451c4:	85 c0                	test   eax,eax
   451c6:	74 0c                	je     W?$dt:NON_PLAYER_CHARACTER$n()__branch_10
   451c8:	31 d2                	xor    edx,edx
   451ca:	e8 61 38 fc ff       	call   W?$dt:SOUND$n()_
   451cf:	e8 a4 ce 02 00       	call   W?$dln(pnv)v
W?$dt:NON_PLAYER_CHARACTER$n()__branch_10:
   451d4:	8b 8b 48 11 00 00    	mov    ecx,DWORD PTR [ebx+0x1148]
   451da:	85 c9                	test   ecx,ecx
   451dc:	74 10                	je     W?$dt:NON_PLAYER_CHARACTER$n()__branch_11
   451de:	89 c8                	mov    eax,ecx
   451e0:	74 0c                	je     W?$dt:NON_PLAYER_CHARACTER$n()__branch_11
   451e2:	31 d2                	xor    edx,edx
   451e4:	e8 47 38 fc ff       	call   W?$dt:SOUND$n()_
   451e9:	e8 8a ce 02 00       	call   W?$dln(pnv)v
W?$dt:NON_PLAYER_CHARACTER$n()__branch_11:
   451ee:	8b b3 4c 11 00 00    	mov    esi,DWORD PTR [ebx+0x114c]
   451f4:	85 f6                	test   esi,esi
   451f6:	74 10                	je     W?$dt:NON_PLAYER_CHARACTER$n()__branch_12
   451f8:	89 f0                	mov    eax,esi
   451fa:	74 0c                	je     W?$dt:NON_PLAYER_CHARACTER$n()__branch_12
   451fc:	31 d2                	xor    edx,edx
   451fe:	e8 2d 38 fc ff       	call   W?$dt:SOUND$n()_
   45203:	e8 70 ce 02 00       	call   W?$dln(pnv)v
W?$dt:NON_PLAYER_CHARACTER$n()__branch_12:
   45208:	8b bb 50 11 00 00    	mov    edi,DWORD PTR [ebx+0x1150]
   4520e:	85 ff                	test   edi,edi
   45210:	74 10                	je     W?$dt:NON_PLAYER_CHARACTER$n()__branch_13
   45212:	89 f8                	mov    eax,edi
   45214:	74 0c                	je     W?$dt:NON_PLAYER_CHARACTER$n()__branch_13
   45216:	31 d2                	xor    edx,edx
   45218:	e8 13 38 fc ff       	call   W?$dt:SOUND$n()_
   4521d:	e8 56 ce 02 00       	call   W?$dln(pnv)v
W?$dt:NON_PLAYER_CHARACTER$n()__branch_13:
   45222:	8b ab 54 11 00 00    	mov    ebp,DWORD PTR [ebx+0x1154]
   45228:	85 ed                	test   ebp,ebp
   4522a:	74 10                	je     W?$dt:NON_PLAYER_CHARACTER$n()__branch_14
   4522c:	89 e8                	mov    eax,ebp
   4522e:	74 0c                	je     W?$dt:NON_PLAYER_CHARACTER$n()__branch_14
   45230:	31 d2                	xor    edx,edx
   45232:	e8 f9 37 fc ff       	call   W?$dt:SOUND$n()_
   45237:	e8 3c ce 02 00       	call   W?$dln(pnv)v
W?$dt:NON_PLAYER_CHARACTER$n()__branch_14:
   4523c:	8b 83 58 11 00 00    	mov    eax,DWORD PTR [ebx+0x1158]
   45242:	85 c0                	test   eax,eax
   45244:	74 0e                	je     W?$dt:NON_PLAYER_CHARACTER$n()__branch_15
   45246:	74 0c                	je     W?$dt:NON_PLAYER_CHARACTER$n()__branch_15
   45248:	31 d2                	xor    edx,edx
   4524a:	e8 e1 37 fc ff       	call   W?$dt:SOUND$n()_
   4524f:	e8 24 ce 02 00       	call   W?$dln(pnv)v
W?$dt:NON_PLAYER_CHARACTER$n()__branch_15:
   45254:	8b 93 5c 11 00 00    	mov    edx,DWORD PTR [ebx+0x115c]
   4525a:	85 d2                	test   edx,edx
   4525c:	74 10                	je     W?$dt:NON_PLAYER_CHARACTER$n()__branch_16
   4525e:	89 d0                	mov    eax,edx
   45260:	74 0c                	je     W?$dt:NON_PLAYER_CHARACTER$n()__branch_16
   45262:	31 d2                	xor    edx,edx
   45264:	e8 c7 37 fc ff       	call   W?$dt:SOUND$n()_
   45269:	e8 0a ce 02 00       	call   W?$dln(pnv)v
W?$dt:NON_PLAYER_CHARACTER$n()__branch_16:
   4526e:	8b 8b 60 11 00 00    	mov    ecx,DWORD PTR [ebx+0x1160]
   45274:	85 c9                	test   ecx,ecx
   45276:	74 10                	je     W?$dt:NON_PLAYER_CHARACTER$n()__branch_17
   45278:	89 c8                	mov    eax,ecx
   4527a:	74 0c                	je     W?$dt:NON_PLAYER_CHARACTER$n()__branch_17
   4527c:	31 d2                	xor    edx,edx
   4527e:	e8 ad 37 fc ff       	call   W?$dt:SOUND$n()_
   45283:	e8 f0 cd 02 00       	call   W?$dln(pnv)v
W?$dt:NON_PLAYER_CHARACTER$n()__branch_17:
   45288:	8b b3 64 11 00 00    	mov    esi,DWORD PTR [ebx+0x1164]
   4528e:	85 f6                	test   esi,esi
   45290:	74 10                	je     W?$dt:NON_PLAYER_CHARACTER$n()__branch_18
   45292:	89 f0                	mov    eax,esi
   45294:	74 0c                	je     W?$dt:NON_PLAYER_CHARACTER$n()__branch_18
   45296:	31 d2                	xor    edx,edx
   45298:	e8 93 37 fc ff       	call   W?$dt:SOUND$n()_
   4529d:	e8 d6 cd 02 00       	call   W?$dln(pnv)v
W?$dt:NON_PLAYER_CHARACTER$n()__branch_18:
   452a2:	8b bb 68 11 00 00    	mov    edi,DWORD PTR [ebx+0x1168]
   452a8:	85 ff                	test   edi,edi
   452aa:	74 10                	je     W?$dt:NON_PLAYER_CHARACTER$n()__branch_19
   452ac:	89 f8                	mov    eax,edi
   452ae:	74 0c                	je     W?$dt:NON_PLAYER_CHARACTER$n()__branch_19
   452b0:	31 d2                	xor    edx,edx
   452b2:	e8 79 37 fc ff       	call   W?$dt:SOUND$n()_
   452b7:	e8 bc cd 02 00       	call   W?$dln(pnv)v
W?$dt:NON_PLAYER_CHARACTER$n()__branch_19:
   452bc:	bf 04 5a 02 00       	mov    edi,@obj3:_id_holder                                         ; fixup: num: 11271, src obj: 1, src ofs: 0x452bd, dst obj: 3, dst ofs: 0x25a04
   452c1:	8b 73 10             	mov    esi,DWORD PTR [ebx+0x10]
   452c4:	57                   	push   edi
W?$dt:NON_PLAYER_CHARACTER$n()__branch_20:
   452c5:	8a 06                	mov    al,BYTE PTR [esi]
   452c7:	88 07                	mov    BYTE PTR [edi],al
   452c9:	3c 00                	cmp    al,0x0
   452cb:	74 10                	je     W?$dt:NON_PLAYER_CHARACTER$n()__branch_21
   452cd:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   452d0:	83 c6 02             	add    esi,0x2
   452d3:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   452d6:	83 c7 02             	add    edi,0x2
   452d9:	3c 00                	cmp    al,0x0
   452db:	75 e8                	jne    W?$dt:NON_PLAYER_CHARACTER$n()__branch_20
W?$dt:NON_PLAYER_CHARACTER$n()__branch_21:
   452dd:	5f                   	pop    edi
   452de:	c6 43 51 00          	mov    BYTE PTR [ebx+0x51],0x0
   452e2:	c7 83 64 10 00 00 ff ff ff ff 	mov    DWORD PTR [ebx+0x1064],0xffffffff
   452ec:	8a 43 51             	mov    al,BYTE PTR [ebx+0x51]
   452ef:	88 43 4c             	mov    BYTE PTR [ebx+0x4c],al
   452f2:	8b 83 64 10 00 00    	mov    eax,DWORD PTR [ebx+0x1064]
   452f8:	89 83 7c 10 00 00    	mov    DWORD PTR [ebx+0x107c],eax
   452fe:	db 83 7c 10 00 00    	fild   DWORD PTR [ebx+0x107c]
   45304:	d9 53 1c             	fst    DWORD PTR [ebx+0x1c]
   45307:	e8 3c 0a 03 00       	call   __CHP
   4530c:	db 5b 40             	fistp  DWORD PTR [ebx+0x40]
   4530f:	c7 83 84 10 00 00 ff ff ff ff 	mov    DWORD PTR [ebx+0x1084],0xffffffff
   45319:	c6 43 50 01          	mov    BYTE PTR [ebx+0x50],0x1
   4531d:	c7 83 60 10 00 00 07 00 00 00 	mov    DWORD PTR [ebx+0x1060],0x7
   45327:	89 83 68 10 00 00    	mov    DWORD PTR [ebx+0x1068],eax
   4532d:	89 83 6c 10 00 00    	mov    DWORD PTR [ebx+0x106c],eax
   45333:	89 d9                	mov    ecx,ebx
   45335:	89 83 78 10 00 00    	mov    DWORD PTR [ebx+0x1078],eax
   4533b:	89 da                	mov    edx,ebx
   4533d:	8b 43 40             	mov    eax,DWORD PTR [ebx+0x40]
   45340:	8b ab 68 10 00 00    	mov    ebp,DWORD PTR [ebx+0x1068]
   45346:	89 43 3c             	mov    DWORD PTR [ebx+0x3c],eax
   45349:	83 fd 0e             	cmp    ebp,0xe
   4534c:	74 14                	je     W?$dt:NON_PLAYER_CHARACTER$n()__branch_22
   4534e:	c7 83 68 10 00 00 0e 00 00 00 	mov    DWORD PTR [ebx+0x1068],0xe
   45358:	c7 83 5c 10 00 00 00 00 00 00 	mov    DWORD PTR [ebx+0x105c],0x0
W?$dt:NON_PLAYER_CHARACTER$n()__branch_22:
   45362:	8b 42 58             	mov    eax,DWORD PTR [edx+0x58]
   45365:	85 c0                	test   eax,eax
   45367:	74 0c                	je     W?$dt:NON_PLAYER_CHARACTER$n()__branch_23
   45369:	e8 7a c0 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   4536e:	c7 42 58 00 00 00 00 	mov    DWORD PTR [edx+0x58],0x0
W?$dt:NON_PLAYER_CHARACTER$n()__branch_23:
   45375:	c7 42 28 ff ff ff ff 	mov    DWORD PTR [edx+0x28],0xffffffff
   4537c:	8b 42 28             	mov    eax,DWORD PTR [edx+0x28]
   4537f:	89 42 24             	mov    DWORD PTR [edx+0x24],eax
   45382:	ba 01 00 00 00       	mov    edx,0x1
   45387:	89 c8                	mov    eax,ecx
   45389:	e8 12 60 ff ff       	call   W?$dt:BTMAP$n()_
   4538e:	5d                   	pop    ebp
   4538f:	5f                   	pop    edi
   45390:	5e                   	pop    esi
   45391:	59                   	pop    ecx
   45392:	5b                   	pop    ebx
   45393:	c3                   	ret    
   45394:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   4539a:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]

;-------------------------------------------------
;  Function 'update_mod_76_4'                    -
;-------------------------------------------------
update_mod_76_4:
   453a0:	53                   	push   ebx
   453a1:	51                   	push   ecx
   453a2:	52                   	push   edx
   453a3:	89 c2                	mov    edx,eax
   453a5:	e8 58 cd 02 00       	call   clock_
   453aa:	a3 a8 5b 02 00       	mov    ds:@obj3:wait_for_player,eax                                 ; fixup: num: 11280, src obj: 1, src ofs: 0x453ab, dst obj: 3, dst ofs: 0x25ba8
   453af:	8b 5a 24             	mov    ebx,DWORD PTR [edx+0x24]
   453b2:	8b 42 3c             	mov    eax,DWORD PTR [edx+0x3c]
   453b5:	01 d8                	add    eax,ebx
   453b7:	8b 4a 28             	mov    ecx,DWORD PTR [edx+0x28]
   453ba:	a3 ac 5b 02 00       	mov    ds:@obj3:pc_real_x,eax                                       ; fixup: num: 11279, src obj: 1, src ofs: 0x453bb, dst obj: 3, dst ofs: 0x25bac
   453bf:	8b 42 40             	mov    eax,DWORD PTR [edx+0x40]
   453c2:	01 c8                	add    eax,ecx
   453c4:	a3 b0 5b 02 00       	mov    ds:@obj3:pc_real_y,eax                                       ; fixup: num: 11278, src obj: 1, src ofs: 0x453c5, dst obj: 3, dst ofs: 0x25bb0
   453c9:	80 3d 9c 60 02 00 00 	cmp    BYTE PTR ds:@obj3:combat_mode,0x0                            ; fixup: num: 11277, src obj: 1, src ofs: 0x453cb, dst obj: 3, dst ofs: 0x2609c
   453d0:	74 08                	je     update_mod_76_4_branch_1
   453d2:	a1 a0 60 02 00       	mov    eax,ds:@obj3:combat_plane                                    ; fixup: num: 11276, src obj: 1, src ofs: 0x453d3, dst obj: 3, dst ofs: 0x260a0
   453d7:	89 42 1c             	mov    DWORD PTR [edx+0x1c],eax
update_mod_76_4_branch_1:
   453da:	89 d0                	mov    eax,edx
   453dc:	e8 8f e3 ff ff       	call   update_combat
   453e1:	80 ba a1 11 00 00 16 	cmp    BYTE PTR [edx+0x11a1],0x16
   453e8:	7c 1a                	jl     update_mod_76_4_branch_2
   453ea:	80 ba a0 11 00 00 16 	cmp    BYTE PTR [edx+0x11a0],0x16
   453f1:	0f 8d af 05 00 00    	jge    update_mod_76_4_branch_68
   453f7:	83 ba 84 11 00 00 00 	cmp    DWORD PTR [edx+0x1184],0x0
   453fe:	0f 8e a2 05 00 00    	jle    update_mod_76_4_branch_68
update_mod_76_4_branch_2:
   45404:	80 3d 29 59 02 00 00 	cmp    BYTE PTR ds:@obj3:ScanCode_variable_2,0x0                    ; fixup: num: 11275, src obj: 1, src ofs: 0x45406, dst obj: 3, dst ofs: 0x25929
   4540b:	0f 84 78 01 00 00    	je     update_mod_76_4_branch_20
   45411:	e8 ec cc 02 00       	call   clock_
   45416:	3b 05 74 5a 02 00    	cmp    eax,DWORD PTR ds:@obj3:next_attack                           ; fixup: num: 11274, src obj: 1, src ofs: 0x45418, dst obj: 3, dst ofs: 0x25a74
   4541c:	0f 82 84 05 00 00    	jb     update_mod_76_4_branch_68
   45422:	e8 db cc 02 00       	call   clock_
   45427:	83 c0 19             	add    eax,0x19
   4542a:	a3 74 5a 02 00       	mov    ds:@obj3:next_attack,eax                                     ; fixup: num: 11273, src obj: 1, src ofs: 0x4542b, dst obj: 3, dst ofs: 0x25a74
   4542f:	e8 ce cc 02 00       	call   clock_
   45434:	c7 82 ac 10 00 00 ff ff ff ff 	mov    DWORD PTR [edx+0x10ac],0xffffffff
   4543e:	c7 82 b4 10 00 00 00 00 c6 c2 	mov    DWORD PTR [edx+0x10b4],0xc2c60000
   45448:	a3 a8 5b 02 00       	mov    ds:@obj3:wait_for_player,eax                                 ; fixup: num: 11272, src obj: 1, src ofs: 0x45449, dst obj: 3, dst ofs: 0x25ba8
   4544d:	c7 82 24 11 00 00 ff ff ff ff 	mov    DWORD PTR [edx+0x1124],0xffffffff
   45457:	80 3d 59 59 02 00 00 	cmp    BYTE PTR ds:@obj3:ScanCode_variable_6,0x0                    ; fixup: num: 11283, src obj: 1, src ofs: 0x45459, dst obj: 3, dst ofs: 0x25959
   4545e:	74 0c                	je     update_mod_76_4_branch_3
   45460:	c6 82 a1 11 00 00 1a 	mov    BYTE PTR [edx+0x11a1],0x1a
   45467:	e9 ec 04 00 00       	jmp    update_mod_76_4_branch_65
update_mod_76_4_branch_3:
   4546c:	80 3d 57 59 02 00 00 	cmp    BYTE PTR ds:@obj3:ScanCode_variable_5,0x0                    ; fixup: num: 11282, src obj: 1, src ofs: 0x4546e, dst obj: 3, dst ofs: 0x25957
   45473:	74 0c                	je     update_mod_76_4_branch_4
   45475:	c6 82 a1 11 00 00 17 	mov    BYTE PTR [edx+0x11a1],0x17
   4547c:	e9 d7 04 00 00       	jmp    update_mod_76_4_branch_65
update_mod_76_4_branch_4:
   45481:	80 3d 54 59 02 00 00 	cmp    BYTE PTR ds:@obj3:ScanCode_variable_4,0x0                    ; fixup: num: 11281, src obj: 1, src ofs: 0x45483, dst obj: 3, dst ofs: 0x25954
   45488:	0f 84 7e 00 00 00    	je     update_mod_76_4_branch_12
   4548e:	8a 9a a0 11 00 00    	mov    bl,BYTE PTR [edx+0x11a0]
   45494:	80 fb 16             	cmp    bl,0x16
   45497:	74 0a                	je     update_mod_76_4_branch_5
   45499:	80 fb 17             	cmp    bl,0x17
   4549c:	74 05                	je     update_mod_76_4_branch_5
   4549e:	80 fb 18             	cmp    bl,0x18
   454a1:	75 09                	jne    update_mod_76_4_branch_6
update_mod_76_4_branch_5:
   454a3:	c6 82 a1 11 00 00 01 	mov    BYTE PTR [edx+0x11a1],0x1
   454aa:	eb 16                	jmp    update_mod_76_4_branch_8
update_mod_76_4_branch_6:
   454ac:	80 fb 19             	cmp    bl,0x19
   454af:	74 0a                	je     update_mod_76_4_branch_7
   454b1:	80 fb 1a             	cmp    bl,0x1a
   454b4:	74 05                	je     update_mod_76_4_branch_7
   454b6:	80 fb 1b             	cmp    bl,0x1b
   454b9:	75 07                	jne    update_mod_76_4_branch_8
update_mod_76_4_branch_7:
   454bb:	c6 82 a1 11 00 00 02 	mov    BYTE PTR [edx+0x11a1],0x2
update_mod_76_4_branch_8:
   454c2:	8a 9a a0 11 00 00    	mov    bl,BYTE PTR [edx+0x11a0]
   454c8:	80 fb 02             	cmp    bl,0x2
   454cb:	74 0f                	je     update_mod_76_4_branch_9
   454cd:	80 fb 0e             	cmp    bl,0xe
   454d0:	74 0a                	je     update_mod_76_4_branch_9
   454d2:	80 fb 08             	cmp    bl,0x8
   454d5:	74 05                	je     update_mod_76_4_branch_9
   454d7:	80 fb 3a             	cmp    bl,0x3a
   454da:	75 0c                	jne    update_mod_76_4_branch_10
update_mod_76_4_branch_9:
   454dc:	c6 82 a1 11 00 00 1b 	mov    BYTE PTR [edx+0x11a1],0x1b
   454e3:	e9 70 04 00 00       	jmp    update_mod_76_4_branch_65
update_mod_76_4_branch_10:
   454e8:	80 fb 01             	cmp    bl,0x1
   454eb:	74 13                	je     update_mod_76_4_branch_11
   454ed:	80 fb 07             	cmp    bl,0x7
   454f0:	74 0e                	je     update_mod_76_4_branch_11
   454f2:	80 fb 0f             	cmp    bl,0xf
   454f5:	74 09                	je     update_mod_76_4_branch_11
   454f7:	80 fb 39             	cmp    bl,0x39
   454fa:	0f 85 58 04 00 00    	jne    update_mod_76_4_branch_65
update_mod_76_4_branch_11:
   45500:	c6 82 a1 11 00 00 18 	mov    BYTE PTR [edx+0x11a1],0x18
   45507:	e9 4c 04 00 00       	jmp    update_mod_76_4_branch_65
update_mod_76_4_branch_12:
   4550c:	80 3d 5c 59 02 00 00 	cmp    BYTE PTR ds:@obj3:ScanCode_variable_7,0x0                    ; fixup: num: 11285, src obj: 1, src ofs: 0x4550e, dst obj: 3, dst ofs: 0x2595c
   45513:	0f 84 3f 04 00 00    	je     update_mod_76_4_branch_65
   45519:	8a 82 a0 11 00 00    	mov    al,BYTE PTR [edx+0x11a0]
   4551f:	3c 16                	cmp    al,0x16
   45521:	74 08                	je     update_mod_76_4_branch_13
   45523:	3c 17                	cmp    al,0x17
   45525:	74 04                	je     update_mod_76_4_branch_13
   45527:	3c 18                	cmp    al,0x18
   45529:	75 09                	jne    update_mod_76_4_branch_14
update_mod_76_4_branch_13:
   4552b:	c6 82 a1 11 00 00 01 	mov    BYTE PTR [edx+0x11a1],0x1
   45532:	eb 13                	jmp    update_mod_76_4_branch_16
update_mod_76_4_branch_14:
   45534:	3c 19                	cmp    al,0x19
   45536:	74 08                	je     update_mod_76_4_branch_15
   45538:	3c 1a                	cmp    al,0x1a
   4553a:	74 04                	je     update_mod_76_4_branch_15
   4553c:	3c 1b                	cmp    al,0x1b
   4553e:	75 07                	jne    update_mod_76_4_branch_16
update_mod_76_4_branch_15:
   45540:	c6 82 a1 11 00 00 02 	mov    BYTE PTR [edx+0x11a1],0x2
update_mod_76_4_branch_16:
   45547:	8a 82 a0 11 00 00    	mov    al,BYTE PTR [edx+0x11a0]
   4554d:	3c 02                	cmp    al,0x2
   4554f:	74 0c                	je     update_mod_76_4_branch_17
   45551:	3c 0e                	cmp    al,0xe
   45553:	74 08                	je     update_mod_76_4_branch_17
   45555:	3c 08                	cmp    al,0x8
   45557:	74 04                	je     update_mod_76_4_branch_17
   45559:	3c 3a                	cmp    al,0x3a
   4555b:	75 0c                	jne    update_mod_76_4_branch_18
update_mod_76_4_branch_17:
   4555d:	c6 82 a1 11 00 00 19 	mov    BYTE PTR [edx+0x11a1],0x19
   45564:	e9 ef 03 00 00       	jmp    update_mod_76_4_branch_65
update_mod_76_4_branch_18:
   45569:	3c 01                	cmp    al,0x1
   4556b:	74 10                	je     update_mod_76_4_branch_19
   4556d:	3c 07                	cmp    al,0x7
   4556f:	74 0c                	je     update_mod_76_4_branch_19
   45571:	3c 0f                	cmp    al,0xf
   45573:	74 08                	je     update_mod_76_4_branch_19
   45575:	3c 39                	cmp    al,0x39
   45577:	0f 85 db 03 00 00    	jne    update_mod_76_4_branch_65
update_mod_76_4_branch_19:
   4557d:	c6 82 a1 11 00 00 16 	mov    BYTE PTR [edx+0x11a1],0x16
   45584:	e9 cf 03 00 00       	jmp    update_mod_76_4_branch_65
update_mod_76_4_branch_20:
   45589:	80 3d 42 59 02 00 00 	cmp    BYTE PTR ds:@obj3:ScanCode_variable_3,0x0                    ; fixup: num: 11284, src obj: 1, src ofs: 0x4558b, dst obj: 3, dst ofs: 0x25942
   45590:	0f 84 cd 01 00 00    	je     update_mod_76_4_branch_47
   45596:	c7 82 ac 10 00 00 ff ff ff ff 	mov    DWORD PTR [edx+0x10ac],0xffffffff
   455a0:	c7 82 b4 10 00 00 00 00 c6 c2 	mov    DWORD PTR [edx+0x10b4],0xc2c60000
   455aa:	c7 82 24 11 00 00 ff ff ff ff 	mov    DWORD PTR [edx+0x1124],0xffffffff
   455b4:	80 3d 54 59 02 00 00 	cmp    BYTE PTR ds:@obj3:ScanCode_variable_4,0x0                    ; fixup: num: 11287, src obj: 1, src ofs: 0x455b6, dst obj: 3, dst ofs: 0x25954
   455bb:	0f 84 89 00 00 00    	je     update_mod_76_4_branch_30
   455c1:	8a 82 a0 11 00 00    	mov    al,BYTE PTR [edx+0x11a0]
   455c7:	3c 16                	cmp    al,0x16
   455c9:	74 08                	je     update_mod_76_4_branch_21
   455cb:	3c 17                	cmp    al,0x17
   455cd:	74 04                	je     update_mod_76_4_branch_21
   455cf:	3c 18                	cmp    al,0x18
   455d1:	75 09                	jne    update_mod_76_4_branch_22
update_mod_76_4_branch_21:
   455d3:	c6 82 a1 11 00 00 01 	mov    BYTE PTR [edx+0x11a1],0x1
   455da:	eb 13                	jmp    update_mod_76_4_branch_24
update_mod_76_4_branch_22:
   455dc:	3c 19                	cmp    al,0x19
   455de:	74 08                	je     update_mod_76_4_branch_23
   455e0:	3c 1a                	cmp    al,0x1a
   455e2:	74 04                	je     update_mod_76_4_branch_23
   455e4:	3c 1b                	cmp    al,0x1b
   455e6:	75 07                	jne    update_mod_76_4_branch_24
update_mod_76_4_branch_23:
   455e8:	c6 82 a1 11 00 00 02 	mov    BYTE PTR [edx+0x11a1],0x2
update_mod_76_4_branch_24:
   455ef:	8a 82 a0 11 00 00    	mov    al,BYTE PTR [edx+0x11a0]
   455f5:	3c 02                	cmp    al,0x2
   455f7:	74 0c                	je     update_mod_76_4_branch_25
   455f9:	3c 0e                	cmp    al,0xe
   455fb:	74 08                	je     update_mod_76_4_branch_25
   455fd:	3c 08                	cmp    al,0x8
   455ff:	74 04                	je     update_mod_76_4_branch_25
   45601:	3c 3a                	cmp    al,0x3a
   45603:	75 0c                	jne    update_mod_76_4_branch_26
update_mod_76_4_branch_25:
   45605:	c6 82 a1 11 00 00 12 	mov    BYTE PTR [edx+0x11a1],0x12
   4560c:	e9 d4 00 00 00       	jmp    update_mod_76_4_branch_41
update_mod_76_4_branch_26:
   45611:	3c 01                	cmp    al,0x1
   45613:	74 0c                	je     update_mod_76_4_branch_27
   45615:	3c 07                	cmp    al,0x7
   45617:	74 08                	je     update_mod_76_4_branch_27
   45619:	3c 0f                	cmp    al,0xf
   4561b:	74 04                	je     update_mod_76_4_branch_27
   4561d:	3c 39                	cmp    al,0x39
   4561f:	75 0c                	jne    update_mod_76_4_branch_28
update_mod_76_4_branch_27:
   45621:	c6 82 a1 11 00 00 13 	mov    BYTE PTR [edx+0x11a1],0x13
   45628:	e9 b8 00 00 00       	jmp    update_mod_76_4_branch_41
update_mod_76_4_branch_28:
   4562d:	3c 12                	cmp    al,0x12
   4562f:	75 0c                	jne    update_mod_76_4_branch_29
   45631:	c6 82 a1 11 00 00 02 	mov    BYTE PTR [edx+0x11a1],0x2
   45638:	e9 a8 00 00 00       	jmp    update_mod_76_4_branch_41
update_mod_76_4_branch_29:
   4563d:	3c 13                	cmp    al,0x13
   4563f:	0f 85 a0 00 00 00    	jne    update_mod_76_4_branch_41
   45645:	e9 94 00 00 00       	jmp    update_mod_76_4_branch_40
update_mod_76_4_branch_30:
   4564a:	80 3d 5c 59 02 00 00 	cmp    BYTE PTR ds:@obj3:ScanCode_variable_7,0x0                    ; fixup: num: 11286, src obj: 1, src ofs: 0x4564c, dst obj: 3, dst ofs: 0x2595c
   45651:	0f 84 8e 00 00 00    	je     update_mod_76_4_branch_41
   45657:	8a 9a a0 11 00 00    	mov    bl,BYTE PTR [edx+0x11a0]
   4565d:	80 fb 16             	cmp    bl,0x16
   45660:	74 0a                	je     update_mod_76_4_branch_31
   45662:	80 fb 17             	cmp    bl,0x17
   45665:	74 05                	je     update_mod_76_4_branch_31
   45667:	80 fb 18             	cmp    bl,0x18
   4566a:	75 09                	jne    update_mod_76_4_branch_32
update_mod_76_4_branch_31:
   4566c:	c6 82 a1 11 00 00 01 	mov    BYTE PTR [edx+0x11a1],0x1
   45673:	eb 16                	jmp    update_mod_76_4_branch_34
update_mod_76_4_branch_32:
   45675:	80 fb 19             	cmp    bl,0x19
   45678:	74 0a                	je     update_mod_76_4_branch_33
   4567a:	80 fb 1a             	cmp    bl,0x1a
   4567d:	74 05                	je     update_mod_76_4_branch_33
   4567f:	80 fb 1b             	cmp    bl,0x1b
   45682:	75 07                	jne    update_mod_76_4_branch_34
update_mod_76_4_branch_33:
   45684:	c6 82 a1 11 00 00 02 	mov    BYTE PTR [edx+0x11a1],0x2
update_mod_76_4_branch_34:
   4568b:	8a 9a a0 11 00 00    	mov    bl,BYTE PTR [edx+0x11a0]
   45691:	80 fb 02             	cmp    bl,0x2
   45694:	74 0f                	je     update_mod_76_4_branch_35
   45696:	80 fb 0e             	cmp    bl,0xe
   45699:	74 0a                	je     update_mod_76_4_branch_35
   4569b:	80 fb 08             	cmp    bl,0x8
   4569e:	74 05                	je     update_mod_76_4_branch_35
   456a0:	80 fb 3a             	cmp    bl,0x3a
   456a3:	75 09                	jne    update_mod_76_4_branch_36
update_mod_76_4_branch_35:
   456a5:	c6 82 a1 11 00 00 14 	mov    BYTE PTR [edx+0x11a1],0x14
   456ac:	eb 37                	jmp    update_mod_76_4_branch_41
update_mod_76_4_branch_36:
   456ae:	80 fb 01             	cmp    bl,0x1
   456b1:	74 0f                	je     update_mod_76_4_branch_37
   456b3:	80 fb 07             	cmp    bl,0x7
   456b6:	74 0a                	je     update_mod_76_4_branch_37
   456b8:	80 fb 0f             	cmp    bl,0xf
   456bb:	74 05                	je     update_mod_76_4_branch_37
   456bd:	80 fb 39             	cmp    bl,0x39
   456c0:	75 09                	jne    update_mod_76_4_branch_38
update_mod_76_4_branch_37:
   456c2:	c6 82 a1 11 00 00 15 	mov    BYTE PTR [edx+0x11a1],0x15
   456c9:	eb 1a                	jmp    update_mod_76_4_branch_41
update_mod_76_4_branch_38:
   456cb:	80 fb 14             	cmp    bl,0x14
   456ce:	75 09                	jne    update_mod_76_4_branch_39
   456d0:	c6 82 a1 11 00 00 02 	mov    BYTE PTR [edx+0x11a1],0x2
   456d7:	eb 0c                	jmp    update_mod_76_4_branch_41
update_mod_76_4_branch_39:
   456d9:	80 fb 15             	cmp    bl,0x15
   456dc:	75 07                	jne    update_mod_76_4_branch_41
update_mod_76_4_branch_40:
   456de:	c6 82 a1 11 00 00 01 	mov    BYTE PTR [edx+0x11a1],0x1
update_mod_76_4_branch_41:
   456e5:	80 3d 57 59 02 00 00 	cmp    BYTE PTR ds:@obj3:ScanCode_variable_5,0x0                    ; fixup: num: 11288, src obj: 1, src ofs: 0x456e7, dst obj: 3, dst ofs: 0x25957
   456ec:	74 36                	je     update_mod_76_4_branch_44
   456ee:	8a 8a a0 11 00 00    	mov    cl,BYTE PTR [edx+0x11a0]
   456f4:	80 f9 19             	cmp    cl,0x19
   456f7:	74 0a                	je     update_mod_76_4_branch_42
   456f9:	80 f9 1a             	cmp    cl,0x1a
   456fc:	74 05                	je     update_mod_76_4_branch_42
   456fe:	80 f9 1b             	cmp    cl,0x1b
   45701:	75 0c                	jne    update_mod_76_4_branch_43
update_mod_76_4_branch_42:
   45703:	c6 82 a1 11 00 00 02 	mov    BYTE PTR [edx+0x11a1],0x2
   4570a:	e9 49 02 00 00       	jmp    update_mod_76_4_branch_65
update_mod_76_4_branch_43:
   4570f:	80 f9 02             	cmp    cl,0x2
   45712:	0f 85 40 02 00 00    	jne    update_mod_76_4_branch_65
   45718:	c6 82 a1 11 00 00 08 	mov    BYTE PTR [edx+0x11a1],0x8
   4571f:	e9 34 02 00 00       	jmp    update_mod_76_4_branch_65
update_mod_76_4_branch_44:
   45724:	80 3d 59 59 02 00 00 	cmp    BYTE PTR ds:@obj3:ScanCode_variable_6,0x0                    ; fixup: num: 11291, src obj: 1, src ofs: 0x45726, dst obj: 3, dst ofs: 0x25959
   4572b:	0f 84 27 02 00 00    	je     update_mod_76_4_branch_65
   45731:	8a 82 a0 11 00 00    	mov    al,BYTE PTR [edx+0x11a0]
   45737:	3c 16                	cmp    al,0x16
   45739:	74 08                	je     update_mod_76_4_branch_45
   4573b:	3c 17                	cmp    al,0x17
   4573d:	74 04                	je     update_mod_76_4_branch_45
   4573f:	3c 18                	cmp    al,0x18
   45741:	75 0c                	jne    update_mod_76_4_branch_46
update_mod_76_4_branch_45:
   45743:	c6 82 a1 11 00 00 01 	mov    BYTE PTR [edx+0x11a1],0x1
   4574a:	e9 09 02 00 00       	jmp    update_mod_76_4_branch_65
update_mod_76_4_branch_46:
   4574f:	3c 01                	cmp    al,0x1
   45751:	0f 85 01 02 00 00    	jne    update_mod_76_4_branch_65
   45757:	c6 82 a1 11 00 00 0f 	mov    BYTE PTR [edx+0x11a1],0xf
   4575e:	e9 f5 01 00 00       	jmp    update_mod_76_4_branch_65
update_mod_76_4_branch_47:
   45763:	80 3d 59 59 02 00 00 	cmp    BYTE PTR ds:@obj3:ScanCode_variable_6,0x0                    ; fixup: num: 11290, src obj: 1, src ofs: 0x45765, dst obj: 3, dst ofs: 0x25959
   4576a:	0f 84 6e 00 00 00    	je     update_mod_76_4_branch_51
   45770:	e8 8d c9 02 00       	call   clock_
   45775:	c7 82 ac 10 00 00 ff ff ff ff 	mov    DWORD PTR [edx+0x10ac],0xffffffff
   4577f:	c7 82 b4 10 00 00 00 00 c6 c2 	mov    DWORD PTR [edx+0x10b4],0xc2c60000
   45789:	a3 a8 5b 02 00       	mov    ds:@obj3:wait_for_player,eax                                 ; fixup: num: 11289, src obj: 1, src ofs: 0x4578a, dst obj: 3, dst ofs: 0x25ba8
   4578e:	8a aa a0 11 00 00    	mov    ch,BYTE PTR [edx+0x11a0]
   45794:	c7 82 24 11 00 00 00 00 00 00 	mov    DWORD PTR [edx+0x1124],0x0
   4579e:	80 fd 19             	cmp    ch,0x19
   457a1:	74 0a                	je     update_mod_76_4_branch_48
   457a3:	80 fd 1a             	cmp    ch,0x1a
   457a6:	74 05                	je     update_mod_76_4_branch_48
   457a8:	80 fd 1b             	cmp    ch,0x1b
   457ab:	75 07                	jne    update_mod_76_4_branch_49
update_mod_76_4_branch_48:
   457ad:	c6 82 a1 11 00 00 02 	mov    BYTE PTR [edx+0x11a1],0x2
update_mod_76_4_branch_49:
   457b4:	8a 9a a0 11 00 00    	mov    bl,BYTE PTR [edx+0x11a0]
   457ba:	80 fb 02             	cmp    bl,0x2
   457bd:	74 13                	je     update_mod_76_4_branch_50
   457bf:	80 fb 0e             	cmp    bl,0xe
   457c2:	74 0e                	je     update_mod_76_4_branch_50
   457c4:	80 fb 08             	cmp    bl,0x8
   457c7:	74 09                	je     update_mod_76_4_branch_50
   457c9:	80 fb 3a             	cmp    bl,0x3a
   457cc:	0f 85 31 ff ff ff    	jne    update_mod_76_4_branch_42
update_mod_76_4_branch_50:
   457d2:	c6 82 a1 11 00 00 0e 	mov    BYTE PTR [edx+0x11a1],0xe
   457d9:	e9 7a 01 00 00       	jmp    update_mod_76_4_branch_65
update_mod_76_4_branch_51:
   457de:	80 3d 57 59 02 00 00 	cmp    BYTE PTR ds:@obj3:ScanCode_variable_5,0x0                    ; fixup: num: 11294, src obj: 1, src ofs: 0x457e0, dst obj: 3, dst ofs: 0x25957
   457e5:	0f 84 6e 00 00 00    	je     update_mod_76_4_branch_55
   457eb:	e8 12 c9 02 00       	call   clock_
   457f0:	c7 82 ac 10 00 00 ff ff ff ff 	mov    DWORD PTR [edx+0x10ac],0xffffffff
   457fa:	c7 82 b4 10 00 00 00 00 c6 c2 	mov    DWORD PTR [edx+0x10b4],0xc2c60000
   45804:	a3 a8 5b 02 00       	mov    ds:@obj3:wait_for_player,eax                                 ; fixup: num: 11293, src obj: 1, src ofs: 0x45805, dst obj: 3, dst ofs: 0x25ba8
   45809:	8a 8a a0 11 00 00    	mov    cl,BYTE PTR [edx+0x11a0]
   4580f:	c7 82 24 11 00 00 00 00 00 00 	mov    DWORD PTR [edx+0x1124],0x0
   45819:	80 f9 16             	cmp    cl,0x16
   4581c:	74 0a                	je     update_mod_76_4_branch_52
   4581e:	80 f9 17             	cmp    cl,0x17
   45821:	74 05                	je     update_mod_76_4_branch_52
   45823:	80 f9 18             	cmp    cl,0x18
   45826:	75 07                	jne    update_mod_76_4_branch_53
update_mod_76_4_branch_52:
   45828:	c6 82 a1 11 00 00 01 	mov    BYTE PTR [edx+0x11a1],0x1
update_mod_76_4_branch_53:
   4582f:	8a a2 a0 11 00 00    	mov    ah,BYTE PTR [edx+0x11a0]
   45835:	80 fc 01             	cmp    ah,0x1
   45838:	74 13                	je     update_mod_76_4_branch_54
   4583a:	80 fc 07             	cmp    ah,0x7
   4583d:	74 0e                	je     update_mod_76_4_branch_54
   4583f:	80 fc 0f             	cmp    ah,0xf
   45842:	74 09                	je     update_mod_76_4_branch_54
   45844:	80 fc 39             	cmp    ah,0x39
   45847:	0f 85 f6 fe ff ff    	jne    update_mod_76_4_branch_45
update_mod_76_4_branch_54:
   4584d:	c6 82 a1 11 00 00 07 	mov    BYTE PTR [edx+0x11a1],0x7
   45854:	e9 ff 00 00 00       	jmp    update_mod_76_4_branch_65
update_mod_76_4_branch_55:
   45859:	80 3d 54 59 02 00 00 	cmp    BYTE PTR ds:@obj3:ScanCode_variable_4,0x0                    ; fixup: num: 11292, src obj: 1, src ofs: 0x4585b, dst obj: 3, dst ofs: 0x25954
   45860:	0f 84 79 00 00 00    	je     update_mod_76_4_branch_60
   45866:	80 3d 9c 60 02 00 00 	cmp    BYTE PTR ds:@obj3:combat_mode,0x0                            ; fixup: num: 11298, src obj: 1, src ofs: 0x45868, dst obj: 3, dst ofs: 0x2609c
   4586d:	0f 85 6c 00 00 00    	jne    update_mod_76_4_branch_60
   45873:	e8 8a c8 02 00       	call   clock_
   45878:	c7 82 b4 10 00 00 00 00 c6 c2 	mov    DWORD PTR [edx+0x10b4],0xc2c60000
   45882:	c7 82 ac 10 00 00 ff ff ff ff 	mov    DWORD PTR [edx+0x10ac],0xffffffff
   4588c:	a3 a8 5b 02 00       	mov    ds:@obj3:wait_for_player,eax                                 ; fixup: num: 11297, src obj: 1, src ofs: 0x4588d, dst obj: 3, dst ofs: 0x25ba8
   45891:	8a 8a a0 11 00 00    	mov    cl,BYTE PTR [edx+0x11a0]
   45897:	c7 82 24 11 00 00 00 00 00 00 	mov    DWORD PTR [edx+0x1124],0x0
   458a1:	80 f9 16             	cmp    cl,0x16
   458a4:	74 0a                	je     update_mod_76_4_branch_56
   458a6:	80 f9 17             	cmp    cl,0x17
   458a9:	74 05                	je     update_mod_76_4_branch_56
   458ab:	80 f9 18             	cmp    cl,0x18
   458ae:	75 07                	jne    update_mod_76_4_branch_57
update_mod_76_4_branch_56:
   458b0:	c6 82 a1 11 00 00 01 	mov    BYTE PTR [edx+0x11a1],0x1
update_mod_76_4_branch_57:
   458b7:	8a a2 a0 11 00 00    	mov    ah,BYTE PTR [edx+0x11a0]
   458bd:	80 fc 03             	cmp    ah,0x3
   458c0:	74 05                	je     update_mod_76_4_branch_58
   458c2:	80 fc 0b             	cmp    ah,0xb
   458c5:	75 0c                	jne    update_mod_76_4_branch_59
update_mod_76_4_branch_58:
   458c7:	c6 82 a1 11 00 00 0b 	mov    BYTE PTR [edx+0x11a1],0xb
   458ce:	e9 85 00 00 00       	jmp    update_mod_76_4_branch_65
update_mod_76_4_branch_59:
   458d3:	c6 82 a1 11 00 00 03 	mov    BYTE PTR [edx+0x11a1],0x3
   458da:	e9 79 00 00 00       	jmp    update_mod_76_4_branch_65
update_mod_76_4_branch_60:
   458df:	80 3d 5c 59 02 00 00 	cmp    BYTE PTR ds:@obj3:ScanCode_variable_7,0x0                    ; fixup: num: 11296, src obj: 1, src ofs: 0x458e1, dst obj: 3, dst ofs: 0x2595c
   458e6:	0f 84 6c 00 00 00    	je     update_mod_76_4_branch_65
   458ec:	80 3d 9c 60 02 00 00 	cmp    BYTE PTR ds:@obj3:combat_mode,0x0                            ; fixup: num: 11295, src obj: 1, src ofs: 0x458ee, dst obj: 3, dst ofs: 0x2609c
   458f3:	75 63                	jne    update_mod_76_4_branch_65
   458f5:	e8 08 c8 02 00       	call   clock_
   458fa:	c7 82 b4 10 00 00 00 00 c6 c2 	mov    DWORD PTR [edx+0x10b4],0xc2c60000
   45904:	c7 82 ac 10 00 00 ff ff ff ff 	mov    DWORD PTR [edx+0x10ac],0xffffffff
   4590e:	a3 a8 5b 02 00       	mov    ds:@obj3:wait_for_player,eax                                 ; fixup: num: 11301, src obj: 1, src ofs: 0x4590f, dst obj: 3, dst ofs: 0x25ba8
   45913:	8a aa a0 11 00 00    	mov    ch,BYTE PTR [edx+0x11a0]
   45919:	c7 82 24 11 00 00 00 00 00 00 	mov    DWORD PTR [edx+0x1124],0x0
   45923:	80 fd 19             	cmp    ch,0x19
   45926:	74 0a                	je     update_mod_76_4_branch_61
   45928:	80 fd 1a             	cmp    ch,0x1a
   4592b:	74 05                	je     update_mod_76_4_branch_61
   4592d:	80 fd 1b             	cmp    ch,0x1b
   45930:	75 07                	jne    update_mod_76_4_branch_62
update_mod_76_4_branch_61:
   45932:	c6 82 a1 11 00 00 02 	mov    BYTE PTR [edx+0x11a1],0x2
update_mod_76_4_branch_62:
   45939:	8a 9a a0 11 00 00    	mov    bl,BYTE PTR [edx+0x11a0]
   4593f:	84 db                	test   bl,bl
   45941:	74 05                	je     update_mod_76_4_branch_63
   45943:	80 fb 04             	cmp    bl,0x4
   45946:	75 09                	jne    update_mod_76_4_branch_64
update_mod_76_4_branch_63:
   45948:	c6 82 a1 11 00 00 04 	mov    BYTE PTR [edx+0x11a1],0x4
   4594f:	eb 07                	jmp    update_mod_76_4_branch_65
update_mod_76_4_branch_64:
   45951:	c6 82 a1 11 00 00 00 	mov    BYTE PTR [edx+0x11a1],0x0
update_mod_76_4_branch_65:
   45958:	8b 5a 04             	mov    ebx,DWORD PTR [edx+0x4]
   4595b:	a1 ac 5b 02 00       	mov    eax,ds:@obj3:pc_real_x                                       ; fixup: num: 11300, src obj: 1, src ofs: 0x4595c, dst obj: 3, dst ofs: 0x25bac
   45960:	03 03                	add    eax,DWORD PTR [ebx]
   45962:	3d 7b 02 00 00       	cmp    eax,0x27b
   45967:	76 15                	jbe    update_mod_76_4_branch_66
   45969:	8a 8a a0 11 00 00    	mov    cl,BYTE PTR [edx+0x11a0]
   4596f:	80 f9 02             	cmp    cl,0x2
   45972:	74 28                	je     update_mod_76_4_branch_67
   45974:	80 f9 0e             	cmp    cl,0xe
   45977:	74 23                	je     update_mod_76_4_branch_67
   45979:	80 f9 3a             	cmp    cl,0x3a
   4597c:	74 1e                	je     update_mod_76_4_branch_67
update_mod_76_4_branch_66:
   4597e:	83 3d ac 5b 02 00 05 	cmp    DWORD PTR ds:@obj3:pc_real_x,0x5                             ; fixup: num: 11299, src obj: 1, src ofs: 0x45980, dst obj: 3, dst ofs: 0x25bac
   45985:	7d 1f                	jge    update_mod_76_4_branch_68
   45987:	8a a2 a0 11 00 00    	mov    ah,BYTE PTR [edx+0x11a0]
   4598d:	80 fc 01             	cmp    ah,0x1
   45990:	74 0a                	je     update_mod_76_4_branch_67
   45992:	80 fc 07             	cmp    ah,0x7
   45995:	74 05                	je     update_mod_76_4_branch_67
   45997:	80 fc 39             	cmp    ah,0x39
   4599a:	75 0a                	jne    update_mod_76_4_branch_68
update_mod_76_4_branch_67:
   4599c:	c7 82 a0 10 00 00 00 00 00 00 	mov    DWORD PTR [edx+0x10a0],0x0
update_mod_76_4_branch_68:
   459a6:	80 ba a0 11 00 00 38 	cmp    BYTE PTR [edx+0x11a0],0x38
   459ad:	74 1c                	je     update_mod_76_4_branch_70
   459af:	80 7a 4e 00          	cmp    BYTE PTR [edx+0x4e],0x0
   459b3:	74 0b                	je     update_mod_76_4_branch_69
   459b5:	89 d0                	mov    eax,edx
   459b7:	e8 94 7d ff ff       	call   update_mod_76_2
   459bc:	5a                   	pop    edx
   459bd:	59                   	pop    ecx
   459be:	5b                   	pop    ebx
   459bf:	c3                   	ret    
update_mod_76_4_branch_69:
   459c0:	89 d0                	mov    eax,edx
   459c2:	e8 19 71 ff ff       	call   update_mod_76
   459c7:	5a                   	pop    edx
   459c8:	59                   	pop    ecx
   459c9:	5b                   	pop    ebx
   459ca:	c3                   	ret    
update_mod_76_4_branch_70:
   459cb:	b0 01                	mov    al,0x1
   459cd:	5a                   	pop    edx
   459ce:	59                   	pop    ecx
   459cf:	5b                   	pop    ebx
   459d0:	c3                   	ret    
   459d1:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   459d7:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
   459dd:	8d 40 00             	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'check_region'                       -
;-------------------------------------------------
check_region:
   459e0:	53                   	push   ebx
   459e1:	51                   	push   ecx
   459e2:	56                   	push   esi
   459e3:	55                   	push   ebp
   459e4:	83 ec 10             	sub    esp,0x10
   459e7:	89 c1                	mov    ecx,eax
   459e9:	89 d6                	mov    esi,edx
   459eb:	8a 25 9c 60 02 00    	mov    ah,BYTE PTR ds:@obj3:combat_mode                             ; fixup: num: 11303, src obj: 1, src ofs: 0x459ed, dst obj: 3, dst ofs: 0x2609c
   459f1:	8b 1d c0 5a 02 00    	mov    ebx,DWORD PTR ds:@obj3:region_list                           ; fixup: num: 11302, src obj: 1, src ofs: 0x459f3, dst obj: 3, dst ofs: 0x25ac0
   459f7:	84 e4                	test   ah,ah
   459f9:	0f 85 ac 01 00 00    	jne    check_region_branch_17
   459ff:	89 c8                	mov    eax,ecx
   45a01:	e8 fa 5c ff ff       	call   bm_overlaps
   45a06:	84 c0                	test   al,al
   45a08:	0f 84 9d 01 00 00    	je     check_region_branch_17
   45a0e:	db 41 20             	fild   DWORD PTR [ecx+0x20]
   45a11:	d8 41 1c             	fadd   DWORD PTR [ecx+0x1c]
   45a14:	e8 2f 03 03 00       	call   __CHP
   45a19:	db 5c 24 04          	fistp  DWORD PTR [esp+0x4]
   45a1d:	d9 41 1c             	fld    DWORD PTR [ecx+0x1c]
   45a20:	e8 23 03 03 00       	call   __CHP
   45a25:	db 5c 24 08          	fistp  DWORD PTR [esp+0x8]
   45a29:	db 46 20             	fild   DWORD PTR [esi+0x20]
   45a2c:	d8 46 1c             	fadd   DWORD PTR [esi+0x1c]
   45a2f:	e8 14 03 03 00       	call   __CHP
   45a34:	db 5c 24 0c          	fistp  DWORD PTR [esp+0xc]
   45a38:	d9 46 1c             	fld    DWORD PTR [esi+0x1c]
   45a3b:	e8 08 03 03 00       	call   __CHP
   45a40:	db 1c 24             	fistp  DWORD PTR [esp]
   45a43:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
   45a47:	3b 14 24             	cmp    edx,DWORD PTR [esp]
   45a4a:	7d 04                	jge    check_region_branch_1
   45a4c:	30 c0                	xor    al,al
   45a4e:	eb 10                	jmp    check_region_branch_3
check_region_branch_1:
   45a50:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
   45a54:	3b 44 24 08          	cmp    eax,DWORD PTR [esp+0x8]
   45a58:	7d 04                	jge    check_region_branch_2
   45a5a:	30 c0                	xor    al,al
   45a5c:	eb 02                	jmp    check_region_branch_3
check_region_branch_2:
   45a5e:	b0 01                	mov    al,0x1
check_region_branch_3:
   45a60:	84 c0                	test   al,al
   45a62:	0f 84 43 01 00 00    	je     check_region_branch_17
   45a68:	83 7e 34 01          	cmp    DWORD PTR [esi+0x34],0x1
   45a6c:	75 19                	jne    check_region_branch_4
   45a6e:	8a 91 a0 11 00 00    	mov    dl,BYTE PTR [ecx+0x11a0]
   45a74:	80 fa 01             	cmp    dl,0x1
   45a77:	0f 84 57 00 00 00    	je     check_region_branch_7
   45a7d:	80 fa 07             	cmp    dl,0x7
   45a80:	74 52                	je     check_region_branch_7
   45a82:	80 fa 39             	cmp    dl,0x39
   45a85:	74 4d                	je     check_region_branch_7
check_region_branch_4:
   45a87:	83 7e 34 02          	cmp    DWORD PTR [esi+0x34],0x2
   45a8b:	75 15                	jne    check_region_branch_5
   45a8d:	8a a1 a0 11 00 00    	mov    ah,BYTE PTR [ecx+0x11a0]
   45a93:	80 fc 02             	cmp    ah,0x2
   45a96:	74 3c                	je     check_region_branch_7
   45a98:	80 fc 0e             	cmp    ah,0xe
   45a9b:	74 37                	je     check_region_branch_7
   45a9d:	80 fc 3a             	cmp    ah,0x3a
   45aa0:	74 32                	je     check_region_branch_7
check_region_branch_5:
   45aa2:	83 7e 34 00          	cmp    DWORD PTR [esi+0x34],0x0
   45aa6:	75 0e                	jne    check_region_branch_6
   45aa8:	8a 81 a0 11 00 00    	mov    al,BYTE PTR [ecx+0x11a0]
   45aae:	84 c0                	test   al,al
   45ab0:	74 22                	je     check_region_branch_7
   45ab2:	3c 04                	cmp    al,0x4
   45ab4:	74 1e                	je     check_region_branch_7
check_region_branch_6:
   45ab6:	83 7e 34 03          	cmp    DWORD PTR [esi+0x34],0x3
   45aba:	0f 85 eb 00 00 00    	jne    check_region_branch_17
   45ac0:	8a 91 a0 11 00 00    	mov    dl,BYTE PTR [ecx+0x11a0]
   45ac6:	80 fa 03             	cmp    dl,0x3
   45ac9:	74 09                	je     check_region_branch_7
   45acb:	80 fa 0b             	cmp    dl,0xb
   45ace:	0f 85 d7 00 00 00    	jne    check_region_branch_17
check_region_branch_7:
   45ad4:	85 db                	test   ebx,ebx
   45ad6:	0f 84 cf 00 00 00    	je     check_region_branch_17
   45adc:	a1 c4 5a 02 00       	mov    eax,ds:@obj3:current_room                                    ; fixup: num: 11304, src obj: 1, src ofs: 0x45add, dst obj: 3, dst ofs: 0x25ac4
   45ae1:	8b 53 20             	mov    edx,DWORD PTR [ebx+0x20]
   45ae4:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
   45ae7:	e8 44 09 03 00       	call   strcmp_
   45aec:	85 c0                	test   eax,eax
   45aee:	0f 85 af 00 00 00    	jne    check_region_branch_16
   45af4:	8b 56 10             	mov    edx,DWORD PTR [esi+0x10]
   45af7:	8b 43 1c             	mov    eax,DWORD PTR [ebx+0x1c]
   45afa:	e8 31 09 03 00       	call   strcmp_
   45aff:	85 c0                	test   eax,eax
   45b01:	0f 85 9c 00 00 00    	jne    check_region_branch_16
   45b07:	80 7b 28 00          	cmp    BYTE PTR [ebx+0x28],0x0
   45b0b:	0f 84 9a 00 00 00    	je     check_region_branch_17
   45b11:	bd ff ff ff ff       	mov    ebp,0xffffffff
   45b16:	8a a1 a0 11 00 00    	mov    ah,BYTE PTR [ecx+0x11a0]
   45b1c:	89 2d 0c 3f 01 00    	mov    DWORD PTR ds:@obj3:found_door_facing,ebp                     ; fixup: num: 11309, src obj: 1, src ofs: 0x45b1e, dst obj: 3, dst ofs: 0x13f0c
   45b22:	80 fc 01             	cmp    ah,0x1
   45b25:	74 0a                	je     check_region_branch_8
   45b27:	80 fc 07             	cmp    ah,0x7
   45b2a:	74 05                	je     check_region_branch_8
   45b2c:	80 fc 39             	cmp    ah,0x39
   45b2f:	75 0c                	jne    check_region_branch_9
check_region_branch_8:
   45b31:	ba 0e 00 00 00       	mov    edx,0xe
   45b36:	89 c8                	mov    eax,ecx
   45b38:	e8 63 6d ff ff       	call   go_to_frame_mod_76
check_region_branch_9:
   45b3d:	8a 81 a0 11 00 00    	mov    al,BYTE PTR [ecx+0x11a0]
   45b43:	3c 02                	cmp    al,0x2
   45b45:	74 08                	je     check_region_branch_10
   45b47:	3c 0e                	cmp    al,0xe
   45b49:	74 04                	je     check_region_branch_10
   45b4b:	3c 3a                	cmp    al,0x3a
   45b4d:	75 0c                	jne    check_region_branch_11
check_region_branch_10:
   45b4f:	ba 2c 00 00 00       	mov    edx,0x2c
   45b54:	89 c8                	mov    eax,ecx
   45b56:	e8 45 6d ff ff       	call   go_to_frame_mod_76
check_region_branch_11:
   45b5b:	8a b1 a0 11 00 00    	mov    dh,BYTE PTR [ecx+0x11a0]
   45b61:	84 f6                	test   dh,dh
   45b63:	74 05                	je     check_region_branch_12
   45b65:	80 fe 04             	cmp    dh,0x4
   45b68:	75 09                	jne    check_region_branch_13
check_region_branch_12:
   45b6a:	89 c8                	mov    eax,ecx
   45b6c:	31 d2                	xor    edx,edx
   45b6e:	e8 2d 6d ff ff       	call   go_to_frame_mod_76
check_region_branch_13:
   45b73:	8a a1 a0 11 00 00    	mov    ah,BYTE PTR [ecx+0x11a0]
   45b79:	80 fc 03             	cmp    ah,0x3
   45b7c:	74 05                	je     check_region_branch_14
   45b7e:	80 fc 0b             	cmp    ah,0xb
   45b81:	75 0c                	jne    check_region_branch_15
check_region_branch_14:
   45b83:	ba 28 00 00 00       	mov    edx,0x28
   45b88:	89 c8                	mov    eax,ecx
   45b8a:	e8 11 6d ff ff       	call   go_to_frame_mod_76
check_region_branch_15:
   45b8f:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 11308, src obj: 1, src ofs: 0x45b90, dst obj: 3, dst ofs: 0x25a84
   45b94:	e8 07 81 00 00       	call   update_mod_84
   45b99:	89 d8                	mov    eax,ebx
   45b9b:	83 c4 10             	add    esp,0x10
   45b9e:	5d                   	pop    ebp
   45b9f:	5e                   	pop    esi
   45ba0:	59                   	pop    ecx
   45ba1:	5b                   	pop    ebx
   45ba2:	c3                   	ret    
check_region_branch_16:
   45ba3:	8b 5b 2c             	mov    ebx,DWORD PTR [ebx+0x2c]
   45ba6:	e9 29 ff ff ff       	jmp    check_region_branch_7
check_region_branch_17:
   45bab:	31 c0                	xor    eax,eax
   45bad:	83 c4 10             	add    esp,0x10
   45bb0:	5d                   	pop    ebp
   45bb1:	5e                   	pop    esi
   45bb2:	59                   	pop    ecx
   45bb3:	5b                   	pop    ebx
   45bb4:	c3                   	ret    
   45bb5:	8d 40 00             	lea    eax,[eax+0x0]
check_region_reference_1:                                                                           ; access size: DWORDS
   45bb8:	90                   	nop                                                                 ; fixup: num: 11307, src obj: 1, src ofs: 0x45bb8, dst obj: 1, dst ofs: 0x45c90
   45bb9:	5c                   	pop    esp
   45bba:	04 00                	add    al,0x0
   45bbc:	d0 5e 04             	rcr    BYTE PTR [esi+0x4],1                                         ; fixup: num: 11306, src obj: 1, src ofs: 0x45bbc, dst obj: 1, dst ofs: 0x45ed0
   45bbf:	00 60 5f             	add    BYTE PTR [eax+0x5f],ah                                       ; fixup: num: 11305, src obj: 1, src ofs: 0x45bc0, dst obj: 1, dst ofs: 0x45f60
   45bc2:	04 00                	add    al,0x0
   45bc4:	d2 5f 04             	rcr    BYTE PTR [edi+0x4],cl                                        ; fixup: num: 11241, src obj: 1, src ofs: 0x45bc4, dst obj: 1, dst ofs: 0x45fd2
   45bc7:	00 44 60 04          	add    BYTE PTR [eax+eiz*2+0x4],al                                  ; fixup: num: 11240, src obj: 1, src ofs: 0x45bc8, dst obj: 1, dst ofs: 0x46044
   45bcb:	00 b6 60 04 00 28    	add    BYTE PTR [esi+0x28000460],dh                                 ; fixup: num: 11239, src obj: 1, src ofs: 0x45bcc, dst obj: 1, dst ofs: 0x460b6; fixup: num: 11238, src obj: 1, src ofs: 0x45bd0, dst obj: 1, dst ofs: 0x46128
   45bd1:	61                   	popa   
   45bd2:	04 00                	add    al,0x0
   45bd4:	b8 61 04 00 48       	mov    eax,0x48000461                                               ; fixup: num: 11237, src obj: 1, src ofs: 0x45bd4, dst obj: 1, dst ofs: 0x461b8; fixup: num: 11236, src obj: 1, src ofs: 0x45bd8, dst obj: 1, dst ofs: 0x46248
   45bd9:	62 04 00             	bound  eax,QWORD PTR [eax+eax*1]
   45bdc:	d8 62 04             	fsub   DWORD PTR [edx+0x4]                                          ; fixup: num: 11235, src obj: 1, src ofs: 0x45bdc, dst obj: 1, dst ofs: 0x462d8
   45bdf:	00 68 63             	add    BYTE PTR [eax+0x63],ch                                       ; fixup: num: 11234, src obj: 1, src ofs: 0x45be0, dst obj: 1, dst ofs: 0x46368
   45be2:	04 00                	add    al,0x0
   45be4:	f6 63 04             	mul    BYTE PTR [ebx+0x4]                                           ; fixup: num: 11233, src obj: 1, src ofs: 0x45be4, dst obj: 1, dst ofs: 0x463f6
   45be7:	00 86 64 04 00 12    	add    BYTE PTR [esi+0x12000464],al                                 ; fixup: num: 11232, src obj: 1, src ofs: 0x45be8, dst obj: 1, dst ofs: 0x46486; fixup: num: 11231, src obj: 1, src ofs: 0x45bec, dst obj: 1, dst ofs: 0x46512
   45bed:	65 04 00             	gs add al,0x0
   45bf0:	a8 65                	test   al,0x65                                                      ; fixup: num: 11230, src obj: 1, src ofs: 0x45bf0, dst obj: 1, dst ofs: 0x465a8
   45bf2:	04 00                	add    al,0x0
   45bf4:	20 66 04             	and    BYTE PTR [esi+0x4],ah                                        ; fixup: num: 11318, src obj: 1, src ofs: 0x45bf4, dst obj: 1, dst ofs: 0x46620
   45bf7:	00 ac 66 04 00 36 67 	add    BYTE PTR [esi+eiz*2+0x67360004],ch                           ; fixup: num: 11317, src obj: 1, src ofs: 0x45bf8, dst obj: 1, dst ofs: 0x466ac; fixup: num: 11316, src obj: 1, src ofs: 0x45bfc, dst obj: 1, dst ofs: 0x46736
   45bfe:	04 00                	add    al,0x0
   45c00:	c2 67 04             	ret    0x467                                                        ; fixup: num: 11315, src obj: 1, src ofs: 0x45c00, dst obj: 1, dst ofs: 0x467c2
;-------------------------------------------------
;  Bad code 75 (zero after ret):                 -
;-------------------------------------------------
;  45bfe:	04 00                	add    al,0x0
;  45c00:	c2 67 04             	ret    0x467
;  45c03:	00 4c 68 04          	add    BYTE PTR [eax+ebp*2+0x4],cl
;  45c07:	00 d8                	add    al,bl
;-------------------------------------------------
;  Padding data (1 bytes):                       -
;-------------------------------------------------
   45c03:	00                   	db     0x00
;-------------------------------------------------
;  End of bad code 75                            -
;-------------------------------------------------
   45c04:	4c                   	dec    esp                                                          ; fixup: num: 11314, src obj: 1, src ofs: 0x45c04, dst obj: 1, dst ofs: 0x4684c
   45c05:	68 04 00 d8 68       	push   0x68d80004                                                   ; fixup: num: 11313, src obj: 1, src ofs: 0x45c08, dst obj: 1, dst ofs: 0x468d8
   45c0a:	04 00                	add    al,0x0
   45c0c:	8d 44 20 00          	lea    eax,[eax+eiz*1+0x0]

;-------------------------------------------------
;  Function 'change_weapon'                      -
;-------------------------------------------------
change_weapon:
   45c10:	53                   	push   ebx
   45c11:	51                   	push   ecx
   45c12:	56                   	push   esi
   45c13:	57                   	push   edi
   45c14:	55                   	push   ebp
   45c15:	89 c6                	mov    esi,eax
   45c17:	89 d1                	mov    ecx,edx
   45c19:	85 d2                	test   edx,edx
   45c1b:	7c 09                	jl     change_weapon_branch_1
   45c1d:	83 b8 bc 11 00 00 14 	cmp    DWORD PTR [eax+0x11bc],0x14
   45c24:	7e 24                	jle    change_weapon_branch_2
change_weapon_branch_1:
   45c26:	51                   	push   ecx
   45c27:	68 1f b0 00 00       	push   @obj3:classes_cpp_variable_217                               ; fixup: num: 11312, src obj: 1, src ofs: 0x45c28, dst obj: 3, dst ofs: 0xb01f
   45c2c:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 11311, src obj: 1, src ofs: 0x45c2d, dst obj: 3, dst ofs: 0x237fc
   45c31:	bb fc 37 02 00       	mov    ebx,@obj3:log_buffer                                         ; fixup: num: 11310, src obj: 1, src ofs: 0x45c32, dst obj: 3, dst ofs: 0x237fc
   45c36:	e8 a6 af 02 00       	call   sprintf_
   45c3b:	83 c4 0c             	add    esp,0xc
   45c3e:	ba 84 11 00 00       	mov    edx,0x1184
   45c43:	31 c0                	xor    eax,eax
   45c45:	e8 e6 23 ff ff       	call   _error_report
change_weapon_branch_2:
   45c4a:	c7 86 8c 11 00 00 f8 ff ff 00 	mov    DWORD PTR [esi+0x118c],0xfffff8
   45c54:	89 f3                	mov    ebx,esi
   45c56:	89 8e bc 11 00 00    	mov    DWORD PTR [esi+0x11bc],ecx
   45c5c:	8d 4e 0c             	lea    ecx,[esi+0xc]
   45c5f:	31 ff                	xor    edi,edi
   45c61:	eb 0b                	jmp    change_weapon_branch_4
change_weapon_branch_3:
   45c63:	83 c3 04             	add    ebx,0x4
   45c66:	39 cb                	cmp    ebx,ecx
   45c68:	0f 84 f4 0c 00 00    	je     change_weapon_branch_74
change_weapon_branch_4:
   45c6e:	8b 83 48 11 00 00    	mov    eax,DWORD PTR [ebx+0x1148]
   45c74:	39 c7                	cmp    edi,eax
   45c76:	74 eb                	je     change_weapon_branch_3
   45c78:	85 c0                	test   eax,eax
   45c7a:	74 0c                	je     change_weapon_branch_5
   45c7c:	89 fa                	mov    edx,edi
   45c7e:	e8 ad 2d fc ff       	call   W?$dt:SOUND$n()_
   45c83:	e8 f0 c3 02 00       	call   W?$dln(pnv)v
change_weapon_branch_5:
   45c88:	89 bb 48 11 00 00    	mov    DWORD PTR [ebx+0x1148],edi
   45c8e:	eb d3                	jmp    change_weapon_branch_3
change_weapon_reference_1:
   45c90:	8b be 8c 11 00 00    	mov    edi,DWORD PTR [esi+0x118c]
   45c96:	47                   	inc    edi
   45c97:	b8 88 00 00 00       	mov    eax,0x88
   45c9c:	89 be 8c 11 00 00    	mov    DWORD PTR [esi+0x118c],edi
   45ca2:	e8 71 c2 02 00       	call   W?$nwn(ui)pnv
   45ca7:	89 c3                	mov    ebx,eax
   45ca9:	89 c2                	mov    edx,eax
   45cab:	85 c0                	test   eax,eax
   45cad:	74 0a                	je     change_weapon_branch_6
   45caf:	ba 32 b0 00 00       	mov    edx,@obj3:classes_cpp_variable_218                           ; fixup: num: 11244, src obj: 1, src ofs: 0x45cb0, dst obj: 3, dst ofs: 0xb032
   45cb4:	e8 b7 27 fc ff       	call   W?$ct:SOUND$n(pna)_
change_weapon_branch_6:
   45cb9:	89 86 48 11 00 00    	mov    DWORD PTR [esi+0x1148],eax
   45cbf:	b8 88 00 00 00       	mov    eax,0x88
   45cc4:	e8 4f c2 02 00       	call   W?$nwn(ui)pnv
   45cc9:	85 c0                	test   eax,eax
   45ccb:	74 0a                	je     change_weapon_branch_7
   45ccd:	ba 4f b0 00 00       	mov    edx,@obj3:classes_cpp_variable_219                           ; fixup: num: 11243, src obj: 1, src ofs: 0x45cce, dst obj: 3, dst ofs: 0xb04f
   45cd2:	e8 99 27 fc ff       	call   W?$ct:SOUND$n(pna)_
change_weapon_branch_7:
   45cd7:	89 86 4c 11 00 00    	mov    DWORD PTR [esi+0x114c],eax
   45cdd:	b8 88 00 00 00       	mov    eax,0x88
   45ce2:	e8 31 c2 02 00       	call   W?$nwn(ui)pnv
   45ce7:	85 c0                	test   eax,eax
   45ce9:	74 0a                	je     change_weapon_branch_8
   45ceb:	ba 6c b0 00 00       	mov    edx,@obj3:classes_cpp_variable_220                           ; fixup: num: 11242, src obj: 1, src ofs: 0x45cec, dst obj: 3, dst ofs: 0xb06c
   45cf0:	e8 7b 27 fc ff       	call   W?$ct:SOUND$n(pna)_
change_weapon_branch_8:
   45cf5:	c7 86 6c 11 00 00 01 00 00 00 	mov    DWORD PTR [esi+0x116c],0x1
   45cff:	c7 86 34 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1134],0x3
   45d09:	c7 86 80 11 00 00 01 00 00 00 	mov    DWORD PTR [esi+0x1180],0x1
   45d13:	c7 86 3c 11 00 00 05 00 00 00 	mov    DWORD PTR [esi+0x113c],0x5
   45d1d:	89 86 50 11 00 00    	mov    DWORD PTR [esi+0x1150],eax
change_weapon_branch_9:
   45d23:	8b ae 34 11 00 00    	mov    ebp,DWORD PTR [esi+0x1134]
   45d29:	31 c9                	xor    ecx,ecx
   45d2b:	85 ed                	test   ebp,ebp
   45d2d:	0f 8e 2d 00 00 00    	jle    change_weapon_branch_12
   45d33:	89 f7                	mov    edi,esi
change_weapon_branch_10:
   45d35:	8b 87 48 11 00 00    	mov    eax,DWORD PTR [edi+0x1148]
   45d3b:	85 c0                	test   eax,eax
   45d3d:	0f 85 0f 00 00 00    	jne    change_weapon_branch_11
   45d43:	bb ca b6 00 00       	mov    ebx,@obj3:classes_cpp_variable_276                           ; fixup: num: 11248, src obj: 1, src ofs: 0x45d44, dst obj: 3, dst ofs: 0xb6ca
   45d48:	ba 1e 12 00 00       	mov    edx,0x121e
   45d4d:	e8 de 22 ff ff       	call   _error_report
change_weapon_branch_11:
   45d52:	41                   	inc    ecx
   45d53:	8b 96 34 11 00 00    	mov    edx,DWORD PTR [esi+0x1134]
   45d59:	83 c7 04             	add    edi,0x4
   45d5c:	39 d1                	cmp    ecx,edx
   45d5e:	7c d5                	jl     change_weapon_branch_10
change_weapon_branch_12:
   45d60:	8b 5e 04             	mov    ebx,DWORD PTR [esi+0x4]
   45d63:	85 db                	test   ebx,ebx
   45d65:	74 1f                	je     change_weapon_branch_14
   45d67:	8b 4b 08             	mov    ecx,DWORD PTR [ebx+0x8]
   45d6a:	89 d8                	mov    eax,ebx
   45d6c:	85 c9                	test   ecx,ecx
   45d6e:	74 07                	je     change_weapon_branch_13
   45d70:	89 c8                	mov    eax,ecx
   45d72:	e8 71 b6 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
change_weapon_branch_13:
   45d77:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
   45d7a:	e8 69 b6 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   45d7f:	c7 46 04 00 00 00 00 	mov    DWORD PTR [esi+0x4],0x0
change_weapon_branch_14:
   45d86:	8b 3e                	mov    edi,DWORD PTR [esi]
   45d88:	85 ff                	test   edi,edi
   45d8a:	74 1d                	je     change_weapon_branch_16
   45d8c:	8b 6f 08             	mov    ebp,DWORD PTR [edi+0x8]
   45d8f:	89 f8                	mov    eax,edi
   45d91:	85 ed                	test   ebp,ebp
   45d93:	74 07                	je     change_weapon_branch_15
   45d95:	89 e8                	mov    eax,ebp
   45d97:	e8 4c b6 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
change_weapon_branch_15:
   45d9c:	8b 06                	mov    eax,DWORD PTR [esi]
   45d9e:	e8 45 b6 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   45da3:	c7 06 00 00 00 00    	mov    DWORD PTR [esi],0x0
change_weapon_branch_16:
   45da9:	b9 2f 12 00 00       	mov    ecx,0x122f
   45dae:	8b 86 bc 11 00 00    	mov    eax,DWORD PTR [esi+0x11bc]
   45db4:	bb e2 b6 00 00       	mov    ebx,@obj3:classes_cpp_variable_277                           ; fixup: num: 11247, src obj: 1, src ofs: 0x45db5, dst obj: 3, dst ofs: 0xb6e2
   45db9:	8b 15 ac 60 02 00    	mov    edx,DWORD PTR ds:@obj3:pc_buffer                             ; fixup: num: 11246, src obj: 1, src ofs: 0x45dbb, dst obj: 3, dst ofs: 0x260ac
   45dbf:	8b 04 85 b4 3e 01 00 	mov    eax,DWORD PTR [eax*4+@obj3:pc_list]                          ; fixup: num: 11245, src obj: 1, src ofs: 0x45dc2, dst obj: 3, dst ofs: 0x13eb4
   45dc6:	e8 15 70 fc ff       	call   XFILE_read2
   45dcb:	89 c1                	mov    ecx,eax
   45dcd:	85 c0                	test   eax,eax
   45dcf:	75 31                	jne    change_weapon_branch_17
   45dd1:	8b 86 bc 11 00 00    	mov    eax,DWORD PTR [esi+0x11bc]
   45dd7:	8b 14 85 b4 3e 01 00 	mov    edx,DWORD PTR [eax*4+@obj3:pc_list]                          ; fixup: num: 11256, src obj: 1, src ofs: 0x45dda, dst obj: 3, dst ofs: 0x13eb4
   45dde:	52                   	push   edx
   45ddf:	68 ee b6 00 00       	push   @obj3:classes_cpp_variable_278                               ; fixup: num: 11255, src obj: 1, src ofs: 0x45de0, dst obj: 3, dst ofs: 0xb6ee
   45de4:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 11254, src obj: 1, src ofs: 0x45de5, dst obj: 3, dst ofs: 0x237fc
   45de9:	bb fc 37 02 00       	mov    ebx,@obj3:log_buffer                                         ; fixup: num: 11253, src obj: 1, src ofs: 0x45dea, dst obj: 3, dst ofs: 0x237fc
   45dee:	e8 ee ad 02 00       	call   sprintf_
   45df3:	83 c4 0c             	add    esp,0xc
   45df6:	ba 32 12 00 00       	mov    edx,0x1232
   45dfb:	31 c0                	xor    eax,eax
   45dfd:	e8 2e 22 ff ff       	call   _error_report
change_weapon_branch_17:
   45e02:	8b 46 40             	mov    eax,DWORD PTR [esi+0x40]
   45e05:	03 46 30             	add    eax,DWORD PTR [esi+0x30]
   45e08:	8b 5e 28             	mov    ebx,DWORD PTR [esi+0x28]
   45e0b:	89 ca                	mov    edx,ecx
   45e0d:	01 c3                	add    ebx,eax
   45e0f:	89 f0                	mov    eax,esi
   45e11:	e8 da 62 ff ff       	call   initialize_from_abm
   45e16:	89 f0                	mov    eax,esi
   45e18:	8b 96 64 10 00 00    	mov    edx,DWORD PTR [esi+0x1064]
   45e1e:	e8 7d 6a ff ff       	call   go_to_frame_mod_76
   45e23:	53                   	push   ebx
   45e24:	68 0e b7 00 00       	push   @obj3:classes_cpp_variable_279                               ; fixup: num: 11252, src obj: 1, src ofs: 0x45e25, dst obj: 3, dst ofs: 0xb70e
   45e29:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 11251, src obj: 1, src ofs: 0x45e2a, dst obj: 3, dst ofs: 0x237fc
   45e2e:	89 da                	mov    edx,ebx
   45e30:	e8 ac ad 02 00       	call   sprintf_
   45e35:	8b 4e 30             	mov    ecx,DWORD PTR [esi+0x30]
   45e38:	8b 46 28             	mov    eax,DWORD PTR [esi+0x28]
   45e3b:	29 ca                	sub    edx,ecx
   45e3d:	83 c4 0c             	add    esp,0xc
   45e40:	29 c2                	sub    edx,eax
   45e42:	8b 6e 30             	mov    ebp,DWORD PTR [esi+0x30]
   45e45:	52                   	push   edx
   45e46:	89 56 40             	mov    DWORD PTR [esi+0x40],edx
   45e49:	89 d8                	mov    eax,ebx
   45e4b:	8b 56 28             	mov    edx,DWORD PTR [esi+0x28]
   45e4e:	29 e8                	sub    eax,ebp
   45e50:	29 d0                	sub    eax,edx
   45e52:	50                   	push   eax
   45e53:	68 38 b7 00 00       	push   @obj3:classes_cpp_variable_280                               ; fixup: num: 11250, src obj: 1, src ofs: 0x45e54, dst obj: 3, dst ofs: 0xb738
   45e58:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 11249, src obj: 1, src ofs: 0x45e59, dst obj: 3, dst ofs: 0x237fc
   45e5d:	e8 7f ad 02 00       	call   sprintf_
   45e62:	83 c4 10             	add    esp,0x10
   45e65:	8b 9e 68 10 00 00    	mov    ebx,DWORD PTR [esi+0x1068]
   45e6b:	c7 86 60 10 00 00 05 00 00 00 	mov    DWORD PTR [esi+0x1060],0x5
   45e75:	83 fb 11             	cmp    ebx,0x11
   45e78:	74 14                	je     change_weapon_branch_18
   45e7a:	c7 86 68 10 00 00 11 00 00 00 	mov    DWORD PTR [esi+0x1068],0x11
   45e84:	c7 86 5c 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x105c],0x0
change_weapon_branch_18:
   45e8e:	8b 8e 94 10 00 00    	mov    ecx,DWORD PTR [esi+0x1094]
   45e94:	c7 86 80 10 00 00 11 00 00 00 	mov    DWORD PTR [esi+0x1080],0x11
   45e9e:	85 c9                	test   ecx,ecx
   45ea0:	0f 84 f5 0a 00 00    	je     change_weapon_branch_77
   45ea6:	8b 59 3c             	mov    ebx,DWORD PTR [ecx+0x3c]
   45ea9:	8b 79 24             	mov    edi,DWORD PTR [ecx+0x24]
   45eac:	8b ae 98 11 00 00    	mov    ebp,DWORD PTR [esi+0x1198]
   45eb2:	01 fb                	add    ebx,edi
   45eb4:	89 c8                	mov    eax,ecx
   45eb6:	39 eb                	cmp    ebx,ebp
   45eb8:	0f 8e dd 0a 00 00    	jle    change_weapon_branch_77
   45ebe:	8b 51 10             	mov    edx,DWORD PTR [ecx+0x10]
   45ec1:	85 d2                	test   edx,edx
   45ec3:	0f 84 ba 0a 00 00    	je     change_weapon_branch_75
   45ec9:	89 d0                	mov    eax,edx
   45ecb:	e9 b8 0a 00 00       	jmp    change_weapon_branch_76
change_weapon_reference_2:
   45ed0:	c7 86 80 11 00 00 04 00 00 00 	mov    DWORD PTR [esi+0x1180],0x4
   45eda:	8b 8e 8c 11 00 00    	mov    ecx,DWORD PTR [esi+0x118c]
   45ee0:	c7 86 3c 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x113c],0x2
   45eea:	83 c1 02             	add    ecx,0x2
   45eed:	b8 88 00 00 00       	mov    eax,0x88
   45ef2:	89 8e 8c 11 00 00    	mov    DWORD PTR [esi+0x118c],ecx
   45ef8:	e8 1b c0 02 00       	call   W?$nwn(ui)pnv
   45efd:	89 c3                	mov    ebx,eax
   45eff:	89 c2                	mov    edx,eax
   45f01:	85 c0                	test   eax,eax
   45f03:	74 0a                	je     change_weapon_branch_19
   45f05:	ba 89 b0 00 00       	mov    edx,@obj3:classes_cpp_variable_221                           ; fixup: num: 11258, src obj: 1, src ofs: 0x45f06, dst obj: 3, dst ofs: 0xb089
   45f0a:	e8 61 25 fc ff       	call   W?$ct:SOUND$n(pna)_
change_weapon_branch_19:
   45f0f:	89 86 48 11 00 00    	mov    DWORD PTR [esi+0x1148],eax
   45f15:	b8 88 00 00 00       	mov    eax,0x88
   45f1a:	e8 f9 bf 02 00       	call   W?$nwn(ui)pnv
   45f1f:	85 c0                	test   eax,eax
   45f21:	74 0a                	je     change_weapon_branch_20
   45f23:	ba a6 b0 00 00       	mov    edx,@obj3:classes_cpp_variable_222                           ; fixup: num: 11257, src obj: 1, src ofs: 0x45f24, dst obj: 3, dst ofs: 0xb0a6
   45f28:	e8 43 25 fc ff       	call   W?$ct:SOUND$n(pna)_
change_weapon_branch_20:
   45f2d:	89 86 4c 11 00 00    	mov    DWORD PTR [esi+0x114c],eax
   45f33:	b8 88 00 00 00       	mov    eax,0x88
   45f38:	e8 db bf 02 00       	call   W?$nwn(ui)pnv
   45f3d:	85 c0                	test   eax,eax
   45f3f:	74 0a                	je     change_weapon_branch_21
   45f41:	ba c3 b0 00 00       	mov    edx,@obj3:classes_cpp_variable_223                           ; fixup: num: 11261, src obj: 1, src ofs: 0x45f42, dst obj: 3, dst ofs: 0xb0c3
   45f46:	e8 25 25 fc ff       	call   W?$ct:SOUND$n(pna)_
change_weapon_branch_21:
   45f4b:	c7 86 34 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1134],0x3
   45f55:	89 86 50 11 00 00    	mov    DWORD PTR [esi+0x1150],eax
   45f5b:	e9 c3 fd ff ff       	jmp    change_weapon_branch_9
change_weapon_reference_3:
   45f60:	c7 86 80 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x1180],0x2
   45f6a:	8b 9e 8c 11 00 00    	mov    ebx,DWORD PTR [esi+0x118c]
   45f70:	c7 86 3c 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x113c],0x2
   45f7a:	83 c3 04             	add    ebx,0x4
   45f7d:	b8 88 00 00 00       	mov    eax,0x88
   45f82:	89 9e 8c 11 00 00    	mov    DWORD PTR [esi+0x118c],ebx
   45f88:	e8 8b bf 02 00       	call   W?$nwn(ui)pnv
   45f8d:	89 c3                	mov    ebx,eax
   45f8f:	89 c2                	mov    edx,eax
   45f91:	85 c0                	test   eax,eax
   45f93:	74 0a                	je     change_weapon_branch_22
   45f95:	ba e0 b0 00 00       	mov    edx,@obj3:classes_cpp_variable_224                           ; fixup: num: 11260, src obj: 1, src ofs: 0x45f96, dst obj: 3, dst ofs: 0xb0e0
   45f9a:	e8 d1 24 fc ff       	call   W?$ct:SOUND$n(pna)_
change_weapon_branch_22:
   45f9f:	89 86 48 11 00 00    	mov    DWORD PTR [esi+0x1148],eax
   45fa5:	b8 88 00 00 00       	mov    eax,0x88
   45faa:	e8 69 bf 02 00       	call   W?$nwn(ui)pnv
   45faf:	85 c0                	test   eax,eax
   45fb1:	74 0a                	je     change_weapon_branch_23
   45fb3:	ba fe b0 00 00       	mov    edx,@obj3:classes_cpp_variable_225                           ; fixup: num: 11259, src obj: 1, src ofs: 0x45fb4, dst obj: 3, dst ofs: 0xb0fe
   45fb8:	e8 b3 24 fc ff       	call   W?$ct:SOUND$n(pna)_
change_weapon_branch_23:
   45fbd:	c7 86 34 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x1134],0x2
   45fc7:	89 86 4c 11 00 00    	mov    DWORD PTR [esi+0x114c],eax
   45fcd:	e9 51 fd ff ff       	jmp    change_weapon_branch_9
change_weapon_reference_4:
   45fd2:	c7 86 80 11 00 00 07 00 00 00 	mov    DWORD PTR [esi+0x1180],0x7
   45fdc:	8b 96 8c 11 00 00    	mov    edx,DWORD PTR [esi+0x118c]
   45fe2:	c7 86 3c 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x113c],0x2
   45fec:	83 c2 04             	add    edx,0x4
   45fef:	b8 88 00 00 00       	mov    eax,0x88
   45ff4:	89 96 8c 11 00 00    	mov    DWORD PTR [esi+0x118c],edx
   45ffa:	e8 19 bf 02 00       	call   W?$nwn(ui)pnv
   45fff:	89 c3                	mov    ebx,eax
   46001:	89 c2                	mov    edx,eax
   46003:	85 c0                	test   eax,eax
   46005:	74 0a                	je     change_weapon_branch_24
   46007:	ba 1b b1 00 00       	mov    edx,@obj3:classes_cpp_variable_226                           ; fixup: num: 11361, src obj: 1, src ofs: 0x46008, dst obj: 3, dst ofs: 0xb11b
   4600c:	e8 5f 24 fc ff       	call   W?$ct:SOUND$n(pna)_
change_weapon_branch_24:
   46011:	89 86 48 11 00 00    	mov    DWORD PTR [esi+0x1148],eax
   46017:	b8 88 00 00 00       	mov    eax,0x88
   4601c:	e8 f7 be 02 00       	call   W?$nwn(ui)pnv
   46021:	85 c0                	test   eax,eax
   46023:	74 0a                	je     change_weapon_branch_25
   46025:	ba 39 b1 00 00       	mov    edx,@obj3:classes_cpp_variable_227                           ; fixup: num: 11360, src obj: 1, src ofs: 0x46026, dst obj: 3, dst ofs: 0xb139
   4602a:	e8 41 24 fc ff       	call   W?$ct:SOUND$n(pna)_
change_weapon_branch_25:
   4602f:	c7 86 34 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x1134],0x2
   46039:	89 86 4c 11 00 00    	mov    DWORD PTR [esi+0x114c],eax
   4603f:	e9 df fc ff ff       	jmp    change_weapon_branch_9
change_weapon_reference_5:
   46044:	8b 86 8c 11 00 00    	mov    eax,DWORD PTR [esi+0x118c]
   4604a:	c7 86 80 11 00 00 06 00 00 00 	mov    DWORD PTR [esi+0x1180],0x6
   46054:	83 c0 04             	add    eax,0x4
   46057:	89 86 8c 11 00 00    	mov    DWORD PTR [esi+0x118c],eax
   4605d:	b8 88 00 00 00       	mov    eax,0x88
   46062:	c7 86 3c 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x113c],0x2
   4606c:	e8 a7 be 02 00       	call   W?$nwn(ui)pnv
   46071:	89 c3                	mov    ebx,eax
   46073:	89 c2                	mov    edx,eax
   46075:	85 c0                	test   eax,eax
   46077:	74 0a                	je     change_weapon_branch_26
   46079:	ba 57 b1 00 00       	mov    edx,@obj3:classes_cpp_variable_228                           ; fixup: num: 11359, src obj: 1, src ofs: 0x4607a, dst obj: 3, dst ofs: 0xb157
   4607e:	e8 ed 23 fc ff       	call   W?$ct:SOUND$n(pna)_
change_weapon_branch_26:
   46083:	89 86 48 11 00 00    	mov    DWORD PTR [esi+0x1148],eax
   46089:	b8 88 00 00 00       	mov    eax,0x88
   4608e:	e8 85 be 02 00       	call   W?$nwn(ui)pnv
   46093:	85 c0                	test   eax,eax
   46095:	74 0a                	je     change_weapon_branch_27
   46097:	ba 74 b1 00 00       	mov    edx,@obj3:classes_cpp_variable_229                           ; fixup: num: 11364, src obj: 1, src ofs: 0x46098, dst obj: 3, dst ofs: 0xb174
   4609c:	e8 cf 23 fc ff       	call   W?$ct:SOUND$n(pna)_
change_weapon_branch_27:
   460a1:	c7 86 34 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x1134],0x2
   460ab:	89 86 4c 11 00 00    	mov    DWORD PTR [esi+0x114c],eax
   460b1:	e9 6d fc ff ff       	jmp    change_weapon_branch_9
change_weapon_reference_6:
   460b6:	c7 86 80 11 00 00 06 00 00 00 	mov    DWORD PTR [esi+0x1180],0x6
   460c0:	8b ae 8c 11 00 00    	mov    ebp,DWORD PTR [esi+0x118c]
   460c6:	c7 86 3c 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x113c],0x2
   460d0:	83 c5 04             	add    ebp,0x4
   460d3:	b8 88 00 00 00       	mov    eax,0x88
   460d8:	89 ae 8c 11 00 00    	mov    DWORD PTR [esi+0x118c],ebp
   460de:	e8 35 be 02 00       	call   W?$nwn(ui)pnv
   460e3:	89 c3                	mov    ebx,eax
   460e5:	89 c2                	mov    edx,eax
   460e7:	85 c0                	test   eax,eax
   460e9:	74 0a                	je     change_weapon_branch_28
   460eb:	ba 91 b1 00 00       	mov    edx,@obj3:classes_cpp_variable_230                           ; fixup: num: 11363, src obj: 1, src ofs: 0x460ec, dst obj: 3, dst ofs: 0xb191
   460f0:	e8 7b 23 fc ff       	call   W?$ct:SOUND$n(pna)_
change_weapon_branch_28:
   460f5:	89 86 48 11 00 00    	mov    DWORD PTR [esi+0x1148],eax
   460fb:	b8 88 00 00 00       	mov    eax,0x88
   46100:	e8 13 be 02 00       	call   W?$nwn(ui)pnv
   46105:	85 c0                	test   eax,eax
   46107:	74 0a                	je     change_weapon_branch_29
   46109:	ba af b1 00 00       	mov    edx,@obj3:classes_cpp_variable_231                           ; fixup: num: 11362, src obj: 1, src ofs: 0x4610a, dst obj: 3, dst ofs: 0xb1af
   4610e:	e8 5d 23 fc ff       	call   W?$ct:SOUND$n(pna)_
change_weapon_branch_29:
   46113:	c7 86 34 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x1134],0x2
   4611d:	89 86 4c 11 00 00    	mov    DWORD PTR [esi+0x114c],eax
   46123:	e9 fb fb ff ff       	jmp    change_weapon_branch_9
change_weapon_reference_7:
   46128:	c7 86 80 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1180],0x3
   46132:	8b be 8c 11 00 00    	mov    edi,DWORD PTR [esi+0x118c]
   46138:	c7 86 3c 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x113c],0x2
   46142:	83 c7 02             	add    edi,0x2
   46145:	b8 88 00 00 00       	mov    eax,0x88
   4614a:	89 be 8c 11 00 00    	mov    DWORD PTR [esi+0x118c],edi
   46150:	e8 c3 bd 02 00       	call   W?$nwn(ui)pnv
   46155:	89 c3                	mov    ebx,eax
   46157:	89 c2                	mov    edx,eax
   46159:	85 c0                	test   eax,eax
   4615b:	74 0a                	je     change_weapon_branch_30
   4615d:	ba cc b1 00 00       	mov    edx,@obj3:classes_cpp_variable_232                           ; fixup: num: 11368, src obj: 1, src ofs: 0x4615e, dst obj: 3, dst ofs: 0xb1cc
   46162:	e8 09 23 fc ff       	call   W?$ct:SOUND$n(pna)_
change_weapon_branch_30:
   46167:	89 86 48 11 00 00    	mov    DWORD PTR [esi+0x1148],eax
   4616d:	b8 88 00 00 00       	mov    eax,0x88
   46172:	e8 a1 bd 02 00       	call   W?$nwn(ui)pnv
   46177:	85 c0                	test   eax,eax
   46179:	74 0a                	je     change_weapon_branch_31
   4617b:	ba e9 b1 00 00       	mov    edx,@obj3:classes_cpp_variable_233                           ; fixup: num: 11367, src obj: 1, src ofs: 0x4617c, dst obj: 3, dst ofs: 0xb1e9
   46180:	e8 eb 22 fc ff       	call   W?$ct:SOUND$n(pna)_
change_weapon_branch_31:
   46185:	89 86 4c 11 00 00    	mov    DWORD PTR [esi+0x114c],eax
   4618b:	b8 88 00 00 00       	mov    eax,0x88
   46190:	e8 83 bd 02 00       	call   W?$nwn(ui)pnv
   46195:	85 c0                	test   eax,eax
   46197:	74 0a                	je     change_weapon_branch_32
   46199:	ba 06 b2 00 00       	mov    edx,@obj3:classes_cpp_variable_234                           ; fixup: num: 11366, src obj: 1, src ofs: 0x4619a, dst obj: 3, dst ofs: 0xb206
   4619e:	e8 cd 22 fc ff       	call   W?$ct:SOUND$n(pna)_
change_weapon_branch_32:
   461a3:	c7 86 34 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1134],0x3
   461ad:	89 86 50 11 00 00    	mov    DWORD PTR [esi+0x1150],eax
   461b3:	e9 6b fb ff ff       	jmp    change_weapon_branch_9
change_weapon_reference_8:
   461b8:	c7 86 80 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1180],0x3
   461c2:	8b 8e 8c 11 00 00    	mov    ecx,DWORD PTR [esi+0x118c]
   461c8:	c7 86 3c 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x113c],0x2
   461d2:	83 c1 02             	add    ecx,0x2
   461d5:	b8 88 00 00 00       	mov    eax,0x88
   461da:	89 8e 8c 11 00 00    	mov    DWORD PTR [esi+0x118c],ecx
   461e0:	e8 33 bd 02 00       	call   W?$nwn(ui)pnv
   461e5:	89 c3                	mov    ebx,eax
   461e7:	89 c2                	mov    edx,eax
   461e9:	85 c0                	test   eax,eax
   461eb:	74 0a                	je     change_weapon_branch_33
   461ed:	ba 23 b2 00 00       	mov    edx,@obj3:classes_cpp_variable_235                           ; fixup: num: 11365, src obj: 1, src ofs: 0x461ee, dst obj: 3, dst ofs: 0xb223
   461f2:	e8 79 22 fc ff       	call   W?$ct:SOUND$n(pna)_
change_weapon_branch_33:
   461f7:	89 86 48 11 00 00    	mov    DWORD PTR [esi+0x1148],eax
   461fd:	b8 88 00 00 00       	mov    eax,0x88
   46202:	e8 11 bd 02 00       	call   W?$nwn(ui)pnv
   46207:	85 c0                	test   eax,eax
   46209:	74 0a                	je     change_weapon_branch_34
   4620b:	ba 40 b2 00 00       	mov    edx,@obj3:classes_cpp_variable_236                           ; fixup: num: 11372, src obj: 1, src ofs: 0x4620c, dst obj: 3, dst ofs: 0xb240
   46210:	e8 5b 22 fc ff       	call   W?$ct:SOUND$n(pna)_
change_weapon_branch_34:
   46215:	89 86 4c 11 00 00    	mov    DWORD PTR [esi+0x114c],eax
   4621b:	b8 88 00 00 00       	mov    eax,0x88
   46220:	e8 f3 bc 02 00       	call   W?$nwn(ui)pnv
   46225:	85 c0                	test   eax,eax
   46227:	74 0a                	je     change_weapon_branch_35
   46229:	ba 5d b2 00 00       	mov    edx,@obj3:classes_cpp_variable_237                           ; fixup: num: 11371, src obj: 1, src ofs: 0x4622a, dst obj: 3, dst ofs: 0xb25d
   4622e:	e8 3d 22 fc ff       	call   W?$ct:SOUND$n(pna)_
change_weapon_branch_35:
   46233:	c7 86 34 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1134],0x3
   4623d:	89 86 50 11 00 00    	mov    DWORD PTR [esi+0x1150],eax
   46243:	e9 db fa ff ff       	jmp    change_weapon_branch_9
change_weapon_reference_9:
   46248:	c7 86 80 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1180],0x3
   46252:	8b 9e 8c 11 00 00    	mov    ebx,DWORD PTR [esi+0x118c]
   46258:	c7 86 3c 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x113c],0x2
   46262:	83 c3 02             	add    ebx,0x2
   46265:	b8 88 00 00 00       	mov    eax,0x88
   4626a:	89 9e 8c 11 00 00    	mov    DWORD PTR [esi+0x118c],ebx
   46270:	e8 a3 bc 02 00       	call   W?$nwn(ui)pnv
   46275:	89 c3                	mov    ebx,eax
   46277:	89 c2                	mov    edx,eax
   46279:	85 c0                	test   eax,eax
   4627b:	74 0a                	je     change_weapon_branch_36
   4627d:	ba 7a b2 00 00       	mov    edx,@obj3:classes_cpp_variable_238                           ; fixup: num: 11370, src obj: 1, src ofs: 0x4627e, dst obj: 3, dst ofs: 0xb27a
   46282:	e8 e9 21 fc ff       	call   W?$ct:SOUND$n(pna)_
change_weapon_branch_36:
   46287:	89 86 48 11 00 00    	mov    DWORD PTR [esi+0x1148],eax
   4628d:	b8 88 00 00 00       	mov    eax,0x88
   46292:	e8 81 bc 02 00       	call   W?$nwn(ui)pnv
   46297:	85 c0                	test   eax,eax
   46299:	74 0a                	je     change_weapon_branch_37
   4629b:	ba 97 b2 00 00       	mov    edx,@obj3:classes_cpp_variable_239                           ; fixup: num: 11369, src obj: 1, src ofs: 0x4629c, dst obj: 3, dst ofs: 0xb297
   462a0:	e8 cb 21 fc ff       	call   W?$ct:SOUND$n(pna)_
change_weapon_branch_37:
   462a5:	89 86 4c 11 00 00    	mov    DWORD PTR [esi+0x114c],eax
   462ab:	b8 88 00 00 00       	mov    eax,0x88
   462b0:	e8 63 bc 02 00       	call   W?$nwn(ui)pnv
   462b5:	85 c0                	test   eax,eax
   462b7:	74 0a                	je     change_weapon_branch_38
   462b9:	ba b4 b2 00 00       	mov    edx,@obj3:classes_cpp_variable_240                           ; fixup: num: 11376, src obj: 1, src ofs: 0x462ba, dst obj: 3, dst ofs: 0xb2b4
   462be:	e8 ad 21 fc ff       	call   W?$ct:SOUND$n(pna)_
change_weapon_branch_38:
   462c3:	c7 86 34 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1134],0x3
   462cd:	89 86 50 11 00 00    	mov    DWORD PTR [esi+0x1150],eax
   462d3:	e9 4b fa ff ff       	jmp    change_weapon_branch_9
change_weapon_reference_10:
   462d8:	c7 86 80 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1180],0x3
   462e2:	8b 96 8c 11 00 00    	mov    edx,DWORD PTR [esi+0x118c]
   462e8:	c7 86 3c 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x113c],0x2
   462f2:	83 c2 02             	add    edx,0x2
   462f5:	b8 88 00 00 00       	mov    eax,0x88
   462fa:	89 96 8c 11 00 00    	mov    DWORD PTR [esi+0x118c],edx
   46300:	e8 13 bc 02 00       	call   W?$nwn(ui)pnv
   46305:	89 c3                	mov    ebx,eax
   46307:	89 c2                	mov    edx,eax
   46309:	85 c0                	test   eax,eax
   4630b:	74 0a                	je     change_weapon_branch_39
   4630d:	ba d1 b2 00 00       	mov    edx,@obj3:classes_cpp_variable_241                           ; fixup: num: 11375, src obj: 1, src ofs: 0x4630e, dst obj: 3, dst ofs: 0xb2d1
   46312:	e8 59 21 fc ff       	call   W?$ct:SOUND$n(pna)_
change_weapon_branch_39:
   46317:	89 86 48 11 00 00    	mov    DWORD PTR [esi+0x1148],eax
   4631d:	b8 88 00 00 00       	mov    eax,0x88
   46322:	e8 f1 bb 02 00       	call   W?$nwn(ui)pnv
   46327:	85 c0                	test   eax,eax
   46329:	74 0a                	je     change_weapon_branch_40
   4632b:	ba ee b2 00 00       	mov    edx,@obj3:classes_cpp_variable_242                           ; fixup: num: 11374, src obj: 1, src ofs: 0x4632c, dst obj: 3, dst ofs: 0xb2ee
   46330:	e8 3b 21 fc ff       	call   W?$ct:SOUND$n(pna)_
change_weapon_branch_40:
   46335:	89 86 4c 11 00 00    	mov    DWORD PTR [esi+0x114c],eax
   4633b:	b8 88 00 00 00       	mov    eax,0x88
   46340:	e8 d3 bb 02 00       	call   W?$nwn(ui)pnv
   46345:	85 c0                	test   eax,eax
   46347:	74 0a                	je     change_weapon_branch_41
   46349:	ba 0b b3 00 00       	mov    edx,@obj3:classes_cpp_variable_243                           ; fixup: num: 11373, src obj: 1, src ofs: 0x4634a, dst obj: 3, dst ofs: 0xb30b
   4634e:	e8 1d 21 fc ff       	call   W?$ct:SOUND$n(pna)_
change_weapon_branch_41:
   46353:	c7 86 34 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1134],0x3
   4635d:	89 86 50 11 00 00    	mov    DWORD PTR [esi+0x1150],eax
   46363:	e9 bb f9 ff ff       	jmp    change_weapon_branch_9
change_weapon_reference_11:
   46368:	8b 86 8c 11 00 00    	mov    eax,DWORD PTR [esi+0x118c]
   4636e:	c7 86 80 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1180],0x3
   46378:	40                   	inc    eax
   46379:	89 86 8c 11 00 00    	mov    DWORD PTR [esi+0x118c],eax
   4637f:	b8 88 00 00 00       	mov    eax,0x88
   46384:	c7 86 3c 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x113c],0x2
   4638e:	e8 85 bb 02 00       	call   W?$nwn(ui)pnv
   46393:	89 c3                	mov    ebx,eax
   46395:	89 c2                	mov    edx,eax
   46397:	85 c0                	test   eax,eax
   46399:	74 0a                	je     change_weapon_branch_42
   4639b:	ba 28 b3 00 00       	mov    edx,@obj3:classes_cpp_variable_244                           ; fixup: num: 11379, src obj: 1, src ofs: 0x4639c, dst obj: 3, dst ofs: 0xb328
   463a0:	e8 cb 20 fc ff       	call   W?$ct:SOUND$n(pna)_
change_weapon_branch_42:
   463a5:	89 86 48 11 00 00    	mov    DWORD PTR [esi+0x1148],eax
   463ab:	b8 88 00 00 00       	mov    eax,0x88
   463b0:	e8 63 bb 02 00       	call   W?$nwn(ui)pnv
   463b5:	85 c0                	test   eax,eax
   463b7:	74 0a                	je     change_weapon_branch_43
   463b9:	ba 45 b3 00 00       	mov    edx,@obj3:classes_cpp_variable_245                           ; fixup: num: 11378, src obj: 1, src ofs: 0x463ba, dst obj: 3, dst ofs: 0xb345
   463be:	e8 ad 20 fc ff       	call   W?$ct:SOUND$n(pna)_
change_weapon_branch_43:
   463c3:	89 86 4c 11 00 00    	mov    DWORD PTR [esi+0x114c],eax
   463c9:	b8 88 00 00 00       	mov    eax,0x88
   463ce:	e8 45 bb 02 00       	call   W?$nwn(ui)pnv
   463d3:	85 c0                	test   eax,eax
   463d5:	74 0a                	je     change_weapon_branch_44
   463d7:	ba 62 b3 00 00       	mov    edx,@obj3:classes_cpp_variable_246                           ; fixup: num: 11377, src obj: 1, src ofs: 0x463d8, dst obj: 3, dst ofs: 0xb362
   463dc:	e8 8f 20 fc ff       	call   W?$ct:SOUND$n(pna)_
change_weapon_branch_44:
   463e1:	c7 86 34 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1134],0x3
   463eb:	89 86 50 11 00 00    	mov    DWORD PTR [esi+0x1150],eax
   463f1:	e9 2d f9 ff ff       	jmp    change_weapon_branch_9
change_weapon_reference_12:
   463f6:	c7 86 80 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1180],0x3
   46400:	8b ae 8c 11 00 00    	mov    ebp,DWORD PTR [esi+0x118c]
   46406:	c7 86 3c 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x113c],0x2
   46410:	83 c5 02             	add    ebp,0x2
   46413:	b8 88 00 00 00       	mov    eax,0x88
   46418:	89 ae 8c 11 00 00    	mov    DWORD PTR [esi+0x118c],ebp
   4641e:	e8 f5 ba 02 00       	call   W?$nwn(ui)pnv
   46423:	89 c3                	mov    ebx,eax
   46425:	89 c2                	mov    edx,eax
   46427:	85 c0                	test   eax,eax
   46429:	74 0a                	je     change_weapon_branch_45
   4642b:	ba 7f b3 00 00       	mov    edx,@obj3:classes_cpp_variable_247                           ; fixup: num: 11382, src obj: 1, src ofs: 0x4642c, dst obj: 3, dst ofs: 0xb37f
   46430:	e8 3b 20 fc ff       	call   W?$ct:SOUND$n(pna)_
change_weapon_branch_45:
   46435:	89 86 48 11 00 00    	mov    DWORD PTR [esi+0x1148],eax
   4643b:	b8 88 00 00 00       	mov    eax,0x88
   46440:	e8 d3 ba 02 00       	call   W?$nwn(ui)pnv
   46445:	85 c0                	test   eax,eax
   46447:	74 0a                	je     change_weapon_branch_46
   46449:	ba 9c b3 00 00       	mov    edx,@obj3:classes_cpp_variable_248                           ; fixup: num: 11381, src obj: 1, src ofs: 0x4644a, dst obj: 3, dst ofs: 0xb39c
   4644e:	e8 1d 20 fc ff       	call   W?$ct:SOUND$n(pna)_
change_weapon_branch_46:
   46453:	89 86 4c 11 00 00    	mov    DWORD PTR [esi+0x114c],eax
   46459:	b8 88 00 00 00       	mov    eax,0x88
   4645e:	e8 b5 ba 02 00       	call   W?$nwn(ui)pnv
   46463:	85 c0                	test   eax,eax
   46465:	74 0a                	je     change_weapon_branch_47
   46467:	ba b9 b3 00 00       	mov    edx,@obj3:classes_cpp_variable_249                           ; fixup: num: 11380, src obj: 1, src ofs: 0x46468, dst obj: 3, dst ofs: 0xb3b9
   4646c:	e8 ff 1f fc ff       	call   W?$ct:SOUND$n(pna)_
change_weapon_branch_47:
   46471:	c7 86 34 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1134],0x3
   4647b:	89 86 50 11 00 00    	mov    DWORD PTR [esi+0x1150],eax
   46481:	e9 9d f8 ff ff       	jmp    change_weapon_branch_9
change_weapon_reference_13:
   46486:	c7 86 80 11 00 00 04 00 00 00 	mov    DWORD PTR [esi+0x1180],0x4
   46490:	8b be 8c 11 00 00    	mov    edi,DWORD PTR [esi+0x118c]
   46496:	c7 86 3c 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x113c],0x2
   464a0:	83 c7 02             	add    edi,0x2
   464a3:	b8 88 00 00 00       	mov    eax,0x88
   464a8:	89 be 8c 11 00 00    	mov    DWORD PTR [esi+0x118c],edi
   464ae:	e8 65 ba 02 00       	call   W?$nwn(ui)pnv
   464b3:	85 c0                	test   eax,eax
   464b5:	74 0a                	je     change_weapon_branch_48
   464b7:	ba d6 b3 00 00       	mov    edx,@obj3:classes_cpp_variable_250                           ; fixup: num: 11387, src obj: 1, src ofs: 0x464b8, dst obj: 3, dst ofs: 0xb3d6
   464bc:	e8 af 1f fc ff       	call   W?$ct:SOUND$n(pna)_
change_weapon_branch_48:
   464c1:	89 86 48 11 00 00    	mov    DWORD PTR [esi+0x1148],eax
   464c7:	b8 88 00 00 00       	mov    eax,0x88
   464cc:	e8 47 ba 02 00       	call   W?$nwn(ui)pnv
   464d1:	85 c0                	test   eax,eax
   464d3:	74 0a                	je     change_weapon_branch_49
   464d5:	ba f3 b3 00 00       	mov    edx,@obj3:classes_cpp_variable_251                           ; fixup: num: 11386, src obj: 1, src ofs: 0x464d6, dst obj: 3, dst ofs: 0xb3f3
   464da:	e8 91 1f fc ff       	call   W?$ct:SOUND$n(pna)_
change_weapon_branch_49:
   464df:	89 86 4c 11 00 00    	mov    DWORD PTR [esi+0x114c],eax
   464e5:	b8 88 00 00 00       	mov    eax,0x88
   464ea:	e8 29 ba 02 00       	call   W?$nwn(ui)pnv
   464ef:	85 c0                	test   eax,eax
   464f1:	74 0a                	je     change_weapon_branch_50
   464f3:	ba 10 b4 00 00       	mov    edx,@obj3:classes_cpp_variable_252                           ; fixup: num: 11385, src obj: 1, src ofs: 0x464f4, dst obj: 3, dst ofs: 0xb410
   464f8:	e8 73 1f fc ff       	call   W?$ct:SOUND$n(pna)_
change_weapon_branch_50:
   464fd:	c7 86 34 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1134],0x3
   46507:	89 86 50 11 00 00    	mov    DWORD PTR [esi+0x1150],eax
   4650d:	e9 11 f8 ff ff       	jmp    change_weapon_branch_9
change_weapon_reference_14:
   46512:	8b 8e 8c 11 00 00    	mov    ecx,DWORD PTR [esi+0x118c]
   46518:	83 c1 02             	add    ecx,0x2
   4651b:	b8 88 00 00 00       	mov    eax,0x88
   46520:	89 8e 8c 11 00 00    	mov    DWORD PTR [esi+0x118c],ecx
   46526:	e8 ed b9 02 00       	call   W?$nwn(ui)pnv
   4652b:	85 c0                	test   eax,eax
   4652d:	74 0a                	je     change_weapon_branch_51
   4652f:	ba 2d b4 00 00       	mov    edx,@obj3:classes_cpp_variable_253                           ; fixup: num: 11384, src obj: 1, src ofs: 0x46530, dst obj: 3, dst ofs: 0xb42d
   46534:	e8 37 1f fc ff       	call   W?$ct:SOUND$n(pna)_
change_weapon_branch_51:
   46539:	89 86 48 11 00 00    	mov    DWORD PTR [esi+0x1148],eax
   4653f:	b8 88 00 00 00       	mov    eax,0x88
   46544:	e8 cf b9 02 00       	call   W?$nwn(ui)pnv
   46549:	85 c0                	test   eax,eax
   4654b:	74 0a                	je     change_weapon_branch_52
   4654d:	ba 4a b4 00 00       	mov    edx,@obj3:classes_cpp_variable_254                           ; fixup: num: 11383, src obj: 1, src ofs: 0x4654e, dst obj: 3, dst ofs: 0xb44a
   46552:	e8 19 1f fc ff       	call   W?$ct:SOUND$n(pna)_
change_weapon_branch_52:
   46557:	89 86 4c 11 00 00    	mov    DWORD PTR [esi+0x114c],eax
   4655d:	b8 88 00 00 00       	mov    eax,0x88
   46562:	e8 b1 b9 02 00       	call   W?$nwn(ui)pnv
   46567:	85 c0                	test   eax,eax
   46569:	74 0a                	je     change_weapon_branch_53
   4656b:	ba 67 b4 00 00       	mov    edx,@obj3:classes_cpp_variable_255                           ; fixup: num: 11390, src obj: 1, src ofs: 0x4656c, dst obj: 3, dst ofs: 0xb467
   46570:	e8 fb 1e fc ff       	call   W?$ct:SOUND$n(pna)_
change_weapon_branch_53:
   46575:	c7 86 6c 11 00 00 01 00 00 00 	mov    DWORD PTR [esi+0x116c],0x1
   4657f:	c7 86 34 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1134],0x3
   46589:	c7 86 80 11 00 00 05 00 00 00 	mov    DWORD PTR [esi+0x1180],0x5
   46593:	c7 86 3c 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x113c],0x2
   4659d:	89 86 50 11 00 00    	mov    DWORD PTR [esi+0x1150],eax
   465a3:	e9 7b f7 ff ff       	jmp    change_weapon_branch_9
change_weapon_reference_15:
   465a8:	8b 9e 8c 11 00 00    	mov    ebx,DWORD PTR [esi+0x118c]
   465ae:	83 c3 02             	add    ebx,0x2
   465b1:	b8 88 00 00 00       	mov    eax,0x88
   465b6:	89 9e 8c 11 00 00    	mov    DWORD PTR [esi+0x118c],ebx
   465bc:	e8 57 b9 02 00       	call   W?$nwn(ui)pnv
   465c1:	85 c0                	test   eax,eax
   465c3:	74 0a                	je     change_weapon_branch_54
   465c5:	ba 84 b4 00 00       	mov    edx,@obj3:classes_cpp_variable_256                           ; fixup: num: 11389, src obj: 1, src ofs: 0x465c6, dst obj: 3, dst ofs: 0xb484
   465ca:	e8 a1 1e fc ff       	call   W?$ct:SOUND$n(pna)_
change_weapon_branch_54:
   465cf:	89 86 48 11 00 00    	mov    DWORD PTR [esi+0x1148],eax
   465d5:	b8 88 00 00 00       	mov    eax,0x88
   465da:	e8 39 b9 02 00       	call   W?$nwn(ui)pnv
   465df:	85 c0                	test   eax,eax
   465e1:	74 0a                	je     change_weapon_branch_55
   465e3:	ba a2 b4 00 00       	mov    edx,@obj3:classes_cpp_variable_257                           ; fixup: num: 11388, src obj: 1, src ofs: 0x465e4, dst obj: 3, dst ofs: 0xb4a2
   465e8:	e8 83 1e fc ff       	call   W?$ct:SOUND$n(pna)_
change_weapon_branch_55:
   465ed:	c7 86 6c 11 00 00 01 00 00 00 	mov    DWORD PTR [esi+0x116c],0x1
   465f7:	c7 86 34 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x1134],0x2
   46601:	c7 86 80 11 00 00 08 00 00 00 	mov    DWORD PTR [esi+0x1180],0x8
   4660b:	c7 86 3c 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x113c],0x2
   46615:	89 86 4c 11 00 00    	mov    DWORD PTR [esi+0x114c],eax
   4661b:	e9 03 f7 ff ff       	jmp    change_weapon_branch_9
change_weapon_reference_16:
   46620:	c7 86 80 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1180],0x3
   4662a:	8b 96 8c 11 00 00    	mov    edx,DWORD PTR [esi+0x118c]
   46630:	c7 86 3c 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x113c],0x2
   4663a:	83 c2 02             	add    edx,0x2
   4663d:	b8 88 00 00 00       	mov    eax,0x88
   46642:	89 96 8c 11 00 00    	mov    DWORD PTR [esi+0x118c],edx
   46648:	e8 cb b8 02 00       	call   W?$nwn(ui)pnv
   4664d:	85 c0                	test   eax,eax
   4664f:	74 0a                	je     change_weapon_branch_56
   46651:	ba c0 b4 00 00       	mov    edx,@obj3:classes_cpp_variable_258                           ; fixup: num: 11393, src obj: 1, src ofs: 0x46652, dst obj: 3, dst ofs: 0xb4c0
   46656:	e8 15 1e fc ff       	call   W?$ct:SOUND$n(pna)_
change_weapon_branch_56:
   4665b:	89 86 48 11 00 00    	mov    DWORD PTR [esi+0x1148],eax
   46661:	b8 88 00 00 00       	mov    eax,0x88
   46666:	e8 ad b8 02 00       	call   W?$nwn(ui)pnv
   4666b:	85 c0                	test   eax,eax
   4666d:	74 0a                	je     change_weapon_branch_57
   4666f:	ba dd b4 00 00       	mov    edx,@obj3:classes_cpp_variable_259                           ; fixup: num: 11392, src obj: 1, src ofs: 0x46670, dst obj: 3, dst ofs: 0xb4dd
   46674:	e8 f7 1d fc ff       	call   W?$ct:SOUND$n(pna)_
change_weapon_branch_57:
   46679:	89 86 4c 11 00 00    	mov    DWORD PTR [esi+0x114c],eax
   4667f:	b8 88 00 00 00       	mov    eax,0x88
   46684:	e8 8f b8 02 00       	call   W?$nwn(ui)pnv
   46689:	85 c0                	test   eax,eax
   4668b:	74 0a                	je     change_weapon_branch_58
   4668d:	ba fa b4 00 00       	mov    edx,@obj3:classes_cpp_variable_260                           ; fixup: num: 11391, src obj: 1, src ofs: 0x4668e, dst obj: 3, dst ofs: 0xb4fa
   46692:	e8 d9 1d fc ff       	call   W?$ct:SOUND$n(pna)_
change_weapon_branch_58:
   46697:	c7 86 34 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1134],0x3
   466a1:	89 86 50 11 00 00    	mov    DWORD PTR [esi+0x1150],eax
   466a7:	e9 77 f6 ff ff       	jmp    change_weapon_branch_9
change_weapon_reference_17:
   466ac:	8b 86 8c 11 00 00    	mov    eax,DWORD PTR [esi+0x118c]
   466b2:	c7 86 80 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1180],0x3
   466bc:	40                   	inc    eax
   466bd:	89 86 8c 11 00 00    	mov    DWORD PTR [esi+0x118c],eax
   466c3:	b8 88 00 00 00       	mov    eax,0x88
   466c8:	c7 86 3c 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x113c],0x2
   466d2:	e8 41 b8 02 00       	call   W?$nwn(ui)pnv
   466d7:	85 c0                	test   eax,eax
   466d9:	74 0a                	je     change_weapon_branch_59
   466db:	ba 17 b5 00 00       	mov    edx,@obj3:classes_cpp_variable_261                           ; fixup: num: 11397, src obj: 1, src ofs: 0x466dc, dst obj: 3, dst ofs: 0xb517
   466e0:	e8 8b 1d fc ff       	call   W?$ct:SOUND$n(pna)_
change_weapon_branch_59:
   466e5:	89 86 48 11 00 00    	mov    DWORD PTR [esi+0x1148],eax
   466eb:	b8 88 00 00 00       	mov    eax,0x88
   466f0:	e8 23 b8 02 00       	call   W?$nwn(ui)pnv
   466f5:	85 c0                	test   eax,eax
   466f7:	74 0a                	je     change_weapon_branch_60
   466f9:	ba 34 b5 00 00       	mov    edx,@obj3:classes_cpp_variable_262                           ; fixup: num: 11396, src obj: 1, src ofs: 0x466fa, dst obj: 3, dst ofs: 0xb534
   466fe:	e8 6d 1d fc ff       	call   W?$ct:SOUND$n(pna)_
change_weapon_branch_60:
   46703:	89 86 4c 11 00 00    	mov    DWORD PTR [esi+0x114c],eax
   46709:	b8 88 00 00 00       	mov    eax,0x88
   4670e:	e8 05 b8 02 00       	call   W?$nwn(ui)pnv
   46713:	85 c0                	test   eax,eax
   46715:	74 0a                	je     change_weapon_branch_61
   46717:	ba 51 b5 00 00       	mov    edx,@obj3:classes_cpp_variable_263                           ; fixup: num: 11395, src obj: 1, src ofs: 0x46718, dst obj: 3, dst ofs: 0xb551
   4671c:	e8 4f 1d fc ff       	call   W?$ct:SOUND$n(pna)_
change_weapon_branch_61:
   46721:	c7 86 34 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1134],0x3
   4672b:	89 86 50 11 00 00    	mov    DWORD PTR [esi+0x1150],eax
   46731:	e9 ed f5 ff ff       	jmp    change_weapon_branch_9
change_weapon_reference_18:
   46736:	c7 86 80 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1180],0x3
   46740:	8b ae 8c 11 00 00    	mov    ebp,DWORD PTR [esi+0x118c]
   46746:	c7 86 3c 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x113c],0x2
   46750:	83 c5 02             	add    ebp,0x2
   46753:	b8 88 00 00 00       	mov    eax,0x88
   46758:	89 ae 8c 11 00 00    	mov    DWORD PTR [esi+0x118c],ebp
   4675e:	e8 b5 b7 02 00       	call   W?$nwn(ui)pnv
   46763:	85 c0                	test   eax,eax
   46765:	74 0a                	je     change_weapon_branch_62
   46767:	ba 6e b5 00 00       	mov    edx,@obj3:classes_cpp_variable_264                           ; fixup: num: 11394, src obj: 1, src ofs: 0x46768, dst obj: 3, dst ofs: 0xb56e
   4676c:	e8 ff 1c fc ff       	call   W?$ct:SOUND$n(pna)_
change_weapon_branch_62:
   46771:	89 86 48 11 00 00    	mov    DWORD PTR [esi+0x1148],eax
   46777:	b8 88 00 00 00       	mov    eax,0x88
   4677c:	e8 97 b7 02 00       	call   W?$nwn(ui)pnv
   46781:	85 c0                	test   eax,eax
   46783:	74 0a                	je     change_weapon_branch_63
   46785:	ba 8b b5 00 00       	mov    edx,@obj3:classes_cpp_variable_265                           ; fixup: num: 11401, src obj: 1, src ofs: 0x46786, dst obj: 3, dst ofs: 0xb58b
   4678a:	e8 e1 1c fc ff       	call   W?$ct:SOUND$n(pna)_
change_weapon_branch_63:
   4678f:	89 86 4c 11 00 00    	mov    DWORD PTR [esi+0x114c],eax
   46795:	b8 88 00 00 00       	mov    eax,0x88
   4679a:	e8 79 b7 02 00       	call   W?$nwn(ui)pnv
   4679f:	85 c0                	test   eax,eax
   467a1:	74 0a                	je     change_weapon_branch_64
   467a3:	ba a8 b5 00 00       	mov    edx,@obj3:classes_cpp_variable_266                           ; fixup: num: 11400, src obj: 1, src ofs: 0x467a4, dst obj: 3, dst ofs: 0xb5a8
   467a8:	e8 c3 1c fc ff       	call   W?$ct:SOUND$n(pna)_
change_weapon_branch_64:
   467ad:	c7 86 34 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1134],0x3
   467b7:	89 86 50 11 00 00    	mov    DWORD PTR [esi+0x1150],eax
   467bd:	e9 61 f5 ff ff       	jmp    change_weapon_branch_9
change_weapon_reference_19:
   467c2:	c7 86 80 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1180],0x3
   467cc:	8b be 8c 11 00 00    	mov    edi,DWORD PTR [esi+0x118c]
   467d2:	c7 86 3c 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x113c],0x2
   467dc:	47                   	inc    edi
   467dd:	b8 88 00 00 00       	mov    eax,0x88
   467e2:	89 be 8c 11 00 00    	mov    DWORD PTR [esi+0x118c],edi
   467e8:	e8 2b b7 02 00       	call   W?$nwn(ui)pnv
   467ed:	85 c0                	test   eax,eax
   467ef:	74 0a                	je     change_weapon_branch_65
   467f1:	ba c5 b5 00 00       	mov    edx,@obj3:classes_cpp_variable_267                           ; fixup: num: 11399, src obj: 1, src ofs: 0x467f2, dst obj: 3, dst ofs: 0xb5c5
   467f6:	e8 75 1c fc ff       	call   W?$ct:SOUND$n(pna)_
change_weapon_branch_65:
   467fb:	89 86 48 11 00 00    	mov    DWORD PTR [esi+0x1148],eax
   46801:	b8 88 00 00 00       	mov    eax,0x88
   46806:	e8 0d b7 02 00       	call   W?$nwn(ui)pnv
   4680b:	85 c0                	test   eax,eax
   4680d:	74 0a                	je     change_weapon_branch_66
   4680f:	ba e2 b5 00 00       	mov    edx,@obj3:classes_cpp_variable_268                           ; fixup: num: 11398, src obj: 1, src ofs: 0x46810, dst obj: 3, dst ofs: 0xb5e2
   46814:	e8 57 1c fc ff       	call   W?$ct:SOUND$n(pna)_
change_weapon_branch_66:
   46819:	89 86 4c 11 00 00    	mov    DWORD PTR [esi+0x114c],eax
   4681f:	b8 88 00 00 00       	mov    eax,0x88
   46824:	e8 ef b6 02 00       	call   W?$nwn(ui)pnv
   46829:	85 c0                	test   eax,eax
   4682b:	74 0a                	je     change_weapon_branch_67
   4682d:	ba ff b5 00 00       	mov    edx,@obj3:classes_cpp_variable_269                           ; fixup: num: 11405, src obj: 1, src ofs: 0x4682e, dst obj: 3, dst ofs: 0xb5ff
   46832:	e8 39 1c fc ff       	call   W?$ct:SOUND$n(pna)_
change_weapon_branch_67:
   46837:	c7 86 34 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1134],0x3
   46841:	89 86 50 11 00 00    	mov    DWORD PTR [esi+0x1150],eax
   46847:	e9 d7 f4 ff ff       	jmp    change_weapon_branch_9
change_weapon_reference_20:
   4684c:	c7 86 80 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1180],0x3
   46856:	8b 8e 8c 11 00 00    	mov    ecx,DWORD PTR [esi+0x118c]
   4685c:	c7 86 3c 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x113c],0x2
   46866:	83 c1 02             	add    ecx,0x2
   46869:	b8 88 00 00 00       	mov    eax,0x88
   4686e:	89 8e 8c 11 00 00    	mov    DWORD PTR [esi+0x118c],ecx
   46874:	e8 9f b6 02 00       	call   W?$nwn(ui)pnv
   46879:	85 c0                	test   eax,eax
   4687b:	74 0a                	je     change_weapon_branch_68
   4687d:	ba 1c b6 00 00       	mov    edx,@obj3:classes_cpp_variable_270                           ; fixup: num: 11404, src obj: 1, src ofs: 0x4687e, dst obj: 3, dst ofs: 0xb61c
   46882:	e8 e9 1b fc ff       	call   W?$ct:SOUND$n(pna)_
change_weapon_branch_68:
   46887:	89 86 48 11 00 00    	mov    DWORD PTR [esi+0x1148],eax
   4688d:	b8 88 00 00 00       	mov    eax,0x88
   46892:	e8 81 b6 02 00       	call   W?$nwn(ui)pnv
   46897:	85 c0                	test   eax,eax
   46899:	74 0a                	je     change_weapon_branch_69
   4689b:	ba 39 b6 00 00       	mov    edx,@obj3:classes_cpp_variable_271                           ; fixup: num: 11403, src obj: 1, src ofs: 0x4689c, dst obj: 3, dst ofs: 0xb639
   468a0:	e8 cb 1b fc ff       	call   W?$ct:SOUND$n(pna)_
change_weapon_branch_69:
   468a5:	89 86 4c 11 00 00    	mov    DWORD PTR [esi+0x114c],eax
   468ab:	b8 88 00 00 00       	mov    eax,0x88
   468b0:	e8 63 b6 02 00       	call   W?$nwn(ui)pnv
   468b5:	85 c0                	test   eax,eax
   468b7:	74 0a                	je     change_weapon_branch_70
   468b9:	ba 56 b6 00 00       	mov    edx,@obj3:classes_cpp_variable_272                           ; fixup: num: 11402, src obj: 1, src ofs: 0x468ba, dst obj: 3, dst ofs: 0xb656
   468be:	e8 ad 1b fc ff       	call   W?$ct:SOUND$n(pna)_
change_weapon_branch_70:
   468c3:	c7 86 34 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1134],0x3
   468cd:	89 86 50 11 00 00    	mov    DWORD PTR [esi+0x1150],eax
   468d3:	e9 4b f4 ff ff       	jmp    change_weapon_branch_9
change_weapon_reference_21:
   468d8:	c7 86 80 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x1180],0x2
   468e2:	8b 9e 8c 11 00 00    	mov    ebx,DWORD PTR [esi+0x118c]
   468e8:	c7 86 3c 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x113c],0x2
   468f2:	43                   	inc    ebx
   468f3:	b8 88 00 00 00       	mov    eax,0x88
   468f8:	89 9e 8c 11 00 00    	mov    DWORD PTR [esi+0x118c],ebx
   468fe:	e8 15 b6 02 00       	call   W?$nwn(ui)pnv
   46903:	85 c0                	test   eax,eax
   46905:	74 0a                	je     change_weapon_branch_71
   46907:	ba 73 b6 00 00       	mov    edx,@obj3:classes_cpp_variable_273                           ; fixup: num: 11408, src obj: 1, src ofs: 0x46908, dst obj: 3, dst ofs: 0xb673
   4690c:	e8 5f 1b fc ff       	call   W?$ct:SOUND$n(pna)_
change_weapon_branch_71:
   46911:	89 86 48 11 00 00    	mov    DWORD PTR [esi+0x1148],eax
   46917:	b8 88 00 00 00       	mov    eax,0x88
   4691c:	e8 f7 b5 02 00       	call   W?$nwn(ui)pnv
   46921:	85 c0                	test   eax,eax
   46923:	74 0a                	je     change_weapon_branch_72
   46925:	ba 90 b6 00 00       	mov    edx,@obj3:classes_cpp_variable_274                           ; fixup: num: 11407, src obj: 1, src ofs: 0x46926, dst obj: 3, dst ofs: 0xb690
   4692a:	e8 41 1b fc ff       	call   W?$ct:SOUND$n(pna)_
change_weapon_branch_72:
   4692f:	89 86 4c 11 00 00    	mov    DWORD PTR [esi+0x114c],eax
   46935:	b8 88 00 00 00       	mov    eax,0x88
   4693a:	e8 d9 b5 02 00       	call   W?$nwn(ui)pnv
   4693f:	85 c0                	test   eax,eax
   46941:	74 0a                	je     change_weapon_branch_73
   46943:	ba ad b6 00 00       	mov    edx,@obj3:classes_cpp_variable_275                           ; fixup: num: 11406, src obj: 1, src ofs: 0x46944, dst obj: 3, dst ofs: 0xb6ad
   46948:	e8 23 1b fc ff       	call   W?$ct:SOUND$n(pna)_
change_weapon_branch_73:
   4694d:	c7 86 34 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1134],0x3
   46957:	89 86 50 11 00 00    	mov    DWORD PTR [esi+0x1150],eax
   4695d:	e9 c1 f3 ff ff       	jmp    change_weapon_branch_9
change_weapon_branch_74:
   46962:	8b 86 bc 11 00 00    	mov    eax,DWORD PTR [esi+0x11bc]
   46968:	c7 86 6c 11 00 00 01 00 00 00 	mov    DWORD PTR [esi+0x116c],0x1
   46972:	83 f8 14             	cmp    eax,0x14
   46975:	0f 87 a8 f3 ff ff    	ja     change_weapon_branch_9
   4697b:	2e ff 24 85 b8 5b 04 00 	jmp    DWORD PTR cs:[eax*4+@obj1:check_region_reference_1]       ; fixup: num: 11324, src obj: 1, src ofs: 0x4697f, dst obj: 1, dst ofs: 0x45bb8
change_weapon_branch_75:
   46983:	b8 69 b7 00 00       	mov    eax,@obj3:classes_cpp_variable_281                           ; fixup: num: 11323, src obj: 1, src ofs: 0x46984, dst obj: 3, dst ofs: 0xb769
change_weapon_branch_76:
   46988:	50                   	push   eax
   46989:	68 6e b7 00 00       	push   @obj3:classes_cpp_variable_282                               ; fixup: num: 11322, src obj: 1, src ofs: 0x4698a, dst obj: 3, dst ofs: 0xb76e
   4698e:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 11321, src obj: 1, src ofs: 0x4698f, dst obj: 3, dst ofs: 0x237fc
   46993:	e8 49 a2 02 00       	call   sprintf_
   46998:	83 c4 0c             	add    esp,0xc
change_weapon_branch_77:
   4699b:	8b 9e 98 10 00 00    	mov    ebx,DWORD PTR [esi+0x1098]
   469a1:	85 db                	test   ebx,ebx
   469a3:	74 37                	je     change_weapon_branch_80
   469a5:	89 d8                	mov    eax,ebx
   469a7:	8b 5b 3c             	mov    ebx,DWORD PTR [ebx+0x3c]
   469aa:	8b 48 24             	mov    ecx,DWORD PTR [eax+0x24]
   469ad:	8b be 98 11 00 00    	mov    edi,DWORD PTR [esi+0x1198]
   469b3:	01 cb                	add    ebx,ecx
   469b5:	39 fb                	cmp    ebx,edi
   469b7:	7d 23                	jge    change_weapon_branch_80
   469b9:	8b 68 10             	mov    ebp,DWORD PTR [eax+0x10]
   469bc:	85 ed                	test   ebp,ebp
   469be:	74 04                	je     change_weapon_branch_78
   469c0:	89 e8                	mov    eax,ebp
   469c2:	eb 05                	jmp    change_weapon_branch_79
change_weapon_branch_78:
   469c4:	b8 78 b7 00 00       	mov    eax,@obj3:classes_cpp_variable_283                           ; fixup: num: 11320, src obj: 1, src ofs: 0x469c5, dst obj: 3, dst ofs: 0xb778
change_weapon_branch_79:
   469c9:	50                   	push   eax
   469ca:	68 7d b7 00 00       	push   @obj3:classes_cpp_variable_284                               ; fixup: num: 11319, src obj: 1, src ofs: 0x469cb, dst obj: 3, dst ofs: 0xb77d
   469cf:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 11426, src obj: 1, src ofs: 0x469d0, dst obj: 3, dst ofs: 0x237fc
   469d4:	e8 08 a2 02 00       	call   sprintf_
   469d9:	83 c4 0c             	add    esp,0xc
change_weapon_branch_80:
   469dc:	5d                   	pop    ebp
   469dd:	5f                   	pop    edi
   469de:	5e                   	pop    esi
   469df:	59                   	pop    ecx
   469e0:	5b                   	pop    ebx
   469e1:	c3                   	ret    
   469e2:	8b c0                	mov    eax,eax
change_weapon_reference_22:                                                                         ; access size: DWORDS
   469e4:	b9 6b 04 00 fb       	mov    ecx,0xfb00046b                                               ; fixup: num: 11425, src obj: 1, src ofs: 0x469e4, dst obj: 1, dst ofs: 0x46bb9; fixup: num: 11424, src obj: 1, src ofs: 0x469e8, dst obj: 1, dst ofs: 0x46dfb
   469e9:	6d                   	ins    DWORD PTR es:[edi],dx
   469ea:	04 00                	add    al,0x0
   469ec:	8b 6e 04             	mov    ebp,DWORD PTR [esi+0x4]                                      ; fixup: num: 11423, src obj: 1, src ofs: 0x469ec, dst obj: 1, dst ofs: 0x46e8b
   469ef:	00 fd                	add    ch,bh                                                        ; fixup: num: 11422, src obj: 1, src ofs: 0x469f0, dst obj: 1, dst ofs: 0x46efd
   469f1:	6e                   	outs   dx,BYTE PTR ds:[esi]
   469f2:	04 00                	add    al,0x0
   469f4:	6f                   	outs   dx,DWORD PTR ds:[esi]                                        ; fixup: num: 11421, src obj: 1, src ofs: 0x469f4, dst obj: 1, dst ofs: 0x46f6f
   469f5:	6f                   	outs   dx,DWORD PTR ds:[esi]
   469f6:	04 00                	add    al,0x0
   469f8:	e1 6f                	loope  @obj1:clear_mod_76_reference_6                               ; fixup: num: 11420, src obj: 1, src ofs: 0x469f8, dst obj: 1, dst ofs: 0x46fe1
   469fa:	04 00                	add    al,0x0
   469fc:	53                   	push   ebx                                                          ; fixup: num: 11419, src obj: 1, src ofs: 0x469fc, dst obj: 1, dst ofs: 0x47053
   469fd:	70 04                	jo     change_weapon_branch_81
   469ff:	00 e3                	add    bl,ah                                                        ; fixup: num: 11418, src obj: 1, src ofs: 0x46a00, dst obj: 1, dst ofs: 0x470e3
   46a01:	70 04                	jo     change_weapon_branch_82
change_weapon_branch_81:
   46a03:	00 73 71             	add    BYTE PTR [ebx+0x71],dh                                       ; fixup: num: 11417, src obj: 1, src ofs: 0x46a04, dst obj: 1, dst ofs: 0x47173
   46a06:	04 00                	add    al,0x0
; misplaced item, should be at offset 0x46a07
change_weapon_branch_82:
   46a08:	03 72 04             	add    esi,DWORD PTR [edx+0x4]                                      ; fixup: num: 11416, src obj: 1, src ofs: 0x46a08, dst obj: 1, dst ofs: 0x47203
   46a0b:	00 93 72 04 00 21    	add    BYTE PTR [ebx+0x21000472],dl                                 ; fixup: num: 11415, src obj: 1, src ofs: 0x46a0c, dst obj: 1, dst ofs: 0x47293; fixup: num: 11414, src obj: 1, src ofs: 0x46a10, dst obj: 1, dst ofs: 0x47321
   46a11:	73 04                	jae    change_weapon_branch_83
   46a13:	00 b1 73 04 00 3d    	add    BYTE PTR [ecx+0x3d000473],dh                                 ; fixup: num: 11413, src obj: 1, src ofs: 0x46a14, dst obj: 1, dst ofs: 0x473b1; fixup: num: 11412, src obj: 1, src ofs: 0x46a18, dst obj: 1, dst ofs: 0x4743d
; misplaced item, should be at offset 0x46a17
change_weapon_branch_83:
   46a19:	74 04                	je     change_weapon_branch_84
   46a1b:	00 cb                	add    bl,cl                                                        ; fixup: num: 11411, src obj: 1, src ofs: 0x46a1c, dst obj: 1, dst ofs: 0x474cb
   46a1d:	74 04                	je     change_weapon_branch_85
change_weapon_branch_84:
   46a1f:	00 43 75             	add    BYTE PTR [ebx+0x75],al                                       ; fixup: num: 11410, src obj: 1, src ofs: 0x46a20, dst obj: 1, dst ofs: 0x47543
   46a22:	04 00                	add    al,0x0
; misplaced item, should be at offset 0x46a23
change_weapon_branch_85:
   46a24:	cf                   	iret                                                                ; fixup: num: 11409, src obj: 1, src ofs: 0x46a24, dst obj: 1, dst ofs: 0x475cf
   46a25:	75 04                	jne    change_weapon_branch_86
   46a27:	00 59 76             	add    BYTE PTR [ecx+0x76],bl                                       ; fixup: num: 11328, src obj: 1, src ofs: 0x46a28, dst obj: 1, dst ofs: 0x47659
   46a2a:	04 00                	add    al,0x0
; misplaced item, should be at offset 0x46a2b
change_weapon_branch_86:
   46a2c:	e5 76                	in     eax,0x76                                                     ; fixup: num: 11327, src obj: 1, src ofs: 0x46a2c, dst obj: 1, dst ofs: 0x476e5
   46a2e:	04 00                	add    al,0x0
   46a30:	6f                   	outs   dx,DWORD PTR ds:[esi]                                        ; fixup: num: 11326, src obj: 1, src ofs: 0x46a30, dst obj: 1, dst ofs: 0x4776f
   46a31:	77 04                	ja     change_weapon_branch_87
   46a33:	00 fb                	add    bl,bh                                                        ; fixup: num: 11325, src obj: 1, src ofs: 0x46a34, dst obj: 1, dst ofs: 0x477fb
   46a35:	77 04                	ja     change_weapon_branch_88
change_weapon_branch_87:
   46a37:	00 8d 80 00 00 00    	add    BYTE PTR [ebp+0x80],cl
; misplaced item, should be at offset 0x46a3b
change_weapon_branch_88:
   46a3d:	00 8b d2       	add    BYTE PTR [ebx+0x525153d2],cl

;-------------------------------------------------
;  Function 'clear_mod_76'                       -
;-------------------------------------------------
clear_mod_76:
   46a40:	53                   	push   ebx
   46a41:	51                   	push   ecx
   46a42:	52                   	push   edx
   46a43:	56                   	push   esi
   46a44:	57                   	push   edi
   46a45:	55                   	push   ebp
   46a46:	89 c3                	mov    ebx,eax
   46a48:	c7 80 88 10 00 00 00 00 00 00 	mov    DWORD PTR [eax+0x1088],0x0
   46a52:	c6 40 52 01          	mov    BYTE PTR [eax+0x52],0x1
   46a56:	c6 40 54 01          	mov    BYTE PTR [eax+0x54],0x1
   46a5a:	c6 40 4f 01          	mov    BYTE PTR [eax+0x4f],0x1
   46a5e:	c7 80 24 11 00 00 ff ff ff ff 	mov    DWORD PTR [eax+0x1124],0xffffffff
   46a68:	8b 80 24 11 00 00    	mov    eax,DWORD PTR [eax+0x1124]
   46a6e:	c7 83 b4 10 00 00 00 00 c6 c2 	mov    DWORD PTR [ebx+0x10b4],0xc2c60000
   46a78:	c7 83 64 10 00 00 ff ff ff ff 	mov    DWORD PTR [ebx+0x1064],0xffffffff
   46a82:	c7 83 a4 10 00 00 00 00 00 00 	mov    DWORD PTR [ebx+0x10a4],0x0
   46a8c:	c7 83 a8 10 00 00 00 00 00 00 	mov    DWORD PTR [ebx+0x10a8],0x0
   46a96:	c7 83 94 10 00 00 00 00 00 00 	mov    DWORD PTR [ebx+0x1094],0x0
   46aa0:	c7 83 98 10 00 00 00 00 00 00 	mov    DWORD PTR [ebx+0x1098],0x0
   46aaa:	c7 83 8c 10 00 00 00 00 00 00 	mov    DWORD PTR [ebx+0x108c],0x0
   46ab4:	c7 83 90 10 00 00 00 00 00 00 	mov    DWORD PTR [ebx+0x1090],0x0
   46abe:	c7 83 9c 10 00 00 00 00 00 00 	mov    DWORD PTR [ebx+0x109c],0x0
   46ac8:	c7 83 78 10 00 00 00 00 00 00 	mov    DWORD PTR [ebx+0x1078],0x0
   46ad2:	89 83 ac 10 00 00    	mov    DWORD PTR [ebx+0x10ac],eax
   46ad8:	b9 46 00 00 00       	mov    ecx,0x46
   46add:	8b 83 a4 10 00 00    	mov    eax,DWORD PTR [ebx+0x10a4]
   46ae3:	31 d2                	xor    edx,edx
   46ae5:	89 83 a0 10 00 00    	mov    DWORD PTR [ebx+0x10a0],eax
   46aeb:	89 d8                	mov    eax,ebx
   46aed:	c7 83 6c 10 00 00 3b 00 00 00 	mov    DWORD PTR [ebx+0x106c],0x3b
   46af7:	e8 a4 5d ff ff       	call   go_to_frame_mod_76
   46afc:	c6 83 a0 11 00 00 34 	mov    BYTE PTR [ebx+0x11a0],0x34
   46b03:	ba 1e 00 00 00       	mov    edx,0x1e
   46b08:	89 8b 9c 11 00 00    	mov    DWORD PTR [ebx+0x119c],ecx
   46b0e:	89 0d b8 5b 02 00    	mov    DWORD PTR ds:@obj3:pc_tiredness,ecx                          ; fixup: num: 11334, src obj: 1, src ofs: 0x46b10, dst obj: 3, dst ofs: 0x25bb8
   46b14:	8b b3 bc 11 00 00    	mov    esi,DWORD PTR [ebx+0x11bc]
   46b1a:	8a 83 a0 11 00 00    	mov    al,BYTE PTR [ebx+0x11a0]
   46b20:	89 93 84 11 00 00    	mov    DWORD PTR [ebx+0x1184],edx
   46b26:	89 15 b4 5b 02 00    	mov    DWORD PTR ds:@obj3:pc_hit_points,edx                         ; fixup: num: 11333, src obj: 1, src ofs: 0x46b28, dst obj: 3, dst ofs: 0x25bb4
   46b2c:	88 83 a1 11 00 00    	mov    BYTE PTR [ebx+0x11a1],al
   46b32:	85 f6                	test   esi,esi
   46b34:	0f 84 c5 0d 00 00    	je     clear_mod_76_branch_79
   46b3a:	8b 35 d4 5b 02 00    	mov    esi,DWORD PTR ds:@obj3:pc                                    ; fixup: num: 11332, src obj: 1, src ofs: 0x46b3c, dst obj: 3, dst ofs: 0x25bd4
   46b40:	8b be bc 11 00 00    	mov    edi,DWORD PTR [esi+0x11bc]
   46b46:	31 c9                	xor    ecx,ecx
   46b48:	83 ff 14             	cmp    edi,0x14
   46b4b:	7e 24                	jle    clear_mod_76_branch_1
   46b4d:	51                   	push   ecx
   46b4e:	68 1f b0 00 00       	push   @obj3:classes_cpp_variable_217                               ; fixup: num: 11331, src obj: 1, src ofs: 0x46b4f, dst obj: 3, dst ofs: 0xb01f
   46b53:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 11330, src obj: 1, src ofs: 0x46b54, dst obj: 3, dst ofs: 0x237fc
   46b58:	bb fc 37 02 00       	mov    ebx,@obj3:log_buffer                                         ; fixup: num: 11329, src obj: 1, src ofs: 0x46b59, dst obj: 3, dst ofs: 0x237fc
   46b5d:	e8 7f a0 02 00       	call   sprintf_
   46b62:	83 c4 0c             	add    esp,0xc
   46b65:	ba 84 11 00 00       	mov    edx,0x1184
   46b6a:	31 c0                	xor    eax,eax
   46b6c:	e8 bf 14 ff ff       	call   _error_report
clear_mod_76_branch_1:
   46b71:	c7 86 8c 11 00 00 f8 ff ff 00 	mov    DWORD PTR [esi+0x118c],0xfffff8
   46b7b:	89 f3                	mov    ebx,esi
   46b7d:	89 8e bc 11 00 00    	mov    DWORD PTR [esi+0x11bc],ecx
   46b83:	8d 4e 0c             	lea    ecx,[esi+0xc]
   46b86:	31 ff                	xor    edi,edi
   46b88:	eb 0b                	jmp    clear_mod_76_branch_3
clear_mod_76_branch_2:
   46b8a:	83 c3 04             	add    ebx,0x4
   46b8d:	39 cb                	cmp    ebx,ecx
   46b8f:	0f 84 f0 0c 00 00    	je     clear_mod_76_branch_73
clear_mod_76_branch_3:
   46b95:	8b ab 48 11 00 00    	mov    ebp,DWORD PTR [ebx+0x1148]
   46b9b:	39 ef                	cmp    edi,ebp
   46b9d:	74 eb                	je     clear_mod_76_branch_2
   46b9f:	89 e8                	mov    eax,ebp
   46ba1:	85 ed                	test   ebp,ebp
   46ba3:	74 0c                	je     clear_mod_76_branch_4
   46ba5:	89 fa                	mov    edx,edi
   46ba7:	e8 84 1e fc ff       	call   W?$dt:SOUND$n()_
   46bac:	e8 c7 b4 02 00       	call   W?$dln(pnv)v
clear_mod_76_branch_4:
   46bb1:	89 bb 48 11 00 00    	mov    DWORD PTR [ebx+0x1148],edi
   46bb7:	eb d1                	jmp    clear_mod_76_branch_2
clear_mod_76_reference_1:
   46bb9:	8b 96 8c 11 00 00    	mov    edx,DWORD PTR [esi+0x118c]
   46bbf:	42                   	inc    edx
   46bc0:	b8 88 00 00 00       	mov    eax,0x88
   46bc5:	89 96 8c 11 00 00    	mov    DWORD PTR [esi+0x118c],edx
   46bcb:	e8 48 b3 02 00       	call   W?$nwn(ui)pnv
   46bd0:	89 c3                	mov    ebx,eax
   46bd2:	89 c2                	mov    edx,eax
   46bd4:	85 c0                	test   eax,eax
   46bd6:	74 0a                	je     clear_mod_76_branch_5
   46bd8:	ba 32 b0 00 00       	mov    edx,@obj3:classes_cpp_variable_218                           ; fixup: num: 11337, src obj: 1, src ofs: 0x46bd9, dst obj: 3, dst ofs: 0xb032
   46bdd:	e8 8e 18 fc ff       	call   W?$ct:SOUND$n(pna)_
clear_mod_76_branch_5:
   46be2:	89 86 48 11 00 00    	mov    DWORD PTR [esi+0x1148],eax
   46be8:	b8 88 00 00 00       	mov    eax,0x88
   46bed:	e8 26 b3 02 00       	call   W?$nwn(ui)pnv
   46bf2:	85 c0                	test   eax,eax
   46bf4:	74 0a                	je     clear_mod_76_branch_6
   46bf6:	ba 4f b0 00 00       	mov    edx,@obj3:classes_cpp_variable_219                           ; fixup: num: 11336, src obj: 1, src ofs: 0x46bf7, dst obj: 3, dst ofs: 0xb04f
   46bfb:	e8 70 18 fc ff       	call   W?$ct:SOUND$n(pna)_
clear_mod_76_branch_6:
   46c00:	89 86 4c 11 00 00    	mov    DWORD PTR [esi+0x114c],eax
   46c06:	b8 88 00 00 00       	mov    eax,0x88
   46c0b:	e8 08 b3 02 00       	call   W?$nwn(ui)pnv
   46c10:	85 c0                	test   eax,eax
   46c12:	74 0a                	je     clear_mod_76_branch_7
   46c14:	ba 6c b0 00 00       	mov    edx,@obj3:classes_cpp_variable_220                           ; fixup: num: 11335, src obj: 1, src ofs: 0x46c15, dst obj: 3, dst ofs: 0xb06c
   46c19:	e8 52 18 fc ff       	call   W?$ct:SOUND$n(pna)_
clear_mod_76_branch_7:
   46c1e:	c7 86 6c 11 00 00 01 00 00 00 	mov    DWORD PTR [esi+0x116c],0x1
   46c28:	c7 86 34 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1134],0x3
   46c32:	c7 86 80 11 00 00 01 00 00 00 	mov    DWORD PTR [esi+0x1180],0x1
   46c3c:	c7 86 3c 11 00 00 05 00 00 00 	mov    DWORD PTR [esi+0x113c],0x5
   46c46:	89 86 50 11 00 00    	mov    DWORD PTR [esi+0x1150],eax
clear_mod_76_branch_8:
   46c4c:	8b 9e 34 11 00 00    	mov    ebx,DWORD PTR [esi+0x1134]
   46c52:	31 c9                	xor    ecx,ecx
   46c54:	85 db                	test   ebx,ebx
   46c56:	0f 8e 2d 00 00 00    	jle    clear_mod_76_branch_11
   46c5c:	89 f7                	mov    edi,esi
clear_mod_76_branch_9:
   46c5e:	8b 87 48 11 00 00    	mov    eax,DWORD PTR [edi+0x1148]
   46c64:	85 c0                	test   eax,eax
   46c66:	0f 85 0f 00 00 00    	jne    clear_mod_76_branch_10
   46c6c:	bb ca b6 00 00       	mov    ebx,@obj3:classes_cpp_variable_276                           ; fixup: num: 11339, src obj: 1, src ofs: 0x46c6d, dst obj: 3, dst ofs: 0xb6ca
   46c71:	ba 1e 12 00 00       	mov    edx,0x121e
   46c76:	e8 b5 13 ff ff       	call   _error_report
clear_mod_76_branch_10:
   46c7b:	41                   	inc    ecx
   46c7c:	8b 86 34 11 00 00    	mov    eax,DWORD PTR [esi+0x1134]
   46c82:	83 c7 04             	add    edi,0x4
   46c85:	39 c1                	cmp    ecx,eax
   46c87:	7c d5                	jl     clear_mod_76_branch_9
clear_mod_76_branch_11:
   46c89:	8b 56 04             	mov    edx,DWORD PTR [esi+0x4]
   46c8c:	85 d2                	test   edx,edx
   46c8e:	74 1f                	je     clear_mod_76_branch_13
   46c90:	8b 5a 08             	mov    ebx,DWORD PTR [edx+0x8]
   46c93:	89 d0                	mov    eax,edx
   46c95:	85 db                	test   ebx,ebx
   46c97:	74 07                	je     clear_mod_76_branch_12
   46c99:	89 d8                	mov    eax,ebx
   46c9b:	e8 48 a7 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
clear_mod_76_branch_12:
   46ca0:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
   46ca3:	e8 40 a7 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   46ca8:	c7 46 04 00 00 00 00 	mov    DWORD PTR [esi+0x4],0x0
clear_mod_76_branch_13:
   46caf:	8b 0e                	mov    ecx,DWORD PTR [esi]
   46cb1:	85 c9                	test   ecx,ecx
   46cb3:	74 1d                	je     clear_mod_76_branch_15
   46cb5:	8b 79 08             	mov    edi,DWORD PTR [ecx+0x8]
   46cb8:	89 c8                	mov    eax,ecx
   46cba:	85 ff                	test   edi,edi
   46cbc:	74 07                	je     clear_mod_76_branch_14
   46cbe:	89 f8                	mov    eax,edi
   46cc0:	e8 23 a7 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
clear_mod_76_branch_14:
   46cc5:	8b 06                	mov    eax,DWORD PTR [esi]
   46cc7:	e8 1c a7 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   46ccc:	c7 06 00 00 00 00    	mov    DWORD PTR [esi],0x0
clear_mod_76_branch_15:
   46cd2:	b9 2f 12 00 00       	mov    ecx,0x122f
   46cd7:	8b 86 bc 11 00 00    	mov    eax,DWORD PTR [esi+0x11bc]
   46cdd:	bb e2 b6 00 00       	mov    ebx,@obj3:classes_cpp_variable_277                           ; fixup: num: 11338, src obj: 1, src ofs: 0x46cde, dst obj: 3, dst ofs: 0xb6e2
   46ce2:	8b 15 ac 60 02 00    	mov    edx,DWORD PTR ds:@obj3:pc_buffer                             ; fixup: num: 11349, src obj: 1, src ofs: 0x46ce4, dst obj: 3, dst ofs: 0x260ac
   46ce8:	8b 04 85 b4 3e 01 00 	mov    eax,DWORD PTR [eax*4+@obj3:pc_list]                          ; fixup: num: 11348, src obj: 1, src ofs: 0x46ceb, dst obj: 3, dst ofs: 0x13eb4
   46cef:	e8 ec 60 fc ff       	call   XFILE_read2
   46cf4:	89 c1                	mov    ecx,eax
   46cf6:	85 c0                	test   eax,eax
   46cf8:	75 31                	jne    clear_mod_76_branch_16
   46cfa:	8b 86 bc 11 00 00    	mov    eax,DWORD PTR [esi+0x11bc]
   46d00:	8b 2c 85 b4 3e 01 00 	mov    ebp,DWORD PTR [eax*4+@obj3:pc_list]                          ; fixup: num: 11347, src obj: 1, src ofs: 0x46d03, dst obj: 3, dst ofs: 0x13eb4
   46d07:	55                   	push   ebp
   46d08:	68 ee b6 00 00       	push   @obj3:classes_cpp_variable_278                               ; fixup: num: 11346, src obj: 1, src ofs: 0x46d09, dst obj: 3, dst ofs: 0xb6ee
   46d0d:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 11345, src obj: 1, src ofs: 0x46d0e, dst obj: 3, dst ofs: 0x237fc
   46d12:	bb fc 37 02 00       	mov    ebx,@obj3:log_buffer                                         ; fixup: num: 11344, src obj: 1, src ofs: 0x46d13, dst obj: 3, dst ofs: 0x237fc
   46d17:	e8 c5 9e 02 00       	call   sprintf_
   46d1c:	83 c4 0c             	add    esp,0xc
   46d1f:	ba 32 12 00 00       	mov    edx,0x1232
   46d24:	31 c0                	xor    eax,eax
   46d26:	e8 05 13 ff ff       	call   _error_report
clear_mod_76_branch_16:
   46d2b:	8b 46 40             	mov    eax,DWORD PTR [esi+0x40]
   46d2e:	8b 56 30             	mov    edx,DWORD PTR [esi+0x30]
   46d31:	8b 5e 28             	mov    ebx,DWORD PTR [esi+0x28]
   46d34:	01 d0                	add    eax,edx
   46d36:	89 ca                	mov    edx,ecx
   46d38:	01 c3                	add    ebx,eax
   46d3a:	89 f0                	mov    eax,esi
   46d3c:	e8 af 53 ff ff       	call   initialize_from_abm
   46d41:	89 f0                	mov    eax,esi
   46d43:	8b 96 64 10 00 00    	mov    edx,DWORD PTR [esi+0x1064]
   46d49:	e8 52 5b ff ff       	call   go_to_frame_mod_76
   46d4e:	53                   	push   ebx
   46d4f:	68 0e b7 00 00       	push   @obj3:classes_cpp_variable_279                               ; fixup: num: 11343, src obj: 1, src ofs: 0x46d50, dst obj: 3, dst ofs: 0xb70e
   46d54:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 11342, src obj: 1, src ofs: 0x46d55, dst obj: 3, dst ofs: 0x237fc
   46d59:	89 da                	mov    edx,ebx
   46d5b:	e8 81 9e 02 00       	call   sprintf_
   46d60:	8b 4e 30             	mov    ecx,DWORD PTR [esi+0x30]
   46d63:	8b 46 28             	mov    eax,DWORD PTR [esi+0x28]
   46d66:	29 ca                	sub    edx,ecx
   46d68:	83 c4 0c             	add    esp,0xc
   46d6b:	29 c2                	sub    edx,eax
   46d6d:	8b 6e 30             	mov    ebp,DWORD PTR [esi+0x30]
   46d70:	52                   	push   edx
   46d71:	89 56 40             	mov    DWORD PTR [esi+0x40],edx
   46d74:	89 d8                	mov    eax,ebx
   46d76:	8b 56 28             	mov    edx,DWORD PTR [esi+0x28]
   46d79:	29 e8                	sub    eax,ebp
   46d7b:	29 d0                	sub    eax,edx
   46d7d:	50                   	push   eax
   46d7e:	68 38 b7 00 00       	push   @obj3:classes_cpp_variable_280                               ; fixup: num: 11341, src obj: 1, src ofs: 0x46d7f, dst obj: 3, dst ofs: 0xb738
   46d83:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 11340, src obj: 1, src ofs: 0x46d84, dst obj: 3, dst ofs: 0x237fc
   46d88:	e8 54 9e 02 00       	call   sprintf_
   46d8d:	83 c4 10             	add    esp,0x10
   46d90:	8b 9e 68 10 00 00    	mov    ebx,DWORD PTR [esi+0x1068]
   46d96:	c7 86 60 10 00 00 05 00 00 00 	mov    DWORD PTR [esi+0x1060],0x5
   46da0:	83 fb 11             	cmp    ebx,0x11
   46da3:	74 14                	je     clear_mod_76_branch_17
   46da5:	c7 86 68 10 00 00 11 00 00 00 	mov    DWORD PTR [esi+0x1068],0x11
   46daf:	c7 86 5c 10 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x105c],0x0
clear_mod_76_branch_17:
   46db9:	8b 8e 94 10 00 00    	mov    ecx,DWORD PTR [esi+0x1094]
   46dbf:	c7 86 80 10 00 00 11 00 00 00 	mov    DWORD PTR [esi+0x1080],0x11
   46dc9:	85 c9                	test   ecx,ecx
   46dcb:	0f 84 ed 0a 00 00    	je     clear_mod_76_branch_76
   46dd1:	8b 59 3c             	mov    ebx,DWORD PTR [ecx+0x3c]
   46dd4:	8b 79 24             	mov    edi,DWORD PTR [ecx+0x24]
   46dd7:	8b ae 98 11 00 00    	mov    ebp,DWORD PTR [esi+0x1198]
   46ddd:	01 fb                	add    ebx,edi
   46ddf:	89 c8                	mov    eax,ecx
   46de1:	39 eb                	cmp    ebx,ebp
   46de3:	0f 8e d5 0a 00 00    	jle    clear_mod_76_branch_76
   46de9:	8b 51 10             	mov    edx,DWORD PTR [ecx+0x10]
   46dec:	85 d2                	test   edx,edx
   46dee:	0f 84 b2 0a 00 00    	je     clear_mod_76_branch_74
   46df4:	89 d0                	mov    eax,edx
   46df6:	e9 b0 0a 00 00       	jmp    clear_mod_76_branch_75
clear_mod_76_reference_2:
   46dfb:	8b 86 8c 11 00 00    	mov    eax,DWORD PTR [esi+0x118c]
   46e01:	c7 86 80 11 00 00 04 00 00 00 	mov    DWORD PTR [esi+0x1180],0x4
   46e0b:	83 c0 02             	add    eax,0x2
   46e0e:	89 86 8c 11 00 00    	mov    DWORD PTR [esi+0x118c],eax
   46e14:	b8 88 00 00 00       	mov    eax,0x88
   46e19:	c7 86 3c 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x113c],0x2
   46e23:	e8 f0 b0 02 00       	call   W?$nwn(ui)pnv
   46e28:	89 c3                	mov    ebx,eax
   46e2a:	89 c2                	mov    edx,eax
   46e2c:	85 c0                	test   eax,eax
   46e2e:	74 0a                	je     clear_mod_76_branch_18
   46e30:	ba 89 b0 00 00       	mov    edx,@obj3:classes_cpp_variable_221                           ; fixup: num: 11350, src obj: 1, src ofs: 0x46e31, dst obj: 3, dst ofs: 0xb089
   46e35:	e8 36 16 fc ff       	call   W?$ct:SOUND$n(pna)_
clear_mod_76_branch_18:
   46e3a:	89 86 48 11 00 00    	mov    DWORD PTR [esi+0x1148],eax
   46e40:	b8 88 00 00 00       	mov    eax,0x88
   46e45:	e8 ce b0 02 00       	call   W?$nwn(ui)pnv
   46e4a:	85 c0                	test   eax,eax
   46e4c:	74 0a                	je     clear_mod_76_branch_19
   46e4e:	ba a6 b0 00 00       	mov    edx,@obj3:classes_cpp_variable_222                           ; fixup: num: 11354, src obj: 1, src ofs: 0x46e4f, dst obj: 3, dst ofs: 0xb0a6
   46e53:	e8 18 16 fc ff       	call   W?$ct:SOUND$n(pna)_
clear_mod_76_branch_19:
   46e58:	89 86 4c 11 00 00    	mov    DWORD PTR [esi+0x114c],eax
   46e5e:	b8 88 00 00 00       	mov    eax,0x88
   46e63:	e8 b0 b0 02 00       	call   W?$nwn(ui)pnv
   46e68:	85 c0                	test   eax,eax
   46e6a:	74 0a                	je     clear_mod_76_branch_20
   46e6c:	ba c3 b0 00 00       	mov    edx,@obj3:classes_cpp_variable_223                           ; fixup: num: 11353, src obj: 1, src ofs: 0x46e6d, dst obj: 3, dst ofs: 0xb0c3
   46e71:	e8 fa 15 fc ff       	call   W?$ct:SOUND$n(pna)_
clear_mod_76_branch_20:
   46e76:	c7 86 34 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1134],0x3
   46e80:	89 86 50 11 00 00    	mov    DWORD PTR [esi+0x1150],eax
   46e86:	e9 c1 fd ff ff       	jmp    clear_mod_76_branch_8
clear_mod_76_reference_3:
   46e8b:	c7 86 80 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x1180],0x2
   46e95:	8b ae 8c 11 00 00    	mov    ebp,DWORD PTR [esi+0x118c]
   46e9b:	c7 86 3c 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x113c],0x2
   46ea5:	83 c5 04             	add    ebp,0x4
   46ea8:	b8 88 00 00 00       	mov    eax,0x88
   46ead:	89 ae 8c 11 00 00    	mov    DWORD PTR [esi+0x118c],ebp
   46eb3:	e8 60 b0 02 00       	call   W?$nwn(ui)pnv
   46eb8:	89 c3                	mov    ebx,eax
   46eba:	89 c2                	mov    edx,eax
   46ebc:	85 c0                	test   eax,eax
   46ebe:	74 0a                	je     clear_mod_76_branch_21
   46ec0:	ba e0 b0 00 00       	mov    edx,@obj3:classes_cpp_variable_224                           ; fixup: num: 11352, src obj: 1, src ofs: 0x46ec1, dst obj: 3, dst ofs: 0xb0e0
   46ec5:	e8 a6 15 fc ff       	call   W?$ct:SOUND$n(pna)_
clear_mod_76_branch_21:
   46eca:	89 86 48 11 00 00    	mov    DWORD PTR [esi+0x1148],eax
   46ed0:	b8 88 00 00 00       	mov    eax,0x88
   46ed5:	e8 3e b0 02 00       	call   W?$nwn(ui)pnv
   46eda:	85 c0                	test   eax,eax
   46edc:	74 0a                	je     clear_mod_76_branch_22
   46ede:	ba fe b0 00 00       	mov    edx,@obj3:classes_cpp_variable_225                           ; fixup: num: 11351, src obj: 1, src ofs: 0x46edf, dst obj: 3, dst ofs: 0xb0fe
   46ee3:	e8 88 15 fc ff       	call   W?$ct:SOUND$n(pna)_
clear_mod_76_branch_22:
   46ee8:	c7 86 34 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x1134],0x2
   46ef2:	89 86 4c 11 00 00    	mov    DWORD PTR [esi+0x114c],eax
   46ef8:	e9 4f fd ff ff       	jmp    clear_mod_76_branch_8
clear_mod_76_reference_4:
   46efd:	c7 86 80 11 00 00 07 00 00 00 	mov    DWORD PTR [esi+0x1180],0x7
   46f07:	8b be 8c 11 00 00    	mov    edi,DWORD PTR [esi+0x118c]
   46f0d:	c7 86 3c 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x113c],0x2
   46f17:	83 c7 04             	add    edi,0x4
   46f1a:	b8 88 00 00 00       	mov    eax,0x88
   46f1f:	89 be 8c 11 00 00    	mov    DWORD PTR [esi+0x118c],edi
   46f25:	e8 ee af 02 00       	call   W?$nwn(ui)pnv
   46f2a:	89 c3                	mov    ebx,eax
   46f2c:	89 c2                	mov    edx,eax
   46f2e:	85 c0                	test   eax,eax
   46f30:	74 0a                	je     clear_mod_76_branch_23
   46f32:	ba 1b b1 00 00       	mov    edx,@obj3:classes_cpp_variable_226                           ; fixup: num: 11356, src obj: 1, src ofs: 0x46f33, dst obj: 3, dst ofs: 0xb11b
   46f37:	e8 34 15 fc ff       	call   W?$ct:SOUND$n(pna)_
clear_mod_76_branch_23:
   46f3c:	89 86 48 11 00 00    	mov    DWORD PTR [esi+0x1148],eax
   46f42:	b8 88 00 00 00       	mov    eax,0x88
   46f47:	e8 cc af 02 00       	call   W?$nwn(ui)pnv
   46f4c:	85 c0                	test   eax,eax
   46f4e:	74 0a                	je     clear_mod_76_branch_24
   46f50:	ba 39 b1 00 00       	mov    edx,@obj3:classes_cpp_variable_227                           ; fixup: num: 11355, src obj: 1, src ofs: 0x46f51, dst obj: 3, dst ofs: 0xb139
   46f55:	e8 16 15 fc ff       	call   W?$ct:SOUND$n(pna)_
clear_mod_76_branch_24:
   46f5a:	c7 86 34 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x1134],0x2
   46f64:	89 86 4c 11 00 00    	mov    DWORD PTR [esi+0x114c],eax
   46f6a:	e9 dd fc ff ff       	jmp    clear_mod_76_branch_8
clear_mod_76_reference_5:
   46f6f:	c7 86 80 11 00 00 06 00 00 00 	mov    DWORD PTR [esi+0x1180],0x6
   46f79:	8b 8e 8c 11 00 00    	mov    ecx,DWORD PTR [esi+0x118c]
   46f7f:	c7 86 3c 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x113c],0x2
   46f89:	83 c1 04             	add    ecx,0x4
   46f8c:	b8 88 00 00 00       	mov    eax,0x88
   46f91:	89 8e 8c 11 00 00    	mov    DWORD PTR [esi+0x118c],ecx
   46f97:	e8 7c af 02 00       	call   W?$nwn(ui)pnv
   46f9c:	89 c3                	mov    ebx,eax
   46f9e:	89 c2                	mov    edx,eax
   46fa0:	85 c0                	test   eax,eax
   46fa2:	74 0a                	je     clear_mod_76_branch_25
   46fa4:	ba 57 b1 00 00       	mov    edx,@obj3:classes_cpp_variable_228                           ; fixup: num: 11358, src obj: 1, src ofs: 0x46fa5, dst obj: 3, dst ofs: 0xb157
   46fa9:	e8 c2 14 fc ff       	call   W?$ct:SOUND$n(pna)_
clear_mod_76_branch_25:
   46fae:	89 86 48 11 00 00    	mov    DWORD PTR [esi+0x1148],eax
   46fb4:	b8 88 00 00 00       	mov    eax,0x88
   46fb9:	e8 5a af 02 00       	call   W?$nwn(ui)pnv
   46fbe:	85 c0                	test   eax,eax
   46fc0:	74 0a                	je     clear_mod_76_branch_26
   46fc2:	ba 74 b1 00 00       	mov    edx,@obj3:classes_cpp_variable_229                           ; fixup: num: 11357, src obj: 1, src ofs: 0x46fc3, dst obj: 3, dst ofs: 0xb174
   46fc7:	e8 a4 14 fc ff       	call   W?$ct:SOUND$n(pna)_
clear_mod_76_branch_26:
   46fcc:	c7 86 34 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x1134],0x2
   46fd6:	89 86 4c 11 00 00    	mov    DWORD PTR [esi+0x114c],eax
   46fdc:	e9 6b fc ff ff       	jmp    clear_mod_76_branch_8
clear_mod_76_reference_6:
   46fe1:	c7 86 80 11 00 00 06 00 00 00 	mov    DWORD PTR [esi+0x1180],0x6
   46feb:	8b 9e 8c 11 00 00    	mov    ebx,DWORD PTR [esi+0x118c]
   46ff1:	c7 86 3c 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x113c],0x2
   46ffb:	83 c3 04             	add    ebx,0x4
   46ffe:	b8 88 00 00 00       	mov    eax,0x88
   47003:	89 9e 8c 11 00 00    	mov    DWORD PTR [esi+0x118c],ebx
   47009:	e8 0a af 02 00       	call   W?$nwn(ui)pnv
   4700e:	89 c3                	mov    ebx,eax
   47010:	89 c2                	mov    edx,eax
   47012:	85 c0                	test   eax,eax
   47014:	74 0a                	je     clear_mod_76_branch_27
   47016:	ba 91 b1 00 00       	mov    edx,@obj3:classes_cpp_variable_230                           ; fixup: num: 11483, src obj: 1, src ofs: 0x47017, dst obj: 3, dst ofs: 0xb191
   4701b:	e8 50 14 fc ff       	call   W?$ct:SOUND$n(pna)_
clear_mod_76_branch_27:
   47020:	89 86 48 11 00 00    	mov    DWORD PTR [esi+0x1148],eax
   47026:	b8 88 00 00 00       	mov    eax,0x88
   4702b:	e8 e8 ae 02 00       	call   W?$nwn(ui)pnv
   47030:	85 c0                	test   eax,eax
   47032:	74 0a                	je     clear_mod_76_branch_28
   47034:	ba af b1 00 00       	mov    edx,@obj3:classes_cpp_variable_231                           ; fixup: num: 11482, src obj: 1, src ofs: 0x47035, dst obj: 3, dst ofs: 0xb1af
   47039:	e8 32 14 fc ff       	call   W?$ct:SOUND$n(pna)_
clear_mod_76_branch_28:
   4703e:	c7 86 34 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x1134],0x2
   47048:	89 86 4c 11 00 00    	mov    DWORD PTR [esi+0x114c],eax
   4704e:	e9 f9 fb ff ff       	jmp    clear_mod_76_branch_8
clear_mod_76_reference_7:
   47053:	c7 86 80 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1180],0x3
   4705d:	8b 96 8c 11 00 00    	mov    edx,DWORD PTR [esi+0x118c]
   47063:	c7 86 3c 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x113c],0x2
   4706d:	83 c2 02             	add    edx,0x2
   47070:	b8 88 00 00 00       	mov    eax,0x88
   47075:	89 96 8c 11 00 00    	mov    DWORD PTR [esi+0x118c],edx
   4707b:	e8 98 ae 02 00       	call   W?$nwn(ui)pnv
   47080:	89 c3                	mov    ebx,eax
   47082:	89 c2                	mov    edx,eax
   47084:	85 c0                	test   eax,eax
   47086:	74 0a                	je     clear_mod_76_branch_29
   47088:	ba cc b1 00 00       	mov    edx,@obj3:classes_cpp_variable_232                           ; fixup: num: 11486, src obj: 1, src ofs: 0x47089, dst obj: 3, dst ofs: 0xb1cc
   4708d:	e8 de 13 fc ff       	call   W?$ct:SOUND$n(pna)_
clear_mod_76_branch_29:
   47092:	89 86 48 11 00 00    	mov    DWORD PTR [esi+0x1148],eax
   47098:	b8 88 00 00 00       	mov    eax,0x88
   4709d:	e8 76 ae 02 00       	call   W?$nwn(ui)pnv
   470a2:	85 c0                	test   eax,eax
   470a4:	74 0a                	je     clear_mod_76_branch_30
   470a6:	ba e9 b1 00 00       	mov    edx,@obj3:classes_cpp_variable_233                           ; fixup: num: 11485, src obj: 1, src ofs: 0x470a7, dst obj: 3, dst ofs: 0xb1e9
   470ab:	e8 c0 13 fc ff       	call   W?$ct:SOUND$n(pna)_
clear_mod_76_branch_30:
   470b0:	89 86 4c 11 00 00    	mov    DWORD PTR [esi+0x114c],eax
   470b6:	b8 88 00 00 00       	mov    eax,0x88
   470bb:	e8 58 ae 02 00       	call   W?$nwn(ui)pnv
   470c0:	85 c0                	test   eax,eax
   470c2:	74 0a                	je     clear_mod_76_branch_31
   470c4:	ba 06 b2 00 00       	mov    edx,@obj3:classes_cpp_variable_234                           ; fixup: num: 11484, src obj: 1, src ofs: 0x470c5, dst obj: 3, dst ofs: 0xb206
   470c9:	e8 a2 13 fc ff       	call   W?$ct:SOUND$n(pna)_
clear_mod_76_branch_31:
   470ce:	c7 86 34 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1134],0x3
   470d8:	89 86 50 11 00 00    	mov    DWORD PTR [esi+0x1150],eax
   470de:	e9 69 fb ff ff       	jmp    clear_mod_76_branch_8
clear_mod_76_reference_8:
   470e3:	8b 86 8c 11 00 00    	mov    eax,DWORD PTR [esi+0x118c]
   470e9:	c7 86 80 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1180],0x3
   470f3:	83 c0 02             	add    eax,0x2
   470f6:	89 86 8c 11 00 00    	mov    DWORD PTR [esi+0x118c],eax
   470fc:	b8 88 00 00 00       	mov    eax,0x88
   47101:	c7 86 3c 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x113c],0x2
   4710b:	e8 08 ae 02 00       	call   W?$nwn(ui)pnv
   47110:	89 c3                	mov    ebx,eax
   47112:	89 c2                	mov    edx,eax
   47114:	85 c0                	test   eax,eax
   47116:	74 0a                	je     clear_mod_76_branch_32
   47118:	ba 23 b2 00 00       	mov    edx,@obj3:classes_cpp_variable_235                           ; fixup: num: 11489, src obj: 1, src ofs: 0x47119, dst obj: 3, dst ofs: 0xb223
   4711d:	e8 4e 13 fc ff       	call   W?$ct:SOUND$n(pna)_
clear_mod_76_branch_32:
   47122:	89 86 48 11 00 00    	mov    DWORD PTR [esi+0x1148],eax
   47128:	b8 88 00 00 00       	mov    eax,0x88
   4712d:	e8 e6 ad 02 00       	call   W?$nwn(ui)pnv
   47132:	85 c0                	test   eax,eax
   47134:	74 0a                	je     clear_mod_76_branch_33
   47136:	ba 40 b2 00 00       	mov    edx,@obj3:classes_cpp_variable_236                           ; fixup: num: 11488, src obj: 1, src ofs: 0x47137, dst obj: 3, dst ofs: 0xb240
   4713b:	e8 30 13 fc ff       	call   W?$ct:SOUND$n(pna)_
clear_mod_76_branch_33:
   47140:	89 86 4c 11 00 00    	mov    DWORD PTR [esi+0x114c],eax
   47146:	b8 88 00 00 00       	mov    eax,0x88
   4714b:	e8 c8 ad 02 00       	call   W?$nwn(ui)pnv
   47150:	85 c0                	test   eax,eax
   47152:	74 0a                	je     clear_mod_76_branch_34
   47154:	ba 5d b2 00 00       	mov    edx,@obj3:classes_cpp_variable_237                           ; fixup: num: 11487, src obj: 1, src ofs: 0x47155, dst obj: 3, dst ofs: 0xb25d
   47159:	e8 12 13 fc ff       	call   W?$ct:SOUND$n(pna)_
clear_mod_76_branch_34:
   4715e:	c7 86 34 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1134],0x3
   47168:	89 86 50 11 00 00    	mov    DWORD PTR [esi+0x1150],eax
   4716e:	e9 d9 fa ff ff       	jmp    clear_mod_76_branch_8
clear_mod_76_reference_9:
   47173:	c7 86 80 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1180],0x3
   4717d:	8b ae 8c 11 00 00    	mov    ebp,DWORD PTR [esi+0x118c]
   47183:	c7 86 3c 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x113c],0x2
   4718d:	83 c5 02             	add    ebp,0x2
   47190:	b8 88 00 00 00       	mov    eax,0x88
   47195:	89 ae 8c 11 00 00    	mov    DWORD PTR [esi+0x118c],ebp
   4719b:	e8 78 ad 02 00       	call   W?$nwn(ui)pnv
   471a0:	89 c3                	mov    ebx,eax
   471a2:	89 c2                	mov    edx,eax
   471a4:	85 c0                	test   eax,eax
   471a6:	74 0a                	je     clear_mod_76_branch_35
   471a8:	ba 7a b2 00 00       	mov    edx,@obj3:classes_cpp_variable_238                           ; fixup: num: 11493, src obj: 1, src ofs: 0x471a9, dst obj: 3, dst ofs: 0xb27a
   471ad:	e8 be 12 fc ff       	call   W?$ct:SOUND$n(pna)_
clear_mod_76_branch_35:
   471b2:	89 86 48 11 00 00    	mov    DWORD PTR [esi+0x1148],eax
   471b8:	b8 88 00 00 00       	mov    eax,0x88
   471bd:	e8 56 ad 02 00       	call   W?$nwn(ui)pnv
   471c2:	85 c0                	test   eax,eax
   471c4:	74 0a                	je     clear_mod_76_branch_36
   471c6:	ba 97 b2 00 00       	mov    edx,@obj3:classes_cpp_variable_239                           ; fixup: num: 11492, src obj: 1, src ofs: 0x471c7, dst obj: 3, dst ofs: 0xb297
   471cb:	e8 a0 12 fc ff       	call   W?$ct:SOUND$n(pna)_
clear_mod_76_branch_36:
   471d0:	89 86 4c 11 00 00    	mov    DWORD PTR [esi+0x114c],eax
   471d6:	b8 88 00 00 00       	mov    eax,0x88
   471db:	e8 38 ad 02 00       	call   W?$nwn(ui)pnv
   471e0:	85 c0                	test   eax,eax
   471e2:	74 0a                	je     clear_mod_76_branch_37
   471e4:	ba b4 b2 00 00       	mov    edx,@obj3:classes_cpp_variable_240                           ; fixup: num: 11491, src obj: 1, src ofs: 0x471e5, dst obj: 3, dst ofs: 0xb2b4
   471e9:	e8 82 12 fc ff       	call   W?$ct:SOUND$n(pna)_
clear_mod_76_branch_37:
   471ee:	c7 86 34 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1134],0x3
   471f8:	89 86 50 11 00 00    	mov    DWORD PTR [esi+0x1150],eax
   471fe:	e9 49 fa ff ff       	jmp    clear_mod_76_branch_8
clear_mod_76_reference_10:
   47203:	c7 86 80 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1180],0x3
   4720d:	8b be 8c 11 00 00    	mov    edi,DWORD PTR [esi+0x118c]
   47213:	c7 86 3c 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x113c],0x2
   4721d:	83 c7 02             	add    edi,0x2
   47220:	b8 88 00 00 00       	mov    eax,0x88
   47225:	89 be 8c 11 00 00    	mov    DWORD PTR [esi+0x118c],edi
   4722b:	e8 e8 ac 02 00       	call   W?$nwn(ui)pnv
   47230:	89 c3                	mov    ebx,eax
   47232:	89 c2                	mov    edx,eax
   47234:	85 c0                	test   eax,eax
   47236:	74 0a                	je     clear_mod_76_branch_38
   47238:	ba d1 b2 00 00       	mov    edx,@obj3:classes_cpp_variable_241                           ; fixup: num: 11490, src obj: 1, src ofs: 0x47239, dst obj: 3, dst ofs: 0xb2d1
   4723d:	e8 2e 12 fc ff       	call   W?$ct:SOUND$n(pna)_
clear_mod_76_branch_38:
   47242:	89 86 48 11 00 00    	mov    DWORD PTR [esi+0x1148],eax
   47248:	b8 88 00 00 00       	mov    eax,0x88
   4724d:	e8 c6 ac 02 00       	call   W?$nwn(ui)pnv
   47252:	85 c0                	test   eax,eax
   47254:	74 0a                	je     clear_mod_76_branch_39
   47256:	ba ee b2 00 00       	mov    edx,@obj3:classes_cpp_variable_242                           ; fixup: num: 11497, src obj: 1, src ofs: 0x47257, dst obj: 3, dst ofs: 0xb2ee
   4725b:	e8 10 12 fc ff       	call   W?$ct:SOUND$n(pna)_
clear_mod_76_branch_39:
   47260:	89 86 4c 11 00 00    	mov    DWORD PTR [esi+0x114c],eax
   47266:	b8 88 00 00 00       	mov    eax,0x88
   4726b:	e8 a8 ac 02 00       	call   W?$nwn(ui)pnv
   47270:	85 c0                	test   eax,eax
   47272:	74 0a                	je     clear_mod_76_branch_40
   47274:	ba 0b b3 00 00       	mov    edx,@obj3:classes_cpp_variable_243                           ; fixup: num: 11496, src obj: 1, src ofs: 0x47275, dst obj: 3, dst ofs: 0xb30b
   47279:	e8 f2 11 fc ff       	call   W?$ct:SOUND$n(pna)_
clear_mod_76_branch_40:
   4727e:	c7 86 34 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1134],0x3
   47288:	89 86 50 11 00 00    	mov    DWORD PTR [esi+0x1150],eax
   4728e:	e9 b9 f9 ff ff       	jmp    clear_mod_76_branch_8
clear_mod_76_reference_11:
   47293:	c7 86 80 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1180],0x3
   4729d:	8b 8e 8c 11 00 00    	mov    ecx,DWORD PTR [esi+0x118c]
   472a3:	c7 86 3c 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x113c],0x2
   472ad:	41                   	inc    ecx
   472ae:	b8 88 00 00 00       	mov    eax,0x88
   472b3:	89 8e 8c 11 00 00    	mov    DWORD PTR [esi+0x118c],ecx
   472b9:	e8 5a ac 02 00       	call   W?$nwn(ui)pnv
   472be:	89 c3                	mov    ebx,eax
   472c0:	89 c2                	mov    edx,eax
   472c2:	85 c0                	test   eax,eax
   472c4:	74 0a                	je     clear_mod_76_branch_41
   472c6:	ba 28 b3 00 00       	mov    edx,@obj3:classes_cpp_variable_244                           ; fixup: num: 11495, src obj: 1, src ofs: 0x472c7, dst obj: 3, dst ofs: 0xb328
   472cb:	e8 a0 11 fc ff       	call   W?$ct:SOUND$n(pna)_
clear_mod_76_branch_41:
   472d0:	89 86 48 11 00 00    	mov    DWORD PTR [esi+0x1148],eax
   472d6:	b8 88 00 00 00       	mov    eax,0x88
   472db:	e8 38 ac 02 00       	call   W?$nwn(ui)pnv
   472e0:	85 c0                	test   eax,eax
   472e2:	74 0a                	je     clear_mod_76_branch_42
   472e4:	ba 45 b3 00 00       	mov    edx,@obj3:classes_cpp_variable_245                           ; fixup: num: 11494, src obj: 1, src ofs: 0x472e5, dst obj: 3, dst ofs: 0xb345
   472e9:	e8 82 11 fc ff       	call   W?$ct:SOUND$n(pna)_
clear_mod_76_branch_42:
   472ee:	89 86 4c 11 00 00    	mov    DWORD PTR [esi+0x114c],eax
   472f4:	b8 88 00 00 00       	mov    eax,0x88
   472f9:	e8 1a ac 02 00       	call   W?$nwn(ui)pnv
   472fe:	85 c0                	test   eax,eax
   47300:	74 0a                	je     clear_mod_76_branch_43
   47302:	ba 62 b3 00 00       	mov    edx,@obj3:classes_cpp_variable_246                           ; fixup: num: 11501, src obj: 1, src ofs: 0x47303, dst obj: 3, dst ofs: 0xb362
   47307:	e8 64 11 fc ff       	call   W?$ct:SOUND$n(pna)_
clear_mod_76_branch_43:
   4730c:	c7 86 34 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1134],0x3
   47316:	89 86 50 11 00 00    	mov    DWORD PTR [esi+0x1150],eax
   4731c:	e9 2b f9 ff ff       	jmp    clear_mod_76_branch_8
clear_mod_76_reference_12:
   47321:	c7 86 80 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1180],0x3
   4732b:	8b 9e 8c 11 00 00    	mov    ebx,DWORD PTR [esi+0x118c]
   47331:	c7 86 3c 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x113c],0x2
   4733b:	83 c3 02             	add    ebx,0x2
   4733e:	b8 88 00 00 00       	mov    eax,0x88
   47343:	89 9e 8c 11 00 00    	mov    DWORD PTR [esi+0x118c],ebx
   47349:	e8 ca ab 02 00       	call   W?$nwn(ui)pnv
   4734e:	89 c3                	mov    ebx,eax
   47350:	89 c2                	mov    edx,eax
   47352:	85 c0                	test   eax,eax
   47354:	74 0a                	je     clear_mod_76_branch_44
   47356:	ba 7f b3 00 00       	mov    edx,@obj3:classes_cpp_variable_247                           ; fixup: num: 11500, src obj: 1, src ofs: 0x47357, dst obj: 3, dst ofs: 0xb37f
   4735b:	e8 10 11 fc ff       	call   W?$ct:SOUND$n(pna)_
clear_mod_76_branch_44:
   47360:	89 86 48 11 00 00    	mov    DWORD PTR [esi+0x1148],eax
   47366:	b8 88 00 00 00       	mov    eax,0x88
   4736b:	e8 a8 ab 02 00       	call   W?$nwn(ui)pnv
   47370:	85 c0                	test   eax,eax
   47372:	74 0a                	je     clear_mod_76_branch_45
   47374:	ba 9c b3 00 00       	mov    edx,@obj3:classes_cpp_variable_248                           ; fixup: num: 11499, src obj: 1, src ofs: 0x47375, dst obj: 3, dst ofs: 0xb39c
   47379:	e8 f2 10 fc ff       	call   W?$ct:SOUND$n(pna)_
clear_mod_76_branch_45:
   4737e:	89 86 4c 11 00 00    	mov    DWORD PTR [esi+0x114c],eax
   47384:	b8 88 00 00 00       	mov    eax,0x88
   47389:	e8 8a ab 02 00       	call   W?$nwn(ui)pnv
   4738e:	85 c0                	test   eax,eax
   47390:	74 0a                	je     clear_mod_76_branch_46
   47392:	ba b9 b3 00 00       	mov    edx,@obj3:classes_cpp_variable_249                           ; fixup: num: 11498, src obj: 1, src ofs: 0x47393, dst obj: 3, dst ofs: 0xb3b9
   47397:	e8 d4 10 fc ff       	call   W?$ct:SOUND$n(pna)_
clear_mod_76_branch_46:
   4739c:	c7 86 34 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1134],0x3
   473a6:	89 86 50 11 00 00    	mov    DWORD PTR [esi+0x1150],eax
   473ac:	e9 9b f8 ff ff       	jmp    clear_mod_76_branch_8
clear_mod_76_reference_13:
   473b1:	c7 86 80 11 00 00 04 00 00 00 	mov    DWORD PTR [esi+0x1180],0x4
   473bb:	8b 96 8c 11 00 00    	mov    edx,DWORD PTR [esi+0x118c]
   473c1:	c7 86 3c 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x113c],0x2
   473cb:	83 c2 02             	add    edx,0x2
   473ce:	b8 88 00 00 00       	mov    eax,0x88
   473d3:	89 96 8c 11 00 00    	mov    DWORD PTR [esi+0x118c],edx
   473d9:	e8 3a ab 02 00       	call   W?$nwn(ui)pnv
   473de:	85 c0                	test   eax,eax
   473e0:	74 0a                	je     clear_mod_76_branch_47
   473e2:	ba d6 b3 00 00       	mov    edx,@obj3:classes_cpp_variable_250                           ; fixup: num: 11505, src obj: 1, src ofs: 0x473e3, dst obj: 3, dst ofs: 0xb3d6
   473e7:	e8 84 10 fc ff       	call   W?$ct:SOUND$n(pna)_
clear_mod_76_branch_47:
   473ec:	89 86 48 11 00 00    	mov    DWORD PTR [esi+0x1148],eax
   473f2:	b8 88 00 00 00       	mov    eax,0x88
   473f7:	e8 1c ab 02 00       	call   W?$nwn(ui)pnv
   473fc:	85 c0                	test   eax,eax
   473fe:	74 0a                	je     clear_mod_76_branch_48
   47400:	ba f3 b3 00 00       	mov    edx,@obj3:classes_cpp_variable_251                           ; fixup: num: 11504, src obj: 1, src ofs: 0x47401, dst obj: 3, dst ofs: 0xb3f3
   47405:	e8 66 10 fc ff       	call   W?$ct:SOUND$n(pna)_
clear_mod_76_branch_48:
   4740a:	89 86 4c 11 00 00    	mov    DWORD PTR [esi+0x114c],eax
   47410:	b8 88 00 00 00       	mov    eax,0x88
   47415:	e8 fe aa 02 00       	call   W?$nwn(ui)pnv
   4741a:	85 c0                	test   eax,eax
   4741c:	74 0a                	je     clear_mod_76_branch_49
   4741e:	ba 10 b4 00 00       	mov    edx,@obj3:classes_cpp_variable_252                           ; fixup: num: 11503, src obj: 1, src ofs: 0x4741f, dst obj: 3, dst ofs: 0xb410
   47423:	e8 48 10 fc ff       	call   W?$ct:SOUND$n(pna)_
clear_mod_76_branch_49:
   47428:	c7 86 34 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1134],0x3
   47432:	89 86 50 11 00 00    	mov    DWORD PTR [esi+0x1150],eax
   47438:	e9 0f f8 ff ff       	jmp    clear_mod_76_branch_8
clear_mod_76_reference_14:
   4743d:	83 86 8c 11 00 00 02 	add    DWORD PTR [esi+0x118c],0x2
   47444:	b8 88 00 00 00       	mov    eax,0x88
   47449:	e8 ca aa 02 00       	call   W?$nwn(ui)pnv
   4744e:	85 c0                	test   eax,eax
   47450:	74 0a                	je     clear_mod_76_branch_50
   47452:	ba 2d b4 00 00       	mov    edx,@obj3:classes_cpp_variable_253                           ; fixup: num: 11502, src obj: 1, src ofs: 0x47453, dst obj: 3, dst ofs: 0xb42d
   47457:	e8 14 10 fc ff       	call   W?$ct:SOUND$n(pna)_
clear_mod_76_branch_50:
   4745c:	89 86 48 11 00 00    	mov    DWORD PTR [esi+0x1148],eax
   47462:	b8 88 00 00 00       	mov    eax,0x88
   47467:	e8 ac aa 02 00       	call   W?$nwn(ui)pnv
   4746c:	85 c0                	test   eax,eax
   4746e:	74 0a                	je     clear_mod_76_branch_51
   47470:	ba 4a b4 00 00       	mov    edx,@obj3:classes_cpp_variable_254                           ; fixup: num: 11509, src obj: 1, src ofs: 0x47471, dst obj: 3, dst ofs: 0xb44a
   47475:	e8 f6 0f fc ff       	call   W?$ct:SOUND$n(pna)_
clear_mod_76_branch_51:
   4747a:	89 86 4c 11 00 00    	mov    DWORD PTR [esi+0x114c],eax
   47480:	b8 88 00 00 00       	mov    eax,0x88
   47485:	e8 8e aa 02 00       	call   W?$nwn(ui)pnv
   4748a:	85 c0                	test   eax,eax
   4748c:	74 0a                	je     clear_mod_76_branch_52
   4748e:	ba 67 b4 00 00       	mov    edx,@obj3:classes_cpp_variable_255                           ; fixup: num: 11508, src obj: 1, src ofs: 0x4748f, dst obj: 3, dst ofs: 0xb467
   47493:	e8 d8 0f fc ff       	call   W?$ct:SOUND$n(pna)_
clear_mod_76_branch_52:
   47498:	c7 86 6c 11 00 00 01 00 00 00 	mov    DWORD PTR [esi+0x116c],0x1
   474a2:	c7 86 34 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1134],0x3
   474ac:	c7 86 80 11 00 00 05 00 00 00 	mov    DWORD PTR [esi+0x1180],0x5
   474b6:	c7 86 3c 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x113c],0x2
   474c0:	89 86 50 11 00 00    	mov    DWORD PTR [esi+0x1150],eax
   474c6:	e9 81 f7 ff ff       	jmp    clear_mod_76_branch_8
clear_mod_76_reference_15:
   474cb:	8b ae 8c 11 00 00    	mov    ebp,DWORD PTR [esi+0x118c]
   474d1:	83 c5 02             	add    ebp,0x2
   474d4:	b8 88 00 00 00       	mov    eax,0x88
   474d9:	89 ae 8c 11 00 00    	mov    DWORD PTR [esi+0x118c],ebp
   474df:	e8 34 aa 02 00       	call   W?$nwn(ui)pnv
   474e4:	85 c0                	test   eax,eax
   474e6:	74 0a                	je     clear_mod_76_branch_53
   474e8:	ba 84 b4 00 00       	mov    edx,@obj3:classes_cpp_variable_256                           ; fixup: num: 11507, src obj: 1, src ofs: 0x474e9, dst obj: 3, dst ofs: 0xb484
   474ed:	e8 7e 0f fc ff       	call   W?$ct:SOUND$n(pna)_
clear_mod_76_branch_53:
   474f2:	89 86 48 11 00 00    	mov    DWORD PTR [esi+0x1148],eax
   474f8:	b8 88 00 00 00       	mov    eax,0x88
   474fd:	e8 16 aa 02 00       	call   W?$nwn(ui)pnv
   47502:	85 c0                	test   eax,eax
   47504:	74 0a                	je     clear_mod_76_branch_54
   47506:	ba a2 b4 00 00       	mov    edx,@obj3:classes_cpp_variable_257                           ; fixup: num: 11506, src obj: 1, src ofs: 0x47507, dst obj: 3, dst ofs: 0xb4a2
   4750b:	e8 60 0f fc ff       	call   W?$ct:SOUND$n(pna)_
clear_mod_76_branch_54:
   47510:	c7 86 6c 11 00 00 01 00 00 00 	mov    DWORD PTR [esi+0x116c],0x1
   4751a:	c7 86 34 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x1134],0x2
   47524:	c7 86 80 11 00 00 08 00 00 00 	mov    DWORD PTR [esi+0x1180],0x8
   4752e:	c7 86 3c 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x113c],0x2
   47538:	89 86 4c 11 00 00    	mov    DWORD PTR [esi+0x114c],eax
   4753e:	e9 09 f7 ff ff       	jmp    clear_mod_76_branch_8
clear_mod_76_reference_16:
   47543:	c7 86 80 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1180],0x3
   4754d:	8b be 8c 11 00 00    	mov    edi,DWORD PTR [esi+0x118c]
   47553:	c7 86 3c 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x113c],0x2
   4755d:	83 c7 02             	add    edi,0x2
   47560:	b8 88 00 00 00       	mov    eax,0x88
   47565:	89 be 8c 11 00 00    	mov    DWORD PTR [esi+0x118c],edi
   4756b:	e8 a8 a9 02 00       	call   W?$nwn(ui)pnv
   47570:	85 c0                	test   eax,eax
   47572:	74 0a                	je     clear_mod_76_branch_55
   47574:	ba c0 b4 00 00       	mov    edx,@obj3:classes_cpp_variable_258                           ; fixup: num: 11512, src obj: 1, src ofs: 0x47575, dst obj: 3, dst ofs: 0xb4c0
   47579:	e8 f2 0e fc ff       	call   W?$ct:SOUND$n(pna)_
clear_mod_76_branch_55:
   4757e:	89 86 48 11 00 00    	mov    DWORD PTR [esi+0x1148],eax
   47584:	b8 88 00 00 00       	mov    eax,0x88
   47589:	e8 8a a9 02 00       	call   W?$nwn(ui)pnv
   4758e:	85 c0                	test   eax,eax
   47590:	74 0a                	je     clear_mod_76_branch_56
   47592:	ba dd b4 00 00       	mov    edx,@obj3:classes_cpp_variable_259                           ; fixup: num: 11511, src obj: 1, src ofs: 0x47593, dst obj: 3, dst ofs: 0xb4dd
   47597:	e8 d4 0e fc ff       	call   W?$ct:SOUND$n(pna)_
clear_mod_76_branch_56:
   4759c:	89 86 4c 11 00 00    	mov    DWORD PTR [esi+0x114c],eax
   475a2:	b8 88 00 00 00       	mov    eax,0x88
   475a7:	e8 6c a9 02 00       	call   W?$nwn(ui)pnv
   475ac:	85 c0                	test   eax,eax
   475ae:	74 0a                	je     clear_mod_76_branch_57
   475b0:	ba fa b4 00 00       	mov    edx,@obj3:classes_cpp_variable_260                           ; fixup: num: 11510, src obj: 1, src ofs: 0x475b1, dst obj: 3, dst ofs: 0xb4fa
   475b5:	e8 b6 0e fc ff       	call   W?$ct:SOUND$n(pna)_
clear_mod_76_branch_57:
   475ba:	c7 86 34 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1134],0x3
   475c4:	89 86 50 11 00 00    	mov    DWORD PTR [esi+0x1150],eax
   475ca:	e9 7d f6 ff ff       	jmp    clear_mod_76_branch_8
clear_mod_76_reference_17:
   475cf:	c7 86 80 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1180],0x3
   475d9:	8b 8e 8c 11 00 00    	mov    ecx,DWORD PTR [esi+0x118c]
   475df:	c7 86 3c 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x113c],0x2
   475e9:	41                   	inc    ecx
   475ea:	b8 88 00 00 00       	mov    eax,0x88
   475ef:	89 8e 8c 11 00 00    	mov    DWORD PTR [esi+0x118c],ecx
   475f5:	e8 1e a9 02 00       	call   W?$nwn(ui)pnv
   475fa:	85 c0                	test   eax,eax
   475fc:	74 0a                	je     clear_mod_76_branch_58
   475fe:	ba 17 b5 00 00       	mov    edx,@obj3:classes_cpp_variable_261                           ; fixup: num: 11515, src obj: 1, src ofs: 0x475ff, dst obj: 3, dst ofs: 0xb517
   47603:	e8 68 0e fc ff       	call   W?$ct:SOUND$n(pna)_
clear_mod_76_branch_58:
   47608:	89 86 48 11 00 00    	mov    DWORD PTR [esi+0x1148],eax
   4760e:	b8 88 00 00 00       	mov    eax,0x88
   47613:	e8 00 a9 02 00       	call   W?$nwn(ui)pnv
   47618:	85 c0                	test   eax,eax
   4761a:	74 0a                	je     clear_mod_76_branch_59
   4761c:	ba 34 b5 00 00       	mov    edx,@obj3:classes_cpp_variable_262                           ; fixup: num: 11514, src obj: 1, src ofs: 0x4761d, dst obj: 3, dst ofs: 0xb534
   47621:	e8 4a 0e fc ff       	call   W?$ct:SOUND$n(pna)_
clear_mod_76_branch_59:
   47626:	89 86 4c 11 00 00    	mov    DWORD PTR [esi+0x114c],eax
   4762c:	b8 88 00 00 00       	mov    eax,0x88
   47631:	e8 e2 a8 02 00       	call   W?$nwn(ui)pnv
   47636:	85 c0                	test   eax,eax
   47638:	74 0a                	je     clear_mod_76_branch_60
   4763a:	ba 51 b5 00 00       	mov    edx,@obj3:classes_cpp_variable_263                           ; fixup: num: 11513, src obj: 1, src ofs: 0x4763b, dst obj: 3, dst ofs: 0xb551
   4763f:	e8 2c 0e fc ff       	call   W?$ct:SOUND$n(pna)_
clear_mod_76_branch_60:
   47644:	c7 86 34 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1134],0x3
   4764e:	89 86 50 11 00 00    	mov    DWORD PTR [esi+0x1150],eax
   47654:	e9 f3 f5 ff ff       	jmp    clear_mod_76_branch_8
clear_mod_76_reference_18:
   47659:	c7 86 80 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1180],0x3
   47663:	8b 9e 8c 11 00 00    	mov    ebx,DWORD PTR [esi+0x118c]
   47669:	c7 86 3c 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x113c],0x2
   47673:	83 c3 02             	add    ebx,0x2
   47676:	b8 88 00 00 00       	mov    eax,0x88
   4767b:	89 9e 8c 11 00 00    	mov    DWORD PTR [esi+0x118c],ebx
   47681:	e8 92 a8 02 00       	call   W?$nwn(ui)pnv
   47686:	85 c0                	test   eax,eax
   47688:	74 0a                	je     clear_mod_76_branch_61
   4768a:	ba 6e b5 00 00       	mov    edx,@obj3:classes_cpp_variable_264                           ; fixup: num: 11519, src obj: 1, src ofs: 0x4768b, dst obj: 3, dst ofs: 0xb56e
   4768f:	e8 dc 0d fc ff       	call   W?$ct:SOUND$n(pna)_
clear_mod_76_branch_61:
   47694:	89 86 48 11 00 00    	mov    DWORD PTR [esi+0x1148],eax
   4769a:	b8 88 00 00 00       	mov    eax,0x88
   4769f:	e8 74 a8 02 00       	call   W?$nwn(ui)pnv
   476a4:	85 c0                	test   eax,eax
   476a6:	74 0a                	je     clear_mod_76_branch_62
   476a8:	ba 8b b5 00 00       	mov    edx,@obj3:classes_cpp_variable_265                           ; fixup: num: 11518, src obj: 1, src ofs: 0x476a9, dst obj: 3, dst ofs: 0xb58b
   476ad:	e8 be 0d fc ff       	call   W?$ct:SOUND$n(pna)_
clear_mod_76_branch_62:
   476b2:	89 86 4c 11 00 00    	mov    DWORD PTR [esi+0x114c],eax
   476b8:	b8 88 00 00 00       	mov    eax,0x88
   476bd:	e8 56 a8 02 00       	call   W?$nwn(ui)pnv
   476c2:	85 c0                	test   eax,eax
   476c4:	74 0a                	je     clear_mod_76_branch_63
   476c6:	ba a8 b5 00 00       	mov    edx,@obj3:classes_cpp_variable_266                           ; fixup: num: 11517, src obj: 1, src ofs: 0x476c7, dst obj: 3, dst ofs: 0xb5a8
   476cb:	e8 a0 0d fc ff       	call   W?$ct:SOUND$n(pna)_
clear_mod_76_branch_63:
   476d0:	c7 86 34 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1134],0x3
   476da:	89 86 50 11 00 00    	mov    DWORD PTR [esi+0x1150],eax
   476e0:	e9 67 f5 ff ff       	jmp    clear_mod_76_branch_8
clear_mod_76_reference_19:
   476e5:	c7 86 80 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1180],0x3
   476ef:	8b 96 8c 11 00 00    	mov    edx,DWORD PTR [esi+0x118c]
   476f5:	c7 86 3c 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x113c],0x2
   476ff:	42                   	inc    edx
   47700:	b8 88 00 00 00       	mov    eax,0x88
   47705:	89 96 8c 11 00 00    	mov    DWORD PTR [esi+0x118c],edx
   4770b:	e8 08 a8 02 00       	call   W?$nwn(ui)pnv
   47710:	85 c0                	test   eax,eax
   47712:	74 0a                	je     clear_mod_76_branch_64
   47714:	ba c5 b5 00 00       	mov    edx,@obj3:classes_cpp_variable_267                           ; fixup: num: 11516, src obj: 1, src ofs: 0x47715, dst obj: 3, dst ofs: 0xb5c5
   47719:	e8 52 0d fc ff       	call   W?$ct:SOUND$n(pna)_
clear_mod_76_branch_64:
   4771e:	89 86 48 11 00 00    	mov    DWORD PTR [esi+0x1148],eax
   47724:	b8 88 00 00 00       	mov    eax,0x88
   47729:	e8 ea a7 02 00       	call   W?$nwn(ui)pnv
   4772e:	85 c0                	test   eax,eax
   47730:	74 0a                	je     clear_mod_76_branch_65
   47732:	ba e2 b5 00 00       	mov    edx,@obj3:classes_cpp_variable_268                           ; fixup: num: 11523, src obj: 1, src ofs: 0x47733, dst obj: 3, dst ofs: 0xb5e2
   47737:	e8 34 0d fc ff       	call   W?$ct:SOUND$n(pna)_
clear_mod_76_branch_65:
   4773c:	89 86 4c 11 00 00    	mov    DWORD PTR [esi+0x114c],eax
   47742:	b8 88 00 00 00       	mov    eax,0x88
   47747:	e8 cc a7 02 00       	call   W?$nwn(ui)pnv
   4774c:	85 c0                	test   eax,eax
   4774e:	74 0a                	je     clear_mod_76_branch_66
   47750:	ba ff b5 00 00       	mov    edx,@obj3:classes_cpp_variable_269                           ; fixup: num: 11522, src obj: 1, src ofs: 0x47751, dst obj: 3, dst ofs: 0xb5ff
   47755:	e8 16 0d fc ff       	call   W?$ct:SOUND$n(pna)_
clear_mod_76_branch_66:
   4775a:	c7 86 34 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1134],0x3
   47764:	89 86 50 11 00 00    	mov    DWORD PTR [esi+0x1150],eax
   4776a:	e9 dd f4 ff ff       	jmp    clear_mod_76_branch_8
clear_mod_76_reference_20:
   4776f:	8b 86 8c 11 00 00    	mov    eax,DWORD PTR [esi+0x118c]
   47775:	c7 86 80 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1180],0x3
   4777f:	83 c0 02             	add    eax,0x2
   47782:	89 86 8c 11 00 00    	mov    DWORD PTR [esi+0x118c],eax
   47788:	b8 88 00 00 00       	mov    eax,0x88
   4778d:	c7 86 3c 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x113c],0x2
   47797:	e8 7c a7 02 00       	call   W?$nwn(ui)pnv
   4779c:	85 c0                	test   eax,eax
   4779e:	74 0a                	je     clear_mod_76_branch_67
   477a0:	ba 1c b6 00 00       	mov    edx,@obj3:classes_cpp_variable_270                           ; fixup: num: 11521, src obj: 1, src ofs: 0x477a1, dst obj: 3, dst ofs: 0xb61c
   477a5:	e8 c6 0c fc ff       	call   W?$ct:SOUND$n(pna)_
clear_mod_76_branch_67:
   477aa:	89 86 48 11 00 00    	mov    DWORD PTR [esi+0x1148],eax
   477b0:	b8 88 00 00 00       	mov    eax,0x88
   477b5:	e8 5e a7 02 00       	call   W?$nwn(ui)pnv
   477ba:	85 c0                	test   eax,eax
   477bc:	74 0a                	je     clear_mod_76_branch_68
   477be:	ba 39 b6 00 00       	mov    edx,@obj3:classes_cpp_variable_271                           ; fixup: num: 11520, src obj: 1, src ofs: 0x477bf, dst obj: 3, dst ofs: 0xb639
   477c3:	e8 a8 0c fc ff       	call   W?$ct:SOUND$n(pna)_
clear_mod_76_branch_68:
   477c8:	89 86 4c 11 00 00    	mov    DWORD PTR [esi+0x114c],eax
   477ce:	b8 88 00 00 00       	mov    eax,0x88
   477d3:	e8 40 a7 02 00       	call   W?$nwn(ui)pnv
   477d8:	85 c0                	test   eax,eax
   477da:	74 0a                	je     clear_mod_76_branch_69
   477dc:	ba 56 b6 00 00       	mov    edx,@obj3:classes_cpp_variable_272                           ; fixup: num: 11527, src obj: 1, src ofs: 0x477dd, dst obj: 3, dst ofs: 0xb656
   477e1:	e8 8a 0c fc ff       	call   W?$ct:SOUND$n(pna)_
clear_mod_76_branch_69:
   477e6:	c7 86 34 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1134],0x3
   477f0:	89 86 50 11 00 00    	mov    DWORD PTR [esi+0x1150],eax
   477f6:	e9 51 f4 ff ff       	jmp    clear_mod_76_branch_8
clear_mod_76_reference_21:
   477fb:	c7 86 80 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x1180],0x2
   47805:	8b ae 8c 11 00 00    	mov    ebp,DWORD PTR [esi+0x118c]
   4780b:	c7 86 3c 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x113c],0x2
   47815:	45                   	inc    ebp
   47816:	b8 88 00 00 00       	mov    eax,0x88
   4781b:	89 ae 8c 11 00 00    	mov    DWORD PTR [esi+0x118c],ebp
   47821:	e8 f2 a6 02 00       	call   W?$nwn(ui)pnv
   47826:	85 c0                	test   eax,eax
   47828:	74 0a                	je     clear_mod_76_branch_70
   4782a:	ba 73 b6 00 00       	mov    edx,@obj3:classes_cpp_variable_273                           ; fixup: num: 11526, src obj: 1, src ofs: 0x4782b, dst obj: 3, dst ofs: 0xb673
   4782f:	e8 3c 0c fc ff       	call   W?$ct:SOUND$n(pna)_
clear_mod_76_branch_70:
   47834:	89 86 48 11 00 00    	mov    DWORD PTR [esi+0x1148],eax
   4783a:	b8 88 00 00 00       	mov    eax,0x88
   4783f:	e8 d4 a6 02 00       	call   W?$nwn(ui)pnv
   47844:	85 c0                	test   eax,eax
   47846:	74 0a                	je     clear_mod_76_branch_71
   47848:	ba 90 b6 00 00       	mov    edx,@obj3:classes_cpp_variable_274                           ; fixup: num: 11525, src obj: 1, src ofs: 0x47849, dst obj: 3, dst ofs: 0xb690
   4784d:	e8 1e 0c fc ff       	call   W?$ct:SOUND$n(pna)_
clear_mod_76_branch_71:
   47852:	89 86 4c 11 00 00    	mov    DWORD PTR [esi+0x114c],eax
   47858:	b8 88 00 00 00       	mov    eax,0x88
   4785d:	e8 b6 a6 02 00       	call   W?$nwn(ui)pnv
   47862:	85 c0                	test   eax,eax
   47864:	74 0a                	je     clear_mod_76_branch_72
   47866:	ba ad b6 00 00       	mov    edx,@obj3:classes_cpp_variable_275                           ; fixup: num: 11524, src obj: 1, src ofs: 0x47867, dst obj: 3, dst ofs: 0xb6ad
   4786b:	e8 00 0c fc ff       	call   W?$ct:SOUND$n(pna)_
clear_mod_76_branch_72:
   47870:	c7 86 34 11 00 00 03 00 00 00 	mov    DWORD PTR [esi+0x1134],0x3
   4787a:	89 86 50 11 00 00    	mov    DWORD PTR [esi+0x1150],eax
   47880:	e9 c7 f3 ff ff       	jmp    clear_mod_76_branch_8
clear_mod_76_branch_73:
   47885:	8b 86 bc 11 00 00    	mov    eax,DWORD PTR [esi+0x11bc]
   4788b:	c7 86 6c 11 00 00 01 00 00 00 	mov    DWORD PTR [esi+0x116c],0x1
   47895:	83 f8 14             	cmp    eax,0x14
   47898:	0f 87 ae f3 ff ff    	ja     clear_mod_76_branch_8
   4789e:	2e ff 24 85 e4 69 04 00 	jmp    DWORD PTR cs:[eax*4+@obj1:change_weapon_reference_22]     ; fixup: num: 11535, src obj: 1, src ofs: 0x478a2, dst obj: 1, dst ofs: 0x469e4
clear_mod_76_branch_74:
   478a6:	b8 69 b7 00 00       	mov    eax,@obj3:classes_cpp_variable_281                           ; fixup: num: 11534, src obj: 1, src ofs: 0x478a7, dst obj: 3, dst ofs: 0xb769
clear_mod_76_branch_75:
   478ab:	50                   	push   eax
   478ac:	68 6e b7 00 00       	push   @obj3:classes_cpp_variable_282                               ; fixup: num: 11533, src obj: 1, src ofs: 0x478ad, dst obj: 3, dst ofs: 0xb76e
   478b1:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 11532, src obj: 1, src ofs: 0x478b2, dst obj: 3, dst ofs: 0x237fc
   478b6:	e8 26 93 02 00       	call   sprintf_
   478bb:	83 c4 0c             	add    esp,0xc
clear_mod_76_branch_76:
   478be:	8b 9e 98 10 00 00    	mov    ebx,DWORD PTR [esi+0x1098]
   478c4:	85 db                	test   ebx,ebx
   478c6:	74 37                	je     clear_mod_76_branch_79
   478c8:	89 d8                	mov    eax,ebx
   478ca:	8b 5b 3c             	mov    ebx,DWORD PTR [ebx+0x3c]
   478cd:	8b 48 24             	mov    ecx,DWORD PTR [eax+0x24]
   478d0:	8b be 98 11 00 00    	mov    edi,DWORD PTR [esi+0x1198]
   478d6:	01 cb                	add    ebx,ecx
   478d8:	39 fb                	cmp    ebx,edi
   478da:	7d 23                	jge    clear_mod_76_branch_79
   478dc:	8b 68 10             	mov    ebp,DWORD PTR [eax+0x10]
   478df:	85 ed                	test   ebp,ebp
   478e1:	74 04                	je     clear_mod_76_branch_77
   478e3:	89 e8                	mov    eax,ebp
   478e5:	eb 05                	jmp    clear_mod_76_branch_78
clear_mod_76_branch_77:
   478e7:	b8 78 b7 00 00       	mov    eax,@obj3:classes_cpp_variable_283                           ; fixup: num: 11531, src obj: 1, src ofs: 0x478e8, dst obj: 3, dst ofs: 0xb778
clear_mod_76_branch_78:
   478ec:	50                   	push   eax
   478ed:	68 7d b7 00 00       	push   @obj3:classes_cpp_variable_284                               ; fixup: num: 11530, src obj: 1, src ofs: 0x478ee, dst obj: 3, dst ofs: 0xb77d
   478f2:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 11529, src obj: 1, src ofs: 0x478f3, dst obj: 3, dst ofs: 0x237fc
   478f7:	e8 e5 92 02 00       	call   sprintf_
   478fc:	83 c4 0c             	add    esp,0xc
clear_mod_76_branch_79:
   478ff:	5d                   	pop    ebp
   47900:	5f                   	pop    edi
   47901:	5e                   	pop    esi
   47902:	5a                   	pop    edx
   47903:	59                   	pop    ecx
   47904:	5b                   	pop    ebx
   47905:	c3                   	ret    
   47906:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   4790c:	8d 54 22 00          	lea    edx,[edx+eiz*1+0x0]

;-------------------------------------------------
;  Function 'SpendRoundOfAmmo'                   -
;-------------------------------------------------
SpendRoundOfAmmo:
   47910:	53                   	push   ebx
   47911:	51                   	push   ecx
   47912:	52                   	push   edx
   47913:	56                   	push   esi
   47914:	57                   	push   edi
   47915:	55                   	push   ebp
   47916:	83 f8 02             	cmp    eax,0x2
   47919:	0f 85 88 00 00 00    	jne    SpendRoundOfAmmo_branch_3
   4791f:	8b 35 5c 5b 02 00    	mov    esi,DWORD PTR ds:@obj3:nails                                 ; fixup: num: 11528, src obj: 1, src ofs: 0x47921, dst obj: 3, dst ofs: 0x25b5c
   47925:	85 f6                	test   esi,esi
   47927:	7f 3e                	jg     SpendRoundOfAmmo_branch_2
   47929:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 11431, src obj: 1, src ofs: 0x4792a, dst obj: 3, dst ofs: 0x25bd4
   4792e:	8b 90 4c 11 00 00    	mov    edx,DWORD PTR [eax+0x114c]
   47934:	85 d2                	test   edx,edx
   47936:	0f 84 d1 02 00 00    	je     SpendRoundOfAmmo_branch_17
   4793c:	89 d0                	mov    eax,edx
   4793e:	e8 9d 1f fc ff       	call   playing
   47943:	84 c0                	test   al,al
   47945:	74 10                	je     SpendRoundOfAmmo_branch_1
   47947:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 11430, src obj: 1, src ofs: 0x47948, dst obj: 3, dst ofs: 0x25bd4
   4794c:	8b 80 4c 11 00 00    	mov    eax,DWORD PTR [eax+0x114c]
   47952:	e8 e9 1e fc ff       	call   stop
SpendRoundOfAmmo_branch_1:
   47957:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 11429, src obj: 1, src ofs: 0x47958, dst obj: 3, dst ofs: 0x25bd4
   4795c:	8b 80 4c 11 00 00    	mov    eax,DWORD PTR [eax+0x114c]
   47962:	e9 a1 02 00 00       	jmp    SpendRoundOfAmmo_branch_16
SpendRoundOfAmmo_branch_2:
   47967:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 11428, src obj: 1, src ofs: 0x47968, dst obj: 3, dst ofs: 0x25bd4
   4796c:	8d 7e ff             	lea    edi,[esi-0x1]
   4796f:	8b a8 48 11 00 00    	mov    ebp,DWORD PTR [eax+0x1148]
   47975:	89 3d 5c 5b 02 00    	mov    DWORD PTR ds:@obj3:nails,edi                                 ; fixup: num: 11427, src obj: 1, src ofs: 0x47977, dst obj: 3, dst ofs: 0x25b5c
   4797b:	85 ed                	test   ebp,ebp
   4797d:	0f 84 8a 02 00 00    	je     SpendRoundOfAmmo_branch_17
   47983:	89 e8                	mov    eax,ebp
   47985:	e8 56 1f fc ff       	call   playing
   4798a:	84 c0                	test   al,al
   4798c:	0f 84 6b 02 00 00    	je     SpendRoundOfAmmo_branch_15
   47992:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 11538, src obj: 1, src ofs: 0x47993, dst obj: 3, dst ofs: 0x25bd4
   47997:	8b 80 48 11 00 00    	mov    eax,DWORD PTR [eax+0x1148]
   4799d:	e8 9e 1e fc ff       	call   stop
   479a2:	e9 56 02 00 00       	jmp    SpendRoundOfAmmo_branch_15
SpendRoundOfAmmo_branch_3:
   479a7:	83 f8 03             	cmp    eax,0x3
   479aa:	0f 85 92 00 00 00    	jne    SpendRoundOfAmmo_branch_6
   479b0:	83 3d 6c 5b 02 00 00 	cmp    DWORD PTR ds:@obj3:shotgun_shells,0x0                        ; fixup: num: 11537, src obj: 1, src ofs: 0x479b2, dst obj: 3, dst ofs: 0x25b6c
   479b7:	7f 45                	jg     SpendRoundOfAmmo_branch_5
   479b9:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 11536, src obj: 1, src ofs: 0x479ba, dst obj: 3, dst ofs: 0x25bd4
   479be:	8b 88 4c 11 00 00    	mov    ecx,DWORD PTR [eax+0x114c]
   479c4:	85 c9                	test   ecx,ecx
   479c6:	0f 84 41 02 00 00    	je     SpendRoundOfAmmo_branch_17
   479cc:	89 c8                	mov    eax,ecx
   479ce:	e8 0d 1f fc ff       	call   playing
   479d3:	84 c0                	test   al,al
   479d5:	74 10                	je     SpendRoundOfAmmo_branch_4
   479d7:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 11440, src obj: 1, src ofs: 0x479d8, dst obj: 3, dst ofs: 0x25bd4
   479dc:	8b 80 4c 11 00 00    	mov    eax,DWORD PTR [eax+0x114c]
   479e2:	e8 59 1e fc ff       	call   stop
SpendRoundOfAmmo_branch_4:
   479e7:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 11439, src obj: 1, src ofs: 0x479e8, dst obj: 3, dst ofs: 0x25bd4
   479ec:	8b 80 4c 11 00 00    	mov    eax,DWORD PTR [eax+0x114c]
   479f2:	e8 b9 1d fc ff       	call   play
   479f7:	5d                   	pop    ebp
   479f8:	5f                   	pop    edi
   479f9:	5e                   	pop    esi
   479fa:	5a                   	pop    edx
   479fb:	59                   	pop    ecx
   479fc:	5b                   	pop    ebx
   479fd:	c3                   	ret    
SpendRoundOfAmmo_branch_5:
   479fe:	8b 15 6c 5b 02 00    	mov    edx,DWORD PTR ds:@obj3:shotgun_shells                        ; fixup: num: 11438, src obj: 1, src ofs: 0x47a00, dst obj: 3, dst ofs: 0x25b6c
   47a04:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 11437, src obj: 1, src ofs: 0x47a05, dst obj: 3, dst ofs: 0x25bd4
   47a09:	4a                   	dec    edx
   47a0a:	8b 98 48 11 00 00    	mov    ebx,DWORD PTR [eax+0x1148]
   47a10:	89 15 6c 5b 02 00    	mov    DWORD PTR ds:@obj3:shotgun_shells,edx                        ; fixup: num: 11436, src obj: 1, src ofs: 0x47a12, dst obj: 3, dst ofs: 0x25b6c
   47a16:	85 db                	test   ebx,ebx
   47a18:	0f 84 ef 01 00 00    	je     SpendRoundOfAmmo_branch_17
   47a1e:	89 d8                	mov    eax,ebx
   47a20:	e8 bb 1e fc ff       	call   playing
   47a25:	84 c0                	test   al,al
   47a27:	0f 84 d0 01 00 00    	je     SpendRoundOfAmmo_branch_15
   47a2d:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 11435, src obj: 1, src ofs: 0x47a2e, dst obj: 3, dst ofs: 0x25bd4
   47a32:	8b 80 48 11 00 00    	mov    eax,DWORD PTR [eax+0x1148]
   47a38:	e8 03 1e fc ff       	call   stop
   47a3d:	e9 bb 01 00 00       	jmp    SpendRoundOfAmmo_branch_15
SpendRoundOfAmmo_branch_6:
   47a42:	83 f8 04             	cmp    eax,0x4
   47a45:	0f 85 8f 00 00 00    	jne    SpendRoundOfAmmo_branch_9
   47a4b:	8b 0d 68 5b 02 00    	mov    ecx,DWORD PTR ds:@obj3:mmbullets                             ; fixup: num: 11434, src obj: 1, src ofs: 0x47a4d, dst obj: 3, dst ofs: 0x25b68
   47a51:	85 c9                	test   ecx,ecx
   47a53:	7f 45                	jg     SpendRoundOfAmmo_branch_8
   47a55:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 11433, src obj: 1, src ofs: 0x47a56, dst obj: 3, dst ofs: 0x25bd4
   47a5a:	8b a8 4c 11 00 00    	mov    ebp,DWORD PTR [eax+0x114c]
   47a60:	85 ed                	test   ebp,ebp
   47a62:	0f 84 a5 01 00 00    	je     SpendRoundOfAmmo_branch_17
   47a68:	89 e8                	mov    eax,ebp
   47a6a:	e8 71 1e fc ff       	call   playing
   47a6f:	84 c0                	test   al,al
   47a71:	74 10                	je     SpendRoundOfAmmo_branch_7
   47a73:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 11432, src obj: 1, src ofs: 0x47a74, dst obj: 3, dst ofs: 0x25bd4
   47a78:	8b 80 4c 11 00 00    	mov    eax,DWORD PTR [eax+0x114c]
   47a7e:	e8 bd 1d fc ff       	call   stop
SpendRoundOfAmmo_branch_7:
   47a83:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 11448, src obj: 1, src ofs: 0x47a84, dst obj: 3, dst ofs: 0x25bd4
   47a88:	8b 80 4c 11 00 00    	mov    eax,DWORD PTR [eax+0x114c]
   47a8e:	e8 1d 1d fc ff       	call   play
   47a93:	5d                   	pop    ebp
   47a94:	5f                   	pop    edi
   47a95:	5e                   	pop    esi
   47a96:	5a                   	pop    edx
   47a97:	59                   	pop    ecx
   47a98:	5b                   	pop    ebx
   47a99:	c3                   	ret    
SpendRoundOfAmmo_branch_8:
   47a9a:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 11447, src obj: 1, src ofs: 0x47a9b, dst obj: 3, dst ofs: 0x25bd4
   47a9f:	8d 71 ff             	lea    esi,[ecx-0x1]
   47aa2:	8b b8 48 11 00 00    	mov    edi,DWORD PTR [eax+0x1148]
   47aa8:	89 35 68 5b 02 00    	mov    DWORD PTR ds:@obj3:mmbullets,esi                             ; fixup: num: 11446, src obj: 1, src ofs: 0x47aaa, dst obj: 3, dst ofs: 0x25b68
   47aae:	85 ff                	test   edi,edi
   47ab0:	0f 84 57 01 00 00    	je     SpendRoundOfAmmo_branch_17
   47ab6:	89 f8                	mov    eax,edi
   47ab8:	e8 23 1e fc ff       	call   playing
   47abd:	84 c0                	test   al,al
   47abf:	0f 84 38 01 00 00    	je     SpendRoundOfAmmo_branch_15
   47ac5:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 11445, src obj: 1, src ofs: 0x47ac6, dst obj: 3, dst ofs: 0x25bd4
   47aca:	8b 80 48 11 00 00    	mov    eax,DWORD PTR [eax+0x1148]
   47ad0:	e8 6b 1d fc ff       	call   stop
   47ad5:	e9 23 01 00 00       	jmp    SpendRoundOfAmmo_branch_15
SpendRoundOfAmmo_branch_9:
   47ada:	83 f8 05             	cmp    eax,0x5
   47add:	0f 85 8f 00 00 00    	jne    SpendRoundOfAmmo_branch_12
   47ae3:	8b 3d 64 5b 02 00    	mov    edi,DWORD PTR ds:@obj3:bullets                               ; fixup: num: 11444, src obj: 1, src ofs: 0x47ae5, dst obj: 3, dst ofs: 0x25b64
   47ae9:	85 ff                	test   edi,edi
   47aeb:	7f 45                	jg     SpendRoundOfAmmo_branch_11
   47aed:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 11443, src obj: 1, src ofs: 0x47aee, dst obj: 3, dst ofs: 0x25bd4
   47af2:	8b 98 4c 11 00 00    	mov    ebx,DWORD PTR [eax+0x114c]
   47af8:	85 db                	test   ebx,ebx
   47afa:	0f 84 0d 01 00 00    	je     SpendRoundOfAmmo_branch_17
   47b00:	89 d8                	mov    eax,ebx
   47b02:	e8 d9 1d fc ff       	call   playing
   47b07:	84 c0                	test   al,al
   47b09:	74 10                	je     SpendRoundOfAmmo_branch_10
   47b0b:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 11442, src obj: 1, src ofs: 0x47b0c, dst obj: 3, dst ofs: 0x25bd4
   47b10:	8b 80 4c 11 00 00    	mov    eax,DWORD PTR [eax+0x114c]
   47b16:	e8 25 1d fc ff       	call   stop
SpendRoundOfAmmo_branch_10:
   47b1b:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 11441, src obj: 1, src ofs: 0x47b1c, dst obj: 3, dst ofs: 0x25bd4
   47b20:	8b 80 4c 11 00 00    	mov    eax,DWORD PTR [eax+0x114c]
   47b26:	e8 85 1c fc ff       	call   play
   47b2b:	5d                   	pop    ebp
   47b2c:	5f                   	pop    edi
   47b2d:	5e                   	pop    esi
   47b2e:	5a                   	pop    edx
   47b2f:	59                   	pop    ecx
   47b30:	5b                   	pop    ebx
   47b31:	c3                   	ret    
SpendRoundOfAmmo_branch_11:
   47b32:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 11457, src obj: 1, src ofs: 0x47b33, dst obj: 3, dst ofs: 0x25bd4
   47b37:	8d 6f ff             	lea    ebp,[edi-0x1]
   47b3a:	8b 90 48 11 00 00    	mov    edx,DWORD PTR [eax+0x1148]
   47b40:	89 2d 64 5b 02 00    	mov    DWORD PTR ds:@obj3:bullets,ebp                               ; fixup: num: 11456, src obj: 1, src ofs: 0x47b42, dst obj: 3, dst ofs: 0x25b64
   47b46:	85 d2                	test   edx,edx
   47b48:	0f 84 bf 00 00 00    	je     SpendRoundOfAmmo_branch_17
   47b4e:	89 d0                	mov    eax,edx
   47b50:	e8 8b 1d fc ff       	call   playing
   47b55:	84 c0                	test   al,al
   47b57:	0f 84 a0 00 00 00    	je     SpendRoundOfAmmo_branch_15
   47b5d:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 11455, src obj: 1, src ofs: 0x47b5e, dst obj: 3, dst ofs: 0x25bd4
   47b62:	8b 80 48 11 00 00    	mov    eax,DWORD PTR [eax+0x1148]
   47b68:	e8 d3 1c fc ff       	call   stop
   47b6d:	e9 8b 00 00 00       	jmp    SpendRoundOfAmmo_branch_15
SpendRoundOfAmmo_branch_12:
   47b72:	83 f8 0e             	cmp    eax,0xe
   47b75:	0f 85 92 00 00 00    	jne    SpendRoundOfAmmo_branch_17
   47b7b:	8b 15 60 5b 02 00    	mov    edx,DWORD PTR ds:@obj3:gascans                               ; fixup: num: 11454, src obj: 1, src ofs: 0x47b7d, dst obj: 3, dst ofs: 0x25b60
   47b81:	85 d2                	test   edx,edx
   47b83:	7f 45                	jg     SpendRoundOfAmmo_branch_14
   47b85:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 11453, src obj: 1, src ofs: 0x47b86, dst obj: 3, dst ofs: 0x25bd4
   47b8a:	8b b0 4c 11 00 00    	mov    esi,DWORD PTR [eax+0x114c]
   47b90:	85 f6                	test   esi,esi
   47b92:	0f 84 75 00 00 00    	je     SpendRoundOfAmmo_branch_17
   47b98:	89 f0                	mov    eax,esi
   47b9a:	e8 41 1d fc ff       	call   playing
   47b9f:	84 c0                	test   al,al
   47ba1:	74 10                	je     SpendRoundOfAmmo_branch_13
   47ba3:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 11452, src obj: 1, src ofs: 0x47ba4, dst obj: 3, dst ofs: 0x25bd4
   47ba8:	8b 80 4c 11 00 00    	mov    eax,DWORD PTR [eax+0x114c]
   47bae:	e8 8d 1c fc ff       	call   stop
SpendRoundOfAmmo_branch_13:
   47bb3:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 11451, src obj: 1, src ofs: 0x47bb4, dst obj: 3, dst ofs: 0x25bd4
   47bb8:	8b 80 4c 11 00 00    	mov    eax,DWORD PTR [eax+0x114c]
   47bbe:	e8 ed 1b fc ff       	call   play
   47bc3:	5d                   	pop    ebp
   47bc4:	5f                   	pop    edi
   47bc5:	5e                   	pop    esi
   47bc6:	5a                   	pop    edx
   47bc7:	59                   	pop    ecx
   47bc8:	5b                   	pop    ebx
   47bc9:	c3                   	ret    
SpendRoundOfAmmo_branch_14:
   47bca:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 11450, src obj: 1, src ofs: 0x47bcb, dst obj: 3, dst ofs: 0x25bd4
   47bcf:	8d 5a ff             	lea    ebx,[edx-0x1]
   47bd2:	8b 88 48 11 00 00    	mov    ecx,DWORD PTR [eax+0x1148]
   47bd8:	89 1d 60 5b 02 00    	mov    DWORD PTR ds:@obj3:gascans,ebx                               ; fixup: num: 11449, src obj: 1, src ofs: 0x47bda, dst obj: 3, dst ofs: 0x25b60
   47bde:	85 c9                	test   ecx,ecx
   47be0:	74 2b                	je     SpendRoundOfAmmo_branch_17
   47be2:	89 c8                	mov    eax,ecx
   47be4:	e8 f7 1c fc ff       	call   playing
   47be9:	84 c0                	test   al,al
   47beb:	74 10                	je     SpendRoundOfAmmo_branch_15
   47bed:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 11464, src obj: 1, src ofs: 0x47bee, dst obj: 3, dst ofs: 0x25bd4
   47bf2:	8b 80 48 11 00 00    	mov    eax,DWORD PTR [eax+0x1148]
   47bf8:	e8 43 1c fc ff       	call   stop
SpendRoundOfAmmo_branch_15:
   47bfd:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 11463, src obj: 1, src ofs: 0x47bfe, dst obj: 3, dst ofs: 0x25bd4
   47c02:	8b 80 48 11 00 00    	mov    eax,DWORD PTR [eax+0x1148]
SpendRoundOfAmmo_branch_16:
   47c08:	e8 a3 1b fc ff       	call   play
SpendRoundOfAmmo_branch_17:
   47c0d:	5d                   	pop    ebp
   47c0e:	5f                   	pop    edi
   47c0f:	5e                   	pop    esi
   47c10:	5a                   	pop    edx
   47c11:	59                   	pop    ecx
   47c12:	5b                   	pop    ebx
   47c13:	c3                   	ret    
   47c14:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   47c1a:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]

;-------------------------------------------------
;  Function 'AmmoLeft'                           -
;-------------------------------------------------
AmmoLeft:
   47c20:	83 f8 02             	cmp    eax,0x2
   47c23:	75 06                	jne    AmmoLeft_branch_1
   47c25:	a1 5c 5b 02 00       	mov    eax,ds:@obj3:nails                                           ; fixup: num: 11462, src obj: 1, src ofs: 0x47c26, dst obj: 3, dst ofs: 0x25b5c
   47c2a:	c3                   	ret    
AmmoLeft_branch_1:
   47c2b:	83 f8 03             	cmp    eax,0x3
   47c2e:	75 06                	jne    AmmoLeft_branch_2
   47c30:	a1 6c 5b 02 00       	mov    eax,ds:@obj3:shotgun_shells                                  ; fixup: num: 11461, src obj: 1, src ofs: 0x47c31, dst obj: 3, dst ofs: 0x25b6c
   47c35:	c3                   	ret    
AmmoLeft_branch_2:
   47c36:	83 f8 04             	cmp    eax,0x4
   47c39:	75 06                	jne    AmmoLeft_branch_3
   47c3b:	a1 68 5b 02 00       	mov    eax,ds:@obj3:mmbullets                                       ; fixup: num: 11460, src obj: 1, src ofs: 0x47c3c, dst obj: 3, dst ofs: 0x25b68
   47c40:	c3                   	ret    
AmmoLeft_branch_3:
   47c41:	83 f8 05             	cmp    eax,0x5
   47c44:	75 06                	jne    AmmoLeft_branch_4
   47c46:	a1 64 5b 02 00       	mov    eax,ds:@obj3:bullets                                         ; fixup: num: 11459, src obj: 1, src ofs: 0x47c47, dst obj: 3, dst ofs: 0x25b64
   47c4b:	c3                   	ret    
AmmoLeft_branch_4:
   47c4c:	83 f8 0e             	cmp    eax,0xe
   47c4f:	75 06                	jne    AmmoLeft_branch_5
   47c51:	a1 60 5b 02 00       	mov    eax,ds:@obj3:gascans                                         ; fixup: num: 11458, src obj: 1, src ofs: 0x47c52, dst obj: 3, dst ofs: 0x25b60
   47c56:	c3                   	ret    
AmmoLeft_branch_5:
   47c57:	31 c0                	xor    eax,eax
   47c59:	c3                   	ret    
;-------------------------------------------------
;  Bad code 76 (zero after ret):                 -
;-------------------------------------------------
;  47c57:	31 c0                	xor    eax,eax
;  47c59:	c3                   	ret    
;  47c5a:	00 00                	add    BYTE PTR [eax],al
;  47c5c:	00 00                	add    BYTE PTR [eax],al
;-------------------------------------------------
;  Padding data (6 bytes):                       -
;-------------------------------------------------
   47c5a:	00 00 00 00 00 00    	db     6 dup(0x00)
;-------------------------------------------------
;  End of bad code 76                            -
;-------------------------------------------------

;-------------------------------------------------
;  Function 'W?$Wdf0u$ctn(pnapnaiibipn(ui)pnvpn  -
;  a)_7$:ANIMATION$n()pna'                       -
;-------------------------------------------------
W?$Wdf0u$ctn(pnapnaiibipn(ui)pnvpna)_7$:ANIMATION$n()pna:
   47c60:	31 c0                	xor    eax,eax
   47c62:	c3                   	ret    
;-------------------------------------------------
;  Bad code 77 (zero after ret):                 -
;-------------------------------------------------
;  47c60:	31 c0                	xor    eax,eax
;  47c62:	c3                   	ret    
;  47c63:	00 00                	add    BYTE PTR [eax],al
;  47c65:	00 00                	add    BYTE PTR [eax],al
;-------------------------------------------------
;  Padding data (13 bytes):                      -
;-------------------------------------------------
   47c63:	00 00 00 00 00 00 .. 	db     13 dup(0x00)
;-------------------------------------------------
;  End of bad code 77                            -
;-------------------------------------------------

;-------------------------------------------------
;  Function 'decompress_bitmap'                  -
;-------------------------------------------------
decompress_bitmap:
   47c70:	53                   	push   ebx
   47c71:	51                   	push   ecx
   47c72:	56                   	push   esi
   47c73:	57                   	push   edi
   47c74:	55                   	push   ebp
   47c75:	83 ec 18             	sub    esp,0x18
   47c78:	89 c1                	mov    ecx,eax
   47c7a:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
   47c7e:	85 c0                	test   eax,eax
   47c80:	0f 84 b5 01 00 00    	je     decompress_bitmap_branch_14
   47c86:	85 d2                	test   edx,edx
   47c88:	0f 85 f8 00 00 00    	jne    decompress_bitmap_branch_8
   47c8e:	b8 0c 00 00 00       	mov    eax,0xc
   47c93:	e8 80 a2 02 00       	call   W?$nwn(ui)pnv
   47c98:	85 c0                	test   eax,eax
   47c9a:	0f 84 9c 00 00 00    	je     decompress_bitmap_branch_5
   47ca0:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
   47ca4:	8b 39                	mov    edi,DWORD PTR [ecx]
   47ca6:	8b 69 04             	mov    ebp,DWORD PTR [ecx+0x4]
   47ca9:	8b 18                	mov    ebx,DWORD PTR [eax]
   47cab:	89 3c 24             	mov    DWORD PTR [esp],edi
   47cae:	89 ee                	mov    esi,ebp
   47cb0:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
   47cb3:	89 c2                	mov    edx,eax
   47cb5:	39 df                	cmp    edi,ebx
   47cb7:	75 09                	jne    decompress_bitmap_branch_1
   47cb9:	3b 68 04             	cmp    ebp,DWORD PTR [eax+0x4]
   47cbc:	0f 84 76 00 00 00    	je     decompress_bitmap_branch_4
decompress_bitmap_branch_1:
   47cc2:	8b 04 24             	mov    eax,DWORD PTR [esp]
   47cc5:	89 02                	mov    DWORD PTR [edx],eax
   47cc7:	8b 2a                	mov    ebp,DWORD PTR [edx]
   47cc9:	89 72 04             	mov    DWORD PTR [edx+0x4],esi
   47ccc:	85 ed                	test   ebp,ebp
   47cce:	75 17                	jne    decompress_bitmap_branch_2
   47cd0:	85 f6                	test   esi,esi
   47cd2:	75 13                	jne    decompress_bitmap_branch_2
   47cd4:	8b 5a 08             	mov    ebx,DWORD PTR [edx+0x8]
   47cd7:	85 db                	test   ebx,ebx
   47cd9:	74 5d                	je     decompress_bitmap_branch_4
   47cdb:	89 d8                	mov    eax,ebx
   47cdd:	e8 06 97 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   47ce2:	89 6a 08             	mov    DWORD PTR [edx+0x8],ebp
   47ce5:	eb 51                	jmp    decompress_bitmap_branch_4
decompress_bitmap_branch_2:
   47ce7:	8b 5a 08             	mov    ebx,DWORD PTR [edx+0x8]
   47cea:	85 db                	test   ebx,ebx
   47cec:	74 07                	je     decompress_bitmap_branch_3
   47cee:	89 d8                	mov    eax,ebx
   47cf0:	e8 f3 96 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
decompress_bitmap_branch_3:
   47cf5:	8b 02                	mov    eax,DWORD PTR [edx]
   47cf7:	0f af 42 04          	imul   eax,DWORD PTR [edx+0x4]
   47cfb:	c7 42 08 00 00 00 00 	mov    DWORD PTR [edx+0x8],0x0
   47d02:	e8 8c 97 02 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   47d07:	89 42 08             	mov    DWORD PTR [edx+0x8],eax
   47d0a:	85 c0                	test   eax,eax
   47d0c:	75 2a                	jne    decompress_bitmap_branch_4
   47d0e:	8b 2a                	mov    ebp,DWORD PTR [edx]
   47d10:	55                   	push   ebp
   47d11:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
   47d14:	50                   	push   eax
   47d15:	68 84 9b 00 00       	push   @obj3:classes_cpp_variable_1                                 ; fixup: num: 11476, src obj: 1, src ofs: 0x47d16, dst obj: 3, dst ofs: 0x9b84
   47d1a:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 11481, src obj: 1, src ofs: 0x47d1b, dst obj: 3, dst ofs: 0x237fc
   47d1f:	bb fc 37 02 00       	mov    ebx,@obj3:log_buffer                                         ; fixup: num: 11480, src obj: 1, src ofs: 0x47d20, dst obj: 3, dst ofs: 0x237fc
   47d24:	e8 b8 8e 02 00       	call   sprintf_
   47d29:	83 c4 10             	add    esp,0x10
   47d2c:	ba 96 00 00 00       	mov    edx,0x96
   47d31:	31 c0                	xor    eax,eax
   47d33:	e8 f8 02 ff ff       	call   _error_report
decompress_bitmap_branch_4:
   47d38:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
decompress_bitmap_branch_5:
   47d3c:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
   47d40:	85 c0                	test   eax,eax
   47d42:	75 0f                	jne    decompress_bitmap_branch_6
   47d44:	bb aa 9b 00 00       	mov    ebx,@obj3:classes_cpp_variable_2                             ; fixup: num: 11479, src obj: 1, src ofs: 0x47d45, dst obj: 3, dst ofs: 0x9baa
   47d49:	ba a2 00 00 00       	mov    edx,0xa2
   47d4e:	e8 dd 02 ff ff       	call   _error_report
decompress_bitmap_branch_6:
   47d53:	83 7c 24 08 00       	cmp    DWORD PTR [esp+0x8],0x0
   47d58:	75 11                	jne    decompress_bitmap_branch_7
   47d5a:	bb c3 9b 00 00       	mov    ebx,@obj3:classes_cpp_variable_3                             ; fixup: num: 11478, src obj: 1, src ofs: 0x47d5b, dst obj: 3, dst ofs: 0x9bc3
   47d5f:	ba a3 00 00 00       	mov    edx,0xa3
   47d64:	31 c0                	xor    eax,eax
   47d66:	e8 c5 02 ff ff       	call   _error_report
decompress_bitmap_branch_7:
   47d6b:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
   47d6f:	83 78 08 00          	cmp    DWORD PTR [eax+0x8],0x0
   47d73:	75 11                	jne    decompress_bitmap_branch_8
   47d75:	bb f3 9b 00 00       	mov    ebx,@obj3:classes_cpp_variable_4                             ; fixup: num: 11477, src obj: 1, src ofs: 0x47d76, dst obj: 3, dst ofs: 0x9bf3
   47d7a:	ba a4 00 00 00       	mov    edx,0xa4
   47d7f:	31 c0                	xor    eax,eax
   47d81:	e8 aa 02 ff ff       	call   _error_report
decompress_bitmap_branch_8:
   47d86:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
   47d8a:	8b 01                	mov    eax,DWORD PTR [ecx]
   47d8c:	89 02                	mov    DWORD PTR [edx],eax
   47d8e:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
   47d91:	89 42 04             	mov    DWORD PTR [edx+0x4],eax
   47d94:	80 79 08 00          	cmp    BYTE PTR [ecx+0x8],0x0
   47d98:	75 23                	jne    decompress_bitmap_branch_9
   47d9a:	8b 01                	mov    eax,DWORD PTR [ecx]
   47d9c:	0f af 41 04          	imul   eax,DWORD PTR [ecx+0x4]
   47da0:	8b 71 0d             	mov    esi,DWORD PTR [ecx+0xd]
   47da3:	8b 7a 08             	mov    edi,DWORD PTR [edx+0x8]
   47da6:	89 c1                	mov    ecx,eax
   47da8:	57                   	push   edi
   47da9:	89 c8                	mov    eax,ecx
   47dab:	c1 e9 02             	shr    ecx,0x2
   47dae:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
   47db0:	8a c8                	mov    cl,al
   47db2:	80 e1 03             	and    cl,0x3
   47db5:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
   47db7:	5f                   	pop    edi
   47db8:	e9 7a 00 00 00       	jmp    decompress_bitmap_branch_13
decompress_bitmap_branch_9:
   47dbd:	31 c0                	xor    eax,eax
   47dbf:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
   47dc3:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
   47dc6:	8b 69 0d             	mov    ebp,DWORD PTR [ecx+0xd]
   47dc9:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
   47dcd:	8b 41 09             	mov    eax,DWORD PTR [ecx+0x9]
   47dd0:	01 e8                	add    eax,ebp
   47dd2:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
   47dd6:	39 c5                	cmp    ebp,eax
   47dd8:	73 5d                	jae    decompress_bitmap_branch_13
decompress_bitmap_branch_10:
   47dda:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
   47dde:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
   47de2:	01 c1                	add    ecx,eax
   47de4:	31 c0                	xor    eax,eax
   47de6:	8a 45 00             	mov    al,BYTE PTR [ebp+0x0]
   47de9:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
   47ded:	45                   	inc    ebp
   47dee:	8a 54 24 14          	mov    dl,BYTE PTR [esp+0x14]
   47df2:	89 4c 24 10          	mov    DWORD PTR [esp+0x10],ecx
   47df6:	f6 c2 80             	test   dl,0x80
   47df9:	74 1a                	je     decompress_bitmap_branch_11
   47dfb:	89 c7                	mov    edi,eax
   47dfd:	45                   	inc    ebp
   47dfe:	31 d2                	xor    edx,edx
   47e00:	83 e7 7f             	and    edi,0x7f
   47e03:	89 c8                	mov    eax,ecx
   47e05:	8a 55 ff             	mov    dl,BYTE PTR [ebp-0x1]
   47e08:	89 fb                	mov    ebx,edi
   47e0a:	89 7c 24 14          	mov    DWORD PTR [esp+0x14],edi
   47e0e:	e8 bd 95 02 00       	call   memset_
   47e13:	eb 1c                	jmp    decompress_bitmap_branch_12
decompress_bitmap_branch_11:
   47e15:	8b 7c 24 10          	mov    edi,DWORD PTR [esp+0x10]
   47e19:	89 c1                	mov    ecx,eax
   47e1b:	89 ee                	mov    esi,ebp
   47e1d:	57                   	push   edi
   47e1e:	89 c8                	mov    eax,ecx
   47e20:	c1 e9 02             	shr    ecx,0x2
   47e23:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
   47e25:	8a c8                	mov    cl,al
   47e27:	80 e1 03             	and    cl,0x3
   47e2a:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
   47e2c:	5f                   	pop    edi
   47e2d:	03 6c 24 14          	add    ebp,DWORD PTR [esp+0x14]
decompress_bitmap_branch_12:
   47e31:	3b 6c 24 0c          	cmp    ebp,DWORD PTR [esp+0xc]
   47e35:	72 a3                	jb     decompress_bitmap_branch_10
decompress_bitmap_branch_13:
   47e37:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
decompress_bitmap_branch_14:
   47e3b:	83 c4 18             	add    esp,0x18
   47e3e:	5d                   	pop    ebp
   47e3f:	5f                   	pop    edi
   47e40:	5e                   	pop    esi
   47e41:	59                   	pop    ecx
   47e42:	5b                   	pop    ebx
   47e43:	c3                   	ret    
   47e44:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   47e4a:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]

;-------------------------------------------------
;  Function 'resize_mod_76'                      -
;-------------------------------------------------
resize_mod_76:
   47e50:	51                   	push   ecx
   47e51:	57                   	push   edi
   47e52:	55                   	push   ebp
   47e53:	89 c1                	mov    ecx,eax
   47e55:	3b 10                	cmp    edx,DWORD PTR [eax]
   47e57:	75 09                	jne    resize_mod_76_branch_1
   47e59:	3b 58 04             	cmp    ebx,DWORD PTR [eax+0x4]
   47e5c:	0f 84 73 00 00 00    	je     resize_mod_76_branch_4
resize_mod_76_branch_1:
   47e62:	89 11                	mov    DWORD PTR [ecx],edx
   47e64:	8b 29                	mov    ebp,DWORD PTR [ecx]
   47e66:	89 59 04             	mov    DWORD PTR [ecx+0x4],ebx
   47e69:	85 ed                	test   ebp,ebp
   47e6b:	75 17                	jne    resize_mod_76_branch_2
   47e6d:	85 db                	test   ebx,ebx
   47e6f:	75 13                	jne    resize_mod_76_branch_2
   47e71:	8b 41 08             	mov    eax,DWORD PTR [ecx+0x8]
   47e74:	85 c0                	test   eax,eax
   47e76:	74 5d                	je     resize_mod_76_branch_4
   47e78:	e8 6b 95 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   47e7d:	89 69 08             	mov    DWORD PTR [ecx+0x8],ebp
   47e80:	5d                   	pop    ebp
   47e81:	5f                   	pop    edi
   47e82:	59                   	pop    ecx
   47e83:	c3                   	ret    
resize_mod_76_branch_2:
   47e84:	8b 51 08             	mov    edx,DWORD PTR [ecx+0x8]
   47e87:	85 d2                	test   edx,edx
   47e89:	74 07                	je     resize_mod_76_branch_3
   47e8b:	89 d0                	mov    eax,edx
   47e8d:	e8 56 95 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
resize_mod_76_branch_3:
   47e92:	8b 01                	mov    eax,DWORD PTR [ecx]
   47e94:	0f af 41 04          	imul   eax,DWORD PTR [ecx+0x4]
   47e98:	c7 41 08 00 00 00 00 	mov    DWORD PTR [ecx+0x8],0x0
   47e9f:	e8 ef 95 02 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   47ea4:	89 41 08             	mov    DWORD PTR [ecx+0x8],eax
   47ea7:	85 c0                	test   eax,eax
   47ea9:	75 2a                	jne    resize_mod_76_branch_4
   47eab:	8b 39                	mov    edi,DWORD PTR [ecx]
   47ead:	57                   	push   edi
   47eae:	8b 69 04             	mov    ebp,DWORD PTR [ecx+0x4]
   47eb1:	55                   	push   ebp
   47eb2:	68 84 9b 00 00       	push   @obj3:classes_cpp_variable_1                                 ; fixup: num: 11475, src obj: 1, src ofs: 0x47eb3, dst obj: 3, dst ofs: 0x9b84
   47eb7:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 11474, src obj: 1, src ofs: 0x47eb8, dst obj: 3, dst ofs: 0x237fc
   47ebc:	bb fc 37 02 00       	mov    ebx,@obj3:log_buffer                                         ; fixup: num: 11473, src obj: 1, src ofs: 0x47ebd, dst obj: 3, dst ofs: 0x237fc
   47ec1:	e8 1b 8d 02 00       	call   sprintf_
   47ec6:	83 c4 10             	add    esp,0x10
   47ec9:	ba 96 00 00 00       	mov    edx,0x96
   47ece:	31 c0                	xor    eax,eax
   47ed0:	e8 5b 01 ff ff       	call   _error_report
resize_mod_76_branch_4:
   47ed5:	5d                   	pop    ebp
   47ed6:	5f                   	pop    edi
   47ed7:	59                   	pop    ecx
   47ed8:	c3                   	ret    
   47ed9:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   47edf:	90                   	nop

;-------------------------------------------------
;  Function 'W?$ct:bitmap$n(ulul)_'              -
;-------------------------------------------------
W?$ct:bitmap$n(ulul)_:
   47ee0:	51                   	push   ecx
   47ee1:	56                   	push   esi
   47ee2:	57                   	push   edi
   47ee3:	55                   	push   ebp
   47ee4:	89 c1                	mov    ecx,eax
   47ee6:	89 d0                	mov    eax,edx
   47ee8:	89 ca                	mov    edx,ecx
   47eea:	89 c6                	mov    esi,eax
   47eec:	89 df                	mov    edi,ebx
   47eee:	8b 29                	mov    ebp,DWORD PTR [ecx]
   47ef0:	c7 41 08 00 00 00 00 	mov    DWORD PTR [ecx+0x8],0x0
   47ef7:	39 e8                	cmp    eax,ebp
   47ef9:	75 09                	jne    W?$ct:bitmap$n(ulul)__branch_1
   47efb:	3b 59 04             	cmp    ebx,DWORD PTR [ecx+0x4]
   47efe:	0f 84 73 00 00 00    	je     W?$ct:bitmap$n(ulul)__branch_4
W?$ct:bitmap$n(ulul)__branch_1:
   47f04:	89 32                	mov    DWORD PTR [edx],esi
   47f06:	8b 1a                	mov    ebx,DWORD PTR [edx]
   47f08:	89 7a 04             	mov    DWORD PTR [edx+0x4],edi
   47f0b:	85 db                	test   ebx,ebx
   47f0d:	75 17                	jne    W?$ct:bitmap$n(ulul)__branch_2
   47f0f:	85 ff                	test   edi,edi
   47f11:	75 13                	jne    W?$ct:bitmap$n(ulul)__branch_2
   47f13:	8b 7a 08             	mov    edi,DWORD PTR [edx+0x8]
   47f16:	85 ff                	test   edi,edi
   47f18:	74 5d                	je     W?$ct:bitmap$n(ulul)__branch_4
   47f1a:	89 f8                	mov    eax,edi
   47f1c:	e8 c7 94 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   47f21:	89 5a 08             	mov    DWORD PTR [edx+0x8],ebx
   47f24:	eb 51                	jmp    W?$ct:bitmap$n(ulul)__branch_4
W?$ct:bitmap$n(ulul)__branch_2:
   47f26:	8b 7a 08             	mov    edi,DWORD PTR [edx+0x8]
   47f29:	85 ff                	test   edi,edi
   47f2b:	74 07                	je     W?$ct:bitmap$n(ulul)__branch_3
   47f2d:	89 f8                	mov    eax,edi
   47f2f:	e8 b4 94 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
W?$ct:bitmap$n(ulul)__branch_3:
   47f34:	8b 02                	mov    eax,DWORD PTR [edx]
   47f36:	0f af 42 04          	imul   eax,DWORD PTR [edx+0x4]
   47f3a:	c7 42 08 00 00 00 00 	mov    DWORD PTR [edx+0x8],0x0
   47f41:	e8 4d 95 02 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   47f46:	89 42 08             	mov    DWORD PTR [edx+0x8],eax
   47f49:	85 c0                	test   eax,eax
   47f4b:	75 2a                	jne    W?$ct:bitmap$n(ulul)__branch_4
   47f4d:	8b 1a                	mov    ebx,DWORD PTR [edx]
   47f4f:	53                   	push   ebx
   47f50:	8b 72 04             	mov    esi,DWORD PTR [edx+0x4]
   47f53:	56                   	push   esi
   47f54:	68 84 9b 00 00       	push   @obj3:classes_cpp_variable_1                                 ; fixup: num: 11472, src obj: 1, src ofs: 0x47f55, dst obj: 3, dst ofs: 0x9b84
   47f59:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 11471, src obj: 1, src ofs: 0x47f5a, dst obj: 3, dst ofs: 0x237fc
   47f5e:	ba 96 00 00 00       	mov    edx,0x96
   47f63:	e8 79 8c 02 00       	call   sprintf_
   47f68:	83 c4 10             	add    esp,0x10
   47f6b:	bb fc 37 02 00       	mov    ebx,@obj3:log_buffer                                         ; fixup: num: 11470, src obj: 1, src ofs: 0x47f6c, dst obj: 3, dst ofs: 0x237fc
   47f70:	31 c0                	xor    eax,eax
   47f72:	e8 b9 00 ff ff       	call   _error_report
W?$ct:bitmap$n(ulul)__branch_4:
   47f77:	89 c8                	mov    eax,ecx
   47f79:	5d                   	pop    ebp
   47f7a:	5f                   	pop    edi
   47f7b:	5e                   	pop    esi
   47f7c:	59                   	pop    ecx
   47f7d:	c3                   	ret    
   47f7e:	8b c0                	mov    eax,eax

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 76 (D:\SOURCE\classes.cpp)                                    -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 76: D:\SOURCE\classes.cpp                                            -
;                                                                              -
;-------------------------------------------------------------------------------
classes_cpp_variable_1:
    9b84:	43 6f 75 6c 64 20 6e 6f 74 20 61 6c 6c 6f 63 61 74 65 20 61 20 62 75 66 66 65 72 20 6f 66 20 25 69 78 25 69 00 	db     "Could not allocate a buffer of %ix%i",0x00
    9ba9:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
classes_cpp_variable_2:
    9baa:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
    9bc2:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
classes_cpp_variable_3:
    9bc3:	64 65 63 6f 6d 70 72 65 73 73 5f 62 69 74 6d 61 70 28 29 20 75 6e 61 62 6c 65 20 74 6f 20 61 6c 6c 6f 63 61 74 65 20 6d 65 6d 6f 72 79 2e 00 	db     "decompress_bitmap() unable to allocate memory.",0x00
    9bf2:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
classes_cpp_variable_4:
    9bf3:	64 65 63 6f 6d 70 72 65 73 73 5f 62 69 74 6d 61 70 28 29 20 75 6e 61 62 6c 65 20 74 6f 20 61 6c 6c 6f 63 61 74 65 20 6d 65 6d 6f 72 79 2e 00 	db     "decompress_bitmap() unable to allocate memory.",0x00
    9c22:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
classes_cpp_variable_5:
    9c23:	63 6c 61 73 73 65 73 5f 63 70 70 00 	db     "classes_cpp",0x00
classes_cpp_variable_6:
    9c2f:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    9c30:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    9c31:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
classes_cpp_variable_7:
    9c32:	63 6c 61 73 73 65 73 2e 63 70 70 00 	db     "classes.cpp",0x00
classes_cpp_variable_8:
    9c3e:	43 6f 75 6c 64 20 6e 6f 74 20 72 65 61 64 20 61 62 6d 5f 66 69 6c 65 6e 61 6d 65 3a 20 25 73 20 73 69 7a 65 20 25 69 00 	db     "Could not read abm_filename: %s size %i",0x00
classes_cpp_variable_9:
    9c66:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 2c 20 73 69 7a 65 20 25 69 00 	db     "Memory allocation error, size %i",0x00
classes_cpp_variable_10:
    9c87:	63 6c 61 73 73 65 73 2e 63 70 70 00 	db     "classes.cpp",0x00
classes_cpp_variable_11:
    9c93:	43 6f 75 6c 64 20 6e 6f 74 20 72 65 61 64 20 61 62 6d 5f 66 69 6c 65 6e 61 6d 65 3a 20 25 73 00 	db     "Could not read abm_filename: %s",0x00
classes_cpp_variable_12:
    9cb3:	43 6f 75 6c 64 20 6e 6f 74 20 72 65 61 64 20 61 62 6d 5f 66 69 6c 65 6e 61 6d 65 3a 20 25 73 00 	db     "Could not read abm_filename: %s",0x00
classes_cpp_variable_13:
    9cd3:	63 6c 61 73 73 65 73 2e 63 70 70 00 	db     "classes.cpp",0x00
classes_cpp_variable_14:
    9cdf:	43 6f 75 6c 64 20 6e 6f 74 20 72 65 61 64 20 61 62 6d 5f 66 69 6c 65 6e 61 6d 65 3a 20 25 73 20 73 69 7a 65 20 25 69 00 	db     "Could not read abm_filename: %s size %i",0x00
classes_cpp_variable_15:
    9d07:	43 6f 75 6c 64 20 6e 6f 74 20 72 65 61 64 20 25 73 00 	db     "Could not read %s",0x00
classes_cpp_variable_16:
    9d19:	63 6c 61 73 73 65 73 2e 63 70 70 00 	db     "classes.cpp",0x00
classes_cpp_variable_17:
    9d25:	43 6f 75 6c 64 20 6e 6f 74 20 72 65 61 64 20 25 73 20 73 69 7a 65 20 25 69 00 	db     "Could not read %s size %i",0x00
classes_cpp_variable_18:
    9d3f:	43 6f 75 6c 64 20 6e 6f 74 20 72 65 61 64 20 61 62 6d 5f 66 69 6c 65 6e 61 6d 65 3a 20 25 73 00 	db     "Could not read abm_filename: %s",0x00
classes_cpp_variable_19:
    9d5f:	63 6c 61 73 73 65 73 2e 63 70 70 00 	db     "classes.cpp",0x00
classes_cpp_variable_20:
    9d6b:	43 6f 75 6c 64 20 6e 6f 74 20 72 65 61 64 20 61 62 6d 5f 66 69 6c 65 6e 61 6d 65 3a 20 25 73 20 73 69 7a 65 20 25 69 00 	db     "Could not read abm_filename: %s size %i",0x00
    9d93:	57 41 52 4e 49 4e 47 20 46 6f 72 74 69 66 79 5f 43 68 65 63 6b 50 6f 69 6e 74 65 72 28 66 72 61 6d 65 5f 62 75 66 66 65 72 29 20 66 61 69 6c 65 64 21 00 	db     "WARNING Fortify_CheckPointer(frame_buffer) failed!",0x00
classes_cpp_variable_21:
    9dc6:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
classes_cpp_variable_22:
    9dde:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
classes_cpp_variable_23:
    9df6:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
classes_cpp_variable_24:
    9e0e:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
classes_cpp_variable_25:
    9e26:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
classes_cpp_variable_26:
    9e3e:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
classes_cpp_variable_27:
    9e56:	41 4e 49 4d 41 54 49 4f 4e 3a 3a 67 6f 5f 74 6f 5f 66 72 61 6d 65 28 25 69 29 20 46 72 61 6d 65 20 6f 75 74 20 6f 66 20 72 61 6e 67 65 20 28 25 73 29 00 	db     "ANIMATION::go_to_frame(%i) Frame out of range (%s)",0x00
classes_cpp_variable_28:
    9e89:	4d 4f 55 53 45 00    	db     "MOUSE",0x00
classes_cpp_variable_29:
    9e8f:	42 49 47 5f 45 59 45 00 	db     "BIG_EYE",0x00
classes_cpp_variable_30:
    9e97:	78 3d 25 69 20 20 6d 6f 76 65 5f 6d 69 6e 5f 78 28 25 69 29 2d 6f 66 66 73 65 74 5f 78 28 25 69 29 3d 25 69 00 	db     "x=%i  move_min_x(%i)-offset_x(%i)=%i",0x00
classes_cpp_variable_31:
    9ebc:	62 6c 6f 6f 64 2e 61 62 6d 00 	db     "blood.abm",0x00
classes_cpp_variable_32:
    9ec6:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
classes_cpp_variable_33:
    9ede:	67 6f 6f 64 5f 67 75 79 2d 3e 64 65 61 74 68 5f 73 6f 75 6e 64 20 27 25 73 27 00 	db     "good_guy->death_sound '%s'",0x00
classes_cpp_variable_34:
    9ef9:	53 54 45 50 48 5f 43 48 41 50 32 00 	db     "STEPH_CHAP2",0x00
classes_cpp_variable_35:
    9f05:	68 69 74 5f 70 6f 69 6e 74 73 20 3d 20 25 69 00 	db     "hit_points = %i",0x00
classes_cpp_variable_36:
    9f15:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 74 65 66 73 63 72 32 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\stefscr2.wav",0x00
classes_cpp_variable_37:
    9f33:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
classes_cpp_variable_38:
    9f4b:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 74 65 66 73 63 72 35 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\stefscr5.wav",0x00
classes_cpp_variable_39:
    9f69:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
classes_cpp_variable_40:
    9f81:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 74 65 66 73 63 72 37 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\stefscr7.wav",0x00
classes_cpp_variable_41:
    9f9f:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
classes_cpp_variable_42:
    9fb7:	43 48 45 53 53 4b 49 4e 47 00 	db     "CHESSKING",0x00
classes_cpp_variable_43:
    9fc1:	63 68 65 73 73 2e 61 62 6d 00 	db     "chess.abm",0x00
classes_cpp_variable_44:
    9fcb:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
classes_cpp_variable_45:
    9fe3:	53 50 49 44 45 52 00 	db     "SPIDER",0x00
classes_cpp_variable_46:
    9fea:	73 70 69 64 65 72 2e 61 62 6d 00 	db     "spider.abm",0x00
classes_cpp_variable_47:
    9ff5:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
classes_cpp_variable_48:
    a00d:	62 6c 6f 6f 64 2e 61 62 6d 00 	db     "blood.abm",0x00
classes_cpp_variable_49:
    a017:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
classes_cpp_variable_50:
    a02f:	73 63 61 6c 65 64 2d 3e 77 69 64 74 68 20 3d 20 25 69 20 68 65 69 67 68 74 3d 25 69 00 	db     "scaled->width = %i height=%i",0x00
classes_cpp_variable_51:
    a04c:	68 65 61 64 65 72 2d 3e 77 69 64 74 68 20 3d 20 25 69 20 68 65 69 67 68 74 3d 25 69 00 	db     "header->width = %i height=%i",0x00
classes_cpp_variable_52:
    a069:	73 63 61 6c 65 5f 69 74 20 3d 20 25 69 20 20 73 63 61 6c 65 64 5f 68 65 61 64 65 72 20 3d 20 25 69 00 	db     "scale_it = %i  scaled_header = %i",0x00
classes_cpp_variable_53:
    a08b:	53 54 45 50 48 5f 43 48 41 50 32 00 	db     "STEPH_CHAP2",0x00
classes_cpp_variable_54:
    a097:	25 73 27 73 20 73 74 61 74 65 20 69 73 20 25 69 20 61 6e 64 20 64 5f 73 74 61 74 65 20 69 73 20 25 69 00 	db     "%s's state is %i and d_state is %i",0x00
classes_cpp_variable_55:
    a0ba:	48 45 52 52 49 4c 4c 5f 4c 4f 47 00 	db     "HERRILL_LOG",0x00
classes_cpp_variable_56:
    a0c6:	73 65 74 74 69 6e 67 20 7a 20 74 6f 20 6d 61 78 20 7a 20 25 2e 32 66 00 	db     "setting z to max z %.2f",0x00
classes_cpp_variable_57:
    a0de:	66 6f 72 77 61 72 64 00 	db     "forward",0x00
classes_cpp_variable_58:
    a0e6:	6c 65 66 74 00       	db     "left",0x00
classes_cpp_variable_59:
    a0eb:	72 69 67 68 74 00    	db     "right",0x00
classes_cpp_variable_60:
    a0f1:	62 61 63 6b 00       	db     "back",0x00
classes_cpp_variable_61:
    a0f6:	75 6e 6b 6e 6f 77 6e 00 	db     "unknown",0x00
classes_cpp_variable_62:
    a0fe:	32 2d 66 6f 75 6e 64 20 64 6f 6f 72 20 66 61 63 69 6e 67 20 25 73 20 64 65 73 69 72 65 64 5f 73 74 61 74 65 20 73 65 74 00 	db     "2-found door facing %s desired_state set",0x00
classes_cpp_variable_63:
    a127:	73 74 61 74 65 20 3d 3d 20 25 69 00 	db     "state == %i",0x00
classes_cpp_variable_64:
    a133:	57 4f 4c 46 49 45 00 	db     "WOLFIE",0x00
classes_cpp_variable_65:
    a13a:	73 74 61 74 65 20 3d 20 66 61 63 69 6e 67 5f 66 6f 72 77 61 72 64 00 	db     "state = facing_forward",0x00
classes_cpp_variable_66:
    a151:	73 74 61 74 65 20 3d 20 66 61 63 69 6e 67 5f 6c 65 66 74 00 	db     "state = facing_left",0x00
classes_cpp_variable_67:
    a165:	73 74 61 74 65 20 3d 20 66 61 63 69 6e 67 5f 72 69 67 68 74 00 	db     "state = facing_right",0x00
classes_cpp_variable_68:
    a17a:	73 74 61 74 65 20 3d 20 66 61 63 69 6e 67 5f 62 61 63 6b 00 	db     "state = facing_back",0x00
classes_cpp_variable_69:
    a18e:	73 74 61 74 65 20 3d 20 77 61 6c 6b 69 6e 67 5f 66 6f 72 77 61 72 64 00 	db     "state = walking_forward",0x00
classes_cpp_variable_70:
    a1a6:	73 74 61 74 65 20 3d 20 74 75 72 6e 69 6e 67 5f 66 72 6f 6e 74 5f 74 6f 5f 6c 65 66 74 00 	db     "state = turning_front_to_left",0x00
classes_cpp_variable_71:
    a1c4:	73 74 61 74 65 20 3d 20 74 75 72 6e 69 6e 67 5f 6c 65 66 74 5f 74 6f 5f 66 72 6f 6e 74 00 	db     "state = turning_left_to_front",0x00
classes_cpp_variable_72:
    a1e2:	73 74 61 74 65 20 3d 20 77 61 6c 6b 69 6e 67 5f 6c 65 66 74 00 	db     "state = walking_left",0x00
classes_cpp_variable_73:
    a1f7:	73 74 61 74 65 20 3d 20 77 61 6c 6b 69 6e 67 5f 68 61 6c 66 5f 6c 65 66 74 00 	db     "state = walking_half_left",0x00
classes_cpp_variable_74:
    a211:	73 74 61 74 65 20 3d 20 77 61 6c 6b 69 6e 67 5f 68 61 6c 66 5f 72 69 67 68 74 00 	db     "state = walking_half_right",0x00
classes_cpp_variable_75:
    a22c:	73 74 61 74 65 20 3d 20 73 68 75 66 66 6c 65 5f 6c 65 66 74 00 	db     "state = shuffle_left",0x00
classes_cpp_variable_76:
    a241:	73 74 61 74 65 20 3d 20 74 75 72 6e 69 6e 67 5f 6c 65 66 74 5f 74 6f 5f 62 61 63 6b 00 	db     "state = turning_left_to_back",0x00
classes_cpp_variable_77:
    a25e:	73 74 61 74 65 20 3d 20 74 75 72 6e 69 6e 67 5f 62 61 63 6b 5f 74 6f 5f 6c 65 66 74 00 	db     "state = turning_back_to_left",0x00
classes_cpp_variable_78:
    a27b:	73 74 61 74 65 20 3d 20 77 61 6c 6b 69 6e 67 5f 62 61 63 6b 00 	db     "state = walking_back",0x00
classes_cpp_variable_79:
    a290:	73 74 61 74 65 20 3d 20 74 75 72 6e 69 6e 67 5f 62 61 63 6b 5f 74 6f 5f 72 69 67 68 74 00 	db     "state = turning_back_to_right",0x00
classes_cpp_variable_80:
    a2ae:	73 74 61 74 65 20 3d 20 74 75 72 6e 69 6e 67 5f 72 69 67 68 74 5f 74 6f 5f 62 61 63 6b 00 	db     "state = turning_right_to_back",0x00
classes_cpp_variable_81:
    a2cc:	73 74 61 74 65 20 3d 20 77 61 6c 6b 69 6e 67 5f 72 69 67 68 74 00 	db     "state = walking_right",0x00
classes_cpp_variable_82:
    a2e2:	73 74 61 74 65 20 3d 20 73 68 75 66 66 6c 65 5f 72 69 67 68 74 00 	db     "state = shuffle_right",0x00
classes_cpp_variable_83:
    a2f8:	73 74 61 74 65 20 3d 20 74 75 72 6e 69 6e 67 5f 72 69 67 68 74 5f 74 6f 5f 66 72 6f 6e 74 00 	db     "state = turning_right_to_front",0x00
classes_cpp_variable_84:
    a317:	73 74 61 74 65 20 3d 20 74 75 72 6e 69 6e 67 5f 66 72 6f 6e 74 5f 74 6f 5f 72 69 67 68 74 00 	db     "state = turning_front_to_right",0x00
classes_cpp_variable_85:
    a336:	73 74 61 74 65 20 3d 20 25 64 00 	db     "state = %d",0x00
classes_cpp_variable_86:
    a341:	64 65 73 69 72 65 64 5f 73 74 61 74 65 20 3d 20 66 61 63 69 6e 67 5f 66 6f 72 77 61 72 64 00 	db     "desired_state = facing_forward",0x00
classes_cpp_variable_87:
    a360:	64 65 73 69 72 65 64 5f 73 74 61 74 65 20 3d 20 66 61 63 69 6e 67 5f 6c 65 66 74 00 	db     "desired_state = facing_left",0x00
classes_cpp_variable_88:
    a37c:	64 65 73 69 72 65 64 5f 73 74 61 74 65 20 3d 20 66 61 63 69 6e 67 5f 72 69 67 68 74 00 	db     "desired_state = facing_right",0x00
classes_cpp_variable_89:
    a399:	64 65 73 69 72 65 64 5f 73 74 61 74 65 20 3d 20 66 61 63 69 6e 67 5f 62 61 63 6b 00 	db     "desired_state = facing_back",0x00
classes_cpp_variable_90:
    a3b5:	64 65 73 69 72 65 64 5f 73 74 61 74 65 20 3d 20 77 61 6c 6b 69 6e 67 5f 66 6f 72 77 61 72 64 00 	db     "desired_state = walking_forward",0x00
classes_cpp_variable_91:
    a3d5:	64 65 73 69 72 65 64 5f 73 74 61 74 65 20 3d 20 74 75 72 6e 69 6e 67 5f 66 72 6f 6e 74 5f 74 6f 5f 6c 65 66 74 00 	db     "desired_state = turning_front_to_left",0x00
classes_cpp_variable_92:
    a3fb:	64 65 73 69 72 65 64 5f 73 74 61 74 65 20 3d 20 74 75 72 6e 69 6e 67 5f 6c 65 66 74 5f 74 6f 5f 66 72 6f 6e 74 00 	db     "desired_state = turning_left_to_front",0x00
classes_cpp_variable_93:
    a421:	64 65 73 69 72 65 64 5f 73 74 61 74 65 20 3d 20 77 61 6c 6b 69 6e 67 5f 6c 65 66 74 00 	db     "desired_state = walking_left",0x00
classes_cpp_variable_94:
    a43e:	64 65 73 69 72 65 64 5f 73 74 61 74 65 20 3d 20 77 61 6c 6b 69 6e 67 5f 68 61 6c 66 5f 6c 65 66 74 00 	db     "desired_state = walking_half_left",0x00
classes_cpp_variable_95:
    a460:	64 65 73 69 72 65 64 5f 73 74 61 74 65 20 3d 20 77 61 6c 6b 69 6e 67 5f 68 61 6c 66 5f 72 69 67 68 74 00 	db     "desired_state = walking_half_right",0x00
classes_cpp_variable_96:
    a483:	64 65 73 69 72 65 64 5f 73 74 61 74 65 20 3d 20 73 68 75 66 66 6c 65 5f 6c 65 66 74 00 	db     "desired_state = shuffle_left",0x00
classes_cpp_variable_97:
    a4a0:	64 65 73 69 72 65 64 5f 73 74 61 74 65 20 3d 20 74 75 72 6e 69 6e 67 5f 6c 65 66 74 5f 74 6f 5f 62 61 63 6b 00 	db     "desired_state = turning_left_to_back",0x00
classes_cpp_variable_98:
    a4c5:	64 65 73 69 72 65 64 5f 73 74 61 74 65 20 3d 20 74 75 72 6e 69 6e 67 5f 62 61 63 6b 5f 74 6f 5f 6c 65 66 74 00 	db     "desired_state = turning_back_to_left",0x00
classes_cpp_variable_99:
    a4ea:	64 65 73 69 72 65 64 5f 73 74 61 74 65 20 3d 20 77 61 6c 6b 69 6e 67 5f 62 61 63 6b 00 	db     "desired_state = walking_back",0x00
classes_cpp_variable_100:
    a507:	64 65 73 69 72 65 64 5f 73 74 61 74 65 20 3d 20 74 75 72 6e 69 6e 67 5f 62 61 63 6b 5f 74 6f 5f 72 69 67 68 74 00 	db     "desired_state = turning_back_to_right",0x00
classes_cpp_variable_101:
    a52d:	64 65 73 69 72 65 64 5f 73 74 61 74 65 20 3d 20 74 75 72 6e 69 6e 67 5f 72 69 67 68 74 5f 74 6f 5f 62 61 63 6b 00 	db     "desired_state = turning_right_to_back",0x00
classes_cpp_variable_102:
    a553:	64 65 73 69 72 65 64 5f 73 74 61 74 65 20 3d 20 77 61 6c 6b 69 6e 67 5f 72 69 67 68 74 00 	db     "desired_state = walking_right",0x00
classes_cpp_variable_103:
    a571:	64 65 73 69 72 65 64 5f 73 74 61 74 65 20 3d 20 73 68 75 66 66 6c 65 5f 72 69 67 68 74 00 	db     "desired_state = shuffle_right",0x00
classes_cpp_variable_104:
    a58f:	64 65 73 69 72 65 64 5f 73 74 61 74 65 20 3d 20 74 75 72 6e 69 6e 67 5f 72 69 67 68 74 5f 74 6f 5f 66 72 6f 6e 74 00 	db     "desired_state = turning_right_to_front",0x00
classes_cpp_variable_105:
    a5b6:	64 65 73 69 72 65 64 5f 73 74 61 74 65 20 3d 20 74 75 72 6e 69 6e 67 5f 66 72 6f 6e 74 5f 74 6f 5f 72 69 67 68 74 00 	db     "desired_state = turning_front_to_right",0x00
classes_cpp_variable_106:
    a5dd:	64 65 73 69 72 65 64 5f 73 74 61 74 65 20 3d 20 25 64 00 	db     "desired_state = %d",0x00
classes_cpp_variable_107:
    a5f0:	73 74 61 74 65 20 3d 20 25 69 00 	db     "state = %i",0x00
classes_cpp_variable_108:
    a5fb:	64 65 73 74 5f 70 6f 69 6e 74 73 5b 30 5d 2e 78 20 3d 20 25 69 00 	db     "dest_points[0].x = %i",0x00
classes_cpp_variable_109:
    a611:	73 74 61 74 65 20 3d 20 25 69 00 	db     "state = %i",0x00
classes_cpp_variable_110:
    a61c:	53 54 45 50 48 5f 43 48 41 50 32 00 	db     "STEPH_CHAP2",0x00
classes_cpp_variable_111:
    a628:	68 69 74 5f 70 6f 69 6e 74 73 20 3d 20 25 69 00 	db     "hit_points = %i",0x00
classes_cpp_variable_112:
    a638:	68 69 74 5f 70 6f 69 6e 74 73 20 3d 20 25 69 00 	db     "hit_points = %i",0x00
classes_cpp_variable_113:
    a648:	53 54 45 50 48 5f 43 48 41 50 32 00 	db     "STEPH_CHAP2",0x00
classes_cpp_variable_114:
    a654:	4d 55 43 4b 45 59 00 	db     "MUCKEY",0x00
classes_cpp_variable_115:
    a65b:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
classes_cpp_variable_116:
    a673:	55 6e 6b 6e 6f 77 6e 20 73 74 61 74 65 21 00 	db     "Unknown state!",0x00
classes_cpp_variable_117:
    a682:	6d 6f 76 65 5f 64 69 73 74 61 6e 63 65 2e 78 20 3d 20 25 69 2c 20 20 74 68 69 73 5f 72 65 61 6c 5f 78 20 3d 20 25 69 00 	db     "move_distance.x = %i,  this_real_x = %i",0x00
classes_cpp_variable_118:
    a6aa:	74 65 73 74 3d 25 69 00 	db     "test=%i",0x00
classes_cpp_variable_119:
    a6b2:	74 72 79 20 74 6f 20 48 49 54 20 27 25 73 27 00 	db     "try to HIT '%s'",0x00
classes_cpp_variable_120:
    a6c2:	61 74 74 61 63 6b 20 73 6f 75 6e 64 20 6e 75 6d 62 65 72 20 69 73 20 25 69 20 66 72 61 6d 65 20 69 73 20 25 69 00 	db     "attack sound number is %i frame is %i",0x00
classes_cpp_variable_121:
    a6e8:	48 49 54 20 6f 6e 20 25 73 00 	db     "HIT on %s",0x00
classes_cpp_variable_122:
    a6f2:	50 4c 41 4e 54 00    	db     "PLANT",0x00
classes_cpp_variable_123:
    a6f8:	43 41 49 4e 00       	db     "CAIN",0x00
classes_cpp_variable_124:
    a6fd:	47 52 41 50 48 49 43 5c 46 53 54 5c 43 30 36 35 2e 46 53 54 00 	db     "GRAPHIC\FST\C065.FST",0x00
classes_cpp_variable_125:
    a712:	43 41 49 4e 32 00    	db     "CAIN2",0x00
classes_cpp_variable_126:
    a718:	43 41 49 4e 00       	db     "CAIN",0x00
classes_cpp_variable_127:
    a71d:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
classes_cpp_variable_128:
    a735:	63 68 61 6e 67 65 32 6d 6f 6e 73 74 65 72 28 29 20 25 73 00 	db     "change2monster() %s",0x00
classes_cpp_variable_129:
    a749:	63 75 72 72 65 6e 74 3d 25 69 20 68 69 67 68 5f 66 72 61 6d 65 5f 6e 75 6d 62 65 72 3d 25 64 20 6c 6f 77 5f 66 72 61 6d 65 5f 6e 75 6d 62 65 72 3d 25 64 00 	db     "current=%i high_frame_number=%d low_frame_number=%d",0x00
classes_cpp_variable_130:                                                                           ; access size: DWORD
    a77d:	00 00 80 bf          	dd     0xbf800000
classes_cpp_variable_131:                                                                           ; access size: DWORD
    a781:	00 00 00 41          	dd     0x41000000
classes_cpp_variable_132:                                                                           ; access size: DWORD
    a785:	00 00 00 c1          	dd     0xc1000000
classes_cpp_variable_133:                                                                           ; access size: DWORD
    a789:	00 00 80 41          	dd     0x41800000
classes_cpp_variable_134:                                                                           ; access size: DWORD
    a78d:	00 00 80 c1          	dd     0xc1800000
classes_cpp_variable_135:                                                                           ; access size: DWORD
    a791:	00 00 00 c0          	dd     0xc0000000
classes_cpp_variable_136:                                                                           ; access size: DWORD
    a795:	00 00 00 40          	dd     0x40000000
classes_cpp_variable_137:                                                                           ; access size: DWORD
    a799:	00 00 48 42          	dd     0x42480000
classes_cpp_variable_138:                                                                           ; access size: QWORD
    a79d:	9a 99 99 99 99 99 b9 bf 	dq     0xbfb999999999999a
classes_cpp_variable_139:
    a7a5:	57 4f 4c 46 49 45 00 	db     "WOLFIE",0x00
classes_cpp_variable_140:
    a7ac:	64 65 63 5f 76 61 6c 75 65 3d 25 69 20 73 6c 69 64 65 5f 78 3d 25 69 20 63 6f 6d 62 61 74 5f 6d 6f 64 65 3d 25 69 00 	db     "dec_value=%i slide_x=%i combat_mode=%i",0x00
classes_cpp_variable_141:
    a7d3:	57 4f 4c 46 49 45 00 	db     "WOLFIE",0x00
classes_cpp_variable_142:                                                                           ; access size: DWORD
    a7da:	00 00 80 bf          	dd     0xbf800000
classes_cpp_variable_143:
    a7de:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    a7df:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    a7e0:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
classes_cpp_variable_144:
    a7e1:	79 6f 75 72 20 69 6e 76 65 6e 74 6f 72 79 00 	db     "your inventory",0x00
classes_cpp_variable_145:
    a7f0:	43 6f 75 6c 64 20 6e 6f 74 20 61 6c 6c 6f 63 61 74 65 20 61 20 73 74 72 69 6e 67 20 73 68 6f 72 74 65 72 20 74 68 61 6e 20 74 68 69 73 20 65 72 72 6f 72 20 6d 65 73 73 61 67 65 2e 00 	db     "Could not allocate a string shorter than this error message.",0x00
classes_cpp_variable_146:
    a82d:	31 3a 5c 73 6f 75 6e 64 5c 65 66 66 65 63 74 73 5c 50 43 30 5f 64 69 65 2e 77 61 76 00 	db     "1:\sound\effects\PC0_die.wav",0x00
classes_cpp_variable_147:
    a84a:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
classes_cpp_variable_148:
    a862:	31 3a 5c 73 6f 75 6e 64 5c 65 66 66 65 63 74 73 5c 50 43 30 5f 68 69 74 30 2e 77 61 76 00 	db     "1:\sound\effects\PC0_hit0.wav",0x00
classes_cpp_variable_149:
    a880:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
classes_cpp_variable_150:
    a898:	31 3a 5c 73 6f 75 6e 64 5c 65 66 66 65 63 74 73 5c 50 43 30 5f 68 69 74 31 2e 77 61 76 00 	db     "1:\sound\effects\PC0_hit1.wav",0x00
classes_cpp_variable_151:
    a8b6:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
classes_cpp_variable_152:
    a8ce:	31 3a 5c 73 6f 75 6e 64 5c 65 66 66 65 63 74 73 5c 50 43 30 5f 68 69 74 32 2e 77 61 76 00 	db     "1:\sound\effects\PC0_hit2.wav",0x00
classes_cpp_variable_153:
    a8ec:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
classes_cpp_variable_154:
    a904:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 46 4f 4f 54 4c 46 54 31 2e 57 41 56 00 	db     "2:\SOUND\EFFECTS\FOOTLFT1.WAV",0x00
classes_cpp_variable_155:
    a922:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
classes_cpp_variable_156:
    a93a:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 46 4f 4f 54 52 48 54 31 2e 57 41 56 00 	db     "2:\SOUND\EFFECTS\FOOTRHT1.WAV",0x00
classes_cpp_variable_157:
    a958:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
classes_cpp_variable_158:
    a970:	32 3a 5c 73 6f 75 6e 64 5c 65 66 66 65 63 74 73 5c 73 77 6f 6f 73 68 31 2e 77 61 76 00 	db     "2:\sound\effects\swoosh1.wav",0x00
classes_cpp_variable_159:
    a98d:	32 3a 5c 73 6f 75 6e 64 5c 65 66 66 65 63 74 73 5c 73 77 6f 6f 73 68 32 2e 77 61 76 00 	db     "2:\sound\effects\swoosh2.wav",0x00
classes_cpp_variable_160:
    a9aa:	32 3a 5c 73 6f 75 6e 64 5c 65 66 66 65 63 74 73 5c 73 77 6f 6f 73 68 33 2e 77 61 76 00 	db     "2:\sound\effects\swoosh3.wav",0x00
classes_cpp_variable_161:
    a9c7:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 31 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh1.wav",0x00
classes_cpp_variable_162:
    a9e4:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 32 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh2.wav",0x00
classes_cpp_variable_163:
    aa01:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 33 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh3.wav",0x00
classes_cpp_variable_164:
    aa1e:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 4e 41 49 4c 47 55 4e 31 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\NAILGUN1.wav",0x00
classes_cpp_variable_165:
    aa3c:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 69 74 63 68 32 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\switch2.wav",0x00
classes_cpp_variable_166:
    aa59:	31 3a 5c 73 6f 75 6e 64 5c 65 66 66 65 63 74 73 5c 73 68 6f 74 67 75 6e 32 2e 77 61 76 00 	db     "1:\sound\effects\shotgun2.wav",0x00
classes_cpp_variable_167:
    aa77:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 53 48 4f 54 47 50 4d 50 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\SHOTGPMP.wav",0x00
classes_cpp_variable_168:
    aa95:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 67 75 6e 73 68 6f 74 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\gunshot.wav",0x00
classes_cpp_variable_169:
    aab2:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 69 74 63 68 31 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\switch1.wav",0x00
classes_cpp_variable_170:
    aacf:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 67 75 6e 73 68 6f 74 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\gunshot.wav",0x00
classes_cpp_variable_171:
    aaec:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 69 74 63 68 31 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\switch1.wav",0x00
classes_cpp_variable_172:
    ab09:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 31 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh1.wav",0x00
classes_cpp_variable_173:
    ab26:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 32 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh2.wav",0x00
classes_cpp_variable_174:
    ab43:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 33 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh3.wav",0x00
classes_cpp_variable_175:
    ab60:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 31 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh1.wav",0x00
classes_cpp_variable_176:
    ab7d:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 32 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh2.wav",0x00
classes_cpp_variable_177:
    ab9a:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 33 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh3.wav",0x00
classes_cpp_variable_178:
    abb7:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 31 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh1.wav",0x00
classes_cpp_variable_179:
    abd4:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 32 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh2.wav",0x00
classes_cpp_variable_180:
    abf1:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 33 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh3.wav",0x00
classes_cpp_variable_181:
    ac0e:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 31 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh1.wav",0x00
classes_cpp_variable_182:
    ac2b:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 32 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh2.wav",0x00
classes_cpp_variable_183:
    ac48:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 33 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh3.wav",0x00
classes_cpp_variable_184:
    ac65:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 31 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh1.wav",0x00
classes_cpp_variable_185:
    ac82:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 32 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh2.wav",0x00
classes_cpp_variable_186:
    ac9f:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 33 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh3.wav",0x00
classes_cpp_variable_187:
    acbc:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 31 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh1.wav",0x00
classes_cpp_variable_188:
    acd9:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 32 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh2.wav",0x00
classes_cpp_variable_189:
    acf6:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 33 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh3.wav",0x00
classes_cpp_variable_190:
    ad13:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 31 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh1.wav",0x00
classes_cpp_variable_191:
    ad30:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 32 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh2.wav",0x00
classes_cpp_variable_192:
    ad4d:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 33 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh3.wav",0x00
classes_cpp_variable_193:
    ad6a:	32 3a 5c 73 6f 75 6e 64 5c 65 66 66 65 63 74 73 5c 73 77 6f 6f 73 68 31 2e 77 61 76 00 	db     "2:\sound\effects\swoosh1.wav",0x00
classes_cpp_variable_194:
    ad87:	32 3a 5c 73 6f 75 6e 64 5c 65 66 66 65 63 74 73 5c 73 77 6f 6f 73 68 32 2e 77 61 76 00 	db     "2:\sound\effects\swoosh2.wav",0x00
classes_cpp_variable_195:
    ada4:	32 3a 5c 73 6f 75 6e 64 5c 65 66 66 65 63 74 73 5c 73 77 6f 6f 73 68 33 2e 77 61 76 00 	db     "2:\sound\effects\swoosh3.wav",0x00
classes_cpp_variable_196:
    adc1:	31 3a 5c 73 6f 75 6e 64 5c 65 66 66 65 63 74 73 5c 43 4c 4e 5f 61 74 6b 30 2e 77 61 76 00 	db     "1:\sound\effects\CLN_atk0.wav",0x00
classes_cpp_variable_197:
    addf:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 63 68 61 69 6e 6c 70 32 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\chainlp2.wav",0x00
classes_cpp_variable_198:
    adfd:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 33 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh3.wav",0x00
classes_cpp_variable_199:
    ae1a:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 32 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh2.wav",0x00
classes_cpp_variable_200:
    ae37:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 33 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh3.wav",0x00
classes_cpp_variable_201:
    ae54:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 31 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh1.wav",0x00
classes_cpp_variable_202:
    ae71:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 32 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh2.wav",0x00
classes_cpp_variable_203:
    ae8e:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 33 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh3.wav",0x00
classes_cpp_variable_204:
    aeab:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 31 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh1.wav",0x00
classes_cpp_variable_205:
    aec8:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 32 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh2.wav",0x00
classes_cpp_variable_206:
    aee5:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 33 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh3.wav",0x00
classes_cpp_variable_207:
    af02:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 31 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh1.wav",0x00
classes_cpp_variable_208:
    af1f:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 32 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh2.wav",0x00
classes_cpp_variable_209:
    af3c:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 33 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh3.wav",0x00
classes_cpp_variable_210:
    af59:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 31 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh1.wav",0x00
classes_cpp_variable_211:
    af76:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 32 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh2.wav",0x00
classes_cpp_variable_212:
    af93:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 33 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh3.wav",0x00
classes_cpp_variable_213:
    afb0:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 32 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh2.wav",0x00
classes_cpp_variable_214:
    afcd:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 32 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh2.wav",0x00
classes_cpp_variable_215:
    afea:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 33 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh3.wav",0x00
classes_cpp_variable_216:
    b007:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
classes_cpp_variable_217:
    b01f:	49 6e 76 61 6c 69 64 20 77 65 61 70 6f 6e 20 23 25 69 00 	db     "Invalid weapon #%i",0x00
classes_cpp_variable_218:
    b032:	32 3a 5c 73 6f 75 6e 64 5c 65 66 66 65 63 74 73 5c 73 77 6f 6f 73 68 31 2e 77 61 76 00 	db     "2:\sound\effects\swoosh1.wav",0x00
classes_cpp_variable_219:
    b04f:	32 3a 5c 73 6f 75 6e 64 5c 65 66 66 65 63 74 73 5c 73 77 6f 6f 73 68 32 2e 77 61 76 00 	db     "2:\sound\effects\swoosh2.wav",0x00
classes_cpp_variable_220:
    b06c:	32 3a 5c 73 6f 75 6e 64 5c 65 66 66 65 63 74 73 5c 73 77 6f 6f 73 68 33 2e 77 61 76 00 	db     "2:\sound\effects\swoosh3.wav",0x00
classes_cpp_variable_221:
    b089:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 31 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh1.wav",0x00
classes_cpp_variable_222:
    b0a6:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 32 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh2.wav",0x00
classes_cpp_variable_223:
    b0c3:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 33 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh3.wav",0x00
classes_cpp_variable_224:
    b0e0:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 4e 41 49 4c 47 55 4e 31 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\NAILGUN1.wav",0x00
classes_cpp_variable_225:
    b0fe:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 69 74 63 68 32 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\switch2.wav",0x00
classes_cpp_variable_226:
    b11b:	31 3a 5c 73 6f 75 6e 64 5c 65 66 66 65 63 74 73 5c 73 68 6f 74 67 75 6e 32 2e 77 61 76 00 	db     "1:\sound\effects\shotgun2.wav",0x00
classes_cpp_variable_227:
    b139:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 53 48 4f 54 47 50 4d 50 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\SHOTGPMP.wav",0x00
classes_cpp_variable_228:
    b157:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 67 75 6e 73 68 6f 74 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\gunshot.wav",0x00
classes_cpp_variable_229:
    b174:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 69 74 63 68 31 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\switch1.wav",0x00
classes_cpp_variable_230:
    b191:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 68 6f 74 67 75 6e 32 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\shotgun2.wav",0x00
classes_cpp_variable_231:
    b1af:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 69 74 63 68 31 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\switch1.wav",0x00
classes_cpp_variable_232:
    b1cc:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 31 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh1.wav",0x00
classes_cpp_variable_233:
    b1e9:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 32 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh2.wav",0x00
classes_cpp_variable_234:
    b206:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 33 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh3.wav",0x00
classes_cpp_variable_235:
    b223:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 31 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh1.wav",0x00
classes_cpp_variable_236:
    b240:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 32 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh2.wav",0x00
classes_cpp_variable_237:
    b25d:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 33 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh3.wav",0x00
classes_cpp_variable_238:
    b27a:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 31 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh1.wav",0x00
classes_cpp_variable_239:
    b297:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 32 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh2.wav",0x00
classes_cpp_variable_240:
    b2b4:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 33 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh3.wav",0x00
classes_cpp_variable_241:
    b2d1:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 31 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh1.wav",0x00
classes_cpp_variable_242:
    b2ee:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 32 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh2.wav",0x00
classes_cpp_variable_243:
    b30b:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 33 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh3.wav",0x00
classes_cpp_variable_244:
    b328:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 31 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh1.wav",0x00
classes_cpp_variable_245:
    b345:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 32 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh2.wav",0x00
classes_cpp_variable_246:
    b362:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 33 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh3.wav",0x00
classes_cpp_variable_247:
    b37f:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 31 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh1.wav",0x00
classes_cpp_variable_248:
    b39c:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 32 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh2.wav",0x00
classes_cpp_variable_249:
    b3b9:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 33 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh3.wav",0x00
classes_cpp_variable_250:
    b3d6:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 31 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh1.wav",0x00
classes_cpp_variable_251:
    b3f3:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 32 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh2.wav",0x00
classes_cpp_variable_252:
    b410:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 33 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh3.wav",0x00
classes_cpp_variable_253:
    b42d:	32 3a 5c 73 6f 75 6e 64 5c 65 66 66 65 63 74 73 5c 73 77 6f 6f 73 68 31 2e 77 61 76 00 	db     "2:\sound\effects\swoosh1.wav",0x00
classes_cpp_variable_254:
    b44a:	32 3a 5c 73 6f 75 6e 64 5c 65 66 66 65 63 74 73 5c 73 77 6f 6f 73 68 32 2e 77 61 76 00 	db     "2:\sound\effects\swoosh2.wav",0x00
classes_cpp_variable_255:
    b467:	32 3a 5c 73 6f 75 6e 64 5c 65 66 66 65 63 74 73 5c 73 77 6f 6f 73 68 33 2e 77 61 76 00 	db     "2:\sound\effects\swoosh3.wav",0x00
classes_cpp_variable_256:
    b484:	31 3a 5c 73 6f 75 6e 64 5c 65 66 66 65 63 74 73 5c 43 4c 4e 5f 61 74 6b 30 2e 77 61 76 00 	db     "1:\sound\effects\CLN_atk0.wav",0x00
classes_cpp_variable_257:
    b4a2:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 63 68 61 69 6e 6c 70 32 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\chainlp2.wav",0x00
classes_cpp_variable_258:
    b4c0:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 33 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh3.wav",0x00
classes_cpp_variable_259:
    b4dd:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 32 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh2.wav",0x00
classes_cpp_variable_260:
    b4fa:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 33 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh3.wav",0x00
classes_cpp_variable_261:
    b517:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 31 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh1.wav",0x00
classes_cpp_variable_262:
    b534:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 32 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh2.wav",0x00
classes_cpp_variable_263:
    b551:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 33 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh3.wav",0x00
classes_cpp_variable_264:
    b56e:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 31 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh1.wav",0x00
classes_cpp_variable_265:
    b58b:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 32 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh2.wav",0x00
classes_cpp_variable_266:
    b5a8:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 33 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh3.wav",0x00
classes_cpp_variable_267:
    b5c5:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 31 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh1.wav",0x00
classes_cpp_variable_268:
    b5e2:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 32 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh2.wav",0x00
classes_cpp_variable_269:
    b5ff:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 33 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh3.wav",0x00
classes_cpp_variable_270:
    b61c:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 31 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh1.wav",0x00
classes_cpp_variable_271:
    b639:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 32 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh2.wav",0x00
classes_cpp_variable_272:
    b656:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 33 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh3.wav",0x00
classes_cpp_variable_273:
    b673:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 32 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh2.wav",0x00
classes_cpp_variable_274:
    b690:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 32 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh2.wav",0x00
classes_cpp_variable_275:
    b6ad:	32 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 73 77 6f 6f 73 68 33 2e 77 61 76 00 	db     "2:\SOUND\EFFECTS\swoosh3.wav",0x00
classes_cpp_variable_276:
    b6ca:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
classes_cpp_variable_277:
    b6e2:	63 6c 61 73 73 65 73 2e 63 70 70 00 	db     "classes.cpp",0x00
classes_cpp_variable_278:
    b6ee:	43 6f 75 6c 64 20 6e 6f 74 20 72 65 61 64 20 61 62 6d 5f 66 69 6c 65 6e 61 6d 65 3a 20 25 73 00 	db     "Could not read abm_filename: %s",0x00
classes_cpp_variable_279:
    b70e:	6f 6c 64 5f 79 20 3d 20 79 20 2b 20 73 63 61 6c 65 64 5f 68 65 69 67 68 74 20 2b 20 6f 66 66 73 65 74 5f 79 20 3d 20 25 69 00 	db     "old_y = y + scaled_height + offset_y = %i",0x00
classes_cpp_variable_280:
    b738:	79 20 3d 20 28 6f 6c 64 5f 79 20 2d 20 73 63 61 6c 65 64 5f 68 65 69 67 68 74 20 2d 20 6f 66 66 73 65 74 5f 79 20 3d 20 25 69 29 20 3d 20 25 69 00 	db     "y = (old_y - scaled_height - offset_y = %i) = %i",0x00
classes_cpp_variable_281:
    b769:	4e 55 4c 4c 00       	db     "NULL",0x00
classes_cpp_variable_282:
    b76e:	77 69 74 68 20 27 25 73 27 00 	db     "with '%s'",0x00
classes_cpp_variable_283:
    b778:	4e 55 4c 4c 00       	db     "NULL",0x00
classes_cpp_variable_284:
    b77d:	77 69 74 68 20 27 25 73 27 00 	db     "with '%s'",0x00
    b787:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 76 (D:\SOURCE\classes.cpp)                                    -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 76: D:\SOURCE\classes.cpp                                            -
;                                                                              -
;-------------------------------------------------------------------------------
move_min_x:                                                                                         ; access size: DWORD
   13c08:	14 00 00 00          	dd     0x00000014
move_max_x:                                                                                         ; access size: DWORD
   13c0c:	6b 02 00 00          	dd     0x0000026b

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 76 (D:\SOURCE\classes.cpp)                                    -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 76: D:\SOURCE\classes.cpp                                            -
;                                                                              -
;-------------------------------------------------------------------------------
stef_scrm:                                                                                          ; access size: DWORD
   259f8:	00 00 00 00          	dd     0x00000000
stef_scrm_variable_1:                                                                               ; access size: DWORD
   259fc:	00 00 00 00          	dd     0x00000000
stef_scrm_variable_2:                                                                               ; access size: DWORD
   25a00:	00 00 00 00          	dd     0x00000000
_id_holder:
   25a04:	00 00 00 00 00 00 .. 	db     111 dup(0x00)                                                ; dec:   0, chr: '\0'
cain_hit_by_flail:                                                                                  ; access size: BYTE
   25a73:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
next_attack:                                                                                        ; access size: DWORD
   25a74:	00 00 00 00          	dd     0x00000000

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 76 (D:\SOURCE\classes.cpp)                                    -
;                                                                              -
;-------------------------------------------------------------------------------