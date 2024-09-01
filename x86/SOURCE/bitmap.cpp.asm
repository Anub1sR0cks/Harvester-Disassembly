;-------------------------------------------------------------------------------
;                                                                              -
;  Module 74: D:\SOURCE\bitmap.cpp                                             -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function 'Set_Palette_Register'               -
;-------------------------------------------------
Set_Palette_Register:
   39a60:	53                   	push   ebx
   39a61:	52                   	push   edx
   39a62:	89 c3                	mov    ebx,eax
   39a64:	b0 ff                	mov    al,0xff
   39a66:	ba c6 03 00 00       	mov    edx,0x3c6
   39a6b:	ee                   	out    dx,al
   39a6c:	ba c8 03 00 00       	mov    edx,0x3c8
   39a71:	88 d8                	mov    al,bl
   39a73:	ee                   	out    dx,al
   39a74:	8a 44 24 0c          	mov    al,BYTE PTR [esp+0xc]
   39a78:	ba c9 03 00 00       	mov    edx,0x3c9
   39a7d:	ee                   	out    dx,al
   39a7e:	8a 44 24 0d          	mov    al,BYTE PTR [esp+0xd]
   39a82:	ee                   	out    dx,al
   39a83:	8a 44 24 0e          	mov    al,BYTE PTR [esp+0xe]
   39a87:	ee                   	out    dx,al
   39a88:	5a                   	pop    edx
   39a89:	5b                   	pop    ebx
   39a8a:	c2 04 00             	ret    0x4
   39a8d:	8d 40 00             	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'delta_frame'                        -
;-------------------------------------------------
delta_frame:
   39a90:	56                   	push   esi
   39a91:	57                   	push   edi
   39a92:	55                   	push   ebp
   39a93:	83 ec 0c             	sub    esp,0xc
   39a96:	89 c6                	mov    esi,eax
   39a98:	89 d5                	mov    ebp,edx
   39a9a:	89 df                	mov    edi,ebx
   39a9c:	88 4c 24 04          	mov    BYTE PTR [esp+0x4],cl
   39aa0:	89 f2                	mov    edx,esi
   39aa2:	30 e4                	xor    ah,ah
   39aa4:	8b 0e                	mov    ecx,DWORD PTR [esi]
   39aa6:	88 64 24 08          	mov    BYTE PTR [esp+0x8],ah
   39aaa:	8b 03                	mov    eax,DWORD PTR [ebx]
   39aac:	8b 5b 04             	mov    ebx,DWORD PTR [ebx+0x4]
   39aaf:	39 c8                	cmp    eax,ecx
   39ab1:	75 09                	jne    delta_frame_branch_1
   39ab3:	3b 5e 04             	cmp    ebx,DWORD PTR [esi+0x4]
   39ab6:	0f 84 73 00 00 00    	je     delta_frame_branch_4
delta_frame_branch_1:
   39abc:	89 02                	mov    DWORD PTR [edx],eax
   39abe:	8b 02                	mov    eax,DWORD PTR [edx]
   39ac0:	89 5a 04             	mov    DWORD PTR [edx+0x4],ebx
   39ac3:	85 c0                	test   eax,eax
   39ac5:	75 17                	jne    delta_frame_branch_2
   39ac7:	85 db                	test   ebx,ebx
   39ac9:	75 13                	jne    delta_frame_branch_2
   39acb:	8b 4a 08             	mov    ecx,DWORD PTR [edx+0x8]
   39ace:	85 c9                	test   ecx,ecx
   39ad0:	74 5d                	je     delta_frame_branch_4
   39ad2:	89 c8                	mov    eax,ecx
   39ad4:	e8 0f 79 03 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   39ad9:	89 5a 08             	mov    DWORD PTR [edx+0x8],ebx
   39adc:	eb 51                	jmp    delta_frame_branch_4
delta_frame_branch_2:
   39ade:	8b 4a 08             	mov    ecx,DWORD PTR [edx+0x8]
   39ae1:	85 c9                	test   ecx,ecx
   39ae3:	74 07                	je     delta_frame_branch_3
   39ae5:	89 c8                	mov    eax,ecx
   39ae7:	e8 fc 78 03 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
delta_frame_branch_3:
   39aec:	8b 02                	mov    eax,DWORD PTR [edx]
   39aee:	0f af 42 04          	imul   eax,DWORD PTR [edx+0x4]
   39af2:	c7 42 08 00 00 00 00 	mov    DWORD PTR [edx+0x8],0x0
   39af9:	e8 95 79 03 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   39afe:	89 42 08             	mov    DWORD PTR [edx+0x8],eax
   39b01:	85 c0                	test   eax,eax
   39b03:	75 2a                	jne    delta_frame_branch_4
   39b05:	8b 02                	mov    eax,DWORD PTR [edx]
   39b07:	50                   	push   eax
   39b08:	8b 5a 04             	mov    ebx,DWORD PTR [edx+0x4]
   39b0b:	53                   	push   ebx
   39b0c:	68 70 98 00 00       	push   @obj3:bitmap_cpp_variable_1                                  ; fixup: num: 10383, src obj: 1, src ofs: 0x39b0d, dst obj: 3, dst ofs: 0x9870
   39b11:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 10382, src obj: 1, src ofs: 0x39b12, dst obj: 3, dst ofs: 0x237fc
   39b16:	ba 96 00 00 00       	mov    edx,0x96
   39b1b:	e8 c1 70 03 00       	call   sprintf_
   39b20:	83 c4 10             	add    esp,0x10
   39b23:	bb fc 37 02 00       	mov    ebx,@obj3:log_buffer                                         ; fixup: num: 10440, src obj: 1, src ofs: 0x39b24, dst obj: 3, dst ofs: 0x237fc
   39b28:	31 c0                	xor    eax,eax
   39b2a:	e8 01 e5 ff ff       	call   _error_report
delta_frame_branch_4:
   39b2f:	8b 47 04             	mov    eax,DWORD PTR [edi+0x4]
   39b32:	31 d2                	xor    edx,edx
   39b34:	85 c0                	test   eax,eax
   39b36:	0f 86 76 00 00 00    	jbe    delta_frame_branch_9
   39b3c:	8b 0f                	mov    ecx,DWORD PTR [edi]
   39b3e:	31 c0                	xor    eax,eax
   39b40:	85 c9                	test   ecx,ecx
   39b42:	76 02                	jbe    delta_frame_branch_5
   39b44:	eb 15                	jmp    delta_frame_branch_7
delta_frame_branch_5:
   39b46:	42                   	inc    edx
   39b47:	3b 57 04             	cmp    edx,DWORD PTR [edi+0x4]
   39b4a:	73 66                	jae    delta_frame_branch_9
   39b4c:	8b 0f                	mov    ecx,DWORD PTR [edi]
   39b4e:	31 c0                	xor    eax,eax
   39b50:	85 c9                	test   ecx,ecx
   39b52:	76 f2                	jbe    delta_frame_branch_5
   39b54:	eb 05                	jmp    delta_frame_branch_7
delta_frame_branch_6:
   39b56:	40                   	inc    eax
   39b57:	3b 07                	cmp    eax,DWORD PTR [edi]
   39b59:	73 eb                	jae    delta_frame_branch_5
delta_frame_branch_7:
   39b5b:	8b 1f                	mov    ebx,DWORD PTR [edi]
   39b5d:	0f af da             	imul   ebx,edx
   39b60:	89 1c 24             	mov    DWORD PTR [esp],ebx
   39b63:	8b 0c 24             	mov    ecx,DWORD PTR [esp]
   39b66:	8b 5f 08             	mov    ebx,DWORD PTR [edi+0x8]
   39b69:	01 cb                	add    ebx,ecx
   39b6b:	8b 4d 00             	mov    ecx,DWORD PTR [ebp+0x0]
   39b6e:	0f af ca             	imul   ecx,edx
   39b71:	89 0c 24             	mov    DWORD PTR [esp],ecx
   39b74:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
   39b77:	03 0c 24             	add    ecx,DWORD PTR [esp]
   39b7a:	01 c1                	add    ecx,eax
   39b7c:	8a 1c 03             	mov    bl,BYTE PTR [ebx+eax*1]
   39b7f:	8a 39                	mov    bh,BYTE PTR [ecx]
   39b81:	38 df                	cmp    bh,bl
   39b83:	74 1a                	je     delta_frame_branch_8
   39b85:	8b 0e                	mov    ecx,DWORD PTR [esi]
   39b87:	0f af ca             	imul   ecx,edx
   39b8a:	89 0c 24             	mov    DWORD PTR [esp],ecx
   39b8d:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
   39b90:	03 0c 24             	add    ecx,DWORD PTR [esp]
   39b93:	01 c1                	add    ecx,eax
   39b95:	88 19                	mov    BYTE PTR [ecx],bl
   39b97:	b3 01                	mov    bl,0x1
   39b99:	88 5c 24 08          	mov    BYTE PTR [esp+0x8],bl
   39b9d:	eb b7                	jmp    delta_frame_branch_6
delta_frame_branch_8:
   39b9f:	8b 1e                	mov    ebx,DWORD PTR [esi]
   39ba1:	0f af da             	imul   ebx,edx
   39ba4:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
   39ba7:	01 cb                	add    ebx,ecx
   39ba9:	8a 4c 24 04          	mov    cl,BYTE PTR [esp+0x4]
   39bad:	88 0c 03             	mov    BYTE PTR [ebx+eax*1],cl
   39bb0:	eb a4                	jmp    delta_frame_branch_6
delta_frame_branch_9:
   39bb2:	8a 44 24 08          	mov    al,BYTE PTR [esp+0x8]
   39bb6:	83 c4 0c             	add    esp,0xc
   39bb9:	5d                   	pop    ebp
   39bba:	5f                   	pop    edi
   39bbb:	5e                   	pop    esi
   39bbc:	c3                   	ret    
   39bbd:	8d 40 00             	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'remove_runs'                        -
;-------------------------------------------------
remove_runs:
   39bc0:	56                   	push   esi
   39bc1:	57                   	push   edi
   39bc2:	55                   	push   ebp
   39bc3:	83 ec 10             	sub    esp,0x10
   39bc6:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
   39bca:	89 14 24             	mov    DWORD PTR [esp],edx
   39bcd:	88 5c 24 0c          	mov    BYTE PTR [esp+0xc],bl
   39bd1:	89 4c 24 04          	mov    DWORD PTR [esp+0x4],ecx
   39bd5:	8b 58 04             	mov    ebx,DWORD PTR [eax+0x4]
   39bd8:	0f af 18             	imul   ebx,DWORD PTR [eax]
   39bdb:	89 c2                	mov    edx,eax
   39bdd:	31 c9                	xor    ecx,ecx
   39bdf:	31 c2                	xor    edx,eax
   39be1:	85 db                	test   ebx,ebx
   39be3:	7e 46                	jle    remove_runs_branch_6
   39be5:	eb 2b                	jmp    remove_runs_branch_4
remove_runs_branch_1:
   39be7:	85 c9                	test   ecx,ecx
   39be9:	74 20                	je     remove_runs_branch_2
   39beb:	3b 4c 24 04          	cmp    ecx,DWORD PTR [esp+0x4]
   39bef:	7d 1a                	jge    remove_runs_branch_2
   39bf1:	8b 34 24             	mov    esi,DWORD PTR [esp]
   39bf4:	8b 76 08             	mov    esi,DWORD PTR [esi+0x8]
   39bf7:	01 ef                	add    edi,ebp
   39bf9:	01 ee                	add    esi,ebp
   39bfb:	57                   	push   edi
   39bfc:	89 c8                	mov    eax,ecx
   39bfe:	c1 e9 02             	shr    ecx,0x2
   39c01:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
   39c03:	8a c8                	mov    cl,al
   39c05:	80 e1 03             	and    cl,0x3
   39c08:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
   39c0a:	5f                   	pop    edi
remove_runs_branch_2:
   39c0b:	31 c9                	xor    ecx,ecx
remove_runs_branch_3:
   39c0d:	42                   	inc    edx
   39c0e:	39 da                	cmp    edx,ebx
   39c10:	7d 19                	jge    remove_runs_branch_6
remove_runs_branch_4:
   39c12:	8b 7c 24 08          	mov    edi,DWORD PTR [esp+0x8]
   39c16:	8b 7f 08             	mov    edi,DWORD PTR [edi+0x8]
   39c19:	8a 04 3a             	mov    al,BYTE PTR [edx+edi*1]
   39c1c:	3a 44 24 0c          	cmp    al,BYTE PTR [esp+0xc]
   39c20:	75 c5                	jne    remove_runs_branch_1
   39c22:	85 c9                	test   ecx,ecx
   39c24:	75 02                	jne    remove_runs_branch_5
   39c26:	89 d5                	mov    ebp,edx
remove_runs_branch_5:
   39c28:	41                   	inc    ecx
   39c29:	eb e2                	jmp    remove_runs_branch_3
remove_runs_branch_6:
   39c2b:	83 c4 10             	add    esp,0x10
   39c2e:	5d                   	pop    ebp
   39c2f:	5f                   	pop    edi
   39c30:	5e                   	pop    esi
   39c31:	c3                   	ret    
   39c32:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   39c38:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
   39c3e:	8b c0                	mov    eax,eax

