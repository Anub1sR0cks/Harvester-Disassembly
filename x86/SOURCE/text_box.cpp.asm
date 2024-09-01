;-------------------------------------------------------------------------------
;                                                                              -
;  Module 81: D:\SOURCE\text_box.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function 'W?$ct:text_box$n()_'                -
;-------------------------------------------------
W?$ct:text_box$n()_:
   495a0:	52                   	push   edx
   495a1:	c6 80 0c 01 00 00 00 	mov    BYTE PTR [eax+0x10c],0x0
   495a8:	c6 40 04 00          	mov    BYTE PTR [eax+0x4],0x0
   495ac:	c6 40 05 00          	mov    BYTE PTR [eax+0x5],0x0
   495b0:	c6 80 0a 01 00 00 00 	mov    BYTE PTR [eax+0x10a],0x0
   495b7:	c7 80 14 01 00 00 00 00 00 00 	mov    DWORD PTR [eax+0x114],0x0
   495c1:	8a 90 0c 01 00 00    	mov    dl,BYTE PTR [eax+0x10c]
   495c7:	88 90 0b 01 00 00    	mov    BYTE PTR [eax+0x10b],dl
   495cd:	88 90 09 01 00 00    	mov    BYTE PTR [eax+0x109],dl
   495d3:	88 90 08 01 00 00    	mov    BYTE PTR [eax+0x108],dl
   495d9:	88 90 07 01 00 00    	mov    BYTE PTR [eax+0x107],dl
   495df:	88 90 06 01 00 00    	mov    BYTE PTR [eax+0x106],dl
   495e5:	88 90 05 01 00 00    	mov    BYTE PTR [eax+0x105],dl
   495eb:	88 90 04 01 00 00    	mov    BYTE PTR [eax+0x104],dl
   495f1:	88 50 03             	mov    BYTE PTR [eax+0x3],dl
   495f4:	88 50 02             	mov    BYTE PTR [eax+0x2],dl
   495f7:	88 50 01             	mov    BYTE PTR [eax+0x1],dl
   495fa:	88 10                	mov    BYTE PTR [eax],dl
   495fc:	8b 90 14 01 00 00    	mov    edx,DWORD PTR [eax+0x114]
   49602:	89 90 10 01 00 00    	mov    DWORD PTR [eax+0x110],edx
   49608:	5a                   	pop    edx
   49609:	c3                   	ret    
   4960a:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'W?$ct:text_box$n(pnaucucucucucucuc  -
;  ucucucucucucuc)_'                             -
;-------------------------------------------------
W?$ct:text_box$n(pnaucucucucucucucucucucucucucuc)_:
   49610:	56                   	push   esi
   49611:	57                   	push   edi
   49612:	55                   	push   ebp
   49613:	89 c5                	mov    ebp,eax
   49615:	c7 80 14 01 00 00 00 00 00 00 	mov    DWORD PTR [eax+0x114],0x0
   4961f:	8b b8 14 01 00 00    	mov    edi,DWORD PTR [eax+0x114]
   49625:	89 b8 10 01 00 00    	mov    DWORD PTR [eax+0x110],edi
   4962b:	85 d2                	test   edx,edx
   4962d:	75 06                	jne    W?$ct:text_box$n(pnaucucucucucucucucucucucucucuc)__branch_1
   4962f:	c6 40 05 00          	mov    BYTE PTR [eax+0x5],0x0
   49633:	eb 1f                	jmp    W?$ct:text_box$n(pnaucucucucucucucucucucucucucuc)__branch_4
W?$ct:text_box$n(pnaucucucucucucucucucucucucucuc)__branch_1:
   49635:	8d 78 05             	lea    edi,[eax+0x5]
   49638:	89 d6                	mov    esi,edx
   4963a:	57                   	push   edi
W?$ct:text_box$n(pnaucucucucucucucucucucucucucuc)__branch_2:
   4963b:	8a 06                	mov    al,BYTE PTR [esi]
   4963d:	88 07                	mov    BYTE PTR [edi],al
   4963f:	3c 00                	cmp    al,0x0
   49641:	74 10                	je     W?$ct:text_box$n(pnaucucucucucucucucucucucucucuc)__branch_3
   49643:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   49646:	83 c6 02             	add    esi,0x2
   49649:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   4964c:	83 c7 02             	add    edi,0x2
   4964f:	3c 00                	cmp    al,0x0
   49651:	75 e8                	jne    W?$ct:text_box$n(pnaucucucucucucucucucucucucucuc)__branch_2
W?$ct:text_box$n(pnaucucucucucucucucucucucucucuc)__branch_3:
   49653:	5f                   	pop    edi
