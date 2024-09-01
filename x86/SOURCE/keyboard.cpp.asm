;-------------------------------------------------------------------------------
;                                                                              -
;  Module 71: D:\SOURCE\keyboard.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function '.fn_init_mod_71'                    -
;-------------------------------------------------
.fn_init_mod_71:
   38380:	53                   	push   ebx
   38381:	51                   	push   ecx
   38382:	52                   	push   edx
   38383:	b8 f0 3b 01 00       	mov    eax,@obj3:keyboard_cpp_variable_2                            ; fixup: num: 10343, src obj: 1, src ofs: 0x38384, dst obj: 3, dst ofs: 0x13bf0
   38388:	e8 45 9d 03 00       	call   __wcpp_2_mod_register__
   3838d:	68 00 10 00 00       	push   0x1000
   38392:	30 e4                	xor    ah,ah
   38394:	8c ca                	mov    edx,cs
   38396:	88 25 06 59 02 00    	mov    BYTE PTR ds:@obj3:keyboard_variable_2,ah                     ; fixup: num: 10342, src obj: 1, src ofs: 0x38398, dst obj: 3, dst ofs: 0x25906
   3839c:	b8 60 84 03 00       	mov    eax,@obj1:New_Key_Int                                        ; fixup: num: 10341, src obj: 1, src ofs: 0x3839d, dst obj: 1, dst ofs: 0x38460
   383a1:	31 c0                	xor    eax,eax
   383a3:	66 89 d0             	mov    ax,dx
   383a6:	50                   	push   eax
   383a7:	e8 fd e2 03 00       	call   _D32GetSegBase
   383ac:	83 c4 04             	add    esp,0x4
   383af:	05 60 84 03 00       	add    eax,@obj1:New_Key_Int                                        ; fixup: num: 10340, src obj: 1, src ofs: 0x383b0, dst obj: 1, dst ofs: 0x38460
   383b4:	50                   	push   eax
   383b5:	e8 3d 87 03 00       	call   _D32Lock
   383ba:	83 c4 08             	add    esp,0x8
   383bd:	6a 04                	push   0x4
   383bf:	68 08 59 02 00       	push   @obj3:raw_key                                                ; fixup: num: 10339, src obj: 1, src ofs: 0x383c0, dst obj: 3, dst ofs: 0x25908
   383c4:	e8 2e 87 03 00       	call   _D32Lock
   383c9:	83 c4 08             	add    esp,0x8
   383cc:	6a 04                	push   0x4
   383ce:	68 68 59 02 00       	push   @obj3:last_key_hit_time                                      ; fixup: num: 10338, src obj: 1, src ofs: 0x383cf, dst obj: 3, dst ofs: 0x25968
   383d3:	e8 1f 87 03 00       	call   _D32Lock
   383d8:	83 c4 08             	add    esp,0x8
   383db:	6a 04                	push   0x4
   383dd:	68 44 7e 01 00       	push   @obj3:current_time                                           ; fixup: num: 10337, src obj: 1, src ofs: 0x383de, dst obj: 3, dst ofs: 0x17e44
   383e2:	e8 10 87 03 00       	call   _D32Lock
   383e7:	83 c4 08             	add    esp,0x8
   383ea:	6a 01                	push   0x1
   383ec:	68 65 59 02 00       	push   @obj3:x                                                      ; fixup: num: 10336, src obj: 1, src ofs: 0x383ed, dst obj: 3, dst ofs: 0x25965
   383f1:	e8 01 87 03 00       	call   _D32Lock
   383f6:	83 c4 08             	add    esp,0x8
   383f9:	6a 59                	push   0x59
   383fb:	68 0c 59 02 00       	push   @obj3:ScanCode                                               ; fixup: num: 10335, src obj: 1, src ofs: 0x383fc, dst obj: 3, dst ofs: 0x2590c
   38400:	e8 f2 86 03 00       	call   _D32Lock
   38405:	bb 59 00 00 00       	mov    ebx,0x59
   3840a:	83 c4 08             	add    esp,0x8
   3840d:	b8 0c 59 02 00       	mov    eax,@obj3:ScanCode                                           ; fixup: num: 10334, src obj: 1, src ofs: 0x3840e, dst obj: 3, dst ofs: 0x2590c
   38412:	31 d2                	xor    edx,edx
   38414:	e8 b7 8f 03 00       	call   memset_
   38419:	8c c9                	mov    ecx,cs
   3841b:	b8 09 00 00 00       	mov    eax,0x9
   38420:	bb 60 84 03 00       	mov    ebx,@obj1:New_Key_Int                                        ; fixup: num: 10348, src obj: 1, src ofs: 0x38421, dst obj: 1, dst ofs: 0x38460
   38425:	e8 ce e2 03 00       	call   _dos_getvect_
   3842a:	66 89 15 04 59 02 00 	mov    WORD PTR ds:@obj3:keyboard_variable_1,dx                     ; fixup: num: 10347, src obj: 1, src ofs: 0x3842d, dst obj: 3, dst ofs: 0x25904
   38431:	a3 00 59 02 00       	mov    ds:@obj3:keyboard,eax                                        ; fixup: num: 10346, src obj: 1, src ofs: 0x38432, dst obj: 3, dst ofs: 0x25900
   38436:	b8 09 00 00 00       	mov    eax,0x9
   3843b:	b2 01                	mov    dl,0x1
   3843d:	e8 ea e2 03 00       	call   _dos_setvect_
   38442:	88 15 06 59 02 00    	mov    BYTE PTR ds:@obj3:keyboard_variable_2,dl                     ; fixup: num: 10345, src obj: 1, src ofs: 0x38444, dst obj: 3, dst ofs: 0x25906
   38448:	c7 05 f8 3b 01 00 01 00 00 00 	mov    DWORD PTR ds:@obj3:keyboard_cpp_variable_3,0x1      ; fixup: num: 10344, src obj: 1, src ofs: 0x3844a, dst obj: 3, dst ofs: 0x13bf8
   38452:	5a                   	pop    edx
   38453:	59                   	pop    ecx
   38454:	5b                   	pop    ebx
   38455:	c3                   	ret    
   38456:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   3845c:	8d 54 22 00          	lea    edx,[edx+eiz*1+0x0]