;-------------------------------------------------
;  Function 'get_bounding_box'                   -
;-------------------------------------------------
get_bounding_box:
   39c40:	56                   	push   esi
   39c41:	57                   	push   edi
   39c42:	55                   	push   ebp
   39c43:	83 ec 08             	sub    esp,0x8
   39c46:	8b 7c 24 20          	mov    edi,DWORD PTR [esp+0x20]
   39c4a:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
   39c4e:	89 ce                	mov    esi,ecx
   39c50:	8b 03                	mov    eax,DWORD PTR [ebx]
   39c52:	48                   	dec    eax
   39c53:	89 01                	mov    DWORD PTR [ecx],eax
   39c55:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
   39c58:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
   39c5c:	48                   	dec    eax
   39c5d:	89 02                	mov    DWORD PTR [edx],eax
   39c5f:	c7 07 00 00 00 00    	mov    DWORD PTR [edi],0x0
   39c65:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
   39c69:	8b 07                	mov    eax,DWORD PTR [edi]
   39c6b:	89 02                	mov    DWORD PTR [edx],eax
   39c6d:	8b 4b 04             	mov    ecx,DWORD PTR [ebx+0x4]
   39c70:	31 d2                	xor    edx,edx
   39c72:	85 c9                	test   ecx,ecx
   39c74:	0f 86 77 00 00 00    	jbe    get_bounding_box_branch_7
   39c7a:	8b 2b                	mov    ebp,DWORD PTR [ebx]
   39c7c:	31 c0                	xor    eax,eax
   39c7e:	85 ed                	test   ebp,ebp
   39c80:	76 02                	jbe    get_bounding_box_branch_1
   39c82:	eb 19                	jmp    get_bounding_box_branch_3
get_bounding_box_branch_1:
   39c84:	42                   	inc    edx
   39c85:	3b 53 04             	cmp    edx,DWORD PTR [ebx+0x4]
   39c88:	0f 83 63 00 00 00    	jae    get_bounding_box_branch_7
   39c8e:	8b 2b                	mov    ebp,DWORD PTR [ebx]
   39c90:	31 c0                	xor    eax,eax
   39c92:	85 ed                	test   ebp,ebp
   39c94:	76 ee                	jbe    get_bounding_box_branch_1
   39c96:	eb 05                	jmp    get_bounding_box_branch_3
get_bounding_box_branch_2:
   39c98:	40                   	inc    eax
   39c99:	3b 03                	cmp    eax,DWORD PTR [ebx]
   39c9b:	73 e7                	jae    get_bounding_box_branch_1
get_bounding_box_branch_3:
   39c9d:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
   39ca1:	8b 09                	mov    ecx,DWORD PTR [ecx]
   39ca3:	0f af ca             	imul   ecx,edx
   39ca6:	89 0c 24             	mov    DWORD PTR [esp],ecx
   39ca9:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
   39cad:	8b 2c 24             	mov    ebp,DWORD PTR [esp]
   39cb0:	8b 49 08             	mov    ecx,DWORD PTR [ecx+0x8]
   39cb3:	01 e9                	add    ecx,ebp
   39cb5:	8b 2b                	mov    ebp,DWORD PTR [ebx]
   39cb7:	0f af ea             	imul   ebp,edx
   39cba:	89 2c 24             	mov    DWORD PTR [esp],ebp
   39cbd:	8b 6b 08             	mov    ebp,DWORD PTR [ebx+0x8]
   39cc0:	03 2c 24             	add    ebp,DWORD PTR [esp]
   39cc3:	01 c5                	add    ebp,eax
   39cc5:	8a 2c 01             	mov    ch,BYTE PTR [ecx+eax*1]
   39cc8:	8a 4d 00             	mov    cl,BYTE PTR [ebp+0x0]
   39ccb:	38 cd                	cmp    ch,cl
   39ccd:	74 c9                	je     get_bounding_box_branch_2
   39ccf:	3b 06                	cmp    eax,DWORD PTR [esi]
   39cd1:	7d 02                	jge    get_bounding_box_branch_4
   39cd3:	89 06                	mov    DWORD PTR [esi],eax
get_bounding_box_branch_4:
   39cd5:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
   39cd9:	3b 01                	cmp    eax,DWORD PTR [ecx]
   39cdb:	7e 02                	jle    get_bounding_box_branch_5
   39cdd:	89 01                	mov    DWORD PTR [ecx],eax
get_bounding_box_branch_5:
   39cdf:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
   39ce3:	3b 01                	cmp    eax,DWORD PTR [ecx]
   39ce5:	7d 02                	jge    get_bounding_box_branch_6
   39ce7:	89 01                	mov    DWORD PTR [ecx],eax
get_bounding_box_branch_6:
   39ce9:	3b 07                	cmp    eax,DWORD PTR [edi]
   39ceb:	7e ab                	jle    get_bounding_box_branch_2
   39ced:	89 07                	mov    DWORD PTR [edi],eax
   39cef:	eb a7                	jmp    get_bounding_box_branch_2
get_bounding_box_branch_7:
   39cf1:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
   39cf5:	8b 06                	mov    eax,DWORD PTR [esi]
   39cf7:	3b 02                	cmp    eax,DWORD PTR [edx]
   39cf9:	7f 0a                	jg     get_bounding_box_branch_8
   39cfb:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
   39cff:	8b 0f                	mov    ecx,DWORD PTR [edi]
   39d01:	3b 08                	cmp    ecx,DWORD PTR [eax]
   39d03:	7d 04                	jge    get_bounding_box_branch_9
get_bounding_box_branch_8:
   39d05:	30 c0                	xor    al,al
   39d07:	eb 02                	jmp    get_bounding_box_branch_10
get_bounding_box_branch_9:
   39d09:	b0 01                	mov    al,0x1
get_bounding_box_branch_10:
   39d0b:	83 c4 08             	add    esp,0x8
   39d0e:	5d                   	pop    ebp
   39d0f:	5f                   	pop    edi
   39d10:	5e                   	pop    esi
   39d11:	c2 0c 00             	ret    0xc
   39d14:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   39d1a:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]

;-------------------------------------------------
;  Function 'replace'                            -
;-------------------------------------------------
replace:
   39d20:	51                   	push   ecx
   39d21:	56                   	push   esi
   39d22:	57                   	push   edi
   39d23:	55                   	push   ebp
   39d24:	83 ec 04             	sub    esp,0x4
   39d27:	89 c1                	mov    ecx,eax
   39d29:	89 d7                	mov    edi,edx
   39d2b:	88 1c 24             	mov    BYTE PTR [esp],bl
   39d2e:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
   39d31:	31 f6                	xor    esi,esi
   39d33:	85 d2                	test   edx,edx
   39d35:	76 3b                	jbe    replace_branch_5
   39d37:	eb 06                	jmp    replace_branch_2
replace_branch_1:
   39d39:	46                   	inc    esi
   39d3a:	3b 71 04             	cmp    esi,DWORD PTR [ecx+0x4]
   39d3d:	73 33                	jae    replace_branch_5
replace_branch_2:
   39d3f:	8b 29                	mov    ebp,DWORD PTR [ecx]
   39d41:	31 c0                	xor    eax,eax
   39d43:	85 ed                	test   ebp,ebp
   39d45:	76 f2                	jbe    replace_branch_1
   39d47:	eb 05                	jmp    replace_branch_4
replace_branch_3:
   39d49:	40                   	inc    eax
   39d4a:	3b 01                	cmp    eax,DWORD PTR [ecx]
   39d4c:	73 eb                	jae    replace_branch_1
replace_branch_4:
   39d4e:	8b 11                	mov    edx,DWORD PTR [ecx]
   39d50:	0f af d6             	imul   edx,esi
   39d53:	8b 59 08             	mov    ebx,DWORD PTR [ecx+0x8]
   39d56:	01 da                	add    edx,ebx
   39d58:	01 c2                	add    edx,eax
   39d5a:	8a 1a                	mov    bl,BYTE PTR [edx]
   39d5c:	3a 1c 24             	cmp    bl,BYTE PTR [esp]
   39d5f:	75 e8                	jne    replace_branch_3
   39d61:	8b 1f                	mov    ebx,DWORD PTR [edi]
   39d63:	0f af de             	imul   ebx,esi
   39d66:	8b 6f 08             	mov    ebp,DWORD PTR [edi+0x8]
   39d69:	01 eb                	add    ebx,ebp
   39d6b:	8a 1c 03             	mov    bl,BYTE PTR [ebx+eax*1]
   39d6e:	88 1a                	mov    BYTE PTR [edx],bl
   39d70:	eb d7                	jmp    replace_branch_3
replace_branch_5:
   39d72:	83 c4 04             	add    esp,0x4
   39d75:	5d                   	pop    ebp
   39d76:	5f                   	pop    edi
   39d77:	5e                   	pop    esi
   39d78:	59                   	pop    ecx
   39d79:	c3                   	ret    
   39d7a:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'blit'                               -
;-------------------------------------------------
blit:
   39d80:	56                   	push   esi
   39d81:	57                   	push   edi
   39d82:	55                   	push   ebp
   39d83:	83 ec 14             	sub    esp,0x14
   39d86:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
   39d8a:	89 d8                	mov    eax,ebx
   39d8c:	8b 59 04             	mov    ebx,DWORD PTR [ecx+0x4]
   39d8f:	8b 29                	mov    ebp,DWORD PTR [ecx]
   39d91:	89 5c 24 08          	mov    DWORD PTR [esp+0x8],ebx
   39d95:	8b 59 08             	mov    ebx,DWORD PTR [ecx+0x8]
   39d98:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
   39d9c:	8b 09                	mov    ecx,DWORD PTR [ecx]
   39d9e:	0f af c8             	imul   ecx,eax
   39da1:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
   39da5:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
   39da8:	01 c8                	add    eax,ecx
   39daa:	01 c2                	add    edx,eax
   39dac:	80 7c 24 24 00       	cmp    BYTE PTR [esp+0x24],0x0
   39db1:	74 51                	je     blit_branch_5
   39db3:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
   39db7:	8b 00                	mov    eax,DWORD PTR [eax]
   39db9:	29 e8                	sub    eax,ebp
   39dbb:	31 ff                	xor    edi,edi
   39dbd:	89 04 24             	mov    DWORD PTR [esp],eax
   39dc0:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
   39dc4:	89 7c 24 10          	mov    DWORD PTR [esp+0x10],edi
   39dc8:	85 c0                	test   eax,eax
   39dca:	0f 86 73 00 00 00    	jbe    blit_branch_7
   39dd0:	eb 16                	jmp    blit_branch_2
blit_branch_1:
   39dd2:	8b 04 24             	mov    eax,DWORD PTR [esp]
   39dd5:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
   39dd9:	8b 74 24 08          	mov    esi,DWORD PTR [esp+0x8]
   39ddd:	41                   	inc    ecx
   39dde:	01 c2                	add    edx,eax
   39de0:	89 4c 24 10          	mov    DWORD PTR [esp+0x10],ecx
   39de4:	39 f1                	cmp    ecx,esi
   39de6:	73 5b                	jae    blit_branch_7
blit_branch_2:
   39de8:	31 c0                	xor    eax,eax
   39dea:	85 ed                	test   ebp,ebp
   39dec:	76 e4                	jbe    blit_branch_1
   39dee:	eb 07                	jmp    blit_branch_4
blit_branch_3:
   39df0:	43                   	inc    ebx
   39df1:	40                   	inc    eax
   39df2:	42                   	inc    edx
   39df3:	39 e8                	cmp    eax,ebp
   39df5:	73 db                	jae    blit_branch_1
blit_branch_4:
   39df7:	8a 0b                	mov    cl,BYTE PTR [ebx]
   39df9:	0f b6 f1             	movzx  esi,cl
   39dfc:	85 f6                	test   esi,esi
   39dfe:	74 f0                	je     blit_branch_3
   39e00:	88 0a                	mov    BYTE PTR [edx],cl
   39e02:	eb ec                	jmp    blit_branch_3
blit_branch_5:
   39e04:	31 c9                	xor    ecx,ecx
   39e06:	8b 74 24 08          	mov    esi,DWORD PTR [esp+0x8]
   39e0a:	89 4c 24 0c          	mov    DWORD PTR [esp+0xc],ecx
   39e0e:	85 f6                	test   esi,esi
   39e10:	76 31                	jbe    blit_branch_7
blit_branch_6:
   39e12:	89 e9                	mov    ecx,ebp
   39e14:	89 de                	mov    esi,ebx
   39e16:	89 d7                	mov    edi,edx
   39e18:	57                   	push   edi
   39e19:	89 c8                	mov    eax,ecx
   39e1b:	c1 e9 02             	shr    ecx,0x2
   39e1e:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
   39e20:	8a c8                	mov    cl,al
   39e22:	80 e1 03             	and    cl,0x3
   39e25:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
   39e27:	5f                   	pop    edi
   39e28:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
   39e2c:	8b 74 24 0c          	mov    esi,DWORD PTR [esp+0xc]
   39e30:	8b 7c 24 08          	mov    edi,DWORD PTR [esp+0x8]
   39e34:	01 eb                	add    ebx,ebp
   39e36:	46                   	inc    esi
   39e37:	8b 08                	mov    ecx,DWORD PTR [eax]
   39e39:	89 74 24 0c          	mov    DWORD PTR [esp+0xc],esi
   39e3d:	01 ca                	add    edx,ecx
   39e3f:	39 fe                	cmp    esi,edi
   39e41:	72 cf                	jb     blit_branch_6
blit_branch_7:
   39e43:	83 c4 14             	add    esp,0x14
   39e46:	5d                   	pop    ebp
   39e47:	5f                   	pop    edi
   39e48:	5e                   	pop    esi
   39e49:	c2 04 00             	ret    0x4
   39e4c:	8d 44 20 00          	lea    eax,[eax+eiz*1+0x0]

