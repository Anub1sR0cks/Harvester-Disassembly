;-------------------------------------------------------------------------------
;                                                                              -
;  Module 5: D:\SOURCE\os_slice.cpp                                            -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function 'get_os'                             -
;-------------------------------------------------
get_os:
    6c30:	53                   	push   ebx
    6c31:	51                   	push   ecx
    6c32:	52                   	push   edx
    6c33:	56                   	push   esi
    6c34:	57                   	push   edi
    6c35:	83 ec 1c             	sub    esp,0x1c
    6c38:	31 d2                	xor    edx,edx
    6c3a:	8a 15 83 42 01 00    	mov    dl,BYTE PTR ds:@obj3:__osmajor                               ; fixup: num: 643, src obj: 1, src ofs: 0x6c3c, dst obj: 3, dst ofs: 0x14283
    6c40:	31 c9                	xor    ecx,ecx
    6c42:	83 fa 0a             	cmp    edx,0xa
    6c45:	7d 25                	jge    get_os_branch_1
    6c47:	be 01 00 00 00       	mov    esi,0x1
    6c4c:	89 15 60 a1 01 00    	mov    DWORD PTR ds:@obj3:t_os_ver,edx                              ; fixup: num: 642, src obj: 1, src ofs: 0x6c4e, dst obj: 3, dst ofs: 0x1a160
    6c52:	31 c0                	xor    eax,eax
    6c54:	89 0d 8c a1 01 00    	mov    DWORD PTR ds:@obj3:t_os,ecx                                  ; fixup: num: 641, src obj: 1, src ofs: 0x6c56, dst obj: 3, dst ofs: 0x1a18c
    6c5a:	a0 84 42 01 00       	mov    al,ds:@obj3:__osminor                                        ; fixup: num: 640, src obj: 1, src ofs: 0x6c5b, dst obj: 3, dst ofs: 0x14284
    6c5f:	89 35 88 a1 01 00    	mov    DWORD PTR ds:@obj3:t_os_type,esi                             ; fixup: num: 639, src obj: 1, src ofs: 0x6c61, dst obj: 3, dst ofs: 0x1a188
    6c65:	a3 64 a1 01 00       	mov    ds:@obj3:t_os_ver_variable_1,eax                             ; fixup: num: 638, src obj: 1, src ofs: 0x6c66, dst obj: 3, dst ofs: 0x1a164
    6c6a:	eb 2e                	jmp    get_os_branch_2
get_os_branch_1:
    6c6c:	bb 02 00 00 00       	mov    ebx,0x2
    6c71:	89 d0                	mov    eax,edx
    6c73:	89 1d 88 a1 01 00    	mov    DWORD PTR ds:@obj3:t_os_type,ebx                             ; fixup: num: 637, src obj: 1, src ofs: 0x6c75, dst obj: 3, dst ofs: 0x1a188
    6c79:	c1 fa 1f             	sar    edx,0x1f
    6c7c:	bb 0a 00 00 00       	mov    ebx,0xa
    6c81:	f7 fb                	idiv   ebx
    6c83:	a3 68 a1 01 00       	mov    ds:@obj3:t_os_ver_variable_2,eax                             ; fixup: num: 636, src obj: 1, src ofs: 0x6c84, dst obj: 3, dst ofs: 0x1a168
    6c88:	31 c0                	xor    eax,eax
    6c8a:	a0 84 42 01 00       	mov    al,ds:@obj3:__osminor                                        ; fixup: num: 635, src obj: 1, src ofs: 0x6c8b, dst obj: 3, dst ofs: 0x14284
    6c8f:	89 0d 8c a1 01 00    	mov    DWORD PTR ds:@obj3:t_os,ecx                                  ; fixup: num: 634, src obj: 1, src ofs: 0x6c91, dst obj: 3, dst ofs: 0x1a18c
    6c95:	a3 6c a1 01 00       	mov    ds:@obj3:t_os_ver_variable_3,eax                             ; fixup: num: 633, src obj: 1, src ofs: 0x6c96, dst obj: 3, dst ofs: 0x1a16c
