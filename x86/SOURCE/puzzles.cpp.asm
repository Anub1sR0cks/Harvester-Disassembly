;-------------------------------------------------------------------------------
;                                                                              -
;  Module 83: D:\SOURCE\puzzles.cpp                                            -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function 'chessgame'                          -
;-------------------------------------------------
chessgame:
   4a550:	53                   	push   ebx
   4a551:	51                   	push   ecx
   4a552:	52                   	push   edx
   4a553:	56                   	push   esi
   4a554:	57                   	push   edi
   4a555:	55                   	push   ebp
   4a556:	83 ec 6c             	sub    esp,0x6c
   4a559:	b8 00 b0 04 00       	mov    eax,0x4b000
   4a55e:	31 d2                	xor    edx,edx
   4a560:	e8 2e 6f 02 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   4a565:	89 54 24 34          	mov    DWORD PTR [esp+0x34],edx
   4a569:	89 44 24 30          	mov    DWORD PTR [esp+0x30],eax
   4a56d:	85 c0                	test   eax,eax
   4a56f:	75 0f                	jne    chessgame_branch_1
   4a571:	bb d4 ba 00 00       	mov    ebx,@obj3:puzzles_cpp_variable_1                             ; fixup: num: 11703, src obj: 1, src ofs: 0x4a572, dst obj: 3, dst ofs: 0xbad4
   4a576:	ba 56 00 00 00       	mov    edx,0x56
   4a57b:	e8 b0 da fe ff       	call   _error_report
chessgame_branch_1:
   4a580:	6a 00                	push   0x0
   4a582:	6a 00                	push   0x0
   4a584:	8b 1d b8 0f 01 00    	mov    ebx,DWORD PTR ds:@obj3:pal_gamma_variable_1                  ; fixup: num: 11702, src obj: 1, src ofs: 0x4a586, dst obj: 3, dst ofs: 0x10fb8
   4a58a:	53                   	push   ebx
   4a58b:	8b 0d b4 0f 01 00    	mov    ecx,DWORD PTR ds:@obj3:pal_gamma                             ; fixup: num: 11701, src obj: 1, src ofs: 0x4a58d, dst obj: 3, dst ofs: 0x10fb4
   4a591:	a1 84 60 02 00       	mov    eax,ds:@obj3:palette                                         ; fixup: num: 11700, src obj: 1, src ofs: 0x4a592, dst obj: 3, dst ofs: 0x26084
   4a596:	51                   	push   ecx
   4a597:	31 d2                	xor    edx,edx
   4a599:	bb 80 02 00 00       	mov    ebx,0x280
   4a59e:	e8 8d 94 fc ff       	call   fade
   4a5a3:	6a 01                	push   0x1
   4a5a5:	b9 e0 01 00 00       	mov    ecx,0x1e0
   4a5aa:	30 e4                	xor    ah,ah
   4a5ac:	6a 00                	push   0x0
   4a5ae:	88 25 7e 60 02 00    	mov    BYTE PTR ds:@obj3:faded_in,ah                                ; fixup: num: 11699, src obj: 1, src ofs: 0x4a5b0, dst obj: 3, dst ofs: 0x2607e
   4a5b4:	31 c0                	xor    eax,eax
   4a5b6:	e8 95 b1 fb ff       	call   VESA_rectangle
   4a5bb:	b8 0c 00 00 00       	mov    eax,0xc
   4a5c0:	e8 ce 6e 02 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   4a5c5:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
   4a5c9:	85 c0                	test   eax,eax
   4a5cb:	75 0f                	jne    chessgame_branch_2
   4a5cd:	bb ec ba 00 00       	mov    ebx,@obj3:puzzles_cpp_variable_2                             ; fixup: num: 11698, src obj: 1, src ofs: 0x4a5ce, dst obj: 3, dst ofs: 0xbaec
   4a5d2:	ba 5e 00 00 00       	mov    edx,0x5e
   4a5d7:	e8 54 da fe ff       	call   _error_report
chessgame_branch_2:
   4a5dc:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
   4a5e0:	c7 40 04 e0 01 00 00 	mov    DWORD PTR [eax+0x4],0x1e0
   4a5e7:	c7 00 80 02 00 00    	mov    DWORD PTR [eax],0x280
   4a5ed:	b8 b4 00 00 00       	mov    eax,0xb4
   4a5f2:	e8 21 79 02 00       	call   W?$nwn(ui)pnv
   4a5f7:	85 c0                	test   eax,eax
   4a5f9:	74 40                	je     chessgame_branch_3
   4a5fb:	05 a8 00 00 00       	add    eax,0xa8
   4a600:	2d a8 00 00 00       	sub    eax,0xa8
   4a605:	c7 80 ac 00 00 00 00 00 00 00 	mov    DWORD PTR [eax+0xac],0x0
   4a60f:	c7 80 b0 00 00 00 00 00 00 00 	mov    DWORD PTR [eax+0xb0],0x0
   4a619:	8b 90 ac 00 00 00    	mov    edx,DWORD PTR [eax+0xac]
   4a61f:	89 90 a8 00 00 00    	mov    DWORD PTR [eax+0xa8],edx
   4a625:	c7 80 84 00 00 00 00 00 00 00 	mov    DWORD PTR [eax+0x84],0x0
   4a62f:	8b 90 84 00 00 00    	mov    edx,DWORD PTR [eax+0x84]
   4a635:	89 90 80 00 00 00    	mov    DWORD PTR [eax+0x80],edx
chessgame_branch_3:
   4a63b:	89 04 24             	mov    DWORD PTR [esp],eax
   4a63e:	85 c0                	test   eax,eax
   4a640:	75 0f                	jne    chessgame_branch_4
   4a642:	bb 04 bb 00 00       	mov    ebx,@obj3:puzzles_cpp_variable_3                             ; fixup: num: 11705, src obj: 1, src ofs: 0x4a643, dst obj: 3, dst ofs: 0xbb04
   4a647:	ba 64 00 00 00       	mov    edx,0x64
   4a64c:	e8 df d9 fe ff       	call   _error_report
chessgame_branch_4:
   4a651:	bb 01 00 00 00       	mov    ebx,0x1
   4a656:	ba 1c bb 00 00       	mov    edx,@obj3:puzzles_cpp_variable_4                             ; fixup: num: 11704, src obj: 1, src ofs: 0x4a657, dst obj: 3, dst ofs: 0xbb1c
   4a65b:	8b 04 24             	mov    eax,DWORD PTR [esp]
   4a65e:	e8 9d 5b fc ff       	call   load_from_file_mod_11
   4a663:	b8 b4 00 00 00       	mov    eax,0xb4
   4a668:	e8 ab 78 02 00       	call   W?$nwn(ui)pnv
   4a66d:	85 c0                	test   eax,eax
   4a66f:	74 40                	je     chessgame_branch_5
   4a671:	05 a8 00 00 00       	add    eax,0xa8
   4a676:	2d a8 00 00 00       	sub    eax,0xa8
   4a67b:	c7 80 ac 00 00 00 00 00 00 00 	mov    DWORD PTR [eax+0xac],0x0
   4a685:	c7 80 b0 00 00 00 00 00 00 00 	mov    DWORD PTR [eax+0xb0],0x0
   4a68f:	8b 90 ac 00 00 00    	mov    edx,DWORD PTR [eax+0xac]
   4a695:	89 90 a8 00 00 00    	mov    DWORD PTR [eax+0xa8],edx
   4a69b:	c7 80 84 00 00 00 00 00 00 00 	mov    DWORD PTR [eax+0x84],0x0
   4a6a5:	8b 90 84 00 00 00    	mov    edx,DWORD PTR [eax+0x84]
   4a6ab:	89 90 80 00 00 00    	mov    DWORD PTR [eax+0x80],edx
chessgame_branch_5:
   4a6b1:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
   4a6b5:	85 c0                	test   eax,eax
   4a6b7:	75 0f                	jne    chessgame_branch_6
   4a6b9:	bb 3a bb 00 00       	mov    ebx,@obj3:puzzles_cpp_variable_5                             ; fixup: num: 11709, src obj: 1, src ofs: 0x4a6ba, dst obj: 3, dst ofs: 0xbb3a
   4a6be:	ba 69 00 00 00       	mov    edx,0x69
   4a6c3:	e8 68 d9 fe ff       	call   _error_report
chessgame_branch_6:
   4a6c8:	bb 01 00 00 00       	mov    ebx,0x1
   4a6cd:	ba 52 bb 00 00       	mov    edx,@obj3:puzzles_cpp_variable_6                             ; fixup: num: 11708, src obj: 1, src ofs: 0x4a6ce, dst obj: 3, dst ofs: 0xbb52
   4a6d2:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
   4a6d6:	e8 25 5b fc ff       	call   load_from_file_mod_11
   4a6db:	b8 b4 00 00 00       	mov    eax,0xb4
   4a6e0:	e8 33 78 02 00       	call   W?$nwn(ui)pnv
   4a6e5:	85 c0                	test   eax,eax
   4a6e7:	74 40                	je     chessgame_branch_7
   4a6e9:	05 a8 00 00 00       	add    eax,0xa8
   4a6ee:	2d a8 00 00 00       	sub    eax,0xa8
   4a6f3:	c7 80 ac 00 00 00 00 00 00 00 	mov    DWORD PTR [eax+0xac],0x0
   4a6fd:	c7 80 b0 00 00 00 00 00 00 00 	mov    DWORD PTR [eax+0xb0],0x0
   4a707:	8b 90 ac 00 00 00    	mov    edx,DWORD PTR [eax+0xac]
   4a70d:	89 90 a8 00 00 00    	mov    DWORD PTR [eax+0xa8],edx
   4a713:	c7 80 84 00 00 00 00 00 00 00 	mov    DWORD PTR [eax+0x84],0x0
   4a71d:	8b 90 84 00 00 00    	mov    edx,DWORD PTR [eax+0x84]
   4a723:	89 90 80 00 00 00    	mov    DWORD PTR [eax+0x80],edx
chessgame_branch_7:
   4a729:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
   4a72d:	85 c0                	test   eax,eax
   4a72f:	75 0f                	jne    chessgame_branch_8
   4a731:	bb 6f bb 00 00       	mov    ebx,@obj3:puzzles_cpp_variable_7                             ; fixup: num: 11707, src obj: 1, src ofs: 0x4a732, dst obj: 3, dst ofs: 0xbb6f
   4a736:	ba 6d 00 00 00       	mov    edx,0x6d
   4a73b:	e8 f0 d8 fe ff       	call   _error_report
chessgame_branch_8:
   4a740:	bb 01 00 00 00       	mov    ebx,0x1
   4a745:	ba 87 bb 00 00       	mov    edx,@obj3:puzzles_cpp_variable_8                             ; fixup: num: 11706, src obj: 1, src ofs: 0x4a746, dst obj: 3, dst ofs: 0xbb87
   4a74a:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
   4a74e:	e8 ad 5a fc ff       	call   load_from_file_mod_11
   4a753:	b8 b4 00 00 00       	mov    eax,0xb4
   4a758:	e8 bb 77 02 00       	call   W?$nwn(ui)pnv
   4a75d:	85 c0                	test   eax,eax
   4a75f:	74 40                	je     chessgame_branch_9
   4a761:	05 a8 00 00 00       	add    eax,0xa8
   4a766:	2d a8 00 00 00       	sub    eax,0xa8
   4a76b:	c7 80 ac 00 00 00 00 00 00 00 	mov    DWORD PTR [eax+0xac],0x0
   4a775:	c7 80 b0 00 00 00 00 00 00 00 	mov    DWORD PTR [eax+0xb0],0x0
   4a77f:	8b 90 ac 00 00 00    	mov    edx,DWORD PTR [eax+0xac]
   4a785:	89 90 a8 00 00 00    	mov    DWORD PTR [eax+0xa8],edx
   4a78b:	c7 80 84 00 00 00 00 00 00 00 	mov    DWORD PTR [eax+0x84],0x0
   4a795:	8b 90 84 00 00 00    	mov    edx,DWORD PTR [eax+0x84]
   4a79b:	89 90 80 00 00 00    	mov    DWORD PTR [eax+0x80],edx
chessgame_branch_9:
   4a7a1:	89 c5                	mov    ebp,eax
   4a7a3:	85 c0                	test   eax,eax
   4a7a5:	75 0f                	jne    chessgame_branch_10
   4a7a7:	bb a0 bb 00 00       	mov    ebx,@obj3:puzzles_cpp_variable_9                             ; fixup: num: 11712, src obj: 1, src ofs: 0x4a7a8, dst obj: 3, dst ofs: 0xbba0
   4a7ac:	ba 71 00 00 00       	mov    edx,0x71
   4a7b1:	e8 7a d8 fe ff       	call   _error_report
chessgame_branch_10:
   4a7b6:	ba b8 bb 00 00       	mov    edx,@obj3:puzzles_cpp_variable_10                            ; fixup: num: 11711, src obj: 1, src ofs: 0x4a7b7, dst obj: 3, dst ofs: 0xbbb8
   4a7bb:	89 e8                	mov    eax,ebp
   4a7bd:	31 db                	xor    ebx,ebx
   4a7bf:	e8 3c 5a fc ff       	call   load_from_file_mod_11
   4a7c4:	8b 8d ac 00 00 00    	mov    ecx,DWORD PTR [ebp+0xac]
   4a7ca:	0f af 8d a8 00 00 00 	imul   ecx,DWORD PTR [ebp+0xa8]
   4a7d1:	8b 7c 24 30          	mov    edi,DWORD PTR [esp+0x30]
   4a7d5:	8b b5 b0 00 00 00    	mov    esi,DWORD PTR [ebp+0xb0]
   4a7db:	57                   	push   edi
   4a7dc:	89 c8                	mov    eax,ecx
   4a7de:	c1 e9 02             	shr    ecx,0x2
   4a7e1:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
   4a7e3:	8a c8                	mov    cl,al
   4a7e5:	80 e1 03             	and    cl,0x3
   4a7e8:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
   4a7ea:	5f                   	pop    edi
   4a7eb:	8d 85 a8 00 00 00    	lea    eax,[ebp+0xa8]
   4a7f1:	8b 3d 34 30 02 00    	mov    edi,DWORD PTR ds:@obj3:the_viewport                          ; fixup: num: 11710, src obj: 1, src ofs: 0x4a7f3, dst obj: 3, dst ofs: 0x23034
   4a7f7:	8b 58 08             	mov    ebx,DWORD PTR [eax+0x8]
   4a7fa:	8b b5 98 00 00 00    	mov    esi,DWORD PTR [ebp+0x98]
   4a800:	53                   	push   ebx
   4a801:	8b 95 9c 00 00 00    	mov    edx,DWORD PTR [ebp+0x9c]
   4a807:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
   4a80a:	6a 00                	push   0x0
   4a80c:	8b 18                	mov    ebx,DWORD PTR [eax]
   4a80e:	89 f0                	mov    eax,esi
   4a810:	ff 57 30             	call   DWORD PTR [edi+0x30]
   4a813:	ba 01 00 00 00       	mov    edx,0x1
   4a818:	89 e8                	mov    eax,ebp
   4a81a:	e8 11 5d fc ff       	call   go_to_frame
   4a81f:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
   4a823:	8b 04 84             	mov    eax,DWORD PTR [esp+eax*4]
   4a826:	8b 90 a0 00 00 00    	mov    edx,DWORD PTR [eax+0xa0]
   4a82c:	2b 90 98 00 00 00    	sub    edx,DWORD PTR [eax+0x98]
   4a832:	42                   	inc    edx
   4a833:	8b b0 9c 00 00 00    	mov    esi,DWORD PTR [eax+0x9c]
   4a839:	89 54 24 24          	mov    DWORD PTR [esp+0x24],edx
   4a83d:	8b 90 a4 00 00 00    	mov    edx,DWORD PTR [eax+0xa4]
   4a843:	29 f2                	sub    edx,esi
   4a845:	b8 0c 00 00 00       	mov    eax,0xc
   4a84a:	42                   	inc    edx
   4a84b:	e8 c8 76 02 00       	call   W?$nwn(ui)pnv
   4a850:	89 54 24 20          	mov    DWORD PTR [esp+0x20],edx
   4a854:	85 c0                	test   eax,eax
   4a856:	0f 84 9a 00 00 00    	je     chessgame_branch_15
   4a85c:	8b 5c 24 20          	mov    ebx,DWORD PTR [esp+0x20]
   4a860:	bf 50 00 00 00       	mov    edi,0x50
   4a865:	89 c6                	mov    esi,eax
   4a867:	89 c2                	mov    edx,eax
   4a869:	8b 08                	mov    ecx,DWORD PTR [eax]
   4a86b:	c7 40 08 00 00 00 00 	mov    DWORD PTR [eax+0x8],0x0
   4a872:	39 d9                	cmp    ecx,ebx
   4a874:	75 09                	jne    chessgame_branch_11
   4a876:	3b 78 04             	cmp    edi,DWORD PTR [eax+0x4]
   4a879:	0f 84 75 00 00 00    	je     chessgame_branch_14
chessgame_branch_11:
   4a87f:	89 1a                	mov    DWORD PTR [edx],ebx
   4a881:	89 7a 04             	mov    DWORD PTR [edx+0x4],edi
   4a884:	8b 3a                	mov    edi,DWORD PTR [edx]
   4a886:	85 ff                	test   edi,edi
   4a888:	75 19                	jne    chessgame_branch_12
   4a88a:	83 7a 04 00          	cmp    DWORD PTR [edx+0x4],0x0
   4a88e:	75 13                	jne    chessgame_branch_12
   4a890:	8b 4a 08             	mov    ecx,DWORD PTR [edx+0x8]
   4a893:	85 c9                	test   ecx,ecx
   4a895:	74 5d                	je     chessgame_branch_14
   4a897:	89 c8                	mov    eax,ecx
   4a899:	e8 4a 6b 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   4a89e:	89 7a 08             	mov    DWORD PTR [edx+0x8],edi
   4a8a1:	eb 51                	jmp    chessgame_branch_14
chessgame_branch_12:
   4a8a3:	8b 5a 08             	mov    ebx,DWORD PTR [edx+0x8]
   4a8a6:	85 db                	test   ebx,ebx
   4a8a8:	74 07                	je     chessgame_branch_13
   4a8aa:	89 d8                	mov    eax,ebx
   4a8ac:	e8 37 6b 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
chessgame_branch_13:
   4a8b1:	8b 02                	mov    eax,DWORD PTR [edx]
   4a8b3:	0f af 42 04          	imul   eax,DWORD PTR [edx+0x4]
   4a8b7:	c7 42 08 00 00 00 00 	mov    DWORD PTR [edx+0x8],0x0
   4a8be:	e8 d0 6b 02 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   4a8c3:	89 42 08             	mov    DWORD PTR [edx+0x8],eax
   4a8c6:	85 c0                	test   eax,eax
   4a8c8:	75 2a                	jne    chessgame_branch_14
   4a8ca:	8b 02                	mov    eax,DWORD PTR [edx]
   4a8cc:	50                   	push   eax
   4a8cd:	8b 5a 04             	mov    ebx,DWORD PTR [edx+0x4]
   4a8d0:	53                   	push   ebx
   4a8d1:	68 d0 bb 00 00       	push   @obj3:puzzles_cpp_variable_11                                ; fixup: num: 11717, src obj: 1, src ofs: 0x4a8d2, dst obj: 3, dst ofs: 0xbbd0
   4a8d6:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 11716, src obj: 1, src ofs: 0x4a8d7, dst obj: 3, dst ofs: 0x237fc
   4a8db:	ba 96 00 00 00       	mov    edx,0x96
   4a8e0:	e8 fc 62 02 00       	call   sprintf_
   4a8e5:	83 c4 10             	add    esp,0x10
   4a8e8:	bb fc 37 02 00       	mov    ebx,@obj3:log_buffer                                         ; fixup: num: 11715, src obj: 1, src ofs: 0x4a8e9, dst obj: 3, dst ofs: 0x237fc
   4a8ed:	31 c0                	xor    eax,eax
   4a8ef:	e8 3c d7 fe ff       	call   _error_report
