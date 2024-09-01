;-------------------------------------------------------------------------------
;                                                                              -
;  Module 14: D:\SOURCE\graphics.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function 'graphics_cpp_'                      -
;-------------------------------------------------
graphics_cpp_:
   12690:	b8 fc 13 00 00       	mov    eax,@obj3:graphics_cpp_variable_1                            ; fixup: num: 2034, src obj: 1, src ofs: 0x12691, dst obj: 3, dst ofs: 0x13fc
   12695:	e9 d5 e9 05 00       	jmp    puts_
   1269a:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'set_pal_gamma'                      -
;-------------------------------------------------
set_pal_gamma:
   126a0:	53                   	push   ebx
   126a1:	51                   	push   ecx
   126a2:	83 3d 54 7e 01 00 00 	cmp    DWORD PTR ds:@obj3:gamma_correction,0x0                      ; fixup: num: 2033, src obj: 1, src ofs: 0x126a4, dst obj: 3, dst ofs: 0x17e54
   126a9:	7e 19                	jle    set_pal_gamma_branch_1
   126ab:	db 05 54 7e 01 00    	fild   DWORD PTR ds:@obj3:gamma_correction                          ; fixup: num: 2032, src obj: 1, src ofs: 0x126ad, dst obj: 3, dst ofs: 0x17e54
   126b1:	dc 0d 09 14 00 00    	fmul   QWORD PTR ds:@obj3:graphics_cpp_variable_2                   ; fixup: num: 2031, src obj: 1, src ofs: 0x126b3, dst obj: 3, dst ofs: 0x1409
   126b7:	d9 e8                	fld1   
   126b9:	de c1                	faddp  st(1),st
   126bb:	dd 1d b4 0f 01 00    	fstp   QWORD PTR ds:@obj3:pal_gamma                                 ; fixup: num: 2030, src obj: 1, src ofs: 0x126bd, dst obj: 3, dst ofs: 0x10fb4
   126c1:	59                   	pop    ecx
   126c2:	5b                   	pop    ebx
   126c3:	c3                   	ret    
set_pal_gamma_branch_1:
   126c4:	31 db                	xor    ebx,ebx
   126c6:	b9 00 00 f0 3f       	mov    ecx,0x3ff00000
   126cb:	89 1d b4 0f 01 00    	mov    DWORD PTR ds:@obj3:pal_gamma,ebx                             ; fixup: num: 2029, src obj: 1, src ofs: 0x126cd, dst obj: 3, dst ofs: 0x10fb4
   126d1:	89 0d b8 0f 01 00    	mov    DWORD PTR ds:@obj3:pal_gamma_variable_1,ecx                  ; fixup: num: 2028, src obj: 1, src ofs: 0x126d3, dst obj: 3, dst ofs: 0x10fb8
   126d7:	59                   	pop    ecx
   126d8:	5b                   	pop    ebx
   126d9:	c3                   	ret    
   126da:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'setvgapalette'                      -
;-------------------------------------------------
setvgapalette:
   126e0:	53                   	push   ebx
   126e1:	51                   	push   ecx
   126e2:	56                   	push   esi
   126e3:	57                   	push   edi
   126e4:	89 c3                	mov    ebx,eax
   126e6:	89 d6                	mov    esi,edx
   126e8:	b0 ff                	mov    al,0xff
   126ea:	ba c6 03 00 00       	mov    edx,0x3c6
   126ef:	ee                   	out    dx,al
   126f0:	ba c8 03 00 00       	mov    edx,0x3c8
   126f5:	30 c0                	xor    al,al
   126f7:	ee                   	out    dx,al
   126f8:	ba c9 03 00 00       	mov    edx,0x3c9
   126fd:	ee                   	out    dx,al
   126fe:	ee                   	out    dx,al
   126ff:	ee                   	out    dx,al
   12700:	85 db                	test   ebx,ebx
   12702:	75 27                	jne    setvgapalette_branch_2
   12704:	bb 01 00 00 00       	mov    ebx,0x1
   12709:	66 39 de             	cmp    si,bx
   1270c:	7e 59                	jle    setvgapalette_branch_4
   1270e:	bf c8 03 00 00       	mov    edi,0x3c8
   12713:	89 d1                	mov    ecx,edx
   12715:	30 e4                	xor    ah,ah
setvgapalette_branch_1:
   12717:	88 d8                	mov    al,bl
   12719:	89 fa                	mov    edx,edi
   1271b:	ee                   	out    dx,al
   1271c:	88 e0                	mov    al,ah
   1271e:	89 ca                	mov    edx,ecx
   12720:	ee                   	out    dx,al
   12721:	ee                   	out    dx,al
   12722:	43                   	inc    ebx
   12723:	ee                   	out    dx,al
   12724:	66 39 f3             	cmp    bx,si
   12727:	7d 3e                	jge    setvgapalette_branch_4
   12729:	eb ec                	jmp    setvgapalette_branch_1
setvgapalette_branch_2:
   1272b:	b9 01 00 00 00       	mov    ecx,0x1
   12730:	83 c3 03             	add    ebx,0x3
   12733:	66 39 ce             	cmp    si,cx
   12736:	7e 2f                	jle    setvgapalette_branch_4
   12738:	89 d7                	mov    edi,edx
setvgapalette_branch_3:
   1273a:	ba c8 03 00 00       	mov    edx,0x3c8
   1273f:	88 c8                	mov    al,cl
   12741:	ee                   	out    dx,al
   12742:	31 c0                	xor    eax,eax
   12744:	8a 03                	mov    al,BYTE PTR [ebx]
   12746:	89 fa                	mov    edx,edi
   12748:	c1 f8 02             	sar    eax,0x2
   1274b:	ee                   	out    dx,al
   1274c:	31 c0                	xor    eax,eax
   1274e:	8a 43 01             	mov    al,BYTE PTR [ebx+0x1]
   12751:	83 c3 02             	add    ebx,0x2
   12754:	c1 f8 02             	sar    eax,0x2
   12757:	ee                   	out    dx,al
   12758:	31 c0                	xor    eax,eax
   1275a:	8a 03                	mov    al,BYTE PTR [ebx]
   1275c:	41                   	inc    ecx
   1275d:	c1 f8 02             	sar    eax,0x2
   12760:	43                   	inc    ebx
   12761:	ee                   	out    dx,al
   12762:	66 39 f1             	cmp    cx,si
   12765:	7c d3                	jl     setvgapalette_branch_3
setvgapalette_branch_4:
   12767:	5f                   	pop    edi
   12768:	5e                   	pop    esi
   12769:	59                   	pop    ecx
   1276a:	5b                   	pop    ebx
   1276b:	c3                   	ret    
   1276c:	8d 44 20 00          	lea    eax,[eax+eiz*1+0x0]

;-------------------------------------------------
;  Function 'setvgapalette_mod_14'               -
;-------------------------------------------------
setvgapalette_mod_14:
   12770:	53                   	push   ebx
   12771:	51                   	push   ecx
   12772:	56                   	push   esi
   12773:	57                   	push   edi
   12774:	55                   	push   ebp
   12775:	83 ec 14             	sub    esp,0x14
   12778:	89 c1                	mov    ecx,eax
   1277a:	89 d6                	mov    esi,edx
   1277c:	85 c0                	test   eax,eax
   1277e:	0f 84 f0 00 00 00    	je     setvgapalette_mod_14_branch_8
   12784:	b0 ff                	mov    al,0xff
   12786:	ba c6 03 00 00       	mov    edx,0x3c6
   1278b:	ee                   	out    dx,al
   1278c:	31 db                	xor    ebx,ebx
   1278e:	bf c9 03 00 00       	mov    edi,0x3c9
   12793:	eb 0b                	jmp    setvgapalette_mod_14_branch_3
setvgapalette_mod_14_branch_1:
   12795:	89 fa                	mov    edx,edi
   12797:	30 c0                	xor    al,al
   12799:	ee                   	out    dx,al
   1279a:	ee                   	out    dx,al
   1279b:	ee                   	out    dx,al
setvgapalette_mod_14_branch_2:
   1279c:	83 c1 03             	add    ecx,0x3
   1279f:	43                   	inc    ebx
setvgapalette_mod_14_branch_3:
   127a0:	0f bf c6             	movsx  eax,si
   127a3:	39 c3                	cmp    ebx,eax
   127a5:	0f 8d c9 00 00 00    	jge    setvgapalette_mod_14_branch_8
   127ab:	ba c8 03 00 00       	mov    edx,0x3c8
   127b0:	88 d8                	mov    al,bl
   127b2:	ee                   	out    dx,al
   127b3:	85 db                	test   ebx,ebx
   127b5:	74 de                	je     setvgapalette_mod_14_branch_1
   127b7:	d9 44 24 2c          	fld    DWORD PTR [esp+0x2c]
   127bb:	dd 1c 24             	fstp   QWORD PTR [esp]
   127be:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
   127c2:	8b 2c 24             	mov    ebp,DWORD PTR [esp]
   127c5:	f7 c2 ff ff ff 7f    	test   edx,0x7fffffff
   127cb:	75 04                	jne    setvgapalette_mod_14_branch_4
   127cd:	85 ed                	test   ebp,ebp
   127cf:	74 c4                	je     setvgapalette_mod_14_branch_1
setvgapalette_mod_14_branch_4:
   127d1:	8a 01                	mov    al,BYTE PTR [ecx]
   127d3:	8a 61 01             	mov    ah,BYTE PTR [ecx+0x1]
   127d6:	88 64 24 10          	mov    BYTE PTR [esp+0x10],ah
   127da:	8a 61 02             	mov    ah,BYTE PTR [ecx+0x2]
   127dd:	88 64 24 0c          	mov    BYTE PTR [esp+0xc],ah
   127e1:	25 ff 00 00 00       	and    eax,0xff
   127e6:	c1 f8 02             	sar    eax,0x2
   127e9:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
   127ed:	db 44 24 08          	fild   DWORD PTR [esp+0x8]
   127f1:	dc 0c 24             	fmul   QWORD PTR [esp]
   127f4:	e8 4f 35 06 00       	call   __CHP
   127f9:	db 5c 24 08          	fistp  DWORD PTR [esp+0x8]
   127fd:	31 d2                	xor    edx,edx
   127ff:	8a 44 24 08          	mov    al,BYTE PTR [esp+0x8]
   12803:	88 c2                	mov    dl,al
   12805:	83 fa 3f             	cmp    edx,0x3f
   12808:	7e 02                	jle    setvgapalette_mod_14_branch_5
   1280a:	b0 3f                	mov    al,0x3f
setvgapalette_mod_14_branch_5:
   1280c:	89 fa                	mov    edx,edi
   1280e:	ee                   	out    dx,al
   1280f:	31 c0                	xor    eax,eax
   12811:	8a 44 24 10          	mov    al,BYTE PTR [esp+0x10]
   12815:	c1 f8 02             	sar    eax,0x2
   12818:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
   1281c:	db 44 24 08          	fild   DWORD PTR [esp+0x8]
   12820:	d8 4c 24 2c          	fmul   DWORD PTR [esp+0x2c]
   12824:	e8 1f 35 06 00       	call   __CHP
   12829:	db 5c 24 08          	fistp  DWORD PTR [esp+0x8]
   1282d:	31 fa                	xor    edx,edi
   1282f:	8a 44 24 08          	mov    al,BYTE PTR [esp+0x8]
   12833:	88 c2                	mov    dl,al
   12835:	83 fa 3f             	cmp    edx,0x3f
   12838:	7e 02                	jle    setvgapalette_mod_14_branch_6
   1283a:	b0 3f                	mov    al,0x3f
setvgapalette_mod_14_branch_6:
   1283c:	89 fa                	mov    edx,edi
   1283e:	ee                   	out    dx,al
   1283f:	31 c0                	xor    eax,eax
   12841:	8a 44 24 0c          	mov    al,BYTE PTR [esp+0xc]
   12845:	c1 f8 02             	sar    eax,0x2
   12848:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
   1284c:	db 44 24 08          	fild   DWORD PTR [esp+0x8]
   12850:	d8 4c 24 2c          	fmul   DWORD PTR [esp+0x2c]
   12854:	e8 ef 34 06 00       	call   __CHP
   12859:	db 5c 24 08          	fistp  DWORD PTR [esp+0x8]
   1285d:	31 fa                	xor    edx,edi
   1285f:	8a 44 24 08          	mov    al,BYTE PTR [esp+0x8]
   12863:	88 c2                	mov    dl,al
   12865:	83 fa 3f             	cmp    edx,0x3f
   12868:	7e 02                	jle    setvgapalette_mod_14_branch_7
   1286a:	b0 3f                	mov    al,0x3f
setvgapalette_mod_14_branch_7:
   1286c:	89 fa                	mov    edx,edi
   1286e:	ee                   	out    dx,al
   1286f:	e9 28 ff ff ff       	jmp    setvgapalette_mod_14_branch_2
setvgapalette_mod_14_branch_8:
   12874:	83 c4 14             	add    esp,0x14
   12877:	5d                   	pop    ebp
   12878:	5f                   	pop    edi
   12879:	5e                   	pop    esi
   1287a:	59                   	pop    ecx
   1287b:	5b                   	pop    ebx
   1287c:	c2 04 00             	ret    0x4
   1287f:	90                   	nop

;-------------------------------------------------
;  Function 'build_bm'                           -
;-------------------------------------------------
build_bm:
   12880:	51                   	push   ecx
   12881:	56                   	push   esi
   12882:	57                   	push   edi
   12883:	55                   	push   ebp
   12884:	83 ec 08             	sub    esp,0x8
   12887:	89 c7                	mov    edi,eax
   12889:	89 d6                	mov    esi,edx
   1288b:	88 5c 24 04          	mov    BYTE PTR [esp+0x4],bl
   1288f:	b8 0c 00 00 00       	mov    eax,0xc
   12894:	e8 7f f6 05 00       	call   W?$nwn(ui)pnv
   12899:	85 c0                	test   eax,eax
   1289b:	0f 84 95 00 00 00    	je     build_bm_branch_5
   128a1:	89 c5                	mov    ebp,eax
   128a3:	89 c2                	mov    edx,eax
   128a5:	89 f9                	mov    ecx,edi
   128a7:	89 34 24             	mov    DWORD PTR [esp],esi
   128aa:	8b 18                	mov    ebx,DWORD PTR [eax]
   128ac:	c7 40 08 00 00 00 00 	mov    DWORD PTR [eax+0x8],0x0
   128b3:	39 df                	cmp    edi,ebx
   128b5:	75 09                	jne    build_bm_branch_1
   128b7:	3b 70 04             	cmp    esi,DWORD PTR [eax+0x4]
   128ba:	0f 84 74 00 00 00    	je     build_bm_branch_4
build_bm_branch_1:
   128c0:	89 0a                	mov    DWORD PTR [edx],ecx
   128c2:	8b 04 24             	mov    eax,DWORD PTR [esp]
   128c5:	8b 0a                	mov    ecx,DWORD PTR [edx]
   128c7:	89 42 04             	mov    DWORD PTR [edx+0x4],eax
   128ca:	85 c9                	test   ecx,ecx
   128cc:	75 15                	jne    build_bm_branch_2
   128ce:	85 c0                	test   eax,eax
   128d0:	75 11                	jne    build_bm_branch_2
   128d2:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
   128d5:	85 c0                	test   eax,eax
   128d7:	74 5b                	je     build_bm_branch_4
   128d9:	e8 0a eb 05 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   128de:	89 4a 08             	mov    DWORD PTR [edx+0x8],ecx
   128e1:	eb 51                	jmp    build_bm_branch_4
build_bm_branch_2:
   128e3:	8b 5a 08             	mov    ebx,DWORD PTR [edx+0x8]
   128e6:	85 db                	test   ebx,ebx
   128e8:	74 07                	je     build_bm_branch_3
   128ea:	89 d8                	mov    eax,ebx
   128ec:	e8 f7 ea 05 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
build_bm_branch_3:
   128f1:	8b 02                	mov    eax,DWORD PTR [edx]
   128f3:	0f af 42 04          	imul   eax,DWORD PTR [edx+0x4]
   128f7:	c7 42 08 00 00 00 00 	mov    DWORD PTR [edx+0x8],0x0
   128fe:	e8 90 eb 05 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   12903:	89 42 08             	mov    DWORD PTR [edx+0x8],eax
   12906:	85 c0                	test   eax,eax
   12908:	75 2a                	jne    build_bm_branch_4
   1290a:	8b 1a                	mov    ebx,DWORD PTR [edx]
   1290c:	53                   	push   ebx
   1290d:	8b 4a 04             	mov    ecx,DWORD PTR [edx+0x4]
   12910:	51                   	push   ecx
   12911:	68 11 14 00 00       	push   @obj3:graphics_cpp_variable_3                                ; fixup: num: 2038, src obj: 1, src ofs: 0x12912, dst obj: 3, dst ofs: 0x1411
   12916:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 2037, src obj: 1, src ofs: 0x12917, dst obj: 3, dst ofs: 0x237fc
   1291b:	ba 96 00 00 00       	mov    edx,0x96
   12920:	e8 bc e2 05 00       	call   sprintf_
   12925:	83 c4 10             	add    esp,0x10
   12928:	bb fc 37 02 00       	mov    ebx,@obj3:log_buffer                                         ; fixup: num: 2036, src obj: 1, src ofs: 0x12929, dst obj: 3, dst ofs: 0x237fc
   1292d:	31 c0                	xor    eax,eax
   1292f:	e8 fc 56 02 00       	call   _error_report
build_bm_branch_4:
   12934:	89 e8                	mov    eax,ebp
build_bm_branch_5:
   12936:	89 c1                	mov    ecx,eax
   12938:	85 c0                	test   eax,eax
   1293a:	75 0f                	jne    build_bm_branch_6
   1293c:	bb 37 14 00 00       	mov    ebx,@obj3:graphics_cpp_variable_4                            ; fixup: num: 2035, src obj: 1, src ofs: 0x1293d, dst obj: 3, dst ofs: 0x1437
   12941:	ba ab 00 00 00       	mov    edx,0xab
   12946:	e8 e5 56 02 00       	call   _error_report
build_bm_branch_6:
   1294b:	83 79 08 00          	cmp    DWORD PTR [ecx+0x8],0x0
   1294f:	75 25                	jne    build_bm_branch_7
   12951:	56                   	push   esi
   12952:	57                   	push   edi
   12953:	68 5d 14 00 00       	push   @obj3:graphics_cpp_variable_5                                ; fixup: num: 2045, src obj: 1, src ofs: 0x12954, dst obj: 3, dst ofs: 0x145d
   12958:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 2044, src obj: 1, src ofs: 0x12959, dst obj: 3, dst ofs: 0x237fc
   1295d:	bb fc 37 02 00       	mov    ebx,@obj3:log_buffer                                         ; fixup: num: 2043, src obj: 1, src ofs: 0x1295e, dst obj: 3, dst ofs: 0x237fc
   12962:	e8 7a e2 05 00       	call   sprintf_
   12967:	83 c4 10             	add    esp,0x10
   1296a:	ba af 00 00 00       	mov    edx,0xaf
   1296f:	31 c0                	xor    eax,eax
   12971:	e8 ba 56 02 00       	call   _error_report
build_bm_branch_7:
   12976:	80 7c 24 04 00       	cmp    BYTE PTR [esp+0x4],0x0
   1297b:	74 12                	je     build_bm_branch_8
   1297d:	8b 01                	mov    eax,DWORD PTR [ecx]
   1297f:	8b 59 04             	mov    ebx,DWORD PTR [ecx+0x4]
   12982:	0f af d8             	imul   ebx,eax
   12985:	31 d2                	xor    edx,edx
   12987:	8b 41 08             	mov    eax,DWORD PTR [ecx+0x8]
   1298a:	e8 41 ea 05 00       	call   memset_
build_bm_branch_8:
   1298f:	89 c8                	mov    eax,ecx
   12991:	83 c4 08             	add    esp,0x8
   12994:	5d                   	pop    ebp
   12995:	5f                   	pop    edi
   12996:	5e                   	pop    esi
   12997:	59                   	pop    ecx
   12998:	c3                   	ret    
   12999:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   1299f:	90                   	nop

