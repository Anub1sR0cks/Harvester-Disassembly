;-------------------------------------------------------------------------------
;                                                                              -
;  Module 92: D:\SOURCE\environ.cpp                                            -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function '.fn_init_mod_92'                    -
;-------------------------------------------------
.fn_init_mod_92:
   6d570:	53                   	push   ebx
   6d571:	51                   	push   ecx
   6d572:	52                   	push   edx
   6d573:	56                   	push   esi
   6d574:	57                   	push   edi
   6d575:	81 ec 00 01 00 00    	sub    esp,0x100
   6d57b:	b8 b8 40 01 00       	mov    eax,@obj3:environ_cpp_variable_14                            ; fixup: num: 18872, src obj: 1, src ofs: 0x6d57c, dst obj: 3, dst ofs: 0x140b8
   6d580:	e8 4d 4b 00 00       	call   __wcpp_2_mod_register__
   6d585:	ba fc fa 00 00       	mov    edx,@obj3:environ_cpp_variable_1                             ; fixup: num: 18871, src obj: 1, src ofs: 0x6d586, dst obj: 3, dst ofs: 0xfafc
   6d58a:	30 e4                	xor    ah,ah
   6d58c:	31 db                	xor    ebx,ebx
   6d58e:	88 25 44 24 03 00    	mov    BYTE PTR ds:@obj3:configuration_environment_variable_3,ah    ; fixup: num: 18870, src obj: 1, src ofs: 0x6d590, dst obj: 3, dst ofs: 0x32444
   6d594:	89 15 40 24 03 00    	mov    DWORD PTR ds:@obj3:configuration_environment_variable_2,edx  ; fixup: num: 18869, src obj: 1, src ofs: 0x6d596, dst obj: 3, dst ofs: 0x32440
   6d59a:	89 1d 3c 24 03 00    	mov    DWORD PTR ds:@obj3:configuration_environment_variable_1,ebx  ; fixup: num: 18868, src obj: 1, src ofs: 0x6d59c, dst obj: 3, dst ofs: 0x3243c
   6d5a0:	ba 07 fb 00 00       	mov    edx,@obj3:environ_cpp_variable_2                             ; fixup: num: 18867, src obj: 1, src ofs: 0x6d5a1, dst obj: 3, dst ofs: 0xfb07
   6d5a5:	b8 fc fa 00 00       	mov    eax,@obj3:environ_cpp_variable_1                             ; fixup: num: 18866, src obj: 1, src ofs: 0x6d5a6, dst obj: 3, dst ofs: 0xfafc
   6d5aa:	89 1d 38 24 03 00    	mov    DWORD PTR ds:@obj3:configuration_environment,ebx             ; fixup: num: 18865, src obj: 1, src ofs: 0x6d5ac, dst obj: 3, dst ofs: 0x32438
   6d5b0:	e8 f3 37 00 00       	call   fopen_
   6d5b5:	89 c6                	mov    esi,eax
   6d5b7:	85 c0                	test   eax,eax
   6d5b9:	0f 84 61 00 00 00    	je     .fn_init_mod_92_branch_6
.fn_init_mod_92_branch_1:
   6d5bf:	f6 46 0c 10          	test   BYTE PTR [esi+0xc],0x10
   6d5c3:	75 54                	jne    .fn_init_mod_92_branch_5
   6d5c5:	ba ff 00 00 00       	mov    edx,0xff
   6d5ca:	89 e0                	mov    eax,esp
   6d5cc:	89 f3                	mov    ebx,esi
   6d5ce:	e8 1d 58 00 00       	call   fgets_
   6d5d3:	8a 34 24             	mov    dh,BYTE PTR [esp]
   6d5d6:	89 e3                	mov    ebx,esp
   6d5d8:	84 f6                	test   dh,dh
   6d5da:	74 0d                	je     .fn_init_mod_92_branch_3
.fn_init_mod_92_branch_2:
   6d5dc:	80 3b 3d             	cmp    BYTE PTR [ebx],0x3d
   6d5df:	74 08                	je     .fn_init_mod_92_branch_3
   6d5e1:	8a 4b 01             	mov    cl,BYTE PTR [ebx+0x1]
   6d5e4:	43                   	inc    ebx
   6d5e5:	84 c9                	test   cl,cl
   6d5e7:	75 f3                	jne    .fn_init_mod_92_branch_2
.fn_init_mod_92_branch_3:
   6d5e9:	80 3b 00             	cmp    BYTE PTR [ebx],0x0
   6d5ec:	74 d1                	je     .fn_init_mod_92_branch_1
   6d5ee:	c6 03 00             	mov    BYTE PTR [ebx],0x0
   6d5f1:	43                   	inc    ebx
   6d5f2:	74 cb                	je     .fn_init_mod_92_branch_1
   6d5f4:	f6 46 0c 10          	test   BYTE PTR [esi+0xc],0x10
   6d5f8:	75 11                	jne    .fn_init_mod_92_branch_4
   6d5fa:	89 df                	mov    edi,ebx
   6d5fc:	29 c9                	sub    ecx,ecx
   6d5fe:	49                   	dec    ecx
   6d5ff:	31 c0                	xor    eax,eax
   6d601:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
   6d603:	f7 d1                	not    ecx
   6d605:	49                   	dec    ecx
   6d606:	c6 44 19 ff 00       	mov    BYTE PTR [ecx+ebx*1-0x1],0x0
.fn_init_mod_92_branch_4:
   6d60b:	89 e2                	mov    edx,esp
   6d60d:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 18864, src obj: 1, src ofs: 0x6d60e, dst obj: 3, dst ofs: 0x32438
   6d612:	e8 59 02 00 00       	call   set
   6d617:	eb a6                	jmp    .fn_init_mod_92_branch_1
.fn_init_mod_92_branch_5:
   6d619:	89 f0                	mov    eax,esi
   6d61b:	e8 1e 38 00 00       	call   fclose_
