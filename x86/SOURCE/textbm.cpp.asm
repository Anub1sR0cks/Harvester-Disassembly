;-------------------------------------------------------------------------------
;                                                                              -
;  Module 82: D:\SOURCE\textbm.cpp                                             -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function                                      -
;  'W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_'   -
;-------------------------------------------------
W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_:
   49c00:	56                   	push   esi
   49c01:	57                   	push   edi
   49c02:	55                   	push   ebp
   49c03:	81 ec 1c 04 00 00    	sub    esp,0x41c
   49c09:	8b ac 24 38 04 00 00 	mov    ebp,DWORD PTR [esp+0x438]
   49c10:	89 84 24 18 04 00 00 	mov    DWORD PTR [esp+0x418],eax
   49c17:	89 d6                	mov    esi,edx
   49c19:	89 9c 24 14 04 00 00 	mov    DWORD PTR [esp+0x414],ebx
   49c20:	8b 9c 24 2c 04 00 00 	mov    ebx,DWORD PTR [esp+0x42c]
   49c27:	89 ca                	mov    edx,ecx
   49c29:	8b 8c 24 30 04 00 00 	mov    ecx,DWORD PTR [esp+0x430]
   49c30:	db 84 24 34 04 00 00 	fild   DWORD PTR [esp+0x434]
   49c37:	6a 00                	push   0x0
   49c39:	6a 01                	push   0x1
   49c3b:	83 ec 04             	sub    esp,0x4
   49c3e:	d9 1c 24             	fstp   DWORD PTR [esp]
   49c41:	e8 2a 0f ff ff       	call   W?$ct:BTMAP$n(pnaiibipna)_
   49c46:	89 84 24 10 04 00 00 	mov    DWORD PTR [esp+0x410],eax
   49c4d:	89 84 24 18 04 00 00 	mov    DWORD PTR [esp+0x418],eax
   49c54:	c7 40 38 07 00 00 00 	mov    DWORD PTR [eax+0x38],0x7
   49c5b:	85 f6                	test   esi,esi
   49c5d:	0f 84 a4 02 00 00    	je     W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)__branch_24
   49c63:	89 f7                	mov    edi,esi
   49c65:	29 c9                	sub    ecx,ecx
   49c67:	49                   	dec    ecx
   49c68:	31 c0                	xor    eax,eax
   49c6a:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
   49c6c:	f7 d1                	not    ecx
   49c6e:	49                   	dec    ecx
   49c6f:	8b 84 24 10 04 00 00 	mov    eax,DWORD PTR [esp+0x410]
   49c76:	c7 40 4c 01 00 00 00 	mov    DWORD PTR [eax+0x4c],0x1
   49c7d:	85 ed                	test   ebp,ebp
   49c7f:	0f 8e 23 02 00 00    	jle    W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)__branch_22
   49c85:	89 f7                	mov    edi,esi
   49c87:	29 c9                	sub    ecx,ecx
   49c89:	49                   	dec    ecx
   49c8a:	31 c0                	xor    eax,eax
   49c8c:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
   49c8e:	f7 d1                	not    ecx
   49c90:	49                   	dec    ecx
   49c91:	8d 41 01             	lea    eax,[ecx+0x1]
   49c94:	e8 fa 77 02 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   49c99:	89 84 24 04 04 00 00 	mov    DWORD PTR [esp+0x404],eax
   49ca0:	85 c0                	test   eax,eax
   49ca2:	75 0f                	jne    W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)__branch_1
   49ca4:	bb 90 ba 00 00       	mov    ebx,@obj3:textbm_cpp_variable_1                              ; fixup: num: 11606, src obj: 1, src ofs: 0x49ca5, dst obj: 3, dst ofs: 0xba90
   49ca9:	ba 34 00 00 00       	mov    edx,0x34
   49cae:	e8 7d e3 fe ff       	call   _error_report
W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)__branch_1:
   49cb3:	8b bc 24 04 04 00 00 	mov    edi,DWORD PTR [esp+0x404]
   49cba:	57                   	push   edi
W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)__branch_2:
   49cbb:	8a 06                	mov    al,BYTE PTR [esi]
   49cbd:	88 07                	mov    BYTE PTR [edi],al
   49cbf:	3c 00                	cmp    al,0x0
   49cc1:	74 10                	je     W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)__branch_3
   49cc3:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   49cc6:	83 c6 02             	add    esi,0x2
   49cc9:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   49ccc:	83 c7 02             	add    edi,0x2
   49ccf:	3c 00                	cmp    al,0x0
   49cd1:	75 e8                	jne    W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)__branch_2
W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)__branch_3:
   49cd3:	5f                   	pop    edi
   49cd4:	8b 84 24 14 04 00 00 	mov    eax,DWORD PTR [esp+0x414]
   49cdb:	0f bf 80 42 04 00 00 	movsx  eax,WORD PTR [eax+0x442]
   49ce2:	89 ea                	mov    edx,ebp
   49ce4:	8d 48 ff             	lea    ecx,[eax-0x1]
   49ce7:	c1 fa 1f             	sar    edx,0x1f
   49cea:	89 e8                	mov    eax,ebp
   49cec:	f7 f9                	idiv   ecx
   49cee:	89 fe                	mov    esi,edi
   49cf0:	89 c5                	mov    ebp,eax
   49cf2:	b3 20                	mov    bl,0x20
W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)__branch_4:
   49cf4:	89 f7                	mov    edi,esi
   49cf6:	29 c9                	sub    ecx,ecx
   49cf8:	49                   	dec    ecx
   49cf9:	31 c0                	xor    eax,eax
   49cfb:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
   49cfd:	f7 d1                	not    ecx
   49cff:	49                   	dec    ecx
   49d00:	39 e9                	cmp    ecx,ebp
   49d02:	76 31                	jbe    W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)__branch_7
   49d04:	89 e8                	mov    eax,ebp
   49d06:	8d 0c 2e             	lea    ecx,[esi+ebp*1]
   49d09:	8a 39                	mov    bh,BYTE PTR [ecx]
   49d0b:	89 ca                	mov    edx,ecx
   49d0d:	38 fb                	cmp    bl,bh
   49d0f:	74 0d                	je     W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)__branch_6
W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)__branch_5:
   49d11:	85 c0                	test   eax,eax
   49d13:	7e 09                	jle    W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)__branch_6
   49d15:	8a 4a ff             	mov    cl,BYTE PTR [edx-0x1]
   49d18:	4a                   	dec    edx
   49d19:	48                   	dec    eax
   49d1a:	38 cb                	cmp    bl,cl
   49d1c:	75 f3                	jne    W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)__branch_5
W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)__branch_6:
   49d1e:	85 c0                	test   eax,eax
   49d20:	7e d2                	jle    W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)__branch_4
   49d22:	c6 04 06 0a          	mov    BYTE PTR [esi+eax*1],0xa
   49d26:	40                   	inc    eax
   49d27:	01 c6                	add    esi,eax
   49d29:	8b 84 24 18 04 00 00 	mov    eax,DWORD PTR [esp+0x418]
   49d30:	ff 40 4c             	inc    DWORD PTR [eax+0x4c]
   49d33:	eb bf                	jmp    W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)__branch_4
