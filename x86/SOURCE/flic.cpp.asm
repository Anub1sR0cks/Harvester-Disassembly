;-------------------------------------------------------------------------------
;                                                                              -
;  Module 11: D:\SOURCE\flic.cpp                                               -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function 'screen_put_colors'                  -
;-------------------------------------------------
screen_put_colors:
    edf0:	51                   	push   ecx
    edf1:	56                   	push   esi
    edf2:	89 d1                	mov    ecx,edx
    edf4:	8d 34 18             	lea    esi,[eax+ebx*1]
    edf7:	89 c3                	mov    ebx,eax
    edf9:	39 f0                	cmp    eax,esi
    edfb:	eb 12                	jmp    screen_put_colors_branch_3
screen_put_colors_branch_1:
    edfd:	ba c9 03 00 00       	mov    edx,0x3c9
    ee02:	30 d8                	xor    al,bl
    ee04:	ee                   	out    dx,al
    ee05:	30 c0                	xor    al,al
    ee07:	ee                   	out    dx,al
    ee08:	ee                   	out    dx,al
screen_put_colors_branch_2:
    ee09:	43                   	inc    ebx
    ee0a:	83 c1 03             	add    ecx,0x3
    ee0d:	39 f3                	cmp    ebx,esi
screen_put_colors_branch_3:
    ee0f:	7d 2d                	jge    screen_put_colors_branch_4
    ee11:	ba c8 03 00 00       	mov    edx,0x3c8
    ee16:	88 d8                	mov    al,bl
    ee18:	ee                   	out    dx,al
    ee19:	85 db                	test   ebx,ebx
    ee1b:	74 e0                	je     screen_put_colors_branch_1
    ee1d:	31 c0                	xor    eax,eax
    ee1f:	8a 01                	mov    al,BYTE PTR [ecx]
    ee21:	ba c9 03 00 00       	mov    edx,0x3c9
    ee26:	c1 f8 02             	sar    eax,0x2
    ee29:	ee                   	out    dx,al
    ee2a:	31 c0                	xor    eax,eax
    ee2c:	8a 41 01             	mov    al,BYTE PTR [ecx+0x1]
    ee2f:	c1 f8 02             	sar    eax,0x2
    ee32:	ee                   	out    dx,al
    ee33:	31 c0                	xor    eax,eax
    ee35:	8a 41 02             	mov    al,BYTE PTR [ecx+0x2]
    ee38:	c1 f8 02             	sar    eax,0x2
    ee3b:	ee                   	out    dx,al
    ee3c:	eb cb                	jmp    screen_put_colors_branch_2
screen_put_colors_branch_4:
    ee3e:	5e                   	pop    esi
    ee3f:	59                   	pop    ecx
    ee40:	c3                   	ret    
    ee41:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    ee47:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
    ee4d:	8d 40 00             	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'screen_put_colors_64'               -
;-------------------------------------------------
screen_put_colors_64:
    ee50:	51                   	push   ecx
    ee51:	56                   	push   esi
    ee52:	89 d1                	mov    ecx,edx
    ee54:	8d 34 18             	lea    esi,[eax+ebx*1]
    ee57:	89 c3                	mov    ebx,eax
    ee59:	39 f0                	cmp    eax,esi
    ee5b:	eb 12                	jmp    screen_put_colors_64_branch_3
screen_put_colors_64_branch_1:
    ee5d:	ba c9 03 00 00       	mov    edx,0x3c9
    ee62:	30 d8                	xor    al,bl
    ee64:	ee                   	out    dx,al
    ee65:	30 c0                	xor    al,al
    ee67:	ee                   	out    dx,al
    ee68:	ee                   	out    dx,al
screen_put_colors_64_branch_2:
    ee69:	43                   	inc    ebx
    ee6a:	83 c1 03             	add    ecx,0x3
    ee6d:	39 f3                	cmp    ebx,esi
screen_put_colors_64_branch_3:
    ee6f:	7d cd                	jge    screen_put_colors_branch_4
    ee71:	ba c8 03 00 00       	mov    edx,0x3c8
    ee76:	88 d8                	mov    al,bl
    ee78:	ee                   	out    dx,al
    ee79:	85 db                	test   ebx,ebx
    ee7b:	74 e0                	je     screen_put_colors_64_branch_1
    ee7d:	ba c9 03 00 00       	mov    edx,0x3c9
    ee82:	8a 01                	mov    al,BYTE PTR [ecx]
    ee84:	ee                   	out    dx,al
    ee85:	8a 41 01             	mov    al,BYTE PTR [ecx+0x1]
    ee88:	ee                   	out    dx,al
    ee89:	8a 41 02             	mov    al,BYTE PTR [ecx+0x2]
    ee8c:	ee                   	out    dx,al
    ee8d:	eb da                	jmp    screen_put_colors_64_branch_2
    ee8f:	90                   	nop

;-------------------------------------------------
;  Function 'decode_color'                       -
;-------------------------------------------------
decode_color:
    ee90:	53                   	push   ebx
    ee91:	51                   	push   ecx
    ee92:	56                   	push   esi
    ee93:	57                   	push   edi
    ee94:	83 ec 08             	sub    esp,0x8
    ee97:	89 14 24             	mov    DWORD PTR [esp],edx
    ee9a:	66 8b 08             	mov    cx,WORD PTR [eax]
    ee9d:	31 ff                	xor    edi,edi
    ee9f:	89 4c 24 04          	mov    DWORD PTR [esp+0x4],ecx
    eea3:	8d 48 02             	lea    ecx,[eax+0x2]
decode_color_branch_1:
    eea6:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
    eeaa:	4a                   	dec    edx
    eeab:	0f bf c2             	movsx  eax,dx
    eeae:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
    eeb2:	85 c0                	test   eax,eax
    eeb4:	7c 27                	jl     decode_color_branch_3
    eeb6:	41                   	inc    ecx
    eeb7:	31 c0                	xor    eax,eax
    eeb9:	0f b6 31             	movzx  esi,BYTE PTR [ecx]
    eebc:	8a 41 ff             	mov    al,BYTE PTR [ecx-0x1]
    eebf:	41                   	inc    ecx
    eec0:	01 c7                	add    edi,eax
    eec2:	85 f6                	test   esi,esi
    eec4:	75 05                	jne    decode_color_branch_2
    eec6:	be 00 01 00 00       	mov    esi,0x100
decode_color_branch_2:
    eecb:	89 f3                	mov    ebx,esi
    eecd:	89 ca                	mov    edx,ecx
    eecf:	89 f8                	mov    eax,edi
    eed1:	ff 14 24             	call   DWORD PTR [esp]
    eed4:	8d 04 76             	lea    eax,[esi+esi*2]
    eed7:	01 c1                	add    ecx,eax
    eed9:	01 f7                	add    edi,esi
    eedb:	eb c9                	jmp    decode_color_branch_1
decode_color_branch_3:
    eedd:	83 c4 08             	add    esp,0x8
    eee0:	5f                   	pop    edi
    eee1:	5e                   	pop    esi
    eee2:	59                   	pop    ecx
    eee3:	5b                   	pop    ebx
    eee4:	c3                   	ret    
    eee5:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    eeeb:	8d 52 00             	lea    edx,[edx+0x0]
    eeee:	8b db                	mov    ebx,ebx

;-------------------------------------------------
;  Function 'decode_byte_run'                    -
;-------------------------------------------------
decode_byte_run:
    eef0:	53                   	push   ebx
    eef1:	51                   	push   ecx
    eef2:	56                   	push   esi
    eef3:	57                   	push   edi
    eef4:	55                   	push   ebp
    eef5:	83 ec 1c             	sub    esp,0x1c
    eef8:	89 d5                	mov    ebp,edx
    eefa:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
    eefe:	8b 9d ac 00 00 00    	mov    ebx,DWORD PTR [ebp+0xac]
    ef04:	8b 92 a8 00 00 00    	mov    edx,DWORD PTR [edx+0xa8]
    ef0a:	89 1c 24             	mov    DWORD PTR [esp],ebx
    ef0d:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
    ef11:	89 e8                	mov    eax,ebp
    ef13:	31 db                	xor    ebx,ebx
    ef15:	05 a8 00 00 00       	add    eax,0xa8
    ef1a:	89 5c 24 0c          	mov    DWORD PTR [esp+0xc],ebx
    ef1e:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
decode_byte_run_branch_1:
    ef22:	8b 0c 24             	mov    ecx,DWORD PTR [esp]
    ef25:	49                   	dec    ecx
    ef26:	89 0c 24             	mov    DWORD PTR [esp],ecx
    ef29:	85 c9                	test   ecx,ecx
    ef2b:	0f 8c c0 01 00 00    	jl     decode_byte_run_branch_16
    ef31:	30 e4                	xor    ah,ah
    ef33:	88 64 24 18          	mov    BYTE PTR [esp+0x18],ah
    ef37:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
    ef3b:	31 ff                	xor    edi,edi
    ef3d:	40                   	inc    eax
    ef3e:	89 7c 24 14          	mov    DWORD PTR [esp+0x14],edi
    ef42:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
decode_byte_run_branch_2:
    ef46:	0f be 44 24 18       	movsx  eax,BYTE PTR [esp+0x18]
    ef4b:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
    ef4f:	01 c2                	add    edx,eax
    ef51:	8b 5c 24 04          	mov    ebx,DWORD PTR [esp+0x4]
    ef55:	89 54 24 14          	mov    DWORD PTR [esp+0x14],edx
    ef59:	39 da                	cmp    edx,ebx
    ef5b:	0f 8d 87 01 00 00    	jge    decode_byte_run_branch_15
    ef61:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
    ef65:	8b 74 24 10          	mov    esi,DWORD PTR [esp+0x10]
    ef69:	8a 00                	mov    al,BYTE PTR [eax]
    ef6b:	46                   	inc    esi
    ef6c:	88 44 24 18          	mov    BYTE PTR [esp+0x18],al
    ef70:	0f be c0             	movsx  eax,al
    ef73:	89 74 24 10          	mov    DWORD PTR [esp+0x10],esi
    ef77:	85 c0                	test   eax,eax
    ef79:	0f 8c ae 00 00 00    	jl     decode_byte_run_branch_8
    ef7f:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
    ef83:	8d 56 01             	lea    edx,[esi+0x1]
    ef86:	8a 06                	mov    al,BYTE PTR [esi]
    ef88:	89 54 24 10          	mov    DWORD PTR [esp+0x10],edx
    ef8c:	31 d2                	xor    edx,edx
    ef8e:	8b 31                	mov    esi,DWORD PTR [ecx]
    ef90:	88 c2                	mov    dl,al
    ef92:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
    ef96:	0f af c6             	imul   eax,esi
    ef99:	8b 49 08             	mov    ecx,DWORD PTR [ecx+0x8]
    ef9c:	8b 7c 24 14          	mov    edi,DWORD PTR [esp+0x14]
    efa0:	01 c8                	add    eax,ecx
    efa2:	0f be 5c 24 18       	movsx  ebx,BYTE PTR [esp+0x18]
    efa7:	01 f8                	add    eax,edi
    efa9:	e8 22 24 06 00       	call   memset_
    efae:	89 f9                	mov    ecx,edi
    efb0:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
    efb4:	89 ea                	mov    edx,ebp
    efb6:	8b b5 a0 00 00 00    	mov    esi,DWORD PTR [ebp+0xa0]
    efbc:	89 eb                	mov    ebx,ebp
    efbe:	39 f7                	cmp    edi,esi
    efc0:	7e 06                	jle    decode_byte_run_branch_3
    efc2:	89 bd a0 00 00 00    	mov    DWORD PTR [ebp+0xa0],edi
decode_byte_run_branch_3:
    efc8:	3b 8b 98 00 00 00    	cmp    ecx,DWORD PTR [ebx+0x98]
    efce:	7d 06                	jge    decode_byte_run_branch_4
    efd0:	89 8b 98 00 00 00    	mov    DWORD PTR [ebx+0x98],ecx
decode_byte_run_branch_4:
    efd6:	89 d1                	mov    ecx,edx
    efd8:	8b b2 a4 00 00 00    	mov    esi,DWORD PTR [edx+0xa4]
    efde:	89 c3                	mov    ebx,eax
    efe0:	39 f0                	cmp    eax,esi
    efe2:	7e 06                	jle    decode_byte_run_branch_5
    efe4:	89 82 a4 00 00 00    	mov    DWORD PTR [edx+0xa4],eax
decode_byte_run_branch_5:
    efea:	3b 99 9c 00 00 00    	cmp    ebx,DWORD PTR [ecx+0x9c]
    eff0:	7d 06                	jge    decode_byte_run_branch_6
    eff2:	89 99 9c 00 00 00    	mov    DWORD PTR [ecx+0x9c],ebx
decode_byte_run_branch_6:
    eff8:	0f be 44 24 18       	movsx  eax,BYTE PTR [esp+0x18]
    effd:	03 44 24 14          	add    eax,DWORD PTR [esp+0x14]
    f001:	8b 8d a0 00 00 00    	mov    ecx,DWORD PTR [ebp+0xa0]
    f007:	48                   	dec    eax
    f008:	89 ea                	mov    edx,ebp
    f00a:	89 c3                	mov    ebx,eax
    f00c:	39 c8                	cmp    eax,ecx
    f00e:	7e 06                	jle    decode_byte_run_branch_7
    f010:	89 85 a0 00 00 00    	mov    DWORD PTR [ebp+0xa0],eax
decode_byte_run_branch_7:
    f016:	3b 9a 98 00 00 00    	cmp    ebx,DWORD PTR [edx+0x98]
    f01c:	0f 8d 24 ff ff ff    	jge    decode_byte_run_branch_2
    f022:	89 9a 98 00 00 00    	mov    DWORD PTR [edx+0x98],ebx
    f028:	e9 19 ff ff ff       	jmp    decode_byte_run_branch_2
decode_byte_run_branch_8:
    f02d:	8a 54 24 18          	mov    dl,BYTE PTR [esp+0x18]
    f031:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
    f035:	f6 da                	neg    dl
    f037:	8b 38                	mov    edi,DWORD PTR [eax]
    f039:	88 54 24 18          	mov    BYTE PTR [esp+0x18],dl
    f03d:	0f be ca             	movsx  ecx,dl
    f040:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
    f044:	0f af d7             	imul   edx,edi
    f047:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
    f04a:	8b 7c 24 14          	mov    edi,DWORD PTR [esp+0x14]
    f04e:	01 d0                	add    eax,edx
    f050:	01 c7                	add    edi,eax
    f052:	89 eb                	mov    ebx,ebp
    f054:	57                   	push   edi
    f055:	89 c8                	mov    eax,ecx
    f057:	c1 e9 02             	shr    ecx,0x2
    f05a:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
    f05c:	8a c8                	mov    cl,al
    f05e:	80 e1 03             	and    cl,0x3
    f061:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
    f063:	5f                   	pop    edi
    f064:	89 ea                	mov    edx,ebp
    f066:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
    f06a:	8b b5 a0 00 00 00    	mov    esi,DWORD PTR [ebp+0xa0]
    f070:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
    f074:	39 f1                	cmp    ecx,esi
    f076:	7e 06                	jle    decode_byte_run_branch_9
    f078:	89 8d a0 00 00 00    	mov    DWORD PTR [ebp+0xa0],ecx
decode_byte_run_branch_9:
    f07e:	3b 8b 98 00 00 00    	cmp    ecx,DWORD PTR [ebx+0x98]
    f084:	7d 06                	jge    decode_byte_run_branch_10
    f086:	89 8b 98 00 00 00    	mov    DWORD PTR [ebx+0x98],ecx
decode_byte_run_branch_10:
    f08c:	89 d1                	mov    ecx,edx
    f08e:	8b b2 a4 00 00 00    	mov    esi,DWORD PTR [edx+0xa4]
    f094:	89 c3                	mov    ebx,eax
    f096:	39 f0                	cmp    eax,esi
    f098:	7e 06                	jle    decode_byte_run_branch_11
    f09a:	89 82 a4 00 00 00    	mov    DWORD PTR [edx+0xa4],eax
decode_byte_run_branch_11:
    f0a0:	3b 99 9c 00 00 00    	cmp    ebx,DWORD PTR [ecx+0x9c]
    f0a6:	7d 06                	jge    decode_byte_run_branch_12
    f0a8:	89 99 9c 00 00 00    	mov    DWORD PTR [ecx+0x9c],ebx
decode_byte_run_branch_12:
    f0ae:	0f be 44 24 18       	movsx  eax,BYTE PTR [esp+0x18]
    f0b3:	03 44 24 14          	add    eax,DWORD PTR [esp+0x14]
    f0b7:	89 eb                	mov    ebx,ebp
    f0b9:	48                   	dec    eax
    f0ba:	8b 8d a0 00 00 00    	mov    ecx,DWORD PTR [ebp+0xa0]
    f0c0:	89 c2                	mov    edx,eax
    f0c2:	39 c8                	cmp    eax,ecx
    f0c4:	7e 06                	jle    decode_byte_run_branch_13
    f0c6:	89 85 a0 00 00 00    	mov    DWORD PTR [ebp+0xa0],eax
decode_byte_run_branch_13:
    f0cc:	3b 93 98 00 00 00    	cmp    edx,DWORD PTR [ebx+0x98]
    f0d2:	7d 06                	jge    decode_byte_run_branch_14
    f0d4:	89 93 98 00 00 00    	mov    DWORD PTR [ebx+0x98],edx
decode_byte_run_branch_14:
    f0da:	0f be 44 24 18       	movsx  eax,BYTE PTR [esp+0x18]
    f0df:	01 44 24 10          	add    DWORD PTR [esp+0x10],eax
    f0e3:	e9 5e fe ff ff       	jmp    decode_byte_run_branch_2
decode_byte_run_branch_15:
    f0e8:	ff 44 24 0c          	inc    DWORD PTR [esp+0xc]
    f0ec:	e9 31 fe ff ff       	jmp    decode_byte_run_branch_1
decode_byte_run_branch_16:
    f0f1:	83 c4 1c             	add    esp,0x1c
    f0f4:	5d                   	pop    ebp
    f0f5:	5f                   	pop    edi
    f0f6:	5e                   	pop    esi
    f0f7:	59                   	pop    ecx
    f0f8:	5b                   	pop    ebx
    f0f9:	c3                   	ret    
    f0fa:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'decode_delta_fli'                   -
;-------------------------------------------------
decode_delta_fli:
    f100:	53                   	push   ebx
    f101:	51                   	push   ecx
    f102:	56                   	push   esi
    f103:	57                   	push   edi
    f104:	55                   	push   ebp
    f105:	83 ec 1c             	sub    esp,0x1c
    f108:	89 54 24 0c          	mov    DWORD PTR [esp+0xc],edx
    f10c:	8d 50 04             	lea    edx,[eax+0x4]
    f10f:	83 c0 02             	add    eax,0x2
    f112:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
    f116:	0f bf 50 fe          	movsx  edx,WORD PTR [eax-0x2]
    f11a:	66 8b 00             	mov    ax,WORD PTR [eax]
    f11d:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
    f121:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
    f125:	05 a8 00 00 00       	add    eax,0xa8
    f12a:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
    f12e:	89 04 24             	mov    DWORD PTR [esp],eax
decode_delta_fli_branch_1:
    f131:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
    f135:	4a                   	dec    edx
    f136:	0f bf c2             	movsx  eax,dx
    f139:	89 54 24 10          	mov    DWORD PTR [esp+0x10],edx
    f13d:	85 c0                	test   eax,eax
    f13f:	7c b0                	jl     decode_byte_run_branch_16
    f141:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
    f145:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
    f149:	31 ed                	xor    ebp,ebp
    f14b:	8a 00                	mov    al,BYTE PTR [eax]
    f14d:	42                   	inc    edx
    f14e:	88 44 24 18          	mov    BYTE PTR [esp+0x18],al
    f152:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
decode_delta_fli_branch_2:
    f156:	31 c0                	xor    eax,eax
    f158:	8a 44 24 18          	mov    al,BYTE PTR [esp+0x18]
    f15c:	85 c0                	test   eax,eax
    f15e:	0f 8e a6 01 00 00    	jle    decode_delta_fli_branch_16
    f164:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
    f168:	31 c0                	xor    eax,eax
    f16a:	8d 4a 01             	lea    ecx,[edx+0x1]
    f16d:	8a 02                	mov    al,BYTE PTR [edx]
    f16f:	89 4c 24 08          	mov    DWORD PTR [esp+0x8],ecx
    f173:	01 c5                	add    ebp,eax
    f175:	8a 01                	mov    al,BYTE PTR [ecx]
    f177:	8d 71 01             	lea    esi,[ecx+0x1]
    f17a:	88 44 24 14          	mov    BYTE PTR [esp+0x14],al
    f17e:	0f be c0             	movsx  eax,al
    f181:	89 74 24 08          	mov    DWORD PTR [esp+0x8],esi
    f185:	85 c0                	test   eax,eax
    f187:	0f 8d be 00 00 00    	jge    decode_delta_fli_branch_9
    f18d:	8a 54 24 14          	mov    dl,BYTE PTR [esp+0x14]
    f191:	f6 da                	neg    dl
    f193:	8a 06                	mov    al,BYTE PTR [esi]
    f195:	88 54 24 14          	mov    BYTE PTR [esp+0x14],dl
    f199:	0f be da             	movsx  ebx,dl
    f19c:	31 d2                	xor    edx,edx
    f19e:	8d 4e 01             	lea    ecx,[esi+0x1]
    f1a1:	88 c2                	mov    dl,al
    f1a3:	8b 04 24             	mov    eax,DWORD PTR [esp]
    f1a6:	89 4c 24 08          	mov    DWORD PTR [esp+0x8],ecx
    f1aa:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
    f1ae:	0f af 08             	imul   ecx,DWORD PTR [eax]
    f1b1:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
    f1b4:	01 c8                	add    eax,ecx
    f1b6:	01 e8                	add    eax,ebp
    f1b8:	e8 13 22 06 00       	call   memset_
    f1bd:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
    f1c1:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
    f1c5:	89 eb                	mov    ebx,ebp
    f1c7:	8b b0 a0 00 00 00    	mov    esi,DWORD PTR [eax+0xa0]
    f1cd:	89 c1                	mov    ecx,eax
    f1cf:	39 f5                	cmp    ebp,esi
    f1d1:	7e 06                	jle    decode_delta_fli_branch_3
    f1d3:	89 a8 a0 00 00 00    	mov    DWORD PTR [eax+0xa0],ebp
decode_delta_fli_branch_3:
    f1d9:	3b 99 98 00 00 00    	cmp    ebx,DWORD PTR [ecx+0x98]
    f1df:	7d 06                	jge    decode_delta_fli_branch_4
    f1e1:	89 99 98 00 00 00    	mov    DWORD PTR [ecx+0x98],ebx
decode_delta_fli_branch_4:
    f1e7:	89 c3                	mov    ebx,eax
    f1e9:	8b b0 a4 00 00 00    	mov    esi,DWORD PTR [eax+0xa4]
    f1ef:	89 d1                	mov    ecx,edx
    f1f1:	39 f2                	cmp    edx,esi
    f1f3:	7e 06                	jle    decode_delta_fli_branch_5
    f1f5:	89 90 a4 00 00 00    	mov    DWORD PTR [eax+0xa4],edx
decode_delta_fli_branch_5:
    f1fb:	3b 8b 9c 00 00 00    	cmp    ecx,DWORD PTR [ebx+0x9c]
    f201:	7d 06                	jge    decode_delta_fli_branch_6
    f203:	89 8b 9c 00 00 00    	mov    DWORD PTR [ebx+0x9c],ecx
decode_delta_fli_branch_6:
    f209:	0f be 44 24 14       	movsx  eax,BYTE PTR [esp+0x14]
    f20e:	01 e8                	add    eax,ebp
    f210:	8b 5c 24 0c          	mov    ebx,DWORD PTR [esp+0xc]
    f214:	48                   	dec    eax
    f215:	8b b3 a0 00 00 00    	mov    esi,DWORD PTR [ebx+0xa0]
    f21b:	89 c2                	mov    edx,eax
    f21d:	39 f0                	cmp    eax,esi
    f21f:	7e 06                	jle    decode_delta_fli_branch_7
    f221:	89 83 a0 00 00 00    	mov    DWORD PTR [ebx+0xa0],eax
decode_delta_fli_branch_7:
    f227:	3b 93 98 00 00 00    	cmp    edx,DWORD PTR [ebx+0x98]
    f22d:	7d 06                	jge    decode_delta_fli_branch_8
    f22f:	89 93 98 00 00 00    	mov    DWORD PTR [ebx+0x98],edx
decode_delta_fli_branch_8:
    f235:	8a 74 24 18          	mov    dh,BYTE PTR [esp+0x18]
    f239:	0f be 44 24 14       	movsx  eax,BYTE PTR [esp+0x14]
    f23e:	fe ce                	dec    dh
    f240:	01 c5                	add    ebp,eax
    f242:	88 74 24 18          	mov    BYTE PTR [esp+0x18],dh
    f246:	e9 0b ff ff ff       	jmp    decode_delta_fli_branch_2
decode_delta_fli_branch_9:
    f24b:	8b 04 24             	mov    eax,DWORD PTR [esp]
    f24e:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
    f252:	0f af 10             	imul   edx,DWORD PTR [eax]
    f255:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
    f258:	01 d0                	add    eax,edx
    f25a:	0f be 4c 24 14       	movsx  ecx,BYTE PTR [esp+0x14]
    f25f:	8d 3c 28             	lea    edi,[eax+ebp*1]
    f262:	57                   	push   edi
    f263:	89 c8                	mov    eax,ecx
    f265:	c1 e9 02             	shr    ecx,0x2
    f268:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
    f26a:	8a c8                	mov    cl,al
    f26c:	80 e1 03             	and    cl,0x3
    f26f:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
    f271:	5f                   	pop    edi
    f272:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
    f276:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
    f27a:	89 e9                	mov    ecx,ebp
    f27c:	8b b0 a0 00 00 00    	mov    esi,DWORD PTR [eax+0xa0]
    f282:	89 c3                	mov    ebx,eax
    f284:	39 f5                	cmp    ebp,esi
    f286:	7e 06                	jle    decode_delta_fli_branch_10
    f288:	89 a8 a0 00 00 00    	mov    DWORD PTR [eax+0xa0],ebp
