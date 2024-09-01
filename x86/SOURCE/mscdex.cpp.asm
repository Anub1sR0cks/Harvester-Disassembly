;-------------------------------------------------------------------------------
;                                                                              -
;  Module 72: D:\SOURCE\mscdex.cpp                                             -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function 'MSCDEX_installed'                   -
;-------------------------------------------------
MSCDEX_installed:
   387d0:	53                   	push   ebx
   387d1:	51                   	push   ecx
   387d2:	52                   	push   edx
   387d3:	83 ec 04             	sub    esp,0x4
   387d6:	c7 04 24 da da 00 00 	mov    DWORD PTR [esp],0xdada
   387dd:	ba 00 11 00 00       	mov    edx,0x1100
   387e2:	bb 00 00 00 00       	mov    ebx,@obj2:call_structure                                     ; fixup: num: 10280, src obj: 1, src ofs: 0x387e3, dst obj: 2, dst ofs: 0x0
   387e7:	b8 2f 00 00 00       	mov    eax,0x2f
   387ec:	8c d9                	mov    ecx,ds
   387ee:	89 15 1c 00 00 00    	mov    DWORD PTR ds:@obj2:call_structure_variable_3,edx             ; fixup: num: 10279, src obj: 1, src ofs: 0x387f0, dst obj: 2, dst ofs: 0x1c
   387f4:	ba 10 00 00 00       	mov    edx,0x10
   387f9:	e8 32 eb fc ff       	call   simulate_real_mode_interrupt_mod_8
   387fe:	f6 05 1c 00 00 00 01 	test   BYTE PTR ds:@obj2:call_structure_variable_3,0x1              ; fixup: num: 10278, src obj: 1, src ofs: 0x38800, dst obj: 2, dst ofs: 0x1c
   38805:	0f 95 c0             	setne  al
   38808:	83 c4 04             	add    esp,0x4
   3880b:	5a                   	pop    edx
   3880c:	59                   	pop    ecx
   3880d:	5b                   	pop    ebx
   3880e:	c3                   	ret    
   3880f:	90                   	nop

;-------------------------------------------------
;  Function 'MSCDEX_get_CDROM'                   -
;-------------------------------------------------
MSCDEX_get_CDROM:
   38810:	53                   	push   ebx
   38811:	51                   	push   ecx
   38812:	52                   	push   edx
   38813:	89 c2                	mov    edx,eax
   38815:	bb 00 15 00 00       	mov    ebx,0x1500
   3881a:	b8 2f 00 00 00       	mov    eax,0x2f
   3881f:	31 c9                	xor    ecx,ecx
   38821:	89 1d 1c 00 00 00    	mov    DWORD PTR ds:@obj2:call_structure_variable_3,ebx             ; fixup: num: 10277, src obj: 1, src ofs: 0x38823, dst obj: 2, dst ofs: 0x1c
   38827:	89 0d 10 00 00 00    	mov    DWORD PTR ds:@obj2:call_structure_variable_1,ecx             ; fixup: num: 10276, src obj: 1, src ofs: 0x38829, dst obj: 2, dst ofs: 0x10
   3882d:	bb 00 00 00 00       	mov    ebx,@obj2:call_structure                                     ; fixup: num: 10275, src obj: 1, src ofs: 0x3882e, dst obj: 2, dst ofs: 0x0
   38832:	8c d9                	mov    ecx,ds
   38834:	e8 97 ea fc ff       	call   simulate_real_mode_interrupt
   38839:	66 f7 05 10 00 00 00 ff ff 	test   WORD PTR ds:@obj2:call_structure_variable_1,0xffff     ; fixup: num: 10274, src obj: 1, src ofs: 0x3883c, dst obj: 2, dst ofs: 0x10
   38842:	74 0d                	je     MSCDEX_get_CDROM_branch_1
   38844:	66 a1 18 00 00 00    	mov    ax,ds:@obj2:call_structure_variable_2                        ; fixup: num: 10273, src obj: 1, src ofs: 0x38846, dst obj: 2, dst ofs: 0x18
   3884a:	66 89 02             	mov    WORD PTR [edx],ax
   3884d:	5a                   	pop    edx
   3884e:	59                   	pop    ecx
   3884f:	5b                   	pop    ebx
   38850:	c3                   	ret    
MSCDEX_get_CDROM_branch_1:
   38851:	66 c7 02 ff ff       	mov    WORD PTR [edx],0xffff
   38856:	5a                   	pop    edx
   38857:	59                   	pop    ecx
   38858:	5b                   	pop    ebx
   38859:	c3                   	ret    
   3885a:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'MSCDEX_get_version'                 -
;-------------------------------------------------
MSCDEX_get_version:
   38860:	53                   	push   ebx
   38861:	51                   	push   ecx
   38862:	52                   	push   edx
   38863:	ba 0c 15 00 00       	mov    edx,0x150c
   38868:	bb 00 00 00 00       	mov    ebx,@obj2:call_structure                                     ; fixup: num: 10272, src obj: 1, src ofs: 0x38869, dst obj: 2, dst ofs: 0x0
   3886d:	b8 2f 00 00 00       	mov    eax,0x2f
   38872:	8c d9                	mov    ecx,ds
   38874:	89 15 1c 00 00 00    	mov    DWORD PTR ds:@obj2:call_structure_variable_3,edx             ; fixup: num: 10271, src obj: 1, src ofs: 0x38876, dst obj: 2, dst ofs: 0x1c
   3887a:	e8 51 ea fc ff       	call   simulate_real_mode_interrupt
   3887f:	66 a1 10 00 00 00    	mov    ax,ds:@obj2:call_structure_variable_1                        ; fixup: num: 10290, src obj: 1, src ofs: 0x38881, dst obj: 2, dst ofs: 0x10
   38885:	5a                   	pop    edx
   38886:	59                   	pop    ecx
   38887:	5b                   	pop    ebx
   38888:	c3                   	ret    
   38889:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   3888f:	90                   	nop

;-------------------------------------------------
;  Function 'critical_error_handler'             -
;-------------------------------------------------
critical_error_handler:
   38890:	c6 05 6c 59 02 00 01 	mov    BYTE PTR ds:@obj3:cr_mod_72,0x1                              ; fixup: num: 10289, src obj: 1, src ofs: 0x38892, dst obj: 3, dst ofs: 0x2596c
   38897:	31 c0                	xor    eax,eax
   38899:	cb                   	retf   
   3889a:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'cd_change_requestor'                -
;-------------------------------------------------
cd_change_requestor:
   388a0:	53                   	push   ebx
   388a1:	51                   	push   ecx
   388a2:	56                   	push   esi
   388a3:	57                   	push   edi
   388a4:	55                   	push   ebp
   388a5:	89 e5                	mov    ebp,esp
   388a7:	81 ec 58 02 00 00    	sub    esp,0x258
   388ad:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
   388b0:	88 55 fc             	mov    BYTE PTR [ebp-0x4],dl
   388b3:	8a 25 7e 60 02 00    	mov    ah,BYTE PTR ds:@obj3:faded_in                                ; fixup: num: 10288, src obj: 1, src ofs: 0x388b5, dst obj: 3, dst ofs: 0x2607e
   388b9:	31 f6                	xor    esi,esi
   388bb:	31 ff                	xor    edi,edi
   388bd:	84 e4                	test   ah,ah
   388bf:	74 3e                	je     cd_change_requestor_branch_3
   388c1:	b8 68 93 00 00       	mov    eax,@obj3:mscdex_cpp_variable_1                              ; fixup: num: 10287, src obj: 1, src ofs: 0x388c2, dst obj: 3, dst ofs: 0x9368
   388c6:	e8 c5 3e 03 00       	call   check_script_flag
   388cb:	84 c0                	test   al,al
   388cd:	75 16                	jne    cd_change_requestor_branch_1
   388cf:	dd 05 b4 0f 01 00    	fld    QWORD PTR ds:@obj3:pal_gamma                                 ; fixup: num: 10286, src obj: 1, src ofs: 0x388d1, dst obj: 3, dst ofs: 0x10fb4
   388d5:	dc 05 94 96 00 00    	fadd   QWORD PTR ds:@obj3:mscdex_cpp_variable_46                    ; fixup: num: 10285, src obj: 1, src ofs: 0x388d7, dst obj: 3, dst ofs: 0x9694
   388db:	56                   	push   esi
   388dc:	56                   	push   esi
   388dd:	83 ec 08             	sub    esp,0x8
   388e0:	dd 1c 24             	fstp   QWORD PTR [esp]
   388e3:	eb 10                	jmp    cd_change_requestor_branch_2
cd_change_requestor_branch_1:
   388e5:	56                   	push   esi
   388e6:	56                   	push   esi
   388e7:	8b 15 b8 0f 01 00    	mov    edx,DWORD PTR ds:@obj3:pal_gamma_variable_1                  ; fixup: num: 10284, src obj: 1, src ofs: 0x388e9, dst obj: 3, dst ofs: 0x10fb8
   388ed:	52                   	push   edx
   388ee:	8b 1d b4 0f 01 00    	mov    ebx,DWORD PTR ds:@obj3:pal_gamma                             ; fixup: num: 10283, src obj: 1, src ofs: 0x388f0, dst obj: 3, dst ofs: 0x10fb4
   388f4:	53                   	push   ebx
cd_change_requestor_branch_2:
   388f5:	a1 84 60 02 00       	mov    eax,ds:@obj3:palette                                         ; fixup: num: 10282, src obj: 1, src ofs: 0x388f6, dst obj: 3, dst ofs: 0x26084
   388fa:	e8 31 b1 fd ff       	call   fade
cd_change_requestor_branch_3:
   388ff:	ba 00 01 00 00       	mov    edx,0x100
   38904:	31 c0                	xor    eax,eax
   38906:	b9 7f 02 00 00       	mov    ecx,0x27f
   3890b:	e8 d0 9d fd ff       	call   setvgapalette
   38910:	31 db                	xor    ebx,ebx
   38912:	68 df 01 00 00       	push   0x1df
   38917:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 10281, src obj: 1, src ofs: 0x38918, dst obj: 3, dst ofs: 0x25a84
   3891c:	31 d2                	xor    edx,edx
   3891e:	e8 3d 51 01 00       	call   refresh_area
   38923:	6a 01                	push   0x1
   38925:	b9 e0 01 00 00       	mov    ecx,0x1e0
   3892a:	bb 80 02 00 00       	mov    ebx,0x280
   3892f:	6a 00                	push   0x0
   38931:	31 d2                	xor    edx,edx
   38933:	31 c0                	xor    eax,eax
   38935:	e8 16 ce fc ff       	call   VESA_rectangle
   3893a:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
   3893d:	51                   	push   ecx
   3893e:	68 71 93 00 00       	push   @obj3:mscdex_cpp_variable_2                                  ; fixup: num: 10302, src obj: 1, src ofs: 0x3893f, dst obj: 3, dst ofs: 0x9371
   38943:	8d 85 a8 fd ff ff    	lea    eax,[ebp-0x258]
   38949:	50                   	push   eax
   3894a:	e8 92 82 03 00       	call   sprintf_
   3894f:	83 c4 0c             	add    esp,0xc
   38952:	51                   	push   ecx
   38953:	68 8a 93 00 00       	push   @obj3:mscdex_cpp_variable_3                                  ; fixup: num: 10301, src obj: 1, src ofs: 0x38954, dst obj: 3, dst ofs: 0x938a
   38958:	8d 85 a8 fe ff ff    	lea    eax,[ebp-0x158]
   3895e:	50                   	push   eax
   3895f:	e8 7d 82 03 00       	call   sprintf_
   38964:	8b 15 84 60 02 00    	mov    edx,DWORD PTR ds:@obj3:palette                               ; fixup: num: 10300, src obj: 1, src ofs: 0x38966, dst obj: 3, dst ofs: 0x26084
   3896a:	83 c4 0c             	add    esp,0xc
   3896d:	85 d2                	test   edx,edx
   3896f:	75 1b                	jne    cd_change_requestor_branch_4
   38971:	b9 e5 00 00 00       	mov    ecx,0xe5
   38976:	bb 91 93 00 00       	mov    ebx,@obj3:mscdex_cpp_variable_4                              ; fixup: num: 10299, src obj: 1, src ofs: 0x38977, dst obj: 3, dst ofs: 0x9391
   3897b:	b8 9c 93 00 00       	mov    eax,@obj3:mscdex_cpp_variable_5                              ; fixup: num: 10298, src obj: 1, src ofs: 0x3897c, dst obj: 3, dst ofs: 0x939c
   38980:	e8 5b 44 fd ff       	call   XFILE_read2
   38985:	a3 84 60 02 00       	mov    ds:@obj3:palette,eax                                         ; fixup: num: 10297, src obj: 1, src ofs: 0x38986, dst obj: 3, dst ofs: 0x26084
   3898a:	eb 14                	jmp    cd_change_requestor_branch_5