W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)__branch_7:
   49d35:	8b 84 24 04 04 00 00 	mov    eax,DWORD PTR [esp+0x404]
   49d3c:	bb a8 ba 00 00       	mov    ebx,@obj3:textbm_cpp_variable_2                              ; fixup: num: 11608, src obj: 1, src ofs: 0x49d3d, dst obj: 3, dst ofs: 0xbaa8
   49d41:	bf aa ba 00 00       	mov    edi,@obj3:textbm_cpp_variable_3                              ; fixup: num: 11607, src obj: 1, src ofs: 0x49d42, dst obj: 3, dst ofs: 0xbaaa
   49d46:	be ff ff ff ff       	mov    esi,0xffffffff
   49d4b:	8b ac 24 04 04 00 00 	mov    ebp,DWORD PTR [esp+0x404]
   49d52:	89 84 24 08 04 00 00 	mov    DWORD PTR [esp+0x408],eax
   49d59:	89 9c 24 00 04 00 00 	mov    DWORD PTR [esp+0x400],ebx
   49d60:	29 c9                	sub    ecx,ecx
   49d62:	49                   	dec    ecx
   49d63:	31 c0                	xor    eax,eax
   49d65:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
   49d67:	f7 d1                	not    ecx
   49d69:	49                   	dec    ecx
   49d6a:	89 8c 24 0c 04 00 00 	mov    DWORD PTR [esp+0x40c],ecx
   49d71:	8a 55 00             	mov    dl,BYTE PTR [ebp+0x0]
   49d74:	31 c9                	xor    ecx,ecx
   49d76:	84 d2                	test   dl,dl
   49d78:	75 0b                	jne    W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)__branch_9
   49d7a:	eb 3e                	jmp    W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)__branch_12
W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)__branch_8:
   49d7c:	8a 45 01             	mov    al,BYTE PTR [ebp+0x1]
   49d7f:	45                   	inc    ebp
   49d80:	41                   	inc    ecx
   49d81:	84 c0                	test   al,al
   49d83:	74 35                	je     W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)__branch_12
W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)__branch_9:
   49d85:	83 fe ff             	cmp    esi,0xffffffff
   49d88:	75 30                	jne    W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)__branch_12
   49d8a:	8b bc 24 08 04 00 00 	mov    edi,DWORD PTR [esp+0x408]
   49d91:	01 cf                	add    edi,ecx
   49d93:	8a 1f                	mov    bl,BYTE PTR [edi]
   49d95:	b8 aa ba 00 00       	mov    eax,@obj3:textbm_cpp_variable_3                              ; fixup: num: 11610, src obj: 1, src ofs: 0x49d96, dst obj: 3, dst ofs: 0xbaaa
   49d9a:	8a 3d aa ba 00 00    	mov    bh,BYTE PTR ds:@obj3:textbm_cpp_variable_3                   ; fixup: num: 11609, src obj: 1, src ofs: 0x49d9c, dst obj: 3, dst ofs: 0xbaaa
   49da0:	89 fa                	mov    edx,edi
   49da2:	eb 08                	jmp    W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)__branch_11
W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)__branch_10:
   49da4:	8a 5a 01             	mov    bl,BYTE PTR [edx+0x1]
   49da7:	42                   	inc    edx
   49da8:	8a 78 01             	mov    bh,BYTE PTR [eax+0x1]
   49dab:	40                   	inc    eax
W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)__branch_11:
   49dac:	38 fb                	cmp    bl,bh
   49dae:	75 cc                	jne    W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)__branch_8
   49db0:	80 78 01 00          	cmp    BYTE PTR [eax+0x1],0x0
   49db4:	75 ee                	jne    W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)__branch_10
   49db6:	89 ce                	mov    esi,ecx
   49db8:	eb ea                	jmp    W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)__branch_10
W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)__branch_12:
   49dba:	83 fe ff             	cmp    esi,0xffffffff
   49dbd:	0f 84 75 00 00 00    	je     W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)__branch_21
   49dc3:	31 c0                	xor    eax,eax
   49dc5:	85 f6                	test   esi,esi
   49dc7:	7e 13                	jle    W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)__branch_14
   49dc9:	8b 94 24 08 04 00 00 	mov    edx,DWORD PTR [esp+0x408]
W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)__branch_13:
   49dd0:	40                   	inc    eax
   49dd1:	8a 1a                	mov    bl,BYTE PTR [edx]
   49dd3:	42                   	inc    edx
   49dd4:	88 5c 04 ff          	mov    BYTE PTR [esp+eax*1-0x1],bl
   49dd8:	39 f0                	cmp    eax,esi
   49dda:	7c f4                	jl     W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)__branch_13
W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)__branch_14:
   49ddc:	8b 94 24 00 04 00 00 	mov    edx,DWORD PTR [esp+0x400]
   49de3:	80 3a 00             	cmp    BYTE PTR [edx],0x0
   49de6:	74 0d                	je     W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)__branch_16
W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)__branch_15:
   49de8:	8a 1a                	mov    bl,BYTE PTR [edx]
   49dea:	42                   	inc    edx
   49deb:	88 1c 04             	mov    BYTE PTR [esp+eax*1],bl
   49dee:	8a 2a                	mov    ch,BYTE PTR [edx]
   49df0:	40                   	inc    eax
   49df1:	84 ed                	test   ch,ch
   49df3:	75 f3                	jne    W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)__branch_15
W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)__branch_16:
   49df5:	8b bc 24 0c 04 00 00 	mov    edi,DWORD PTR [esp+0x40c]
   49dfc:	8b 8c 24 08 04 00 00 	mov    ecx,DWORD PTR [esp+0x408]
   49e03:	01 fe                	add    esi,edi
   49e05:	01 f1                	add    ecx,esi
   49e07:	8a 19                	mov    bl,BYTE PTR [ecx]
   49e09:	89 ca                	mov    edx,ecx
   49e0b:	84 db                	test   bl,bl
   49e0d:	74 0e                	je     W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)__branch_18
W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)__branch_17:
   49e0f:	8a 1a                	mov    bl,BYTE PTR [edx]
   49e11:	42                   	inc    edx
   49e12:	88 1c 04             	mov    BYTE PTR [esp+eax*1],bl
   49e15:	46                   	inc    esi
   49e16:	8a 3a                	mov    bh,BYTE PTR [edx]
   49e18:	40                   	inc    eax
   49e19:	84 ff                	test   bh,bh
   49e1b:	75 f2                	jne    W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)__branch_17
W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)__branch_18:
   49e1d:	30 c9                	xor    cl,cl
   49e1f:	31 d2                	xor    edx,edx
   49e21:	88 0c 04             	mov    BYTE PTR [esp+eax*1],cl
   49e24:	8b 84 24 08 04 00 00 	mov    eax,DWORD PTR [esp+0x408]
   49e2b:	eb 02                	jmp    W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)__branch_20
W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)__branch_19:
   49e2d:	40                   	inc    eax
   49e2e:	42                   	inc    edx
W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)__branch_20:
   49e2f:	8a 1c 14             	mov    bl,BYTE PTR [esp+edx*1]
   49e32:	88 18                	mov    BYTE PTR [eax],bl
   49e34:	84 db                	test   bl,bl
   49e36:	75 f5                	jne    W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)__branch_19