decode_delta_fli_branch_10:
    f28e:	3b 8b 98 00 00 00    	cmp    ecx,DWORD PTR [ebx+0x98]
    f294:	7d 06                	jge    decode_delta_fli_branch_11
    f296:	89 8b 98 00 00 00    	mov    DWORD PTR [ebx+0x98],ecx
decode_delta_fli_branch_11:
    f29c:	89 c1                	mov    ecx,eax
    f29e:	8b b0 a4 00 00 00    	mov    esi,DWORD PTR [eax+0xa4]
    f2a4:	89 d3                	mov    ebx,edx
    f2a6:	39 f2                	cmp    edx,esi
    f2a8:	7e 06                	jle    decode_delta_fli_branch_12
    f2aa:	89 90 a4 00 00 00    	mov    DWORD PTR [eax+0xa4],edx
decode_delta_fli_branch_12:
    f2b0:	3b 99 9c 00 00 00    	cmp    ebx,DWORD PTR [ecx+0x9c]
    f2b6:	7d 06                	jge    decode_delta_fli_branch_13
    f2b8:	89 99 9c 00 00 00    	mov    DWORD PTR [ecx+0x9c],ebx
decode_delta_fli_branch_13:
    f2be:	0f be 44 24 14       	movsx  eax,BYTE PTR [esp+0x14]
    f2c3:	01 e8                	add    eax,ebp
    f2c5:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
    f2c9:	48                   	dec    eax
    f2ca:	8b b2 a0 00 00 00    	mov    esi,DWORD PTR [edx+0xa0]
    f2d0:	89 c3                	mov    ebx,eax
    f2d2:	39 f0                	cmp    eax,esi
    f2d4:	7e 06                	jle    decode_delta_fli_branch_14
    f2d6:	89 82 a0 00 00 00    	mov    DWORD PTR [edx+0xa0],eax
decode_delta_fli_branch_14:
    f2dc:	3b 9a 98 00 00 00    	cmp    ebx,DWORD PTR [edx+0x98]
    f2e2:	7d 06                	jge    decode_delta_fli_branch_15
    f2e4:	89 9a 98 00 00 00    	mov    DWORD PTR [edx+0x98],ebx
decode_delta_fli_branch_15:
    f2ea:	0f be 44 24 14       	movsx  eax,BYTE PTR [esp+0x14]
    f2ef:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
    f2f3:	01 c2                	add    edx,eax
    f2f5:	01 c5                	add    ebp,eax
    f2f7:	8a 64 24 18          	mov    ah,BYTE PTR [esp+0x18]
    f2fb:	fe cc                	dec    ah
    f2fd:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
    f301:	88 64 24 18          	mov    BYTE PTR [esp+0x18],ah
    f305:	e9 4c fe ff ff       	jmp    decode_delta_fli_branch_2
decode_delta_fli_branch_16:
    f30a:	ff 44 24 04          	inc    DWORD PTR [esp+0x4]
    f30e:	e9 1e fe ff ff       	jmp    decode_delta_fli_branch_1
    f313:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    f319:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
    f31f:	90                   	nop

;-------------------------------------------------
;  Function 'decode_delta_flc'                   -
;-------------------------------------------------
decode_delta_flc:
    f320:	53                   	push   ebx
    f321:	51                   	push   ecx
    f322:	56                   	push   esi
    f323:	57                   	push   edi
    f324:	55                   	push   ebp
    f325:	83 ec 34             	sub    esp,0x34
    f328:	89 54 24 24          	mov    DWORD PTR [esp+0x24],edx
    f32c:	8b 92 a8 00 00 00    	mov    edx,DWORD PTR [edx+0xa8]
    f332:	4a                   	dec    edx
    f333:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
    f337:	66 8b 10             	mov    dx,WORD PTR [eax]
    f33a:	89 54 24 28          	mov    DWORD PTR [esp+0x28],edx
    f33e:	31 d2                	xor    edx,edx
    f340:	89 14 24             	mov    DWORD PTR [esp],edx
    f343:	8d 50 02             	lea    edx,[eax+0x2]
    f346:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
    f34a:	05 a8 00 00 00       	add    eax,0xa8
    f34f:	89 44 24 20          	mov    DWORD PTR [esp+0x20],eax
    f353:	eb 03                	jmp    decode_delta_flc_branch_2
decode_delta_flc_branch_1:
    f355:	29 1c 24             	sub    DWORD PTR [esp],ebx
decode_delta_flc_branch_2:
    f358:	66 8b 02             	mov    ax,WORD PTR [edx]
    f35b:	83 c2 02             	add    edx,0x2
    f35e:	0f bf d8             	movsx  ebx,ax
    f361:	66 89 44 24 30       	mov    WORD PTR [esp+0x30],ax
    f366:	85 db                	test   ebx,ebx
    f368:	0f 8d 9e 00 00 00    	jge    decode_delta_flc_branch_7
    f36e:	30 c0                	xor    al,al
    f370:	80 e4 40             	and    ah,0x40
    f373:	25 ff ff 00 00       	and    eax,0xffff
    f378:	75 db                	jne    decode_delta_flc_branch_1
    f37a:	8b 5c 24 20          	mov    ebx,DWORD PTR [esp+0x20]
    f37e:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
    f382:	0f af 03             	imul   eax,DWORD PTR [ebx]
    f385:	31 c9                	xor    ecx,ecx
    f387:	8b 5b 08             	mov    ebx,DWORD PTR [ebx+0x8]
    f38a:	8a 4c 24 30          	mov    cl,BYTE PTR [esp+0x30]
    f38e:	01 d8                	add    eax,ebx
    f390:	8a 1c 24             	mov    bl,BYTE PTR [esp]
    f393:	88 1c 01             	mov    BYTE PTR [ecx+eax*1],bl
    f396:	31 db                	xor    ebx,ebx
    f398:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
    f39c:	88 cb                	mov    bl,cl
    f39e:	89 c7                	mov    edi,eax
    f3a0:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
    f3a4:	89 de                	mov    esi,ebx
    f3a6:	3b 98 a0 00 00 00    	cmp    ebx,DWORD PTR [eax+0xa0]
    f3ac:	7e 06                	jle    decode_delta_flc_branch_3
    f3ae:	89 98 a0 00 00 00    	mov    DWORD PTR [eax+0xa0],ebx
decode_delta_flc_branch_3:
    f3b4:	3b b7 98 00 00 00    	cmp    esi,DWORD PTR [edi+0x98]
    f3ba:	7d 06                	jge    decode_delta_flc_branch_4
    f3bc:	89 b7 98 00 00 00    	mov    DWORD PTR [edi+0x98],esi
decode_delta_flc_branch_4:
    f3c2:	89 c6                	mov    esi,eax
    f3c4:	8b b8 a4 00 00 00    	mov    edi,DWORD PTR [eax+0xa4]
    f3ca:	89 cb                	mov    ebx,ecx
    f3cc:	39 f9                	cmp    ecx,edi
    f3ce:	7e 06                	jle    decode_delta_flc_branch_5
    f3d0:	89 88 a4 00 00 00    	mov    DWORD PTR [eax+0xa4],ecx
decode_delta_flc_branch_5:
    f3d6:	3b 9e 9c 00 00 00    	cmp    ebx,DWORD PTR [esi+0x9c]
    f3dc:	7d 06                	jge    decode_delta_flc_branch_6
    f3de:	89 9e 9c 00 00 00    	mov    DWORD PTR [esi+0x9c],ebx
decode_delta_flc_branch_6:
    f3e4:	66 8b 02             	mov    ax,WORD PTR [edx]
    f3e7:	66 89 44 24 30       	mov    WORD PTR [esp+0x30],ax
    f3ec:	98                   	cwde   
    f3ed:	83 c2 02             	add    edx,0x2
    f3f0:	85 c0                	test   eax,eax
    f3f2:	75 18                	jne    decode_delta_flc_branch_7
    f3f4:	8b 04 24             	mov    eax,DWORD PTR [esp]
    f3f7:	8b 5c 24 28          	mov    ebx,DWORD PTR [esp+0x28]
    f3fb:	40                   	inc    eax
    f3fc:	4b                   	dec    ebx
    f3fd:	89 04 24             	mov    DWORD PTR [esp],eax
    f400:	0f bf c3             	movsx  eax,bx
    f403:	89 5c 24 28          	mov    DWORD PTR [esp+0x28],ebx
    f407:	e9 fa 01 00 00       	jmp    decode_delta_flc_branch_23
decode_delta_flc_branch_7:
    f40c:	31 ed                	xor    ebp,ebp
decode_delta_flc_branch_8:
    f40e:	42                   	inc    edx
    f40f:	31 c0                	xor    eax,eax
    f411:	0f be 1a             	movsx  ebx,BYTE PTR [edx]
    f414:	8a 42 ff             	mov    al,BYTE PTR [edx-0x1]
    f417:	42                   	inc    edx
    f418:	01 db                	add    ebx,ebx
    f41a:	01 c5                	add    ebp,eax
    f41c:	85 db                	test   ebx,ebx
    f41e:	0f 8c d2 00 00 00    	jl     decode_delta_flc_branch_15
    f424:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
    f428:	8b 0c 24             	mov    ecx,DWORD PTR [esp]
    f42b:	0f af 08             	imul   ecx,DWORD PTR [eax]
    f42e:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
    f431:	89 d6                	mov    esi,edx
    f433:	01 c8                	add    eax,ecx
    f435:	89 d9                	mov    ecx,ebx
    f437:	8d 3c 28             	lea    edi,[eax+ebp*1]
    f43a:	89 6c 24 18          	mov    DWORD PTR [esp+0x18],ebp
    f43e:	57                   	push   edi
    f43f:	89 c8                	mov    eax,ecx
    f441:	c1 e9 02             	shr    ecx,0x2
    f444:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
    f446:	8a c8                	mov    cl,al
    f448:	80 e1 03             	and    cl,0x3
    f44b:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
    f44d:	5f                   	pop    edi
    f44e:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
    f452:	8b 0c 24             	mov    ecx,DWORD PTR [esp]
    f455:	89 c6                	mov    esi,eax
    f457:	3b a8 a0 00 00 00    	cmp    ebp,DWORD PTR [eax+0xa0]
    f45d:	7e 06                	jle    decode_delta_flc_branch_9
    f45f:	89 a8 a0 00 00 00    	mov    DWORD PTR [eax+0xa0],ebp
decode_delta_flc_branch_9:
    f465:	8b 7c 24 18          	mov    edi,DWORD PTR [esp+0x18]
    f469:	3b be 98 00 00 00    	cmp    edi,DWORD PTR [esi+0x98]
    f46f:	7d 06                	jge    decode_delta_flc_branch_10
    f471:	89 be 98 00 00 00    	mov    DWORD PTR [esi+0x98],edi
decode_delta_flc_branch_10:
    f477:	89 c7                	mov    edi,eax
    f479:	89 ce                	mov    esi,ecx
    f47b:	3b 88 a4 00 00 00    	cmp    ecx,DWORD PTR [eax+0xa4]
    f481:	7e 06                	jle    decode_delta_flc_branch_11
    f483:	89 88 a4 00 00 00    	mov    DWORD PTR [eax+0xa4],ecx
decode_delta_flc_branch_11:
    f489:	3b b7 9c 00 00 00    	cmp    esi,DWORD PTR [edi+0x9c]
    f48f:	7d 06                	jge    decode_delta_flc_branch_12
    f491:	89 b7 9c 00 00 00    	mov    DWORD PTR [edi+0x9c],esi
decode_delta_flc_branch_12:
    f497:	8d 4c 2b ff          	lea    ecx,[ebx+ebp*1-0x1]
    f49b:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
    f49f:	89 ce                	mov    esi,ecx
    f4a1:	3b 88 a0 00 00 00    	cmp    ecx,DWORD PTR [eax+0xa0]
    f4a7:	7e 06                	jle    decode_delta_flc_branch_13
    f4a9:	89 88 a0 00 00 00    	mov    DWORD PTR [eax+0xa0],ecx
decode_delta_flc_branch_13:
    f4af:	3b b0 98 00 00 00    	cmp    esi,DWORD PTR [eax+0x98]
    f4b5:	7d 06                	jge    decode_delta_flc_branch_14
    f4b7:	89 b0 98 00 00 00    	mov    DWORD PTR [eax+0x98],esi
decode_delta_flc_branch_14:
    f4bd:	8b 4c 24 30          	mov    ecx,DWORD PTR [esp+0x30]
    f4c1:	01 dd                	add    ebp,ebx
    f4c3:	49                   	dec    ecx
    f4c4:	01 da                	add    edx,ebx
    f4c6:	0f bf c1             	movsx  eax,cx
    f4c9:	66 89 4c 24 30       	mov    WORD PTR [esp+0x30],cx
    f4ce:	85 c0                	test   eax,eax
    f4d0:	0f 85 38 ff ff ff    	jne    decode_delta_flc_branch_8
    f4d6:	ff 04 24             	inc    DWORD PTR [esp]
    f4d9:	8b 74 24 28          	mov    esi,DWORD PTR [esp+0x28]
    f4dd:	4e                   	dec    esi
    f4de:	0f bf c6             	movsx  eax,si
    f4e1:	89 74 24 28          	mov    DWORD PTR [esp+0x28],esi
    f4e5:	85 c0                	test   eax,eax
    f4e7:	0f 8f 6b fe ff ff    	jg     decode_delta_flc_branch_2
    f4ed:	83 c4 34             	add    esp,0x34
    f4f0:	5d                   	pop    ebp
    f4f1:	5f                   	pop    edi
    f4f2:	5e                   	pop    esi
    f4f3:	59                   	pop    ecx
    f4f4:	5b                   	pop    ebx
    f4f5:	c3                   	ret    
decode_delta_flc_branch_15:
    f4f6:	f7 db                	neg    ebx
    f4f8:	8b 34 24             	mov    esi,DWORD PTR [esp]
    f4fb:	89 d8                	mov    eax,ebx
    f4fd:	89 e9                	mov    ecx,ebp
    f4ff:	d1 f8                	sar    eax,1
    f501:	89 6c 24 10          	mov    DWORD PTR [esp+0x10],ebp
    f505:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
    f509:	66 8b 02             	mov    ax,WORD PTR [edx]
    f50c:	83 c2 02             	add    edx,0x2
    f50f:	66 89 44 24 2c       	mov    WORD PTR [esp+0x2c],ax
    f514:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
    f518:	89 74 24 14          	mov    DWORD PTR [esp+0x14],esi
    f51c:	89 c6                	mov    esi,eax
    f51e:	3b a8 a0 00 00 00    	cmp    ebp,DWORD PTR [eax+0xa0]
    f524:	7e 06                	jle    decode_delta_flc_branch_16
    f526:	89 a8 a0 00 00 00    	mov    DWORD PTR [eax+0xa0],ebp
decode_delta_flc_branch_16:
    f52c:	8b 7c 24 10          	mov    edi,DWORD PTR [esp+0x10]
    f530:	3b be 98 00 00 00    	cmp    edi,DWORD PTR [esi+0x98]
    f536:	7d 06                	jge    decode_delta_flc_branch_17
    f538:	89 be 98 00 00 00    	mov    DWORD PTR [esi+0x98],edi
decode_delta_flc_branch_17:
    f53e:	8b 74 24 14          	mov    esi,DWORD PTR [esp+0x14]
    f542:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
    f546:	3b b0 a4 00 00 00    	cmp    esi,DWORD PTR [eax+0xa4]
    f54c:	7e 06                	jle    decode_delta_flc_branch_18
    f54e:	89 b0 a4 00 00 00    	mov    DWORD PTR [eax+0xa4],esi
decode_delta_flc_branch_18:
    f554:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
    f558:	3b b0 9c 00 00 00    	cmp    esi,DWORD PTR [eax+0x9c]
    f55e:	7d 06                	jge    decode_delta_flc_branch_19
    f560:	89 b0 9c 00 00 00    	mov    DWORD PTR [eax+0x9c],esi
decode_delta_flc_branch_19:
    f566:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
    f56a:	01 c0                	add    eax,eax
    f56c:	8b 74 24 24          	mov    esi,DWORD PTR [esp+0x24]
    f570:	01 e8                	add    eax,ebp
    f572:	8b 7c 24 24          	mov    edi,DWORD PTR [esp+0x24]
    f576:	48                   	dec    eax
    f577:	89 74 24 0c          	mov    DWORD PTR [esp+0xc],esi
    f57b:	89 c6                	mov    esi,eax
    f57d:	3b 87 a0 00 00 00    	cmp    eax,DWORD PTR [edi+0xa0]
    f583:	7e 06                	jle    decode_delta_flc_branch_20
    f585:	89 87 a0 00 00 00    	mov    DWORD PTR [edi+0xa0],eax
decode_delta_flc_branch_20:
    f58b:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
    f58f:	3b b0 98 00 00 00    	cmp    esi,DWORD PTR [eax+0x98]
    f595:	7d 06                	jge    decode_delta_flc_branch_21
    f597:	89 b0 98 00 00 00    	mov    DWORD PTR [eax+0x98],esi
decode_delta_flc_branch_21:
    f59d:	8b 7c 24 1c          	mov    edi,DWORD PTR [esp+0x1c]
    f5a1:	4f                   	dec    edi
    f5a2:	89 7c 24 1c          	mov    DWORD PTR [esp+0x1c],edi
    f5a6:	85 ff                	test   edi,edi
    f5a8:	7c 34                	jl     decode_delta_flc_branch_22
    f5aa:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
    f5ae:	8b 34 24             	mov    esi,DWORD PTR [esp]
    f5b1:	0f af 30             	imul   esi,DWORD PTR [eax]
    f5b4:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
    f5b7:	01 f0                	add    eax,esi
    f5b9:	8d 34 08             	lea    esi,[eax+ecx*1]
    f5bc:	8a 44 24 2c          	mov    al,BYTE PTR [esp+0x2c]
    f5c0:	88 06                	mov    BYTE PTR [esi],al
    f5c2:	8b 74 24 20          	mov    esi,DWORD PTR [esp+0x20]
    f5c6:	8b 04 24             	mov    eax,DWORD PTR [esp]
    f5c9:	0f af 06             	imul   eax,DWORD PTR [esi]
    f5cc:	8b 76 08             	mov    esi,DWORD PTR [esi+0x8]
    f5cf:	41                   	inc    ecx
    f5d0:	01 f0                	add    eax,esi
    f5d2:	8d 34 08             	lea    esi,[eax+ecx*1]
    f5d5:	8a 44 24 2d          	mov    al,BYTE PTR [esp+0x2d]
    f5d9:	41                   	inc    ecx
    f5da:	88 06                	mov    BYTE PTR [esi],al
    f5dc:	eb bf                	jmp    decode_delta_flc_branch_21
decode_delta_flc_branch_22:
    f5de:	8b 7c 24 30          	mov    edi,DWORD PTR [esp+0x30]
    f5e2:	4f                   	dec    edi
    f5e3:	01 dd                	add    ebp,ebx
    f5e5:	0f bf c7             	movsx  eax,di
    f5e8:	66 89 7c 24 30       	mov    WORD PTR [esp+0x30],di
    f5ed:	85 c0                	test   eax,eax
    f5ef:	0f 85 19 fe ff ff    	jne    decode_delta_flc_branch_8
    f5f5:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
    f5f9:	8b 1c 24             	mov    ebx,DWORD PTR [esp]
    f5fc:	48                   	dec    eax
    f5fd:	43                   	inc    ebx
    f5fe:	89 44 24 28          	mov    DWORD PTR [esp+0x28],eax
    f602:	98                   	cwde   
    f603:	89 1c 24             	mov    DWORD PTR [esp],ebx
decode_delta_flc_branch_23:
    f606:	85 c0                	test   eax,eax
    f608:	0f 8f 4a fd ff ff    	jg     decode_delta_flc_branch_2
    f60e:	83 c4 34             	add    esp,0x34
    f611:	5d                   	pop    ebp
    f612:	5f                   	pop    edi
    f613:	5e                   	pop    esi
    f614:	59                   	pop    ecx
    f615:	5b                   	pop    ebx
    f616:	c3                   	ret    
    f617:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    f61d:	8d 52 00             	lea    edx,[edx+0x0]

;-------------------------------------------------
;  Function 'decode_literal'                     -
;-------------------------------------------------
decode_literal:
    f620:	53                   	push   ebx
    f621:	51                   	push   ecx
    f622:	56                   	push   esi
    f623:	57                   	push   edi
    f624:	55                   	push   ebp
    f625:	83 ec 14             	sub    esp,0x14
    f628:	89 c5                	mov    ebp,eax
    f62a:	8b 82 ac 00 00 00    	mov    eax,DWORD PTR [edx+0xac]
    f630:	31 db                	xor    ebx,ebx
    f632:	89 04 24             	mov    DWORD PTR [esp],eax
    f635:	8b 82 a8 00 00 00    	mov    eax,DWORD PTR [edx+0xa8]
    f63b:	8b 0c 24             	mov    ecx,DWORD PTR [esp]
    f63e:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
    f642:	85 c9                	test   ecx,ecx
    f644:	0f 8e bf 00 00 00    	jle    decode_literal_branch_8
    f64a:	48                   	dec    eax
    f64b:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
    f64f:	8d 82 a8 00 00 00    	lea    eax,[edx+0xa8]
    f655:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
decode_literal_branch_1:
    f659:	8b 7c 24 04          	mov    edi,DWORD PTR [esp+0x4]
    f65d:	8b 3f                	mov    edi,DWORD PTR [edi]
    f65f:	0f af fb             	imul   edi,ebx
    f662:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
    f666:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
    f66a:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
    f66d:	89 ee                	mov    esi,ebp
    f66f:	01 c7                	add    edi,eax
    f671:	57                   	push   edi
    f672:	89 c8                	mov    eax,ecx
    f674:	c1 e9 02             	shr    ecx,0x2
    f677:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
    f679:	8a c8                	mov    cl,al
    f67b:	80 e1 03             	and    cl,0x3
    f67e:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
    f680:	5f                   	pop    edi
    f681:	89 d0                	mov    eax,edx
    f683:	31 ff                	xor    edi,edi
    f685:	89 d9                	mov    ecx,ebx
    f687:	89 7c 24 0c          	mov    DWORD PTR [esp+0xc],edi
    f68b:	8b ba a0 00 00 00    	mov    edi,DWORD PTR [edx+0xa0]
    f691:	89 d6                	mov    esi,edx
    f693:	85 ff                	test   edi,edi
    f695:	7d 0a                	jge    decode_literal_branch_2
    f697:	c7 82 a0 00 00 00 00 00 00 00 	mov    DWORD PTR [edx+0xa0],0x0
decode_literal_branch_2:
    f6a1:	8b 7c 24 0c          	mov    edi,DWORD PTR [esp+0xc]
    f6a5:	3b be 98 00 00 00    	cmp    edi,DWORD PTR [esi+0x98]
    f6ab:	7d 06                	jge    decode_literal_branch_3
    f6ad:	89 be 98 00 00 00    	mov    DWORD PTR [esi+0x98],edi
decode_literal_branch_3:
    f6b3:	89 c6                	mov    esi,eax
    f6b5:	89 cf                	mov    edi,ecx
    f6b7:	3b 88 a4 00 00 00    	cmp    ecx,DWORD PTR [eax+0xa4]
    f6bd:	7e 06                	jle    decode_literal_branch_4
    f6bf:	89 88 a4 00 00 00    	mov    DWORD PTR [eax+0xa4],ecx
decode_literal_branch_4:
    f6c5:	3b be 9c 00 00 00    	cmp    edi,DWORD PTR [esi+0x9c]
    f6cb:	7d 06                	jge    decode_literal_branch_5
    f6cd:	89 be 9c 00 00 00    	mov    DWORD PTR [esi+0x9c],edi
decode_literal_branch_5:
    f6d3:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
    f6d7:	8b ba a0 00 00 00    	mov    edi,DWORD PTR [edx+0xa0]
    f6dd:	89 d0                	mov    eax,edx
    f6df:	39 f9                	cmp    ecx,edi
    f6e1:	7e 06                	jle    decode_literal_branch_6
    f6e3:	89 8a a0 00 00 00    	mov    DWORD PTR [edx+0xa0],ecx
decode_literal_branch_6:
    f6e9:	3b 88 98 00 00 00    	cmp    ecx,DWORD PTR [eax+0x98]
    f6ef:	7d 06                	jge    decode_literal_branch_7
    f6f1:	89 88 98 00 00 00    	mov    DWORD PTR [eax+0x98],ecx
decode_literal_branch_7:
    f6f7:	8b 74 24 08          	mov    esi,DWORD PTR [esp+0x8]
    f6fb:	8b 3c 24             	mov    edi,DWORD PTR [esp]
    f6fe:	43                   	inc    ebx
    f6ff:	01 f5                	add    ebp,esi
    f701:	39 fb                	cmp    ebx,edi
    f703:	0f 8c 50 ff ff ff    	jl     decode_literal_branch_1
decode_literal_branch_8:
    f709:	83 c4 14             	add    esp,0x14
    f70c:	5d                   	pop    ebp
    f70d:	5f                   	pop    edi
    f70e:	5e                   	pop    esi
    f70f:	59                   	pop    ecx
    f710:	5b                   	pop    ebx
    f711:	c3                   	ret    
    f712:	8b c0                	mov    eax,eax