;-------------------------------------------------
;  Function 'New_Key_Int'                        -
;-------------------------------------------------
New_Key_Int:
   38460:	60                   	pusha  
   38461:	1e                   	push   ds
   38462:	06                   	push   es
   38463:	0f a0                	push   fs
   38465:	0f a8                	push   gs
   38467:	89 e5                	mov    ebp,esp
   38469:	fc                   	cld    
   3846a:	e8 45 8f 03 00       	call   __GETDS
   3846f:	ba 60 00 00 00       	mov    edx,0x60
   38474:	29 c0                	sub    eax,eax
   38476:	ec                   	in     al,dx
   38477:	66 a3 08 59 02 00    	mov    ds:@obj3:raw_key,ax                                          ; fixup: num: 10376, src obj: 1, src ofs: 0x38479, dst obj: 3, dst ofs: 0x25908
   3847d:	0f bf 05 08 59 02 00 	movsx  eax,WORD PTR ds:@obj3:raw_key                                ; fixup: num: 10375, src obj: 1, src ofs: 0x38480, dst obj: 3, dst ofs: 0x25908
   38484:	83 f8 59             	cmp    eax,0x59
   38487:	7d 10                	jge    New_Key_Int_branch_1
   38489:	0f bf 05 08 59 02 00 	movsx  eax,WORD PTR ds:@obj3:raw_key                                ; fixup: num: 10374, src obj: 1, src ofs: 0x3848c, dst obj: 3, dst ofs: 0x25908
   38490:	c6 80 0c 59 02 00 01 	mov    BYTE PTR [eax+@obj3:ScanCode],0x1                            ; fixup: num: 10373, src obj: 1, src ofs: 0x38492, dst obj: 3, dst ofs: 0x2590c
   38497:	eb 3a                	jmp    New_Key_Int_branch_3
