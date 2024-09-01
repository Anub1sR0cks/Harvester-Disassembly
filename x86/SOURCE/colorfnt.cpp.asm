;-------------------------------------------------------------------------------
;                                                                              -
;  Module 77: D:\SOURCE\colorfnt.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function 'fds2cft'                            -
;-------------------------------------------------
fds2cft:
   47f80:	53                   	push   ebx
   47f81:	51                   	push   ecx
   47f82:	56                   	push   esi
   47f83:	57                   	push   edi
   47f84:	55                   	push   ebp
   47f85:	81 ec 5c 06 00 00    	sub    esp,0x65c
   47f8b:	89 c6                	mov    esi,eax
   47f8d:	89 94 24 50 06 00 00 	mov    DWORD PTR [esp+0x650],edx
   47f94:	52                   	push   edx
   47f95:	50                   	push   eax
   47f96:	68 88 b7 00 00       	push   @obj3:colorfnt_cpp_variable_1                                ; fixup: num: 11469, src obj: 1, src ofs: 0x47f97, dst obj: 3, dst ofs: 0xb788
   47f9b:	e8 b2 8b 02 00       	call   printf_
   47fa0:	83 c4 0c             	add    esp,0xc
   47fa3:	52                   	push   edx
   47fa4:	56                   	push   esi
   47fa5:	68 a4 b7 00 00       	push   @obj3:colorfnt_cpp_variable_2                                ; fixup: num: 11468, src obj: 1, src ofs: 0x47fa6, dst obj: 3, dst ofs: 0xb7a4
   47faa:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 11467, src obj: 1, src ofs: 0x47fab, dst obj: 3, dst ofs: 0x237fc
   47faf:	bb 48 04 00 00       	mov    ebx,0x448
   47fb4:	31 d2                	xor    edx,edx
   47fb6:	e8 26 8c 02 00       	call   sprintf_
   47fbb:	83 c4 10             	add    esp,0x10
   47fbe:	89 e0                	mov    eax,esp
   47fc0:	b9 6f 00 00 00       	mov    ecx,0x6f
   47fc5:	e8 06 94 02 00       	call   memset_
   47fca:	89 f0                	mov    eax,esi
   47fcc:	bb bf b7 00 00       	mov    ebx,@obj3:colorfnt_cpp_variable_3                            ; fixup: num: 11466, src obj: 1, src ofs: 0x47fcd, dst obj: 3, dst ofs: 0xb7bf
   47fd1:	e8 aa 4c fc ff       	call   XFILE_size
   47fd6:	31 d2                	xor    edx,edx
   47fd8:	89 84 24 54 06 00 00 	mov    DWORD PTR [esp+0x654],eax
   47fdf:	89 f0                	mov    eax,esi
   47fe1:	e8 fa 4d fc ff       	call   XFILE_read2
   47fe6:	89 c5                	mov    ebp,eax
   47fe8:	85 c0                	test   eax,eax
   47fea:	75 0f                	jne    fds2cft_branch_1
   47fec:	bb cc b7 00 00       	mov    ebx,@obj3:colorfnt_cpp_variable_4                            ; fixup: num: 11465, src obj: 1, src ofs: 0x47fed, dst obj: 3, dst ofs: 0xb7cc
   47ff1:	ba 70 00 00 00       	mov    edx,0x70
   47ff6:	e8 35 00 ff ff       	call   _error_report
fds2cft_branch_1:
   47ffb:	8b b4 24 54 06 00 00 	mov    esi,DWORD PTR [esp+0x654]
   48002:	30 e4                	xor    ah,ah
   48004:	31 c9                	xor    ecx,ecx
   48006:	88 a4 24 48 05 00 00 	mov    BYTE PTR [esp+0x548],ah
   4800d:	31 c0                	xor    eax,eax
   4800f:	85 f6                	test   esi,esi
   48011:	7f 15                	jg     fds2cft_branch_3
   48013:	e9 ea 02 00 00       	jmp    fds2cft_branch_29
fds2cft_branch_2:
   48018:	8b bc 24 54 06 00 00 	mov    edi,DWORD PTR [esp+0x654]
   4801f:	41                   	inc    ecx
   48020:	39 f9                	cmp    ecx,edi
   48022:	0f 8d da 02 00 00    	jge    fds2cft_branch_29
fds2cft_branch_3:
   48028:	8d 14 29             	lea    edx,[ecx+ebp*1]
   4802b:	0f b6 32             	movzx  esi,BYTE PTR [edx]
   4802e:	83 fe 0d             	cmp    esi,0xd
   48031:	0f 85 b3 02 00 00    	jne    fds2cft_branch_28
   48037:	8a b4 24 48 05 00 00 	mov    dh,BYTE PTR [esp+0x548]
   4803e:	41                   	inc    ecx
   4803f:	80 fe 23             	cmp    dh,0x23
   48042:	75 11                	jne    fds2cft_branch_4
   48044:	84 f6                	test   dh,dh
   48046:	75 0d                	jne    fds2cft_branch_4
   48048:	31 c0                	xor    eax,eax
   4804a:	88 f0                	mov    al,dh
   4804c:	83 f8 20             	cmp    eax,0x20
   4804f:	0f 8e 85 02 00 00    	jle    fds2cft_branch_27
fds2cft_branch_4:
   48055:	80 bc 24 48 05 00 00 27 	cmp    BYTE PTR [esp+0x548],0x27
   4805d:	0f 85 3a 01 00 00    	jne    fds2cft_branch_18
   48063:	80 bc 24 49 05 00 00 5c 	cmp    BYTE PTR [esp+0x549],0x5c
   4806b:	75 72                	jne    fds2cft_branch_11
   4806d:	b2 3a                	mov    dl,0x3a
   4806f:	8d b4 24 4a 05 00 00 	lea    esi,[esp+0x54a]
fds2cft_branch_5:
   48076:	8a 06                	mov    al,BYTE PTR [esi]
   48078:	3a c2                	cmp    al,dl
   4807a:	74 12                	je     fds2cft_branch_7
   4807c:	3c 00                	cmp    al,0x0
   4807e:	74 0c                	je     fds2cft_branch_6
   48080:	46                   	inc    esi
   48081:	8a 06                	mov    al,BYTE PTR [esi]
   48083:	3a c2                	cmp    al,dl
   48085:	74 07                	je     fds2cft_branch_7
   48087:	46                   	inc    esi
   48088:	3c 00                	cmp    al,0x0
   4808a:	75 ea                	jne    fds2cft_branch_5
fds2cft_branch_6:
   4808c:	2b f6                	sub    esi,esi
fds2cft_branch_7:
   4808e:	8d 46 01             	lea    eax,[esi+0x1]
   48091:	b2 2c                	mov    dl,0x2c
   48093:	e8 3c e9 02 00       	call   atoi_
   48098:	8d b4 24 4a 05 00 00 	lea    esi,[esp+0x54a]
   4809f:	66 89 84 24 fa 00 00 00 	mov    WORD PTR [esp+0xfa],ax
fds2cft_branch_8:
   480a7:	8a 06                	mov    al,BYTE PTR [esi]
   480a9:	3a c2                	cmp    al,dl
   480ab:	74 12                	je     fds2cft_branch_10
   480ad:	3c 00                	cmp    al,0x0
   480af:	74 0c                	je     fds2cft_branch_9
   480b1:	46                   	inc    esi
   480b2:	8a 06                	mov    al,BYTE PTR [esi]
   480b4:	3a c2                	cmp    al,dl
   480b6:	74 07                	je     fds2cft_branch_10
   480b8:	46                   	inc    esi
   480b9:	3c 00                	cmp    al,0x0
   480bb:	75 ea                	jne    fds2cft_branch_8
fds2cft_branch_9:
   480bd:	2b f6                	sub    esi,esi
fds2cft_branch_10:
   480bf:	8d 46 01             	lea    eax,[esi+0x1]
   480c2:	e8 0d e9 02 00       	call   atoi_
   480c7:	2a 84 24 fa 00 00 00 	sub    al,BYTE PTR [esp+0xfa]
   480ce:	fe c0                	inc    al
   480d0:	30 e4                	xor    ah,ah
   480d2:	66 89 84 24 fa 02 00 00 	mov    WORD PTR [esp+0x2fa],ax
   480da:	e9 fb 01 00 00       	jmp    fds2cft_branch_27
fds2cft_branch_11:
   480df:	b2 3a                	mov    dl,0x3a
   480e1:	8d b4 24 4a 05 00 00 	lea    esi,[esp+0x54a]
fds2cft_branch_12:
   480e8:	8a 06                	mov    al,BYTE PTR [esi]
   480ea:	3a c2                	cmp    al,dl
   480ec:	74 12                	je     fds2cft_branch_14
   480ee:	3c 00                	cmp    al,0x0
   480f0:	74 0c                	je     fds2cft_branch_13
   480f2:	46                   	inc    esi
   480f3:	8a 06                	mov    al,BYTE PTR [esi]
   480f5:	3a c2                	cmp    al,dl
   480f7:	74 07                	je     fds2cft_branch_14
   480f9:	46                   	inc    esi
   480fa:	3c 00                	cmp    al,0x0
   480fc:	75 ea                	jne    fds2cft_branch_12
fds2cft_branch_13:
   480fe:	2b f6                	sub    esi,esi
fds2cft_branch_14:
   48100:	8d 46 01             	lea    eax,[esi+0x1]
   48103:	b2 2c                	mov    dl,0x2c
   48105:	e8 ca e8 02 00       	call   atoi_
   4810a:	0f b6 bc 24 49 05 00 00 	movzx  edi,BYTE PTR [esp+0x549]
   48112:	8d b4 24 4a 05 00 00 	lea    esi,[esp+0x54a]
   48119:	66 89 44 7c 42       	mov    WORD PTR [esp+edi*2+0x42],ax
fds2cft_branch_15:
   4811e:	8a 06                	mov    al,BYTE PTR [esi]
   48120:	3a c2                	cmp    al,dl
   48122:	74 12                	je     fds2cft_branch_17
   48124:	3c 00                	cmp    al,0x0
   48126:	74 0c                	je     fds2cft_branch_16
   48128:	46                   	inc    esi
   48129:	8a 06                	mov    al,BYTE PTR [esi]
   4812b:	3a c2                	cmp    al,dl
   4812d:	74 07                	je     fds2cft_branch_17
   4812f:	46                   	inc    esi
   48130:	3c 00                	cmp    al,0x0
   48132:	75 ea                	jne    fds2cft_branch_15
fds2cft_branch_16:
   48134:	2b f6                	sub    esi,esi
fds2cft_branch_17:
   48136:	8d 46 01             	lea    eax,[esi+0x1]
   48139:	e8 96 e8 02 00       	call   atoi_
   4813e:	2a 44 7c 42          	sub    al,BYTE PTR [esp+edi*2+0x42]
   48142:	31 d2                	xor    edx,edx
   48144:	fe c0                	inc    al
   48146:	8a 94 24 49 05 00 00 	mov    dl,BYTE PTR [esp+0x549]
   4814d:	66 0f b6 f0          	movzx  si,al
   48151:	0f bf 44 54 42       	movsx  eax,WORD PTR [esp+edx*2+0x42]
   48156:	50                   	push   eax
   48157:	52                   	push   edx
   48158:	68 ec b7 00 00       	push   @obj3:colorfnt_cpp_variable_5                                ; fixup: num: 11540, src obj: 1, src ofs: 0x48159, dst obj: 3, dst ofs: 0xb7ec
   4815d:	66 89 b4 54 4e 02 00 00 	mov    WORD PTR [esp+edx*2+0x24e],si
   48165:	e8 e8 89 02 00       	call   printf_
   4816a:	83 c4 0c             	add    esp,0xc
   4816d:	31 c0                	xor    eax,eax
   4816f:	8a 84 24 49 05 00 00 	mov    al,BYTE PTR [esp+0x549]
   48176:	0f bf 94 44 42 02 00 00 	movsx  edx,WORD PTR [esp+eax*2+0x242]
   4817e:	52                   	push   edx
   4817f:	50                   	push   eax
   48180:	68 0a b8 00 00       	push   @obj3:colorfnt_cpp_variable_6                                ; fixup: num: 11539, src obj: 1, src ofs: 0x48181, dst obj: 3, dst ofs: 0xb80a
   48185:	e8 c8 89 02 00       	call   printf_
   4818a:	83 c4 0c             	add    esp,0xc
   4818d:	30 f6                	xor    dh,dh
   4818f:	31 c0                	xor    eax,eax
   48191:	88 b4 24 48 05 00 00 	mov    BYTE PTR [esp+0x548],dh
   48198:	e9 7b fe ff ff       	jmp    fds2cft_branch_2