decode_literal_reference_1:                                                                         ; access size: DWORDS
    f714:	7f f7                	jg     @obj1:decode_frame_reference_1                               ; fixup: num: 1836, src obj: 1, src ofs: 0xf714, dst obj: 1, dst ofs: 0xf77f
    f716:	00 00                	add    BYTE PTR [eax],al
    f718:	87 fe                	xchg   esi,edi                                                      ; fixup: num: 1835, src obj: 1, src ofs: 0xf718, dst obj: 1, dst ofs: 0xfe87
    f71a:	00 00                	add    BYTE PTR [eax],al
    f71c:	87 fe                	xchg   esi,edi                                                      ; fixup: num: 1834, src obj: 1, src ofs: 0xf71c, dst obj: 1, dst ofs: 0xfe87
    f71e:	00 00                	add    BYTE PTR [eax],al
    f720:	e5 f7                	in     eax,0xf7                                                     ; fixup: num: 1833, src obj: 1, src ofs: 0xf720, dst obj: 1, dst ofs: 0xf7e5
    f722:	00 00                	add    BYTE PTR [eax],al
    f724:	87 fe                	xchg   esi,edi                                                      ; fixup: num: 1832, src obj: 1, src ofs: 0xf724, dst obj: 1, dst ofs: 0xfe87
    f726:	00 00                	add    BYTE PTR [eax],al
    f728:	87 fe                	xchg   esi,edi                                                      ; fixup: num: 1831, src obj: 1, src ofs: 0xf728, dst obj: 1, dst ofs: 0xfe87
    f72a:	00 00                	add    BYTE PTR [eax],al
    f72c:	87 fe                	xchg   esi,edi                                                      ; fixup: num: 1830, src obj: 1, src ofs: 0xf72c, dst obj: 1, dst ofs: 0xfe87
    f72e:	00 00                	add    BYTE PTR [eax],al
    f730:	20 fb                	and    bl,bh                                                        ; fixup: num: 1829, src obj: 1, src ofs: 0xf730, dst obj: 1, dst ofs: 0xfb20
    f732:	00 00                	add    BYTE PTR [eax],al
    f734:	86 fb                	xchg   bl,bh                                                        ; fixup: num: 1828, src obj: 1, src ofs: 0xf734, dst obj: 1, dst ofs: 0xfb86
    f736:	00 00                	add    BYTE PTR [eax],al
    f738:	b7 fd                	mov    bh,0xfd                                                      ; fixup: num: 1827, src obj: 1, src ofs: 0xf738, dst obj: 1, dst ofs: 0xfdb7
    f73a:	00 00                	add    BYTE PTR [eax],al
    f73c:	87 fe                	xchg   esi,edi                                                      ; fixup: num: 1826, src obj: 1, src ofs: 0xf73c, dst obj: 1, dst ofs: 0xfe87
    f73e:	00 00                	add    BYTE PTR [eax],al
    f740:	e9 fe 00 00 fc       	jmp    0xfc00f843                                                   ; fixup: num: 1825, src obj: 1, src ofs: 0xf740, dst obj: 1, dst ofs: 0xfee9; fixup: num: 1824, src obj: 1, src ofs: 0xf744, dst obj: 1, dst ofs: 0x100fc
;-------------------------------------------------
;  Bad code 12 (zero after jmp):                 -
;-------------------------------------------------
;   f73e:	00 00                	add    BYTE PTR [eax],al
;   f740:	e9 fe 00 00 fc       	jmp    0xfc00f843
;   f745:	00 01                	add    BYTE PTR [ecx],al
;   f747:	00 8d 80 00 00 00    	add    BYTE PTR [ebp+0x80],cl
;-------------------------------------------------
;  Padding data (1 bytes):                       -
;-------------------------------------------------
    f745:	00                   	db     0x00
;-------------------------------------------------
;  End of bad code 12                            -
;-------------------------------------------------
    f746:	01 00                	add    DWORD PTR [eax],eax
    f748:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    f74e:	8b d2                	mov    edx,edx

;-------------------------------------------------
;  Function 'decode_frame'                       -
;-------------------------------------------------
decode_frame:
    f750:	51                   	push   ecx
    f751:	56                   	push   esi
    f752:	57                   	push   edi
    f753:	55                   	push   ebp
    f754:	81 ec ac 00 00 00    	sub    esp,0xac
    f75a:	89 04 24             	mov    DWORD PTR [esp],eax
    f75d:	89 94 24 84 00 00 00 	mov    DWORD PTR [esp+0x84],edx
    f764:	89 5c 24 04          	mov    DWORD PTR [esp+0x4],ebx
    f768:	31 d2                	xor    edx,edx
    f76a:	05 a8 00 00 00       	add    eax,0xa8
    f76f:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
    f773:	89 84 24 80 00 00 00 	mov    DWORD PTR [esp+0x80],eax
    f77a:	e9 1f 07 00 00       	jmp    decode_frame_branch_50
decode_frame_reference_1:
    f77f:	80 3d 6c 27 02 00 00 	cmp    BYTE PTR ds:@obj3:palette_enable,0x0                         ; fixup: num: 1838, src obj: 1, src ofs: 0xf781, dst obj: 3, dst ofs: 0x2276c
    f786:	0f 84 fb 06 00 00    	je     decode_frame_reference_6
    f78c:	bb f0 ed 00 00       	mov    ebx,@obj1:screen_put_colors                                  ; fixup: num: 1837, src obj: 1, src ofs: 0xf78d, dst obj: 1, dst ofs: 0xedf0
    f791:	bd 00 01 00 00       	mov    ebp,0x100
    f796:	66 8b 02             	mov    ax,WORD PTR [edx]
    f799:	31 ff                	xor    edi,edi
    f79b:	89 5c 24 0c          	mov    DWORD PTR [esp+0xc],ebx
    f79f:	89 84 24 9c 00 00 00 	mov    DWORD PTR [esp+0x9c],eax
decode_frame_branch_1:
    f7a6:	8b 9c 24 9c 00 00 00 	mov    ebx,DWORD PTR [esp+0x9c]
    f7ad:	4b                   	dec    ebx
    f7ae:	0f bf c3             	movsx  eax,bx
    f7b1:	89 9c 24 9c 00 00 00 	mov    DWORD PTR [esp+0x9c],ebx
    f7b8:	85 c0                	test   eax,eax
    f7ba:	0f 8c c7 06 00 00    	jl     decode_frame_reference_6
    f7c0:	41                   	inc    ecx
    f7c1:	31 c0                	xor    eax,eax
    f7c3:	0f b6 31             	movzx  esi,BYTE PTR [ecx]
    f7c6:	8a 41 ff             	mov    al,BYTE PTR [ecx-0x1]
    f7c9:	41                   	inc    ecx
    f7ca:	01 c7                	add    edi,eax
    f7cc:	85 f6                	test   esi,esi
    f7ce:	75 02                	jne    decode_frame_branch_2
    f7d0:	89 ee                	mov    esi,ebp
decode_frame_branch_2:
    f7d2:	89 f3                	mov    ebx,esi
    f7d4:	89 ca                	mov    edx,ecx
    f7d6:	89 f8                	mov    eax,edi
    f7d8:	ff 54 24 0c          	call   DWORD PTR [esp+0xc]
    f7dc:	8d 04 76             	lea    eax,[esi+esi*2]
    f7df:	01 c1                	add    ecx,eax
    f7e1:	01 f7                	add    edi,esi
    f7e3:	eb c1                	jmp    decode_frame_branch_1
decode_frame_reference_2:
    f7e5:	8b 1c 24             	mov    ebx,DWORD PTR [esp]
    f7e8:	89 44 24 3c          	mov    DWORD PTR [esp+0x3c],eax
    f7ec:	89 44 24 20          	mov    DWORD PTR [esp+0x20],eax
    f7f0:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
    f7f4:	66 8b 12             	mov    dx,WORD PTR [edx]
    f7f7:	89 5c 24 10          	mov    DWORD PTR [esp+0x10],ebx
    f7fb:	89 94 24 8c 00 00 00 	mov    DWORD PTR [esp+0x8c],edx
    f802:	8b 9b a8 00 00 00    	mov    ebx,DWORD PTR [ebx+0xa8]
    f808:	31 d2                	xor    edx,edx
    f80a:	4b                   	dec    ebx
    f80b:	89 54 24 18          	mov    DWORD PTR [esp+0x18],edx
    f80f:	89 5c 24 14          	mov    DWORD PTR [esp+0x14],ebx
    f813:	89 ca                	mov    edx,ecx
    f815:	eb 04                	jmp    decode_frame_branch_4
decode_frame_branch_3:
    f817:	29 5c 24 18          	sub    DWORD PTR [esp+0x18],ebx
decode_frame_branch_4:
    f81b:	66 8b 02             	mov    ax,WORD PTR [edx]
    f81e:	83 c2 02             	add    edx,0x2
    f821:	0f bf d8             	movsx  ebx,ax
    f824:	66 89 84 24 94 00 00 00 	mov    WORD PTR [esp+0x94],ax
    f82c:	85 db                	test   ebx,ebx
    f82e:	0f 8d bb 00 00 00    	jge    decode_frame_branch_9
    f834:	30 c0                	xor    al,al
    f836:	80 e4 40             	and    ah,0x40
    f839:	25 ff ff 00 00       	and    eax,0xffff
    f83e:	75 d7                	jne    decode_frame_branch_3
    f840:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
    f844:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
    f848:	0f af 08             	imul   ecx,DWORD PTR [eax]
    f84b:	31 db                	xor    ebx,ebx
    f84d:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
    f850:	8a 9c 24 94 00 00 00 	mov    bl,BYTE PTR [esp+0x94]
    f857:	01 c8                	add    eax,ecx
    f859:	01 d8                	add    eax,ebx
    f85b:	8a 5c 24 18          	mov    bl,BYTE PTR [esp+0x18]
    f85f:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
    f863:	88 18                	mov    BYTE PTR [eax],bl
    f865:	31 db                	xor    ebx,ebx
    f867:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
    f86b:	8a 9c 24 94 00 00 00 	mov    bl,BYTE PTR [esp+0x94]
    f872:	89 c7                	mov    edi,eax
    f874:	89 de                	mov    esi,ebx
    f876:	3b 98 a0 00 00 00    	cmp    ebx,DWORD PTR [eax+0xa0]
    f87c:	7e 06                	jle    decode_frame_branch_5
    f87e:	89 98 a0 00 00 00    	mov    DWORD PTR [eax+0xa0],ebx
decode_frame_branch_5:
    f884:	3b b7 98 00 00 00    	cmp    esi,DWORD PTR [edi+0x98]
    f88a:	7d 06                	jge    decode_frame_branch_6
    f88c:	89 b7 98 00 00 00    	mov    DWORD PTR [edi+0x98],esi
decode_frame_branch_6:
    f892:	89 c6                	mov    esi,eax
    f894:	8b b8 a4 00 00 00    	mov    edi,DWORD PTR [eax+0xa4]
    f89a:	89 cb                	mov    ebx,ecx
    f89c:	39 f9                	cmp    ecx,edi
    f89e:	7e 06                	jle    decode_frame_branch_7
    f8a0:	89 88 a4 00 00 00    	mov    DWORD PTR [eax+0xa4],ecx
decode_frame_branch_7:
    f8a6:	3b 9e 9c 00 00 00    	cmp    ebx,DWORD PTR [esi+0x9c]
    f8ac:	7d 06                	jge    decode_frame_branch_8
    f8ae:	89 9e 9c 00 00 00    	mov    DWORD PTR [esi+0x9c],ebx
decode_frame_branch_8:
    f8b4:	66 8b 02             	mov    ax,WORD PTR [edx]
    f8b7:	66 89 84 24 94 00 00 00 	mov    WORD PTR [esp+0x94],ax
    f8bf:	98                   	cwde   
    f8c0:	83 c2 02             	add    edx,0x2
    f8c3:	85 c0                	test   eax,eax
    f8c5:	75 28                	jne    decode_frame_branch_9
    f8c7:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
    f8cb:	8b b4 24 8c 00 00 00 	mov    esi,DWORD PTR [esp+0x8c]
    f8d2:	40                   	inc    eax
    f8d3:	4e                   	dec    esi
    f8d4:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
    f8d8:	0f bf c6             	movsx  eax,si
    f8db:	89 b4 24 8c 00 00 00 	mov    DWORD PTR [esp+0x8c],esi
    f8e2:	85 c0                	test   eax,eax
    f8e4:	0f 8f 31 ff ff ff    	jg     decode_frame_branch_4
    f8ea:	e9 98 05 00 00       	jmp    decode_frame_reference_6
decode_frame_branch_9:
    f8ef:	31 ed                	xor    ebp,ebp
decode_frame_branch_10:
    f8f1:	42                   	inc    edx
    f8f2:	31 c0                	xor    eax,eax
    f8f4:	0f be 1a             	movsx  ebx,BYTE PTR [edx]
    f8f7:	8a 42 ff             	mov    al,BYTE PTR [edx-0x1]
    f8fa:	42                   	inc    edx
    f8fb:	01 db                	add    ebx,ebx
    f8fd:	01 c5                	add    ebp,eax
    f8ff:	85 db                	test   ebx,ebx
    f901:	0f 8c e0 00 00 00    	jl     decode_frame_branch_17
    f907:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
    f90b:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
    f90f:	0f af 01             	imul   eax,DWORD PTR [ecx]
    f912:	8b 49 08             	mov    ecx,DWORD PTR [ecx+0x8]
    f915:	89 d6                	mov    esi,edx
    f917:	01 c8                	add    eax,ecx
    f919:	89 d9                	mov    ecx,ebx
    f91b:	8d 3c 28             	lea    edi,[eax+ebp*1]
    f91e:	89 6c 24 24          	mov    DWORD PTR [esp+0x24],ebp
    f922:	57                   	push   edi
    f923:	89 c8                	mov    eax,ecx
    f925:	c1 e9 02             	shr    ecx,0x2
    f928:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
    f92a:	8a c8                	mov    cl,al
    f92c:	80 e1 03             	and    cl,0x3
    f92f:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
    f931:	5f                   	pop    edi
    f932:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
    f936:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
    f93a:	89 c6                	mov    esi,eax
    f93c:	3b a8 a0 00 00 00    	cmp    ebp,DWORD PTR [eax+0xa0]
    f942:	7e 06                	jle    decode_frame_branch_11
    f944:	89 a8 a0 00 00 00    	mov    DWORD PTR [eax+0xa0],ebp
decode_frame_branch_11:
    f94a:	8b 7c 24 24          	mov    edi,DWORD PTR [esp+0x24]
    f94e:	3b be 98 00 00 00    	cmp    edi,DWORD PTR [esi+0x98]
    f954:	7d 06                	jge    decode_frame_branch_12
    f956:	89 be 98 00 00 00    	mov    DWORD PTR [esi+0x98],edi
decode_frame_branch_12:
    f95c:	89 c7                	mov    edi,eax
    f95e:	89 ce                	mov    esi,ecx
    f960:	3b 88 a4 00 00 00    	cmp    ecx,DWORD PTR [eax+0xa4]
    f966:	7e 06                	jle    decode_frame_branch_13
    f968:	89 88 a4 00 00 00    	mov    DWORD PTR [eax+0xa4],ecx
decode_frame_branch_13:
    f96e:	3b b7 9c 00 00 00    	cmp    esi,DWORD PTR [edi+0x9c]
    f974:	7d 06                	jge    decode_frame_branch_14
    f976:	89 b7 9c 00 00 00    	mov    DWORD PTR [edi+0x9c],esi
decode_frame_branch_14:
    f97c:	8d 4c 2b ff          	lea    ecx,[ebx+ebp*1-0x1]
    f980:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
    f984:	89 ce                	mov    esi,ecx
    f986:	3b 88 a0 00 00 00    	cmp    ecx,DWORD PTR [eax+0xa0]
    f98c:	7e 06                	jle    decode_frame_branch_15
    f98e:	89 88 a0 00 00 00    	mov    DWORD PTR [eax+0xa0],ecx
decode_frame_branch_15:
    f994:	3b b0 98 00 00 00    	cmp    esi,DWORD PTR [eax+0x98]
    f99a:	7d 06                	jge    decode_frame_branch_16
    f99c:	89 b0 98 00 00 00    	mov    DWORD PTR [eax+0x98],esi
decode_frame_branch_16:
    f9a2:	8b bc 24 94 00 00 00 	mov    edi,DWORD PTR [esp+0x94]
    f9a9:	01 dd                	add    ebp,ebx
    f9ab:	4f                   	dec    edi
    f9ac:	01 da                	add    edx,ebx
    f9ae:	0f bf c7             	movsx  eax,di
    f9b1:	66 89 bc 24 94 00 00 00 	mov    WORD PTR [esp+0x94],di
    f9b9:	85 c0                	test   eax,eax
    f9bb:	0f 85 30 ff ff ff    	jne    decode_frame_branch_10
    f9c1:	8b 84 24 8c 00 00 00 	mov    eax,DWORD PTR [esp+0x8c]
    f9c8:	8b 74 24 18          	mov    esi,DWORD PTR [esp+0x18]
    f9cc:	48                   	dec    eax
    f9cd:	46                   	inc    esi
    f9ce:	89 84 24 8c 00 00 00 	mov    DWORD PTR [esp+0x8c],eax
    f9d5:	98                   	cwde   
    f9d6:	89 74 24 18          	mov    DWORD PTR [esp+0x18],esi
    f9da:	85 c0                	test   eax,eax
    f9dc:	0f 8f 39 fe ff ff    	jg     decode_frame_branch_4
    f9e2:	e9 a0 04 00 00       	jmp    decode_frame_reference_6
decode_frame_branch_17:
    f9e7:	f7 db                	neg    ebx
    f9e9:	8b 74 24 18          	mov    esi,DWORD PTR [esp+0x18]
    f9ed:	89 d8                	mov    eax,ebx
    f9ef:	89 e9                	mov    ecx,ebp
    f9f1:	d1 f8                	sar    eax,1
    f9f3:	89 6c 24 30          	mov    DWORD PTR [esp+0x30],ebp
    f9f7:	89 44 24 28          	mov    DWORD PTR [esp+0x28],eax
    f9fb:	66 8b 02             	mov    ax,WORD PTR [edx]
    f9fe:	83 c2 02             	add    edx,0x2
    fa01:	66 89 84 24 98 00 00 00 	mov    WORD PTR [esp+0x98],ax
    fa09:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
    fa0d:	89 74 24 2c          	mov    DWORD PTR [esp+0x2c],esi
    fa11:	89 c6                	mov    esi,eax
    fa13:	3b a8 a0 00 00 00    	cmp    ebp,DWORD PTR [eax+0xa0]
    fa19:	7e 06                	jle    decode_frame_branch_18
    fa1b:	89 a8 a0 00 00 00    	mov    DWORD PTR [eax+0xa0],ebp
decode_frame_branch_18:
    fa21:	8b 7c 24 30          	mov    edi,DWORD PTR [esp+0x30]
    fa25:	3b be 98 00 00 00    	cmp    edi,DWORD PTR [esi+0x98]
    fa2b:	7d 06                	jge    decode_frame_branch_19
    fa2d:	89 be 98 00 00 00    	mov    DWORD PTR [esi+0x98],edi
decode_frame_branch_19:
    fa33:	8b 74 24 2c          	mov    esi,DWORD PTR [esp+0x2c]
    fa37:	89 44 24 34          	mov    DWORD PTR [esp+0x34],eax
    fa3b:	3b b0 a4 00 00 00    	cmp    esi,DWORD PTR [eax+0xa4]
    fa41:	7e 06                	jle    decode_frame_branch_20
    fa43:	89 b0 a4 00 00 00    	mov    DWORD PTR [eax+0xa4],esi
decode_frame_branch_20:
    fa49:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
    fa4d:	3b b0 9c 00 00 00    	cmp    esi,DWORD PTR [eax+0x9c]
    fa53:	7d 06                	jge    decode_frame_branch_21
    fa55:	89 b0 9c 00 00 00    	mov    DWORD PTR [eax+0x9c],esi
decode_frame_branch_21:
    fa5b:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
    fa5f:	01 c0                	add    eax,eax
    fa61:	8b 74 24 10          	mov    esi,DWORD PTR [esp+0x10]
    fa65:	01 e8                	add    eax,ebp
    fa67:	8b 7c 24 10          	mov    edi,DWORD PTR [esp+0x10]
    fa6b:	48                   	dec    eax
    fa6c:	89 74 24 38          	mov    DWORD PTR [esp+0x38],esi
    fa70:	89 c6                	mov    esi,eax
    fa72:	3b 87 a0 00 00 00    	cmp    eax,DWORD PTR [edi+0xa0]
    fa78:	7e 06                	jle    decode_frame_branch_22
    fa7a:	89 87 a0 00 00 00    	mov    DWORD PTR [edi+0xa0],eax
decode_frame_branch_22:
    fa80:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
    fa84:	3b b0 98 00 00 00    	cmp    esi,DWORD PTR [eax+0x98]
    fa8a:	7d 06                	jge    decode_frame_branch_23
    fa8c:	89 b0 98 00 00 00    	mov    DWORD PTR [eax+0x98],esi
decode_frame_branch_23:
    fa92:	8b 7c 24 28          	mov    edi,DWORD PTR [esp+0x28]
    fa96:	4f                   	dec    edi
    fa97:	89 7c 24 28          	mov    DWORD PTR [esp+0x28],edi
    fa9b:	85 ff                	test   edi,edi
    fa9d:	7c 3c                	jl     decode_frame_branch_24
    fa9f:	8b 74 24 3c          	mov    esi,DWORD PTR [esp+0x3c]
    faa3:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
    faa7:	0f af 06             	imul   eax,DWORD PTR [esi]
    faaa:	8b 76 08             	mov    esi,DWORD PTR [esi+0x8]
    faad:	01 f0                	add    eax,esi
    faaf:	8d 34 08             	lea    esi,[eax+ecx*1]
    fab2:	8a 84 24 98 00 00 00 	mov    al,BYTE PTR [esp+0x98]
    fab9:	88 06                	mov    BYTE PTR [esi],al
    fabb:	8b 74 24 3c          	mov    esi,DWORD PTR [esp+0x3c]
    fabf:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
    fac3:	0f af 06             	imul   eax,DWORD PTR [esi]
    fac6:	8b 76 08             	mov    esi,DWORD PTR [esi+0x8]
    fac9:	41                   	inc    ecx
    faca:	01 f0                	add    eax,esi
    facc:	8d 34 08             	lea    esi,[eax+ecx*1]
    facf:	8a 84 24 99 00 00 00 	mov    al,BYTE PTR [esp+0x99]
    fad6:	41                   	inc    ecx
    fad7:	88 06                	mov    BYTE PTR [esi],al
    fad9:	eb b7                	jmp    decode_frame_branch_23
decode_frame_branch_24:
    fadb:	01 dd                	add    ebp,ebx
    fadd:	8b 9c 24 94 00 00 00 	mov    ebx,DWORD PTR [esp+0x94]
    fae4:	4b                   	dec    ebx
    fae5:	0f bf c3             	movsx  eax,bx
    fae8:	66 89 9c 24 94 00 00 00 	mov    WORD PTR [esp+0x94],bx
    faf0:	85 c0                	test   eax,eax
    faf2:	0f 85 f9 fd ff ff    	jne    decode_frame_branch_10
    faf8:	8b 5c 24 18          	mov    ebx,DWORD PTR [esp+0x18]
    fafc:	8b 8c 24 8c 00 00 00 	mov    ecx,DWORD PTR [esp+0x8c]
    fb03:	43                   	inc    ebx
    fb04:	49                   	dec    ecx
    fb05:	89 5c 24 18          	mov    DWORD PTR [esp+0x18],ebx
    fb09:	0f bf c1             	movsx  eax,cx
    fb0c:	89 8c 24 8c 00 00 00 	mov    DWORD PTR [esp+0x8c],ecx
    fb13:	85 c0                	test   eax,eax
    fb15:	0f 8f 00 fd ff ff    	jg     decode_frame_branch_4
    fb1b:	e9 67 03 00 00       	jmp    decode_frame_reference_6
decode_frame_reference_3:
    fb20:	80 3d 6c 27 02 00 00 	cmp    BYTE PTR ds:@obj3:palette_enable,0x0                         ; fixup: num: 1840, src obj: 1, src ofs: 0xfb22, dst obj: 3, dst ofs: 0x2276c
    fb27:	0f 84 5a 03 00 00    	je     decode_frame_reference_6
    fb2d:	bd 50 ee 00 00       	mov    ebp,@obj1:screen_put_colors_64                               ; fixup: num: 1839, src obj: 1, src ofs: 0xfb2e, dst obj: 1, dst ofs: 0xee50
    fb32:	66 8b 02             	mov    ax,WORD PTR [edx]
    fb35:	31 ff                	xor    edi,edi
    fb37:	89 6c 24 40          	mov    DWORD PTR [esp+0x40],ebp
    fb3b:	89 84 24 88 00 00 00 	mov    DWORD PTR [esp+0x88],eax
    fb42:	bd 00 01 00 00       	mov    ebp,0x100
decode_frame_branch_25:
    fb47:	8b 94 24 88 00 00 00 	mov    edx,DWORD PTR [esp+0x88]
    fb4e:	4a                   	dec    edx
    fb4f:	0f bf c2             	movsx  eax,dx
    fb52:	89 94 24 88 00 00 00 	mov    DWORD PTR [esp+0x88],edx
    fb59:	85 c0                	test   eax,eax
    fb5b:	0f 8c 26 03 00 00    	jl     decode_frame_reference_6
    fb61:	41                   	inc    ecx
    fb62:	31 c0                	xor    eax,eax
    fb64:	0f b6 31             	movzx  esi,BYTE PTR [ecx]
    fb67:	8a 41 ff             	mov    al,BYTE PTR [ecx-0x1]
    fb6a:	41                   	inc    ecx
    fb6b:	01 c7                	add    edi,eax
    fb6d:	85 f6                	test   esi,esi
    fb6f:	75 02                	jne    decode_frame_branch_26
    fb71:	89 ee                	mov    esi,ebp