New_Key_Int_branch_1:
   38499:	0f bf 05 08 59 02 00 	movsx  eax,WORD PTR ds:@obj3:raw_key                                ; fixup: num: 10372, src obj: 1, src ofs: 0x3849c, dst obj: 3, dst ofs: 0x25908
   384a0:	3d d9 00 00 00       	cmp    eax,0xd9
   384a5:	7d 2c                	jge    New_Key_Int_branch_3
   384a7:	66 a1 08 59 02 00    	mov    ax,ds:@obj3:raw_key                                          ; fixup: num: 10371, src obj: 1, src ofs: 0x384a9, dst obj: 3, dst ofs: 0x25908
   384ad:	30 e4                	xor    ah,ah
   384af:	24 7f                	and    al,0x7f
   384b1:	98                   	cwde   
   384b2:	83 f8 59             	cmp    eax,0x59
   384b5:	7d 13                	jge    New_Key_Int_branch_2
   384b7:	66 a1 08 59 02 00    	mov    ax,ds:@obj3:raw_key                                          ; fixup: num: 10370, src obj: 1, src ofs: 0x384b9, dst obj: 3, dst ofs: 0x25908
   384bd:	30 e4                	xor    ah,ah
   384bf:	24 7f                	and    al,0x7f
   384c1:	98                   	cwde   
   384c2:	30 d2                	xor    dl,dl
   384c4:	88 90 0c 59 02 00    	mov    BYTE PTR [eax+@obj3:ScanCode],dl                             ; fixup: num: 10369, src obj: 1, src ofs: 0x384c6, dst obj: 3, dst ofs: 0x2590c
New_Key_Int_branch_2:
   384ca:	31 d2                	xor    edx,edx
   384cc:	66 89 15 08 59 02 00 	mov    WORD PTR ds:@obj3:raw_key,dx                                 ; fixup: num: 10368, src obj: 1, src ofs: 0x384cf, dst obj: 3, dst ofs: 0x25908
New_Key_Int_branch_3:
   384d3:	b0 20                	mov    al,0x20
   384d5:	ba 20 00 00 00       	mov    edx,0x20
   384da:	ee                   	out    dx,al
   384db:	a1 44 7e 01 00       	mov    eax,ds:@obj3:current_time                                    ; fixup: num: 10367, src obj: 1, src ofs: 0x384dc, dst obj: 3, dst ofs: 0x17e44
   384e0:	a3 68 59 02 00       	mov    ds:@obj3:last_key_hit_time,eax                               ; fixup: num: 10366, src obj: 1, src ofs: 0x384e1, dst obj: 3, dst ofs: 0x25968
   384e5:	0f a9                	pop    gs
   384e7:	0f a1                	pop    fs
   384e9:	07                   	pop    es
   384ea:	1f                   	pop    ds
   384eb:	61                   	popa   
   384ec:	cf                   	iret   
   384ed:	8d 40 00             	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'install_ISR'                        -
;-------------------------------------------------
install_ISR:
   384f0:	53                   	push   ebx
   384f1:	51                   	push   ecx
   384f2:	52                   	push   edx
   384f3:	56                   	push   esi
   384f4:	89 c6                	mov    esi,eax
   384f6:	80 78 06 00          	cmp    BYTE PTR [eax+0x6],0x0
   384fa:	0f 85 a9 00 00 00    	jne    install_ISR_branch_1
   38500:	68 00 10 00 00       	push   0x1000
   38505:	b8 60 84 03 00       	mov    eax,@obj1:New_Key_Int                                        ; fixup: num: 10365, src obj: 1, src ofs: 0x38506, dst obj: 1, dst ofs: 0x38460
   3850a:	8c ca                	mov    edx,cs
   3850c:	31 c0                	xor    eax,eax
   3850e:	66 89 d0             	mov    ax,dx
   38511:	50                   	push   eax
   38512:	e8 92 e1 03 00       	call   _D32GetSegBase
   38517:	83 c4 04             	add    esp,0x4
   3851a:	05 60 84 03 00       	add    eax,@obj1:New_Key_Int                                        ; fixup: num: 10263, src obj: 1, src ofs: 0x3851b, dst obj: 1, dst ofs: 0x38460
   3851f:	50                   	push   eax
   38520:	e8 d2 85 03 00       	call   _D32Lock
   38525:	83 c4 08             	add    esp,0x8
   38528:	6a 04                	push   0x4
   3852a:	68 08 59 02 00       	push   @obj3:raw_key                                                ; fixup: num: 10262, src obj: 1, src ofs: 0x3852b, dst obj: 3, dst ofs: 0x25908
   3852f:	e8 c3 85 03 00       	call   _D32Lock
   38534:	83 c4 08             	add    esp,0x8
   38537:	6a 04                	push   0x4
   38539:	68 68 59 02 00       	push   @obj3:last_key_hit_time                                      ; fixup: num: 10261, src obj: 1, src ofs: 0x3853a, dst obj: 3, dst ofs: 0x25968
   3853e:	e8 b4 85 03 00       	call   _D32Lock
   38543:	83 c4 08             	add    esp,0x8
   38546:	6a 04                	push   0x4
   38548:	68 44 7e 01 00       	push   @obj3:current_time                                           ; fixup: num: 10381, src obj: 1, src ofs: 0x38549, dst obj: 3, dst ofs: 0x17e44
   3854d:	e8 a5 85 03 00       	call   _D32Lock
   38552:	83 c4 08             	add    esp,0x8
   38555:	6a 01                	push   0x1
   38557:	68 65 59 02 00       	push   @obj3:x                                                      ; fixup: num: 10380, src obj: 1, src ofs: 0x38558, dst obj: 3, dst ofs: 0x25965
   3855c:	e8 96 85 03 00       	call   _D32Lock
   38561:	83 c4 08             	add    esp,0x8
   38564:	6a 59                	push   0x59
   38566:	68 0c 59 02 00       	push   @obj3:ScanCode                                               ; fixup: num: 10379, src obj: 1, src ofs: 0x38567, dst obj: 3, dst ofs: 0x2590c
   3856b:	e8 87 85 03 00       	call   _D32Lock
   38570:	bb 59 00 00 00       	mov    ebx,0x59
   38575:	83 c4 08             	add    esp,0x8
   38578:	b8 0c 59 02 00       	mov    eax,@obj3:ScanCode                                           ; fixup: num: 10378, src obj: 1, src ofs: 0x38579, dst obj: 3, dst ofs: 0x2590c
   3857d:	31 d2                	xor    edx,edx
   3857f:	e8 4c 8e 03 00       	call   memset_
   38584:	8c c9                	mov    ecx,cs
   38586:	b8 09 00 00 00       	mov    eax,0x9
   3858b:	bb 60 84 03 00       	mov    ebx,@obj1:New_Key_Int                                        ; fixup: num: 10377, src obj: 1, src ofs: 0x3858c, dst obj: 1, dst ofs: 0x38460
   38590:	e8 63 e1 03 00       	call   _dos_getvect_
   38595:	89 06                	mov    DWORD PTR [esi],eax
   38597:	b8 09 00 00 00       	mov    eax,0x9
   3859c:	66 89 56 04          	mov    WORD PTR [esi+0x4],dx
   385a0:	e8 87 e1 03 00       	call   _dos_setvect_
   385a5:	c6 46 06 01          	mov    BYTE PTR [esi+0x6],0x1