;-------------------------------------------------
;  Function 'build_bm_alloc'                     -
;-------------------------------------------------
build_bm_alloc:
   129a0:	51                   	push   ecx
   129a1:	56                   	push   esi
   129a2:	57                   	push   edi
   129a3:	83 ec 04             	sub    esp,0x4
   129a6:	89 c6                	mov    esi,eax
   129a8:	89 d7                	mov    edi,edx
   129aa:	88 1c 24             	mov    BYTE PTR [esp],bl
   129ad:	b8 0c 00 00 00       	mov    eax,0xc
   129b2:	e8 dc ea 05 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   129b7:	89 c1                	mov    ecx,eax
   129b9:	85 c0                	test   eax,eax
   129bb:	75 0f                	jne    build_bm_alloc_branch_1
   129bd:	bb 88 14 00 00       	mov    ebx,@obj3:graphics_cpp_variable_6                            ; fixup: num: 2042, src obj: 1, src ofs: 0x129be, dst obj: 3, dst ofs: 0x1488
   129c2:	ba be 00 00 00       	mov    edx,0xbe
   129c7:	e8 64 56 02 00       	call   _error_report
build_bm_alloc_branch_1:
   129cc:	89 f0                	mov    eax,esi
   129ce:	0f af c7             	imul   eax,edi
   129d1:	89 79 04             	mov    DWORD PTR [ecx+0x4],edi
   129d4:	89 31                	mov    DWORD PTR [ecx],esi
   129d6:	e8 b8 ea 05 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   129db:	89 41 08             	mov    DWORD PTR [ecx+0x8],eax
   129de:	85 c0                	test   eax,eax
   129e0:	75 25                	jne    build_bm_alloc_branch_2
   129e2:	57                   	push   edi
   129e3:	56                   	push   esi
   129e4:	68 a0 14 00 00       	push   @obj3:graphics_cpp_variable_7                                ; fixup: num: 2041, src obj: 1, src ofs: 0x129e5, dst obj: 3, dst ofs: 0x14a0
   129e9:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 2040, src obj: 1, src ofs: 0x129ea, dst obj: 3, dst ofs: 0x237fc
   129ee:	bb fc 37 02 00       	mov    ebx,@obj3:log_buffer                                         ; fixup: num: 2039, src obj: 1, src ofs: 0x129ef, dst obj: 3, dst ofs: 0x237fc
   129f3:	e8 e9 e1 05 00       	call   sprintf_
   129f8:	83 c4 10             	add    esp,0x10
   129fb:	ba c5 00 00 00       	mov    edx,0xc5
   12a00:	31 c0                	xor    eax,eax
   12a02:	e8 29 56 02 00       	call   _error_report
build_bm_alloc_branch_2:
   12a07:	80 3c 24 00          	cmp    BYTE PTR [esp],0x0
   12a0b:	74 12                	je     build_bm_alloc_branch_3
   12a0d:	8b 31                	mov    esi,DWORD PTR [ecx]
   12a0f:	8b 59 04             	mov    ebx,DWORD PTR [ecx+0x4]
   12a12:	0f af de             	imul   ebx,esi
   12a15:	8b 41 08             	mov    eax,DWORD PTR [ecx+0x8]
   12a18:	31 d2                	xor    edx,edx
   12a1a:	e8 b1 e9 05 00       	call   memset_
build_bm_alloc_branch_3:
   12a1f:	89 c8                	mov    eax,ecx
   12a21:	83 c4 04             	add    esp,0x4
   12a24:	5f                   	pop    edi
   12a25:	5e                   	pop    esi
   12a26:	59                   	pop    ecx
   12a27:	c3                   	ret    
   12a28:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   12a2e:	8b d2                	mov    edx,edx

;-------------------------------------------------
;  Function 'gr_VESA_get_bm'                     -
;-------------------------------------------------
gr_VESA_get_bm:
   12a30:	56                   	push   esi
   12a31:	57                   	push   edi
   12a32:	55                   	push   ebp
   12a33:	83 ec 34             	sub    esp,0x34
   12a36:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
   12a3a:	89 54 24 0c          	mov    DWORD PTR [esp+0xc],edx
   12a3e:	89 de                	mov    esi,ebx
   12a40:	b8 0c 00 00 00       	mov    eax,0xc
   12a45:	e8 ce f4 05 00       	call   W?$nwn(ui)pnv
   12a4a:	85 c0                	test   eax,eax
   12a4c:	0f 84 a3 00 00 00    	je     gr_VESA_get_bm_branch_5
   12a52:	8b 7c 24 10          	mov    edi,DWORD PTR [esp+0x10]
   12a56:	89 04 24             	mov    DWORD PTR [esp],eax
   12a59:	c7 40 08 00 00 00 00 	mov    DWORD PTR [eax+0x8],0x0
   12a60:	29 d1                	sub    ecx,edx
   12a62:	8b 28                	mov    ebp,DWORD PTR [eax]
   12a64:	41                   	inc    ecx
   12a65:	29 fb                	sub    ebx,edi
   12a67:	89 c2                	mov    edx,eax
   12a69:	43                   	inc    ebx
   12a6a:	89 cf                	mov    edi,ecx
   12a6c:	89 5c 24 04          	mov    DWORD PTR [esp+0x4],ebx
   12a70:	39 eb                	cmp    ebx,ebp
   12a72:	75 09                	jne    gr_VESA_get_bm_branch_1
   12a74:	3b 48 04             	cmp    ecx,DWORD PTR [eax+0x4]
   12a77:	0f 84 75 00 00 00    	je     gr_VESA_get_bm_branch_4
gr_VESA_get_bm_branch_1:
   12a7d:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
   12a81:	89 02                	mov    DWORD PTR [edx],eax
   12a83:	8b 0a                	mov    ecx,DWORD PTR [edx]
   12a85:	89 7a 04             	mov    DWORD PTR [edx+0x4],edi
   12a88:	85 c9                	test   ecx,ecx
   12a8a:	75 15                	jne    gr_VESA_get_bm_branch_2
   12a8c:	85 ff                	test   edi,edi
   12a8e:	75 11                	jne    gr_VESA_get_bm_branch_2
   12a90:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
   12a93:	85 c0                	test   eax,eax
   12a95:	74 5b                	je     gr_VESA_get_bm_branch_4
   12a97:	e8 4c e9 05 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   12a9c:	89 4a 08             	mov    DWORD PTR [edx+0x8],ecx
   12a9f:	eb 51                	jmp    gr_VESA_get_bm_branch_4
gr_VESA_get_bm_branch_2:
   12aa1:	8b 6a 08             	mov    ebp,DWORD PTR [edx+0x8]
   12aa4:	85 ed                	test   ebp,ebp
   12aa6:	74 07                	je     gr_VESA_get_bm_branch_3
   12aa8:	89 e8                	mov    eax,ebp
   12aaa:	e8 39 e9 05 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
gr_VESA_get_bm_branch_3:
   12aaf:	8b 02                	mov    eax,DWORD PTR [edx]
   12ab1:	0f af 42 04          	imul   eax,DWORD PTR [edx+0x4]
   12ab5:	c7 42 08 00 00 00 00 	mov    DWORD PTR [edx+0x8],0x0
   12abc:	e8 d2 e9 05 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   12ac1:	89 42 08             	mov    DWORD PTR [edx+0x8],eax
   12ac4:	85 c0                	test   eax,eax
   12ac6:	75 2a                	jne    gr_VESA_get_bm_branch_4
   12ac8:	8b 3a                	mov    edi,DWORD PTR [edx]
   12aca:	57                   	push   edi
   12acb:	8b 6a 04             	mov    ebp,DWORD PTR [edx+0x4]
   12ace:	55                   	push   ebp
   12acf:	68 11 14 00 00       	push   @obj3:graphics_cpp_variable_3                                ; fixup: num: 2049, src obj: 1, src ofs: 0x12ad0, dst obj: 3, dst ofs: 0x1411
   12ad4:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 2048, src obj: 1, src ofs: 0x12ad5, dst obj: 3, dst ofs: 0x237fc
   12ad9:	bb fc 37 02 00       	mov    ebx,@obj3:log_buffer                                         ; fixup: num: 2047, src obj: 1, src ofs: 0x12ada, dst obj: 3, dst ofs: 0x237fc
   12ade:	e8 fe e0 05 00       	call   sprintf_
   12ae3:	83 c4 10             	add    esp,0x10
   12ae6:	ba 96 00 00 00       	mov    edx,0x96
   12aeb:	31 c0                	xor    eax,eax
   12aed:	e8 3e 55 02 00       	call   _error_report
gr_VESA_get_bm_branch_4:
   12af2:	8b 04 24             	mov    eax,DWORD PTR [esp]
gr_VESA_get_bm_branch_5:
   12af5:	89 44 24 28          	mov    DWORD PTR [esp+0x28],eax
   12af9:	85 c0                	test   eax,eax
   12afb:	75 0f                	jne    gr_VESA_get_bm_branch_6
   12afd:	bb d1 14 00 00       	mov    ebx,@obj3:graphics_cpp_variable_8                            ; fixup: num: 2046, src obj: 1, src ofs: 0x12afe, dst obj: 3, dst ofs: 0x14d1
   12b02:	ba d9 00 00 00       	mov    edx,0xd9
   12b07:	e8 24 55 02 00       	call   _error_report
gr_VESA_get_bm_branch_6:
   12b0c:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
   12b10:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
   12b14:	31 db                	xor    ebx,ebx
   12b16:	29 d6                	sub    esi,edx
   12b18:	89 5c 24 18          	mov    DWORD PTR [esp+0x18],ebx
   12b1c:	46                   	inc    esi
   12b1d:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
   12b20:	89 74 24 2c          	mov    DWORD PTR [esp+0x2c],esi
   12b24:	85 c9                	test   ecx,ecx
   12b26:	0f 86 04 02 00 00    	jbe    gr_VESA_get_bm_branch_18
   12b2c:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
   12b30:	01 c0                	add    eax,eax
   12b32:	89 44 24 20          	mov    DWORD PTR [esp+0x20],eax
   12b36:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
   12b3a:	8d 04 85 00 00 00 00 	lea    eax,[eax*4+0x0]
   12b41:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
   12b45:	89 f0                	mov    eax,esi
   12b47:	0f af c3             	imul   eax,ebx
   12b4a:	89 74 24 08          	mov    DWORD PTR [esp+0x8],esi
   12b4e:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
gr_VESA_get_bm_branch_7:
   12b52:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
   12b56:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
   12b5a:	8b 74 24 0c          	mov    esi,DWORD PTR [esp+0xc]
   12b5e:	0f bf 80 cc 97 01 00 	movsx  eax,WORD PTR [eax+@obj3:line_start_table_split]              ; fixup: num: 1941, src obj: 1, src ofs: 0x12b61, dst obj: 3, dst ofs: 0x197cc
   12b65:	01 f2                	add    edx,esi
   12b67:	83 f8 ff             	cmp    eax,0xffffffff
   12b6a:	0f 85 b1 00 00 00    	jne    gr_VESA_get_bm_branch_10
   12b70:	8b 54 24 20          	mov    edx,DWORD PTR [esp+0x20]
   12b74:	31 c0                	xor    eax,eax
   12b76:	66 8b 82 ca 7f 01 00 	mov    ax,WORD PTR [edx+@obj3:line_start_table_window_offsets]      ; fixup: num: 1940, src obj: 1, src ofs: 0x12b79, dst obj: 3, dst ofs: 0x17fca
   12b7d:	0f bf 15 c4 7f 01 00 	movsx  edx,WORD PTR ds:@obj3:VESA_writeable_window_position         ; fixup: num: 1939, src obj: 1, src ofs: 0x12b80, dst obj: 3, dst ofs: 0x17fc4
   12b84:	39 c2                	cmp    edx,eax
   12b86:	74 20                	je     gr_VESA_get_bm_branch_8
   12b88:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
   12b8c:	66 8b 80 ca 7f 01 00 	mov    ax,WORD PTR [eax+@obj3:line_start_table_window_offsets]      ; fixup: num: 1938, src obj: 1, src ofs: 0x12b8f, dst obj: 3, dst ofs: 0x17fca
   12b93:	66 a3 c4 7f 01 00    	mov    ds:@obj3:VESA_writeable_window_position,ax                   ; fixup: num: 1937, src obj: 1, src ofs: 0x12b95, dst obj: 3, dst ofs: 0x17fc4
   12b99:	0f bf d0             	movsx  edx,ax
   12b9c:	31 c0                	xor    eax,eax
   12b9e:	a0 c1 7f 01 00       	mov    al,ds:@obj3:VESA_writeable_number                            ; fixup: num: 1936, src obj: 1, src ofs: 0x12b9f, dst obj: 3, dst ofs: 0x17fc1
   12ba3:	e8 f8 22 ff ff       	call   select_super_VGA_video_memory_window
gr_VESA_get_bm_branch_8:
   12ba8:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
   12bac:	8b 7c 24 28          	mov    edi,DWORD PTR [esp+0x28]
   12bb0:	a1 bc 7f 01 00       	mov    eax,ds:@obj3:VESA_writeable_window                           ; fixup: num: 1935, src obj: 1, src ofs: 0x12bb1, dst obj: 3, dst ofs: 0x17fbc
   12bb5:	8b aa cc 87 01 00    	mov    ebp,DWORD PTR [edx+@obj3:line_start_table_offset_offsets]    ; fixup: num: 1945, src obj: 1, src ofs: 0x12bb7, dst obj: 3, dst ofs: 0x187cc
   12bbb:	8b 74 24 10          	mov    esi,DWORD PTR [esp+0x10]
   12bbf:	01 e8                	add    eax,ebp
   12bc1:	8b 7f 08             	mov    edi,DWORD PTR [edi+0x8]
   12bc4:	01 c6                	add    esi,eax
   12bc6:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
   12bca:	8b 4c 24 2c          	mov    ecx,DWORD PTR [esp+0x2c]
   12bce:	01 c7                	add    edi,eax
   12bd0:	57                   	push   edi
   12bd1:	89 c8                	mov    eax,ecx
   12bd3:	c1 e9 02             	shr    ecx,0x2
   12bd6:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
   12bd8:	8a c8                	mov    cl,al
   12bda:	80 e1 03             	and    cl,0x3
   12bdd:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
   12bdf:	5f                   	pop    edi
gr_VESA_get_bm_branch_9:
   12be0:	8b 74 24 20          	mov    esi,DWORD PTR [esp+0x20]
   12be4:	8b 7c 24 14          	mov    edi,DWORD PTR [esp+0x14]
   12be8:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
   12bec:	8b 6c 24 1c          	mov    ebp,DWORD PTR [esp+0x1c]
   12bf0:	8b 54 24 28          	mov    edx,DWORD PTR [esp+0x28]
   12bf4:	83 c6 02             	add    esi,0x2
   12bf7:	83 c7 04             	add    edi,0x4
   12bfa:	8b 5a 04             	mov    ebx,DWORD PTR [edx+0x4]
   12bfd:	01 c5                	add    ebp,eax
   12bff:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
   12c03:	89 74 24 20          	mov    DWORD PTR [esp+0x20],esi
   12c07:	89 7c 24 14          	mov    DWORD PTR [esp+0x14],edi
   12c0b:	40                   	inc    eax
   12c0c:	89 6c 24 1c          	mov    DWORD PTR [esp+0x1c],ebp
   12c10:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
   12c14:	39 d8                	cmp    eax,ebx
   12c16:	0f 83 14 01 00 00    	jae    gr_VESA_get_bm_branch_18
   12c1c:	e9 31 ff ff ff       	jmp    gr_VESA_get_bm_branch_7
gr_VESA_get_bm_branch_10:
   12c21:	8b 7c 24 2c          	mov    edi,DWORD PTR [esp+0x2c]
   12c25:	31 c9                	xor    ecx,ecx
   12c27:	85 ff                	test   edi,edi
   12c29:	7e b5                	jle    gr_VESA_get_bm_branch_9
   12c2b:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
   12c2f:	8b 5c 24 10          	mov    ebx,DWORD PTR [esp+0x10]
   12c33:	89 54 24 30          	mov    DWORD PTR [esp+0x30],edx
   12c37:	89 44 24 24          	mov    DWORD PTR [esp+0x24],eax
gr_VESA_get_bm_branch_11:
   12c3b:	8b 74 24 30          	mov    esi,DWORD PTR [esp+0x30]
   12c3f:	8d 04 36             	lea    eax,[esi+esi*1]
   12c42:	0f bf 90 cc 97 01 00 	movsx  edx,WORD PTR [eax+@obj3:line_start_table_split]              ; fixup: num: 1944, src obj: 1, src ofs: 0x12c45, dst obj: 3, dst ofs: 0x197cc
   12c49:	89 df                	mov    edi,ebx
   12c4b:	83 fa ff             	cmp    edx,0xffffffff
   12c4e:	75 60                	jne    gr_VESA_get_bm_branch_14
   12c50:	0f bf 15 c4 7f 01 00 	movsx  edx,WORD PTR ds:@obj3:VESA_writeable_window_position         ; fixup: num: 1943, src obj: 1, src ofs: 0x12c53, dst obj: 3, dst ofs: 0x17fc4
   12c57:	0f b7 a8 ca 7f 01 00 	movzx  ebp,WORD PTR [eax+@obj3:line_start_table_window_offsets]     ; fixup: num: 1942, src obj: 1, src ofs: 0x12c5a, dst obj: 3, dst ofs: 0x17fca
   12c5e:	39 ea                	cmp    edx,ebp
   12c60:	74 1c                	je     gr_VESA_get_bm_branch_12
   12c62:	66 8b 80 ca 7f 01 00 	mov    ax,WORD PTR [eax+@obj3:line_start_table_window_offsets]      ; fixup: num: 1960, src obj: 1, src ofs: 0x12c65, dst obj: 3, dst ofs: 0x17fca
   12c69:	66 a3 c4 7f 01 00    	mov    ds:@obj3:VESA_writeable_window_position,ax                   ; fixup: num: 1959, src obj: 1, src ofs: 0x12c6b, dst obj: 3, dst ofs: 0x17fc4
   12c6f:	0f bf d0             	movsx  edx,ax
   12c72:	31 c0                	xor    eax,eax
   12c74:	a0 c1 7f 01 00       	mov    al,ds:@obj3:VESA_writeable_number                            ; fixup: num: 1958, src obj: 1, src ofs: 0x12c75, dst obj: 3, dst ofs: 0x17fc1
   12c79:	e8 22 22 ff ff       	call   select_super_VGA_video_memory_window
gr_VESA_get_bm_branch_12:
   12c7e:	8b 14 b5 cc 87 01 00 	mov    edx,DWORD PTR [esi*4+@obj3:line_start_table_offset_offsets]  ; fixup: num: 1957, src obj: 1, src ofs: 0x12c81, dst obj: 3, dst ofs: 0x187cc
   12c85:	a1 bc 7f 01 00       	mov    eax,ds:@obj3:VESA_writeable_window                           ; fixup: num: 1956, src obj: 1, src ofs: 0x12c86, dst obj: 3, dst ofs: 0x17fbc
   12c8a:	01 d7                	add    edi,edx
   12c8c:	8a 04 07             	mov    al,BYTE PTR [edi+eax*1]
gr_VESA_get_bm_branch_13:
   12c8f:	8b 54 24 28          	mov    edx,DWORD PTR [esp+0x28]
   12c93:	8b 74 24 24          	mov    esi,DWORD PTR [esp+0x24]
   12c97:	8b 52 08             	mov    edx,DWORD PTR [edx+0x8]
   12c9a:	41                   	inc    ecx
   12c9b:	01 f2                	add    edx,esi
   12c9d:	8b 7c 24 2c          	mov    edi,DWORD PTR [esp+0x2c]
   12ca1:	43                   	inc    ebx
   12ca2:	88 44 11 ff          	mov    BYTE PTR [ecx+edx*1-0x1],al
   12ca6:	39 f9                	cmp    ecx,edi
   12ca8:	0f 8d 32 ff ff ff    	jge    gr_VESA_get_bm_branch_9
   12cae:	eb 8b                	jmp    gr_VESA_get_bm_branch_11
gr_VESA_get_bm_branch_14:
   12cb0:	39 d3                	cmp    ebx,edx
   12cb2:	7d 3b                	jge    gr_VESA_get_bm_branch_16
   12cb4:	31 d2                	xor    edx,edx
   12cb6:	0f bf 2d c4 7f 01 00 	movsx  ebp,WORD PTR ds:@obj3:VESA_writeable_window_position         ; fixup: num: 1955, src obj: 1, src ofs: 0x12cb9, dst obj: 3, dst ofs: 0x17fc4
   12cbd:	66 8b 90 ca 7f 01 00 	mov    dx,WORD PTR [eax+@obj3:line_start_table_window_offsets]      ; fixup: num: 1954, src obj: 1, src ofs: 0x12cc0, dst obj: 3, dst ofs: 0x17fca
   12cc4:	39 ea                	cmp    edx,ebp
   12cc6:	74 16                	je     gr_VESA_get_bm_branch_15
   12cc8:	31 c0                	xor    eax,eax
   12cca:	66 89 15 c4 7f 01 00 	mov    WORD PTR ds:@obj3:VESA_writeable_window_position,dx          ; fixup: num: 1953, src obj: 1, src ofs: 0x12ccd, dst obj: 3, dst ofs: 0x17fc4
   12cd1:	a0 c1 7f 01 00       	mov    al,ds:@obj3:VESA_writeable_number                            ; fixup: num: 1952, src obj: 1, src ofs: 0x12cd2, dst obj: 3, dst ofs: 0x17fc1
   12cd6:	0f bf d2             	movsx  edx,dx
   12cd9:	e8 c2 21 ff ff       	call   select_super_VGA_video_memory_window