chessgame_branch_14:
   4a8f4:	89 f0                	mov    eax,esi
chessgame_branch_15:
   4a8f6:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
   4a8fa:	85 c0                	test   eax,eax
   4a8fc:	75 0f                	jne    chessgame_branch_16
   4a8fe:	bb f6 bb 00 00       	mov    ebx,@obj3:puzzles_cpp_variable_12                            ; fixup: num: 11714, src obj: 1, src ofs: 0x4a8ff, dst obj: 3, dst ofs: 0xbbf6
   4a903:	ba 83 00 00 00       	mov    edx,0x83
   4a908:	e8 23 d7 fe ff       	call   _error_report
chessgame_branch_16:
   4a90d:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
   4a911:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
   4a915:	89 02                	mov    DWORD PTR [edx],eax
   4a917:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
   4a91b:	89 42 04             	mov    DWORD PTR [edx+0x4],eax
   4a91e:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
   4a922:	8d 04 85 00 00 00 00 	lea    eax,[eax*4+0x0]
   4a929:	89 44 24 3c          	mov    DWORD PTR [esp+0x3c],eax
   4a92d:	8b 04 04             	mov    eax,DWORD PTR [esp+eax*1]
   4a930:	8b 90 a0 00 00 00    	mov    edx,DWORD PTR [eax+0xa0]
   4a936:	2b 90 98 00 00 00    	sub    edx,DWORD PTR [eax+0x98]
   4a93c:	42                   	inc    edx
   4a93d:	8b b8 9c 00 00 00    	mov    edi,DWORD PTR [eax+0x9c]
   4a943:	89 54 24 24          	mov    DWORD PTR [esp+0x24],edx
   4a947:	8b 90 a4 00 00 00    	mov    edx,DWORD PTR [eax+0xa4]
   4a94d:	29 fa                	sub    edx,edi
   4a94f:	42                   	inc    edx
   4a950:	89 54 24 20          	mov    DWORD PTR [esp+0x20],edx
   4a954:	8b 3d 78 59 02 00    	mov    edi,DWORD PTR ds:@obj3:mouse_x                               ; fixup: num: 11713, src obj: 1, src ofs: 0x4a956, dst obj: 3, dst ofs: 0x25978
   4a95a:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
   4a95e:	01 f8                	add    eax,edi
   4a960:	48                   	dec    eax
   4a961:	89 44 24 28          	mov    DWORD PTR [esp+0x28],eax
   4a965:	8b 35 7c 59 02 00    	mov    esi,DWORD PTR ds:@obj3:mouse_y                               ; fixup: num: 11721, src obj: 1, src ofs: 0x4a967, dst obj: 3, dst ofs: 0x2597c
   4a96b:	8d 44 32 ff          	lea    eax,[edx+esi*1-0x1]
   4a96f:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
   4a973:	89 44 24 2c          	mov    DWORD PTR [esp+0x2c],eax
   4a977:	8b 85 b0 00 00 00    	mov    eax,DWORD PTR [ebp+0xb0]
   4a97d:	89 42 08             	mov    DWORD PTR [edx+0x8],eax
   4a980:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
   4a984:	50                   	push   eax
   4a985:	8b 5c 24 2c          	mov    ebx,DWORD PTR [esp+0x2c]
   4a989:	8b 4c 24 30          	mov    ecx,DWORD PTR [esp+0x30]
   4a98d:	52                   	push   edx
   4a98e:	89 f8                	mov    eax,edi
   4a990:	89 f2                	mov    edx,esi
   4a992:	e8 e9 89 fc ff       	call   get_transparent_bm_window
   4a997:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
   4a99b:	8b 44 24 3c          	mov    eax,DWORD PTR [esp+0x3c]
   4a99f:	8b 04 04             	mov    eax,DWORD PTR [esp+eax*1]
   4a9a2:	8b 90 a0 00 00 00    	mov    edx,DWORD PTR [eax+0xa0]
   4a9a8:	2b 90 98 00 00 00    	sub    edx,DWORD PTR [eax+0x98]
   4a9ae:	42                   	inc    edx
   4a9af:	8b 88 9c 00 00 00    	mov    ecx,DWORD PTR [eax+0x9c]
   4a9b5:	89 54 24 24          	mov    DWORD PTR [esp+0x24],edx
   4a9b9:	8b 90 a4 00 00 00    	mov    edx,DWORD PTR [eax+0xa4]
   4a9bf:	29 ca                	sub    edx,ecx
   4a9c1:	b8 df 01 00 00       	mov    eax,0x1df
   4a9c6:	42                   	inc    edx
   4a9c7:	29 d0                	sub    eax,edx
   4a9c9:	8b 5c 24 24          	mov    ebx,DWORD PTR [esp+0x24]
   4a9cd:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
   4a9d1:	b8 7f 02 00 00       	mov    eax,0x27f
   4a9d6:	29 d8                	sub    eax,ebx
   4a9d8:	89 54 24 20          	mov    DWORD PTR [esp+0x20],edx
   4a9dc:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
chessgame_branch_17:
   4a9e0:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 11720, src obj: 1, src ofs: 0x4a9e2, dst obj: 3, dst ofs: 0x25974
   4a9e7:	0f 85 09 04 00 00    	jne    chessgame_branch_44
chessgame_branch_18:
   4a9ed:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 11719, src obj: 1, src ofs: 0x4a9ee, dst obj: 3, dst ofs: 0x1a1d4
   4a9f2:	e8 a9 0f fc ff       	call   update_mod_9
   4a9f7:	89 e8                	mov    eax,ebp
   4a9f9:	e8 c2 65 fc ff       	call   update_mod_11
   4a9fe:	84 c0                	test   al,al
   4aa00:	75 de                	jne    chessgame_branch_17
   4aa02:	8b 54 24 34          	mov    edx,DWORD PTR [esp+0x34]
   4aa06:	bb d4 a1 01 00       	mov    ebx,@obj3:music                                              ; fixup: num: 11718, src obj: 1, src ofs: 0x4aa07, dst obj: 3, dst ofs: 0x1a1d4
   4aa0b:	8d 14 95 00 00 00 00 	lea    edx,[edx*4+0x0]
chessgame_branch_19:
   4aa12:	8b 04 14             	mov    eax,DWORD PTR [esp+edx*1]
   4aa15:	e8 a6 65 fc ff       	call   update_mod_11
   4aa1a:	84 c0                	test   al,al
   4aa1c:	75 13                	jne    chessgame_branch_20
   4aa1e:	e8 df 76 02 00       	call   clock_
   4aa23:	a3 44 7e 01 00       	mov    ds:@obj3:current_time,eax                                    ; fixup: num: 11724, src obj: 1, src ofs: 0x4aa24, dst obj: 3, dst ofs: 0x17e44
   4aa28:	89 d8                	mov    eax,ebx
   4aa2a:	e8 71 0f fc ff       	call   update_mod_9
   4aa2f:	eb e1                	jmp    chessgame_branch_19
chessgame_branch_20:
   4aa31:	8b 4c 24 2c          	mov    ecx,DWORD PTR [esp+0x2c]
   4aa35:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
   4aa39:	8b 15 34 30 02 00    	mov    edx,DWORD PTR ds:@obj3:the_viewport                          ; fixup: num: 11723, src obj: 1, src ofs: 0x4aa3b, dst obj: 3, dst ofs: 0x23034
   4aa3f:	8b 5c 24 28          	mov    ebx,DWORD PTR [esp+0x28]
   4aa43:	89 54 24 3c          	mov    DWORD PTR [esp+0x3c],edx
   4aa47:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
   4aa4a:	29 f1                	sub    ecx,esi
   4aa4c:	29 fb                	sub    ebx,edi
   4aa4e:	50                   	push   eax
   4aa4f:	43                   	inc    ebx
   4aa50:	89 f2                	mov    edx,esi
   4aa52:	6a 00                	push   0x0
   4aa54:	8b 74 24 44          	mov    esi,DWORD PTR [esp+0x44]
   4aa58:	41                   	inc    ecx
   4aa59:	89 f8                	mov    eax,edi
   4aa5b:	ff 56 30             	call   DWORD PTR [esi+0x30]
   4aa5e:	8b 85 8c 00 00 00    	mov    eax,DWORD PTR [ebp+0x8c]
   4aa64:	8b 8d 88 00 00 00    	mov    ecx,DWORD PTR [ebp+0x88]
   4aa6a:	48                   	dec    eax
   4aa6b:	39 c8                	cmp    eax,ecx
   4aa6d:	75 2c                	jne    chessgame_branch_21
   4aa6f:	8b 5c 24 30          	mov    ebx,DWORD PTR [esp+0x30]
   4aa73:	b9 e0 01 00 00       	mov    ecx,0x1e0
   4aa78:	53                   	push   ebx
   4aa79:	8b 35 34 30 02 00    	mov    esi,DWORD PTR ds:@obj3:the_viewport                          ; fixup: num: 11722, src obj: 1, src ofs: 0x4aa7b, dst obj: 3, dst ofs: 0x23034
   4aa7f:	31 d2                	xor    edx,edx
   4aa81:	6a 00                	push   0x0
   4aa83:	31 c0                	xor    eax,eax
   4aa85:	bb 80 02 00 00       	mov    ebx,0x280
   4aa8a:	ff 56 30             	call   DWORD PTR [esi+0x30]
   4aa8d:	ba 01 00 00 00       	mov    edx,0x1
   4aa92:	89 e8                	mov    eax,ebp
   4aa94:	e8 97 5a fc ff       	call   go_to_frame
   4aa99:	eb 58                	jmp    chessgame_branch_22
chessgame_branch_21:
   4aa9b:	8b bd 9c 00 00 00    	mov    edi,DWORD PTR [ebp+0x9c]
   4aaa1:	8b 95 a8 00 00 00    	mov    edx,DWORD PTR [ebp+0xa8]
   4aaa7:	0f af d7             	imul   edx,edi
   4aaaa:	8b 85 a0 00 00 00    	mov    eax,DWORD PTR [ebp+0xa0]
   4aab0:	8b b5 98 00 00 00    	mov    esi,DWORD PTR [ebp+0x98]
   4aab6:	29 f0                	sub    eax,esi
   4aab8:	8d 58 01             	lea    ebx,[eax+0x1]
   4aabb:	8b 85 a4 00 00 00    	mov    eax,DWORD PTR [ebp+0xa4]
   4aac1:	29 f8                	sub    eax,edi
   4aac3:	8d 48 01             	lea    ecx,[eax+0x1]
   4aac6:	8b 85 b0 00 00 00    	mov    eax,DWORD PTR [ebp+0xb0]
   4aacc:	01 d0                	add    eax,edx
   4aace:	8d 14 06             	lea    edx,[esi+eax*1]
   4aad1:	89 54 24 3c          	mov    DWORD PTR [esp+0x3c],edx
   4aad5:	8b b5 a8 00 00 00    	mov    esi,DWORD PTR [ebp+0xa8]
   4aadb:	ff 74 24 3c          	push   DWORD PTR [esp+0x3c]
   4aadf:	89 fa                	mov    edx,edi
   4aae1:	29 de                	sub    esi,ebx
   4aae3:	8b 3d 34 30 02 00    	mov    edi,DWORD PTR ds:@obj3:the_viewport                          ; fixup: num: 11733, src obj: 1, src ofs: 0x4aae5, dst obj: 3, dst ofs: 0x23034
   4aae9:	56                   	push   esi
   4aaea:	8b 85 98 00 00 00    	mov    eax,DWORD PTR [ebp+0x98]
   4aaf0:	ff 57 30             	call   DWORD PTR [edi+0x30]
chessgame_branch_22:
   4aaf3:	81 3d 78 59 02 00 8b 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x8b                     ; fixup: num: 11732, src obj: 1, src ofs: 0x4aaf5, dst obj: 3, dst ofs: 0x25978
   4aafd:	7c 2b                	jl     chessgame_branch_23
   4aaff:	81 3d 78 59 02 00 bf 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0xbf                     ; fixup: num: 11731, src obj: 1, src ofs: 0x4ab01, dst obj: 3, dst ofs: 0x25978
   4ab09:	7f 1f                	jg     chessgame_branch_23
   4ab0b:	81 3d 7c 59 02 00 e0 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0xe0                     ; fixup: num: 11730, src obj: 1, src ofs: 0x4ab0d, dst obj: 3, dst ofs: 0x2597c
   4ab15:	7c 13                	jl     chessgame_branch_23
   4ab17:	81 3d 7c 59 02 00 0c 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x10c                    ; fixup: num: 11729, src obj: 1, src ofs: 0x4ab19, dst obj: 3, dst ofs: 0x2597c
   4ab21:	7f 07                	jg     chessgame_branch_23
   4ab23:	b8 01 00 00 00       	mov    eax,0x1
   4ab28:	eb 02                	jmp    chessgame_branch_24
chessgame_branch_23:
   4ab2a:	31 c0                	xor    eax,eax
chessgame_branch_24:
   4ab2c:	85 c0                	test   eax,eax
   4ab2e:	0f 85 bf 01 00 00    	jne    chessgame_branch_39
   4ab34:	81 3d 78 59 02 00 bc 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0xbc                     ; fixup: num: 11728, src obj: 1, src ofs: 0x4ab36, dst obj: 3, dst ofs: 0x25978
   4ab3e:	7c 2b                	jl     chessgame_branch_25
   4ab40:	81 3d 78 59 02 00 e7 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0xe7                     ; fixup: num: 11727, src obj: 1, src ofs: 0x4ab42, dst obj: 3, dst ofs: 0x25978
   4ab4a:	7f 1f                	jg     chessgame_branch_25
   4ab4c:	81 3d 7c 59 02 00 a0 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0xa0                     ; fixup: num: 11726, src obj: 1, src ofs: 0x4ab4e, dst obj: 3, dst ofs: 0x2597c
   4ab56:	7c 13                	jl     chessgame_branch_25
   4ab58:	81 3d 7c 59 02 00 c2 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0xc2                     ; fixup: num: 11725, src obj: 1, src ofs: 0x4ab5a, dst obj: 3, dst ofs: 0x2597c
   4ab62:	7f 07                	jg     chessgame_branch_25
   4ab64:	b8 01 00 00 00       	mov    eax,0x1
   4ab69:	eb 02                	jmp    chessgame_branch_26
chessgame_branch_25:
   4ab6b:	31 c0                	xor    eax,eax
chessgame_branch_26:
   4ab6d:	85 c0                	test   eax,eax
   4ab6f:	0f 85 7e 01 00 00    	jne    chessgame_branch_39
   4ab75:	81 3d 78 59 02 00 fd 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0xfd                     ; fixup: num: 11628, src obj: 1, src ofs: 0x4ab77, dst obj: 3, dst ofs: 0x25978
   4ab7f:	7c 2b                	jl     chessgame_branch_27
   4ab81:	81 3d 78 59 02 00 2f 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x12f                    ; fixup: num: 11627, src obj: 1, src ofs: 0x4ab83, dst obj: 3, dst ofs: 0x25978
   4ab8b:	7f 1f                	jg     chessgame_branch_27
   4ab8d:	81 3d 7c 59 02 00 8c 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x8c                     ; fixup: num: 11626, src obj: 1, src ofs: 0x4ab8f, dst obj: 3, dst ofs: 0x2597c
   4ab97:	7c 13                	jl     chessgame_branch_27
   4ab99:	81 3d 7c 59 02 00 ab 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0xab                     ; fixup: num: 11625, src obj: 1, src ofs: 0x4ab9b, dst obj: 3, dst ofs: 0x2597c
   4aba3:	7f 07                	jg     chessgame_branch_27
   4aba5:	b8 01 00 00 00       	mov    eax,0x1
   4abaa:	eb 02                	jmp    chessgame_branch_28
chessgame_branch_27:
   4abac:	31 c0                	xor    eax,eax
chessgame_branch_28:
   4abae:	85 c0                	test   eax,eax
   4abb0:	0f 85 3d 01 00 00    	jne    chessgame_branch_39
   4abb6:	81 3d 78 59 02 00 66 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x166                    ; fixup: num: 11624, src obj: 1, src ofs: 0x4abb8, dst obj: 3, dst ofs: 0x25978
   4abc0:	7c 2b                	jl     chessgame_branch_29
   4abc2:	81 3d 78 59 02 00 9b 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x19b                    ; fixup: num: 11623, src obj: 1, src ofs: 0x4abc4, dst obj: 3, dst ofs: 0x25978
   4abcc:	7f 1f                	jg     chessgame_branch_29
   4abce:	81 3d 7c 59 02 00 9a 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x9a                     ; fixup: num: 11622, src obj: 1, src ofs: 0x4abd0, dst obj: 3, dst ofs: 0x2597c
   4abd8:	7c 13                	jl     chessgame_branch_29
   4abda:	81 3d 7c 59 02 00 bb 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0xbb                     ; fixup: num: 11621, src obj: 1, src ofs: 0x4abdc, dst obj: 3, dst ofs: 0x2597c
   4abe4:	7f 07                	jg     chessgame_branch_29
   4abe6:	b8 01 00 00 00       	mov    eax,0x1
   4abeb:	eb 02                	jmp    chessgame_branch_30
chessgame_branch_29:
   4abed:	31 c0                	xor    eax,eax
chessgame_branch_30:
   4abef:	85 c0                	test   eax,eax
   4abf1:	0f 85 fc 00 00 00    	jne    chessgame_branch_39
   4abf7:	81 3d 78 59 02 00 94 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x194                    ; fixup: num: 11620, src obj: 1, src ofs: 0x4abf9, dst obj: 3, dst ofs: 0x25978
   4ac01:	7c 2b                	jl     chessgame_branch_31
   4ac03:	81 3d 78 59 02 00 cd 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x1cd                    ; fixup: num: 11619, src obj: 1, src ofs: 0x4ac05, dst obj: 3, dst ofs: 0x25978
   4ac0d:	7f 1f                	jg     chessgame_branch_31
   4ac0f:	81 3d 7c 59 02 00 be 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0xbe                     ; fixup: num: 11734, src obj: 1, src ofs: 0x4ac11, dst obj: 3, dst ofs: 0x2597c
   4ac19:	7c 13                	jl     chessgame_branch_31
   4ac1b:	81 3d 7c 59 02 00 e4 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0xe4                     ; fixup: num: 11639, src obj: 1, src ofs: 0x4ac1d, dst obj: 3, dst ofs: 0x2597c
   4ac25:	7f 07                	jg     chessgame_branch_31
   4ac27:	b8 01 00 00 00       	mov    eax,0x1
   4ac2c:	eb 02                	jmp    chessgame_branch_32
chessgame_branch_31:
   4ac2e:	31 c0                	xor    eax,eax
chessgame_branch_32:
   4ac30:	85 c0                	test   eax,eax
   4ac32:	0f 85 bb 00 00 00    	jne    chessgame_branch_39
   4ac38:	81 3d 78 59 02 00 7f 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x17f                    ; fixup: num: 11638, src obj: 1, src ofs: 0x4ac3a, dst obj: 3, dst ofs: 0x25978
   4ac42:	7c 2b                	jl     chessgame_branch_33
   4ac44:	81 3d 78 59 02 00 c2 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x1c2                    ; fixup: num: 11637, src obj: 1, src ofs: 0x4ac46, dst obj: 3, dst ofs: 0x25978
   4ac4e:	7f 1f                	jg     chessgame_branch_33
   4ac50:	81 3d 7c 59 02 00 06 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x106                    ; fixup: num: 11636, src obj: 1, src ofs: 0x4ac52, dst obj: 3, dst ofs: 0x2597c
   4ac5a:	7c 13                	jl     chessgame_branch_33
   4ac5c:	81 3d 7c 59 02 00 39 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x139                    ; fixup: num: 11635, src obj: 1, src ofs: 0x4ac5e, dst obj: 3, dst ofs: 0x2597c
   4ac66:	7f 07                	jg     chessgame_branch_33
   4ac68:	b8 01 00 00 00       	mov    eax,0x1
   4ac6d:	eb 02                	jmp    chessgame_branch_34