fds2cft_branch_18:
   4819d:	8d 84 24 48 05 00 00 	lea    eax,[esp+0x548]
   481a4:	bb 05 00 00 00       	mov    ebx,0x5
   481a9:	ba 27 b8 00 00       	mov    edx,@obj3:colorfnt_cpp_variable_7                            ; fixup: num: 11543, src obj: 1, src ofs: 0x481aa, dst obj: 3, dst ofs: 0xb827
   481ae:	e8 45 8e 02 00       	call   strupr_
   481b3:	e8 9b ac 02 00       	call   strncmp_
   481b8:	85 c0                	test   eax,eax
   481ba:	75 30                	jne    fds2cft_branch_21
   481bc:	8d b4 24 4d 05 00 00 	lea    esi,[esp+0x54d]
   481c3:	89 e7                	mov    edi,esp
   481c5:	57                   	push   edi
fds2cft_branch_19:
   481c6:	8a 06                	mov    al,BYTE PTR [esi]
   481c8:	88 07                	mov    BYTE PTR [edi],al
   481ca:	3c 00                	cmp    al,0x0
   481cc:	74 10                	je     fds2cft_branch_20
   481ce:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   481d1:	83 c6 02             	add    esi,0x2
   481d4:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   481d7:	83 c7 02             	add    edi,0x2
   481da:	3c 00                	cmp    al,0x0
   481dc:	75 e8                	jne    fds2cft_branch_19
fds2cft_branch_20:
   481de:	5f                   	pop    edi
   481df:	89 e0                	mov    eax,esp
   481e1:	50                   	push   eax
   481e2:	68 2d b8 00 00       	push   @obj3:colorfnt_cpp_variable_8                                ; fixup: num: 11542, src obj: 1, src ofs: 0x481e3, dst obj: 3, dst ofs: 0xb82d
   481e7:	e9 d4 00 00 00       	jmp    fds2cft_branch_26
fds2cft_branch_21:
   481ec:	8d 84 24 48 05 00 00 	lea    eax,[esp+0x548]
   481f3:	bb 07 00 00 00       	mov    ebx,0x7
   481f8:	ba 3d b8 00 00       	mov    edx,@obj3:colorfnt_cpp_variable_9                            ; fixup: num: 11541, src obj: 1, src ofs: 0x481f9, dst obj: 3, dst ofs: 0xb83d
   481fd:	e8 f6 8d 02 00       	call   strupr_
   48202:	e8 4c ac 02 00       	call   strncmp_
   48207:	85 c0                	test   eax,eax
   48209:	75 3a                	jne    fds2cft_branch_24
   4820b:	8d b4 24 4f 05 00 00 	lea    esi,[esp+0x54f]
   48212:	8d bc 24 48 04 00 00 	lea    edi,[esp+0x448]
   48219:	57                   	push   edi
fds2cft_branch_22:
   4821a:	8a 06                	mov    al,BYTE PTR [esi]
   4821c:	88 07                	mov    BYTE PTR [edi],al
   4821e:	3c 00                	cmp    al,0x0
   48220:	74 10                	je     fds2cft_branch_23
   48222:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   48225:	83 c6 02             	add    esi,0x2
   48228:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   4822b:	83 c7 02             	add    edi,0x2
   4822e:	3c 00                	cmp    al,0x0
   48230:	75 e8                	jne    fds2cft_branch_22
fds2cft_branch_23:
   48232:	5f                   	pop    edi
   48233:	8d 84 24 48 04 00 00 	lea    eax,[esp+0x448]
   4823a:	50                   	push   eax
   4823b:	68 45 b8 00 00       	push   @obj3:colorfnt_cpp_variable_10                               ; fixup: num: 11550, src obj: 1, src ofs: 0x4823c, dst obj: 3, dst ofs: 0xb845
   48240:	e9 7b 00 00 00       	jmp    fds2cft_branch_26
fds2cft_branch_24:
   48245:	bb 07 00 00 00       	mov    ebx,0x7
   4824a:	ba 55 b8 00 00       	mov    edx,@obj3:colorfnt_cpp_variable_11                           ; fixup: num: 11549, src obj: 1, src ofs: 0x4824b, dst obj: 3, dst ofs: 0xb855
   4824f:	8d 84 24 48 05 00 00 	lea    eax,[esp+0x548]
   48256:	e8 f8 ab 02 00       	call   strncmp_
   4825b:	85 c0                	test   eax,eax
   4825d:	75 23                	jne    fds2cft_branch_25
   4825f:	8d 84 24 4f 05 00 00 	lea    eax,[esp+0x54f]
   48266:	e8 69 e7 02 00       	call   atoi_
   4826b:	89 c2                	mov    edx,eax
   4826d:	31 c0                	xor    eax,eax
   4826f:	88 d0                	mov    al,dl
   48271:	66 89 44 24 40       	mov    WORD PTR [esp+0x40],ax
   48276:	31 c0                	xor    eax,eax
   48278:	88 d0                	mov    al,dl
   4827a:	50                   	push   eax
   4827b:	68 5d b8 00 00       	push   @obj3:colorfnt_cpp_variable_12                               ; fixup: num: 11548, src obj: 1, src ofs: 0x4827c, dst obj: 3, dst ofs: 0xb85d
   48280:	eb 3e                	jmp    fds2cft_branch_26
fds2cft_branch_25:
   48282:	bb 06 00 00 00       	mov    ebx,0x6
   48287:	ba 6f b8 00 00       	mov    edx,@obj3:colorfnt_cpp_variable_13                           ; fixup: num: 11547, src obj: 1, src ofs: 0x48288, dst obj: 3, dst ofs: 0xb86f
   4828c:	8d 84 24 48 05 00 00 	lea    eax,[esp+0x548]
   48293:	e8 bb ab 02 00       	call   strncmp_
   48298:	85 c0                	test   eax,eax
   4829a:	75 3e                	jne    fds2cft_branch_27
   4829c:	8d 84 24 4e 05 00 00 	lea    eax,[esp+0x54e]
   482a3:	e8 2c e7 02 00       	call   atoi_
   482a8:	89 c2                	mov    edx,eax
   482aa:	31 c0                	xor    eax,eax
   482ac:	88 d0                	mov    al,dl
   482ae:	66 89 84 24 42 04 00 00 	mov    WORD PTR [esp+0x442],ax
   482b6:	31 c0                	xor    eax,eax
   482b8:	88 d0                	mov    al,dl
   482ba:	50                   	push   eax
   482bb:	68 76 b8 00 00       	push   @obj3:colorfnt_cpp_variable_14                               ; fixup: num: 11546, src obj: 1, src ofs: 0x482bc, dst obj: 3, dst ofs: 0xb876
fds2cft_branch_26:
   482c0:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 11545, src obj: 1, src ofs: 0x482c1, dst obj: 3, dst ofs: 0x237fc
   482c5:	e8 17 89 02 00       	call   sprintf_
   482ca:	83 c4 0c             	add    esp,0xc
   482cd:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 11544, src obj: 1, src ofs: 0x482ce, dst obj: 3, dst ofs: 0x237fc
   482d2:	e8 7b 88 02 00       	call   printf_
   482d7:	83 c4 04             	add    esp,0x4
fds2cft_branch_27:
   482da:	30 f6                	xor    dh,dh
   482dc:	31 c0                	xor    eax,eax
   482de:	88 b4 24 48 05 00 00 	mov    BYTE PTR [esp+0x548],dh
   482e5:	e9 2e fd ff ff       	jmp    fds2cft_branch_2
fds2cft_branch_28:
   482ea:	40                   	inc    eax
   482eb:	8a 12                	mov    dl,BYTE PTR [edx]
   482ed:	88 94 04 47 05 00 00 	mov    BYTE PTR [esp+eax*1+0x547],dl
   482f4:	30 d2                	xor    dl,dl
   482f6:	88 94 04 48 05 00 00 	mov    BYTE PTR [esp+eax*1+0x548],dl
   482fd:	e9 16 fd ff ff       	jmp    fds2cft_branch_2
fds2cft_branch_29:
   48302:	b9 cc 00 00 00       	mov    ecx,0xcc
   48307:	bb 88 b8 00 00       	mov    ebx,@obj3:colorfnt_cpp_variable_15                           ; fixup: num: 11553, src obj: 1, src ofs: 0x48308, dst obj: 3, dst ofs: 0xb888
   4830c:	8d 84 24 48 04 00 00 	lea    eax,[esp+0x448]
   48313:	31 d2                	xor    edx,edx
   48315:	e8 c6 4a fc ff       	call   XFILE_read2
   4831a:	89 84 24 58 06 00 00 	mov    DWORD PTR [esp+0x658],eax
   48321:	85 c0                	test   eax,eax
   48323:	75 0f                	jne    fds2cft_branch_30
   48325:	bb 95 b8 00 00       	mov    ebx,@obj3:colorfnt_cpp_variable_16                           ; fixup: num: 11552, src obj: 1, src ofs: 0x48326, dst obj: 3, dst ofs: 0xb895
   4832a:	ba cd 00 00 00       	mov    edx,0xcd
   4832f:	e8 fc fc fe ff       	call   _error_report
fds2cft_branch_30:
   48334:	8d 84 24 48 04 00 00 	lea    eax,[esp+0x448]
   4833b:	e8 40 49 fc ff       	call   XFILE_size
   48340:	05 48 04 00 00       	add    eax,0x448
   48345:	89 84 24 4c 06 00 00 	mov    DWORD PTR [esp+0x64c],eax
   4834c:	e8 42 91 02 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   48351:	89 84 24 48 06 00 00 	mov    DWORD PTR [esp+0x648],eax
   48358:	85 c0                	test   eax,eax
   4835a:	75 0f                	jne    fds2cft_branch_31
   4835c:	bb b1 b8 00 00       	mov    ebx,@obj3:colorfnt_cpp_variable_17                           ; fixup: num: 11551, src obj: 1, src ofs: 0x4835d, dst obj: 3, dst ofs: 0xb8b1
   48361:	ba d5 00 00 00       	mov    edx,0xd5
   48366:	e8 c5 fc fe ff       	call   _error_report
fds2cft_branch_31:
   4836b:	b9 48 04 00 00       	mov    ecx,0x448
   48370:	89 e6                	mov    esi,esp
   48372:	8b bc 24 48 06 00 00 	mov    edi,DWORD PTR [esp+0x648]
   48379:	8b 9c 24 4c 06 00 00 	mov    ebx,DWORD PTR [esp+0x64c]
   48380:	57                   	push   edi
   48381:	89 c8                	mov    eax,ecx
   48383:	c1 e9 02             	shr    ecx,0x2
   48386:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
   48388:	8a c8                	mov    cl,al
   4838a:	80 e1 03             	and    cl,0x3
   4838d:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
   4838f:	5f                   	pop    edi
   48390:	8b 8c 24 4c 06 00 00 	mov    ecx,DWORD PTR [esp+0x64c]
   48397:	8b b4 24 58 06 00 00 	mov    esi,DWORD PTR [esp+0x658]
   4839e:	81 c7 48 04 00 00    	add    edi,0x448
   483a4:	81 e9 48 04 00 00    	sub    ecx,0x448
   483aa:	8b 94 24 48 06 00 00 	mov    edx,DWORD PTR [esp+0x648]
   483b1:	57                   	push   edi
   483b2:	89 c8                	mov    eax,ecx
   483b4:	c1 e9 02             	shr    ecx,0x2
   483b7:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
   483b9:	8a c8                	mov    cl,al
   483bb:	80 e1 03             	and    cl,0x3
   483be:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
   483c0:	5f                   	pop    edi
   483c1:	8b 84 24 50 06 00 00 	mov    eax,DWORD PTR [esp+0x650]
   483c8:	31 c9                	xor    ecx,ecx
   483ca:	e8 b1 4e fc ff       	call   XFILE_write
   483cf:	8b 84 24 48 06 00 00 	mov    eax,DWORD PTR [esp+0x648]
   483d6:	e8 0d 90 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   483db:	89 e8                	mov    eax,ebp
   483dd:	e8 06 90 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   483e2:	8b 84 24 58 06 00 00 	mov    eax,DWORD PTR [esp+0x658]
   483e9:	e8 fa 8f 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   483ee:	81 c4 5c 06 00 00    	add    esp,0x65c
   483f4:	5d                   	pop    ebp
   483f5:	5f                   	pop    edi
   483f6:	5e                   	pop    esi
   483f7:	59                   	pop    ecx
   483f8:	5b                   	pop    ebx
   483f9:	c3                   	ret    
   483fa:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'bm_draw_string_CFONT'               -