.fn_init_mod_92_branch_6:
   6d620:	c7 05 c0 40 01 00 01 00 00 00 	mov    DWORD PTR ds:@obj3:environ_cpp_variable_15,0x1      ; fixup: num: 18874, src obj: 1, src ofs: 0x6d622, dst obj: 3, dst ofs: 0x140c0
   6d62a:	81 c4 00 01 00 00    	add    esp,0x100
   6d630:	5f                   	pop    edi
   6d631:	5e                   	pop    esi
   6d632:	5a                   	pop    edx
   6d633:	59                   	pop    ecx
   6d634:	5b                   	pop    ebx
   6d635:	c3                   	ret    
   6d636:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   6d63c:	8d 54 22 00          	lea    edx,[edx+eiz*1+0x0]

;-------------------------------------------------
;  Function 'W?$ct:environment$n()_'             -
;-------------------------------------------------
W?$ct:environment$n()_:
   6d640:	c6 40 0c 00          	mov    BYTE PTR [eax+0xc],0x0
   6d644:	c7 40 08 00 00 00 00 	mov    DWORD PTR [eax+0x8],0x0
   6d64b:	c7 40 04 00 00 00 00 	mov    DWORD PTR [eax+0x4],0x0
   6d652:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
   6d658:	c3                   	ret    
   6d659:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   6d65f:	90                   	nop

;-------------------------------------------------
;  Function 'W?$ct:environment$n(pna)_'          -
;-------------------------------------------------
W?$ct:environment$n(pna)_:
   6d660:	53                   	push   ebx
   6d661:	51                   	push   ecx
   6d662:	56                   	push   esi
   6d663:	57                   	push   edi
   6d664:	55                   	push   ebp
   6d665:	81 ec 00 01 00 00    	sub    esp,0x100
   6d66b:	89 c5                	mov    ebp,eax
   6d66d:	c6 40 0c 00          	mov    BYTE PTR [eax+0xc],0x0
   6d671:	c7 40 04 00 00 00 00 	mov    DWORD PTR [eax+0x4],0x0
   6d678:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
   6d67e:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
   6d681:	ba 07 fb 00 00       	mov    edx,@obj3:environ_cpp_variable_2                             ; fixup: num: 18873, src obj: 1, src ofs: 0x6d682, dst obj: 3, dst ofs: 0xfb07
   6d686:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
   6d689:	e8 1a 37 00 00       	call   fopen_
   6d68e:	89 c6                	mov    esi,eax
   6d690:	85 c0                	test   eax,eax
   6d692:	74 5e                	je     W?$ct:environment$n(pna)__branch_6
W?$ct:environment$n(pna)__branch_1:
   6d694:	f6 46 0c 10          	test   BYTE PTR [esi+0xc],0x10
   6d698:	75 51                	jne    W?$ct:environment$n(pna)__branch_5
   6d69a:	ba ff 00 00 00       	mov    edx,0xff
   6d69f:	89 e0                	mov    eax,esp
   6d6a1:	89 f3                	mov    ebx,esi
   6d6a3:	e8 48 57 00 00       	call   fgets_
   6d6a8:	8a 14 24             	mov    dl,BYTE PTR [esp]
   6d6ab:	89 e3                	mov    ebx,esp
   6d6ad:	84 d2                	test   dl,dl
   6d6af:	74 0d                	je     W?$ct:environment$n(pna)__branch_3
W?$ct:environment$n(pna)__branch_2:
   6d6b1:	80 3b 3d             	cmp    BYTE PTR [ebx],0x3d
   6d6b4:	74 08                	je     W?$ct:environment$n(pna)__branch_3
   6d6b6:	8a 73 01             	mov    dh,BYTE PTR [ebx+0x1]
   6d6b9:	43                   	inc    ebx
   6d6ba:	84 f6                	test   dh,dh
   6d6bc:	75 f3                	jne    W?$ct:environment$n(pna)__branch_2
W?$ct:environment$n(pna)__branch_3:
   6d6be:	80 3b 00             	cmp    BYTE PTR [ebx],0x0
   6d6c1:	74 d1                	je     W?$ct:environment$n(pna)__branch_1
   6d6c3:	c6 03 00             	mov    BYTE PTR [ebx],0x0
   6d6c6:	43                   	inc    ebx
   6d6c7:	74 cb                	je     W?$ct:environment$n(pna)__branch_1
   6d6c9:	f6 46 0c 10          	test   BYTE PTR [esi+0xc],0x10
   6d6cd:	75 11                	jne    W?$ct:environment$n(pna)__branch_4
   6d6cf:	89 df                	mov    edi,ebx
   6d6d1:	29 c9                	sub    ecx,ecx
   6d6d3:	49                   	dec    ecx
   6d6d4:	31 c0                	xor    eax,eax
   6d6d6:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
   6d6d8:	f7 d1                	not    ecx
   6d6da:	49                   	dec    ecx
   6d6db:	c6 44 19 ff 00       	mov    BYTE PTR [ecx+ebx*1-0x1],0x0
W?$ct:environment$n(pna)__branch_4:
   6d6e0:	89 e2                	mov    edx,esp
   6d6e2:	89 e8                	mov    eax,ebp
   6d6e4:	e8 87 01 00 00       	call   set
   6d6e9:	eb a9                	jmp    W?$ct:environment$n(pna)__branch_1
W?$ct:environment$n(pna)__branch_5:
   6d6eb:	89 f0                	mov    eax,esi
   6d6ed:	e8 4c 37 00 00       	call   fclose_
W?$ct:environment$n(pna)__branch_6:
   6d6f2:	89 e8                	mov    eax,ebp
   6d6f4:	81 c4 00 01 00 00    	add    esp,0x100
   6d6fa:	5d                   	pop    ebp
   6d6fb:	5f                   	pop    edi
   6d6fc:	5e                   	pop    esi
   6d6fd:	59                   	pop    ecx
   6d6fe:	5b                   	pop    ebx
   6d6ff:	c3                   	ret    

