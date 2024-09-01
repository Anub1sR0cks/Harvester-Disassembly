;-------------------------------------------------------------------------------
;                                                                              -
;  Module 10: D:\SOURCE\xfile.cpp                                              -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function 'interleaved_read'                   -
;-------------------------------------------------
interleaved_read:
    c600:	51                   	push   ecx
    c601:	89 c1                	mov    ecx,eax
    c603:	80 3d ac a1 01 00 00 	cmp    BYTE PTR ds:@obj3:the_sound_system_variable_1,0x0            ; fixup: num: 1512, src obj: 1, src ofs: 0xc605, dst obj: 3, dst ofs: 0x1a1ac
    c60a:	74 1c                	je     interleaved_read_branch_2
    c60c:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 1511, src obj: 1, src ofs: 0xc60d, dst obj: 3, dst ofs: 0x1a1d4
    c611:	e8 ca d2 ff ff       	call   playing
    c616:	84 c0                	test   al,al
    c618:	74 0e                	je     interleaved_read_branch_2
interleaved_read_branch_1:
    c61a:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 1510, src obj: 1, src ofs: 0xc61b, dst obj: 3, dst ofs: 0x1a1d4
    c61f:	e8 7c f3 ff ff       	call   update_mod_9
    c624:	84 c0                	test   al,al
    c626:	75 f2                	jne    interleaved_read_branch_1
interleaved_read_branch_2:
    c628:	89 c8                	mov    eax,ecx
    c62a:	e8 34 59 06 00       	call   read_
    c62f:	59                   	pop    ecx
    c630:	c3                   	ret    
    c631:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    c637:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
    c63d:	8d 40 00             	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'XFILE_init'                         -
;-------------------------------------------------
XFILE_init:
    c640:	53                   	push   ebx
    c641:	51                   	push   ecx
    c642:	52                   	push   edx
    c643:	56                   	push   esi
    c644:	57                   	push   edi
    c645:	55                   	push   ebp
    c646:	89 e5                	mov    ebp,esp
    c648:	81 ec ac 01 00 00    	sub    esp,0x1ac
    c64e:	81 ed 82 00 00 00    	sub    ebp,0x82
    c654:	80 3d cb a4 01 00 00 	cmp    BYTE PTR ds:@obj3:XFILE_initialized,0x0                      ; fixup: num: 1509, src obj: 1, src ofs: 0xc656, dst obj: 3, dst ofs: 0x1a4cb
    c65b:	0f 85 0f 04 00 00    	jne    XFILE_init_branch_29
    c661:	b2 01                	mov    dl,0x1
    c663:	31 c0                	xor    eax,eax
    c665:	88 15 cb a4 01 00    	mov    BYTE PTR ds:@obj3:XFILE_initialized,dl                       ; fixup: num: 1627, src obj: 1, src ofs: 0xc667, dst obj: 3, dst ofs: 0x1a4cb
    c66b:	8d 40 00             	lea    eax,[eax+0x0]
    c66e:	8b c9                	mov    ecx,ecx
XFILE_init_branch_1:
    c670:	05 20 08 00 00       	add    eax,0x820
    c675:	30 f6                	xor    dh,dh
    c677:	88 b0 24 9d 01 00    	mov    BYTE PTR [eax+@obj3:line_start_table_split_variable_4],dh    ; fixup: num: 1626, src obj: 1, src ofs: 0xc679, dst obj: 3, dst ofs: 0x19d24
    c67d:	3d 00 82 00 00       	cmp    eax,0x8200
    c682:	75 ec                	jne    XFILE_init_branch_1
    c684:	8b 35 3c 7e 01 00    	mov    esi,DWORD PTR ds:@obj3:_argv                                 ; fixup: num: 1625, src obj: 1, src ofs: 0xc686, dst obj: 3, dst ofs: 0x17e3c
    c68a:	8b 36                	mov    esi,DWORD PTR [esi]
    c68c:	31 d2                	xor    edx,edx
    c68e:	89 f7                	mov    edi,esi
    c690:	31 db                	xor    ebx,ebx
    c692:	29 c9                	sub    ecx,ecx
    c694:	49                   	dec    ecx
    c695:	31 c0                	xor    eax,eax
    c697:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
    c699:	f7 d1                	not    ecx
    c69b:	49                   	dec    ecx
    c69c:	8d 41 01             	lea    eax,[ecx+0x1]
    c69f:	89 55 62             	mov    DWORD PTR [ebp+0x62],edx
    c6a2:	e8 ec 4d 06 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
    c6a7:	89 c7                	mov    edi,eax
    c6a9:	a3 cc a4 01 00       	mov    ds:@obj3:consolidated_filenames,eax                          ; fixup: num: 1518, src obj: 1, src ofs: 0xc6aa, dst obj: 3, dst ofs: 0x1a4cc
    c6ae:	57                   	push   edi
XFILE_init_branch_2:
    c6af:	8a 06                	mov    al,BYTE PTR [esi]
    c6b1:	88 07                	mov    BYTE PTR [edi],al
    c6b3:	3c 00                	cmp    al,0x0
    c6b5:	74 10                	je     XFILE_init_branch_3
    c6b7:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
    c6ba:	83 c6 02             	add    esi,0x2
    c6bd:	88 47 01             	mov    BYTE PTR [edi+0x1],al
    c6c0:	83 c7 02             	add    edi,0x2
    c6c3:	3c 00                	cmp    al,0x0
    c6c5:	75 e8                	jne    XFILE_init_branch_2
XFILE_init_branch_3:
    c6c7:	5f                   	pop    edi
    c6c8:	eb 26                	jmp    XFILE_init_branch_5
    c6ca:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
XFILE_init_branch_4:
    c6d0:	8b 4d 62             	mov    ecx,DWORD PTR [ebp+0x62]
    c6d3:	41                   	inc    ecx
    c6d4:	83 c3 04             	add    ebx,0x4
    c6d7:	89 4d 62             	mov    DWORD PTR [ebp+0x62],ecx
    c6da:	83 f9 0a             	cmp    ecx,0xa
    c6dd:	0f 8d bb 00 00 00    	jge    XFILE_init_branch_10
    c6e3:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    c6e9:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
    c6ef:	90                   	nop
XFILE_init_branch_5:
    c6f0:	ba ff ff ff ff       	mov    edx,0xffffffff
    c6f5:	8b 7d 62             	mov    edi,DWORD PTR [ebp+0x62]
    c6f8:	31 f6                	xor    esi,esi
    c6fa:	89 93 44 27 02 00    	mov    DWORD PTR [ebx+@obj3:current_head_offset],edx                ; fixup: num: 1517, src obj: 1, src ofs: 0xc6fc, dst obj: 3, dst ofs: 0x22744
    c700:	89 93 f4 a4 01 00    	mov    DWORD PTR [ebx+@obj3:consolidated_file_handles],edx          ; fixup: num: 1516, src obj: 1, src ofs: 0xc702, dst obj: 3, dst ofs: 0x1a4f4
    c706:	89 b3 1c a5 01 00    	mov    DWORD PTR [ebx+@obj3:directory_caches],esi                   ; fixup: num: 1515, src obj: 1, src ofs: 0xc708, dst obj: 3, dst ofs: 0x1a51c
    c70c:	85 ff                	test   edi,edi
    c70e:	74 c0                	je     XFILE_init_branch_4
    c710:	57                   	push   edi
    c711:	68 c4 0f 00 00       	push   @obj3:xfile_cpp_variable_1                                   ; fixup: num: 1514, src obj: 1, src ofs: 0xc712, dst obj: 3, dst ofs: 0xfc4
    c716:	8d 45 16             	lea    eax,[ebp+0x16]
    c719:	50                   	push   eax
    c71a:	e8 c2 44 06 00       	call   sprintf_
    c71f:	83 c4 0c             	add    esp,0xc
    c722:	8d 55 16             	lea    edx,[ebp+0x16]
    c725:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 1513, src obj: 1, src ofs: 0xc726, dst obj: 3, dst ofs: 0x32438
    c72a:	e8 a1 10 06 00       	call   get
    c72f:	85 c0                	test   eax,eax
    c731:	74 9d                	je     XFILE_init_branch_4
    c733:	8d 55 16             	lea    edx,[ebp+0x16]
    c736:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 1520, src obj: 1, src ofs: 0xc737, dst obj: 3, dst ofs: 0x32438
    c73b:	8d 7d d6             	lea    edi,[ebp-0x2a]
    c73e:	e8 8d 10 06 00       	call   get
    c743:	89 c6                	mov    esi,eax
    c745:	57                   	push   edi
XFILE_init_branch_6:
    c746:	8a 06                	mov    al,BYTE PTR [esi]
    c748:	88 07                	mov    BYTE PTR [edi],al
    c74a:	3c 00                	cmp    al,0x0
    c74c:	74 10                	je     XFILE_init_branch_7
    c74e:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
    c751:	83 c6 02             	add    esi,0x2
    c754:	88 47 01             	mov    BYTE PTR [edi+0x1],al
    c757:	83 c7 02             	add    edi,0x2
    c75a:	3c 00                	cmp    al,0x0
    c75c:	75 e8                	jne    XFILE_init_branch_6
XFILE_init_branch_7:
    c75e:	5f                   	pop    edi
    c75f:	8d 7d d6             	lea    edi,[ebp-0x2a]
    c762:	29 c9                	sub    ecx,ecx
    c764:	49                   	dec    ecx
    c765:	31 c0                	xor    eax,eax
    c767:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
    c769:	f7 d1                	not    ecx
    c76b:	49                   	dec    ecx
    c76c:	8d 41 01             	lea    eax,[ecx+0x1]
    c76f:	8d 75 d6             	lea    esi,[ebp-0x2a]
    c772:	e8 1c 4d 06 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
    c777:	89 c7                	mov    edi,eax
    c779:	89 83 cc a4 01 00    	mov    DWORD PTR [ebx+@obj3:consolidated_filenames],eax             ; fixup: num: 1519, src obj: 1, src ofs: 0xc77b, dst obj: 3, dst ofs: 0x1a4cc
    c77f:	57                   	push   edi
XFILE_init_branch_8:
    c780:	8a 06                	mov    al,BYTE PTR [esi]
    c782:	88 07                	mov    BYTE PTR [edi],al
    c784:	3c 00                	cmp    al,0x0
    c786:	74 10                	je     XFILE_init_branch_9
    c788:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
    c78b:	83 c6 02             	add    esi,0x2
    c78e:	88 47 01             	mov    BYTE PTR [edi+0x1],al
    c791:	83 c7 02             	add    edi,0x2
    c794:	3c 00                	cmp    al,0x0
    c796:	75 e8                	jne    XFILE_init_branch_8
XFILE_init_branch_9:
    c798:	5f                   	pop    edi
    c799:	e9 32 ff ff ff       	jmp    XFILE_init_branch_4
XFILE_init_branch_10:
    c79e:	bf 01 00 00 00       	mov    edi,0x1
    c7a3:	b8 04 00 00 00       	mov    eax,0x4
    c7a8:	89 7d 5e             	mov    DWORD PTR [ebp+0x5e],edi
    c7ab:	89 45 56             	mov    DWORD PTR [ebp+0x56],eax
    c7ae:	e9 d2 00 00 00       	jmp    XFILE_init_branch_18
XFILE_init_branch_11:
    c7b3:	b8 08 00 00 00       	mov    eax,0x8
    c7b8:	8b 55 7e             	mov    edx,DWORD PTR [ebp+0x7e]
    c7bb:	e8 58 57 06 00       	call   W?$nwn(ui)pnv
    c7c0:	89 45 7e             	mov    DWORD PTR [ebp+0x7e],eax
    c7c3:	89 42 04             	mov    DWORD PTR [edx+0x4],eax
XFILE_init_branch_12:
    c7c6:	8b 45 7e             	mov    eax,DWORD PTR [ebp+0x7e]
    c7c9:	c7 40 04 00 00 00 00 	mov    DWORD PTR [eax+0x4],0x0
    c7d0:	b8 94 00 00 00       	mov    eax,0x94
    c7d5:	e8 3e 57 06 00       	call   W?$nwn(ui)pnv
    c7da:	89 c1                	mov    ecx,eax
    c7dc:	8b 45 7e             	mov    eax,DWORD PTR [ebp+0x7e]
    c7df:	bb 94 00 00 00       	mov    ebx,0x94
    c7e4:	89 ca                	mov    edx,ecx
    c7e6:	89 08                	mov    DWORD PTR [eax],ecx
    c7e8:	89 f8                	mov    eax,edi
    c7ea:	e8 74 57 06 00       	call   read_
    c7ef:	8a 35 df 0f 00 00    	mov    dh,BYTE PTR ds:@obj3:xfile_cpp_variable_4                    ; fixup: num: 1527, src obj: 1, src ofs: 0xc7f1, dst obj: 3, dst ofs: 0xfdf
    c7f5:	3a 31                	cmp    dh,BYTE PTR [ecx]
    c7f7:	75 21                	jne    XFILE_init_branch_13
    c7f9:	8a 1d e5 0f 00 00    	mov    bl,BYTE PTR ds:@obj3:xfile_cpp_variable_5                    ; fixup: num: 1526, src obj: 1, src ofs: 0xc7fb, dst obj: 3, dst ofs: 0xfe5
    c7ff:	3a 59 01             	cmp    bl,BYTE PTR [ecx+0x1]
    c802:	75 16                	jne    XFILE_init_branch_13
    c804:	8a 3d eb 0f 00 00    	mov    bh,BYTE PTR ds:@obj3:xfile_cpp_variable_6                    ; fixup: num: 1525, src obj: 1, src ofs: 0xc806, dst obj: 3, dst ofs: 0xfeb
    c80a:	3a 79 02             	cmp    bh,BYTE PTR [ecx+0x2]
    c80d:	75 0b                	jne    XFILE_init_branch_13
    c80f:	8a 41 03             	mov    al,BYTE PTR [ecx+0x3]
    c812:	3a 05 f1 0f 00 00    	cmp    al,BYTE PTR ds:@obj3:xfile_cpp_variable_7                    ; fixup: num: 1524, src obj: 1, src ofs: 0xc814, dst obj: 3, dst ofs: 0xff1
    c818:	74 11                	je     XFILE_init_branch_14
XFILE_init_branch_13:
    c81a:	bb f3 0f 00 00       	mov    ebx,@obj3:xfile_cpp_variable_8                               ; fixup: num: 1523, src obj: 1, src ofs: 0xc81b, dst obj: 3, dst ofs: 0xff3
    c81f:	ba 13 01 00 00       	mov    edx,0x113
    c824:	31 c0                	xor    eax,eax
    c826:	e8 05 b8 02 00       	call   _error_report
XFILE_init_branch_14:
    c82b:	8b 5d 72             	mov    ebx,DWORD PTR [ebp+0x72]
    c82e:	46                   	inc    esi
    c82f:	39 de                	cmp    esi,ebx
    c831:	73 25                	jae    XFILE_init_branch_16
XFILE_init_branch_15:
    c833:	83 7d 7e 00          	cmp    DWORD PTR [ebp+0x7e],0x0
    c837:	0f 85 76 ff ff ff    	jne    XFILE_init_branch_11
    c83d:	b8 08 00 00 00       	mov    eax,0x8
    c842:	8b 55 76             	mov    edx,DWORD PTR [ebp+0x76]
    c845:	e8 ce 56 06 00       	call   W?$nwn(ui)pnv
    c84a:	89 45 7e             	mov    DWORD PTR [ebp+0x7e],eax
    c84d:	89 82 1c a5 01 00    	mov    DWORD PTR [edx+@obj3:directory_caches],eax                   ; fixup: num: 1522, src obj: 1, src ofs: 0xc84f, dst obj: 3, dst ofs: 0x1a51c
    c853:	e9 6e ff ff ff       	jmp    XFILE_init_branch_12
XFILE_init_branch_16:
    c858:	8b 45 76             	mov    eax,DWORD PTR [ebp+0x76]
    c85b:	c7 80 44 27 02 00 ff ff ff ff 	mov    DWORD PTR [eax+@obj3:current_head_offset],0xffffffff; fixup: num: 1521, src obj: 1, src ofs: 0xc85d, dst obj: 3, dst ofs: 0x22744
    c865:	89 f8                	mov    eax,edi
    c867:	e8 a4 56 06 00       	call   close_
XFILE_init_branch_17:
    c86c:	8b 55 56             	mov    edx,DWORD PTR [ebp+0x56]
    c86f:	8b 5d 5e             	mov    ebx,DWORD PTR [ebp+0x5e]
    c872:	83 c2 04             	add    edx,0x4
    c875:	43                   	inc    ebx
    c876:	89 55 56             	mov    DWORD PTR [ebp+0x56],edx
    c879:	89 5d 5e             	mov    DWORD PTR [ebp+0x5e],ebx
    c87c:	83 fb 0a             	cmp    ebx,0xa
    c87f:	0f 8d eb 01 00 00    	jge    XFILE_init_branch_29
XFILE_init_branch_18:
    c885:	8b 45 56             	mov    eax,DWORD PTR [ebp+0x56]
    c888:	8b b0 cc a4 01 00    	mov    esi,DWORD PTR [eax+@obj3:consolidated_filenames]             ; fixup: num: 1535, src obj: 1, src ofs: 0xc88a, dst obj: 3, dst ofs: 0x1a4cc
    c88e:	85 f6                	test   esi,esi
    c890:	74 da                	je     XFILE_init_branch_17
    c892:	68 00 02 00 00       	push   0x200
    c897:	56                   	push   esi
    c898:	8b 55 56             	mov    edx,DWORD PTR [ebp+0x56]
    c89b:	e8 d6 4c 06 00       	call   open_
    c8a0:	83 c4 08             	add    esp,0x8
    c8a3:	89 82 f4 a4 01 00    	mov    DWORD PTR [edx+@obj3:consolidated_file_handles],eax          ; fixup: num: 1534, src obj: 1, src ofs: 0xc8a5, dst obj: 3, dst ofs: 0x1a4f4
    c8a9:	e8 b7 94 06 00       	call   filelength_
    c8ae:	89 45 5a             	mov    DWORD PTR [ebp+0x5a],eax
    c8b1:	89 45 66             	mov    DWORD PTR [ebp+0x66],eax
    c8b4:	31 c0                	xor    eax,eax
    c8b6:	89 45 7a             	mov    DWORD PTR [ebp+0x7a],eax
    c8b9:	89 45 7e             	mov    DWORD PTR [ebp+0x7e],eax
    c8bc:	8b 45 56             	mov    eax,DWORD PTR [ebp+0x56]
    c8bf:	31 db                	xor    ebx,ebx
    c8c1:	31 d2                	xor    edx,edx
    c8c3:	8b 80 f4 a4 01 00    	mov    eax,DWORD PTR [eax+@obj3:consolidated_file_handles]          ; fixup: num: 1533, src obj: 1, src ofs: 0xc8c5, dst obj: 3, dst ofs: 0x1a4f4
    c8c9:	e8 01 56 06 00       	call   lseek_                                                       ; aliases: lseek_, _lseek_
    c8ce:	8b 5d 5e             	mov    ebx,DWORD PTR [ebp+0x5e]
    c8d1:	53                   	push   ebx
    c8d2:	68 cd 0f 00 00       	push   @obj3:xfile_cpp_variable_2                                   ; fixup: num: 1532, src obj: 1, src ofs: 0xc8d3, dst obj: 3, dst ofs: 0xfcd
    c8d7:	8d 85 d6 fe ff ff    	lea    eax,[ebp-0x12a]
    c8dd:	50                   	push   eax
    c8de:	e8 fe 42 06 00       	call   sprintf_
    c8e3:	83 c4 0c             	add    esp,0xc
    c8e6:	ba d8 0f 00 00       	mov    edx,@obj3:xfile_cpp_variable_3                               ; fixup: num: 1531, src obj: 1, src ofs: 0xc8e7, dst obj: 3, dst ofs: 0xfd8
    c8eb:	68 02 02 00 00       	push   0x202
    c8f0:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 1530, src obj: 1, src ofs: 0xc8f1, dst obj: 3, dst ofs: 0x32438
    c8f5:	bf cc a3 01 00       	mov    edi,@obj3:path                                               ; fixup: num: 1529, src obj: 1, src ofs: 0xc8f6, dst obj: 3, dst ofs: 0x1a3cc
    c8fa:	e8 d1 0e 06 00       	call   get
    c8ff:	89 c6                	mov    esi,eax
    c901:	57                   	push   edi
XFILE_init_branch_19:
    c902:	8a 06                	mov    al,BYTE PTR [esi]
    c904:	88 07                	mov    BYTE PTR [edi],al
    c906:	3c 00                	cmp    al,0x0
    c908:	74 10                	je     XFILE_init_branch_20
    c90a:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
    c90d:	83 c6 02             	add    esi,0x2
    c910:	88 47 01             	mov    BYTE PTR [edi+0x1],al
    c913:	83 c7 02             	add    edi,0x2
    c916:	3c 00                	cmp    al,0x0
    c918:	75 e8                	jne    XFILE_init_branch_19
XFILE_init_branch_20:
    c91a:	5f                   	pop    edi
    c91b:	29 c9                	sub    ecx,ecx
    c91d:	49                   	dec    ecx
    c91e:	31 c0                	xor    eax,eax
    c920:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
    c922:	f7 d1                	not    ecx
    c924:	49                   	dec    ecx
    c925:	bf cc a3 01 00       	mov    edi,@obj3:path                                               ; fixup: num: 1528, src obj: 1, src ofs: 0xc926, dst obj: 3, dst ofs: 0x1a3cc
    c92a:	8d b5 d6 fe ff ff    	lea    esi,[ebp-0x12a]
    c930:	01 cf                	add    edi,ecx
    c932:	57                   	push   edi
XFILE_init_branch_21:
    c933:	8a 06                	mov    al,BYTE PTR [esi]
    c935:	88 07                	mov    BYTE PTR [edi],al
    c937:	3c 00                	cmp    al,0x0
    c939:	74 10                	je     XFILE_init_branch_22
    c93b:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
    c93e:	83 c6 02             	add    esi,0x2
    c941:	88 47 01             	mov    BYTE PTR [edi+0x1],al
    c944:	83 c7 02             	add    edi,0x2
    c947:	3c 00                	cmp    al,0x0
    c949:	75 e8                	jne    XFILE_init_branch_21
XFILE_init_branch_22:
    c94b:	5f                   	pop    edi
    c94c:	68 cc a3 01 00       	push   @obj3:path                                                   ; fixup: num: 1537, src obj: 1, src ofs: 0xc94d, dst obj: 3, dst ofs: 0x1a3cc
    c951:	e8 20 4c 06 00       	call   open_
    c956:	83 c4 08             	add    esp,0x8
    c959:	89 c7                	mov    edi,eax
    c95b:	83 f8 ff             	cmp    eax,0xffffffff
    c95e:	74 29                	je     XFILE_init_branch_23
    c960:	bb 94 00 00 00       	mov    ebx,0x94
    c965:	31 d2                	xor    edx,edx
    c967:	e8 f9 93 06 00       	call   filelength_
    c96c:	f7 f3                	div    ebx
    c96e:	89 45 72             	mov    DWORD PTR [ebp+0x72],eax
    c971:	8b 45 56             	mov    eax,DWORD PTR [ebp+0x56]
    c974:	89 45 76             	mov    DWORD PTR [ebp+0x76],eax
    c977:	8b 45 72             	mov    eax,DWORD PTR [ebp+0x72]
    c97a:	31 f6                	xor    esi,esi
    c97c:	85 c0                	test   eax,eax
    c97e:	0f 86 d4 fe ff ff    	jbe    XFILE_init_branch_16
    c984:	e9 aa fe ff ff       	jmp    XFILE_init_branch_15
XFILE_init_branch_23:
    c989:	83 7d 5a 00          	cmp    DWORD PTR [ebp+0x5a],0x0
    c98d:	0f 8e d9 fe ff ff    	jle    XFILE_init_branch_17
    c993:	8b 45 56             	mov    eax,DWORD PTR [ebp+0x56]
    c996:	89 45 6a             	mov    DWORD PTR [ebp+0x6a],eax
    c999:	89 45 6e             	mov    DWORD PTR [ebp+0x6e],eax
    c99c:	89 c7                	mov    edi,eax
XFILE_init_branch_24:
    c99e:	8b 45 7a             	mov    eax,DWORD PTR [ebp+0x7a]
    c9a1:	3b 45 66             	cmp    eax,DWORD PTR [ebp+0x66]
    c9a4:	0f 8d c2 fe ff ff    	jge    XFILE_init_branch_17
    c9aa:	8b 5d 7e             	mov    ebx,DWORD PTR [ebp+0x7e]
    c9ad:	85 db                	test   ebx,ebx
    c9af:	75 15                	jne    XFILE_init_branch_25
    c9b1:	b8 08 00 00 00       	mov    eax,0x8
    c9b6:	e8 5d 55 06 00       	call   W?$nwn(ui)pnv
    c9bb:	89 45 7e             	mov    DWORD PTR [ebp+0x7e],eax
    c9be:	89 87 1c a5 01 00    	mov    DWORD PTR [edi+@obj3:directory_caches],eax                   ; fixup: num: 1536, src obj: 1, src ofs: 0xc9c0, dst obj: 3, dst ofs: 0x1a51c
    c9c4:	eb 10                	jmp    XFILE_init_branch_26
XFILE_init_branch_25:
    c9c6:	b8 08 00 00 00       	mov    eax,0x8
    c9cb:	e8 48 55 06 00       	call   W?$nwn(ui)pnv
    c9d0:	89 45 7e             	mov    DWORD PTR [ebp+0x7e],eax
    c9d3:	89 43 04             	mov    DWORD PTR [ebx+0x4],eax
XFILE_init_branch_26:
    c9d6:	8b 45 7e             	mov    eax,DWORD PTR [ebp+0x7e]
    c9d9:	c7 40 04 00 00 00 00 	mov    DWORD PTR [eax+0x4],0x0
    c9e0:	b8 94 00 00 00       	mov    eax,0x94
    c9e5:	e8 2e 55 06 00       	call   W?$nwn(ui)pnv
    c9ea:	89 c1                	mov    ecx,eax
    c9ec:	89 c6                	mov    esi,eax
    c9ee:	8b 45 7e             	mov    eax,DWORD PTR [ebp+0x7e]
    c9f1:	89 08                	mov    DWORD PTR [eax],ecx
    c9f3:	8b 45 6e             	mov    eax,DWORD PTR [ebp+0x6e]
    c9f6:	bb 94 00 00 00       	mov    ebx,0x94
    c9fb:	89 ca                	mov    edx,ecx
    c9fd:	8b 80 f4 a4 01 00    	mov    eax,DWORD PTR [eax+@obj3:consolidated_file_handles]          ; fixup: num: 1545, src obj: 1, src ofs: 0xc9ff, dst obj: 3, dst ofs: 0x1a4f4
    ca03:	e8 5b 55 06 00       	call   read_
    ca08:	8b 45 7a             	mov    eax,DWORD PTR [ebp+0x7a]
    ca0b:	05 94 00 00 00       	add    eax,0x94
    ca10:	8a 1d 16 10 00 00    	mov    bl,BYTE PTR ds:@obj3:xfile_cpp_variable_9                    ; fixup: num: 1544, src obj: 1, src ofs: 0xca12, dst obj: 3, dst ofs: 0x1016
    ca16:	89 45 7a             	mov    DWORD PTR [ebp+0x7a],eax
    ca19:	3a 19                	cmp    bl,BYTE PTR [ecx]
    ca1b:	75 21                	jne    XFILE_init_branch_27
    ca1d:	8a 3d 1c 10 00 00    	mov    bh,BYTE PTR ds:@obj3:xfile_cpp_variable_10                   ; fixup: num: 1543, src obj: 1, src ofs: 0xca1f, dst obj: 3, dst ofs: 0x101c
    ca23:	3a 79 01             	cmp    bh,BYTE PTR [ecx+0x1]
    ca26:	75 16                	jne    XFILE_init_branch_27
    ca28:	8a 41 02             	mov    al,BYTE PTR [ecx+0x2]
    ca2b:	3a 05 22 10 00 00    	cmp    al,BYTE PTR ds:@obj3:xfile_cpp_variable_11                   ; fixup: num: 1542, src obj: 1, src ofs: 0xca2d, dst obj: 3, dst ofs: 0x1022
    ca31:	75 0b                	jne    XFILE_init_branch_27
    ca33:	8a 15 28 10 00 00    	mov    dl,BYTE PTR ds:@obj3:xfile_cpp_variable_12                   ; fixup: num: 1541, src obj: 1, src ofs: 0xca35, dst obj: 3, dst ofs: 0x1028
    ca39:	3a 51 03             	cmp    dl,BYTE PTR [ecx+0x3]
    ca3c:	74 11                	je     XFILE_init_branch_28
XFILE_init_branch_27:
    ca3e:	bb 2a 10 00 00       	mov    ebx,@obj3:xfile_cpp_variable_13                              ; fixup: num: 1540, src obj: 1, src ofs: 0xca3f, dst obj: 3, dst ofs: 0x102a
    ca43:	ba 2a 01 00 00       	mov    edx,0x12a
    ca48:	31 c0                	xor    eax,eax
    ca4a:	e8 e1 b5 02 00       	call   _error_report
XFILE_init_branch_28:
    ca4f:	8b 55 7a             	mov    edx,DWORD PTR [ebp+0x7a]
    ca52:	03 96 88 00 00 00    	add    edx,DWORD PTR [esi+0x88]
    ca58:	8b 45 6a             	mov    eax,DWORD PTR [ebp+0x6a]
    ca5b:	31 db                	xor    ebx,ebx
    ca5d:	8b 80 f4 a4 01 00    	mov    eax,DWORD PTR [eax+@obj3:consolidated_file_handles]          ; fixup: num: 1539, src obj: 1, src ofs: 0xca5f, dst obj: 3, dst ofs: 0x1a4f4
    ca63:	89 55 7a             	mov    DWORD PTR [ebp+0x7a],edx
    ca66:	e8 64 54 06 00       	call   lseek_                                                       ; aliases: lseek_, _lseek_
    ca6b:	e9 2e ff ff ff       	jmp    XFILE_init_branch_24
XFILE_init_branch_29:
    ca70:	b0 01                	mov    al,0x1
    ca72:	8d a5 82 00 00 00    	lea    esp,[ebp+0x82]
    ca78:	5d                   	pop    ebp
    ca79:	5f                   	pop    edi
    ca7a:	5e                   	pop    esi
    ca7b:	5a                   	pop    edx
    ca7c:	59                   	pop    ecx
    ca7d:	5b                   	pop    ebx
    ca7e:	c3                   	ret    
    ca7f:	90                   	nop

;-------------------------------------------------
;  Function 'XFILE_shutdown'                     -
;-------------------------------------------------
XFILE_shutdown:
    ca80:	53                   	push   ebx
    ca81:	51                   	push   ecx
    ca82:	52                   	push   edx
    ca83:	56                   	push   esi
    ca84:	57                   	push   edi
    ca85:	55                   	push   ebp
    ca86:	80 3d cb a4 01 00 00 	cmp    BYTE PTR ds:@obj3:XFILE_initialized,0x0                      ; fixup: num: 1538, src obj: 1, src ofs: 0xca88, dst obj: 3, dst ofs: 0x1a4cb
    ca8d:	75 07                	jne    XFILE_shutdown_branch_1
    ca8f:	b0 01                	mov    al,0x1
    ca91:	e9 9d 00 00 00       	jmp    XFILE_shutdown_branch_10
XFILE_shutdown_branch_1:
    ca96:	31 d2                	xor    edx,edx
    ca98:	bb ff ff ff ff       	mov    ebx,0xffffffff
    ca9d:	31 f6                	xor    esi,esi
    ca9f:	eb 1f                	jmp    XFILE_shutdown_branch_3
    caa1:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    caa7:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
    caad:	8d 40 00             	lea    eax,[eax+0x0]
XFILE_shutdown_branch_2:
    cab0:	83 c2 04             	add    edx,0x4
    cab3:	89 b2 c8 a4 01 00    	mov    DWORD PTR [edx+@obj3:path_variable_1],esi                    ; fixup: num: 1551, src obj: 1, src ofs: 0xcab5, dst obj: 3, dst ofs: 0x1a4c8
    cab9:	83 fa 28             	cmp    edx,0x28
    cabc:	74 2c                	je     XFILE_shutdown_branch_5
    cabe:	8b c0                	mov    eax,eax
XFILE_shutdown_branch_3:
    cac0:	8b 8a f4 a4 01 00    	mov    ecx,DWORD PTR [edx+@obj3:consolidated_file_handles]          ; fixup: num: 1550, src obj: 1, src ofs: 0xcac2, dst obj: 3, dst ofs: 0x1a4f4
    cac6:	89 9a 44 27 02 00    	mov    DWORD PTR [edx+@obj3:current_head_offset],ebx                ; fixup: num: 1549, src obj: 1, src ofs: 0xcac8, dst obj: 3, dst ofs: 0x22744
    cacc:	39 ce                	cmp    esi,ecx
    cace:	7d 07                	jge    XFILE_shutdown_branch_4
    cad0:	89 c8                	mov    eax,ecx
    cad2:	e8 39 54 06 00       	call   close_
XFILE_shutdown_branch_4:
    cad7:	8b ba cc a4 01 00    	mov    edi,DWORD PTR [edx+@obj3:consolidated_filenames]             ; fixup: num: 1548, src obj: 1, src ofs: 0xcad9, dst obj: 3, dst ofs: 0x1a4cc
    cadd:	39 fe                	cmp    esi,edi
    cadf:	74 cf                	je     XFILE_shutdown_branch_2
    cae1:	89 f8                	mov    eax,edi
    cae3:	e8 00 49 06 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
    cae8:	eb c6                	jmp    XFILE_shutdown_branch_2
XFILE_shutdown_branch_5:
    caea:	31 c9                	xor    ecx,ecx
    caec:	31 f6                	xor    esi,esi
    caee:	eb 10                	jmp    XFILE_shutdown_branch_7
XFILE_shutdown_branch_6:
    caf0:	83 c1 04             	add    ecx,0x4
    caf3:	83 f9 28             	cmp    ecx,0x28
    caf6:	74 31                	je     XFILE_shutdown_branch_9
    caf8:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    cafe:	8b d2                	mov    edx,edx
