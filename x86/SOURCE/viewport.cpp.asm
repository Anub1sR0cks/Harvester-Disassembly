;-------------------------------------------------------------------------------
;                                                                              -
;  Module 67: D:\SOURCE\viewport.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function '.fn_init_mod_67'                    -
;-------------------------------------------------
.fn_init_mod_67:
   2c540:	52                   	push   edx
   2c541:	56                   	push   esi
   2c542:	b8 c0 3b 01 00       	mov    eax,@obj3:viewport_cpp_variable_3                            ; fixup: num: 7439, src obj: 1, src ofs: 0x2c543, dst obj: 3, dst ofs: 0x13bc0
   2c547:	e8 86 5b 04 00       	call   __wcpp_2_mod_register__
   2c54c:	be 01 00 00 00       	mov    esi,0x1
   2c551:	31 d2                	xor    edx,edx
   2c553:	30 e4                	xor    ah,ah
   2c555:	89 15 34 30 02 00    	mov    DWORD PTR ds:@obj3:the_viewport,edx                          ; fixup: num: 7438, src obj: 1, src ofs: 0x2c557, dst obj: 3, dst ofs: 0x23034
   2c55b:	89 15 3c 30 02 00    	mov    DWORD PTR ds:@obj3:the_viewport_variable_2,edx               ; fixup: num: 7437, src obj: 1, src ofs: 0x2c55d, dst obj: 3, dst ofs: 0x2303c
   2c561:	89 15 38 30 02 00    	mov    DWORD PTR ds:@obj3:the_viewport_variable_1,edx               ; fixup: num: 7436, src obj: 1, src ofs: 0x2c563, dst obj: 3, dst ofs: 0x23038
   2c567:	88 25 41 30 02 00    	mov    BYTE PTR ds:@obj3:the_viewport_variable_4,ah                 ; fixup: num: 7435, src obj: 1, src ofs: 0x2c569, dst obj: 3, dst ofs: 0x23041
   2c56d:	88 25 40 30 02 00    	mov    BYTE PTR ds:@obj3:the_viewport_variable_3,ah                 ; fixup: num: 7434, src obj: 1, src ofs: 0x2c56f, dst obj: 3, dst ofs: 0x23040
   2c573:	89 35 c8 3b 01 00    	mov    DWORD PTR ds:@obj3:viewport_cpp_variable_4,esi               ; fixup: num: 7433, src obj: 1, src ofs: 0x2c575, dst obj: 3, dst ofs: 0x13bc8
   2c579:	5e                   	pop    esi
   2c57a:	5a                   	pop    edx
   2c57b:	c3                   	ret    
   2c57c:	8d 44 20 00          	lea    eax,[eax+eiz*1+0x0]

;-------------------------------------------------
;  Function 'check_video_bios'                   -
;-------------------------------------------------
check_video_bios:
   2c580:	53                   	push   ebx
   2c581:	51                   	push   ecx
   2c582:	52                   	push   edx
   2c583:	56                   	push   esi
   2c584:	57                   	push   edi
   2c585:	55                   	push   ebp
   2c586:	81 ec 10 02 00 00    	sub    esp,0x210
   2c58c:	89 84 24 00 02 00 00 	mov    DWORD PTR [esp+0x200],eax
   2c593:	89 c7                	mov    edi,eax
   2c595:	bb 00 00 0c 00       	mov    ebx,0xc0000
   2c59a:	29 c9                	sub    ecx,ecx
   2c59c:	49                   	dec    ecx
   2c59d:	31 c0                	xor    eax,eax
   2c59f:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
   2c5a1:	f7 d1                	not    ecx
   2c5a3:	49                   	dec    ecx
   2c5a4:	31 d2                	xor    edx,edx
   2c5a6:	b8 00 02 00 00       	mov    eax,0x200
   2c5ab:	89 cd                	mov    ebp,ecx
   2c5ad:	89 94 24 08 02 00 00 	mov    DWORD PTR [esp+0x208],edx
   2c5b4:	29 c8                	sub    eax,ecx
   2c5b6:	89 9c 24 04 02 00 00 	mov    DWORD PTR [esp+0x204],ebx
   2c5bd:	89 84 24 0c 02 00 00 	mov    DWORD PTR [esp+0x20c],eax