;-------------------------------------------------
;  Function 'blit_char'                          -
;-------------------------------------------------
blit_char:
   39e50:	56                   	push   esi
   39e51:	57                   	push   edi
   39e52:	55                   	push   ebp
   39e53:	83 ec 04             	sub    esp,0x4
   39e56:	89 c6                	mov    esi,eax
   39e58:	89 d7                	mov    edi,edx
   39e5a:	31 c0                	xor    eax,eax
   39e5c:	88 c8                	mov    al,cl
   39e5e:	8d 04 c5 00 00 00 00 	lea    eax,[eax*8+0x0]
   39e65:	8d 68 f0             	lea    ebp,[eax-0x10]
   39e68:	b8 6e fa 00 f0       	mov    eax,0xf000fa6e
   39e6d:	89 c2                	mov    edx,eax
   39e6f:	c1 fa 1f             	sar    edx,0x1f
   39e72:	c1 e2 0c             	shl    edx,0xc
   39e75:	1b c2                	sbb    eax,edx
   39e77:	c1 f8 0c             	sar    eax,0xc
   39e7a:	0f af 1e             	imul   ebx,DWORD PTR [esi]
   39e7d:	31 c9                	xor    ecx,ecx
   39e7f:	05 6e fa 00 00       	add    eax,0xfa6e
   39e84:	89 0c 24             	mov    DWORD PTR [esp],ecx
   39e87:	01 c5                	add    ebp,eax
   39e89:	8a 74 24 14          	mov    dh,BYTE PTR [esp+0x14]
   39e8d:	01 fb                	add    ebx,edi
   39e8f:	b2 80                	mov    dl,0x80
   39e91:	31 c0                	xor    eax,eax
   39e93:	eb 1f                	jmp    blit_char_branch_3
blit_char_branch_1:
   39e95:	8b 04 24             	mov    eax,DWORD PTR [esp]
   39e98:	45                   	inc    ebp
   39e99:	8b 3e                	mov    edi,DWORD PTR [esi]
   39e9b:	40                   	inc    eax
   39e9c:	01 fb                	add    ebx,edi
   39e9e:	89 04 24             	mov    DWORD PTR [esp],eax
   39ea1:	83 f8 08             	cmp    eax,0x8
   39ea4:	7d 36                	jge    blit_char_branch_5
   39ea6:	b2 80                	mov    dl,0x80
   39ea8:	31 c0                	xor    eax,eax
   39eaa:	eb 08                	jmp    blit_char_branch_3
blit_char_branch_2:
   39eac:	40                   	inc    eax
   39ead:	d0 ea                	shr    dl,1
   39eaf:	83 f8 08             	cmp    eax,0x8
   39eb2:	7d e1                	jge    blit_char_branch_1
blit_char_branch_3:
   39eb4:	31 c9                	xor    ecx,ecx
   39eb6:	0f b6 fa             	movzx  edi,dl
   39eb9:	8a 4d 00             	mov    cl,BYTE PTR [ebp+0x0]
   39ebc:	85 f9                	test   ecx,edi
   39ebe:	74 0a                	je     blit_char_branch_4
   39ec0:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
   39ec3:	01 d9                	add    ecx,ebx
   39ec5:	88 34 01             	mov    BYTE PTR [ecx+eax*1],dh
   39ec8:	eb e2                	jmp    blit_char_branch_2
blit_char_branch_4:
   39eca:	83 7c 24 18 00       	cmp    DWORD PTR [esp+0x18],0x0
   39ecf:	75 db                	jne    blit_char_branch_2
   39ed1:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
   39ed4:	01 d9                	add    ecx,ebx
   39ed6:	c6 04 01 00          	mov    BYTE PTR [ecx+eax*1],0x0
   39eda:	eb d0                	jmp    blit_char_branch_2
blit_char_branch_5:
   39edc:	83 c4 04             	add    esp,0x4
   39edf:	5d                   	pop    ebp
   39ee0:	5f                   	pop    edi
   39ee1:	5e                   	pop    esi
   39ee2:	c2 08 00             	ret    0x8
   39ee5:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   39eeb:	8d 52 00             	lea    edx,[edx+0x0]
   39eee:	8b db                	mov    ebx,ebx

;-------------------------------------------------
;  Function 'blit_string'                        -
;-------------------------------------------------
blit_string:
   39ef0:	56                   	push   esi
   39ef1:	57                   	push   edi
   39ef2:	55                   	push   ebp
   39ef3:	83 ec 24             	sub    esp,0x24
   39ef6:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
   39efa:	89 d6                	mov    esi,edx
   39efc:	89 5c 24 10          	mov    DWORD PTR [esp+0x10],ebx
   39f00:	89 4c 24 08          	mov    DWORD PTR [esp+0x8],ecx
   39f04:	b8 6e fa 00 f0       	mov    eax,0xf000fa6e
   39f09:	89 c2                	mov    edx,eax
   39f0b:	c1 fa 1f             	sar    edx,0x1f
   39f0e:	c1 e2 0c             	shl    edx,0xc
   39f11:	1b c2                	sbb    eax,edx
   39f13:	c1 f8 0c             	sar    eax,0xc
   39f16:	05 6e fa 00 00       	add    eax,0xfa6e
   39f1b:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
   39f1f:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
   39f23:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
   39f27:	89 74 24 18          	mov    DWORD PTR [esp+0x18],esi
   39f2b:	89 04 24             	mov    DWORD PTR [esp],eax
   39f2e:	eb 12                	jmp    blit_string_branch_2
blit_string_branch_1:
   39f30:	8b 2c 24             	mov    ebp,DWORD PTR [esp]
   39f33:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
   39f37:	45                   	inc    ebp
   39f38:	83 c0 08             	add    eax,0x8
   39f3b:	89 2c 24             	mov    DWORD PTR [esp],ebp
   39f3e:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
blit_string_branch_2:
   39f42:	8b 1c 24             	mov    ebx,DWORD PTR [esp]
   39f45:	31 c0                	xor    eax,eax
   39f47:	8a 03                	mov    al,BYTE PTR [ebx]
   39f49:	85 c0                	test   eax,eax
   39f4b:	0f 84 90 00 00 00    	je     blit_string_branch_7
   39f51:	8b 5c 24 08          	mov    ebx,DWORD PTR [esp+0x8]
   39f55:	89 5c 24 20          	mov    DWORD PTR [esp+0x20],ebx
   39f59:	8b 5c 24 38          	mov    ebx,DWORD PTR [esp+0x38]
   39f5d:	89 5c 24 04          	mov    DWORD PTR [esp+0x4],ebx
   39f61:	8b 5c 24 10          	mov    ebx,DWORD PTR [esp+0x10]
   39f65:	0f af 19             	imul   ebx,DWORD PTR [ecx]
   39f68:	25 ff 00 00 00       	and    eax,0xff
   39f6d:	8d 04 c5 00 00 00 00 	lea    eax,[eax*8+0x0]
   39f74:	8d 68 f0             	lea    ebp,[eax-0x10]
   39f77:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
   39f7b:	89 c8                	mov    eax,ecx
   39f7d:	8b 7c 24 18          	mov    edi,DWORD PTR [esp+0x18]
   39f81:	31 c8                	xor    eax,ecx
   39f83:	01 d5                	add    ebp,edx
   39f85:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
   39f89:	01 fb                	add    ebx,edi
   39f8b:	b2 80                	mov    dl,0x80
   39f8d:	31 c0                	xor    eax,eax
   39f8f:	8a 74 24 20          	mov    dh,BYTE PTR [esp+0x20]
   39f93:	eb 25                	jmp    blit_string_branch_5
blit_string_branch_3:
   39f95:	8b 74 24 1c          	mov    esi,DWORD PTR [esp+0x1c]
   39f99:	45                   	inc    ebp
   39f9a:	8b 11                	mov    edx,DWORD PTR [ecx]
   39f9c:	46                   	inc    esi
   39f9d:	01 d3                	add    ebx,edx
   39f9f:	89 74 24 1c          	mov    DWORD PTR [esp+0x1c],esi
   39fa3:	83 fe 08             	cmp    esi,0x8
   39fa6:	7d 88                	jge    blit_string_branch_1
   39fa8:	b2 80                	mov    dl,0x80
   39faa:	31 c0                	xor    eax,eax
   39fac:	8a 74 24 20          	mov    dh,BYTE PTR [esp+0x20]
   39fb0:	eb 08                	jmp    blit_string_branch_5
blit_string_branch_4:
   39fb2:	40                   	inc    eax
   39fb3:	d0 ea                	shr    dl,1
   39fb5:	83 f8 08             	cmp    eax,0x8
   39fb8:	7d db                	jge    blit_string_branch_3
blit_string_branch_5:
   39fba:	0f b6 fa             	movzx  edi,dl
   39fbd:	0f b6 75 00          	movzx  esi,BYTE PTR [ebp+0x0]
   39fc1:	85 fe                	test   esi,edi
   39fc3:	74 0a                	je     blit_string_branch_6
   39fc5:	8b 71 08             	mov    esi,DWORD PTR [ecx+0x8]
   39fc8:	01 de                	add    esi,ebx
   39fca:	88 34 06             	mov    BYTE PTR [esi+eax*1],dh
   39fcd:	eb e3                	jmp    blit_string_branch_4
blit_string_branch_6:
   39fcf:	83 7c 24 04 00       	cmp    DWORD PTR [esp+0x4],0x0
   39fd4:	75 dc                	jne    blit_string_branch_4
   39fd6:	8b 71 08             	mov    esi,DWORD PTR [ecx+0x8]
   39fd9:	01 de                	add    esi,ebx
   39fdb:	c6 04 06 00          	mov    BYTE PTR [esi+eax*1],0x0
   39fdf:	eb d1                	jmp    blit_string_branch_4
blit_string_branch_7:
   39fe1:	83 c4 24             	add    esp,0x24
   39fe4:	5d                   	pop    ebp
   39fe5:	5f                   	pop    edi
   39fe6:	5e                   	pop    esi
   39fe7:	c2 08 00             	ret    0x8
   39fea:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'load_from_pcx_buffer'               -
;-------------------------------------------------
load_from_pcx_buffer:
   39ff0:	56                   	push   esi
   39ff1:	57                   	push   edi
   39ff2:	55                   	push   ebp
   39ff3:	83 ec 20             	sub    esp,0x20
   39ff6:	89 c5                	mov    ebp,eax
   39ff8:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
   39ffc:	89 5c 24 0c          	mov    DWORD PTR [esp+0xc],ebx
   3a000:	88 4c 24 18          	mov    BYTE PTR [esp+0x18],cl
   3a004:	85 d2                	test   edx,edx
   3a006:	0f 84 15 02 00 00    	je     load_from_pcx_buffer_branch_15
   3a00c:	be 80 00 00 00       	mov    esi,0x80
   3a011:	0f bf 42 0a          	movsx  eax,WORD PTR [edx+0xa]
   3a015:	0f bf 5a 42          	movsx  ebx,WORD PTR [edx+0x42]
   3a019:	8b 7d 00             	mov    edi,DWORD PTR [ebp+0x0]
   3a01c:	40                   	inc    eax
   3a01d:	89 ea                	mov    edx,ebp
   3a01f:	89 d9                	mov    ecx,ebx
   3a021:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
   3a025:	39 fb                	cmp    ebx,edi
   3a027:	75 09                	jne    load_from_pcx_buffer_branch_1
   3a029:	3b 45 04             	cmp    eax,DWORD PTR [ebp+0x4]
   3a02c:	0f 84 75 00 00 00    	je     load_from_pcx_buffer_branch_4
load_from_pcx_buffer_branch_1:
   3a032:	89 0a                	mov    DWORD PTR [edx],ecx
   3a034:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
   3a038:	8b 0a                	mov    ecx,DWORD PTR [edx]
   3a03a:	89 42 04             	mov    DWORD PTR [edx+0x4],eax
   3a03d:	85 c9                	test   ecx,ecx
   3a03f:	75 17                	jne    load_from_pcx_buffer_branch_2
   3a041:	85 c0                	test   eax,eax
   3a043:	75 13                	jne    load_from_pcx_buffer_branch_2
   3a045:	8b 5a 08             	mov    ebx,DWORD PTR [edx+0x8]
   3a048:	85 db                	test   ebx,ebx
   3a04a:	74 5b                	je     load_from_pcx_buffer_branch_4
   3a04c:	89 d8                	mov    eax,ebx
   3a04e:	e8 95 73 03 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   3a053:	89 4a 08             	mov    DWORD PTR [edx+0x8],ecx
   3a056:	eb 4f                	jmp    load_from_pcx_buffer_branch_4
load_from_pcx_buffer_branch_2:
   3a058:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
   3a05b:	85 c0                	test   eax,eax
   3a05d:	74 05                	je     load_from_pcx_buffer_branch_3
   3a05f:	e8 84 73 03 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
load_from_pcx_buffer_branch_3:
   3a064:	8b 02                	mov    eax,DWORD PTR [edx]
   3a066:	0f af 42 04          	imul   eax,DWORD PTR [edx+0x4]
   3a06a:	c7 42 08 00 00 00 00 	mov    DWORD PTR [edx+0x8],0x0
   3a071:	e8 1d 74 03 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   3a076:	89 42 08             	mov    DWORD PTR [edx+0x8],eax
   3a079:	85 c0                	test   eax,eax
   3a07b:	75 2a                	jne    load_from_pcx_buffer_branch_4
   3a07d:	8b 3a                	mov    edi,DWORD PTR [edx]
   3a07f:	57                   	push   edi
   3a080:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
   3a083:	50                   	push   eax
   3a084:	68 70 98 00 00       	push   @obj3:bitmap_cpp_variable_1                                  ; fixup: num: 10506, src obj: 1, src ofs: 0x3a085, dst obj: 3, dst ofs: 0x9870
   3a089:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 10505, src obj: 1, src ofs: 0x3a08a, dst obj: 3, dst ofs: 0x237fc
   3a08e:	bb fc 37 02 00       	mov    ebx,@obj3:log_buffer                                         ; fixup: num: 10504, src obj: 1, src ofs: 0x3a08f, dst obj: 3, dst ofs: 0x237fc
   3a093:	e8 49 6b 03 00       	call   sprintf_
   3a098:	83 c4 10             	add    esp,0x10
   3a09b:	ba 96 00 00 00       	mov    edx,0x96
   3a0a0:	31 c0                	xor    eax,eax
   3a0a2:	e8 89 df ff ff       	call   _error_report
