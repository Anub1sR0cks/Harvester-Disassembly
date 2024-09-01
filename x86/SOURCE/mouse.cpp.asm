;-------------------------------------------------------------------------------
;                                                                              -
;  Module 73: D:\SOURCE\mouse.cpp                                              -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function '.fn_init_mod_73'                    -
;-------------------------------------------------
.fn_init_mod_73:
   39270:	53                   	push   ebx
   39271:	51                   	push   ecx
   39272:	52                   	push   edx
   39273:	56                   	push   esi
   39274:	57                   	push   edi
   39275:	83 ec 7c             	sub    esp,0x7c
   39278:	b8 fc 3b 01 00       	mov    eax,@obj3:mouse_cpp_variable_3                               ; fixup: num: 10494, src obj: 1, src ofs: 0x39279, dst obj: 3, dst ofs: 0x13bfc
   3927d:	e8 50 8e 03 00       	call   __wcpp_2_mod_register__
   39282:	8d 5c 24 38          	lea    ebx,[esp+0x38]
   39286:	30 e4                	xor    ah,ah
   39288:	31 d2                	xor    edx,edx
   3928a:	88 25 71 59 02 00    	mov    BYTE PTR ds:@obj3:mouse_initialized,ah                       ; fixup: num: 10493, src obj: 1, src ofs: 0x3928c, dst obj: 3, dst ofs: 0x25971
   39290:	66 89 54 24 38       	mov    WORD PTR [esp+0x38],dx
   39295:	8d 54 24 38          	lea    edx,[esp+0x38]
   39299:	b8 33 00 00 00       	mov    eax,0x33
   3929e:	e8 f9 7d 03 00       	call   int386_
   392a3:	31 c0                	xor    eax,eax
   392a5:	66 8b 44 24 38       	mov    ax,WORD PTR [esp+0x38]
   392aa:	3d ff ff 00 00       	cmp    eax,0xffff
   392af:	75 0c                	jne    .fn_init_mod_73_branch_1
   392b1:	b2 01                	mov    dl,0x1
   392b3:	88 15 71 59 02 00    	mov    BYTE PTR ds:@obj3:mouse_initialized,dl                       ; fixup: num: 10492, src obj: 1, src ofs: 0x392b5, dst obj: 3, dst ofs: 0x25971
   392b9:	88 d0                	mov    al,dl
   392bb:	eb 02                	jmp    .fn_init_mod_73_branch_2
.fn_init_mod_73_branch_1:
   392bd:	30 c0                	xor    al,al
.fn_init_mod_73_branch_2:
   392bf:	84 c0                	test   al,al
   392c1:	75 11                	jne    .fn_init_mod_73_branch_3
   392c3:	bb 54 98 00 00       	mov    ebx,@obj3:mouse_cpp_variable_1                               ; fixup: num: 10491, src obj: 1, src ofs: 0x392c4, dst obj: 3, dst ofs: 0x9854
   392c8:	ba 7a 00 00 00       	mov    edx,0x7a
   392cd:	31 c0                	xor    eax,eax
   392cf:	e8 5c ed ff ff       	call   _error_report
.fn_init_mod_73_branch_3:
   392d4:	68 00 10 00 00       	push   0x1000
   392d9:	b8 70 94 03 00       	mov    eax,@obj1:mouse_handler                                      ; fixup: num: 10490, src obj: 1, src ofs: 0x392da, dst obj: 1, dst ofs: 0x39470
   392de:	8c ca                	mov    edx,cs
   392e0:	31 c0                	xor    eax,eax
   392e2:	66 89 d0             	mov    ax,dx
   392e5:	50                   	push   eax
   392e6:	be 70 94 03 00       	mov    esi,@obj1:mouse_handler                                      ; fixup: num: 10489, src obj: 1, src ofs: 0x392e7, dst obj: 1, dst ofs: 0x39470
   392eb:	e8 b9 d3 03 00       	call   _D32GetSegBase
   392f0:	83 c4 04             	add    esp,0x4
   392f3:	01 f0                	add    eax,esi
   392f5:	50                   	push   eax
   392f6:	e8 fc 77 03 00       	call   _D32Lock
   392fb:	83 c4 08             	add    esp,0x8
   392fe:	6a 04                	push   0x4
   39300:	68 74 59 02 00       	push   @obj3:left_button                                            ; fixup: num: 10488, src obj: 1, src ofs: 0x39301, dst obj: 3, dst ofs: 0x25974
   39305:	e8 ed 77 03 00       	call   _D32Lock
   3930a:	83 c4 08             	add    esp,0x8
   3930d:	6a 04                	push   0x4
   3930f:	68 72 59 02 00       	push   @obj3:right_button                                           ; fixup: num: 10487, src obj: 1, src ofs: 0x39310, dst obj: 3, dst ofs: 0x25972
   39314:	e8 de 77 03 00       	call   _D32Lock
   39319:	83 c4 08             	add    esp,0x8
   3931c:	6a 04                	push   0x4
   3931e:	68 73 59 02 00       	push   @obj3:center_button                                          ; fixup: num: 10501, src obj: 1, src ofs: 0x3931f, dst obj: 3, dst ofs: 0x25973
   39323:	e8 cf 77 03 00       	call   _D32Lock
   39328:	83 c4 08             	add    esp,0x8
   3932b:	6a 04                	push   0x4
   3932d:	68 78 59 02 00       	push   @obj3:mouse_x                                                ; fixup: num: 10500, src obj: 1, src ofs: 0x3932e, dst obj: 3, dst ofs: 0x25978
   39332:	e8 c0 77 03 00       	call   _D32Lock
   39337:	83 c4 08             	add    esp,0x8
   3933a:	6a 04                	push   0x4
   3933c:	68 7c 59 02 00       	push   @obj3:mouse_y                                                ; fixup: num: 10499, src obj: 1, src ofs: 0x3933d, dst obj: 3, dst ofs: 0x2597c
   39341:	e8 b1 77 03 00       	call   _D32Lock
   39346:	83 c4 08             	add    esp,0x8
   39349:	6a 04                	push   0x4
   3934b:	68 80 59 02 00       	push   @obj3:last_mouse_click_time                                  ; fixup: num: 10498, src obj: 1, src ofs: 0x3934c, dst obj: 3, dst ofs: 0x25980
   39350:	e8 a2 77 03 00       	call   _D32Lock
   39355:	83 c4 08             	add    esp,0x8
   39358:	6a 04                	push   0x4
   3935a:	68 75 59 02 00       	push   @obj3:mouse_double_click                                     ; fixup: num: 10497, src obj: 1, src ofs: 0x3935b, dst obj: 3, dst ofs: 0x25975
   3935f:	e8 93 77 03 00       	call   _D32Lock
   39364:	83 c4 08             	add    esp,0x8
   39367:	6a 04                	push   0x4
   39369:	68 84 59 02 00       	push   @obj3:left_release_time                                      ; fixup: num: 10496, src obj: 1, src ofs: 0x3936a, dst obj: 3, dst ofs: 0x25984
   3936e:	e8 84 77 03 00       	call   _D32Lock
   39373:	8d 44 24 78          	lea    eax,[esp+0x78]
   39377:	83 c4 08             	add    esp,0x8
   3937a:	bb 0c 00 00 00       	mov    ebx,0xc
   3937f:	b9 7f 00 00 00       	mov    ecx,0x7f
   39384:	e8 2f d5 03 00       	call   segread_
   39389:	8c ca                	mov    edx,cs
   3938b:	66 89 5c 24 1c       	mov    WORD PTR [esp+0x1c],bx
   39390:	66 89 4c 24 24       	mov    WORD PTR [esp+0x24],cx
   39395:	89 f0                	mov    eax,esi
   39397:	89 74 24 28          	mov    DWORD PTR [esp+0x28],esi
   3939b:	8d 4c 24 70          	lea    ecx,[esp+0x70]
   3939f:	8d 5c 24 1c          	lea    ebx,[esp+0x1c]
   393a3:	b8 33 00 00 00       	mov    eax,0x33
   393a8:	66 89 54 24 70       	mov    WORD PTR [esp+0x70],dx
   393ad:	8d 54 24 1c          	lea    edx,[esp+0x1c]
   393b1:	e8 33 8d 03 00       	call   int386x_
   393b6:	b8 7f 02 00 00       	mov    eax,0x27f
   393bb:	8a 1d 71 59 02 00    	mov    bl,BYTE PTR ds:@obj3:mouse_initialized                       ; fixup: num: 10495, src obj: 1, src ofs: 0x393bd, dst obj: 3, dst ofs: 0x25971
   393c1:	31 d2                	xor    edx,edx
   393c3:	84 db                	test   bl,bl
   393c5:	74 21                	je     .fn_init_mod_73_branch_4
   393c7:	be 07 00 00 00       	mov    esi,0x7
   393cc:	89 e3                	mov    ebx,esp
   393ce:	66 89 54 24 08       	mov    WORD PTR [esp+0x8],dx
   393d3:	66 89 44 24 0c       	mov    WORD PTR [esp+0xc],ax
   393d8:	89 e2                	mov    edx,esp
   393da:	b8 33 00 00 00       	mov    eax,0x33
   393df:	66 89 34 24          	mov    WORD PTR [esp],si
   393e3:	e8 b4 7c 03 00       	call   int386_