;-------------------------------------------------
;  Function 'W?$dt:environment$n()_'             -
;-------------------------------------------------
W?$dt:environment$n()_:
   6d700:	53                   	push   ebx
   6d701:	51                   	push   ecx
   6d702:	56                   	push   esi
   6d703:	57                   	push   edi
   6d704:	55                   	push   ebp
   6d705:	81 ec 00 01 00 00    	sub    esp,0x100
   6d70b:	89 c5                	mov    ebp,eax
   6d70d:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
   6d710:	85 d2                	test   edx,edx
   6d712:	0f 84 76 00 00 00    	je     W?$dt:environment$n()__branch_4
   6d718:	89 d0                	mov    eax,edx
   6d71a:	e8 61 38 00 00       	call   unlink_
   6d71f:	8b 5d 04             	mov    ebx,DWORD PTR [ebp+0x4]
   6d722:	85 db                	test   ebx,ebx
   6d724:	74 68                	je     W?$dt:environment$n()__branch_4
   6d726:	80 7d 0c 00          	cmp    BYTE PTR [ebp+0xc],0x0
   6d72a:	75 62                	jne    W?$dt:environment$n()__branch_4
   6d72c:	ba 0a fb 00 00       	mov    edx,@obj3:environ_cpp_variable_3                             ; fixup: num: 18876, src obj: 1, src ofs: 0x6d72d, dst obj: 3, dst ofs: 0xfb0a
   6d731:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
   6d734:	e8 6f 36 00 00       	call   fopen_
   6d739:	89 c6                	mov    esi,eax
   6d73b:	85 db                	test   ebx,ebx
   6d73d:	74 48                	je     W?$dt:environment$n()__branch_3
W?$dt:environment$n()__branch_1:
   6d73f:	8b 4b 04             	mov    ecx,DWORD PTR [ebx+0x4]
   6d742:	51                   	push   ecx
   6d743:	8b 3b                	mov    edi,DWORD PTR [ebx]
   6d745:	57                   	push   edi
   6d746:	68 0e fb 00 00       	push   @obj3:environ_cpp_variable_4                                 ; fixup: num: 18875, src obj: 1, src ofs: 0x6d747, dst obj: 3, dst ofs: 0xfb0e
   6d74b:	8d 44 24 0c          	lea    eax,[esp+0xc]
   6d74f:	50                   	push   eax
   6d750:	89 f2                	mov    edx,esi
   6d752:	e8 8a 34 00 00       	call   sprintf_
   6d757:	83 c4 10             	add    esp,0x10
   6d75a:	89 e0                	mov    eax,esp
   6d75c:	89 e7                	mov    edi,esp
   6d75e:	e8 4f 95 00 00       	call   fputs_
   6d763:	29 c9                	sub    ecx,ecx
   6d765:	49                   	dec    ecx
   6d766:	31 c0                	xor    eax,eax
   6d768:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
   6d76a:	f7 d1                	not    ecx
   6d76c:	49                   	dec    ecx
   6d76d:	80 7c 0c ff 0a       	cmp    BYTE PTR [esp+ecx*1-0x1],0xa
   6d772:	74 0c                	je     W?$dt:environment$n()__branch_2
   6d774:	b8 0a 00 00 00       	mov    eax,0xa
   6d779:	89 f2                	mov    edx,esi
   6d77b:	e8 b3 95 00 00       	call   fputc_
W?$dt:environment$n()__branch_2:
   6d780:	8b 5b 08             	mov    ebx,DWORD PTR [ebx+0x8]
   6d783:	85 db                	test   ebx,ebx
   6d785:	75 b8                	jne    W?$dt:environment$n()__branch_1
W?$dt:environment$n()__branch_3:
   6d787:	89 f0                	mov    eax,esi
   6d789:	e8 b0 36 00 00       	call   fclose_
W?$dt:environment$n()__branch_4:
   6d78e:	8b 55 04             	mov    edx,DWORD PTR [ebp+0x4]
   6d791:	85 d2                	test   edx,edx
   6d793:	74 1f                	je     W?$dt:environment$n()__branch_6
W?$dt:environment$n()__branch_5:
   6d795:	8b 02                	mov    eax,DWORD PTR [edx]
   6d797:	8b 5a 08             	mov    ebx,DWORD PTR [edx+0x8]
   6d79a:	e8 49 3c 00 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   6d79f:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
   6d7a2:	e8 41 3c 00 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   6d7a7:	89 d0                	mov    eax,edx
   6d7a9:	e8 3a 3c 00 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   6d7ae:	89 da                	mov    edx,ebx
   6d7b0:	85 db                	test   ebx,ebx
   6d7b2:	75 e1                	jne    W?$dt:environment$n()__branch_5
W?$dt:environment$n()__branch_6:
   6d7b4:	89 e8                	mov    eax,ebp
   6d7b6:	81 c4 00 01 00 00    	add    esp,0x100
   6d7bc:	5d                   	pop    ebp
   6d7bd:	5f                   	pop    edi
   6d7be:	5e                   	pop    esi
   6d7bf:	59                   	pop    ecx
   6d7c0:	5b                   	pop    ebx
   6d7c1:	c3                   	ret    
   6d7c2:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   6d7c8:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
   6d7ce:	8b c0                	mov    eax,eax

;-------------------------------------------------
;  Function 'get'                                -
;-------------------------------------------------
get:
   6d7d0:	53                   	push   ebx
   6d7d1:	51                   	push   ecx
   6d7d2:	89 d1                	mov    ecx,edx
   6d7d4:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
   6d7d7:	85 d2                	test   edx,edx
   6d7d9:	74 1e                	je     get_branch_3
   6d7db:	89 d3                	mov    ebx,edx
   6d7dd:	74 1a                	je     get_branch_3