install_ISR_branch_1:
   385a9:	5e                   	pop    esi
   385aa:	5a                   	pop    edx
   385ab:	59                   	pop    ecx
   385ac:	5b                   	pop    ebx
   385ad:	c3                   	ret    
   385ae:	8b c0                	mov    eax,eax

;-------------------------------------------------
;  Function 'remove_ISR'                         -
;-------------------------------------------------
remove_ISR:
   385b0:	53                   	push   ebx
   385b1:	51                   	push   ecx
   385b2:	52                   	push   edx
   385b3:	89 c2                	mov    edx,eax
   385b5:	80 78 06 00          	cmp    BYTE PTR [eax+0x6],0x0
   385b9:	0f 84 87 00 00 00    	je     remove_ISR_branch_1
   385bf:	b8 09 00 00 00       	mov    eax,0x9
   385c4:	66 8b 4a 04          	mov    cx,WORD PTR [edx+0x4]
   385c8:	8b 1a                	mov    ebx,DWORD PTR [edx]
   385ca:	e8 5d e1 03 00       	call   _dos_setvect_
   385cf:	68 00 10 00 00       	push   0x1000
   385d4:	b8 60 84 03 00       	mov    eax,@obj1:New_Key_Int                                        ; fixup: num: 10270, src obj: 1, src ofs: 0x385d5, dst obj: 1, dst ofs: 0x38460
   385d9:	c6 42 06 00          	mov    BYTE PTR [edx+0x6],0x0
   385dd:	8c ca                	mov    edx,cs
   385df:	31 c0                	xor    eax,eax
   385e1:	66 89 d0             	mov    ax,dx
   385e4:	50                   	push   eax
   385e5:	e8 bf e0 03 00       	call   _D32GetSegBase
   385ea:	83 c4 04             	add    esp,0x4
   385ed:	05 60 84 03 00       	add    eax,@obj1:New_Key_Int                                        ; fixup: num: 10269, src obj: 1, src ofs: 0x385ee, dst obj: 1, dst ofs: 0x38460
   385f2:	50                   	push   eax
   385f3:	e8 c9 84 03 00       	call   _D32Unlock
   385f8:	83 c4 08             	add    esp,0x8
   385fb:	6a 04                	push   0x4
   385fd:	68 08 59 02 00       	push   @obj3:raw_key                                                ; fixup: num: 10268, src obj: 1, src ofs: 0x385fe, dst obj: 3, dst ofs: 0x25908
   38602:	e8 ba 84 03 00       	call   _D32Unlock
   38607:	83 c4 08             	add    esp,0x8
   3860a:	6a 04                	push   0x4
   3860c:	68 68 59 02 00       	push   @obj3:last_key_hit_time                                      ; fixup: num: 10267, src obj: 1, src ofs: 0x3860d, dst obj: 3, dst ofs: 0x25968
   38611:	e8 ab 84 03 00       	call   _D32Unlock
   38616:	83 c4 08             	add    esp,0x8
   38619:	6a 04                	push   0x4
   3861b:	68 44 7e 01 00       	push   @obj3:current_time                                           ; fixup: num: 10266, src obj: 1, src ofs: 0x3861c, dst obj: 3, dst ofs: 0x17e44
   38620:	e8 9c 84 03 00       	call   _D32Unlock
   38625:	83 c4 08             	add    esp,0x8
   38628:	6a 01                	push   0x1
   3862a:	68 65 59 02 00       	push   @obj3:x                                                      ; fixup: num: 10265, src obj: 1, src ofs: 0x3862b, dst obj: 3, dst ofs: 0x25965
   3862f:	e8 8d 84 03 00       	call   _D32Unlock
   38634:	83 c4 08             	add    esp,0x8
   38637:	6a 59                	push   0x59
   38639:	68 0c 59 02 00       	push   @obj3:ScanCode                                               ; fixup: num: 10264, src obj: 1, src ofs: 0x3863a, dst obj: 3, dst ofs: 0x2590c
   3863e:	e8 7e 84 03 00       	call   _D32Unlock
   38643:	83 c4 08             	add    esp,0x8