.fn_init_mod_73_branch_4:
   393e8:	ba df 01 00 00       	mov    edx,0x1df
   393ed:	8a 3d 71 59 02 00    	mov    bh,BYTE PTR ds:@obj3:mouse_initialized                       ; fixup: num: 10503, src obj: 1, src ofs: 0x393ef, dst obj: 3, dst ofs: 0x25971
   393f3:	31 c0                	xor    eax,eax
   393f5:	84 ff                	test   bh,bh
   393f7:	74 26                	je     .fn_init_mod_73_branch_5
   393f9:	bf 08 00 00 00       	mov    edi,0x8
   393fe:	8d 5c 24 54          	lea    ebx,[esp+0x54]
   39402:	66 89 44 24 5c       	mov    WORD PTR [esp+0x5c],ax
   39407:	66 89 54 24 60       	mov    WORD PTR [esp+0x60],dx
   3940c:	8d 54 24 54          	lea    edx,[esp+0x54]
   39410:	b8 33 00 00 00       	mov    eax,0x33
   39415:	66 89 7c 24 54       	mov    WORD PTR [esp+0x54],di
   3941a:	e8 7d 7c 03 00       	call   int386_
.fn_init_mod_73_branch_5:
   3941f:	b8 1a 00 00 00       	mov    eax,0x1a
   39424:	ba 20 00 00 00       	mov    edx,0x20
   39429:	b9 40 00 00 00       	mov    ecx,0x40
   3942e:	8d 5c 24 1c          	lea    ebx,[esp+0x1c]
   39432:	66 89 44 24 1c       	mov    WORD PTR [esp+0x1c],ax
   39437:	66 89 54 24 24       	mov    WORD PTR [esp+0x24],dx
   3943c:	66 89 54 24 20       	mov    WORD PTR [esp+0x20],dx
   39441:	8d 54 24 1c          	lea    edx,[esp+0x1c]
   39445:	b8 33 00 00 00       	mov    eax,0x33
   3944a:	66 89 4c 24 28       	mov    WORD PTR [esp+0x28],cx
   3944f:	e8 48 7c 03 00       	call   int386_
   39454:	c7 05 04 3c 01 00 01 00 00 00 	mov    DWORD PTR ds:@obj3:mouse_cpp_variable_4,0x1         ; fixup: num: 10502, src obj: 1, src ofs: 0x39456, dst obj: 3, dst ofs: 0x13c04
   3945e:	83 c4 7c             	add    esp,0x7c
   39461:	5f                   	pop    edi
   39462:	5e                   	pop    esi
   39463:	5a                   	pop    edx
   39464:	59                   	pop    ecx
   39465:	5b                   	pop    ebx
   39466:	c3                   	ret    
   39467:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   3946d:	8d 52 00             	lea    edx,[edx+0x0]

;-------------------------------------------------
;  Function 'mouse_handler'                      -
;-------------------------------------------------
mouse_handler:
   39470:	1e                   	push   ds
   39471:	e8 3e 7f 03 00       	call   __GETDS
   39476:	53                   	push   ebx
   39477:	89 d3                	mov    ebx,edx
   39479:	a8 02                	test   al,0x2
   3947b:	74 2b                	je     mouse_handler_branch_2
   3947d:	c6 05 74 59 02 00 01 	mov    BYTE PTR ds:@obj3:left_button,0x1                            ; fixup: num: 10420, src obj: 1, src ofs: 0x3947f, dst obj: 3, dst ofs: 0x25974
   39484:	8b 15 44 7e 01 00    	mov    edx,DWORD PTR ds:@obj3:current_time                          ; fixup: num: 10419, src obj: 1, src ofs: 0x39486, dst obj: 3, dst ofs: 0x17e44
   3948a:	2b 15 84 59 02 00    	sub    edx,DWORD PTR ds:@obj3:left_release_time                     ; fixup: num: 10418, src obj: 1, src ofs: 0x3948c, dst obj: 3, dst ofs: 0x25984
   39490:	83 fa 14             	cmp    edx,0x14
   39493:	73 09                	jae    mouse_handler_branch_1
   39495:	c6 05 75 59 02 00 01 	mov    BYTE PTR ds:@obj3:mouse_double_click,0x1                     ; fixup: num: 10417, src obj: 1, src ofs: 0x39497, dst obj: 3, dst ofs: 0x25975
   3949c:	eb 22                	jmp    mouse_handler_branch_3
