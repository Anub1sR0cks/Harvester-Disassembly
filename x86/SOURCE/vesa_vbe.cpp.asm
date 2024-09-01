;-------------------------------------------------------------------------------
;                                                                              -
;  Module 12: D:\SOURCE\vesa_vbe.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function 'gr_return_super_VGA_information'    -
;-------------------------------------------------
gr_return_super_VGA_information:
   111d0:	53                   	push   ebx
   111d1:	51                   	push   ecx
   111d2:	56                   	push   esi
   111d3:	57                   	push   edi
   111d4:	55                   	push   ebp
   111d5:	83 ec 44             	sub    esp,0x44
   111d8:	89 54 24 40          	mov    DWORD PTR [esp+0x40],edx
   111dc:	89 c5                	mov    ebp,eax
   111de:	8d 54 24 38          	lea    edx,[esp+0x38]
   111e2:	b8 10 00 00 00       	mov    eax,0x10
   111e7:	bb 32 00 00 00       	mov    ebx,0x32
   111ec:	e8 3f 60 ff ff       	call   allocate_dos_block
   111f1:	89 d6                	mov    esi,edx
   111f3:	89 c7                	mov    edi,eax
   111f5:	89 54 24 3c          	mov    DWORD PTR [esp+0x3c],edx
   111f9:	89 44 24 34          	mov    DWORD PTR [esp+0x34],eax
   111fd:	89 e0                	mov    eax,esp
   111ff:	31 d2                	xor    edx,edx
   11201:	8c d9                	mov    ecx,ds
   11203:	e8 c8 01 06 00       	call   memset_
   11208:	ba 00 4f 00 00       	mov    edx,0x4f00
   1120d:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
   11211:	31 db                	xor    ebx,ebx
   11213:	66 89 44 24 22       	mov    WORD PTR [esp+0x22],ax
   11218:	89 1c 24             	mov    DWORD PTR [esp],ebx
   1121b:	89 e3                	mov    ebx,esp
   1121d:	b8 10 00 00 00       	mov    eax,0x10
   11222:	89 54 24 1c          	mov    DWORD PTR [esp+0x1c],edx
   11226:	e8 a5 60 ff ff       	call   simulate_real_mode_interrupt
   1122b:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
   1122f:	25 ff ff 00 00       	and    eax,0xffff
   11234:	83 f8 4f             	cmp    eax,0x4f
   11237:	75 28                	jne    gr_return_super_VGA_information_branch_1
   11239:	b8 00 01 00 00       	mov    eax,0x100
   1123e:	8b 54 24 40          	mov    edx,DWORD PTR [esp+0x40]
   11242:	89 f1                	mov    ecx,esi
   11244:	89 fe                	mov    esi,edi
   11246:	89 ef                	mov    edi,ebp
   11248:	1e                   	push   ds
   11249:	06                   	push   es
   1124a:	57                   	push   edi
   1124b:	91                   	xchg   ecx,eax
   1124c:	8e d8                	mov    ds,eax
   1124e:	8e c2                	mov    es,edx
   11250:	89 c8                	mov    eax,ecx
   11252:	c1 e9 02             	shr    ecx,0x2
   11255:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
   11257:	8a c8                	mov    cl,al
   11259:	80 e1 03             	and    cl,0x3
   1125c:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
   1125e:	58                   	pop    eax
   1125f:	07                   	pop    es
   11260:	1f                   	pop    ds