get_branch_1:
   6d7df:	89 c8                	mov    eax,ecx
   6d7e1:	8b 13                	mov    edx,DWORD PTR [ebx]
   6d7e3:	e8 72 3c 00 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   6d7e8:	85 c0                	test   eax,eax
   6d7ea:	75 06                	jne    get_branch_2
   6d7ec:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
   6d7ef:	59                   	pop    ecx
   6d7f0:	5b                   	pop    ebx
   6d7f1:	c3                   	ret    
get_branch_2:
   6d7f2:	8b 5b 08             	mov    ebx,DWORD PTR [ebx+0x8]
   6d7f5:	85 db                	test   ebx,ebx
   6d7f7:	75 e6                	jne    get_branch_1
get_branch_3:
   6d7f9:	31 c0                	xor    eax,eax
   6d7fb:	59                   	pop    ecx
   6d7fc:	5b                   	pop    ebx
   6d7fd:	c3                   	ret    
   6d7fe:	8b c0                	mov    eax,eax

;-------------------------------------------------
;  Function 'getn'                               -
;-------------------------------------------------
getn:
   6d800:	53                   	push   ebx
   6d801:	51                   	push   ecx
   6d802:	56                   	push   esi
   6d803:	57                   	push   edi
   6d804:	89 c6                	mov    esi,eax
   6d806:	89 d7                	mov    edi,edx
   6d808:	89 d1                	mov    ecx,edx
   6d80a:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
   6d80d:	85 d2                	test   edx,edx
   6d80f:	74 1d                	je     getn_branch_3
   6d811:	89 d3                	mov    ebx,edx
   6d813:	74 19                	je     getn_branch_3
getn_branch_1:
   6d815:	89 c8                	mov    eax,ecx
   6d817:	8b 13                	mov    edx,DWORD PTR [ebx]
   6d819:	e8 3c 3c 00 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   6d81e:	85 c0                	test   eax,eax
   6d820:	75 05                	jne    getn_branch_2
   6d822:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
   6d825:	eb 09                	jmp    getn_branch_4
getn_branch_2:
   6d827:	8b 5b 08             	mov    ebx,DWORD PTR [ebx+0x8]
   6d82a:	85 db                	test   ebx,ebx
   6d82c:	75 e7                	jne    getn_branch_1
getn_branch_3:
   6d82e:	31 c0                	xor    eax,eax
getn_branch_4:
   6d830:	85 c0                	test   eax,eax
   6d832:	74 30                	je     getn_branch_9
   6d834:	8b 5e 04             	mov    ebx,DWORD PTR [esi+0x4]
   6d837:	89 f9                	mov    ecx,edi
   6d839:	85 db                	test   ebx,ebx
   6d83b:	74 1b                	je     getn_branch_7
   6d83d:	74 19                	je     getn_branch_7
getn_branch_5:
   6d83f:	89 c8                	mov    eax,ecx
   6d841:	8b 13                	mov    edx,DWORD PTR [ebx]
   6d843:	e8 12 3c 00 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   6d848:	85 c0                	test   eax,eax
   6d84a:	75 05                	jne    getn_branch_6
   6d84c:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
   6d84f:	eb 09                	jmp    getn_branch_8
getn_branch_6:
   6d851:	8b 5b 08             	mov    ebx,DWORD PTR [ebx+0x8]
   6d854:	85 db                	test   ebx,ebx
   6d856:	75 e7                	jne    getn_branch_5
getn_branch_7:
   6d858:	31 c0                	xor    eax,eax
getn_branch_8:
   6d85a:	e8 75 91 00 00       	call   atoi_
   6d85f:	5f                   	pop    edi
   6d860:	5e                   	pop    esi
   6d861:	59                   	pop    ecx
   6d862:	5b                   	pop    ebx
   6d863:	c3                   	ret    
getn_branch_9:
   6d864:	b8 ff ff ff ff       	mov    eax,0xffffffff
   6d869:	5f                   	pop    edi
   6d86a:	5e                   	pop    esi
   6d86b:	59                   	pop    ecx
   6d86c:	5b                   	pop    ebx
   6d86d:	c3                   	ret    
   6d86e:	8b c0                	mov    eax,eax

;-------------------------------------------------
;  Function 'set'                                -
;-------------------------------------------------
set:
   6d870:	51                   	push   ecx
   6d871:	56                   	push   esi
   6d872:	57                   	push   edi
   6d873:	55                   	push   ebp
   6d874:	83 ec 0c             	sub    esp,0xc
   6d877:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
   6d87b:	89 d5                	mov    ebp,edx
   6d87d:	89 5c 24 04          	mov    DWORD PTR [esp+0x4],ebx
   6d881:	53                   	push   ebx
   6d882:	52                   	push   edx
   6d883:	68 14 fb 00 00       	push   @obj3:environ_cpp_variable_5                                 ; fixup: num: 18878, src obj: 1, src ofs: 0x6d884, dst obj: 3, dst ofs: 0xfb14
   6d888:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 18877, src obj: 1, src ofs: 0x6d889, dst obj: 3, dst ofs: 0x237fc
   6d88d:	e8 4f 33 00 00       	call   sprintf_
   6d892:	83 c4 10             	add    esp,0x10
   6d895:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
   6d899:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
   6d89c:	89 d3                	mov    ebx,edx
   6d89e:	85 c9                	test   ecx,ecx
   6d8a0:	74 1d                	je     set_branch_3
   6d8a2:	89 ce                	mov    esi,ecx
   6d8a4:	74 19                	je     set_branch_3
set_branch_1:
   6d8a6:	89 d8                	mov    eax,ebx
   6d8a8:	8b 16                	mov    edx,DWORD PTR [esi]
   6d8aa:	e8 ab 3b 00 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   6d8af:	85 c0                	test   eax,eax
   6d8b1:	75 05                	jne    set_branch_2
   6d8b3:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
   6d8b6:	eb 09                	jmp    set_branch_4