W?$ct:text_box$n(pnaucucucucucucucucucucucucucuc)__branch_4:
   49654:	88 5d 00             	mov    BYTE PTR [ebp+0x0],bl
   49657:	8a 54 24 10          	mov    dl,BYTE PTR [esp+0x10]
   4965b:	88 4d 01             	mov    BYTE PTR [ebp+0x1],cl
   4965e:	88 55 02             	mov    BYTE PTR [ebp+0x2],dl
   49661:	8a 54 24 14          	mov    dl,BYTE PTR [esp+0x14]
   49665:	88 55 03             	mov    BYTE PTR [ebp+0x3],dl
   49668:	8a 54 24 18          	mov    dl,BYTE PTR [esp+0x18]
   4966c:	88 55 04             	mov    BYTE PTR [ebp+0x4],dl
   4966f:	8a 54 24 1c          	mov    dl,BYTE PTR [esp+0x1c]
   49673:	88 95 0a 01 00 00    	mov    BYTE PTR [ebp+0x10a],dl
   49679:	8a 54 24 20          	mov    dl,BYTE PTR [esp+0x20]
   4967d:	88 95 04 01 00 00    	mov    BYTE PTR [ebp+0x104],dl
   49683:	8a 54 24 24          	mov    dl,BYTE PTR [esp+0x24]
   49687:	88 95 05 01 00 00    	mov    BYTE PTR [ebp+0x105],dl
   4968d:	8a 54 24 28          	mov    dl,BYTE PTR [esp+0x28]
   49691:	88 95 06 01 00 00    	mov    BYTE PTR [ebp+0x106],dl
   49697:	8a 54 24 2c          	mov    dl,BYTE PTR [esp+0x2c]
   4969b:	88 95 07 01 00 00    	mov    BYTE PTR [ebp+0x107],dl
   496a1:	8a 54 24 30          	mov    dl,BYTE PTR [esp+0x30]
   496a5:	88 95 08 01 00 00    	mov    BYTE PTR [ebp+0x108],dl
   496ab:	8a 54 24 34          	mov    dl,BYTE PTR [esp+0x34]
   496af:	88 95 09 01 00 00    	mov    BYTE PTR [ebp+0x109],dl
   496b5:	8a 54 24 38          	mov    dl,BYTE PTR [esp+0x38]
   496b9:	88 95 0b 01 00 00    	mov    BYTE PTR [ebp+0x10b],dl
   496bf:	8a 54 24 3c          	mov    dl,BYTE PTR [esp+0x3c]
   496c3:	89 e8                	mov    eax,ebp
   496c5:	88 95 0c 01 00 00    	mov    BYTE PTR [ebp+0x10c],dl
   496cb:	5d                   	pop    ebp
   496cc:	5f                   	pop    edi
   496cd:	5e                   	pop    esi
   496ce:	c2 30 00             	ret    0x30
   496d1:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   496d7:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
   496dd:	8d 40 00             	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'W?$dt:text_box$n()_'                -
;-------------------------------------------------
W?$dt:text_box$n()_:
   496e0:	53                   	push   ebx
   496e1:	51                   	push   ecx
   496e2:	89 c3                	mov    ebx,eax
   496e4:	8b 90 10 01 00 00    	mov    edx,DWORD PTR [eax+0x110]
   496ea:	85 d2                	test   edx,edx
   496ec:	74 07                	je     W?$dt:text_box$n()__branch_1
   496ee:	89 d0                	mov    eax,edx
   496f0:	e8 f3 7c 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
W?$dt:text_box$n()__branch_1:
   496f5:	8b 8b 14 01 00 00    	mov    ecx,DWORD PTR [ebx+0x114]
   496fb:	c7 83 10 01 00 00 00 00 00 00 	mov    DWORD PTR [ebx+0x110],0x0
   49705:	85 c9                	test   ecx,ecx
   49707:	74 07                	je     W?$dt:text_box$n()__branch_2
   49709:	89 c8                	mov    eax,ecx
   4970b:	e8 d8 7c 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
W?$dt:text_box$n()__branch_2:
   49710:	89 d8                	mov    eax,ebx
   49712:	c7 83 14 01 00 00 00 00 00 00 	mov    DWORD PTR [ebx+0x114],0x0
   4971c:	59                   	pop    ecx
   4971d:	5b                   	pop    ebx
   4971e:	c3                   	ret    
   4971f:	90                   	nop

;-------------------------------------------------
;  Function 'display'                            -
;-------------------------------------------------
display:
   49720:	53                   	push   ebx
   49721:	51                   	push   ecx
   49722:	52                   	push   edx
   49723:	56                   	push   esi
   49724:	57                   	push   edi
   49725:	55                   	push   ebp
   49726:	83 ec 04             	sub    esp,0x4
   49729:	89 c6                	mov    esi,eax
   4972b:	ba 01 00 00 00       	mov    edx,0x1
   49730:	0f b6 38             	movzx  edi,BYTE PTR [eax]
   49733:	31 c9                	xor    ecx,ecx
   49735:	31 db                	xor    ebx,ebx
   49737:	8a 48 01             	mov    cl,BYTE PTR [eax+0x1]
display_branch_1:
   4973a:	0f b6 6e 04          	movzx  ebp,BYTE PTR [esi+0x4]
   4973e:	b0 20                	mov    al,0x20
   49740:	83 fd 01             	cmp    ebp,0x1
   49743:	75 0c                	jne    display_branch_3
   49745:	85 d2                	test   edx,edx
   49747:	74 04                	je     display_branch_2
   49749:	b0 c4                	mov    al,0xc4
   4974b:	eb 13                	jmp    display_branch_5
display_branch_2:
   4974d:	b0 b3                	mov    al,0xb3
   4974f:	eb 0f                	jmp    display_branch_5