gr_return_super_VGA_information_branch_1:
   11261:	8b 54 24 3c          	mov    edx,DWORD PTR [esp+0x3c]
   11265:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
   11269:	e8 12 60 ff ff       	call   free_dos_block
   1126e:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
   11272:	25 ff ff 00 00       	and    eax,0xffff
   11277:	83 f8 4f             	cmp    eax,0x4f
   1127a:	75 34                	jne    gr_return_super_VGA_information_branch_2
   1127c:	8e 6c 24 40          	mov    gs,WORD PTR [esp+0x40]
   11280:	31 c0                	xor    eax,eax
   11282:	65 8a 45 00          	mov    al,BYTE PTR gs:[ebp+0x0]
   11286:	83 f8 56             	cmp    eax,0x56
   11289:	75 25                	jne    gr_return_super_VGA_information_branch_2
   1128b:	31 c0                	xor    eax,eax
   1128d:	65 8a 45 01          	mov    al,BYTE PTR gs:[ebp+0x1]
   11291:	83 f8 45             	cmp    eax,0x45
   11294:	75 1a                	jne    gr_return_super_VGA_information_branch_2
   11296:	31 c0                	xor    eax,eax
   11298:	65 8a 45 02          	mov    al,BYTE PTR gs:[ebp+0x2]
   1129c:	83 f8 53             	cmp    eax,0x53
   1129f:	75 0f                	jne    gr_return_super_VGA_information_branch_2
   112a1:	31 c0                	xor    eax,eax
   112a3:	65 8a 45 03          	mov    al,BYTE PTR gs:[ebp+0x3]
   112a7:	83 f8 41             	cmp    eax,0x41
   112aa:	75 04                	jne    gr_return_super_VGA_information_branch_2
   112ac:	b0 01                	mov    al,0x1
   112ae:	eb 02                	jmp    gr_return_super_VGA_information_branch_3
gr_return_super_VGA_information_branch_2:
   112b0:	30 c0                	xor    al,al
gr_return_super_VGA_information_branch_3:
   112b2:	83 c4 44             	add    esp,0x44
   112b5:	5d                   	pop    ebp
   112b6:	5f                   	pop    edi
   112b7:	5e                   	pop    esi
   112b8:	59                   	pop    ecx
   112b9:	5b                   	pop    ebx
   112ba:	c3                   	ret    
   112bb:	8d 40 00             	lea    eax,[eax+0x0]
   112be:	8b c9                	mov    ecx,ecx

;-------------------------------------------------
;  Function                                      -
;  'gr_return_super_VGA_mode_information'        -
;-------------------------------------------------
gr_return_super_VGA_mode_information:
   112c0:	52                   	push   edx
   112c1:	56                   	push   esi
   112c2:	57                   	push   edi
   112c3:	55                   	push   ebp
   112c4:	83 ec 48             	sub    esp,0x48
   112c7:	89 44 24 44          	mov    DWORD PTR [esp+0x44],eax
   112cb:	89 4c 24 40          	mov    DWORD PTR [esp+0x40],ecx
   112cf:	89 dd                	mov    ebp,ebx
   112d1:	8d 54 24 38          	lea    edx,[esp+0x38]
   112d5:	b8 10 00 00 00       	mov    eax,0x10
   112da:	bb 32 00 00 00       	mov    ebx,0x32
   112df:	e8 4c 5f ff ff       	call   allocate_dos_block
   112e4:	89 d6                	mov    esi,edx
   112e6:	89 c7                	mov    edi,eax
   112e8:	89 54 24 3c          	mov    DWORD PTR [esp+0x3c],edx
   112ec:	89 44 24 34          	mov    DWORD PTR [esp+0x34],eax
   112f0:	89 e0                	mov    eax,esp
   112f2:	31 d2                	xor    edx,edx
   112f4:	8c d9                	mov    ecx,ds
   112f6:	e8 d5 00 06 00       	call   memset_
   112fb:	ba 01 4f 00 00       	mov    edx,0x4f01
   11300:	0f bf 44 24 44       	movsx  eax,WORD PTR [esp+0x44]
   11305:	31 db                	xor    ebx,ebx
   11307:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
   1130b:	89 1c 24             	mov    DWORD PTR [esp],ebx
   1130e:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
   11312:	89 e3                	mov    ebx,esp
   11314:	66 89 44 24 22       	mov    WORD PTR [esp+0x22],ax
   11319:	b8 10 00 00 00       	mov    eax,0x10
   1131e:	89 54 24 1c          	mov    DWORD PTR [esp+0x1c],edx
   11322:	e8 a9 5f ff ff       	call   simulate_real_mode_interrupt
   11327:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
   1132b:	25 ff ff 00 00       	and    eax,0xffff
   11330:	83 f8 4f             	cmp    eax,0x4f
   11333:	75 28                	jne    gr_return_super_VGA_mode_information_branch_1
   11335:	b8 1d 00 00 00       	mov    eax,0x1d
   1133a:	8b 54 24 40          	mov    edx,DWORD PTR [esp+0x40]
   1133e:	89 f1                	mov    ecx,esi
   11340:	89 fe                	mov    esi,edi
   11342:	89 ef                	mov    edi,ebp
   11344:	1e                   	push   ds
   11345:	06                   	push   es
   11346:	57                   	push   edi
   11347:	91                   	xchg   ecx,eax
   11348:	8e d8                	mov    ds,eax
   1134a:	8e c2                	mov    es,edx
   1134c:	89 c8                	mov    eax,ecx
   1134e:	c1 e9 02             	shr    ecx,0x2
   11351:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
   11353:	8a c8                	mov    cl,al
   11355:	80 e1 03             	and    cl,0x3
   11358:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
   1135a:	58                   	pop    eax
   1135b:	07                   	pop    es
   1135c:	1f                   	pop    ds