XFILE_shutdown_branch_7:
    cb00:	8b a9 1c a5 01 00    	mov    ebp,DWORD PTR [ecx+@obj3:directory_caches]                   ; fixup: num: 1547, src obj: 1, src ofs: 0xcb02, dst obj: 3, dst ofs: 0x1a51c
    cb06:	39 ee                	cmp    esi,ebp
    cb08:	74 e6                	je     XFILE_shutdown_branch_6
    cb0a:	89 ea                	mov    edx,ebp
    cb0c:	85 ed                	test   ebp,ebp
    cb0e:	74 e0                	je     XFILE_shutdown_branch_6
XFILE_shutdown_branch_8:
    cb10:	89 d3                	mov    ebx,edx
    cb12:	8b 03                	mov    eax,DWORD PTR [ebx]
    cb14:	8b 52 04             	mov    edx,DWORD PTR [edx+0x4]
    cb17:	e8 5c 55 06 00       	call   W?$dln(pnv)v
    cb1c:	89 d8                	mov    eax,ebx
    cb1e:	e8 55 55 06 00       	call   W?$dln(pnv)v
    cb23:	85 d2                	test   edx,edx
    cb25:	75 e9                	jne    XFILE_shutdown_branch_8
    cb27:	eb c7                	jmp    XFILE_shutdown_branch_6
XFILE_shutdown_branch_9:
    cb29:	30 d2                	xor    dl,dl
    cb2b:	b0 01                	mov    al,0x1
    cb2d:	88 15 cb a4 01 00    	mov    BYTE PTR ds:@obj3:XFILE_initialized,dl                       ; fixup: num: 1546, src obj: 1, src ofs: 0xcb2f, dst obj: 3, dst ofs: 0x1a4cb
XFILE_shutdown_branch_10:
    cb33:	5d                   	pop    ebp
    cb34:	5f                   	pop    edi
    cb35:	5e                   	pop    esi
    cb36:	5a                   	pop    edx
    cb37:	59                   	pop    ecx
    cb38:	5b                   	pop    ebx
    cb39:	c3                   	ret    
    cb3a:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'XFILE_seal'                         -
;-------------------------------------------------
XFILE_seal:
    cb40:	53                   	push   ebx
    cb41:	51                   	push   ecx
    cb42:	52                   	push   edx
    cb43:	56                   	push   esi
    cb44:	81 ec 80 00 00 00    	sub    esp,0x80
    cb4a:	89 c1                	mov    ecx,eax
    cb4c:	e8 ef fa ff ff       	call   XFILE_init
    cb51:	83 3c 8d f4 a4 01 00 00 	cmp    DWORD PTR [ecx*4+@obj3:consolidated_file_handles],0x0     ; fixup: num: 1557, src obj: 1, src ofs: 0xcb54, dst obj: 3, dst ofs: 0x1a4f4
    cb59:	7f 11                	jg     XFILE_seal_branch_1
    cb5b:	bb 4d 10 00 00       	mov    ebx,@obj3:xfile_cpp_variable_14                              ; fixup: num: 1556, src obj: 1, src ofs: 0xcb5c, dst obj: 3, dst ofs: 0x104d
    cb60:	ba 89 01 00 00       	mov    edx,0x189
    cb65:	31 c0                	xor    eax,eax
    cb67:	e8 c4 b4 02 00       	call   _error_report
XFILE_seal_branch_1:
    cb6c:	51                   	push   ecx
    cb6d:	68 5c 10 00 00       	push   @obj3:xfile_cpp_variable_15                                  ; fixup: num: 1555, src obj: 1, src ofs: 0xcb6e, dst obj: 3, dst ofs: 0x105c
    cb72:	e8 db 3f 06 00       	call   printf_
    cb77:	83 c4 08             	add    esp,0x8
    cb7a:	51                   	push   ecx
    cb7b:	68 6f 10 00 00       	push   @obj3:xfile_cpp_variable_16                                  ; fixup: num: 1554, src obj: 1, src ofs: 0xcb7c, dst obj: 3, dst ofs: 0x106f
    cb80:	8d 44 24 08          	lea    eax,[esp+0x8]
    cb84:	50                   	push   eax
    cb85:	e8 57 40 06 00       	call   sprintf_
    cb8a:	83 c4 0c             	add    esp,0xc
    cb8d:	68 80 01 00 00       	push   0x180
    cb92:	68 62 02 00 00       	push   0x262
    cb97:	8d 44 24 08          	lea    eax,[esp+0x8]
    cb9b:	50                   	push   eax
    cb9c:	e8 d5 49 06 00       	call   open_
    cba1:	83 c4 0c             	add    esp,0xc
    cba4:	89 c6                	mov    esi,eax
    cba6:	85 c0                	test   eax,eax
    cba8:	7d 11                	jge    XFILE_seal_branch_2
    cbaa:	bb 7a 10 00 00       	mov    ebx,@obj3:xfile_cpp_variable_17                              ; fixup: num: 1553, src obj: 1, src ofs: 0xcbab, dst obj: 3, dst ofs: 0x107a
    cbaf:	ba 8d 01 00 00       	mov    edx,0x18d
    cbb4:	31 c0                	xor    eax,eax
    cbb6:	e8 75 b4 02 00       	call   _error_report
XFILE_seal_branch_2:
    cbbb:	8d 0c 8d 00 00 00 00 	lea    ecx,[ecx*4+0x0]
    cbc2:	8b 99 1c a5 01 00    	mov    ebx,DWORD PTR [ecx+@obj3:directory_caches]                   ; fixup: num: 1552, src obj: 1, src ofs: 0xcbc4, dst obj: 3, dst ofs: 0x1a51c
    cbc8:	85 db                	test   ebx,ebx
    cbca:	74 17                	je     XFILE_seal_branch_4
    cbcc:	89 d9                	mov    ecx,ebx
XFILE_seal_branch_3:
    cbce:	bb 94 00 00 00       	mov    ebx,0x94
    cbd3:	89 f0                	mov    eax,esi
    cbd5:	8b 11                	mov    edx,DWORD PTR [ecx]
    cbd7:	e8 e8 4b 06 00       	call   write_
    cbdc:	8b 49 04             	mov    ecx,DWORD PTR [ecx+0x4]
    cbdf:	85 c9                	test   ecx,ecx
    cbe1:	75 eb                	jne    XFILE_seal_branch_3
XFILE_seal_branch_4:
    cbe3:	89 f0                	mov    eax,esi
    cbe5:	e8 26 53 06 00       	call   close_
    cbea:	81 c4 80 00 00 00    	add    esp,0x80
    cbf0:	5e                   	pop    esi
    cbf1:	5a                   	pop    edx
    cbf2:	59                   	pop    ecx
    cbf3:	5b                   	pop    ebx
    cbf4:	c3                   	ret    
    cbf5:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    cbfb:	8d 52 00             	lea    edx,[edx+0x0]
    cbfe:	8b db                	mov    ebx,ebx

;-------------------------------------------------
;  Function 'XFILE_directory'                    -
;-------------------------------------------------
XFILE_directory:
    cc00:	53                   	push   ebx
    cc01:	51                   	push   ecx
    cc02:	52                   	push   edx
    cc03:	56                   	push   esi
    cc04:	89 c1                	mov    ecx,eax
    cc06:	e8 35 fa ff ff       	call   XFILE_init
    cc0b:	83 3c 8d f4 a4 01 00 00 	cmp    DWORD PTR [ecx*4+@obj3:consolidated_file_handles],0x0     ; fixup: num: 1563, src obj: 1, src ofs: 0xcc0e, dst obj: 3, dst ofs: 0x1a4f4
    cc13:	7f 11                	jg     XFILE_directory_branch_1
    cc15:	bb 95 10 00 00       	mov    ebx,@obj3:xfile_cpp_variable_18                              ; fixup: num: 1562, src obj: 1, src ofs: 0xcc16, dst obj: 3, dst ofs: 0x1095
    cc1a:	ba a2 01 00 00       	mov    edx,0x1a2
    cc1f:	31 c0                	xor    eax,eax
    cc21:	e8 0a b4 02 00       	call   _error_report
XFILE_directory_branch_1:
    cc26:	51                   	push   ecx
    cc27:	68 a4 10 00 00       	push   @obj3:xfile_cpp_variable_19                                  ; fixup: num: 1561, src obj: 1, src ofs: 0xcc28, dst obj: 3, dst ofs: 0x10a4
    cc2c:	8d 14 8d 00 00 00 00 	lea    edx,[ecx*4+0x0]
    cc33:	e8 1a 3f 06 00       	call   printf_
    cc38:	8b 9a 1c a5 01 00    	mov    ebx,DWORD PTR [edx+@obj3:directory_caches]                   ; fixup: num: 1560, src obj: 1, src ofs: 0xcc3a, dst obj: 3, dst ofs: 0x1a51c
    cc3e:	83 c4 08             	add    esp,0x8
    cc41:	85 db                	test   ebx,ebx
    cc43:	74 2a                	je     XFILE_directory_branch_3
    cc45:	89 da                	mov    edx,ebx
XFILE_directory_branch_2:
    cc47:	8b 02                	mov    eax,DWORD PTR [edx]
    cc49:	8d 58 04             	lea    ebx,[eax+0x4]
    cc4c:	53                   	push   ebx
    cc4d:	8b 88 88 00 00 00    	mov    ecx,DWORD PTR [eax+0x88]
    cc53:	51                   	push   ecx
    cc54:	8b b0 90 00 00 00    	mov    esi,DWORD PTR [eax+0x90]
    cc5a:	56                   	push   esi
    cc5b:	68 bc 10 00 00       	push   @obj3:xfile_cpp_variable_20                                  ; fixup: num: 1559, src obj: 1, src ofs: 0xcc5c, dst obj: 3, dst ofs: 0x10bc
    cc60:	e8 ed 3e 06 00       	call   printf_
    cc65:	8b 52 04             	mov    edx,DWORD PTR [edx+0x4]
    cc68:	83 c4 10             	add    esp,0x10
    cc6b:	85 d2                	test   edx,edx
    cc6d:	75 d8                	jne    XFILE_directory_branch_2
XFILE_directory_branch_3:
    cc6f:	5e                   	pop    esi
    cc70:	5a                   	pop    edx
    cc71:	59                   	pop    ecx
    cc72:	5b                   	pop    ebx
    cc73:	c3                   	ret    
    cc74:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    cc7a:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]

;-------------------------------------------------
;  Function 'XFILE_size'                         -
;-------------------------------------------------
XFILE_size:
    cc80:	53                   	push   ebx
    cc81:	51                   	push   ecx
    cc82:	52                   	push   edx
    cc83:	56                   	push   esi
    cc84:	57                   	push   edi
    cc85:	55                   	push   ebp
    cc86:	89 c5                	mov    ebp,eax
    cc88:	85 c0                	test   eax,eax
    cc8a:	75 0a                	jne    XFILE_size_branch_1
    cc8c:	b8 ff ff ff ff       	mov    eax,0xffffffff
    cc91:	e9 3f 01 00 00       	jmp    XFILE_size_branch_13
XFILE_size_branch_1:
    cc96:	e8 a5 f9 ff ff       	call   XFILE_init
    cc9b:	8a 45 00             	mov    al,BYTE PTR [ebp+0x0]
    cc9e:	fe c0                	inc    al
    cca0:	25 ff 00 00 00       	and    eax,0xff
    cca5:	8a 80 98 0d 01 00    	mov    al,BYTE PTR [eax+@obj3:__IsTable]                            ; fixup: num: 1558, src obj: 1, src ofs: 0xcca7, dst obj: 3, dst ofs: 0x10d98
    ccab:	24 20                	and    al,0x20
    ccad:	25 ff 00 00 00       	and    eax,0xff
    ccb2:	74 62                	je     XFILE_size_branch_6
    ccb4:	31 c0                	xor    eax,eax
    ccb6:	8a 45 00             	mov    al,BYTE PTR [ebp+0x0]
    ccb9:	83 e8 30             	sub    eax,0x30
    ccbc:	8d 1c 85 00 00 00 00 	lea    ebx,[eax*4+0x0]
    ccc3:	83 bb f4 a4 01 00 00 	cmp    DWORD PTR [ebx+@obj3:consolidated_file_handles],0x0          ; fixup: num: 1569, src obj: 1, src ofs: 0xccc5, dst obj: 3, dst ofs: 0x1a4f4
    ccca:	7f 0c                	jg     XFILE_size_branch_2
    cccc:	b8 ff ff ff ff       	mov    eax,0xffffffff
    ccd1:	5d                   	pop    ebp
    ccd2:	5f                   	pop    edi
    ccd3:	5e                   	pop    esi
    ccd4:	5a                   	pop    edx
    ccd5:	59                   	pop    ecx
    ccd6:	5b                   	pop    ebx
    ccd7:	c3                   	ret    
XFILE_size_branch_2:
    ccd8:	8b 8b 1c a5 01 00    	mov    ecx,DWORD PTR [ebx+@obj3:directory_caches]                   ; fixup: num: 1568, src obj: 1, src ofs: 0xccda, dst obj: 3, dst ofs: 0x1a51c
    ccde:	85 c9                	test   ecx,ecx
    cce0:	74 28                	je     XFILE_size_branch_5
    cce2:	89 cb                	mov    ebx,ecx
XFILE_size_branch_3:
    cce4:	8b 13                	mov    edx,DWORD PTR [ebx]
    cce6:	89 e8                	mov    eax,ebp
    cce8:	83 c2 04             	add    edx,0x4
    cceb:	e8 6a 47 06 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
    ccf0:	85 c0                	test   eax,eax
    ccf2:	75 0f                	jne    XFILE_size_branch_4
    ccf4:	8b 03                	mov    eax,DWORD PTR [ebx]
    ccf6:	8b 80 90 00 00 00    	mov    eax,DWORD PTR [eax+0x90]
    ccfc:	5d                   	pop    ebp
    ccfd:	5f                   	pop    edi
    ccfe:	5e                   	pop    esi
    ccff:	5a                   	pop    edx
    cd00:	59                   	pop    ecx
    cd01:	5b                   	pop    ebx
    cd02:	c3                   	ret    
XFILE_size_branch_4:
    cd03:	8b 5b 04             	mov    ebx,DWORD PTR [ebx+0x4]
    cd06:	85 db                	test   ebx,ebx
    cd08:	75 da                	jne    XFILE_size_branch_3
XFILE_size_branch_5:
    cd0a:	b8 ff ff ff ff       	mov    eax,0xffffffff
    cd0f:	5d                   	pop    ebp
    cd10:	5f                   	pop    edi
    cd11:	5e                   	pop    esi
    cd12:	5a                   	pop    edx
    cd13:	59                   	pop    ecx
    cd14:	5b                   	pop    ebx
    cd15:	c3                   	ret    
XFILE_size_branch_6:
    cd16:	ba d8 0f 00 00       	mov    edx,@obj3:xfile_cpp_variable_3                               ; fixup: num: 1567, src obj: 1, src ofs: 0xcd17, dst obj: 3, dst ofs: 0xfd8
    cd1b:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 1566, src obj: 1, src ofs: 0xcd1c, dst obj: 3, dst ofs: 0x32438
    cd20:	bf cc a3 01 00       	mov    edi,@obj3:path                                               ; fixup: num: 1565, src obj: 1, src ofs: 0xcd21, dst obj: 3, dst ofs: 0x1a3cc
    cd25:	e8 a6 0a 06 00       	call   get
    cd2a:	89 c6                	mov    esi,eax
    cd2c:	57                   	push   edi
XFILE_size_branch_7:
    cd2d:	8a 06                	mov    al,BYTE PTR [esi]
    cd2f:	88 07                	mov    BYTE PTR [edi],al
    cd31:	3c 00                	cmp    al,0x0
    cd33:	74 10                	je     XFILE_size_branch_8
    cd35:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
    cd38:	83 c6 02             	add    esi,0x2
    cd3b:	88 47 01             	mov    BYTE PTR [edi+0x1],al
    cd3e:	83 c7 02             	add    edi,0x2
    cd41:	3c 00                	cmp    al,0x0
    cd43:	75 e8                	jne    XFILE_size_branch_7
XFILE_size_branch_8:
    cd45:	5f                   	pop    edi
    cd46:	29 c9                	sub    ecx,ecx
    cd48:	49                   	dec    ecx
    cd49:	31 c0                	xor    eax,eax
    cd4b:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
    cd4d:	f7 d1                	not    ecx
    cd4f:	49                   	dec    ecx
    cd50:	bf cc a3 01 00       	mov    edi,@obj3:path                                               ; fixup: num: 1564, src obj: 1, src ofs: 0xcd51, dst obj: 3, dst ofs: 0x1a3cc
    cd55:	89 ee                	mov    esi,ebp
    cd57:	01 cf                	add    edi,ecx
    cd59:	57                   	push   edi
XFILE_size_branch_9:
    cd5a:	8a 06                	mov    al,BYTE PTR [esi]
    cd5c:	88 07                	mov    BYTE PTR [edi],al
    cd5e:	3c 00                	cmp    al,0x0
    cd60:	74 10                	je     XFILE_size_branch_10
    cd62:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
    cd65:	83 c6 02             	add    esi,0x2
    cd68:	88 47 01             	mov    BYTE PTR [edi+0x1],al
    cd6b:	83 c7 02             	add    edi,0x2
    cd6e:	3c 00                	cmp    al,0x0
    cd70:	75 e8                	jne    XFILE_size_branch_9
XFILE_size_branch_10:
    cd72:	5f                   	pop    edi
    cd73:	b8 cc a3 01 00       	mov    eax,@obj3:path                                               ; fixup: num: 1495, src obj: 1, src ofs: 0xcd74, dst obj: 3, dst ofs: 0x1a3cc
    cd78:	85 c0                	test   eax,eax
    cd7a:	75 0c                	jne    XFILE_size_branch_11
    cd7c:	b8 ff ff ff ff       	mov    eax,0xffffffff
    cd81:	5d                   	pop    ebp
    cd82:	5f                   	pop    edi
    cd83:	5e                   	pop    esi
    cd84:	5a                   	pop    edx
    cd85:	59                   	pop    ecx
    cd86:	5b                   	pop    ebx
    cd87:	c3                   	ret    
XFILE_size_branch_11:
    cd88:	68 00 02 00 00       	push   0x200
    cd8d:	50                   	push   eax
    cd8e:	e8 e3 47 06 00       	call   open_
    cd93:	89 c2                	mov    edx,eax
    cd95:	83 c4 08             	add    esp,0x8
    cd98:	83 f8 ff             	cmp    eax,0xffffffff
    cd9b:	75 28                	jne    XFILE_size_branch_12
    cd9d:	68 cc a3 01 00       	push   @obj3:path                                                   ; fixup: num: 1494, src obj: 1, src ofs: 0xcd9e, dst obj: 3, dst ofs: 0x1a3cc
    cda2:	e8 fb 8f 06 00       	call   __get_errno_ptr_
    cda7:	8b 00                	mov    eax,DWORD PTR [eax]
    cda9:	50                   	push   eax
    cdaa:	68 cb 10 00 00       	push   @obj3:xfile_cpp_variable_21                                  ; fixup: num: 1493, src obj: 1, src ofs: 0xcdab, dst obj: 3, dst ofs: 0x10cb
    cdaf:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 1492, src obj: 1, src ofs: 0xcdb0, dst obj: 3, dst ofs: 0x237fc
    cdb4:	e8 28 3e 06 00       	call   sprintf_
    cdb9:	83 c4 10             	add    esp,0x10
    cdbc:	89 d0                	mov    eax,edx
    cdbe:	5d                   	pop    ebp
    cdbf:	5f                   	pop    edi
    cdc0:	5e                   	pop    esi
    cdc1:	5a                   	pop    edx
    cdc2:	59                   	pop    ecx
    cdc3:	5b                   	pop    ebx
    cdc4:	c3                   	ret    
XFILE_size_branch_12:
    cdc5:	e8 9b 8f 06 00       	call   filelength_
    cdca:	89 c3                	mov    ebx,eax
    cdcc:	89 d0                	mov    eax,edx
    cdce:	e8 3d 51 06 00       	call   close_
    cdd3:	89 d8                	mov    eax,ebx
XFILE_size_branch_13:
    cdd5:	5d                   	pop    ebp
    cdd6:	5f                   	pop    edi
    cdd7:	5e                   	pop    esi
    cdd8:	5a                   	pop    edx
    cdd9:	59                   	pop    ecx
    cdda:	5b                   	pop    ebx
    cddb:	c3                   	ret    
    cddc:	8d 44 20 00          	lea    eax,[eax+eiz*1+0x0]

;-------------------------------------------------
;  Function 'XFILE_read2'                        -
;-------------------------------------------------
XFILE_read2:
    cde0:	56                   	push   esi
    cde1:	57                   	push   edi
    cde2:	55                   	push   ebp
    cde3:	81 ec 20 01 00 00    	sub    esp,0x120
    cde9:	89 c5                	mov    ebp,eax
    cdeb:	89 94 24 04 01 00 00 	mov    DWORD PTR [esp+0x104],edx
    cdf2:	85 c0                	test   eax,eax
    cdf4:	75 25                	jne    XFILE_read2_branch_1
    cdf6:	51                   	push   ecx
    cdf7:	53                   	push   ebx
    cdf8:	68 f2 10 00 00       	push   @obj3:xfile_cpp_variable_22                                  ; fixup: num: 1491, src obj: 1, src ofs: 0xcdf9, dst obj: 3, dst ofs: 0x10f2
    cdfd:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 1490, src obj: 1, src ofs: 0xcdfe, dst obj: 3, dst ofs: 0x237fc
    ce02:	ba da 01 00 00       	mov    edx,0x1da
    ce07:	e8 d5 3d 06 00       	call   sprintf_
    ce0c:	83 c4 10             	add    esp,0x10
    ce0f:	bb fc 37 02 00       	mov    ebx,@obj3:log_buffer                                         ; fixup: num: 1502, src obj: 1, src ofs: 0xce10, dst obj: 3, dst ofs: 0x237fc
    ce14:	31 c0                	xor    eax,eax
    ce16:	e8 15 b2 02 00       	call   _error_report
XFILE_read2_branch_1:
    ce1b:	80 3d ac a1 01 00 00 	cmp    BYTE PTR ds:@obj3:the_sound_system_variable_1,0x0            ; fixup: num: 1501, src obj: 1, src ofs: 0xce1d, dst obj: 3, dst ofs: 0x1a1ac
    ce22:	74 18                	je     XFILE_read2_branch_2
    ce24:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 1500, src obj: 1, src ofs: 0xce25, dst obj: 3, dst ofs: 0x1a1d4
    ce29:	e8 b2 ca ff ff       	call   playing
    ce2e:	84 c0                	test   al,al
    ce30:	74 0a                	je     XFILE_read2_branch_2
    ce32:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 1499, src obj: 1, src ofs: 0xce33, dst obj: 3, dst ofs: 0x1a1d4
    ce37:	e8 64 eb ff ff       	call   update_mod_9
XFILE_read2_branch_2:
    ce3c:	e8 ff f7 ff ff       	call   XFILE_init
    ce41:	8a 45 00             	mov    al,BYTE PTR [ebp+0x0]
    ce44:	fe c0                	inc    al
    ce46:	25 ff 00 00 00       	and    eax,0xff
    ce4b:	8a 80 98 0d 01 00    	mov    al,BYTE PTR [eax+@obj3:__IsTable]                            ; fixup: num: 1498, src obj: 1, src ofs: 0xce4d, dst obj: 3, dst ofs: 0x10d98
    ce51:	24 20                	and    al,0x20
    ce53:	25 ff 00 00 00       	and    eax,0xff
    ce58:	0f 84 af 02 00 00    	je     XFILE_read2_branch_23
    ce5e:	31 c0                	xor    eax,eax
    ce60:	8a 45 00             	mov    al,BYTE PTR [ebp+0x0]
    ce63:	83 e8 30             	sub    eax,0x30
    ce66:	89 84 24 0c 01 00 00 	mov    DWORD PTR [esp+0x10c],eax
    ce6d:	8d 04 85 00 00 00 00 	lea    eax,[eax*4+0x0]
    ce74:	83 b8 f4 a4 01 00 00 	cmp    DWORD PTR [eax+@obj3:consolidated_file_handles],0x0          ; fixup: num: 1497, src obj: 1, src ofs: 0xce76, dst obj: 3, dst ofs: 0x1a4f4
    ce7b:	7f 07                	jg     XFILE_read2_branch_3
    ce7d:	31 c0                	xor    eax,eax
    ce7f:	e9 e4 03 00 00       	jmp    XFILE_read2_branch_37
XFILE_read2_branch_3:
    ce84:	8b 98 1c a5 01 00    	mov    ebx,DWORD PTR [eax+@obj3:directory_caches]                   ; fixup: num: 1496, src obj: 1, src ofs: 0xce86, dst obj: 3, dst ofs: 0x1a51c
    ce8a:	85 db                	test   ebx,ebx
    ce8c:	0f 84 6f 02 00 00    	je     XFILE_read2_branch_22
    ce92:	89 9c 24 18 01 00 00 	mov    DWORD PTR [esp+0x118],ebx
    ce99:	31 db                	xor    ebx,ebx
XFILE_read2_branch_4:
    ce9b:	8b 94 24 18 01 00 00 	mov    edx,DWORD PTR [esp+0x118]
    cea2:	8b 12                	mov    edx,DWORD PTR [edx]
    cea4:	89 e8                	mov    eax,ebp
    cea6:	83 c2 04             	add    edx,0x4
    cea9:	e8 ac 45 06 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
    ceae:	85 c0                	test   eax,eax
    ceb0:	0f 85 32 02 00 00    	jne    XFILE_read2_branch_21
    ceb6:	8b b4 24 04 01 00 00 	mov    esi,DWORD PTR [esp+0x104]
    cebd:	85 f6                	test   esi,esi
    cebf:	74 09                	je     XFILE_read2_branch_5
    cec1:	89 b4 24 10 01 00 00 	mov    DWORD PTR [esp+0x110],esi
    cec8:	eb 31                	jmp    XFILE_read2_branch_8
XFILE_read2_branch_5:
    ceca:	8b 84 24 18 01 00 00 	mov    eax,DWORD PTR [esp+0x118]
    ced1:	8b 00                	mov    eax,DWORD PTR [eax]
    ced3:	83 b8 8c 00 00 00 00 	cmp    DWORD PTR [eax+0x8c],0x0
    ceda:	75 08                	jne    XFILE_read2_branch_6
    cedc:	8b 80 88 00 00 00    	mov    eax,DWORD PTR [eax+0x88]
    cee2:	eb 0b                	jmp    XFILE_read2_branch_7
XFILE_read2_branch_6:
    cee4:	8b 80 90 00 00 00    	mov    eax,DWORD PTR [eax+0x90]
    ceea:	05 00 04 00 00       	add    eax,0x400
XFILE_read2_branch_7:
    ceef:	e8 9f 45 06 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
    cef4:	89 84 24 10 01 00 00 	mov    DWORD PTR [esp+0x110],eax
XFILE_read2_branch_8:
    cefb:	83 bc 24 10 01 00 00 00 	cmp    DWORD PTR [esp+0x110],0x0
    cf03:	75 23                	jne    XFILE_read2_branch_9
    cf05:	55                   	push   ebp
    cf06:	68 1f 11 00 00       	push   @obj3:xfile_cpp_variable_23                                  ; fixup: num: 1505, src obj: 1, src ofs: 0xcf07, dst obj: 3, dst ofs: 0x111f
    cf0b:	8d 44 24 08          	lea    eax,[esp+0x8]
    cf0f:	50                   	push   eax
    cf10:	8d 5c 24 0c          	lea    ebx,[esp+0xc]
    cf14:	e8 c8 3c 06 00       	call   sprintf_
    cf19:	83 c4 0c             	add    esp,0xc
    cf1c:	ba 00 02 00 00       	mov    edx,0x200
    cf21:	31 c0                	xor    eax,eax
    cf23:	e8 08 b1 02 00       	call   _error_report
XFILE_read2_branch_9:
    cf28:	8b 9c 24 0c 01 00 00 	mov    ebx,DWORD PTR [esp+0x10c]
    cf2f:	8b 84 24 18 01 00 00 	mov    eax,DWORD PTR [esp+0x118]
    cf36:	8d 1c 9d 00 00 00 00 	lea    ebx,[ebx*4+0x0]
    cf3d:	8b 00                	mov    eax,DWORD PTR [eax]
    cf3f:	8b 93 44 27 02 00    	mov    edx,DWORD PTR [ebx+@obj3:current_head_offset]                ; fixup: num: 1504, src obj: 1, src ofs: 0xcf41, dst obj: 3, dst ofs: 0x22744
    cf45:	8b 88 84 00 00 00    	mov    ecx,DWORD PTR [eax+0x84]
    cf4b:	39 ca                	cmp    edx,ecx
    cf4d:	74 0f                	je     XFILE_read2_branch_10
    cf4f:	89 ca                	mov    edx,ecx
    cf51:	8b 83 f4 a4 01 00    	mov    eax,DWORD PTR [ebx+@obj3:consolidated_file_handles]          ; fixup: num: 1503, src obj: 1, src ofs: 0xcf53, dst obj: 3, dst ofs: 0x1a4f4
    cf57:	31 db                	xor    ebx,ebx
    cf59:	e8 71 4f 06 00       	call   lseek_                                                       ; aliases: lseek_, _lseek_
XFILE_read2_branch_10:
    cf5e:	8b 84 24 18 01 00 00 	mov    eax,DWORD PTR [esp+0x118]
    cf65:	8b 00                	mov    eax,DWORD PTR [eax]
    cf67:	83 b8 8c 00 00 00 00 	cmp    DWORD PTR [eax+0x8c],0x0
    cf6e:	75 25                	jne    XFILE_read2_branch_11
    cf70:	8b 98 88 00 00 00    	mov    ebx,DWORD PTR [eax+0x88]
    cf76:	8b 84 24 0c 01 00 00 	mov    eax,DWORD PTR [esp+0x10c]
    cf7d:	8b 94 24 10 01 00 00 	mov    edx,DWORD PTR [esp+0x110]
    cf84:	8b 04 85 f4 a4 01 00 	mov    eax,DWORD PTR [eax*4+@obj3:consolidated_file_handles]        ; fixup: num: 1508, src obj: 1, src ofs: 0xcf87, dst obj: 3, dst ofs: 0x1a4f4
    cf8b:	e8 d3 4f 06 00       	call   read_
    cf90:	e9 1c 01 00 00       	jmp    XFILE_read2_branch_20
XFILE_read2_branch_11:
    cf95:	8b 80 88 00 00 00    	mov    eax,DWORD PTR [eax+0x88]
    cf9b:	05 00 04 00 00       	add    eax,0x400
    cfa0:	e8 ee 44 06 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
    cfa5:	89 84 24 08 01 00 00 	mov    DWORD PTR [esp+0x108],eax
    cfac:	85 c0                	test   eax,eax
    cfae:	75 0f                	jne    XFILE_read2_branch_12
    cfb0:	bb 4b 11 00 00       	mov    ebx,@obj3:xfile_cpp_variable_24                              ; fixup: num: 1507, src obj: 1, src ofs: 0xcfb1, dst obj: 3, dst ofs: 0x114b
    cfb5:	ba 0d 02 00 00       	mov    edx,0x20d
    cfba:	e8 71 b0 02 00       	call   _error_report
XFILE_read2_branch_12:
    cfbf:	8b 9c 24 18 01 00 00 	mov    ebx,DWORD PTR [esp+0x118]
    cfc6:	8b 84 24 0c 01 00 00 	mov    eax,DWORD PTR [esp+0x10c]
    cfcd:	8b 1b                	mov    ebx,DWORD PTR [ebx]
    cfcf:	8b 94 24 08 01 00 00 	mov    edx,DWORD PTR [esp+0x108]
    cfd6:	8b 04 85 f4 a4 01 00 	mov    eax,DWORD PTR [eax*4+@obj3:consolidated_file_handles]        ; fixup: num: 1506, src obj: 1, src ofs: 0xcfd9, dst obj: 3, dst ofs: 0x1a4f4
    cfdd:	8b 9b 88 00 00 00    	mov    ebx,DWORD PTR [ebx+0x88]
    cfe3:	e8 7b 4f 06 00       	call   read_
    cfe8:	8b 84 24 18 01 00 00 	mov    eax,DWORD PTR [esp+0x118]
    cfef:	8b 00                	mov    eax,DWORD PTR [eax]
    cff1:	8b bc 24 10 01 00 00 	mov    edi,DWORD PTR [esp+0x110]
    cff8:	8b 94 24 08 01 00 00 	mov    edx,DWORD PTR [esp+0x108]
    cfff:	8b 80 88 00 00 00    	mov    eax,DWORD PTR [eax+0x88]
    d005:	31 db                	xor    ebx,ebx
    d007:	89 84 24 14 01 00 00 	mov    DWORD PTR [esp+0x114],eax
    d00e:	89 94 24 1c 01 00 00 	mov    DWORD PTR [esp+0x11c],edx
    d015:	8b ac 24 14 01 00 00 	mov    ebp,DWORD PTR [esp+0x114]
    d01c:	31 c0                	xor    eax,eax
    d01e:	85 ed                	test   ebp,ebp
    d020:	0f 8e 7f 00 00 00    	jle    XFILE_read2_branch_19
XFILE_read2_branch_13:
    d026:	8b 8c 24 1c 01 00 00 	mov    ecx,DWORD PTR [esp+0x11c]
    d02d:	89 da                	mov    edx,ebx
    d02f:	01 ca                	add    edx,ecx
    d031:	43                   	inc    ebx
    d032:	8a 12                	mov    dl,BYTE PTR [edx]
    d034:	81 e2 ff 00 00 00    	and    edx,0xff
    d03a:	81 fa 80 00 00 00    	cmp    edx,0x80
    d040:	7e 1e                	jle    XFILE_read2_branch_16
    d042:	81 ea 80 00 00 00    	sub    edx,0x80
    d048:	85 d2                	test   edx,edx
    d04a:	7e 11                	jle    XFILE_read2_branch_15
    d04c:	8d 2c 19             	lea    ebp,[ecx+ebx*1]