gr_VESA_get_bm_branch_15:
   12cde:	03 3c b5 cc 87 01 00 	add    edi,DWORD PTR [esi*4+@obj3:line_start_table_offset_offsets]  ; fixup: num: 1951, src obj: 1, src ofs: 0x12ce1, dst obj: 3, dst ofs: 0x187cc
   12ce5:	a1 bc 7f 01 00       	mov    eax,ds:@obj3:VESA_writeable_window                           ; fixup: num: 1950, src obj: 1, src ofs: 0x12ce6, dst obj: 3, dst ofs: 0x17fbc
   12cea:	8a 04 07             	mov    al,BYTE PTR [edi+eax*1]
   12ced:	eb a0                	jmp    gr_VESA_get_bm_branch_13
gr_VESA_get_bm_branch_16:
   12cef:	31 d2                	xor    edx,edx
   12cf1:	0f bf 2d c4 7f 01 00 	movsx  ebp,WORD PTR ds:@obj3:VESA_writeable_window_position         ; fixup: num: 1949, src obj: 1, src ofs: 0x12cf4, dst obj: 3, dst ofs: 0x17fc4
   12cf8:	66 8b 90 cc 7f 01 00 	mov    dx,WORD PTR [eax+@obj3:line_start_table_window_offsets_variable_1]; fixup: num: 1948, src obj: 1, src ofs: 0x12cfb, dst obj: 3, dst ofs: 0x17fcc
   12cff:	39 ea                	cmp    edx,ebp
   12d01:	74 16                	je     gr_VESA_get_bm_branch_17
   12d03:	31 c0                	xor    eax,eax
   12d05:	66 89 15 c4 7f 01 00 	mov    WORD PTR ds:@obj3:VESA_writeable_window_position,dx          ; fixup: num: 1947, src obj: 1, src ofs: 0x12d08, dst obj: 3, dst ofs: 0x17fc4
   12d0c:	a0 c1 7f 01 00       	mov    al,ds:@obj3:VESA_writeable_number                            ; fixup: num: 1946, src obj: 1, src ofs: 0x12d0d, dst obj: 3, dst ofs: 0x17fc1
   12d11:	0f bf d2             	movsx  edx,dx
   12d14:	e8 87 21 ff ff       	call   select_super_VGA_video_memory_window
gr_VESA_get_bm_branch_17:
   12d19:	0f bf 04 75 cc 97 01 00 	movsx  eax,WORD PTR [esi*2+@obj3:line_start_table_split]         ; fixup: num: 1963, src obj: 1, src ofs: 0x12d1d, dst obj: 3, dst ofs: 0x197cc
   12d21:	29 c7                	sub    edi,eax
   12d23:	a1 bc 7f 01 00       	mov    eax,ds:@obj3:VESA_writeable_window                           ; fixup: num: 1962, src obj: 1, src ofs: 0x12d24, dst obj: 3, dst ofs: 0x17fbc
   12d28:	8a 04 07             	mov    al,BYTE PTR [edi+eax*1]
   12d2b:	e9 5f ff ff ff       	jmp    gr_VESA_get_bm_branch_13
gr_VESA_get_bm_branch_18:
   12d30:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
   12d34:	83 c4 34             	add    esp,0x34
   12d37:	5d                   	pop    ebp
   12d38:	5f                   	pop    edi
   12d39:	5e                   	pop    esi
   12d3a:	c2 04 00             	ret    0x4
   12d3d:	8d 40 00             	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'gr_VESA_put_bm'                     -
;-------------------------------------------------
gr_VESA_put_bm:
   12d40:	51                   	push   ecx
   12d41:	56                   	push   esi
   12d42:	57                   	push   edi
   12d43:	55                   	push   ebp
   12d44:	83 ec 34             	sub    esp,0x34
   12d47:	89 44 24 28          	mov    DWORD PTR [esp+0x28],eax
   12d4b:	89 5c 24 2c          	mov    DWORD PTR [esp+0x2c],ebx
   12d4f:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
   12d52:	01 d0                	add    eax,edx
   12d54:	89 54 24 24          	mov    DWORD PTR [esp+0x24],edx
   12d58:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
   12d5c:	8b 03                	mov    eax,DWORD PTR [ebx]
   12d5e:	8b 5c 24 08          	mov    ebx,DWORD PTR [esp+0x8]
   12d62:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
   12d66:	39 da                	cmp    edx,ebx
   12d68:	0f 8d 1e 02 00 00    	jge    gr_VESA_put_bm_branch_12
   12d6e:	8d 04 55 00 00 00 00 	lea    eax,[edx*2+0x0]
   12d75:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
   12d79:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
   12d7d:	89 c1                	mov    ecx,eax
   12d7f:	0f af ca             	imul   ecx,edx
   12d82:	89 04 24             	mov    DWORD PTR [esp],eax
   12d85:	8d 04 95 00 00 00 00 	lea    eax,[edx*4+0x0]
   12d8c:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
   12d90:	f7 da                	neg    edx
   12d92:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
   12d96:	0f af d0             	imul   edx,eax
   12d99:	89 4c 24 18          	mov    DWORD PTR [esp+0x18],ecx
   12d9d:	01 ca                	add    edx,ecx
   12d9f:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
   12da3:	89 54 24 10          	mov    DWORD PTR [esp+0x10],edx
gr_VESA_put_bm_branch_1:
   12da7:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
   12dab:	0f bf 80 cc 97 01 00 	movsx  eax,WORD PTR [eax+@obj3:line_start_table_split]              ; fixup: num: 1961, src obj: 1, src ofs: 0x12dae, dst obj: 3, dst ofs: 0x197cc
   12db2:	83 f8 ff             	cmp    eax,0xffffffff
   12db5:	0f 85 bb 00 00 00    	jne    gr_VESA_put_bm_branch_4
   12dbb:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
   12dbf:	31 c0                	xor    eax,eax
   12dc1:	66 8b 82 ca 7f 01 00 	mov    ax,WORD PTR [edx+@obj3:line_start_table_window_offsets]      ; fixup: num: 1970, src obj: 1, src ofs: 0x12dc4, dst obj: 3, dst ofs: 0x17fca
   12dc8:	0f bf 15 c4 7f 01 00 	movsx  edx,WORD PTR ds:@obj3:VESA_writeable_window_position         ; fixup: num: 1969, src obj: 1, src ofs: 0x12dcb, dst obj: 3, dst ofs: 0x17fc4
   12dcf:	39 c2                	cmp    edx,eax
   12dd1:	74 20                	je     gr_VESA_put_bm_branch_2
   12dd3:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
   12dd7:	66 8b 80 ca 7f 01 00 	mov    ax,WORD PTR [eax+@obj3:line_start_table_window_offsets]      ; fixup: num: 1968, src obj: 1, src ofs: 0x12dda, dst obj: 3, dst ofs: 0x17fca
   12dde:	66 a3 c4 7f 01 00    	mov    ds:@obj3:VESA_writeable_window_position,ax                   ; fixup: num: 1967, src obj: 1, src ofs: 0x12de0, dst obj: 3, dst ofs: 0x17fc4
   12de4:	0f bf d0             	movsx  edx,ax
   12de7:	31 c0                	xor    eax,eax
   12de9:	a0 c1 7f 01 00       	mov    al,ds:@obj3:VESA_writeable_number                            ; fixup: num: 1966, src obj: 1, src ofs: 0x12dea, dst obj: 3, dst ofs: 0x17fc1
   12dee:	e8 ad 20 ff ff       	call   select_super_VGA_video_memory_window
gr_VESA_put_bm_branch_2:
   12df3:	8b 74 24 2c          	mov    esi,DWORD PTR [esp+0x2c]
   12df7:	8b 6c 24 10          	mov    ebp,DWORD PTR [esp+0x10]
   12dfb:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
   12dff:	8b 7c 24 28          	mov    edi,DWORD PTR [esp+0x28]
   12e03:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
   12e07:	a1 bc 7f 01 00       	mov    eax,ds:@obj3:VESA_writeable_window                           ; fixup: num: 1965, src obj: 1, src ofs: 0x12e08, dst obj: 3, dst ofs: 0x17fbc
   12e0c:	8b 9a cc 87 01 00    	mov    ebx,DWORD PTR [edx+@obj3:line_start_table_offset_offsets]    ; fixup: num: 1964, src obj: 1, src ofs: 0x12e0e, dst obj: 3, dst ofs: 0x187cc
   12e12:	8b 76 08             	mov    esi,DWORD PTR [esi+0x8]
   12e15:	01 d8                	add    eax,ebx
   12e17:	01 ee                	add    esi,ebp
   12e19:	01 c7                	add    edi,eax
   12e1b:	57                   	push   edi
   12e1c:	89 c8                	mov    eax,ecx
   12e1e:	c1 e9 02             	shr    ecx,0x2
   12e21:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
   12e23:	8a c8                	mov    cl,al
   12e25:	80 e1 03             	and    cl,0x3
   12e28:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
   12e2a:	5f                   	pop    edi
gr_VESA_put_bm_branch_3:
   12e2b:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
   12e2f:	8b 04 24             	mov    eax,DWORD PTR [esp]
   12e32:	8b 74 24 18          	mov    esi,DWORD PTR [esp+0x18]
   12e36:	8b 7c 24 14          	mov    edi,DWORD PTR [esp+0x14]
   12e3a:	8b 6c 24 10          	mov    ebp,DWORD PTR [esp+0x10]
   12e3e:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
   12e42:	83 c1 02             	add    ecx,0x2
   12e45:	83 c7 04             	add    edi,0x4
   12e48:	01 c6                	add    esi,eax
   12e4a:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
   12e4e:	89 4c 24 1c          	mov    DWORD PTR [esp+0x1c],ecx
   12e52:	89 74 24 18          	mov    DWORD PTR [esp+0x18],esi
   12e56:	01 c5                	add    ebp,eax
   12e58:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
   12e5c:	89 7c 24 14          	mov    DWORD PTR [esp+0x14],edi
   12e60:	40                   	inc    eax
   12e61:	89 6c 24 10          	mov    DWORD PTR [esp+0x10],ebp
   12e65:	89 44 24 24          	mov    DWORD PTR [esp+0x24],eax
   12e69:	39 d0                	cmp    eax,edx
   12e6b:	0f 8d 1b 01 00 00    	jge    gr_VESA_put_bm_branch_12
   12e71:	e9 31 ff ff ff       	jmp    gr_VESA_put_bm_branch_1
gr_VESA_put_bm_branch_4:
   12e76:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
   12e7a:	8b 74 24 28          	mov    esi,DWORD PTR [esp+0x28]
   12e7e:	89 44 24 20          	mov    DWORD PTR [esp+0x20],eax
   12e82:	89 f0                	mov    eax,esi
   12e84:	f7 d8                	neg    eax
   12e86:	01 f0                	add    eax,esi
   12e88:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
   12e8c:	89 44 24 30          	mov    DWORD PTR [esp+0x30],eax
   12e90:	e9 84 00 00 00       	jmp    gr_VESA_put_bm_branch_10
gr_VESA_put_bm_branch_5:
   12e95:	39 c6                	cmp    esi,eax
   12e97:	7d 3a                	jge    gr_VESA_put_bm_branch_7
   12e99:	31 c0                	xor    eax,eax
   12e9b:	0f bf 15 c4 7f 01 00 	movsx  edx,WORD PTR ds:@obj3:VESA_writeable_window_position         ; fixup: num: 1982, src obj: 1, src ofs: 0x12e9e, dst obj: 3, dst ofs: 0x17fc4
   12ea2:	66 8b 81 ca 7f 01 00 	mov    ax,WORD PTR [ecx+@obj3:line_start_table_window_offsets]      ; fixup: num: 1981, src obj: 1, src ofs: 0x12ea5, dst obj: 3, dst ofs: 0x17fca
   12ea9:	39 d0                	cmp    eax,edx
   12eab:	74 15                	je     gr_VESA_put_bm_branch_6
   12ead:	66 a3 c4 7f 01 00    	mov    ds:@obj3:VESA_writeable_window_position,ax                   ; fixup: num: 1980, src obj: 1, src ofs: 0x12eaf, dst obj: 3, dst ofs: 0x17fc4
   12eb3:	0f bf d0             	movsx  edx,ax
   12eb6:	31 c0                	xor    eax,eax
   12eb8:	a0 c1 7f 01 00       	mov    al,ds:@obj3:VESA_writeable_number                            ; fixup: num: 1979, src obj: 1, src ofs: 0x12eb9, dst obj: 3, dst ofs: 0x17fc1
   12ebd:	e8 de 1f ff ff       	call   select_super_VGA_video_memory_window
gr_VESA_put_bm_branch_6:
   12ec2:	03 2c bd cc 87 01 00 	add    ebp,DWORD PTR [edi*4+@obj3:line_start_table_offset_offsets]  ; fixup: num: 1978, src obj: 1, src ofs: 0x12ec5, dst obj: 3, dst ofs: 0x187cc
   12ec9:	a1 bc 7f 01 00       	mov    eax,ds:@obj3:VESA_writeable_window                           ; fixup: num: 1977, src obj: 1, src ofs: 0x12eca, dst obj: 3, dst ofs: 0x17fbc
   12ece:	88 1c 28             	mov    BYTE PTR [eax+ebp*1],bl
   12ed1:	eb 3c                	jmp    gr_VESA_put_bm_branch_9
gr_VESA_put_bm_branch_7:
   12ed3:	31 d2                	xor    edx,edx
   12ed5:	0f bf 05 c4 7f 01 00 	movsx  eax,WORD PTR ds:@obj3:VESA_writeable_window_position         ; fixup: num: 1976, src obj: 1, src ofs: 0x12ed8, dst obj: 3, dst ofs: 0x17fc4
   12edc:	66 8b 91 cc 7f 01 00 	mov    dx,WORD PTR [ecx+@obj3:line_start_table_window_offsets_variable_1]; fixup: num: 1975, src obj: 1, src ofs: 0x12edf, dst obj: 3, dst ofs: 0x17fcc
   12ee3:	39 d0                	cmp    eax,edx
   12ee5:	74 16                	je     gr_VESA_put_bm_branch_8
   12ee7:	31 c0                	xor    eax,eax
   12ee9:	66 89 15 c4 7f 01 00 	mov    WORD PTR ds:@obj3:VESA_writeable_window_position,dx          ; fixup: num: 1974, src obj: 1, src ofs: 0x12eec, dst obj: 3, dst ofs: 0x17fc4
   12ef0:	a0 c1 7f 01 00       	mov    al,ds:@obj3:VESA_writeable_number                            ; fixup: num: 1973, src obj: 1, src ofs: 0x12ef1, dst obj: 3, dst ofs: 0x17fc1
   12ef5:	0f bf d2             	movsx  edx,dx
   12ef8:	e8 a3 1f ff ff       	call   select_super_VGA_video_memory_window
gr_VESA_put_bm_branch_8:
   12efd:	0f bf 04 7d cc 97 01 00 	movsx  eax,WORD PTR [edi*2+@obj3:line_start_table_split]         ; fixup: num: 1972, src obj: 1, src ofs: 0x12f01, dst obj: 3, dst ofs: 0x197cc
   12f05:	29 c5                	sub    ebp,eax
   12f07:	a1 bc 7f 01 00       	mov    eax,ds:@obj3:VESA_writeable_window                           ; fixup: num: 1971, src obj: 1, src ofs: 0x12f08, dst obj: 3, dst ofs: 0x17fbc
   12f0c:	88 1c 28             	mov    BYTE PTR [eax+ebp*1],bl
gr_VESA_put_bm_branch_9:
   12f0f:	8b 54 24 30          	mov    edx,DWORD PTR [esp+0x30]
   12f13:	42                   	inc    edx
   12f14:	46                   	inc    esi
   12f15:	89 54 24 30          	mov    DWORD PTR [esp+0x30],edx
gr_VESA_put_bm_branch_10:
   12f19:	8b 54 24 2c          	mov    edx,DWORD PTR [esp+0x2c]
   12f1d:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
   12f21:	03 02                	add    eax,DWORD PTR [edx]
   12f23:	39 c6                	cmp    esi,eax
   12f25:	0f 83 00 ff ff ff    	jae    gr_VESA_put_bm_branch_3
   12f2b:	8b 6c 24 20          	mov    ebp,DWORD PTR [esp+0x20]
   12f2f:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
   12f32:	8b 54 24 30          	mov    edx,DWORD PTR [esp+0x30]
   12f36:	01 e8                	add    eax,ebp
   12f38:	01 d0                	add    eax,edx
   12f3a:	8b 7c 24 24          	mov    edi,DWORD PTR [esp+0x24]
   12f3e:	8a 18                	mov    bl,BYTE PTR [eax]
   12f40:	0f bf 81 cc 97 01 00 	movsx  eax,WORD PTR [ecx+@obj3:line_start_table_split]              ; fixup: num: 1989, src obj: 1, src ofs: 0x12f43, dst obj: 3, dst ofs: 0x197cc
   12f47:	89 f5                	mov    ebp,esi
   12f49:	83 f8 ff             	cmp    eax,0xffffffff
   12f4c:	0f 85 43 ff ff ff    	jne    gr_VESA_put_bm_branch_5
   12f52:	31 c0                	xor    eax,eax
   12f54:	0f bf 15 c4 7f 01 00 	movsx  edx,WORD PTR ds:@obj3:VESA_writeable_window_position         ; fixup: num: 1988, src obj: 1, src ofs: 0x12f57, dst obj: 3, dst ofs: 0x17fc4
   12f5b:	66 8b 81 ca 7f 01 00 	mov    ax,WORD PTR [ecx+@obj3:line_start_table_window_offsets]      ; fixup: num: 1987, src obj: 1, src ofs: 0x12f5e, dst obj: 3, dst ofs: 0x17fca
   12f62:	39 d0                	cmp    eax,edx
   12f64:	74 15                	je     gr_VESA_put_bm_branch_11
   12f66:	66 a3 c4 7f 01 00    	mov    ds:@obj3:VESA_writeable_window_position,ax                   ; fixup: num: 1986, src obj: 1, src ofs: 0x12f68, dst obj: 3, dst ofs: 0x17fc4
   12f6c:	0f bf d0             	movsx  edx,ax
   12f6f:	31 c0                	xor    eax,eax
   12f71:	a0 c1 7f 01 00       	mov    al,ds:@obj3:VESA_writeable_number                            ; fixup: num: 1985, src obj: 1, src ofs: 0x12f72, dst obj: 3, dst ofs: 0x17fc1
   12f76:	e8 25 1f ff ff       	call   select_super_VGA_video_memory_window
gr_VESA_put_bm_branch_11:
   12f7b:	03 2c bd cc 87 01 00 	add    ebp,DWORD PTR [edi*4+@obj3:line_start_table_offset_offsets]  ; fixup: num: 1984, src obj: 1, src ofs: 0x12f7e, dst obj: 3, dst ofs: 0x187cc
   12f82:	a1 bc 7f 01 00       	mov    eax,ds:@obj3:VESA_writeable_window                           ; fixup: num: 1983, src obj: 1, src ofs: 0x12f83, dst obj: 3, dst ofs: 0x17fbc
   12f87:	88 1c 28             	mov    BYTE PTR [eax+ebp*1],bl
   12f8a:	eb 83                	jmp    gr_VESA_put_bm_branch_9
gr_VESA_put_bm_branch_12:
   12f8c:	83 c4 34             	add    esp,0x34
   12f8f:	5d                   	pop    ebp
   12f90:	5f                   	pop    edi
   12f91:	5e                   	pop    esi
   12f92:	59                   	pop    ecx
   12f93:	c3                   	ret    
   12f94:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   12f9a:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]