cd_change_requestor_branch_4:
   3898c:	b9 e7 00 00 00       	mov    ecx,0xe7
   38991:	bb b3 93 00 00       	mov    ebx,@obj3:mscdex_cpp_variable_6                              ; fixup: num: 10296, src obj: 1, src ofs: 0x38992, dst obj: 3, dst ofs: 0x93b3
   38996:	b8 be 93 00 00       	mov    eax,@obj3:mscdex_cpp_variable_7                              ; fixup: num: 10295, src obj: 1, src ofs: 0x38997, dst obj: 3, dst ofs: 0x93be
   3899b:	e8 40 44 fd ff       	call   XFILE_read2
cd_change_requestor_branch_5:
   389a0:	83 3d 84 60 02 00 00 	cmp    DWORD PTR ds:@obj3:palette,0x0                               ; fixup: num: 10294, src obj: 1, src ofs: 0x389a2, dst obj: 3, dst ofs: 0x26084
   389a7:	75 11                	jne    cd_change_requestor_branch_6
   389a9:	bb d5 93 00 00       	mov    ebx,@obj3:mscdex_cpp_variable_8                              ; fixup: num: 10293, src obj: 1, src ofs: 0x389aa, dst obj: 3, dst ofs: 0x93d5
   389ae:	ba eb 00 00 00       	mov    edx,0xeb
   389b3:	31 c0                	xor    eax,eax
   389b5:	e8 76 f6 ff ff       	call   _error_report
cd_change_requestor_branch_6:
   389ba:	b8 4c 00 00 00       	mov    eax,0x4c
   389bf:	e8 54 95 03 00       	call   W?$nwn(ui)pnv
   389c4:	85 c0                	test   eax,eax
   389c6:	74 26                	je     cd_change_requestor_branch_7
   389c8:	6a 00                	push   0x0
   389ca:	68 93 14 07 00       	push   @obj1:_nmalloc_                                              ; aliases: _nmalloc_, malloc_; fixup: num: 10292, src obj: 1, src ofs: 0x389cb, dst obj: 1, dst ofs: 0x71493
   389cf:	6a 00                	push   0x0
   389d1:	6a 00                	push   0x0
   389d3:	6a 01                	push   0x1
   389d5:	68 00 00 48 c2       	push   0xc2480000
   389da:	bb ef 93 00 00       	mov    ebx,@obj3:mscdex_cpp_variable_9                              ; fixup: num: 10291, src obj: 1, src ofs: 0x389db, dst obj: 3, dst ofs: 0x93ef
   389df:	6a 00                	push   0x0
   389e1:	8d 95 a8 fd ff ff    	lea    edx,[ebp-0x258]
   389e7:	31 c9                	xor    ecx,ecx
   389e9:	e8 f2 22 00 00       	call   W?$ct:BTMAP$n(pnapnaiibiucucpn(ui)pnvpnuc)_
cd_change_requestor_branch_7:
   389ee:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
   389f1:	89 c2                	mov    edx,eax
   389f3:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 10313, src obj: 1, src ofs: 0x389f4, dst obj: 3, dst ofs: 0x25a88
   389f8:	b9 80 01 00 00       	mov    ecx,0x180
   389fd:	e8 2e 37 01 00       	call   insert_bitmap
   38a02:	89 0d 78 59 02 00    	mov    DWORD PTR ds:@obj3:mouse_x,ecx                               ; fixup: num: 10312, src obj: 1, src ofs: 0x38a04, dst obj: 3, dst ofs: 0x25978
   38a08:	c7 05 7c 59 02 00 d1 00 00 00 	mov    DWORD PTR ds:@obj3:mouse_y,0xd1                     ; fixup: num: 10311, src obj: 1, src ofs: 0x38a0a, dst obj: 3, dst ofs: 0x2597c
   38a12:	8b 15 78 59 02 00    	mov    edx,DWORD PTR ds:@obj3:mouse_x                               ; fixup: num: 10310, src obj: 1, src ofs: 0x38a14, dst obj: 3, dst ofs: 0x25978
   38a18:	a1 7c 59 02 00       	mov    eax,ds:@obj3:mouse_y                                         ; fixup: num: 10309, src obj: 1, src ofs: 0x38a19, dst obj: 3, dst ofs: 0x2597c
   38a1d:	80 3d 71 59 02 00 00 	cmp    BYTE PTR ds:@obj3:mouse_initialized,0x0                      ; fixup: num: 10308, src obj: 1, src ofs: 0x38a1f, dst obj: 3, dst ofs: 0x25971
   38a24:	74 21                	je     cd_change_requestor_branch_8
   38a26:	bb 04 00 00 00       	mov    ebx,0x4
   38a2b:	66 89 55 dc          	mov    WORD PTR [ebp-0x24],dx
   38a2f:	66 89 45 e0          	mov    WORD PTR [ebp-0x20],ax
   38a33:	8d 55 d4             	lea    edx,[ebp-0x2c]
   38a36:	b8 33 00 00 00       	mov    eax,0x33
   38a3b:	66 89 5d d4          	mov    WORD PTR [ebp-0x2c],bx
   38a3f:	8d 5d d4             	lea    ebx,[ebp-0x2c]
   38a42:	e8 55 86 03 00       	call   int386_
cd_change_requestor_branch_8:
   38a47:	ba 00 15 00 00       	mov    edx,0x1500
   38a4c:	b8 2f 00 00 00       	mov    eax,0x2f
   38a51:	31 db                	xor    ebx,ebx
   38a53:	8c d9                	mov    ecx,ds
   38a55:	89 1d 10 00 00 00    	mov    DWORD PTR ds:@obj2:call_structure_variable_1,ebx             ; fixup: num: 10307, src obj: 1, src ofs: 0x38a57, dst obj: 2, dst ofs: 0x10
   38a5b:	bb 00 00 00 00       	mov    ebx,@obj2:call_structure                                     ; fixup: num: 10306, src obj: 1, src ofs: 0x38a5c, dst obj: 2, dst ofs: 0x0
   38a60:	89 15 1c 00 00 00    	mov    DWORD PTR ds:@obj2:call_structure_variable_3,edx             ; fixup: num: 10305, src obj: 1, src ofs: 0x38a62, dst obj: 2, dst ofs: 0x1c
   38a66:	e8 65 e8 fc ff       	call   simulate_real_mode_interrupt
   38a6b:	66 f7 05 10 00 00 00 ff ff 	test   WORD PTR ds:@obj2:call_structure_variable_1,0xffff     ; fixup: num: 10304, src obj: 1, src ofs: 0x38a6e, dst obj: 2, dst ofs: 0x10
   38a74:	74 0c                	je     cd_change_requestor_branch_9
   38a76:	66 a1 18 00 00 00    	mov    ax,ds:@obj2:call_structure_variable_2                        ; fixup: num: 10303, src obj: 1, src ofs: 0x38a78, dst obj: 2, dst ofs: 0x18
   38a7c:	66 89 45 f8          	mov    WORD PTR [ebp-0x8],ax
   38a80:	eb 06                	jmp    cd_change_requestor_branch_10
cd_change_requestor_branch_9:
   38a82:	66 c7 45 f8 ff ff    	mov    WORD PTR [ebp-0x8],0xffff
cd_change_requestor_branch_10:
   38a88:	0f bf 45 f8          	movsx  eax,WORD PTR [ebp-0x8]
   38a8c:	83 c0 41             	add    eax,0x41
   38a8f:	50                   	push   eax
   38a90:	68 f6 93 00 00       	push   @obj3:mscdex_cpp_variable_10                                 ; fixup: num: 10320, src obj: 1, src ofs: 0x38a91, dst obj: 3, dst ofs: 0x93f6
   38a95:	8d 85 a8 fd ff ff    	lea    eax,[ebp-0x258]
   38a9b:	50                   	push   eax
   38a9c:	e8 40 81 03 00       	call   sprintf_
   38aa1:	83 c4 0c             	add    esp,0xc
   38aa4:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 10319, src obj: 1, src ofs: 0x38aa5, dst obj: 3, dst ofs: 0x1a1d4
   38aa9:	8c ca                	mov    edx,cs
   38aab:	e8 30 3a fd ff       	call   close
   38ab0:	e8 5b 12 03 00       	call   close_dialog_file
   38ab5:	b8 90 88 03 00       	mov    eax,@obj1:critical_error_handler                             ; fixup: num: 10318, src obj: 1, src ofs: 0x38ab6, dst obj: 1, dst ofs: 0x38890
   38aba:	e8 99 dc 03 00       	call   _harderr_
cd_change_requestor_branch_11:
   38abf:	80 3d 6c 59 02 00 00 	cmp    BYTE PTR ds:@obj3:cr_mod_72,0x0                              ; fixup: num: 10317, src obj: 1, src ofs: 0x38ac1, dst obj: 3, dst ofs: 0x2596c
   38ac6:	74 69                	je     cd_change_requestor_branch_14
   38ac8:	85 f6                	test   esi,esi
   38aca:	0f 85 a9 00 00 00    	jne    cd_change_requestor_branch_15
   38ad0:	b8 50 00 00 00       	mov    eax,0x50
   38ad5:	e8 3e 94 03 00       	call   W?$nwn(ui)pnv
   38ada:	85 c0                	test   eax,eax
   38adc:	74 1f                	je     cd_change_requestor_branch_12
   38ade:	56                   	push   esi
   38adf:	6a ce                	push   0xffffffce
   38ae1:	68 40 01 00 00       	push   0x140
   38ae6:	b9 fd 93 00 00       	mov    ecx,@obj3:mscdex_cpp_variable_11                             ; fixup: num: 10316, src obj: 1, src ofs: 0x38ae7, dst obj: 3, dst ofs: 0x93fd
   38aeb:	6a 0a                	push   0xa
   38aed:	ba 0a 94 00 00       	mov    edx,@obj3:mscdex_cpp_variable_12                             ; fixup: num: 10315, src obj: 1, src ofs: 0x38aee, dst obj: 3, dst ofs: 0x940a
   38af2:	8b 1d cc 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:medfont1                              ; fixup: num: 10314, src obj: 1, src ofs: 0x38af4, dst obj: 3, dst ofs: 0x25bcc
   38af8:	e8 03 11 01 00       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