XFILE_read2_branch_14:
    d04f:	89 c6                	mov    esi,eax
    d051:	4a                   	dec    edx
    d052:	8a 4d 00             	mov    cl,BYTE PTR [ebp+0x0]
    d055:	40                   	inc    eax
    d056:	88 0c 37             	mov    BYTE PTR [edi+esi*1],cl
    d059:	85 d2                	test   edx,edx
    d05b:	7f f2                	jg     XFILE_read2_branch_14
XFILE_read2_branch_15:
    d05d:	43                   	inc    ebx
    d05e:	eb 3c                	jmp    XFILE_read2_branch_18
XFILE_read2_branch_16:
    d060:	31 f6                	xor    esi,esi
    d062:	85 d2                	test   edx,edx
    d064:	7e 36                	jle    XFILE_read2_branch_18
XFILE_read2_branch_17:
    d066:	8b 8c 24 1c 01 00 00 	mov    ecx,DWORD PTR [esp+0x11c]
    d06d:	89 dd                	mov    ebp,ebx
    d06f:	89 84 24 00 01 00 00 	mov    DWORD PTR [esp+0x100],eax
    d076:	01 cd                	add    ebp,ecx
    d078:	8b 8c 24 00 01 00 00 	mov    ecx,DWORD PTR [esp+0x100]
    d07f:	01 f9                	add    ecx,edi
    d081:	46                   	inc    esi
    d082:	89 8c 24 00 01 00 00 	mov    DWORD PTR [esp+0x100],ecx
    d089:	8a 4d 00             	mov    cl,BYTE PTR [ebp+0x0]
    d08c:	8b ac 24 00 01 00 00 	mov    ebp,DWORD PTR [esp+0x100]
    d093:	43                   	inc    ebx
    d094:	40                   	inc    eax
    d095:	88 4d 00             	mov    BYTE PTR [ebp+0x0],cl
    d098:	39 d6                	cmp    esi,edx
    d09a:	7c ca                	jl     XFILE_read2_branch_17
XFILE_read2_branch_18:
    d09c:	3b 9c 24 14 01 00 00 	cmp    ebx,DWORD PTR [esp+0x114]
    d0a3:	7c 81                	jl     XFILE_read2_branch_13
XFILE_read2_branch_19:
    d0a5:	8b 84 24 08 01 00 00 	mov    eax,DWORD PTR [esp+0x108]
    d0ac:	e8 37 43 06 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
XFILE_read2_branch_20:
    d0b1:	8b 94 24 18 01 00 00 	mov    edx,DWORD PTR [esp+0x118]
    d0b8:	8b 84 24 0c 01 00 00 	mov    eax,DWORD PTR [esp+0x10c]
    d0bf:	8b 12                	mov    edx,DWORD PTR [edx]
    d0c1:	8b 34 85 44 27 02 00 	mov    esi,DWORD PTR [eax*4+@obj3:current_head_offset]              ; fixup: num: 1676, src obj: 1, src ofs: 0xd0c4, dst obj: 3, dst ofs: 0x22744
    d0c8:	8b 92 88 00 00 00    	mov    edx,DWORD PTR [edx+0x88]
    d0ce:	01 d6                	add    esi,edx
    d0d0:	89 34 85 44 27 02 00 	mov    DWORD PTR [eax*4+@obj3:current_head_offset],esi              ; fixup: num: 1675, src obj: 1, src ofs: 0xd0d3, dst obj: 3, dst ofs: 0x22744
    d0d7:	8b 84 24 10 01 00 00 	mov    eax,DWORD PTR [esp+0x110]
    d0de:	81 c4 20 01 00 00    	add    esp,0x120
    d0e4:	5d                   	pop    ebp
    d0e5:	5f                   	pop    edi
    d0e6:	5e                   	pop    esi
    d0e7:	c3                   	ret    
XFILE_read2_branch_21:
    d0e8:	8b 84 24 18 01 00 00 	mov    eax,DWORD PTR [esp+0x118]
    d0ef:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
    d0f2:	89 84 24 18 01 00 00 	mov    DWORD PTR [esp+0x118],eax
    d0f9:	39 c3                	cmp    ebx,eax
    d0fb:	0f 85 9a fd ff ff    	jne    XFILE_read2_branch_4
XFILE_read2_branch_22:
    d101:	31 c0                	xor    eax,eax
    d103:	81 c4 20 01 00 00    	add    esp,0x120
    d109:	5d                   	pop    ebp
    d10a:	5f                   	pop    edi
    d10b:	5e                   	pop    esi
    d10c:	c3                   	ret    
XFILE_read2_branch_23:
    d10d:	ba d8 0f 00 00       	mov    edx,@obj3:xfile_cpp_variable_3                               ; fixup: num: 1674, src obj: 1, src ofs: 0xd10e, dst obj: 3, dst ofs: 0xfd8
    d112:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 1673, src obj: 1, src ofs: 0xd113, dst obj: 3, dst ofs: 0x32438
    d117:	bf cc a3 01 00       	mov    edi,@obj3:path                                               ; fixup: num: 1672, src obj: 1, src ofs: 0xd118, dst obj: 3, dst ofs: 0x1a3cc
    d11c:	e8 af 06 06 00       	call   get
    d121:	89 c6                	mov    esi,eax
    d123:	57                   	push   edi
XFILE_read2_branch_24:
    d124:	8a 06                	mov    al,BYTE PTR [esi]
    d126:	88 07                	mov    BYTE PTR [edi],al
    d128:	3c 00                	cmp    al,0x0
    d12a:	74 10                	je     XFILE_read2_branch_25
    d12c:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
    d12f:	83 c6 02             	add    esi,0x2
    d132:	88 47 01             	mov    BYTE PTR [edi+0x1],al
    d135:	83 c7 02             	add    edi,0x2
    d138:	3c 00                	cmp    al,0x0
    d13a:	75 e8                	jne    XFILE_read2_branch_24
XFILE_read2_branch_25:
    d13c:	5f                   	pop    edi
    d13d:	29 c9                	sub    ecx,ecx
    d13f:	49                   	dec    ecx
    d140:	31 c0                	xor    eax,eax
    d142:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
    d144:	f7 d1                	not    ecx
    d146:	49                   	dec    ecx
    d147:	bf cc a3 01 00       	mov    edi,@obj3:path                                               ; fixup: num: 1671, src obj: 1, src ofs: 0xd148, dst obj: 3, dst ofs: 0x1a3cc
    d14c:	89 ee                	mov    esi,ebp
    d14e:	01 cf                	add    edi,ecx
    d150:	57                   	push   edi
XFILE_read2_branch_26:
    d151:	8a 06                	mov    al,BYTE PTR [esi]
    d153:	88 07                	mov    BYTE PTR [edi],al
    d155:	3c 00                	cmp    al,0x0
    d157:	74 10                	je     XFILE_read2_branch_27
    d159:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
    d15c:	83 c6 02             	add    esi,0x2
    d15f:	88 47 01             	mov    BYTE PTR [edi+0x1],al
    d162:	83 c7 02             	add    edi,0x2
    d165:	3c 00                	cmp    al,0x0
    d167:	75 e8                	jne    XFILE_read2_branch_26
XFILE_read2_branch_27:
    d169:	5f                   	pop    edi
    d16a:	b9 cc a3 01 00       	mov    ecx,@obj3:path                                               ; fixup: num: 1670, src obj: 1, src ofs: 0xd16b, dst obj: 3, dst ofs: 0x1a3cc
    d16f:	8b b4 24 04 01 00 00 	mov    esi,DWORD PTR [esp+0x104]
    d176:	85 c9                	test   ecx,ecx
    d178:	75 0c                	jne    XFILE_read2_branch_28
    d17a:	31 c0                	xor    eax,eax
    d17c:	81 c4 20 01 00 00    	add    esp,0x120
    d182:	5d                   	pop    ebp
    d183:	5f                   	pop    edi
    d184:	5e                   	pop    esi
    d185:	c3                   	ret    
XFILE_read2_branch_28:
    d186:	75 07                	jne    XFILE_read2_branch_29
    d188:	b8 ff ff ff ff       	mov    eax,0xffffffff
    d18d:	eb 44                	jmp    XFILE_read2_branch_31
XFILE_read2_branch_29:
    d18f:	68 00 02 00 00       	push   0x200
    d194:	51                   	push   ecx
    d195:	e8 dc 43 06 00       	call   open_
    d19a:	89 c2                	mov    edx,eax
    d19c:	83 c4 08             	add    esp,0x8
    d19f:	83 f8 ff             	cmp    eax,0xffffffff
    d1a2:	75 1f                	jne    XFILE_read2_branch_30
    d1a4:	51                   	push   ecx
    d1a5:	e8 f8 8b 06 00       	call   __get_errno_ptr_
    d1aa:	8b 00                	mov    eax,DWORD PTR [eax]
    d1ac:	50                   	push   eax
    d1ad:	68 cb 10 00 00       	push   @obj3:xfile_cpp_variable_21                                  ; fixup: num: 1678, src obj: 1, src ofs: 0xd1ae, dst obj: 3, dst ofs: 0x10cb
    d1b2:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 1677, src obj: 1, src ofs: 0xd1b3, dst obj: 3, dst ofs: 0x237fc
    d1b7:	e8 25 3a 06 00       	call   sprintf_
    d1bc:	83 c4 10             	add    esp,0x10
    d1bf:	89 d0                	mov    eax,edx
    d1c1:	eb 10                	jmp    XFILE_read2_branch_31
XFILE_read2_branch_30:
    d1c3:	e8 9d 8b 06 00       	call   filelength_
    d1c8:	89 c3                	mov    ebx,eax
    d1ca:	89 d0                	mov    eax,edx
    d1cc:	e8 3f 4d 06 00       	call   close_
    d1d1:	89 d8                	mov    eax,ebx
XFILE_read2_branch_31:
    d1d3:	89 c5                	mov    ebp,eax
    d1d5:	83 f8 ff             	cmp    eax,0xffffffff
    d1d8:	75 0c                	jne    XFILE_read2_branch_32
    d1da:	31 c0                	xor    eax,eax
    d1dc:	81 c4 20 01 00 00    	add    esp,0x120
    d1e2:	5d                   	pop    ebp
    d1e3:	5f                   	pop    edi
    d1e4:	5e                   	pop    esi
    d1e5:	c3                   	ret    
XFILE_read2_branch_32:
    d1e6:	85 f6                	test   esi,esi
    d1e8:	75 07                	jne    XFILE_read2_branch_33
    d1ea:	e8 a4 42 06 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
    d1ef:	89 c6                	mov    esi,eax
XFILE_read2_branch_33:
    d1f1:	85 f6                	test   esi,esi
    d1f3:	75 0c                	jne    XFILE_read2_branch_34
    d1f5:	31 c0                	xor    eax,eax
    d1f7:	81 c4 20 01 00 00    	add    esp,0x120
    d1fd:	5d                   	pop    ebp
    d1fe:	5f                   	pop    edi
    d1ff:	5e                   	pop    esi
    d200:	c3                   	ret    
XFILE_read2_branch_34:
    d201:	68 00 02 00 00       	push   0x200
    d206:	51                   	push   ecx
    d207:	e8 6a 43 06 00       	call   open_
    d20c:	89 c7                	mov    edi,eax
    d20e:	83 c4 08             	add    esp,0x8
    d211:	83 f8 ff             	cmp    eax,0xffffffff
    d214:	75 13                	jne    XFILE_read2_branch_35
    d216:	89 f0                	mov    eax,esi
    d218:	e8 cb 41 06 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
    d21d:	31 c0                	xor    eax,eax
    d21f:	81 c4 20 01 00 00    	add    esp,0x120
    d225:	5d                   	pop    ebp
    d226:	5f                   	pop    edi
    d227:	5e                   	pop    esi
    d228:	c3                   	ret    
XFILE_read2_branch_35:
    d229:	89 eb                	mov    ebx,ebp
    d22b:	89 f2                	mov    edx,esi
    d22d:	e8 31 4d 06 00       	call   read_
    d232:	89 c2                	mov    edx,eax
    d234:	39 e8                	cmp    eax,ebp
    d236:	74 27                	je     XFILE_read2_branch_36
    d238:	89 f0                	mov    eax,esi
    d23a:	e8 a9 41 06 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
    d23f:	55                   	push   ebp
    d240:	52                   	push   edx
    d241:	68 6e 11 00 00       	push   @obj3:xfile_cpp_variable_25                                  ; fixup: num: 1681, src obj: 1, src ofs: 0xd242, dst obj: 3, dst ofs: 0x116e
    d246:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 1680, src obj: 1, src ofs: 0xd247, dst obj: 3, dst ofs: 0x237fc
    d24b:	e8 91 39 06 00       	call   sprintf_
    d250:	83 c4 10             	add    esp,0x10
    d253:	31 c0                	xor    eax,eax
    d255:	81 c4 20 01 00 00    	add    esp,0x120
    d25b:	5d                   	pop    ebp
    d25c:	5f                   	pop    edi
    d25d:	5e                   	pop    esi
    d25e:	c3                   	ret    
XFILE_read2_branch_36:
    d25f:	89 f8                	mov    eax,edi
    d261:	e8 aa 4c 06 00       	call   close_
    d266:	89 f0                	mov    eax,esi
XFILE_read2_branch_37:
    d268:	81 c4 20 01 00 00    	add    esp,0x120
    d26e:	5d                   	pop    ebp
    d26f:	5f                   	pop    edi
    d270:	5e                   	pop    esi
    d271:	c3                   	ret    
    d272:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    d278:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
    d27e:	8b c0                	mov    eax,eax

;-------------------------------------------------
;  Function 'XFILE_write'                        -
;-------------------------------------------------
XFILE_write:
    d280:	56                   	push   esi
    d281:	57                   	push   edi
    d282:	55                   	push   ebp
    d283:	83 ec 30             	sub    esp,0x30
    d286:	89 44 24 20          	mov    DWORD PTR [esp+0x20],eax
    d28a:	89 54 24 14          	mov    DWORD PTR [esp+0x14],edx
    d28e:	89 1c 24             	mov    DWORD PTR [esp],ebx
    d291:	89 4c 24 1c          	mov    DWORD PTR [esp+0x1c],ecx
    d295:	85 c0                	test   eax,eax
    d297:	75 07                	jne    XFILE_write_branch_1
    d299:	30 c0                	xor    al,al
    d29b:	e9 39 04 00 00       	jmp    XFILE_write_branch_34
XFILE_write_branch_1:
    d2a0:	e8 9b f3 ff ff       	call   XFILE_init
    d2a5:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
    d2a9:	8a 00                	mov    al,BYTE PTR [eax]
    d2ab:	fe c0                	inc    al
    d2ad:	25 ff 00 00 00       	and    eax,0xff
    d2b2:	8a 80 98 0d 01 00    	mov    al,BYTE PTR [eax+@obj3:__IsTable]                            ; fixup: num: 1679, src obj: 1, src ofs: 0xd2b4, dst obj: 3, dst ofs: 0x10d98
    d2b8:	24 20                	and    al,0x20
    d2ba:	25 ff 00 00 00       	and    eax,0xff
    d2bf:	0f 84 1b 04 00 00    	je     XFILE_write_branch_35
    d2c5:	8b 54 24 20          	mov    edx,DWORD PTR [esp+0x20]
    d2c9:	31 c0                	xor    eax,eax
    d2cb:	8a 02                	mov    al,BYTE PTR [edx]
    d2cd:	83 e8 30             	sub    eax,0x30
    d2d0:	31 ed                	xor    ebp,ebp
    d2d2:	8b 0c 85 f4 a4 01 00 	mov    ecx,DWORD PTR [eax*4+@obj3:consolidated_file_handles]        ; fixup: num: 1687, src obj: 1, src ofs: 0xd2d5, dst obj: 3, dst ofs: 0x1a4f4
    d2d9:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
    d2dd:	85 c9                	test   ecx,ecx
    d2df:	7f 09                	jg     XFILE_write_branch_2
    d2e1:	30 c0                	xor    al,al
    d2e3:	83 c4 30             	add    esp,0x30
    d2e6:	5d                   	pop    ebp
    d2e7:	5f                   	pop    edi
    d2e8:	5e                   	pop    esi
    d2e9:	c3                   	ret    
XFILE_write_branch_2:
    d2ea:	89 d1                	mov    ecx,edx
    d2ec:	e8 4f f3 ff ff       	call   XFILE_init
    d2f1:	8a 02                	mov    al,BYTE PTR [edx]
    d2f3:	fe c0                	inc    al
    d2f5:	25 ff 00 00 00       	and    eax,0xff
    d2fa:	8a 80 98 0d 01 00    	mov    al,BYTE PTR [eax+@obj3:__IsTable]                            ; fixup: num: 1686, src obj: 1, src ofs: 0xd2fc, dst obj: 3, dst ofs: 0x10d98
    d300:	24 20                	and    al,0x20
    d302:	25 ff 00 00 00       	and    eax,0xff
    d307:	0f 84 a0 00 00 00    	je     XFILE_write_branch_6
    d30d:	31 c0                	xor    eax,eax
    d30f:	8a 02                	mov    al,BYTE PTR [edx]
    d311:	83 e8 30             	sub    eax,0x30
    d314:	8d 3c 85 00 00 00 00 	lea    edi,[eax*4+0x0]
    d31b:	83 bf f4 a4 01 00 00 	cmp    DWORD PTR [edi+@obj3:consolidated_file_handles],0x0          ; fixup: num: 1685, src obj: 1, src ofs: 0xd31d, dst obj: 3, dst ofs: 0x1a4f4
    d322:	0f 8e 64 00 00 00    	jle    XFILE_write_branch_5
    d328:	8b 87 1c a5 01 00    	mov    eax,DWORD PTR [edi+@obj3:directory_caches]                   ; fixup: num: 1684, src obj: 1, src ofs: 0xd32a, dst obj: 3, dst ofs: 0x1a51c
    d32e:	85 c0                	test   eax,eax
    d330:	0f 84 56 00 00 00    	je     XFILE_write_branch_5
    d336:	89 c6                	mov    esi,eax
XFILE_write_branch_3:
    d338:	8b 16                	mov    edx,DWORD PTR [esi]
    d33a:	89 c8                	mov    eax,ecx
    d33c:	83 c2 04             	add    edx,0x4
    d33f:	e8 16 41 06 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
    d344:	85 c0                	test   eax,eax
    d346:	75 3d                	jne    XFILE_write_branch_4
    d348:	8b 06                	mov    eax,DWORD PTR [esi]
    d34a:	c6 40 04 00          	mov    BYTE PTR [eax+0x4],0x0
    d34e:	8b 06                	mov    eax,DWORD PTR [esi]
    d350:	8b 90 84 00 00 00    	mov    edx,DWORD PTR [eax+0x84]
    d356:	31 db                	xor    ebx,ebx
    d358:	81 ea 94 00 00 00    	sub    edx,0x94
    d35e:	8b 87 f4 a4 01 00    	mov    eax,DWORD PTR [edi+@obj3:consolidated_file_handles]          ; fixup: num: 1683, src obj: 1, src ofs: 0xd360, dst obj: 3, dst ofs: 0x1a4f4
    d364:	e8 66 4b 06 00       	call   lseek_                                                       ; aliases: lseek_, _lseek_
    d369:	bb 94 00 00 00       	mov    ebx,0x94
    d36e:	8b 16                	mov    edx,DWORD PTR [esi]
    d370:	8b 87 f4 a4 01 00    	mov    eax,DWORD PTR [edi+@obj3:consolidated_file_handles]          ; fixup: num: 1682, src obj: 1, src ofs: 0xd372, dst obj: 3, dst ofs: 0x1a4f4
    d376:	e8 49 44 06 00       	call   write_
    d37b:	c7 87 44 27 02 00 ff ff ff ff 	mov    DWORD PTR [edi+@obj3:current_head_offset],0xffffffff; fixup: num: 1694, src obj: 1, src ofs: 0xd37d, dst obj: 3, dst ofs: 0x22744
XFILE_write_branch_4:
    d385:	8b 76 04             	mov    esi,DWORD PTR [esi+0x4]
    d388:	85 f6                	test   esi,esi
    d38a:	75 ac                	jne    XFILE_write_branch_3
XFILE_write_branch_5:
    d38c:	8b 5c 24 1c          	mov    ebx,DWORD PTR [esp+0x1c]
    d390:	83 fb 01             	cmp    ebx,0x1
    d393:	0f 82 0b 02 00 00    	jb     XFILE_write_branch_25
    d399:	0f 86 a7 00 00 00    	jbe    XFILE_write_branch_12
    d39f:	83 fb 02             	cmp    ebx,0x2
    d3a2:	0f 84 e9 01 00 00    	je     XFILE_write_branch_24
    d3a8:	e9 ff 01 00 00       	jmp    XFILE_write_branch_26
XFILE_write_branch_6:
    d3ad:	ba d8 0f 00 00       	mov    edx,@obj3:xfile_cpp_variable_3                               ; fixup: num: 1693, src obj: 1, src ofs: 0xd3ae, dst obj: 3, dst ofs: 0xfd8
    d3b2:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 1692, src obj: 1, src ofs: 0xd3b3, dst obj: 3, dst ofs: 0x32438
    d3b7:	bf cc a3 01 00       	mov    edi,@obj3:path                                               ; fixup: num: 1691, src obj: 1, src ofs: 0xd3b8, dst obj: 3, dst ofs: 0x1a3cc
    d3bc:	e8 0f 04 06 00       	call   get
    d3c1:	89 c6                	mov    esi,eax
    d3c3:	57                   	push   edi
XFILE_write_branch_7:
    d3c4:	8a 06                	mov    al,BYTE PTR [esi]
    d3c6:	88 07                	mov    BYTE PTR [edi],al
    d3c8:	3c 00                	cmp    al,0x0
    d3ca:	74 10                	je     XFILE_write_branch_8
    d3cc:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
    d3cf:	83 c6 02             	add    esi,0x2
    d3d2:	88 47 01             	mov    BYTE PTR [edi+0x1],al
    d3d5:	83 c7 02             	add    edi,0x2
    d3d8:	3c 00                	cmp    al,0x0
    d3da:	75 e8                	jne    XFILE_write_branch_7
XFILE_write_branch_8:
    d3dc:	5f                   	pop    edi
    d3dd:	29 c9                	sub    ecx,ecx
    d3df:	49                   	dec    ecx
    d3e0:	31 c0                	xor    eax,eax
    d3e2:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
    d3e4:	f7 d1                	not    ecx
    d3e6:	49                   	dec    ecx
    d3e7:	bf cc a3 01 00       	mov    edi,@obj3:path                                               ; fixup: num: 1690, src obj: 1, src ofs: 0xd3e8, dst obj: 3, dst ofs: 0x1a3cc
    d3ec:	8b 74 24 20          	mov    esi,DWORD PTR [esp+0x20]
    d3f0:	01 cf                	add    edi,ecx
    d3f2:	57                   	push   edi
XFILE_write_branch_9:
    d3f3:	8a 06                	mov    al,BYTE PTR [esi]
    d3f5:	88 07                	mov    BYTE PTR [edi],al
    d3f7:	3c 00                	cmp    al,0x0
    d3f9:	74 10                	je     XFILE_write_branch_10
    d3fb:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
    d3fe:	83 c6 02             	add    esi,0x2
    d401:	88 47 01             	mov    BYTE PTR [edi+0x1],al
    d404:	83 c7 02             	add    edi,0x2
    d407:	3c 00                	cmp    al,0x0
    d409:	75 e8                	jne    XFILE_write_branch_9
XFILE_write_branch_10:
    d40b:	5f                   	pop    edi
    d40c:	b8 cc a3 01 00       	mov    eax,@obj3:path                                               ; fixup: num: 1689, src obj: 1, src ofs: 0xd40d, dst obj: 3, dst ofs: 0x1a3cc
    d411:	e8 6a 3b 06 00       	call   unlink_
    d416:	e9 71 ff ff ff       	jmp    XFILE_write_branch_5
XFILE_write_branch_11:
    d41b:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
    d41f:	8b 04 85 f4 a4 01 00 	mov    eax,DWORD PTR [eax*4+@obj3:consolidated_file_handles]        ; fixup: num: 1688, src obj: 1, src ofs: 0xd422, dst obj: 3, dst ofs: 0x1a4f4
    d426:	8b 14 24             	mov    edx,DWORD PTR [esp]
    d429:	e8 37 89 06 00       	call   filelength_
    d42e:	01 d0                	add    eax,edx
    d430:	89 c2                	mov    edx,eax
    d432:	d1 ea                	shr    edx,1
    d434:	01 d2                	add    edx,edx
    d436:	39 c2                	cmp    edx,eax
    d438:	0f 84 6e 01 00 00    	je     XFILE_write_branch_26
    d43e:	ff 04 24             	inc    DWORD PTR [esp]
    d441:	e9 66 01 00 00       	jmp    XFILE_write_branch_26
XFILE_write_branch_12:
    d446:	8b 04 24             	mov    eax,DWORD PTR [esp]
    d449:	8b 3c 24             	mov    edi,DWORD PTR [esp]
    d44c:	d1 e8                	shr    eax,1
    d44e:	01 f8                	add    eax,edi
    d450:	e8 3e 40 06 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
    d455:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
    d459:	85 c0                	test   eax,eax
    d45b:	75 0f                	jne    XFILE_write_branch_13
    d45d:	bb 8d 11 00 00       	mov    ebx,@obj3:xfile_cpp_variable_26                              ; fixup: num: 1695, src obj: 1, src ofs: 0xd45e, dst obj: 3, dst ofs: 0x118d
    d462:	ba 53 02 00 00       	mov    edx,0x253
    d467:	e8 c4 ab 02 00       	call   _error_report
XFILE_write_branch_13:
    d46c:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
    d470:	8b 2c 24             	mov    ebp,DWORD PTR [esp]
    d473:	89 44 24 28          	mov    DWORD PTR [esp+0x28],eax
    d477:	8b 04 24             	mov    eax,DWORD PTR [esp]
    d47a:	31 db                	xor    ebx,ebx
    d47c:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
    d480:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
    d484:	31 d2                	xor    edx,edx
    d486:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
    d48a:	85 ed                	test   ebp,ebp
    d48c:	0f 8e df 00 00 00    	jle    XFILE_write_branch_23
XFILE_write_branch_14:
    d492:	8b 6c 24 28          	mov    ebp,DWORD PTR [esp+0x28]
    d496:	01 dd                	add    ebp,ebx
    d498:	8a 45 00             	mov    al,BYTE PTR [ebp+0x0]
    d49b:	8a 65 01             	mov    ah,BYTE PTR [ebp+0x1]
    d49e:	38 e0                	cmp    al,ah
    d4a0:	75 5f                	jne    XFILE_write_branch_17
    d4a2:	3a 65 02             	cmp    ah,BYTE PTR [ebp+0x2]
    d4a5:	75 5a                	jne    XFILE_write_branch_17
    d4a7:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
    d4ab:	89 df                	mov    edi,ebx
    d4ad:	8a 4d 00             	mov    cl,BYTE PTR [ebp+0x0]
    d4b0:	31 f6                	xor    esi,esi
    d4b2:	89 44 24 24          	mov    DWORD PTR [esp+0x24],eax
    d4b6:	8a 6d 01             	mov    ch,BYTE PTR [ebp+0x1]
    d4b9:	89 e8                	mov    eax,ebp
    d4bb:	38 e9                	cmp    cl,ch
    d4bd:	75 17                	jne    XFILE_write_branch_16
    d4bf:	8b 6c 24 24          	mov    ebp,DWORD PTR [esp+0x24]
XFILE_write_branch_15:
    d4c3:	39 ef                	cmp    edi,ebp
    d4c5:	7d 0f                	jge    XFILE_write_branch_16
    d4c7:	46                   	inc    esi
    d4c8:	40                   	inc    eax
    d4c9:	47                   	inc    edi
    d4ca:	83 fe 7e             	cmp    esi,0x7e
    d4cd:	74 07                	je     XFILE_write_branch_16
    d4cf:	8a 08                	mov    cl,BYTE PTR [eax]
    d4d1:	3a 48 01             	cmp    cl,BYTE PTR [eax+0x1]
    d4d4:	74 ed                	je     XFILE_write_branch_15
XFILE_write_branch_16:
    d4d6:	46                   	inc    esi
    d4d7:	8b 7c 24 0c          	mov    edi,DWORD PTR [esp+0xc]
    d4db:	89 74 24 2c          	mov    DWORD PTR [esp+0x2c],esi
    d4df:	89 d0                	mov    eax,edx
    d4e1:	8a 4c 24 2c          	mov    cl,BYTE PTR [esp+0x2c]
    d4e5:	01 f8                	add    eax,edi
    d4e7:	80 c9 80             	or     cl,0x80
    d4ea:	42                   	inc    edx
    d4eb:	88 08                	mov    BYTE PTR [eax],cl
    d4ed:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
    d4f1:	89 d1                	mov    ecx,edx
    d4f3:	42                   	inc    edx
    d4f4:	8a 04 03             	mov    al,BYTE PTR [ebx+eax*1]
    d4f7:	01 f3                	add    ebx,esi
    d4f9:	88 04 39             	mov    BYTE PTR [ecx+edi*1],al
    d4fc:	e9 66 00 00 00       	jmp    XFILE_write_branch_22
XFILE_write_branch_17:
    d501:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
    d505:	89 df                	mov    edi,ebx
    d507:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
    d50b:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
    d50f:	31 f6                	xor    esi,esi
    d511:	01 d8                	add    eax,ebx
XFILE_write_branch_18:
    d513:	8a 08                	mov    cl,BYTE PTR [eax]
    d515:	3a 48 01             	cmp    cl,BYTE PTR [eax+0x1]
    d518:	75 07                	jne    XFILE_write_branch_19
    d51a:	8a 08                	mov    cl,BYTE PTR [eax]
    d51c:	3a 48 02             	cmp    cl,BYTE PTR [eax+0x2]
    d51f:	74 0e                	je     XFILE_write_branch_20
XFILE_write_branch_19:
    d521:	3b 7c 24 08          	cmp    edi,DWORD PTR [esp+0x8]
    d525:	7d 08                	jge    XFILE_write_branch_20
    d527:	46                   	inc    esi
    d528:	40                   	inc    eax
    d529:	47                   	inc    edi
    d52a:	83 fe 7f             	cmp    esi,0x7f
    d52d:	75 e4                	jne    XFILE_write_branch_18
XFILE_write_branch_20:
    d52f:	8b 7c 24 0c          	mov    edi,DWORD PTR [esp+0xc]
    d533:	89 d0                	mov    eax,edx
    d535:	89 74 24 2c          	mov    DWORD PTR [esp+0x2c],esi
    d539:	01 f8                	add    eax,edi
    d53b:	8a 4c 24 2c          	mov    cl,BYTE PTR [esp+0x2c]
    d53f:	42                   	inc    edx
    d540:	88 08                	mov    BYTE PTR [eax],cl
    d542:	31 c0                	xor    eax,eax
    d544:	85 f6                	test   esi,esi
    d546:	7e 1f                	jle    XFILE_write_branch_22
    d548:	8b 6c 24 0c          	mov    ebp,DWORD PTR [esp+0xc]
XFILE_write_branch_21:
    d54c:	8b 7c 24 28          	mov    edi,DWORD PTR [esp+0x28]
    d550:	89 de                	mov    esi,ebx
    d552:	01 f7                	add    edi,esi
    d554:	89 d6                	mov    esi,edx
    d556:	40                   	inc    eax
    d557:	01 ee                	add    esi,ebp
    d559:	8a 0f                	mov    cl,BYTE PTR [edi]
    d55b:	43                   	inc    ebx
    d55c:	88 0e                	mov    BYTE PTR [esi],cl
    d55e:	8b 4c 24 2c          	mov    ecx,DWORD PTR [esp+0x2c]
    d562:	42                   	inc    edx
    d563:	39 c8                	cmp    eax,ecx
    d565:	7c e5                	jl     XFILE_write_branch_21
XFILE_write_branch_22:
    d567:	3b 5c 24 04          	cmp    ebx,DWORD PTR [esp+0x4]
    d56b:	0f 8c 21 ff ff ff    	jl     XFILE_write_branch_14
XFILE_write_branch_23:
    d571:	8b 34 24             	mov    esi,DWORD PTR [esp]
    d574:	89 d5                	mov    ebp,edx
    d576:	39 f2                	cmp    edx,esi
    d578:	72 32                	jb     XFILE_write_branch_26
    d57a:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
    d57e:	e8 65 3e 06 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
    d583:	31 ff                	xor    edi,edi
    d585:	31 d5                	xor    ebp,edx
    d587:	89 7c 24 1c          	mov    DWORD PTR [esp+0x1c],edi
    d58b:	89 7c 24 10          	mov    DWORD PTR [esp+0x10],edi
    d58f:	eb 1b                	jmp    XFILE_write_branch_26
XFILE_write_branch_24:
    d591:	bb af 11 00 00       	mov    ebx,@obj3:xfile_cpp_variable_27                              ; fixup: num: 1699, src obj: 1, src ofs: 0xd592, dst obj: 3, dst ofs: 0x11af
    d596:	ba 5e 02 00 00       	mov    edx,0x25e
    d59b:	31 c0                	xor    eax,eax
    d59d:	e8 8e aa 02 00       	call   _error_report
    d5a2:	eb 08                	jmp    XFILE_write_branch_26
XFILE_write_branch_25:
    d5a4:	85 db                	test   ebx,ebx
    d5a6:	0f 84 6f fe ff ff    	je     XFILE_write_branch_11
