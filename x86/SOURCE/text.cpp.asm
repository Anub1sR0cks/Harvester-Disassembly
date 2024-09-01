;-------------------------------------------------------------------------------
;                                                                              -
;  Module 80: D:\SOURCE\text.cpp                                               -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function 'get_text_VRAM_address'              -
;-------------------------------------------------
get_text_VRAM_address:
   49400:	53                   	push   ebx
   49401:	52                   	push   edx
   49402:	ba 00 00 0b 00       	mov    edx,0xb0000
   49407:	31 db                	xor    ebx,ebx
   49409:	89 15 78 5a 02 00    	mov    DWORD PTR ds:@obj3:text_VRAM_start,edx                       ; fixup: num: 11597, src obj: 1, src ofs: 0x4940b, dst obj: 3, dst ofs: 0x25a78
   4940f:	89 1d 80 5a 02 00    	mov    DWORD PTR ds:@obj3:text_y,ebx                                ; fixup: num: 11596, src obj: 1, src ofs: 0x49411, dst obj: 3, dst ofs: 0x25a80
   49415:	89 1d 7c 5a 02 00    	mov    DWORD PTR ds:@obj3:text_x,ebx                                ; fixup: num: 11595, src obj: 1, src ofs: 0x49417, dst obj: 3, dst ofs: 0x25a7c
   4941b:	5a                   	pop    edx
   4941c:	5b                   	pop    ebx
   4941d:	c3                   	ret    
   4941e:	8b c0                	mov    eax,eax

;-------------------------------------------------
;  Function 'text_erase'                         -
;-------------------------------------------------
text_erase:
   49420:	56                   	push   esi
   49421:	57                   	push   edi
   49422:	55                   	push   ebp
   49423:	83 ec 0c             	sub    esp,0xc
   49426:	8b 35 78 5a 02 00    	mov    esi,DWORD PTR ds:@obj3:text_VRAM_start                       ; fixup: num: 11594, src obj: 1, src ofs: 0x49428, dst obj: 3, dst ofs: 0x25a78
   4942c:	89 04 24             	mov    DWORD PTR [esp],eax
   4942f:	89 5c 24 08          	mov    DWORD PTR [esp+0x8],ebx
   49433:	89 4c 24 04          	mov    DWORD PTR [esp+0x4],ecx
   49437:	89 d5                	mov    ebp,edx
   49439:	39 ca                	cmp    edx,ecx
   4943b:	7f 43                	jg     text_erase_branch_4
   4943d:	8d 3c 95 00 00 00 00 	lea    edi,[edx*4+0x0]
   49444:	01 d7                	add    edi,edx
   49446:	c1 e7 05             	shl    edi,0x5
   49449:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
   4944d:	81 ef a0 00 00 00    	sub    edi,0xa0
text_erase_branch_1:
   49453:	8b 04 24             	mov    eax,DWORD PTR [esp]
   49456:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
   4945a:	39 d0                	cmp    eax,edx
   4945c:	7f 17                	jg     text_erase_branch_3
   4945e:	8d 1c 12             	lea    ebx,[edx+edx*1]
   49461:	01 c0                	add    eax,eax
   49463:	89 f2                	mov    edx,esi
   49465:	01 f8                	add    eax,edi
   49467:	01 fb                	add    ebx,edi
text_erase_branch_2:
   49469:	83 c0 02             	add    eax,0x2
   4946c:	c6 44 02 fc 20       	mov    BYTE PTR [edx+eax*1-0x4],0x20
   49471:	39 d8                	cmp    eax,ebx
   49473:	7e f4                	jle    text_erase_branch_2
text_erase_branch_3:
   49475:	45                   	inc    ebp
   49476:	81 c7 a0 00 00 00    	add    edi,0xa0
   4947c:	39 cd                	cmp    ebp,ecx
   4947e:	7e d3                	jle    text_erase_branch_1