get_os_branch_2:
    6c9a:	ba 80 46 00 00       	mov    edx,0x4680
    6c9f:	89 e3                	mov    ebx,esp
    6ca1:	b8 2f 00 00 00       	mov    eax,0x2f
    6ca6:	66 89 14 24          	mov    WORD PTR [esp],dx
    6caa:	89 e2                	mov    edx,esp
    6cac:	e8 eb a3 06 00       	call   int386_
    6cb1:	31 c0                	xor    eax,eax
    6cb3:	66 8b 04 24          	mov    ax,WORD PTR [esp]
    6cb7:	85 c0                	test   eax,eax
    6cb9:	75 21                	jne    get_os_branch_3
    6cbb:	bf 03 00 00 00       	mov    edi,0x3
    6cc0:	8a 15 88 a1 01 00    	mov    dl,BYTE PTR ds:@obj3:t_os_type                               ; fixup: num: 632, src obj: 1, src ofs: 0x6cc2, dst obj: 3, dst ofs: 0x1a188
    6cc6:	a3 7c a1 01 00       	mov    ds:@obj3:t_os_ver_variable_7,eax                             ; fixup: num: 631, src obj: 1, src ofs: 0x6cc7, dst obj: 3, dst ofs: 0x1a17c
    6ccb:	80 ca 08             	or     dl,0x8
    6cce:	89 3d 78 a1 01 00    	mov    DWORD PTR ds:@obj3:t_os_ver_variable_6,edi                   ; fixup: num: 630, src obj: 1, src ofs: 0x6cd0, dst obj: 3, dst ofs: 0x1a178
    6cd4:	88 15 88 a1 01 00    	mov    BYTE PTR ds:@obj3:t_os_type,dl                               ; fixup: num: 629, src obj: 1, src ofs: 0x6cd6, dst obj: 3, dst ofs: 0x1a188
    6cda:	eb 4f                	jmp    get_os_branch_6
get_os_branch_3:
    6cdc:	bb 00 16 00 00       	mov    ebx,0x1600
    6ce1:	89 e2                	mov    edx,esp
    6ce3:	b8 2f 00 00 00       	mov    eax,0x2f
    6ce8:	66 89 1c 24          	mov    WORD PTR [esp],bx
    6cec:	89 e3                	mov    ebx,esp
    6cee:	e8 a9 a3 06 00       	call   int386_
    6cf3:	8a 24 24             	mov    ah,BYTE PTR [esp]
    6cf6:	80 fc 01             	cmp    ah,0x1
    6cf9:	72 2c                	jb     get_os_branch_5
    6cfb:	76 2e                	jbe    get_os_branch_6
    6cfd:	80 fc 80             	cmp    ah,0x80
    6d00:	72 07                	jb     get_os_branch_4
    6d02:	76 27                	jbe    get_os_branch_6
    6d04:	80 fc ff             	cmp    ah,0xff
    6d07:	74 22                	je     get_os_branch_6
get_os_branch_4:
    6d09:	80 0d 88 a1 01 00 10 	or     BYTE PTR ds:@obj3:t_os_type,0x10                             ; fixup: num: 586, src obj: 1, src ofs: 0x6d0b, dst obj: 3, dst ofs: 0x1a188
    6d10:	31 c0                	xor    eax,eax
    6d12:	8a 04 24             	mov    al,BYTE PTR [esp]
    6d15:	a3 80 a1 01 00       	mov    ds:@obj3:t_os_ver_variable_8,eax                             ; fixup: num: 650, src obj: 1, src ofs: 0x6d16, dst obj: 3, dst ofs: 0x1a180
    6d1a:	31 c0                	xor    eax,eax
    6d1c:	8a 44 24 01          	mov    al,BYTE PTR [esp+0x1]
    6d20:	a3 84 a1 01 00       	mov    ds:@obj3:t_os_ver_variable_9,eax                             ; fixup: num: 649, src obj: 1, src ofs: 0x6d21, dst obj: 3, dst ofs: 0x1a184
    6d25:	eb 04                	jmp    get_os_branch_6
get_os_branch_5:
    6d27:	84 e4                	test   ah,ah
    6d29:	75 de                	jne    get_os_branch_4