chessgame_branch_33:
   4ac6f:	31 c0                	xor    eax,eax
chessgame_branch_34:
   4ac71:	85 c0                	test   eax,eax
   4ac73:	0f 85 7a 00 00 00    	jne    chessgame_branch_39
   4ac79:	81 3d 78 59 02 00 2c 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x12c                    ; fixup: num: 11634, src obj: 1, src ofs: 0x4ac7b, dst obj: 3, dst ofs: 0x25978
   4ac83:	7c 2b                	jl     chessgame_branch_35
   4ac85:	81 3d 78 59 02 00 6c 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x16c                    ; fixup: num: 11633, src obj: 1, src ofs: 0x4ac87, dst obj: 3, dst ofs: 0x25978
   4ac8f:	7f 1f                	jg     chessgame_branch_35
   4ac91:	81 3d 7c 59 02 00 26 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x126                    ; fixup: num: 11632, src obj: 1, src ofs: 0x4ac93, dst obj: 3, dst ofs: 0x2597c
   4ac9b:	7c 13                	jl     chessgame_branch_35
   4ac9d:	81 3d 7c 59 02 00 5e 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x15e                    ; fixup: num: 11631, src obj: 1, src ofs: 0x4ac9f, dst obj: 3, dst ofs: 0x2597c
   4aca7:	7f 07                	jg     chessgame_branch_35
   4aca9:	b8 01 00 00 00       	mov    eax,0x1
   4acae:	eb 02                	jmp    chessgame_branch_36
chessgame_branch_35:
   4acb0:	31 c0                	xor    eax,eax
chessgame_branch_36:
   4acb2:	85 c0                	test   eax,eax
   4acb4:	75 3d                	jne    chessgame_branch_39
   4acb6:	81 3d 78 59 02 00 ac 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0xac                     ; fixup: num: 11630, src obj: 1, src ofs: 0x4acb8, dst obj: 3, dst ofs: 0x25978
   4acc0:	7c 2b                	jl     chessgame_branch_37
   4acc2:	81 3d 78 59 02 00 de 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0xde                     ; fixup: num: 11629, src obj: 1, src ofs: 0x4acc4, dst obj: 3, dst ofs: 0x25978
   4accc:	7f 1f                	jg     chessgame_branch_37
   4acce:	81 3d 7c 59 02 00 12 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x112                    ; fixup: num: 11645, src obj: 1, src ofs: 0x4acd0, dst obj: 3, dst ofs: 0x2597c
   4acd8:	7c 13                	jl     chessgame_branch_37
   4acda:	81 3d 7c 59 02 00 44 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x144                    ; fixup: num: 11644, src obj: 1, src ofs: 0x4acdc, dst obj: 3, dst ofs: 0x2597c
   4ace4:	7f 07                	jg     chessgame_branch_37
   4ace6:	b8 01 00 00 00       	mov    eax,0x1
   4aceb:	eb 02                	jmp    chessgame_branch_38
chessgame_branch_37:
   4aced:	31 c0                	xor    eax,eax
chessgame_branch_38:
   4acef:	85 c0                	test   eax,eax
   4acf1:	74 0a                	je     chessgame_branch_40
chessgame_branch_39:
   4acf3:	c7 44 24 34 01 00 00 00 	mov    DWORD PTR [esp+0x34],0x1
   4acfb:	eb 04                	jmp    chessgame_branch_41
chessgame_branch_40:
   4acfd:	89 44 24 34          	mov    DWORD PTR [esp+0x34],eax
chessgame_branch_41:
   4ad01:	8b 15 78 59 02 00    	mov    edx,DWORD PTR ds:@obj3:mouse_x                               ; fixup: num: 11643, src obj: 1, src ofs: 0x4ad03, dst obj: 3, dst ofs: 0x25978
   4ad07:	a1 78 59 02 00       	mov    eax,ds:@obj3:mouse_x                                         ; fixup: num: 11642, src obj: 1, src ofs: 0x4ad08, dst obj: 3, dst ofs: 0x25978
   4ad0c:	8b 5c 24 08          	mov    ebx,DWORD PTR [esp+0x8]
   4ad10:	39 d8                	cmp    eax,ebx
   4ad12:	7c 02                	jl     chessgame_branch_42
   4ad14:	89 da                	mov    edx,ebx
chessgame_branch_42:
   4ad16:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
   4ad1a:	8b 1c 84             	mov    ebx,DWORD PTR [esp+eax*4]
   4ad1d:	89 93 98 00 00 00    	mov    DWORD PTR [ebx+0x98],edx
   4ad23:	8b 04 84             	mov    eax,DWORD PTR [esp+eax*4]
   4ad26:	8b 4c 24 24          	mov    ecx,DWORD PTR [esp+0x24]
   4ad2a:	8b 90 98 00 00 00    	mov    edx,DWORD PTR [eax+0x98]
   4ad30:	01 ca                	add    edx,ecx
   4ad32:	4a                   	dec    edx
   4ad33:	89 90 a0 00 00 00    	mov    DWORD PTR [eax+0xa0],edx
   4ad39:	a1 7c 59 02 00       	mov    eax,ds:@obj3:mouse_y                                         ; fixup: num: 11641, src obj: 1, src ofs: 0x4ad3a, dst obj: 3, dst ofs: 0x2597c
   4ad3e:	8b 15 7c 59 02 00    	mov    edx,DWORD PTR ds:@obj3:mouse_y                               ; fixup: num: 11640, src obj: 1, src ofs: 0x4ad40, dst obj: 3, dst ofs: 0x2597c
   4ad44:	8b 74 24 10          	mov    esi,DWORD PTR [esp+0x10]
   4ad48:	39 f2                	cmp    edx,esi
   4ad4a:	7c 02                	jl     chessgame_branch_43
   4ad4c:	89 f0                	mov    eax,esi
chessgame_branch_43:
   4ad4e:	8b 54 24 34          	mov    edx,DWORD PTR [esp+0x34]
   4ad52:	8d 14 95 00 00 00 00 	lea    edx,[edx*4+0x0]
   4ad59:	89 54 24 3c          	mov    DWORD PTR [esp+0x3c],edx
   4ad5d:	8b 14 14             	mov    edx,DWORD PTR [esp+edx*1]
   4ad60:	89 82 9c 00 00 00    	mov    DWORD PTR [edx+0x9c],eax
   4ad66:	8b 44 24 3c          	mov    eax,DWORD PTR [esp+0x3c]
   4ad6a:	8b 04 04             	mov    eax,DWORD PTR [esp+eax*1]
   4ad6d:	8b 7c 24 20          	mov    edi,DWORD PTR [esp+0x20]
   4ad71:	8b 90 9c 00 00 00    	mov    edx,DWORD PTR [eax+0x9c]
   4ad77:	01 fa                	add    edx,edi
   4ad79:	4a                   	dec    edx
   4ad7a:	89 90 a4 00 00 00    	mov    DWORD PTR [eax+0xa4],edx
   4ad80:	8b 44 24 3c          	mov    eax,DWORD PTR [esp+0x3c]
   4ad84:	8b 04 04             	mov    eax,DWORD PTR [esp+eax*1]
   4ad87:	8b b8 98 00 00 00    	mov    edi,DWORD PTR [eax+0x98]
   4ad8d:	8b b0 9c 00 00 00    	mov    esi,DWORD PTR [eax+0x9c]
   4ad93:	8b 90 a0 00 00 00    	mov    edx,DWORD PTR [eax+0xa0]
   4ad99:	8b 80 a4 00 00 00    	mov    eax,DWORD PTR [eax+0xa4]
   4ad9f:	89 54 24 28          	mov    DWORD PTR [esp+0x28],edx
   4ada3:	89 44 24 2c          	mov    DWORD PTR [esp+0x2c],eax
   4ada7:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
   4adab:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
   4adaf:	50                   	push   eax
   4adb0:	8b 5c 24 2c          	mov    ebx,DWORD PTR [esp+0x2c]
   4adb4:	8b 4c 24 30          	mov    ecx,DWORD PTR [esp+0x30]
   4adb8:	52                   	push   edx
   4adb9:	89 f8                	mov    eax,edi
   4adbb:	89 f2                	mov    edx,esi
   4adbd:	e8 be 85 fc ff       	call   get_transparent_bm_window
   4adc2:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
   4adc6:	8b 44 24 3c          	mov    eax,DWORD PTR [esp+0x3c]
   4adca:	8b 04 04             	mov    eax,DWORD PTR [esp+eax*1]
   4adcd:	8b 98 b0 00 00 00    	mov    ebx,DWORD PTR [eax+0xb0]
   4add3:	8b 88 ac 00 00 00    	mov    ecx,DWORD PTR [eax+0xac]
   4add9:	8b 90 9c 00 00 00    	mov    edx,DWORD PTR [eax+0x9c]
   4addf:	53                   	push   ebx
   4ade0:	8b 98 a8 00 00 00    	mov    ebx,DWORD PTR [eax+0xa8]
   4ade6:	8b 80 98 00 00 00    	mov    eax,DWORD PTR [eax+0x98]
   4adec:	e8 cf ab fb ff       	call   VESA_transparent_blit
   4adf1:	e9 f7 fb ff ff       	jmp    chessgame_branch_18
chessgame_branch_44:
   4adf6:	ba d4 a1 01 00       	mov    edx,@obj3:music                                              ; fixup: num: 11649, src obj: 1, src ofs: 0x4adf7, dst obj: 3, dst ofs: 0x1a1d4
chessgame_branch_45:
   4adfb:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 11648, src obj: 1, src ofs: 0x4adfd, dst obj: 3, dst ofs: 0x25974
   4ae02:	74 09                	je     chessgame_branch_46
   4ae04:	89 d0                	mov    eax,edx
   4ae06:	e8 95 0b fc ff       	call   update_mod_9
   4ae0b:	eb ee                	jmp    chessgame_branch_45
chessgame_branch_46:
   4ae0d:	81 3d 78 59 02 00 8b 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x8b                     ; fixup: num: 11647, src obj: 1, src ofs: 0x4ae0f, dst obj: 3, dst ofs: 0x25978
   4ae17:	7c 2b                	jl     chessgame_branch_47
   4ae19:	81 3d 78 59 02 00 bf 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0xbf                     ; fixup: num: 11646, src obj: 1, src ofs: 0x4ae1b, dst obj: 3, dst ofs: 0x25978
   4ae23:	7f 1f                	jg     chessgame_branch_47
   4ae25:	81 3d 7c 59 02 00 e0 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0xe0                     ; fixup: num: 11660, src obj: 1, src ofs: 0x4ae27, dst obj: 3, dst ofs: 0x2597c
   4ae2f:	7c 13                	jl     chessgame_branch_47
   4ae31:	81 3d 7c 59 02 00 0c 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x10c                    ; fixup: num: 11659, src obj: 1, src ofs: 0x4ae33, dst obj: 3, dst ofs: 0x2597c
   4ae3b:	7f 07                	jg     chessgame_branch_47
   4ae3d:	b8 01 00 00 00       	mov    eax,0x1
   4ae42:	eb 02                	jmp    chessgame_branch_48
chessgame_branch_47:
   4ae44:	31 c0                	xor    eax,eax
chessgame_branch_48:
   4ae46:	85 c0                	test   eax,eax
   4ae48:	0f 85 4b 03 00 00    	jne    chessgame_branch_77
   4ae4e:	81 3d 78 59 02 00 bc 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0xbc                     ; fixup: num: 11658, src obj: 1, src ofs: 0x4ae50, dst obj: 3, dst ofs: 0x25978
   4ae58:	7c 2b                	jl     chessgame_branch_49
   4ae5a:	81 3d 78 59 02 00 e7 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0xe7                     ; fixup: num: 11657, src obj: 1, src ofs: 0x4ae5c, dst obj: 3, dst ofs: 0x25978
   4ae64:	7f 1f                	jg     chessgame_branch_49
   4ae66:	81 3d 7c 59 02 00 a0 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0xa0                     ; fixup: num: 11656, src obj: 1, src ofs: 0x4ae68, dst obj: 3, dst ofs: 0x2597c
   4ae70:	7c 13                	jl     chessgame_branch_49
   4ae72:	81 3d 7c 59 02 00 c2 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0xc2                     ; fixup: num: 11655, src obj: 1, src ofs: 0x4ae74, dst obj: 3, dst ofs: 0x2597c
   4ae7c:	7f 07                	jg     chessgame_branch_49
   4ae7e:	b8 01 00 00 00       	mov    eax,0x1
   4ae83:	eb 02                	jmp    chessgame_branch_50
chessgame_branch_49:
   4ae85:	31 c0                	xor    eax,eax
chessgame_branch_50:
   4ae87:	85 c0                	test   eax,eax
   4ae89:	0f 85 82 01 00 00    	jne    chessgame_branch_63
   4ae8f:	81 3d 78 59 02 00 fd 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0xfd                     ; fixup: num: 11654, src obj: 1, src ofs: 0x4ae91, dst obj: 3, dst ofs: 0x25978
   4ae99:	7c 2b                	jl     chessgame_branch_51
   4ae9b:	81 3d 78 59 02 00 2f 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x12f                    ; fixup: num: 11653, src obj: 1, src ofs: 0x4ae9d, dst obj: 3, dst ofs: 0x25978
   4aea5:	7f 1f                	jg     chessgame_branch_51
   4aea7:	81 3d 7c 59 02 00 8c 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x8c                     ; fixup: num: 11652, src obj: 1, src ofs: 0x4aea9, dst obj: 3, dst ofs: 0x2597c
   4aeb1:	7c 13                	jl     chessgame_branch_51
   4aeb3:	81 3d 7c 59 02 00 ab 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0xab                     ; fixup: num: 11651, src obj: 1, src ofs: 0x4aeb5, dst obj: 3, dst ofs: 0x2597c
   4aebd:	7f 07                	jg     chessgame_branch_51
   4aebf:	b8 01 00 00 00       	mov    eax,0x1
   4aec4:	eb 02                	jmp    chessgame_branch_52
chessgame_branch_51:
   4aec6:	31 c0                	xor    eax,eax
chessgame_branch_52:
   4aec8:	85 c0                	test   eax,eax
   4aeca:	0f 85 41 01 00 00    	jne    chessgame_branch_63
   4aed0:	81 3d 78 59 02 00 66 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x166                    ; fixup: num: 11650, src obj: 1, src ofs: 0x4aed2, dst obj: 3, dst ofs: 0x25978
   4aeda:	7c 2b                	jl     chessgame_branch_53
   4aedc:	81 3d 78 59 02 00 9b 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x19b                    ; fixup: num: 11671, src obj: 1, src ofs: 0x4aede, dst obj: 3, dst ofs: 0x25978
   4aee6:	7f 1f                	jg     chessgame_branch_53
   4aee8:	81 3d 7c 59 02 00 9a 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x9a                     ; fixup: num: 11670, src obj: 1, src ofs: 0x4aeea, dst obj: 3, dst ofs: 0x2597c
   4aef2:	7c 13                	jl     chessgame_branch_53
   4aef4:	81 3d 7c 59 02 00 bb 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0xbb                     ; fixup: num: 11669, src obj: 1, src ofs: 0x4aef6, dst obj: 3, dst ofs: 0x2597c
   4aefe:	7f 07                	jg     chessgame_branch_53
   4af00:	b8 01 00 00 00       	mov    eax,0x1
   4af05:	eb 02                	jmp    chessgame_branch_54
chessgame_branch_53:
   4af07:	31 c0                	xor    eax,eax
chessgame_branch_54:
   4af09:	85 c0                	test   eax,eax
   4af0b:	0f 85 00 01 00 00    	jne    chessgame_branch_63
   4af11:	81 3d 78 59 02 00 94 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x194                    ; fixup: num: 11668, src obj: 1, src ofs: 0x4af13, dst obj: 3, dst ofs: 0x25978
   4af1b:	7c 2b                	jl     chessgame_branch_55
   4af1d:	81 3d 78 59 02 00 cd 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x1cd                    ; fixup: num: 11667, src obj: 1, src ofs: 0x4af1f, dst obj: 3, dst ofs: 0x25978
   4af27:	7f 1f                	jg     chessgame_branch_55
   4af29:	81 3d 7c 59 02 00 be 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0xbe                     ; fixup: num: 11666, src obj: 1, src ofs: 0x4af2b, dst obj: 3, dst ofs: 0x2597c
   4af33:	7c 13                	jl     chessgame_branch_55
   4af35:	81 3d 7c 59 02 00 e4 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0xe4                     ; fixup: num: 11665, src obj: 1, src ofs: 0x4af37, dst obj: 3, dst ofs: 0x2597c
   4af3f:	7f 07                	jg     chessgame_branch_55
   4af41:	b8 01 00 00 00       	mov    eax,0x1
   4af46:	eb 02                	jmp    chessgame_branch_56
chessgame_branch_55:
   4af48:	31 c0                	xor    eax,eax
chessgame_branch_56:
   4af4a:	85 c0                	test   eax,eax
   4af4c:	0f 85 bf 00 00 00    	jne    chessgame_branch_63
   4af52:	81 3d 78 59 02 00 7f 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x17f                    ; fixup: num: 11664, src obj: 1, src ofs: 0x4af54, dst obj: 3, dst ofs: 0x25978
   4af5c:	7c 2b                	jl     chessgame_branch_57
   4af5e:	81 3d 78 59 02 00 c2 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x1c2                    ; fixup: num: 11663, src obj: 1, src ofs: 0x4af60, dst obj: 3, dst ofs: 0x25978
   4af68:	7f 1f                	jg     chessgame_branch_57
   4af6a:	81 3d 7c 59 02 00 06 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x106                    ; fixup: num: 11662, src obj: 1, src ofs: 0x4af6c, dst obj: 3, dst ofs: 0x2597c
   4af74:	7c 13                	jl     chessgame_branch_57
   4af76:	81 3d 7c 59 02 00 39 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x139                    ; fixup: num: 11661, src obj: 1, src ofs: 0x4af78, dst obj: 3, dst ofs: 0x2597c
   4af80:	7f 07                	jg     chessgame_branch_57
   4af82:	b8 01 00 00 00       	mov    eax,0x1
   4af87:	eb 02                	jmp    chessgame_branch_58
chessgame_branch_57:
   4af89:	31 c0                	xor    eax,eax
chessgame_branch_58:
   4af8b:	85 c0                	test   eax,eax
   4af8d:	0f 85 7e 00 00 00    	jne    chessgame_branch_63
   4af93:	81 3d 78 59 02 00 2c 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x12c                    ; fixup: num: 11618, src obj: 1, src ofs: 0x4af95, dst obj: 3, dst ofs: 0x25978
   4af9d:	7c 2b                	jl     chessgame_branch_59
   4af9f:	81 3d 78 59 02 00 6c 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x16c                    ; fixup: num: 11617, src obj: 1, src ofs: 0x4afa1, dst obj: 3, dst ofs: 0x25978
   4afa9:	7f 1f                	jg     chessgame_branch_59
   4afab:	81 3d 7c 59 02 00 26 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x126                    ; fixup: num: 11616, src obj: 1, src ofs: 0x4afad, dst obj: 3, dst ofs: 0x2597c
   4afb5:	7c 13                	jl     chessgame_branch_59
   4afb7:	81 3d 7c 59 02 00 5e 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x15e                    ; fixup: num: 11615, src obj: 1, src ofs: 0x4afb9, dst obj: 3, dst ofs: 0x2597c
   4afc1:	7f 07                	jg     chessgame_branch_59
   4afc3:	b8 01 00 00 00       	mov    eax,0x1
   4afc8:	eb 02                	jmp    chessgame_branch_60