text_erase_branch_4:
   49480:	89 35 78 5a 02 00    	mov    DWORD PTR ds:@obj3:text_VRAM_start,esi                       ; fixup: num: 11593, src obj: 1, src ofs: 0x49482, dst obj: 3, dst ofs: 0x25a78
   49486:	83 c4 0c             	add    esp,0xc
   49489:	5d                   	pop    ebp
   4948a:	5f                   	pop    edi
   4948b:	5e                   	pop    esi
   4948c:	c3                   	ret    
   4948d:	8d 40 00             	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'text_puts'                          -
;-------------------------------------------------
text_puts:
   49490:	51                   	push   ecx
   49491:	56                   	push   esi
   49492:	57                   	push   edi
   49493:	8b 3d 78 5a 02 00    	mov    edi,DWORD PTR ds:@obj3:text_VRAM_start                       ; fixup: num: 11592, src obj: 1, src ofs: 0x49495, dst obj: 3, dst ofs: 0x25a78
   49499:	89 c1                	mov    ecx,eax
   4949b:	85 db                	test   ebx,ebx
   4949d:	74 29                	je     text_puts_branch_2
   4949f:	4a                   	dec    edx
   494a0:	8d 04 95 00 00 00 00 	lea    eax,[edx*4+0x0]
   494a7:	01 c2                	add    edx,eax
   494a9:	c1 e2 05             	shl    edx,0x5
   494ac:	8d 04 4d 00 00 00 00 	lea    eax,[ecx*2+0x0]
   494b3:	89 fe                	mov    esi,edi
   494b5:	01 d0                	add    eax,edx
text_puts_branch_1:
   494b7:	8a 13                	mov    dl,BYTE PTR [ebx]
   494b9:	84 d2                	test   dl,dl
   494bb:	74 0b                	je     text_puts_branch_2
   494bd:	83 c0 02             	add    eax,0x2
   494c0:	43                   	inc    ebx
   494c1:	41                   	inc    ecx
   494c2:	88 54 06 fc          	mov    BYTE PTR [esi+eax*1-0x4],dl
   494c6:	eb ef                	jmp    text_puts_branch_1
text_puts_branch_2:
   494c8:	89 3d 78 5a 02 00    	mov    DWORD PTR ds:@obj3:text_VRAM_start,edi                       ; fixup: num: 11599, src obj: 1, src ofs: 0x494ca, dst obj: 3, dst ofs: 0x25a78
   494ce:	5f                   	pop    edi
   494cf:	5e                   	pop    esi
   494d0:	59                   	pop    ecx
   494d1:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   494d7:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
   494dd:	8d 40 00             	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'text_puts_mod_80'                   -
;-------------------------------------------------
text_puts_mod_80:
   494e0:	c3                   	ret    
   494e1:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   494e7:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
   494ed:	8d 40 00             	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'text_color'                         -