;-------------------------------------------------
;  Function 'gr_VESA_put_bitmap_window'          -
;-------------------------------------------------
gr_VESA_put_bitmap_window:
   12fa0:	56                   	push   esi
   12fa1:	57                   	push   edi
   12fa2:	55                   	push   ebp
   12fa3:	83 ec 2c             	sub    esp,0x2c
   12fa6:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
   12faa:	89 de                	mov    esi,ebx
   12fac:	89 4c 24 1c          	mov    DWORD PTR [esp+0x1c],ecx
   12fb0:	8b 44 24 3c          	mov    eax,DWORD PTR [esp+0x3c]
   12fb4:	29 c8                	sub    eax,ecx
   12fb6:	89 44 24 20          	mov    DWORD PTR [esp+0x20],eax
   12fba:	8b 44 24 40          	mov    eax,DWORD PTR [esp+0x40]
   12fbe:	29 f0                	sub    eax,esi
   12fc0:	8b 5c 24 44          	mov    ebx,DWORD PTR [esp+0x44]
   12fc4:	8d 0c 02             	lea    ecx,[edx+eax*1]
   12fc7:	8b 1b                	mov    ebx,DWORD PTR [ebx]
   12fc9:	89 4c 24 04          	mov    DWORD PTR [esp+0x4],ecx
   12fcd:	89 54 24 24          	mov    DWORD PTR [esp+0x24],edx
   12fd1:	39 ca                	cmp    edx,ecx
   12fd3:	0f 8d 2c 02 00 00    	jge    gr_VESA_put_bitmap_window_branch_11
   12fd9:	0f af f3             	imul   esi,ebx
   12fdc:	8d 04 55 00 00 00 00 	lea    eax,[edx*2+0x0]
   12fe3:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
   12fe7:	8d 04 95 00 00 00 00 	lea    eax,[edx*4+0x0]
   12fee:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
   12ff2:	89 d0                	mov    eax,edx
   12ff4:	0f af c3             	imul   eax,ebx
   12ff7:	f7 da                	neg    edx
   12ff9:	0f af d3             	imul   edx,ebx
   12ffc:	01 f0                	add    eax,esi
   12ffe:	01 d0                	add    eax,edx
   13000:	89 1c 24             	mov    DWORD PTR [esp],ebx
   13003:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
gr_VESA_put_bitmap_window_branch_1:
   13007:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
   1300b:	0f bf 80 cc 97 01 00 	movsx  eax,WORD PTR [eax+@obj3:line_start_table_split]              ; fixup: num: 2062, src obj: 1, src ofs: 0x1300e, dst obj: 3, dst ofs: 0x197cc
   13012:	83 f8 ff             	cmp    eax,0xffffffff
   13015:	0f 85 b3 00 00 00    	jne    gr_VESA_put_bitmap_window_branch_4
   1301b:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
   1301f:	31 d2                	xor    edx,edx
   13021:	66 8b 90 ca 7f 01 00 	mov    dx,WORD PTR [eax+@obj3:line_start_table_window_offsets]      ; fixup: num: 2061, src obj: 1, src ofs: 0x13024, dst obj: 3, dst ofs: 0x17fca
   13028:	0f bf 05 c4 7f 01 00 	movsx  eax,WORD PTR ds:@obj3:VESA_writeable_window_position         ; fixup: num: 2060, src obj: 1, src ofs: 0x1302b, dst obj: 3, dst ofs: 0x17fc4
   1302f:	39 d0                	cmp    eax,edx
   13031:	74 20                	je     gr_VESA_put_bitmap_window_branch_2
   13033:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
   13037:	66 8b 80 ca 7f 01 00 	mov    ax,WORD PTR [eax+@obj3:line_start_table_window_offsets]      ; fixup: num: 2059, src obj: 1, src ofs: 0x1303a, dst obj: 3, dst ofs: 0x17fca
   1303e:	66 a3 c4 7f 01 00    	mov    ds:@obj3:VESA_writeable_window_position,ax                   ; fixup: num: 2058, src obj: 1, src ofs: 0x13040, dst obj: 3, dst ofs: 0x17fc4
   13044:	0f bf d0             	movsx  edx,ax
   13047:	31 c0                	xor    eax,eax
   13049:	a0 c1 7f 01 00       	mov    al,ds:@obj3:VESA_writeable_number                            ; fixup: num: 2057, src obj: 1, src ofs: 0x1304a, dst obj: 3, dst ofs: 0x17fc1
   1304e:	e8 4d 1e ff ff       	call   select_super_VGA_video_memory_window
gr_VESA_put_bitmap_window_branch_2:
   13053:	8b 74 24 44          	mov    esi,DWORD PTR [esp+0x44]
   13057:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
   1305b:	8b 7c 24 1c          	mov    edi,DWORD PTR [esp+0x1c]
   1305f:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
   13063:	a1 bc 7f 01 00       	mov    eax,ds:@obj3:VESA_writeable_window                           ; fixup: num: 2056, src obj: 1, src ofs: 0x13064, dst obj: 3, dst ofs: 0x17fbc
   13068:	8b 76 08             	mov    esi,DWORD PTR [esi+0x8]
   1306b:	8b aa cc 87 01 00    	mov    ebp,DWORD PTR [edx+@obj3:line_start_table_offset_offsets]    ; fixup: num: 2055, src obj: 1, src ofs: 0x1306d, dst obj: 3, dst ofs: 0x187cc
   13071:	01 ce                	add    esi,ecx
   13073:	01 e8                	add    eax,ebp
   13075:	01 fe                	add    esi,edi
   13077:	8b 7c 24 08          	mov    edi,DWORD PTR [esp+0x8]
   1307b:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
   1307f:	01 c7                	add    edi,eax
   13081:	57                   	push   edi
   13082:	89 c8                	mov    eax,ecx
   13084:	c1 e9 02             	shr    ecx,0x2
   13087:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
   13089:	8a c8                	mov    cl,al
   1308b:	80 e1 03             	and    cl,0x3
   1308e:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
   13090:	5f                   	pop    edi
gr_VESA_put_bitmap_window_branch_3:
   13091:	8b 74 24 14          	mov    esi,DWORD PTR [esp+0x14]
   13095:	8b 7c 24 0c          	mov    edi,DWORD PTR [esp+0xc]
   13099:	8b 04 24             	mov    eax,DWORD PTR [esp]
   1309c:	8b 6c 24 10          	mov    ebp,DWORD PTR [esp+0x10]
   130a0:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
   130a4:	83 c6 02             	add    esi,0x2
   130a7:	83 c7 04             	add    edi,0x4
   130aa:	01 c5                	add    ebp,eax
   130ac:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
   130b0:	89 74 24 14          	mov    DWORD PTR [esp+0x14],esi
   130b4:	89 7c 24 0c          	mov    DWORD PTR [esp+0xc],edi
   130b8:	40                   	inc    eax
   130b9:	89 6c 24 10          	mov    DWORD PTR [esp+0x10],ebp
   130bd:	89 44 24 24          	mov    DWORD PTR [esp+0x24],eax
   130c1:	39 d0                	cmp    eax,edx
   130c3:	0f 8d 3c 01 00 00    	jge    gr_VESA_put_bitmap_window_branch_11
   130c9:	e9 39 ff ff ff       	jmp    gr_VESA_put_bitmap_window_branch_1
gr_VESA_put_bitmap_window_branch_4:
   130ce:	8b 5c 24 20          	mov    ebx,DWORD PTR [esp+0x20]
   130d2:	31 f6                	xor    esi,esi
   130d4:	85 db                	test   ebx,ebx
   130d6:	7e b9                	jle    gr_VESA_put_bitmap_window_branch_3
   130d8:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
   130dc:	8b 5c 24 14          	mov    ebx,DWORD PTR [esp+0x14]
   130e0:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
   130e4:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
gr_VESA_put_bitmap_window_branch_5:
   130e8:	8b 44 24 44          	mov    eax,DWORD PTR [esp+0x44]
   130ec:	8b 7c 24 18          	mov    edi,DWORD PTR [esp+0x18]
   130f0:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
   130f3:	8b 6c 24 1c          	mov    ebp,DWORD PTR [esp+0x1c]
   130f7:	01 f8                	add    eax,edi
   130f9:	01 e8                	add    eax,ebp
   130fb:	0f bf 93 cc 97 01 00 	movsx  edx,WORD PTR [ebx+@obj3:line_start_table_split]              ; fixup: num: 2065, src obj: 1, src ofs: 0x130fe, dst obj: 3, dst ofs: 0x197cc
   13102:	8b 7c 24 24          	mov    edi,DWORD PTR [esp+0x24]
   13106:	8a 04 06             	mov    al,BYTE PTR [esi+eax*1]
   13109:	89 cd                	mov    ebp,ecx
   1310b:	88 44 24 28          	mov    BYTE PTR [esp+0x28],al
   1310f:	83 fa ff             	cmp    edx,0xffffffff
   13112:	75 4c                	jne    gr_VESA_put_bitmap_window_branch_7
   13114:	31 c0                	xor    eax,eax
   13116:	0f bf 15 c4 7f 01 00 	movsx  edx,WORD PTR ds:@obj3:VESA_writeable_window_position         ; fixup: num: 2064, src obj: 1, src ofs: 0x13119, dst obj: 3, dst ofs: 0x17fc4
   1311d:	66 8b 83 ca 7f 01 00 	mov    ax,WORD PTR [ebx+@obj3:line_start_table_window_offsets]      ; fixup: num: 2063, src obj: 1, src ofs: 0x13120, dst obj: 3, dst ofs: 0x17fca
   13124:	39 d0                	cmp    eax,edx
   13126:	74 15                	je     gr_VESA_put_bitmap_window_branch_6
   13128:	66 a3 c4 7f 01 00    	mov    ds:@obj3:VESA_writeable_window_position,ax                   ; fixup: num: 2078, src obj: 1, src ofs: 0x1312a, dst obj: 3, dst ofs: 0x17fc4
   1312e:	0f bf d0             	movsx  edx,ax
   13131:	31 c0                	xor    eax,eax
   13133:	a0 c1 7f 01 00       	mov    al,ds:@obj3:VESA_writeable_number                            ; fixup: num: 2077, src obj: 1, src ofs: 0x13134, dst obj: 3, dst ofs: 0x17fc1
   13138:	e8 63 1d ff ff       	call   select_super_VGA_video_memory_window
gr_VESA_put_bitmap_window_branch_6:
   1313d:	03 2c bd cc 87 01 00 	add    ebp,DWORD PTR [edi*4+@obj3:line_start_table_offset_offsets]  ; fixup: num: 2076, src obj: 1, src ofs: 0x13140, dst obj: 3, dst ofs: 0x187cc
   13144:	a1 bc 7f 01 00       	mov    eax,ds:@obj3:VESA_writeable_window                           ; fixup: num: 2075, src obj: 1, src ofs: 0x13145, dst obj: 3, dst ofs: 0x17fbc
   13149:	8a 54 24 28          	mov    dl,BYTE PTR [esp+0x28]
   1314d:	88 14 28             	mov    BYTE PTR [eax+ebp*1],dl
   13150:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
   13154:	46                   	inc    esi
   13155:	41                   	inc    ecx
   13156:	39 c6                	cmp    esi,eax
   13158:	0f 8d 33 ff ff ff    	jge    gr_VESA_put_bitmap_window_branch_3
   1315e:	eb 88                	jmp    gr_VESA_put_bitmap_window_branch_5
gr_VESA_put_bitmap_window_branch_7:
   13160:	39 d1                	cmp    ecx,edx
   13162:	7d 4f                	jge    gr_VESA_put_bitmap_window_branch_9
   13164:	31 c0                	xor    eax,eax
   13166:	0f bf 15 c4 7f 01 00 	movsx  edx,WORD PTR ds:@obj3:VESA_writeable_window_position         ; fixup: num: 2074, src obj: 1, src ofs: 0x13169, dst obj: 3, dst ofs: 0x17fc4
   1316d:	66 8b 83 ca 7f 01 00 	mov    ax,WORD PTR [ebx+@obj3:line_start_table_window_offsets]      ; fixup: num: 2073, src obj: 1, src ofs: 0x13170, dst obj: 3, dst ofs: 0x17fca
   13174:	39 d0                	cmp    eax,edx
   13176:	74 15                	je     gr_VESA_put_bitmap_window_branch_8
   13178:	66 a3 c4 7f 01 00    	mov    ds:@obj3:VESA_writeable_window_position,ax                   ; fixup: num: 2072, src obj: 1, src ofs: 0x1317a, dst obj: 3, dst ofs: 0x17fc4
   1317e:	0f bf d0             	movsx  edx,ax
   13181:	31 c0                	xor    eax,eax
   13183:	a0 c1 7f 01 00       	mov    al,ds:@obj3:VESA_writeable_number                            ; fixup: num: 2071, src obj: 1, src ofs: 0x13184, dst obj: 3, dst ofs: 0x17fc1
   13188:	e8 13 1d ff ff       	call   select_super_VGA_video_memory_window
gr_VESA_put_bitmap_window_branch_8:
   1318d:	03 2c bd cc 87 01 00 	add    ebp,DWORD PTR [edi*4+@obj3:line_start_table_offset_offsets]  ; fixup: num: 2070, src obj: 1, src ofs: 0x13190, dst obj: 3, dst ofs: 0x187cc
   13194:	a1 bc 7f 01 00       	mov    eax,ds:@obj3:VESA_writeable_window                           ; fixup: num: 2069, src obj: 1, src ofs: 0x13195, dst obj: 3, dst ofs: 0x17fbc
   13199:	8a 54 24 28          	mov    dl,BYTE PTR [esp+0x28]
   1319d:	88 14 28             	mov    BYTE PTR [eax+ebp*1],dl
   131a0:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
   131a4:	46                   	inc    esi
   131a5:	41                   	inc    ecx
   131a6:	39 c6                	cmp    esi,eax
   131a8:	0f 8d e3 fe ff ff    	jge    gr_VESA_put_bitmap_window_branch_3
   131ae:	e9 35 ff ff ff       	jmp    gr_VESA_put_bitmap_window_branch_5
gr_VESA_put_bitmap_window_branch_9:
   131b3:	31 c0                	xor    eax,eax
   131b5:	0f bf 15 c4 7f 01 00 	movsx  edx,WORD PTR ds:@obj3:VESA_writeable_window_position         ; fixup: num: 2068, src obj: 1, src ofs: 0x131b8, dst obj: 3, dst ofs: 0x17fc4
   131bc:	66 8b 83 cc 7f 01 00 	mov    ax,WORD PTR [ebx+@obj3:line_start_table_window_offsets_variable_1]; fixup: num: 2067, src obj: 1, src ofs: 0x131bf, dst obj: 3, dst ofs: 0x17fcc
   131c3:	39 d0                	cmp    eax,edx
   131c5:	74 15                	je     gr_VESA_put_bitmap_window_branch_10
   131c7:	66 a3 c4 7f 01 00    	mov    ds:@obj3:VESA_writeable_window_position,ax                   ; fixup: num: 2066, src obj: 1, src ofs: 0x131c9, dst obj: 3, dst ofs: 0x17fc4
   131cd:	0f bf d0             	movsx  edx,ax
   131d0:	31 c0                	xor    eax,eax
   131d2:	a0 c1 7f 01 00       	mov    al,ds:@obj3:VESA_writeable_number                            ; fixup: num: 2082, src obj: 1, src ofs: 0x131d3, dst obj: 3, dst ofs: 0x17fc1
   131d7:	e8 c4 1c ff ff       	call   select_super_VGA_video_memory_window
gr_VESA_put_bitmap_window_branch_10:
   131dc:	0f bf 04 7d cc 97 01 00 	movsx  eax,WORD PTR [edi*2+@obj3:line_start_table_split]         ; fixup: num: 2081, src obj: 1, src ofs: 0x131e0, dst obj: 3, dst ofs: 0x197cc
   131e4:	29 c5                	sub    ebp,eax
   131e6:	a1 bc 7f 01 00       	mov    eax,ds:@obj3:VESA_writeable_window                           ; fixup: num: 2080, src obj: 1, src ofs: 0x131e7, dst obj: 3, dst ofs: 0x17fbc
   131eb:	8a 54 24 28          	mov    dl,BYTE PTR [esp+0x28]
   131ef:	88 14 28             	mov    BYTE PTR [eax+ebp*1],dl
   131f2:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
   131f6:	46                   	inc    esi
   131f7:	41                   	inc    ecx
   131f8:	39 c6                	cmp    esi,eax
   131fa:	0f 8d 91 fe ff ff    	jge    gr_VESA_put_bitmap_window_branch_3
   13200:	e9 e3 fe ff ff       	jmp    gr_VESA_put_bitmap_window_branch_5
gr_VESA_put_bitmap_window_branch_11:
   13205:	83 c4 2c             	add    esp,0x2c
   13208:	5d                   	pop    ebp
   13209:	5f                   	pop    edi
   1320a:	5e                   	pop    esi
   1320b:	c2 0c 00             	ret    0xc
   1320e:	8b c0                	mov    eax,eax

;-------------------------------------------------
;  Function 'get_bm_window'                      -
;-------------------------------------------------
get_bm_window:
   13210:	56                   	push   esi
   13211:	57                   	push   edi
   13212:	55                   	push   ebp
   13213:	83 ec 10             	sub    esp,0x10
   13216:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
   1321a:	89 d6                	mov    esi,edx
   1321c:	89 dd                	mov    ebp,ebx
   1321e:	8b 54 24 24          	mov    edx,DWORD PTR [esp+0x24]
   13222:	85 d2                	test   edx,edx
   13224:	75 2b                	jne    get_bm_window_branch_2
   13226:	b8 0c 00 00 00       	mov    eax,0xc
   1322b:	e8 e8 ec 05 00       	call   W?$nwn(ui)pnv
   13230:	85 c0                	test   eax,eax
   13232:	74 08                	je     get_bm_window_branch_1
   13234:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
   13237:	89 10                	mov    DWORD PTR [eax],edx
   13239:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
get_bm_window_branch_1:
   1323c:	89 44 24 24          	mov    DWORD PTR [esp+0x24],eax
   13240:	75 0f                	jne    get_bm_window_branch_2
   13242:	bb fd 14 00 00       	mov    ebx,@obj3:graphics_cpp_variable_9                            ; fixup: num: 2079, src obj: 1, src ofs: 0x13243, dst obj: 3, dst ofs: 0x14fd
   13247:	ba 36 01 00 00       	mov    edx,0x136
   1324c:	e8 df 4d 02 00       	call   _error_report
get_bm_window_branch_2:
   13251:	83 7c 24 20 00       	cmp    DWORD PTR [esp+0x20],0x0
   13256:	75 07                	jne    get_bm_window_branch_3
   13258:	31 c0                	xor    eax,eax
   1325a:	e9 10 01 00 00       	jmp    get_bm_window_branch_11
get_bm_window_branch_3:
   1325f:	29 f1                	sub    ecx,esi
   13261:	8d 79 01             	lea    edi,[ecx+0x1]
   13264:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
   13268:	8b 54 24 24          	mov    edx,DWORD PTR [esp+0x24]
   1326c:	29 cd                	sub    ebp,ecx
   1326e:	89 3c 24             	mov    DWORD PTR [esp],edi
   13271:	45                   	inc    ebp
   13272:	8b 0a                	mov    ecx,DWORD PTR [edx]
   13274:	89 e8                	mov    eax,ebp
   13276:	39 cd                	cmp    ebp,ecx
   13278:	75 09                	jne    get_bm_window_branch_4
   1327a:	3b 7a 04             	cmp    edi,DWORD PTR [edx+0x4]
   1327d:	0f 84 78 00 00 00    	je     get_bm_window_branch_7
get_bm_window_branch_4:
   13283:	89 02                	mov    DWORD PTR [edx],eax
   13285:	8b 04 24             	mov    eax,DWORD PTR [esp]
   13288:	89 42 04             	mov    DWORD PTR [edx+0x4],eax
   1328b:	83 3a 00             	cmp    DWORD PTR [edx],0x0
   1328e:	75 1a                	jne    get_bm_window_branch_5
   13290:	8b 5a 04             	mov    ebx,DWORD PTR [edx+0x4]
   13293:	85 db                	test   ebx,ebx
   13295:	75 13                	jne    get_bm_window_branch_5
   13297:	8b 4a 08             	mov    ecx,DWORD PTR [edx+0x8]
   1329a:	85 c9                	test   ecx,ecx
   1329c:	74 5d                	je     get_bm_window_branch_7
   1329e:	89 c8                	mov    eax,ecx
   132a0:	e8 43 e1 05 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   132a5:	89 5a 08             	mov    DWORD PTR [edx+0x8],ebx
   132a8:	eb 51                	jmp    get_bm_window_branch_7