chessgame_branch_59:
   4afca:	31 c0                	xor    eax,eax
chessgame_branch_60:
   4afcc:	85 c0                	test   eax,eax
   4afce:	75 41                	jne    chessgame_branch_63
   4afd0:	81 3d 78 59 02 00 ac 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0xac                     ; fixup: num: 11614, src obj: 1, src ofs: 0x4afd2, dst obj: 3, dst ofs: 0x25978
   4afda:	7c 2b                	jl     chessgame_branch_61
   4afdc:	81 3d 78 59 02 00 de 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0xde                     ; fixup: num: 11674, src obj: 1, src ofs: 0x4afde, dst obj: 3, dst ofs: 0x25978
   4afe6:	7f 1f                	jg     chessgame_branch_61
   4afe8:	81 3d 7c 59 02 00 12 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x112                    ; fixup: num: 11673, src obj: 1, src ofs: 0x4afea, dst obj: 3, dst ofs: 0x2597c
   4aff2:	7c 13                	jl     chessgame_branch_61
   4aff4:	81 3d 7c 59 02 00 44 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x144                    ; fixup: num: 11672, src obj: 1, src ofs: 0x4aff6, dst obj: 3, dst ofs: 0x2597c
   4affe:	7f 07                	jg     chessgame_branch_61
   4b000:	b8 01 00 00 00       	mov    eax,0x1
   4b005:	eb 02                	jmp    chessgame_branch_62
chessgame_branch_61:
   4b007:	31 c0                	xor    eax,eax
chessgame_branch_62:
   4b009:	85 c0                	test   eax,eax
   4b00b:	0f 84 cf f9 ff ff    	je     chessgame_branch_17
chessgame_branch_63:
   4b011:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
   4b015:	85 c9                	test   ecx,ecx
   4b017:	74 1e                	je     chessgame_branch_65
   4b019:	8b 71 08             	mov    esi,DWORD PTR [ecx+0x8]
   4b01c:	89 ca                	mov    edx,ecx
   4b01e:	85 f6                	test   esi,esi
   4b020:	74 07                	je     chessgame_branch_64
   4b022:	89 f0                	mov    eax,esi
   4b024:	e8 bf 63 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
chessgame_branch_64:
   4b029:	89 d0                	mov    eax,edx
   4b02b:	c7 42 08 00 00 00 00 	mov    DWORD PTR [edx+0x8],0x0
   4b032:	e8 41 70 02 00       	call   W?$dln(pnv)v
chessgame_branch_65:
   4b037:	8b bd 80 00 00 00    	mov    edi,DWORD PTR [ebp+0x80]
   4b03d:	89 ea                	mov    edx,ebp
   4b03f:	85 ff                	test   edi,edi
   4b041:	74 07                	je     chessgame_branch_66
   4b043:	89 f8                	mov    eax,edi
   4b045:	e8 9e 63 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
chessgame_branch_66:
   4b04a:	8d 82 a8 00 00 00    	lea    eax,[edx+0xa8]
   4b050:	8b 68 08             	mov    ebp,DWORD PTR [eax+0x8]
   4b053:	89 c2                	mov    edx,eax
   4b055:	85 ed                	test   ebp,ebp
   4b057:	74 07                	je     chessgame_branch_67
   4b059:	89 e8                	mov    eax,ebp
   4b05b:	e8 88 63 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
chessgame_branch_67:
   4b060:	8d 82 58 ff ff ff    	lea    eax,[edx-0xa8]
   4b066:	c7 42 08 00 00 00 00 	mov    DWORD PTR [edx+0x8],0x0
   4b06d:	e8 06 70 02 00       	call   W?$dln(pnv)v
   4b072:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
   4b076:	85 c0                	test   eax,eax
   4b078:	74 3b                	je     chessgame_branch_70
   4b07a:	8b 98 80 00 00 00    	mov    ebx,DWORD PTR [eax+0x80]
   4b080:	89 c2                	mov    edx,eax
   4b082:	85 db                	test   ebx,ebx
   4b084:	74 07                	je     chessgame_branch_68
   4b086:	89 d8                	mov    eax,ebx
   4b088:	e8 5b 63 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
chessgame_branch_68:
   4b08d:	8d 82 a8 00 00 00    	lea    eax,[edx+0xa8]
   4b093:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
   4b096:	89 c2                	mov    edx,eax
   4b098:	85 c9                	test   ecx,ecx
   4b09a:	74 07                	je     chessgame_branch_69
   4b09c:	89 c8                	mov    eax,ecx
   4b09e:	e8 45 63 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
chessgame_branch_69:
   4b0a3:	8d 82 58 ff ff ff    	lea    eax,[edx-0xa8]
   4b0a9:	c7 42 08 00 00 00 00 	mov    DWORD PTR [edx+0x8],0x0
   4b0b0:	e8 c3 6f 02 00       	call   W?$dln(pnv)v
chessgame_branch_70:
   4b0b5:	8b 34 24             	mov    esi,DWORD PTR [esp]
   4b0b8:	85 f6                	test   esi,esi
   4b0ba:	74 3b                	je     chessgame_branch_73
   4b0bc:	8b be 80 00 00 00    	mov    edi,DWORD PTR [esi+0x80]
   4b0c2:	89 f2                	mov    edx,esi
   4b0c4:	85 ff                	test   edi,edi
   4b0c6:	74 07                	je     chessgame_branch_71
   4b0c8:	89 f8                	mov    eax,edi
   4b0ca:	e8 19 63 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
chessgame_branch_71:
   4b0cf:	8d 82 a8 00 00 00    	lea    eax,[edx+0xa8]
   4b0d5:	8b 68 08             	mov    ebp,DWORD PTR [eax+0x8]
   4b0d8:	89 c2                	mov    edx,eax
   4b0da:	85 ed                	test   ebp,ebp
   4b0dc:	74 07                	je     chessgame_branch_72
   4b0de:	89 e8                	mov    eax,ebp
   4b0e0:	e8 03 63 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
chessgame_branch_72:
   4b0e5:	8d 82 58 ff ff ff    	lea    eax,[edx-0xa8]
   4b0eb:	c7 42 08 00 00 00 00 	mov    DWORD PTR [edx+0x8],0x0
   4b0f2:	e8 81 6f 02 00       	call   W?$dln(pnv)v
chessgame_branch_73:
   4b0f7:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
   4b0fb:	85 c0                	test   eax,eax
   4b0fd:	74 3b                	je     chessgame_branch_76
   4b0ff:	8b 98 80 00 00 00    	mov    ebx,DWORD PTR [eax+0x80]
   4b105:	89 c2                	mov    edx,eax
   4b107:	85 db                	test   ebx,ebx
   4b109:	74 07                	je     chessgame_branch_74
   4b10b:	89 d8                	mov    eax,ebx
   4b10d:	e8 d6 62 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
chessgame_branch_74:
   4b112:	8d 82 a8 00 00 00    	lea    eax,[edx+0xa8]
   4b118:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
   4b11b:	89 c2                	mov    edx,eax
   4b11d:	85 c9                	test   ecx,ecx
   4b11f:	74 07                	je     chessgame_branch_75
   4b121:	89 c8                	mov    eax,ecx
   4b123:	e8 c0 62 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
chessgame_branch_75:
   4b128:	8d 82 58 ff ff ff    	lea    eax,[edx-0xa8]
   4b12e:	c7 42 08 00 00 00 00 	mov    DWORD PTR [edx+0x8],0x0
   4b135:	e8 3e 6f 02 00       	call   W?$dln(pnv)v
chessgame_branch_76:
   4b13a:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
   4b13e:	e8 a5 62 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   4b143:	6a 01                	push   0x1
   4b145:	b9 e0 01 00 00       	mov    ecx,0x1e0
   4b14a:	bb 80 02 00 00       	mov    ebx,0x280
   4b14f:	6a 00                	push   0x0
   4b151:	31 d2                	xor    edx,edx
   4b153:	31 c0                	xor    eax,eax
   4b155:	e8 f6 a5 fb ff       	call   VESA_rectangle
   4b15a:	68 df 01 00 00       	push   0x1df
   4b15f:	b9 7f 02 00 00       	mov    ecx,0x27f
   4b164:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 11776, src obj: 1, src ofs: 0x4b165, dst obj: 3, dst ofs: 0x25a84
   4b169:	31 db                	xor    ebx,ebx
   4b16b:	31 d2                	xor    edx,edx
   4b16d:	e8 ee 28 00 00       	call   refresh_area
   4b172:	83 ec 04             	sub    esp,0x4
   4b175:	dd 05 b4 0f 01 00    	fld    QWORD PTR ds:@obj3:pal_gamma                                 ; fixup: num: 11775, src obj: 1, src ofs: 0x4b177, dst obj: 3, dst ofs: 0x10fb4
   4b17b:	d9 1c 24             	fstp   DWORD PTR [esp]
   4b17e:	ba 00 01 00 00       	mov    edx,0x100
   4b183:	a1 84 60 02 00       	mov    eax,ds:@obj3:palette                                         ; fixup: num: 11774, src obj: 1, src ofs: 0x4b184, dst obj: 3, dst ofs: 0x26084
   4b188:	e8 e3 75 fc ff       	call   setvgapalette_mod_14
   4b18d:	30 c0                	xor    al,al
   4b18f:	83 c4 6c             	add    esp,0x6c
   4b192:	5d                   	pop    ebp
   4b193:	5f                   	pop    edi
   4b194:	5e                   	pop    esi
   4b195:	5a                   	pop    edx
   4b196:	59                   	pop    ecx
   4b197:	5b                   	pop    ebx
   4b198:	c3                   	ret    
chessgame_branch_77:
   4b199:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
   4b19d:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
   4b1a1:	8b 89 ac 00 00 00    	mov    ecx,DWORD PTR [ecx+0xac]
   4b1a7:	0f af 8a a8 00 00 00 	imul   ecx,DWORD PTR [edx+0xa8]
   4b1ae:	8b 7c 24 30          	mov    edi,DWORD PTR [esp+0x30]
   4b1b2:	8b b2 b0 00 00 00    	mov    esi,DWORD PTR [edx+0xb0]
   4b1b8:	bb 80 02 00 00       	mov    ebx,0x280
   4b1bd:	57                   	push   edi
   4b1be:	89 c8                	mov    eax,ecx
   4b1c0:	c1 e9 02             	shr    ecx,0x2
   4b1c3:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
   4b1c5:	8a c8                	mov    cl,al
   4b1c7:	80 e1 03             	and    cl,0x3
   4b1ca:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
   4b1cc:	5f                   	pop    edi
   4b1cd:	57                   	push   edi
   4b1ce:	b9 e0 01 00 00       	mov    ecx,0x1e0
   4b1d3:	8b 35 34 30 02 00    	mov    esi,DWORD PTR ds:@obj3:the_viewport                          ; fixup: num: 11778, src obj: 1, src ofs: 0x4b1d5, dst obj: 3, dst ofs: 0x23034
   4b1d9:	6a 00                	push   0x0
   4b1db:	31 d2                	xor    edx,edx
   4b1dd:	31 c0                	xor    eax,eax
   4b1df:	ff 56 30             	call   DWORD PTR [esi+0x30]
   4b1e2:	ba 1d 00 00 00       	mov    edx,0x1d
   4b1e7:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
   4b1eb:	e8 f0 5d fc ff       	call   play_mod_11
   4b1f0:	31 db                	xor    ebx,ebx
   4b1f2:	ba 0e bc 00 00       	mov    edx,@obj3:puzzles_cpp_variable_13                            ; fixup: num: 11777, src obj: 1, src ofs: 0x4b1f3, dst obj: 3, dst ofs: 0xbc0e
   4b1f7:	89 e8                	mov    eax,ebp
   4b1f9:	e8 02 50 fc ff       	call   load_from_file_mod_11
   4b1fe:	8b 8d ac 00 00 00    	mov    ecx,DWORD PTR [ebp+0xac]
   4b204:	0f af 8d a8 00 00 00 	imul   ecx,DWORD PTR [ebp+0xa8]
   4b20b:	8b b5 b0 00 00 00    	mov    esi,DWORD PTR [ebp+0xb0]
   4b211:	57                   	push   edi
   4b212:	89 c8                	mov    eax,ecx
   4b214:	c1 e9 02             	shr    ecx,0x2
   4b217:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
   4b219:	8a c8                	mov    cl,al
   4b21b:	80 e1 03             	and    cl,0x3
   4b21e:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
   4b220:	5f                   	pop    edi
   4b221:	ba 01 00 00 00       	mov    edx,0x1
   4b226:	89 e8                	mov    eax,ebp
   4b228:	e8 03 53 fc ff       	call   go_to_frame
   4b22d:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
   4b231:	8d 04 85 00 00 00 00 	lea    eax,[eax*4+0x0]
   4b238:	89 44 24 3c          	mov    DWORD PTR [esp+0x3c],eax
   4b23c:	8b 04 04             	mov    eax,DWORD PTR [esp+eax*1]
   4b23f:	8b 90 a0 00 00 00    	mov    edx,DWORD PTR [eax+0xa0]
   4b245:	2b 90 98 00 00 00    	sub    edx,DWORD PTR [eax+0x98]
   4b24b:	42                   	inc    edx
   4b24c:	8b 88 9c 00 00 00    	mov    ecx,DWORD PTR [eax+0x9c]
   4b252:	89 54 24 58          	mov    DWORD PTR [esp+0x58],edx
   4b256:	8b 90 a4 00 00 00    	mov    edx,DWORD PTR [eax+0xa4]
   4b25c:	29 ca                	sub    edx,ecx
   4b25e:	42                   	inc    edx
   4b25f:	89 54 24 50          	mov    DWORD PTR [esp+0x50],edx
   4b263:	8b 35 78 59 02 00    	mov    esi,DWORD PTR ds:@obj3:mouse_x                               ; fixup: num: 11780, src obj: 1, src ofs: 0x4b265, dst obj: 3, dst ofs: 0x25978
   4b269:	8b 44 24 58          	mov    eax,DWORD PTR [esp+0x58]
   4b26d:	01 f0                	add    eax,esi
   4b26f:	48                   	dec    eax
   4b270:	89 44 24 60          	mov    DWORD PTR [esp+0x60],eax
   4b274:	8b 3d 7c 59 02 00    	mov    edi,DWORD PTR ds:@obj3:mouse_y                               ; fixup: num: 11779, src obj: 1, src ofs: 0x4b276, dst obj: 3, dst ofs: 0x2597c
   4b27a:	8d 44 3a ff          	lea    eax,[edx+edi*1-0x1]
   4b27e:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
   4b282:	89 44 24 68          	mov    DWORD PTR [esp+0x68],eax
   4b286:	8b 85 b0 00 00 00    	mov    eax,DWORD PTR [ebp+0xb0]
   4b28c:	89 42 08             	mov    DWORD PTR [edx+0x8],eax
   4b28f:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
   4b293:	50                   	push   eax
   4b294:	8b 5c 24 64          	mov    ebx,DWORD PTR [esp+0x64]
   4b298:	8b 4c 24 6c          	mov    ecx,DWORD PTR [esp+0x6c]
   4b29c:	52                   	push   edx
   4b29d:	89 f0                	mov    eax,esi
   4b29f:	89 fa                	mov    edx,edi
   4b2a1:	e8 da 80 fc ff       	call   get_transparent_bm_window
   4b2a6:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
   4b2aa:	8b 44 24 3c          	mov    eax,DWORD PTR [esp+0x3c]
   4b2ae:	8b 04 04             	mov    eax,DWORD PTR [esp+eax*1]
   4b2b1:	8b 90 a0 00 00 00    	mov    edx,DWORD PTR [eax+0xa0]
   4b2b7:	2b 90 98 00 00 00    	sub    edx,DWORD PTR [eax+0x98]
   4b2bd:	42                   	inc    edx
   4b2be:	8b 88 9c 00 00 00    	mov    ecx,DWORD PTR [eax+0x9c]
   4b2c4:	89 54 24 58          	mov    DWORD PTR [esp+0x58],edx
   4b2c8:	8b 90 a4 00 00 00    	mov    edx,DWORD PTR [eax+0xa4]
   4b2ce:	29 ca                	sub    edx,ecx
   4b2d0:	b8 df 01 00 00       	mov    eax,0x1df
   4b2d5:	42                   	inc    edx
   4b2d6:	29 d0                	sub    eax,edx
   4b2d8:	8b 5c 24 58          	mov    ebx,DWORD PTR [esp+0x58]
   4b2dc:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
   4b2e0:	b8 7f 02 00 00       	mov    eax,0x27f
   4b2e5:	29 d8                	sub    eax,ebx
   4b2e7:	89 54 24 50          	mov    DWORD PTR [esp+0x50],edx
   4b2eb:	89 44 24 40          	mov    DWORD PTR [esp+0x40],eax
chessgame_branch_78:
   4b2ef:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 11786, src obj: 1, src ofs: 0x4b2f1, dst obj: 3, dst ofs: 0x25974
   4b2f6:	0f 85 92 02 00 00    	jne    chessgame_branch_93
chessgame_branch_79:
   4b2fc:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 11785, src obj: 1, src ofs: 0x4b2fd, dst obj: 3, dst ofs: 0x1a1d4
   4b301:	e8 9a 06 fc ff       	call   update_mod_9
   4b306:	89 e8                	mov    eax,ebp
   4b308:	e8 b3 5c fc ff       	call   update_mod_11
   4b30d:	84 c0                	test   al,al
   4b30f:	75 de                	jne    chessgame_branch_78
   4b311:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 11784, src obj: 1, src ofs: 0x4b312, dst obj: 3, dst ofs: 0x1a1d4
   4b316:	8b 54 24 34          	mov    edx,DWORD PTR [esp+0x34]
   4b31a:	bb d4 a1 01 00       	mov    ebx,@obj3:music                                              ; fixup: num: 11783, src obj: 1, src ofs: 0x4b31b, dst obj: 3, dst ofs: 0x1a1d4
   4b31f:	e8 7c 06 fc ff       	call   update_mod_9
   4b324:	8d 14 95 00 00 00 00 	lea    edx,[edx*4+0x0]
chessgame_branch_80:
   4b32b:	8b 04 14             	mov    eax,DWORD PTR [esp+edx*1]
   4b32e:	e8 8d 5c fc ff       	call   update_mod_11
   4b333:	84 c0                	test   al,al
   4b335:	75 13                	jne    chessgame_branch_81
   4b337:	e8 c6 6d 02 00       	call   clock_
   4b33c:	a3 44 7e 01 00       	mov    ds:@obj3:current_time,eax                                    ; fixup: num: 11782, src obj: 1, src ofs: 0x4b33d, dst obj: 3, dst ofs: 0x17e44
   4b341:	89 d8                	mov    eax,ebx
   4b343:	e8 58 06 fc ff       	call   update_mod_9
   4b348:	eb e1                	jmp    chessgame_branch_80