W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)__branch_21:
   49e38:	8b 84 24 14 04 00 00 	mov    eax,DWORD PTR [esp+0x414]
   49e3f:	8b 8c 24 18 04 00 00 	mov    ecx,DWORD PTR [esp+0x418]
   49e46:	0f bf 40 40          	movsx  eax,WORD PTR [eax+0x40]
   49e4a:	8b 49 4c             	mov    ecx,DWORD PTR [ecx+0x4c]
   49e4d:	83 c0 03             	add    eax,0x3
   49e50:	0f af c8             	imul   ecx,eax
   49e53:	8b 94 24 14 04 00 00 	mov    edx,DWORD PTR [esp+0x414]
   49e5a:	8b 84 24 04 04 00 00 	mov    eax,DWORD PTR [esp+0x404]
   49e61:	bb 01 00 00 00       	mov    ebx,0x1
   49e66:	e8 c5 ea ff ff       	call   stringwidthCFN
   49e6b:	83 c0 05             	add    eax,0x5
   49e6e:	89 ca                	mov    edx,ecx
   49e70:	e8 2b 8b fc ff       	call   build_bm_alloc
   49e75:	6a 03                	push   0x3
   49e77:	8b 94 24 1c 04 00 00 	mov    edx,DWORD PTR [esp+0x41c]
   49e7e:	31 c9                	xor    ecx,ecx
   49e80:	50                   	push   eax
   49e81:	31 db                	xor    ebx,ebx
   49e83:	89 02                	mov    DWORD PTR [edx],eax
   49e85:	6a 01                	push   0x1
   49e87:	8b 94 24 20 04 00 00 	mov    edx,DWORD PTR [esp+0x420]
   49e8e:	8b 84 24 10 04 00 00 	mov    eax,DWORD PTR [esp+0x410]
   49e95:	e8 66 e5 ff ff       	call   bm_draw_string_CFONT
   49e9a:	8b 84 24 04 04 00 00 	mov    eax,DWORD PTR [esp+0x404]
   49ea1:	e8 42 75 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   49ea6:	eb 48                	jmp    W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)__branch_23
W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)__branch_22:
   49ea8:	8b 8c 24 14 04 00 00 	mov    ecx,DWORD PTR [esp+0x414]
   49eaf:	8b 94 24 14 04 00 00 	mov    edx,DWORD PTR [esp+0x414]
   49eb6:	bb 01 00 00 00       	mov    ebx,0x1
   49ebb:	89 f0                	mov    eax,esi
   49ebd:	0f bf 49 40          	movsx  ecx,WORD PTR [ecx+0x40]
   49ec1:	e8 6a ea ff ff       	call   stringwidthCFN
   49ec6:	83 c0 05             	add    eax,0x5
   49ec9:	89 ca                	mov    edx,ecx
   49ecb:	e8 d0 8a fc ff       	call   build_bm_alloc
   49ed0:	6a 01                	push   0x1
   49ed2:	8b 94 24 14 04 00 00 	mov    edx,DWORD PTR [esp+0x414]
   49ed9:	31 c9                	xor    ecx,ecx
   49edb:	50                   	push   eax
   49edc:	31 db                	xor    ebx,ebx
   49ede:	89 02                	mov    DWORD PTR [edx],eax
   49ee0:	6a 01                	push   0x1
   49ee2:	8b 94 24 20 04 00 00 	mov    edx,DWORD PTR [esp+0x420]
   49ee9:	89 f0                	mov    eax,esi
   49eeb:	e8 10 e5 ff ff       	call   bm_draw_string_CFONT
W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)__branch_23:
   49ef0:	8b 84 24 18 04 00 00 	mov    eax,DWORD PTR [esp+0x418]
   49ef7:	89 c2                	mov    edx,eax
   49ef9:	c6 40 0c 00          	mov    BYTE PTR [eax+0xc],0x0
   49efd:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 11612, src obj: 1, src ofs: 0x49efe, dst obj: 3, dst ofs: 0x25a88
   49f02:	e8 29 22 00 00       	call   insert_bitmap
W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)__branch_24:
   49f07:	8b 84 24 18 04 00 00 	mov    eax,DWORD PTR [esp+0x418]
   49f0e:	81 c4 1c 04 00 00    	add    esp,0x41c
   49f14:	5d                   	pop    ebp
   49f15:	5f                   	pop    edi
   49f16:	5e                   	pop    esi
   49f17:	c2 10 00             	ret    0x10
   49f1a:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'W?$dt:TEXTBM$n()_'                  -
;-------------------------------------------------
W?$dt:TEXTBM$n()_:
   49f20:	53                   	push   ebx
   49f21:	89 c3                	mov    ebx,eax
   49f23:	89 c2                	mov    edx,eax
   49f25:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 11611, src obj: 1, src ofs: 0x49f26, dst obj: 3, dst ofs: 0x25a88
   49f2a:	e8 c1 27 00 00       	call   remove_bitmap
   49f2f:	ba 01 00 00 00       	mov    edx,0x1
   49f34:	89 d8                	mov    eax,ebx
   49f36:	e8 65 14 ff ff       	call   W?$dt:BTMAP$n()_
   49f3b:	5b                   	pop    ebx
   49f3c:	c3                   	ret    
   49f3d:	8d 40 00             	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function                                      -
;  'W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiiii)_'  -
;-------------------------------------------------
W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiiii)_:
   49f40:	56                   	push   esi
   49f41:	57                   	push   edi
   49f42:	55                   	push   ebp
   49f43:	83 ec 04             	sub    esp,0x4
   49f46:	89 c5                	mov    ebp,eax
   49f48:	89 14 24             	mov    DWORD PTR [esp],edx
   49f4b:	89 df                	mov    edi,ebx
   49f4d:	8b 5c 24 14          	mov    ebx,DWORD PTR [esp+0x14]
   49f51:	89 ca                	mov    edx,ecx
   49f53:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
   49f57:	db 44 24 1c          	fild   DWORD PTR [esp+0x1c]
   49f5b:	6a 00                	push   0x0
   49f5d:	6a 01                	push   0x1
   49f5f:	83 ec 04             	sub    esp,0x4
   49f62:	d9 1c 24             	fstp   DWORD PTR [esp]
   49f65:	e8 06 0c ff ff       	call   W?$ct:BTMAP$n(pnaiibipna)_
   49f6a:	8b 14 24             	mov    edx,DWORD PTR [esp]
   49f6d:	89 c6                	mov    esi,eax
   49f6f:	89 c5                	mov    ebp,eax
   49f71:	c7 40 38 07 00 00 00 	mov    DWORD PTR [eax+0x38],0x7
   49f78:	85 d2                	test   edx,edx
   49f7a:	74 4d                	je     W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiiii)__branch_1
   49f7c:	8b 04 24             	mov    eax,DWORD PTR [esp]
   49f7f:	bb 01 00 00 00       	mov    ebx,0x1
   49f84:	89 fa                	mov    edx,edi
   49f86:	0f bf 4f 40          	movsx  ecx,WORD PTR [edi+0x40]
   49f8a:	e8 a1 e9 ff ff       	call   stringwidthCFN
   49f8f:	83 c0 14             	add    eax,0x14
   49f92:	89 ca                	mov    edx,ecx
   49f94:	e8 07 8a fc ff       	call   build_bm_alloc
   49f99:	6a 01                	push   0x1
   49f9b:	89 c3                	mov    ebx,eax
   49f9d:	89 fa                	mov    edx,edi
   49f9f:	50                   	push   eax
   49fa0:	31 c9                	xor    ecx,ecx
   49fa2:	89 06                	mov    DWORD PTR [esi],eax
   49fa4:	6a 01                	push   0x1
   49fa6:	31 c3                	xor    ebx,eax
   49fa8:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
   49fac:	e8 4f e4 ff ff       	call   bm_draw_string_CFONT
   49fb1:	8b 4c 24 24          	mov    ecx,DWORD PTR [esp+0x24]
   49fb5:	c6 46 0c 00          	mov    BYTE PTR [esi+0xc],0x0
   49fb9:	85 c9                	test   ecx,ecx
   49fbb:	75 0c                	jne    W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiiii)__branch_1
   49fbd:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 11613, src obj: 1, src ofs: 0x49fbe, dst obj: 3, dst ofs: 0x25a88
   49fc2:	89 f2                	mov    edx,esi
   49fc4:	e8 67 21 00 00       	call   insert_bitmap