gr_return_super_VGA_mode_information_branch_1:
   1135d:	8b 54 24 3c          	mov    edx,DWORD PTR [esp+0x3c]
   11361:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
   11365:	e8 16 5f ff ff       	call   free_dos_block
   1136a:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
   1136e:	25 ff ff 00 00       	and    eax,0xffff
   11373:	83 f8 4f             	cmp    eax,0x4f
   11376:	0f 94 c0             	sete   al
   11379:	83 c4 48             	add    esp,0x48
   1137c:	5d                   	pop    ebp
   1137d:	5f                   	pop    edi
   1137e:	5e                   	pop    esi
   1137f:	5a                   	pop    edx
   11380:	c3                   	ret    
   11381:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   11387:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
   1138d:	8d 40 00             	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'gr_set_super_VGA_video_mode'        -
;-------------------------------------------------
gr_set_super_VGA_video_mode:
   11390:	53                   	push   ebx
   11391:	51                   	push   ecx
   11392:	52                   	push   edx
   11393:	83 ec 34             	sub    esp,0x34
   11396:	89 c1                	mov    ecx,eax
   11398:	bb 32 00 00 00       	mov    ebx,0x32
   1139d:	89 e0                	mov    eax,esp
   1139f:	31 d2                	xor    edx,edx
   113a1:	e8 2a 00 06 00       	call   memset_
   113a6:	ba 02 4f 00 00       	mov    edx,0x4f02
   113ab:	0f bf c1             	movsx  eax,cx
   113ae:	89 e3                	mov    ebx,esp
   113b0:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
   113b4:	8c d9                	mov    ecx,ds
   113b6:	b8 10 00 00 00       	mov    eax,0x10
   113bb:	89 54 24 1c          	mov    DWORD PTR [esp+0x1c],edx
   113bf:	e8 0c 5f ff ff       	call   simulate_real_mode_interrupt
   113c4:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
   113c8:	25 ff ff 00 00       	and    eax,0xffff
   113cd:	83 f8 4f             	cmp    eax,0x4f
   113d0:	0f 94 c0             	sete   al
   113d3:	83 c4 34             	add    esp,0x34
   113d6:	5a                   	pop    edx
   113d7:	59                   	pop    ecx
   113d8:	5b                   	pop    ebx
   113d9:	c3                   	ret    
   113da:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'gr_return_current_video_mode'       -