load_from_pcx_buffer_branch_4:
   3a0a7:	8b 7d 00             	mov    edi,DWORD PTR [ebp+0x0]
   3a0aa:	0f af 7d 04          	imul   edi,DWORD PTR [ebp+0x4]
   3a0ae:	31 c0                	xor    eax,eax
   3a0b0:	85 ff                	test   edi,edi
   3a0b2:	76 55                	jbe    load_from_pcx_buffer_branch_9
load_from_pcx_buffer_branch_5:
   3a0b4:	8b 5c 24 04          	mov    ebx,DWORD PTR [esp+0x4]
   3a0b8:	89 f2                	mov    edx,esi
   3a0ba:	01 da                	add    edx,ebx
   3a0bc:	8a 12                	mov    dl,BYTE PTR [edx]
   3a0be:	31 db                	xor    ebx,ebx
   3a0c0:	88 d3                	mov    bl,dl
   3a0c2:	46                   	inc    esi
   3a0c3:	81 fb c0 00 00 00    	cmp    ebx,0xc0
   3a0c9:	7c 30                	jl     load_from_pcx_buffer_branch_7
   3a0cb:	8d 93 40 ff ff ff    	lea    edx,[ebx-0xc0]
   3a0d1:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
   3a0d5:	89 f3                	mov    ebx,esi
   3a0d7:	01 cb                	add    ebx,ecx
   3a0d9:	8a 1b                	mov    bl,BYTE PTR [ebx]
   3a0db:	46                   	inc    esi
   3a0dc:	88 5c 24 1c          	mov    BYTE PTR [esp+0x1c],bl
load_from_pcx_buffer_branch_6:
   3a0e0:	89 d3                	mov    ebx,edx
   3a0e2:	4a                   	dec    edx
   3a0e3:	85 db                	test   ebx,ebx
   3a0e5:	7e 1e                	jle    load_from_pcx_buffer_branch_8
   3a0e7:	39 f8                	cmp    eax,edi
   3a0e9:	73 1a                	jae    load_from_pcx_buffer_branch_8
   3a0eb:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
   3a0ee:	89 c3                	mov    ebx,eax
   3a0f0:	01 cb                	add    ebx,ecx
   3a0f2:	8a 4c 24 1c          	mov    cl,BYTE PTR [esp+0x1c]
   3a0f6:	40                   	inc    eax
   3a0f7:	88 0b                	mov    BYTE PTR [ebx],cl
   3a0f9:	eb e5                	jmp    load_from_pcx_buffer_branch_6
load_from_pcx_buffer_branch_7:
   3a0fb:	89 c3                	mov    ebx,eax
   3a0fd:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
   3a100:	01 cb                	add    ebx,ecx
   3a102:	40                   	inc    eax
   3a103:	88 13                	mov    BYTE PTR [ebx],dl
load_from_pcx_buffer_branch_8:
   3a105:	39 f8                	cmp    eax,edi
   3a107:	72 ab                	jb     load_from_pcx_buffer_branch_5
load_from_pcx_buffer_branch_9:
   3a109:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
   3a10d:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
   3a111:	0f bf 40 08          	movsx  eax,WORD PTR [eax+0x8]
   3a115:	0f bf 52 42          	movsx  edx,WORD PTR [edx+0x42]
   3a119:	40                   	inc    eax
   3a11a:	39 c2                	cmp    edx,eax
   3a11c:	7e 70                	jle    load_from_pcx_buffer_branch_13
   3a11e:	8b 45 00             	mov    eax,DWORD PTR [ebp+0x0]
   3a121:	8b 75 04             	mov    esi,DWORD PTR [ebp+0x4]
   3a124:	48                   	dec    eax
   3a125:	0f af c6             	imul   eax,esi
   3a128:	e8 66 73 03 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   3a12d:	89 04 24             	mov    DWORD PTR [esp],eax
   3a130:	85 c0                	test   eax,eax
   3a132:	75 0f                	jne    load_from_pcx_buffer_branch_10
   3a134:	bb 96 98 00 00       	mov    ebx,@obj3:bitmap_cpp_variable_2                              ; fixup: num: 10507, src obj: 1, src ofs: 0x3a135, dst obj: 3, dst ofs: 0x9896
   3a139:	ba fd 00 00 00       	mov    edx,0xfd
   3a13e:	e8 ed de ff ff       	call   _error_report
load_from_pcx_buffer_branch_10:
   3a143:	8b 7d 04             	mov    edi,DWORD PTR [ebp+0x4]
   3a146:	31 d2                	xor    edx,edx
   3a148:	85 ff                	test   edi,edi
   3a14a:	76 2d                	jbe    load_from_pcx_buffer_branch_12
load_from_pcx_buffer_branch_11:
   3a14c:	8b 45 00             	mov    eax,DWORD PTR [ebp+0x0]
   3a14f:	0f af c2             	imul   eax,edx
   3a152:	8b 4d 00             	mov    ecx,DWORD PTR [ebp+0x0]
   3a155:	89 d7                	mov    edi,edx
   3a157:	49                   	dec    ecx
   3a158:	0f af f9             	imul   edi,ecx
   3a15b:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
   3a15e:	01 c6                	add    esi,eax
   3a160:	03 3c 24             	add    edi,DWORD PTR [esp]
   3a163:	42                   	inc    edx
   3a164:	57                   	push   edi
   3a165:	89 c8                	mov    eax,ecx
   3a167:	c1 e9 02             	shr    ecx,0x2
   3a16a:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
   3a16c:	8a c8                	mov    cl,al
   3a16e:	80 e1 03             	and    cl,0x3
   3a171:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
   3a173:	5f                   	pop    edi
   3a174:	3b 55 04             	cmp    edx,DWORD PTR [ebp+0x4]
   3a177:	72 d3                	jb     load_from_pcx_buffer_branch_11
load_from_pcx_buffer_branch_12:
   3a179:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
   3a17c:	e8 67 72 03 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   3a181:	8b 4d 00             	mov    ecx,DWORD PTR [ebp+0x0]
   3a184:	8b 04 24             	mov    eax,DWORD PTR [esp]
   3a187:	49                   	dec    ecx
   3a188:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
   3a18b:	89 4d 00             	mov    DWORD PTR [ebp+0x0],ecx
load_from_pcx_buffer_branch_13:
   3a18e:	8b 5c 24 0c          	mov    ebx,DWORD PTR [esp+0xc]
   3a192:	8a 64 24 18          	mov    ah,BYTE PTR [esp+0x18]
   3a196:	81 eb 00 03 00 00    	sub    ebx,0x300
   3a19c:	84 e4                	test   ah,ah
   3a19e:	0f 84 7d 00 00 00    	je     load_from_pcx_buffer_branch_15
   3a1a4:	bd c9 03 00 00       	mov    ebp,0x3c9
   3a1a9:	31 c9                	xor    ecx,ecx
   3a1ab:	8d 40 00             	lea    eax,[eax+0x0]
   3a1ae:	8b c9                	mov    ecx,ecx
load_from_pcx_buffer_branch_14:
   3a1b0:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
   3a1b4:	8a 04 03             	mov    al,BYTE PTR [ebx+eax*1]
   3a1b7:	25 ff 00 00 00       	and    eax,0xff
   3a1bc:	c1 f8 02             	sar    eax,0x2
   3a1bf:	43                   	inc    ebx
   3a1c0:	88 44 24 10          	mov    BYTE PTR [esp+0x10],al
   3a1c4:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
   3a1c8:	8a 04 03             	mov    al,BYTE PTR [ebx+eax*1]
   3a1cb:	25 ff 00 00 00       	and    eax,0xff
   3a1d0:	c1 f8 02             	sar    eax,0x2
   3a1d3:	43                   	inc    ebx
   3a1d4:	88 44 24 11          	mov    BYTE PTR [esp+0x11],al
   3a1d8:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
   3a1dc:	8a 04 03             	mov    al,BYTE PTR [ebx+eax*1]
   3a1df:	8d 7c 24 14          	lea    edi,[esp+0x14]
   3a1e3:	25 ff 00 00 00       	and    eax,0xff
   3a1e8:	8d 74 24 10          	lea    esi,[esp+0x10]
   3a1ec:	c1 f8 02             	sar    eax,0x2
   3a1ef:	ba c6 03 00 00       	mov    edx,0x3c6
   3a1f4:	88 44 24 12          	mov    BYTE PTR [esp+0x12],al
   3a1f8:	b0 ff                	mov    al,0xff
   3a1fa:	66 a5                	movs   WORD PTR es:[edi],WORD PTR ds:[esi]
   3a1fc:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
   3a1fd:	ee                   	out    dx,al
   3a1fe:	ba c8 03 00 00       	mov    edx,0x3c8
   3a203:	88 c8                	mov    al,cl
   3a205:	ee                   	out    dx,al
   3a206:	8a 44 24 14          	mov    al,BYTE PTR [esp+0x14]
   3a20a:	89 ea                	mov    edx,ebp
   3a20c:	ee                   	out    dx,al
   3a20d:	8a 44 24 15          	mov    al,BYTE PTR [esp+0x15]
   3a211:	43                   	inc    ebx
   3a212:	ee                   	out    dx,al
   3a213:	8a 44 24 16          	mov    al,BYTE PTR [esp+0x16]
   3a217:	41                   	inc    ecx
   3a218:	ee                   	out    dx,al
   3a219:	81 f9 00 01 00 00    	cmp    ecx,0x100
   3a21f:	7c 8f                	jl     load_from_pcx_buffer_branch_14
load_from_pcx_buffer_branch_15:
   3a221:	83 c4 20             	add    esp,0x20
   3a224:	5d                   	pop    ebp
   3a225:	5f                   	pop    edi
   3a226:	5e                   	pop    esi
   3a227:	c3                   	ret    
   3a228:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   3a22e:	8b d2                	mov    edx,edx

;-------------------------------------------------
;  Function 'load_from_pcx_file'                 -
;-------------------------------------------------
load_from_pcx_file:
   3a230:	51                   	push   ecx
   3a231:	56                   	push   esi
   3a232:	57                   	push   edi
   3a233:	55                   	push   ebp
   3a234:	83 ec 30             	sub    esp,0x30
   3a237:	89 c7                	mov    edi,eax
   3a239:	89 d6                	mov    esi,edx
   3a23b:	88 5c 24 24          	mov    BYTE PTR [esp+0x24],bl
   3a23f:	89 d0                	mov    eax,edx
   3a241:	e8 3a 2a fd ff       	call   XFILE_size
   3a246:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
   3a24a:	83 f8 ff             	cmp    eax,0xffffffff
   3a24d:	75 24                	jne    load_from_pcx_file_branch_1
   3a24f:	52                   	push   edx
   3a250:	68 ae 98 00 00       	push   @obj3:bitmap_cpp_variable_3                                  ; fixup: num: 10511, src obj: 1, src ofs: 0x3a251, dst obj: 3, dst ofs: 0x98ae
   3a255:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 10510, src obj: 1, src ofs: 0x3a256, dst obj: 3, dst ofs: 0x237fc
   3a25a:	bb fc 37 02 00       	mov    ebx,@obj3:log_buffer                                         ; fixup: num: 10509, src obj: 1, src ofs: 0x3a25b, dst obj: 3, dst ofs: 0x237fc
   3a25f:	e8 7d 69 03 00       	call   sprintf_
   3a264:	83 c4 0c             	add    esp,0xc
   3a267:	ba 1a 01 00 00       	mov    edx,0x11a
   3a26c:	31 c0                	xor    eax,eax
   3a26e:	e8 bd dd ff ff       	call   _error_report
load_from_pcx_file_branch_1:
   3a273:	b9 1c 01 00 00       	mov    ecx,0x11c
   3a278:	bb c8 98 00 00       	mov    ebx,@obj3:bitmap_cpp_variable_4                              ; fixup: num: 10508, src obj: 1, src ofs: 0x3a279, dst obj: 3, dst ofs: 0x98c8
   3a27d:	89 f0                	mov    eax,esi
   3a27f:	31 d2                	xor    edx,edx
   3a281:	e8 5a 2b fd ff       	call   XFILE_read2
   3a286:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
   3a28a:	85 c0                	test   eax,eax
   3a28c:	75 0f                	jne    load_from_pcx_file_branch_2
   3a28e:	bb d3 98 00 00       	mov    ebx,@obj3:bitmap_cpp_variable_5                              ; fixup: num: 10512, src obj: 1, src ofs: 0x3a28f, dst obj: 3, dst ofs: 0x98d3
   3a293:	ba 1c 01 00 00       	mov    edx,0x11c
   3a298:	e8 93 dd ff ff       	call   _error_report