get_bm_window_branch_5:
   132aa:	8b 4a 08             	mov    ecx,DWORD PTR [edx+0x8]
   132ad:	85 c9                	test   ecx,ecx
   132af:	74 07                	je     get_bm_window_branch_6
   132b1:	89 c8                	mov    eax,ecx
   132b3:	e8 30 e1 05 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
get_bm_window_branch_6:
   132b8:	8b 02                	mov    eax,DWORD PTR [edx]
   132ba:	0f af 42 04          	imul   eax,DWORD PTR [edx+0x4]
   132be:	c7 42 08 00 00 00 00 	mov    DWORD PTR [edx+0x8],0x0
   132c5:	e8 c9 e1 05 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   132ca:	89 42 08             	mov    DWORD PTR [edx+0x8],eax
   132cd:	85 c0                	test   eax,eax
   132cf:	75 2a                	jne    get_bm_window_branch_7
   132d1:	8b 02                	mov    eax,DWORD PTR [edx]
   132d3:	50                   	push   eax
   132d4:	8b 5a 04             	mov    ebx,DWORD PTR [edx+0x4]
   132d7:	53                   	push   ebx
   132d8:	68 11 14 00 00       	push   @obj3:graphics_cpp_variable_3                                ; fixup: num: 2086, src obj: 1, src ofs: 0x132d9, dst obj: 3, dst ofs: 0x1411
   132dd:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 2085, src obj: 1, src ofs: 0x132de, dst obj: 3, dst ofs: 0x237fc
   132e2:	ba 96 00 00 00       	mov    edx,0x96
   132e7:	e8 f5 d8 05 00       	call   sprintf_
   132ec:	83 c4 10             	add    esp,0x10
   132ef:	bb fc 37 02 00       	mov    ebx,@obj3:log_buffer                                         ; fixup: num: 2084, src obj: 1, src ofs: 0x132f0, dst obj: 3, dst ofs: 0x237fc
   132f4:	31 c0                	xor    eax,eax
   132f6:	e8 35 4d 02 00       	call   _error_report
get_bm_window_branch_7:
   132fb:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
   132ff:	83 78 08 00          	cmp    DWORD PTR [eax+0x8],0x0
   13303:	75 11                	jne    get_bm_window_branch_8
   13305:	bb 28 15 00 00       	mov    ebx,@obj3:graphics_cpp_variable_10                           ; fixup: num: 2083, src obj: 1, src ofs: 0x13306, dst obj: 3, dst ofs: 0x1528
   1330a:	ba 3c 01 00 00       	mov    edx,0x13c
   1330f:	31 c0                	xor    eax,eax
   13311:	e8 1a 4d 02 00       	call   _error_report
get_bm_window_branch_8:
   13316:	85 ff                	test   edi,edi
   13318:	7e 51                	jle    get_bm_window_branch_10
   1331a:	89 f2                	mov    edx,esi
   1331c:	01 fe                	add    esi,edi
   1331e:	89 6c 24 04          	mov    DWORD PTR [esp+0x4],ebp
   13322:	89 74 24 08          	mov    DWORD PTR [esp+0x8],esi
   13326:	6b dd 00             	imul   ebx,ebp,0x0
get_bm_window_branch_9:
   13329:	8b 74 24 20          	mov    esi,DWORD PTR [esp+0x20]
   1332d:	8b 36                	mov    esi,DWORD PTR [esi]
   1332f:	0f af f2             	imul   esi,edx
   13332:	8b 7c 24 20          	mov    edi,DWORD PTR [esp+0x20]
   13336:	8b 7f 08             	mov    edi,DWORD PTR [edi+0x8]
   13339:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
   1333d:	01 fe                	add    esi,edi
   1333f:	8b 7c 24 24          	mov    edi,DWORD PTR [esp+0x24]
   13343:	01 ce                	add    esi,ecx
   13345:	8b 7f 08             	mov    edi,DWORD PTR [edi+0x8]
   13348:	89 e9                	mov    ecx,ebp
   1334a:	01 df                	add    edi,ebx
   1334c:	42                   	inc    edx
   1334d:	57                   	push   edi
   1334e:	89 c8                	mov    eax,ecx
   13350:	c1 e9 02             	shr    ecx,0x2
   13353:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
   13355:	8a c8                	mov    cl,al
   13357:	80 e1 03             	and    cl,0x3
   1335a:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
   1335c:	5f                   	pop    edi
   1335d:	8b 74 24 04          	mov    esi,DWORD PTR [esp+0x4]
   13361:	8b 7c 24 08          	mov    edi,DWORD PTR [esp+0x8]
   13365:	01 f3                	add    ebx,esi
   13367:	39 fa                	cmp    edx,edi
   13369:	7c be                	jl     get_bm_window_branch_9
get_bm_window_branch_10:
   1336b:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
get_bm_window_branch_11:
   1336f:	83 c4 10             	add    esp,0x10
   13372:	5d                   	pop    ebp
   13373:	5f                   	pop    edi
   13374:	5e                   	pop    esi
   13375:	c2 08 00             	ret    0x8
   13378:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   1337e:	8b d2                	mov    edx,edx

;-------------------------------------------------
;  Function 'get_transparent_bm_window'          -
;-------------------------------------------------
get_transparent_bm_window:
   13380:	56                   	push   esi
   13381:	57                   	push   edi
   13382:	55                   	push   ebp
   13383:	83 ec 18             	sub    esp,0x18
   13386:	8b 74 24 28          	mov    esi,DWORD PTR [esp+0x28]
   1338a:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
   1338e:	89 d5                	mov    ebp,edx
   13390:	89 c8                	mov    eax,ecx
   13392:	8b 4c 24 2c          	mov    ecx,DWORD PTR [esp+0x2c]
   13396:	2b 5c 24 08          	sub    ebx,DWORD PTR [esp+0x8]
   1339a:	29 e8                	sub    eax,ebp
   1339c:	43                   	inc    ebx
   1339d:	8d 78 01             	lea    edi,[eax+0x1]
   133a0:	89 1c 24             	mov    DWORD PTR [esp],ebx
   133a3:	85 c9                	test   ecx,ecx
   133a5:	75 6f                	jne    get_transparent_bm_window_branch_3
   133a7:	b8 0c 00 00 00       	mov    eax,0xc
   133ac:	e8 e2 e0 05 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   133b1:	89 c1                	mov    ecx,eax
   133b3:	85 c0                	test   eax,eax
   133b5:	75 0f                	jne    get_transparent_bm_window_branch_1
   133b7:	bb 53 15 00 00       	mov    ebx,@obj3:graphics_cpp_variable_11                           ; fixup: num: 2087, src obj: 1, src ofs: 0x133b8, dst obj: 3, dst ofs: 0x1553
   133bc:	ba 5f 01 00 00       	mov    edx,0x15f
   133c1:	e8 6a 4c 02 00       	call   _error_report
get_transparent_bm_window_branch_1:
   133c6:	8b 04 24             	mov    eax,DWORD PTR [esp]
   133c9:	89 01                	mov    DWORD PTR [ecx],eax
   133cb:	0f af c7             	imul   eax,edi
   133ce:	89 79 04             	mov    DWORD PTR [ecx+0x4],edi
   133d1:	e8 bd e0 05 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   133d6:	89 41 08             	mov    DWORD PTR [ecx+0x8],eax
   133d9:	85 c0                	test   eax,eax
   133db:	75 29                	jne    get_transparent_bm_window_branch_2
   133dd:	57                   	push   edi
   133de:	8b 7c 24 04          	mov    edi,DWORD PTR [esp+0x4]
   133e2:	57                   	push   edi
   133e3:	68 6b 15 00 00       	push   @obj3:graphics_cpp_variable_12                               ; fixup: num: 2090, src obj: 1, src ofs: 0x133e4, dst obj: 3, dst ofs: 0x156b
   133e8:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 2089, src obj: 1, src ofs: 0x133e9, dst obj: 3, dst ofs: 0x237fc
   133ed:	bb fc 37 02 00       	mov    ebx,@obj3:log_buffer                                         ; fixup: num: 2088, src obj: 1, src ofs: 0x133ee, dst obj: 3, dst ofs: 0x237fc
   133f2:	e8 ea d7 05 00       	call   sprintf_
   133f7:	83 c4 10             	add    esp,0x10
   133fa:	ba 67 01 00 00       	mov    edx,0x167
   133ff:	31 c0                	xor    eax,eax
   13401:	e8 2a 4c 02 00       	call   _error_report
get_transparent_bm_window_branch_2:
   13406:	8b 19                	mov    ebx,DWORD PTR [ecx]
   13408:	0f af 59 04          	imul   ebx,DWORD PTR [ecx+0x4]
   1340c:	8b 41 08             	mov    eax,DWORD PTR [ecx+0x8]
   1340f:	31 d2                	xor    edx,edx
   13411:	e8 ba df 05 00       	call   memset_
get_transparent_bm_window_branch_3:
   13416:	85 f6                	test   esi,esi
   13418:	75 07                	jne    get_transparent_bm_window_branch_4
   1341a:	31 c0                	xor    eax,eax
   1341c:	e9 8d 00 00 00       	jmp    get_transparent_bm_window_branch_11
get_transparent_bm_window_branch_4:
   13421:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
   13424:	8b 79 04             	mov    edi,DWORD PTR [ecx+0x4]
   13427:	31 db                	xor    ebx,ebx
   13429:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
   1342d:	89 5c 24 14          	mov    DWORD PTR [esp+0x14],ebx
   13431:	85 ff                	test   edi,edi
   13433:	0f 86 73 00 00 00    	jbe    get_transparent_bm_window_branch_10
   13439:	89 6c 24 0c          	mov    DWORD PTR [esp+0xc],ebp
get_transparent_bm_window_branch_5:
   1343d:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
   13441:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
   13445:	85 c0                	test   eax,eax
   13447:	7c 0e                	jl     get_transparent_bm_window_branch_6
   13449:	3b 44 24 04          	cmp    eax,DWORD PTR [esp+0x4]
   1344d:	7d 08                	jge    get_transparent_bm_window_branch_6
   1344f:	8b 29                	mov    ebp,DWORD PTR [ecx]
   13451:	31 d2                	xor    edx,edx
   13453:	85 ed                	test   ebp,ebp
   13455:	77 1b                	ja     get_transparent_bm_window_branch_7
get_transparent_bm_window_branch_6:
   13457:	8b 6c 24 0c          	mov    ebp,DWORD PTR [esp+0xc]
   1345b:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
   1345f:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
   13462:	45                   	inc    ebp
   13463:	40                   	inc    eax
   13464:	89 6c 24 0c          	mov    DWORD PTR [esp+0xc],ebp
   13468:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
   1346c:	39 d0                	cmp    eax,edx
   1346e:	73 3c                	jae    get_transparent_bm_window_branch_10
   13470:	eb cb                	jmp    get_transparent_bm_window_branch_5
get_transparent_bm_window_branch_7:
   13472:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
get_transparent_bm_window_branch_8:
   13476:	85 c0                	test   eax,eax
   13478:	7c 28                	jl     get_transparent_bm_window_branch_9
   1347a:	8b 2e                	mov    ebp,DWORD PTR [esi]
   1347c:	39 e8                	cmp    eax,ebp
   1347e:	73 22                	jae    get_transparent_bm_window_branch_9
   13480:	8b 5c 24 10          	mov    ebx,DWORD PTR [esp+0x10]
   13484:	0f af dd             	imul   ebx,ebp
   13487:	8b 7e 08             	mov    edi,DWORD PTR [esi+0x8]
   1348a:	01 fb                	add    ebx,edi
   1348c:	8a 1c 03             	mov    bl,BYTE PTR [ebx+eax*1]
   1348f:	84 db                	test   bl,bl
   13491:	74 0f                	je     get_transparent_bm_window_branch_9
   13493:	8b 7c 24 14          	mov    edi,DWORD PTR [esp+0x14]
   13497:	0f af 39             	imul   edi,DWORD PTR [ecx]
   1349a:	8b 69 08             	mov    ebp,DWORD PTR [ecx+0x8]
   1349d:	01 ef                	add    edi,ebp
   1349f:	88 1c 3a             	mov    BYTE PTR [edx+edi*1],bl
get_transparent_bm_window_branch_9:
   134a2:	42                   	inc    edx
   134a3:	8b 19                	mov    ebx,DWORD PTR [ecx]
   134a5:	40                   	inc    eax
   134a6:	39 da                	cmp    edx,ebx
   134a8:	73 ad                	jae    get_transparent_bm_window_branch_6
   134aa:	eb ca                	jmp    get_transparent_bm_window_branch_8
get_transparent_bm_window_branch_10:
   134ac:	89 c8                	mov    eax,ecx
get_transparent_bm_window_branch_11:
   134ae:	83 c4 18             	add    esp,0x18
   134b1:	5d                   	pop    ebp
   134b2:	5f                   	pop    edi
   134b3:	5e                   	pop    esi
   134b4:	c2 08 00             	ret    0x8
   134b7:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   134bd:	8d 52 00             	lea    edx,[edx+0x0]

;-------------------------------------------------
;  Function 'crop_bm'                            -
;-------------------------------------------------
crop_bm:
   134c0:	51                   	push   ecx
   134c1:	56                   	push   esi
   134c2:	57                   	push   edi
   134c3:	55                   	push   ebp
   134c4:	83 ec 34             	sub    esp,0x34
   134c7:	89 54 24 18          	mov    DWORD PTR [esp+0x18],edx
   134cb:	89 5c 24 20          	mov    DWORD PTR [esp+0x20],ebx
   134cf:	8b 10                	mov    edx,DWORD PTR [eax]
   134d1:	31 ff                	xor    edi,edi
   134d3:	85 d2                	test   edx,edx
   134d5:	77 07                	ja     crop_bm_branch_2
   134d7:	eb 2e                	jmp    crop_bm_branch_6
crop_bm_branch_1:
   134d9:	47                   	inc    edi
   134da:	3b 38                	cmp    edi,DWORD PTR [eax]
   134dc:	73 29                	jae    crop_bm_branch_6
crop_bm_branch_2:
   134de:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
   134e1:	31 d2                	xor    edx,edx
   134e3:	85 c9                	test   ecx,ecx
   134e5:	77 0e                	ja     crop_bm_branch_4
   134e7:	eb f0                	jmp    crop_bm_branch_1
crop_bm_branch_3:
   134e9:	42                   	inc    edx
   134ea:	8b 68 04             	mov    ebp,DWORD PTR [eax+0x4]
   134ed:	01 f3                	add    ebx,esi
   134ef:	39 ea                	cmp    edx,ebp
   134f1:	72 0e                	jb     crop_bm_branch_5
   134f3:	eb e4                	jmp    crop_bm_branch_1
crop_bm_branch_4:
   134f5:	8b 30                	mov    esi,DWORD PTR [eax]
   134f7:	6b de 00             	imul   ebx,esi,0x0
   134fa:	8b 68 08             	mov    ebp,DWORD PTR [eax+0x8]
   134fd:	01 fb                	add    ebx,edi
   134ff:	01 eb                	add    ebx,ebp
crop_bm_branch_5:
   13501:	8a 0b                	mov    cl,BYTE PTR [ebx]
   13503:	84 c9                	test   cl,cl
   13505:	74 e2                	je     crop_bm_branch_3
crop_bm_branch_6:
   13507:	8b 28                	mov    ebp,DWORD PTR [eax]
   13509:	4d                   	dec    ebp
   1350a:	85 ed                	test   ebp,ebp
   1350c:	7d 07                	jge    crop_bm_branch_8
   1350e:	eb 36                	jmp    crop_bm_branch_12
crop_bm_branch_7:
   13510:	4d                   	dec    ebp
   13511:	85 ed                	test   ebp,ebp
   13513:	7c 31                	jl     crop_bm_branch_12
crop_bm_branch_8:
   13515:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
   13518:	31 db                	xor    ebx,ebx
   1351a:	85 d2                	test   edx,edx
   1351c:	77 0e                	ja     crop_bm_branch_10
   1351e:	eb f0                	jmp    crop_bm_branch_7
crop_bm_branch_9:
   13520:	43                   	inc    ebx
   13521:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
   13524:	01 f2                	add    edx,esi
   13526:	39 cb                	cmp    ebx,ecx
   13528:	72 16                	jb     crop_bm_branch_11
   1352a:	eb e4                	jmp    crop_bm_branch_7
crop_bm_branch_10:
   1352c:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
   1352f:	8b 30                	mov    esi,DWORD PTR [eax]
   13531:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
   13535:	6b d6 00             	imul   edx,esi,0x0
   13538:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
   1353c:	01 ea                	add    edx,ebp
   1353e:	01 ca                	add    edx,ecx
crop_bm_branch_11:
   13540:	8a 0a                	mov    cl,BYTE PTR [edx]
   13542:	84 c9                	test   cl,cl
   13544:	74 da                	je     crop_bm_branch_9
crop_bm_branch_12:
   13546:	31 f6                	xor    esi,esi
   13548:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
   1354b:	89 74 24 14          	mov    DWORD PTR [esp+0x14],esi
   1354f:	85 d2                	test   edx,edx
   13551:	77 02                	ja     crop_bm_branch_13
   13553:	eb 47                	jmp    crop_bm_branch_19
crop_bm_branch_13:
   13555:	8b 10                	mov    edx,DWORD PTR [eax]
   13557:	89 14 24             	mov    DWORD PTR [esp],edx
   1355a:	0f af f2             	imul   esi,edx
crop_bm_branch_14:
   1355d:	8b 10                	mov    edx,DWORD PTR [eax]
   1355f:	31 db                	xor    ebx,ebx
   13561:	85 d2                	test   edx,edx
   13563:	77 2c                	ja     crop_bm_branch_17
   13565:	eb 08                	jmp    crop_bm_branch_16
crop_bm_branch_15:
   13567:	43                   	inc    ebx
   13568:	8b 08                	mov    ecx,DWORD PTR [eax]
   1356a:	42                   	inc    edx
   1356b:	39 cb                	cmp    ebx,ecx
   1356d:	72 27                	jb     crop_bm_branch_18
crop_bm_branch_16:
   1356f:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
   13573:	8b 1c 24             	mov    ebx,DWORD PTR [esp]
   13576:	41                   	inc    ecx
   13577:	01 de                	add    esi,ebx
   13579:	8b 58 04             	mov    ebx,DWORD PTR [eax+0x4]
   1357c:	89 4c 24 14          	mov    DWORD PTR [esp+0x14],ecx
   13580:	39 d9                	cmp    ecx,ebx
   13582:	72 d9                	jb     crop_bm_branch_14
   13584:	8b 70 04             	mov    esi,DWORD PTR [eax+0x4]
   13587:	4e                   	dec    esi
   13588:	85 f6                	test   esi,esi
   1358a:	7d 1a                	jge    crop_bm_branch_20
   1358c:	e9 60 00 00 00       	jmp    crop_bm_branch_26
crop_bm_branch_17:
   13591:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
   13594:	01 f2                	add    edx,esi
crop_bm_branch_18:
   13596:	8a 0a                	mov    cl,BYTE PTR [edx]
   13598:	84 c9                	test   cl,cl
   1359a:	74 cb                	je     crop_bm_branch_15
crop_bm_branch_19:
   1359c:	8b 70 04             	mov    esi,DWORD PTR [eax+0x4]
   1359f:	4e                   	dec    esi
   135a0:	85 f6                	test   esi,esi
   135a2:	7d 02                	jge    crop_bm_branch_20
   135a4:	eb 4b                	jmp    crop_bm_branch_26
crop_bm_branch_20:
   135a6:	8b 10                	mov    edx,DWORD PTR [eax]
   135a8:	89 54 24 30          	mov    DWORD PTR [esp+0x30],edx
   135ac:	89 d1                	mov    ecx,edx
   135ae:	0f af d6             	imul   edx,esi
   135b1:	f7 d9                	neg    ecx
   135b3:	89 4c 24 30          	mov    DWORD PTR [esp+0x30],ecx
   135b7:	89 54 24 10          	mov    DWORD PTR [esp+0x10],edx
crop_bm_branch_21:
   135bb:	8b 10                	mov    edx,DWORD PTR [eax]
   135bd:	31 db                	xor    ebx,ebx
   135bf:	85 d2                	test   edx,edx
   135c1:	77 1f                	ja     crop_bm_branch_24
   135c3:	eb 08                	jmp    crop_bm_branch_23
crop_bm_branch_22:
   135c5:	43                   	inc    ebx
   135c6:	8b 08                	mov    ecx,DWORD PTR [eax]
   135c8:	42                   	inc    edx
   135c9:	39 cb                	cmp    ebx,ecx
   135cb:	72 1e                	jb     crop_bm_branch_25