cd_change_requestor_branch_12:
   38afd:	89 c6                	mov    esi,eax
   38aff:	b8 50 00 00 00       	mov    eax,0x50
   38b04:	e8 0f 94 03 00       	call   W?$nwn(ui)pnv
   38b09:	85 c0                	test   eax,eax
   38b0b:	74 20                	je     cd_change_requestor_branch_13
   38b0d:	6a 00                	push   0x0
   38b0f:	6a ce                	push   0xffffffce
   38b11:	68 54 01 00 00       	push   0x154
   38b16:	b9 22 94 00 00       	mov    ecx,@obj3:mscdex_cpp_variable_13                             ; fixup: num: 10210, src obj: 1, src ofs: 0x38b17, dst obj: 3, dst ofs: 0x9422
   38b1b:	6a 1e                	push   0x1e
   38b1d:	ba 2f 94 00 00       	mov    edx,@obj3:mscdex_cpp_variable_14                             ; fixup: num: 10209, src obj: 1, src ofs: 0x38b1e, dst obj: 3, dst ofs: 0x942f
   38b22:	8b 1d cc 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:medfont1                              ; fixup: num: 10208, src obj: 1, src ofs: 0x38b24, dst obj: 3, dst ofs: 0x25bcc
   38b28:	e8 d3 10 01 00       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
cd_change_requestor_branch_13:
   38b2d:	89 c7                	mov    edi,eax
   38b2f:	eb 48                	jmp    cd_change_requestor_branch_15
cd_change_requestor_branch_14:
   38b31:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 10207, src obj: 1, src ofs: 0x38b32, dst obj: 3, dst ofs: 0x25a84
   38b36:	e8 65 51 01 00       	call   update_mod_84
   38b3b:	8b 0d b8 0f 01 00    	mov    ecx,DWORD PTR ds:@obj3:pal_gamma_variable_1                  ; fixup: num: 10206, src obj: 1, src ofs: 0x38b3d, dst obj: 3, dst ofs: 0x10fb8
   38b41:	51                   	push   ecx
   38b42:	a1 b4 0f 01 00       	mov    eax,ds:@obj3:pal_gamma                                       ; fixup: num: 10205, src obj: 1, src ofs: 0x38b43, dst obj: 3, dst ofs: 0x10fb4
   38b47:	50                   	push   eax
   38b48:	6a 00                	push   0x0
   38b4a:	6a 00                	push   0x0
   38b4c:	a1 84 60 02 00       	mov    eax,ds:@obj3:palette                                         ; fixup: num: 10204, src obj: 1, src ofs: 0x38b4d, dst obj: 3, dst ofs: 0x26084
   38b51:	e8 da ae fd ff       	call   fade
   38b56:	83 ec 04             	sub    esp,0x4
   38b59:	dd 05 b4 0f 01 00    	fld    QWORD PTR ds:@obj3:pal_gamma                                 ; fixup: num: 10203, src obj: 1, src ofs: 0x38b5b, dst obj: 3, dst ofs: 0x10fb4
   38b5f:	d9 1c 24             	fstp   DWORD PTR [esp]
   38b62:	ba 00 01 00 00       	mov    edx,0x100
   38b67:	b1 01                	mov    cl,0x1
   38b69:	a1 84 60 02 00       	mov    eax,ds:@obj3:palette                                         ; fixup: num: 10202, src obj: 1, src ofs: 0x38b6a, dst obj: 3, dst ofs: 0x26084
   38b6e:	88 0d 7e 60 02 00    	mov    BYTE PTR ds:@obj3:faded_in,cl                                ; fixup: num: 10201, src obj: 1, src ofs: 0x38b70, dst obj: 3, dst ofs: 0x2607e
   38b74:	e8 f7 9b fd ff       	call   setvgapalette_mod_14
cd_change_requestor_branch_15:
   38b79:	31 c0                	xor    eax,eax
cd_change_requestor_branch_16:
   38b7b:	66 3b 05 08 59 02 00 	cmp    ax,WORD PTR ds:@obj3:raw_key                                 ; fixup: num: 10200, src obj: 1, src ofs: 0x38b7e, dst obj: 3, dst ofs: 0x25908
   38b82:	74 08                	je     cd_change_requestor_branch_17
   38b84:	66 a3 08 59 02 00    	mov    ds:@obj3:raw_key,ax                                          ; fixup: num: 10199, src obj: 1, src ofs: 0x38b86, dst obj: 3, dst ofs: 0x25908
   38b8a:	eb ef                	jmp    cd_change_requestor_branch_16
cd_change_requestor_branch_17:
   38b8c:	ba 84 5a 02 00       	mov    edx,@obj3:the_screen                                         ; fixup: num: 10323, src obj: 1, src ofs: 0x38b8d, dst obj: 3, dst ofs: 0x25a84
cd_change_requestor_branch_18:
   38b91:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 10322, src obj: 1, src ofs: 0x38b93, dst obj: 3, dst ofs: 0x25974
   38b98:	75 09                	jne    cd_change_requestor_branch_19
   38b9a:	89 d0                	mov    eax,edx
   38b9c:	e8 ff 50 01 00       	call   update_mod_84
   38ba1:	eb ee                	jmp    cd_change_requestor_branch_18
cd_change_requestor_branch_19:
   38ba3:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 10321, src obj: 1, src ofs: 0x38ba5, dst obj: 3, dst ofs: 0x25974
   38baa:	75 f7                	jne    cd_change_requestor_branch_19
   38bac:	ba 43 94 00 00       	mov    edx,@obj3:mscdex_cpp_variable_15                             ; fixup: num: 10223, src obj: 1, src ofs: 0x38bad, dst obj: 3, dst ofs: 0x9443
   38bb1:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 10222, src obj: 1, src ofs: 0x38bb2, dst obj: 3, dst ofs: 0x32438
   38bb6:	e8 15 4c 03 00       	call   get
   38bbb:	85 c0                	test   eax,eax
   38bbd:	74 29                	je     cd_change_requestor_branch_20
   38bbf:	6a 00                	push   0x0
   38bc1:	6a 00                	push   0x0
   38bc3:	8b 15 b8 0f 01 00    	mov    edx,DWORD PTR ds:@obj3:pal_gamma_variable_1                  ; fixup: num: 10221, src obj: 1, src ofs: 0x38bc5, dst obj: 3, dst ofs: 0x10fb8
   38bc9:	52                   	push   edx
   38bca:	8b 1d b4 0f 01 00    	mov    ebx,DWORD PTR ds:@obj3:pal_gamma                             ; fixup: num: 10220, src obj: 1, src ofs: 0x38bcc, dst obj: 3, dst ofs: 0x10fb4
   38bd0:	53                   	push   ebx
   38bd1:	a1 84 60 02 00       	mov    eax,ds:@obj3:palette                                         ; fixup: num: 10219, src obj: 1, src ofs: 0x38bd2, dst obj: 3, dst ofs: 0x26084
   38bd6:	30 db                	xor    bl,bl
   38bd8:	e8 53 ae fd ff       	call   fade
   38bdd:	88 1d 7e 60 02 00    	mov    BYTE PTR ds:@obj3:faded_in,bl                                ; fixup: num: 10218, src obj: 1, src ofs: 0x38bdf, dst obj: 3, dst ofs: 0x2607e
   38be3:	e9 9a 00 00 00       	jmp    cd_change_requestor_branch_22
cd_change_requestor_branch_20:
   38be8:	0f bf 05 08 59 02 00 	movsx  eax,WORD PTR ds:@obj3:raw_key                                ; fixup: num: 10217, src obj: 1, src ofs: 0x38beb, dst obj: 3, dst ofs: 0x25908
   38bef:	83 f8 29             	cmp    eax,0x29
   38bf2:	0f 84 8a 00 00 00    	je     cd_change_requestor_branch_22
   38bf8:	8d 5d a8             	lea    ebx,[ebp-0x58]
   38bfb:	ba 08 00 00 00       	mov    edx,0x8
   38c00:	8d 85 a8 fd ff ff    	lea    eax,[ebp-0x258]
   38c06:	e8 2b dc 03 00       	call   _dos_findfirst_
   38c0b:	85 c0                	test   eax,eax
   38c0d:	75 3e                	jne    cd_change_requestor_branch_21
   38c0f:	30 e4                	xor    ah,ah
   38c11:	8d 95 a8 fe ff ff    	lea    edx,[ebp-0x158]
   38c17:	88 25 6c 59 02 00    	mov    BYTE PTR ds:@obj3:cr_mod_72,ah                               ; fixup: num: 10216, src obj: 1, src ofs: 0x38c19, dst obj: 3, dst ofs: 0x2596c
   38c1d:	8d 45 c6             	lea    eax,[ebp-0x3a]
   38c20:	e8 35 88 03 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   38c25:	85 c0                	test   eax,eax
   38c27:	75 24                	jne    cd_change_requestor_branch_21
   38c29:	50                   	push   eax
   38c2a:	50                   	push   eax
   38c2b:	8b 15 b8 0f 01 00    	mov    edx,DWORD PTR ds:@obj3:pal_gamma_variable_1                  ; fixup: num: 10215, src obj: 1, src ofs: 0x38c2d, dst obj: 3, dst ofs: 0x10fb8
   38c31:	52                   	push   edx
   38c32:	8b 1d b4 0f 01 00    	mov    ebx,DWORD PTR ds:@obj3:pal_gamma                             ; fixup: num: 10214, src obj: 1, src ofs: 0x38c34, dst obj: 3, dst ofs: 0x10fb4
   38c38:	53                   	push   ebx
   38c39:	a1 84 60 02 00       	mov    eax,ds:@obj3:palette                                         ; fixup: num: 10213, src obj: 1, src ofs: 0x38c3a, dst obj: 3, dst ofs: 0x26084
   38c3e:	30 d2                	xor    dl,dl
   38c40:	e8 eb ad fd ff       	call   fade
   38c45:	88 15 7e 60 02 00    	mov    BYTE PTR ds:@obj3:faded_in,dl                                ; fixup: num: 10212, src obj: 1, src ofs: 0x38c47, dst obj: 3, dst ofs: 0x2607e
   38c4b:	eb 35                	jmp    cd_change_requestor_branch_22
cd_change_requestor_branch_21:
   38c4d:	31 c0                	xor    eax,eax
   38c4f:	a0 6c 59 02 00       	mov    al,ds:@obj3:cr_mod_72                                        ; fixup: num: 10211, src obj: 1, src ofs: 0x38c50, dst obj: 3, dst ofs: 0x2596c
   38c54:	85 c0                	test   eax,eax
   38c56:	0f 85 63 fe ff ff    	jne    cd_change_requestor_branch_11
   38c5c:	50                   	push   eax
   38c5d:	50                   	push   eax
   38c5e:	8b 0d b8 0f 01 00    	mov    ecx,DWORD PTR ds:@obj3:pal_gamma_variable_1                  ; fixup: num: 10230, src obj: 1, src ofs: 0x38c60, dst obj: 3, dst ofs: 0x10fb8
   38c64:	51                   	push   ecx
   38c65:	a1 b4 0f 01 00       	mov    eax,ds:@obj3:pal_gamma                                       ; fixup: num: 10229, src obj: 1, src ofs: 0x38c66, dst obj: 3, dst ofs: 0x10fb4
   38c6a:	50                   	push   eax
   38c6b:	a1 84 60 02 00       	mov    eax,ds:@obj3:palette                                         ; fixup: num: 10228, src obj: 1, src ofs: 0x38c6c, dst obj: 3, dst ofs: 0x26084
   38c70:	30 f6                	xor    dh,dh
   38c72:	e8 b9 ad fd ff       	call   fade
   38c77:	88 35 7e 60 02 00    	mov    BYTE PTR ds:@obj3:faded_in,dh                                ; fixup: num: 10227, src obj: 1, src ofs: 0x38c79, dst obj: 3, dst ofs: 0x2607e
   38c7d:	e9 3d fe ff ff       	jmp    cd_change_requestor_branch_11