set_branch_2:
   6d8b8:	8b 76 08             	mov    esi,DWORD PTR [esi+0x8]
   6d8bb:	85 f6                	test   esi,esi
   6d8bd:	75 e7                	jne    set_branch_1
set_branch_3:
   6d8bf:	31 c0                	xor    eax,eax
set_branch_4:
   6d8c1:	85 c0                	test   eax,eax
   6d8c3:	0f 84 c1 00 00 00    	je     set_branch_14
   6d8c9:	8b 74 24 08          	mov    esi,DWORD PTR [esp+0x8]
   6d8cd:	8b 76 04             	mov    esi,DWORD PTR [esi+0x4]
   6d8d0:	31 ff                	xor    edi,edi
   6d8d2:	85 f6                	test   esi,esi
   6d8d4:	74 16                	je     set_branch_6
set_branch_5:
   6d8d6:	89 e8                	mov    eax,ebp
   6d8d8:	8b 16                	mov    edx,DWORD PTR [esi]
   6d8da:	e8 51 8b 00 00       	call   strcmp_
   6d8df:	85 c0                	test   eax,eax
   6d8e1:	74 09                	je     set_branch_6
   6d8e3:	89 f7                	mov    edi,esi
   6d8e5:	8b 76 08             	mov    esi,DWORD PTR [esi+0x8]
   6d8e8:	85 f6                	test   esi,esi
   6d8ea:	75 ea                	jne    set_branch_5
set_branch_6:
   6d8ec:	85 f6                	test   esi,esi
   6d8ee:	0f 84 7c 02 00 00    	je     set_branch_28
   6d8f4:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
   6d8f7:	8b 6c 24 04          	mov    ebp,DWORD PTR [esp+0x4]
   6d8fb:	e8 e8 3a 00 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   6d900:	c7 46 04 00 00 00 00 	mov    DWORD PTR [esi+0x4],0x0
   6d907:	85 ed                	test   ebp,ebp
   6d909:	74 06                	je     set_branch_7
   6d90b:	80 7d 00 00          	cmp    BYTE PTR [ebp+0x0],0x0
   6d90f:	75 26                	jne    set_branch_10
set_branch_7:
   6d911:	85 ff                	test   edi,edi
   6d913:	75 09                	jne    set_branch_8
   6d915:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
   6d919:	89 70 04             	mov    DWORD PTR [eax+0x4],esi
   6d91c:	eb 06                	jmp    set_branch_9
set_branch_8:
   6d91e:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
   6d921:	89 47 08             	mov    DWORD PTR [edi+0x8],eax
set_branch_9:
   6d924:	8b 06                	mov    eax,DWORD PTR [esi]
   6d926:	e8 bd 3a 00 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   6d92b:	89 f0                	mov    eax,esi
   6d92d:	e8 b6 3a 00 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   6d932:	e9 39 02 00 00       	jmp    set_branch_28
set_branch_10:
   6d937:	89 ef                	mov    edi,ebp
   6d939:	29 c9                	sub    ecx,ecx
   6d93b:	49                   	dec    ecx
   6d93c:	31 c0                	xor    eax,eax
   6d93e:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
   6d940:	f7 d1                	not    ecx
   6d942:	49                   	dec    ecx
   6d943:	8d 41 01             	lea    eax,[ecx+0x1]
   6d946:	e8 48 3b 00 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   6d94b:	89 46 04             	mov    DWORD PTR [esi+0x4],eax
   6d94e:	85 c0                	test   eax,eax
   6d950:	75 0f                	jne    set_branch_11
   6d952:	bb 30 fb 00 00       	mov    ebx,@obj3:environ_cpp_variable_6                             ; fixup: num: 18879, src obj: 1, src ofs: 0x6d953, dst obj: 3, dst ofs: 0xfb30
   6d957:	ba eb 00 00 00       	mov    edx,0xeb
   6d95c:	e8 cf a6 fc ff       	call   _error_report
set_branch_11:
   6d961:	8b 7e 04             	mov    edi,DWORD PTR [esi+0x4]
   6d964:	8b 74 24 04          	mov    esi,DWORD PTR [esp+0x4]
   6d968:	57                   	push   edi
set_branch_12:
   6d969:	8a 06                	mov    al,BYTE PTR [esi]
   6d96b:	88 07                	mov    BYTE PTR [edi],al
   6d96d:	3c 00                	cmp    al,0x0
   6d96f:	74 10                	je     set_branch_13
   6d971:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   6d974:	83 c6 02             	add    esi,0x2
   6d977:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   6d97a:	83 c7 02             	add    edi,0x2
   6d97d:	3c 00                	cmp    al,0x0
   6d97f:	75 e8                	jne    set_branch_12
set_branch_13:
   6d981:	5f                   	pop    edi
   6d982:	83 c4 0c             	add    esp,0xc
   6d985:	5d                   	pop    ebp
   6d986:	5f                   	pop    edi
   6d987:	5e                   	pop    esi
   6d988:	59                   	pop    ecx
   6d989:	c3                   	ret    