;-------------------------------------------------
bm_draw_string_CFONT:
   48400:	56                   	push   esi
   48401:	57                   	push   edi
   48402:	55                   	push   ebp
   48403:	83 ec 2c             	sub    esp,0x2c
   48406:	8b 6c 24 40          	mov    ebp,DWORD PTR [esp+0x40]
   4840a:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
   4840e:	89 54 24 24          	mov    DWORD PTR [esp+0x24],edx
   48412:	89 5c 24 18          	mov    DWORD PTR [esp+0x18],ebx
   48416:	89 ce                	mov    esi,ecx
   48418:	85 ed                	test   ebp,ebp
   4841a:	75 11                	jne    bm_draw_string_CFONT_branch_1
   4841c:	bb d2 b8 00 00       	mov    ebx,@obj3:colorfnt_cpp_variable_18                           ; fixup: num: 11554, src obj: 1, src ofs: 0x4841d, dst obj: 3, dst ofs: 0xb8d2
   48421:	ba ec 00 00 00       	mov    edx,0xec
   48426:	31 c0                	xor    eax,eax
   48428:	e8 03 fc fe ff       	call   _error_report
bm_draw_string_CFONT_branch_1:
   4842d:	8b 7c 24 0c          	mov    edi,DWORD PTR [esp+0xc]
   48431:	29 c9                	sub    ecx,ecx
   48433:	49                   	dec    ecx
   48434:	31 c0                	xor    eax,eax
   48436:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
   48438:	f7 d1                	not    ecx
   4843a:	49                   	dec    ecx
   4843b:	85 c9                	test   ecx,ecx
   4843d:	0f 86 95 01 00 00    	jbe    bm_draw_string_CFONT_branch_15
   48443:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
   48447:	8b 80 44 04 00 00    	mov    eax,DWORD PTR [eax+0x444]
   4844d:	89 44 24 20          	mov    DWORD PTR [esp+0x20],eax
   48451:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
   48454:	31 d2                	xor    edx,edx
   48456:	48                   	dec    eax
   48457:	89 54 24 28          	mov    DWORD PTR [esp+0x28],edx
   4845b:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
   4845f:	85 c0                	test   eax,eax
   48461:	0f 86 71 01 00 00    	jbe    bm_draw_string_CFONT_branch_15
   48467:	89 34 24             	mov    DWORD PTR [esp],esi
bm_draw_string_CFONT_branch_2:
   4846a:	8b 7c 24 0c          	mov    edi,DWORD PTR [esp+0xc]
   4846e:	8b 74 24 18          	mov    esi,DWORD PTR [esp+0x18]
   48472:	31 c0                	xor    eax,eax
   48474:	8a 17                	mov    dl,BYTE PTR [edi]
   48476:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
   4847a:	84 d2                	test   dl,dl
   4847c:	74 26                	je     bm_draw_string_CFONT_branch_5
   4847e:	8b 04 24             	mov    eax,DWORD PTR [esp]
   48481:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
bm_draw_string_CFONT_branch_3:
   48485:	8a 1f                	mov    bl,BYTE PTR [edi]
   48487:	80 fb 20             	cmp    bl,0x20
   4848a:	74 05                	je     bm_draw_string_CFONT_branch_4
   4848c:	80 fb 5f             	cmp    bl,0x5f
   4848f:	75 31                	jne    bm_draw_string_CFONT_branch_6
bm_draw_string_CFONT_branch_4:
   48491:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
   48495:	0f bf 80 42 04 00 00 	movsx  eax,WORD PTR [eax+0x442]
   4849c:	47                   	inc    edi
   4849d:	01 c6                	add    esi,eax
   4849f:	e9 26 01 00 00       	jmp    bm_draw_string_CFONT_branch_14
bm_draw_string_CFONT_branch_5:
   484a4:	8b 0c 24             	mov    ecx,DWORD PTR [esp]
   484a7:	8b 74 24 28          	mov    esi,DWORD PTR [esp+0x28]
   484ab:	8b 7c 24 14          	mov    edi,DWORD PTR [esp+0x14]
   484af:	41                   	inc    ecx
   484b0:	46                   	inc    esi
   484b1:	89 0c 24             	mov    DWORD PTR [esp],ecx
   484b4:	89 74 24 28          	mov    DWORD PTR [esp+0x28],esi
   484b8:	39 fe                	cmp    esi,edi
   484ba:	0f 83 18 01 00 00    	jae    bm_draw_string_CFONT_branch_15
   484c0:	eb a8                	jmp    bm_draw_string_CFONT_branch_2
bm_draw_string_CFONT_branch_6:
   484c2:	80 fb 0d             	cmp    bl,0xd
   484c5:	74 05                	je     bm_draw_string_CFONT_branch_7
   484c7:	80 fb 0a             	cmp    bl,0xa
   484ca:	75 21                	jne    bm_draw_string_CFONT_branch_8
bm_draw_string_CFONT_branch_7:
   484cc:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
   484d0:	8b 4c 24 44          	mov    ecx,DWORD PTR [esp+0x44]
   484d4:	0f bf 40 40          	movsx  eax,WORD PTR [eax+0x40]
   484d8:	8b 74 24 08          	mov    esi,DWORD PTR [esp+0x8]
   484dc:	01 c8                	add    eax,ecx
   484de:	01 c6                	add    esi,eax
   484e0:	89 74 24 08          	mov    DWORD PTR [esp+0x8],esi
   484e4:	8b 74 24 18          	mov    esi,DWORD PTR [esp+0x18]
   484e8:	e9 dc 00 00 00       	jmp    bm_draw_string_CFONT_branch_13
bm_draw_string_CFONT_branch_8:
   484ed:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
   484f1:	8b 5c 24 08          	mov    ebx,DWORD PTR [esp+0x8]
   484f5:	31 d2                	xor    edx,edx
   484f7:	01 d8                	add    eax,ebx
   484f9:	89 54 24 10          	mov    DWORD PTR [esp+0x10],edx
   484fd:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
   48501:	eb 0a                	jmp    bm_draw_string_CFONT_branch_10
bm_draw_string_CFONT_branch_9:
   48503:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
   48507:	42                   	inc    edx
   48508:	46                   	inc    esi
   48509:	89 54 24 10          	mov    DWORD PTR [esp+0x10],edx
bm_draw_string_CFONT_branch_10:
   4850d:	31 c0                	xor    eax,eax
   4850f:	8a 07                	mov    al,BYTE PTR [edi]
   48511:	8b 4c 24 24          	mov    ecx,DWORD PTR [esp+0x24]
   48515:	01 c0                	add    eax,eax
   48517:	01 c1                	add    ecx,eax
   48519:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
   4851d:	0f bf 81 42 02 00 00 	movsx  eax,WORD PTR [ecx+0x242]
   48524:	39 d0                	cmp    eax,edx
   48526:	0f 8e 9d 00 00 00    	jle    bm_draw_string_CFONT_branch_13
   4852c:	8b 54 24 20          	mov    edx,DWORD PTR [esp+0x20]
   48530:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
   48534:	0f af 02             	imul   eax,DWORD PTR [edx]
   48537:	8b 52 08             	mov    edx,DWORD PTR [edx+0x8]
   4853a:	0f bf 49 42          	movsx  ecx,WORD PTR [ecx+0x42]
   4853e:	01 d0                	add    eax,edx
   48540:	01 c1                	add    ecx,eax
   48542:	03 4c 24 10          	add    ecx,DWORD PTR [esp+0x10]
   48546:	8a 09                	mov    cl,BYTE PTR [ecx]
   48548:	31 c0                	xor    eax,eax
   4854a:	88 c8                	mov    al,cl
   4854c:	85 c0                	test   eax,eax
   4854e:	74 b3                	je     bm_draw_string_CFONT_branch_9
   48550:	8b 55 00             	mov    edx,DWORD PTR [ebp+0x0]
   48553:	39 d6                	cmp    esi,edx
   48555:	76 2a                	jbe    bm_draw_string_CFONT_branch_11
   48557:	8b 5c 24 0c          	mov    ebx,DWORD PTR [esp+0xc]
   4855b:	53                   	push   ebx
   4855c:	52                   	push   edx
   4855d:	56                   	push   esi
   4855e:	68 f2 b8 00 00       	push   @obj3:colorfnt_cpp_variable_19                               ; fixup: num: 11560, src obj: 1, src ofs: 0x4855f, dst obj: 3, dst ofs: 0xb8f2
   48563:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 11559, src obj: 1, src ofs: 0x48564, dst obj: 3, dst ofs: 0x237fc
   48568:	bb 1f b9 00 00       	mov    ebx,@obj3:colorfnt_cpp_variable_20                           ; fixup: num: 11558, src obj: 1, src ofs: 0x48569, dst obj: 3, dst ofs: 0xb91f
   4856d:	e8 6f 86 02 00       	call   sprintf_
   48572:	83 c4 14             	add    esp,0x14
   48575:	ba 1b 01 00 00       	mov    edx,0x11b
   4857a:	31 c0                	xor    eax,eax
   4857c:	e8 af fa fe ff       	call   _error_report
bm_draw_string_CFONT_branch_11:
   48581:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
   48585:	8b 55 04             	mov    edx,DWORD PTR [ebp+0x4]
   48588:	39 d0                	cmp    eax,edx
   4858a:	76 25                	jbe    bm_draw_string_CFONT_branch_12
   4858c:	52                   	push   edx
   4858d:	50                   	push   eax
   4858e:	68 38 b9 00 00       	push   @obj3:colorfnt_cpp_variable_21                               ; fixup: num: 11557, src obj: 1, src ofs: 0x4858f, dst obj: 3, dst ofs: 0xb938
   48593:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 11556, src obj: 1, src ofs: 0x48594, dst obj: 3, dst ofs: 0x237fc
   48598:	bb 64 b9 00 00       	mov    ebx,@obj3:colorfnt_cpp_variable_22                           ; fixup: num: 11555, src obj: 1, src ofs: 0x48599, dst obj: 3, dst ofs: 0xb964
   4859d:	e8 3f 86 02 00       	call   sprintf_
   485a2:	83 c4 10             	add    esp,0x10
   485a5:	ba 24 01 00 00       	mov    edx,0x124
   485aa:	31 c0                	xor    eax,eax
   485ac:	e8 7f fa fe ff       	call   _error_report
bm_draw_string_CFONT_branch_12:
   485b1:	8b 5c 24 1c          	mov    ebx,DWORD PTR [esp+0x1c]
   485b5:	81 e1 ff 00 00 00    	and    ecx,0xff
   485bb:	89 f2                	mov    edx,esi
   485bd:	89 e8                	mov    eax,ebp
   485bf:	e8 ec b1 fc ff       	call   set_bm_pixel
   485c4:	e9 3a ff ff ff       	jmp    bm_draw_string_CFONT_branch_9
bm_draw_string_CFONT_branch_13:
   485c9:	47                   	inc    edi
bm_draw_string_CFONT_branch_14:
   485ca:	80 3f 00             	cmp    BYTE PTR [edi],0x0
   485cd:	0f 85 b2 fe ff ff    	jne    bm_draw_string_CFONT_branch_3
   485d3:	e9 cc fe ff ff       	jmp    bm_draw_string_CFONT_branch_5
bm_draw_string_CFONT_branch_15:
   485d8:	83 c4 2c             	add    esp,0x2c
   485db:	5d                   	pop    ebp
   485dc:	5f                   	pop    edi
   485dd:	5e                   	pop    esi
   485de:	c2 0c 00             	ret    0xc
   485e1:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   485e7:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
   485ed:	8d 40 00             	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'bm_display_centered_list_CFONT'     -
;-------------------------------------------------
bm_display_centered_list_CFONT:
   485f0:	51                   	push   ecx
   485f1:	56                   	push   esi
   485f2:	57                   	push   edi
   485f3:	55                   	push   ebp
   485f4:	83 ec 44             	sub    esp,0x44
   485f7:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
   485fb:	89 5c 24 24          	mov    DWORD PTR [esp+0x24],ebx
   485ff:	8b 74 24 04          	mov    esi,DWORD PTR [esp+0x4]
   48603:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
   48607:	30 d2                	xor    dl,dl
   48609:	31 c9                	xor    ecx,ecx
   4860b:	88 54 24 40          	mov    BYTE PTR [esp+0x40],dl
   4860f:	eb 01                	jmp    bm_display_centered_list_CFONT_branch_2
bm_display_centered_list_CFONT_branch_1:
   48611:	40                   	inc    eax
bm_display_centered_list_CFONT_branch_2:
   48612:	8a 18                	mov    bl,BYTE PTR [eax]
   48614:	8d 51 01             	lea    edx,[ecx+0x1]
   48617:	84 db                	test   bl,bl
   48619:	74 09                	je     bm_display_centered_list_CFONT_branch_3
   4861b:	80 fb 0a             	cmp    bl,0xa
   4861e:	75 f1                	jne    bm_display_centered_list_CFONT_branch_1
   48620:	89 d1                	mov    ecx,edx
   48622:	eb ed                	jmp    bm_display_centered_list_CFONT_branch_1