cd_change_requestor_branch_22:
   38c82:	6a 01                	push   0x1
   38c84:	b9 e0 01 00 00       	mov    ecx,0x1e0
   38c89:	bb 80 02 00 00       	mov    ebx,0x280
   38c8e:	6a 00                	push   0x0
   38c90:	31 d2                	xor    edx,edx
   38c92:	31 c0                	xor    eax,eax
   38c94:	e8 b7 ca fc ff       	call   VESA_rectangle
   38c99:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
   38c9c:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 10226, src obj: 1, src ofs: 0x38c9d, dst obj: 3, dst ofs: 0x25a88
   38ca1:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
   38ca4:	e8 47 3a 01 00       	call   remove_bitmap
   38ca9:	85 c9                	test   ecx,ecx
   38cab:	74 0e                	je     cd_change_requestor_branch_23
   38cad:	89 c8                	mov    eax,ecx
   38caf:	31 d2                	xor    edx,edx
   38cb1:	e8 ea 26 00 00       	call   W?$dt:BTMAP$n()_
   38cb6:	e8 bd 93 03 00       	call   W?$dln(pnv)v
cd_change_requestor_branch_23:
   38cbb:	85 f6                	test   esi,esi
   38cbd:	74 10                	je     cd_change_requestor_branch_24
   38cbf:	74 0e                	je     cd_change_requestor_branch_24
   38cc1:	89 f0                	mov    eax,esi
   38cc3:	31 d2                	xor    edx,edx
   38cc5:	e8 56 12 01 00       	call   W?$dt:TEXTBM$n()_
   38cca:	e8 a9 93 03 00       	call   W?$dln(pnv)v
cd_change_requestor_branch_24:
   38ccf:	85 ff                	test   edi,edi
   38cd1:	74 10                	je     cd_change_requestor_branch_25
   38cd3:	74 0e                	je     cd_change_requestor_branch_25
   38cd5:	89 f8                	mov    eax,edi
   38cd7:	31 d2                	xor    edx,edx
   38cd9:	e8 42 12 01 00       	call   W?$dt:TEXTBM$n()_
   38cde:	e8 95 93 03 00       	call   W?$dln(pnv)v
cd_change_requestor_branch_25:
   38ce3:	e8 98 3d fd ff       	call   XFILE_shutdown
   38ce8:	25 ff 00 00 00       	and    eax,0xff
   38ced:	75 0f                	jne    cd_change_requestor_branch_26
   38cef:	bb 4b 94 00 00       	mov    ebx,@obj3:mscdex_cpp_variable_16                             ; fixup: num: 10225, src obj: 1, src ofs: 0x38cf0, dst obj: 3, dst ofs: 0x944b
   38cf4:	ba 58 01 00 00       	mov    edx,0x158
   38cf9:	e8 32 f3 ff ff       	call   _error_report
cd_change_requestor_branch_26:
   38cfe:	ba 7c 94 00 00       	mov    edx,@obj3:mscdex_cpp_variable_17                             ; fixup: num: 10224, src obj: 1, src ofs: 0x38cff, dst obj: 3, dst ofs: 0x947c
   38d03:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 10253, src obj: 1, src ofs: 0x38d04, dst obj: 3, dst ofs: 0x32438
   38d08:	e8 c3 4a 03 00       	call   get
   38d0d:	85 c0                	test   eax,eax
   38d0f:	0f 85 01 01 00 00    	jne    cd_change_requestor_branch_30
   38d15:	e9 1a 01 00 00       	jmp    cd_change_requestor_branch_32
cd_change_requestor_branch_27:
   38d1a:	bb 84 94 00 00       	mov    ebx,@obj3:mscdex_cpp_variable_18                             ; fixup: num: 10252, src obj: 1, src ofs: 0x38d1b, dst obj: 3, dst ofs: 0x9484
   38d1f:	ba a1 94 00 00       	mov    edx,@obj3:mscdex_cpp_variable_19                             ; fixup: num: 10251, src obj: 1, src ofs: 0x38d20, dst obj: 3, dst ofs: 0x94a1
   38d24:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 10250, src obj: 1, src ofs: 0x38d25, dst obj: 3, dst ofs: 0x32438
   38d29:	e8 42 4b 03 00       	call   set
   38d2e:	bb a9 94 00 00       	mov    ebx,@obj3:mscdex_cpp_variable_20                             ; fixup: num: 10249, src obj: 1, src ofs: 0x38d2f, dst obj: 3, dst ofs: 0x94a9
   38d33:	ba c4 94 00 00       	mov    edx,@obj3:mscdex_cpp_variable_21                             ; fixup: num: 10248, src obj: 1, src ofs: 0x38d34, dst obj: 3, dst ofs: 0x94c4
   38d38:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 10247, src obj: 1, src ofs: 0x38d39, dst obj: 3, dst ofs: 0x32438
   38d3d:	e8 2e 4b 03 00       	call   set
   38d42:	bb cc 94 00 00       	mov    ebx,@obj3:mscdex_cpp_variable_22                             ; fixup: num: 10246, src obj: 1, src ofs: 0x38d43, dst obj: 3, dst ofs: 0x94cc
   38d47:	ba ea 94 00 00       	mov    edx,@obj3:mscdex_cpp_variable_23                             ; fixup: num: 10245, src obj: 1, src ofs: 0x38d48, dst obj: 3, dst ofs: 0x94ea
   38d4c:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 10244, src obj: 1, src ofs: 0x38d4d, dst obj: 3, dst ofs: 0x32438
   38d51:	e8 1a 4b 03 00       	call   set
   38d56:	bb f2 94 00 00       	mov    ebx,@obj3:mscdex_cpp_variable_24                             ; fixup: num: 10243, src obj: 1, src ofs: 0x38d57, dst obj: 3, dst ofs: 0x94f2
   38d5b:	ba 04 95 00 00       	mov    edx,@obj3:mscdex_cpp_variable_25                             ; fixup: num: 10242, src obj: 1, src ofs: 0x38d5c, dst obj: 3, dst ofs: 0x9504
   38d60:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 10241, src obj: 1, src ofs: 0x38d61, dst obj: 3, dst ofs: 0x32438
   38d65:	e8 06 4b 03 00       	call   set
   38d6a:	e9 c5 00 00 00       	jmp    cd_change_requestor_branch_32
cd_change_requestor_branch_28:
   38d6f:	bb 0b 95 00 00       	mov    ebx,@obj3:mscdex_cpp_variable_26                             ; fixup: num: 10240, src obj: 1, src ofs: 0x38d70, dst obj: 3, dst ofs: 0x950b
   38d74:	ba 28 95 00 00       	mov    edx,@obj3:mscdex_cpp_variable_27                             ; fixup: num: 10239, src obj: 1, src ofs: 0x38d75, dst obj: 3, dst ofs: 0x9528
   38d79:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 10238, src obj: 1, src ofs: 0x38d7a, dst obj: 3, dst ofs: 0x32438
   38d7e:	e8 ed 4a 03 00       	call   set
   38d83:	bb 30 95 00 00       	mov    ebx,@obj3:mscdex_cpp_variable_28                             ; fixup: num: 10237, src obj: 1, src ofs: 0x38d84, dst obj: 3, dst ofs: 0x9530
   38d88:	ba 4b 95 00 00       	mov    edx,@obj3:mscdex_cpp_variable_29                             ; fixup: num: 10236, src obj: 1, src ofs: 0x38d89, dst obj: 3, dst ofs: 0x954b
   38d8d:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 10235, src obj: 1, src ofs: 0x38d8e, dst obj: 3, dst ofs: 0x32438
   38d92:	e8 d9 4a 03 00       	call   set
   38d97:	bb 53 95 00 00       	mov    ebx,@obj3:mscdex_cpp_variable_30                             ; fixup: num: 10234, src obj: 1, src ofs: 0x38d98, dst obj: 3, dst ofs: 0x9553
   38d9c:	ba 71 95 00 00       	mov    edx,@obj3:mscdex_cpp_variable_31                             ; fixup: num: 10233, src obj: 1, src ofs: 0x38d9d, dst obj: 3, dst ofs: 0x9571
   38da1:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 10232, src obj: 1, src ofs: 0x38da2, dst obj: 3, dst ofs: 0x32438
   38da6:	e8 c5 4a 03 00       	call   set
   38dab:	bb 79 95 00 00       	mov    ebx,@obj3:mscdex_cpp_variable_32                             ; fixup: num: 10231, src obj: 1, src ofs: 0x38dac, dst obj: 3, dst ofs: 0x9579
   38db0:	ba 8b 95 00 00       	mov    edx,@obj3:mscdex_cpp_variable_33                             ; fixup: num: 10169, src obj: 1, src ofs: 0x38db1, dst obj: 3, dst ofs: 0x958b
   38db5:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 10168, src obj: 1, src ofs: 0x38db6, dst obj: 3, dst ofs: 0x32438
   38dba:	e8 b1 4a 03 00       	call   set
   38dbf:	e9 70 00 00 00       	jmp    cd_change_requestor_branch_32
cd_change_requestor_branch_29:
   38dc4:	bb 92 95 00 00       	mov    ebx,@obj3:mscdex_cpp_variable_34                             ; fixup: num: 10167, src obj: 1, src ofs: 0x38dc5, dst obj: 3, dst ofs: 0x9592
   38dc9:	ba af 95 00 00       	mov    edx,@obj3:mscdex_cpp_variable_35                             ; fixup: num: 10166, src obj: 1, src ofs: 0x38dca, dst obj: 3, dst ofs: 0x95af
   38dce:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 10165, src obj: 1, src ofs: 0x38dcf, dst obj: 3, dst ofs: 0x32438
   38dd3:	e8 98 4a 03 00       	call   set
   38dd8:	bb b7 95 00 00       	mov    ebx,@obj3:mscdex_cpp_variable_36                             ; fixup: num: 10164, src obj: 1, src ofs: 0x38dd9, dst obj: 3, dst ofs: 0x95b7
   38ddd:	ba d2 95 00 00       	mov    edx,@obj3:mscdex_cpp_variable_37                             ; fixup: num: 10163, src obj: 1, src ofs: 0x38dde, dst obj: 3, dst ofs: 0x95d2
   38de2:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 10162, src obj: 1, src ofs: 0x38de3, dst obj: 3, dst ofs: 0x32438
   38de7:	e8 84 4a 03 00       	call   set
   38dec:	bb da 95 00 00       	mov    ebx,@obj3:mscdex_cpp_variable_38                             ; fixup: num: 10161, src obj: 1, src ofs: 0x38ded, dst obj: 3, dst ofs: 0x95da
   38df1:	ba f8 95 00 00       	mov    edx,@obj3:mscdex_cpp_variable_39                             ; fixup: num: 10160, src obj: 1, src ofs: 0x38df2, dst obj: 3, dst ofs: 0x95f8
   38df6:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 10260, src obj: 1, src ofs: 0x38df7, dst obj: 3, dst ofs: 0x32438
   38dfb:	e8 70 4a 03 00       	call   set
   38e00:	bb 00 96 00 00       	mov    ebx,@obj3:mscdex_cpp_variable_40                             ; fixup: num: 10259, src obj: 1, src ofs: 0x38e01, dst obj: 3, dst ofs: 0x9600
   38e05:	ba 12 96 00 00       	mov    edx,@obj3:mscdex_cpp_variable_41                             ; fixup: num: 10258, src obj: 1, src ofs: 0x38e06, dst obj: 3, dst ofs: 0x9612
   38e0a:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 10257, src obj: 1, src ofs: 0x38e0b, dst obj: 3, dst ofs: 0x32438
   38e0f:	e8 5c 4a 03 00       	call   set
   38e14:	eb 1e                	jmp    cd_change_requestor_branch_32
cd_change_requestor_branch_30:
   38e16:	8b 75 f4             	mov    esi,DWORD PTR [ebp-0xc]
   38e19:	83 fe 02             	cmp    esi,0x2
   38e1c:	72 0d                	jb     cd_change_requestor_branch_31
   38e1e:	0f 86 4b ff ff ff    	jbe    cd_change_requestor_branch_28
   38e24:	83 fe 03             	cmp    esi,0x3
   38e27:	74 9b                	je     cd_change_requestor_branch_29
   38e29:	eb 09                	jmp    cd_change_requestor_branch_32