mouse_handler_branch_1:
   3949e:	30 d2                	xor    dl,dl
   394a0:	88 15 75 59 02 00    	mov    BYTE PTR ds:@obj3:mouse_double_click,dl                      ; fixup: num: 10416, src obj: 1, src ofs: 0x394a2, dst obj: 3, dst ofs: 0x25975
   394a6:	eb 18                	jmp    mouse_handler_branch_3
mouse_handler_branch_2:
   394a8:	a8 04                	test   al,0x4
   394aa:	74 14                	je     mouse_handler_branch_3
   394ac:	30 d2                	xor    dl,dl
   394ae:	88 15 74 59 02 00    	mov    BYTE PTR ds:@obj3:left_button,dl                             ; fixup: num: 10415, src obj: 1, src ofs: 0x394b0, dst obj: 3, dst ofs: 0x25974
   394b4:	8b 15 44 7e 01 00    	mov    edx,DWORD PTR ds:@obj3:current_time                          ; fixup: num: 10414, src obj: 1, src ofs: 0x394b6, dst obj: 3, dst ofs: 0x17e44
   394ba:	89 15 84 59 02 00    	mov    DWORD PTR ds:@obj3:left_release_time,edx                     ; fixup: num: 10413, src obj: 1, src ofs: 0x394bc, dst obj: 3, dst ofs: 0x25984
mouse_handler_branch_3:
   394c0:	a8 08                	test   al,0x8
   394c2:	74 09                	je     mouse_handler_branch_4
   394c4:	c6 05 72 59 02 00 01 	mov    BYTE PTR ds:@obj3:right_button,0x1                           ; fixup: num: 10412, src obj: 1, src ofs: 0x394c6, dst obj: 3, dst ofs: 0x25972
   394cb:	eb 0c                	jmp    mouse_handler_branch_5
mouse_handler_branch_4:
   394cd:	a8 10                	test   al,0x10
   394cf:	74 08                	je     mouse_handler_branch_5
   394d1:	30 d2                	xor    dl,dl
   394d3:	88 15 72 59 02 00    	mov    BYTE PTR ds:@obj3:right_button,dl                            ; fixup: num: 10411, src obj: 1, src ofs: 0x394d5, dst obj: 3, dst ofs: 0x25972
mouse_handler_branch_5:
   394d9:	a8 20                	test   al,0x20
   394db:	74 09                	je     mouse_handler_branch_6
   394dd:	c6 05 73 59 02 00 01 	mov    BYTE PTR ds:@obj3:center_button,0x1                          ; fixup: num: 10410, src obj: 1, src ofs: 0x394df, dst obj: 3, dst ofs: 0x25973
   394e4:	eb 0b                	jmp    mouse_handler_branch_7
mouse_handler_branch_6:
   394e6:	a8 40                	test   al,0x40
   394e8:	74 07                	je     mouse_handler_branch_7
   394ea:	30 c0                	xor    al,al
   394ec:	a2 73 59 02 00       	mov    ds:@obj3:center_button,al                                    ; fixup: num: 10409, src obj: 1, src ofs: 0x394ed, dst obj: 3, dst ofs: 0x25973
mouse_handler_branch_7:
   394f1:	89 0d 78 59 02 00    	mov    DWORD PTR ds:@obj3:mouse_x,ecx                               ; fixup: num: 10408, src obj: 1, src ofs: 0x394f3, dst obj: 3, dst ofs: 0x25978
   394f7:	89 1d 7c 59 02 00    	mov    DWORD PTR ds:@obj3:mouse_y,ebx                               ; fixup: num: 10407, src obj: 1, src ofs: 0x394f9, dst obj: 3, dst ofs: 0x2597c
   394fd:	a1 44 7e 01 00       	mov    eax,ds:@obj3:current_time                                    ; fixup: num: 10406, src obj: 1, src ofs: 0x394fe, dst obj: 3, dst ofs: 0x17e44
   39502:	a3 80 59 02 00       	mov    ds:@obj3:last_mouse_click_time,eax                           ; fixup: num: 10405, src obj: 1, src ofs: 0x39503, dst obj: 3, dst ofs: 0x25980
   39507:	5b                   	pop    ebx
   39508:	1f                   	pop    ds
   39509:	cb                   	retf   
   3950a:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'MOUSE_reset'                        -
;-------------------------------------------------
MOUSE_reset:
   39510:	53                   	push   ebx
   39511:	52                   	push   edx
   39512:	83 ec 1c             	sub    esp,0x1c
   39515:	89 e3                	mov    ebx,esp
   39517:	30 e4                	xor    ah,ah
   39519:	31 d2                	xor    edx,edx
   3951b:	88 25 71 59 02 00    	mov    BYTE PTR ds:@obj3:mouse_initialized,ah                       ; fixup: num: 10404, src obj: 1, src ofs: 0x3951d, dst obj: 3, dst ofs: 0x25971
   39521:	66 89 14 24          	mov    WORD PTR [esp],dx
   39525:	89 e2                	mov    edx,esp
   39527:	b8 33 00 00 00       	mov    eax,0x33
   3952c:	e8 6b 7b 03 00       	call   int386_
   39531:	31 d2                	xor    edx,edx
   39533:	66 8b 14 24          	mov    dx,WORD PTR [esp]
   39537:	81 fa ff ff 00 00    	cmp    edx,0xffff
   3953d:	75 0c                	jne    MOUSE_reset_branch_1
   3953f:	b2 01                	mov    dl,0x1
   39541:	88 15 71 59 02 00    	mov    BYTE PTR ds:@obj3:mouse_initialized,dl                       ; fixup: num: 10426, src obj: 1, src ofs: 0x39543, dst obj: 3, dst ofs: 0x25971
   39547:	88 d0                	mov    al,dl
   39549:	eb 02                	jmp    MOUSE_reset_branch_2
MOUSE_reset_branch_1:
   3954b:	30 c0                	xor    al,al
MOUSE_reset_branch_2:
   3954d:	83 c4 1c             	add    esp,0x1c
   39550:	5a                   	pop    edx
   39551:	5b                   	pop    ebx
   39552:	c3                   	ret    
   39553:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   39559:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
   3955f:	90                   	nop

;-------------------------------------------------
;  Function 'MOUSE_initialize'                   -
;-------------------------------------------------
MOUSE_initialize:
   39560:	53                   	push   ebx
   39561:	51                   	push   ecx
   39562:	52                   	push   edx
   39563:	56                   	push   esi
   39564:	57                   	push   edi
   39565:	83 ec 7c             	sub    esp,0x7c
   39568:	8d 5c 24 38          	lea    ebx,[esp+0x38]
   3956c:	30 e4                	xor    ah,ah
   3956e:	31 d2                	xor    edx,edx
   39570:	88 25 71 59 02 00    	mov    BYTE PTR ds:@obj3:mouse_initialized,ah                       ; fixup: num: 10425, src obj: 1, src ofs: 0x39572, dst obj: 3, dst ofs: 0x25971
   39576:	66 89 54 24 38       	mov    WORD PTR [esp+0x38],dx
   3957b:	8d 54 24 38          	lea    edx,[esp+0x38]
   3957f:	b8 33 00 00 00       	mov    eax,0x33
   39584:	e8 13 7b 03 00       	call   int386_
   39589:	31 c0                	xor    eax,eax
   3958b:	66 8b 44 24 38       	mov    ax,WORD PTR [esp+0x38]
   39590:	3d ff ff 00 00       	cmp    eax,0xffff
   39595:	75 0c                	jne    MOUSE_initialize_branch_1
   39597:	b2 01                	mov    dl,0x1
   39599:	88 15 71 59 02 00    	mov    BYTE PTR ds:@obj3:mouse_initialized,dl                       ; fixup: num: 10424, src obj: 1, src ofs: 0x3959b, dst obj: 3, dst ofs: 0x25971
   3959f:	88 d0                	mov    al,dl
   395a1:	eb 02                	jmp    MOUSE_initialize_branch_2