W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiiii)__branch_1:
   49fc9:	89 e8                	mov    eax,ebp
   49fcb:	83 c4 04             	add    esp,0x4
   49fce:	5d                   	pop    ebp
   49fcf:	5f                   	pop    edi
   49fd0:	5e                   	pop    esi
   49fd1:	c2 14 00             	ret    0x14
   49fd4:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   49fda:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]

;-------------------------------------------------
;  Function 'text_entry'                         -
;-------------------------------------------------
text_entry:
   49fe0:	56                   	push   esi
   49fe1:	57                   	push   edi
   49fe2:	55                   	push   ebp
   49fe3:	83 ec 20             	sub    esp,0x20
   49fe6:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
   49fea:	89 54 24 0c          	mov    DWORD PTR [esp+0xc],edx
   49fee:	89 5c 24 08          	mov    DWORD PTR [esp+0x8],ebx
   49ff2:	83 c3 02             	add    ebx,0x2
   49ff5:	30 e4                	xor    ah,ah
   49ff7:	31 d2                	xor    edx,edx
   49ff9:	88 64 24 18          	mov    BYTE PTR [esp+0x18],ah
   49ffd:	89 54 24 10          	mov    DWORD PTR [esp+0x10],edx
   4a001:	88 64 24 14          	mov    BYTE PTR [esp+0x14],ah
   4a005:	89 d8                	mov    eax,ebx
   4a007:	89 5c 24 08          	mov    DWORD PTR [esp+0x8],ebx
   4a00b:	e8 83 74 02 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   4a010:	89 c5                	mov    ebp,eax
   4a012:	85 c0                	test   eax,eax
   4a014:	75 0f                	jne    text_entry_branch_1
   4a016:	bb ad ba 00 00       	mov    ebx,@obj3:textbm_cpp_variable_4                              ; fixup: num: 11677, src obj: 1, src ofs: 0x4a017, dst obj: 3, dst ofs: 0xbaad
   4a01b:	ba df 00 00 00       	mov    edx,0xdf
   4a020:	e8 0b e0 fe ff       	call   _error_report
text_entry_branch_1:
   4a025:	be c8 ba 00 00       	mov    esi,@obj3:textbm_cpp_variable_5                              ; fixup: num: 11676, src obj: 1, src ofs: 0x4a026, dst obj: 3, dst ofs: 0xbac8
   4a02a:	89 ef                	mov    edi,ebp
   4a02c:	57                   	push   edi
text_entry_branch_2:
   4a02d:	8a 06                	mov    al,BYTE PTR [esi]
   4a02f:	88 07                	mov    BYTE PTR [edi],al
   4a031:	3c 00                	cmp    al,0x0
   4a033:	74 10                	je     text_entry_branch_3
   4a035:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   4a038:	83 c6 02             	add    esi,0x2
   4a03b:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   4a03e:	83 c7 02             	add    edi,0x2
   4a041:	3c 00                	cmp    al,0x0
   4a043:	75 e8                	jne    text_entry_branch_2
text_entry_branch_3:
   4a045:	5f                   	pop    edi
   4a046:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
   4a04a:	8b 74 24 08          	mov    esi,DWORD PTR [esp+0x8]
   4a04e:	0f bf 80 18 03 00 00 	movsx  eax,WORD PTR [eax+0x318]
   4a055:	0f af c6             	imul   eax,esi
   4a058:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
   4a05c:	bb 01 00 00 00       	mov    ebx,0x1
   4a061:	0f bf 52 40          	movsx  edx,WORD PTR [edx+0x40]
   4a065:	e8 36 89 fc ff       	call   build_bm_alloc
   4a06a:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
   4a06e:	89 02                	mov    DWORD PTR [edx],eax
   4a070:	b8 00 59 02 00       	mov    eax,@obj3:keyboard                                           ; fixup: num: 11675, src obj: 1, src ofs: 0x4a071, dst obj: 3, dst ofs: 0x25900
   4a075:	ba 01 00 00 00       	mov    edx,0x1
   4a07a:	e8 31 e5 fe ff       	call   remove_ISR
   4a07f:	b8 07 00 00 00       	mov    eax,0x7
   4a084:	e8 e0 c9 02 00       	call   signal_
   4a089:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
   4a08d:	8d 7e fe             	lea    edi,[esi-0x2]
   4a090:	8b 10                	mov    edx,DWORD PTR [eax]
   4a092:	89 7c 24 08          	mov    DWORD PTR [esp+0x8],edi
   4a096:	85 d2                	test   edx,edx
   4a098:	0f 84 44 03 00 00    	je     text_entry_branch_29
   4a09e:	e8 5f 80 02 00       	call   clock_
   4a0a3:	89 04 24             	mov    DWORD PTR [esp],eax
   4a0a6:	85 c9                	test   ecx,ecx
   4a0a8:	74 31                	je     text_entry_branch_6
   4a0aa:	89 ce                	mov    esi,ecx
   4a0ac:	89 ef                	mov    edi,ebp
   4a0ae:	57                   	push   edi
text_entry_branch_4:
   4a0af:	8a 06                	mov    al,BYTE PTR [esi]
   4a0b1:	88 07                	mov    BYTE PTR [edi],al
   4a0b3:	3c 00                	cmp    al,0x0
   4a0b5:	74 10                	je     text_entry_branch_5
   4a0b7:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   4a0ba:	83 c6 02             	add    esi,0x2
   4a0bd:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   4a0c0:	83 c7 02             	add    edi,0x2
   4a0c3:	3c 00                	cmp    al,0x0
   4a0c5:	75 e8                	jne    text_entry_branch_4
text_entry_branch_5:
   4a0c7:	5f                   	pop    edi
   4a0c8:	29 c9                	sub    ecx,ecx
   4a0ca:	49                   	dec    ecx
   4a0cb:	31 c0                	xor    eax,eax
   4a0cd:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
   4a0cf:	f7 d1                	not    ecx
   4a0d1:	49                   	dec    ecx
   4a0d2:	89 4c 24 10          	mov    DWORD PTR [esp+0x10],ecx
   4a0d6:	e9 8f 02 00 00       	jmp    text_entry_branch_27
