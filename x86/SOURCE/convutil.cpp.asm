;-------------------------------------------------------------------------------
;                                                                              -
;  Module 91: D:\SOURCE\convutil.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function 'convutil_cpp_'                      -
;-------------------------------------------------
convutil_cpp_:
   69a10:	b8 18 f1 00 00       	mov    eax,@obj3:convutil_cpp_variable_1                            ; fixup: num: 17978, src obj: 1, src ofs: 0x69a11, dst obj: 3, dst ofs: 0xf118
   69a15:	e9 55 76 00 00       	jmp    puts_
   69a1a:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'initialize_dialog_file'             -
;-------------------------------------------------
initialize_dialog_file:
   69a20:	53                   	push   ebx
   69a21:	51                   	push   ecx
   69a22:	52                   	push   edx
   69a23:	56                   	push   esi
   69a24:	57                   	push   edi
   69a25:	55                   	push   ebp
   69a26:	83 ec 10             	sub    esp,0x10
   69a29:	b8 0d 00 00 00       	mov    eax,0xd
   69a2e:	e8 6d 07 fc ff       	call   GetDlgFileString
   69a33:	89 c6                	mov    esi,eax
   69a35:	b8 0a 00 00 00       	mov    eax,0xa
   69a3a:	e8 54 7a 00 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   69a3f:	89 f7                	mov    edi,esi
   69a41:	a3 30 24 03 00       	mov    ds:@obj3:bye_str,eax                                         ; fixup: num: 17977, src obj: 1, src ofs: 0x69a42, dst obj: 3, dst ofs: 0x32430
   69a46:	29 c9                	sub    ecx,ecx
   69a48:	49                   	dec    ecx
   69a49:	31 c0                	xor    eax,eax
   69a4b:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
   69a4d:	f7 d1                	not    ecx
   69a4f:	49                   	dec    ecx
   69a50:	83 f9 0a             	cmp    ecx,0xa
   69a53:	73 20                	jae    initialize_dialog_file_branch_3
   69a55:	8b 3d 30 24 03 00    	mov    edi,DWORD PTR ds:@obj3:bye_str                               ; fixup: num: 17976, src obj: 1, src ofs: 0x69a57, dst obj: 3, dst ofs: 0x32430
   69a5b:	57                   	push   edi
initialize_dialog_file_branch_1:
   69a5c:	8a 06                	mov    al,BYTE PTR [esi]
   69a5e:	88 07                	mov    BYTE PTR [edi],al
   69a60:	3c 00                	cmp    al,0x0
   69a62:	74 10                	je     initialize_dialog_file_branch_2
   69a64:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   69a67:	83 c6 02             	add    esi,0x2
   69a6a:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   69a6d:	83 c7 02             	add    edi,0x2
   69a70:	3c 00                	cmp    al,0x0
   69a72:	75 e8                	jne    initialize_dialog_file_branch_1
initialize_dialog_file_branch_2:
   69a74:	5f                   	pop    edi
initialize_dialog_file_branch_3:
   69a75:	b9 79 00 00 00       	mov    ecx,0x79
   69a7a:	bb 25 f1 00 00       	mov    ebx,@obj3:convutil_cpp_variable_2                            ; fixup: num: 17975, src obj: 1, src ofs: 0x69a7b, dst obj: 3, dst ofs: 0xf125
   69a7f:	30 e4                	xor    ah,ah
   69a81:	31 d2                	xor    edx,edx
   69a83:	88 25 2c 24 03 00    	mov    BYTE PTR ds:@obj3:dialog_file_initialized,ah                 ; fixup: num: 17974, src obj: 1, src ofs: 0x69a85, dst obj: 3, dst ofs: 0x3242c
   69a89:	b8 32 f1 00 00       	mov    eax,@obj3:convutil_cpp_variable_3                            ; fixup: num: 17973, src obj: 1, src ofs: 0x69a8a, dst obj: 3, dst ofs: 0xf132
   69a8e:	e8 4d 33 fa ff       	call   XFILE_read2
   69a93:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
   69a97:	85 c0                	test   eax,eax
   69a99:	75 0f                	jne    initialize_dialog_file_branch_4
   69a9b:	bb fc 37 02 00       	mov    ebx,@obj3:log_buffer                                         ; fixup: num: 17972, src obj: 1, src ofs: 0x69a9c, dst obj: 3, dst ofs: 0x237fc
   69aa0:	ba 7a 00 00 00       	mov    edx,0x7a
   69aa5:	e8 86 e5 fc ff       	call   _error_report
initialize_dialog_file_branch_4:
   69aaa:	b8 3f f1 00 00       	mov    eax,@obj3:convutil_cpp_variable_4                            ; fixup: num: 17971, src obj: 1, src ofs: 0x69aab, dst obj: 3, dst ofs: 0xf13f
   69aaf:	bb 7c 00 00 00       	mov    ebx,0x7c
   69ab4:	ba 4c f1 00 00       	mov    edx,@obj3:convutil_cpp_variable_5                            ; fixup: num: 17970, src obj: 1, src ofs: 0x69ab5, dst obj: 3, dst ofs: 0xf14c
   69ab9:	e8 c2 31 fa ff       	call   XFILE_size
   69abe:	89 c6                	mov    esi,eax
   69ac0:	89 c7                	mov    edi,eax
   69ac2:	b8 59 f1 00 00       	mov    eax,@obj3:convutil_cpp_variable_6                            ; fixup: num: 17982, src obj: 1, src ofs: 0x69ac3, dst obj: 3, dst ofs: 0xf159
   69ac7:	e8 64 4a fa ff       	call   XFILE_open2
   69acc:	a3 88 97 02 00       	mov    ds:@obj3:fh_Dialog,eax                                       ; fixup: num: 17981, src obj: 1, src ofs: 0x69acd, dst obj: 3, dst ofs: 0x29788
   69ad1:	89 f2                	mov    edx,esi
   69ad3:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
   69ad7:	e8 a4 94 fc ff       	call   decrypt
   69adc:	31 d2                	xor    edx,edx
   69ade:	31 c9                	xor    ecx,ecx
   69ae0:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
   69ae4:	85 f6                	test   esi,esi
   69ae6:	0f 8e b8 01 00 00    	jle    initialize_dialog_file_branch_21
   69aec:	bb f4 ff ff ff       	mov    ebx,0xfffffff4
   69af1:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
   69af5:	89 1c 24             	mov    DWORD PTR [esp],ebx
initialize_dialog_file_branch_5:
   69af8:	8b 74 24 0c          	mov    esi,DWORD PTR [esp+0xc]
   69afc:	01 ce                	add    esi,ecx
initialize_dialog_file_branch_6:
   69afe:	8a 16                	mov    dl,BYTE PTR [esi]
   69b00:	80 fa 0a             	cmp    dl,0xa
   69b03:	74 0e                	je     initialize_dialog_file_branch_7
   69b05:	84 d2                	test   dl,dl
   69b07:	74 0a                	je     initialize_dialog_file_branch_7
   69b09:	80 fa 0d             	cmp    dl,0xd
   69b0c:	74 05                	je     initialize_dialog_file_branch_7
   69b0e:	80 fa 0c             	cmp    dl,0xc
   69b11:	75 0c                	jne    initialize_dialog_file_branch_8
initialize_dialog_file_branch_7:
   69b13:	41                   	inc    ecx
   69b14:	46                   	inc    esi
   69b15:	39 f9                	cmp    ecx,edi
   69b17:	0f 8d 87 01 00 00    	jge    initialize_dialog_file_branch_21
   69b1d:	eb df                	jmp    initialize_dialog_file_branch_6
initialize_dialog_file_branch_8:
   69b1f:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
   69b23:	01 c8                	add    eax,ecx
   69b25:	31 ed                	xor    ebp,ebp
   69b27:	8a 10                	mov    dl,BYTE PTR [eax]
   69b29:	89 c6                	mov    esi,eax
   69b2b:	80 fa 0a             	cmp    dl,0xa
   69b2e:	74 49                	je     initialize_dialog_file_branch_11
initialize_dialog_file_branch_9:
   69b30:	8a 1e                	mov    bl,BYTE PTR [esi]
   69b32:	84 db                	test   bl,bl
   69b34:	74 43                	je     initialize_dialog_file_branch_11
   69b36:	80 fb 0d             	cmp    bl,0xd
   69b39:	74 3e                	je     initialize_dialog_file_branch_11
   69b3b:	80 fb 0c             	cmp    bl,0xc
   69b3e:	74 39                	je     initialize_dialog_file_branch_11
   69b40:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
   69b44:	89 c8                	mov    eax,ecx
   69b46:	01 d0                	add    eax,edx
   69b48:	46                   	inc    esi
   69b49:	45                   	inc    ebp
   69b4a:	8a 00                	mov    al,BYTE PTR [eax]
   69b4c:	41                   	inc    ecx
   69b4d:	88 85 db 61 02 00    	mov    BYTE PTR [ebp+@obj3:_text_bitmap_variable_1],al              ; fixup: num: 17980, src obj: 1, src ofs: 0x69b4f, dst obj: 3, dst ofs: 0x261db
   69b53:	81 fd 00 04 00 00    	cmp    ebp,0x400
   69b59:	7c 11                	jl     initialize_dialog_file_branch_10
   69b5b:	bb 66 f1 00 00       	mov    ebx,@obj3:convutil_cpp_variable_7                            ; fixup: num: 17979, src obj: 1, src ofs: 0x69b5c, dst obj: 3, dst ofs: 0xf166
   69b60:	ba a1 00 00 00       	mov    edx,0xa1
   69b65:	31 c0                	xor    eax,eax
   69b67:	e8 c4 e4 fc ff       	call   _error_report
initialize_dialog_file_branch_10:
   69b6c:	39 f9                	cmp    ecx,edi
   69b6e:	0f 8d 30 01 00 00    	jge    initialize_dialog_file_branch_21
   69b74:	80 3e 0a             	cmp    BYTE PTR [esi],0xa
   69b77:	75 b7                	jne    initialize_dialog_file_branch_9
initialize_dialog_file_branch_11:
   69b79:	30 e4                	xor    ah,ah
   69b7b:	88 a5 dc 61 02 00    	mov    BYTE PTR [ebp+@obj3:_showtext],ah                            ; fixup: num: 17987, src obj: 1, src ofs: 0x69b7d, dst obj: 3, dst ofs: 0x261dc
   69b81:	b8 dc 61 02 00       	mov    eax,@obj3:_showtext                                          ; fixup: num: 17986, src obj: 1, src ofs: 0x69b82, dst obj: 3, dst ofs: 0x261dc
   69b86:	8b 74 24 08          	mov    esi,DWORD PTR [esp+0x8]
   69b8a:	e8 45 ce 00 00       	call   atoi_
   69b8f:	89 86 8c 97 02 00    	mov    DWORD PTR [esi+@obj3:index_table],eax                        ; fixup: num: 17985, src obj: 1, src ofs: 0x69b91, dst obj: 3, dst ofs: 0x2978c
   69b95:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
   69b99:	01 c8                	add    eax,ecx
initialize_dialog_file_branch_12:
   69b9b:	8a 10                	mov    dl,BYTE PTR [eax]
   69b9d:	80 fa 0a             	cmp    dl,0xa
   69ba0:	74 0e                	je     initialize_dialog_file_branch_13
   69ba2:	84 d2                	test   dl,dl
   69ba4:	74 0a                	je     initialize_dialog_file_branch_13
   69ba6:	80 fa 0d             	cmp    dl,0xd
   69ba9:	74 05                	je     initialize_dialog_file_branch_13
   69bab:	80 fa 0c             	cmp    dl,0xc
   69bae:	75 0c                	jne    initialize_dialog_file_branch_14
initialize_dialog_file_branch_13:
   69bb0:	41                   	inc    ecx
   69bb1:	40                   	inc    eax
   69bb2:	39 f9                	cmp    ecx,edi
   69bb4:	0f 8d ea 00 00 00    	jge    initialize_dialog_file_branch_21
   69bba:	eb df                	jmp    initialize_dialog_file_branch_12
initialize_dialog_file_branch_14:
   69bbc:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
   69bc0:	89 88 90 97 02 00    	mov    DWORD PTR [eax+@obj3:index_table_variable_1],ecx             ; fixup: num: 17984, src obj: 1, src ofs: 0x69bc2, dst obj: 3, dst ofs: 0x29790
   69bc6:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
   69bca:	01 c8                	add    eax,ecx
   69bcc:	31 ed                	xor    ebp,ebp
   69bce:	8a 10                	mov    dl,BYTE PTR [eax]
   69bd0:	89 c6                	mov    esi,eax
   69bd2:	80 fa 0a             	cmp    dl,0xa
   69bd5:	74 39                	je     initialize_dialog_file_branch_17
initialize_dialog_file_branch_15:
   69bd7:	8a 1e                	mov    bl,BYTE PTR [esi]
   69bd9:	84 db                	test   bl,bl
   69bdb:	74 33                	je     initialize_dialog_file_branch_17
   69bdd:	80 fb 0d             	cmp    bl,0xd
   69be0:	74 2e                	je     initialize_dialog_file_branch_17
   69be2:	80 fb 0c             	cmp    bl,0xc
   69be5:	74 29                	je     initialize_dialog_file_branch_17
   69be7:	46                   	inc    esi
   69be8:	45                   	inc    ebp
   69be9:	41                   	inc    ecx
   69bea:	81 fd 00 04 00 00    	cmp    ebp,0x400
   69bf0:	7c 11                	jl     initialize_dialog_file_branch_16
   69bf2:	bb 7b f1 00 00       	mov    ebx,@obj3:convutil_cpp_variable_8                            ; fixup: num: 17983, src obj: 1, src ofs: 0x69bf3, dst obj: 3, dst ofs: 0xf17b
   69bf7:	ba c0 00 00 00       	mov    edx,0xc0
   69bfc:	31 c0                	xor    eax,eax
   69bfe:	e8 2d e4 fc ff       	call   _error_report
initialize_dialog_file_branch_16:
   69c03:	39 f9                	cmp    ecx,edi
   69c05:	0f 8d 99 00 00 00    	jge    initialize_dialog_file_branch_21
   69c0b:	80 3e 0a             	cmp    BYTE PTR [esi],0xa
   69c0e:	75 c7                	jne    initialize_dialog_file_branch_15
initialize_dialog_file_branch_17:
   69c10:	41                   	inc    ecx
   69c11:	39 f9                	cmp    ecx,edi
   69c13:	0f 8d 8b 00 00 00    	jge    initialize_dialog_file_branch_21
   69c19:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
   69c1d:	83 b8 8c 97 02 00 01 	cmp    DWORD PTR [eax+@obj3:index_table],0x1                        ; fixup: num: 17994, src obj: 1, src ofs: 0x69c1f, dst obj: 3, dst ofs: 0x2978c
   69c24:	7d 2d                	jge    initialize_dialog_file_branch_18
   69c26:	8b 04 24             	mov    eax,DWORD PTR [esp]
   69c29:	8b b0 8c 97 02 00    	mov    esi,DWORD PTR [eax+@obj3:index_table]                        ; fixup: num: 17993, src obj: 1, src ofs: 0x69c2b, dst obj: 3, dst ofs: 0x2978c
   69c2f:	56                   	push   esi
   69c30:	68 90 f1 00 00       	push   @obj3:convutil_cpp_variable_9                                ; fixup: num: 17992, src obj: 1, src ofs: 0x69c31, dst obj: 3, dst ofs: 0xf190
   69c35:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 17991, src obj: 1, src ofs: 0x69c36, dst obj: 3, dst ofs: 0x237fc
   69c3a:	bb fc 37 02 00       	mov    ebx,@obj3:log_buffer                                         ; fixup: num: 17990, src obj: 1, src ofs: 0x69c3b, dst obj: 3, dst ofs: 0x237fc
   69c3f:	e8 9d 6f 00 00       	call   sprintf_
   69c44:	83 c4 0c             	add    esp,0xc
   69c47:	ba cc 00 00 00       	mov    edx,0xcc
   69c4c:	31 c0                	xor    eax,eax
   69c4e:	e8 dd e3 fc ff       	call   _error_report
initialize_dialog_file_branch_18:
   69c53:	81 fd 9a 01 00 00    	cmp    ebp,0x19a
   69c59:	7e 05                	jle    initialize_dialog_file_branch_19
   69c5b:	bd 9a 01 00 00       	mov    ebp,0x19a
initialize_dialog_file_branch_19:
   69c60:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
   69c64:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
   69c68:	89 a8 94 97 02 00    	mov    DWORD PTR [eax+@obj3:index_table_variable_2],ebp             ; fixup: num: 17989, src obj: 1, src ofs: 0x69c6a, dst obj: 3, dst ofs: 0x29794
   69c6e:	83 c0 0c             	add    eax,0xc
   69c71:	42                   	inc    edx
   69c72:	8b 2c 24             	mov    ebp,DWORD PTR [esp]
   69c75:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
   69c79:	83 c5 0c             	add    ebp,0xc
   69c7c:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
   69c80:	89 2c 24             	mov    DWORD PTR [esp],ebp
   69c83:	81 fa b8 0b 00 00    	cmp    edx,0xbb8
   69c89:	7c 11                	jl     initialize_dialog_file_branch_20
   69c8b:	bb ac f1 00 00       	mov    ebx,@obj3:convutil_cpp_variable_10                           ; fixup: num: 17988, src obj: 1, src ofs: 0x69c8c, dst obj: 3, dst ofs: 0xf1ac
   69c90:	ba db 00 00 00       	mov    edx,0xdb
   69c95:	31 c0                	xor    eax,eax
   69c97:	e8 94 e3 fc ff       	call   _error_report
initialize_dialog_file_branch_20:
   69c9c:	39 f9                	cmp    ecx,edi
   69c9e:	0f 8c 54 fe ff ff    	jl     initialize_dialog_file_branch_5
initialize_dialog_file_branch_21:
   69ca4:	8b 74 24 04          	mov    esi,DWORD PTR [esp+0x4]
   69ca8:	8d 04 b5 00 00 00 00 	lea    eax,[esi*4+0x0]
   69caf:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
   69cb3:	29 f0                	sub    eax,esi
   69cb5:	8d 0c 8d 00 00 00 00 	lea    ecx,[ecx*4+0x0]
   69cbc:	8d 04 85 00 00 00 00 	lea    eax,[eax*4+0x0]
initialize_dialog_file_branch_22:
   69cc3:	81 f9 e0 2e 00 00    	cmp    ecx,0x2ee0
   69cc9:	7d 28                	jge    initialize_dialog_file_branch_23
   69ccb:	8b 7c 24 04          	mov    edi,DWORD PTR [esp+0x4]
   69ccf:	83 c1 04             	add    ecx,0x4
   69cd2:	8b b0 8c 97 02 00    	mov    esi,DWORD PTR [eax+@obj3:index_table]                        ; fixup: num: 18004, src obj: 1, src ofs: 0x69cd4, dst obj: 3, dst ofs: 0x2978c
   69cd8:	83 c0 0c             	add    eax,0xc
   69cdb:	47                   	inc    edi
   69cdc:	89 b1 d8 65 02 00    	mov    DWORD PTR [ecx+@obj3:_showtext_variable_1],esi               ; fixup: num: 18003, src obj: 1, src ofs: 0x69cde, dst obj: 3, dst ofs: 0x265d8
   69ce2:	be 3f 42 0f 00       	mov    esi,0xf423f
   69ce7:	89 7c 24 04          	mov    DWORD PTR [esp+0x4],edi
   69ceb:	89 b0 80 97 02 00    	mov    DWORD PTR [eax+@obj3:textbox7],esi                           ; fixup: num: 18002, src obj: 1, src ofs: 0x69ced, dst obj: 3, dst ofs: 0x29780
   69cf1:	eb d0                	jmp    initialize_dialog_file_branch_22
initialize_dialog_file_branch_23:
   69cf3:	c6 05 2c 24 03 00 01 	mov    BYTE PTR ds:@obj3:dialog_file_initialized,0x1                ; fixup: num: 18001, src obj: 1, src ofs: 0x69cf5, dst obj: 3, dst ofs: 0x3242c
   69cfa:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
   69cfe:	e8 e5 76 00 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   69d03:	83 c4 10             	add    esp,0x10
   69d06:	5d                   	pop    ebp
   69d07:	5f                   	pop    edi
   69d08:	5e                   	pop    esi
   69d09:	5a                   	pop    edx
   69d0a:	59                   	pop    ecx
   69d0b:	5b                   	pop    ebx
   69d0c:	c3                   	ret    
   69d0d:	8d 40 00             	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'close_dialog_file'                  -
;-------------------------------------------------
close_dialog_file:
   69d10:	a1 88 97 02 00       	mov    eax,ds:@obj3:fh_Dialog                                       ; fixup: num: 18000, src obj: 1, src ofs: 0x69d11, dst obj: 3, dst ofs: 0x29788
   69d15:	e9 f6 49 fa ff       	jmp    XFILE_close
   69d1a:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'Load_head'                          -
;-------------------------------------------------
Load_head:
   69d20:	53                   	push   ebx
   69d21:	51                   	push   ecx
   69d22:	56                   	push   esi
   69d23:	57                   	push   edi
   69d24:	55                   	push   ebp
   69d25:	89 e5                	mov    ebp,esp
   69d27:	83 ec 20             	sub    esp,0x20
   69d2a:	52                   	push   edx
   69d2b:	50                   	push   eax
   69d2c:	68 c2 f1 00 00       	push   @obj3:convutil_cpp_variable_11                               ; fixup: num: 17999, src obj: 1, src ofs: 0x69d2d, dst obj: 3, dst ofs: 0xf1c2
   69d31:	8d 45 e0             	lea    eax,[ebp-0x20]
   69d34:	50                   	push   eax
   69d35:	e8 a7 6e 00 00       	call   sprintf_
   69d3a:	8b 15 5c 97 02 00    	mov    edx,DWORD PTR ds:@obj3:left_head                             ; fixup: num: 17998, src obj: 1, src ofs: 0x69d3c, dst obj: 3, dst ofs: 0x2975c
   69d40:	83 c4 10             	add    esp,0x10
   69d43:	85 d2                	test   edx,edx
   69d45:	74 1f                	je     Load_head_branch_1
   69d47:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 17997, src obj: 1, src ofs: 0x69d48, dst obj: 3, dst ofs: 0x25a88
   69d4c:	e8 9f 29 fe ff       	call   remove_bitmap
   69d51:	a1 5c 97 02 00       	mov    eax,ds:@obj3:left_head                                       ; fixup: num: 17996, src obj: 1, src ofs: 0x69d52, dst obj: 3, dst ofs: 0x2975c
   69d56:	85 c0                	test   eax,eax
   69d58:	74 0c                	je     Load_head_branch_1
   69d5a:	31 d2                	xor    edx,edx
   69d5c:	e8 3f 16 fd ff       	call   W?$dt:BTMAP$n()_
   69d61:	e8 12 83 00 00       	call   W?$dln(pnv)v
Load_head_branch_1:
   69d66:	8b 35 a8 5a 02 00    	mov    esi,DWORD PTR ds:@obj3:head_list                             ; fixup: num: 17995, src obj: 1, src ofs: 0x69d68, dst obj: 3, dst ofs: 0x25aa8
   69d6c:	85 f6                	test   esi,esi
   69d6e:	0f 84 bb 00 00 00    	je     Load_head_branch_7
Load_head_branch_2:
   69d74:	83 3e 00             	cmp    DWORD PTR [esi],0x0
   69d77:	75 11                	jne    Load_head_branch_3
   69d79:	bb c7 f1 00 00       	mov    ebx,@obj3:convutil_cpp_variable_12                           ; fixup: num: 18013, src obj: 1, src ofs: 0x69d7a, dst obj: 3, dst ofs: 0xf1c7
   69d7e:	ba 06 01 00 00       	mov    edx,0x106
   69d83:	31 c0                	xor    eax,eax
   69d85:	e8 a6 e2 fc ff       	call   _error_report
Load_head_branch_3:
   69d8a:	8b 3e                	mov    edi,DWORD PTR [esi]
   69d8c:	29 c9                	sub    ecx,ecx
   69d8e:	49                   	dec    ecx
   69d8f:	31 c0                	xor    eax,eax
   69d91:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
   69d93:	f7 d1                	not    ecx
   69d95:	49                   	dec    ecx
   69d96:	83 f9 1e             	cmp    ecx,0x1e
   69d99:	76 26                	jbe    Load_head_branch_4
   69d9b:	8b 0e                	mov    ecx,DWORD PTR [esi]
   69d9d:	51                   	push   ecx
   69d9e:	68 f3 f1 00 00       	push   @obj3:convutil_cpp_variable_13                               ; fixup: num: 18012, src obj: 1, src ofs: 0x69d9f, dst obj: 3, dst ofs: 0xf1f3
   69da3:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 18011, src obj: 1, src ofs: 0x69da4, dst obj: 3, dst ofs: 0x237fc
   69da8:	bb fc 37 02 00       	mov    ebx,@obj3:log_buffer                                         ; fixup: num: 18010, src obj: 1, src ofs: 0x69da9, dst obj: 3, dst ofs: 0x237fc
   69dad:	e8 2f 6e 00 00       	call   sprintf_
   69db2:	83 c4 0c             	add    esp,0xc
   69db5:	ba 0b 01 00 00       	mov    edx,0x10b
   69dba:	31 c0                	xor    eax,eax
   69dbc:	e8 6f e2 fc ff       	call   _error_report
Load_head_branch_4:
   69dc1:	8d 55 e0             	lea    edx,[ebp-0x20]
   69dc4:	8b 06                	mov    eax,DWORD PTR [esi]
   69dc6:	e8 65 c6 00 00       	call   strcmp_
   69dcb:	85 c0                	test   eax,eax
   69dcd:	75 55                	jne    Load_head_branch_6
   69dcf:	8b 7e 04             	mov    edi,DWORD PTR [esi+0x4]
   69dd2:	57                   	push   edi
   69dd3:	68 1e f2 00 00       	push   @obj3:convutil_cpp_variable_14                               ; fixup: num: 18009, src obj: 1, src ofs: 0x69dd4, dst obj: 3, dst ofs: 0xf21e
   69dd8:	a1 34 24 03 00       	mov    eax,ds:@obj3:temp_filename                                   ; fixup: num: 18008, src obj: 1, src ofs: 0x69dd9, dst obj: 3, dst ofs: 0x32434
   69ddd:	50                   	push   eax
   69dde:	e8 fe 6d 00 00       	call   sprintf_
   69de3:	83 c4 0c             	add    esp,0xc
   69de6:	b8 4c 00 00 00       	mov    eax,0x4c
   69deb:	e8 28 81 00 00       	call   W?$nwn(ui)pnv
   69df0:	85 c0                	test   eax,eax
   69df2:	74 29                	je     Load_head_branch_5
   69df4:	6a 00                	push   0x0
   69df6:	68 93 14 07 00       	push   @obj1:_nmalloc_                                              ; aliases: _nmalloc_, malloc_; fixup: num: 18007, src obj: 1, src ofs: 0x69df7, dst obj: 1, dst ofs: 0x71493
   69dfb:	6a 00                	push   0x0
   69dfd:	6a 00                	push   0x0
   69dff:	6a 01                	push   0x1
   69e01:	68 00 00 48 c2       	push   0xc2480000
   69e06:	b9 06 00 00 00       	mov    ecx,0x6
   69e0b:	6a 06                	push   0x6
   69e0d:	bb 24 f2 00 00       	mov    ebx,@obj3:convutil_cpp_variable_15                           ; fixup: num: 18006, src obj: 1, src ofs: 0x69e0e, dst obj: 3, dst ofs: 0xf224
   69e12:	8b 15 34 24 03 00    	mov    edx,DWORD PTR ds:@obj3:temp_filename                         ; fixup: num: 18005, src obj: 1, src ofs: 0x69e14, dst obj: 3, dst ofs: 0x32434
   69e18:	e8 c3 0e fd ff       	call   W?$ct:BTMAP$n(pnapnaiibiucucpn(ui)pnvpnuc)_
Load_head_branch_5:
   69e1d:	a3 5c 97 02 00       	mov    ds:@obj3:left_head,eax                                       ; fixup: num: 18019, src obj: 1, src ofs: 0x69e1e, dst obj: 3, dst ofs: 0x2975c
   69e22:	eb 0b                	jmp    Load_head_branch_7
Load_head_branch_6:
   69e24:	8b 76 08             	mov    esi,DWORD PTR [esi+0x8]
   69e27:	85 f6                	test   esi,esi
   69e29:	0f 85 45 ff ff ff    	jne    Load_head_branch_2
Load_head_branch_7:
   69e2f:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 18018, src obj: 1, src ofs: 0x69e30, dst obj: 3, dst ofs: 0x25a88
   69e34:	8b 15 5c 97 02 00    	mov    edx,DWORD PTR ds:@obj3:left_head                             ; fixup: num: 18017, src obj: 1, src ofs: 0x69e36, dst obj: 3, dst ofs: 0x2975c
   69e3a:	e8 f1 22 fe ff       	call   insert_bitmap
   69e3f:	89 ec                	mov    esp,ebp
   69e41:	5d                   	pop    ebp
   69e42:	5f                   	pop    edi
   69e43:	5e                   	pop    esi
   69e44:	59                   	pop    ecx
   69e45:	5b                   	pop    ebx
   69e46:	c3                   	ret    
   69e47:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   69e4d:	8d 52 00             	lea    edx,[edx+0x0]

;-------------------------------------------------
;  Function 'start_dialog'                       -
;-------------------------------------------------
start_dialog:
   69e50:	53                   	push   ebx
   69e51:	51                   	push   ecx
   69e52:	56                   	push   esi
   69e53:	57                   	push   edi
   69e54:	55                   	push   ebp
   69e55:	89 e5                	mov    ebp,esp
   69e57:	83 ec 2c             	sub    esp,0x2c
   69e5a:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
   69e5d:	89 d6                	mov    esi,edx
   69e5f:	85 c0                	test   eax,eax
   69e61:	75 07                	jne    start_dialog_branch_1
   69e63:	30 c0                	xor    al,al
   69e65:	e9 e1 07 00 00       	jmp    start_dialog_branch_58
start_dialog_branch_1:
   69e6a:	89 c7                	mov    edi,eax
   69e6c:	29 c9                	sub    ecx,ecx
   69e6e:	49                   	dec    ecx
   69e6f:	31 c0                	xor    eax,eax
   69e71:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
   69e73:	f7 d1                	not    ecx
   69e75:	49                   	dec    ecx
   69e76:	83 f9 1e             	cmp    ecx,0x1e
   69e79:	76 0a                	jbe    start_dialog_branch_2
   69e7b:	30 c0                	xor    al,al
   69e7d:	89 ec                	mov    esp,ebp
   69e7f:	5d                   	pop    ebp
   69e80:	5f                   	pop    edi
   69e81:	5e                   	pop    esi
   69e82:	59                   	pop    ecx
   69e83:	5b                   	pop    ebx
   69e84:	c3                   	ret    
start_dialog_branch_2:
   69e85:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
   69e88:	e8 73 8e fe ff       	call   get_npc
   69e8d:	85 c0                	test   eax,eax
   69e8f:	74 09                	je     start_dialog_branch_3
   69e91:	83 78 2c 00          	cmp    DWORD PTR [eax+0x2c],0x0
   69e95:	0f 94 c0             	sete   al
   69e98:	eb 18                	jmp    start_dialog_branch_4
start_dialog_branch_3:
   69e9a:	8b 5d f4             	mov    ebx,DWORD PTR [ebp-0xc]
   69e9d:	53                   	push   ebx
   69e9e:	68 2e f2 00 00       	push   @obj3:convutil_cpp_variable_16                               ; fixup: num: 18016, src obj: 1, src ofs: 0x69e9f, dst obj: 3, dst ofs: 0xf22e
   69ea3:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 18015, src obj: 1, src ofs: 0x69ea4, dst obj: 3, dst ofs: 0x237fc
   69ea8:	e8 34 6d 00 00       	call   sprintf_
   69ead:	83 c4 0c             	add    esp,0xc
   69eb0:	30 c0                	xor    al,al
start_dialog_branch_4:
   69eb2:	84 c0                	test   al,al
   69eb4:	0f 84 91 07 00 00    	je     start_dialog_branch_58
   69eba:	8b 7d f4             	mov    edi,DWORD PTR [ebp-0xc]
   69ebd:	57                   	push   edi
   69ebe:	68 4f f2 00 00       	push   @obj3:convutil_cpp_variable_17                               ; fixup: num: 18014, src obj: 1, src ofs: 0x69ebf, dst obj: 3, dst ofs: 0xf24f
   69ec3:	8d 45 d4             	lea    eax,[ebp-0x2c]
   69ec6:	50                   	push   eax
   69ec7:	e8 15 6d 00 00       	call   sprintf_
   69ecc:	83 c4 0c             	add    esp,0xc
   69ecf:	89 f8                	mov    eax,edi
   69ed1:	e8 8a 02 fc ff       	call   FindHead
   69ed6:	84 c0                	test   al,al
   69ed8:	0f 84 6d 07 00 00    	je     start_dialog_branch_58
   69ede:	83 3d 34 24 03 00 00 	cmp    DWORD PTR ds:@obj3:temp_filename,0x0                         ; fixup: num: 17958, src obj: 1, src ofs: 0x69ee0, dst obj: 3, dst ofs: 0x32434
   69ee5:	75 22                	jne    start_dialog_branch_5
   69ee7:	b8 90 00 00 00       	mov    eax,0x90
   69eec:	e8 a2 75 00 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   69ef1:	a3 34 24 03 00       	mov    ds:@obj3:temp_filename,eax                                   ; fixup: num: 17957, src obj: 1, src ofs: 0x69ef2, dst obj: 3, dst ofs: 0x32434
   69ef6:	85 c0                	test   eax,eax
   69ef8:	75 0f                	jne    start_dialog_branch_5
   69efa:	bb 53 f2 00 00       	mov    ebx,@obj3:convutil_cpp_variable_18                           ; fixup: num: 18029, src obj: 1, src ofs: 0x69efb, dst obj: 3, dst ofs: 0xf253
   69eff:	ba 55 01 00 00       	mov    edx,0x155
   69f04:	e8 27 e1 fc ff       	call   _error_report
start_dialog_branch_5:
   69f09:	ba 02 00 00 00       	mov    edx,0x2
   69f0e:	a1 94 60 02 00       	mov    eax,ds:@obj3:pointer                                         ; fixup: num: 18028, src obj: 1, src ofs: 0x69f0f, dst obj: 3, dst ofs: 0x26094
   69f13:	e8 78 fa ff ff       	call   set_pointer
   69f18:	8d 45 d4             	lea    eax,[ebp-0x2c]
   69f1b:	50                   	push   eax
   69f1c:	68 6b f2 00 00       	push   @obj3:convutil_cpp_variable_19                               ; fixup: num: 18027, src obj: 1, src ofs: 0x69f1d, dst obj: 3, dst ofs: 0xf26b
   69f21:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 18026, src obj: 1, src ofs: 0x69f22, dst obj: 3, dst ofs: 0x237fc
   69f26:	31 d2                	xor    edx,edx
   69f28:	e8 b4 6c 00 00       	call   sprintf_
   69f2d:	83 c4 0c             	add    esp,0xc
   69f30:	89 15 60 97 02 00    	mov    DWORD PTR ds:@obj3:right_head,edx                            ; fixup: num: 18025, src obj: 1, src ofs: 0x69f32, dst obj: 3, dst ofs: 0x29760
   69f36:	89 15 5c 97 02 00    	mov    DWORD PTR ds:@obj3:left_head,edx                             ; fixup: num: 18024, src obj: 1, src ofs: 0x69f38, dst obj: 3, dst ofs: 0x2975c
   69f3c:	89 35 bc 94 02 00    	mov    DWORD PTR ds:@obj3:showing_item,esi                          ; fixup: num: 18023, src obj: 1, src ofs: 0x69f3e, dst obj: 3, dst ofs: 0x294bc
   69f42:	85 f6                	test   esi,esi
   69f44:	74 4c                	je     start_dialog_branch_7
   69f46:	b8 7c f2 00 00       	mov    eax,@obj3:convutil_cpp_variable_20                           ; fixup: num: 18022, src obj: 1, src ofs: 0x69f47, dst obj: 3, dst ofs: 0xf27c
   69f4b:	89 f2                	mov    edx,esi
   69f4d:	31 db                	xor    ebx,ebx
   69f4f:	e8 bc 8f fe ff       	call   set_object
   69f54:	8b 15 bc 94 02 00    	mov    edx,DWORD PTR ds:@obj3:showing_item                          ; fixup: num: 18021, src obj: 1, src ofs: 0x69f56, dst obj: 3, dst ofs: 0x294bc
   69f5a:	89 d0                	mov    eax,edx
   69f5c:	e8 1f 8d fe ff       	call   get_object
   69f61:	85 c0                	test   eax,eax
   69f63:	74 1a                	je     start_dialog_branch_6
   69f65:	8b 0d 2c 41 01 00    	mov    ecx,DWORD PTR ds:@obj3:INVENTORY_ROOM                        ; fixup: num: 18020, src obj: 1, src ofs: 0x69f67, dst obj: 3, dst ofs: 0x1412c
   69f6b:	bb 01 00 00 00       	mov    ebx,0x1
   69f70:	89 48 3c             	mov    DWORD PTR [eax+0x3c],ecx
   69f73:	b8 80 f2 00 00       	mov    eax,@obj3:convutil_cpp_variable_21                           ; fixup: num: 17968, src obj: 1, src ofs: 0x69f74, dst obj: 3, dst ofs: 0xf280
   69f78:	e8 93 8f fe ff       	call   set_object
   69f7d:	eb 13                	jmp    start_dialog_branch_7
start_dialog_branch_6:
   69f7f:	52                   	push   edx
   69f80:	68 84 f2 00 00       	push   @obj3:convutil_cpp_variable_22                               ; fixup: num: 17967, src obj: 1, src ofs: 0x69f81, dst obj: 3, dst ofs: 0xf284
   69f85:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 17966, src obj: 1, src ofs: 0x69f86, dst obj: 3, dst ofs: 0x237fc
   69f8a:	e8 52 6c 00 00       	call   sprintf_
   69f8f:	83 c4 0c             	add    esp,0xc
start_dialog_branch_7:
   69f92:	30 e4                	xor    ah,ah
   69f94:	31 d2                	xor    edx,edx
   69f96:	88 25 bf 96 02 00    	mov    BYTE PTR ds:@obj3:cancel,ah                                  ; fixup: num: 17965, src obj: 1, src ofs: 0x69f98, dst obj: 3, dst ofs: 0x296bf
   69f9c:	66 89 15 08 59 02 00 	mov    WORD PTR ds:@obj3:raw_key,dx                                 ; fixup: num: 17964, src obj: 1, src ofs: 0x69f9f, dst obj: 3, dst ofs: 0x25908
   69fa3:	be 9b f2 00 00       	mov    esi,@obj3:convutil_cpp_variable_23                           ; fixup: num: 17963, src obj: 1, src ofs: 0x69fa4, dst obj: 3, dst ofs: 0xf29b
   69fa8:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 17962, src obj: 1, src ofs: 0x69fa9, dst obj: 3, dst ofs: 0x295c0
   69fad:	57                   	push   edi
start_dialog_branch_8:
   69fae:	8a 06                	mov    al,BYTE PTR [esi]
   69fb0:	88 07                	mov    BYTE PTR [edi],al
   69fb2:	3c 00                	cmp    al,0x0
   69fb4:	74 10                	je     start_dialog_branch_9
   69fb6:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   69fb9:	83 c6 02             	add    esi,0x2
   69fbc:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   69fbf:	83 c7 02             	add    edi,0x2
   69fc2:	3c 00                	cmp    al,0x0
   69fc4:	75 e8                	jne    start_dialog_branch_8
start_dialog_branch_9:
   69fc6:	5f                   	pop    edi
   69fc7:	be 9c f2 00 00       	mov    esi,@obj3:convutil_cpp_variable_24                           ; fixup: num: 17961, src obj: 1, src ofs: 0x69fc8, dst obj: 3, dst ofs: 0xf29c
   69fcc:	bf c0 94 02 00       	mov    edi,@obj3:keyword                                            ; fixup: num: 17960, src obj: 1, src ofs: 0x69fcd, dst obj: 3, dst ofs: 0x294c0
   69fd1:	57                   	push   edi
start_dialog_branch_10:
   69fd2:	8a 06                	mov    al,BYTE PTR [esi]
   69fd4:	88 07                	mov    BYTE PTR [edi],al
   69fd6:	3c 00                	cmp    al,0x0
   69fd8:	74 10                	je     start_dialog_branch_11
   69fda:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   69fdd:	83 c6 02             	add    esi,0x2
   69fe0:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   69fe3:	83 c7 02             	add    edi,0x2
   69fe6:	3c 00                	cmp    al,0x0
   69fe8:	75 e8                	jne    start_dialog_branch_10
start_dialog_branch_11:
   69fea:	5f                   	pop    edi
   69feb:	b8 4c 00 00 00       	mov    eax,0x4c
   69ff0:	e8 23 7f 00 00       	call   W?$nwn(ui)pnv
   69ff5:	85 c0                	test   eax,eax
   69ff7:	74 28                	je     start_dialog_branch_12
   69ff9:	6a 00                	push   0x0
   69ffb:	68 93 14 07 00       	push   @obj1:_nmalloc_                                              ; aliases: _nmalloc_, malloc_; fixup: num: 17959, src obj: 1, src ofs: 0x69ffc, dst obj: 1, dst ofs: 0x71493
   6a000:	6a 00                	push   0x0
   6a002:	6a 00                	push   0x0
   6a004:	6a 01                	push   0x1
   6a006:	68 00 00 44 c2       	push   0xc2440000
   6a00b:	b9 a7 00 00 00       	mov    ecx,0xa7
   6a010:	6a 06                	push   0x6
   6a012:	bb 9d f2 00 00       	mov    ebx,@obj3:convutil_cpp_variable_25                           ; fixup: num: 18370, src obj: 1, src ofs: 0x6a013, dst obj: 3, dst ofs: 0xf29d
   6a017:	ba a5 f2 00 00       	mov    edx,@obj3:convutil_cpp_variable_26                           ; fixup: num: 18381, src obj: 1, src ofs: 0x6a018, dst obj: 3, dst ofs: 0xf2a5
   6a01c:	e8 bf 0c fd ff       	call   W?$ct:BTMAP$n(pnapnaiibiucucpn(ui)pnvpnuc)_
start_dialog_branch_12:
   6a021:	a3 64 97 02 00       	mov    ds:@obj3:keyw_box,eax                                        ; fixup: num: 18380, src obj: 1, src ofs: 0x6a022, dst obj: 3, dst ofs: 0x29764
   6a026:	b8 4c 00 00 00       	mov    eax,0x4c
   6a02b:	e8 e8 7e 00 00       	call   W?$nwn(ui)pnv
   6a030:	85 c0                	test   eax,eax
   6a032:	74 28                	je     start_dialog_branch_13
   6a034:	6a 00                	push   0x0
   6a036:	68 93 14 07 00       	push   @obj1:_nmalloc_                                              ; aliases: _nmalloc_, malloc_; fixup: num: 18379, src obj: 1, src ofs: 0x6a037, dst obj: 1, dst ofs: 0x71493
   6a03b:	6a 00                	push   0x0
   6a03d:	6a 00                	push   0x0
   6a03f:	6a 01                	push   0x1
   6a041:	68 00 00 44 c2       	push   0xc2440000
   6a046:	b9 a7 00 00 00       	mov    ecx,0xa7
   6a04b:	6a 06                	push   0x6
   6a04d:	bb c1 f2 00 00       	mov    ebx,@obj3:convutil_cpp_variable_27                           ; fixup: num: 18378, src obj: 1, src ofs: 0x6a04e, dst obj: 3, dst ofs: 0xf2c1
   6a052:	ba c9 f2 00 00       	mov    edx,@obj3:convutil_cpp_variable_28                           ; fixup: num: 18377, src obj: 1, src ofs: 0x6a053, dst obj: 3, dst ofs: 0xf2c9
   6a057:	e8 84 0c fd ff       	call   W?$ct:BTMAP$n(pnapnaiibiucucpn(ui)pnvpnuc)_
start_dialog_branch_13:
   6a05c:	a3 68 97 02 00       	mov    ds:@obj3:textbox1,eax                                        ; fixup: num: 18376, src obj: 1, src ofs: 0x6a05d, dst obj: 3, dst ofs: 0x29768
   6a061:	b8 4c 00 00 00       	mov    eax,0x4c
   6a066:	e8 ad 7e 00 00       	call   W?$nwn(ui)pnv
   6a06b:	85 c0                	test   eax,eax
   6a06d:	74 28                	je     start_dialog_branch_14
   6a06f:	6a 00                	push   0x0
   6a071:	68 93 14 07 00       	push   @obj1:_nmalloc_                                              ; aliases: _nmalloc_, malloc_; fixup: num: 18375, src obj: 1, src ofs: 0x6a072, dst obj: 1, dst ofs: 0x71493
   6a076:	6a 00                	push   0x0
   6a078:	6a 00                	push   0x0
   6a07a:	6a 01                	push   0x1
   6a07c:	68 00 00 44 c2       	push   0xc2440000
   6a081:	b9 a7 00 00 00       	mov    ecx,0xa7
   6a086:	6a 06                	push   0x6
   6a088:	bb e6 f2 00 00       	mov    ebx,@obj3:convutil_cpp_variable_29                           ; fixup: num: 18374, src obj: 1, src ofs: 0x6a089, dst obj: 3, dst ofs: 0xf2e6
   6a08d:	ba ee f2 00 00       	mov    edx,@obj3:convutil_cpp_variable_30                           ; fixup: num: 18373, src obj: 1, src ofs: 0x6a08e, dst obj: 3, dst ofs: 0xf2ee
   6a092:	e8 49 0c fd ff       	call   W?$ct:BTMAP$n(pnapnaiibiucucpn(ui)pnvpnuc)_
start_dialog_branch_14:
   6a097:	a3 6c 97 02 00       	mov    ds:@obj3:textbox2,eax                                        ; fixup: num: 18372, src obj: 1, src ofs: 0x6a098, dst obj: 3, dst ofs: 0x2976c
   6a09c:	b8 4c 00 00 00       	mov    eax,0x4c
   6a0a1:	e8 72 7e 00 00       	call   W?$nwn(ui)pnv
   6a0a6:	85 c0                	test   eax,eax
   6a0a8:	74 28                	je     start_dialog_branch_15
   6a0aa:	6a 00                	push   0x0
   6a0ac:	68 93 14 07 00       	push   @obj1:_nmalloc_                                              ; aliases: _nmalloc_, malloc_; fixup: num: 18371, src obj: 1, src ofs: 0x6a0ad, dst obj: 1, dst ofs: 0x71493
   6a0b1:	6a 00                	push   0x0
   6a0b3:	6a 00                	push   0x0
   6a0b5:	6a 01                	push   0x1
   6a0b7:	68 00 00 44 c2       	push   0xc2440000
   6a0bc:	b9 a7 00 00 00       	mov    ecx,0xa7
   6a0c1:	6a 06                	push   0x6
   6a0c3:	bb 0b f3 00 00       	mov    ebx,@obj3:convutil_cpp_variable_31                           ; fixup: num: 18393, src obj: 1, src ofs: 0x6a0c4, dst obj: 3, dst ofs: 0xf30b
   6a0c8:	ba 13 f3 00 00       	mov    edx,@obj3:convutil_cpp_variable_32                           ; fixup: num: 18392, src obj: 1, src ofs: 0x6a0c9, dst obj: 3, dst ofs: 0xf313
   6a0cd:	e8 0e 0c fd ff       	call   W?$ct:BTMAP$n(pnapnaiibiucucpn(ui)pnvpnuc)_
start_dialog_branch_15:
   6a0d2:	a3 70 97 02 00       	mov    ds:@obj3:textbox3,eax                                        ; fixup: num: 18391, src obj: 1, src ofs: 0x6a0d3, dst obj: 3, dst ofs: 0x29770
   6a0d7:	b8 4c 00 00 00       	mov    eax,0x4c
   6a0dc:	e8 37 7e 00 00       	call   W?$nwn(ui)pnv
   6a0e1:	85 c0                	test   eax,eax
   6a0e3:	74 28                	je     start_dialog_branch_16
   6a0e5:	6a 00                	push   0x0
   6a0e7:	68 93 14 07 00       	push   @obj1:_nmalloc_                                              ; aliases: _nmalloc_, malloc_; fixup: num: 18390, src obj: 1, src ofs: 0x6a0e8, dst obj: 1, dst ofs: 0x71493
   6a0ec:	6a 00                	push   0x0
   6a0ee:	6a 00                	push   0x0
   6a0f0:	6a 01                	push   0x1
   6a0f2:	68 00 00 44 c2       	push   0xc2440000
   6a0f7:	b9 a7 00 00 00       	mov    ecx,0xa7
   6a0fc:	6a 06                	push   0x6
   6a0fe:	bb 30 f3 00 00       	mov    ebx,@obj3:convutil_cpp_variable_33                           ; fixup: num: 18389, src obj: 1, src ofs: 0x6a0ff, dst obj: 3, dst ofs: 0xf330
   6a103:	ba 38 f3 00 00       	mov    edx,@obj3:convutil_cpp_variable_34                           ; fixup: num: 18388, src obj: 1, src ofs: 0x6a104, dst obj: 3, dst ofs: 0xf338
   6a108:	e8 d3 0b fd ff       	call   W?$ct:BTMAP$n(pnapnaiibiucucpn(ui)pnvpnuc)_
start_dialog_branch_16:
   6a10d:	a3 74 97 02 00       	mov    ds:@obj3:textbox4,eax                                        ; fixup: num: 18387, src obj: 1, src ofs: 0x6a10e, dst obj: 3, dst ofs: 0x29774
   6a112:	b8 4c 00 00 00       	mov    eax,0x4c
   6a117:	e8 fc 7d 00 00       	call   W?$nwn(ui)pnv
   6a11c:	85 c0                	test   eax,eax
   6a11e:	74 28                	je     start_dialog_branch_17
   6a120:	6a 00                	push   0x0
   6a122:	68 93 14 07 00       	push   @obj1:_nmalloc_                                              ; aliases: _nmalloc_, malloc_; fixup: num: 18386, src obj: 1, src ofs: 0x6a123, dst obj: 1, dst ofs: 0x71493
   6a127:	6a 00                	push   0x0
   6a129:	6a 00                	push   0x0
   6a12b:	6a 01                	push   0x1
   6a12d:	68 00 00 44 c2       	push   0xc2440000
   6a132:	b9 a7 00 00 00       	mov    ecx,0xa7
   6a137:	6a 06                	push   0x6
   6a139:	bb 55 f3 00 00       	mov    ebx,@obj3:convutil_cpp_variable_35                           ; fixup: num: 18385, src obj: 1, src ofs: 0x6a13a, dst obj: 3, dst ofs: 0xf355
   6a13e:	ba 5d f3 00 00       	mov    edx,@obj3:convutil_cpp_variable_36                           ; fixup: num: 18384, src obj: 1, src ofs: 0x6a13f, dst obj: 3, dst ofs: 0xf35d
   6a143:	e8 98 0b fd ff       	call   W?$ct:BTMAP$n(pnapnaiibiucucpn(ui)pnvpnuc)_
start_dialog_branch_17:
   6a148:	a3 78 97 02 00       	mov    ds:@obj3:textbox5,eax                                        ; fixup: num: 18383, src obj: 1, src ofs: 0x6a149, dst obj: 3, dst ofs: 0x29778
   6a14d:	b8 4c 00 00 00       	mov    eax,0x4c
   6a152:	e8 c1 7d 00 00       	call   W?$nwn(ui)pnv
   6a157:	85 c0                	test   eax,eax
   6a159:	74 28                	je     start_dialog_branch_18
   6a15b:	6a 00                	push   0x0
   6a15d:	68 93 14 07 00       	push   @obj1:_nmalloc_                                              ; aliases: _nmalloc_, malloc_; fixup: num: 18382, src obj: 1, src ofs: 0x6a15e, dst obj: 1, dst ofs: 0x71493
   6a162:	6a 00                	push   0x0
   6a164:	6a 00                	push   0x0
   6a166:	6a 01                	push   0x1
   6a168:	68 00 00 44 c2       	push   0xc2440000
   6a16d:	b9 a7 00 00 00       	mov    ecx,0xa7
   6a172:	6a 06                	push   0x6
   6a174:	bb 7a f3 00 00       	mov    ebx,@obj3:convutil_cpp_variable_37                           ; fixup: num: 18406, src obj: 1, src ofs: 0x6a175, dst obj: 3, dst ofs: 0xf37a
   6a179:	ba 82 f3 00 00       	mov    edx,@obj3:convutil_cpp_variable_38                           ; fixup: num: 18405, src obj: 1, src ofs: 0x6a17a, dst obj: 3, dst ofs: 0xf382
   6a17e:	e8 5d 0b fd ff       	call   W?$ct:BTMAP$n(pnapnaiibiucucpn(ui)pnvpnuc)_
start_dialog_branch_18:
   6a183:	a3 7c 97 02 00       	mov    ds:@obj3:textbox6,eax                                        ; fixup: num: 18404, src obj: 1, src ofs: 0x6a184, dst obj: 3, dst ofs: 0x2977c
   6a188:	b8 4c 00 00 00       	mov    eax,0x4c
   6a18d:	e8 86 7d 00 00       	call   W?$nwn(ui)pnv
   6a192:	85 c0                	test   eax,eax
   6a194:	74 28                	je     start_dialog_branch_19
   6a196:	6a 00                	push   0x0
   6a198:	68 93 14 07 00       	push   @obj1:_nmalloc_                                              ; aliases: _nmalloc_, malloc_; fixup: num: 18403, src obj: 1, src ofs: 0x6a199, dst obj: 1, dst ofs: 0x71493
   6a19d:	6a 00                	push   0x0
   6a19f:	6a 00                	push   0x0
   6a1a1:	6a 01                	push   0x1
   6a1a3:	68 00 00 44 c2       	push   0xc2440000
   6a1a8:	b9 a7 00 00 00       	mov    ecx,0xa7
   6a1ad:	6a 06                	push   0x6
   6a1af:	bb 9f f3 00 00       	mov    ebx,@obj3:convutil_cpp_variable_39                           ; fixup: num: 18402, src obj: 1, src ofs: 0x6a1b0, dst obj: 3, dst ofs: 0xf39f
   6a1b4:	ba a7 f3 00 00       	mov    edx,@obj3:convutil_cpp_variable_40                           ; fixup: num: 18401, src obj: 1, src ofs: 0x6a1b5, dst obj: 3, dst ofs: 0xf3a7
   6a1b9:	e8 22 0b fd ff       	call   W?$ct:BTMAP$n(pnapnaiibiucucpn(ui)pnvpnuc)_
start_dialog_branch_19:
   6a1be:	a3 80 97 02 00       	mov    ds:@obj3:textbox7,eax                                        ; fixup: num: 18400, src obj: 1, src ofs: 0x6a1bf, dst obj: 3, dst ofs: 0x29780
   6a1c3:	b8 4c 00 00 00       	mov    eax,0x4c
   6a1c8:	e8 4b 7d 00 00       	call   W?$nwn(ui)pnv
   6a1cd:	85 c0                	test   eax,eax
   6a1cf:	74 28                	je     start_dialog_branch_20
   6a1d1:	6a 00                	push   0x0
   6a1d3:	68 93 14 07 00       	push   @obj1:_nmalloc_                                              ; aliases: _nmalloc_, malloc_; fixup: num: 18399, src obj: 1, src ofs: 0x6a1d4, dst obj: 1, dst ofs: 0x71493
   6a1d8:	6a 00                	push   0x0
   6a1da:	6a 00                	push   0x0
   6a1dc:	6a 01                	push   0x1
   6a1de:	68 00 00 44 c2       	push   0xc2440000
   6a1e3:	b9 a7 00 00 00       	mov    ecx,0xa7
   6a1e8:	6a 06                	push   0x6
   6a1ea:	bb c4 f3 00 00       	mov    ebx,@obj3:convutil_cpp_variable_41                           ; fixup: num: 18398, src obj: 1, src ofs: 0x6a1eb, dst obj: 3, dst ofs: 0xf3c4
   6a1ef:	ba cc f3 00 00       	mov    edx,@obj3:convutil_cpp_variable_42                           ; fixup: num: 18397, src obj: 1, src ofs: 0x6a1f0, dst obj: 3, dst ofs: 0xf3cc
   6a1f4:	e8 e7 0a fd ff       	call   W?$ct:BTMAP$n(pnapnaiibiucucpn(ui)pnvpnuc)_
start_dialog_branch_20:
   6a1f9:	ba c0 96 02 00       	mov    edx,@obj3:loaded_heads                                       ; fixup: num: 18396, src obj: 1, src ofs: 0x6a1fa, dst obj: 3, dst ofs: 0x296c0
   6a1fe:	a3 84 97 02 00       	mov    ds:@obj3:textbox8,eax                                        ; fixup: num: 18395, src obj: 1, src ofs: 0x6a1ff, dst obj: 3, dst ofs: 0x29784
   6a203:	8d 8a 9b 00 00 00    	lea    ecx,[edx+0x9b]
start_dialog_branch_21:
   6a209:	be e9 f3 00 00       	mov    esi,@obj3:convutil_cpp_variable_43                           ; fixup: num: 18394, src obj: 1, src ofs: 0x6a20a, dst obj: 3, dst ofs: 0xf3e9
   6a20e:	89 d7                	mov    edi,edx
   6a210:	83 c2 1f             	add    edx,0x1f
   6a213:	57                   	push   edi
start_dialog_branch_22:
   6a214:	8a 06                	mov    al,BYTE PTR [esi]
   6a216:	88 07                	mov    BYTE PTR [edi],al
   6a218:	3c 00                	cmp    al,0x0
   6a21a:	74 10                	je     start_dialog_branch_23
   6a21c:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   6a21f:	83 c6 02             	add    esi,0x2
   6a222:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   6a225:	83 c7 02             	add    edi,0x2
   6a228:	3c 00                	cmp    al,0x0
   6a22a:	75 e8                	jne    start_dialog_branch_22
start_dialog_branch_23:
   6a22c:	5f                   	pop    edi
   6a22d:	39 ca                	cmp    edx,ecx
   6a22f:	75 d8                	jne    start_dialog_branch_21
   6a231:	a1 a8 5a 02 00       	mov    eax,ds:@obj3:head_list                                       ; fixup: num: 18414, src obj: 1, src ofs: 0x6a232, dst obj: 3, dst ofs: 0x25aa8
   6a236:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
   6a239:	85 c0                	test   eax,eax
   6a23b:	0f 84 03 01 00 00    	je     start_dialog_branch_30
start_dialog_branch_24:
   6a241:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
   6a244:	ba ea f3 00 00       	mov    edx,@obj3:convutil_cpp_variable_44                           ; fixup: num: 18413, src obj: 1, src ofs: 0x6a245, dst obj: 3, dst ofs: 0xf3ea
   6a249:	8b 00                	mov    eax,DWORD PTR [eax]
   6a24b:	e8 e0 c1 00 00       	call   strcmp_
   6a250:	85 c0                	test   eax,eax
   6a252:	74 63                	je     start_dialog_branch_25
   6a254:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
   6a257:	ba ee f3 00 00       	mov    edx,@obj3:convutil_cpp_variable_45                           ; fixup: num: 18412, src obj: 1, src ofs: 0x6a258, dst obj: 3, dst ofs: 0xf3ee
   6a25c:	8b 00                	mov    eax,DWORD PTR [eax]
   6a25e:	e8 cd c1 00 00       	call   strcmp_
   6a263:	85 c0                	test   eax,eax
   6a265:	74 50                	je     start_dialog_branch_25
   6a267:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
   6a26a:	ba f2 f3 00 00       	mov    edx,@obj3:convutil_cpp_variable_46                           ; fixup: num: 18411, src obj: 1, src ofs: 0x6a26b, dst obj: 3, dst ofs: 0xf3f2
   6a26f:	8b 00                	mov    eax,DWORD PTR [eax]
   6a271:	e8 ba c1 00 00       	call   strcmp_
   6a276:	85 c0                	test   eax,eax
   6a278:	74 3d                	je     start_dialog_branch_25
   6a27a:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
   6a27d:	ba f6 f3 00 00       	mov    edx,@obj3:convutil_cpp_variable_47                           ; fixup: num: 18410, src obj: 1, src ofs: 0x6a27e, dst obj: 3, dst ofs: 0xf3f6
   6a282:	8b 00                	mov    eax,DWORD PTR [eax]
   6a284:	e8 a7 c1 00 00       	call   strcmp_
   6a289:	85 c0                	test   eax,eax
   6a28b:	74 2a                	je     start_dialog_branch_25
   6a28d:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
   6a290:	ba fa f3 00 00       	mov    edx,@obj3:convutil_cpp_variable_48                           ; fixup: num: 18409, src obj: 1, src ofs: 0x6a291, dst obj: 3, dst ofs: 0xf3fa
   6a295:	8b 00                	mov    eax,DWORD PTR [eax]
   6a297:	e8 94 c1 00 00       	call   strcmp_
   6a29c:	85 c0                	test   eax,eax
   6a29e:	74 17                	je     start_dialog_branch_25
   6a2a0:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
   6a2a3:	ba fe f3 00 00       	mov    edx,@obj3:convutil_cpp_variable_49                           ; fixup: num: 18408, src obj: 1, src ofs: 0x6a2a4, dst obj: 3, dst ofs: 0xf3fe
   6a2a8:	8b 00                	mov    eax,DWORD PTR [eax]
   6a2aa:	e8 81 c1 00 00       	call   strcmp_
   6a2af:	85 c0                	test   eax,eax
   6a2b1:	0f 85 7c 00 00 00    	jne    start_dialog_branch_29
start_dialog_branch_25:
   6a2b7:	8b 75 fc             	mov    esi,DWORD PTR [ebp-0x4]
   6a2ba:	bf c0 96 02 00       	mov    edi,@obj3:loaded_heads                                       ; fixup: num: 18407, src obj: 1, src ofs: 0x6a2bb, dst obj: 3, dst ofs: 0x296c0
   6a2bf:	8b 36                	mov    esi,DWORD PTR [esi]
   6a2c1:	57                   	push   edi
start_dialog_branch_26:
   6a2c2:	8a 06                	mov    al,BYTE PTR [esi]
   6a2c4:	88 07                	mov    BYTE PTR [edi],al
   6a2c6:	3c 00                	cmp    al,0x0
   6a2c8:	74 10                	je     start_dialog_branch_27
   6a2ca:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   6a2cd:	83 c6 02             	add    esi,0x2
   6a2d0:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   6a2d3:	83 c7 02             	add    edi,0x2
   6a2d6:	3c 00                	cmp    al,0x0
   6a2d8:	75 e8                	jne    start_dialog_branch_26
start_dialog_branch_27:
   6a2da:	5f                   	pop    edi
   6a2db:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
   6a2de:	8b 78 04             	mov    edi,DWORD PTR [eax+0x4]
   6a2e1:	57                   	push   edi
   6a2e2:	68 01 f4 00 00       	push   @obj3:convutil_cpp_variable_50                               ; fixup: num: 18425, src obj: 1, src ofs: 0x6a2e3, dst obj: 3, dst ofs: 0xf401
   6a2e7:	a1 34 24 03 00       	mov    eax,ds:@obj3:temp_filename                                   ; fixup: num: 18424, src obj: 1, src ofs: 0x6a2e8, dst obj: 3, dst ofs: 0x32434
   6a2ec:	50                   	push   eax
   6a2ed:	e8 ef 68 00 00       	call   sprintf_
   6a2f2:	83 c4 0c             	add    esp,0xc
   6a2f5:	b8 4c 00 00 00       	mov    eax,0x4c
   6a2fa:	e8 19 7c 00 00       	call   W?$nwn(ui)pnv
   6a2ff:	85 c0                	test   eax,eax
   6a301:	74 29                	je     start_dialog_branch_28
   6a303:	6a 00                	push   0x0
   6a305:	68 93 14 07 00       	push   @obj1:_nmalloc_                                              ; aliases: _nmalloc_, malloc_; fixup: num: 18423, src obj: 1, src ofs: 0x6a306, dst obj: 1, dst ofs: 0x71493
   6a30a:	6a 00                	push   0x0
   6a30c:	6a 00                	push   0x0
   6a30e:	6a 01                	push   0x1
   6a310:	68 00 00 48 c2       	push   0xc2480000
   6a315:	b9 da 01 00 00       	mov    ecx,0x1da
   6a31a:	6a 06                	push   0x6
   6a31c:	bb 07 f4 00 00       	mov    ebx,@obj3:convutil_cpp_variable_51                           ; fixup: num: 18422, src obj: 1, src ofs: 0x6a31d, dst obj: 3, dst ofs: 0xf407
   6a321:	8b 15 34 24 03 00    	mov    edx,DWORD PTR ds:@obj3:temp_filename                         ; fixup: num: 18421, src obj: 1, src ofs: 0x6a323, dst obj: 3, dst ofs: 0x32434
   6a327:	e8 b4 09 fd ff       	call   W?$ct:BTMAP$n(pnapnaiibiucucpn(ui)pnvpnuc)_
start_dialog_branch_28:
   6a32c:	a3 60 97 02 00       	mov    ds:@obj3:right_head,eax                                      ; fixup: num: 18420, src obj: 1, src ofs: 0x6a32d, dst obj: 3, dst ofs: 0x29760
   6a331:	eb 11                	jmp    start_dialog_branch_30
start_dialog_branch_29:
   6a333:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
   6a336:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
   6a339:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
   6a33c:	85 c0                	test   eax,eax
   6a33e:	0f 85 fd fe ff ff    	jne    start_dialog_branch_24
start_dialog_branch_30:
   6a344:	8b 55 fc             	mov    edx,DWORD PTR [ebp-0x4]
   6a347:	85 d2                	test   edx,edx
   6a349:	75 27                	jne    start_dialog_branch_31
   6a34b:	8b 5a 04             	mov    ebx,DWORD PTR [edx+0x4]
   6a34e:	53                   	push   ebx
   6a34f:	68 12 f4 00 00       	push   @obj3:convutil_cpp_variable_52                               ; fixup: num: 18419, src obj: 1, src ofs: 0x6a350, dst obj: 3, dst ofs: 0xf412
   6a354:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 18418, src obj: 1, src ofs: 0x6a355, dst obj: 3, dst ofs: 0x237fc
   6a359:	ba ae 01 00 00       	mov    edx,0x1ae
   6a35e:	e8 7e 68 00 00       	call   sprintf_
   6a363:	83 c4 0c             	add    esp,0xc
   6a366:	bb fc 37 02 00       	mov    ebx,@obj3:log_buffer                                         ; fixup: num: 18417, src obj: 1, src ofs: 0x6a367, dst obj: 3, dst ofs: 0x237fc
   6a36b:	31 c0                	xor    eax,eax
   6a36d:	e8 be dc fc ff       	call   _error_report
start_dialog_branch_31:
   6a372:	83 3d 60 97 02 00 00 	cmp    DWORD PTR ds:@obj3:right_head,0x0                            ; fixup: num: 18416, src obj: 1, src ofs: 0x6a374, dst obj: 3, dst ofs: 0x29760
   6a379:	75 11                	jne    start_dialog_branch_32
   6a37b:	bb 34 f4 00 00       	mov    ebx,@obj3:convutil_cpp_variable_53                           ; fixup: num: 18415, src obj: 1, src ofs: 0x6a37c, dst obj: 3, dst ofs: 0xf434
   6a380:	ba b0 01 00 00       	mov    edx,0x1b0
   6a385:	31 c0                	xor    eax,eax
   6a387:	e8 a4 dc fc ff       	call   _error_report
start_dialog_branch_32:
   6a38c:	a1 a8 5a 02 00       	mov    eax,ds:@obj3:head_list                                       ; fixup: num: 18432, src obj: 1, src ofs: 0x6a38d, dst obj: 3, dst ofs: 0x25aa8
   6a391:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
   6a394:	85 c0                	test   eax,eax
   6a396:	0f 84 f7 00 00 00    	je     start_dialog_branch_40
start_dialog_branch_33:
   6a39c:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
   6a39f:	83 38 00             	cmp    DWORD PTR [eax],0x0
   6a3a2:	75 11                	jne    start_dialog_branch_34
   6a3a4:	bb 4c f4 00 00       	mov    ebx,@obj3:convutil_cpp_variable_54                           ; fixup: num: 18431, src obj: 1, src ofs: 0x6a3a5, dst obj: 3, dst ofs: 0xf44c
   6a3a9:	ba b6 01 00 00       	mov    edx,0x1b6
   6a3ae:	31 c0                	xor    eax,eax
   6a3b0:	e8 7b dc fc ff       	call   _error_report
start_dialog_branch_34:
   6a3b5:	8b 7d f8             	mov    edi,DWORD PTR [ebp-0x8]
   6a3b8:	8b 3f                	mov    edi,DWORD PTR [edi]
   6a3ba:	29 c9                	sub    ecx,ecx
   6a3bc:	49                   	dec    ecx
   6a3bd:	31 c0                	xor    eax,eax
   6a3bf:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
   6a3c1:	f7 d1                	not    ecx
   6a3c3:	49                   	dec    ecx
   6a3c4:	83 f9 1e             	cmp    ecx,0x1e
   6a3c7:	76 29                	jbe    start_dialog_branch_35
   6a3c9:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
   6a3cc:	8b 18                	mov    ebx,DWORD PTR [eax]
   6a3ce:	53                   	push   ebx
   6a3cf:	68 78 f4 00 00       	push   @obj3:convutil_cpp_variable_55                               ; fixup: num: 18430, src obj: 1, src ofs: 0x6a3d0, dst obj: 3, dst ofs: 0xf478
   6a3d4:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 18429, src obj: 1, src ofs: 0x6a3d5, dst obj: 3, dst ofs: 0x237fc
   6a3d9:	ba bb 01 00 00       	mov    edx,0x1bb
   6a3de:	e8 fe 67 00 00       	call   sprintf_
   6a3e3:	83 c4 0c             	add    esp,0xc
   6a3e6:	bb fc 37 02 00       	mov    ebx,@obj3:log_buffer                                         ; fixup: num: 18428, src obj: 1, src ofs: 0x6a3e7, dst obj: 3, dst ofs: 0x237fc
   6a3eb:	31 c0                	xor    eax,eax
   6a3ed:	e8 3e dc fc ff       	call   _error_report
start_dialog_branch_35:
   6a3f2:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
   6a3f5:	8d 55 d4             	lea    edx,[ebp-0x2c]
   6a3f8:	8b 00                	mov    eax,DWORD PTR [eax]
   6a3fa:	e8 31 c0 00 00       	call   strcmp_
   6a3ff:	85 c0                	test   eax,eax
   6a401:	0f 85 7b 00 00 00    	jne    start_dialog_branch_39
   6a407:	8d 75 d4             	lea    esi,[ebp-0x2c]
   6a40a:	bf df 96 02 00       	mov    edi,@obj3:loaded_heads_variable_1                            ; fixup: num: 18427, src obj: 1, src ofs: 0x6a40b, dst obj: 3, dst ofs: 0x296df
   6a40f:	57                   	push   edi
start_dialog_branch_36:
   6a410:	8a 06                	mov    al,BYTE PTR [esi]
   6a412:	88 07                	mov    BYTE PTR [edi],al
   6a414:	3c 00                	cmp    al,0x0
   6a416:	74 10                	je     start_dialog_branch_37
   6a418:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   6a41b:	83 c6 02             	add    esi,0x2
   6a41e:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   6a421:	83 c7 02             	add    edi,0x2
   6a424:	3c 00                	cmp    al,0x0
   6a426:	75 e8                	jne    start_dialog_branch_36
start_dialog_branch_37:
   6a428:	5f                   	pop    edi
   6a429:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
   6a42c:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
   6a42f:	51                   	push   ecx
   6a430:	68 a3 f4 00 00       	push   @obj3:convutil_cpp_variable_56                               ; fixup: num: 18426, src obj: 1, src ofs: 0x6a431, dst obj: 3, dst ofs: 0xf4a3
   6a435:	8b 35 34 24 03 00    	mov    esi,DWORD PTR ds:@obj3:temp_filename                         ; fixup: num: 18320, src obj: 1, src ofs: 0x6a437, dst obj: 3, dst ofs: 0x32434
   6a43b:	56                   	push   esi
   6a43c:	e8 a0 67 00 00       	call   sprintf_
   6a441:	83 c4 0c             	add    esp,0xc
   6a444:	b8 4c 00 00 00       	mov    eax,0x4c
   6a449:	e8 ca 7a 00 00       	call   W?$nwn(ui)pnv
   6a44e:	85 c0                	test   eax,eax
   6a450:	74 29                	je     start_dialog_branch_38
   6a452:	6a 00                	push   0x0
   6a454:	68 93 14 07 00       	push   @obj1:_nmalloc_                                              ; aliases: _nmalloc_, malloc_; fixup: num: 18319, src obj: 1, src ofs: 0x6a455, dst obj: 1, dst ofs: 0x71493
   6a459:	6a 00                	push   0x0
   6a45b:	6a 00                	push   0x0
   6a45d:	6a 01                	push   0x1
   6a45f:	68 00 00 48 c2       	push   0xc2480000
   6a464:	b9 06 00 00 00       	mov    ecx,0x6
   6a469:	6a 06                	push   0x6
   6a46b:	bb a9 f4 00 00       	mov    ebx,@obj3:convutil_cpp_variable_57                           ; fixup: num: 18318, src obj: 1, src ofs: 0x6a46c, dst obj: 3, dst ofs: 0xf4a9
   6a470:	8b 15 34 24 03 00    	mov    edx,DWORD PTR ds:@obj3:temp_filename                         ; fixup: num: 18317, src obj: 1, src ofs: 0x6a472, dst obj: 3, dst ofs: 0x32434
   6a476:	e8 65 08 fd ff       	call   W?$ct:BTMAP$n(pnapnaiibiucucpn(ui)pnvpnuc)_
start_dialog_branch_38:
   6a47b:	a3 5c 97 02 00       	mov    ds:@obj3:left_head,eax                                       ; fixup: num: 18316, src obj: 1, src ofs: 0x6a47c, dst obj: 3, dst ofs: 0x2975c
   6a480:	eb 11                	jmp    start_dialog_branch_40
start_dialog_branch_39:
   6a482:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
   6a485:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
   6a488:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
   6a48b:	85 c0                	test   eax,eax
   6a48d:	0f 85 09 ff ff ff    	jne    start_dialog_branch_33
start_dialog_branch_40:
   6a493:	83 7d f8 00          	cmp    DWORD PTR [ebp-0x8],0x0
   6a497:	75 27                	jne    start_dialog_branch_41
   6a499:	8d 45 d4             	lea    eax,[ebp-0x2c]
   6a49c:	50                   	push   eax
   6a49d:	68 b3 f4 00 00       	push   @obj3:convutil_cpp_variable_58                               ; fixup: num: 18315, src obj: 1, src ofs: 0x6a49e, dst obj: 3, dst ofs: 0xf4b3
   6a4a2:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 18314, src obj: 1, src ofs: 0x6a4a3, dst obj: 3, dst ofs: 0x237fc
   6a4a7:	bb fc 37 02 00       	mov    ebx,@obj3:log_buffer                                         ; fixup: num: 18313, src obj: 1, src ofs: 0x6a4a8, dst obj: 3, dst ofs: 0x237fc
   6a4ac:	e8 30 67 00 00       	call   sprintf_
   6a4b1:	83 c4 0c             	add    esp,0xc
   6a4b4:	ba da 01 00 00       	mov    edx,0x1da
   6a4b9:	31 c0                	xor    eax,eax
   6a4bb:	e8 70 db fc ff       	call   _error_report
start_dialog_branch_41:
   6a4c0:	a1 5c 97 02 00       	mov    eax,ds:@obj3:left_head                                       ; fixup: num: 18312, src obj: 1, src ofs: 0x6a4c1, dst obj: 3, dst ofs: 0x2975c
   6a4c5:	85 c0                	test   eax,eax
   6a4c7:	75 0f                	jne    start_dialog_branch_42
   6a4c9:	bb d6 f4 00 00       	mov    ebx,@obj3:convutil_cpp_variable_59                           ; fixup: num: 18311, src obj: 1, src ofs: 0x6a4ca, dst obj: 3, dst ofs: 0xf4d6
   6a4ce:	ba dc 01 00 00       	mov    edx,0x1dc
   6a4d3:	e8 58 db fc ff       	call   _error_report
start_dialog_branch_42:
   6a4d8:	31 c0                	xor    eax,eax
start_dialog_branch_43:
   6a4da:	66 3b 05 08 59 02 00 	cmp    ax,WORD PTR ds:@obj3:raw_key                                 ; fixup: num: 18433, src obj: 1, src ofs: 0x6a4dd, dst obj: 3, dst ofs: 0x25908
   6a4e1:	74 08                	je     start_dialog_branch_44
   6a4e3:	66 a3 08 59 02 00    	mov    ds:@obj3:raw_key,ax                                          ; fixup: num: 18327, src obj: 1, src ofs: 0x6a4e5, dst obj: 3, dst ofs: 0x25908
   6a4e9:	eb ef                	jmp    start_dialog_branch_43
start_dialog_branch_44:
   6a4eb:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
   6a4ee:	e8 8d fa fb ff       	call   talk_to
   6a4f3:	8b 15 64 97 02 00    	mov    edx,DWORD PTR ds:@obj3:keyw_box                              ; fixup: num: 18326, src obj: 1, src ofs: 0x6a4f5, dst obj: 3, dst ofs: 0x29764
   6a4f9:	88 c1                	mov    cl,al
   6a4fb:	85 d2                	test   edx,edx
   6a4fd:	74 10                	je     start_dialog_branch_45
   6a4ff:	89 d0                	mov    eax,edx
   6a501:	74 0c                	je     start_dialog_branch_45
   6a503:	31 d2                	xor    edx,edx
   6a505:	e8 96 0e fd ff       	call   W?$dt:BTMAP$n()_
   6a50a:	e8 69 7b 00 00       	call   W?$dln(pnv)v
start_dialog_branch_45:
   6a50f:	8b 1d 68 97 02 00    	mov    ebx,DWORD PTR ds:@obj3:textbox1                              ; fixup: num: 18325, src obj: 1, src ofs: 0x6a511, dst obj: 3, dst ofs: 0x29768
   6a515:	85 db                	test   ebx,ebx
   6a517:	74 10                	je     start_dialog_branch_46
   6a519:	89 d8                	mov    eax,ebx
   6a51b:	74 0c                	je     start_dialog_branch_46
   6a51d:	31 d2                	xor    edx,edx
   6a51f:	e8 7c 0e fd ff       	call   W?$dt:BTMAP$n()_
   6a524:	e8 4f 7b 00 00       	call   W?$dln(pnv)v
start_dialog_branch_46:
   6a529:	8b 35 6c 97 02 00    	mov    esi,DWORD PTR ds:@obj3:textbox2                              ; fixup: num: 18324, src obj: 1, src ofs: 0x6a52b, dst obj: 3, dst ofs: 0x2976c
   6a52f:	85 f6                	test   esi,esi
   6a531:	74 10                	je     start_dialog_branch_47
   6a533:	89 f0                	mov    eax,esi
   6a535:	74 0c                	je     start_dialog_branch_47
   6a537:	31 d2                	xor    edx,edx
   6a539:	e8 62 0e fd ff       	call   W?$dt:BTMAP$n()_
   6a53e:	e8 35 7b 00 00       	call   W?$dln(pnv)v
start_dialog_branch_47:
   6a543:	8b 3d 70 97 02 00    	mov    edi,DWORD PTR ds:@obj3:textbox3                              ; fixup: num: 18323, src obj: 1, src ofs: 0x6a545, dst obj: 3, dst ofs: 0x29770
   6a549:	85 ff                	test   edi,edi
   6a54b:	74 10                	je     start_dialog_branch_48
   6a54d:	89 f8                	mov    eax,edi
   6a54f:	74 0c                	je     start_dialog_branch_48
   6a551:	31 d2                	xor    edx,edx
   6a553:	e8 48 0e fd ff       	call   W?$dt:BTMAP$n()_
   6a558:	e8 1b 7b 00 00       	call   W?$dln(pnv)v
start_dialog_branch_48:
   6a55d:	a1 74 97 02 00       	mov    eax,ds:@obj3:textbox4                                        ; fixup: num: 18322, src obj: 1, src ofs: 0x6a55e, dst obj: 3, dst ofs: 0x29774
   6a562:	85 c0                	test   eax,eax
   6a564:	74 0e                	je     start_dialog_branch_49
   6a566:	74 0c                	je     start_dialog_branch_49
   6a568:	31 d2                	xor    edx,edx
   6a56a:	e8 31 0e fd ff       	call   W?$dt:BTMAP$n()_
   6a56f:	e8 04 7b 00 00       	call   W?$dln(pnv)v
start_dialog_branch_49:
   6a574:	8b 15 78 97 02 00    	mov    edx,DWORD PTR ds:@obj3:textbox5                              ; fixup: num: 18321, src obj: 1, src ofs: 0x6a576, dst obj: 3, dst ofs: 0x29778
   6a57a:	85 d2                	test   edx,edx
   6a57c:	74 10                	je     start_dialog_branch_50
   6a57e:	89 d0                	mov    eax,edx
   6a580:	74 0c                	je     start_dialog_branch_50
   6a582:	31 d2                	xor    edx,edx
   6a584:	e8 17 0e fd ff       	call   W?$dt:BTMAP$n()_
   6a589:	e8 ea 7a 00 00       	call   W?$dln(pnv)v
start_dialog_branch_50:
   6a58e:	8b 1d 7c 97 02 00    	mov    ebx,DWORD PTR ds:@obj3:textbox6                              ; fixup: num: 18338, src obj: 1, src ofs: 0x6a590, dst obj: 3, dst ofs: 0x2977c
   6a594:	85 db                	test   ebx,ebx
   6a596:	74 10                	je     start_dialog_branch_51
   6a598:	89 d8                	mov    eax,ebx
   6a59a:	74 0c                	je     start_dialog_branch_51
   6a59c:	31 d2                	xor    edx,edx
   6a59e:	e8 fd 0d fd ff       	call   W?$dt:BTMAP$n()_
   6a5a3:	e8 d0 7a 00 00       	call   W?$dln(pnv)v
start_dialog_branch_51:
   6a5a8:	8b 35 80 97 02 00    	mov    esi,DWORD PTR ds:@obj3:textbox7                              ; fixup: num: 18337, src obj: 1, src ofs: 0x6a5aa, dst obj: 3, dst ofs: 0x29780
   6a5ae:	85 f6                	test   esi,esi
   6a5b0:	74 10                	je     start_dialog_branch_52
   6a5b2:	89 f0                	mov    eax,esi
   6a5b4:	74 0c                	je     start_dialog_branch_52
   6a5b6:	31 d2                	xor    edx,edx
   6a5b8:	e8 e3 0d fd ff       	call   W?$dt:BTMAP$n()_
   6a5bd:	e8 b6 7a 00 00       	call   W?$dln(pnv)v
start_dialog_branch_52:
   6a5c2:	8b 3d 84 97 02 00    	mov    edi,DWORD PTR ds:@obj3:textbox8                              ; fixup: num: 18336, src obj: 1, src ofs: 0x6a5c4, dst obj: 3, dst ofs: 0x29784
   6a5c8:	85 ff                	test   edi,edi
   6a5ca:	74 10                	je     start_dialog_branch_53
   6a5cc:	89 f8                	mov    eax,edi
   6a5ce:	74 0c                	je     start_dialog_branch_53
   6a5d0:	31 d2                	xor    edx,edx
   6a5d2:	e8 c9 0d fd ff       	call   W?$dt:BTMAP$n()_
   6a5d7:	e8 9c 7a 00 00       	call   W?$dln(pnv)v
start_dialog_branch_53:
   6a5dc:	83 3d bc 60 02 00 00 	cmp    DWORD PTR ds:@obj3:godeathflic_demands,0x0                   ; fixup: num: 18335, src obj: 1, src ofs: 0x6a5de, dst obj: 3, dst ofs: 0x260bc
   6a5e3:	75 64                	jne    start_dialog_branch_57
   6a5e5:	8b 15 5c 97 02 00    	mov    edx,DWORD PTR ds:@obj3:left_head                             ; fixup: num: 18334, src obj: 1, src ofs: 0x6a5e7, dst obj: 3, dst ofs: 0x2975c
   6a5eb:	85 d2                	test   edx,edx
   6a5ed:	74 27                	je     start_dialog_branch_55
   6a5ef:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 18333, src obj: 1, src ofs: 0x6a5f0, dst obj: 3, dst ofs: 0x25a88
   6a5f4:	e8 f7 20 fe ff       	call   remove_bitmap
   6a5f9:	a1 5c 97 02 00       	mov    eax,ds:@obj3:left_head                                       ; fixup: num: 18332, src obj: 1, src ofs: 0x6a5fa, dst obj: 3, dst ofs: 0x2975c
   6a5fe:	85 c0                	test   eax,eax
   6a600:	74 0c                	je     start_dialog_branch_54
   6a602:	31 d2                	xor    edx,edx
   6a604:	e8 97 0d fd ff       	call   W?$dt:BTMAP$n()_
   6a609:	e8 6a 7a 00 00       	call   W?$dln(pnv)v
start_dialog_branch_54:
   6a60e:	31 db                	xor    ebx,ebx
   6a610:	89 1d 5c 97 02 00    	mov    DWORD PTR ds:@obj3:left_head,ebx                             ; fixup: num: 18331, src obj: 1, src ofs: 0x6a612, dst obj: 3, dst ofs: 0x2975c
start_dialog_branch_55:
   6a616:	8b 35 60 97 02 00    	mov    esi,DWORD PTR ds:@obj3:right_head                            ; fixup: num: 18330, src obj: 1, src ofs: 0x6a618, dst obj: 3, dst ofs: 0x29760
   6a61c:	85 f6                	test   esi,esi
   6a61e:	74 29                	je     start_dialog_branch_57
   6a620:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 18329, src obj: 1, src ofs: 0x6a621, dst obj: 3, dst ofs: 0x25a88
   6a625:	89 f2                	mov    edx,esi
   6a627:	e8 c4 20 fe ff       	call   remove_bitmap
   6a62c:	a1 60 97 02 00       	mov    eax,ds:@obj3:right_head                                      ; fixup: num: 18328, src obj: 1, src ofs: 0x6a62d, dst obj: 3, dst ofs: 0x29760
   6a631:	85 c0                	test   eax,eax
   6a633:	74 0c                	je     start_dialog_branch_56
   6a635:	31 d2                	xor    edx,edx
   6a637:	e8 64 0d fd ff       	call   W?$dt:BTMAP$n()_
   6a63c:	e8 37 7a 00 00       	call   W?$dln(pnv)v
start_dialog_branch_56:
   6a641:	31 ff                	xor    edi,edi
   6a643:	89 3d 60 97 02 00    	mov    DWORD PTR ds:@obj3:right_head,edi                            ; fixup: num: 18344, src obj: 1, src ofs: 0x6a645, dst obj: 3, dst ofs: 0x29760
start_dialog_branch_57:
   6a649:	88 c8                	mov    al,cl
start_dialog_branch_58:
   6a64b:	89 ec                	mov    esp,ebp
   6a64d:	5d                   	pop    ebp
   6a64e:	5f                   	pop    edi
   6a64f:	5e                   	pop    esi
   6a650:	59                   	pop    ecx
   6a651:	5b                   	pop    ebx
   6a652:	c3                   	ret    
   6a653:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   6a659:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
   6a65f:	90                   	nop

;-------------------------------------------------
;  Function 'show_head'                          -
;-------------------------------------------------
show_head:
   6a660:	83 f8 01             	cmp    eax,0x1
   6a663:	75 10                	jne    show_head_branch_1
   6a665:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 18343, src obj: 1, src ofs: 0x6a666, dst obj: 3, dst ofs: 0x25a88
   6a66a:	8b 15 60 97 02 00    	mov    edx,DWORD PTR ds:@obj3:right_head                            ; fixup: num: 18342, src obj: 1, src ofs: 0x6a66c, dst obj: 3, dst ofs: 0x29760
   6a670:	e9 bb 1a fe ff       	jmp    insert_bitmap
show_head_branch_1:
   6a675:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 18341, src obj: 1, src ofs: 0x6a676, dst obj: 3, dst ofs: 0x25a88
   6a67a:	8b 15 5c 97 02 00    	mov    edx,DWORD PTR ds:@obj3:left_head                             ; fixup: num: 18340, src obj: 1, src ofs: 0x6a67c, dst obj: 3, dst ofs: 0x2975c
   6a680:	e9 ab 1a fe ff       	jmp    insert_bitmap
   6a685:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   6a68b:	8d 52 00             	lea    edx,[edx+0x0]
   6a68e:	8b db                	mov    ebx,ebx

;-------------------------------------------------
;  Function 'play_wav'                           -
;-------------------------------------------------
play_wav:
   6a690:	51                   	push   ecx
   6a691:	56                   	push   esi
   6a692:	57                   	push   edi
   6a693:	55                   	push   ebp
   6a694:	81 ec 58 01 00 00    	sub    esp,0x158
   6a69a:	89 c5                	mov    ebp,eax
   6a69c:	89 94 24 4c 01 00 00 	mov    DWORD PTR [esp+0x14c],edx
   6a6a3:	89 de                	mov    esi,ebx
   6a6a5:	8d 84 24 90 00 00 00 	lea    eax,[esp+0x90]
   6a6ac:	e8 6f dd f9 ff       	call   W?$ct:SOUND$n()_
   6a6b1:	30 e4                	xor    ah,ah
   6a6b3:	88 a4 24 54 01 00 00 	mov    BYTE PTR [esp+0x154],ah
   6a6ba:	88 a4 24 50 01 00 00 	mov    BYTE PTR [esp+0x150],ah
   6a6c1:	85 d2                	test   edx,edx
   6a6c3:	75 0c                	jne    play_wav_branch_1
   6a6c5:	8d 84 24 90 00 00 00 	lea    eax,[esp+0x90]
   6a6cc:	e9 26 08 00 00       	jmp    play_wav_branch_80
play_wav_branch_1:
   6a6d1:	80 3d bf 96 02 00 00 	cmp    BYTE PTR ds:@obj3:cancel,0x0                                 ; fixup: num: 18339, src obj: 1, src ofs: 0x6a6d3, dst obj: 3, dst ofs: 0x296bf
   6a6d8:	0f 85 10 08 00 00    	jne    play_wav_branch_79
   6a6de:	8b bc 24 4c 01 00 00 	mov    edi,DWORD PTR [esp+0x14c]
   6a6e5:	29 c9                	sub    ecx,ecx
   6a6e7:	49                   	dec    ecx
   6a6e8:	31 c0                	xor    eax,eax
   6a6ea:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
   6a6ec:	f7 d1                	not    ecx
   6a6ee:	49                   	dec    ecx
   6a6ef:	83 f9 1e             	cmp    ecx,0x1e
   6a6f2:	76 11                	jbe    play_wav_branch_2
   6a6f4:	bb ee f4 00 00       	mov    ebx,@obj3:convutil_cpp_variable_60                           ; fixup: num: 18350, src obj: 1, src ofs: 0x6a6f5, dst obj: 3, dst ofs: 0xf4ee
   6a6f9:	ba 80 02 00 00       	mov    edx,0x280
   6a6fe:	31 c0                	xor    eax,eax
   6a700:	e8 2b d9 fc ff       	call   _error_report
play_wav_branch_2:
   6a705:	56                   	push   esi
   6a706:	8b 9c 24 50 01 00 00 	mov    ebx,DWORD PTR [esp+0x150]
   6a70d:	53                   	push   ebx
   6a70e:	68 ff f4 00 00       	push   @obj3:convutil_cpp_variable_61                               ; fixup: num: 18349, src obj: 1, src ofs: 0x6a70f, dst obj: 3, dst ofs: 0xf4ff
   6a713:	8d 84 24 24 01 00 00 	lea    eax,[esp+0x124]
   6a71a:	50                   	push   eax
   6a71b:	8d 94 24 48 01 00 00 	lea    edx,[esp+0x148]
   6a722:	e8 ba 64 00 00       	call   sprintf_
   6a727:	83 c4 10             	add    esp,0x10
   6a72a:	bb 0a 00 00 00       	mov    ebx,0xa
   6a72f:	89 e8                	mov    eax,ebp
   6a731:	e8 3b c5 00 00       	call   itoa_                                                        ; aliases: itoa_, _itoa_
   6a736:	50                   	push   eax
   6a737:	ba 04 f5 00 00       	mov    edx,@obj3:convutil_cpp_variable_62                           ; fixup: num: 18348, src obj: 1, src ofs: 0x6a738, dst obj: 3, dst ofs: 0xf504
   6a73c:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 18347, src obj: 1, src ofs: 0x6a73d, dst obj: 3, dst ofs: 0x32438
   6a741:	e8 8a 30 00 00       	call   get
   6a746:	50                   	push   eax
   6a747:	68 0a f5 00 00       	push   @obj3:convutil_cpp_variable_63                               ; fixup: num: 18346, src obj: 1, src ofs: 0x6a748, dst obj: 3, dst ofs: 0xf50a
   6a74c:	8d 44 24 0c          	lea    eax,[esp+0xc]
   6a750:	50                   	push   eax
   6a751:	e8 8b 64 00 00       	call   sprintf_
   6a756:	83 c4 10             	add    esp,0x10
   6a759:	89 e0                	mov    eax,esp
   6a75b:	e8 20 25 fa ff       	call   XFILE_size
   6a760:	89 84 24 48 01 00 00 	mov    DWORD PTR [esp+0x148],eax
   6a767:	85 c0                	test   eax,eax
   6a769:	7e 0e                	jle    play_wav_branch_3
   6a76b:	89 e2                	mov    edx,esp
   6a76d:	8d 84 24 90 00 00 00 	lea    eax,[esp+0x90]
   6a774:	e8 57 ea f9 ff       	call   load_from_file
play_wav_branch_3:
   6a779:	b9 b7 0b 00 00       	mov    ecx,0xbb7
   6a77e:	89 ce                	mov    esi,ecx
   6a780:	31 ff                	xor    edi,edi
play_wav_branch_4:
   6a782:	6b c1 0c             	imul   eax,ecx,0xc
   6a785:	3b a8 8c 97 02 00    	cmp    ebp,DWORD PTR [eax+@obj3:index_table]                        ; fixup: num: 18345, src obj: 1, src ofs: 0x6a787, dst obj: 3, dst ofs: 0x2978c
   6a78b:	0f 84 c7 00 00 00    	je     play_wav_branch_11
   6a791:	89 f2                	mov    edx,esi
   6a793:	89 f0                	mov    eax,esi
   6a795:	c1 fa 1f             	sar    edx,0x1f
   6a798:	2b c2                	sub    eax,edx
   6a79a:	d1 f8                	sar    eax,1
   6a79c:	89 c6                	mov    esi,eax
   6a79e:	85 c0                	test   eax,eax
   6a7a0:	75 05                	jne    play_wav_branch_5
   6a7a2:	be 01 00 00 00       	mov    esi,0x1
play_wav_branch_5:
   6a7a7:	6b c1 0c             	imul   eax,ecx,0xc
   6a7aa:	3b a8 8c 97 02 00    	cmp    ebp,DWORD PTR [eax+@obj3:index_table]                        ; fixup: num: 18361, src obj: 1, src ofs: 0x6a7ac, dst obj: 3, dst ofs: 0x2978c
   6a7b0:	7e 34                	jle    play_wav_branch_7
   6a7b2:	83 fe 01             	cmp    esi,0x1
   6a7b5:	75 2b                	jne    play_wav_branch_6
   6a7b7:	8d 04 31             	lea    eax,[ecx+esi*1]
   6a7ba:	6b c0 0c             	imul   eax,eax,0xc
   6a7bd:	3b a8 8c 97 02 00    	cmp    ebp,DWORD PTR [eax+@obj3:index_table]                        ; fixup: num: 18360, src obj: 1, src ofs: 0x6a7bf, dst obj: 3, dst ofs: 0x2978c
   6a7c3:	7d 1d                	jge    play_wav_branch_6
   6a7c5:	55                   	push   ebp
   6a7c6:	68 16 f5 00 00       	push   @obj3:convutil_cpp_variable_64                               ; fixup: num: 18359, src obj: 1, src ofs: 0x6a7c7, dst obj: 3, dst ofs: 0xf516
   6a7cb:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 18358, src obj: 1, src ofs: 0x6a7cc, dst obj: 3, dst ofs: 0x237fc
   6a7d0:	b9 ff ff ff ff       	mov    ecx,0xffffffff
   6a7d5:	e8 07 64 00 00       	call   sprintf_
   6a7da:	83 c4 0c             	add    esp,0xc
   6a7dd:	e9 76 00 00 00       	jmp    play_wav_branch_11
play_wav_branch_6:
   6a7e2:	01 f1                	add    ecx,esi
   6a7e4:	eb 2f                	jmp    play_wav_branch_9
play_wav_branch_7:
   6a7e6:	83 fe 01             	cmp    esi,0x1
   6a7e9:	75 28                	jne    play_wav_branch_8
   6a7eb:	8d 41 ff             	lea    eax,[ecx-0x1]
   6a7ee:	6b c0 0c             	imul   eax,eax,0xc
   6a7f1:	3b a8 8c 97 02 00    	cmp    ebp,DWORD PTR [eax+@obj3:index_table]                        ; fixup: num: 18357, src obj: 1, src ofs: 0x6a7f3, dst obj: 3, dst ofs: 0x2978c
   6a7f7:	7e 1a                	jle    play_wav_branch_8
   6a7f9:	55                   	push   ebp
   6a7fa:	68 39 f5 00 00       	push   @obj3:convutil_cpp_variable_65                               ; fixup: num: 18356, src obj: 1, src ofs: 0x6a7fb, dst obj: 3, dst ofs: 0xf539
   6a7ff:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 18355, src obj: 1, src ofs: 0x6a800, dst obj: 3, dst ofs: 0x237fc
   6a804:	b9 ff ff ff ff       	mov    ecx,0xffffffff
   6a809:	e8 d3 63 00 00       	call   sprintf_
   6a80e:	83 c4 0c             	add    esp,0xc
   6a811:	eb 45                	jmp    play_wav_branch_11
play_wav_branch_8:
   6a813:	29 f1                	sub    ecx,esi
play_wav_branch_9:
   6a815:	81 f9 b8 0b 00 00    	cmp    ecx,0xbb8
   6a81b:	7f 08                	jg     play_wav_branch_10
   6a81d:	85 c9                	test   ecx,ecx
   6a81f:	0f 85 5d ff ff ff    	jne    play_wav_branch_4
play_wav_branch_10:
   6a825:	6b c1 0c             	imul   eax,ecx,0xc
   6a828:	8b 90 8c 97 02 00    	mov    edx,DWORD PTR [eax+@obj3:index_table]                        ; fixup: num: 18354, src obj: 1, src ofs: 0x6a82a, dst obj: 3, dst ofs: 0x2978c
   6a82e:	52                   	push   edx
   6a82f:	51                   	push   ecx
   6a830:	68 5c f5 00 00       	push   @obj3:convutil_cpp_variable_66                               ; fixup: num: 18353, src obj: 1, src ofs: 0x6a831, dst obj: 3, dst ofs: 0xf55c
   6a835:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 18352, src obj: 1, src ofs: 0x6a836, dst obj: 3, dst ofs: 0x237fc
   6a83a:	bb 6f f5 00 00       	mov    ebx,@obj3:convutil_cpp_variable_67                           ; fixup: num: 18351, src obj: 1, src ofs: 0x6a83b, dst obj: 3, dst ofs: 0xf56f
   6a83f:	e8 9d 63 00 00       	call   sprintf_
   6a844:	83 c4 10             	add    esp,0x10
   6a847:	ba b7 02 00 00       	mov    edx,0x2b7
   6a84c:	89 f8                	mov    eax,edi
   6a84e:	e8 dd d7 fc ff       	call   _error_report
   6a853:	e9 2a ff ff ff       	jmp    play_wav_branch_4
play_wav_branch_11:
   6a858:	ba 83 f5 00 00       	mov    edx,@obj3:convutil_cpp_variable_68                           ; fixup: num: 18256, src obj: 1, src ofs: 0x6a859, dst obj: 3, dst ofs: 0xf583
   6a85d:	8b 84 24 4c 01 00 00 	mov    eax,DWORD PTR [esp+0x14c]
   6a864:	e8 c7 bb 00 00       	call   strcmp_
   6a869:	85 c0                	test   eax,eax
   6a86b:	75 08                	jne    play_wav_branch_12
   6a86d:	c6 84 24 54 01 00 00 01 	mov    BYTE PTR [esp+0x154],0x1
play_wav_branch_12:
   6a875:	83 f9 ff             	cmp    ecx,0xffffffff
   6a878:	0f 8e a5 01 00 00    	jle    play_wav_branch_24
   6a87e:	8d 34 8d 00 00 00 00 	lea    esi,[ecx*4+0x0]
   6a885:	29 ce                	sub    esi,ecx
   6a887:	8d 34 b5 00 00 00 00 	lea    esi,[esi*4+0x0]
   6a88e:	a1 88 97 02 00       	mov    eax,ds:@obj3:fh_Dialog                                       ; fixup: num: 18255, src obj: 1, src ofs: 0x6a88f, dst obj: 3, dst ofs: 0x29788
   6a893:	31 db                	xor    ebx,ebx
   6a895:	8b 96 90 97 02 00    	mov    edx,DWORD PTR [esi+@obj3:index_table_variable_1]             ; fixup: num: 18254, src obj: 1, src ofs: 0x6a897, dst obj: 3, dst ofs: 0x29790
   6a89b:	b9 84 f5 00 00       	mov    ecx,@obj3:convutil_cpp_variable_69                           ; fixup: num: 18253, src obj: 1, src ofs: 0x6a89c, dst obj: 3, dst ofs: 0xf584
   6a8a0:	e8 5b 40 fa ff       	call   XFILE_seek
   6a8a5:	68 c4 02 00 00       	push   0x2c4
   6a8aa:	ba dc 61 02 00       	mov    edx,@obj3:_showtext                                          ; fixup: num: 18369, src obj: 1, src ofs: 0x6a8ab, dst obj: 3, dst ofs: 0x261dc
   6a8af:	a1 88 97 02 00       	mov    eax,ds:@obj3:fh_Dialog                                       ; fixup: num: 18368, src obj: 1, src ofs: 0x6a8b0, dst obj: 3, dst ofs: 0x29788
   6a8b4:	8b 9e 94 97 02 00    	mov    ebx,DWORD PTR [esi+@obj3:index_table_variable_2]             ; fixup: num: 18367, src obj: 1, src ofs: 0x6a8b6, dst obj: 3, dst ofs: 0x29794
   6a8ba:	e8 91 3e fa ff       	call   XFILE_read_chunk2
   6a8bf:	8b 86 94 97 02 00    	mov    eax,DWORD PTR [esi+@obj3:index_table_variable_2]             ; fixup: num: 18366, src obj: 1, src ofs: 0x6a8c1, dst obj: 3, dst ofs: 0x29794
   6a8c5:	30 ff                	xor    bh,bh
   6a8c7:	bf dc 61 02 00       	mov    edi,@obj3:_showtext                                          ; fixup: num: 18365, src obj: 1, src ofs: 0x6a8c8, dst obj: 3, dst ofs: 0x261dc
   6a8cc:	88 b8 dc 61 02 00    	mov    BYTE PTR [eax+@obj3:_showtext],bh                            ; fixup: num: 18364, src obj: 1, src ofs: 0x6a8ce, dst obj: 3, dst ofs: 0x261dc
   6a8d2:	29 c9                	sub    ecx,ecx
   6a8d4:	49                   	dec    ecx
   6a8d5:	31 c0                	xor    eax,eax
   6a8d7:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
   6a8d9:	f7 d1                	not    ecx
   6a8db:	49                   	dec    ecx
   6a8dc:	81 f9 00 04 00 00    	cmp    ecx,0x400
   6a8e2:	72 13                	jb     play_wav_branch_13
   6a8e4:	bb 91 f5 00 00       	mov    ebx,@obj3:convutil_cpp_variable_70                           ; fixup: num: 18363, src obj: 1, src ofs: 0x6a8e5, dst obj: 3, dst ofs: 0xf591
   6a8e9:	ba c9 02 00 00       	mov    edx,0x2c9
   6a8ee:	31 c0                	xor    eax,eax
   6a8f0:	e8 3b d7 fc ff       	call   _error_report
   6a8f5:	eb 1b                	jmp    play_wav_branch_14
play_wav_branch_13:
   6a8f7:	bf dc 61 02 00       	mov    edi,@obj3:_showtext                                          ; fixup: num: 18362, src obj: 1, src ofs: 0x6a8f8, dst obj: 3, dst ofs: 0x261dc
   6a8fc:	29 c9                	sub    ecx,ecx
   6a8fe:	49                   	dec    ecx
   6a8ff:	31 c0                	xor    eax,eax
   6a901:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
   6a903:	f7 d1                	not    ecx
   6a905:	49                   	dec    ecx
   6a906:	b8 dc 61 02 00       	mov    eax,@obj3:_showtext                                          ; fixup: num: 18268, src obj: 1, src ofs: 0x6a907, dst obj: 3, dst ofs: 0x261dc
   6a90b:	89 ca                	mov    edx,ecx
   6a90d:	e8 6e 86 fc ff       	call   decrypt
play_wav_branch_14:
   6a912:	31 c0                	xor    eax,eax
   6a914:	a0 58 7e 01 00       	mov    al,ds:@obj3:text_dialog                                      ; fixup: num: 18267, src obj: 1, src ofs: 0x6a915, dst obj: 3, dst ofs: 0x17e58
   6a919:	85 c0                	test   eax,eax
   6a91b:	0f 8e f8 00 00 00    	jle    play_wav_branch_23
   6a921:	b8 50 00 00 00       	mov    eax,0x50
   6a926:	e8 ed 75 00 00       	call   W?$nwn(ui)pnv
   6a92b:	85 c0                	test   eax,eax
   6a92d:	74 23                	je     play_wav_branch_15
   6a92f:	68 3c 01 00 00       	push   0x13c
   6a934:	6a ce                	push   0xffffffce
   6a936:	6a 0c                	push   0xc
   6a938:	b9 9f f5 00 00       	mov    ecx,@obj3:convutil_cpp_variable_71                           ; fixup: num: 18266, src obj: 1, src ofs: 0x6a939, dst obj: 3, dst ofs: 0xf59f
   6a93d:	68 b2 00 00 00       	push   0xb2
   6a942:	ba dc 61 02 00       	mov    edx,@obj3:_showtext                                          ; fixup: num: 18265, src obj: 1, src ofs: 0x6a943, dst obj: 3, dst ofs: 0x261dc
   6a947:	8b 1d c4 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:textfont                              ; fixup: num: 18264, src obj: 1, src ofs: 0x6a949, dst obj: 3, dst ofs: 0x25bc4
   6a94d:	e8 ae f2 fd ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
play_wav_branch_15:
   6a952:	8b 70 4c             	mov    esi,DWORD PTR [eax+0x4c]
   6a955:	a3 d8 61 02 00       	mov    ds:@obj3:_text_bitmap,eax                                    ; fixup: num: 18263, src obj: 1, src ofs: 0x6a956, dst obj: 3, dst ofs: 0x261d8
   6a95a:	83 fe 01             	cmp    esi,0x1
   6a95d:	75 15                	jne    play_wav_branch_16
   6a95f:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 18262, src obj: 1, src ofs: 0x6a960, dst obj: 3, dst ofs: 0x25a88
   6a964:	8b 15 68 97 02 00    	mov    edx,DWORD PTR ds:@obj3:textbox1                              ; fixup: num: 18261, src obj: 1, src ofs: 0x6a966, dst obj: 3, dst ofs: 0x29768
   6a96a:	e8 c1 17 fe ff       	call   insert_bitmap
   6a96f:	e9 b7 00 00 00       	jmp    play_wav_branch_25
play_wav_branch_16:
   6a974:	83 fe 02             	cmp    esi,0x2
   6a977:	7f 15                	jg     play_wav_branch_17
   6a979:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 18260, src obj: 1, src ofs: 0x6a97a, dst obj: 3, dst ofs: 0x25a88
   6a97e:	8b 15 6c 97 02 00    	mov    edx,DWORD PTR ds:@obj3:textbox2                              ; fixup: num: 18259, src obj: 1, src ofs: 0x6a980, dst obj: 3, dst ofs: 0x2976c
   6a984:	e8 a7 17 fe ff       	call   insert_bitmap
   6a989:	e9 9d 00 00 00       	jmp    play_wav_branch_25
play_wav_branch_17:
   6a98e:	83 fe 03             	cmp    esi,0x3
   6a991:	7f 15                	jg     play_wav_branch_18
   6a993:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 18258, src obj: 1, src ofs: 0x6a994, dst obj: 3, dst ofs: 0x25a88
   6a998:	8b 15 70 97 02 00    	mov    edx,DWORD PTR ds:@obj3:textbox3                              ; fixup: num: 18257, src obj: 1, src ofs: 0x6a99a, dst obj: 3, dst ofs: 0x29770
   6a99e:	e8 8d 17 fe ff       	call   insert_bitmap
   6a9a3:	e9 83 00 00 00       	jmp    play_wav_branch_25
play_wav_branch_18:
   6a9a8:	83 fe 05             	cmp    esi,0x5
   6a9ab:	7f 15                	jg     play_wav_branch_19
   6a9ad:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 18281, src obj: 1, src ofs: 0x6a9ae, dst obj: 3, dst ofs: 0x25a88
   6a9b2:	8b 15 74 97 02 00    	mov    edx,DWORD PTR ds:@obj3:textbox4                              ; fixup: num: 18280, src obj: 1, src ofs: 0x6a9b4, dst obj: 3, dst ofs: 0x29774
   6a9b8:	e8 73 17 fe ff       	call   insert_bitmap
   6a9bd:	e9 69 00 00 00       	jmp    play_wav_branch_25
play_wav_branch_19:
   6a9c2:	83 fe 06             	cmp    esi,0x6
   6a9c5:	7f 12                	jg     play_wav_branch_20
   6a9c7:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 18279, src obj: 1, src ofs: 0x6a9c8, dst obj: 3, dst ofs: 0x25a88
   6a9cc:	8b 15 78 97 02 00    	mov    edx,DWORD PTR ds:@obj3:textbox5                              ; fixup: num: 18278, src obj: 1, src ofs: 0x6a9ce, dst obj: 3, dst ofs: 0x29778
   6a9d2:	e8 59 17 fe ff       	call   insert_bitmap
   6a9d7:	eb 52                	jmp    play_wav_branch_25
play_wav_branch_20:
   6a9d9:	83 fe 08             	cmp    esi,0x8
   6a9dc:	7f 12                	jg     play_wav_branch_21
   6a9de:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 18277, src obj: 1, src ofs: 0x6a9df, dst obj: 3, dst ofs: 0x25a88
   6a9e3:	8b 15 7c 97 02 00    	mov    edx,DWORD PTR ds:@obj3:textbox6                              ; fixup: num: 18276, src obj: 1, src ofs: 0x6a9e5, dst obj: 3, dst ofs: 0x2977c
   6a9e9:	e8 42 17 fe ff       	call   insert_bitmap
   6a9ee:	eb 3b                	jmp    play_wav_branch_25
play_wav_branch_21:
   6a9f0:	83 fe 0a             	cmp    esi,0xa
   6a9f3:	7f 12                	jg     play_wav_branch_22
   6a9f5:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 18275, src obj: 1, src ofs: 0x6a9f6, dst obj: 3, dst ofs: 0x25a88
   6a9fa:	8b 15 80 97 02 00    	mov    edx,DWORD PTR ds:@obj3:textbox7                              ; fixup: num: 18274, src obj: 1, src ofs: 0x6a9fc, dst obj: 3, dst ofs: 0x29780
   6aa00:	e8 2b 17 fe ff       	call   insert_bitmap
   6aa05:	eb 24                	jmp    play_wav_branch_25
play_wav_branch_22:
   6aa07:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 18273, src obj: 1, src ofs: 0x6aa08, dst obj: 3, dst ofs: 0x25a88
   6aa0c:	8b 15 84 97 02 00    	mov    edx,DWORD PTR ds:@obj3:textbox8                              ; fixup: num: 18272, src obj: 1, src ofs: 0x6aa0e, dst obj: 3, dst ofs: 0x29784
   6aa12:	e8 19 17 fe ff       	call   insert_bitmap
   6aa17:	eb 12                	jmp    play_wav_branch_25
play_wav_branch_23:
   6aa19:	31 c9                	xor    ecx,ecx
   6aa1b:	89 0d d8 61 02 00    	mov    DWORD PTR ds:@obj3:_text_bitmap,ecx                          ; fixup: num: 18271, src obj: 1, src ofs: 0x6aa1d, dst obj: 3, dst ofs: 0x261d8
   6aa21:	eb 08                	jmp    play_wav_branch_25
play_wav_branch_24:
   6aa23:	31 db                	xor    ebx,ebx
   6aa25:	89 1d d8 61 02 00    	mov    DWORD PTR ds:@obj3:_text_bitmap,ebx                          ; fixup: num: 18270, src obj: 1, src ofs: 0x6aa27, dst obj: 3, dst ofs: 0x261d8
play_wav_branch_25:
   6aa2b:	31 c0                	xor    eax,eax
   6aa2d:	8a 84 24 54 01 00 00 	mov    al,BYTE PTR [esp+0x154]
   6aa34:	85 c0                	test   eax,eax
   6aa36:	0f 85 84 01 00 00    	jne    play_wav_branch_43
   6aa3c:	ba a6 f5 00 00       	mov    edx,@obj3:convutil_cpp_variable_72                           ; fixup: num: 18269, src obj: 1, src ofs: 0x6aa3d, dst obj: 3, dst ofs: 0xf5a6
   6aa41:	8b 84 24 4c 01 00 00 	mov    eax,DWORD PTR [esp+0x14c]
   6aa48:	e8 e3 b9 00 00       	call   strcmp_
   6aa4d:	85 c0                	test   eax,eax
   6aa4f:	75 10                	jne    play_wav_branch_26
   6aa51:	b8 01 00 00 00       	mov    eax,0x1
   6aa56:	31 ff                	xor    edi,edi
   6aa58:	89 84 24 44 01 00 00 	mov    DWORD PTR [esp+0x144],eax
   6aa5f:	eb 0e                	jmp    play_wav_branch_27
play_wav_branch_26:
   6aa61:	31 ed                	xor    ebp,ebp
   6aa63:	bf 01 00 00 00       	mov    edi,0x1
   6aa68:	89 ac 24 44 01 00 00 	mov    DWORD PTR [esp+0x144],ebp
play_wav_branch_27:
   6aa6f:	83 bc 24 44 01 00 00 00 	cmp    DWORD PTR [esp+0x144],0x0
   6aa77:	75 12                	jne    play_wav_branch_28
   6aa79:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 18289, src obj: 1, src ofs: 0x6aa7a, dst obj: 3, dst ofs: 0x25a88
   6aa7e:	8b 15 60 97 02 00    	mov    edx,DWORD PTR ds:@obj3:right_head                            ; fixup: num: 18288, src obj: 1, src ofs: 0x6aa80, dst obj: 3, dst ofs: 0x29760
   6aa84:	e8 67 1c fe ff       	call   remove_bitmap
   6aa89:	eb 10                	jmp    play_wav_branch_29
play_wav_branch_28:
   6aa8b:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 18287, src obj: 1, src ofs: 0x6aa8c, dst obj: 3, dst ofs: 0x25a88
   6aa90:	8b 15 5c 97 02 00    	mov    edx,DWORD PTR ds:@obj3:left_head                             ; fixup: num: 18286, src obj: 1, src ofs: 0x6aa92, dst obj: 3, dst ofs: 0x2975c
   6aa96:	e8 55 1c fe ff       	call   remove_bitmap
play_wav_branch_29:
   6aa9b:	bb c0 96 02 00       	mov    ebx,@obj3:loaded_heads                                       ; fixup: num: 18285, src obj: 1, src ofs: 0x6aa9c, dst obj: 3, dst ofs: 0x296c0
   6aaa0:	31 c9                	xor    ecx,ecx
play_wav_branch_30:
   6aaa2:	8d 94 24 18 01 00 00 	lea    edx,[esp+0x118]
   6aaa9:	89 d8                	mov    eax,ebx
   6aaab:	e8 80 b9 00 00       	call   strcmp_
   6aab0:	85 c0                	test   eax,eax
   6aab2:	75 2e                	jne    play_wav_branch_33
play_wav_branch_31:
   6aab4:	83 f9 05             	cmp    ecx,0x5
   6aab7:	0f 85 03 01 00 00    	jne    play_wav_branch_43
   6aabd:	8b 1d a8 5a 02 00    	mov    ebx,DWORD PTR ds:@obj3:head_list                             ; fixup: num: 18284, src obj: 1, src ofs: 0x6aabf, dst obj: 3, dst ofs: 0x25aa8
   6aac3:	85 db                	test   ebx,ebx
   6aac5:	0f 84 c6 00 00 00    	je     play_wav_branch_42
play_wav_branch_32:
   6aacb:	8d 94 24 18 01 00 00 	lea    edx,[esp+0x118]
   6aad2:	8b 03                	mov    eax,DWORD PTR [ebx]
   6aad4:	e8 57 b9 00 00       	call   strcmp_
   6aad9:	85 c0                	test   eax,eax
   6aadb:	74 1b                	je     play_wav_branch_35
   6aadd:	e9 a4 00 00 00       	jmp    play_wav_branch_41
play_wav_branch_33:
   6aae2:	41                   	inc    ecx
   6aae3:	83 c3 1f             	add    ebx,0x1f
   6aae6:	83 f9 05             	cmp    ecx,0x5
   6aae9:	7c b7                	jl     play_wav_branch_30
   6aaeb:	eb c7                	jmp    play_wav_branch_31
play_wav_branch_34:
   6aaed:	46                   	inc    esi
   6aaee:	83 c1 1f             	add    ecx,0x1f
   6aaf1:	83 fe 05             	cmp    esi,0x5
   6aaf4:	7c 0e                	jl     play_wav_branch_36
   6aaf6:	eb 19                	jmp    play_wav_branch_37
play_wav_branch_35:
   6aaf8:	b9 c0 96 02 00       	mov    ecx,@obj3:loaded_heads                                       ; fixup: num: 18283, src obj: 1, src ofs: 0x6aaf9, dst obj: 3, dst ofs: 0x296c0
   6aafd:	bd a9 f5 00 00       	mov    ebp,@obj3:convutil_cpp_variable_73                           ; fixup: num: 18282, src obj: 1, src ofs: 0x6aafe, dst obj: 3, dst ofs: 0xf5a9
   6ab02:	31 f6                	xor    esi,esi
play_wav_branch_36:
   6ab04:	89 ea                	mov    edx,ebp
   6ab06:	89 c8                	mov    eax,ecx
   6ab08:	e8 23 b9 00 00       	call   strcmp_
   6ab0d:	85 c0                	test   eax,eax
   6ab0f:	75 dc                	jne    play_wav_branch_34
play_wav_branch_37:
   6ab11:	89 f8                	mov    eax,edi
   6ab13:	c1 e0 05             	shl    eax,0x5
   6ab16:	29 f8                	sub    eax,edi
   6ab18:	bf c0 96 02 00       	mov    edi,@obj3:loaded_heads                                       ; fixup: num: 18299, src obj: 1, src ofs: 0x6ab19, dst obj: 3, dst ofs: 0x296c0
   6ab1d:	8d b4 24 18 01 00 00 	lea    esi,[esp+0x118]
   6ab24:	01 c7                	add    edi,eax
   6ab26:	57                   	push   edi
play_wav_branch_38:
   6ab27:	8a 06                	mov    al,BYTE PTR [esi]
   6ab29:	88 07                	mov    BYTE PTR [edi],al
   6ab2b:	3c 00                	cmp    al,0x0
   6ab2d:	74 10                	je     play_wav_branch_39
   6ab2f:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   6ab32:	83 c6 02             	add    esi,0x2
   6ab35:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   6ab38:	83 c7 02             	add    edi,0x2
   6ab3b:	3c 00                	cmp    al,0x0
   6ab3d:	75 e8                	jne    play_wav_branch_38
play_wav_branch_39:
   6ab3f:	5f                   	pop    edi
   6ab40:	8b 4b 04             	mov    ecx,DWORD PTR [ebx+0x4]
   6ab43:	51                   	push   ecx
   6ab44:	68 aa f5 00 00       	push   @obj3:convutil_cpp_variable_74                               ; fixup: num: 18298, src obj: 1, src ofs: 0x6ab45, dst obj: 3, dst ofs: 0xf5aa
   6ab49:	8b 35 34 24 03 00    	mov    esi,DWORD PTR ds:@obj3:temp_filename                         ; fixup: num: 18297, src obj: 1, src ofs: 0x6ab4b, dst obj: 3, dst ofs: 0x32434
   6ab4f:	56                   	push   esi
   6ab50:	e8 8c 60 00 00       	call   sprintf_
   6ab55:	83 c4 0c             	add    esp,0xc
   6ab58:	83 bc 24 44 01 00 00 00 	cmp    DWORD PTR [esp+0x144],0x0
   6ab60:	75 12                	jne    play_wav_branch_40
   6ab62:	8b 15 34 24 03 00    	mov    edx,DWORD PTR ds:@obj3:temp_filename                         ; fixup: num: 18296, src obj: 1, src ofs: 0x6ab64, dst obj: 3, dst ofs: 0x32434
   6ab68:	a1 5c 97 02 00       	mov    eax,ds:@obj3:left_head                                       ; fixup: num: 18295, src obj: 1, src ofs: 0x6ab69, dst obj: 3, dst ofs: 0x2975c
   6ab6d:	e8 2e 0c fd ff       	call   swap_bm
   6ab72:	eb 1d                	jmp    play_wav_branch_42
play_wav_branch_40:
   6ab74:	8b 15 34 24 03 00    	mov    edx,DWORD PTR ds:@obj3:temp_filename                         ; fixup: num: 18294, src obj: 1, src ofs: 0x6ab76, dst obj: 3, dst ofs: 0x32434
   6ab7a:	a1 60 97 02 00       	mov    eax,ds:@obj3:right_head                                      ; fixup: num: 18293, src obj: 1, src ofs: 0x6ab7b, dst obj: 3, dst ofs: 0x29760
   6ab7f:	e8 1c 0c fd ff       	call   swap_bm
   6ab84:	eb 0b                	jmp    play_wav_branch_42
play_wav_branch_41:
   6ab86:	8b 5b 08             	mov    ebx,DWORD PTR [ebx+0x8]
   6ab89:	85 db                	test   ebx,ebx
   6ab8b:	0f 85 3a ff ff ff    	jne    play_wav_branch_32
play_wav_branch_42:
   6ab91:	85 db                	test   ebx,ebx
   6ab93:	75 2b                	jne    play_wav_branch_43
   6ab95:	8d 84 24 18 01 00 00 	lea    eax,[esp+0x118]
   6ab9c:	50                   	push   eax
   6ab9d:	68 b0 f5 00 00       	push   @obj3:convutil_cpp_variable_75                               ; fixup: num: 18292, src obj: 1, src ofs: 0x6ab9e, dst obj: 3, dst ofs: 0xf5b0
   6aba2:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 18291, src obj: 1, src ofs: 0x6aba3, dst obj: 3, dst ofs: 0x237fc
   6aba7:	bb fc 37 02 00       	mov    ebx,@obj3:log_buffer                                         ; fixup: num: 18290, src obj: 1, src ofs: 0x6aba8, dst obj: 3, dst ofs: 0x237fc
   6abac:	e8 30 60 00 00       	call   sprintf_
   6abb1:	83 c4 0c             	add    esp,0xc
   6abb4:	ba 40 03 00 00       	mov    edx,0x340
   6abb9:	31 c0                	xor    eax,eax
   6abbb:	e8 70 d4 fc ff       	call   _error_report
play_wav_branch_43:
   6abc0:	bf 88 5a 02 00       	mov    edi,@obj3:the_list                                           ; fixup: num: 18308, src obj: 1, src ofs: 0x6abc1, dst obj: 3, dst ofs: 0x25a88
   6abc5:	31 c9                	xor    ecx,ecx
play_wav_branch_44:
   6abc7:	66 8b 15 08 59 02 00 	mov    dx,WORD PTR ds:@obj3:raw_key                                 ; fixup: num: 18307, src obj: 1, src ofs: 0x6abca, dst obj: 3, dst ofs: 0x25908
   6abce:	66 39 d1             	cmp    cx,dx
   6abd1:	75 15                	jne    play_wav_branch_45
   6abd3:	a0 74 59 02 00       	mov    al,ds:@obj3:left_button                                      ; fixup: num: 18306, src obj: 1, src ofs: 0x6abd4, dst obj: 3, dst ofs: 0x25974
   6abd8:	38 c2                	cmp    dl,al
   6abda:	75 0c                	jne    play_wav_branch_45
   6abdc:	3a 05 72 59 02 00    	cmp    al,BYTE PTR ds:@obj3:right_button                            ; fixup: num: 18305, src obj: 1, src ofs: 0x6abde, dst obj: 3, dst ofs: 0x25972
   6abe2:	0f 84 73 00 00 00    	je     play_wav_branch_51
play_wav_branch_45:
   6abe8:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 18304, src obj: 1, src ofs: 0x6abe9, dst obj: 3, dst ofs: 0x1a1d4
   6abed:	e8 ae 0d fa ff       	call   update_mod_9
   6abf2:	8b 1d 88 5a 02 00    	mov    ebx,DWORD PTR ds:@obj3:the_list                              ; fixup: num: 18303, src obj: 1, src ofs: 0x6abf4, dst obj: 3, dst ofs: 0x25a88
   6abf8:	eb 4e                	jmp    play_wav_branch_50
play_wav_branch_46:
   6abfa:	89 d8                	mov    eax,ebx
   6abfc:	e8 4f 2b fd ff       	call   update_mod_76_2
   6ac01:	84 c0                	test   al,al
   6ac03:	75 3d                	jne    play_wav_branch_49
   6ac05:	89 da                	mov    edx,ebx
   6ac07:	89 f8                	mov    eax,edi
   6ac09:	e8 e2 1a fe ff       	call   remove_bitmap
   6ac0e:	85 db                	test   ebx,ebx
   6ac10:	74 30                	je     play_wav_branch_49
   6ac12:	89 ca                	mov    edx,ecx
   6ac14:	89 d8                	mov    eax,ebx
   6ac16:	e8 85 07 fd ff       	call   W?$dt:BTMAP$n()_
   6ac1b:	e8 58 74 00 00       	call   W?$dln(pnv)v
   6ac20:	eb 20                	jmp    play_wav_branch_49
play_wav_branch_47:
   6ac22:	89 d8                	mov    eax,ebx
   6ac24:	e8 b7 1e fd ff       	call   update_mod_76
   6ac29:	eb 17                	jmp    play_wav_branch_49
play_wav_branch_48:
   6ac2b:	8b 43 48             	mov    eax,DWORD PTR [ebx+0x48]
   6ac2e:	a3 d4 61 02 00       	mov    ds:@obj3:temp_next,eax                                       ; fixup: num: 18302, src obj: 1, src ofs: 0x6ac2f, dst obj: 3, dst ofs: 0x261d4
   6ac33:	8b 43 38             	mov    eax,DWORD PTR [ebx+0x38]
   6ac36:	83 f8 01             	cmp    eax,0x1
   6ac39:	72 07                	jb     play_wav_branch_49
   6ac3b:	76 e5                	jbe    play_wav_branch_47
   6ac3d:	83 f8 04             	cmp    eax,0x4
   6ac40:	74 b8                	je     play_wav_branch_46
play_wav_branch_49:
   6ac42:	8b 1d d4 61 02 00    	mov    ebx,DWORD PTR ds:@obj3:temp_next                             ; fixup: num: 18301, src obj: 1, src ofs: 0x6ac44, dst obj: 3, dst ofs: 0x261d4
play_wav_branch_50:
   6ac48:	85 db                	test   ebx,ebx
   6ac4a:	75 df                	jne    play_wav_branch_48
   6ac4c:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 18300, src obj: 1, src ofs: 0x6ac4d, dst obj: 3, dst ofs: 0x25a84
   6ac51:	e8 4a 30 fe ff       	call   update_mod_84
   6ac56:	e9 6c ff ff ff       	jmp    play_wav_branch_44
play_wav_branch_51:
   6ac5b:	31 c0                	xor    eax,eax
   6ac5d:	8a 84 24 54 01 00 00 	mov    al,BYTE PTR [esp+0x154]
   6ac64:	85 c0                	test   eax,eax
   6ac66:	75 27                	jne    play_wav_branch_54
   6ac68:	83 bc 24 44 01 00 00 01 	cmp    DWORD PTR [esp+0x144],0x1
   6ac70:	75 0d                	jne    play_wav_branch_52
   6ac72:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 18213, src obj: 1, src ofs: 0x6ac73, dst obj: 3, dst ofs: 0x25a88
   6ac77:	8b 15 60 97 02 00    	mov    edx,DWORD PTR ds:@obj3:right_head                            ; fixup: num: 18212, src obj: 1, src ofs: 0x6ac79, dst obj: 3, dst ofs: 0x29760
   6ac7d:	eb 0b                	jmp    play_wav_branch_53
play_wav_branch_52:
   6ac7f:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 18211, src obj: 1, src ofs: 0x6ac80, dst obj: 3, dst ofs: 0x25a88
   6ac84:	8b 15 5c 97 02 00    	mov    edx,DWORD PTR ds:@obj3:left_head                             ; fixup: num: 18210, src obj: 1, src ofs: 0x6ac86, dst obj: 3, dst ofs: 0x2975c
play_wav_branch_53:
   6ac8a:	e8 a1 14 fe ff       	call   insert_bitmap
play_wav_branch_54:
   6ac8f:	83 bc 24 48 01 00 00 00 	cmp    DWORD PTR [esp+0x148],0x0
   6ac97:	0f 8e 9d 00 00 00    	jle    play_wav_branch_61
   6ac9d:	8d 84 24 90 00 00 00 	lea    eax,[esp+0x90]
   6aca4:	e8 07 eb f9 ff       	call   play
   6aca9:	66 83 3d 08 59 02 00 00 	cmp    WORD PTR ds:@obj3:raw_key,0x0                             ; fixup: num: 18209, src obj: 1, src ofs: 0x6acac, dst obj: 3, dst ofs: 0x25908
   6acb1:	74 11                	je     play_wav_branch_56
   6acb3:	31 c0                	xor    eax,eax
play_wav_branch_55:
   6acb5:	66 a3 08 59 02 00    	mov    ds:@obj3:raw_key,ax                                          ; fixup: num: 18208, src obj: 1, src ofs: 0x6acb7, dst obj: 3, dst ofs: 0x25908
   6acbb:	66 3b 05 08 59 02 00 	cmp    ax,WORD PTR ds:@obj3:raw_key                                 ; fixup: num: 18207, src obj: 1, src ofs: 0x6acbe, dst obj: 3, dst ofs: 0x25908
   6acc2:	75 f1                	jne    play_wav_branch_55
play_wav_branch_56:
   6acc4:	31 f6                	xor    esi,esi
   6acc6:	66 89 35 08 59 02 00 	mov    WORD PTR ds:@obj3:raw_key,si                                 ; fixup: num: 18206, src obj: 1, src ofs: 0x6acc9, dst obj: 3, dst ofs: 0x25908
   6accd:	bb 84 5a 02 00       	mov    ebx,@obj3:the_screen                                         ; fixup: num: 18205, src obj: 1, src ofs: 0x6acce, dst obj: 3, dst ofs: 0x25a84
   6acd2:	30 d2                	xor    dl,dl
play_wav_branch_57:
   6acd4:	8d 84 24 90 00 00 00 	lea    eax,[esp+0x90]
   6acdb:	e8 00 ec f9 ff       	call   playing
   6ace0:	84 c0                	test   al,al
   6ace2:	74 27                	je     play_wav_branch_58
   6ace4:	0f bf 05 08 59 02 00 	movsx  eax,WORD PTR ds:@obj3:raw_key                                ; fixup: num: 18204, src obj: 1, src ofs: 0x6ace7, dst obj: 3, dst ofs: 0x25908
   6aceb:	83 f8 01             	cmp    eax,0x1
   6acee:	74 1b                	je     play_wav_branch_58
   6acf0:	8a 35 74 59 02 00    	mov    dh,BYTE PTR ds:@obj3:left_button                             ; fixup: num: 18310, src obj: 1, src ofs: 0x6acf2, dst obj: 3, dst ofs: 0x25974
   6acf6:	38 f2                	cmp    dl,dh
   6acf8:	75 11                	jne    play_wav_branch_58
   6acfa:	3a 35 72 59 02 00    	cmp    dh,BYTE PTR ds:@obj3:right_button                            ; fixup: num: 18309, src obj: 1, src ofs: 0x6acfc, dst obj: 3, dst ofs: 0x25972
   6ad00:	75 09                	jne    play_wav_branch_58
   6ad02:	89 d8                	mov    eax,ebx
   6ad04:	e8 97 2f fe ff       	call   update_mod_84
   6ad09:	eb c9                	jmp    play_wav_branch_57
play_wav_branch_58:
   6ad0b:	80 3d 0d 59 02 00 00 	cmp    BYTE PTR ds:@obj3:ScanCode_variable_1,0x0                    ; fixup: num: 18226, src obj: 1, src ofs: 0x6ad0d, dst obj: 3, dst ofs: 0x2590d
   6ad12:	75 12                	jne    play_wav_branch_59
   6ad14:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 18225, src obj: 1, src ofs: 0x6ad16, dst obj: 3, dst ofs: 0x25974
   6ad1b:	75 09                	jne    play_wav_branch_59
   6ad1d:	80 3d 72 59 02 00 00 	cmp    BYTE PTR ds:@obj3:right_button,0x0                           ; fixup: num: 18224, src obj: 1, src ofs: 0x6ad1f, dst obj: 3, dst ofs: 0x25972
   6ad24:	74 08                	je     play_wav_branch_60
play_wav_branch_59:
   6ad26:	c6 84 24 50 01 00 00 01 	mov    BYTE PTR [esp+0x150],0x1
play_wav_branch_60:
   6ad2e:	8d 84 24 90 00 00 00 	lea    eax,[esp+0x90]
   6ad35:	e8 06 eb f9 ff       	call   stop
play_wav_branch_61:
   6ad3a:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 18223, src obj: 1, src ofs: 0x6ad3b, dst obj: 3, dst ofs: 0x25a84
   6ad3f:	e8 5c 2f fe ff       	call   update_mod_84
   6ad44:	31 c0                	xor    eax,eax
   6ad46:	a0 58 7e 01 00       	mov    al,ds:@obj3:text_dialog                                      ; fixup: num: 18222, src obj: 1, src ofs: 0x6ad47, dst obj: 3, dst ofs: 0x17e58
   6ad4b:	85 c0                	test   eax,eax
   6ad4d:	0f 8e f1 00 00 00    	jle    play_wav_branch_71
   6ad53:	31 c0                	xor    eax,eax
play_wav_branch_62:
   6ad55:	66 8b 3d 08 59 02 00 	mov    di,WORD PTR ds:@obj3:raw_key                                 ; fixup: num: 18221, src obj: 1, src ofs: 0x6ad58, dst obj: 3, dst ofs: 0x25908
   6ad5c:	66 39 f8             	cmp    ax,di
   6ad5f:	74 08                	je     play_wav_branch_63
   6ad61:	66 a3 08 59 02 00    	mov    ds:@obj3:raw_key,ax                                          ; fixup: num: 18220, src obj: 1, src ofs: 0x6ad63, dst obj: 3, dst ofs: 0x25908
   6ad67:	eb ec                	jmp    play_wav_branch_62
play_wav_branch_63:
   6ad69:	31 f8                	xor    eax,edi
   6ad6b:	66 a3 08 59 02 00    	mov    ds:@obj3:raw_key,ax                                          ; fixup: num: 18219, src obj: 1, src ofs: 0x6ad6d, dst obj: 3, dst ofs: 0x25908
   6ad71:	8a b4 24 50 01 00 00 	mov    dh,BYTE PTR [esp+0x150]
   6ad78:	84 f6                	test   dh,dh
   6ad7a:	0f 85 83 00 00 00    	jne    play_wav_branch_68
   6ad80:	31 c0                	xor    eax,eax
   6ad82:	a0 58 7e 01 00       	mov    al,ds:@obj3:text_dialog                                      ; fixup: num: 18218, src obj: 1, src ofs: 0x6ad83, dst obj: 3, dst ofs: 0x17e58
   6ad87:	83 f8 02             	cmp    eax,0x2
   6ad8a:	0f 85 73 00 00 00    	jne    play_wav_branch_68
   6ad90:	bb 84 5a 02 00       	mov    ebx,@obj3:the_screen                                         ; fixup: num: 18217, src obj: 1, src ofs: 0x6ad91, dst obj: 3, dst ofs: 0x25a84
   6ad95:	b9 d4 a1 01 00       	mov    ecx,@obj3:music                                              ; fixup: num: 18216, src obj: 1, src ofs: 0x6ad96, dst obj: 3, dst ofs: 0x1a1d4
   6ad9a:	30 d2                	xor    dl,dl
play_wav_branch_64:
   6ad9c:	66 3b 15 08 59 02 00 	cmp    dx,WORD PTR ds:@obj3:raw_key                                 ; fixup: num: 18215, src obj: 1, src ofs: 0x6ad9f, dst obj: 3, dst ofs: 0x25908
   6ada3:	75 2b                	jne    play_wav_branch_65
   6ada5:	a0 74 59 02 00       	mov    al,ds:@obj3:left_button                                      ; fixup: num: 18214, src obj: 1, src ofs: 0x6ada6, dst obj: 3, dst ofs: 0x25974
   6adaa:	38 c2                	cmp    dl,al
   6adac:	75 22                	jne    play_wav_branch_65
   6adae:	3a 05 72 59 02 00    	cmp    al,BYTE PTR ds:@obj3:right_button                            ; fixup: num: 18239, src obj: 1, src ofs: 0x6adb0, dst obj: 3, dst ofs: 0x25972
   6adb4:	75 1a                	jne    play_wav_branch_65
   6adb6:	89 c8                	mov    eax,ecx
   6adb8:	e8 e3 0b fa ff       	call   update_mod_9
   6adbd:	e8 40 73 00 00       	call   clock_
   6adc2:	a3 44 7e 01 00       	mov    ds:@obj3:current_time,eax                                    ; fixup: num: 18238, src obj: 1, src ofs: 0x6adc3, dst obj: 3, dst ofs: 0x17e44
   6adc7:	89 d8                	mov    eax,ebx
   6adc9:	e8 d2 2e fe ff       	call   update_mod_84
   6adce:	eb cc                	jmp    play_wav_branch_64
play_wav_branch_65:
   6add0:	31 c0                	xor    eax,eax
play_wav_branch_66:
   6add2:	8a 15 74 59 02 00    	mov    dl,BYTE PTR ds:@obj3:left_button                             ; fixup: num: 18237, src obj: 1, src ofs: 0x6add4, dst obj: 3, dst ofs: 0x25974
   6add8:	38 d0                	cmp    al,dl
   6adda:	75 f6                	jne    play_wav_branch_66
   6addc:	66 8b 3d 08 59 02 00 	mov    di,WORD PTR ds:@obj3:raw_key                                 ; fixup: num: 18236, src obj: 1, src ofs: 0x6addf, dst obj: 3, dst ofs: 0x25908
   6ade3:	66 39 f8             	cmp    ax,di
   6ade6:	75 ea                	jne    play_wav_branch_66
   6ade8:	3a 15 72 59 02 00    	cmp    dl,BYTE PTR ds:@obj3:right_button                            ; fixup: num: 18235, src obj: 1, src ofs: 0x6adea, dst obj: 3, dst ofs: 0x25972
   6adee:	75 e2                	jne    play_wav_branch_66
   6adf0:	31 f8                	xor    eax,edi
play_wav_branch_67:
   6adf2:	66 3b 05 08 59 02 00 	cmp    ax,WORD PTR ds:@obj3:raw_key                                 ; fixup: num: 18234, src obj: 1, src ofs: 0x6adf5, dst obj: 3, dst ofs: 0x25908
   6adf9:	74 08                	je     play_wav_branch_68
   6adfb:	66 a3 08 59 02 00    	mov    ds:@obj3:raw_key,ax                                          ; fixup: num: 18233, src obj: 1, src ofs: 0x6adfd, dst obj: 3, dst ofs: 0x25908
   6ae01:	eb ef                	jmp    play_wav_branch_67
play_wav_branch_68:
   6ae03:	8b 15 d8 61 02 00    	mov    edx,DWORD PTR ds:@obj3:_text_bitmap                          ; fixup: num: 18232, src obj: 1, src ofs: 0x6ae05, dst obj: 3, dst ofs: 0x261d8
   6ae09:	85 d2                	test   edx,edx
   6ae0b:	74 18                	je     play_wav_branch_70
   6ae0d:	89 d0                	mov    eax,edx
   6ae0f:	74 0c                	je     play_wav_branch_69
   6ae11:	31 d2                	xor    edx,edx
   6ae13:	e8 08 f1 fd ff       	call   W?$dt:TEXTBM$n()_
   6ae18:	e8 5b 72 00 00       	call   W?$dln(pnv)v
play_wav_branch_69:
   6ae1d:	31 db                	xor    ebx,ebx
   6ae1f:	89 1d d8 61 02 00    	mov    DWORD PTR ds:@obj3:_text_bitmap,ebx                          ; fixup: num: 18231, src obj: 1, src ofs: 0x6ae21, dst obj: 3, dst ofs: 0x261d8
play_wav_branch_70:
   6ae25:	ba c7 f5 00 00       	mov    edx,@obj3:convutil_cpp_variable_76                           ; fixup: num: 18230, src obj: 1, src ofs: 0x6ae26, dst obj: 3, dst ofs: 0xf5c7
   6ae2a:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 18229, src obj: 1, src ofs: 0x6ae2b, dst obj: 3, dst ofs: 0x25a88
   6ae2f:	e8 bc 12 fe ff       	call   get_bitmap
   6ae34:	85 c0                	test   eax,eax
   6ae36:	74 0c                	je     play_wav_branch_71
   6ae38:	89 c2                	mov    edx,eax
   6ae3a:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 18228, src obj: 1, src ofs: 0x6ae3b, dst obj: 3, dst ofs: 0x25a88
   6ae3f:	e8 ac 18 fe ff       	call   remove_bitmap
play_wav_branch_71:
   6ae44:	80 bc 24 50 01 00 00 00 	cmp    BYTE PTR [esp+0x150],0x0
   6ae4c:	0f 84 9c 00 00 00    	je     play_wav_branch_79
   6ae52:	bf 88 5a 02 00       	mov    edi,@obj3:the_list                                           ; fixup: num: 18227, src obj: 1, src ofs: 0x6ae53, dst obj: 3, dst ofs: 0x25a88
   6ae57:	31 c9                	xor    ecx,ecx
play_wav_branch_72:
   6ae59:	66 8b 1d 08 59 02 00 	mov    bx,WORD PTR ds:@obj3:raw_key                                 ; fixup: num: 18247, src obj: 1, src ofs: 0x6ae5c, dst obj: 3, dst ofs: 0x25908
   6ae60:	66 39 d9             	cmp    cx,bx
   6ae63:	75 16                	jne    play_wav_branch_73
   6ae65:	8a 3d 74 59 02 00    	mov    bh,BYTE PTR ds:@obj3:left_button                             ; fixup: num: 18246, src obj: 1, src ofs: 0x6ae67, dst obj: 3, dst ofs: 0x25974
   6ae6b:	38 fb                	cmp    bl,bh
   6ae6d:	75 0c                	jne    play_wav_branch_73
   6ae6f:	3a 3d 72 59 02 00    	cmp    bh,BYTE PTR ds:@obj3:right_button                            ; fixup: num: 18245, src obj: 1, src ofs: 0x6ae71, dst obj: 3, dst ofs: 0x25972
   6ae75:	0f 84 73 00 00 00    	je     play_wav_branch_79
play_wav_branch_73:
   6ae7b:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 18244, src obj: 1, src ofs: 0x6ae7c, dst obj: 3, dst ofs: 0x1a1d4
   6ae80:	e8 1b 0b fa ff       	call   update_mod_9
   6ae85:	8b 1d 88 5a 02 00    	mov    ebx,DWORD PTR ds:@obj3:the_list                              ; fixup: num: 18243, src obj: 1, src ofs: 0x6ae87, dst obj: 3, dst ofs: 0x25a88
   6ae8b:	eb 4e                	jmp    play_wav_branch_78
play_wav_branch_74:
   6ae8d:	89 d8                	mov    eax,ebx
   6ae8f:	e8 bc 28 fd ff       	call   update_mod_76_2
   6ae94:	84 c0                	test   al,al
   6ae96:	75 3d                	jne    play_wav_branch_77
   6ae98:	89 da                	mov    edx,ebx
   6ae9a:	89 f8                	mov    eax,edi
   6ae9c:	e8 4f 18 fe ff       	call   remove_bitmap
   6aea1:	85 db                	test   ebx,ebx
   6aea3:	74 30                	je     play_wav_branch_77
   6aea5:	89 ca                	mov    edx,ecx
   6aea7:	89 d8                	mov    eax,ebx
   6aea9:	e8 f2 04 fd ff       	call   W?$dt:BTMAP$n()_
   6aeae:	e8 c5 71 00 00       	call   W?$dln(pnv)v
   6aeb3:	eb 20                	jmp    play_wav_branch_77
play_wav_branch_75:
   6aeb5:	89 d8                	mov    eax,ebx
   6aeb7:	e8 24 1c fd ff       	call   update_mod_76
   6aebc:	eb 17                	jmp    play_wav_branch_77
play_wav_branch_76:
   6aebe:	8b 43 48             	mov    eax,DWORD PTR [ebx+0x48]
   6aec1:	a3 d4 61 02 00       	mov    ds:@obj3:temp_next,eax                                       ; fixup: num: 18242, src obj: 1, src ofs: 0x6aec2, dst obj: 3, dst ofs: 0x261d4
   6aec6:	8b 43 38             	mov    eax,DWORD PTR [ebx+0x38]
   6aec9:	83 f8 01             	cmp    eax,0x1
   6aecc:	72 07                	jb     play_wav_branch_77
   6aece:	76 e5                	jbe    play_wav_branch_75
   6aed0:	83 f8 04             	cmp    eax,0x4
   6aed3:	74 b8                	je     play_wav_branch_74
play_wav_branch_77:
   6aed5:	8b 1d d4 61 02 00    	mov    ebx,DWORD PTR ds:@obj3:temp_next                             ; fixup: num: 18241, src obj: 1, src ofs: 0x6aed7, dst obj: 3, dst ofs: 0x261d4
play_wav_branch_78:
   6aedb:	85 db                	test   ebx,ebx
   6aedd:	75 df                	jne    play_wav_branch_76
   6aedf:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 18240, src obj: 1, src ofs: 0x6aee0, dst obj: 3, dst ofs: 0x25a84
   6aee4:	e8 b7 2d fe ff       	call   update_mod_84
   6aee9:	e9 6b ff ff ff       	jmp    play_wav_branch_72
play_wav_branch_79:
   6aeee:	8d 84 24 90 00 00 00 	lea    eax,[esp+0x90]
   6aef5:	31 d2                	xor    edx,edx
play_wav_branch_80:
   6aef7:	e8 34 db f9 ff       	call   W?$dt:SOUND$n()_
   6aefc:	81 c4 58 01 00 00    	add    esp,0x158
   6af02:	5d                   	pop    ebp
   6af03:	5f                   	pop    edi
   6af04:	5e                   	pop    esi
   6af05:	59                   	pop    ecx
   6af06:	c3                   	ret    
   6af07:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   6af0d:	8d 52 00             	lea    edx,[edx+0x0]

;-------------------------------------------------
;  Function 'get_response'                       -
;-------------------------------------------------
get_response:
   6af10:	53                   	push   ebx
   6af11:	51                   	push   ecx
   6af12:	52                   	push   edx
   6af13:	56                   	push   esi
   6af14:	57                   	push   edi
   6af15:	55                   	push   ebp
   6af16:	81 ec fc 20 00 00    	sub    esp,0x20fc
   6af1c:	89 84 24 c4 20 00 00 	mov    DWORD PTR [esp+0x20c4],eax
   6af23:	b4 01                	mov    ah,0x1
   6af25:	31 ff                	xor    edi,edi
   6af27:	31 ed                	xor    ebp,ebp
   6af29:	88 a4 24 f4 20 00 00 	mov    BYTE PTR [esp+0x20f4],ah
   6af30:	66 83 3d 08 59 02 00 00 	cmp    WORD PTR ds:@obj3:raw_key,0x0                             ; fixup: num: 18252, src obj: 1, src ofs: 0x6af33, dst obj: 3, dst ofs: 0x25908
   6af38:	74 11                	je     get_response_branch_2
   6af3a:	31 c0                	xor    eax,eax
get_response_branch_1:
   6af3c:	66 a3 08 59 02 00    	mov    ds:@obj3:raw_key,ax                                          ; fixup: num: 18251, src obj: 1, src ofs: 0x6af3e, dst obj: 3, dst ofs: 0x25908
   6af42:	66 3b 05 08 59 02 00 	cmp    ax,WORD PTR ds:@obj3:raw_key                                 ; fixup: num: 18250, src obj: 1, src ofs: 0x6af45, dst obj: 3, dst ofs: 0x25908
   6af49:	75 f1                	jne    get_response_branch_1
get_response_branch_2:
   6af4b:	bb 40 00 00 00       	mov    ebx,0x40
   6af50:	8d 84 24 80 20 00 00 	lea    eax,[esp+0x2080]
   6af57:	31 d2                	xor    edx,edx
   6af59:	e8 72 64 00 00       	call   memset_
   6af5e:	bb 40 00 00 00       	mov    ebx,0x40
   6af63:	8d 84 24 40 20 00 00 	lea    eax,[esp+0x2040]
   6af6a:	31 d2                	xor    edx,edx
   6af6c:	e8 5f 64 00 00       	call   memset_
   6af71:	bb 00 20 00 00       	mov    ebx,0x2000
   6af76:	89 e0                	mov    eax,esp
   6af78:	31 d2                	xor    edx,edx
   6af7a:	e8 51 64 00 00       	call   memset_
   6af7f:	30 d2                	xor    dl,dl
   6af81:	31 c9                	xor    ecx,ecx
   6af83:	88 15 bf 96 02 00    	mov    BYTE PTR ds:@obj3:cancel,dl                                  ; fixup: num: 18249, src obj: 1, src ofs: 0x6af85, dst obj: 3, dst ofs: 0x296bf
   6af89:	31 d2                	xor    edx,edx
   6af8b:	31 f6                	xor    esi,esi
   6af8d:	89 94 24 cc 20 00 00 	mov    DWORD PTR [esp+0x20cc],edx
   6af94:	89 94 24 c8 20 00 00 	mov    DWORD PTR [esp+0x20c8],edx
   6af9b:	66 89 35 08 59 02 00 	mov    WORD PTR ds:@obj3:raw_key,si                                 ; fixup: num: 18248, src obj: 1, src ofs: 0x6af9e, dst obj: 3, dst ofs: 0x25908
   6afa2:	8b 84 24 c4 20 00 00 	mov    eax,DWORD PTR [esp+0x20c4]
   6afa9:	89 94 24 d0 20 00 00 	mov    DWORD PTR [esp+0x20d0],edx
   6afb0:	89 94 24 dc 20 00 00 	mov    DWORD PTR [esp+0x20dc],edx
   6afb7:	89 8c 24 ec 20 00 00 	mov    DWORD PTR [esp+0x20ec],ecx
   6afbe:	31 f6                	xor    esi,esi
   6afc0:	ba 22 00 00 00       	mov    edx,0x22
   6afc5:	89 84 24 c0 20 00 00 	mov    DWORD PTR [esp+0x20c0],eax
   6afcc:	89 94 24 d4 20 00 00 	mov    DWORD PTR [esp+0x20d4],edx
get_response_branch_3:
   6afd3:	8b 94 24 c0 20 00 00 	mov    edx,DWORD PTR [esp+0x20c0]
   6afda:	8b 84 24 cc 20 00 00 	mov    eax,DWORD PTR [esp+0x20cc]
   6afe1:	42                   	inc    edx
   6afe2:	8d 58 01             	lea    ebx,[eax+0x1]
   6afe5:	89 94 24 c0 20 00 00 	mov    DWORD PTR [esp+0x20c0],edx
   6afec:	03 84 24 c4 20 00 00 	add    eax,DWORD PTR [esp+0x20c4]
   6aff3:	8a 00                	mov    al,BYTE PTR [eax]
   6aff5:	89 9c 24 cc 20 00 00 	mov    DWORD PTR [esp+0x20cc],ebx
   6affc:	88 84 24 f0 20 00 00 	mov    BYTE PTR [esp+0x20f0],al
   6b003:	84 c0                	test   al,al
   6b005:	0f 84 f7 01 00 00    	je     get_response_branch_15
   6b00b:	8b 1d 88 5a 02 00    	mov    ebx,DWORD PTR ds:@obj3:the_list                              ; fixup: num: 18531, src obj: 1, src ofs: 0x6b00d, dst obj: 3, dst ofs: 0x25a88
   6b011:	eb 51                	jmp    get_response_branch_8
get_response_branch_4:
   6b013:	89 d8                	mov    eax,ebx
   6b015:	e8 36 27 fd ff       	call   update_mod_76_2
   6b01a:	84 c0                	test   al,al
   6b01c:	75 40                	jne    get_response_branch_7
   6b01e:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 18530, src obj: 1, src ofs: 0x6b01f, dst obj: 3, dst ofs: 0x25a88
   6b023:	89 da                	mov    edx,ebx
   6b025:	e8 c6 16 fe ff       	call   remove_bitmap
   6b02a:	85 db                	test   ebx,ebx
   6b02c:	74 30                	je     get_response_branch_7
   6b02e:	89 d8                	mov    eax,ebx
   6b030:	31 d2                	xor    edx,edx
   6b032:	e8 69 03 fd ff       	call   W?$dt:BTMAP$n()_
   6b037:	e8 3c 70 00 00       	call   W?$dln(pnv)v
   6b03c:	eb 20                	jmp    get_response_branch_7
get_response_branch_5:
   6b03e:	89 d8                	mov    eax,ebx
   6b040:	e8 9b 1a fd ff       	call   update_mod_76
   6b045:	eb 17                	jmp    get_response_branch_7
get_response_branch_6:
   6b047:	8b 43 48             	mov    eax,DWORD PTR [ebx+0x48]
   6b04a:	a3 d4 61 02 00       	mov    ds:@obj3:temp_next,eax                                       ; fixup: num: 18529, src obj: 1, src ofs: 0x6b04b, dst obj: 3, dst ofs: 0x261d4
   6b04f:	8b 43 38             	mov    eax,DWORD PTR [ebx+0x38]
   6b052:	83 f8 01             	cmp    eax,0x1
   6b055:	72 07                	jb     get_response_branch_7
   6b057:	76 e5                	jbe    get_response_branch_5
   6b059:	83 f8 04             	cmp    eax,0x4
   6b05c:	74 b5                	je     get_response_branch_4
get_response_branch_7:
   6b05e:	8b 1d d4 61 02 00    	mov    ebx,DWORD PTR ds:@obj3:temp_next                             ; fixup: num: 18528, src obj: 1, src ofs: 0x6b060, dst obj: 3, dst ofs: 0x261d4
get_response_branch_8:
   6b064:	85 db                	test   ebx,ebx
   6b066:	75 df                	jne    get_response_branch_6
   6b068:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 18533, src obj: 1, src ofs: 0x6b069, dst obj: 3, dst ofs: 0x1a1d4
   6b06d:	e8 2e 09 fa ff       	call   update_mod_9
   6b072:	8a 84 24 f0 20 00 00 	mov    al,BYTE PTR [esp+0x20f0]
   6b079:	3c 2f                	cmp    al,0x2f
   6b07b:	75 2b                	jne    get_response_branch_9
   6b07d:	8d 04 0e             	lea    eax,[esi+ecx*1]
   6b080:	c6 04 04 20          	mov    BYTE PTR [esp+eax*1],0x20
   6b084:	8b 84 24 dc 20 00 00 	mov    eax,DWORD PTR [esp+0x20dc]
   6b08b:	8b 94 24 c8 20 00 00 	mov    edx,DWORD PTR [esp+0x20c8]
   6b092:	8d 58 01             	lea    ebx,[eax+0x1]
   6b095:	89 94 84 80 20 00 00 	mov    DWORD PTR [esp+eax*4+0x2080],edx
   6b09c:	89 9c 24 dc 20 00 00 	mov    DWORD PTR [esp+0x20dc],ebx
   6b0a3:	e9 2b ff ff ff       	jmp    get_response_branch_3
get_response_branch_9:
   6b0a8:	3c 31                	cmp    al,0x31
   6b0aa:	0f 82 3e 01 00 00    	jb     get_response_branch_14
   6b0b0:	3c 39                	cmp    al,0x39
   6b0b2:	0f 87 36 01 00 00    	ja     get_response_branch_14
   6b0b8:	8b 84 24 c0 20 00 00 	mov    eax,DWORD PTR [esp+0x20c0]
   6b0bf:	8a 30                	mov    dh,BYTE PTR [eax]
   6b0c1:	84 f6                	test   dh,dh
   6b0c3:	0f 84 25 01 00 00    	je     get_response_branch_14
   6b0c9:	80 fe 2f             	cmp    dh,0x2f
   6b0cc:	0f 84 1c 01 00 00    	je     get_response_branch_14
   6b0d2:	80 fe 2e             	cmp    dh,0x2e
   6b0d5:	0f 85 13 01 00 00    	jne    get_response_branch_14
   6b0db:	83 bc 24 d0 20 00 00 00 	cmp    DWORD PTR [esp+0x20d0],0x0
   6b0e3:	0f 84 df 00 00 00    	je     get_response_branch_13
   6b0e9:	83 bc 24 c8 20 00 00 10 	cmp    DWORD PTR [esp+0x20c8],0x10
   6b0f1:	7c 11                	jl     get_response_branch_10
   6b0f3:	bb cf f5 00 00       	mov    ebx,@obj3:convutil_cpp_variable_77                           ; fixup: num: 18532, src obj: 1, src ofs: 0x6b0f4, dst obj: 3, dst ofs: 0xf5cf
   6b0f8:	ba 4a 04 00 00       	mov    edx,0x44a
   6b0fd:	31 c0                	xor    eax,eax
   6b0ff:	e8 2c cf fc ff       	call   _error_report
get_response_branch_10:
   6b104:	01 f1                	add    ecx,esi
   6b106:	30 c0                	xor    al,al
   6b108:	88 04 0c             	mov    BYTE PTR [esp+ecx*1],al
   6b10b:	b8 50 00 00 00       	mov    eax,0x50
   6b110:	e8 03 6e 00 00       	call   W?$nwn(ui)pnv
   6b115:	85 c0                	test   eax,eax
   6b117:	74 32                	je     get_response_branch_11
   6b119:	68 3c 01 00 00       	push   0x13c
   6b11e:	6a ce                	push   0xffffffce
   6b120:	8b 94 24 dc 20 00 00 	mov    edx,DWORD PTR [esp+0x20dc]
   6b127:	52                   	push   edx
   6b128:	8b 8c 24 f8 20 00 00 	mov    ecx,DWORD PTR [esp+0x20f8]
   6b12f:	8b 1d c8 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:textfnt2                              ; fixup: num: 18537, src obj: 1, src ofs: 0x6b131, dst obj: 3, dst ofs: 0x25bc8
   6b135:	68 b2 00 00 00       	push   0xb2
   6b13a:	8d 54 24 10          	lea    edx,[esp+0x10]
   6b13e:	8b 89 78 40 01 00    	mov    ecx,DWORD PTR [ecx+@obj3:text_id]                            ; fixup: num: 18536, src obj: 1, src ofs: 0x6b140, dst obj: 3, dst ofs: 0x14078
   6b144:	01 f2                	add    edx,esi
   6b146:	e8 b5 ea fd ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
get_response_branch_11:
   6b14b:	8b 94 24 ec 20 00 00 	mov    edx,DWORD PTR [esp+0x20ec]
   6b152:	89 84 14 00 20 00 00 	mov    DWORD PTR [esp+edx*1+0x2000],eax
   6b159:	8b 50 4c             	mov    edx,DWORD PTR [eax+0x4c]
   6b15c:	8b 9c 24 dc 20 00 00 	mov    ebx,DWORD PTR [esp+0x20dc]
   6b163:	4a                   	dec    edx
   6b164:	01 d3                	add    ebx,edx
   6b166:	89 9c 24 dc 20 00 00 	mov    DWORD PTR [esp+0x20dc],ebx
   6b16d:	85 c0                	test   eax,eax
   6b16f:	75 0f                	jne    get_response_branch_12
   6b171:	bb ee f5 00 00       	mov    ebx,@obj3:convutil_cpp_variable_78                           ; fixup: num: 18535, src obj: 1, src ofs: 0x6b172, dst obj: 3, dst ofs: 0xf5ee
   6b176:	ba 63 04 00 00       	mov    edx,0x463
   6b17b:	e8 b0 ce fc ff       	call   _error_report
get_response_branch_12:
   6b180:	a1 c8 5b 02 00       	mov    eax,ds:@obj3:textfnt2                                        ; fixup: num: 18534, src obj: 1, src ofs: 0x6b181, dst obj: 3, dst ofs: 0x25bc8
   6b185:	0f bf 40 40          	movsx  eax,WORD PTR [eax+0x40]
   6b189:	8b 8c 24 dc 20 00 00 	mov    ecx,DWORD PTR [esp+0x20dc]
   6b190:	83 c0 03             	add    eax,0x3
   6b193:	0f af c1             	imul   eax,ecx
   6b196:	8b bc 24 ec 20 00 00 	mov    edi,DWORD PTR [esp+0x20ec]
   6b19d:	81 c6 00 02 00 00    	add    esi,0x200
   6b1a3:	83 c0 22             	add    eax,0x22
   6b1a6:	83 c7 04             	add    edi,0x4
   6b1a9:	89 84 24 d4 20 00 00 	mov    DWORD PTR [esp+0x20d4],eax
   6b1b0:	8b 84 24 c8 20 00 00 	mov    eax,DWORD PTR [esp+0x20c8]
   6b1b7:	89 bc 24 ec 20 00 00 	mov    DWORD PTR [esp+0x20ec],edi
   6b1be:	40                   	inc    eax
   6b1bf:	31 c9                	xor    ecx,ecx
   6b1c1:	89 84 24 c8 20 00 00 	mov    DWORD PTR [esp+0x20c8],eax
get_response_branch_13:
   6b1c8:	8b 94 24 dc 20 00 00 	mov    edx,DWORD PTR [esp+0x20dc]
   6b1cf:	0f b6 bc 24 f0 20 00 00 	movzx  edi,BYTE PTR [esp+0x20f0]
   6b1d7:	42                   	inc    edx
   6b1d8:	89 94 bc 80 1f 00 00 	mov    DWORD PTR [esp+edi*4+0x1f80],edx
   6b1df:	ba 01 00 00 00       	mov    edx,0x1
   6b1e4:	83 ef 30             	sub    edi,0x30
   6b1e7:	89 94 24 d0 20 00 00 	mov    DWORD PTR [esp+0x20d0],edx
get_response_branch_14:
   6b1ee:	89 c8                	mov    eax,ecx
   6b1f0:	01 f0                	add    eax,esi
   6b1f2:	8a 94 24 f0 20 00 00 	mov    dl,BYTE PTR [esp+0x20f0]
   6b1f9:	41                   	inc    ecx
   6b1fa:	88 14 04             	mov    BYTE PTR [esp+eax*1],dl
   6b1fd:	e9 d1 fd ff ff       	jmp    get_response_branch_3
get_response_branch_15:
   6b202:	8b 94 24 c8 20 00 00 	mov    edx,DWORD PTR [esp+0x20c8]
   6b209:	c1 e2 09             	shl    edx,0x9
   6b20c:	01 d1                	add    ecx,edx
   6b20e:	88 04 0c             	mov    BYTE PTR [esp+ecx*1],al
   6b211:	b8 50 00 00 00       	mov    eax,0x50
   6b216:	e8 fd 6c 00 00       	call   W?$nwn(ui)pnv
   6b21b:	85 c0                	test   eax,eax
   6b21d:	74 33                	je     get_response_branch_16
   6b21f:	68 3c 01 00 00       	push   0x13c
   6b224:	8b 9c 24 d8 20 00 00 	mov    ebx,DWORD PTR [esp+0x20d8]
   6b22b:	6a ce                	push   0xffffffce
   6b22d:	8b 8c 24 d0 20 00 00 	mov    ecx,DWORD PTR [esp+0x20d0]
   6b234:	8d 74 24 08          	lea    esi,[esp+0x8]
   6b238:	53                   	push   ebx
   6b239:	8b 0c 8d 78 40 01 00 	mov    ecx,DWORD PTR [ecx*4+@obj3:text_id]                          ; fixup: num: 18540, src obj: 1, src ofs: 0x6b23c, dst obj: 3, dst ofs: 0x14078
   6b240:	01 f2                	add    edx,esi
   6b242:	68 b2 00 00 00       	push   0xb2
   6b247:	8b 1d c8 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:textfnt2                              ; fixup: num: 18539, src obj: 1, src ofs: 0x6b249, dst obj: 3, dst ofs: 0x25bc8
   6b24d:	e8 ae e9 fd ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
get_response_branch_16:
   6b252:	8b 94 24 c8 20 00 00 	mov    edx,DWORD PTR [esp+0x20c8]
   6b259:	89 84 94 00 20 00 00 	mov    DWORD PTR [esp+edx*4+0x2000],eax
   6b260:	85 c0                	test   eax,eax
   6b262:	75 0f                	jne    get_response_branch_17
   6b264:	bb 06 f6 00 00       	mov    ebx,@obj3:convutil_cpp_variable_79                           ; fixup: num: 18538, src obj: 1, src ofs: 0x6b265, dst obj: 3, dst ofs: 0xf606
   6b269:	ba 7d 04 00 00       	mov    edx,0x47d
   6b26e:	e8 bd cd fc ff       	call   _error_report
get_response_branch_17:
   6b273:	b8 50 00 00 00       	mov    eax,0x50
   6b278:	e8 9b 6c 00 00       	call   W?$nwn(ui)pnv
   6b27d:	85 c0                	test   eax,eax
   6b27f:	74 20                	je     get_response_branch_18
   6b281:	6a 00                	push   0x0
   6b283:	6a ce                	push   0xffffffce
   6b285:	6a 0b                	push   0xb
   6b287:	b9 1e f6 00 00       	mov    ecx,@obj3:convutil_cpp_variable_80                           ; fixup: num: 18550, src obj: 1, src ofs: 0x6b288, dst obj: 3, dst ofs: 0xf61e
   6b28c:	68 20 01 00 00       	push   0x120
   6b291:	ba 28 f6 00 00       	mov    edx,@obj3:convutil_cpp_variable_81                           ; fixup: num: 18549, src obj: 1, src ofs: 0x6b292, dst obj: 3, dst ofs: 0xf628
   6b296:	8b 1d c4 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:textfont                              ; fixup: num: 18548, src obj: 1, src ofs: 0x6b298, dst obj: 3, dst ofs: 0x25bc4
   6b29c:	e8 5f e9 fd ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
get_response_branch_18:
   6b2a1:	89 84 24 e4 20 00 00 	mov    DWORD PTR [esp+0x20e4],eax
   6b2a8:	85 c0                	test   eax,eax
   6b2aa:	75 0f                	jne    get_response_branch_19
   6b2ac:	bb 32 f6 00 00       	mov    ebx,@obj3:convutil_cpp_variable_82                           ; fixup: num: 18547, src obj: 1, src ofs: 0x6b2ad, dst obj: 3, dst ofs: 0xf632
   6b2b1:	ba 81 04 00 00       	mov    edx,0x481
   6b2b6:	e8 75 cd fc ff       	call   _error_report
get_response_branch_19:
   6b2bb:	8b 84 24 dc 20 00 00 	mov    eax,DWORD PTR [esp+0x20dc]
   6b2c2:	8b 94 24 c8 20 00 00 	mov    edx,DWORD PTR [esp+0x20c8]
   6b2c9:	89 94 84 80 20 00 00 	mov    DWORD PTR [esp+eax*4+0x2080],edx
   6b2d0:	8b 94 24 dc 20 00 00 	mov    edx,DWORD PTR [esp+0x20dc]
   6b2d7:	42                   	inc    edx
   6b2d8:	83 c0 02             	add    eax,0x2
   6b2db:	89 94 24 dc 20 00 00 	mov    DWORD PTR [esp+0x20dc],edx
   6b2e2:	83 f8 01             	cmp    eax,0x1
   6b2e5:	75 10                	jne    get_response_branch_20
   6b2e7:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 18546, src obj: 1, src ofs: 0x6b2e8, dst obj: 3, dst ofs: 0x25a88
   6b2ec:	8b 15 68 97 02 00    	mov    edx,DWORD PTR ds:@obj3:textbox1                              ; fixup: num: 18545, src obj: 1, src ofs: 0x6b2ee, dst obj: 3, dst ofs: 0x29768
   6b2f2:	e9 68 00 00 00       	jmp    get_response_branch_26
get_response_branch_20:
   6b2f7:	8d 42 01             	lea    eax,[edx+0x1]
   6b2fa:	83 f8 02             	cmp    eax,0x2
   6b2fd:	7f 0d                	jg     get_response_branch_21
   6b2ff:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 18544, src obj: 1, src ofs: 0x6b300, dst obj: 3, dst ofs: 0x25a88
   6b304:	8b 15 74 97 02 00    	mov    edx,DWORD PTR ds:@obj3:textbox4                              ; fixup: num: 18543, src obj: 1, src ofs: 0x6b306, dst obj: 3, dst ofs: 0x29774
   6b30a:	eb 53                	jmp    get_response_branch_26
get_response_branch_21:
   6b30c:	83 f8 03             	cmp    eax,0x3
   6b30f:	7f 0d                	jg     get_response_branch_22
   6b311:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 18542, src obj: 1, src ofs: 0x6b312, dst obj: 3, dst ofs: 0x25a88
   6b316:	8b 15 74 97 02 00    	mov    edx,DWORD PTR ds:@obj3:textbox4                              ; fixup: num: 18541, src obj: 1, src ofs: 0x6b318, dst obj: 3, dst ofs: 0x29774
   6b31c:	eb 41                	jmp    get_response_branch_26
get_response_branch_22:
   6b31e:	83 f8 04             	cmp    eax,0x4
   6b321:	7f 0d                	jg     get_response_branch_23
   6b323:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 18564, src obj: 1, src ofs: 0x6b324, dst obj: 3, dst ofs: 0x25a88
   6b328:	8b 15 78 97 02 00    	mov    edx,DWORD PTR ds:@obj3:textbox5                              ; fixup: num: 18563, src obj: 1, src ofs: 0x6b32a, dst obj: 3, dst ofs: 0x29778
   6b32e:	eb 2f                	jmp    get_response_branch_26
get_response_branch_23:
   6b330:	83 f8 05             	cmp    eax,0x5
   6b333:	7f 0d                	jg     get_response_branch_24
   6b335:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 18562, src obj: 1, src ofs: 0x6b336, dst obj: 3, dst ofs: 0x25a88
   6b33a:	8b 15 7c 97 02 00    	mov    edx,DWORD PTR ds:@obj3:textbox6                              ; fixup: num: 18561, src obj: 1, src ofs: 0x6b33c, dst obj: 3, dst ofs: 0x2977c
   6b340:	eb 1d                	jmp    get_response_branch_26
get_response_branch_24:
   6b342:	83 f8 06             	cmp    eax,0x6
   6b345:	7f 0d                	jg     get_response_branch_25
   6b347:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 18560, src obj: 1, src ofs: 0x6b348, dst obj: 3, dst ofs: 0x25a88
   6b34c:	8b 15 7c 97 02 00    	mov    edx,DWORD PTR ds:@obj3:textbox6                              ; fixup: num: 18559, src obj: 1, src ofs: 0x6b34e, dst obj: 3, dst ofs: 0x2977c
   6b352:	eb 0b                	jmp    get_response_branch_26
get_response_branch_25:
   6b354:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 18558, src obj: 1, src ofs: 0x6b355, dst obj: 3, dst ofs: 0x25a88
   6b359:	8b 15 80 97 02 00    	mov    edx,DWORD PTR ds:@obj3:textbox7                              ; fixup: num: 18557, src obj: 1, src ofs: 0x6b35b, dst obj: 3, dst ofs: 0x29780
get_response_branch_26:
   6b35f:	e8 cc 0d fe ff       	call   insert_bitmap
   6b364:	ba 02 00 00 00       	mov    edx,0x2
   6b369:	bb 63 00 00 00       	mov    ebx,0x63
   6b36e:	a1 94 60 02 00       	mov    eax,ds:@obj3:pointer                                         ; fixup: num: 18556, src obj: 1, src ofs: 0x6b36f, dst obj: 3, dst ofs: 0x26094
   6b373:	31 f6                	xor    esi,esi
   6b375:	89 9c 24 e0 20 00 00 	mov    DWORD PTR [esp+0x20e0],ebx
   6b37c:	e8 0f e6 ff ff       	call   set_pointer
   6b381:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 18555, src obj: 1, src ofs: 0x6b383, dst obj: 3, dst ofs: 0x25974
   6b388:	0f 84 7b 00 00 00    	je     get_response_branch_33
   6b38e:	31 c9                	xor    ecx,ecx
get_response_branch_27:
   6b390:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 18554, src obj: 1, src ofs: 0x6b391, dst obj: 3, dst ofs: 0x25a84
   6b395:	e8 06 29 fe ff       	call   update_mod_84
   6b39a:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 18553, src obj: 1, src ofs: 0x6b39b, dst obj: 3, dst ofs: 0x1a1d4
   6b39f:	e8 fc 05 fa ff       	call   update_mod_9
   6b3a4:	8b 1d 88 5a 02 00    	mov    ebx,DWORD PTR ds:@obj3:the_list                              ; fixup: num: 18552, src obj: 1, src ofs: 0x6b3a6, dst obj: 3, dst ofs: 0x25a88
   6b3aa:	eb 51                	jmp    get_response_branch_32
get_response_branch_28:
   6b3ac:	89 d8                	mov    eax,ebx
   6b3ae:	e8 9d 23 fd ff       	call   update_mod_76_2
   6b3b3:	84 c0                	test   al,al
   6b3b5:	75 40                	jne    get_response_branch_31
   6b3b7:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 18551, src obj: 1, src ofs: 0x6b3b8, dst obj: 3, dst ofs: 0x25a88
   6b3bc:	89 da                	mov    edx,ebx
   6b3be:	e8 2d 13 fe ff       	call   remove_bitmap
   6b3c3:	85 db                	test   ebx,ebx
   6b3c5:	74 30                	je     get_response_branch_31
   6b3c7:	89 ca                	mov    edx,ecx
   6b3c9:	89 d8                	mov    eax,ebx
   6b3cb:	e8 d0 ff fc ff       	call   W?$dt:BTMAP$n()_
   6b3d0:	e8 a3 6c 00 00       	call   W?$dln(pnv)v
   6b3d5:	eb 20                	jmp    get_response_branch_31
get_response_branch_29:
   6b3d7:	89 d8                	mov    eax,ebx
   6b3d9:	e8 02 17 fd ff       	call   update_mod_76
   6b3de:	eb 17                	jmp    get_response_branch_31
get_response_branch_30:
   6b3e0:	8b 43 48             	mov    eax,DWORD PTR [ebx+0x48]
   6b3e3:	a3 d4 61 02 00       	mov    ds:@obj3:temp_next,eax                                       ; fixup: num: 18572, src obj: 1, src ofs: 0x6b3e4, dst obj: 3, dst ofs: 0x261d4
   6b3e8:	8b 43 38             	mov    eax,DWORD PTR [ebx+0x38]
   6b3eb:	83 f8 01             	cmp    eax,0x1
   6b3ee:	72 07                	jb     get_response_branch_31
   6b3f0:	76 e5                	jbe    get_response_branch_29
   6b3f2:	83 f8 04             	cmp    eax,0x4
   6b3f5:	74 b5                	je     get_response_branch_28
get_response_branch_31:
   6b3f7:	8b 1d d4 61 02 00    	mov    ebx,DWORD PTR ds:@obj3:temp_next                             ; fixup: num: 18571, src obj: 1, src ofs: 0x6b3f9, dst obj: 3, dst ofs: 0x261d4
get_response_branch_32:
   6b3fd:	85 db                	test   ebx,ebx
   6b3ff:	75 df                	jne    get_response_branch_30
   6b401:	3a 0d 74 59 02 00    	cmp    cl,BYTE PTR ds:@obj3:left_button                             ; fixup: num: 18570, src obj: 1, src ofs: 0x6b403, dst obj: 3, dst ofs: 0x25974
   6b407:	75 87                	jne    get_response_branch_27
get_response_branch_33:
   6b409:	a1 c8 5b 02 00       	mov    eax,ds:@obj3:textfnt2                                        ; fixup: num: 18569, src obj: 1, src ofs: 0x6b40a, dst obj: 3, dst ofs: 0x25bc8
   6b40e:	0f bf 40 40          	movsx  eax,WORD PTR [eax+0x40]
   6b412:	8b 8c 24 dc 20 00 00 	mov    ecx,DWORD PTR [esp+0x20dc]
   6b419:	83 c0 03             	add    eax,0x3
   6b41c:	0f af c1             	imul   eax,ecx
   6b41f:	83 c0 21             	add    eax,0x21
   6b422:	89 84 24 d8 20 00 00 	mov    DWORD PTR [esp+0x20d8],eax
get_response_branch_34:
   6b429:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 18568, src obj: 1, src ofs: 0x6b42a, dst obj: 3, dst ofs: 0x25a84
   6b42e:	e8 6d 28 fe ff       	call   update_mod_84
   6b433:	8b 1d 88 5a 02 00    	mov    ebx,DWORD PTR ds:@obj3:the_list                              ; fixup: num: 18567, src obj: 1, src ofs: 0x6b435, dst obj: 3, dst ofs: 0x25a88
   6b439:	eb 51                	jmp    get_response_branch_39
get_response_branch_35:
   6b43b:	89 d8                	mov    eax,ebx
   6b43d:	e8 0e 23 fd ff       	call   update_mod_76_2
   6b442:	84 c0                	test   al,al
   6b444:	75 40                	jne    get_response_branch_38
   6b446:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 18566, src obj: 1, src ofs: 0x6b447, dst obj: 3, dst ofs: 0x25a88
   6b44b:	89 da                	mov    edx,ebx
   6b44d:	e8 9e 12 fe ff       	call   remove_bitmap
   6b452:	85 db                	test   ebx,ebx
   6b454:	74 30                	je     get_response_branch_38
   6b456:	89 d8                	mov    eax,ebx
   6b458:	31 d2                	xor    edx,edx
   6b45a:	e8 41 ff fc ff       	call   W?$dt:BTMAP$n()_
   6b45f:	e8 14 6c 00 00       	call   W?$dln(pnv)v
   6b464:	eb 20                	jmp    get_response_branch_38
get_response_branch_36:
   6b466:	89 d8                	mov    eax,ebx
   6b468:	e8 73 16 fd ff       	call   update_mod_76
   6b46d:	eb 17                	jmp    get_response_branch_38
get_response_branch_37:
   6b46f:	8b 43 48             	mov    eax,DWORD PTR [ebx+0x48]
   6b472:	a3 d4 61 02 00       	mov    ds:@obj3:temp_next,eax                                       ; fixup: num: 18565, src obj: 1, src ofs: 0x6b473, dst obj: 3, dst ofs: 0x261d4
   6b477:	8b 43 38             	mov    eax,DWORD PTR [ebx+0x38]
   6b47a:	83 f8 01             	cmp    eax,0x1
   6b47d:	72 07                	jb     get_response_branch_38
   6b47f:	76 e5                	jbe    get_response_branch_36
   6b481:	83 f8 04             	cmp    eax,0x4
   6b484:	74 b5                	je     get_response_branch_35
get_response_branch_38:
   6b486:	8b 1d d4 61 02 00    	mov    ebx,DWORD PTR ds:@obj3:temp_next                             ; fixup: num: 18580, src obj: 1, src ofs: 0x6b488, dst obj: 3, dst ofs: 0x261d4
get_response_branch_39:
   6b48c:	85 db                	test   ebx,ebx
   6b48e:	75 df                	jne    get_response_branch_37
   6b490:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 18579, src obj: 1, src ofs: 0x6b491, dst obj: 3, dst ofs: 0x1a1d4
   6b495:	e8 06 05 fa ff       	call   update_mod_9
   6b49a:	81 3d 78 59 02 00 a7 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0xa7                     ; fixup: num: 18578, src obj: 1, src ofs: 0x6b49c, dst obj: 3, dst ofs: 0x25978
   6b4a4:	0f 8e 07 02 00 00    	jle    get_response_branch_50
   6b4aa:	81 3d 78 59 02 00 e3 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x1e3                    ; fixup: num: 18577, src obj: 1, src ofs: 0x6b4ac, dst obj: 3, dst ofs: 0x25978
   6b4b4:	0f 8d f7 01 00 00    	jge    get_response_branch_50
   6b4ba:	83 3d 7c 59 02 00 22 	cmp    DWORD PTR ds:@obj3:mouse_y,0x22                              ; fixup: num: 18576, src obj: 1, src ofs: 0x6b4bc, dst obj: 3, dst ofs: 0x2597c
   6b4c1:	0f 8c ea 01 00 00    	jl     get_response_branch_50
   6b4c7:	a1 7c 59 02 00       	mov    eax,ds:@obj3:mouse_y                                         ; fixup: num: 18575, src obj: 1, src ofs: 0x6b4c8, dst obj: 3, dst ofs: 0x2597c
   6b4cc:	3b 84 24 d8 20 00 00 	cmp    eax,DWORD PTR [esp+0x20d8]
   6b4d3:	0f 8d d8 01 00 00    	jge    get_response_branch_50
   6b4d9:	30 ed                	xor    ch,ch
   6b4db:	8b 1d c8 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:textfnt2                              ; fixup: num: 18574, src obj: 1, src ofs: 0x6b4dd, dst obj: 3, dst ofs: 0x25bc8
   6b4e1:	88 ac 24 f8 20 00 00 	mov    BYTE PTR [esp+0x20f8],ch
   6b4e8:	0f bf 5b 40          	movsx  ebx,WORD PTR [ebx+0x40]
   6b4ec:	8b 15 7c 59 02 00    	mov    edx,DWORD PTR ds:@obj3:mouse_y                               ; fixup: num: 18573, src obj: 1, src ofs: 0x6b4ee, dst obj: 3, dst ofs: 0x2597c
   6b4f2:	83 ea 22             	sub    edx,0x22
   6b4f5:	83 c3 03             	add    ebx,0x3
   6b4f8:	89 d0                	mov    eax,edx
   6b4fa:	c1 fa 1f             	sar    edx,0x1f
   6b4fd:	f7 fb                	idiv   ebx
   6b4ff:	8b 9c 24 e0 20 00 00 	mov    ebx,DWORD PTR [esp+0x20e0]
   6b506:	8b b4 84 80 20 00 00 	mov    esi,DWORD PTR [esp+eax*4+0x2080]
   6b50d:	39 de                	cmp    esi,ebx
   6b50f:	75 0e                	jne    get_response_branch_40
   6b511:	80 bc 24 f4 20 00 00 00 	cmp    BYTE PTR [esp+0x20f4],0x0
   6b519:	0f 84 80 01 00 00    	je     get_response_branch_49
get_response_branch_40:
   6b51f:	8d 04 b5 00 00 00 00 	lea    eax,[esi*4+0x0]
   6b526:	8b 8c 04 00 20 00 00 	mov    ecx,DWORD PTR [esp+eax*1+0x2000]
   6b52d:	85 c9                	test   ecx,ecx
   6b52f:	74 23                	je     get_response_branch_42
   6b531:	8b 51 40             	mov    edx,DWORD PTR [ecx+0x40]
   6b534:	89 c8                	mov    eax,ecx
   6b536:	89 94 24 d4 20 00 00 	mov    DWORD PTR [esp+0x20d4],edx
   6b53d:	74 0c                	je     get_response_branch_41
   6b53f:	31 d2                	xor    edx,edx
   6b541:	e8 da e9 fd ff       	call   W?$dt:TEXTBM$n()_
   6b546:	e8 2d 6b 00 00       	call   W?$dln(pnv)v
get_response_branch_41:
   6b54b:	31 c0                	xor    eax,eax
   6b54d:	89 84 b4 00 20 00 00 	mov    DWORD PTR [esp+esi*4+0x2000],eax
get_response_branch_42:
   6b554:	b8 50 00 00 00       	mov    eax,0x50
   6b559:	e8 ba 69 00 00       	call   W?$nwn(ui)pnv
   6b55e:	85 c0                	test   eax,eax
   6b560:	74 3d                	je     get_response_branch_43
   6b562:	68 3c 01 00 00       	push   0x13c
   6b567:	6a ce                	push   0xffffffce
   6b569:	8b 94 24 dc 20 00 00 	mov    edx,DWORD PTR [esp+0x20dc]
   6b570:	52                   	push   edx
   6b571:	89 f2                	mov    edx,esi
   6b573:	8b 1d c4 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:textfont                              ; fixup: num: 18583, src obj: 1, src ofs: 0x6b575, dst obj: 3, dst ofs: 0x25bc4
   6b579:	c1 e2 09             	shl    edx,0x9
   6b57c:	8b 0c b5 78 40 01 00 	mov    ecx,DWORD PTR [esi*4+@obj3:text_id]                          ; fixup: num: 18582, src obj: 1, src ofs: 0x6b57f, dst obj: 3, dst ofs: 0x14078
   6b583:	89 94 24 f4 20 00 00 	mov    DWORD PTR [esp+0x20f4],edx
   6b58a:	8d 54 24 0c          	lea    edx,[esp+0xc]
   6b58e:	68 b2 00 00 00       	push   0xb2
   6b593:	03 94 24 f8 20 00 00 	add    edx,DWORD PTR [esp+0x20f8]
   6b59a:	e8 61 e6 fd ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
get_response_branch_43:
   6b59f:	89 84 b4 00 20 00 00 	mov    DWORD PTR [esp+esi*4+0x2000],eax
   6b5a6:	85 c0                	test   eax,eax
   6b5a8:	75 0f                	jne    get_response_branch_44
   6b5aa:	bb 4a f6 00 00       	mov    ebx,@obj3:convutil_cpp_variable_83                           ; fixup: num: 18581, src obj: 1, src ofs: 0x6b5ab, dst obj: 3, dst ofs: 0xf64a
   6b5af:	ba d2 04 00 00       	mov    edx,0x4d2
   6b5b4:	e8 77 ca fc ff       	call   _error_report
get_response_branch_44:
   6b5b9:	31 c0                	xor    eax,eax
   6b5bb:	8a 84 24 f4 20 00 00 	mov    al,BYTE PTR [esp+0x20f4]
   6b5c2:	85 c0                	test   eax,eax
   6b5c4:	0f 85 bb 00 00 00    	jne    get_response_branch_48
   6b5ca:	8b 84 24 e0 20 00 00 	mov    eax,DWORD PTR [esp+0x20e0]
   6b5d1:	8d 04 85 00 00 00 00 	lea    eax,[eax*4+0x0]
   6b5d8:	8b 8c 04 00 20 00 00 	mov    ecx,DWORD PTR [esp+eax*1+0x2000]
   6b5df:	85 c9                	test   ecx,ecx
   6b5e1:	74 2a                	je     get_response_branch_46
   6b5e3:	8b 51 40             	mov    edx,DWORD PTR [ecx+0x40]
   6b5e6:	89 c8                	mov    eax,ecx
   6b5e8:	89 94 24 d4 20 00 00 	mov    DWORD PTR [esp+0x20d4],edx
   6b5ef:	74 0c                	je     get_response_branch_45
   6b5f1:	31 d2                	xor    edx,edx
   6b5f3:	e8 28 e9 fd ff       	call   W?$dt:TEXTBM$n()_
   6b5f8:	e8 7b 6a 00 00       	call   W?$dln(pnv)v
get_response_branch_45:
   6b5fd:	8b 84 24 e0 20 00 00 	mov    eax,DWORD PTR [esp+0x20e0]
   6b604:	31 d2                	xor    edx,edx
   6b606:	89 94 84 00 20 00 00 	mov    DWORD PTR [esp+eax*4+0x2000],edx
get_response_branch_46:
   6b60d:	b8 50 00 00 00       	mov    eax,0x50
   6b612:	e8 01 69 00 00       	call   W?$nwn(ui)pnv
   6b617:	85 c0                	test   eax,eax
   6b619:	74 49                	je     get_response_branch_47
   6b61b:	68 3c 01 00 00       	push   0x13c
   6b620:	8b 9c 24 d8 20 00 00 	mov    ebx,DWORD PTR [esp+0x20d8]
   6b627:	8b 8c 24 e4 20 00 00 	mov    ecx,DWORD PTR [esp+0x20e4]
   6b62e:	8b 94 24 e4 20 00 00 	mov    edx,DWORD PTR [esp+0x20e4]
   6b635:	6a ce                	push   0xffffffce
   6b637:	c1 e2 09             	shl    edx,0x9
   6b63a:	8b 0c 8d 78 40 01 00 	mov    ecx,DWORD PTR [ecx*4+@obj3:text_id]                          ; fixup: num: 18470, src obj: 1, src ofs: 0x6b63d, dst obj: 3, dst ofs: 0x14078
   6b641:	53                   	push   ebx
   6b642:	89 94 24 f4 20 00 00 	mov    DWORD PTR [esp+0x20f4],edx
   6b649:	8d 54 24 0c          	lea    edx,[esp+0xc]
   6b64d:	68 b2 00 00 00       	push   0xb2
   6b652:	03 94 24 f8 20 00 00 	add    edx,DWORD PTR [esp+0x20f8]
   6b659:	8b 1d c8 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:textfnt2                              ; fixup: num: 18585, src obj: 1, src ofs: 0x6b65b, dst obj: 3, dst ofs: 0x25bc8
   6b65f:	e8 9c e5 fd ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
get_response_branch_47:
   6b664:	8b 94 24 e0 20 00 00 	mov    edx,DWORD PTR [esp+0x20e0]
   6b66b:	89 84 94 00 20 00 00 	mov    DWORD PTR [esp+edx*4+0x2000],eax
   6b672:	85 c0                	test   eax,eax
   6b674:	75 0f                	jne    get_response_branch_48
   6b676:	bb 62 f6 00 00       	mov    ebx,@obj3:convutil_cpp_variable_84                           ; fixup: num: 18584, src obj: 1, src ofs: 0x6b677, dst obj: 3, dst ofs: 0xf662
   6b67b:	ba e2 04 00 00       	mov    edx,0x4e2
   6b680:	e8 ab c9 fc ff       	call   _error_report
get_response_branch_48:
   6b685:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 18473, src obj: 1, src ofs: 0x6b686, dst obj: 3, dst ofs: 0x25a84
   6b68a:	e8 11 26 fe ff       	call   update_mod_84
   6b68f:	30 e4                	xor    ah,ah
   6b691:	89 b4 24 e0 20 00 00 	mov    DWORD PTR [esp+0x20e0],esi
   6b698:	88 a4 24 f4 20 00 00 	mov    BYTE PTR [esp+0x20f4],ah
get_response_branch_49:
   6b69f:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 18472, src obj: 1, src ofs: 0x6b6a1, dst obj: 3, dst ofs: 0x25974
   6b6a6:	0f 85 d0 01 00 00    	jne    get_response_branch_65
   6b6ac:	e9 d0 00 00 00       	jmp    get_response_branch_55
get_response_branch_50:
   6b6b1:	80 bc 24 f8 20 00 00 00 	cmp    BYTE PTR [esp+0x20f8],0x0
   6b6b9:	0f 85 c2 00 00 00    	jne    get_response_branch_55
   6b6bf:	8d 04 b5 00 00 00 00 	lea    eax,[esi*4+0x0]
   6b6c6:	8b 94 04 00 20 00 00 	mov    edx,DWORD PTR [esp+eax*1+0x2000]
   6b6cd:	85 d2                	test   edx,edx
   6b6cf:	74 25                	je     get_response_branch_52
   6b6d1:	89 d0                	mov    eax,edx
   6b6d3:	8b 52 40             	mov    edx,DWORD PTR [edx+0x40]
   6b6d6:	89 94 24 d4 20 00 00 	mov    DWORD PTR [esp+0x20d4],edx
   6b6dd:	85 c0                	test   eax,eax
   6b6df:	74 0c                	je     get_response_branch_51
   6b6e1:	31 d2                	xor    edx,edx
   6b6e3:	e8 38 e8 fd ff       	call   W?$dt:TEXTBM$n()_
   6b6e8:	e8 8b 69 00 00       	call   W?$dln(pnv)v
get_response_branch_51:
   6b6ed:	31 db                	xor    ebx,ebx
   6b6ef:	89 9c b4 00 20 00 00 	mov    DWORD PTR [esp+esi*4+0x2000],ebx
get_response_branch_52:
   6b6f6:	b8 50 00 00 00       	mov    eax,0x50
   6b6fb:	e8 18 68 00 00       	call   W?$nwn(ui)pnv
   6b700:	85 c0                	test   eax,eax
   6b702:	74 3d                	je     get_response_branch_53
   6b704:	68 3c 01 00 00       	push   0x13c
   6b709:	8b 8c 24 d8 20 00 00 	mov    ecx,DWORD PTR [esp+0x20d8]
   6b710:	8b 1d c8 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:textfnt2                              ; fixup: num: 18471, src obj: 1, src ofs: 0x6b712, dst obj: 3, dst ofs: 0x25bc8
   6b716:	89 f2                	mov    edx,esi
   6b718:	6a ce                	push   0xffffffce
   6b71a:	c1 e2 09             	shl    edx,0x9
   6b71d:	51                   	push   ecx
   6b71e:	89 94 24 f4 20 00 00 	mov    DWORD PTR [esp+0x20f4],edx
   6b725:	8d 54 24 0c          	lea    edx,[esp+0xc]
   6b729:	68 b2 00 00 00       	push   0xb2
   6b72e:	03 94 24 f8 20 00 00 	add    edx,DWORD PTR [esp+0x20f8]
   6b735:	8b 0c b5 78 40 01 00 	mov    ecx,DWORD PTR [esi*4+@obj3:text_id]                          ; fixup: num: 18481, src obj: 1, src ofs: 0x6b738, dst obj: 3, dst ofs: 0x14078
   6b73c:	e8 bf e4 fd ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
get_response_branch_53:
   6b741:	89 84 b4 00 20 00 00 	mov    DWORD PTR [esp+esi*4+0x2000],eax
   6b748:	85 c0                	test   eax,eax
   6b74a:	75 0f                	jne    get_response_branch_54
   6b74c:	bb 7a f6 00 00       	mov    ebx,@obj3:convutil_cpp_variable_85                           ; fixup: num: 18480, src obj: 1, src ofs: 0x6b74d, dst obj: 3, dst ofs: 0xf67a
   6b751:	ba fe 04 00 00       	mov    edx,0x4fe
   6b756:	e8 d5 c8 fc ff       	call   _error_report
get_response_branch_54:
   6b75b:	ba 63 00 00 00       	mov    edx,0x63
   6b760:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 18479, src obj: 1, src ofs: 0x6b761, dst obj: 3, dst ofs: 0x25a84
   6b765:	b7 01                	mov    bh,0x1
   6b767:	e8 34 25 fe ff       	call   update_mod_84
   6b76c:	89 94 24 e0 20 00 00 	mov    DWORD PTR [esp+0x20e0],edx
   6b773:	88 bc 24 f4 20 00 00 	mov    BYTE PTR [esp+0x20f4],bh
   6b77a:	88 bc 24 f8 20 00 00 	mov    BYTE PTR [esp+0x20f8],bh
get_response_branch_55:
   6b781:	66 83 3d 08 59 02 00 00 	cmp    WORD PTR ds:@obj3:raw_key,0x0                             ; fixup: num: 18478, src obj: 1, src ofs: 0x6b784, dst obj: 3, dst ofs: 0x25908
   6b789:	0f 84 9a fc ff ff    	je     get_response_branch_34
   6b78f:	0f bf 05 08 59 02 00 	movsx  eax,WORD PTR ds:@obj3:raw_key                                ; fixup: num: 18477, src obj: 1, src ofs: 0x6b792, dst obj: 3, dst ofs: 0x25908
   6b796:	83 f8 02             	cmp    eax,0x2
   6b799:	75 0f                	jne    get_response_branch_56
   6b79b:	83 ff 01             	cmp    edi,0x1
   6b79e:	7c 0a                	jl     get_response_branch_56
   6b7a0:	bd 01 00 00 00       	mov    ebp,0x1
   6b7a5:	e9 ca 00 00 00       	jmp    get_response_branch_64
get_response_branch_56:
   6b7aa:	0f bf 05 08 59 02 00 	movsx  eax,WORD PTR ds:@obj3:raw_key                                ; fixup: num: 18476, src obj: 1, src ofs: 0x6b7ad, dst obj: 3, dst ofs: 0x25908
   6b7b1:	83 f8 03             	cmp    eax,0x3
   6b7b4:	75 0f                	jne    get_response_branch_57
   6b7b6:	83 ff 02             	cmp    edi,0x2
   6b7b9:	7c 0a                	jl     get_response_branch_57
   6b7bb:	bd 02 00 00 00       	mov    ebp,0x2
   6b7c0:	e9 af 00 00 00       	jmp    get_response_branch_64
get_response_branch_57:
   6b7c5:	0f bf 05 08 59 02 00 	movsx  eax,WORD PTR ds:@obj3:raw_key                                ; fixup: num: 18475, src obj: 1, src ofs: 0x6b7c8, dst obj: 3, dst ofs: 0x25908
   6b7cc:	83 f8 04             	cmp    eax,0x4
   6b7cf:	75 0f                	jne    get_response_branch_58
   6b7d1:	83 ff 03             	cmp    edi,0x3
   6b7d4:	7c 0a                	jl     get_response_branch_58
   6b7d6:	bd 03 00 00 00       	mov    ebp,0x3
   6b7db:	e9 94 00 00 00       	jmp    get_response_branch_64
get_response_branch_58:
   6b7e0:	0f bf 05 08 59 02 00 	movsx  eax,WORD PTR ds:@obj3:raw_key                                ; fixup: num: 18474, src obj: 1, src ofs: 0x6b7e3, dst obj: 3, dst ofs: 0x25908
   6b7e7:	83 f8 05             	cmp    eax,0x5
   6b7ea:	75 0f                	jne    get_response_branch_59
   6b7ec:	83 ff 04             	cmp    edi,0x4
   6b7ef:	7c 0a                	jl     get_response_branch_59
   6b7f1:	bd 04 00 00 00       	mov    ebp,0x4
   6b7f6:	e9 79 00 00 00       	jmp    get_response_branch_64
get_response_branch_59:
   6b7fb:	0f bf 05 08 59 02 00 	movsx  eax,WORD PTR ds:@obj3:raw_key                                ; fixup: num: 18489, src obj: 1, src ofs: 0x6b7fe, dst obj: 3, dst ofs: 0x25908
   6b802:	83 f8 06             	cmp    eax,0x6
   6b805:	75 0f                	jne    get_response_branch_60
   6b807:	83 ff 05             	cmp    edi,0x5
   6b80a:	7c 0a                	jl     get_response_branch_60
   6b80c:	bd 05 00 00 00       	mov    ebp,0x5
   6b811:	e9 5e 00 00 00       	jmp    get_response_branch_64
get_response_branch_60:
   6b816:	0f bf 05 08 59 02 00 	movsx  eax,WORD PTR ds:@obj3:raw_key                                ; fixup: num: 18488, src obj: 1, src ofs: 0x6b819, dst obj: 3, dst ofs: 0x25908
   6b81d:	83 f8 07             	cmp    eax,0x7
   6b820:	75 0c                	jne    get_response_branch_61
   6b822:	83 ff 06             	cmp    edi,0x6
   6b825:	7c 07                	jl     get_response_branch_61
   6b827:	bd 06 00 00 00       	mov    ebp,0x6
   6b82c:	eb 46                	jmp    get_response_branch_64
get_response_branch_61:
   6b82e:	0f bf 05 08 59 02 00 	movsx  eax,WORD PTR ds:@obj3:raw_key                                ; fixup: num: 18487, src obj: 1, src ofs: 0x6b831, dst obj: 3, dst ofs: 0x25908
   6b835:	83 f8 08             	cmp    eax,0x8
   6b838:	75 0c                	jne    get_response_branch_62
   6b83a:	83 ff 07             	cmp    edi,0x7
   6b83d:	7c 07                	jl     get_response_branch_62
   6b83f:	bd 07 00 00 00       	mov    ebp,0x7
   6b844:	eb 2e                	jmp    get_response_branch_64
get_response_branch_62:
   6b846:	0f bf 05 08 59 02 00 	movsx  eax,WORD PTR ds:@obj3:raw_key                                ; fixup: num: 18486, src obj: 1, src ofs: 0x6b849, dst obj: 3, dst ofs: 0x25908
   6b84d:	83 f8 09             	cmp    eax,0x9
   6b850:	75 0c                	jne    get_response_branch_63
   6b852:	83 ff 08             	cmp    edi,0x8
   6b855:	7c 07                	jl     get_response_branch_63
   6b857:	bd 08 00 00 00       	mov    ebp,0x8
   6b85c:	eb 16                	jmp    get_response_branch_64
get_response_branch_63:
   6b85e:	0f bf 05 08 59 02 00 	movsx  eax,WORD PTR ds:@obj3:raw_key                                ; fixup: num: 18485, src obj: 1, src ofs: 0x6b861, dst obj: 3, dst ofs: 0x25908
   6b865:	83 f8 0a             	cmp    eax,0xa
   6b868:	75 0a                	jne    get_response_branch_64
   6b86a:	83 ff 09             	cmp    edi,0x9
   6b86d:	7c 05                	jl     get_response_branch_64
   6b86f:	bd 09 00 00 00       	mov    ebp,0x9
get_response_branch_64:
   6b874:	85 ed                	test   ebp,ebp
   6b876:	0f 84 ad fb ff ff    	je     get_response_branch_34
get_response_branch_65:
   6b87c:	bf 84 5a 02 00       	mov    edi,@obj3:the_screen                                         ; fixup: num: 18484, src obj: 1, src ofs: 0x6b87d, dst obj: 3, dst ofs: 0x25a84
   6b881:	be 88 5a 02 00       	mov    esi,@obj3:the_list                                           ; fixup: num: 18483, src obj: 1, src ofs: 0x6b882, dst obj: 3, dst ofs: 0x25a88
   6b886:	31 c9                	xor    ecx,ecx
get_response_branch_66:
   6b888:	3a 0d 74 59 02 00    	cmp    cl,BYTE PTR ds:@obj3:left_button                             ; fixup: num: 18482, src obj: 1, src ofs: 0x6b88a, dst obj: 3, dst ofs: 0x25974
   6b88e:	0f 84 71 00 00 00    	je     get_response_branch_71
   6b894:	89 f8                	mov    eax,edi
   6b896:	e8 05 24 fe ff       	call   update_mod_84
   6b89b:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 18499, src obj: 1, src ofs: 0x6b89c, dst obj: 3, dst ofs: 0x1a1d4
   6b8a0:	e8 fb 00 fa ff       	call   update_mod_9
   6b8a5:	8b 1d 88 5a 02 00    	mov    ebx,DWORD PTR ds:@obj3:the_list                              ; fixup: num: 18498, src obj: 1, src ofs: 0x6b8a7, dst obj: 3, dst ofs: 0x25a88
   6b8ab:	85 db                	test   ebx,ebx
   6b8ad:	75 33                	jne    get_response_branch_69
   6b8af:	eb d7                	jmp    get_response_branch_66
get_response_branch_67:
   6b8b1:	89 d8                	mov    eax,ebx
   6b8b3:	e8 98 1e fd ff       	call   update_mod_76_2
   6b8b8:	84 c0                	test   al,al
   6b8ba:	75 3d                	jne    get_response_branch_70
   6b8bc:	89 da                	mov    edx,ebx
   6b8be:	89 f0                	mov    eax,esi
   6b8c0:	e8 2b 0e fe ff       	call   remove_bitmap
   6b8c5:	85 db                	test   ebx,ebx
   6b8c7:	74 30                	je     get_response_branch_70
   6b8c9:	89 ca                	mov    edx,ecx
   6b8cb:	89 d8                	mov    eax,ebx
   6b8cd:	e8 ce fa fc ff       	call   W?$dt:BTMAP$n()_
   6b8d2:	e8 a1 67 00 00       	call   W?$dln(pnv)v
   6b8d7:	eb 20                	jmp    get_response_branch_70
get_response_branch_68:
   6b8d9:	89 d8                	mov    eax,ebx
   6b8db:	e8 00 12 fd ff       	call   update_mod_76
   6b8e0:	eb 17                	jmp    get_response_branch_70
get_response_branch_69:
   6b8e2:	8b 43 48             	mov    eax,DWORD PTR [ebx+0x48]
   6b8e5:	a3 d4 61 02 00       	mov    ds:@obj3:temp_next,eax                                       ; fixup: num: 18497, src obj: 1, src ofs: 0x6b8e6, dst obj: 3, dst ofs: 0x261d4
   6b8ea:	8b 43 38             	mov    eax,DWORD PTR [ebx+0x38]
   6b8ed:	83 f8 01             	cmp    eax,0x1
   6b8f0:	72 07                	jb     get_response_branch_70
   6b8f2:	76 e5                	jbe    get_response_branch_68
   6b8f4:	83 f8 04             	cmp    eax,0x4
   6b8f7:	74 b8                	je     get_response_branch_67
get_response_branch_70:
   6b8f9:	8b 1d d4 61 02 00    	mov    ebx,DWORD PTR ds:@obj3:temp_next                             ; fixup: num: 18496, src obj: 1, src ofs: 0x6b8fb, dst obj: 3, dst ofs: 0x261d4
   6b8ff:	85 db                	test   ebx,ebx
   6b901:	75 df                	jne    get_response_branch_69
   6b903:	eb 83                	jmp    get_response_branch_66
get_response_branch_71:
   6b905:	8b 84 24 dc 20 00 00 	mov    eax,DWORD PTR [esp+0x20dc]
   6b90c:	40                   	inc    eax
   6b90d:	83 f8 01             	cmp    eax,0x1
   6b910:	75 10                	jne    get_response_branch_72
   6b912:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 18495, src obj: 1, src ofs: 0x6b913, dst obj: 3, dst ofs: 0x25a88
   6b917:	8b 15 68 97 02 00    	mov    edx,DWORD PTR ds:@obj3:textbox1                              ; fixup: num: 18494, src obj: 1, src ofs: 0x6b919, dst obj: 3, dst ofs: 0x29768
   6b91d:	e9 65 00 00 00       	jmp    get_response_branch_78
get_response_branch_72:
   6b922:	83 f8 02             	cmp    eax,0x2
   6b925:	7f 0d                	jg     get_response_branch_73
   6b927:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 18493, src obj: 1, src ofs: 0x6b928, dst obj: 3, dst ofs: 0x25a88
   6b92c:	8b 15 74 97 02 00    	mov    edx,DWORD PTR ds:@obj3:textbox4                              ; fixup: num: 18492, src obj: 1, src ofs: 0x6b92e, dst obj: 3, dst ofs: 0x29774
   6b932:	eb 53                	jmp    get_response_branch_78
get_response_branch_73:
   6b934:	83 f8 03             	cmp    eax,0x3
   6b937:	7f 0d                	jg     get_response_branch_74
   6b939:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 18491, src obj: 1, src ofs: 0x6b93a, dst obj: 3, dst ofs: 0x25a88
   6b93e:	8b 15 74 97 02 00    	mov    edx,DWORD PTR ds:@obj3:textbox4                              ; fixup: num: 18490, src obj: 1, src ofs: 0x6b940, dst obj: 3, dst ofs: 0x29774
   6b944:	eb 41                	jmp    get_response_branch_78
get_response_branch_74:
   6b946:	83 f8 04             	cmp    eax,0x4
   6b949:	7f 0d                	jg     get_response_branch_75
   6b94b:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 18510, src obj: 1, src ofs: 0x6b94c, dst obj: 3, dst ofs: 0x25a88
   6b950:	8b 15 78 97 02 00    	mov    edx,DWORD PTR ds:@obj3:textbox5                              ; fixup: num: 18509, src obj: 1, src ofs: 0x6b952, dst obj: 3, dst ofs: 0x29778
   6b956:	eb 2f                	jmp    get_response_branch_78
get_response_branch_75:
   6b958:	83 f8 05             	cmp    eax,0x5
   6b95b:	7f 0d                	jg     get_response_branch_76
   6b95d:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 18508, src obj: 1, src ofs: 0x6b95e, dst obj: 3, dst ofs: 0x25a88
   6b962:	8b 15 7c 97 02 00    	mov    edx,DWORD PTR ds:@obj3:textbox6                              ; fixup: num: 18507, src obj: 1, src ofs: 0x6b964, dst obj: 3, dst ofs: 0x2977c
   6b968:	eb 1d                	jmp    get_response_branch_78
get_response_branch_76:
   6b96a:	83 f8 06             	cmp    eax,0x6
   6b96d:	7f 0d                	jg     get_response_branch_77
   6b96f:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 18506, src obj: 1, src ofs: 0x6b970, dst obj: 3, dst ofs: 0x25a88
   6b974:	8b 15 7c 97 02 00    	mov    edx,DWORD PTR ds:@obj3:textbox6                              ; fixup: num: 18505, src obj: 1, src ofs: 0x6b976, dst obj: 3, dst ofs: 0x2977c
   6b97a:	eb 0b                	jmp    get_response_branch_78
get_response_branch_77:
   6b97c:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 18504, src obj: 1, src ofs: 0x6b97d, dst obj: 3, dst ofs: 0x25a88
   6b981:	8b 15 80 97 02 00    	mov    edx,DWORD PTR ds:@obj3:textbox7                              ; fixup: num: 18503, src obj: 1, src ofs: 0x6b983, dst obj: 3, dst ofs: 0x29780
get_response_branch_78:
   6b987:	e8 64 0d fe ff       	call   remove_bitmap
   6b98c:	8b 94 24 e4 20 00 00 	mov    edx,DWORD PTR [esp+0x20e4]
   6b993:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 18502, src obj: 1, src ofs: 0x6b994, dst obj: 3, dst ofs: 0x25a88
   6b998:	8b b4 24 c8 20 00 00 	mov    esi,DWORD PTR [esp+0x20c8]
   6b99f:	e8 4c 0d fe ff       	call   remove_bitmap
   6b9a4:	31 c9                	xor    ecx,ecx
   6b9a6:	85 f6                	test   esi,esi
   6b9a8:	7c 4a                	jl     get_response_branch_83
   6b9aa:	8b bc 24 c8 20 00 00 	mov    edi,DWORD PTR [esp+0x20c8]
   6b9b1:	31 db                	xor    ebx,ebx
get_response_branch_79:
   6b9b3:	8b 84 1c 00 20 00 00 	mov    eax,DWORD PTR [esp+ebx*1+0x2000]
   6b9ba:	85 c0                	test   eax,eax
   6b9bc:	75 1d                	jne    get_response_branch_81
   6b9be:	51                   	push   ecx
   6b9bf:	68 92 f6 00 00       	push   @obj3:convutil_cpp_variable_86                               ; fixup: num: 18501, src obj: 1, src ofs: 0x6b9c0, dst obj: 3, dst ofs: 0xf692
   6b9c4:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 18500, src obj: 1, src ofs: 0x6b9c5, dst obj: 3, dst ofs: 0x237fc
   6b9c9:	e8 13 52 00 00       	call   sprintf_
   6b9ce:	83 c4 0c             	add    esp,0xc
get_response_branch_80:
   6b9d1:	41                   	inc    ecx
   6b9d2:	83 c3 04             	add    ebx,0x4
   6b9d5:	39 f9                	cmp    ecx,edi
   6b9d7:	7f 1b                	jg     get_response_branch_83
   6b9d9:	eb d8                	jmp    get_response_branch_79
get_response_branch_81:
   6b9db:	74 0c                	je     get_response_branch_82
   6b9dd:	31 d2                	xor    edx,edx
   6b9df:	e8 3c e5 fd ff       	call   W?$dt:TEXTBM$n()_
   6b9e4:	e8 8f 66 00 00       	call   W?$dln(pnv)v
get_response_branch_82:
   6b9e9:	31 d2                	xor    edx,edx
   6b9eb:	89 94 1c 00 20 00 00 	mov    DWORD PTR [esp+ebx*1+0x2000],edx
   6b9f2:	eb dd                	jmp    get_response_branch_80
get_response_branch_83:
   6b9f4:	85 ed                	test   ebp,ebp
   6b9f6:	75 30                	jne    get_response_branch_85
   6b9f8:	a1 c4 5b 02 00       	mov    eax,ds:@obj3:textfont                                        ; fixup: num: 18514, src obj: 1, src ofs: 0x6b9f9, dst obj: 3, dst ofs: 0x25bc4
   6b9fd:	0f bf 58 40          	movsx  ebx,WORD PTR [eax+0x40]
   6ba01:	8b 15 7c 59 02 00    	mov    edx,DWORD PTR ds:@obj3:mouse_y                               ; fixup: num: 18513, src obj: 1, src ofs: 0x6ba03, dst obj: 3, dst ofs: 0x2597c
   6ba07:	83 ea 22             	sub    edx,0x22
   6ba0a:	83 c3 03             	add    ebx,0x3
   6ba0d:	89 d0                	mov    eax,edx
   6ba0f:	c1 fa 1f             	sar    edx,0x1f
   6ba12:	f7 fb                	idiv   ebx
   6ba14:	83 f8 10             	cmp    eax,0x10
   6ba17:	7c 05                	jl     get_response_branch_84
   6ba19:	b8 0f 00 00 00       	mov    eax,0xf
get_response_branch_84:
   6ba1e:	8b 84 84 80 20 00 00 	mov    eax,DWORD PTR [esp+eax*4+0x2080]
   6ba25:	40                   	inc    eax
   6ba26:	eb 07                	jmp    get_response_branch_86
get_response_branch_85:
   6ba28:	8b 84 ac 40 20 00 00 	mov    eax,DWORD PTR [esp+ebp*4+0x2040]
get_response_branch_86:
   6ba2f:	81 c4 fc 20 00 00    	add    esp,0x20fc
   6ba35:	5d                   	pop    ebp
   6ba36:	5f                   	pop    edi
   6ba37:	5e                   	pop    esi
   6ba38:	5a                   	pop    edx
   6ba39:	59                   	pop    ecx
   6ba3a:	5b                   	pop    ebx
   6ba3b:	c3                   	ret    
   6ba3c:	8d 44 20 00          	lea    eax,[eax+eiz*1+0x0]

;-------------------------------------------------
;  Function 'show_keywords'                      -
;-------------------------------------------------
show_keywords:
   6ba40:	53                   	push   ebx
   6ba41:	51                   	push   ecx
   6ba42:	52                   	push   edx
   6ba43:	56                   	push   esi
   6ba44:	57                   	push   edi
   6ba45:	55                   	push   ebp
   6ba46:	81 ec 70 01 00 00    	sub    esp,0x170
   6ba4c:	89 84 24 4c 01 00 00 	mov    DWORD PTR [esp+0x14c],eax
   6ba53:	b4 01                	mov    ah,0x1
   6ba55:	bb c8 00 00 00       	mov    ebx,0xc8
   6ba5a:	31 d2                	xor    edx,edx
   6ba5c:	88 a4 24 64 01 00 00 	mov    BYTE PTR [esp+0x164],ah
   6ba63:	88 a4 24 68 01 00 00 	mov    BYTE PTR [esp+0x168],ah
   6ba6a:	89 e0                	mov    eax,esp
   6ba6c:	e8 5f 59 00 00       	call   memset_
   6ba71:	31 c0                	xor    eax,eax
   6ba73:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   6ba79:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
   6ba7f:	90                   	nop
show_keywords_branch_1:
   6ba80:	83 c0 04             	add    eax,0x4
   6ba83:	31 d2                	xor    edx,edx
   6ba85:	89 94 04 14 01 00 00 	mov    DWORD PTR [esp+eax*1+0x114],edx
   6ba8c:	83 f8 28             	cmp    eax,0x28
   6ba8f:	75 ef                	jne    show_keywords_branch_1
   6ba91:	be a9 f6 00 00       	mov    esi,@obj3:convutil_cpp_variable_87                           ; fixup: num: 18512, src obj: 1, src ofs: 0x6ba92, dst obj: 3, dst ofs: 0xf6a9
   6ba96:	bf c0 94 02 00       	mov    edi,@obj3:keyword                                            ; fixup: num: 18511, src obj: 1, src ofs: 0x6ba97, dst obj: 3, dst ofs: 0x294c0
   6ba9b:	30 f6                	xor    dh,dh
   6ba9d:	31 db                	xor    ebx,ebx
   6ba9f:	88 35 bf 96 02 00    	mov    BYTE PTR ds:@obj3:cancel,dh                                  ; fixup: num: 18518, src obj: 1, src ofs: 0x6baa1, dst obj: 3, dst ofs: 0x296bf
   6baa5:	57                   	push   edi
show_keywords_branch_2:
   6baa6:	8a 06                	mov    al,BYTE PTR [esi]
   6baa8:	88 07                	mov    BYTE PTR [edi],al
   6baaa:	3c 00                	cmp    al,0x0
   6baac:	74 10                	je     show_keywords_branch_3
   6baae:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   6bab1:	83 c6 02             	add    esi,0x2
   6bab4:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   6bab7:	83 c7 02             	add    edi,0x2
   6baba:	3c 00                	cmp    al,0x0
   6babc:	75 e8                	jne    show_keywords_branch_2
show_keywords_branch_3:
   6babe:	5f                   	pop    edi
   6babf:	89 9c 24 48 01 00 00 	mov    DWORD PTR [esp+0x148],ebx
   6bac6:	89 9c 24 54 01 00 00 	mov    DWORD PTR [esp+0x154],ebx
   6bacd:	ba aa f6 00 00       	mov    edx,@obj3:convutil_cpp_variable_88                           ; fixup: num: 18517, src obj: 1, src ofs: 0x6bace, dst obj: 3, dst ofs: 0xf6aa
   6bad2:	8b 84 24 4c 01 00 00 	mov    eax,DWORD PTR [esp+0x14c]
   6bad9:	bf 22 00 00 00       	mov    edi,0x22
   6bade:	e8 77 59 00 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   6bae3:	31 f6                	xor    esi,esi
   6bae5:	89 bc 24 58 01 00 00 	mov    DWORD PTR [esp+0x158],edi
   6baec:	85 c0                	test   eax,eax
   6baee:	0f 84 27 02 00 00    	je     show_keywords_branch_19
   6baf4:	8b 84 24 4c 01 00 00 	mov    eax,DWORD PTR [esp+0x14c]
   6bafb:	89 84 24 50 01 00 00 	mov    DWORD PTR [esp+0x150],eax
   6bb02:	89 e0                	mov    eax,esp
   6bb04:	31 ed                	xor    ebp,ebp
   6bb06:	89 84 24 44 01 00 00 	mov    DWORD PTR [esp+0x144],eax
show_keywords_branch_4:
   6bb0d:	8b 8c 24 54 01 00 00 	mov    ecx,DWORD PTR [esp+0x154]
   6bb14:	8b 84 24 50 01 00 00 	mov    eax,DWORD PTR [esp+0x150]
   6bb1b:	8b 9c 24 4c 01 00 00 	mov    ebx,DWORD PTR [esp+0x14c]
   6bb22:	8d 51 01             	lea    edx,[ecx+0x1]
   6bb25:	40                   	inc    eax
   6bb26:	01 d9                	add    ecx,ebx
   6bb28:	89 84 24 50 01 00 00 	mov    DWORD PTR [esp+0x150],eax
   6bb2f:	8a 09                	mov    cl,BYTE PTR [ecx]
   6bb31:	89 94 24 54 01 00 00 	mov    DWORD PTR [esp+0x154],edx
   6bb38:	84 c9                	test   cl,cl
   6bb3a:	0f 84 db 01 00 00    	je     show_keywords_branch_19
   6bb40:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 18516, src obj: 1, src ofs: 0x6bb41, dst obj: 3, dst ofs: 0x1a1d4
   6bb45:	e8 56 fe f9 ff       	call   update_mod_9
   6bb4a:	8b 1d 88 5a 02 00    	mov    ebx,DWORD PTR ds:@obj3:the_list                              ; fixup: num: 18515, src obj: 1, src ofs: 0x6bb4c, dst obj: 3, dst ofs: 0x25a88
   6bb50:	eb 51                	jmp    show_keywords_branch_9
show_keywords_branch_5:
   6bb52:	89 d8                	mov    eax,ebx
   6bb54:	e8 f7 1b fd ff       	call   update_mod_76_2
   6bb59:	84 c0                	test   al,al
   6bb5b:	75 40                	jne    show_keywords_branch_8
   6bb5d:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 18522, src obj: 1, src ofs: 0x6bb5e, dst obj: 3, dst ofs: 0x25a88
   6bb62:	89 da                	mov    edx,ebx
   6bb64:	e8 87 0b fe ff       	call   remove_bitmap
   6bb69:	85 db                	test   ebx,ebx
   6bb6b:	74 30                	je     show_keywords_branch_8
   6bb6d:	89 d8                	mov    eax,ebx
   6bb6f:	31 d2                	xor    edx,edx
   6bb71:	e8 2a f8 fc ff       	call   W?$dt:BTMAP$n()_
   6bb76:	e8 fd 64 00 00       	call   W?$dln(pnv)v
   6bb7b:	eb 20                	jmp    show_keywords_branch_8
show_keywords_branch_6:
   6bb7d:	89 d8                	mov    eax,ebx
   6bb7f:	e8 5c 0f fd ff       	call   update_mod_76
   6bb84:	eb 17                	jmp    show_keywords_branch_8
show_keywords_branch_7:
   6bb86:	8b 43 48             	mov    eax,DWORD PTR [ebx+0x48]
   6bb89:	a3 d4 61 02 00       	mov    ds:@obj3:temp_next,eax                                       ; fixup: num: 18521, src obj: 1, src ofs: 0x6bb8a, dst obj: 3, dst ofs: 0x261d4
   6bb8e:	8b 43 38             	mov    eax,DWORD PTR [ebx+0x38]
   6bb91:	83 f8 01             	cmp    eax,0x1
   6bb94:	72 07                	jb     show_keywords_branch_8
   6bb96:	76 e5                	jbe    show_keywords_branch_6
   6bb98:	83 f8 04             	cmp    eax,0x4
   6bb9b:	74 b5                	je     show_keywords_branch_5
show_keywords_branch_8:
   6bb9d:	8b 1d d4 61 02 00    	mov    ebx,DWORD PTR ds:@obj3:temp_next                             ; fixup: num: 18520, src obj: 1, src ofs: 0x6bb9f, dst obj: 3, dst ofs: 0x261d4
show_keywords_branch_9:
   6bba3:	85 db                	test   ebx,ebx
   6bba5:	75 df                	jne    show_keywords_branch_7
   6bba7:	80 f9 2f             	cmp    cl,0x2f
   6bbaa:	74 10                	je     show_keywords_branch_10
   6bbac:	8b 84 24 50 01 00 00 	mov    eax,DWORD PTR [esp+0x150]
   6bbb3:	80 38 00             	cmp    BYTE PTR [eax],0x0
   6bbb6:	0f 85 52 01 00 00    	jne    show_keywords_branch_18
show_keywords_branch_10:
   6bbbc:	80 f9 2f             	cmp    cl,0x2f
   6bbbf:	74 08                	je     show_keywords_branch_11
   6bbc1:	46                   	inc    esi
   6bbc2:	88 8c 34 c7 00 00 00 	mov    BYTE PTR [esp+esi*1+0xc7],cl
show_keywords_branch_11:
   6bbc9:	30 ff                	xor    bh,bh
   6bbcb:	8d 46 02             	lea    eax,[esi+0x2]
   6bbce:	88 bc 34 c8 00 00 00 	mov    BYTE PTR [esp+esi*1+0xc8],bh
   6bbd5:	e8 b9 58 00 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   6bbda:	89 84 2c 18 01 00 00 	mov    DWORD PTR [esp+ebp*1+0x118],eax
   6bbe1:	85 c0                	test   eax,eax
   6bbe3:	75 0f                	jne    show_keywords_branch_12
   6bbe5:	bb ab f6 00 00       	mov    ebx,@obj3:convutil_cpp_variable_89                           ; fixup: num: 18519, src obj: 1, src ofs: 0x6bbe6, dst obj: 3, dst ofs: 0xf6ab
   6bbea:	ba a2 05 00 00       	mov    edx,0x5a2
   6bbef:	e8 3c c4 fc ff       	call   _error_report
show_keywords_branch_12:
   6bbf4:	8d bc 24 c8 00 00 00 	lea    edi,[esp+0xc8]
   6bbfb:	46                   	inc    esi
   6bbfc:	29 c9                	sub    ecx,ecx
   6bbfe:	49                   	dec    ecx
   6bbff:	31 c0                	xor    eax,eax
   6bc01:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
   6bc03:	f7 d1                	not    ecx
   6bc05:	49                   	dec    ecx
   6bc06:	39 f1                	cmp    ecx,esi
   6bc08:	72 36                	jb     show_keywords_branch_13
   6bc0a:	56                   	push   esi
   6bc0b:	8d bc 24 cc 00 00 00 	lea    edi,[esp+0xcc]
   6bc12:	29 c9                	sub    ecx,ecx
   6bc14:	49                   	dec    ecx
   6bc15:	31 c0                	xor    eax,eax
   6bc17:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
   6bc19:	f7 d1                	not    ecx
   6bc1b:	49                   	dec    ecx
   6bc1c:	51                   	push   ecx
   6bc1d:	68 c3 f6 00 00       	push   @obj3:convutil_cpp_variable_90                               ; fixup: num: 18527, src obj: 1, src ofs: 0x6bc1e, dst obj: 3, dst ofs: 0xf6c3
   6bc22:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 18526, src obj: 1, src ofs: 0x6bc23, dst obj: 3, dst ofs: 0x237fc
   6bc27:	bb fc 37 02 00       	mov    ebx,@obj3:log_buffer                                         ; fixup: num: 18525, src obj: 1, src ofs: 0x6bc28, dst obj: 3, dst ofs: 0x237fc
   6bc2c:	e8 b0 4f 00 00       	call   sprintf_
   6bc31:	83 c4 10             	add    esp,0x10
   6bc34:	ba a7 05 00 00       	mov    edx,0x5a7
   6bc39:	31 c0                	xor    eax,eax
   6bc3b:	e8 f0 c3 fc ff       	call   _error_report
show_keywords_branch_13:
   6bc40:	8d b4 24 c8 00 00 00 	lea    esi,[esp+0xc8]
   6bc47:	8b bc 2c 18 01 00 00 	mov    edi,DWORD PTR [esp+ebp*1+0x118]
   6bc4e:	57                   	push   edi
show_keywords_branch_14:
   6bc4f:	8a 06                	mov    al,BYTE PTR [esi]
   6bc51:	88 07                	mov    BYTE PTR [edi],al
   6bc53:	3c 00                	cmp    al,0x0
   6bc55:	74 10                	je     show_keywords_branch_15
   6bc57:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   6bc5a:	83 c6 02             	add    esi,0x2
   6bc5d:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   6bc60:	83 c7 02             	add    edi,0x2
   6bc63:	3c 00                	cmp    al,0x0
   6bc65:	75 e8                	jne    show_keywords_branch_14
show_keywords_branch_15:
   6bc67:	5f                   	pop    edi
   6bc68:	8b b4 24 48 01 00 00 	mov    esi,DWORD PTR [esp+0x148]
   6bc6f:	56                   	push   esi
   6bc70:	68 e6 f6 00 00       	push   @obj3:convutil_cpp_variable_91                               ; fixup: num: 18524, src obj: 1, src ofs: 0x6bc71, dst obj: 3, dst ofs: 0xf6e6
   6bc75:	8b bc 24 4c 01 00 00 	mov    edi,DWORD PTR [esp+0x14c]
   6bc7c:	57                   	push   edi
   6bc7d:	e8 5f 4f 00 00       	call   sprintf_
   6bc82:	83 c4 0c             	add    esp,0xc
   6bc85:	b8 50 00 00 00       	mov    eax,0x50
   6bc8a:	e8 89 62 00 00       	call   W?$nwn(ui)pnv
   6bc8f:	85 c0                	test   eax,eax
   6bc91:	74 25                	je     show_keywords_branch_16
   6bc93:	6a 00                	push   0x0
   6bc95:	6a ce                	push   0xffffffce
   6bc97:	8b 94 24 60 01 00 00 	mov    edx,DWORD PTR [esp+0x160]
   6bc9e:	52                   	push   edx
   6bc9f:	8b 1d c8 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:textfnt2                              ; fixup: num: 18523, src obj: 1, src ofs: 0x6bca1, dst obj: 3, dst ofs: 0x25bc8
   6bca5:	68 b2 00 00 00       	push   0xb2
   6bcaa:	89 f9                	mov    ecx,edi
   6bcac:	8b 94 2c 28 01 00 00 	mov    edx,DWORD PTR [esp+ebp*1+0x128]
   6bcb3:	e8 48 df fd ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
show_keywords_branch_16:
   6bcb8:	85 c0                	test   eax,eax
   6bcba:	75 0f                	jne    show_keywords_branch_17
   6bcbc:	bb f2 f6 00 00       	mov    ebx,@obj3:convutil_cpp_variable_92                           ; fixup: num: 18437, src obj: 1, src ofs: 0x6bcbd, dst obj: 3, dst ofs: 0xf6f2
   6bcc1:	ba b2 05 00 00       	mov    edx,0x5b2
   6bcc6:	e8 65 c3 fc ff       	call   _error_report
show_keywords_branch_17:
   6bccb:	8b 9c 24 58 01 00 00 	mov    ebx,DWORD PTR [esp+0x158]
   6bcd2:	8b 8c 24 44 01 00 00 	mov    ecx,DWORD PTR [esp+0x144]
   6bcd9:	8b bc 24 48 01 00 00 	mov    edi,DWORD PTR [esp+0x148]
   6bce0:	a1 c8 5b 02 00       	mov    eax,ds:@obj3:textfnt2                                        ; fixup: num: 18436, src obj: 1, src ofs: 0x6bce1, dst obj: 3, dst ofs: 0x25bc8
   6bce5:	83 c5 04             	add    ebp,0x4
   6bce8:	31 f6                	xor    esi,esi
   6bcea:	83 c1 14             	add    ecx,0x14
   6bced:	47                   	inc    edi
   6bcee:	0f bf 40 40          	movsx  eax,WORD PTR [eax+0x40]
   6bcf2:	89 8c 24 44 01 00 00 	mov    DWORD PTR [esp+0x144],ecx
   6bcf9:	01 c3                	add    ebx,eax
   6bcfb:	89 bc 24 48 01 00 00 	mov    DWORD PTR [esp+0x148],edi
   6bd02:	89 9c 24 58 01 00 00 	mov    DWORD PTR [esp+0x158],ebx
   6bd09:	e9 ff fd ff ff       	jmp    show_keywords_branch_4
show_keywords_branch_18:
   6bd0e:	46                   	inc    esi
   6bd0f:	88 8c 34 c7 00 00 00 	mov    BYTE PTR [esp+esi*1+0xc7],cl
   6bd16:	e9 f2 fd ff ff       	jmp    show_keywords_branch_4
show_keywords_branch_19:
   6bd1b:	8b 94 24 48 01 00 00 	mov    edx,DWORD PTR [esp+0x148]
   6bd22:	a1 30 24 03 00       	mov    eax,ds:@obj3:bye_str                                         ; fixup: num: 18435, src obj: 1, src ofs: 0x6bd23, dst obj: 3, dst ofs: 0x32430
   6bd27:	89 84 94 18 01 00 00 	mov    DWORD PTR [esp+edx*4+0x118],eax
   6bd2e:	b8 50 00 00 00       	mov    eax,0x50
   6bd33:	e8 e0 61 00 00       	call   W?$nwn(ui)pnv
   6bd38:	89 c6                	mov    esi,eax
   6bd3a:	85 c0                	test   eax,eax
   6bd3c:	74 3a                	je     show_keywords_branch_20
   6bd3e:	6a 00                	push   0x0
   6bd40:	8b ac 24 5c 01 00 00 	mov    ebp,DWORD PTR [esp+0x15c]
   6bd47:	8d 4c 24 04          	lea    ecx,[esp+0x4]
   6bd4b:	8d 04 95 00 00 00 00 	lea    eax,[edx*4+0x0]
   6bd52:	6a ce                	push   0xffffffce
   6bd54:	8b 1d c8 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:textfnt2                              ; fixup: num: 18434, src obj: 1, src ofs: 0x6bd56, dst obj: 3, dst ofs: 0x25bc8
   6bd5a:	01 d0                	add    eax,edx
   6bd5c:	55                   	push   ebp
   6bd5d:	8b 15 30 24 03 00    	mov    edx,DWORD PTR ds:@obj3:bye_str                               ; fixup: num: 18448, src obj: 1, src ofs: 0x6bd5f, dst obj: 3, dst ofs: 0x32430
   6bd63:	8d 04 85 00 00 00 00 	lea    eax,[eax*4+0x0]
   6bd6a:	68 b2 00 00 00       	push   0xb2
   6bd6f:	01 c1                	add    ecx,eax
   6bd71:	89 f0                	mov    eax,esi
   6bd73:	e8 88 de fd ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
show_keywords_branch_20:
   6bd78:	85 c0                	test   eax,eax
   6bd7a:	75 0f                	jne    show_keywords_branch_21
   6bd7c:	bb 0a f7 00 00       	mov    ebx,@obj3:convutil_cpp_variable_93                           ; fixup: num: 18447, src obj: 1, src ofs: 0x6bd7d, dst obj: 3, dst ofs: 0xf70a
   6bd81:	ba c3 05 00 00       	mov    edx,0x5c3
   6bd86:	e8 a5 c2 fc ff       	call   _error_report
show_keywords_branch_21:
   6bd8b:	b8 50 00 00 00       	mov    eax,0x50
   6bd90:	e8 83 61 00 00       	call   W?$nwn(ui)pnv
   6bd95:	85 c0                	test   eax,eax
   6bd97:	74 23                	je     show_keywords_branch_22
   6bd99:	6a 00                	push   0x0
   6bd9b:	6a ce                	push   0xffffffce
   6bd9d:	68 b7 00 00 00       	push   0xb7
   6bda2:	b9 22 f7 00 00       	mov    ecx,@obj3:convutil_cpp_variable_94                           ; fixup: num: 18446, src obj: 1, src ofs: 0x6bda3, dst obj: 3, dst ofs: 0xf722
   6bda7:	68 ab 00 00 00       	push   0xab
   6bdac:	ba 2d f7 00 00       	mov    edx,@obj3:convutil_cpp_variable_95                           ; fixup: num: 18445, src obj: 1, src ofs: 0x6bdad, dst obj: 3, dst ofs: 0xf72d
   6bdb1:	8b 1d c8 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:textfnt2                              ; fixup: num: 18444, src obj: 1, src ofs: 0x6bdb3, dst obj: 3, dst ofs: 0x25bc8
   6bdb7:	e8 44 de fd ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
show_keywords_branch_22:
   6bdbc:	85 c0                	test   eax,eax
   6bdbe:	75 0f                	jne    show_keywords_branch_23
   6bdc0:	bb 33 f7 00 00       	mov    ebx,@obj3:convutil_cpp_variable_96                           ; fixup: num: 18443, src obj: 1, src ofs: 0x6bdc1, dst obj: 3, dst ofs: 0xf733
   6bdc5:	ba c6 05 00 00       	mov    edx,0x5c6
   6bdca:	e8 61 c2 fc ff       	call   _error_report
show_keywords_branch_23:
   6bdcf:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 18442, src obj: 1, src ofs: 0x6bdd0, dst obj: 3, dst ofs: 0x25a88
   6bdd4:	8b ac 24 48 01 00 00 	mov    ebp,DWORD PTR [esp+0x148]
   6bddb:	8b 15 64 97 02 00    	mov    edx,DWORD PTR ds:@obj3:keyw_box                              ; fixup: num: 18441, src obj: 1, src ofs: 0x6bddd, dst obj: 3, dst ofs: 0x29764
   6bde1:	bf 84 5a 02 00       	mov    edi,@obj3:the_screen                                         ; fixup: num: 18440, src obj: 1, src ofs: 0x6bde2, dst obj: 3, dst ofs: 0x25a84
   6bde6:	e8 45 03 fe ff       	call   insert_bitmap
   6bdeb:	b8 63 00 00 00       	mov    eax,0x63
   6bdf0:	be 88 5a 02 00       	mov    esi,@obj3:the_list                                           ; fixup: num: 18439, src obj: 1, src ofs: 0x6bdf1, dst obj: 3, dst ofs: 0x25a88
   6bdf5:	89 84 24 60 01 00 00 	mov    DWORD PTR [esp+0x160],eax
   6bdfc:	31 c9                	xor    ecx,ecx
show_keywords_branch_24:
   6bdfe:	31 c0                	xor    eax,eax
   6be00:	a0 74 59 02 00       	mov    al,ds:@obj3:left_button                                      ; fixup: num: 18438, src obj: 1, src ofs: 0x6be01, dst obj: 3, dst ofs: 0x25974
   6be05:	83 f8 01             	cmp    eax,0x1
   6be08:	0f 85 74 00 00 00    	jne    show_keywords_branch_29
   6be0e:	89 f8                	mov    eax,edi
   6be10:	e8 8b 1e fe ff       	call   update_mod_84
   6be15:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 18455, src obj: 1, src ofs: 0x6be16, dst obj: 3, dst ofs: 0x1a1d4
   6be1a:	e8 81 fb f9 ff       	call   update_mod_9
   6be1f:	8b 1d 88 5a 02 00    	mov    ebx,DWORD PTR ds:@obj3:the_list                              ; fixup: num: 18454, src obj: 1, src ofs: 0x6be21, dst obj: 3, dst ofs: 0x25a88
   6be25:	85 db                	test   ebx,ebx
   6be27:	75 33                	jne    show_keywords_branch_27
   6be29:	eb d3                	jmp    show_keywords_branch_24
show_keywords_branch_25:
   6be2b:	89 d8                	mov    eax,ebx
   6be2d:	e8 1e 19 fd ff       	call   update_mod_76_2
   6be32:	84 c0                	test   al,al
   6be34:	75 3d                	jne    show_keywords_branch_28
   6be36:	89 da                	mov    edx,ebx
   6be38:	89 f0                	mov    eax,esi
   6be3a:	e8 b1 08 fe ff       	call   remove_bitmap
   6be3f:	85 db                	test   ebx,ebx
   6be41:	74 30                	je     show_keywords_branch_28
   6be43:	89 ca                	mov    edx,ecx
   6be45:	89 d8                	mov    eax,ebx
   6be47:	e8 54 f5 fc ff       	call   W?$dt:BTMAP$n()_
   6be4c:	e8 27 62 00 00       	call   W?$dln(pnv)v
   6be51:	eb 20                	jmp    show_keywords_branch_28
show_keywords_branch_26:
   6be53:	89 d8                	mov    eax,ebx
   6be55:	e8 86 0c fd ff       	call   update_mod_76
   6be5a:	eb 17                	jmp    show_keywords_branch_28
show_keywords_branch_27:
   6be5c:	8b 43 48             	mov    eax,DWORD PTR [ebx+0x48]
   6be5f:	a3 d4 61 02 00       	mov    ds:@obj3:temp_next,eax                                       ; fixup: num: 18453, src obj: 1, src ofs: 0x6be60, dst obj: 3, dst ofs: 0x261d4
   6be64:	8b 43 38             	mov    eax,DWORD PTR [ebx+0x38]
   6be67:	83 f8 01             	cmp    eax,0x1
   6be6a:	72 07                	jb     show_keywords_branch_28
   6be6c:	76 e5                	jbe    show_keywords_branch_26
   6be6e:	83 f8 04             	cmp    eax,0x4
   6be71:	74 b8                	je     show_keywords_branch_25
show_keywords_branch_28:
   6be73:	8b 1d d4 61 02 00    	mov    ebx,DWORD PTR ds:@obj3:temp_next                             ; fixup: num: 18452, src obj: 1, src ofs: 0x6be75, dst obj: 3, dst ofs: 0x261d4
   6be79:	85 db                	test   ebx,ebx
   6be7b:	75 df                	jne    show_keywords_branch_27
   6be7d:	e9 7c ff ff ff       	jmp    show_keywords_branch_24
show_keywords_branch_29:
   6be82:	31 d2                	xor    edx,edx
show_keywords_branch_30:
   6be84:	66 3b 15 08 59 02 00 	cmp    dx,WORD PTR ds:@obj3:raw_key                                 ; fixup: num: 18451, src obj: 1, src ofs: 0x6be87, dst obj: 3, dst ofs: 0x25908
   6be8b:	74 09                	je     show_keywords_branch_31
   6be8d:	66 89 15 08 59 02 00 	mov    WORD PTR ds:@obj3:raw_key,dx                                 ; fixup: num: 18450, src obj: 1, src ofs: 0x6be90, dst obj: 3, dst ofs: 0x25908
   6be94:	eb ee                	jmp    show_keywords_branch_30
show_keywords_branch_31:
   6be96:	8b 94 24 48 01 00 00 	mov    edx,DWORD PTR [esp+0x148]
   6be9d:	a1 c8 5b 02 00       	mov    eax,ds:@obj3:textfnt2                                        ; fixup: num: 18449, src obj: 1, src ofs: 0x6be9e, dst obj: 3, dst ofs: 0x25bc8
   6bea2:	42                   	inc    edx
   6bea3:	0f bf 40 40          	movsx  eax,WORD PTR [eax+0x40]
   6bea7:	0f af c2             	imul   eax,edx
   6beaa:	83 c0 21             	add    eax,0x21
   6bead:	31 f6                	xor    esi,esi
   6beaf:	89 84 24 40 01 00 00 	mov    DWORD PTR [esp+0x140],eax
show_keywords_branch_32:
   6beb6:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 18465, src obj: 1, src ofs: 0x6beb7, dst obj: 3, dst ofs: 0x25a84
   6bebb:	e8 e0 1d fe ff       	call   update_mod_84
   6bec0:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 18464, src obj: 1, src ofs: 0x6bec1, dst obj: 3, dst ofs: 0x1a1d4
   6bec5:	e8 d6 fa f9 ff       	call   update_mod_9
   6beca:	8b 1d 88 5a 02 00    	mov    ebx,DWORD PTR ds:@obj3:the_list                              ; fixup: num: 18463, src obj: 1, src ofs: 0x6becc, dst obj: 3, dst ofs: 0x25a88
   6bed0:	eb 51                	jmp    show_keywords_branch_37
show_keywords_branch_33:
   6bed2:	89 d8                	mov    eax,ebx
   6bed4:	e8 77 18 fd ff       	call   update_mod_76_2
   6bed9:	84 c0                	test   al,al
   6bedb:	75 40                	jne    show_keywords_branch_36
   6bedd:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 18462, src obj: 1, src ofs: 0x6bede, dst obj: 3, dst ofs: 0x25a88
   6bee2:	89 da                	mov    edx,ebx
   6bee4:	e8 07 08 fe ff       	call   remove_bitmap
   6bee9:	85 db                	test   ebx,ebx
   6beeb:	74 30                	je     show_keywords_branch_36
   6beed:	89 d8                	mov    eax,ebx
   6beef:	31 d2                	xor    edx,edx
   6bef1:	e8 aa f4 fc ff       	call   W?$dt:BTMAP$n()_
   6bef6:	e8 7d 61 00 00       	call   W?$dln(pnv)v
   6befb:	eb 20                	jmp    show_keywords_branch_36
show_keywords_branch_34:
   6befd:	89 d8                	mov    eax,ebx
   6beff:	e8 dc 0b fd ff       	call   update_mod_76
   6bf04:	eb 17                	jmp    show_keywords_branch_36
show_keywords_branch_35:
   6bf06:	8b 43 48             	mov    eax,DWORD PTR [ebx+0x48]
   6bf09:	a3 d4 61 02 00       	mov    ds:@obj3:temp_next,eax                                       ; fixup: num: 18461, src obj: 1, src ofs: 0x6bf0a, dst obj: 3, dst ofs: 0x261d4
   6bf0e:	8b 43 38             	mov    eax,DWORD PTR [ebx+0x38]
   6bf11:	83 f8 01             	cmp    eax,0x1
   6bf14:	72 07                	jb     show_keywords_branch_36
   6bf16:	76 e5                	jbe    show_keywords_branch_34
   6bf18:	83 f8 04             	cmp    eax,0x4
   6bf1b:	74 b5                	je     show_keywords_branch_33
show_keywords_branch_36:
   6bf1d:	8b 1d d4 61 02 00    	mov    ebx,DWORD PTR ds:@obj3:temp_next                             ; fixup: num: 18460, src obj: 1, src ofs: 0x6bf1f, dst obj: 3, dst ofs: 0x261d4
show_keywords_branch_37:
   6bf23:	85 db                	test   ebx,ebx
   6bf25:	75 df                	jne    show_keywords_branch_35
   6bf27:	81 3d 78 59 02 00 a7 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0xa7                     ; fixup: num: 18459, src obj: 1, src ofs: 0x6bf29, dst obj: 3, dst ofs: 0x25978
   6bf31:	0f 8e b7 01 00 00    	jle    show_keywords_branch_46
   6bf37:	81 3d 78 59 02 00 e3 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x1e3                    ; fixup: num: 18458, src obj: 1, src ofs: 0x6bf39, dst obj: 3, dst ofs: 0x25978
   6bf41:	0f 8d a7 01 00 00    	jge    show_keywords_branch_46
   6bf47:	83 3d 7c 59 02 00 22 	cmp    DWORD PTR ds:@obj3:mouse_y,0x22                              ; fixup: num: 18457, src obj: 1, src ofs: 0x6bf49, dst obj: 3, dst ofs: 0x2597c
   6bf4e:	0f 8c 9a 01 00 00    	jl     show_keywords_branch_46
   6bf54:	a1 7c 59 02 00       	mov    eax,ds:@obj3:mouse_y                                         ; fixup: num: 18456, src obj: 1, src ofs: 0x6bf55, dst obj: 3, dst ofs: 0x2597c
   6bf59:	3b 84 24 40 01 00 00 	cmp    eax,DWORD PTR [esp+0x140]
   6bf60:	0f 8d 88 01 00 00    	jge    show_keywords_branch_46
   6bf66:	30 ed                	xor    ch,ch
   6bf68:	a1 c8 5b 02 00       	mov    eax,ds:@obj3:textfnt2                                        ; fixup: num: 18469, src obj: 1, src ofs: 0x6bf69, dst obj: 3, dst ofs: 0x25bc8
   6bf6d:	88 ac 24 6c 01 00 00 	mov    BYTE PTR [esp+0x16c],ch
   6bf74:	0f bf 58 40          	movsx  ebx,WORD PTR [eax+0x40]
   6bf78:	8b 15 7c 59 02 00    	mov    edx,DWORD PTR ds:@obj3:mouse_y                               ; fixup: num: 18468, src obj: 1, src ofs: 0x6bf7a, dst obj: 3, dst ofs: 0x2597c
   6bf7e:	83 ea 22             	sub    edx,0x22
   6bf81:	89 d0                	mov    eax,edx
   6bf83:	c1 fa 1f             	sar    edx,0x1f
   6bf86:	f7 fb                	idiv   ebx
   6bf88:	89 c5                	mov    ebp,eax
   6bf8a:	3b ac 24 60 01 00 00 	cmp    ebp,DWORD PTR [esp+0x160]
   6bf91:	75 0e                	jne    show_keywords_branch_38
   6bf93:	80 bc 24 64 01 00 00 00 	cmp    BYTE PTR [esp+0x164],0x0
   6bf9b:	0f 84 3b 01 00 00    	je     show_keywords_branch_45
show_keywords_branch_38:
   6bfa1:	6b d5 14             	imul   edx,ebp,0x14
   6bfa4:	89 e0                	mov    eax,esp
   6bfa6:	01 c2                	add    edx,eax
   6bfa8:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 18467, src obj: 1, src ofs: 0x6bfa9, dst obj: 3, dst ofs: 0x25a88
   6bfad:	e8 3e 01 fe ff       	call   get_bitmap
   6bfb2:	85 c0                	test   eax,eax
   6bfb4:	74 0e                	je     show_keywords_branch_39
   6bfb6:	74 0c                	je     show_keywords_branch_39
   6bfb8:	31 d2                	xor    edx,edx
   6bfba:	e8 61 df fd ff       	call   W?$dt:TEXTBM$n()_
   6bfbf:	e8 b4 60 00 00       	call   W?$dln(pnv)v
show_keywords_branch_39:
   6bfc4:	b8 50 00 00 00       	mov    eax,0x50
   6bfc9:	e8 4a 5f 00 00       	call   W?$nwn(ui)pnv
   6bfce:	85 c0                	test   eax,eax
   6bfd0:	74 2f                	je     show_keywords_branch_40
   6bfd2:	8b 1d c4 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:textfont                              ; fixup: num: 18466, src obj: 1, src ofs: 0x6bfd4, dst obj: 3, dst ofs: 0x25bc4
   6bfd8:	0f bf 53 40          	movsx  edx,WORD PTR [ebx+0x40]
   6bfdc:	0f af d5             	imul   edx,ebp
   6bfdf:	6b cd 14             	imul   ecx,ebp,0x14
   6bfe2:	6a 00                	push   0x0
   6bfe4:	6a ce                	push   0xffffffce
   6bfe6:	83 c2 22             	add    edx,0x22
   6bfe9:	52                   	push   edx
   6bfea:	8d 54 24 0c          	lea    edx,[esp+0xc]
   6bfee:	68 b2 00 00 00       	push   0xb2
   6bff3:	01 d1                	add    ecx,edx
   6bff5:	8b 94 ac 28 01 00 00 	mov    edx,DWORD PTR [esp+ebp*4+0x128]
   6bffc:	e8 ff db fd ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
show_keywords_branch_40:
   6c001:	85 c0                	test   eax,eax
   6c003:	75 0f                	jne    show_keywords_branch_41
   6c005:	bb 4b f7 00 00       	mov    ebx,@obj3:convutil_cpp_variable_97                           ; fixup: num: 18719, src obj: 1, src ofs: 0x6c006, dst obj: 3, dst ofs: 0xf74b
   6c00a:	ba 09 06 00 00       	mov    edx,0x609
   6c00f:	e8 1c c0 fc ff       	call   _error_report
show_keywords_branch_41:
   6c014:	8b 94 ac 18 01 00 00 	mov    edx,DWORD PTR [esp+ebp*4+0x118]
   6c01b:	52                   	push   edx
   6c01c:	68 63 f7 00 00       	push   @obj3:convutil_cpp_variable_98                               ; fixup: num: 18724, src obj: 1, src ofs: 0x6c01d, dst obj: 3, dst ofs: 0xf763
   6c021:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 18723, src obj: 1, src ofs: 0x6c022, dst obj: 3, dst ofs: 0x237fc
   6c026:	e8 b6 4b 00 00       	call   sprintf_
   6c02b:	83 c4 0c             	add    esp,0xc
   6c02e:	31 c0                	xor    eax,eax
   6c030:	8a 84 24 64 01 00 00 	mov    al,BYTE PTR [esp+0x164]
   6c037:	85 c0                	test   eax,eax
   6c039:	0f 85 83 00 00 00    	jne    show_keywords_branch_44
   6c03f:	6b 94 24 60 01 00 00 14 	imul   edx,DWORD PTR [esp+0x160],0x14
   6c047:	89 e0                	mov    eax,esp
   6c049:	01 c2                	add    edx,eax
   6c04b:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 18722, src obj: 1, src ofs: 0x6c04c, dst obj: 3, dst ofs: 0x25a88
   6c050:	e8 9b 00 fe ff       	call   get_bitmap
   6c055:	85 c0                	test   eax,eax
   6c057:	74 0e                	je     show_keywords_branch_42
   6c059:	74 0c                	je     show_keywords_branch_42
   6c05b:	31 d2                	xor    edx,edx
   6c05d:	e8 be de fd ff       	call   W?$dt:TEXTBM$n()_
   6c062:	e8 11 60 00 00       	call   W?$dln(pnv)v
show_keywords_branch_42:
   6c067:	b8 50 00 00 00       	mov    eax,0x50
   6c06c:	e8 a7 5e 00 00       	call   W?$nwn(ui)pnv
   6c071:	85 c0                	test   eax,eax
   6c073:	74 3a                	je     show_keywords_branch_43
   6c075:	8b 1d c8 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:textfnt2                              ; fixup: num: 18721, src obj: 1, src ofs: 0x6c077, dst obj: 3, dst ofs: 0x25bc8
   6c07b:	8b 8c 24 60 01 00 00 	mov    ecx,DWORD PTR [esp+0x160]
   6c082:	0f bf 53 40          	movsx  edx,WORD PTR [ebx+0x40]
   6c086:	0f af d1             	imul   edx,ecx
   6c089:	89 cf                	mov    edi,ecx
   6c08b:	6b c9 14             	imul   ecx,ecx,0x14
   6c08e:	6a 00                	push   0x0
   6c090:	6a ce                	push   0xffffffce
   6c092:	83 c2 22             	add    edx,0x22
   6c095:	52                   	push   edx
   6c096:	8d 54 24 0c          	lea    edx,[esp+0xc]
   6c09a:	01 d1                	add    ecx,edx
   6c09c:	89 fa                	mov    edx,edi
   6c09e:	68 b2 00 00 00       	push   0xb2
   6c0a3:	8b 94 94 28 01 00 00 	mov    edx,DWORD PTR [esp+edx*4+0x128]
   6c0aa:	e8 51 db fd ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
show_keywords_branch_43:
   6c0af:	85 c0                	test   eax,eax
   6c0b1:	75 0f                	jne    show_keywords_branch_44
   6c0b3:	bb 6f f7 00 00       	mov    ebx,@obj3:convutil_cpp_variable_99                           ; fixup: num: 18720, src obj: 1, src ofs: 0x6c0b4, dst obj: 3, dst ofs: 0xf76f
   6c0b8:	ba 25 06 00 00       	mov    edx,0x625
   6c0bd:	e8 6e bf fc ff       	call   _error_report
show_keywords_branch_44:
   6c0c2:	30 e4                	xor    ah,ah
   6c0c4:	88 a4 24 64 01 00 00 	mov    BYTE PTR [esp+0x164],ah
   6c0cb:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 18732, src obj: 1, src ofs: 0x6c0cc, dst obj: 3, dst ofs: 0x25a84
   6c0d0:	89 ac 24 60 01 00 00 	mov    DWORD PTR [esp+0x160],ebp
   6c0d7:	e8 c4 1b fe ff       	call   update_mod_84
show_keywords_branch_45:
   6c0dc:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 18731, src obj: 1, src ofs: 0x6c0de, dst obj: 3, dst ofs: 0x25974
   6c0e3:	0f 85 5a 03 00 00    	jne    show_keywords_branch_69
   6c0e9:	e9 ef 02 00 00       	jmp    show_keywords_branch_66
show_keywords_branch_46:
   6c0ee:	81 3d 78 59 02 00 a7 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0xa7                     ; fixup: num: 18730, src obj: 1, src ofs: 0x6c0f0, dst obj: 3, dst ofs: 0x25978
   6c0f8:	0f 8e b7 01 00 00    	jle    show_keywords_branch_58
   6c0fe:	81 3d 78 59 02 00 e3 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x1e3                    ; fixup: num: 18729, src obj: 1, src ofs: 0x6c100, dst obj: 3, dst ofs: 0x25978
   6c108:	0f 8d a7 01 00 00    	jge    show_keywords_branch_58
   6c10e:	81 3d 7c 59 02 00 aa 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0xaa                     ; fixup: num: 18728, src obj: 1, src ofs: 0x6c110, dst obj: 3, dst ofs: 0x2597c
   6c118:	0f 8c 97 01 00 00    	jl     show_keywords_branch_58
   6c11e:	81 3d 7c 59 02 00 c1 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0xc1                     ; fixup: num: 18727, src obj: 1, src ofs: 0x6c120, dst obj: 3, dst ofs: 0x2597c
   6c128:	0f 8f 87 01 00 00    	jg     show_keywords_branch_58
   6c12e:	80 bc 24 68 01 00 00 00 	cmp    BYTE PTR [esp+0x168],0x0
   6c136:	0f 84 78 00 00 00    	je     show_keywords_branch_50
   6c13c:	ba 87 f7 00 00       	mov    edx,@obj3:convutil_cpp_variable_100                          ; fixup: num: 18726, src obj: 1, src ofs: 0x6c13d, dst obj: 3, dst ofs: 0xf787
   6c141:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 18725, src obj: 1, src ofs: 0x6c142, dst obj: 3, dst ofs: 0x25a88
   6c146:	e8 a5 ff fd ff       	call   get_bitmap
   6c14b:	85 c0                	test   eax,eax
   6c14d:	74 0e                	je     show_keywords_branch_47
   6c14f:	74 0c                	je     show_keywords_branch_47
   6c151:	31 d2                	xor    edx,edx
   6c153:	e8 c8 dd fd ff       	call   W?$dt:TEXTBM$n()_
   6c158:	e8 1b 5f 00 00       	call   W?$dln(pnv)v
show_keywords_branch_47:
   6c15d:	b8 50 00 00 00       	mov    eax,0x50
   6c162:	e8 b1 5d 00 00       	call   W?$nwn(ui)pnv
   6c167:	85 c0                	test   eax,eax
   6c169:	74 23                	je     show_keywords_branch_48
   6c16b:	6a 00                	push   0x0
   6c16d:	6a ce                	push   0xffffffce
   6c16f:	68 b7 00 00 00       	push   0xb7
   6c174:	b9 92 f7 00 00       	mov    ecx,@obj3:convutil_cpp_variable_101                          ; fixup: num: 18742, src obj: 1, src ofs: 0x6c175, dst obj: 3, dst ofs: 0xf792
   6c179:	68 ab 00 00 00       	push   0xab
   6c17e:	ba 9d f7 00 00       	mov    edx,@obj3:convutil_cpp_variable_102                          ; fixup: num: 18741, src obj: 1, src ofs: 0x6c17f, dst obj: 3, dst ofs: 0xf79d
   6c183:	8b 1d c4 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:textfont                              ; fixup: num: 18740, src obj: 1, src ofs: 0x6c185, dst obj: 3, dst ofs: 0x25bc4
   6c189:	e8 72 da fd ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
show_keywords_branch_48:
   6c18e:	85 c0                	test   eax,eax
   6c190:	75 0f                	jne    show_keywords_branch_49
   6c192:	bb a3 f7 00 00       	mov    ebx,@obj3:convutil_cpp_variable_103                          ; fixup: num: 18739, src obj: 1, src ofs: 0x6c193, dst obj: 3, dst ofs: 0xf7a3
   6c197:	ba 48 06 00 00       	mov    edx,0x648
   6c19c:	e8 8f be fc ff       	call   _error_report
show_keywords_branch_49:
   6c1a1:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 18738, src obj: 1, src ofs: 0x6c1a2, dst obj: 3, dst ofs: 0x25a84
   6c1a6:	30 db                	xor    bl,bl
   6c1a8:	e8 f3 1a fe ff       	call   update_mod_84
   6c1ad:	88 9c 24 68 01 00 00 	mov    BYTE PTR [esp+0x168],bl
show_keywords_branch_50:
   6c1b4:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 18737, src obj: 1, src ofs: 0x6c1b6, dst obj: 3, dst ofs: 0x25974
   6c1bb:	0f 84 1c 02 00 00    	je     show_keywords_branch_66
   6c1c1:	a1 94 60 02 00       	mov    eax,ds:@obj3:pointer                                         ; fixup: num: 18736, src obj: 1, src ofs: 0x6c1c2, dst obj: 3, dst ofs: 0x26094
   6c1c6:	b1 01                	mov    cl,0x1
   6c1c8:	e8 93 00 fd ff       	call   hide
   6c1cd:	b8 50 00 00 00       	mov    eax,0x50
   6c1d2:	88 8c 24 68 01 00 00 	mov    BYTE PTR [esp+0x168],cl
   6c1d9:	e8 3a 5d 00 00       	call   W?$nwn(ui)pnv
   6c1de:	85 c0                	test   eax,eax
   6c1e0:	74 22                	je     show_keywords_branch_51
   6c1e2:	6a 00                	push   0x0
   6c1e4:	6a 00                	push   0x0
   6c1e6:	6a ce                	push   0xffffffce
   6c1e8:	68 b8 00 00 00       	push   0xb8
   6c1ed:	b9 bb f7 00 00       	mov    ecx,@obj3:convutil_cpp_variable_104                          ; fixup: num: 18735, src obj: 1, src ofs: 0x6c1ee, dst obj: 3, dst ofs: 0xf7bb
   6c1f2:	68 d0 00 00 00       	push   0xd0
   6c1f7:	8b 1d c4 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:textfont                              ; fixup: num: 18734, src obj: 1, src ofs: 0x6c1f9, dst obj: 3, dst ofs: 0x25bc4
   6c1fd:	31 d2                	xor    edx,edx
   6c1ff:	e8 3c dd fd ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiiii)_
show_keywords_branch_51:
   6c204:	89 84 24 5c 01 00 00 	mov    DWORD PTR [esp+0x15c],eax
   6c20b:	85 c0                	test   eax,eax
   6c20d:	75 0f                	jne    show_keywords_branch_52
   6c20f:	bb c5 f7 00 00       	mov    ebx,@obj3:convutil_cpp_variable_105                          ; fixup: num: 18733, src obj: 1, src ofs: 0x6c210, dst obj: 3, dst ofs: 0xf7c5
   6c214:	ba 58 06 00 00       	mov    edx,0x658
   6c219:	e8 12 be fc ff       	call   _error_report
show_keywords_branch_52:
   6c21e:	bb 19 00 00 00       	mov    ebx,0x19
   6c223:	8b 84 24 5c 01 00 00 	mov    eax,DWORD PTR [esp+0x15c]
   6c22a:	8b 15 c4 5b 02 00    	mov    edx,DWORD PTR ds:@obj3:textfont                              ; fixup: num: 18749, src obj: 1, src ofs: 0x6c22c, dst obj: 3, dst ofs: 0x25bc4
   6c230:	31 c9                	xor    ecx,ecx
   6c232:	e8 a9 dd fd ff       	call   text_entry
   6c237:	89 c3                	mov    ebx,eax
   6c239:	85 c0                	test   eax,eax
   6c23b:	74 2f                	je     show_keywords_branch_55
   6c23d:	bf c0 94 02 00       	mov    edi,@obj3:keyword                                            ; fixup: num: 18748, src obj: 1, src ofs: 0x6c23e, dst obj: 3, dst ofs: 0x294c0
   6c242:	89 c6                	mov    esi,eax
   6c244:	57                   	push   edi
show_keywords_branch_53:
   6c245:	8a 06                	mov    al,BYTE PTR [esi]
   6c247:	88 07                	mov    BYTE PTR [edi],al
   6c249:	3c 00                	cmp    al,0x0
   6c24b:	74 10                	je     show_keywords_branch_54
   6c24d:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   6c250:	83 c6 02             	add    esi,0x2
   6c253:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   6c256:	83 c7 02             	add    edi,0x2
   6c259:	3c 00                	cmp    al,0x0
   6c25b:	75 e8                	jne    show_keywords_branch_53
show_keywords_branch_54:
   6c25d:	5f                   	pop    edi
   6c25e:	89 d8                	mov    eax,ebx
   6c260:	be ff ff ff ff       	mov    esi,0xffffffff
   6c265:	e8 7e 51 00 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   6c26a:	eb 0a                	jmp    show_keywords_branch_56
show_keywords_branch_55:
   6c26c:	66 83 3d 08 59 02 00 00 	cmp    WORD PTR ds:@obj3:raw_key,0x0                             ; fixup: num: 18747, src obj: 1, src ofs: 0x6c26f, dst obj: 3, dst ofs: 0x25908
   6c274:	75 f6                	jne    show_keywords_branch_55
show_keywords_branch_56:
   6c276:	8b 84 24 5c 01 00 00 	mov    eax,DWORD PTR [esp+0x15c]
   6c27d:	85 c0                	test   eax,eax
   6c27f:	74 0e                	je     show_keywords_branch_57
   6c281:	74 0c                	je     show_keywords_branch_57
   6c283:	31 d2                	xor    edx,edx
   6c285:	e8 96 dc fd ff       	call   W?$dt:TEXTBM$n()_
   6c28a:	e8 e9 5d 00 00       	call   W?$dln(pnv)v
show_keywords_branch_57:
   6c28f:	a1 94 60 02 00       	mov    eax,ds:@obj3:pointer                                         ; fixup: num: 18746, src obj: 1, src ofs: 0x6c290, dst obj: 3, dst ofs: 0x26094
   6c294:	bf c0 94 02 00       	mov    edi,@obj3:keyword                                            ; fixup: num: 18745, src obj: 1, src ofs: 0x6c295, dst obj: 3, dst ofs: 0x294c0
   6c299:	e8 f2 ff fc ff       	call   show
   6c29e:	29 c9                	sub    ecx,ecx
   6c2a0:	49                   	dec    ecx
   6c2a1:	31 c0                	xor    eax,eax
   6c2a3:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
   6c2a5:	f7 d1                	not    ecx
   6c2a7:	49                   	dec    ecx
   6c2a8:	85 c9                	test   ecx,ecx
   6c2aa:	0f 87 93 01 00 00    	ja     show_keywords_branch_69
   6c2b0:	e9 28 01 00 00       	jmp    show_keywords_branch_66
show_keywords_branch_58:
   6c2b5:	80 bc 24 68 01 00 00 00 	cmp    BYTE PTR [esp+0x168],0x0
   6c2bd:	0f 85 7d 00 00 00    	jne    show_keywords_branch_62
   6c2c3:	ba dd f7 00 00       	mov    edx,@obj3:convutil_cpp_variable_106                          ; fixup: num: 18744, src obj: 1, src ofs: 0x6c2c4, dst obj: 3, dst ofs: 0xf7dd
   6c2c8:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 18743, src obj: 1, src ofs: 0x6c2c9, dst obj: 3, dst ofs: 0x25a88
   6c2cd:	e8 1e fe fd ff       	call   get_bitmap
   6c2d2:	85 c0                	test   eax,eax
   6c2d4:	74 0e                	je     show_keywords_branch_59
   6c2d6:	74 0c                	je     show_keywords_branch_59
   6c2d8:	31 d2                	xor    edx,edx
   6c2da:	e8 41 dc fd ff       	call   W?$dt:TEXTBM$n()_
   6c2df:	e8 94 5d 00 00       	call   W?$dln(pnv)v
show_keywords_branch_59:
   6c2e4:	b8 50 00 00 00       	mov    eax,0x50
   6c2e9:	e8 2a 5c 00 00       	call   W?$nwn(ui)pnv
   6c2ee:	85 c0                	test   eax,eax
   6c2f0:	74 23                	je     show_keywords_branch_60
   6c2f2:	6a 00                	push   0x0
   6c2f4:	6a ce                	push   0xffffffce
   6c2f6:	68 b7 00 00 00       	push   0xb7
   6c2fb:	b9 e8 f7 00 00       	mov    ecx,@obj3:convutil_cpp_variable_107                          ; fixup: num: 18755, src obj: 1, src ofs: 0x6c2fc, dst obj: 3, dst ofs: 0xf7e8
   6c300:	68 ab 00 00 00       	push   0xab
   6c305:	ba f3 f7 00 00       	mov    edx,@obj3:convutil_cpp_variable_108                          ; fixup: num: 18754, src obj: 1, src ofs: 0x6c306, dst obj: 3, dst ofs: 0xf7f3
   6c30a:	8b 1d c8 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:textfnt2                              ; fixup: num: 18753, src obj: 1, src ofs: 0x6c30c, dst obj: 3, dst ofs: 0x25bc8
   6c310:	e8 eb d8 fd ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
show_keywords_branch_60:
   6c315:	85 c0                	test   eax,eax
   6c317:	75 0f                	jne    show_keywords_branch_61
   6c319:	bb f9 f7 00 00       	mov    ebx,@obj3:convutil_cpp_variable_109                          ; fixup: num: 18752, src obj: 1, src ofs: 0x6c31a, dst obj: 3, dst ofs: 0xf7f9
   6c31e:	ba 8b 06 00 00       	mov    edx,0x68b
   6c323:	e8 08 bd fc ff       	call   _error_report
show_keywords_branch_61:
   6c328:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 18751, src obj: 1, src ofs: 0x6c329, dst obj: 3, dst ofs: 0x25a84
   6c32d:	b5 01                	mov    ch,0x1
   6c32f:	e8 6c 19 fe ff       	call   update_mod_84
   6c334:	88 ac 24 68 01 00 00 	mov    BYTE PTR [esp+0x168],ch
   6c33b:	e9 9d 00 00 00       	jmp    show_keywords_branch_66
show_keywords_branch_62:
   6c340:	80 bc 24 6c 01 00 00 00 	cmp    BYTE PTR [esp+0x16c],0x0
   6c348:	0f 85 8f 00 00 00    	jne    show_keywords_branch_66
   6c34e:	6b d5 14             	imul   edx,ebp,0x14
   6c351:	89 e0                	mov    eax,esp
   6c353:	01 c2                	add    edx,eax
   6c355:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 18750, src obj: 1, src ofs: 0x6c356, dst obj: 3, dst ofs: 0x25a88
   6c35a:	e8 91 fd fd ff       	call   get_bitmap
   6c35f:	85 c0                	test   eax,eax
   6c361:	74 0e                	je     show_keywords_branch_63
   6c363:	74 0c                	je     show_keywords_branch_63
   6c365:	31 d2                	xor    edx,edx
   6c367:	e8 b4 db fd ff       	call   W?$dt:TEXTBM$n()_
   6c36c:	e8 07 5d 00 00       	call   W?$dln(pnv)v
show_keywords_branch_63:
   6c371:	b8 50 00 00 00       	mov    eax,0x50
   6c376:	e8 9d 5b 00 00       	call   W?$nwn(ui)pnv
   6c37b:	85 c0                	test   eax,eax
   6c37d:	74 2f                	je     show_keywords_branch_64
   6c37f:	8b 1d c8 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:textfnt2                              ; fixup: num: 18763, src obj: 1, src ofs: 0x6c381, dst obj: 3, dst ofs: 0x25bc8
   6c385:	0f bf 53 40          	movsx  edx,WORD PTR [ebx+0x40]
   6c389:	0f af d5             	imul   edx,ebp
   6c38c:	6a 00                	push   0x0
   6c38e:	6a ce                	push   0xffffffce
   6c390:	83 c2 22             	add    edx,0x22
   6c393:	52                   	push   edx
   6c394:	6b d5 14             	imul   edx,ebp,0x14
   6c397:	8d 4c 24 0c          	lea    ecx,[esp+0xc]
   6c39b:	68 b2 00 00 00       	push   0xb2
   6c3a0:	01 d1                	add    ecx,edx
   6c3a2:	8b 94 ac 28 01 00 00 	mov    edx,DWORD PTR [esp+ebp*4+0x128]
   6c3a9:	e8 52 d8 fd ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
show_keywords_branch_64:
   6c3ae:	85 c0                	test   eax,eax
   6c3b0:	75 0f                	jne    show_keywords_branch_65
   6c3b2:	bb 11 f8 00 00       	mov    ebx,@obj3:convutil_cpp_variable_110                          ; fixup: num: 18762, src obj: 1, src ofs: 0x6c3b3, dst obj: 3, dst ofs: 0xf811
   6c3b7:	ba a5 06 00 00       	mov    edx,0x6a5
   6c3bc:	e8 6f bc fc ff       	call   _error_report
show_keywords_branch_65:
   6c3c1:	bf 63 00 00 00       	mov    edi,0x63
   6c3c6:	b4 01                	mov    ah,0x1
   6c3c8:	89 bc 24 60 01 00 00 	mov    DWORD PTR [esp+0x160],edi
   6c3cf:	88 a4 24 64 01 00 00 	mov    BYTE PTR [esp+0x164],ah
   6c3d6:	88 a4 24 6c 01 00 00 	mov    BYTE PTR [esp+0x16c],ah
show_keywords_branch_66:
   6c3dd:	0f bf 05 08 59 02 00 	movsx  eax,WORD PTR ds:@obj3:raw_key                                ; fixup: num: 18761, src obj: 1, src ofs: 0x6c3e0, dst obj: 3, dst ofs: 0x25908
   6c3e4:	83 f8 01             	cmp    eax,0x1
   6c3e7:	0f 85 c9 fa ff ff    	jne    show_keywords_branch_32
   6c3ed:	8b 1d 30 24 03 00    	mov    ebx,DWORD PTR ds:@obj3:bye_str                               ; fixup: num: 18760, src obj: 1, src ofs: 0x6c3ef, dst obj: 3, dst ofs: 0x32430
   6c3f3:	53                   	push   ebx
   6c3f4:	68 29 f8 00 00       	push   @obj3:convutil_cpp_variable_111                              ; fixup: num: 18759, src obj: 1, src ofs: 0x6c3f5, dst obj: 3, dst ofs: 0xf829
   6c3f9:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 18758, src obj: 1, src ofs: 0x6c3fa, dst obj: 3, dst ofs: 0x237fc
   6c3fe:	e8 de 47 00 00       	call   sprintf_
   6c403:	83 c4 0c             	add    esp,0xc
   6c406:	bf c0 94 02 00       	mov    edi,@obj3:keyword                                            ; fixup: num: 18757, src obj: 1, src ofs: 0x6c407, dst obj: 3, dst ofs: 0x294c0
   6c40b:	8b 35 30 24 03 00    	mov    esi,DWORD PTR ds:@obj3:bye_str                               ; fixup: num: 18756, src obj: 1, src ofs: 0x6c40d, dst obj: 3, dst ofs: 0x32430
   6c411:	57                   	push   edi
show_keywords_branch_67:
   6c412:	8a 06                	mov    al,BYTE PTR [esi]
   6c414:	88 07                	mov    BYTE PTR [edi],al
   6c416:	3c 00                	cmp    al,0x0
   6c418:	74 10                	je     show_keywords_branch_68
   6c41a:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   6c41d:	83 c6 02             	add    esi,0x2
   6c420:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   6c423:	83 c7 02             	add    edi,0x2
   6c426:	3c 00                	cmp    al,0x0
   6c428:	75 e8                	jne    show_keywords_branch_67
show_keywords_branch_68:
   6c42a:	5f                   	pop    edi
   6c42b:	57                   	push   edi
   6c42c:	68 34 f8 00 00       	push   @obj3:convutil_cpp_variable_112                              ; fixup: num: 18773, src obj: 1, src ofs: 0x6c42d, dst obj: 3, dst ofs: 0xf834
   6c431:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 18772, src obj: 1, src ofs: 0x6c432, dst obj: 3, dst ofs: 0x237fc
   6c436:	be ff ff ff ff       	mov    esi,0xffffffff
   6c43b:	e8 a1 47 00 00       	call   sprintf_
   6c440:	83 c4 0c             	add    esp,0xc
show_keywords_branch_69:
   6c443:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 18771, src obj: 1, src ofs: 0x6c444, dst obj: 3, dst ofs: 0x25a88
   6c448:	8b 15 64 97 02 00    	mov    edx,DWORD PTR ds:@obj3:keyw_box                              ; fixup: num: 18770, src obj: 1, src ofs: 0x6c44a, dst obj: 3, dst ofs: 0x29764
   6c44e:	e8 9d 02 fe ff       	call   remove_bitmap
   6c453:	85 f6                	test   esi,esi
   6c455:	75 53                	jne    show_keywords_branch_72
   6c457:	8b 1d c8 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:textfnt2                              ; fixup: num: 18769, src obj: 1, src ofs: 0x6c459, dst obj: 3, dst ofs: 0x25bc8
   6c45d:	0f bf 5b 40          	movsx  ebx,WORD PTR [ebx+0x40]
   6c461:	8b 15 7c 59 02 00    	mov    edx,DWORD PTR ds:@obj3:mouse_y                               ; fixup: num: 18768, src obj: 1, src ofs: 0x6c463, dst obj: 3, dst ofs: 0x2597c
   6c467:	83 ea 22             	sub    edx,0x22
   6c46a:	89 d0                	mov    eax,edx
   6c46c:	c1 fa 1f             	sar    edx,0x1f
   6c46f:	f7 fb                	idiv   ebx
   6c471:	bf c0 94 02 00       	mov    edi,@obj3:keyword                                            ; fixup: num: 18767, src obj: 1, src ofs: 0x6c472, dst obj: 3, dst ofs: 0x294c0
   6c476:	8b b4 84 18 01 00 00 	mov    esi,DWORD PTR [esp+eax*4+0x118]
   6c47d:	57                   	push   edi
show_keywords_branch_70:
   6c47e:	8a 06                	mov    al,BYTE PTR [esi]
   6c480:	88 07                	mov    BYTE PTR [edi],al
   6c482:	3c 00                	cmp    al,0x0
   6c484:	74 10                	je     show_keywords_branch_71
   6c486:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   6c489:	83 c6 02             	add    esi,0x2
   6c48c:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   6c48f:	83 c7 02             	add    edi,0x2
   6c492:	3c 00                	cmp    al,0x0
   6c494:	75 e8                	jne    show_keywords_branch_70
show_keywords_branch_71:
   6c496:	5f                   	pop    edi
   6c497:	57                   	push   edi
   6c498:	68 3f f8 00 00       	push   @obj3:convutil_cpp_variable_113                              ; fixup: num: 18766, src obj: 1, src ofs: 0x6c499, dst obj: 3, dst ofs: 0xf83f
   6c49d:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 18765, src obj: 1, src ofs: 0x6c49e, dst obj: 3, dst ofs: 0x237fc
   6c4a2:	e8 3a 47 00 00       	call   sprintf_
   6c4a7:	83 c4 0c             	add    esp,0xc
show_keywords_branch_72:
   6c4aa:	8b 8c 24 48 01 00 00 	mov    ecx,DWORD PTR [esp+0x148]
   6c4b1:	31 f6                	xor    esi,esi
   6c4b3:	85 c9                	test   ecx,ecx
   6c4b5:	7c 2f                	jl     show_keywords_branch_75
   6c4b7:	89 e3                	mov    ebx,esp
   6c4b9:	8b bc 24 48 01 00 00 	mov    edi,DWORD PTR [esp+0x148]
show_keywords_branch_73:
   6c4c0:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 18764, src obj: 1, src ofs: 0x6c4c1, dst obj: 3, dst ofs: 0x25a88
   6c4c5:	89 da                	mov    edx,ebx
   6c4c7:	e8 24 fc fd ff       	call   get_bitmap
   6c4cc:	85 c0                	test   eax,eax
   6c4ce:	74 0e                	je     show_keywords_branch_74
   6c4d0:	74 0c                	je     show_keywords_branch_74
   6c4d2:	31 d2                	xor    edx,edx
   6c4d4:	e8 47 da fd ff       	call   W?$dt:TEXTBM$n()_
   6c4d9:	e8 9a 5b 00 00       	call   W?$dln(pnv)v
show_keywords_branch_74:
   6c4de:	46                   	inc    esi
   6c4df:	83 c3 14             	add    ebx,0x14
   6c4e2:	39 fe                	cmp    esi,edi
   6c4e4:	7e da                	jle    show_keywords_branch_73
show_keywords_branch_75:
   6c4e6:	ba 4a f8 00 00       	mov    edx,@obj3:convutil_cpp_variable_114                          ; fixup: num: 18777, src obj: 1, src ofs: 0x6c4e7, dst obj: 3, dst ofs: 0xf84a
   6c4eb:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 18776, src obj: 1, src ofs: 0x6c4ec, dst obj: 3, dst ofs: 0x25a88
   6c4f0:	e8 fb fb fd ff       	call   get_bitmap
   6c4f5:	85 c0                	test   eax,eax
   6c4f7:	74 0e                	je     show_keywords_branch_76
   6c4f9:	74 0c                	je     show_keywords_branch_76
   6c4fb:	31 d2                	xor    edx,edx
   6c4fd:	e8 1e da fd ff       	call   W?$dt:TEXTBM$n()_
   6c502:	e8 71 5b 00 00       	call   W?$dln(pnv)v
show_keywords_branch_76:
   6c507:	8b ac 24 48 01 00 00 	mov    ebp,DWORD PTR [esp+0x148]
   6c50e:	85 ed                	test   ebp,ebp
   6c510:	7e 20                	jle    show_keywords_branch_79
   6c512:	8d 14 ad 00 00 00 00 	lea    edx,[ebp*4+0x0]
   6c519:	31 db                	xor    ebx,ebx
show_keywords_branch_77:
   6c51b:	8b 84 1c 18 01 00 00 	mov    eax,DWORD PTR [esp+ebx*1+0x118]
   6c522:	85 c0                	test   eax,eax
   6c524:	74 05                	je     show_keywords_branch_78
   6c526:	e8 bd 4e 00 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
show_keywords_branch_78:
   6c52b:	83 c3 04             	add    ebx,0x4
   6c52e:	39 d3                	cmp    ebx,edx
   6c530:	7c e9                	jl     show_keywords_branch_77
show_keywords_branch_79:
   6c532:	81 c4 70 01 00 00    	add    esp,0x170
   6c538:	5d                   	pop    ebp
   6c539:	5f                   	pop    edi
   6c53a:	5e                   	pop    esi
   6c53b:	5a                   	pop    edx
   6c53c:	59                   	pop    ecx
   6c53d:	5b                   	pop    ebx
   6c53e:	c3                   	ret    
   6c53f:	90                   	nop

;-------------------------------------------------
;  Function 'game_over'                          -
;-------------------------------------------------
game_over:
   6c540:	53                   	push   ebx
   6c541:	51                   	push   ecx
   6c542:	52                   	push   edx
   6c543:	56                   	push   esi
   6c544:	57                   	push   edi
   6c545:	55                   	push   ebp
   6c546:	89 e5                	mov    ebp,esp
   6c548:	81 ec e4 03 00 00    	sub    esp,0x3e4
   6c54e:	6a 00                	push   0x0
   6c550:	ba 00 01 00 00       	mov    edx,0x100
   6c555:	31 c0                	xor    eax,eax
   6c557:	e8 14 62 fa ff       	call   setvgapalette_mod_14
   6c55c:	6a 01                	push   0x1
   6c55e:	b9 e0 01 00 00       	mov    ecx,0x1e0
   6c563:	bb 80 02 00 00       	mov    ebx,0x280
   6c568:	6a 00                	push   0x0
   6c56a:	31 d2                	xor    edx,edx
   6c56c:	31 c0                	xor    eax,eax
   6c56e:	e8 dd 91 f9 ff       	call   VESA_rectangle
   6c573:	ba 07 00 00 00       	mov    edx,0x7
   6c578:	a1 94 60 02 00       	mov    eax,ds:@obj3:pointer                                         ; fixup: num: 18775, src obj: 1, src ofs: 0x6c579, dst obj: 3, dst ofs: 0x26094
   6c57d:	e8 0e d4 ff ff       	call   set_pointer
   6c582:	ba 55 f8 00 00       	mov    edx,@obj3:convutil_cpp_variable_115                          ; fixup: num: 18774, src obj: 1, src ofs: 0x6c583, dst obj: 3, dst ofs: 0xf855
   6c587:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 18669, src obj: 1, src ofs: 0x6c588, dst obj: 3, dst ofs: 0x1a1d4
   6c58c:	e8 2f fa f9 ff       	call   change_music_file
   6c591:	e8 fa b8 ff ff       	call   Clear_using_on_bm
   6c596:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 18668, src obj: 1, src ofs: 0x6c597, dst obj: 3, dst ofs: 0x25a88
   6c59b:	e8 40 04 fe ff       	call   remove_all
   6c5a0:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 18667, src obj: 1, src ofs: 0x6c5a1, dst obj: 3, dst ofs: 0x25bd4
   6c5a5:	8b 00                	mov    eax,DWORD PTR [eax]
   6c5a7:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
   6c5aa:	52                   	push   edx
   6c5ab:	68 6d f8 00 00       	push   @obj3:convutil_cpp_variable_116                              ; fixup: num: 18666, src obj: 1, src ofs: 0x6c5ac, dst obj: 3, dst ofs: 0xf86d
   6c5b0:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 18665, src obj: 1, src ofs: 0x6c5b1, dst obj: 3, dst ofs: 0x237fc
   6c5b5:	e8 27 46 00 00       	call   sprintf_
   6c5ba:	83 c4 0c             	add    esp,0xc
   6c5bd:	68 00 00 f0 42       	push   0x42f00000
   6c5c2:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 18664, src obj: 1, src ofs: 0x6c5c3, dst obj: 3, dst ofs: 0x25bd4
   6c5c7:	8b 58 40             	mov    ebx,DWORD PTR [eax+0x40]
   6c5ca:	8b 50 3c             	mov    edx,DWORD PTR [eax+0x3c]
   6c5cd:	e8 1e f1 fc ff       	call   set_xyz
   6c5d2:	31 db                	xor    ebx,ebx
   6c5d4:	b8 4c 00 00 00       	mov    eax,0x4c
   6c5d9:	89 1d 08 3f 01 00    	mov    DWORD PTR ds:@obj3:game_in_progress,ebx                      ; fixup: num: 18663, src obj: 1, src ofs: 0x6c5db, dst obj: 3, dst ofs: 0x13f08
   6c5df:	e8 34 59 00 00       	call   W?$nwn(ui)pnv
   6c5e4:	85 c0                	test   eax,eax
   6c5e6:	74 21                	je     game_over_branch_1
   6c5e8:	53                   	push   ebx
   6c5e9:	68 93 14 07 00       	push   @obj1:_nmalloc_                                              ; aliases: _nmalloc_, malloc_; fixup: num: 18662, src obj: 1, src ofs: 0x6c5ea, dst obj: 1, dst ofs: 0x71493
   6c5ee:	53                   	push   ebx
   6c5ef:	53                   	push   ebx
   6c5f0:	6a 01                	push   0x1
   6c5f2:	68 00 00 c8 42       	push   0x42c80000
   6c5f7:	ba 84 f8 00 00       	mov    edx,@obj3:convutil_cpp_variable_118                          ; fixup: num: 18661, src obj: 1, src ofs: 0x6c5f8, dst obj: 3, dst ofs: 0xf884
   6c5fc:	53                   	push   ebx
   6c5fd:	31 c9                	xor    ecx,ecx
   6c5ff:	bb 7b f8 00 00       	mov    ebx,@obj3:convutil_cpp_variable_117                          ; fixup: num: 18660, src obj: 1, src ofs: 0x6c600, dst obj: 3, dst ofs: 0xf87b
   6c604:	e8 d7 e6 fc ff       	call   W?$ct:BTMAP$n(pnapnaiibiucucpn(ui)pnvpnuc)_
game_over_branch_1:
   6c609:	89 c6                	mov    esi,eax
   6c60b:	85 c0                	test   eax,eax
   6c60d:	75 0f                	jne    game_over_branch_2
   6c60f:	bb a1 f8 00 00       	mov    ebx,@obj3:convutil_cpp_variable_119                          ; fixup: num: 18659, src obj: 1, src ofs: 0x6c610, dst obj: 3, dst ofs: 0xf8a1
   6c614:	ba 37 07 00 00       	mov    edx,0x737
   6c619:	e8 12 ba fc ff       	call   _error_report
game_over_branch_2:
   6c61e:	b9 39 07 00 00       	mov    ecx,0x739
   6c623:	bb b9 f8 00 00       	mov    ebx,@obj3:convutil_cpp_variable_120                          ; fixup: num: 18779, src obj: 1, src ofs: 0x6c624, dst obj: 3, dst ofs: 0xf8b9
   6c628:	8d 95 1c fc ff ff    	lea    edx,[ebp-0x3e4]
   6c62e:	b8 c6 f8 00 00       	mov    eax,@obj3:convutil_cpp_variable_121                          ; fixup: num: 18778, src obj: 1, src ofs: 0x6c62f, dst obj: 3, dst ofs: 0xf8c6
   6c633:	e8 a8 07 fa ff       	call   XFILE_read2
   6c638:	85 c0                	test   eax,eax
   6c63a:	75 0f                	jne    game_over_branch_3
   6c63c:	bb e2 f8 00 00       	mov    ebx,@obj3:convutil_cpp_variable_122                          ; fixup: num: 18682, src obj: 1, src ofs: 0x6c63d, dst obj: 3, dst ofs: 0xf8e2
   6c641:	ba 3a 07 00 00       	mov    edx,0x73a
   6c646:	e8 e5 b9 fc ff       	call   _error_report
game_over_branch_3:
   6c64b:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 18681, src obj: 1, src ofs: 0x6c64c, dst obj: 3, dst ofs: 0x25a88
   6c650:	89 f2                	mov    edx,esi
   6c652:	b9 36 01 00 00       	mov    ecx,0x136
   6c657:	e8 d4 fa fd ff       	call   insert_bitmap
   6c65c:	89 0d 78 59 02 00    	mov    DWORD PTR ds:@obj3:mouse_x,ecx                               ; fixup: num: 18680, src obj: 1, src ofs: 0x6c65e, dst obj: 3, dst ofs: 0x25978
   6c662:	c7 05 7c 59 02 00 c2 01 00 00 	mov    DWORD PTR ds:@obj3:mouse_y,0x1c2                    ; fixup: num: 18679, src obj: 1, src ofs: 0x6c664, dst obj: 3, dst ofs: 0x2597c
   6c66c:	8b 15 78 59 02 00    	mov    edx,DWORD PTR ds:@obj3:mouse_x                               ; fixup: num: 18678, src obj: 1, src ofs: 0x6c66e, dst obj: 3, dst ofs: 0x25978
   6c672:	a1 7c 59 02 00       	mov    eax,ds:@obj3:mouse_y                                         ; fixup: num: 18677, src obj: 1, src ofs: 0x6c673, dst obj: 3, dst ofs: 0x2597c
   6c677:	80 3d 71 59 02 00 00 	cmp    BYTE PTR ds:@obj3:mouse_initialized,0x0                      ; fixup: num: 18676, src obj: 1, src ofs: 0x6c679, dst obj: 3, dst ofs: 0x25971
   6c67e:	74 21                	je     game_over_branch_4
   6c680:	bb 04 00 00 00       	mov    ebx,0x4
   6c685:	66 89 55 ec          	mov    WORD PTR [ebp-0x14],dx
   6c689:	66 89 45 f0          	mov    WORD PTR [ebp-0x10],ax
   6c68d:	8d 55 e4             	lea    edx,[ebp-0x1c]
   6c690:	b8 33 00 00 00       	mov    eax,0x33
   6c695:	66 89 5d e4          	mov    WORD PTR [ebp-0x1c],bx
   6c699:	8d 5d e4             	lea    ebx,[ebp-0x1c]
   6c69c:	e8 fb 49 00 00       	call   int386_
game_over_branch_4:
   6c6a1:	8b 3d b8 0f 01 00    	mov    edi,DWORD PTR ds:@obj3:pal_gamma_variable_1                  ; fixup: num: 18675, src obj: 1, src ofs: 0x6c6a3, dst obj: 3, dst ofs: 0x10fb8
   6c6a7:	57                   	push   edi
   6c6a8:	a1 b4 0f 01 00       	mov    eax,ds:@obj3:pal_gamma                                       ; fixup: num: 18674, src obj: 1, src ofs: 0x6c6a9, dst obj: 3, dst ofs: 0x10fb4
   6c6ad:	50                   	push   eax
   6c6ae:	6a 00                	push   0x0
   6c6b0:	6a 00                	push   0x0
   6c6b2:	8d 85 1c fc ff ff    	lea    eax,[ebp-0x3e4]
   6c6b8:	e8 73 73 fa ff       	call   fade
   6c6bd:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 18673, src obj: 1, src ofs: 0x6c6be, dst obj: 3, dst ofs: 0x25a84
   6c6c2:	e8 d9 15 fe ff       	call   update_mod_84
   6c6c7:	66 83 3d 08 59 02 00 00 	cmp    WORD PTR ds:@obj3:raw_key,0x0                             ; fixup: num: 18672, src obj: 1, src ofs: 0x6c6ca, dst obj: 3, dst ofs: 0x25908
   6c6cf:	75 30                	jne    game_over_branch_6
game_over_branch_5:
   6c6d1:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 18671, src obj: 1, src ofs: 0x6c6d3, dst obj: 3, dst ofs: 0x25974
   6c6d8:	75 27                	jne    game_over_branch_6
   6c6da:	80 3d 72 59 02 00 00 	cmp    BYTE PTR ds:@obj3:right_button,0x0                           ; fixup: num: 18670, src obj: 1, src ofs: 0x6c6dc, dst obj: 3, dst ofs: 0x25972
   6c6e1:	75 1e                	jne    game_over_branch_6
   6c6e3:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 18695, src obj: 1, src ofs: 0x6c6e4, dst obj: 3, dst ofs: 0x25a84
   6c6e8:	e8 b3 15 fe ff       	call   update_mod_84
   6c6ed:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 18694, src obj: 1, src ofs: 0x6c6ee, dst obj: 3, dst ofs: 0x1a1d4
   6c6f2:	e8 a9 f2 f9 ff       	call   update_mod_9
   6c6f7:	66 83 3d 08 59 02 00 00 	cmp    WORD PTR ds:@obj3:raw_key,0x0                             ; fixup: num: 18693, src obj: 1, src ofs: 0x6c6fa, dst obj: 3, dst ofs: 0x25908
   6c6ff:	74 d0                	je     game_over_branch_5
game_over_branch_6:
   6c701:	be 84 5a 02 00       	mov    esi,@obj3:the_screen                                         ; fixup: num: 18692, src obj: 1, src ofs: 0x6c702, dst obj: 3, dst ofs: 0x25a84
   6c706:	bb d4 a1 01 00       	mov    ebx,@obj3:music                                              ; fixup: num: 18691, src obj: 1, src ofs: 0x6c707, dst obj: 3, dst ofs: 0x1a1d4
   6c70b:	31 d2                	xor    edx,edx
game_over_branch_7:
   6c70d:	66 3b 15 08 59 02 00 	cmp    dx,WORD PTR ds:@obj3:raw_key                                 ; fixup: num: 18690, src obj: 1, src ofs: 0x6c710, dst obj: 3, dst ofs: 0x25908
   6c714:	75 12                	jne    game_over_branch_8
   6c716:	8a 2d 74 59 02 00    	mov    ch,BYTE PTR ds:@obj3:left_button                             ; fixup: num: 18689, src obj: 1, src ofs: 0x6c718, dst obj: 3, dst ofs: 0x25974
   6c71c:	38 ea                	cmp    dl,ch
   6c71e:	75 08                	jne    game_over_branch_8
   6c720:	3a 2d 72 59 02 00    	cmp    ch,BYTE PTR ds:@obj3:right_button                            ; fixup: num: 18688, src obj: 1, src ofs: 0x6c722, dst obj: 3, dst ofs: 0x25972
   6c726:	74 10                	je     game_over_branch_9
game_over_branch_8:
   6c728:	89 f0                	mov    eax,esi
   6c72a:	e8 71 15 fe ff       	call   update_mod_84
   6c72f:	89 d8                	mov    eax,ebx
   6c731:	e8 6a f2 f9 ff       	call   update_mod_9
   6c736:	eb d5                	jmp    game_over_branch_7
game_over_branch_9:
   6c738:	e8 53 ac fe ff       	call   menu
   6c73d:	83 f8 ff             	cmp    eax,0xffffffff
   6c740:	0f 94 c0             	sete   al
   6c743:	25 ff 00 00 00       	and    eax,0xff
   6c748:	40                   	inc    eax
   6c749:	a3 bc 60 02 00       	mov    ds:@obj3:godeathflic_demands,eax                             ; fixup: num: 18687, src obj: 1, src ofs: 0x6c74a, dst obj: 3, dst ofs: 0x260bc
   6c74e:	83 f8 02             	cmp    eax,0x2
   6c751:	74 27                	je     game_over_branch_10
   6c753:	8b 1d 08 3f 01 00    	mov    ebx,DWORD PTR ds:@obj3:game_in_progress                      ; fixup: num: 18686, src obj: 1, src ofs: 0x6c755, dst obj: 3, dst ofs: 0x13f08
   6c759:	85 db                	test   ebx,ebx
   6c75b:	75 1d                	jne    game_over_branch_10
   6c75d:	8b 0d b8 0f 01 00    	mov    ecx,DWORD PTR ds:@obj3:pal_gamma_variable_1                  ; fixup: num: 18685, src obj: 1, src ofs: 0x6c75f, dst obj: 3, dst ofs: 0x10fb8
   6c763:	51                   	push   ecx
   6c764:	8b 35 b4 0f 01 00    	mov    esi,DWORD PTR ds:@obj3:pal_gamma                             ; fixup: num: 18684, src obj: 1, src ofs: 0x6c766, dst obj: 3, dst ofs: 0x10fb4
   6c76a:	56                   	push   esi
   6c76b:	53                   	push   ebx
   6c76c:	53                   	push   ebx
   6c76d:	8d 85 1c fc ff ff    	lea    eax,[ebp-0x3e4]
   6c773:	e8 b8 72 fa ff       	call   fade
   6c778:	eb be                	jmp    game_over_branch_9
game_over_branch_10:
   6c77a:	a1 94 60 02 00       	mov    eax,ds:@obj3:pointer                                         ; fixup: num: 18683, src obj: 1, src ofs: 0x6c77b, dst obj: 3, dst ofs: 0x26094
   6c77f:	31 d2                	xor    edx,edx
   6c781:	e8 0a d2 ff ff       	call   set_pointer
   6c786:	89 ec                	mov    esp,ebp
   6c788:	5d                   	pop    ebp
   6c789:	5f                   	pop    edi
   6c78a:	5e                   	pop    esi
   6c78b:	5a                   	pop    edx
   6c78c:	59                   	pop    ecx
   6c78d:	5b                   	pop    ebx
   6c78e:	c3                   	ret    
   6c78f:	90                   	nop

;-------------------------------------------------
;  Function 'check_script_flag'                  -
;-------------------------------------------------
check_script_flag:
   6c790:	53                   	push   ebx
   6c791:	51                   	push   ecx
   6c792:	52                   	push   edx
   6c793:	89 c1                	mov    ecx,eax
   6c795:	85 c0                	test   eax,eax
   6c797:	74 3c                	je     check_script_flag_branch_4
   6c799:	8b 1d a4 5a 02 00    	mov    ebx,DWORD PTR ds:@obj3:flag_list                             ; fixup: num: 18701, src obj: 1, src ofs: 0x6c79b, dst obj: 3, dst ofs: 0x25aa4
   6c79f:	85 db                	test   ebx,ebx
   6c7a1:	74 1f                	je     check_script_flag_branch_3
check_script_flag_branch_1:
   6c7a3:	8b 13                	mov    edx,DWORD PTR [ebx]
   6c7a5:	85 d2                	test   edx,edx
   6c7a7:	74 2c                	je     check_script_flag_branch_4
   6c7a9:	89 c8                	mov    eax,ecx
   6c7ab:	e8 80 9c 00 00       	call   strcmp_
   6c7b0:	85 c0                	test   eax,eax
   6c7b2:	75 07                	jne    check_script_flag_branch_2
   6c7b4:	8a 43 04             	mov    al,BYTE PTR [ebx+0x4]
   6c7b7:	5a                   	pop    edx
   6c7b8:	59                   	pop    ecx
   6c7b9:	5b                   	pop    ebx
   6c7ba:	c3                   	ret    
check_script_flag_branch_2:
   6c7bb:	8b 5b 08             	mov    ebx,DWORD PTR [ebx+0x8]
   6c7be:	85 db                	test   ebx,ebx
   6c7c0:	75 e1                	jne    check_script_flag_branch_1
check_script_flag_branch_3:
   6c7c2:	51                   	push   ecx
   6c7c3:	68 13 f9 00 00       	push   @obj3:convutil_cpp_variable_123                              ; fixup: num: 18700, src obj: 1, src ofs: 0x6c7c4, dst obj: 3, dst ofs: 0xf913
   6c7c8:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 18699, src obj: 1, src ofs: 0x6c7c9, dst obj: 3, dst ofs: 0x237fc
   6c7cd:	e8 0f 44 00 00       	call   sprintf_
   6c7d2:	83 c4 0c             	add    esp,0xc
check_script_flag_branch_4:
   6c7d5:	30 c0                	xor    al,al
   6c7d7:	5a                   	pop    edx
   6c7d8:	59                   	pop    ecx
   6c7d9:	5b                   	pop    ebx
   6c7da:	c3                   	ret    
   6c7db:	8d 40 00             	lea    eax,[eax+0x0]
   6c7de:	8b c9                	mov    ecx,ecx

;-------------------------------------------------
;  Function 'set_script_flag'                    -
;-------------------------------------------------
set_script_flag:
   6c7e0:	53                   	push   ebx
   6c7e1:	51                   	push   ecx
   6c7e2:	83 ec 04             	sub    esp,0x4
   6c7e5:	89 c1                	mov    ecx,eax
   6c7e7:	89 14 24             	mov    DWORD PTR [esp],edx
   6c7ea:	85 c0                	test   eax,eax
   6c7ec:	74 3d                	je     set_script_flag_branch_4
   6c7ee:	8b 1d a4 5a 02 00    	mov    ebx,DWORD PTR ds:@obj3:flag_list                             ; fixup: num: 18698, src obj: 1, src ofs: 0x6c7f0, dst obj: 3, dst ofs: 0x25aa4
   6c7f4:	85 db                	test   ebx,ebx
   6c7f6:	74 20                	je     set_script_flag_branch_3
set_script_flag_branch_1:
   6c7f8:	8b 13                	mov    edx,DWORD PTR [ebx]
   6c7fa:	85 d2                	test   edx,edx
   6c7fc:	74 2d                	je     set_script_flag_branch_4
   6c7fe:	89 c8                	mov    eax,ecx
   6c800:	e8 2b 9c 00 00       	call   strcmp_
   6c805:	85 c0                	test   eax,eax
   6c807:	75 08                	jne    set_script_flag_branch_2
   6c809:	8a 04 24             	mov    al,BYTE PTR [esp]
   6c80c:	88 43 04             	mov    BYTE PTR [ebx+0x4],al
   6c80f:	eb 1a                	jmp    set_script_flag_branch_4
set_script_flag_branch_2:
   6c811:	8b 5b 08             	mov    ebx,DWORD PTR [ebx+0x8]
   6c814:	85 db                	test   ebx,ebx
   6c816:	75 e0                	jne    set_script_flag_branch_1
set_script_flag_branch_3:
   6c818:	51                   	push   ecx
   6c819:	68 35 f9 00 00       	push   @obj3:convutil_cpp_variable_124                              ; fixup: num: 18697, src obj: 1, src ofs: 0x6c81a, dst obj: 3, dst ofs: 0xf935
   6c81e:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 18696, src obj: 1, src ofs: 0x6c81f, dst obj: 3, dst ofs: 0x237fc
   6c823:	e8 b9 43 00 00       	call   sprintf_
   6c828:	83 c4 0c             	add    esp,0xc
set_script_flag_branch_4:
   6c82b:	83 c4 04             	add    esp,0x4
   6c82e:	59                   	pop    ecx
   6c82f:	5b                   	pop    ebx
   6c830:	c3                   	ret    
   6c831:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   6c837:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
   6c83d:	8d 40 00             	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'npc_alive'                          -
;-------------------------------------------------
npc_alive:
   6c840:	52                   	push   edx
   6c841:	89 c2                	mov    edx,eax
   6c843:	e8 b8 64 fe ff       	call   get_npc
   6c848:	85 c0                	test   eax,eax
   6c84a:	74 09                	je     npc_alive_branch_1
   6c84c:	83 78 2c 00          	cmp    DWORD PTR [eax+0x2c],0x0
   6c850:	0f 94 c0             	sete   al
   6c853:	5a                   	pop    edx
   6c854:	c3                   	ret    
npc_alive_branch_1:
   6c855:	52                   	push   edx
   6c856:	68 2e f2 00 00       	push   @obj3:convutil_cpp_variable_16                               ; fixup: num: 18710, src obj: 1, src ofs: 0x6c857, dst obj: 3, dst ofs: 0xf22e
   6c85b:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 18709, src obj: 1, src ofs: 0x6c85c, dst obj: 3, dst ofs: 0x237fc
   6c860:	e8 7c 43 00 00       	call   sprintf_
   6c865:	83 c4 0c             	add    esp,0xc
   6c868:	30 c0                	xor    al,al
   6c86a:	5a                   	pop    edx
   6c86b:	c3                   	ret    
   6c86c:	8d 44 20 00          	lea    eax,[eax+eiz*1+0x0]

;-------------------------------------------------
;  Function 'check_inventory'                    -
;-------------------------------------------------
check_inventory:
   6c870:	53                   	push   ebx
   6c871:	52                   	push   edx
   6c872:	89 c2                	mov    edx,eax
   6c874:	e8 07 64 fe ff       	call   get_object
   6c879:	85 c0                	test   eax,eax
   6c87b:	74 16                	je     check_inventory_branch_1
   6c87d:	8b 1d 2c 41 01 00    	mov    ebx,DWORD PTR ds:@obj3:INVENTORY_ROOM                        ; fixup: num: 18708, src obj: 1, src ofs: 0x6c87f, dst obj: 3, dst ofs: 0x1412c
   6c883:	3b 58 3c             	cmp    ebx,DWORD PTR [eax+0x3c]
   6c886:	75 1e                	jne    check_inventory_branch_2
   6c888:	80 78 4d 00          	cmp    BYTE PTR [eax+0x4d],0x0
   6c88c:	74 18                	je     check_inventory_branch_2
   6c88e:	b0 01                	mov    al,0x1
   6c890:	5a                   	pop    edx
   6c891:	5b                   	pop    ebx
   6c892:	c3                   	ret    
check_inventory_branch_1:
   6c893:	52                   	push   edx
   6c894:	68 57 f9 00 00       	push   @obj3:convutil_cpp_variable_125                              ; fixup: num: 18707, src obj: 1, src ofs: 0x6c895, dst obj: 3, dst ofs: 0xf957
   6c899:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 18706, src obj: 1, src ofs: 0x6c89a, dst obj: 3, dst ofs: 0x237fc
   6c89e:	e8 3e 43 00 00       	call   sprintf_
   6c8a3:	83 c4 0c             	add    esp,0xc
check_inventory_branch_2:
   6c8a6:	30 c0                	xor    al,al
   6c8a8:	5a                   	pop    edx
   6c8a9:	5b                   	pop    ebx
   6c8aa:	c3                   	ret    
   6c8ab:	8d 40 00             	lea    eax,[eax+0x0]
   6c8ae:	8b c9                	mov    ecx,ecx

;-------------------------------------------------
;  Function 'add_inventory'                      -
;-------------------------------------------------
add_inventory:
   6c8b0:	53                   	push   ebx
   6c8b1:	51                   	push   ecx
   6c8b2:	52                   	push   edx
   6c8b3:	57                   	push   edi
   6c8b4:	89 c3                	mov    ebx,eax
   6c8b6:	e8 c5 63 fe ff       	call   get_object
   6c8bb:	89 c2                	mov    edx,eax
   6c8bd:	85 c0                	test   eax,eax
   6c8bf:	74 50                	je     add_inventory_branch_1
   6c8c1:	8b 48 30             	mov    ecx,DWORD PTR [eax+0x30]
   6c8c4:	51                   	push   ecx
   6c8c5:	53                   	push   ebx
   6c8c6:	68 7b f9 00 00       	push   @obj3:convutil_cpp_variable_126                              ; fixup: num: 18705, src obj: 1, src ofs: 0x6c8c7, dst obj: 3, dst ofs: 0xf97b
   6c8cb:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 18704, src obj: 1, src ofs: 0x6c8cc, dst obj: 3, dst ofs: 0x237fc
   6c8d0:	e8 0c 43 00 00       	call   sprintf_
   6c8d5:	8b 1d 2c 41 01 00    	mov    ebx,DWORD PTR ds:@obj3:INVENTORY_ROOM                        ; fixup: num: 18703, src obj: 1, src ofs: 0x6c8d7, dst obj: 3, dst ofs: 0x1412c
   6c8db:	83 c4 10             	add    esp,0x10
   6c8de:	89 5a 3c             	mov    DWORD PTR [edx+0x3c],ebx
   6c8e1:	53                   	push   ebx
   6c8e2:	8b 7a 3c             	mov    edi,DWORD PTR [edx+0x3c]
   6c8e5:	57                   	push   edi
   6c8e6:	68 94 f9 00 00       	push   @obj3:convutil_cpp_variable_127                              ; fixup: num: 18702, src obj: 1, src ofs: 0x6c8e7, dst obj: 3, dst ofs: 0xf994
   6c8eb:	c6 42 4f 01          	mov    BYTE PTR [edx+0x4f],0x1
   6c8ef:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 18599, src obj: 1, src ofs: 0x6c8f0, dst obj: 3, dst ofs: 0x237fc
   6c8f4:	c6 42 4d 01          	mov    BYTE PTR [edx+0x4d],0x1
   6c8f8:	e8 e4 42 00 00       	call   sprintf_
   6c8fd:	83 c4 10             	add    esp,0x10
   6c900:	8a 52 4d             	mov    dl,BYTE PTR [edx+0x4d]
   6c903:	81 e2 ff 00 00 00    	and    edx,0xff
   6c909:	52                   	push   edx
   6c90a:	68 af f9 00 00       	push   @obj3:convutil_cpp_variable_128                              ; fixup: num: 18598, src obj: 1, src ofs: 0x6c90b, dst obj: 3, dst ofs: 0xf9af
   6c90f:	eb 19                	jmp    add_inventory_branch_2
add_inventory_branch_1:
   6c911:	53                   	push   ebx
   6c912:	68 c6 f9 00 00       	push   @obj3:convutil_cpp_variable_129                              ; fixup: num: 18718, src obj: 1, src ofs: 0x6c913, dst obj: 3, dst ofs: 0xf9c6
   6c917:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 18717, src obj: 1, src ofs: 0x6c918, dst obj: 3, dst ofs: 0x237fc
   6c91c:	e8 c0 42 00 00       	call   sprintf_
   6c921:	83 c4 0c             	add    esp,0xc
   6c924:	53                   	push   ebx
   6c925:	68 ee f9 00 00       	push   @obj3:convutil_cpp_variable_130                              ; fixup: num: 18716, src obj: 1, src ofs: 0x6c926, dst obj: 3, dst ofs: 0xf9ee
add_inventory_branch_2:
   6c92a:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 18715, src obj: 1, src ofs: 0x6c92b, dst obj: 3, dst ofs: 0x237fc
   6c92f:	e8 ad 42 00 00       	call   sprintf_
   6c934:	83 c4 0c             	add    esp,0xc
   6c937:	5f                   	pop    edi
   6c938:	5a                   	pop    edx
   6c939:	59                   	pop    ecx
   6c93a:	5b                   	pop    ebx
   6c93b:	c3                   	ret    
   6c93c:	8d 44 20 00          	lea    eax,[eax+eiz*1+0x0]

;-------------------------------------------------
;  Function 'KillNpc'                            -
;-------------------------------------------------
KillNpc:
   6c940:	53                   	push   ebx
   6c941:	51                   	push   ecx
   6c942:	56                   	push   esi
   6c943:	57                   	push   edi
   6c944:	89 c1                	mov    ecx,eax
   6c946:	89 d3                	mov    ebx,edx
   6c948:	89 c2                	mov    edx,eax
   6c94a:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 18714, src obj: 1, src ofs: 0x6c94b, dst obj: 3, dst ofs: 0x25a88
   6c94f:	e8 9c f7 fd ff       	call   get_bitmap
   6c954:	89 c6                	mov    esi,eax
   6c956:	89 c7                	mov    edi,eax
   6c958:	85 c0                	test   eax,eax
   6c95a:	0f 84 ca 00 00 00    	je     KillNpc_branch_8
   6c960:	ba 12 fa 00 00       	mov    edx,@obj3:convutil_cpp_variable_131                          ; fixup: num: 18713, src obj: 1, src ofs: 0x6c961, dst obj: 3, dst ofs: 0xfa12
   6c965:	89 d8                	mov    eax,ebx
   6c967:	e8 c4 9a 00 00       	call   strcmp_
   6c96c:	85 c0                	test   eax,eax
   6c96e:	74 38                	je     KillNpc_branch_2
   6c970:	ba 19 fa 00 00       	mov    edx,@obj3:convutil_cpp_variable_132                          ; fixup: num: 18712, src obj: 1, src ofs: 0x6c971, dst obj: 3, dst ofs: 0xfa19
   6c975:	89 d8                	mov    eax,ebx
   6c977:	e8 b4 9a 00 00       	call   strcmp_
   6c97c:	85 c0                	test   eax,eax
   6c97e:	75 0c                	jne    KillNpc_branch_1
   6c980:	c7 86 88 11 00 00 02 00 00 00 	mov    DWORD PTR [esi+0x1188],0x2
   6c98a:	eb 26                	jmp    KillNpc_branch_3
KillNpc_branch_1:
   6c98c:	ba 1f fa 00 00       	mov    edx,@obj3:convutil_cpp_variable_133                          ; fixup: num: 18711, src obj: 1, src ofs: 0x6c98d, dst obj: 3, dst ofs: 0xfa1f
   6c991:	89 d8                	mov    eax,ebx
   6c993:	e8 98 9a 00 00       	call   strcmp_
   6c998:	85 c0                	test   eax,eax
   6c99a:	75 0c                	jne    KillNpc_branch_2
   6c99c:	c7 86 88 11 00 00 04 00 00 00 	mov    DWORD PTR [esi+0x1188],0x4
   6c9a6:	eb 0a                	jmp    KillNpc_branch_3
KillNpc_branch_2:
   6c9a8:	c7 86 88 11 00 00 01 00 00 00 	mov    DWORD PTR [esi+0x1188],0x1
KillNpc_branch_3:
   6c9b2:	89 f8                	mov    eax,edi
   6c9b4:	e8 57 6e fd ff       	call   change2monster
   6c9b9:	89 c8                	mov    eax,ecx
   6c9bb:	e8 40 63 fe ff       	call   get_npc
   6c9c0:	89 c1                	mov    ecx,eax
   6c9c2:	85 c0                	test   eax,eax
   6c9c4:	74 4d                	je     KillNpc_branch_7
   6c9c6:	ba 24 fa 00 00       	mov    edx,@obj3:convutil_cpp_variable_134                          ; fixup: num: 18605, src obj: 1, src ofs: 0x6c9c7, dst obj: 3, dst ofs: 0xfa24
   6c9cb:	89 d8                	mov    eax,ebx
   6c9cd:	e8 5e 9a 00 00       	call   strcmp_
   6c9d2:	85 c0                	test   eax,eax
   6c9d4:	75 0c                	jne    KillNpc_branch_5
KillNpc_branch_4:
   6c9d6:	c7 41 2c 01 00 00 00 	mov    DWORD PTR [ecx+0x2c],0x1
   6c9dd:	5f                   	pop    edi
   6c9de:	5e                   	pop    esi
   6c9df:	59                   	pop    ecx
   6c9e0:	5b                   	pop    ebx
   6c9e1:	c3                   	ret    
KillNpc_branch_5:
   6c9e2:	ba 2b fa 00 00       	mov    edx,@obj3:convutil_cpp_variable_135                          ; fixup: num: 18604, src obj: 1, src ofs: 0x6c9e3, dst obj: 3, dst ofs: 0xfa2b
   6c9e7:	89 d8                	mov    eax,ebx
   6c9e9:	e8 42 9a 00 00       	call   strcmp_
   6c9ee:	85 c0                	test   eax,eax
   6c9f0:	75 0c                	jne    KillNpc_branch_6
   6c9f2:	c7 41 2c 02 00 00 00 	mov    DWORD PTR [ecx+0x2c],0x2
   6c9f9:	5f                   	pop    edi
   6c9fa:	5e                   	pop    esi
   6c9fb:	59                   	pop    ecx
   6c9fc:	5b                   	pop    ebx
   6c9fd:	c3                   	ret    
KillNpc_branch_6:
   6c9fe:	ba 31 fa 00 00       	mov    edx,@obj3:convutil_cpp_variable_136                          ; fixup: num: 18603, src obj: 1, src ofs: 0x6c9ff, dst obj: 3, dst ofs: 0xfa31
   6ca03:	89 d8                	mov    eax,ebx
   6ca05:	e8 26 9a 00 00       	call   strcmp_
   6ca0a:	85 c0                	test   eax,eax
   6ca0c:	75 c8                	jne    KillNpc_branch_4
   6ca0e:	e9 70 00 00 00       	jmp    KillNpc_branch_11
KillNpc_branch_7:
   6ca13:	68 36 fa 00 00       	push   @obj3:convutil_cpp_variable_137                              ; fixup: num: 18602, src obj: 1, src ofs: 0x6ca14, dst obj: 3, dst ofs: 0xfa36
   6ca18:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 18601, src obj: 1, src ofs: 0x6ca19, dst obj: 3, dst ofs: 0x237fc
   6ca1d:	e8 bf 41 00 00       	call   sprintf_
   6ca22:	83 c4 08             	add    esp,0x8
   6ca25:	5f                   	pop    edi
   6ca26:	5e                   	pop    esi
   6ca27:	59                   	pop    ecx
   6ca28:	5b                   	pop    ebx
   6ca29:	c3                   	ret    
KillNpc_branch_8:
   6ca2a:	89 c8                	mov    eax,ecx
   6ca2c:	e8 cf 62 fe ff       	call   get_npc
   6ca31:	89 c1                	mov    ecx,eax
   6ca33:	85 c0                	test   eax,eax
   6ca35:	74 53                	je     KillNpc_branch_12
   6ca37:	ba 7e fa 00 00       	mov    edx,@obj3:convutil_cpp_variable_138                          ; fixup: num: 18600, src obj: 1, src ofs: 0x6ca38, dst obj: 3, dst ofs: 0xfa7e
   6ca3c:	c6 40 24 01          	mov    BYTE PTR [eax+0x24],0x1
   6ca40:	89 d8                	mov    eax,ebx
   6ca42:	e8 e9 99 00 00       	call   strcmp_
   6ca47:	85 c0                	test   eax,eax
   6ca49:	75 0c                	jne    KillNpc_branch_9
   6ca4b:	c7 41 2c 01 00 00 00 	mov    DWORD PTR [ecx+0x2c],0x1
   6ca52:	5f                   	pop    edi
   6ca53:	5e                   	pop    esi
   6ca54:	59                   	pop    ecx
   6ca55:	5b                   	pop    ebx
   6ca56:	c3                   	ret    
KillNpc_branch_9:
   6ca57:	ba 85 fa 00 00       	mov    edx,@obj3:convutil_cpp_variable_139                          ; fixup: num: 18609, src obj: 1, src ofs: 0x6ca58, dst obj: 3, dst ofs: 0xfa85
   6ca5c:	89 d8                	mov    eax,ebx
   6ca5e:	e8 cd 99 00 00       	call   strcmp_
   6ca63:	85 c0                	test   eax,eax
   6ca65:	75 0c                	jne    KillNpc_branch_10
   6ca67:	c7 41 2c 02 00 00 00 	mov    DWORD PTR [ecx+0x2c],0x2
   6ca6e:	5f                   	pop    edi
   6ca6f:	5e                   	pop    esi
   6ca70:	59                   	pop    ecx
   6ca71:	5b                   	pop    ebx
   6ca72:	c3                   	ret    
KillNpc_branch_10:
   6ca73:	ba 8b fa 00 00       	mov    edx,@obj3:convutil_cpp_variable_140                          ; fixup: num: 18608, src obj: 1, src ofs: 0x6ca74, dst obj: 3, dst ofs: 0xfa8b
   6ca78:	89 d8                	mov    eax,ebx
   6ca7a:	e8 b1 99 00 00       	call   strcmp_
   6ca7f:	85 c0                	test   eax,eax
   6ca81:	75 07                	jne    KillNpc_branch_12
KillNpc_branch_11:
   6ca83:	c7 41 2c 04 00 00 00 	mov    DWORD PTR [ecx+0x2c],0x4
KillNpc_branch_12:
   6ca8a:	5f                   	pop    edi
   6ca8b:	5e                   	pop    esi
   6ca8c:	59                   	pop    ecx
   6ca8d:	5b                   	pop    ebx
   6ca8e:	c3                   	ret    
   6ca8f:	90                   	nop

;-------------------------------------------------
;  Function 'MonsterfyNpc'                       -
;-------------------------------------------------
MonsterfyNpc:
   6ca90:	52                   	push   edx
   6ca91:	85 c0                	test   eax,eax
   6ca93:	74 15                	je     MonsterfyNpc_branch_1
   6ca95:	89 c2                	mov    edx,eax
   6ca97:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 18607, src obj: 1, src ofs: 0x6ca98, dst obj: 3, dst ofs: 0x25a88
   6ca9c:	e8 4f f6 fd ff       	call   get_bitmap
   6caa1:	85 c0                	test   eax,eax
   6caa3:	74 05                	je     MonsterfyNpc_branch_1
   6caa5:	e8 66 6d fd ff       	call   change2monster
MonsterfyNpc_branch_1:
   6caaa:	5a                   	pop    edx
   6caab:	c3                   	ret    
   6caac:	8d 44 20 00          	lea    eax,[eax+eiz*1+0x0]

;-------------------------------------------------
;  Function 'SetNpc'                             -
;-------------------------------------------------
SetNpc:
   6cab0:	51                   	push   ecx
   6cab1:	56                   	push   esi
   6cab2:	57                   	push   edi
   6cab3:	89 c6                	mov    esi,eax
   6cab5:	85 c0                	test   eax,eax
   6cab7:	0f 84 b5 00 00 00    	je     SetNpc_branch_6
   6cabd:	e8 3e 62 fe ff       	call   get_npc
   6cac2:	89 c1                	mov    ecx,eax
   6cac4:	89 c7                	mov    edi,eax
   6cac6:	85 c0                	test   eax,eax
   6cac8:	0f 84 a4 00 00 00    	je     SetNpc_branch_6
   6cace:	80 78 24 00          	cmp    BYTE PTR [eax+0x24],0x0
   6cad2:	0f 85 9a 00 00 00    	jne    SetNpc_branch_6
   6cad8:	88 59 26             	mov    BYTE PTR [ecx+0x26],bl
   6cadb:	88 51 25             	mov    BYTE PTR [ecx+0x25],dl
   6cade:	8b 15 c4 5a 02 00    	mov    edx,DWORD PTR ds:@obj3:current_room                          ; fixup: num: 18606, src obj: 1, src ofs: 0x6cae0, dst obj: 3, dst ofs: 0x25ac4
   6cae4:	8b 41 20             	mov    eax,DWORD PTR [ecx+0x20]
   6cae7:	8b 52 2c             	mov    edx,DWORD PTR [edx+0x2c]
   6caea:	e8 41 99 00 00       	call   strcmp_
   6caef:	85 c0                	test   eax,eax
   6caf1:	0f 85 7b 00 00 00    	jne    SetNpc_branch_6
   6caf7:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 18614, src obj: 1, src ofs: 0x6caf8, dst obj: 3, dst ofs: 0x25a88
   6cafc:	89 f2                	mov    edx,esi
   6cafe:	e8 ed f5 fd ff       	call   get_bitmap
   6cb03:	89 c3                	mov    ebx,eax
   6cb05:	8a 51 26             	mov    dl,BYTE PTR [ecx+0x26]
   6cb08:	89 c6                	mov    esi,eax
   6cb0a:	84 d2                	test   dl,dl
   6cb0c:	74 36                	je     SetNpc_branch_3
   6cb0e:	85 c0                	test   eax,eax
   6cb10:	75 56                	jne    SetNpc_branch_5
   6cb12:	b8 bc 11 00 00       	mov    eax,0x11bc
   6cb17:	e8 fc 53 00 00       	call   W?$nwn(ui)pnv
   6cb1c:	85 c0                	test   eax,eax
   6cb1e:	74 10                	je     SetNpc_branch_1
   6cb20:	bb 93 14 07 00       	mov    ebx,@obj1:_nmalloc_                                          ; aliases: _nmalloc_, malloc_; fixup: num: 18613, src obj: 1, src ofs: 0x6cb21, dst obj: 1, dst ofs: 0x71493
   6cb25:	89 ca                	mov    edx,ecx
   6cb27:	e8 d4 01 fd ff       	call   W?$ct:NON_PLAYER_CHARACTER$n(pn$_npc_type$$pn(ui)pnv)_
   6cb2c:	89 c2                	mov    edx,eax
   6cb2e:	eb 02                	jmp    SetNpc_branch_2
SetNpc_branch_1:
   6cb30:	89 da                	mov    edx,ebx
SetNpc_branch_2:
   6cb32:	89 d6                	mov    esi,edx
   6cb34:	85 d2                	test   edx,edx
   6cb36:	74 30                	je     SetNpc_branch_5
   6cb38:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 18612, src obj: 1, src ofs: 0x6cb39, dst obj: 3, dst ofs: 0x25a88
   6cb3d:	e8 ee f5 fd ff       	call   insert_bitmap
   6cb42:	eb 24                	jmp    SetNpc_branch_5
SetNpc_branch_3:
   6cb44:	85 c0                	test   eax,eax
   6cb46:	74 20                	je     SetNpc_branch_5
   6cb48:	89 c2                	mov    edx,eax
   6cb4a:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 18611, src obj: 1, src ofs: 0x6cb4b, dst obj: 3, dst ofs: 0x25a88
   6cb4f:	e8 9c fb fd ff       	call   remove_bitmap
   6cb54:	85 db                	test   ebx,ebx
   6cb56:	74 0e                	je     SetNpc_branch_4
   6cb58:	89 d8                	mov    eax,ebx
   6cb5a:	31 d2                	xor    edx,edx
   6cb5c:	e8 cf 84 fd ff       	call   W?$dt:NON_PLAYER_CHARACTER$n()_
   6cb61:	e8 12 55 00 00       	call   W?$dln(pnv)v
SetNpc_branch_4:
   6cb66:	31 f6                	xor    esi,esi
SetNpc_branch_5:
   6cb68:	85 f6                	test   esi,esi
   6cb6a:	74 06                	je     SetNpc_branch_6
   6cb6c:	8a 47 25             	mov    al,BYTE PTR [edi+0x25]
   6cb6f:	88 46 52             	mov    BYTE PTR [esi+0x52],al
SetNpc_branch_6:
   6cb72:	5f                   	pop    edi
   6cb73:	5e                   	pop    esi
   6cb74:	59                   	pop    ecx
SetNpc_branch_7:
   6cb75:	c3                   	ret    
   6cb76:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   6cb7c:	8d 54 22 00          	lea    edx,[edx+eiz*1+0x0]

;-------------------------------------------------
;  Function 'ExecuteCommand'                     -
;-------------------------------------------------
ExecuteCommand:
   6cb80:	85 c0                	test   eax,eax
   6cb82:	74 f1                	je     SetNpc_branch_7
   6cb84:	e9 57 43 fe ff       	jmp    execute_command
   6cb89:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   6cb8f:	90                   	nop

;-------------------------------------------------
;  Function 'RoomUpdate'                         -
;-------------------------------------------------
RoomUpdate:
   6cb90:	53                   	push   ebx
   6cb91:	52                   	push   edx
   6cb92:	8b 1d 88 5a 02 00    	mov    ebx,DWORD PTR ds:@obj3:the_list                              ; fixup: num: 18610, src obj: 1, src ofs: 0x6cb94, dst obj: 3, dst ofs: 0x25a88
   6cb98:	85 db                	test   ebx,ebx
   6cb9a:	75 37                	jne    RoomUpdate_branch_3
   6cb9c:	5a                   	pop    edx
   6cb9d:	5b                   	pop    ebx
   6cb9e:	c3                   	ret    
RoomUpdate_branch_1:
   6cb9f:	89 d8                	mov    eax,ebx
   6cba1:	e8 aa 0b fd ff       	call   update_mod_76_2
   6cba6:	84 c0                	test   al,al
   6cba8:	75 40                	jne    RoomUpdate_branch_4
   6cbaa:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 18621, src obj: 1, src ofs: 0x6cbab, dst obj: 3, dst ofs: 0x25a88
   6cbaf:	89 da                	mov    edx,ebx
   6cbb1:	e8 3a fb fd ff       	call   remove_bitmap
   6cbb6:	85 db                	test   ebx,ebx
   6cbb8:	74 30                	je     RoomUpdate_branch_4
   6cbba:	89 d8                	mov    eax,ebx
   6cbbc:	31 d2                	xor    edx,edx
   6cbbe:	e8 dd e7 fc ff       	call   W?$dt:BTMAP$n()_
   6cbc3:	e8 b0 54 00 00       	call   W?$dln(pnv)v
   6cbc8:	eb 20                	jmp    RoomUpdate_branch_4
RoomUpdate_branch_2:
   6cbca:	89 d8                	mov    eax,ebx
   6cbcc:	e8 0f ff fc ff       	call   update_mod_76
   6cbd1:	eb 17                	jmp    RoomUpdate_branch_4
RoomUpdate_branch_3:
   6cbd3:	8b 43 48             	mov    eax,DWORD PTR [ebx+0x48]
   6cbd6:	a3 d4 61 02 00       	mov    ds:@obj3:temp_next,eax                                       ; fixup: num: 18620, src obj: 1, src ofs: 0x6cbd7, dst obj: 3, dst ofs: 0x261d4
   6cbdb:	8b 43 38             	mov    eax,DWORD PTR [ebx+0x38]
   6cbde:	83 f8 01             	cmp    eax,0x1
   6cbe1:	72 07                	jb     RoomUpdate_branch_4
   6cbe3:	76 e5                	jbe    RoomUpdate_branch_2
   6cbe5:	83 f8 04             	cmp    eax,0x4
   6cbe8:	74 b5                	je     RoomUpdate_branch_1
RoomUpdate_branch_4:
   6cbea:	8b 1d d4 61 02 00    	mov    ebx,DWORD PTR ds:@obj3:temp_next                             ; fixup: num: 18619, src obj: 1, src ofs: 0x6cbec, dst obj: 3, dst ofs: 0x261d4
   6cbf0:	85 db                	test   ebx,ebx
   6cbf2:	75 df                	jne    RoomUpdate_branch_3
   6cbf4:	5a                   	pop    edx
   6cbf5:	5b                   	pop    ebx
   6cbf6:	c3                   	ret    
   6cbf7:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   6cbfd:	8d 52 00             	lea    edx,[edx+0x0]

;-------------------------------------------------
;  Function 'item_back_to_inv'                   -
;-------------------------------------------------
item_back_to_inv:
   6cc00:	53                   	push   ebx
   6cc01:	52                   	push   edx
   6cc02:	89 c2                	mov    edx,eax
   6cc04:	e8 77 60 fe ff       	call   get_object
   6cc09:	85 c0                	test   eax,eax
   6cc0b:	74 1b                	je     item_back_to_inv_branch_1
   6cc0d:	8b 1d 2c 41 01 00    	mov    ebx,DWORD PTR ds:@obj3:INVENTORY_ROOM                        ; fixup: num: 18618, src obj: 1, src ofs: 0x6cc0f, dst obj: 3, dst ofs: 0x1412c
   6cc13:	89 58 3c             	mov    DWORD PTR [eax+0x3c],ebx
   6cc16:	bb 01 00 00 00       	mov    ebx,0x1
   6cc1b:	b8 80 f2 00 00       	mov    eax,@obj3:convutil_cpp_variable_21                           ; fixup: num: 18617, src obj: 1, src ofs: 0x6cc1c, dst obj: 3, dst ofs: 0xf280
   6cc20:	e8 eb 62 fe ff       	call   set_object
   6cc25:	5a                   	pop    edx
   6cc26:	5b                   	pop    ebx
   6cc27:	c3                   	ret    
item_back_to_inv_branch_1:
   6cc28:	52                   	push   edx
   6cc29:	68 84 f2 00 00       	push   @obj3:convutil_cpp_variable_22                               ; fixup: num: 18616, src obj: 1, src ofs: 0x6cc2a, dst obj: 3, dst ofs: 0xf284
   6cc2e:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 18615, src obj: 1, src ofs: 0x6cc2f, dst obj: 3, dst ofs: 0x237fc
   6cc33:	e8 a9 3f 00 00       	call   sprintf_
   6cc38:	83 c4 0c             	add    esp,0xc
   6cc3b:	5a                   	pop    edx
   6cc3c:	5b                   	pop    ebx
   6cc3d:	c3                   	ret    
   6cc3e:	8b c0                	mov    eax,eax

;-------------------------------------------------
;  Function 'reset_item_to_initial_settings'     -
;-------------------------------------------------
reset_item_to_initial_settings:
   6cc40:	53                   	push   ebx
   6cc41:	e8 3a 60 fe ff       	call   get_object
   6cc46:	85 c0                	test   eax,eax
   6cc48:	74 20                	je     reset_item_to_initial_settings_branch_1
   6cc4a:	8b 58 48             	mov    ebx,DWORD PTR [eax+0x48]
   6cc4d:	8a 70 4e             	mov    dh,BYTE PTR [eax+0x4e]
   6cc50:	89 58 3c             	mov    DWORD PTR [eax+0x3c],ebx
   6cc53:	88 70 4d             	mov    BYTE PTR [eax+0x4d],dh
   6cc56:	88 50 4f             	mov    BYTE PTR [eax+0x4f],dl
   6cc59:	8b 10                	mov    edx,DWORD PTR [eax]
   6cc5b:	89 50 0c             	mov    DWORD PTR [eax+0xc],edx
   6cc5e:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
   6cc61:	89 50 10             	mov    DWORD PTR [eax+0x10],edx
   6cc64:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
   6cc67:	89 50 14             	mov    DWORD PTR [eax+0x14],edx
reset_item_to_initial_settings_branch_1:
   6cc6a:	5b                   	pop    ebx
   6cc6b:	c3                   	ret    
   6cc6c:	8d 44 20 00          	lea    eax,[eax+eiz*1+0x0]

;-------------------------------------------------
;  Function 'PlaybackDialog'                     -
;-------------------------------------------------
PlaybackDialog:
   6cc70:	53                   	push   ebx
   6cc71:	51                   	push   ecx
   6cc72:	52                   	push   edx
   6cc73:	56                   	push   esi
   6cc74:	57                   	push   edi
   6cc75:	55                   	push   ebp
   6cc76:	81 ec 5c 01 00 00    	sub    esp,0x15c
   6cc7c:	85 c0                	test   eax,eax
   6cc7e:	74 1b                	je     PlaybackDialog_branch_2
   6cc80:	8d 1c 95 00 00 00 00 	lea    ebx,[edx*4+0x0]
PlaybackDialog_branch_1:
   6cc87:	81 fa b8 0b 00 00    	cmp    edx,0xbb8
   6cc8d:	7d 0c                	jge    PlaybackDialog_branch_2
   6cc8f:	3b 83 dc 65 02 00    	cmp    eax,DWORD PTR [ebx+@obj3:ref_num]                            ; fixup: num: 18624, src obj: 1, src ofs: 0x6cc91, dst obj: 3, dst ofs: 0x265dc
   6cc95:	75 f0                	jne    PlaybackDialog_branch_1
   6cc97:	89 d0                	mov    eax,edx
   6cc99:	eb ec                	jmp    PlaybackDialog_branch_1
PlaybackDialog_branch_2:
   6cc9b:	3d b8 0b 00 00       	cmp    eax,0xbb8
   6cca0:	7c 23                	jl     PlaybackDialog_branch_4
   6cca2:	e9 b2 08 00 00       	jmp    PlaybackDialog_branch_82
PlaybackDialog_branch_3:
   6cca7:	8b 8c 24 44 01 00 00 	mov    ecx,DWORD PTR [esp+0x144]
   6ccae:	83 c1 04             	add    ecx,0x4
   6ccb1:	89 8c 24 44 01 00 00 	mov    DWORD PTR [esp+0x144],ecx
   6ccb8:	81 f9 e0 2e 00 00    	cmp    ecx,0x2ee0
   6ccbe:	7c 13                	jl     PlaybackDialog_branch_5
   6ccc0:	e9 94 08 00 00       	jmp    PlaybackDialog_branch_82
PlaybackDialog_branch_4:
   6ccc5:	8d 04 85 00 00 00 00 	lea    eax,[eax*4+0x0]
   6cccc:	89 84 24 44 01 00 00 	mov    DWORD PTR [esp+0x144],eax
PlaybackDialog_branch_5:
   6ccd3:	8b ac 24 44 01 00 00 	mov    ebp,DWORD PTR [esp+0x144]
   6ccda:	be 90 fa 00 00       	mov    esi,@obj3:convutil_cpp_variable_141                          ; fixup: num: 18623, src obj: 1, src ofs: 0x6ccdb, dst obj: 3, dst ofs: 0xfa90
   6ccdf:	8d 84 24 90 00 00 00 	lea    eax,[esp+0x90]
   6cce6:	30 d2                	xor    dl,dl
   6cce8:	89 b4 24 4c 01 00 00 	mov    DWORD PTR [esp+0x14c],esi
   6ccef:	8b ad dc 65 02 00    	mov    ebp,DWORD PTR [ebp+@obj3:ref_num]                            ; fixup: num: 18622, src obj: 1, src ofs: 0x6ccf1, dst obj: 3, dst ofs: 0x265dc
   6ccf5:	e8 26 b7 f9 ff       	call   W?$ct:SOUND$n()_
   6ccfa:	30 e4                	xor    ah,ah
   6ccfc:	88 94 24 54 01 00 00 	mov    BYTE PTR [esp+0x154],dl
   6cd03:	88 a4 24 58 01 00 00 	mov    BYTE PTR [esp+0x158],ah
   6cd0a:	b8 90 fa 00 00       	mov    eax,@obj3:convutil_cpp_variable_141                          ; fixup: num: 18631, src obj: 1, src ofs: 0x6cd0b, dst obj: 3, dst ofs: 0xfa90
   6cd0f:	31 f6                	xor    esi,esi
   6cd11:	85 c0                	test   eax,eax
   6cd13:	0f 84 24 08 00 00    	je     PlaybackDialog_branch_81
   6cd19:	80 3d bf 96 02 00 00 	cmp    BYTE PTR ds:@obj3:cancel,0x0                                 ; fixup: num: 18630, src obj: 1, src ofs: 0x6cd1b, dst obj: 3, dst ofs: 0x296bf
   6cd20:	0f 85 17 08 00 00    	jne    PlaybackDialog_branch_81
   6cd26:	89 c7                	mov    edi,eax
   6cd28:	29 c9                	sub    ecx,ecx
   6cd2a:	49                   	dec    ecx
   6cd2b:	31 c0                	xor    eax,eax
   6cd2d:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
   6cd2f:	f7 d1                	not    ecx
   6cd31:	49                   	dec    ecx
   6cd32:	83 f9 1e             	cmp    ecx,0x1e
   6cd35:	76 11                	jbe    PlaybackDialog_branch_6
   6cd37:	bb ee f4 00 00       	mov    ebx,@obj3:convutil_cpp_variable_60                           ; fixup: num: 18629, src obj: 1, src ofs: 0x6cd38, dst obj: 3, dst ofs: 0xf4ee
   6cd3c:	ba 80 02 00 00       	mov    edx,0x280
   6cd41:	31 c0                	xor    eax,eax
   6cd43:	e8 e8 b2 fc ff       	call   _error_report
PlaybackDialog_branch_6:
   6cd48:	56                   	push   esi
   6cd49:	8b bc 24 50 01 00 00 	mov    edi,DWORD PTR [esp+0x150]
   6cd50:	57                   	push   edi
   6cd51:	68 ff f4 00 00       	push   @obj3:convutil_cpp_variable_61                               ; fixup: num: 18628, src obj: 1, src ofs: 0x6cd52, dst obj: 3, dst ofs: 0xf4ff
   6cd56:	8d 84 24 24 01 00 00 	lea    eax,[esp+0x124]
   6cd5d:	50                   	push   eax
   6cd5e:	bb 0a 00 00 00       	mov    ebx,0xa
   6cd63:	e8 79 3e 00 00       	call   sprintf_
   6cd68:	83 c4 10             	add    esp,0x10
   6cd6b:	8d 94 24 38 01 00 00 	lea    edx,[esp+0x138]
   6cd72:	89 e8                	mov    eax,ebp
   6cd74:	e8 f8 9e 00 00       	call   itoa_                                                        ; aliases: itoa_, _itoa_
   6cd79:	50                   	push   eax
   6cd7a:	ba 04 f5 00 00       	mov    edx,@obj3:convutil_cpp_variable_62                           ; fixup: num: 18627, src obj: 1, src ofs: 0x6cd7b, dst obj: 3, dst ofs: 0xf504
   6cd7f:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 18626, src obj: 1, src ofs: 0x6cd80, dst obj: 3, dst ofs: 0x32438
   6cd84:	e8 47 0a 00 00       	call   get
   6cd89:	50                   	push   eax
   6cd8a:	68 0a f5 00 00       	push   @obj3:convutil_cpp_variable_63                               ; fixup: num: 18625, src obj: 1, src ofs: 0x6cd8b, dst obj: 3, dst ofs: 0xf50a
   6cd8f:	8d 44 24 0c          	lea    eax,[esp+0xc]
   6cd93:	50                   	push   eax
   6cd94:	e8 48 3e 00 00       	call   sprintf_
   6cd99:	83 c4 10             	add    esp,0x10
   6cd9c:	89 e0                	mov    eax,esp
   6cd9e:	e8 dd fe f9 ff       	call   XFILE_size
   6cda3:	89 84 24 50 01 00 00 	mov    DWORD PTR [esp+0x150],eax
   6cdaa:	85 c0                	test   eax,eax
   6cdac:	7e 0e                	jle    PlaybackDialog_branch_7
   6cdae:	89 e2                	mov    edx,esp
   6cdb0:	8d 84 24 90 00 00 00 	lea    eax,[esp+0x90]
   6cdb7:	e8 14 c4 f9 ff       	call   load_from_file
PlaybackDialog_branch_7:
   6cdbc:	b9 b7 0b 00 00       	mov    ecx,0xbb7
   6cdc1:	89 ce                	mov    esi,ecx
   6cdc3:	31 ff                	xor    edi,edi
PlaybackDialog_branch_8:
   6cdc5:	6b c1 0c             	imul   eax,ecx,0xc
   6cdc8:	3b a8 8c 97 02 00    	cmp    ebp,DWORD PTR [eax+@obj3:index_table]                        ; fixup: num: 18639, src obj: 1, src ofs: 0x6cdca, dst obj: 3, dst ofs: 0x2978c
   6cdce:	0f 84 c7 00 00 00    	je     PlaybackDialog_branch_15
   6cdd4:	89 f2                	mov    edx,esi
   6cdd6:	89 f0                	mov    eax,esi
   6cdd8:	c1 fa 1f             	sar    edx,0x1f
   6cddb:	2b c2                	sub    eax,edx
   6cddd:	d1 f8                	sar    eax,1
   6cddf:	89 c6                	mov    esi,eax
   6cde1:	85 c0                	test   eax,eax
   6cde3:	75 05                	jne    PlaybackDialog_branch_9
   6cde5:	be 01 00 00 00       	mov    esi,0x1
PlaybackDialog_branch_9:
   6cdea:	6b c1 0c             	imul   eax,ecx,0xc
   6cded:	3b a8 8c 97 02 00    	cmp    ebp,DWORD PTR [eax+@obj3:index_table]                        ; fixup: num: 18638, src obj: 1, src ofs: 0x6cdef, dst obj: 3, dst ofs: 0x2978c
   6cdf3:	7e 34                	jle    PlaybackDialog_branch_11
   6cdf5:	83 fe 01             	cmp    esi,0x1
   6cdf8:	75 2b                	jne    PlaybackDialog_branch_10
   6cdfa:	8d 04 31             	lea    eax,[ecx+esi*1]
   6cdfd:	6b c0 0c             	imul   eax,eax,0xc
   6ce00:	3b a8 8c 97 02 00    	cmp    ebp,DWORD PTR [eax+@obj3:index_table]                        ; fixup: num: 18637, src obj: 1, src ofs: 0x6ce02, dst obj: 3, dst ofs: 0x2978c
   6ce06:	7d 1d                	jge    PlaybackDialog_branch_10
   6ce08:	55                   	push   ebp
   6ce09:	68 16 f5 00 00       	push   @obj3:convutil_cpp_variable_64                               ; fixup: num: 18636, src obj: 1, src ofs: 0x6ce0a, dst obj: 3, dst ofs: 0xf516
   6ce0e:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 18635, src obj: 1, src ofs: 0x6ce0f, dst obj: 3, dst ofs: 0x237fc
   6ce13:	b9 ff ff ff ff       	mov    ecx,0xffffffff
   6ce18:	e8 c4 3d 00 00       	call   sprintf_
   6ce1d:	83 c4 0c             	add    esp,0xc
   6ce20:	e9 76 00 00 00       	jmp    PlaybackDialog_branch_15
PlaybackDialog_branch_10:
   6ce25:	01 f1                	add    ecx,esi
   6ce27:	eb 2f                	jmp    PlaybackDialog_branch_13
PlaybackDialog_branch_11:
   6ce29:	83 fe 01             	cmp    esi,0x1
   6ce2c:	75 28                	jne    PlaybackDialog_branch_12
   6ce2e:	8d 41 ff             	lea    eax,[ecx-0x1]
   6ce31:	6b c0 0c             	imul   eax,eax,0xc
   6ce34:	3b a8 8c 97 02 00    	cmp    ebp,DWORD PTR [eax+@obj3:index_table]                        ; fixup: num: 18634, src obj: 1, src ofs: 0x6ce36, dst obj: 3, dst ofs: 0x2978c
   6ce3a:	7e 1a                	jle    PlaybackDialog_branch_12
   6ce3c:	55                   	push   ebp
   6ce3d:	68 39 f5 00 00       	push   @obj3:convutil_cpp_variable_65                               ; fixup: num: 18633, src obj: 1, src ofs: 0x6ce3e, dst obj: 3, dst ofs: 0xf539
   6ce42:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 18632, src obj: 1, src ofs: 0x6ce43, dst obj: 3, dst ofs: 0x237fc
   6ce47:	b9 ff ff ff ff       	mov    ecx,0xffffffff
   6ce4c:	e8 90 3d 00 00       	call   sprintf_
   6ce51:	83 c4 0c             	add    esp,0xc
   6ce54:	eb 45                	jmp    PlaybackDialog_branch_15
PlaybackDialog_branch_12:
   6ce56:	29 f1                	sub    ecx,esi
PlaybackDialog_branch_13:
   6ce58:	81 f9 b8 0b 00 00    	cmp    ecx,0xbb8
   6ce5e:	7f 08                	jg     PlaybackDialog_branch_14
   6ce60:	85 c9                	test   ecx,ecx
   6ce62:	0f 85 5d ff ff ff    	jne    PlaybackDialog_branch_8
PlaybackDialog_branch_14:
   6ce68:	6b c1 0c             	imul   eax,ecx,0xc
   6ce6b:	8b 90 8c 97 02 00    	mov    edx,DWORD PTR [eax+@obj3:index_table]                        ; fixup: num: 18653, src obj: 1, src ofs: 0x6ce6d, dst obj: 3, dst ofs: 0x2978c
   6ce71:	52                   	push   edx
   6ce72:	51                   	push   ecx
   6ce73:	68 5c f5 00 00       	push   @obj3:convutil_cpp_variable_66                               ; fixup: num: 18652, src obj: 1, src ofs: 0x6ce74, dst obj: 3, dst ofs: 0xf55c
   6ce78:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 18651, src obj: 1, src ofs: 0x6ce79, dst obj: 3, dst ofs: 0x237fc
   6ce7d:	bb 6f f5 00 00       	mov    ebx,@obj3:convutil_cpp_variable_67                           ; fixup: num: 18650, src obj: 1, src ofs: 0x6ce7e, dst obj: 3, dst ofs: 0xf56f
   6ce82:	e8 5a 3d 00 00       	call   sprintf_
   6ce87:	83 c4 10             	add    esp,0x10
   6ce8a:	ba b7 02 00 00       	mov    edx,0x2b7
   6ce8f:	89 f8                	mov    eax,edi
   6ce91:	e8 9a b1 fc ff       	call   _error_report
   6ce96:	e9 2a ff ff ff       	jmp    PlaybackDialog_branch_8
PlaybackDialog_branch_15:
   6ce9b:	ba 83 f5 00 00       	mov    edx,@obj3:convutil_cpp_variable_68                           ; fixup: num: 18649, src obj: 1, src ofs: 0x6ce9c, dst obj: 3, dst ofs: 0xf583
   6cea0:	8b 84 24 4c 01 00 00 	mov    eax,DWORD PTR [esp+0x14c]
   6cea7:	e8 84 95 00 00       	call   strcmp_
   6ceac:	85 c0                	test   eax,eax
   6ceae:	75 08                	jne    PlaybackDialog_branch_16
   6ceb0:	c6 84 24 58 01 00 00 01 	mov    BYTE PTR [esp+0x158],0x1
PlaybackDialog_branch_16:
   6ceb8:	83 f9 ff             	cmp    ecx,0xffffffff
   6cebb:	0f 8e 98 01 00 00    	jle    PlaybackDialog_branch_28
   6cec1:	6b f1 0c             	imul   esi,ecx,0xc
   6cec4:	a1 88 97 02 00       	mov    eax,ds:@obj3:fh_Dialog                                       ; fixup: num: 18648, src obj: 1, src ofs: 0x6cec5, dst obj: 3, dst ofs: 0x29788
   6cec9:	31 db                	xor    ebx,ebx
   6cecb:	8b 96 90 97 02 00    	mov    edx,DWORD PTR [esi+@obj3:index_table_variable_1]             ; fixup: num: 18647, src obj: 1, src ofs: 0x6cecd, dst obj: 3, dst ofs: 0x29790
   6ced1:	b9 84 f5 00 00       	mov    ecx,@obj3:convutil_cpp_variable_69                           ; fixup: num: 18646, src obj: 1, src ofs: 0x6ced2, dst obj: 3, dst ofs: 0xf584
   6ced6:	e8 25 1a fa ff       	call   XFILE_seek
   6cedb:	68 c4 02 00 00       	push   0x2c4
   6cee0:	ba dc 61 02 00       	mov    edx,@obj3:_showtext                                          ; fixup: num: 18645, src obj: 1, src ofs: 0x6cee1, dst obj: 3, dst ofs: 0x261dc
   6cee5:	a1 88 97 02 00       	mov    eax,ds:@obj3:fh_Dialog                                       ; fixup: num: 18644, src obj: 1, src ofs: 0x6cee6, dst obj: 3, dst ofs: 0x29788
   6ceea:	8b 9e 94 97 02 00    	mov    ebx,DWORD PTR [esi+@obj3:index_table_variable_2]             ; fixup: num: 18643, src obj: 1, src ofs: 0x6ceec, dst obj: 3, dst ofs: 0x29794
   6cef0:	e8 5b 18 fa ff       	call   XFILE_read_chunk2
   6cef5:	8b 86 94 97 02 00    	mov    eax,DWORD PTR [esi+@obj3:index_table_variable_2]             ; fixup: num: 18642, src obj: 1, src ofs: 0x6cef7, dst obj: 3, dst ofs: 0x29794
   6cefb:	30 ff                	xor    bh,bh
   6cefd:	bf dc 61 02 00       	mov    edi,@obj3:_showtext                                          ; fixup: num: 18641, src obj: 1, src ofs: 0x6cefe, dst obj: 3, dst ofs: 0x261dc
   6cf02:	88 b8 dc 61 02 00    	mov    BYTE PTR [eax+@obj3:_showtext],bh                            ; fixup: num: 18640, src obj: 1, src ofs: 0x6cf04, dst obj: 3, dst ofs: 0x261dc
   6cf08:	29 c9                	sub    ecx,ecx
   6cf0a:	49                   	dec    ecx
   6cf0b:	31 c0                	xor    eax,eax
   6cf0d:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
   6cf0f:	f7 d1                	not    ecx
   6cf11:	49                   	dec    ecx
   6cf12:	81 f9 00 04 00 00    	cmp    ecx,0x400
   6cf18:	72 13                	jb     PlaybackDialog_branch_17
   6cf1a:	bb 91 f5 00 00       	mov    ebx,@obj3:convutil_cpp_variable_70                           ; fixup: num: 18592, src obj: 1, src ofs: 0x6cf1b, dst obj: 3, dst ofs: 0xf591
   6cf1f:	ba c9 02 00 00       	mov    edx,0x2c9
   6cf24:	31 c0                	xor    eax,eax
   6cf26:	e8 05 b1 fc ff       	call   _error_report
   6cf2b:	eb 1b                	jmp    PlaybackDialog_branch_18
PlaybackDialog_branch_17:
   6cf2d:	bf dc 61 02 00       	mov    edi,@obj3:_showtext                                          ; fixup: num: 18591, src obj: 1, src ofs: 0x6cf2e, dst obj: 3, dst ofs: 0x261dc
   6cf32:	29 c9                	sub    ecx,ecx
   6cf34:	49                   	dec    ecx
   6cf35:	31 c0                	xor    eax,eax
   6cf37:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
   6cf39:	f7 d1                	not    ecx
   6cf3b:	49                   	dec    ecx
   6cf3c:	b8 dc 61 02 00       	mov    eax,@obj3:_showtext                                          ; fixup: num: 18590, src obj: 1, src ofs: 0x6cf3d, dst obj: 3, dst ofs: 0x261dc
   6cf41:	89 ca                	mov    edx,ecx
   6cf43:	e8 38 60 fc ff       	call   decrypt
PlaybackDialog_branch_18:
   6cf48:	31 c0                	xor    eax,eax
   6cf4a:	a0 58 7e 01 00       	mov    al,ds:@obj3:text_dialog                                      ; fixup: num: 18589, src obj: 1, src ofs: 0x6cf4b, dst obj: 3, dst ofs: 0x17e58
   6cf4f:	85 c0                	test   eax,eax
   6cf51:	0f 8e f8 00 00 00    	jle    PlaybackDialog_branch_27
   6cf57:	b8 50 00 00 00       	mov    eax,0x50
   6cf5c:	e8 b7 4f 00 00       	call   W?$nwn(ui)pnv
   6cf61:	85 c0                	test   eax,eax
   6cf63:	74 23                	je     PlaybackDialog_branch_19
   6cf65:	68 3c 01 00 00       	push   0x13c
   6cf6a:	6a ce                	push   0xffffffce
   6cf6c:	6a 0c                	push   0xc
   6cf6e:	b9 9f f5 00 00       	mov    ecx,@obj3:convutil_cpp_variable_71                           ; fixup: num: 18588, src obj: 1, src ofs: 0x6cf6f, dst obj: 3, dst ofs: 0xf59f
   6cf73:	68 b2 00 00 00       	push   0xb2
   6cf78:	ba dc 61 02 00       	mov    edx,@obj3:_showtext                                          ; fixup: num: 18587, src obj: 1, src ofs: 0x6cf79, dst obj: 3, dst ofs: 0x261dc
   6cf7d:	8b 1d c4 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:textfont                              ; fixup: num: 18586, src obj: 1, src ofs: 0x6cf7f, dst obj: 3, dst ofs: 0x25bc4
   6cf83:	e8 78 cc fd ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
PlaybackDialog_branch_19:
   6cf88:	8b 70 4c             	mov    esi,DWORD PTR [eax+0x4c]
   6cf8b:	a3 d8 61 02 00       	mov    ds:@obj3:_text_bitmap,eax                                    ; fixup: num: 18658, src obj: 1, src ofs: 0x6cf8c, dst obj: 3, dst ofs: 0x261d8
   6cf90:	83 fe 01             	cmp    esi,0x1
   6cf93:	75 15                	jne    PlaybackDialog_branch_20
   6cf95:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 18657, src obj: 1, src ofs: 0x6cf96, dst obj: 3, dst ofs: 0x25a88
   6cf9a:	8b 15 68 97 02 00    	mov    edx,DWORD PTR ds:@obj3:textbox1                              ; fixup: num: 18656, src obj: 1, src ofs: 0x6cf9c, dst obj: 3, dst ofs: 0x29768
   6cfa0:	e8 8b f1 fd ff       	call   insert_bitmap
   6cfa5:	e9 b7 00 00 00       	jmp    PlaybackDialog_branch_29
PlaybackDialog_branch_20:
   6cfaa:	83 fe 02             	cmp    esi,0x2
   6cfad:	7f 15                	jg     PlaybackDialog_branch_21
   6cfaf:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 18655, src obj: 1, src ofs: 0x6cfb0, dst obj: 3, dst ofs: 0x25a88
   6cfb4:	8b 15 6c 97 02 00    	mov    edx,DWORD PTR ds:@obj3:textbox2                              ; fixup: num: 18654, src obj: 1, src ofs: 0x6cfb6, dst obj: 3, dst ofs: 0x2976c
   6cfba:	e8 71 f1 fd ff       	call   insert_bitmap
   6cfbf:	e9 9d 00 00 00       	jmp    PlaybackDialog_branch_29
PlaybackDialog_branch_21:
   6cfc4:	83 fe 03             	cmp    esi,0x3
   6cfc7:	7f 15                	jg     PlaybackDialog_branch_22
   6cfc9:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 18597, src obj: 1, src ofs: 0x6cfca, dst obj: 3, dst ofs: 0x25a88
   6cfce:	8b 15 70 97 02 00    	mov    edx,DWORD PTR ds:@obj3:textbox3                              ; fixup: num: 18596, src obj: 1, src ofs: 0x6cfd0, dst obj: 3, dst ofs: 0x29770
   6cfd4:	e8 57 f1 fd ff       	call   insert_bitmap
   6cfd9:	e9 83 00 00 00       	jmp    PlaybackDialog_branch_29
PlaybackDialog_branch_22:
   6cfde:	83 fe 05             	cmp    esi,0x5
   6cfe1:	7f 15                	jg     PlaybackDialog_branch_23
   6cfe3:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 18595, src obj: 1, src ofs: 0x6cfe4, dst obj: 3, dst ofs: 0x25a88
   6cfe8:	8b 15 74 97 02 00    	mov    edx,DWORD PTR ds:@obj3:textbox4                              ; fixup: num: 18594, src obj: 1, src ofs: 0x6cfea, dst obj: 3, dst ofs: 0x29774
   6cfee:	e8 3d f1 fd ff       	call   insert_bitmap
   6cff3:	e9 69 00 00 00       	jmp    PlaybackDialog_branch_29
PlaybackDialog_branch_23:
   6cff8:	83 fe 06             	cmp    esi,0x6
   6cffb:	7f 12                	jg     PlaybackDialog_branch_24
   6cffd:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 18593, src obj: 1, src ofs: 0x6cffe, dst obj: 3, dst ofs: 0x25a88; fixup: num: 18905, src obj: 1, src ofs: 0x6cffe, dst obj: 3, dst ofs: 0x25a88
   6d002:	8b 15 78 97 02 00    	mov    edx,DWORD PTR ds:@obj3:textbox5                              ; fixup: num: 18904, src obj: 1, src ofs: 0x6d004, dst obj: 3, dst ofs: 0x29778
   6d008:	e8 23 f1 fd ff       	call   insert_bitmap
   6d00d:	eb 52                	jmp    PlaybackDialog_branch_29
PlaybackDialog_branch_24:
   6d00f:	83 fe 08             	cmp    esi,0x8
   6d012:	7f 12                	jg     PlaybackDialog_branch_25
   6d014:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 18903, src obj: 1, src ofs: 0x6d015, dst obj: 3, dst ofs: 0x25a88
   6d019:	8b 15 7c 97 02 00    	mov    edx,DWORD PTR ds:@obj3:textbox6                              ; fixup: num: 18902, src obj: 1, src ofs: 0x6d01b, dst obj: 3, dst ofs: 0x2977c
   6d01f:	e8 0c f1 fd ff       	call   insert_bitmap
   6d024:	eb 3b                	jmp    PlaybackDialog_branch_29
PlaybackDialog_branch_25:
   6d026:	83 fe 0a             	cmp    esi,0xa
   6d029:	7f 12                	jg     PlaybackDialog_branch_26
   6d02b:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 18901, src obj: 1, src ofs: 0x6d02c, dst obj: 3, dst ofs: 0x25a88
   6d030:	8b 15 80 97 02 00    	mov    edx,DWORD PTR ds:@obj3:textbox7                              ; fixup: num: 18900, src obj: 1, src ofs: 0x6d032, dst obj: 3, dst ofs: 0x29780
   6d036:	e8 f5 f0 fd ff       	call   insert_bitmap
   6d03b:	eb 24                	jmp    PlaybackDialog_branch_29
PlaybackDialog_branch_26:
   6d03d:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 18899, src obj: 1, src ofs: 0x6d03e, dst obj: 3, dst ofs: 0x25a88
   6d042:	8b 15 84 97 02 00    	mov    edx,DWORD PTR ds:@obj3:textbox8                              ; fixup: num: 18898, src obj: 1, src ofs: 0x6d044, dst obj: 3, dst ofs: 0x29784
   6d048:	e8 e3 f0 fd ff       	call   insert_bitmap
   6d04d:	eb 12                	jmp    PlaybackDialog_branch_29
PlaybackDialog_branch_27:
   6d04f:	31 c9                	xor    ecx,ecx
   6d051:	89 0d d8 61 02 00    	mov    DWORD PTR ds:@obj3:_text_bitmap,ecx                          ; fixup: num: 18897, src obj: 1, src ofs: 0x6d053, dst obj: 3, dst ofs: 0x261d8
   6d057:	eb 08                	jmp    PlaybackDialog_branch_29
PlaybackDialog_branch_28:
   6d059:	31 db                	xor    ebx,ebx
   6d05b:	89 1d d8 61 02 00    	mov    DWORD PTR ds:@obj3:_text_bitmap,ebx                          ; fixup: num: 18896, src obj: 1, src ofs: 0x6d05d, dst obj: 3, dst ofs: 0x261d8
PlaybackDialog_branch_29:
   6d061:	31 c0                	xor    eax,eax
   6d063:	8a 84 24 58 01 00 00 	mov    al,BYTE PTR [esp+0x158]
   6d06a:	85 c0                	test   eax,eax
   6d06c:	0f 85 7f 01 00 00    	jne    PlaybackDialog_branch_47
   6d072:	ba a6 f5 00 00       	mov    edx,@obj3:convutil_cpp_variable_72                           ; fixup: num: 18912, src obj: 1, src ofs: 0x6d073, dst obj: 3, dst ofs: 0xf5a6
   6d077:	8b 84 24 4c 01 00 00 	mov    eax,DWORD PTR [esp+0x14c]
   6d07e:	e8 ad 93 00 00       	call   strcmp_
   6d083:	85 c0                	test   eax,eax
   6d085:	75 10                	jne    PlaybackDialog_branch_30
   6d087:	b8 01 00 00 00       	mov    eax,0x1
   6d08c:	31 ff                	xor    edi,edi
   6d08e:	89 84 24 48 01 00 00 	mov    DWORD PTR [esp+0x148],eax
   6d095:	eb 0e                	jmp    PlaybackDialog_branch_31
PlaybackDialog_branch_30:
   6d097:	31 ed                	xor    ebp,ebp
   6d099:	bf 01 00 00 00       	mov    edi,0x1
   6d09e:	89 ac 24 48 01 00 00 	mov    DWORD PTR [esp+0x148],ebp
PlaybackDialog_branch_31:
   6d0a5:	83 bc 24 48 01 00 00 00 	cmp    DWORD PTR [esp+0x148],0x0
   6d0ad:	75 12                	jne    PlaybackDialog_branch_32
   6d0af:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 18911, src obj: 1, src ofs: 0x6d0b0, dst obj: 3, dst ofs: 0x25a88
   6d0b4:	8b 15 60 97 02 00    	mov    edx,DWORD PTR ds:@obj3:right_head                            ; fixup: num: 18910, src obj: 1, src ofs: 0x6d0b6, dst obj: 3, dst ofs: 0x29760
   6d0ba:	e8 31 f6 fd ff       	call   remove_bitmap
   6d0bf:	eb 10                	jmp    PlaybackDialog_branch_33
PlaybackDialog_branch_32:
   6d0c1:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 18909, src obj: 1, src ofs: 0x6d0c2, dst obj: 3, dst ofs: 0x25a88
   6d0c6:	8b 15 5c 97 02 00    	mov    edx,DWORD PTR ds:@obj3:left_head                             ; fixup: num: 18908, src obj: 1, src ofs: 0x6d0c8, dst obj: 3, dst ofs: 0x2975c
   6d0cc:	e8 1f f6 fd ff       	call   remove_bitmap
PlaybackDialog_branch_33:
   6d0d1:	bb c0 96 02 00       	mov    ebx,@obj3:loaded_heads                                       ; fixup: num: 18907, src obj: 1, src ofs: 0x6d0d2, dst obj: 3, dst ofs: 0x296c0
   6d0d6:	31 c9                	xor    ecx,ecx
PlaybackDialog_branch_34:
   6d0d8:	8d 94 24 18 01 00 00 	lea    edx,[esp+0x118]
   6d0df:	89 d8                	mov    eax,ebx
   6d0e1:	e8 4a 93 00 00       	call   strcmp_
   6d0e6:	85 c0                	test   eax,eax
   6d0e8:	75 2e                	jne    PlaybackDialog_branch_37
PlaybackDialog_branch_35:
   6d0ea:	83 f9 05             	cmp    ecx,0x5
   6d0ed:	0f 85 fe 00 00 00    	jne    PlaybackDialog_branch_47
   6d0f3:	8b 1d a8 5a 02 00    	mov    ebx,DWORD PTR ds:@obj3:head_list                             ; fixup: num: 18906, src obj: 1, src ofs: 0x6d0f5, dst obj: 3, dst ofs: 0x25aa8
   6d0f9:	85 db                	test   ebx,ebx
   6d0fb:	0f 84 c1 00 00 00    	je     PlaybackDialog_branch_46
PlaybackDialog_branch_36:
   6d101:	8d 94 24 18 01 00 00 	lea    edx,[esp+0x118]
   6d108:	8b 03                	mov    eax,DWORD PTR [ebx]
   6d10a:	e8 21 93 00 00       	call   strcmp_
   6d10f:	85 c0                	test   eax,eax
   6d111:	74 1b                	je     PlaybackDialog_branch_39
   6d113:	e9 9f 00 00 00       	jmp    PlaybackDialog_branch_45
PlaybackDialog_branch_37:
   6d118:	41                   	inc    ecx
   6d119:	83 c3 1f             	add    ebx,0x1f
   6d11c:	83 f9 05             	cmp    ecx,0x5
   6d11f:	7c b7                	jl     PlaybackDialog_branch_34
   6d121:	eb c7                	jmp    PlaybackDialog_branch_35
PlaybackDialog_branch_38:
   6d123:	46                   	inc    esi
   6d124:	83 c1 1f             	add    ecx,0x1f
   6d127:	83 fe 05             	cmp    esi,0x5
   6d12a:	7c 0e                	jl     PlaybackDialog_branch_40
   6d12c:	eb 19                	jmp    PlaybackDialog_branch_41
PlaybackDialog_branch_39:
   6d12e:	b9 c0 96 02 00       	mov    ecx,@obj3:loaded_heads                                       ; fixup: num: 18921, src obj: 1, src ofs: 0x6d12f, dst obj: 3, dst ofs: 0x296c0
   6d133:	bd a9 f5 00 00       	mov    ebp,@obj3:convutil_cpp_variable_73                           ; fixup: num: 18920, src obj: 1, src ofs: 0x6d134, dst obj: 3, dst ofs: 0xf5a9
   6d138:	31 f6                	xor    esi,esi
PlaybackDialog_branch_40:
   6d13a:	89 ea                	mov    edx,ebp
   6d13c:	89 c8                	mov    eax,ecx
   6d13e:	e8 ed 92 00 00       	call   strcmp_
   6d143:	85 c0                	test   eax,eax
   6d145:	75 dc                	jne    PlaybackDialog_branch_38
PlaybackDialog_branch_41:
   6d147:	6b ff 1f             	imul   edi,edi,0x1f
   6d14a:	8d b4 24 18 01 00 00 	lea    esi,[esp+0x118]
   6d151:	81 c7 c0 96 02 00    	add    edi,@obj3:loaded_heads                                       ; fixup: num: 18919, src obj: 1, src ofs: 0x6d153, dst obj: 3, dst ofs: 0x296c0
   6d157:	57                   	push   edi
PlaybackDialog_branch_42:
   6d158:	8a 06                	mov    al,BYTE PTR [esi]
   6d15a:	88 07                	mov    BYTE PTR [edi],al
   6d15c:	3c 00                	cmp    al,0x0
   6d15e:	74 10                	je     PlaybackDialog_branch_43
   6d160:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   6d163:	83 c6 02             	add    esi,0x2
   6d166:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   6d169:	83 c7 02             	add    edi,0x2
   6d16c:	3c 00                	cmp    al,0x0
   6d16e:	75 e8                	jne    PlaybackDialog_branch_42
PlaybackDialog_branch_43:
   6d170:	5f                   	pop    edi
   6d171:	8b 4b 04             	mov    ecx,DWORD PTR [ebx+0x4]
   6d174:	51                   	push   ecx
   6d175:	68 aa f5 00 00       	push   @obj3:convutil_cpp_variable_74                               ; fixup: num: 18918, src obj: 1, src ofs: 0x6d176, dst obj: 3, dst ofs: 0xf5aa
   6d17a:	8b 35 34 24 03 00    	mov    esi,DWORD PTR ds:@obj3:temp_filename                         ; fixup: num: 18917, src obj: 1, src ofs: 0x6d17c, dst obj: 3, dst ofs: 0x32434
   6d180:	56                   	push   esi
   6d181:	e8 5b 3a 00 00       	call   sprintf_
   6d186:	83 c4 0c             	add    esp,0xc
   6d189:	83 bc 24 48 01 00 00 00 	cmp    DWORD PTR [esp+0x148],0x0
   6d191:	75 12                	jne    PlaybackDialog_branch_44
   6d193:	8b 15 34 24 03 00    	mov    edx,DWORD PTR ds:@obj3:temp_filename                         ; fixup: num: 18916, src obj: 1, src ofs: 0x6d195, dst obj: 3, dst ofs: 0x32434
   6d199:	a1 5c 97 02 00       	mov    eax,ds:@obj3:left_head                                       ; fixup: num: 18915, src obj: 1, src ofs: 0x6d19a, dst obj: 3, dst ofs: 0x2975c
   6d19e:	e8 fd e5 fc ff       	call   swap_bm
   6d1a3:	eb 1d                	jmp    PlaybackDialog_branch_46
PlaybackDialog_branch_44:
   6d1a5:	8b 15 34 24 03 00    	mov    edx,DWORD PTR ds:@obj3:temp_filename                         ; fixup: num: 18914, src obj: 1, src ofs: 0x6d1a7, dst obj: 3, dst ofs: 0x32434
   6d1ab:	a1 60 97 02 00       	mov    eax,ds:@obj3:right_head                                      ; fixup: num: 18913, src obj: 1, src ofs: 0x6d1ac, dst obj: 3, dst ofs: 0x29760
   6d1b0:	e8 eb e5 fc ff       	call   swap_bm
   6d1b5:	eb 0b                	jmp    PlaybackDialog_branch_46
PlaybackDialog_branch_45:
   6d1b7:	8b 5b 08             	mov    ebx,DWORD PTR [ebx+0x8]
   6d1ba:	85 db                	test   ebx,ebx
   6d1bc:	0f 85 3f ff ff ff    	jne    PlaybackDialog_branch_36
PlaybackDialog_branch_46:
   6d1c2:	85 db                	test   ebx,ebx
   6d1c4:	75 2b                	jne    PlaybackDialog_branch_47
   6d1c6:	8d 84 24 18 01 00 00 	lea    eax,[esp+0x118]
   6d1cd:	50                   	push   eax
   6d1ce:	68 b0 f5 00 00       	push   @obj3:convutil_cpp_variable_75                               ; fixup: num: 18931, src obj: 1, src ofs: 0x6d1cf, dst obj: 3, dst ofs: 0xf5b0
   6d1d3:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 18930, src obj: 1, src ofs: 0x6d1d4, dst obj: 3, dst ofs: 0x237fc
   6d1d8:	bb fc 37 02 00       	mov    ebx,@obj3:log_buffer                                         ; fixup: num: 18929, src obj: 1, src ofs: 0x6d1d9, dst obj: 3, dst ofs: 0x237fc
   6d1dd:	e8 ff 39 00 00       	call   sprintf_
   6d1e2:	83 c4 0c             	add    esp,0xc
   6d1e5:	ba 40 03 00 00       	mov    edx,0x340
   6d1ea:	31 c0                	xor    eax,eax
   6d1ec:	e8 3f ae fc ff       	call   _error_report
PlaybackDialog_branch_47:
   6d1f1:	bf 84 5a 02 00       	mov    edi,@obj3:the_screen                                         ; fixup: num: 18928, src obj: 1, src ofs: 0x6d1f2, dst obj: 3, dst ofs: 0x25a84
   6d1f6:	bd d4 a1 01 00       	mov    ebp,@obj3:music                                              ; fixup: num: 18927, src obj: 1, src ofs: 0x6d1f7, dst obj: 3, dst ofs: 0x1a1d4
   6d1fb:	be 88 5a 02 00       	mov    esi,@obj3:the_list                                           ; fixup: num: 18926, src obj: 1, src ofs: 0x6d1fc, dst obj: 3, dst ofs: 0x25a88
   6d200:	31 c9                	xor    ecx,ecx
PlaybackDialog_branch_48:
   6d202:	66 8b 15 08 59 02 00 	mov    dx,WORD PTR ds:@obj3:raw_key                                 ; fixup: num: 18925, src obj: 1, src ofs: 0x6d205, dst obj: 3, dst ofs: 0x25908
   6d209:	66 39 d1             	cmp    cx,dx
   6d20c:	75 15                	jne    PlaybackDialog_branch_49
   6d20e:	a0 74 59 02 00       	mov    al,ds:@obj3:left_button                                      ; fixup: num: 18924, src obj: 1, src ofs: 0x6d20f, dst obj: 3, dst ofs: 0x25974
   6d213:	38 c2                	cmp    dl,al
   6d215:	75 0c                	jne    PlaybackDialog_branch_49
   6d217:	3a 05 72 59 02 00    	cmp    al,BYTE PTR ds:@obj3:right_button                            ; fixup: num: 18923, src obj: 1, src ofs: 0x6d219, dst obj: 3, dst ofs: 0x25972
   6d21d:	0f 84 78 00 00 00    	je     PlaybackDialog_branch_54
PlaybackDialog_branch_49:
   6d223:	89 e8                	mov    eax,ebp
   6d225:	e8 76 e7 f9 ff       	call   update_mod_9
   6d22a:	8b 1d 88 5a 02 00    	mov    ebx,DWORD PTR ds:@obj3:the_list                              ; fixup: num: 18922, src obj: 1, src ofs: 0x6d22c, dst obj: 3, dst ofs: 0x25a88
   6d230:	85 db                	test   ebx,ebx
   6d232:	75 3a                	jne    PlaybackDialog_branch_52
   6d234:	89 f8                	mov    eax,edi
   6d236:	e8 65 0a fe ff       	call   update_mod_84
   6d23b:	eb c5                	jmp    PlaybackDialog_branch_48
PlaybackDialog_branch_50:
   6d23d:	89 d8                	mov    eax,ebx
   6d23f:	e8 0c 05 fd ff       	call   update_mod_76_2
   6d244:	84 c0                	test   al,al
   6d246:	75 3d                	jne    PlaybackDialog_branch_53
   6d248:	89 da                	mov    edx,ebx
   6d24a:	89 f0                	mov    eax,esi
   6d24c:	e8 9f f4 fd ff       	call   remove_bitmap
   6d251:	85 db                	test   ebx,ebx
   6d253:	74 30                	je     PlaybackDialog_branch_53
   6d255:	89 ca                	mov    edx,ecx
   6d257:	89 d8                	mov    eax,ebx
   6d259:	e8 42 e1 fc ff       	call   W?$dt:BTMAP$n()_
   6d25e:	e8 15 4e 00 00       	call   W?$dln(pnv)v
   6d263:	eb 20                	jmp    PlaybackDialog_branch_53
PlaybackDialog_branch_51:
   6d265:	89 d8                	mov    eax,ebx
   6d267:	e8 74 f8 fc ff       	call   update_mod_76
   6d26c:	eb 17                	jmp    PlaybackDialog_branch_53
PlaybackDialog_branch_52:
   6d26e:	8b 43 48             	mov    eax,DWORD PTR [ebx+0x48]
   6d271:	a3 d4 61 02 00       	mov    ds:@obj3:temp_next,eax                                       ; fixup: num: 18942, src obj: 1, src ofs: 0x6d272, dst obj: 3, dst ofs: 0x261d4
   6d276:	8b 43 38             	mov    eax,DWORD PTR [ebx+0x38]
   6d279:	83 f8 01             	cmp    eax,0x1
   6d27c:	72 07                	jb     PlaybackDialog_branch_53
   6d27e:	76 e5                	jbe    PlaybackDialog_branch_51
   6d280:	83 f8 04             	cmp    eax,0x4
   6d283:	74 b8                	je     PlaybackDialog_branch_50
PlaybackDialog_branch_53:
   6d285:	8b 1d d4 61 02 00    	mov    ebx,DWORD PTR ds:@obj3:temp_next                             ; fixup: num: 18941, src obj: 1, src ofs: 0x6d287, dst obj: 3, dst ofs: 0x261d4
   6d28b:	85 db                	test   ebx,ebx
   6d28d:	75 df                	jne    PlaybackDialog_branch_52
   6d28f:	89 f8                	mov    eax,edi
   6d291:	e8 0a 0a fe ff       	call   update_mod_84
   6d296:	e9 67 ff ff ff       	jmp    PlaybackDialog_branch_48
PlaybackDialog_branch_54:
   6d29b:	31 c0                	xor    eax,eax
   6d29d:	8a 84 24 58 01 00 00 	mov    al,BYTE PTR [esp+0x158]
   6d2a4:	85 c0                	test   eax,eax
   6d2a6:	75 27                	jne    PlaybackDialog_branch_57
   6d2a8:	83 bc 24 48 01 00 00 01 	cmp    DWORD PTR [esp+0x148],0x1
   6d2b0:	75 0d                	jne    PlaybackDialog_branch_55
   6d2b2:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 18940, src obj: 1, src ofs: 0x6d2b3, dst obj: 3, dst ofs: 0x25a88
   6d2b7:	8b 15 60 97 02 00    	mov    edx,DWORD PTR ds:@obj3:right_head                            ; fixup: num: 18939, src obj: 1, src ofs: 0x6d2b9, dst obj: 3, dst ofs: 0x29760
   6d2bd:	eb 0b                	jmp    PlaybackDialog_branch_56
PlaybackDialog_branch_55:
   6d2bf:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 18938, src obj: 1, src ofs: 0x6d2c0, dst obj: 3, dst ofs: 0x25a88
   6d2c4:	8b 15 5c 97 02 00    	mov    edx,DWORD PTR ds:@obj3:left_head                             ; fixup: num: 18937, src obj: 1, src ofs: 0x6d2c6, dst obj: 3, dst ofs: 0x2975c
PlaybackDialog_branch_56:
   6d2ca:	e8 61 ee fd ff       	call   insert_bitmap
PlaybackDialog_branch_57:
   6d2cf:	83 bc 24 50 01 00 00 00 	cmp    DWORD PTR [esp+0x150],0x0
   6d2d7:	0f 8e 9d 00 00 00    	jle    PlaybackDialog_branch_64
   6d2dd:	8d 84 24 90 00 00 00 	lea    eax,[esp+0x90]
   6d2e4:	e8 c7 c4 f9 ff       	call   play
   6d2e9:	66 83 3d 08 59 02 00 00 	cmp    WORD PTR ds:@obj3:raw_key,0x0                             ; fixup: num: 18936, src obj: 1, src ofs: 0x6d2ec, dst obj: 3, dst ofs: 0x25908
   6d2f1:	74 11                	je     PlaybackDialog_branch_59
   6d2f3:	31 c0                	xor    eax,eax
PlaybackDialog_branch_58:
   6d2f5:	66 a3 08 59 02 00    	mov    ds:@obj3:raw_key,ax                                          ; fixup: num: 18935, src obj: 1, src ofs: 0x6d2f7, dst obj: 3, dst ofs: 0x25908
   6d2fb:	66 3b 05 08 59 02 00 	cmp    ax,WORD PTR ds:@obj3:raw_key                                 ; fixup: num: 18934, src obj: 1, src ofs: 0x6d2fe, dst obj: 3, dst ofs: 0x25908
   6d302:	75 f1                	jne    PlaybackDialog_branch_58
PlaybackDialog_branch_59:
   6d304:	31 f6                	xor    esi,esi
   6d306:	66 89 35 08 59 02 00 	mov    WORD PTR ds:@obj3:raw_key,si                                 ; fixup: num: 18933, src obj: 1, src ofs: 0x6d309, dst obj: 3, dst ofs: 0x25908
   6d30d:	bb 84 5a 02 00       	mov    ebx,@obj3:the_screen                                         ; fixup: num: 18932, src obj: 1, src ofs: 0x6d30e, dst obj: 3, dst ofs: 0x25a84
   6d312:	30 d2                	xor    dl,dl
PlaybackDialog_branch_60:
   6d314:	8d 84 24 90 00 00 00 	lea    eax,[esp+0x90]
   6d31b:	e8 c0 c5 f9 ff       	call   playing
   6d320:	84 c0                	test   al,al
   6d322:	74 27                	je     PlaybackDialog_branch_61
   6d324:	0f bf 05 08 59 02 00 	movsx  eax,WORD PTR ds:@obj3:raw_key                                ; fixup: num: 18837, src obj: 1, src ofs: 0x6d327, dst obj: 3, dst ofs: 0x25908
   6d32b:	83 f8 01             	cmp    eax,0x1
   6d32e:	74 1b                	je     PlaybackDialog_branch_61
   6d330:	8a 35 74 59 02 00    	mov    dh,BYTE PTR ds:@obj3:left_button                             ; fixup: num: 18836, src obj: 1, src ofs: 0x6d332, dst obj: 3, dst ofs: 0x25974
   6d336:	38 f2                	cmp    dl,dh
   6d338:	75 11                	jne    PlaybackDialog_branch_61
   6d33a:	3a 35 72 59 02 00    	cmp    dh,BYTE PTR ds:@obj3:right_button                            ; fixup: num: 18952, src obj: 1, src ofs: 0x6d33c, dst obj: 3, dst ofs: 0x25972
   6d340:	75 09                	jne    PlaybackDialog_branch_61
   6d342:	89 d8                	mov    eax,ebx
   6d344:	e8 57 09 fe ff       	call   update_mod_84
   6d349:	eb c9                	jmp    PlaybackDialog_branch_60
PlaybackDialog_branch_61:
   6d34b:	80 3d 0d 59 02 00 00 	cmp    BYTE PTR ds:@obj3:ScanCode_variable_1,0x0                    ; fixup: num: 18951, src obj: 1, src ofs: 0x6d34d, dst obj: 3, dst ofs: 0x2590d
   6d352:	75 12                	jne    PlaybackDialog_branch_62
   6d354:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 18950, src obj: 1, src ofs: 0x6d356, dst obj: 3, dst ofs: 0x25974
   6d35b:	75 09                	jne    PlaybackDialog_branch_62
   6d35d:	80 3d 72 59 02 00 00 	cmp    BYTE PTR ds:@obj3:right_button,0x0                           ; fixup: num: 18949, src obj: 1, src ofs: 0x6d35f, dst obj: 3, dst ofs: 0x25972
   6d364:	74 08                	je     PlaybackDialog_branch_63
PlaybackDialog_branch_62:
   6d366:	c6 84 24 54 01 00 00 01 	mov    BYTE PTR [esp+0x154],0x1
PlaybackDialog_branch_63:
   6d36e:	8d 84 24 90 00 00 00 	lea    eax,[esp+0x90]
   6d375:	e8 c6 c4 f9 ff       	call   stop
PlaybackDialog_branch_64:
   6d37a:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 18948, src obj: 1, src ofs: 0x6d37b, dst obj: 3, dst ofs: 0x25a84
   6d37f:	e8 1c 09 fe ff       	call   update_mod_84
   6d384:	31 c0                	xor    eax,eax
   6d386:	a0 58 7e 01 00       	mov    al,ds:@obj3:text_dialog                                      ; fixup: num: 18947, src obj: 1, src ofs: 0x6d387, dst obj: 3, dst ofs: 0x17e58
   6d38b:	85 c0                	test   eax,eax
   6d38d:	0f 8e f1 00 00 00    	jle    PlaybackDialog_branch_74
   6d393:	31 c0                	xor    eax,eax
PlaybackDialog_branch_65:
   6d395:	66 8b 3d 08 59 02 00 	mov    di,WORD PTR ds:@obj3:raw_key                                 ; fixup: num: 18946, src obj: 1, src ofs: 0x6d398, dst obj: 3, dst ofs: 0x25908
   6d39c:	66 39 f8             	cmp    ax,di
   6d39f:	74 08                	je     PlaybackDialog_branch_66
   6d3a1:	66 a3 08 59 02 00    	mov    ds:@obj3:raw_key,ax                                          ; fixup: num: 18945, src obj: 1, src ofs: 0x6d3a3, dst obj: 3, dst ofs: 0x25908
   6d3a7:	eb ec                	jmp    PlaybackDialog_branch_65
PlaybackDialog_branch_66:
   6d3a9:	31 f8                	xor    eax,edi
   6d3ab:	66 a3 08 59 02 00    	mov    ds:@obj3:raw_key,ax                                          ; fixup: num: 18944, src obj: 1, src ofs: 0x6d3ad, dst obj: 3, dst ofs: 0x25908
   6d3b1:	8a b4 24 54 01 00 00 	mov    dh,BYTE PTR [esp+0x154]
   6d3b8:	84 f6                	test   dh,dh
   6d3ba:	0f 85 83 00 00 00    	jne    PlaybackDialog_branch_71
   6d3c0:	31 c0                	xor    eax,eax
   6d3c2:	a0 58 7e 01 00       	mov    al,ds:@obj3:text_dialog                                      ; fixup: num: 18943, src obj: 1, src ofs: 0x6d3c3, dst obj: 3, dst ofs: 0x17e58
   6d3c7:	83 f8 02             	cmp    eax,0x2
   6d3ca:	0f 85 73 00 00 00    	jne    PlaybackDialog_branch_71
   6d3d0:	b9 84 5a 02 00       	mov    ecx,@obj3:the_screen                                         ; fixup: num: 18853, src obj: 1, src ofs: 0x6d3d1, dst obj: 3, dst ofs: 0x25a84
   6d3d5:	bb d4 a1 01 00       	mov    ebx,@obj3:music                                              ; fixup: num: 18852, src obj: 1, src ofs: 0x6d3d6, dst obj: 3, dst ofs: 0x1a1d4
   6d3da:	30 d2                	xor    dl,dl
PlaybackDialog_branch_67:
   6d3dc:	66 3b 15 08 59 02 00 	cmp    dx,WORD PTR ds:@obj3:raw_key                                 ; fixup: num: 18851, src obj: 1, src ofs: 0x6d3df, dst obj: 3, dst ofs: 0x25908
   6d3e3:	75 2b                	jne    PlaybackDialog_branch_68
   6d3e5:	a0 74 59 02 00       	mov    al,ds:@obj3:left_button                                      ; fixup: num: 18850, src obj: 1, src ofs: 0x6d3e6, dst obj: 3, dst ofs: 0x25974
   6d3ea:	38 c2                	cmp    dl,al
   6d3ec:	75 22                	jne    PlaybackDialog_branch_68
   6d3ee:	3a 05 72 59 02 00    	cmp    al,BYTE PTR ds:@obj3:right_button                            ; fixup: num: 18849, src obj: 1, src ofs: 0x6d3f0, dst obj: 3, dst ofs: 0x25972
   6d3f4:	75 1a                	jne    PlaybackDialog_branch_68
   6d3f6:	89 d8                	mov    eax,ebx
   6d3f8:	e8 a3 e5 f9 ff       	call   update_mod_9
   6d3fd:	e8 00 4d 00 00       	call   clock_
   6d402:	a3 44 7e 01 00       	mov    ds:@obj3:current_time,eax                                    ; fixup: num: 18848, src obj: 1, src ofs: 0x6d403, dst obj: 3, dst ofs: 0x17e44
   6d407:	89 c8                	mov    eax,ecx
   6d409:	e8 92 08 fe ff       	call   update_mod_84
   6d40e:	eb cc                	jmp    PlaybackDialog_branch_67
PlaybackDialog_branch_68:
   6d410:	31 c0                	xor    eax,eax
PlaybackDialog_branch_69:
   6d412:	8a 15 74 59 02 00    	mov    dl,BYTE PTR ds:@obj3:left_button                             ; fixup: num: 18847, src obj: 1, src ofs: 0x6d414, dst obj: 3, dst ofs: 0x25974
   6d418:	38 d0                	cmp    al,dl
   6d41a:	75 f6                	jne    PlaybackDialog_branch_69
   6d41c:	66 8b 3d 08 59 02 00 	mov    di,WORD PTR ds:@obj3:raw_key                                 ; fixup: num: 18846, src obj: 1, src ofs: 0x6d41f, dst obj: 3, dst ofs: 0x25908
   6d423:	66 39 f8             	cmp    ax,di
   6d426:	75 ea                	jne    PlaybackDialog_branch_69
   6d428:	3a 15 72 59 02 00    	cmp    dl,BYTE PTR ds:@obj3:right_button                            ; fixup: num: 18845, src obj: 1, src ofs: 0x6d42a, dst obj: 3, dst ofs: 0x25972
   6d42e:	75 e2                	jne    PlaybackDialog_branch_69
   6d430:	31 f8                	xor    eax,edi
PlaybackDialog_branch_70:
   6d432:	66 3b 05 08 59 02 00 	cmp    ax,WORD PTR ds:@obj3:raw_key                                 ; fixup: num: 18844, src obj: 1, src ofs: 0x6d435, dst obj: 3, dst ofs: 0x25908
   6d439:	74 08                	je     PlaybackDialog_branch_71
   6d43b:	66 a3 08 59 02 00    	mov    ds:@obj3:raw_key,ax                                          ; fixup: num: 18843, src obj: 1, src ofs: 0x6d43d, dst obj: 3, dst ofs: 0x25908
   6d441:	eb ef                	jmp    PlaybackDialog_branch_70
PlaybackDialog_branch_71:
   6d443:	8b 15 d8 61 02 00    	mov    edx,DWORD PTR ds:@obj3:_text_bitmap                          ; fixup: num: 18842, src obj: 1, src ofs: 0x6d445, dst obj: 3, dst ofs: 0x261d8
   6d449:	85 d2                	test   edx,edx
   6d44b:	74 18                	je     PlaybackDialog_branch_73
   6d44d:	89 d0                	mov    eax,edx
   6d44f:	74 0c                	je     PlaybackDialog_branch_72
   6d451:	31 d2                	xor    edx,edx
   6d453:	e8 c8 ca fd ff       	call   W?$dt:TEXTBM$n()_
   6d458:	e8 1b 4c 00 00       	call   W?$dln(pnv)v
PlaybackDialog_branch_72:
   6d45d:	31 db                	xor    ebx,ebx
   6d45f:	89 1d d8 61 02 00    	mov    DWORD PTR ds:@obj3:_text_bitmap,ebx                          ; fixup: num: 18841, src obj: 1, src ofs: 0x6d461, dst obj: 3, dst ofs: 0x261d8
PlaybackDialog_branch_73:
   6d465:	ba c7 f5 00 00       	mov    edx,@obj3:convutil_cpp_variable_76                           ; fixup: num: 18840, src obj: 1, src ofs: 0x6d466, dst obj: 3, dst ofs: 0xf5c7
   6d46a:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 18839, src obj: 1, src ofs: 0x6d46b, dst obj: 3, dst ofs: 0x25a88
   6d46f:	e8 7c ec fd ff       	call   get_bitmap
   6d474:	85 c0                	test   eax,eax
   6d476:	74 0c                	je     PlaybackDialog_branch_74
   6d478:	89 c2                	mov    edx,eax
   6d47a:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 18838, src obj: 1, src ofs: 0x6d47b, dst obj: 3, dst ofs: 0x25a88
   6d47f:	e8 6c f2 fd ff       	call   remove_bitmap
PlaybackDialog_branch_74:
   6d484:	80 bc 24 54 01 00 00 00 	cmp    BYTE PTR [esp+0x154],0x0
   6d48c:	0f 84 ab 00 00 00    	je     PlaybackDialog_branch_81
   6d492:	bf 84 5a 02 00       	mov    edi,@obj3:the_screen                                         ; fixup: num: 18862, src obj: 1, src ofs: 0x6d493, dst obj: 3, dst ofs: 0x25a84
   6d497:	bd d4 a1 01 00       	mov    ebp,@obj3:music                                              ; fixup: num: 18861, src obj: 1, src ofs: 0x6d498, dst obj: 3, dst ofs: 0x1a1d4
   6d49c:	be 88 5a 02 00       	mov    esi,@obj3:the_list                                           ; fixup: num: 18860, src obj: 1, src ofs: 0x6d49d, dst obj: 3, dst ofs: 0x25a88
   6d4a1:	31 c9                	xor    ecx,ecx
PlaybackDialog_branch_75:
   6d4a3:	66 8b 1d 08 59 02 00 	mov    bx,WORD PTR ds:@obj3:raw_key                                 ; fixup: num: 18859, src obj: 1, src ofs: 0x6d4a6, dst obj: 3, dst ofs: 0x25908
   6d4aa:	66 39 d9             	cmp    cx,bx
   6d4ad:	75 16                	jne    PlaybackDialog_branch_76
   6d4af:	8a 3d 74 59 02 00    	mov    bh,BYTE PTR ds:@obj3:left_button                             ; fixup: num: 18858, src obj: 1, src ofs: 0x6d4b1, dst obj: 3, dst ofs: 0x25974
   6d4b5:	38 fb                	cmp    bl,bh
   6d4b7:	75 0c                	jne    PlaybackDialog_branch_76
   6d4b9:	3a 3d 72 59 02 00    	cmp    bh,BYTE PTR ds:@obj3:right_button                            ; fixup: num: 18857, src obj: 1, src ofs: 0x6d4bb, dst obj: 3, dst ofs: 0x25972
   6d4bf:	0f 84 78 00 00 00    	je     PlaybackDialog_branch_81
PlaybackDialog_branch_76:
   6d4c5:	89 e8                	mov    eax,ebp
   6d4c7:	e8 d4 e4 f9 ff       	call   update_mod_9
   6d4cc:	8b 1d 88 5a 02 00    	mov    ebx,DWORD PTR ds:@obj3:the_list                              ; fixup: num: 18856, src obj: 1, src ofs: 0x6d4ce, dst obj: 3, dst ofs: 0x25a88
   6d4d2:	85 db                	test   ebx,ebx
   6d4d4:	75 3a                	jne    PlaybackDialog_branch_79
   6d4d6:	89 f8                	mov    eax,edi
   6d4d8:	e8 c3 07 fe ff       	call   update_mod_84
   6d4dd:	eb c4                	jmp    PlaybackDialog_branch_75
PlaybackDialog_branch_77:
   6d4df:	89 d8                	mov    eax,ebx
   6d4e1:	e8 6a 02 fd ff       	call   update_mod_76_2
   6d4e6:	84 c0                	test   al,al
   6d4e8:	75 3d                	jne    PlaybackDialog_branch_80
   6d4ea:	89 da                	mov    edx,ebx
   6d4ec:	89 f0                	mov    eax,esi
   6d4ee:	e8 fd f1 fd ff       	call   remove_bitmap
   6d4f3:	85 db                	test   ebx,ebx
   6d4f5:	74 30                	je     PlaybackDialog_branch_80
   6d4f7:	89 ca                	mov    edx,ecx
   6d4f9:	89 d8                	mov    eax,ebx
   6d4fb:	e8 a0 de fc ff       	call   W?$dt:BTMAP$n()_
   6d500:	e8 73 4b 00 00       	call   W?$dln(pnv)v
   6d505:	eb 20                	jmp    PlaybackDialog_branch_80
PlaybackDialog_branch_78:
   6d507:	89 d8                	mov    eax,ebx
   6d509:	e8 d2 f5 fc ff       	call   update_mod_76
   6d50e:	eb 17                	jmp    PlaybackDialog_branch_80
PlaybackDialog_branch_79:
   6d510:	8b 43 48             	mov    eax,DWORD PTR [ebx+0x48]
   6d513:	a3 d4 61 02 00       	mov    ds:@obj3:temp_next,eax                                       ; fixup: num: 18855, src obj: 1, src ofs: 0x6d514, dst obj: 3, dst ofs: 0x261d4
   6d518:	8b 43 38             	mov    eax,DWORD PTR [ebx+0x38]
   6d51b:	83 f8 01             	cmp    eax,0x1
   6d51e:	72 07                	jb     PlaybackDialog_branch_80
   6d520:	76 e5                	jbe    PlaybackDialog_branch_78
   6d522:	83 f8 04             	cmp    eax,0x4
   6d525:	74 b8                	je     PlaybackDialog_branch_77
PlaybackDialog_branch_80:
   6d527:	8b 1d d4 61 02 00    	mov    ebx,DWORD PTR ds:@obj3:temp_next                             ; fixup: num: 18854, src obj: 1, src ofs: 0x6d529, dst obj: 3, dst ofs: 0x261d4
   6d52d:	85 db                	test   ebx,ebx
   6d52f:	75 df                	jne    PlaybackDialog_branch_79
   6d531:	89 f8                	mov    eax,edi
   6d533:	e8 68 07 fe ff       	call   update_mod_84
   6d538:	e9 66 ff ff ff       	jmp    PlaybackDialog_branch_75
PlaybackDialog_branch_81:
   6d53d:	8d 84 24 90 00 00 00 	lea    eax,[esp+0x90]
   6d544:	31 d2                	xor    edx,edx
   6d546:	e8 e5 b4 f9 ff       	call   W?$dt:SOUND$n()_
   6d54b:	66 83 3d 08 59 02 00 00 	cmp    WORD PTR ds:@obj3:raw_key,0x0                             ; fixup: num: 18863, src obj: 1, src ofs: 0x6d54e, dst obj: 3, dst ofs: 0x25908
   6d553:	0f 84 4e f7 ff ff    	je     PlaybackDialog_branch_3
PlaybackDialog_branch_82:
   6d559:	81 c4 5c 01 00 00    	add    esp,0x15c
   6d55f:	5d                   	pop    ebp
   6d560:	5f                   	pop    edi
   6d561:	5e                   	pop    esi
   6d562:	5a                   	pop    edx
   6d563:	59                   	pop    ecx
   6d564:	5b                   	pop    ebx
   6d565:	c3                   	ret    
;-------------------------------------------------
;  Bad code 91 (zero after ret):                 -
;-------------------------------------------------
;  6d564:	5b                   	pop    ebx
;  6d565:	c3                   	ret    
;  6d566:	00 00                	add    BYTE PTR [eax],al
;  6d568:	00 00                	add    BYTE PTR [eax],al
;-------------------------------------------------
;  Padding data (10 bytes):                      -
;-------------------------------------------------
   6d566:	00 00 00 00 00 00 .. 	db     10 dup(0x00)
;-------------------------------------------------
;  End of bad code 91                            -
;-------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 91 (D:\SOURCE\convutil.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 91: D:\SOURCE\convutil.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------
convutil_cpp_variable_1:
    f118:	63 6f 6e 76 75 74 69 6c 2e 63 70 70 00 	db     "convutil.cpp",0x00
convutil_cpp_variable_2:
    f125:	63 6f 6e 76 75 74 69 6c 2e 63 70 70 00 	db     "convutil.cpp",0x00
convutil_cpp_variable_3:
    f132:	64 69 61 6c 6f 67 75 65 2e 69 64 78 00 	db     "dialogue.idx",0x00
convutil_cpp_variable_4:
    f13f:	64 69 61 6c 6f 67 75 65 2e 69 64 78 00 	db     "dialogue.idx",0x00
convutil_cpp_variable_5:
    f14c:	63 6f 6e 76 75 74 69 6c 2e 63 70 70 00 	db     "convutil.cpp",0x00
convutil_cpp_variable_6:
    f159:	64 69 61 6c 6f 67 75 65 2e 69 64 78 00 	db     "dialogue.idx",0x00
convutil_cpp_variable_7:
    f166:	64 69 61 6c 6f 67 75 65 20 70 61 72 73 65 20 65 72 72 6f 72 00 	db     "dialogue parse error",0x00
convutil_cpp_variable_8:
    f17b:	64 69 61 6c 6f 67 75 65 20 70 61 72 73 65 20 65 72 72 6f 72 00 	db     "dialogue parse error",0x00
convutil_cpp_variable_9:
    f190:	49 6e 76 61 6c 69 64 20 77 61 76 20 6e 75 6d 62 65 72 20 61 66 74 65 72 20 25 69 00 	db     "Invalid wav number after %i",0x00
convutil_cpp_variable_10:
    f1ac:	69 6e 64 65 78 20 74 61 62 6c 65 20 74 6f 6f 20 73 6d 61 6c 6c 00 	db     "index table too small",0x00
convutil_cpp_variable_11:
    f1c2:	25 73 25 69 00       	db     "%s%i",0x00
convutil_cpp_variable_12:
    f1c7:	73 63 72 69 70 74 20 65 72 72 6f 72 3a 20 68 65 61 64 5f 70 74 72 2d 3e 63 68 61 72 61 63 74 65 72 5f 69 64 20 3d 20 4e 55 4c 4c 00 	db     "script error: head_ptr->character_id = NULL",0x00
convutil_cpp_variable_13:
    f1f3:	73 63 72 69 70 74 20 65 72 72 6f 72 3a 20 68 65 61 64 20 69 64 20 25 73 20 3e 20 4d 41 58 5f 48 45 41 44 5f 49 44 5f 4c 45 4e 00 	db     "script error: head id %s > MAX_HEAD_ID_LEN",0x00
convutil_cpp_variable_14:
    f21e:	25 73 2e 62 6d 00    	db     "%s.bm",0x00
convutil_cpp_variable_15:
    f224:	4c 45 46 54 5f 48 45 41 44 00 	db     "LEFT_HEAD",0x00
convutil_cpp_variable_16:
    f22e:	53 43 52 49 50 54 20 57 41 52 4e 49 4e 47 3a 20 6e 70 63 20 25 73 20 6e 6f 74 20 66 6f 75 6e 64 00 	db     "SCRIPT WARNING: npc %s not found",0x00
convutil_cpp_variable_17:
    f24f:	25 73 30 00          	db     "%s0",0x00
convutil_cpp_variable_18:
    f253:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
convutil_cpp_variable_19:
    f26b:	73 74 61 72 74 5f 64 69 61 6c 6f 67 28 25 73 29 00 	db     "start_dialog(%s)",0x00
convutil_cpp_variable_20:
    f27c:	52 61 48 00          	db     "RaH",0x00
convutil_cpp_variable_21:
    f280:	52 61 48 00          	db     "RaH",0x00
convutil_cpp_variable_22:
    f284:	44 49 44 20 4e 4f 54 20 46 49 4e 44 20 25 73 21 21 21 21 21 21 21 00 	db     "DID NOT FIND %s!!!!!!!",0x00
convutil_cpp_variable_23:
    f29b:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
convutil_cpp_variable_24:
    f29c:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
convutil_cpp_variable_25:
    f29d:	4b 45 59 57 42 4f 58 00 	db     "KEYWBOX",0x00
convutil_cpp_variable_26:
    f2a5:	31 3a 5c 67 72 61 70 68 69 63 5c 6f 74 68 65 72 5c 6b 65 79 77 6f 72 64 2e 62 6d 00 	db     "1:\graphic\other\keyword.bm",0x00
convutil_cpp_variable_27:
    f2c1:	54 45 58 54 42 4f 58 00 	db     "TEXTBOX",0x00
convutil_cpp_variable_28:
    f2c9:	31 3a 5c 67 72 61 70 68 69 63 5c 6f 74 68 65 72 5c 74 65 78 74 62 6f 78 31 2e 62 6d 00 	db     "1:\graphic\other\textbox1.bm",0x00
convutil_cpp_variable_29:
    f2e6:	54 45 58 54 42 4f 58 00 	db     "TEXTBOX",0x00
convutil_cpp_variable_30:
    f2ee:	31 3a 5c 67 72 61 70 68 69 63 5c 6f 74 68 65 72 5c 74 65 78 74 62 6f 78 32 2e 62 6d 00 	db     "1:\graphic\other\textbox2.bm",0x00
convutil_cpp_variable_31:
    f30b:	54 45 58 54 42 4f 58 00 	db     "TEXTBOX",0x00
convutil_cpp_variable_32:
    f313:	31 3a 5c 67 72 61 70 68 69 63 5c 6f 74 68 65 72 5c 74 65 78 74 62 6f 78 33 2e 62 6d 00 	db     "1:\graphic\other\textbox3.bm",0x00
convutil_cpp_variable_33:
    f330:	54 45 58 54 42 4f 58 00 	db     "TEXTBOX",0x00
convutil_cpp_variable_34:
    f338:	31 3a 5c 67 72 61 70 68 69 63 5c 6f 74 68 65 72 5c 74 65 78 74 62 6f 78 34 2e 62 6d 00 	db     "1:\graphic\other\textbox4.bm",0x00
convutil_cpp_variable_35:
    f355:	54 45 58 54 42 4f 58 00 	db     "TEXTBOX",0x00
convutil_cpp_variable_36:
    f35d:	31 3a 5c 67 72 61 70 68 69 63 5c 6f 74 68 65 72 5c 74 65 78 74 62 6f 78 35 2e 62 6d 00 	db     "1:\graphic\other\textbox5.bm",0x00
convutil_cpp_variable_37:
    f37a:	54 45 58 54 42 4f 58 00 	db     "TEXTBOX",0x00
convutil_cpp_variable_38:
    f382:	31 3a 5c 67 72 61 70 68 69 63 5c 6f 74 68 65 72 5c 74 65 78 74 62 6f 78 36 2e 62 6d 00 	db     "1:\graphic\other\textbox6.bm",0x00
convutil_cpp_variable_39:
    f39f:	54 45 58 54 42 4f 58 00 	db     "TEXTBOX",0x00
convutil_cpp_variable_40:
    f3a7:	31 3a 5c 67 72 61 70 68 69 63 5c 6f 74 68 65 72 5c 74 65 78 74 62 6f 78 37 2e 62 6d 00 	db     "1:\graphic\other\textbox7.bm",0x00
convutil_cpp_variable_41:
    f3c4:	54 45 58 54 42 4f 58 00 	db     "TEXTBOX",0x00
convutil_cpp_variable_42:
    f3cc:	31 3a 5c 67 72 61 70 68 69 63 5c 6f 74 68 65 72 5c 74 65 78 74 62 6f 78 38 2e 62 6d 00 	db     "1:\graphic\other\textbox8.bm",0x00
convutil_cpp_variable_43:
    f3e9:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
convutil_cpp_variable_44:
    f3ea:	50 43 30 00          	db     "PC0",0x00
convutil_cpp_variable_45:
    f3ee:	50 43 31 00          	db     "PC1",0x00
convutil_cpp_variable_46:
    f3f2:	50 43 32 00          	db     "PC2",0x00
convutil_cpp_variable_47:
    f3f6:	50 43 33 00          	db     "PC3",0x00
convutil_cpp_variable_48:
    f3fa:	50 43 34 00          	db     "PC4",0x00
convutil_cpp_variable_49:
    f3fe:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    f3ff:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    f400:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
convutil_cpp_variable_50:
    f401:	25 73 2e 62 6d 00    	db     "%s.bm",0x00
convutil_cpp_variable_51:
    f407:	52 49 47 48 54 5f 48 45 41 44 00 	db     "RIGHT_HEAD",0x00
convutil_cpp_variable_52:
    f412:	43 6f 75 6c 64 20 6e 6f 74 20 66 69 6e 64 20 50 43 27 73 20 68 65 61 64 20 66 69 6c 65 3a 20 25 73 00 	db     "Could not find PC's head file: %s",0x00
convutil_cpp_variable_53:
    f434:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
convutil_cpp_variable_54:
    f44c:	73 63 72 69 70 74 20 65 72 72 6f 72 3a 20 68 65 61 64 5f 70 74 72 2d 3e 63 68 61 72 61 63 74 65 72 5f 69 64 20 3d 20 4e 55 4c 4c 00 	db     "script error: head_ptr->character_id = NULL",0x00
convutil_cpp_variable_55:
    f478:	73 63 72 69 70 74 20 65 72 72 6f 72 3a 20 68 65 61 64 20 69 64 20 25 73 20 3e 20 4d 41 58 5f 48 45 41 44 5f 49 44 5f 4c 45 4e 00 	db     "script error: head id %s > MAX_HEAD_ID_LEN",0x00
convutil_cpp_variable_56:
    f4a3:	25 73 2e 62 6d 00    	db     "%s.bm",0x00
convutil_cpp_variable_57:
    f4a9:	4c 45 46 54 5f 48 45 41 44 00 	db     "LEFT_HEAD",0x00
convutil_cpp_variable_58:
    f4b3:	43 6f 75 6c 64 20 6e 6f 74 20 66 69 6e 64 20 4e 50 43 27 73 20 68 65 61 64 20 66 69 6c 65 3a 20 25 73 00 	db     "Could not find NPC's head file: %s",0x00
convutil_cpp_variable_59:
    f4d6:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
convutil_cpp_variable_60:
    f4ee:	48 45 41 44 20 49 44 20 54 4f 4f 20 4c 4f 4e 47 00 	db     "HEAD ID TOO LONG",0x00
convutil_cpp_variable_61:
    f4ff:	25 73 25 69 00       	db     "%s%i",0x00
convutil_cpp_variable_62:
    f504:	56 4f 49 43 45 00    	db     "VOICE",0x00
convutil_cpp_variable_63:
    f50a:	32 3a 5c 25 73 25 73 2e 43 4d 50 00 	db     "2:\%s%s.CMP",0x00
convutil_cpp_variable_64:
    f516:	57 41 52 4e 49 4e 47 3a 20 54 65 78 74 20 66 6f 72 20 57 41 56 20 25 69 20 6e 6f 74 20 66 6f 75 6e 64 00 	db     "WARNING: Text for WAV %i not found",0x00
convutil_cpp_variable_65:
    f539:	57 41 52 4e 49 4e 47 3a 20 54 65 78 74 20 66 6f 72 20 57 41 56 20 25 69 20 6e 6f 74 20 66 6f 75 6e 64 00 	db     "WARNING: Text for WAV %i not found",0x00
convutil_cpp_variable_66:
    f55c:	69 6e 64 65 78 5b 25 64 5d 2e 72 65 66 20 3d 20 25 64 00 	db     "index[%d].ref = %d",0x00
convutil_cpp_variable_67:
    f56f:	49 6e 64 65 78 20 6f 75 74 20 6f 66 20 72 61 6e 67 65 21 00 	db     "Index out of range!",0x00
convutil_cpp_variable_68:
    f583:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
convutil_cpp_variable_69:
    f584:	63 6f 6e 76 75 74 69 6c 2e 63 70 70 00 	db     "convutil.cpp",0x00
convutil_cpp_variable_70:
    f591:	54 45 58 54 20 74 6f 6f 20 6c 6f 6e 67 00 	db     "TEXT too long",0x00
convutil_cpp_variable_71:
    f59f:	53 50 45 45 43 48 00 	db     "SPEECH",0x00
convutil_cpp_variable_72:
    f5a6:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    f5a7:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    f5a8:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
convutil_cpp_variable_73:
    f5a9:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
convutil_cpp_variable_74:
    f5aa:	25 73 2e 42 4d 00    	db     "%s.BM",0x00
convutil_cpp_variable_75:
    f5b0:	43 61 6e 27 74 20 66 69 6e 64 20 68 65 61 64 20 66 6f 72 20 25 73 00 	db     "Can't find head for %s",0x00
convutil_cpp_variable_76:
    f5c7:	54 45 58 54 42 4f 58 00 	db     "TEXTBOX",0x00
convutil_cpp_variable_77:
    f5cf:	74 65 78 74 5f 62 6d 5f 69 6e 64 65 78 20 3e 3d 20 4d 41 58 5f 52 45 53 50 4f 4e 43 45 53 00 	db     "text_bm_index >= MAX_RESPONCES",0x00
convutil_cpp_variable_78:
    f5ee:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
convutil_cpp_variable_79:
    f606:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
convutil_cpp_variable_80:
    f61e:	52 45 53 50 42 4f 58 49 44 00 	db     "RESPBOXID",0x00
convutil_cpp_variable_81:
    f628:	52 65 73 70 6f 6e 73 65 73 00 	db     "Responses",0x00
convutil_cpp_variable_82:
    f632:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
convutil_cpp_variable_83:
    f64a:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
convutil_cpp_variable_84:
    f662:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
convutil_cpp_variable_85:
    f67a:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
convutil_cpp_variable_86:
    f692:	74 62 5b 25 69 5d 3d 4e 55 4c 4c 21 21 21 21 21 21 21 21 21 21 21 00 	db     "tb[%i]=NULL!!!!!!!!!!!",0x00
convutil_cpp_variable_87:
    f6a9:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
convutil_cpp_variable_88:
    f6aa:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
convutil_cpp_variable_89:
    f6ab:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
convutil_cpp_variable_90:
    f6c3:	73 74 72 6c 65 6e 28 20 62 75 66 66 65 72 20 29 20 3e 3d 20 69 6e 64 65 78 5f 32 20 20 25 69 20 25 69 00 	db     "strlen( buffer ) >= index_2  %i %i",0x00
convutil_cpp_variable_91:
    f6e6:	53 4b 5f 54 45 58 54 49 44 25 69 00 	db     "SK_TEXTID%i",0x00
convutil_cpp_variable_92:
    f6f2:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
convutil_cpp_variable_93:
    f70a:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
convutil_cpp_variable_94:
    f722:	4f 54 48 45 52 5f 54 45 58 54 00 	db     "OTHER_TEXT",0x00
convutil_cpp_variable_95:
    f72d:	4f 74 68 65 72 00    	db     "Other",0x00
convutil_cpp_variable_96:
    f733:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
convutil_cpp_variable_97:
    f74b:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
convutil_cpp_variable_98:
    f763:	6b 65 79 77 6f 72 64 3a 20 25 73 00 	db     "keyword: %s",0x00
convutil_cpp_variable_99:
    f76f:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
convutil_cpp_variable_100:
    f787:	4f 54 48 45 52 5f 54 45 58 54 00 	db     "OTHER_TEXT",0x00
convutil_cpp_variable_101:
    f792:	4f 54 48 45 52 5f 54 45 58 54 00 	db     "OTHER_TEXT",0x00
convutil_cpp_variable_102:
    f79d:	4f 74 68 65 72 00    	db     "Other",0x00
convutil_cpp_variable_103:
    f7a3:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
convutil_cpp_variable_104:
    f7bb:	54 45 58 54 45 4e 54 52 59 00 	db     "TEXTENTRY",0x00
convutil_cpp_variable_105:
    f7c5:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
convutil_cpp_variable_106:
    f7dd:	4f 54 48 45 52 5f 54 45 58 54 00 	db     "OTHER_TEXT",0x00
convutil_cpp_variable_107:
    f7e8:	4f 54 48 45 52 5f 54 45 58 54 00 	db     "OTHER_TEXT",0x00
convutil_cpp_variable_108:
    f7f3:	4f 74 68 65 72 00    	db     "Other",0x00
convutil_cpp_variable_109:
    f7f9:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
convutil_cpp_variable_110:
    f811:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
convutil_cpp_variable_111:
    f829:	62 79 65 5f 73 74 72 3d 25 73 00 	db     "bye_str=%s",0x00
convutil_cpp_variable_112:
    f834:	6b 65 79 77 6f 72 64 3d 25 73 00 	db     "keyword=%s",0x00
convutil_cpp_variable_113:
    f83f:	6b 65 79 77 6f 72 64 3d 25 73 00 	db     "keyword=%s",0x00
convutil_cpp_variable_114:
    f84a:	4f 54 48 45 52 5f 54 45 58 54 00 	db     "OTHER_TEXT",0x00
convutil_cpp_variable_115:
    f855:	53 4f 55 4e 44 5c 4d 55 53 49 43 5c 41 4e 58 49 45 54 59 2e 43 4d 50 00 	db     "SOUND\MUSIC\ANXIETY.CMP",0x00
convutil_cpp_variable_116:
    f86d:	70 63 2d 3e 68 65 69 67 68 74 3d 25 69 00 	db     "pc->height=%i",0x00
convutil_cpp_variable_117:
    f87b:	47 41 4d 45 4f 56 45 52 00 	db     "GAMEOVER",0x00
convutil_cpp_variable_118:
    f884:	31 3a 5c 67 72 61 70 68 69 63 5c 6f 74 68 65 72 5c 67 61 6d 65 6f 76 65 72 2e 62 6d 00 	db     "1:\graphic\other\gameover.bm",0x00
convutil_cpp_variable_119:
    f8a1:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
convutil_cpp_variable_120:
    f8b9:	63 6f 6e 76 75 74 69 6c 2e 63 70 70 00 	db     "convutil.cpp",0x00
convutil_cpp_variable_121:
    f8c6:	31 3a 5c 47 52 41 50 48 49 43 5c 50 41 4c 5c 47 41 4d 45 4f 56 45 52 2e 50 41 4c 00 	db     "1:\GRAPHIC\PAL\GAMEOVER.PAL",0x00
convutil_cpp_variable_122:
    f8e2:	55 6e 61 62 6c 65 20 74 6f 20 6f 70 65 6e 20 66 69 6c 65 3a 20 31 3a 5c 47 52 41 50 48 49 43 5c 50 41 4c 5c 47 41 4d 45 4f 56 45 52 2e 50 41 4c 00 	db     "Unable to open file: 1:\GRAPHIC\PAL\GAMEOVER.PAL",0x00
convutil_cpp_variable_123:
    f913:	53 43 52 49 50 54 20 57 41 52 4e 49 4e 47 3a 20 66 6c 61 67 20 25 73 20 6e 6f 74 20 66 6f 75 6e 64 00 	db     "SCRIPT WARNING: flag %s not found",0x00
convutil_cpp_variable_124:
    f935:	53 43 52 49 50 54 20 57 41 52 4e 49 4e 47 3a 20 66 6c 61 67 20 25 73 20 6e 6f 74 20 66 6f 75 6e 64 00 	db     "SCRIPT WARNING: flag %s not found",0x00
convutil_cpp_variable_125:
    f957:	53 43 52 49 50 54 20 57 41 52 4e 49 4e 47 3a 20 6f 62 6a 65 63 74 20 25 73 20 6e 6f 74 20 66 6f 75 6e 64 00 	db     "SCRIPT WARNING: object %s not found",0x00
convutil_cpp_variable_126:
    f97b:	61 64 64 5f 69 6e 76 65 6e 74 6f 72 79 3a 20 25 73 20 76 73 2e 20 25 73 00 	db     "add_inventory: %s vs. %s",0x00
convutil_cpp_variable_127:
    f994:	6f 62 6a 65 63 74 5f 70 74 72 2d 3e 72 6f 6f 6d 3d 25 73 20 76 73 2e 20 25 73 00 	db     "object_ptr->room=%s vs. %s",0x00
convutil_cpp_variable_128:
    f9af:	6f 62 6a 65 63 74 5f 70 74 72 2d 3e 76 69 73 69 62 6c 65 3d 25 69 00 	db     "object_ptr->visible=%i",0x00
convutil_cpp_variable_129:
    f9c6:	48 65 79 20 6d 61 6e 2c 20 49 20 63 6f 75 6c 64 6e 27 74 20 61 64 64 20 74 68 69 73 20 25 73 20 6f 62 6a 65 63 74 21 00 	db     "Hey man, I couldn't add this %s object!",0x00
convutil_cpp_variable_130:
    f9ee:	53 43 52 49 50 54 20 57 41 52 4e 49 4e 47 3a 20 6f 62 6a 65 63 74 20 25 73 20 6e 6f 74 20 66 6f 75 6e 64 00 	db     "SCRIPT WARNING: object %s not found",0x00
convutil_cpp_variable_131:
    fa12:	42 4c 55 44 47 45 00 	db     "BLUDGE",0x00
convutil_cpp_variable_132:
    fa19:	53 4c 41 53 48 00    	db     "SLASH",0x00
convutil_cpp_variable_133:
    fa1f:	50 52 4f 4a 00       	db     "PROJ",0x00
convutil_cpp_variable_134:
    fa24:	42 4c 55 44 47 45 00 	db     "BLUDGE",0x00
convutil_cpp_variable_135:
    fa2b:	53 4c 41 53 48 00    	db     "SLASH",0x00
convutil_cpp_variable_136:
    fa31:	50 52 4f 4a 00       	db     "PROJ",0x00
convutil_cpp_variable_137:
    fa36:	57 41 52 4e 49 4e 47 21 21 21 20 20 4e 50 43 20 27 25 73 27 20 69 73 20 69 6e 20 74 68 65 20 73 63 72 65 65 6e 20 6c 69 73 74 20 62 75 74 20 6e 6f 74 20 69 6e 20 74 68 65 20 6e 70 63 5f 74 79 70 65 20 6c 69 73 74 00 	db     "WARNING!!!  NPC '%s' is in the screen list but not in the npc_type list",0x00
convutil_cpp_variable_138:
    fa7e:	42 4c 55 44 47 45 00 	db     "BLUDGE",0x00
convutil_cpp_variable_139:
    fa85:	53 4c 41 53 48 00    	db     "SLASH",0x00
convutil_cpp_variable_140:
    fa8b:	50 52 4f 4a 00       	db     "PROJ",0x00
convutil_cpp_variable_141:
    fa90:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    fa91:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    fa92:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
convutil_cpp_variable_142:
    fa93:	54 45 58 54 30 00    	db     "TEXT0",0x00
convutil_cpp_variable_143:
    fa99:	54 45 58 54 31 00    	db     "TEXT1",0x00
convutil_cpp_variable_144:
    fa9f:	54 45 58 54 32 00    	db     "TEXT2",0x00
convutil_cpp_variable_145:
    faa5:	54 45 58 54 33 00    	db     "TEXT3",0x00
convutil_cpp_variable_146:
    faab:	54 45 58 54 34 00    	db     "TEXT4",0x00
convutil_cpp_variable_147:
    fab1:	54 45 58 54 35 00    	db     "TEXT5",0x00
convutil_cpp_variable_148:
    fab7:	54 45 58 54 36 00    	db     "TEXT6",0x00
convutil_cpp_variable_149:
    fabd:	54 45 58 54 37 00    	db     "TEXT7",0x00
convutil_cpp_variable_150:
    fac3:	54 45 58 54 38 00    	db     "TEXT8",0x00
convutil_cpp_variable_151:
    fac9:	54 45 58 54 39 00    	db     "TEXT9",0x00
convutil_cpp_variable_152:
    facf:	54 45 58 54 31 30 00 	db     "TEXT10",0x00
convutil_cpp_variable_153:
    fad6:	54 45 58 54 31 31 00 	db     "TEXT11",0x00
convutil_cpp_variable_154:
    fadd:	54 45 58 54 31 32 00 	db     "TEXT12",0x00
convutil_cpp_variable_155:
    fae4:	54 45 58 54 31 33 00 	db     "TEXT13",0x00
convutil_cpp_variable_156:
    faeb:	54 45 58 54 31 34 00 	db     "TEXT14",0x00
convutil_cpp_variable_157:
    faf2:	54 45 58 54 31 35 00 	db     "TEXT15",0x00
    faf9:	00 00 00             	db     3 dup(0x00)                                                  ; dec:   0, chr: '\0'

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 91 (D:\SOURCE\convutil.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 91: D:\SOURCE\convutil.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------
text_id:                                                                                            ; access size: DWORDS
   14078:	93 fa 00 00          	dd     @obj3:convutil_cpp_variable_142                              ; fixup: num: 21590, src obj: 3, src ofs: 0x14078, dst obj: 3, dst ofs: 0xfa93
   1407c:	99 fa 00 00          	dd     @obj3:convutil_cpp_variable_143                              ; fixup: num: 21589, src obj: 3, src ofs: 0x1407c, dst obj: 3, dst ofs: 0xfa99
   14080:	9f fa 00 00          	dd     @obj3:convutil_cpp_variable_144                              ; fixup: num: 21588, src obj: 3, src ofs: 0x14080, dst obj: 3, dst ofs: 0xfa9f
   14084:	a5 fa 00 00          	dd     @obj3:convutil_cpp_variable_145                              ; fixup: num: 21587, src obj: 3, src ofs: 0x14084, dst obj: 3, dst ofs: 0xfaa5
   14088:	ab fa 00 00          	dd     @obj3:convutil_cpp_variable_146                              ; fixup: num: 21586, src obj: 3, src ofs: 0x14088, dst obj: 3, dst ofs: 0xfaab
   1408c:	b1 fa 00 00          	dd     @obj3:convutil_cpp_variable_147                              ; fixup: num: 21585, src obj: 3, src ofs: 0x1408c, dst obj: 3, dst ofs: 0xfab1
   14090:	b7 fa 00 00          	dd     @obj3:convutil_cpp_variable_148                              ; fixup: num: 21584, src obj: 3, src ofs: 0x14090, dst obj: 3, dst ofs: 0xfab7
   14094:	bd fa 00 00          	dd     @obj3:convutil_cpp_variable_149                              ; fixup: num: 21583, src obj: 3, src ofs: 0x14094, dst obj: 3, dst ofs: 0xfabd
   14098:	c3 fa 00 00          	dd     @obj3:convutil_cpp_variable_150                              ; fixup: num: 21582, src obj: 3, src ofs: 0x14098, dst obj: 3, dst ofs: 0xfac3
   1409c:	c9 fa 00 00          	dd     @obj3:convutil_cpp_variable_151                              ; fixup: num: 21581, src obj: 3, src ofs: 0x1409c, dst obj: 3, dst ofs: 0xfac9
   140a0:	cf fa 00 00          	dd     @obj3:convutil_cpp_variable_152                              ; fixup: num: 21580, src obj: 3, src ofs: 0x140a0, dst obj: 3, dst ofs: 0xfacf
   140a4:	d6 fa 00 00          	dd     @obj3:convutil_cpp_variable_153                              ; fixup: num: 21579, src obj: 3, src ofs: 0x140a4, dst obj: 3, dst ofs: 0xfad6
   140a8:	dd fa 00 00          	dd     @obj3:convutil_cpp_variable_154                              ; fixup: num: 21578, src obj: 3, src ofs: 0x140a8, dst obj: 3, dst ofs: 0xfadd
   140ac:	e4 fa 00 00          	dd     @obj3:convutil_cpp_variable_155                              ; fixup: num: 21577, src obj: 3, src ofs: 0x140ac, dst obj: 3, dst ofs: 0xfae4
   140b0:	eb fa 00 00          	dd     @obj3:convutil_cpp_variable_156                              ; fixup: num: 21576, src obj: 3, src ofs: 0x140b0, dst obj: 3, dst ofs: 0xfaeb
   140b4:	f2 fa 00 00          	dd     @obj3:convutil_cpp_variable_157                              ; fixup: num: 21575, src obj: 3, src ofs: 0x140b4, dst obj: 3, dst ofs: 0xfaf2

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 91 (D:\SOURCE\convutil.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 91: D:\SOURCE\convutil.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------
_text_bitmap:                                                                                       ; access size: DWORD
   261d8:	00 00 00             	db     3 dup(0x00)                                                  ; dec:   0, chr: '\0'
_text_bitmap_variable_1:                                                                            ; access size: BYTES
   261db:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
_showtext:                                                                                          ; access size: BYTES
   261dc:	00 00 00 00 00 00 .. 	db     1020 dup(0x00)                                               ; dec:   0, chr: '\0'
_showtext_variable_1:                                                                               ; access size: DWORDS
   265d8:	00 00 00 00          	dd     0x00000000
ref_num:                                                                                            ; access size: DWORDS
   265dc:	00 00 00 00 00 00 .. 	dd     3000 dup(0x00000000)
showing_item:                                                                                       ; access size: DWORD
   294bc:	00 00 00 00          	dd     0x00000000
keyword:
   294c0:	00 00 00 00 00 00 .. 	db     256 dup(0x00)                                                ; dec:   0, chr: '\0'
keystring:
   295c0:	00 00 00 00 00 00 .. 	db     255 dup(0x00)                                                ; dec:   0, chr: '\0'
cancel:                                                                                             ; access size: BYTE
   296bf:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
loaded_heads:
   296c0:	00 00 00 00 00 00 .. 	db     31 dup(0x00)                                                 ; dec:   0, chr: '\0'
loaded_heads_variable_1:
   296df:	00 00 00 00 00 00 .. 	db     125 dup(0x00)                                                ; dec:   0, chr: '\0'
left_head:                                                                                          ; access size: DWORD
   2975c:	00 00 00 00          	dd     0x00000000
right_head:                                                                                         ; access size: DWORD
   29760:	00 00 00 00          	dd     0x00000000
keyw_box:                                                                                           ; access size: DWORD
   29764:	00 00 00 00          	dd     0x00000000
textbox1:                                                                                           ; access size: DWORD
   29768:	00 00 00 00          	dd     0x00000000
textbox2:                                                                                           ; access size: DWORD
   2976c:	00 00 00 00          	dd     0x00000000
textbox3:                                                                                           ; access size: DWORD
   29770:	00 00 00 00          	dd     0x00000000
textbox4:                                                                                           ; access size: DWORD
   29774:	00 00 00 00          	dd     0x00000000
textbox5:                                                                                           ; access size: DWORD
   29778:	00 00 00 00          	dd     0x00000000
textbox6:                                                                                           ; access size: DWORD
   2977c:	00 00 00 00          	dd     0x00000000
textbox7:                                                                                           ; access sizes: DWORDS, DWORD
   29780:	00 00 00 00          	dd     0x00000000
textbox8:                                                                                           ; access size: DWORD
   29784:	00 00 00 00          	dd     0x00000000
fh_Dialog:                                                                                          ; access size: DWORD
   29788:	00 00 00 00          	dd     0x00000000
index_table:                                                                                        ; access size: DWORDS
   2978c:	00 00 00 00          	dd     0x00000000
index_table_variable_1:                                                                             ; access size: DWORDS
   29790:	00 00 00 00          	dd     0x00000000
index_table_variable_2:                                                                             ; access size: DWORDS
   29794:	00 00 00 00 00 00 .. 	dd     8998 dup(0x00000000)
dialog_file_initialized:                                                                            ; access size: BYTE
   3242c:	00 00 00 00          	db     4 dup(0x00)                                                  ; dec:   0, chr: '\0'
bye_str:                                                                                            ; access size: DWORD
   32430:	00 00 00 00          	dd     0x00000000
temp_filename:                                                                                      ; access size: DWORD
   32434:	00 00 00 00          	dd     0x00000000

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 91 (D:\SOURCE\convutil.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------