chessgame_branch_81:
   4b34a:	8b 4c 24 68          	mov    ecx,DWORD PTR [esp+0x68]
   4b34e:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
   4b352:	8b 15 34 30 02 00    	mov    edx,DWORD PTR ds:@obj3:the_viewport                          ; fixup: num: 11781, src obj: 1, src ofs: 0x4b354, dst obj: 3, dst ofs: 0x23034
   4b358:	8b 5c 24 60          	mov    ebx,DWORD PTR [esp+0x60]
   4b35c:	89 54 24 3c          	mov    DWORD PTR [esp+0x3c],edx
   4b360:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
   4b363:	29 f3                	sub    ebx,esi
   4b365:	50                   	push   eax
   4b366:	29 f9                	sub    ecx,edi
   4b368:	43                   	inc    ebx
   4b369:	6a 00                	push   0x0
   4b36b:	89 f0                	mov    eax,esi
   4b36d:	8b 74 24 44          	mov    esi,DWORD PTR [esp+0x44]
   4b371:	41                   	inc    ecx
   4b372:	89 fa                	mov    edx,edi
   4b374:	ff 56 30             	call   DWORD PTR [esi+0x30]
   4b377:	8b 85 8c 00 00 00    	mov    eax,DWORD PTR [ebp+0x8c]
   4b37d:	8b 8d 88 00 00 00    	mov    ecx,DWORD PTR [ebp+0x88]
   4b383:	48                   	dec    eax
   4b384:	39 c8                	cmp    eax,ecx
   4b386:	75 2c                	jne    chessgame_branch_82
   4b388:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
   4b38c:	b9 e0 01 00 00       	mov    ecx,0x1e0
   4b391:	50                   	push   eax
   4b392:	bb 80 02 00 00       	mov    ebx,0x280
   4b397:	8b 35 34 30 02 00    	mov    esi,DWORD PTR ds:@obj3:the_viewport                          ; fixup: num: 11792, src obj: 1, src ofs: 0x4b399, dst obj: 3, dst ofs: 0x23034
   4b39d:	6a 00                	push   0x0
   4b39f:	31 d2                	xor    edx,edx
   4b3a1:	31 c0                	xor    eax,eax
   4b3a3:	ff 56 30             	call   DWORD PTR [esi+0x30]
   4b3a6:	ba 01 00 00 00       	mov    edx,0x1
   4b3ab:	89 e8                	mov    eax,ebp
   4b3ad:	e8 7e 51 fc ff       	call   go_to_frame
   4b3b2:	eb 5b                	jmp    chessgame_branch_83
chessgame_branch_82:
   4b3b4:	8b 85 a0 00 00 00    	mov    eax,DWORD PTR [ebp+0xa0]
   4b3ba:	8b b5 98 00 00 00    	mov    esi,DWORD PTR [ebp+0x98]
   4b3c0:	29 f0                	sub    eax,esi
   4b3c2:	8d 58 01             	lea    ebx,[eax+0x1]
   4b3c5:	8b bd 9c 00 00 00    	mov    edi,DWORD PTR [ebp+0x9c]
   4b3cb:	8b 85 a4 00 00 00    	mov    eax,DWORD PTR [ebp+0xa4]
   4b3d1:	29 f8                	sub    eax,edi
   4b3d3:	8d 48 01             	lea    ecx,[eax+0x1]
   4b3d6:	8b 95 a8 00 00 00    	mov    edx,DWORD PTR [ebp+0xa8]
   4b3dc:	89 f8                	mov    eax,edi
   4b3de:	0f af c2             	imul   eax,edx
   4b3e1:	8b 95 b0 00 00 00    	mov    edx,DWORD PTR [ebp+0xb0]
   4b3e7:	01 d0                	add    eax,edx
   4b3e9:	8d 3c 06             	lea    edi,[esi+eax*1]
   4b3ec:	8b 85 a8 00 00 00    	mov    eax,DWORD PTR [ebp+0xa8]
   4b3f2:	29 d8                	sub    eax,ebx
   4b3f4:	89 44 24 3c          	mov    DWORD PTR [esp+0x3c],eax
   4b3f8:	57                   	push   edi
   4b3f9:	8b 7c 24 40          	mov    edi,DWORD PTR [esp+0x40]
   4b3fd:	89 f0                	mov    eax,esi
   4b3ff:	8b 35 34 30 02 00    	mov    esi,DWORD PTR ds:@obj3:the_viewport                          ; fixup: num: 11791, src obj: 1, src ofs: 0x4b401, dst obj: 3, dst ofs: 0x23034
   4b405:	57                   	push   edi
   4b406:	8b 95 9c 00 00 00    	mov    edx,DWORD PTR [ebp+0x9c]
   4b40c:	ff 56 30             	call   DWORD PTR [esi+0x30]
chessgame_branch_83:
   4b40f:	83 3d 78 59 02 00 2a 	cmp    DWORD PTR ds:@obj3:mouse_x,0x2a                              ; fixup: num: 11790, src obj: 1, src ofs: 0x4b411, dst obj: 3, dst ofs: 0x25978
   4b416:	7c 28                	jl     chessgame_branch_84
   4b418:	83 3d 78 59 02 00 5e 	cmp    DWORD PTR ds:@obj3:mouse_x,0x5e                              ; fixup: num: 11789, src obj: 1, src ofs: 0x4b41a, dst obj: 3, dst ofs: 0x25978
   4b41f:	7f 1f                	jg     chessgame_branch_84
   4b421:	81 3d 7c 59 02 00 fa 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0xfa                     ; fixup: num: 11788, src obj: 1, src ofs: 0x4b423, dst obj: 3, dst ofs: 0x2597c
   4b42b:	7c 13                	jl     chessgame_branch_84
   4b42d:	81 3d 7c 59 02 00 2d 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x12d                    ; fixup: num: 11787, src obj: 1, src ofs: 0x4b42f, dst obj: 3, dst ofs: 0x2597c
   4b437:	7f 07                	jg     chessgame_branch_84
   4b439:	b8 01 00 00 00       	mov    eax,0x1
   4b43e:	eb 02                	jmp    chessgame_branch_85
chessgame_branch_84:
   4b440:	31 c0                	xor    eax,eax
chessgame_branch_85:
   4b442:	85 c0                	test   eax,eax
   4b444:	75 3d                	jne    chessgame_branch_88
   4b446:	81 3d 78 59 02 00 ab 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0xab                     ; fixup: num: 11800, src obj: 1, src ofs: 0x4b448, dst obj: 3, dst ofs: 0x25978
   4b450:	7c 2b                	jl     chessgame_branch_86
   4b452:	81 3d 78 59 02 00 de 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0xde                     ; fixup: num: 11799, src obj: 1, src ofs: 0x4b454, dst obj: 3, dst ofs: 0x25978
   4b45c:	7f 1f                	jg     chessgame_branch_86
   4b45e:	81 3d 7c 59 02 00 0f 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x10f                    ; fixup: num: 11798, src obj: 1, src ofs: 0x4b460, dst obj: 3, dst ofs: 0x2597c
   4b468:	7c 13                	jl     chessgame_branch_86
   4b46a:	81 3d 7c 59 02 00 43 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x143                    ; fixup: num: 11797, src obj: 1, src ofs: 0x4b46c, dst obj: 3, dst ofs: 0x2597c
   4b474:	7f 07                	jg     chessgame_branch_86
   4b476:	b8 01 00 00 00       	mov    eax,0x1
   4b47b:	eb 02                	jmp    chessgame_branch_87
chessgame_branch_86:
   4b47d:	31 c0                	xor    eax,eax
chessgame_branch_87:
   4b47f:	85 c0                	test   eax,eax
   4b481:	74 0a                	je     chessgame_branch_89
chessgame_branch_88:
   4b483:	c7 44 24 34 01 00 00 00 	mov    DWORD PTR [esp+0x34],0x1
   4b48b:	eb 04                	jmp    chessgame_branch_90
chessgame_branch_89:
   4b48d:	89 44 24 34          	mov    DWORD PTR [esp+0x34],eax
chessgame_branch_90:
   4b491:	8b 15 78 59 02 00    	mov    edx,DWORD PTR ds:@obj3:mouse_x                               ; fixup: num: 11796, src obj: 1, src ofs: 0x4b493, dst obj: 3, dst ofs: 0x25978
   4b497:	a1 78 59 02 00       	mov    eax,ds:@obj3:mouse_x                                         ; fixup: num: 11795, src obj: 1, src ofs: 0x4b498, dst obj: 3, dst ofs: 0x25978
   4b49c:	8b 7c 24 40          	mov    edi,DWORD PTR [esp+0x40]
   4b4a0:	39 f8                	cmp    eax,edi
   4b4a2:	7c 02                	jl     chessgame_branch_91
   4b4a4:	89 fa                	mov    edx,edi
chessgame_branch_91:
   4b4a6:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
   4b4aa:	8b 1c 84             	mov    ebx,DWORD PTR [esp+eax*4]
   4b4ad:	89 93 98 00 00 00    	mov    DWORD PTR [ebx+0x98],edx
   4b4b3:	8b 04 84             	mov    eax,DWORD PTR [esp+eax*4]
   4b4b6:	8b 5c 24 58          	mov    ebx,DWORD PTR [esp+0x58]
   4b4ba:	8b 90 98 00 00 00    	mov    edx,DWORD PTR [eax+0x98]
   4b4c0:	01 da                	add    edx,ebx
   4b4c2:	4a                   	dec    edx
   4b4c3:	89 90 a0 00 00 00    	mov    DWORD PTR [eax+0xa0],edx
   4b4c9:	a1 7c 59 02 00       	mov    eax,ds:@obj3:mouse_y                                         ; fixup: num: 11794, src obj: 1, src ofs: 0x4b4ca, dst obj: 3, dst ofs: 0x2597c
   4b4ce:	8b 15 7c 59 02 00    	mov    edx,DWORD PTR ds:@obj3:mouse_y                               ; fixup: num: 11793, src obj: 1, src ofs: 0x4b4d0, dst obj: 3, dst ofs: 0x2597c
   4b4d4:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
   4b4d8:	39 ca                	cmp    edx,ecx
   4b4da:	7c 02                	jl     chessgame_branch_92
   4b4dc:	89 c8                	mov    eax,ecx
chessgame_branch_92:
   4b4de:	8b 54 24 34          	mov    edx,DWORD PTR [esp+0x34]
   4b4e2:	8d 14 95 00 00 00 00 	lea    edx,[edx*4+0x0]
   4b4e9:	89 54 24 3c          	mov    DWORD PTR [esp+0x3c],edx
   4b4ed:	8b 14 14             	mov    edx,DWORD PTR [esp+edx*1]
   4b4f0:	89 82 9c 00 00 00    	mov    DWORD PTR [edx+0x9c],eax
   4b4f6:	8b 44 24 3c          	mov    eax,DWORD PTR [esp+0x3c]
   4b4fa:	8b 04 04             	mov    eax,DWORD PTR [esp+eax*1]
   4b4fd:	8b 74 24 50          	mov    esi,DWORD PTR [esp+0x50]
   4b501:	8b 90 9c 00 00 00    	mov    edx,DWORD PTR [eax+0x9c]
   4b507:	01 f2                	add    edx,esi
   4b509:	4a                   	dec    edx
   4b50a:	89 90 a4 00 00 00    	mov    DWORD PTR [eax+0xa4],edx
   4b510:	8b 44 24 3c          	mov    eax,DWORD PTR [esp+0x3c]
   4b514:	8b 04 04             	mov    eax,DWORD PTR [esp+eax*1]
   4b517:	8b b0 98 00 00 00    	mov    esi,DWORD PTR [eax+0x98]
   4b51d:	8b b8 9c 00 00 00    	mov    edi,DWORD PTR [eax+0x9c]
   4b523:	8b 90 a0 00 00 00    	mov    edx,DWORD PTR [eax+0xa0]
   4b529:	8b 80 a4 00 00 00    	mov    eax,DWORD PTR [eax+0xa4]
   4b52f:	89 54 24 60          	mov    DWORD PTR [esp+0x60],edx
   4b533:	89 44 24 68          	mov    DWORD PTR [esp+0x68],eax
   4b537:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
   4b53b:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
   4b53f:	50                   	push   eax
   4b540:	8b 5c 24 64          	mov    ebx,DWORD PTR [esp+0x64]
   4b544:	8b 4c 24 6c          	mov    ecx,DWORD PTR [esp+0x6c]
   4b548:	52                   	push   edx
   4b549:	89 f0                	mov    eax,esi
   4b54b:	89 fa                	mov    edx,edi
   4b54d:	e8 2e 7e fc ff       	call   get_transparent_bm_window
   4b552:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
   4b556:	8b 44 24 3c          	mov    eax,DWORD PTR [esp+0x3c]
   4b55a:	8b 04 04             	mov    eax,DWORD PTR [esp+eax*1]
   4b55d:	8b 98 b0 00 00 00    	mov    ebx,DWORD PTR [eax+0xb0]
   4b563:	8b 90 a8 00 00 00    	mov    edx,DWORD PTR [eax+0xa8]
   4b569:	8b 88 ac 00 00 00    	mov    ecx,DWORD PTR [eax+0xac]
   4b56f:	89 54 24 3c          	mov    DWORD PTR [esp+0x3c],edx
   4b573:	53                   	push   ebx
   4b574:	8b 5c 24 40          	mov    ebx,DWORD PTR [esp+0x40]
   4b578:	8b 90 9c 00 00 00    	mov    edx,DWORD PTR [eax+0x9c]
   4b57e:	8b 80 98 00 00 00    	mov    eax,DWORD PTR [eax+0x98]
   4b584:	e8 37 a4 fb ff       	call   VESA_transparent_blit
   4b589:	e9 6e fd ff ff       	jmp    chessgame_branch_79
chessgame_branch_93:
   4b58e:	ba d4 a1 01 00       	mov    edx,@obj3:music                                              ; fixup: num: 11802, src obj: 1, src ofs: 0x4b58f, dst obj: 3, dst ofs: 0x1a1d4
chessgame_branch_94:
   4b593:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 11801, src obj: 1, src ofs: 0x4b595, dst obj: 3, dst ofs: 0x25974
   4b59a:	74 09                	je     chessgame_branch_95
   4b59c:	89 d0                	mov    eax,edx
   4b59e:	e8 fd 03 fc ff       	call   update_mod_9
   4b5a3:	eb ee                	jmp    chessgame_branch_94
chessgame_branch_95:
   4b5a5:	83 3d 78 59 02 00 2a 	cmp    DWORD PTR ds:@obj3:mouse_x,0x2a                              ; fixup: num: 11810, src obj: 1, src ofs: 0x4b5a7, dst obj: 3, dst ofs: 0x25978
   4b5ac:	7c 28                	jl     chessgame_branch_96
   4b5ae:	83 3d 78 59 02 00 5e 	cmp    DWORD PTR ds:@obj3:mouse_x,0x5e                              ; fixup: num: 11809, src obj: 1, src ofs: 0x4b5b0, dst obj: 3, dst ofs: 0x25978
   4b5b5:	7f 1f                	jg     chessgame_branch_96
   4b5b7:	81 3d 7c 59 02 00 fa 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0xfa                     ; fixup: num: 11808, src obj: 1, src ofs: 0x4b5b9, dst obj: 3, dst ofs: 0x2597c
   4b5c1:	7c 13                	jl     chessgame_branch_96
   4b5c3:	81 3d 7c 59 02 00 2d 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x12d                    ; fixup: num: 11807, src obj: 1, src ofs: 0x4b5c5, dst obj: 3, dst ofs: 0x2597c
   4b5cd:	7f 07                	jg     chessgame_branch_96
   4b5cf:	b8 01 00 00 00       	mov    eax,0x1
   4b5d4:	eb 02                	jmp    chessgame_branch_97
chessgame_branch_96:
   4b5d6:	31 c0                	xor    eax,eax
chessgame_branch_97:
   4b5d8:	85 c0                	test   eax,eax
   4b5da:	0f 85 c3 01 00 00    	jne    chessgame_branch_112
   4b5e0:	81 3d 78 59 02 00 ab 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0xab                     ; fixup: num: 11806, src obj: 1, src ofs: 0x4b5e2, dst obj: 3, dst ofs: 0x25978
   4b5ea:	7c 2b                	jl     chessgame_branch_98
   4b5ec:	81 3d 78 59 02 00 de 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0xde                     ; fixup: num: 11805, src obj: 1, src ofs: 0x4b5ee, dst obj: 3, dst ofs: 0x25978
   4b5f6:	7f 1f                	jg     chessgame_branch_98
   4b5f8:	81 3d 7c 59 02 00 0f 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x10f                    ; fixup: num: 11804, src obj: 1, src ofs: 0x4b5fa, dst obj: 3, dst ofs: 0x2597c
   4b602:	7c 13                	jl     chessgame_branch_98
   4b604:	81 3d 7c 59 02 00 43 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x143                    ; fixup: num: 11803, src obj: 1, src ofs: 0x4b606, dst obj: 3, dst ofs: 0x2597c
   4b60e:	7f 07                	jg     chessgame_branch_98
   4b610:	b8 01 00 00 00       	mov    eax,0x1
   4b615:	eb 02                	jmp    chessgame_branch_99
chessgame_branch_98:
   4b617:	31 c0                	xor    eax,eax
chessgame_branch_99:
   4b619:	85 c0                	test   eax,eax
   4b61b:	0f 84 ce fc ff ff    	je     chessgame_branch_78
   4b621:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
   4b625:	85 c9                	test   ecx,ecx
   4b627:	74 1e                	je     chessgame_branch_101
   4b629:	8b 71 08             	mov    esi,DWORD PTR [ecx+0x8]
   4b62c:	89 ca                	mov    edx,ecx
   4b62e:	85 f6                	test   esi,esi
   4b630:	74 07                	je     chessgame_branch_100
   4b632:	89 f0                	mov    eax,esi
   4b634:	e8 af 5d 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
chessgame_branch_100:
   4b639:	89 d0                	mov    eax,edx
   4b63b:	c7 42 08 00 00 00 00 	mov    DWORD PTR [edx+0x8],0x0
   4b642:	e8 31 6a 02 00       	call   W?$dln(pnv)v
chessgame_branch_101:
   4b647:	8b bd 80 00 00 00    	mov    edi,DWORD PTR [ebp+0x80]
   4b64d:	89 ea                	mov    edx,ebp
   4b64f:	85 ff                	test   edi,edi
   4b651:	74 07                	je     chessgame_branch_102
   4b653:	89 f8                	mov    eax,edi
   4b655:	e8 8e 5d 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
chessgame_branch_102:
   4b65a:	8d 82 a8 00 00 00    	lea    eax,[edx+0xa8]
   4b660:	8b 68 08             	mov    ebp,DWORD PTR [eax+0x8]
   4b663:	89 c2                	mov    edx,eax
   4b665:	85 ed                	test   ebp,ebp
   4b667:	74 07                	je     chessgame_branch_103
   4b669:	89 e8                	mov    eax,ebp
   4b66b:	e8 78 5d 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
chessgame_branch_103:
   4b670:	8d 82 58 ff ff ff    	lea    eax,[edx-0xa8]
   4b676:	c7 42 08 00 00 00 00 	mov    DWORD PTR [edx+0x8],0x0
   4b67d:	e8 f6 69 02 00       	call   W?$dln(pnv)v
   4b682:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
   4b686:	8b 9a 80 00 00 00    	mov    ebx,DWORD PTR [edx+0x80]
   4b68c:	85 db                	test   ebx,ebx
   4b68e:	74 07                	je     chessgame_branch_104
   4b690:	89 d8                	mov    eax,ebx
   4b692:	e8 51 5d 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
chessgame_branch_104:
   4b697:	8d 82 a8 00 00 00    	lea    eax,[edx+0xa8]
   4b69d:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
   4b6a0:	89 c2                	mov    edx,eax
   4b6a2:	85 c9                	test   ecx,ecx
   4b6a4:	74 07                	je     chessgame_branch_105
   4b6a6:	89 c8                	mov    eax,ecx
   4b6a8:	e8 3b 5d 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