set_branch_14:
   6d98a:	8b 74 24 04          	mov    esi,DWORD PTR [esp+0x4]
   6d98e:	85 f6                	test   esi,esi
   6d990:	0f 84 da 01 00 00    	je     set_branch_28
   6d996:	80 3e 00             	cmp    BYTE PTR [esi],0x0
   6d999:	0f 84 d1 01 00 00    	je     set_branch_28
   6d99f:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
   6d9a3:	8b 78 04             	mov    edi,DWORD PTR [eax+0x4]
   6d9a6:	85 ff                	test   edi,edi
   6d9a8:	0f 85 f2 00 00 00    	jne    set_branch_21
   6d9ae:	b8 0c 00 00 00       	mov    eax,0xc
   6d9b3:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
   6d9b7:	e8 5c 45 00 00       	call   W?$nwn(ui)pnv
   6d9bc:	89 42 04             	mov    DWORD PTR [edx+0x4],eax
   6d9bf:	85 c0                	test   eax,eax
   6d9c1:	0f 84 a9 01 00 00    	je     set_branch_28
   6d9c7:	89 78 08             	mov    DWORD PTR [eax+0x8],edi
   6d9ca:	89 ef                	mov    edi,ebp
   6d9cc:	29 c9                	sub    ecx,ecx
   6d9ce:	49                   	dec    ecx
   6d9cf:	31 c0                	xor    eax,eax
   6d9d1:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
   6d9d3:	f7 d1                	not    ecx
   6d9d5:	49                   	dec    ecx
   6d9d6:	8d 41 01             	lea    eax,[ecx+0x1]
   6d9d9:	e8 b5 3a 00 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   6d9de:	8b 52 04             	mov    edx,DWORD PTR [edx+0x4]
   6d9e1:	89 02                	mov    DWORD PTR [edx],eax
   6d9e3:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
   6d9e7:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
   6d9ea:	83 38 00             	cmp    DWORD PTR [eax],0x0
   6d9ed:	75 11                	jne    set_branch_15
   6d9ef:	bb 48 fb 00 00       	mov    ebx,@obj3:environ_cpp_variable_7                             ; fixup: num: 18880, src obj: 1, src ofs: 0x6d9f0, dst obj: 3, dst ofs: 0xfb48
   6d9f4:	ba fe 00 00 00       	mov    edx,0xfe
   6d9f9:	31 c0                	xor    eax,eax
   6d9fb:	e8 30 a6 fc ff       	call   _error_report
set_branch_15:
   6da00:	8b 7c 24 08          	mov    edi,DWORD PTR [esp+0x8]
   6da04:	8b 7f 04             	mov    edi,DWORD PTR [edi+0x4]
   6da07:	89 ee                	mov    esi,ebp
   6da09:	8b 3f                	mov    edi,DWORD PTR [edi]
   6da0b:	57                   	push   edi
set_branch_16:
   6da0c:	8a 06                	mov    al,BYTE PTR [esi]
   6da0e:	88 07                	mov    BYTE PTR [edi],al
   6da10:	3c 00                	cmp    al,0x0
   6da12:	74 10                	je     set_branch_17
   6da14:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   6da17:	83 c6 02             	add    esi,0x2
   6da1a:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   6da1d:	83 c7 02             	add    edi,0x2
   6da20:	3c 00                	cmp    al,0x0
   6da22:	75 e8                	jne    set_branch_16
set_branch_17:
   6da24:	5f                   	pop    edi
   6da25:	8b 7c 24 04          	mov    edi,DWORD PTR [esp+0x4]
   6da29:	29 c9                	sub    ecx,ecx
   6da2b:	49                   	dec    ecx
   6da2c:	31 c0                	xor    eax,eax
   6da2e:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
   6da30:	f7 d1                	not    ecx
   6da32:	49                   	dec    ecx
   6da33:	8d 41 01             	lea    eax,[ecx+0x1]
   6da36:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
   6da3a:	e8 54 3a 00 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   6da3f:	8b 52 04             	mov    edx,DWORD PTR [edx+0x4]
   6da42:	89 42 04             	mov    DWORD PTR [edx+0x4],eax
   6da45:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
   6da49:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
   6da4c:	83 78 04 00          	cmp    DWORD PTR [eax+0x4],0x0
   6da50:	75 11                	jne    set_branch_18
   6da52:	bb 60 fb 00 00       	mov    ebx,@obj3:environ_cpp_variable_8                             ; fixup: num: 18882, src obj: 1, src ofs: 0x6da53, dst obj: 3, dst ofs: 0xfb60
   6da57:	ba 01 01 00 00       	mov    edx,0x101
   6da5c:	31 c0                	xor    eax,eax
   6da5e:	e8 cd a5 fc ff       	call   _error_report
set_branch_18:
   6da63:	8b 7c 24 08          	mov    edi,DWORD PTR [esp+0x8]
   6da67:	8b 7f 04             	mov    edi,DWORD PTR [edi+0x4]
   6da6a:	8b 74 24 04          	mov    esi,DWORD PTR [esp+0x4]
   6da6e:	8b 7f 04             	mov    edi,DWORD PTR [edi+0x4]
   6da71:	57                   	push   edi
set_branch_19:
   6da72:	8a 06                	mov    al,BYTE PTR [esi]
   6da74:	88 07                	mov    BYTE PTR [edi],al
   6da76:	3c 00                	cmp    al,0x0
   6da78:	74 10                	je     set_branch_20
   6da7a:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   6da7d:	83 c6 02             	add    esi,0x2
   6da80:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   6da83:	83 c7 02             	add    edi,0x2
   6da86:	3c 00                	cmp    al,0x0
   6da88:	75 e8                	jne    set_branch_19
set_branch_20:
   6da8a:	5f                   	pop    edi
   6da8b:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
   6da8f:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
   6da93:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
   6da96:	89 02                	mov    DWORD PTR [edx],eax
   6da98:	83 c4 0c             	add    esp,0xc
   6da9b:	5d                   	pop    ebp
   6da9c:	5f                   	pop    edi
   6da9d:	5e                   	pop    esi
   6da9e:	59                   	pop    ecx
   6da9f:	c3                   	ret    