text_entry_branch_6:
   4a0db:	80 7c 24 18 00       	cmp    BYTE PTR [esp+0x18],0x0
   4a0e0:	0f 85 10 03 00 00    	jne    text_entry_branch_30
   4a0e6:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 11683, src obj: 1, src ofs: 0x4a0e7, dst obj: 3, dst ofs: 0x1a1d4
   4a0eb:	8b 5c 24 04          	mov    ebx,DWORD PTR [esp+0x4]
   4a0ef:	e8 ac 18 fc ff       	call   update_mod_9
   4a0f4:	8b 1b                	mov    ebx,DWORD PTR [ebx]
   4a0f6:	8b 4b 04             	mov    ecx,DWORD PTR [ebx+0x4]
   4a0f9:	0f af 0b             	imul   ecx,DWORD PTR [ebx]
   4a0fc:	31 d2                	xor    edx,edx
   4a0fe:	81 e2 ff 00 00 00    	and    edx,0xff
   4a104:	8b 43 08             	mov    eax,DWORD PTR [ebx+0x8]
   4a107:	89 cb                	mov    ebx,ecx
   4a109:	e8 c2 72 02 00       	call   memset_
text_entry_branch_7:
   4a10e:	e8 a5 7d 02 00       	call   kbhit_
   4a113:	85 c0                	test   eax,eax
   4a115:	0f 85 ee 00 00 00    	jne    text_entry_branch_14
   4a11b:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 11682, src obj: 1, src ofs: 0x4a11c, dst obj: 3, dst ofs: 0x1a1d4
   4a120:	e8 7b 18 fc ff       	call   update_mod_9
   4a125:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 11681, src obj: 1, src ofs: 0x4a126, dst obj: 3, dst ofs: 0x25a84
   4a12a:	8b 14 24             	mov    edx,DWORD PTR [esp]
   4a12d:	e8 6e 3b 00 00       	call   update_mod_84
   4a132:	83 c2 30             	add    edx,0x30
   4a135:	e8 c8 7f 02 00       	call   clock_
   4a13a:	39 d0                	cmp    eax,edx
   4a13c:	76 18                	jbe    text_entry_branch_8
   4a13e:	8a 4c 24 14          	mov    cl,BYTE PTR [esp+0x14]
   4a142:	e8 bb 7f 02 00       	call   clock_
   4a147:	80 f1 01             	xor    cl,0x1
   4a14a:	89 04 24             	mov    DWORD PTR [esp],eax
   4a14d:	88 4c 24 14          	mov    BYTE PTR [esp+0x14],cl
   4a151:	e9 14 02 00 00       	jmp    text_entry_branch_27
text_entry_branch_8:
   4a156:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 11680, src obj: 1, src ofs: 0x4a158, dst obj: 3, dst ofs: 0x25974
   4a15d:	74 af                	je     text_entry_branch_7
   4a15f:	83 3d 78 59 02 00 03 	cmp    DWORD PTR ds:@obj3:mouse_x,0x3                               ; fixup: num: 11679, src obj: 1, src ofs: 0x4a161, dst obj: 3, dst ofs: 0x25978
   4a166:	7c 2b                	jl     text_entry_branch_9
   4a168:	81 3d 78 59 02 00 3d 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x13d                    ; fixup: num: 11678, src obj: 1, src ofs: 0x4a16a, dst obj: 3, dst ofs: 0x25978
   4a172:	7f 1f                	jg     text_entry_branch_9
   4a174:	81 3d 7c 59 02 00 cc 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x1cc                    ; fixup: num: 11690, src obj: 1, src ofs: 0x4a176, dst obj: 3, dst ofs: 0x2597c
   4a17e:	7c 13                	jl     text_entry_branch_9
   4a180:	81 3d 7c 59 02 00 dc 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x1dc                    ; fixup: num: 11689, src obj: 1, src ofs: 0x4a182, dst obj: 3, dst ofs: 0x2597c
   4a18a:	7f 07                	jg     text_entry_branch_9
   4a18c:	b8 01 00 00 00       	mov    eax,0x1
   4a191:	eb 02                	jmp    text_entry_branch_10
text_entry_branch_9:
   4a193:	31 c0                	xor    eax,eax
text_entry_branch_10:
   4a195:	85 c0                	test   eax,eax
   4a197:	74 07                	je     text_entry_branch_11
   4a199:	c6 44 24 18 01       	mov    BYTE PTR [esp+0x18],0x1
   4a19e:	eb 69                	jmp    text_entry_branch_14
text_entry_branch_11:
   4a1a0:	81 3d 78 59 02 00 41 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x141                    ; fixup: num: 11688, src obj: 1, src ofs: 0x4a1a2, dst obj: 3, dst ofs: 0x25978
   4a1aa:	7c 2b                	jl     text_entry_branch_12
   4a1ac:	81 3d 78 59 02 00 7b 02 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x27b                    ; fixup: num: 11687, src obj: 1, src ofs: 0x4a1ae, dst obj: 3, dst ofs: 0x25978
   4a1b6:	7f 1f                	jg     text_entry_branch_12
   4a1b8:	81 3d 7c 59 02 00 cc 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x1cc                    ; fixup: num: 11686, src obj: 1, src ofs: 0x4a1ba, dst obj: 3, dst ofs: 0x2597c
   4a1c2:	7c 13                	jl     text_entry_branch_12
   4a1c4:	81 3d 7c 59 02 00 dc 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x1dc                    ; fixup: num: 11685, src obj: 1, src ofs: 0x4a1c6, dst obj: 3, dst ofs: 0x2597c
   4a1ce:	7f 07                	jg     text_entry_branch_12
   4a1d0:	b8 01 00 00 00       	mov    eax,0x1
   4a1d5:	eb 02                	jmp    text_entry_branch_13
text_entry_branch_12:
   4a1d7:	31 c0                	xor    eax,eax
text_entry_branch_13:
   4a1d9:	85 c0                	test   eax,eax
   4a1db:	0f 84 2d ff ff ff    	je     text_entry_branch_7
   4a1e1:	b8 90 01 00 00       	mov    eax,0x190
   4a1e6:	e8 f7 7e 02 00       	call   delay_
   4a1eb:	b8 00 59 02 00       	mov    eax,@obj3:keyboard                                           ; fixup: num: 11684, src obj: 1, src ofs: 0x4a1ec, dst obj: 3, dst ofs: 0x25900
   4a1f0:	e8 fb e2 fe ff       	call   install_ISR
   4a1f5:	85 ed                	test   ebp,ebp
   4a1f7:	0f 84 22 02 00 00    	je     text_entry_branch_32
   4a1fd:	89 e8                	mov    eax,ebp
   4a1ff:	e8 e4 71 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   4a204:	e9 16 02 00 00       	jmp    text_entry_branch_32
text_entry_branch_14:
   4a209:	8a 6c 24 18          	mov    ch,BYTE PTR [esp+0x18]
   4a20d:	84 ed                	test   ch,ch
   4a20f:	0f 85 c6 fe ff ff    	jne    text_entry_branch_6
   4a215:	e8 4e c3 02 00       	call   getch_
   4a21a:	83 f8 1b             	cmp    eax,0x1b
   4a21d:	75 1e                	jne    text_entry_branch_16
   4a21f:	85 ed                	test   ebp,ebp
   4a221:	74 07                	je     text_entry_branch_15
   4a223:	89 e8                	mov    eax,ebp
   4a225:	e8 be 71 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