chessgame_branch_105:
   4b6ad:	8d 82 58 ff ff ff    	lea    eax,[edx-0xa8]
   4b6b3:	c7 42 08 00 00 00 00 	mov    DWORD PTR [edx+0x8],0x0
   4b6ba:	e8 b9 69 02 00       	call   W?$dln(pnv)v
   4b6bf:	8b 34 24             	mov    esi,DWORD PTR [esp]
   4b6c2:	85 f6                	test   esi,esi
   4b6c4:	74 3b                	je     chessgame_branch_108
   4b6c6:	8b be 80 00 00 00    	mov    edi,DWORD PTR [esi+0x80]
   4b6cc:	89 f2                	mov    edx,esi
   4b6ce:	85 ff                	test   edi,edi
   4b6d0:	74 07                	je     chessgame_branch_106
   4b6d2:	89 f8                	mov    eax,edi
   4b6d4:	e8 0f 5d 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
chessgame_branch_106:
   4b6d9:	8d 82 a8 00 00 00    	lea    eax,[edx+0xa8]
   4b6df:	8b 68 08             	mov    ebp,DWORD PTR [eax+0x8]
   4b6e2:	89 c2                	mov    edx,eax
   4b6e4:	85 ed                	test   ebp,ebp
   4b6e6:	74 07                	je     chessgame_branch_107
   4b6e8:	89 e8                	mov    eax,ebp
   4b6ea:	e8 f9 5c 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
chessgame_branch_107:
   4b6ef:	8d 82 58 ff ff ff    	lea    eax,[edx-0xa8]
   4b6f5:	c7 42 08 00 00 00 00 	mov    DWORD PTR [edx+0x8],0x0
   4b6fc:	e8 77 69 02 00       	call   W?$dln(pnv)v
chessgame_branch_108:
   4b701:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
   4b705:	85 c0                	test   eax,eax
   4b707:	74 3b                	je     chessgame_branch_111
   4b709:	8b 98 80 00 00 00    	mov    ebx,DWORD PTR [eax+0x80]
   4b70f:	89 c2                	mov    edx,eax
   4b711:	85 db                	test   ebx,ebx
   4b713:	74 07                	je     chessgame_branch_109
   4b715:	89 d8                	mov    eax,ebx
   4b717:	e8 cc 5c 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
chessgame_branch_109:
   4b71c:	8d 82 a8 00 00 00    	lea    eax,[edx+0xa8]
   4b722:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
   4b725:	89 c2                	mov    edx,eax
   4b727:	85 c9                	test   ecx,ecx
   4b729:	74 07                	je     chessgame_branch_110
   4b72b:	89 c8                	mov    eax,ecx
   4b72d:	e8 b6 5c 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
chessgame_branch_110:
   4b732:	8d 82 58 ff ff ff    	lea    eax,[edx-0xa8]
   4b738:	c7 42 08 00 00 00 00 	mov    DWORD PTR [edx+0x8],0x0
   4b73f:	e8 34 69 02 00       	call   W?$dln(pnv)v
chessgame_branch_111:
   4b744:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
   4b748:	e8 9b 5c 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   4b74d:	6a 01                	push   0x1
   4b74f:	b9 e0 01 00 00       	mov    ecx,0x1e0
   4b754:	bb 80 02 00 00       	mov    ebx,0x280
   4b759:	6a 00                	push   0x0
   4b75b:	31 d2                	xor    edx,edx
   4b75d:	31 c0                	xor    eax,eax
   4b75f:	e8 ec 9f fb ff       	call   VESA_rectangle
   4b764:	68 df 01 00 00       	push   0x1df
   4b769:	b9 7f 02 00 00       	mov    ecx,0x27f
   4b76e:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 11813, src obj: 1, src ofs: 0x4b76f, dst obj: 3, dst ofs: 0x25a84
   4b773:	31 db                	xor    ebx,ebx
   4b775:	31 d2                	xor    edx,edx
   4b777:	e8 e4 22 00 00       	call   refresh_area
   4b77c:	83 ec 04             	sub    esp,0x4
   4b77f:	dd 05 b4 0f 01 00    	fld    QWORD PTR ds:@obj3:pal_gamma                                 ; fixup: num: 11812, src obj: 1, src ofs: 0x4b781, dst obj: 3, dst ofs: 0x10fb4
   4b785:	d9 1c 24             	fstp   DWORD PTR [esp]
   4b788:	ba 00 01 00 00       	mov    edx,0x100
   4b78d:	a1 84 60 02 00       	mov    eax,ds:@obj3:palette                                         ; fixup: num: 11811, src obj: 1, src ofs: 0x4b78e, dst obj: 3, dst ofs: 0x26084
   4b792:	e8 d9 6f fc ff       	call   setvgapalette_mod_14
   4b797:	30 c0                	xor    al,al
   4b799:	83 c4 6c             	add    esp,0x6c
   4b79c:	5d                   	pop    ebp
   4b79d:	5f                   	pop    edi
   4b79e:	5e                   	pop    esi
   4b79f:	5a                   	pop    edx
   4b7a0:	59                   	pop    ecx
   4b7a1:	5b                   	pop    ebx
   4b7a2:	c3                   	ret    
chessgame_branch_112:
   4b7a3:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
   4b7a7:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
   4b7ab:	8b 89 ac 00 00 00    	mov    ecx,DWORD PTR [ecx+0xac]
   4b7b1:	0f af 8a a8 00 00 00 	imul   ecx,DWORD PTR [edx+0xa8]
   4b7b8:	8b 7c 24 30          	mov    edi,DWORD PTR [esp+0x30]
   4b7bc:	8b b2 b0 00 00 00    	mov    esi,DWORD PTR [edx+0xb0]
   4b7c2:	bb 80 02 00 00       	mov    ebx,0x280
   4b7c7:	57                   	push   edi
   4b7c8:	89 c8                	mov    eax,ecx
   4b7ca:	c1 e9 02             	shr    ecx,0x2
   4b7cd:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
   4b7cf:	8a c8                	mov    cl,al
   4b7d1:	80 e1 03             	and    cl,0x3
   4b7d4:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
   4b7d6:	5f                   	pop    edi
   4b7d7:	57                   	push   edi
   4b7d8:	b9 e0 01 00 00       	mov    ecx,0x1e0
   4b7dd:	8b 35 34 30 02 00    	mov    esi,DWORD PTR ds:@obj3:the_viewport                          ; fixup: num: 11816, src obj: 1, src ofs: 0x4b7df, dst obj: 3, dst ofs: 0x23034
   4b7e3:	6a 00                	push   0x0
   4b7e5:	31 d2                	xor    edx,edx
   4b7e7:	31 c0                	xor    eax,eax
   4b7e9:	ff 56 30             	call   DWORD PTR [esi+0x30]
   4b7ec:	bb 01 00 00 00       	mov    ebx,0x1
   4b7f1:	ba 26 bc 00 00       	mov    edx,@obj3:puzzles_cpp_variable_14                            ; fixup: num: 11815, src obj: 1, src ofs: 0x4b7f2, dst obj: 3, dst ofs: 0xbc26
   4b7f6:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
   4b7fa:	e8 01 4a fc ff       	call   load_from_file_mod_11
   4b7ff:	ba 1d 00 00 00       	mov    edx,0x1d
   4b804:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
   4b808:	e8 d3 57 fc ff       	call   play_mod_11
   4b80d:	31 db                	xor    ebx,ebx
   4b80f:	ba 3f bc 00 00       	mov    edx,@obj3:puzzles_cpp_variable_15                            ; fixup: num: 11814, src obj: 1, src ofs: 0x4b810, dst obj: 3, dst ofs: 0xbc3f
   4b814:	89 e8                	mov    eax,ebp
   4b816:	e8 e5 49 fc ff       	call   load_from_file_mod_11
   4b81b:	8b 8d ac 00 00 00    	mov    ecx,DWORD PTR [ebp+0xac]
   4b821:	0f af 8d a8 00 00 00 	imul   ecx,DWORD PTR [ebp+0xa8]
   4b828:	8b b5 b0 00 00 00    	mov    esi,DWORD PTR [ebp+0xb0]
   4b82e:	57                   	push   edi
   4b82f:	89 c8                	mov    eax,ecx
   4b831:	c1 e9 02             	shr    ecx,0x2
   4b834:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
   4b836:	8a c8                	mov    cl,al
   4b838:	80 e1 03             	and    cl,0x3
   4b83b:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
   4b83d:	5f                   	pop    edi
   4b83e:	ba 01 00 00 00       	mov    edx,0x1
   4b843:	89 e8                	mov    eax,ebp
   4b845:	e8 e6 4c fc ff       	call   go_to_frame
   4b84a:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
   4b84e:	8d 04 85 00 00 00 00 	lea    eax,[eax*4+0x0]
   4b855:	89 44 24 38          	mov    DWORD PTR [esp+0x38],eax
   4b859:	8b 04 04             	mov    eax,DWORD PTR [esp+eax*1]
   4b85c:	8b 90 a0 00 00 00    	mov    edx,DWORD PTR [eax+0xa0]
   4b862:	2b 90 98 00 00 00    	sub    edx,DWORD PTR [eax+0x98]
   4b868:	42                   	inc    edx
   4b869:	8b 88 9c 00 00 00    	mov    ecx,DWORD PTR [eax+0x9c]
   4b86f:	89 54 24 54          	mov    DWORD PTR [esp+0x54],edx
   4b873:	8b 90 a4 00 00 00    	mov    edx,DWORD PTR [eax+0xa4]
   4b879:	29 ca                	sub    edx,ecx
   4b87b:	42                   	inc    edx
   4b87c:	89 54 24 4c          	mov    DWORD PTR [esp+0x4c],edx
   4b880:	8b 3d 78 59 02 00    	mov    edi,DWORD PTR ds:@obj3:mouse_x                               ; fixup: num: 11818, src obj: 1, src ofs: 0x4b882, dst obj: 3, dst ofs: 0x25978
   4b886:	8b 44 24 54          	mov    eax,DWORD PTR [esp+0x54]
   4b88a:	01 f8                	add    eax,edi
   4b88c:	48                   	dec    eax
   4b88d:	89 44 24 5c          	mov    DWORD PTR [esp+0x5c],eax
   4b891:	8b 35 7c 59 02 00    	mov    esi,DWORD PTR ds:@obj3:mouse_y                               ; fixup: num: 11817, src obj: 1, src ofs: 0x4b893, dst obj: 3, dst ofs: 0x2597c
   4b897:	8d 44 32 ff          	lea    eax,[edx+esi*1-0x1]
   4b89b:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
   4b89f:	89 44 24 64          	mov    DWORD PTR [esp+0x64],eax
   4b8a3:	8b 85 b0 00 00 00    	mov    eax,DWORD PTR [ebp+0xb0]
   4b8a9:	89 42 08             	mov    DWORD PTR [edx+0x8],eax
   4b8ac:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
   4b8b0:	50                   	push   eax
   4b8b1:	8b 5c 24 60          	mov    ebx,DWORD PTR [esp+0x60]
   4b8b5:	8b 4c 24 68          	mov    ecx,DWORD PTR [esp+0x68]
   4b8b9:	52                   	push   edx
   4b8ba:	89 f8                	mov    eax,edi
   4b8bc:	89 f2                	mov    edx,esi
   4b8be:	e8 bd 7a fc ff       	call   get_transparent_bm_window
   4b8c3:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
   4b8c7:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
   4b8cb:	8b 04 04             	mov    eax,DWORD PTR [esp+eax*1]
   4b8ce:	8b 90 a0 00 00 00    	mov    edx,DWORD PTR [eax+0xa0]
   4b8d4:	2b 90 98 00 00 00    	sub    edx,DWORD PTR [eax+0x98]
   4b8da:	42                   	inc    edx
   4b8db:	8b 88 9c 00 00 00    	mov    ecx,DWORD PTR [eax+0x9c]
   4b8e1:	89 54 24 54          	mov    DWORD PTR [esp+0x54],edx
   4b8e5:	8b 90 a4 00 00 00    	mov    edx,DWORD PTR [eax+0xa4]
   4b8eb:	29 ca                	sub    edx,ecx
   4b8ed:	b8 df 01 00 00       	mov    eax,0x1df
   4b8f2:	42                   	inc    edx
   4b8f3:	29 d0                	sub    eax,edx
   4b8f5:	8b 5c 24 54          	mov    ebx,DWORD PTR [esp+0x54]
   4b8f9:	89 44 24 44          	mov    DWORD PTR [esp+0x44],eax
   4b8fd:	b8 7f 02 00 00       	mov    eax,0x27f
   4b902:	29 d8                	sub    eax,ebx
   4b904:	89 54 24 4c          	mov    DWORD PTR [esp+0x4c],edx
   4b908:	89 44 24 48          	mov    DWORD PTR [esp+0x48],eax
chessgame_branch_113:
   4b90c:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 11824, src obj: 1, src ofs: 0x4b90e, dst obj: 3, dst ofs: 0x25974
   4b913:	0f 85 16 03 00 00    	jne    chessgame_branch_132
chessgame_branch_114:
   4b919:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 11823, src obj: 1, src ofs: 0x4b91a, dst obj: 3, dst ofs: 0x1a1d4
   4b91e:	e8 7d 00 fc ff       	call   update_mod_9
   4b923:	89 e8                	mov    eax,ebp
   4b925:	e8 96 56 fc ff       	call   update_mod_11
   4b92a:	84 c0                	test   al,al
   4b92c:	75 de                	jne    chessgame_branch_113
   4b92e:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 11822, src obj: 1, src ofs: 0x4b92f, dst obj: 3, dst ofs: 0x1a1d4
   4b933:	8b 54 24 34          	mov    edx,DWORD PTR [esp+0x34]
   4b937:	bb d4 a1 01 00       	mov    ebx,@obj3:music                                              ; fixup: num: 11821, src obj: 1, src ofs: 0x4b938, dst obj: 3, dst ofs: 0x1a1d4
   4b93c:	e8 5f 00 fc ff       	call   update_mod_9
   4b941:	8d 14 95 00 00 00 00 	lea    edx,[edx*4+0x0]
chessgame_branch_115:
   4b948:	8b 04 14             	mov    eax,DWORD PTR [esp+edx*1]
   4b94b:	e8 70 56 fc ff       	call   update_mod_11
   4b950:	84 c0                	test   al,al
   4b952:	75 13                	jne    chessgame_branch_116
   4b954:	e8 a9 67 02 00       	call   clock_
   4b959:	a3 44 7e 01 00       	mov    ds:@obj3:current_time,eax                                    ; fixup: num: 11820, src obj: 1, src ofs: 0x4b95a, dst obj: 3, dst ofs: 0x17e44
   4b95e:	89 d8                	mov    eax,ebx
   4b960:	e8 3b 00 fc ff       	call   update_mod_9
   4b965:	eb e1                	jmp    chessgame_branch_115
chessgame_branch_116:
   4b967:	8b 4c 24 64          	mov    ecx,DWORD PTR [esp+0x64]
   4b96b:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
   4b96f:	8b 15 34 30 02 00    	mov    edx,DWORD PTR ds:@obj3:the_viewport                          ; fixup: num: 11819, src obj: 1, src ofs: 0x4b971, dst obj: 3, dst ofs: 0x23034
   4b975:	8b 5c 24 5c          	mov    ebx,DWORD PTR [esp+0x5c]
   4b979:	89 54 24 3c          	mov    DWORD PTR [esp+0x3c],edx
   4b97d:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
   4b980:	29 f1                	sub    ecx,esi
   4b982:	29 fb                	sub    ebx,edi
   4b984:	50                   	push   eax
   4b985:	43                   	inc    ebx
   4b986:	89 f2                	mov    edx,esi
   4b988:	6a 00                	push   0x0
   4b98a:	8b 74 24 44          	mov    esi,DWORD PTR [esp+0x44]
   4b98e:	41                   	inc    ecx
   4b98f:	89 f8                	mov    eax,edi
   4b991:	ff 56 30             	call   DWORD PTR [esi+0x30]
   4b994:	8b 85 8c 00 00 00    	mov    eax,DWORD PTR [ebp+0x8c]
   4b99a:	8b 95 88 00 00 00    	mov    edx,DWORD PTR [ebp+0x88]
   4b9a0:	48                   	dec    eax
   4b9a1:	39 d0                	cmp    eax,edx
   4b9a3:	75 2c                	jne    chessgame_branch_117
   4b9a5:	8b 7c 24 30          	mov    edi,DWORD PTR [esp+0x30]
   4b9a9:	b9 e0 01 00 00       	mov    ecx,0x1e0
   4b9ae:	57                   	push   edi
   4b9af:	bb 80 02 00 00       	mov    ebx,0x280
   4b9b4:	8b 35 34 30 02 00    	mov    esi,DWORD PTR ds:@obj3:the_viewport                          ; fixup: num: 11830, src obj: 1, src ofs: 0x4b9b6, dst obj: 3, dst ofs: 0x23034
   4b9ba:	6a 00                	push   0x0
   4b9bc:	31 d2                	xor    edx,edx
   4b9be:	31 c0                	xor    eax,eax
   4b9c0:	ff 56 30             	call   DWORD PTR [esi+0x30]
   4b9c3:	ba 01 00 00 00       	mov    edx,0x1
   4b9c8:	89 e8                	mov    eax,ebp
   4b9ca:	e8 61 4b fc ff       	call   go_to_frame
   4b9cf:	eb 5f                	jmp    chessgame_branch_118
chessgame_branch_117:
   4b9d1:	8b 95 9c 00 00 00    	mov    edx,DWORD PTR [ebp+0x9c]
   4b9d7:	8b b5 a8 00 00 00    	mov    esi,DWORD PTR [ebp+0xa8]
   4b9dd:	0f af d6             	imul   edx,esi
   4b9e0:	8b 85 a0 00 00 00    	mov    eax,DWORD PTR [ebp+0xa0]
   4b9e6:	2b 85 98 00 00 00    	sub    eax,DWORD PTR [ebp+0x98]
   4b9ec:	8d 58 01             	lea    ebx,[eax+0x1]
   4b9ef:	8b 8d 9c 00 00 00    	mov    ecx,DWORD PTR [ebp+0x9c]
   4b9f5:	8b 85 a4 00 00 00    	mov    eax,DWORD PTR [ebp+0xa4]
   4b9fb:	29 c8                	sub    eax,ecx
   4b9fd:	8d 48 01             	lea    ecx,[eax+0x1]
   4ba00:	8b 85 b0 00 00 00    	mov    eax,DWORD PTR [ebp+0xb0]
   4ba06:	01 d0                	add    eax,edx
   4ba08:	8b 95 98 00 00 00    	mov    edx,DWORD PTR [ebp+0x98]
   4ba0e:	01 c2                	add    edx,eax
   4ba10:	89 54 24 3c          	mov    DWORD PTR [esp+0x3c],edx
   4ba14:	29 de                	sub    esi,ebx
   4ba16:	ff 74 24 3c          	push   DWORD PTR [esp+0x3c]
   4ba1a:	8b 3d 34 30 02 00    	mov    edi,DWORD PTR ds:@obj3:the_viewport                          ; fixup: num: 11829, src obj: 1, src ofs: 0x4ba1c, dst obj: 3, dst ofs: 0x23034
   4ba20:	56                   	push   esi
   4ba21:	8b 85 98 00 00 00    	mov    eax,DWORD PTR [ebp+0x98]
   4ba27:	8b 95 9c 00 00 00    	mov    edx,DWORD PTR [ebp+0x9c]
   4ba2d:	ff 57 30             	call   DWORD PTR [edi+0x30]