XFILE_write_branch_26:
    d5ac:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
    d5b0:	b8 08 00 00 00       	mov    eax,0x8
    d5b5:	8b 1c 95 1c a5 01 00 	mov    ebx,DWORD PTR [edx*4+@obj3:directory_caches]                 ; fixup: num: 1698, src obj: 1, src ofs: 0xd5b8, dst obj: 3, dst ofs: 0x1a51c
    d5bc:	e8 57 49 06 00       	call   W?$nwn(ui)pnv
    d5c1:	89 04 95 1c a5 01 00 	mov    DWORD PTR [edx*4+@obj3:directory_caches],eax                 ; fixup: num: 1697, src obj: 1, src ofs: 0xd5c4, dst obj: 3, dst ofs: 0x1a51c
    d5c8:	8b 74 24 20          	mov    esi,DWORD PTR [esp+0x20]
    d5cc:	89 58 04             	mov    DWORD PTR [eax+0x4],ebx
    d5cf:	b8 94 00 00 00       	mov    eax,0x94
    d5d4:	8b 1c 95 1c a5 01 00 	mov    ebx,DWORD PTR [edx*4+@obj3:directory_caches]                 ; fixup: num: 1696, src obj: 1, src ofs: 0xd5d7, dst obj: 3, dst ofs: 0x1a51c
    d5db:	e8 38 49 06 00       	call   W?$nwn(ui)pnv
    d5e0:	89 c2                	mov    edx,eax
    d5e2:	89 c1                	mov    ecx,eax
    d5e4:	89 03                	mov    DWORD PTR [ebx],eax
    d5e6:	8d 78 04             	lea    edi,[eax+0x4]
    d5e9:	57                   	push   edi
XFILE_write_branch_27:
    d5ea:	8a 06                	mov    al,BYTE PTR [esi]
    d5ec:	88 07                	mov    BYTE PTR [edi],al
    d5ee:	3c 00                	cmp    al,0x0
    d5f0:	74 10                	je     XFILE_write_branch_28
    d5f2:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
    d5f5:	83 c6 02             	add    esi,0x2
    d5f8:	88 47 01             	mov    BYTE PTR [edi+0x1],al
    d5fb:	83 c7 02             	add    edi,0x2
    d5fe:	3c 00                	cmp    al,0x0
    d600:	75 e8                	jne    XFILE_write_branch_27
XFILE_write_branch_28:
    d602:	5f                   	pop    edi
    d603:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
    d607:	89 82 8c 00 00 00    	mov    DWORD PTR [edx+0x8c],eax
    d60d:	8b 04 24             	mov    eax,DWORD PTR [esp]
    d610:	89 82 90 00 00 00    	mov    DWORD PTR [edx+0x90],eax
    d616:	85 ed                	test   ebp,ebp
    d618:	75 08                	jne    XFILE_write_branch_29
    d61a:	89 82 88 00 00 00    	mov    DWORD PTR [edx+0x88],eax
    d620:	eb 06                	jmp    XFILE_write_branch_30
XFILE_write_branch_29:
    d622:	89 aa 88 00 00 00    	mov    DWORD PTR [edx+0x88],ebp
XFILE_write_branch_30:
    d628:	8b 74 24 18          	mov    esi,DWORD PTR [esp+0x18]
    d62c:	8d 34 b5 00 00 00 00 	lea    esi,[esi*4+0x0]
    d633:	8b 86 f4 a4 01 00    	mov    eax,DWORD PTR [esi+@obj3:consolidated_file_handles]          ; fixup: num: 1710, src obj: 1, src ofs: 0xd635, dst obj: 3, dst ofs: 0x1a4f4
    d639:	e8 27 87 06 00       	call   filelength_
    d63e:	05 94 00 00 00       	add    eax,0x94
    d643:	89 81 84 00 00 00    	mov    DWORD PTR [ecx+0x84],eax
    d649:	a0 d6 11 00 00       	mov    al,ds:@obj3:xfile_cpp_variable_28                            ; fixup: num: 1709, src obj: 1, src ofs: 0xd64a, dst obj: 3, dst ofs: 0x11d6
    d64e:	88 01                	mov    BYTE PTR [ecx],al
    d650:	a0 dc 11 00 00       	mov    al,ds:@obj3:xfile_cpp_variable_29                            ; fixup: num: 1708, src obj: 1, src ofs: 0xd651, dst obj: 3, dst ofs: 0x11dc
    d655:	88 41 01             	mov    BYTE PTR [ecx+0x1],al
    d658:	a0 e2 11 00 00       	mov    al,ds:@obj3:xfile_cpp_variable_30                            ; fixup: num: 1707, src obj: 1, src ofs: 0xd659, dst obj: 3, dst ofs: 0x11e2
    d65d:	88 41 02             	mov    BYTE PTR [ecx+0x2],al
    d660:	a0 e8 11 00 00       	mov    al,ds:@obj3:xfile_cpp_variable_31                            ; fixup: num: 1706, src obj: 1, src ofs: 0xd661, dst obj: 3, dst ofs: 0x11e8
    d665:	88 41 03             	mov    BYTE PTR [ecx+0x3],al
    d668:	8b 86 f4 a4 01 00    	mov    eax,DWORD PTR [esi+@obj3:consolidated_file_handles]          ; fixup: num: 1705, src obj: 1, src ofs: 0xd66a, dst obj: 3, dst ofs: 0x1a4f4
    d66e:	31 db                	xor    ebx,ebx
    d670:	e8 f0 86 06 00       	call   filelength_
    d675:	8b be f4 a4 01 00    	mov    edi,DWORD PTR [esi+@obj3:consolidated_file_handles]          ; fixup: num: 1704, src obj: 1, src ofs: 0xd677, dst obj: 3, dst ofs: 0x1a4f4
    d67b:	89 c2                	mov    edx,eax
    d67d:	89 f8                	mov    eax,edi
    d67f:	e8 4b 48 06 00       	call   lseek_                                                       ; aliases: lseek_, _lseek_
    d684:	bb 94 00 00 00       	mov    ebx,0x94
    d689:	89 ca                	mov    edx,ecx
    d68b:	8b 86 f4 a4 01 00    	mov    eax,DWORD PTR [esi+@obj3:consolidated_file_handles]          ; fixup: num: 1703, src obj: 1, src ofs: 0xd68d, dst obj: 3, dst ofs: 0x1a4f4
    d691:	e8 2e 41 06 00       	call   write_
    d696:	85 ed                	test   ebp,ebp
    d698:	75 14                	jne    XFILE_write_branch_31
    d69a:	8b 1c 24             	mov    ebx,DWORD PTR [esp]
    d69d:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
    d6a1:	8b 86 f4 a4 01 00    	mov    eax,DWORD PTR [esi+@obj3:consolidated_file_handles]          ; fixup: num: 1702, src obj: 1, src ofs: 0xd6a3, dst obj: 3, dst ofs: 0x1a4f4
    d6a7:	e8 18 41 06 00       	call   write_
    d6ac:	eb 1a                	jmp    XFILE_write_branch_32
XFILE_write_branch_31:
    d6ae:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
    d6b2:	89 eb                	mov    ebx,ebp
    d6b4:	8b 86 f4 a4 01 00    	mov    eax,DWORD PTR [esi+@obj3:consolidated_file_handles]          ; fixup: num: 1701, src obj: 1, src ofs: 0xd6b6, dst obj: 3, dst ofs: 0x1a4f4
    d6ba:	e8 05 41 06 00       	call   write_
    d6bf:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
    d6c3:	e8 20 3d 06 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
XFILE_write_branch_32:
    d6c8:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
    d6cc:	c7 04 85 44 27 02 00 ff ff ff ff 	mov    DWORD PTR [eax*4+@obj3:current_head_offset],0xffffffff; fixup: num: 1700, src obj: 1, src ofs: 0xd6cf, dst obj: 3, dst ofs: 0x22744
XFILE_write_branch_33:
    d6d7:	b0 01                	mov    al,0x1
XFILE_write_branch_34:
    d6d9:	83 c4 30             	add    esp,0x30
    d6dc:	5d                   	pop    ebp
    d6dd:	5f                   	pop    edi
    d6de:	5e                   	pop    esi
    d6df:	c3                   	ret    
XFILE_write_branch_35:
    d6e0:	ba d8 0f 00 00       	mov    edx,@obj3:xfile_cpp_variable_3                               ; fixup: num: 1715, src obj: 1, src ofs: 0xd6e1, dst obj: 3, dst ofs: 0xfd8
    d6e5:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 1714, src obj: 1, src ofs: 0xd6e6, dst obj: 3, dst ofs: 0x32438
    d6ea:	bf cc a3 01 00       	mov    edi,@obj3:path                                               ; fixup: num: 1713, src obj: 1, src ofs: 0xd6eb, dst obj: 3, dst ofs: 0x1a3cc
    d6ef:	e8 dc 00 06 00       	call   get
    d6f4:	89 c6                	mov    esi,eax
    d6f6:	57                   	push   edi
XFILE_write_branch_36:
    d6f7:	8a 06                	mov    al,BYTE PTR [esi]
    d6f9:	88 07                	mov    BYTE PTR [edi],al
    d6fb:	3c 00                	cmp    al,0x0
    d6fd:	74 10                	je     XFILE_write_branch_37
    d6ff:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
    d702:	83 c6 02             	add    esi,0x2
    d705:	88 47 01             	mov    BYTE PTR [edi+0x1],al
    d708:	83 c7 02             	add    edi,0x2
    d70b:	3c 00                	cmp    al,0x0
    d70d:	75 e8                	jne    XFILE_write_branch_36
XFILE_write_branch_37:
    d70f:	5f                   	pop    edi
    d710:	29 c9                	sub    ecx,ecx
    d712:	49                   	dec    ecx
    d713:	31 c0                	xor    eax,eax
    d715:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
    d717:	f7 d1                	not    ecx
    d719:	49                   	dec    ecx
    d71a:	bf cc a3 01 00       	mov    edi,@obj3:path                                               ; fixup: num: 1712, src obj: 1, src ofs: 0xd71b, dst obj: 3, dst ofs: 0x1a3cc
    d71f:	8b 74 24 20          	mov    esi,DWORD PTR [esp+0x20]
    d723:	01 cf                	add    edi,ecx
    d725:	57                   	push   edi
XFILE_write_branch_38:
    d726:	8a 06                	mov    al,BYTE PTR [esi]
    d728:	88 07                	mov    BYTE PTR [edi],al
    d72a:	3c 00                	cmp    al,0x0
    d72c:	74 10                	je     XFILE_write_branch_39
    d72e:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
    d731:	83 c6 02             	add    esi,0x2
    d734:	88 47 01             	mov    BYTE PTR [edi+0x1],al
    d737:	83 c7 02             	add    edi,0x2
    d73a:	3c 00                	cmp    al,0x0
    d73c:	75 e8                	jne    XFILE_write_branch_38
XFILE_write_branch_39:
    d73e:	5f                   	pop    edi
    d73f:	68 80 01 00 00       	push   0x180
    d744:	68 62 02 00 00       	push   0x262
    d749:	68 cc a3 01 00       	push   @obj3:path                                                   ; fixup: num: 1711, src obj: 1, src ofs: 0xd74a, dst obj: 3, dst ofs: 0x1a3cc
    d74e:	e8 23 3e 06 00       	call   open_
    d753:	89 c1                	mov    ecx,eax
    d755:	83 c4 0c             	add    esp,0xc
    d758:	83 f8 ff             	cmp    eax,0xffffffff
    d75b:	75 04                	jne    XFILE_write_branch_40
    d75d:	31 c0                	xor    eax,eax
    d75f:	eb 45                	jmp    XFILE_write_branch_43
XFILE_write_branch_40:
    d761:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
    d765:	e8 5a 40 06 00       	call   write_
    d76a:	83 f8 ff             	cmp    eax,0xffffffff
    d76d:	75 13                	jne    XFILE_write_branch_41
    d76f:	31 c0                	xor    eax,eax
    d771:	85 c0                	test   eax,eax
    d773:	0f 85 5e ff ff ff    	jne    XFILE_write_branch_33
    d779:	30 c0                	xor    al,al
    d77b:	83 c4 30             	add    esp,0x30
    d77e:	5d                   	pop    ebp
    d77f:	5f                   	pop    edi
    d780:	5e                   	pop    esi
    d781:	c3                   	ret    
XFILE_write_branch_41:
    d782:	3b 04 24             	cmp    eax,DWORD PTR [esp]
    d785:	74 13                	je     XFILE_write_branch_42
    d787:	31 c0                	xor    eax,eax
    d789:	85 c0                	test   eax,eax
    d78b:	0f 85 46 ff ff ff    	jne    XFILE_write_branch_33
    d791:	30 c0                	xor    al,al
    d793:	83 c4 30             	add    esp,0x30
    d796:	5d                   	pop    ebp
    d797:	5f                   	pop    edi
    d798:	5e                   	pop    esi
    d799:	c3                   	ret    
XFILE_write_branch_42:
    d79a:	89 c8                	mov    eax,ecx
    d79c:	e8 6f 47 06 00       	call   close_
    d7a1:	b8 01 00 00 00       	mov    eax,0x1
XFILE_write_branch_43:
    d7a6:	85 c0                	test   eax,eax
    d7a8:	0f 85 29 ff ff ff    	jne    XFILE_write_branch_33
    d7ae:	30 c0                	xor    al,al
    d7b0:	83 c4 30             	add    esp,0x30
    d7b3:	5d                   	pop    ebp
    d7b4:	5f                   	pop    edi
    d7b5:	5e                   	pop    esi
    d7b6:	c3                   	ret    
    d7b7:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    d7bd:	8d 52 00             	lea    edx,[edx+0x0]

;-------------------------------------------------
;  Function 'XFILE_delete'                       -
;-------------------------------------------------
XFILE_delete:
    d7c0:	53                   	push   ebx
    d7c1:	51                   	push   ecx
    d7c2:	52                   	push   edx
    d7c3:	56                   	push   esi
    d7c4:	57                   	push   edi
    d7c5:	55                   	push   ebp
    d7c6:	89 c5                	mov    ebp,eax
    d7c8:	85 c0                	test   eax,eax
    d7ca:	75 07                	jne    XFILE_delete_branch_1
    d7cc:	30 c0                	xor    al,al
    d7ce:	e9 1a 01 00 00       	jmp    XFILE_delete_branch_11
XFILE_delete_branch_1:
    d7d3:	e8 68 ee ff ff       	call   XFILE_init
    d7d8:	8a 45 00             	mov    al,BYTE PTR [ebp+0x0]
    d7db:	fe c0                	inc    al
    d7dd:	25 ff 00 00 00       	and    eax,0xff
    d7e2:	8a 80 98 0d 01 00    	mov    al,BYTE PTR [eax+@obj3:__IsTable]                            ; fixup: num: 1718, src obj: 1, src ofs: 0xd7e4, dst obj: 3, dst ofs: 0x10d98
    d7e8:	24 20                	and    al,0x20
    d7ea:	25 ff 00 00 00       	and    eax,0xff
    d7ef:	0f 84 8f 00 00 00    	je     XFILE_delete_branch_5
    d7f5:	0f b6 75 00          	movzx  esi,BYTE PTR [ebp+0x0]
    d7f9:	83 ee 30             	sub    esi,0x30
    d7fc:	8d 34 b5 00 00 00 00 	lea    esi,[esi*4+0x0]
    d803:	83 be f4 a4 01 00 00 	cmp    DWORD PTR [esi+@obj3:consolidated_file_handles],0x0          ; fixup: num: 1717, src obj: 1, src ofs: 0xd805, dst obj: 3, dst ofs: 0x1a4f4
    d80a:	7f 09                	jg     XFILE_delete_branch_2
    d80c:	30 c0                	xor    al,al
    d80e:	5d                   	pop    ebp
    d80f:	5f                   	pop    edi
    d810:	5e                   	pop    esi
    d811:	5a                   	pop    edx
    d812:	59                   	pop    ecx
    d813:	5b                   	pop    ebx
    d814:	c3                   	ret    
XFILE_delete_branch_2:
    d815:	8b 9e 1c a5 01 00    	mov    ebx,DWORD PTR [esi+@obj3:directory_caches]                   ; fixup: num: 1716, src obj: 1, src ofs: 0xd817, dst obj: 3, dst ofs: 0x1a51c
    d81b:	85 db                	test   ebx,ebx
    d81d:	0f 84 c8 00 00 00    	je     XFILE_delete_branch_10
    d823:	89 d9                	mov    ecx,ebx
    d825:	bf 94 00 00 00       	mov    edi,0x94
XFILE_delete_branch_3:
    d82a:	8b 11                	mov    edx,DWORD PTR [ecx]
    d82c:	89 e8                	mov    eax,ebp
    d82e:	83 c2 04             	add    edx,0x4
    d831:	e8 24 3c 06 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
    d836:	85 c0                	test   eax,eax
    d838:	75 3a                	jne    XFILE_delete_branch_4
    d83a:	8b 01                	mov    eax,DWORD PTR [ecx]
    d83c:	c6 40 04 00          	mov    BYTE PTR [eax+0x4],0x0
    d840:	8b 01                	mov    eax,DWORD PTR [ecx]
    d842:	8b 90 84 00 00 00    	mov    edx,DWORD PTR [eax+0x84]
    d848:	31 db                	xor    ebx,ebx
    d84a:	81 ea 94 00 00 00    	sub    edx,0x94
    d850:	8b 86 f4 a4 01 00    	mov    eax,DWORD PTR [esi+@obj3:consolidated_file_handles]          ; fixup: num: 1726, src obj: 1, src ofs: 0xd852, dst obj: 3, dst ofs: 0x1a4f4
    d856:	e8 74 46 06 00       	call   lseek_                                                       ; aliases: lseek_, _lseek_
    d85b:	89 fb                	mov    ebx,edi
    d85d:	8b 11                	mov    edx,DWORD PTR [ecx]
    d85f:	8b 86 f4 a4 01 00    	mov    eax,DWORD PTR [esi+@obj3:consolidated_file_handles]          ; fixup: num: 1725, src obj: 1, src ofs: 0xd861, dst obj: 3, dst ofs: 0x1a4f4
    d865:	e8 5a 3f 06 00       	call   write_
    d86a:	c7 86 44 27 02 00 ff ff ff ff 	mov    DWORD PTR [esi+@obj3:current_head_offset],0xffffffff; fixup: num: 1724, src obj: 1, src ofs: 0xd86c, dst obj: 3, dst ofs: 0x22744
XFILE_delete_branch_4:
    d874:	8b 49 04             	mov    ecx,DWORD PTR [ecx+0x4]
    d877:	85 c9                	test   ecx,ecx
    d879:	75 af                	jne    XFILE_delete_branch_3
    d87b:	b0 01                	mov    al,0x1
    d87d:	5d                   	pop    ebp
    d87e:	5f                   	pop    edi
    d87f:	5e                   	pop    esi
    d880:	5a                   	pop    edx
    d881:	59                   	pop    ecx
    d882:	5b                   	pop    ebx
    d883:	c3                   	ret    
XFILE_delete_branch_5:
    d884:	ba d8 0f 00 00       	mov    edx,@obj3:xfile_cpp_variable_3                               ; fixup: num: 1723, src obj: 1, src ofs: 0xd885, dst obj: 3, dst ofs: 0xfd8
    d889:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 1722, src obj: 1, src ofs: 0xd88a, dst obj: 3, dst ofs: 0x32438
    d88e:	bf cc a3 01 00       	mov    edi,@obj3:path                                               ; fixup: num: 1721, src obj: 1, src ofs: 0xd88f, dst obj: 3, dst ofs: 0x1a3cc
    d893:	e8 38 ff 05 00       	call   get
    d898:	89 c6                	mov    esi,eax
    d89a:	57                   	push   edi
XFILE_delete_branch_6:
    d89b:	8a 06                	mov    al,BYTE PTR [esi]
    d89d:	88 07                	mov    BYTE PTR [edi],al
    d89f:	3c 00                	cmp    al,0x0
    d8a1:	74 10                	je     XFILE_delete_branch_7
    d8a3:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
    d8a6:	83 c6 02             	add    esi,0x2
    d8a9:	88 47 01             	mov    BYTE PTR [edi+0x1],al
    d8ac:	83 c7 02             	add    edi,0x2
    d8af:	3c 00                	cmp    al,0x0
    d8b1:	75 e8                	jne    XFILE_delete_branch_6
XFILE_delete_branch_7:
    d8b3:	5f                   	pop    edi
    d8b4:	29 c9                	sub    ecx,ecx
    d8b6:	49                   	dec    ecx
    d8b7:	31 c0                	xor    eax,eax
    d8b9:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
    d8bb:	f7 d1                	not    ecx
    d8bd:	49                   	dec    ecx
    d8be:	bf cc a3 01 00       	mov    edi,@obj3:path                                               ; fixup: num: 1720, src obj: 1, src ofs: 0xd8bf, dst obj: 3, dst ofs: 0x1a3cc
    d8c3:	89 ee                	mov    esi,ebp
    d8c5:	01 cf                	add    edi,ecx
    d8c7:	57                   	push   edi
XFILE_delete_branch_8:
    d8c8:	8a 06                	mov    al,BYTE PTR [esi]
    d8ca:	88 07                	mov    BYTE PTR [edi],al
    d8cc:	3c 00                	cmp    al,0x0
    d8ce:	74 10                	je     XFILE_delete_branch_9
    d8d0:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
    d8d3:	83 c6 02             	add    esi,0x2
    d8d6:	88 47 01             	mov    BYTE PTR [edi+0x1],al
    d8d9:	83 c7 02             	add    edi,0x2
    d8dc:	3c 00                	cmp    al,0x0
    d8de:	75 e8                	jne    XFILE_delete_branch_8
XFILE_delete_branch_9:
    d8e0:	5f                   	pop    edi
    d8e1:	b8 cc a3 01 00       	mov    eax,@obj3:path                                               ; fixup: num: 1719, src obj: 1, src ofs: 0xd8e2, dst obj: 3, dst ofs: 0x1a3cc
    d8e6:	e8 95 36 06 00       	call   unlink_
XFILE_delete_branch_10:
    d8eb:	b0 01                	mov    al,0x1
XFILE_delete_branch_11:
    d8ed:	5d                   	pop    ebp
    d8ee:	5f                   	pop    edi
    d8ef:	5e                   	pop    esi
    d8f0:	5a                   	pop    edx
    d8f1:	59                   	pop    ecx
    d8f2:	5b                   	pop    ebx
    d8f3:	c3                   	ret    
    d8f4:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    d8fa:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]

;-------------------------------------------------
;  Function 'XFILE_compact'                      -
;-------------------------------------------------
XFILE_compact:
    d900:	52                   	push   edx
    d901:	89 c2                	mov    edx,eax
    d903:	e8 38 ed ff ff       	call   XFILE_init
    d908:	83 3c 95 f4 a4 01 00 00 	cmp    DWORD PTR [edx*4+@obj3:consolidated_file_handles],0x0     ; fixup: num: 1632, src obj: 1, src ofs: 0xd90b, dst obj: 3, dst ofs: 0x1a4f4
    d910:	0f 9e c0             	setle  al
    d913:	5a                   	pop    edx
    d914:	c3                   	ret    
    d915:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    d91b:	8d 52 00             	lea    edx,[edx+0x0]
    d91e:	8b db                	mov    ebx,ebx

;-------------------------------------------------
;  Function 'XFILE_copy'                         -
;-------------------------------------------------
XFILE_copy:
    d920:	51                   	push   ecx
    d921:	56                   	push   esi
    d922:	57                   	push   edi
    d923:	55                   	push   ebp
    d924:	81 ec 60 01 00 00    	sub    esp,0x160
    d92a:	89 84 24 34 01 00 00 	mov    DWORD PTR [esp+0x134],eax
    d931:	89 94 24 38 01 00 00 	mov    DWORD PTR [esp+0x138],edx
    d938:	89 9c 24 10 01 00 00 	mov    DWORD PTR [esp+0x110],ebx
    d93f:	e8 fc ec ff ff       	call   XFILE_init
    d944:	31 d2                	xor    edx,edx
    d946:	8b ac 24 34 01 00 00 	mov    ebp,DWORD PTR [esp+0x134]
    d94d:	89 94 24 20 01 00 00 	mov    DWORD PTR [esp+0x120],edx
    d954:	85 ed                	test   ebp,ebp
    d956:	75 2d                	jne    XFILE_copy_branch_1
    d958:	68 be 02 00 00       	push   0x2be
    d95d:	68 ea 11 00 00       	push   @obj3:xfile_cpp_variable_32                                  ; fixup: num: 1631, src obj: 1, src ofs: 0xd95e, dst obj: 3, dst ofs: 0x11ea
    d962:	68 f2 10 00 00       	push   @obj3:xfile_cpp_variable_22                                  ; fixup: num: 1630, src obj: 1, src ofs: 0xd963, dst obj: 3, dst ofs: 0x10f2
    d967:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 1629, src obj: 1, src ofs: 0xd968, dst obj: 3, dst ofs: 0x237fc
    d96c:	bb fc 37 02 00       	mov    ebx,@obj3:log_buffer                                         ; fixup: num: 1628, src obj: 1, src ofs: 0xd96d, dst obj: 3, dst ofs: 0x237fc
    d971:	e8 6b 32 06 00       	call   sprintf_
    d976:	83 c4 10             	add    esp,0x10
    d979:	ba da 01 00 00       	mov    edx,0x1da
    d97e:	31 c0                	xor    eax,eax
    d980:	e8 ab a6 02 00       	call   _error_report
XFILE_copy_branch_1:
    d985:	80 3d ac a1 01 00 00 	cmp    BYTE PTR ds:@obj3:the_sound_system_variable_1,0x0            ; fixup: num: 1728, src obj: 1, src ofs: 0xd987, dst obj: 3, dst ofs: 0x1a1ac
    d98c:	74 18                	je     XFILE_copy_branch_2
    d98e:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 1727, src obj: 1, src ofs: 0xd98f, dst obj: 3, dst ofs: 0x1a1d4
    d993:	e8 48 bf ff ff       	call   playing
    d998:	84 c0                	test   al,al
    d99a:	74 0a                	je     XFILE_copy_branch_2
    d99c:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 1636, src obj: 1, src ofs: 0xd99d, dst obj: 3, dst ofs: 0x1a1d4
    d9a1:	e8 fa df ff ff       	call   update_mod_9
XFILE_copy_branch_2:
    d9a6:	e8 95 ec ff ff       	call   XFILE_init
    d9ab:	8a 45 00             	mov    al,BYTE PTR [ebp+0x0]
    d9ae:	fe c0                	inc    al
    d9b0:	25 ff 00 00 00       	and    eax,0xff
    d9b5:	8a 80 98 0d 01 00    	mov    al,BYTE PTR [eax+@obj3:__IsTable]                            ; fixup: num: 1635, src obj: 1, src ofs: 0xd9b7, dst obj: 3, dst ofs: 0x10d98
    d9bb:	24 20                	and    al,0x20
    d9bd:	25 ff 00 00 00       	and    eax,0xff
    d9c2:	0f 84 8b 02 00 00    	je     XFILE_copy_branch_22
    d9c8:	31 c0                	xor    eax,eax
    d9ca:	8a 45 00             	mov    al,BYTE PTR [ebp+0x0]
    d9cd:	83 e8 30             	sub    eax,0x30
    d9d0:	89 84 24 00 01 00 00 	mov    DWORD PTR [esp+0x100],eax
    d9d7:	8d 04 85 00 00 00 00 	lea    eax,[eax*4+0x0]
    d9de:	83 b8 f4 a4 01 00 00 	cmp    DWORD PTR [eax+@obj3:consolidated_file_handles],0x0          ; fixup: num: 1634, src obj: 1, src ofs: 0xd9e0, dst obj: 3, dst ofs: 0x1a4f4
    d9e5:	7f 07                	jg     XFILE_copy_branch_3
    d9e7:	31 c0                	xor    eax,eax
    d9e9:	e9 aa 03 00 00       	jmp    XFILE_copy_branch_36
XFILE_copy_branch_3:
    d9ee:	8b b0 1c a5 01 00    	mov    esi,DWORD PTR [eax+@obj3:directory_caches]                   ; fixup: num: 1633, src obj: 1, src ofs: 0xd9f0, dst obj: 3, dst ofs: 0x1a51c
    d9f4:	85 f6                	test   esi,esi
    d9f6:	0f 84 50 02 00 00    	je     XFILE_copy_branch_21
    d9fc:	89 b4 24 44 01 00 00 	mov    DWORD PTR [esp+0x144],esi
    da03:	31 db                	xor    ebx,ebx
XFILE_copy_branch_4:
    da05:	8b 94 24 44 01 00 00 	mov    edx,DWORD PTR [esp+0x144]
    da0c:	8b 12                	mov    edx,DWORD PTR [edx]
    da0e:	89 e8                	mov    eax,ebp
    da10:	83 c2 04             	add    edx,0x4
    da13:	e8 42 3a 06 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
    da18:	85 c0                	test   eax,eax
    da1a:	0f 85 13 02 00 00    	jne    XFILE_copy_branch_20
    da20:	8b 84 24 20 01 00 00 	mov    eax,DWORD PTR [esp+0x120]
    da27:	85 c0                	test   eax,eax
    da29:	75 2a                	jne    XFILE_copy_branch_7
    da2b:	8b 84 24 44 01 00 00 	mov    eax,DWORD PTR [esp+0x144]
    da32:	8b 00                	mov    eax,DWORD PTR [eax]
    da34:	83 b8 8c 00 00 00 00 	cmp    DWORD PTR [eax+0x8c],0x0
    da3b:	75 08                	jne    XFILE_copy_branch_5
    da3d:	8b 80 88 00 00 00    	mov    eax,DWORD PTR [eax+0x88]
    da43:	eb 0b                	jmp    XFILE_copy_branch_6
XFILE_copy_branch_5:
    da45:	8b 80 90 00 00 00    	mov    eax,DWORD PTR [eax+0x90]
    da4b:	05 00 04 00 00       	add    eax,0x400
XFILE_copy_branch_6:
    da50:	e8 3e 3a 06 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
XFILE_copy_branch_7:
    da55:	89 84 24 30 01 00 00 	mov    DWORD PTR [esp+0x130],eax
    da5c:	83 bc 24 30 01 00 00 00 	cmp    DWORD PTR [esp+0x130],0x0
    da64:	75 23                	jne    XFILE_copy_branch_8
    da66:	55                   	push   ebp
    da67:	68 1f 11 00 00       	push   @obj3:xfile_cpp_variable_23                                  ; fixup: num: 1640, src obj: 1, src ofs: 0xda68, dst obj: 3, dst ofs: 0x111f
    da6c:	8d 44 24 08          	lea    eax,[esp+0x8]
    da70:	50                   	push   eax
    da71:	8d 5c 24 0c          	lea    ebx,[esp+0xc]
    da75:	e8 67 31 06 00       	call   sprintf_
    da7a:	83 c4 0c             	add    esp,0xc
    da7d:	ba 00 02 00 00       	mov    edx,0x200
    da82:	31 c0                	xor    eax,eax
    da84:	e8 a7 a5 02 00       	call   _error_report
XFILE_copy_branch_8:
    da89:	8b 84 24 00 01 00 00 	mov    eax,DWORD PTR [esp+0x100]
    da90:	8b 94 24 44 01 00 00 	mov    edx,DWORD PTR [esp+0x144]
    da97:	8d 04 85 00 00 00 00 	lea    eax,[eax*4+0x0]
    da9e:	8b 12                	mov    edx,DWORD PTR [edx]
    daa0:	8b 98 44 27 02 00    	mov    ebx,DWORD PTR [eax+@obj3:current_head_offset]                ; fixup: num: 1639, src obj: 1, src ofs: 0xdaa2, dst obj: 3, dst ofs: 0x22744
    daa6:	8b 8a 84 00 00 00    	mov    ecx,DWORD PTR [edx+0x84]
    daac:	39 cb                	cmp    ebx,ecx
    daae:	74 0f                	je     XFILE_copy_branch_9
    dab0:	89 ca                	mov    edx,ecx
    dab2:	8b 80 f4 a4 01 00    	mov    eax,DWORD PTR [eax+@obj3:consolidated_file_handles]          ; fixup: num: 1638, src obj: 1, src ofs: 0xdab4, dst obj: 3, dst ofs: 0x1a4f4
    dab8:	31 db                	xor    ebx,ebx
    daba:	e8 10 44 06 00       	call   lseek_                                                       ; aliases: lseek_, _lseek_
XFILE_copy_branch_9:
    dabf:	8b 84 24 44 01 00 00 	mov    eax,DWORD PTR [esp+0x144]
    dac6:	8b 00                	mov    eax,DWORD PTR [eax]
    dac8:	83 b8 8c 00 00 00 00 	cmp    DWORD PTR [eax+0x8c],0x0
    dacf:	75 25                	jne    XFILE_copy_branch_10
    dad1:	8b 98 88 00 00 00    	mov    ebx,DWORD PTR [eax+0x88]
    dad7:	8b 84 24 00 01 00 00 	mov    eax,DWORD PTR [esp+0x100]
    dade:	8b 94 24 30 01 00 00 	mov    edx,DWORD PTR [esp+0x130]
    dae5:	8b 04 85 f4 a4 01 00 	mov    eax,DWORD PTR [eax*4+@obj3:consolidated_file_handles]        ; fixup: num: 1637, src obj: 1, src ofs: 0xdae8, dst obj: 3, dst ofs: 0x1a4f4
    daec:	e8 72 44 06 00       	call   read_
    daf1:	e9 0b 01 00 00       	jmp    XFILE_copy_branch_19
XFILE_copy_branch_10:
    daf6:	8b 80 88 00 00 00    	mov    eax,DWORD PTR [eax+0x88]
    dafc:	05 00 04 00 00       	add    eax,0x400
    db01:	e8 8d 39 06 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
    db06:	89 84 24 24 01 00 00 	mov    DWORD PTR [esp+0x124],eax
    db0d:	85 c0                	test   eax,eax
    db0f:	75 0f                	jne    XFILE_copy_branch_11
    db11:	bb 4b 11 00 00       	mov    ebx,@obj3:xfile_cpp_variable_24                              ; fixup: num: 1642, src obj: 1, src ofs: 0xdb12, dst obj: 3, dst ofs: 0x114b
    db16:	ba 0d 02 00 00       	mov    edx,0x20d
    db1b:	e8 10 a5 02 00       	call   _error_report