load_from_pcx_file_branch_2:
   3a29d:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
   3a2a1:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
   3a2a5:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
   3a2a9:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
   3a2ad:	89 04 24             	mov    DWORD PTR [esp],eax
   3a2b0:	8a 44 24 24          	mov    al,BYTE PTR [esp+0x24]
   3a2b4:	89 fd                	mov    ebp,edi
   3a2b6:	88 44 24 2c          	mov    BYTE PTR [esp+0x2c],al
   3a2ba:	85 d2                	test   edx,edx
   3a2bc:	0f 84 2f 02 00 00    	je     load_from_pcx_file_branch_17
   3a2c2:	be 80 00 00 00       	mov    esi,0x80
   3a2c7:	0f bf 5a 0a          	movsx  ebx,WORD PTR [edx+0xa]
   3a2cb:	0f bf 42 42          	movsx  eax,WORD PTR [edx+0x42]
   3a2cf:	8b 0f                	mov    ecx,DWORD PTR [edi]
   3a2d1:	43                   	inc    ebx
   3a2d2:	89 fa                	mov    edx,edi
   3a2d4:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
   3a2d8:	89 5c 24 08          	mov    DWORD PTR [esp+0x8],ebx
   3a2dc:	39 c8                	cmp    eax,ecx
   3a2de:	75 09                	jne    load_from_pcx_file_branch_3
   3a2e0:	3b 5f 04             	cmp    ebx,DWORD PTR [edi+0x4]
   3a2e3:	0f 84 7f 00 00 00    	je     load_from_pcx_file_branch_6
load_from_pcx_file_branch_3:
   3a2e9:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
   3a2ed:	89 02                	mov    DWORD PTR [edx],eax
   3a2ef:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
   3a2f3:	8b 1a                	mov    ebx,DWORD PTR [edx]
   3a2f5:	89 42 04             	mov    DWORD PTR [edx+0x4],eax
   3a2f8:	85 db                	test   ebx,ebx
   3a2fa:	75 1b                	jne    load_from_pcx_file_branch_4
   3a2fc:	85 c0                	test   eax,eax
   3a2fe:	75 17                	jne    load_from_pcx_file_branch_4
   3a300:	8b 5a 08             	mov    ebx,DWORD PTR [edx+0x8]
   3a303:	85 db                	test   ebx,ebx
   3a305:	74 61                	je     load_from_pcx_file_branch_6
   3a307:	89 d8                	mov    eax,ebx
   3a309:	e8 da 70 03 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   3a30e:	c7 42 08 00 00 00 00 	mov    DWORD PTR [edx+0x8],0x0
   3a315:	eb 51                	jmp    load_from_pcx_file_branch_6
load_from_pcx_file_branch_4:
   3a317:	8b 7a 08             	mov    edi,DWORD PTR [edx+0x8]
   3a31a:	85 ff                	test   edi,edi
   3a31c:	74 07                	je     load_from_pcx_file_branch_5
   3a31e:	89 f8                	mov    eax,edi
   3a320:	e8 c3 70 03 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
load_from_pcx_file_branch_5:
   3a325:	8b 02                	mov    eax,DWORD PTR [edx]
   3a327:	0f af 42 04          	imul   eax,DWORD PTR [edx+0x4]
   3a32b:	c7 42 08 00 00 00 00 	mov    DWORD PTR [edx+0x8],0x0
   3a332:	e8 5c 71 03 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   3a337:	89 42 08             	mov    DWORD PTR [edx+0x8],eax
   3a33a:	85 c0                	test   eax,eax
   3a33c:	75 2a                	jne    load_from_pcx_file_branch_6
   3a33e:	8b 3a                	mov    edi,DWORD PTR [edx]
   3a340:	57                   	push   edi
   3a341:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
   3a344:	50                   	push   eax
   3a345:	68 70 98 00 00       	push   @obj3:bitmap_cpp_variable_1                                  ; fixup: num: 10515, src obj: 1, src ofs: 0x3a346, dst obj: 3, dst ofs: 0x9870
   3a34a:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 10514, src obj: 1, src ofs: 0x3a34b, dst obj: 3, dst ofs: 0x237fc
   3a34f:	bb fc 37 02 00       	mov    ebx,@obj3:log_buffer                                         ; fixup: num: 10513, src obj: 1, src ofs: 0x3a350, dst obj: 3, dst ofs: 0x237fc
   3a354:	e8 88 68 03 00       	call   sprintf_
   3a359:	83 c4 10             	add    esp,0x10
   3a35c:	ba 96 00 00 00       	mov    edx,0x96
   3a361:	31 c0                	xor    eax,eax
   3a363:	e8 c8 dc ff ff       	call   _error_report
load_from_pcx_file_branch_6:
   3a368:	8b 7d 00             	mov    edi,DWORD PTR [ebp+0x0]
   3a36b:	0f af 7d 04          	imul   edi,DWORD PTR [ebp+0x4]
   3a36f:	31 c0                	xor    eax,eax
   3a371:	85 ff                	test   edi,edi
   3a373:	76 55                	jbe    load_from_pcx_file_branch_11
load_from_pcx_file_branch_7:
   3a375:	8b 5c 24 18          	mov    ebx,DWORD PTR [esp+0x18]
   3a379:	89 f2                	mov    edx,esi
   3a37b:	01 da                	add    edx,ebx
   3a37d:	8a 12                	mov    dl,BYTE PTR [edx]
   3a37f:	31 db                	xor    ebx,ebx
   3a381:	88 d3                	mov    bl,dl
   3a383:	46                   	inc    esi
   3a384:	81 fb c0 00 00 00    	cmp    ebx,0xc0
   3a38a:	7c 30                	jl     load_from_pcx_file_branch_9
   3a38c:	8d 93 40 ff ff ff    	lea    edx,[ebx-0xc0]
   3a392:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
   3a396:	89 f3                	mov    ebx,esi
   3a398:	01 cb                	add    ebx,ecx
   3a39a:	8a 1b                	mov    bl,BYTE PTR [ebx]
   3a39c:	46                   	inc    esi
   3a39d:	88 5c 24 28          	mov    BYTE PTR [esp+0x28],bl
load_from_pcx_file_branch_8:
   3a3a1:	89 d3                	mov    ebx,edx
   3a3a3:	4a                   	dec    edx
   3a3a4:	85 db                	test   ebx,ebx
   3a3a6:	7e 1e                	jle    load_from_pcx_file_branch_10
   3a3a8:	39 f8                	cmp    eax,edi
   3a3aa:	73 1a                	jae    load_from_pcx_file_branch_10
   3a3ac:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
   3a3af:	89 c3                	mov    ebx,eax
   3a3b1:	01 cb                	add    ebx,ecx
   3a3b3:	8a 4c 24 28          	mov    cl,BYTE PTR [esp+0x28]
   3a3b7:	40                   	inc    eax
   3a3b8:	88 0b                	mov    BYTE PTR [ebx],cl
   3a3ba:	eb e5                	jmp    load_from_pcx_file_branch_8
load_from_pcx_file_branch_9:
   3a3bc:	89 c3                	mov    ebx,eax
   3a3be:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
   3a3c1:	01 cb                	add    ebx,ecx
   3a3c3:	40                   	inc    eax
   3a3c4:	88 13                	mov    BYTE PTR [ebx],dl
load_from_pcx_file_branch_10:
   3a3c6:	39 f8                	cmp    eax,edi
   3a3c8:	72 ab                	jb     load_from_pcx_file_branch_7
load_from_pcx_file_branch_11:
   3a3ca:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
   3a3ce:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
   3a3d2:	0f bf 40 08          	movsx  eax,WORD PTR [eax+0x8]
   3a3d6:	0f bf 52 42          	movsx  edx,WORD PTR [edx+0x42]
   3a3da:	40                   	inc    eax
   3a3db:	39 c2                	cmp    edx,eax
   3a3dd:	0f 8e 73 00 00 00    	jle    load_from_pcx_file_branch_15
   3a3e3:	8b 45 00             	mov    eax,DWORD PTR [ebp+0x0]
   3a3e6:	8b 75 04             	mov    esi,DWORD PTR [ebp+0x4]
   3a3e9:	48                   	dec    eax
   3a3ea:	0f af c6             	imul   eax,esi
   3a3ed:	e8 a1 70 03 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   3a3f2:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
   3a3f6:	85 c0                	test   eax,eax
   3a3f8:	75 0f                	jne    load_from_pcx_file_branch_12
   3a3fa:	bb 96 98 00 00       	mov    ebx,@obj3:bitmap_cpp_variable_2                              ; fixup: num: 10516, src obj: 1, src ofs: 0x3a3fb, dst obj: 3, dst ofs: 0x9896
   3a3ff:	ba fd 00 00 00       	mov    edx,0xfd
   3a404:	e8 27 dc ff ff       	call   _error_report
load_from_pcx_file_branch_12:
   3a409:	8b 7d 04             	mov    edi,DWORD PTR [ebp+0x4]
   3a40c:	31 d2                	xor    edx,edx
   3a40e:	85 ff                	test   edi,edi
   3a410:	76 2e                	jbe    load_from_pcx_file_branch_14
load_from_pcx_file_branch_13:
   3a412:	8b 75 00             	mov    esi,DWORD PTR [ebp+0x0]
   3a415:	0f af f2             	imul   esi,edx
   3a418:	8b 4d 00             	mov    ecx,DWORD PTR [ebp+0x0]
   3a41b:	89 d7                	mov    edi,edx
   3a41d:	49                   	dec    ecx
   3a41e:	0f af f9             	imul   edi,ecx
   3a421:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
   3a424:	01 c6                	add    esi,eax
   3a426:	03 7c 24 04          	add    edi,DWORD PTR [esp+0x4]
   3a42a:	42                   	inc    edx
   3a42b:	57                   	push   edi
   3a42c:	89 c8                	mov    eax,ecx
   3a42e:	c1 e9 02             	shr    ecx,0x2
   3a431:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
   3a433:	8a c8                	mov    cl,al
   3a435:	80 e1 03             	and    cl,0x3
   3a438:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
   3a43a:	5f                   	pop    edi
   3a43b:	3b 55 04             	cmp    edx,DWORD PTR [ebp+0x4]
   3a43e:	72 d2                	jb     load_from_pcx_file_branch_13
load_from_pcx_file_branch_14:
   3a440:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
   3a443:	e8 a0 6f 03 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   3a448:	8b 4d 00             	mov    ecx,DWORD PTR [ebp+0x0]
   3a44b:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
   3a44f:	49                   	dec    ecx
   3a450:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
   3a453:	89 4d 00             	mov    DWORD PTR [ebp+0x0],ecx
load_from_pcx_file_branch_15:
   3a456:	8b 1c 24             	mov    ebx,DWORD PTR [esp]
   3a459:	8a 64 24 2c          	mov    ah,BYTE PTR [esp+0x2c]
   3a45d:	81 eb 00 03 00 00    	sub    ebx,0x300
   3a463:	84 e4                	test   ah,ah
   3a465:	0f 84 86 00 00 00    	je     load_from_pcx_file_branch_17
   3a46b:	bd c9 03 00 00       	mov    ebp,0x3c9
   3a470:	31 c9                	xor    ecx,ecx
   3a472:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   3a478:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
   3a47e:	8b c0                	mov    eax,eax
load_from_pcx_file_branch_16:
   3a480:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
   3a484:	8a 04 03             	mov    al,BYTE PTR [ebx+eax*1]
   3a487:	25 ff 00 00 00       	and    eax,0xff
   3a48c:	c1 f8 02             	sar    eax,0x2
   3a48f:	43                   	inc    ebx
   3a490:	88 44 24 1c          	mov    BYTE PTR [esp+0x1c],al
   3a494:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
   3a498:	8a 04 03             	mov    al,BYTE PTR [ebx+eax*1]
   3a49b:	25 ff 00 00 00       	and    eax,0xff
   3a4a0:	c1 f8 02             	sar    eax,0x2
   3a4a3:	43                   	inc    ebx
   3a4a4:	88 44 24 1d          	mov    BYTE PTR [esp+0x1d],al
   3a4a8:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
   3a4ac:	8a 04 03             	mov    al,BYTE PTR [ebx+eax*1]
   3a4af:	8d 7c 24 20          	lea    edi,[esp+0x20]
   3a4b3:	25 ff 00 00 00       	and    eax,0xff
   3a4b8:	8d 74 24 1c          	lea    esi,[esp+0x1c]
   3a4bc:	c1 f8 02             	sar    eax,0x2
   3a4bf:	ba c6 03 00 00       	mov    edx,0x3c6
   3a4c4:	88 44 24 1e          	mov    BYTE PTR [esp+0x1e],al
   3a4c8:	b0 ff                	mov    al,0xff
   3a4ca:	66 a5                	movs   WORD PTR es:[edi],WORD PTR ds:[esi]
   3a4cc:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
   3a4cd:	ee                   	out    dx,al
   3a4ce:	ba c8 03 00 00       	mov    edx,0x3c8
   3a4d3:	88 c8                	mov    al,cl
   3a4d5:	ee                   	out    dx,al
   3a4d6:	8a 44 24 20          	mov    al,BYTE PTR [esp+0x20]
   3a4da:	89 ea                	mov    edx,ebp
   3a4dc:	ee                   	out    dx,al
   3a4dd:	8a 44 24 21          	mov    al,BYTE PTR [esp+0x21]
   3a4e1:	43                   	inc    ebx
   3a4e2:	ee                   	out    dx,al
   3a4e3:	8a 44 24 22          	mov    al,BYTE PTR [esp+0x22]
   3a4e7:	41                   	inc    ecx
   3a4e8:	ee                   	out    dx,al
   3a4e9:	81 f9 00 01 00 00    	cmp    ecx,0x100
   3a4ef:	7c 8f                	jl     load_from_pcx_file_branch_16