bm_display_centered_list_CFONT_branch_3:
   48624:	0f bf 46 40          	movsx  eax,WORD PTR [esi+0x40]
   48628:	83 c0 02             	add    eax,0x2
   4862b:	0f af d0             	imul   edx,eax
   4862e:	b8 df 01 00 00       	mov    eax,0x1df
   48633:	29 d0                	sub    eax,edx
   48635:	89 c2                	mov    edx,eax
   48637:	c1 fa 1f             	sar    edx,0x1f
   4863a:	2b c2                	sub    eax,edx
   4863c:	d1 f8                	sar    eax,1
   4863e:	89 04 24             	mov    DWORD PTR [esp],eax
   48641:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
   48645:	80 38 00             	cmp    BYTE PTR [eax],0x0
   48648:	0f 84 a1 02 00 00    	je     bm_display_centered_list_CFONT_branch_29
bm_display_centered_list_CFONT_branch_4:
   4864e:	8b 6c 24 0c          	mov    ebp,DWORD PTR [esp+0xc]
   48652:	80 7d 00 0a          	cmp    BYTE PTR [ebp+0x0],0xa
   48656:	74 19                	je     bm_display_centered_list_CFONT_branch_6
bm_display_centered_list_CFONT_branch_5:
   48658:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
   4865c:	80 38 00             	cmp    BYTE PTR [eax],0x0
   4865f:	74 10                	je     bm_display_centered_list_CFONT_branch_6
   48661:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
   48665:	42                   	inc    edx
   48666:	8a 2a                	mov    ch,BYTE PTR [edx]
   48668:	89 54 24 0c          	mov    DWORD PTR [esp+0xc],edx
   4866c:	80 fd 0a             	cmp    ch,0xa
   4866f:	75 e7                	jne    bm_display_centered_list_CFONT_branch_5
bm_display_centered_list_CFONT_branch_6:
   48671:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
   48675:	80 38 0a             	cmp    BYTE PTR [eax],0xa
   48678:	75 09                	jne    bm_display_centered_list_CFONT_branch_7
   4867a:	b3 01                	mov    bl,0x1
   4867c:	c6 00 00             	mov    BYTE PTR [eax],0x0
   4867f:	88 5c 24 40          	mov    BYTE PTR [esp+0x40],bl
bm_display_centered_list_CFONT_branch_7:
   48683:	bb 01 00 00 00       	mov    ebx,0x1
   48688:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
   4868c:	89 e8                	mov    eax,ebp
   4868e:	8a 55 00             	mov    dl,BYTE PTR [ebp+0x0]
   48691:	31 ff                	xor    edi,edi
   48693:	84 d2                	test   dl,dl
   48695:	74 30                	je     bm_display_centered_list_CFONT_branch_12
bm_display_centered_list_CFONT_branch_8:
   48697:	31 d2                	xor    edx,edx
   48699:	8a 10                	mov    dl,BYTE PTR [eax]
   4869b:	40                   	inc    eax
   4869c:	83 fa 20             	cmp    edx,0x20
   4869f:	75 09                	jne    bm_display_centered_list_CFONT_branch_9
   486a1:	0f bf 91 42 04 00 00 	movsx  edx,WORD PTR [ecx+0x442]
   486a8:	eb 16                	jmp    bm_display_centered_list_CFONT_branch_11
bm_display_centered_list_CFONT_branch_9:
   486aa:	83 fa 5f             	cmp    edx,0x5f
   486ad:	75 09                	jne    bm_display_centered_list_CFONT_branch_10
   486af:	0f bf 91 42 04 00 00 	movsx  edx,WORD PTR [ecx+0x442]
   486b6:	eb 08                	jmp    bm_display_centered_list_CFONT_branch_11
bm_display_centered_list_CFONT_branch_10:
   486b8:	0f bf 94 51 42 02 00 00 	movsx  edx,WORD PTR [ecx+edx*2+0x242]
bm_display_centered_list_CFONT_branch_11:
   486c0:	01 d7                	add    edi,edx
   486c2:	80 38 00             	cmp    BYTE PTR [eax],0x0
   486c5:	75 d0                	jne    bm_display_centered_list_CFONT_branch_8
bm_display_centered_list_CFONT_branch_12:
   486c7:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
   486cb:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
   486cf:	8b 34 24             	mov    esi,DWORD PTR [esp]
   486d2:	89 6c 24 1c          	mov    DWORD PTR [esp+0x1c],ebp
   486d6:	8b 00                	mov    eax,DWORD PTR [eax]
   486d8:	89 5c 24 28          	mov    DWORD PTR [esp+0x28],ebx
   486dc:	29 f8                	sub    eax,edi
   486de:	8b 6c 24 24          	mov    ebp,DWORD PTR [esp+0x24]
   486e2:	d1 e8                	shr    eax,1
   486e4:	89 54 24 38          	mov    DWORD PTR [esp+0x38],edx
   486e8:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
   486ec:	85 ed                	test   ebp,ebp
   486ee:	75 11                	jne    bm_display_centered_list_CFONT_branch_13
   486f0:	bb d2 b8 00 00       	mov    ebx,@obj3:colorfnt_cpp_variable_18                           ; fixup: num: 11561, src obj: 1, src ofs: 0x486f1, dst obj: 3, dst ofs: 0xb8d2
   486f5:	ba ec 00 00 00       	mov    edx,0xec
   486fa:	31 c0                	xor    eax,eax
   486fc:	e8 2f f9 fe ff       	call   _error_report
bm_display_centered_list_CFONT_branch_13:
   48701:	8b 7c 24 1c          	mov    edi,DWORD PTR [esp+0x1c]
   48705:	29 c9                	sub    ecx,ecx
   48707:	49                   	dec    ecx
   48708:	31 c0                	xor    eax,eax
   4870a:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
   4870c:	f7 d1                	not    ecx
   4870e:	49                   	dec    ecx
   4870f:	85 c9                	test   ecx,ecx
   48711:	0f 86 99 01 00 00    	jbe    bm_display_centered_list_CFONT_branch_27
   48717:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
   4871b:	8b 80 44 04 00 00    	mov    eax,DWORD PTR [eax+0x444]
   48721:	89 44 24 34          	mov    DWORD PTR [esp+0x34],eax
   48725:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
   48728:	31 c9                	xor    ecx,ecx
   4872a:	48                   	dec    eax
   4872b:	89 4c 24 3c          	mov    DWORD PTR [esp+0x3c],ecx
   4872f:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
   48733:	85 c0                	test   eax,eax
   48735:	0f 86 75 01 00 00    	jbe    bm_display_centered_list_CFONT_branch_27
   4873b:	89 74 24 14          	mov    DWORD PTR [esp+0x14],esi
bm_display_centered_list_CFONT_branch_14:
   4873f:	8b 7c 24 1c          	mov    edi,DWORD PTR [esp+0x1c]
   48743:	8b 74 24 10          	mov    esi,DWORD PTR [esp+0x10]
   48747:	31 c9                	xor    ecx,ecx
   48749:	8a 1f                	mov    bl,BYTE PTR [edi]
   4874b:	89 4c 24 18          	mov    DWORD PTR [esp+0x18],ecx
   4874f:	84 db                	test   bl,bl
   48751:	74 27                	je     bm_display_centered_list_CFONT_branch_17
   48753:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
   48757:	89 44 24 2c          	mov    DWORD PTR [esp+0x2c],eax
bm_display_centered_list_CFONT_branch_15:
   4875b:	8a 0f                	mov    cl,BYTE PTR [edi]
   4875d:	80 f9 20             	cmp    cl,0x20
   48760:	74 05                	je     bm_display_centered_list_CFONT_branch_16
   48762:	80 f9 5f             	cmp    cl,0x5f
   48765:	75 33                	jne    bm_display_centered_list_CFONT_branch_18
bm_display_centered_list_CFONT_branch_16:
   48767:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
   4876b:	0f bf 80 42 04 00 00 	movsx  eax,WORD PTR [eax+0x442]
   48772:	47                   	inc    edi
   48773:	01 c6                	add    esi,eax
   48775:	e9 28 01 00 00       	jmp    bm_display_centered_list_CFONT_branch_26
bm_display_centered_list_CFONT_branch_17:
   4877a:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
   4877e:	8b 54 24 3c          	mov    edx,DWORD PTR [esp+0x3c]
   48782:	8b 5c 24 08          	mov    ebx,DWORD PTR [esp+0x8]
   48786:	40                   	inc    eax
   48787:	42                   	inc    edx
   48788:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
   4878c:	89 54 24 3c          	mov    DWORD PTR [esp+0x3c],edx
   48790:	39 da                	cmp    edx,ebx
   48792:	0f 83 18 01 00 00    	jae    bm_display_centered_list_CFONT_branch_27
   48798:	eb a5                	jmp    bm_display_centered_list_CFONT_branch_14
bm_display_centered_list_CFONT_branch_18:
   4879a:	80 f9 0d             	cmp    cl,0xd
   4879d:	74 05                	je     bm_display_centered_list_CFONT_branch_19
   4879f:	80 f9 0a             	cmp    cl,0xa
   487a2:	75 21                	jne    bm_display_centered_list_CFONT_branch_20
bm_display_centered_list_CFONT_branch_19:
   487a4:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
   487a8:	8b 5c 24 28          	mov    ebx,DWORD PTR [esp+0x28]
   487ac:	0f bf 40 40          	movsx  eax,WORD PTR [eax+0x40]
   487b0:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
   487b4:	01 d8                	add    eax,ebx
   487b6:	01 c1                	add    ecx,eax
   487b8:	8b 74 24 10          	mov    esi,DWORD PTR [esp+0x10]
   487bc:	89 4c 24 18          	mov    DWORD PTR [esp+0x18],ecx
   487c0:	e9 dc 00 00 00       	jmp    bm_display_centered_list_CFONT_branch_25
bm_display_centered_list_CFONT_branch_20:
   487c5:	31 c0                	xor    eax,eax
   487c7:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
   487cb:	89 44 24 20          	mov    DWORD PTR [esp+0x20],eax
   487cf:	8b 44 24 2c          	mov    eax,DWORD PTR [esp+0x2c]
   487d3:	01 d0                	add    eax,edx
   487d5:	89 44 24 30          	mov    DWORD PTR [esp+0x30],eax
   487d9:	eb 0a                	jmp    bm_display_centered_list_CFONT_branch_22
bm_display_centered_list_CFONT_branch_21:
   487db:	8b 54 24 20          	mov    edx,DWORD PTR [esp+0x20]
   487df:	42                   	inc    edx
   487e0:	46                   	inc    esi
   487e1:	89 54 24 20          	mov    DWORD PTR [esp+0x20],edx
bm_display_centered_list_CFONT_branch_22:
   487e5:	31 c9                	xor    ecx,ecx
   487e7:	8a 0f                	mov    cl,BYTE PTR [edi]
   487e9:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
   487ed:	01 c9                	add    ecx,ecx
   487ef:	01 c1                	add    ecx,eax
   487f1:	8b 54 24 20          	mov    edx,DWORD PTR [esp+0x20]
   487f5:	0f bf 81 42 02 00 00 	movsx  eax,WORD PTR [ecx+0x242]
   487fc:	39 d0                	cmp    eax,edx
   487fe:	0f 8e 9d 00 00 00    	jle    bm_display_centered_list_CFONT_branch_25
   48804:	8b 54 24 34          	mov    edx,DWORD PTR [esp+0x34]
   48808:	8b 44 24 3c          	mov    eax,DWORD PTR [esp+0x3c]
   4880c:	0f af 02             	imul   eax,DWORD PTR [edx]
   4880f:	8b 52 08             	mov    edx,DWORD PTR [edx+0x8]
   48812:	0f bf 49 42          	movsx  ecx,WORD PTR [ecx+0x42]
   48816:	01 d0                	add    eax,edx
   48818:	01 c8                	add    eax,ecx
   4881a:	03 44 24 20          	add    eax,DWORD PTR [esp+0x20]
   4881e:	8a 08                	mov    cl,BYTE PTR [eax]
   48820:	31 c0                	xor    eax,eax
   48822:	88 c8                	mov    al,cl
   48824:	85 c0                	test   eax,eax
   48826:	74 b3                	je     bm_display_centered_list_CFONT_branch_21
   48828:	8b 45 00             	mov    eax,DWORD PTR [ebp+0x0]
   4882b:	39 c6                	cmp    esi,eax
   4882d:	76 2a                	jbe    bm_display_centered_list_CFONT_branch_23
   4882f:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
   48833:	52                   	push   edx
   48834:	50                   	push   eax
   48835:	56                   	push   esi
   48836:	68 f2 b8 00 00       	push   @obj3:colorfnt_cpp_variable_19                               ; fixup: num: 11564, src obj: 1, src ofs: 0x48837, dst obj: 3, dst ofs: 0xb8f2
   4883b:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 11563, src obj: 1, src ofs: 0x4883c, dst obj: 3, dst ofs: 0x237fc
   48840:	bb 1f b9 00 00       	mov    ebx,@obj3:colorfnt_cpp_variable_20                           ; fixup: num: 11562, src obj: 1, src ofs: 0x48841, dst obj: 3, dst ofs: 0xb91f
   48845:	e8 97 83 02 00       	call   sprintf_
   4884a:	83 c4 14             	add    esp,0x14
   4884d:	ba 1b 01 00 00       	mov    edx,0x11b
   48852:	31 c0                	xor    eax,eax
   48854:	e8 d7 f7 fe ff       	call   _error_report