XFILE_copy_branch_11:
    db20:	8b 9c 24 44 01 00 00 	mov    ebx,DWORD PTR [esp+0x144]
    db27:	8b 84 24 00 01 00 00 	mov    eax,DWORD PTR [esp+0x100]
    db2e:	8b 1b                	mov    ebx,DWORD PTR [ebx]
    db30:	8b 94 24 24 01 00 00 	mov    edx,DWORD PTR [esp+0x124]
    db37:	8b 04 85 f4 a4 01 00 	mov    eax,DWORD PTR [eax*4+@obj3:consolidated_file_handles]        ; fixup: num: 1641, src obj: 1, src ofs: 0xdb3a, dst obj: 3, dst ofs: 0x1a4f4
    db3e:	8b 9b 88 00 00 00    	mov    ebx,DWORD PTR [ebx+0x88]
    db44:	e8 1a 44 06 00       	call   read_
    db49:	8b 84 24 44 01 00 00 	mov    eax,DWORD PTR [esp+0x144]
    db50:	8b 00                	mov    eax,DWORD PTR [eax]
    db52:	8b bc 24 30 01 00 00 	mov    edi,DWORD PTR [esp+0x130]
    db59:	8b 94 24 24 01 00 00 	mov    edx,DWORD PTR [esp+0x124]
    db60:	8b 80 88 00 00 00    	mov    eax,DWORD PTR [eax+0x88]
    db66:	31 db                	xor    ebx,ebx
    db68:	89 84 24 40 01 00 00 	mov    DWORD PTR [esp+0x140],eax
    db6f:	89 94 24 50 01 00 00 	mov    DWORD PTR [esp+0x150],edx
    db76:	8b ac 24 40 01 00 00 	mov    ebp,DWORD PTR [esp+0x140]
    db7d:	31 c0                	xor    eax,eax
    db7f:	85 ed                	test   ebp,ebp
    db81:	0f 8e 6e 00 00 00    	jle    XFILE_copy_branch_18
XFILE_copy_branch_12:
    db87:	8b 8c 24 50 01 00 00 	mov    ecx,DWORD PTR [esp+0x150]
    db8e:	89 da                	mov    edx,ebx
    db90:	01 ca                	add    edx,ecx
    db92:	43                   	inc    ebx
    db93:	8a 12                	mov    dl,BYTE PTR [edx]
    db95:	81 e2 ff 00 00 00    	and    edx,0xff
    db9b:	81 fa 80 00 00 00    	cmp    edx,0x80
    dba1:	7e 1e                	jle    XFILE_copy_branch_15
    dba3:	81 ea 80 00 00 00    	sub    edx,0x80
    dba9:	85 d2                	test   edx,edx
    dbab:	7e 11                	jle    XFILE_copy_branch_14
    dbad:	8d 2c 19             	lea    ebp,[ecx+ebx*1]
XFILE_copy_branch_13:
    dbb0:	89 c6                	mov    esi,eax
    dbb2:	4a                   	dec    edx
    dbb3:	8a 4d 00             	mov    cl,BYTE PTR [ebp+0x0]
    dbb6:	40                   	inc    eax
    dbb7:	88 0c 37             	mov    BYTE PTR [edi+esi*1],cl
    dbba:	85 d2                	test   edx,edx
    dbbc:	7f f2                	jg     XFILE_copy_branch_13
XFILE_copy_branch_14:
    dbbe:	43                   	inc    ebx
    dbbf:	eb 2b                	jmp    XFILE_copy_branch_17
XFILE_copy_branch_15:
    dbc1:	31 f6                	xor    esi,esi
    dbc3:	85 d2                	test   edx,edx
    dbc5:	7e 25                	jle    XFILE_copy_branch_17
XFILE_copy_branch_16:
    dbc7:	8b ac 24 50 01 00 00 	mov    ebp,DWORD PTR [esp+0x150]
    dbce:	89 d9                	mov    ecx,ebx
    dbd0:	89 84 24 04 01 00 00 	mov    DWORD PTR [esp+0x104],eax
    dbd7:	46                   	inc    esi
    dbd8:	01 e9                	add    ecx,ebp
    dbda:	43                   	inc    ebx
    dbdb:	8b ac 24 04 01 00 00 	mov    ebp,DWORD PTR [esp+0x104]
    dbe2:	8a 09                	mov    cl,BYTE PTR [ecx]
    dbe4:	40                   	inc    eax
    dbe5:	88 0c 2f             	mov    BYTE PTR [edi+ebp*1],cl
    dbe8:	39 d6                	cmp    esi,edx
    dbea:	7c db                	jl     XFILE_copy_branch_16
XFILE_copy_branch_17:
    dbec:	3b 9c 24 40 01 00 00 	cmp    ebx,DWORD PTR [esp+0x140]
    dbf3:	7c 92                	jl     XFILE_copy_branch_12
XFILE_copy_branch_18:
    dbf5:	8b 84 24 24 01 00 00 	mov    eax,DWORD PTR [esp+0x124]
    dbfc:	e8 e7 37 06 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
XFILE_copy_branch_19:
    dc01:	8b 94 24 44 01 00 00 	mov    edx,DWORD PTR [esp+0x144]
    dc08:	8b 84 24 00 01 00 00 	mov    eax,DWORD PTR [esp+0x100]
    dc0f:	8b 12                	mov    edx,DWORD PTR [edx]
    dc11:	8b 1c 85 44 27 02 00 	mov    ebx,DWORD PTR [eax*4+@obj3:current_head_offset]              ; fixup: num: 1644, src obj: 1, src ofs: 0xdc14, dst obj: 3, dst ofs: 0x22744
    dc18:	8b 92 88 00 00 00    	mov    edx,DWORD PTR [edx+0x88]
    dc1e:	01 d3                	add    ebx,edx
    dc20:	89 1c 85 44 27 02 00 	mov    DWORD PTR [eax*4+@obj3:current_head_offset],ebx              ; fixup: num: 1643, src obj: 1, src ofs: 0xdc23, dst obj: 3, dst ofs: 0x22744
    dc27:	8b 84 24 30 01 00 00 	mov    eax,DWORD PTR [esp+0x130]
    dc2e:	e9 65 01 00 00       	jmp    XFILE_copy_branch_36
XFILE_copy_branch_20:
    dc33:	8b 84 24 44 01 00 00 	mov    eax,DWORD PTR [esp+0x144]
    dc3a:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
    dc3d:	89 84 24 44 01 00 00 	mov    DWORD PTR [esp+0x144],eax
    dc44:	39 c3                	cmp    ebx,eax
    dc46:	0f 85 b9 fd ff ff    	jne    XFILE_copy_branch_4
XFILE_copy_branch_21:
    dc4c:	31 c0                	xor    eax,eax
    dc4e:	e9 45 01 00 00       	jmp    XFILE_copy_branch_36
XFILE_copy_branch_22:
    dc53:	ba d8 0f 00 00       	mov    edx,@obj3:xfile_cpp_variable_3                               ; fixup: num: 1651, src obj: 1, src ofs: 0xdc54, dst obj: 3, dst ofs: 0xfd8
    dc58:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 1650, src obj: 1, src ofs: 0xdc59, dst obj: 3, dst ofs: 0x32438
    dc5d:	bf cc a3 01 00       	mov    edi,@obj3:path                                               ; fixup: num: 1649, src obj: 1, src ofs: 0xdc5e, dst obj: 3, dst ofs: 0x1a3cc
    dc62:	e8 69 fb 05 00       	call   get
    dc67:	89 c6                	mov    esi,eax
    dc69:	57                   	push   edi
XFILE_copy_branch_23:
    dc6a:	8a 06                	mov    al,BYTE PTR [esi]
    dc6c:	88 07                	mov    BYTE PTR [edi],al
    dc6e:	3c 00                	cmp    al,0x0
    dc70:	74 10                	je     XFILE_copy_branch_24
    dc72:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
    dc75:	83 c6 02             	add    esi,0x2
    dc78:	88 47 01             	mov    BYTE PTR [edi+0x1],al
    dc7b:	83 c7 02             	add    edi,0x2
    dc7e:	3c 00                	cmp    al,0x0
    dc80:	75 e8                	jne    XFILE_copy_branch_23
XFILE_copy_branch_24:
    dc82:	5f                   	pop    edi
    dc83:	29 c9                	sub    ecx,ecx
    dc85:	49                   	dec    ecx
    dc86:	31 c0                	xor    eax,eax
    dc88:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
    dc8a:	f7 d1                	not    ecx
    dc8c:	49                   	dec    ecx
    dc8d:	bf cc a3 01 00       	mov    edi,@obj3:path                                               ; fixup: num: 1648, src obj: 1, src ofs: 0xdc8e, dst obj: 3, dst ofs: 0x1a3cc
    dc92:	89 ee                	mov    esi,ebp
    dc94:	01 cf                	add    edi,ecx
    dc96:	57                   	push   edi
XFILE_copy_branch_25:
    dc97:	8a 06                	mov    al,BYTE PTR [esi]
    dc99:	88 07                	mov    BYTE PTR [edi],al
    dc9b:	3c 00                	cmp    al,0x0
    dc9d:	74 10                	je     XFILE_copy_branch_26
    dc9f:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
    dca2:	83 c6 02             	add    esi,0x2
    dca5:	88 47 01             	mov    BYTE PTR [edi+0x1],al
    dca8:	83 c7 02             	add    edi,0x2
    dcab:	3c 00                	cmp    al,0x0
    dcad:	75 e8                	jne    XFILE_copy_branch_25
XFILE_copy_branch_26:
    dcaf:	5f                   	pop    edi
    dcb0:	be cc a3 01 00       	mov    esi,@obj3:path                                               ; fixup: num: 1647, src obj: 1, src ofs: 0xdcb1, dst obj: 3, dst ofs: 0x1a3cc
    dcb5:	8b 8c 24 20 01 00 00 	mov    ecx,DWORD PTR [esp+0x120]
    dcbc:	85 f6                	test   esi,esi
    dcbe:	75 07                	jne    XFILE_copy_branch_27
    dcc0:	31 c0                	xor    eax,eax
    dcc2:	e9 d1 00 00 00       	jmp    XFILE_copy_branch_36
XFILE_copy_branch_27:
    dcc7:	75 07                	jne    XFILE_copy_branch_28
    dcc9:	b8 ff ff ff ff       	mov    eax,0xffffffff
    dcce:	eb 50                	jmp    XFILE_copy_branch_30
XFILE_copy_branch_28:
    dcd0:	68 00 02 00 00       	push   0x200
    dcd5:	56                   	push   esi
    dcd6:	e8 9b 38 06 00       	call   open_
    dcdb:	89 c2                	mov    edx,eax
    dcdd:	83 c4 08             	add    esp,0x8
    dce0:	83 f8 ff             	cmp    eax,0xffffffff
    dce3:	75 2b                	jne    XFILE_copy_branch_29
    dce5:	56                   	push   esi
    dce6:	e8 b7 80 06 00       	call   __get_errno_ptr_
    dceb:	8b 00                	mov    eax,DWORD PTR [eax]
    dced:	50                   	push   eax
    dcee:	68 cb 10 00 00       	push   @obj3:xfile_cpp_variable_21                                  ; fixup: num: 1646, src obj: 1, src ofs: 0xdcef, dst obj: 3, dst ofs: 0x10cb
    dcf3:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 1645, src obj: 1, src ofs: 0xdcf4, dst obj: 3, dst ofs: 0x237fc
    dcf8:	e8 e4 2e 06 00       	call   sprintf_
    dcfd:	83 c4 10             	add    esp,0x10
    dd00:	89 d0                	mov    eax,edx
    dd02:	89 c7                	mov    edi,eax
    dd04:	83 f8 ff             	cmp    eax,0xffffffff
    dd07:	75 25                	jne    XFILE_copy_branch_31
    dd09:	31 c0                	xor    eax,eax
    dd0b:	e9 88 00 00 00       	jmp    XFILE_copy_branch_36
XFILE_copy_branch_29:
    dd10:	e8 50 80 06 00       	call   filelength_
    dd15:	89 c3                	mov    ebx,eax
    dd17:	89 d0                	mov    eax,edx
    dd19:	e8 f2 41 06 00       	call   close_
    dd1e:	89 d8                	mov    eax,ebx
XFILE_copy_branch_30:
    dd20:	89 c7                	mov    edi,eax
    dd22:	83 f8 ff             	cmp    eax,0xffffffff
    dd25:	75 07                	jne    XFILE_copy_branch_31
    dd27:	31 c0                	xor    eax,eax
    dd29:	e9 6a 00 00 00       	jmp    XFILE_copy_branch_36
XFILE_copy_branch_31:
    dd2e:	85 c9                	test   ecx,ecx
    dd30:	75 07                	jne    XFILE_copy_branch_32
    dd32:	e8 5c 37 06 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
    dd37:	89 c1                	mov    ecx,eax
XFILE_copy_branch_32:
    dd39:	85 c9                	test   ecx,ecx
    dd3b:	75 04                	jne    XFILE_copy_branch_33
    dd3d:	31 c0                	xor    eax,eax
    dd3f:	eb 57                	jmp    XFILE_copy_branch_36
XFILE_copy_branch_33:
    dd41:	68 00 02 00 00       	push   0x200
    dd46:	56                   	push   esi
    dd47:	e8 2a 38 06 00       	call   open_
    dd4c:	89 c6                	mov    esi,eax
    dd4e:	83 c4 08             	add    esp,0x8
    dd51:	83 f8 ff             	cmp    eax,0xffffffff
    dd54:	75 0b                	jne    XFILE_copy_branch_34
    dd56:	89 c8                	mov    eax,ecx
    dd58:	e8 8b 36 06 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
    dd5d:	31 c0                	xor    eax,eax
    dd5f:	eb 37                	jmp    XFILE_copy_branch_36
XFILE_copy_branch_34:
    dd61:	89 fb                	mov    ebx,edi
    dd63:	89 ca                	mov    edx,ecx
    dd65:	e8 f9 41 06 00       	call   read_
    dd6a:	89 c2                	mov    edx,eax
    dd6c:	39 f8                	cmp    eax,edi
    dd6e:	74 1f                	je     XFILE_copy_branch_35
    dd70:	89 c8                	mov    eax,ecx
    dd72:	e8 71 36 06 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
    dd77:	57                   	push   edi
    dd78:	52                   	push   edx
    dd79:	68 6e 11 00 00       	push   @obj3:xfile_cpp_variable_25                                  ; fixup: num: 1653, src obj: 1, src ofs: 0xdd7a, dst obj: 3, dst ofs: 0x116e
    dd7e:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 1652, src obj: 1, src ofs: 0xdd7f, dst obj: 3, dst ofs: 0x237fc
    dd83:	e8 59 2e 06 00       	call   sprintf_
    dd88:	83 c4 10             	add    esp,0x10
    dd8b:	31 c0                	xor    eax,eax
    dd8d:	eb 09                	jmp    XFILE_copy_branch_36
XFILE_copy_branch_35:
    dd8f:	89 f0                	mov    eax,esi
    dd91:	e8 7a 41 06 00       	call   close_
    dd96:	89 c8                	mov    eax,ecx
XFILE_copy_branch_36:
    dd98:	89 84 24 1c 01 00 00 	mov    DWORD PTR [esp+0x11c],eax
    dd9f:	85 c0                	test   eax,eax
    dda1:	75 07                	jne    XFILE_copy_branch_37
    dda3:	30 c0                	xor    al,al
    dda5:	e9 6f 07 00 00       	jmp    XFILE_copy_branch_96
XFILE_copy_branch_37:
    ddaa:	8b bc 24 34 01 00 00 	mov    edi,DWORD PTR [esp+0x134]
    ddb1:	85 ff                	test   edi,edi
    ddb3:	75 0a                	jne    XFILE_copy_branch_38
    ddb5:	bd ff ff ff ff       	mov    ebp,0xffffffff
    ddba:	e9 34 01 00 00       	jmp    XFILE_copy_branch_51
XFILE_copy_branch_38:
    ddbf:	e8 7c e8 ff ff       	call   XFILE_init
    ddc4:	8a 07                	mov    al,BYTE PTR [edi]
    ddc6:	fe c0                	inc    al
    ddc8:	25 ff 00 00 00       	and    eax,0xff
    ddcd:	8a 80 98 0d 01 00    	mov    al,BYTE PTR [eax+@obj3:__IsTable]                            ; fixup: num: 1659, src obj: 1, src ofs: 0xddcf, dst obj: 3, dst ofs: 0x10d98
    ddd3:	24 20                	and    al,0x20
    ddd5:	25 ff 00 00 00       	and    eax,0xff
    ddda:	74 5b                	je     XFILE_copy_branch_43
    dddc:	31 c0                	xor    eax,eax
    ddde:	8a 07                	mov    al,BYTE PTR [edi]
    dde0:	83 e8 30             	sub    eax,0x30
    dde3:	8d 1c 85 00 00 00 00 	lea    ebx,[eax*4+0x0]
    ddea:	83 bb f4 a4 01 00 00 	cmp    DWORD PTR [ebx+@obj3:consolidated_file_handles],0x0          ; fixup: num: 1658, src obj: 1, src ofs: 0xddec, dst obj: 3, dst ofs: 0x1a4f4
    ddf1:	7f 0a                	jg     XFILE_copy_branch_39
    ddf3:	bd ff ff ff ff       	mov    ebp,0xffffffff
    ddf8:	e9 f6 00 00 00       	jmp    XFILE_copy_branch_51
XFILE_copy_branch_39:
    ddfd:	8b ab 1c a5 01 00    	mov    ebp,DWORD PTR [ebx+@obj3:directory_caches]                   ; fixup: num: 1657, src obj: 1, src ofs: 0xddff, dst obj: 3, dst ofs: 0x1a51c
    de03:	85 ed                	test   ebp,ebp
    de05:	74 26                	je     XFILE_copy_branch_42
    de07:	89 eb                	mov    ebx,ebp
XFILE_copy_branch_40:
    de09:	8b 13                	mov    edx,DWORD PTR [ebx]
    de0b:	89 f8                	mov    eax,edi
    de0d:	83 c2 04             	add    edx,0x4
    de10:	e8 45 36 06 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
    de15:	85 c0                	test   eax,eax
    de17:	75 0d                	jne    XFILE_copy_branch_41
    de19:	8b 2b                	mov    ebp,DWORD PTR [ebx]
    de1b:	8b ad 90 00 00 00    	mov    ebp,DWORD PTR [ebp+0x90]
    de21:	e9 cd 00 00 00       	jmp    XFILE_copy_branch_51
XFILE_copy_branch_41:
    de26:	8b 5b 04             	mov    ebx,DWORD PTR [ebx+0x4]
    de29:	85 db                	test   ebx,ebx
    de2b:	75 dc                	jne    XFILE_copy_branch_40
XFILE_copy_branch_42:
    de2d:	bd ff ff ff ff       	mov    ebp,0xffffffff
    de32:	e9 bc 00 00 00       	jmp    XFILE_copy_branch_51
XFILE_copy_branch_43:
    de37:	ba d8 0f 00 00       	mov    edx,@obj3:xfile_cpp_variable_3                               ; fixup: num: 1656, src obj: 1, src ofs: 0xde38, dst obj: 3, dst ofs: 0xfd8
    de3c:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 1655, src obj: 1, src ofs: 0xde3d, dst obj: 3, dst ofs: 0x32438
    de41:	bf cc a3 01 00       	mov    edi,@obj3:path                                               ; fixup: num: 1654, src obj: 1, src ofs: 0xde42, dst obj: 3, dst ofs: 0x1a3cc
    de46:	e8 85 f9 05 00       	call   get
    de4b:	89 c6                	mov    esi,eax
    de4d:	57                   	push   edi
XFILE_copy_branch_44:
    de4e:	8a 06                	mov    al,BYTE PTR [esi]
    de50:	88 07                	mov    BYTE PTR [edi],al
    de52:	3c 00                	cmp    al,0x0
    de54:	74 10                	je     XFILE_copy_branch_45
    de56:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
    de59:	83 c6 02             	add    esi,0x2
    de5c:	88 47 01             	mov    BYTE PTR [edi+0x1],al
    de5f:	83 c7 02             	add    edi,0x2
    de62:	3c 00                	cmp    al,0x0
    de64:	75 e8                	jne    XFILE_copy_branch_44
XFILE_copy_branch_45:
    de66:	5f                   	pop    edi
    de67:	29 c9                	sub    ecx,ecx
    de69:	49                   	dec    ecx
    de6a:	31 c0                	xor    eax,eax
    de6c:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
    de6e:	f7 d1                	not    ecx
    de70:	49                   	dec    ecx
    de71:	bf cc a3 01 00       	mov    edi,@obj3:path                                               ; fixup: num: 1664, src obj: 1, src ofs: 0xde72, dst obj: 3, dst ofs: 0x1a3cc
    de76:	8b b4 24 34 01 00 00 	mov    esi,DWORD PTR [esp+0x134]
    de7d:	01 cf                	add    edi,ecx
    de7f:	57                   	push   edi
XFILE_copy_branch_46:
    de80:	8a 06                	mov    al,BYTE PTR [esi]
    de82:	88 07                	mov    BYTE PTR [edi],al
    de84:	3c 00                	cmp    al,0x0
    de86:	74 10                	je     XFILE_copy_branch_47
    de88:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
    de8b:	83 c6 02             	add    esi,0x2
    de8e:	88 47 01             	mov    BYTE PTR [edi+0x1],al
    de91:	83 c7 02             	add    edi,0x2
    de94:	3c 00                	cmp    al,0x0
    de96:	75 e8                	jne    XFILE_copy_branch_46
XFILE_copy_branch_47:
    de98:	5f                   	pop    edi
    de99:	b8 cc a3 01 00       	mov    eax,@obj3:path                                               ; fixup: num: 1663, src obj: 1, src ofs: 0xde9a, dst obj: 3, dst ofs: 0x1a3cc
    de9e:	85 c0                	test   eax,eax
    dea0:	75 07                	jne    XFILE_copy_branch_48
    dea2:	b8 ff ff ff ff       	mov    eax,0xffffffff
    dea7:	eb 48                	jmp    XFILE_copy_branch_50
XFILE_copy_branch_48:
    dea9:	68 00 02 00 00       	push   0x200
    deae:	50                   	push   eax
    deaf:	e8 c2 36 06 00       	call   open_
    deb4:	89 c2                	mov    edx,eax
    deb6:	83 c4 08             	add    esp,0x8
    deb9:	83 f8 ff             	cmp    eax,0xffffffff
    debc:	75 23                	jne    XFILE_copy_branch_49
    debe:	68 cc a3 01 00       	push   @obj3:path                                                   ; fixup: num: 1662, src obj: 1, src ofs: 0xdebf, dst obj: 3, dst ofs: 0x1a3cc
    dec3:	e8 da 7e 06 00       	call   __get_errno_ptr_
    dec8:	8b 00                	mov    eax,DWORD PTR [eax]
    deca:	50                   	push   eax
    decb:	68 cb 10 00 00       	push   @obj3:xfile_cpp_variable_21                                  ; fixup: num: 1661, src obj: 1, src ofs: 0xdecc, dst obj: 3, dst ofs: 0x10cb
    ded0:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 1660, src obj: 1, src ofs: 0xded1, dst obj: 3, dst ofs: 0x237fc
    ded5:	e8 07 2d 06 00       	call   sprintf_
    deda:	83 c4 10             	add    esp,0x10
    dedd:	89 d0                	mov    eax,edx
    dedf:	eb 10                	jmp    XFILE_copy_branch_50
XFILE_copy_branch_49:
    dee1:	e8 7f 7e 06 00       	call   filelength_
    dee6:	89 c3                	mov    ebx,eax
    dee8:	89 d0                	mov    eax,edx
    deea:	e8 21 40 06 00       	call   close_
    deef:	89 d8                	mov    eax,ebx
XFILE_copy_branch_50:
    def1:	89 c5                	mov    ebp,eax
XFILE_copy_branch_51:
    def3:	8b 84 24 38 01 00 00 	mov    eax,DWORD PTR [esp+0x138]
    defa:	89 84 24 0c 01 00 00 	mov    DWORD PTR [esp+0x10c],eax
    df01:	8b 84 24 1c 01 00 00 	mov    eax,DWORD PTR [esp+0x11c]
    df08:	89 84 24 14 01 00 00 	mov    DWORD PTR [esp+0x114],eax
    df0f:	8b 84 24 10 01 00 00 	mov    eax,DWORD PTR [esp+0x110]
    df16:	89 84 24 2c 01 00 00 	mov    DWORD PTR [esp+0x12c],eax
    df1d:	8b 84 24 38 01 00 00 	mov    eax,DWORD PTR [esp+0x138]
    df24:	89 ac 24 3c 01 00 00 	mov    DWORD PTR [esp+0x13c],ebp
    df2b:	85 c0                	test   eax,eax
    df2d:	75 07                	jne    XFILE_copy_branch_52
    df2f:	30 c0                	xor    al,al
    df31:	e9 e5 04 00 00       	jmp    XFILE_copy_branch_85
XFILE_copy_branch_52:
    df36:	e8 05 e7 ff ff       	call   XFILE_init
    df3b:	8b 84 24 38 01 00 00 	mov    eax,DWORD PTR [esp+0x138]
    df42:	8a 00                	mov    al,BYTE PTR [eax]
    df44:	fe c0                	inc    al
    df46:	25 ff 00 00 00       	and    eax,0xff
    df4b:	8a 80 98 0d 01 00    	mov    al,BYTE PTR [eax+@obj3:__IsTable]                            ; fixup: num: 1668, src obj: 1, src ofs: 0xdf4d, dst obj: 3, dst ofs: 0x10d98
    df51:	24 20                	and    al,0x20
    df53:	25 ff 00 00 00       	and    eax,0xff
    df58:	0f 84 d5 04 00 00    	je     XFILE_copy_branch_86
    df5e:	8b 94 24 38 01 00 00 	mov    edx,DWORD PTR [esp+0x138]
    df65:	31 c0                	xor    eax,eax
    df67:	8a 02                	mov    al,BYTE PTR [edx]
    df69:	83 e8 30             	sub    eax,0x30
    df6c:	31 ed                	xor    ebp,ebp
    df6e:	8b 14 85 f4 a4 01 00 	mov    edx,DWORD PTR [eax*4+@obj3:consolidated_file_handles]        ; fixup: num: 1667, src obj: 1, src ofs: 0xdf71, dst obj: 3, dst ofs: 0x1a4f4
    df75:	89 84 24 08 01 00 00 	mov    DWORD PTR [esp+0x108],eax
    df7c:	85 d2                	test   edx,edx
    df7e:	7f 07                	jg     XFILE_copy_branch_53
    df80:	30 c0                	xor    al,al
    df82:	e9 94 04 00 00       	jmp    XFILE_copy_branch_85
XFILE_copy_branch_53:
    df87:	8b bc 24 38 01 00 00 	mov    edi,DWORD PTR [esp+0x138]
    df8e:	e8 ad e6 ff ff       	call   XFILE_init
    df93:	8a 07                	mov    al,BYTE PTR [edi]
    df95:	fe c0                	inc    al
    df97:	25 ff 00 00 00       	and    eax,0xff
    df9c:	8a 80 98 0d 01 00    	mov    al,BYTE PTR [eax+@obj3:__IsTable]                            ; fixup: num: 1666, src obj: 1, src ofs: 0xdf9e, dst obj: 3, dst ofs: 0x10d98
    dfa2:	24 20                	and    al,0x20
    dfa4:	25 ff 00 00 00       	and    eax,0xff
    dfa9:	0f 84 a1 00 00 00    	je     XFILE_copy_branch_57
    dfaf:	31 c0                	xor    eax,eax
    dfb1:	8a 07                	mov    al,BYTE PTR [edi]
    dfb3:	83 e8 30             	sub    eax,0x30
    dfb6:	8d 34 85 00 00 00 00 	lea    esi,[eax*4+0x0]
    dfbd:	83 be f4 a4 01 00 00 	cmp    DWORD PTR [esi+@obj3:consolidated_file_handles],0x0          ; fixup: num: 1665, src obj: 1, src ofs: 0xdfbf, dst obj: 3, dst ofs: 0x1a4f4
    dfc4:	0f 8e 62 00 00 00    	jle    XFILE_copy_branch_56
    dfca:	8b 8e 1c a5 01 00    	mov    ecx,DWORD PTR [esi+@obj3:directory_caches]                   ; fixup: num: 1669, src obj: 1, src ofs: 0xdfcc, dst obj: 3, dst ofs: 0x1a51c
    dfd0:	85 c9                	test   ecx,ecx
    dfd2:	0f 84 54 00 00 00    	je     XFILE_copy_branch_56
XFILE_copy_branch_54:
    dfd8:	8b 11                	mov    edx,DWORD PTR [ecx]
    dfda:	89 f8                	mov    eax,edi
    dfdc:	83 c2 04             	add    edx,0x4
    dfdf:	e8 76 34 06 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
    dfe4:	85 c0                	test   eax,eax
    dfe6:	75 3d                	jne    XFILE_copy_branch_55
    dfe8:	8b 01                	mov    eax,DWORD PTR [ecx]
    dfea:	c6 40 04 00          	mov    BYTE PTR [eax+0x4],0x0
    dfee:	8b 01                	mov    eax,DWORD PTR [ecx]
    dff0:	8b 90 84 00 00 00    	mov    edx,DWORD PTR [eax+0x84]
    dff6:	31 db                	xor    ebx,ebx
    dff8:	81 ea 94 00 00 00    	sub    edx,0x94
    dffe:	8b 86 f4 a4 01 00    	mov    eax,DWORD PTR [esi+@obj3:consolidated_file_handles]          ; fixup: num: 1771, src obj: 1, src ofs: 0xe000, dst obj: 3, dst ofs: 0x1a4f4
    e004:	e8 c6 3e 06 00       	call   lseek_                                                       ; aliases: lseek_, _lseek_
    e009:	bb 94 00 00 00       	mov    ebx,0x94
    e00e:	8b 11                	mov    edx,DWORD PTR [ecx]
    e010:	8b 86 f4 a4 01 00    	mov    eax,DWORD PTR [esi+@obj3:consolidated_file_handles]          ; fixup: num: 1770, src obj: 1, src ofs: 0xe012, dst obj: 3, dst ofs: 0x1a4f4
    e016:	e8 a9 37 06 00       	call   write_
    e01b:	c7 86 44 27 02 00 ff ff ff ff 	mov    DWORD PTR [esi+@obj3:current_head_offset],0xffffffff; fixup: num: 1769, src obj: 1, src ofs: 0xe01d, dst obj: 3, dst ofs: 0x22744
XFILE_copy_branch_55:
    e025:	8b 49 04             	mov    ecx,DWORD PTR [ecx+0x4]
    e028:	85 c9                	test   ecx,ecx
    e02a:	75 ac                	jne    XFILE_copy_branch_54
XFILE_copy_branch_56:
    e02c:	8b 94 24 2c 01 00 00 	mov    edx,DWORD PTR [esp+0x12c]
    e033:	83 fa 01             	cmp    edx,0x1
    e036:	0f 82 8a 02 00 00    	jb     XFILE_copy_branch_76
    e03c:	0f 86 b5 00 00 00    	jbe    XFILE_copy_branch_63
    e042:	83 fa 02             	cmp    edx,0x2
    e045:	0f 84 68 02 00 00    	je     XFILE_copy_branch_75
    e04b:	e9 7e 02 00 00       	jmp    XFILE_copy_branch_77
XFILE_copy_branch_57:
    e050:	ba d8 0f 00 00       	mov    edx,@obj3:xfile_cpp_variable_3                               ; fixup: num: 1768, src obj: 1, src ofs: 0xe051, dst obj: 3, dst ofs: 0xfd8
    e055:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 1767, src obj: 1, src ofs: 0xe056, dst obj: 3, dst ofs: 0x32438
    e05a:	bf cc a3 01 00       	mov    edi,@obj3:path                                               ; fixup: num: 1766, src obj: 1, src ofs: 0xe05b, dst obj: 3, dst ofs: 0x1a3cc
    e05f:	e8 6c f7 05 00       	call   get
    e064:	89 c6                	mov    esi,eax
    e066:	57                   	push   edi
XFILE_copy_branch_58:
    e067:	8a 06                	mov    al,BYTE PTR [esi]
    e069:	88 07                	mov    BYTE PTR [edi],al
    e06b:	3c 00                	cmp    al,0x0
    e06d:	74 10                	je     XFILE_copy_branch_59
    e06f:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
    e072:	83 c6 02             	add    esi,0x2
    e075:	88 47 01             	mov    BYTE PTR [edi+0x1],al
    e078:	83 c7 02             	add    edi,0x2
    e07b:	3c 00                	cmp    al,0x0
    e07d:	75 e8                	jne    XFILE_copy_branch_58
XFILE_copy_branch_59:
    e07f:	5f                   	pop    edi
    e080:	29 c9                	sub    ecx,ecx
    e082:	49                   	dec    ecx
    e083:	31 c0                	xor    eax,eax
    e085:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
    e087:	f7 d1                	not    ecx
    e089:	49                   	dec    ecx
    e08a:	bf cc a3 01 00       	mov    edi,@obj3:path                                               ; fixup: num: 1775, src obj: 1, src ofs: 0xe08b, dst obj: 3, dst ofs: 0x1a3cc
    e08f:	8b b4 24 38 01 00 00 	mov    esi,DWORD PTR [esp+0x138]
    e096:	01 cf                	add    edi,ecx
    e098:	57                   	push   edi
XFILE_copy_branch_60:
    e099:	8a 06                	mov    al,BYTE PTR [esi]
    e09b:	88 07                	mov    BYTE PTR [edi],al
    e09d:	3c 00                	cmp    al,0x0
    e09f:	74 10                	je     XFILE_copy_branch_61
    e0a1:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
    e0a4:	83 c6 02             	add    esi,0x2
    e0a7:	88 47 01             	mov    BYTE PTR [edi+0x1],al
    e0aa:	83 c7 02             	add    edi,0x2
    e0ad:	3c 00                	cmp    al,0x0
    e0af:	75 e8                	jne    XFILE_copy_branch_60
XFILE_copy_branch_61:
    e0b1:	5f                   	pop    edi
    e0b2:	b8 cc a3 01 00       	mov    eax,@obj3:path                                               ; fixup: num: 1774, src obj: 1, src ofs: 0xe0b3, dst obj: 3, dst ofs: 0x1a3cc
    e0b7:	e8 c4 2e 06 00       	call   unlink_
    e0bc:	e9 6b ff ff ff       	jmp    XFILE_copy_branch_56