decode_frame_branch_26:
    fb73:	89 f3                	mov    ebx,esi
    fb75:	89 ca                	mov    edx,ecx
    fb77:	89 f8                	mov    eax,edi
    fb79:	ff 54 24 40          	call   DWORD PTR [esp+0x40]
    fb7d:	8d 04 76             	lea    eax,[esi+esi*2]
    fb80:	01 c1                	add    ecx,eax
    fb82:	01 f7                	add    edi,esi
    fb84:	eb c1                	jmp    decode_frame_branch_25
decode_frame_reference_4:
    fb86:	8b 1c 24             	mov    ebx,DWORD PTR [esp]
    fb89:	89 5c 24 44          	mov    DWORD PTR [esp+0x44],ebx
    fb8d:	8d 5a 04             	lea    ebx,[edx+0x4]
    fb90:	0f bf 12             	movsx  edx,WORD PTR [edx]
    fb93:	89 44 24 7c          	mov    DWORD PTR [esp+0x7c],eax
    fb97:	89 54 24 4c          	mov    DWORD PTR [esp+0x4c],edx
    fb9b:	66 8b 11             	mov    dx,WORD PTR [ecx]
    fb9e:	89 5c 24 48          	mov    DWORD PTR [esp+0x48],ebx
    fba2:	89 94 24 90 00 00 00 	mov    DWORD PTR [esp+0x90],edx
decode_frame_branch_27:
    fba9:	8b 8c 24 90 00 00 00 	mov    ecx,DWORD PTR [esp+0x90]
    fbb0:	49                   	dec    ecx
    fbb1:	0f bf c1             	movsx  eax,cx
    fbb4:	89 8c 24 90 00 00 00 	mov    DWORD PTR [esp+0x90],ecx
    fbbb:	85 c0                	test   eax,eax
    fbbd:	0f 8c c4 02 00 00    	jl     decode_frame_reference_6
    fbc3:	8b 44 24 48          	mov    eax,DWORD PTR [esp+0x48]
    fbc7:	8b 7c 24 48          	mov    edi,DWORD PTR [esp+0x48]
    fbcb:	31 ed                	xor    ebp,ebp
    fbcd:	8a 00                	mov    al,BYTE PTR [eax]
    fbcf:	47                   	inc    edi
    fbd0:	88 84 24 a0 00 00 00 	mov    BYTE PTR [esp+0xa0],al
    fbd7:	89 7c 24 48          	mov    DWORD PTR [esp+0x48],edi
decode_frame_branch_28:
    fbdb:	31 c0                	xor    eax,eax
    fbdd:	8a 84 24 a0 00 00 00 	mov    al,BYTE PTR [esp+0xa0]
    fbe4:	85 c0                	test   eax,eax
    fbe6:	0f 8e c2 01 00 00    	jle    decode_frame_branch_42
    fbec:	8b 54 24 48          	mov    edx,DWORD PTR [esp+0x48]
    fbf0:	42                   	inc    edx
    fbf1:	31 c0                	xor    eax,eax
    fbf3:	8a 42 ff             	mov    al,BYTE PTR [edx-0x1]
    fbf6:	89 54 24 48          	mov    DWORD PTR [esp+0x48],edx
    fbfa:	01 c5                	add    ebp,eax
    fbfc:	8a 02                	mov    al,BYTE PTR [edx]
    fbfe:	8d 5a 01             	lea    ebx,[edx+0x1]
    fc01:	88 84 24 a4 00 00 00 	mov    BYTE PTR [esp+0xa4],al
    fc08:	0f be c0             	movsx  eax,al
    fc0b:	89 5c 24 48          	mov    DWORD PTR [esp+0x48],ebx
    fc0f:	85 c0                	test   eax,eax
    fc11:	0f 8d c6 00 00 00    	jge    decode_frame_branch_35
    fc17:	f6 9c 24 a4 00 00 00 	neg    BYTE PTR [esp+0xa4]
    fc1e:	89 d8                	mov    eax,ebx
    fc20:	89 c1                	mov    ecx,eax
    fc22:	31 d2                	xor    edx,edx
    fc24:	41                   	inc    ecx
    fc25:	8a 00                	mov    al,BYTE PTR [eax]
    fc27:	89 4c 24 48          	mov    DWORD PTR [esp+0x48],ecx
    fc2b:	8b 4c 24 7c          	mov    ecx,DWORD PTR [esp+0x7c]
    fc2f:	88 c2                	mov    dl,al
    fc31:	8b 44 24 4c          	mov    eax,DWORD PTR [esp+0x4c]
    fc35:	0f af 01             	imul   eax,DWORD PTR [ecx]
    fc38:	8b 49 08             	mov    ecx,DWORD PTR [ecx+0x8]
    fc3b:	01 c8                	add    eax,ecx
    fc3d:	0f be 9c 24 a4 00 00 00 	movsx  ebx,BYTE PTR [esp+0xa4]
    fc45:	01 e8                	add    eax,ebp
    fc47:	e8 84 17 06 00       	call   memset_
    fc4c:	8b 44 24 44          	mov    eax,DWORD PTR [esp+0x44]
    fc50:	8b 54 24 4c          	mov    edx,DWORD PTR [esp+0x4c]
    fc54:	89 eb                	mov    ebx,ebp
    fc56:	8b b8 a0 00 00 00    	mov    edi,DWORD PTR [eax+0xa0]
    fc5c:	89 c1                	mov    ecx,eax
    fc5e:	39 fd                	cmp    ebp,edi
    fc60:	7e 06                	jle    decode_frame_branch_29
    fc62:	89 a8 a0 00 00 00    	mov    DWORD PTR [eax+0xa0],ebp
decode_frame_branch_29:
    fc68:	3b 99 98 00 00 00    	cmp    ebx,DWORD PTR [ecx+0x98]
    fc6e:	7d 06                	jge    decode_frame_branch_30
    fc70:	89 99 98 00 00 00    	mov    DWORD PTR [ecx+0x98],ebx
decode_frame_branch_30:
    fc76:	89 c1                	mov    ecx,eax
    fc78:	8b b8 a4 00 00 00    	mov    edi,DWORD PTR [eax+0xa4]
    fc7e:	89 d3                	mov    ebx,edx
    fc80:	39 fa                	cmp    edx,edi
    fc82:	7e 06                	jle    decode_frame_branch_31
    fc84:	89 90 a4 00 00 00    	mov    DWORD PTR [eax+0xa4],edx
decode_frame_branch_31:
    fc8a:	3b 99 9c 00 00 00    	cmp    ebx,DWORD PTR [ecx+0x9c]
    fc90:	7d 06                	jge    decode_frame_branch_32
    fc92:	89 99 9c 00 00 00    	mov    DWORD PTR [ecx+0x9c],ebx
decode_frame_branch_32:
    fc98:	0f be 84 24 a4 00 00 00 	movsx  eax,BYTE PTR [esp+0xa4]
    fca0:	01 e8                	add    eax,ebp
    fca2:	8b 54 24 44          	mov    edx,DWORD PTR [esp+0x44]
    fca6:	48                   	dec    eax
    fca7:	8b b2 a0 00 00 00    	mov    esi,DWORD PTR [edx+0xa0]
    fcad:	89 c3                	mov    ebx,eax
    fcaf:	39 f0                	cmp    eax,esi
    fcb1:	7e 06                	jle    decode_frame_branch_33
    fcb3:	89 82 a0 00 00 00    	mov    DWORD PTR [edx+0xa0],eax
decode_frame_branch_33:
    fcb9:	3b 9a 98 00 00 00    	cmp    ebx,DWORD PTR [edx+0x98]
    fcbf:	7d 06                	jge    decode_frame_branch_34
    fcc1:	89 9a 98 00 00 00    	mov    DWORD PTR [edx+0x98],ebx
decode_frame_branch_34:
    fcc7:	0f be 84 24 a4 00 00 00 	movsx  eax,BYTE PTR [esp+0xa4]
    fccf:	01 c5                	add    ebp,eax
    fcd1:	fe 8c 24 a0 00 00 00 	dec    BYTE PTR [esp+0xa0]
    fcd8:	e9 fe fe ff ff       	jmp    decode_frame_branch_28
decode_frame_branch_35:
    fcdd:	8b 54 24 7c          	mov    edx,DWORD PTR [esp+0x7c]
    fce1:	8b 44 24 4c          	mov    eax,DWORD PTR [esp+0x4c]
    fce5:	0f af 02             	imul   eax,DWORD PTR [edx]
    fce8:	8b 52 08             	mov    edx,DWORD PTR [edx+0x8]
    fceb:	0f be 8c 24 a4 00 00 00 	movsx  ecx,BYTE PTR [esp+0xa4]
    fcf3:	01 d0                	add    eax,edx
    fcf5:	89 de                	mov    esi,ebx
    fcf7:	8d 3c 28             	lea    edi,[eax+ebp*1]
    fcfa:	8b 54 24 44          	mov    edx,DWORD PTR [esp+0x44]
    fcfe:	57                   	push   edi
    fcff:	89 c8                	mov    eax,ecx
    fd01:	c1 e9 02             	shr    ecx,0x2
    fd04:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
    fd06:	8a c8                	mov    cl,al
    fd08:	80 e1 03             	and    cl,0x3
    fd0b:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
    fd0d:	5f                   	pop    edi
    fd0e:	89 eb                	mov    ebx,ebp
    fd10:	8b 44 24 4c          	mov    eax,DWORD PTR [esp+0x4c]
    fd14:	8b ba a0 00 00 00    	mov    edi,DWORD PTR [edx+0xa0]
    fd1a:	89 d1                	mov    ecx,edx
    fd1c:	39 fd                	cmp    ebp,edi
    fd1e:	7e 06                	jle    decode_frame_branch_36
    fd20:	89 aa a0 00 00 00    	mov    DWORD PTR [edx+0xa0],ebp
decode_frame_branch_36:
    fd26:	3b 99 98 00 00 00    	cmp    ebx,DWORD PTR [ecx+0x98]
    fd2c:	7d 06                	jge    decode_frame_branch_37
    fd2e:	89 99 98 00 00 00    	mov    DWORD PTR [ecx+0x98],ebx
decode_frame_branch_37:
    fd34:	89 d3                	mov    ebx,edx
    fd36:	8b ba a4 00 00 00    	mov    edi,DWORD PTR [edx+0xa4]
    fd3c:	89 c1                	mov    ecx,eax
    fd3e:	39 f8                	cmp    eax,edi
    fd40:	7e 06                	jle    decode_frame_branch_38
    fd42:	89 82 a4 00 00 00    	mov    DWORD PTR [edx+0xa4],eax
decode_frame_branch_38:
    fd48:	3b 8b 9c 00 00 00    	cmp    ecx,DWORD PTR [ebx+0x9c]
    fd4e:	7d 06                	jge    decode_frame_branch_39
    fd50:	89 8b 9c 00 00 00    	mov    DWORD PTR [ebx+0x9c],ecx
decode_frame_branch_39:
    fd56:	0f be 84 24 a4 00 00 00 	movsx  eax,BYTE PTR [esp+0xa4]
    fd5e:	01 e8                	add    eax,ebp
    fd60:	8b 5c 24 44          	mov    ebx,DWORD PTR [esp+0x44]
    fd64:	48                   	dec    eax
    fd65:	8b b3 a0 00 00 00    	mov    esi,DWORD PTR [ebx+0xa0]
    fd6b:	89 c2                	mov    edx,eax
    fd6d:	39 f0                	cmp    eax,esi
    fd6f:	7e 06                	jle    decode_frame_branch_40
    fd71:	89 83 a0 00 00 00    	mov    DWORD PTR [ebx+0xa0],eax
decode_frame_branch_40:
    fd77:	3b 93 98 00 00 00    	cmp    edx,DWORD PTR [ebx+0x98]
    fd7d:	7d 06                	jge    decode_frame_branch_41
    fd7f:	89 93 98 00 00 00    	mov    DWORD PTR [ebx+0x98],edx
decode_frame_branch_41:
    fd85:	0f be 84 24 a4 00 00 00 	movsx  eax,BYTE PTR [esp+0xa4]
    fd8d:	8a ac 24 a0 00 00 00 	mov    ch,BYTE PTR [esp+0xa0]
    fd94:	8b 54 24 48          	mov    edx,DWORD PTR [esp+0x48]
    fd98:	fe cd                	dec    ch
    fd9a:	01 c2                	add    edx,eax
    fd9c:	01 c5                	add    ebp,eax
    fd9e:	89 54 24 48          	mov    DWORD PTR [esp+0x48],edx
    fda2:	88 ac 24 a0 00 00 00 	mov    BYTE PTR [esp+0xa0],ch
    fda9:	e9 2d fe ff ff       	jmp    decode_frame_branch_28
decode_frame_branch_42:
    fdae:	ff 44 24 4c          	inc    DWORD PTR [esp+0x4c]
    fdb2:	e9 f2 fd ff ff       	jmp    decode_frame_branch_27
decode_frame_reference_5:
    fdb7:	8b 84 24 80 00 00 00 	mov    eax,DWORD PTR [esp+0x80]
    fdbe:	8b 9c 24 80 00 00 00 	mov    ebx,DWORD PTR [esp+0x80]
    fdc5:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
    fdc8:	8b 3b                	mov    edi,DWORD PTR [ebx]
    fdca:	89 c3                	mov    ebx,eax
    fdcc:	0f af df             	imul   ebx,edi
    fdcf:	31 d2                	xor    edx,edx
    fdd1:	8b 84 24 80 00 00 00 	mov    eax,DWORD PTR [esp+0x80]
    fdd8:	81 e2 ff 00 00 00    	and    edx,0xff
    fdde:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
    fde1:	e8 ea 15 06 00       	call   memset_
    fde6:	8b 04 24             	mov    eax,DWORD PTR [esp]
    fde9:	31 c9                	xor    ecx,ecx
    fdeb:	31 d2                	xor    edx,edx
    fded:	8b a8 a0 00 00 00    	mov    ebp,DWORD PTR [eax+0xa0]
    fdf3:	89 c6                	mov    esi,eax
    fdf5:	85 ed                	test   ebp,ebp
    fdf7:	7d 06                	jge    decode_frame_branch_43
    fdf9:	89 90 a0 00 00 00    	mov    DWORD PTR [eax+0xa0],edx
decode_frame_branch_43:
    fdff:	3b 8e 98 00 00 00    	cmp    ecx,DWORD PTR [esi+0x98]
    fe05:	7d 06                	jge    decode_frame_branch_44
    fe07:	89 8e 98 00 00 00    	mov    DWORD PTR [esi+0x98],ecx
decode_frame_branch_44:
    fe0d:	89 c1                	mov    ecx,eax
    fe0f:	8b b0 a4 00 00 00    	mov    esi,DWORD PTR [eax+0xa4]
    fe15:	89 d3                	mov    ebx,edx
    fe17:	39 f2                	cmp    edx,esi
    fe19:	7e 06                	jle    decode_frame_branch_45
    fe1b:	89 90 a4 00 00 00    	mov    DWORD PTR [eax+0xa4],edx
decode_frame_branch_45:
    fe21:	3b 99 9c 00 00 00    	cmp    ebx,DWORD PTR [ecx+0x9c]
    fe27:	7d 06                	jge    decode_frame_branch_46
    fe29:	89 99 9c 00 00 00    	mov    DWORD PTR [ecx+0x9c],ebx
decode_frame_branch_46:
    fe2f:	8b 14 24             	mov    edx,DWORD PTR [esp]
    fe32:	8b 04 24             	mov    eax,DWORD PTR [esp]
    fe35:	89 d7                	mov    edi,edx
    fe37:	8b 80 ac 00 00 00    	mov    eax,DWORD PTR [eax+0xac]
    fe3d:	8b 9a a8 00 00 00    	mov    ebx,DWORD PTR [edx+0xa8]
    fe43:	8b aa a0 00 00 00    	mov    ebp,DWORD PTR [edx+0xa0]
    fe49:	4b                   	dec    ebx
    fe4a:	48                   	dec    eax
    fe4b:	89 de                	mov    esi,ebx
    fe4d:	39 eb                	cmp    ebx,ebp
    fe4f:	7e 06                	jle    decode_frame_branch_47
    fe51:	89 9a a0 00 00 00    	mov    DWORD PTR [edx+0xa0],ebx
decode_frame_branch_47:
    fe57:	3b b7 98 00 00 00    	cmp    esi,DWORD PTR [edi+0x98]
    fe5d:	7d 06                	jge    decode_frame_branch_48
    fe5f:	89 b7 98 00 00 00    	mov    DWORD PTR [edi+0x98],esi
decode_frame_branch_48:
    fe65:	89 d1                	mov    ecx,edx
    fe67:	8b b2 a4 00 00 00    	mov    esi,DWORD PTR [edx+0xa4]
    fe6d:	89 c3                	mov    ebx,eax
    fe6f:	39 f0                	cmp    eax,esi
    fe71:	7e 06                	jle    decode_frame_branch_49
    fe73:	89 82 a4 00 00 00    	mov    DWORD PTR [edx+0xa4],eax
decode_frame_branch_49:
    fe79:	3b 99 9c 00 00 00    	cmp    ebx,DWORD PTR [ecx+0x9c]
    fe7f:	7d 06                	jge    decode_frame_reference_6
    fe81:	89 99 9c 00 00 00    	mov    DWORD PTR [ecx+0x9c],ebx
decode_frame_reference_6:
    fe87:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
    fe8b:	8b 6c 24 04          	mov    ebp,DWORD PTR [esp+0x4]
    fe8f:	03 28                	add    ebp,DWORD PTR [eax]
    fe91:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
    fe95:	40                   	inc    eax
    fe96:	89 6c 24 04          	mov    DWORD PTR [esp+0x4],ebp
    fe9a:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
decode_frame_branch_50:
    fe9e:	8b 84 24 84 00 00 00 	mov    eax,DWORD PTR [esp+0x84]
    fea5:	8b 5c 24 08          	mov    ebx,DWORD PTR [esp+0x8]
    fea9:	0f bf 40 06          	movsx  eax,WORD PTR [eax+0x6]
    fead:	39 d8                	cmp    eax,ebx
    feaf:	0f 8e 31 03 00 00    	jle    decode_frame_branch_73
    feb5:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
    feb9:	66 8b 40 04          	mov    ax,WORD PTR [eax+0x4]
    febd:	83 e8 04             	sub    eax,0x4
    fec0:	66 3d 0c 00          	cmp    ax,0xc
    fec4:	77 c1                	ja     decode_frame_reference_6
    fec6:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
    feca:	31 db                	xor    ebx,ebx
    fecc:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
    fed0:	66 89 c3             	mov    bx,ax
    fed3:	83 c2 06             	add    edx,0x6
    fed6:	8b 04 24             	mov    eax,DWORD PTR [esp]
    fed9:	83 c1 08             	add    ecx,0x8
    fedc:	05 a8 00 00 00       	add    eax,0xa8
    fee1:	2e ff 24 9d 14 f7 00 00 	jmp    DWORD PTR cs:[ebx*4+@obj1:decode_literal_reference_1]     ; fixup: num: 1841, src obj: 1, src ofs: 0xfee5, dst obj: 1, dst ofs: 0xf714
decode_frame_reference_7:
    fee9:	8b 2c 24             	mov    ebp,DWORD PTR [esp]
    feec:	89 54 24 5c          	mov    DWORD PTR [esp+0x5c],edx
    fef0:	31 f6                	xor    esi,esi
    fef2:	89 44 24 78          	mov    DWORD PTR [esp+0x78],eax
    fef6:	89 74 24 54          	mov    DWORD PTR [esp+0x54],esi
    fefa:	8b 8d ac 00 00 00    	mov    ecx,DWORD PTR [ebp+0xac]
    ff00:	8b 9d a8 00 00 00    	mov    ebx,DWORD PTR [ebp+0xa8]
    ff06:	89 4c 24 58          	mov    DWORD PTR [esp+0x58],ecx
    ff0a:	89 5c 24 60          	mov    DWORD PTR [esp+0x60],ebx
decode_frame_branch_51:
    ff0e:	8b 7c 24 58          	mov    edi,DWORD PTR [esp+0x58]
    ff12:	4f                   	dec    edi
    ff13:	89 7c 24 58          	mov    DWORD PTR [esp+0x58],edi
    ff17:	85 ff                	test   edi,edi
    ff19:	0f 8c 68 ff ff ff    	jl     decode_frame_reference_6
    ff1f:	30 ff                	xor    bh,bh
    ff21:	88 bc 24 a8 00 00 00 	mov    BYTE PTR [esp+0xa8],bh
    ff28:	8b 5c 24 5c          	mov    ebx,DWORD PTR [esp+0x5c]
    ff2c:	31 d2                	xor    edx,edx
    ff2e:	43                   	inc    ebx
    ff2f:	89 54 24 50          	mov    DWORD PTR [esp+0x50],edx
    ff33:	89 5c 24 5c          	mov    DWORD PTR [esp+0x5c],ebx
decode_frame_branch_52:
    ff37:	0f be 84 24 a8 00 00 00 	movsx  eax,BYTE PTR [esp+0xa8]
    ff3f:	8b 4c 24 50          	mov    ecx,DWORD PTR [esp+0x50]
    ff43:	01 c1                	add    ecx,eax
    ff45:	8b 74 24 60          	mov    esi,DWORD PTR [esp+0x60]
    ff49:	89 4c 24 50          	mov    DWORD PTR [esp+0x50],ecx
    ff4d:	39 f1                	cmp    ecx,esi
    ff4f:	0f 8d 9e 01 00 00    	jge    decode_frame_branch_65
    ff55:	8b 44 24 5c          	mov    eax,DWORD PTR [esp+0x5c]
    ff59:	8b 54 24 5c          	mov    edx,DWORD PTR [esp+0x5c]
    ff5d:	8a 00                	mov    al,BYTE PTR [eax]
    ff5f:	42                   	inc    edx
    ff60:	88 84 24 a8 00 00 00 	mov    BYTE PTR [esp+0xa8],al
    ff67:	0f be c0             	movsx  eax,al
    ff6a:	89 54 24 5c          	mov    DWORD PTR [esp+0x5c],edx
    ff6e:	85 c0                	test   eax,eax
    ff70:	0f 8c b4 00 00 00    	jl     decode_frame_branch_58
    ff76:	89 d0                	mov    eax,edx
    ff78:	42                   	inc    edx
    ff79:	8a 00                	mov    al,BYTE PTR [eax]
    ff7b:	89 54 24 5c          	mov    DWORD PTR [esp+0x5c],edx
    ff7f:	31 d2                	xor    edx,edx
    ff81:	88 c2                	mov    dl,al
    ff83:	8b 44 24 78          	mov    eax,DWORD PTR [esp+0x78]
    ff87:	8b 4c 24 54          	mov    ecx,DWORD PTR [esp+0x54]
    ff8b:	0f af 08             	imul   ecx,DWORD PTR [eax]
    ff8e:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
    ff91:	8b 7c 24 50          	mov    edi,DWORD PTR [esp+0x50]
    ff95:	01 c8                	add    eax,ecx
    ff97:	0f be 9c 24 a8 00 00 00 	movsx  ebx,BYTE PTR [esp+0xa8]
    ff9f:	01 f8                	add    eax,edi
    ffa1:	e8 2a 14 06 00       	call   memset_
    ffa6:	89 f9                	mov    ecx,edi
    ffa8:	8b 54 24 54          	mov    edx,DWORD PTR [esp+0x54]
    ffac:	89 e8                	mov    eax,ebp
    ffae:	8b bd a0 00 00 00    	mov    edi,DWORD PTR [ebp+0xa0]
    ffb4:	89 eb                	mov    ebx,ebp
    ffb6:	39 f9                	cmp    ecx,edi
    ffb8:	7e 08                	jle    decode_frame_branch_53
    ffba:	89 ce                	mov    esi,ecx
    ffbc:	89 b5 a0 00 00 00    	mov    DWORD PTR [ebp+0xa0],esi
decode_frame_branch_53:
    ffc2:	3b 8b 98 00 00 00    	cmp    ecx,DWORD PTR [ebx+0x98]
    ffc8:	7d 06                	jge    decode_frame_branch_54
    ffca:	89 8b 98 00 00 00    	mov    DWORD PTR [ebx+0x98],ecx
decode_frame_branch_54:
    ffd0:	89 c1                	mov    ecx,eax
    ffd2:	8b b8 a4 00 00 00    	mov    edi,DWORD PTR [eax+0xa4]
    ffd8:	89 d3                	mov    ebx,edx
    ffda:	39 fa                	cmp    edx,edi
    ffdc:	7e 06                	jle    decode_frame_branch_55
    ffde:	89 90 a4 00 00 00    	mov    DWORD PTR [eax+0xa4],edx
decode_frame_branch_55:
    ffe4:	3b 99 9c 00 00 00    	cmp    ebx,DWORD PTR [ecx+0x9c]
    ffea:	7d 06                	jge    decode_frame_branch_56
    ffec:	89 99 9c 00 00 00    	mov    DWORD PTR [ecx+0x9c],ebx
decode_frame_branch_56:
    fff2:	0f be 84 24 a8 00 00 00 	movsx  eax,BYTE PTR [esp+0xa8]
    fffa:	03 44 24 50          	add    eax,DWORD PTR [esp+0x50]
    fffe:	8b 8d a0 00 00 00    	mov    ecx,DWORD PTR [ebp+0xa0]
   10004:	48                   	dec    eax
   10005:	89 ea                	mov    edx,ebp
   10007:	89 c3                	mov    ebx,eax
   10009:	39 c8                	cmp    eax,ecx
   1000b:	7e 06                	jle    decode_frame_branch_57
   1000d:	89 85 a0 00 00 00    	mov    DWORD PTR [ebp+0xa0],eax
decode_frame_branch_57:
   10013:	3b 9a 98 00 00 00    	cmp    ebx,DWORD PTR [edx+0x98]
   10019:	0f 8d 18 ff ff ff    	jge    decode_frame_branch_52
   1001f:	89 9a 98 00 00 00    	mov    DWORD PTR [edx+0x98],ebx
   10025:	e9 0d ff ff ff       	jmp    decode_frame_branch_52