display_branch_3:
   49751:	83 fd 02             	cmp    ebp,0x2
   49754:	75 0a                	jne    display_branch_5
   49756:	85 d2                	test   edx,edx
   49758:	74 04                	je     display_branch_4
   4975a:	b0 cd                	mov    al,0xcd
   4975c:	eb 02                	jmp    display_branch_5
display_branch_4:
   4975e:	b0 ba                	mov    al,0xba
display_branch_5:
   49760:	83 fa 01             	cmp    edx,0x1
   49763:	75 22                	jne    display_branch_7
   49765:	0f b6 6e 02          	movzx  ebp,BYTE PTR [esi+0x2]
   49769:	39 ef                	cmp    edi,ebp
   4976b:	75 1a                	jne    display_branch_7
   4976d:	bb 01 00 00 00       	mov    ebx,0x1
   49772:	0f b6 6e 04          	movzx  ebp,BYTE PTR [esi+0x4]
   49776:	31 d2                	xor    edx,edx
   49778:	39 dd                	cmp    ebp,ebx
   4977a:	75 04                	jne    display_branch_6
   4977c:	b0 bf                	mov    al,0xbf
   4977e:	eb 07                	jmp    display_branch_7
display_branch_6:
   49780:	83 fd 02             	cmp    ebp,0x2
   49783:	75 02                	jne    display_branch_7
   49785:	b0 bb                	mov    al,0xbb
display_branch_7:
   49787:	83 fb 01             	cmp    ebx,0x1
   4978a:	75 23                	jne    display_branch_9
   4978c:	0f b6 6e 03          	movzx  ebp,BYTE PTR [esi+0x3]
   49790:	39 e9                	cmp    ecx,ebp
   49792:	75 1b                	jne    display_branch_9
   49794:	ba ff ff ff ff       	mov    edx,0xffffffff
   49799:	0f b6 6e 04          	movzx  ebp,BYTE PTR [esi+0x4]
   4979d:	31 db                	xor    ebx,ebx
   4979f:	83 fd 01             	cmp    ebp,0x1
   497a2:	75 04                	jne    display_branch_8
   497a4:	b0 d9                	mov    al,0xd9
   497a6:	eb 07                	jmp    display_branch_9
display_branch_8:
   497a8:	83 fd 02             	cmp    ebp,0x2
   497ab:	75 02                	jne    display_branch_9
   497ad:	b0 bc                	mov    al,0xbc
display_branch_9:
   497af:	83 fa ff             	cmp    edx,0xffffffff
   497b2:	75 22                	jne    display_branch_11
   497b4:	0f b6 2e             	movzx  ebp,BYTE PTR [esi]
   497b7:	39 ef                	cmp    edi,ebp
   497b9:	75 1b                	jne    display_branch_11
   497bb:	bb ff ff ff ff       	mov    ebx,0xffffffff
   497c0:	0f b6 6e 04          	movzx  ebp,BYTE PTR [esi+0x4]
   497c4:	31 d2                	xor    edx,edx
   497c6:	83 fd 01             	cmp    ebp,0x1
   497c9:	75 04                	jne    display_branch_10
   497cb:	b0 c0                	mov    al,0xc0
   497cd:	eb 07                	jmp    display_branch_11
display_branch_10:
   497cf:	83 fd 02             	cmp    ebp,0x2
   497d2:	75 02                	jne    display_branch_11
   497d4:	b0 c8                	mov    al,0xc8
display_branch_11:
   497d6:	83 fb ff             	cmp    ebx,0xffffffff
   497d9:	75 1e                	jne    display_branch_13
   497db:	0f b6 6e 01          	movzx  ebp,BYTE PTR [esi+0x1]
   497df:	39 e9                	cmp    ecx,ebp
   497e1:	75 16                	jne    display_branch_13
   497e3:	0f b6 6e 04          	movzx  ebp,BYTE PTR [esi+0x4]
   497e7:	83 fd 01             	cmp    ebp,0x1
   497ea:	75 02                	jne    display_branch_12
   497ec:	b0 da                	mov    al,0xda
display_branch_12:
   497ee:	0f b6 6e 04          	movzx  ebp,BYTE PTR [esi+0x4]
   497f2:	83 fd 02             	cmp    ebp,0x2
   497f5:	75 02                	jne    display_branch_13
   497f7:	b0 c9                	mov    al,0xc9