XFILE_copy_branch_62:
    e0c1:	8b 84 24 08 01 00 00 	mov    eax,DWORD PTR [esp+0x108]
    e0c8:	8b 04 85 f4 a4 01 00 	mov    eax,DWORD PTR [eax*4+@obj3:consolidated_file_handles]        ; fixup: num: 1773, src obj: 1, src ofs: 0xe0cb, dst obj: 3, dst ofs: 0x1a4f4
    e0cf:	8b 94 24 3c 01 00 00 	mov    edx,DWORD PTR [esp+0x13c]
    e0d6:	e8 8a 7c 06 00       	call   filelength_
    e0db:	01 d0                	add    eax,edx
    e0dd:	89 c2                	mov    edx,eax
    e0df:	d1 ea                	shr    edx,1
    e0e1:	01 d2                	add    edx,edx
    e0e3:	39 c2                	cmp    edx,eax
    e0e5:	0f 84 e3 01 00 00    	je     XFILE_copy_branch_77
    e0eb:	ff 84 24 3c 01 00 00 	inc    DWORD PTR [esp+0x13c]
    e0f2:	e9 d7 01 00 00       	jmp    XFILE_copy_branch_77
XFILE_copy_branch_63:
    e0f7:	8b 84 24 3c 01 00 00 	mov    eax,DWORD PTR [esp+0x13c]
    e0fe:	8b b4 24 3c 01 00 00 	mov    esi,DWORD PTR [esp+0x13c]
    e105:	d1 e8                	shr    eax,1
    e107:	01 f0                	add    eax,esi
    e109:	e8 85 33 06 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
    e10e:	89 84 24 28 01 00 00 	mov    DWORD PTR [esp+0x128],eax
    e115:	85 c0                	test   eax,eax
    e117:	75 0f                	jne    XFILE_copy_branch_64
    e119:	bb 8d 11 00 00       	mov    ebx,@obj3:xfile_cpp_variable_26                              ; fixup: num: 1772, src obj: 1, src ofs: 0xe11a, dst obj: 3, dst ofs: 0x118d
    e11e:	ba 53 02 00 00       	mov    edx,0x253
    e123:	e8 08 9f 02 00       	call   _error_report
XFILE_copy_branch_64:
    e128:	8b 84 24 14 01 00 00 	mov    eax,DWORD PTR [esp+0x114]
    e12f:	8b bc 24 3c 01 00 00 	mov    edi,DWORD PTR [esp+0x13c]
    e136:	89 84 24 54 01 00 00 	mov    DWORD PTR [esp+0x154],eax
    e13d:	8b 84 24 3c 01 00 00 	mov    eax,DWORD PTR [esp+0x13c]
    e144:	31 db                	xor    ebx,ebx
    e146:	89 84 24 18 01 00 00 	mov    DWORD PTR [esp+0x118],eax
    e14d:	8b 84 24 28 01 00 00 	mov    eax,DWORD PTR [esp+0x128]
    e154:	31 d2                	xor    edx,edx
    e156:	89 84 24 58 01 00 00 	mov    DWORD PTR [esp+0x158],eax
    e15d:	85 ff                	test   edi,edi
    e15f:	0f 8e 21 01 00 00    	jle    XFILE_copy_branch_74
XFILE_copy_branch_65:
    e165:	8b ac 24 54 01 00 00 	mov    ebp,DWORD PTR [esp+0x154]
    e16c:	01 dd                	add    ebp,ebx
    e16e:	8a 45 00             	mov    al,BYTE PTR [ebp+0x0]
    e171:	8a 4d 01             	mov    cl,BYTE PTR [ebp+0x1]
    e174:	38 c8                	cmp    al,cl
    e176:	0f 85 79 00 00 00    	jne    XFILE_copy_branch_68
    e17c:	3a 4d 02             	cmp    cl,BYTE PTR [ebp+0x2]
    e17f:	0f 85 70 00 00 00    	jne    XFILE_copy_branch_68
    e185:	8b 84 24 18 01 00 00 	mov    eax,DWORD PTR [esp+0x118]
    e18c:	89 df                	mov    edi,ebx
    e18e:	8a 4d 00             	mov    cl,BYTE PTR [ebp+0x0]
    e191:	31 f6                	xor    esi,esi
    e193:	89 84 24 48 01 00 00 	mov    DWORD PTR [esp+0x148],eax
    e19a:	8a 6d 01             	mov    ch,BYTE PTR [ebp+0x1]
    e19d:	89 e8                	mov    eax,ebp
    e19f:	38 e9                	cmp    cl,ch
    e1a1:	75 1a                	jne    XFILE_copy_branch_67
    e1a3:	8b ac 24 48 01 00 00 	mov    ebp,DWORD PTR [esp+0x148]
XFILE_copy_branch_66:
    e1aa:	39 ef                	cmp    edi,ebp
    e1ac:	7d 0f                	jge    XFILE_copy_branch_67
    e1ae:	46                   	inc    esi
    e1af:	40                   	inc    eax
    e1b0:	47                   	inc    edi
    e1b1:	83 fe 7e             	cmp    esi,0x7e
    e1b4:	74 07                	je     XFILE_copy_branch_67
    e1b6:	8a 08                	mov    cl,BYTE PTR [eax]
    e1b8:	3a 48 01             	cmp    cl,BYTE PTR [eax+0x1]
    e1bb:	74 ed                	je     XFILE_copy_branch_66
XFILE_copy_branch_67:
    e1bd:	46                   	inc    esi
    e1be:	8b bc 24 58 01 00 00 	mov    edi,DWORD PTR [esp+0x158]
    e1c5:	89 b4 24 5c 01 00 00 	mov    DWORD PTR [esp+0x15c],esi
    e1cc:	89 d0                	mov    eax,edx
    e1ce:	8a 8c 24 5c 01 00 00 	mov    cl,BYTE PTR [esp+0x15c]
    e1d5:	01 f8                	add    eax,edi
    e1d7:	80 c9 80             	or     cl,0x80
    e1da:	42                   	inc    edx
    e1db:	88 08                	mov    BYTE PTR [eax],cl
    e1dd:	8b 84 24 54 01 00 00 	mov    eax,DWORD PTR [esp+0x154]
    e1e4:	89 d1                	mov    ecx,edx
    e1e6:	42                   	inc    edx
    e1e7:	01 f9                	add    ecx,edi
    e1e9:	8a 04 03             	mov    al,BYTE PTR [ebx+eax*1]
    e1ec:	01 f3                	add    ebx,esi
    e1ee:	88 01                	mov    BYTE PTR [ecx],al
    e1f0:	e9 84 00 00 00       	jmp    XFILE_copy_branch_73
XFILE_copy_branch_68:
    e1f5:	8b 84 24 18 01 00 00 	mov    eax,DWORD PTR [esp+0x118]
    e1fc:	89 df                	mov    edi,ebx
    e1fe:	89 84 24 4c 01 00 00 	mov    DWORD PTR [esp+0x14c],eax
    e205:	8b 84 24 54 01 00 00 	mov    eax,DWORD PTR [esp+0x154]
    e20c:	31 f6                	xor    esi,esi
    e20e:	01 d8                	add    eax,ebx
XFILE_copy_branch_69:
    e210:	8a 08                	mov    cl,BYTE PTR [eax]
    e212:	3a 48 01             	cmp    cl,BYTE PTR [eax+0x1]
    e215:	75 07                	jne    XFILE_copy_branch_70
    e217:	8a 08                	mov    cl,BYTE PTR [eax]
    e219:	3a 48 02             	cmp    cl,BYTE PTR [eax+0x2]
    e21c:	74 11                	je     XFILE_copy_branch_71
XFILE_copy_branch_70:
    e21e:	3b bc 24 4c 01 00 00 	cmp    edi,DWORD PTR [esp+0x14c]
    e225:	7d 08                	jge    XFILE_copy_branch_71
    e227:	46                   	inc    esi
    e228:	40                   	inc    eax
    e229:	47                   	inc    edi
    e22a:	83 fe 7f             	cmp    esi,0x7f
    e22d:	75 e1                	jne    XFILE_copy_branch_69
XFILE_copy_branch_71:
    e22f:	8b bc 24 58 01 00 00 	mov    edi,DWORD PTR [esp+0x158]
    e236:	89 d0                	mov    eax,edx
    e238:	89 b4 24 5c 01 00 00 	mov    DWORD PTR [esp+0x15c],esi
    e23f:	01 f8                	add    eax,edi
    e241:	8a 8c 24 5c 01 00 00 	mov    cl,BYTE PTR [esp+0x15c]
    e248:	42                   	inc    edx
    e249:	88 08                	mov    BYTE PTR [eax],cl
    e24b:	31 c0                	xor    eax,eax
    e24d:	85 f6                	test   esi,esi
    e24f:	7e 28                	jle    XFILE_copy_branch_73
    e251:	8b ac 24 58 01 00 00 	mov    ebp,DWORD PTR [esp+0x158]
XFILE_copy_branch_72:
    e258:	8b bc 24 54 01 00 00 	mov    edi,DWORD PTR [esp+0x154]
    e25f:	89 de                	mov    esi,ebx
    e261:	01 f7                	add    edi,esi
    e263:	89 d6                	mov    esi,edx
    e265:	40                   	inc    eax
    e266:	01 ee                	add    esi,ebp
    e268:	8a 0f                	mov    cl,BYTE PTR [edi]
    e26a:	43                   	inc    ebx
    e26b:	88 0e                	mov    BYTE PTR [esi],cl
    e26d:	8b 8c 24 5c 01 00 00 	mov    ecx,DWORD PTR [esp+0x15c]
    e274:	42                   	inc    edx
    e275:	39 c8                	cmp    eax,ecx
    e277:	7c df                	jl     XFILE_copy_branch_72
XFILE_copy_branch_73:
    e279:	3b 9c 24 18 01 00 00 	cmp    ebx,DWORD PTR [esp+0x118]
    e280:	0f 8c df fe ff ff    	jl     XFILE_copy_branch_65
XFILE_copy_branch_74:
    e286:	8b b4 24 3c 01 00 00 	mov    esi,DWORD PTR [esp+0x13c]
    e28d:	89 d5                	mov    ebp,edx
    e28f:	39 f2                	cmp    edx,esi
    e291:	72 3b                	jb     XFILE_copy_branch_77
    e293:	8b 84 24 28 01 00 00 	mov    eax,DWORD PTR [esp+0x128]
    e29a:	e8 49 31 06 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
    e29f:	31 ff                	xor    edi,edi
    e2a1:	31 d5                	xor    ebp,edx
    e2a3:	89 bc 24 2c 01 00 00 	mov    DWORD PTR [esp+0x12c],edi
    e2aa:	89 bc 24 28 01 00 00 	mov    DWORD PTR [esp+0x128],edi
    e2b1:	eb 1b                	jmp    XFILE_copy_branch_77
XFILE_copy_branch_75:
    e2b3:	bb af 11 00 00       	mov    ebx,@obj3:xfile_cpp_variable_27                              ; fixup: num: 1779, src obj: 1, src ofs: 0xe2b4, dst obj: 3, dst ofs: 0x11af
    e2b8:	ba 5e 02 00 00       	mov    edx,0x25e
    e2bd:	31 c0                	xor    eax,eax
    e2bf:	e8 6c 9d 02 00       	call   _error_report
    e2c4:	eb 08                	jmp    XFILE_copy_branch_77
XFILE_copy_branch_76:
    e2c6:	85 d2                	test   edx,edx
    e2c8:	0f 84 f3 fd ff ff    	je     XFILE_copy_branch_62
XFILE_copy_branch_77:
    e2ce:	8b 94 24 08 01 00 00 	mov    edx,DWORD PTR [esp+0x108]
    e2d5:	b8 08 00 00 00       	mov    eax,0x8
    e2da:	8b 1c 95 1c a5 01 00 	mov    ebx,DWORD PTR [edx*4+@obj3:directory_caches]                 ; fixup: num: 1778, src obj: 1, src ofs: 0xe2dd, dst obj: 3, dst ofs: 0x1a51c
    e2e1:	e8 32 3c 06 00       	call   W?$nwn(ui)pnv
    e2e6:	89 04 95 1c a5 01 00 	mov    DWORD PTR [edx*4+@obj3:directory_caches],eax                 ; fixup: num: 1777, src obj: 1, src ofs: 0xe2e9, dst obj: 3, dst ofs: 0x1a51c
    e2ed:	8b b4 24 0c 01 00 00 	mov    esi,DWORD PTR [esp+0x10c]
    e2f4:	89 58 04             	mov    DWORD PTR [eax+0x4],ebx
    e2f7:	b8 94 00 00 00       	mov    eax,0x94
    e2fc:	8b 1c 95 1c a5 01 00 	mov    ebx,DWORD PTR [edx*4+@obj3:directory_caches]                 ; fixup: num: 1776, src obj: 1, src ofs: 0xe2ff, dst obj: 3, dst ofs: 0x1a51c
    e303:	e8 10 3c 06 00       	call   W?$nwn(ui)pnv
    e308:	89 c2                	mov    edx,eax
    e30a:	89 c1                	mov    ecx,eax
    e30c:	89 03                	mov    DWORD PTR [ebx],eax
    e30e:	8d 78 04             	lea    edi,[eax+0x4]
    e311:	57                   	push   edi
XFILE_copy_branch_78:
    e312:	8a 06                	mov    al,BYTE PTR [esi]
    e314:	88 07                	mov    BYTE PTR [edi],al
    e316:	3c 00                	cmp    al,0x0
    e318:	74 10                	je     XFILE_copy_branch_79
    e31a:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
    e31d:	83 c6 02             	add    esi,0x2
    e320:	88 47 01             	mov    BYTE PTR [edi+0x1],al
    e323:	83 c7 02             	add    edi,0x2
    e326:	3c 00                	cmp    al,0x0
    e328:	75 e8                	jne    XFILE_copy_branch_78
XFILE_copy_branch_79:
    e32a:	5f                   	pop    edi
    e32b:	8b 84 24 2c 01 00 00 	mov    eax,DWORD PTR [esp+0x12c]
    e332:	89 82 8c 00 00 00    	mov    DWORD PTR [edx+0x8c],eax
    e338:	8b 84 24 3c 01 00 00 	mov    eax,DWORD PTR [esp+0x13c]
    e33f:	89 82 90 00 00 00    	mov    DWORD PTR [edx+0x90],eax
    e345:	85 ed                	test   ebp,ebp
    e347:	75 08                	jne    XFILE_copy_branch_80
    e349:	89 82 88 00 00 00    	mov    DWORD PTR [edx+0x88],eax
    e34f:	eb 06                	jmp    XFILE_copy_branch_81
XFILE_copy_branch_80:
    e351:	89 aa 88 00 00 00    	mov    DWORD PTR [edx+0x88],ebp
XFILE_copy_branch_81:
    e357:	8b b4 24 08 01 00 00 	mov    esi,DWORD PTR [esp+0x108]
    e35e:	8d 34 b5 00 00 00 00 	lea    esi,[esi*4+0x0]
    e365:	8b 86 f4 a4 01 00    	mov    eax,DWORD PTR [esi+@obj3:consolidated_file_handles]          ; fixup: num: 1788, src obj: 1, src ofs: 0xe367, dst obj: 3, dst ofs: 0x1a4f4
    e36b:	e8 f5 79 06 00       	call   filelength_
    e370:	05 94 00 00 00       	add    eax,0x94
    e375:	89 81 84 00 00 00    	mov    DWORD PTR [ecx+0x84],eax
    e37b:	a0 d6 11 00 00       	mov    al,ds:@obj3:xfile_cpp_variable_28                            ; fixup: num: 1787, src obj: 1, src ofs: 0xe37c, dst obj: 3, dst ofs: 0x11d6
    e380:	88 01                	mov    BYTE PTR [ecx],al
    e382:	a0 dc 11 00 00       	mov    al,ds:@obj3:xfile_cpp_variable_29                            ; fixup: num: 1786, src obj: 1, src ofs: 0xe383, dst obj: 3, dst ofs: 0x11dc
    e387:	88 41 01             	mov    BYTE PTR [ecx+0x1],al
    e38a:	a0 e2 11 00 00       	mov    al,ds:@obj3:xfile_cpp_variable_30                            ; fixup: num: 1785, src obj: 1, src ofs: 0xe38b, dst obj: 3, dst ofs: 0x11e2
    e38f:	88 41 02             	mov    BYTE PTR [ecx+0x2],al
    e392:	a0 e8 11 00 00       	mov    al,ds:@obj3:xfile_cpp_variable_31                            ; fixup: num: 1784, src obj: 1, src ofs: 0xe393, dst obj: 3, dst ofs: 0x11e8
    e397:	88 41 03             	mov    BYTE PTR [ecx+0x3],al
    e39a:	8b 86 f4 a4 01 00    	mov    eax,DWORD PTR [esi+@obj3:consolidated_file_handles]          ; fixup: num: 1783, src obj: 1, src ofs: 0xe39c, dst obj: 3, dst ofs: 0x1a4f4
    e3a0:	31 db                	xor    ebx,ebx
    e3a2:	e8 be 79 06 00       	call   filelength_
    e3a7:	8b be f4 a4 01 00    	mov    edi,DWORD PTR [esi+@obj3:consolidated_file_handles]          ; fixup: num: 1782, src obj: 1, src ofs: 0xe3a9, dst obj: 3, dst ofs: 0x1a4f4
    e3ad:	89 c2                	mov    edx,eax
    e3af:	89 f8                	mov    eax,edi
    e3b1:	e8 19 3b 06 00       	call   lseek_                                                       ; aliases: lseek_, _lseek_
    e3b6:	bb 94 00 00 00       	mov    ebx,0x94
    e3bb:	89 ca                	mov    edx,ecx
    e3bd:	8b 86 f4 a4 01 00    	mov    eax,DWORD PTR [esi+@obj3:consolidated_file_handles]          ; fixup: num: 1781, src obj: 1, src ofs: 0xe3bf, dst obj: 3, dst ofs: 0x1a4f4
    e3c3:	e8 fc 33 06 00       	call   write_
    e3c8:	85 ed                	test   ebp,ebp
    e3ca:	75 1b                	jne    XFILE_copy_branch_82
    e3cc:	8b 9c 24 3c 01 00 00 	mov    ebx,DWORD PTR [esp+0x13c]
    e3d3:	8b 94 24 14 01 00 00 	mov    edx,DWORD PTR [esp+0x114]
    e3da:	8b 86 f4 a4 01 00    	mov    eax,DWORD PTR [esi+@obj3:consolidated_file_handles]          ; fixup: num: 1780, src obj: 1, src ofs: 0xe3dc, dst obj: 3, dst ofs: 0x1a4f4
    e3e0:	e8 df 33 06 00       	call   write_
    e3e5:	eb 20                	jmp    XFILE_copy_branch_83
XFILE_copy_branch_82:
    e3e7:	8b 94 24 28 01 00 00 	mov    edx,DWORD PTR [esp+0x128]
    e3ee:	89 eb                	mov    ebx,ebp
    e3f0:	8b 86 f4 a4 01 00    	mov    eax,DWORD PTR [esi+@obj3:consolidated_file_handles]          ; fixup: num: 1794, src obj: 1, src ofs: 0xe3f2, dst obj: 3, dst ofs: 0x1a4f4
    e3f6:	e8 c9 33 06 00       	call   write_
    e3fb:	8b 84 24 28 01 00 00 	mov    eax,DWORD PTR [esp+0x128]
    e402:	e8 e1 2f 06 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
XFILE_copy_branch_83:
    e407:	8b 84 24 08 01 00 00 	mov    eax,DWORD PTR [esp+0x108]
    e40e:	c7 04 85 44 27 02 00 ff ff ff ff 	mov    DWORD PTR [eax*4+@obj3:current_head_offset],0xffffffff; fixup: num: 1793, src obj: 1, src ofs: 0xe411, dst obj: 3, dst ofs: 0x22744
XFILE_copy_branch_84:
    e419:	b0 01                	mov    al,0x1
XFILE_copy_branch_85:
    e41b:	25 ff 00 00 00       	and    eax,0xff
    e420:	0f 85 e5 00 00 00    	jne    XFILE_copy_branch_95
    e426:	30 c0                	xor    al,al
    e428:	81 c4 60 01 00 00    	add    esp,0x160
    e42e:	5d                   	pop    ebp
    e42f:	5f                   	pop    edi
    e430:	5e                   	pop    esi
    e431:	59                   	pop    ecx
    e432:	c3                   	ret    
XFILE_copy_branch_86:
    e433:	ba d8 0f 00 00       	mov    edx,@obj3:xfile_cpp_variable_3                               ; fixup: num: 1792, src obj: 1, src ofs: 0xe434, dst obj: 3, dst ofs: 0xfd8
    e438:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 1791, src obj: 1, src ofs: 0xe439, dst obj: 3, dst ofs: 0x32438
    e43d:	bf cc a3 01 00       	mov    edi,@obj3:path                                               ; fixup: num: 1790, src obj: 1, src ofs: 0xe43e, dst obj: 3, dst ofs: 0x1a3cc
    e442:	e8 89 f3 05 00       	call   get
    e447:	89 c6                	mov    esi,eax
    e449:	57                   	push   edi
XFILE_copy_branch_87:
    e44a:	8a 06                	mov    al,BYTE PTR [esi]
    e44c:	88 07                	mov    BYTE PTR [edi],al
    e44e:	3c 00                	cmp    al,0x0
    e450:	74 10                	je     XFILE_copy_branch_88
    e452:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
    e455:	83 c6 02             	add    esi,0x2
    e458:	88 47 01             	mov    BYTE PTR [edi+0x1],al
    e45b:	83 c7 02             	add    edi,0x2
    e45e:	3c 00                	cmp    al,0x0
    e460:	75 e8                	jne    XFILE_copy_branch_87
XFILE_copy_branch_88:
    e462:	5f                   	pop    edi
    e463:	29 c9                	sub    ecx,ecx
    e465:	49                   	dec    ecx
    e466:	31 c0                	xor    eax,eax
    e468:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
    e46a:	f7 d1                	not    ecx
    e46c:	49                   	dec    ecx
    e46d:	bf cc a3 01 00       	mov    edi,@obj3:path                                               ; fixup: num: 1789, src obj: 1, src ofs: 0xe46e, dst obj: 3, dst ofs: 0x1a3cc
    e472:	8b b4 24 38 01 00 00 	mov    esi,DWORD PTR [esp+0x138]
    e479:	01 cf                	add    edi,ecx
    e47b:	57                   	push   edi
XFILE_copy_branch_89:
    e47c:	8a 06                	mov    al,BYTE PTR [esi]
    e47e:	88 07                	mov    BYTE PTR [edi],al
    e480:	3c 00                	cmp    al,0x0
    e482:	74 10                	je     XFILE_copy_branch_90
    e484:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
    e487:	83 c6 02             	add    esi,0x2
    e48a:	88 47 01             	mov    BYTE PTR [edi+0x1],al
    e48d:	83 c7 02             	add    edi,0x2
    e490:	3c 00                	cmp    al,0x0
    e492:	75 e8                	jne    XFILE_copy_branch_89
XFILE_copy_branch_90:
    e494:	5f                   	pop    edi
    e495:	68 80 01 00 00       	push   0x180
    e49a:	68 62 02 00 00       	push   0x262
    e49f:	68 cc a3 01 00       	push   @obj3:path                                                   ; fixup: num: 1795, src obj: 1, src ofs: 0xe4a0, dst obj: 3, dst ofs: 0x1a3cc
    e4a4:	e8 cd 30 06 00       	call   open_
    e4a9:	89 c1                	mov    ecx,eax
    e4ab:	83 c4 0c             	add    esp,0xc
    e4ae:	83 f8 ff             	cmp    eax,0xffffffff
    e4b1:	75 04                	jne    XFILE_copy_branch_91
    e4b3:	31 c0                	xor    eax,eax
    e4b5:	eb 45                	jmp    XFILE_copy_branch_94
XFILE_copy_branch_91:
    e4b7:	8b 94 24 1c 01 00 00 	mov    edx,DWORD PTR [esp+0x11c]
    e4be:	89 eb                	mov    ebx,ebp
    e4c0:	e8 ff 32 06 00       	call   write_
    e4c5:	83 f8 ff             	cmp    eax,0xffffffff
    e4c8:	75 11                	jne    XFILE_copy_branch_92
    e4ca:	31 c0                	xor    eax,eax
    e4cc:	85 c0                	test   eax,eax
    e4ce:	0f 85 45 ff ff ff    	jne    XFILE_copy_branch_84
    e4d4:	30 c0                	xor    al,al
    e4d6:	e9 40 ff ff ff       	jmp    XFILE_copy_branch_85
XFILE_copy_branch_92:
    e4db:	39 e8                	cmp    eax,ebp
    e4dd:	74 11                	je     XFILE_copy_branch_93
    e4df:	31 c0                	xor    eax,eax
    e4e1:	85 c0                	test   eax,eax
    e4e3:	0f 85 30 ff ff ff    	jne    XFILE_copy_branch_84
    e4e9:	30 c0                	xor    al,al
    e4eb:	e9 2b ff ff ff       	jmp    XFILE_copy_branch_85
XFILE_copy_branch_93:
    e4f0:	89 c8                	mov    eax,ecx
    e4f2:	e8 19 3a 06 00       	call   close_
    e4f7:	b8 01 00 00 00       	mov    eax,0x1
XFILE_copy_branch_94:
    e4fc:	85 c0                	test   eax,eax
    e4fe:	0f 85 15 ff ff ff    	jne    XFILE_copy_branch_84
    e504:	30 c0                	xor    al,al
    e506:	e9 10 ff ff ff       	jmp    XFILE_copy_branch_85
XFILE_copy_branch_95:
    e50b:	8b 84 24 1c 01 00 00 	mov    eax,DWORD PTR [esp+0x11c]
    e512:	e8 d1 2e 06 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
    e517:	b0 01                	mov    al,0x1
XFILE_copy_branch_96:
    e519:	81 c4 60 01 00 00    	add    esp,0x160
    e51f:	5d                   	pop    ebp
    e520:	5f                   	pop    edi
    e521:	5e                   	pop    esi
    e522:	59                   	pop    ecx
    e523:	c3                   	ret    
    e524:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    e52a:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]

;-------------------------------------------------
;  Function 'XFILE_open2'                        -
;-------------------------------------------------
XFILE_open2:
    e530:	51                   	push   ecx
    e531:	56                   	push   esi
    e532:	57                   	push   edi
    e533:	55                   	push   ebp
    e534:	89 e5                	mov    ebp,esp
    e536:	83 ec 08             	sub    esp,0x8
    e539:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
    e53c:	85 c0                	test   eax,eax
    e53e:	75 21                	jne    XFILE_open2_branch_2
    e540:	b8 ff ff ff ff       	mov    eax,0xffffffff
    e545:	e9 b1 01 00 00       	jmp    XFILE_open2_branch_15
XFILE_open2_branch_1:
    e54a:	8b 4d f8             	mov    ecx,DWORD PTR [ebp-0x8]
    e54d:	41                   	inc    ecx
    e54e:	81 c3 20 08 00 00    	add    ebx,0x820
    e554:	89 4d f8             	mov    DWORD PTR [ebp-0x8],ecx
    e557:	81 fb 00 82 00 00    	cmp    ebx,0x8200
    e55d:	7c 0c                	jl     XFILE_open2_branch_3
    e55f:	eb 13                	jmp    XFILE_open2_branch_4
XFILE_open2_branch_2:
    e561:	31 db                	xor    ebx,ebx
    e563:	e8 d8 e0 ff ff       	call   XFILE_init
    e568:	89 5d f8             	mov    DWORD PTR [ebp-0x8],ebx
XFILE_open2_branch_3:
    e56b:	80 bb 44 a5 01 00 00 	cmp    BYTE PTR [ebx+@obj3:handles],0x0                             ; fixup: num: 1802, src obj: 1, src ofs: 0xe56d, dst obj: 3, dst ofs: 0x1a544
    e572:	75 d6                	jne    XFILE_open2_branch_1
XFILE_open2_branch_4:
    e574:	8b 75 f8             	mov    esi,DWORD PTR [ebp-0x8]
    e577:	83 fe 10             	cmp    esi,0x10
    e57a:	75 0c                	jne    XFILE_open2_branch_5
    e57c:	b8 ff ff ff ff       	mov    eax,0xffffffff
    e581:	89 ec                	mov    esp,ebp
    e583:	5d                   	pop    ebp
    e584:	5f                   	pop    edi
    e585:	5e                   	pop    esi
    e586:	59                   	pop    ecx
    e587:	c3                   	ret    
XFILE_open2_branch_5:
    e588:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
    e58b:	8a 00                	mov    al,BYTE PTR [eax]
    e58d:	fe c0                	inc    al
    e58f:	25 ff 00 00 00       	and    eax,0xff
    e594:	89 f3                	mov    ebx,esi
    e596:	31 c9                	xor    ecx,ecx
    e598:	8a 80 98 0d 01 00    	mov    al,BYTE PTR [eax+@obj3:__IsTable]                            ; fixup: num: 1801, src obj: 1, src ofs: 0xe59a, dst obj: 3, dst ofs: 0x10d98
    e59e:	c1 e3 06             	shl    ebx,0x6
    e5a1:	24 20                	and    al,0x20
    e5a3:	01 f3                	add    ebx,esi
    e5a5:	88 c1                	mov    cl,al
    e5a7:	c1 e3 05             	shl    ebx,0x5
    e5aa:	85 c9                	test   ecx,ecx
    e5ac:	0f 84 bc 00 00 00    	je     XFILE_open2_branch_10
    e5b2:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
    e5b5:	8a 00                	mov    al,BYTE PTR [eax]
    e5b7:	b1 01                	mov    cl,0x1
    e5b9:	2c 30                	sub    al,0x30
    e5bb:	88 8b 45 a5 01 00    	mov    BYTE PTR [ebx+@obj3:handles_variable_1],cl                   ; fixup: num: 1800, src obj: 1, src ofs: 0xe5bd, dst obj: 3, dst ofs: 0x1a545
    e5c1:	88 83 4c a5 01 00    	mov    BYTE PTR [ebx+@obj3:handles_variable_3],al                   ; fixup: num: 1799, src obj: 1, src ofs: 0xe5c3, dst obj: 3, dst ofs: 0x1a54c
    e5c7:	8a 9b 4c a5 01 00    	mov    bl,BYTE PTR [ebx+@obj3:handles_variable_3]                   ; fixup: num: 1798, src obj: 1, src ofs: 0xe5c9, dst obj: 3, dst ofs: 0x1a54c
    e5cd:	81 e3 ff 00 00 00    	and    ebx,0xff
    e5d3:	8d 1c 9d 00 00 00 00 	lea    ebx,[ebx*4+0x0]
    e5da:	83 bb f4 a4 01 00 00 	cmp    DWORD PTR [ebx+@obj3:consolidated_file_handles],0x0          ; fixup: num: 1797, src obj: 1, src ofs: 0xe5dc, dst obj: 3, dst ofs: 0x1a4f4
    e5e1:	7f 0c                	jg     XFILE_open2_branch_6
    e5e3:	b8 ff ff ff ff       	mov    eax,0xffffffff
    e5e8:	89 ec                	mov    esp,ebp
    e5ea:	5d                   	pop    ebp
    e5eb:	5f                   	pop    edi
    e5ec:	5e                   	pop    esi
    e5ed:	59                   	pop    ecx
    e5ee:	c3                   	ret    
XFILE_open2_branch_6:
    e5ef:	8b 93 1c a5 01 00    	mov    edx,DWORD PTR [ebx+@obj3:directory_caches]                   ; fixup: num: 1796, src obj: 1, src ofs: 0xe5f1, dst obj: 3, dst ofs: 0x1a51c
    e5f5:	85 d2                	test   edx,edx
    e5f7:	74 69                	je     XFILE_open2_branch_9
    e5f9:	89 d3                	mov    ebx,edx
XFILE_open2_branch_7:
    e5fb:	8b 13                	mov    edx,DWORD PTR [ebx]
    e5fd:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
    e600:	83 c2 04             	add    edx,0x4
    e603:	e8 52 2e 06 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
    e608:	85 c0                	test   eax,eax
    e60a:	75 4f                	jne    XFILE_open2_branch_8
    e60c:	8b 55 f8             	mov    edx,DWORD PTR [ebp-0x8]
    e60f:	89 d0                	mov    eax,edx
    e611:	c1 e0 06             	shl    eax,0x6
    e614:	01 d0                	add    eax,edx
    e616:	8b 0b                	mov    ecx,DWORD PTR [ebx]
    e618:	c1 e0 05             	shl    eax,0x5
    e61b:	8b 91 88 00 00 00    	mov    edx,DWORD PTR [ecx+0x88]
    e621:	89 90 5c a5 01 00    	mov    DWORD PTR [eax+@obj3:handles_variable_7],edx                 ; fixup: num: 1811, src obj: 1, src ofs: 0xe623, dst obj: 3, dst ofs: 0x1a55c
    e627:	8b 13                	mov    edx,DWORD PTR [ebx]
    e629:	8b 92 84 00 00 00    	mov    edx,DWORD PTR [edx+0x84]
    e62f:	89 90 58 a5 01 00    	mov    DWORD PTR [eax+@obj3:handles_variable_6],edx                 ; fixup: num: 1810, src obj: 1, src ofs: 0xe631, dst obj: 3, dst ofs: 0x1a558
    e635:	89 90 50 a5 01 00    	mov    DWORD PTR [eax+@obj3:handles_variable_4],edx                 ; fixup: num: 1809, src obj: 1, src ofs: 0xe637, dst obj: 3, dst ofs: 0x1a550
    e63b:	b5 01                	mov    ch,0x1
    e63d:	8b 98 5c a5 01 00    	mov    ebx,DWORD PTR [eax+@obj3:handles_variable_7]                 ; fixup: num: 1808, src obj: 1, src ofs: 0xe63f, dst obj: 3, dst ofs: 0x1a55c
    e643:	88 a8 44 a5 01 00    	mov    BYTE PTR [eax+@obj3:handles],ch                              ; fixup: num: 1807, src obj: 1, src ofs: 0xe645, dst obj: 3, dst ofs: 0x1a544
    e649:	01 da                	add    edx,ebx
    e64b:	89 90 54 a5 01 00    	mov    DWORD PTR [eax+@obj3:handles_variable_5],edx                 ; fixup: num: 1806, src obj: 1, src ofs: 0xe64d, dst obj: 3, dst ofs: 0x1a554
    e651:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
    e654:	89 ec                	mov    esp,ebp
    e656:	5d                   	pop    ebp
    e657:	5f                   	pop    edi
    e658:	5e                   	pop    esi
    e659:	59                   	pop    ecx
    e65a:	c3                   	ret    