text_entry_branch_15:
   4a22a:	b8 00 59 02 00       	mov    eax,@obj3:keyboard                                           ; fixup: num: 11693, src obj: 1, src ofs: 0x4a22b, dst obj: 3, dst ofs: 0x25900
   4a22f:	e8 bc e2 fe ff       	call   install_ISR
   4a234:	31 c0                	xor    eax,eax
   4a236:	83 c4 20             	add    esp,0x20
   4a239:	5d                   	pop    ebp
   4a23a:	5f                   	pop    edi
   4a23b:	5e                   	pop    esi
   4a23c:	c3                   	ret    
text_entry_branch_16:
   4a23d:	83 f8 0d             	cmp    eax,0xd
   4a240:	75 0a                	jne    text_entry_branch_17
   4a242:	c6 44 24 18 01       	mov    BYTE PTR [esp+0x18],0x1
   4a247:	e9 8f fe ff ff       	jmp    text_entry_branch_6
text_entry_branch_17:
   4a24c:	83 f8 08             	cmp    eax,0x8
   4a24f:	75 1e                	jne    text_entry_branch_19
   4a251:	8b 5c 24 10          	mov    ebx,DWORD PTR [esp+0x10]
   4a255:	85 db                	test   ebx,ebx
   4a257:	7e 07                	jle    text_entry_branch_18
   4a259:	8d 4b ff             	lea    ecx,[ebx-0x1]
   4a25c:	89 4c 24 10          	mov    DWORD PTR [esp+0x10],ecx
text_entry_branch_18:
   4a260:	b6 01                	mov    dh,0x1
   4a262:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
   4a266:	88 74 24 1c          	mov    BYTE PTR [esp+0x1c],dh
   4a26a:	e9 ec 00 00 00       	jmp    text_entry_branch_25
text_entry_branch_19:
   4a26f:	85 c0                	test   eax,eax
   4a271:	75 67                	jne    text_entry_branch_22
   4a273:	e8 f0 c2 02 00       	call   getch_
   4a278:	50                   	push   eax
   4a279:	68 c9 ba 00 00       	push   @obj3:textbm_cpp_variable_6                                  ; fixup: num: 11692, src obj: 1, src ofs: 0x4a27a, dst obj: 3, dst ofs: 0xbac9
   4a27e:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 11691, src obj: 1, src ofs: 0x4a27f, dst obj: 3, dst ofs: 0x237fc
   4a283:	89 c3                	mov    ebx,eax
   4a285:	e8 57 69 02 00       	call   sprintf_
   4a28a:	83 c4 0c             	add    esp,0xc
   4a28d:	83 fb 4b             	cmp    ebx,0x4b
   4a290:	75 1e                	jne    text_entry_branch_21
   4a292:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
   4a296:	85 c0                	test   eax,eax
   4a298:	7e 07                	jle    text_entry_branch_20
   4a29a:	8d 50 ff             	lea    edx,[eax-0x1]
   4a29d:	89 54 24 10          	mov    DWORD PTR [esp+0x10],edx
text_entry_branch_20:
   4a2a1:	b2 01                	mov    dl,0x1
   4a2a3:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
   4a2a7:	88 54 24 1c          	mov    BYTE PTR [esp+0x1c],dl
   4a2ab:	e9 ab 00 00 00       	jmp    text_entry_branch_25
text_entry_branch_21:
   4a2b0:	83 fb 47             	cmp    ebx,0x47
   4a2b3:	0f 85 a6 00 00 00    	jne    text_entry_branch_26
   4a2b9:	8b 5c 24 08          	mov    ebx,DWORD PTR [esp+0x8]
   4a2bd:	89 e8                	mov    eax,ebp
   4a2bf:	31 d2                	xor    edx,edx
   4a2c1:	83 c3 02             	add    ebx,0x2
   4a2c4:	31 ff                	xor    edi,edi
   4a2c6:	e8 05 71 02 00       	call   memset_
   4a2cb:	b4 01                	mov    ah,0x1
   4a2cd:	89 7c 24 10          	mov    DWORD PTR [esp+0x10],edi
   4a2d1:	88 64 24 1c          	mov    BYTE PTR [esp+0x1c],ah
   4a2d5:	e9 85 00 00 00       	jmp    text_entry_branch_26
text_entry_branch_22:
   4a2da:	89 c3                	mov    ebx,eax
   4a2dc:	81 e3 ff 00 00 00    	and    ebx,0xff
   4a2e2:	83 fb 1f             	cmp    ebx,0x1f
   4a2e5:	0f 8c f0 fd ff ff    	jl     text_entry_branch_6
   4a2eb:	81 fb 80 00 00 00    	cmp    ebx,0x80
   4a2f1:	0f 8f e4 fd ff ff    	jg     text_entry_branch_6
   4a2f7:	b0 01                	mov    al,0x1
   4a2f9:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
   4a2fd:	88 44 24 1c          	mov    BYTE PTR [esp+0x1c],al
   4a301:	89 d8                	mov    eax,ebx
   4a303:	e8 f8 e5 ff ff       	call   charwidthCFN
   4a308:	85 c0                	test   eax,eax
   4a30a:	76 18                	jbe    text_entry_branch_23
   4a30c:	80 fb 7e             	cmp    bl,0x7e
   4a30f:	74 13                	je     text_entry_branch_23
   4a311:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
   4a315:	8d 50 01             	lea    edx,[eax+0x1]
   4a318:	88 1c 28             	mov    BYTE PTR [eax+ebp*1],bl
   4a31b:	89 d0                	mov    eax,edx
   4a31d:	89 54 24 10          	mov    DWORD PTR [esp+0x10],edx
   4a321:	88 2c 28             	mov    BYTE PTR [eax+ebp*1],ch
text_entry_branch_23:
   4a324:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
   4a328:	8b 5c 24 10          	mov    ebx,DWORD PTR [esp+0x10]
   4a32c:	48                   	dec    eax
   4a32d:	39 d8                	cmp    eax,ebx
   4a32f:	7d 0d                	jge    text_entry_branch_24
   4a331:	8d 4b ff             	lea    ecx,[ebx-0x1]
   4a334:	89 c8                	mov    eax,ecx
   4a336:	89 4c 24 10          	mov    DWORD PTR [esp+0x10],ecx
   4a33a:	c6 04 28 00          	mov    BYTE PTR [eax+ebp*1],0x0
text_entry_branch_24:
   4a33e:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
   4a342:	89 e8                	mov    eax,ebp
   4a344:	e8 e7 e5 ff ff       	call   stringwidthCFN
   4a349:	3d 26 02 00 00       	cmp    eax,0x226
   4a34e:	76 0f                	jbe    text_entry_branch_26
   4a350:	8b 74 24 10          	mov    esi,DWORD PTR [esp+0x10]
   4a354:	4e                   	dec    esi
   4a355:	89 f0                	mov    eax,esi
   4a357:	89 74 24 10          	mov    DWORD PTR [esp+0x10],esi
text_entry_branch_25:
   4a35b:	c6 04 28 00          	mov    BYTE PTR [eax+ebp*1],0x0