decode_frame_branch_58:
   1002a:	8b 44 24 78          	mov    eax,DWORD PTR [esp+0x78]
   1002e:	8b 54 24 54          	mov    edx,DWORD PTR [esp+0x54]
   10032:	0f af 10             	imul   edx,DWORD PTR [eax]
   10035:	8a 8c 24 a8 00 00 00 	mov    cl,BYTE PTR [esp+0xa8]
   1003c:	8b 7c 24 50          	mov    edi,DWORD PTR [esp+0x50]
   10040:	8b 74 24 5c          	mov    esi,DWORD PTR [esp+0x5c]
   10044:	f6 d9                	neg    cl
   10046:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
   10049:	88 8c 24 a8 00 00 00 	mov    BYTE PTR [esp+0xa8],cl
   10050:	01 d0                	add    eax,edx
   10052:	0f be c9             	movsx  ecx,cl
   10055:	01 c7                	add    edi,eax
   10057:	8b 5c 24 50          	mov    ebx,DWORD PTR [esp+0x50]
   1005b:	57                   	push   edi
   1005c:	89 c8                	mov    eax,ecx
   1005e:	c1 e9 02             	shr    ecx,0x2
   10061:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
   10063:	8a c8                	mov    cl,al
   10065:	80 e1 03             	and    cl,0x3
   10068:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
   1006a:	5f                   	pop    edi
   1006b:	89 ea                	mov    edx,ebp
   1006d:	8b 44 24 54          	mov    eax,DWORD PTR [esp+0x54]
   10071:	8b bd a0 00 00 00    	mov    edi,DWORD PTR [ebp+0xa0]
   10077:	89 e9                	mov    ecx,ebp
   10079:	39 fb                	cmp    ebx,edi
   1007b:	7e 06                	jle    decode_frame_branch_59
   1007d:	89 9d a0 00 00 00    	mov    DWORD PTR [ebp+0xa0],ebx
decode_frame_branch_59:
   10083:	3b 99 98 00 00 00    	cmp    ebx,DWORD PTR [ecx+0x98]
   10089:	7d 06                	jge    decode_frame_branch_60
   1008b:	89 99 98 00 00 00    	mov    DWORD PTR [ecx+0x98],ebx
decode_frame_branch_60:
   10091:	89 d1                	mov    ecx,edx
   10093:	8b ba a4 00 00 00    	mov    edi,DWORD PTR [edx+0xa4]
   10099:	89 c3                	mov    ebx,eax
   1009b:	39 f8                	cmp    eax,edi
   1009d:	7e 06                	jle    decode_frame_branch_61
   1009f:	89 82 a4 00 00 00    	mov    DWORD PTR [edx+0xa4],eax
decode_frame_branch_61:
   100a5:	3b 99 9c 00 00 00    	cmp    ebx,DWORD PTR [ecx+0x9c]
   100ab:	7d 06                	jge    decode_frame_branch_62
   100ad:	89 99 9c 00 00 00    	mov    DWORD PTR [ecx+0x9c],ebx
decode_frame_branch_62:
   100b3:	0f be 84 24 a8 00 00 00 	movsx  eax,BYTE PTR [esp+0xa8]
   100bb:	03 44 24 50          	add    eax,DWORD PTR [esp+0x50]
   100bf:	89 eb                	mov    ebx,ebp
   100c1:	48                   	dec    eax
   100c2:	8b 8d a0 00 00 00    	mov    ecx,DWORD PTR [ebp+0xa0]
   100c8:	89 c2                	mov    edx,eax
   100ca:	39 c8                	cmp    eax,ecx
   100cc:	7e 06                	jle    decode_frame_branch_63
   100ce:	89 85 a0 00 00 00    	mov    DWORD PTR [ebp+0xa0],eax
decode_frame_branch_63:
   100d4:	3b 93 98 00 00 00    	cmp    edx,DWORD PTR [ebx+0x98]
   100da:	7d 06                	jge    decode_frame_branch_64
   100dc:	89 93 98 00 00 00    	mov    DWORD PTR [ebx+0x98],edx
decode_frame_branch_64:
   100e2:	0f be 84 24 a8 00 00 00 	movsx  eax,BYTE PTR [esp+0xa8]
   100ea:	01 44 24 5c          	add    DWORD PTR [esp+0x5c],eax
   100ee:	e9 44 fe ff ff       	jmp    decode_frame_branch_52
decode_frame_branch_65:
   100f3:	ff 44 24 54          	inc    DWORD PTR [esp+0x54]
   100f7:	e9 12 fe ff ff       	jmp    decode_frame_branch_51
decode_frame_reference_8:
   100fc:	89 d5                	mov    ebp,edx
   100fe:	8b 14 24             	mov    edx,DWORD PTR [esp]
   10101:	8b 9a ac 00 00 00    	mov    ebx,DWORD PTR [edx+0xac]
   10107:	89 5c 24 64          	mov    DWORD PTR [esp+0x64],ebx
   1010b:	8b 9a a8 00 00 00    	mov    ebx,DWORD PTR [edx+0xa8]
   10111:	8b 4c 24 64          	mov    ecx,DWORD PTR [esp+0x64]
   10115:	89 5c 24 68          	mov    DWORD PTR [esp+0x68],ebx
   10119:	31 db                	xor    ebx,ebx
   1011b:	85 c9                	test   ecx,ecx
   1011d:	0f 8e 64 fd ff ff    	jle    decode_frame_reference_6
   10123:	8b 4c 24 68          	mov    ecx,DWORD PTR [esp+0x68]
   10127:	49                   	dec    ecx
   10128:	89 44 24 6c          	mov    DWORD PTR [esp+0x6c],eax
   1012c:	89 4c 24 74          	mov    DWORD PTR [esp+0x74],ecx
decode_frame_branch_66:
   10130:	8b 44 24 6c          	mov    eax,DWORD PTR [esp+0x6c]
   10134:	8b 00                	mov    eax,DWORD PTR [eax]
   10136:	0f af c3             	imul   eax,ebx
   10139:	8b 7c 24 6c          	mov    edi,DWORD PTR [esp+0x6c]
   1013d:	8b 4c 24 68          	mov    ecx,DWORD PTR [esp+0x68]
   10141:	8b 7f 08             	mov    edi,DWORD PTR [edi+0x8]
   10144:	89 ee                	mov    esi,ebp
   10146:	01 c7                	add    edi,eax
   10148:	57                   	push   edi
   10149:	89 c8                	mov    eax,ecx
   1014b:	c1 e9 02             	shr    ecx,0x2
   1014e:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
   10150:	8a c8                	mov    cl,al
   10152:	80 e1 03             	and    cl,0x3
   10155:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
   10157:	5f                   	pop    edi
   10158:	89 d0                	mov    eax,edx
   1015a:	31 ff                	xor    edi,edi
   1015c:	89 d9                	mov    ecx,ebx
   1015e:	89 7c 24 70          	mov    DWORD PTR [esp+0x70],edi
   10162:	8b ba a0 00 00 00    	mov    edi,DWORD PTR [edx+0xa0]
   10168:	89 d6                	mov    esi,edx
   1016a:	85 ff                	test   edi,edi
   1016c:	7d 0a                	jge    decode_frame_branch_67
   1016e:	c7 82 a0 00 00 00 00 00 00 00 	mov    DWORD PTR [edx+0xa0],0x0
decode_frame_branch_67:
   10178:	8b 7c 24 70          	mov    edi,DWORD PTR [esp+0x70]
   1017c:	3b be 98 00 00 00    	cmp    edi,DWORD PTR [esi+0x98]
   10182:	7d 06                	jge    decode_frame_branch_68
   10184:	89 be 98 00 00 00    	mov    DWORD PTR [esi+0x98],edi
decode_frame_branch_68:
   1018a:	89 c7                	mov    edi,eax
   1018c:	89 ce                	mov    esi,ecx
   1018e:	3b 88 a4 00 00 00    	cmp    ecx,DWORD PTR [eax+0xa4]
   10194:	7e 06                	jle    decode_frame_branch_69
   10196:	89 88 a4 00 00 00    	mov    DWORD PTR [eax+0xa4],ecx
decode_frame_branch_69:
   1019c:	3b b7 9c 00 00 00    	cmp    esi,DWORD PTR [edi+0x9c]
   101a2:	7d 06                	jge    decode_frame_branch_70
   101a4:	89 b7 9c 00 00 00    	mov    DWORD PTR [edi+0x9c],esi
decode_frame_branch_70:
   101aa:	8b 44 24 74          	mov    eax,DWORD PTR [esp+0x74]
   101ae:	8b ba a0 00 00 00    	mov    edi,DWORD PTR [edx+0xa0]
   101b4:	89 d1                	mov    ecx,edx
   101b6:	39 f8                	cmp    eax,edi
   101b8:	7e 06                	jle    decode_frame_branch_71
   101ba:	89 82 a0 00 00 00    	mov    DWORD PTR [edx+0xa0],eax
decode_frame_branch_71:
   101c0:	3b 81 98 00 00 00    	cmp    eax,DWORD PTR [ecx+0x98]
   101c6:	7d 06                	jge    decode_frame_branch_72
   101c8:	89 81 98 00 00 00    	mov    DWORD PTR [ecx+0x98],eax
decode_frame_branch_72:
   101ce:	8b 4c 24 68          	mov    ecx,DWORD PTR [esp+0x68]
   101d2:	8b 74 24 64          	mov    esi,DWORD PTR [esp+0x64]
   101d6:	43                   	inc    ebx
   101d7:	01 cd                	add    ebp,ecx
   101d9:	39 f3                	cmp    ebx,esi
   101db:	0f 8d a6 fc ff ff    	jge    decode_frame_reference_6
   101e1:	e9 4a ff ff ff       	jmp    decode_frame_branch_66
decode_frame_branch_73:
   101e6:	b8 01 00 00 00       	mov    eax,0x1
   101eb:	81 c4 ac 00 00 00    	add    esp,0xac
   101f1:	5d                   	pop    ebp
   101f2:	5f                   	pop    edi
   101f3:	5e                   	pop    esi
   101f4:	59                   	pop    ecx
   101f5:	c3                   	ret    
   101f6:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   101fc:	8d 54 22 00          	lea    edx,[edx+eiz*1+0x0]

;-------------------------------------------------
;  Function 'load_from_file_mod_11'              -
;-------------------------------------------------
load_from_file_mod_11:
   10200:	51                   	push   ecx
   10201:	56                   	push   esi
   10202:	57                   	push   edi
   10203:	55                   	push   ebp
   10204:	83 ec 0c             	sub    esp,0xc
   10207:	89 c6                	mov    esi,eax
   10209:	88 5c 24 08          	mov    BYTE PTR [esp+0x8],bl
   1020d:	89 d0                	mov    eax,edx
   1020f:	b9 6b 01 00 00       	mov    ecx,0x16b
   10214:	bb 1c 12 00 00       	mov    ebx,@obj3:flic_cpp_variable_1                                ; fixup: num: 1843, src obj: 1, src ofs: 0x10215, dst obj: 3, dst ofs: 0x121c
   10219:	31 d2                	xor    edx,edx
   1021b:	e8 c0 cb ff ff       	call   XFILE_read2
   10220:	89 c1                	mov    ecx,eax
   10222:	85 c0                	test   eax,eax
   10224:	75 0f                	jne    load_from_file_mod_11_branch_1
   10226:	bb 25 12 00 00       	mov    ebx,@obj3:flic_cpp_variable_2                                ; fixup: num: 1842, src obj: 1, src ofs: 0x10227, dst obj: 3, dst ofs: 0x1225
   1022b:	ba 6b 01 00 00       	mov    edx,0x16b
   10230:	e8 fb 7d 02 00       	call   _error_report
load_from_file_mod_11_branch_1:
   10235:	8a 44 24 08          	mov    al,BYTE PTR [esp+0x8]
   10239:	89 f5                	mov    ebp,esi
   1023b:	89 ca                	mov    edx,ecx
   1023d:	8b 9e 80 00 00 00    	mov    ebx,DWORD PTR [esi+0x80]
   10243:	88 44 24 04          	mov    BYTE PTR [esp+0x4],al
   10247:	85 db                	test   ebx,ebx
   10249:	74 07                	je     load_from_file_mod_11_branch_2
   1024b:	89 d8                	mov    eax,ebx
   1024d:	e8 96 11 06 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
load_from_file_mod_11_branch_2:
   10252:	b9 80 00 00 00       	mov    ecx,0x80
   10257:	89 d6                	mov    esi,edx
   10259:	89 ef                	mov    edi,ebp
   1025b:	89 95 80 00 00 00    	mov    DWORD PTR [ebp+0x80],edx
   10261:	57                   	push   edi
   10262:	89 c8                	mov    eax,ecx
   10264:	c1 e9 02             	shr    ecx,0x2
   10267:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
   10269:	8a c8                	mov    cl,al
   1026b:	80 e1 03             	and    cl,0x3
   1026e:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
   10270:	5f                   	pop    edi
   10271:	c7 85 88 00 00 00 00 00 00 00 	mov    DWORD PTR [ebp+0x88],0x0
   1027b:	31 c0                	xor    eax,eax
   1027d:	66 8b 45 06          	mov    ax,WORD PTR [ebp+0x6]
   10281:	89 85 8c 00 00 00    	mov    DWORD PTR [ebp+0x8c],eax
   10287:	31 c0                	xor    eax,eax
   10289:	66 8b 45 04          	mov    ax,WORD PTR [ebp+0x4]
   1028d:	c7 85 90 00 00 00 00 00 00 00 	mov    DWORD PTR [ebp+0x90],0x0
   10297:	3d 11 af 00 00       	cmp    eax,0xaf11
   1029c:	75 30                	jne    load_from_file_mod_11_branch_3
   1029e:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
   102a1:	89 c2                	mov    edx,eax
   102a3:	c1 e2 05             	shl    edx,0x5
   102a6:	29 c2                	sub    edx,eax
   102a8:	8d 14 95 00 00 00 00 	lea    edx,[edx*4+0x0]
   102af:	01 c2                	add    edx,eax
   102b1:	8d 14 d5 00 00 00 00 	lea    edx,[edx*8+0x0]
   102b8:	bb 46 00 00 00       	mov    ebx,0x46
   102bd:	89 d0                	mov    eax,edx
   102bf:	c1 fa 1f             	sar    edx,0x1f
   102c2:	f7 fb                	idiv   ebx
   102c4:	c7 45 50 80 00 00 00 	mov    DWORD PTR [ebp+0x50],0x80
   102cb:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
load_from_file_mod_11_branch_3:
   102ce:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
   102d1:	bb 0a 00 00 00       	mov    ebx,0xa
   102d6:	89 d0                	mov    eax,edx
   102d8:	c1 fa 1f             	sar    edx,0x1f
   102db:	f7 fb                	idiv   ebx
   102dd:	8d b5 a8 00 00 00    	lea    esi,[ebp+0xa8]
   102e3:	89 85 94 00 00 00    	mov    DWORD PTR [ebp+0x94],eax
   102e9:	31 db                	xor    ebx,ebx
   102eb:	8b 95 80 00 00 00    	mov    edx,DWORD PTR [ebp+0x80]
   102f1:	66 8b 5d 08          	mov    bx,WORD PTR [ebp+0x8]
   102f5:	8b 45 50             	mov    eax,DWORD PTR [ebp+0x50]
   102f8:	89 1c 24             	mov    DWORD PTR [esp],ebx
   102fb:	01 c2                	add    edx,eax
   102fd:	31 c0                	xor    eax,eax
   102ff:	89 95 84 00 00 00    	mov    DWORD PTR [ebp+0x84],edx
   10305:	89 f2                	mov    edx,esi
   10307:	66 8b 45 0a          	mov    ax,WORD PTR [ebp+0xa]
   1030b:	8b 3e                	mov    edi,DWORD PTR [esi]
   1030d:	89 c1                	mov    ecx,eax
   1030f:	39 fb                	cmp    ebx,edi
   10311:	75 09                	jne    load_from_file_mod_11_branch_4
   10313:	3b 46 04             	cmp    eax,DWORD PTR [esi+0x4]
   10316:	0f 84 7a 00 00 00    	je     load_from_file_mod_11_branch_7
load_from_file_mod_11_branch_4:
   1031c:	8b 04 24             	mov    eax,DWORD PTR [esp]
   1031f:	89 4a 04             	mov    DWORD PTR [edx+0x4],ecx
   10322:	89 02                	mov    DWORD PTR [edx],eax
   10324:	8b 0a                	mov    ecx,DWORD PTR [edx]
   10326:	85 c9                	test   ecx,ecx
   10328:	75 19                	jne    load_from_file_mod_11_branch_5
   1032a:	83 7a 04 00          	cmp    DWORD PTR [edx+0x4],0x0
   1032e:	75 13                	jne    load_from_file_mod_11_branch_5
   10330:	8b 7a 08             	mov    edi,DWORD PTR [edx+0x8]
   10333:	85 ff                	test   edi,edi
   10335:	74 5f                	je     load_from_file_mod_11_branch_7
   10337:	89 f8                	mov    eax,edi
   10339:	e8 aa 10 06 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   1033e:	89 4a 08             	mov    DWORD PTR [edx+0x8],ecx
   10341:	eb 53                	jmp    load_from_file_mod_11_branch_7
load_from_file_mod_11_branch_5:
   10343:	8b 7a 08             	mov    edi,DWORD PTR [edx+0x8]
   10346:	85 ff                	test   edi,edi
   10348:	74 07                	je     load_from_file_mod_11_branch_6
   1034a:	89 f8                	mov    eax,edi
   1034c:	e8 97 10 06 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
load_from_file_mod_11_branch_6:
   10351:	8b 32                	mov    esi,DWORD PTR [edx]
   10353:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
   10356:	0f af c6             	imul   eax,esi
   10359:	c7 42 08 00 00 00 00 	mov    DWORD PTR [edx+0x8],0x0
   10360:	e8 2e 11 06 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   10365:	89 42 08             	mov    DWORD PTR [edx+0x8],eax
   10368:	85 c0                	test   eax,eax
   1036a:	75 2a                	jne    load_from_file_mod_11_branch_7
   1036c:	8b 0a                	mov    ecx,DWORD PTR [edx]
   1036e:	51                   	push   ecx
   1036f:	8b 72 04             	mov    esi,DWORD PTR [edx+0x4]
   10372:	56                   	push   esi
   10373:	68 3f 12 00 00       	push   @obj3:flic_cpp_variable_3                                    ; fixup: num: 1847, src obj: 1, src ofs: 0x10374, dst obj: 3, dst ofs: 0x123f
   10378:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 1846, src obj: 1, src ofs: 0x10379, dst obj: 3, dst ofs: 0x237fc
   1037d:	bb fc 37 02 00       	mov    ebx,@obj3:log_buffer                                         ; fixup: num: 1845, src obj: 1, src ofs: 0x1037e, dst obj: 3, dst ofs: 0x237fc
   10382:	e8 5a 08 06 00       	call   sprintf_
   10387:	83 c4 10             	add    esp,0x10
   1038a:	ba 96 00 00 00       	mov    edx,0x96
   1038f:	31 c0                	xor    eax,eax
   10391:	e8 9a 7c 02 00       	call   _error_report
load_from_file_mod_11_branch_7:
   10396:	8a 44 24 04          	mov    al,BYTE PTR [esp+0x4]
   1039a:	a2 6c 27 02 00       	mov    ds:@obj3:palette_enable,al                                   ; fixup: num: 1844, src obj: 1, src ofs: 0x1039b, dst obj: 3, dst ofs: 0x2276c
   1039f:	89 e8                	mov    eax,ebp
   103a1:	e8 6a 02 00 00       	call   next_frame
   103a6:	83 c4 0c             	add    esp,0xc
   103a9:	5d                   	pop    ebp
   103aa:	5f                   	pop    edi
   103ab:	5e                   	pop    esi
   103ac:	59                   	pop    ecx
   103ad:	c3                   	ret    
   103ae:	8b c0                	mov    eax,eax

;-------------------------------------------------
;  Function 'load_from_buffer'                   -
;-------------------------------------------------
load_from_buffer:
   103b0:	51                   	push   ecx
   103b1:	56                   	push   esi
   103b2:	57                   	push   edi
   103b3:	55                   	push   ebp
   103b4:	83 ec 08             	sub    esp,0x8
   103b7:	89 c5                	mov    ebp,eax
   103b9:	88 5c 24 04          	mov    BYTE PTR [esp+0x4],bl
   103bd:	8b 98 80 00 00 00    	mov    ebx,DWORD PTR [eax+0x80]
   103c3:	85 db                	test   ebx,ebx
   103c5:	74 07                	je     load_from_buffer_branch_1
   103c7:	89 d8                	mov    eax,ebx
   103c9:	e8 1a 10 06 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
load_from_buffer_branch_1:
   103ce:	b9 80 00 00 00       	mov    ecx,0x80
   103d3:	89 d6                	mov    esi,edx
   103d5:	89 ef                	mov    edi,ebp
   103d7:	89 95 80 00 00 00    	mov    DWORD PTR [ebp+0x80],edx
   103dd:	57                   	push   edi
   103de:	89 c8                	mov    eax,ecx
   103e0:	c1 e9 02             	shr    ecx,0x2
   103e3:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
   103e5:	8a c8                	mov    cl,al
   103e7:	80 e1 03             	and    cl,0x3
   103ea:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
   103ec:	5f                   	pop    edi
   103ed:	c7 85 88 00 00 00 00 00 00 00 	mov    DWORD PTR [ebp+0x88],0x0
   103f7:	31 c0                	xor    eax,eax
   103f9:	66 8b 45 06          	mov    ax,WORD PTR [ebp+0x6]
   103fd:	89 85 8c 00 00 00    	mov    DWORD PTR [ebp+0x8c],eax
   10403:	31 c0                	xor    eax,eax
   10405:	66 8b 45 04          	mov    ax,WORD PTR [ebp+0x4]
   10409:	c7 85 90 00 00 00 00 00 00 00 	mov    DWORD PTR [ebp+0x90],0x0
   10413:	3d 11 af 00 00       	cmp    eax,0xaf11
   10418:	75 30                	jne    load_from_buffer_branch_2
   1041a:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
   1041d:	89 c2                	mov    edx,eax
   1041f:	c1 e2 05             	shl    edx,0x5
   10422:	29 c2                	sub    edx,eax
   10424:	8d 14 95 00 00 00 00 	lea    edx,[edx*4+0x0]
   1042b:	01 c2                	add    edx,eax
   1042d:	8d 14 d5 00 00 00 00 	lea    edx,[edx*8+0x0]
   10434:	bb 46 00 00 00       	mov    ebx,0x46
   10439:	89 d0                	mov    eax,edx
   1043b:	c1 fa 1f             	sar    edx,0x1f
   1043e:	f7 fb                	idiv   ebx
   10440:	c7 45 50 80 00 00 00 	mov    DWORD PTR [ebp+0x50],0x80
   10447:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
load_from_buffer_branch_2:
   1044a:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
   1044d:	bb 0a 00 00 00       	mov    ebx,0xa
   10452:	89 d0                	mov    eax,edx
   10454:	c1 fa 1f             	sar    edx,0x1f
   10457:	f7 fb                	idiv   ebx
   10459:	31 f6                	xor    esi,esi
   1045b:	89 85 94 00 00 00    	mov    DWORD PTR [ebp+0x94],eax
   10461:	66 8b 75 08          	mov    si,WORD PTR [ebp+0x8]
   10465:	8b 55 50             	mov    edx,DWORD PTR [ebp+0x50]
   10468:	8b 85 80 00 00 00    	mov    eax,DWORD PTR [ebp+0x80]
   1046e:	31 db                	xor    ebx,ebx
   10470:	01 d0                	add    eax,edx
   10472:	66 8b 5d 0a          	mov    bx,WORD PTR [ebp+0xa]
   10476:	89 85 84 00 00 00    	mov    DWORD PTR [ebp+0x84],eax
   1047c:	8d 85 a8 00 00 00    	lea    eax,[ebp+0xa8]
   10482:	89 f1                	mov    ecx,esi
   10484:	89 1c 24             	mov    DWORD PTR [esp],ebx
   10487:	8b 38                	mov    edi,DWORD PTR [eax]
   10489:	89 c2                	mov    edx,eax
   1048b:	39 fe                	cmp    esi,edi
   1048d:	75 09                	jne    load_from_buffer_branch_3
   1048f:	3b 58 04             	cmp    ebx,DWORD PTR [eax+0x4]
   10492:	0f 84 76 00 00 00    	je     load_from_buffer_branch_6
load_from_buffer_branch_3:
   10498:	89 0a                	mov    DWORD PTR [edx],ecx
   1049a:	8b 04 24             	mov    eax,DWORD PTR [esp]
   1049d:	8b 3a                	mov    edi,DWORD PTR [edx]
   1049f:	89 42 04             	mov    DWORD PTR [edx+0x4],eax
   104a2:	85 ff                	test   edi,edi
   104a4:	75 17                	jne    load_from_buffer_branch_4
   104a6:	85 c0                	test   eax,eax
   104a8:	75 13                	jne    load_from_buffer_branch_4
   104aa:	8b 5a 08             	mov    ebx,DWORD PTR [edx+0x8]
   104ad:	85 db                	test   ebx,ebx
   104af:	74 5d                	je     load_from_buffer_branch_6
   104b1:	89 d8                	mov    eax,ebx
   104b3:	e8 30 0f 06 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   104b8:	89 7a 08             	mov    DWORD PTR [edx+0x8],edi
   104bb:	eb 51                	jmp    load_from_buffer_branch_6
load_from_buffer_branch_4:
   104bd:	8b 5a 08             	mov    ebx,DWORD PTR [edx+0x8]
   104c0:	85 db                	test   ebx,ebx
   104c2:	74 07                	je     load_from_buffer_branch_5
   104c4:	89 d8                	mov    eax,ebx
   104c6:	e8 1d 0f 06 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