XFILE_open2_branch_8:
    e65b:	8b 5b 04             	mov    ebx,DWORD PTR [ebx+0x4]
    e65e:	85 db                	test   ebx,ebx
    e660:	75 99                	jne    XFILE_open2_branch_7
XFILE_open2_branch_9:
    e662:	b8 ff ff ff ff       	mov    eax,0xffffffff
    e667:	89 ec                	mov    esp,ebp
    e669:	5d                   	pop    ebp
    e66a:	5f                   	pop    edi
    e66b:	5e                   	pop    esi
    e66c:	59                   	pop    ecx
    e66d:	c3                   	ret    
XFILE_open2_branch_10:
    e66e:	68 00 02 00 00       	push   0x200
    e673:	ba d8 0f 00 00       	mov    edx,@obj3:xfile_cpp_variable_3                               ; fixup: num: 1805, src obj: 1, src ofs: 0xe674, dst obj: 3, dst ofs: 0xfd8
    e678:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 1804, src obj: 1, src ofs: 0xe679, dst obj: 3, dst ofs: 0x32438
    e67d:	bf cc a3 01 00       	mov    edi,@obj3:path                                               ; fixup: num: 1803, src obj: 1, src ofs: 0xe67e, dst obj: 3, dst ofs: 0x1a3cc
    e682:	e8 49 f1 05 00       	call   get
    e687:	89 c6                	mov    esi,eax
    e689:	57                   	push   edi
XFILE_open2_branch_11:
    e68a:	8a 06                	mov    al,BYTE PTR [esi]
    e68c:	88 07                	mov    BYTE PTR [edi],al
    e68e:	3c 00                	cmp    al,0x0
    e690:	74 10                	je     XFILE_open2_branch_12
    e692:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
    e695:	83 c6 02             	add    esi,0x2
    e698:	88 47 01             	mov    BYTE PTR [edi+0x1],al
    e69b:	83 c7 02             	add    edi,0x2
    e69e:	3c 00                	cmp    al,0x0
    e6a0:	75 e8                	jne    XFILE_open2_branch_11
XFILE_open2_branch_12:
    e6a2:	5f                   	pop    edi
    e6a3:	29 c9                	sub    ecx,ecx
    e6a5:	49                   	dec    ecx
    e6a6:	31 c0                	xor    eax,eax
    e6a8:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
    e6aa:	f7 d1                	not    ecx
    e6ac:	49                   	dec    ecx
    e6ad:	bf cc a3 01 00       	mov    edi,@obj3:path                                               ; fixup: num: 1820, src obj: 1, src ofs: 0xe6ae, dst obj: 3, dst ofs: 0x1a3cc
    e6b2:	8b 75 fc             	mov    esi,DWORD PTR [ebp-0x4]
    e6b5:	01 cf                	add    edi,ecx
    e6b7:	57                   	push   edi
XFILE_open2_branch_13:
    e6b8:	8a 06                	mov    al,BYTE PTR [esi]
    e6ba:	88 07                	mov    BYTE PTR [edi],al
    e6bc:	3c 00                	cmp    al,0x0
    e6be:	74 10                	je     XFILE_open2_branch_14
    e6c0:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
    e6c3:	83 c6 02             	add    esi,0x2
    e6c6:	88 47 01             	mov    BYTE PTR [edi+0x1],al
    e6c9:	83 c7 02             	add    edi,0x2
    e6cc:	3c 00                	cmp    al,0x0
    e6ce:	75 e8                	jne    XFILE_open2_branch_13
XFILE_open2_branch_14:
    e6d0:	5f                   	pop    edi
    e6d1:	68 cc a3 01 00       	push   @obj3:path                                                   ; fixup: num: 1819, src obj: 1, src ofs: 0xe6d2, dst obj: 3, dst ofs: 0x1a3cc
    e6d6:	e8 9b 2e 06 00       	call   open_
    e6db:	83 c4 08             	add    esp,0x8
    e6de:	89 83 48 a5 01 00    	mov    DWORD PTR [ebx+@obj3:handles_variable_2],eax                 ; fixup: num: 1818, src obj: 1, src ofs: 0xe6e0, dst obj: 3, dst ofs: 0x1a548
    e6e4:	83 f8 ff             	cmp    eax,0xffffffff
    e6e7:	74 12                	je     XFILE_open2_branch_15
    e6e9:	c6 83 44 a5 01 00 01 	mov    BYTE PTR [ebx+@obj3:handles],0x1                             ; fixup: num: 1817, src obj: 1, src ofs: 0xe6eb, dst obj: 3, dst ofs: 0x1a544
    e6f0:	30 f6                	xor    dh,dh
    e6f2:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
    e6f5:	88 b3 45 a5 01 00    	mov    BYTE PTR [ebx+@obj3:handles_variable_1],dh                   ; fixup: num: 1816, src obj: 1, src ofs: 0xe6f7, dst obj: 3, dst ofs: 0x1a545
XFILE_open2_branch_15:
    e6fb:	89 ec                	mov    esp,ebp
    e6fd:	5d                   	pop    ebp
    e6fe:	5f                   	pop    edi
    e6ff:	5e                   	pop    esi
    e700:	59                   	pop    ecx
    e701:	c3                   	ret    
    e702:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    e708:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
    e70e:	8b c0                	mov    eax,eax

;-------------------------------------------------
;  Function 'XFILE_close'                        -
;-------------------------------------------------
XFILE_close:
    e710:	53                   	push   ebx
    e711:	52                   	push   edx
    e712:	89 c2                	mov    edx,eax
    e714:	e8 27 df ff ff       	call   XFILE_init
    e719:	89 d0                	mov    eax,edx
    e71b:	c1 e0 06             	shl    eax,0x6
    e71e:	01 d0                	add    eax,edx
    e720:	c1 e0 05             	shl    eax,0x5
    e723:	80 b8 44 a5 01 00 00 	cmp    BYTE PTR [eax+@obj3:handles],0x0                             ; fixup: num: 1815, src obj: 1, src ofs: 0xe725, dst obj: 3, dst ofs: 0x1a544
    e72a:	74 1d                	je     XFILE_close_branch_1
    e72c:	30 f6                	xor    dh,dh
    e72e:	8a 98 45 a5 01 00    	mov    bl,BYTE PTR [eax+@obj3:handles_variable_1]                   ; fixup: num: 1814, src obj: 1, src ofs: 0xe730, dst obj: 3, dst ofs: 0x1a545
    e734:	88 b0 44 a5 01 00    	mov    BYTE PTR [eax+@obj3:handles],dh                              ; fixup: num: 1813, src obj: 1, src ofs: 0xe736, dst obj: 3, dst ofs: 0x1a544
    e73a:	84 db                	test   bl,bl
    e73c:	75 0b                	jne    XFILE_close_branch_1
    e73e:	8b 80 48 a5 01 00    	mov    eax,DWORD PTR [eax+@obj3:handles_variable_2]                 ; fixup: num: 1812, src obj: 1, src ofs: 0xe740, dst obj: 3, dst ofs: 0x1a548
    e744:	e8 c7 37 06 00       	call   close_
XFILE_close_branch_1:
    e749:	5a                   	pop    edx
    e74a:	5b                   	pop    ebx
    e74b:	c3                   	ret    
    e74c:	8d 44 20 00          	lea    eax,[eax+eiz*1+0x0]

;-------------------------------------------------
;  Function 'XFILE_read_chunk2'                  -
;-------------------------------------------------
XFILE_read_chunk2:
    e750:	56                   	push   esi
    e751:	57                   	push   edi
    e752:	55                   	push   ebp
    e753:	89 c7                	mov    edi,eax
    e755:	89 d5                	mov    ebp,edx
    e757:	89 de                	mov    esi,ebx
    e759:	85 d2                	test   edx,edx
    e75b:	75 0a                	jne    XFILE_read_chunk2_branch_1
    e75d:	b8 ff ff ff ff       	mov    eax,0xffffffff
    e762:	e9 8c 01 00 00       	jmp    XFILE_read_chunk2_branch_13
XFILE_read_chunk2_branch_1:
    e767:	e8 d4 de ff ff       	call   XFILE_init
    e76c:	85 ff                	test   edi,edi
    e76e:	7d 08                	jge    XFILE_read_chunk2_branch_2
    e770:	31 c0                	xor    eax,eax
    e772:	5d                   	pop    ebp
    e773:	5f                   	pop    edi
    e774:	5e                   	pop    esi
    e775:	c2 04 00             	ret    0x4
XFILE_read_chunk2_branch_2:
    e778:	89 f9                	mov    ecx,edi
    e77a:	89 c8                	mov    eax,ecx
    e77c:	c1 e0 06             	shl    eax,0x6
    e77f:	01 c1                	add    ecx,eax
    e781:	c1 e1 05             	shl    ecx,0x5
    e784:	80 b9 45 a5 01 00 00 	cmp    BYTE PTR [ecx+@obj3:handles_variable_1],0x0                  ; fixup: num: 1735, src obj: 1, src ofs: 0xe786, dst obj: 3, dst ofs: 0x1a545
    e78b:	0f 84 0a 01 00 00    	je     XFILE_read_chunk2_branch_8
    e791:	31 c0                	xor    eax,eax
    e793:	8a 81 4c a5 01 00    	mov    al,BYTE PTR [ecx+@obj3:handles_variable_3]                   ; fixup: num: 1734, src obj: 1, src ofs: 0xe795, dst obj: 3, dst ofs: 0x1a54c
    e799:	8d 04 85 00 00 00 00 	lea    eax,[eax*4+0x0]
    e7a0:	8b 99 58 a5 01 00    	mov    ebx,DWORD PTR [ecx+@obj3:handles_variable_6]                 ; fixup: num: 1733, src obj: 1, src ofs: 0xe7a2, dst obj: 3, dst ofs: 0x1a558
    e7a6:	3b 98 44 27 02 00    	cmp    ebx,DWORD PTR [eax+@obj3:current_head_offset]                ; fixup: num: 1732, src obj: 1, src ofs: 0xe7a8, dst obj: 3, dst ofs: 0x22744
    e7ac:	74 24                	je     XFILE_read_chunk2_branch_3
    e7ae:	89 da                	mov    edx,ebx
    e7b0:	8b 80 f4 a4 01 00    	mov    eax,DWORD PTR [eax+@obj3:consolidated_file_handles]          ; fixup: num: 1731, src obj: 1, src ofs: 0xe7b2, dst obj: 3, dst ofs: 0x1a4f4
    e7b6:	31 db                	xor    ebx,ebx
    e7b8:	e8 12 37 06 00       	call   lseek_                                                       ; aliases: lseek_, _lseek_
    e7bd:	31 c0                	xor    eax,eax
    e7bf:	8a 81 4c a5 01 00    	mov    al,BYTE PTR [ecx+@obj3:handles_variable_3]                   ; fixup: num: 1730, src obj: 1, src ofs: 0xe7c1, dst obj: 3, dst ofs: 0x1a54c
    e7c5:	8b 91 58 a5 01 00    	mov    edx,DWORD PTR [ecx+@obj3:handles_variable_6]                 ; fixup: num: 1729, src obj: 1, src ofs: 0xe7c7, dst obj: 3, dst ofs: 0x1a558
    e7cb:	89 14 85 44 27 02 00 	mov    DWORD PTR [eax*4+@obj3:current_head_offset],edx              ; fixup: num: 1823, src obj: 1, src ofs: 0xe7ce, dst obj: 3, dst ofs: 0x22744
XFILE_read_chunk2_branch_3:
    e7d2:	83 fe ff             	cmp    esi,0xffffffff
    e7d5:	75 38                	jne    XFILE_read_chunk2_branch_4
    e7d7:	89 f8                	mov    eax,edi
    e7d9:	c1 e0 06             	shl    eax,0x6
    e7dc:	8d 0c 07             	lea    ecx,[edi+eax*1]
    e7df:	c1 e1 05             	shl    ecx,0x5
    e7e2:	8b 81 58 a5 01 00    	mov    eax,DWORD PTR [ecx+@obj3:handles_variable_6]                 ; fixup: num: 1822, src obj: 1, src ofs: 0xe7e4, dst obj: 3, dst ofs: 0x1a558
    e7e8:	89 c2                	mov    edx,eax
    e7ea:	c1 fa 1f             	sar    edx,0x1f
    e7ed:	c1 e2 0a             	shl    edx,0xa
    e7f0:	1b c2                	sbb    eax,edx
    e7f2:	c1 f8 0a             	sar    eax,0xa
    e7f5:	8b b1 58 a5 01 00    	mov    esi,DWORD PTR [ecx+@obj3:handles_variable_6]                 ; fixup: num: 1821, src obj: 1, src ofs: 0xe7f7, dst obj: 3, dst ofs: 0x1a558
    e7fb:	c1 e0 0a             	shl    eax,0xa
    e7fe:	29 c6                	sub    esi,eax
    e800:	81 c6 00 04 00 00    	add    esi,0x400
    e806:	85 f6                	test   esi,esi
    e808:	7f 05                	jg     XFILE_read_chunk2_branch_4
    e80a:	be 00 04 00 00       	mov    esi,0x400
XFILE_read_chunk2_branch_4:
    e80f:	89 f8                	mov    eax,edi
    e811:	c1 e0 06             	shl    eax,0x6
    e814:	01 f8                	add    eax,edi
    e816:	c1 e0 05             	shl    eax,0x5
    e819:	8b 90 58 a5 01 00    	mov    edx,DWORD PTR [eax+@obj3:handles_variable_6]                 ; fixup: num: 1744, src obj: 1, src ofs: 0xe81b, dst obj: 3, dst ofs: 0x1a558
    e81f:	8b 88 54 a5 01 00    	mov    ecx,DWORD PTR [eax+@obj3:handles_variable_5]                 ; fixup: num: 1743, src obj: 1, src ofs: 0xe821, dst obj: 3, dst ofs: 0x1a554
    e825:	01 f2                	add    edx,esi
    e827:	39 ca                	cmp    edx,ecx
    e829:	7e 08                	jle    XFILE_read_chunk2_branch_5
    e82b:	89 ce                	mov    esi,ecx
    e82d:	2b b0 58 a5 01 00    	sub    esi,DWORD PTR [eax+@obj3:handles_variable_6]                 ; fixup: num: 1742, src obj: 1, src ofs: 0xe82f, dst obj: 3, dst ofs: 0x1a558
XFILE_read_chunk2_branch_5:
    e833:	85 f6                	test   esi,esi
    e835:	7f 08                	jg     XFILE_read_chunk2_branch_6
    e837:	31 c0                	xor    eax,eax
    e839:	5d                   	pop    ebp
    e83a:	5f                   	pop    edi
    e83b:	5e                   	pop    esi
    e83c:	c2 04 00             	ret    0x4
XFILE_read_chunk2_branch_6:
    e83f:	89 f9                	mov    ecx,edi
    e841:	c1 e1 06             	shl    ecx,0x6
    e844:	01 f9                	add    ecx,edi
    e846:	c1 e1 05             	shl    ecx,0x5
    e849:	31 c0                	xor    eax,eax
    e84b:	8a 81 4c a5 01 00    	mov    al,BYTE PTR [ecx+@obj3:handles_variable_3]                   ; fixup: num: 1741, src obj: 1, src ofs: 0xe84d, dst obj: 3, dst ofs: 0x1a54c
    e851:	8d 04 85 00 00 00 00 	lea    eax,[eax*4+0x0]
    e858:	8b 98 f4 a4 01 00    	mov    ebx,DWORD PTR [eax+@obj3:consolidated_file_handles]          ; fixup: num: 1740, src obj: 1, src ofs: 0xe85a, dst obj: 3, dst ofs: 0x1a4f4
    e85e:	83 fb ff             	cmp    ebx,0xffffffff
    e861:	75 08                	jne    XFILE_read_chunk2_branch_7
    e863:	31 c0                	xor    eax,eax
    e865:	5d                   	pop    ebp
    e866:	5f                   	pop    edi
    e867:	5e                   	pop    esi
    e868:	c2 04 00             	ret    0x4
XFILE_read_chunk2_branch_7:
    e86b:	89 d8                	mov    eax,ebx
    e86d:	89 ea                	mov    edx,ebp
    e86f:	89 f3                	mov    ebx,esi
    e871:	e8 ed 36 06 00       	call   read_
    e876:	8b b9 58 a5 01 00    	mov    edi,DWORD PTR [ecx+@obj3:handles_variable_6]                 ; fixup: num: 1739, src obj: 1, src ofs: 0xe878, dst obj: 3, dst ofs: 0x1a558
    e87c:	31 c0                	xor    eax,eax
    e87e:	01 f7                	add    edi,esi
    e880:	8a 81 4c a5 01 00    	mov    al,BYTE PTR [ecx+@obj3:handles_variable_3]                   ; fixup: num: 1738, src obj: 1, src ofs: 0xe882, dst obj: 3, dst ofs: 0x1a54c
    e886:	89 b9 58 a5 01 00    	mov    DWORD PTR [ecx+@obj3:handles_variable_6],edi                 ; fixup: num: 1737, src obj: 1, src ofs: 0xe888, dst obj: 3, dst ofs: 0x1a558
    e88c:	89 3c 85 44 27 02 00 	mov    DWORD PTR [eax*4+@obj3:current_head_offset],edi              ; fixup: num: 1736, src obj: 1, src ofs: 0xe88f, dst obj: 3, dst ofs: 0x22744
    e893:	89 f0                	mov    eax,esi
    e895:	5d                   	pop    ebp
    e896:	5f                   	pop    edi
    e897:	5e                   	pop    esi
    e898:	c2 04 00             	ret    0x4
XFILE_read_chunk2_branch_8:
    e89b:	83 fb ff             	cmp    ebx,0xffffffff
    e89e:	75 05                	jne    XFILE_read_chunk2_branch_9
    e8a0:	be 00 04 00 00       	mov    esi,0x400
XFILE_read_chunk2_branch_9:
    e8a5:	85 f6                	test   esi,esi
    e8a7:	7f 08                	jg     XFILE_read_chunk2_branch_10
    e8a9:	31 c0                	xor    eax,eax
    e8ab:	5d                   	pop    ebp
    e8ac:	5f                   	pop    edi
    e8ad:	5e                   	pop    esi
    e8ae:	c2 04 00             	ret    0x4
XFILE_read_chunk2_branch_10:
    e8b1:	89 f8                	mov    eax,edi
    e8b3:	c1 e0 06             	shl    eax,0x6
    e8b6:	01 f8                	add    eax,edi
    e8b8:	c1 e0 05             	shl    eax,0x5
    e8bb:	8b 90 48 a5 01 00    	mov    edx,DWORD PTR [eax+@obj3:handles_variable_2]                 ; fixup: num: 1752, src obj: 1, src ofs: 0xe8bd, dst obj: 3, dst ofs: 0x1a548
    e8c1:	83 fa ff             	cmp    edx,0xffffffff
    e8c4:	75 08                	jne    XFILE_read_chunk2_branch_11
    e8c6:	31 c0                	xor    eax,eax
    e8c8:	5d                   	pop    ebp
    e8c9:	5f                   	pop    edi
    e8ca:	5e                   	pop    esi
    e8cb:	c2 04 00             	ret    0x4
XFILE_read_chunk2_branch_11:
    e8ce:	89 d0                	mov    eax,edx
    e8d0:	89 f3                	mov    ebx,esi
    e8d2:	89 ea                	mov    edx,ebp
    e8d4:	e8 8a 36 06 00       	call   read_
    e8d9:	89 c1                	mov    ecx,eax
    e8db:	83 f8 ff             	cmp    eax,0xffffffff
    e8de:	75 11                	jne    XFILE_read_chunk2_branch_12
    e8e0:	bb f4 11 00 00       	mov    ebx,@obj3:xfile_cpp_variable_33                              ; fixup: num: 1751, src obj: 1, src ofs: 0xe8e1, dst obj: 3, dst ofs: 0x11f4
    e8e5:	ba 44 03 00 00       	mov    edx,0x344
    e8ea:	31 c0                	xor    eax,eax
    e8ec:	e8 3f 97 02 00       	call   _error_report
XFILE_read_chunk2_branch_12:
    e8f1:	89 c8                	mov    eax,ecx
XFILE_read_chunk2_branch_13:
    e8f3:	5d                   	pop    ebp
    e8f4:	5f                   	pop    edi
    e8f5:	5e                   	pop    esi
    e8f6:	c2 04 00             	ret    0x4
    e8f9:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    e8ff:	90                   	nop

;-------------------------------------------------
;  Function 'XFILE_seek'                         -
;-------------------------------------------------
XFILE_seek:
    e900:	51                   	push   ecx
    e901:	56                   	push   esi
    e902:	89 c1                	mov    ecx,eax
    e904:	e8 37 dd ff ff       	call   XFILE_init
    e909:	89 c8                	mov    eax,ecx
    e90b:	c1 e0 06             	shl    eax,0x6
    e90e:	01 c8                	add    eax,ecx
    e910:	c1 e0 05             	shl    eax,0x5
    e913:	80 b8 45 a5 01 00 00 	cmp    BYTE PTR [eax+@obj3:handles_variable_1],0x0                  ; fixup: num: 1750, src obj: 1, src ofs: 0xe915, dst obj: 3, dst ofs: 0x1a545
    e91a:	75 2d                	jne    XFILE_seek_branch_4
    e91c:	eb 51                	jmp    XFILE_seek_branch_7
XFILE_seek_branch_1:
    e91e:	8b b0 50 a5 01 00    	mov    esi,DWORD PTR [eax+@obj3:handles_variable_4]                 ; fixup: num: 1749, src obj: 1, src ofs: 0xe920, dst obj: 3, dst ofs: 0x1a550
    e924:	01 f2                	add    edx,esi
    e926:	89 90 58 a5 01 00    	mov    DWORD PTR [eax+@obj3:handles_variable_6],edx                 ; fixup: num: 1748, src obj: 1, src ofs: 0xe928, dst obj: 3, dst ofs: 0x1a558
    e92c:	5e                   	pop    esi
    e92d:	59                   	pop    ecx
    e92e:	c3                   	ret    
XFILE_seek_branch_2:
    e92f:	01 90 58 a5 01 00    	add    DWORD PTR [eax+@obj3:handles_variable_6],edx                 ; fixup: num: 1747, src obj: 1, src ofs: 0xe931, dst obj: 3, dst ofs: 0x1a558
    e935:	5e                   	pop    esi
    e936:	59                   	pop    ecx
    e937:	c3                   	ret    
XFILE_seek_branch_3:
    e938:	8b 98 54 a5 01 00    	mov    ebx,DWORD PTR [eax+@obj3:handles_variable_5]                 ; fixup: num: 1746, src obj: 1, src ofs: 0xe93a, dst obj: 3, dst ofs: 0x1a554
    e93e:	01 da                	add    edx,ebx
    e940:	89 90 58 a5 01 00    	mov    DWORD PTR [eax+@obj3:handles_variable_6],edx                 ; fixup: num: 1745, src obj: 1, src ofs: 0xe942, dst obj: 3, dst ofs: 0x1a558
    e946:	5e                   	pop    esi
    e947:	59                   	pop    ecx
    e948:	c3                   	ret    
XFILE_seek_branch_4:
    e949:	83 fb 01             	cmp    ebx,0x1
    e94c:	72 09                	jb     XFILE_seek_branch_5
    e94e:	76 df                	jbe    XFILE_seek_branch_2
    e950:	83 fb 02             	cmp    ebx,0x2
    e953:	74 e3                	je     XFILE_seek_branch_3
    e955:	eb 04                	jmp    XFILE_seek_branch_6
XFILE_seek_branch_5:
    e957:	85 db                	test   ebx,ebx
    e959:	74 c3                	je     XFILE_seek_branch_1
XFILE_seek_branch_6:
    e95b:	bb 05 12 00 00       	mov    ebx,@obj3:xfile_cpp_variable_34                              ; fixup: num: 1756, src obj: 1, src ofs: 0xe95c, dst obj: 3, dst ofs: 0x1205
    e960:	ba 53 03 00 00       	mov    edx,0x353
    e965:	31 c0                	xor    eax,eax
    e967:	e8 c4 96 02 00       	call   _error_report
    e96c:	5e                   	pop    esi
    e96d:	59                   	pop    ecx
    e96e:	c3                   	ret    
XFILE_seek_branch_7:
    e96f:	8b 80 48 a5 01 00    	mov    eax,DWORD PTR [eax+@obj3:handles_variable_2]                 ; fixup: num: 1755, src obj: 1, src ofs: 0xe971, dst obj: 3, dst ofs: 0x1a548
    e975:	e8 55 35 06 00       	call   lseek_                                                       ; aliases: lseek_, _lseek_
    e97a:	5e                   	pop    esi
    e97b:	59                   	pop    ecx
    e97c:	c3                   	ret    
    e97d:	8d 40 00             	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'FILE_size'                          -
;-------------------------------------------------
FILE_size:
    e980:	53                   	push   ebx
    e981:	52                   	push   edx
    e982:	89 c3                	mov    ebx,eax
    e984:	85 c0                	test   eax,eax
    e986:	75 08                	jne    FILE_size_branch_1
    e988:	b8 ff ff ff ff       	mov    eax,0xffffffff
    e98d:	5a                   	pop    edx
    e98e:	5b                   	pop    ebx
    e98f:	c3                   	ret    
FILE_size_branch_1:
    e990:	68 00 02 00 00       	push   0x200
    e995:	50                   	push   eax
    e996:	e8 db 2b 06 00       	call   open_
    e99b:	89 c2                	mov    edx,eax
    e99d:	83 c4 08             	add    esp,0x8
    e9a0:	83 f8 ff             	cmp    eax,0xffffffff
    e9a3:	75 20                	jne    FILE_size_branch_2
    e9a5:	53                   	push   ebx
    e9a6:	e8 f7 73 06 00       	call   __get_errno_ptr_
    e9ab:	8b 00                	mov    eax,DWORD PTR [eax]
    e9ad:	50                   	push   eax
    e9ae:	68 cb 10 00 00       	push   @obj3:xfile_cpp_variable_21                                  ; fixup: num: 1754, src obj: 1, src ofs: 0xe9af, dst obj: 3, dst ofs: 0x10cb
    e9b3:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 1753, src obj: 1, src ofs: 0xe9b4, dst obj: 3, dst ofs: 0x237fc
    e9b8:	e8 24 22 06 00       	call   sprintf_
    e9bd:	83 c4 10             	add    esp,0x10
    e9c0:	89 d0                	mov    eax,edx
    e9c2:	5a                   	pop    edx
    e9c3:	5b                   	pop    ebx
    e9c4:	c3                   	ret    
FILE_size_branch_2:
    e9c5:	e8 9b 73 06 00       	call   filelength_
    e9ca:	89 c3                	mov    ebx,eax
    e9cc:	89 d0                	mov    eax,edx
    e9ce:	e8 3d 35 06 00       	call   close_
    e9d3:	89 d8                	mov    eax,ebx
    e9d5:	5a                   	pop    edx
    e9d6:	5b                   	pop    ebx
    e9d7:	c3                   	ret    
    e9d8:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    e9de:	8b d2                	mov    edx,edx

;-------------------------------------------------
;  Function 'FILE_read'                          -
;-------------------------------------------------
FILE_read:
    e9e0:	53                   	push   ebx
    e9e1:	51                   	push   ecx
    e9e2:	56                   	push   esi
    e9e3:	57                   	push   edi
    e9e4:	89 c6                	mov    esi,eax
    e9e6:	85 c0                	test   eax,eax
    e9e8:	0f 84 de 00 00 00    	je     FILE_read_branch_10
    e9ee:	75 07                	jne    FILE_read_branch_1
    e9f0:	b8 ff ff ff ff       	mov    eax,0xffffffff
    e9f5:	eb 50                	jmp    FILE_read_branch_3
FILE_read_branch_1:
    e9f7:	68 00 02 00 00       	push   0x200
    e9fc:	50                   	push   eax
    e9fd:	e8 74 2b 06 00       	call   open_
    ea02:	89 c1                	mov    ecx,eax
    ea04:	83 c4 08             	add    esp,0x8
    ea07:	83 f8 ff             	cmp    eax,0xffffffff
    ea0a:	75 2b                	jne    FILE_read_branch_2
    ea0c:	56                   	push   esi
    ea0d:	e8 90 73 06 00       	call   __get_errno_ptr_
    ea12:	8b 00                	mov    eax,DWORD PTR [eax]
    ea14:	50                   	push   eax
    ea15:	68 cb 10 00 00       	push   @obj3:xfile_cpp_variable_21                                  ; fixup: num: 1760, src obj: 1, src ofs: 0xea16, dst obj: 3, dst ofs: 0x10cb
    ea1a:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 1759, src obj: 1, src ofs: 0xea1b, dst obj: 3, dst ofs: 0x237fc
    ea1f:	e8 bd 21 06 00       	call   sprintf_
    ea24:	83 c4 10             	add    esp,0x10
    ea27:	89 c8                	mov    eax,ecx
    ea29:	89 c7                	mov    edi,eax
    ea2b:	83 f8 ff             	cmp    eax,0xffffffff
    ea2e:	75 25                	jne    FILE_read_branch_4
    ea30:	31 c0                	xor    eax,eax
    ea32:	5f                   	pop    edi
    ea33:	5e                   	pop    esi
    ea34:	59                   	pop    ecx
    ea35:	5b                   	pop    ebx
    ea36:	c3                   	ret    
FILE_read_branch_2:
    ea37:	e8 29 73 06 00       	call   filelength_
    ea3c:	89 c7                	mov    edi,eax
    ea3e:	89 c8                	mov    eax,ecx
    ea40:	e8 cb 34 06 00       	call   close_
    ea45:	89 f8                	mov    eax,edi
FILE_read_branch_3:
    ea47:	89 c7                	mov    edi,eax
    ea49:	83 f8 ff             	cmp    eax,0xffffffff
    ea4c:	75 07                	jne    FILE_read_branch_4
    ea4e:	31 c0                	xor    eax,eax
    ea50:	5f                   	pop    edi
    ea51:	5e                   	pop    esi
    ea52:	59                   	pop    ecx
    ea53:	5b                   	pop    ebx
    ea54:	c3                   	ret    
FILE_read_branch_4:
    ea55:	85 d2                	test   edx,edx
    ea57:	75 09                	jne    FILE_read_branch_5
    ea59:	e8 35 2a 06 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
    ea5e:	89 c1                	mov    ecx,eax
    ea60:	eb 02                	jmp    FILE_read_branch_6
FILE_read_branch_5:
    ea62:	89 d1                	mov    ecx,edx
FILE_read_branch_6:
    ea64:	85 c9                	test   ecx,ecx
    ea66:	75 07                	jne    FILE_read_branch_7
    ea68:	31 c0                	xor    eax,eax
    ea6a:	5f                   	pop    edi
    ea6b:	5e                   	pop    esi
    ea6c:	59                   	pop    ecx
    ea6d:	5b                   	pop    ebx
    ea6e:	c3                   	ret    
FILE_read_branch_7:
    ea6f:	68 00 02 00 00       	push   0x200
    ea74:	56                   	push   esi
    ea75:	e8 fc 2a 06 00       	call   open_
    ea7a:	89 c6                	mov    esi,eax
    ea7c:	83 c4 08             	add    esp,0x8
    ea7f:	83 f8 ff             	cmp    eax,0xffffffff
    ea82:	75 0e                	jne    FILE_read_branch_8
    ea84:	89 c8                	mov    eax,ecx
    ea86:	e8 5d 29 06 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
    ea8b:	31 c0                	xor    eax,eax
    ea8d:	5f                   	pop    edi
    ea8e:	5e                   	pop    esi
    ea8f:	59                   	pop    ecx
    ea90:	5b                   	pop    ebx
    ea91:	c3                   	ret    
FILE_read_branch_8:
    ea92:	89 fb                	mov    ebx,edi
    ea94:	89 ca                	mov    edx,ecx
    ea96:	e8 c8 34 06 00       	call   read_
    ea9b:	89 c2                	mov    edx,eax
    ea9d:	39 f8                	cmp    eax,edi
    ea9f:	74 22                	je     FILE_read_branch_9
    eaa1:	89 c8                	mov    eax,ecx
    eaa3:	e8 40 29 06 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
    eaa8:	57                   	push   edi
    eaa9:	52                   	push   edx
    eaaa:	68 6e 11 00 00       	push   @obj3:xfile_cpp_variable_25                                  ; fixup: num: 1758, src obj: 1, src ofs: 0xeaab, dst obj: 3, dst ofs: 0x116e
    eaaf:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 1757, src obj: 1, src ofs: 0xeab0, dst obj: 3, dst ofs: 0x237fc
    eab4:	e8 28 21 06 00       	call   sprintf_
    eab9:	83 c4 10             	add    esp,0x10
    eabc:	31 c0                	xor    eax,eax
    eabe:	5f                   	pop    edi
    eabf:	5e                   	pop    esi
    eac0:	59                   	pop    ecx
    eac1:	5b                   	pop    ebx
    eac2:	c3                   	ret    
FILE_read_branch_9:
    eac3:	89 f0                	mov    eax,esi
    eac5:	e8 46 34 06 00       	call   close_
    eaca:	89 c8                	mov    eax,ecx
FILE_read_branch_10:
    eacc:	5f                   	pop    edi
    eacd:	5e                   	pop    esi
    eace:	59                   	pop    ecx
    eacf:	5b                   	pop    ebx
    ead0:	c3                   	ret    
    ead1:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    ead7:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
    eadd:	8d 40 00             	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'FILE_write'                         -
;-------------------------------------------------
FILE_write:
    eae0:	51                   	push   ecx
    eae1:	56                   	push   esi
    eae2:	89 de                	mov    esi,ebx
    eae4:	68 80 01 00 00       	push   0x180
    eae9:	68 62 02 00 00       	push   0x262
    eaee:	50                   	push   eax
    eaef:	e8 82 2a 06 00       	call   open_
    eaf4:	89 c1                	mov    ecx,eax
    eaf6:	83 c4 0c             	add    esp,0xc
    eaf9:	83 f8 ff             	cmp    eax,0xffffffff
    eafc:	75 05                	jne    FILE_write_branch_1
    eafe:	31 c0                	xor    eax,eax
    eb00:	5e                   	pop    esi
    eb01:	59                   	pop    ecx
    eb02:	c3                   	ret    