load_from_pcx_file_branch_17:
   3a4f1:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
   3a4f5:	e8 ee 6e 03 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   3a4fa:	83 c4 30             	add    esp,0x30
   3a4fd:	5d                   	pop    ebp
   3a4fe:	5f                   	pop    edi
   3a4ff:	5e                   	pop    esi
   3a500:	59                   	pop    ecx
   3a501:	c3                   	ret    
   3a502:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   3a508:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
   3a50e:	8b c0                	mov    eax,eax

;-------------------------------------------------
;  Function 'W?$aa:bitmap$n(rn$0$)rn$0$'         -
;-------------------------------------------------
W?$aa:bitmap$n(rn$0$)rn$0$:
   3a510:	53                   	push   ebx
   3a511:	51                   	push   ecx
   3a512:	56                   	push   esi
   3a513:	57                   	push   edi
   3a514:	55                   	push   ebp
   3a515:	89 c5                	mov    ebp,eax
   3a517:	89 d1                	mov    ecx,edx
   3a519:	89 c2                	mov    edx,eax
   3a51b:	8b 31                	mov    esi,DWORD PTR [ecx]
   3a51d:	8b 5d 00             	mov    ebx,DWORD PTR [ebp+0x0]
   3a520:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
   3a523:	39 de                	cmp    esi,ebx
   3a525:	75 09                	jne    W?$aa:bitmap$n(rn$0$)rn$0$_branch_1
   3a527:	3b 45 04             	cmp    eax,DWORD PTR [ebp+0x4]
   3a52a:	0f 84 75 00 00 00    	je     W?$aa:bitmap$n(rn$0$)rn$0$_branch_4
W?$aa:bitmap$n(rn$0$)rn$0$_branch_1:
   3a530:	89 32                	mov    DWORD PTR [edx],esi
   3a532:	89 42 04             	mov    DWORD PTR [edx+0x4],eax
   3a535:	83 3a 00             	cmp    DWORD PTR [edx],0x0
   3a538:	75 1a                	jne    W?$aa:bitmap$n(rn$0$)rn$0$_branch_2
   3a53a:	8b 5a 04             	mov    ebx,DWORD PTR [edx+0x4]
   3a53d:	85 db                	test   ebx,ebx
   3a53f:	75 13                	jne    W?$aa:bitmap$n(rn$0$)rn$0$_branch_2
   3a541:	8b 7a 08             	mov    edi,DWORD PTR [edx+0x8]
   3a544:	85 ff                	test   edi,edi
   3a546:	74 5d                	je     W?$aa:bitmap$n(rn$0$)rn$0$_branch_4
   3a548:	89 f8                	mov    eax,edi
   3a54a:	e8 99 6e 03 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   3a54f:	89 5a 08             	mov    DWORD PTR [edx+0x8],ebx
   3a552:	eb 51                	jmp    W?$aa:bitmap$n(rn$0$)rn$0$_branch_4
W?$aa:bitmap$n(rn$0$)rn$0$_branch_2:
   3a554:	8b 72 08             	mov    esi,DWORD PTR [edx+0x8]
   3a557:	85 f6                	test   esi,esi
   3a559:	74 07                	je     W?$aa:bitmap$n(rn$0$)rn$0$_branch_3
   3a55b:	89 f0                	mov    eax,esi
   3a55d:	e8 86 6e 03 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
W?$aa:bitmap$n(rn$0$)rn$0$_branch_3:
   3a562:	8b 02                	mov    eax,DWORD PTR [edx]
   3a564:	0f af 42 04          	imul   eax,DWORD PTR [edx+0x4]
   3a568:	c7 42 08 00 00 00 00 	mov    DWORD PTR [edx+0x8],0x0
   3a56f:	e8 1f 6f 03 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   3a574:	89 42 08             	mov    DWORD PTR [edx+0x8],eax
   3a577:	85 c0                	test   eax,eax
   3a579:	75 2a                	jne    W?$aa:bitmap$n(rn$0$)rn$0$_branch_4
   3a57b:	8b 1a                	mov    ebx,DWORD PTR [edx]
   3a57d:	53                   	push   ebx
   3a57e:	8b 72 04             	mov    esi,DWORD PTR [edx+0x4]
   3a581:	56                   	push   esi
   3a582:	68 70 98 00 00       	push   @obj3:bitmap_cpp_variable_1                                  ; fixup: num: 10519, src obj: 1, src ofs: 0x3a583, dst obj: 3, dst ofs: 0x9870
   3a587:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 10518, src obj: 1, src ofs: 0x3a588, dst obj: 3, dst ofs: 0x237fc
   3a58c:	ba 96 00 00 00       	mov    edx,0x96
   3a591:	e8 4b 66 03 00       	call   sprintf_
   3a596:	83 c4 10             	add    esp,0x10
   3a599:	bb fc 37 02 00       	mov    ebx,@obj3:log_buffer                                         ; fixup: num: 10517, src obj: 1, src ofs: 0x3a59a, dst obj: 3, dst ofs: 0x237fc
   3a59e:	31 c0                	xor    eax,eax
   3a5a0:	e8 8b da ff ff       	call   _error_report
W?$aa:bitmap$n(rn$0$)rn$0$_branch_4:
   3a5a5:	8b 45 00             	mov    eax,DWORD PTR [ebp+0x0]
   3a5a8:	0f af 45 04          	imul   eax,DWORD PTR [ebp+0x4]
   3a5ac:	8b 71 08             	mov    esi,DWORD PTR [ecx+0x8]
   3a5af:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
   3a5b2:	89 c1                	mov    ecx,eax
   3a5b4:	57                   	push   edi
   3a5b5:	89 c8                	mov    eax,ecx
   3a5b7:	c1 e9 02             	shr    ecx,0x2
   3a5ba:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
   3a5bc:	8a c8                	mov    cl,al
   3a5be:	80 e1 03             	and    cl,0x3
   3a5c1:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
   3a5c3:	5f                   	pop    edi
   3a5c4:	89 e8                	mov    eax,ebp
   3a5c6:	5d                   	pop    ebp
   3a5c7:	5f                   	pop    edi
   3a5c8:	5e                   	pop    esi
   3a5c9:	59                   	pop    ecx
   3a5ca:	5b                   	pop    ebx
   3a5cb:	c3                   	ret    
   3a5cc:	8d 44 20 00          	lea    eax,[eax+eiz*1+0x0]

;-------------------------------------------------
;  Function 'grid'                               -
;-------------------------------------------------
grid:
   3a5d0:	53                   	push   ebx
   3a5d1:	51                   	push   ecx
   3a5d2:	56                   	push   esi
   3a5d3:	57                   	push   edi
   3a5d4:	83 ec 04             	sub    esp,0x4
   3a5d7:	89 d6                	mov    esi,edx
   3a5d9:	8b 38                	mov    edi,DWORD PTR [eax]
   3a5db:	0f af 78 04          	imul   edi,DWORD PTR [eax+0x4]
   3a5df:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
   3a5e2:	31 db                	xor    ebx,ebx
   3a5e4:	85 ff                	test   edi,edi
   3a5e6:	7e 21                	jle    grid_branch_4
   3a5e8:	eb 0b                	jmp    grid_branch_3
grid_branch_1:
   3a5ea:	8a 01                	mov    al,BYTE PTR [ecx]
   3a5ec:	88 04 24             	mov    BYTE PTR [esp],al
grid_branch_2:
   3a5ef:	43                   	inc    ebx
   3a5f0:	41                   	inc    ecx
   3a5f1:	39 fb                	cmp    ebx,edi
   3a5f3:	7d 14                	jge    grid_branch_4
grid_branch_3:
   3a5f5:	89 da                	mov    edx,ebx
   3a5f7:	89 d8                	mov    eax,ebx
   3a5f9:	c1 fa 1f             	sar    edx,0x1f
   3a5fc:	f7 fe                	idiv   esi
   3a5fe:	85 d2                	test   edx,edx
   3a600:	74 e8                	je     grid_branch_1
   3a602:	8a 04 24             	mov    al,BYTE PTR [esp]
   3a605:	88 01                	mov    BYTE PTR [ecx],al
   3a607:	eb e6                	jmp    grid_branch_2
grid_branch_4:
   3a609:	83 c4 04             	add    esp,0x4
   3a60c:	5f                   	pop    edi
   3a60d:	5e                   	pop    esi
   3a60e:	59                   	pop    ecx
   3a60f:	5b                   	pop    ebx
   3a610:	c3                   	ret    
   3a611:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   3a617:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
   3a61d:	8d 40 00             	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'would_compress'                     -
;-------------------------------------------------
would_compress:
   3a620:	56                   	push   esi
   3a621:	57                   	push   edi
   3a622:	55                   	push   ebp
   3a623:	83 ec 04             	sub    esp,0x4
   3a626:	89 c6                	mov    esi,eax
   3a628:	89 d7                	mov    edi,edx
   3a62a:	88 ca                	mov    dl,cl
   3a62c:	0f af 18             	imul   ebx,DWORD PTR [eax]
   3a62f:	89 c5                	mov    ebp,eax
   3a631:	8b 76 08             	mov    esi,DWORD PTR [esi+0x8]
   3a634:	01 df                	add    edi,ebx
   3a636:	b8 01 00 00 00       	mov    eax,0x1
   3a63b:	88 d1                	mov    cl,dl
   3a63d:	8a 34 37             	mov    dh,BYTE PTR [edi+esi*1]
   3a640:	89 3c 24             	mov    DWORD PTR [esp],edi
   3a643:	38 f2                	cmp    dl,dh
   3a645:	75 0c                	jne    would_compress_branch_2
   3a647:	eb 3a                	jmp    would_compress_branch_8
would_compress_branch_1:
   3a649:	40                   	inc    eax
   3a64a:	43                   	inc    ebx
   3a64b:	42                   	inc    edx
   3a64c:	83 fb 04             	cmp    ebx,0x4
   3a64f:	7c 09                	jl     would_compress_branch_3
   3a651:	eb 0b                	jmp    would_compress_branch_4
would_compress_branch_2:
   3a653:	8d 14 06             	lea    edx,[esi+eax*1]
   3a656:	89 c3                	mov    ebx,eax
   3a658:	01 fa                	add    edx,edi
would_compress_branch_3:
   3a65a:	3a 0a                	cmp    cl,BYTE PTR [edx]
   3a65c:	74 eb                	je     would_compress_branch_1
would_compress_branch_4:
   3a65e:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
   3a661:	8b 34 24             	mov    esi,DWORD PTR [esp]
   3a664:	4a                   	dec    edx
   3a665:	bb ff ff ff ff       	mov    ebx,0xffffffff
   3a66a:	01 f2                	add    edx,esi
would_compress_branch_5:
   3a66c:	3a 0a                	cmp    cl,BYTE PTR [edx]
   3a66e:	74 09                	je     would_compress_branch_7
would_compress_branch_6:
   3a670:	83 f8 03             	cmp    eax,0x3
   3a673:	7c 0e                	jl     would_compress_branch_8
   3a675:	b0 01                	mov    al,0x1
   3a677:	eb 0c                	jmp    would_compress_branch_9
would_compress_branch_7:
   3a679:	40                   	inc    eax
   3a67a:	4b                   	dec    ebx
   3a67b:	4a                   	dec    edx
   3a67c:	83 fb fc             	cmp    ebx,0xfffffffc
   3a67f:	7f eb                	jg     would_compress_branch_5
   3a681:	eb ed                	jmp    would_compress_branch_6
would_compress_branch_8:
   3a683:	30 c0                	xor    al,al
would_compress_branch_9:
   3a685:	83 c4 04             	add    esp,0x4
   3a688:	5d                   	pop    ebp
   3a689:	5f                   	pop    edi
   3a68a:	5e                   	pop    esi
   3a68b:	c3                   	ret    
   3a68c:	8d 44 20 00          	lea    eax,[eax+eiz*1+0x0]

;-------------------------------------------------
;  Function 'would_compress_mod_74'              -
;-------------------------------------------------
would_compress_mod_74:
   3a690:	51                   	push   ecx
   3a691:	56                   	push   esi
   3a692:	57                   	push   edi
   3a693:	89 c7                	mov    edi,eax
   3a695:	89 d6                	mov    esi,edx
   3a697:	88 d9                	mov    cl,bl
   3a699:	8b 5f 08             	mov    ebx,DWORD PTR [edi+0x8]
   3a69c:	8a 14 1e             	mov    dl,BYTE PTR [esi+ebx*1]
   3a69f:	b8 01 00 00 00       	mov    eax,0x1
   3a6a4:	38 d1                	cmp    cl,dl
   3a6a6:	75 0c                	jne    would_compress_mod_74_branch_2
   3a6a8:	eb 38                	jmp    would_compress_mod_74_branch_8
would_compress_mod_74_branch_1:
   3a6aa:	40                   	inc    eax
   3a6ab:	42                   	inc    edx
   3a6ac:	43                   	inc    ebx
   3a6ad:	83 fa 04             	cmp    edx,0x4
   3a6b0:	7c 08                	jl     would_compress_mod_74_branch_3
   3a6b2:	eb 0a                	jmp    would_compress_mod_74_branch_4
would_compress_mod_74_branch_2:
   3a6b4:	01 c3                	add    ebx,eax
   3a6b6:	89 c2                	mov    edx,eax
   3a6b8:	01 f3                	add    ebx,esi
would_compress_mod_74_branch_3:
   3a6ba:	3a 0b                	cmp    cl,BYTE PTR [ebx]
   3a6bc:	74 ec                	je     would_compress_mod_74_branch_1