load_from_buffer_branch_5:
   104cb:	8b 02                	mov    eax,DWORD PTR [edx]
   104cd:	0f af 42 04          	imul   eax,DWORD PTR [edx+0x4]
   104d1:	c7 42 08 00 00 00 00 	mov    DWORD PTR [edx+0x8],0x0
   104d8:	e8 b6 0f 06 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   104dd:	89 42 08             	mov    DWORD PTR [edx+0x8],eax
   104e0:	85 c0                	test   eax,eax
   104e2:	75 2a                	jne    load_from_buffer_branch_6
   104e4:	8b 3a                	mov    edi,DWORD PTR [edx]
   104e6:	57                   	push   edi
   104e7:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
   104ea:	50                   	push   eax
   104eb:	68 3f 12 00 00       	push   @obj3:flic_cpp_variable_3                                    ; fixup: num: 1850, src obj: 1, src ofs: 0x104ec, dst obj: 3, dst ofs: 0x123f
   104f0:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 1849, src obj: 1, src ofs: 0x104f1, dst obj: 3, dst ofs: 0x237fc
   104f5:	bb fc 37 02 00       	mov    ebx,@obj3:log_buffer                                         ; fixup: num: 1848, src obj: 1, src ofs: 0x104f6, dst obj: 3, dst ofs: 0x237fc
   104fa:	e8 e2 06 06 00       	call   sprintf_
   104ff:	83 c4 10             	add    esp,0x10
   10502:	ba 96 00 00 00       	mov    edx,0x96
   10507:	31 c0                	xor    eax,eax
   10509:	e8 22 7b 02 00       	call   _error_report
load_from_buffer_branch_6:
   1050e:	8a 44 24 04          	mov    al,BYTE PTR [esp+0x4]
   10512:	a2 6c 27 02 00       	mov    ds:@obj3:palette_enable,al                                   ; fixup: num: 1852, src obj: 1, src ofs: 0x10513, dst obj: 3, dst ofs: 0x2276c
   10517:	89 e8                	mov    eax,ebp
   10519:	e8 f2 00 00 00       	call   next_frame
   1051e:	83 c4 08             	add    esp,0x8
   10521:	5d                   	pop    ebp
   10522:	5f                   	pop    edi
   10523:	5e                   	pop    esi
   10524:	59                   	pop    ecx
   10525:	c3                   	ret    
   10526:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   1052c:	8d 54 22 00          	lea    edx,[edx+eiz*1+0x0]

;-------------------------------------------------
;  Function 'go_to_frame'                        -
;-------------------------------------------------
go_to_frame:
   10530:	53                   	push   ebx
   10531:	51                   	push   ecx
   10532:	56                   	push   esi
   10533:	89 c1                	mov    ecx,eax
   10535:	89 d6                	mov    esi,edx
   10537:	3b b0 88 00 00 00    	cmp    esi,DWORD PTR [eax+0x88]
   1053d:	0f 84 92 00 00 00    	je     go_to_frame_branch_5
   10543:	3b b0 8c 00 00 00    	cmp    esi,DWORD PTR [eax+0x8c]
   10549:	7c 11                	jl     go_to_frame_branch_1
   1054b:	bb 64 12 00 00       	mov    ebx,@obj3:flic_cpp_variable_4                                ; fixup: num: 1851, src obj: 1, src ofs: 0x1054c, dst obj: 3, dst ofs: 0x1264
   10550:	ba 8c 01 00 00       	mov    edx,0x18c
   10555:	31 c0                	xor    eax,eax
   10557:	e8 d4 7a 02 00       	call   _error_report
go_to_frame_branch_1:
   1055c:	8b 81 88 00 00 00    	mov    eax,DWORD PTR [ecx+0x88]
   10562:	40                   	inc    eax
   10563:	39 c6                	cmp    esi,eax
   10565:	75 0b                	jne    go_to_frame_branch_2
   10567:	89 c8                	mov    eax,ecx
   10569:	e8 a2 00 00 00       	call   next_frame
   1056e:	5e                   	pop    esi
   1056f:	59                   	pop    ecx
   10570:	5b                   	pop    ebx
   10571:	c3                   	ret    
go_to_frame_branch_2:
   10572:	85 f6                	test   esi,esi
   10574:	75 26                	jne    go_to_frame_branch_3
   10576:	8b b1 80 00 00 00    	mov    esi,DWORD PTR [ecx+0x80]
   1057c:	8b 41 50             	mov    eax,DWORD PTR [ecx+0x50]
   1057f:	c7 81 88 00 00 00 ff ff ff ff 	mov    DWORD PTR [ecx+0x88],0xffffffff
   10589:	01 c6                	add    esi,eax
   1058b:	89 c8                	mov    eax,ecx
   1058d:	89 b1 84 00 00 00    	mov    DWORD PTR [ecx+0x84],esi
   10593:	e8 78 00 00 00       	call   next_frame
   10598:	5e                   	pop    esi
   10599:	59                   	pop    ecx
   1059a:	5b                   	pop    ebx
   1059b:	c3                   	ret    
go_to_frame_branch_3:
   1059c:	8b 91 80 00 00 00    	mov    edx,DWORD PTR [ecx+0x80]
   105a2:	8b 41 50             	mov    eax,DWORD PTR [ecx+0x50]
   105a5:	c7 81 88 00 00 00 ff ff ff ff 	mov    DWORD PTR [ecx+0x88],0xffffffff
   105af:	01 c2                	add    edx,eax
   105b1:	89 c8                	mov    eax,ecx
   105b3:	89 91 84 00 00 00    	mov    DWORD PTR [ecx+0x84],edx
   105b9:	e8 52 00 00 00       	call   next_frame
   105be:	3b b1 88 00 00 00    	cmp    esi,DWORD PTR [ecx+0x88]
   105c4:	7e 0f                	jle    go_to_frame_branch_5
go_to_frame_branch_4:
   105c6:	89 c8                	mov    eax,ecx
   105c8:	e8 43 00 00 00       	call   next_frame
   105cd:	3b b1 88 00 00 00    	cmp    esi,DWORD PTR [ecx+0x88]
   105d3:	7f f1                	jg     go_to_frame_branch_4
go_to_frame_branch_5:
   105d5:	5e                   	pop    esi
   105d6:	59                   	pop    ecx
   105d7:	5b                   	pop    ebx
   105d8:	c3                   	ret    
   105d9:	8d 40 00             	lea    eax,[eax+0x0]
go_to_frame_reference_1:                                                                            ; access size: DWORDS
   105dc:	00 07                	add    BYTE PTR [edi],al                                            ; fixup: num: 1866, src obj: 1, src ofs: 0x105dc, dst obj: 1, dst ofs: 0x10700
   105de:	01 00                	add    DWORD PTR [eax],eax
   105e0:	e2 0c                	loop   @obj1:next_frame_reference_6                                 ; fixup: num: 1865, src obj: 1, src ofs: 0x105e0, dst obj: 1, dst ofs: 0x10ce2
   105e2:	01 00                	add    DWORD PTR [eax],eax
   105e4:	e2 0c                	loop   @obj1:next_frame_reference_6                                 ; fixup: num: 1864, src obj: 1, src ofs: 0x105e4, dst obj: 1, dst ofs: 0x10ce2
   105e6:	01 00                	add    DWORD PTR [eax],eax
   105e8:	64 07                	fs pop es                                                           ; fixup: num: 1863, src obj: 1, src ofs: 0x105e8, dst obj: 1, dst ofs: 0x10764
   105ea:	01 00                	add    DWORD PTR [eax],eax
   105ec:	e2 0c                	loop   @obj1:next_frame_reference_6                                 ; fixup: num: 1862, src obj: 1, src ofs: 0x105ec, dst obj: 1, dst ofs: 0x10ce2
   105ee:	01 00                	add    DWORD PTR [eax],eax
   105f0:	e2 0c                	loop   @obj1:next_frame_reference_6                                 ; fixup: num: 1861, src obj: 1, src ofs: 0x105f0, dst obj: 1, dst ofs: 0x10ce2
   105f2:	01 00                	add    DWORD PTR [eax],eax
   105f4:	e2 0c                	loop   @obj1:next_frame_reference_6                                 ; fixup: num: 1860, src obj: 1, src ofs: 0x105f4, dst obj: 1, dst ofs: 0x10ce2
   105f6:	01 00                	add    DWORD PTR [eax],eax
   105f8:	ef                   	out    dx,eax                                                       ; fixup: num: 1859, src obj: 1, src ofs: 0x105f8, dst obj: 1, dst ofs: 0x109ef
   105f9:	09 01                	or     DWORD PTR [ecx],eax
   105fb:	00 53 0a             	add    BYTE PTR [ebx+0xa],dl                                        ; fixup: num: 1858, src obj: 1, src ofs: 0x105fc, dst obj: 1, dst ofs: 0x10a53
   105fe:	01 00                	add    DWORD PTR [eax],eax
   10600:	18 0c 01             	sbb    BYTE PTR [ecx+eax*1],cl                                      ; fixup: num: 1857, src obj: 1, src ofs: 0x10600, dst obj: 1, dst ofs: 0x10c18
   10603:	00 e2                	add    dl,ah                                                        ; fixup: num: 1856, src obj: 1, src ofs: 0x10604, dst obj: 1, dst ofs: 0x10ce2
   10605:	0c 01                	or     al,0x1
   10607:	00 4a 0d             	add    BYTE PTR [edx+0xd],cl                                        ; fixup: num: 1855, src obj: 1, src ofs: 0x10608, dst obj: 1, dst ofs: 0x10d4a
   1060a:	01 00                	add    DWORD PTR [eax],eax
   1060c:	d8 0e                	fmul   DWORD PTR [esi]                                              ; fixup: num: 1854, src obj: 1, src ofs: 0x1060c, dst obj: 1, dst ofs: 0x10ed8
   1060e:	01 00                	add    DWORD PTR [eax],eax

;-------------------------------------------------
;  Function 'next_frame'                         -
;-------------------------------------------------
next_frame:
   10610:	53                   	push   ebx
   10611:	51                   	push   ecx
   10612:	52                   	push   edx
   10613:	56                   	push   esi
   10614:	57                   	push   edi
   10615:	55                   	push   ebp
   10616:	81 ec a0 00 00 00    	sub    esp,0xa0
   1061c:	89 04 24             	mov    DWORD PTR [esp],eax
   1061f:	8b 14 24             	mov    edx,DWORD PTR [esp]
   10622:	a1 44 7e 01 00       	mov    eax,ds:@obj3:current_time                                    ; fixup: num: 1853, src obj: 1, src ofs: 0x10623, dst obj: 3, dst ofs: 0x17e44
   10627:	8b 9a 94 00 00 00    	mov    ebx,DWORD PTR [edx+0x94]
   1062d:	01 d8                	add    eax,ebx
   1062f:	89 82 90 00 00 00    	mov    DWORD PTR [edx+0x90],eax
   10635:	8b 8a 8c 00 00 00    	mov    ecx,DWORD PTR [edx+0x8c]
   1063b:	3b 8a 88 00 00 00    	cmp    ecx,DWORD PTR [edx+0x88]
   10641:	7f 21                	jg     next_frame_branch_1
   10643:	8b 04 24             	mov    eax,DWORD PTR [esp]
   10646:	8b 92 80 00 00 00    	mov    edx,DWORD PTR [edx+0x80]
   1064c:	8b 40 50             	mov    eax,DWORD PTR [eax+0x50]
   1064f:	01 c2                	add    edx,eax
   10651:	8b 04 24             	mov    eax,DWORD PTR [esp]
   10654:	c7 80 88 00 00 00 00 00 00 00 	mov    DWORD PTR [eax+0x88],0x0
   1065e:	89 90 84 00 00 00    	mov    DWORD PTR [eax+0x84],edx
next_frame_branch_1:
   10664:	8b 04 24             	mov    eax,DWORD PTR [esp]
   10667:	8b 80 84 00 00 00    	mov    eax,DWORD PTR [eax+0x84]
   1066d:	8b 1c 24             	mov    ebx,DWORD PTR [esp]
   10670:	8d 50 10             	lea    edx,[eax+0x10]
   10673:	89 93 84 00 00 00    	mov    DWORD PTR [ebx+0x84],edx
   10679:	31 d2                	xor    edx,edx
   1067b:	66 8b 50 04          	mov    dx,WORD PTR [eax+0x4]
   1067f:	81 fa fa f1 00 00    	cmp    edx,0xf1fa
   10685:	0f 85 15 09 00 00    	jne    next_frame_branch_43
   1068b:	8b 93 a8 00 00 00    	mov    edx,DWORD PTR [ebx+0xa8]
   10691:	4a                   	dec    edx
   10692:	89 93 98 00 00 00    	mov    DWORD PTR [ebx+0x98],edx
   10698:	8b 93 ac 00 00 00    	mov    edx,DWORD PTR [ebx+0xac]
   1069e:	c7 83 a4 00 00 00 00 00 00 00 	mov    DWORD PTR [ebx+0xa4],0x0
   106a8:	4a                   	dec    edx
   106a9:	89 93 9c 00 00 00    	mov    DWORD PTR [ebx+0x9c],edx
   106af:	8b 93 a4 00 00 00    	mov    edx,DWORD PTR [ebx+0xa4]
   106b5:	89 93 a0 00 00 00    	mov    DWORD PTR [ebx+0xa0],edx
   106bb:	8b 10                	mov    edx,DWORD PTR [eax]
   106bd:	83 ea 10             	sub    edx,0x10
   106c0:	85 d2                	test   edx,edx
   106c2:	0f 8e e9 08 00 00    	jle    next_frame_branch_44
   106c8:	8b b3 84 00 00 00    	mov    esi,DWORD PTR [ebx+0x84]
   106ce:	01 d6                	add    esi,edx
   106d0:	89 b3 84 00 00 00    	mov    DWORD PTR [ebx+0x84],esi
   106d6:	89 f3                	mov    ebx,esi
   106d8:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
   106dc:	29 d3                	sub    ebx,edx
   106de:	31 ff                	xor    edi,edi
   106e0:	89 da                	mov    edx,ebx
   106e2:	8b 1c 24             	mov    ebx,DWORD PTR [esp]
   106e5:	89 7c 24 10          	mov    DWORD PTR [esp+0x10],edi
   106e9:	89 5c 24 04          	mov    DWORD PTR [esp+0x4],ebx
   106ed:	8d 83 a8 00 00 00    	lea    eax,[ebx+0xa8]
   106f3:	89 54 24 0c          	mov    DWORD PTR [esp+0xc],edx
   106f7:	89 44 24 4c          	mov    DWORD PTR [esp+0x4c],eax
   106fb:	e9 fb 05 00 00       	jmp    next_frame_branch_31
next_frame_reference_1:
   10700:	80 3d 6c 27 02 00 00 	cmp    BYTE PTR ds:@obj3:palette_enable,0x0                         ; fixup: num: 1868, src obj: 1, src ofs: 0x10702, dst obj: 3, dst ofs: 0x2276c
   10707:	0f 84 d5 05 00 00    	je     next_frame_reference_6
   1070d:	be f0 ed 00 00       	mov    esi,@obj1:screen_put_colors                                  ; fixup: num: 1867, src obj: 1, src ofs: 0x1070e, dst obj: 1, dst ofs: 0xedf0
   10712:	66 8b 03             	mov    ax,WORD PTR [ebx]
   10715:	31 ff                	xor    edi,edi
   10717:	89 74 24 18          	mov    DWORD PTR [esp+0x18],esi
   1071b:	89 84 24 88 00 00 00 	mov    DWORD PTR [esp+0x88],eax
next_frame_branch_2:
   10722:	8b 9c 24 88 00 00 00 	mov    ebx,DWORD PTR [esp+0x88]
   10729:	4b                   	dec    ebx
   1072a:	0f bf c3             	movsx  eax,bx
   1072d:	89 9c 24 88 00 00 00 	mov    DWORD PTR [esp+0x88],ebx
   10734:	85 c0                	test   eax,eax
   10736:	0f 8c a6 05 00 00    	jl     next_frame_reference_6
   1073c:	41                   	inc    ecx
   1073d:	31 c0                	xor    eax,eax
   1073f:	0f b6 31             	movzx  esi,BYTE PTR [ecx]
   10742:	8a 41 ff             	mov    al,BYTE PTR [ecx-0x1]
   10745:	41                   	inc    ecx
   10746:	01 c7                	add    edi,eax
   10748:	85 f6                	test   esi,esi
   1074a:	75 05                	jne    next_frame_branch_3
   1074c:	be 00 01 00 00       	mov    esi,0x100
next_frame_branch_3:
   10751:	89 f3                	mov    ebx,esi
   10753:	89 ca                	mov    edx,ecx
   10755:	89 f8                	mov    eax,edi
   10757:	ff 54 24 18          	call   DWORD PTR [esp+0x18]
   1075b:	8d 04 76             	lea    eax,[esi+esi*2]
   1075e:	01 c1                	add    ecx,eax
   10760:	01 f7                	add    edi,esi
   10762:	eb be                	jmp    next_frame_branch_2
next_frame_reference_2:
   10764:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
   10768:	89 54 24 1c          	mov    DWORD PTR [esp+0x1c],edx
   1076c:	8b 92 a8 00 00 00    	mov    edx,DWORD PTR [edx+0xa8]
   10772:	89 44 24 38          	mov    DWORD PTR [esp+0x38],eax
   10776:	4a                   	dec    edx
   10777:	89 44 24 30          	mov    DWORD PTR [esp+0x30],eax
   1077b:	89 54 24 20          	mov    DWORD PTR [esp+0x20],edx
   1077f:	66 8b 13             	mov    dx,WORD PTR [ebx]
   10782:	89 44 24 2c          	mov    DWORD PTR [esp+0x2c],eax
   10786:	89 94 24 84 00 00 00 	mov    DWORD PTR [esp+0x84],edx
   1078d:	31 d2                	xor    edx,edx
   1078f:	89 cb                	mov    ebx,ecx
   10791:	89 54 24 28          	mov    DWORD PTR [esp+0x28],edx
   10795:	eb 04                	jmp    next_frame_branch_5
next_frame_branch_4:
   10797:	29 44 24 28          	sub    DWORD PTR [esp+0x28],eax
next_frame_branch_5:
   1079b:	66 8b 03             	mov    ax,WORD PTR [ebx]
   1079e:	66 89 44 24 7c       	mov    WORD PTR [esp+0x7c],ax
   107a3:	98                   	cwde   
   107a4:	83 c3 02             	add    ebx,0x2
   107a7:	85 c0                	test   eax,eax
   107a9:	0f 8d 80 00 00 00    	jge    next_frame_branch_6
   107af:	8b 54 24 7c          	mov    edx,DWORD PTR [esp+0x7c]
   107b3:	30 d2                	xor    dl,dl
   107b5:	80 e6 40             	and    dh,0x40
   107b8:	81 e2 ff ff 00 00    	and    edx,0xffff
   107be:	75 d7                	jne    next_frame_branch_4
   107c0:	8b 54 24 2c          	mov    edx,DWORD PTR [esp+0x2c]
   107c4:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
   107c8:	0f af 02             	imul   eax,DWORD PTR [edx]
   107cb:	31 c9                	xor    ecx,ecx
   107cd:	8b 52 08             	mov    edx,DWORD PTR [edx+0x8]
   107d0:	8a 4c 24 7c          	mov    cl,BYTE PTR [esp+0x7c]
   107d4:	01 d0                	add    eax,edx
   107d6:	8a 54 24 28          	mov    dl,BYTE PTR [esp+0x28]
   107da:	88 14 01             	mov    BYTE PTR [ecx+eax*1],dl
   107dd:	31 d2                	xor    edx,edx
   107df:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
   107e3:	88 ca                	mov    dl,cl
   107e5:	e8 36 09 00 00       	call   update_bounding_box_x
   107ea:	8b 54 24 20          	mov    edx,DWORD PTR [esp+0x20]
   107ee:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
   107f2:	e8 09 09 00 00       	call   update_bounding_box_y
   107f7:	66 8b 03             	mov    ax,WORD PTR [ebx]
   107fa:	66 89 44 24 7c       	mov    WORD PTR [esp+0x7c],ax
   107ff:	98                   	cwde   
   10800:	83 c3 02             	add    ebx,0x2
   10803:	85 c0                	test   eax,eax
   10805:	75 28                	jne    next_frame_branch_6
   10807:	8b 7c 24 28          	mov    edi,DWORD PTR [esp+0x28]
   1080b:	8b b4 24 84 00 00 00 	mov    esi,DWORD PTR [esp+0x84]
   10812:	47                   	inc    edi
   10813:	4e                   	dec    esi
   10814:	89 7c 24 28          	mov    DWORD PTR [esp+0x28],edi
   10818:	0f bf c6             	movsx  eax,si
   1081b:	89 b4 24 84 00 00 00 	mov    DWORD PTR [esp+0x84],esi
   10822:	85 c0                	test   eax,eax
   10824:	0f 8f 71 ff ff ff    	jg     next_frame_branch_5
   1082a:	e9 b3 04 00 00       	jmp    next_frame_reference_6
next_frame_branch_6:
   1082f:	31 c0                	xor    eax,eax
   10831:	89 44 24 24          	mov    DWORD PTR [esp+0x24],eax
next_frame_branch_7:
   10835:	43                   	inc    ebx
   10836:	8b 54 24 24          	mov    edx,DWORD PTR [esp+0x24]
   1083a:	31 c0                	xor    eax,eax
   1083c:	0f be 2b             	movsx  ebp,BYTE PTR [ebx]
   1083f:	8a 43 ff             	mov    al,BYTE PTR [ebx-0x1]
   10842:	43                   	inc    ebx
   10843:	01 c2                	add    edx,eax
   10845:	01 ed                	add    ebp,ebp
   10847:	89 54 24 24          	mov    DWORD PTR [esp+0x24],edx
   1084b:	85 ed                	test   ebp,ebp
   1084d:	0f 8c b6 00 00 00    	jl     next_frame_branch_10
   10853:	8b 54 24 30          	mov    edx,DWORD PTR [esp+0x30]
   10857:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
   1085b:	0f af 02             	imul   eax,DWORD PTR [edx]
   1085e:	8b 7c 24 24          	mov    edi,DWORD PTR [esp+0x24]
   10862:	8b 4a 08             	mov    ecx,DWORD PTR [edx+0x8]
   10865:	89 de                	mov    esi,ebx
   10867:	01 c8                	add    eax,ecx
   10869:	89 e9                	mov    ecx,ebp
   1086b:	01 c7                	add    edi,eax
   1086d:	8b 54 24 24          	mov    edx,DWORD PTR [esp+0x24]
   10871:	57                   	push   edi
   10872:	89 c8                	mov    eax,ecx
   10874:	c1 e9 02             	shr    ecx,0x2
   10877:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
   10879:	8a c8                	mov    cl,al
   1087b:	80 e1 03             	and    cl,0x3
   1087e:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
   10880:	5f                   	pop    edi
   10881:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
   10885:	8b 4c 24 24          	mov    ecx,DWORD PTR [esp+0x24]
   10889:	8b 74 24 1c          	mov    esi,DWORD PTR [esp+0x1c]
   1088d:	e8 8e 08 00 00       	call   update_bounding_box_x
   10892:	8b 54 24 28          	mov    edx,DWORD PTR [esp+0x28]
   10896:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
   1089a:	01 e9                	add    ecx,ebp
   1089c:	e8 5f 08 00 00       	call   update_bounding_box_y
   108a1:	49                   	dec    ecx
   108a2:	8b 96 a0 00 00 00    	mov    edx,DWORD PTR [esi+0xa0]
   108a8:	89 cf                	mov    edi,ecx
   108aa:	39 d1                	cmp    ecx,edx
   108ac:	7e 06                	jle    next_frame_branch_8
   108ae:	89 8e a0 00 00 00    	mov    DWORD PTR [esi+0xa0],ecx
next_frame_branch_8:
   108b4:	3b be 98 00 00 00    	cmp    edi,DWORD PTR [esi+0x98]
   108ba:	7d 06                	jge    next_frame_branch_9
   108bc:	89 be 98 00 00 00    	mov    DWORD PTR [esi+0x98],edi
next_frame_branch_9:
   108c2:	8b 74 24 24          	mov    esi,DWORD PTR [esp+0x24]
   108c6:	8b 7c 24 7c          	mov    edi,DWORD PTR [esp+0x7c]
   108ca:	01 eb                	add    ebx,ebp
   108cc:	01 ee                	add    esi,ebp
   108ce:	4f                   	dec    edi
   108cf:	89 74 24 24          	mov    DWORD PTR [esp+0x24],esi
   108d3:	0f bf c7             	movsx  eax,di
   108d6:	66 89 7c 24 7c       	mov    WORD PTR [esp+0x7c],di
   108db:	85 c0                	test   eax,eax
   108dd:	0f 85 52 ff ff ff    	jne    next_frame_branch_7
   108e3:	8b 84 24 84 00 00 00 	mov    eax,DWORD PTR [esp+0x84]
   108ea:	8b 7c 24 28          	mov    edi,DWORD PTR [esp+0x28]
   108ee:	48                   	dec    eax
   108ef:	47                   	inc    edi
   108f0:	89 84 24 84 00 00 00 	mov    DWORD PTR [esp+0x84],eax
   108f7:	98                   	cwde   
   108f8:	89 7c 24 28          	mov    DWORD PTR [esp+0x28],edi
   108fc:	85 c0                	test   eax,eax
   108fe:	0f 8f 97 fe ff ff    	jg     next_frame_branch_5
   10904:	e9 d9 03 00 00       	jmp    next_frame_reference_6