crop_bm_branch_23:
   135cd:	8b 54 24 30          	mov    edx,DWORD PTR [esp+0x30]
   135d1:	8b 5c 24 10          	mov    ebx,DWORD PTR [esp+0x10]
   135d5:	01 d3                	add    ebx,edx
   135d7:	4e                   	dec    esi
   135d8:	89 5c 24 10          	mov    DWORD PTR [esp+0x10],ebx
   135dc:	85 f6                	test   esi,esi
   135de:	7d db                	jge    crop_bm_branch_21
   135e0:	eb 0f                	jmp    crop_bm_branch_26
crop_bm_branch_24:
   135e2:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
   135e6:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
   135e9:	01 ca                	add    edx,ecx
crop_bm_branch_25:
   135eb:	8a 0a                	mov    cl,BYTE PTR [edx]
   135ed:	84 c9                	test   cl,cl
   135ef:	74 d4                	je     crop_bm_branch_22
crop_bm_branch_26:
   135f1:	3b 74 24 14          	cmp    esi,DWORD PTR [esp+0x14]
   135f5:	7c 04                	jl     crop_bm_branch_27
   135f7:	39 ef                	cmp    edi,ebp
   135f9:	7e 0a                	jle    crop_bm_branch_28
crop_bm_branch_27:
   135fb:	31 f6                	xor    esi,esi
   135fd:	31 ed                	xor    ebp,ebp
   135ff:	31 ff                	xor    edi,edi
   13601:	89 74 24 14          	mov    DWORD PTR [esp+0x14],esi
crop_bm_branch_28:
   13605:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
   13609:	8b 5c 24 20          	mov    ebx,DWORD PTR [esp+0x20]
   1360d:	89 7c 24 2c          	mov    DWORD PTR [esp+0x2c],edi
   13611:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
   13615:	89 3a                	mov    DWORD PTR [edx],edi
   13617:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
   1361b:	b8 0c 00 00 00       	mov    eax,0xc
   13620:	89 d1                	mov    ecx,edx
   13622:	89 13                	mov    DWORD PTR [ebx],edx
   13624:	e8 ef e8 05 00       	call   W?$nwn(ui)pnv
   13629:	85 c0                	test   eax,eax
   1362b:	74 13                	je     crop_bm_branch_29
   1362d:	c7 40 04 00 00 00 00 	mov    DWORD PTR [eax+0x4],0x0
   13634:	c7 40 08 00 00 00 00 	mov    DWORD PTR [eax+0x8],0x0
   1363b:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
   1363e:	89 10                	mov    DWORD PTR [eax],edx
crop_bm_branch_29:
   13640:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
   13644:	75 0f                	jne    crop_bm_branch_30
   13646:	bb fd 14 00 00       	mov    ebx,@obj3:graphics_cpp_variable_9                            ; fixup: num: 2091, src obj: 1, src ofs: 0x13647, dst obj: 3, dst ofs: 0x14fd
   1364b:	ba 36 01 00 00       	mov    edx,0x136
   13650:	e8 db 49 02 00       	call   _error_report
crop_bm_branch_30:
   13655:	83 7c 24 0c 00       	cmp    DWORD PTR [esp+0xc],0x0
   1365a:	75 07                	jne    crop_bm_branch_31
   1365c:	31 c0                	xor    eax,eax
   1365e:	e9 12 01 00 00       	jmp    crop_bm_branch_39
crop_bm_branch_31:
   13663:	8b 44 24 2c          	mov    eax,DWORD PTR [esp+0x2c]
   13667:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
   1366b:	29 ce                	sub    esi,ecx
   1366d:	29 c5                	sub    ebp,eax
   1366f:	8d 7e 01             	lea    edi,[esi+0x1]
   13672:	45                   	inc    ebp
   13673:	89 f8                	mov    eax,edi
   13675:	8b 32                	mov    esi,DWORD PTR [edx]
   13677:	89 6c 24 1c          	mov    DWORD PTR [esp+0x1c],ebp
   1367b:	39 f5                	cmp    ebp,esi
   1367d:	75 09                	jne    crop_bm_branch_32
   1367f:	3b 7a 04             	cmp    edi,DWORD PTR [edx+0x4]
   13682:	0f 84 79 00 00 00    	je     crop_bm_branch_35
crop_bm_branch_32:
   13688:	8b 5c 24 1c          	mov    ebx,DWORD PTR [esp+0x1c]
   1368c:	89 42 04             	mov    DWORD PTR [edx+0x4],eax
   1368f:	89 1a                	mov    DWORD PTR [edx],ebx
   13691:	83 3a 00             	cmp    DWORD PTR [edx],0x0
   13694:	75 1a                	jne    crop_bm_branch_33
   13696:	8b 5a 04             	mov    ebx,DWORD PTR [edx+0x4]
   13699:	85 db                	test   ebx,ebx
   1369b:	75 13                	jne    crop_bm_branch_33
   1369d:	8b 72 08             	mov    esi,DWORD PTR [edx+0x8]
   136a0:	85 f6                	test   esi,esi
   136a2:	74 5d                	je     crop_bm_branch_35
   136a4:	89 f0                	mov    eax,esi
   136a6:	e8 3d dd 05 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   136ab:	89 5a 08             	mov    DWORD PTR [edx+0x8],ebx
   136ae:	eb 51                	jmp    crop_bm_branch_35
crop_bm_branch_33:
   136b0:	8b 72 08             	mov    esi,DWORD PTR [edx+0x8]
   136b3:	85 f6                	test   esi,esi
   136b5:	74 07                	je     crop_bm_branch_34
   136b7:	89 f0                	mov    eax,esi
   136b9:	e8 2a dd 05 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
crop_bm_branch_34:
   136be:	8b 02                	mov    eax,DWORD PTR [edx]
   136c0:	0f af 42 04          	imul   eax,DWORD PTR [edx+0x4]
   136c4:	c7 42 08 00 00 00 00 	mov    DWORD PTR [edx+0x8],0x0
   136cb:	e8 c3 dd 05 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   136d0:	89 42 08             	mov    DWORD PTR [edx+0x8],eax
   136d3:	85 c0                	test   eax,eax
   136d5:	75 2a                	jne    crop_bm_branch_35
   136d7:	8b 02                	mov    eax,DWORD PTR [edx]
   136d9:	50                   	push   eax
   136da:	8b 5a 04             	mov    ebx,DWORD PTR [edx+0x4]
   136dd:	53                   	push   ebx
   136de:	68 11 14 00 00       	push   @obj3:graphics_cpp_variable_3                                ; fixup: num: 2095, src obj: 1, src ofs: 0x136df, dst obj: 3, dst ofs: 0x1411
   136e3:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 2094, src obj: 1, src ofs: 0x136e4, dst obj: 3, dst ofs: 0x237fc
   136e8:	ba 96 00 00 00       	mov    edx,0x96
   136ed:	e8 ef d4 05 00       	call   sprintf_
   136f2:	83 c4 10             	add    esp,0x10
   136f5:	bb fc 37 02 00       	mov    ebx,@obj3:log_buffer                                         ; fixup: num: 2093, src obj: 1, src ofs: 0x136f6, dst obj: 3, dst ofs: 0x237fc
   136fa:	31 c0                	xor    eax,eax
   136fc:	e8 2f 49 02 00       	call   _error_report
crop_bm_branch_35:
   13701:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
   13705:	83 78 08 00          	cmp    DWORD PTR [eax+0x8],0x0
   13709:	75 11                	jne    crop_bm_branch_36
   1370b:	bb 28 15 00 00       	mov    ebx,@obj3:graphics_cpp_variable_10                           ; fixup: num: 2092, src obj: 1, src ofs: 0x1370c, dst obj: 3, dst ofs: 0x1528
   13710:	ba 3c 01 00 00       	mov    edx,0x13c
   13715:	31 c0                	xor    eax,eax
   13717:	e8 14 49 02 00       	call   _error_report
crop_bm_branch_36:
   1371c:	85 ff                	test   edi,edi
   1371e:	7e 51                	jle    crop_bm_branch_38
   13720:	89 ca                	mov    edx,ecx
   13722:	01 f9                	add    ecx,edi
   13724:	89 6c 24 24          	mov    DWORD PTR [esp+0x24],ebp
   13728:	89 4c 24 28          	mov    DWORD PTR [esp+0x28],ecx
   1372c:	6b dd 00             	imul   ebx,ebp,0x0
crop_bm_branch_37:
   1372f:	8b 74 24 0c          	mov    esi,DWORD PTR [esp+0xc]
   13733:	8b 36                	mov    esi,DWORD PTR [esi]
   13735:	0f af f2             	imul   esi,edx
   13738:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
   1373c:	8b 7c 24 04          	mov    edi,DWORD PTR [esp+0x4]
   13740:	8b 4c 24 2c          	mov    ecx,DWORD PTR [esp+0x2c]
   13744:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
   13747:	8b 7f 08             	mov    edi,DWORD PTR [edi+0x8]
   1374a:	01 c6                	add    esi,eax
   1374c:	01 df                	add    edi,ebx
   1374e:	01 ce                	add    esi,ecx
   13750:	89 e9                	mov    ecx,ebp
   13752:	42                   	inc    edx
   13753:	57                   	push   edi
   13754:	89 c8                	mov    eax,ecx
   13756:	c1 e9 02             	shr    ecx,0x2
   13759:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
   1375b:	8a c8                	mov    cl,al
   1375d:	80 e1 03             	and    cl,0x3
   13760:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
   13762:	5f                   	pop    edi
   13763:	8b 74 24 24          	mov    esi,DWORD PTR [esp+0x24]
   13767:	8b 7c 24 28          	mov    edi,DWORD PTR [esp+0x28]
   1376b:	01 f3                	add    ebx,esi
   1376d:	39 fa                	cmp    edx,edi
   1376f:	7c be                	jl     crop_bm_branch_37
crop_bm_branch_38:
   13771:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
crop_bm_branch_39:
   13775:	83 c4 34             	add    esp,0x34
   13778:	5d                   	pop    ebp
   13779:	5f                   	pop    edi
   1377a:	5e                   	pop    esi
   1377b:	59                   	pop    ecx
   1377c:	c3                   	ret    
   1377d:	8d 40 00             	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'clear_bitmap'                       -
;-------------------------------------------------
clear_bitmap:
   13780:	53                   	push   ebx
   13781:	52                   	push   edx
   13782:	8b 10                	mov    edx,DWORD PTR [eax]
   13784:	8b 58 04             	mov    ebx,DWORD PTR [eax+0x4]
   13787:	0f af da             	imul   ebx,edx
   1378a:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
   1378d:	31 d2                	xor    edx,edx
   1378f:	e8 3c dc 05 00       	call   memset_
   13794:	5a                   	pop    edx
   13795:	5b                   	pop    ebx
   13796:	c3                   	ret    
   13797:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   1379d:	8d 52 00             	lea    edx,[edx+0x0]

;-------------------------------------------------
;  Function 'get_bm_pixel'                       -
;-------------------------------------------------
get_bm_pixel:
   137a0:	0f af 18             	imul   ebx,DWORD PTR [eax]
   137a3:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
   137a6:	01 d8                	add    eax,ebx
   137a8:	8a 04 02             	mov    al,BYTE PTR [edx+eax*1]
   137ab:	c3                   	ret    
   137ac:	8d 44 20 00          	lea    eax,[eax+eiz*1+0x0]

;-------------------------------------------------
;  Function 'set_bm_pixel'                       -
;-------------------------------------------------
set_bm_pixel:
   137b0:	0f af 18             	imul   ebx,DWORD PTR [eax]
   137b3:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
   137b6:	01 d8                	add    eax,ebx
   137b8:	88 0c 02             	mov    BYTE PTR [edx+eax*1],cl
   137bb:	c3                   	ret    
   137bc:	8d 44 20 00          	lea    eax,[eax+eiz*1+0x0]

;-------------------------------------------------
;  Function 'scale_bitmap'                       -
;-------------------------------------------------
scale_bitmap:
   137c0:	56                   	push   esi
   137c1:	57                   	push   edi
   137c2:	55                   	push   ebp
   137c3:	83 ec 28             	sub    esp,0x28
   137c6:	89 04 24             	mov    DWORD PTR [esp],eax
   137c9:	89 d6                	mov    esi,edx
   137cb:	89 df                	mov    edi,ebx
   137cd:	89 4c 24 08          	mov    DWORD PTR [esp+0x8],ecx
   137d1:	85 db                	test   ebx,ebx
   137d3:	75 11                	jne    scale_bitmap_branch_1
   137d5:	bb a9 15 00 00       	mov    ebx,@obj3:graphics_cpp_variable_13                           ; fixup: num: 2096, src obj: 1, src ofs: 0x137d6, dst obj: 3, dst ofs: 0x15a9
   137da:	ba ca 01 00 00       	mov    edx,0x1ca
   137df:	31 c0                	xor    eax,eax
   137e1:	e8 4a 48 02 00       	call   _error_report
scale_bitmap_branch_1:
   137e6:	8b 07                	mov    eax,DWORD PTR [edi]
   137e8:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
   137ec:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
   137f0:	8b 14 24             	mov    edx,DWORD PTR [esp]
   137f3:	8b 00                	mov    eax,DWORD PTR [eax]
   137f5:	8b 4f 04             	mov    ecx,DWORD PTR [edi+0x4]
   137f8:	39 d0                	cmp    eax,edx
   137fa:	72 0d                	jb     scale_bitmap_branch_2
   137fc:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
   13800:	3b 70 04             	cmp    esi,DWORD PTR [eax+0x4]
   13803:	0f 86 aa 00 00 00    	jbe    scale_bitmap_branch_7
scale_bitmap_branch_2:
   13809:	8b 5c 24 08          	mov    ebx,DWORD PTR [esp+0x8]
   1380d:	8b 04 24             	mov    eax,DWORD PTR [esp]
   13810:	8b 2b                	mov    ebp,DWORD PTR [ebx]
   13812:	89 74 24 04          	mov    DWORD PTR [esp+0x4],esi
   13816:	39 c5                	cmp    ebp,eax
   13818:	75 09                	jne    scale_bitmap_branch_3
   1381a:	3b 73 04             	cmp    esi,DWORD PTR [ebx+0x4]
   1381d:	0f 84 75 00 00 00    	je     scale_bitmap_branch_6
scale_bitmap_branch_3:
   13823:	89 03                	mov    DWORD PTR [ebx],eax
   13825:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
   13829:	8b 2b                	mov    ebp,DWORD PTR [ebx]
   1382b:	89 43 04             	mov    DWORD PTR [ebx+0x4],eax
   1382e:	85 ed                	test   ebp,ebp
   13830:	75 15                	jne    scale_bitmap_branch_4
   13832:	85 c0                	test   eax,eax
   13834:	75 11                	jne    scale_bitmap_branch_4
   13836:	8b 43 08             	mov    eax,DWORD PTR [ebx+0x8]
   13839:	85 c0                	test   eax,eax
   1383b:	74 5b                	je     scale_bitmap_branch_6
   1383d:	e8 a6 db 05 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   13842:	89 6b 08             	mov    DWORD PTR [ebx+0x8],ebp
   13845:	eb 51                	jmp    scale_bitmap_branch_6
scale_bitmap_branch_4:
   13847:	8b 53 08             	mov    edx,DWORD PTR [ebx+0x8]
   1384a:	85 d2                	test   edx,edx
   1384c:	74 07                	je     scale_bitmap_branch_5
   1384e:	89 d0                	mov    eax,edx
   13850:	e8 93 db 05 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
scale_bitmap_branch_5:
   13855:	8b 03                	mov    eax,DWORD PTR [ebx]
   13857:	0f af 43 04          	imul   eax,DWORD PTR [ebx+0x4]
   1385b:	c7 43 08 00 00 00 00 	mov    DWORD PTR [ebx+0x8],0x0
   13862:	e8 2c dc 05 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   13867:	89 43 08             	mov    DWORD PTR [ebx+0x8],eax
   1386a:	85 c0                	test   eax,eax
   1386c:	75 2a                	jne    scale_bitmap_branch_6
   1386e:	8b 13                	mov    edx,DWORD PTR [ebx]
   13870:	52                   	push   edx
   13871:	8b 6b 04             	mov    ebp,DWORD PTR [ebx+0x4]
   13874:	55                   	push   ebp
   13875:	68 11 14 00 00       	push   @obj3:graphics_cpp_variable_3                                ; fixup: num: 2099, src obj: 1, src ofs: 0x13876, dst obj: 3, dst ofs: 0x1411
   1387a:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 2098, src obj: 1, src ofs: 0x1387b, dst obj: 3, dst ofs: 0x237fc
   1387f:	bb fc 37 02 00       	mov    ebx,@obj3:log_buffer                                         ; fixup: num: 2097, src obj: 1, src ofs: 0x13880, dst obj: 3, dst ofs: 0x237fc
   13884:	e8 58 d3 05 00       	call   sprintf_
   13889:	83 c4 10             	add    esp,0x10
   1388c:	ba 96 00 00 00       	mov    edx,0x96
   13891:	31 c0                	xor    eax,eax
   13893:	e8 98 47 02 00       	call   _error_report
scale_bitmap_branch_6:
   13898:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
   1389c:	83 78 08 00          	cmp    DWORD PTR [eax+0x8],0x0
   138a0:	75 11                	jne    scale_bitmap_branch_7
   138a2:	bb c5 15 00 00       	mov    ebx,@obj3:graphics_cpp_variable_14                           ; fixup: num: 2100, src obj: 1, src ofs: 0x138a3, dst obj: 3, dst ofs: 0x15c5
   138a7:	ba d0 01 00 00       	mov    edx,0x1d0
   138ac:	31 c0                	xor    eax,eax
   138ae:	e8 7d 47 02 00       	call   _error_report
scale_bitmap_branch_7:
   138b3:	8b 5c 24 08          	mov    ebx,DWORD PTR [esp+0x8]
   138b7:	8b 04 24             	mov    eax,DWORD PTR [esp]
   138ba:	89 03                	mov    DWORD PTR [ebx],eax
   138bc:	89 73 04             	mov    DWORD PTR [ebx+0x4],esi
   138bf:	8b 6c 24 14          	mov    ebp,DWORD PTR [esp+0x14]
   138c3:	8b 47 08             	mov    eax,DWORD PTR [edi+0x8]
   138c6:	8b 5b 08             	mov    ebx,DWORD PTR [ebx+0x8]
   138c9:	bf 00 80 00 00       	mov    edi,0x8000
   138ce:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
   138d2:	8b 04 24             	mov    eax,DWORD PTR [esp]
   138d5:	89 7c 24 1c          	mov    DWORD PTR [esp+0x1c],edi
   138d9:	39 e8                	cmp    eax,ebp
   138db:	0f 8e c8 00 00 00    	jle    scale_bitmap_branch_15
   138e1:	c1 e0 10             	shl    eax,0x10
   138e4:	31 d2                	xor    edx,edx
   138e6:	f7 f5                	div    ebp
   138e8:	89 44 24 20          	mov    DWORD PTR [esp+0x20],eax
   138ec:	89 f0                	mov    eax,esi
   138ee:	31 d2                	xor    edx,edx
   138f0:	c1 e0 10             	shl    eax,0x10
   138f3:	f7 f1                	div    ecx
   138f5:	89 4c 24 24          	mov    DWORD PTR [esp+0x24],ecx
   138f9:	bd ff ff 00 00       	mov    ebp,0xffff
   138fe:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
scale_bitmap_branch_8:
   13902:	8b 74 24 24          	mov    esi,DWORD PTR [esp+0x24]
   13906:	4e                   	dec    esi
   13907:	89 74 24 24          	mov    DWORD PTR [esp+0x24],esi
   1390b:	66 83 fe ff          	cmp    si,0xffff
   1390f:	0f 84 0e 01 00 00    	je     scale_bitmap_branch_19
   13915:	bf 00 80 00 00       	mov    edi,0x8000
   1391a:	8b 74 24 18          	mov    esi,DWORD PTR [esp+0x18]
   1391e:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
scale_bitmap_branch_9:
   13922:	4a                   	dec    edx
   13923:	66 83 fa ff          	cmp    dx,0xffff
   13927:	74 26                	je     scale_bitmap_branch_12
   13929:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
   1392d:	01 cf                	add    edi,ecx
   1392f:	89 f9                	mov    ecx,edi
   13931:	c1 e9 10             	shr    ecx,0x10
   13934:	0f bf c1             	movsx  eax,cx
   13937:	85 c0                	test   eax,eax
   13939:	74 11                	je     scale_bitmap_branch_11
   1393b:	21 ef                	and    edi,ebp