remove_ISR_branch_1:
   38646:	5a                   	pop    edx
   38647:	59                   	pop    ecx
   38648:	5b                   	pop    ebx
   38649:	c3                   	ret    
   3864a:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'gets'                               -
;-------------------------------------------------
gets:
   38650:	31 c0                	xor    eax,eax
   38652:	c3                   	ret    
;-------------------------------------------------
;  Bad code 69 (zero after ret):                 -
;-------------------------------------------------
;  38650:	31 c0                	xor    eax,eax
;  38652:	c3                   	ret    
;  38653:	00 00                	add    BYTE PTR [eax],al
;  38655:	00 00                	add    BYTE PTR [eax],al
;-------------------------------------------------
;  Padding data (13 bytes):                      -
;-------------------------------------------------
   38653:	00 00 00 00 00 00 .. 	db     13 dup(0x00)
;-------------------------------------------------
;  End of bad code 69                            -
;-------------------------------------------------

;-------------------------------------------------
;  Function 'W?$dt:_keyboard$n()_'               -
;-------------------------------------------------
W?$dt:_keyboard$n()_:
   38660:	53                   	push   ebx
   38661:	51                   	push   ecx
   38662:	56                   	push   esi
   38663:	89 c6                	mov    esi,eax
   38665:	80 78 06 00          	cmp    BYTE PTR [eax+0x6],0x0
   38669:	0f 84 87 00 00 00    	je     W?$dt:_keyboard$n()__branch_1
   3866f:	b8 09 00 00 00       	mov    eax,0x9
   38674:	66 8b 4e 04          	mov    cx,WORD PTR [esi+0x4]
   38678:	8b 1e                	mov    ebx,DWORD PTR [esi]
   3867a:	e8 ad e0 03 00       	call   _dos_setvect_
   3867f:	8c ca                	mov    edx,cs
   38681:	68 00 10 00 00       	push   0x1000
   38686:	b8 60 84 03 00       	mov    eax,@obj1:New_Key_Int                                        ; fixup: num: 10364, src obj: 1, src ofs: 0x38687, dst obj: 1, dst ofs: 0x38460
   3868b:	c6 46 06 00          	mov    BYTE PTR [esi+0x6],0x0
   3868f:	31 c0                	xor    eax,eax
   38691:	66 89 d0             	mov    ax,dx
   38694:	50                   	push   eax
   38695:	e8 0f e0 03 00       	call   _D32GetSegBase
   3869a:	83 c4 04             	add    esp,0x4
   3869d:	05 60 84 03 00       	add    eax,@obj1:New_Key_Int                                        ; fixup: num: 10363, src obj: 1, src ofs: 0x3869e, dst obj: 1, dst ofs: 0x38460
   386a2:	50                   	push   eax
   386a3:	e8 19 84 03 00       	call   _D32Unlock
   386a8:	83 c4 08             	add    esp,0x8
   386ab:	6a 04                	push   0x4
   386ad:	68 08 59 02 00       	push   @obj3:raw_key                                                ; fixup: num: 10362, src obj: 1, src ofs: 0x386ae, dst obj: 3, dst ofs: 0x25908
   386b2:	e8 0a 84 03 00       	call   _D32Unlock
   386b7:	83 c4 08             	add    esp,0x8
   386ba:	6a 04                	push   0x4
   386bc:	68 68 59 02 00       	push   @obj3:last_key_hit_time                                      ; fixup: num: 10361, src obj: 1, src ofs: 0x386bd, dst obj: 3, dst ofs: 0x25968
   386c1:	e8 fb 83 03 00       	call   _D32Unlock
   386c6:	83 c4 08             	add    esp,0x8
   386c9:	6a 04                	push   0x4
   386cb:	68 44 7e 01 00       	push   @obj3:current_time                                           ; fixup: num: 10360, src obj: 1, src ofs: 0x386cc, dst obj: 3, dst ofs: 0x17e44
   386d0:	e8 ec 83 03 00       	call   _D32Unlock
   386d5:	83 c4 08             	add    esp,0x8
   386d8:	6a 01                	push   0x1
   386da:	68 65 59 02 00       	push   @obj3:x                                                      ; fixup: num: 10359, src obj: 1, src ofs: 0x386db, dst obj: 3, dst ofs: 0x25965
   386df:	e8 dd 83 03 00       	call   _D32Unlock
   386e4:	83 c4 08             	add    esp,0x8
   386e7:	6a 59                	push   0x59
   386e9:	68 0c 59 02 00       	push   @obj3:ScanCode                                               ; fixup: num: 10358, src obj: 1, src ofs: 0x386ea, dst obj: 3, dst ofs: 0x2590c
   386ee:	e8 ce 83 03 00       	call   _D32Unlock
   386f3:	83 c4 08             	add    esp,0x8