check_video_bios_branch_1:
   2c5c4:	b9 00 02 00 00       	mov    ecx,0x200
   2c5c9:	8b b4 24 04 02 00 00 	mov    esi,DWORD PTR [esp+0x204]
   2c5d0:	89 e7                	mov    edi,esp
   2c5d2:	57                   	push   edi
   2c5d3:	89 c8                	mov    eax,ecx
   2c5d5:	c1 e9 02             	shr    ecx,0x2
   2c5d8:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
   2c5da:	8a c8                	mov    cl,al
   2c5dc:	80 e1 03             	and    cl,0x3
   2c5df:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
   2c5e1:	5f                   	pop    edi
   2c5e2:	8b 8c 24 0c 02 00 00 	mov    ecx,DWORD PTR [esp+0x20c]
   2c5e9:	31 f6                	xor    esi,esi
   2c5eb:	85 c9                	test   ecx,ecx
   2c5ed:	7f 30                	jg     check_video_bios_branch_4
check_video_bios_branch_2:
   2c5ef:	8b 84 24 04 02 00 00 	mov    eax,DWORD PTR [esp+0x204]
   2c5f6:	8b 94 24 08 02 00 00 	mov    edx,DWORD PTR [esp+0x208]
   2c5fd:	05 e0 01 00 00       	add    eax,0x1e0
   2c602:	42                   	inc    edx
   2c603:	89 84 24 04 02 00 00 	mov    DWORD PTR [esp+0x204],eax
   2c60a:	89 94 24 08 02 00 00 	mov    DWORD PTR [esp+0x208],edx
   2c611:	83 fa 0a             	cmp    edx,0xa
   2c614:	7c ae                	jl     check_video_bios_branch_1
   2c616:	eb 4b                	jmp    check_video_bios_branch_9
check_video_bios_branch_3:
   2c618:	46                   	inc    esi
   2c619:	39 fe                	cmp    esi,edi
   2c61b:	7c 09                	jl     check_video_bios_branch_5
   2c61d:	eb d0                	jmp    check_video_bios_branch_2
check_video_bios_branch_4:
   2c61f:	8b bc 24 0c 02 00 00 	mov    edi,DWORD PTR [esp+0x20c]
check_video_bios_branch_5:
   2c626:	8b 94 24 00 02 00 00 	mov    edx,DWORD PTR [esp+0x200]
   2c62d:	8a 04 34             	mov    al,BYTE PTR [esp+esi*1]
   2c630:	3a 02                	cmp    al,BYTE PTR [edx]
   2c632:	75 e4                	jne    check_video_bios_branch_3
   2c634:	ba 01 00 00 00       	mov    edx,0x1
   2c639:	b5 01                	mov    ch,0x1
   2c63b:	39 d5                	cmp    ebp,edx
   2c63d:	7e 1c                	jle    check_video_bios_branch_8
   2c63f:	8b 9c 24 00 02 00 00 	mov    ebx,DWORD PTR [esp+0x200]
   2c646:	8d 04 16             	lea    eax,[esi+edx*1]
   2c649:	01 d3                	add    ebx,edx
check_video_bios_branch_6:
   2c64b:	8a 0c 04             	mov    cl,BYTE PTR [esp+eax*1]
   2c64e:	3a 0b                	cmp    cl,BYTE PTR [ebx]
   2c650:	74 02                	je     check_video_bios_branch_7
   2c652:	30 ed                	xor    ch,ch
check_video_bios_branch_7:
   2c654:	43                   	inc    ebx
   2c655:	42                   	inc    edx
   2c656:	40                   	inc    eax
   2c657:	39 ea                	cmp    edx,ebp
   2c659:	7c f0                	jl     check_video_bios_branch_6
check_video_bios_branch_8:
   2c65b:	84 ed                	test   ch,ch
   2c65d:	74 b9                	je     check_video_bios_branch_3
   2c65f:	b0 01                	mov    al,0x1
   2c661:	eb 02                	jmp    check_video_bios_branch_10
check_video_bios_branch_9:
   2c663:	30 c0                	xor    al,al
check_video_bios_branch_10:
   2c665:	81 c4 10 02 00 00    	add    esp,0x210
check_video_bios_branch_11:
   2c66b:	5d                   	pop    ebp