get_os_branch_6:
    6d2b:	be 45 44 00 00       	mov    esi,0x4445
    6d30:	bf 51 53 00 00       	mov    edi,0x5351
    6d35:	b8 01 2b 00 00       	mov    eax,0x2b01
    6d3a:	89 e3                	mov    ebx,esp
    6d3c:	89 e2                	mov    edx,esp
    6d3e:	66 89 74 24 08       	mov    WORD PTR [esp+0x8],si
    6d43:	66 89 04 24          	mov    WORD PTR [esp],ax
    6d47:	b8 21 00 00 00       	mov    eax,0x21
    6d4c:	66 89 7c 24 0c       	mov    WORD PTR [esp+0xc],di
    6d51:	e8 46 a3 06 00       	call   int386_
    6d56:	31 c0                	xor    eax,eax
    6d58:	8a 04 24             	mov    al,BYTE PTR [esp]
    6d5b:	3d ff 00 00 00       	cmp    eax,0xff
    6d60:	74 25                	je     get_os_branch_7
    6d62:	31 c0                	xor    eax,eax
    6d64:	8a 44 24 05          	mov    al,BYTE PTR [esp+0x5]
    6d68:	8a 35 88 a1 01 00    	mov    dh,BYTE PTR ds:@obj3:t_os_type                               ; fixup: num: 648, src obj: 1, src ofs: 0x6d6a, dst obj: 3, dst ofs: 0x1a188
    6d6e:	a3 70 a1 01 00       	mov    ds:@obj3:t_os_ver_variable_4,eax                             ; fixup: num: 647, src obj: 1, src ofs: 0x6d6f, dst obj: 3, dst ofs: 0x1a170
    6d73:	31 c0                	xor    eax,eax
    6d75:	80 ce 04             	or     dh,0x4
    6d78:	8a 44 24 04          	mov    al,BYTE PTR [esp+0x4]
    6d7c:	88 35 88 a1 01 00    	mov    BYTE PTR ds:@obj3:t_os_type,dh                               ; fixup: num: 646, src obj: 1, src ofs: 0x6d7e, dst obj: 3, dst ofs: 0x1a188
    6d82:	a3 74 a1 01 00       	mov    ds:@obj3:t_os_ver_variable_5,eax                             ; fixup: num: 645, src obj: 1, src ofs: 0x6d83, dst obj: 3, dst ofs: 0x1a174
get_os_branch_7:
    6d87:	8a 1d 88 a1 01 00    	mov    bl,BYTE PTR ds:@obj3:t_os_type                               ; fixup: num: 644, src obj: 1, src ofs: 0x6d89, dst obj: 3, dst ofs: 0x1a188
    6d8d:	8b 0d 8c a1 01 00    	mov    ecx,DWORD PTR ds:@obj3:t_os                                  ; fixup: num: 593, src obj: 1, src ofs: 0x6d8f, dst obj: 3, dst ofs: 0x1a18c
    6d93:	f6 c3 01             	test   bl,0x1
    6d96:	74 02                	je     get_os_branch_8
    6d98:	31 c9                	xor    ecx,ecx
get_os_branch_8:
    6d9a:	f6 05 88 a1 01 00 08 	test   BYTE PTR ds:@obj3:t_os_type,0x8                              ; fixup: num: 592, src obj: 1, src ofs: 0x6d9c, dst obj: 3, dst ofs: 0x1a188
    6da1:	74 05                	je     get_os_branch_9
    6da3:	b9 03 00 00 00       	mov    ecx,0x3
get_os_branch_9:
    6da8:	f6 05 88 a1 01 00 10 	test   BYTE PTR ds:@obj3:t_os_type,0x10                             ; fixup: num: 591, src obj: 1, src ofs: 0x6daa, dst obj: 3, dst ofs: 0x1a188
    6daf:	74 05                	je     get_os_branch_10
    6db1:	b9 04 00 00 00       	mov    ecx,0x4
get_os_branch_10:
    6db6:	f6 05 88 a1 01 00 04 	test   BYTE PTR ds:@obj3:t_os_type,0x4                              ; fixup: num: 590, src obj: 1, src ofs: 0x6db8, dst obj: 3, dst ofs: 0x1a188
    6dbd:	74 05                	je     get_os_branch_11
    6dbf:	b9 02 00 00 00       	mov    ecx,0x2