chessgame_branch_118:
   4ba30:	81 3d 78 59 02 00 ee 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0xee                     ; fixup: num: 11828, src obj: 1, src ofs: 0x4ba32, dst obj: 3, dst ofs: 0x25978
   4ba3a:	7c 2b                	jl     chessgame_branch_119
   4ba3c:	81 3d 78 59 02 00 20 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x120                    ; fixup: num: 11827, src obj: 1, src ofs: 0x4ba3e, dst obj: 3, dst ofs: 0x25978
   4ba46:	7f 1f                	jg     chessgame_branch_119
   4ba48:	81 3d 7c 59 02 00 a7 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0xa7                     ; fixup: num: 11826, src obj: 1, src ofs: 0x4ba4a, dst obj: 3, dst ofs: 0x2597c
   4ba52:	7c 13                	jl     chessgame_branch_119
   4ba54:	81 3d 7c 59 02 00 ca 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0xca                     ; fixup: num: 11825, src obj: 1, src ofs: 0x4ba56, dst obj: 3, dst ofs: 0x2597c
   4ba5e:	7f 07                	jg     chessgame_branch_119
   4ba60:	b8 01 00 00 00       	mov    eax,0x1
   4ba65:	eb 02                	jmp    chessgame_branch_120
chessgame_branch_119:
   4ba67:	31 c0                	xor    eax,eax
chessgame_branch_120:
   4ba69:	85 c0                	test   eax,eax
   4ba6b:	0f 85 bb 00 00 00    	jne    chessgame_branch_127
   4ba71:	81 3d 78 59 02 00 13 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x113                    ; fixup: num: 11745, src obj: 1, src ofs: 0x4ba73, dst obj: 3, dst ofs: 0x25978
   4ba7b:	7c 2b                	jl     chessgame_branch_121
   4ba7d:	81 3d 78 59 02 00 4a 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x14a                    ; fixup: num: 11744, src obj: 1, src ofs: 0x4ba7f, dst obj: 3, dst ofs: 0x25978
   4ba87:	7f 1f                	jg     chessgame_branch_121
   4ba89:	81 3d 7c 59 02 00 d0 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0xd0                     ; fixup: num: 11743, src obj: 1, src ofs: 0x4ba8b, dst obj: 3, dst ofs: 0x2597c
   4ba93:	7c 13                	jl     chessgame_branch_121
   4ba95:	81 3d 7c 59 02 00 f7 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0xf7                     ; fixup: num: 11742, src obj: 1, src ofs: 0x4ba97, dst obj: 3, dst ofs: 0x2597c
   4ba9f:	7f 07                	jg     chessgame_branch_121
   4baa1:	b8 01 00 00 00       	mov    eax,0x1
   4baa6:	eb 02                	jmp    chessgame_branch_122
chessgame_branch_121:
   4baa8:	31 c0                	xor    eax,eax
chessgame_branch_122:
   4baaa:	85 c0                	test   eax,eax
   4baac:	0f 85 7a 00 00 00    	jne    chessgame_branch_127
   4bab2:	81 3d 78 59 02 00 eb 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0xeb                     ; fixup: num: 11741, src obj: 1, src ofs: 0x4bab4, dst obj: 3, dst ofs: 0x25978
   4babc:	7c 2b                	jl     chessgame_branch_123
   4babe:	81 3d 78 59 02 00 26 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x126                    ; fixup: num: 11740, src obj: 1, src ofs: 0x4bac0, dst obj: 3, dst ofs: 0x25978
   4bac8:	7f 1f                	jg     chessgame_branch_123
   4baca:	81 3d 7c 59 02 00 1b 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x11b                    ; fixup: num: 11739, src obj: 1, src ofs: 0x4bacc, dst obj: 3, dst ofs: 0x2597c
   4bad4:	7c 13                	jl     chessgame_branch_123
   4bad6:	81 3d 7c 59 02 00 4e 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x14e                    ; fixup: num: 11738, src obj: 1, src ofs: 0x4bad8, dst obj: 3, dst ofs: 0x2597c
   4bae0:	7f 07                	jg     chessgame_branch_123
   4bae2:	b8 01 00 00 00       	mov    eax,0x1
   4bae7:	eb 02                	jmp    chessgame_branch_124
chessgame_branch_123:
   4bae9:	31 c0                	xor    eax,eax
chessgame_branch_124:
   4baeb:	85 c0                	test   eax,eax
   4baed:	75 3d                	jne    chessgame_branch_127
   4baef:	81 3d 78 59 02 00 87 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x87                     ; fixup: num: 11737, src obj: 1, src ofs: 0x4baf1, dst obj: 3, dst ofs: 0x25978
   4baf9:	7c 2b                	jl     chessgame_branch_125
   4bafb:	81 3d 78 59 02 00 b0 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0xb0                     ; fixup: num: 11736, src obj: 1, src ofs: 0x4bafd, dst obj: 3, dst ofs: 0x25978
   4bb05:	7f 1f                	jg     chessgame_branch_125
   4bb07:	81 3d 7c 59 02 00 9a 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x9a                     ; fixup: num: 11735, src obj: 1, src ofs: 0x4bb09, dst obj: 3, dst ofs: 0x2597c
   4bb11:	7c 13                	jl     chessgame_branch_125
   4bb13:	81 3d 7c 59 02 00 ba 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0xba                     ; fixup: num: 11750, src obj: 1, src ofs: 0x4bb15, dst obj: 3, dst ofs: 0x2597c
   4bb1d:	7f 07                	jg     chessgame_branch_125
   4bb1f:	b8 01 00 00 00       	mov    eax,0x1
   4bb24:	eb 02                	jmp    chessgame_branch_126
chessgame_branch_125:
   4bb26:	31 c0                	xor    eax,eax
chessgame_branch_126:
   4bb28:	85 c0                	test   eax,eax
   4bb2a:	74 0a                	je     chessgame_branch_128
chessgame_branch_127:
   4bb2c:	c7 44 24 34 01 00 00 00 	mov    DWORD PTR [esp+0x34],0x1
   4bb34:	eb 04                	jmp    chessgame_branch_129
chessgame_branch_128:
   4bb36:	89 44 24 34          	mov    DWORD PTR [esp+0x34],eax
chessgame_branch_129:
   4bb3a:	a1 78 59 02 00       	mov    eax,ds:@obj3:mouse_x                                         ; fixup: num: 11749, src obj: 1, src ofs: 0x4bb3b, dst obj: 3, dst ofs: 0x25978
   4bb3f:	8b 15 78 59 02 00    	mov    edx,DWORD PTR ds:@obj3:mouse_x                               ; fixup: num: 11748, src obj: 1, src ofs: 0x4bb41, dst obj: 3, dst ofs: 0x25978
   4bb45:	8b 5c 24 48          	mov    ebx,DWORD PTR [esp+0x48]
   4bb49:	39 da                	cmp    edx,ebx
   4bb4b:	7c 02                	jl     chessgame_branch_130
   4bb4d:	89 d8                	mov    eax,ebx
chessgame_branch_130:
   4bb4f:	8b 54 24 34          	mov    edx,DWORD PTR [esp+0x34]
   4bb53:	8b 1c 94             	mov    ebx,DWORD PTR [esp+edx*4]
   4bb56:	89 83 98 00 00 00    	mov    DWORD PTR [ebx+0x98],eax
   4bb5c:	8b 04 94             	mov    eax,DWORD PTR [esp+edx*4]
   4bb5f:	8b 4c 24 54          	mov    ecx,DWORD PTR [esp+0x54]
   4bb63:	8b 90 98 00 00 00    	mov    edx,DWORD PTR [eax+0x98]
   4bb69:	01 ca                	add    edx,ecx
   4bb6b:	4a                   	dec    edx
   4bb6c:	89 90 a0 00 00 00    	mov    DWORD PTR [eax+0xa0],edx
   4bb72:	a1 7c 59 02 00       	mov    eax,ds:@obj3:mouse_y                                         ; fixup: num: 11747, src obj: 1, src ofs: 0x4bb73, dst obj: 3, dst ofs: 0x2597c
   4bb77:	8b 15 7c 59 02 00    	mov    edx,DWORD PTR ds:@obj3:mouse_y                               ; fixup: num: 11746, src obj: 1, src ofs: 0x4bb79, dst obj: 3, dst ofs: 0x2597c
   4bb7d:	8b 74 24 44          	mov    esi,DWORD PTR [esp+0x44]
   4bb81:	39 f2                	cmp    edx,esi
   4bb83:	7c 02                	jl     chessgame_branch_131
   4bb85:	89 f0                	mov    eax,esi
chessgame_branch_131:
   4bb87:	8b 54 24 34          	mov    edx,DWORD PTR [esp+0x34]
   4bb8b:	8d 14 95 00 00 00 00 	lea    edx,[edx*4+0x0]
   4bb92:	89 54 24 3c          	mov    DWORD PTR [esp+0x3c],edx
   4bb96:	8b 14 14             	mov    edx,DWORD PTR [esp+edx*1]
   4bb99:	89 82 9c 00 00 00    	mov    DWORD PTR [edx+0x9c],eax
   4bb9f:	8b 44 24 3c          	mov    eax,DWORD PTR [esp+0x3c]
   4bba3:	8b 04 04             	mov    eax,DWORD PTR [esp+eax*1]
   4bba6:	8b 7c 24 4c          	mov    edi,DWORD PTR [esp+0x4c]
   4bbaa:	8b 90 9c 00 00 00    	mov    edx,DWORD PTR [eax+0x9c]
   4bbb0:	01 fa                	add    edx,edi
   4bbb2:	4a                   	dec    edx
   4bbb3:	89 90 a4 00 00 00    	mov    DWORD PTR [eax+0xa4],edx
   4bbb9:	8b 44 24 3c          	mov    eax,DWORD PTR [esp+0x3c]
   4bbbd:	8b 04 04             	mov    eax,DWORD PTR [esp+eax*1]
   4bbc0:	8b b8 98 00 00 00    	mov    edi,DWORD PTR [eax+0x98]
   4bbc6:	8b b0 9c 00 00 00    	mov    esi,DWORD PTR [eax+0x9c]
   4bbcc:	8b 90 a0 00 00 00    	mov    edx,DWORD PTR [eax+0xa0]
   4bbd2:	8b 80 a4 00 00 00    	mov    eax,DWORD PTR [eax+0xa4]
   4bbd8:	89 54 24 5c          	mov    DWORD PTR [esp+0x5c],edx
   4bbdc:	89 44 24 64          	mov    DWORD PTR [esp+0x64],eax
   4bbe0:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
   4bbe4:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
   4bbe8:	50                   	push   eax
   4bbe9:	8b 5c 24 60          	mov    ebx,DWORD PTR [esp+0x60]
   4bbed:	8b 4c 24 68          	mov    ecx,DWORD PTR [esp+0x68]
   4bbf1:	52                   	push   edx
   4bbf2:	89 f8                	mov    eax,edi
   4bbf4:	89 f2                	mov    edx,esi
   4bbf6:	e8 85 77 fc ff       	call   get_transparent_bm_window
   4bbfb:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
   4bbff:	8b 44 24 3c          	mov    eax,DWORD PTR [esp+0x3c]
   4bc03:	8b 04 04             	mov    eax,DWORD PTR [esp+eax*1]
   4bc06:	8b 98 b0 00 00 00    	mov    ebx,DWORD PTR [eax+0xb0]
   4bc0c:	8b 88 ac 00 00 00    	mov    ecx,DWORD PTR [eax+0xac]
   4bc12:	8b 90 9c 00 00 00    	mov    edx,DWORD PTR [eax+0x9c]
   4bc18:	53                   	push   ebx
   4bc19:	8b 98 a8 00 00 00    	mov    ebx,DWORD PTR [eax+0xa8]
   4bc1f:	8b 80 98 00 00 00    	mov    eax,DWORD PTR [eax+0x98]
   4bc25:	e8 96 9d fb ff       	call   VESA_transparent_blit
   4bc2a:	e9 ea fc ff ff       	jmp    chessgame_branch_114
chessgame_branch_132:
   4bc2f:	ba d4 a1 01 00       	mov    edx,@obj3:music                                              ; fixup: num: 11755, src obj: 1, src ofs: 0x4bc30, dst obj: 3, dst ofs: 0x1a1d4
chessgame_branch_133:
   4bc34:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 11754, src obj: 1, src ofs: 0x4bc36, dst obj: 3, dst ofs: 0x25974
   4bc3b:	74 09                	je     chessgame_branch_134
   4bc3d:	89 d0                	mov    eax,edx
   4bc3f:	e8 5c fd fb ff       	call   update_mod_9
   4bc44:	eb ee                	jmp    chessgame_branch_133
chessgame_branch_134:
   4bc46:	81 3d 78 59 02 00 ee 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0xee                     ; fixup: num: 11753, src obj: 1, src ofs: 0x4bc48, dst obj: 3, dst ofs: 0x25978
   4bc50:	7c 2b                	jl     chessgame_branch_135
   4bc52:	81 3d 78 59 02 00 20 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x120                    ; fixup: num: 11752, src obj: 1, src ofs: 0x4bc54, dst obj: 3, dst ofs: 0x25978
   4bc5c:	7f 1f                	jg     chessgame_branch_135
   4bc5e:	81 3d 7c 59 02 00 a7 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0xa7                     ; fixup: num: 11751, src obj: 1, src ofs: 0x4bc60, dst obj: 3, dst ofs: 0x2597c
   4bc68:	7c 13                	jl     chessgame_branch_135
   4bc6a:	81 3d 7c 59 02 00 ca 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0xca                     ; fixup: num: 11766, src obj: 1, src ofs: 0x4bc6c, dst obj: 3, dst ofs: 0x2597c
   4bc74:	7f 07                	jg     chessgame_branch_135
   4bc76:	b8 01 00 00 00       	mov    eax,0x1
   4bc7b:	eb 02                	jmp    chessgame_branch_136
chessgame_branch_135:
   4bc7d:	31 c0                	xor    eax,eax
chessgame_branch_136:
   4bc7f:	85 c0                	test   eax,eax
   4bc81:	0f 85 41 02 00 00    	jne    chessgame_branch_156
   4bc87:	81 3d 78 59 02 00 13 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x113                    ; fixup: num: 11765, src obj: 1, src ofs: 0x4bc89, dst obj: 3, dst ofs: 0x25978
   4bc91:	7c 2b                	jl     chessgame_branch_137
   4bc93:	81 3d 78 59 02 00 4a 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x14a                    ; fixup: num: 11764, src obj: 1, src ofs: 0x4bc95, dst obj: 3, dst ofs: 0x25978
   4bc9d:	7f 1f                	jg     chessgame_branch_137
   4bc9f:	81 3d 7c 59 02 00 d0 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0xd0                     ; fixup: num: 11763, src obj: 1, src ofs: 0x4bca1, dst obj: 3, dst ofs: 0x2597c
   4bca9:	7c 13                	jl     chessgame_branch_137
   4bcab:	81 3d 7c 59 02 00 f7 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0xf7                     ; fixup: num: 11762, src obj: 1, src ofs: 0x4bcad, dst obj: 3, dst ofs: 0x2597c
   4bcb5:	7f 07                	jg     chessgame_branch_137
   4bcb7:	b8 01 00 00 00       	mov    eax,0x1
   4bcbc:	eb 02                	jmp    chessgame_branch_138
chessgame_branch_137:
   4bcbe:	31 c0                	xor    eax,eax
chessgame_branch_138:
   4bcc0:	85 c0                	test   eax,eax
   4bcc2:	0f 85 7e 00 00 00    	jne    chessgame_branch_143
   4bcc8:	81 3d 78 59 02 00 eb 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0xeb                     ; fixup: num: 11761, src obj: 1, src ofs: 0x4bcca, dst obj: 3, dst ofs: 0x25978
   4bcd2:	7c 2b                	jl     chessgame_branch_139
   4bcd4:	81 3d 78 59 02 00 26 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x126                    ; fixup: num: 11760, src obj: 1, src ofs: 0x4bcd6, dst obj: 3, dst ofs: 0x25978
   4bcde:	7f 1f                	jg     chessgame_branch_139
   4bce0:	81 3d 7c 59 02 00 1b 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x11b                    ; fixup: num: 11759, src obj: 1, src ofs: 0x4bce2, dst obj: 3, dst ofs: 0x2597c
   4bcea:	7c 13                	jl     chessgame_branch_139
   4bcec:	81 3d 7c 59 02 00 4e 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x14e                    ; fixup: num: 11758, src obj: 1, src ofs: 0x4bcee, dst obj: 3, dst ofs: 0x2597c
   4bcf6:	7f 07                	jg     chessgame_branch_139
   4bcf8:	b8 01 00 00 00       	mov    eax,0x1
   4bcfd:	eb 02                	jmp    chessgame_branch_140
chessgame_branch_139:
   4bcff:	31 c0                	xor    eax,eax
chessgame_branch_140:
   4bd01:	85 c0                	test   eax,eax
   4bd03:	75 41                	jne    chessgame_branch_143
   4bd05:	81 3d 78 59 02 00 87 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x87                     ; fixup: num: 11757, src obj: 1, src ofs: 0x4bd07, dst obj: 3, dst ofs: 0x25978
   4bd0f:	7c 2b                	jl     chessgame_branch_141
   4bd11:	81 3d 78 59 02 00 b0 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0xb0                     ; fixup: num: 11756, src obj: 1, src ofs: 0x4bd13, dst obj: 3, dst ofs: 0x25978
   4bd1b:	7f 1f                	jg     chessgame_branch_141
   4bd1d:	81 3d 7c 59 02 00 9a 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x9a                     ; fixup: num: 11768, src obj: 1, src ofs: 0x4bd1f, dst obj: 3, dst ofs: 0x2597c
   4bd27:	7c 13                	jl     chessgame_branch_141
   4bd29:	81 3d 7c 59 02 00 ba 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0xba                     ; fixup: num: 11767, src obj: 1, src ofs: 0x4bd2b, dst obj: 3, dst ofs: 0x2597c
   4bd33:	7f 07                	jg     chessgame_branch_141
   4bd35:	b8 01 00 00 00       	mov    eax,0x1
   4bd3a:	eb 02                	jmp    chessgame_branch_142
chessgame_branch_141:
   4bd3c:	31 c0                	xor    eax,eax
chessgame_branch_142:
   4bd3e:	85 c0                	test   eax,eax
   4bd40:	0f 84 c6 fb ff ff    	je     chessgame_branch_113
chessgame_branch_143:
   4bd46:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
   4bd4a:	85 c9                	test   ecx,ecx
   4bd4c:	74 1e                	je     chessgame_branch_145
   4bd4e:	8b 71 08             	mov    esi,DWORD PTR [ecx+0x8]
   4bd51:	89 ca                	mov    edx,ecx
   4bd53:	85 f6                	test   esi,esi
   4bd55:	74 07                	je     chessgame_branch_144
   4bd57:	89 f0                	mov    eax,esi
   4bd59:	e8 8a 56 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
chessgame_branch_144:
   4bd5e:	89 d0                	mov    eax,edx
   4bd60:	c7 42 08 00 00 00 00 	mov    DWORD PTR [edx+0x8],0x0
   4bd67:	e8 0c 63 02 00       	call   W?$dln(pnv)v
chessgame_branch_145:
   4bd6c:	8b bd 80 00 00 00    	mov    edi,DWORD PTR [ebp+0x80]
   4bd72:	89 ea                	mov    edx,ebp
   4bd74:	85 ff                	test   edi,edi
   4bd76:	74 07                	je     chessgame_branch_146
   4bd78:	89 f8                	mov    eax,edi
   4bd7a:	e8 69 56 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
chessgame_branch_146:
   4bd7f:	8d 82 a8 00 00 00    	lea    eax,[edx+0xa8]
   4bd85:	8b 68 08             	mov    ebp,DWORD PTR [eax+0x8]
   4bd88:	89 c2                	mov    edx,eax
   4bd8a:	85 ed                	test   ebp,ebp
   4bd8c:	74 07                	je     chessgame_branch_147
   4bd8e:	89 e8                	mov    eax,ebp
   4bd90:	e8 53 56 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