check_video_bios_branch_12:
   2c66c:	5f                   	pop    edi
   2c66d:	5e                   	pop    esi
   2c66e:	5a                   	pop    edx
   2c66f:	59                   	pop    ecx
   2c670:	5b                   	pop    ebx
   2c671:	c3                   	ret    
   2c672:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   2c678:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
   2c67e:	8b c0                	mov    eax,eax

;-------------------------------------------------
;  Function 'resize'                             -
;-------------------------------------------------
resize:
   2c680:	56                   	push   esi
   2c681:	57                   	push   edi
   2c682:	55                   	push   ebp
   2c683:	83 ec 08             	sub    esp,0x8
   2c686:	89 c6                	mov    esi,eax
   2c688:	89 d5                	mov    ebp,edx
   2c68a:	89 1c 24             	mov    DWORD PTR [esp],ebx
   2c68d:	88 4c 24 04          	mov    BYTE PTR [esp+0x4],cl
   2c691:	8a 25 f0 2f 02 00    	mov    ah,BYTE PTR ds:@obj3:been_here_mod_67                        ; fixup: num: 7442, src obj: 1, src ofs: 0x2c693, dst obj: 3, dst ofs: 0x22ff0
   2c697:	31 ff                	xor    edi,edi
   2c699:	84 e4                	test   ah,ah
   2c69b:	75 1a                	jne    resize_branch_1
   2c69d:	68 00 80 00 00       	push   0x8000
   2c6a2:	68 34 30 02 00       	push   @obj3:the_viewport                                           ; fixup: num: 7441, src obj: 1, src ofs: 0x2c6a3, dst obj: 3, dst ofs: 0x23034
   2c6a7:	e8 4b 44 04 00       	call   _D32Lock
   2c6ac:	b2 01                	mov    dl,0x1
   2c6ae:	83 c4 08             	add    esp,0x8
   2c6b1:	88 15 f0 2f 02 00    	mov    BYTE PTR ds:@obj3:been_here_mod_67,dl                        ; fixup: num: 7440, src obj: 1, src ofs: 0x2c6b3, dst obj: 3, dst ofs: 0x22ff0
resize_branch_1:
   2c6b7:	8b 16                	mov    edx,DWORD PTR [esi]
   2c6b9:	85 d2                	test   edx,edx
   2c6bb:	74 22                	je     resize_branch_3
   2c6bd:	8b 1a                	mov    ebx,DWORD PTR [edx]
   2c6bf:	89 d0                	mov    eax,edx
   2c6c1:	39 dd                	cmp    ebp,ebx
   2c6c3:	75 15                	jne    resize_branch_2
   2c6c5:	8b 0c 24             	mov    ecx,DWORD PTR [esp]
   2c6c8:	3b 4a 04             	cmp    ecx,DWORD PTR [edx+0x4]
   2c6cb:	75 0d                	jne    resize_branch_2
   2c6cd:	8a 74 24 04          	mov    dh,BYTE PTR [esp+0x4]
   2c6d1:	3a 70 08             	cmp    dh,BYTE PTR [eax+0x8]
   2c6d4:	0f 84 83 00 00 00    	je     resize_branch_7
resize_branch_2:
   2c6da:	8b 06                	mov    eax,DWORD PTR [esi]
   2c6dc:	ff 50 14             	call   DWORD PTR [eax+0x14]
resize_branch_3:
   2c6df:	8a 6c 24 18          	mov    ch,BYTE PTR [esp+0x18]
   2c6e3:	8d 14 bd 00 00 00 00 	lea    edx,[edi*4+0x0]