MOUSE_initialize_branch_1:
   395a3:	30 c0                	xor    al,al
MOUSE_initialize_branch_2:
   395a5:	84 c0                	test   al,al
   395a7:	75 11                	jne    MOUSE_initialize_branch_3
   395a9:	bb 54 98 00 00       	mov    ebx,@obj3:mouse_cpp_variable_1                               ; fixup: num: 10423, src obj: 1, src ofs: 0x395aa, dst obj: 3, dst ofs: 0x9854
   395ae:	ba 7a 00 00 00       	mov    edx,0x7a
   395b3:	31 c0                	xor    eax,eax
   395b5:	e8 76 ea ff ff       	call   _error_report
MOUSE_initialize_branch_3:
   395ba:	68 00 10 00 00       	push   0x1000
   395bf:	b8 70 94 03 00       	mov    eax,@obj1:mouse_handler                                      ; fixup: num: 10422, src obj: 1, src ofs: 0x395c0, dst obj: 1, dst ofs: 0x39470
   395c4:	8c ca                	mov    edx,cs
   395c6:	31 c0                	xor    eax,eax
   395c8:	66 89 d0             	mov    ax,dx
   395cb:	50                   	push   eax
   395cc:	be 70 94 03 00       	mov    esi,@obj1:mouse_handler                                      ; fixup: num: 10421, src obj: 1, src ofs: 0x395cd, dst obj: 1, dst ofs: 0x39470
   395d1:	e8 d3 d0 03 00       	call   _D32GetSegBase
   395d6:	83 c4 04             	add    esp,0x4
   395d9:	01 f0                	add    eax,esi
   395db:	50                   	push   eax
   395dc:	e8 16 75 03 00       	call   _D32Lock
   395e1:	83 c4 08             	add    esp,0x8
   395e4:	6a 04                	push   0x4
   395e6:	68 74 59 02 00       	push   @obj3:left_button                                            ; fixup: num: 10434, src obj: 1, src ofs: 0x395e7, dst obj: 3, dst ofs: 0x25974
   395eb:	e8 07 75 03 00       	call   _D32Lock
   395f0:	83 c4 08             	add    esp,0x8
   395f3:	6a 04                	push   0x4
   395f5:	68 72 59 02 00       	push   @obj3:right_button                                           ; fixup: num: 10433, src obj: 1, src ofs: 0x395f6, dst obj: 3, dst ofs: 0x25972
   395fa:	e8 f8 74 03 00       	call   _D32Lock
   395ff:	83 c4 08             	add    esp,0x8
   39602:	6a 04                	push   0x4
   39604:	68 73 59 02 00       	push   @obj3:center_button                                          ; fixup: num: 10432, src obj: 1, src ofs: 0x39605, dst obj: 3, dst ofs: 0x25973
   39609:	e8 e9 74 03 00       	call   _D32Lock
   3960e:	83 c4 08             	add    esp,0x8
   39611:	6a 04                	push   0x4
   39613:	68 78 59 02 00       	push   @obj3:mouse_x                                                ; fixup: num: 10431, src obj: 1, src ofs: 0x39614, dst obj: 3, dst ofs: 0x25978
   39618:	e8 da 74 03 00       	call   _D32Lock
   3961d:	83 c4 08             	add    esp,0x8
   39620:	6a 04                	push   0x4
   39622:	68 7c 59 02 00       	push   @obj3:mouse_y                                                ; fixup: num: 10430, src obj: 1, src ofs: 0x39623, dst obj: 3, dst ofs: 0x2597c
   39627:	e8 cb 74 03 00       	call   _D32Lock
   3962c:	83 c4 08             	add    esp,0x8
   3962f:	6a 04                	push   0x4
   39631:	68 80 59 02 00       	push   @obj3:last_mouse_click_time                                  ; fixup: num: 10429, src obj: 1, src ofs: 0x39632, dst obj: 3, dst ofs: 0x25980
   39636:	e8 bc 74 03 00       	call   _D32Lock
   3963b:	83 c4 08             	add    esp,0x8
   3963e:	6a 04                	push   0x4
   39640:	68 75 59 02 00       	push   @obj3:mouse_double_click                                     ; fixup: num: 10428, src obj: 1, src ofs: 0x39641, dst obj: 3, dst ofs: 0x25975
   39645:	e8 ad 74 03 00       	call   _D32Lock
   3964a:	83 c4 08             	add    esp,0x8
   3964d:	6a 04                	push   0x4
   3964f:	68 84 59 02 00       	push   @obj3:left_release_time                                      ; fixup: num: 10427, src obj: 1, src ofs: 0x39650, dst obj: 3, dst ofs: 0x25984
   39654:	e8 9e 74 03 00       	call   _D32Lock
   39659:	8d 44 24 78          	lea    eax,[esp+0x78]
   3965d:	83 c4 08             	add    esp,0x8
   39660:	bb 0c 00 00 00       	mov    ebx,0xc
   39665:	b9 7f 00 00 00       	mov    ecx,0x7f
   3966a:	e8 49 d2 03 00       	call   segread_
   3966f:	8c ca                	mov    edx,cs
   39671:	66 89 5c 24 1c       	mov    WORD PTR [esp+0x1c],bx
   39676:	66 89 4c 24 24       	mov    WORD PTR [esp+0x24],cx
   3967b:	89 f0                	mov    eax,esi
   3967d:	89 74 24 28          	mov    DWORD PTR [esp+0x28],esi
   39681:	8d 4c 24 70          	lea    ecx,[esp+0x70]
   39685:	8d 5c 24 1c          	lea    ebx,[esp+0x1c]
   39689:	b8 33 00 00 00       	mov    eax,0x33
   3968e:	66 89 54 24 70       	mov    WORD PTR [esp+0x70],dx
   39693:	8d 54 24 1c          	lea    edx,[esp+0x1c]
   39697:	e8 4d 8a 03 00       	call   int386x_
   3969c:	b8 7f 02 00 00       	mov    eax,0x27f
   396a1:	8a 1d 71 59 02 00    	mov    bl,BYTE PTR ds:@obj3:mouse_initialized                       ; fixup: num: 10436, src obj: 1, src ofs: 0x396a3, dst obj: 3, dst ofs: 0x25971
   396a7:	31 d2                	xor    edx,edx
   396a9:	84 db                	test   bl,bl
   396ab:	74 21                	je     MOUSE_initialize_branch_4
   396ad:	be 07 00 00 00       	mov    esi,0x7
   396b2:	89 e3                	mov    ebx,esp
   396b4:	66 89 54 24 08       	mov    WORD PTR [esp+0x8],dx
   396b9:	66 89 44 24 0c       	mov    WORD PTR [esp+0xc],ax
   396be:	89 e2                	mov    edx,esp
   396c0:	b8 33 00 00 00       	mov    eax,0x33
   396c5:	66 89 34 24          	mov    WORD PTR [esp],si
   396c9:	e8 ce 79 03 00       	call   int386_