bm_display_centered_list_CFONT_branch_23:
   48859:	8b 44 24 3c          	mov    eax,DWORD PTR [esp+0x3c]
   4885d:	8b 55 04             	mov    edx,DWORD PTR [ebp+0x4]
   48860:	39 d0                	cmp    eax,edx
   48862:	76 25                	jbe    bm_display_centered_list_CFONT_branch_24
   48864:	52                   	push   edx
   48865:	50                   	push   eax
   48866:	68 38 b9 00 00       	push   @obj3:colorfnt_cpp_variable_21                               ; fixup: num: 11567, src obj: 1, src ofs: 0x48867, dst obj: 3, dst ofs: 0xb938
   4886b:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 11566, src obj: 1, src ofs: 0x4886c, dst obj: 3, dst ofs: 0x237fc
   48870:	bb 64 b9 00 00       	mov    ebx,@obj3:colorfnt_cpp_variable_22                           ; fixup: num: 11565, src obj: 1, src ofs: 0x48871, dst obj: 3, dst ofs: 0xb964
   48875:	e8 67 83 02 00       	call   sprintf_
   4887a:	83 c4 10             	add    esp,0x10
   4887d:	ba 24 01 00 00       	mov    edx,0x124
   48882:	31 c0                	xor    eax,eax
   48884:	e8 a7 f7 fe ff       	call   _error_report
bm_display_centered_list_CFONT_branch_24:
   48889:	8b 5c 24 30          	mov    ebx,DWORD PTR [esp+0x30]
   4888d:	81 e1 ff 00 00 00    	and    ecx,0xff
   48893:	89 f2                	mov    edx,esi
   48895:	89 e8                	mov    eax,ebp
   48897:	e8 14 af fc ff       	call   set_bm_pixel
   4889c:	e9 3a ff ff ff       	jmp    bm_display_centered_list_CFONT_branch_21
bm_display_centered_list_CFONT_branch_25:
   488a1:	47                   	inc    edi
bm_display_centered_list_CFONT_branch_26:
   488a2:	80 3f 00             	cmp    BYTE PTR [edi],0x0
   488a5:	0f 85 b0 fe ff ff    	jne    bm_display_centered_list_CFONT_branch_15
   488ab:	e9 ca fe ff ff       	jmp    bm_display_centered_list_CFONT_branch_17
bm_display_centered_list_CFONT_branch_27:
   488b0:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
   488b4:	0f bf 40 40          	movsx  eax,WORD PTR [eax+0x40]
   488b8:	8b 1c 24             	mov    ebx,DWORD PTR [esp]
   488bb:	83 c0 02             	add    eax,0x2
   488be:	01 c3                	add    ebx,eax
   488c0:	31 c0                	xor    eax,eax
   488c2:	8a 44 24 40          	mov    al,BYTE PTR [esp+0x40]
   488c6:	89 1c 24             	mov    DWORD PTR [esp],ebx
   488c9:	83 f8 01             	cmp    eax,0x1
   488cc:	75 14                	jne    bm_display_centered_list_CFONT_branch_28
   488ce:	30 d2                	xor    dl,dl
   488d0:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
   488d4:	88 54 24 40          	mov    BYTE PTR [esp+0x40],dl
   488d8:	8d 48 01             	lea    ecx,[eax+0x1]
   488db:	c6 00 0a             	mov    BYTE PTR [eax],0xa
   488de:	89 4c 24 0c          	mov    DWORD PTR [esp+0xc],ecx
bm_display_centered_list_CFONT_branch_28:
   488e2:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
   488e6:	80 38 00             	cmp    BYTE PTR [eax],0x0
   488e9:	0f 85 5f fd ff ff    	jne    bm_display_centered_list_CFONT_branch_4
bm_display_centered_list_CFONT_branch_29:
   488ef:	83 c4 44             	add    esp,0x44
   488f2:	5d                   	pop    ebp
   488f3:	5f                   	pop    edi
   488f4:	5e                   	pop    esi
   488f5:	59                   	pop    ecx
   488f6:	c3                   	ret    
   488f7:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   488fd:	8d 52 00             	lea    edx,[edx+0x0]

;-------------------------------------------------
;  Function 'charwidthCFN'                       -
;-------------------------------------------------
charwidthCFN:
   48900:	83 f8 20             	cmp    eax,0x20
   48903:	75 08                	jne    charwidthCFN_branch_1
   48905:	0f bf 82 42 04 00 00 	movsx  eax,WORD PTR [edx+0x442]
   4890c:	c3                   	ret    
charwidthCFN_branch_1:
   4890d:	83 f8 5f             	cmp    eax,0x5f
   48910:	75 08                	jne    charwidthCFN_branch_2
   48912:	0f bf 82 42 04 00 00 	movsx  eax,WORD PTR [edx+0x442]
   48919:	c3                   	ret    
charwidthCFN_branch_2:
   4891a:	0f bf 84 42 42 02 00 00 	movsx  eax,WORD PTR [edx+eax*2+0x242]
   48922:	c3                   	ret    
   48923:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   48929:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
   4892f:	90                   	nop

;-------------------------------------------------
;  Function 'stringwidthCFN'                     -
;-------------------------------------------------
stringwidthCFN:
   48930:	53                   	push   ebx
   48931:	51                   	push   ecx
   48932:	89 d3                	mov    ebx,edx
   48934:	8a 10                	mov    dl,BYTE PTR [eax]
   48936:	31 c9                	xor    ecx,ecx
   48938:	84 d2                	test   dl,dl
   4893a:	74 30                	je     stringwidthCFN_branch_5
stringwidthCFN_branch_1:
   4893c:	31 d2                	xor    edx,edx
   4893e:	8a 10                	mov    dl,BYTE PTR [eax]
   48940:	40                   	inc    eax
   48941:	83 fa 20             	cmp    edx,0x20
   48944:	75 09                	jne    stringwidthCFN_branch_2
   48946:	0f bf 93 42 04 00 00 	movsx  edx,WORD PTR [ebx+0x442]
   4894d:	eb 16                	jmp    stringwidthCFN_branch_4
stringwidthCFN_branch_2:
   4894f:	83 fa 5f             	cmp    edx,0x5f
   48952:	75 09                	jne    stringwidthCFN_branch_3
   48954:	0f bf 93 42 04 00 00 	movsx  edx,WORD PTR [ebx+0x442]
   4895b:	eb 08                	jmp    stringwidthCFN_branch_4
stringwidthCFN_branch_3:
   4895d:	0f bf 94 53 42 02 00 00 	movsx  edx,WORD PTR [ebx+edx*2+0x242]
stringwidthCFN_branch_4:
   48965:	01 d1                	add    ecx,edx
   48967:	80 38 00             	cmp    BYTE PTR [eax],0x0
   4896a:	75 d0                	jne    stringwidthCFN_branch_1
stringwidthCFN_branch_5:
   4896c:	89 c8                	mov    eax,ecx
   4896e:	59                   	pop    ecx
   4896f:	5b                   	pop    ebx
   48970:	c3                   	ret    
   48971:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   48977:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
   4897d:	8d 40 00             	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'widestlineCFN'                      -
;-------------------------------------------------
widestlineCFN:
   48980:	53                   	push   ebx
   48981:	51                   	push   ecx
   48982:	56                   	push   esi
   48983:	57                   	push   edi
   48984:	83 ec 0c             	sub    esp,0xc
   48987:	89 c3                	mov    ebx,eax
   48989:	89 14 24             	mov    DWORD PTR [esp],edx
   4898c:	31 d2                	xor    edx,edx
   4898e:	30 e4                	xor    ah,ah
   48990:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
   48994:	88 64 24 08          	mov    BYTE PTR [esp+0x8],ah
   48998:	8a 13                	mov    dl,BYTE PTR [ebx]
   4899a:	89 d8                	mov    eax,ebx
   4899c:	84 d2                	test   dl,dl
   4899e:	0f 84 ce 00 00 00    	je     widestlineCFN_branch_17
widestlineCFN_branch_1:
   489a4:	8a 18                	mov    bl,BYTE PTR [eax]
   489a6:	89 c7                	mov    edi,eax
   489a8:	80 fb 0a             	cmp    bl,0xa
   489ab:	74 0e                	je     widestlineCFN_branch_3
widestlineCFN_branch_2:
   489ad:	80 38 00             	cmp    BYTE PTR [eax],0x0
   489b0:	74 09                	je     widestlineCFN_branch_3
   489b2:	8a 78 01             	mov    bh,BYTE PTR [eax+0x1]
   489b5:	40                   	inc    eax
   489b6:	80 ff 0a             	cmp    bh,0xa
   489b9:	75 f2                	jne    widestlineCFN_branch_2
widestlineCFN_branch_3:
   489bb:	80 38 0a             	cmp    BYTE PTR [eax],0xa
   489be:	75 09                	jne    widestlineCFN_branch_4
   489c0:	b2 01                	mov    dl,0x1
   489c2:	c6 00 00             	mov    BYTE PTR [eax],0x0
   489c5:	88 54 24 08          	mov    BYTE PTR [esp+0x8],dl
widestlineCFN_branch_4:
   489c9:	8b 0c 24             	mov    ecx,DWORD PTR [esp]
   489cc:	89 fa                	mov    edx,edi
   489ce:	8a 1f                	mov    bl,BYTE PTR [edi]
   489d0:	31 f6                	xor    esi,esi
   489d2:	84 db                	test   bl,bl
   489d4:	74 30                	je     widestlineCFN_branch_9
widestlineCFN_branch_5:
   489d6:	31 db                	xor    ebx,ebx
   489d8:	8a 1a                	mov    bl,BYTE PTR [edx]
   489da:	42                   	inc    edx
   489db:	83 fb 20             	cmp    ebx,0x20
   489de:	75 09                	jne    widestlineCFN_branch_6
   489e0:	0f bf 99 42 04 00 00 	movsx  ebx,WORD PTR [ecx+0x442]
   489e7:	eb 16                	jmp    widestlineCFN_branch_8
widestlineCFN_branch_6:
   489e9:	83 fb 5f             	cmp    ebx,0x5f
   489ec:	75 09                	jne    widestlineCFN_branch_7
   489ee:	0f bf 99 42 04 00 00 	movsx  ebx,WORD PTR [ecx+0x442]
   489f5:	eb 08                	jmp    widestlineCFN_branch_8
widestlineCFN_branch_7:
   489f7:	0f bf 9c 59 42 02 00 00 	movsx  ebx,WORD PTR [ecx+ebx*2+0x242]
widestlineCFN_branch_8:
   489ff:	01 de                	add    esi,ebx
   48a01:	80 3a 00             	cmp    BYTE PTR [edx],0x0
   48a04:	75 d0                	jne    widestlineCFN_branch_5
widestlineCFN_branch_9:
   48a06:	8b 5c 24 04          	mov    ebx,DWORD PTR [esp+0x4]
   48a0a:	39 de                	cmp    esi,ebx
   48a0c:	76 3f                	jbe    widestlineCFN_branch_14
   48a0e:	8b 0c 24             	mov    ecx,DWORD PTR [esp]
   48a11:	89 fa                	mov    edx,edi
   48a13:	8a 1f                	mov    bl,BYTE PTR [edi]
   48a15:	31 f6                	xor    esi,esi
   48a17:	84 db                	test   bl,bl
   48a19:	74 34                	je     widestlineCFN_branch_15
widestlineCFN_branch_10:
   48a1b:	31 db                	xor    ebx,ebx
   48a1d:	8a 1a                	mov    bl,BYTE PTR [edx]
   48a1f:	42                   	inc    edx
   48a20:	83 fb 20             	cmp    ebx,0x20
   48a23:	75 09                	jne    widestlineCFN_branch_11
   48a25:	0f bf 99 42 04 00 00 	movsx  ebx,WORD PTR [ecx+0x442]
   48a2c:	eb 16                	jmp    widestlineCFN_branch_13