resize_branch_4:
   2c6ea:	8b 82 cc 3b 01 00    	mov    eax,DWORD PTR [edx+@obj3:video_mode_list]                    ; fixup: num: 7447, src obj: 1, src ofs: 0x2c6ec, dst obj: 3, dst ofs: 0x13bcc
   2c6f0:	3d f4 2f 02 00       	cmp    eax,@obj3:NULL_mode                                          ; fixup: num: 7446, src obj: 1, src ofs: 0x2c6f1, dst obj: 3, dst ofs: 0x22ff4
   2c6f5:	74 55                	je     resize_branch_6
   2c6f7:	3b 28                	cmp    ebp,DWORD PTR [eax]
   2c6f9:	75 4b                	jne    resize_branch_5
   2c6fb:	8b 58 04             	mov    ebx,DWORD PTR [eax+0x4]
   2c6fe:	3b 1c 24             	cmp    ebx,DWORD PTR [esp]
   2c701:	75 43                	jne    resize_branch_5
   2c703:	8a 58 08             	mov    bl,BYTE PTR [eax+0x8]
   2c706:	3a 5c 24 04          	cmp    bl,BYTE PTR [esp+0x4]
   2c70a:	75 3a                	jne    resize_branch_5
   2c70c:	3a 68 09             	cmp    ch,BYTE PTR [eax+0x9]
   2c70f:	75 35                	jne    resize_branch_5
   2c711:	ff 50 0c             	call   DWORD PTR [eax+0xc]
   2c714:	84 c0                	test   al,al
   2c716:	74 2e                	je     resize_branch_5
   2c718:	8b 82 cc 3b 01 00    	mov    eax,DWORD PTR [edx+@obj3:video_mode_list]                    ; fixup: num: 7445, src obj: 1, src ofs: 0x2c71a, dst obj: 3, dst ofs: 0x13bcc
   2c71e:	89 06                	mov    DWORD PTR [esi],eax
   2c720:	8b 00                	mov    eax,DWORD PTR [eax]
   2c722:	89 46 04             	mov    DWORD PTR [esi+0x4],eax
   2c725:	8b 06                	mov    eax,DWORD PTR [esi]
   2c727:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
   2c72a:	89 46 08             	mov    DWORD PTR [esi+0x8],eax
   2c72d:	8b 06                	mov    eax,DWORD PTR [esi]
   2c72f:	8a 40 08             	mov    al,BYTE PTR [eax+0x8]
   2c732:	88 46 0c             	mov    BYTE PTR [esi+0xc],al
   2c735:	8b 06                	mov    eax,DWORD PTR [esi]
   2c737:	8a 40 09             	mov    al,BYTE PTR [eax+0x9]
   2c73a:	88 46 0d             	mov    BYTE PTR [esi+0xd],al
   2c73d:	8b 06                	mov    eax,DWORD PTR [esi]
   2c73f:	ff 50 10             	call   DWORD PTR [eax+0x10]
   2c742:	84 c0                	test   al,al
   2c744:	75 17                	jne    resize_branch_7
resize_branch_5:
   2c746:	83 c2 04             	add    edx,0x4
   2c749:	47                   	inc    edi
   2c74a:	eb 9e                	jmp    resize_branch_4
resize_branch_6:
   2c74c:	bb 90 8e 00 00       	mov    ebx,@obj3:viewport_cpp_variable_1                            ; fixup: num: 7444, src obj: 1, src ofs: 0x2c74d, dst obj: 3, dst ofs: 0x8e90
   2c751:	ba a4 00 00 00       	mov    edx,0xa4
   2c756:	31 c0                	xor    eax,eax
   2c758:	e8 d3 b8 00 00       	call   _error_report
resize_branch_7:
   2c75d:	83 c4 08             	add    esp,0x8
   2c760:	5d                   	pop    ebp
   2c761:	5f                   	pop    edi
   2c762:	5e                   	pop    esi
   2c763:	c2 04 00             	ret    0x4
   2c766:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   2c76c:	8d 54 22 00          	lea    edx,[edx+eiz*1+0x0]

;-------------------------------------------------
;  Function 'next_higher'                        -
;-------------------------------------------------
next_higher:
   2c770:	53                   	push   ebx
   2c771:	51                   	push   ecx
   2c772:	52                   	push   edx
   2c773:	56                   	push   esi
   2c774:	57                   	push   edi
   2c775:	55                   	push   ebp
   2c776:	89 c2                	mov    edx,eax
   2c778:	8b 08                	mov    ecx,DWORD PTR [eax]
   2c77a:	31 db                	xor    ebx,ebx
   2c77c:	85 c9                	test   ecx,ecx
   2c77e:	74 24                	je     next_higher_branch_3
   2c780:	89 c8                	mov    eax,ecx
   2c782:	ff 50 14             	call   DWORD PTR [eax+0x14]
   2c785:	8b 0d cc 3b 01 00    	mov    ecx,DWORD PTR ds:@obj3:video_mode_list                       ; fixup: num: 7443, src obj: 1, src ofs: 0x2c787, dst obj: 3, dst ofs: 0x13bcc
   2c78b:	8b 32                	mov    esi,DWORD PTR [edx]
   2c78d:	31 c0                	xor    eax,eax
   2c78f:	39 f1                	cmp    ecx,esi
   2c791:	74 10                	je     next_higher_branch_2