cd_change_requestor_branch_31:
   38e2b:	83 fe 01             	cmp    esi,0x1
   38e2e:	0f 84 e6 fe ff ff    	je     cd_change_requestor_branch_27
cd_change_requestor_branch_32:
   38e34:	e8 07 38 fd ff       	call   XFILE_init
   38e39:	25 ff 00 00 00       	and    eax,0xff
   38e3e:	75 0f                	jne    cd_change_requestor_branch_33
   38e40:	bb 19 96 00 00       	mov    ebx,@obj3:mscdex_cpp_variable_42                             ; fixup: num: 10256, src obj: 1, src ofs: 0x38e41, dst obj: 3, dst ofs: 0x9619
   38e45:	ba 81 01 00 00       	mov    edx,0x181
   38e4a:	e8 e1 f1 ff ff       	call   _error_report
cd_change_requestor_branch_33:
   38e4f:	bb 84 01 00 00       	mov    ebx,0x184
   38e54:	ba 48 96 00 00       	mov    edx,@obj3:mscdex_cpp_variable_43                             ; fixup: num: 10255, src obj: 1, src ofs: 0x38e55, dst obj: 3, dst ofs: 0x9648
   38e59:	b8 53 96 00 00       	mov    eax,@obj3:mscdex_cpp_variable_44                             ; fixup: num: 10254, src obj: 1, src ofs: 0x38e5a, dst obj: 3, dst ofs: 0x9653
   38e5e:	e8 cd 56 fd ff       	call   XFILE_open2
   38e63:	a3 88 97 02 00       	mov    ds:@obj3:fh_Dialog,eax                                       ; fixup: num: 10178, src obj: 1, src ofs: 0x38e64, dst obj: 3, dst ofs: 0x29788
   38e68:	83 f8 ff             	cmp    eax,0xffffffff
   38e6b:	75 11                	jne    cd_change_requestor_branch_34
   38e6d:	bb 60 96 00 00       	mov    ebx,@obj3:mscdex_cpp_variable_45                             ; fixup: num: 10177, src obj: 1, src ofs: 0x38e6e, dst obj: 3, dst ofs: 0x9660
   38e72:	ba 87 01 00 00       	mov    edx,0x187
   38e77:	31 c0                	xor    eax,eax
   38e79:	e8 b2 f1 ff ff       	call   _error_report
cd_change_requestor_branch_34:
   38e7e:	83 7d f4 03          	cmp    DWORD PTR [ebp-0xc],0x3
   38e82:	75 15                	jne    cd_change_requestor_branch_35
   38e84:	b7 01                	mov    bh,0x1
   38e86:	8a 4d fc             	mov    cl,BYTE PTR [ebp-0x4]
   38e89:	88 3d 7c 60 02 00    	mov    BYTE PTR ds:@obj3:in_the_lodge,bh                            ; fixup: num: 10176, src obj: 1, src ofs: 0x38e8b, dst obj: 3, dst ofs: 0x2607c
   38e8f:	84 c9                	test   cl,cl
   38e91:	75 06                	jne    cd_change_requestor_branch_35
   38e93:	88 3d 49 7e 01 00    	mov    BYTE PTR ds:@obj3:restart_harvest_loop,bh                    ; fixup: num: 10175, src obj: 1, src ofs: 0x38e95, dst obj: 3, dst ofs: 0x17e49
cd_change_requestor_branch_35:
   38e99:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
   38e9c:	a3 a8 0f 01 00       	mov    ds:@obj3:current_cd,eax                                      ; fixup: num: 10174, src obj: 1, src ofs: 0x38e9d, dst obj: 3, dst ofs: 0x10fa8
   38ea1:	89 ec                	mov    esp,ebp
   38ea3:	5d                   	pop    ebp
   38ea4:	5f                   	pop    edi
   38ea5:	5e                   	pop    esi
   38ea6:	59                   	pop    ecx
   38ea7:	5b                   	pop    ebx
   38ea8:	c3                   	ret    
   38ea9:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   38eaf:	90                   	nop

;-------------------------------------------------
;  Function 'prepare_for_new_cd'                 -
;-------------------------------------------------
prepare_for_new_cd:
   38eb0:	53                   	push   ebx
   38eb1:	51                   	push   ecx
   38eb2:	52                   	push   edx
   38eb3:	6a 00                	push   0x0
   38eb5:	ba 00 01 00 00       	mov    edx,0x100
   38eba:	a1 84 60 02 00       	mov    eax,ds:@obj3:palette                                         ; fixup: num: 10173, src obj: 1, src ofs: 0x38ebb, dst obj: 3, dst ofs: 0x26084
   38ebf:	e8 ac 98 fd ff       	call   setvgapalette_mod_14
   38ec4:	6a 01                	push   0x1
   38ec6:	b9 e0 01 00 00       	mov    ecx,0x1e0
   38ecb:	bb 80 02 00 00       	mov    ebx,0x280
   38ed0:	6a 00                	push   0x0
   38ed2:	31 d2                	xor    edx,edx
   38ed4:	31 c0                	xor    eax,eax
   38ed6:	e8 75 c8 fc ff       	call   VESA_rectangle
   38edb:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 10172, src obj: 1, src ofs: 0x38edc, dst obj: 3, dst ofs: 0x25a88
   38ee0:	e8 fb 3a 01 00       	call   remove_all
   38ee5:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 10171, src obj: 1, src ofs: 0x38ee6, dst obj: 3, dst ofs: 0x25a88
   38eea:	8b 15 d4 5b 02 00    	mov    edx,DWORD PTR ds:@obj3:pc                                    ; fixup: num: 10170, src obj: 1, src ofs: 0x38eec, dst obj: 3, dst ofs: 0x25bd4
   38ef0:	e8 fb 37 01 00       	call   remove_bitmap
   38ef5:	6a 01                	push   0x1
   38ef7:	b9 e0 01 00 00       	mov    ecx,0x1e0
   38efc:	bb 80 02 00 00       	mov    ebx,0x280
   38f01:	6a 00                	push   0x0
   38f03:	31 d2                	xor    edx,edx
   38f05:	31 c0                	xor    eax,eax
   38f07:	e8 44 c8 fc ff       	call   VESA_rectangle
   38f0c:	e8 3f 75 01 00       	call   clear_script_data
   38f11:	ba 9c 96 00 00       	mov    edx,@obj3:mscdex_cpp_variable_47                             ; fixup: num: 10191, src obj: 1, src ofs: 0x38f12, dst obj: 3, dst ofs: 0x969c
   38f16:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 10190, src obj: 1, src ofs: 0x38f17, dst obj: 3, dst ofs: 0x32438
   38f1b:	e8 b0 48 03 00       	call   get
   38f20:	e8 5b ef ff ff       	call   script_reload
   38f25:	e8 56 de ff ff       	call   outer
   38f2a:	80 3d 14 5b 02 00 00 	cmp    BYTE PTR ds:@obj3:script_errors,0x0                          ; fixup: num: 10189, src obj: 1, src ofs: 0x38f2c, dst obj: 3, dst ofs: 0x25b14
   38f31:	74 11                	je     prepare_for_new_cd_branch_1
   38f33:	bb a1 96 00 00       	mov    ebx,@obj3:mscdex_cpp_variable_48                             ; fixup: num: 10188, src obj: 1, src ofs: 0x38f34, dst obj: 3, dst ofs: 0x96a1
   38f38:	ba ad 01 00 00       	mov    edx,0x1ad
   38f3d:	31 c0                	xor    eax,eax
   38f3f:	e8 ec f0 ff ff       	call   _error_report
prepare_for_new_cd_branch_1:
   38f44:	31 d2                	xor    edx,edx
   38f46:	b9 e0 01 00 00       	mov    ecx,0x1e0
   38f4b:	89 15 c4 5a 02 00    	mov    DWORD PTR ds:@obj3:current_room,edx                          ; fixup: num: 10187, src obj: 1, src ofs: 0x38f4d, dst obj: 3, dst ofs: 0x25ac4
   38f51:	89 15 a8 60 02 00    	mov    DWORD PTR ds:@obj3:last_room,edx                             ; fixup: num: 10186, src obj: 1, src ofs: 0x38f53, dst obj: 3, dst ofs: 0x260a8
   38f57:	b2 01                	mov    dl,0x1
   38f59:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 10185, src obj: 1, src ofs: 0x38f5a, dst obj: 3, dst ofs: 0x25bd4
   38f5e:	88 15 b1 3e 01 00    	mov    BYTE PTR ds:@obj3:show_pc,dl                                 ; fixup: num: 10184, src obj: 1, src ofs: 0x38f60, dst obj: 3, dst ofs: 0x13eb1
   38f64:	e8 d7 da 00 00       	call   clear_mod_76
   38f69:	6a 01                	push   0x1
   38f6b:	31 db                	xor    ebx,ebx
   38f6d:	31 d2                	xor    edx,edx
   38f6f:	53                   	push   ebx
   38f70:	31 c0                	xor    eax,eax
   38f72:	bb 80 02 00 00       	mov    ebx,0x280
   38f77:	e8 d4 c7 fc ff       	call   VESA_rectangle
   38f7c:	5a                   	pop    edx
   38f7d:	59                   	pop    ecx
   38f7e:	5b                   	pop    ebx
   38f7f:	c3                   	ret    

;-------------------------------------------------
;  Function 'initial_cd_volume_check'            -
;-------------------------------------------------
initial_cd_volume_check:
   38f80:	53                   	push   ebx
   38f81:	51                   	push   ecx
   38f82:	52                   	push   edx
   38f83:	56                   	push   esi
   38f84:	81 ec 80 00 00 00    	sub    esp,0x80
   38f8a:	8b 35 a8 0f 01 00    	mov    esi,DWORD PTR ds:@obj3:current_cd                            ; fixup: num: 10183, src obj: 1, src ofs: 0x38f8c, dst obj: 3, dst ofs: 0x10fa8
   38f90:	89 c3                	mov    ebx,eax
   38f92:	ba b8 96 00 00       	mov    edx,@obj3:mscdex_cpp_variable_49                             ; fixup: num: 10182, src obj: 1, src ofs: 0x38f93, dst obj: 3, dst ofs: 0x96b8
   38f97:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 10181, src obj: 1, src ofs: 0x38f98, dst obj: 3, dst ofs: 0x32438
   38f9c:	e8 2f 48 03 00       	call   get
   38fa1:	85 c0                	test   eax,eax
   38fa3:	0f 84 c8 01 00 00    	je     initial_cd_volume_check_branch_7
   38fa9:	ba c7 96 00 00       	mov    edx,@obj3:mscdex_cpp_variable_51                             ; fixup: num: 10180, src obj: 1, src ofs: 0x38faa, dst obj: 3, dst ofs: 0x96c7
   38fae:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 10179, src obj: 1, src ofs: 0x38faf, dst obj: 3, dst ofs: 0x32438
   38fb3:	e8 18 48 03 00       	call   get
   38fb8:	ba c0 96 00 00       	mov    edx,@obj3:mscdex_cpp_variable_50                             ; fixup: num: 10198, src obj: 1, src ofs: 0x38fb9, dst obj: 3, dst ofs: 0x96c0
   38fbd:	e8 98 84 03 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   38fc2:	85 c0                	test   eax,eax
   38fc4:	75 6e                	jne    initial_cd_volume_check_branch_2
   38fc6:	ba e4 96 00 00       	mov    edx,@obj3:mscdex_cpp_variable_53                             ; fixup: num: 10197, src obj: 1, src ofs: 0x38fc7, dst obj: 3, dst ofs: 0x96e4
   38fcb:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 10196, src obj: 1, src ofs: 0x38fcc, dst obj: 3, dst ofs: 0x32438
   38fd0:	e8 fb 47 03 00       	call   get
   38fd5:	ba cf 96 00 00       	mov    edx,@obj3:mscdex_cpp_variable_52                             ; fixup: num: 10195, src obj: 1, src ofs: 0x38fd6, dst obj: 3, dst ofs: 0x96cf
   38fda:	e8 7b 84 03 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   38fdf:	85 c0                	test   eax,eax
   38fe1:	75 46                	jne    initial_cd_volume_check_branch_1
   38fe3:	ba ff 96 00 00       	mov    edx,@obj3:mscdex_cpp_variable_55                             ; fixup: num: 10194, src obj: 1, src ofs: 0x38fe4, dst obj: 3, dst ofs: 0x96ff
   38fe8:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 10193, src obj: 1, src ofs: 0x38fe9, dst obj: 3, dst ofs: 0x32438
   38fed:	e8 de 47 03 00       	call   get
   38ff2:	ba ec 96 00 00       	mov    edx,@obj3:mscdex_cpp_variable_54                             ; fixup: num: 10192, src obj: 1, src ofs: 0x38ff3, dst obj: 3, dst ofs: 0x96ec
   38ff7:	e8 5e 84 03 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   38ffc:	85 c0                	test   eax,eax
   38ffe:	75 29                	jne    initial_cd_volume_check_branch_1
   39000:	ba 11 97 00 00       	mov    edx,@obj3:mscdex_cpp_variable_57                             ; fixup: num: 10450, src obj: 1, src ofs: 0x39001, dst obj: 3, dst ofs: 0x9711
   39005:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 10449, src obj: 1, src ofs: 0x39006, dst obj: 3, dst ofs: 0x32438
   3900a:	e8 c1 47 03 00       	call   get
   3900f:	ba 07 97 00 00       	mov    edx,@obj3:mscdex_cpp_variable_56                             ; fixup: num: 10448, src obj: 1, src ofs: 0x39010, dst obj: 3, dst ofs: 0x9707
   39014:	e8 41 84 03 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   39019:	85 c0                	test   eax,eax
   3901b:	75 0c                	jne    initial_cd_volume_check_branch_1
   3901d:	be 01 00 00 00       	mov    esi,0x1
   39022:	89 f0                	mov    eax,esi
   39024:	e9 2f 02 00 00       	jmp    initial_cd_volume_check_branch_16