get_os_branch_11:
    6dc4:	f6 05 88 a1 01 00 02 	test   BYTE PTR ds:@obj3:t_os_type,0x2                              ; fixup: num: 589, src obj: 1, src ofs: 0x6dc6, dst obj: 3, dst ofs: 0x1a188
    6dcb:	74 05                	je     get_os_branch_12
    6dcd:	b9 01 00 00 00       	mov    ecx,0x1
get_os_branch_12:
    6dd2:	8d 41 ff             	lea    eax,[ecx-0x1]
    6dd5:	89 0d 8c a1 01 00    	mov    DWORD PTR ds:@obj3:t_os,ecx                                  ; fixup: num: 588, src obj: 1, src ofs: 0x6dd7, dst obj: 3, dst ofs: 0x1a18c
    6ddb:	83 c4 1c             	add    esp,0x1c
    6dde:	5f                   	pop    edi
    6ddf:	5e                   	pop    esi
    6de0:	5a                   	pop    edx
    6de1:	59                   	pop    ecx
    6de2:	5b                   	pop    ebx
    6de3:	c3                   	ret    
    6de4:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    6dea:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]

;-------------------------------------------------
;  Function 't_slice'                            -
;-------------------------------------------------
t_slice:
    6df0:	53                   	push   ebx
    6df1:	52                   	push   edx
    6df2:	83 ec 1c             	sub    esp,0x1c
    6df5:	a1 8c a1 01 00       	mov    eax,ds:@obj3:t_os                                            ; fixup: num: 587, src obj: 1, src ofs: 0x6df6, dst obj: 3, dst ofs: 0x1a18c
    6dfa:	83 f8 02             	cmp    eax,0x2
    6dfd:	72 39                	jb     t_slice_branch_3
    6dff:	76 1e                	jbe    t_slice_branch_2
    6e01:	83 f8 04             	cmp    eax,0x4
    6e04:	77 37                	ja     t_slice_branch_4
t_slice_branch_1:
    6e06:	bb 80 16 00 00       	mov    ebx,0x1680
    6e0b:	89 e2                	mov    edx,esp
    6e0d:	b8 2f 00 00 00       	mov    eax,0x2f
    6e12:	66 89 1c 24          	mov    WORD PTR [esp],bx
    6e16:	89 e3                	mov    ebx,esp
    6e18:	e8 7f a2 06 00       	call   int386_
    6e1d:	eb 1e                	jmp    t_slice_branch_4
t_slice_branch_2:
    6e1f:	ba 00 10 00 00       	mov    edx,0x1000
    6e24:	89 e3                	mov    ebx,esp
    6e26:	b8 15 00 00 00       	mov    eax,0x15
    6e2b:	66 89 14 24          	mov    WORD PTR [esp],dx
    6e2f:	89 e2                	mov    edx,esp
    6e31:	e8 66 a2 06 00       	call   int386_
    6e36:	eb 05                	jmp    t_slice_branch_4
t_slice_branch_3:
    6e38:	83 f8 01             	cmp    eax,0x1
    6e3b:	74 c9                	je     t_slice_branch_1
t_slice_branch_4:
    6e3d:	83 c4 1c             	add    esp,0x1c
    6e40:	5a                   	pop    edx
    6e41:	5b                   	pop    ebx
    6e42:	c3                   	ret    
;-------------------------------------------------
;  Bad code 7 (zero after ret):                  -
;-------------------------------------------------
;   6e41:	5b                   	pop    ebx
;   6e42:	c3                   	ret    
;   6e43:	00 00                	add    BYTE PTR [eax],al
;   6e45:	00 00                	add    BYTE PTR [eax],al
;-------------------------------------------------
;  Padding data (13 bytes):                      -
;-------------------------------------------------
    6e43:	00 00 00 00 00 00 .. 	db     13 dup(0x00)
;-------------------------------------------------
;  End of bad code 7                             -
;-------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 5 (D:\SOURCE\os_slice.cpp)                                    -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 5: D:\SOURCE\os_slice.cpp                                            -
;                                                                              -
;-------------------------------------------------------------------------------
os_slice_cpp_variable_1:
     6b4:	44 4f 53 00          	db     "DOS",0x00