next_higher_branch_1:
   2c793:	8b 88 d0 3b 01 00    	mov    ecx,DWORD PTR [eax+@obj3:video_mode_list_variable_1]         ; fixup: num: 7455, src obj: 1, src ofs: 0x2c795, dst obj: 3, dst ofs: 0x13bd0
   2c799:	83 c0 04             	add    eax,0x4
   2c79c:	8b 3a                	mov    edi,DWORD PTR [edx]
   2c79e:	43                   	inc    ebx
   2c79f:	39 f9                	cmp    ecx,edi
   2c7a1:	75 f0                	jne    next_higher_branch_1
next_higher_branch_2:
   2c7a3:	4b                   	dec    ebx
next_higher_branch_3:
   2c7a4:	85 db                	test   ebx,ebx
   2c7a6:	7e 48                	jle    next_higher_branch_4
   2c7a8:	8d 0c 9d 00 00 00 00 	lea    ecx,[ebx*4+0x0]
   2c7af:	8b 81 cc 3b 01 00    	mov    eax,DWORD PTR [ecx+@obj3:video_mode_list]                    ; fixup: num: 7454, src obj: 1, src ofs: 0x2c7b1, dst obj: 3, dst ofs: 0x13bcc
   2c7b5:	ff 50 0c             	call   DWORD PTR [eax+0xc]
   2c7b8:	84 c0                	test   al,al
   2c7ba:	74 e7                	je     next_higher_branch_2
   2c7bc:	8b 81 cc 3b 01 00    	mov    eax,DWORD PTR [ecx+@obj3:video_mode_list]                    ; fixup: num: 7453, src obj: 1, src ofs: 0x2c7be, dst obj: 3, dst ofs: 0x13bcc
   2c7c2:	89 02                	mov    DWORD PTR [edx],eax
   2c7c4:	8b 00                	mov    eax,DWORD PTR [eax]
   2c7c6:	89 42 04             	mov    DWORD PTR [edx+0x4],eax
   2c7c9:	8b 02                	mov    eax,DWORD PTR [edx]
   2c7cb:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
   2c7ce:	89 42 08             	mov    DWORD PTR [edx+0x8],eax
   2c7d1:	8b 02                	mov    eax,DWORD PTR [edx]
   2c7d3:	8a 40 08             	mov    al,BYTE PTR [eax+0x8]
   2c7d6:	88 42 0c             	mov    BYTE PTR [edx+0xc],al
   2c7d9:	8b 02                	mov    eax,DWORD PTR [edx]
   2c7db:	8a 40 09             	mov    al,BYTE PTR [eax+0x9]
   2c7de:	88 42 0d             	mov    BYTE PTR [edx+0xd],al
   2c7e1:	8b 02                	mov    eax,DWORD PTR [edx]
   2c7e3:	ff 50 10             	call   DWORD PTR [eax+0x10]
   2c7e6:	84 c0                	test   al,al
   2c7e8:	0f 85 7d fe ff ff    	jne    check_video_bios_branch_11
   2c7ee:	eb b3                	jmp    next_higher_branch_2
next_higher_branch_4:
   2c7f0:	8b 2d d0 3b 01 00    	mov    ebp,DWORD PTR ds:@obj3:video_mode_list_variable_1            ; fixup: num: 7452, src obj: 1, src ofs: 0x2c7f2, dst obj: 3, dst ofs: 0x13bd0
   2c7f6:	31 db                	xor    ebx,ebx
   2c7f8:	31 c0                	xor    eax,eax
   2c7fa:	81 fd f4 2f 02 00    	cmp    ebp,@obj3:NULL_mode                                          ; fixup: num: 7451, src obj: 1, src ofs: 0x2c7fc, dst obj: 3, dst ofs: 0x22ff4
next_higher_branch_5:
   2c800:	74 a2                	je     next_higher_branch_3
   2c802:	8b 88 d4 3b 01 00    	mov    ecx,DWORD PTR [eax+@obj3:video_mode_list_variable_2]         ; fixup: num: 7450, src obj: 1, src ofs: 0x2c804, dst obj: 3, dst ofs: 0x13bd4
   2c808:	83 c0 04             	add    eax,0x4
   2c80b:	43                   	inc    ebx
   2c80c:	81 f9 f4 2f 02 00    	cmp    ecx,@obj3:NULL_mode                                          ; fixup: num: 7449, src obj: 1, src ofs: 0x2c80e, dst obj: 3, dst ofs: 0x22ff4
   2c812:	eb ec                	jmp    next_higher_branch_5
   2c814:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   2c81a:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]