initial_cd_volume_check_branch_1:
   39029:	8b 35 a8 0f 01 00    	mov    esi,DWORD PTR ds:@obj3:current_cd                            ; fixup: num: 10447, src obj: 1, src ofs: 0x3902b, dst obj: 3, dst ofs: 0x10fa8
   3902f:	e9 22 02 00 00       	jmp    initial_cd_volume_check_branch_15
initial_cd_volume_check_branch_2:
   39034:	ba 35 97 00 00       	mov    edx,@obj3:mscdex_cpp_variable_59                             ; fixup: num: 10446, src obj: 1, src ofs: 0x39035, dst obj: 3, dst ofs: 0x9735
   39039:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 10445, src obj: 1, src ofs: 0x3903a, dst obj: 3, dst ofs: 0x32438
   3903e:	e8 8d 47 03 00       	call   get
   39043:	ba 18 97 00 00       	mov    edx,@obj3:mscdex_cpp_variable_58                             ; fixup: num: 10444, src obj: 1, src ofs: 0x39044, dst obj: 3, dst ofs: 0x9718
   39048:	e8 0d 84 03 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   3904d:	85 c0                	test   eax,eax
   3904f:	75 44                	jne    initial_cd_volume_check_branch_3
   39051:	ba 58 97 00 00       	mov    edx,@obj3:mscdex_cpp_variable_61                             ; fixup: num: 10443, src obj: 1, src ofs: 0x39052, dst obj: 3, dst ofs: 0x9758
   39056:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 10442, src obj: 1, src ofs: 0x39057, dst obj: 3, dst ofs: 0x32438
   3905b:	e8 70 47 03 00       	call   get
   39060:	ba 3d 97 00 00       	mov    edx,@obj3:mscdex_cpp_variable_60                             ; fixup: num: 10441, src obj: 1, src ofs: 0x39061, dst obj: 3, dst ofs: 0x973d
   39065:	e8 f0 83 03 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   3906a:	85 c0                	test   eax,eax
   3906c:	75 27                	jne    initial_cd_volume_check_branch_3
   3906e:	ba 72 97 00 00       	mov    edx,@obj3:mscdex_cpp_variable_63                             ; fixup: num: 10466, src obj: 1, src ofs: 0x3906f, dst obj: 3, dst ofs: 0x9772
   39073:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 10465, src obj: 1, src ofs: 0x39074, dst obj: 3, dst ofs: 0x32438
   39078:	e8 53 47 03 00       	call   get
   3907d:	ba 60 97 00 00       	mov    edx,@obj3:mscdex_cpp_variable_62                             ; fixup: num: 10464, src obj: 1, src ofs: 0x3907e, dst obj: 3, dst ofs: 0x9760
   39082:	e8 d3 83 03 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   39087:	85 c0                	test   eax,eax
   39089:	75 0a                	jne    initial_cd_volume_check_branch_3
   3908b:	be 01 00 00 00       	mov    esi,0x1
   39090:	e9 be 00 00 00       	jmp    initial_cd_volume_check_branch_6
initial_cd_volume_check_branch_3:
   39095:	ba 96 97 00 00       	mov    edx,@obj3:mscdex_cpp_variable_65                             ; fixup: num: 10463, src obj: 1, src ofs: 0x39096, dst obj: 3, dst ofs: 0x9796
   3909a:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 10462, src obj: 1, src ofs: 0x3909b, dst obj: 3, dst ofs: 0x32438
   3909f:	e8 2c 47 03 00       	call   get
   390a4:	ba 79 97 00 00       	mov    edx,@obj3:mscdex_cpp_variable_64                             ; fixup: num: 10461, src obj: 1, src ofs: 0x390a5, dst obj: 3, dst ofs: 0x9779
   390a9:	e8 ac 83 03 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   390ae:	85 c0                	test   eax,eax
   390b0:	75 41                	jne    initial_cd_volume_check_branch_4
   390b2:	ba b9 97 00 00       	mov    edx,@obj3:mscdex_cpp_variable_67                             ; fixup: num: 10460, src obj: 1, src ofs: 0x390b3, dst obj: 3, dst ofs: 0x97b9
   390b7:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 10459, src obj: 1, src ofs: 0x390b8, dst obj: 3, dst ofs: 0x32438
   390bc:	e8 0f 47 03 00       	call   get
   390c1:	ba 9e 97 00 00       	mov    edx,@obj3:mscdex_cpp_variable_66                             ; fixup: num: 10458, src obj: 1, src ofs: 0x390c2, dst obj: 3, dst ofs: 0x979e
   390c6:	e8 8f 83 03 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   390cb:	85 c0                	test   eax,eax
   390cd:	75 24                	jne    initial_cd_volume_check_branch_4
   390cf:	ba d3 97 00 00       	mov    edx,@obj3:mscdex_cpp_variable_69                             ; fixup: num: 10457, src obj: 1, src ofs: 0x390d0, dst obj: 3, dst ofs: 0x97d3
   390d4:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 10456, src obj: 1, src ofs: 0x390d5, dst obj: 3, dst ofs: 0x32438
   390d9:	e8 f2 46 03 00       	call   get
   390de:	ba c1 97 00 00       	mov    edx,@obj3:mscdex_cpp_variable_68                             ; fixup: num: 10455, src obj: 1, src ofs: 0x390df, dst obj: 3, dst ofs: 0x97c1
   390e3:	e8 72 83 03 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   390e8:	85 c0                	test   eax,eax
   390ea:	75 07                	jne    initial_cd_volume_check_branch_4
   390ec:	be 02 00 00 00       	mov    esi,0x2
   390f1:	eb 60                	jmp    initial_cd_volume_check_branch_6
initial_cd_volume_check_branch_4:
   390f3:	ba f7 97 00 00       	mov    edx,@obj3:mscdex_cpp_variable_71                             ; fixup: num: 10454, src obj: 1, src ofs: 0x390f4, dst obj: 3, dst ofs: 0x97f7
   390f8:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 10453, src obj: 1, src ofs: 0x390f9, dst obj: 3, dst ofs: 0x32438
   390fd:	e8 ce 46 03 00       	call   get
   39102:	ba da 97 00 00       	mov    edx,@obj3:mscdex_cpp_variable_70                             ; fixup: num: 10452, src obj: 1, src ofs: 0x39103, dst obj: 3, dst ofs: 0x97da
   39107:	e8 4e 83 03 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   3910c:	85 c0                	test   eax,eax
   3910e:	75 41                	jne    initial_cd_volume_check_branch_5
   39110:	ba 1a 98 00 00       	mov    edx,@obj3:mscdex_cpp_variable_73                             ; fixup: num: 10451, src obj: 1, src ofs: 0x39111, dst obj: 3, dst ofs: 0x981a
   39115:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 10478, src obj: 1, src ofs: 0x39116, dst obj: 3, dst ofs: 0x32438
   3911a:	e8 b1 46 03 00       	call   get
   3911f:	ba ff 97 00 00       	mov    edx,@obj3:mscdex_cpp_variable_72                             ; fixup: num: 10477, src obj: 1, src ofs: 0x39120, dst obj: 3, dst ofs: 0x97ff
   39124:	e8 31 83 03 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   39129:	85 c0                	test   eax,eax
   3912b:	75 24                	jne    initial_cd_volume_check_branch_5
   3912d:	ba 34 98 00 00       	mov    edx,@obj3:mscdex_cpp_variable_75                             ; fixup: num: 10476, src obj: 1, src ofs: 0x3912e, dst obj: 3, dst ofs: 0x9834
   39132:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 10475, src obj: 1, src ofs: 0x39133, dst obj: 3, dst ofs: 0x32438
   39137:	e8 94 46 03 00       	call   get
   3913c:	ba 22 98 00 00       	mov    edx,@obj3:mscdex_cpp_variable_74                             ; fixup: num: 10474, src obj: 1, src ofs: 0x3913d, dst obj: 3, dst ofs: 0x9822
   39141:	e8 14 83 03 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   39146:	85 c0                	test   eax,eax
   39148:	75 07                	jne    initial_cd_volume_check_branch_5
   3914a:	be 03 00 00 00       	mov    esi,0x3
   3914f:	eb 02                	jmp    initial_cd_volume_check_branch_6
initial_cd_volume_check_branch_5:
   39151:	31 f6                	xor    esi,esi
initial_cd_volume_check_branch_6:
   39153:	39 f3                	cmp    ebx,esi
   39155:	0f 85 fb 00 00 00    	jne    initial_cd_volume_check_branch_15
   3915b:	b8 01 00 00 00       	mov    eax,0x1
   39160:	89 35 a8 0f 01 00    	mov    DWORD PTR ds:@obj3:current_cd,esi                            ; fixup: num: 10473, src obj: 1, src ofs: 0x39162, dst obj: 3, dst ofs: 0x10fa8
   39166:	81 c4 80 00 00 00    	add    esp,0x80
   3916c:	5e                   	pop    esi
   3916d:	5a                   	pop    edx
   3916e:	59                   	pop    ecx
   3916f:	5b                   	pop    ebx
   39170:	c3                   	ret    