next_frame_branch_10:
   10909:	f7 dd                	neg    ebp
   1090b:	89 d1                	mov    ecx,edx
   1090d:	66 8b 03             	mov    ax,WORD PTR [ebx]
   10910:	89 ee                	mov    esi,ebp
   10912:	66 89 84 24 90 00 00 00 	mov    WORD PTR [esp+0x90],ax
   1091a:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
   1091e:	89 cf                	mov    edi,ecx
   10920:	e8 fb 07 00 00       	call   update_bounding_box_x
   10925:	8b 54 24 28          	mov    edx,DWORD PTR [esp+0x28]
   10929:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
   1092d:	d1 fe                	sar    esi,1
   1092f:	e8 cc 07 00 00       	call   update_bounding_box_y
   10934:	8d 04 75 00 00 00 00 	lea    eax,[esi*2+0x0]
   1093b:	01 f8                	add    eax,edi
   1093d:	8b 7c 24 1c          	mov    edi,DWORD PTR [esp+0x1c]
   10941:	48                   	dec    eax
   10942:	83 c3 02             	add    ebx,0x2
   10945:	89 44 24 34          	mov    DWORD PTR [esp+0x34],eax
   10949:	3b 87 a0 00 00 00    	cmp    eax,DWORD PTR [edi+0xa0]
   1094f:	7e 06                	jle    next_frame_branch_11
   10951:	89 87 a0 00 00 00    	mov    DWORD PTR [edi+0xa0],eax
next_frame_branch_11:
   10957:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
   1095b:	3b 87 98 00 00 00    	cmp    eax,DWORD PTR [edi+0x98]
   10961:	7d 06                	jge    next_frame_branch_12
   10963:	89 87 98 00 00 00    	mov    DWORD PTR [edi+0x98],eax
next_frame_branch_12:
   10969:	4e                   	dec    esi
   1096a:	85 f6                	test   esi,esi
   1096c:	7c 3a                	jl     next_frame_branch_13
   1096e:	8b 54 24 38          	mov    edx,DWORD PTR [esp+0x38]
   10972:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
   10976:	0f af 02             	imul   eax,DWORD PTR [edx]
   10979:	8b 7a 08             	mov    edi,DWORD PTR [edx+0x8]
   1097c:	01 f8                	add    eax,edi
   1097e:	8a 94 24 90 00 00 00 	mov    dl,BYTE PTR [esp+0x90]
   10985:	88 14 01             	mov    BYTE PTR [ecx+eax*1],dl
   10988:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
   1098c:	8b 7c 24 28          	mov    edi,DWORD PTR [esp+0x28]
   10990:	0f af 38             	imul   edi,DWORD PTR [eax]
   10993:	83 c1 02             	add    ecx,0x2
   10996:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
   10999:	01 f8                	add    eax,edi
   1099b:	8a 94 24 91 00 00 00 	mov    dl,BYTE PTR [esp+0x91]
   109a2:	88 54 01 ff          	mov    BYTE PTR [ecx+eax*1-0x1],dl
   109a6:	eb c1                	jmp    next_frame_branch_12
next_frame_branch_13:
   109a8:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
   109ac:	8b 54 24 7c          	mov    edx,DWORD PTR [esp+0x7c]
   109b0:	01 e8                	add    eax,ebp
   109b2:	4a                   	dec    edx
   109b3:	89 44 24 24          	mov    DWORD PTR [esp+0x24],eax
   109b7:	0f bf c2             	movsx  eax,dx
   109ba:	66 89 54 24 7c       	mov    WORD PTR [esp+0x7c],dx
   109bf:	85 c0                	test   eax,eax
   109c1:	0f 85 6e fe ff ff    	jne    next_frame_branch_7
   109c7:	8b 54 24 28          	mov    edx,DWORD PTR [esp+0x28]
   109cb:	8b 8c 24 84 00 00 00 	mov    ecx,DWORD PTR [esp+0x84]
   109d2:	42                   	inc    edx
   109d3:	49                   	dec    ecx
   109d4:	89 54 24 28          	mov    DWORD PTR [esp+0x28],edx
   109d8:	0f bf c1             	movsx  eax,cx
   109db:	89 8c 24 84 00 00 00 	mov    DWORD PTR [esp+0x84],ecx
   109e2:	85 c0                	test   eax,eax
   109e4:	0f 8f b1 fd ff ff    	jg     next_frame_branch_5
   109ea:	e9 f3 02 00 00       	jmp    next_frame_reference_6
next_frame_reference_3:
   109ef:	80 3d 6c 27 02 00 00 	cmp    BYTE PTR ds:@obj3:palette_enable,0x0                         ; fixup: num: 1870, src obj: 1, src ofs: 0x109f1, dst obj: 3, dst ofs: 0x2276c
   109f6:	0f 84 e6 02 00 00    	je     next_frame_reference_6
   109fc:	bd 50 ee 00 00       	mov    ebp,@obj1:screen_put_colors_64                               ; fixup: num: 1869, src obj: 1, src ofs: 0x109fd, dst obj: 1, dst ofs: 0xee50
   10a01:	66 8b 03             	mov    ax,WORD PTR [ebx]
   10a04:	31 ff                	xor    edi,edi
   10a06:	89 6c 24 3c          	mov    DWORD PTR [esp+0x3c],ebp
   10a0a:	89 84 24 8c 00 00 00 	mov    DWORD PTR [esp+0x8c],eax
next_frame_branch_14:
   10a11:	8b 94 24 8c 00 00 00 	mov    edx,DWORD PTR [esp+0x8c]
   10a18:	4a                   	dec    edx
   10a19:	0f bf c2             	movsx  eax,dx
   10a1c:	89 94 24 8c 00 00 00 	mov    DWORD PTR [esp+0x8c],edx
   10a23:	85 c0                	test   eax,eax
   10a25:	0f 8c b7 02 00 00    	jl     next_frame_reference_6
   10a2b:	41                   	inc    ecx
   10a2c:	31 c0                	xor    eax,eax
   10a2e:	0f b6 31             	movzx  esi,BYTE PTR [ecx]
   10a31:	8a 41 ff             	mov    al,BYTE PTR [ecx-0x1]
   10a34:	41                   	inc    ecx
   10a35:	01 c7                	add    edi,eax
   10a37:	85 f6                	test   esi,esi
   10a39:	75 05                	jne    next_frame_branch_15
   10a3b:	be 00 01 00 00       	mov    esi,0x100
next_frame_branch_15:
   10a40:	89 f3                	mov    ebx,esi
   10a42:	89 ca                	mov    edx,ecx
   10a44:	89 f8                	mov    eax,edi
   10a46:	ff 54 24 3c          	call   DWORD PTR [esp+0x3c]
   10a4a:	8d 04 76             	lea    eax,[esi+esi*2]
   10a4d:	01 c1                	add    ecx,eax
   10a4f:	01 f7                	add    edi,esi
   10a51:	eb be                	jmp    next_frame_branch_14
next_frame_reference_4:
   10a53:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
   10a57:	89 54 24 40          	mov    DWORD PTR [esp+0x40],edx
   10a5b:	8d 53 04             	lea    edx,[ebx+0x4]
   10a5e:	89 54 24 44          	mov    DWORD PTR [esp+0x44],edx
   10a62:	0f bf 13             	movsx  edx,WORD PTR [ebx]
   10a65:	89 54 24 48          	mov    DWORD PTR [esp+0x48],edx
   10a69:	66 8b 11             	mov    dx,WORD PTR [ecx]
   10a6c:	89 44 24 78          	mov    DWORD PTR [esp+0x78],eax
   10a70:	89 94 24 80 00 00 00 	mov    DWORD PTR [esp+0x80],edx
next_frame_branch_16:
   10a77:	8b 8c 24 80 00 00 00 	mov    ecx,DWORD PTR [esp+0x80]
   10a7e:	49                   	dec    ecx
   10a7f:	0f bf c1             	movsx  eax,cx
   10a82:	89 8c 24 80 00 00 00 	mov    DWORD PTR [esp+0x80],ecx
   10a89:	85 c0                	test   eax,eax
   10a8b:	0f 8c 51 02 00 00    	jl     next_frame_reference_6
   10a91:	8b 44 24 44          	mov    eax,DWORD PTR [esp+0x44]
   10a95:	8b 54 24 44          	mov    edx,DWORD PTR [esp+0x44]
   10a99:	31 ed                	xor    ebp,ebp
   10a9b:	8a 00                	mov    al,BYTE PTR [eax]
   10a9d:	42                   	inc    edx
   10a9e:	88 84 24 98 00 00 00 	mov    BYTE PTR [esp+0x98],al
   10aa5:	89 54 24 44          	mov    DWORD PTR [esp+0x44],edx
next_frame_branch_17:
   10aa9:	31 c0                	xor    eax,eax
   10aab:	8a 84 24 98 00 00 00 	mov    al,BYTE PTR [esp+0x98]
   10ab2:	85 c0                	test   eax,eax
   10ab4:	0f 8e 55 01 00 00    	jle    next_frame_branch_23
   10aba:	8b 54 24 44          	mov    edx,DWORD PTR [esp+0x44]
   10abe:	31 c0                	xor    eax,eax
   10ac0:	8d 4a 01             	lea    ecx,[edx+0x1]
   10ac3:	8a 02                	mov    al,BYTE PTR [edx]
   10ac5:	89 4c 24 44          	mov    DWORD PTR [esp+0x44],ecx
   10ac9:	01 c5                	add    ebp,eax
   10acb:	8a 01                	mov    al,BYTE PTR [ecx]
   10acd:	8d 71 01             	lea    esi,[ecx+0x1]
   10ad0:	88 84 24 94 00 00 00 	mov    BYTE PTR [esp+0x94],al
   10ad7:	0f be d8             	movsx  ebx,al
   10ada:	89 74 24 44          	mov    DWORD PTR [esp+0x44],esi
   10ade:	85 db                	test   ebx,ebx
   10ae0:	0f 8d 9a 00 00 00    	jge    next_frame_branch_20
   10ae6:	88 c1                	mov    cl,al
   10ae8:	31 d2                	xor    edx,edx
   10aea:	f6 d9                	neg    cl
   10aec:	8a 06                	mov    al,BYTE PTR [esi]
   10aee:	88 8c 24 94 00 00 00 	mov    BYTE PTR [esp+0x94],cl
   10af5:	0f be d9             	movsx  ebx,cl
   10af8:	88 c2                	mov    dl,al
   10afa:	8d 4e 01             	lea    ecx,[esi+0x1]
   10afd:	8b 44 24 78          	mov    eax,DWORD PTR [esp+0x78]
   10b01:	89 4c 24 44          	mov    DWORD PTR [esp+0x44],ecx
   10b05:	8b 30                	mov    esi,DWORD PTR [eax]
   10b07:	8b 4c 24 48          	mov    ecx,DWORD PTR [esp+0x48]
   10b0b:	0f af ce             	imul   ecx,esi
   10b0e:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
   10b11:	01 c8                	add    eax,ecx
   10b13:	01 e8                	add    eax,ebp
   10b15:	e8 b6 08 06 00       	call   memset_
   10b1a:	8b 44 24 40          	mov    eax,DWORD PTR [esp+0x40]
   10b1e:	89 ea                	mov    edx,ebp
   10b20:	e8 fb 05 00 00       	call   update_bounding_box_x
   10b25:	8b 54 24 48          	mov    edx,DWORD PTR [esp+0x48]
   10b29:	8b 44 24 40          	mov    eax,DWORD PTR [esp+0x40]
   10b2d:	e8 ce 05 00 00       	call   update_bounding_box_y
   10b32:	0f be 84 24 94 00 00 00 	movsx  eax,BYTE PTR [esp+0x94]
   10b3a:	01 e8                	add    eax,ebp
   10b3c:	8b 54 24 40          	mov    edx,DWORD PTR [esp+0x40]
   10b40:	48                   	dec    eax
   10b41:	8b ba a0 00 00 00    	mov    edi,DWORD PTR [edx+0xa0]
   10b47:	89 c3                	mov    ebx,eax
   10b49:	39 f8                	cmp    eax,edi
   10b4b:	7e 06                	jle    next_frame_branch_18
   10b4d:	89 82 a0 00 00 00    	mov    DWORD PTR [edx+0xa0],eax
next_frame_branch_18:
   10b53:	3b 9a 98 00 00 00    	cmp    ebx,DWORD PTR [edx+0x98]
   10b59:	7d 06                	jge    next_frame_branch_19
   10b5b:	89 9a 98 00 00 00    	mov    DWORD PTR [edx+0x98],ebx
next_frame_branch_19:
   10b61:	8a ac 24 98 00 00 00 	mov    ch,BYTE PTR [esp+0x98]
   10b68:	0f be 84 24 94 00 00 00 	movsx  eax,BYTE PTR [esp+0x94]
   10b70:	fe cd                	dec    ch
   10b72:	01 c5                	add    ebp,eax
   10b74:	88 ac 24 98 00 00 00 	mov    BYTE PTR [esp+0x98],ch
   10b7b:	e9 29 ff ff ff       	jmp    next_frame_branch_17
next_frame_branch_20:
   10b80:	0f be c8             	movsx  ecx,al
   10b83:	8b 44 24 78          	mov    eax,DWORD PTR [esp+0x78]
   10b87:	8b 54 24 48          	mov    edx,DWORD PTR [esp+0x48]
   10b8b:	0f af 10             	imul   edx,DWORD PTR [eax]
   10b8e:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
   10b91:	01 d0                	add    eax,edx
   10b93:	8d 3c 28             	lea    edi,[eax+ebp*1]
   10b96:	57                   	push   edi
   10b97:	89 c8                	mov    eax,ecx
   10b99:	c1 e9 02             	shr    ecx,0x2
   10b9c:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
   10b9e:	8a c8                	mov    cl,al
   10ba0:	80 e1 03             	and    cl,0x3
   10ba3:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
   10ba5:	5f                   	pop    edi
   10ba6:	89 ea                	mov    edx,ebp
   10ba8:	8b 44 24 40          	mov    eax,DWORD PTR [esp+0x40]
   10bac:	e8 6f 05 00 00       	call   update_bounding_box_x
   10bb1:	8b 54 24 48          	mov    edx,DWORD PTR [esp+0x48]
   10bb5:	8b 44 24 40          	mov    eax,DWORD PTR [esp+0x40]
   10bb9:	e8 42 05 00 00       	call   update_bounding_box_y
   10bbe:	8d 04 2b             	lea    eax,[ebx+ebp*1]
   10bc1:	8b 5c 24 40          	mov    ebx,DWORD PTR [esp+0x40]
   10bc5:	48                   	dec    eax
   10bc6:	8b b3 a0 00 00 00    	mov    esi,DWORD PTR [ebx+0xa0]
   10bcc:	89 c2                	mov    edx,eax
   10bce:	39 f0                	cmp    eax,esi
   10bd0:	7e 06                	jle    next_frame_branch_21
   10bd2:	89 83 a0 00 00 00    	mov    DWORD PTR [ebx+0xa0],eax
next_frame_branch_21:
   10bd8:	3b 93 98 00 00 00    	cmp    edx,DWORD PTR [ebx+0x98]
   10bde:	7d 06                	jge    next_frame_branch_22
   10be0:	89 93 98 00 00 00    	mov    DWORD PTR [ebx+0x98],edx
next_frame_branch_22:
   10be6:	0f be 84 24 94 00 00 00 	movsx  eax,BYTE PTR [esp+0x94]
   10bee:	8a bc 24 98 00 00 00 	mov    bh,BYTE PTR [esp+0x98]
   10bf5:	8b 54 24 44          	mov    edx,DWORD PTR [esp+0x44]
   10bf9:	fe cf                	dec    bh
   10bfb:	01 c2                	add    edx,eax
   10bfd:	01 c5                	add    ebp,eax
   10bff:	89 54 24 44          	mov    DWORD PTR [esp+0x44],edx
   10c03:	88 bc 24 98 00 00 00 	mov    BYTE PTR [esp+0x98],bh
   10c0a:	e9 9a fe ff ff       	jmp    next_frame_branch_17
next_frame_branch_23:
   10c0f:	ff 44 24 48          	inc    DWORD PTR [esp+0x48]
   10c13:	e9 5f fe ff ff       	jmp    next_frame_branch_16
next_frame_reference_5:
   10c18:	8b 44 24 4c          	mov    eax,DWORD PTR [esp+0x4c]
   10c1c:	8b 5c 24 4c          	mov    ebx,DWORD PTR [esp+0x4c]
   10c20:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
   10c23:	8b 3b                	mov    edi,DWORD PTR [ebx]
   10c25:	89 c3                	mov    ebx,eax
   10c27:	0f af df             	imul   ebx,edi
   10c2a:	31 d2                	xor    edx,edx
   10c2c:	8b 44 24 4c          	mov    eax,DWORD PTR [esp+0x4c]
   10c30:	81 e2 ff 00 00 00    	and    edx,0xff
   10c36:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
   10c39:	e8 92 07 06 00       	call   memset_
   10c3e:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
   10c42:	31 c9                	xor    ecx,ecx
   10c44:	31 d2                	xor    edx,edx
   10c46:	8b a8 a0 00 00 00    	mov    ebp,DWORD PTR [eax+0xa0]
   10c4c:	89 c3                	mov    ebx,eax
   10c4e:	85 ed                	test   ebp,ebp
   10c50:	7d 06                	jge    next_frame_branch_24
   10c52:	89 90 a0 00 00 00    	mov    DWORD PTR [eax+0xa0],edx
next_frame_branch_24:
   10c58:	3b 8b 98 00 00 00    	cmp    ecx,DWORD PTR [ebx+0x98]
   10c5e:	7d 06                	jge    next_frame_branch_25
   10c60:	89 8b 98 00 00 00    	mov    DWORD PTR [ebx+0x98],ecx
next_frame_branch_25:
   10c66:	89 c1                	mov    ecx,eax
   10c68:	8b b8 a4 00 00 00    	mov    edi,DWORD PTR [eax+0xa4]
   10c6e:	89 d3                	mov    ebx,edx
   10c70:	39 fa                	cmp    edx,edi
   10c72:	7e 06                	jle    next_frame_branch_26
   10c74:	89 90 a4 00 00 00    	mov    DWORD PTR [eax+0xa4],edx
next_frame_branch_26:
   10c7a:	3b 99 9c 00 00 00    	cmp    ebx,DWORD PTR [ecx+0x9c]
   10c80:	7d 06                	jge    next_frame_branch_27
   10c82:	89 99 9c 00 00 00    	mov    DWORD PTR [ecx+0x9c],ebx
next_frame_branch_27:
   10c88:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
   10c8c:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
   10c90:	89 d1                	mov    ecx,edx
   10c92:	8b 98 ac 00 00 00    	mov    ebx,DWORD PTR [eax+0xac]
   10c98:	8b 80 a8 00 00 00    	mov    eax,DWORD PTR [eax+0xa8]
   10c9e:	8b aa a0 00 00 00    	mov    ebp,DWORD PTR [edx+0xa0]
   10ca4:	48                   	dec    eax
   10ca5:	4b                   	dec    ebx
   10ca6:	89 c6                	mov    esi,eax
   10ca8:	39 e8                	cmp    eax,ebp
   10caa:	7e 06                	jle    next_frame_branch_28
   10cac:	89 82 a0 00 00 00    	mov    DWORD PTR [edx+0xa0],eax
next_frame_branch_28:
   10cb2:	3b b1 98 00 00 00    	cmp    esi,DWORD PTR [ecx+0x98]
   10cb8:	7d 06                	jge    next_frame_branch_29
   10cba:	89 b1 98 00 00 00    	mov    DWORD PTR [ecx+0x98],esi
next_frame_branch_29:
   10cc0:	89 d1                	mov    ecx,edx
   10cc2:	8b b2 a4 00 00 00    	mov    esi,DWORD PTR [edx+0xa4]
   10cc8:	89 d8                	mov    eax,ebx
   10cca:	39 f3                	cmp    ebx,esi
   10ccc:	7e 06                	jle    next_frame_branch_30
   10cce:	89 9a a4 00 00 00    	mov    DWORD PTR [edx+0xa4],ebx
next_frame_branch_30:
   10cd4:	3b 81 9c 00 00 00    	cmp    eax,DWORD PTR [ecx+0x9c]
   10cda:	7d 06                	jge    next_frame_reference_6
   10cdc:	89 81 9c 00 00 00    	mov    DWORD PTR [ecx+0x9c],eax
next_frame_reference_6:
   10ce2:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
   10ce6:	8b 5c 24 0c          	mov    ebx,DWORD PTR [esp+0xc]
   10cea:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
   10cee:	8b 00                	mov    eax,DWORD PTR [eax]
   10cf0:	41                   	inc    ecx
   10cf1:	01 c3                	add    ebx,eax
   10cf3:	89 4c 24 10          	mov    DWORD PTR [esp+0x10],ecx
   10cf7:	89 5c 24 0c          	mov    DWORD PTR [esp+0xc],ebx
next_frame_branch_31:
   10cfb:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
   10cff:	8b 6c 24 10          	mov    ebp,DWORD PTR [esp+0x10]
   10d03:	0f bf 40 06          	movsx  eax,WORD PTR [eax+0x6]
   10d07:	39 e8                	cmp    eax,ebp
   10d09:	0f 8e 7b 02 00 00    	jle    next_frame_branch_42
   10d0f:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
   10d13:	66 8b 40 04          	mov    ax,WORD PTR [eax+0x4]
   10d17:	83 e8 04             	sub    eax,0x4
   10d1a:	66 3d 0c 00          	cmp    ax,0xc
   10d1e:	77 c2                	ja     next_frame_reference_6
   10d20:	8b 5c 24 0c          	mov    ebx,DWORD PTR [esp+0xc]
   10d24:	25 ff ff 00 00       	and    eax,0xffff
   10d29:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
   10d2d:	8d 14 85 00 00 00 00 	lea    edx,[eax*4+0x0]
   10d34:	83 c3 06             	add    ebx,0x6
   10d37:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
   10d3b:	83 c1 08             	add    ecx,0x8
   10d3e:	05 a8 00 00 00       	add    eax,0xa8
   10d43:	2e ff a2 dc 05 01 00 	jmp    DWORD PTR cs:[edx+@obj1:go_to_frame_reference_1]             ; fixup: num: 1871, src obj: 1, src ofs: 0x10d46, dst obj: 1, dst ofs: 0x105dc
next_frame_reference_7:
   10d4a:	8b 6c 24 04          	mov    ebp,DWORD PTR [esp+0x4]
   10d4e:	89 5c 24 58          	mov    DWORD PTR [esp+0x58],ebx
   10d52:	31 f6                	xor    esi,esi
   10d54:	89 44 24 74          	mov    DWORD PTR [esp+0x74],eax
   10d58:	89 74 24 50          	mov    DWORD PTR [esp+0x50],esi
   10d5c:	8b 8d ac 00 00 00    	mov    ecx,DWORD PTR [ebp+0xac]
   10d62:	8b 95 a8 00 00 00    	mov    edx,DWORD PTR [ebp+0xa8]
   10d68:	89 4c 24 54          	mov    DWORD PTR [esp+0x54],ecx
   10d6c:	89 54 24 5c          	mov    DWORD PTR [esp+0x5c],edx
next_frame_branch_32:
   10d70:	8b 44 24 54          	mov    eax,DWORD PTR [esp+0x54]
   10d74:	48                   	dec    eax
   10d75:	89 44 24 54          	mov    DWORD PTR [esp+0x54],eax
   10d79:	85 c0                	test   eax,eax
   10d7b:	0f 8c 61 ff ff ff    	jl     next_frame_reference_6
   10d81:	8b 4c 24 58          	mov    ecx,DWORD PTR [esp+0x58]
   10d85:	31 db                	xor    ebx,ebx
   10d87:	30 f6                	xor    dh,dh
   10d89:	89 5c 24 14          	mov    DWORD PTR [esp+0x14],ebx
   10d8d:	41                   	inc    ecx
   10d8e:	88 b4 24 9c 00 00 00 	mov    BYTE PTR [esp+0x9c],dh
   10d95:	89 4c 24 58          	mov    DWORD PTR [esp+0x58],ecx
next_frame_branch_33:
   10d99:	0f be 84 24 9c 00 00 00 	movsx  eax,BYTE PTR [esp+0x9c]
   10da1:	8b 74 24 14          	mov    esi,DWORD PTR [esp+0x14]
   10da5:	01 c6                	add    esi,eax
   10da7:	8b 7c 24 5c          	mov    edi,DWORD PTR [esp+0x5c]
   10dab:	89 74 24 14          	mov    DWORD PTR [esp+0x14],esi
   10daf:	39 fe                	cmp    esi,edi
   10db1:	0f 8d 18 01 00 00    	jge    next_frame_branch_38
   10db7:	8b 44 24 58          	mov    eax,DWORD PTR [esp+0x58]
   10dbb:	8b 54 24 58          	mov    edx,DWORD PTR [esp+0x58]
   10dbf:	8a 00                	mov    al,BYTE PTR [eax]
   10dc1:	42                   	inc    edx
   10dc2:	88 84 24 9c 00 00 00 	mov    BYTE PTR [esp+0x9c],al
   10dc9:	0f be c8             	movsx  ecx,al
   10dcc:	89 54 24 58          	mov    DWORD PTR [esp+0x58],edx
   10dd0:	85 c9                	test   ecx,ecx
   10dd2:	7c 6e                	jl     next_frame_branch_35
   10dd4:	0f be d8             	movsx  ebx,al
   10dd7:	8d 72 01             	lea    esi,[edx+0x1]
   10dda:	8a 02                	mov    al,BYTE PTR [edx]
   10ddc:	31 d2                	xor    edx,edx
   10dde:	88 c2                	mov    dl,al
   10de0:	8b 44 24 74          	mov    eax,DWORD PTR [esp+0x74]
   10de4:	89 74 24 58          	mov    DWORD PTR [esp+0x58],esi
   10de8:	8b 74 24 50          	mov    esi,DWORD PTR [esp+0x50]
   10dec:	0f af 30             	imul   esi,DWORD PTR [eax]
   10def:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
   10df2:	01 f0                	add    eax,esi
   10df4:	8b 74 24 14          	mov    esi,DWORD PTR [esp+0x14]
   10df8:	01 f0                	add    eax,esi
   10dfa:	e8 d1 05 06 00       	call   memset_
   10dff:	89 f2                	mov    edx,esi
   10e01:	89 e8                	mov    eax,ebp
   10e03:	e8 18 03 00 00       	call   update_bounding_box_x
   10e08:	8b 54 24 50          	mov    edx,DWORD PTR [esp+0x50]
   10e0c:	89 e8                	mov    eax,ebp
   10e0e:	e8 ed 02 00 00       	call   update_bounding_box_y
   10e13:	8d 04 0e             	lea    eax,[esi+ecx*1]
   10e16:	89 eb                	mov    ebx,ebp
   10e18:	48                   	dec    eax
   10e19:	8b bd a0 00 00 00    	mov    edi,DWORD PTR [ebp+0xa0]
   10e1f:	89 c2                	mov    edx,eax
   10e21:	39 f8                	cmp    eax,edi
   10e23:	7e 06                	jle    next_frame_branch_34
   10e25:	89 85 a0 00 00 00    	mov    DWORD PTR [ebp+0xa0],eax