;-------------------------------------------------
;  Function 'next_lower'                         -
;-------------------------------------------------
next_lower:
   2c820:	53                   	push   ebx
   2c821:	51                   	push   ecx
   2c822:	52                   	push   edx
   2c823:	56                   	push   esi
   2c824:	57                   	push   edi
   2c825:	89 c2                	mov    edx,eax
   2c827:	8b 08                	mov    ecx,DWORD PTR [eax]
   2c829:	31 db                	xor    ebx,ebx
   2c82b:	85 c9                	test   ecx,ecx
   2c82d:	74 19                	je     next_lower_branch_2
   2c82f:	89 c8                	mov    eax,ecx
   2c831:	ff 50 14             	call   DWORD PTR [eax+0x14]
   2c834:	31 c9                	xor    ecx,ecx
next_lower_branch_1:
   2c836:	8b 81 cc 3b 01 00    	mov    eax,DWORD PTR [ecx+@obj3:video_mode_list]                    ; fixup: num: 7448, src obj: 1, src ofs: 0x2c838, dst obj: 3, dst ofs: 0x13bcc
   2c83c:	8b 32                	mov    esi,DWORD PTR [edx]
   2c83e:	43                   	inc    ebx
   2c83f:	39 f0                	cmp    eax,esi
   2c841:	74 05                	je     next_lower_branch_2
   2c843:	83 c1 04             	add    ecx,0x4
   2c846:	eb ee                	jmp    next_lower_branch_1
next_lower_branch_2:
   2c848:	8d 0c 9d 00 00 00 00 	lea    ecx,[ebx*4+0x0]
   2c84f:	8b b9 cc 3b 01 00    	mov    edi,DWORD PTR [ecx+@obj3:video_mode_list]                    ; fixup: num: 7458, src obj: 1, src ofs: 0x2c851, dst obj: 3, dst ofs: 0x13bcc
   2c855:	81 ff f4 2f 02 00    	cmp    edi,@obj3:NULL_mode                                          ; fixup: num: 7457, src obj: 1, src ofs: 0x2c857, dst obj: 3, dst ofs: 0x22ff4
   2c85b:	74 3e                	je     next_lower_branch_4
   2c85d:	89 f8                	mov    eax,edi
   2c85f:	ff 50 0c             	call   DWORD PTR [eax+0xc]
   2c862:	84 c0                	test   al,al
   2c864:	74 32                	je     next_lower_branch_3
   2c866:	8b 89 cc 3b 01 00    	mov    ecx,DWORD PTR [ecx+@obj3:video_mode_list]                    ; fixup: num: 7456, src obj: 1, src ofs: 0x2c868, dst obj: 3, dst ofs: 0x13bcc
   2c86c:	89 0a                	mov    DWORD PTR [edx],ecx
   2c86e:	8b 09                	mov    ecx,DWORD PTR [ecx]
   2c870:	8b 02                	mov    eax,DWORD PTR [edx]
   2c872:	89 4a 04             	mov    DWORD PTR [edx+0x4],ecx
   2c875:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
   2c878:	89 42 08             	mov    DWORD PTR [edx+0x8],eax
   2c87b:	8b 02                	mov    eax,DWORD PTR [edx]
   2c87d:	8a 40 08             	mov    al,BYTE PTR [eax+0x8]
   2c880:	88 42 0c             	mov    BYTE PTR [edx+0xc],al
   2c883:	8b 02                	mov    eax,DWORD PTR [edx]
   2c885:	8a 40 09             	mov    al,BYTE PTR [eax+0x9]
   2c888:	88 42 0d             	mov    BYTE PTR [edx+0xd],al
   2c88b:	8b 02                	mov    eax,DWORD PTR [edx]
   2c88d:	ff 50 10             	call   DWORD PTR [eax+0x10]
   2c890:	84 c0                	test   al,al
   2c892:	0f 85 d4 fd ff ff    	jne    check_video_bios_branch_12