initial_cd_volume_check_branch_7:
   39171:	ba 00 15 00 00       	mov    edx,0x1500
   39176:	bb 00 00 00 00       	mov    ebx,@obj2:call_structure                                     ; fixup: num: 10472, src obj: 1, src ofs: 0x39177, dst obj: 2, dst ofs: 0x0
   3917b:	a3 10 00 00 00       	mov    ds:@obj2:call_structure_variable_1,eax                       ; fixup: num: 10471, src obj: 1, src ofs: 0x3917c, dst obj: 2, dst ofs: 0x10
   39180:	8c d9                	mov    ecx,ds
   39182:	b8 2f 00 00 00       	mov    eax,0x2f
   39187:	89 15 1c 00 00 00    	mov    DWORD PTR ds:@obj2:call_structure_variable_3,edx             ; fixup: num: 10470, src obj: 1, src ofs: 0x39189, dst obj: 2, dst ofs: 0x1c
   3918d:	e8 3e e1 fc ff       	call   simulate_real_mode_interrupt
   39192:	66 f7 05 10 00 00 00 ff ff 	test   WORD PTR ds:@obj2:call_structure_variable_1,0xffff     ; fixup: num: 10469, src obj: 1, src ofs: 0x39195, dst obj: 2, dst ofs: 0x10
   3919b:	74 0d                	je     initial_cd_volume_check_branch_8
   3919d:	66 a1 18 00 00 00    	mov    ax,ds:@obj2:call_structure_variable_2                        ; fixup: num: 10468, src obj: 1, src ofs: 0x3919f, dst obj: 2, dst ofs: 0x18
   391a3:	66 89 44 24 7c       	mov    WORD PTR [esp+0x7c],ax
   391a8:	eb 07                	jmp    initial_cd_volume_check_branch_9
initial_cd_volume_check_branch_8:
   391aa:	66 c7 44 24 7c ff ff 	mov    WORD PTR [esp+0x7c],0xffff
initial_cd_volume_check_branch_9:
   391b1:	0f bf 44 24 7c       	movsx  eax,WORD PTR [esp+0x7c]
   391b6:	83 c0 41             	add    eax,0x41
   391b9:	50                   	push   eax
   391ba:	68 3b 98 00 00       	push   @obj3:mscdex_cpp_variable_76                                 ; fixup: num: 10467, src obj: 1, src ofs: 0x391bb, dst obj: 3, dst ofs: 0x983b
   391bf:	8d 44 24 08          	lea    eax,[esp+0x8]
   391c3:	50                   	push   eax
   391c4:	8c ca                	mov    edx,cs
   391c6:	e8 16 7a 03 00       	call   sprintf_
   391cb:	83 c4 0c             	add    esp,0xc
   391ce:	b8 90 88 03 00       	mov    eax,@obj1:critical_error_handler                             ; fixup: num: 10486, src obj: 1, src ofs: 0x391cf, dst obj: 1, dst ofs: 0x38890
   391d3:	8d 5c 24 50          	lea    ebx,[esp+0x50]
   391d7:	e8 7c d5 03 00       	call   _harderr_
   391dc:	ba 08 00 00 00       	mov    edx,0x8
   391e1:	89 e0                	mov    eax,esp
   391e3:	e8 4e d6 03 00       	call   _dos_findfirst_
   391e8:	85 c0                	test   eax,eax
   391ea:	75 5c                	jne    initial_cd_volume_check_branch_12
   391ec:	ba 42 98 00 00       	mov    edx,@obj3:mscdex_cpp_variable_77                             ; fixup: num: 10485, src obj: 1, src ofs: 0x391ed, dst obj: 3, dst ofs: 0x9842
   391f1:	8d 44 24 6e          	lea    eax,[esp+0x6e]
   391f5:	e8 60 82 03 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   391fa:	85 c0                	test   eax,eax
   391fc:	75 18                	jne    initial_cd_volume_check_branch_10
   391fe:	be 01 00 00 00       	mov    esi,0x1
   39203:	89 f0                	mov    eax,esi
   39205:	89 35 a8 0f 01 00    	mov    DWORD PTR ds:@obj3:current_cd,esi                            ; fixup: num: 10484, src obj: 1, src ofs: 0x39207, dst obj: 3, dst ofs: 0x10fa8
   3920b:	81 c4 80 00 00 00    	add    esp,0x80
   39211:	5e                   	pop    esi
   39212:	5a                   	pop    edx
   39213:	59                   	pop    ecx
   39214:	5b                   	pop    ebx
   39215:	c3                   	ret    
initial_cd_volume_check_branch_10:
   39216:	ba 48 98 00 00       	mov    edx,@obj3:mscdex_cpp_variable_78                             ; fixup: num: 10483, src obj: 1, src ofs: 0x39217, dst obj: 3, dst ofs: 0x9848
   3921b:	8d 44 24 6e          	lea    eax,[esp+0x6e]
   3921f:	e8 36 82 03 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   39224:	85 c0                	test   eax,eax
   39226:	75 07                	jne    initial_cd_volume_check_branch_11
   39228:	be 02 00 00 00       	mov    esi,0x2
   3922d:	eb 1b                	jmp    initial_cd_volume_check_branch_13
initial_cd_volume_check_branch_11:
   3922f:	ba 4e 98 00 00       	mov    edx,@obj3:mscdex_cpp_variable_79                             ; fixup: num: 10482, src obj: 1, src ofs: 0x39230, dst obj: 3, dst ofs: 0x984e
   39234:	8d 44 24 6e          	lea    eax,[esp+0x6e]
   39238:	e8 1d 82 03 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   3923d:	85 c0                	test   eax,eax
   3923f:	75 0f                	jne    initial_cd_volume_check_branch_14
   39241:	be 03 00 00 00       	mov    esi,0x3
   39246:	eb 02                	jmp    initial_cd_volume_check_branch_13
initial_cd_volume_check_branch_12:
   39248:	31 f6                	xor    esi,esi
initial_cd_volume_check_branch_13:
   3924a:	89 35 a8 0f 01 00    	mov    DWORD PTR ds:@obj3:current_cd,esi                            ; fixup: num: 10481, src obj: 1, src ofs: 0x3924c, dst obj: 3, dst ofs: 0x10fa8
initial_cd_volume_check_branch_14:
   39250:	8b 35 a8 0f 01 00    	mov    esi,DWORD PTR ds:@obj3:current_cd                            ; fixup: num: 10480, src obj: 1, src ofs: 0x39252, dst obj: 3, dst ofs: 0x10fa8
initial_cd_volume_check_branch_15:
   39256:	31 c0                	xor    eax,eax
initial_cd_volume_check_branch_16:
   39258:	89 35 a8 0f 01 00    	mov    DWORD PTR ds:@obj3:current_cd,esi                            ; fixup: num: 10479, src obj: 1, src ofs: 0x3925a, dst obj: 3, dst ofs: 0x10fa8
   3925e:	81 c4 80 00 00 00    	add    esp,0x80
   39264:	5e                   	pop    esi
   39265:	5a                   	pop    edx
   39266:	59                   	pop    ecx
   39267:	5b                   	pop    ebx
   39268:	c3                   	ret    
;-------------------------------------------------
;  Bad code 71 (zero after ret):                 -
;-------------------------------------------------
;  39267:	5b                   	pop    ebx
;  39268:	c3                   	ret    
;  39269:	00 00                	add    BYTE PTR [eax],al
;  3926b:	00 00                	add    BYTE PTR [eax],al
;-------------------------------------------------
;  Padding data (7 bytes):                       -
;-------------------------------------------------
   39269:	00 00 00 00 00 00 .. 	db     7 dup(0x00)
;-------------------------------------------------
;  End of bad code 71                            -
;-------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 72 (D:\SOURCE\mscdex.cpp)                                     -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 72: D:\SOURCE\mscdex.cpp                                             -
;                                                                              -
;-------------------------------------------------------------------------------
call_structure:
       0:	00 00 00 00 00 00 .. 	db     16 dup(0x00)                                                 ; dec:   0, chr: '\0'
call_structure_variable_1:                                                                          ; access sizes: DWORD, WORD
      10:	00 00 00 00 00 00 .. 	dw     4 dup(0x0000)
call_structure_variable_2:                                                                          ; access size: WORD
      18:	00 00 00 00          	dw     2 dup(0x0000)
call_structure_variable_3:                                                                          ; access sizes: DWORD, BYTE
      1c:	00 00 00 00 00 00 .. 	db     22 dup(0x00)                                                 ; dec:   0, chr: '\0'

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 72 (D:\SOURCE\mscdex.cpp)                                     -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 72: D:\SOURCE\mscdex.cpp                                             -
;                                                                              -
;-------------------------------------------------------------------------------
mscdex_cpp_variable_1:
    9368:	44 41 59 5f 46 4c 41 47 00 	db     "DAY_FLAG",0x00
mscdex_cpp_variable_2:
    9371:	31 3a 5c 67 72 61 70 68 69 63 5c 6f 74 68 65 72 5c 43 44 25 69 2e 42 4d 00 	db     "1:\graphic\other\CD%i.BM",0x00
mscdex_cpp_variable_3:
    938a:	44 49 53 4b 25 69 00 	db     "DISK%i",0x00
mscdex_cpp_variable_4:
    9391:	6d 73 63 64 65 78 2e 63 70 70 00 	db     "mscdex.cpp",0x00
mscdex_cpp_variable_5:
    939c:	31 3a 5c 67 72 61 70 68 69 63 5c 70 61 6c 5c 63 64 31 2e 70 61 6c 00 	db     "1:\graphic\pal\cd1.pal",0x00
mscdex_cpp_variable_6:
    93b3:	6d 73 63 64 65 78 2e 63 70 70 00 	db     "mscdex.cpp",0x00
mscdex_cpp_variable_7:
    93be:	31 3a 5c 67 72 61 70 68 69 63 5c 70 61 6c 5c 63 64 31 2e 70 61 6c 00 	db     "1:\graphic\pal\cd1.pal",0x00
mscdex_cpp_variable_8:
    93d5:	50 61 6c 65 74 74 65 20 6e 6f 74 20 61 62 6c 65 20 74 6f 20 6c 6f 61 64 21 00 	db     "Palette not able to load!",0x00
mscdex_cpp_variable_9:
    93ef:	43 44 5f 42 4b 47 00 	db     "CD_BKG",0x00
mscdex_cpp_variable_10:
    93f6:	25 63 3a 2a 2e 2a 00 	db     "%c:*.*",0x00
mscdex_cpp_variable_11:
    93fd:	44 52 49 56 45 5f 45 52 52 4f 52 31 00 	db     "DRIVE_ERROR1",0x00
mscdex_cpp_variable_12:
    940a:	43 44 2d 52 4f 4d 20 44 52 49 56 45 20 4e 4f 54 20 52 45 41 44 59 21 00 	db     "CD-ROM DRIVE NOT READY!",0x00
mscdex_cpp_variable_13:
    9422:	44 52 49 56 45 5f 45 52 52 4f 52 32 00 	db     "DRIVE_ERROR2",0x00
mscdex_cpp_variable_14:
    942f:	50 4c 45 41 53 45 20 54 52 59 20 41 47 41 49 4e 2e 2e 2e 00 	db     "PLEASE TRY AGAIN...",0x00
mscdex_cpp_variable_15:
    9443:	4e 45 54 57 4f 52 4b 00 	db     "NETWORK",0x00
mscdex_cpp_variable_16:
    944b:	43 6f 75 6c 64 20 6e 6f 74 20 75 6e 69 6e 69 74 69 61 6c 69 7a 65 20 74 68 65 20 65 78 74 65 6e 64 65 64 20 66 69 6c 65 20 73 79 73 74 65 6d 2e 00 	db     "Could not uninitialize the extended file system.",0x00
mscdex_cpp_variable_17:
    947c:	4e 45 54 57 4f 52 4b 00 	db     "NETWORK",0x00
mscdex_cpp_variable_18:
    9484:	47 3a 5c 48 41 52 56 46 4e 4c 5c 54 4f 57 4e 31 5c 48 41 52 56 45 53 54 2e 44 41 54 00 	db     "G:\HARVFNL\TOWN1\HARVEST.DAT",0x00
mscdex_cpp_variable_19:
    94a1:	44 52 49 56 45 5f 31 00 	db     "DRIVE_1",0x00
mscdex_cpp_variable_20:
    94a9:	47 3a 5c 48 41 52 56 46 4e 4c 5c 54 4f 57 4e 31 5c 53 4f 55 4e 44 2e 44 41 54 00 	db     "G:\HARVFNL\TOWN1\SOUND.DAT",0x00