text_entry_branch_26:
   4a35f:	80 7c 24 1c 00       	cmp    BYTE PTR [esp+0x1c],0x0
   4a364:	0f 84 71 fd ff ff    	je     text_entry_branch_6
text_entry_branch_27:
   4a36a:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
   4a36e:	0f bf 40 40          	movsx  eax,WORD PTR [eax+0x40]
   4a372:	50                   	push   eax
   4a373:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
   4a377:	8b 18                	mov    ebx,DWORD PTR [eax]
   4a379:	53                   	push   ebx
   4a37a:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
   4a37e:	31 c9                	xor    ecx,ecx
   4a380:	6a 01                	push   0x1
   4a382:	89 e8                	mov    eax,ebp
   4a384:	31 db                	xor    ebx,ebx
   4a386:	e8 75 e0 ff ff       	call   bm_draw_string_CFONT
   4a38b:	31 c0                	xor    eax,eax
   4a38d:	8a 44 24 14          	mov    al,BYTE PTR [esp+0x14]
   4a391:	83 f8 01             	cmp    eax,0x1
   4a394:	75 2f                	jne    text_entry_branch_28
   4a396:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
   4a39a:	0f bf 40 40          	movsx  eax,WORD PTR [eax+0x40]
   4a39e:	50                   	push   eax
   4a39f:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
   4a3a3:	8b 08                	mov    ecx,DWORD PTR [eax]
   4a3a5:	51                   	push   ecx
   4a3a6:	6a 01                	push   0x1
   4a3a8:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
   4a3ac:	89 e8                	mov    eax,ebp
   4a3ae:	e8 7d e5 ff ff       	call   stringwidthCFN
   4a3b3:	31 c9                	xor    ecx,ecx
   4a3b5:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
   4a3b9:	89 c3                	mov    ebx,eax
   4a3bb:	b8 d0 ba 00 00       	mov    eax,@obj3:textbm_cpp_variable_7                              ; fixup: num: 11697, src obj: 1, src ofs: 0x4a3bc, dst obj: 3, dst ofs: 0xbad0
   4a3c0:	e8 3b e0 ff ff       	call   bm_draw_string_CFONT
text_entry_branch_28:
   4a3c5:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
   4a3c9:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 11696, src obj: 1, src ofs: 0x4a3ca, dst obj: 3, dst ofs: 0x25a88
   4a3ce:	e8 5d 1d 00 00       	call   insert_bitmap
   4a3d3:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 11695, src obj: 1, src ofs: 0x4a3d4, dst obj: 3, dst ofs: 0x25a84
   4a3d8:	e8 c3 38 00 00       	call   update_mod_84
   4a3dd:	e9 f9 fc ff ff       	jmp    text_entry_branch_6
text_entry_branch_29:
   4a3e2:	85 ed                	test   ebp,ebp
   4a3e4:	74 39                	je     text_entry_branch_32
   4a3e6:	89 e8                	mov    eax,ebp
   4a3e8:	e8 fb 6f 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   4a3ed:	31 c0                	xor    eax,eax
   4a3ef:	83 c4 20             	add    esp,0x20
   4a3f2:	5d                   	pop    ebp
   4a3f3:	5f                   	pop    edi
   4a3f4:	5e                   	pop    esi
   4a3f5:	c3                   	ret    
text_entry_branch_30:
   4a3f6:	b8 00 59 02 00       	mov    eax,@obj3:keyboard                                           ; fixup: num: 11694, src obj: 1, src ofs: 0x4a3f7, dst obj: 3, dst ofs: 0x25900
   4a3fb:	89 ef                	mov    edi,ebp
   4a3fd:	e8 ee e0 fe ff       	call   install_ISR
   4a402:	29 c9                	sub    ecx,ecx
   4a404:	49                   	dec    ecx
   4a405:	31 c0                	xor    eax,eax
   4a407:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
   4a409:	f7 d1                	not    ecx
   4a40b:	49                   	dec    ecx
   4a40c:	85 c9                	test   ecx,ecx
   4a40e:	74 04                	je     text_entry_branch_31
   4a410:	89 e8                	mov    eax,ebp
   4a412:	eb 0d                	jmp    text_entry_branch_33
text_entry_branch_31:
   4a414:	85 ed                	test   ebp,ebp
   4a416:	74 07                	je     text_entry_branch_32
   4a418:	89 e8                	mov    eax,ebp
   4a41a:	e8 c9 6f 02 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
text_entry_branch_32:
   4a41f:	31 c0                	xor    eax,eax
text_entry_branch_33:
   4a421:	83 c4 20             	add    esp,0x20
   4a424:	5d                   	pop    ebp
   4a425:	5f                   	pop    edi
   4a426:	5e                   	pop    esi
   4a427:	c3                   	ret    
   4a428:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   4a42e:	8b d2                	mov    edx,edx

;-------------------------------------------------
;  Function 'strstr_rep'                         -
;-------------------------------------------------
strstr_rep:
   4a430:	51                   	push   ecx
   4a431:	56                   	push   esi
   4a432:	57                   	push   edi
   4a433:	55                   	push   ebp
   4a434:	81 ec 14 04 00 00    	sub    esp,0x414
   4a43a:	89 84 24 0c 04 00 00 	mov    DWORD PTR [esp+0x40c],eax
   4a441:	89 94 24 10 04 00 00 	mov    DWORD PTR [esp+0x410],edx
   4a448:	89 9c 24 08 04 00 00 	mov    DWORD PTR [esp+0x408],ebx
   4a44f:	89 d7                	mov    edi,edx
   4a451:	89 84 24 04 04 00 00 	mov    DWORD PTR [esp+0x404],eax
   4a458:	29 c9                	sub    ecx,ecx
   4a45a:	49                   	dec    ecx
   4a45b:	31 c0                	xor    eax,eax
   4a45d:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
   4a45f:	f7 d1                	not    ecx
   4a461:	49                   	dec    ecx
   4a462:	8b bc 24 0c 04 00 00 	mov    edi,DWORD PTR [esp+0x40c]
   4a469:	be ff ff ff ff       	mov    esi,0xffffffff
   4a46e:	89 8c 24 00 04 00 00 	mov    DWORD PTR [esp+0x400],ecx
   4a475:	8a 17                	mov    dl,BYTE PTR [edi]
   4a477:	31 c9                	xor    ecx,ecx
   4a479:	84 d2                	test   dl,dl
   4a47b:	75 0b                	jne    strstr_rep_branch_2
   4a47d:	eb 3d                	jmp    strstr_rep_branch_5
strstr_rep_branch_1:
   4a47f:	8a 77 01             	mov    dh,BYTE PTR [edi+0x1]
   4a482:	47                   	inc    edi
   4a483:	41                   	inc    ecx
   4a484:	84 f6                	test   dh,dh
   4a486:	74 34                	je     strstr_rep_branch_5
strstr_rep_branch_2:
   4a488:	83 fe ff             	cmp    esi,0xffffffff
   4a48b:	75 2f                	jne    strstr_rep_branch_5
   4a48d:	8b ac 24 0c 04 00 00 	mov    ebp,DWORD PTR [esp+0x40c]
   4a494:	01 cd                	add    ebp,ecx
   4a496:	8b 84 24 10 04 00 00 	mov    eax,DWORD PTR [esp+0x410]
   4a49d:	8a 5d 00             	mov    bl,BYTE PTR [ebp+0x0]
   4a4a0:	8a 38                	mov    bh,BYTE PTR [eax]
   4a4a2:	89 ea                	mov    edx,ebp
   4a4a4:	eb 08                	jmp    strstr_rep_branch_4