os_slice_cpp_variable_2:
     6b8:	4f 53 2f 32 20 44 4f 53 00 	db     "OS/2 DOS",0x00
os_slice_cpp_variable_3:
     6c1:	44 45 53 51 76 69 65 77 20 6f 72 20 44 45 53 51 76 69 65 77 2f 58 00 	db     "DESQview or DESQview/X",0x00
os_slice_cpp_variable_4:
     6d8:	57 69 6e 64 6f 77 73 20 53 74 61 6e 64 61 72 64 20 4d 6f 64 65 00 	db     "Windows Standard Mode",0x00
os_slice_cpp_variable_5:
     6ee:	57 69 6e 64 6f 77 73 20 33 38 36 00 	db     "Windows 386",0x00
     6fa:	00 00                	db     2 dup(0x00)                                                  ; dec:   0, chr: '\0'

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 5 (D:\SOURCE\os_slice.cpp)                                    -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 5: D:\SOURCE\os_slice.cpp                                            -
;                                                                              -
;-------------------------------------------------------------------------------
t_os_name:
   12cb4:	b4 06 00 00          	dd     @obj3:os_slice_cpp_variable_1                                ; fixup: num: 21414, src obj: 3, src ofs: 0x12cb4, dst obj: 3, dst ofs: 0x6b4
   12cb8:	b8 06 00 00          	dd     @obj3:os_slice_cpp_variable_2                                ; fixup: num: 21413, src obj: 3, src ofs: 0x12cb8, dst obj: 3, dst ofs: 0x6b8
   12cbc:	c1 06 00 00          	dd     @obj3:os_slice_cpp_variable_3                                ; fixup: num: 21412, src obj: 3, src ofs: 0x12cbc, dst obj: 3, dst ofs: 0x6c1
   12cc0:	d8 06 00 00          	dd     @obj3:os_slice_cpp_variable_4                                ; fixup: num: 21411, src obj: 3, src ofs: 0x12cc0, dst obj: 3, dst ofs: 0x6d8
   12cc4:	ee 06 00 00          	dd     @obj3:os_slice_cpp_variable_5                                ; fixup: num: 21410, src obj: 3, src ofs: 0x12cc4, dst obj: 3, dst ofs: 0x6ee

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 5 (D:\SOURCE\os_slice.cpp)                                    -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 5: D:\SOURCE\os_slice.cpp                                            -
;                                                                              -
;-------------------------------------------------------------------------------
t_os_ver:                                                                                           ; access size: DWORD
   1a160:	00 00 00 00          	dd     0x00000000
t_os_ver_variable_1:                                                                                ; access size: DWORD
   1a164:	00 00 00 00          	dd     0x00000000
t_os_ver_variable_2:                                                                                ; access size: DWORD
   1a168:	00 00 00 00          	dd     0x00000000
t_os_ver_variable_3:                                                                                ; access size: DWORD
   1a16c:	00 00 00 00          	dd     0x00000000
t_os_ver_variable_4:                                                                                ; access size: DWORD
   1a170:	00 00 00 00          	dd     0x00000000
t_os_ver_variable_5:                                                                                ; access size: DWORD
   1a174:	00 00 00 00          	dd     0x00000000
t_os_ver_variable_6:                                                                                ; access size: DWORD
   1a178:	00 00 00 00          	dd     0x00000000
t_os_ver_variable_7:                                                                                ; access size: DWORD
   1a17c:	00 00 00 00          	dd     0x00000000
t_os_ver_variable_8:                                                                                ; access size: DWORD
   1a180:	00 00 00 00          	dd     0x00000000
t_os_ver_variable_9:                                                                                ; access size: DWORD
   1a184:	00 00 00 00          	dd     0x00000000
t_os_type:                                                                                          ; access sizes: DWORD, BYTE
   1a188:	00 00 00 00          	db     4 dup(0x00)                                                  ; dec:   0, chr: '\0'
t_os:                                                                                               ; access size: DWORD
   1a18c:	00 00 00 00          	dd     0x00000000

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 5 (D:\SOURCE\os_slice.cpp)                                    -
;                                                                              -
;-------------------------------------------------------------------------------