widestlineCFN_branch_11:
   48a2e:	83 fb 5f             	cmp    ebx,0x5f
   48a31:	75 09                	jne    widestlineCFN_branch_12
   48a33:	0f bf 99 42 04 00 00 	movsx  ebx,WORD PTR [ecx+0x442]
   48a3a:	eb 08                	jmp    widestlineCFN_branch_13
widestlineCFN_branch_12:
   48a3c:	0f bf 9c 59 42 02 00 00 	movsx  ebx,WORD PTR [ecx+ebx*2+0x242]
widestlineCFN_branch_13:
   48a44:	01 de                	add    esi,ebx
   48a46:	80 3a 00             	cmp    BYTE PTR [edx],0x0
   48a49:	75 d0                	jne    widestlineCFN_branch_10
   48a4b:	eb 02                	jmp    widestlineCFN_branch_15
widestlineCFN_branch_14:
   48a4d:	89 de                	mov    esi,ebx
widestlineCFN_branch_15:
   48a4f:	31 d2                	xor    edx,edx
   48a51:	8a 54 24 08          	mov    dl,BYTE PTR [esp+0x8]
   48a55:	89 74 24 04          	mov    DWORD PTR [esp+0x4],esi
   48a59:	83 fa 01             	cmp    edx,0x1
   48a5c:	75 0b                	jne    widestlineCFN_branch_16
   48a5e:	30 c9                	xor    cl,cl
   48a60:	c6 00 0a             	mov    BYTE PTR [eax],0xa
   48a63:	88 4c 24 08          	mov    BYTE PTR [esp+0x8],cl
   48a67:	01 d0                	add    eax,edx
widestlineCFN_branch_16:
   48a69:	80 38 00             	cmp    BYTE PTR [eax],0x0
   48a6c:	0f 85 32 ff ff ff    	jne    widestlineCFN_branch_1
widestlineCFN_branch_17:
   48a72:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
   48a76:	83 c4 0c             	add    esp,0xc
   48a79:	5f                   	pop    edi
   48a7a:	5e                   	pop    esi
   48a7b:	59                   	pop    ecx
   48a7c:	5b                   	pop    ebx
   48a7d:	c3                   	ret    
   48a7e:	8b c0                	mov    eax,eax

;-------------------------------------------------
;  Function 'stringheightCFN'                    -
;-------------------------------------------------
stringheightCFN:
   48a80:	53                   	push   ebx
   48a81:	51                   	push   ecx
   48a82:	56                   	push   esi
   48a83:	89 d6                	mov    esi,edx
   48a85:	31 d2                	xor    edx,edx
   48a87:	eb 01                	jmp    stringheightCFN_branch_2
stringheightCFN_branch_1:
   48a89:	40                   	inc    eax
stringheightCFN_branch_2:
   48a8a:	8a 08                	mov    cl,BYTE PTR [eax]
   48a8c:	8d 5a 01             	lea    ebx,[edx+0x1]
   48a8f:	84 c9                	test   cl,cl
   48a91:	74 09                	je     stringheightCFN_branch_3
   48a93:	80 f9 0a             	cmp    cl,0xa
   48a96:	75 f1                	jne    stringheightCFN_branch_1
   48a98:	89 da                	mov    edx,ebx
   48a9a:	eb ed                	jmp    stringheightCFN_branch_1
stringheightCFN_branch_3:
   48a9c:	0f bf 46 40          	movsx  eax,WORD PTR [esi+0x40]
   48aa0:	83 c0 02             	add    eax,0x2
   48aa3:	0f af c3             	imul   eax,ebx
   48aa6:	5e                   	pop    esi
   48aa7:	59                   	pop    ecx
   48aa8:	5b                   	pop    ebx
   48aa9:	c3                   	ret    
   48aaa:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'fontdepthCFN'                       -
;-------------------------------------------------
fontdepthCFN:
   48ab0:	0f bf 40 40          	movsx  eax,WORD PTR [eax+0x40]
   48ab4:	c3                   	ret    
   48ab5:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   48abb:	8d 52 00             	lea    edx,[edx+0x0]
   48abe:	8b db                	mov    ebx,ebx

;-------------------------------------------------
;  Function 'CFONT_info'                         -
;-------------------------------------------------
CFONT_info:
   48ac0:	53                   	push   ebx
   48ac1:	51                   	push   ecx
   48ac2:	52                   	push   edx
   48ac3:	89 c2                	mov    edx,eax
   48ac5:	05 48 04 00 00       	add    eax,0x448
   48aca:	68 7d b9 00 00       	push   @obj3:colorfnt_cpp_variable_23                               ; fixup: num: 11570, src obj: 1, src ofs: 0x48acb, dst obj: 3, dst ofs: 0xb97d
   48acf:	89 82 44 04 00 00    	mov    DWORD PTR [edx+0x444],eax
   48ad5:	e8 78 80 02 00       	call   printf_
   48ada:	83 c4 04             	add    esp,0x4
   48add:	52                   	push   edx
   48ade:	68 9f b9 00 00       	push   @obj3:colorfnt_cpp_variable_24                               ; fixup: num: 11569, src obj: 1, src ofs: 0x48adf, dst obj: 3, dst ofs: 0xb99f
   48ae3:	e8 6a 80 02 00       	call   printf_
   48ae8:	83 c4 08             	add    esp,0x8
   48aeb:	0f bf 42 40          	movsx  eax,WORD PTR [edx+0x40]
   48aef:	50                   	push   eax
   48af0:	68 b0 b9 00 00       	push   @obj3:colorfnt_cpp_variable_25                               ; fixup: num: 11568, src obj: 1, src ofs: 0x48af1, dst obj: 3, dst ofs: 0xb9b0
   48af5:	e8 58 80 02 00       	call   printf_
   48afa:	83 c4 08             	add    esp,0x8
   48afd:	0f bf 82 42 04 00 00 	movsx  eax,WORD PTR [edx+0x442]
   48b04:	50                   	push   eax
   48b05:	68 c1 b9 00 00       	push   @obj3:colorfnt_cpp_variable_26                               ; fixup: num: 11575, src obj: 1, src ofs: 0x48b06, dst obj: 3, dst ofs: 0xb9c1
   48b0a:	e8 43 80 02 00       	call   printf_
   48b0f:	8b 82 44 04 00 00    	mov    eax,DWORD PTR [edx+0x444]
   48b15:	83 c4 08             	add    esp,0x8
   48b18:	8b 18                	mov    ebx,DWORD PTR [eax]
   48b1a:	53                   	push   ebx
   48b1b:	68 d2 b9 00 00       	push   @obj3:colorfnt_cpp_variable_27                               ; fixup: num: 11574, src obj: 1, src ofs: 0x48b1c, dst obj: 3, dst ofs: 0xb9d2
   48b20:	e8 2d 80 02 00       	call   printf_
   48b25:	8b 82 44 04 00 00    	mov    eax,DWORD PTR [edx+0x444]
   48b2b:	83 c4 08             	add    esp,0x8
   48b2e:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
   48b31:	51                   	push   ecx
   48b32:	68 ec b9 00 00       	push   @obj3:colorfnt_cpp_variable_28                               ; fixup: num: 11573, src obj: 1, src ofs: 0x48b33, dst obj: 3, dst ofs: 0xb9ec
   48b37:	e8 16 80 02 00       	call   printf_
   48b3c:	83 c4 08             	add    esp,0x8
   48b3f:	68 06 ba 00 00       	push   @obj3:colorfnt_cpp_variable_29                               ; fixup: num: 11572, src obj: 1, src ofs: 0x48b40, dst obj: 3, dst ofs: 0xba06
   48b44:	e8 09 80 02 00       	call   printf_
   48b49:	83 c4 04             	add    esp,0x4
   48b4c:	5a                   	pop    edx
   48b4d:	59                   	pop    ecx
   48b4e:	5b                   	pop    ebx
   48b4f:	c3                   	ret    

;-------------------------------------------------
;  Function                                      -
;  'gr_VESA_get_selected_from_centered_list'     -
;-------------------------------------------------
gr_VESA_get_selected_from_centered_list:
   48b50:	51                   	push   ecx
   48b51:	56                   	push   esi
   48b52:	57                   	push   edi
   48b53:	55                   	push   ebp
   48b54:	83 ec 18             	sub    esp,0x18
   48b57:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
   48b5b:	89 d5                	mov    ebp,edx
   48b5d:	89 5c 24 04          	mov    DWORD PTR [esp+0x4],ebx
   48b61:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 11571, src obj: 1, src ofs: 0x48b63, dst obj: 3, dst ofs: 0x25974
   48b68:	75 0a                	jne    gr_VESA_get_selected_from_centered_list_branch_1
   48b6a:	b8 ff ff ff ff       	mov    eax,0xffffffff
   48b6f:	e9 9d 01 00 00       	jmp    gr_VESA_get_selected_from_centered_list_branch_26
gr_VESA_get_selected_from_centered_list_branch_1:
   48b74:	89 54 24 0c          	mov    DWORD PTR [esp+0xc],edx
   48b78:	31 d2                	xor    edx,edx
   48b7a:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
   48b7e:	89 14 24             	mov    DWORD PTR [esp],edx
   48b81:	30 d2                	xor    dl,dl
   48b83:	8a 18                	mov    bl,BYTE PTR [eax]
   48b85:	88 54 24 14          	mov    BYTE PTR [esp+0x14],dl
   48b89:	84 db                	test   bl,bl
   48b8b:	0f 84 ce 00 00 00    	je     gr_VESA_get_selected_from_centered_list_branch_18
gr_VESA_get_selected_from_centered_list_branch_2:
   48b91:	8a 08                	mov    cl,BYTE PTR [eax]
   48b93:	89 c7                	mov    edi,eax
   48b95:	80 f9 0a             	cmp    cl,0xa
   48b98:	74 0e                	je     gr_VESA_get_selected_from_centered_list_branch_4
gr_VESA_get_selected_from_centered_list_branch_3:
   48b9a:	80 38 00             	cmp    BYTE PTR [eax],0x0
   48b9d:	74 09                	je     gr_VESA_get_selected_from_centered_list_branch_4
   48b9f:	8a 68 01             	mov    ch,BYTE PTR [eax+0x1]
   48ba2:	40                   	inc    eax
   48ba3:	80 fd 0a             	cmp    ch,0xa
   48ba6:	75 f2                	jne    gr_VESA_get_selected_from_centered_list_branch_3
gr_VESA_get_selected_from_centered_list_branch_4:
   48ba8:	80 38 0a             	cmp    BYTE PTR [eax],0xa
   48bab:	75 09                	jne    gr_VESA_get_selected_from_centered_list_branch_5
   48bad:	b3 01                	mov    bl,0x1
   48baf:	c6 00 00             	mov    BYTE PTR [eax],0x0
   48bb2:	88 5c 24 14          	mov    BYTE PTR [esp+0x14],bl
gr_VESA_get_selected_from_centered_list_branch_5:
   48bb6:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
   48bba:	89 fa                	mov    edx,edi
   48bbc:	8a 3f                	mov    bh,BYTE PTR [edi]
   48bbe:	31 f6                	xor    esi,esi
   48bc0:	84 ff                	test   bh,bh
   48bc2:	74 30                	je     gr_VESA_get_selected_from_centered_list_branch_10
gr_VESA_get_selected_from_centered_list_branch_6:
   48bc4:	31 db                	xor    ebx,ebx
   48bc6:	8a 1a                	mov    bl,BYTE PTR [edx]
   48bc8:	42                   	inc    edx
   48bc9:	83 fb 20             	cmp    ebx,0x20
   48bcc:	75 09                	jne    gr_VESA_get_selected_from_centered_list_branch_7
   48bce:	0f bf 99 42 04 00 00 	movsx  ebx,WORD PTR [ecx+0x442]
   48bd5:	eb 16                	jmp    gr_VESA_get_selected_from_centered_list_branch_9
gr_VESA_get_selected_from_centered_list_branch_7:
   48bd7:	83 fb 5f             	cmp    ebx,0x5f
   48bda:	75 09                	jne    gr_VESA_get_selected_from_centered_list_branch_8
   48bdc:	0f bf 99 42 04 00 00 	movsx  ebx,WORD PTR [ecx+0x442]
   48be3:	eb 08                	jmp    gr_VESA_get_selected_from_centered_list_branch_9
gr_VESA_get_selected_from_centered_list_branch_8:
   48be5:	0f bf 9c 59 42 02 00 00 	movsx  ebx,WORD PTR [ecx+ebx*2+0x242]
gr_VESA_get_selected_from_centered_list_branch_9:
   48bed:	01 de                	add    esi,ebx
   48bef:	80 3a 00             	cmp    BYTE PTR [edx],0x0
   48bf2:	75 d0                	jne    gr_VESA_get_selected_from_centered_list_branch_6