display_branch_13:
   497f9:	8d 69 ff             	lea    ebp,[ecx-0x1]
   497fc:	6b ed 50             	imul   ebp,ebp,0x50
   497ff:	01 fd                	add    ebp,edi
   49801:	01 ed                	add    ebp,ebp
   49803:	89 2c 24             	mov    DWORD PTR [esp],ebp
   49806:	8b 2d 78 5a 02 00    	mov    ebp,DWORD PTR ds:@obj3:text_VRAM_start                       ; fixup: num: 11601, src obj: 1, src ofs: 0x49808, dst obj: 3, dst ofs: 0x25a78
   4980c:	01 d9                	add    ecx,ebx
   4980e:	03 2c 24             	add    ebp,DWORD PTR [esp]
   49811:	01 d7                	add    edi,edx
   49813:	88 45 fe             	mov    BYTE PTR [ebp-0x2],al
   49816:	83 fb ff             	cmp    ebx,0xffffffff
   49819:	0f 85 1b ff ff ff    	jne    display_branch_1
   4981f:	31 c0                	xor    eax,eax
   49821:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   49824:	39 c1                	cmp    ecx,eax
   49826:	0f 8d 0e ff ff ff    	jge    display_branch_1
   4982c:	80 7e 05 00          	cmp    BYTE PTR [esi+0x5],0x0
   49830:	74 4a                	je     display_branch_14
   49832:	31 c9                	xor    ecx,ecx
   49834:	8d 7e 05             	lea    edi,[esi+0x5]
   49837:	8a 0e                	mov    cl,BYTE PTR [esi]
   49839:	89 c2                	mov    edx,eax
   4983b:	41                   	inc    ecx
   4983c:	89 fb                	mov    ebx,edi
   4983e:	89 c8                	mov    eax,ecx
   49840:	e8 4b fc ff ff       	call   text_puts
   49845:	31 c0                	xor    eax,eax
   49847:	8a 86 06 01 00 00    	mov    al,BYTE PTR [esi+0x106]
   4984d:	50                   	push   eax
   4984e:	31 c0                	xor    eax,eax
   49850:	0f b6 6e 01          	movzx  ebp,BYTE PTR [esi+0x1]
   49854:	8a 86 07 01 00 00    	mov    al,BYTE PTR [esi+0x107]
   4985a:	31 db                	xor    ebx,ebx
   4985c:	50                   	push   eax
   4985d:	31 d2                	xor    edx,edx
   4985f:	8a 1e                	mov    bl,BYTE PTR [esi]
   49861:	29 c9                	sub    ecx,ecx
   49863:	49                   	dec    ecx
   49864:	31 c0                	xor    eax,eax
   49866:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
   49868:	f7 d1                	not    ecx
   4986a:	49                   	dec    ecx
   4986b:	8a 56 01             	mov    dl,BYTE PTR [esi+0x1]
   4986e:	31 c0                	xor    eax,eax
   49870:	01 cb                	add    ebx,ecx
   49872:	8a 06                	mov    al,BYTE PTR [esi]
   49874:	89 e9                	mov    ecx,ebp
   49876:	40                   	inc    eax
   49877:	e8 74 fc ff ff       	call   text_color
display_branch_14:
   4987c:	83 c4 04             	add    esp,0x4
   4987f:	5d                   	pop    ebp
   49880:	5f                   	pop    edi
   49881:	5e                   	pop    esi
   49882:	5a                   	pop    edx
   49883:	59                   	pop    ecx
   49884:	5b                   	pop    ebx
   49885:	c3                   	ret    
   49886:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   4988c:	8d 54 22 00          	lea    edx,[edx+eiz*1+0x0]

;-------------------------------------------------
;  Function 'erase'                              -
;-------------------------------------------------
erase:
   49890:	53                   	push   ebx
   49891:	51                   	push   ecx
   49892:	52                   	push   edx
   49893:	56                   	push   esi
   49894:	89 c6                	mov    esi,eax
   49896:	31 c9                	xor    ecx,ecx
   49898:	31 db                	xor    ebx,ebx
   4989a:	31 d2                	xor    edx,edx
   4989c:	8a 48 03             	mov    cl,BYTE PTR [eax+0x3]
   4989f:	8a 58 02             	mov    bl,BYTE PTR [eax+0x2]
   498a2:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
   498a5:	31 c0                	xor    eax,eax
   498a7:	8a 06                	mov    al,BYTE PTR [esi]
   498a9:	e8 72 fb ff ff       	call   text_erase
   498ae:	31 c0                	xor    eax,eax
   498b0:	31 c9                	xor    ecx,ecx
   498b2:	31 db                	xor    ebx,ebx
   498b4:	8a 86 08 01 00 00    	mov    al,BYTE PTR [esi+0x108]
   498ba:	31 d2                	xor    edx,edx
   498bc:	50                   	push   eax
   498bd:	31 c0                	xor    eax,eax
   498bf:	8a 4e 03             	mov    cl,BYTE PTR [esi+0x3]
   498c2:	8a 86 09 01 00 00    	mov    al,BYTE PTR [esi+0x109]
   498c8:	8a 5e 02             	mov    bl,BYTE PTR [esi+0x2]
   498cb:	50                   	push   eax
   498cc:	31 c0                	xor    eax,eax
   498ce:	8a 56 01             	mov    dl,BYTE PTR [esi+0x1]
   498d1:	8a 06                	mov    al,BYTE PTR [esi]
   498d3:	e8 18 fc ff ff       	call   text_color
   498d8:	5e                   	pop    esi
   498d9:	5a                   	pop    edx
   498da:	59                   	pop    ecx
   498db:	5b                   	pop    ebx
   498dc:	c3                   	ret    
   498dd:	8d 40 00             	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'save_background'                    -