MOUSE_initialize_branch_4:
   396ce:	ba df 01 00 00       	mov    edx,0x1df
   396d3:	8a 3d 71 59 02 00    	mov    bh,BYTE PTR ds:@obj3:mouse_initialized                       ; fixup: num: 10435, src obj: 1, src ofs: 0x396d5, dst obj: 3, dst ofs: 0x25971
   396d9:	31 c0                	xor    eax,eax
   396db:	84 ff                	test   bh,bh
   396dd:	74 26                	je     MOUSE_initialize_branch_5
   396df:	bf 08 00 00 00       	mov    edi,0x8
   396e4:	8d 5c 24 54          	lea    ebx,[esp+0x54]
   396e8:	66 89 44 24 5c       	mov    WORD PTR [esp+0x5c],ax
   396ed:	66 89 54 24 60       	mov    WORD PTR [esp+0x60],dx
   396f2:	8d 54 24 54          	lea    edx,[esp+0x54]
   396f6:	b8 33 00 00 00       	mov    eax,0x33
   396fb:	66 89 7c 24 54       	mov    WORD PTR [esp+0x54],di
   39700:	e8 97 79 03 00       	call   int386_
MOUSE_initialize_branch_5:
   39705:	b8 1a 00 00 00       	mov    eax,0x1a
   3970a:	ba 20 00 00 00       	mov    edx,0x20
   3970f:	b9 40 00 00 00       	mov    ecx,0x40
   39714:	8d 5c 24 1c          	lea    ebx,[esp+0x1c]
   39718:	66 89 44 24 1c       	mov    WORD PTR [esp+0x1c],ax
   3971d:	66 89 54 24 24       	mov    WORD PTR [esp+0x24],dx
   39722:	66 89 54 24 20       	mov    WORD PTR [esp+0x20],dx
   39727:	8d 54 24 1c          	lea    edx,[esp+0x1c]
   3972b:	b8 33 00 00 00       	mov    eax,0x33
   39730:	66 89 4c 24 28       	mov    WORD PTR [esp+0x28],cx
   39735:	e8 62 79 03 00       	call   int386_
   3973a:	b0 01                	mov    al,0x1
   3973c:	83 c4 7c             	add    esp,0x7c
   3973f:	5f                   	pop    edi
   39740:	5e                   	pop    esi
   39741:	5a                   	pop    edx
   39742:	59                   	pop    ecx
   39743:	5b                   	pop    ebx
   39744:	c3                   	ret    
   39745:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   3974b:	8d 52 00             	lea    edx,[edx+0x0]
   3974e:	8b db                	mov    ebx,ebx

;-------------------------------------------------
;  Function 'MOUSE_deinitialize'                 -
;-------------------------------------------------
MOUSE_deinitialize:
   39750:	53                   	push   ebx
   39751:	52                   	push   edx
   39752:	83 ec 1c             	sub    esp,0x1c
   39755:	80 3d 71 59 02 00 00 	cmp    BYTE PTR ds:@obj3:mouse_initialized,0x0                      ; fixup: num: 10439, src obj: 1, src ofs: 0x39757, dst obj: 3, dst ofs: 0x25971
   3975c:	74 3a                	je     MOUSE_deinitialize_branch_2
   3975e:	30 d2                	xor    dl,dl
   39760:	89 e3                	mov    ebx,esp
   39762:	88 15 71 59 02 00    	mov    BYTE PTR ds:@obj3:mouse_initialized,dl                       ; fixup: num: 10438, src obj: 1, src ofs: 0x39764, dst obj: 3, dst ofs: 0x25971
   39768:	30 f6                	xor    dh,dh
   3976a:	b8 33 00 00 00       	mov    eax,0x33
   3976f:	66 89 14 24          	mov    WORD PTR [esp],dx
   39773:	89 e2                	mov    edx,esp
   39775:	e8 22 79 03 00       	call   int386_
   3977a:	31 d2                	xor    edx,edx
   3977c:	66 8b 14 24          	mov    dx,WORD PTR [esp]
   39780:	81 fa ff ff 00 00    	cmp    edx,0xffff
   39786:	75 0c                	jne    MOUSE_deinitialize_branch_1
   39788:	b6 01                	mov    dh,0x1
   3978a:	88 35 71 59 02 00    	mov    BYTE PTR ds:@obj3:mouse_initialized,dh                       ; fixup: num: 10437, src obj: 1, src ofs: 0x3978c, dst obj: 3, dst ofs: 0x25971
   39790:	88 f0                	mov    al,dh
   39792:	eb 06                	jmp    MOUSE_deinitialize_branch_3
MOUSE_deinitialize_branch_1:
   39794:	30 c0                	xor    al,al
   39796:	eb 02                	jmp    MOUSE_deinitialize_branch_3
MOUSE_deinitialize_branch_2:
   39798:	b0 01                	mov    al,0x1
MOUSE_deinitialize_branch_3:
   3979a:	83 c4 1c             	add    esp,0x1c
   3979d:	5a                   	pop    edx
   3979e:	5b                   	pop    ebx
   3979f:	c3                   	ret    

;-------------------------------------------------
;  Function 'MOUSE_set_vertical_range'           -
;-------------------------------------------------
MOUSE_set_vertical_range:
   397a0:	53                   	push   ebx
   397a1:	83 ec 1c             	sub    esp,0x1c
   397a4:	80 3d 71 59 02 00 00 	cmp    BYTE PTR ds:@obj3:mouse_initialized,0x0                      ; fixup: num: 10403, src obj: 1, src ofs: 0x397a6, dst obj: 3, dst ofs: 0x25971
   397ab:	74 21                	je     MOUSE_set_vertical_range_branch_1
   397ad:	bb 08 00 00 00       	mov    ebx,0x8
   397b2:	66 89 44 24 08       	mov    WORD PTR [esp+0x8],ax
   397b7:	66 89 54 24 0c       	mov    WORD PTR [esp+0xc],dx
   397bc:	89 e2                	mov    edx,esp
   397be:	b8 33 00 00 00       	mov    eax,0x33
   397c3:	66 89 1c 24          	mov    WORD PTR [esp],bx
   397c7:	89 e3                	mov    ebx,esp
   397c9:	e8 ce 78 03 00       	call   int386_