scale_bitmap_branch_10:
   1393d:	49                   	dec    ecx
   1393e:	66 83 f9 ff          	cmp    cx,0xffff
   13942:	74 08                	je     scale_bitmap_branch_11
   13944:	43                   	inc    ebx
   13945:	8a 06                	mov    al,BYTE PTR [esi]
   13947:	88 43 ff             	mov    BYTE PTR [ebx-0x1],al
   1394a:	eb f1                	jmp    scale_bitmap_branch_10
scale_bitmap_branch_11:
   1394c:	46                   	inc    esi
   1394d:	eb d3                	jmp    scale_bitmap_branch_9
scale_bitmap_branch_12:
   1394f:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
   13953:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
   13957:	01 c2                	add    edx,eax
   13959:	89 d0                	mov    eax,edx
   1395b:	c1 e8 10             	shr    eax,0x10
   1395e:	48                   	dec    eax
   1395f:	89 54 24 1c          	mov    DWORD PTR [esp+0x1c],edx
   13963:	89 c2                	mov    edx,eax
scale_bitmap_branch_13:
   13965:	4a                   	dec    edx
   13966:	66 83 fa ff          	cmp    dx,0xffff
   1396a:	74 20                	je     scale_bitmap_branch_14
   1396c:	8b 04 24             	mov    eax,DWORD PTR [esp]
   1396f:	89 de                	mov    esi,ebx
   13971:	89 df                	mov    edi,ebx
   13973:	89 c1                	mov    ecx,eax
   13975:	29 c6                	sub    esi,eax
   13977:	57                   	push   edi
   13978:	89 c8                	mov    eax,ecx
   1397a:	c1 e9 02             	shr    ecx,0x2
   1397d:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
   1397f:	8a c8                	mov    cl,al
   13981:	80 e1 03             	and    cl,0x3
   13984:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
   13986:	5f                   	pop    edi
   13987:	03 1c 24             	add    ebx,DWORD PTR [esp]
   1398a:	eb d9                	jmp    scale_bitmap_branch_13
scale_bitmap_branch_14:
   1398c:	8b 74 24 1c          	mov    esi,DWORD PTR [esp+0x1c]
   13990:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
   13994:	8b 7c 24 18          	mov    edi,DWORD PTR [esp+0x18]
   13998:	21 ee                	and    esi,ebp
   1399a:	01 c7                	add    edi,eax
   1399c:	89 74 24 1c          	mov    DWORD PTR [esp+0x1c],esi
   139a0:	89 7c 24 18          	mov    DWORD PTR [esp+0x18],edi
   139a4:	e9 59 ff ff ff       	jmp    scale_bitmap_branch_8
scale_bitmap_branch_15:
   139a9:	8b 3c 24             	mov    edi,DWORD PTR [esp]
   139ac:	89 e8                	mov    eax,ebp
   139ae:	31 d2                	xor    edx,edx
   139b0:	c1 e0 10             	shl    eax,0x10
   139b3:	f7 f7                	div    edi
   139b5:	89 c5                	mov    ebp,eax
   139b7:	89 c8                	mov    eax,ecx
   139b9:	31 d2                	xor    edx,edx
   139bb:	c1 e0 10             	shl    eax,0x10
   139be:	f7 f6                	div    esi
   139c0:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
   139c4:	89 f2                	mov    edx,esi
scale_bitmap_branch_16:
   139c6:	4a                   	dec    edx
   139c7:	66 83 fa ff          	cmp    dx,0xffff
   139cb:	74 56                	je     scale_bitmap_branch_19
   139cd:	be 00 80 00 00       	mov    esi,0x8000
   139d2:	8b 7c 24 18          	mov    edi,DWORD PTR [esp+0x18]
   139d6:	8b 0c 24             	mov    ecx,DWORD PTR [esp]
scale_bitmap_branch_17:
   139d9:	49                   	dec    ecx
   139da:	66 83 f9 ff          	cmp    cx,0xffff
   139de:	74 16                	je     scale_bitmap_branch_18
   139e0:	8a 07                	mov    al,BYTE PTR [edi]
   139e2:	01 ee                	add    esi,ebp
   139e4:	88 03                	mov    BYTE PTR [ebx],al
   139e6:	89 f0                	mov    eax,esi
   139e8:	43                   	inc    ebx
   139e9:	c1 e8 10             	shr    eax,0x10
   139ec:	81 e6 ff ff 00 00    	and    esi,0xffff
   139f2:	01 c7                	add    edi,eax
   139f4:	eb e3                	jmp    scale_bitmap_branch_17
scale_bitmap_branch_18:
   139f6:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
   139fa:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
   139fe:	01 c1                	add    ecx,eax
   13a00:	89 c8                	mov    eax,ecx
   13a02:	8b 74 24 14          	mov    esi,DWORD PTR [esp+0x14]
   13a06:	c1 e8 10             	shr    eax,0x10
   13a09:	0f af c6             	imul   eax,esi
   13a0c:	8b 7c 24 18          	mov    edi,DWORD PTR [esp+0x18]
   13a10:	89 4c 24 1c          	mov    DWORD PTR [esp+0x1c],ecx
   13a14:	31 c9                	xor    ecx,ecx
   13a16:	01 c7                	add    edi,eax
   13a18:	66 89 4c 24 1e       	mov    WORD PTR [esp+0x1e],cx
   13a1d:	89 7c 24 18          	mov    DWORD PTR [esp+0x18],edi
   13a21:	eb a3                	jmp    scale_bitmap_branch_16
scale_bitmap_branch_19:
   13a23:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
   13a27:	83 c4 28             	add    esp,0x28
   13a2a:	5d                   	pop    ebp
   13a2b:	5f                   	pop    edi
   13a2c:	5e                   	pop    esi
   13a2d:	c3                   	ret    
   13a2e:	8b c0                	mov    eax,eax

;-------------------------------------------------
;  Function 'fade'                               -
;-------------------------------------------------
fade:
   13a30:	53                   	push   ebx
   13a31:	51                   	push   ecx
   13a32:	52                   	push   edx
   13a33:	56                   	push   esi
   13a34:	83 ec 10             	sub    esp,0x10
   13a37:	89 c3                	mov    ebx,eax
   13a39:	dd 44 24 24          	fld    QWORD PTR [esp+0x24]
   13a3d:	dc 5c 24 2c          	fcomp  QWORD PTR [esp+0x2c]
   13a41:	df e0                	fnstsw ax
   13a43:	9e                   	sahf   
   13a44:	0f 84 30 01 00 00    	je     fade_branch_13
   13a4a:	e8 b3 e6 05 00       	call   clock_
   13a4f:	dd 44 24 24          	fld    QWORD PTR [esp+0x24]
   13a53:	89 c1                	mov    ecx,eax
   13a55:	dc 5c 24 2c          	fcomp  QWORD PTR [esp+0x2c]
   13a59:	df e0                	fnstsw ax
   13a5b:	9e                   	sahf   
   13a5c:	0f 83 8f 00 00 00    	jae    fade_branch_6
   13a62:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
   13a66:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
   13a6a:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
   13a6e:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
   13a72:	76 22                	jbe    fade_branch_2
   13a74:	eb 57                	jmp    fade_branch_5
fade_branch_1:
   13a76:	e8 87 e6 05 00       	call   clock_
   13a7b:	dd 44 24 08          	fld    QWORD PTR [esp+0x8]
   13a7f:	dc 05 f4 15 00 00    	fadd   QWORD PTR ds:@obj3:graphics_cpp_variable_16                  ; fixup: num: 2102, src obj: 1, src ofs: 0x13a81, dst obj: 3, dst ofs: 0x15f4
   13a85:	dd 54 24 08          	fst    QWORD PTR [esp+0x8]
   13a89:	89 c1                	mov    ecx,eax
   13a8b:	dc 5c 24 2c          	fcomp  QWORD PTR [esp+0x2c]
   13a8f:	df e0                	fnstsw ax
   13a91:	9e                   	sahf   
   13a92:	76 07                	jbe    fade_branch_3
   13a94:	eb 37                	jmp    fade_branch_5
fade_branch_2:
   13a96:	be d4 a1 01 00       	mov    esi,@obj3:music                                              ; fixup: num: 2101, src obj: 1, src ofs: 0x13a97, dst obj: 3, dst ofs: 0x1a1d4
fade_branch_3:
   13a9b:	89 f0                	mov    eax,esi
   13a9d:	e8 fe 7e ff ff       	call   update_mod_9
   13aa2:	dd 44 24 08          	fld    QWORD PTR [esp+0x8]
   13aa6:	83 ec 04             	sub    esp,0x4
   13aa9:	d9 1c 24             	fstp   DWORD PTR [esp]
   13aac:	ba 00 01 00 00       	mov    edx,0x100
   13ab1:	89 d8                	mov    eax,ebx
   13ab3:	e8 b8 ec ff ff       	call   setvgapalette_mod_14
   13ab8:	8d 51 04             	lea    edx,[ecx+0x4]
fade_branch_4:
   13abb:	e8 42 e6 05 00       	call   clock_
   13ac0:	39 d0                	cmp    eax,edx
   13ac2:	73 b2                	jae    fade_branch_1
   13ac4:	89 f0                	mov    eax,esi
   13ac6:	e8 d5 7e ff ff       	call   update_mod_9
   13acb:	eb ee                	jmp    fade_branch_4
fade_branch_5:
   13acd:	dd 44 24 2c          	fld    QWORD PTR [esp+0x2c]
   13ad1:	dc 1d b4 0f 01 00    	fcomp  QWORD PTR ds:@obj3:pal_gamma                                 ; fixup: num: 2106, src obj: 1, src ofs: 0x13ad3, dst obj: 3, dst ofs: 0x10fb4
   13ad7:	df e0                	fnstsw ax
   13ad9:	9e                   	sahf   
   13ada:	0f 85 9a 00 00 00    	jne    fade_branch_13
   13ae0:	83 ec 04             	sub    esp,0x4
   13ae3:	dd 05 b4 0f 01 00    	fld    QWORD PTR ds:@obj3:pal_gamma                                 ; fixup: num: 2105, src obj: 1, src ofs: 0x13ae5, dst obj: 3, dst ofs: 0x10fb4
   13ae9:	d9 1c 24             	fstp   DWORD PTR [esp]
   13aec:	e9 7d 00 00 00       	jmp    fade_branch_12
fade_branch_6:
   13af1:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
   13af5:	89 04 24             	mov    DWORD PTR [esp],eax
   13af8:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
   13afc:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
   13b00:	73 20                	jae    fade_branch_8
   13b02:	eb 54                	jmp    fade_branch_11
fade_branch_7:
   13b04:	e8 f9 e5 05 00       	call   clock_
   13b09:	dd 04 24             	fld    QWORD PTR [esp]
   13b0c:	dc 05 ec 15 00 00    	fadd   QWORD PTR ds:@obj3:graphics_cpp_variable_15                  ; fixup: num: 2104, src obj: 1, src ofs: 0x13b0e, dst obj: 3, dst ofs: 0x15ec
   13b12:	dd 14 24             	fst    QWORD PTR [esp]
   13b15:	89 c1                	mov    ecx,eax
   13b17:	dc 5c 24 2c          	fcomp  QWORD PTR [esp+0x2c]
   13b1b:	df e0                	fnstsw ax
   13b1d:	9e                   	sahf   
   13b1e:	73 07                	jae    fade_branch_9
   13b20:	eb 36                	jmp    fade_branch_11
fade_branch_8:
   13b22:	be d4 a1 01 00       	mov    esi,@obj3:music                                              ; fixup: num: 2103, src obj: 1, src ofs: 0x13b23, dst obj: 3, dst ofs: 0x1a1d4
fade_branch_9:
   13b27:	89 f0                	mov    eax,esi
   13b29:	e8 72 7e ff ff       	call   update_mod_9
   13b2e:	dd 04 24             	fld    QWORD PTR [esp]
   13b31:	83 ec 04             	sub    esp,0x4
   13b34:	d9 1c 24             	fstp   DWORD PTR [esp]
   13b37:	ba 00 01 00 00       	mov    edx,0x100
   13b3c:	89 d8                	mov    eax,ebx
   13b3e:	e8 2d ec ff ff       	call   setvgapalette_mod_14
   13b43:	8d 51 04             	lea    edx,[ecx+0x4]
fade_branch_10:
   13b46:	e8 b7 e5 05 00       	call   clock_
   13b4b:	39 d0                	cmp    eax,edx
   13b4d:	73 b5                	jae    fade_branch_7
   13b4f:	89 f0                	mov    eax,esi
   13b51:	e8 4a 7e ff ff       	call   update_mod_9
   13b56:	eb ee                	jmp    fade_branch_10
fade_branch_11:
   13b58:	8b 54 24 30          	mov    edx,DWORD PTR [esp+0x30]
   13b5c:	8b 4c 24 2c          	mov    ecx,DWORD PTR [esp+0x2c]
   13b60:	f7 c2 ff ff ff 7f    	test   edx,0x7fffffff
   13b66:	75 12                	jne    fade_branch_13
   13b68:	85 c9                	test   ecx,ecx
   13b6a:	75 0e                	jne    fade_branch_13
   13b6c:	6a 00                	push   0x0
fade_branch_12:
   13b6e:	ba 00 01 00 00       	mov    edx,0x100
   13b73:	89 d8                	mov    eax,ebx
   13b75:	e8 f6 eb ff ff       	call   setvgapalette_mod_14
fade_branch_13:
   13b7a:	83 c4 10             	add    esp,0x10
   13b7d:	5e                   	pop    esi
   13b7e:	5a                   	pop    edx
   13b7f:	59                   	pop    ecx
   13b80:	5b                   	pop    ebx
   13b81:	c2 10 00             	ret    0x10
   13b84:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   13b8a:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]

;-------------------------------------------------
;  Function 'compress_bitmap'                    -
;-------------------------------------------------
compress_bitmap:
   13b90:	53                   	push   ebx
   13b91:	51                   	push   ecx
   13b92:	52                   	push   edx
   13b93:	56                   	push   esi
   13b94:	57                   	push   edi
   13b95:	55                   	push   ebp
   13b96:	83 ec 20             	sub    esp,0x20
   13b99:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
   13b9d:	85 c0                	test   eax,eax
   13b9f:	0f 84 9f 01 00 00    	je     compress_bitmap_branch_14
   13ba5:	8b 30                	mov    esi,DWORD PTR [eax]
   13ba7:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
   13baa:	89 f0                	mov    eax,esi
   13bac:	0f af c1             	imul   eax,ecx
   13baf:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
   13bb3:	b8 11 00 00 00       	mov    eax,0x11
   13bb8:	e8 d6 d8 05 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   13bbd:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
   13bc1:	85 c0                	test   eax,eax
   13bc3:	75 0f                	jne    compress_bitmap_branch_1
   13bc5:	bb fc 15 00 00       	mov    ebx,@obj3:graphics_cpp_variable_17                           ; fixup: num: 2108, src obj: 1, src ofs: 0x13bc6, dst obj: 3, dst ofs: 0x15fc
   13bca:	ba 50 02 00 00       	mov    edx,0x250
   13bcf:	e8 5c 44 02 00       	call   _error_report
compress_bitmap_branch_1:
   13bd4:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
   13bd8:	89 c2                	mov    edx,eax
   13bda:	c1 fa 1f             	sar    edx,0x1f
   13bdd:	2b c2                	sub    eax,edx
   13bdf:	d1 f8                	sar    eax,1
   13be1:	03 44 24 08          	add    eax,DWORD PTR [esp+0x8]
   13be5:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
   13be9:	e8 a5 d8 05 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   13bee:	89 42 0d             	mov    DWORD PTR [edx+0xd],eax
   13bf1:	85 c0                	test   eax,eax
   13bf3:	75 0f                	jne    compress_bitmap_branch_2
   13bf5:	bb 29 16 00 00       	mov    ebx,@obj3:graphics_cpp_variable_18                           ; fixup: num: 2107, src obj: 1, src ofs: 0x13bf6, dst obj: 3, dst ofs: 0x1629
   13bfa:	ba 52 02 00 00       	mov    edx,0x252
   13bff:	e8 2c 44 02 00       	call   _error_report
compress_bitmap_branch_2:
   13c04:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
   13c08:	c6 40 08 01          	mov    BYTE PTR [eax+0x8],0x1
   13c0c:	89 30                	mov    DWORD PTR [eax],esi
   13c0e:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
   13c11:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
   13c15:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
   13c18:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
   13c1c:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
   13c20:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
   13c24:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
   13c28:	8b 6c 24 08          	mov    ebp,DWORD PTR [esp+0x8]
   13c2c:	31 f6                	xor    esi,esi
   13c2e:	8b 40 0d             	mov    eax,DWORD PTR [eax+0xd]
   13c31:	31 c9                	xor    ecx,ecx
   13c33:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
   13c37:	85 ed                	test   ebp,ebp
   13c39:	0f 8e c9 00 00 00    	jle    compress_bitmap_branch_12
compress_bitmap_branch_3:
   13c3f:	8b 6c 24 1c          	mov    ebp,DWORD PTR [esp+0x1c]
   13c43:	01 f5                	add    ebp,esi
   13c45:	8a 45 00             	mov    al,BYTE PTR [ebp+0x0]
   13c48:	8a 65 01             	mov    ah,BYTE PTR [ebp+0x1]
   13c4b:	38 e0                	cmp    al,ah
   13c4d:	75 53                	jne    compress_bitmap_branch_6
   13c4f:	3a 65 02             	cmp    ah,BYTE PTR [ebp+0x2]
   13c52:	75 4e                	jne    compress_bitmap_branch_6
   13c54:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
   13c58:	89 f7                	mov    edi,esi
   13c5a:	8a 5d 00             	mov    bl,BYTE PTR [ebp+0x0]
   13c5d:	31 d2                	xor    edx,edx
   13c5f:	89 04 24             	mov    DWORD PTR [esp],eax
   13c62:	8a 7d 01             	mov    bh,BYTE PTR [ebp+0x1]
   13c65:	89 e8                	mov    eax,ebp
   13c67:	38 fb                	cmp    bl,bh
   13c69:	75 14                	jne    compress_bitmap_branch_5
compress_bitmap_branch_4:
   13c6b:	3b 3c 24             	cmp    edi,DWORD PTR [esp]
   13c6e:	7d 0f                	jge    compress_bitmap_branch_5
   13c70:	42                   	inc    edx
   13c71:	40                   	inc    eax
   13c72:	47                   	inc    edi
   13c73:	83 fa 7e             	cmp    edx,0x7e
   13c76:	74 07                	je     compress_bitmap_branch_5
   13c78:	8a 18                	mov    bl,BYTE PTR [eax]
   13c7a:	3a 58 01             	cmp    bl,BYTE PTR [eax+0x1]
   13c7d:	74 ec                	je     compress_bitmap_branch_4
compress_bitmap_branch_5:
   13c7f:	8b 7c 24 18          	mov    edi,DWORD PTR [esp+0x18]
   13c83:	42                   	inc    edx
   13c84:	89 c8                	mov    eax,ecx
   13c86:	89 d3                	mov    ebx,edx
   13c88:	01 f8                	add    eax,edi
   13c8a:	80 cb 80             	or     bl,0x80
   13c8d:	41                   	inc    ecx
   13c8e:	88 18                	mov    BYTE PTR [eax],bl
   13c90:	8b 5c 24 1c          	mov    ebx,DWORD PTR [esp+0x1c]
   13c94:	89 c8                	mov    eax,ecx
   13c96:	41                   	inc    ecx
   13c97:	01 c7                	add    edi,eax
   13c99:	8a 04 1e             	mov    al,BYTE PTR [esi+ebx*1]
   13c9c:	01 d6                	add    esi,edx
   13c9e:	88 07                	mov    BYTE PTR [edi],al
   13ca0:	eb 5c                	jmp    compress_bitmap_branch_11
compress_bitmap_branch_6:
   13ca2:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
   13ca6:	89 f7                	mov    edi,esi
   13ca8:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
   13cac:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
   13cb0:	31 d2                	xor    edx,edx
   13cb2:	01 f0                	add    eax,esi
compress_bitmap_branch_7:
   13cb4:	8a 18                	mov    bl,BYTE PTR [eax]
   13cb6:	3a 58 01             	cmp    bl,BYTE PTR [eax+0x1]
   13cb9:	75 07                	jne    compress_bitmap_branch_8
   13cbb:	8a 18                	mov    bl,BYTE PTR [eax]
   13cbd:	3a 58 02             	cmp    bl,BYTE PTR [eax+0x2]
   13cc0:	74 0e                	je     compress_bitmap_branch_9