;-------------------------------------------------
save_background:
   498e0:	53                   	push   ebx
   498e1:	51                   	push   ecx
   498e2:	52                   	push   edx
   498e3:	56                   	push   esi
   498e4:	57                   	push   edi
   498e5:	55                   	push   ebp
   498e6:	83 ec 08             	sub    esp,0x8
   498e9:	89 c6                	mov    esi,eax
   498eb:	8b 90 10 01 00 00    	mov    edx,DWORD PTR [eax+0x110]
   498f1:	31 c9                	xor    ecx,ecx
   498f3:	85 d2                	test   edx,edx
   498f5:	75 28                	jne    save_background_branch_1
   498f7:	8a 50 03             	mov    dl,BYTE PTR [eax+0x3]
   498fa:	31 c0                	xor    eax,eax
   498fc:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   498ff:	29 c2                	sub    edx,eax
   49901:	89 d0                	mov    eax,edx
   49903:	31 d2                	xor    edx,edx
   49905:	0f b6 3e             	movzx  edi,BYTE PTR [esi]
   49908:	8a 56 02             	mov    dl,BYTE PTR [esi+0x2]
   4990b:	29 fa                	sub    edx,edi
   4990d:	40                   	inc    eax
   4990e:	42                   	inc    edx
   4990f:	0f af c2             	imul   eax,edx
   49912:	01 c0                	add    eax,eax
   49914:	e8 7a 7b 02 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   49919:	89 86 10 01 00 00    	mov    DWORD PTR [esi+0x110],eax
save_background_branch_1:
   4991f:	83 be 10 01 00 00 00 	cmp    DWORD PTR [esi+0x110],0x0
   49926:	75 11                	jne    save_background_branch_2
   49928:	bb 78 ba 00 00       	mov    ebx,@obj3:text_box_cpp_variable_1                            ; fixup: num: 11603, src obj: 1, src ofs: 0x49929, dst obj: 3, dst ofs: 0xba78
   4992d:	ba 9f 00 00 00       	mov    edx,0x9f
   49932:	31 c0                	xor    eax,eax
   49934:	e8 f7 e6 fe ff       	call   _error_report
save_background_branch_2:
   49939:	31 c0                	xor    eax,eax
   4993b:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   4993e:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
   49942:	89 c2                	mov    edx,eax
   49944:	8d 04 85 00 00 00 00 	lea    eax,[eax*4+0x0]
   4994b:	01 d0                	add    eax,edx
   4994d:	c1 e0 05             	shl    eax,0x5
   49950:	2d a0 00 00 00       	sub    eax,0xa0
   49955:	89 04 24             	mov    DWORD PTR [esp],eax
   49958:	eb 14                	jmp    save_background_branch_4
save_background_branch_3:
   4995a:	8b 04 24             	mov    eax,DWORD PTR [esp]
   4995d:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
   49961:	05 a0 00 00 00       	add    eax,0xa0
   49966:	42                   	inc    edx
   49967:	89 04 24             	mov    DWORD PTR [esp],eax
   4996a:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
save_background_branch_4:
   4996e:	31 c0                	xor    eax,eax
   49970:	8b 7c 24 04          	mov    edi,DWORD PTR [esp+0x4]
   49974:	8a 46 03             	mov    al,BYTE PTR [esi+0x3]
   49977:	39 f8                	cmp    eax,edi
   49979:	7c 44                	jl     save_background_branch_7
   4997b:	31 c0                	xor    eax,eax
   4997d:	8a 06                	mov    al,BYTE PTR [esi]
   4997f:	8b 2c 24             	mov    ebp,DWORD PTR [esp]
   49982:	8d 14 45 00 00 00 00 	lea    edx,[eax*2+0x0]
   49989:	01 ea                	add    edx,ebp
   4998b:	eb 28                	jmp    save_background_branch_6
save_background_branch_5:
   4998d:	8b 3d 78 5a 02 00    	mov    edi,DWORD PTR ds:@obj3:text_VRAM_start                       ; fixup: num: 11602, src obj: 1, src ofs: 0x4998f, dst obj: 3, dst ofs: 0x25a78
   49993:	41                   	inc    ecx
   49994:	8b ae 10 01 00 00    	mov    ebp,DWORD PTR [esi+0x110]
   4999a:	8a 5c 3a fe          	mov    bl,BYTE PTR [edx+edi*1-0x2]
   4999e:	83 c2 02             	add    edx,0x2
   499a1:	88 5c 29 ff          	mov    BYTE PTR [ecx+ebp*1-0x1],bl
   499a5:	41                   	inc    ecx
   499a6:	8b ae 10 01 00 00    	mov    ebp,DWORD PTR [esi+0x110]
   499ac:	8a 5c 3a fd          	mov    bl,BYTE PTR [edx+edi*1-0x3]
   499b0:	40                   	inc    eax
   499b1:	88 5c 29 ff          	mov    BYTE PTR [ecx+ebp*1-0x1],bl
save_background_branch_6:
   499b5:	0f b6 7e 02          	movzx  edi,BYTE PTR [esi+0x2]
   499b9:	39 f8                	cmp    eax,edi
   499bb:	7f 9d                	jg     save_background_branch_3
   499bd:	eb ce                	jmp    save_background_branch_5
save_background_branch_7:
   499bf:	83 c4 08             	add    esp,0x8
   499c2:	5d                   	pop    ebp
   499c3:	5f                   	pop    edi
   499c4:	5e                   	pop    esi
   499c5:	5a                   	pop    edx
   499c6:	59                   	pop    ecx
   499c7:	5b                   	pop    ebx
   499c8:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   499ce:	8b d2                	mov    edx,edx

;-------------------------------------------------
;  Function 'restore_contents'                   -
;-------------------------------------------------
restore_contents:

;-------------------------------------------------
;  Function 'save_contents'                      -
;-------------------------------------------------
save_contents:
   499d0:	c3                   	ret    
   499d1:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   499d7:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
   499dd:	8d 40 00             	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'restore_background'                 -