gr_VESA_get_selected_from_centered_list_branch_10:
   48bf4:	8b 0c 24             	mov    ecx,DWORD PTR [esp]
   48bf7:	39 ce                	cmp    esi,ecx
   48bf9:	76 40                	jbe    gr_VESA_get_selected_from_centered_list_branch_15
   48bfb:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
   48bff:	89 fa                	mov    edx,edi
   48c01:	8a 3f                	mov    bh,BYTE PTR [edi]
   48c03:	31 f6                	xor    esi,esi
   48c05:	84 ff                	test   bh,bh
   48c07:	74 34                	je     gr_VESA_get_selected_from_centered_list_branch_16
gr_VESA_get_selected_from_centered_list_branch_11:
   48c09:	31 db                	xor    ebx,ebx
   48c0b:	8a 1a                	mov    bl,BYTE PTR [edx]
   48c0d:	42                   	inc    edx
   48c0e:	83 fb 20             	cmp    ebx,0x20
   48c11:	75 09                	jne    gr_VESA_get_selected_from_centered_list_branch_12
   48c13:	0f bf 99 42 04 00 00 	movsx  ebx,WORD PTR [ecx+0x442]
   48c1a:	eb 16                	jmp    gr_VESA_get_selected_from_centered_list_branch_14
gr_VESA_get_selected_from_centered_list_branch_12:
   48c1c:	83 fb 5f             	cmp    ebx,0x5f
   48c1f:	75 09                	jne    gr_VESA_get_selected_from_centered_list_branch_13
   48c21:	0f bf 99 42 04 00 00 	movsx  ebx,WORD PTR [ecx+0x442]
   48c28:	eb 08                	jmp    gr_VESA_get_selected_from_centered_list_branch_14
gr_VESA_get_selected_from_centered_list_branch_13:
   48c2a:	0f bf 9c 59 42 02 00 00 	movsx  ebx,WORD PTR [ecx+ebx*2+0x242]
gr_VESA_get_selected_from_centered_list_branch_14:
   48c32:	01 de                	add    esi,ebx
   48c34:	80 3a 00             	cmp    BYTE PTR [edx],0x0
   48c37:	75 d0                	jne    gr_VESA_get_selected_from_centered_list_branch_11
   48c39:	eb 02                	jmp    gr_VESA_get_selected_from_centered_list_branch_16
gr_VESA_get_selected_from_centered_list_branch_15:
   48c3b:	89 ce                	mov    esi,ecx
gr_VESA_get_selected_from_centered_list_branch_16:
   48c3d:	31 d2                	xor    edx,edx
   48c3f:	8a 54 24 14          	mov    dl,BYTE PTR [esp+0x14]
   48c43:	89 34 24             	mov    DWORD PTR [esp],esi
   48c46:	83 fa 01             	cmp    edx,0x1
   48c49:	75 0b                	jne    gr_VESA_get_selected_from_centered_list_branch_17
   48c4b:	30 ff                	xor    bh,bh
   48c4d:	c6 00 0a             	mov    BYTE PTR [eax],0xa
   48c50:	88 7c 24 14          	mov    BYTE PTR [esp+0x14],bh
   48c54:	01 d0                	add    eax,edx
gr_VESA_get_selected_from_centered_list_branch_17:
   48c56:	80 38 00             	cmp    BYTE PTR [eax],0x0
   48c59:	0f 85 32 ff ff ff    	jne    gr_VESA_get_selected_from_centered_list_branch_2
gr_VESA_get_selected_from_centered_list_branch_18:
   48c5f:	8b 0c 24             	mov    ecx,DWORD PTR [esp]
   48c62:	b8 7f 02 00 00       	mov    eax,0x27f
   48c67:	0f bf d1             	movsx  edx,cx
   48c6a:	29 d0                	sub    eax,edx
   48c6c:	89 c2                	mov    edx,eax
   48c6e:	c1 fa 1f             	sar    edx,0x1f
   48c71:	2b c2                	sub    eax,edx
   48c73:	d1 f8                	sar    eax,1
   48c75:	89 ee                	mov    esi,ebp
   48c77:	89 c3                	mov    ebx,eax
   48c79:	01 c8                	add    eax,ecx
   48c7b:	31 ff                	xor    edi,edi
   48c7d:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
   48c81:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
   48c85:	eb 01                	jmp    gr_VESA_get_selected_from_centered_list_branch_20
gr_VESA_get_selected_from_centered_list_branch_19:
   48c87:	40                   	inc    eax
gr_VESA_get_selected_from_centered_list_branch_20:
   48c88:	8a 28                	mov    ch,BYTE PTR [eax]
   48c8a:	8d 57 01             	lea    edx,[edi+0x1]
   48c8d:	84 ed                	test   ch,ch
   48c8f:	74 09                	je     gr_VESA_get_selected_from_centered_list_branch_21
   48c91:	80 fd 0a             	cmp    ch,0xa
   48c94:	75 f1                	jne    gr_VESA_get_selected_from_centered_list_branch_19
   48c96:	89 d7                	mov    edi,edx
   48c98:	eb ed                	jmp    gr_VESA_get_selected_from_centered_list_branch_19
gr_VESA_get_selected_from_centered_list_branch_21:
   48c9a:	0f bf 46 40          	movsx  eax,WORD PTR [esi+0x40]
   48c9e:	83 c0 02             	add    eax,0x2
   48ca1:	0f af c2             	imul   eax,edx
   48ca4:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
   48ca8:	0f bf db             	movsx  ebx,bx
   48cab:	01 d0                	add    eax,edx
   48cad:	3b 1d 78 59 02 00    	cmp    ebx,DWORD PTR ds:@obj3:mouse_x                               ; fixup: num: 11580, src obj: 1, src ofs: 0x48caf, dst obj: 3, dst ofs: 0x25978
   48cb3:	7f 28                	jg     gr_VESA_get_selected_from_centered_list_branch_22
   48cb5:	0f bf 5c 24 10       	movsx  ebx,WORD PTR [esp+0x10]
   48cba:	3b 1d 78 59 02 00    	cmp    ebx,DWORD PTR ds:@obj3:mouse_x                               ; fixup: num: 11579, src obj: 1, src ofs: 0x48cbc, dst obj: 3, dst ofs: 0x25978
   48cc0:	7c 1b                	jl     gr_VESA_get_selected_from_centered_list_branch_22
   48cc2:	0f bf da             	movsx  ebx,dx
   48cc5:	3b 1d 7c 59 02 00    	cmp    ebx,DWORD PTR ds:@obj3:mouse_y                               ; fixup: num: 11578, src obj: 1, src ofs: 0x48cc7, dst obj: 3, dst ofs: 0x2597c
   48ccb:	7f 10                	jg     gr_VESA_get_selected_from_centered_list_branch_22
   48ccd:	98                   	cwde   
   48cce:	3b 05 7c 59 02 00    	cmp    eax,DWORD PTR ds:@obj3:mouse_y                               ; fixup: num: 11577, src obj: 1, src ofs: 0x48cd0, dst obj: 3, dst ofs: 0x2597c
   48cd4:	7c 07                	jl     gr_VESA_get_selected_from_centered_list_branch_22
   48cd6:	b8 01 00 00 00       	mov    eax,0x1
   48cdb:	eb 02                	jmp    gr_VESA_get_selected_from_centered_list_branch_23
gr_VESA_get_selected_from_centered_list_branch_22:
   48cdd:	31 c0                	xor    eax,eax
gr_VESA_get_selected_from_centered_list_branch_23:
   48cdf:	85 c0                	test   eax,eax
   48ce1:	75 0d                	jne    gr_VESA_get_selected_from_centered_list_branch_24
   48ce3:	b8 ff ff ff ff       	mov    eax,0xffffffff
   48ce8:	83 c4 18             	add    esp,0x18
   48ceb:	5d                   	pop    ebp
   48cec:	5f                   	pop    edi
   48ced:	5e                   	pop    esi
   48cee:	59                   	pop    ecx
   48cef:	c3                   	ret    
gr_VESA_get_selected_from_centered_list_branch_24:
   48cf0:	66 a1 7c 59 02 00    	mov    ax,ds:@obj3:mouse_y                                          ; fixup: num: 11576, src obj: 1, src ofs: 0x48cf2, dst obj: 3, dst ofs: 0x2597c
   48cf6:	29 d0                	sub    eax,edx
   48cf8:	0f bf d0             	movsx  edx,ax
   48cfb:	83 fa 01             	cmp    edx,0x1
   48cfe:	7d 05                	jge    gr_VESA_get_selected_from_centered_list_branch_25
   48d00:	b8 01 00 00 00       	mov    eax,0x1
gr_VESA_get_selected_from_centered_list_branch_25:
   48d05:	0f bf 55 40          	movsx  edx,WORD PTR [ebp+0x40]
   48d09:	8d 5a 02             	lea    ebx,[edx+0x2]
   48d0c:	98                   	cwde   
   48d0d:	31 d2                	xor    edx,edx
   48d0f:	f7 f3                	div    ebx
gr_VESA_get_selected_from_centered_list_branch_26:
   48d11:	83 c4 18             	add    esp,0x18
   48d14:	5d                   	pop    ebp
   48d15:	5f                   	pop    edi
   48d16:	5e                   	pop    esi
   48d17:	59                   	pop    ecx
   48d18:	c3                   	ret    
   48d19:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   48d1f:	90                   	nop

;-------------------------------------------------
;  Function 'LoadFontFile'                       -
;-------------------------------------------------
LoadFontFile:
   48d20:	53                   	push   ebx
   48d21:	51                   	push   ecx
   48d22:	52                   	push   edx
   48d23:	56                   	push   esi
   48d24:	57                   	push   edi
   48d25:	55                   	push   ebp
   48d26:	83 ec 08             	sub    esp,0x8
   48d29:	89 c6                	mov    esi,eax
   48d2b:	b9 df 01 00 00       	mov    ecx,0x1df
   48d30:	bb 08 ba 00 00       	mov    ebx,@obj3:colorfnt_cpp_variable_30                           ; fixup: num: 11585, src obj: 1, src ofs: 0x48d31, dst obj: 3, dst ofs: 0xba08
   48d35:	31 d2                	xor    edx,edx
   48d37:	e8 a4 40 fc ff       	call   XFILE_read2
   48d3c:	89 c5                	mov    ebp,eax
   48d3e:	85 c0                	test   eax,eax
   48d40:	75 24                	jne    LoadFontFile_branch_1
   48d42:	56                   	push   esi
   48d43:	68 15 ba 00 00       	push   @obj3:colorfnt_cpp_variable_31                               ; fixup: num: 11584, src obj: 1, src ofs: 0x48d44, dst obj: 3, dst ofs: 0xba15
   48d48:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 11583, src obj: 1, src ofs: 0x48d49, dst obj: 3, dst ofs: 0x237fc
   48d4d:	bb fc 37 02 00       	mov    ebx,@obj3:log_buffer                                         ; fixup: num: 11582, src obj: 1, src ofs: 0x48d4e, dst obj: 3, dst ofs: 0x237fc
   48d52:	e8 8a 7e 02 00       	call   sprintf_
   48d57:	83 c4 0c             	add    esp,0xc
   48d5a:	ba e2 01 00 00       	mov    edx,0x1e2
   48d5f:	31 c0                	xor    eax,eax
   48d61:	e8 ca f2 fe ff       	call   _error_report
LoadFontFile_branch_1:
   48d66:	b8 48 04 00 00       	mov    eax,0x448
   48d6b:	89 2c 24             	mov    DWORD PTR [esp],ebp
   48d6e:	e8 20 87 02 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   48d73:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
   48d77:	85 c0                	test   eax,eax
   48d79:	75 0f                	jne    LoadFontFile_branch_2
   48d7b:	bb 2d ba 00 00       	mov    ebx,@obj3:colorfnt_cpp_variable_32                           ; fixup: num: 11581, src obj: 1, src ofs: 0x48d7c, dst obj: 3, dst ofs: 0xba2d
   48d80:	ba e7 01 00 00       	mov    edx,0x1e7
   48d85:	e8 a6 f2 fe ff       	call   _error_report
LoadFontFile_branch_2:
   48d8a:	b9 48 04 00 00       	mov    ecx,0x448
   48d8f:	8b 7c 24 04          	mov    edi,DWORD PTR [esp+0x4]
   48d93:	89 ee                	mov    esi,ebp
   48d95:	57                   	push   edi
   48d96:	89 c8                	mov    eax,ecx
   48d98:	c1 e9 02             	shr    ecx,0x2
   48d9b:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
   48d9d:	8a c8                	mov    cl,al
   48d9f:	80 e1 03             	and    cl,0x3
   48da2:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
   48da4:	5f                   	pop    edi
   48da5:	b8 0c 00 00 00       	mov    eax,0xc
   48daa:	e8 69 91 02 00       	call   W?$nwn(ui)pnv
   48daf:	85 c0                	test   eax,eax
   48db1:	74 13                	je     LoadFontFile_branch_3
   48db3:	c7 40 04 00 00 00 00 	mov    DWORD PTR [eax+0x4],0x0
   48dba:	c7 40 08 00 00 00 00 	mov    DWORD PTR [eax+0x8],0x0
   48dc1:	8b 70 04             	mov    esi,DWORD PTR [eax+0x4]
   48dc4:	89 30                	mov    DWORD PTR [eax],esi