MOUSE_set_vertical_range_branch_1:
   397ce:	83 c4 1c             	add    esp,0x1c
   397d1:	5b                   	pop    ebx
   397d2:	c3                   	ret    
;-------------------------------------------------
;  Bad code 72 (zero after ret):                 -
;-------------------------------------------------
;  397d1:	5b                   	pop    ebx
;  397d2:	c3                   	ret    
;  397d3:	00 00                	add    BYTE PTR [eax],al
;  397d5:	00 00                	add    BYTE PTR [eax],al
;-------------------------------------------------
;  Padding data (13 bytes):                      -
;-------------------------------------------------
   397d3:	00 00 00 00 00 00 .. 	db     13 dup(0x00)
;-------------------------------------------------
;  End of bad code 72                            -
;-------------------------------------------------

;-------------------------------------------------
;  Function 'MOUSE_set_horizontal_range'         -
;-------------------------------------------------
MOUSE_set_horizontal_range:
   397e0:	53                   	push   ebx
   397e1:	83 ec 1c             	sub    esp,0x1c
   397e4:	80 3d 71 59 02 00 00 	cmp    BYTE PTR ds:@obj3:mouse_initialized,0x0                      ; fixup: num: 10402, src obj: 1, src ofs: 0x397e6, dst obj: 3, dst ofs: 0x25971
   397eb:	74 21                	je     MOUSE_set_horizontal_range_branch_1
   397ed:	bb 07 00 00 00       	mov    ebx,0x7
   397f2:	66 89 44 24 08       	mov    WORD PTR [esp+0x8],ax
   397f7:	66 89 54 24 0c       	mov    WORD PTR [esp+0xc],dx
   397fc:	89 e2                	mov    edx,esp
   397fe:	b8 33 00 00 00       	mov    eax,0x33
   39803:	66 89 1c 24          	mov    WORD PTR [esp],bx
   39807:	89 e3                	mov    ebx,esp
   39809:	e8 8e 78 03 00       	call   int386_
MOUSE_set_horizontal_range_branch_1:
   3980e:	83 c4 1c             	add    esp,0x1c
   39811:	5b                   	pop    ebx
   39812:	c3                   	ret    
   39813:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   39819:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
   3981f:	90                   	nop

;-------------------------------------------------
;  Function 'W?$dt:_mouse$n()_'                  -
;-------------------------------------------------
W?$dt:_mouse$n()_:
   39820:	53                   	push   ebx
   39821:	51                   	push   ecx
   39822:	83 ec 1c             	sub    esp,0x1c
   39825:	89 c1                	mov    ecx,eax
   39827:	80 3d 71 59 02 00 00 	cmp    BYTE PTR ds:@obj3:mouse_initialized,0x0                      ; fixup: num: 10401, src obj: 1, src ofs: 0x39829, dst obj: 3, dst ofs: 0x25971
   3982e:	74 31                	je     W?$dt:_mouse$n()__branch_1
   39830:	30 d2                	xor    dl,dl
   39832:	89 e3                	mov    ebx,esp
   39834:	88 15 71 59 02 00    	mov    BYTE PTR ds:@obj3:mouse_initialized,dl                       ; fixup: num: 10400, src obj: 1, src ofs: 0x39836, dst obj: 3, dst ofs: 0x25971
   3983a:	30 f6                	xor    dh,dh
   3983c:	b8 33 00 00 00       	mov    eax,0x33
   39841:	66 89 14 24          	mov    WORD PTR [esp],dx
   39845:	89 e2                	mov    edx,esp
   39847:	e8 50 78 03 00       	call   int386_
   3984c:	31 d2                	xor    edx,edx
   3984e:	66 8b 14 24          	mov    dx,WORD PTR [esp]
   39852:	81 fa ff ff 00 00    	cmp    edx,0xffff
   39858:	75 07                	jne    W?$dt:_mouse$n()__branch_1
   3985a:	c6 05 71 59 02 00 01 	mov    BYTE PTR ds:@obj3:mouse_initialized,0x1                      ; fixup: num: 10399, src obj: 1, src ofs: 0x3985c, dst obj: 3, dst ofs: 0x25971
W?$dt:_mouse$n()__branch_1:
   39861:	89 c8                	mov    eax,ecx
   39863:	83 c4 1c             	add    esp,0x1c
   39866:	59                   	pop    ecx
   39867:	5b                   	pop    ebx
   39868:	c3                   	ret    
   39869:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   3986f:	90                   	nop

;-------------------------------------------------
;  Function 'W?$ct:_mouse$n()_'                  -
;-------------------------------------------------
W?$ct:_mouse$n()_:
   39870:	53                   	push   ebx
   39871:	51                   	push   ecx
   39872:	52                   	push   edx
   39873:	56                   	push   esi
   39874:	57                   	push   edi
   39875:	83 ec 7c             	sub    esp,0x7c
   39878:	89 c6                	mov    esi,eax
   3987a:	8d 5c 24 38          	lea    ebx,[esp+0x38]
   3987e:	30 e4                	xor    ah,ah
   39880:	31 d2                	xor    edx,edx
   39882:	88 25 71 59 02 00    	mov    BYTE PTR ds:@obj3:mouse_initialized,ah                       ; fixup: num: 10390, src obj: 1, src ofs: 0x39884, dst obj: 3, dst ofs: 0x25971
   39888:	66 89 54 24 38       	mov    WORD PTR [esp+0x38],dx
   3988d:	8d 54 24 38          	lea    edx,[esp+0x38]
   39891:	b8 33 00 00 00       	mov    eax,0x33
   39896:	e8 01 78 03 00       	call   int386_
   3989b:	31 c0                	xor    eax,eax
   3989d:	66 8b 44 24 38       	mov    ax,WORD PTR [esp+0x38]
   398a2:	3d ff ff 00 00       	cmp    eax,0xffff
   398a7:	75 0c                	jne    W?$ct:_mouse$n()__branch_1
   398a9:	b2 01                	mov    dl,0x1
   398ab:	88 15 71 59 02 00    	mov    BYTE PTR ds:@obj3:mouse_initialized,dl                       ; fixup: num: 10389, src obj: 1, src ofs: 0x398ad, dst obj: 3, dst ofs: 0x25971
   398b1:	88 d0                	mov    al,dl
   398b3:	eb 02                	jmp    W?$ct:_mouse$n()__branch_2
W?$ct:_mouse$n()__branch_1:
   398b5:	30 c0                	xor    al,al
W?$ct:_mouse$n()__branch_2:
   398b7:	84 c0                	test   al,al
   398b9:	75 11                	jne    W?$ct:_mouse$n()__branch_3
   398bb:	bb 54 98 00 00       	mov    ebx,@obj3:mouse_cpp_variable_1                               ; fixup: num: 10388, src obj: 1, src ofs: 0x398bc, dst obj: 3, dst ofs: 0x9854
   398c0:	ba 7a 00 00 00       	mov    edx,0x7a
   398c5:	31 c0                	xor    eax,eax
   398c7:	e8 64 e7 ff ff       	call   _error_report