next_frame_branch_34:
   10e2b:	3b 93 98 00 00 00    	cmp    edx,DWORD PTR [ebx+0x98]
   10e31:	0f 8d 62 ff ff ff    	jge    next_frame_branch_33
   10e37:	89 93 98 00 00 00    	mov    DWORD PTR [ebx+0x98],edx
   10e3d:	e9 57 ff ff ff       	jmp    next_frame_branch_33
next_frame_branch_35:
   10e42:	88 c3                	mov    bl,al
   10e44:	8b 54 24 74          	mov    edx,DWORD PTR [esp+0x74]
   10e48:	f6 db                	neg    bl
   10e4a:	8b 44 24 50          	mov    eax,DWORD PTR [esp+0x50]
   10e4e:	88 9c 24 9c 00 00 00 	mov    BYTE PTR [esp+0x9c],bl
   10e55:	0f be cb             	movsx  ecx,bl
   10e58:	0f af 02             	imul   eax,DWORD PTR [edx]
   10e5b:	8b 52 08             	mov    edx,DWORD PTR [edx+0x8]
   10e5e:	01 d0                	add    eax,edx
   10e60:	8d 3c 06             	lea    edi,[esi+eax*1]
   10e63:	8b 74 24 58          	mov    esi,DWORD PTR [esp+0x58]
   10e67:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
   10e6b:	57                   	push   edi
   10e6c:	89 c8                	mov    eax,ecx
   10e6e:	c1 e9 02             	shr    ecx,0x2
   10e71:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
   10e73:	8a c8                	mov    cl,al
   10e75:	80 e1 03             	and    cl,0x3
   10e78:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
   10e7a:	5f                   	pop    edi
   10e7b:	89 e8                	mov    eax,ebp
   10e7d:	e8 9e 02 00 00       	call   update_bounding_box_x
   10e82:	8b 54 24 50          	mov    edx,DWORD PTR [esp+0x50]
   10e86:	89 e8                	mov    eax,ebp
   10e88:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
   10e8c:	e8 6f 02 00 00       	call   update_bounding_box_y
   10e91:	0f be 84 24 9c 00 00 00 	movsx  eax,BYTE PTR [esp+0x9c]
   10e99:	01 c8                	add    eax,ecx
   10e9b:	89 eb                	mov    ebx,ebp
   10e9d:	48                   	dec    eax
   10e9e:	8b b5 a0 00 00 00    	mov    esi,DWORD PTR [ebp+0xa0]
   10ea4:	89 c2                	mov    edx,eax
   10ea6:	39 f0                	cmp    eax,esi
   10ea8:	7e 06                	jle    next_frame_branch_36
   10eaa:	89 85 a0 00 00 00    	mov    DWORD PTR [ebp+0xa0],eax
next_frame_branch_36:
   10eb0:	3b 93 98 00 00 00    	cmp    edx,DWORD PTR [ebx+0x98]
   10eb6:	7d 06                	jge    next_frame_branch_37
   10eb8:	89 93 98 00 00 00    	mov    DWORD PTR [ebx+0x98],edx
next_frame_branch_37:
   10ebe:	0f be 84 24 9c 00 00 00 	movsx  eax,BYTE PTR [esp+0x9c]
   10ec6:	01 44 24 58          	add    DWORD PTR [esp+0x58],eax
   10eca:	e9 ca fe ff ff       	jmp    next_frame_branch_33
next_frame_branch_38:
   10ecf:	ff 44 24 50          	inc    DWORD PTR [esp+0x50]
   10ed3:	e9 98 fe ff ff       	jmp    next_frame_branch_32
next_frame_reference_8:
   10ed8:	89 5c 24 60          	mov    DWORD PTR [esp+0x60],ebx
   10edc:	8b 5c 24 04          	mov    ebx,DWORD PTR [esp+0x4]
   10ee0:	8b 93 ac 00 00 00    	mov    edx,DWORD PTR [ebx+0xac]
   10ee6:	31 ed                	xor    ebp,ebp
   10ee8:	89 54 24 64          	mov    DWORD PTR [esp+0x64],edx
   10eec:	8b 93 a8 00 00 00    	mov    edx,DWORD PTR [ebx+0xa8]
   10ef2:	8b 4c 24 64          	mov    ecx,DWORD PTR [esp+0x64]
   10ef6:	89 54 24 68          	mov    DWORD PTR [esp+0x68],edx
   10efa:	85 c9                	test   ecx,ecx
   10efc:	0f 8e e0 fd ff ff    	jle    next_frame_reference_6
   10f02:	89 44 24 6c          	mov    DWORD PTR [esp+0x6c],eax
   10f06:	8d 42 ff             	lea    eax,[edx-0x1]
   10f09:	89 44 24 70          	mov    DWORD PTR [esp+0x70],eax
next_frame_branch_39:
   10f0d:	8b 7c 24 6c          	mov    edi,DWORD PTR [esp+0x6c]
   10f11:	8b 3f                	mov    edi,DWORD PTR [edi]
   10f13:	0f af fd             	imul   edi,ebp
   10f16:	8b 44 24 6c          	mov    eax,DWORD PTR [esp+0x6c]
   10f1a:	8b 4c 24 68          	mov    ecx,DWORD PTR [esp+0x68]
   10f1e:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
   10f21:	8b 74 24 60          	mov    esi,DWORD PTR [esp+0x60]
   10f25:	01 c7                	add    edi,eax
   10f27:	31 d2                	xor    edx,edx
   10f29:	57                   	push   edi
   10f2a:	89 c8                	mov    eax,ecx
   10f2c:	c1 e9 02             	shr    ecx,0x2
   10f2f:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
   10f31:	8a c8                	mov    cl,al
   10f33:	80 e1 03             	and    cl,0x3
   10f36:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
   10f38:	5f                   	pop    edi
   10f39:	89 d8                	mov    eax,ebx
   10f3b:	e8 e0 01 00 00       	call   update_bounding_box_x
   10f40:	89 ea                	mov    edx,ebp
   10f42:	89 d8                	mov    eax,ebx
   10f44:	e8 b7 01 00 00       	call   update_bounding_box_y
   10f49:	8b 44 24 70          	mov    eax,DWORD PTR [esp+0x70]
   10f4d:	8b b3 a0 00 00 00    	mov    esi,DWORD PTR [ebx+0xa0]
   10f53:	89 da                	mov    edx,ebx
   10f55:	39 f0                	cmp    eax,esi
   10f57:	7e 06                	jle    next_frame_branch_40
   10f59:	89 83 a0 00 00 00    	mov    DWORD PTR [ebx+0xa0],eax
next_frame_branch_40:
   10f5f:	3b 82 98 00 00 00    	cmp    eax,DWORD PTR [edx+0x98]
   10f65:	7d 06                	jge    next_frame_branch_41
   10f67:	89 82 98 00 00 00    	mov    DWORD PTR [edx+0x98],eax
next_frame_branch_41:
   10f6d:	8b 44 24 68          	mov    eax,DWORD PTR [esp+0x68]
   10f71:	8b 7c 24 60          	mov    edi,DWORD PTR [esp+0x60]
   10f75:	45                   	inc    ebp
   10f76:	01 c7                	add    edi,eax
   10f78:	8b 44 24 64          	mov    eax,DWORD PTR [esp+0x64]
   10f7c:	89 7c 24 60          	mov    DWORD PTR [esp+0x60],edi
   10f80:	39 c5                	cmp    ebp,eax
   10f82:	0f 8d 5a fd ff ff    	jge    next_frame_reference_6
   10f88:	eb 83                	jmp    next_frame_branch_39
next_frame_branch_42:
   10f8a:	8b 04 24             	mov    eax,DWORD PTR [esp]
   10f8d:	ff 80 88 00 00 00    	inc    DWORD PTR [eax+0x88]
   10f93:	81 c4 a0 00 00 00    	add    esp,0xa0
   10f99:	5d                   	pop    ebp
   10f9a:	5f                   	pop    edi
   10f9b:	5e                   	pop    esi
   10f9c:	5a                   	pop    edx
   10f9d:	59                   	pop    ecx
   10f9e:	5b                   	pop    ebx
   10f9f:	c3                   	ret    
next_frame_branch_43:
   10fa0:	bb a1 12 00 00       	mov    ebx,@obj3:flic_cpp_variable_5                                ; fixup: num: 1873, src obj: 1, src ofs: 0x10fa1, dst obj: 3, dst ofs: 0x12a1
   10fa5:	ba c0 01 00 00       	mov    edx,0x1c0
   10faa:	31 c0                	xor    eax,eax
   10fac:	e8 7f 70 02 00       	call   _error_report
next_frame_branch_44:
   10fb1:	81 c4 a0 00 00 00    	add    esp,0xa0
   10fb7:	5d                   	pop    ebp
   10fb8:	5f                   	pop    edi
   10fb9:	5e                   	pop    esi
   10fba:	5a                   	pop    edx
   10fbb:	59                   	pop    ecx
   10fbc:	5b                   	pop    ebx
   10fbd:	c3                   	ret    
   10fbe:	8b c0                	mov    eax,eax

;-------------------------------------------------
;  Function 'update_mod_11'                      -
;-------------------------------------------------
update_mod_11:
   10fc0:	52                   	push   edx
   10fc1:	8b 15 44 7e 01 00    	mov    edx,DWORD PTR ds:@obj3:current_time                          ; fixup: num: 1872, src obj: 1, src ofs: 0x10fc3, dst obj: 3, dst ofs: 0x17e44
   10fc7:	3b 90 90 00 00 00    	cmp    edx,DWORD PTR [eax+0x90]
   10fcd:	73 04                	jae    update_mod_11_branch_1
   10fcf:	30 c0                	xor    al,al
   10fd1:	5a                   	pop    edx
   10fd2:	c3                   	ret    
update_mod_11_branch_1:
   10fd3:	e8 38 f6 ff ff       	call   next_frame
   10fd8:	b0 01                	mov    al,0x1
   10fda:	5a                   	pop    edx
   10fdb:	c3                   	ret    
   10fdc:	8d 44 20 00          	lea    eax,[eax+eiz*1+0x0]

;-------------------------------------------------
;  Function 'play_mod_11'                        -
;-------------------------------------------------
play_mod_11:
   10fe0:	53                   	push   ebx
   10fe1:	51                   	push   ecx
   10fe2:	56                   	push   esi
   10fe3:	57                   	push   edi
   10fe4:	55                   	push   ebp
   10fe5:	83 ec 08             	sub    esp,0x8
   10fe8:	89 c6                	mov    esi,eax
   10fea:	83 fa ff             	cmp    edx,0xffffffff
   10fed:	75 0b                	jne    play_mod_11_branch_1
   10fef:	8b 80 8c 00 00 00    	mov    eax,DWORD PTR [eax+0x8c]
   10ff5:	83 e8 02             	sub    eax,0x2
   10ff8:	eb 08                	jmp    play_mod_11_branch_2
play_mod_11_branch_1:
   10ffa:	8b 80 88 00 00 00    	mov    eax,DWORD PTR [eax+0x88]
   11000:	01 d0                	add    eax,edx
play_mod_11_branch_2:
   11002:	89 04 24             	mov    DWORD PTR [esp],eax
play_mod_11_branch_3:
   11005:	8b 14 24             	mov    edx,DWORD PTR [esp]
   11008:	3b 96 88 00 00 00    	cmp    edx,DWORD PTR [esi+0x88]
   1100e:	0f 8c 8f 00 00 00    	jl     play_mod_11_branch_8
   11014:	30 d2                	xor    dl,dl
play_mod_11_branch_4:
   11016:	a1 44 7e 01 00       	mov    eax,ds:@obj3:current_time                                    ; fixup: num: 1876, src obj: 1, src ofs: 0x11017, dst obj: 3, dst ofs: 0x17e44
   1101b:	3b 86 90 00 00 00    	cmp    eax,DWORD PTR [esi+0x90]
   11021:	73 04                	jae    play_mod_11_branch_5
   11023:	88 d0                	mov    al,dl
   11025:	eb 09                	jmp    play_mod_11_branch_6
play_mod_11_branch_5:
   11027:	89 f0                	mov    eax,esi
   11029:	e8 e2 f5 ff ff       	call   next_frame
   1102e:	b0 01                	mov    al,0x1
play_mod_11_branch_6:
   11030:	84 c0                	test   al,al
   11032:	75 0c                	jne    play_mod_11_branch_7
   11034:	e8 c9 10 06 00       	call   clock_
   11039:	a3 44 7e 01 00       	mov    ds:@obj3:current_time,eax                                    ; fixup: num: 1875, src obj: 1, src ofs: 0x1103a, dst obj: 3, dst ofs: 0x17e44
   1103e:	eb d6                	jmp    play_mod_11_branch_4
play_mod_11_branch_7:
   11040:	8b 86 a0 00 00 00    	mov    eax,DWORD PTR [esi+0xa0]
   11046:	2b 86 98 00 00 00    	sub    eax,DWORD PTR [esi+0x98]
   1104c:	8d 58 01             	lea    ebx,[eax+0x1]
   1104f:	8b be 9c 00 00 00    	mov    edi,DWORD PTR [esi+0x9c]
   11055:	8b 86 a4 00 00 00    	mov    eax,DWORD PTR [esi+0xa4]
   1105b:	29 f8                	sub    eax,edi
   1105d:	8d 48 01             	lea    ecx,[eax+0x1]
   11060:	8b ae a8 00 00 00    	mov    ebp,DWORD PTR [esi+0xa8]
   11066:	89 f8                	mov    eax,edi
   11068:	0f af c5             	imul   eax,ebp
   1106b:	8b 96 b0 00 00 00    	mov    edx,DWORD PTR [esi+0xb0]
   11071:	8b ae 98 00 00 00    	mov    ebp,DWORD PTR [esi+0x98]
   11077:	01 d0                	add    eax,edx
   11079:	01 c5                	add    ebp,eax
   1107b:	8b 86 a8 00 00 00    	mov    eax,DWORD PTR [esi+0xa8]
   11081:	29 d8                	sub    eax,ebx
   11083:	89 fa                	mov    edx,edi
   11085:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
   11089:	55                   	push   ebp
   1108a:	8b 6c 24 08          	mov    ebp,DWORD PTR [esp+0x8]
   1108e:	8b 3d 34 30 02 00    	mov    edi,DWORD PTR ds:@obj3:the_viewport                          ; fixup: num: 1874, src obj: 1, src ofs: 0x11090, dst obj: 3, dst ofs: 0x23034
   11094:	55                   	push   ebp
   11095:	8b 86 98 00 00 00    	mov    eax,DWORD PTR [esi+0x98]
   1109b:	ff 57 30             	call   DWORD PTR [edi+0x30]
   1109e:	e9 62 ff ff ff       	jmp    play_mod_11_branch_3
play_mod_11_branch_8:
   110a3:	83 c4 08             	add    esp,0x8
   110a6:	5d                   	pop    ebp
   110a7:	5f                   	pop    edi
   110a8:	5e                   	pop    esi
   110a9:	59                   	pop    ecx
   110aa:	5b                   	pop    ebx
   110ab:	c3                   	ret    
;-------------------------------------------------
;  Bad code 13 (zero after ret):                 -
;-------------------------------------------------
;  110aa:	5b                   	pop    ebx
;  110ab:	c3                   	ret    
;  110ac:	00 00                	add    BYTE PTR [eax],al
;  110ae:	00 00                	add    BYTE PTR [eax],al
;-------------------------------------------------
;  Padding data (4 bytes):                       -
;-------------------------------------------------
   110ac:	00 00 00 00          	db     4 dup(0x00)
;-------------------------------------------------
;  End of bad code 13                            -
;-------------------------------------------------

;-------------------------------------------------
;  Function 'update_bounding_box'                -
;-------------------------------------------------
update_bounding_box:
   110b0:	51                   	push   ecx
   110b1:	56                   	push   esi
   110b2:	57                   	push   edi
   110b3:	89 c1                	mov    ecx,eax
   110b5:	8b b8 a0 00 00 00    	mov    edi,DWORD PTR [eax+0xa0]
   110bb:	89 d6                	mov    esi,edx
   110bd:	39 fa                	cmp    edx,edi
   110bf:	7e 06                	jle    update_bounding_box_branch_1
   110c1:	89 90 a0 00 00 00    	mov    DWORD PTR [eax+0xa0],edx
update_bounding_box_branch_1:
   110c7:	3b b1 98 00 00 00    	cmp    esi,DWORD PTR [ecx+0x98]
   110cd:	7d 06                	jge    update_bounding_box_branch_2
   110cf:	89 b1 98 00 00 00    	mov    DWORD PTR [ecx+0x98],esi
update_bounding_box_branch_2:
   110d5:	89 c2                	mov    edx,eax
   110d7:	8b b0 a4 00 00 00    	mov    esi,DWORD PTR [eax+0xa4]
   110dd:	89 d9                	mov    ecx,ebx
   110df:	39 f3                	cmp    ebx,esi
   110e1:	7e 06                	jle    update_bounding_box_branch_3
   110e3:	89 98 a4 00 00 00    	mov    DWORD PTR [eax+0xa4],ebx
update_bounding_box_branch_3:
   110e9:	3b 8a 9c 00 00 00    	cmp    ecx,DWORD PTR [edx+0x9c]
   110ef:	7d 06                	jge    update_bounding_box_branch_4
   110f1:	89 8a 9c 00 00 00    	mov    DWORD PTR [edx+0x9c],ecx
update_bounding_box_branch_4:
   110f7:	5f                   	pop    edi
   110f8:	5e                   	pop    esi
   110f9:	59                   	pop    ecx
   110fa:	c3                   	ret    
;-------------------------------------------------
;  Bad code 14 (zero after ret):                 -
;-------------------------------------------------
;  110f9:	59                   	pop    ecx
;  110fa:	c3                   	ret    
;  110fb:	00 00                	add    BYTE PTR [eax],al
;  110fd:	00 00                	add    BYTE PTR [eax],al
;-------------------------------------------------
;  Padding data (5 bytes):                       -
;-------------------------------------------------
   110fb:	00 00 00 00 00       	db     5 dup(0x00)
;-------------------------------------------------
;  End of bad code 14                            -
;-------------------------------------------------

;-------------------------------------------------
;  Function 'update_bounding_box_y'              -
;-------------------------------------------------
update_bounding_box_y:
   11100:	3b 90 a4 00 00 00    	cmp    edx,DWORD PTR [eax+0xa4]
   11106:	7e 06                	jle    update_bounding_box_y_branch_1
   11108:	89 90 a4 00 00 00    	mov    DWORD PTR [eax+0xa4],edx
update_bounding_box_y_branch_1:
   1110e:	3b 90 9c 00 00 00    	cmp    edx,DWORD PTR [eax+0x9c]
   11114:	7d 06                	jge    update_bounding_box_y_branch_2
   11116:	89 90 9c 00 00 00    	mov    DWORD PTR [eax+0x9c],edx
update_bounding_box_y_branch_2:
   1111c:	c3                   	ret    
   1111d:	8d 40 00             	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'update_bounding_box_x'              -
;-------------------------------------------------
update_bounding_box_x:
   11120:	3b 90 a0 00 00 00    	cmp    edx,DWORD PTR [eax+0xa0]
   11126:	7e 06                	jle    update_bounding_box_x_branch_1
   11128:	89 90 a0 00 00 00    	mov    DWORD PTR [eax+0xa0],edx
update_bounding_box_x_branch_1:
   1112e:	3b 90 98 00 00 00    	cmp    edx,DWORD PTR [eax+0x98]
   11134:	7d 06                	jge    update_bounding_box_x_branch_2
   11136:	89 90 98 00 00 00    	mov    DWORD PTR [eax+0x98],edx
update_bounding_box_x_branch_2:
   1113c:	c3                   	ret    
   1113d:	8d 40 00             	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'put_scanline'                       -
;-------------------------------------------------
put_scanline:
   11140:	56                   	push   esi
   11141:	57                   	push   edi
   11142:	0f af 18             	imul   ebx,DWORD PTR [eax]
   11145:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
   11148:	01 d8                	add    eax,ebx
   1114a:	8b 74 24 0c          	mov    esi,DWORD PTR [esp+0xc]
   1114e:	8d 3c 10             	lea    edi,[eax+edx*1]
   11151:	57                   	push   edi
   11152:	89 c8                	mov    eax,ecx
   11154:	c1 e9 02             	shr    ecx,0x2
   11157:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
   11159:	8a c8                	mov    cl,al
   1115b:	80 e1 03             	and    cl,0x3
   1115e:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
   11160:	5f                   	pop    edi
   11161:	5f                   	pop    edi
   11162:	5e                   	pop    esi
   11163:	c2 04 00             	ret    0x4
   11166:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   1116c:	8d 54 22 00          	lea    edx,[edx+eiz*1+0x0]

;-------------------------------------------------
;  Function 'plot_hline'                         -
;-------------------------------------------------
plot_hline:
   11170:	56                   	push   esi
   11171:	89 de                	mov    esi,ebx
   11173:	89 cb                	mov    ebx,ecx
   11175:	0f af 30             	imul   esi,DWORD PTR [eax]
   11178:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
   1117b:	31 c9                	xor    ecx,ecx
   1117d:	01 f0                	add    eax,esi
   1117f:	8a 4c 24 08          	mov    cl,BYTE PTR [esp+0x8]
   11183:	01 d0                	add    eax,edx
   11185:	89 ca                	mov    edx,ecx
   11187:	e8 44 02 06 00       	call   memset_
   1118c:	5e                   	pop    esi
   1118d:	c2 04 00             	ret    0x4

;-------------------------------------------------
;  Function 'put_pixel'                          -
;-------------------------------------------------
put_pixel:
   11190:	0f af 18             	imul   ebx,DWORD PTR [eax]
   11193:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
   11196:	01 d8                	add    eax,ebx
   11198:	88 0c 02             	mov    BYTE PTR [edx+eax*1],cl
   1119b:	c3                   	ret    
   1119c:	8d 44 20 00          	lea    eax,[eax+eiz*1+0x0]

;-------------------------------------------------
;  Function 'clear'                              -
;-------------------------------------------------
clear:
   111a0:	53                   	push   ebx
   111a1:	51                   	push   ecx
   111a2:	89 d3                	mov    ebx,edx
   111a4:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
   111a7:	0f af 10             	imul   edx,DWORD PTR [eax]
   111aa:	31 c9                	xor    ecx,ecx
   111ac:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
   111af:	88 d9                	mov    cl,bl
   111b1:	89 d3                	mov    ebx,edx
   111b3:	89 ca                	mov    edx,ecx
   111b5:	e8 16 02 06 00       	call   memset_
   111ba:	59                   	pop    ecx
   111bb:	5b                   	pop    ebx
   111bc:	c3                   	ret    
   111bd:	8d 40 00             	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'W?$Wdf0cclear$n(i)v0$:bitmap$n()i'  -
;-------------------------------------------------
W?$Wdf0cclear$n(i)v0$:bitmap$n()i:
   111c0:	31 c0                	xor    eax,eax
   111c2:	c3                   	ret    
   111c3:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   111c9:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
   111cf:	90                   	nop

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 11 (D:\SOURCE\flic.cpp)                                       -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 11: D:\SOURCE\flic.cpp                                               -
;                                                                              -
;-------------------------------------------------------------------------------
flic_cpp_variable_1:
    121c:	66 6c 69 63 2e 63 70 70 00 	db     "flic.cpp",0x00
flic_cpp_variable_2:
    1225:	43 6f 75 6c 64 20 6e 6f 74 20 72 65 61 64 20 66 6c 69 63 20 66 69 6c 65 21 00 	db     "Could not read flic file!",0x00
flic_cpp_variable_3:
    123f:	43 6f 75 6c 64 20 6e 6f 74 20 61 6c 6c 6f 63 61 74 65 20 61 20 62 75 66 66 65 72 20 6f 66 20 25 69 78 25 69 00 	db     "Could not allocate a buffer of %ix%i",0x00
flic_cpp_variable_4:
    1264:	66 6c 69 63 3a 3a 67 6f 5f 74 6f 5f 66 72 61 6d 65 28 29 20 61 74 74 65 6d 70 74 65 64 20 74 6f 20 6a 75 6d 70 20 74 6f 20 61 20 6e 6f 6e 65 78 69 73 74 61 6e 74 20 66 72 61 6d 65 00 	db     "flic::go_to_frame() attempted to jump to a nonexistant frame",0x00
flic_cpp_variable_5:
    12a1:	49 6e 76 61 6c 69 64 20 66 72 61 6d 65 00 	db     "Invalid frame",0x00
    12af:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 11 (D:\SOURCE\flic.cpp)                                       -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 11: D:\SOURCE\flic.cpp                                               -
;                                                                              -
;-------------------------------------------------------------------------------
palette_enable:                                                                                     ; access size: BYTE
   2276c:	00 00 00 00          	db     4 dup(0x00)                                                  ; dec:   0, chr: '\0'

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 11 (D:\SOURCE\flic.cpp)                                       -
;                                                                              -
;-------------------------------------------------------------------------------