strstr_rep_branch_3:
   4a4a6:	8a 5a 01             	mov    bl,BYTE PTR [edx+0x1]
   4a4a9:	42                   	inc    edx
   4a4aa:	8a 78 01             	mov    bh,BYTE PTR [eax+0x1]
   4a4ad:	40                   	inc    eax
strstr_rep_branch_4:
   4a4ae:	38 fb                	cmp    bl,bh
   4a4b0:	75 cd                	jne    strstr_rep_branch_1
   4a4b2:	80 78 01 00          	cmp    BYTE PTR [eax+0x1],0x0
   4a4b6:	75 ee                	jne    strstr_rep_branch_3
   4a4b8:	89 ce                	mov    esi,ecx
   4a4ba:	eb ea                	jmp    strstr_rep_branch_3
strstr_rep_branch_5:
   4a4bc:	83 fe ff             	cmp    esi,0xffffffff
   4a4bf:	0f 84 75 00 00 00    	je     strstr_rep_branch_14
   4a4c5:	31 c0                	xor    eax,eax
   4a4c7:	85 f6                	test   esi,esi
   4a4c9:	7e 13                	jle    strstr_rep_branch_7
   4a4cb:	8b 94 24 0c 04 00 00 	mov    edx,DWORD PTR [esp+0x40c]
strstr_rep_branch_6:
   4a4d2:	40                   	inc    eax
   4a4d3:	8a 1a                	mov    bl,BYTE PTR [edx]
   4a4d5:	42                   	inc    edx
   4a4d6:	88 5c 04 ff          	mov    BYTE PTR [esp+eax*1-0x1],bl
   4a4da:	39 f0                	cmp    eax,esi
   4a4dc:	7c f4                	jl     strstr_rep_branch_6
strstr_rep_branch_7:
   4a4de:	8b 94 24 08 04 00 00 	mov    edx,DWORD PTR [esp+0x408]
   4a4e5:	80 3a 00             	cmp    BYTE PTR [edx],0x0
   4a4e8:	74 0d                	je     strstr_rep_branch_9
strstr_rep_branch_8:
   4a4ea:	8a 1a                	mov    bl,BYTE PTR [edx]
   4a4ec:	42                   	inc    edx
   4a4ed:	88 1c 04             	mov    BYTE PTR [esp+eax*1],bl
   4a4f0:	8a 3a                	mov    bh,BYTE PTR [edx]
   4a4f2:	40                   	inc    eax
   4a4f3:	84 ff                	test   bh,bh
   4a4f5:	75 f3                	jne    strstr_rep_branch_8
strstr_rep_branch_9:
   4a4f7:	8b 94 24 00 04 00 00 	mov    edx,DWORD PTR [esp+0x400]
   4a4fe:	8b 8c 24 0c 04 00 00 	mov    ecx,DWORD PTR [esp+0x40c]
   4a505:	01 d6                	add    esi,edx
   4a507:	01 f1                	add    ecx,esi
   4a509:	8a 19                	mov    bl,BYTE PTR [ecx]
   4a50b:	89 ca                	mov    edx,ecx
   4a50d:	84 db                	test   bl,bl
   4a50f:	74 0e                	je     strstr_rep_branch_11
strstr_rep_branch_10:
   4a511:	8a 1a                	mov    bl,BYTE PTR [edx]
   4a513:	42                   	inc    edx
   4a514:	88 1c 04             	mov    BYTE PTR [esp+eax*1],bl
   4a517:	46                   	inc    esi
   4a518:	8a 3a                	mov    bh,BYTE PTR [edx]
   4a51a:	40                   	inc    eax
   4a51b:	84 ff                	test   bh,bh
   4a51d:	75 f2                	jne    strstr_rep_branch_10
strstr_rep_branch_11:
   4a51f:	30 c9                	xor    cl,cl
   4a521:	31 d2                	xor    edx,edx
   4a523:	88 0c 04             	mov    BYTE PTR [esp+eax*1],cl
   4a526:	8b 84 24 0c 04 00 00 	mov    eax,DWORD PTR [esp+0x40c]
   4a52d:	eb 02                	jmp    strstr_rep_branch_13
strstr_rep_branch_12:
   4a52f:	40                   	inc    eax
   4a530:	42                   	inc    edx
strstr_rep_branch_13:
   4a531:	8a 1c 14             	mov    bl,BYTE PTR [esp+edx*1]
   4a534:	88 18                	mov    BYTE PTR [eax],bl
   4a536:	84 db                	test   bl,bl
   4a538:	75 f5                	jne    strstr_rep_branch_12
strstr_rep_branch_14:
   4a53a:	8b 84 24 04 04 00 00 	mov    eax,DWORD PTR [esp+0x404]
   4a541:	81 c4 14 04 00 00    	add    esp,0x414
   4a547:	5d                   	pop    ebp
   4a548:	5f                   	pop    edi
   4a549:	5e                   	pop    esi
   4a54a:	59                   	pop    ecx
   4a54b:	c3                   	ret    
;-------------------------------------------------
;  Bad code 82 (zero after ret):                 -
;-------------------------------------------------
;  4a54a:	59                   	pop    ecx
;  4a54b:	c3                   	ret    
;  4a54c:	00 00                	add    BYTE PTR [eax],al
;  4a54e:	00 00                	add    BYTE PTR [eax],al
;-------------------------------------------------
;  Padding data (4 bytes):                       -
;-------------------------------------------------
   4a54c:	00 00 00 00          	db     4 dup(0x00)
;-------------------------------------------------
;  End of bad code 82                            -
;-------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 82 (D:\SOURCE\textbm.cpp)                                     -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 82: D:\SOURCE\textbm.cpp                                             -
;                                                                              -
;-------------------------------------------------------------------------------
textbm_cpp_variable_1:
    ba90:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
textbm_cpp_variable_2:
    baa8:	0a                   	db     0x0a                                                         ; dec:  10, chr: '\n'
    baa9:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
textbm_cpp_variable_3:                                                                              ; access size: BYTE
    baaa:	0a                   	db     0x0a                                                         ; dec:  10, chr: '\n'
    baab:	20                   	db     0x20                                                         ; dec:  32, chr: ' '
    baac:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
textbm_cpp_variable_4:
    baad:	43 6f 75 6c 64 20 6e 6f 74 20 61 6c 6c 6f 63 61 74 65 20 6d 65 6d 6f 72 79 2e 00 	db     "Could not allocate memory.",0x00
textbm_cpp_variable_5:
    bac8:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
textbm_cpp_variable_6:
    bac9:	6b 65 79 3d 25 64 00 	db     "key=%d",0x00
textbm_cpp_variable_7:
    bad0:	7e                   	db     0x7e                                                         ; dec: 126, chr: '~'
    bad1:	00 00 00             	db     3 dup(0x00)                                                  ; dec:   0, chr: '\0'

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 82 (D:\SOURCE\textbm.cpp)                                     -
;                                                                              -
;-------------------------------------------------------------------------------