W?$ct:_mouse$n()__branch_3:
   398cc:	68 00 10 00 00       	push   0x1000
   398d1:	b8 70 94 03 00       	mov    eax,@obj1:mouse_handler                                      ; fixup: num: 10387, src obj: 1, src ofs: 0x398d2, dst obj: 1, dst ofs: 0x39470
   398d6:	8c ca                	mov    edx,cs
   398d8:	31 c0                	xor    eax,eax
   398da:	66 89 d0             	mov    ax,dx
   398dd:	50                   	push   eax
   398de:	bf 70 94 03 00       	mov    edi,@obj1:mouse_handler                                      ; fixup: num: 10386, src obj: 1, src ofs: 0x398df, dst obj: 1, dst ofs: 0x39470
   398e3:	e8 c1 cd 03 00       	call   _D32GetSegBase
   398e8:	83 c4 04             	add    esp,0x4
   398eb:	01 f8                	add    eax,edi
   398ed:	50                   	push   eax
   398ee:	e8 04 72 03 00       	call   _D32Lock
   398f3:	83 c4 08             	add    esp,0x8
   398f6:	6a 04                	push   0x4
   398f8:	68 74 59 02 00       	push   @obj3:left_button                                            ; fixup: num: 10385, src obj: 1, src ofs: 0x398f9, dst obj: 3, dst ofs: 0x25974
   398fd:	e8 f5 71 03 00       	call   _D32Lock
   39902:	83 c4 08             	add    esp,0x8
   39905:	6a 04                	push   0x4
   39907:	68 72 59 02 00       	push   @obj3:right_button                                           ; fixup: num: 10384, src obj: 1, src ofs: 0x39908, dst obj: 3, dst ofs: 0x25972
   3990c:	e8 e6 71 03 00       	call   _D32Lock
   39911:	83 c4 08             	add    esp,0x8
   39914:	6a 04                	push   0x4
   39916:	68 73 59 02 00       	push   @obj3:center_button                                          ; fixup: num: 10397, src obj: 1, src ofs: 0x39917, dst obj: 3, dst ofs: 0x25973
   3991b:	e8 d7 71 03 00       	call   _D32Lock
   39920:	83 c4 08             	add    esp,0x8
   39923:	6a 04                	push   0x4
   39925:	68 78 59 02 00       	push   @obj3:mouse_x                                                ; fixup: num: 10396, src obj: 1, src ofs: 0x39926, dst obj: 3, dst ofs: 0x25978
   3992a:	e8 c8 71 03 00       	call   _D32Lock
   3992f:	83 c4 08             	add    esp,0x8
   39932:	6a 04                	push   0x4
   39934:	68 7c 59 02 00       	push   @obj3:mouse_y                                                ; fixup: num: 10395, src obj: 1, src ofs: 0x39935, dst obj: 3, dst ofs: 0x2597c
   39939:	e8 b9 71 03 00       	call   _D32Lock
   3993e:	83 c4 08             	add    esp,0x8
   39941:	6a 04                	push   0x4
   39943:	68 80 59 02 00       	push   @obj3:last_mouse_click_time                                  ; fixup: num: 10394, src obj: 1, src ofs: 0x39944, dst obj: 3, dst ofs: 0x25980
   39948:	e8 aa 71 03 00       	call   _D32Lock
   3994d:	83 c4 08             	add    esp,0x8
   39950:	6a 04                	push   0x4
   39952:	68 75 59 02 00       	push   @obj3:mouse_double_click                                     ; fixup: num: 10393, src obj: 1, src ofs: 0x39953, dst obj: 3, dst ofs: 0x25975
   39957:	e8 9b 71 03 00       	call   _D32Lock
   3995c:	83 c4 08             	add    esp,0x8
   3995f:	6a 04                	push   0x4
   39961:	68 84 59 02 00       	push   @obj3:left_release_time                                      ; fixup: num: 10392, src obj: 1, src ofs: 0x39962, dst obj: 3, dst ofs: 0x25984
   39966:	e8 8c 71 03 00       	call   _D32Lock
   3996b:	8d 44 24 78          	lea    eax,[esp+0x78]
   3996f:	83 c4 08             	add    esp,0x8
   39972:	bb 0c 00 00 00       	mov    ebx,0xc
   39977:	b9 7f 00 00 00       	mov    ecx,0x7f
   3997c:	e8 37 cf 03 00       	call   segread_
   39981:	8c ca                	mov    edx,cs
   39983:	66 89 1c 24          	mov    WORD PTR [esp],bx
   39987:	66 89 4c 24 08       	mov    WORD PTR [esp+0x8],cx
   3998c:	89 f8                	mov    eax,edi
   3998e:	89 7c 24 0c          	mov    DWORD PTR [esp+0xc],edi
   39992:	8d 4c 24 70          	lea    ecx,[esp+0x70]
   39996:	89 e3                	mov    ebx,esp
   39998:	b8 33 00 00 00       	mov    eax,0x33
   3999d:	66 89 54 24 70       	mov    WORD PTR [esp+0x70],dx
   399a2:	89 e2                	mov    edx,esp
   399a4:	e8 40 87 03 00       	call   int386x_
   399a9:	ba 7f 02 00 00       	mov    edx,0x27f
   399ae:	8a 1d 71 59 02 00    	mov    bl,BYTE PTR ds:@obj3:mouse_initialized                       ; fixup: num: 10391, src obj: 1, src ofs: 0x399b0, dst obj: 3, dst ofs: 0x25971
   399b4:	31 c0                	xor    eax,eax
   399b6:	84 db                	test   bl,bl
   399b8:	74 26                	je     W?$ct:_mouse$n()__branch_4
   399ba:	bf 07 00 00 00       	mov    edi,0x7
   399bf:	8d 5c 24 1c          	lea    ebx,[esp+0x1c]
   399c3:	66 89 44 24 24       	mov    WORD PTR [esp+0x24],ax
   399c8:	66 89 54 24 28       	mov    WORD PTR [esp+0x28],dx
   399cd:	8d 54 24 1c          	lea    edx,[esp+0x1c]
   399d1:	b8 33 00 00 00       	mov    eax,0x33
   399d6:	66 89 7c 24 1c       	mov    WORD PTR [esp+0x1c],di
   399db:	e8 bc 76 03 00       	call   int386_