;-------------------------------------------------
restore_background:
   499e0:	53                   	push   ebx
   499e1:	51                   	push   ecx
   499e2:	52                   	push   edx
   499e3:	56                   	push   esi
   499e4:	57                   	push   edi
   499e5:	55                   	push   ebp
   499e6:	83 ec 08             	sub    esp,0x8
   499e9:	89 c2                	mov    edx,eax
   499eb:	8b 9a 10 01 00 00    	mov    ebx,DWORD PTR [edx+0x110]
   499f1:	31 c0                	xor    eax,eax
   499f3:	85 db                	test   ebx,ebx
   499f5:	74 c8                	je     save_background_branch_7
   499f7:	31 db                	xor    ebx,ebx
   499f9:	8a 5a 01             	mov    bl,BYTE PTR [edx+0x1]
   499fc:	89 5c 24 04          	mov    DWORD PTR [esp+0x4],ebx
   49a00:	89 d9                	mov    ecx,ebx
   49a02:	8d 1c 9d 00 00 00 00 	lea    ebx,[ebx*4+0x0]
   49a09:	01 cb                	add    ebx,ecx
   49a0b:	c1 e3 05             	shl    ebx,0x5
   49a0e:	81 eb a0 00 00 00    	sub    ebx,0xa0
   49a14:	89 1c 24             	mov    DWORD PTR [esp],ebx
   49a17:	eb 15                	jmp    restore_background_branch_2
restore_background_branch_1:
   49a19:	8b 2c 24             	mov    ebp,DWORD PTR [esp]
   49a1c:	8b 5c 24 04          	mov    ebx,DWORD PTR [esp+0x4]
   49a20:	81 c5 a0 00 00 00    	add    ebp,0xa0
   49a26:	43                   	inc    ebx
   49a27:	89 2c 24             	mov    DWORD PTR [esp],ebp
   49a2a:	89 5c 24 04          	mov    DWORD PTR [esp+0x4],ebx
restore_background_branch_2:
   49a2e:	31 db                	xor    ebx,ebx
   49a30:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
   49a34:	8a 5a 03             	mov    bl,BYTE PTR [edx+0x3]
   49a37:	39 cb                	cmp    ebx,ecx
   49a39:	7c 84                	jl     save_background_branch_7
   49a3b:	31 db                	xor    ebx,ebx
   49a3d:	8a 1a                	mov    bl,BYTE PTR [edx]
   49a3f:	8b 3c 24             	mov    edi,DWORD PTR [esp]
   49a42:	8d 34 5d 00 00 00 00 	lea    esi,[ebx*2+0x0]
   49a49:	01 fe                	add    esi,edi
   49a4b:	31 c9                	xor    ecx,ecx
   49a4d:	8a 4a 02             	mov    cl,BYTE PTR [edx+0x2]
   49a50:	39 cb                	cmp    ebx,ecx
   49a52:	7f c5                	jg     restore_background_branch_1
restore_background_branch_3:
   49a54:	8b 8a 10 01 00 00    	mov    ecx,DWORD PTR [edx+0x110]
   49a5a:	8b 3d 78 5a 02 00    	mov    edi,DWORD PTR ds:@obj3:text_VRAM_start                       ; fixup: num: 11604, src obj: 1, src ofs: 0x49a5c, dst obj: 3, dst ofs: 0x25a78
   49a60:	8a 0c 01             	mov    cl,BYTE PTR [ecx+eax*1]
   49a63:	88 4c 37 fe          	mov    BYTE PTR [edi+esi*1-0x2],cl
   49a67:	40                   	inc    eax
   49a68:	8b 8a 10 01 00 00    	mov    ecx,DWORD PTR [edx+0x110]
   49a6e:	83 c6 02             	add    esi,0x2
   49a71:	43                   	inc    ebx
   49a72:	8a 0c 01             	mov    cl,BYTE PTR [ecx+eax*1]
   49a75:	40                   	inc    eax
   49a76:	88 4c 37 fd          	mov    BYTE PTR [edi+esi*1-0x3],cl
   49a7a:	31 c9                	xor    ecx,ecx
   49a7c:	8a 4a 02             	mov    cl,BYTE PTR [edx+0x2]
   49a7f:	39 cb                	cmp    ebx,ecx
   49a81:	7f 96                	jg     restore_background_branch_1
   49a83:	eb cf                	jmp    restore_background_branch_3
   49a85:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   49a8b:	8d 52 00             	lea    edx,[edx+0x0]
   49a8e:	8b db                	mov    ebx,ebx

;-------------------------------------------------
;  Function 'refresh_mod_81'                     -
;-------------------------------------------------
refresh_mod_81:
   49a90:	53                   	push   ebx
   49a91:	51                   	push   ecx
   49a92:	52                   	push   edx
   49a93:	56                   	push   esi
   49a94:	57                   	push   edi
   49a95:	55                   	push   ebp
   49a96:	83 ec 04             	sub    esp,0x4
   49a99:	ba 01 00 00 00       	mov    edx,0x1
   49a9e:	89 c6                	mov    esi,eax
   49aa0:	0f b6 38             	movzx  edi,BYTE PTR [eax]
   49aa3:	31 c9                	xor    ecx,ecx
   49aa5:	31 db                	xor    ebx,ebx
   49aa7:	8a 48 01             	mov    cl,BYTE PTR [eax+0x1]