mscdex_cpp_variable_21:
    94c4:	44 52 49 56 45 5f 32 00 	db     "DRIVE_2",0x00
mscdex_cpp_variable_22:
    94cc:	47 3a 5c 48 41 52 56 46 4e 4c 5c 54 4f 57 4e 31 5c 48 41 52 56 45 53 54 32 2e 44 41 54 00 	db     "G:\HARVFNL\TOWN1\HARVEST2.DAT",0x00
mscdex_cpp_variable_23:
    94ea:	44 52 49 56 45 5f 33 00 	db     "DRIVE_3",0x00
mscdex_cpp_variable_24:
    94f2:	47 3a 5c 48 41 52 56 46 4e 4c 5c 54 4f 57 4e 31 5c 00 	db     "G:\HARVFNL\TOWN1\",0x00
mscdex_cpp_variable_25:
    9504:	43 44 5f 52 4f 4d 00 	db     "CD_ROM",0x00
mscdex_cpp_variable_26:
    950b:	47 3a 5c 48 41 52 56 46 4e 4c 5c 54 4f 57 4e 32 5c 48 41 52 56 45 53 54 2e 44 41 54 00 	db     "G:\HARVFNL\TOWN2\HARVEST.DAT",0x00
mscdex_cpp_variable_27:
    9528:	44 52 49 56 45 5f 31 00 	db     "DRIVE_1",0x00
mscdex_cpp_variable_28:
    9530:	47 3a 5c 48 41 52 56 46 4e 4c 5c 54 4f 57 4e 32 5c 53 4f 55 4e 44 2e 44 41 54 00 	db     "G:\HARVFNL\TOWN2\SOUND.DAT",0x00
mscdex_cpp_variable_29:
    954b:	44 52 49 56 45 5f 32 00 	db     "DRIVE_2",0x00
mscdex_cpp_variable_30:
    9553:	47 3a 5c 48 41 52 56 46 4e 4c 5c 54 4f 57 4e 32 5c 48 41 52 56 45 53 54 32 2e 44 41 54 00 	db     "G:\HARVFNL\TOWN2\HARVEST2.DAT",0x00
mscdex_cpp_variable_31:
    9571:	44 52 49 56 45 5f 33 00 	db     "DRIVE_3",0x00
mscdex_cpp_variable_32:
    9579:	47 3a 5c 48 41 52 56 46 4e 4c 5c 54 4f 57 4e 32 5c 00 	db     "G:\HARVFNL\TOWN2\",0x00
mscdex_cpp_variable_33:
    958b:	43 44 5f 52 4f 4d 00 	db     "CD_ROM",0x00
mscdex_cpp_variable_34:
    9592:	47 3a 5c 48 41 52 56 46 4e 4c 5c 4c 4f 44 47 45 5c 48 41 52 56 45 53 54 2e 44 41 54 00 	db     "G:\HARVFNL\LODGE\HARVEST.DAT",0x00
mscdex_cpp_variable_35:
    95af:	44 52 49 56 45 5f 31 00 	db     "DRIVE_1",0x00
mscdex_cpp_variable_36:
    95b7:	47 3a 5c 48 41 52 56 46 4e 4c 5c 4c 4f 44 47 45 5c 53 4f 55 4e 44 2e 44 41 54 00 	db     "G:\HARVFNL\LODGE\SOUND.DAT",0x00
mscdex_cpp_variable_37:
    95d2:	44 52 49 56 45 5f 32 00 	db     "DRIVE_2",0x00
mscdex_cpp_variable_38:
    95da:	47 3a 5c 48 41 52 56 46 4e 4c 5c 4c 4f 44 47 45 5c 48 41 52 56 45 53 54 32 2e 44 41 54 00 	db     "G:\HARVFNL\LODGE\HARVEST2.DAT",0x00
mscdex_cpp_variable_39:
    95f8:	44 52 49 56 45 5f 33 00 	db     "DRIVE_3",0x00
mscdex_cpp_variable_40:
    9600:	47 3a 5c 48 41 52 56 46 4e 4c 5c 4c 4f 44 47 45 5c 00 	db     "G:\HARVFNL\LODGE\",0x00
mscdex_cpp_variable_41:
    9612:	43 44 5f 52 4f 4d 00 	db     "CD_ROM",0x00
mscdex_cpp_variable_42:
    9619:	43 6f 75 6c 64 20 6e 6f 74 20 69 6e 69 74 69 61 6c 69 7a 65 20 74 68 65 20 65 78 74 65 6e 64 65 64 20 66 69 6c 65 20 73 79 73 74 65 6d 2e 00 	db     "Could not initialize the extended file system.",0x00
mscdex_cpp_variable_43:
    9648:	6d 73 63 64 65 78 2e 63 70 70 00 	db     "mscdex.cpp",0x00
mscdex_cpp_variable_44:
    9653:	64 69 61 6c 6f 67 75 65 2e 69 64 78 00 	db     "dialogue.idx",0x00
mscdex_cpp_variable_45:
    9660:	45 72 72 6f 72 20 6f 70 65 6e 69 6e 67 20 44 49 41 4c 4f 47 55 45 2e 49 44 58 20 69 6e 20 63 64 5f 63 68 61 6e 67 65 5f 72 65 71 75 65 73 74 6f 72 28 29 00 	db     "Error opening DIALOGUE.IDX in cd_change_requestor()",0x00
mscdex_cpp_variable_46:                                                                             ; access size: QWORD
    9694:	9a 99 99 99 99 99 d9 bf 	dq     0xbfd999999999999a
mscdex_cpp_variable_47:
    969c:	54 4f 57 4e 00       	db     "TOWN",0x00
mscdex_cpp_variable_48:
    96a1:	53 63 72 69 70 74 20 65 72 72 6f 72 73 20 64 65 74 65 63 74 65 64 00 	db     "Script errors detected",0x00
mscdex_cpp_variable_49:
    96b8:	4e 45 54 57 4f 52 4b 00 	db     "NETWORK",0x00
mscdex_cpp_variable_50:
    96c0:	44 55 53 54 49 4e 00 	db     "DUSTIN",0x00
mscdex_cpp_variable_51:
    96c7:	4e 45 54 57 4f 52 4b 00 	db     "NETWORK",0x00
mscdex_cpp_variable_52:
    96cf:	44 3a 5c 54 4f 57 4e 31 5c 48 41 52 56 45 53 54 2e 44 41 54 00 	db     "D:\TOWN1\HARVEST.DAT",0x00
mscdex_cpp_variable_53:
    96e4:	44 52 49 56 45 5f 31 00 	db     "DRIVE_1",0x00
mscdex_cpp_variable_54:
    96ec:	44 3a 5c 54 4f 57 4e 31 5c 53 4f 55 4e 44 2e 44 41 54 00 	db     "D:\TOWN1\SOUND.DAT",0x00
mscdex_cpp_variable_55:
    96ff:	44 52 49 56 45 5f 32 00 	db     "DRIVE_2",0x00
mscdex_cpp_variable_56:
    9707:	44 3a 5c 54 4f 57 4e 31 5c 00 	db     "D:\TOWN1\",0x00
mscdex_cpp_variable_57:
    9711:	43 44 5f 52 4f 4d 00 	db     "CD_ROM",0x00
mscdex_cpp_variable_58:
    9718:	47 3a 5c 48 41 52 56 46 4e 4c 5c 54 4f 57 4e 31 5c 48 41 52 56 45 53 54 2e 44 41 54 00 	db     "G:\HARVFNL\TOWN1\HARVEST.DAT",0x00
mscdex_cpp_variable_59:
    9735:	44 52 49 56 45 5f 31 00 	db     "DRIVE_1",0x00
mscdex_cpp_variable_60:
    973d:	47 3a 5c 48 41 52 56 46 4e 4c 5c 54 4f 57 4e 31 5c 53 4f 55 4e 44 2e 44 41 54 00 	db     "G:\HARVFNL\TOWN1\SOUND.DAT",0x00
mscdex_cpp_variable_61:
    9758:	44 52 49 56 45 5f 32 00 	db     "DRIVE_2",0x00
mscdex_cpp_variable_62:
    9760:	47 3a 5c 48 41 52 56 46 4e 4c 5c 54 4f 57 4e 31 5c 00 	db     "G:\HARVFNL\TOWN1\",0x00
mscdex_cpp_variable_63:
    9772:	43 44 5f 52 4f 4d 00 	db     "CD_ROM",0x00
mscdex_cpp_variable_64:
    9779:	47 3a 5c 48 41 52 56 46 4e 4c 5c 54 4f 57 4e 32 5c 48 41 52 56 45 53 54 2e 44 41 54 00 	db     "G:\HARVFNL\TOWN2\HARVEST.DAT",0x00
mscdex_cpp_variable_65:
    9796:	44 52 49 56 45 5f 31 00 	db     "DRIVE_1",0x00
mscdex_cpp_variable_66:
    979e:	47 3a 5c 48 41 52 56 46 4e 4c 5c 54 4f 57 4e 32 5c 53 4f 55 4e 44 2e 44 41 54 00 	db     "G:\HARVFNL\TOWN2\SOUND.DAT",0x00
mscdex_cpp_variable_67:
    97b9:	44 52 49 56 45 5f 32 00 	db     "DRIVE_2",0x00
mscdex_cpp_variable_68:
    97c1:	47 3a 5c 48 41 52 56 46 4e 4c 5c 54 4f 57 4e 32 5c 00 	db     "G:\HARVFNL\TOWN2\",0x00
mscdex_cpp_variable_69:
    97d3:	43 44 5f 52 4f 4d 00 	db     "CD_ROM",0x00
mscdex_cpp_variable_70:
    97da:	47 3a 5c 48 41 52 56 46 4e 4c 5c 4c 4f 44 47 45 5c 48 41 52 56 45 53 54 2e 44 41 54 00 	db     "G:\HARVFNL\LODGE\HARVEST.DAT",0x00
mscdex_cpp_variable_71:
    97f7:	44 52 49 56 45 5f 31 00 	db     "DRIVE_1",0x00
mscdex_cpp_variable_72:
    97ff:	47 3a 5c 48 41 52 56 46 4e 4c 5c 4c 4f 44 47 45 5c 53 4f 55 4e 44 2e 44 41 54 00 	db     "G:\HARVFNL\LODGE\SOUND.DAT",0x00
mscdex_cpp_variable_73:
    981a:	44 52 49 56 45 5f 32 00 	db     "DRIVE_2",0x00
mscdex_cpp_variable_74:
    9822:	47 3a 5c 48 41 52 56 46 4e 4c 5c 4c 4f 44 47 45 5c 00 	db     "G:\HARVFNL\LODGE\",0x00
mscdex_cpp_variable_75:
    9834:	43 44 5f 52 4f 4d 00 	db     "CD_ROM",0x00
mscdex_cpp_variable_76:
    983b:	25 63 3a 2a 2e 2a 00 	db     "%c:*.*",0x00
mscdex_cpp_variable_77:
    9842:	44 49 53 4b 31 00    	db     "DISK1",0x00
mscdex_cpp_variable_78:
    9848:	44 49 53 4b 32 00    	db     "DISK2",0x00
mscdex_cpp_variable_79:
    984e:	44 49 53 4b 33 00    	db     "DISK3",0x00

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 72 (D:\SOURCE\mscdex.cpp)                                     -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 72: D:\SOURCE\mscdex.cpp                                             -
;                                                                              -
;-------------------------------------------------------------------------------
cr_mod_72:                                                                                          ; access size: BYTE
   2596c:	00 00 00 00          	db     4 dup(0x00)                                                  ; dec:   0, chr: '\0'

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 72 (D:\SOURCE\mscdex.cpp)                                     -
;                                                                              -
;-------------------------------------------------------------------------------