W?$ct:_mouse$n()__branch_4:
   399e0:	ba df 01 00 00       	mov    edx,0x1df
   399e5:	8a 3d 71 59 02 00    	mov    bh,BYTE PTR ds:@obj3:mouse_initialized                       ; fixup: num: 10398, src obj: 1, src ofs: 0x399e7, dst obj: 3, dst ofs: 0x25971
   399eb:	31 c0                	xor    eax,eax
   399ed:	84 ff                	test   bh,bh
   399ef:	74 26                	je     W?$ct:_mouse$n()__branch_5
   399f1:	bb 08 00 00 00       	mov    ebx,0x8
   399f6:	66 89 44 24 5c       	mov    WORD PTR [esp+0x5c],ax
   399fb:	66 89 54 24 60       	mov    WORD PTR [esp+0x60],dx
   39a00:	8d 54 24 54          	lea    edx,[esp+0x54]
   39a04:	b8 33 00 00 00       	mov    eax,0x33
   39a09:	66 89 5c 24 54       	mov    WORD PTR [esp+0x54],bx
   39a0e:	8d 5c 24 54          	lea    ebx,[esp+0x54]
   39a12:	e8 85 76 03 00       	call   int386_
W?$ct:_mouse$n()__branch_5:
   39a17:	b9 1a 00 00 00       	mov    ecx,0x1a
   39a1c:	bf 20 00 00 00       	mov    edi,0x20
   39a21:	ba 40 00 00 00       	mov    edx,0x40
   39a26:	89 e3                	mov    ebx,esp
   39a28:	b8 33 00 00 00       	mov    eax,0x33
   39a2d:	66 89 0c 24          	mov    WORD PTR [esp],cx
   39a31:	66 89 7c 24 08       	mov    WORD PTR [esp+0x8],di
   39a36:	66 89 54 24 0c       	mov    WORD PTR [esp+0xc],dx
   39a3b:	89 e2                	mov    edx,esp
   39a3d:	66 89 7c 24 04       	mov    WORD PTR [esp+0x4],di
   39a42:	e8 55 76 03 00       	call   int386_
   39a47:	89 f0                	mov    eax,esi
   39a49:	83 c4 7c             	add    esp,0x7c
   39a4c:	5f                   	pop    edi
   39a4d:	5e                   	pop    esi
   39a4e:	5a                   	pop    edx
   39a4f:	59                   	pop    ecx
   39a50:	5b                   	pop    ebx
   39a51:	c3                   	ret    
   39a52:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   39a58:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
   39a5e:	8b c0                	mov    eax,eax

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 73 (D:\SOURCE\mouse.cpp)                                      -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 73: D:\SOURCE\mouse.cpp                                              -
;                                                                              -
;-------------------------------------------------------------------------------
mouse_cpp_variable_1:
    9854:	4d 6f 75 73 65 20 64 72 69 76 65 72 20 6e 6f 74 20 64 65 74 65 63 74 65 64 2e 00 	db     "Mouse driver not detected.",0x00
    986f:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 73 (D:\SOURCE\mouse.cpp)                                      -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 73: D:\SOURCE\mouse.cpp                                              -
;                                                                              -
;-------------------------------------------------------------------------------
mouse_cpp_variable_2:
   10d2c:	03                   	db     0x03                                                         ; dec:   3, chr: ''
   10d2d:	00 00 00             	db     3 dup(0x00)                                                  ; dec:   0, chr: '\0'
   10d30:	20 98 03 00          	dd     @obj1:W?$dt:_mouse$n()_                                      ; fixup: num: 21342, src obj: 3, src ofs: 0x10d30, dst obj: 1, dst ofs: 0x39820
   10d34:	70 59 02 00          	dd     @obj3:mouse                                                  ; fixup: num: 21341, src obj: 3, src ofs: 0x10d34, dst obj: 3, dst ofs: 0x25970
W?$Wts0an$_mouse$$$nx[]uc:
   10d38:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
   10d39:	70 98 03 00          	dd     @obj1:W?$ct:_mouse$n()_                                      ; fixup: num: 21345, src obj: 3, src ofs: 0x10d39, dst obj: 1, dst ofs: 0x39870
   10d3d:	48 14 07 00          	dd     @obj1:__wcpp_2_undefed_cdtor__                               ; fixup: num: 21344, src obj: 3, src ofs: 0x10d3d, dst obj: 1, dst ofs: 0x71448
   10d41:	20 98 03 00          	dd     @obj1:W?$dt:_mouse$n()_                                      ; fixup: num: 21343, src obj: 3, src ofs: 0x10d41, dst obj: 1, dst ofs: 0x39820
   10d45:	01                   	db     0x01                                                         ; dec:   1, chr: ''
   10d46:	00 00 00 00 00 00    	db     6 dup(0x00)                                                  ; dec:   0, chr: '\0'

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 73 (D:\SOURCE\mouse.cpp)                                      -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 73: D:\SOURCE\mouse.cpp                                              -
;                                                                              -
;-------------------------------------------------------------------------------
mouse_cpp_variable_3:
   13bfc:	00 00 00 00          	db     4 dup(0x00)                                                  ; dec:   0, chr: '\0'
   13c00:	2c 0d 01 00          	dd     @obj3:mouse_cpp_variable_2                                   ; fixup: num: 21492, src obj: 3, src ofs: 0x13c00, dst obj: 3, dst ofs: 0x10d2c
mouse_cpp_variable_4:                                                                               ; access size: DWORD
   13c04:	00 00 00 00          	dd     0x00000000

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 73 (D:\SOURCE\mouse.cpp)                                      -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 73: D:\SOURCE\mouse.cpp                                              -
;                                                                              -
;-------------------------------------------------------------------------------
.mod_init_mod_73:
   16db0:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
   16db1:	40                   	db     0x40                                                         ; dec:  64, chr: '@'
   16db2:	70 92 03 00          	dd     @obj1:.fn_init_mod_73                                        ; fixup: num: 21653, src obj: 3, src ofs: 0x16db2, dst obj: 1, dst ofs: 0x39270

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 73 (D:\SOURCE\mouse.cpp)                                      -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 73: D:\SOURCE\mouse.cpp                                              -
;                                                                              -
;-------------------------------------------------------------------------------
mouse:
   25970:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mouse_initialized:                                                                                  ; access size: BYTE
   25971:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
right_button:                                                                                       ; access size: BYTE
   25972:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
center_button:                                                                                      ; access size: BYTE
   25973:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
left_button:                                                                                        ; access size: BYTE
   25974:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mouse_double_click:                                                                                 ; access size: BYTE
   25975:	00 00 00             	db     3 dup(0x00)                                                  ; dec:   0, chr: '\0'
mouse_x:                                                                                            ; access size: DWORD
   25978:	00 00 00 00          	dd     0x00000000
mouse_y:                                                                                            ; access sizes: DWORD, WORD
   2597c:	00 00 00 00          	dw     2 dup(0x0000)
last_mouse_click_time:                                                                              ; access size: DWORD
   25980:	00 00 00 00          	dd     0x00000000
left_release_time:                                                                                  ; access size: DWORD
   25984:	00 00 00 00          	dd     0x00000000

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 73 (D:\SOURCE\mouse.cpp)                                      -
;                                                                              -
;-------------------------------------------------------------------------------