refresh_mod_81_branch_1:
   49aaa:	0f b6 6e 04          	movzx  ebp,BYTE PTR [esi+0x4]
   49aae:	b0 20                	mov    al,0x20
   49ab0:	83 fd 01             	cmp    ebp,0x1
   49ab3:	75 0c                	jne    refresh_mod_81_branch_3
   49ab5:	85 d2                	test   edx,edx
   49ab7:	74 04                	je     refresh_mod_81_branch_2
   49ab9:	b0 c4                	mov    al,0xc4
   49abb:	eb 13                	jmp    refresh_mod_81_branch_5
refresh_mod_81_branch_2:
   49abd:	b0 b3                	mov    al,0xb3
   49abf:	eb 0f                	jmp    refresh_mod_81_branch_5
refresh_mod_81_branch_3:
   49ac1:	83 fd 02             	cmp    ebp,0x2
   49ac4:	75 0a                	jne    refresh_mod_81_branch_5
   49ac6:	85 d2                	test   edx,edx
   49ac8:	74 04                	je     refresh_mod_81_branch_4
   49aca:	b0 cd                	mov    al,0xcd
   49acc:	eb 02                	jmp    refresh_mod_81_branch_5
refresh_mod_81_branch_4:
   49ace:	b0 ba                	mov    al,0xba
refresh_mod_81_branch_5:
   49ad0:	83 fa 01             	cmp    edx,0x1
   49ad3:	75 22                	jne    refresh_mod_81_branch_7
   49ad5:	0f b6 6e 02          	movzx  ebp,BYTE PTR [esi+0x2]
   49ad9:	39 ef                	cmp    edi,ebp
   49adb:	75 1a                	jne    refresh_mod_81_branch_7
   49add:	bb 01 00 00 00       	mov    ebx,0x1
   49ae2:	0f b6 6e 04          	movzx  ebp,BYTE PTR [esi+0x4]
   49ae6:	31 d2                	xor    edx,edx
   49ae8:	39 dd                	cmp    ebp,ebx
   49aea:	75 04                	jne    refresh_mod_81_branch_6
   49aec:	b0 bf                	mov    al,0xbf
   49aee:	eb 07                	jmp    refresh_mod_81_branch_7
refresh_mod_81_branch_6:
   49af0:	83 fd 02             	cmp    ebp,0x2
   49af3:	75 02                	jne    refresh_mod_81_branch_7
   49af5:	b0 bb                	mov    al,0xbb
refresh_mod_81_branch_7:
   49af7:	83 fb 01             	cmp    ebx,0x1
   49afa:	75 23                	jne    refresh_mod_81_branch_9
   49afc:	0f b6 6e 03          	movzx  ebp,BYTE PTR [esi+0x3]
   49b00:	39 e9                	cmp    ecx,ebp
   49b02:	75 1b                	jne    refresh_mod_81_branch_9
   49b04:	ba ff ff ff ff       	mov    edx,0xffffffff
   49b09:	0f b6 6e 04          	movzx  ebp,BYTE PTR [esi+0x4]
   49b0d:	31 db                	xor    ebx,ebx
   49b0f:	83 fd 01             	cmp    ebp,0x1
   49b12:	75 04                	jne    refresh_mod_81_branch_8
   49b14:	b0 d9                	mov    al,0xd9
   49b16:	eb 07                	jmp    refresh_mod_81_branch_9
refresh_mod_81_branch_8:
   49b18:	83 fd 02             	cmp    ebp,0x2
   49b1b:	75 02                	jne    refresh_mod_81_branch_9
   49b1d:	b0 bc                	mov    al,0xbc
refresh_mod_81_branch_9:
   49b1f:	83 fa ff             	cmp    edx,0xffffffff
   49b22:	75 22                	jne    refresh_mod_81_branch_11
   49b24:	0f b6 2e             	movzx  ebp,BYTE PTR [esi]
   49b27:	39 ef                	cmp    edi,ebp
   49b29:	75 1b                	jne    refresh_mod_81_branch_11
   49b2b:	bb ff ff ff ff       	mov    ebx,0xffffffff
   49b30:	0f b6 6e 04          	movzx  ebp,BYTE PTR [esi+0x4]
   49b34:	31 d2                	xor    edx,edx
   49b36:	83 fd 01             	cmp    ebp,0x1
   49b39:	75 04                	jne    refresh_mod_81_branch_10
   49b3b:	b0 c0                	mov    al,0xc0
   49b3d:	eb 07                	jmp    refresh_mod_81_branch_11
refresh_mod_81_branch_10:
   49b3f:	83 fd 02             	cmp    ebp,0x2
   49b42:	75 02                	jne    refresh_mod_81_branch_11
   49b44:	b0 c8                	mov    al,0xc8