would_compress_mod_74_branch_4:
   3a6be:	8b 5f 08             	mov    ebx,DWORD PTR [edi+0x8]
   3a6c1:	4b                   	dec    ebx
   3a6c2:	ba ff ff ff ff       	mov    edx,0xffffffff
   3a6c7:	01 f3                	add    ebx,esi
would_compress_mod_74_branch_5:
   3a6c9:	3a 0b                	cmp    cl,BYTE PTR [ebx]
   3a6cb:	74 0b                	je     would_compress_mod_74_branch_7
would_compress_mod_74_branch_6:
   3a6cd:	83 f8 03             	cmp    eax,0x3
   3a6d0:	7c 10                	jl     would_compress_mod_74_branch_8
   3a6d2:	b0 01                	mov    al,0x1
   3a6d4:	5f                   	pop    edi
   3a6d5:	5e                   	pop    esi
   3a6d6:	59                   	pop    ecx
   3a6d7:	c3                   	ret    
would_compress_mod_74_branch_7:
   3a6d8:	40                   	inc    eax
   3a6d9:	4a                   	dec    edx
   3a6da:	4b                   	dec    ebx
   3a6db:	83 fa fc             	cmp    edx,0xfffffffc
   3a6de:	7f e9                	jg     would_compress_mod_74_branch_5
   3a6e0:	eb eb                	jmp    would_compress_mod_74_branch_6
would_compress_mod_74_branch_8:
   3a6e2:	30 c0                	xor    al,al
   3a6e4:	5f                   	pop    edi
   3a6e5:	5e                   	pop    esi
   3a6e6:	59                   	pop    ecx
   3a6e7:	c3                   	ret    
   3a6e8:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   3a6ee:	8b d2                	mov    edx,edx

;-------------------------------------------------
;  Function 'scale'                              -
;-------------------------------------------------
scale:
   3a6f0:	56                   	push   esi
   3a6f1:	57                   	push   edi
   3a6f2:	55                   	push   ebp
   3a6f3:	83 ec 28             	sub    esp,0x28
   3a6f6:	89 c5                	mov    ebp,eax
   3a6f8:	89 54 24 14          	mov    DWORD PTR [esp+0x14],edx
   3a6fc:	89 de                	mov    esi,ebx
   3a6fe:	89 eb                	mov    ebx,ebp
   3a700:	8b 01                	mov    eax,DWORD PTR [ecx]
   3a702:	89 74 24 0c          	mov    DWORD PTR [esp+0xc],esi
   3a706:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
   3a70a:	89 d0                	mov    eax,edx
   3a70c:	8b 55 00             	mov    edx,DWORD PTR [ebp+0x0]
   3a70f:	8b 79 04             	mov    edi,DWORD PTR [ecx+0x4]
   3a712:	39 c2                	cmp    edx,eax
   3a714:	75 09                	jne    scale_branch_1
   3a716:	3b 75 04             	cmp    esi,DWORD PTR [ebp+0x4]
   3a719:	0f 84 7a 00 00 00    	je     scale_branch_4
scale_branch_1:
   3a71f:	89 03                	mov    DWORD PTR [ebx],eax
   3a721:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
   3a725:	89 43 04             	mov    DWORD PTR [ebx+0x4],eax
   3a728:	83 3b 00             	cmp    DWORD PTR [ebx],0x0
   3a72b:	75 1d                	jne    scale_branch_2
   3a72d:	83 7b 04 00          	cmp    DWORD PTR [ebx+0x4],0x0
   3a731:	75 17                	jne    scale_branch_2
   3a733:	8b 53 08             	mov    edx,DWORD PTR [ebx+0x8]
   3a736:	85 d2                	test   edx,edx
   3a738:	74 5f                	je     scale_branch_4
   3a73a:	89 d0                	mov    eax,edx
   3a73c:	e8 a7 6c 03 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   3a741:	c7 43 08 00 00 00 00 	mov    DWORD PTR [ebx+0x8],0x0
   3a748:	eb 4f                	jmp    scale_branch_4
scale_branch_2:
   3a74a:	8b 43 08             	mov    eax,DWORD PTR [ebx+0x8]
   3a74d:	85 c0                	test   eax,eax
   3a74f:	74 05                	je     scale_branch_3
   3a751:	e8 92 6c 03 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
scale_branch_3:
   3a756:	8b 03                	mov    eax,DWORD PTR [ebx]
   3a758:	0f af 43 04          	imul   eax,DWORD PTR [ebx+0x4]
   3a75c:	c7 43 08 00 00 00 00 	mov    DWORD PTR [ebx+0x8],0x0
   3a763:	e8 2b 6d 03 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   3a768:	89 43 08             	mov    DWORD PTR [ebx+0x8],eax
   3a76b:	85 c0                	test   eax,eax
   3a76d:	75 2a                	jne    scale_branch_4
   3a76f:	8b 13                	mov    edx,DWORD PTR [ebx]
   3a771:	52                   	push   edx
   3a772:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
   3a775:	50                   	push   eax
   3a776:	68 70 98 00 00       	push   @obj3:bitmap_cpp_variable_1                                  ; fixup: num: 10522, src obj: 1, src ofs: 0x3a777, dst obj: 3, dst ofs: 0x9870
   3a77b:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 10521, src obj: 1, src ofs: 0x3a77c, dst obj: 3, dst ofs: 0x237fc
   3a780:	bb fc 37 02 00       	mov    ebx,@obj3:log_buffer                                         ; fixup: num: 10520, src obj: 1, src ofs: 0x3a781, dst obj: 3, dst ofs: 0x237fc
   3a785:	e8 57 64 03 00       	call   sprintf_
   3a78a:	83 c4 10             	add    esp,0x10
   3a78d:	ba 96 00 00 00       	mov    edx,0x96
   3a792:	31 c0                	xor    eax,eax
   3a794:	e8 97 d8 ff ff       	call   _error_report
scale_branch_4:
   3a799:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
   3a79d:	3b 44 24 14          	cmp    eax,DWORD PTR [esp+0x14]
   3a7a1:	0f 85 bf 00 00 00    	jne    scale_branch_10
   3a7a7:	39 f7                	cmp    edi,esi
   3a7a9:	0f 85 b7 00 00 00    	jne    scale_branch_10
   3a7af:	89 ee                	mov    esi,ebp
   3a7b1:	89 4c 24 10          	mov    DWORD PTR [esp+0x10],ecx
   3a7b5:	89 eb                	mov    ebx,ebp
   3a7b7:	8b 39                	mov    edi,DWORD PTR [ecx]
   3a7b9:	8b 55 00             	mov    edx,DWORD PTR [ebp+0x0]
   3a7bc:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
   3a7bf:	39 d7                	cmp    edi,edx
   3a7c1:	75 09                	jne    scale_branch_5
   3a7c3:	3b 45 04             	cmp    eax,DWORD PTR [ebp+0x4]
   3a7c6:	0f 84 6f 00 00 00    	je     scale_branch_8
scale_branch_5:
   3a7cc:	89 3b                	mov    DWORD PTR [ebx],edi
   3a7ce:	8b 3b                	mov    edi,DWORD PTR [ebx]
   3a7d0:	89 43 04             	mov    DWORD PTR [ebx+0x4],eax
   3a7d3:	85 ff                	test   edi,edi
   3a7d5:	75 15                	jne    scale_branch_6
   3a7d7:	85 c0                	test   eax,eax
   3a7d9:	75 11                	jne    scale_branch_6
   3a7db:	8b 43 08             	mov    eax,DWORD PTR [ebx+0x8]
   3a7de:	85 c0                	test   eax,eax
   3a7e0:	74 59                	je     scale_branch_8
   3a7e2:	e8 01 6c 03 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   3a7e7:	89 7b 08             	mov    DWORD PTR [ebx+0x8],edi
   3a7ea:	eb 4f                	jmp    scale_branch_8
scale_branch_6:
   3a7ec:	8b 43 08             	mov    eax,DWORD PTR [ebx+0x8]
   3a7ef:	85 c0                	test   eax,eax
   3a7f1:	74 05                	je     scale_branch_7
   3a7f3:	e8 f0 6b 03 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
scale_branch_7:
   3a7f8:	8b 03                	mov    eax,DWORD PTR [ebx]
   3a7fa:	0f af 43 04          	imul   eax,DWORD PTR [ebx+0x4]
   3a7fe:	c7 43 08 00 00 00 00 	mov    DWORD PTR [ebx+0x8],0x0
   3a805:	e8 89 6c 03 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   3a80a:	89 43 08             	mov    DWORD PTR [ebx+0x8],eax
   3a80d:	85 c0                	test   eax,eax
   3a80f:	75 2a                	jne    scale_branch_8
   3a811:	8b 3b                	mov    edi,DWORD PTR [ebx]
   3a813:	57                   	push   edi
   3a814:	8b 6b 04             	mov    ebp,DWORD PTR [ebx+0x4]
   3a817:	55                   	push   ebp
   3a818:	68 70 98 00 00       	push   @obj3:bitmap_cpp_variable_1                                  ; fixup: num: 10525, src obj: 1, src ofs: 0x3a819, dst obj: 3, dst ofs: 0x9870
   3a81d:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 10524, src obj: 1, src ofs: 0x3a81e, dst obj: 3, dst ofs: 0x237fc
   3a822:	ba 96 00 00 00       	mov    edx,0x96
   3a827:	e8 b5 63 03 00       	call   sprintf_
   3a82c:	83 c4 10             	add    esp,0x10
   3a82f:	bb fc 37 02 00       	mov    ebx,@obj3:log_buffer                                         ; fixup: num: 10523, src obj: 1, src ofs: 0x3a830, dst obj: 3, dst ofs: 0x237fc
   3a834:	31 c0                	xor    eax,eax
   3a836:	e8 f5 d7 ff ff       	call   _error_report
scale_branch_8:
   3a83b:	8b 0e                	mov    ecx,DWORD PTR [esi]
   3a83d:	0f af 4e 04          	imul   ecx,DWORD PTR [esi+0x4]
   3a841:	8b 5c 24 10          	mov    ebx,DWORD PTR [esp+0x10]
   3a845:	8b 5b 08             	mov    ebx,DWORD PTR [ebx+0x8]
   3a848:	8b 7e 08             	mov    edi,DWORD PTR [esi+0x8]
   3a84b:	89 de                	mov    esi,ebx
   3a84d:	57                   	push   edi
   3a84e:	89 c8                	mov    eax,ecx
   3a850:	c1 e9 02             	shr    ecx,0x2
   3a853:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
   3a855:	8a c8                	mov    cl,al
   3a857:	80 e1 03             	and    cl,0x3
   3a85a:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
   3a85c:	5f                   	pop    edi
scale_branch_9:
   3a85d:	83 c4 28             	add    esp,0x28
   3a860:	5d                   	pop    ebp
   3a861:	5f                   	pop    edi
   3a862:	5e                   	pop    esi
   3a863:	c2 04 00             	ret    0x4
scale_branch_10:
   3a866:	8b 41 08             	mov    eax,DWORD PTR [ecx+0x8]
   3a869:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
   3a86c:	b9 00 80 00 00       	mov    ecx,0x8000
   3a871:	8b 6c 24 04          	mov    ebp,DWORD PTR [esp+0x4]
   3a875:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
   3a879:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
   3a87d:	89 4c 24 1c          	mov    DWORD PTR [esp+0x1c],ecx
   3a881:	39 e8                	cmp    eax,ebp
   3a883:	0f 86 c4 00 00 00    	jbe    scale_branch_18
   3a889:	c1 e0 10             	shl    eax,0x10
   3a88c:	31 d2                	xor    edx,edx
   3a88e:	f7 f5                	div    ebp
   3a890:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
   3a894:	89 f0                	mov    eax,esi
   3a896:	31 d2                	xor    edx,edx
   3a898:	c1 e0 10             	shl    eax,0x10
   3a89b:	f7 f7                	div    edi
   3a89d:	89 7c 24 20          	mov    DWORD PTR [esp+0x20],edi
   3a8a1:	bd ff ff 00 00       	mov    ebp,0xffff
   3a8a6:	89 04 24             	mov    DWORD PTR [esp],eax
scale_branch_11:
   3a8a9:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
   3a8ad:	48                   	dec    eax
   3a8ae:	89 44 24 20          	mov    DWORD PTR [esp+0x20],eax
   3a8b2:	66 3d ff ff          	cmp    ax,0xffff
   3a8b6:	74 a5                	je     scale_branch_9
   3a8b8:	bf 00 80 00 00       	mov    edi,0x8000
   3a8bd:	8b 74 24 18          	mov    esi,DWORD PTR [esp+0x18]
   3a8c1:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
scale_branch_12:
   3a8c5:	4a                   	dec    edx
   3a8c6:	66 83 fa ff          	cmp    dx,0xffff
   3a8ca:	74 26                	je     scale_branch_15
   3a8cc:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
   3a8d0:	01 c7                	add    edi,eax
   3a8d2:	89 f9                	mov    ecx,edi
   3a8d4:	c1 e9 10             	shr    ecx,0x10
   3a8d7:	0f bf c1             	movsx  eax,cx
   3a8da:	85 c0                	test   eax,eax
   3a8dc:	74 11                	je     scale_branch_14
   3a8de:	21 ef                	and    edi,ebp
scale_branch_13:
   3a8e0:	49                   	dec    ecx
   3a8e1:	66 83 f9 ff          	cmp    cx,0xffff
   3a8e5:	74 08                	je     scale_branch_14
   3a8e7:	43                   	inc    ebx
   3a8e8:	8a 06                	mov    al,BYTE PTR [esi]
   3a8ea:	88 43 ff             	mov    BYTE PTR [ebx-0x1],al
   3a8ed:	eb f1                	jmp    scale_branch_13
