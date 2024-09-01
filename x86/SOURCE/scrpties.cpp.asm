;-------------------------------------------------------------------------------
;                                                                              -
;  Module 85: D:\SOURCE\scrpties.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function 'scrpties_cpp_'                      -
;-------------------------------------------------
scrpties_cpp_:
   4e110:	b8 a8 bc 00 00       	mov    eax,@obj3:scrpties_cpp_variable_1                            ; fixup: num: 11969, src obj: 1, src ofs: 0x4e111, dst obj: 3, dst ofs: 0xbca8
   4e115:	e9 55 2f 02 00       	jmp    puts_
   4e11a:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'do_anim'                            -
;-------------------------------------------------
do_anim:
   4e120:	53                   	push   ebx
   4e121:	51                   	push   ecx
   4e122:	52                   	push   edx
   4e123:	56                   	push   esi
   4e124:	57                   	push   edi
   4e125:	55                   	push   ebp
   4e126:	b8 2c 00 00 00       	mov    eax,0x2c
   4e12b:	e8 63 33 02 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   4e130:	89 c1                	mov    ecx,eax
   4e132:	85 c0                	test   eax,eax
   4e134:	75 0f                	jne    do_anim_branch_1
   4e136:	bb b5 bc 00 00       	mov    ebx,@obj3:scrpties_cpp_variable_2                            ; fixup: num: 11968, src obj: 1, src ofs: 0x4e137, dst obj: 3, dst ofs: 0xbcb5
   4e13b:	ba a3 00 00 00       	mov    edx,0xa3
   4e140:	e8 eb 9e fe ff       	call   _error_report
do_anim_branch_1:
   4e145:	bb 2c 00 00 00       	mov    ebx,0x2c
   4e14a:	89 c8                	mov    eax,ecx
   4e14c:	31 d2                	xor    edx,edx
   4e14e:	e8 7d 32 02 00       	call   memset_
   4e153:	e8 08 e8 fd ff       	call   popsp
   4e158:	89 41 0c             	mov    DWORD PTR [ecx+0xc],eax
   4e15b:	e8 00 e8 fd ff       	call   popsp
   4e160:	89 41 08             	mov    DWORD PTR [ecx+0x8],eax
   4e163:	e8 f8 e7 fd ff       	call   popsp
   4e168:	89 41 04             	mov    DWORD PTR [ecx+0x4],eax
   4e16b:	e8 f0 e7 fd ff       	call   popsp
   4e170:	89 01                	mov    DWORD PTR [ecx],eax
   4e172:	e8 c9 90 fe ff       	call   return_word
   4e177:	89 41 10             	mov    DWORD PTR [ecx+0x10],eax
   4e17a:	e8 c1 90 fe ff       	call   return_word
   4e17f:	89 41 14             	mov    DWORD PTR [ecx+0x14],eax
   4e182:	80 3d 48 7e 01 00 00 	cmp    BYTE PTR ds:@obj3:script_check,0x0                           ; fixup: num: 11967, src obj: 1, src ofs: 0x4e184, dst obj: 3, dst ofs: 0x17e48
   4e189:	74 57                	je     do_anim_branch_3
   4e18b:	8b 51 14             	mov    edx,DWORD PTR [ecx+0x14]
   4e18e:	85 d2                	test   edx,edx
   4e190:	74 50                	je     do_anim_branch_3
   4e192:	89 d0                	mov    eax,edx
   4e194:	89 d7                	mov    edi,edx
   4e196:	e8 e5 ea fb ff       	call   XFILE_size
   4e19b:	83 f8 ff             	cmp    eax,0xffffffff
   4e19e:	75 42                	jne    do_anim_branch_3
   4e1a0:	b2 01                	mov    dl,0x1
   4e1a2:	b8 d1 bc 00 00       	mov    eax,@obj3:scrpties_cpp_variable_4                            ; fixup: num: 11966, src obj: 1, src ofs: 0x4e1a3, dst obj: 3, dst ofs: 0xbcd1
   4e1a7:	88 15 14 5b 02 00    	mov    BYTE PTR ds:@obj3:script_errors,dl                           ; fixup: num: 11965, src obj: 1, src ofs: 0x4e1a9, dst obj: 3, dst ofs: 0x25b14
   4e1ad:	ba cd bc 00 00       	mov    edx,@obj3:scrpties_cpp_variable_3                            ; fixup: num: 11964, src obj: 1, src ofs: 0x4e1ae, dst obj: 3, dst ofs: 0xbccd
   4e1b2:	e8 f1 2b 02 00       	call   fopen_
   4e1b7:	89 c6                	mov    esi,eax
   4e1b9:	85 c0                	test   eax,eax
   4e1bb:	75 0f                	jne    do_anim_branch_2
   4e1bd:	bb dc bc 00 00       	mov    ebx,@obj3:scrpties_cpp_variable_5                            ; fixup: num: 11979, src obj: 1, src ofs: 0x4e1be, dst obj: 3, dst ofs: 0xbcdc
   4e1c2:	ba f9 0b 00 00       	mov    edx,0xbf9
   4e1c7:	e8 64 9e fe ff       	call   _error_report
do_anim_branch_2:
   4e1cc:	57                   	push   edi
   4e1cd:	68 f0 bc 00 00       	push   @obj3:scrpties_cpp_variable_6                                ; fixup: num: 11978, src obj: 1, src ofs: 0x4e1ce, dst obj: 3, dst ofs: 0xbcf0
   4e1d2:	56                   	push   esi
   4e1d3:	e8 09 8a 02 00       	call   fprintf_
   4e1d8:	83 c4 0c             	add    esp,0xc
   4e1db:	89 f0                	mov    eax,esi
   4e1dd:	e8 5c 2c 02 00       	call   fclose_
do_anim_branch_3:
   4e1e2:	e8 59 90 fe ff       	call   return_word
   4e1e7:	89 41 18             	mov    DWORD PTR [ecx+0x18],eax
   4e1ea:	e8 51 90 fe ff       	call   return_word
   4e1ef:	89 c3                	mov    ebx,eax
   4e1f1:	85 c0                	test   eax,eax
   4e1f3:	75 19                	jne    do_anim_branch_4
   4e1f5:	8b 35 38 36 02 00    	mov    esi,DWORD PTR ds:@obj3:script_line_number                    ; fixup: num: 11977, src obj: 1, src ofs: 0x4e1f7, dst obj: 3, dst ofs: 0x23638
   4e1fb:	56                   	push   esi
   4e1fc:	68 04 bd 00 00       	push   @obj3:scrpties_cpp_variable_7                                ; fixup: num: 11976, src obj: 1, src ofs: 0x4e1fd, dst obj: 3, dst ofs: 0xbd04
   4e201:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 11975, src obj: 1, src ofs: 0x4e202, dst obj: 3, dst ofs: 0x237fc
   4e206:	e8 d6 29 02 00       	call   sprintf_
   4e20b:	83 c4 0c             	add    esp,0xc
do_anim_branch_4:
   4e20e:	ba 2e bd 00 00       	mov    edx,@obj3:scrpties_cpp_variable_8                            ; fixup: num: 11974, src obj: 1, src ofs: 0x4e20f, dst obj: 3, dst ofs: 0xbd2e
   4e213:	89 d8                	mov    eax,ebx
   4e215:	e8 16 82 02 00       	call   strcmp_
   4e21a:	85 c0                	test   eax,eax
   4e21c:	0f 94 c0             	sete   al
   4e21f:	88 41 1c             	mov    BYTE PTR [ecx+0x1c],al
   4e222:	85 db                	test   ebx,ebx
   4e224:	74 07                	je     do_anim_branch_5
   4e226:	89 d8                	mov    eax,ebx
   4e228:	e8 bb 31 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
do_anim_branch_5:
   4e22d:	e8 0e 90 fe ff       	call   return_word
   4e232:	89 c3                	mov    ebx,eax
   4e234:	85 c0                	test   eax,eax
   4e236:	75 19                	jne    do_anim_branch_6
   4e238:	8b 3d 38 36 02 00    	mov    edi,DWORD PTR ds:@obj3:script_line_number                    ; fixup: num: 11973, src obj: 1, src ofs: 0x4e23a, dst obj: 3, dst ofs: 0x23638
   4e23e:	57                   	push   edi
   4e23f:	68 30 bd 00 00       	push   @obj3:scrpties_cpp_variable_9                                ; fixup: num: 11972, src obj: 1, src ofs: 0x4e240, dst obj: 3, dst ofs: 0xbd30
   4e244:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 11971, src obj: 1, src ofs: 0x4e245, dst obj: 3, dst ofs: 0x237fc
   4e249:	e8 93 29 02 00       	call   sprintf_
   4e24e:	83 c4 0c             	add    esp,0xc
do_anim_branch_6:
   4e251:	ba 5b bd 00 00       	mov    edx,@obj3:scrpties_cpp_variable_10                           ; fixup: num: 11970, src obj: 1, src ofs: 0x4e252, dst obj: 3, dst ofs: 0xbd5b
   4e256:	89 d8                	mov    eax,ebx
   4e258:	e8 d3 81 02 00       	call   strcmp_
   4e25d:	85 c0                	test   eax,eax
   4e25f:	0f 94 c0             	sete   al
   4e262:	88 41 1d             	mov    BYTE PTR [ecx+0x1d],al
   4e265:	85 db                	test   ebx,ebx
   4e267:	74 07                	je     do_anim_branch_7
   4e269:	89 d8                	mov    eax,ebx
   4e26b:	e8 78 31 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
do_anim_branch_7:
   4e270:	e8 cb 8f fe ff       	call   return_word
   4e275:	89 c3                	mov    ebx,eax
   4e277:	85 c0                	test   eax,eax
   4e279:	75 19                	jne    do_anim_branch_8
   4e27b:	8b 2d 38 36 02 00    	mov    ebp,DWORD PTR ds:@obj3:script_line_number                    ; fixup: num: 11990, src obj: 1, src ofs: 0x4e27d, dst obj: 3, dst ofs: 0x23638
   4e281:	55                   	push   ebp
   4e282:	68 5d bd 00 00       	push   @obj3:scrpties_cpp_variable_11                               ; fixup: num: 11989, src obj: 1, src ofs: 0x4e283, dst obj: 3, dst ofs: 0xbd5d
   4e287:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 11988, src obj: 1, src ofs: 0x4e288, dst obj: 3, dst ofs: 0x237fc
   4e28c:	e8 50 29 02 00       	call   sprintf_
   4e291:	83 c4 0c             	add    esp,0xc
do_anim_branch_8:
   4e294:	ba 85 bd 00 00       	mov    edx,@obj3:scrpties_cpp_variable_12                           ; fixup: num: 11987, src obj: 1, src ofs: 0x4e295, dst obj: 3, dst ofs: 0xbd85
   4e299:	89 d8                	mov    eax,ebx
   4e29b:	e8 90 81 02 00       	call   strcmp_
   4e2a0:	85 c0                	test   eax,eax
   4e2a2:	0f 94 c0             	sete   al
   4e2a5:	88 41 1e             	mov    BYTE PTR [ecx+0x1e],al
   4e2a8:	85 db                	test   ebx,ebx
   4e2aa:	74 07                	je     do_anim_branch_9
   4e2ac:	89 d8                	mov    eax,ebx
   4e2ae:	e8 35 31 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
do_anim_branch_9:
   4e2b3:	e8 88 8f fe ff       	call   return_word
   4e2b8:	89 c3                	mov    ebx,eax
   4e2ba:	85 c0                	test   eax,eax
   4e2bc:	75 18                	jne    do_anim_branch_10
   4e2be:	a1 38 36 02 00       	mov    eax,ds:@obj3:script_line_number                              ; fixup: num: 11986, src obj: 1, src ofs: 0x4e2bf, dst obj: 3, dst ofs: 0x23638
   4e2c3:	50                   	push   eax
   4e2c4:	68 87 bd 00 00       	push   @obj3:scrpties_cpp_variable_13                               ; fixup: num: 11985, src obj: 1, src ofs: 0x4e2c5, dst obj: 3, dst ofs: 0xbd87
   4e2c9:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 11984, src obj: 1, src ofs: 0x4e2ca, dst obj: 3, dst ofs: 0x237fc
   4e2ce:	e8 0e 29 02 00       	call   sprintf_
   4e2d3:	83 c4 0c             	add    esp,0xc
do_anim_branch_10:
   4e2d6:	ba b3 bd 00 00       	mov    edx,@obj3:scrpties_cpp_variable_14                           ; fixup: num: 11983, src obj: 1, src ofs: 0x4e2d7, dst obj: 3, dst ofs: 0xbdb3
   4e2db:	89 d8                	mov    eax,ebx
   4e2dd:	e8 4e 81 02 00       	call   strcmp_
   4e2e2:	85 c0                	test   eax,eax
   4e2e4:	0f 94 c0             	sete   al
   4e2e7:	88 41 1f             	mov    BYTE PTR [ecx+0x1f],al
   4e2ea:	85 db                	test   ebx,ebx
   4e2ec:	74 07                	je     do_anim_branch_11
   4e2ee:	89 d8                	mov    eax,ebx
   4e2f0:	e8 f3 30 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
do_anim_branch_11:
   4e2f5:	e8 46 8f fe ff       	call   return_word
   4e2fa:	89 c3                	mov    ebx,eax
   4e2fc:	85 c0                	test   eax,eax
   4e2fe:	75 19                	jne    do_anim_branch_12
   4e300:	8b 15 38 36 02 00    	mov    edx,DWORD PTR ds:@obj3:script_line_number                    ; fixup: num: 11982, src obj: 1, src ofs: 0x4e302, dst obj: 3, dst ofs: 0x23638
   4e306:	52                   	push   edx
   4e307:	68 b5 bd 00 00       	push   @obj3:scrpties_cpp_variable_15                               ; fixup: num: 11981, src obj: 1, src ofs: 0x4e308, dst obj: 3, dst ofs: 0xbdb5
   4e30c:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 11980, src obj: 1, src ofs: 0x4e30d, dst obj: 3, dst ofs: 0x237fc
   4e311:	e8 cb 28 02 00       	call   sprintf_
   4e316:	83 c4 0c             	add    esp,0xc
do_anim_branch_12:
   4e319:	ba e2 bd 00 00       	mov    edx,@obj3:scrpties_cpp_variable_16                           ; fixup: num: 11999, src obj: 1, src ofs: 0x4e31a, dst obj: 3, dst ofs: 0xbde2
   4e31e:	89 d8                	mov    eax,ebx
   4e320:	e8 0b 81 02 00       	call   strcmp_
   4e325:	85 c0                	test   eax,eax
   4e327:	0f 94 c0             	sete   al
   4e32a:	88 41 20             	mov    BYTE PTR [ecx+0x20],al
   4e32d:	85 db                	test   ebx,ebx
   4e32f:	74 07                	je     do_anim_branch_13
   4e331:	89 d8                	mov    eax,ebx
   4e333:	e8 b0 30 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
do_anim_branch_13:
   4e338:	e8 03 8f fe ff       	call   return_word
   4e33d:	89 c3                	mov    ebx,eax
   4e33f:	85 c0                	test   eax,eax
   4e341:	75 19                	jne    do_anim_branch_14
   4e343:	8b 35 38 36 02 00    	mov    esi,DWORD PTR ds:@obj3:script_line_number                    ; fixup: num: 11998, src obj: 1, src ofs: 0x4e345, dst obj: 3, dst ofs: 0x23638
   4e349:	56                   	push   esi
   4e34a:	68 e4 bd 00 00       	push   @obj3:scrpties_cpp_variable_17                               ; fixup: num: 11997, src obj: 1, src ofs: 0x4e34b, dst obj: 3, dst ofs: 0xbde4
   4e34f:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 11996, src obj: 1, src ofs: 0x4e350, dst obj: 3, dst ofs: 0x237fc
   4e354:	e8 88 28 02 00       	call   sprintf_
   4e359:	83 c4 0c             	add    esp,0xc
do_anim_branch_14:
   4e35c:	ba 0e be 00 00       	mov    edx,@obj3:scrpties_cpp_variable_18                           ; fixup: num: 11995, src obj: 1, src ofs: 0x4e35d, dst obj: 3, dst ofs: 0xbe0e
   4e361:	89 d8                	mov    eax,ebx
   4e363:	e8 c8 80 02 00       	call   strcmp_
   4e368:	85 c0                	test   eax,eax
   4e36a:	0f 94 c0             	sete   al
   4e36d:	88 41 21             	mov    BYTE PTR [ecx+0x21],al
   4e370:	85 db                	test   ebx,ebx
   4e372:	74 07                	je     do_anim_branch_15
   4e374:	89 d8                	mov    eax,ebx
   4e376:	e8 6d 30 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
do_anim_branch_15:
   4e37b:	c7 41 24 ff ff ff ff 	mov    DWORD PTR [ecx+0x24],0xffffffff
   4e382:	c7 41 28 00 00 00 00 	mov    DWORD PTR [ecx+0x28],0x0
   4e389:	8a 41 1c             	mov    al,BYTE PTR [ecx+0x1c]
   4e38c:	88 41 22             	mov    BYTE PTR [ecx+0x22],al
   4e38f:	8a 41 1d             	mov    al,BYTE PTR [ecx+0x1d]
   4e392:	8b 79 10             	mov    edi,DWORD PTR [ecx+0x10]
   4e395:	88 41 23             	mov    BYTE PTR [ecx+0x23],al
   4e398:	85 ff                	test   edi,edi
   4e39a:	74 0c                	je     do_anim_branch_16
   4e39c:	83 79 14 00          	cmp    DWORD PTR [ecx+0x14],0x0
   4e3a0:	74 06                	je     do_anim_branch_16
   4e3a2:	83 79 18 00          	cmp    DWORD PTR [ecx+0x18],0x0
   4e3a6:	75 2a                	jne    do_anim_branch_17
do_anim_branch_16:
   4e3a8:	8b 15 38 36 02 00    	mov    edx,DWORD PTR ds:@obj3:script_line_number                    ; fixup: num: 11994, src obj: 1, src ofs: 0x4e3aa, dst obj: 3, dst ofs: 0x23638
   4e3ae:	52                   	push   edx
   4e3af:	68 10 be 00 00       	push   @obj3:scrpties_cpp_variable_19                               ; fixup: num: 11993, src obj: 1, src ofs: 0x4e3b0, dst obj: 3, dst ofs: 0xbe10
   4e3b4:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 11992, src obj: 1, src ofs: 0x4e3b5, dst obj: 3, dst ofs: 0x237fc
   4e3b9:	bb fc 37 02 00       	mov    ebx,@obj3:log_buffer                                         ; fixup: num: 11991, src obj: 1, src ofs: 0x4e3ba, dst obj: 3, dst ofs: 0x237fc
   4e3be:	e8 1e 28 02 00       	call   sprintf_
   4e3c3:	83 c4 0c             	add    esp,0xc
   4e3c6:	ba e4 00 00 00       	mov    edx,0xe4
   4e3cb:	31 c0                	xor    eax,eax
   4e3cd:	e8 5e 9c fe ff       	call   _error_report
do_anim_branch_17:
   4e3d2:	8b 1d 90 5a 02 00    	mov    ebx,DWORD PTR ds:@obj3:anim_list                             ; fixup: num: 12005, src obj: 1, src ofs: 0x4e3d4, dst obj: 3, dst ofs: 0x25a90
   4e3d8:	85 db                	test   ebx,ebx
   4e3da:	75 08                	jne    do_anim_branch_18
   4e3dc:	89 0d 90 5a 02 00    	mov    DWORD PTR ds:@obj3:anim_list,ecx                             ; fixup: num: 12004, src obj: 1, src ofs: 0x4e3de, dst obj: 3, dst ofs: 0x25a90
   4e3e2:	eb 15                	jmp    do_anim_branch_21
do_anim_branch_18:
   4e3e4:	8b 73 28             	mov    esi,DWORD PTR [ebx+0x28]
   4e3e7:	89 d8                	mov    eax,ebx
   4e3e9:	85 f6                	test   esi,esi
   4e3eb:	74 09                	je     do_anim_branch_20
do_anim_branch_19:
   4e3ed:	8b 40 28             	mov    eax,DWORD PTR [eax+0x28]
   4e3f0:	83 78 28 00          	cmp    DWORD PTR [eax+0x28],0x0
   4e3f4:	75 f7                	jne    do_anim_branch_19
do_anim_branch_20:
   4e3f6:	89 48 28             	mov    DWORD PTR [eax+0x28],ecx
do_anim_branch_21:
   4e3f9:	ff 05 d8 5a 02 00    	inc    DWORD PTR ds:@obj3:anim_ctr                                  ; fixup: num: 12003, src obj: 1, src ofs: 0x4e3fb, dst obj: 3, dst ofs: 0x25ad8
   4e3ff:	5d                   	pop    ebp
   4e400:	5f                   	pop    edi
   4e401:	5e                   	pop    esi
   4e402:	5a                   	pop    edx
   4e403:	59                   	pop    ecx
   4e404:	5b                   	pop    ebx
   4e405:	c3                   	ret    
   4e406:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   4e40c:	8d 54 22 00          	lea    edx,[edx+eiz*1+0x0]

;-------------------------------------------------
;  Function 'do_command'                         -
;-------------------------------------------------
do_command:
   4e410:	53                   	push   ebx
   4e411:	51                   	push   ecx
   4e412:	52                   	push   edx
   4e413:	56                   	push   esi
   4e414:	57                   	push   edi
   4e415:	55                   	push   ebp
   4e416:	b8 20 00 00 00       	mov    eax,0x20
   4e41b:	e8 73 30 02 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   4e420:	89 c1                	mov    ecx,eax
   4e422:	85 c0                	test   eax,eax
   4e424:	75 0f                	jne    do_command_branch_1
   4e426:	bb 42 be 00 00       	mov    ebx,@obj3:scrpties_cpp_variable_20                           ; fixup: num: 12002, src obj: 1, src ofs: 0x4e427, dst obj: 3, dst ofs: 0xbe42
   4e42b:	ba 04 01 00 00       	mov    edx,0x104
   4e430:	e8 fb 9b fe ff       	call   _error_report
do_command_branch_1:
   4e435:	bb 20 00 00 00       	mov    ebx,0x20
   4e43a:	89 c8                	mov    eax,ecx
   4e43c:	31 d2                	xor    edx,edx
   4e43e:	e8 8d 2f 02 00       	call   memset_
   4e443:	e8 f8 8d fe ff       	call   return_word
   4e448:	ba 5a be 00 00       	mov    edx,@obj3:scrpties_cpp_variable_21                           ; fixup: num: 12001, src obj: 1, src ofs: 0x4e449, dst obj: 3, dst ofs: 0xbe5a
   4e44d:	89 41 04             	mov    DWORD PTR [ecx+0x4],eax
   4e450:	e8 eb 8d fe ff       	call   return_word
   4e455:	89 c3                	mov    ebx,eax
   4e457:	89 c6                	mov    esi,eax
   4e459:	e8 d2 7f 02 00       	call   strcmp_
   4e45e:	85 c0                	test   eax,eax
   4e460:	75 07                	jne    do_command_branch_2
   4e462:	89 01                	mov    DWORD PTR [ecx],eax
   4e464:	e9 76 05 00 00       	jmp    do_command_branch_55
do_command_branch_2:
   4e469:	ba 5e be 00 00       	mov    edx,@obj3:scrpties_cpp_variable_22                           ; fixup: num: 12000, src obj: 1, src ofs: 0x4e46a, dst obj: 3, dst ofs: 0xbe5e
   4e46e:	89 d8                	mov    eax,ebx
   4e470:	e8 bb 7f 02 00       	call   strcmp_
   4e475:	85 c0                	test   eax,eax
   4e477:	75 0b                	jne    do_command_branch_3
   4e479:	c7 01 01 00 00 00    	mov    DWORD PTR [ecx],0x1
   4e47f:	e9 5b 05 00 00       	jmp    do_command_branch_55
do_command_branch_3:
   4e484:	ba 66 be 00 00       	mov    edx,@obj3:scrpties_cpp_variable_23                           ; fixup: num: 12011, src obj: 1, src ofs: 0x4e485, dst obj: 3, dst ofs: 0xbe66
   4e489:	89 d8                	mov    eax,ebx
   4e48b:	e8 a0 7f 02 00       	call   strcmp_
   4e490:	85 c0                	test   eax,eax
   4e492:	75 0b                	jne    do_command_branch_4
   4e494:	c7 01 02 00 00 00    	mov    DWORD PTR [ecx],0x2
   4e49a:	e9 40 05 00 00       	jmp    do_command_branch_55
do_command_branch_4:
   4e49f:	ba 72 be 00 00       	mov    edx,@obj3:scrpties_cpp_variable_24                           ; fixup: num: 12010, src obj: 1, src ofs: 0x4e4a0, dst obj: 3, dst ofs: 0xbe72
   4e4a4:	89 d8                	mov    eax,ebx
   4e4a6:	e8 85 7f 02 00       	call   strcmp_
   4e4ab:	85 c0                	test   eax,eax
   4e4ad:	75 0b                	jne    do_command_branch_5
   4e4af:	c7 01 04 00 00 00    	mov    DWORD PTR [ecx],0x4
   4e4b5:	e9 25 05 00 00       	jmp    do_command_branch_55
do_command_branch_5:
   4e4ba:	ba 7d be 00 00       	mov    edx,@obj3:scrpties_cpp_variable_25                           ; fixup: num: 12009, src obj: 1, src ofs: 0x4e4bb, dst obj: 3, dst ofs: 0xbe7d
   4e4bf:	89 d8                	mov    eax,ebx
   4e4c1:	e8 6a 7f 02 00       	call   strcmp_
   4e4c6:	85 c0                	test   eax,eax
   4e4c8:	75 0b                	jne    do_command_branch_6
   4e4ca:	c7 01 05 00 00 00    	mov    DWORD PTR [ecx],0x5
   4e4d0:	e9 0a 05 00 00       	jmp    do_command_branch_55
do_command_branch_6:
   4e4d5:	ba 8a be 00 00       	mov    edx,@obj3:scrpties_cpp_variable_26                           ; fixup: num: 12008, src obj: 1, src ofs: 0x4e4d6, dst obj: 3, dst ofs: 0xbe8a
   4e4da:	89 d8                	mov    eax,ebx
   4e4dc:	e8 4f 7f 02 00       	call   strcmp_
   4e4e1:	85 c0                	test   eax,eax
   4e4e3:	75 0b                	jne    do_command_branch_7
   4e4e5:	c7 01 03 00 00 00    	mov    DWORD PTR [ecx],0x3
   4e4eb:	e9 ef 04 00 00       	jmp    do_command_branch_55
do_command_branch_7:
   4e4f0:	ba 95 be 00 00       	mov    edx,@obj3:scrpties_cpp_variable_27                           ; fixup: num: 12007, src obj: 1, src ofs: 0x4e4f1, dst obj: 3, dst ofs: 0xbe95
   4e4f5:	89 d8                	mov    eax,ebx
   4e4f7:	e8 34 7f 02 00       	call   strcmp_
   4e4fc:	85 c0                	test   eax,eax
   4e4fe:	75 0b                	jne    do_command_branch_8
   4e500:	c7 01 06 00 00 00    	mov    DWORD PTR [ecx],0x6
   4e506:	e9 d4 04 00 00       	jmp    do_command_branch_55
do_command_branch_8:
   4e50b:	ba 9d be 00 00       	mov    edx,@obj3:scrpties_cpp_variable_28                           ; fixup: num: 12006, src obj: 1, src ofs: 0x4e50c, dst obj: 3, dst ofs: 0xbe9d
   4e510:	89 d8                	mov    eax,ebx
   4e512:	e8 19 7f 02 00       	call   strcmp_
   4e517:	85 c0                	test   eax,eax
   4e519:	75 0b                	jne    do_command_branch_9
   4e51b:	c7 01 07 00 00 00    	mov    DWORD PTR [ecx],0x7
   4e521:	e9 b9 04 00 00       	jmp    do_command_branch_55
do_command_branch_9:
   4e526:	ba a4 be 00 00       	mov    edx,@obj3:scrpties_cpp_variable_29                           ; fixup: num: 12018, src obj: 1, src ofs: 0x4e527, dst obj: 3, dst ofs: 0xbea4
   4e52b:	89 d8                	mov    eax,ebx
   4e52d:	e8 fe 7e 02 00       	call   strcmp_
   4e532:	85 c0                	test   eax,eax
   4e534:	75 0b                	jne    do_command_branch_10
   4e536:	c7 01 34 00 00 00    	mov    DWORD PTR [ecx],0x34
   4e53c:	e9 9e 04 00 00       	jmp    do_command_branch_55
do_command_branch_10:
   4e541:	ba ad be 00 00       	mov    edx,@obj3:scrpties_cpp_variable_30                           ; fixup: num: 12017, src obj: 1, src ofs: 0x4e542, dst obj: 3, dst ofs: 0xbead
   4e546:	89 d8                	mov    eax,ebx
   4e548:	e8 e3 7e 02 00       	call   strcmp_
   4e54d:	85 c0                	test   eax,eax
   4e54f:	75 0b                	jne    do_command_branch_11
   4e551:	c7 01 08 00 00 00    	mov    DWORD PTR [ecx],0x8
   4e557:	e9 83 04 00 00       	jmp    do_command_branch_55
do_command_branch_11:
   4e55c:	ba b7 be 00 00       	mov    edx,@obj3:scrpties_cpp_variable_31                           ; fixup: num: 12016, src obj: 1, src ofs: 0x4e55d, dst obj: 3, dst ofs: 0xbeb7
   4e561:	89 d8                	mov    eax,ebx
   4e563:	e8 c8 7e 02 00       	call   strcmp_
   4e568:	85 c0                	test   eax,eax
   4e56a:	75 0b                	jne    do_command_branch_12
   4e56c:	c7 01 35 00 00 00    	mov    DWORD PTR [ecx],0x35
   4e572:	e9 68 04 00 00       	jmp    do_command_branch_55
do_command_branch_12:
   4e577:	ba c4 be 00 00       	mov    edx,@obj3:scrpties_cpp_variable_32                           ; fixup: num: 12015, src obj: 1, src ofs: 0x4e578, dst obj: 3, dst ofs: 0xbec4
   4e57c:	89 d8                	mov    eax,ebx
   4e57e:	e8 ad 7e 02 00       	call   strcmp_
   4e583:	85 c0                	test   eax,eax
   4e585:	75 0b                	jne    do_command_branch_13
   4e587:	c7 01 09 00 00 00    	mov    DWORD PTR [ecx],0x9
   4e58d:	e9 4d 04 00 00       	jmp    do_command_branch_55
do_command_branch_13:
   4e592:	ba cb be 00 00       	mov    edx,@obj3:scrpties_cpp_variable_33                           ; fixup: num: 12014, src obj: 1, src ofs: 0x4e593, dst obj: 3, dst ofs: 0xbecb
   4e597:	89 d8                	mov    eax,ebx
   4e599:	e8 92 7e 02 00       	call   strcmp_
   4e59e:	85 c0                	test   eax,eax
   4e5a0:	75 0b                	jne    do_command_branch_14
   4e5a2:	c7 01 0a 00 00 00    	mov    DWORD PTR [ecx],0xa
   4e5a8:	e9 32 04 00 00       	jmp    do_command_branch_55
do_command_branch_14:
   4e5ad:	ba d4 be 00 00       	mov    edx,@obj3:scrpties_cpp_variable_34                           ; fixup: num: 12013, src obj: 1, src ofs: 0x4e5ae, dst obj: 3, dst ofs: 0xbed4
   4e5b2:	89 d8                	mov    eax,ebx
   4e5b4:	e8 77 7e 02 00       	call   strcmp_
   4e5b9:	85 c0                	test   eax,eax
   4e5bb:	75 0b                	jne    do_command_branch_15
   4e5bd:	c7 01 0b 00 00 00    	mov    DWORD PTR [ecx],0xb
   4e5c3:	e9 17 04 00 00       	jmp    do_command_branch_55
do_command_branch_15:
   4e5c8:	ba dc be 00 00       	mov    edx,@obj3:scrpties_cpp_variable_35                           ; fixup: num: 12012, src obj: 1, src ofs: 0x4e5c9, dst obj: 3, dst ofs: 0xbedc
   4e5cd:	89 d8                	mov    eax,ebx
   4e5cf:	e8 5c 7e 02 00       	call   strcmp_
   4e5d4:	85 c0                	test   eax,eax
   4e5d6:	75 0b                	jne    do_command_branch_16
   4e5d8:	c7 01 0c 00 00 00    	mov    DWORD PTR [ecx],0xc
   4e5de:	e9 fc 03 00 00       	jmp    do_command_branch_55
do_command_branch_16:
   4e5e3:	ba e5 be 00 00       	mov    edx,@obj3:scrpties_cpp_variable_36                           ; fixup: num: 12024, src obj: 1, src ofs: 0x4e5e4, dst obj: 3, dst ofs: 0xbee5
   4e5e8:	89 d8                	mov    eax,ebx
   4e5ea:	e8 41 7e 02 00       	call   strcmp_
   4e5ef:	85 c0                	test   eax,eax
   4e5f1:	75 0b                	jne    do_command_branch_17
   4e5f3:	c7 01 0d 00 00 00    	mov    DWORD PTR [ecx],0xd
   4e5f9:	e9 e1 03 00 00       	jmp    do_command_branch_55
do_command_branch_17:
   4e5fe:	ba ed be 00 00       	mov    edx,@obj3:scrpties_cpp_variable_37                           ; fixup: num: 12023, src obj: 1, src ofs: 0x4e5ff, dst obj: 3, dst ofs: 0xbeed
   4e603:	89 d8                	mov    eax,ebx
   4e605:	e8 26 7e 02 00       	call   strcmp_
   4e60a:	85 c0                	test   eax,eax
   4e60c:	75 0b                	jne    do_command_branch_18
   4e60e:	c7 01 24 00 00 00    	mov    DWORD PTR [ecx],0x24
   4e614:	e9 c6 03 00 00       	jmp    do_command_branch_55
do_command_branch_18:
   4e619:	ba f8 be 00 00       	mov    edx,@obj3:scrpties_cpp_variable_38                           ; fixup: num: 12022, src obj: 1, src ofs: 0x4e61a, dst obj: 3, dst ofs: 0xbef8
   4e61e:	89 d8                	mov    eax,ebx
   4e620:	e8 0b 7e 02 00       	call   strcmp_
   4e625:	85 c0                	test   eax,eax
   4e627:	75 0b                	jne    do_command_branch_19
   4e629:	c7 01 0e 00 00 00    	mov    DWORD PTR [ecx],0xe
   4e62f:	e9 ab 03 00 00       	jmp    do_command_branch_55
do_command_branch_19:
   4e634:	ba 02 bf 00 00       	mov    edx,@obj3:scrpties_cpp_variable_39                           ; fixup: num: 12021, src obj: 1, src ofs: 0x4e635, dst obj: 3, dst ofs: 0xbf02
   4e639:	89 d8                	mov    eax,ebx
   4e63b:	e8 f0 7d 02 00       	call   strcmp_
   4e640:	85 c0                	test   eax,eax
   4e642:	75 0b                	jne    do_command_branch_20
   4e644:	c7 01 0f 00 00 00    	mov    DWORD PTR [ecx],0xf
   4e64a:	e9 90 03 00 00       	jmp    do_command_branch_55
do_command_branch_20:
   4e64f:	ba 0a bf 00 00       	mov    edx,@obj3:scrpties_cpp_variable_40                           ; fixup: num: 12020, src obj: 1, src ofs: 0x4e650, dst obj: 3, dst ofs: 0xbf0a
   4e654:	89 d8                	mov    eax,ebx
   4e656:	e8 d5 7d 02 00       	call   strcmp_
   4e65b:	85 c0                	test   eax,eax
   4e65d:	75 0b                	jne    do_command_branch_21
   4e65f:	c7 01 11 00 00 00    	mov    DWORD PTR [ecx],0x11
   4e665:	e9 75 03 00 00       	jmp    do_command_branch_55
do_command_branch_21:
   4e66a:	ba 13 bf 00 00       	mov    edx,@obj3:scrpties_cpp_variable_41                           ; fixup: num: 12019, src obj: 1, src ofs: 0x4e66b, dst obj: 3, dst ofs: 0xbf13
   4e66f:	89 d8                	mov    eax,ebx
   4e671:	e8 ba 7d 02 00       	call   strcmp_
   4e676:	85 c0                	test   eax,eax
   4e678:	75 0b                	jne    do_command_branch_22
   4e67a:	c7 01 12 00 00 00    	mov    DWORD PTR [ecx],0x12
   4e680:	e9 5a 03 00 00       	jmp    do_command_branch_55
do_command_branch_22:
   4e685:	ba 1c bf 00 00       	mov    edx,@obj3:scrpties_cpp_variable_42                           ; fixup: num: 12030, src obj: 1, src ofs: 0x4e686, dst obj: 3, dst ofs: 0xbf1c
   4e68a:	89 d8                	mov    eax,ebx
   4e68c:	e8 9f 7d 02 00       	call   strcmp_
   4e691:	85 c0                	test   eax,eax
   4e693:	75 0b                	jne    do_command_branch_23
   4e695:	c7 01 13 00 00 00    	mov    DWORD PTR [ecx],0x13
   4e69b:	e9 3f 03 00 00       	jmp    do_command_branch_55
do_command_branch_23:
   4e6a0:	ba 27 bf 00 00       	mov    edx,@obj3:scrpties_cpp_variable_43                           ; fixup: num: 12029, src obj: 1, src ofs: 0x4e6a1, dst obj: 3, dst ofs: 0xbf27
   4e6a5:	89 d8                	mov    eax,ebx
   4e6a7:	e8 84 7d 02 00       	call   strcmp_
   4e6ac:	85 c0                	test   eax,eax
   4e6ae:	75 0b                	jne    do_command_branch_24
   4e6b0:	c7 01 15 00 00 00    	mov    DWORD PTR [ecx],0x15
   4e6b6:	e9 24 03 00 00       	jmp    do_command_branch_55
do_command_branch_24:
   4e6bb:	ba 2f bf 00 00       	mov    edx,@obj3:scrpties_cpp_variable_44                           ; fixup: num: 12028, src obj: 1, src ofs: 0x4e6bc, dst obj: 3, dst ofs: 0xbf2f
   4e6c0:	89 d8                	mov    eax,ebx
   4e6c2:	e8 69 7d 02 00       	call   strcmp_
   4e6c7:	85 c0                	test   eax,eax
   4e6c9:	75 0b                	jne    do_command_branch_25
   4e6cb:	c7 01 14 00 00 00    	mov    DWORD PTR [ecx],0x14
   4e6d1:	e9 09 03 00 00       	jmp    do_command_branch_55
do_command_branch_25:
   4e6d6:	ba 3b bf 00 00       	mov    edx,@obj3:scrpties_cpp_variable_45                           ; fixup: num: 12027, src obj: 1, src ofs: 0x4e6d7, dst obj: 3, dst ofs: 0xbf3b
   4e6db:	89 d8                	mov    eax,ebx
   4e6dd:	e8 4e 7d 02 00       	call   strcmp_
   4e6e2:	85 c0                	test   eax,eax
   4e6e4:	75 0b                	jne    do_command_branch_26
   4e6e6:	c7 01 16 00 00 00    	mov    DWORD PTR [ecx],0x16
   4e6ec:	e9 ee 02 00 00       	jmp    do_command_branch_55
do_command_branch_26:
   4e6f1:	ba 46 bf 00 00       	mov    edx,@obj3:scrpties_cpp_variable_46                           ; fixup: num: 12026, src obj: 1, src ofs: 0x4e6f2, dst obj: 3, dst ofs: 0xbf46
   4e6f6:	89 d8                	mov    eax,ebx
   4e6f8:	e8 33 7d 02 00       	call   strcmp_
   4e6fd:	85 c0                	test   eax,eax
   4e6ff:	75 0b                	jne    do_command_branch_27
   4e701:	c7 01 17 00 00 00    	mov    DWORD PTR [ecx],0x17
   4e707:	e9 d3 02 00 00       	jmp    do_command_branch_55
do_command_branch_27:
   4e70c:	ba 50 bf 00 00       	mov    edx,@obj3:scrpties_cpp_variable_47                           ; fixup: num: 12025, src obj: 1, src ofs: 0x4e70d, dst obj: 3, dst ofs: 0xbf50
   4e711:	89 d8                	mov    eax,ebx
   4e713:	e8 18 7d 02 00       	call   strcmp_
   4e718:	85 c0                	test   eax,eax
   4e71a:	75 0b                	jne    do_command_branch_28
   4e71c:	c7 01 18 00 00 00    	mov    DWORD PTR [ecx],0x18
   4e722:	e9 b8 02 00 00       	jmp    do_command_branch_55
do_command_branch_28:
   4e727:	ba 5a bf 00 00       	mov    edx,@obj3:scrpties_cpp_variable_48                           ; fixup: num: 11904, src obj: 1, src ofs: 0x4e728, dst obj: 3, dst ofs: 0xbf5a
   4e72c:	89 d8                	mov    eax,ebx
   4e72e:	e8 fd 7c 02 00       	call   strcmp_
   4e733:	85 c0                	test   eax,eax
   4e735:	75 0b                	jne    do_command_branch_29
   4e737:	c7 01 19 00 00 00    	mov    DWORD PTR [ecx],0x19
   4e73d:	e9 9d 02 00 00       	jmp    do_command_branch_55
do_command_branch_29:
   4e742:	ba 66 bf 00 00       	mov    edx,@obj3:scrpties_cpp_variable_49                           ; fixup: num: 11903, src obj: 1, src ofs: 0x4e743, dst obj: 3, dst ofs: 0xbf66
   4e747:	89 d8                	mov    eax,ebx
   4e749:	e8 e2 7c 02 00       	call   strcmp_
   4e74e:	85 c0                	test   eax,eax
   4e750:	75 0b                	jne    do_command_branch_30
   4e752:	c7 01 1a 00 00 00    	mov    DWORD PTR [ecx],0x1a
   4e758:	e9 82 02 00 00       	jmp    do_command_branch_55
do_command_branch_30:
   4e75d:	ba 73 bf 00 00       	mov    edx,@obj3:scrpties_cpp_variable_50                           ; fixup: num: 11902, src obj: 1, src ofs: 0x4e75e, dst obj: 3, dst ofs: 0xbf73
   4e762:	89 d8                	mov    eax,ebx
   4e764:	e8 c7 7c 02 00       	call   strcmp_
   4e769:	85 c0                	test   eax,eax
   4e76b:	75 0b                	jne    do_command_branch_31
   4e76d:	c7 01 1b 00 00 00    	mov    DWORD PTR [ecx],0x1b
   4e773:	e9 67 02 00 00       	jmp    do_command_branch_55
do_command_branch_31:
   4e778:	ba 7d bf 00 00       	mov    edx,@obj3:scrpties_cpp_variable_51                           ; fixup: num: 11901, src obj: 1, src ofs: 0x4e779, dst obj: 3, dst ofs: 0xbf7d
   4e77d:	89 d8                	mov    eax,ebx
   4e77f:	e8 ac 7c 02 00       	call   strcmp_
   4e784:	85 c0                	test   eax,eax
   4e786:	75 0b                	jne    do_command_branch_32
   4e788:	c7 01 30 00 00 00    	mov    DWORD PTR [ecx],0x30
   4e78e:	e9 4c 02 00 00       	jmp    do_command_branch_55
do_command_branch_32:
   4e793:	ba 86 bf 00 00       	mov    edx,@obj3:scrpties_cpp_variable_52                           ; fixup: num: 11900, src obj: 1, src ofs: 0x4e794, dst obj: 3, dst ofs: 0xbf86
   4e798:	89 d8                	mov    eax,ebx
   4e79a:	e8 91 7c 02 00       	call   strcmp_
   4e79f:	85 c0                	test   eax,eax
   4e7a1:	75 0b                	jne    do_command_branch_33
   4e7a3:	c7 01 31 00 00 00    	mov    DWORD PTR [ecx],0x31
   4e7a9:	e9 31 02 00 00       	jmp    do_command_branch_55
do_command_branch_33:
   4e7ae:	ba 8f bf 00 00       	mov    edx,@obj3:scrpties_cpp_variable_53                           ; fixup: num: 11899, src obj: 1, src ofs: 0x4e7af, dst obj: 3, dst ofs: 0xbf8f
   4e7b3:	89 d8                	mov    eax,ebx
   4e7b5:	e8 76 7c 02 00       	call   strcmp_
   4e7ba:	85 c0                	test   eax,eax
   4e7bc:	75 0b                	jne    do_command_branch_34
   4e7be:	c7 01 32 00 00 00    	mov    DWORD PTR [ecx],0x32
   4e7c4:	e9 16 02 00 00       	jmp    do_command_branch_55
do_command_branch_34:
   4e7c9:	ba 9a bf 00 00       	mov    edx,@obj3:scrpties_cpp_variable_54                           ; fixup: num: 11898, src obj: 1, src ofs: 0x4e7ca, dst obj: 3, dst ofs: 0xbf9a
   4e7ce:	89 d8                	mov    eax,ebx
   4e7d0:	e8 5b 7c 02 00       	call   strcmp_
   4e7d5:	85 c0                	test   eax,eax
   4e7d7:	75 0b                	jne    do_command_branch_35
   4e7d9:	c7 01 1c 00 00 00    	mov    DWORD PTR [ecx],0x1c
   4e7df:	e9 fb 01 00 00       	jmp    do_command_branch_55
do_command_branch_35:
   4e7e4:	ba a6 bf 00 00       	mov    edx,@obj3:scrpties_cpp_variable_55                           ; fixup: num: 11910, src obj: 1, src ofs: 0x4e7e5, dst obj: 3, dst ofs: 0xbfa6
   4e7e9:	89 d8                	mov    eax,ebx
   4e7eb:	e8 40 7c 02 00       	call   strcmp_
   4e7f0:	85 c0                	test   eax,eax
   4e7f2:	75 0b                	jne    do_command_branch_36
   4e7f4:	c7 01 1d 00 00 00    	mov    DWORD PTR [ecx],0x1d
   4e7fa:	e9 e0 01 00 00       	jmp    do_command_branch_55
do_command_branch_36:
   4e7ff:	ba ad bf 00 00       	mov    edx,@obj3:scrpties_cpp_variable_56                           ; fixup: num: 11909, src obj: 1, src ofs: 0x4e800, dst obj: 3, dst ofs: 0xbfad
   4e804:	89 d8                	mov    eax,ebx
   4e806:	e8 25 7c 02 00       	call   strcmp_
   4e80b:	85 c0                	test   eax,eax
   4e80d:	75 0b                	jne    do_command_branch_37
   4e80f:	c7 01 1e 00 00 00    	mov    DWORD PTR [ecx],0x1e
   4e815:	e9 c5 01 00 00       	jmp    do_command_branch_55
do_command_branch_37:
   4e81a:	ba b8 bf 00 00       	mov    edx,@obj3:scrpties_cpp_variable_57                           ; fixup: num: 11908, src obj: 1, src ofs: 0x4e81b, dst obj: 3, dst ofs: 0xbfb8
   4e81f:	89 d8                	mov    eax,ebx
   4e821:	e8 0a 7c 02 00       	call   strcmp_
   4e826:	85 c0                	test   eax,eax
   4e828:	75 0b                	jne    do_command_branch_38
   4e82a:	c7 01 1f 00 00 00    	mov    DWORD PTR [ecx],0x1f
   4e830:	e9 aa 01 00 00       	jmp    do_command_branch_55
do_command_branch_38:
   4e835:	ba c2 bf 00 00       	mov    edx,@obj3:scrpties_cpp_variable_58                           ; fixup: num: 11907, src obj: 1, src ofs: 0x4e836, dst obj: 3, dst ofs: 0xbfc2
   4e83a:	89 d8                	mov    eax,ebx
   4e83c:	e8 ef 7b 02 00       	call   strcmp_
   4e841:	85 c0                	test   eax,eax
   4e843:	75 0b                	jne    do_command_branch_39
   4e845:	c7 01 33 00 00 00    	mov    DWORD PTR [ecx],0x33
   4e84b:	e9 8f 01 00 00       	jmp    do_command_branch_55
do_command_branch_39:
   4e850:	ba cc bf 00 00       	mov    edx,@obj3:scrpties_cpp_variable_59                           ; fixup: num: 11906, src obj: 1, src ofs: 0x4e851, dst obj: 3, dst ofs: 0xbfcc
   4e855:	89 d8                	mov    eax,ebx
   4e857:	e8 d4 7b 02 00       	call   strcmp_
   4e85c:	85 c0                	test   eax,eax
   4e85e:	75 0b                	jne    do_command_branch_40
   4e860:	c7 01 20 00 00 00    	mov    DWORD PTR [ecx],0x20
   4e866:	e9 74 01 00 00       	jmp    do_command_branch_55
do_command_branch_40:
   4e86b:	ba d9 bf 00 00       	mov    edx,@obj3:scrpties_cpp_variable_60                           ; fixup: num: 11905, src obj: 1, src ofs: 0x4e86c, dst obj: 3, dst ofs: 0xbfd9
   4e870:	89 d8                	mov    eax,ebx
   4e872:	e8 b9 7b 02 00       	call   strcmp_
   4e877:	85 c0                	test   eax,eax
   4e879:	75 0b                	jne    do_command_branch_41
   4e87b:	c7 01 21 00 00 00    	mov    DWORD PTR [ecx],0x21
   4e881:	e9 59 01 00 00       	jmp    do_command_branch_55
do_command_branch_41:
   4e886:	ba ea bf 00 00       	mov    edx,@obj3:scrpties_cpp_variable_61                           ; fixup: num: 11917, src obj: 1, src ofs: 0x4e887, dst obj: 3, dst ofs: 0xbfea
   4e88b:	89 d8                	mov    eax,ebx
   4e88d:	e8 9e 7b 02 00       	call   strcmp_
   4e892:	85 c0                	test   eax,eax
   4e894:	75 0b                	jne    do_command_branch_42
   4e896:	c7 01 22 00 00 00    	mov    DWORD PTR [ecx],0x22
   4e89c:	e9 3e 01 00 00       	jmp    do_command_branch_55
do_command_branch_42:
   4e8a1:	ba fa bf 00 00       	mov    edx,@obj3:scrpties_cpp_variable_62                           ; fixup: num: 11916, src obj: 1, src ofs: 0x4e8a2, dst obj: 3, dst ofs: 0xbffa
   4e8a6:	89 d8                	mov    eax,ebx
   4e8a8:	e8 83 7b 02 00       	call   strcmp_
   4e8ad:	85 c0                	test   eax,eax
   4e8af:	75 0b                	jne    do_command_branch_43
   4e8b1:	c7 01 23 00 00 00    	mov    DWORD PTR [ecx],0x23
   4e8b7:	e9 23 01 00 00       	jmp    do_command_branch_55
do_command_branch_43:
   4e8bc:	ba 04 c0 00 00       	mov    edx,@obj3:scrpties_cpp_variable_63                           ; fixup: num: 11915, src obj: 1, src ofs: 0x4e8bd, dst obj: 3, dst ofs: 0xc004
   4e8c1:	89 d8                	mov    eax,ebx
   4e8c3:	e8 68 7b 02 00       	call   strcmp_
   4e8c8:	85 c0                	test   eax,eax
   4e8ca:	75 0b                	jne    do_command_branch_44
   4e8cc:	c7 01 25 00 00 00    	mov    DWORD PTR [ecx],0x25
   4e8d2:	e9 08 01 00 00       	jmp    do_command_branch_55
do_command_branch_44:
   4e8d7:	ba 0d c0 00 00       	mov    edx,@obj3:scrpties_cpp_variable_64                           ; fixup: num: 11914, src obj: 1, src ofs: 0x4e8d8, dst obj: 3, dst ofs: 0xc00d
   4e8dc:	89 d8                	mov    eax,ebx
   4e8de:	e8 4d 7b 02 00       	call   strcmp_
   4e8e3:	85 c0                	test   eax,eax
   4e8e5:	75 0b                	jne    do_command_branch_45
   4e8e7:	c7 01 26 00 00 00    	mov    DWORD PTR [ecx],0x26
   4e8ed:	e9 ed 00 00 00       	jmp    do_command_branch_55
do_command_branch_45:
   4e8f2:	ba 17 c0 00 00       	mov    edx,@obj3:scrpties_cpp_variable_65                           ; fixup: num: 11913, src obj: 1, src ofs: 0x4e8f3, dst obj: 3, dst ofs: 0xc017
   4e8f7:	89 d8                	mov    eax,ebx
   4e8f9:	e8 32 7b 02 00       	call   strcmp_
   4e8fe:	85 c0                	test   eax,eax
   4e900:	75 0b                	jne    do_command_branch_46
   4e902:	c7 01 27 00 00 00    	mov    DWORD PTR [ecx],0x27
   4e908:	e9 d2 00 00 00       	jmp    do_command_branch_55
do_command_branch_46:
   4e90d:	ba 2a c0 00 00       	mov    edx,@obj3:scrpties_cpp_variable_66                           ; fixup: num: 11912, src obj: 1, src ofs: 0x4e90e, dst obj: 3, dst ofs: 0xc02a
   4e912:	89 d8                	mov    eax,ebx
   4e914:	e8 17 7b 02 00       	call   strcmp_
   4e919:	85 c0                	test   eax,eax
   4e91b:	75 0b                	jne    do_command_branch_47
   4e91d:	c7 01 2c 00 00 00    	mov    DWORD PTR [ecx],0x2c
   4e923:	e9 b7 00 00 00       	jmp    do_command_branch_55
do_command_branch_47:
   4e928:	ba 3a c0 00 00       	mov    edx,@obj3:scrpties_cpp_variable_67                           ; fixup: num: 11911, src obj: 1, src ofs: 0x4e929, dst obj: 3, dst ofs: 0xc03a
   4e92d:	89 d8                	mov    eax,ebx
   4e92f:	e8 fc 7a 02 00       	call   strcmp_
   4e934:	85 c0                	test   eax,eax
   4e936:	75 0b                	jne    do_command_branch_48
   4e938:	c7 01 2d 00 00 00    	mov    DWORD PTR [ecx],0x2d
   4e93e:	e9 9c 00 00 00       	jmp    do_command_branch_55
do_command_branch_48:
   4e943:	ba 49 c0 00 00       	mov    edx,@obj3:scrpties_cpp_variable_68                           ; fixup: num: 11923, src obj: 1, src ofs: 0x4e944, dst obj: 3, dst ofs: 0xc049
   4e948:	89 d8                	mov    eax,ebx
   4e94a:	e8 e1 7a 02 00       	call   strcmp_
   4e94f:	85 c0                	test   eax,eax
   4e951:	75 0b                	jne    do_command_branch_49
   4e953:	c7 01 2e 00 00 00    	mov    DWORD PTR [ecx],0x2e
   4e959:	e9 81 00 00 00       	jmp    do_command_branch_55
do_command_branch_49:
   4e95e:	ba 53 c0 00 00       	mov    edx,@obj3:scrpties_cpp_variable_69                           ; fixup: num: 11922, src obj: 1, src ofs: 0x4e95f, dst obj: 3, dst ofs: 0xc053
   4e963:	89 d8                	mov    eax,ebx
   4e965:	e8 c6 7a 02 00       	call   strcmp_
   4e96a:	85 c0                	test   eax,eax
   4e96c:	75 0b                	jne    do_command_branch_50
   4e96e:	c7 01 2f 00 00 00    	mov    DWORD PTR [ecx],0x2f
   4e974:	e9 66 00 00 00       	jmp    do_command_branch_55
do_command_branch_50:
   4e979:	ba 5f c0 00 00       	mov    edx,@obj3:scrpties_cpp_variable_70                           ; fixup: num: 11921, src obj: 1, src ofs: 0x4e97a, dst obj: 3, dst ofs: 0xc05f
   4e97e:	89 d8                	mov    eax,ebx
   4e980:	e8 ab 7a 02 00       	call   strcmp_
   4e985:	85 c0                	test   eax,eax
   4e987:	75 08                	jne    do_command_branch_51
   4e989:	c7 01 28 00 00 00    	mov    DWORD PTR [ecx],0x28
   4e98f:	eb 4e                	jmp    do_command_branch_55
do_command_branch_51:
   4e991:	ba 6b c0 00 00       	mov    edx,@obj3:scrpties_cpp_variable_71                           ; fixup: num: 11920, src obj: 1, src ofs: 0x4e992, dst obj: 3, dst ofs: 0xc06b
   4e996:	89 d8                	mov    eax,ebx
   4e998:	e8 93 7a 02 00       	call   strcmp_
   4e99d:	85 c0                	test   eax,eax
   4e99f:	75 08                	jne    do_command_branch_52
   4e9a1:	c7 01 29 00 00 00    	mov    DWORD PTR [ecx],0x29
   4e9a7:	eb 36                	jmp    do_command_branch_55
do_command_branch_52:
   4e9a9:	ba 76 c0 00 00       	mov    edx,@obj3:scrpties_cpp_variable_72                           ; fixup: num: 11919, src obj: 1, src ofs: 0x4e9aa, dst obj: 3, dst ofs: 0xc076
   4e9ae:	89 d8                	mov    eax,ebx
   4e9b0:	e8 7b 7a 02 00       	call   strcmp_
   4e9b5:	85 c0                	test   eax,eax
   4e9b7:	75 08                	jne    do_command_branch_53
   4e9b9:	c7 01 2a 00 00 00    	mov    DWORD PTR [ecx],0x2a
   4e9bf:	eb 1e                	jmp    do_command_branch_55
do_command_branch_53:
   4e9c1:	ba 84 c0 00 00       	mov    edx,@obj3:scrpties_cpp_variable_73                           ; fixup: num: 11918, src obj: 1, src ofs: 0x4e9c2, dst obj: 3, dst ofs: 0xc084
   4e9c6:	89 d8                	mov    eax,ebx
   4e9c8:	e8 63 7a 02 00       	call   strcmp_
   4e9cd:	85 c0                	test   eax,eax
   4e9cf:	75 08                	jne    do_command_branch_54
   4e9d1:	c7 01 2b 00 00 00    	mov    DWORD PTR [ecx],0x2b
   4e9d7:	eb 06                	jmp    do_command_branch_55
do_command_branch_54:
   4e9d9:	c7 01 ff ff ff ff    	mov    DWORD PTR [ecx],0xffffffff
do_command_branch_55:
   4e9df:	e8 5c 88 fe ff       	call   return_word
   4e9e4:	89 41 08             	mov    DWORD PTR [ecx+0x8],eax
   4e9e7:	e8 54 88 fe ff       	call   return_word
   4e9ec:	89 41 0c             	mov    DWORD PTR [ecx+0xc],eax
   4e9ef:	e8 4c 88 fe ff       	call   return_word
   4e9f4:	89 41 10             	mov    DWORD PTR [ecx+0x10],eax
   4e9f7:	e8 44 88 fe ff       	call   return_word
   4e9fc:	8b 11                	mov    edx,DWORD PTR [ecx]
   4e9fe:	89 41 14             	mov    DWORD PTR [ecx+0x14],eax
   4ea01:	83 fa 1c             	cmp    edx,0x1c
   4ea04:	75 2e                	jne    do_command_branch_56
   4ea06:	85 c0                	test   eax,eax
   4ea08:	74 2a                	je     do_command_branch_56
   4ea0a:	8b 35 38 36 02 00    	mov    esi,DWORD PTR ds:@obj3:script_line_number                    ; fixup: num: 11934, src obj: 1, src ofs: 0x4ea0c, dst obj: 3, dst ofs: 0x23638
   4ea10:	56                   	push   esi
   4ea11:	68 95 c0 00 00       	push   @obj3:scrpties_cpp_variable_74                               ; fixup: num: 11933, src obj: 1, src ofs: 0x4ea12, dst obj: 3, dst ofs: 0xc095
   4ea16:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 11932, src obj: 1, src ofs: 0x4ea17, dst obj: 3, dst ofs: 0x237fc
   4ea1b:	bb fc 37 02 00       	mov    ebx,@obj3:log_buffer                                         ; fixup: num: 11931, src obj: 1, src ofs: 0x4ea1c, dst obj: 3, dst ofs: 0x237fc
   4ea20:	e8 bc 21 02 00       	call   sprintf_
   4ea25:	83 c4 0c             	add    esp,0xc
   4ea28:	ba 47 01 00 00       	mov    edx,0x147
   4ea2d:	31 c0                	xor    eax,eax
   4ea2f:	e8 fc 95 fe ff       	call   _error_report
do_command_branch_56:
   4ea34:	c6 41 18 00          	mov    BYTE PTR [ecx+0x18],0x0
   4ea38:	8b 39                	mov    edi,DWORD PTR [ecx]
   4ea3a:	c7 41 1c 00 00 00 00 	mov    DWORD PTR [ecx+0x1c],0x0
   4ea41:	83 ff ff             	cmp    edi,0xffffffff
   4ea44:	75 2a                	jne    do_command_branch_57
   4ea46:	8b 2d 38 36 02 00    	mov    ebp,DWORD PTR ds:@obj3:script_line_number                    ; fixup: num: 11930, src obj: 1, src ofs: 0x4ea48, dst obj: 3, dst ofs: 0x23638
   4ea4c:	55                   	push   ebp
   4ea4d:	68 cc c0 00 00       	push   @obj3:scrpties_cpp_variable_75                               ; fixup: num: 11929, src obj: 1, src ofs: 0x4ea4e, dst obj: 3, dst ofs: 0xc0cc
   4ea52:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 11928, src obj: 1, src ofs: 0x4ea53, dst obj: 3, dst ofs: 0x237fc
   4ea57:	bb fc 37 02 00       	mov    ebx,@obj3:log_buffer                                         ; fixup: num: 11927, src obj: 1, src ofs: 0x4ea58, dst obj: 3, dst ofs: 0x237fc
   4ea5c:	e8 80 21 02 00       	call   sprintf_
   4ea61:	83 c4 0c             	add    esp,0xc
   4ea64:	ba 4d 01 00 00       	mov    edx,0x14d
   4ea69:	31 c0                	xor    eax,eax
   4ea6b:	e8 c0 95 fe ff       	call   _error_report
do_command_branch_57:
   4ea70:	83 79 04 00          	cmp    DWORD PTR [ecx+0x4],0x0
   4ea74:	75 2a                	jne    do_command_branch_58
   4ea76:	8b 15 38 36 02 00    	mov    edx,DWORD PTR ds:@obj3:script_line_number                    ; fixup: num: 11926, src obj: 1, src ofs: 0x4ea78, dst obj: 3, dst ofs: 0x23638
   4ea7c:	52                   	push   edx
   4ea7d:	68 fc c0 00 00       	push   @obj3:scrpties_cpp_variable_76                               ; fixup: num: 11925, src obj: 1, src ofs: 0x4ea7e, dst obj: 3, dst ofs: 0xc0fc
   4ea82:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 11924, src obj: 1, src ofs: 0x4ea83, dst obj: 3, dst ofs: 0x237fc
   4ea87:	bb fc 37 02 00       	mov    ebx,@obj3:log_buffer                                         ; fixup: num: 11941, src obj: 1, src ofs: 0x4ea88, dst obj: 3, dst ofs: 0x237fc
   4ea8c:	e8 50 21 02 00       	call   sprintf_
   4ea91:	83 c4 0c             	add    esp,0xc
   4ea94:	ba 50 01 00 00       	mov    edx,0x150
   4ea99:	31 c0                	xor    eax,eax
   4ea9b:	e8 90 95 fe ff       	call   _error_report
do_command_branch_58:
   4eaa0:	80 3d 48 7e 01 00 00 	cmp    BYTE PTR ds:@obj3:script_check,0x0                           ; fixup: num: 11940, src obj: 1, src ofs: 0x4eaa2, dst obj: 3, dst ofs: 0x17e48
   4eaa7:	75 66                	jne    do_command_branch_61
   4eaa9:	e9 8f 00 00 00       	jmp    do_command_branch_65
do_command_branch_59:
   4eaae:	8b 59 08             	mov    ebx,DWORD PTR [ecx+0x8]
   4eab1:	85 db                	test   ebx,ebx
   4eab3:	0f 84 84 00 00 00    	je     do_command_branch_65
   4eab9:	89 d8                	mov    eax,ebx
   4eabb:	89 df                	mov    edi,ebx
   4eabd:	e8 be e1 fb ff       	call   XFILE_size
   4eac2:	83 f8 ff             	cmp    eax,0xffffffff
   4eac5:	0f 85 72 00 00 00    	jne    do_command_branch_65
   4eacb:	b2 01                	mov    dl,0x1
   4eacd:	b8 d1 bc 00 00       	mov    eax,@obj3:scrpties_cpp_variable_4                            ; fixup: num: 11939, src obj: 1, src ofs: 0x4eace, dst obj: 3, dst ofs: 0xbcd1
   4ead2:	88 15 14 5b 02 00    	mov    BYTE PTR ds:@obj3:script_errors,dl                           ; fixup: num: 11938, src obj: 1, src ofs: 0x4ead4, dst obj: 3, dst ofs: 0x25b14
   4ead8:	ba cd bc 00 00       	mov    edx,@obj3:scrpties_cpp_variable_3                            ; fixup: num: 11937, src obj: 1, src ofs: 0x4ead9, dst obj: 3, dst ofs: 0xbccd
   4eadd:	e8 c6 22 02 00       	call   fopen_
   4eae2:	89 c6                	mov    esi,eax
   4eae4:	85 c0                	test   eax,eax
   4eae6:	75 0f                	jne    do_command_branch_60
   4eae8:	bb dc bc 00 00       	mov    ebx,@obj3:scrpties_cpp_variable_5                            ; fixup: num: 11936, src obj: 1, src ofs: 0x4eae9, dst obj: 3, dst ofs: 0xbcdc
   4eaed:	ba f9 0b 00 00       	mov    edx,0xbf9
   4eaf2:	e8 39 95 fe ff       	call   _error_report
do_command_branch_60:
   4eaf7:	57                   	push   edi
   4eaf8:	68 f0 bc 00 00       	push   @obj3:scrpties_cpp_variable_6                                ; fixup: num: 11935, src obj: 1, src ofs: 0x4eaf9, dst obj: 3, dst ofs: 0xbcf0
   4eafd:	56                   	push   esi
   4eafe:	e8 de 80 02 00       	call   fprintf_
   4eb03:	83 c4 0c             	add    esp,0xc
   4eb06:	89 f0                	mov    eax,esi
   4eb08:	e8 31 23 02 00       	call   fclose_
   4eb0d:	eb 2e                	jmp    do_command_branch_65
do_command_branch_61:
   4eb0f:	8b 19                	mov    ebx,DWORD PTR [ecx]
   4eb11:	83 fb 1b             	cmp    ebx,0x1b
   4eb14:	72 13                	jb     do_command_branch_63
   4eb16:	76 96                	jbe    do_command_branch_59
   4eb18:	83 fb 2b             	cmp    ebx,0x2b
   4eb1b:	72 07                	jb     do_command_branch_62
   4eb1d:	76 8f                	jbe    do_command_branch_59
   4eb1f:	83 fb 30             	cmp    ebx,0x30
   4eb22:	eb 13                	jmp    do_command_branch_64
do_command_branch_62:
   4eb24:	83 fb 1c             	cmp    ebx,0x1c
   4eb27:	eb 0e                	jmp    do_command_branch_64
do_command_branch_63:
   4eb29:	83 fb 09             	cmp    ebx,0x9
   4eb2c:	72 0f                	jb     do_command_branch_65
   4eb2e:	0f 86 7a ff ff ff    	jbe    do_command_branch_59
   4eb34:	83 fb 19             	cmp    ebx,0x19
do_command_branch_64:
   4eb37:	0f 84 71 ff ff ff    	je     do_command_branch_59
do_command_branch_65:
   4eb3d:	8b 35 94 5a 02 00    	mov    esi,DWORD PTR ds:@obj3:command_list                          ; fixup: num: 11948, src obj: 1, src ofs: 0x4eb3f, dst obj: 3, dst ofs: 0x25a94
   4eb43:	85 f6                	test   esi,esi
   4eb45:	75 08                	jne    do_command_branch_66
   4eb47:	89 0d 94 5a 02 00    	mov    DWORD PTR ds:@obj3:command_list,ecx                          ; fixup: num: 11947, src obj: 1, src ofs: 0x4eb49, dst obj: 3, dst ofs: 0x25a94
   4eb4d:	eb 15                	jmp    do_command_branch_69
do_command_branch_66:
   4eb4f:	8b 7e 1c             	mov    edi,DWORD PTR [esi+0x1c]
   4eb52:	89 f3                	mov    ebx,esi
   4eb54:	85 ff                	test   edi,edi
   4eb56:	74 09                	je     do_command_branch_68
do_command_branch_67:
   4eb58:	8b 5b 1c             	mov    ebx,DWORD PTR [ebx+0x1c]
   4eb5b:	83 7b 1c 00          	cmp    DWORD PTR [ebx+0x1c],0x0
   4eb5f:	75 f7                	jne    do_command_branch_67
do_command_branch_68:
   4eb61:	89 4b 1c             	mov    DWORD PTR [ebx+0x1c],ecx
do_command_branch_69:
   4eb64:	ff 05 dc 5a 02 00    	inc    DWORD PTR ds:@obj3:command_ctr                               ; fixup: num: 11946, src obj: 1, src ofs: 0x4eb66, dst obj: 3, dst ofs: 0x25adc
   4eb6a:	5d                   	pop    ebp
   4eb6b:	5f                   	pop    edi
   4eb6c:	5e                   	pop    esi
   4eb6d:	5a                   	pop    edx
   4eb6e:	59                   	pop    ecx
   4eb6f:	5b                   	pop    ebx
   4eb70:	c3                   	ret    
   4eb71:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   4eb77:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
   4eb7d:	8d 40 00             	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'do_entrance'                        -
;-------------------------------------------------
do_entrance:
   4eb80:	53                   	push   ebx
   4eb81:	51                   	push   ecx
   4eb82:	52                   	push   edx
   4eb83:	56                   	push   esi
   4eb84:	b8 1c 00 00 00       	mov    eax,0x1c
   4eb89:	e8 05 29 02 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   4eb8e:	89 c1                	mov    ecx,eax
   4eb90:	85 c0                	test   eax,eax
   4eb92:	75 0f                	jne    do_entrance_branch_1
   4eb94:	bb 2e c1 00 00       	mov    ebx,@obj3:scrpties_cpp_variable_77                           ; fixup: num: 11945, src obj: 1, src ofs: 0x4eb95, dst obj: 3, dst ofs: 0xc12e
   4eb99:	ba 87 01 00 00       	mov    edx,0x187
   4eb9e:	e8 8d 94 fe ff       	call   _error_report
do_entrance_branch_1:
   4eba3:	bb 1c 00 00 00       	mov    ebx,0x1c
   4eba8:	89 c8                	mov    eax,ecx
   4ebaa:	31 d2                	xor    edx,edx
   4ebac:	e8 1f 28 02 00       	call   memset_
   4ebb1:	e8 aa dd fd ff       	call   popsp
   4ebb6:	89 41 08             	mov    DWORD PTR [ecx+0x8],eax
   4ebb9:	e8 a2 dd fd ff       	call   popsp
   4ebbe:	89 41 04             	mov    DWORD PTR [ecx+0x4],eax
   4ebc1:	e8 9a dd fd ff       	call   popsp
   4ebc6:	89 01                	mov    DWORD PTR [ecx],eax
   4ebc8:	e8 73 86 fe ff       	call   return_word
   4ebcd:	89 c6                	mov    esi,eax
   4ebcf:	85 c0                	test   eax,eax
   4ebd1:	75 2a                	jne    do_entrance_branch_2
   4ebd3:	8b 15 38 36 02 00    	mov    edx,DWORD PTR ds:@obj3:script_line_number                    ; fixup: num: 11944, src obj: 1, src ofs: 0x4ebd5, dst obj: 3, dst ofs: 0x23638
   4ebd9:	52                   	push   edx
   4ebda:	68 46 c1 00 00       	push   @obj3:scrpties_cpp_variable_78                               ; fixup: num: 11943, src obj: 1, src ofs: 0x4ebdb, dst obj: 3, dst ofs: 0xc146
   4ebdf:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 11942, src obj: 1, src ofs: 0x4ebe0, dst obj: 3, dst ofs: 0x237fc
   4ebe4:	bb fc 37 02 00       	mov    ebx,@obj3:log_buffer                                         ; fixup: num: 11955, src obj: 1, src ofs: 0x4ebe5, dst obj: 3, dst ofs: 0x237fc
   4ebe9:	e8 f3 1f 02 00       	call   sprintf_
   4ebee:	83 c4 0c             	add    esp,0xc
   4ebf1:	ba 91 01 00 00       	mov    edx,0x191
   4ebf6:	31 c0                	xor    eax,eax
   4ebf8:	e8 33 94 fe ff       	call   _error_report
do_entrance_branch_2:
   4ebfd:	ba 6a c1 00 00       	mov    edx,@obj3:scrpties_cpp_variable_79                           ; fixup: num: 11954, src obj: 1, src ofs: 0x4ebfe, dst obj: 3, dst ofs: 0xc16a
   4ec02:	89 f0                	mov    eax,esi
   4ec04:	e8 27 78 02 00       	call   strcmp_
   4ec09:	85 c0                	test   eax,eax
   4ec0b:	75 09                	jne    do_entrance_branch_3
   4ec0d:	c7 41 0c 02 00 00 00 	mov    DWORD PTR [ecx+0xc],0x2
   4ec14:	eb 45                	jmp    do_entrance_branch_6
do_entrance_branch_3:
   4ec16:	ba 70 c1 00 00       	mov    edx,@obj3:scrpties_cpp_variable_80                           ; fixup: num: 11953, src obj: 1, src ofs: 0x4ec17, dst obj: 3, dst ofs: 0xc170
   4ec1b:	89 f0                	mov    eax,esi
   4ec1d:	e8 0e 78 02 00       	call   strcmp_
   4ec22:	85 c0                	test   eax,eax
   4ec24:	75 09                	jne    do_entrance_branch_4
   4ec26:	c7 41 0c 01 00 00 00 	mov    DWORD PTR [ecx+0xc],0x1
   4ec2d:	eb 2c                	jmp    do_entrance_branch_6
do_entrance_branch_4:
   4ec2f:	ba 75 c1 00 00       	mov    edx,@obj3:scrpties_cpp_variable_81                           ; fixup: num: 11952, src obj: 1, src ofs: 0x4ec30, dst obj: 3, dst ofs: 0xc175
   4ec34:	89 f0                	mov    eax,esi
   4ec36:	e8 f5 77 02 00       	call   strcmp_
   4ec3b:	85 c0                	test   eax,eax
   4ec3d:	75 05                	jne    do_entrance_branch_5
   4ec3f:	89 41 0c             	mov    DWORD PTR [ecx+0xc],eax
   4ec42:	eb 17                	jmp    do_entrance_branch_6
do_entrance_branch_5:
   4ec44:	ba 7b c1 00 00       	mov    edx,@obj3:scrpties_cpp_variable_82                           ; fixup: num: 11951, src obj: 1, src ofs: 0x4ec45, dst obj: 3, dst ofs: 0xc17b
   4ec49:	89 f0                	mov    eax,esi
   4ec4b:	e8 e0 77 02 00       	call   strcmp_
   4ec50:	85 c0                	test   eax,eax
   4ec52:	75 07                	jne    do_entrance_branch_6
   4ec54:	c7 41 0c 03 00 00 00 	mov    DWORD PTR [ecx+0xc],0x3
do_entrance_branch_6:
   4ec5b:	85 f6                	test   esi,esi
   4ec5d:	74 07                	je     do_entrance_branch_7
   4ec5f:	89 f0                	mov    eax,esi
   4ec61:	e8 82 27 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
do_entrance_branch_7:
   4ec66:	e8 d5 85 fe ff       	call   return_word
   4ec6b:	89 41 10             	mov    DWORD PTR [ecx+0x10],eax
   4ec6e:	e8 cd 85 fe ff       	call   return_word
   4ec73:	c7 41 18 00 00 00 00 	mov    DWORD PTR [ecx+0x18],0x0
   4ec7a:	8b 1d 98 5a 02 00    	mov    ebx,DWORD PTR ds:@obj3:entrance_list                         ; fixup: num: 11950, src obj: 1, src ofs: 0x4ec7c, dst obj: 3, dst ofs: 0x25a98
   4ec80:	89 41 14             	mov    DWORD PTR [ecx+0x14],eax
   4ec83:	85 db                	test   ebx,ebx
   4ec85:	75 08                	jne    do_entrance_branch_8
   4ec87:	89 0d 98 5a 02 00    	mov    DWORD PTR ds:@obj3:entrance_list,ecx                         ; fixup: num: 11949, src obj: 1, src ofs: 0x4ec89, dst obj: 3, dst ofs: 0x25a98
   4ec8d:	eb 15                	jmp    do_entrance_branch_11
do_entrance_branch_8:
   4ec8f:	8b 73 18             	mov    esi,DWORD PTR [ebx+0x18]
   4ec92:	89 d8                	mov    eax,ebx
   4ec94:	85 f6                	test   esi,esi
   4ec96:	74 09                	je     do_entrance_branch_10
do_entrance_branch_9:
   4ec98:	8b 40 18             	mov    eax,DWORD PTR [eax+0x18]
   4ec9b:	83 78 18 00          	cmp    DWORD PTR [eax+0x18],0x0
   4ec9f:	75 f7                	jne    do_entrance_branch_9
do_entrance_branch_10:
   4eca1:	89 48 18             	mov    DWORD PTR [eax+0x18],ecx
do_entrance_branch_11:
   4eca4:	ff 05 e0 5a 02 00    	inc    DWORD PTR ds:@obj3:entrance_ctr                              ; fixup: num: 11958, src obj: 1, src ofs: 0x4eca6, dst obj: 3, dst ofs: 0x25ae0
   4ecaa:	5e                   	pop    esi
   4ecab:	5a                   	pop    edx
   4ecac:	59                   	pop    ecx
   4ecad:	5b                   	pop    ebx
   4ecae:	c3                   	ret    
   4ecaf:	90                   	nop

;-------------------------------------------------
;  Function 'do_execlst'                         -
;-------------------------------------------------
do_execlst:
   4ecb0:	53                   	push   ebx
   4ecb1:	51                   	push   ecx
   4ecb2:	52                   	push   edx
   4ecb3:	56                   	push   esi
   4ecb4:	57                   	push   edi
   4ecb5:	55                   	push   ebp
   4ecb6:	b8 0c 00 00 00       	mov    eax,0xc
   4ecbb:	e8 d3 27 02 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   4ecc0:	89 c6                	mov    esi,eax
   4ecc2:	85 c0                	test   eax,eax
   4ecc4:	75 0f                	jne    do_execlst_branch_1
   4ecc6:	bb 80 c1 00 00       	mov    ebx,@obj3:scrpties_cpp_variable_83                           ; fixup: num: 11957, src obj: 1, src ofs: 0x4ecc7, dst obj: 3, dst ofs: 0xc180
   4eccb:	ba c1 01 00 00       	mov    edx,0x1c1
   4ecd0:	e8 5b 93 fe ff       	call   _error_report
do_execlst_branch_1:
   4ecd5:	bb 0c 00 00 00       	mov    ebx,0xc
   4ecda:	89 f0                	mov    eax,esi
   4ecdc:	31 d2                	xor    edx,edx
   4ecde:	e8 ed 26 02 00       	call   memset_
   4ece3:	e8 58 85 fe ff       	call   return_word
   4ece8:	c7 46 04 00 00 00 00 	mov    DWORD PTR [esi+0x4],0x0
   4ecef:	89 06                	mov    DWORD PTR [esi],eax
   4ecf1:	31 ed                	xor    ebp,ebp
do_execlst_branch_2:
   4ecf3:	e8 48 85 fe ff       	call   return_word
   4ecf8:	89 c7                	mov    edi,eax
   4ecfa:	85 c0                	test   eax,eax
   4ecfc:	74 48                	je     do_execlst_branch_7
   4ecfe:	b8 08 00 00 00       	mov    eax,0x8
   4ed03:	e8 8b 27 02 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   4ed08:	89 c1                	mov    ecx,eax
   4ed0a:	85 c0                	test   eax,eax
   4ed0c:	75 11                	jne    do_execlst_branch_3
   4ed0e:	bb 98 c1 00 00       	mov    ebx,@obj3:scrpties_cpp_variable_84                           ; fixup: num: 11956, src obj: 1, src ofs: 0x4ed0f, dst obj: 3, dst ofs: 0xc198
   4ed13:	ba c9 01 00 00       	mov    edx,0x1c9
   4ed18:	89 e8                	mov    eax,ebp
   4ed1a:	e8 11 93 fe ff       	call   _error_report
do_execlst_branch_3:
   4ed1f:	89 39                	mov    DWORD PTR [ecx],edi
   4ed21:	89 69 04             	mov    DWORD PTR [ecx+0x4],ebp
   4ed24:	8b 7e 04             	mov    edi,DWORD PTR [esi+0x4]
   4ed27:	39 fd                	cmp    ebp,edi
   4ed29:	75 05                	jne    do_execlst_branch_4
   4ed2b:	89 4e 04             	mov    DWORD PTR [esi+0x4],ecx
   4ed2e:	eb c3                	jmp    do_execlst_branch_2
do_execlst_branch_4:
   4ed30:	8b 57 04             	mov    edx,DWORD PTR [edi+0x4]
   4ed33:	89 f8                	mov    eax,edi
   4ed35:	39 d5                	cmp    ebp,edx
   4ed37:	74 08                	je     do_execlst_branch_6
do_execlst_branch_5:
   4ed39:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
   4ed3c:	3b 68 04             	cmp    ebp,DWORD PTR [eax+0x4]
   4ed3f:	75 f8                	jne    do_execlst_branch_5
do_execlst_branch_6:
   4ed41:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
   4ed44:	eb ad                	jmp    do_execlst_branch_2
do_execlst_branch_7:
   4ed46:	8b 15 a0 5a 02 00    	mov    edx,DWORD PTR ds:@obj3:execlst_list                          ; fixup: num: 11877, src obj: 1, src ofs: 0x4ed48, dst obj: 3, dst ofs: 0x25aa0
   4ed4c:	89 46 08             	mov    DWORD PTR [esi+0x8],eax
   4ed4f:	85 d2                	test   edx,edx
   4ed51:	75 08                	jne    do_execlst_branch_8
   4ed53:	89 35 a0 5a 02 00    	mov    DWORD PTR ds:@obj3:execlst_list,esi                          ; fixup: num: 11963, src obj: 1, src ofs: 0x4ed55, dst obj: 3, dst ofs: 0x25aa0
   4ed59:	eb 15                	jmp    do_execlst_branch_11
do_execlst_branch_8:
   4ed5b:	8b 5a 08             	mov    ebx,DWORD PTR [edx+0x8]
   4ed5e:	89 d0                	mov    eax,edx
   4ed60:	85 db                	test   ebx,ebx
   4ed62:	74 09                	je     do_execlst_branch_10
do_execlst_branch_9:
   4ed64:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
   4ed67:	83 78 08 00          	cmp    DWORD PTR [eax+0x8],0x0
   4ed6b:	75 f7                	jne    do_execlst_branch_9
do_execlst_branch_10:
   4ed6d:	89 70 08             	mov    DWORD PTR [eax+0x8],esi
do_execlst_branch_11:
   4ed70:	ff 05 e4 5a 02 00    	inc    DWORD PTR ds:@obj3:execlst_ctr                               ; fixup: num: 11962, src obj: 1, src ofs: 0x4ed72, dst obj: 3, dst ofs: 0x25ae4
   4ed76:	5d                   	pop    ebp
   4ed77:	5f                   	pop    edi
   4ed78:	5e                   	pop    esi
   4ed79:	5a                   	pop    edx
   4ed7a:	59                   	pop    ecx
   4ed7b:	5b                   	pop    ebx
   4ed7c:	c3                   	ret    
   4ed7d:	8d 40 00             	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'do_flag'                            -
;-------------------------------------------------
do_flag:
   4ed80:	53                   	push   ebx
   4ed81:	51                   	push   ecx
   4ed82:	52                   	push   edx
   4ed83:	b8 0c 00 00 00       	mov    eax,0xc
   4ed88:	e8 06 27 02 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   4ed8d:	89 c1                	mov    ecx,eax
   4ed8f:	85 c0                	test   eax,eax
   4ed91:	75 0f                	jne    do_flag_branch_1
   4ed93:	bb b0 c1 00 00       	mov    ebx,@obj3:scrpties_cpp_variable_85                           ; fixup: num: 11961, src obj: 1, src ofs: 0x4ed94, dst obj: 3, dst ofs: 0xc1b0
   4ed98:	ba ee 01 00 00       	mov    edx,0x1ee
   4ed9d:	e8 8e 92 fe ff       	call   _error_report
do_flag_branch_1:
   4eda2:	bb 0c 00 00 00       	mov    ebx,0xc
   4eda7:	89 c8                	mov    eax,ecx
   4eda9:	31 d2                	xor    edx,edx
   4edab:	e8 20 26 02 00       	call   memset_
   4edb0:	e8 8b 84 fe ff       	call   return_word
   4edb5:	ba c8 c1 00 00       	mov    edx,@obj3:scrpties_cpp_variable_86                           ; fixup: num: 11960, src obj: 1, src ofs: 0x4edb6, dst obj: 3, dst ofs: 0xc1c8
   4edba:	89 01                	mov    DWORD PTR [ecx],eax
   4edbc:	e8 7f 84 fe ff       	call   return_word
   4edc1:	89 c3                	mov    ebx,eax
   4edc3:	e8 68 76 02 00       	call   strcmp_
   4edc8:	85 c0                	test   eax,eax
   4edca:	0f 94 c0             	sete   al
   4edcd:	88 41 04             	mov    BYTE PTR [ecx+0x4],al
   4edd0:	85 db                	test   ebx,ebx
   4edd2:	74 07                	je     do_flag_branch_2
   4edd4:	89 d8                	mov    eax,ebx
   4edd6:	e8 0d 26 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
do_flag_branch_2:
   4eddb:	8b 15 a4 5a 02 00    	mov    edx,DWORD PTR ds:@obj3:flag_list                             ; fixup: num: 11959, src obj: 1, src ofs: 0x4eddd, dst obj: 3, dst ofs: 0x25aa4
   4ede1:	c7 41 08 00 00 00 00 	mov    DWORD PTR [ecx+0x8],0x0
   4ede8:	85 d2                	test   edx,edx
   4edea:	75 08                	jne    do_flag_branch_3
   4edec:	89 0d a4 5a 02 00    	mov    DWORD PTR ds:@obj3:flag_list,ecx                             ; fixup: num: 11885, src obj: 1, src ofs: 0x4edee, dst obj: 3, dst ofs: 0x25aa4
   4edf2:	eb 15                	jmp    do_flag_branch_6
do_flag_branch_3:
   4edf4:	8b 5a 08             	mov    ebx,DWORD PTR [edx+0x8]
   4edf7:	89 d0                	mov    eax,edx
   4edf9:	85 db                	test   ebx,ebx
   4edfb:	74 09                	je     do_flag_branch_5
do_flag_branch_4:
   4edfd:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
   4ee00:	83 78 08 00          	cmp    DWORD PTR [eax+0x8],0x0
   4ee04:	75 f7                	jne    do_flag_branch_4
do_flag_branch_5:
   4ee06:	89 48 08             	mov    DWORD PTR [eax+0x8],ecx
do_flag_branch_6:
   4ee09:	ff 05 e8 5a 02 00    	inc    DWORD PTR ds:@obj3:flag_ctr                                  ; fixup: num: 11884, src obj: 1, src ofs: 0x4ee0b, dst obj: 3, dst ofs: 0x25ae8
   4ee0f:	5a                   	pop    edx
   4ee10:	59                   	pop    ecx
   4ee11:	5b                   	pop    ebx
   4ee12:	c3                   	ret    
   4ee13:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   4ee19:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
   4ee1f:	90                   	nop

;-------------------------------------------------
;  Function 'do_head'                            -
;-------------------------------------------------
do_head:
   4ee20:	53                   	push   ebx
   4ee21:	51                   	push   ecx
   4ee22:	52                   	push   edx
   4ee23:	56                   	push   esi
   4ee24:	57                   	push   edi
   4ee25:	b8 0c 00 00 00       	mov    eax,0xc
   4ee2a:	e8 64 26 02 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   4ee2f:	89 c1                	mov    ecx,eax
   4ee31:	85 c0                	test   eax,eax
   4ee33:	75 0f                	jne    do_head_branch_1
   4ee35:	bb ca c1 00 00       	mov    ebx,@obj3:scrpties_cpp_variable_87                           ; fixup: num: 11883, src obj: 1, src ofs: 0x4ee36, dst obj: 3, dst ofs: 0xc1ca
   4ee3a:	ba 10 02 00 00       	mov    edx,0x210
   4ee3f:	e8 ec 91 fe ff       	call   _error_report
do_head_branch_1:
   4ee44:	bb 0c 00 00 00       	mov    ebx,0xc
   4ee49:	89 c8                	mov    eax,ecx
   4ee4b:	31 d2                	xor    edx,edx
   4ee4d:	e8 7e 25 02 00       	call   memset_
   4ee52:	e8 e9 83 fe ff       	call   return_word
   4ee57:	89 01                	mov    DWORD PTR [ecx],eax
   4ee59:	e8 e2 83 fe ff       	call   return_word
   4ee5e:	89 41 04             	mov    DWORD PTR [ecx+0x4],eax
   4ee61:	80 3d 48 7e 01 00 00 	cmp    BYTE PTR ds:@obj3:script_check,0x0                           ; fixup: num: 11882, src obj: 1, src ofs: 0x4ee63, dst obj: 3, dst ofs: 0x17e48
   4ee68:	74 6d                	je     do_head_branch_3
   4ee6a:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
   4ee6d:	85 d2                	test   edx,edx
   4ee6f:	74 66                	je     do_head_branch_3
   4ee71:	52                   	push   edx
   4ee72:	68 e2 c1 00 00       	push   @obj3:scrpties_cpp_variable_88                               ; fixup: num: 11881, src obj: 1, src ofs: 0x4ee73, dst obj: 3, dst ofs: 0xc1e2
   4ee77:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 11880, src obj: 1, src ofs: 0x4ee78, dst obj: 3, dst ofs: 0x237fc
   4ee7c:	bf fc 37 02 00       	mov    edi,@obj3:log_buffer                                         ; fixup: num: 11879, src obj: 1, src ofs: 0x4ee7d, dst obj: 3, dst ofs: 0x237fc
   4ee81:	e8 5b 1d 02 00       	call   sprintf_
   4ee86:	83 c4 0c             	add    esp,0xc
   4ee89:	89 f8                	mov    eax,edi
   4ee8b:	e8 f0 dd fb ff       	call   XFILE_size
   4ee90:	83 f8 ff             	cmp    eax,0xffffffff
   4ee93:	75 42                	jne    do_head_branch_3
   4ee95:	b2 01                	mov    dl,0x1
   4ee97:	b8 d1 bc 00 00       	mov    eax,@obj3:scrpties_cpp_variable_4                            ; fixup: num: 11878, src obj: 1, src ofs: 0x4ee98, dst obj: 3, dst ofs: 0xbcd1
   4ee9c:	88 15 14 5b 02 00    	mov    BYTE PTR ds:@obj3:script_errors,dl                           ; fixup: num: 11893, src obj: 1, src ofs: 0x4ee9e, dst obj: 3, dst ofs: 0x25b14
   4eea2:	ba cd bc 00 00       	mov    edx,@obj3:scrpties_cpp_variable_3                            ; fixup: num: 11892, src obj: 1, src ofs: 0x4eea3, dst obj: 3, dst ofs: 0xbccd
   4eea7:	e8 fc 1e 02 00       	call   fopen_
   4eeac:	89 c6                	mov    esi,eax
   4eeae:	85 c0                	test   eax,eax
   4eeb0:	75 0f                	jne    do_head_branch_2
   4eeb2:	bb dc bc 00 00       	mov    ebx,@obj3:scrpties_cpp_variable_5                            ; fixup: num: 11891, src obj: 1, src ofs: 0x4eeb3, dst obj: 3, dst ofs: 0xbcdc
   4eeb7:	ba f9 0b 00 00       	mov    edx,0xbf9
   4eebc:	e8 6f 91 fe ff       	call   _error_report
do_head_branch_2:
   4eec1:	57                   	push   edi
   4eec2:	68 f0 bc 00 00       	push   @obj3:scrpties_cpp_variable_6                                ; fixup: num: 11890, src obj: 1, src ofs: 0x4eec3, dst obj: 3, dst ofs: 0xbcf0
   4eec7:	56                   	push   esi
   4eec8:	e8 14 7d 02 00       	call   fprintf_
   4eecd:	83 c4 0c             	add    esp,0xc
   4eed0:	89 f0                	mov    eax,esi
   4eed2:	e8 67 1f 02 00       	call   fclose_
do_head_branch_3:
   4eed7:	8b 35 a8 5a 02 00    	mov    esi,DWORD PTR ds:@obj3:head_list                             ; fixup: num: 11889, src obj: 1, src ofs: 0x4eed9, dst obj: 3, dst ofs: 0x25aa8
   4eedd:	c7 41 08 00 00 00 00 	mov    DWORD PTR [ecx+0x8],0x0
   4eee4:	85 f6                	test   esi,esi
   4eee6:	75 08                	jne    do_head_branch_4
   4eee8:	89 0d a8 5a 02 00    	mov    DWORD PTR ds:@obj3:head_list,ecx                             ; fixup: num: 11888, src obj: 1, src ofs: 0x4eeea, dst obj: 3, dst ofs: 0x25aa8
   4eeee:	eb 15                	jmp    do_head_branch_7
do_head_branch_4:
   4eef0:	8b 7e 08             	mov    edi,DWORD PTR [esi+0x8]
   4eef3:	89 f0                	mov    eax,esi
   4eef5:	85 ff                	test   edi,edi
   4eef7:	74 09                	je     do_head_branch_6
do_head_branch_5:
   4eef9:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
   4eefc:	83 78 08 00          	cmp    DWORD PTR [eax+0x8],0x0
   4ef00:	75 f7                	jne    do_head_branch_5
do_head_branch_6:
   4ef02:	89 48 08             	mov    DWORD PTR [eax+0x8],ecx
do_head_branch_7:
   4ef05:	ff 05 ec 5a 02 00    	inc    DWORD PTR ds:@obj3:head_ctr                                  ; fixup: num: 11887, src obj: 1, src ofs: 0x4ef07, dst obj: 3, dst ofs: 0x25aec
   4ef0b:	5f                   	pop    edi
   4ef0c:	5e                   	pop    esi
   4ef0d:	5a                   	pop    edx
   4ef0e:	59                   	pop    ecx
   4ef0f:	5b                   	pop    ebx
   4ef10:	c3                   	ret    
   4ef11:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   4ef17:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
   4ef1d:	8d 40 00             	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'do_map_entrance'                    -
;-------------------------------------------------
do_map_entrance:
   4ef20:	53                   	push   ebx
   4ef21:	51                   	push   ecx
   4ef22:	52                   	push   edx
   4ef23:	b8 14 00 00 00       	mov    eax,0x14
   4ef28:	e8 66 25 02 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   4ef2d:	89 c1                	mov    ecx,eax
   4ef2f:	85 c0                	test   eax,eax
   4ef31:	75 0f                	jne    do_map_entrance_branch_1
   4ef33:	bb e8 c1 00 00       	mov    ebx,@obj3:scrpties_cpp_variable_89                           ; fixup: num: 11886, src obj: 1, src ofs: 0x4ef34, dst obj: 3, dst ofs: 0xc1e8
   4ef38:	ba 33 02 00 00       	mov    edx,0x233
   4ef3d:	e8 ee 90 fe ff       	call   _error_report
do_map_entrance_branch_1:
   4ef42:	bb 14 00 00 00       	mov    ebx,0x14
   4ef47:	89 c8                	mov    eax,ecx
   4ef49:	31 d2                	xor    edx,edx
   4ef4b:	e8 80 24 02 00       	call   memset_
   4ef50:	e8 0b da fd ff       	call   popsp
   4ef55:	89 41 08             	mov    DWORD PTR [ecx+0x8],eax
   4ef58:	e8 03 da fd ff       	call   popsp
   4ef5d:	89 41 04             	mov    DWORD PTR [ecx+0x4],eax
   4ef60:	e8 fb d9 fd ff       	call   popsp
   4ef65:	89 01                	mov    DWORD PTR [ecx],eax
   4ef67:	e8 d4 82 fe ff       	call   return_word
   4ef6c:	c7 41 10 00 00 00 00 	mov    DWORD PTR [ecx+0x10],0x0
   4ef73:	8b 15 ac 5a 02 00    	mov    edx,DWORD PTR ds:@obj3:map_entrance_list                     ; fixup: num: 11897, src obj: 1, src ofs: 0x4ef75, dst obj: 3, dst ofs: 0x25aac
   4ef79:	89 41 0c             	mov    DWORD PTR [ecx+0xc],eax
   4ef7c:	85 d2                	test   edx,edx
   4ef7e:	75 08                	jne    do_map_entrance_branch_2
   4ef80:	89 0d ac 5a 02 00    	mov    DWORD PTR ds:@obj3:map_entrance_list,ecx                     ; fixup: num: 11896, src obj: 1, src ofs: 0x4ef82, dst obj: 3, dst ofs: 0x25aac
   4ef86:	eb 15                	jmp    do_map_entrance_branch_5
do_map_entrance_branch_2:
   4ef88:	8b 5a 10             	mov    ebx,DWORD PTR [edx+0x10]
   4ef8b:	89 d0                	mov    eax,edx
   4ef8d:	85 db                	test   ebx,ebx
   4ef8f:	74 09                	je     do_map_entrance_branch_4
do_map_entrance_branch_3:
   4ef91:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
   4ef94:	83 78 10 00          	cmp    DWORD PTR [eax+0x10],0x0
   4ef98:	75 f7                	jne    do_map_entrance_branch_3
do_map_entrance_branch_4:
   4ef9a:	89 48 10             	mov    DWORD PTR [eax+0x10],ecx
do_map_entrance_branch_5:
   4ef9d:	ff 05 f0 5a 02 00    	inc    DWORD PTR ds:@obj3:map_entrance_ctr                          ; fixup: num: 11895, src obj: 1, src ofs: 0x4ef9f, dst obj: 3, dst ofs: 0x25af0
   4efa3:	5a                   	pop    edx
   4efa4:	59                   	pop    ecx
   4efa5:	5b                   	pop    ebx
   4efa6:	c3                   	ret    
   4efa7:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   4efad:	8d 52 00             	lea    edx,[edx+0x0]

;-------------------------------------------------
;  Function 'do_map_location'                    -
;-------------------------------------------------
do_map_location:
   4efb0:	53                   	push   ebx
   4efb1:	51                   	push   ecx
   4efb2:	52                   	push   edx
   4efb3:	b8 28 00 00 00       	mov    eax,0x28
   4efb8:	e8 d6 24 02 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   4efbd:	89 c1                	mov    ecx,eax
   4efbf:	85 c0                	test   eax,eax
   4efc1:	75 0f                	jne    do_map_location_branch_1
   4efc3:	bb 00 c2 00 00       	mov    ebx,@obj3:scrpties_cpp_variable_90                           ; fixup: num: 11894, src obj: 1, src ofs: 0x4efc4, dst obj: 3, dst ofs: 0xc200
   4efc8:	ba 50 02 00 00       	mov    edx,0x250
   4efcd:	e8 5e 90 fe ff       	call   _error_report
do_map_location_branch_1:
   4efd2:	bb 28 00 00 00       	mov    ebx,0x28
   4efd7:	89 c8                	mov    eax,ecx
   4efd9:	31 d2                	xor    edx,edx
   4efdb:	e8 f0 23 02 00       	call   memset_
   4efe0:	e8 7b d9 fd ff       	call   popsp
   4efe5:	89 41 18             	mov    DWORD PTR [ecx+0x18],eax
   4efe8:	e8 73 d9 fd ff       	call   popsp
   4efed:	31 d2                	xor    edx,edx
   4efef:	89 41 14             	mov    DWORD PTR [ecx+0x14],eax
   4eff2:	e8 69 d9 fd ff       	call   popsp
   4eff7:	89 41 10             	mov    DWORD PTR [ecx+0x10],eax
   4effa:	e8 61 d9 fd ff       	call   popsp
   4efff:	89 41 0c             	mov    DWORD PTR [ecx+0xc],eax
   4f002:	e8 59 d9 fd ff       	call   popsp
   4f007:	89 41 08             	mov    DWORD PTR [ecx+0x8],eax
   4f00a:	e8 51 d9 fd ff       	call   popsp
   4f00f:	89 41 04             	mov    DWORD PTR [ecx+0x4],eax
   4f012:	e8 49 d9 fd ff       	call   popsp
   4f017:	89 01                	mov    DWORD PTR [ecx],eax
   4f019:	e8 22 82 fe ff       	call   return_word
   4f01e:	89 41 1c             	mov    DWORD PTR [ecx+0x1c],eax
do_map_location_branch_2:
   4f021:	8b 41 1c             	mov    eax,DWORD PTR [ecx+0x1c]
   4f024:	01 d0                	add    eax,edx
   4f026:	8a 18                	mov    bl,BYTE PTR [eax]
   4f028:	84 db                	test   bl,bl
   4f02a:	74 0b                	je     do_map_location_branch_4
   4f02c:	80 fb 5f             	cmp    bl,0x5f
   4f02f:	75 03                	jne    do_map_location_branch_3
   4f031:	c6 00 20             	mov    BYTE PTR [eax],0x20
do_map_location_branch_3:
   4f034:	42                   	inc    edx
   4f035:	eb ea                	jmp    do_map_location_branch_2
do_map_location_branch_4:
   4f037:	e8 04 82 fe ff       	call   return_word
   4f03c:	c7 41 24 00 00 00 00 	mov    DWORD PTR [ecx+0x24],0x0
   4f043:	8b 15 b0 5a 02 00    	mov    edx,DWORD PTR ds:@obj3:map_location_list                     ; fixup: num: 12146, src obj: 1, src ofs: 0x4f045, dst obj: 3, dst ofs: 0x25ab0
   4f049:	89 41 20             	mov    DWORD PTR [ecx+0x20],eax
   4f04c:	85 d2                	test   edx,edx
   4f04e:	75 08                	jne    do_map_location_branch_5
   4f050:	89 0d b0 5a 02 00    	mov    DWORD PTR ds:@obj3:map_location_list,ecx                     ; fixup: num: 12145, src obj: 1, src ofs: 0x4f052, dst obj: 3, dst ofs: 0x25ab0
   4f056:	eb 15                	jmp    do_map_location_branch_8
do_map_location_branch_5:
   4f058:	8b 5a 24             	mov    ebx,DWORD PTR [edx+0x24]
   4f05b:	89 d0                	mov    eax,edx
   4f05d:	85 db                	test   ebx,ebx
   4f05f:	74 09                	je     do_map_location_branch_7
do_map_location_branch_6:
   4f061:	8b 40 24             	mov    eax,DWORD PTR [eax+0x24]
   4f064:	83 78 24 00          	cmp    DWORD PTR [eax+0x24],0x0
   4f068:	75 f7                	jne    do_map_location_branch_6
do_map_location_branch_7:
   4f06a:	89 48 24             	mov    DWORD PTR [eax+0x24],ecx
do_map_location_branch_8:
   4f06d:	ff 05 f4 5a 02 00    	inc    DWORD PTR ds:@obj3:map_location_ctr                          ; fixup: num: 12144, src obj: 1, src ofs: 0x4f06f, dst obj: 3, dst ofs: 0x25af4
   4f073:	5a                   	pop    edx
   4f074:	59                   	pop    ecx
   4f075:	5b                   	pop    ebx
   4f076:	c3                   	ret    
   4f077:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   4f07d:	8d 52 00             	lea    edx,[edx+0x0]

;-------------------------------------------------
;  Function 'do_monster'                         -
;-------------------------------------------------
do_monster:
   4f080:	53                   	push   ebx
   4f081:	51                   	push   ecx
   4f082:	52                   	push   edx
   4f083:	56                   	push   esi
   4f084:	57                   	push   edi
   4f085:	55                   	push   ebp
   4f086:	b8 94 00 00 00       	mov    eax,0x94
   4f08b:	e8 03 24 02 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   4f090:	89 c1                	mov    ecx,eax
   4f092:	85 c0                	test   eax,eax
   4f094:	75 0f                	jne    do_monster_branch_1
   4f096:	bb 18 c2 00 00       	mov    ebx,@obj3:scrpties_cpp_variable_91                           ; fixup: num: 12143, src obj: 1, src ofs: 0x4f097, dst obj: 3, dst ofs: 0xc218
   4f09b:	ba 79 02 00 00       	mov    edx,0x279
   4f0a0:	e8 8b 8f fe ff       	call   _error_report
do_monster_branch_1:
   4f0a5:	bb 94 00 00 00       	mov    ebx,0x94
   4f0aa:	89 c8                	mov    eax,ecx
   4f0ac:	31 d2                	xor    edx,edx
   4f0ae:	e8 1d 23 02 00       	call   memset_
   4f0b3:	c7 81 90 00 00 00 00 00 00 00 	mov    DWORD PTR [ecx+0x90],0x0
   4f0bd:	e8 9e d8 fd ff       	call   popsp
   4f0c2:	89 41 7c             	mov    DWORD PTR [ecx+0x7c],eax
   4f0c5:	e8 96 d8 fd ff       	call   popsp
   4f0ca:	89 41 78             	mov    DWORD PTR [ecx+0x78],eax
   4f0cd:	e8 8e d8 fd ff       	call   popsp
   4f0d2:	89 41 74             	mov    DWORD PTR [ecx+0x74],eax
   4f0d5:	e8 86 d8 fd ff       	call   popsp
   4f0da:	89 41 70             	mov    DWORD PTR [ecx+0x70],eax
   4f0dd:	e8 7e d8 fd ff       	call   popsp
   4f0e2:	89 41 18             	mov    DWORD PTR [ecx+0x18],eax
   4f0e5:	e8 76 d8 fd ff       	call   popsp
   4f0ea:	89 41 10             	mov    DWORD PTR [ecx+0x10],eax
   4f0ed:	e8 6e d8 fd ff       	call   popsp
   4f0f2:	89 41 0c             	mov    DWORD PTR [ecx+0xc],eax
   4f0f5:	e8 66 d8 fd ff       	call   popsp
   4f0fa:	89 41 08             	mov    DWORD PTR [ecx+0x8],eax
   4f0fd:	e8 5e d8 fd ff       	call   popsp
   4f102:	89 41 04             	mov    DWORD PTR [ecx+0x4],eax
   4f105:	e8 56 d8 fd ff       	call   popsp
   4f10a:	89 01                	mov    DWORD PTR [ecx],eax
   4f10c:	e8 2f 81 fe ff       	call   return_word
   4f111:	89 41 40             	mov    DWORD PTR [ecx+0x40],eax
   4f114:	e8 27 81 fe ff       	call   return_word
   4f119:	89 41 34             	mov    DWORD PTR [ecx+0x34],eax
   4f11c:	e8 1f 81 fe ff       	call   return_word
   4f121:	89 41 30             	mov    DWORD PTR [ecx+0x30],eax
   4f124:	80 3d 48 7e 01 00 00 	cmp    BYTE PTR ds:@obj3:script_check,0x0                           ; fixup: num: 12150, src obj: 1, src ofs: 0x4f126, dst obj: 3, dst ofs: 0x17e48
   4f12b:	74 57                	je     do_monster_branch_3
   4f12d:	8b 51 30             	mov    edx,DWORD PTR [ecx+0x30]
   4f130:	85 d2                	test   edx,edx
   4f132:	74 50                	je     do_monster_branch_3
   4f134:	89 d0                	mov    eax,edx
   4f136:	89 d7                	mov    edi,edx
   4f138:	e8 43 db fb ff       	call   XFILE_size
   4f13d:	83 f8 ff             	cmp    eax,0xffffffff
   4f140:	75 42                	jne    do_monster_branch_3
   4f142:	b2 01                	mov    dl,0x1
   4f144:	b8 d1 bc 00 00       	mov    eax,@obj3:scrpties_cpp_variable_4                            ; fixup: num: 12149, src obj: 1, src ofs: 0x4f145, dst obj: 3, dst ofs: 0xbcd1
   4f149:	88 15 14 5b 02 00    	mov    BYTE PTR ds:@obj3:script_errors,dl                           ; fixup: num: 12148, src obj: 1, src ofs: 0x4f14b, dst obj: 3, dst ofs: 0x25b14
   4f14f:	ba cd bc 00 00       	mov    edx,@obj3:scrpties_cpp_variable_3                            ; fixup: num: 12147, src obj: 1, src ofs: 0x4f150, dst obj: 3, dst ofs: 0xbccd
   4f154:	e8 4f 1c 02 00       	call   fopen_
   4f159:	89 c6                	mov    esi,eax
   4f15b:	85 c0                	test   eax,eax
   4f15d:	75 0f                	jne    do_monster_branch_2
   4f15f:	bb dc bc 00 00       	mov    ebx,@obj3:scrpties_cpp_variable_5                            ; fixup: num: 12157, src obj: 1, src ofs: 0x4f160, dst obj: 3, dst ofs: 0xbcdc
   4f164:	ba f9 0b 00 00       	mov    edx,0xbf9
   4f169:	e8 c2 8e fe ff       	call   _error_report
do_monster_branch_2:
   4f16e:	57                   	push   edi
   4f16f:	68 f0 bc 00 00       	push   @obj3:scrpties_cpp_variable_6                                ; fixup: num: 12156, src obj: 1, src ofs: 0x4f170, dst obj: 3, dst ofs: 0xbcf0
   4f174:	56                   	push   esi
   4f175:	e8 67 7a 02 00       	call   fprintf_
   4f17a:	83 c4 0c             	add    esp,0xc
   4f17d:	89 f0                	mov    eax,esi
   4f17f:	e8 ba 1c 02 00       	call   fclose_
do_monster_branch_3:
   4f184:	e8 b7 80 fe ff       	call   return_word
   4f189:	89 41 44             	mov    DWORD PTR [ecx+0x44],eax
   4f18c:	e8 af 80 fe ff       	call   return_word
   4f191:	89 41 48             	mov    DWORD PTR [ecx+0x48],eax
   4f194:	e8 a7 80 fe ff       	call   return_word
   4f199:	89 41 38             	mov    DWORD PTR [ecx+0x38],eax
   4f19c:	e8 9f 80 fe ff       	call   return_word
   4f1a1:	89 41 3c             	mov    DWORD PTR [ecx+0x3c],eax
   4f1a4:	e8 97 80 fe ff       	call   return_word
   4f1a9:	89 c3                	mov    ebx,eax
   4f1ab:	89 c6                	mov    esi,eax
   4f1ad:	85 c0                	test   eax,eax
   4f1af:	75 22                	jne    do_monster_branch_4
   4f1b1:	8b 1d 38 36 02 00    	mov    ebx,DWORD PTR ds:@obj3:script_line_number                    ; fixup: num: 12155, src obj: 1, src ofs: 0x4f1b3, dst obj: 3, dst ofs: 0x23638
   4f1b7:	53                   	push   ebx
   4f1b8:	68 30 c2 00 00       	push   @obj3:scrpties_cpp_variable_92                               ; fixup: num: 12154, src obj: 1, src ofs: 0x4f1b9, dst obj: 3, dst ofs: 0xc230
   4f1bd:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 12153, src obj: 1, src ofs: 0x4f1be, dst obj: 3, dst ofs: 0x237fc
   4f1c2:	e8 1a 1a 02 00       	call   sprintf_
   4f1c7:	83 c4 0c             	add    esp,0xc
   4f1ca:	c7 41 24 02 00 00 00 	mov    DWORD PTR [ecx+0x24],0x2
   4f1d1:	eb 5c                	jmp    do_monster_branch_8
do_monster_branch_4:
   4f1d3:	ba 5a c2 00 00       	mov    edx,@obj3:scrpties_cpp_variable_93                           ; fixup: num: 12152, src obj: 1, src ofs: 0x4f1d4, dst obj: 3, dst ofs: 0xc25a
   4f1d8:	e8 7d 22 02 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   4f1dd:	85 c0                	test   eax,eax
   4f1df:	75 09                	jne    do_monster_branch_5
   4f1e1:	c7 41 24 02 00 00 00 	mov    DWORD PTR [ecx+0x24],0x2
   4f1e8:	eb 45                	jmp    do_monster_branch_8
do_monster_branch_5:
   4f1ea:	ba 60 c2 00 00       	mov    edx,@obj3:scrpties_cpp_variable_94                           ; fixup: num: 12151, src obj: 1, src ofs: 0x4f1eb, dst obj: 3, dst ofs: 0xc260
   4f1ef:	89 d8                	mov    eax,ebx
   4f1f1:	e8 64 22 02 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   4f1f6:	85 c0                	test   eax,eax
   4f1f8:	75 09                	jne    do_monster_branch_6
   4f1fa:	c7 41 24 01 00 00 00 	mov    DWORD PTR [ecx+0x24],0x1
   4f201:	eb 2c                	jmp    do_monster_branch_8
do_monster_branch_6:
   4f203:	ba 65 c2 00 00       	mov    edx,@obj3:scrpties_cpp_variable_95                           ; fixup: num: 12167, src obj: 1, src ofs: 0x4f204, dst obj: 3, dst ofs: 0xc265
   4f208:	89 d8                	mov    eax,ebx
   4f20a:	e8 4b 22 02 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   4f20f:	85 c0                	test   eax,eax
   4f211:	75 05                	jne    do_monster_branch_7
   4f213:	89 41 24             	mov    DWORD PTR [ecx+0x24],eax
   4f216:	eb 17                	jmp    do_monster_branch_8
do_monster_branch_7:
   4f218:	ba 6b c2 00 00       	mov    edx,@obj3:scrpties_cpp_variable_96                           ; fixup: num: 12166, src obj: 1, src ofs: 0x4f219, dst obj: 3, dst ofs: 0xc26b
   4f21d:	89 d8                	mov    eax,ebx
   4f21f:	e8 36 22 02 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   4f224:	85 c0                	test   eax,eax
   4f226:	75 07                	jne    do_monster_branch_8
   4f228:	c7 41 24 03 00 00 00 	mov    DWORD PTR [ecx+0x24],0x3
do_monster_branch_8:
   4f22f:	85 f6                	test   esi,esi
   4f231:	74 07                	je     do_monster_branch_9
   4f233:	89 f0                	mov    eax,esi
   4f235:	e8 ae 21 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
do_monster_branch_9:
   4f23a:	e8 01 80 fe ff       	call   return_word
   4f23f:	89 c3                	mov    ebx,eax
   4f241:	89 c6                	mov    esi,eax
   4f243:	85 c0                	test   eax,eax
   4f245:	75 0e                	jne    do_monster_branch_10
   4f247:	8b 2d 38 36 02 00    	mov    ebp,DWORD PTR ds:@obj3:script_line_number                    ; fixup: num: 12165, src obj: 1, src ofs: 0x4f249, dst obj: 3, dst ofs: 0x23638
   4f24d:	55                   	push   ebp
   4f24e:	68 70 c2 00 00       	push   @obj3:scrpties_cpp_variable_97                               ; fixup: num: 12164, src obj: 1, src ofs: 0x4f24f, dst obj: 3, dst ofs: 0xc270
   4f253:	eb 4c                	jmp    do_monster_branch_13
do_monster_branch_10:
   4f255:	ba 98 c2 00 00       	mov    edx,@obj3:scrpties_cpp_variable_98                           ; fixup: num: 12163, src obj: 1, src ofs: 0x4f256, dst obj: 3, dst ofs: 0xc298
   4f25a:	e8 fb 21 02 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   4f25f:	85 c0                	test   eax,eax
   4f261:	74 4b                	je     do_monster_branch_14
   4f263:	ba 9f c2 00 00       	mov    edx,@obj3:scrpties_cpp_variable_99                           ; fixup: num: 12162, src obj: 1, src ofs: 0x4f264, dst obj: 3, dst ofs: 0xc29f
   4f268:	89 d8                	mov    eax,ebx
   4f26a:	e8 eb 21 02 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   4f26f:	85 c0                	test   eax,eax
   4f271:	75 09                	jne    do_monster_branch_11
   4f273:	c7 41 20 02 00 00 00 	mov    DWORD PTR [ecx+0x20],0x2
   4f27a:	eb 39                	jmp    do_monster_branch_15
do_monster_branch_11:
   4f27c:	ba a5 c2 00 00       	mov    edx,@obj3:scrpties_cpp_variable_100                          ; fixup: num: 12161, src obj: 1, src ofs: 0x4f27d, dst obj: 3, dst ofs: 0xc2a5
   4f281:	89 d8                	mov    eax,ebx
   4f283:	e8 d2 21 02 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   4f288:	85 c0                	test   eax,eax
   4f28a:	75 09                	jne    do_monster_branch_12
   4f28c:	c7 41 20 04 00 00 00 	mov    DWORD PTR [ecx+0x20],0x4
   4f293:	eb 20                	jmp    do_monster_branch_15
do_monster_branch_12:
   4f295:	8b 3d 38 36 02 00    	mov    edi,DWORD PTR ds:@obj3:script_line_number                    ; fixup: num: 12160, src obj: 1, src ofs: 0x4f297, dst obj: 3, dst ofs: 0x23638
   4f29b:	57                   	push   edi
   4f29c:	68 aa c2 00 00       	push   @obj3:scrpties_cpp_variable_101                              ; fixup: num: 12159, src obj: 1, src ofs: 0x4f29d, dst obj: 3, dst ofs: 0xc2aa
do_monster_branch_13:
   4f2a1:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 12158, src obj: 1, src ofs: 0x4f2a2, dst obj: 3, dst ofs: 0x237fc
   4f2a6:	e8 36 19 02 00       	call   sprintf_
   4f2ab:	83 c4 0c             	add    esp,0xc
do_monster_branch_14:
   4f2ae:	c7 41 20 01 00 00 00 	mov    DWORD PTR [ecx+0x20],0x1
do_monster_branch_15:
   4f2b5:	85 f6                	test   esi,esi
   4f2b7:	74 07                	je     do_monster_branch_16
   4f2b9:	89 f0                	mov    eax,esi
   4f2bb:	e8 28 21 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
do_monster_branch_16:
   4f2c0:	e8 7b 7f fe ff       	call   return_word
   4f2c5:	89 41 4c             	mov    DWORD PTR [ecx+0x4c],eax
   4f2c8:	e8 73 7f fe ff       	call   return_word
   4f2cd:	89 41 50             	mov    DWORD PTR [ecx+0x50],eax
   4f2d0:	e8 6b 7f fe ff       	call   return_word
   4f2d5:	89 41 54             	mov    DWORD PTR [ecx+0x54],eax
   4f2d8:	e8 63 7f fe ff       	call   return_word
   4f2dd:	89 41 58             	mov    DWORD PTR [ecx+0x58],eax
   4f2e0:	e8 5b 7f fe ff       	call   return_word
   4f2e5:	89 41 5c             	mov    DWORD PTR [ecx+0x5c],eax
   4f2e8:	e8 53 7f fe ff       	call   return_word
   4f2ed:	89 41 60             	mov    DWORD PTR [ecx+0x60],eax
   4f2f0:	e8 4b 7f fe ff       	call   return_word
   4f2f5:	89 41 64             	mov    DWORD PTR [ecx+0x64],eax
   4f2f8:	e8 43 7f fe ff       	call   return_word
   4f2fd:	89 41 68             	mov    DWORD PTR [ecx+0x68],eax
   4f300:	e8 3b 7f fe ff       	call   return_word
   4f305:	8a 35 48 7e 01 00    	mov    dh,BYTE PTR ds:@obj3:script_check                            ; fixup: num: 12173, src obj: 1, src ofs: 0x4f307, dst obj: 3, dst ofs: 0x17e48
   4f30b:	89 41 6c             	mov    DWORD PTR [ecx+0x6c],eax
   4f30e:	84 f6                	test   dh,dh
   4f310:	74 55                	je     do_monster_branch_18
   4f312:	8b 41 4c             	mov    eax,DWORD PTR [ecx+0x4c]
   4f315:	85 c0                	test   eax,eax
   4f317:	74 4e                	je     do_monster_branch_18
   4f319:	89 c7                	mov    edi,eax
   4f31b:	e8 60 d9 fb ff       	call   XFILE_size
   4f320:	83 f8 ff             	cmp    eax,0xffffffff
   4f323:	75 42                	jne    do_monster_branch_18
   4f325:	b3 01                	mov    bl,0x1
   4f327:	ba cd bc 00 00       	mov    edx,@obj3:scrpties_cpp_variable_3                            ; fixup: num: 12172, src obj: 1, src ofs: 0x4f328, dst obj: 3, dst ofs: 0xbccd
   4f32c:	b8 d1 bc 00 00       	mov    eax,@obj3:scrpties_cpp_variable_4                            ; fixup: num: 12171, src obj: 1, src ofs: 0x4f32d, dst obj: 3, dst ofs: 0xbcd1
   4f331:	88 1d 14 5b 02 00    	mov    BYTE PTR ds:@obj3:script_errors,bl                           ; fixup: num: 12170, src obj: 1, src ofs: 0x4f333, dst obj: 3, dst ofs: 0x25b14
   4f337:	e8 6c 1a 02 00       	call   fopen_
   4f33c:	89 c6                	mov    esi,eax
   4f33e:	85 c0                	test   eax,eax
   4f340:	75 0f                	jne    do_monster_branch_17
   4f342:	bb dc bc 00 00       	mov    ebx,@obj3:scrpties_cpp_variable_5                            ; fixup: num: 12169, src obj: 1, src ofs: 0x4f343, dst obj: 3, dst ofs: 0xbcdc
   4f347:	ba f9 0b 00 00       	mov    edx,0xbf9
   4f34c:	e8 df 8c fe ff       	call   _error_report
do_monster_branch_17:
   4f351:	57                   	push   edi
   4f352:	68 f0 bc 00 00       	push   @obj3:scrpties_cpp_variable_6                                ; fixup: num: 12168, src obj: 1, src ofs: 0x4f353, dst obj: 3, dst ofs: 0xbcf0
   4f357:	56                   	push   esi
   4f358:	e8 84 78 02 00       	call   fprintf_
   4f35d:	83 c4 0c             	add    esp,0xc
   4f360:	89 f0                	mov    eax,esi
   4f362:	e8 d7 1a 02 00       	call   fclose_
do_monster_branch_18:
   4f367:	80 3d 48 7e 01 00 00 	cmp    BYTE PTR ds:@obj3:script_check,0x0                           ; fixup: num: 12184, src obj: 1, src ofs: 0x4f369, dst obj: 3, dst ofs: 0x17e48
   4f36e:	74 56                	je     do_monster_branch_20
   4f370:	8b 51 50             	mov    edx,DWORD PTR [ecx+0x50]
   4f373:	85 d2                	test   edx,edx
   4f375:	74 4f                	je     do_monster_branch_20
   4f377:	89 d0                	mov    eax,edx
   4f379:	89 d7                	mov    edi,edx
   4f37b:	e8 00 d9 fb ff       	call   XFILE_size
   4f380:	83 f8 ff             	cmp    eax,0xffffffff
   4f383:	75 41                	jne    do_monster_branch_20
   4f385:	b0 01                	mov    al,0x1
   4f387:	ba cd bc 00 00       	mov    edx,@obj3:scrpties_cpp_variable_3                            ; fixup: num: 12183, src obj: 1, src ofs: 0x4f388, dst obj: 3, dst ofs: 0xbccd
   4f38c:	a2 14 5b 02 00       	mov    ds:@obj3:script_errors,al                                    ; fixup: num: 12182, src obj: 1, src ofs: 0x4f38d, dst obj: 3, dst ofs: 0x25b14
   4f391:	b8 d1 bc 00 00       	mov    eax,@obj3:scrpties_cpp_variable_4                            ; fixup: num: 12181, src obj: 1, src ofs: 0x4f392, dst obj: 3, dst ofs: 0xbcd1
   4f396:	e8 0d 1a 02 00       	call   fopen_
   4f39b:	89 c6                	mov    esi,eax
   4f39d:	85 c0                	test   eax,eax
   4f39f:	75 0f                	jne    do_monster_branch_19
   4f3a1:	bb dc bc 00 00       	mov    ebx,@obj3:scrpties_cpp_variable_5                            ; fixup: num: 12180, src obj: 1, src ofs: 0x4f3a2, dst obj: 3, dst ofs: 0xbcdc
   4f3a6:	ba f9 0b 00 00       	mov    edx,0xbf9
   4f3ab:	e8 80 8c fe ff       	call   _error_report
do_monster_branch_19:
   4f3b0:	57                   	push   edi
   4f3b1:	68 f0 bc 00 00       	push   @obj3:scrpties_cpp_variable_6                                ; fixup: num: 12179, src obj: 1, src ofs: 0x4f3b2, dst obj: 3, dst ofs: 0xbcf0
   4f3b6:	56                   	push   esi
   4f3b7:	e8 25 78 02 00       	call   fprintf_
   4f3bc:	83 c4 0c             	add    esp,0xc
   4f3bf:	89 f0                	mov    eax,esi
   4f3c1:	e8 78 1a 02 00       	call   fclose_
do_monster_branch_20:
   4f3c6:	80 3d 48 7e 01 00 00 	cmp    BYTE PTR ds:@obj3:script_check,0x0                           ; fixup: num: 12178, src obj: 1, src ofs: 0x4f3c8, dst obj: 3, dst ofs: 0x17e48
   4f3cd:	74 57                	je     do_monster_branch_22
   4f3cf:	8b 59 54             	mov    ebx,DWORD PTR [ecx+0x54]
   4f3d2:	85 db                	test   ebx,ebx
   4f3d4:	74 50                	je     do_monster_branch_22
   4f3d6:	89 d8                	mov    eax,ebx
   4f3d8:	89 de                	mov    esi,ebx
   4f3da:	e8 a1 d8 fb ff       	call   XFILE_size
   4f3df:	83 f8 ff             	cmp    eax,0xffffffff
   4f3e2:	75 42                	jne    do_monster_branch_22
   4f3e4:	b2 01                	mov    dl,0x1
   4f3e6:	b8 d1 bc 00 00       	mov    eax,@obj3:scrpties_cpp_variable_4                            ; fixup: num: 12177, src obj: 1, src ofs: 0x4f3e7, dst obj: 3, dst ofs: 0xbcd1
   4f3eb:	88 15 14 5b 02 00    	mov    BYTE PTR ds:@obj3:script_errors,dl                           ; fixup: num: 12176, src obj: 1, src ofs: 0x4f3ed, dst obj: 3, dst ofs: 0x25b14
   4f3f1:	ba cd bc 00 00       	mov    edx,@obj3:scrpties_cpp_variable_3                            ; fixup: num: 12175, src obj: 1, src ofs: 0x4f3f2, dst obj: 3, dst ofs: 0xbccd
   4f3f6:	e8 ad 19 02 00       	call   fopen_
   4f3fb:	89 c7                	mov    edi,eax
   4f3fd:	85 c0                	test   eax,eax
   4f3ff:	75 0f                	jne    do_monster_branch_21
   4f401:	bb dc bc 00 00       	mov    ebx,@obj3:scrpties_cpp_variable_5                            ; fixup: num: 12174, src obj: 1, src ofs: 0x4f402, dst obj: 3, dst ofs: 0xbcdc
   4f406:	ba f9 0b 00 00       	mov    edx,0xbf9
   4f40b:	e8 20 8c fe ff       	call   _error_report
do_monster_branch_21:
   4f410:	56                   	push   esi
   4f411:	68 f0 bc 00 00       	push   @obj3:scrpties_cpp_variable_6                                ; fixup: num: 12195, src obj: 1, src ofs: 0x4f412, dst obj: 3, dst ofs: 0xbcf0
   4f416:	57                   	push   edi
   4f417:	e8 c5 77 02 00       	call   fprintf_
   4f41c:	83 c4 0c             	add    esp,0xc
   4f41f:	89 f8                	mov    eax,edi
   4f421:	e8 18 1a 02 00       	call   fclose_
do_monster_branch_22:
   4f426:	80 3d 48 7e 01 00 00 	cmp    BYTE PTR ds:@obj3:script_check,0x0                           ; fixup: num: 12194, src obj: 1, src ofs: 0x4f428, dst obj: 3, dst ofs: 0x17e48
   4f42d:	74 55                	je     do_monster_branch_24
   4f42f:	8b 71 58             	mov    esi,DWORD PTR [ecx+0x58]
   4f432:	85 f6                	test   esi,esi
   4f434:	74 4e                	je     do_monster_branch_24
   4f436:	89 f0                	mov    eax,esi
   4f438:	e8 43 d8 fb ff       	call   XFILE_size
   4f43d:	83 f8 ff             	cmp    eax,0xffffffff
   4f440:	75 42                	jne    do_monster_branch_24
   4f442:	b3 01                	mov    bl,0x1
   4f444:	ba cd bc 00 00       	mov    edx,@obj3:scrpties_cpp_variable_3                            ; fixup: num: 12193, src obj: 1, src ofs: 0x4f445, dst obj: 3, dst ofs: 0xbccd
   4f449:	b8 d1 bc 00 00       	mov    eax,@obj3:scrpties_cpp_variable_4                            ; fixup: num: 12192, src obj: 1, src ofs: 0x4f44a, dst obj: 3, dst ofs: 0xbcd1
   4f44e:	88 1d 14 5b 02 00    	mov    BYTE PTR ds:@obj3:script_errors,bl                           ; fixup: num: 12191, src obj: 1, src ofs: 0x4f450, dst obj: 3, dst ofs: 0x25b14
   4f454:	e8 4f 19 02 00       	call   fopen_
   4f459:	89 c7                	mov    edi,eax
   4f45b:	85 c0                	test   eax,eax
   4f45d:	75 0f                	jne    do_monster_branch_23
   4f45f:	bb dc bc 00 00       	mov    ebx,@obj3:scrpties_cpp_variable_5                            ; fixup: num: 12190, src obj: 1, src ofs: 0x4f460, dst obj: 3, dst ofs: 0xbcdc
   4f464:	ba f9 0b 00 00       	mov    edx,0xbf9
   4f469:	e8 c2 8b fe ff       	call   _error_report
do_monster_branch_23:
   4f46e:	56                   	push   esi
   4f46f:	68 f0 bc 00 00       	push   @obj3:scrpties_cpp_variable_6                                ; fixup: num: 12189, src obj: 1, src ofs: 0x4f470, dst obj: 3, dst ofs: 0xbcf0
   4f474:	57                   	push   edi
   4f475:	e8 67 77 02 00       	call   fprintf_
   4f47a:	83 c4 0c             	add    esp,0xc
   4f47d:	89 f8                	mov    eax,edi
   4f47f:	e8 ba 19 02 00       	call   fclose_
do_monster_branch_24:
   4f484:	80 3d 48 7e 01 00 00 	cmp    BYTE PTR ds:@obj3:script_check,0x0                           ; fixup: num: 12188, src obj: 1, src ofs: 0x4f486, dst obj: 3, dst ofs: 0x17e48
   4f48b:	74 54                	je     do_monster_branch_26
   4f48d:	8b 79 5c             	mov    edi,DWORD PTR [ecx+0x5c]
   4f490:	85 ff                	test   edi,edi
   4f492:	74 4d                	je     do_monster_branch_26
   4f494:	89 f8                	mov    eax,edi
   4f496:	e8 e5 d7 fb ff       	call   XFILE_size
   4f49b:	83 f8 ff             	cmp    eax,0xffffffff
   4f49e:	75 41                	jne    do_monster_branch_26
   4f4a0:	b0 01                	mov    al,0x1
   4f4a2:	ba cd bc 00 00       	mov    edx,@obj3:scrpties_cpp_variable_3                            ; fixup: num: 12187, src obj: 1, src ofs: 0x4f4a3, dst obj: 3, dst ofs: 0xbccd
   4f4a7:	a2 14 5b 02 00       	mov    ds:@obj3:script_errors,al                                    ; fixup: num: 12186, src obj: 1, src ofs: 0x4f4a8, dst obj: 3, dst ofs: 0x25b14
   4f4ac:	b8 d1 bc 00 00       	mov    eax,@obj3:scrpties_cpp_variable_4                            ; fixup: num: 12185, src obj: 1, src ofs: 0x4f4ad, dst obj: 3, dst ofs: 0xbcd1
   4f4b1:	e8 f2 18 02 00       	call   fopen_
   4f4b6:	89 c6                	mov    esi,eax
   4f4b8:	85 c0                	test   eax,eax
   4f4ba:	75 0f                	jne    do_monster_branch_25
   4f4bc:	bb dc bc 00 00       	mov    ebx,@obj3:scrpties_cpp_variable_5                            ; fixup: num: 12205, src obj: 1, src ofs: 0x4f4bd, dst obj: 3, dst ofs: 0xbcdc
   4f4c1:	ba f9 0b 00 00       	mov    edx,0xbf9
   4f4c6:	e8 65 8b fe ff       	call   _error_report
do_monster_branch_25:
   4f4cb:	57                   	push   edi
   4f4cc:	68 f0 bc 00 00       	push   @obj3:scrpties_cpp_variable_6                                ; fixup: num: 12204, src obj: 1, src ofs: 0x4f4cd, dst obj: 3, dst ofs: 0xbcf0
   4f4d1:	56                   	push   esi
   4f4d2:	e8 0a 77 02 00       	call   fprintf_
   4f4d7:	83 c4 0c             	add    esp,0xc
   4f4da:	89 f0                	mov    eax,esi
   4f4dc:	e8 5d 19 02 00       	call   fclose_
do_monster_branch_26:
   4f4e1:	80 3d 48 7e 01 00 00 	cmp    BYTE PTR ds:@obj3:script_check,0x0                           ; fixup: num: 12203, src obj: 1, src ofs: 0x4f4e3, dst obj: 3, dst ofs: 0x17e48
   4f4e8:	74 57                	je     do_monster_branch_28
   4f4ea:	8b 69 60             	mov    ebp,DWORD PTR [ecx+0x60]
   4f4ed:	85 ed                	test   ebp,ebp
   4f4ef:	74 50                	je     do_monster_branch_28
   4f4f1:	89 e8                	mov    eax,ebp
   4f4f3:	89 ef                	mov    edi,ebp
   4f4f5:	e8 86 d7 fb ff       	call   XFILE_size
   4f4fa:	83 f8 ff             	cmp    eax,0xffffffff
   4f4fd:	75 42                	jne    do_monster_branch_28
   4f4ff:	b2 01                	mov    dl,0x1
   4f501:	b8 d1 bc 00 00       	mov    eax,@obj3:scrpties_cpp_variable_4                            ; fixup: num: 12202, src obj: 1, src ofs: 0x4f502, dst obj: 3, dst ofs: 0xbcd1
   4f506:	88 15 14 5b 02 00    	mov    BYTE PTR ds:@obj3:script_errors,dl                           ; fixup: num: 12201, src obj: 1, src ofs: 0x4f508, dst obj: 3, dst ofs: 0x25b14
   4f50c:	ba cd bc 00 00       	mov    edx,@obj3:scrpties_cpp_variable_3                            ; fixup: num: 12200, src obj: 1, src ofs: 0x4f50d, dst obj: 3, dst ofs: 0xbccd
   4f511:	e8 92 18 02 00       	call   fopen_
   4f516:	89 c6                	mov    esi,eax
   4f518:	85 c0                	test   eax,eax
   4f51a:	75 0f                	jne    do_monster_branch_27
   4f51c:	bb dc bc 00 00       	mov    ebx,@obj3:scrpties_cpp_variable_5                            ; fixup: num: 12199, src obj: 1, src ofs: 0x4f51d, dst obj: 3, dst ofs: 0xbcdc
   4f521:	ba f9 0b 00 00       	mov    edx,0xbf9
   4f526:	e8 05 8b fe ff       	call   _error_report
do_monster_branch_27:
   4f52b:	57                   	push   edi
   4f52c:	68 f0 bc 00 00       	push   @obj3:scrpties_cpp_variable_6                                ; fixup: num: 12198, src obj: 1, src ofs: 0x4f52d, dst obj: 3, dst ofs: 0xbcf0
   4f531:	56                   	push   esi
   4f532:	e8 aa 76 02 00       	call   fprintf_
   4f537:	83 c4 0c             	add    esp,0xc
   4f53a:	89 f0                	mov    eax,esi
   4f53c:	e8 fd 18 02 00       	call   fclose_
do_monster_branch_28:
   4f541:	80 3d 48 7e 01 00 00 	cmp    BYTE PTR ds:@obj3:script_check,0x0                           ; fixup: num: 12197, src obj: 1, src ofs: 0x4f543, dst obj: 3, dst ofs: 0x17e48
   4f548:	74 55                	je     do_monster_branch_30
   4f54a:	8b 41 64             	mov    eax,DWORD PTR [ecx+0x64]
   4f54d:	85 c0                	test   eax,eax
   4f54f:	74 4e                	je     do_monster_branch_30
   4f551:	89 c6                	mov    esi,eax
   4f553:	e8 28 d7 fb ff       	call   XFILE_size
   4f558:	83 f8 ff             	cmp    eax,0xffffffff
   4f55b:	75 42                	jne    do_monster_branch_30
   4f55d:	b3 01                	mov    bl,0x1
   4f55f:	ba cd bc 00 00       	mov    edx,@obj3:scrpties_cpp_variable_3                            ; fixup: num: 12196, src obj: 1, src ofs: 0x4f560, dst obj: 3, dst ofs: 0xbccd
   4f564:	b8 d1 bc 00 00       	mov    eax,@obj3:scrpties_cpp_variable_4                            ; fixup: num: 12086, src obj: 1, src ofs: 0x4f565, dst obj: 3, dst ofs: 0xbcd1
   4f569:	88 1d 14 5b 02 00    	mov    BYTE PTR ds:@obj3:script_errors,bl                           ; fixup: num: 12085, src obj: 1, src ofs: 0x4f56b, dst obj: 3, dst ofs: 0x25b14
   4f56f:	e8 34 18 02 00       	call   fopen_
   4f574:	89 c7                	mov    edi,eax
   4f576:	85 c0                	test   eax,eax
   4f578:	75 0f                	jne    do_monster_branch_29
   4f57a:	bb dc bc 00 00       	mov    ebx,@obj3:scrpties_cpp_variable_5                            ; fixup: num: 12084, src obj: 1, src ofs: 0x4f57b, dst obj: 3, dst ofs: 0xbcdc
   4f57f:	ba f9 0b 00 00       	mov    edx,0xbf9
   4f584:	e8 a7 8a fe ff       	call   _error_report
do_monster_branch_29:
   4f589:	56                   	push   esi
   4f58a:	68 f0 bc 00 00       	push   @obj3:scrpties_cpp_variable_6                                ; fixup: num: 12083, src obj: 1, src ofs: 0x4f58b, dst obj: 3, dst ofs: 0xbcf0
   4f58f:	57                   	push   edi
   4f590:	e8 4c 76 02 00       	call   fprintf_
   4f595:	83 c4 0c             	add    esp,0xc
   4f598:	89 f8                	mov    eax,edi
   4f59a:	e8 9f 18 02 00       	call   fclose_
do_monster_branch_30:
   4f59f:	80 3d 48 7e 01 00 00 	cmp    BYTE PTR ds:@obj3:script_check,0x0                           ; fixup: num: 12082, src obj: 1, src ofs: 0x4f5a1, dst obj: 3, dst ofs: 0x17e48
   4f5a6:	74 56                	je     do_monster_branch_32
   4f5a8:	8b 51 68             	mov    edx,DWORD PTR [ecx+0x68]
   4f5ab:	85 d2                	test   edx,edx
   4f5ad:	74 4f                	je     do_monster_branch_32
   4f5af:	89 d0                	mov    eax,edx
   4f5b1:	89 d7                	mov    edi,edx
   4f5b3:	e8 c8 d6 fb ff       	call   XFILE_size
   4f5b8:	83 f8 ff             	cmp    eax,0xffffffff
   4f5bb:	75 41                	jne    do_monster_branch_32
   4f5bd:	b0 01                	mov    al,0x1
   4f5bf:	ba cd bc 00 00       	mov    edx,@obj3:scrpties_cpp_variable_3                            ; fixup: num: 12081, src obj: 1, src ofs: 0x4f5c0, dst obj: 3, dst ofs: 0xbccd
   4f5c4:	a2 14 5b 02 00       	mov    ds:@obj3:script_errors,al                                    ; fixup: num: 12080, src obj: 1, src ofs: 0x4f5c5, dst obj: 3, dst ofs: 0x25b14
   4f5c9:	b8 d1 bc 00 00       	mov    eax,@obj3:scrpties_cpp_variable_4                            ; fixup: num: 12079, src obj: 1, src ofs: 0x4f5ca, dst obj: 3, dst ofs: 0xbcd1
   4f5ce:	e8 d5 17 02 00       	call   fopen_
   4f5d3:	89 c6                	mov    esi,eax
   4f5d5:	85 c0                	test   eax,eax
   4f5d7:	75 0f                	jne    do_monster_branch_31
   4f5d9:	bb dc bc 00 00       	mov    ebx,@obj3:scrpties_cpp_variable_5                            ; fixup: num: 12208, src obj: 1, src ofs: 0x4f5da, dst obj: 3, dst ofs: 0xbcdc
   4f5de:	ba f9 0b 00 00       	mov    edx,0xbf9
   4f5e3:	e8 48 8a fe ff       	call   _error_report
do_monster_branch_31:
   4f5e8:	57                   	push   edi
   4f5e9:	68 f0 bc 00 00       	push   @obj3:scrpties_cpp_variable_6                                ; fixup: num: 12207, src obj: 1, src ofs: 0x4f5ea, dst obj: 3, dst ofs: 0xbcf0
   4f5ee:	56                   	push   esi
   4f5ef:	e8 ed 75 02 00       	call   fprintf_
   4f5f4:	83 c4 0c             	add    esp,0xc
   4f5f7:	89 f0                	mov    eax,esi
   4f5f9:	e8 40 18 02 00       	call   fclose_
do_monster_branch_32:
   4f5fe:	80 3d 48 7e 01 00 00 	cmp    BYTE PTR ds:@obj3:script_check,0x0                           ; fixup: num: 12206, src obj: 1, src ofs: 0x4f600, dst obj: 3, dst ofs: 0x17e48
   4f605:	74 57                	je     do_monster_branch_34
   4f607:	8b 59 6c             	mov    ebx,DWORD PTR [ecx+0x6c]
   4f60a:	85 db                	test   ebx,ebx
   4f60c:	74 50                	je     do_monster_branch_34
   4f60e:	89 d8                	mov    eax,ebx
   4f610:	89 de                	mov    esi,ebx
   4f612:	e8 69 d6 fb ff       	call   XFILE_size
   4f617:	83 f8 ff             	cmp    eax,0xffffffff
   4f61a:	75 42                	jne    do_monster_branch_34
   4f61c:	b2 01                	mov    dl,0x1
   4f61e:	b8 d1 bc 00 00       	mov    eax,@obj3:scrpties_cpp_variable_4                            ; fixup: num: 12098, src obj: 1, src ofs: 0x4f61f, dst obj: 3, dst ofs: 0xbcd1
   4f623:	88 15 14 5b 02 00    	mov    BYTE PTR ds:@obj3:script_errors,dl                           ; fixup: num: 12097, src obj: 1, src ofs: 0x4f625, dst obj: 3, dst ofs: 0x25b14
   4f629:	ba cd bc 00 00       	mov    edx,@obj3:scrpties_cpp_variable_3                            ; fixup: num: 12096, src obj: 1, src ofs: 0x4f62a, dst obj: 3, dst ofs: 0xbccd
   4f62e:	e8 75 17 02 00       	call   fopen_
   4f633:	89 c7                	mov    edi,eax
   4f635:	85 c0                	test   eax,eax
   4f637:	75 0f                	jne    do_monster_branch_33
   4f639:	bb dc bc 00 00       	mov    ebx,@obj3:scrpties_cpp_variable_5                            ; fixup: num: 12095, src obj: 1, src ofs: 0x4f63a, dst obj: 3, dst ofs: 0xbcdc
   4f63e:	ba f9 0b 00 00       	mov    edx,0xbf9
   4f643:	e8 e8 89 fe ff       	call   _error_report
do_monster_branch_33:
   4f648:	56                   	push   esi
   4f649:	68 f0 bc 00 00       	push   @obj3:scrpties_cpp_variable_6                                ; fixup: num: 12094, src obj: 1, src ofs: 0x4f64a, dst obj: 3, dst ofs: 0xbcf0
   4f64e:	57                   	push   edi
   4f64f:	e8 8d 75 02 00       	call   fprintf_
   4f654:	83 c4 0c             	add    esp,0xc
   4f657:	89 f8                	mov    eax,edi
   4f659:	e8 e0 17 02 00       	call   fclose_
do_monster_branch_34:
   4f65e:	e8 dd 7b fe ff       	call   return_word
   4f663:	89 c3                	mov    ebx,eax
   4f665:	85 c0                	test   eax,eax
   4f667:	75 19                	jne    do_monster_branch_35
   4f669:	8b 35 38 36 02 00    	mov    esi,DWORD PTR ds:@obj3:script_line_number                    ; fixup: num: 12093, src obj: 1, src ofs: 0x4f66b, dst obj: 3, dst ofs: 0x23638
   4f66f:	56                   	push   esi
   4f670:	68 d5 c2 00 00       	push   @obj3:scrpties_cpp_variable_102                              ; fixup: num: 12092, src obj: 1, src ofs: 0x4f671, dst obj: 3, dst ofs: 0xc2d5
   4f675:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 12091, src obj: 1, src ofs: 0x4f676, dst obj: 3, dst ofs: 0x237fc
   4f67a:	e8 62 15 02 00       	call   sprintf_
   4f67f:	83 c4 0c             	add    esp,0xc
do_monster_branch_35:
   4f682:	ba ff c2 00 00       	mov    edx,@obj3:scrpties_cpp_variable_103                          ; fixup: num: 12090, src obj: 1, src ofs: 0x4f683, dst obj: 3, dst ofs: 0xc2ff
   4f687:	89 d8                	mov    eax,ebx
   4f689:	e8 a2 6d 02 00       	call   strcmp_
   4f68e:	85 c0                	test   eax,eax
   4f690:	0f 94 c0             	sete   al
   4f693:	88 81 80 00 00 00    	mov    BYTE PTR [ecx+0x80],al
   4f699:	85 db                	test   ebx,ebx
   4f69b:	74 07                	je     do_monster_branch_36
   4f69d:	89 d8                	mov    eax,ebx
   4f69f:	e8 44 1d 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
do_monster_branch_36:
   4f6a4:	e8 97 7b fe ff       	call   return_word
   4f6a9:	89 c3                	mov    ebx,eax
   4f6ab:	85 c0                	test   eax,eax
   4f6ad:	75 19                	jne    do_monster_branch_37
   4f6af:	8b 3d 38 36 02 00    	mov    edi,DWORD PTR ds:@obj3:script_line_number                    ; fixup: num: 12089, src obj: 1, src ofs: 0x4f6b1, dst obj: 3, dst ofs: 0x23638
   4f6b5:	57                   	push   edi
   4f6b6:	68 01 c3 00 00       	push   @obj3:scrpties_cpp_variable_104                              ; fixup: num: 12088, src obj: 1, src ofs: 0x4f6b7, dst obj: 3, dst ofs: 0xc301
   4f6bb:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 12087, src obj: 1, src ofs: 0x4f6bc, dst obj: 3, dst ofs: 0x237fc
   4f6c0:	e8 1c 15 02 00       	call   sprintf_
   4f6c5:	83 c4 0c             	add    esp,0xc
do_monster_branch_37:
   4f6c8:	ba 2c c3 00 00       	mov    edx,@obj3:scrpties_cpp_variable_105                          ; fixup: num: 12099, src obj: 1, src ofs: 0x4f6c9, dst obj: 3, dst ofs: 0xc32c
   4f6cd:	89 d8                	mov    eax,ebx
   4f6cf:	e8 5c 6d 02 00       	call   strcmp_
   4f6d4:	85 c0                	test   eax,eax
   4f6d6:	0f 94 c0             	sete   al
   4f6d9:	88 81 81 00 00 00    	mov    BYTE PTR [ecx+0x81],al
   4f6df:	85 db                	test   ebx,ebx
   4f6e1:	74 07                	je     do_monster_branch_38
   4f6e3:	89 d8                	mov    eax,ebx
   4f6e5:	e8 fe 1c 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
do_monster_branch_38:
   4f6ea:	e8 51 7b fe ff       	call   return_word
   4f6ef:	89 41 2c             	mov    DWORD PTR [ecx+0x2c],eax
   4f6f2:	e8 49 7b fe ff       	call   return_word
   4f6f7:	85 c0                	test   eax,eax
   4f6f9:	75 0c                	jne    do_monster_branch_39
   4f6fb:	c7 81 88 00 00 00 14 00 00 00 	mov    DWORD PTR [ecx+0x88],0x14
   4f705:	eb 0b                	jmp    do_monster_branch_40
do_monster_branch_39:
   4f707:	e8 c8 72 02 00       	call   atoi_
   4f70c:	89 81 88 00 00 00    	mov    DWORD PTR [ecx+0x88],eax
do_monster_branch_40:
   4f712:	e8 29 7b fe ff       	call   return_word
   4f717:	85 c0                	test   eax,eax
   4f719:	75 0c                	jne    do_monster_branch_41
   4f71b:	c7 81 8c 00 00 00 6b 02 00 00 	mov    DWORD PTR [ecx+0x8c],0x26b
   4f725:	eb 0b                	jmp    do_monster_branch_42
do_monster_branch_41:
   4f727:	e8 a8 72 02 00       	call   atoi_
   4f72c:	89 81 8c 00 00 00    	mov    DWORD PTR [ecx+0x8c],eax
do_monster_branch_42:
   4f732:	c6 81 84 00 00 00 00 	mov    BYTE PTR [ecx+0x84],0x0
   4f739:	c7 41 28 00 00 00 00 	mov    DWORD PTR [ecx+0x28],0x0
   4f740:	8b 41 10             	mov    eax,DWORD PTR [ecx+0x10]
   4f743:	89 41 14             	mov    DWORD PTR [ecx+0x14],eax
   4f746:	8a 81 81 00 00 00    	mov    al,BYTE PTR [ecx+0x81]
   4f74c:	8a b1 80 00 00 00    	mov    dh,BYTE PTR [ecx+0x80]
   4f752:	88 81 83 00 00 00    	mov    BYTE PTR [ecx+0x83],al
   4f758:	84 f6                	test   dh,dh
   4f75a:	74 07                	je     do_monster_branch_43
   4f75c:	c6 81 81 00 00 00 01 	mov    BYTE PTR [ecx+0x81],0x1
do_monster_branch_43:
   4f763:	83 79 40 00          	cmp    DWORD PTR [ecx+0x40],0x0
   4f767:	74 06                	je     do_monster_branch_44
   4f769:	83 79 34 00          	cmp    DWORD PTR [ecx+0x34],0x0
   4f76d:	75 2a                	jne    do_monster_branch_45
do_monster_branch_44:
   4f76f:	8b 15 38 36 02 00    	mov    edx,DWORD PTR ds:@obj3:script_line_number                    ; fixup: num: 12107, src obj: 1, src ofs: 0x4f771, dst obj: 3, dst ofs: 0x23638
   4f775:	52                   	push   edx
   4f776:	68 2e c3 00 00       	push   @obj3:scrpties_cpp_variable_106                              ; fixup: num: 12106, src obj: 1, src ofs: 0x4f777, dst obj: 3, dst ofs: 0xc32e
   4f77b:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 12105, src obj: 1, src ofs: 0x4f77c, dst obj: 3, dst ofs: 0x237fc
   4f780:	bb fc 37 02 00       	mov    ebx,@obj3:log_buffer                                         ; fixup: num: 12104, src obj: 1, src ofs: 0x4f781, dst obj: 3, dst ofs: 0x237fc
   4f785:	e8 57 14 02 00       	call   sprintf_
   4f78a:	83 c4 0c             	add    esp,0xc
   4f78d:	ba e2 02 00 00       	mov    edx,0x2e2
   4f792:	31 c0                	xor    eax,eax
   4f794:	e8 97 88 fe ff       	call   _error_report
do_monster_branch_45:
   4f799:	8b 1d b4 5a 02 00    	mov    ebx,DWORD PTR ds:@obj3:monster_list                          ; fixup: num: 12103, src obj: 1, src ofs: 0x4f79b, dst obj: 3, dst ofs: 0x25ab4
   4f79f:	85 db                	test   ebx,ebx
   4f7a1:	75 08                	jne    do_monster_branch_46
   4f7a3:	89 0d b4 5a 02 00    	mov    DWORD PTR ds:@obj3:monster_list,ecx                          ; fixup: num: 12102, src obj: 1, src ofs: 0x4f7a5, dst obj: 3, dst ofs: 0x25ab4
   4f7a9:	eb 21                	jmp    do_monster_branch_49
do_monster_branch_46:
   4f7ab:	8b b3 90 00 00 00    	mov    esi,DWORD PTR [ebx+0x90]
   4f7b1:	89 d8                	mov    eax,ebx
   4f7b3:	85 f6                	test   esi,esi
   4f7b5:	74 0f                	je     do_monster_branch_48
do_monster_branch_47:
   4f7b7:	8b 80 90 00 00 00    	mov    eax,DWORD PTR [eax+0x90]
   4f7bd:	83 b8 90 00 00 00 00 	cmp    DWORD PTR [eax+0x90],0x0
   4f7c4:	75 f1                	jne    do_monster_branch_47
do_monster_branch_48:
   4f7c6:	89 88 90 00 00 00    	mov    DWORD PTR [eax+0x90],ecx
do_monster_branch_49:
   4f7cc:	ff 05 f8 5a 02 00    	inc    DWORD PTR ds:@obj3:monster_ctr                               ; fixup: num: 12101, src obj: 1, src ofs: 0x4f7ce, dst obj: 3, dst ofs: 0x25af8
   4f7d2:	5d                   	pop    ebp
   4f7d3:	5f                   	pop    edi
   4f7d4:	5e                   	pop    esi
   4f7d5:	5a                   	pop    edx
   4f7d6:	59                   	pop    ecx
   4f7d7:	5b                   	pop    ebx
   4f7d8:	c3                   	ret    
   4f7d9:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   4f7df:	90                   	nop

;-------------------------------------------------
;  Function 'do_npc'                             -
;-------------------------------------------------
do_npc:
   4f7e0:	53                   	push   ebx
   4f7e1:	51                   	push   ecx
   4f7e2:	52                   	push   edx
   4f7e3:	56                   	push   esi
   4f7e4:	57                   	push   edi
   4f7e5:	55                   	push   ebp
   4f7e6:	b8 3c 00 00 00       	mov    eax,0x3c
   4f7eb:	e8 a3 1c 02 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   4f7f0:	89 c1                	mov    ecx,eax
   4f7f2:	85 c0                	test   eax,eax
   4f7f4:	75 0f                	jne    do_npc_branch_1
   4f7f6:	bb 60 c3 00 00       	mov    ebx,@obj3:scrpties_cpp_variable_107                          ; fixup: num: 12100, src obj: 1, src ofs: 0x4f7f7, dst obj: 3, dst ofs: 0xc360
   4f7fb:	ba 0e 03 00 00       	mov    edx,0x30e
   4f800:	e8 2b 88 fe ff       	call   _error_report
do_npc_branch_1:
   4f805:	bb 3c 00 00 00       	mov    ebx,0x3c
   4f80a:	89 c8                	mov    eax,ecx
   4f80c:	31 d2                	xor    edx,edx
   4f80e:	e8 bd 1b 02 00       	call   memset_
   4f813:	c7 41 38 00 00 00 00 	mov    DWORD PTR [ecx+0x38],0x0
   4f81a:	e8 41 d1 fd ff       	call   popsp
   4f81f:	89 41 0c             	mov    DWORD PTR [ecx+0xc],eax
   4f822:	e8 39 d1 fd ff       	call   popsp
   4f827:	89 41 08             	mov    DWORD PTR [ecx+0x8],eax
   4f82a:	e8 31 d1 fd ff       	call   popsp
   4f82f:	89 41 04             	mov    DWORD PTR [ecx+0x4],eax
   4f832:	e8 29 d1 fd ff       	call   popsp
   4f837:	89 01                	mov    DWORD PTR [ecx],eax
   4f839:	e8 02 7a fe ff       	call   return_word
   4f83e:	89 41 20             	mov    DWORD PTR [ecx+0x20],eax
   4f841:	e8 fa 79 fe ff       	call   return_word
   4f846:	89 41 14             	mov    DWORD PTR [ecx+0x14],eax
   4f849:	80 3d 48 7e 01 00 00 	cmp    BYTE PTR ds:@obj3:script_check,0x0                           ; fixup: num: 12114, src obj: 1, src ofs: 0x4f84b, dst obj: 3, dst ofs: 0x17e48
   4f850:	74 57                	je     do_npc_branch_3
   4f852:	8b 51 14             	mov    edx,DWORD PTR [ecx+0x14]
   4f855:	85 d2                	test   edx,edx
   4f857:	74 50                	je     do_npc_branch_3
   4f859:	89 d0                	mov    eax,edx
   4f85b:	89 d6                	mov    esi,edx
   4f85d:	e8 1e d4 fb ff       	call   XFILE_size
   4f862:	83 f8 ff             	cmp    eax,0xffffffff
   4f865:	75 42                	jne    do_npc_branch_3
   4f867:	b2 01                	mov    dl,0x1
   4f869:	b8 d1 bc 00 00       	mov    eax,@obj3:scrpties_cpp_variable_4                            ; fixup: num: 12113, src obj: 1, src ofs: 0x4f86a, dst obj: 3, dst ofs: 0xbcd1
   4f86e:	88 15 14 5b 02 00    	mov    BYTE PTR ds:@obj3:script_errors,dl                           ; fixup: num: 12112, src obj: 1, src ofs: 0x4f870, dst obj: 3, dst ofs: 0x25b14
   4f874:	ba cd bc 00 00       	mov    edx,@obj3:scrpties_cpp_variable_3                            ; fixup: num: 12111, src obj: 1, src ofs: 0x4f875, dst obj: 3, dst ofs: 0xbccd
   4f879:	e8 2a 15 02 00       	call   fopen_
   4f87e:	89 c7                	mov    edi,eax
   4f880:	85 c0                	test   eax,eax
   4f882:	75 0f                	jne    do_npc_branch_2
   4f884:	bb dc bc 00 00       	mov    ebx,@obj3:scrpties_cpp_variable_5                            ; fixup: num: 12110, src obj: 1, src ofs: 0x4f885, dst obj: 3, dst ofs: 0xbcdc
   4f889:	ba f9 0b 00 00       	mov    edx,0xbf9
   4f88e:	e8 9d 87 fe ff       	call   _error_report
do_npc_branch_2:
   4f893:	56                   	push   esi
   4f894:	68 f0 bc 00 00       	push   @obj3:scrpties_cpp_variable_6                                ; fixup: num: 12109, src obj: 1, src ofs: 0x4f895, dst obj: 3, dst ofs: 0xbcf0
   4f899:	57                   	push   edi
   4f89a:	e8 42 73 02 00       	call   fprintf_
   4f89f:	83 c4 0c             	add    esp,0xc
   4f8a2:	89 f8                	mov    eax,edi
   4f8a4:	e8 95 15 02 00       	call   fclose_
do_npc_branch_3:
   4f8a9:	e8 92 79 fe ff       	call   return_word
   4f8ae:	89 41 18             	mov    DWORD PTR [ecx+0x18],eax
   4f8b1:	e8 8a 79 fe ff       	call   return_word
   4f8b6:	89 41 1c             	mov    DWORD PTR [ecx+0x1c],eax
   4f8b9:	e8 82 79 fe ff       	call   return_word
   4f8be:	89 c3                	mov    ebx,eax
   4f8c0:	85 c0                	test   eax,eax
   4f8c2:	75 19                	jne    do_npc_branch_4
   4f8c4:	8b 35 38 36 02 00    	mov    esi,DWORD PTR ds:@obj3:script_line_number                    ; fixup: num: 12108, src obj: 1, src ofs: 0x4f8c6, dst obj: 3, dst ofs: 0x23638
   4f8ca:	56                   	push   esi
   4f8cb:	68 78 c3 00 00       	push   @obj3:scrpties_cpp_variable_108                              ; fixup: num: 12123, src obj: 1, src ofs: 0x4f8cc, dst obj: 3, dst ofs: 0xc378
   4f8d0:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 12122, src obj: 1, src ofs: 0x4f8d1, dst obj: 3, dst ofs: 0x237fc
   4f8d5:	e8 07 13 02 00       	call   sprintf_
   4f8da:	83 c4 0c             	add    esp,0xc
do_npc_branch_4:
   4f8dd:	ba a2 c3 00 00       	mov    edx,@obj3:scrpties_cpp_variable_109                          ; fixup: num: 12121, src obj: 1, src ofs: 0x4f8de, dst obj: 3, dst ofs: 0xc3a2
   4f8e2:	89 d8                	mov    eax,ebx
   4f8e4:	e8 47 6b 02 00       	call   strcmp_
   4f8e9:	85 c0                	test   eax,eax
   4f8eb:	0f 94 c0             	sete   al
   4f8ee:	88 41 25             	mov    BYTE PTR [ecx+0x25],al
   4f8f1:	85 db                	test   ebx,ebx
   4f8f3:	74 07                	je     do_npc_branch_5
   4f8f5:	89 d8                	mov    eax,ebx
   4f8f7:	e8 ec 1a 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
do_npc_branch_5:
   4f8fc:	e8 3f 79 fe ff       	call   return_word
   4f901:	89 c3                	mov    ebx,eax
   4f903:	85 c0                	test   eax,eax
   4f905:	75 19                	jne    do_npc_branch_6
   4f907:	8b 3d 38 36 02 00    	mov    edi,DWORD PTR ds:@obj3:script_line_number                    ; fixup: num: 12120, src obj: 1, src ofs: 0x4f909, dst obj: 3, dst ofs: 0x23638
   4f90d:	57                   	push   edi
   4f90e:	68 a4 c3 00 00       	push   @obj3:scrpties_cpp_variable_110                              ; fixup: num: 12119, src obj: 1, src ofs: 0x4f90f, dst obj: 3, dst ofs: 0xc3a4
   4f913:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 12118, src obj: 1, src ofs: 0x4f914, dst obj: 3, dst ofs: 0x237fc
   4f918:	e8 c4 12 02 00       	call   sprintf_
   4f91d:	83 c4 0c             	add    esp,0xc
do_npc_branch_6:
   4f920:	ba cf c3 00 00       	mov    edx,@obj3:scrpties_cpp_variable_111                          ; fixup: num: 12117, src obj: 1, src ofs: 0x4f921, dst obj: 3, dst ofs: 0xc3cf
   4f925:	89 d8                	mov    eax,ebx
   4f927:	e8 04 6b 02 00       	call   strcmp_
   4f92c:	85 c0                	test   eax,eax
   4f92e:	0f 94 c0             	sete   al
   4f931:	88 41 26             	mov    BYTE PTR [ecx+0x26],al
   4f934:	85 db                	test   ebx,ebx
   4f936:	74 07                	je     do_npc_branch_7
   4f938:	89 d8                	mov    eax,ebx
   4f93a:	e8 a9 1a 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
do_npc_branch_7:
   4f93f:	8a 41 26             	mov    al,BYTE PTR [ecx+0x26]
   4f942:	88 41 28             	mov    BYTE PTR [ecx+0x28],al
   4f945:	e8 f6 78 fe ff       	call   return_word
   4f94a:	89 41 10             	mov    DWORD PTR [ecx+0x10],eax
   4f94d:	e8 ee 78 fe ff       	call   return_word
   4f952:	8a 35 48 7e 01 00    	mov    dh,BYTE PTR ds:@obj3:script_check                            ; fixup: num: 12116, src obj: 1, src ofs: 0x4f954, dst obj: 3, dst ofs: 0x17e48
   4f958:	89 41 30             	mov    DWORD PTR [ecx+0x30],eax
   4f95b:	84 f6                	test   dh,dh
   4f95d:	74 52                	je     do_npc_branch_9
   4f95f:	85 c0                	test   eax,eax
   4f961:	74 4e                	je     do_npc_branch_9
   4f963:	89 c6                	mov    esi,eax
   4f965:	e8 16 d3 fb ff       	call   XFILE_size
   4f96a:	83 f8 ff             	cmp    eax,0xffffffff
   4f96d:	75 42                	jne    do_npc_branch_9
   4f96f:	b3 01                	mov    bl,0x1
   4f971:	ba cd bc 00 00       	mov    edx,@obj3:scrpties_cpp_variable_3                            ; fixup: num: 12115, src obj: 1, src ofs: 0x4f972, dst obj: 3, dst ofs: 0xbccd
   4f976:	b8 d1 bc 00 00       	mov    eax,@obj3:scrpties_cpp_variable_4                            ; fixup: num: 12133, src obj: 1, src ofs: 0x4f977, dst obj: 3, dst ofs: 0xbcd1
   4f97b:	88 1d 14 5b 02 00    	mov    BYTE PTR ds:@obj3:script_errors,bl                           ; fixup: num: 12132, src obj: 1, src ofs: 0x4f97d, dst obj: 3, dst ofs: 0x25b14
   4f981:	e8 22 14 02 00       	call   fopen_
   4f986:	89 c7                	mov    edi,eax
   4f988:	85 c0                	test   eax,eax
   4f98a:	75 0f                	jne    do_npc_branch_8
   4f98c:	bb dc bc 00 00       	mov    ebx,@obj3:scrpties_cpp_variable_5                            ; fixup: num: 12131, src obj: 1, src ofs: 0x4f98d, dst obj: 3, dst ofs: 0xbcdc
   4f991:	ba f9 0b 00 00       	mov    edx,0xbf9
   4f996:	e8 95 86 fe ff       	call   _error_report
do_npc_branch_8:
   4f99b:	56                   	push   esi
   4f99c:	68 f0 bc 00 00       	push   @obj3:scrpties_cpp_variable_6                                ; fixup: num: 12130, src obj: 1, src ofs: 0x4f99d, dst obj: 3, dst ofs: 0xbcf0
   4f9a1:	57                   	push   edi
   4f9a2:	e8 3a 72 02 00       	call   fprintf_
   4f9a7:	83 c4 0c             	add    esp,0xc
   4f9aa:	89 f8                	mov    eax,edi
   4f9ac:	e8 8d 14 02 00       	call   fclose_
do_npc_branch_9:
   4f9b1:	e8 8a 78 fe ff       	call   return_word
   4f9b6:	c6 41 24 00          	mov    BYTE PTR [ecx+0x24],0x0
   4f9ba:	c7 41 2c 00 00 00 00 	mov    DWORD PTR [ecx+0x2c],0x0
   4f9c1:	8a 79 25             	mov    bh,BYTE PTR [ecx+0x25]
   4f9c4:	89 41 34             	mov    DWORD PTR [ecx+0x34],eax
   4f9c7:	84 ff                	test   bh,bh
   4f9c9:	74 04                	je     do_npc_branch_10
   4f9cb:	c6 41 26 01          	mov    BYTE PTR [ecx+0x26],0x1
do_npc_branch_10:
   4f9cf:	83 79 20 00          	cmp    DWORD PTR [ecx+0x20],0x0
   4f9d3:	74 0c                	je     do_npc_branch_11
   4f9d5:	83 79 14 00          	cmp    DWORD PTR [ecx+0x14],0x0
   4f9d9:	74 06                	je     do_npc_branch_11
   4f9db:	83 79 18 00          	cmp    DWORD PTR [ecx+0x18],0x0
   4f9df:	75 2a                	jne    do_npc_branch_12
do_npc_branch_11:
   4f9e1:	8b 35 38 36 02 00    	mov    esi,DWORD PTR ds:@obj3:script_line_number                    ; fixup: num: 12129, src obj: 1, src ofs: 0x4f9e3, dst obj: 3, dst ofs: 0x23638
   4f9e7:	56                   	push   esi
   4f9e8:	68 d1 c3 00 00       	push   @obj3:scrpties_cpp_variable_112                              ; fixup: num: 12128, src obj: 1, src ofs: 0x4f9e9, dst obj: 3, dst ofs: 0xc3d1
   4f9ed:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 12127, src obj: 1, src ofs: 0x4f9ee, dst obj: 3, dst ofs: 0x237fc
   4f9f2:	bb fc 37 02 00       	mov    ebx,@obj3:log_buffer                                         ; fixup: num: 12126, src obj: 1, src ofs: 0x4f9f3, dst obj: 3, dst ofs: 0x237fc
   4f9f7:	e8 e5 11 02 00       	call   sprintf_
   4f9fc:	83 c4 0c             	add    esp,0xc
   4f9ff:	ba 35 03 00 00       	mov    edx,0x335
   4fa04:	31 c0                	xor    eax,eax
   4fa06:	e8 25 86 fe ff       	call   _error_report
do_npc_branch_12:
   4fa0b:	8b 3d b8 5a 02 00    	mov    edi,DWORD PTR ds:@obj3:npc_list                              ; fixup: num: 12125, src obj: 1, src ofs: 0x4fa0d, dst obj: 3, dst ofs: 0x25ab8
   4fa11:	85 ff                	test   edi,edi
   4fa13:	75 08                	jne    do_npc_branch_13
   4fa15:	89 0d b8 5a 02 00    	mov    DWORD PTR ds:@obj3:npc_list,ecx                              ; fixup: num: 12124, src obj: 1, src ofs: 0x4fa17, dst obj: 3, dst ofs: 0x25ab8
   4fa1b:	eb 15                	jmp    do_npc_branch_16
do_npc_branch_13:
   4fa1d:	8b 6f 38             	mov    ebp,DWORD PTR [edi+0x38]
   4fa20:	89 f8                	mov    eax,edi
   4fa22:	85 ed                	test   ebp,ebp
   4fa24:	74 09                	je     do_npc_branch_15
do_npc_branch_14:
   4fa26:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
   4fa29:	83 78 38 00          	cmp    DWORD PTR [eax+0x38],0x0
   4fa2d:	75 f7                	jne    do_npc_branch_14
do_npc_branch_15:
   4fa2f:	89 48 38             	mov    DWORD PTR [eax+0x38],ecx
do_npc_branch_16:
   4fa32:	ff 05 fc 5a 02 00    	inc    DWORD PTR ds:@obj3:npc_ctr                                   ; fixup: num: 12136, src obj: 1, src ofs: 0x4fa34, dst obj: 3, dst ofs: 0x25afc
   4fa38:	5d                   	pop    ebp
   4fa39:	5f                   	pop    edi
   4fa3a:	5e                   	pop    esi
   4fa3b:	5a                   	pop    edx
   4fa3c:	59                   	pop    ecx
   4fa3d:	5b                   	pop    ebx
   4fa3e:	c3                   	ret    
   4fa3f:	90                   	nop

;-------------------------------------------------
;  Function 'do_object'                          -
;-------------------------------------------------
do_object:
   4fa40:	53                   	push   ebx
   4fa41:	51                   	push   ecx
   4fa42:	52                   	push   edx
   4fa43:	56                   	push   esi
   4fa44:	57                   	push   edi
   4fa45:	55                   	push   ebp
   4fa46:	b8 58 00 00 00       	mov    eax,0x58
   4fa4b:	e8 43 1a 02 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   4fa50:	89 c1                	mov    ecx,eax
   4fa52:	85 c0                	test   eax,eax
   4fa54:	75 0f                	jne    do_object_branch_1
   4fa56:	bb 03 c4 00 00       	mov    ebx,@obj3:scrpties_cpp_variable_113                          ; fixup: num: 12135, src obj: 1, src ofs: 0x4fa57, dst obj: 3, dst ofs: 0xc403
   4fa5b:	ba 63 03 00 00       	mov    edx,0x363
   4fa60:	e8 cb 85 fe ff       	call   _error_report
do_object_branch_1:
   4fa65:	bb 58 00 00 00       	mov    ebx,0x58
   4fa6a:	89 c8                	mov    eax,ecx
   4fa6c:	31 d2                	xor    edx,edx
   4fa6e:	e8 5d 19 02 00       	call   memset_
   4fa73:	e8 e8 ce fd ff       	call   popsp
   4fa78:	89 41 20             	mov    DWORD PTR [ecx+0x20],eax
   4fa7b:	e8 e0 ce fd ff       	call   popsp
   4fa80:	89 41 08             	mov    DWORD PTR [ecx+0x8],eax
   4fa83:	e8 d8 ce fd ff       	call   popsp
   4fa88:	89 41 1c             	mov    DWORD PTR [ecx+0x1c],eax
   4fa8b:	e8 d0 ce fd ff       	call   popsp
   4fa90:	89 41 18             	mov    DWORD PTR [ecx+0x18],eax
   4fa93:	e8 c8 ce fd ff       	call   popsp
   4fa98:	89 41 04             	mov    DWORD PTR [ecx+0x4],eax
   4fa9b:	e8 c0 ce fd ff       	call   popsp
   4faa0:	89 01                	mov    DWORD PTR [ecx],eax
   4faa2:	e8 99 77 fe ff       	call   return_word
   4faa7:	89 41 48             	mov    DWORD PTR [ecx+0x48],eax
   4faaa:	e8 91 77 fe ff       	call   return_word
   4faaf:	89 41 30             	mov    DWORD PTR [ecx+0x30],eax
   4fab2:	e8 89 77 fe ff       	call   return_word
   4fab7:	89 41 28             	mov    DWORD PTR [ecx+0x28],eax
   4faba:	80 3d 48 7e 01 00 00 	cmp    BYTE PTR ds:@obj3:script_check,0x0                           ; fixup: num: 12134, src obj: 1, src ofs: 0x4fabc, dst obj: 3, dst ofs: 0x17e48
   4fac1:	74 57                	je     do_object_branch_3
   4fac3:	8b 51 28             	mov    edx,DWORD PTR [ecx+0x28]
   4fac6:	85 d2                	test   edx,edx
   4fac8:	74 50                	je     do_object_branch_3
   4faca:	89 d0                	mov    eax,edx
   4facc:	89 d7                	mov    edi,edx
   4face:	e8 ad d1 fb ff       	call   XFILE_size
   4fad3:	83 f8 ff             	cmp    eax,0xffffffff
   4fad6:	75 42                	jne    do_object_branch_3
   4fad8:	b2 01                	mov    dl,0x1
   4fada:	b8 d1 bc 00 00       	mov    eax,@obj3:scrpties_cpp_variable_4                            ; fixup: num: 12035, src obj: 1, src ofs: 0x4fadb, dst obj: 3, dst ofs: 0xbcd1
   4fadf:	88 15 14 5b 02 00    	mov    BYTE PTR ds:@obj3:script_errors,dl                           ; fixup: num: 12034, src obj: 1, src ofs: 0x4fae1, dst obj: 3, dst ofs: 0x25b14
   4fae5:	ba cd bc 00 00       	mov    edx,@obj3:scrpties_cpp_variable_3                            ; fixup: num: 12033, src obj: 1, src ofs: 0x4fae6, dst obj: 3, dst ofs: 0xbccd
   4faea:	e8 b9 12 02 00       	call   fopen_
   4faef:	89 c6                	mov    esi,eax
   4faf1:	85 c0                	test   eax,eax
   4faf3:	75 0f                	jne    do_object_branch_2
   4faf5:	bb dc bc 00 00       	mov    ebx,@obj3:scrpties_cpp_variable_5                            ; fixup: num: 12032, src obj: 1, src ofs: 0x4faf6, dst obj: 3, dst ofs: 0xbcdc
   4fafa:	ba f9 0b 00 00       	mov    edx,0xbf9
   4faff:	e8 2c 85 fe ff       	call   _error_report
do_object_branch_2:
   4fb04:	57                   	push   edi
   4fb05:	68 f0 bc 00 00       	push   @obj3:scrpties_cpp_variable_6                                ; fixup: num: 12031, src obj: 1, src ofs: 0x4fb06, dst obj: 3, dst ofs: 0xbcf0
   4fb0a:	56                   	push   esi
   4fb0b:	e8 d1 70 02 00       	call   fprintf_
   4fb10:	83 c4 0c             	add    esp,0xc
   4fb13:	89 f0                	mov    eax,esi
   4fb15:	e8 24 13 02 00       	call   fclose_
do_object_branch_3:
   4fb1a:	e8 21 77 fe ff       	call   return_word
   4fb1f:	8a 35 48 7e 01 00    	mov    dh,BYTE PTR ds:@obj3:script_check                            ; fixup: num: 12142, src obj: 1, src ofs: 0x4fb21, dst obj: 3, dst ofs: 0x17e48
   4fb25:	89 41 2c             	mov    DWORD PTR [ecx+0x2c],eax
   4fb28:	84 f6                	test   dh,dh
   4fb2a:	74 52                	je     do_object_branch_5
   4fb2c:	85 c0                	test   eax,eax
   4fb2e:	74 4e                	je     do_object_branch_5
   4fb30:	89 c6                	mov    esi,eax
   4fb32:	e8 49 d1 fb ff       	call   XFILE_size
   4fb37:	83 f8 ff             	cmp    eax,0xffffffff
   4fb3a:	75 42                	jne    do_object_branch_5
   4fb3c:	b3 01                	mov    bl,0x1
   4fb3e:	ba cd bc 00 00       	mov    edx,@obj3:scrpties_cpp_variable_3                            ; fixup: num: 12141, src obj: 1, src ofs: 0x4fb3f, dst obj: 3, dst ofs: 0xbccd
   4fb43:	b8 d1 bc 00 00       	mov    eax,@obj3:scrpties_cpp_variable_4                            ; fixup: num: 12140, src obj: 1, src ofs: 0x4fb44, dst obj: 3, dst ofs: 0xbcd1
   4fb48:	88 1d 14 5b 02 00    	mov    BYTE PTR ds:@obj3:script_errors,bl                           ; fixup: num: 12139, src obj: 1, src ofs: 0x4fb4a, dst obj: 3, dst ofs: 0x25b14
   4fb4e:	e8 55 12 02 00       	call   fopen_
   4fb53:	89 c7                	mov    edi,eax
   4fb55:	85 c0                	test   eax,eax
   4fb57:	75 0f                	jne    do_object_branch_4
   4fb59:	bb dc bc 00 00       	mov    ebx,@obj3:scrpties_cpp_variable_5                            ; fixup: num: 12138, src obj: 1, src ofs: 0x4fb5a, dst obj: 3, dst ofs: 0xbcdc
   4fb5e:	ba f9 0b 00 00       	mov    edx,0xbf9
   4fb63:	e8 c8 84 fe ff       	call   _error_report
do_object_branch_4:
   4fb68:	56                   	push   esi
   4fb69:	68 f0 bc 00 00       	push   @obj3:scrpties_cpp_variable_6                                ; fixup: num: 12137, src obj: 1, src ofs: 0x4fb6a, dst obj: 3, dst ofs: 0xbcf0
   4fb6e:	57                   	push   edi
   4fb6f:	e8 6d 70 02 00       	call   fprintf_
   4fb74:	83 c4 0c             	add    esp,0xc
   4fb77:	89 f8                	mov    eax,edi
   4fb79:	e8 c0 12 02 00       	call   fclose_
do_object_branch_5:
   4fb7e:	e8 bd 76 fe ff       	call   return_word
   4fb83:	89 41 40             	mov    DWORD PTR [ecx+0x40],eax
   4fb86:	e8 b5 76 fe ff       	call   return_word
   4fb8b:	89 41 44             	mov    DWORD PTR [ecx+0x44],eax
   4fb8e:	e8 ad 76 fe ff       	call   return_word
   4fb93:	89 41 34             	mov    DWORD PTR [ecx+0x34],eax
   4fb96:	e8 a5 76 fe ff       	call   return_word
   4fb9b:	89 41 38             	mov    DWORD PTR [ecx+0x38],eax
   4fb9e:	e8 9d 76 fe ff       	call   return_word
   4fba3:	89 c3                	mov    ebx,eax
   4fba5:	85 c0                	test   eax,eax
   4fba7:	75 19                	jne    do_object_branch_6
   4fba9:	8b 35 38 36 02 00    	mov    esi,DWORD PTR ds:@obj3:script_line_number                    ; fixup: num: 12043, src obj: 1, src ofs: 0x4fbab, dst obj: 3, dst ofs: 0x23638
   4fbaf:	56                   	push   esi
   4fbb0:	68 2a c4 00 00       	push   @obj3:scrpties_cpp_variable_114                              ; fixup: num: 12042, src obj: 1, src ofs: 0x4fbb1, dst obj: 3, dst ofs: 0xc42a
   4fbb5:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 12041, src obj: 1, src ofs: 0x4fbb6, dst obj: 3, dst ofs: 0x237fc
   4fbba:	e8 22 10 02 00       	call   sprintf_
   4fbbf:	83 c4 0c             	add    esp,0xc
do_object_branch_6:
   4fbc2:	ba 58 c4 00 00       	mov    edx,@obj3:scrpties_cpp_variable_115                          ; fixup: num: 12040, src obj: 1, src ofs: 0x4fbc3, dst obj: 3, dst ofs: 0xc458
   4fbc7:	89 d8                	mov    eax,ebx
   4fbc9:	e8 62 68 02 00       	call   strcmp_
   4fbce:	85 c0                	test   eax,eax
   4fbd0:	0f 94 c0             	sete   al
   4fbd3:	88 41 4c             	mov    BYTE PTR [ecx+0x4c],al
   4fbd6:	85 db                	test   ebx,ebx
   4fbd8:	74 07                	je     do_object_branch_7
   4fbda:	89 d8                	mov    eax,ebx
   4fbdc:	e8 07 18 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
do_object_branch_7:
   4fbe1:	e8 5a 76 fe ff       	call   return_word
   4fbe6:	89 c3                	mov    ebx,eax
   4fbe8:	85 c0                	test   eax,eax
   4fbea:	75 19                	jne    do_object_branch_8
   4fbec:	8b 3d 38 36 02 00    	mov    edi,DWORD PTR ds:@obj3:script_line_number                    ; fixup: num: 12039, src obj: 1, src ofs: 0x4fbee, dst obj: 3, dst ofs: 0x23638
   4fbf2:	57                   	push   edi
   4fbf3:	68 5a c4 00 00       	push   @obj3:scrpties_cpp_variable_116                              ; fixup: num: 12038, src obj: 1, src ofs: 0x4fbf4, dst obj: 3, dst ofs: 0xc45a
   4fbf8:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 12037, src obj: 1, src ofs: 0x4fbf9, dst obj: 3, dst ofs: 0x237fc
   4fbfd:	e8 df 0f 02 00       	call   sprintf_
   4fc02:	83 c4 0c             	add    esp,0xc
do_object_branch_8:
   4fc05:	ba 85 c4 00 00       	mov    edx,@obj3:scrpties_cpp_variable_117                          ; fixup: num: 12036, src obj: 1, src ofs: 0x4fc06, dst obj: 3, dst ofs: 0xc485
   4fc0a:	89 d8                	mov    eax,ebx
   4fc0c:	e8 1f 68 02 00       	call   strcmp_
   4fc11:	85 c0                	test   eax,eax
   4fc13:	0f 94 c0             	sete   al
   4fc16:	88 41 4d             	mov    BYTE PTR [ecx+0x4d],al
   4fc19:	85 db                	test   ebx,ebx
   4fc1b:	74 07                	je     do_object_branch_9
   4fc1d:	89 d8                	mov    eax,ebx
   4fc1f:	e8 c4 17 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
do_object_branch_9:
   4fc24:	e8 17 76 fe ff       	call   return_word
   4fc29:	89 41 24             	mov    DWORD PTR [ecx+0x24],eax
   4fc2c:	e8 0f 76 fe ff       	call   return_word
   4fc31:	89 41 50             	mov    DWORD PTR [ecx+0x50],eax
   4fc34:	8b 01                	mov    eax,DWORD PTR [ecx]
   4fc36:	89 41 0c             	mov    DWORD PTR [ecx+0xc],eax
   4fc39:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
   4fc3c:	89 41 10             	mov    DWORD PTR [ecx+0x10],eax
   4fc3f:	8b 41 08             	mov    eax,DWORD PTR [ecx+0x8]
   4fc42:	89 41 14             	mov    DWORD PTR [ecx+0x14],eax
   4fc45:	8b 15 2c 41 01 00    	mov    edx,DWORD PTR ds:@obj3:INVENTORY_ROOM                        ; fixup: num: 12050, src obj: 1, src ofs: 0x4fc47, dst obj: 3, dst ofs: 0x1412c
   4fc4b:	8b 41 48             	mov    eax,DWORD PTR [ecx+0x48]
   4fc4e:	e8 dd 67 02 00       	call   strcmp_
   4fc53:	85 c0                	test   eax,eax
   4fc55:	75 07                	jne    do_object_branch_10
   4fc57:	a1 2c 41 01 00       	mov    eax,ds:@obj3:INVENTORY_ROOM                                  ; fixup: num: 12049, src obj: 1, src ofs: 0x4fc58, dst obj: 3, dst ofs: 0x1412c
   4fc5c:	eb 03                	jmp    do_object_branch_11
do_object_branch_10:
   4fc5e:	8b 41 48             	mov    eax,DWORD PTR [ecx+0x48]
do_object_branch_11:
   4fc61:	89 41 3c             	mov    DWORD PTR [ecx+0x3c],eax
   4fc64:	8b 69 38             	mov    ebp,DWORD PTR [ecx+0x38]
   4fc67:	85 ed                	test   ebp,ebp
   4fc69:	0f 94 c0             	sete   al
   4fc6c:	88 41 4f             	mov    BYTE PTR [ecx+0x4f],al
   4fc6f:	8a 41 4d             	mov    al,BYTE PTR [ecx+0x4d]
   4fc72:	88 41 4e             	mov    BYTE PTR [ecx+0x4e],al
   4fc75:	8b 41 30             	mov    eax,DWORD PTR [ecx+0x30]
   4fc78:	c7 41 54 00 00 00 00 	mov    DWORD PTR [ecx+0x54],0x0
   4fc7f:	85 c0                	test   eax,eax
   4fc81:	0f 84 6f 00 00 00    	je     do_object_branch_17
   4fc87:	ba 87 c4 00 00       	mov    edx,@obj3:scrpties_cpp_variable_118                          ; fixup: num: 12048, src obj: 1, src ofs: 0x4fc88, dst obj: 3, dst ofs: 0xc487
   4fc8c:	e8 9f 67 02 00       	call   strcmp_
   4fc91:	85 c0                	test   eax,eax
   4fc93:	74 11                	je     do_object_branch_12
   4fc95:	ba 91 c4 00 00       	mov    edx,@obj3:scrpties_cpp_variable_119                          ; fixup: num: 12047, src obj: 1, src ofs: 0x4fc96, dst obj: 3, dst ofs: 0xc491
   4fc9a:	8b 41 30             	mov    eax,DWORD PTR [ecx+0x30]
   4fc9d:	e8 8e 67 02 00       	call   strcmp_
   4fca2:	85 c0                	test   eax,eax
   4fca4:	75 04                	jne    do_object_branch_13
do_object_branch_12:
   4fca6:	c6 41 4f 01          	mov    BYTE PTR [ecx+0x4f],0x1
do_object_branch_13:
   4fcaa:	ba 9f c4 00 00       	mov    edx,@obj3:scrpties_cpp_variable_120                          ; fixup: num: 12046, src obj: 1, src ofs: 0x4fcab, dst obj: 3, dst ofs: 0xc49f
   4fcaf:	8b 41 30             	mov    eax,DWORD PTR [ecx+0x30]
   4fcb2:	e8 79 67 02 00       	call   strcmp_
   4fcb7:	85 c0                	test   eax,eax
   4fcb9:	74 11                	je     do_object_branch_14
   4fcbb:	ba ab c4 00 00       	mov    edx,@obj3:scrpties_cpp_variable_121                          ; fixup: num: 12045, src obj: 1, src ofs: 0x4fcbc, dst obj: 3, dst ofs: 0xc4ab
   4fcc0:	8b 41 30             	mov    eax,DWORD PTR [ecx+0x30]
   4fcc3:	e8 68 67 02 00       	call   strcmp_
   4fcc8:	85 c0                	test   eax,eax
   4fcca:	75 04                	jne    do_object_branch_15
do_object_branch_14:
   4fccc:	c6 41 4f 01          	mov    BYTE PTR [ecx+0x4f],0x1
do_object_branch_15:
   4fcd0:	ba b2 c4 00 00       	mov    edx,@obj3:scrpties_cpp_variable_122                          ; fixup: num: 12044, src obj: 1, src ofs: 0x4fcd1, dst obj: 3, dst ofs: 0xc4b2
   4fcd5:	8b 41 30             	mov    eax,DWORD PTR [ecx+0x30]
   4fcd8:	e8 53 67 02 00       	call   strcmp_
   4fcdd:	85 c0                	test   eax,eax
   4fcdf:	74 11                	je     do_object_branch_16
   4fce1:	ba ce c4 00 00       	mov    edx,@obj3:scrpties_cpp_variable_123                          ; fixup: num: 12056, src obj: 1, src ofs: 0x4fce2, dst obj: 3, dst ofs: 0xc4ce
   4fce6:	8b 41 30             	mov    eax,DWORD PTR [ecx+0x30]
   4fce9:	e8 42 67 02 00       	call   strcmp_
   4fcee:	85 c0                	test   eax,eax
   4fcf0:	75 04                	jne    do_object_branch_17
do_object_branch_16:
   4fcf2:	c6 41 4f 01          	mov    BYTE PTR [ecx+0x4f],0x1
do_object_branch_17:
   4fcf6:	8b 15 bc 5a 02 00    	mov    edx,DWORD PTR ds:@obj3:object_list                           ; fixup: num: 12055, src obj: 1, src ofs: 0x4fcf8, dst obj: 3, dst ofs: 0x25abc
   4fcfc:	85 d2                	test   edx,edx
   4fcfe:	75 08                	jne    do_object_branch_18
   4fd00:	89 0d bc 5a 02 00    	mov    DWORD PTR ds:@obj3:object_list,ecx                           ; fixup: num: 12054, src obj: 1, src ofs: 0x4fd02, dst obj: 3, dst ofs: 0x25abc
   4fd06:	eb 15                	jmp    do_object_branch_21
do_object_branch_18:
   4fd08:	8b 5a 54             	mov    ebx,DWORD PTR [edx+0x54]
   4fd0b:	89 d0                	mov    eax,edx
   4fd0d:	85 db                	test   ebx,ebx
   4fd0f:	74 09                	je     do_object_branch_20
do_object_branch_19:
   4fd11:	8b 40 54             	mov    eax,DWORD PTR [eax+0x54]
   4fd14:	83 78 54 00          	cmp    DWORD PTR [eax+0x54],0x0
   4fd18:	75 f7                	jne    do_object_branch_19
do_object_branch_20:
   4fd1a:	89 48 54             	mov    DWORD PTR [eax+0x54],ecx
do_object_branch_21:
   4fd1d:	ff 05 00 5b 02 00    	inc    DWORD PTR ds:@obj3:object_ctr                                ; fixup: num: 12053, src obj: 1, src ofs: 0x4fd1f, dst obj: 3, dst ofs: 0x25b00
   4fd23:	5d                   	pop    ebp
   4fd24:	5f                   	pop    edi
   4fd25:	5e                   	pop    esi
   4fd26:	5a                   	pop    edx
   4fd27:	59                   	pop    ecx
   4fd28:	5b                   	pop    ebx
   4fd29:	c3                   	ret    
   4fd2a:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'do_region'                          -
;-------------------------------------------------
do_region:
   4fd30:	53                   	push   ebx
   4fd31:	51                   	push   ecx
   4fd32:	52                   	push   edx
   4fd33:	56                   	push   esi
   4fd34:	b8 30 00 00 00       	mov    eax,0x30
   4fd39:	e8 55 17 02 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   4fd3e:	89 c1                	mov    ecx,eax
   4fd40:	85 c0                	test   eax,eax
   4fd42:	75 0f                	jne    do_region_branch_1
   4fd44:	bb d7 c4 00 00       	mov    ebx,@obj3:scrpties_cpp_variable_124                          ; fixup: num: 12052, src obj: 1, src ofs: 0x4fd45, dst obj: 3, dst ofs: 0xc4d7
   4fd49:	ba d9 03 00 00       	mov    edx,0x3d9
   4fd4e:	e8 dd 82 fe ff       	call   _error_report
do_region_branch_1:
   4fd53:	bb 30 00 00 00       	mov    ebx,0x30
   4fd58:	89 c8                	mov    eax,ecx
   4fd5a:	31 d2                	xor    edx,edx
   4fd5c:	e8 6f 16 02 00       	call   memset_
   4fd61:	e8 fa cb fd ff       	call   popsp
   4fd66:	ba ef c4 00 00       	mov    edx,@obj3:scrpties_cpp_variable_125                          ; fixup: num: 12051, src obj: 1, src ofs: 0x4fd67, dst obj: 3, dst ofs: 0xc4ef
   4fd6b:	89 41 14             	mov    DWORD PTR [ecx+0x14],eax
   4fd6e:	e8 ed cb fd ff       	call   popsp
   4fd73:	89 41 10             	mov    DWORD PTR [ecx+0x10],eax
   4fd76:	e8 e5 cb fd ff       	call   popsp
   4fd7b:	89 41 0c             	mov    DWORD PTR [ecx+0xc],eax
   4fd7e:	e8 dd cb fd ff       	call   popsp
   4fd83:	89 41 08             	mov    DWORD PTR [ecx+0x8],eax
   4fd86:	e8 d5 cb fd ff       	call   popsp
   4fd8b:	89 41 04             	mov    DWORD PTR [ecx+0x4],eax
   4fd8e:	e8 cd cb fd ff       	call   popsp
   4fd93:	89 01                	mov    DWORD PTR [ecx],eax
   4fd95:	e8 a6 74 fe ff       	call   return_word
   4fd9a:	89 41 1c             	mov    DWORD PTR [ecx+0x1c],eax
   4fd9d:	e8 9e 74 fe ff       	call   return_word
   4fda2:	89 c3                	mov    ebx,eax
   4fda4:	89 c6                	mov    esi,eax
   4fda6:	e8 85 66 02 00       	call   strcmp_
   4fdab:	85 c0                	test   eax,eax
   4fdad:	75 09                	jne    do_region_branch_2
   4fdaf:	c7 41 18 02 00 00 00 	mov    DWORD PTR [ecx+0x18],0x2
   4fdb6:	eb 45                	jmp    do_region_branch_5
do_region_branch_2:
   4fdb8:	ba f5 c4 00 00       	mov    edx,@obj3:scrpties_cpp_variable_126                          ; fixup: num: 12060, src obj: 1, src ofs: 0x4fdb9, dst obj: 3, dst ofs: 0xc4f5
   4fdbd:	89 d8                	mov    eax,ebx
   4fdbf:	e8 6c 66 02 00       	call   strcmp_
   4fdc4:	85 c0                	test   eax,eax
   4fdc6:	75 09                	jne    do_region_branch_3
   4fdc8:	c7 41 18 01 00 00 00 	mov    DWORD PTR [ecx+0x18],0x1
   4fdcf:	eb 2c                	jmp    do_region_branch_5
do_region_branch_3:
   4fdd1:	ba fa c4 00 00       	mov    edx,@obj3:scrpties_cpp_variable_127                          ; fixup: num: 12059, src obj: 1, src ofs: 0x4fdd2, dst obj: 3, dst ofs: 0xc4fa
   4fdd6:	89 d8                	mov    eax,ebx
   4fdd8:	e8 53 66 02 00       	call   strcmp_
   4fddd:	85 c0                	test   eax,eax
   4fddf:	75 05                	jne    do_region_branch_4
   4fde1:	89 41 18             	mov    DWORD PTR [ecx+0x18],eax
   4fde4:	eb 17                	jmp    do_region_branch_5
do_region_branch_4:
   4fde6:	ba 00 c5 00 00       	mov    edx,@obj3:scrpties_cpp_variable_128                          ; fixup: num: 12058, src obj: 1, src ofs: 0x4fde7, dst obj: 3, dst ofs: 0xc500
   4fdeb:	89 d8                	mov    eax,ebx
   4fded:	e8 3e 66 02 00       	call   strcmp_
   4fdf2:	85 c0                	test   eax,eax
   4fdf4:	75 07                	jne    do_region_branch_5
   4fdf6:	c7 41 18 03 00 00 00 	mov    DWORD PTR [ecx+0x18],0x3
do_region_branch_5:
   4fdfd:	85 f6                	test   esi,esi
   4fdff:	74 07                	je     do_region_branch_6
   4fe01:	89 f0                	mov    eax,esi
   4fe03:	e8 e0 15 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
do_region_branch_6:
   4fe08:	e8 33 74 fe ff       	call   return_word
   4fe0d:	ba 05 c5 00 00       	mov    edx,@obj3:scrpties_cpp_variable_129                          ; fixup: num: 12057, src obj: 1, src ofs: 0x4fe0e, dst obj: 3, dst ofs: 0xc505
   4fe12:	89 41 20             	mov    DWORD PTR [ecx+0x20],eax
   4fe15:	e8 26 74 fe ff       	call   return_word
   4fe1a:	89 41 24             	mov    DWORD PTR [ecx+0x24],eax
   4fe1d:	e8 1e 74 fe ff       	call   return_word
   4fe22:	89 c3                	mov    ebx,eax
   4fe24:	e8 07 66 02 00       	call   strcmp_
   4fe29:	85 c0                	test   eax,eax
   4fe2b:	0f 94 c0             	sete   al
   4fe2e:	88 41 28             	mov    BYTE PTR [ecx+0x28],al
   4fe31:	85 db                	test   ebx,ebx
   4fe33:	74 07                	je     do_region_branch_7
   4fe35:	89 d8                	mov    eax,ebx
   4fe37:	e8 ac 15 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
do_region_branch_7:
   4fe3c:	e8 ff 73 fe ff       	call   return_word
   4fe41:	ba 07 c5 00 00       	mov    edx,@obj3:scrpties_cpp_variable_130                          ; fixup: num: 12066, src obj: 1, src ofs: 0x4fe42, dst obj: 3, dst ofs: 0xc507
   4fe46:	89 c3                	mov    ebx,eax
   4fe48:	e8 e3 65 02 00       	call   strcmp_
   4fe4d:	85 c0                	test   eax,eax
   4fe4f:	0f 94 c0             	sete   al
   4fe52:	88 41 2a             	mov    BYTE PTR [ecx+0x2a],al
   4fe55:	85 db                	test   ebx,ebx
   4fe57:	74 07                	je     do_region_branch_8
   4fe59:	89 d8                	mov    eax,ebx
   4fe5b:	e8 88 15 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
do_region_branch_8:
   4fe60:	8a 41 28             	mov    al,BYTE PTR [ecx+0x28]
   4fe63:	c7 41 2c 00 00 00 00 	mov    DWORD PTR [ecx+0x2c],0x0
   4fe6a:	8b 15 c0 5a 02 00    	mov    edx,DWORD PTR ds:@obj3:region_list                           ; fixup: num: 12065, src obj: 1, src ofs: 0x4fe6c, dst obj: 3, dst ofs: 0x25ac0
   4fe70:	88 41 29             	mov    BYTE PTR [ecx+0x29],al
   4fe73:	85 d2                	test   edx,edx
   4fe75:	75 08                	jne    do_region_branch_9
   4fe77:	89 0d c0 5a 02 00    	mov    DWORD PTR ds:@obj3:region_list,ecx                           ; fixup: num: 12064, src obj: 1, src ofs: 0x4fe79, dst obj: 3, dst ofs: 0x25ac0
   4fe7d:	eb 15                	jmp    do_region_branch_12
do_region_branch_9:
   4fe7f:	8b 5a 2c             	mov    ebx,DWORD PTR [edx+0x2c]
   4fe82:	89 d0                	mov    eax,edx
   4fe84:	85 db                	test   ebx,ebx
   4fe86:	74 09                	je     do_region_branch_11
do_region_branch_10:
   4fe88:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
   4fe8b:	83 78 2c 00          	cmp    DWORD PTR [eax+0x2c],0x0
   4fe8f:	75 f7                	jne    do_region_branch_10
do_region_branch_11:
   4fe91:	89 48 2c             	mov    DWORD PTR [eax+0x2c],ecx
do_region_branch_12:
   4fe94:	ff 05 04 5b 02 00    	inc    DWORD PTR ds:@obj3:region_ctr                                ; fixup: num: 12063, src obj: 1, src ofs: 0x4fe96, dst obj: 3, dst ofs: 0x25b04
   4fe9a:	5e                   	pop    esi
   4fe9b:	5a                   	pop    edx
   4fe9c:	59                   	pop    ecx
   4fe9d:	5b                   	pop    ebx
   4fe9e:	c3                   	ret    
   4fe9f:	90                   	nop

;-------------------------------------------------
;  Function 'do_room'                            -
;-------------------------------------------------
do_room:
   4fea0:	53                   	push   ebx
   4fea1:	51                   	push   ecx
   4fea2:	52                   	push   edx
   4fea3:	56                   	push   esi
   4fea4:	57                   	push   edi
   4fea5:	55                   	push   ebp
   4fea6:	b8 4c 00 00 00       	mov    eax,0x4c
   4feab:	e8 e3 15 02 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   4feb0:	89 c1                	mov    ecx,eax
   4feb2:	85 c0                	test   eax,eax
   4feb4:	75 0f                	jne    do_room_branch_1
   4feb6:	bb 09 c5 00 00       	mov    ebx,@obj3:scrpties_cpp_variable_131                          ; fixup: num: 12062, src obj: 1, src ofs: 0x4feb7, dst obj: 3, dst ofs: 0xc509
   4febb:	ba 22 04 00 00       	mov    edx,0x422
   4fec0:	e8 6b 81 fe ff       	call   _error_report
do_room_branch_1:
   4fec5:	bb 4c 00 00 00       	mov    ebx,0x4c
   4feca:	89 c8                	mov    eax,ecx
   4fecc:	31 d2                	xor    edx,edx
   4fece:	e8 fd 14 02 00       	call   memset_
   4fed3:	a1 1c 3c 01 00       	mov    eax,ds:@obj3:room_ctr                                        ; fixup: num: 12061, src obj: 1, src ofs: 0x4fed4, dst obj: 3, dst ofs: 0x13c1c
   4fed8:	89 01                	mov    DWORD PTR [ecx],eax
   4feda:	e8 81 ca fd ff       	call   popsp
   4fedf:	89 41 1c             	mov    DWORD PTR [ecx+0x1c],eax
   4fee2:	e8 79 ca fd ff       	call   popsp
   4fee7:	89 41 14             	mov    DWORD PTR [ecx+0x14],eax
   4feea:	e8 71 ca fd ff       	call   popsp
   4feef:	89 41 10             	mov    DWORD PTR [ecx+0x10],eax
   4fef2:	e8 69 ca fd ff       	call   popsp
   4fef7:	89 41 0c             	mov    DWORD PTR [ecx+0xc],eax
   4fefa:	e8 61 ca fd ff       	call   popsp
   4feff:	89 41 08             	mov    DWORD PTR [ecx+0x8],eax
   4ff02:	e8 59 ca fd ff       	call   popsp
   4ff07:	89 41 04             	mov    DWORD PTR [ecx+0x4],eax
   4ff0a:	8b 51 14             	mov    edx,DWORD PTR [ecx+0x14]
   4ff0d:	8b 41 08             	mov    eax,DWORD PTR [ecx+0x8]
   4ff10:	29 d0                	sub    eax,edx
   4ff12:	75 09                	jne    do_room_branch_2
   4ff14:	c7 41 18 00 00 80 3f 	mov    DWORD PTR [ecx+0x18],0x3f800000
   4ff1b:	eb 16                	jmp    do_room_branch_3
do_room_branch_2:
   4ff1d:	db 41 08             	fild   DWORD PTR [ecx+0x8]
   4ff20:	db 41 14             	fild   DWORD PTR [ecx+0x14]
   4ff23:	de e9                	fsubp  st(1),st
   4ff25:	db 41 1c             	fild   DWORD PTR [ecx+0x1c]
   4ff28:	dc 2d 5d c5 00 00    	fsubr  QWORD PTR ds:@obj3:scrpties_cpp_variable_134                 ; fixup: num: 12072, src obj: 1, src ofs: 0x4ff2a, dst obj: 3, dst ofs: 0xc55d
   4ff2e:	de f1                	fdivrp st(1),st
   4ff30:	d9 59 18             	fstp   DWORD PTR [ecx+0x18]
do_room_branch_3:
   4ff33:	e8 08 73 fe ff       	call   return_word
   4ff38:	89 41 2c             	mov    DWORD PTR [ecx+0x2c],eax
   4ff3b:	e8 00 73 fe ff       	call   return_word
   4ff40:	89 41 30             	mov    DWORD PTR [ecx+0x30],eax
   4ff43:	80 3d 48 7e 01 00 00 	cmp    BYTE PTR ds:@obj3:script_check,0x0                           ; fixup: num: 12071, src obj: 1, src ofs: 0x4ff45, dst obj: 3, dst ofs: 0x17e48
   4ff4a:	74 57                	je     do_room_branch_5
   4ff4c:	8b 59 30             	mov    ebx,DWORD PTR [ecx+0x30]
   4ff4f:	85 db                	test   ebx,ebx
   4ff51:	74 50                	je     do_room_branch_5
   4ff53:	89 d8                	mov    eax,ebx
   4ff55:	89 de                	mov    esi,ebx
   4ff57:	e8 24 cd fb ff       	call   XFILE_size
   4ff5c:	83 f8 ff             	cmp    eax,0xffffffff
   4ff5f:	75 42                	jne    do_room_branch_5
   4ff61:	b2 01                	mov    dl,0x1
   4ff63:	b8 d1 bc 00 00       	mov    eax,@obj3:scrpties_cpp_variable_4                            ; fixup: num: 12070, src obj: 1, src ofs: 0x4ff64, dst obj: 3, dst ofs: 0xbcd1
   4ff68:	88 15 14 5b 02 00    	mov    BYTE PTR ds:@obj3:script_errors,dl                           ; fixup: num: 12069, src obj: 1, src ofs: 0x4ff6a, dst obj: 3, dst ofs: 0x25b14
   4ff6e:	ba cd bc 00 00       	mov    edx,@obj3:scrpties_cpp_variable_3                            ; fixup: num: 12068, src obj: 1, src ofs: 0x4ff6f, dst obj: 3, dst ofs: 0xbccd
   4ff73:	e8 30 0e 02 00       	call   fopen_
   4ff78:	89 c7                	mov    edi,eax
   4ff7a:	85 c0                	test   eax,eax
   4ff7c:	75 0f                	jne    do_room_branch_4
   4ff7e:	bb dc bc 00 00       	mov    ebx,@obj3:scrpties_cpp_variable_5                            ; fixup: num: 12067, src obj: 1, src ofs: 0x4ff7f, dst obj: 3, dst ofs: 0xbcdc
   4ff83:	ba f9 0b 00 00       	mov    edx,0xbf9
   4ff88:	e8 a3 80 fe ff       	call   _error_report
do_room_branch_4:
   4ff8d:	56                   	push   esi
   4ff8e:	68 f0 bc 00 00       	push   @obj3:scrpties_cpp_variable_6                                ; fixup: num: 12078, src obj: 1, src ofs: 0x4ff8f, dst obj: 3, dst ofs: 0xbcf0
   4ff93:	57                   	push   edi
   4ff94:	e8 48 6c 02 00       	call   fprintf_
   4ff99:	83 c4 0c             	add    esp,0xc
   4ff9c:	89 f8                	mov    eax,edi
   4ff9e:	e8 9b 0e 02 00       	call   fclose_
do_room_branch_5:
   4ffa3:	89 ca                	mov    edx,ecx
   4ffa5:	8d 59 0c             	lea    ebx,[ecx+0xc]
do_room_branch_6:
   4ffa8:	83 c2 04             	add    edx,0x4
   4ffab:	e8 90 72 fe ff       	call   return_word
   4ffb0:	89 42 34             	mov    DWORD PTR [edx+0x34],eax
   4ffb3:	39 da                	cmp    edx,ebx
   4ffb5:	75 f1                	jne    do_room_branch_6
   4ffb7:	e8 84 72 fe ff       	call   return_word
   4ffbc:	8a 35 48 7e 01 00    	mov    dh,BYTE PTR ds:@obj3:script_check                            ; fixup: num: 12077, src obj: 1, src ofs: 0x4ffbe, dst obj: 3, dst ofs: 0x17e48
   4ffc2:	89 41 34             	mov    DWORD PTR [ecx+0x34],eax
   4ffc5:	84 f6                	test   dh,dh
   4ffc7:	74 52                	je     do_room_branch_8
   4ffc9:	85 c0                	test   eax,eax
   4ffcb:	74 4e                	je     do_room_branch_8
   4ffcd:	89 c7                	mov    edi,eax
   4ffcf:	e8 ac cc fb ff       	call   XFILE_size
   4ffd4:	83 f8 ff             	cmp    eax,0xffffffff
   4ffd7:	75 42                	jne    do_room_branch_8
   4ffd9:	b3 01                	mov    bl,0x1
   4ffdb:	ba cd bc 00 00       	mov    edx,@obj3:scrpties_cpp_variable_3                            ; fixup: num: 12076, src obj: 1, src ofs: 0x4ffdc, dst obj: 3, dst ofs: 0xbccd
   4ffe0:	b8 d1 bc 00 00       	mov    eax,@obj3:scrpties_cpp_variable_4                            ; fixup: num: 12075, src obj: 1, src ofs: 0x4ffe1, dst obj: 3, dst ofs: 0xbcd1
   4ffe5:	88 1d 14 5b 02 00    	mov    BYTE PTR ds:@obj3:script_errors,bl                           ; fixup: num: 12074, src obj: 1, src ofs: 0x4ffe7, dst obj: 3, dst ofs: 0x25b14
   4ffeb:	e8 b8 0d 02 00       	call   fopen_
   4fff0:	89 c6                	mov    esi,eax
   4fff2:	85 c0                	test   eax,eax
   4fff4:	75 0f                	jne    do_room_branch_7
   4fff6:	bb dc bc 00 00       	mov    ebx,@obj3:scrpties_cpp_variable_5                            ; fixup: num: 12073, src obj: 1, src ofs: 0x4fff7, dst obj: 3, dst ofs: 0xbcdc
   4fffb:	ba f9 0b 00 00       	mov    edx,0xbf9
   50000:	e8 2b 80 fe ff       	call   _error_report
do_room_branch_7:
   50005:	57                   	push   edi
   50006:	68 f0 bc 00 00       	push   @obj3:scrpties_cpp_variable_6                                ; fixup: num: 12399, src obj: 1, src ofs: 0x50007, dst obj: 3, dst ofs: 0xbcf0
   5000b:	56                   	push   esi
   5000c:	e8 d0 6b 02 00       	call   fprintf_
   50011:	83 c4 0c             	add    esp,0xc
   50014:	89 f0                	mov    eax,esi
   50016:	e8 23 0e 02 00       	call   fclose_
do_room_branch_8:
   5001b:	e8 20 72 fe ff       	call   return_word
   50020:	89 c3                	mov    ebx,eax
   50022:	85 c0                	test   eax,eax
   50024:	75 1f                	jne    do_room_branch_9
   50026:	8b 3d 38 36 02 00    	mov    edi,DWORD PTR ds:@obj3:script_line_number                    ; fixup: num: 12398, src obj: 1, src ofs: 0x50028, dst obj: 3, dst ofs: 0x23638
   5002c:	57                   	push   edi
   5002d:	68 21 c5 00 00       	push   @obj3:scrpties_cpp_variable_132                              ; fixup: num: 12397, src obj: 1, src ofs: 0x5002e, dst obj: 3, dst ofs: 0xc521
   50032:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 12396, src obj: 1, src ofs: 0x50033, dst obj: 3, dst ofs: 0x237fc
   50037:	e8 a5 0b 02 00       	call   sprintf_
   5003c:	83 c4 0c             	add    esp,0xc
   5003f:	c6 41 44 00          	mov    BYTE PTR [ecx+0x44],0x0
   50043:	eb 19                	jmp    do_room_branch_10
do_room_branch_9:
   50045:	ba 5b c5 00 00       	mov    edx,@obj3:scrpties_cpp_variable_133                          ; fixup: num: 12404, src obj: 1, src ofs: 0x50046, dst obj: 3, dst ofs: 0xc55b
   5004a:	e8 e1 63 02 00       	call   strcmp_
   5004f:	85 c0                	test   eax,eax
   50051:	0f 94 c0             	sete   al
   50054:	88 41 44             	mov    BYTE PTR [ecx+0x44],al
   50057:	89 d8                	mov    eax,ebx
   50059:	e8 8a 13 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
do_room_branch_10:
   5005e:	e8 dd 71 fe ff       	call   return_word
   50063:	89 41 24             	mov    DWORD PTR [ecx+0x24],eax
   50066:	e8 d5 71 fe ff       	call   return_word
   5006b:	c7 41 20 00 00 80 3f 	mov    DWORD PTR [ecx+0x20],0x3f800000
   50072:	c7 41 48 00 00 00 00 	mov    DWORD PTR [ecx+0x48],0x0
   50079:	8b 2d c8 5a 02 00    	mov    ebp,DWORD PTR ds:@obj3:room_list                             ; fixup: num: 12403, src obj: 1, src ofs: 0x5007b, dst obj: 3, dst ofs: 0x25ac8
   5007f:	89 41 28             	mov    DWORD PTR [ecx+0x28],eax
   50082:	85 ed                	test   ebp,ebp
   50084:	75 08                	jne    do_room_branch_11
   50086:	89 0d c8 5a 02 00    	mov    DWORD PTR ds:@obj3:room_list,ecx                             ; fixup: num: 12402, src obj: 1, src ofs: 0x50088, dst obj: 3, dst ofs: 0x25ac8
   5008c:	eb 15                	jmp    do_room_branch_14
do_room_branch_11:
   5008e:	8b 45 48             	mov    eax,DWORD PTR [ebp+0x48]
   50091:	89 ea                	mov    edx,ebp
   50093:	85 c0                	test   eax,eax
   50095:	74 09                	je     do_room_branch_13
do_room_branch_12:
   50097:	8b 52 48             	mov    edx,DWORD PTR [edx+0x48]
   5009a:	83 7a 48 00          	cmp    DWORD PTR [edx+0x48],0x0
   5009e:	75 f7                	jne    do_room_branch_12
do_room_branch_13:
   500a0:	89 4a 48             	mov    DWORD PTR [edx+0x48],ecx
do_room_branch_14:
   500a3:	ff 05 1c 3c 01 00    	inc    DWORD PTR ds:@obj3:room_ctr                                  ; fixup: num: 12401, src obj: 1, src ofs: 0x500a5, dst obj: 3, dst ofs: 0x13c1c
   500a9:	5d                   	pop    ebp
   500aa:	5f                   	pop    edi
   500ab:	5e                   	pop    esi
   500ac:	5a                   	pop    edx
   500ad:	59                   	pop    ecx
   500ae:	5b                   	pop    ebx
   500af:	c3                   	ret    

;-------------------------------------------------
;  Function 'do_text'                            -
;-------------------------------------------------
do_text:
   500b0:	53                   	push   ebx
   500b1:	51                   	push   ecx
   500b2:	52                   	push   edx
   500b3:	b8 18 00 00 00       	mov    eax,0x18
   500b8:	e8 d6 13 02 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   500bd:	89 c1                	mov    ecx,eax
   500bf:	85 c0                	test   eax,eax
   500c1:	75 0f                	jne    do_text_branch_1
   500c3:	bb 65 c5 00 00       	mov    ebx,@obj3:scrpties_cpp_variable_135                          ; fixup: num: 12400, src obj: 1, src ofs: 0x500c4, dst obj: 3, dst ofs: 0xc565
   500c8:	ba 76 04 00 00       	mov    edx,0x476
   500cd:	e8 5e 7f fe ff       	call   _error_report
do_text_branch_1:
   500d2:	bb 18 00 00 00       	mov    ebx,0x18
   500d7:	89 c8                	mov    eax,ecx
   500d9:	31 d2                	xor    edx,edx
   500db:	e8 f0 12 02 00       	call   memset_
   500e0:	c7 41 14 00 00 00 00 	mov    DWORD PTR [ecx+0x14],0x0
   500e7:	e8 74 c8 fd ff       	call   popsp
   500ec:	31 d2                	xor    edx,edx
   500ee:	89 41 04             	mov    DWORD PTR [ecx+0x4],eax
   500f1:	e8 6a c8 fd ff       	call   popsp
   500f6:	89 01                	mov    DWORD PTR [ecx],eax
   500f8:	e8 43 71 fe ff       	call   return_word
   500fd:	89 41 08             	mov    DWORD PTR [ecx+0x8],eax
   50100:	e8 3b 71 fe ff       	call   return_word
   50105:	89 41 0c             	mov    DWORD PTR [ecx+0xc],eax
   50108:	e8 33 71 fe ff       	call   return_word
   5010d:	89 41 10             	mov    DWORD PTR [ecx+0x10],eax
do_text_branch_2:
   50110:	8b 41 10             	mov    eax,DWORD PTR [ecx+0x10]
   50113:	01 d0                	add    eax,edx
   50115:	8a 18                	mov    bl,BYTE PTR [eax]
   50117:	84 db                	test   bl,bl
   50119:	74 0b                	je     do_text_branch_4
   5011b:	80 fb 5f             	cmp    bl,0x5f
   5011e:	75 03                	jne    do_text_branch_3
   50120:	c6 00 20             	mov    BYTE PTR [eax],0x20
do_text_branch_3:
   50123:	42                   	inc    edx
   50124:	eb ea                	jmp    do_text_branch_2
do_text_branch_4:
   50126:	8b 15 cc 5a 02 00    	mov    edx,DWORD PTR ds:@obj3:text_list                             ; fixup: num: 12408, src obj: 1, src ofs: 0x50128, dst obj: 3, dst ofs: 0x25acc
   5012c:	85 d2                	test   edx,edx
   5012e:	75 08                	jne    do_text_branch_5
   50130:	89 0d cc 5a 02 00    	mov    DWORD PTR ds:@obj3:text_list,ecx                             ; fixup: num: 12407, src obj: 1, src ofs: 0x50132, dst obj: 3, dst ofs: 0x25acc
   50136:	eb 15                	jmp    do_text_branch_8
do_text_branch_5:
   50138:	8b 5a 14             	mov    ebx,DWORD PTR [edx+0x14]
   5013b:	89 d0                	mov    eax,edx
   5013d:	85 db                	test   ebx,ebx
   5013f:	74 09                	je     do_text_branch_7
do_text_branch_6:
   50141:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
   50144:	83 78 14 00          	cmp    DWORD PTR [eax+0x14],0x0
   50148:	75 f7                	jne    do_text_branch_6
do_text_branch_7:
   5014a:	89 48 14             	mov    DWORD PTR [eax+0x14],ecx
do_text_branch_8:
   5014d:	ff 05 08 5b 02 00    	inc    DWORD PTR ds:@obj3:text_ctr                                  ; fixup: num: 12406, src obj: 1, src ofs: 0x5014f, dst obj: 3, dst ofs: 0x25b08
   50153:	5a                   	pop    edx
   50154:	59                   	pop    ecx
   50155:	5b                   	pop    ebx
   50156:	c3                   	ret    
   50157:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   5015d:	8d 52 00             	lea    edx,[edx+0x0]

;-------------------------------------------------
;  Function 'do_timer'                           -
;-------------------------------------------------
do_timer:
   50160:	53                   	push   ebx
   50161:	51                   	push   ecx
   50162:	52                   	push   edx
   50163:	56                   	push   esi
   50164:	57                   	push   edi
   50165:	55                   	push   ebp
   50166:	b8 1c 00 00 00       	mov    eax,0x1c
   5016b:	e8 23 13 02 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   50170:	89 c1                	mov    ecx,eax
   50172:	85 c0                	test   eax,eax
   50174:	75 0f                	jne    do_timer_branch_1
   50176:	bb 7d c5 00 00       	mov    ebx,@obj3:scrpties_cpp_variable_136                          ; fixup: num: 12405, src obj: 1, src ofs: 0x50177, dst obj: 3, dst ofs: 0xc57d
   5017b:	ba a7 04 00 00       	mov    edx,0x4a7
   50180:	e8 ab 7e fe ff       	call   _error_report
do_timer_branch_1:
   50185:	bb 1c 00 00 00       	mov    ebx,0x1c
   5018a:	89 c8                	mov    eax,ecx
   5018c:	31 d2                	xor    edx,edx
   5018e:	e8 3d 12 02 00       	call   memset_
   50193:	e8 c8 c7 fd ff       	call   popsp
   50198:	89 01                	mov    DWORD PTR [ecx],eax
   5019a:	89 41 04             	mov    DWORD PTR [ecx+0x4],eax
   5019d:	e8 9e 70 fe ff       	call   return_word
   501a2:	89 41 08             	mov    DWORD PTR [ecx+0x8],eax
   501a5:	e8 96 70 fe ff       	call   return_word
   501aa:	89 41 0c             	mov    DWORD PTR [ecx+0xc],eax
   501ad:	e8 8e 70 fe ff       	call   return_word
   501b2:	89 41 10             	mov    DWORD PTR [ecx+0x10],eax
   501b5:	e8 86 70 fe ff       	call   return_word
   501ba:	89 c3                	mov    ebx,eax
   501bc:	85 c0                	test   eax,eax
   501be:	75 1f                	jne    do_timer_branch_2
   501c0:	8b 15 38 36 02 00    	mov    edx,DWORD PTR ds:@obj3:script_line_number                    ; fixup: num: 12416, src obj: 1, src ofs: 0x501c2, dst obj: 3, dst ofs: 0x23638
   501c6:	52                   	push   edx
   501c7:	68 95 c5 00 00       	push   @obj3:scrpties_cpp_variable_137                              ; fixup: num: 12415, src obj: 1, src ofs: 0x501c8, dst obj: 3, dst ofs: 0xc595
   501cc:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 12414, src obj: 1, src ofs: 0x501cd, dst obj: 3, dst ofs: 0x237fc
   501d1:	e8 0b 0a 02 00       	call   sprintf_
   501d6:	83 c4 0c             	add    esp,0xc
   501d9:	c6 41 14 00          	mov    BYTE PTR [ecx+0x14],0x0
   501dd:	eb 19                	jmp    do_timer_branch_3
do_timer_branch_2:
   501df:	ba cd c5 00 00       	mov    edx,@obj3:scrpties_cpp_variable_138                          ; fixup: num: 12413, src obj: 1, src ofs: 0x501e0, dst obj: 3, dst ofs: 0xc5cd
   501e4:	e8 47 62 02 00       	call   strcmp_
   501e9:	85 c0                	test   eax,eax
   501eb:	0f 94 c0             	sete   al
   501ee:	88 41 14             	mov    BYTE PTR [ecx+0x14],al
   501f1:	89 d8                	mov    eax,ebx
   501f3:	e8 f0 11 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
do_timer_branch_3:
   501f8:	e8 43 70 fe ff       	call   return_word
   501fd:	89 c3                	mov    ebx,eax
   501ff:	85 c0                	test   eax,eax
   50201:	75 1f                	jne    do_timer_branch_4
   50203:	8b 1d 38 36 02 00    	mov    ebx,DWORD PTR ds:@obj3:script_line_number                    ; fixup: num: 12412, src obj: 1, src ofs: 0x50205, dst obj: 3, dst ofs: 0x23638
   50209:	53                   	push   ebx
   5020a:	68 cf c5 00 00       	push   @obj3:scrpties_cpp_variable_139                              ; fixup: num: 12411, src obj: 1, src ofs: 0x5020b, dst obj: 3, dst ofs: 0xc5cf
   5020f:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 12410, src obj: 1, src ofs: 0x50210, dst obj: 3, dst ofs: 0x237fc
   50214:	e8 c8 09 02 00       	call   sprintf_
   50219:	83 c4 0c             	add    esp,0xc
   5021c:	c6 41 15 00          	mov    BYTE PTR [ecx+0x15],0x0
   50220:	eb 19                	jmp    do_timer_branch_5
do_timer_branch_4:
   50222:	ba 06 c6 00 00       	mov    edx,@obj3:scrpties_cpp_variable_140                          ; fixup: num: 12409, src obj: 1, src ofs: 0x50223, dst obj: 3, dst ofs: 0xc606
   50227:	e8 04 62 02 00       	call   strcmp_
   5022c:	85 c0                	test   eax,eax
   5022e:	0f 94 c0             	sete   al
   50231:	88 41 15             	mov    BYTE PTR [ecx+0x15],al
   50234:	89 d8                	mov    eax,ebx
   50236:	e8 ad 11 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
do_timer_branch_5:
   5023b:	e8 00 70 fe ff       	call   return_word
   50240:	89 c3                	mov    ebx,eax
   50242:	85 c0                	test   eax,eax
   50244:	75 1f                	jne    do_timer_branch_6
   50246:	8b 35 38 36 02 00    	mov    esi,DWORD PTR ds:@obj3:script_line_number                    ; fixup: num: 12424, src obj: 1, src ofs: 0x50248, dst obj: 3, dst ofs: 0x23638
   5024c:	56                   	push   esi
   5024d:	68 08 c6 00 00       	push   @obj3:scrpties_cpp_variable_141                              ; fixup: num: 12423, src obj: 1, src ofs: 0x5024e, dst obj: 3, dst ofs: 0xc608
   50252:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 12422, src obj: 1, src ofs: 0x50253, dst obj: 3, dst ofs: 0x237fc
   50257:	e8 85 09 02 00       	call   sprintf_
   5025c:	83 c4 0c             	add    esp,0xc
   5025f:	c6 41 16 00          	mov    BYTE PTR [ecx+0x16],0x0
   50263:	eb 19                	jmp    do_timer_branch_7
do_timer_branch_6:
   50265:	ba 41 c6 00 00       	mov    edx,@obj3:scrpties_cpp_variable_142                          ; fixup: num: 12421, src obj: 1, src ofs: 0x50266, dst obj: 3, dst ofs: 0xc641
   5026a:	e8 c1 61 02 00       	call   strcmp_
   5026f:	85 c0                	test   eax,eax
   50271:	0f 94 c0             	sete   al
   50274:	88 41 16             	mov    BYTE PTR [ecx+0x16],al
   50277:	89 d8                	mov    eax,ebx
   50279:	e8 6a 11 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
do_timer_branch_7:
   5027e:	8b 3d d0 5a 02 00    	mov    edi,DWORD PTR ds:@obj3:timer_list                            ; fixup: num: 12420, src obj: 1, src ofs: 0x50280, dst obj: 3, dst ofs: 0x25ad0
   50284:	c7 41 18 00 00 00 00 	mov    DWORD PTR [ecx+0x18],0x0
   5028b:	85 ff                	test   edi,edi
   5028d:	75 08                	jne    do_timer_branch_8
   5028f:	89 0d d0 5a 02 00    	mov    DWORD PTR ds:@obj3:timer_list,ecx                            ; fixup: num: 12419, src obj: 1, src ofs: 0x50291, dst obj: 3, dst ofs: 0x25ad0
   50295:	eb 15                	jmp    do_timer_branch_11
do_timer_branch_8:
   50297:	8b 6f 18             	mov    ebp,DWORD PTR [edi+0x18]
   5029a:	89 f8                	mov    eax,edi
   5029c:	85 ed                	test   ebp,ebp
   5029e:	74 09                	je     do_timer_branch_10
do_timer_branch_9:
   502a0:	8b 40 18             	mov    eax,DWORD PTR [eax+0x18]
   502a3:	83 78 18 00          	cmp    DWORD PTR [eax+0x18],0x0
   502a7:	75 f7                	jne    do_timer_branch_9
do_timer_branch_10:
   502a9:	89 48 18             	mov    DWORD PTR [eax+0x18],ecx
do_timer_branch_11:
   502ac:	ff 05 0c 5b 02 00    	inc    DWORD PTR ds:@obj3:timer_ctr                                 ; fixup: num: 12418, src obj: 1, src ofs: 0x502ae, dst obj: 3, dst ofs: 0x25b0c
   502b2:	5d                   	pop    ebp
   502b3:	5f                   	pop    edi
   502b4:	5e                   	pop    esi
   502b5:	5a                   	pop    edx
   502b6:	59                   	pop    ecx
   502b7:	5b                   	pop    ebx
   502b8:	c3                   	ret    
   502b9:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   502bf:	90                   	nop

;-------------------------------------------------
;  Function 'do_useitem'                         -
;-------------------------------------------------
do_useitem:
   502c0:	53                   	push   ebx
   502c1:	51                   	push   ecx
   502c2:	52                   	push   edx
   502c3:	b8 14 00 00 00       	mov    eax,0x14
   502c8:	e8 c6 11 02 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   502cd:	89 c1                	mov    ecx,eax
   502cf:	85 c0                	test   eax,eax
   502d1:	75 0f                	jne    do_useitem_branch_1
   502d3:	bb 43 c6 00 00       	mov    ebx,@obj3:scrpties_cpp_variable_143                          ; fixup: num: 12417, src obj: 1, src ofs: 0x502d4, dst obj: 3, dst ofs: 0xc643
   502d8:	ba 03 05 00 00       	mov    edx,0x503
   502dd:	e8 4e 7d fe ff       	call   _error_report
do_useitem_branch_1:
   502e2:	bb 14 00 00 00       	mov    ebx,0x14
   502e7:	89 c8                	mov    eax,ecx
   502e9:	31 d2                	xor    edx,edx
   502eb:	e8 e0 10 02 00       	call   memset_
   502f0:	e8 4b 6f fe ff       	call   return_word
   502f5:	89 01                	mov    DWORD PTR [ecx],eax
   502f7:	e8 44 6f fe ff       	call   return_word
   502fc:	89 41 04             	mov    DWORD PTR [ecx+0x4],eax
   502ff:	e8 3c 6f fe ff       	call   return_word
   50304:	89 41 08             	mov    DWORD PTR [ecx+0x8],eax
   50307:	e8 34 6f fe ff       	call   return_word
   5030c:	c7 41 10 00 00 00 00 	mov    DWORD PTR [ecx+0x10],0x0
   50313:	8b 15 d4 5a 02 00    	mov    edx,DWORD PTR ds:@obj3:useitem_list                          ; fixup: num: 12437, src obj: 1, src ofs: 0x50315, dst obj: 3, dst ofs: 0x25ad4
   50319:	89 41 0c             	mov    DWORD PTR [ecx+0xc],eax
   5031c:	85 d2                	test   edx,edx
   5031e:	75 08                	jne    do_useitem_branch_2
   50320:	89 0d d4 5a 02 00    	mov    DWORD PTR ds:@obj3:useitem_list,ecx                          ; fixup: num: 12436, src obj: 1, src ofs: 0x50322, dst obj: 3, dst ofs: 0x25ad4
   50326:	eb 15                	jmp    do_useitem_branch_5
do_useitem_branch_2:
   50328:	8b 5a 10             	mov    ebx,DWORD PTR [edx+0x10]
   5032b:	89 d0                	mov    eax,edx
   5032d:	85 db                	test   ebx,ebx
   5032f:	74 09                	je     do_useitem_branch_4
do_useitem_branch_3:
   50331:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
   50334:	83 78 10 00          	cmp    DWORD PTR [eax+0x10],0x0
   50338:	75 f7                	jne    do_useitem_branch_3
do_useitem_branch_4:
   5033a:	89 48 10             	mov    DWORD PTR [eax+0x10],ecx
do_useitem_branch_5:
   5033d:	ff 05 10 5b 02 00    	inc    DWORD PTR ds:@obj3:useitem_ctr                               ; fixup: num: 12435, src obj: 1, src ofs: 0x5033f, dst obj: 3, dst ofs: 0x25b10
   50343:	5a                   	pop    edx
   50344:	59                   	pop    ecx
   50345:	5b                   	pop    ebx
   50346:	c3                   	ret    
   50347:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   5034d:	8d 52 00             	lea    edx,[edx+0x0]

;-------------------------------------------------
;  Function 'make_harvester_primitives'          -
;-------------------------------------------------
make_harvester_primitives:
   50350:	52                   	push   edx
   50351:	ba 20 e1 04 00       	mov    edx,@obj1:do_anim                                            ; fixup: num: 12434, src obj: 1, src ofs: 0x50352, dst obj: 1, dst ofs: 0x4e120
   50356:	b8 5b c6 00 00       	mov    eax,@obj3:scrpties_cpp_variable_144                          ; fixup: num: 12433, src obj: 1, src ofs: 0x50357, dst obj: 3, dst ofs: 0xc65b
   5035b:	e8 70 e5 fd ff       	call   build_primitive
   50360:	ba 10 e4 04 00       	mov    edx,@obj1:do_command                                         ; fixup: num: 12432, src obj: 1, src ofs: 0x50361, dst obj: 1, dst ofs: 0x4e410
   50365:	b8 60 c6 00 00       	mov    eax,@obj3:scrpties_cpp_variable_145                          ; fixup: num: 12431, src obj: 1, src ofs: 0x50366, dst obj: 3, dst ofs: 0xc660
   5036a:	e8 61 e5 fd ff       	call   build_primitive
   5036f:	ba 80 eb 04 00       	mov    edx,@obj1:do_entrance                                        ; fixup: num: 12430, src obj: 1, src ofs: 0x50370, dst obj: 1, dst ofs: 0x4eb80
   50374:	b8 68 c6 00 00       	mov    eax,@obj3:scrpties_cpp_variable_146                          ; fixup: num: 12429, src obj: 1, src ofs: 0x50375, dst obj: 3, dst ofs: 0xc668
   50379:	e8 52 e5 fd ff       	call   build_primitive
   5037e:	ba b0 ec 04 00       	mov    edx,@obj1:do_execlst                                         ; fixup: num: 12428, src obj: 1, src ofs: 0x5037f, dst obj: 1, dst ofs: 0x4ecb0
   50383:	b8 71 c6 00 00       	mov    eax,@obj3:scrpties_cpp_variable_147                          ; fixup: num: 12427, src obj: 1, src ofs: 0x50384, dst obj: 3, dst ofs: 0xc671
   50388:	e8 43 e5 fd ff       	call   build_primitive
   5038d:	ba 80 ed 04 00       	mov    edx,@obj1:do_flag                                            ; fixup: num: 12426, src obj: 1, src ofs: 0x5038e, dst obj: 1, dst ofs: 0x4ed80
   50392:	b8 7b c6 00 00       	mov    eax,@obj3:scrpties_cpp_variable_148                          ; fixup: num: 12425, src obj: 1, src ofs: 0x50393, dst obj: 3, dst ofs: 0xc67b
   50397:	e8 34 e5 fd ff       	call   build_primitive
   5039c:	ba 20 ee 04 00       	mov    edx,@obj1:do_head                                            ; fixup: num: 12338, src obj: 1, src ofs: 0x5039d, dst obj: 1, dst ofs: 0x4ee20
   503a1:	b8 80 c6 00 00       	mov    eax,@obj3:scrpties_cpp_variable_149                          ; fixup: num: 12457, src obj: 1, src ofs: 0x503a2, dst obj: 3, dst ofs: 0xc680
   503a6:	e8 25 e5 fd ff       	call   build_primitive
   503ab:	ba 20 ef 04 00       	mov    edx,@obj1:do_map_entrance                                    ; fixup: num: 12456, src obj: 1, src ofs: 0x503ac, dst obj: 1, dst ofs: 0x4ef20
   503b0:	b8 85 c6 00 00       	mov    eax,@obj3:scrpties_cpp_variable_150                          ; fixup: num: 12455, src obj: 1, src ofs: 0x503b1, dst obj: 3, dst ofs: 0xc685
   503b5:	e8 16 e5 fd ff       	call   build_primitive
   503ba:	ba b0 ef 04 00       	mov    edx,@obj1:do_map_location                                    ; fixup: num: 12454, src obj: 1, src ofs: 0x503bb, dst obj: 1, dst ofs: 0x4efb0
   503bf:	b8 92 c6 00 00       	mov    eax,@obj3:scrpties_cpp_variable_151                          ; fixup: num: 12453, src obj: 1, src ofs: 0x503c0, dst obj: 3, dst ofs: 0xc692
   503c4:	e8 07 e5 fd ff       	call   build_primitive
   503c9:	ba 80 f0 04 00       	mov    edx,@obj1:do_monster                                         ; fixup: num: 12452, src obj: 1, src ofs: 0x503ca, dst obj: 1, dst ofs: 0x4f080
   503ce:	b8 9f c6 00 00       	mov    eax,@obj3:scrpties_cpp_variable_152                          ; fixup: num: 12451, src obj: 1, src ofs: 0x503cf, dst obj: 3, dst ofs: 0xc69f
   503d3:	e8 f8 e4 fd ff       	call   build_primitive
   503d8:	ba e0 f7 04 00       	mov    edx,@obj1:do_npc                                             ; fixup: num: 12450, src obj: 1, src ofs: 0x503d9, dst obj: 1, dst ofs: 0x4f7e0
   503dd:	b8 a7 c6 00 00       	mov    eax,@obj3:scrpties_cpp_variable_153                          ; fixup: num: 12449, src obj: 1, src ofs: 0x503de, dst obj: 3, dst ofs: 0xc6a7
   503e2:	e8 e9 e4 fd ff       	call   build_primitive
   503e7:	ba 40 fa 04 00       	mov    edx,@obj1:do_object                                          ; fixup: num: 12448, src obj: 1, src ofs: 0x503e8, dst obj: 1, dst ofs: 0x4fa40
   503ec:	b8 ab c6 00 00       	mov    eax,@obj3:scrpties_cpp_variable_154                          ; fixup: num: 12447, src obj: 1, src ofs: 0x503ed, dst obj: 3, dst ofs: 0xc6ab
   503f1:	e8 da e4 fd ff       	call   build_primitive
   503f6:	ba 30 fd 04 00       	mov    edx,@obj1:do_region                                          ; fixup: num: 12446, src obj: 1, src ofs: 0x503f7, dst obj: 1, dst ofs: 0x4fd30
   503fb:	b8 b2 c6 00 00       	mov    eax,@obj3:scrpties_cpp_variable_155                          ; fixup: num: 12445, src obj: 1, src ofs: 0x503fc, dst obj: 3, dst ofs: 0xc6b2
   50400:	e8 cb e4 fd ff       	call   build_primitive
   50405:	ba a0 fe 04 00       	mov    edx,@obj1:do_room                                            ; fixup: num: 12444, src obj: 1, src ofs: 0x50406, dst obj: 1, dst ofs: 0x4fea0
   5040a:	b8 b9 c6 00 00       	mov    eax,@obj3:scrpties_cpp_variable_156                          ; fixup: num: 12443, src obj: 1, src ofs: 0x5040b, dst obj: 3, dst ofs: 0xc6b9
   5040f:	e8 bc e4 fd ff       	call   build_primitive
   50414:	ba b0 00 05 00       	mov    edx,@obj1:do_text                                            ; fixup: num: 12442, src obj: 1, src ofs: 0x50415, dst obj: 1, dst ofs: 0x500b0
   50419:	b8 be c6 00 00       	mov    eax,@obj3:scrpties_cpp_variable_157                          ; fixup: num: 12441, src obj: 1, src ofs: 0x5041a, dst obj: 3, dst ofs: 0xc6be
   5041e:	e8 ad e4 fd ff       	call   build_primitive
   50423:	ba 60 01 05 00       	mov    edx,@obj1:do_timer                                           ; fixup: num: 12440, src obj: 1, src ofs: 0x50424, dst obj: 1, dst ofs: 0x50160
   50428:	b8 c3 c6 00 00       	mov    eax,@obj3:scrpties_cpp_variable_158                          ; fixup: num: 12439, src obj: 1, src ofs: 0x50429, dst obj: 3, dst ofs: 0xc6c3
   5042d:	e8 9e e4 fd ff       	call   build_primitive
   50432:	ba c0 02 05 00       	mov    edx,@obj1:do_useitem                                         ; fixup: num: 12438, src obj: 1, src ofs: 0x50433, dst obj: 1, dst ofs: 0x502c0
   50437:	b8 c9 c6 00 00       	mov    eax,@obj3:scrpties_cpp_variable_159                          ; fixup: num: 12349, src obj: 1, src ofs: 0x50438, dst obj: 3, dst ofs: 0xc6c9
   5043c:	e8 8f e4 fd ff       	call   build_primitive
   50441:	5a                   	pop    edx
   50442:	c3                   	ret    
   50443:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   50449:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
   5044f:	90                   	nop

;-------------------------------------------------
;  Function 'clear_script_data'                  -
;-------------------------------------------------
clear_script_data:
   50450:	53                   	push   ebx
   50451:	51                   	push   ecx
   50452:	52                   	push   edx
   50453:	56                   	push   esi
   50454:	57                   	push   edi
   50455:	55                   	push   ebp
   50456:	8b 15 84 60 02 00    	mov    edx,DWORD PTR ds:@obj3:palette                               ; fixup: num: 12348, src obj: 1, src ofs: 0x50458, dst obj: 3, dst ofs: 0x26084
   5045c:	85 d2                	test   edx,edx
   5045e:	75 1b                	jne    clear_script_data_branch_1
   50460:	b9 4e 05 00 00       	mov    ecx,0x54e
   50465:	bb d1 c6 00 00       	mov    ebx,@obj3:scrpties_cpp_variable_160                          ; fixup: num: 12347, src obj: 1, src ofs: 0x50466, dst obj: 3, dst ofs: 0xc6d1
   5046a:	b8 de c6 00 00       	mov    eax,@obj3:scrpties_cpp_variable_161                          ; fixup: num: 12346, src obj: 1, src ofs: 0x5046b, dst obj: 3, dst ofs: 0xc6de
   5046f:	e8 6c c9 fb ff       	call   XFILE_read2
   50474:	a3 84 60 02 00       	mov    ds:@obj3:palette,eax                                         ; fixup: num: 12345, src obj: 1, src ofs: 0x50475, dst obj: 3, dst ofs: 0x26084
   50479:	eb 14                	jmp    clear_script_data_branch_2
clear_script_data_branch_1:
   5047b:	b9 50 05 00 00       	mov    ecx,0x550
   50480:	bb f6 c6 00 00       	mov    ebx,@obj3:scrpties_cpp_variable_162                          ; fixup: num: 12344, src obj: 1, src ofs: 0x50481, dst obj: 3, dst ofs: 0xc6f6
   50485:	b8 03 c7 00 00       	mov    eax,@obj3:scrpties_cpp_variable_163                          ; fixup: num: 12343, src obj: 1, src ofs: 0x50486, dst obj: 3, dst ofs: 0xc703
   5048a:	e8 51 c9 fb ff       	call   XFILE_read2
clear_script_data_branch_2:
   5048f:	b8 28 11 00 00       	mov    eax,0x1128
   50494:	e8 7f 1a 02 00       	call   W?$nwn(ui)pnv
   50499:	85 c0                	test   eax,eax
   5049b:	74 28                	je     clear_script_data_branch_3
   5049d:	6a 00                	push   0x0
   5049f:	6a 00                	push   0x0
   504a1:	6a 01                	push   0x1
   504a3:	6a 00                	push   0x0
   504a5:	6a 00                	push   0x0
   504a7:	68 a0 00 00 00       	push   0xa0
   504ac:	b9 1b c7 00 00       	mov    ecx,@obj3:scrpties_cpp_variable_164                          ; fixup: num: 12342, src obj: 1, src ofs: 0x504ad, dst obj: 3, dst ofs: 0xc71b
   504b1:	68 fa 00 00 00       	push   0xfa
   504b6:	bb 0f 00 00 00       	mov    ebx,0xf
   504bb:	ba 23 c7 00 00       	mov    edx,@obj3:scrpties_cpp_variable_165                          ; fixup: num: 12341, src obj: 1, src ofs: 0x504bc, dst obj: 3, dst ofs: 0xc723
   504c0:	e8 5b b5 fe ff       	call   W?$ct:ANIMATION$n(pnaipnaiibiucucuc)_
clear_script_data_branch_3:
   504c5:	89 c6                	mov    esi,eax
   504c7:	85 c0                	test   eax,eax
   504c9:	75 0f                	jne    clear_script_data_branch_4
   504cb:	bb 3d c7 00 00       	mov    ebx,@obj3:scrpties_cpp_variable_166                          ; fixup: num: 12340, src obj: 1, src ofs: 0x504cc, dst obj: 3, dst ofs: 0xc73d
   504d0:	ba 55 05 00 00       	mov    edx,0x555
   504d5:	e8 56 7b fe ff       	call   _error_report
clear_script_data_branch_4:
   504da:	83 ec 04             	sub    esp,0x4
   504dd:	dd 05 b4 0f 01 00    	fld    QWORD PTR ds:@obj3:pal_gamma                                 ; fixup: num: 12339, src obj: 1, src ofs: 0x504df, dst obj: 3, dst ofs: 0x10fb4
   504e3:	d9 1c 24             	fstp   DWORD PTR [esp]
   504e6:	ba 00 01 00 00       	mov    edx,0x100
   504eb:	a1 84 60 02 00       	mov    eax,ds:@obj3:palette                                         ; fixup: num: 12357, src obj: 1, src ofs: 0x504ec, dst obj: 3, dst ofs: 0x26084
   504f0:	e8 7b 22 fc ff       	call   setvgapalette_mod_14
   504f5:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 12356, src obj: 1, src ofs: 0x504f6, dst obj: 3, dst ofs: 0x25a88
   504fa:	89 f2                	mov    edx,esi
   504fc:	bb 84 5a 02 00       	mov    ebx,@obj3:the_screen                                         ; fixup: num: 12355, src obj: 1, src ofs: 0x504fd, dst obj: 3, dst ofs: 0x25a84
   50501:	e8 2a bc ff ff       	call   insert_bitmap
   50506:	31 d2                	xor    edx,edx
   50508:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   5050e:	8b d2                	mov    edx,edx
clear_script_data_branch_5:
   50510:	89 f0                	mov    eax,esi
   50512:	e8 c9 c5 fe ff       	call   update_mod_76
   50517:	89 d8                	mov    eax,ebx
   50519:	42                   	inc    edx
   5051a:	e8 81 d7 ff ff       	call   update_mod_84
   5051f:	81 fa 88 13 00 00    	cmp    edx,0x1388
   50525:	7c e9                	jl     clear_script_data_branch_5
   50527:	31 db                	xor    ebx,ebx
clear_script_data_branch_6:
   50529:	8b 0d 90 5a 02 00    	mov    ecx,DWORD PTR ds:@obj3:anim_list                             ; fixup: num: 12354, src obj: 1, src ofs: 0x5052b, dst obj: 3, dst ofs: 0x25a90
   5052f:	39 cb                	cmp    ebx,ecx
   50531:	74 41                	je     clear_script_data_branch_10
   50533:	89 ca                	mov    edx,ecx
   50535:	8b 41 28             	mov    eax,DWORD PTR [ecx+0x28]
   50538:	8b 69 10             	mov    ebp,DWORD PTR [ecx+0x10]
   5053b:	a3 90 5a 02 00       	mov    ds:@obj3:anim_list,eax                                       ; fixup: num: 12353, src obj: 1, src ofs: 0x5053c, dst obj: 3, dst ofs: 0x25a90
   50540:	39 eb                	cmp    ebx,ebp
   50542:	74 07                	je     clear_script_data_branch_7
   50544:	89 e8                	mov    eax,ebp
   50546:	e8 9d 0e 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
clear_script_data_branch_7:
   5054b:	8b 42 14             	mov    eax,DWORD PTR [edx+0x14]
   5054e:	39 c3                	cmp    ebx,eax
   50550:	74 05                	je     clear_script_data_branch_8
   50552:	e8 91 0e 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
clear_script_data_branch_8:
   50557:	8b 4a 18             	mov    ecx,DWORD PTR [edx+0x18]
   5055a:	39 cb                	cmp    ebx,ecx
   5055c:	74 07                	je     clear_script_data_branch_9
   5055e:	89 c8                	mov    eax,ecx
   50560:	e8 83 0e 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
clear_script_data_branch_9:
   50565:	89 d0                	mov    eax,edx
   50567:	e8 7c 0e 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   5056c:	ff 0d d8 5a 02 00    	dec    DWORD PTR ds:@obj3:anim_ctr                                  ; fixup: num: 12352, src obj: 1, src ofs: 0x5056e, dst obj: 3, dst ofs: 0x25ad8
   50572:	eb b5                	jmp    clear_script_data_branch_6
clear_script_data_branch_10:
   50574:	89 f0                	mov    eax,esi
   50576:	e8 65 c5 fe ff       	call   update_mod_76
   5057b:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 12351, src obj: 1, src ofs: 0x5057c, dst obj: 3, dst ofs: 0x25a84
   50580:	e8 1b d7 ff ff       	call   update_mod_84
   50585:	83 3d 94 5a 02 00 00 	cmp    DWORD PTR ds:@obj3:command_list,0x0                          ; fixup: num: 12350, src obj: 1, src ofs: 0x50587, dst obj: 3, dst ofs: 0x25a94
   5058c:	0f 84 6f 00 00 00    	je     clear_script_data_branch_17
clear_script_data_branch_11:
   50592:	8b 15 94 5a 02 00    	mov    edx,DWORD PTR ds:@obj3:command_list                          ; fixup: num: 12366, src obj: 1, src ofs: 0x50594, dst obj: 3, dst ofs: 0x25a94
   50598:	8b 42 1c             	mov    eax,DWORD PTR [edx+0x1c]
   5059b:	8b 5a 04             	mov    ebx,DWORD PTR [edx+0x4]
   5059e:	a3 94 5a 02 00       	mov    ds:@obj3:command_list,eax                                    ; fixup: num: 12365, src obj: 1, src ofs: 0x5059f, dst obj: 3, dst ofs: 0x25a94
   505a3:	85 db                	test   ebx,ebx
   505a5:	74 07                	je     clear_script_data_branch_12
   505a7:	89 d8                	mov    eax,ebx
   505a9:	e8 3a 0e 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
clear_script_data_branch_12:
   505ae:	8b 4a 08             	mov    ecx,DWORD PTR [edx+0x8]
   505b1:	85 c9                	test   ecx,ecx
   505b3:	74 07                	je     clear_script_data_branch_13
   505b5:	89 c8                	mov    eax,ecx
   505b7:	e8 2c 0e 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
clear_script_data_branch_13:
   505bc:	8b 7a 0c             	mov    edi,DWORD PTR [edx+0xc]
   505bf:	85 ff                	test   edi,edi
   505c1:	74 07                	je     clear_script_data_branch_14
   505c3:	89 f8                	mov    eax,edi
   505c5:	e8 1e 0e 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
clear_script_data_branch_14:
   505ca:	8b 6a 10             	mov    ebp,DWORD PTR [edx+0x10]
   505cd:	85 ed                	test   ebp,ebp
   505cf:	74 07                	je     clear_script_data_branch_15
   505d1:	89 e8                	mov    eax,ebp
   505d3:	e8 10 0e 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
clear_script_data_branch_15:
   505d8:	8b 42 14             	mov    eax,DWORD PTR [edx+0x14]
   505db:	85 c0                	test   eax,eax
   505dd:	74 05                	je     clear_script_data_branch_16
   505df:	e8 04 0e 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
clear_script_data_branch_16:
   505e4:	89 d0                	mov    eax,edx
   505e6:	e8 fd 0d 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   505eb:	8b 2d dc 5a 02 00    	mov    ebp,DWORD PTR ds:@obj3:command_ctr                           ; fixup: num: 12364, src obj: 1, src ofs: 0x505ed, dst obj: 3, dst ofs: 0x25adc
   505f1:	4d                   	dec    ebp
   505f2:	a1 94 5a 02 00       	mov    eax,ds:@obj3:command_list                                    ; fixup: num: 12363, src obj: 1, src ofs: 0x505f3, dst obj: 3, dst ofs: 0x25a94
   505f7:	89 2d dc 5a 02 00    	mov    DWORD PTR ds:@obj3:command_ctr,ebp                           ; fixup: num: 12362, src obj: 1, src ofs: 0x505f9, dst obj: 3, dst ofs: 0x25adc
   505fd:	85 c0                	test   eax,eax
   505ff:	75 91                	jne    clear_script_data_branch_11
clear_script_data_branch_17:
   50601:	89 f0                	mov    eax,esi
   50603:	e8 d8 c4 fe ff       	call   update_mod_76
   50608:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 12361, src obj: 1, src ofs: 0x50609, dst obj: 3, dst ofs: 0x25a84
   5060d:	e8 8e d6 ff ff       	call   update_mod_84
   50612:	83 3d 98 5a 02 00 00 	cmp    DWORD PTR ds:@obj3:entrance_list,0x0                         ; fixup: num: 12360, src obj: 1, src ofs: 0x50614, dst obj: 3, dst ofs: 0x25a98
   50619:	74 48                	je     clear_script_data_branch_21
clear_script_data_branch_18:
   5061b:	8b 15 98 5a 02 00    	mov    edx,DWORD PTR ds:@obj3:entrance_list                         ; fixup: num: 12359, src obj: 1, src ofs: 0x5061d, dst obj: 3, dst ofs: 0x25a98
   50621:	8b 42 18             	mov    eax,DWORD PTR [edx+0x18]
   50624:	8b 7a 10             	mov    edi,DWORD PTR [edx+0x10]
   50627:	a3 98 5a 02 00       	mov    ds:@obj3:entrance_list,eax                                   ; fixup: num: 12358, src obj: 1, src ofs: 0x50628, dst obj: 3, dst ofs: 0x25a98
   5062c:	85 ff                	test   edi,edi
   5062e:	74 07                	je     clear_script_data_branch_19
   50630:	89 f8                	mov    eax,edi
   50632:	e8 b1 0d 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
clear_script_data_branch_19:
   50637:	8b 6a 14             	mov    ebp,DWORD PTR [edx+0x14]
   5063a:	85 ed                	test   ebp,ebp
   5063c:	74 07                	je     clear_script_data_branch_20
   5063e:	89 e8                	mov    eax,ebp
   50640:	e8 a3 0d 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
clear_script_data_branch_20:
   50645:	89 d0                	mov    eax,edx
   50647:	e8 9c 0d 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   5064c:	8b 15 e0 5a 02 00    	mov    edx,DWORD PTR ds:@obj3:entrance_ctr                          ; fixup: num: 12378, src obj: 1, src ofs: 0x5064e, dst obj: 3, dst ofs: 0x25ae0
   50652:	4a                   	dec    edx
   50653:	8b 1d 98 5a 02 00    	mov    ebx,DWORD PTR ds:@obj3:entrance_list                         ; fixup: num: 12377, src obj: 1, src ofs: 0x50655, dst obj: 3, dst ofs: 0x25a98
   50659:	89 15 e0 5a 02 00    	mov    DWORD PTR ds:@obj3:entrance_ctr,edx                          ; fixup: num: 12376, src obj: 1, src ofs: 0x5065b, dst obj: 3, dst ofs: 0x25ae0
   5065f:	85 db                	test   ebx,ebx
   50661:	75 b8                	jne    clear_script_data_branch_18
clear_script_data_branch_21:
   50663:	89 f0                	mov    eax,esi
   50665:	e8 76 c4 fe ff       	call   update_mod_76
   5066a:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 12375, src obj: 1, src ofs: 0x5066b, dst obj: 3, dst ofs: 0x25a84
   5066f:	e8 2c d6 ff ff       	call   update_mod_84
   50674:	83 3d a0 5a 02 00 00 	cmp    DWORD PTR ds:@obj3:execlst_list,0x0                          ; fixup: num: 12374, src obj: 1, src ofs: 0x50676, dst obj: 3, dst ofs: 0x25aa0
   5067b:	74 57                	je     clear_script_data_branch_27
   5067d:	31 c9                	xor    ecx,ecx
clear_script_data_branch_22:
   5067f:	8b 1d a0 5a 02 00    	mov    ebx,DWORD PTR ds:@obj3:execlst_list                          ; fixup: num: 12373, src obj: 1, src ofs: 0x50681, dst obj: 3, dst ofs: 0x25aa0
   50685:	8b 43 08             	mov    eax,DWORD PTR [ebx+0x8]
   50688:	8b 3b                	mov    edi,DWORD PTR [ebx]
   5068a:	a3 a0 5a 02 00       	mov    ds:@obj3:execlst_list,eax                                    ; fixup: num: 12372, src obj: 1, src ofs: 0x5068b, dst obj: 3, dst ofs: 0x25aa0
   5068f:	39 f9                	cmp    ecx,edi
   50691:	74 07                	je     clear_script_data_branch_24
   50693:	89 f8                	mov    eax,edi
clear_script_data_branch_23:
   50695:	e8 4e 0d 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
clear_script_data_branch_24:
   5069a:	8b 53 04             	mov    edx,DWORD PTR [ebx+0x4]
   5069d:	39 d1                	cmp    ecx,edx
   5069f:	74 17                	je     clear_script_data_branch_26
   506a1:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
   506a4:	89 43 04             	mov    DWORD PTR [ebx+0x4],eax
   506a7:	8b 3a                	mov    edi,DWORD PTR [edx]
   506a9:	39 f9                	cmp    ecx,edi
   506ab:	74 07                	je     clear_script_data_branch_25
   506ad:	89 f8                	mov    eax,edi
   506af:	e8 34 0d 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
clear_script_data_branch_25:
   506b4:	89 d0                	mov    eax,edx
   506b6:	eb dd                	jmp    clear_script_data_branch_23
clear_script_data_branch_26:
   506b8:	89 d8                	mov    eax,ebx
   506ba:	e8 29 0d 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   506bf:	a1 e4 5a 02 00       	mov    eax,ds:@obj3:execlst_ctr                                     ; fixup: num: 12371, src obj: 1, src ofs: 0x506c0, dst obj: 3, dst ofs: 0x25ae4
   506c4:	48                   	dec    eax
   506c5:	8b 15 a0 5a 02 00    	mov    edx,DWORD PTR ds:@obj3:execlst_list                          ; fixup: num: 12370, src obj: 1, src ofs: 0x506c7, dst obj: 3, dst ofs: 0x25aa0
   506cb:	a3 e4 5a 02 00       	mov    ds:@obj3:execlst_ctr,eax                                     ; fixup: num: 12369, src obj: 1, src ofs: 0x506cc, dst obj: 3, dst ofs: 0x25ae4
   506d0:	39 d1                	cmp    ecx,edx
   506d2:	75 ab                	jne    clear_script_data_branch_22
clear_script_data_branch_27:
   506d4:	89 f0                	mov    eax,esi
   506d6:	e8 05 c4 fe ff       	call   update_mod_76
   506db:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 12368, src obj: 1, src ofs: 0x506dc, dst obj: 3, dst ofs: 0x25a84
   506e0:	e8 bb d5 ff ff       	call   update_mod_84
   506e5:	83 3d a4 5a 02 00 00 	cmp    DWORD PTR ds:@obj3:flag_list,0x0                             ; fixup: num: 12367, src obj: 1, src ofs: 0x506e7, dst obj: 3, dst ofs: 0x25aa4
   506ec:	74 38                	je     clear_script_data_branch_30
clear_script_data_branch_28:
   506ee:	8b 15 a4 5a 02 00    	mov    edx,DWORD PTR ds:@obj3:flag_list                             ; fixup: num: 12392, src obj: 1, src ofs: 0x506f0, dst obj: 3, dst ofs: 0x25aa4
   506f4:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
   506f7:	8b 1a                	mov    ebx,DWORD PTR [edx]
   506f9:	a3 a4 5a 02 00       	mov    ds:@obj3:flag_list,eax                                       ; fixup: num: 12391, src obj: 1, src ofs: 0x506fa, dst obj: 3, dst ofs: 0x25aa4
   506fe:	85 db                	test   ebx,ebx
   50700:	74 07                	je     clear_script_data_branch_29
   50702:	89 d8                	mov    eax,ebx
   50704:	e8 df 0c 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
clear_script_data_branch_29:
   50709:	89 d0                	mov    eax,edx
   5070b:	e8 d8 0c 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   50710:	8b 2d e8 5a 02 00    	mov    ebp,DWORD PTR ds:@obj3:flag_ctr                              ; fixup: num: 12390, src obj: 1, src ofs: 0x50712, dst obj: 3, dst ofs: 0x25ae8
   50716:	4d                   	dec    ebp
   50717:	a1 a4 5a 02 00       	mov    eax,ds:@obj3:flag_list                                       ; fixup: num: 12389, src obj: 1, src ofs: 0x50718, dst obj: 3, dst ofs: 0x25aa4
   5071c:	89 2d e8 5a 02 00    	mov    DWORD PTR ds:@obj3:flag_ctr,ebp                              ; fixup: num: 12388, src obj: 1, src ofs: 0x5071e, dst obj: 3, dst ofs: 0x25ae8
   50722:	85 c0                	test   eax,eax
   50724:	75 c8                	jne    clear_script_data_branch_28
clear_script_data_branch_30:
   50726:	89 f0                	mov    eax,esi
   50728:	e8 b3 c3 fe ff       	call   update_mod_76
   5072d:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 12387, src obj: 1, src ofs: 0x5072e, dst obj: 3, dst ofs: 0x25a84
   50732:	e8 69 d5 ff ff       	call   update_mod_84
   50737:	83 3d a8 5a 02 00 00 	cmp    DWORD PTR ds:@obj3:head_list,0x0                             ; fixup: num: 12386, src obj: 1, src ofs: 0x50739, dst obj: 3, dst ofs: 0x25aa8
   5073e:	74 45                	je     clear_script_data_branch_34
clear_script_data_branch_31:
   50740:	8b 15 a8 5a 02 00    	mov    edx,DWORD PTR ds:@obj3:head_list                             ; fixup: num: 12385, src obj: 1, src ofs: 0x50742, dst obj: 3, dst ofs: 0x25aa8
   50746:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
   50749:	a3 a8 5a 02 00       	mov    ds:@obj3:head_list,eax                                       ; fixup: num: 12384, src obj: 1, src ofs: 0x5074a, dst obj: 3, dst ofs: 0x25aa8
   5074e:	8b 02                	mov    eax,DWORD PTR [edx]
   50750:	85 c0                	test   eax,eax
   50752:	74 05                	je     clear_script_data_branch_32
   50754:	e8 8f 0c 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
clear_script_data_branch_32:
   50759:	8b 5a 04             	mov    ebx,DWORD PTR [edx+0x4]
   5075c:	85 db                	test   ebx,ebx
   5075e:	74 07                	je     clear_script_data_branch_33
   50760:	89 d8                	mov    eax,ebx
   50762:	e8 81 0c 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
clear_script_data_branch_33:
   50767:	89 d0                	mov    eax,edx
   50769:	e8 7a 0c 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   5076e:	8b 0d ec 5a 02 00    	mov    ecx,DWORD PTR ds:@obj3:head_ctr                              ; fixup: num: 12383, src obj: 1, src ofs: 0x50770, dst obj: 3, dst ofs: 0x25aec
   50774:	49                   	dec    ecx
   50775:	8b 3d a8 5a 02 00    	mov    edi,DWORD PTR ds:@obj3:head_list                             ; fixup: num: 12382, src obj: 1, src ofs: 0x50777, dst obj: 3, dst ofs: 0x25aa8
   5077b:	89 0d ec 5a 02 00    	mov    DWORD PTR ds:@obj3:head_ctr,ecx                              ; fixup: num: 12381, src obj: 1, src ofs: 0x5077d, dst obj: 3, dst ofs: 0x25aec
   50781:	85 ff                	test   edi,edi
   50783:	75 bb                	jne    clear_script_data_branch_31
clear_script_data_branch_34:
   50785:	89 f0                	mov    eax,esi
   50787:	e8 54 c3 fe ff       	call   update_mod_76
   5078c:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 12380, src obj: 1, src ofs: 0x5078d, dst obj: 3, dst ofs: 0x25a84
   50791:	e8 0a d5 ff ff       	call   update_mod_84
   50796:	83 3d ac 5a 02 00 00 	cmp    DWORD PTR ds:@obj3:map_entrance_list,0x0                     ; fixup: num: 12379, src obj: 1, src ofs: 0x50798, dst obj: 3, dst ofs: 0x25aac
   5079d:	74 38                	je     clear_script_data_branch_37
clear_script_data_branch_35:
   5079f:	8b 15 ac 5a 02 00    	mov    edx,DWORD PTR ds:@obj3:map_entrance_list                     ; fixup: num: 12291, src obj: 1, src ofs: 0x507a1, dst obj: 3, dst ofs: 0x25aac
   507a5:	8b 42 10             	mov    eax,DWORD PTR [edx+0x10]
   507a8:	a3 ac 5a 02 00       	mov    ds:@obj3:map_entrance_list,eax                               ; fixup: num: 12290, src obj: 1, src ofs: 0x507a9, dst obj: 3, dst ofs: 0x25aac
   507ad:	8b 42 0c             	mov    eax,DWORD PTR [edx+0xc]
   507b0:	85 c0                	test   eax,eax
   507b2:	74 05                	je     clear_script_data_branch_36
   507b4:	e8 2f 0c 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
clear_script_data_branch_36:
   507b9:	89 d0                	mov    eax,edx
   507bb:	e8 28 0c 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   507c0:	8b 0d f0 5a 02 00    	mov    ecx,DWORD PTR ds:@obj3:map_entrance_ctr                      ; fixup: num: 12289, src obj: 1, src ofs: 0x507c2, dst obj: 3, dst ofs: 0x25af0
   507c6:	49                   	dec    ecx
   507c7:	8b 3d ac 5a 02 00    	mov    edi,DWORD PTR ds:@obj3:map_entrance_list                     ; fixup: num: 12288, src obj: 1, src ofs: 0x507c9, dst obj: 3, dst ofs: 0x25aac
   507cd:	89 0d f0 5a 02 00    	mov    DWORD PTR ds:@obj3:map_entrance_ctr,ecx                      ; fixup: num: 12287, src obj: 1, src ofs: 0x507cf, dst obj: 3, dst ofs: 0x25af0
   507d3:	85 ff                	test   edi,edi
   507d5:	75 c8                	jne    clear_script_data_branch_35
clear_script_data_branch_37:
   507d7:	89 f0                	mov    eax,esi
   507d9:	e8 02 c3 fe ff       	call   update_mod_76
   507de:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 12286, src obj: 1, src ofs: 0x507df, dst obj: 3, dst ofs: 0x25a84
   507e3:	e8 b8 d4 ff ff       	call   update_mod_84
   507e8:	83 3d b0 5a 02 00 00 	cmp    DWORD PTR ds:@obj3:map_location_list,0x0                     ; fixup: num: 12285, src obj: 1, src ofs: 0x507ea, dst obj: 3, dst ofs: 0x25ab0
   507ef:	74 48                	je     clear_script_data_branch_41
clear_script_data_branch_38:
   507f1:	8b 15 b0 5a 02 00    	mov    edx,DWORD PTR ds:@obj3:map_location_list                     ; fixup: num: 12284, src obj: 1, src ofs: 0x507f3, dst obj: 3, dst ofs: 0x25ab0
   507f7:	8b 42 24             	mov    eax,DWORD PTR [edx+0x24]
   507fa:	8b 7a 1c             	mov    edi,DWORD PTR [edx+0x1c]
   507fd:	a3 b0 5a 02 00       	mov    ds:@obj3:map_location_list,eax                               ; fixup: num: 12283, src obj: 1, src ofs: 0x507fe, dst obj: 3, dst ofs: 0x25ab0
   50802:	85 ff                	test   edi,edi
   50804:	74 07                	je     clear_script_data_branch_39
   50806:	89 f8                	mov    eax,edi
   50808:	e8 db 0b 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
clear_script_data_branch_39:
   5080d:	8b 6a 20             	mov    ebp,DWORD PTR [edx+0x20]
   50810:	85 ed                	test   ebp,ebp
   50812:	74 07                	je     clear_script_data_branch_40
   50814:	89 e8                	mov    eax,ebp
   50816:	e8 cd 0b 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
clear_script_data_branch_40:
   5081b:	89 d0                	mov    eax,edx
   5081d:	e8 c6 0b 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   50822:	8b 15 f4 5a 02 00    	mov    edx,DWORD PTR ds:@obj3:map_location_ctr                      ; fixup: num: 12282, src obj: 1, src ofs: 0x50824, dst obj: 3, dst ofs: 0x25af4
   50828:	4a                   	dec    edx
   50829:	8b 1d b0 5a 02 00    	mov    ebx,DWORD PTR ds:@obj3:map_location_list                     ; fixup: num: 12395, src obj: 1, src ofs: 0x5082b, dst obj: 3, dst ofs: 0x25ab0
   5082f:	89 15 f4 5a 02 00    	mov    DWORD PTR ds:@obj3:map_location_ctr,edx                      ; fixup: num: 12394, src obj: 1, src ofs: 0x50831, dst obj: 3, dst ofs: 0x25af4
   50835:	85 db                	test   ebx,ebx
   50837:	75 b8                	jne    clear_script_data_branch_38
clear_script_data_branch_41:
   50839:	89 f0                	mov    eax,esi
   5083b:	e8 a0 c2 fe ff       	call   update_mod_76
   50840:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 12393, src obj: 1, src ofs: 0x50841, dst obj: 3, dst ofs: 0x25a84
   50845:	e8 56 d4 ff ff       	call   update_mod_84
   5084a:	83 3d b4 5a 02 00 00 	cmp    DWORD PTR ds:@obj3:monster_list,0x0                          ; fixup: num: 12294, src obj: 1, src ofs: 0x5084c, dst obj: 3, dst ofs: 0x25ab4
   50851:	0f 84 19 01 00 00    	je     clear_script_data_branch_60
clear_script_data_branch_42:
   50857:	8b 15 b4 5a 02 00    	mov    edx,DWORD PTR ds:@obj3:monster_list                          ; fixup: num: 12293, src obj: 1, src ofs: 0x50859, dst obj: 3, dst ofs: 0x25ab4
   5085d:	8b 82 90 00 00 00    	mov    eax,DWORD PTR [edx+0x90]
   50863:	8b 4a 2c             	mov    ecx,DWORD PTR [edx+0x2c]
   50866:	a3 b4 5a 02 00       	mov    ds:@obj3:monster_list,eax                                    ; fixup: num: 12292, src obj: 1, src ofs: 0x50867, dst obj: 3, dst ofs: 0x25ab4
   5086b:	85 c9                	test   ecx,ecx
   5086d:	74 07                	je     clear_script_data_branch_43
   5086f:	89 c8                	mov    eax,ecx
   50871:	e8 72 0b 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
clear_script_data_branch_43:
   50876:	8b 7a 30             	mov    edi,DWORD PTR [edx+0x30]
   50879:	85 ff                	test   edi,edi
   5087b:	74 07                	je     clear_script_data_branch_44
   5087d:	89 f8                	mov    eax,edi
   5087f:	e8 64 0b 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
clear_script_data_branch_44:
   50884:	8b 6a 34             	mov    ebp,DWORD PTR [edx+0x34]
   50887:	85 ed                	test   ebp,ebp
   50889:	74 07                	je     clear_script_data_branch_45
   5088b:	89 e8                	mov    eax,ebp
   5088d:	e8 56 0b 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
clear_script_data_branch_45:
   50892:	8b 42 38             	mov    eax,DWORD PTR [edx+0x38]
   50895:	85 c0                	test   eax,eax
   50897:	74 05                	je     clear_script_data_branch_46
   50899:	e8 4a 0b 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
clear_script_data_branch_46:
   5089e:	8b 5a 3c             	mov    ebx,DWORD PTR [edx+0x3c]
   508a1:	85 db                	test   ebx,ebx
   508a3:	74 07                	je     clear_script_data_branch_47
   508a5:	89 d8                	mov    eax,ebx
   508a7:	e8 3c 0b 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
clear_script_data_branch_47:
   508ac:	8b 4a 4c             	mov    ecx,DWORD PTR [edx+0x4c]
   508af:	85 c9                	test   ecx,ecx
   508b1:	74 07                	je     clear_script_data_branch_48
   508b3:	89 c8                	mov    eax,ecx
   508b5:	e8 2e 0b 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
clear_script_data_branch_48:
   508ba:	8b 7a 50             	mov    edi,DWORD PTR [edx+0x50]
   508bd:	85 ff                	test   edi,edi
   508bf:	74 07                	je     clear_script_data_branch_49
   508c1:	89 f8                	mov    eax,edi
   508c3:	e8 20 0b 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
clear_script_data_branch_49:
   508c8:	8b 6a 54             	mov    ebp,DWORD PTR [edx+0x54]
   508cb:	85 ed                	test   ebp,ebp
   508cd:	74 07                	je     clear_script_data_branch_50
   508cf:	89 e8                	mov    eax,ebp
   508d1:	e8 12 0b 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
clear_script_data_branch_50:
   508d6:	8b 42 6c             	mov    eax,DWORD PTR [edx+0x6c]
   508d9:	85 c0                	test   eax,eax
   508db:	74 05                	je     clear_script_data_branch_51
   508dd:	e8 06 0b 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
clear_script_data_branch_51:
   508e2:	8b 5a 58             	mov    ebx,DWORD PTR [edx+0x58]
   508e5:	85 db                	test   ebx,ebx
   508e7:	74 07                	je     clear_script_data_branch_52
   508e9:	89 d8                	mov    eax,ebx
   508eb:	e8 f8 0a 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
clear_script_data_branch_52:
   508f0:	8b 4a 5c             	mov    ecx,DWORD PTR [edx+0x5c]
   508f3:	85 c9                	test   ecx,ecx
   508f5:	74 07                	je     clear_script_data_branch_53
   508f7:	89 c8                	mov    eax,ecx
   508f9:	e8 ea 0a 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
clear_script_data_branch_53:
   508fe:	8b 7a 60             	mov    edi,DWORD PTR [edx+0x60]
   50901:	85 ff                	test   edi,edi
   50903:	74 07                	je     clear_script_data_branch_54
   50905:	89 f8                	mov    eax,edi
   50907:	e8 dc 0a 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
clear_script_data_branch_54:
   5090c:	8b 6a 64             	mov    ebp,DWORD PTR [edx+0x64]
   5090f:	85 ed                	test   ebp,ebp
   50911:	74 07                	je     clear_script_data_branch_55
   50913:	89 e8                	mov    eax,ebp
   50915:	e8 ce 0a 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
clear_script_data_branch_55:
   5091a:	8b 42 68             	mov    eax,DWORD PTR [edx+0x68]
   5091d:	85 c0                	test   eax,eax
   5091f:	74 05                	je     clear_script_data_branch_56
   50921:	e8 c2 0a 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
clear_script_data_branch_56:
   50926:	8b 5a 40             	mov    ebx,DWORD PTR [edx+0x40]
   50929:	85 db                	test   ebx,ebx
   5092b:	74 07                	je     clear_script_data_branch_57
   5092d:	89 d8                	mov    eax,ebx
   5092f:	e8 b4 0a 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
clear_script_data_branch_57:
   50934:	8b 4a 44             	mov    ecx,DWORD PTR [edx+0x44]
   50937:	85 c9                	test   ecx,ecx
   50939:	74 07                	je     clear_script_data_branch_58
   5093b:	89 c8                	mov    eax,ecx
   5093d:	e8 a6 0a 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
clear_script_data_branch_58:
   50942:	8b 7a 48             	mov    edi,DWORD PTR [edx+0x48]
   50945:	85 ff                	test   edi,edi
   50947:	74 07                	je     clear_script_data_branch_59
   50949:	89 f8                	mov    eax,edi
   5094b:	e8 98 0a 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
clear_script_data_branch_59:
   50950:	89 d0                	mov    eax,edx
   50952:	e8 91 0a 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   50957:	a1 f8 5a 02 00       	mov    eax,ds:@obj3:monster_ctr                                     ; fixup: num: 12301, src obj: 1, src ofs: 0x50958, dst obj: 3, dst ofs: 0x25af8
   5095c:	48                   	dec    eax
   5095d:	8b 15 b4 5a 02 00    	mov    edx,DWORD PTR ds:@obj3:monster_list                          ; fixup: num: 12300, src obj: 1, src ofs: 0x5095f, dst obj: 3, dst ofs: 0x25ab4
   50963:	a3 f8 5a 02 00       	mov    ds:@obj3:monster_ctr,eax                                     ; fixup: num: 12299, src obj: 1, src ofs: 0x50964, dst obj: 3, dst ofs: 0x25af8
   50968:	85 d2                	test   edx,edx
   5096a:	0f 85 e7 fe ff ff    	jne    clear_script_data_branch_42
clear_script_data_branch_60:
   50970:	89 f0                	mov    eax,esi
   50972:	e8 69 c1 fe ff       	call   update_mod_76
   50977:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 12298, src obj: 1, src ofs: 0x50978, dst obj: 3, dst ofs: 0x25a84
   5097c:	e8 1f d3 ff ff       	call   update_mod_84
   50981:	83 3d b8 5a 02 00 00 	cmp    DWORD PTR ds:@obj3:npc_list,0x0                              ; fixup: num: 12297, src obj: 1, src ofs: 0x50983, dst obj: 3, dst ofs: 0x25ab8
   50988:	0f 84 8f 00 00 00    	je     clear_script_data_branch_69
clear_script_data_branch_61:
   5098e:	8b 15 b8 5a 02 00    	mov    edx,DWORD PTR ds:@obj3:npc_list                              ; fixup: num: 12296, src obj: 1, src ofs: 0x50990, dst obj: 3, dst ofs: 0x25ab8
   50994:	8b 42 38             	mov    eax,DWORD PTR [edx+0x38]
   50997:	8b 5a 10             	mov    ebx,DWORD PTR [edx+0x10]
   5099a:	a3 b8 5a 02 00       	mov    ds:@obj3:npc_list,eax                                        ; fixup: num: 12295, src obj: 1, src ofs: 0x5099b, dst obj: 3, dst ofs: 0x25ab8
   5099f:	85 db                	test   ebx,ebx
   509a1:	74 07                	je     clear_script_data_branch_62
   509a3:	89 d8                	mov    eax,ebx
   509a5:	e8 3e 0a 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
clear_script_data_branch_62:
   509aa:	8b 4a 14             	mov    ecx,DWORD PTR [edx+0x14]
   509ad:	85 c9                	test   ecx,ecx
   509af:	74 07                	je     clear_script_data_branch_63
   509b1:	89 c8                	mov    eax,ecx
   509b3:	e8 30 0a 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
clear_script_data_branch_63:
   509b8:	8b 7a 18             	mov    edi,DWORD PTR [edx+0x18]
   509bb:	85 ff                	test   edi,edi
   509bd:	74 07                	je     clear_script_data_branch_64
   509bf:	89 f8                	mov    eax,edi
   509c1:	e8 22 0a 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
clear_script_data_branch_64:
   509c6:	8b 6a 1c             	mov    ebp,DWORD PTR [edx+0x1c]
   509c9:	85 ed                	test   ebp,ebp
   509cb:	74 07                	je     clear_script_data_branch_65
   509cd:	89 e8                	mov    eax,ebp
   509cf:	e8 14 0a 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
clear_script_data_branch_65:
   509d4:	8b 42 20             	mov    eax,DWORD PTR [edx+0x20]
   509d7:	85 c0                	test   eax,eax
   509d9:	74 05                	je     clear_script_data_branch_66
   509db:	e8 08 0a 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
clear_script_data_branch_66:
   509e0:	8b 5a 30             	mov    ebx,DWORD PTR [edx+0x30]
   509e3:	85 db                	test   ebx,ebx
   509e5:	74 07                	je     clear_script_data_branch_67
   509e7:	89 d8                	mov    eax,ebx
   509e9:	e8 fa 09 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
clear_script_data_branch_67:
   509ee:	8b 4a 34             	mov    ecx,DWORD PTR [edx+0x34]
   509f1:	85 c9                	test   ecx,ecx
   509f3:	74 07                	je     clear_script_data_branch_68
   509f5:	89 c8                	mov    eax,ecx
   509f7:	e8 ec 09 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
clear_script_data_branch_68:
   509fc:	89 d0                	mov    eax,edx
   509fe:	e8 e5 09 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   50a03:	8b 2d fc 5a 02 00    	mov    ebp,DWORD PTR ds:@obj3:npc_ctr                               ; fixup: num: 12308, src obj: 1, src ofs: 0x50a05, dst obj: 3, dst ofs: 0x25afc
   50a09:	4d                   	dec    ebp
   50a0a:	a1 b8 5a 02 00       	mov    eax,ds:@obj3:npc_list                                        ; fixup: num: 12307, src obj: 1, src ofs: 0x50a0b, dst obj: 3, dst ofs: 0x25ab8
   50a0f:	89 2d fc 5a 02 00    	mov    DWORD PTR ds:@obj3:npc_ctr,ebp                               ; fixup: num: 12306, src obj: 1, src ofs: 0x50a11, dst obj: 3, dst ofs: 0x25afc
   50a15:	85 c0                	test   eax,eax
   50a17:	0f 85 71 ff ff ff    	jne    clear_script_data_branch_61
clear_script_data_branch_69:
   50a1d:	89 f0                	mov    eax,esi
   50a1f:	e8 bc c0 fe ff       	call   update_mod_76
   50a24:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 12305, src obj: 1, src ofs: 0x50a25, dst obj: 3, dst ofs: 0x25a84
   50a29:	e8 72 d2 ff ff       	call   update_mod_84
   50a2e:	83 3d bc 5a 02 00 00 	cmp    DWORD PTR ds:@obj3:object_list,0x0                           ; fixup: num: 12304, src obj: 1, src ofs: 0x50a30, dst obj: 3, dst ofs: 0x25abc
   50a35:	0f 84 b8 00 00 00    	je     clear_script_data_branch_81
clear_script_data_branch_70:
   50a3b:	8b 15 bc 5a 02 00    	mov    edx,DWORD PTR ds:@obj3:object_list                           ; fixup: num: 12303, src obj: 1, src ofs: 0x50a3d, dst obj: 3, dst ofs: 0x25abc
   50a41:	8b 42 54             	mov    eax,DWORD PTR [edx+0x54]
   50a44:	8b 5a 24             	mov    ebx,DWORD PTR [edx+0x24]
   50a47:	a3 bc 5a 02 00       	mov    ds:@obj3:object_list,eax                                     ; fixup: num: 12302, src obj: 1, src ofs: 0x50a48, dst obj: 3, dst ofs: 0x25abc
   50a4c:	85 db                	test   ebx,ebx
   50a4e:	74 07                	je     clear_script_data_branch_71
   50a50:	89 d8                	mov    eax,ebx
   50a52:	e8 91 09 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
clear_script_data_branch_71:
   50a57:	8b 4a 28             	mov    ecx,DWORD PTR [edx+0x28]
   50a5a:	85 c9                	test   ecx,ecx
   50a5c:	74 07                	je     clear_script_data_branch_72
   50a5e:	89 c8                	mov    eax,ecx
   50a60:	e8 83 09 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
clear_script_data_branch_72:
   50a65:	8b 7a 2c             	mov    edi,DWORD PTR [edx+0x2c]
   50a68:	85 ff                	test   edi,edi
   50a6a:	74 07                	je     clear_script_data_branch_73
   50a6c:	89 f8                	mov    eax,edi
   50a6e:	e8 75 09 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
clear_script_data_branch_73:
   50a73:	8b 6a 30             	mov    ebp,DWORD PTR [edx+0x30]
   50a76:	85 ed                	test   ebp,ebp
   50a78:	74 07                	je     clear_script_data_branch_74
   50a7a:	89 e8                	mov    eax,ebp
   50a7c:	e8 67 09 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
clear_script_data_branch_74:
   50a81:	8b 42 34             	mov    eax,DWORD PTR [edx+0x34]
   50a84:	85 c0                	test   eax,eax
   50a86:	74 05                	je     clear_script_data_branch_75
   50a88:	e8 5b 09 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
clear_script_data_branch_75:
   50a8d:	8b 5a 38             	mov    ebx,DWORD PTR [edx+0x38]
   50a90:	85 db                	test   ebx,ebx
   50a92:	74 07                	je     clear_script_data_branch_76
   50a94:	89 d8                	mov    eax,ebx
   50a96:	e8 4d 09 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
clear_script_data_branch_76:
   50a9b:	8b 4a 40             	mov    ecx,DWORD PTR [edx+0x40]
   50a9e:	85 c9                	test   ecx,ecx
   50aa0:	74 07                	je     clear_script_data_branch_77
   50aa2:	89 c8                	mov    eax,ecx
   50aa4:	e8 3f 09 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
clear_script_data_branch_77:
   50aa9:	8b 7a 44             	mov    edi,DWORD PTR [edx+0x44]
   50aac:	85 ff                	test   edi,edi
   50aae:	74 07                	je     clear_script_data_branch_78
   50ab0:	89 f8                	mov    eax,edi
   50ab2:	e8 31 09 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
clear_script_data_branch_78:
   50ab7:	8b 6a 48             	mov    ebp,DWORD PTR [edx+0x48]
   50aba:	85 ed                	test   ebp,ebp
   50abc:	74 07                	je     clear_script_data_branch_79
   50abe:	89 e8                	mov    eax,ebp
   50ac0:	e8 23 09 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
clear_script_data_branch_79:
   50ac5:	8b 42 50             	mov    eax,DWORD PTR [edx+0x50]
   50ac8:	85 c0                	test   eax,eax
   50aca:	74 05                	je     clear_script_data_branch_80
   50acc:	e8 17 09 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
clear_script_data_branch_80:
   50ad1:	89 d0                	mov    eax,edx
   50ad3:	e8 10 09 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   50ad8:	8b 3d 00 5b 02 00    	mov    edi,DWORD PTR ds:@obj3:object_ctr                            ; fixup: num: 12312, src obj: 1, src ofs: 0x50ada, dst obj: 3, dst ofs: 0x25b00
   50ade:	4f                   	dec    edi
   50adf:	8b 2d bc 5a 02 00    	mov    ebp,DWORD PTR ds:@obj3:object_list                           ; fixup: num: 12311, src obj: 1, src ofs: 0x50ae1, dst obj: 3, dst ofs: 0x25abc
   50ae5:	89 3d 00 5b 02 00    	mov    DWORD PTR ds:@obj3:object_ctr,edi                            ; fixup: num: 12310, src obj: 1, src ofs: 0x50ae7, dst obj: 3, dst ofs: 0x25b00
   50aeb:	85 ed                	test   ebp,ebp
   50aed:	0f 85 48 ff ff ff    	jne    clear_script_data_branch_70
clear_script_data_branch_81:
   50af3:	89 f0                	mov    eax,esi
   50af5:	e8 e6 bf fe ff       	call   update_mod_76
   50afa:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 12309, src obj: 1, src ofs: 0x50afb, dst obj: 3, dst ofs: 0x25a84
   50aff:	e8 9c d1 ff ff       	call   update_mod_84
   50b04:	83 3d c0 5a 02 00 00 	cmp    DWORD PTR ds:@obj3:region_list,0x0                           ; fixup: num: 12322, src obj: 1, src ofs: 0x50b06, dst obj: 3, dst ofs: 0x25ac0
   50b0b:	74 54                	je     clear_script_data_branch_86
clear_script_data_branch_82:
   50b0d:	8b 15 c0 5a 02 00    	mov    edx,DWORD PTR ds:@obj3:region_list                           ; fixup: num: 12321, src obj: 1, src ofs: 0x50b0f, dst obj: 3, dst ofs: 0x25ac0
   50b13:	8b 42 2c             	mov    eax,DWORD PTR [edx+0x2c]
   50b16:	8b 7a 1c             	mov    edi,DWORD PTR [edx+0x1c]
   50b19:	a3 c0 5a 02 00       	mov    ds:@obj3:region_list,eax                                     ; fixup: num: 12320, src obj: 1, src ofs: 0x50b1a, dst obj: 3, dst ofs: 0x25ac0
   50b1e:	85 ff                	test   edi,edi
   50b20:	74 07                	je     clear_script_data_branch_83
   50b22:	89 f8                	mov    eax,edi
   50b24:	e8 bf 08 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
clear_script_data_branch_83:
   50b29:	8b 6a 20             	mov    ebp,DWORD PTR [edx+0x20]
   50b2c:	85 ed                	test   ebp,ebp
   50b2e:	74 07                	je     clear_script_data_branch_84
   50b30:	89 e8                	mov    eax,ebp
   50b32:	e8 b1 08 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
clear_script_data_branch_84:
   50b37:	8b 42 24             	mov    eax,DWORD PTR [edx+0x24]
   50b3a:	85 c0                	test   eax,eax
   50b3c:	74 05                	je     clear_script_data_branch_85
   50b3e:	e8 a5 08 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
clear_script_data_branch_85:
   50b43:	89 d0                	mov    eax,edx
   50b45:	e8 9e 08 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   50b4a:	8b 15 04 5b 02 00    	mov    edx,DWORD PTR ds:@obj3:region_ctr                            ; fixup: num: 12319, src obj: 1, src ofs: 0x50b4c, dst obj: 3, dst ofs: 0x25b04
   50b50:	4a                   	dec    edx
   50b51:	8b 1d c0 5a 02 00    	mov    ebx,DWORD PTR ds:@obj3:region_list                           ; fixup: num: 12318, src obj: 1, src ofs: 0x50b53, dst obj: 3, dst ofs: 0x25ac0
   50b57:	89 15 04 5b 02 00    	mov    DWORD PTR ds:@obj3:region_ctr,edx                            ; fixup: num: 12317, src obj: 1, src ofs: 0x50b59, dst obj: 3, dst ofs: 0x25b04
   50b5d:	85 db                	test   ebx,ebx
   50b5f:	75 ac                	jne    clear_script_data_branch_82
clear_script_data_branch_86:
   50b61:	89 f0                	mov    eax,esi
   50b63:	e8 78 bf fe ff       	call   update_mod_76
   50b68:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 12316, src obj: 1, src ofs: 0x50b69, dst obj: 3, dst ofs: 0x25a84
   50b6d:	e8 2e d1 ff ff       	call   update_mod_84
   50b72:	83 3d c8 5a 02 00 00 	cmp    DWORD PTR ds:@obj3:room_list,0x0                             ; fixup: num: 12315, src obj: 1, src ofs: 0x50b74, dst obj: 3, dst ofs: 0x25ac8
   50b79:	0f 84 80 00 00 00    	je     clear_script_data_branch_96
clear_script_data_branch_87:
   50b7f:	8b 0d c8 5a 02 00    	mov    ecx,DWORD PTR ds:@obj3:room_list                             ; fixup: num: 12314, src obj: 1, src ofs: 0x50b81, dst obj: 3, dst ofs: 0x25ac8
   50b85:	8b 41 48             	mov    eax,DWORD PTR [ecx+0x48]
   50b88:	8b 51 24             	mov    edx,DWORD PTR [ecx+0x24]
   50b8b:	a3 c8 5a 02 00       	mov    ds:@obj3:room_list,eax                                       ; fixup: num: 12313, src obj: 1, src ofs: 0x50b8c, dst obj: 3, dst ofs: 0x25ac8
   50b90:	85 d2                	test   edx,edx
   50b92:	74 07                	je     clear_script_data_branch_88
   50b94:	89 d0                	mov    eax,edx
   50b96:	e8 4d 08 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
clear_script_data_branch_88:
   50b9b:	8b 59 28             	mov    ebx,DWORD PTR [ecx+0x28]
   50b9e:	85 db                	test   ebx,ebx
   50ba0:	74 07                	je     clear_script_data_branch_89
   50ba2:	89 d8                	mov    eax,ebx
   50ba4:	e8 3f 08 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
clear_script_data_branch_89:
   50ba9:	8b 79 2c             	mov    edi,DWORD PTR [ecx+0x2c]
   50bac:	85 ff                	test   edi,edi
   50bae:	74 07                	je     clear_script_data_branch_90
   50bb0:	89 f8                	mov    eax,edi
   50bb2:	e8 31 08 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
clear_script_data_branch_90:
   50bb7:	8b 69 30             	mov    ebp,DWORD PTR [ecx+0x30]
   50bba:	85 ed                	test   ebp,ebp
   50bbc:	74 07                	je     clear_script_data_branch_91
   50bbe:	89 e8                	mov    eax,ebp
   50bc0:	e8 23 08 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
clear_script_data_branch_91:
   50bc5:	8b 41 34             	mov    eax,DWORD PTR [ecx+0x34]
   50bc8:	85 c0                	test   eax,eax
   50bca:	74 05                	je     clear_script_data_branch_92
   50bcc:	e8 17 08 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
clear_script_data_branch_92:
   50bd1:	89 ca                	mov    edx,ecx
   50bd3:	8d 59 0c             	lea    ebx,[ecx+0xc]
   50bd6:	eb 07                	jmp    clear_script_data_branch_94
clear_script_data_branch_93:
   50bd8:	83 c2 04             	add    edx,0x4
   50bdb:	39 da                	cmp    edx,ebx
   50bdd:	74 10                	je     clear_script_data_branch_95
clear_script_data_branch_94:
   50bdf:	8b 7a 38             	mov    edi,DWORD PTR [edx+0x38]
   50be2:	85 ff                	test   edi,edi
   50be4:	74 f2                	je     clear_script_data_branch_93
   50be6:	89 f8                	mov    eax,edi
   50be8:	e8 fb 07 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   50bed:	eb e9                	jmp    clear_script_data_branch_93
clear_script_data_branch_95:
   50bef:	89 c8                	mov    eax,ecx
   50bf1:	e8 f2 07 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   50bf6:	83 3d c8 5a 02 00 00 	cmp    DWORD PTR ds:@obj3:room_list,0x0                             ; fixup: num: 12328, src obj: 1, src ofs: 0x50bf8, dst obj: 3, dst ofs: 0x25ac8
   50bfd:	75 80                	jne    clear_script_data_branch_87
clear_script_data_branch_96:
   50bff:	89 f0                	mov    eax,esi
   50c01:	e8 da be fe ff       	call   update_mod_76
   50c06:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 12327, src obj: 1, src ofs: 0x50c07, dst obj: 3, dst ofs: 0x25a84
   50c0b:	e8 90 d0 ff ff       	call   update_mod_84
   50c10:	83 3d cc 5a 02 00 00 	cmp    DWORD PTR ds:@obj3:text_list,0x0                             ; fixup: num: 12326, src obj: 1, src ofs: 0x50c12, dst obj: 3, dst ofs: 0x25acc
   50c17:	74 54                	je     clear_script_data_branch_101
clear_script_data_branch_97:
   50c19:	8b 15 cc 5a 02 00    	mov    edx,DWORD PTR ds:@obj3:text_list                             ; fixup: num: 12325, src obj: 1, src ofs: 0x50c1b, dst obj: 3, dst ofs: 0x25acc
   50c1f:	8b 42 14             	mov    eax,DWORD PTR [edx+0x14]
   50c22:	8b 7a 08             	mov    edi,DWORD PTR [edx+0x8]
   50c25:	a3 cc 5a 02 00       	mov    ds:@obj3:text_list,eax                                       ; fixup: num: 12324, src obj: 1, src ofs: 0x50c26, dst obj: 3, dst ofs: 0x25acc
   50c2a:	85 ff                	test   edi,edi
   50c2c:	74 07                	je     clear_script_data_branch_98
   50c2e:	89 f8                	mov    eax,edi
   50c30:	e8 b3 07 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
clear_script_data_branch_98:
   50c35:	8b 6a 0c             	mov    ebp,DWORD PTR [edx+0xc]
   50c38:	85 ed                	test   ebp,ebp
   50c3a:	74 07                	je     clear_script_data_branch_99
   50c3c:	89 e8                	mov    eax,ebp
   50c3e:	e8 a5 07 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
clear_script_data_branch_99:
   50c43:	8b 42 10             	mov    eax,DWORD PTR [edx+0x10]
   50c46:	85 c0                	test   eax,eax
   50c48:	74 05                	je     clear_script_data_branch_100
   50c4a:	e8 99 07 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
clear_script_data_branch_100:
   50c4f:	89 d0                	mov    eax,edx
   50c51:	e8 92 07 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   50c56:	8b 15 08 5b 02 00    	mov    edx,DWORD PTR ds:@obj3:text_ctr                              ; fixup: num: 12323, src obj: 1, src ofs: 0x50c58, dst obj: 3, dst ofs: 0x25b08
   50c5c:	4a                   	dec    edx
   50c5d:	8b 1d cc 5a 02 00    	mov    ebx,DWORD PTR ds:@obj3:text_list                             ; fixup: num: 12337, src obj: 1, src ofs: 0x50c5f, dst obj: 3, dst ofs: 0x25acc
   50c63:	89 15 08 5b 02 00    	mov    DWORD PTR ds:@obj3:text_ctr,edx                              ; fixup: num: 12336, src obj: 1, src ofs: 0x50c65, dst obj: 3, dst ofs: 0x25b08
   50c69:	85 db                	test   ebx,ebx
   50c6b:	75 ac                	jne    clear_script_data_branch_97
clear_script_data_branch_101:
   50c6d:	89 f0                	mov    eax,esi
   50c6f:	e8 6c be fe ff       	call   update_mod_76
   50c74:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 12335, src obj: 1, src ofs: 0x50c75, dst obj: 3, dst ofs: 0x25a84
   50c79:	e8 22 d0 ff ff       	call   update_mod_84
   50c7e:	83 3d d0 5a 02 00 00 	cmp    DWORD PTR ds:@obj3:timer_list,0x0                            ; fixup: num: 12334, src obj: 1, src ofs: 0x50c80, dst obj: 3, dst ofs: 0x25ad0
   50c85:	0f 84 92 00 00 00    	je     clear_script_data_branch_107
clear_script_data_branch_102:
   50c8b:	8b 1d d0 5a 02 00    	mov    ebx,DWORD PTR ds:@obj3:timer_list                            ; fixup: num: 12333, src obj: 1, src ofs: 0x50c8d, dst obj: 3, dst ofs: 0x25ad0
   50c91:	8b 43 18             	mov    eax,DWORD PTR [ebx+0x18]
   50c94:	a3 d0 5a 02 00       	mov    ds:@obj3:timer_list,eax                                      ; fixup: num: 12332, src obj: 1, src ofs: 0x50c95, dst obj: 3, dst ofs: 0x25ad0
   50c99:	80 7b 16 00          	cmp    BYTE PTR [ebx+0x16],0x0
   50c9d:	74 34                	je     clear_script_data_branch_103
   50c9f:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 12331, src obj: 1, src ofs: 0x50ca0, dst obj: 3, dst ofs: 0x25a88
   50ca4:	8b 53 08             	mov    edx,DWORD PTR [ebx+0x8]
   50ca7:	e8 44 b4 ff ff       	call   get_bitmap
   50cac:	89 c1                	mov    ecx,eax
   50cae:	85 c0                	test   eax,eax
   50cb0:	74 21                	je     clear_script_data_branch_103
   50cb2:	89 c2                	mov    edx,eax
   50cb4:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 12330, src obj: 1, src ofs: 0x50cb5, dst obj: 3, dst ofs: 0x25a88
   50cb9:	e8 32 ba ff ff       	call   remove_bitmap
   50cbe:	85 c9                	test   ecx,ecx
   50cc0:	74 11                	je     clear_script_data_branch_103
   50cc2:	ba 01 00 00 00       	mov    edx,0x1
   50cc7:	89 c8                	mov    eax,ecx
   50cc9:	e8 d2 a6 fe ff       	call   W?$dt:BTMAP$n()_
   50cce:	e8 a5 13 02 00       	call   W?$dln(pnv)v
clear_script_data_branch_103:
   50cd3:	8b 7b 08             	mov    edi,DWORD PTR [ebx+0x8]
   50cd6:	85 ff                	test   edi,edi
   50cd8:	74 07                	je     clear_script_data_branch_104
   50cda:	89 f8                	mov    eax,edi
   50cdc:	e8 07 07 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
clear_script_data_branch_104:
   50ce1:	8b 6b 10             	mov    ebp,DWORD PTR [ebx+0x10]
   50ce4:	85 ed                	test   ebp,ebp
   50ce6:	74 07                	je     clear_script_data_branch_105
   50ce8:	89 e8                	mov    eax,ebp
   50cea:	e8 f9 06 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
clear_script_data_branch_105:
   50cef:	8b 43 0c             	mov    eax,DWORD PTR [ebx+0xc]
   50cf2:	85 c0                	test   eax,eax
   50cf4:	74 05                	je     clear_script_data_branch_106
   50cf6:	e8 ed 06 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
clear_script_data_branch_106:
   50cfb:	89 d8                	mov    eax,ebx
   50cfd:	e8 e6 06 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   50d02:	8b 15 0c 5b 02 00    	mov    edx,DWORD PTR ds:@obj3:timer_ctr                             ; fixup: num: 12329, src obj: 1, src ofs: 0x50d04, dst obj: 3, dst ofs: 0x25b0c
   50d08:	4a                   	dec    edx
   50d09:	8b 1d d0 5a 02 00    	mov    ebx,DWORD PTR ds:@obj3:timer_list                            ; fixup: num: 12235, src obj: 1, src ofs: 0x50d0b, dst obj: 3, dst ofs: 0x25ad0
   50d0f:	89 15 0c 5b 02 00    	mov    DWORD PTR ds:@obj3:timer_ctr,edx                             ; fixup: num: 12234, src obj: 1, src ofs: 0x50d11, dst obj: 3, dst ofs: 0x25b0c
   50d15:	85 db                	test   ebx,ebx
   50d17:	0f 85 6e ff ff ff    	jne    clear_script_data_branch_102
clear_script_data_branch_107:
   50d1d:	89 f0                	mov    eax,esi
   50d1f:	e8 bc bd fe ff       	call   update_mod_76
   50d24:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 12233, src obj: 1, src ofs: 0x50d25, dst obj: 3, dst ofs: 0x25a84
   50d29:	e8 72 cf ff ff       	call   update_mod_84
   50d2e:	83 3d d4 5a 02 00 00 	cmp    DWORD PTR ds:@obj3:useitem_list,0x0                          ; fixup: num: 12232, src obj: 1, src ofs: 0x50d30, dst obj: 3, dst ofs: 0x25ad4
   50d35:	74 61                	je     clear_script_data_branch_113
clear_script_data_branch_108:
   50d37:	8b 15 d4 5a 02 00    	mov    edx,DWORD PTR ds:@obj3:useitem_list                          ; fixup: num: 12231, src obj: 1, src ofs: 0x50d39, dst obj: 3, dst ofs: 0x25ad4
   50d3d:	8b 42 10             	mov    eax,DWORD PTR [edx+0x10]
   50d40:	8b 0a                	mov    ecx,DWORD PTR [edx]
   50d42:	a3 d4 5a 02 00       	mov    ds:@obj3:useitem_list,eax                                    ; fixup: num: 12230, src obj: 1, src ofs: 0x50d43, dst obj: 3, dst ofs: 0x25ad4
   50d47:	85 c9                	test   ecx,ecx
   50d49:	74 07                	je     clear_script_data_branch_109
   50d4b:	89 c8                	mov    eax,ecx
   50d4d:	e8 96 06 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
clear_script_data_branch_109:
   50d52:	8b 7a 04             	mov    edi,DWORD PTR [edx+0x4]
   50d55:	85 ff                	test   edi,edi
   50d57:	74 07                	je     clear_script_data_branch_110
   50d59:	89 f8                	mov    eax,edi
   50d5b:	e8 88 06 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
clear_script_data_branch_110:
   50d60:	8b 6a 08             	mov    ebp,DWORD PTR [edx+0x8]
   50d63:	85 ed                	test   ebp,ebp
   50d65:	74 07                	je     clear_script_data_branch_111
   50d67:	89 e8                	mov    eax,ebp
   50d69:	e8 7a 06 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
clear_script_data_branch_111:
   50d6e:	8b 42 0c             	mov    eax,DWORD PTR [edx+0xc]
   50d71:	85 c0                	test   eax,eax
   50d73:	74 05                	je     clear_script_data_branch_112
   50d75:	e8 6e 06 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
clear_script_data_branch_112:
   50d7a:	89 d0                	mov    eax,edx
   50d7c:	e8 67 06 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   50d81:	8b 15 10 5b 02 00    	mov    edx,DWORD PTR ds:@obj3:useitem_ctr                           ; fixup: num: 12229, src obj: 1, src ofs: 0x50d83, dst obj: 3, dst ofs: 0x25b10
   50d87:	4a                   	dec    edx
   50d88:	8b 1d d4 5a 02 00    	mov    ebx,DWORD PTR ds:@obj3:useitem_list                          ; fixup: num: 12228, src obj: 1, src ofs: 0x50d8a, dst obj: 3, dst ofs: 0x25ad4
   50d8e:	89 15 10 5b 02 00    	mov    DWORD PTR ds:@obj3:useitem_ctr,edx                           ; fixup: num: 12227, src obj: 1, src ofs: 0x50d90, dst obj: 3, dst ofs: 0x25b10
   50d94:	85 db                	test   ebx,ebx
   50d96:	75 9f                	jne    clear_script_data_branch_108
clear_script_data_branch_113:
   50d98:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 12226, src obj: 1, src ofs: 0x50d99, dst obj: 3, dst ofs: 0x25a88
   50d9d:	89 f2                	mov    edx,esi
   50d9f:	e8 4c b9 ff ff       	call   remove_bitmap
   50da4:	85 f6                	test   esi,esi
   50da6:	74 0e                	je     clear_script_data_branch_114
   50da8:	89 f0                	mov    eax,esi
   50daa:	31 d2                	xor    edx,edx
   50dac:	e8 af b1 fe ff       	call   W?$dt:ANIMATION$n()_
   50db1:	e8 c2 12 02 00       	call   W?$dln(pnv)v
clear_script_data_branch_114:
   50db6:	5d                   	pop    ebp
   50db7:	5f                   	pop    edi
   50db8:	5e                   	pop    esi
   50db9:	5a                   	pop    edx
   50dba:	59                   	pop    ecx
   50dbb:	5b                   	pop    ebx
   50dbc:	c3                   	ret    
   50dbd:	8d 40 00             	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'execute_list'                       -
;-------------------------------------------------
execute_list:
   50dc0:	53                   	push   ebx
   50dc1:	51                   	push   ecx
   50dc2:	52                   	push   edx
   50dc3:	89 c1                	mov    ecx,eax
   50dc5:	8b 1d a0 5a 02 00    	mov    ebx,DWORD PTR ds:@obj3:execlst_list                          ; fixup: num: 12261, src obj: 1, src ofs: 0x50dc7, dst obj: 3, dst ofs: 0x25aa0
   50dcb:	85 db                	test   ebx,ebx
   50dcd:	74 2d                	je     execute_list_branch_4
execute_list_branch_1:
   50dcf:	89 ca                	mov    edx,ecx
   50dd1:	8b 03                	mov    eax,DWORD PTR [ebx]
   50dd3:	e8 58 56 02 00       	call   strcmp_
   50dd8:	85 c0                	test   eax,eax
   50dda:	75 19                	jne    execute_list_branch_3
   50ddc:	8b 5b 04             	mov    ebx,DWORD PTR [ebx+0x4]
   50ddf:	85 db                	test   ebx,ebx
   50de1:	74 19                	je     execute_list_branch_4
execute_list_branch_2:
   50de3:	8b 03                	mov    eax,DWORD PTR [ebx]
   50de5:	e8 f6 00 00 00       	call   execute_command
   50dea:	8b 5b 04             	mov    ebx,DWORD PTR [ebx+0x4]
   50ded:	85 db                	test   ebx,ebx
   50def:	75 f2                	jne    execute_list_branch_2
   50df1:	5a                   	pop    edx
   50df2:	59                   	pop    ecx
   50df3:	5b                   	pop    ebx
   50df4:	c3                   	ret    
execute_list_branch_3:
   50df5:	8b 5b 08             	mov    ebx,DWORD PTR [ebx+0x8]
   50df8:	85 db                	test   ebx,ebx
   50dfa:	75 d3                	jne    execute_list_branch_1
execute_list_branch_4:
   50dfc:	5a                   	pop    edx
   50dfd:	59                   	pop    ecx
   50dfe:	5b                   	pop    ebx
   50dff:	c3                   	ret    
execute_list_reference_1:                                                                           ; access size: DWORDS
   50e00:	59                   	pop    ecx                                                          ; fixup: num: 12260, src obj: 1, src ofs: 0x50e00, dst obj: 1, dst ofs: 0x50f59
   50e01:	0f 05                	syscall 
   50e03:	00 71 0f             	add    BYTE PTR [ecx+0xf],dh                                        ; fixup: num: 12259, src obj: 1, src ofs: 0x50e04, dst obj: 1, dst ofs: 0x50f71
   50e06:	05 00 a8 11 05       	add    eax,@obj1:execute_command_reference_1100                     ; fixup: num: 12258, src obj: 1, src ofs: 0x50e08, dst obj: 1, dst ofs: 0x511a8
   50e0b:	00 06                	add    BYTE PTR [esi],al                                            ; fixup: num: 12257, src obj: 1, src ofs: 0x50e0c, dst obj: 1, dst ofs: 0x51306
   50e0d:	13 05 00 89 12 05    	adc    eax,DWORD PTR ds:@obj1:execute_command_reference_1300        ; fixup: num: 12256, src obj: 1, src ofs: 0x50e10, dst obj: 1, dst ofs: 0x51289
   50e13:	00 dc                	add    ah,bl                                                        ; fixup: num: 12255, src obj: 1, src ofs: 0x50e14, dst obj: 1, dst ofs: 0x512dc
   50e15:	12 05 00 41 13 05    	adc    al,BYTE PTR ds:@obj1:execute_command_reference_1600          ; fixup: num: 12254, src obj: 1, src ofs: 0x50e18, dst obj: 1, dst ofs: 0x51341
   50e1b:	00 59 13             	add    BYTE PTR [ecx+0x13],bl                                       ; fixup: num: 12253, src obj: 1, src ofs: 0x50e1c, dst obj: 1, dst ofs: 0x51359
   50e1e:	05 00 98 16 05       	add    eax,@obj1:execute_command_reference_1900                     ; fixup: num: 12252, src obj: 1, src ofs: 0x50e20, dst obj: 1, dst ofs: 0x51698
   50e23:	00 79 17             	add    BYTE PTR [ecx+0x17],bh                                       ; fixup: num: 12251, src obj: 1, src ofs: 0x50e24, dst obj: 1, dst ofs: 0x51779
   50e26:	05 00 c6 17 05       	add    eax,@obj1:execute_command_reference_2300                     ; fixup: num: 12250, src obj: 1, src ofs: 0x50e28, dst obj: 1, dst ofs: 0x517c6
   50e2b:	00 06                	add    BYTE PTR [esi],al                                            ; fixup: num: 12249, src obj: 1, src ofs: 0x50e2c, dst obj: 1, dst ofs: 0x51806
   50e2d:	18 05 00 52 18 05    	sbb    BYTE PTR ds:@obj1:execute_command_reference_2500,al          ; fixup: num: 12248, src obj: 1, src ofs: 0x50e30, dst obj: 1, dst ofs: 0x51852
   50e33:	00 56 1b             	add    BYTE PTR [esi+0x1b],dl                                       ; fixup: num: 12247, src obj: 1, src ofs: 0x50e34, dst obj: 1, dst ofs: 0x51b56
   50e36:	05 00 35 19 05       	add    eax,@obj1:execute_command_reference_2600                     ; fixup: num: 12246, src obj: 1, src ofs: 0x50e38, dst obj: 1, dst ofs: 0x51935
   50e3b:	00 09                	add    BYTE PTR [ecx],cl                                            ; fixup: num: 12245, src obj: 1, src ofs: 0x50e3c, dst obj: 1, dst ofs: 0x51c09
   50e3d:	1c 05                	sbb    al,0x5
   50e3f:	00 0b                	add    BYTE PTR [ebx],cl                                            ; fixup: num: 12244, src obj: 1, src ofs: 0x50e40, dst obj: 1, dst ofs: 0x52c0b
   50e41:	2c 05                	sub    al,0x5
   50e43:	00 20                	add    BYTE PTR [eax],ah                                            ; fixup: num: 12243, src obj: 1, src ofs: 0x50e44, dst obj: 1, dst ofs: 0x51f20
   50e45:	1f                   	pop    ds
   50e46:	05 00 5b 20 05       	add    eax,@obj1:execute_command_reference_3800                     ; fixup: num: 12242, src obj: 1, src ofs: 0x50e48, dst obj: 1, dst ofs: 0x5205b
   50e4b:	00 a6 20 05 00 c5    	add    BYTE PTR [esi-0x3afffae0],ah                                 ; fixup: num: 12241, src obj: 1, src ofs: 0x50e4c, dst obj: 1, dst ofs: 0x520a6; fixup: num: 12240, src obj: 1, src ofs: 0x50e50, dst obj: 1, dst ofs: 0x520c5
   50e51:	20 05 00 d9 21 05    	and    BYTE PTR ds:@obj1:execute_command_reference_4100,al          ; fixup: num: 12239, src obj: 1, src ofs: 0x50e54, dst obj: 1, dst ofs: 0x521d9
   50e57:	00 e2                	add    dl,ah                                                        ; fixup: num: 12238, src obj: 1, src ofs: 0x50e58, dst obj: 1, dst ofs: 0x522e2
   50e59:	22 05 00 c5 23 05    	and    al,BYTE PTR ds:@obj1:execute_command_reference_4300          ; fixup: num: 12237, src obj: 1, src ofs: 0x50e5c, dst obj: 1, dst ofs: 0x523c5
   50e5f:	00 8b 25 05 00 6e    	add    BYTE PTR [ebx+0x6e000525],cl                                 ; fixup: num: 12236, src obj: 1, src ofs: 0x50e60, dst obj: 1, dst ofs: 0x5258b; fixup: num: 12218, src obj: 1, src ofs: 0x50e64, dst obj: 1, dst ofs: 0x5276e
   50e65:	27                   	daa    
   50e66:	05 00 e2 27 05       	add    eax,@obj1:execute_command_reference_4700                     ; fixup: num: 12217, src obj: 1, src ofs: 0x50e68, dst obj: 1, dst ofs: 0x527e2
   50e6b:	00 b6 28 05 00 8f    	add    BYTE PTR [esi-0x70fffad8],dh                                 ; fixup: num: 12216, src obj: 1, src ofs: 0x50e6c, dst obj: 1, dst ofs: 0x528b6; fixup: num: 12215, src obj: 1, src ofs: 0x50e70, dst obj: 1, dst ofs: 0x5178f
   50e71:	17                   	pop    ss
   50e72:	05 00 12 11 05       	add    eax,@obj1:execute_command_reference_900                      ; fixup: num: 12214, src obj: 1, src ofs: 0x50e74, dst obj: 1, dst ofs: 0x51112
   50e77:	00 57 19             	add    BYTE PTR [edi+0x19],dl                                       ; fixup: num: 12213, src obj: 1, src ofs: 0x50e78, dst obj: 1, dst ofs: 0x51957
   50e7a:	05 00 18 1a 05       	add    eax,@obj1:execute_command_reference_2800                     ; fixup: num: 12212, src obj: 1, src ofs: 0x50e7c, dst obj: 1, dst ofs: 0x51a18
   50e7f:	00 b6 1a 05 00 37    	add    BYTE PTR [esi+0x3700051a],dh                                 ; fixup: num: 12211, src obj: 1, src ofs: 0x50e80, dst obj: 1, dst ofs: 0x51ab6; fixup: num: 12210, src obj: 1, src ofs: 0x50e84, dst obj: 1, dst ofs: 0x51b37
   50e85:	1b 05 00 c5 11 05    	sbb    eax,DWORD PTR ds:@obj1:execute_command_reference_1200        ; fixup: num: 12209, src obj: 1, src ofs: 0x50e88, dst obj: 1, dst ofs: 0x511c5
   50e8b:	00 5e 11             	add    BYTE PTR [esi+0x11],bl                                       ; fixup: num: 12281, src obj: 1, src ofs: 0x50e8c, dst obj: 1, dst ofs: 0x5115e
   50e8e:	05 00 e1 24 05       	add    eax,@obj1:execute_command_reference_4400                     ; fixup: num: 12280, src obj: 1, src ofs: 0x50e90, dst obj: 1, dst ofs: 0x524e1
   50e93:	00 15 1b 05 00 26    	add    BYTE PTR ds:0x2600051b,dl                                    ; fixup: num: 12279, src obj: 1, src ofs: 0x50e94, dst obj: 1, dst ofs: 0x51b15; fixup: num: 12278, src obj: 1, src ofs: 0x50e98, dst obj: 1, dst ofs: 0x51b26
   50e99:	1b 05 00 e1 10 05    	sbb    eax,DWORD PTR ds:@obj1:execute_command_reference_800         ; fixup: num: 12277, src obj: 1, src ofs: 0x50e9c, dst obj: 1, dst ofs: 0x510e1
   50e9f:	00 df                	add    bh,bl                                                        ; fixup: num: 12276, src obj: 1, src ofs: 0x50ea0, dst obj: 1, dst ofs: 0x51bdf
   50ea1:	1b 05 00 3a 0f 05    	sbb    eax,DWORD PTR ds:@obj1:execute_command_reference_100         ; fixup: num: 12275, src obj: 1, src ofs: 0x50ea4, dst obj: 1, dst ofs: 0x50f3a
   50ea7:	00 fc                	add    ah,bh                                                        ; fixup: num: 12274, src obj: 1, src ofs: 0x50ea8, dst obj: 1, dst ofs: 0x52bfc
   50ea9:	2b 05 00 50 2b 05    	sub    eax,DWORD PTR ds:@obj1:execute_command_reference_5200        ; fixup: num: 12273, src obj: 1, src ofs: 0x50eac, dst obj: 1, dst ofs: 0x52b50
   50eaf:	00 1d 10 05 00 4e    	add    BYTE PTR ds:0x4e000510,bl                                    ; fixup: num: 12272, src obj: 1, src ofs: 0x50eb0, dst obj: 1, dst ofs: 0x5101d; fixup: num: 12271, src obj: 1, src ofs: 0x50eb4, dst obj: 1, dst ofs: 0x5104e
   50eb5:	10 05 00 7f 10 05    	adc    BYTE PTR ds:@obj1:execute_command_reference_600,al           ; fixup: num: 12270, src obj: 1, src ofs: 0x50eb8, dst obj: 1, dst ofs: 0x5107f
   50ebb:	00 b0 10 05 00 e1    	add    BYTE PTR [eax-0x1efffaf0],dh                                 ; fixup: num: 12269, src obj: 1, src ofs: 0x50ebc, dst obj: 1, dst ofs: 0x510b0; fixup: num: 12268, src obj: 1, src ofs: 0x50ec0, dst obj: 1, dst ofs: 0x529e1
   50ec1:	29 05 00 78 2a 05    	sub    DWORD PTR ds:@obj1:execute_command_reference_5000,eax        ; fixup: num: 12267, src obj: 1, src ofs: 0x50ec4, dst obj: 1, dst ofs: 0x52a78
   50ec7:	00 db                	add    bl,bl                                                        ; fixup: num: 12266, src obj: 1, src ofs: 0x50ec8, dst obj: 1, dst ofs: 0x52adb
   50ec9:	2a 05 00 6a 1a 05    	sub    al,BYTE PTR ds:@obj1:execute_command_reference_2900          ; fixup: num: 12265, src obj: 1, src ofs: 0x50ecc, dst obj: 1, dst ofs: 0x51a6a
   50ecf:	00 71 13             	add    BYTE PTR [ecx+0x13],dh                                       ; fixup: num: 12264, src obj: 1, src ofs: 0x50ed0, dst obj: 1, dst ofs: 0x51371
   50ed2:	05 00 e3 16 05       	add    eax,@obj1:execute_command_reference_2000                     ; fixup: num: 12263, src obj: 1, src ofs: 0x50ed4, dst obj: 1, dst ofs: 0x516e3
   50ed7:	00 8d 80 00 00 00    	add    BYTE PTR [ebp+0x80],cl
   50edd:	00 8b d2       	add    BYTE PTR [ebx+0x525153d2],cl

;-------------------------------------------------
;  Function 'execute_command'                    -
;-------------------------------------------------
execute_command:
   50ee0:	53                   	push   ebx
   50ee1:	51                   	push   ecx
   50ee2:	52                   	push   edx
   50ee3:	56                   	push   esi
   50ee4:	57                   	push   edi
   50ee5:	55                   	push   ebp
   50ee6:	89 e5                	mov    ebp,esp
   50ee8:	81 ec b8 00 00 00    	sub    esp,0xb8
   50eee:	81 ed 82 00 00 00    	sub    ebp,0x82
   50ef4:	89 c3                	mov    ebx,eax
   50ef6:	85 c0                	test   eax,eax
   50ef8:	0f 84 4e 00 00 00    	je     execute_command_branch_5
execute_command_branch_1:
   50efe:	a1 94 5a 02 00       	mov    eax,ds:@obj3:command_list                                    ; fixup: num: 12262, src obj: 1, src ofs: 0x50eff, dst obj: 3, dst ofs: 0x25a94
   50f03:	89 45 6a             	mov    DWORD PTR [ebp+0x6a],eax
   50f06:	85 c0                	test   eax,eax
   50f08:	0f 84 2c 00 00 00    	je     execute_command_reference_1
execute_command_branch_2:
   50f0e:	8b 45 6a             	mov    eax,DWORD PTR [ebp+0x6a]
   50f11:	8b 70 04             	mov    esi,DWORD PTR [eax+0x4]
   50f14:	85 f6                	test   esi,esi
   50f16:	0f 84 11 00 00 00    	je     execute_command_branch_3
   50f1c:	89 f0                	mov    eax,esi
   50f1e:	89 da                	mov    edx,ebx
   50f20:	e8 0b 55 02 00       	call   strcmp_
   50f25:	85 c0                	test   eax,eax
   50f27:	0f 84 fb 1c 00 00    	je     execute_command_branch_217
execute_command_branch_3:
   50f2d:	8b 45 6a             	mov    eax,DWORD PTR [ebp+0x6a]
   50f30:	8b 40 1c             	mov    eax,DWORD PTR [eax+0x1c]
   50f33:	89 45 6a             	mov    DWORD PTR [ebp+0x6a],eax
   50f36:	85 c0                	test   eax,eax
   50f38:	75 d4                	jne    execute_command_branch_2
execute_command_reference_1:                                                                        ; access size: DWORD
   50f3a:	8b 55 6a             	mov    edx,DWORD PTR [ebp+0x6a]
   50f3d:	85 d2                	test   edx,edx
   50f3f:	74 0b                	je     execute_command_branch_5
   50f41:	8b 5a 14             	mov    ebx,DWORD PTR [edx+0x14]
   50f44:	85 db                	test   ebx,ebx
   50f46:	74 04                	je     execute_command_branch_5
   50f48:	74 02                	je     execute_command_branch_5
execute_command_branch_4:
   50f4a:	75 b2                	jne    execute_command_branch_1
execute_command_branch_5:
   50f4c:	8d a5 82 00 00 00    	lea    esp,[ebp+0x82]
   50f52:	5d                   	pop    ebp
   50f53:	5f                   	pop    edi
   50f54:	5e                   	pop    esi
   50f55:	5a                   	pop    edx
   50f56:	59                   	pop    ecx
   50f57:	5b                   	pop    ebx
   50f58:	c3                   	ret    
execute_command_reference_2:
   50f59:	8b 55 6a             	mov    edx,DWORD PTR [ebp+0x6a]
   50f5c:	8b 45 6a             	mov    eax,DWORD PTR [ebp+0x6a]
   50f5f:	bb 01 00 00 00       	mov    ebx,0x1
   50f64:	8b 52 0c             	mov    edx,DWORD PTR [edx+0xc]
   50f67:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
   50f6a:	e8 a1 1f 00 00       	call   set_object
   50f6f:	eb c9                	jmp    execute_command_reference_1
execute_command_reference_3:
   50f71:	8b 4d 6a             	mov    ecx,DWORD PTR [ebp+0x6a]
   50f74:	8b 49 08             	mov    ecx,DWORD PTR [ecx+0x8]
   50f77:	85 c9                	test   ecx,ecx
   50f79:	74 29                	je     execute_command_branch_9
   50f7b:	8b 1d bc 5a 02 00    	mov    ebx,DWORD PTR ds:@obj3:object_list                           ; fixup: num: 12220, src obj: 1, src ofs: 0x50f7d, dst obj: 3, dst ofs: 0x25abc
   50f81:	85 db                	test   ebx,ebx
   50f83:	74 1d                	je     execute_command_branch_8
execute_command_branch_6:
   50f85:	8b 43 30             	mov    eax,DWORD PTR [ebx+0x30]
   50f88:	85 c0                	test   eax,eax
   50f8a:	74 0f                	je     execute_command_branch_7
   50f8c:	89 ca                	mov    edx,ecx
   50f8e:	e8 9d 54 02 00       	call   strcmp_
   50f93:	85 c0                	test   eax,eax
   50f95:	75 04                	jne    execute_command_branch_7
   50f97:	89 d9                	mov    ecx,ebx
   50f99:	eb 09                	jmp    execute_command_branch_9
execute_command_branch_7:
   50f9b:	8b 5b 54             	mov    ebx,DWORD PTR [ebx+0x54]
   50f9e:	85 db                	test   ebx,ebx
   50fa0:	75 e3                	jne    execute_command_branch_6
execute_command_branch_8:
   50fa2:	31 c9                	xor    ecx,ecx
execute_command_branch_9:
   50fa4:	85 c9                	test   ecx,ecx
   50fa6:	74 92                	je     execute_command_reference_1
   50fa8:	a1 2c 41 01 00       	mov    eax,ds:@obj3:INVENTORY_ROOM                                  ; fixup: num: 12219, src obj: 1, src ofs: 0x50fa9, dst obj: 3, dst ofs: 0x1412c
   50fad:	8b 55 6a             	mov    edx,DWORD PTR [ebp+0x6a]
   50fb0:	89 41 3c             	mov    DWORD PTR [ecx+0x3c],eax
   50fb3:	bb 01 00 00 00       	mov    ebx,0x1
   50fb8:	8b 52 08             	mov    edx,DWORD PTR [edx+0x8]
   50fbb:	e8 50 1f 00 00       	call   set_object
   50fc0:	80 3d 94 24 03 00 00 	cmp    BYTE PTR ds:@obj3:in_inventory,0x0                           ; fixup: num: 12225, src obj: 1, src ofs: 0x50fc2, dst obj: 3, dst ofs: 0x32494
   50fc7:	0f 85 6d ff ff ff    	jne    execute_command_reference_1
   50fcd:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 12224, src obj: 1, src ofs: 0x50fce, dst obj: 3, dst ofs: 0x25a88
   50fd2:	8b 51 30             	mov    edx,DWORD PTR [ecx+0x30]
   50fd5:	e8 16 b1 ff ff       	call   get_bitmap
   50fda:	89 c3                	mov    ebx,eax
   50fdc:	85 c0                	test   eax,eax
   50fde:	0f 84 56 ff ff ff    	je     execute_command_reference_1
   50fe4:	89 c2                	mov    edx,eax
   50fe6:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 12223, src obj: 1, src ofs: 0x50fe7, dst obj: 3, dst ofs: 0x25a88
   50feb:	e8 00 b7 ff ff       	call   remove_bitmap
   50ff0:	8b 53 10             	mov    edx,DWORD PTR [ebx+0x10]
   50ff3:	52                   	push   edx
   50ff4:	8b 71 30             	mov    esi,DWORD PTR [ecx+0x30]
   50ff7:	56                   	push   esi
   50ff8:	68 55 c7 00 00       	push   @obj3:scrpties_cpp_variable_167                              ; fixup: num: 12222, src obj: 1, src ofs: 0x50ff9, dst obj: 3, dst ofs: 0xc755
   50ffd:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 12221, src obj: 1, src ofs: 0x50ffe, dst obj: 3, dst ofs: 0x237fc; fixup: num: 12589, src obj: 1, src ofs: 0x50ffe, dst obj: 3, dst ofs: 0x237fc
   51002:	e8 da fb 01 00       	call   sprintf_
   51007:	83 c4 10             	add    esp,0x10
   5100a:	89 d8                	mov    eax,ebx
   5100c:	31 d2                	xor    edx,edx
   5100e:	e8 8d a3 fe ff       	call   W?$dt:BTMAP$n()_
   51013:	e8 60 10 02 00       	call   W?$dln(pnv)v
   51018:	e9 1d ff ff ff       	jmp    execute_command_reference_1
execute_command_reference_4:
   5101d:	8b 45 6a             	mov    eax,DWORD PTR [ebp+0x6a]
   51020:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
   51023:	e8 ac 59 02 00       	call   atoi_
   51028:	8b 15 68 5b 02 00    	mov    edx,DWORD PTR ds:@obj3:mmbullets                             ; fixup: num: 12588, src obj: 1, src ofs: 0x5102a, dst obj: 3, dst ofs: 0x25b68
   5102e:	01 c2                	add    edx,eax
   51030:	89 15 68 5b 02 00    	mov    DWORD PTR ds:@obj3:mmbullets,edx                             ; fixup: num: 12587, src obj: 1, src ofs: 0x51032, dst obj: 3, dst ofs: 0x25b68
   51036:	83 fa 08             	cmp    edx,0x8
   51039:	0f 8c fb fe ff ff    	jl     execute_command_reference_1
   5103f:	c7 05 68 5b 02 00 07 00 00 00 	mov    DWORD PTR ds:@obj3:mmbullets,0x7                    ; fixup: num: 12586, src obj: 1, src ofs: 0x51041, dst obj: 3, dst ofs: 0x25b68
   51049:	e9 ec fe ff ff       	jmp    execute_command_reference_1
execute_command_reference_5:
   5104e:	8b 45 6a             	mov    eax,DWORD PTR [ebp+0x6a]
   51051:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
   51054:	e8 7b 59 02 00       	call   atoi_
   51059:	8b 35 64 5b 02 00    	mov    esi,DWORD PTR ds:@obj3:bullets                               ; fixup: num: 12585, src obj: 1, src ofs: 0x5105b, dst obj: 3, dst ofs: 0x25b64
   5105f:	01 c6                	add    esi,eax
   51061:	89 35 64 5b 02 00    	mov    DWORD PTR ds:@obj3:bullets,esi                               ; fixup: num: 12584, src obj: 1, src ofs: 0x51063, dst obj: 3, dst ofs: 0x25b64
   51067:	83 fe 06             	cmp    esi,0x6
   5106a:	0f 8c ca fe ff ff    	jl     execute_command_reference_1
   51070:	c7 05 64 5b 02 00 05 00 00 00 	mov    DWORD PTR ds:@obj3:bullets,0x5                      ; fixup: num: 12600, src obj: 1, src ofs: 0x51072, dst obj: 3, dst ofs: 0x25b64
   5107a:	e9 bb fe ff ff       	jmp    execute_command_reference_1
execute_command_reference_6:                                                                        ; access size: BYTE
   5107f:	8b 45 6a             	mov    eax,DWORD PTR [ebp+0x6a]
   51082:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
   51085:	e8 4a 59 02 00       	call   atoi_
   5108a:	8b 15 5c 5b 02 00    	mov    edx,DWORD PTR ds:@obj3:nails                                 ; fixup: num: 12599, src obj: 1, src ofs: 0x5108c, dst obj: 3, dst ofs: 0x25b5c
   51090:	01 c2                	add    edx,eax
   51092:	89 15 5c 5b 02 00    	mov    DWORD PTR ds:@obj3:nails,edx                                 ; fixup: num: 12598, src obj: 1, src ofs: 0x51094, dst obj: 3, dst ofs: 0x25b5c
   51098:	83 fa 10             	cmp    edx,0x10
   5109b:	0f 8c 99 fe ff ff    	jl     execute_command_reference_1
   510a1:	c7 05 5c 5b 02 00 0f 00 00 00 	mov    DWORD PTR ds:@obj3:nails,0xf                        ; fixup: num: 12597, src obj: 1, src ofs: 0x510a3, dst obj: 3, dst ofs: 0x25b5c
   510ab:	e9 8a fe ff ff       	jmp    execute_command_reference_1
execute_command_reference_7:
   510b0:	8b 45 6a             	mov    eax,DWORD PTR [ebp+0x6a]
   510b3:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
   510b6:	e8 19 59 02 00       	call   atoi_
   510bb:	8b 35 60 5b 02 00    	mov    esi,DWORD PTR ds:@obj3:gascans                               ; fixup: num: 12596, src obj: 1, src ofs: 0x510bd, dst obj: 3, dst ofs: 0x25b60
   510c1:	01 c6                	add    esi,eax
   510c3:	89 35 60 5b 02 00    	mov    DWORD PTR ds:@obj3:gascans,esi                               ; fixup: num: 12595, src obj: 1, src ofs: 0x510c5, dst obj: 3, dst ofs: 0x25b60
   510c9:	83 fe 10             	cmp    esi,0x10
   510cc:	0f 8c 68 fe ff ff    	jl     execute_command_reference_1
   510d2:	c7 05 60 5b 02 00 0f 00 00 00 	mov    DWORD PTR ds:@obj3:gascans,0xf                      ; fixup: num: 12594, src obj: 1, src ofs: 0x510d4, dst obj: 3, dst ofs: 0x25b60
   510dc:	e9 59 fe ff ff       	jmp    execute_command_reference_1
execute_command_reference_8:                                                                        ; access size: DWORD
   510e1:	8b 45 6a             	mov    eax,DWORD PTR [ebp+0x6a]
   510e4:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
   510e7:	e8 e8 58 02 00       	call   atoi_
   510ec:	8b 15 6c 5b 02 00    	mov    edx,DWORD PTR ds:@obj3:shotgun_shells                        ; fixup: num: 12593, src obj: 1, src ofs: 0x510ee, dst obj: 3, dst ofs: 0x25b6c
   510f2:	01 c2                	add    edx,eax
   510f4:	89 15 6c 5b 02 00    	mov    DWORD PTR ds:@obj3:shotgun_shells,edx                        ; fixup: num: 12592, src obj: 1, src ofs: 0x510f6, dst obj: 3, dst ofs: 0x25b6c
   510fa:	83 fa 10             	cmp    edx,0x10
   510fd:	0f 8c 37 fe ff ff    	jl     execute_command_reference_1
   51103:	c7 05 6c 5b 02 00 0f 00 00 00 	mov    DWORD PTR ds:@obj3:shotgun_shells,0xf               ; fixup: num: 12591, src obj: 1, src ofs: 0x51105, dst obj: 3, dst ofs: 0x25b6c
   5110d:	e9 28 fe ff ff       	jmp    execute_command_reference_1
execute_command_reference_9:
   51112:	8b 45 6a             	mov    eax,DWORD PTR [ebp+0x6a]
   51115:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
   51118:	8b 15 d4 5b 02 00    	mov    edx,DWORD PTR ds:@obj3:pc                                    ; fixup: num: 12590, src obj: 1, src ofs: 0x5111a, dst obj: 3, dst ofs: 0x25bd4
   5111e:	e8 b1 58 02 00       	call   atoi_
   51123:	8b 8a 84 11 00 00    	mov    ecx,DWORD PTR [edx+0x1184]
   51129:	01 c1                	add    ecx,eax
   5112b:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 12606, src obj: 1, src ofs: 0x5112c, dst obj: 3, dst ofs: 0x25bd4
   51130:	89 8a 84 11 00 00    	mov    DWORD PTR [edx+0x1184],ecx
   51136:	83 b8 84 11 00 00 1e 	cmp    DWORD PTR [eax+0x1184],0x1e
   5113d:	7e 0a                	jle    execute_command_branch_10
   5113f:	c7 80 84 11 00 00 1e 00 00 00 	mov    DWORD PTR [eax+0x1184],0x1e
execute_command_branch_10:
   51149:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 12605, src obj: 1, src ofs: 0x5114a, dst obj: 3, dst ofs: 0x25bd4
   5114e:	8b 80 84 11 00 00    	mov    eax,DWORD PTR [eax+0x1184]
   51154:	a3 b4 5b 02 00       	mov    ds:@obj3:pc_hit_points,eax                                   ; fixup: num: 12604, src obj: 1, src ofs: 0x51155, dst obj: 3, dst ofs: 0x25bb4
   51159:	e9 dc fd ff ff       	jmp    execute_command_reference_1
execute_command_reference_10:
   5115e:	30 c0                	xor    al,al
   51160:	31 d2                	xor    edx,edx
   51162:	88 c2                	mov    dl,al
   51164:	8b 45 6a             	mov    eax,DWORD PTR [ebp+0x6a]
   51167:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
   5116a:	e8 65 58 02 00       	call   atoi_
   5116f:	e8 2c 77 fe ff       	call   cd_change_requestor
   51174:	8b 45 6a             	mov    eax,DWORD PTR [ebp+0x6a]
   51177:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
   5117a:	e8 55 58 02 00       	call   atoi_
   5117f:	83 f8 03             	cmp    eax,0x3
   51182:	75 0d                	jne    execute_command_branch_11
   51184:	30 f6                	xor    dh,dh
   51186:	e8 25 7d fe ff       	call   prepare_for_new_cd
   5118b:	88 35 49 7e 01 00    	mov    BYTE PTR ds:@obj3:restart_harvest_loop,dh                    ; fixup: num: 12603, src obj: 1, src ofs: 0x5118d, dst obj: 3, dst ofs: 0x17e49
execute_command_branch_11:
   51191:	b8 80 5b 02 00       	mov    eax,@obj3:start_room                                         ; fixup: num: 12602, src obj: 1, src ofs: 0x51192, dst obj: 3, dst ofs: 0x25b80
   51196:	e8 a5 23 01 00       	call   room_setup
   5119b:	8d a5 82 00 00 00    	lea    esp,[ebp+0x82]
   511a1:	5d                   	pop    ebp
   511a2:	5f                   	pop    edi
   511a3:	5e                   	pop    esi
   511a4:	5a                   	pop    edx
   511a5:	59                   	pop    ecx
   511a6:	5b                   	pop    ebx
   511a7:	c3                   	ret    
execute_command_reference_11:
   511a8:	8b 45 6a             	mov    eax,DWORD PTR [ebp+0x6a]
   511ab:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
   511ae:	e8 cd 1b 00 00       	call   get_entrance
   511b3:	a3 9c 5a 02 00       	mov    ds:@obj3:temp_entrance,eax                                   ; fixup: num: 12601, src obj: 1, src ofs: 0x511b4, dst obj: 3, dst ofs: 0x25a9c
   511b8:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
   511bb:	a3 a4 60 02 00       	mov    ds:@obj3:next_room,eax                                       ; fixup: num: 12618, src obj: 1, src ofs: 0x511bc, dst obj: 3, dst ofs: 0x260a4
   511c0:	e9 75 fd ff ff       	jmp    execute_command_reference_1
execute_command_reference_12:                                                                       ; access size: DWORD
   511c5:	8b 45 6a             	mov    eax,DWORD PTR [ebp+0x6a]
   511c8:	ba 8c c7 00 00       	mov    edx,@obj3:scrpties_cpp_variable_168                          ; fixup: num: 12617, src obj: 1, src ofs: 0x511c9, dst obj: 3, dst ofs: 0xc78c
   511cd:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
   511d0:	e8 5b 52 02 00       	call   strcmp_
   511d5:	85 c0                	test   eax,eax
   511d7:	75 0a                	jne    execute_command_branch_12
   511d9:	e8 b2 22 01 00       	call   DimLighting
   511de:	e9 57 fd ff ff       	jmp    execute_command_reference_1
execute_command_branch_12:
   511e3:	8b 45 6a             	mov    eax,DWORD PTR [ebp+0x6a]
   511e6:	ba 90 c7 00 00       	mov    edx,@obj3:scrpties_cpp_variable_169                          ; fixup: num: 12616, src obj: 1, src ofs: 0x511e7, dst obj: 3, dst ofs: 0xc790
   511eb:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
   511ee:	e8 3d 52 02 00       	call   strcmp_
   511f3:	85 c0                	test   eax,eax
   511f5:	75 50                	jne    execute_command_branch_14
   511f7:	a1 c4 5a 02 00       	mov    eax,ds:@obj3:current_room                                    ; fixup: num: 12615, src obj: 1, src ofs: 0x511f8, dst obj: 3, dst ofs: 0x25ac4
   511fc:	8b 78 34             	mov    edi,DWORD PTR [eax+0x34]
   511ff:	85 ff                	test   edi,edi
   51201:	74 1c                	je     execute_command_branch_13
   51203:	b9 2d 07 00 00       	mov    ecx,0x72d
   51208:	bb 97 c7 00 00       	mov    ebx,@obj3:scrpties_cpp_variable_170                          ; fixup: num: 12614, src obj: 1, src ofs: 0x51209, dst obj: 3, dst ofs: 0xc797
   5120d:	8b 15 84 60 02 00    	mov    edx,DWORD PTR ds:@obj3:palette                               ; fixup: num: 12613, src obj: 1, src ofs: 0x5120f, dst obj: 3, dst ofs: 0x26084
   51213:	89 f8                	mov    eax,edi
   51215:	e8 c6 bb fb ff       	call   XFILE_read2
   5121a:	a3 84 60 02 00       	mov    ds:@obj3:palette,eax                                         ; fixup: num: 12612, src obj: 1, src ofs: 0x5121b, dst obj: 3, dst ofs: 0x26084
execute_command_branch_13:
   5121f:	a1 b8 0f 01 00       	mov    eax,ds:@obj3:pal_gamma_variable_1                            ; fixup: num: 12611, src obj: 1, src ofs: 0x51220, dst obj: 3, dst ofs: 0x10fb8
   51224:	50                   	push   eax
   51225:	8b 15 b4 0f 01 00    	mov    edx,DWORD PTR ds:@obj3:pal_gamma                             ; fixup: num: 12610, src obj: 1, src ofs: 0x51227, dst obj: 3, dst ofs: 0x10fb4
   5122b:	52                   	push   edx
   5122c:	6a 00                	push   0x0
   5122e:	6a 00                	push   0x0
   51230:	a1 84 60 02 00       	mov    eax,ds:@obj3:palette                                         ; fixup: num: 12609, src obj: 1, src ofs: 0x51231, dst obj: 3, dst ofs: 0x26084
   51235:	b7 01                	mov    bh,0x1
   51237:	e8 f4 27 fc ff       	call   fade
   5123c:	88 3d 7e 60 02 00    	mov    BYTE PTR ds:@obj3:faded_in,bh                                ; fixup: num: 12608, src obj: 1, src ofs: 0x5123e, dst obj: 3, dst ofs: 0x2607e
   51242:	e9 f3 fc ff ff       	jmp    execute_command_reference_1
execute_command_branch_14:
   51247:	8b 45 6a             	mov    eax,DWORD PTR [ebp+0x6a]
   5124a:	ba a4 c7 00 00       	mov    edx,@obj3:scrpties_cpp_variable_171                          ; fixup: num: 12607, src obj: 1, src ofs: 0x5124b, dst obj: 3, dst ofs: 0xc7a4
   5124f:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
   51252:	e8 d9 51 02 00       	call   strcmp_
   51257:	85 c0                	test   eax,eax
   51259:	75 0a                	jne    execute_command_branch_15
   5125b:	e8 90 22 01 00       	call   NoLighting
   51260:	e9 d5 fc ff ff       	jmp    execute_command_reference_1
execute_command_branch_15:
   51265:	8b 45 6a             	mov    eax,DWORD PTR [ebp+0x6a]
   51268:	ba a9 c7 00 00       	mov    edx,@obj3:scrpties_cpp_variable_172                          ; fixup: num: 12621, src obj: 1, src ofs: 0x51269, dst obj: 3, dst ofs: 0xc7a9
   5126d:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
   51270:	e8 bb 51 02 00       	call   strcmp_
   51275:	85 c0                	test   eax,eax
   51277:	0f 85 bd fc ff ff    	jne    execute_command_reference_1
   5127d:	c6 05 c0 60 02 00 01 	mov    BYTE PTR ds:@obj3:no_fade_in,0x1                             ; fixup: num: 12620, src obj: 1, src ofs: 0x5127f, dst obj: 3, dst ofs: 0x260c0
   51284:	e9 b1 fc ff ff       	jmp    execute_command_reference_1
execute_command_reference_13:                                                                       ; access size: DWORD
   51289:	8b 4d 6a             	mov    ecx,DWORD PTR [ebp+0x6a]
   5128c:	8b 1d a4 5a 02 00    	mov    ebx,DWORD PTR ds:@obj3:flag_list                             ; fixup: num: 12619, src obj: 1, src ofs: 0x5128e, dst obj: 3, dst ofs: 0x25aa4
   51292:	8b 49 08             	mov    ecx,DWORD PTR [ecx+0x8]
   51295:	85 db                	test   ebx,ebx
   51297:	74 18                	je     execute_command_branch_18
execute_command_branch_16:
   51299:	89 ca                	mov    edx,ecx
   5129b:	8b 03                	mov    eax,DWORD PTR [ebx]
   5129d:	e8 8e 51 02 00       	call   strcmp_
   512a2:	85 c0                	test   eax,eax
   512a4:	75 04                	jne    execute_command_branch_17
   512a6:	89 d8                	mov    eax,ebx
   512a8:	eb 09                	jmp    execute_command_branch_19
execute_command_branch_17:
   512aa:	8b 5b 08             	mov    ebx,DWORD PTR [ebx+0x8]
   512ad:	85 db                	test   ebx,ebx
   512af:	75 e8                	jne    execute_command_branch_16
execute_command_branch_18:
   512b1:	31 c0                	xor    eax,eax
execute_command_branch_19:
   512b3:	85 c0                	test   eax,eax
   512b5:	0f 84 7f fc ff ff    	je     execute_command_reference_1
   512bb:	80 78 04 00          	cmp    BYTE PTR [eax+0x4],0x0
   512bf:	74 08                	je     execute_command_branch_20
   512c1:	8b 5d 6a             	mov    ebx,DWORD PTR [ebp+0x6a]
   512c4:	8b 5b 0c             	mov    ebx,DWORD PTR [ebx+0xc]
   512c7:	eb 06                	jmp    execute_command_branch_21
execute_command_branch_20:
   512c9:	8b 5d 6a             	mov    ebx,DWORD PTR [ebp+0x6a]
   512cc:	8b 5b 10             	mov    ebx,DWORD PTR [ebx+0x10]
execute_command_branch_21:
   512cf:	85 db                	test   ebx,ebx
   512d1:	0f 85 73 fc ff ff    	jne    execute_command_branch_4
   512d7:	e9 5e fc ff ff       	jmp    execute_command_reference_1
execute_command_reference_14:
   512dc:	8b 45 6a             	mov    eax,DWORD PTR [ebp+0x6a]
   512df:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
   512e2:	e8 f9 8c fd ff       	call   check_dialog_flag
   512e7:	84 c0                	test   al,al
   512e9:	74 08                	je     execute_command_branch_22
   512eb:	8b 5d 6a             	mov    ebx,DWORD PTR [ebp+0x6a]
   512ee:	8b 5b 0c             	mov    ebx,DWORD PTR [ebx+0xc]
   512f1:	eb 06                	jmp    execute_command_branch_23
execute_command_branch_22:
   512f3:	8b 5d 6a             	mov    ebx,DWORD PTR [ebp+0x6a]
   512f6:	8b 5b 10             	mov    ebx,DWORD PTR [ebx+0x10]
execute_command_branch_23:
   512f9:	85 db                	test   ebx,ebx
   512fb:	0f 85 49 fc ff ff    	jne    execute_command_branch_4
   51301:	e9 34 fc ff ff       	jmp    execute_command_reference_1
execute_command_reference_15:
   51306:	e8 cc 51 02 00       	call   rand_
   5130b:	89 c2                	mov    edx,eax
   5130d:	bb 64 00 00 00       	mov    ebx,0x64
   51312:	c1 fa 1f             	sar    edx,0x1f
   51315:	f7 fb                	idiv   ebx
   51317:	8b 45 6a             	mov    eax,DWORD PTR [ebp+0x6a]
   5131a:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
   5131d:	e8 b2 56 02 00       	call   atoi_
   51322:	39 c2                	cmp    edx,eax
   51324:	7d 08                	jge    execute_command_branch_24
   51326:	8b 5d 6a             	mov    ebx,DWORD PTR [ebp+0x6a]
   51329:	8b 5b 0c             	mov    ebx,DWORD PTR [ebx+0xc]
   5132c:	eb 06                	jmp    execute_command_branch_25
execute_command_branch_24:
   5132e:	8b 5d 6a             	mov    ebx,DWORD PTR [ebp+0x6a]
   51331:	8b 5b 10             	mov    ebx,DWORD PTR [ebx+0x10]
execute_command_branch_25:
   51334:	85 db                	test   ebx,ebx
   51336:	0f 85 0e fc ff ff    	jne    execute_command_branch_4
   5133c:	e9 f9 fb ff ff       	jmp    execute_command_reference_1
execute_command_reference_16:                                                                       ; access size: BYTE
   51341:	8b 45 6a             	mov    eax,DWORD PTR [ebp+0x6a]
   51344:	30 d2                	xor    dl,dl
   51346:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
   51349:	88 15 b1 3e 01 00    	mov    BYTE PTR ds:@obj3:show_pc,dl                                 ; fixup: num: 12630, src obj: 1, src ofs: 0x5134b, dst obj: 3, dst ofs: 0x13eb1
   5134f:	a3 a4 60 02 00       	mov    ds:@obj3:next_room,eax                                       ; fixup: num: 12629, src obj: 1, src ofs: 0x51350, dst obj: 3, dst ofs: 0x260a4
   51354:	e9 e1 fb ff ff       	jmp    execute_command_reference_1
execute_command_reference_17:
   51359:	8b 55 6a             	mov    edx,DWORD PTR [ebp+0x6a]
   5135c:	8b 45 6a             	mov    eax,DWORD PTR [ebp+0x6a]
   5135f:	31 db                	xor    ebx,ebx
   51361:	8b 52 0c             	mov    edx,DWORD PTR [edx+0xc]
   51364:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
   51367:	e8 a4 1b 00 00       	call   set_object
   5136c:	e9 c9 fb ff ff       	jmp    execute_command_reference_1
execute_command_reference_18:
   51371:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 12628, src obj: 1, src ofs: 0x51372, dst obj: 3, dst ofs: 0x1a1d4
   51376:	e8 25 a6 fb ff       	call   update_mod_9
   5137b:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 12627, src obj: 1, src ofs: 0x5137c, dst obj: 3, dst ofs: 0x1a1d4
   51380:	e8 1b a6 fb ff       	call   update_mod_9
   51385:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 12626, src obj: 1, src ofs: 0x51386, dst obj: 3, dst ofs: 0x1a1d4
   5138a:	e8 11 a6 fb ff       	call   update_mod_9
   5138f:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 12625, src obj: 1, src ofs: 0x51390, dst obj: 3, dst ofs: 0x1a1d4
   51394:	e8 07 a6 fb ff       	call   update_mod_9
   51399:	6a 00                	push   0x0
   5139b:	6a 00                	push   0x0
   5139d:	8b 3d b8 0f 01 00    	mov    edi,DWORD PTR ds:@obj3:pal_gamma_variable_1                  ; fixup: num: 12624, src obj: 1, src ofs: 0x5139f, dst obj: 3, dst ofs: 0x10fb8
   513a3:	57                   	push   edi
   513a4:	a1 b4 0f 01 00       	mov    eax,ds:@obj3:pal_gamma                                       ; fixup: num: 12623, src obj: 1, src ofs: 0x513a5, dst obj: 3, dst ofs: 0x10fb4
   513a9:	50                   	push   eax
   513aa:	a1 84 60 02 00       	mov    eax,ds:@obj3:palette                                         ; fixup: num: 12622, src obj: 1, src ofs: 0x513ab, dst obj: 3, dst ofs: 0x26084
   513af:	e8 7c 26 fc ff       	call   fade
   513b4:	6a 00                	push   0x0
   513b6:	ba 00 01 00 00       	mov    edx,0x100
   513bb:	31 c0                	xor    eax,eax
   513bd:	e8 ae 13 fc ff       	call   setvgapalette_mod_14
   513c2:	a1 94 60 02 00       	mov    eax,ds:@obj3:pointer                                         ; fixup: num: 12636, src obj: 1, src ofs: 0x513c3, dst obj: 3, dst ofs: 0x26094
   513c7:	e8 94 ae fe ff       	call   hide
   513cc:	e8 bf 6a 01 00       	call   Clear_using_on_bm
   513d1:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 12635, src obj: 1, src ofs: 0x513d2, dst obj: 3, dst ofs: 0x25a88
   513d6:	e8 05 b6 ff ff       	call   remove_all
   513db:	6a 01                	push   0x1
   513dd:	b9 e0 01 00 00       	mov    ecx,0x1e0
   513e2:	bb 80 02 00 00       	mov    ebx,0x280
   513e7:	6a 00                	push   0x0
   513e9:	31 d2                	xor    edx,edx
   513eb:	31 c0                	xor    eax,eax
   513ed:	e8 5e 43 fb ff       	call   VESA_rectangle
   513f2:	31 d2                	xor    edx,edx
   513f4:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 12634, src obj: 1, src ofs: 0x513f5, dst obj: 3, dst ofs: 0x1a1d4
   513f9:	66 8b 15 d0 0f 01 00 	mov    dx,WORD PTR ds:@obj3:volume_table_variable_1                 ; fixup: num: 12633, src obj: 1, src ofs: 0x513fc, dst obj: 3, dst ofs: 0x10fd0
   51400:	e8 4b 85 fb ff       	call   set_volume
   51405:	ba b1 c7 00 00       	mov    edx,@obj3:scrpties_cpp_variable_173                          ; fixup: num: 12632, src obj: 1, src ofs: 0x51406, dst obj: 3, dst ofs: 0xc7b1
   5140a:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 12631, src obj: 1, src ofs: 0x5140b, dst obj: 3, dst ofs: 0x1a1d4
   5140f:	e8 ac ab fb ff       	call   change_music_file
   51414:	31 d2                	xor    edx,edx
   51416:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 12532, src obj: 1, src ofs: 0x51417, dst obj: 3, dst ofs: 0x1a1d4
   5141b:	66 8b 15 d0 0f 01 00 	mov    dx,WORD PTR ds:@obj3:volume_table_variable_1                 ; fixup: num: 12531, src obj: 1, src ofs: 0x5141e, dst obj: 3, dst ofs: 0x10fd0
   51422:	e8 29 85 fb ff       	call   set_volume
   51427:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 12530, src obj: 1, src ofs: 0x51428, dst obj: 3, dst ofs: 0x1a1d4
   5142c:	e8 6f a5 fb ff       	call   update_mod_9
   51431:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 12529, src obj: 1, src ofs: 0x51432, dst obj: 3, dst ofs: 0x1a1d4
   51436:	e8 65 a5 fb ff       	call   update_mod_9
   5143b:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 12528, src obj: 1, src ofs: 0x5143c, dst obj: 3, dst ofs: 0x1a1d4
   51440:	e8 5b a5 fb ff       	call   update_mod_9
   51445:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 12527, src obj: 1, src ofs: 0x51446, dst obj: 3, dst ofs: 0x1a1d4
   5144a:	e8 51 a5 fb ff       	call   update_mod_9
   5144f:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 12526, src obj: 1, src ofs: 0x51450, dst obj: 3, dst ofs: 0x1a1d4
   51454:	e8 47 a5 fb ff       	call   update_mod_9
   51459:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 12641, src obj: 1, src ofs: 0x5145a, dst obj: 3, dst ofs: 0x1a1d4
   5145e:	31 ff                	xor    edi,edi
   51460:	e8 3b a5 fb ff       	call   update_mod_9
   51465:	eb 0a                	jmp    execute_command_branch_27
execute_command_branch_26:
   51467:	47                   	inc    edi
   51468:	83 ff 06             	cmp    edi,0x6
   5146b:	0f 8d 1b 02 00 00    	jge    execute_command_branch_38
execute_command_branch_27:
   51471:	83 ff 04             	cmp    edi,0x4
   51474:	74 f1                	je     execute_command_branch_26
   51476:	8d 57 01             	lea    edx,[edi+0x1]
   51479:	52                   	push   edx
   5147a:	68 ca c7 00 00       	push   @obj3:scrpties_cpp_variable_174                              ; fixup: num: 12640, src obj: 1, src ofs: 0x5147b, dst obj: 3, dst ofs: 0xc7ca
   5147f:	8d 45 1a             	lea    eax,[ebp+0x1a]
   51482:	50                   	push   eax
   51483:	e8 59 f7 01 00       	call   sprintf_
   51488:	83 c4 0c             	add    esp,0xc
   5148b:	52                   	push   edx
   5148c:	68 e7 c7 00 00       	push   @obj3:scrpties_cpp_variable_175                              ; fixup: num: 12639, src obj: 1, src ofs: 0x5148d, dst obj: 3, dst ofs: 0xc7e7
   51491:	8d 45 ca             	lea    eax,[ebp-0x36]
   51494:	50                   	push   eax
   51495:	e8 47 f7 01 00       	call   sprintf_
   5149a:	83 c4 0c             	add    esp,0xc
   5149d:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 12638, src obj: 1, src ofs: 0x5149e, dst obj: 3, dst ofs: 0x1a1d4
   514a2:	e8 f9 a4 fb ff       	call   update_mod_9
   514a7:	b8 4c 00 00 00       	mov    eax,0x4c
   514ac:	e8 67 0a 02 00       	call   W?$nwn(ui)pnv
   514b1:	85 c0                	test   eax,eax
   514b3:	74 20                	je     execute_command_branch_28
   514b5:	6a 00                	push   0x0
   514b7:	68 93 14 07 00       	push   @obj1:_nmalloc_                                              ; aliases: _nmalloc_, malloc_; fixup: num: 12637, src obj: 1, src ofs: 0x514b8, dst obj: 1, dst ofs: 0x71493
   514bc:	6a 00                	push   0x0
   514be:	6a 00                	push   0x0
   514c0:	6a 01                	push   0x1
   514c2:	6a 00                	push   0x0
   514c4:	bb 03 c8 00 00       	mov    ebx,@obj3:scrpties_cpp_variable_176                          ; fixup: num: 12543, src obj: 1, src ofs: 0x514c5, dst obj: 3, dst ofs: 0xc803
   514c9:	6a 00                	push   0x0
   514cb:	8d 55 1a             	lea    edx,[ebp+0x1a]
   514ce:	31 c9                	xor    ecx,ecx
   514d0:	e8 0b 98 fe ff       	call   W?$ct:BTMAP$n(pnapnaiibiucucpn(ui)pnvpnuc)_
execute_command_branch_28:
   514d5:	89 c6                	mov    esi,eax
   514d7:	85 c0                	test   eax,eax
   514d9:	75 0f                	jne    execute_command_branch_29
   514db:	bb 0e c8 00 00       	mov    ebx,@obj3:scrpties_cpp_variable_177                          ; fixup: num: 12542, src obj: 1, src ofs: 0x514dc, dst obj: 3, dst ofs: 0xc80e
   514e0:	ba a0 07 00 00       	mov    edx,0x7a0
   514e5:	e8 46 6b fe ff       	call   _error_report
execute_command_branch_29:
   514ea:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 12541, src obj: 1, src ofs: 0x514eb, dst obj: 3, dst ofs: 0x1a1d4
   514ef:	b9 a5 07 00 00       	mov    ecx,0x7a5
   514f4:	bb 2a c8 00 00       	mov    ebx,@obj3:scrpties_cpp_variable_178                          ; fixup: num: 12540, src obj: 1, src ofs: 0x514f5, dst obj: 3, dst ofs: 0xc82a
   514f9:	e8 a2 a4 fb ff       	call   update_mod_9
   514fe:	31 d2                	xor    edx,edx
   51500:	8d 45 ca             	lea    eax,[ebp-0x36]
   51503:	e8 d8 b8 fb ff       	call   XFILE_read2
   51508:	89 c3                	mov    ebx,eax
   5150a:	89 c1                	mov    ecx,eax
   5150c:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 12539, src obj: 1, src ofs: 0x5150d, dst obj: 3, dst ofs: 0x1a1d4
   51511:	e8 8a a4 fb ff       	call   update_mod_9
   51516:	6a 00                	push   0x0
   51518:	ba 00 01 00 00       	mov    edx,0x100
   5151d:	31 c0                	xor    eax,eax
   5151f:	e8 4c 12 fc ff       	call   setvgapalette_mod_14
   51524:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 12538, src obj: 1, src ofs: 0x51525, dst obj: 3, dst ofs: 0x25a88
   51529:	89 f2                	mov    edx,esi
   5152b:	e8 00 ac ff ff       	call   insert_bitmap
   51530:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 12537, src obj: 1, src ofs: 0x51531, dst obj: 3, dst ofs: 0x1a1d4
   51535:	e8 66 a4 fb ff       	call   update_mod_9
   5153a:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 12536, src obj: 1, src ofs: 0x5153b, dst obj: 3, dst ofs: 0x25a84
   5153f:	e8 5c c7 ff ff       	call   update_mod_84
   51544:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 12535, src obj: 1, src ofs: 0x51545, dst obj: 3, dst ofs: 0x1a1d4
   51549:	e8 52 a4 fb ff       	call   update_mod_9
   5154e:	85 db                	test   ebx,ebx
   51550:	74 20                	je     execute_command_branch_30
   51552:	a1 b8 0f 01 00       	mov    eax,ds:@obj3:pal_gamma_variable_1                            ; fixup: num: 12534, src obj: 1, src ofs: 0x51553, dst obj: 3, dst ofs: 0x10fb8
   51557:	50                   	push   eax
   51558:	8b 15 b4 0f 01 00    	mov    edx,DWORD PTR ds:@obj3:pal_gamma                             ; fixup: num: 12533, src obj: 1, src ofs: 0x5155a, dst obj: 3, dst ofs: 0x10fb4
   5155e:	52                   	push   edx
   5155f:	6a 00                	push   0x0
   51561:	6a 00                	push   0x0
   51563:	89 d8                	mov    eax,ebx
   51565:	b3 01                	mov    bl,0x1
   51567:	e8 c4 24 fc ff       	call   fade
   5156c:	88 1d 7e 60 02 00    	mov    BYTE PTR ds:@obj3:faded_in,bl                                ; fixup: num: 12558, src obj: 1, src ofs: 0x5156e, dst obj: 3, dst ofs: 0x2607e
execute_command_branch_30:
   51572:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 12557, src obj: 1, src ofs: 0x51573, dst obj: 3, dst ofs: 0x1a1d4
   51577:	e8 24 a4 fb ff       	call   update_mod_9
   5157c:	e8 81 0b 02 00       	call   clock_
   51581:	66 83 3d 08 59 02 00 00 	cmp    WORD PTR ds:@obj3:raw_key,0x0                             ; fixup: num: 12556, src obj: 1, src ofs: 0x51584, dst obj: 3, dst ofs: 0x25908
   51589:	74 12                	je     execute_command_branch_32
   5158b:	31 d2                	xor    edx,edx
execute_command_branch_31:
   5158d:	66 89 15 08 59 02 00 	mov    WORD PTR ds:@obj3:raw_key,dx                                 ; fixup: num: 12555, src obj: 1, src ofs: 0x51590, dst obj: 3, dst ofs: 0x25908
   51594:	66 3b 15 08 59 02 00 	cmp    dx,WORD PTR ds:@obj3:raw_key                                 ; fixup: num: 12554, src obj: 1, src ofs: 0x51597, dst obj: 3, dst ofs: 0x25908
   5159b:	75 f0                	jne    execute_command_branch_31
execute_command_branch_32:
   5159d:	ba d4 a1 01 00       	mov    edx,@obj3:music                                              ; fixup: num: 12553, src obj: 1, src ofs: 0x5159e, dst obj: 3, dst ofs: 0x1a1d4
   515a2:	8d 98 e8 03 00 00    	lea    ebx,[eax+0x3e8]
execute_command_branch_33:
   515a8:	0f bf 05 08 59 02 00 	movsx  eax,WORD PTR ds:@obj3:raw_key                                ; fixup: num: 12552, src obj: 1, src ofs: 0x515ab, dst obj: 3, dst ofs: 0x25908
   515af:	83 f8 39             	cmp    eax,0x39
   515b2:	74 3a                	je     execute_command_branch_34
   515b4:	0f bf 05 08 59 02 00 	movsx  eax,WORD PTR ds:@obj3:raw_key                                ; fixup: num: 12551, src obj: 1, src ofs: 0x515b7, dst obj: 3, dst ofs: 0x25908
   515bb:	83 f8 01             	cmp    eax,0x1
   515be:	74 2e                	je     execute_command_branch_34
   515c0:	0f bf 05 08 59 02 00 	movsx  eax,WORD PTR ds:@obj3:raw_key                                ; fixup: num: 12550, src obj: 1, src ofs: 0x515c3, dst obj: 3, dst ofs: 0x25908
   515c7:	83 f8 1c             	cmp    eax,0x1c
   515ca:	74 22                	je     execute_command_branch_34
   515cc:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 12549, src obj: 1, src ofs: 0x515ce, dst obj: 3, dst ofs: 0x25974
   515d3:	75 19                	jne    execute_command_branch_34
   515d5:	80 3d 72 59 02 00 00 	cmp    BYTE PTR ds:@obj3:right_button,0x0                           ; fixup: num: 12548, src obj: 1, src ofs: 0x515d7, dst obj: 3, dst ofs: 0x25972
   515dc:	75 10                	jne    execute_command_branch_34
   515de:	89 d0                	mov    eax,edx
   515e0:	e8 bb a3 fb ff       	call   update_mod_9
   515e5:	e8 18 0b 02 00       	call   clock_
   515ea:	39 d8                	cmp    eax,ebx
   515ec:	76 ba                	jbe    execute_command_branch_33
execute_command_branch_34:
   515ee:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 12547, src obj: 1, src ofs: 0x515ef, dst obj: 3, dst ofs: 0x1a1d4
   515f3:	e8 a8 a3 fb ff       	call   update_mod_9
   515f8:	83 ff 05             	cmp    edi,0x5
   515fb:	75 0f                	jne    execute_command_branch_35
   515fd:	68 cd cc 4c 3e       	push   0x3e4ccccd
   51602:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 12546, src obj: 1, src ofs: 0x51603, dst obj: 3, dst ofs: 0x1a1d4
   51607:	e8 a4 9d fb ff       	call   fade_out
execute_command_branch_35:
   5160c:	6a 00                	push   0x0
   5160e:	6a 00                	push   0x0
   51610:	8b 1d b8 0f 01 00    	mov    ebx,DWORD PTR ds:@obj3:pal_gamma_variable_1                  ; fixup: num: 12545, src obj: 1, src ofs: 0x51612, dst obj: 3, dst ofs: 0x10fb8
   51616:	53                   	push   ebx
   51617:	a1 b4 0f 01 00       	mov    eax,ds:@obj3:pal_gamma                                       ; fixup: num: 12544, src obj: 1, src ofs: 0x51618, dst obj: 3, dst ofs: 0x10fb4
   5161c:	50                   	push   eax
   5161d:	89 c8                	mov    eax,ecx
   5161f:	30 d2                	xor    dl,dl
   51621:	e8 0a 24 fc ff       	call   fade
   51626:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 12566, src obj: 1, src ofs: 0x51627, dst obj: 3, dst ofs: 0x1a1d4
   5162b:	88 15 7e 60 02 00    	mov    BYTE PTR ds:@obj3:faded_in,dl                                ; fixup: num: 12565, src obj: 1, src ofs: 0x5162d, dst obj: 3, dst ofs: 0x2607e
   51631:	e8 6a a3 fb ff       	call   update_mod_9
   51636:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 12564, src obj: 1, src ofs: 0x51637, dst obj: 3, dst ofs: 0x25a88
   5163b:	89 f2                	mov    edx,esi
   5163d:	e8 ae b0 ff ff       	call   remove_bitmap
   51642:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 12563, src obj: 1, src ofs: 0x51643, dst obj: 3, dst ofs: 0x1a1d4
   51647:	e8 54 a3 fb ff       	call   update_mod_9
   5164c:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 12562, src obj: 1, src ofs: 0x5164d, dst obj: 3, dst ofs: 0x25a84
   51651:	e8 4a c6 ff ff       	call   update_mod_84
   51656:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 12561, src obj: 1, src ofs: 0x51657, dst obj: 3, dst ofs: 0x1a1d4
   5165b:	e8 40 a3 fb ff       	call   update_mod_9
   51660:	85 c9                	test   ecx,ecx
   51662:	74 07                	je     execute_command_branch_36
   51664:	89 c8                	mov    eax,ecx
   51666:	e8 7d fd 01 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
execute_command_branch_36:
   5166b:	85 f6                	test   esi,esi
   5166d:	74 0e                	je     execute_command_branch_37
   5166f:	89 f0                	mov    eax,esi
   51671:	31 d2                	xor    edx,edx
   51673:	e8 28 9d fe ff       	call   W?$dt:BTMAP$n()_
   51678:	e8 fb 09 02 00       	call   W?$dln(pnv)v
execute_command_branch_37:
   5167d:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 12560, src obj: 1, src ofs: 0x5167e, dst obj: 3, dst ofs: 0x1a1d4
   51682:	e8 19 a3 fb ff       	call   update_mod_9
   51687:	e9 db fd ff ff       	jmp    execute_command_branch_26
execute_command_branch_38:
   5168c:	e8 ef 10 01 00       	call   harvester_shutdown
   51691:	31 c0                	xor    eax,eax
   51693:	e8 20 fa 01 00       	call   exit_
execute_command_reference_19:
   51698:	8b 4d 6a             	mov    ecx,DWORD PTR [ebp+0x6a]
   5169b:	8b 1d a0 5a 02 00    	mov    ebx,DWORD PTR ds:@obj3:execlst_list                          ; fixup: num: 12559, src obj: 1, src ofs: 0x5169d, dst obj: 3, dst ofs: 0x25aa0
   516a1:	8b 49 08             	mov    ecx,DWORD PTR [ecx+0x8]
   516a4:	85 db                	test   ebx,ebx
   516a6:	0f 84 8e f8 ff ff    	je     execute_command_reference_1
execute_command_branch_39:
   516ac:	89 ca                	mov    edx,ecx
   516ae:	8b 03                	mov    eax,DWORD PTR [ebx]
   516b0:	e8 7b 4d 02 00       	call   strcmp_
   516b5:	85 c0                	test   eax,eax
   516b7:	75 1e                	jne    execute_command_branch_41
   516b9:	8b 53 04             	mov    edx,DWORD PTR [ebx+0x4]
   516bc:	85 d2                	test   edx,edx
   516be:	0f 84 76 f8 ff ff    	je     execute_command_reference_1
execute_command_branch_40:
   516c4:	8b 02                	mov    eax,DWORD PTR [edx]
   516c6:	e8 15 f8 ff ff       	call   execute_command
   516cb:	8b 52 04             	mov    edx,DWORD PTR [edx+0x4]
   516ce:	85 d2                	test   edx,edx
   516d0:	75 f2                	jne    execute_command_branch_40
   516d2:	e9 63 f8 ff ff       	jmp    execute_command_reference_1
execute_command_branch_41:
   516d7:	8b 5b 08             	mov    ebx,DWORD PTR [ebx+0x8]
   516da:	85 db                	test   ebx,ebx
   516dc:	75 ce                	jne    execute_command_branch_39
   516de:	e9 57 f8 ff ff       	jmp    execute_command_reference_1
execute_command_reference_20:
   516e3:	b8 37 c8 00 00       	mov    eax,@obj3:scrpties_cpp_variable_179                          ; fixup: num: 12576, src obj: 1, src ofs: 0x516e4, dst obj: 3, dst ofs: 0xc837
   516e8:	e8 93 16 00 00       	call   get_entrance
   516ed:	89 c3                	mov    ebx,eax
   516ef:	a3 9c 5a 02 00       	mov    ds:@obj3:temp_entrance,eax                                   ; fixup: num: 12575, src obj: 1, src ofs: 0x516f0, dst obj: 3, dst ofs: 0x25a9c
   516f4:	a1 a8 60 02 00       	mov    eax,ds:@obj3:last_room                                       ; fixup: num: 12574, src obj: 1, src ofs: 0x516f5, dst obj: 3, dst ofs: 0x260a8
   516f9:	8b 0d d4 5b 02 00    	mov    ecx,DWORD PTR ds:@obj3:pc                                    ; fixup: num: 12573, src obj: 1, src ofs: 0x516fb, dst obj: 3, dst ofs: 0x25bd4
   516ff:	a3 a4 60 02 00       	mov    ds:@obj3:next_room,eax                                       ; fixup: num: 12572, src obj: 1, src ofs: 0x51700, dst obj: 3, dst ofs: 0x260a4
   51704:	8b 41 2c             	mov    eax,DWORD PTR [ecx+0x2c]
   51707:	89 c2                	mov    edx,eax
   51709:	c1 fa 1f             	sar    edx,0x1f
   5170c:	2b c2                	sub    eax,edx
   5170e:	d1 f8                	sar    eax,1
   51710:	8b 15 ac 5b 02 00    	mov    edx,DWORD PTR ds:@obj3:pc_real_x                             ; fixup: num: 12571, src obj: 1, src ofs: 0x51712, dst obj: 3, dst ofs: 0x25bac
   51716:	01 d0                	add    eax,edx
   51718:	89 03                	mov    DWORD PTR [ebx],eax
   5171a:	a1 b0 5b 02 00       	mov    eax,ds:@obj3:pc_real_y                                       ; fixup: num: 12570, src obj: 1, src ofs: 0x5171b, dst obj: 3, dst ofs: 0x25bb0
   5171f:	8b 71 30             	mov    esi,DWORD PTR [ecx+0x30]
   51722:	01 f0                	add    eax,esi
   51724:	89 43 04             	mov    DWORD PTR [ebx+0x4],eax
   51727:	d9 41 1c             	fld    DWORD PTR [ecx+0x1c]
   5172a:	e8 19 46 02 00       	call   __CHP
   5172f:	db 5d 6e             	fistp  DWORD PTR [ebp+0x6e]
   51732:	8b 45 6e             	mov    eax,DWORD PTR [ebp+0x6e]
   51735:	89 43 08             	mov    DWORD PTR [ebx+0x8],eax
   51738:	0f be 81 a0 11 00 00 	movsx  eax,BYTE PTR [ecx+0x11a0]
   5173f:	89 43 0c             	mov    DWORD PTR [ebx+0xc],eax
   51742:	b4 01                	mov    ah,0x1
   51744:	be 41 c8 00 00       	mov    esi,@obj3:scrpties_cpp_variable_180                          ; fixup: num: 12569, src obj: 1, src ofs: 0x51745, dst obj: 3, dst ofs: 0xc841
   51749:	88 25 b1 3e 01 00    	mov    BYTE PTR ds:@obj3:show_pc,ah                                 ; fixup: num: 12568, src obj: 1, src ofs: 0x5174b, dst obj: 3, dst ofs: 0x13eb1
   5174f:	e8 3c 67 01 00       	call   Clear_using_on_bm
   51754:	8b 3d b0 24 03 00    	mov    edi,DWORD PTR ds:@obj3:using_on_text                         ; fixup: num: 12567, src obj: 1, src ofs: 0x51756, dst obj: 3, dst ofs: 0x324b0
   5175a:	57                   	push   edi
execute_command_branch_42:
   5175b:	8a 06                	mov    al,BYTE PTR [esi]
   5175d:	88 07                	mov    BYTE PTR [edi],al
   5175f:	3c 00                	cmp    al,0x0
   51761:	74 10                	je     execute_command_branch_43
   51763:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   51766:	83 c6 02             	add    esi,0x2
   51769:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   5176c:	83 c7 02             	add    edi,0x2
   5176f:	3c 00                	cmp    al,0x0
   51771:	75 e8                	jne    execute_command_branch_42
execute_command_branch_43:
   51773:	5f                   	pop    edi
   51774:	e9 c1 f7 ff ff       	jmp    execute_command_reference_1
execute_command_reference_21:
   51779:	30 c0                	xor    al,al
   5177b:	31 d2                	xor    edx,edx
   5177d:	88 c2                	mov    dl,al
   5177f:	8b 45 6a             	mov    eax,DWORD PTR [ebp+0x6a]
   51782:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
   51785:	e8 c6 0d 01 00       	call   play_fvi
   5178a:	e9 ab f7 ff ff       	jmp    execute_command_reference_1
execute_command_reference_22:
   5178f:	e8 5c 1d 01 00       	call   NoLighting
   51794:	8b 45 6a             	mov    eax,DWORD PTR [ebp+0x6a]
   51797:	31 d2                	xor    edx,edx
   51799:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
   5179c:	e8 af 0d 01 00       	call   play_fvi
   517a1:	e8 9a ad 01 00       	call   game_over
   517a6:	31 d2                	xor    edx,edx
   517a8:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 12581, src obj: 1, src ofs: 0x517a9, dst obj: 3, dst ofs: 0x1a1d4
   517ad:	66 8b 15 b0 0f 01 00 	mov    dx,WORD PTR ds:@obj3:music_volume                            ; fixup: num: 12580, src obj: 1, src ofs: 0x517b0, dst obj: 3, dst ofs: 0x10fb0
   517b4:	e8 97 81 fb ff       	call   set_volume
   517b9:	8d a5 82 00 00 00    	lea    esp,[ebp+0x82]
   517bf:	5d                   	pop    ebp
   517c0:	5f                   	pop    edi
   517c1:	5e                   	pop    esi
   517c2:	5a                   	pop    edx
   517c3:	59                   	pop    ecx
   517c4:	5b                   	pop    ebx
   517c5:	c3                   	ret    
execute_command_reference_23:
   517c6:	8b 4d 6a             	mov    ecx,DWORD PTR [ebp+0x6a]
   517c9:	8b 49 08             	mov    ecx,DWORD PTR [ecx+0x8]
   517cc:	85 c9                	test   ecx,ecx
   517ce:	74 23                	je     execute_command_branch_46
   517d0:	8b 1d b8 5a 02 00    	mov    ebx,DWORD PTR ds:@obj3:npc_list                              ; fixup: num: 12579, src obj: 1, src ofs: 0x517d2, dst obj: 3, dst ofs: 0x25ab8
   517d6:	85 db                	test   ebx,ebx
   517d8:	74 19                	je     execute_command_branch_46
execute_command_branch_44:
   517da:	89 ca                	mov    edx,ecx
   517dc:	8b 43 18             	mov    eax,DWORD PTR [ebx+0x18]
   517df:	e8 4c 4c 02 00       	call   strcmp_
   517e4:	85 c0                	test   eax,eax
   517e6:	75 04                	jne    execute_command_branch_45
   517e8:	89 d8                	mov    eax,ebx
   517ea:	eb 09                	jmp    execute_command_branch_47
execute_command_branch_45:
   517ec:	8b 5b 38             	mov    ebx,DWORD PTR [ebx+0x38]
   517ef:	85 db                	test   ebx,ebx
   517f1:	75 e7                	jne    execute_command_branch_44
execute_command_branch_46:
   517f3:	31 c0                	xor    eax,eax
execute_command_branch_47:
   517f5:	85 c0                	test   eax,eax
   517f7:	0f 84 3d f7 ff ff    	je     execute_command_reference_1
   517fd:	c6 40 24 00          	mov    BYTE PTR [eax+0x24],0x0
   51801:	e9 34 f7 ff ff       	jmp    execute_command_reference_1
execute_command_reference_24:
   51806:	8b 45 6a             	mov    eax,DWORD PTR [ebp+0x6a]
   51809:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
   5180c:	8b 15 d4 5b 02 00    	mov    edx,DWORD PTR ds:@obj3:pc                                    ; fixup: num: 12578, src obj: 1, src ofs: 0x5180e, dst obj: 3, dst ofs: 0x25bd4
   51812:	e8 bd 51 02 00       	call   atoi_
   51817:	8b ba 84 11 00 00    	mov    edi,DWORD PTR [edx+0x1184]
   5181d:	01 c7                	add    edi,eax
   5181f:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 12577, src obj: 1, src ofs: 0x51820, dst obj: 3, dst ofs: 0x25bd4
   51824:	89 ba 84 11 00 00    	mov    DWORD PTR [edx+0x1184],edi
   5182a:	83 b8 84 11 00 00 1e 	cmp    DWORD PTR [eax+0x1184],0x1e
   51831:	7e 0a                	jle    execute_command_branch_48
   51833:	c7 80 84 11 00 00 1e 00 00 00 	mov    DWORD PTR [eax+0x1184],0x1e
execute_command_branch_48:
   5183d:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 12471, src obj: 1, src ofs: 0x5183e, dst obj: 3, dst ofs: 0x25bd4
   51842:	8b 80 84 11 00 00    	mov    eax,DWORD PTR [eax+0x1184]
   51848:	a3 b4 5b 02 00       	mov    ds:@obj3:pc_hit_points,eax                                   ; fixup: num: 12470, src obj: 1, src ofs: 0x51849, dst obj: 3, dst ofs: 0x25bb4
   5184d:	e9 e8 f6 ff ff       	jmp    execute_command_reference_1
execute_command_reference_25:                                                                       ; access size: BYTE
   51852:	8b 55 6a             	mov    edx,DWORD PTR [ebp+0x6a]
   51855:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 12469, src obj: 1, src ofs: 0x51856, dst obj: 3, dst ofs: 0x25a88
   5185a:	8b 52 08             	mov    edx,DWORD PTR [edx+0x8]
   5185d:	e8 8e a8 ff ff       	call   get_bitmap
   51862:	89 c3                	mov    ebx,eax
   51864:	85 c0                	test   eax,eax
   51866:	0f 84 74 00 00 00    	je     execute_command_branch_52
   5186c:	8b 45 6a             	mov    eax,DWORD PTR [ebp+0x6a]
   5186f:	ba 42 c8 00 00       	mov    edx,@obj3:scrpties_cpp_variable_181                          ; fixup: num: 12468, src obj: 1, src ofs: 0x51870, dst obj: 3, dst ofs: 0xc842
   51874:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
   51877:	e8 b4 4b 02 00       	call   strcmp_
   5187c:	85 c0                	test   eax,eax
   5187e:	75 0c                	jne    execute_command_branch_49
   51880:	c7 83 88 11 00 00 01 00 00 00 	mov    DWORD PTR [ebx+0x1188],0x1
   5188a:	eb 3e                	jmp    execute_command_branch_51
execute_command_branch_49:
   5188c:	8b 45 6a             	mov    eax,DWORD PTR [ebp+0x6a]
   5188f:	ba 49 c8 00 00       	mov    edx,@obj3:scrpties_cpp_variable_182                          ; fixup: num: 12583, src obj: 1, src ofs: 0x51890, dst obj: 3, dst ofs: 0xc849
   51894:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
   51897:	e8 94 4b 02 00       	call   strcmp_
   5189c:	85 c0                	test   eax,eax
   5189e:	75 0c                	jne    execute_command_branch_50
   518a0:	c7 83 88 11 00 00 02 00 00 00 	mov    DWORD PTR [ebx+0x1188],0x2
   518aa:	eb 1e                	jmp    execute_command_branch_51
execute_command_branch_50:
   518ac:	8b 45 6a             	mov    eax,DWORD PTR [ebp+0x6a]
   518af:	ba 4f c8 00 00       	mov    edx,@obj3:scrpties_cpp_variable_183                          ; fixup: num: 12582, src obj: 1, src ofs: 0x518b0, dst obj: 3, dst ofs: 0xc84f
   518b4:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
   518b7:	e8 74 4b 02 00       	call   strcmp_
   518bc:	85 c0                	test   eax,eax
   518be:	75 0a                	jne    execute_command_branch_51
   518c0:	c7 83 88 11 00 00 04 00 00 00 	mov    DWORD PTR [ebx+0x1188],0x4
execute_command_branch_51:
   518ca:	89 d8                	mov    eax,ebx
   518cc:	e8 3f 1f ff ff       	call   change2monster
   518d1:	c7 83 84 11 00 00 00 00 00 00 	mov    DWORD PTR [ebx+0x1184],0x0
   518db:	e9 5a f6 ff ff       	jmp    execute_command_reference_1
execute_command_branch_52:
   518e0:	8b 4d 6a             	mov    ecx,DWORD PTR [ebp+0x6a]
   518e3:	8b 49 08             	mov    ecx,DWORD PTR [ecx+0x8]
   518e6:	85 c9                	test   ecx,ecx
   518e8:	74 21                	je     execute_command_branch_55
   518ea:	8b 1d b8 5a 02 00    	mov    ebx,DWORD PTR ds:@obj3:npc_list                              ; fixup: num: 12477, src obj: 1, src ofs: 0x518ec, dst obj: 3, dst ofs: 0x25ab8
   518f0:	85 db                	test   ebx,ebx
   518f2:	74 15                	je     execute_command_branch_54
execute_command_branch_53:
   518f4:	89 ca                	mov    edx,ecx
   518f6:	8b 43 18             	mov    eax,DWORD PTR [ebx+0x18]
   518f9:	e8 32 4b 02 00       	call   strcmp_
   518fe:	85 c0                	test   eax,eax
   51900:	74 09                	je     execute_command_branch_55
   51902:	8b 5b 38             	mov    ebx,DWORD PTR [ebx+0x38]
   51905:	85 db                	test   ebx,ebx
   51907:	75 eb                	jne    execute_command_branch_53
execute_command_branch_54:
   51909:	31 db                	xor    ebx,ebx
execute_command_branch_55:
   5190b:	85 db                	test   ebx,ebx
   5190d:	0f 84 27 f6 ff ff    	je     execute_command_reference_1
   51913:	8b 15 c4 5a 02 00    	mov    edx,DWORD PTR ds:@obj3:current_room                          ; fixup: num: 12476, src obj: 1, src ofs: 0x51915, dst obj: 3, dst ofs: 0x25ac4
   51919:	8b 43 20             	mov    eax,DWORD PTR [ebx+0x20]
   5191c:	8b 52 2c             	mov    edx,DWORD PTR [edx+0x2c]
   5191f:	e8 0c 4b 02 00       	call   strcmp_
   51924:	85 c0                	test   eax,eax
   51926:	0f 84 0e f6 ff ff    	je     execute_command_reference_1
   5192c:	c6 43 24 01          	mov    BYTE PTR [ebx+0x24],0x1
   51930:	e9 05 f6 ff ff       	jmp    execute_command_reference_1
execute_command_reference_26:
   51935:	8b 55 6a             	mov    edx,DWORD PTR [ebp+0x6a]
   51938:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 12475, src obj: 1, src ofs: 0x51939, dst obj: 3, dst ofs: 0x25a88
   5193d:	8b 52 08             	mov    edx,DWORD PTR [edx+0x8]
   51940:	e8 ab a7 ff ff       	call   get_bitmap
   51945:	85 c0                	test   eax,eax
   51947:	0f 84 ed f5 ff ff    	je     execute_command_reference_1
   5194d:	e8 be 1e ff ff       	call   change2monster
   51952:	e9 e3 f5 ff ff       	jmp    execute_command_reference_1
execute_command_reference_27:
   51957:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 12474, src obj: 1, src ofs: 0x51958, dst obj: 3, dst ofs: 0x25a88
   5195c:	8b 15 d4 5b 02 00    	mov    edx,DWORD PTR ds:@obj3:pc                                    ; fixup: num: 12473, src obj: 1, src ofs: 0x5195e, dst obj: 3, dst ofs: 0x25bd4
   51962:	e8 89 ad ff ff       	call   remove_bitmap
   51967:	8b 45 6a             	mov    eax,DWORD PTR [ebp+0x6a]
   5196a:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
   5196d:	e8 62 50 02 00       	call   atoi_
   51972:	83 ec 04             	sub    esp,0x4
   51975:	89 45 6e             	mov    DWORD PTR [ebp+0x6e],eax
   51978:	db 45 6e             	fild   DWORD PTR [ebp+0x6e]
   5197b:	d9 1c 24             	fstp   DWORD PTR [esp]
   5197e:	8b 45 6a             	mov    eax,DWORD PTR [ebp+0x6a]
   51981:	8b 15 d4 5b 02 00    	mov    edx,DWORD PTR ds:@obj3:pc                                    ; fixup: num: 12472, src obj: 1, src ofs: 0x51983, dst obj: 3, dst ofs: 0x25bd4
   51987:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
   5198a:	8b 5a 40             	mov    ebx,DWORD PTR [edx+0x40]
   5198d:	e8 42 50 02 00       	call   atoi_
   51992:	2b 42 24             	sub    eax,DWORD PTR [edx+0x24]
   51995:	8b 0d d4 5b 02 00    	mov    ecx,DWORD PTR ds:@obj3:pc                                    ; fixup: num: 12487, src obj: 1, src ofs: 0x51997, dst obj: 3, dst ofs: 0x25bd4
   5199b:	89 c6                	mov    esi,eax
   5199d:	8b 41 2c             	mov    eax,DWORD PTR [ecx+0x2c]
   519a0:	89 c2                	mov    edx,eax
   519a2:	c1 fa 1f             	sar    edx,0x1f
   519a5:	2b c2                	sub    eax,edx
   519a7:	d1 f8                	sar    eax,1
   519a9:	89 f2                	mov    edx,esi
   519ab:	29 c2                	sub    edx,eax
   519ad:	89 c8                	mov    eax,ecx
   519af:	e8 3c 9d fe ff       	call   set_xyz
   519b4:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 12486, src obj: 1, src ofs: 0x519b5, dst obj: 3, dst ofs: 0x25a88
   519b9:	8b 15 d4 5b 02 00    	mov    edx,DWORD PTR ds:@obj3:pc                                    ; fixup: num: 12485, src obj: 1, src ofs: 0x519bb, dst obj: 3, dst ofs: 0x25bd4
   519bf:	e8 6c a7 ff ff       	call   insert_bitmap
   519c4:	8b 45 6a             	mov    eax,DWORD PTR [ebp+0x6a]
   519c7:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
   519ca:	e8 05 50 02 00       	call   atoi_
   519cf:	8b 15 d4 5b 02 00    	mov    edx,DWORD PTR ds:@obj3:pc                                    ; fixup: num: 12484, src obj: 1, src ofs: 0x519d1, dst obj: 3, dst ofs: 0x25bd4
   519d5:	50                   	push   eax
   519d6:	8b 7a 40             	mov    edi,DWORD PTR [edx+0x40]
   519d9:	8b 45 6a             	mov    eax,DWORD PTR [ebp+0x6a]
   519dc:	57                   	push   edi
   519dd:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
   519e0:	e8 ef 4f 02 00       	call   atoi_
   519e5:	2b 42 24             	sub    eax,DWORD PTR [edx+0x24]
   519e8:	8b 15 d4 5b 02 00    	mov    edx,DWORD PTR ds:@obj3:pc                                    ; fixup: num: 12483, src obj: 1, src ofs: 0x519ea, dst obj: 3, dst ofs: 0x25bd4
   519ee:	89 c3                	mov    ebx,eax
   519f0:	8b 42 2c             	mov    eax,DWORD PTR [edx+0x2c]
   519f3:	89 c2                	mov    edx,eax
   519f5:	c1 fa 1f             	sar    edx,0x1f
   519f8:	2b c2                	sub    eax,edx
   519fa:	d1 f8                	sar    eax,1
   519fc:	29 c3                	sub    ebx,eax
   519fe:	53                   	push   ebx
   519ff:	b8 54 c8 00 00       	mov    eax,@obj3:scrpties_cpp_variable_184                          ; fixup: num: 12482, src obj: 1, src ofs: 0x51a00, dst obj: 3, dst ofs: 0xc854
   51a04:	50                   	push   eax
   51a05:	b8 fc 37 02 00       	mov    eax,@obj3:log_buffer                                         ; fixup: num: 12481, src obj: 1, src ofs: 0x51a06, dst obj: 3, dst ofs: 0x237fc
   51a0a:	50                   	push   eax
   51a0b:	e8 d1 f1 01 00       	call   sprintf_
   51a10:	83 c4 14             	add    esp,0x14
   51a13:	e9 22 f5 ff ff       	jmp    execute_command_reference_1
execute_command_reference_28:
   51a18:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 12480, src obj: 1, src ofs: 0x51a19, dst obj: 3, dst ofs: 0x25a88
   51a1d:	8b 15 d4 5b 02 00    	mov    edx,DWORD PTR ds:@obj3:pc                                    ; fixup: num: 12479, src obj: 1, src ofs: 0x51a1f, dst obj: 3, dst ofs: 0x25bd4
   51a23:	e8 c8 ac ff ff       	call   remove_bitmap
   51a28:	8b 15 d4 5b 02 00    	mov    edx,DWORD PTR ds:@obj3:pc                                    ; fixup: num: 12478, src obj: 1, src ofs: 0x51a2a, dst obj: 3, dst ofs: 0x25bd4
   51a2e:	ff 72 1c             	push   DWORD PTR [edx+0x1c]
   51a31:	8b 45 6a             	mov    eax,DWORD PTR [ebp+0x6a]
   51a34:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
   51a37:	e8 98 4f 02 00       	call   atoi_
   51a3c:	8b 5a 28             	mov    ebx,DWORD PTR [edx+0x28]
   51a3f:	29 d8                	sub    eax,ebx
   51a41:	89 c3                	mov    ebx,eax
   51a43:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 12497, src obj: 1, src ofs: 0x51a44, dst obj: 3, dst ofs: 0x25bd4
   51a48:	8b 48 30             	mov    ecx,DWORD PTR [eax+0x30]
   51a4b:	8b 50 3c             	mov    edx,DWORD PTR [eax+0x3c]
   51a4e:	29 cb                	sub    ebx,ecx
   51a50:	e8 9b 9c fe ff       	call   set_xyz
   51a55:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 12496, src obj: 1, src ofs: 0x51a56, dst obj: 3, dst ofs: 0x25a88
   51a5a:	8b 15 d4 5b 02 00    	mov    edx,DWORD PTR ds:@obj3:pc                                    ; fixup: num: 12495, src obj: 1, src ofs: 0x51a5c, dst obj: 3, dst ofs: 0x25bd4
   51a60:	e8 cb a6 ff ff       	call   insert_bitmap
   51a65:	e9 d0 f4 ff ff       	jmp    execute_command_reference_1
execute_command_reference_29:                                                                       ; access size: BYTE
   51a6a:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 12494, src obj: 1, src ofs: 0x51a6b, dst obj: 3, dst ofs: 0x25a88
   51a6f:	8b 15 d4 5b 02 00    	mov    edx,DWORD PTR ds:@obj3:pc                                    ; fixup: num: 12493, src obj: 1, src ofs: 0x51a71, dst obj: 3, dst ofs: 0x25bd4
   51a75:	e8 76 ac ff ff       	call   remove_bitmap
   51a7a:	8b 45 6a             	mov    eax,DWORD PTR [ebp+0x6a]
   51a7d:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
   51a80:	e8 4f 4f 02 00       	call   atoi_
   51a85:	83 ec 04             	sub    esp,0x4
   51a88:	89 45 6e             	mov    DWORD PTR [ebp+0x6e],eax
   51a8b:	db 45 6e             	fild   DWORD PTR [ebp+0x6e]
   51a8e:	d9 1c 24             	fstp   DWORD PTR [esp]
   51a91:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 12492, src obj: 1, src ofs: 0x51a92, dst obj: 3, dst ofs: 0x25bd4
   51a96:	8b 58 40             	mov    ebx,DWORD PTR [eax+0x40]
   51a99:	8b 50 3c             	mov    edx,DWORD PTR [eax+0x3c]
   51a9c:	e8 4f 9c fe ff       	call   set_xyz
   51aa1:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 12491, src obj: 1, src ofs: 0x51aa2, dst obj: 3, dst ofs: 0x25a88
   51aa6:	8b 15 d4 5b 02 00    	mov    edx,DWORD PTR ds:@obj3:pc                                    ; fixup: num: 12490, src obj: 1, src ofs: 0x51aa8, dst obj: 3, dst ofs: 0x25bd4
   51aac:	e8 7f a6 ff ff       	call   insert_bitmap
   51ab1:	e9 84 f4 ff ff       	jmp    execute_command_reference_1
execute_command_reference_30:
   51ab6:	8b 45 6a             	mov    eax,DWORD PTR [ebp+0x6a]
   51ab9:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
   51abc:	8b 15 d4 5b 02 00    	mov    edx,DWORD PTR ds:@obj3:pc                                    ; fixup: num: 12489, src obj: 1, src ofs: 0x51abe, dst obj: 3, dst ofs: 0x25bd4
   51ac2:	e8 0d 4f 02 00       	call   atoi_
   51ac7:	8b 5a 3c             	mov    ebx,DWORD PTR [edx+0x3c]
   51aca:	8b 15 d4 5b 02 00    	mov    edx,DWORD PTR ds:@obj3:pc                                    ; fixup: num: 12488, src obj: 1, src ofs: 0x51acc, dst obj: 3, dst ofs: 0x25bd4
   51ad0:	8b 8a 24 11 00 00    	mov    ecx,DWORD PTR [edx+0x1124]
   51ad6:	41                   	inc    ecx
   51ad7:	01 c3                	add    ebx,eax
   51ad9:	89 8a 24 11 00 00    	mov    DWORD PTR [edx+0x1124],ecx
   51adf:	6b c1 0c             	imul   eax,ecx,0xc
   51ae2:	89 9c 02 ac 10 00 00 	mov    DWORD PTR [edx+eax*1+0x10ac],ebx
   51ae9:	8b 45 6a             	mov    eax,DWORD PTR [ebp+0x6a]
   51aec:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
   51aef:	e8 e0 4e 02 00       	call   atoi_
   51af4:	89 45 6e             	mov    DWORD PTR [ebp+0x6e],eax
   51af7:	db 45 6e             	fild   DWORD PTR [ebp+0x6e]
   51afa:	d8 42 1c             	fadd   DWORD PTR [edx+0x1c]
   51afd:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 12504, src obj: 1, src ofs: 0x51afe, dst obj: 3, dst ofs: 0x25bd4
   51b02:	6b 90 24 11 00 00 0c 	imul   edx,DWORD PTR [eax+0x1124],0xc
   51b09:	d9 9c 02 b4 10 00 00 	fstp   DWORD PTR [edx+eax*1+0x10b4]
   51b10:	e9 25 f4 ff ff       	jmp    execute_command_reference_1
execute_command_reference_31:
   51b15:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 12503, src obj: 1, src ofs: 0x51b16, dst obj: 3, dst ofs: 0x25bd4
   51b1a:	c6 80 b4 11 00 00 01 	mov    BYTE PTR [eax+0x11b4],0x1
   51b21:	e9 14 f4 ff ff       	jmp    execute_command_reference_1
execute_command_reference_32:
   51b26:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 12502, src obj: 1, src ofs: 0x51b27, dst obj: 3, dst ofs: 0x25bd4
   51b2b:	c6 80 b4 11 00 00 00 	mov    BYTE PTR [eax+0x11b4],0x0
   51b32:	e9 03 f4 ff ff       	jmp    execute_command_reference_1
execute_command_reference_33:
   51b37:	8b 45 6a             	mov    eax,DWORD PTR [ebp+0x6a]
   51b3a:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
   51b3d:	e8 92 4e 02 00       	call   atoi_
   51b42:	8b 1d d4 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:pc                                    ; fixup: num: 12501, src obj: 1, src ofs: 0x51b44, dst obj: 3, dst ofs: 0x25bd4
   51b48:	89 c2                	mov    edx,eax
   51b4a:	89 d8                	mov    eax,ebx
   51b4c:	e8 bf 40 ff ff       	call   change_weapon
   51b51:	e9 e4 f3 ff ff       	jmp    execute_command_reference_1
execute_command_reference_34:
   51b56:	8b 45 6a             	mov    eax,DWORD PTR [ebp+0x6a]
   51b59:	ba 6b c8 00 00       	mov    edx,@obj3:scrpties_cpp_variable_185                          ; fixup: num: 12500, src obj: 1, src ofs: 0x51b5a, dst obj: 3, dst ofs: 0xc86b
   51b5e:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
   51b61:	e8 ca 48 02 00       	call   strcmp_
   51b66:	85 c0                	test   eax,eax
   51b68:	75 11                	jne    execute_command_branch_56
   51b6a:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 12499, src obj: 1, src ofs: 0x51b6b, dst obj: 3, dst ofs: 0x25bd4
   51b6f:	c7 80 88 11 00 00 01 00 00 00 	mov    DWORD PTR [eax+0x1188],0x1
   51b79:	eb 48                	jmp    execute_command_branch_58
execute_command_branch_56:
   51b7b:	8b 45 6a             	mov    eax,DWORD PTR [ebp+0x6a]
   51b7e:	ba 72 c8 00 00       	mov    edx,@obj3:scrpties_cpp_variable_186                          ; fixup: num: 12498, src obj: 1, src ofs: 0x51b7f, dst obj: 3, dst ofs: 0xc872
   51b83:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
   51b86:	e8 a5 48 02 00       	call   strcmp_
   51b8b:	85 c0                	test   eax,eax
   51b8d:	75 11                	jne    execute_command_branch_57
   51b8f:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 12512, src obj: 1, src ofs: 0x51b90, dst obj: 3, dst ofs: 0x25bd4
   51b94:	c7 80 88 11 00 00 02 00 00 00 	mov    DWORD PTR [eax+0x1188],0x2
   51b9e:	eb 23                	jmp    execute_command_branch_58
execute_command_branch_57:
   51ba0:	8b 45 6a             	mov    eax,DWORD PTR [ebp+0x6a]
   51ba3:	ba 78 c8 00 00       	mov    edx,@obj3:scrpties_cpp_variable_187                          ; fixup: num: 12511, src obj: 1, src ofs: 0x51ba4, dst obj: 3, dst ofs: 0xc878
   51ba8:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
   51bab:	e8 80 48 02 00       	call   strcmp_
   51bb0:	85 c0                	test   eax,eax
   51bb2:	75 0f                	jne    execute_command_branch_58
   51bb4:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 12510, src obj: 1, src ofs: 0x51bb5, dst obj: 3, dst ofs: 0x25bd4
   51bb9:	c7 80 88 11 00 00 04 00 00 00 	mov    DWORD PTR [eax+0x1188],0x4
execute_command_branch_58:
   51bc3:	31 f6                	xor    esi,esi
   51bc5:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 12509, src obj: 1, src ofs: 0x51bc6, dst obj: 3, dst ofs: 0x25bd4
   51bca:	89 35 b4 5b 02 00    	mov    DWORD PTR ds:@obj3:pc_hit_points,esi                         ; fixup: num: 12508, src obj: 1, src ofs: 0x51bcc, dst obj: 3, dst ofs: 0x25bb4
   51bd0:	c7 80 84 11 00 00 00 00 00 00 	mov    DWORD PTR [eax+0x1184],0x0
   51bda:	e9 5b f3 ff ff       	jmp    execute_command_reference_1
execute_command_reference_35:
   51bdf:	8b 55 6a             	mov    edx,DWORD PTR [ebp+0x6a]
   51be2:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 12507, src obj: 1, src ofs: 0x51be3, dst obj: 3, dst ofs: 0x25a88
   51be7:	8b 52 08             	mov    edx,DWORD PTR [edx+0x8]
   51bea:	e8 01 a5 ff ff       	call   get_bitmap
   51bef:	89 c2                	mov    edx,eax
   51bf1:	85 c0                	test   eax,eax
   51bf3:	0f 84 41 f3 ff ff    	je     execute_command_reference_1
   51bf9:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 12506, src obj: 1, src ofs: 0x51bfa, dst obj: 3, dst ofs: 0x25bd4
   51bfe:	8b 58 1c             	mov    ebx,DWORD PTR [eax+0x1c]
   51c01:	89 5a 1c             	mov    DWORD PTR [edx+0x1c],ebx
   51c04:	e9 31 f3 ff ff       	jmp    execute_command_reference_1
execute_command_reference_36:
   51c09:	8b 4d 6a             	mov    ecx,DWORD PTR [ebp+0x6a]
   51c0c:	8b 49 08             	mov    ecx,DWORD PTR [ecx+0x8]
   51c0f:	85 c9                	test   ecx,ecx
   51c11:	74 26                	je     execute_command_branch_61
   51c13:	8b 1d b4 5a 02 00    	mov    ebx,DWORD PTR ds:@obj3:monster_list                          ; fixup: num: 12505, src obj: 1, src ofs: 0x51c15, dst obj: 3, dst ofs: 0x25ab4
   51c19:	85 db                	test   ebx,ebx
   51c1b:	74 1c                	je     execute_command_branch_61
execute_command_branch_59:
   51c1d:	89 ca                	mov    edx,ecx
   51c1f:	8b 43 34             	mov    eax,DWORD PTR [ebx+0x34]
   51c22:	e8 09 48 02 00       	call   strcmp_
   51c27:	85 c0                	test   eax,eax
   51c29:	75 04                	jne    execute_command_branch_60
   51c2b:	89 d8                	mov    eax,ebx
   51c2d:	eb 0c                	jmp    execute_command_branch_62
execute_command_branch_60:
   51c2f:	8b 9b 90 00 00 00    	mov    ebx,DWORD PTR [ebx+0x90]
   51c35:	85 db                	test   ebx,ebx
   51c37:	75 e4                	jne    execute_command_branch_59
execute_command_branch_61:
   51c39:	31 c0                	xor    eax,eax
execute_command_branch_62:
   51c3b:	89 c7                	mov    edi,eax
   51c3d:	85 c0                	test   eax,eax
   51c3f:	74 08                	je     execute_command_branch_63
   51c41:	8b 50 34             	mov    edx,DWORD PTR [eax+0x34]
   51c44:	e9 7c 00 00 00       	jmp    execute_command_branch_73
execute_command_branch_63:
   51c49:	8b 4d 6a             	mov    ecx,DWORD PTR [ebp+0x6a]
   51c4c:	8b 49 08             	mov    ecx,DWORD PTR [ecx+0x8]
   51c4f:	85 c9                	test   ecx,ecx
   51c51:	74 25                	je     execute_command_branch_67
   51c53:	8b 1d b8 5a 02 00    	mov    ebx,DWORD PTR ds:@obj3:npc_list                              ; fixup: num: 12516, src obj: 1, src ofs: 0x51c55, dst obj: 3, dst ofs: 0x25ab8
   51c59:	85 db                	test   ebx,ebx
   51c5b:	74 19                	je     execute_command_branch_66
execute_command_branch_64:
   51c5d:	89 ca                	mov    edx,ecx
   51c5f:	8b 43 18             	mov    eax,DWORD PTR [ebx+0x18]
   51c62:	e8 c9 47 02 00       	call   strcmp_
   51c67:	85 c0                	test   eax,eax
   51c69:	75 04                	jne    execute_command_branch_65
   51c6b:	89 d8                	mov    eax,ebx
   51c6d:	eb 09                	jmp    execute_command_branch_67
execute_command_branch_65:
   51c6f:	8b 5b 38             	mov    ebx,DWORD PTR [ebx+0x38]
   51c72:	85 db                	test   ebx,ebx
   51c74:	75 e7                	jne    execute_command_branch_64
execute_command_branch_66:
   51c76:	31 c0                	xor    eax,eax
execute_command_branch_67:
   51c78:	89 c7                	mov    edi,eax
   51c7a:	85 c0                	test   eax,eax
   51c7c:	74 05                	je     execute_command_branch_68
   51c7e:	8b 50 18             	mov    edx,DWORD PTR [eax+0x18]
   51c81:	eb 42                	jmp    execute_command_branch_73
execute_command_branch_68:
   51c83:	8b 4d 6a             	mov    ecx,DWORD PTR [ebp+0x6a]
   51c86:	8b 49 08             	mov    ecx,DWORD PTR [ecx+0x8]
   51c89:	85 c9                	test   ecx,ecx
   51c8b:	74 2b                	je     execute_command_branch_72
   51c8d:	8b 1d bc 5a 02 00    	mov    ebx,DWORD PTR ds:@obj3:object_list                           ; fixup: num: 12515, src obj: 1, src ofs: 0x51c8f, dst obj: 3, dst ofs: 0x25abc
   51c93:	85 db                	test   ebx,ebx
   51c95:	74 1f                	je     execute_command_branch_71
execute_command_branch_69:
   51c97:	8b 7b 30             	mov    edi,DWORD PTR [ebx+0x30]
   51c9a:	85 ff                	test   edi,edi
   51c9c:	74 11                	je     execute_command_branch_70
   51c9e:	89 f8                	mov    eax,edi
   51ca0:	89 ca                	mov    edx,ecx
   51ca2:	e8 89 47 02 00       	call   strcmp_
   51ca7:	85 c0                	test   eax,eax
   51ca9:	75 04                	jne    execute_command_branch_70
   51cab:	89 d8                	mov    eax,ebx
   51cad:	eb 09                	jmp    execute_command_branch_72
execute_command_branch_70:
   51caf:	8b 5b 54             	mov    ebx,DWORD PTR [ebx+0x54]
   51cb2:	85 db                	test   ebx,ebx
   51cb4:	75 e1                	jne    execute_command_branch_69
execute_command_branch_71:
   51cb6:	31 c0                	xor    eax,eax
execute_command_branch_72:
   51cb8:	89 c7                	mov    edi,eax
   51cba:	85 c0                	test   eax,eax
   51cbc:	0f 84 78 f2 ff ff    	je     execute_command_reference_1
   51cc2:	8b 50 30             	mov    edx,DWORD PTR [eax+0x30]
execute_command_branch_73:
   51cc5:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 12514, src obj: 1, src ofs: 0x51cc6, dst obj: 3, dst ofs: 0x25a88
   51cca:	e8 21 a4 ff ff       	call   get_bitmap
   51ccf:	89 c6                	mov    esi,eax
   51cd1:	8b 4d 6a             	mov    ecx,DWORD PTR [ebp+0x6a]
   51cd4:	8b 49 0c             	mov    ecx,DWORD PTR [ecx+0xc]
   51cd7:	85 c9                	test   ecx,ecx
   51cd9:	74 26                	je     execute_command_branch_76
   51cdb:	8b 1d b4 5a 02 00    	mov    ebx,DWORD PTR ds:@obj3:monster_list                          ; fixup: num: 12513, src obj: 1, src ofs: 0x51cdd, dst obj: 3, dst ofs: 0x25ab4
   51ce1:	85 db                	test   ebx,ebx
   51ce3:	74 1c                	je     execute_command_branch_76
execute_command_branch_74:
   51ce5:	89 ca                	mov    edx,ecx
   51ce7:	8b 43 34             	mov    eax,DWORD PTR [ebx+0x34]
   51cea:	e8 41 47 02 00       	call   strcmp_
   51cef:	85 c0                	test   eax,eax
   51cf1:	75 04                	jne    execute_command_branch_75
   51cf3:	89 d8                	mov    eax,ebx
   51cf5:	eb 0c                	jmp    execute_command_branch_77
execute_command_branch_75:
   51cf7:	8b 9b 90 00 00 00    	mov    ebx,DWORD PTR [ebx+0x90]
   51cfd:	85 db                	test   ebx,ebx
   51cff:	75 e4                	jne    execute_command_branch_74
execute_command_branch_76:
   51d01:	31 c0                	xor    eax,eax
execute_command_branch_77:
   51d03:	89 c1                	mov    ecx,eax
   51d05:	85 c0                	test   eax,eax
   51d07:	0f 85 7d 00 00 00    	jne    execute_command_branch_87
   51d0d:	8b 4d 6a             	mov    ecx,DWORD PTR [ebp+0x6a]
   51d10:	8b 49 0c             	mov    ecx,DWORD PTR [ecx+0xc]
   51d13:	85 c9                	test   ecx,ecx
   51d15:	74 25                	je     execute_command_branch_81
   51d17:	8b 1d b8 5a 02 00    	mov    ebx,DWORD PTR ds:@obj3:npc_list                              ; fixup: num: 12518, src obj: 1, src ofs: 0x51d19, dst obj: 3, dst ofs: 0x25ab8
   51d1d:	85 db                	test   ebx,ebx
   51d1f:	74 19                	je     execute_command_branch_80
execute_command_branch_78:
   51d21:	89 ca                	mov    edx,ecx
   51d23:	8b 43 18             	mov    eax,DWORD PTR [ebx+0x18]
   51d26:	e8 05 47 02 00       	call   strcmp_
   51d2b:	85 c0                	test   eax,eax
   51d2d:	75 04                	jne    execute_command_branch_79
   51d2f:	89 d8                	mov    eax,ebx
   51d31:	eb 09                	jmp    execute_command_branch_81
execute_command_branch_79:
   51d33:	8b 5b 38             	mov    ebx,DWORD PTR [ebx+0x38]
   51d36:	85 db                	test   ebx,ebx
   51d38:	75 e7                	jne    execute_command_branch_78
execute_command_branch_80:
   51d3a:	31 c0                	xor    eax,eax
execute_command_branch_81:
   51d3c:	89 c1                	mov    ecx,eax
   51d3e:	85 c0                	test   eax,eax
   51d40:	75 41                	jne    execute_command_branch_86
   51d42:	8b 4d 6a             	mov    ecx,DWORD PTR [ebp+0x6a]
   51d45:	8b 49 0c             	mov    ecx,DWORD PTR [ecx+0xc]
   51d48:	85 c9                	test   ecx,ecx
   51d4a:	74 29                	je     execute_command_branch_85
   51d4c:	8b 1d bc 5a 02 00    	mov    ebx,DWORD PTR ds:@obj3:object_list                           ; fixup: num: 12517, src obj: 1, src ofs: 0x51d4e, dst obj: 3, dst ofs: 0x25abc
   51d52:	85 db                	test   ebx,ebx
   51d54:	74 1d                	je     execute_command_branch_84
execute_command_branch_82:
   51d56:	8b 43 30             	mov    eax,DWORD PTR [ebx+0x30]
   51d59:	85 c0                	test   eax,eax
   51d5b:	74 0f                	je     execute_command_branch_83
   51d5d:	89 ca                	mov    edx,ecx
   51d5f:	e8 cc 46 02 00       	call   strcmp_
   51d64:	85 c0                	test   eax,eax
   51d66:	75 04                	jne    execute_command_branch_83
   51d68:	89 d8                	mov    eax,ebx
   51d6a:	eb 09                	jmp    execute_command_branch_85
execute_command_branch_83:
   51d6c:	8b 5b 54             	mov    ebx,DWORD PTR [ebx+0x54]
   51d6f:	85 db                	test   ebx,ebx
   51d71:	75 e3                	jne    execute_command_branch_82
execute_command_branch_84:
   51d73:	31 c0                	xor    eax,eax
execute_command_branch_85:
   51d75:	89 c1                	mov    ecx,eax
   51d77:	85 c0                	test   eax,eax
   51d79:	0f 84 bb f1 ff ff    	je     execute_command_reference_1
   51d7f:	31 db                	xor    ebx,ebx
   51d81:	eb 0c                	jmp    execute_command_branch_88
execute_command_branch_86:
   51d83:	bb 04 00 00 00       	mov    ebx,0x4
   51d88:	eb 05                	jmp    execute_command_branch_88
execute_command_branch_87:
   51d8a:	bb 06 00 00 00       	mov    ebx,0x6
execute_command_branch_88:
   51d8f:	85 f6                	test   esi,esi
   51d91:	0f 84 93 00 00 00    	je     execute_command_branch_92
   51d97:	d9 46 1c             	fld    DWORD PTR [esi+0x1c]
   51d9a:	8b 46 3c             	mov    eax,DWORD PTR [esi+0x3c]
   51d9d:	03 46 24             	add    eax,DWORD PTR [esi+0x24]
   51da0:	e8 a3 3f 02 00       	call   __CHP
   51da5:	89 45 72             	mov    DWORD PTR [ebp+0x72],eax
   51da8:	8b 56 28             	mov    edx,DWORD PTR [esi+0x28]
   51dab:	8b 46 40             	mov    eax,DWORD PTR [esi+0x40]
   51dae:	01 d0                	add    eax,edx
   51db0:	89 45 76             	mov    DWORD PTR [ebp+0x76],eax
   51db3:	8b 46 38             	mov    eax,DWORD PTR [esi+0x38]
   51db6:	db 5d 7a             	fistp  DWORD PTR [ebp+0x7a]
   51db9:	83 f8 06             	cmp    eax,0x6
   51dbc:	75 23                	jne    execute_command_branch_89
   51dbe:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 12521, src obj: 1, src ofs: 0x51dbf, dst obj: 3, dst ofs: 0x25a88
   51dc3:	89 f2                	mov    edx,esi
   51dc5:	c6 87 81 00 00 00 00 	mov    BYTE PTR [edi+0x81],0x0
   51dcc:	e8 1f a9 ff ff       	call   remove_bitmap
   51dd1:	89 f0                	mov    eax,esi
   51dd3:	31 d2                	xor    edx,edx
   51dd5:	e8 e6 23 ff ff       	call   W?$dt:MONSTER$n()_
   51dda:	e8 99 02 02 00       	call   W?$dln(pnv)v
   51ddf:	eb 47                	jmp    execute_command_branch_91
execute_command_branch_89:
   51de1:	83 f8 04             	cmp    eax,0x4
   51de4:	75 20                	jne    execute_command_branch_90
   51de6:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 12520, src obj: 1, src ofs: 0x51de7, dst obj: 3, dst ofs: 0x25a88
   51deb:	89 f2                	mov    edx,esi
   51ded:	c6 47 26 00          	mov    BYTE PTR [edi+0x26],0x0
   51df1:	e8 fa a8 ff ff       	call   remove_bitmap
   51df6:	89 f0                	mov    eax,esi
   51df8:	31 d2                	xor    edx,edx
   51dfa:	e8 31 32 ff ff       	call   W?$dt:NON_PLAYER_CHARACTER$n()_
   51dff:	e8 74 02 02 00       	call   W?$dln(pnv)v
   51e04:	eb 22                	jmp    execute_command_branch_91
execute_command_branch_90:
   51e06:	85 c0                	test   eax,eax
   51e08:	75 20                	jne    execute_command_branch_92
   51e0a:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 12519, src obj: 1, src ofs: 0x51e0b, dst obj: 3, dst ofs: 0x25a88
   51e0f:	89 f2                	mov    edx,esi
   51e11:	c6 47 4d 00          	mov    BYTE PTR [edi+0x4d],0x0
   51e15:	e8 d6 a8 ff ff       	call   remove_bitmap
   51e1a:	89 f0                	mov    eax,esi
   51e1c:	31 d2                	xor    edx,edx
   51e1e:	e8 7d 95 fe ff       	call   W?$dt:BTMAP$n()_
   51e23:	e8 50 02 02 00       	call   W?$dln(pnv)v
execute_command_branch_91:
   51e28:	31 f6                	xor    esi,esi
execute_command_branch_92:
   51e2a:	83 fb 06             	cmp    ebx,0x6
   51e2d:	75 40                	jne    execute_command_branch_94
   51e2f:	8b 45 72             	mov    eax,DWORD PTR [ebp+0x72]
   51e32:	89 01                	mov    DWORD PTR [ecx],eax
   51e34:	8b 45 76             	mov    eax,DWORD PTR [ebp+0x76]
   51e37:	89 41 04             	mov    DWORD PTR [ecx+0x4],eax
   51e3a:	8b 45 7a             	mov    eax,DWORD PTR [ebp+0x7a]
   51e3d:	89 41 08             	mov    DWORD PTR [ecx+0x8],eax
   51e40:	b8 bc 11 00 00       	mov    eax,0x11bc
   51e45:	c6 81 81 00 00 00 01 	mov    BYTE PTR [ecx+0x81],0x1
   51e4c:	e8 c7 00 02 00       	call   W?$nwn(ui)pnv
   51e51:	85 c0                	test   eax,eax
   51e53:	74 0c                	je     execute_command_branch_93
   51e55:	bb 93 14 07 00       	mov    ebx,@obj1:_nmalloc_                                          ; aliases: _nmalloc_, malloc_; fixup: num: 12459, src obj: 1, src ofs: 0x51e56, dst obj: 1, dst ofs: 0x71493
   51e5a:	89 ca                	mov    edx,ecx
   51e5c:	e8 af 1b ff ff       	call   W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)_
execute_command_branch_93:
   51e61:	8b 79 34             	mov    edi,DWORD PTR [ecx+0x34]
   51e64:	57                   	push   edi
   51e65:	68 7d c8 00 00       	push   @obj3:scrpties_cpp_variable_188                              ; fixup: num: 12458, src obj: 1, src ofs: 0x51e66, dst obj: 3, dst ofs: 0xc87d
   51e6a:	e9 77 00 00 00       	jmp    execute_command_branch_98
execute_command_branch_94:
   51e6f:	83 fb 04             	cmp    ebx,0x4
   51e72:	75 3a                	jne    execute_command_branch_96
   51e74:	8b 45 72             	mov    eax,DWORD PTR [ebp+0x72]
   51e77:	89 01                	mov    DWORD PTR [ecx],eax
   51e79:	8b 45 76             	mov    eax,DWORD PTR [ebp+0x76]
   51e7c:	89 41 04             	mov    DWORD PTR [ecx+0x4],eax
   51e7f:	8b 45 7a             	mov    eax,DWORD PTR [ebp+0x7a]
   51e82:	89 41 08             	mov    DWORD PTR [ecx+0x8],eax
   51e85:	b8 bc 11 00 00       	mov    eax,0x11bc
   51e8a:	c6 41 26 01          	mov    BYTE PTR [ecx+0x26],0x1
   51e8e:	e8 85 00 02 00       	call   W?$nwn(ui)pnv
   51e93:	85 c0                	test   eax,eax
   51e95:	74 0c                	je     execute_command_branch_95
   51e97:	bb 93 14 07 00       	mov    ebx,@obj1:_nmalloc_                                          ; aliases: _nmalloc_, malloc_; fixup: num: 12525, src obj: 1, src ofs: 0x51e98, dst obj: 1, dst ofs: 0x71493
   51e9c:	89 ca                	mov    edx,ecx
   51e9e:	e8 5d ae fe ff       	call   W?$ct:NON_PLAYER_CHARACTER$n(pn$_npc_type$$pn(ui)pnv)_
execute_command_branch_95:
   51ea3:	8b 59 18             	mov    ebx,DWORD PTR [ecx+0x18]
   51ea6:	53                   	push   ebx
   51ea7:	68 a0 c8 00 00       	push   @obj3:scrpties_cpp_variable_189                              ; fixup: num: 12524, src obj: 1, src ofs: 0x51ea8, dst obj: 3, dst ofs: 0xc8a0
   51eac:	eb 38                	jmp    execute_command_branch_98
execute_command_branch_96:
   51eae:	85 db                	test   ebx,ebx
   51eb0:	75 43                	jne    execute_command_branch_99
   51eb2:	8b 45 72             	mov    eax,DWORD PTR [ebp+0x72]
   51eb5:	89 41 0c             	mov    DWORD PTR [ecx+0xc],eax
   51eb8:	8b 45 76             	mov    eax,DWORD PTR [ebp+0x76]
   51ebb:	89 41 10             	mov    DWORD PTR [ecx+0x10],eax
   51ebe:	8b 45 7a             	mov    eax,DWORD PTR [ebp+0x7a]
   51ec1:	89 41 14             	mov    DWORD PTR [ecx+0x14],eax
   51ec4:	b8 4c 00 00 00       	mov    eax,0x4c
   51ec9:	c6 41 4d 01          	mov    BYTE PTR [ecx+0x4d],0x1
   51ecd:	e8 46 00 02 00       	call   W?$nwn(ui)pnv
   51ed2:	85 c0                	test   eax,eax
   51ed4:	74 07                	je     execute_command_branch_97
   51ed6:	89 ca                	mov    edx,ecx
   51ed8:	e8 03 90 fe ff       	call   W?$ct:BTMAP$n(pn$_object_type$$)_
execute_command_branch_97:
   51edd:	8b 51 30             	mov    edx,DWORD PTR [ecx+0x30]
   51ee0:	52                   	push   edx
   51ee1:	68 c3 c8 00 00       	push   @obj3:scrpties_cpp_variable_190                              ; fixup: num: 12523, src obj: 1, src ofs: 0x51ee2, dst obj: 3, dst ofs: 0xc8c3
execute_command_branch_98:
   51ee6:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 12522, src obj: 1, src ofs: 0x51ee7, dst obj: 3, dst ofs: 0x237fc
   51eeb:	89 c6                	mov    esi,eax
   51eed:	e8 ef ec 01 00       	call   sprintf_
   51ef2:	83 c4 0c             	add    esp,0xc
execute_command_branch_99:
   51ef5:	85 f6                	test   esi,esi
   51ef7:	74 11                	je     execute_command_branch_100
   51ef9:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 12465, src obj: 1, src ofs: 0x51efa, dst obj: 3, dst ofs: 0x25a88
   51efe:	89 f2                	mov    edx,esi
   51f00:	e8 2b a2 ff ff       	call   insert_bitmap
   51f05:	e9 30 f0 ff ff       	jmp    execute_command_reference_1
execute_command_branch_100:
   51f0a:	bb fc 37 02 00       	mov    ebx,@obj3:log_buffer                                         ; fixup: num: 12464, src obj: 1, src ofs: 0x51f0b, dst obj: 3, dst ofs: 0x237fc
   51f0f:	ba c0 08 00 00       	mov    edx,0x8c0
   51f14:	31 c0                	xor    eax,eax
   51f16:	e8 15 61 fe ff       	call   _error_report
   51f1b:	e9 1a f0 ff ff       	jmp    execute_command_reference_1
execute_command_reference_37:
   51f20:	8b 4d 6a             	mov    ecx,DWORD PTR [ebp+0x6a]
   51f23:	8b 49 08             	mov    ecx,DWORD PTR [ecx+0x8]
   51f26:	85 c9                	test   ecx,ecx
   51f28:	74 1f                	je     execute_command_branch_102
   51f2a:	8b 1d 90 5a 02 00    	mov    ebx,DWORD PTR ds:@obj3:anim_list                             ; fixup: num: 12463, src obj: 1, src ofs: 0x51f2c, dst obj: 3, dst ofs: 0x25a90
   51f30:	85 db                	test   ebx,ebx
   51f32:	74 15                	je     execute_command_branch_102
execute_command_branch_101:
   51f34:	89 ca                	mov    edx,ecx
   51f36:	8b 43 18             	mov    eax,DWORD PTR [ebx+0x18]
   51f39:	e8 f2 44 02 00       	call   strcmp_
   51f3e:	85 c0                	test   eax,eax
   51f40:	74 09                	je     execute_command_branch_103
   51f42:	8b 5b 28             	mov    ebx,DWORD PTR [ebx+0x28]
   51f45:	85 db                	test   ebx,ebx
   51f47:	75 eb                	jne    execute_command_branch_101
execute_command_branch_102:
   51f49:	31 db                	xor    ebx,ebx
execute_command_branch_103:
   51f4b:	89 d9                	mov    ecx,ebx
   51f4d:	85 db                	test   ebx,ebx
   51f4f:	0f 84 e5 ef ff ff    	je     execute_command_reference_1
   51f55:	8a 43 1d             	mov    al,BYTE PTR [ebx+0x1d]
   51f58:	88 45 7e             	mov    BYTE PTR [ebp+0x7e],al
   51f5b:	8b 45 6a             	mov    eax,DWORD PTR [ebp+0x6a]
   51f5e:	ba e6 c8 00 00       	mov    edx,@obj3:scrpties_cpp_variable_191                          ; fixup: num: 12462, src obj: 1, src ofs: 0x51f5f, dst obj: 3, dst ofs: 0xc8e6
   51f63:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
   51f66:	e8 c5 44 02 00       	call   strcmp_
   51f6b:	85 c0                	test   eax,eax
   51f6d:	0f 94 c0             	sete   al
   51f70:	88 43 1d             	mov    BYTE PTR [ebx+0x1d],al
   51f73:	8b 45 6a             	mov    eax,DWORD PTR [ebp+0x6a]
   51f76:	ba e8 c8 00 00       	mov    edx,@obj3:scrpties_cpp_variable_192                          ; fixup: num: 12461, src obj: 1, src ofs: 0x51f77, dst obj: 3, dst ofs: 0xc8e8
   51f7b:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
   51f7e:	e8 ad 44 02 00       	call   strcmp_
   51f83:	85 c0                	test   eax,eax
   51f85:	74 14                	je     execute_command_branch_104
   51f87:	8b 45 6a             	mov    eax,DWORD PTR [ebp+0x6a]
   51f8a:	ba ea c8 00 00       	mov    edx,@obj3:scrpties_cpp_variable_193                          ; fixup: num: 12460, src obj: 1, src ofs: 0x51f8b, dst obj: 3, dst ofs: 0xc8ea
   51f8f:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
   51f92:	e8 99 44 02 00       	call   strcmp_
   51f97:	85 c0                	test   eax,eax
   51f99:	75 07                	jne    execute_command_branch_105
execute_command_branch_104:
   51f9b:	b8 01 00 00 00       	mov    eax,0x1
   51fa0:	eb 02                	jmp    execute_command_branch_106
execute_command_branch_105:
   51fa2:	31 c0                	xor    eax,eax
execute_command_branch_106:
   51fa4:	8a 55 7e             	mov    dl,BYTE PTR [ebp+0x7e]
   51fa7:	88 41 1c             	mov    BYTE PTR [ecx+0x1c],al
   51faa:	84 d2                	test   dl,dl
   51fac:	75 0d                	jne    execute_command_branch_107
   51fae:	80 79 1d 00          	cmp    BYTE PTR [ecx+0x1d],0x0
   51fb2:	74 07                	je     execute_command_branch_107
   51fb4:	c7 41 24 00 00 00 00 	mov    DWORD PTR [ecx+0x24],0x0
execute_command_branch_107:
   51fbb:	8b 15 c4 5a 02 00    	mov    edx,DWORD PTR ds:@obj3:current_room                          ; fixup: num: 12467, src obj: 1, src ofs: 0x51fbd, dst obj: 3, dst ofs: 0x25ac4
   51fc1:	8b 41 10             	mov    eax,DWORD PTR [ecx+0x10]
   51fc4:	8b 52 2c             	mov    edx,DWORD PTR [edx+0x2c]
   51fc7:	e8 64 44 02 00       	call   strcmp_
   51fcc:	85 c0                	test   eax,eax
   51fce:	0f 85 66 ef ff ff    	jne    execute_command_reference_1
   51fd4:	8b 55 6a             	mov    edx,DWORD PTR [ebp+0x6a]
   51fd7:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 12466, src obj: 1, src ofs: 0x51fd8, dst obj: 3, dst ofs: 0x25a88
   51fdc:	8b 52 08             	mov    edx,DWORD PTR [edx+0x8]
   51fdf:	e8 0c a1 ff ff       	call   get_bitmap
   51fe4:	89 c3                	mov    ebx,eax
   51fe6:	89 c6                	mov    esi,eax
   51fe8:	80 79 1d 00          	cmp    BYTE PTR [ecx+0x1d],0x0
   51fec:	74 36                	je     execute_command_branch_110
   51fee:	85 db                	test   ebx,ebx
   51ff0:	75 56                	jne    execute_command_branch_112
   51ff2:	b8 28 11 00 00       	mov    eax,0x1128
   51ff7:	e8 1c ff 01 00       	call   W?$nwn(ui)pnv
   51ffc:	85 c0                	test   eax,eax
   51ffe:	74 10                	je     execute_command_branch_108
   52000:	bb 93 14 07 00       	mov    ebx,@obj1:_nmalloc_                                          ; aliases: _nmalloc_, malloc_; fixup: num: 12747, src obj: 1, src ofs: 0x52001, dst obj: 1, dst ofs: 0x71493
   52005:	89 ca                	mov    edx,ecx
   52007:	e8 d4 9b fe ff       	call   W?$ct:ANIMATION$n(pn$_anim_type$$pn(ui)pnv)_
   5200c:	89 c2                	mov    edx,eax
   5200e:	eb 02                	jmp    execute_command_branch_109
execute_command_branch_108:
   52010:	89 da                	mov    edx,ebx
execute_command_branch_109:
   52012:	89 d6                	mov    esi,edx
   52014:	85 d2                	test   edx,edx
   52016:	74 30                	je     execute_command_branch_112
   52018:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 12746, src obj: 1, src ofs: 0x52019, dst obj: 3, dst ofs: 0x25a88
   5201d:	e8 0e a1 ff ff       	call   insert_bitmap
   52022:	eb 24                	jmp    execute_command_branch_112
execute_command_branch_110:
   52024:	85 db                	test   ebx,ebx
   52026:	74 20                	je     execute_command_branch_112
   52028:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 12745, src obj: 1, src ofs: 0x52029, dst obj: 3, dst ofs: 0x25a88
   5202d:	89 da                	mov    edx,ebx
   5202f:	e8 bc a6 ff ff       	call   remove_bitmap
   52034:	85 db                	test   ebx,ebx
   52036:	74 0e                	je     execute_command_branch_111
   52038:	89 d8                	mov    eax,ebx
   5203a:	31 d2                	xor    edx,edx
   5203c:	e8 1f 9f fe ff       	call   W?$dt:ANIMATION$n()_
   52041:	e8 32 00 02 00       	call   W?$dln(pnv)v
execute_command_branch_111:
   52046:	31 f6                	xor    esi,esi
execute_command_branch_112:
   52048:	85 f6                	test   esi,esi
   5204a:	0f 84 ea ee ff ff    	je     execute_command_reference_1
   52050:	8a 41 1c             	mov    al,BYTE PTR [ecx+0x1c]
   52053:	88 46 52             	mov    BYTE PTR [esi+0x52],al
   52056:	e9 df ee ff ff       	jmp    execute_command_reference_1
execute_command_reference_38:
   5205b:	8b 4d 6a             	mov    ecx,DWORD PTR [ebp+0x6a]
   5205e:	8b 1d a4 5a 02 00    	mov    ebx,DWORD PTR ds:@obj3:flag_list                             ; fixup: num: 12750, src obj: 1, src ofs: 0x52060, dst obj: 3, dst ofs: 0x25aa4
   52064:	8b 49 08             	mov    ecx,DWORD PTR [ecx+0x8]
   52067:	85 db                	test   ebx,ebx
   52069:	74 14                	je     execute_command_branch_114
execute_command_branch_113:
   5206b:	89 ca                	mov    edx,ecx
   5206d:	8b 03                	mov    eax,DWORD PTR [ebx]
   5206f:	e8 bc 43 02 00       	call   strcmp_
   52074:	85 c0                	test   eax,eax
   52076:	74 09                	je     execute_command_branch_115
   52078:	8b 5b 08             	mov    ebx,DWORD PTR [ebx+0x8]
   5207b:	85 db                	test   ebx,ebx
   5207d:	75 ec                	jne    execute_command_branch_113
execute_command_branch_114:
   5207f:	31 db                	xor    ebx,ebx
execute_command_branch_115:
   52081:	85 db                	test   ebx,ebx
   52083:	0f 84 b1 ee ff ff    	je     execute_command_reference_1
   52089:	8b 45 6a             	mov    eax,DWORD PTR [ebp+0x6a]
   5208c:	ba ed c8 00 00       	mov    edx,@obj3:scrpties_cpp_variable_194                          ; fixup: num: 12749, src obj: 1, src ofs: 0x5208d, dst obj: 3, dst ofs: 0xc8ed
   52091:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
   52094:	e8 97 43 02 00       	call   strcmp_
   52099:	85 c0                	test   eax,eax
   5209b:	0f 94 c0             	sete   al
   5209e:	88 43 04             	mov    BYTE PTR [ebx+0x4],al
   520a1:	e9 94 ee ff ff       	jmp    execute_command_reference_1
execute_command_reference_39:
   520a6:	8b 45 6a             	mov    eax,DWORD PTR [ebp+0x6a]
   520a9:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
   520ac:	8b 5d 6a             	mov    ebx,DWORD PTR [ebp+0x6a]
   520af:	e8 20 49 02 00       	call   atoi_
   520b4:	8b 5b 08             	mov    ebx,DWORD PTR [ebx+0x8]
   520b7:	89 c2                	mov    edx,eax
   520b9:	89 d8                	mov    eax,ebx
   520bb:	e8 90 7f fd ff       	call   set_dialog_flag
   520c0:	e9 75 ee ff ff       	jmp    execute_command_reference_1
execute_command_reference_40:
   520c5:	8b 4d 6a             	mov    ecx,DWORD PTR [ebp+0x6a]
   520c8:	8b 49 08             	mov    ecx,DWORD PTR [ecx+0x8]
   520cb:	85 c9                	test   ecx,ecx
   520cd:	74 28                	je     execute_command_branch_119
   520cf:	8b 1d b4 5a 02 00    	mov    ebx,DWORD PTR ds:@obj3:monster_list                          ; fixup: num: 12748, src obj: 1, src ofs: 0x520d1, dst obj: 3, dst ofs: 0x25ab4
   520d5:	85 db                	test   ebx,ebx
   520d7:	74 1c                	je     execute_command_branch_118
execute_command_branch_116:
   520d9:	89 ca                	mov    edx,ecx
   520db:	8b 43 34             	mov    eax,DWORD PTR [ebx+0x34]
   520de:	e8 4d 43 02 00       	call   strcmp_
   520e3:	85 c0                	test   eax,eax
   520e5:	75 04                	jne    execute_command_branch_117
   520e7:	89 d9                	mov    ecx,ebx
   520e9:	eb 0c                	jmp    execute_command_branch_119
execute_command_branch_117:
   520eb:	8b 9b 90 00 00 00    	mov    ebx,DWORD PTR [ebx+0x90]
   520f1:	85 db                	test   ebx,ebx
   520f3:	75 e4                	jne    execute_command_branch_116
execute_command_branch_118:
   520f5:	31 c9                	xor    ecx,ecx
execute_command_branch_119:
   520f7:	89 cf                	mov    edi,ecx
   520f9:	85 c9                	test   ecx,ecx
   520fb:	0f 84 39 ee ff ff    	je     execute_command_reference_1
   52101:	8b 45 6a             	mov    eax,DWORD PTR [ebp+0x6a]
   52104:	ba ef c8 00 00       	mov    edx,@obj3:scrpties_cpp_variable_195                          ; fixup: num: 12757, src obj: 1, src ofs: 0x52105, dst obj: 3, dst ofs: 0xc8ef
   52109:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
   5210c:	e8 1f 43 02 00       	call   strcmp_
   52111:	85 c0                	test   eax,eax
   52113:	0f 94 c0             	sete   al
   52116:	88 81 81 00 00 00    	mov    BYTE PTR [ecx+0x81],al
   5211c:	8b 45 6a             	mov    eax,DWORD PTR [ebp+0x6a]
   5211f:	ba f1 c8 00 00       	mov    edx,@obj3:scrpties_cpp_variable_196                          ; fixup: num: 12756, src obj: 1, src ofs: 0x52120, dst obj: 3, dst ofs: 0xc8f1
   52124:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
   52127:	e8 04 43 02 00       	call   strcmp_
   5212c:	85 c0                	test   eax,eax
   5212e:	0f 94 c0             	sete   al
   52131:	8b 15 c4 5a 02 00    	mov    edx,DWORD PTR ds:@obj3:current_room                          ; fixup: num: 12755, src obj: 1, src ofs: 0x52133, dst obj: 3, dst ofs: 0x25ac4
   52137:	88 81 80 00 00 00    	mov    BYTE PTR [ecx+0x80],al
   5213d:	8b 52 2c             	mov    edx,DWORD PTR [edx+0x2c]
   52140:	8b 41 40             	mov    eax,DWORD PTR [ecx+0x40]
   52143:	e8 e8 42 02 00       	call   strcmp_
   52148:	85 c0                	test   eax,eax
   5214a:	0f 85 ea ed ff ff    	jne    execute_command_reference_1
   52150:	8b 55 6a             	mov    edx,DWORD PTR [ebp+0x6a]
   52153:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 12754, src obj: 1, src ofs: 0x52154, dst obj: 3, dst ofs: 0x25a88
   52158:	8b 52 08             	mov    edx,DWORD PTR [edx+0x8]
   5215b:	e8 90 9f ff ff       	call   get_bitmap
   52160:	89 c3                	mov    ebx,eax
   52162:	89 c6                	mov    esi,eax
   52164:	80 b9 81 00 00 00 00 	cmp    BYTE PTR [ecx+0x81],0x0
   5216b:	74 32                	je     execute_command_branch_121
   5216d:	85 db                	test   ebx,ebx
   5216f:	75 52                	jne    execute_command_branch_123
   52171:	b8 bc 11 00 00       	mov    eax,0x11bc
   52176:	e8 9d fd 01 00       	call   W?$nwn(ui)pnv
   5217b:	85 c0                	test   eax,eax
   5217d:	74 0c                	je     execute_command_branch_120
   5217f:	bb 93 14 07 00       	mov    ebx,@obj1:_nmalloc_                                          ; aliases: _nmalloc_, malloc_; fixup: num: 12753, src obj: 1, src ofs: 0x52180, dst obj: 1, dst ofs: 0x71493
   52184:	89 ca                	mov    edx,ecx
   52186:	e8 85 18 ff ff       	call   W?$ct:MONSTER$n(pn$_monster_type$$pn(ui)pnv)_
execute_command_branch_120:
   5218b:	89 c6                	mov    esi,eax
   5218d:	85 c0                	test   eax,eax
   5218f:	74 32                	je     execute_command_branch_123
   52191:	89 c2                	mov    edx,eax
   52193:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 12752, src obj: 1, src ofs: 0x52194, dst obj: 3, dst ofs: 0x25a88
   52198:	e8 93 9f ff ff       	call   insert_bitmap
   5219d:	eb 24                	jmp    execute_command_branch_123
execute_command_branch_121:
   5219f:	85 db                	test   ebx,ebx
   521a1:	74 20                	je     execute_command_branch_123
   521a3:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 12751, src obj: 1, src ofs: 0x521a4, dst obj: 3, dst ofs: 0x25a88
   521a8:	89 da                	mov    edx,ebx
   521aa:	e8 41 a5 ff ff       	call   remove_bitmap
   521af:	85 db                	test   ebx,ebx
   521b1:	74 0e                	je     execute_command_branch_122
   521b3:	89 d8                	mov    eax,ebx
   521b5:	31 d2                	xor    edx,edx
   521b7:	e8 04 20 ff ff       	call   W?$dt:MONSTER$n()_
   521bc:	e8 b7 fe 01 00       	call   W?$dln(pnv)v
execute_command_branch_122:
   521c1:	31 f6                	xor    esi,esi
execute_command_branch_123:
   521c3:	85 f6                	test   esi,esi
   521c5:	0f 84 6f ed ff ff    	je     execute_command_reference_1
   521cb:	8a 87 80 00 00 00    	mov    al,BYTE PTR [edi+0x80]
   521d1:	88 46 52             	mov    BYTE PTR [esi+0x52],al
   521d4:	e9 61 ed ff ff       	jmp    execute_command_reference_1
execute_command_reference_41:                                                                       ; access size: BYTE
   521d9:	8b 4d 6a             	mov    ecx,DWORD PTR [ebp+0x6a]
   521dc:	8b 49 08             	mov    ecx,DWORD PTR [ecx+0x8]
   521df:	85 c9                	test   ecx,ecx
   521e1:	74 25                	je     execute_command_branch_127
   521e3:	8b 1d b8 5a 02 00    	mov    ebx,DWORD PTR ds:@obj3:npc_list                              ; fixup: num: 12761, src obj: 1, src ofs: 0x521e5, dst obj: 3, dst ofs: 0x25ab8
   521e9:	85 db                	test   ebx,ebx
   521eb:	74 19                	je     execute_command_branch_126
execute_command_branch_124:
   521ed:	89 ca                	mov    edx,ecx
   521ef:	8b 43 18             	mov    eax,DWORD PTR [ebx+0x18]
   521f2:	e8 39 42 02 00       	call   strcmp_
   521f7:	85 c0                	test   eax,eax
   521f9:	75 04                	jne    execute_command_branch_125
   521fb:	89 d9                	mov    ecx,ebx
   521fd:	eb 09                	jmp    execute_command_branch_127
execute_command_branch_125:
   521ff:	8b 5b 38             	mov    ebx,DWORD PTR [ebx+0x38]
   52202:	85 db                	test   ebx,ebx
   52204:	75 e7                	jne    execute_command_branch_124
execute_command_branch_126:
   52206:	31 c9                	xor    ecx,ecx
execute_command_branch_127:
   52208:	89 cf                	mov    edi,ecx
   5220a:	85 c9                	test   ecx,ecx
   5220c:	0f 84 28 ed ff ff    	je     execute_command_reference_1
   52212:	8b 45 6a             	mov    eax,DWORD PTR [ebp+0x6a]
   52215:	ba f3 c8 00 00       	mov    edx,@obj3:scrpties_cpp_variable_197                          ; fixup: num: 12760, src obj: 1, src ofs: 0x52216, dst obj: 3, dst ofs: 0xc8f3
   5221a:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
   5221d:	e8 0e 42 02 00       	call   strcmp_
   52222:	85 c0                	test   eax,eax
   52224:	0f 94 c0             	sete   al
   52227:	88 41 26             	mov    BYTE PTR [ecx+0x26],al
   5222a:	8b 45 6a             	mov    eax,DWORD PTR [ebp+0x6a]
   5222d:	ba f5 c8 00 00       	mov    edx,@obj3:scrpties_cpp_variable_198                          ; fixup: num: 12759, src obj: 1, src ofs: 0x5222e, dst obj: 3, dst ofs: 0xc8f5
   52232:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
   52235:	e8 f6 41 02 00       	call   strcmp_
   5223a:	85 c0                	test   eax,eax
   5223c:	0f 94 c0             	sete   al
   5223f:	8b 15 c4 5a 02 00    	mov    edx,DWORD PTR ds:@obj3:current_room                          ; fixup: num: 12758, src obj: 1, src ofs: 0x52241, dst obj: 3, dst ofs: 0x25ac4
   52245:	88 41 25             	mov    BYTE PTR [ecx+0x25],al
   52248:	8b 52 2c             	mov    edx,DWORD PTR [edx+0x2c]
   5224b:	8b 41 20             	mov    eax,DWORD PTR [ecx+0x20]
   5224e:	e8 dd 41 02 00       	call   strcmp_
   52253:	85 c0                	test   eax,eax
   52255:	0f 85 df ec ff ff    	jne    execute_command_reference_1
   5225b:	8b 55 6a             	mov    edx,DWORD PTR [ebp+0x6a]
   5225e:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 12766, src obj: 1, src ofs: 0x5225f, dst obj: 3, dst ofs: 0x25a88
   52263:	8b 52 08             	mov    edx,DWORD PTR [edx+0x8]
   52266:	e8 85 9e ff ff       	call   get_bitmap
   5226b:	89 c3                	mov    ebx,eax
   5226d:	89 c6                	mov    esi,eax
   5226f:	80 79 26 00          	cmp    BYTE PTR [ecx+0x26],0x0
   52273:	74 36                	je     execute_command_branch_130
   52275:	85 db                	test   ebx,ebx
   52277:	75 56                	jne    execute_command_branch_132
   52279:	b8 bc 11 00 00       	mov    eax,0x11bc
   5227e:	e8 95 fc 01 00       	call   W?$nwn(ui)pnv
   52283:	85 c0                	test   eax,eax
   52285:	74 10                	je     execute_command_branch_128
   52287:	bb 93 14 07 00       	mov    ebx,@obj1:_nmalloc_                                          ; aliases: _nmalloc_, malloc_; fixup: num: 12765, src obj: 1, src ofs: 0x52288, dst obj: 1, dst ofs: 0x71493
   5228c:	89 ca                	mov    edx,ecx
   5228e:	e8 6d aa fe ff       	call   W?$ct:NON_PLAYER_CHARACTER$n(pn$_npc_type$$pn(ui)pnv)_
   52293:	89 c2                	mov    edx,eax
   52295:	eb 02                	jmp    execute_command_branch_129
execute_command_branch_128:
   52297:	89 da                	mov    edx,ebx
execute_command_branch_129:
   52299:	89 d6                	mov    esi,edx
   5229b:	85 d2                	test   edx,edx
   5229d:	74 30                	je     execute_command_branch_132
   5229f:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 12764, src obj: 1, src ofs: 0x522a0, dst obj: 3, dst ofs: 0x25a88
   522a4:	e8 87 9e ff ff       	call   insert_bitmap
   522a9:	eb 24                	jmp    execute_command_branch_132
execute_command_branch_130:
   522ab:	85 db                	test   ebx,ebx
   522ad:	74 20                	je     execute_command_branch_132
   522af:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 12763, src obj: 1, src ofs: 0x522b0, dst obj: 3, dst ofs: 0x25a88
   522b4:	89 da                	mov    edx,ebx
   522b6:	e8 35 a4 ff ff       	call   remove_bitmap
   522bb:	85 db                	test   ebx,ebx
   522bd:	74 0e                	je     execute_command_branch_131
   522bf:	89 d8                	mov    eax,ebx
   522c1:	31 d2                	xor    edx,edx
   522c3:	e8 68 2d ff ff       	call   W?$dt:NON_PLAYER_CHARACTER$n()_
   522c8:	e8 ab fd 01 00       	call   W?$dln(pnv)v
execute_command_branch_131:
   522cd:	31 f6                	xor    esi,esi
execute_command_branch_132:
   522cf:	85 f6                	test   esi,esi
   522d1:	0f 84 63 ec ff ff    	je     execute_command_reference_1
   522d7:	8a 47 25             	mov    al,BYTE PTR [edi+0x25]
   522da:	88 46 52             	mov    BYTE PTR [esi+0x52],al
   522dd:	e9 58 ec ff ff       	jmp    execute_command_reference_1
execute_command_reference_42:
   522e2:	8b 4d 6a             	mov    ecx,DWORD PTR [ebp+0x6a]
   522e5:	8b 1d c0 5a 02 00    	mov    ebx,DWORD PTR ds:@obj3:region_list                           ; fixup: num: 12762, src obj: 1, src ofs: 0x522e7, dst obj: 3, dst ofs: 0x25ac0
   522eb:	8b 49 08             	mov    ecx,DWORD PTR [ecx+0x8]
   522ee:	85 db                	test   ebx,ebx
   522f0:	74 15                	je     execute_command_branch_134
execute_command_branch_133:
   522f2:	89 ca                	mov    edx,ecx
   522f4:	8b 43 1c             	mov    eax,DWORD PTR [ebx+0x1c]
   522f7:	e8 34 41 02 00       	call   strcmp_
   522fc:	85 c0                	test   eax,eax
   522fe:	74 09                	je     execute_command_branch_135
   52300:	8b 5b 2c             	mov    ebx,DWORD PTR [ebx+0x2c]
   52303:	85 db                	test   ebx,ebx
   52305:	75 eb                	jne    execute_command_branch_133
execute_command_branch_134:
   52307:	31 db                	xor    ebx,ebx
execute_command_branch_135:
   52309:	85 db                	test   ebx,ebx
   5230b:	0f 84 29 ec ff ff    	je     execute_command_reference_1
   52311:	8b 45 6a             	mov    eax,DWORD PTR [ebp+0x6a]
   52314:	ba f7 c8 00 00       	mov    edx,@obj3:scrpties_cpp_variable_199                          ; fixup: num: 12773, src obj: 1, src ofs: 0x52315, dst obj: 3, dst ofs: 0xc8f7
   52319:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
   5231c:	e8 0f 41 02 00       	call   strcmp_
   52321:	85 c0                	test   eax,eax
   52323:	0f 95 c0             	setne  al
   52326:	88 43 28             	mov    BYTE PTR [ebx+0x28],al
   52329:	84 c0                	test   al,al
   5232b:	74 32                	je     execute_command_branch_137
   5232d:	b8 4c 00 00 00       	mov    eax,0x4c
   52332:	c6 43 29 01          	mov    BYTE PTR [ebx+0x29],0x1
   52336:	e8 dd fb 01 00       	call   W?$nwn(ui)pnv
   5233b:	85 c0                	test   eax,eax
   5233d:	74 07                	je     execute_command_branch_136
   5233f:	89 da                	mov    edx,ebx
   52341:	e8 9a 8f fe ff       	call   W?$ct:BTMAP$n(pn$_region_type$$)_
execute_command_branch_136:
   52346:	85 c0                	test   eax,eax
   52348:	0f 84 ec eb ff ff    	je     execute_command_reference_1
   5234e:	89 c2                	mov    edx,eax
   52350:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 12772, src obj: 1, src ofs: 0x52351, dst obj: 3, dst ofs: 0x25a88
   52355:	e8 d6 9d ff ff       	call   insert_bitmap
   5235a:	e9 db eb ff ff       	jmp    execute_command_reference_1
execute_command_branch_137:
   5235f:	8b 53 1c             	mov    edx,DWORD PTR [ebx+0x1c]
   52362:	88 43 29             	mov    BYTE PTR [ebx+0x29],al
   52365:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 12771, src obj: 1, src ofs: 0x52366, dst obj: 3, dst ofs: 0x25a88
   5236a:	e8 81 9d ff ff       	call   get_bitmap
   5236f:	89 c1                	mov    ecx,eax
   52371:	85 c0                	test   eax,eax
   52373:	74 35                	je     execute_command_branch_138
   52375:	8b 70 10             	mov    esi,DWORD PTR [eax+0x10]
   52378:	56                   	push   esi
   52379:	68 f9 c8 00 00       	push   @obj3:scrpties_cpp_variable_200                              ; fixup: num: 12770, src obj: 1, src ofs: 0x5237a, dst obj: 3, dst ofs: 0xc8f9
   5237e:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 12769, src obj: 1, src ofs: 0x5237f, dst obj: 3, dst ofs: 0x237fc
   52383:	e8 59 e8 01 00       	call   sprintf_
   52388:	83 c4 0c             	add    esp,0xc
   5238b:	89 ca                	mov    edx,ecx
   5238d:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 12768, src obj: 1, src ofs: 0x5238e, dst obj: 3, dst ofs: 0x25a88
   52392:	e8 59 a3 ff ff       	call   remove_bitmap
   52397:	89 c8                	mov    eax,ecx
   52399:	31 d2                	xor    edx,edx
   5239b:	e8 00 90 fe ff       	call   W?$dt:BTMAP$n()_
   523a0:	e8 d3 fc 01 00       	call   W?$dln(pnv)v
   523a5:	e9 90 eb ff ff       	jmp    execute_command_reference_1
execute_command_branch_138:
   523aa:	8b 4b 1c             	mov    ecx,DWORD PTR [ebx+0x1c]
   523ad:	51                   	push   ecx
   523ae:	68 0a c9 00 00       	push   @obj3:scrpties_cpp_variable_201                              ; fixup: num: 12767, src obj: 1, src ofs: 0x523af, dst obj: 3, dst ofs: 0xc90a
   523b3:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 12779, src obj: 1, src ofs: 0x523b4, dst obj: 3, dst ofs: 0x237fc
   523b8:	e8 24 e8 01 00       	call   sprintf_
   523bd:	83 c4 0c             	add    esp,0xc
   523c0:	e9 75 eb ff ff       	jmp    execute_command_reference_1
execute_command_reference_43:                                                                       ; access size: BYTE
   523c5:	8b 55 6a             	mov    edx,DWORD PTR [ebp+0x6a]
   523c8:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 12778, src obj: 1, src ofs: 0x523c9, dst obj: 3, dst ofs: 0x25a88
   523cd:	8b 52 08             	mov    edx,DWORD PTR [edx+0x8]
   523d0:	e8 1b 9d ff ff       	call   get_bitmap
   523d5:	89 c3                	mov    ebx,eax
   523d7:	85 c0                	test   eax,eax
   523d9:	0f 84 e2 00 00 00    	je     execute_command_branch_154
   523df:	8b 45 6a             	mov    eax,DWORD PTR [ebp+0x6a]
   523e2:	ba 20 c9 00 00       	mov    edx,@obj3:scrpties_cpp_variable_202                          ; fixup: num: 12777, src obj: 1, src ofs: 0x523e3, dst obj: 3, dst ofs: 0xc920
   523e7:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
   523ea:	e8 41 40 02 00       	call   strcmp_
   523ef:	85 c0                	test   eax,eax
   523f1:	75 5e                	jne    execute_command_branch_144
   523f3:	80 7b 54 00          	cmp    BYTE PTR [ebx+0x54],0x0
   523f7:	75 1c                	jne    execute_command_branch_139
   523f9:	89 d8                	mov    eax,ebx
   523fb:	6b 58 4c 64          	imul   ebx,DWORD PTR [eax+0x4c],0x64
   523ff:	c6 40 54 01          	mov    BYTE PTR [eax+0x54],0x1
   52403:	8b 15 44 7e 01 00    	mov    edx,DWORD PTR ds:@obj3:current_time                          ; fixup: num: 12776, src obj: 1, src ofs: 0x52405, dst obj: 3, dst ofs: 0x17e44
   52409:	c6 40 60 00          	mov    BYTE PTR [eax+0x60],0x0
   5240d:	89 50 58             	mov    DWORD PTR [eax+0x58],edx
   52410:	01 da                	add    edx,ebx
   52412:	89 50 50             	mov    DWORD PTR [eax+0x50],edx
execute_command_branch_139:
   52415:	8b 4d 6a             	mov    ecx,DWORD PTR [ebp+0x6a]
   52418:	8b 1d d0 5a 02 00    	mov    ebx,DWORD PTR ds:@obj3:timer_list                            ; fixup: num: 12775, src obj: 1, src ofs: 0x5241a, dst obj: 3, dst ofs: 0x25ad0
   5241e:	8b 49 08             	mov    ecx,DWORD PTR [ecx+0x8]
   52421:	85 db                	test   ebx,ebx
   52423:	74 19                	je     execute_command_branch_142
execute_command_branch_140:
   52425:	89 ca                	mov    edx,ecx
   52427:	8b 43 08             	mov    eax,DWORD PTR [ebx+0x8]
   5242a:	e8 01 40 02 00       	call   strcmp_
   5242f:	85 c0                	test   eax,eax
   52431:	75 04                	jne    execute_command_branch_141
   52433:	89 d8                	mov    eax,ebx
   52435:	eb 09                	jmp    execute_command_branch_143
execute_command_branch_141:
   52437:	8b 5b 18             	mov    ebx,DWORD PTR [ebx+0x18]
   5243a:	85 db                	test   ebx,ebx
   5243c:	75 e7                	jne    execute_command_branch_140
execute_command_branch_142:
   5243e:	31 c0                	xor    eax,eax
execute_command_branch_143:
   52440:	85 c0                	test   eax,eax
   52442:	0f 84 f2 ea ff ff    	je     execute_command_reference_1
   52448:	c6 40 14 01          	mov    BYTE PTR [eax+0x14],0x1
   5244c:	e9 e9 ea ff ff       	jmp    execute_command_reference_1
execute_command_branch_144:
   52451:	c6 43 54 00          	mov    BYTE PTR [ebx+0x54],0x0
   52455:	8b 4b 10             	mov    ecx,DWORD PTR [ebx+0x10]
   52458:	8b 1d d0 5a 02 00    	mov    ebx,DWORD PTR ds:@obj3:timer_list                            ; fixup: num: 12774, src obj: 1, src ofs: 0x5245a, dst obj: 3, dst ofs: 0x25ad0
   5245e:	85 db                	test   ebx,ebx
   52460:	74 19                	je     execute_command_branch_147
execute_command_branch_145:
   52462:	89 ca                	mov    edx,ecx
   52464:	8b 43 08             	mov    eax,DWORD PTR [ebx+0x8]
   52467:	e8 c4 3f 02 00       	call   strcmp_
   5246c:	85 c0                	test   eax,eax
   5246e:	75 04                	jne    execute_command_branch_146
   52470:	89 d8                	mov    eax,ebx
   52472:	eb 09                	jmp    execute_command_branch_148
execute_command_branch_146:
   52474:	8b 5b 18             	mov    ebx,DWORD PTR [ebx+0x18]
   52477:	85 db                	test   ebx,ebx
   52479:	75 e7                	jne    execute_command_branch_145
execute_command_branch_147:
   5247b:	31 c0                	xor    eax,eax
execute_command_branch_148:
   5247d:	85 c0                	test   eax,eax
   5247f:	74 04                	je     execute_command_branch_149
   52481:	c6 40 14 00          	mov    BYTE PTR [eax+0x14],0x0
execute_command_branch_149:
   52485:	8b 4d 6a             	mov    ecx,DWORD PTR [ebp+0x6a]
   52488:	8b 1d d0 5a 02 00    	mov    ebx,DWORD PTR ds:@obj3:timer_list                            ; fixup: num: 12784, src obj: 1, src ofs: 0x5248a, dst obj: 3, dst ofs: 0x25ad0
   5248e:	8b 49 08             	mov    ecx,DWORD PTR [ecx+0x8]
   52491:	85 db                	test   ebx,ebx
   52493:	74 19                	je     execute_command_branch_152
execute_command_branch_150:
   52495:	89 ca                	mov    edx,ecx
   52497:	8b 43 08             	mov    eax,DWORD PTR [ebx+0x8]
   5249a:	e8 91 3f 02 00       	call   strcmp_
   5249f:	85 c0                	test   eax,eax
   524a1:	75 04                	jne    execute_command_branch_151
   524a3:	89 d8                	mov    eax,ebx
   524a5:	eb 09                	jmp    execute_command_branch_153
execute_command_branch_151:
   524a7:	8b 5b 18             	mov    ebx,DWORD PTR [ebx+0x18]
   524aa:	85 db                	test   ebx,ebx
   524ac:	75 e7                	jne    execute_command_branch_150
execute_command_branch_152:
   524ae:	31 c0                	xor    eax,eax
execute_command_branch_153:
   524b0:	85 c0                	test   eax,eax
   524b2:	0f 84 82 ea ff ff    	je     execute_command_reference_1
   524b8:	c6 40 14 00          	mov    BYTE PTR [eax+0x14],0x0
   524bc:	e9 79 ea ff ff       	jmp    execute_command_reference_1
execute_command_branch_154:
   524c1:	8b 45 6a             	mov    eax,DWORD PTR [ebp+0x6a]
   524c4:	8b 58 08             	mov    ebx,DWORD PTR [eax+0x8]
   524c7:	53                   	push   ebx
   524c8:	b8 23 c9 00 00       	mov    eax,@obj3:scrpties_cpp_variable_203                          ; fixup: num: 12783, src obj: 1, src ofs: 0x524c9, dst obj: 3, dst ofs: 0xc923
   524cd:	50                   	push   eax
   524ce:	b8 fc 37 02 00       	mov    eax,@obj3:log_buffer                                         ; fixup: num: 12782, src obj: 1, src ofs: 0x524cf, dst obj: 3, dst ofs: 0x237fc
   524d3:	50                   	push   eax
   524d4:	e8 08 e7 01 00       	call   sprintf_
   524d9:	83 c4 0c             	add    esp,0xc
   524dc:	e9 59 ea ff ff       	jmp    execute_command_reference_1
execute_command_reference_44:
   524e1:	8b 55 6a             	mov    edx,DWORD PTR [ebp+0x6a]
   524e4:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 12781, src obj: 1, src ofs: 0x524e5, dst obj: 3, dst ofs: 0x25a88
   524e9:	8b 52 08             	mov    edx,DWORD PTR [edx+0x8]
   524ec:	e8 ff 9b ff ff       	call   get_bitmap
   524f1:	89 c1                	mov    ecx,eax
   524f3:	85 c0                	test   eax,eax
   524f5:	0f 84 70 00 00 00    	je     execute_command_branch_164
   524fb:	c6 40 54 00          	mov    BYTE PTR [eax+0x54],0x0
   524ff:	8b 1d d0 5a 02 00    	mov    ebx,DWORD PTR ds:@obj3:timer_list                            ; fixup: num: 12780, src obj: 1, src ofs: 0x52501, dst obj: 3, dst ofs: 0x25ad0
   52505:	8b 48 10             	mov    ecx,DWORD PTR [eax+0x10]
   52508:	85 db                	test   ebx,ebx
   5250a:	74 19                	je     execute_command_branch_157
execute_command_branch_155:
   5250c:	89 ca                	mov    edx,ecx
   5250e:	8b 43 08             	mov    eax,DWORD PTR [ebx+0x8]
   52511:	e8 1a 3f 02 00       	call   strcmp_
   52516:	85 c0                	test   eax,eax
   52518:	75 04                	jne    execute_command_branch_156
   5251a:	89 d8                	mov    eax,ebx
   5251c:	eb 09                	jmp    execute_command_branch_158
execute_command_branch_156:
   5251e:	8b 5b 18             	mov    ebx,DWORD PTR [ebx+0x18]
   52521:	85 db                	test   ebx,ebx
   52523:	75 e7                	jne    execute_command_branch_155
execute_command_branch_157:
   52525:	31 c0                	xor    eax,eax
execute_command_branch_158:
   52527:	85 c0                	test   eax,eax
   52529:	74 04                	je     execute_command_branch_159
   5252b:	c6 40 14 00          	mov    BYTE PTR [eax+0x14],0x0
execute_command_branch_159:
   5252f:	8b 4d 6a             	mov    ecx,DWORD PTR [ebp+0x6a]
   52532:	8b 1d d0 5a 02 00    	mov    ebx,DWORD PTR ds:@obj3:timer_list                            ; fixup: num: 12789, src obj: 1, src ofs: 0x52534, dst obj: 3, dst ofs: 0x25ad0
   52538:	8b 49 08             	mov    ecx,DWORD PTR [ecx+0x8]
   5253b:	85 db                	test   ebx,ebx
   5253d:	74 19                	je     execute_command_branch_162
execute_command_branch_160:
   5253f:	89 ca                	mov    edx,ecx
   52541:	8b 43 08             	mov    eax,DWORD PTR [ebx+0x8]
   52544:	e8 e7 3e 02 00       	call   strcmp_
   52549:	85 c0                	test   eax,eax
   5254b:	75 04                	jne    execute_command_branch_161
   5254d:	89 d8                	mov    eax,ebx
   5254f:	eb 09                	jmp    execute_command_branch_163
execute_command_branch_161:
   52551:	8b 5b 18             	mov    ebx,DWORD PTR [ebx+0x18]
   52554:	85 db                	test   ebx,ebx
   52556:	75 e7                	jne    execute_command_branch_160
execute_command_branch_162:
   52558:	31 c0                	xor    eax,eax
execute_command_branch_163:
   5255a:	85 c0                	test   eax,eax
   5255c:	0f 84 d8 e9 ff ff    	je     execute_command_reference_1
   52562:	c6 40 14 00          	mov    BYTE PTR [eax+0x14],0x0
   52566:	e9 cf e9 ff ff       	jmp    execute_command_reference_1
execute_command_branch_164:
   5256b:	8b 45 6a             	mov    eax,DWORD PTR [ebp+0x6a]
   5256e:	8b 70 08             	mov    esi,DWORD PTR [eax+0x8]
   52571:	56                   	push   esi
   52572:	b8 41 c9 00 00       	mov    eax,@obj3:scrpties_cpp_variable_204                          ; fixup: num: 12788, src obj: 1, src ofs: 0x52573, dst obj: 3, dst ofs: 0xc941
   52577:	50                   	push   eax
   52578:	b8 fc 37 02 00       	mov    eax,@obj3:log_buffer                                         ; fixup: num: 12787, src obj: 1, src ofs: 0x52579, dst obj: 3, dst ofs: 0x237fc
   5257d:	50                   	push   eax
   5257e:	e8 5e e6 01 00       	call   sprintf_
   52583:	83 c4 0c             	add    esp,0xc
   52586:	e9 af e9 ff ff       	jmp    execute_command_reference_1
execute_command_reference_45:
   5258b:	8b 1d cc 5a 02 00    	mov    ebx,DWORD PTR ds:@obj3:text_list                             ; fixup: num: 12786, src obj: 1, src ofs: 0x5258d, dst obj: 3, dst ofs: 0x25acc
   52591:	31 f6                	xor    esi,esi
   52593:	85 db                	test   ebx,ebx
   52595:	0f 84 89 00 00 00    	je     execute_command_branch_170
execute_command_branch_165:
   5259b:	8b 55 6a             	mov    edx,DWORD PTR [ebp+0x6a]
   5259e:	8b 43 08             	mov    eax,DWORD PTR [ebx+0x8]
   525a1:	8b 52 08             	mov    edx,DWORD PTR [edx+0x8]
   525a4:	e8 87 3e 02 00       	call   strcmp_
   525a9:	85 c0                	test   eax,eax
   525ab:	0f 85 68 00 00 00    	jne    execute_command_branch_169
   525b1:	ba 5f c9 00 00       	mov    edx,@obj3:scrpties_cpp_variable_205                          ; fixup: num: 12785, src obj: 1, src ofs: 0x525b2, dst obj: 3, dst ofs: 0xc95f
   525b6:	8b 43 0c             	mov    eax,DWORD PTR [ebx+0xc]
   525b9:	e8 72 3e 02 00       	call   strcmp_
   525be:	85 c0                	test   eax,eax
   525c0:	75 08                	jne    execute_command_branch_166
   525c2:	8b 35 9c 24 03 00    	mov    esi,DWORD PTR ds:@obj3:text_box1                             ; fixup: num: 12798, src obj: 1, src ofs: 0x525c4, dst obj: 3, dst ofs: 0x3249c
   525c8:	eb 5a                	jmp    execute_command_branch_170
execute_command_branch_166:
   525ca:	ba 64 c9 00 00       	mov    edx,@obj3:scrpties_cpp_variable_206                          ; fixup: num: 12797, src obj: 1, src ofs: 0x525cb, dst obj: 3, dst ofs: 0xc964
   525cf:	8b 43 0c             	mov    eax,DWORD PTR [ebx+0xc]
   525d2:	e8 59 3e 02 00       	call   strcmp_
   525d7:	85 c0                	test   eax,eax
   525d9:	75 08                	jne    execute_command_branch_167
   525db:	8b 35 a0 24 03 00    	mov    esi,DWORD PTR ds:@obj3:text_box2                             ; fixup: num: 12796, src obj: 1, src ofs: 0x525dd, dst obj: 3, dst ofs: 0x324a0
   525e1:	eb 41                	jmp    execute_command_branch_170
execute_command_branch_167:
   525e3:	ba 69 c9 00 00       	mov    edx,@obj3:scrpties_cpp_variable_207                          ; fixup: num: 12795, src obj: 1, src ofs: 0x525e4, dst obj: 3, dst ofs: 0xc969
   525e8:	8b 43 0c             	mov    eax,DWORD PTR [ebx+0xc]
   525eb:	e8 40 3e 02 00       	call   strcmp_
   525f0:	85 c0                	test   eax,eax
   525f2:	75 08                	jne    execute_command_branch_168
   525f4:	8b 35 a4 24 03 00    	mov    esi,DWORD PTR ds:@obj3:text_box3                             ; fixup: num: 12794, src obj: 1, src ofs: 0x525f6, dst obj: 3, dst ofs: 0x324a4
   525fa:	eb 28                	jmp    execute_command_branch_170
execute_command_branch_168:
   525fc:	ba 6e c9 00 00       	mov    edx,@obj3:scrpties_cpp_variable_208                          ; fixup: num: 12793, src obj: 1, src ofs: 0x525fd, dst obj: 3, dst ofs: 0xc96e
   52601:	8b 43 0c             	mov    eax,DWORD PTR [ebx+0xc]
   52604:	e8 27 3e 02 00       	call   strcmp_
   52609:	85 c0                	test   eax,eax
   5260b:	0f 85 3b e9 ff ff    	jne    execute_command_branch_5
   52611:	8b 35 a8 24 03 00    	mov    esi,DWORD PTR ds:@obj3:text_box4                             ; fixup: num: 12792, src obj: 1, src ofs: 0x52613, dst obj: 3, dst ofs: 0x324a8
   52617:	eb 0b                	jmp    execute_command_branch_170
execute_command_branch_169:
   52619:	8b 5b 14             	mov    ebx,DWORD PTR [ebx+0x14]
   5261c:	85 db                	test   ebx,ebx
   5261e:	0f 85 77 ff ff ff    	jne    execute_command_branch_165
execute_command_branch_170:
   52624:	85 db                	test   ebx,ebx
   52626:	75 26                	jne    execute_command_branch_171
   52628:	8b 45 6a             	mov    eax,DWORD PTR [ebp+0x6a]
   5262b:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
   5262e:	52                   	push   edx
   5262f:	68 73 c9 00 00       	push   @obj3:scrpties_cpp_variable_209                              ; fixup: num: 12791, src obj: 1, src ofs: 0x52630, dst obj: 3, dst ofs: 0xc973
   52634:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 12790, src obj: 1, src ofs: 0x52635, dst obj: 3, dst ofs: 0x237fc
   52639:	e8 a3 e5 01 00       	call   sprintf_
   5263e:	83 c4 0c             	add    esp,0xc
   52641:	8d a5 82 00 00 00    	lea    esp,[ebp+0x82]
   52647:	5d                   	pop    ebp
   52648:	5f                   	pop    edi
   52649:	5e                   	pop    esi
   5264a:	5a                   	pop    edx
   5264b:	59                   	pop    ecx
   5264c:	5b                   	pop    ebx
   5264d:	c3                   	ret    
execute_command_branch_171:
   5264e:	b8 50 00 00 00       	mov    eax,0x50
   52653:	e8 c0 f8 01 00       	call   W?$nwn(ui)pnv
   52658:	85 c0                	test   eax,eax
   5265a:	74 2f                	je     execute_command_branch_172
   5265c:	8b 16                	mov    edx,DWORD PTR [esi]
   5265e:	8b 12                	mov    edx,DWORD PTR [edx]
   52660:	83 ea 02             	sub    edx,0x2
   52663:	52                   	push   edx
   52664:	8b 56 40             	mov    edx,DWORD PTR [esi+0x40]
   52667:	6a d3                	push   0xffffffd3
   52669:	83 c2 05             	add    edx,0x5
   5266c:	52                   	push   edx
   5266d:	8b 56 3c             	mov    edx,DWORD PTR [esi+0x3c]
   52670:	83 c2 0a             	add    edx,0xa
   52673:	b9 9a c9 00 00       	mov    ecx,@obj3:scrpties_cpp_variable_210                          ; fixup: num: 12693, src obj: 1, src ofs: 0x52674, dst obj: 3, dst ofs: 0xc99a
   52678:	52                   	push   edx
   52679:	8b 15 c4 5b 02 00    	mov    edx,DWORD PTR ds:@obj3:textfont                              ; fixup: num: 12692, src obj: 1, src ofs: 0x5267b, dst obj: 3, dst ofs: 0x25bc4
   5267f:	8b 7b 10             	mov    edi,DWORD PTR [ebx+0x10]
   52682:	89 d3                	mov    ebx,edx
   52684:	89 fa                	mov    edx,edi
   52686:	e8 75 75 ff ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
execute_command_branch_172:
   5268b:	89 c3                	mov    ebx,eax
   5268d:	85 c0                	test   eax,eax
   5268f:	0f 84 a5 e8 ff ff    	je     execute_command_reference_1
   52695:	ba 07 00 00 00       	mov    edx,0x7
   5269a:	a1 94 60 02 00       	mov    eax,ds:@obj3:pointer                                         ; fixup: num: 12691, src obj: 1, src ofs: 0x5269b, dst obj: 3, dst ofs: 0x26094
   5269f:	e8 ec 72 01 00       	call   set_pointer
   526a4:	85 f6                	test   esi,esi
   526a6:	74 0c                	je     execute_command_branch_173
   526a8:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 12690, src obj: 1, src ofs: 0x526a9, dst obj: 3, dst ofs: 0x25a88
   526ad:	89 f2                	mov    edx,esi
   526af:	e8 7c 9a ff ff       	call   insert_bitmap
execute_command_branch_173:
   526b4:	31 d2                	xor    edx,edx
execute_command_branch_174:
   526b6:	3a 15 74 59 02 00    	cmp    dl,BYTE PTR ds:@obj3:left_button                             ; fixup: num: 12689, src obj: 1, src ofs: 0x526b8, dst obj: 3, dst ofs: 0x25974
   526bc:	75 0c                	jne    execute_command_branch_175
   526be:	66 8b 0d 08 59 02 00 	mov    cx,WORD PTR ds:@obj3:raw_key                                 ; fixup: num: 12688, src obj: 1, src ofs: 0x526c1, dst obj: 3, dst ofs: 0x25908
   526c5:	66 39 ca             	cmp    dx,cx
   526c8:	74 16                	je     execute_command_branch_176
execute_command_branch_175:
   526ca:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 12687, src obj: 1, src ofs: 0x526cb, dst obj: 3, dst ofs: 0x25a84
   526cf:	e8 cc b5 ff ff       	call   update_mod_84
   526d4:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 12804, src obj: 1, src ofs: 0x526d5, dst obj: 3, dst ofs: 0x1a1d4
   526d9:	e8 c2 92 fb ff       	call   update_mod_9
   526de:	eb d6                	jmp    execute_command_branch_174
execute_command_branch_176:
   526e0:	31 ca                	xor    edx,ecx
execute_command_branch_177:
   526e2:	8a 2d 74 59 02 00    	mov    ch,BYTE PTR ds:@obj3:left_button                             ; fixup: num: 12803, src obj: 1, src ofs: 0x526e4, dst obj: 3, dst ofs: 0x25974
   526e8:	38 ea                	cmp    dl,ch
   526ea:	75 27                	jne    execute_command_branch_178
   526ec:	3a 2d 72 59 02 00    	cmp    ch,BYTE PTR ds:@obj3:right_button                            ; fixup: num: 12802, src obj: 1, src ofs: 0x526ee, dst obj: 3, dst ofs: 0x25972
   526f2:	75 1f                	jne    execute_command_branch_178
   526f4:	66 3b 15 08 59 02 00 	cmp    dx,WORD PTR ds:@obj3:raw_key                                 ; fixup: num: 12801, src obj: 1, src ofs: 0x526f7, dst obj: 3, dst ofs: 0x25908
   526fb:	75 16                	jne    execute_command_branch_178
   526fd:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 12800, src obj: 1, src ofs: 0x526fe, dst obj: 3, dst ofs: 0x25a84
   52702:	e8 99 b5 ff ff       	call   update_mod_84
   52707:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 12799, src obj: 1, src ofs: 0x52708, dst obj: 3, dst ofs: 0x1a1d4
   5270c:	e8 8f 92 fb ff       	call   update_mod_9
   52711:	eb cf                	jmp    execute_command_branch_177
execute_command_branch_178:
   52713:	85 db                	test   ebx,ebx
   52715:	74 10                	je     execute_command_branch_179
   52717:	74 0e                	je     execute_command_branch_179
   52719:	89 d8                	mov    eax,ebx
   5271b:	31 d2                	xor    edx,edx
   5271d:	e8 fe 77 ff ff       	call   W?$dt:TEXTBM$n()_
   52722:	e8 51 f9 01 00       	call   W?$dln(pnv)v
execute_command_branch_179:
   52727:	85 f6                	test   esi,esi
   52729:	74 0c                	je     execute_command_branch_180
   5272b:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 12703, src obj: 1, src ofs: 0x5272c, dst obj: 3, dst ofs: 0x25a88
   52730:	89 f2                	mov    edx,esi
   52732:	e8 b9 9f ff ff       	call   remove_bitmap
execute_command_branch_180:
   52737:	31 d2                	xor    edx,edx
execute_command_branch_181:
   52739:	3a 15 74 59 02 00    	cmp    dl,BYTE PTR ds:@obj3:left_button                             ; fixup: num: 12702, src obj: 1, src ofs: 0x5273b, dst obj: 3, dst ofs: 0x25974
   5273f:	75 17                	jne    execute_command_branch_182
   52741:	66 a1 08 59 02 00    	mov    ax,ds:@obj3:raw_key                                          ; fixup: num: 12701, src obj: 1, src ofs: 0x52743, dst obj: 3, dst ofs: 0x25908
   52747:	66 39 c2             	cmp    dx,ax
   5274a:	75 0c                	jne    execute_command_branch_182
   5274c:	3a 05 72 59 02 00    	cmp    al,BYTE PTR ds:@obj3:right_button                            ; fixup: num: 12700, src obj: 1, src ofs: 0x5274e, dst obj: 3, dst ofs: 0x25972
   52752:	0f 84 e2 e7 ff ff    	je     execute_command_reference_1
execute_command_branch_182:
   52758:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 12699, src obj: 1, src ofs: 0x52759, dst obj: 3, dst ofs: 0x25a84
   5275d:	e8 3e b5 ff ff       	call   update_mod_84
   52762:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 12698, src obj: 1, src ofs: 0x52763, dst obj: 3, dst ofs: 0x1a1d4
   52767:	e8 34 92 fb ff       	call   update_mod_9
   5276c:	eb cb                	jmp    execute_command_branch_181
execute_command_reference_46:
   5276e:	8b 45 6a             	mov    eax,DWORD PTR [ebp+0x6a]
   52771:	8b 78 08             	mov    edi,DWORD PTR [eax+0x8]
   52774:	85 ff                	test   edi,edi
   52776:	0f 84 be e7 ff ff    	je     execute_command_reference_1
   5277c:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 12697, src obj: 1, src ofs: 0x5277d, dst obj: 3, dst ofs: 0x1a1d4
   52781:	89 fa                	mov    edx,edi
   52783:	e8 38 98 fb ff       	call   change_music_file
   52788:	a1 80 60 02 00       	mov    eax,ds:@obj3:current_music_file                              ; fixup: num: 12696, src obj: 1, src ofs: 0x52789, dst obj: 3, dst ofs: 0x26080
   5278d:	85 c0                	test   eax,eax
   5278f:	74 0d                	je     execute_command_branch_183
   52791:	31 d2                	xor    edx,edx
   52793:	e8 50 ec 01 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   52798:	89 15 80 60 02 00    	mov    DWORD PTR ds:@obj3:current_music_file,edx                    ; fixup: num: 12695, src obj: 1, src ofs: 0x5279a, dst obj: 3, dst ofs: 0x26080
execute_command_branch_183:
   5279e:	8b 7d 6a             	mov    edi,DWORD PTR [ebp+0x6a]
   527a1:	8b 7f 08             	mov    edi,DWORD PTR [edi+0x8]
   527a4:	29 c9                	sub    ecx,ecx
   527a6:	49                   	dec    ecx
   527a7:	31 c0                	xor    eax,eax
   527a9:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
   527ab:	f7 d1                	not    ecx
   527ad:	49                   	dec    ecx
   527ae:	8d 41 01             	lea    eax,[ecx+0x1]
   527b1:	8b 75 6a             	mov    esi,DWORD PTR [ebp+0x6a]
   527b4:	e8 da ec 01 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   527b9:	89 c7                	mov    edi,eax
   527bb:	8b 76 08             	mov    esi,DWORD PTR [esi+0x8]
   527be:	a3 80 60 02 00       	mov    ds:@obj3:current_music_file,eax                              ; fixup: num: 12694, src obj: 1, src ofs: 0x527bf, dst obj: 3, dst ofs: 0x26080
   527c3:	57                   	push   edi
execute_command_branch_184:
   527c4:	8a 06                	mov    al,BYTE PTR [esi]
   527c6:	88 07                	mov    BYTE PTR [edi],al
   527c8:	3c 00                	cmp    al,0x0
   527ca:	74 10                	je     execute_command_branch_185
   527cc:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   527cf:	83 c6 02             	add    esi,0x2
   527d2:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   527d5:	83 c7 02             	add    edi,0x2
   527d8:	3c 00                	cmp    al,0x0
   527da:	75 e8                	jne    execute_command_branch_184
execute_command_branch_185:
   527dc:	5f                   	pop    edi
   527dd:	e9 58 e7 ff ff       	jmp    execute_command_reference_1
execute_command_reference_47:
   527e2:	a1 c4 5a 02 00       	mov    eax,ds:@obj3:current_room                                    ; fixup: num: 12717, src obj: 1, src ofs: 0x527e3, dst obj: 3, dst ofs: 0x25ac4
   527e7:	8b 78 34             	mov    edi,DWORD PTR [eax+0x34]
   527ea:	85 ff                	test   edi,edi
   527ec:	74 1c                	je     execute_command_branch_186
   527ee:	b9 7f 0a 00 00       	mov    ecx,0xa7f
   527f3:	bb a0 c9 00 00       	mov    ebx,@obj3:scrpties_cpp_variable_211                          ; fixup: num: 12716, src obj: 1, src ofs: 0x527f4, dst obj: 3, dst ofs: 0xc9a0
   527f8:	8b 15 84 60 02 00    	mov    edx,DWORD PTR ds:@obj3:palette                               ; fixup: num: 12715, src obj: 1, src ofs: 0x527fa, dst obj: 3, dst ofs: 0x26084
   527fe:	89 f8                	mov    eax,edi
   52800:	e8 db a5 fb ff       	call   XFILE_read2
   52805:	a3 84 60 02 00       	mov    ds:@obj3:palette,eax                                         ; fixup: num: 12714, src obj: 1, src ofs: 0x52806, dst obj: 3, dst ofs: 0x26084
execute_command_branch_186:
   5280a:	80 3d 7e 60 02 00 00 	cmp    BYTE PTR ds:@obj3:faded_in,0x0                               ; fixup: num: 12713, src obj: 1, src ofs: 0x5280c, dst obj: 3, dst ofs: 0x2607e
   52811:	75 5e                	jne    execute_command_branch_189
   52813:	83 3d 84 60 02 00 00 	cmp    DWORD PTR ds:@obj3:palette,0x0                               ; fixup: num: 12712, src obj: 1, src ofs: 0x52815, dst obj: 3, dst ofs: 0x26084
   5281a:	74 55                	je     execute_command_branch_189
   5281c:	8b 15 c4 5a 02 00    	mov    edx,DWORD PTR ds:@obj3:current_room                          ; fixup: num: 12711, src obj: 1, src ofs: 0x5281e, dst obj: 3, dst ofs: 0x25ac4
   52822:	85 d2                	test   edx,edx
   52824:	74 4b                	je     execute_command_branch_189
   52826:	80 7a 44 00          	cmp    BYTE PTR [edx+0x44],0x0
   5282a:	74 22                	je     execute_command_branch_187
   5282c:	b8 ad c9 00 00       	mov    eax,@obj3:scrpties_cpp_variable_212                          ; fixup: num: 12710, src obj: 1, src ofs: 0x5282d, dst obj: 3, dst ofs: 0xc9ad
   52831:	e8 5a 9f 01 00       	call   check_script_flag
   52836:	84 c0                	test   al,al
   52838:	75 14                	jne    execute_command_branch_187
   5283a:	dd 05 b4 0f 01 00    	fld    QWORD PTR ds:@obj3:pal_gamma                                 ; fixup: num: 12709, src obj: 1, src ofs: 0x5283c, dst obj: 3, dst ofs: 0x10fb4
   52840:	dc 05 10 cb 00 00    	fadd   QWORD PTR ds:@obj3:scrpties_cpp_variable_222                 ; fixup: num: 12708, src obj: 1, src ofs: 0x52842, dst obj: 3, dst ofs: 0xcb10
   52846:	83 ec 08             	sub    esp,0x8
   52849:	dd 1c 24             	fstp   QWORD PTR [esp]
   5284c:	eb 0e                	jmp    execute_command_branch_188
execute_command_branch_187:
   5284e:	8b 1d b8 0f 01 00    	mov    ebx,DWORD PTR ds:@obj3:pal_gamma_variable_1                  ; fixup: num: 12707, src obj: 1, src ofs: 0x52850, dst obj: 3, dst ofs: 0x10fb8
   52854:	53                   	push   ebx
   52855:	8b 0d b4 0f 01 00    	mov    ecx,DWORD PTR ds:@obj3:pal_gamma                             ; fixup: num: 12706, src obj: 1, src ofs: 0x52857, dst obj: 3, dst ofs: 0x10fb4
   5285b:	51                   	push   ecx
execute_command_branch_188:
   5285c:	6a 00                	push   0x0
   5285e:	6a 00                	push   0x0
   52860:	a1 84 60 02 00       	mov    eax,ds:@obj3:palette                                         ; fixup: num: 12705, src obj: 1, src ofs: 0x52861, dst obj: 3, dst ofs: 0x26084
   52865:	e8 c6 11 fc ff       	call   fade
   5286a:	c6 05 7e 60 02 00 01 	mov    BYTE PTR ds:@obj3:faded_in,0x1                               ; fixup: num: 12704, src obj: 1, src ofs: 0x5286c, dst obj: 3, dst ofs: 0x2607e
execute_command_branch_189:
   52871:	8b 45 6a             	mov    eax,DWORD PTR [ebp+0x6a]
   52874:	31 d2                	xor    edx,edx
   52876:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
   52879:	e8 d2 75 01 00       	call   start_dialog
   5287e:	84 c0                	test   al,al
   52880:	75 19                	jne    execute_command_branch_190
   52882:	8b 45 6a             	mov    eax,DWORD PTR [ebp+0x6a]
   52885:	8b 70 08             	mov    esi,DWORD PTR [eax+0x8]
   52888:	56                   	push   esi
   52889:	68 b6 c9 00 00       	push   @obj3:scrpties_cpp_variable_213                              ; fixup: num: 12726, src obj: 1, src ofs: 0x5288a, dst obj: 3, dst ofs: 0xc9b6
   5288e:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 12725, src obj: 1, src ofs: 0x5288f, dst obj: 3, dst ofs: 0x237fc
   52893:	e8 49 e3 01 00       	call   sprintf_
   52898:	83 c4 0c             	add    esp,0xc
execute_command_branch_190:
   5289b:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 12724, src obj: 1, src ofs: 0x5289d, dst obj: 3, dst ofs: 0x25974
   528a2:	75 f7                	jne    execute_command_branch_190
   528a4:	83 3d bc 60 02 00 00 	cmp    DWORD PTR ds:@obj3:godeathflic_demands,0x0                   ; fixup: num: 12723, src obj: 1, src ofs: 0x528a6, dst obj: 3, dst ofs: 0x260bc
   528ab:	0f 85 9b e6 ff ff    	jne    execute_command_branch_5
   528b1:	e9 84 e6 ff ff       	jmp    execute_command_reference_1
execute_command_reference_48:
   528b6:	31 c0                	xor    eax,eax
   528b8:	69 c8 90 00 00 00    	imul   ecx,eax,0x90
   528be:	69 f8 90 00 00 00    	imul   edi,eax,0x90
   528c4:	81 c1 f8 5b 02 00    	add    ecx,@obj3:global_wav_file                                    ; fixup: num: 12722, src obj: 1, src ofs: 0x528c6, dst obj: 3, dst ofs: 0x25bf8
   528ca:	8d 1c 85 00 00 00 00 	lea    ebx,[eax*4+0x0]
   528d1:	eb 14                	jmp    execute_command_branch_192
execute_command_branch_191:
   528d3:	81 c1 90 00 00 00    	add    ecx,0x90
   528d9:	83 c3 04             	add    ebx,0x4
   528dc:	81 c7 90 00 00 00    	add    edi,0x90
   528e2:	83 fb 20             	cmp    ebx,0x20
   528e5:	74 5c                	je     execute_command_branch_195
execute_command_branch_192:
   528e7:	83 bb d8 5b 02 00 00 	cmp    DWORD PTR [ebx+@obj3:global_wav],0x0                         ; fixup: num: 12721, src obj: 1, src ofs: 0x528e9, dst obj: 3, dst ofs: 0x25bd8
   528ee:	74 e3                	je     execute_command_branch_191
   528f0:	8b 55 6a             	mov    edx,DWORD PTR [ebp+0x6a]
   528f3:	89 c8                	mov    eax,ecx
   528f5:	8b 52 08             	mov    edx,DWORD PTR [edx+0x8]
   528f8:	e8 33 3b 02 00       	call   strcmp_
   528fd:	85 c0                	test   eax,eax
   528ff:	75 d2                	jne    execute_command_branch_191
   52901:	8b 83 d8 5b 02 00    	mov    eax,DWORD PTR [ebx+@obj3:global_wav]                         ; fixup: num: 12720, src obj: 1, src ofs: 0x52903, dst obj: 3, dst ofs: 0x25bd8
   52907:	e8 d4 6f fb ff       	call   playing
   5290c:	84 c0                	test   al,al
   5290e:	74 0b                	je     execute_command_branch_193
   52910:	8b 83 d8 5b 02 00    	mov    eax,DWORD PTR [ebx+@obj3:global_wav]                         ; fixup: num: 12719, src obj: 1, src ofs: 0x52912, dst obj: 3, dst ofs: 0x25bd8
   52916:	e8 25 6f fb ff       	call   stop
execute_command_branch_193:
   5291b:	8b 83 d8 5b 02 00    	mov    eax,DWORD PTR [ebx+@obj3:global_wav]                         ; fixup: num: 12718, src obj: 1, src ofs: 0x5291d, dst obj: 3, dst ofs: 0x25bd8
   52921:	85 c0                	test   eax,eax
   52923:	74 0c                	je     execute_command_branch_194
   52925:	31 d2                	xor    edx,edx
   52927:	e8 04 61 fb ff       	call   W?$dt:SOUND$n()_
   5292c:	e8 47 f7 01 00       	call   W?$dln(pnv)v
execute_command_branch_194:
   52931:	31 f6                	xor    esi,esi
   52933:	30 f6                	xor    dh,dh
   52935:	89 b3 d8 5b 02 00    	mov    DWORD PTR [ebx+@obj3:global_wav],esi                         ; fixup: num: 12735, src obj: 1, src ofs: 0x52937, dst obj: 3, dst ofs: 0x25bd8
   5293b:	88 b7 f8 5b 02 00    	mov    BYTE PTR [edi+@obj3:global_wav_file],dh                      ; fixup: num: 12734, src obj: 1, src ofs: 0x5293d, dst obj: 3, dst ofs: 0x25bf8
   52941:	eb 90                	jmp    execute_command_branch_191
execute_command_branch_195:
   52943:	8b 45 6a             	mov    eax,DWORD PTR [ebp+0x6a]
   52946:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
   52949:	e8 32 a3 fb ff       	call   XFILE_size
   5294e:	85 c0                	test   eax,eax
   52950:	0f 8e e4 e5 ff ff    	jle    execute_command_reference_1
   52956:	8b 1d 78 60 02 00    	mov    ebx,DWORD PTR ds:@obj3:current_global_wav                    ; fixup: num: 12733, src obj: 1, src ofs: 0x52958, dst obj: 3, dst ofs: 0x26078
   5295c:	43                   	inc    ebx
   5295d:	89 1d 78 60 02 00    	mov    DWORD PTR ds:@obj3:current_global_wav,ebx                    ; fixup: num: 12732, src obj: 1, src ofs: 0x5295f, dst obj: 3, dst ofs: 0x26078
   52963:	83 fb 08             	cmp    ebx,0x8
   52966:	7c 08                	jl     execute_command_branch_196
   52968:	31 f6                	xor    esi,esi
   5296a:	89 35 78 60 02 00    	mov    DWORD PTR ds:@obj3:current_global_wav,esi                    ; fixup: num: 12731, src obj: 1, src ofs: 0x5296c, dst obj: 3, dst ofs: 0x26078
execute_command_branch_196:
   52970:	b8 88 00 00 00       	mov    eax,0x88
   52975:	e8 9e f5 01 00       	call   W?$nwn(ui)pnv
   5297a:	85 c0                	test   eax,eax
   5297c:	74 0b                	je     execute_command_branch_197
   5297e:	8b 55 6a             	mov    edx,DWORD PTR [ebp+0x6a]
   52981:	8b 52 08             	mov    edx,DWORD PTR [edx+0x8]
   52984:	e8 e7 5a fb ff       	call   W?$ct:SOUND$n(pna)_
execute_command_branch_197:
   52989:	89 c2                	mov    edx,eax
   5298b:	a1 78 60 02 00       	mov    eax,ds:@obj3:current_global_wav                              ; fixup: num: 12730, src obj: 1, src ofs: 0x5298c, dst obj: 3, dst ofs: 0x26078
   52990:	8d 04 85 00 00 00 00 	lea    eax,[eax*4+0x0]
   52997:	89 90 d8 5b 02 00    	mov    DWORD PTR [eax+@obj3:global_wav],edx                         ; fixup: num: 12729, src obj: 1, src ofs: 0x52999, dst obj: 3, dst ofs: 0x25bd8
   5299d:	85 d2                	test   edx,edx
   5299f:	0f 84 95 e5 ff ff    	je     execute_command_reference_1
   529a5:	89 d0                	mov    eax,edx
   529a7:	e8 04 6e fb ff       	call   play
   529ac:	69 3d 78 60 02 00 90 00 00 00 	imul   edi,DWORD PTR ds:@obj3:current_global_wav,0x90      ; fixup: num: 12728, src obj: 1, src ofs: 0x529ae, dst obj: 3, dst ofs: 0x26078
   529b6:	8b 75 6a             	mov    esi,DWORD PTR [ebp+0x6a]
   529b9:	8b 76 08             	mov    esi,DWORD PTR [esi+0x8]
   529bc:	81 c7 f8 5b 02 00    	add    edi,@obj3:global_wav_file                                    ; fixup: num: 12727, src obj: 1, src ofs: 0x529be, dst obj: 3, dst ofs: 0x25bf8
   529c2:	57                   	push   edi
execute_command_branch_198:
   529c3:	8a 06                	mov    al,BYTE PTR [esi]
   529c5:	88 07                	mov    BYTE PTR [edi],al
   529c7:	3c 00                	cmp    al,0x0
   529c9:	74 10                	je     execute_command_branch_199
   529cb:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   529ce:	83 c6 02             	add    esi,0x2
   529d1:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   529d4:	83 c7 02             	add    edi,0x2
   529d7:	3c 00                	cmp    al,0x0
   529d9:	75 e8                	jne    execute_command_branch_198
execute_command_branch_199:
   529db:	5f                   	pop    edi
   529dc:	e9 59 e5 ff ff       	jmp    execute_command_reference_1
execute_command_reference_49:
   529e1:	8b 45 6a             	mov    eax,DWORD PTR [ebp+0x6a]
   529e4:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
   529e7:	e8 94 a2 fb ff       	call   XFILE_size
   529ec:	85 c0                	test   eax,eax
   529ee:	7e 6a                	jle    execute_command_branch_203
   529f0:	8b 45 6a             	mov    eax,DWORD PTR [ebp+0x6a]
   529f3:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
   529f6:	e8 d9 3f 02 00       	call   atoi_
   529fb:	89 c3                	mov    ebx,eax
   529fd:	85 c0                	test   eax,eax
   529ff:	7c 05                	jl     execute_command_branch_200
   52a01:	83 f8 04             	cmp    eax,0x4
   52a04:	7c 18                	jl     execute_command_branch_201
execute_command_branch_200:
   52a06:	53                   	push   ebx
   52a07:	68 ef c9 00 00       	push   @obj3:scrpties_cpp_variable_214                              ; fixup: num: 12741, src obj: 1, src ofs: 0x52a08, dst obj: 3, dst ofs: 0xc9ef
   52a0c:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 12740, src obj: 1, src ofs: 0x52a0d, dst obj: 3, dst ofs: 0x237fc
   52a11:	e8 cb e1 01 00       	call   sprintf_
   52a16:	83 c4 0c             	add    esp,0xc
   52a19:	e9 1c e5 ff ff       	jmp    execute_command_reference_1
execute_command_branch_201:
   52a1e:	b8 88 00 00 00       	mov    eax,0x88
   52a23:	e8 f0 f4 01 00       	call   W?$nwn(ui)pnv
   52a28:	85 c0                	test   eax,eax
   52a2a:	74 0b                	je     execute_command_branch_202
   52a2c:	8b 55 6a             	mov    edx,DWORD PTR [ebp+0x6a]
   52a2f:	8b 52 08             	mov    edx,DWORD PTR [edx+0x8]
   52a32:	e8 39 5a fb ff       	call   W?$ct:SOUND$n(pna)_
execute_command_branch_202:
   52a37:	89 04 9d 18 5b 02 00 	mov    DWORD PTR [ebx*4+@obj3:preloaded_wav],eax                    ; fixup: num: 12739, src obj: 1, src ofs: 0x52a3a, dst obj: 3, dst ofs: 0x25b18
   52a3e:	85 c0                	test   eax,eax
   52a40:	0f 85 f4 e4 ff ff    	jne    execute_command_reference_1
   52a46:	bb 19 ca 00 00       	mov    ebx,@obj3:scrpties_cpp_variable_215                          ; fixup: num: 12738, src obj: 1, src ofs: 0x52a47, dst obj: 3, dst ofs: 0xca19
   52a4b:	ba c3 0a 00 00       	mov    edx,0xac3
   52a50:	e8 db 55 fe ff       	call   _error_report
   52a55:	e9 e0 e4 ff ff       	jmp    execute_command_reference_1
execute_command_branch_203:
   52a5a:	8b 45 6a             	mov    eax,DWORD PTR [ebp+0x6a]
   52a5d:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
   52a60:	52                   	push   edx
   52a61:	68 31 ca 00 00       	push   @obj3:scrpties_cpp_variable_216                              ; fixup: num: 12737, src obj: 1, src ofs: 0x52a62, dst obj: 3, dst ofs: 0xca31
   52a66:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 12736, src obj: 1, src ofs: 0x52a67, dst obj: 3, dst ofs: 0x237fc
   52a6b:	e8 71 e1 01 00       	call   sprintf_
   52a70:	83 c4 0c             	add    esp,0xc
   52a73:	e9 c2 e4 ff ff       	jmp    execute_command_reference_1
execute_command_reference_50:                                                                       ; access size: DWORD
   52a78:	8b 45 6a             	mov    eax,DWORD PTR [ebp+0x6a]
   52a7b:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
   52a7e:	e8 51 3f 02 00       	call   atoi_
   52a83:	89 c2                	mov    edx,eax
   52a85:	85 c0                	test   eax,eax
   52a87:	7c 05                	jl     execute_command_branch_204
   52a89:	83 f8 04             	cmp    eax,0x4
   52a8c:	7c 18                	jl     execute_command_branch_205
execute_command_branch_204:
   52a8e:	52                   	push   edx
   52a8f:	68 43 ca 00 00       	push   @obj3:scrpties_cpp_variable_217                              ; fixup: num: 12648, src obj: 1, src ofs: 0x52a90, dst obj: 3, dst ofs: 0xca43
   52a94:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 12647, src obj: 1, src ofs: 0x52a95, dst obj: 3, dst ofs: 0x237fc
   52a99:	e8 43 e1 01 00       	call   sprintf_
   52a9e:	83 c4 0c             	add    esp,0xc
   52aa1:	e9 94 e4 ff ff       	jmp    execute_command_reference_1
execute_command_branch_205:
   52aa6:	8d 14 85 00 00 00 00 	lea    edx,[eax*4+0x0]
   52aad:	8b ba 18 5b 02 00    	mov    edi,DWORD PTR [edx+@obj3:preloaded_wav]                      ; fixup: num: 12646, src obj: 1, src ofs: 0x52aaf, dst obj: 3, dst ofs: 0x25b18
   52ab3:	85 ff                	test   edi,edi
   52ab5:	75 18                	jne    execute_command_branch_206
   52ab7:	50                   	push   eax
   52ab8:	68 6d ca 00 00       	push   @obj3:scrpties_cpp_variable_218                              ; fixup: num: 12645, src obj: 1, src ofs: 0x52ab9, dst obj: 3, dst ofs: 0xca6d
   52abd:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 12644, src obj: 1, src ofs: 0x52abe, dst obj: 3, dst ofs: 0x237fc
   52ac2:	e8 1a e1 01 00       	call   sprintf_
   52ac7:	83 c4 0c             	add    esp,0xc
   52aca:	e9 6b e4 ff ff       	jmp    execute_command_reference_1
execute_command_branch_206:
   52acf:	89 f8                	mov    eax,edi
   52ad1:	e8 da 6c fb ff       	call   play
   52ad6:	e9 5f e4 ff ff       	jmp    execute_command_reference_1
execute_command_reference_51:
   52adb:	8b 45 6a             	mov    eax,DWORD PTR [ebp+0x6a]
   52ade:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
   52ae1:	e8 ee 3e 02 00       	call   atoi_
   52ae6:	89 c3                	mov    ebx,eax
   52ae8:	85 c0                	test   eax,eax
   52aea:	7c 05                	jl     execute_command_branch_207
   52aec:	83 f8 04             	cmp    eax,0x4
   52aef:	7c 18                	jl     execute_command_branch_208
execute_command_branch_207:
   52af1:	53                   	push   ebx
   52af2:	68 93 ca 00 00       	push   @obj3:scrpties_cpp_variable_219                              ; fixup: num: 12643, src obj: 1, src ofs: 0x52af3, dst obj: 3, dst ofs: 0xca93
   52af7:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 12642, src obj: 1, src ofs: 0x52af8, dst obj: 3, dst ofs: 0x237fc
   52afc:	e8 e0 e0 01 00       	call   sprintf_
   52b01:	83 c4 0c             	add    esp,0xc
   52b04:	e9 31 e4 ff ff       	jmp    execute_command_reference_1
execute_command_branch_208:
   52b09:	8d 14 85 00 00 00 00 	lea    edx,[eax*4+0x0]
   52b10:	8b 8a 18 5b 02 00    	mov    ecx,DWORD PTR [edx+@obj3:preloaded_wav]                      ; fixup: num: 12744, src obj: 1, src ofs: 0x52b12, dst obj: 3, dst ofs: 0x25b18
   52b16:	85 c9                	test   ecx,ecx
   52b18:	75 18                	jne    execute_command_branch_209
   52b1a:	50                   	push   eax
   52b1b:	68 bd ca 00 00       	push   @obj3:scrpties_cpp_variable_220                              ; fixup: num: 12743, src obj: 1, src ofs: 0x52b1c, dst obj: 3, dst ofs: 0xcabd
   52b20:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 12742, src obj: 1, src ofs: 0x52b21, dst obj: 3, dst ofs: 0x237fc
   52b25:	e8 b7 e0 01 00       	call   sprintf_
   52b2a:	83 c4 0c             	add    esp,0xc
   52b2d:	e9 08 e4 ff ff       	jmp    execute_command_reference_1
execute_command_branch_209:
   52b32:	89 c8                	mov    eax,ecx
   52b34:	74 0c                	je     execute_command_branch_210
   52b36:	31 d2                	xor    edx,edx
   52b38:	e8 f3 5e fb ff       	call   W?$dt:SOUND$n()_
   52b3d:	e8 36 f5 01 00       	call   W?$dln(pnv)v
execute_command_branch_210:
   52b42:	31 f6                	xor    esi,esi
   52b44:	89 34 9d 18 5b 02 00 	mov    DWORD PTR [ebx*4+@obj3:preloaded_wav],esi                    ; fixup: num: 12656, src obj: 1, src ofs: 0x52b47, dst obj: 3, dst ofs: 0x25b18
   52b4b:	e9 ea e3 ff ff       	jmp    execute_command_reference_1
execute_command_reference_52:                                                                       ; access size: DWORD
   52b50:	8b 35 d8 5b 02 00    	mov    esi,DWORD PTR ds:@obj3:global_wav                            ; fixup: num: 12655, src obj: 1, src ofs: 0x52b52, dst obj: 3, dst ofs: 0x25bd8
   52b56:	85 f6                	test   esi,esi
   52b58:	74 3a                	je     execute_command_branch_213
   52b5a:	89 f0                	mov    eax,esi
   52b5c:	e8 7f 6d fb ff       	call   playing
   52b61:	84 c0                	test   al,al
   52b63:	74 0a                	je     execute_command_branch_211
   52b65:	a1 d8 5b 02 00       	mov    eax,ds:@obj3:global_wav                                      ; fixup: num: 12654, src obj: 1, src ofs: 0x52b66, dst obj: 3, dst ofs: 0x25bd8
   52b6a:	e8 d1 6c fb ff       	call   stop
execute_command_branch_211:
   52b6f:	a1 d8 5b 02 00       	mov    eax,ds:@obj3:global_wav                                      ; fixup: num: 12653, src obj: 1, src ofs: 0x52b70, dst obj: 3, dst ofs: 0x25bd8
   52b74:	85 c0                	test   eax,eax
   52b76:	74 0c                	je     execute_command_branch_212
   52b78:	31 d2                	xor    edx,edx
   52b7a:	e8 b1 5e fb ff       	call   W?$dt:SOUND$n()_
   52b7f:	e8 f4 f4 01 00       	call   W?$dln(pnv)v
execute_command_branch_212:
   52b84:	31 ff                	xor    edi,edi
   52b86:	30 d2                	xor    dl,dl
   52b88:	89 3d d8 5b 02 00    	mov    DWORD PTR ds:@obj3:global_wav,edi                            ; fixup: num: 12652, src obj: 1, src ofs: 0x52b8a, dst obj: 3, dst ofs: 0x25bd8
   52b8e:	88 15 f8 5b 02 00    	mov    BYTE PTR ds:@obj3:global_wav_file,dl                         ; fixup: num: 12651, src obj: 1, src ofs: 0x52b90, dst obj: 3, dst ofs: 0x25bf8
execute_command_branch_213:
   52b94:	8b 45 6a             	mov    eax,DWORD PTR [ebp+0x6a]
   52b97:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
   52b9a:	e8 e1 a0 fb ff       	call   XFILE_size
   52b9f:	85 c0                	test   eax,eax
   52ba1:	0f 8e 93 e3 ff ff    	jle    execute_command_reference_1
   52ba7:	b8 88 00 00 00       	mov    eax,0x88
   52bac:	e8 67 f3 01 00       	call   W?$nwn(ui)pnv
   52bb1:	85 c0                	test   eax,eax
   52bb3:	74 0b                	je     execute_command_branch_214
   52bb5:	8b 55 6a             	mov    edx,DWORD PTR [ebp+0x6a]
   52bb8:	8b 52 08             	mov    edx,DWORD PTR [edx+0x8]
   52bbb:	e8 b0 58 fb ff       	call   W?$ct:SOUND$n(pna)_
execute_command_branch_214:
   52bc0:	a3 d8 5b 02 00       	mov    ds:@obj3:global_wav,eax                                      ; fixup: num: 12650, src obj: 1, src ofs: 0x52bc1, dst obj: 3, dst ofs: 0x25bd8
   52bc5:	85 c0                	test   eax,eax
   52bc7:	0f 84 6d e3 ff ff    	je     execute_command_reference_1
   52bcd:	8b 75 6a             	mov    esi,DWORD PTR [ebp+0x6a]
   52bd0:	e8 db 6b fb ff       	call   play
   52bd5:	bf f8 5b 02 00       	mov    edi,@obj3:global_wav_file                                    ; fixup: num: 12649, src obj: 1, src ofs: 0x52bd6, dst obj: 3, dst ofs: 0x25bf8
   52bda:	8b 76 08             	mov    esi,DWORD PTR [esi+0x8]
   52bdd:	57                   	push   edi
execute_command_branch_215:
   52bde:	8a 06                	mov    al,BYTE PTR [esi]
   52be0:	88 07                	mov    BYTE PTR [edi],al
   52be2:	3c 00                	cmp    al,0x0
   52be4:	74 10                	je     execute_command_branch_216
   52be6:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   52be9:	83 c6 02             	add    esi,0x2
   52bec:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   52bef:	83 c7 02             	add    edi,0x2
   52bf2:	3c 00                	cmp    al,0x0
   52bf4:	75 e8                	jne    execute_command_branch_215
execute_command_branch_216:
   52bf6:	5f                   	pop    edi
   52bf7:	e9 3e e3 ff ff       	jmp    execute_command_reference_1
execute_command_reference_53:
   52bfc:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 12662, src obj: 1, src ofs: 0x52bfd, dst obj: 3, dst ofs: 0x25a84
   52c01:	e8 9a b0 ff ff       	call   update_mod_84
   52c06:	e9 2f e3 ff ff       	jmp    execute_command_reference_1
execute_command_reference_54:
   52c0b:	8b 45 6a             	mov    eax,DWORD PTR [ebp+0x6a]
   52c0e:	8b 38                	mov    edi,DWORD PTR [eax]
   52c10:	57                   	push   edi
   52c11:	68 e4 ca 00 00       	push   @obj3:scrpties_cpp_variable_221                              ; fixup: num: 12661, src obj: 1, src ofs: 0x52c12, dst obj: 3, dst ofs: 0xcae4
   52c16:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 12660, src obj: 1, src ofs: 0x52c17, dst obj: 3, dst ofs: 0x237fc
   52c1b:	e8 c1 df 01 00       	call   sprintf_
   52c20:	83 c4 0c             	add    esp,0xc
   52c23:	e9 12 e3 ff ff       	jmp    execute_command_reference_1
execute_command_branch_217:
   52c28:	8b 45 6a             	mov    eax,DWORD PTR [ebp+0x6a]
   52c2b:	8b 00                	mov    eax,DWORD PTR [eax]
   52c2d:	83 f8 35             	cmp    eax,0x35
   52c30:	77 d9                	ja     execute_command_reference_54
   52c32:	2e ff 24 85 00 0e 05 00 	jmp    DWORD PTR cs:[eax*4+@obj1:execute_list_reference_1]       ; fixup: num: 12659, src obj: 1, src ofs: 0x52c36, dst obj: 1, dst ofs: 0x50e00
   52c3a:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'get_room'                           -
;-------------------------------------------------
get_room:
   52c40:	53                   	push   ebx
   52c41:	51                   	push   ecx
   52c42:	52                   	push   edx
   52c43:	89 c1                	mov    ecx,eax
   52c45:	85 c0                	test   eax,eax
   52c47:	74 27                	je     get_room_branch_4
   52c49:	8b 1d c8 5a 02 00    	mov    ebx,DWORD PTR ds:@obj3:room_list                             ; fixup: num: 12658, src obj: 1, src ofs: 0x52c4b, dst obj: 3, dst ofs: 0x25ac8
   52c4f:	85 db                	test   ebx,ebx
   52c51:	74 1b                	je     get_room_branch_3
get_room_branch_1:
   52c53:	89 ca                	mov    edx,ecx
   52c55:	8b 43 2c             	mov    eax,DWORD PTR [ebx+0x2c]
   52c58:	e8 d3 37 02 00       	call   strcmp_
   52c5d:	85 c0                	test   eax,eax
   52c5f:	75 06                	jne    get_room_branch_2
   52c61:	89 d8                	mov    eax,ebx
   52c63:	5a                   	pop    edx
   52c64:	59                   	pop    ecx
   52c65:	5b                   	pop    ebx
   52c66:	c3                   	ret    
get_room_branch_2:
   52c67:	8b 5b 48             	mov    ebx,DWORD PTR [ebx+0x48]
   52c6a:	85 db                	test   ebx,ebx
   52c6c:	75 e5                	jne    get_room_branch_1
get_room_branch_3:
   52c6e:	31 c0                	xor    eax,eax
get_room_branch_4:
   52c70:	5a                   	pop    edx
   52c71:	59                   	pop    ecx
   52c72:	5b                   	pop    ebx
   52c73:	c3                   	ret    
   52c74:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   52c7a:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]

;-------------------------------------------------
;  Function 'get_object'                         -
;-------------------------------------------------
get_object:
   52c80:	53                   	push   ebx
   52c81:	51                   	push   ecx
   52c82:	52                   	push   edx
   52c83:	89 c1                	mov    ecx,eax
   52c85:	85 c0                	test   eax,eax
   52c87:	74 2d                	je     get_object_branch_4
   52c89:	8b 1d bc 5a 02 00    	mov    ebx,DWORD PTR ds:@obj3:object_list                           ; fixup: num: 12657, src obj: 1, src ofs: 0x52c8b, dst obj: 3, dst ofs: 0x25abc
   52c8f:	85 db                	test   ebx,ebx
   52c91:	74 21                	je     get_object_branch_3
get_object_branch_1:
   52c93:	8b 53 30             	mov    edx,DWORD PTR [ebx+0x30]
   52c96:	85 d2                	test   edx,edx
   52c98:	74 13                	je     get_object_branch_2
   52c9a:	89 d0                	mov    eax,edx
   52c9c:	89 ca                	mov    edx,ecx
   52c9e:	e8 8d 37 02 00       	call   strcmp_
   52ca3:	85 c0                	test   eax,eax
   52ca5:	75 06                	jne    get_object_branch_2
   52ca7:	89 d8                	mov    eax,ebx
   52ca9:	5a                   	pop    edx
   52caa:	59                   	pop    ecx
   52cab:	5b                   	pop    ebx
   52cac:	c3                   	ret    
get_object_branch_2:
   52cad:	8b 5b 54             	mov    ebx,DWORD PTR [ebx+0x54]
   52cb0:	85 db                	test   ebx,ebx
   52cb2:	75 df                	jne    get_object_branch_1
get_object_branch_3:
   52cb4:	31 c0                	xor    eax,eax
get_object_branch_4:
   52cb6:	5a                   	pop    edx
   52cb7:	59                   	pop    ecx
   52cb8:	5b                   	pop    ebx
   52cb9:	c3                   	ret    
   52cba:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'get_anim'                           -
;-------------------------------------------------
get_anim:
   52cc0:	53                   	push   ebx
   52cc1:	51                   	push   ecx
   52cc2:	52                   	push   edx
   52cc3:	89 c1                	mov    ecx,eax
   52cc5:	85 c0                	test   eax,eax
   52cc7:	74 27                	je     get_anim_branch_4
   52cc9:	8b 1d 90 5a 02 00    	mov    ebx,DWORD PTR ds:@obj3:anim_list                             ; fixup: num: 12665, src obj: 1, src ofs: 0x52ccb, dst obj: 3, dst ofs: 0x25a90
   52ccf:	85 db                	test   ebx,ebx
   52cd1:	74 1b                	je     get_anim_branch_3
get_anim_branch_1:
   52cd3:	89 ca                	mov    edx,ecx
   52cd5:	8b 43 18             	mov    eax,DWORD PTR [ebx+0x18]
   52cd8:	e8 53 37 02 00       	call   strcmp_
   52cdd:	85 c0                	test   eax,eax
   52cdf:	75 06                	jne    get_anim_branch_2
   52ce1:	89 d8                	mov    eax,ebx
   52ce3:	5a                   	pop    edx
   52ce4:	59                   	pop    ecx
   52ce5:	5b                   	pop    ebx
   52ce6:	c3                   	ret    
get_anim_branch_2:
   52ce7:	8b 5b 28             	mov    ebx,DWORD PTR [ebx+0x28]
   52cea:	85 db                	test   ebx,ebx
   52cec:	75 e5                	jne    get_anim_branch_1
get_anim_branch_3:
   52cee:	31 c0                	xor    eax,eax
get_anim_branch_4:
   52cf0:	5a                   	pop    edx
   52cf1:	59                   	pop    ecx
   52cf2:	5b                   	pop    ebx
   52cf3:	c3                   	ret    
   52cf4:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   52cfa:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]

;-------------------------------------------------
;  Function 'get_npc'                            -
;-------------------------------------------------
get_npc:
   52d00:	53                   	push   ebx
   52d01:	51                   	push   ecx
   52d02:	52                   	push   edx
   52d03:	89 c1                	mov    ecx,eax
   52d05:	85 c0                	test   eax,eax
   52d07:	74 27                	je     get_npc_branch_4
   52d09:	8b 1d b8 5a 02 00    	mov    ebx,DWORD PTR ds:@obj3:npc_list                              ; fixup: num: 12664, src obj: 1, src ofs: 0x52d0b, dst obj: 3, dst ofs: 0x25ab8
   52d0f:	85 db                	test   ebx,ebx
   52d11:	74 1b                	je     get_npc_branch_3
get_npc_branch_1:
   52d13:	89 ca                	mov    edx,ecx
   52d15:	8b 43 18             	mov    eax,DWORD PTR [ebx+0x18]
   52d18:	e8 13 37 02 00       	call   strcmp_
   52d1d:	85 c0                	test   eax,eax
   52d1f:	75 06                	jne    get_npc_branch_2
   52d21:	89 d8                	mov    eax,ebx
   52d23:	5a                   	pop    edx
   52d24:	59                   	pop    ecx
   52d25:	5b                   	pop    ebx
   52d26:	c3                   	ret    
get_npc_branch_2:
   52d27:	8b 5b 38             	mov    ebx,DWORD PTR [ebx+0x38]
   52d2a:	85 db                	test   ebx,ebx
   52d2c:	75 e5                	jne    get_npc_branch_1
get_npc_branch_3:
   52d2e:	31 c0                	xor    eax,eax
get_npc_branch_4:
   52d30:	5a                   	pop    edx
   52d31:	59                   	pop    ecx
   52d32:	5b                   	pop    ebx
   52d33:	c3                   	ret    
   52d34:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   52d3a:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]

;-------------------------------------------------
;  Function 'get_monster'                        -
;-------------------------------------------------
get_monster:
   52d40:	53                   	push   ebx
   52d41:	51                   	push   ecx
   52d42:	52                   	push   edx
   52d43:	89 c1                	mov    ecx,eax
   52d45:	85 c0                	test   eax,eax
   52d47:	74 2a                	je     get_monster_branch_4
   52d49:	8b 1d b4 5a 02 00    	mov    ebx,DWORD PTR ds:@obj3:monster_list                          ; fixup: num: 12663, src obj: 1, src ofs: 0x52d4b, dst obj: 3, dst ofs: 0x25ab4
   52d4f:	85 db                	test   ebx,ebx
   52d51:	74 1e                	je     get_monster_branch_3
get_monster_branch_1:
   52d53:	89 ca                	mov    edx,ecx
   52d55:	8b 43 34             	mov    eax,DWORD PTR [ebx+0x34]
   52d58:	e8 d3 36 02 00       	call   strcmp_
   52d5d:	85 c0                	test   eax,eax
   52d5f:	75 06                	jne    get_monster_branch_2
   52d61:	89 d8                	mov    eax,ebx
   52d63:	5a                   	pop    edx
   52d64:	59                   	pop    ecx
   52d65:	5b                   	pop    ebx
   52d66:	c3                   	ret    
get_monster_branch_2:
   52d67:	8b 9b 90 00 00 00    	mov    ebx,DWORD PTR [ebx+0x90]
   52d6d:	85 db                	test   ebx,ebx
   52d6f:	75 e2                	jne    get_monster_branch_1
get_monster_branch_3:
   52d71:	31 c0                	xor    eax,eax
get_monster_branch_4:
   52d73:	5a                   	pop    edx
   52d74:	59                   	pop    ecx
   52d75:	5b                   	pop    ebx
   52d76:	c3                   	ret    
   52d77:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   52d7d:	8d 52 00             	lea    edx,[edx+0x0]

;-------------------------------------------------
;  Function 'get_entrance'                       -
;-------------------------------------------------
get_entrance:
   52d80:	53                   	push   ebx
   52d81:	51                   	push   ecx
   52d82:	52                   	push   edx
   52d83:	89 c3                	mov    ebx,eax
   52d85:	8b 0d 98 5a 02 00    	mov    ecx,DWORD PTR ds:@obj3:entrance_list                         ; fixup: num: 12671, src obj: 1, src ofs: 0x52d87, dst obj: 3, dst ofs: 0x25a98
   52d8b:	85 c0                	test   eax,eax
   52d8d:	0f 84 7b 00 00 00    	je     get_entrance_branch_7
get_entrance_branch_1:
   52d93:	85 c9                	test   ecx,ecx
   52d95:	74 21                	je     get_entrance_branch_3
   52d97:	89 da                	mov    edx,ebx
   52d99:	8b 41 14             	mov    eax,DWORD PTR [ecx+0x14]
   52d9c:	e8 8f 36 02 00       	call   strcmp_
   52da1:	85 c0                	test   eax,eax
   52da3:	75 0e                	jne    get_entrance_branch_2
   52da5:	8b 41 10             	mov    eax,DWORD PTR [ecx+0x10]
   52da8:	a3 a4 60 02 00       	mov    ds:@obj3:next_room,eax                                       ; fixup: num: 12670, src obj: 1, src ofs: 0x52da9, dst obj: 3, dst ofs: 0x260a4
   52dad:	89 c8                	mov    eax,ecx
   52daf:	5a                   	pop    edx
   52db0:	59                   	pop    ecx
   52db1:	5b                   	pop    ebx
   52db2:	c3                   	ret    
get_entrance_branch_2:
   52db3:	8b 49 18             	mov    ecx,DWORD PTR [ecx+0x18]
   52db6:	eb db                	jmp    get_entrance_branch_1
get_entrance_branch_3:
   52db8:	75 52                	jne    get_entrance_branch_6
   52dba:	8b 0d ac 5a 02 00    	mov    ecx,DWORD PTR ds:@obj3:map_entrance_list                     ; fixup: num: 12669, src obj: 1, src ofs: 0x52dbc, dst obj: 3, dst ofs: 0x25aac
   52dc0:	85 c9                	test   ecx,ecx
   52dc2:	74 48                	je     get_entrance_branch_6
get_entrance_branch_4:
   52dc4:	89 da                	mov    edx,ebx
   52dc6:	8b 41 0c             	mov    eax,DWORD PTR [ecx+0xc]
   52dc9:	e8 62 36 02 00       	call   strcmp_
   52dce:	85 c0                	test   eax,eax
   52dd0:	75 33                	jne    get_entrance_branch_5
   52dd2:	a1 94 60 02 00       	mov    eax,ds:@obj3:pointer                                         ; fixup: num: 12668, src obj: 1, src ofs: 0x52dd3, dst obj: 3, dst ofs: 0x26094
   52dd7:	31 d2                	xor    edx,edx
   52dd9:	e8 b2 6b 01 00       	call   set_pointer
   52dde:	89 d8                	mov    eax,ebx
   52de0:	e8 7b 36 00 00       	call   overhead_map
   52de5:	6a 00                	push   0x0
   52de7:	31 d2                	xor    edx,edx
   52de9:	89 c1                	mov    ecx,eax
   52deb:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
   52dee:	31 db                	xor    ebx,ebx
   52df0:	a3 a4 60 02 00       	mov    ds:@obj3:next_room,eax                                       ; fixup: num: 12667, src obj: 1, src ofs: 0x52df1, dst obj: 3, dst ofs: 0x260a4
   52df5:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 12666, src obj: 1, src ofs: 0x52df6, dst obj: 3, dst ofs: 0x25bd4
   52dfa:	e8 f1 88 fe ff       	call   set_xyz
   52dff:	89 c8                	mov    eax,ecx
   52e01:	5a                   	pop    edx
   52e02:	59                   	pop    ecx
   52e03:	5b                   	pop    ebx
   52e04:	c3                   	ret    
get_entrance_branch_5:
   52e05:	8b 49 10             	mov    ecx,DWORD PTR [ecx+0x10]
   52e08:	85 c9                	test   ecx,ecx
   52e0a:	75 b8                	jne    get_entrance_branch_4
get_entrance_branch_6:
   52e0c:	31 c0                	xor    eax,eax
get_entrance_branch_7:
   52e0e:	5a                   	pop    edx
   52e0f:	59                   	pop    ecx
   52e10:	5b                   	pop    ebx
   52e11:	c3                   	ret    
   52e12:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   52e18:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
   52e1e:	8b c0                	mov    eax,eax

;-------------------------------------------------
;  Function 'get_flag'                           -
;-------------------------------------------------
get_flag:
   52e20:	53                   	push   ebx
   52e21:	51                   	push   ecx
   52e22:	52                   	push   edx
   52e23:	89 c1                	mov    ecx,eax
   52e25:	8b 1d a4 5a 02 00    	mov    ebx,DWORD PTR ds:@obj3:flag_list                             ; fixup: num: 12674, src obj: 1, src ofs: 0x52e27, dst obj: 3, dst ofs: 0x25aa4
   52e2b:	85 db                	test   ebx,ebx
   52e2d:	74 1a                	je     get_flag_branch_3
get_flag_branch_1:
   52e2f:	89 ca                	mov    edx,ecx
   52e31:	8b 03                	mov    eax,DWORD PTR [ebx]
   52e33:	e8 f8 35 02 00       	call   strcmp_
   52e38:	85 c0                	test   eax,eax
   52e3a:	75 06                	jne    get_flag_branch_2
   52e3c:	89 d8                	mov    eax,ebx
   52e3e:	5a                   	pop    edx
   52e3f:	59                   	pop    ecx
   52e40:	5b                   	pop    ebx
   52e41:	c3                   	ret    
get_flag_branch_2:
   52e42:	8b 5b 08             	mov    ebx,DWORD PTR [ebx+0x8]
   52e45:	85 db                	test   ebx,ebx
   52e47:	75 e6                	jne    get_flag_branch_1
get_flag_branch_3:
   52e49:	31 c0                	xor    eax,eax
   52e4b:	5a                   	pop    edx
   52e4c:	59                   	pop    ecx
   52e4d:	5b                   	pop    ebx
   52e4e:	c3                   	ret    
   52e4f:	90                   	nop

;-------------------------------------------------
;  Function 'get_region'                         -
;-------------------------------------------------
get_region:
   52e50:	53                   	push   ebx
   52e51:	51                   	push   ecx
   52e52:	52                   	push   edx
   52e53:	89 c1                	mov    ecx,eax
   52e55:	8b 1d c0 5a 02 00    	mov    ebx,DWORD PTR ds:@obj3:region_list                           ; fixup: num: 12673, src obj: 1, src ofs: 0x52e57, dst obj: 3, dst ofs: 0x25ac0
   52e5b:	85 db                	test   ebx,ebx
   52e5d:	74 1b                	je     get_region_branch_3
get_region_branch_1:
   52e5f:	89 ca                	mov    edx,ecx
   52e61:	8b 43 1c             	mov    eax,DWORD PTR [ebx+0x1c]
   52e64:	e8 c7 35 02 00       	call   strcmp_
   52e69:	85 c0                	test   eax,eax
   52e6b:	75 06                	jne    get_region_branch_2
   52e6d:	89 d8                	mov    eax,ebx
   52e6f:	5a                   	pop    edx
   52e70:	59                   	pop    ecx
   52e71:	5b                   	pop    ebx
   52e72:	c3                   	ret    
get_region_branch_2:
   52e73:	8b 5b 2c             	mov    ebx,DWORD PTR [ebx+0x2c]
   52e76:	85 db                	test   ebx,ebx
   52e78:	75 e5                	jne    get_region_branch_1
get_region_branch_3:
   52e7a:	31 c0                	xor    eax,eax
   52e7c:	5a                   	pop    edx
   52e7d:	59                   	pop    ecx
   52e7e:	5b                   	pop    ebx
   52e7f:	c3                   	ret    

;-------------------------------------------------
;  Function 'get_timer'                          -
;-------------------------------------------------
get_timer:
   52e80:	53                   	push   ebx
   52e81:	51                   	push   ecx
   52e82:	52                   	push   edx
   52e83:	89 c1                	mov    ecx,eax
   52e85:	8b 1d d0 5a 02 00    	mov    ebx,DWORD PTR ds:@obj3:timer_list                            ; fixup: num: 12672, src obj: 1, src ofs: 0x52e87, dst obj: 3, dst ofs: 0x25ad0
   52e8b:	85 db                	test   ebx,ebx
   52e8d:	74 1b                	je     get_timer_branch_3
get_timer_branch_1:
   52e8f:	89 ca                	mov    edx,ecx
   52e91:	8b 43 08             	mov    eax,DWORD PTR [ebx+0x8]
   52e94:	e8 97 35 02 00       	call   strcmp_
   52e99:	85 c0                	test   eax,eax
   52e9b:	75 06                	jne    get_timer_branch_2
   52e9d:	89 d8                	mov    eax,ebx
   52e9f:	5a                   	pop    edx
   52ea0:	59                   	pop    ecx
   52ea1:	5b                   	pop    ebx
   52ea2:	c3                   	ret    
get_timer_branch_2:
   52ea3:	8b 5b 18             	mov    ebx,DWORD PTR [ebx+0x18]
   52ea6:	85 db                	test   ebx,ebx
   52ea8:	75 e5                	jne    get_timer_branch_1
get_timer_branch_3:
   52eaa:	31 c0                	xor    eax,eax
   52eac:	5a                   	pop    edx
   52ead:	59                   	pop    ecx
   52eae:	5b                   	pop    ebx
   52eaf:	c3                   	ret    

;-------------------------------------------------
;  Function 'check_filename'                     -
;-------------------------------------------------
check_filename:
   52eb0:	53                   	push   ebx
   52eb1:	51                   	push   ecx
   52eb2:	52                   	push   edx
   52eb3:	56                   	push   esi
   52eb4:	89 c1                	mov    ecx,eax
   52eb6:	e8 c5 9d fb ff       	call   XFILE_size
   52ebb:	83 f8 ff             	cmp    eax,0xffffffff
   52ebe:	75 42                	jne    check_filename_branch_2
   52ec0:	b4 01                	mov    ah,0x1
   52ec2:	ba cd bc 00 00       	mov    edx,@obj3:scrpties_cpp_variable_3                            ; fixup: num: 12680, src obj: 1, src ofs: 0x52ec3, dst obj: 3, dst ofs: 0xbccd
   52ec7:	88 25 14 5b 02 00    	mov    BYTE PTR ds:@obj3:script_errors,ah                           ; fixup: num: 12679, src obj: 1, src ofs: 0x52ec9, dst obj: 3, dst ofs: 0x25b14
   52ecd:	b8 d1 bc 00 00       	mov    eax,@obj3:scrpties_cpp_variable_4                            ; fixup: num: 12678, src obj: 1, src ofs: 0x52ece, dst obj: 3, dst ofs: 0xbcd1
   52ed2:	e8 d1 de 01 00       	call   fopen_
   52ed7:	89 c6                	mov    esi,eax
   52ed9:	85 c0                	test   eax,eax
   52edb:	75 0f                	jne    check_filename_branch_1
   52edd:	bb dc bc 00 00       	mov    ebx,@obj3:scrpties_cpp_variable_5                            ; fixup: num: 12677, src obj: 1, src ofs: 0x52ede, dst obj: 3, dst ofs: 0xbcdc
   52ee2:	ba f9 0b 00 00       	mov    edx,0xbf9
   52ee7:	e8 44 51 fe ff       	call   _error_report
check_filename_branch_1:
   52eec:	51                   	push   ecx
   52eed:	68 f0 bc 00 00       	push   @obj3:scrpties_cpp_variable_6                                ; fixup: num: 12676, src obj: 1, src ofs: 0x52eee, dst obj: 3, dst ofs: 0xbcf0
   52ef2:	56                   	push   esi
   52ef3:	e8 e9 3c 02 00       	call   fprintf_
   52ef8:	83 c4 0c             	add    esp,0xc
   52efb:	89 f0                	mov    eax,esi
   52efd:	e8 3c df 01 00       	call   fclose_
check_filename_branch_2:
   52f02:	5e                   	pop    esi
   52f03:	5a                   	pop    edx
   52f04:	59                   	pop    ecx
   52f05:	5b                   	pop    ebx
   52f06:	c3                   	ret    
   52f07:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   52f0d:	8d 52 00             	lea    edx,[edx+0x0]

;-------------------------------------------------
;  Function 'set_object'                         -
;-------------------------------------------------
set_object:
   52f10:	51                   	push   ecx
   52f11:	56                   	push   esi
   52f12:	57                   	push   edi
   52f13:	83 ec 04             	sub    esp,0x4
   52f16:	89 c7                	mov    edi,eax
   52f18:	89 d6                	mov    esi,edx
   52f1a:	88 1c 24             	mov    BYTE PTR [esp],bl
   52f1d:	85 d2                	test   edx,edx
   52f1f:	0f 84 57 01 00 00    	je     set_object_branch_13
   52f25:	85 c0                	test   eax,eax
   52f27:	0f 84 4f 01 00 00    	je     set_object_branch_13
   52f2d:	89 d1                	mov    ecx,edx
   52f2f:	85 d2                	test   edx,edx
   52f31:	74 25                	je     set_object_branch_3
   52f33:	8b 1d bc 5a 02 00    	mov    ebx,DWORD PTR ds:@obj3:object_list                           ; fixup: num: 12675, src obj: 1, src ofs: 0x52f35, dst obj: 3, dst ofs: 0x25abc
   52f39:	85 db                	test   ebx,ebx
   52f3b:	74 1b                	je     set_object_branch_3
set_object_branch_1:
   52f3d:	8b 53 30             	mov    edx,DWORD PTR [ebx+0x30]
   52f40:	85 d2                	test   edx,edx
   52f42:	74 0d                	je     set_object_branch_2
   52f44:	89 d0                	mov    eax,edx
   52f46:	89 ca                	mov    edx,ecx
   52f48:	e8 e3 34 02 00       	call   strcmp_
   52f4d:	85 c0                	test   eax,eax
   52f4f:	74 09                	je     set_object_branch_4
set_object_branch_2:
   52f51:	8b 5b 54             	mov    ebx,DWORD PTR [ebx+0x54]
   52f54:	85 db                	test   ebx,ebx
   52f56:	75 e5                	jne    set_object_branch_1
set_object_branch_3:
   52f58:	31 db                	xor    ebx,ebx
set_object_branch_4:
   52f5a:	89 d9                	mov    ecx,ebx
   52f5c:	85 db                	test   ebx,ebx
   52f5e:	0f 84 18 01 00 00    	je     set_object_branch_13
   52f64:	8a 04 24             	mov    al,BYTE PTR [esp]
   52f67:	8b 15 2c 41 01 00    	mov    edx,DWORD PTR ds:@obj3:INVENTORY_ROOM                        ; fixup: num: 12686, src obj: 1, src ofs: 0x52f69, dst obj: 3, dst ofs: 0x1412c
   52f6d:	88 43 4d             	mov    BYTE PTR [ebx+0x4d],al
   52f70:	89 f8                	mov    eax,edi
   52f72:	e8 b9 34 02 00       	call   strcmp_
   52f77:	85 c0                	test   eax,eax
   52f79:	75 04                	jne    set_object_branch_5
   52f7b:	c6 43 4f 01          	mov    BYTE PTR [ebx+0x4f],0x1
set_object_branch_5:
   52f7f:	8b 15 c4 5a 02 00    	mov    edx,DWORD PTR ds:@obj3:current_room                          ; fixup: num: 12685, src obj: 1, src ofs: 0x52f81, dst obj: 3, dst ofs: 0x25ac4
   52f85:	8b 41 3c             	mov    eax,DWORD PTR [ecx+0x3c]
   52f88:	8b 52 2c             	mov    edx,DWORD PTR [edx+0x2c]
   52f8b:	e8 a0 34 02 00       	call   strcmp_
   52f90:	85 c0                	test   eax,eax
   52f92:	74 23                	je     set_object_branch_6
   52f94:	8b 15 2c 41 01 00    	mov    edx,DWORD PTR ds:@obj3:INVENTORY_ROOM                        ; fixup: num: 12684, src obj: 1, src ofs: 0x52f96, dst obj: 3, dst ofs: 0x1412c
   52f9a:	8b 41 3c             	mov    eax,DWORD PTR [ecx+0x3c]
   52f9d:	e8 8e 34 02 00       	call   strcmp_
   52fa2:	85 c0                	test   eax,eax
   52fa4:	0f 85 d2 00 00 00    	jne    set_object_branch_13
   52faa:	80 3d 94 24 03 00 00 	cmp    BYTE PTR ds:@obj3:in_inventory,0x0                           ; fixup: num: 12683, src obj: 1, src ofs: 0x52fac, dst obj: 3, dst ofs: 0x32494
   52fb1:	0f 84 c5 00 00 00    	je     set_object_branch_13
set_object_branch_6:
   52fb7:	80 3c 24 00          	cmp    BYTE PTR [esp],0x0
   52fbb:	74 2e                	je     set_object_branch_8
   52fbd:	b8 4c 00 00 00       	mov    eax,0x4c
   52fc2:	e8 51 ef 01 00       	call   W?$nwn(ui)pnv
   52fc7:	85 c0                	test   eax,eax
   52fc9:	74 07                	je     set_object_branch_7
   52fcb:	89 ca                	mov    edx,ecx
   52fcd:	e8 0e 7f fe ff       	call   W?$ct:BTMAP$n(pn$_object_type$$)_
set_object_branch_7:
   52fd2:	85 c0                	test   eax,eax
   52fd4:	0f 84 a2 00 00 00    	je     set_object_branch_13
   52fda:	89 c2                	mov    edx,eax
   52fdc:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 12682, src obj: 1, src ofs: 0x52fdd, dst obj: 3, dst ofs: 0x25a88
   52fe1:	e8 4a 91 ff ff       	call   insert_bitmap
   52fe6:	e9 91 00 00 00       	jmp    set_object_branch_13
set_object_branch_8:
   52feb:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 12681, src obj: 1, src ofs: 0x52fec, dst obj: 3, dst ofs: 0x25a88
   52ff0:	89 f2                	mov    edx,esi
   52ff2:	e8 f9 90 ff ff       	call   get_bitmap
   52ff7:	89 c3                	mov    ebx,eax
   52ff9:	85 c0                	test   eax,eax
   52ffb:	0f 84 7b 00 00 00    	je     set_object_branch_13
   53001:	8b 15 d4 5b 02 00    	mov    edx,DWORD PTR ds:@obj3:pc                                    ; fixup: num: 12917, src obj: 1, src ofs: 0x53003, dst obj: 3, dst ofs: 0x25bd4
   53007:	3b 82 8c 10 00 00    	cmp    eax,DWORD PTR [edx+0x108c]
   5300d:	75 0a                	jne    set_object_branch_9
   5300f:	c7 82 8c 10 00 00 00 00 00 00 	mov    DWORD PTR [edx+0x108c],0x0
set_object_branch_9:
   53019:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 12923, src obj: 1, src ofs: 0x5301a, dst obj: 3, dst ofs: 0x25bd4
   5301e:	3b 98 90 10 00 00    	cmp    ebx,DWORD PTR [eax+0x1090]
   53024:	75 0a                	jne    set_object_branch_10
   53026:	c7 80 90 10 00 00 00 00 00 00 	mov    DWORD PTR [eax+0x1090],0x0
set_object_branch_10:
   53030:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 12922, src obj: 1, src ofs: 0x53031, dst obj: 3, dst ofs: 0x25bd4
   53035:	3b 98 94 10 00 00    	cmp    ebx,DWORD PTR [eax+0x1094]
   5303b:	75 0a                	jne    set_object_branch_11
   5303d:	c7 80 94 10 00 00 00 00 00 00 	mov    DWORD PTR [eax+0x1094],0x0
set_object_branch_11:
   53047:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 12921, src obj: 1, src ofs: 0x53048, dst obj: 3, dst ofs: 0x25bd4
   5304c:	3b 98 98 10 00 00    	cmp    ebx,DWORD PTR [eax+0x1098]
   53052:	75 0a                	jne    set_object_branch_12
   53054:	c7 80 98 10 00 00 00 00 00 00 	mov    DWORD PTR [eax+0x1098],0x0
set_object_branch_12:
   5305e:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 12920, src obj: 1, src ofs: 0x5305f, dst obj: 3, dst ofs: 0x25a88
   53063:	89 da                	mov    edx,ebx
   53065:	e8 86 96 ff ff       	call   remove_bitmap
   5306a:	85 db                	test   ebx,ebx
   5306c:	74 0e                	je     set_object_branch_13
   5306e:	89 d8                	mov    eax,ebx
   53070:	31 d2                	xor    edx,edx
   53072:	e8 29 83 fe ff       	call   W?$dt:BTMAP$n()_
   53077:	e8 fc ef 01 00       	call   W?$dln(pnv)v
set_object_branch_13:
   5307c:	83 c4 04             	add    esp,0x4
   5307f:	5f                   	pop    edi
   53080:	5e                   	pop    esi
   53081:	59                   	pop    ecx
   53082:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   53088:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
   5308e:	8b c0                	mov    eax,eax

;-------------------------------------------------
;  Function 'check_script'                       -
;-------------------------------------------------
check_script:
   53090:	c3                   	ret    
   53091:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   53097:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
   5309d:	8d 40 00             	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'CheckEntrances'                     -
;-------------------------------------------------
CheckEntrances:
   530a0:	53                   	push   ebx
   530a1:	51                   	push   ecx
   530a2:	56                   	push   esi
   530a3:	57                   	push   edi
   530a4:	89 c7                	mov    edi,eax
   530a6:	89 d6                	mov    esi,edx
   530a8:	8b 0d 98 5a 02 00    	mov    ecx,DWORD PTR ds:@obj3:entrance_list                         ; fixup: num: 12919, src obj: 1, src ofs: 0x530aa, dst obj: 3, dst ofs: 0x25a98
   530ae:	85 c9                	test   ecx,ecx
   530b0:	74 3c                	je     CheckEntrances_branch_3
CheckEntrances_branch_1:
   530b2:	8b 15 2c 5b 02 00    	mov    edx,DWORD PTR ds:@obj3:_str                                  ; fixup: num: 12918, src obj: 1, src ofs: 0x530b4, dst obj: 3, dst ofs: 0x25b2c
   530b8:	3b 51 10             	cmp    edx,DWORD PTR [ecx+0x10]
   530bb:	75 2a                	jne    CheckEntrances_branch_2
   530bd:	8b 59 10             	mov    ebx,DWORD PTR [ecx+0x10]
   530c0:	53                   	push   ebx
   530c1:	53                   	push   ebx
   530c2:	56                   	push   esi
   530c3:	57                   	push   edi
   530c4:	68 18 cb 00 00       	push   @obj3:scrpties_cpp_variable_223                              ; fixup: num: 12934, src obj: 1, src ofs: 0x530c5, dst obj: 3, dst ofs: 0xcb18
   530c9:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 12933, src obj: 1, src ofs: 0x530ca, dst obj: 3, dst ofs: 0x237fc
   530ce:	ba de 0d 00 00       	mov    edx,0xdde
   530d3:	e8 09 db 01 00       	call   sprintf_
   530d8:	83 c4 18             	add    esp,0x18
   530db:	bb fc 37 02 00       	mov    ebx,@obj3:log_buffer                                         ; fixup: num: 12932, src obj: 1, src ofs: 0x530dc, dst obj: 3, dst ofs: 0x237fc
   530e0:	31 c0                	xor    eax,eax
   530e2:	e8 49 4f fe ff       	call   _error_report
CheckEntrances_branch_2:
   530e7:	8b 49 18             	mov    ecx,DWORD PTR [ecx+0x18]
   530ea:	85 c9                	test   ecx,ecx
   530ec:	75 c4                	jne    CheckEntrances_branch_1
CheckEntrances_branch_3:
   530ee:	5f                   	pop    edi
   530ef:	5e                   	pop    esi
   530f0:	59                   	pop    ecx
   530f1:	5b                   	pop    ebx
   530f2:	c3                   	ret    
   530f3:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   530f9:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
   530ff:	90                   	nop

;-------------------------------------------------
;  Function 'DebugTextboxes'                     -
;-------------------------------------------------
DebugTextboxes:
   53100:	53                   	push   ebx
   53101:	51                   	push   ecx
   53102:	52                   	push   edx
   53103:	56                   	push   esi
   53104:	57                   	push   edi
   53105:	55                   	push   ebp
   53106:	8b 3d cc 5a 02 00    	mov    edi,DWORD PTR ds:@obj3:text_list                             ; fixup: num: 12931, src obj: 1, src ofs: 0x53108, dst obj: 3, dst ofs: 0x25acc
   5310c:	31 f6                	xor    esi,esi
   5310e:	85 ff                	test   edi,edi
   53110:	0f 84 95 01 00 00    	je     DebugTextboxes_branch_18
   53116:	bd 84 5a 02 00       	mov    ebp,@obj3:the_screen                                         ; fixup: num: 12930, src obj: 1, src ofs: 0x53117, dst obj: 3, dst ofs: 0x25a84
DebugTextboxes_branch_1:
   5311b:	0f 84 8a 01 00 00    	je     DebugTextboxes_branch_18
   53121:	66 83 3d 08 59 02 00 00 	cmp    WORD PTR ds:@obj3:raw_key,0x0                             ; fixup: num: 12929, src obj: 1, src ofs: 0x53124, dst obj: 3, dst ofs: 0x25908
   53129:	0f 85 7c 01 00 00    	jne    DebugTextboxes_branch_18
   5312f:	ba 36 cb 00 00       	mov    edx,@obj3:scrpties_cpp_variable_224                          ; fixup: num: 12928, src obj: 1, src ofs: 0x53130, dst obj: 3, dst ofs: 0xcb36
   53134:	8b 47 0c             	mov    eax,DWORD PTR [edi+0xc]
   53137:	e8 f4 32 02 00       	call   strcmp_
   5313c:	85 c0                	test   eax,eax
   5313e:	75 08                	jne    DebugTextboxes_branch_2
   53140:	8b 35 9c 24 03 00    	mov    esi,DWORD PTR ds:@obj3:text_box1                             ; fixup: num: 12927, src obj: 1, src ofs: 0x53142, dst obj: 3, dst ofs: 0x3249c
   53146:	eb 49                	jmp    DebugTextboxes_branch_5
DebugTextboxes_branch_2:
   53148:	ba 3b cb 00 00       	mov    edx,@obj3:scrpties_cpp_variable_225                          ; fixup: num: 12926, src obj: 1, src ofs: 0x53149, dst obj: 3, dst ofs: 0xcb3b
   5314d:	8b 47 0c             	mov    eax,DWORD PTR [edi+0xc]
   53150:	e8 db 32 02 00       	call   strcmp_
   53155:	85 c0                	test   eax,eax
   53157:	75 08                	jne    DebugTextboxes_branch_3
   53159:	8b 35 a0 24 03 00    	mov    esi,DWORD PTR ds:@obj3:text_box2                             ; fixup: num: 12925, src obj: 1, src ofs: 0x5315b, dst obj: 3, dst ofs: 0x324a0
   5315f:	eb 30                	jmp    DebugTextboxes_branch_5
DebugTextboxes_branch_3:
   53161:	ba 40 cb 00 00       	mov    edx,@obj3:scrpties_cpp_variable_226                          ; fixup: num: 12924, src obj: 1, src ofs: 0x53162, dst obj: 3, dst ofs: 0xcb40
   53166:	8b 47 0c             	mov    eax,DWORD PTR [edi+0xc]
   53169:	e8 c2 32 02 00       	call   strcmp_
   5316e:	85 c0                	test   eax,eax
   53170:	75 08                	jne    DebugTextboxes_branch_4
   53172:	8b 35 a4 24 03 00    	mov    esi,DWORD PTR ds:@obj3:text_box3                             ; fixup: num: 12944, src obj: 1, src ofs: 0x53174, dst obj: 3, dst ofs: 0x324a4
   53178:	eb 17                	jmp    DebugTextboxes_branch_5
DebugTextboxes_branch_4:
   5317a:	ba 45 cb 00 00       	mov    edx,@obj3:scrpties_cpp_variable_227                          ; fixup: num: 12943, src obj: 1, src ofs: 0x5317b, dst obj: 3, dst ofs: 0xcb45
   5317f:	8b 47 0c             	mov    eax,DWORD PTR [edi+0xc]
   53182:	e8 a9 32 02 00       	call   strcmp_
   53187:	85 c0                	test   eax,eax
   53189:	75 06                	jne    DebugTextboxes_branch_5
   5318b:	8b 35 a8 24 03 00    	mov    esi,DWORD PTR ds:@obj3:text_box4                             ; fixup: num: 12942, src obj: 1, src ofs: 0x5318d, dst obj: 3, dst ofs: 0x324a8
DebugTextboxes_branch_5:
   53191:	b8 50 00 00 00       	mov    eax,0x50
   53196:	e8 7d ed 01 00       	call   W?$nwn(ui)pnv
   5319b:	85 c0                	test   eax,eax
   5319d:	74 2b                	je     DebugTextboxes_branch_6
   5319f:	8b 16                	mov    edx,DWORD PTR [esi]
   531a1:	8b 12                	mov    edx,DWORD PTR [edx]
   531a3:	83 ea 02             	sub    edx,0x2
   531a6:	52                   	push   edx
   531a7:	8b 56 40             	mov    edx,DWORD PTR [esi+0x40]
   531aa:	6a d3                	push   0xffffffd3
   531ac:	83 c2 05             	add    edx,0x5
   531af:	52                   	push   edx
   531b0:	8b 56 3c             	mov    edx,DWORD PTR [esi+0x3c]
   531b3:	83 c2 0a             	add    edx,0xa
   531b6:	b9 4a cb 00 00       	mov    ecx,@obj3:scrpties_cpp_variable_228                          ; fixup: num: 12941, src obj: 1, src ofs: 0x531b7, dst obj: 3, dst ofs: 0xcb4a
   531bb:	52                   	push   edx
   531bc:	8b 1d c4 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:textfont                              ; fixup: num: 12940, src obj: 1, src ofs: 0x531be, dst obj: 3, dst ofs: 0x25bc4
   531c2:	8b 57 10             	mov    edx,DWORD PTR [edi+0x10]
   531c5:	e8 36 6a ff ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
DebugTextboxes_branch_6:
   531ca:	89 c3                	mov    ebx,eax
   531cc:	85 c0                	test   eax,eax
   531ce:	0f 84 cc 00 00 00    	je     DebugTextboxes_branch_17
   531d4:	ba 07 00 00 00       	mov    edx,0x7
   531d9:	a1 94 60 02 00       	mov    eax,ds:@obj3:pointer                                         ; fixup: num: 12939, src obj: 1, src ofs: 0x531da, dst obj: 3, dst ofs: 0x26094
   531de:	e8 ad 67 01 00       	call   set_pointer
   531e3:	85 f6                	test   esi,esi
   531e5:	74 0c                	je     DebugTextboxes_branch_7
   531e7:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 12938, src obj: 1, src ofs: 0x531e8, dst obj: 3, dst ofs: 0x25a88
   531ec:	89 f2                	mov    edx,esi
   531ee:	e8 3d 8f ff ff       	call   insert_bitmap
DebugTextboxes_branch_7:
   531f3:	ba d4 a1 01 00       	mov    edx,@obj3:music                                              ; fixup: num: 12937, src obj: 1, src ofs: 0x531f4, dst obj: 3, dst ofs: 0x1a1d4
DebugTextboxes_branch_8:
   531f8:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 12936, src obj: 1, src ofs: 0x531fa, dst obj: 3, dst ofs: 0x25974
   531ff:	75 0a                	jne    DebugTextboxes_branch_9
   53201:	66 83 3d 08 59 02 00 00 	cmp    WORD PTR ds:@obj3:raw_key,0x0                             ; fixup: num: 12935, src obj: 1, src ofs: 0x53204, dst obj: 3, dst ofs: 0x25908
   53209:	74 10                	je     DebugTextboxes_branch_10
DebugTextboxes_branch_9:
   5320b:	89 e8                	mov    eax,ebp
   5320d:	e8 8e aa ff ff       	call   update_mod_84
   53212:	89 d0                	mov    eax,edx
   53214:	e8 87 87 fb ff       	call   update_mod_9
   53219:	eb dd                	jmp    DebugTextboxes_branch_8
DebugTextboxes_branch_10:
   5321b:	31 d2                	xor    edx,edx
DebugTextboxes_branch_11:
   5321d:	8a 0d 74 59 02 00    	mov    cl,BYTE PTR ds:@obj3:left_button                             ; fixup: num: 12953, src obj: 1, src ofs: 0x5321f, dst obj: 3, dst ofs: 0x25974
   53223:	38 ca                	cmp    dl,cl
   53225:	75 24                	jne    DebugTextboxes_branch_12
   53227:	3a 0d 72 59 02 00    	cmp    cl,BYTE PTR ds:@obj3:right_button                            ; fixup: num: 12952, src obj: 1, src ofs: 0x53229, dst obj: 3, dst ofs: 0x25972
   5322d:	75 1c                	jne    DebugTextboxes_branch_12
   5322f:	66 3b 15 08 59 02 00 	cmp    dx,WORD PTR ds:@obj3:raw_key                                 ; fixup: num: 12951, src obj: 1, src ofs: 0x53232, dst obj: 3, dst ofs: 0x25908
   53236:	75 13                	jne    DebugTextboxes_branch_12
   53238:	89 e8                	mov    eax,ebp
   5323a:	e8 61 aa ff ff       	call   update_mod_84
   5323f:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 12950, src obj: 1, src ofs: 0x53240, dst obj: 3, dst ofs: 0x1a1d4
   53244:	e8 57 87 fb ff       	call   update_mod_9
   53249:	eb d2                	jmp    DebugTextboxes_branch_11
DebugTextboxes_branch_12:
   5324b:	85 db                	test   ebx,ebx
   5324d:	74 10                	je     DebugTextboxes_branch_13
   5324f:	74 0e                	je     DebugTextboxes_branch_13
   53251:	89 d8                	mov    eax,ebx
   53253:	31 d2                	xor    edx,edx
   53255:	e8 c6 6c ff ff       	call   W?$dt:TEXTBM$n()_
   5325a:	e8 19 ee 01 00       	call   W?$dln(pnv)v
DebugTextboxes_branch_13:
   5325f:	85 f6                	test   esi,esi
   53261:	74 0c                	je     DebugTextboxes_branch_14
   53263:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 12949, src obj: 1, src ofs: 0x53264, dst obj: 3, dst ofs: 0x25a88
   53268:	89 f2                	mov    edx,esi
   5326a:	e8 81 94 ff ff       	call   remove_bitmap
DebugTextboxes_branch_14:
   5326f:	bb d4 a1 01 00       	mov    ebx,@obj3:music                                              ; fixup: num: 12948, src obj: 1, src ofs: 0x53270, dst obj: 3, dst ofs: 0x1a1d4
   53274:	31 d2                	xor    edx,edx
DebugTextboxes_branch_15:
   53276:	a0 74 59 02 00       	mov    al,ds:@obj3:left_button                                      ; fixup: num: 12947, src obj: 1, src ofs: 0x53277, dst obj: 3, dst ofs: 0x25974
   5327b:	38 c2                	cmp    dl,al
   5327d:	75 11                	jne    DebugTextboxes_branch_16
   5327f:	66 3b 15 08 59 02 00 	cmp    dx,WORD PTR ds:@obj3:raw_key                                 ; fixup: num: 12946, src obj: 1, src ofs: 0x53282, dst obj: 3, dst ofs: 0x25908
   53286:	75 08                	jne    DebugTextboxes_branch_16
   53288:	3a 05 72 59 02 00    	cmp    al,BYTE PTR ds:@obj3:right_button                            ; fixup: num: 12945, src obj: 1, src ofs: 0x5328a, dst obj: 3, dst ofs: 0x25972
   5328e:	74 10                	je     DebugTextboxes_branch_17
DebugTextboxes_branch_16:
   53290:	89 e8                	mov    eax,ebp
   53292:	e8 09 aa ff ff       	call   update_mod_84
   53297:	89 d8                	mov    eax,ebx
   53299:	e8 02 87 fb ff       	call   update_mod_9
   5329e:	eb d6                	jmp    DebugTextboxes_branch_15
DebugTextboxes_branch_17:
   532a0:	8b 7f 14             	mov    edi,DWORD PTR [edi+0x14]
   532a3:	85 ff                	test   edi,edi
   532a5:	0f 85 70 fe ff ff    	jne    DebugTextboxes_branch_1
DebugTextboxes_branch_18:
   532ab:	5d                   	pop    ebp
   532ac:	5f                   	pop    edi
   532ad:	5e                   	pop    esi
   532ae:	5a                   	pop    edx
   532af:	59                   	pop    ecx
   532b0:	5b                   	pop    ebx
   532b1:	c3                   	ret    
;-------------------------------------------------
;  Bad code 86 (zero after ret):                 -
;-------------------------------------------------
;  532b0:	5b                   	pop    ebx
;  532b1:	c3                   	ret    
;  532b2:	00 00                	add    BYTE PTR [eax],al
;  532b4:	00 00                	add    BYTE PTR [eax],al
;-------------------------------------------------
;  Padding data (14 bytes):                      -
;-------------------------------------------------
   532b2:	00 00 00 00 00 00 .. 	db     14 dup(0x00)
;-------------------------------------------------
;  End of bad code 86                            -
;-------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 85 (D:\SOURCE\scrpties.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 85: D:\SOURCE\scrpties.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------
scrpties_cpp_variable_1:
    bca8:	73 63 72 70 74 69 65 73 5f 63 70 70 00 	db     "scrpties_cpp",0x00
scrpties_cpp_variable_2:
    bcb5:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
scrpties_cpp_variable_3:
    bccd:	61 2b 74 00          	db     "a+t",0x00
scrpties_cpp_variable_4:
    bcd1:	53 43 52 49 50 54 2e 45 52 52 00 	db     "SCRIPT.ERR",0x00
scrpties_cpp_variable_5:
    bcdc:	43 6f 75 6c 64 20 6e 6f 74 20 6f 70 65 6e 20 66 69 6c 65 00 	db     "Could not open file",0x00
scrpties_cpp_variable_6:
    bcf0:	46 69 6c 65 20 6e 6f 74 20 66 6f 75 6e 64 3a 20 25 73 0a 00 	db     "File not found: %s",0x0a,0x00
scrpties_cpp_variable_7:
    bd04:	53 43 52 49 50 54 20 57 41 52 4e 49 4e 47 21 3a 20 61 63 74 69 76 65 20 3d 20 4e 55 4c 4c 20 6f 6e 20 6c 69 6e 65 20 25 69 00 	db     "SCRIPT WARNING!: active = NULL on line %i",0x00
scrpties_cpp_variable_8:
    bd2e:	54                   	db     0x54                                                         ; dec:  84, chr: 'T'
    bd2f:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
scrpties_cpp_variable_9:
    bd30:	53 43 52 49 50 54 20 57 41 52 4e 49 4e 47 21 3a 20 76 69 73 69 62 6c 65 20 3d 20 4e 55 4c 4c 20 6f 6e 20 6c 69 6e 65 20 25 69 00 	db     "SCRIPT WARNING!: visible = NULL on line %i",0x00
scrpties_cpp_variable_10:
    bd5b:	54                   	db     0x54                                                         ; dec:  84, chr: 'T'
    bd5c:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
scrpties_cpp_variable_11:
    bd5d:	53 43 52 49 50 54 20 57 41 52 4e 49 4e 47 21 3a 20 6c 6f 6f 70 20 3d 20 4e 55 4c 4c 20 6f 6e 20 6c 69 6e 65 20 25 69 00 	db     "SCRIPT WARNING!: loop = NULL on line %i",0x00
scrpties_cpp_variable_12:
    bd85:	54                   	db     0x54                                                         ; dec:  84, chr: 'T'
    bd86:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
scrpties_cpp_variable_13:
    bd87:	53 43 52 49 50 54 20 57 41 52 4e 49 4e 47 21 3a 20 62 61 63 6b 77 61 72 64 20 3d 20 4e 55 4c 4c 20 6f 6e 20 6c 69 6e 65 20 25 69 00 	db     "SCRIPT WARNING!: backward = NULL on line %i",0x00
scrpties_cpp_variable_14:
    bdb3:	54                   	db     0x54                                                         ; dec:  84, chr: 'T'
    bdb4:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
scrpties_cpp_variable_15:
    bdb5:	53 43 52 49 50 54 20 57 41 52 4e 49 4e 47 21 3a 20 70 69 6e 67 5f 70 6f 6e 67 20 3d 20 4e 55 4c 4c 20 6f 6e 20 6c 69 6e 65 20 25 69 00 	db     "SCRIPT WARNING!: ping_pong = NULL on line %i",0x00
scrpties_cpp_variable_16:
    bde2:	54                   	db     0x54                                                         ; dec:  84, chr: 'T'
    bde3:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
scrpties_cpp_variable_17:
    bde4:	53 43 52 49 50 54 20 57 41 52 4e 49 4e 47 21 3a 20 72 65 6d 6f 76 65 20 3d 20 4e 55 4c 4c 20 6f 6e 20 6c 69 6e 65 20 25 69 00 	db     "SCRIPT WARNING!: remove = NULL on line %i",0x00
scrpties_cpp_variable_18:
    be0e:	54                   	db     0x54                                                         ; dec:  84, chr: 'T'
    be0f:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
scrpties_cpp_variable_19:
    be10:	53 43 52 49 50 54 20 45 52 52 4f 52 3a 20 52 65 71 75 69 72 65 64 20 70 61 72 61 6d 65 74 65 72 20 6d 69 73 73 69 6e 67 2e 20 4c 69 6e 65 3a 25 69 00 	db     "SCRIPT ERROR: Required parameter missing. Line:%i",0x00
scrpties_cpp_variable_20:
    be42:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
scrpties_cpp_variable_21:
    be5a:	41 44 44 00          	db     "ADD",0x00
scrpties_cpp_variable_22:
    be5e:	41 44 44 32 49 4e 56 00 	db     "ADD2INV",0x00
scrpties_cpp_variable_23:
    be66:	43 48 41 4e 47 45 5f 52 4f 4f 4d 00 	db     "CHANGE_ROOM",0x00
scrpties_cpp_variable_24:
    be72:	43 48 45 43 4b 5f 46 4c 41 47 00 	db     "CHECK_FLAG",0x00
scrpties_cpp_variable_25:
    be7d:	43 48 45 43 4b 5f 44 5f 46 4c 41 47 00 	db     "CHECK_D_FLAG",0x00
scrpties_cpp_variable_26:
    be8a:	43 48 45 43 4b 5f 50 45 52 43 00 	db     "CHECK_PERC",0x00
scrpties_cpp_variable_27:
    be95:	43 4c 4f 53 45 55 50 00 	db     "CLOSEUP",0x00
scrpties_cpp_variable_28:
    be9d:	44 45 4c 45 54 45 00 	db     "DELETE",0x00
scrpties_cpp_variable_29:
    bea4:	45 4e 44 5f 44 45 4d 4f 00 	db     "END_DEMO",0x00
scrpties_cpp_variable_30:
    bead:	45 58 45 43 5f 4c 49 53 54 00 	db     "EXEC_LIST",0x00
scrpties_cpp_variable_31:
    beb7:	45 58 49 54 5f 43 4c 4f 53 45 55 50 00 	db     "EXIT_CLOSEUP",0x00
scrpties_cpp_variable_32:
    bec4:	47 4f 46 4c 49 43 00 	db     "GOFLIC",0x00
scrpties_cpp_variable_33:
    becb:	48 45 41 4c 5f 4e 50 43 00 	db     "HEAL_NPC",0x00
scrpties_cpp_variable_34:
    bed4:	48 45 41 4c 5f 50 43 00 	db     "HEAL_PC",0x00
scrpties_cpp_variable_35:
    bedc:	4b 49 4c 4c 5f 4e 50 43 00 	db     "KILL_NPC",0x00
scrpties_cpp_variable_36:
    bee5:	4b 49 4c 4c 5f 50 43 00 	db     "KILL_PC",0x00
scrpties_cpp_variable_37:
    beed:	4b 49 4c 4c 5f 54 49 4d 45 52 00 	db     "KILL_TIMER",0x00
scrpties_cpp_variable_38:
    bef8:	4d 4f 4e 53 54 45 52 46 59 00 	db     "MONSTERFY",0x00
scrpties_cpp_variable_39:
    bf02:	52 45 50 4c 41 43 45 00 	db     "REPLACE",0x00
scrpties_cpp_variable_40:
    bf0a:	53 45 54 5f 41 4e 49 4d 00 	db     "SET_ANIM",0x00
scrpties_cpp_variable_41:
    bf13:	53 45 54 5f 46 4c 41 47 00 	db     "SET_FLAG",0x00
scrpties_cpp_variable_42:
    bf1c:	53 45 54 5f 44 5f 46 4c 41 47 00 	db     "SET_D_FLAG",0x00
scrpties_cpp_variable_43:
    bf27:	53 45 54 5f 4e 50 43 00 	db     "SET_NPC",0x00
scrpties_cpp_variable_44:
    bf2f:	53 45 54 5f 4d 4f 4e 53 54 45 52 00 	db     "SET_MONSTER",0x00
scrpties_cpp_variable_45:
    bf3b:	53 45 54 5f 52 45 47 49 4f 4e 00 	db     "SET_REGION",0x00
scrpties_cpp_variable_46:
    bf46:	53 45 54 5f 54 49 4d 45 52 00 	db     "SET_TIMER",0x00
scrpties_cpp_variable_47:
    bf50:	53 48 4f 57 5f 54 45 58 54 00 	db     "SHOW_TEXT",0x00
scrpties_cpp_variable_48:
    bf5a:	53 50 4f 4f 4c 5f 4d 55 53 49 43 00 	db     "SPOOL_MUSIC",0x00
scrpties_cpp_variable_49:
    bf66:	53 54 41 52 54 5f 44 49 41 4c 4f 47 00 	db     "START_DIALOG",0x00
scrpties_cpp_variable_50:
    bf73:	53 54 41 52 54 5f 57 41 56 00 	db     "START_WAV",0x00
scrpties_cpp_variable_51:
    bf7d:	4c 4f 41 44 5f 57 41 56 00 	db     "LOAD_WAV",0x00
scrpties_cpp_variable_52:
    bf86:	50 4c 41 59 5f 57 41 56 00 	db     "PLAY_WAV",0x00
scrpties_cpp_variable_53:
    bf8f:	44 45 4c 45 54 45 5f 57 41 56 00 	db     "DELETE_WAV",0x00
scrpties_cpp_variable_54:
    bf9a:	47 4f 44 45 41 54 48 46 4c 49 43 00 	db     "GODEATHFLIC",0x00
scrpties_cpp_variable_55:
    bfa6:	41 44 4a 5f 48 50 00 	db     "ADJ_HP",0x00
scrpties_cpp_variable_56:
    bfad:	50 43 5f 47 4f 54 4f 5f 58 5a 00 	db     "PC_GOTO_XZ",0x00
scrpties_cpp_variable_57:
    bfb8:	50 43 5f 47 4f 54 4f 5f 59 00 	db     "PC_GOTO_Y",0x00
scrpties_cpp_variable_58:
    bfc2:	50 43 5f 47 4f 54 4f 5f 5a 00 	db     "PC_GOTO_Z",0x00
scrpties_cpp_variable_59:
    bfcc:	50 43 5f 4d 4f 56 45 54 4f 5f 58 5a 00 	db     "PC_MOVETO_XZ",0x00
scrpties_cpp_variable_60:
    bfd9:	50 43 5f 43 48 41 4e 47 45 5f 57 45 41 50 4f 4e 00 	db     "PC_CHANGE_WEAPON",0x00
scrpties_cpp_variable_61:
    bfea:	43 48 41 4e 47 45 5f 4c 49 47 48 54 49 4e 47 00 	db     "CHANGE_LIGHTING",0x00
scrpties_cpp_variable_62:
    bffa:	43 48 41 4e 47 45 5f 43 44 00 	db     "CHANGE_CD",0x00
scrpties_cpp_variable_63:
    c004:	50 41 55 53 45 5f 50 43 00 	db     "PAUSE_PC",0x00
scrpties_cpp_variable_64:
    c00d:	52 45 53 55 4d 45 5f 50 43 00 	db     "RESUME_PC",0x00
scrpties_cpp_variable_65:
    c017:	41 44 44 5f 53 48 4f 54 47 55 4e 5f 53 48 45 4c 4c 53 00 	db     "ADD_SHOTGUN_SHELLS",0x00
scrpties_cpp_variable_66:
    c02a:	41 44 44 5f 39 4d 4d 5f 42 55 4c 4c 45 54 53 00 	db     "ADD_9MM_BULLETS",0x00
scrpties_cpp_variable_67:
    c03a:	41 44 44 5f 33 38 5f 42 55 4c 4c 45 54 53 00 	db     "ADD_38_BULLETS",0x00
scrpties_cpp_variable_68:
    c049:	41 44 44 5f 4e 41 49 4c 53 00 	db     "ADD_NAILS",0x00
scrpties_cpp_variable_69:
    c053:	41 44 44 5f 47 41 53 43 41 4e 53 00 	db     "ADD_GASCANS",0x00
scrpties_cpp_variable_70:
    c05f:	4d 4f 56 45 5f 42 4d 32 50 43 5a 00 	db     "MOVE_BM2PCZ",0x00
scrpties_cpp_variable_71:
    c06b:	53 54 4f 50 5f 4d 55 53 49 43 00 	db     "STOP_MUSIC",0x00
scrpties_cpp_variable_72:
    c076:	55 50 44 41 54 45 5f 53 43 52 45 45 4e 00 	db     "UPDATE_SCREEN",0x00
scrpties_cpp_variable_73:
    c084:	53 54 41 52 54 5f 53 49 4e 47 4c 45 5f 57 41 56 00 	db     "START_SINGLE_WAV",0x00
scrpties_cpp_variable_74:
    c095:	53 43 52 49 50 54 20 45 52 52 4f 52 3a 20 47 4f 44 45 41 54 48 46 4c 49 43 20 68 61 73 20 6e 6f 20 6e 65 78 74 20 63 6f 6d 6d 61 6e 64 2e 20 4c 69 6e 65 3a 25 69 00 	db     "SCRIPT ERROR: GODEATHFLIC has no next command. Line:%i",0x00
scrpties_cpp_variable_75:
    c0cc:	53 43 52 49 50 54 20 45 52 52 4f 52 3a 20 49 6e 76 61 6c 69 64 20 63 6f 6d 6d 61 6e 64 20 66 75 6e 63 74 69 6f 6e 2e 20 4c 69 6e 65 3a 25 69 00 	db     "SCRIPT ERROR: Invalid command function. Line:%i",0x00
scrpties_cpp_variable_76:
    c0fc:	53 43 52 49 50 54 20 45 52 52 4f 52 3a 20 52 65 71 75 69 72 65 64 20 70 61 72 61 6d 65 74 65 72 20 6d 69 73 73 69 6e 67 2e 20 4c 69 6e 65 3a 25 69 00 	db     "SCRIPT ERROR: Required parameter missing. Line:%i",0x00
scrpties_cpp_variable_77:
    c12e:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
scrpties_cpp_variable_78:
    c146:	66 61 63 69 6e 67 20 4e 55 4c 4c 20 66 6f 72 20 45 4e 54 52 41 4e 43 45 20 6f 6e 20 6c 69 6e 65 20 25 69 00 	db     "facing NULL for ENTRANCE on line %i",0x00
scrpties_cpp_variable_79:
    c16a:	52 49 47 48 54 00    	db     "RIGHT",0x00
scrpties_cpp_variable_80:
    c170:	4c 45 46 54 00       	db     "LEFT",0x00
scrpties_cpp_variable_81:
    c175:	46 52 4f 4e 54 00    	db     "FRONT",0x00
scrpties_cpp_variable_82:
    c17b:	42 41 43 4b 00       	db     "BACK",0x00
scrpties_cpp_variable_83:
    c180:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
scrpties_cpp_variable_84:
    c198:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
scrpties_cpp_variable_85:
    c1b0:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
scrpties_cpp_variable_86:
    c1c8:	54                   	db     0x54                                                         ; dec:  84, chr: 'T'
    c1c9:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
scrpties_cpp_variable_87:
    c1ca:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
scrpties_cpp_variable_88:
    c1e2:	25 73 2e 62 6d 00    	db     "%s.bm",0x00
scrpties_cpp_variable_89:
    c1e8:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
scrpties_cpp_variable_90:
    c200:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
scrpties_cpp_variable_91:
    c218:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
scrpties_cpp_variable_92:
    c230:	53 43 52 49 50 54 20 57 41 52 4e 49 4e 47 21 3a 20 66 61 63 69 6e 67 20 3d 20 4e 55 4c 4c 20 6f 6e 20 6c 69 6e 65 20 25 69 00 	db     "SCRIPT WARNING!: facing = NULL on line %i",0x00
scrpties_cpp_variable_93:
    c25a:	52 49 47 48 54 00    	db     "RIGHT",0x00
scrpties_cpp_variable_94:
    c260:	4c 45 46 54 00       	db     "LEFT",0x00
scrpties_cpp_variable_95:
    c265:	46 52 4f 4e 54 00    	db     "FRONT",0x00
scrpties_cpp_variable_96:
    c26b:	42 41 43 4b 00       	db     "BACK",0x00
scrpties_cpp_variable_97:
    c270:	53 43 52 49 50 54 20 57 41 52 4e 49 4e 47 21 3a 20 6d 61 73 6b 20 3d 20 4e 55 4c 4c 20 6f 6e 20 6c 69 6e 65 20 25 69 00 	db     "SCRIPT WARNING!: mask = NULL on line %i",0x00
scrpties_cpp_variable_98:
    c298:	42 4c 55 44 47 45 00 	db     "BLUDGE",0x00
scrpties_cpp_variable_99:
    c29f:	53 4c 41 53 48 00    	db     "SLASH",0x00
scrpties_cpp_variable_100:
    c2a5:	50 52 4f 4a 00       	db     "PROJ",0x00
scrpties_cpp_variable_101:
    c2aa:	53 43 52 49 50 54 20 57 41 52 4e 49 4e 47 21 3a 20 6d 61 73 6b 20 3d 20 55 4e 4b 4e 4f 57 4e 20 6f 6e 20 6c 69 6e 65 20 25 69 00 	db     "SCRIPT WARNING!: mask = UNKNOWN on line %i",0x00
scrpties_cpp_variable_102:
    c2d5:	53 43 52 49 50 54 20 57 41 52 4e 49 4e 47 21 3a 20 61 63 74 69 76 65 20 3d 20 4e 55 4c 4c 20 6f 6e 20 6c 69 6e 65 20 25 69 00 	db     "SCRIPT WARNING!: active = NULL on line %i",0x00
scrpties_cpp_variable_103:
    c2ff:	54                   	db     0x54                                                         ; dec:  84, chr: 'T'
    c300:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
scrpties_cpp_variable_104:
    c301:	53 43 52 49 50 54 20 57 41 52 4e 49 4e 47 21 3a 20 76 69 73 69 62 6c 65 20 3d 20 4e 55 4c 4c 20 6f 6e 20 6c 69 6e 65 20 25 69 00 	db     "SCRIPT WARNING!: visible = NULL on line %i",0x00
scrpties_cpp_variable_105:
    c32c:	54                   	db     0x54                                                         ; dec:  84, chr: 'T'
    c32d:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
scrpties_cpp_variable_106:
    c32e:	53 43 52 49 50 54 20 45 52 52 4f 52 3a 20 52 65 71 75 69 72 65 64 20 70 61 72 61 6d 65 74 65 72 20 6d 69 73 73 69 6e 67 2e 20 4c 69 6e 65 3a 25 69 00 	db     "SCRIPT ERROR: Required parameter missing. Line:%i",0x00
scrpties_cpp_variable_107:
    c360:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
scrpties_cpp_variable_108:
    c378:	53 43 52 49 50 54 20 57 41 52 4e 49 4e 47 21 3a 20 61 63 74 69 76 65 20 3d 20 4e 55 4c 4c 20 6f 6e 20 6c 69 6e 65 20 25 69 00 	db     "SCRIPT WARNING!: active = NULL on line %i",0x00
scrpties_cpp_variable_109:
    c3a2:	54                   	db     0x54                                                         ; dec:  84, chr: 'T'
    c3a3:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
scrpties_cpp_variable_110:
    c3a4:	53 43 52 49 50 54 20 57 41 52 4e 49 4e 47 21 3a 20 76 69 73 69 62 6c 65 20 3d 20 4e 55 4c 4c 20 6f 6e 20 6c 69 6e 65 20 25 69 00 	db     "SCRIPT WARNING!: visible = NULL on line %i",0x00
scrpties_cpp_variable_111:
    c3cf:	54                   	db     0x54                                                         ; dec:  84, chr: 'T'
    c3d0:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
scrpties_cpp_variable_112:
    c3d1:	53 43 52 49 50 54 20 45 52 52 4f 52 3a 20 52 65 71 75 69 72 65 64 20 70 61 72 61 6d 65 74 65 72 20 6d 69 73 73 69 6e 67 2e 20 4c 69 6e 65 3a 25 69 00 	db     "SCRIPT ERROR: Required parameter missing. Line:%i",0x00
scrpties_cpp_variable_113:
    c403:	64 6f 5f 6f 62 6a 65 63 74 28 29 3a 20 75 6e 61 62 6c 65 20 74 6f 20 61 6c 6c 6f 63 61 74 65 20 6d 65 6d 6f 72 79 00 	db     "do_object(): unable to allocate memory",0x00
scrpties_cpp_variable_114:
    c42a:	53 43 52 49 50 54 20 57 41 52 4e 49 4e 47 21 3a 20 6f 70 65 72 61 74 61 62 6c 65 20 3d 20 4e 55 4c 4c 20 6f 6e 20 6c 69 6e 65 20 25 69 00 	db     "SCRIPT WARNING!: operatable = NULL on line %i",0x00
scrpties_cpp_variable_115:
    c458:	54                   	db     0x54                                                         ; dec:  84, chr: 'T'
    c459:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
scrpties_cpp_variable_116:
    c45a:	53 43 52 49 50 54 20 57 41 52 4e 49 4e 47 21 3a 20 76 69 73 69 62 6c 65 20 3d 20 4e 55 4c 4c 20 6f 6e 20 6c 69 6e 65 20 25 69 00 	db     "SCRIPT WARNING!: visible = NULL on line %i",0x00
scrpties_cpp_variable_117:
    c485:	54                   	db     0x54                                                         ; dec:  84, chr: 'T'
    c486:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
scrpties_cpp_variable_118:
    c487:	48 41 50 50 4c 59 5f 48 53 00 	db     "HAPPLY_HS",0x00
scrpties_cpp_variable_119:
    c491:	4b 49 4c 4c 5f 53 54 45 50 48 5f 48 53 00 	db     "KILL_STEPH_HS",0x00
scrpties_cpp_variable_120:
    c49f:	53 55 50 4c 59 5f 50 5a 4c 5f 31 00 	db     "SUPLY_PZL_1",0x00
scrpties_cpp_variable_121:
    c4ab:	53 2d 50 49 50 45 00 	db     "S-PIPE",0x00
scrpties_cpp_variable_122:
    c4b2:	43 4f 4d 50 4c 45 54 45 44 5f 4c 4f 44 47 45 5f 41 50 50 4c 49 43 41 54 49 4f 4e 00 	db     "COMPLETED_LODGE_APPLICATION",0x00
scrpties_cpp_variable_123:
    c4ce:	53 49 4e 4b 54 52 41 50 00 	db     "SINKTRAP",0x00
scrpties_cpp_variable_124:
    c4d7:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
scrpties_cpp_variable_125:
    c4ef:	52 49 47 48 54 00    	db     "RIGHT",0x00
scrpties_cpp_variable_126:
    c4f5:	4c 45 46 54 00       	db     "LEFT",0x00
scrpties_cpp_variable_127:
    c4fa:	46 52 4f 4e 54 00    	db     "FRONT",0x00
scrpties_cpp_variable_128:
    c500:	42 41 43 4b 00       	db     "BACK",0x00
scrpties_cpp_variable_129:
    c505:	54                   	db     0x54                                                         ; dec:  84, chr: 'T'
    c506:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
scrpties_cpp_variable_130:
    c507:	54                   	db     0x54                                                         ; dec:  84, chr: 'T'
    c508:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
scrpties_cpp_variable_131:
    c509:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
scrpties_cpp_variable_132:
    c521:	53 43 52 49 50 54 20 57 41 52 4e 49 4e 47 21 21 21 20 64 69 6d 6d 61 62 6c 65 20 6e 6f 74 20 73 65 74 20 69 6e 20 52 4f 4f 4d 20 64 65 66 20 6f 6e 20 6c 69 6e 65 20 25 69 00 	db     "SCRIPT WARNING!!! dimmable not set in ROOM def on line %i",0x00
scrpties_cpp_variable_133:
    c55b:	54                   	db     0x54                                                         ; dec:  84, chr: 'T'
    c55c:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
scrpties_cpp_variable_134:                                                                          ; access size: QWORD
    c55d:	00 00 00 00 00 00 59 40 	dq     0x4059000000000000
scrpties_cpp_variable_135:
    c565:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
scrpties_cpp_variable_136:
    c57d:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
scrpties_cpp_variable_137:
    c595:	53 43 52 49 50 54 20 57 41 52 4e 49 4e 47 21 21 21 20 61 63 74 76 65 20 6e 6f 74 20 73 65 74 20 69 6e 20 54 49 4d 45 52 20 64 65 66 20 6f 6e 20 6c 69 6e 65 20 25 69 00 	db     "SCRIPT WARNING!!! actve not set in TIMER def on line %i",0x00
scrpties_cpp_variable_138:
    c5cd:	54                   	db     0x54                                                         ; dec:  84, chr: 'T'
    c5ce:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
scrpties_cpp_variable_139:
    c5cf:	53 43 52 49 50 54 20 57 41 52 4e 49 4e 47 21 21 21 20 6c 6f 6f 70 20 6e 6f 74 20 73 65 74 20 69 6e 20 54 49 4d 45 52 20 64 65 66 20 6f 6e 20 6c 69 6e 65 20 25 69 00 	db     "SCRIPT WARNING!!! loop not set in TIMER def on line %i",0x00
scrpties_cpp_variable_140:
    c606:	54                   	db     0x54                                                         ; dec:  84, chr: 'T'
    c607:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
scrpties_cpp_variable_141:
    c608:	53 43 52 49 50 54 20 57 41 52 4e 49 4e 47 21 21 21 20 67 6c 6f 62 61 6c 20 6e 6f 74 20 73 65 74 20 69 6e 20 54 49 4d 45 52 20 64 65 66 20 6f 6e 20 6c 69 6e 65 20 25 69 00 	db     "SCRIPT WARNING!!! global not set in TIMER def on line %i",0x00
scrpties_cpp_variable_142:
    c641:	54                   	db     0x54                                                         ; dec:  84, chr: 'T'
    c642:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
scrpties_cpp_variable_143:
    c643:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
scrpties_cpp_variable_144:
    c65b:	41 4e 49 4d 00       	db     "ANIM",0x00
scrpties_cpp_variable_145:
    c660:	43 4f 4d 4d 41 4e 44 00 	db     "COMMAND",0x00
scrpties_cpp_variable_146:
    c668:	45 4e 54 52 41 4e 43 45 00 	db     "ENTRANCE",0x00
scrpties_cpp_variable_147:
    c671:	45 58 45 43 5f 4c 49 53 54 00 	db     "EXEC_LIST",0x00
scrpties_cpp_variable_148:
    c67b:	46 4c 41 47 00       	db     "FLAG",0x00
scrpties_cpp_variable_149:
    c680:	48 45 41 44 00       	db     "HEAD",0x00
scrpties_cpp_variable_150:
    c685:	4d 41 50 5f 45 4e 54 52 41 4e 43 45 00 	db     "MAP_ENTRANCE",0x00
scrpties_cpp_variable_151:
    c692:	4d 41 50 5f 4c 4f 43 41 54 49 4f 4e 00 	db     "MAP_LOCATION",0x00
scrpties_cpp_variable_152:
    c69f:	4d 4f 4e 53 54 45 52 00 	db     "MONSTER",0x00
scrpties_cpp_variable_153:
    c6a7:	4e 50 43 00          	db     "NPC",0x00
scrpties_cpp_variable_154:
    c6ab:	4f 42 4a 45 43 54 00 	db     "OBJECT",0x00
scrpties_cpp_variable_155:
    c6b2:	52 45 47 49 4f 4e 00 	db     "REGION",0x00
scrpties_cpp_variable_156:
    c6b9:	52 4f 4f 4d 00       	db     "ROOM",0x00
scrpties_cpp_variable_157:
    c6be:	54 45 58 54 00       	db     "TEXT",0x00
scrpties_cpp_variable_158:
    c6c3:	54 49 4d 45 52 00    	db     "TIMER",0x00
scrpties_cpp_variable_159:
    c6c9:	55 53 45 49 54 45 4d 00 	db     "USEITEM",0x00
scrpties_cpp_variable_160:
    c6d1:	73 63 72 70 74 69 65 73 2e 63 70 70 00 	db     "scrpties.cpp",0x00
scrpties_cpp_variable_161:
    c6de:	31 3a 5c 67 72 61 70 68 69 63 5c 70 61 6c 5c 77 61 69 74 2e 70 61 6c 00 	db     "1:\graphic\pal\wait.pal",0x00
scrpties_cpp_variable_162:
    c6f6:	73 63 72 70 74 69 65 73 2e 63 70 70 00 	db     "scrpties.cpp",0x00
scrpties_cpp_variable_163:
    c703:	31 3a 5c 67 72 61 70 68 69 63 5c 70 61 6c 5c 77 61 69 74 2e 70 61 6c 00 	db     "1:\graphic\pal\wait.pal",0x00
scrpties_cpp_variable_164:
    c71b:	57 41 49 54 5f 42 4d 00 	db     "WAIT_BM",0x00
scrpties_cpp_variable_165:
    c723:	31 3a 5c 67 72 61 70 68 69 63 5c 6f 74 68 65 72 5c 77 61 69 74 2e 61 62 6d 00 	db     "1:\graphic\other\wait.abm",0x00
scrpties_cpp_variable_166:
    c73d:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
scrpties_cpp_variable_167:
    c755:	6f 62 6a 65 63 74 5f 70 74 72 2d 3e 69 64 20 3d 20 27 25 73 27 20 72 65 6d 6f 76 65 64 20 66 72 6f 6d 20 73 63 72 65 65 6e 20 20 74 65 6d 70 2d 3e 69 64 3d 25 73 00 	db     "object_ptr->id = '%s' removed from screen  temp->id=%s",0x00
scrpties_cpp_variable_168:
    c78c:	44 49 4d 00          	db     "DIM",0x00
scrpties_cpp_variable_169:
    c790:	4e 4f 52 4d 41 4c 00 	db     "NORMAL",0x00
scrpties_cpp_variable_170:
    c797:	73 63 72 70 74 69 65 73 2e 63 70 70 00 	db     "scrpties.cpp",0x00
scrpties_cpp_variable_171:
    c7a4:	4e 4f 4e 45 00       	db     "NONE",0x00
scrpties_cpp_variable_172:
    c7a9:	46 41 44 45 5f 49 4e 00 	db     "FADE_IN",0x00
scrpties_cpp_variable_173:
    c7b1:	53 4f 55 4e 44 5c 4d 55 53 49 43 5c 52 4f 43 4b 46 49 54 45 2e 43 4d 50 00 	db     "SOUND\MUSIC\ROCKFITE.CMP",0x00
scrpties_cpp_variable_174:
    c7ca:	31 3a 5c 47 52 41 50 48 49 43 5c 4f 54 48 45 52 5c 53 43 52 45 45 4e 25 64 2e 42 4d 00 	db     "1:\GRAPHIC\OTHER\SCREEN%d.BM",0x00
scrpties_cpp_variable_175:
    c7e7:	31 3a 5c 47 52 41 50 48 49 43 5c 50 41 4c 5c 53 43 52 45 45 4e 25 64 2e 50 41 4c 00 	db     "1:\GRAPHIC\PAL\SCREEN%d.PAL",0x00
scrpties_cpp_variable_176:
    c803:	44 45 4d 4f 53 43 52 45 45 4e 00 	db     "DEMOSCREEN",0x00
scrpties_cpp_variable_177:
    c80e:	55 6e 61 62 6c 65 20 74 6f 20 66 69 6e 64 20 64 65 6d 6f 20 73 63 72 65 65 6e 21 00 	db     "Unable to find demo screen!",0x00
scrpties_cpp_variable_178:
    c82a:	73 63 72 70 74 69 65 73 2e 63 70 70 00 	db     "scrpties.cpp",0x00
scrpties_cpp_variable_179:
    c837:	53 41 56 45 5f 47 41 4d 45 00 	db     "SAVE_GAME",0x00
scrpties_cpp_variable_180:
    c841:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
scrpties_cpp_variable_181:
    c842:	42 4c 55 44 47 45 00 	db     "BLUDGE",0x00
scrpties_cpp_variable_182:
    c849:	53 4c 41 53 48 00    	db     "SLASH",0x00
scrpties_cpp_variable_183:
    c84f:	50 52 4f 4a 00       	db     "PROJ",0x00
scrpties_cpp_variable_184:
    c854:	73 65 74 20 78 20 3d 20 25 69 20 20 73 65 74 20 7a 20 3d 20 25 69 00 	db     "set x = %i  set z = %i",0x00
scrpties_cpp_variable_185:
    c86b:	42 4c 55 44 47 45 00 	db     "BLUDGE",0x00
scrpties_cpp_variable_186:
    c872:	53 4c 41 53 48 00    	db     "SLASH",0x00
scrpties_cpp_variable_187:
    c878:	50 52 4f 4a 00       	db     "PROJ",0x00
scrpties_cpp_variable_188:
    c87d:	43 61 6e 27 74 20 63 72 65 61 74 65 20 72 65 70 6c 61 63 65 6d 65 6e 74 20 6f 62 6a 65 63 74 20 25 73 00 	db     "Can't create replacement object %s",0x00
scrpties_cpp_variable_189:
    c8a0:	43 61 6e 27 74 20 63 72 65 61 74 65 20 72 65 70 6c 61 63 65 6d 65 6e 74 20 6f 62 6a 65 63 74 20 25 73 00 	db     "Can't create replacement object %s",0x00
scrpties_cpp_variable_190:
    c8c3:	43 61 6e 27 74 20 63 72 65 61 74 65 20 72 65 70 6c 61 63 65 6d 65 6e 74 20 6f 62 6a 65 63 74 20 25 73 00 	db     "Can't create replacement object %s",0x00
scrpties_cpp_variable_191:
    c8e6:	54                   	db     0x54                                                         ; dec:  84, chr: 'T'
    c8e7:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
scrpties_cpp_variable_192:
    c8e8:	54                   	db     0x54                                                         ; dec:  84, chr: 'T'
    c8e9:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
scrpties_cpp_variable_193:
    c8ea:	4f                   	db     0x4f                                                         ; dec:  79, chr: 'O'
    c8eb:	4e                   	db     0x4e                                                         ; dec:  78, chr: 'N'
    c8ec:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
scrpties_cpp_variable_194:
    c8ed:	54                   	db     0x54                                                         ; dec:  84, chr: 'T'
    c8ee:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
scrpties_cpp_variable_195:
    c8ef:	54                   	db     0x54                                                         ; dec:  84, chr: 'T'
    c8f0:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
scrpties_cpp_variable_196:
    c8f1:	54                   	db     0x54                                                         ; dec:  84, chr: 'T'
    c8f2:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
scrpties_cpp_variable_197:
    c8f3:	54                   	db     0x54                                                         ; dec:  84, chr: 'T'
    c8f4:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
scrpties_cpp_variable_198:
    c8f5:	54                   	db     0x54                                                         ; dec:  84, chr: 'T'
    c8f6:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
scrpties_cpp_variable_199:
    c8f7:	46                   	db     0x46                                                         ; dec:  70, chr: 'F'
    c8f8:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
scrpties_cpp_variable_200:
    c8f9:	67 6f 74 20 25 73 20 66 72 6f 6d 20 6c 69 73 74 00 	db     "got %s from list",0x00
scrpties_cpp_variable_201:
    c90a:	25 73 20 6e 6f 74 20 69 6e 20 73 63 72 65 65 6e 20 6c 69 73 74 00 	db     "%s not in screen list",0x00
scrpties_cpp_variable_202:
    c920:	4f                   	db     0x4f                                                         ; dec:  79, chr: 'O'
    c921:	4e                   	db     0x4e                                                         ; dec:  78, chr: 'N'
    c922:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
scrpties_cpp_variable_203:
    c923:	57 41 52 4e 49 4e 47 3a 20 54 69 6d 65 72 20 25 73 20 6e 6f 74 20 69 6e 20 6c 69 73 74 00 	db     "WARNING: Timer %s not in list",0x00
scrpties_cpp_variable_204:
    c941:	57 41 52 4e 49 4e 47 3a 20 54 69 6d 65 72 20 25 73 20 6e 6f 74 20 69 6e 20 6c 69 73 74 00 	db     "WARNING: Timer %s not in list",0x00
scrpties_cpp_variable_205:
    c95f:	42 4f 58 31 00       	db     "BOX1",0x00
scrpties_cpp_variable_206:
    c964:	42 4f 58 32 00       	db     "BOX2",0x00
scrpties_cpp_variable_207:
    c969:	42 4f 58 33 00       	db     "BOX3",0x00
scrpties_cpp_variable_208:
    c96e:	42 4f 58 34 00       	db     "BOX4",0x00
scrpties_cpp_variable_209:
    c973:	53 43 52 49 50 54 20 57 41 52 4e 49 4e 47 3a 20 74 65 78 74 5f 69 64 20 6e 6f 74 20 66 6f 75 6e 64 20 28 25 73 29 00 	db     "SCRIPT WARNING: text_id not found (%s)",0x00
scrpties_cpp_variable_210:
    c99a:	49 44 45 4e 54 00    	db     "IDENT",0x00
scrpties_cpp_variable_211:
    c9a0:	73 63 72 70 74 69 65 73 2e 63 70 70 00 	db     "scrpties.cpp",0x00
scrpties_cpp_variable_212:
    c9ad:	44 41 59 5f 46 4c 41 47 00 	db     "DAY_FLAG",0x00
scrpties_cpp_variable_213:
    c9b6:	57 41 52 4e 49 4e 47 3a 20 73 74 61 72 74 5f 64 69 61 6c 6f 67 28 29 3a 20 63 61 6e 27 74 20 66 69 6e 64 20 25 73 20 69 6e 20 66 75 6e 63 74 69 6f 6e 20 74 61 62 6c 65 00 	db     "WARNING: start_dialog(): can't find %s in function table",0x00
scrpties_cpp_variable_214:
    c9ef:	57 41 52 4e 49 4e 47 21 21 21 20 69 6e 76 61 6c 69 64 20 77 61 76 20 73 6c 6f 74 20 25 69 20 28 4c 4f 41 44 5f 57 41 56 29 00 	db     "WARNING!!! invalid wav slot %i (LOAD_WAV)",0x00
scrpties_cpp_variable_215:
    ca19:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
scrpties_cpp_variable_216:
    ca31:	55 6e 61 62 6c 65 20 74 6f 20 66 69 6e 64 20 25 73 00 	db     "Unable to find %s",0x00
scrpties_cpp_variable_217:
    ca43:	57 41 52 4e 49 4e 47 21 21 21 20 69 6e 76 61 6c 69 64 20 77 61 76 20 73 6c 6f 74 20 25 69 20 28 50 4c 41 59 5f 57 41 56 29 00 	db     "WARNING!!! invalid wav slot %i (PLAY_WAV)",0x00
scrpties_cpp_variable_218:
    ca6d:	57 41 52 4e 49 4e 47 21 21 21 20 73 6c 6f 74 20 25 69 20 69 73 20 65 6d 70 74 79 28 50 4c 41 59 5f 57 41 56 29 00 	db     "WARNING!!! slot %i is empty(PLAY_WAV)",0x00
scrpties_cpp_variable_219:
    ca93:	57 41 52 4e 49 4e 47 21 21 21 20 69 6e 76 61 6c 69 64 20 77 61 76 20 73 6c 6f 74 20 25 69 20 28 50 4c 41 59 5f 57 41 56 29 00 	db     "WARNING!!! invalid wav slot %i (PLAY_WAV)",0x00
scrpties_cpp_variable_220:
    cabd:	57 41 52 4e 49 4e 47 21 21 21 20 73 6c 6f 74 20 25 69 20 69 73 20 65 6d 70 74 79 28 44 45 4c 45 54 5f 57 41 56 29 00 	db     "WARNING!!! slot %i is empty(DELET_WAV)",0x00
scrpties_cpp_variable_221:
    cae4:	53 43 52 49 50 54 20 57 41 52 4e 49 4e 47 3a 20 75 6e 6b 6e 6f 77 6e 20 63 6f 6d 6d 61 6e 64 20 66 75 6e 63 74 69 6f 6e 20 25 64 00 	db     "SCRIPT WARNING: unknown command function %d",0x00
scrpties_cpp_variable_222:                                                                          ; access size: QWORD
    cb10:	9a 99 99 99 99 99 d9 bf 	dq     0xbfd999999999999a
scrpties_cpp_variable_223:
    cb18:	25 73 3a 25 69 2d 65 6e 74 72 2d 3e 72 6f 6f 6d 5f 69 64 3d 25 73 20 70 74 72 3d 25 70 00 	db     "%s:%i-entr->room_id=%s ptr=%p",0x00
scrpties_cpp_variable_224:
    cb36:	42 4f 58 31 00       	db     "BOX1",0x00
scrpties_cpp_variable_225:
    cb3b:	42 4f 58 32 00       	db     "BOX2",0x00
scrpties_cpp_variable_226:
    cb40:	42 4f 58 33 00       	db     "BOX3",0x00
scrpties_cpp_variable_227:
    cb45:	42 4f 58 34 00       	db     "BOX4",0x00
scrpties_cpp_variable_228:
    cb4a:	49 44 45 4e 54 00    	db     "IDENT",0x00

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 85 (D:\SOURCE\scrpties.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 85: D:\SOURCE\scrpties.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------
room_ctr:                                                                                           ; access size: DWORD
   13c1c:	01 00 00 00          	dd     0x00000001

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 85 (D:\SOURCE\scrpties.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 85: D:\SOURCE\scrpties.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------
anim_list:                                                                                          ; access size: DWORD
   25a90:	00 00 00 00          	dd     0x00000000
command_list:                                                                                       ; access size: DWORD
   25a94:	00 00 00 00          	dd     0x00000000
entrance_list:                                                                                      ; access size: DWORD
   25a98:	00 00 00 00          	dd     0x00000000
temp_entrance:                                                                                      ; access size: DWORD
   25a9c:	00 00 00 00          	dd     0x00000000
execlst_list:                                                                                       ; access size: DWORD
   25aa0:	00 00 00 00          	dd     0x00000000
flag_list:                                                                                          ; access size: DWORD
   25aa4:	00 00 00 00          	dd     0x00000000
head_list:                                                                                          ; access size: DWORD
   25aa8:	00 00 00 00          	dd     0x00000000
map_entrance_list:                                                                                  ; access size: DWORD
   25aac:	00 00 00 00          	dd     0x00000000
map_location_list:                                                                                  ; access size: DWORD
   25ab0:	00 00 00 00          	dd     0x00000000
monster_list:                                                                                       ; access size: DWORD
   25ab4:	00 00 00 00          	dd     0x00000000
npc_list:                                                                                           ; access size: DWORD
   25ab8:	00 00 00 00          	dd     0x00000000
object_list:                                                                                        ; access size: DWORD
   25abc:	00 00 00 00          	dd     0x00000000
region_list:                                                                                        ; access size: DWORD
   25ac0:	00 00 00 00          	dd     0x00000000
current_room:                                                                                       ; access size: DWORD
   25ac4:	00 00 00 00          	dd     0x00000000
room_list:                                                                                          ; access size: DWORD
   25ac8:	00 00 00 00          	dd     0x00000000
text_list:                                                                                          ; access size: DWORD
   25acc:	00 00 00 00          	dd     0x00000000
timer_list:                                                                                         ; access size: DWORD
   25ad0:	00 00 00 00          	dd     0x00000000
useitem_list:                                                                                       ; access size: DWORD
   25ad4:	00 00 00 00          	dd     0x00000000
anim_ctr:                                                                                           ; access size: DWORD
   25ad8:	00 00 00 00          	dd     0x00000000
command_ctr:                                                                                        ; access size: DWORD
   25adc:	00 00 00 00          	dd     0x00000000
entrance_ctr:                                                                                       ; access size: DWORD
   25ae0:	00 00 00 00          	dd     0x00000000
execlst_ctr:                                                                                        ; access size: DWORD
   25ae4:	00 00 00 00          	dd     0x00000000
flag_ctr:                                                                                           ; access size: DWORD
   25ae8:	00 00 00 00          	dd     0x00000000
head_ctr:                                                                                           ; access size: DWORD
   25aec:	00 00 00 00          	dd     0x00000000
map_entrance_ctr:                                                                                   ; access size: DWORD
   25af0:	00 00 00 00          	dd     0x00000000
map_location_ctr:                                                                                   ; access size: DWORD
   25af4:	00 00 00 00          	dd     0x00000000
monster_ctr:                                                                                        ; access size: DWORD
   25af8:	00 00 00 00          	dd     0x00000000
npc_ctr:                                                                                            ; access size: DWORD
   25afc:	00 00 00 00          	dd     0x00000000
object_ctr:                                                                                         ; access size: DWORD
   25b00:	00 00 00 00          	dd     0x00000000
region_ctr:                                                                                         ; access size: DWORD
   25b04:	00 00 00 00          	dd     0x00000000
text_ctr:                                                                                           ; access size: DWORD
   25b08:	00 00 00 00          	dd     0x00000000
timer_ctr:                                                                                          ; access size: DWORD
   25b0c:	00 00 00 00          	dd     0x00000000
useitem_ctr:                                                                                        ; access size: DWORD
   25b10:	00 00 00 00          	dd     0x00000000
script_errors:                                                                                      ; access size: BYTE
   25b14:	00 00 00 00          	db     4 dup(0x00)                                                  ; dec:   0, chr: '\0'
preloaded_wav:                                                                                      ; access size: DWORDS
   25b18:	00 00 00 00 00 00 .. 	dd     4 dup(0x00000000)
textbox_debugging:
   25b28:	00 00 00 00          	db     4 dup(0x00)                                                  ; dec:   0, chr: '\0'
_str:                                                                                               ; access size: DWORD
   25b2c:	00 00 00 00          	dd     0x00000000

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 85 (D:\SOURCE\scrpties.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------