refresh_mod_81_branch_11:
   49b46:	83 fb ff             	cmp    ebx,0xffffffff
   49b49:	75 1e                	jne    refresh_mod_81_branch_13
   49b4b:	0f b6 6e 01          	movzx  ebp,BYTE PTR [esi+0x1]
   49b4f:	39 e9                	cmp    ecx,ebp
   49b51:	75 16                	jne    refresh_mod_81_branch_13
   49b53:	0f b6 6e 04          	movzx  ebp,BYTE PTR [esi+0x4]
   49b57:	83 fd 01             	cmp    ebp,0x1
   49b5a:	75 02                	jne    refresh_mod_81_branch_12
   49b5c:	b0 da                	mov    al,0xda
refresh_mod_81_branch_12:
   49b5e:	0f b6 6e 04          	movzx  ebp,BYTE PTR [esi+0x4]
   49b62:	83 fd 02             	cmp    ebp,0x2
   49b65:	75 02                	jne    refresh_mod_81_branch_13
   49b67:	b0 c9                	mov    al,0xc9
refresh_mod_81_branch_13:
   49b69:	8d 69 ff             	lea    ebp,[ecx-0x1]
   49b6c:	6b ed 50             	imul   ebp,ebp,0x50
   49b6f:	01 fd                	add    ebp,edi
   49b71:	01 ed                	add    ebp,ebp
   49b73:	89 2c 24             	mov    DWORD PTR [esp],ebp
   49b76:	8b 2d 78 5a 02 00    	mov    ebp,DWORD PTR ds:@obj3:text_VRAM_start                       ; fixup: num: 11605, src obj: 1, src ofs: 0x49b78, dst obj: 3, dst ofs: 0x25a78
   49b7c:	01 d9                	add    ecx,ebx
   49b7e:	03 2c 24             	add    ebp,DWORD PTR [esp]
   49b81:	01 d7                	add    edi,edx
   49b83:	88 45 fe             	mov    BYTE PTR [ebp-0x2],al
   49b86:	83 fb ff             	cmp    ebx,0xffffffff
   49b89:	0f 85 1b ff ff ff    	jne    refresh_mod_81_branch_1
   49b8f:	31 c0                	xor    eax,eax
   49b91:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   49b94:	39 c1                	cmp    ecx,eax
   49b96:	0f 8d 0e ff ff ff    	jge    refresh_mod_81_branch_1
   49b9c:	80 7e 05 00          	cmp    BYTE PTR [esi+0x5],0x0
   49ba0:	74 4a                	je     refresh_mod_81_branch_14
   49ba2:	31 c9                	xor    ecx,ecx
   49ba4:	8d 7e 05             	lea    edi,[esi+0x5]
   49ba7:	8a 0e                	mov    cl,BYTE PTR [esi]
   49ba9:	89 c2                	mov    edx,eax
   49bab:	41                   	inc    ecx
   49bac:	89 fb                	mov    ebx,edi
   49bae:	89 c8                	mov    eax,ecx
   49bb0:	e8 db f8 ff ff       	call   text_puts
   49bb5:	31 c0                	xor    eax,eax
   49bb7:	8a 86 06 01 00 00    	mov    al,BYTE PTR [esi+0x106]
   49bbd:	50                   	push   eax
   49bbe:	31 c0                	xor    eax,eax
   49bc0:	0f b6 6e 01          	movzx  ebp,BYTE PTR [esi+0x1]
   49bc4:	8a 86 07 01 00 00    	mov    al,BYTE PTR [esi+0x107]
   49bca:	31 db                	xor    ebx,ebx
   49bcc:	50                   	push   eax
   49bcd:	31 d2                	xor    edx,edx
   49bcf:	8a 1e                	mov    bl,BYTE PTR [esi]
   49bd1:	29 c9                	sub    ecx,ecx
   49bd3:	49                   	dec    ecx
   49bd4:	31 c0                	xor    eax,eax
   49bd6:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
   49bd8:	f7 d1                	not    ecx
   49bda:	49                   	dec    ecx
   49bdb:	8a 56 01             	mov    dl,BYTE PTR [esi+0x1]
   49bde:	31 c0                	xor    eax,eax
   49be0:	01 cb                	add    ebx,ecx
   49be2:	8a 06                	mov    al,BYTE PTR [esi]
   49be4:	89 e9                	mov    ecx,ebp
   49be6:	40                   	inc    eax
   49be7:	e8 04 f9 ff ff       	call   text_color
refresh_mod_81_branch_14:
   49bec:	83 c4 04             	add    esp,0x4
   49bef:	5d                   	pop    ebp
   49bf0:	5f                   	pop    edi
   49bf1:	5e                   	pop    esi
   49bf2:	5a                   	pop    edx
   49bf3:	59                   	pop    ecx
   49bf4:	5b                   	pop    ebx
   49bf5:	c3                   	ret    
;-------------------------------------------------
;  Bad code 81 (zero after ret):                 -
;-------------------------------------------------
;  49bf4:	5b                   	pop    ebx
;  49bf5:	c3                   	ret    
;  49bf6:	00 00                	add    BYTE PTR [eax],al
;  49bf8:	00 00                	add    BYTE PTR [eax],al
;-------------------------------------------------
;  Padding data (10 bytes):                      -
;-------------------------------------------------
   49bf6:	00 00 00 00 00 00 .. 	db     10 dup(0x00)
;-------------------------------------------------
;  End of bad code 81                            -
;-------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 81 (D:\SOURCE\text_box.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 81: D:\SOURCE\text_box.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------
text_box_cpp_variable_1:
    ba78:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 81 (D:\SOURCE\text_box.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------