next_lower_branch_3:
   2c898:	43                   	inc    ebx
   2c899:	eb ad                	jmp    next_lower_branch_2
next_lower_branch_4:
   2c89b:	31 db                	xor    ebx,ebx
   2c89d:	eb a9                	jmp    next_lower_branch_2
;-------------------------------------------------
;  Bad code 62 (zero after jmp):                 -
;-------------------------------------------------
;  2c89b:	31 db                	xor    ebx,ebx
;  2c89d:	eb a9                	jmp    0x2c848
;  2c89f:	00               	add    BYTE PTR [ebx-0x77],dl
;-------------------------------------------------
;  Padding data (1 bytes):                       -
;-------------------------------------------------
   2c89f:	00                   	db     0x00
;-------------------------------------------------
;  End of bad code 62                            -
;-------------------------------------------------

;-------------------------------------------------
;  Function 'W?$dt:viewport$n()_'                -
;-------------------------------------------------
W?$dt:viewport$n()_:
   2c8a0:	53                   	push   ebx
   2c8a1:	89 c3                	mov    ebx,eax
   2c8a3:	b8 03 00 00 00       	mov    eax,0x3
   2c8a8:	e8 f3 84 fd ff       	call   set_super_VGA_video_mode
   2c8ad:	89 d8                	mov    eax,ebx
   2c8af:	5b                   	pop    ebx
   2c8b0:	c3                   	ret    
;-------------------------------------------------
;  Bad code 63 (zero after ret):                 -
;-------------------------------------------------
;  2c8af:	5b                   	pop    ebx
;  2c8b0:	c3                   	ret    
;  2c8b1:	00 00                	add    BYTE PTR [eax],al
;  2c8b3:	00 00                	add    BYTE PTR [eax],al
;-------------------------------------------------
;  Padding data (15 bytes):                      -
;-------------------------------------------------
   2c8b1:	00 00 00 00 00 00 .. 	db     15 dup(0x00)
;-------------------------------------------------
;  End of bad code 63                            -
;-------------------------------------------------