scale_branch_14:
   3a8ef:	46                   	inc    esi
   3a8f0:	eb d3                	jmp    scale_branch_12
scale_branch_15:
   3a8f2:	8b 04 24             	mov    eax,DWORD PTR [esp]
   3a8f5:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
   3a8f9:	01 c1                	add    ecx,eax
   3a8fb:	89 c8                	mov    eax,ecx
   3a8fd:	c1 e8 10             	shr    eax,0x10
   3a900:	48                   	dec    eax
   3a901:	89 4c 24 1c          	mov    DWORD PTR [esp+0x1c],ecx
   3a905:	89 c2                	mov    edx,eax
scale_branch_16:
   3a907:	4a                   	dec    edx
   3a908:	66 83 fa ff          	cmp    dx,0xffff
   3a90c:	74 22                	je     scale_branch_17
   3a90e:	8b 7c 24 14          	mov    edi,DWORD PTR [esp+0x14]
   3a912:	89 de                	mov    esi,ebx
   3a914:	89 f9                	mov    ecx,edi
   3a916:	29 fe                	sub    esi,edi
   3a918:	89 df                	mov    edi,ebx
   3a91a:	57                   	push   edi
   3a91b:	89 c8                	mov    eax,ecx
   3a91d:	c1 e9 02             	shr    ecx,0x2
   3a920:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
   3a922:	8a c8                	mov    cl,al
   3a924:	80 e1 03             	and    cl,0x3
   3a927:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
   3a929:	5f                   	pop    edi
   3a92a:	03 5c 24 14          	add    ebx,DWORD PTR [esp+0x14]
   3a92e:	eb d7                	jmp    scale_branch_16
scale_branch_17:
   3a930:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
   3a934:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
   3a938:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
   3a93c:	21 ea                	and    edx,ebp
   3a93e:	01 c1                	add    ecx,eax
   3a940:	89 54 24 1c          	mov    DWORD PTR [esp+0x1c],edx
   3a944:	89 4c 24 18          	mov    DWORD PTR [esp+0x18],ecx
   3a948:	e9 5c ff ff ff       	jmp    scale_branch_11
scale_branch_18:
   3a94d:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
   3a951:	89 e8                	mov    eax,ebp
   3a953:	31 d2                	xor    edx,edx
   3a955:	c1 e0 10             	shl    eax,0x10
   3a958:	f7 f1                	div    ecx
   3a95a:	89 c1                	mov    ecx,eax
   3a95c:	89 f8                	mov    eax,edi
   3a95e:	31 d2                	xor    edx,edx
   3a960:	c1 e0 10             	shl    eax,0x10
   3a963:	f7 f6                	div    esi
   3a965:	89 74 24 24          	mov    DWORD PTR [esp+0x24],esi
   3a969:	89 c5                	mov    ebp,eax
scale_branch_19:
   3a96b:	8b 54 24 24          	mov    edx,DWORD PTR [esp+0x24]
   3a96f:	4a                   	dec    edx
   3a970:	89 54 24 24          	mov    DWORD PTR [esp+0x24],edx
   3a974:	66 83 fa ff          	cmp    dx,0xffff
   3a978:	0f 84 df fe ff ff    	je     scale_branch_9
   3a97e:	be 00 80 00 00       	mov    esi,0x8000
   3a983:	8b 7c 24 18          	mov    edi,DWORD PTR [esp+0x18]
   3a987:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
scale_branch_20:
   3a98b:	4a                   	dec    edx
   3a98c:	66 83 fa ff          	cmp    dx,0xffff
   3a990:	74 16                	je     scale_branch_21
   3a992:	8a 07                	mov    al,BYTE PTR [edi]
   3a994:	01 ce                	add    esi,ecx
   3a996:	88 03                	mov    BYTE PTR [ebx],al
   3a998:	89 f0                	mov    eax,esi
   3a99a:	43                   	inc    ebx
   3a99b:	c1 e8 10             	shr    eax,0x10
   3a99e:	81 e6 ff ff 00 00    	and    esi,0xffff
   3a9a4:	01 c7                	add    edi,eax
   3a9a6:	eb e3                	jmp    scale_branch_20
scale_branch_21:
   3a9a8:	8b 74 24 1c          	mov    esi,DWORD PTR [esp+0x1c]
   3a9ac:	01 ee                	add    esi,ebp
   3a9ae:	89 f0                	mov    eax,esi
   3a9b0:	8b 7c 24 04          	mov    edi,DWORD PTR [esp+0x4]
   3a9b4:	c1 e8 10             	shr    eax,0x10
   3a9b7:	0f af c7             	imul   eax,edi
   3a9ba:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
   3a9be:	89 74 24 1c          	mov    DWORD PTR [esp+0x1c],esi
   3a9c2:	01 c2                	add    edx,eax
   3a9c4:	31 ff                	xor    edi,edi
   3a9c6:	89 54 24 18          	mov    DWORD PTR [esp+0x18],edx
   3a9ca:	66 89 7c 24 1e       	mov    WORD PTR [esp+0x1e],di
   3a9cf:	eb 9a                	jmp    scale_branch_19
   3a9d1:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   3a9d7:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
   3a9dd:	8d 40 00             	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'collide'                            -
;-------------------------------------------------
collide:
   3a9e0:	56                   	push   esi
   3a9e1:	57                   	push   edi
   3a9e2:	55                   	push   ebp
   3a9e3:	83 ec 1c             	sub    esp,0x1c
   3a9e6:	89 c6                	mov    esi,eax
   3a9e8:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
   3a9ec:	89 1c 24             	mov    DWORD PTR [esp],ebx
   3a9ef:	81 38 80 02 00 00    	cmp    DWORD PTR [eax],0x280
   3a9f5:	0f 87 ed 00 00 00    	ja     collide_branch_10
   3a9fb:	81 39 80 02 00 00    	cmp    DWORD PTR [ecx],0x280
   3aa01:	0f 87 e1 00 00 00    	ja     collide_branch_10
   3aa07:	81 78 04 e0 01 00 00 	cmp    DWORD PTR [eax+0x4],0x1e0
   3aa0e:	0f 87 d4 00 00 00    	ja     collide_branch_10
   3aa14:	81 79 04 e0 01 00 00 	cmp    DWORD PTR [ecx+0x4],0x1e0
   3aa1b:	76 05                	jbe    collide_branch_1
   3aa1d:	e9 c6 00 00 00       	jmp    collide_branch_10
collide_branch_1:
   3aa22:	31 c0                	xor    eax,eax
   3aa24:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
collide_branch_2:
   3aa28:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
   3aa2c:	8b 56 04             	mov    edx,DWORD PTR [esi+0x4]
   3aa2f:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
   3aa33:	39 d0                	cmp    eax,edx
   3aa35:	72 02                	jb     collide_branch_3
   3aa37:	eb 60                	jmp    collide_branch_7
collide_branch_3:
   3aa39:	8b 1c 24             	mov    ebx,DWORD PTR [esp]
   3aa3c:	01 d8                	add    eax,ebx
   3aa3e:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
   3aa42:	8b 06                	mov    eax,DWORD PTR [esi]
   3aa44:	8b 6c 24 04          	mov    ebp,DWORD PTR [esp+0x4]
   3aa48:	01 c0                	add    eax,eax
   3aa4a:	8b 3e                	mov    edi,DWORD PTR [esi]
   3aa4c:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
   3aa50:	0f af ef             	imul   ebp,edi
collide_branch_4:
   3aa53:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
   3aa57:	85 c0                	test   eax,eax
   3aa59:	7c 1b                	jl     collide_branch_6
   3aa5b:	3b 41 04             	cmp    eax,DWORD PTR [ecx+0x4]
   3aa5e:	73 16                	jae    collide_branch_6
   3aa60:	8b 1e                	mov    ebx,DWORD PTR [esi]
   3aa62:	31 d2                	xor    edx,edx
   3aa64:	85 db                	test   ebx,ebx
   3aa66:	77 48                	ja     collide_branch_8
   3aa68:	eb 0c                	jmp    collide_branch_6
collide_branch_5:
   3aa6a:	83 c2 02             	add    edx,0x2
   3aa6d:	8b 1e                	mov    ebx,DWORD PTR [esi]
   3aa6f:	83 c0 02             	add    eax,0x2
   3aa72:	39 da                	cmp    edx,ebx
   3aa74:	72 42                	jb     collide_branch_9
collide_branch_6:
   3aa76:	8b 7c 24 14          	mov    edi,DWORD PTR [esp+0x14]
   3aa7a:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
   3aa7e:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
   3aa82:	8b 5e 04             	mov    ebx,DWORD PTR [esi+0x4]
   3aa85:	83 c7 02             	add    edi,0x2
   3aa88:	83 c2 02             	add    edx,0x2
   3aa8b:	01 c5                	add    ebp,eax
   3aa8d:	89 7c 24 14          	mov    DWORD PTR [esp+0x14],edi
   3aa91:	89 54 24 10          	mov    DWORD PTR [esp+0x10],edx
   3aa95:	39 da                	cmp    edx,ebx
   3aa97:	72 ba                	jb     collide_branch_4
collide_branch_7:
   3aa99:	8b 7c 24 04          	mov    edi,DWORD PTR [esp+0x4]
   3aa9d:	47                   	inc    edi
   3aa9e:	89 7c 24 04          	mov    DWORD PTR [esp+0x4],edi
   3aaa2:	83 ff 02             	cmp    edi,0x2
   3aaa5:	7c 81                	jl     collide_branch_2
   3aaa7:	30 c0                	xor    al,al
   3aaa9:	83 c4 1c             	add    esp,0x1c
   3aaac:	5d                   	pop    ebp
   3aaad:	5f                   	pop    edi
   3aaae:	5e                   	pop    esi
   3aaaf:	c3                   	ret    
collide_branch_8:
   3aab0:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
   3aab4:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
collide_branch_9:
   3aab8:	85 c0                	test   eax,eax
   3aaba:	7c ae                	jl     collide_branch_5
   3aabc:	3b 01                	cmp    eax,DWORD PTR [ecx]
   3aabe:	73 aa                	jae    collide_branch_5
   3aac0:	8b 7e 08             	mov    edi,DWORD PTR [esi+0x8]
   3aac3:	01 ef                	add    edi,ebp
   3aac5:	8a 1c 3a             	mov    bl,BYTE PTR [edx+edi*1]
   3aac8:	84 db                	test   bl,bl
   3aaca:	74 9e                	je     collide_branch_5
   3aacc:	8b 5c 24 18          	mov    ebx,DWORD PTR [esp+0x18]
   3aad0:	0f af 19             	imul   ebx,DWORD PTR [ecx]
   3aad3:	8b 79 08             	mov    edi,DWORD PTR [ecx+0x8]
   3aad6:	01 df                	add    edi,ebx
   3aad8:	8a 1c 07             	mov    bl,BYTE PTR [edi+eax*1]
   3aadb:	84 db                	test   bl,bl
   3aadd:	74 8b                	je     collide_branch_5
   3aadf:	b0 01                	mov    al,0x1
   3aae1:	83 c4 1c             	add    esp,0x1c
   3aae4:	5d                   	pop    ebp
   3aae5:	5f                   	pop    edi
   3aae6:	5e                   	pop    esi
   3aae7:	c3                   	ret    
collide_branch_10:
   3aae8:	30 c0                	xor    al,al
   3aaea:	83 c4 1c             	add    esp,0x1c
   3aaed:	5d                   	pop    ebp
   3aaee:	5f                   	pop    edi
   3aaef:	5e                   	pop    esi
   3aaf0:	c3                   	ret    
;-------------------------------------------------
;  Bad code 73 (zero after ret):                 -
;-------------------------------------------------
;  3aaef:	5e                   	pop    esi
;  3aaf0:	c3                   	ret    
;  3aaf1:	00 00                	add    BYTE PTR [eax],al
;  3aaf3:	00 00                	add    BYTE PTR [eax],al
;-------------------------------------------------
;  Padding data (15 bytes):                      -
;-------------------------------------------------
   3aaf1:	00 00 00 00 00 00 .. 	db     15 dup(0x00)
;-------------------------------------------------
;  End of bad code 73                            -
;-------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 74 (D:\SOURCE\bitmap.cpp)                                     -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 74: D:\SOURCE\bitmap.cpp                                             -
;                                                                              -
;-------------------------------------------------------------------------------
bitmap_cpp_variable_1:
    9870:	43 6f 75 6c 64 20 6e 6f 74 20 61 6c 6c 6f 63 61 74 65 20 61 20 62 75 66 66 65 72 20 6f 66 20 25 69 78 25 69 00 	db     "Could not allocate a buffer of %ix%i",0x00
    9895:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
bitmap_cpp_variable_2:
    9896:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
bitmap_cpp_variable_3:
    98ae:	75 6e 61 62 6c 65 20 74 6f 20 6f 70 65 6e 20 66 69 6c 65 3a 20 27 25 73 27 00 	db     "unable to open file: '%s'",0x00
bitmap_cpp_variable_4:
    98c8:	62 69 74 6d 61 70 2e 63 70 70 00 	db     "bitmap.cpp",0x00
bitmap_cpp_variable_5:
    98d3:	43 6f 75 6c 64 20 6e 6f 74 20 6c 6f 61 64 20 66 69 6c 65 2e 00 	db     "Could not load file.",0x00

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 74 (D:\SOURCE\bitmap.cpp)                                     -
;                                                                              -
;-------------------------------------------------------------------------------