compress_bitmap_branch_8:
   13cc2:	3b 7c 24 14          	cmp    edi,DWORD PTR [esp+0x14]
   13cc6:	7d 08                	jge    compress_bitmap_branch_9
   13cc8:	42                   	inc    edx
   13cc9:	40                   	inc    eax
   13cca:	47                   	inc    edi
   13ccb:	83 fa 7f             	cmp    edx,0x7f
   13cce:	75 e4                	jne    compress_bitmap_branch_7
compress_bitmap_branch_9:
   13cd0:	8b 7c 24 18          	mov    edi,DWORD PTR [esp+0x18]
   13cd4:	89 c8                	mov    eax,ecx
   13cd6:	01 f8                	add    eax,edi
   13cd8:	89 d3                	mov    ebx,edx
   13cda:	41                   	inc    ecx
   13cdb:	88 10                	mov    BYTE PTR [eax],dl
   13cdd:	31 c0                	xor    eax,eax
   13cdf:	85 d2                	test   edx,edx
   13ce1:	7e 1b                	jle    compress_bitmap_branch_11
compress_bitmap_branch_10:
   13ce3:	8b 6c 24 1c          	mov    ebp,DWORD PTR [esp+0x1c]
   13ce7:	89 f2                	mov    edx,esi
   13ce9:	89 cf                	mov    edi,ecx
   13ceb:	40                   	inc    eax
   13cec:	01 ea                	add    edx,ebp
   13cee:	8b 6c 24 18          	mov    ebp,DWORD PTR [esp+0x18]
   13cf2:	46                   	inc    esi
   13cf3:	01 ef                	add    edi,ebp
   13cf5:	8a 12                	mov    dl,BYTE PTR [edx]
   13cf7:	41                   	inc    ecx
   13cf8:	88 17                	mov    BYTE PTR [edi],dl
   13cfa:	39 d8                	cmp    eax,ebx
   13cfc:	7c e5                	jl     compress_bitmap_branch_10
compress_bitmap_branch_11:
   13cfe:	3b 74 24 10          	cmp    esi,DWORD PTR [esp+0x10]
   13d02:	0f 8c 37 ff ff ff    	jl     compress_bitmap_branch_3
compress_bitmap_branch_12:
   13d08:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
   13d0c:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
   13d10:	89 48 09             	mov    DWORD PTR [eax+0x9],ecx
   13d13:	39 d1                	cmp    ecx,edx
   13d15:	76 29                	jbe    compress_bitmap_branch_13
   13d17:	8b 74 24 04          	mov    esi,DWORD PTR [esp+0x4]
   13d1b:	c6 40 08 00          	mov    BYTE PTR [eax+0x8],0x0
   13d1f:	89 d1                	mov    ecx,edx
   13d21:	8b 78 0d             	mov    edi,DWORD PTR [eax+0xd]
   13d24:	8b 76 08             	mov    esi,DWORD PTR [esi+0x8]
   13d27:	57                   	push   edi
   13d28:	89 c8                	mov    eax,ecx
   13d2a:	c1 e9 02             	shr    ecx,0x2
   13d2d:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
   13d2f:	8a c8                	mov    cl,al
   13d31:	80 e1 03             	and    cl,0x3
   13d34:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
   13d36:	5f                   	pop    edi
   13d37:	89 d0                	mov    eax,edx
   13d39:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
   13d3d:	89 42 09             	mov    DWORD PTR [edx+0x9],eax
compress_bitmap_branch_13:
   13d40:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
compress_bitmap_branch_14:
   13d44:	83 c4 20             	add    esp,0x20
   13d47:	5d                   	pop    ebp
   13d48:	5f                   	pop    edi
   13d49:	5e                   	pop    esi
   13d4a:	5a                   	pop    edx
   13d4b:	59                   	pop    ecx
   13d4c:	5b                   	pop    ebx
   13d4d:	c3                   	ret    
   13d4e:	8b c0                	mov    eax,eax

;-------------------------------------------------
;  Function 'gr_compress'                        -
;-------------------------------------------------
gr_compress:
   13d50:	51                   	push   ecx
   13d51:	56                   	push   esi
   13d52:	57                   	push   edi
   13d53:	55                   	push   ebp
   13d54:	83 ec 18             	sub    esp,0x18
   13d57:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
   13d5b:	89 14 24             	mov    DWORD PTR [esp],edx
   13d5e:	89 5c 24 10          	mov    DWORD PTR [esp+0x10],ebx
   13d62:	8b 0c 24             	mov    ecx,DWORD PTR [esp]
   13d65:	31 db                	xor    ebx,ebx
   13d67:	31 d2                	xor    edx,edx
   13d69:	85 c9                	test   ecx,ecx
   13d6b:	0f 8e dd 00 00 00    	jle    gr_compress_branch_10
gr_compress_branch_1:
   13d71:	8b 6c 24 0c          	mov    ebp,DWORD PTR [esp+0xc]
   13d75:	01 dd                	add    ebp,ebx
   13d77:	8a 45 00             	mov    al,BYTE PTR [ebp+0x0]
   13d7a:	8a 65 01             	mov    ah,BYTE PTR [ebp+0x1]
   13d7d:	38 e0                	cmp    al,ah
   13d7f:	75 5d                	jne    gr_compress_branch_4
   13d81:	3a 65 02             	cmp    ah,BYTE PTR [ebp+0x2]
   13d84:	75 58                	jne    gr_compress_branch_4
   13d86:	8b 04 24             	mov    eax,DWORD PTR [esp]
   13d89:	89 df                	mov    edi,ebx
   13d8b:	8a 4d 00             	mov    cl,BYTE PTR [ebp+0x0]
   13d8e:	31 f6                	xor    esi,esi
   13d90:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
   13d94:	8a 6d 01             	mov    ch,BYTE PTR [ebp+0x1]
   13d97:	89 e8                	mov    eax,ebp
   13d99:	38 e9                	cmp    cl,ch
   13d9b:	75 15                	jne    gr_compress_branch_3
gr_compress_branch_2:
   13d9d:	3b 7c 24 08          	cmp    edi,DWORD PTR [esp+0x8]
   13da1:	7d 0f                	jge    gr_compress_branch_3
   13da3:	46                   	inc    esi
   13da4:	40                   	inc    eax
   13da5:	47                   	inc    edi
   13da6:	83 fe 7e             	cmp    esi,0x7e
   13da9:	74 07                	je     gr_compress_branch_3
   13dab:	8a 08                	mov    cl,BYTE PTR [eax]
   13dad:	3a 48 01             	cmp    cl,BYTE PTR [eax+0x1]
   13db0:	74 eb                	je     gr_compress_branch_2
gr_compress_branch_3:
   13db2:	46                   	inc    esi
   13db3:	8b 7c 24 10          	mov    edi,DWORD PTR [esp+0x10]
   13db7:	89 74 24 14          	mov    DWORD PTR [esp+0x14],esi
   13dbb:	89 d0                	mov    eax,edx
   13dbd:	8a 4c 24 14          	mov    cl,BYTE PTR [esp+0x14]
   13dc1:	01 f8                	add    eax,edi
   13dc3:	80 c9 80             	or     cl,0x80
   13dc6:	42                   	inc    edx
   13dc7:	88 08                	mov    BYTE PTR [eax],cl
   13dc9:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
   13dcd:	89 d1                	mov    ecx,edx
   13dcf:	42                   	inc    edx
   13dd0:	01 f9                	add    ecx,edi
   13dd2:	8a 04 03             	mov    al,BYTE PTR [ebx+eax*1]
   13dd5:	01 f3                	add    ebx,esi
   13dd7:	88 01                	mov    BYTE PTR [ecx],al
   13dd9:	e9 67 00 00 00       	jmp    gr_compress_branch_9
gr_compress_branch_4:
   13dde:	8b 04 24             	mov    eax,DWORD PTR [esp]
   13de1:	89 df                	mov    edi,ebx
   13de3:	31 f6                	xor    esi,esi
   13de5:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
   13de9:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
   13ded:	8b 6c 24 04          	mov    ebp,DWORD PTR [esp+0x4]
   13df1:	01 d8                	add    eax,ebx
gr_compress_branch_5:
   13df3:	8a 08                	mov    cl,BYTE PTR [eax]
   13df5:	3a 48 01             	cmp    cl,BYTE PTR [eax+0x1]
   13df8:	75 07                	jne    gr_compress_branch_6
   13dfa:	8a 08                	mov    cl,BYTE PTR [eax]
   13dfc:	3a 48 02             	cmp    cl,BYTE PTR [eax+0x2]
   13dff:	74 0c                	je     gr_compress_branch_7
gr_compress_branch_6:
   13e01:	39 ef                	cmp    edi,ebp
   13e03:	7d 08                	jge    gr_compress_branch_7
   13e05:	46                   	inc    esi
   13e06:	40                   	inc    eax
   13e07:	47                   	inc    edi
   13e08:	83 fe 7f             	cmp    esi,0x7f
   13e0b:	75 e6                	jne    gr_compress_branch_5
gr_compress_branch_7:
   13e0d:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
   13e11:	89 d0                	mov    eax,edx
   13e13:	89 74 24 14          	mov    DWORD PTR [esp+0x14],esi
   13e17:	01 c8                	add    eax,ecx
   13e19:	8a 4c 24 14          	mov    cl,BYTE PTR [esp+0x14]
   13e1d:	42                   	inc    edx
   13e1e:	88 08                	mov    BYTE PTR [eax],cl
   13e20:	31 c0                	xor    eax,eax
   13e22:	85 f6                	test   esi,esi
   13e24:	7e 1f                	jle    gr_compress_branch_9
   13e26:	8b 7c 24 10          	mov    edi,DWORD PTR [esp+0x10]
   13e2a:	8b 6c 24 14          	mov    ebp,DWORD PTR [esp+0x14]
gr_compress_branch_8:
   13e2e:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
   13e32:	89 de                	mov    esi,ebx
   13e34:	40                   	inc    eax
   13e35:	01 f1                	add    ecx,esi
   13e37:	89 d6                	mov    esi,edx
   13e39:	43                   	inc    ebx
   13e3a:	01 fe                	add    esi,edi
   13e3c:	8a 09                	mov    cl,BYTE PTR [ecx]
   13e3e:	42                   	inc    edx
   13e3f:	88 0e                	mov    BYTE PTR [esi],cl
   13e41:	39 e8                	cmp    eax,ebp
   13e43:	7c e9                	jl     gr_compress_branch_8
gr_compress_branch_9:
   13e45:	3b 1c 24             	cmp    ebx,DWORD PTR [esp]
   13e48:	0f 8c 23 ff ff ff    	jl     gr_compress_branch_1
gr_compress_branch_10:
   13e4e:	89 d0                	mov    eax,edx
   13e50:	83 c4 18             	add    esp,0x18
   13e53:	5d                   	pop    ebp
   13e54:	5f                   	pop    edi
   13e55:	5e                   	pop    esi
   13e56:	59                   	pop    ecx
   13e57:	c3                   	ret    
   13e58:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   13e5e:	8b d2                	mov    edx,edx

;-------------------------------------------------
;  Function 'gr_process_comp'                    -
;-------------------------------------------------
gr_process_comp:
   13e60:	51                   	push   ecx
   13e61:	56                   	push   esi
   13e62:	57                   	push   edi
   13e63:	89 de                	mov    esi,ebx
   13e65:	8d 3c 02             	lea    edi,[edx+eax*1]
   13e68:	8a 0f                	mov    cl,BYTE PTR [edi]
   13e6a:	31 db                	xor    ebx,ebx
   13e6c:	8a 6f 01             	mov    ch,BYTE PTR [edi+0x1]
   13e6f:	89 f8                	mov    eax,edi
   13e71:	38 e9                	cmp    cl,ch
   13e73:	75 13                	jne    gr_process_comp_branch_2
gr_process_comp_branch_1:
   13e75:	39 f2                	cmp    edx,esi
   13e77:	7d 0f                	jge    gr_process_comp_branch_2
   13e79:	43                   	inc    ebx
   13e7a:	40                   	inc    eax
   13e7b:	42                   	inc    edx
   13e7c:	83 fb 7e             	cmp    ebx,0x7e
   13e7f:	74 07                	je     gr_process_comp_branch_2
   13e81:	8a 08                	mov    cl,BYTE PTR [eax]
   13e83:	3a 48 01             	cmp    cl,BYTE PTR [eax+0x1]
   13e86:	74 ed                	je     gr_process_comp_branch_1
gr_process_comp_branch_2:
   13e88:	8d 43 01             	lea    eax,[ebx+0x1]
   13e8b:	5f                   	pop    edi
   13e8c:	5e                   	pop    esi
   13e8d:	59                   	pop    ecx
   13e8e:	c3                   	ret    
   13e8f:	90                   	nop

;-------------------------------------------------
;  Function 'gr_process_uncomp'                  -
;-------------------------------------------------
gr_process_uncomp:
   13e90:	51                   	push   ecx
   13e91:	56                   	push   esi
   13e92:	89 d1                	mov    ecx,edx
   13e94:	89 de                	mov    esi,ebx
   13e96:	31 d2                	xor    edx,edx
   13e98:	01 c8                	add    eax,ecx
gr_process_uncomp_branch_1:
   13e9a:	8a 18                	mov    bl,BYTE PTR [eax]
   13e9c:	3a 58 01             	cmp    bl,BYTE PTR [eax+0x1]
   13e9f:	75 07                	jne    gr_process_uncomp_branch_2
   13ea1:	8a 18                	mov    bl,BYTE PTR [eax]
   13ea3:	3a 58 02             	cmp    bl,BYTE PTR [eax+0x2]
   13ea6:	74 0c                	je     gr_process_uncomp_branch_3
gr_process_uncomp_branch_2:
   13ea8:	39 f1                	cmp    ecx,esi
   13eaa:	7d 08                	jge    gr_process_uncomp_branch_3
   13eac:	42                   	inc    edx
   13ead:	40                   	inc    eax
   13eae:	41                   	inc    ecx
   13eaf:	83 fa 7f             	cmp    edx,0x7f
   13eb2:	75 e6                	jne    gr_process_uncomp_branch_1
gr_process_uncomp_branch_3:
   13eb4:	89 d0                	mov    eax,edx
   13eb6:	5e                   	pop    esi
   13eb7:	59                   	pop    ecx
   13eb8:	c3                   	ret    
;-------------------------------------------------
;  Bad code 17 (zero after ret):                 -
;-------------------------------------------------
;  13eb7:	59                   	pop    ecx
;  13eb8:	c3                   	ret    
;  13eb9:	00 00                	add    BYTE PTR [eax],al
;  13ebb:	00 00                	add    BYTE PTR [eax],al
;-------------------------------------------------
;  Padding data (7 bytes):                       -
;-------------------------------------------------
   13eb9:	00 00 00 00 00 00 .. 	db     7 dup(0x00)
;-------------------------------------------------
;  End of bad code 17                            -
;-------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 14 (D:\SOURCE\graphics.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 14: D:\SOURCE\graphics.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------
graphics_cpp_variable_1:
    13fc:	67 72 61 70 68 69 63 73 2e 63 70 70 00 	db     "graphics.cpp",0x00
graphics_cpp_variable_2:                                                                            ; access size: QWORD
    1409:	9a 99 99 99 99 99 b9 3f 	dq     0x3fb999999999999a
graphics_cpp_variable_3:
    1411:	43 6f 75 6c 64 20 6e 6f 74 20 61 6c 6c 6f 63 61 74 65 20 61 20 62 75 66 66 65 72 20 6f 66 20 25 69 78 25 69 00 	db     "Could not allocate a buffer of %ix%i",0x00
    1436:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
graphics_cpp_variable_4:
    1437:	62 75 69 6c 64 5f 62 6d 28 29 20 75 6e 61 62 6c 65 20 74 6f 20 61 6c 6c 6f 63 61 74 65 20 6d 65 6d 6f 72 79 2e 00 	db     "build_bm() unable to allocate memory.",0x00
graphics_cpp_variable_5:
    145d:	62 75 69 6c 64 5f 62 6d 28 29 20 75 6e 61 62 6c 65 20 74 6f 20 61 6c 6c 6f 63 61 74 65 20 6d 65 6d 6f 72 79 20 25 69 78 25 69 00 	db     "build_bm() unable to allocate memory %ix%i",0x00
graphics_cpp_variable_6:
    1488:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
graphics_cpp_variable_7:
    14a0:	62 75 69 6c 64 5f 62 6d 5f 61 6c 6c 6f 63 28 29 20 75 6e 61 62 6c 65 20 74 6f 20 61 6c 6c 6f 63 61 74 65 20 6d 65 6d 6f 72 79 20 25 69 78 25 69 00 	db     "build_bm_alloc() unable to allocate memory %ix%i",0x00
graphics_cpp_variable_8:
    14d1:	67 72 5f 56 45 53 41 5f 67 65 74 5f 62 6d 28 29 20 75 6e 61 62 6c 65 20 74 6f 20 61 6c 6c 6f 63 61 74 65 20 6d 65 6d 6f 72 79 2e 00 	db     "gr_VESA_get_bm() unable to allocate memory.",0x00
graphics_cpp_variable_9:
    14fd:	67 65 74 5f 62 6d 5f 77 69 6e 64 6f 77 28 29 20 75 6e 61 62 6c 65 20 74 6f 20 61 6c 6c 6f 63 61 74 65 20 6d 65 6d 6f 72 79 2e 00 	db     "get_bm_window() unable to allocate memory.",0x00
graphics_cpp_variable_10:
    1528:	67 65 74 5f 62 6d 5f 77 69 6e 64 6f 77 28 29 20 75 6e 61 62 6c 65 20 74 6f 20 61 6c 6c 6f 63 61 74 65 20 6d 65 6d 6f 72 79 2e 00 	db     "get_bm_window() unable to allocate memory.",0x00
graphics_cpp_variable_11:
    1553:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
graphics_cpp_variable_12:
    156b:	67 65 74 5f 74 72 61 6e 73 70 61 72 65 6e 74 5f 62 6d 5f 77 69 6e 64 6f 77 28 29 20 75 6e 61 62 6c 65 20 74 6f 20 61 6c 6c 6f 63 61 74 65 20 6d 65 6d 6f 72 79 2e 28 25 69 2c 25 69 29 00 	db     "get_transparent_bm_window() unable to allocate memory.(%i,%i)",0x00
graphics_cpp_variable_13:
    15a9:	73 63 61 6c 65 5f 62 69 74 6d 61 70 28 29 3a 20 4e 55 4c 4c 20 62 69 74 6d 61 70 00 	db     "scale_bitmap(): NULL bitmap",0x00
graphics_cpp_variable_14:
    15c5:	73 63 61 6c 65 5f 62 69 74 6d 61 70 28 29 3a 3a 63 61 6e 27 74 20 61 6c 6c 6f 63 61 74 65 20 6d 65 6d 6f 72 79 2e 00 	db     "scale_bitmap()::can't allocate memory.",0x00
graphics_cpp_variable_15:                                                                           ; access size: QWORD
    15ec:	9a 99 99 99 99 99 b9 bf 	dq     0xbfb999999999999a
graphics_cpp_variable_16:                                                                           ; access size: QWORD
    15f4:	9a 99 99 99 99 99 b9 3f 	dq     0x3fb999999999999a
graphics_cpp_variable_17:
    15fc:	63 6f 6d 70 72 65 73 73 5f 62 69 74 6d 61 70 28 29 20 75 6e 61 62 6c 65 20 74 6f 20 61 6c 6c 6f 63 61 74 65 20 6d 65 6d 6f 72 79 2e 00 	db     "compress_bitmap() unable to allocate memory.",0x00
graphics_cpp_variable_18:
    1629:	63 6f 6d 70 72 65 73 73 5f 62 69 74 6d 61 70 28 29 20 75 6e 61 62 6c 65 20 74 6f 20 61 6c 6c 6f 63 61 74 65 20 6d 65 6d 6f 72 79 2e 00 	db     "compress_bitmap() unable to allocate memory.",0x00
    1656:	00 00                	db     2 dup(0x00)                                                  ; dec:   0, chr: '\0'

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 14 (D:\SOURCE\graphics.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 14: D:\SOURCE\graphics.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------
in_graphics_mode:
   22a98:	00 00                	db     2 dup(0x00)                                                  ; dec:   0, chr: '\0'
initial_mode:
   22a9a:	00 00                	db     2 dup(0x00)                                                  ; dec:   0, chr: '\0'

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 14 (D:\SOURCE\graphics.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------