FILE_write_branch_1:
    eb03:	e8 bc 2c 06 00       	call   write_
    eb08:	83 f8 ff             	cmp    eax,0xffffffff
    eb0b:	75 05                	jne    FILE_write_branch_2
    eb0d:	31 c0                	xor    eax,eax
    eb0f:	5e                   	pop    esi
    eb10:	59                   	pop    ecx
    eb11:	c3                   	ret    
FILE_write_branch_2:
    eb12:	39 f0                	cmp    eax,esi
    eb14:	74 05                	je     FILE_write_branch_3
    eb16:	31 c0                	xor    eax,eax
    eb18:	5e                   	pop    esi
    eb19:	59                   	pop    ecx
    eb1a:	c3                   	ret    
FILE_write_branch_3:
    eb1b:	89 c8                	mov    eax,ecx
    eb1d:	e8 ee 33 06 00       	call   close_
    eb22:	b8 01 00 00 00       	mov    eax,0x1
    eb27:	5e                   	pop    esi
    eb28:	59                   	pop    ecx
    eb29:	c3                   	ret    
    eb2a:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'FILE_append'                        -
;-------------------------------------------------
FILE_append:
    eb30:	51                   	push   ecx
    eb31:	56                   	push   esi
    eb32:	89 de                	mov    esi,ebx
    eb34:	68 12 02 00 00       	push   0x212
    eb39:	50                   	push   eax
    eb3a:	e8 37 2a 06 00       	call   open_
    eb3f:	89 c1                	mov    ecx,eax
    eb41:	83 c4 08             	add    esp,0x8
    eb44:	83 f8 ff             	cmp    eax,0xffffffff
    eb47:	75 05                	jne    FILE_append_branch_1
    eb49:	31 c0                	xor    eax,eax
    eb4b:	5e                   	pop    esi
    eb4c:	59                   	pop    ecx
    eb4d:	c3                   	ret    
FILE_append_branch_1:
    eb4e:	e8 71 2c 06 00       	call   write_
    eb53:	83 f8 ff             	cmp    eax,0xffffffff
    eb56:	75 05                	jne    FILE_append_branch_2
    eb58:	31 c0                	xor    eax,eax
    eb5a:	5e                   	pop    esi
    eb5b:	59                   	pop    ecx
    eb5c:	c3                   	ret    
FILE_append_branch_2:
    eb5d:	39 f0                	cmp    eax,esi
    eb5f:	74 05                	je     FILE_append_branch_3
    eb61:	31 c0                	xor    eax,eax
    eb63:	5e                   	pop    esi
    eb64:	59                   	pop    ecx
    eb65:	c3                   	ret    
FILE_append_branch_3:
    eb66:	89 c8                	mov    eax,ecx
    eb68:	e8 a3 33 06 00       	call   close_
    eb6d:	b8 01 00 00 00       	mov    eax,0x1
    eb72:	5e                   	pop    esi
    eb73:	59                   	pop    ecx
    eb74:	c3                   	ret    
    eb75:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    eb7b:	8d 52 00             	lea    edx,[edx+0x0]
    eb7e:	8b db                	mov    ebx,ebx

;-------------------------------------------------
;  Function 'compress'                           -
;-------------------------------------------------
compress:
    eb80:	51                   	push   ecx
    eb81:	56                   	push   esi
    eb82:	57                   	push   edi
    eb83:	55                   	push   ebp
    eb84:	83 ec 18             	sub    esp,0x18
    eb87:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
    eb8b:	89 14 24             	mov    DWORD PTR [esp],edx
    eb8e:	89 5c 24 10          	mov    DWORD PTR [esp+0x10],ebx
    eb92:	8b 0c 24             	mov    ecx,DWORD PTR [esp]
    eb95:	31 db                	xor    ebx,ebx
    eb97:	31 d2                	xor    edx,edx
    eb99:	85 c9                	test   ecx,ecx
    eb9b:	0f 8e dd 00 00 00    	jle    compress_branch_10
compress_branch_1:
    eba1:	8b 6c 24 0c          	mov    ebp,DWORD PTR [esp+0xc]
    eba5:	01 dd                	add    ebp,ebx
    eba7:	8a 45 00             	mov    al,BYTE PTR [ebp+0x0]
    ebaa:	8a 65 01             	mov    ah,BYTE PTR [ebp+0x1]
    ebad:	38 e0                	cmp    al,ah
    ebaf:	75 5d                	jne    compress_branch_4
    ebb1:	3a 65 02             	cmp    ah,BYTE PTR [ebp+0x2]
    ebb4:	75 58                	jne    compress_branch_4
    ebb6:	8b 04 24             	mov    eax,DWORD PTR [esp]
    ebb9:	89 df                	mov    edi,ebx
    ebbb:	8a 4d 00             	mov    cl,BYTE PTR [ebp+0x0]
    ebbe:	31 f6                	xor    esi,esi
    ebc0:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
    ebc4:	8a 6d 01             	mov    ch,BYTE PTR [ebp+0x1]
    ebc7:	89 e8                	mov    eax,ebp
    ebc9:	38 e9                	cmp    cl,ch
    ebcb:	75 15                	jne    compress_branch_3
compress_branch_2:
    ebcd:	3b 7c 24 08          	cmp    edi,DWORD PTR [esp+0x8]
    ebd1:	7d 0f                	jge    compress_branch_3
    ebd3:	46                   	inc    esi
    ebd4:	40                   	inc    eax
    ebd5:	47                   	inc    edi
    ebd6:	83 fe 7e             	cmp    esi,0x7e
    ebd9:	74 07                	je     compress_branch_3
    ebdb:	8a 08                	mov    cl,BYTE PTR [eax]
    ebdd:	3a 48 01             	cmp    cl,BYTE PTR [eax+0x1]
    ebe0:	74 eb                	je     compress_branch_2
compress_branch_3:
    ebe2:	46                   	inc    esi
    ebe3:	8b 7c 24 10          	mov    edi,DWORD PTR [esp+0x10]
    ebe7:	89 74 24 14          	mov    DWORD PTR [esp+0x14],esi
    ebeb:	89 d0                	mov    eax,edx
    ebed:	8a 4c 24 14          	mov    cl,BYTE PTR [esp+0x14]
    ebf1:	01 f8                	add    eax,edi
    ebf3:	80 c9 80             	or     cl,0x80
    ebf6:	42                   	inc    edx
    ebf7:	88 08                	mov    BYTE PTR [eax],cl
    ebf9:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
    ebfd:	89 d1                	mov    ecx,edx
    ebff:	42                   	inc    edx
    ec00:	01 f9                	add    ecx,edi
    ec02:	8a 04 03             	mov    al,BYTE PTR [ebx+eax*1]
    ec05:	01 f3                	add    ebx,esi
    ec07:	88 01                	mov    BYTE PTR [ecx],al
    ec09:	e9 67 00 00 00       	jmp    compress_branch_9
compress_branch_4:
    ec0e:	8b 04 24             	mov    eax,DWORD PTR [esp]
    ec11:	89 df                	mov    edi,ebx
    ec13:	31 f6                	xor    esi,esi
    ec15:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
    ec19:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
    ec1d:	8b 6c 24 04          	mov    ebp,DWORD PTR [esp+0x4]
    ec21:	01 d8                	add    eax,ebx
compress_branch_5:
    ec23:	8a 08                	mov    cl,BYTE PTR [eax]
    ec25:	3a 48 01             	cmp    cl,BYTE PTR [eax+0x1]
    ec28:	75 07                	jne    compress_branch_6
    ec2a:	8a 08                	mov    cl,BYTE PTR [eax]
    ec2c:	3a 48 02             	cmp    cl,BYTE PTR [eax+0x2]
    ec2f:	74 0c                	je     compress_branch_7
compress_branch_6:
    ec31:	39 ef                	cmp    edi,ebp
    ec33:	7d 08                	jge    compress_branch_7
    ec35:	46                   	inc    esi
    ec36:	40                   	inc    eax
    ec37:	47                   	inc    edi
    ec38:	83 fe 7f             	cmp    esi,0x7f
    ec3b:	75 e6                	jne    compress_branch_5
compress_branch_7:
    ec3d:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
    ec41:	89 d0                	mov    eax,edx
    ec43:	89 74 24 14          	mov    DWORD PTR [esp+0x14],esi
    ec47:	01 c8                	add    eax,ecx
    ec49:	8a 4c 24 14          	mov    cl,BYTE PTR [esp+0x14]
    ec4d:	42                   	inc    edx
    ec4e:	88 08                	mov    BYTE PTR [eax],cl
    ec50:	31 c0                	xor    eax,eax
    ec52:	85 f6                	test   esi,esi
    ec54:	7e 1f                	jle    compress_branch_9
    ec56:	8b 7c 24 10          	mov    edi,DWORD PTR [esp+0x10]
    ec5a:	8b 6c 24 14          	mov    ebp,DWORD PTR [esp+0x14]
compress_branch_8:
    ec5e:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
    ec62:	89 de                	mov    esi,ebx
    ec64:	40                   	inc    eax
    ec65:	01 f1                	add    ecx,esi
    ec67:	89 d6                	mov    esi,edx
    ec69:	43                   	inc    ebx
    ec6a:	01 fe                	add    esi,edi
    ec6c:	8a 09                	mov    cl,BYTE PTR [ecx]
    ec6e:	42                   	inc    edx
    ec6f:	88 0e                	mov    BYTE PTR [esi],cl
    ec71:	39 e8                	cmp    eax,ebp
    ec73:	7c e9                	jl     compress_branch_8
compress_branch_9:
    ec75:	3b 1c 24             	cmp    ebx,DWORD PTR [esp]
    ec78:	0f 8c 23 ff ff ff    	jl     compress_branch_1
compress_branch_10:
    ec7e:	89 d0                	mov    eax,edx
    ec80:	83 c4 18             	add    esp,0x18
    ec83:	5d                   	pop    ebp
    ec84:	5f                   	pop    edi
    ec85:	5e                   	pop    esi
    ec86:	59                   	pop    ecx
    ec87:	c3                   	ret    
    ec88:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    ec8e:	8b d2                	mov    edx,edx

;-------------------------------------------------
;  Function 'process_comp'                       -
;-------------------------------------------------
process_comp:
    ec90:	51                   	push   ecx
    ec91:	56                   	push   esi
    ec92:	57                   	push   edi
    ec93:	89 de                	mov    esi,ebx
    ec95:	8d 3c 02             	lea    edi,[edx+eax*1]
    ec98:	8a 0f                	mov    cl,BYTE PTR [edi]
    ec9a:	31 db                	xor    ebx,ebx
    ec9c:	8a 6f 01             	mov    ch,BYTE PTR [edi+0x1]
    ec9f:	89 f8                	mov    eax,edi
    eca1:	38 e9                	cmp    cl,ch
    eca3:	75 13                	jne    process_comp_branch_2
process_comp_branch_1:
    eca5:	39 f2                	cmp    edx,esi
    eca7:	7d 0f                	jge    process_comp_branch_2
    eca9:	43                   	inc    ebx
    ecaa:	40                   	inc    eax
    ecab:	42                   	inc    edx
    ecac:	83 fb 7e             	cmp    ebx,0x7e
    ecaf:	74 07                	je     process_comp_branch_2
    ecb1:	8a 08                	mov    cl,BYTE PTR [eax]
    ecb3:	3a 48 01             	cmp    cl,BYTE PTR [eax+0x1]
    ecb6:	74 ed                	je     process_comp_branch_1
process_comp_branch_2:
    ecb8:	8d 43 01             	lea    eax,[ebx+0x1]
    ecbb:	5f                   	pop    edi
    ecbc:	5e                   	pop    esi
    ecbd:	59                   	pop    ecx
    ecbe:	c3                   	ret    
    ecbf:	90                   	nop

;-------------------------------------------------
;  Function 'process_uncomp'                     -
;-------------------------------------------------
process_uncomp:
    ecc0:	51                   	push   ecx
    ecc1:	56                   	push   esi
    ecc2:	89 d1                	mov    ecx,edx
    ecc4:	89 de                	mov    esi,ebx
    ecc6:	31 d2                	xor    edx,edx
    ecc8:	01 c8                	add    eax,ecx
process_uncomp_branch_1:
    ecca:	8a 18                	mov    bl,BYTE PTR [eax]
    eccc:	3a 58 01             	cmp    bl,BYTE PTR [eax+0x1]
    eccf:	75 07                	jne    process_uncomp_branch_2
    ecd1:	8a 18                	mov    bl,BYTE PTR [eax]
    ecd3:	3a 58 02             	cmp    bl,BYTE PTR [eax+0x2]
    ecd6:	74 0c                	je     process_uncomp_branch_3
process_uncomp_branch_2:
    ecd8:	39 f1                	cmp    ecx,esi
    ecda:	7d 08                	jge    process_uncomp_branch_3
    ecdc:	42                   	inc    edx
    ecdd:	40                   	inc    eax
    ecde:	41                   	inc    ecx
    ecdf:	83 fa 7f             	cmp    edx,0x7f
    ece2:	75 e6                	jne    process_uncomp_branch_1
process_uncomp_branch_3:
    ece4:	89 d0                	mov    eax,edx
    ece6:	5e                   	pop    esi
    ece7:	59                   	pop    ecx
    ece8:	c3                   	ret    
    ece9:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    ecef:	90                   	nop

;-------------------------------------------------
;  Function 'uncompress'                         -
;-------------------------------------------------
uncompress:
    ecf0:	51                   	push   ecx
    ecf1:	56                   	push   esi
    ecf2:	57                   	push   edi
    ecf3:	55                   	push   ebp
    ecf4:	83 ec 0c             	sub    esp,0xc
    ecf7:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
    ecfb:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
    ecff:	89 df                	mov    edi,ebx
    ed01:	31 c0                	xor    eax,eax
    ed03:	31 db                	xor    ebx,ebx
    ed05:	85 d2                	test   edx,edx
    ed07:	0f 8e 64 00 00 00    	jle    uncompress_branch_7
uncompress_branch_1:
    ed0d:	8b 74 24 08          	mov    esi,DWORD PTR [esp+0x8]
    ed11:	89 da                	mov    edx,ebx
    ed13:	01 f2                	add    edx,esi
    ed15:	43                   	inc    ebx
    ed16:	8a 12                	mov    dl,BYTE PTR [edx]
    ed18:	81 e2 ff 00 00 00    	and    edx,0xff
    ed1e:	81 fa 80 00 00 00    	cmp    edx,0x80
    ed24:	7e 20                	jle    uncompress_branch_4
    ed26:	81 ea 80 00 00 00    	sub    edx,0x80
    ed2c:	85 d2                	test   edx,edx
    ed2e:	7e 13                	jle    uncompress_branch_3
    ed30:	8d 2c 1e             	lea    ebp,[esi+ebx*1]
uncompress_branch_2:
    ed33:	89 c1                	mov    ecx,eax
    ed35:	4a                   	dec    edx
    ed36:	8d 34 0f             	lea    esi,[edi+ecx*1]
    ed39:	8a 4d 00             	mov    cl,BYTE PTR [ebp+0x0]
    ed3c:	40                   	inc    eax
    ed3d:	88 0e                	mov    BYTE PTR [esi],cl
    ed3f:	85 d2                	test   edx,edx
    ed41:	7f f0                	jg     uncompress_branch_2
uncompress_branch_3:
    ed43:	43                   	inc    ebx
    ed44:	eb 25                	jmp    uncompress_branch_6
uncompress_branch_4:
    ed46:	31 f6                	xor    esi,esi
    ed48:	85 d2                	test   edx,edx
    ed4a:	7e 1f                	jle    uncompress_branch_6
uncompress_branch_5:
    ed4c:	8b 6c 24 08          	mov    ebp,DWORD PTR [esp+0x8]
    ed50:	89 d9                	mov    ecx,ebx
    ed52:	46                   	inc    esi
    ed53:	01 cd                	add    ebp,ecx
    ed55:	89 c1                	mov    ecx,eax
    ed57:	89 2c 24             	mov    DWORD PTR [esp],ebp
    ed5a:	8d 2c 0f             	lea    ebp,[edi+ecx*1]
    ed5d:	8b 0c 24             	mov    ecx,DWORD PTR [esp]
    ed60:	43                   	inc    ebx
    ed61:	40                   	inc    eax
    ed62:	8a 09                	mov    cl,BYTE PTR [ecx]
    ed64:	88 4d 00             	mov    BYTE PTR [ebp+0x0],cl
    ed67:	39 d6                	cmp    esi,edx
    ed69:	7c e1                	jl     uncompress_branch_5
uncompress_branch_6:
    ed6b:	3b 5c 24 04          	cmp    ebx,DWORD PTR [esp+0x4]
    ed6f:	7c 9c                	jl     uncompress_branch_1
uncompress_branch_7:
    ed71:	83 c4 0c             	add    esp,0xc
    ed74:	5d                   	pop    ebp
    ed75:	5f                   	pop    edi
    ed76:	5e                   	pop    esi
    ed77:	59                   	pop    ecx
    ed78:	c3                   	ret    
    ed79:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    ed7f:	90                   	nop

;-------------------------------------------------
;  Function 'XFILE_map_cd'                       -
;-------------------------------------------------
XFILE_map_cd:
    ed80:	53                   	push   ebx
    ed81:	51                   	push   ecx
    ed82:	52                   	push   edx
    ed83:	56                   	push   esi
    ed84:	57                   	push   edi
    ed85:	89 c3                	mov    ebx,eax
    ed87:	ba d8 0f 00 00       	mov    edx,@obj3:xfile_cpp_variable_3                               ; fixup: num: 1765, src obj: 1, src ofs: 0xed88, dst obj: 3, dst ofs: 0xfd8
    ed8c:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 1764, src obj: 1, src ofs: 0xed8d, dst obj: 3, dst ofs: 0x32438
    ed91:	bf cc a3 01 00       	mov    edi,@obj3:path                                               ; fixup: num: 1763, src obj: 1, src ofs: 0xed92, dst obj: 3, dst ofs: 0x1a3cc
    ed96:	e8 35 ea 05 00       	call   get
    ed9b:	89 c6                	mov    esi,eax
    ed9d:	57                   	push   edi
XFILE_map_cd_branch_1:
    ed9e:	8a 06                	mov    al,BYTE PTR [esi]
    eda0:	88 07                	mov    BYTE PTR [edi],al
    eda2:	3c 00                	cmp    al,0x0
    eda4:	74 10                	je     XFILE_map_cd_branch_2
    eda6:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
    eda9:	83 c6 02             	add    esi,0x2
    edac:	88 47 01             	mov    BYTE PTR [edi+0x1],al
    edaf:	83 c7 02             	add    edi,0x2
    edb2:	3c 00                	cmp    al,0x0
    edb4:	75 e8                	jne    XFILE_map_cd_branch_1
XFILE_map_cd_branch_2:
    edb6:	5f                   	pop    edi
    edb7:	29 c9                	sub    ecx,ecx
    edb9:	49                   	dec    ecx
    edba:	31 c0                	xor    eax,eax
    edbc:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
    edbe:	f7 d1                	not    ecx
    edc0:	49                   	dec    ecx
    edc1:	bf cc a3 01 00       	mov    edi,@obj3:path                                               ; fixup: num: 1762, src obj: 1, src ofs: 0xedc2, dst obj: 3, dst ofs: 0x1a3cc
    edc6:	89 de                	mov    esi,ebx
    edc8:	01 cf                	add    edi,ecx
    edca:	57                   	push   edi
XFILE_map_cd_branch_3:
    edcb:	8a 06                	mov    al,BYTE PTR [esi]
    edcd:	88 07                	mov    BYTE PTR [edi],al
    edcf:	3c 00                	cmp    al,0x0
    edd1:	74 10                	je     XFILE_map_cd_branch_4
    edd3:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
    edd6:	83 c6 02             	add    esi,0x2
    edd9:	88 47 01             	mov    BYTE PTR [edi+0x1],al
    eddc:	83 c7 02             	add    edi,0x2
    eddf:	3c 00                	cmp    al,0x0
    ede1:	75 e8                	jne    XFILE_map_cd_branch_3
XFILE_map_cd_branch_4:
    ede3:	5f                   	pop    edi
    ede4:	b8 cc a3 01 00       	mov    eax,@obj3:path                                               ; fixup: num: 1761, src obj: 1, src ofs: 0xede5, dst obj: 3, dst ofs: 0x1a3cc
    ede9:	5f                   	pop    edi
    edea:	5e                   	pop    esi
    edeb:	5a                   	pop    edx
    edec:	59                   	pop    ecx
    eded:	5b                   	pop    ebx
    edee:	c3                   	ret    
;-------------------------------------------------
;  Bad code 11 (zero after ret):                 -
;-------------------------------------------------
;   eded:	5b                   	pop    ebx
;   edee:	c3                   	ret    
;   edef:	00               	add    BYTE PTR [ecx+0x56],dl
;-------------------------------------------------
;  Padding data (1 bytes):                       -
;-------------------------------------------------
    edef:	00                   	db     0x00
;-------------------------------------------------
;  End of bad code 11                            -
;-------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 10 (D:\SOURCE\xfile.cpp)                                      -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 10: D:\SOURCE\xfile.cpp                                              -
;                                                                              -
;-------------------------------------------------------------------------------
xfile_cpp_variable_1:
     fc4:	44 52 49 56 45 5f 25 69 00 	db     "DRIVE_%i",0x00
xfile_cpp_variable_2:
     fcd:	69 6e 64 65 78 2e 25 30 33 69 00 	db     "index.%03i",0x00
xfile_cpp_variable_3:
     fd8:	43 44 5f 52 4f 4d 00 	db     "CD_ROM",0x00
xfile_cpp_variable_4:                                                                               ; access size: BYTE
     fdf:	58                   	db     0x58                                                         ; dec:  88, chr: 'X'
     fe0:	46                   	db     0x46                                                         ; dec:  70, chr: 'F'
     fe1:	4c                   	db     0x4c                                                         ; dec:  76, chr: 'L'
     fe2:	45                   	db     0x45                                                         ; dec:  69, chr: 'E'
     fe3:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
     fe4:	58                   	db     0x58                                                         ; dec:  88, chr: 'X'
xfile_cpp_variable_5:                                                                               ; access size: BYTE
     fe5:	46                   	db     0x46                                                         ; dec:  70, chr: 'F'
     fe6:	4c                   	db     0x4c                                                         ; dec:  76, chr: 'L'
     fe7:	45                   	db     0x45                                                         ; dec:  69, chr: 'E'
     fe8:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
     fe9:	58                   	db     0x58                                                         ; dec:  88, chr: 'X'
     fea:	46                   	db     0x46                                                         ; dec:  70, chr: 'F'
xfile_cpp_variable_6:                                                                               ; access size: BYTE
     feb:	4c                   	db     0x4c                                                         ; dec:  76, chr: 'L'
     fec:	45                   	db     0x45                                                         ; dec:  69, chr: 'E'
     fed:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
     fee:	58                   	db     0x58                                                         ; dec:  88, chr: 'X'
     fef:	46                   	db     0x46                                                         ; dec:  70, chr: 'F'
     ff0:	4c                   	db     0x4c                                                         ; dec:  76, chr: 'L'
xfile_cpp_variable_7:                                                                               ; access size: BYTE
     ff1:	45                   	db     0x45                                                         ; dec:  69, chr: 'E'
     ff2:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
xfile_cpp_variable_8:
     ff3:	63 6f 6e 73 6f 6c 69 64 61 74 65 64 20 66 69 6c 65 73 79 73 74 65 6d 20 63 6f 72 72 75 70 74 65 64 2e 00 	db     "consolidated filesystem corrupted.",0x00
xfile_cpp_variable_9:                                                                               ; access size: BYTE
    1016:	58                   	db     0x58                                                         ; dec:  88, chr: 'X'
    1017:	46                   	db     0x46                                                         ; dec:  70, chr: 'F'
    1018:	4c                   	db     0x4c                                                         ; dec:  76, chr: 'L'
    1019:	45                   	db     0x45                                                         ; dec:  69, chr: 'E'
    101a:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
    101b:	58                   	db     0x58                                                         ; dec:  88, chr: 'X'
xfile_cpp_variable_10:                                                                              ; access size: BYTE
    101c:	46                   	db     0x46                                                         ; dec:  70, chr: 'F'
    101d:	4c                   	db     0x4c                                                         ; dec:  76, chr: 'L'
    101e:	45                   	db     0x45                                                         ; dec:  69, chr: 'E'
    101f:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
    1020:	58                   	db     0x58                                                         ; dec:  88, chr: 'X'
    1021:	46                   	db     0x46                                                         ; dec:  70, chr: 'F'
xfile_cpp_variable_11:                                                                              ; access size: BYTE
    1022:	4c                   	db     0x4c                                                         ; dec:  76, chr: 'L'
    1023:	45                   	db     0x45                                                         ; dec:  69, chr: 'E'
    1024:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
    1025:	58                   	db     0x58                                                         ; dec:  88, chr: 'X'
    1026:	46                   	db     0x46                                                         ; dec:  70, chr: 'F'
    1027:	4c                   	db     0x4c                                                         ; dec:  76, chr: 'L'
xfile_cpp_variable_12:                                                                              ; access size: BYTE
    1028:	45                   	db     0x45                                                         ; dec:  69, chr: 'E'
    1029:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
xfile_cpp_variable_13:
    102a:	63 6f 6e 73 6f 6c 69 64 61 74 65 64 20 66 69 6c 65 73 79 73 74 65 6d 20 63 6f 72 72 75 70 74 65 64 2e 00 	db     "consolidated filesystem corrupted.",0x00
xfile_cpp_variable_14:
    104d:	4e 4f 20 53 55 43 48 20 44 52 49 56 45 21 00 	db     "NO SUCH DRIVE!",0x00
xfile_cpp_variable_15:
    105c:	53 65 61 6c 69 6e 67 20 64 72 69 76 65 3a 20 25 69 0a 00 	db     "Sealing drive: %i",0x0a,0x00
xfile_cpp_variable_16:
    106f:	69 6e 64 65 78 2e 25 30 33 69 00 	db     "index.%03i",0x00
xfile_cpp_variable_17:
    107a:	55 6e 61 62 6c 65 20 74 6f 20 6f 70 65 6e 20 69 6e 64 65 78 20 66 69 6c 65 2e 00 	db     "Unable to open index file.",0x00
xfile_cpp_variable_18:
    1095:	4e 4f 20 53 55 43 48 20 44 52 49 56 45 21 00 	db     "NO SUCH DRIVE!",0x00
xfile_cpp_variable_19:
    10a4:	44 69 72 65 63 74 6f 72 79 20 6f 66 20 64 72 69 76 65 3a 20 25 69 0a 00 	db     "Directory of drive: %i",0x0a,0x00
xfile_cpp_variable_20:
    10bc:	25 6c 69 5b 25 6c 69 5d 20 2d 20 25 73 0a 00 	db     "%li[%li] - %s",0x0a,0x00
xfile_cpp_variable_21:
    10cb:	45 72 72 6f 72 20 63 6f 64 65 20 25 69 20 6f 70 65 6e 69 6e 67 20 25 73 20 66 6f 72 20 46 49 4c 45 5f 73 69 7a 65 00 	db     "Error code %i opening %s for FILE_size",0x00
xfile_cpp_variable_22:
    10f2:	2d 4e 55 4c 4c 20 66 69 6c 65 6e 61 6d 65 20 70 61 73 73 65 64 20 74 6f 20 58 46 49 4c 45 5f 72 65 61 64 28 29 2c 20 25 73 3a 25 69 00 	db     "-NULL filename passed to XFILE_read(), %s:%i",0x00
xfile_cpp_variable_23:
    111f:	75 6e 61 62 6c 65 20 74 6f 20 6d 61 6c 6c 6f 63 20 72 65 74 75 72 6e 20 62 75 66 66 65 72 20 66 6f 72 20 66 69 6c 65 3a 20 25 73 00 	db     "unable to malloc return buffer for file: %s",0x00
xfile_cpp_variable_24:
    114b:	58 46 49 4c 45 5f 72 65 61 64 28 29 20 63 61 6e 27 74 20 61 6c 6c 6f 63 61 74 65 20 6d 65 6d 6f 72 79 00 	db     "XFILE_read() can't allocate memory",0x00
xfile_cpp_variable_25:
    116e:	66 69 6c 65 20 6c 65 6e 67 74 68 3d 25 69 20 20 72 65 61 64 20 6c 65 6e 67 74 68 3d 25 69 00 	db     "file length=%i  read length=%i",0x00
xfile_cpp_variable_26:
    118d:	58 46 49 4c 45 5f 72 65 61 64 28 29 20 63 61 6e 74 20 61 6c 6c 6f 63 61 74 65 20 6d 65 6d 6f 72 79 00 	db     "XFILE_read() cant allocate memory",0x00
xfile_cpp_variable_27:
    11af:	55 6e 2d 69 6d 70 6c 65 6d 65 6e 74 65 64 20 63 6f 6d 70 72 65 73 73 69 6f 6e 20 6d 65 74 68 6f 64 3a 20 4c 5a 57 00 	db     "Un-implemented compression method: LZW",0x00
xfile_cpp_variable_28:                                                                              ; access size: BYTE
    11d6:	58                   	db     0x58                                                         ; dec:  88, chr: 'X'
    11d7:	46                   	db     0x46                                                         ; dec:  70, chr: 'F'
    11d8:	4c                   	db     0x4c                                                         ; dec:  76, chr: 'L'
    11d9:	45                   	db     0x45                                                         ; dec:  69, chr: 'E'
    11da:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
    11db:	58                   	db     0x58                                                         ; dec:  88, chr: 'X'
xfile_cpp_variable_29:                                                                              ; access size: BYTE
    11dc:	46                   	db     0x46                                                         ; dec:  70, chr: 'F'
    11dd:	4c                   	db     0x4c                                                         ; dec:  76, chr: 'L'
    11de:	45                   	db     0x45                                                         ; dec:  69, chr: 'E'
    11df:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
    11e0:	58                   	db     0x58                                                         ; dec:  88, chr: 'X'
    11e1:	46                   	db     0x46                                                         ; dec:  70, chr: 'F'
xfile_cpp_variable_30:                                                                              ; access size: BYTE
    11e2:	4c                   	db     0x4c                                                         ; dec:  76, chr: 'L'
    11e3:	45                   	db     0x45                                                         ; dec:  69, chr: 'E'
    11e4:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
    11e5:	58                   	db     0x58                                                         ; dec:  88, chr: 'X'
    11e6:	46                   	db     0x46                                                         ; dec:  70, chr: 'F'
    11e7:	4c                   	db     0x4c                                                         ; dec:  76, chr: 'L'
xfile_cpp_variable_31:                                                                              ; access size: BYTE
    11e8:	45                   	db     0x45                                                         ; dec:  69, chr: 'E'
    11e9:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
xfile_cpp_variable_32:
    11ea:	78 66 69 6c 65 2e 63 70 70 00 	db     "xfile.cpp",0x00
xfile_cpp_variable_33:
    11f4:	72 65 61 64 20 72 65 74 75 72 6e 65 64 20 2d 31 00 	db     "read returned -1",0x00
xfile_cpp_variable_34:
    1205:	49 6e 76 61 6c 69 64 20 73 65 65 6b 20 72 65 71 75 65 73 74 2e 00 	db     "Invalid seek request.",0x00
    121b:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 10 (D:\SOURCE\xfile.cpp)                                      -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 10: D:\SOURCE\xfile.cpp                                              -
;                                                                              -
;-------------------------------------------------------------------------------
XFILE_EXE_MARKER:
   12e64:	58 46 49 4c 45 5f 53 54 41 52 54 00 	db     "XFILE_START",0x00
   12e70:	00 00 00 00          	db     4 dup(0x00)                                                  ; dec:   0, chr: '\0'

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 10 (D:\SOURCE\xfile.cpp)                                      -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 10: D:\SOURCE\xfile.cpp                                              -
;                                                                              -
;-------------------------------------------------------------------------------
path:
   1a3cc:	00 00 00 00 00 00 .. 	db     252 dup(0x00)                                                ; dec:   0, chr: '\0'
path_variable_1:                                                                                    ; access size: DWORDS
   1a4c8:	00 00 00             	db     3 dup(0x00)                                                  ; dec:   0, chr: '\0'
XFILE_initialized:                                                                                  ; access size: BYTE
   1a4cb:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
consolidated_filenames:                                                                             ; access sizes: DWORD, DWORDS
   1a4cc:	00 00 00 00 00 00 .. 	dd     10 dup(0x00000000)
consolidated_file_handles:                                                                          ; access size: DWORDS
   1a4f4:	00 00 00 00 00 00 .. 	dd     10 dup(0x00000000)
directory_caches:                                                                                   ; access size: DWORDS
   1a51c:	00 00 00 00 00 00 .. 	dd     10 dup(0x00000000)
handles:                                                                                            ; access size: BYTES
   1a544:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
handles_variable_1:                                                                                 ; access size: BYTES
   1a545:	00 00 00             	db     3 dup(0x00)                                                  ; dec:   0, chr: '\0'
handles_variable_2:                                                                                 ; access size: DWORDS
   1a548:	00 00 00 00          	dd     0x00000000
handles_variable_3:                                                                                 ; access size: BYTES
   1a54c:	00 00 00 00          	db     4 dup(0x00)                                                  ; dec:   0, chr: '\0'
handles_variable_4:                                                                                 ; access size: DWORDS
   1a550:	00 00 00 00          	dd     0x00000000
handles_variable_5:                                                                                 ; access size: DWORDS
   1a554:	00 00 00 00          	dd     0x00000000
handles_variable_6:                                                                                 ; access size: DWORDS
   1a558:	00 00 00 00          	dd     0x00000000
handles_variable_7:                                                                                 ; access size: DWORDS
   1a55c:	00 00 00 00 00 00 .. 	dd     8314 dup(0x00000000)
current_head_offset:                                                                                ; access size: DWORDS
   22744:	00 00 00 00 00 00 .. 	dd     10 dup(0x00000000)

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 10 (D:\SOURCE\xfile.cpp)                                      -
;                                                                              -
;-------------------------------------------------------------------------------