;-------------------------------------------------
text_color:
   494f0:	56                   	push   esi
   494f1:	57                   	push   edi
   494f2:	55                   	push   ebp
   494f3:	83 ec 08             	sub    esp,0x8
   494f6:	8b 35 78 5a 02 00    	mov    esi,DWORD PTR ds:@obj3:text_VRAM_start                       ; fixup: num: 11598, src obj: 1, src ofs: 0x494f8, dst obj: 3, dst ofs: 0x25a78
   494fc:	89 c5                	mov    ebp,eax
   494fe:	89 d7                	mov    edi,edx
   49500:	89 5c 24 04          	mov    DWORD PTR [esp+0x4],ebx
   49504:	89 ca                	mov    edx,ecx
   49506:	8a 44 24 18          	mov    al,BYTE PTR [esp+0x18]
   4950a:	24 10                	and    al,0x10
   4950c:	89 c1                	mov    ecx,eax
   4950e:	31 db                	xor    ebx,ebx
   49510:	81 e1 ff 00 00 00    	and    ecx,0xff
   49516:	8a 5c 24 1c          	mov    bl,BYTE PTR [esp+0x1c]
   4951a:	d1 f9                	sar    ecx,1
   4951c:	8a 44 24 18          	mov    al,BYTE PTR [esp+0x18]
   49520:	09 d9                	or     ecx,ebx
   49522:	24 0f                	and    al,0xf
   49524:	c1 e1 04             	shl    ecx,0x4
   49527:	25 ff 00 00 00       	and    eax,0xff
   4952c:	09 c1                	or     ecx,eax
   4952e:	39 d7                	cmp    edi,edx
   49530:	77 5f                	ja     text_color_branch_4
   49532:	89 f8                	mov    eax,edi
   49534:	8d 04 85 00 00 00 00 	lea    eax,[eax*4+0x0]
   4953b:	01 c7                	add    edi,eax
   4953d:	89 d0                	mov    eax,edx
   4953f:	8d 04 85 00 00 00 00 	lea    eax,[eax*4+0x0]
   49546:	01 d0                	add    eax,edx
   49548:	c1 e0 05             	shl    eax,0x5
   4954b:	c1 e7 05             	shl    edi,0x5
   4954e:	89 04 24             	mov    DWORD PTR [esp],eax
   49551:	8d 98 60 ff ff ff    	lea    ebx,[eax-0xa0]
   49557:	81 ef a0 00 00 00    	sub    edi,0xa0
   4955d:	89 1c 24             	mov    DWORD PTR [esp],ebx
text_color_branch_1:
   49560:	3b 6c 24 04          	cmp    ebp,DWORD PTR [esp+0x4]
   49564:	77 1e                	ja     text_color_branch_3
   49566:	8b 5c 24 04          	mov    ebx,DWORD PTR [esp+0x4]
   4956a:	8d 04 6d 00 00 00 00 	lea    eax,[ebp*2+0x0]
   49571:	89 f2                	mov    edx,esi
   49573:	01 db                	add    ebx,ebx
   49575:	01 f8                	add    eax,edi
   49577:	01 fb                	add    ebx,edi
text_color_branch_2:
   49579:	83 c0 02             	add    eax,0x2
   4957c:	88 4c 02 fd          	mov    BYTE PTR [edx+eax*1-0x3],cl
   49580:	39 d8                	cmp    eax,ebx
   49582:	76 f5                	jbe    text_color_branch_2
text_color_branch_3:
   49584:	8b 14 24             	mov    edx,DWORD PTR [esp]
   49587:	81 c7 a0 00 00 00    	add    edi,0xa0
   4958d:	39 d7                	cmp    edi,edx
   4958f:	76 cf                	jbe    text_color_branch_1
text_color_branch_4:
   49591:	89 35 78 5a 02 00    	mov    DWORD PTR ds:@obj3:text_VRAM_start,esi                       ; fixup: num: 11600, src obj: 1, src ofs: 0x49593, dst obj: 3, dst ofs: 0x25a78
   49597:	83 c4 08             	add    esp,0x8
   4959a:	5d                   	pop    ebp
   4959b:	5f                   	pop    edi
   4959c:	5e                   	pop    esi
   4959d:	c2 08 00             	ret    0x8

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 80 (D:\SOURCE\text.cpp)                                       -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 80: D:\SOURCE\text.cpp                                               -
;                                                                              -
;-------------------------------------------------------------------------------
text_VRAM_start:                                                                                    ; access size: DWORD
   25a78:	00 00 00 00          	dd     0x00000000
text_x:                                                                                             ; access size: DWORD
   25a7c:	00 00 00 00          	dd     0x00000000
text_y:                                                                                             ; access size: DWORD
   25a80:	00 00 00 00          	dd     0x00000000

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 80 (D:\SOURCE\text.cpp)                                       -
;                                                                              -
;-------------------------------------------------------------------------------