LoadFontFile_branch_3:
   48dc6:	8b 74 24 04          	mov    esi,DWORD PTR [esp+0x4]
   48dca:	89 86 44 04 00 00    	mov    DWORD PTR [esi+0x444],eax
   48dd0:	75 0f                	jne    LoadFontFile_branch_4
   48dd2:	bb 45 ba 00 00       	mov    ebx,@obj3:colorfnt_cpp_variable_33                           ; fixup: num: 11587, src obj: 1, src ofs: 0x48dd3, dst obj: 3, dst ofs: 0xba45
   48dd7:	ba eb 01 00 00       	mov    edx,0x1eb
   48ddc:	e8 4f f2 fe ff       	call   _error_report
LoadFontFile_branch_4:
   48de1:	8b 74 24 04          	mov    esi,DWORD PTR [esp+0x4]
   48de5:	8b b6 44 04 00 00    	mov    esi,DWORD PTR [esi+0x444]
   48deb:	8b 85 48 04 00 00    	mov    eax,DWORD PTR [ebp+0x448]
   48df1:	89 06                	mov    DWORD PTR [esi],eax
   48df3:	8b 74 24 04          	mov    esi,DWORD PTR [esp+0x4]
   48df7:	8b b6 44 04 00 00    	mov    esi,DWORD PTR [esi+0x444]
   48dfd:	8b 85 4c 04 00 00    	mov    eax,DWORD PTR [ebp+0x44c]
   48e03:	89 46 04             	mov    DWORD PTR [esi+0x4],eax
   48e06:	8b 74 24 04          	mov    esi,DWORD PTR [esp+0x4]
   48e0a:	8b b6 44 04 00 00    	mov    esi,DWORD PTR [esi+0x444]
   48e10:	8b 06                	mov    eax,DWORD PTR [esi]
   48e12:	0f af 46 04          	imul   eax,DWORD PTR [esi+0x4]
   48e16:	8b 74 24 04          	mov    esi,DWORD PTR [esp+0x4]
   48e1a:	e8 74 86 02 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   48e1f:	8b b6 44 04 00 00    	mov    esi,DWORD PTR [esi+0x444]
   48e25:	89 46 08             	mov    DWORD PTR [esi+0x8],eax
   48e28:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
   48e2c:	81 c5 54 04 00 00    	add    ebp,0x454
   48e32:	8b 80 44 04 00 00    	mov    eax,DWORD PTR [eax+0x444]
   48e38:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
   48e3b:	85 c9                	test   ecx,ecx
   48e3d:	75 11                	jne    LoadFontFile_branch_5
   48e3f:	bb 5d ba 00 00       	mov    ebx,@obj3:colorfnt_cpp_variable_34                           ; fixup: num: 11586, src obj: 1, src ofs: 0x48e40, dst obj: 3, dst ofs: 0xba5d
   48e44:	ba f4 01 00 00       	mov    edx,0x1f4
   48e49:	31 c0                	xor    eax,eax
   48e4b:	e8 e0 f1 fe ff       	call   _error_report
LoadFontFile_branch_5:
   48e50:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
   48e54:	8b 80 44 04 00 00    	mov    eax,DWORD PTR [eax+0x444]
   48e5a:	8b 08                	mov    ecx,DWORD PTR [eax]
   48e5c:	0f af 48 04          	imul   ecx,DWORD PTR [eax+0x4]
   48e60:	89 ee                	mov    esi,ebp
   48e62:	8b 78 08             	mov    edi,DWORD PTR [eax+0x8]
   48e65:	57                   	push   edi
   48e66:	89 c8                	mov    eax,ecx
   48e68:	c1 e9 02             	shr    ecx,0x2
   48e6b:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
   48e6d:	8a c8                	mov    cl,al
   48e6f:	80 e1 03             	and    cl,0x3
   48e72:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
   48e74:	5f                   	pop    edi
   48e75:	8b 04 24             	mov    eax,DWORD PTR [esp]
   48e78:	e8 6b 85 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   48e7d:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
   48e81:	83 c4 08             	add    esp,0x8
   48e84:	5d                   	pop    ebp
   48e85:	5f                   	pop    edi
   48e86:	5e                   	pop    esi
   48e87:	5a                   	pop    edx
   48e88:	59                   	pop    ecx
   48e89:	5b                   	pop    ebx
   48e8a:	c3                   	ret    
;-------------------------------------------------
;  Bad code 78 (zero after ret):                 -
;-------------------------------------------------
;  48e89:	5b                   	pop    ebx
;  48e8a:	c3                   	ret    
;  48e8b:	00 00                	add    BYTE PTR [eax],al
;  48e8d:	00 00                	add    BYTE PTR [eax],al
;-------------------------------------------------
;  Padding data (5 bytes):                       -
;-------------------------------------------------
   48e8b:	00 00 00 00 00       	db     5 dup(0x00)
;-------------------------------------------------
;  End of bad code 78                            -
;-------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 77 (D:\SOURCE\colorfnt.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 77: D:\SOURCE\colorfnt.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------
colorfnt_cpp_variable_1:
    b788:	43 6f 6e 76 65 72 74 69 6e 67 20 66 6f 6e 74 3a 20 25 73 20 2d 3e 20 25 73 0a 0a 00 	db     "Converting font: %s -> %s",0x0a,0x0a,0x00
colorfnt_cpp_variable_2:
    b7a4:	43 6f 6e 76 65 72 74 69 6e 67 20 66 6f 6e 74 3a 20 25 73 20 2d 3e 20 25 73 0a 00 	db     "Converting font: %s -> %s",0x0a,0x00
colorfnt_cpp_variable_3:
    b7bf:	63 6f 6c 6f 72 66 6e 74 2e 63 70 70 00 	db     "colorfnt.cpp",0x00
colorfnt_cpp_variable_4:
    b7cc:	75 6e 61 62 6c 65 20 74 6f 20 6f 70 65 6e 20 73 6f 75 72 63 65 20 2e 46 44 53 20 66 69 6c 65 00 	db     "unable to open source .FDS file",0x00
colorfnt_cpp_variable_5:
    b7ec:	66 6f 6e 74 2e 63 68 61 72 61 63 74 65 72 5f 73 74 61 72 74 5b 25 63 5d 3d 25 69 20 20 00 	db     "font.character_start[%c]=%i  ",0x00
colorfnt_cpp_variable_6:
    b80a:	66 6f 6e 74 2e 63 68 61 72 61 63 74 65 72 5f 77 69 64 74 68 5b 25 63 5d 3d 25 69 0a 00 	db     "font.character_width[%c]=%i",0x0a,0x00
colorfnt_cpp_variable_7:
    b827:	4e 41 4d 45 3a 00    	db     "NAME:",0x00
colorfnt_cpp_variable_8:
    b82d:	46 6f 6e 74 20 6e 61 6d 65 20 20 3a 25 73 0a 00 	db     "Font name  :%s",0x0a,0x00
colorfnt_cpp_variable_9:
    b83d:	42 49 54 4d 41 50 3a 00 	db     "BITMAP:",0x00
colorfnt_cpp_variable_10:
    b845:	46 6f 6e 74 20 42 69 74 6d 61 70 3a 25 73 0a 00 	db     "Font Bitmap:%s",0x0a,0x00
colorfnt_cpp_variable_11:
    b855:	48 45 49 47 48 54 3a 00 	db     "HEIGHT:",0x00
colorfnt_cpp_variable_12:
    b85d:	46 6f 6e 74 20 48 65 69 67 68 74 3a 25 30 33 69 0a 00 	db     "Font Height:%03i",0x0a,0x00
colorfnt_cpp_variable_13:
    b86f:	53 50 41 43 45 3a 00 	db     "SPACE:",0x00
colorfnt_cpp_variable_14:
    b876:	53 70 61 63 65 20 57 69 64 74 68 3a 25 30 33 69 0a 00 	db     "Space Width:%03i",0x0a,0x00
colorfnt_cpp_variable_15:
    b888:	63 6f 6c 6f 72 66 6e 74 2e 63 70 70 00 	db     "colorfnt.cpp",0x00
colorfnt_cpp_variable_16:
    b895:	55 6e 61 62 6c 65 20 74 6f 20 6f 70 65 6e 20 66 6f 6e 74 20 62 69 74 6d 61 70 2e 00 	db     "Unable to open font bitmap.",0x00
colorfnt_cpp_variable_17:
    b8b1:	66 64 73 32 63 66 74 28 29 3a 20 63 61 6e 27 74 20 61 6c 6c 6f 63 61 74 65 20 6d 65 6d 6f 72 79 00 	db     "fds2cft(): can't allocate memory",0x00
colorfnt_cpp_variable_18:
    b8d2:	49 6e 74 65 72 6e 61 6c 20 65 72 72 6f 72 3a 20 64 65 73 74 5f 62 6d 20 3d 3d 20 4e 55 4c 4c 00 	db     "Internal error: dest_bm == NULL",0x00
colorfnt_cpp_variable_19:
    b8f2:	63 75 72 72 65 6e 74 5f 78 3d 25 64 20 20 77 69 64 74 68 28 64 65 73 74 5f 62 6d 29 3d 25 64 20 20 66 6f 72 20 73 74 72 3a 20 25 73 00 	db     "current_x=%d  width(dest_bm)=%d  for str: %s",0x00
colorfnt_cpp_variable_20:
    b91f:	58 20 2d 20 49 4e 56 41 4c 49 44 20 42 49 54 4d 41 50 20 56 41 4c 55 45 00 	db     "X - INVALID BITMAP VALUE",0x00
colorfnt_cpp_variable_21:
    b938:	63 75 72 72 65 6e 74 5f 79 20 3d 20 25 64 20 20 62 69 74 6d 61 70 5f 68 65 69 67 68 74 28 64 65 73 74 5f 62 6d 29 20 3d 20 25 64 00 	db     "current_y = %d  bitmap_height(dest_bm) = %d",0x00
colorfnt_cpp_variable_22:
    b964:	59 20 2d 20 49 4e 56 41 4c 49 44 20 42 49 54 4d 41 50 20 56 41 4c 55 45 00 	db     "Y - INVALID BITMAP VALUE",0x00
colorfnt_cpp_variable_23:
    b97d:	2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 0a 00 	db     "--------------------------------",0x0a,0x00
colorfnt_cpp_variable_24:
    b99f:	66 6f 6e 74 20 6e 61 6d 65 20 20 3a 20 25 73 0a 00 	db     "font name  : %s",0x0a,0x00
colorfnt_cpp_variable_25:
    b9b0:	66 6f 6e 74 20 68 65 69 67 68 74 3a 20 25 69 0a 00 	db     "font height: %i",0x0a,0x00
colorfnt_cpp_variable_26:
    b9c1:	73 70 61 63 65 5f 77 69 64 74 68 3a 20 25 69 0a 00 	db     "space_width: %i",0x0a,0x00
colorfnt_cpp_variable_27:
    b9d2:	42 69 74 6d 61 70 20 68 65 61 64 65 72 20 77 69 64 74 68 20 3a 20 25 69 0a 00 	db     "Bitmap header width : %i",0x0a,0x00
colorfnt_cpp_variable_28:
    b9ec:	42 69 74 6d 61 70 20 68 65 61 64 65 72 20 68 65 69 67 68 74 3a 20 25 69 0a 00 	db     "Bitmap header height: %i",0x0a,0x00
colorfnt_cpp_variable_29:
    ba06:	0a                   	db     0x0a                                                         ; dec:  10, chr: '\n'
    ba07:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
colorfnt_cpp_variable_30:
    ba08:	63 6f 6c 6f 72 66 6e 74 2e 63 70 70 00 	db     "colorfnt.cpp",0x00
colorfnt_cpp_variable_31:
    ba15:	55 6e 61 62 6c 65 20 74 6f 20 72 65 61 64 20 66 69 6c 65 3a 20 25 73 00 	db     "Unable to read file: %s",0x00
colorfnt_cpp_variable_32:
    ba2d:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
colorfnt_cpp_variable_33:
    ba45:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
colorfnt_cpp_variable_34:
    ba5d:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
    ba75:	00 00 00             	db     3 dup(0x00)                                                  ; dec:   0, chr: '\0'

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 77 (D:\SOURCE\colorfnt.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------