set_branch_21:
   6daa0:	b8 0c 00 00 00       	mov    eax,0xc
   6daa5:	e8 6e 44 00 00       	call   W?$nwn(ui)pnv
   6daaa:	89 c2                	mov    edx,eax
   6daac:	89 04 24             	mov    DWORD PTR [esp],eax
   6daaf:	85 c0                	test   eax,eax
   6dab1:	0f 84 b9 00 00 00    	je     set_branch_28
   6dab7:	89 ef                	mov    edi,ebp
   6dab9:	29 c9                	sub    ecx,ecx
   6dabb:	49                   	dec    ecx
   6dabc:	31 c0                	xor    eax,eax
   6dabe:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
   6dac0:	f7 d1                	not    ecx
   6dac2:	49                   	dec    ecx
   6dac3:	8d 41 01             	lea    eax,[ecx+0x1]
   6dac6:	e8 c8 39 00 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   6dacb:	89 02                	mov    DWORD PTR [edx],eax
   6dacd:	85 c0                	test   eax,eax
   6dacf:	75 0f                	jne    set_branch_22
   6dad1:	bb 78 fb 00 00       	mov    ebx,@obj3:environ_cpp_variable_9                             ; fixup: num: 18881, src obj: 1, src ofs: 0x6dad2, dst obj: 3, dst ofs: 0xfb78
   6dad6:	ba 11 01 00 00       	mov    edx,0x111
   6dadb:	e8 50 a5 fc ff       	call   _error_report
set_branch_22:
   6dae0:	8b 3c 24             	mov    edi,DWORD PTR [esp]
   6dae3:	89 ee                	mov    esi,ebp
   6dae5:	8b 3f                	mov    edi,DWORD PTR [edi]
   6dae7:	57                   	push   edi
set_branch_23:
   6dae8:	8a 06                	mov    al,BYTE PTR [esi]
   6daea:	88 07                	mov    BYTE PTR [edi],al
   6daec:	3c 00                	cmp    al,0x0
   6daee:	74 10                	je     set_branch_24
   6daf0:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   6daf3:	83 c6 02             	add    esi,0x2
   6daf6:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   6daf9:	83 c7 02             	add    edi,0x2
   6dafc:	3c 00                	cmp    al,0x0
   6dafe:	75 e8                	jne    set_branch_23
set_branch_24:
   6db00:	5f                   	pop    edi
   6db01:	8b 7c 24 04          	mov    edi,DWORD PTR [esp+0x4]
   6db05:	29 c9                	sub    ecx,ecx
   6db07:	49                   	dec    ecx
   6db08:	31 c0                	xor    eax,eax
   6db0a:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
   6db0c:	f7 d1                	not    ecx
   6db0e:	49                   	dec    ecx
   6db0f:	8d 41 01             	lea    eax,[ecx+0x1]
   6db12:	8b 14 24             	mov    edx,DWORD PTR [esp]
   6db15:	e8 79 39 00 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   6db1a:	89 42 04             	mov    DWORD PTR [edx+0x4],eax
   6db1d:	85 c0                	test   eax,eax
   6db1f:	75 0f                	jne    set_branch_25
   6db21:	bb 90 fb 00 00       	mov    ebx,@obj3:environ_cpp_variable_10                            ; fixup: num: 18884, src obj: 1, src ofs: 0x6db22, dst obj: 3, dst ofs: 0xfb90
   6db26:	ba 14 01 00 00       	mov    edx,0x114
   6db2b:	e8 00 a5 fc ff       	call   _error_report
set_branch_25:
   6db30:	8b 3c 24             	mov    edi,DWORD PTR [esp]
   6db33:	8b 74 24 04          	mov    esi,DWORD PTR [esp+0x4]
   6db37:	8b 7f 04             	mov    edi,DWORD PTR [edi+0x4]
   6db3a:	57                   	push   edi
set_branch_26:
   6db3b:	8a 06                	mov    al,BYTE PTR [esi]
   6db3d:	88 07                	mov    BYTE PTR [edi],al
   6db3f:	3c 00                	cmp    al,0x0
   6db41:	74 10                	je     set_branch_27
   6db43:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   6db46:	83 c6 02             	add    esi,0x2
   6db49:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   6db4c:	83 c7 02             	add    edi,0x2
   6db4f:	3c 00                	cmp    al,0x0
   6db51:	75 e8                	jne    set_branch_26
set_branch_27:
   6db53:	5f                   	pop    edi
   6db54:	8b 04 24             	mov    eax,DWORD PTR [esp]
   6db57:	c7 40 08 00 00 00 00 	mov    DWORD PTR [eax+0x8],0x0
   6db5e:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
   6db62:	8b 00                	mov    eax,DWORD PTR [eax]
   6db64:	8b 14 24             	mov    edx,DWORD PTR [esp]
   6db67:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
   6db6a:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
   6db6e:	89 10                	mov    DWORD PTR [eax],edx
set_branch_28:
   6db70:	83 c4 0c             	add    esp,0xc
   6db73:	5d                   	pop    ebp
   6db74:	5f                   	pop    edi
   6db75:	5e                   	pop    esi
   6db76:	59                   	pop    ecx
   6db77:	c3                   	ret    
   6db78:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   6db7e:	8b d2                	mov    edx,edx

;-------------------------------------------------
;  Function 'set_mod_92'                         -
;-------------------------------------------------
set_mod_92:
   6db80:	51                   	push   ecx
   6db81:	83 ec 20             	sub    esp,0x20
   6db84:	89 c1                	mov    ecx,eax
   6db86:	53                   	push   ebx
   6db87:	52                   	push   edx
   6db88:	68 a8 fb 00 00       	push   @obj3:environ_cpp_variable_11                                ; fixup: num: 18883, src obj: 1, src ofs: 0x6db89, dst obj: 3, dst ofs: 0xfba8
   6db8d:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 18886, src obj: 1, src ofs: 0x6db8e, dst obj: 3, dst ofs: 0x237fc
   6db92:	e8 4a 30 00 00       	call   sprintf_
   6db97:	83 c4 10             	add    esp,0x10
   6db9a:	53                   	push   ebx
   6db9b:	68 c2 fb 00 00       	push   @obj3:environ_cpp_variable_12                                ; fixup: num: 18885, src obj: 1, src ofs: 0x6db9c, dst obj: 3, dst ofs: 0xfbc2
   6dba0:	8d 5c 24 08          	lea    ebx,[esp+0x8]
   6dba4:	53                   	push   ebx
   6dba5:	e8 37 30 00 00       	call   sprintf_
   6dbaa:	83 c4 0c             	add    esp,0xc
   6dbad:	89 e3                	mov    ebx,esp
   6dbaf:	89 c8                	mov    eax,ecx
   6dbb1:	e8 ba fc ff ff       	call   set
   6dbb6:	83 c4 20             	add    esp,0x20
   6dbb9:	59                   	pop    ecx
   6dbba:	c3                   	ret    