W?$dt:_keyboard$n()__branch_1:
   386f6:	89 f0                	mov    eax,esi
   386f8:	5e                   	pop    esi
   386f9:	59                   	pop    ecx
   386fa:	5b                   	pop    ebx
   386fb:	c3                   	ret    
;-------------------------------------------------
;  Bad code 70 (zero after ret):                 -
;-------------------------------------------------
;  386fa:	5b                   	pop    ebx
;  386fb:	c3                   	ret    
;  386fc:	00 00                	add    BYTE PTR [eax],al
;  386fe:	00 00                	add    BYTE PTR [eax],al
;-------------------------------------------------
;  Padding data (4 bytes):                       -
;-------------------------------------------------
   386fc:	00 00 00 00          	db     4 dup(0x00)
;-------------------------------------------------
;  End of bad code 70                            -
;-------------------------------------------------

;-------------------------------------------------
;  Function 'W?$ct:_keyboard$n()_'               -
;-------------------------------------------------
W?$ct:_keyboard$n()_:
   38700:	53                   	push   ebx
   38701:	51                   	push   ecx
   38702:	52                   	push   edx
   38703:	56                   	push   esi
   38704:	89 c6                	mov    esi,eax
   38706:	c6 40 06 00          	mov    BYTE PTR [eax+0x6],0x0
   3870a:	80 78 06 00          	cmp    BYTE PTR [eax+0x6],0x0
   3870e:	0f 85 a9 00 00 00    	jne    W?$ct:_keyboard$n()__branch_1
   38714:	68 00 10 00 00       	push   0x1000
   38719:	b8 60 84 03 00       	mov    eax,@obj1:New_Key_Int                                        ; fixup: num: 10357, src obj: 1, src ofs: 0x3871a, dst obj: 1, dst ofs: 0x38460
   3871e:	8c ca                	mov    edx,cs
   38720:	31 c0                	xor    eax,eax
   38722:	66 89 d0             	mov    ax,dx
   38725:	50                   	push   eax
   38726:	e8 7e df 03 00       	call   _D32GetSegBase
   3872b:	83 c4 04             	add    esp,0x4
   3872e:	05 60 84 03 00       	add    eax,@obj1:New_Key_Int                                        ; fixup: num: 10356, src obj: 1, src ofs: 0x3872f, dst obj: 1, dst ofs: 0x38460
   38733:	50                   	push   eax
   38734:	e8 be 83 03 00       	call   _D32Lock
   38739:	83 c4 08             	add    esp,0x8
   3873c:	6a 04                	push   0x4
   3873e:	68 08 59 02 00       	push   @obj3:raw_key                                                ; fixup: num: 10355, src obj: 1, src ofs: 0x3873f, dst obj: 3, dst ofs: 0x25908
   38743:	e8 af 83 03 00       	call   _D32Lock
   38748:	83 c4 08             	add    esp,0x8
   3874b:	6a 04                	push   0x4
   3874d:	68 68 59 02 00       	push   @obj3:last_key_hit_time                                      ; fixup: num: 10354, src obj: 1, src ofs: 0x3874e, dst obj: 3, dst ofs: 0x25968
   38752:	e8 a0 83 03 00       	call   _D32Lock
   38757:	83 c4 08             	add    esp,0x8
   3875a:	6a 04                	push   0x4
   3875c:	68 44 7e 01 00       	push   @obj3:current_time                                           ; fixup: num: 10353, src obj: 1, src ofs: 0x3875d, dst obj: 3, dst ofs: 0x17e44
   38761:	e8 91 83 03 00       	call   _D32Lock
   38766:	83 c4 08             	add    esp,0x8
   38769:	6a 01                	push   0x1
   3876b:	68 65 59 02 00       	push   @obj3:x                                                      ; fixup: num: 10352, src obj: 1, src ofs: 0x3876c, dst obj: 3, dst ofs: 0x25965
   38770:	e8 82 83 03 00       	call   _D32Lock
   38775:	83 c4 08             	add    esp,0x8
   38778:	6a 59                	push   0x59
   3877a:	68 0c 59 02 00       	push   @obj3:ScanCode                                               ; fixup: num: 10351, src obj: 1, src ofs: 0x3877b, dst obj: 3, dst ofs: 0x2590c
   3877f:	e8 73 83 03 00       	call   _D32Lock
   38784:	bb 59 00 00 00       	mov    ebx,0x59
   38789:	83 c4 08             	add    esp,0x8
   3878c:	b8 0c 59 02 00       	mov    eax,@obj3:ScanCode                                           ; fixup: num: 10350, src obj: 1, src ofs: 0x3878d, dst obj: 3, dst ofs: 0x2590c
   38791:	31 d2                	xor    edx,edx
   38793:	e8 38 8c 03 00       	call   memset_
   38798:	8c c9                	mov    ecx,cs
   3879a:	b8 09 00 00 00       	mov    eax,0x9
   3879f:	bb 60 84 03 00       	mov    ebx,@obj1:New_Key_Int                                        ; fixup: num: 10349, src obj: 1, src ofs: 0x387a0, dst obj: 1, dst ofs: 0x38460
   387a4:	e8 4f df 03 00       	call   _dos_getvect_
   387a9:	89 06                	mov    DWORD PTR [esi],eax
   387ab:	b8 09 00 00 00       	mov    eax,0x9
   387b0:	66 89 56 04          	mov    WORD PTR [esi+0x4],dx
   387b4:	e8 73 df 03 00       	call   _dos_setvect_
   387b9:	c6 46 06 01          	mov    BYTE PTR [esi+0x6],0x1