;-------------------------------------------------
;  Function 'W?$ct:viewport$n()_'                -
;-------------------------------------------------
W?$ct:viewport$n()_:
   2c8c0:	52                   	push   edx
   2c8c1:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
   2c8c7:	c7 40 08 00 00 00 00 	mov    DWORD PTR [eax+0x8],0x0
   2c8ce:	c6 40 0d 00          	mov    BYTE PTR [eax+0xd],0x0
   2c8d2:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
   2c8d5:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
   2c8d8:	8a 50 0d             	mov    dl,BYTE PTR [eax+0xd]
   2c8db:	88 50 0c             	mov    BYTE PTR [eax+0xc],dl
   2c8de:	5a                   	pop    edx
   2c8df:	c3                   	ret    

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 67 (D:\SOURCE\viewport.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 67: D:\SOURCE\viewport.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------
viewport_cpp_variable_1:
    8e90:	43 6f 75 6c 64 20 6e 6f 74 20 72 65 73 69 7a 65 20 76 69 65 77 70 6f 72 74 21 00 	db     "Could not resize viewport!",0x00
    8eab:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 67 (D:\SOURCE\viewport.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 67: D:\SOURCE\viewport.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------
viewport_cpp_variable_2:
   10ccc:	03                   	db     0x03                                                         ; dec:   3, chr: ''
   10ccd:	00 00 00             	db     3 dup(0x00)                                                  ; dec:   0, chr: '\0'
   10cd0:	a0 c8 02 00          	dd     @obj1:W?$dt:viewport$n()_                                    ; fixup: num: 21327, src obj: 3, src ofs: 0x10cd0, dst obj: 1, dst ofs: 0x2c8a0
   10cd4:	34 30 02 00          	dd     @obj3:the_viewport                                           ; fixup: num: 21326, src obj: 3, src ofs: 0x10cd4, dst obj: 3, dst ofs: 0x23034
W?$Wts0cn$viewport$$$nx[]uc:
   10cd8:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
   10cd9:	c0 c8 02 00          	dd     @obj1:W?$ct:viewport$n()_                                    ; fixup: num: 21330, src obj: 3, src ofs: 0x10cd9, dst obj: 1, dst ofs: 0x2c8c0
   10cdd:	48 14 07 00          	dd     @obj1:__wcpp_2_undefed_cdtor__                               ; fixup: num: 21329, src obj: 3, src ofs: 0x10cdd, dst obj: 1, dst ofs: 0x71448
   10ce1:	a0 c8 02 00          	dd     @obj1:W?$dt:viewport$n()_                                    ; fixup: num: 21328, src obj: 3, src ofs: 0x10ce1, dst obj: 1, dst ofs: 0x2c8a0
   10ce5:	10                   	db     0x10                                                         ; dec:  16, chr: ''
   10ce6:	00 00 00 00 00 00    	db     6 dup(0x00)                                                  ; dec:   0, chr: '\0'

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 67 (D:\SOURCE\viewport.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 67: D:\SOURCE\viewport.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------
viewport_cpp_variable_3:
   13bc0:	00 00 00 00          	db     4 dup(0x00)                                                  ; dec:   0, chr: '\0'
   13bc4:	cc 0c 01 00          	dd     @obj3:viewport_cpp_variable_2                                ; fixup: num: 21489, src obj: 3, src ofs: 0x13bc4, dst obj: 3, dst ofs: 0x10ccc
viewport_cpp_variable_4:                                                                            ; access size: DWORD
   13bc8:	00 00 00 00          	dd     0x00000000
video_mode_list:                                                                                    ; access sizes: DWORDS, DWORD
   13bcc:	74 2c 01 00          	dd     @obj3:mode_VESA_105                                          ; fixup: num: 21488, src obj: 3, src ofs: 0x13bcc, dst obj: 3, dst ofs: 0x12c74
video_mode_list_variable_1:                                                                         ; access sizes: DWORDS, DWORD
   13bd0:	34 2c 01 00          	dd     @obj3:mode_VESA_103                                          ; fixup: num: 21487, src obj: 3, src ofs: 0x13bd0, dst obj: 3, dst ofs: 0x12c34
video_mode_list_variable_2:                                                                         ; access size: DWORDS
   13bd4:	f4 2b 01 00          	dd     @obj3:mode_VESA_101                                          ; fixup: num: 21486, src obj: 3, src ofs: 0x13bd4, dst obj: 3, dst ofs: 0x12bf4
   13bd8:	b4 2b 01 00          	dd     @obj3:mode_VESA_100                                          ; fixup: num: 21485, src obj: 3, src ofs: 0x13bd8, dst obj: 3, dst ofs: 0x12bb4
   13bdc:	d4 0f 01 00          	dd     @obj3:mode_13                                                ; fixup: num: 21484, src obj: 3, src ofs: 0x13bdc, dst obj: 3, dst ofs: 0x10fd4
   13be0:	f4 2f 02 00          	dd     @obj3:NULL_mode                                              ; fixup: num: 21483, src obj: 3, src ofs: 0x13be0, dst obj: 3, dst ofs: 0x22ff4

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 67 (D:\SOURCE\viewport.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 67: D:\SOURCE\viewport.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------
.mod_init_mod_67:
   16d9e:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
   16d9f:	40                   	db     0x40                                                         ; dec:  64, chr: '@'
   16da0:	40 c5 02 00          	dd     @obj1:.fn_init_mod_67                                        ; fixup: num: 21650, src obj: 3, src ofs: 0x16da0, dst obj: 1, dst ofs: 0x2c540

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 67 (D:\SOURCE\viewport.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 67: D:\SOURCE\viewport.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------
been_here_mod_67:                                                                                   ; access size: BYTE
   22ff0:	00 00 00 00          	db     4 dup(0x00)                                                  ; dec:   0, chr: '\0'
NULL_mode:
   22ff4:	00 00 00 00 00 00 .. 	db     64 dup(0x00)                                                 ; dec:   0, chr: '\0'
the_viewport:                                                                                       ; access size: DWORD
   23034:	00 00 00 00          	dd     0x00000000
the_viewport_variable_1:                                                                            ; access size: DWORD
   23038:	00 00 00 00          	dd     0x00000000
the_viewport_variable_2:                                                                            ; access size: DWORD
   2303c:	00 00 00 00          	dd     0x00000000
the_viewport_variable_3:                                                                            ; access size: BYTE
   23040:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
the_viewport_variable_4:                                                                            ; access size: BYTE
   23041:	00 00 00             	db     3 dup(0x00)                                                  ; dec:   0, chr: '\0'

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 67 (D:\SOURCE\viewport.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------