;-------------------------------------------------
;  Bad code 92 (zero after ret):                 -
;-------------------------------------------------
;  6dbb9:	59                   	pop    ecx
;  6dbba:	c3                   	ret    
;  6dbbb:	00 00                	add    BYTE PTR [eax],al
;  6dbbd:	00 00                	add    BYTE PTR [eax],al
;-------------------------------------------------
;  Padding data (5 bytes):                       -
;-------------------------------------------------
   6dbbb:	00 00 00 00 00       	db     5 dup(0x00)
;-------------------------------------------------
;  End of bad code 92                            -
;-------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 92 (D:\SOURCE\environ.cpp)                                    -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 92: D:\SOURCE\environ.cpp                                            -
;                                                                              -
;-------------------------------------------------------------------------------
environ_cpp_variable_1:
    fafc:	43 4f 4e 46 49 47 2e 49 4e 49 00 	db     "CONFIG.INI",0x00
environ_cpp_variable_2:
    fb07:	72                   	db     0x72                                                         ; dec: 114, chr: 'r'
    fb08:	74                   	db     0x74                                                         ; dec: 116, chr: 't'
    fb09:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
environ_cpp_variable_3:
    fb0a:	77 2b 74 00          	db     "w+t",0x00
environ_cpp_variable_4:
    fb0e:	25 73 3d 25 73 00    	db     "%s=%s",0x00
environ_cpp_variable_5:
    fb14:	65 6e 76 69 72 6f 6e 6d 65 6e 74 3a 3a 73 65 74 28 27 25 73 27 2c 27 25 73 27 29 00 	db     "environment::set('%s','%s')",0x00
environ_cpp_variable_6:
    fb30:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
environ_cpp_variable_7:
    fb48:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
environ_cpp_variable_8:
    fb60:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
environ_cpp_variable_9:
    fb78:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
environ_cpp_variable_10:
    fb90:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
environ_cpp_variable_11:
    fba8:	65 6e 76 69 72 6f 6e 6d 65 6e 74 3a 3a 73 65 74 28 27 25 73 27 2c 25 69 29 00 	db     "environment::set('%s',%i)",0x00
environ_cpp_variable_12:
    fbc2:	25                   	db     0x25                                                         ; dec:  37, chr: '%'
    fbc3:	69                   	db     0x69                                                         ; dec: 105, chr: 'i'
    fbc4:	00 00 00 00          	db     4 dup(0x00)                                                  ; dec:   0, chr: '\0'

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 92 (D:\SOURCE\environ.cpp)                                    -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 92: D:\SOURCE\environ.cpp                                            -
;                                                                              -
;-------------------------------------------------------------------------------
environ_cpp_variable_13:
   10d8c:	03                   	db     0x03                                                         ; dec:   3, chr: ''
   10d8d:	00 00 00             	db     3 dup(0x00)                                                  ; dec:   0, chr: '\0'
   10d90:	00 d7 06 00          	dd     @obj1:W?$dt:environment$n()_                                 ; fixup: num: 21288, src obj: 3, src ofs: 0x10d90, dst obj: 1, dst ofs: 0x6d700
   10d94:	38 24 03 00          	dd     @obj3:configuration_environment                              ; fixup: num: 21287, src obj: 3, src ofs: 0x10d94, dst obj: 3, dst ofs: 0x32438

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 92 (D:\SOURCE\environ.cpp)                                    -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 92: D:\SOURCE\environ.cpp                                            -
;                                                                              -
;-------------------------------------------------------------------------------
environ_cpp_variable_14:
   140b8:	00 00 00 00          	db     4 dup(0x00)                                                  ; dec:   0, chr: '\0'
   140bc:	8c 0d 01 00          	dd     @obj3:environ_cpp_variable_13                                ; fixup: num: 21591, src obj: 3, src ofs: 0x140bc, dst obj: 3, dst ofs: 0x10d8c
environ_cpp_variable_15:                                                                            ; access size: DWORD
   140c0:	00 00 00 00          	dd     0x00000000

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 92 (D:\SOURCE\environ.cpp)                                    -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 92: D:\SOURCE\environ.cpp                                            -
;                                                                              -
;-------------------------------------------------------------------------------
.mod_init_mod_92:
   16dc2:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
   16dc3:	40                   	db     0x40                                                         ; dec:  64, chr: '@'
   16dc4:	70 d5 06 00          	dd     @obj1:.fn_init_mod_92                                        ; fixup: num: 21656, src obj: 3, src ofs: 0x16dc4, dst obj: 1, dst ofs: 0x6d570

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 92 (D:\SOURCE\environ.cpp)                                    -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 92: D:\SOURCE\environ.cpp                                            -
;                                                                              -
;-------------------------------------------------------------------------------
configuration_environment:                                                                          ; access size: DWORD
   32438:	00 00 00 00          	dd     0x00000000
configuration_environment_variable_1:                                                               ; access size: DWORD
   3243c:	00 00 00 00          	dd     0x00000000
configuration_environment_variable_2:                                                               ; access size: DWORD
   32440:	00 00 00 00          	dd     0x00000000
configuration_environment_variable_3:                                                               ; access size: BYTE
   32444:	00 00 00 00          	db     4 dup(0x00)                                                  ; dec:   0, chr: '\0'

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 92 (D:\SOURCE\environ.cpp)                                    -
;                                                                              -
;-------------------------------------------------------------------------------