chessgame_branch_147:
   4bd95:	8d 82 58 ff ff ff    	lea    eax,[edx-0xa8]
   4bd9b:	c7 42 08 00 00 00 00 	mov    DWORD PTR [edx+0x8],0x0
   4bda2:	e8 d1 62 02 00       	call   W?$dln(pnv)v
   4bda7:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
   4bdab:	8b 9a 80 00 00 00    	mov    ebx,DWORD PTR [edx+0x80]
   4bdb1:	85 db                	test   ebx,ebx
   4bdb3:	74 07                	je     chessgame_branch_148
   4bdb5:	89 d8                	mov    eax,ebx
   4bdb7:	e8 2c 56 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
chessgame_branch_148:
   4bdbc:	8d 82 a8 00 00 00    	lea    eax,[edx+0xa8]
   4bdc2:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
   4bdc5:	89 c2                	mov    edx,eax
   4bdc7:	85 c9                	test   ecx,ecx
   4bdc9:	74 07                	je     chessgame_branch_149
   4bdcb:	89 c8                	mov    eax,ecx
   4bdcd:	e8 16 56 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
chessgame_branch_149:
   4bdd2:	8d 82 58 ff ff ff    	lea    eax,[edx-0xa8]
   4bdd8:	c7 42 08 00 00 00 00 	mov    DWORD PTR [edx+0x8],0x0
   4bddf:	e8 94 62 02 00       	call   W?$dln(pnv)v
   4bde4:	8b 34 24             	mov    esi,DWORD PTR [esp]
   4bde7:	85 f6                	test   esi,esi
   4bde9:	74 3b                	je     chessgame_branch_152
   4bdeb:	8b be 80 00 00 00    	mov    edi,DWORD PTR [esi+0x80]
   4bdf1:	89 f2                	mov    edx,esi
   4bdf3:	85 ff                	test   edi,edi
   4bdf5:	74 07                	je     chessgame_branch_150
   4bdf7:	89 f8                	mov    eax,edi
   4bdf9:	e8 ea 55 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
chessgame_branch_150:
   4bdfe:	8d 82 a8 00 00 00    	lea    eax,[edx+0xa8]
   4be04:	8b 68 08             	mov    ebp,DWORD PTR [eax+0x8]
   4be07:	89 c2                	mov    edx,eax
   4be09:	85 ed                	test   ebp,ebp
   4be0b:	74 07                	je     chessgame_branch_151
   4be0d:	89 e8                	mov    eax,ebp
   4be0f:	e8 d4 55 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
chessgame_branch_151:
   4be14:	8d 82 58 ff ff ff    	lea    eax,[edx-0xa8]
   4be1a:	c7 42 08 00 00 00 00 	mov    DWORD PTR [edx+0x8],0x0
   4be21:	e8 52 62 02 00       	call   W?$dln(pnv)v
chessgame_branch_152:
   4be26:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
   4be2a:	85 c0                	test   eax,eax
   4be2c:	74 3b                	je     chessgame_branch_155
   4be2e:	8b 98 80 00 00 00    	mov    ebx,DWORD PTR [eax+0x80]
   4be34:	89 c2                	mov    edx,eax
   4be36:	85 db                	test   ebx,ebx
   4be38:	74 07                	je     chessgame_branch_153
   4be3a:	89 d8                	mov    eax,ebx
   4be3c:	e8 a7 55 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
chessgame_branch_153:
   4be41:	8d 82 a8 00 00 00    	lea    eax,[edx+0xa8]
   4be47:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
   4be4a:	89 c2                	mov    edx,eax
   4be4c:	85 c9                	test   ecx,ecx
   4be4e:	74 07                	je     chessgame_branch_154
   4be50:	89 c8                	mov    eax,ecx
   4be52:	e8 91 55 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
chessgame_branch_154:
   4be57:	8d 82 58 ff ff ff    	lea    eax,[edx-0xa8]
   4be5d:	c7 42 08 00 00 00 00 	mov    DWORD PTR [edx+0x8],0x0
   4be64:	e8 0f 62 02 00       	call   W?$dln(pnv)v
chessgame_branch_155:
   4be69:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
   4be6d:	e8 76 55 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   4be72:	6a 01                	push   0x1
   4be74:	b9 e0 01 00 00       	mov    ecx,0x1e0
   4be79:	bb 80 02 00 00       	mov    ebx,0x280
   4be7e:	6a 00                	push   0x0
   4be80:	31 d2                	xor    edx,edx
   4be82:	31 c0                	xor    eax,eax
   4be84:	e8 c7 98 fb ff       	call   VESA_rectangle
   4be89:	68 df 01 00 00       	push   0x1df
   4be8e:	b9 7f 02 00 00       	mov    ecx,0x27f
   4be93:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 11773, src obj: 1, src ofs: 0x4be94, dst obj: 3, dst ofs: 0x25a84
   4be98:	31 db                	xor    ebx,ebx
   4be9a:	31 d2                	xor    edx,edx
   4be9c:	e8 bf 1b 00 00       	call   refresh_area
   4bea1:	83 ec 04             	sub    esp,0x4
   4bea4:	dd 05 b4 0f 01 00    	fld    QWORD PTR ds:@obj3:pal_gamma                                 ; fixup: num: 11772, src obj: 1, src ofs: 0x4bea6, dst obj: 3, dst ofs: 0x10fb4
   4beaa:	d9 1c 24             	fstp   DWORD PTR [esp]
   4bead:	ba 00 01 00 00       	mov    edx,0x100
   4beb2:	a1 84 60 02 00       	mov    eax,ds:@obj3:palette                                         ; fixup: num: 11771, src obj: 1, src ofs: 0x4beb3, dst obj: 3, dst ofs: 0x26084
   4beb7:	e8 b4 68 fc ff       	call   setvgapalette_mod_14
   4bebc:	30 c0                	xor    al,al
   4bebe:	83 c4 6c             	add    esp,0x6c
   4bec1:	5d                   	pop    ebp
   4bec2:	5f                   	pop    edi
   4bec3:	5e                   	pop    esi
   4bec4:	5a                   	pop    edx
   4bec5:	59                   	pop    ecx
   4bec6:	5b                   	pop    ebx
   4bec7:	c3                   	ret    
chessgame_branch_156:
   4bec8:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
   4becc:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
   4bed0:	8b 89 ac 00 00 00    	mov    ecx,DWORD PTR [ecx+0xac]
   4bed6:	0f af 8a a8 00 00 00 	imul   ecx,DWORD PTR [edx+0xa8]
   4bedd:	8b 7c 24 30          	mov    edi,DWORD PTR [esp+0x30]
   4bee1:	8b b2 b0 00 00 00    	mov    esi,DWORD PTR [edx+0xb0]
   4bee7:	bb 80 02 00 00       	mov    ebx,0x280
   4beec:	57                   	push   edi
   4beed:	89 c8                	mov    eax,ecx
   4beef:	c1 e9 02             	shr    ecx,0x2
   4bef2:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
   4bef4:	8a c8                	mov    cl,al
   4bef6:	80 e1 03             	and    cl,0x3
   4bef9:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
   4befb:	5f                   	pop    edi
   4befc:	57                   	push   edi
   4befd:	b9 e0 01 00 00       	mov    ecx,0x1e0
   4bf02:	8b 35 34 30 02 00    	mov    esi,DWORD PTR ds:@obj3:the_viewport                          ; fixup: num: 11770, src obj: 1, src ofs: 0x4bf04, dst obj: 3, dst ofs: 0x23034
   4bf08:	6a 00                	push   0x0
   4bf0a:	31 d2                	xor    edx,edx
   4bf0c:	31 c0                	xor    eax,eax
   4bf0e:	ff 56 30             	call   DWORD PTR [esi+0x30]
   4bf11:	bb 01 00 00 00       	mov    ebx,0x1
   4bf16:	ba 57 bc 00 00       	mov    edx,@obj3:puzzles_cpp_variable_16                            ; fixup: num: 11769, src obj: 1, src ofs: 0x4bf17, dst obj: 3, dst ofs: 0xbc57
   4bf1b:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
   4bf1f:	e8 dc 42 fc ff       	call   load_from_file_mod_11
   4bf24:	ba 0e 00 00 00       	mov    edx,0xe
   4bf29:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
   4bf2d:	e8 ae 50 fc ff       	call   play_mod_11
   4bf32:	b8 e8 03 00 00       	mov    eax,0x3e8
   4bf37:	e8 a6 61 02 00       	call   delay_
   4bf3c:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
   4bf40:	85 c0                	test   eax,eax
   4bf42:	74 1e                	je     chessgame_branch_158
   4bf44:	8b 58 08             	mov    ebx,DWORD PTR [eax+0x8]
   4bf47:	89 c2                	mov    edx,eax
   4bf49:	85 db                	test   ebx,ebx
   4bf4b:	74 07                	je     chessgame_branch_157
   4bf4d:	89 d8                	mov    eax,ebx
   4bf4f:	e8 94 54 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
chessgame_branch_157:
   4bf54:	89 d0                	mov    eax,edx
   4bf56:	c7 42 08 00 00 00 00 	mov    DWORD PTR [edx+0x8],0x0
   4bf5d:	e8 16 61 02 00       	call   W?$dln(pnv)v
chessgame_branch_158:
   4bf62:	8b 8d 80 00 00 00    	mov    ecx,DWORD PTR [ebp+0x80]
   4bf68:	89 ea                	mov    edx,ebp
   4bf6a:	85 c9                	test   ecx,ecx
   4bf6c:	74 07                	je     chessgame_branch_159
   4bf6e:	89 c8                	mov    eax,ecx
   4bf70:	e8 73 54 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
chessgame_branch_159:
   4bf75:	8d 82 a8 00 00 00    	lea    eax,[edx+0xa8]
   4bf7b:	8b 70 08             	mov    esi,DWORD PTR [eax+0x8]
   4bf7e:	89 c2                	mov    edx,eax
   4bf80:	85 f6                	test   esi,esi
   4bf82:	74 07                	je     chessgame_branch_160
   4bf84:	89 f0                	mov    eax,esi
   4bf86:	e8 5d 54 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
chessgame_branch_160:
   4bf8b:	8d 82 58 ff ff ff    	lea    eax,[edx-0xa8]
   4bf91:	c7 42 08 00 00 00 00 	mov    DWORD PTR [edx+0x8],0x0
   4bf98:	e8 db 60 02 00       	call   W?$dln(pnv)v
   4bf9d:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
   4bfa1:	8b ba 80 00 00 00    	mov    edi,DWORD PTR [edx+0x80]
   4bfa7:	85 ff                	test   edi,edi
   4bfa9:	74 07                	je     chessgame_branch_161
   4bfab:	89 f8                	mov    eax,edi
   4bfad:	e8 36 54 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
chessgame_branch_161:
   4bfb2:	8d 82 a8 00 00 00    	lea    eax,[edx+0xa8]
   4bfb8:	8b 68 08             	mov    ebp,DWORD PTR [eax+0x8]
   4bfbb:	89 c2                	mov    edx,eax
   4bfbd:	85 ed                	test   ebp,ebp
   4bfbf:	74 07                	je     chessgame_branch_162
   4bfc1:	89 e8                	mov    eax,ebp
   4bfc3:	e8 20 54 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
chessgame_branch_162:
   4bfc8:	8d 82 58 ff ff ff    	lea    eax,[edx-0xa8]
   4bfce:	c7 42 08 00 00 00 00 	mov    DWORD PTR [edx+0x8],0x0
   4bfd5:	e8 9e 60 02 00       	call   W?$dln(pnv)v
   4bfda:	8b 04 24             	mov    eax,DWORD PTR [esp]
   4bfdd:	85 c0                	test   eax,eax
   4bfdf:	74 3b                	je     chessgame_branch_165
   4bfe1:	8b 98 80 00 00 00    	mov    ebx,DWORD PTR [eax+0x80]
   4bfe7:	89 c2                	mov    edx,eax
   4bfe9:	85 db                	test   ebx,ebx
   4bfeb:	74 07                	je     chessgame_branch_163
   4bfed:	89 d8                	mov    eax,ebx
   4bfef:	e8 f4 53 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
chessgame_branch_163:
   4bff4:	8d 82 a8 00 00 00    	lea    eax,[edx+0xa8]
   4bffa:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
   4bffd:	89 c2                	mov    edx,eax
   4bfff:	85 c9                	test   ecx,ecx
   4c001:	74 07                	je     chessgame_branch_164
   4c003:	89 c8                	mov    eax,ecx
   4c005:	e8 de 53 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
chessgame_branch_164:
   4c00a:	8d 82 58 ff ff ff    	lea    eax,[edx-0xa8]
   4c010:	c7 42 08 00 00 00 00 	mov    DWORD PTR [edx+0x8],0x0
   4c017:	e8 5c 60 02 00       	call   W?$dln(pnv)v
chessgame_branch_165:
   4c01c:	8b 74 24 04          	mov    esi,DWORD PTR [esp+0x4]
   4c020:	85 f6                	test   esi,esi
   4c022:	74 3b                	je     chessgame_branch_168
   4c024:	8b be 80 00 00 00    	mov    edi,DWORD PTR [esi+0x80]
   4c02a:	89 f2                	mov    edx,esi
   4c02c:	85 ff                	test   edi,edi
   4c02e:	74 07                	je     chessgame_branch_166
   4c030:	89 f8                	mov    eax,edi
   4c032:	e8 b1 53 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
chessgame_branch_166:
   4c037:	8d 82 a8 00 00 00    	lea    eax,[edx+0xa8]
   4c03d:	8b 68 08             	mov    ebp,DWORD PTR [eax+0x8]
   4c040:	89 c2                	mov    edx,eax
   4c042:	85 ed                	test   ebp,ebp
   4c044:	74 07                	je     chessgame_branch_167
   4c046:	89 e8                	mov    eax,ebp
   4c048:	e8 9b 53 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
chessgame_branch_167:
   4c04d:	8d 82 58 ff ff ff    	lea    eax,[edx-0xa8]
   4c053:	c7 42 08 00 00 00 00 	mov    DWORD PTR [edx+0x8],0x0
   4c05a:	e8 19 60 02 00       	call   W?$dln(pnv)v
chessgame_branch_168:
   4c05f:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
   4c063:	e8 80 53 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   4c068:	6a 01                	push   0x1
   4c06a:	b9 e0 01 00 00       	mov    ecx,0x1e0
   4c06f:	bb 80 02 00 00       	mov    ebx,0x280
   4c074:	6a 00                	push   0x0
   4c076:	31 d2                	xor    edx,edx
   4c078:	31 c0                	xor    eax,eax
   4c07a:	e8 d1 96 fb ff       	call   VESA_rectangle
   4c07f:	68 df 01 00 00       	push   0x1df
   4c084:	b9 7f 02 00 00       	mov    ecx,0x27f
   4c089:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 11833, src obj: 1, src ofs: 0x4c08a, dst obj: 3, dst ofs: 0x25a84
   4c08e:	31 db                	xor    ebx,ebx
   4c090:	31 d2                	xor    edx,edx
   4c092:	e8 c9 19 00 00       	call   refresh_area
   4c097:	83 ec 04             	sub    esp,0x4
   4c09a:	dd 05 b4 0f 01 00    	fld    QWORD PTR ds:@obj3:pal_gamma                                 ; fixup: num: 11832, src obj: 1, src ofs: 0x4c09c, dst obj: 3, dst ofs: 0x10fb4
   4c0a0:	d9 1c 24             	fstp   DWORD PTR [esp]
   4c0a3:	ba 00 01 00 00       	mov    edx,0x100
   4c0a8:	a1 84 60 02 00       	mov    eax,ds:@obj3:palette                                         ; fixup: num: 11831, src obj: 1, src ofs: 0x4c0a9, dst obj: 3, dst ofs: 0x26084
   4c0ad:	e8 be 66 fc ff       	call   setvgapalette_mod_14
   4c0b2:	b0 01                	mov    al,0x1
   4c0b4:	83 c4 6c             	add    esp,0x6c
   4c0b7:	5d                   	pop    ebp
   4c0b8:	5f                   	pop    edi
   4c0b9:	5e                   	pop    esi
   4c0ba:	5a                   	pop    edx
   4c0bb:	59                   	pop    ecx
   4c0bc:	5b                   	pop    ebx
   4c0bd:	c3                   	ret    
;-------------------------------------------------
;  Bad code 83 (zero after ret):                 -
;-------------------------------------------------
;  4c0bc:	5b                   	pop    ebx
;  4c0bd:	c3                   	ret    
;  4c0be:	00 00                	add    BYTE PTR [eax],al
;-------------------------------------------------
;  Padding data (2 bytes):                       -
;-------------------------------------------------
   4c0be:	00 00                	db     2 dup(0x00)
;-------------------------------------------------
;  End of bad code 83                            -
;-------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 83 (D:\SOURCE\puzzles.cpp)                                    -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 83: D:\SOURCE\puzzles.cpp                                            -
;                                                                              -
;-------------------------------------------------------------------------------
puzzles_cpp_variable_1:
    bad4:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
puzzles_cpp_variable_2:
    baec:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
puzzles_cpp_variable_3:
    bb04:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
puzzles_cpp_variable_4:
    bb1c:	67 72 61 70 68 69 63 5c 72 6f 6f 6d 61 6e 69 6d 5c 68 61 72 76 70 6e 74 72 2e 66 6c 63 00 	db     "graphic\roomanim\harvpntr.flc",0x00
puzzles_cpp_variable_5:
    bb3a:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
puzzles_cpp_variable_6:
    bb52:	67 72 61 70 68 69 63 5c 72 6f 6f 6d 61 6e 69 6d 5c 6f 70 65 72 61 74 65 2e 66 6c 63 00 	db     "graphic\roomanim\operate.flc",0x00
puzzles_cpp_variable_7:
    bb6f:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
puzzles_cpp_variable_8:
    bb87:	67 72 61 70 68 69 63 5c 66 73 74 5c 63 68 65 73 6d 6f 76 31 2e 66 6c 63 00 	db     "graphic\fst\chesmov1.flc",0x00
puzzles_cpp_variable_9:
    bba0:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
puzzles_cpp_variable_10:
    bbb8:	67 72 61 70 68 69 63 5c 66 73 74 5c 63 68 6f 6f 73 65 31 2e 66 6c 63 00 	db     "graphic\fst\choose1.flc",0x00
puzzles_cpp_variable_11:
    bbd0:	43 6f 75 6c 64 20 6e 6f 74 20 61 6c 6c 6f 63 61 74 65 20 61 20 62 75 66 66 65 72 20 6f 66 20 25 69 78 25 69 00 	db     "Could not allocate a buffer of %ix%i",0x00
    bbf5:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
puzzles_cpp_variable_12:
    bbf6:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
puzzles_cpp_variable_13:
    bc0e:	67 72 61 70 68 69 63 5c 66 73 74 5c 63 68 6f 6f 73 65 32 2e 66 6c 63 00 	db     "graphic\fst\choose2.flc",0x00
puzzles_cpp_variable_14:
    bc26:	67 72 61 70 68 69 63 5c 66 73 74 5c 63 68 65 73 6d 6f 76 32 2e 66 6c 63 00 	db     "graphic\fst\chesmov2.flc",0x00
puzzles_cpp_variable_15:
    bc3f:	67 72 61 70 68 69 63 5c 66 73 74 5c 63 68 6f 6f 73 65 33 2e 66 6c 63 00 	db     "graphic\fst\choose3.flc",0x00
puzzles_cpp_variable_16:
    bc57:	67 72 61 70 68 69 63 5c 66 73 74 5c 63 68 65 73 6d 6f 76 33 2e 66 6c 63 00 	db     "graphic\fst\chesmov3.flc",0x00

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 83 (D:\SOURCE\puzzles.cpp)                                    -
;                                                                              -
;-------------------------------------------------------------------------------