;-------------------------------------------------
gr_return_current_video_mode:
   113e0:	53                   	push   ebx
   113e1:	51                   	push   ecx
   113e2:	52                   	push   edx
   113e3:	56                   	push   esi
   113e4:	83 ec 34             	sub    esp,0x34
   113e7:	89 c6                	mov    esi,eax
   113e9:	bb 32 00 00 00       	mov    ebx,0x32
   113ee:	89 e0                	mov    eax,esp
   113f0:	31 d2                	xor    edx,edx
   113f2:	e8 d9 ff 05 00       	call   memset_
   113f7:	8c d9                	mov    ecx,ds
   113f9:	ba 03 4f 00 00       	mov    edx,0x4f03
   113fe:	89 e3                	mov    ebx,esp
   11400:	b8 10 00 00 00       	mov    eax,0x10
   11405:	89 54 24 1c          	mov    DWORD PTR [esp+0x1c],edx
   11409:	e8 c2 5e ff ff       	call   simulate_real_mode_interrupt
   1140e:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
   11412:	25 ff ff 00 00       	and    eax,0xffff
   11417:	83 f8 4f             	cmp    eax,0x4f
   1141a:	75 0b                	jne    gr_return_current_video_mode_branch_1
   1141c:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
   11420:	66 89 06             	mov    WORD PTR [esi],ax
   11423:	b0 01                	mov    al,0x1
   11425:	eb 02                	jmp    gr_return_current_video_mode_branch_2
gr_return_current_video_mode_branch_1:
   11427:	30 c0                	xor    al,al
gr_return_current_video_mode_branch_2:
   11429:	83 c4 34             	add    esp,0x34
   1142c:	5e                   	pop    esi
   1142d:	5a                   	pop    edx
   1142e:	59                   	pop    ecx
   1142f:	5b                   	pop    ebx
   11430:	c3                   	ret    
   11431:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   11437:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
   1143d:	8d 40 00             	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function                                      -
;  'gr_select_super_VGA_video_memory_window'     -
;-------------------------------------------------
gr_select_super_VGA_video_memory_window:
   11440:	53                   	push   ebx
   11441:	51                   	push   ecx
   11442:	56                   	push   esi
   11443:	83 ec 34             	sub    esp,0x34
   11446:	88 c1                	mov    cl,al
   11448:	89 d6                	mov    esi,edx
   1144a:	bb 32 00 00 00       	mov    ebx,0x32
   1144f:	89 e0                	mov    eax,esp
   11451:	31 d2                	xor    edx,edx
   11453:	e8 78 ff 05 00       	call   memset_
   11458:	31 c0                	xor    eax,eax
   1145a:	ba 05 4f 00 00       	mov    edx,0x4f05
   1145f:	88 c8                	mov    al,cl
   11461:	89 e3                	mov    ebx,esp
   11463:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
   11467:	0f bf c6             	movsx  eax,si
   1146a:	8c d9                	mov    ecx,ds
   1146c:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
   11470:	b8 10 00 00 00       	mov    eax,0x10
   11475:	89 54 24 1c          	mov    DWORD PTR [esp+0x1c],edx
   11479:	e8 52 5e ff ff       	call   simulate_real_mode_interrupt
   1147e:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
   11482:	25 ff ff 00 00       	and    eax,0xffff
   11487:	83 f8 4f             	cmp    eax,0x4f
   1148a:	0f 94 c0             	sete   al
   1148d:	83 c4 34             	add    esp,0x34
   11490:	5e                   	pop    esi
   11491:	59                   	pop    ecx
   11492:	5b                   	pop    ebx
   11493:	c3                   	ret    
;-------------------------------------------------
;  Bad code 15 (zero after ret):                 -
;-------------------------------------------------
;  11492:	5b                   	pop    ebx
;  11493:	c3                   	ret    
;  11494:	00 00                	add    BYTE PTR [eax],al
;  11496:	00 00                	add    BYTE PTR [eax],al
;-------------------------------------------------
;  Padding data (12 bytes):                      -
;-------------------------------------------------
   11494:	00 00 00 00 00 00 .. 	db     12 dup(0x00)
;-------------------------------------------------
;  End of bad code 15                            -
;-------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 12 (D:\SOURCE\vesa_vbe.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------