W?$ct:_keyboard$n()__branch_1:
   387bd:	89 f0                	mov    eax,esi
   387bf:	5e                   	pop    esi
   387c0:	5a                   	pop    edx
   387c1:	59                   	pop    ecx
   387c2:	5b                   	pop    ebx
   387c3:	c3                   	ret    
   387c4:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   387ca:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 71 (D:\SOURCE\keyboard.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 71: D:\SOURCE\keyboard.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------
keyboard_cpp_variable_1:
   10d0c:	03                   	db     0x03                                                         ; dec:   3, chr: ''
   10d0d:	00 00 00             	db     3 dup(0x00)                                                  ; dec:   0, chr: '\0'
   10d10:	60 86 03 00          	dd     @obj1:W?$dt:_keyboard$n()_                                   ; fixup: num: 21337, src obj: 3, src ofs: 0x10d10, dst obj: 1, dst ofs: 0x38660
   10d14:	00 59 02 00          	dd     @obj3:keyboard                                               ; fixup: num: 21336, src obj: 3, src ofs: 0x10d14, dst obj: 3, dst ofs: 0x25900
W?$Wts0dn$_keyboard$$$nx[]uc:
   10d18:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
   10d19:	00 87 03 00          	dd     @obj1:W?$ct:_keyboard$n()_                                   ; fixup: num: 21340, src obj: 3, src ofs: 0x10d19, dst obj: 1, dst ofs: 0x38700
   10d1d:	48 14 07 00          	dd     @obj1:__wcpp_2_undefed_cdtor__                               ; fixup: num: 21339, src obj: 3, src ofs: 0x10d1d, dst obj: 1, dst ofs: 0x71448
   10d21:	60 86 03 00          	dd     @obj1:W?$dt:_keyboard$n()_                                   ; fixup: num: 21338, src obj: 3, src ofs: 0x10d21, dst obj: 1, dst ofs: 0x38660
   10d25:	08                   	db     0x08                                                         ; dec:   8, chr: '\b'
   10d26:	00 00 00 00 00 00    	db     6 dup(0x00)                                                  ; dec:   0, chr: '\0'

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 71 (D:\SOURCE\keyboard.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 71: D:\SOURCE\keyboard.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------
keyboard_cpp_variable_2:
   13bf0:	00 00 00 00          	db     4 dup(0x00)                                                  ; dec:   0, chr: '\0'
   13bf4:	0c 0d 01 00          	dd     @obj3:keyboard_cpp_variable_1                                ; fixup: num: 21491, src obj: 3, src ofs: 0x13bf4, dst obj: 3, dst ofs: 0x10d0c
keyboard_cpp_variable_3:                                                                            ; access size: DWORD
   13bf8:	00 00 00 00          	dd     0x00000000

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 71 (D:\SOURCE\keyboard.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 71: D:\SOURCE\keyboard.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------
.mod_init_mod_71:
   16daa:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
   16dab:	40                   	db     0x40                                                         ; dec:  64, chr: '@'
   16dac:	80 83 03 00          	dd     @obj1:.fn_init_mod_71                                        ; fixup: num: 21652, src obj: 3, src ofs: 0x16dac, dst obj: 1, dst ofs: 0x38380

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 71 (D:\SOURCE\keyboard.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 71: D:\SOURCE\keyboard.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------
keyboard:                                                                                           ; access size: DWORD
   25900:	00 00 00 00          	dd     0x00000000
keyboard_variable_1:                                                                                ; access size: WORD
   25904:	00 00                	dw     0x0000
keyboard_variable_2:                                                                                ; access size: BYTE
   25906:	00 00                	db     2 dup(0x00)                                                  ; dec:   0, chr: '\0'
raw_key:                                                                                            ; access size: WORD
   25908:	00 00 00 00          	dw     2 dup(0x0000)
ScanCode:                                                                                           ; access size: BYTES
   2590c:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
ScanCode_variable_1:                                                                                ; access size: BYTE
   2590d:	00 00 00 00 00 00 .. 	db     28 dup(0x00)                                                 ; dec:   0, chr: '\0'
ScanCode_variable_2:                                                                                ; access size: BYTE
   25929:	00 00 00 00 00 00 .. 	db     25 dup(0x00)                                                 ; dec:   0, chr: '\0'
ScanCode_variable_3:                                                                                ; access size: BYTE
   25942:	00 00 00 00 00 00 .. 	db     18 dup(0x00)                                                 ; dec:   0, chr: '\0'
ScanCode_variable_4:                                                                                ; access size: BYTE
   25954:	00 00 00             	db     3 dup(0x00)                                                  ; dec:   0, chr: '\0'
ScanCode_variable_5:                                                                                ; access size: BYTE
   25957:	00 00                	db     2 dup(0x00)                                                  ; dec:   0, chr: '\0'
ScanCode_variable_6:                                                                                ; access size: BYTE
   25959:	00 00 00             	db     3 dup(0x00)                                                  ; dec:   0, chr: '\0'
ScanCode_variable_7:                                                                                ; access size: BYTE
   2595c:	00 00 00 00 00 00 .. 	db     9 dup(0x00)                                                  ; dec:   0, chr: '\0'
x:
   25965:	00 00 00             	db     3 dup(0x00)                                                  ; dec:   0, chr: '\0'
last_key_hit_time:                                                                                  ; access size: DWORD
   25968:	00 00 00 00          	dd     0x00000000

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 71 (D:\SOURCE\keyboard.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------