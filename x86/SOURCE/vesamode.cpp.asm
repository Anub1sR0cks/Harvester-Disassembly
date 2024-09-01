;-------------------------------------------------------------------------------
;                                                                              -
;  Module 4: D:\SOURCE\vesamode.cpp                                            -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function 'return_super_VGA_information'       -
;-------------------------------------------------
return_super_VGA_information:
    4be0:	53                   	push   ebx
    4be1:	51                   	push   ecx
    4be2:	56                   	push   esi
    4be3:	57                   	push   edi
    4be4:	55                   	push   ebp
    4be5:	83 ec 44             	sub    esp,0x44
    4be8:	89 54 24 40          	mov    DWORD PTR [esp+0x40],edx
    4bec:	89 c5                	mov    ebp,eax
    4bee:	8d 54 24 38          	lea    edx,[esp+0x38]
    4bf2:	b8 10 00 00 00       	mov    eax,0x10
    4bf7:	bb 32 00 00 00       	mov    ebx,0x32
    4bfc:	e8 2f 26 00 00       	call   allocate_dos_block
    4c01:	89 d6                	mov    esi,edx
    4c03:	89 c7                	mov    edi,eax
    4c05:	89 54 24 3c          	mov    DWORD PTR [esp+0x3c],edx
    4c09:	89 44 24 34          	mov    DWORD PTR [esp+0x34],eax
    4c0d:	89 e0                	mov    eax,esp
    4c0f:	31 d2                	xor    edx,edx
    4c11:	8c d9                	mov    ecx,ds
    4c13:	e8 b8 c7 06 00       	call   memset_
    4c18:	ba 00 4f 00 00       	mov    edx,0x4f00
    4c1d:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
    4c21:	31 db                	xor    ebx,ebx
    4c23:	66 89 44 24 22       	mov    WORD PTR [esp+0x22],ax
    4c28:	89 1c 24             	mov    DWORD PTR [esp],ebx
    4c2b:	89 e3                	mov    ebx,esp
    4c2d:	b8 10 00 00 00       	mov    eax,0x10
    4c32:	89 54 24 1c          	mov    DWORD PTR [esp+0x1c],edx
    4c36:	e8 95 26 00 00       	call   simulate_real_mode_interrupt
    4c3b:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
    4c3f:	25 ff ff 00 00       	and    eax,0xffff
    4c44:	83 f8 4f             	cmp    eax,0x4f
    4c47:	75 28                	jne    return_super_VGA_information_branch_1
    4c49:	b8 00 01 00 00       	mov    eax,0x100
    4c4e:	8b 54 24 40          	mov    edx,DWORD PTR [esp+0x40]
    4c52:	89 f1                	mov    ecx,esi
    4c54:	89 fe                	mov    esi,edi
    4c56:	89 ef                	mov    edi,ebp
    4c58:	1e                   	push   ds
    4c59:	06                   	push   es
    4c5a:	57                   	push   edi
    4c5b:	91                   	xchg   ecx,eax
    4c5c:	8e d8                	mov    ds,eax
    4c5e:	8e c2                	mov    es,edx
    4c60:	89 c8                	mov    eax,ecx
    4c62:	c1 e9 02             	shr    ecx,0x2
    4c65:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
    4c67:	8a c8                	mov    cl,al
    4c69:	80 e1 03             	and    cl,0x3
    4c6c:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
    4c6e:	58                   	pop    eax
    4c6f:	07                   	pop    es
    4c70:	1f                   	pop    ds
return_super_VGA_information_branch_1:
    4c71:	8b 54 24 3c          	mov    edx,DWORD PTR [esp+0x3c]
    4c75:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
    4c79:	e8 02 26 00 00       	call   free_dos_block
    4c7e:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
    4c82:	25 ff ff 00 00       	and    eax,0xffff
    4c87:	83 f8 4f             	cmp    eax,0x4f
    4c8a:	75 34                	jne    return_super_VGA_information_branch_2
    4c8c:	8e 6c 24 40          	mov    gs,WORD PTR [esp+0x40]
    4c90:	31 c0                	xor    eax,eax
    4c92:	65 8a 45 00          	mov    al,BYTE PTR gs:[ebp+0x0]
    4c96:	83 f8 56             	cmp    eax,0x56
    4c99:	75 25                	jne    return_super_VGA_information_branch_2
    4c9b:	31 c0                	xor    eax,eax
    4c9d:	65 8a 45 01          	mov    al,BYTE PTR gs:[ebp+0x1]
    4ca1:	83 f8 45             	cmp    eax,0x45
    4ca4:	75 1a                	jne    return_super_VGA_information_branch_2
    4ca6:	31 c0                	xor    eax,eax
    4ca8:	65 8a 45 02          	mov    al,BYTE PTR gs:[ebp+0x2]
    4cac:	83 f8 53             	cmp    eax,0x53
    4caf:	75 0f                	jne    return_super_VGA_information_branch_2
    4cb1:	31 c0                	xor    eax,eax
    4cb3:	65 8a 45 03          	mov    al,BYTE PTR gs:[ebp+0x3]
    4cb7:	83 f8 41             	cmp    eax,0x41
    4cba:	75 04                	jne    return_super_VGA_information_branch_2
    4cbc:	b0 01                	mov    al,0x1
    4cbe:	eb 02                	jmp    return_super_VGA_information_branch_3
return_super_VGA_information_branch_2:
    4cc0:	30 c0                	xor    al,al
return_super_VGA_information_branch_3:
    4cc2:	83 c4 44             	add    esp,0x44
    4cc5:	5d                   	pop    ebp
    4cc6:	5f                   	pop    edi
    4cc7:	5e                   	pop    esi
    4cc8:	59                   	pop    ecx
    4cc9:	5b                   	pop    ebx
    4cca:	c3                   	ret    
    4ccb:	8d 40 00             	lea    eax,[eax+0x0]
    4cce:	8b c9                	mov    ecx,ecx

;-------------------------------------------------
;  Function 'return_super_VGA_mode_information'  -
;-------------------------------------------------
return_super_VGA_mode_information:
    4cd0:	52                   	push   edx
    4cd1:	56                   	push   esi
    4cd2:	57                   	push   edi
    4cd3:	55                   	push   ebp
    4cd4:	83 ec 48             	sub    esp,0x48
    4cd7:	89 44 24 44          	mov    DWORD PTR [esp+0x44],eax
    4cdb:	89 4c 24 40          	mov    DWORD PTR [esp+0x40],ecx
    4cdf:	89 dd                	mov    ebp,ebx
    4ce1:	8d 54 24 38          	lea    edx,[esp+0x38]
    4ce5:	b8 10 00 00 00       	mov    eax,0x10
    4cea:	bb 32 00 00 00       	mov    ebx,0x32
    4cef:	e8 3c 25 00 00       	call   allocate_dos_block
    4cf4:	89 d6                	mov    esi,edx
    4cf6:	89 c7                	mov    edi,eax
    4cf8:	89 54 24 3c          	mov    DWORD PTR [esp+0x3c],edx
    4cfc:	89 44 24 34          	mov    DWORD PTR [esp+0x34],eax
    4d00:	89 e0                	mov    eax,esp
    4d02:	31 d2                	xor    edx,edx
    4d04:	8c d9                	mov    ecx,ds
    4d06:	e8 c5 c6 06 00       	call   memset_
    4d0b:	ba 01 4f 00 00       	mov    edx,0x4f01
    4d10:	0f bf 44 24 44       	movsx  eax,WORD PTR [esp+0x44]
    4d15:	31 db                	xor    ebx,ebx
    4d17:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
    4d1b:	89 1c 24             	mov    DWORD PTR [esp],ebx
    4d1e:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
    4d22:	89 e3                	mov    ebx,esp
    4d24:	66 89 44 24 22       	mov    WORD PTR [esp+0x22],ax
    4d29:	b8 10 00 00 00       	mov    eax,0x10
    4d2e:	89 54 24 1c          	mov    DWORD PTR [esp+0x1c],edx
    4d32:	e8 99 25 00 00       	call   simulate_real_mode_interrupt
    4d37:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
    4d3b:	25 ff ff 00 00       	and    eax,0xffff
    4d40:	83 f8 4f             	cmp    eax,0x4f
    4d43:	75 28                	jne    return_super_VGA_mode_information_branch_1
    4d45:	b8 1d 00 00 00       	mov    eax,0x1d
    4d4a:	8b 54 24 40          	mov    edx,DWORD PTR [esp+0x40]
    4d4e:	89 f1                	mov    ecx,esi
    4d50:	89 fe                	mov    esi,edi
    4d52:	89 ef                	mov    edi,ebp
    4d54:	1e                   	push   ds
    4d55:	06                   	push   es
    4d56:	57                   	push   edi
    4d57:	91                   	xchg   ecx,eax
    4d58:	8e d8                	mov    ds,eax
    4d5a:	8e c2                	mov    es,edx
    4d5c:	89 c8                	mov    eax,ecx
    4d5e:	c1 e9 02             	shr    ecx,0x2
    4d61:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
    4d63:	8a c8                	mov    cl,al
    4d65:	80 e1 03             	and    cl,0x3
    4d68:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
    4d6a:	58                   	pop    eax
    4d6b:	07                   	pop    es
    4d6c:	1f                   	pop    ds
return_super_VGA_mode_information_branch_1:
    4d6d:	8b 54 24 3c          	mov    edx,DWORD PTR [esp+0x3c]
    4d71:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
    4d75:	e8 06 25 00 00       	call   free_dos_block
    4d7a:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
    4d7e:	25 ff ff 00 00       	and    eax,0xffff
    4d83:	83 f8 4f             	cmp    eax,0x4f
    4d86:	0f 94 c0             	sete   al
    4d89:	83 c4 48             	add    esp,0x48
    4d8c:	5d                   	pop    ebp
    4d8d:	5f                   	pop    edi
    4d8e:	5e                   	pop    esi
    4d8f:	5a                   	pop    edx
    4d90:	c3                   	ret    
    4d91:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    4d97:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
    4d9d:	8d 40 00             	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'set_super_VGA_video_mode'           -
;-------------------------------------------------
set_super_VGA_video_mode:
    4da0:	53                   	push   ebx
    4da1:	51                   	push   ecx
    4da2:	52                   	push   edx
    4da3:	56                   	push   esi
    4da4:	83 ec 6c             	sub    esp,0x6c
    4da7:	89 c6                	mov    esi,eax
    4da9:	bb 32 00 00 00       	mov    ebx,0x32
    4dae:	8d 44 24 34          	lea    eax,[esp+0x34]
    4db2:	31 d2                	xor    edx,edx
    4db4:	e8 17 c6 06 00       	call   memset_
    4db9:	8c d9                	mov    ecx,ds
    4dbb:	ba 03 4f 00 00       	mov    edx,0x4f03
    4dc0:	8d 5c 24 34          	lea    ebx,[esp+0x34]
    4dc4:	b8 10 00 00 00       	mov    eax,0x10
    4dc9:	89 54 24 50          	mov    DWORD PTR [esp+0x50],edx
    4dcd:	e8 fe 24 00 00       	call   simulate_real_mode_interrupt
    4dd2:	8b 44 24 50          	mov    eax,DWORD PTR [esp+0x50]
    4dd6:	25 ff ff 00 00       	and    eax,0xffff
    4ddb:	83 f8 4f             	cmp    eax,0x4f
    4dde:	75 08                	jne    set_super_VGA_video_mode_branch_1
    4de0:	8b 44 24 44          	mov    eax,DWORD PTR [esp+0x44]
    4de4:	89 44 24 68          	mov    DWORD PTR [esp+0x68],eax
set_super_VGA_video_mode_branch_1:
    4de8:	66 3b 74 24 68       	cmp    si,WORD PTR [esp+0x68]
    4ded:	74 3e                	je     set_super_VGA_video_mode_branch_2
    4def:	bb 32 00 00 00       	mov    ebx,0x32
    4df4:	89 e0                	mov    eax,esp
    4df6:	31 d2                	xor    edx,edx
    4df8:	e8 d3 c5 06 00       	call   memset_
    4dfd:	8c d9                	mov    ecx,ds
    4dff:	bb 02 4f 00 00       	mov    ebx,0x4f02
    4e04:	0f bf c6             	movsx  eax,si
    4e07:	89 5c 24 1c          	mov    DWORD PTR [esp+0x1c],ebx
    4e0b:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
    4e0f:	89 e3                	mov    ebx,esp
    4e11:	b8 10 00 00 00       	mov    eax,0x10
    4e16:	e8 b5 24 00 00       	call   simulate_real_mode_interrupt
    4e1b:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
    4e1f:	25 ff ff 00 00       	and    eax,0xffff
    4e24:	83 f8 4f             	cmp    eax,0x4f
    4e27:	74 04                	je     set_super_VGA_video_mode_branch_2
    4e29:	30 c0                	xor    al,al
    4e2b:	eb 02                	jmp    set_super_VGA_video_mode_branch_3
set_super_VGA_video_mode_branch_2:
    4e2d:	b0 01                	mov    al,0x1
set_super_VGA_video_mode_branch_3:
    4e2f:	83 c4 6c             	add    esp,0x6c
    4e32:	5e                   	pop    esi
    4e33:	5a                   	pop    edx
    4e34:	59                   	pop    ecx
    4e35:	5b                   	pop    ebx
    4e36:	c3                   	ret    
    4e37:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    4e3d:	8d 52 00             	lea    edx,[edx+0x0]

;-------------------------------------------------
;  Function 'return_current_video_mode'          -
;-------------------------------------------------
return_current_video_mode:
    4e40:	53                   	push   ebx
    4e41:	51                   	push   ecx
    4e42:	52                   	push   edx
    4e43:	56                   	push   esi
    4e44:	83 ec 34             	sub    esp,0x34
    4e47:	89 c6                	mov    esi,eax
    4e49:	bb 32 00 00 00       	mov    ebx,0x32
    4e4e:	89 e0                	mov    eax,esp
    4e50:	31 d2                	xor    edx,edx
    4e52:	e8 79 c5 06 00       	call   memset_
    4e57:	8c d9                	mov    ecx,ds
    4e59:	ba 03 4f 00 00       	mov    edx,0x4f03
    4e5e:	89 e3                	mov    ebx,esp
    4e60:	b8 10 00 00 00       	mov    eax,0x10
    4e65:	89 54 24 1c          	mov    DWORD PTR [esp+0x1c],edx
    4e69:	e8 62 24 00 00       	call   simulate_real_mode_interrupt
    4e6e:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
    4e72:	25 ff ff 00 00       	and    eax,0xffff
    4e77:	83 f8 4f             	cmp    eax,0x4f
    4e7a:	75 0b                	jne    return_current_video_mode_branch_1
    4e7c:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
    4e80:	66 89 06             	mov    WORD PTR [esi],ax
    4e83:	b0 01                	mov    al,0x1
    4e85:	eb 02                	jmp    return_current_video_mode_branch_2
return_current_video_mode_branch_1:
    4e87:	30 c0                	xor    al,al
return_current_video_mode_branch_2:
    4e89:	83 c4 34             	add    esp,0x34
    4e8c:	5e                   	pop    esi
    4e8d:	5a                   	pop    edx
    4e8e:	59                   	pop    ecx
    4e8f:	5b                   	pop    ebx
    4e90:	c3                   	ret    
    4e91:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    4e97:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
    4e9d:	8d 40 00             	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function                                      -
;  'select_super_VGA_video_memory_window'        -
;-------------------------------------------------
select_super_VGA_video_memory_window:
    4ea0:	53                   	push   ebx
    4ea1:	83 ec 1c             	sub    esp,0x1c
    4ea4:	c7 04 24 05 4f 00 00 	mov    DWORD PTR [esp],0x4f05
    4eab:	25 ff 00 00 00       	and    eax,0xff
    4eb0:	89 e3                	mov    ebx,esp
    4eb2:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
    4eb6:	0f bf c2             	movsx  eax,dx
    4eb9:	89 e2                	mov    edx,esp
    4ebb:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
    4ebf:	b8 10 00 00 00       	mov    eax,0x10
    4ec4:	e8 d3 c1 06 00       	call   int386_
    4ec9:	b0 01                	mov    al,0x1
    4ecb:	83 c4 1c             	add    esp,0x1c
    4ece:	5b                   	pop    ebx
    4ecf:	c3                   	ret    

;-------------------------------------------------
;  Function 'set_super_VGA_display_start'        -
;-------------------------------------------------
set_super_VGA_display_start:
    4ed0:	53                   	push   ebx
    4ed1:	51                   	push   ecx
    4ed2:	83 ec 1c             	sub    esp,0x1c
    4ed5:	bb 07 4f 00 00       	mov    ebx,0x4f07
    4eda:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
    4ede:	89 54 24 0c          	mov    DWORD PTR [esp+0xc],edx
    4ee2:	31 c9                	xor    ecx,ecx
    4ee4:	89 e2                	mov    edx,esp
    4ee6:	b8 10 00 00 00       	mov    eax,0x10
    4eeb:	89 1c 24             	mov    DWORD PTR [esp],ebx
    4eee:	89 e3                	mov    ebx,esp
    4ef0:	89 4c 24 04          	mov    DWORD PTR [esp+0x4],ecx
    4ef4:	e8 a3 c1 06 00       	call   int386_
    4ef9:	83 c4 1c             	add    esp,0x1c
    4efc:	59                   	pop    ecx
    4efd:	5b                   	pop    ebx
    4efe:	c3                   	ret    
    4eff:	90                   	nop

;-------------------------------------------------
;  Function 'VESA_bank_switch'                   -
;-------------------------------------------------
VESA_bank_switch:
    4f00:	53                   	push   ebx
    4f01:	51                   	push   ecx
    4f02:	52                   	push   edx
    4f03:	89 c3                	mov    ebx,eax
    4f05:	ba ff ff ff ff       	mov    edx,0xffffffff
    4f0a:	a1 cc 9f 01 00       	mov    eax,ds:@obj3:window_size                                     ; fixup: num: 346, src obj: 1, src ofs: 0x4f0b, dst obj: 3, dst ofs: 0x19fcc
    4f0f:	0f bf 0d b2 7f 01 00 	movsx  ecx,WORD PTR ds:@obj3:VESA_window_granularity                ; fixup: num: 345, src obj: 1, src ofs: 0x4f12, dst obj: 3, dst ofs: 0x17fb2
    4f16:	66 89 15 c4 7f 01 00 	mov    WORD PTR ds:@obj3:VESA_writeable_window_position,dx          ; fixup: num: 344, src obj: 1, src ofs: 0x4f19, dst obj: 3, dst ofs: 0x17fc4
    4f1d:	c1 e8 0a             	shr    eax,0xa
    4f20:	31 d2                	xor    edx,edx
    4f22:	f7 f1                	div    ecx
    4f24:	0f af c3             	imul   eax,ebx
    4f27:	0f bf d0             	movsx  edx,ax
    4f2a:	31 c0                	xor    eax,eax
    4f2c:	a0 c1 7f 01 00       	mov    al,ds:@obj3:VESA_writeable_number                            ; fixup: num: 343, src obj: 1, src ofs: 0x4f2d, dst obj: 3, dst ofs: 0x17fc1
    4f31:	e8 6a ff ff ff       	call   select_super_VGA_video_memory_window
    4f36:	5a                   	pop    edx
    4f37:	59                   	pop    ecx
    4f38:	5b                   	pop    ebx
    4f39:	c3                   	ret    
    4f3a:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'VESA_bank_switch_short'             -
;-------------------------------------------------
VESA_bank_switch_short:
    4f40:	52                   	push   edx
    4f41:	0f bf d0             	movsx  edx,ax
    4f44:	31 c0                	xor    eax,eax
    4f46:	a0 c1 7f 01 00       	mov    al,ds:@obj3:VESA_writeable_number                            ; fixup: num: 342, src obj: 1, src ofs: 0x4f47, dst obj: 3, dst ofs: 0x17fc1
    4f4b:	e8 50 ff ff ff       	call   select_super_VGA_video_memory_window
    4f50:	5a                   	pop    edx
    4f51:	c3                   	ret    
VESA_bank_switch_short_branch_1:
    4f52:	0f bf c6             	movsx  eax,si
    4f55:	89 74 24 40          	mov    DWORD PTR [esp+0x40],esi
    4f59:	3d 00 01 00 00       	cmp    eax,0x100
    4f5e:	75 1d                	jne    VESA_bank_switch_short_branch_2
    4f60:	b9 80 02 00 00       	mov    ecx,0x280
    4f65:	be 90 01 00 00       	mov    esi,0x190
    4f6a:	66 89 0d c6 7f 01 00 	mov    WORD PTR ds:@obj3:VESA_horizontal_resolution,cx              ; fixup: num: 290, src obj: 1, src ofs: 0x4f6d, dst obj: 3, dst ofs: 0x17fc6
    4f71:	66 89 35 c8 7f 01 00 	mov    WORD PTR ds:@obj3:VESA_vertical_resolution,si                ; fixup: num: 289, src obj: 1, src ofs: 0x4f74, dst obj: 3, dst ofs: 0x17fc8
    4f78:	e9 7a 00 00 00       	jmp    VESA_bank_switch_short_branch_8
VESA_bank_switch_short_branch_2:
    4f7d:	3d 01 01 00 00       	cmp    eax,0x101
    4f82:	75 0c                	jne    VESA_bank_switch_short_branch_3
    4f84:	ba 80 02 00 00       	mov    edx,0x280
    4f89:	bb e0 01 00 00       	mov    ebx,0x1e0
    4f8e:	eb 59                	jmp    VESA_bank_switch_short_branch_7
VESA_bank_switch_short_branch_3:
    4f90:	3d 03 01 00 00       	cmp    eax,0x103
    4f95:	75 19                	jne    VESA_bank_switch_short_branch_4
    4f97:	bf 20 03 00 00       	mov    edi,0x320
    4f9c:	b8 58 02 00 00       	mov    eax,0x258
    4fa1:	66 89 3d c6 7f 01 00 	mov    WORD PTR ds:@obj3:VESA_horizontal_resolution,di              ; fixup: num: 352, src obj: 1, src ofs: 0x4fa4, dst obj: 3, dst ofs: 0x17fc6
    4fa8:	66 a3 c8 7f 01 00    	mov    ds:@obj3:VESA_vertical_resolution,ax                         ; fixup: num: 351, src obj: 1, src ofs: 0x4faa, dst obj: 3, dst ofs: 0x17fc8
    4fae:	eb 47                	jmp    VESA_bank_switch_short_branch_8
VESA_bank_switch_short_branch_4:
    4fb0:	3d 05 01 00 00       	cmp    eax,0x105
    4fb5:	75 1a                	jne    VESA_bank_switch_short_branch_5
    4fb7:	b9 00 04 00 00       	mov    ecx,0x400
    4fbc:	be 00 03 00 00       	mov    esi,0x300
    4fc1:	66 89 0d c6 7f 01 00 	mov    WORD PTR ds:@obj3:VESA_horizontal_resolution,cx              ; fixup: num: 350, src obj: 1, src ofs: 0x4fc4, dst obj: 3, dst ofs: 0x17fc6
    4fc8:	66 89 35 c8 7f 01 00 	mov    WORD PTR ds:@obj3:VESA_vertical_resolution,si                ; fixup: num: 349, src obj: 1, src ofs: 0x4fcb, dst obj: 3, dst ofs: 0x17fc8
    4fcf:	eb 26                	jmp    VESA_bank_switch_short_branch_8
VESA_bank_switch_short_branch_5:
    4fd1:	3d 07 01 00 00       	cmp    eax,0x107
    4fd6:	74 07                	je     VESA_bank_switch_short_branch_6
    4fd8:	30 c0                	xor    al,al
    4fda:	e9 4c 04 00 00       	jmp    VESA_bank_switch_short_branch_33
VESA_bank_switch_short_branch_6:
    4fdf:	ba 00 05 00 00       	mov    edx,0x500
    4fe4:	bb 00 04 00 00       	mov    ebx,0x400
VESA_bank_switch_short_branch_7:
    4fe9:	66 89 15 c6 7f 01 00 	mov    WORD PTR ds:@obj3:VESA_horizontal_resolution,dx              ; fixup: num: 348, src obj: 1, src ofs: 0x4fec, dst obj: 3, dst ofs: 0x17fc6
    4ff0:	66 89 1d c8 7f 01 00 	mov    WORD PTR ds:@obj3:VESA_vertical_resolution,bx                ; fixup: num: 347, src obj: 1, src ofs: 0x4ff3, dst obj: 3, dst ofs: 0x17fc8
VESA_bank_switch_short_branch_8:
    4ff7:	8d 54 24 3c          	lea    edx,[esp+0x3c]
    4ffb:	b8 10 00 00 00       	mov    eax,0x10
    5000:	bb 32 00 00 00       	mov    ebx,0x32
    5005:	e8 26 22 00 00       	call   allocate_dos_block
    500a:	89 d6                	mov    esi,edx
    500c:	89 c7                	mov    edi,eax
    500e:	89 54 24 44          	mov    DWORD PTR [esp+0x44],edx
    5012:	89 c5                	mov    ebp,eax
    5014:	89 e0                	mov    eax,esp
    5016:	31 d2                	xor    edx,edx
    5018:	31 c9                	xor    ecx,ecx
    501a:	e8 b1 c3 06 00       	call   memset_
    501f:	bb 01 4f 00 00       	mov    ebx,0x4f01
    5024:	0f bf 44 24 40       	movsx  eax,WORD PTR [esp+0x40]
    5029:	89 0c 24             	mov    DWORD PTR [esp],ecx
    502c:	89 5c 24 1c          	mov    DWORD PTR [esp+0x1c],ebx
    5030:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
    5034:	8c d9                	mov    ecx,ds
    5036:	8b 44 24 3c          	mov    eax,DWORD PTR [esp+0x3c]
    503a:	89 e3                	mov    ebx,esp
    503c:	66 89 44 24 22       	mov    WORD PTR [esp+0x22],ax
    5041:	b8 10 00 00 00       	mov    eax,0x10
    5046:	e8 85 22 00 00       	call   simulate_real_mode_interrupt
    504b:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
    504f:	25 ff ff 00 00       	and    eax,0xffff
    5054:	83 f8 4f             	cmp    eax,0x4f
    5057:	75 29                	jne    VESA_bank_switch_short_branch_9
    5059:	b8 1d 00 00 00       	mov    eax,0x1d
    505e:	89 f1                	mov    ecx,esi
    5060:	8c da                	mov    edx,ds
    5062:	89 fe                	mov    esi,edi
    5064:	bf 94 7f 01 00       	mov    edi,@obj3:VESA_mode_info_block                               ; fixup: num: 529, src obj: 1, src ofs: 0x5065, dst obj: 3, dst ofs: 0x17f94
    5069:	1e                   	push   ds
    506a:	06                   	push   es
    506b:	57                   	push   edi
    506c:	91                   	xchg   ecx,eax
    506d:	8e d8                	mov    ds,eax
    506f:	8e c2                	mov    es,edx
    5071:	89 c8                	mov    eax,ecx
    5073:	c1 e9 02             	shr    ecx,0x2
    5076:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
    5078:	8a c8                	mov    cl,al
    507a:	80 e1 03             	and    cl,0x3
    507d:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
    507f:	58                   	pop    eax
    5080:	07                   	pop    es
    5081:	1f                   	pop    ds
VESA_bank_switch_short_branch_9:
    5082:	8b 54 24 44          	mov    edx,DWORD PTR [esp+0x44]
    5086:	89 e8                	mov    eax,ebp
    5088:	e8 f3 21 00 00       	call   free_dos_block
    508d:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
    5091:	25 ff ff 00 00       	and    eax,0xffff
    5096:	83 f8 4f             	cmp    eax,0x4f
    5099:	0f 94 c0             	sete   al
    509c:	84 c0                	test   al,al
    509e:	75 11                	jne    VESA_bank_switch_short_branch_10
    50a0:	bb 7d 05 00 00       	mov    ebx,@obj3:vesamode_cpp_variable_2                            ; fixup: num: 528, src obj: 1, src ofs: 0x50a1, dst obj: 3, dst ofs: 0x57d
    50a5:	ba 75 01 00 00       	mov    edx,0x175
    50aa:	31 c0                	xor    eax,eax
    50ac:	e8 7f 2f 03 00       	call   _error_report
VESA_bank_switch_short_branch_10:
    50b1:	66 a1 94 7f 01 00    	mov    ax,ds:@obj3:VESA_mode_info_block                             ; fixup: num: 539, src obj: 1, src ofs: 0x50b3, dst obj: 3, dst ofs: 0x17f94
    50b7:	30 e4                	xor    ah,ah
    50b9:	24 01                	and    al,0x1
    50bb:	25 ff ff 00 00       	and    eax,0xffff
    50c0:	83 f8 01             	cmp    eax,0x1
    50c3:	74 11                	je     VESA_bank_switch_short_branch_11
    50c5:	bb b4 05 00 00       	mov    ebx,@obj3:vesamode_cpp_variable_3                            ; fixup: num: 538, src obj: 1, src ofs: 0x50c6, dst obj: 3, dst ofs: 0x5b4
    50ca:	ba 76 01 00 00       	mov    edx,0x176
    50cf:	31 c0                	xor    eax,eax
    50d1:	e8 5a 2f 03 00       	call   _error_report
VESA_bank_switch_short_branch_11:
    50d6:	66 a1 94 7f 01 00    	mov    ax,ds:@obj3:VESA_mode_info_block                             ; fixup: num: 537, src obj: 1, src ofs: 0x50d8, dst obj: 3, dst ofs: 0x17f94
    50dc:	c1 e0 0c             	shl    eax,0xc
    50df:	66 c1 e8 0f          	shr    ax,0xf
    50e3:	25 ff ff 00 00       	and    eax,0xffff
    50e8:	83 f8 01             	cmp    eax,0x1
    50eb:	74 11                	je     VESA_bank_switch_short_branch_12
    50ed:	bb f6 05 00 00       	mov    ebx,@obj3:vesamode_cpp_variable_4                            ; fixup: num: 536, src obj: 1, src ofs: 0x50ee, dst obj: 3, dst ofs: 0x5f6
    50f2:	ba 77 01 00 00       	mov    edx,0x177
    50f7:	31 c0                	xor    eax,eax
    50f9:	e8 32 2f 03 00       	call   _error_report
VESA_bank_switch_short_branch_12:
    50fe:	66 a1 98 7f 01 00    	mov    ax,ds:@obj3:VESA_mode_info_block_variable_3                  ; fixup: num: 535, src obj: 1, src ofs: 0x5100, dst obj: 3, dst ofs: 0x17f98
    5104:	31 c9                	xor    ecx,ecx
    5106:	31 ed                	xor    ebp,ebp
    5108:	66 a3 b2 7f 01 00    	mov    ds:@obj3:VESA_window_granularity,ax                          ; fixup: num: 534, src obj: 1, src ofs: 0x510a, dst obj: 3, dst ofs: 0x17fb2
    510e:	66 a1 9a 7f 01 00    	mov    ax,ds:@obj3:VESA_mode_info_block_variable_4                  ; fixup: num: 533, src obj: 1, src ofs: 0x5110, dst obj: 3, dst ofs: 0x17f9a
    5114:	89 4c 24 34          	mov    DWORD PTR [esp+0x34],ecx
    5118:	66 a3 b4 7f 01 00    	mov    ds:@obj3:VESA_window_size,ax                                 ; fixup: num: 532, src obj: 1, src ofs: 0x511a, dst obj: 3, dst ofs: 0x17fb4
    511e:	66 a1 a4 7f 01 00    	mov    ax,ds:@obj3:VESA_mode_info_block_variable_7                  ; fixup: num: 531, src obj: 1, src ofs: 0x5120, dst obj: 3, dst ofs: 0x17fa4
    5124:	89 4c 24 38          	mov    DWORD PTR [esp+0x38],ecx
    5128:	66 a3 b6 7f 01 00    	mov    ds:@obj3:VESA_bytes_per_scan_line,ax                         ; fixup: num: 530, src obj: 1, src ofs: 0x512a, dst obj: 3, dst ofs: 0x17fb6
    512e:	eb 30                	jmp    VESA_bank_switch_short_branch_14
VESA_bank_switch_short_branch_13:
    5130:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
    5134:	8b 54 24 38          	mov    edx,DWORD PTR [esp+0x38]
    5138:	45                   	inc    ebp
    5139:	83 c0 02             	add    eax,0x2
    513c:	83 c2 04             	add    edx,0x4
    513f:	89 44 24 34          	mov    DWORD PTR [esp+0x34],eax
    5143:	89 54 24 38          	mov    DWORD PTR [esp+0x38],edx
    5147:	81 fd 00 04 00 00    	cmp    ebp,0x400
    514d:	0f 8d b7 00 00 00    	jge    VESA_bank_switch_short_branch_18
    5153:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    5159:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
    515f:	90                   	nop
VESA_bank_switch_short_branch_14:
    5160:	0f bf 15 b2 7f 01 00 	movsx  edx,WORD PTR ds:@obj3:VESA_window_granularity                ; fixup: num: 553, src obj: 1, src ofs: 0x5163, dst obj: 3, dst ofs: 0x17fb2
    5167:	0f af d1             	imul   edx,ecx
    516a:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
    516e:	66 89 88 ca 7f 01 00 	mov    WORD PTR [eax+@obj3:line_start_table_window_offsets],cx      ; fixup: num: 552, src obj: 1, src ofs: 0x5171, dst obj: 3, dst ofs: 0x17fca
    5175:	0f bf 05 b6 7f 01 00 	movsx  eax,WORD PTR ds:@obj3:VESA_bytes_per_scan_line               ; fixup: num: 551, src obj: 1, src ofs: 0x5178, dst obj: 3, dst ofs: 0x17fb6
    517c:	0f af c5             	imul   eax,ebp
    517f:	c1 e2 0a             	shl    edx,0xa
    5182:	29 d0                	sub    eax,edx
    5184:	8b 54 24 38          	mov    edx,DWORD PTR [esp+0x38]
    5188:	89 82 cc 87 01 00    	mov    DWORD PTR [edx+@obj3:line_start_table_offset_offsets],eax    ; fixup: num: 550, src obj: 1, src ofs: 0x518a, dst obj: 3, dst ofs: 0x187cc
    518e:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
    5192:	bb ff ff ff ff       	mov    ebx,0xffffffff
    5197:	89 c6                	mov    esi,eax
    5199:	66 89 98 cc 97 01 00 	mov    WORD PTR [eax+@obj3:line_start_table_split],bx               ; fixup: num: 549, src obj: 1, src ofs: 0x519c, dst obj: 3, dst ofs: 0x197cc
    51a0:	31 db                	xor    ebx,ebx
    51a2:	eb 01                	jmp    VESA_bank_switch_short_branch_16
VESA_bank_switch_short_branch_15:
    51a4:	43                   	inc    ebx
VESA_bank_switch_short_branch_16:
    51a5:	0f bf 05 c6 7f 01 00 	movsx  eax,WORD PTR ds:@obj3:VESA_horizontal_resolution             ; fixup: num: 548, src obj: 1, src ofs: 0x51a8, dst obj: 3, dst ofs: 0x17fc6
    51ac:	39 c3                	cmp    ebx,eax
    51ae:	7d 80                	jge    VESA_bank_switch_short_branch_13
    51b0:	0f bf 05 b6 7f 01 00 	movsx  eax,WORD PTR ds:@obj3:VESA_bytes_per_scan_line               ; fixup: num: 547, src obj: 1, src ofs: 0x51b3, dst obj: 3, dst ofs: 0x17fb6
    51b7:	0f af c5             	imul   eax,ebp
    51ba:	8d 14 18             	lea    edx,[eax+ebx*1]
    51bd:	0f bf 05 b2 7f 01 00 	movsx  eax,WORD PTR ds:@obj3:VESA_window_granularity                ; fixup: num: 546, src obj: 1, src ofs: 0x51c0, dst obj: 3, dst ofs: 0x17fb2
    51c4:	0f af c1             	imul   eax,ecx
    51c7:	c1 e0 0a             	shl    eax,0xa
    51ca:	39 c2                	cmp    edx,eax
    51cc:	7c 10                	jl     VESA_bank_switch_short_branch_17
    51ce:	0f bf 3d b4 7f 01 00 	movsx  edi,WORD PTR ds:@obj3:VESA_window_size                       ; fixup: num: 545, src obj: 1, src ofs: 0x51d1, dst obj: 3, dst ofs: 0x17fb4
    51d5:	c1 e7 0a             	shl    edi,0xa
    51d8:	01 f8                	add    eax,edi
    51da:	39 c2                	cmp    edx,eax
    51dc:	7c c6                	jl     VESA_bank_switch_short_branch_15
VESA_bank_switch_short_branch_17:
    51de:	0f bf 86 cc 97 01 00 	movsx  eax,WORD PTR [esi+@obj3:line_start_table_split]              ; fixup: num: 544, src obj: 1, src ofs: 0x51e1, dst obj: 3, dst ofs: 0x197cc
    51e5:	83 f8 ff             	cmp    eax,0xffffffff
    51e8:	75 ba                	jne    VESA_bank_switch_short_branch_15
    51ea:	0f bf 15 b4 7f 01 00 	movsx  edx,WORD PTR ds:@obj3:VESA_window_size                       ; fixup: num: 543, src obj: 1, src ofs: 0x51ed, dst obj: 3, dst ofs: 0x17fb4
    51f1:	0f bf 3d b2 7f 01 00 	movsx  edi,WORD PTR ds:@obj3:VESA_window_granularity                ; fixup: num: 542, src obj: 1, src ofs: 0x51f4, dst obj: 3, dst ofs: 0x17fb2
    51f8:	89 d0                	mov    eax,edx
    51fa:	c1 fa 1f             	sar    edx,0x1f
    51fd:	f7 ff                	idiv   edi
    51ff:	66 89 9e cc 97 01 00 	mov    WORD PTR [esi+@obj3:line_start_table_split],bx               ; fixup: num: 541, src obj: 1, src ofs: 0x5202, dst obj: 3, dst ofs: 0x197cc
    5206:	01 c1                	add    ecx,eax
    5208:	eb 9a                	jmp    VESA_bank_switch_short_branch_15
VESA_bank_switch_short_branch_18:
    520a:	a0 96 7f 01 00       	mov    al,ds:@obj3:VESA_mode_info_block_variable_1                  ; fixup: num: 540, src obj: 1, src ofs: 0x520b, dst obj: 3, dst ofs: 0x17f96
    520f:	c0 e0 06             	shl    al,0x6
    5212:	c0 e8 07             	shr    al,0x7
    5215:	25 ff 00 00 00       	and    eax,0xff
    521a:	83 f8 01             	cmp    eax,0x1
    521d:	75 2a                	jne    VESA_bank_switch_short_branch_19
    521f:	a0 96 7f 01 00       	mov    al,ds:@obj3:VESA_mode_info_block_variable_1                  ; fixup: num: 563, src obj: 1, src ofs: 0x5220, dst obj: 3, dst ofs: 0x17f96
    5224:	24 01                	and    al,0x1
    5226:	25 ff 00 00 00       	and    eax,0xff
    522b:	83 f8 01             	cmp    eax,0x1
    522e:	75 19                	jne    VESA_bank_switch_short_branch_19
    5230:	0f bf 05 9c 7f 01 00 	movsx  eax,WORD PTR ds:@obj3:VESA_mode_info_block_variable_5        ; fixup: num: 562, src obj: 1, src ofs: 0x5233, dst obj: 3, dst ofs: 0x17f9c
    5237:	c1 e0 04             	shl    eax,0x4
    523a:	30 db                	xor    bl,bl
    523c:	25 ff ff 0f 00       	and    eax,0xfffff
    5241:	88 1d c0 7f 01 00    	mov    BYTE PTR ds:@obj3:VESA_readable_number,bl                    ; fixup: num: 561, src obj: 1, src ofs: 0x5243, dst obj: 3, dst ofs: 0x17fc0
    5247:	eb 49                	jmp    VESA_bank_switch_short_branch_22
VESA_bank_switch_short_branch_19:
    5249:	a0 97 7f 01 00       	mov    al,ds:@obj3:VESA_mode_info_block_variable_2                  ; fixup: num: 560, src obj: 1, src ofs: 0x524a, dst obj: 3, dst ofs: 0x17f97
    524e:	c0 e0 06             	shl    al,0x6
    5251:	c0 e8 07             	shr    al,0x7
    5254:	25 ff 00 00 00       	and    eax,0xff
    5259:	83 f8 01             	cmp    eax,0x1
    525c:	75 11                	jne    VESA_bank_switch_short_branch_20
    525e:	a0 97 7f 01 00       	mov    al,ds:@obj3:VESA_mode_info_block_variable_2                  ; fixup: num: 559, src obj: 1, src ofs: 0x525f, dst obj: 3, dst ofs: 0x17f97
    5263:	24 01                	and    al,0x1
    5265:	25 ff 00 00 00       	and    eax,0xff
    526a:	83 f8 01             	cmp    eax,0x1
    526d:	74 0c                	je     VESA_bank_switch_short_branch_21
VESA_bank_switch_short_branch_20:
    526f:	30 c0                	xor    al,al
    5271:	83 c4 48             	add    esp,0x48
    5274:	5d                   	pop    ebp
    5275:	5f                   	pop    edi
    5276:	5e                   	pop    esi
    5277:	5a                   	pop    edx
    5278:	59                   	pop    ecx
    5279:	5b                   	pop    ebx
    527a:	c3                   	ret    
VESA_bank_switch_short_branch_21:
    527b:	0f bf 05 9e 7f 01 00 	movsx  eax,WORD PTR ds:@obj3:VESA_mode_info_block_variable_6        ; fixup: num: 558, src obj: 1, src ofs: 0x527e, dst obj: 3, dst ofs: 0x17f9e
    5282:	c1 e0 04             	shl    eax,0x4
    5285:	b6 01                	mov    dh,0x1
    5287:	25 ff ff 0f 00       	and    eax,0xfffff
    528c:	88 35 c0 7f 01 00    	mov    BYTE PTR ds:@obj3:VESA_readable_number,dh                    ; fixup: num: 557, src obj: 1, src ofs: 0x528e, dst obj: 3, dst ofs: 0x17fc0
VESA_bank_switch_short_branch_22:
    5292:	a3 b8 7f 01 00       	mov    ds:@obj3:VESA_readable_window,eax                            ; fixup: num: 556, src obj: 1, src ofs: 0x5293, dst obj: 3, dst ofs: 0x17fb8
    5297:	a0 96 7f 01 00       	mov    al,ds:@obj3:VESA_mode_info_block_variable_1                  ; fixup: num: 555, src obj: 1, src ofs: 0x5298, dst obj: 3, dst ofs: 0x17f96
    529c:	c0 e0 05             	shl    al,0x5
    529f:	c0 e8 07             	shr    al,0x7
    52a2:	25 ff 00 00 00       	and    eax,0xff
    52a7:	83 f8 01             	cmp    eax,0x1
    52aa:	75 2a                	jne    VESA_bank_switch_short_branch_23
    52ac:	a0 96 7f 01 00       	mov    al,ds:@obj3:VESA_mode_info_block_variable_1                  ; fixup: num: 554, src obj: 1, src ofs: 0x52ad, dst obj: 3, dst ofs: 0x17f96
    52b1:	24 01                	and    al,0x1
    52b3:	25 ff 00 00 00       	and    eax,0xff
    52b8:	83 f8 01             	cmp    eax,0x1
    52bb:	75 19                	jne    VESA_bank_switch_short_branch_23
    52bd:	0f bf 05 9c 7f 01 00 	movsx  eax,WORD PTR ds:@obj3:VESA_mode_info_block_variable_5        ; fixup: num: 574, src obj: 1, src ofs: 0x52c0, dst obj: 3, dst ofs: 0x17f9c
    52c4:	c1 e0 04             	shl    eax,0x4
    52c7:	30 c9                	xor    cl,cl
    52c9:	25 ff ff 0f 00       	and    eax,0xfffff
    52ce:	88 0d c1 7f 01 00    	mov    BYTE PTR ds:@obj3:VESA_writeable_number,cl                   ; fixup: num: 573, src obj: 1, src ofs: 0x52d0, dst obj: 3, dst ofs: 0x17fc1
    52d4:	eb 49                	jmp    VESA_bank_switch_short_branch_26
VESA_bank_switch_short_branch_23:
    52d6:	a0 97 7f 01 00       	mov    al,ds:@obj3:VESA_mode_info_block_variable_2                  ; fixup: num: 572, src obj: 1, src ofs: 0x52d7, dst obj: 3, dst ofs: 0x17f97
    52db:	c0 e0 05             	shl    al,0x5
    52de:	c0 e8 07             	shr    al,0x7
    52e1:	25 ff 00 00 00       	and    eax,0xff
    52e6:	83 f8 01             	cmp    eax,0x1
    52e9:	75 11                	jne    VESA_bank_switch_short_branch_24
    52eb:	a0 97 7f 01 00       	mov    al,ds:@obj3:VESA_mode_info_block_variable_2                  ; fixup: num: 571, src obj: 1, src ofs: 0x52ec, dst obj: 3, dst ofs: 0x17f97
    52f0:	24 01                	and    al,0x1
    52f2:	25 ff 00 00 00       	and    eax,0xff
    52f7:	83 f8 01             	cmp    eax,0x1
    52fa:	74 0c                	je     VESA_bank_switch_short_branch_25
VESA_bank_switch_short_branch_24:
    52fc:	30 c0                	xor    al,al
    52fe:	83 c4 48             	add    esp,0x48
    5301:	5d                   	pop    ebp
    5302:	5f                   	pop    edi
    5303:	5e                   	pop    esi
    5304:	5a                   	pop    edx
    5305:	59                   	pop    ecx
    5306:	5b                   	pop    ebx
    5307:	c3                   	ret    
VESA_bank_switch_short_branch_25:
    5308:	0f bf 05 9e 7f 01 00 	movsx  eax,WORD PTR ds:@obj3:VESA_mode_info_block_variable_6        ; fixup: num: 570, src obj: 1, src ofs: 0x530b, dst obj: 3, dst ofs: 0x17f9e
    530f:	c1 e0 04             	shl    eax,0x4
    5312:	b7 01                	mov    bh,0x1
    5314:	25 ff ff 0f 00       	and    eax,0xfffff
    5319:	88 3d c1 7f 01 00    	mov    BYTE PTR ds:@obj3:VESA_writeable_number,bh                   ; fixup: num: 569, src obj: 1, src ofs: 0x531b, dst obj: 3, dst ofs: 0x17fc1
VESA_bank_switch_short_branch_26:
    531f:	a3 bc 7f 01 00       	mov    ds:@obj3:VESA_writeable_window,eax                           ; fixup: num: 568, src obj: 1, src ofs: 0x5320, dst obj: 3, dst ofs: 0x17fbc
    5324:	83 3d b8 7f 01 00 00 	cmp    DWORD PTR ds:@obj3:VESA_readable_window,0x0                  ; fixup: num: 567, src obj: 1, src ofs: 0x5326, dst obj: 3, dst ofs: 0x17fb8
    532b:	74 09                	je     VESA_bank_switch_short_branch_27
    532d:	83 3d bc 7f 01 00 00 	cmp    DWORD PTR ds:@obj3:VESA_writeable_window,0x0                 ; fixup: num: 566, src obj: 1, src ofs: 0x532f, dst obj: 3, dst ofs: 0x17fbc
    5334:	75 11                	jne    VESA_bank_switch_short_branch_28
VESA_bank_switch_short_branch_27:
    5336:	bb 2b 06 00 00       	mov    ebx,@obj3:vesamode_cpp_variable_5                            ; fixup: num: 565, src obj: 1, src ofs: 0x5337, dst obj: 3, dst ofs: 0x62b
    533b:	ba b1 01 00 00       	mov    edx,0x1b1
    5340:	31 c0                	xor    eax,eax
    5342:	e8 e9 2c 03 00       	call   _error_report
VESA_bank_switch_short_branch_28:
    5347:	0f bf 44 24 40       	movsx  eax,WORD PTR [esp+0x40]
    534c:	e8 4f fa ff ff       	call   set_super_VGA_video_mode
    5351:	84 c0                	test   al,al
    5353:	75 11                	jne    VESA_bank_switch_short_branch_29
    5355:	bb 50 06 00 00       	mov    ebx,@obj3:vesamode_cpp_variable_6                            ; fixup: num: 564, src obj: 1, src ofs: 0x5356, dst obj: 3, dst ofs: 0x650
    535a:	ba b3 01 00 00       	mov    edx,0x1b3
    535f:	31 c0                	xor    eax,eax
    5361:	e8 ca 2c 03 00       	call   _error_report
VESA_bank_switch_short_branch_29:
    5366:	31 c0                	xor    eax,eax
    5368:	31 d2                	xor    edx,edx
    536a:	a0 c0 7f 01 00       	mov    al,ds:@obj3:VESA_readable_number                             ; fixup: num: 472, src obj: 1, src ofs: 0x536b, dst obj: 3, dst ofs: 0x17fc0
    536f:	e8 2c fb ff ff       	call   select_super_VGA_video_memory_window
    5374:	84 c0                	test   al,al
    5376:	75 11                	jne    VESA_bank_switch_short_branch_30
    5378:	bb 69 06 00 00       	mov    ebx,@obj3:vesamode_cpp_variable_7                            ; fixup: num: 471, src obj: 1, src ofs: 0x5379, dst obj: 3, dst ofs: 0x669
    537d:	ba b6 01 00 00       	mov    edx,0x1b6
    5382:	31 c0                	xor    eax,eax
    5384:	e8 a7 2c 03 00       	call   _error_report
VESA_bank_switch_short_branch_30:
    5389:	a0 c0 7f 01 00       	mov    al,ds:@obj3:VESA_readable_number                             ; fixup: num: 585, src obj: 1, src ofs: 0x538a, dst obj: 3, dst ofs: 0x17fc0
    538e:	31 ff                	xor    edi,edi
    5390:	8a 2d c1 7f 01 00    	mov    ch,BYTE PTR ds:@obj3:VESA_writeable_number                   ; fixup: num: 584, src obj: 1, src ofs: 0x5392, dst obj: 3, dst ofs: 0x17fc1
    5396:	66 89 3d c2 7f 01 00 	mov    WORD PTR ds:@obj3:VESA_readable_window_position,di           ; fixup: num: 583, src obj: 1, src ofs: 0x5399, dst obj: 3, dst ofs: 0x17fc2
    539d:	38 e8                	cmp    al,ch
    539f:	74 20                	je     VESA_bank_switch_short_branch_31
    53a1:	31 c0                	xor    eax,eax
    53a3:	31 d2                	xor    edx,edx
    53a5:	88 e8                	mov    al,ch
    53a7:	e8 f4 fa ff ff       	call   select_super_VGA_video_memory_window
    53ac:	84 c0                	test   al,al
    53ae:	75 11                	jne    VESA_bank_switch_short_branch_31
    53b0:	bb 8e 06 00 00       	mov    ebx,@obj3:vesamode_cpp_variable_8                            ; fixup: num: 582, src obj: 1, src ofs: 0x53b1, dst obj: 3, dst ofs: 0x68e
    53b5:	ba b8 01 00 00       	mov    edx,0x1b8
    53ba:	31 c0                	xor    eax,eax
    53bc:	e8 6f 2c 03 00       	call   _error_report
VESA_bank_switch_short_branch_31:
    53c1:	31 c0                	xor    eax,eax
    53c3:	66 a3 c4 7f 01 00    	mov    ds:@obj3:VESA_writeable_window_position,ax                   ; fixup: num: 581, src obj: 1, src ofs: 0x53c5, dst obj: 3, dst ofs: 0x17fc4
    53c9:	0f bf 05 b4 7f 01 00 	movsx  eax,WORD PTR ds:@obj3:VESA_window_size                       ; fixup: num: 580, src obj: 1, src ofs: 0x53cc, dst obj: 3, dst ofs: 0x17fb4
    53d0:	c1 e0 0a             	shl    eax,0xa
    53d3:	a3 cc 9f 01 00       	mov    ds:@obj3:window_size,eax                                     ; fixup: num: 579, src obj: 1, src ofs: 0x53d4, dst obj: 3, dst ofs: 0x19fcc
    53d8:	b8 40 00 00 00       	mov    eax,0x40
    53dd:	89 c2                	mov    edx,eax
    53df:	0f bf 1d b2 7f 01 00 	movsx  ebx,WORD PTR ds:@obj3:VESA_window_granularity                ; fixup: num: 578, src obj: 1, src ofs: 0x53e2, dst obj: 3, dst ofs: 0x17fb2
    53e6:	c1 fa 1f             	sar    edx,0x1f
    53e9:	f7 fb                	idiv   ebx
    53eb:	be 02 00 00 00       	mov    esi,0x2
    53f0:	31 d2                	xor    edx,edx
    53f2:	89 c3                	mov    ebx,eax
    53f4:	66 89 15 d0 9f 01 00 	mov    WORD PTR ds:@obj3:switch_table,dx                            ; fixup: num: 577, src obj: 1, src ofs: 0x53f7, dst obj: 3, dst ofs: 0x19fd0
    53fb:	8d 40 00             	lea    eax,[eax+0x0]
    53fe:	8b c9                	mov    ecx,ecx
VESA_bank_switch_short_branch_32:
    5400:	66 8b 86 ce 9f 01 00 	mov    ax,WORD PTR [esi+@obj3:window_size_variable_1]               ; fixup: num: 576, src obj: 1, src ofs: 0x5403, dst obj: 3, dst ofs: 0x19fce
    5407:	83 c6 02             	add    esi,0x2
    540a:	01 d8                	add    eax,ebx
    540c:	66 89 86 ce 9f 01 00 	mov    WORD PTR [esi+@obj3:window_size_variable_1],ax               ; fixup: num: 575, src obj: 1, src ofs: 0x540f, dst obj: 3, dst ofs: 0x19fce
    5413:	81 fe 90 01 00 00    	cmp    esi,0x190
    5419:	75 e5                	jne    VESA_bank_switch_short_branch_32
    541b:	31 c0                	xor    eax,eax
    541d:	31 d2                	xor    edx,edx
    541f:	a0 c1 7f 01 00       	mov    al,ds:@obj3:VESA_writeable_number                            ; fixup: num: 480, src obj: 1, src ofs: 0x5420, dst obj: 3, dst ofs: 0x17fc1
    5424:	e8 77 fa ff ff       	call   select_super_VGA_video_memory_window
    5429:	b0 01                	mov    al,0x1
VESA_bank_switch_short_branch_33:
    542b:	83 c4 48             	add    esp,0x48
    542e:	5d                   	pop    ebp
    542f:	5f                   	pop    edi
    5430:	5e                   	pop    esi
    5431:	5a                   	pop    edx
    5432:	59                   	pop    ecx
    5433:	5b                   	pop    ebx
    5434:	c3                   	ret    
    5435:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    543b:	8d 52 00             	lea    edx,[edx+0x0]
    543e:	8b db                	mov    ebx,ebx

;-------------------------------------------------
;  Function 'VESA_put_scanline'                  -
;-------------------------------------------------
VESA_put_scanline:
    5440:	56                   	push   esi
    5441:	57                   	push   edi
    5442:	55                   	push   ebp
    5443:	83 ec 0c             	sub    esp,0xc
    5446:	89 c6                	mov    esi,eax
    5448:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
    544c:	89 df                	mov    edi,ebx
    544e:	89 cd                	mov    ebp,ecx
    5450:	8d 1c 12             	lea    ebx,[edx+edx*1]
    5453:	0f bf 83 cc 97 01 00 	movsx  eax,WORD PTR [ebx+@obj3:line_start_table_split]              ; fixup: num: 479, src obj: 1, src ofs: 0x5456, dst obj: 3, dst ofs: 0x197cc
    545a:	83 f8 ff             	cmp    eax,0xffffffff
    545d:	75 59                	jne    VESA_put_scanline_branch_2
    545f:	31 c0                	xor    eax,eax
    5461:	0f bf 15 c4 7f 01 00 	movsx  edx,WORD PTR ds:@obj3:VESA_writeable_window_position         ; fixup: num: 478, src obj: 1, src ofs: 0x5464, dst obj: 3, dst ofs: 0x17fc4
    5468:	66 8b 83 ca 7f 01 00 	mov    ax,WORD PTR [ebx+@obj3:line_start_table_window_offsets]      ; fixup: num: 477, src obj: 1, src ofs: 0x546b, dst obj: 3, dst ofs: 0x17fca
    546f:	39 c2                	cmp    edx,eax
    5471:	74 15                	je     VESA_put_scanline_branch_1
    5473:	66 a3 c4 7f 01 00    	mov    ds:@obj3:VESA_writeable_window_position,ax                   ; fixup: num: 476, src obj: 1, src ofs: 0x5475, dst obj: 3, dst ofs: 0x17fc4
    5479:	0f bf d0             	movsx  edx,ax
    547c:	31 c0                	xor    eax,eax
    547e:	a0 c1 7f 01 00       	mov    al,ds:@obj3:VESA_writeable_number                            ; fixup: num: 475, src obj: 1, src ofs: 0x547f, dst obj: 3, dst ofs: 0x17fc1
    5483:	e8 18 fa ff ff       	call   select_super_VGA_video_memory_window
VESA_put_scanline_branch_1:
    5488:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
    548c:	8b 15 bc 7f 01 00    	mov    edx,DWORD PTR ds:@obj3:VESA_writeable_window                 ; fixup: num: 474, src obj: 1, src ofs: 0x548e, dst obj: 3, dst ofs: 0x17fbc
    5492:	8b 04 85 cc 87 01 00 	mov    eax,DWORD PTR [eax*4+@obj3:line_start_table_offset_offsets]  ; fixup: num: 473, src obj: 1, src ofs: 0x5495, dst obj: 3, dst ofs: 0x187cc
    5499:	01 d0                	add    eax,edx
    549b:	89 f9                	mov    ecx,edi
    549d:	01 f0                	add    eax,esi
    549f:	89 ee                	mov    esi,ebp
    54a1:	89 c7                	mov    edi,eax
    54a3:	57                   	push   edi
    54a4:	89 c8                	mov    eax,ecx
    54a6:	c1 e9 02             	shr    ecx,0x2
    54a9:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
    54ab:	8a c8                	mov    cl,al
    54ad:	80 e1 03             	and    cl,0x3
    54b0:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
    54b2:	5f                   	pop    edi
    54b3:	e9 f6 00 00 00       	jmp    VESA_put_scanline_branch_10
VESA_put_scanline_branch_2:
    54b8:	89 f0                	mov    eax,esi
    54ba:	01 f8                	add    eax,edi
    54bc:	89 f1                	mov    ecx,esi
    54be:	89 04 24             	mov    DWORD PTR [esp],eax
    54c1:	39 c6                	cmp    esi,eax
    54c3:	e9 89 00 00 00       	jmp    VESA_put_scanline_branch_8
VESA_put_scanline_branch_3:
    54c8:	39 c1                	cmp    ecx,eax
    54ca:	7d 3f                	jge    VESA_put_scanline_branch_5
    54cc:	31 d2                	xor    edx,edx
    54ce:	0f bf 05 c4 7f 01 00 	movsx  eax,WORD PTR ds:@obj3:VESA_writeable_window_position         ; fixup: num: 494, src obj: 1, src ofs: 0x54d1, dst obj: 3, dst ofs: 0x17fc4
    54d5:	66 8b 93 ca 7f 01 00 	mov    dx,WORD PTR [ebx+@obj3:line_start_table_window_offsets]      ; fixup: num: 493, src obj: 1, src ofs: 0x54d8, dst obj: 3, dst ofs: 0x17fca
    54dc:	39 d0                	cmp    eax,edx
    54de:	74 16                	je     VESA_put_scanline_branch_4
    54e0:	31 c0                	xor    eax,eax
    54e2:	66 89 15 c4 7f 01 00 	mov    WORD PTR ds:@obj3:VESA_writeable_window_position,dx          ; fixup: num: 492, src obj: 1, src ofs: 0x54e5, dst obj: 3, dst ofs: 0x17fc4
    54e9:	a0 c1 7f 01 00       	mov    al,ds:@obj3:VESA_writeable_number                            ; fixup: num: 491, src obj: 1, src ofs: 0x54ea, dst obj: 3, dst ofs: 0x17fc1
    54ee:	0f bf d2             	movsx  edx,dx
    54f1:	e8 aa f9 ff ff       	call   select_super_VGA_video_memory_window
VESA_put_scanline_branch_4:
    54f6:	03 3c b5 cc 87 01 00 	add    edi,DWORD PTR [esi*4+@obj3:line_start_table_offset_offsets]  ; fixup: num: 490, src obj: 1, src ofs: 0x54f9, dst obj: 3, dst ofs: 0x187cc
    54fd:	a1 bc 7f 01 00       	mov    eax,ds:@obj3:VESA_writeable_window                           ; fixup: num: 489, src obj: 1, src ofs: 0x54fe, dst obj: 3, dst ofs: 0x17fbc
    5502:	8a 54 24 08          	mov    dl,BYTE PTR [esp+0x8]
    5506:	88 14 07             	mov    BYTE PTR [edi+eax*1],dl
    5509:	eb 3f                	jmp    VESA_put_scanline_branch_7
VESA_put_scanline_branch_5:
    550b:	31 c0                	xor    eax,eax
    550d:	0f bf 15 c4 7f 01 00 	movsx  edx,WORD PTR ds:@obj3:VESA_writeable_window_position         ; fixup: num: 488, src obj: 1, src ofs: 0x5510, dst obj: 3, dst ofs: 0x17fc4
    5514:	66 8b 83 cc 7f 01 00 	mov    ax,WORD PTR [ebx+@obj3:line_start_table_window_offsets_variable_1]; fixup: num: 487, src obj: 1, src ofs: 0x5517, dst obj: 3, dst ofs: 0x17fcc
    551b:	39 d0                	cmp    eax,edx
    551d:	74 15                	je     VESA_put_scanline_branch_6
    551f:	66 a3 c4 7f 01 00    	mov    ds:@obj3:VESA_writeable_window_position,ax                   ; fixup: num: 486, src obj: 1, src ofs: 0x5521, dst obj: 3, dst ofs: 0x17fc4
    5525:	0f bf d0             	movsx  edx,ax
    5528:	31 c0                	xor    eax,eax
    552a:	a0 c1 7f 01 00       	mov    al,ds:@obj3:VESA_writeable_number                            ; fixup: num: 485, src obj: 1, src ofs: 0x552b, dst obj: 3, dst ofs: 0x17fc1
    552f:	e8 6c f9 ff ff       	call   select_super_VGA_video_memory_window
VESA_put_scanline_branch_6:
    5534:	0f bf 04 75 cc 97 01 00 	movsx  eax,WORD PTR [esi*2+@obj3:line_start_table_split]         ; fixup: num: 484, src obj: 1, src ofs: 0x5538, dst obj: 3, dst ofs: 0x197cc
    553c:	29 c7                	sub    edi,eax
    553e:	a1 bc 7f 01 00       	mov    eax,ds:@obj3:VESA_writeable_window                           ; fixup: num: 483, src obj: 1, src ofs: 0x553f, dst obj: 3, dst ofs: 0x17fbc
    5543:	8a 54 24 08          	mov    dl,BYTE PTR [esp+0x8]
    5547:	88 14 07             	mov    BYTE PTR [edi+eax*1],dl
VESA_put_scanline_branch_7:
    554a:	8b 34 24             	mov    esi,DWORD PTR [esp]
    554d:	41                   	inc    ecx
    554e:	45                   	inc    ebp
    554f:	39 f1                	cmp    ecx,esi
VESA_put_scanline_branch_8:
    5551:	7d 5b                	jge    VESA_put_scanline_branch_10
    5553:	8a 45 00             	mov    al,BYTE PTR [ebp+0x0]
    5556:	8b 74 24 04          	mov    esi,DWORD PTR [esp+0x4]
    555a:	88 44 24 08          	mov    BYTE PTR [esp+0x8],al
    555e:	0f bf 83 cc 97 01 00 	movsx  eax,WORD PTR [ebx+@obj3:line_start_table_split]              ; fixup: num: 482, src obj: 1, src ofs: 0x5561, dst obj: 3, dst ofs: 0x197cc
    5565:	89 cf                	mov    edi,ecx
    5567:	83 f8 ff             	cmp    eax,0xffffffff
    556a:	0f 85 58 ff ff ff    	jne    VESA_put_scanline_branch_3
    5570:	31 c0                	xor    eax,eax
    5572:	0f bf 15 c4 7f 01 00 	movsx  edx,WORD PTR ds:@obj3:VESA_writeable_window_position         ; fixup: num: 481, src obj: 1, src ofs: 0x5575, dst obj: 3, dst ofs: 0x17fc4
    5579:	66 8b 83 ca 7f 01 00 	mov    ax,WORD PTR [ebx+@obj3:line_start_table_window_offsets]      ; fixup: num: 506, src obj: 1, src ofs: 0x557c, dst obj: 3, dst ofs: 0x17fca
    5580:	39 d0                	cmp    eax,edx
    5582:	74 15                	je     VESA_put_scanline_branch_9
    5584:	66 a3 c4 7f 01 00    	mov    ds:@obj3:VESA_writeable_window_position,ax                   ; fixup: num: 505, src obj: 1, src ofs: 0x5586, dst obj: 3, dst ofs: 0x17fc4
    558a:	0f bf d0             	movsx  edx,ax
    558d:	31 c0                	xor    eax,eax
    558f:	a0 c1 7f 01 00       	mov    al,ds:@obj3:VESA_writeable_number                            ; fixup: num: 504, src obj: 1, src ofs: 0x5590, dst obj: 3, dst ofs: 0x17fc1
    5594:	e8 07 f9 ff ff       	call   select_super_VGA_video_memory_window
VESA_put_scanline_branch_9:
    5599:	03 3c b5 cc 87 01 00 	add    edi,DWORD PTR [esi*4+@obj3:line_start_table_offset_offsets]  ; fixup: num: 503, src obj: 1, src ofs: 0x559c, dst obj: 3, dst ofs: 0x187cc
    55a0:	a1 bc 7f 01 00       	mov    eax,ds:@obj3:VESA_writeable_window                           ; fixup: num: 502, src obj: 1, src ofs: 0x55a1, dst obj: 3, dst ofs: 0x17fbc
    55a5:	8a 54 24 08          	mov    dl,BYTE PTR [esp+0x8]
    55a9:	88 14 07             	mov    BYTE PTR [edi+eax*1],dl
    55ac:	eb 9c                	jmp    VESA_put_scanline_branch_7
VESA_put_scanline_branch_10:
    55ae:	83 c4 0c             	add    esp,0xc
    55b1:	5d                   	pop    ebp
    55b2:	5f                   	pop    edi
    55b3:	5e                   	pop    esi
    55b4:	c3                   	ret    
    55b5:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    55bb:	8d 52 00             	lea    edx,[edx+0x0]
    55be:	8b db                	mov    ebx,ebx

;-------------------------------------------------
;  Function 'VESA_horizontal_line'               -
;-------------------------------------------------
VESA_horizontal_line:
    55c0:	56                   	push   esi
    55c1:	57                   	push   edi
    55c2:	55                   	push   ebp
    55c3:	83 ec 0c             	sub    esp,0xc
    55c6:	89 c6                	mov    esi,eax
    55c8:	89 d5                	mov    ebp,edx
    55ca:	88 4c 24 04          	mov    BYTE PTR [esp+0x4],cl
    55ce:	8d 04 55 00 00 00 00 	lea    eax,[edx*2+0x0]
    55d5:	0f bf 90 cc 97 01 00 	movsx  edx,WORD PTR [eax+@obj3:line_start_table_split]              ; fixup: num: 501, src obj: 1, src ofs: 0x55d8, dst obj: 3, dst ofs: 0x197cc
    55dc:	83 fa ff             	cmp    edx,0xffffffff
    55df:	75 4c                	jne    VESA_horizontal_line_branch_2
    55e1:	31 d2                	xor    edx,edx
    55e3:	0f bf 0d c4 7f 01 00 	movsx  ecx,WORD PTR ds:@obj3:VESA_writeable_window_position         ; fixup: num: 500, src obj: 1, src ofs: 0x55e6, dst obj: 3, dst ofs: 0x17fc4
    55ea:	66 8b 90 ca 7f 01 00 	mov    dx,WORD PTR [eax+@obj3:line_start_table_window_offsets]      ; fixup: num: 499, src obj: 1, src ofs: 0x55ed, dst obj: 3, dst ofs: 0x17fca
    55f1:	39 d1                	cmp    ecx,edx
    55f3:	74 16                	je     VESA_horizontal_line_branch_1
    55f5:	31 c0                	xor    eax,eax
    55f7:	66 89 15 c4 7f 01 00 	mov    WORD PTR ds:@obj3:VESA_writeable_window_position,dx          ; fixup: num: 498, src obj: 1, src ofs: 0x55fa, dst obj: 3, dst ofs: 0x17fc4
    55fe:	a0 c1 7f 01 00       	mov    al,ds:@obj3:VESA_writeable_number                            ; fixup: num: 497, src obj: 1, src ofs: 0x55ff, dst obj: 3, dst ofs: 0x17fc1
    5603:	0f bf d2             	movsx  edx,dx
    5606:	e8 95 f8 ff ff       	call   select_super_VGA_video_memory_window
VESA_horizontal_line_branch_1:
    560b:	a1 bc 7f 01 00       	mov    eax,ds:@obj3:VESA_writeable_window                           ; fixup: num: 496, src obj: 1, src ofs: 0x560c, dst obj: 3, dst ofs: 0x17fbc
    5610:	8b 0c ad cc 87 01 00 	mov    ecx,DWORD PTR [ebp*4+@obj3:line_start_table_offset_offsets]  ; fixup: num: 495, src obj: 1, src ofs: 0x5613, dst obj: 3, dst ofs: 0x187cc
    5617:	31 d2                	xor    edx,edx
    5619:	01 c8                	add    eax,ecx
    561b:	8a 54 24 04          	mov    dl,BYTE PTR [esp+0x4]
    561f:	01 f0                	add    eax,esi
    5621:	e8 aa bd 06 00       	call   memset_
    5626:	83 c4 0c             	add    esp,0xc
    5629:	5d                   	pop    ebp
    562a:	5f                   	pop    edi
    562b:	5e                   	pop    esi
    562c:	c3                   	ret    
VESA_horizontal_line_branch_2:
    562d:	89 f2                	mov    edx,esi
    562f:	01 da                	add    edx,ebx
    5631:	89 f1                	mov    ecx,esi
    5633:	89 14 24             	mov    DWORD PTR [esp],edx
    5636:	39 d6                	cmp    esi,edx
    5638:	0f 8d 70 ff ff ff    	jge    VESA_put_scanline_branch_10
    563e:	89 c3                	mov    ebx,eax
VESA_horizontal_line_branch_3:
    5640:	8a 44 24 04          	mov    al,BYTE PTR [esp+0x4]
    5644:	89 cf                	mov    edi,ecx
    5646:	88 44 24 08          	mov    BYTE PTR [esp+0x8],al
    564a:	0f bf 83 cc 97 01 00 	movsx  eax,WORD PTR [ebx+@obj3:line_start_table_split]              ; fixup: num: 517, src obj: 1, src ofs: 0x564d, dst obj: 3, dst ofs: 0x197cc
    5651:	89 ee                	mov    esi,ebp
    5653:	83 f8 ff             	cmp    eax,0xffffffff
    5656:	75 4c                	jne    VESA_horizontal_line_branch_5
    5658:	31 c0                	xor    eax,eax
    565a:	0f bf 15 c4 7f 01 00 	movsx  edx,WORD PTR ds:@obj3:VESA_writeable_window_position         ; fixup: num: 516, src obj: 1, src ofs: 0x565d, dst obj: 3, dst ofs: 0x17fc4
    5661:	66 8b 83 ca 7f 01 00 	mov    ax,WORD PTR [ebx+@obj3:line_start_table_window_offsets]      ; fixup: num: 515, src obj: 1, src ofs: 0x5664, dst obj: 3, dst ofs: 0x17fca
    5668:	39 c2                	cmp    edx,eax
    566a:	74 15                	je     VESA_horizontal_line_branch_4
    566c:	66 a3 c4 7f 01 00    	mov    ds:@obj3:VESA_writeable_window_position,ax                   ; fixup: num: 514, src obj: 1, src ofs: 0x566e, dst obj: 3, dst ofs: 0x17fc4
    5672:	0f bf d0             	movsx  edx,ax
    5675:	31 c0                	xor    eax,eax
    5677:	a0 c1 7f 01 00       	mov    al,ds:@obj3:VESA_writeable_number                            ; fixup: num: 513, src obj: 1, src ofs: 0x5678, dst obj: 3, dst ofs: 0x17fc1
    567c:	e8 1f f8 ff ff       	call   select_super_VGA_video_memory_window
VESA_horizontal_line_branch_4:
    5681:	8b 14 b5 cc 87 01 00 	mov    edx,DWORD PTR [esi*4+@obj3:line_start_table_offset_offsets]  ; fixup: num: 512, src obj: 1, src ofs: 0x5684, dst obj: 3, dst ofs: 0x187cc
    5688:	a1 bc 7f 01 00       	mov    eax,ds:@obj3:VESA_writeable_window                           ; fixup: num: 511, src obj: 1, src ofs: 0x5689, dst obj: 3, dst ofs: 0x17fbc
    568d:	01 d7                	add    edi,edx
    568f:	8a 54 24 08          	mov    dl,BYTE PTR [esp+0x8]
    5693:	88 14 07             	mov    BYTE PTR [edi+eax*1],dl
    5696:	8b 34 24             	mov    esi,DWORD PTR [esp]
    5699:	41                   	inc    ecx
    569a:	39 f1                	cmp    ecx,esi
    569c:	0f 8d 0c ff ff ff    	jge    VESA_put_scanline_branch_10
    56a2:	eb 9c                	jmp    VESA_horizontal_line_branch_3
VESA_horizontal_line_branch_5:
    56a4:	39 c1                	cmp    ecx,eax
    56a6:	7d 4e                	jge    VESA_horizontal_line_branch_7
    56a8:	31 d2                	xor    edx,edx
    56aa:	0f bf 05 c4 7f 01 00 	movsx  eax,WORD PTR ds:@obj3:VESA_writeable_window_position         ; fixup: num: 510, src obj: 1, src ofs: 0x56ad, dst obj: 3, dst ofs: 0x17fc4
    56b1:	66 8b 93 ca 7f 01 00 	mov    dx,WORD PTR [ebx+@obj3:line_start_table_window_offsets]      ; fixup: num: 509, src obj: 1, src ofs: 0x56b4, dst obj: 3, dst ofs: 0x17fca
    56b8:	39 d0                	cmp    eax,edx
    56ba:	74 16                	je     VESA_horizontal_line_branch_6
    56bc:	31 c0                	xor    eax,eax
    56be:	66 89 15 c4 7f 01 00 	mov    WORD PTR ds:@obj3:VESA_writeable_window_position,dx          ; fixup: num: 508, src obj: 1, src ofs: 0x56c1, dst obj: 3, dst ofs: 0x17fc4
    56c5:	a0 c1 7f 01 00       	mov    al,ds:@obj3:VESA_writeable_number                            ; fixup: num: 507, src obj: 1, src ofs: 0x56c6, dst obj: 3, dst ofs: 0x17fc1
    56ca:	0f bf d2             	movsx  edx,dx
    56cd:	e8 ce f7 ff ff       	call   select_super_VGA_video_memory_window
VESA_horizontal_line_branch_6:
    56d2:	03 3c b5 cc 87 01 00 	add    edi,DWORD PTR [esi*4+@obj3:line_start_table_offset_offsets]  ; fixup: num: 525, src obj: 1, src ofs: 0x56d5, dst obj: 3, dst ofs: 0x187cc
    56d9:	a1 bc 7f 01 00       	mov    eax,ds:@obj3:VESA_writeable_window                           ; fixup: num: 524, src obj: 1, src ofs: 0x56da, dst obj: 3, dst ofs: 0x17fbc
    56de:	8a 54 24 08          	mov    dl,BYTE PTR [esp+0x8]
    56e2:	88 14 07             	mov    BYTE PTR [edi+eax*1],dl
    56e5:	8b 34 24             	mov    esi,DWORD PTR [esp]
    56e8:	41                   	inc    ecx
    56e9:	39 f1                	cmp    ecx,esi
    56eb:	0f 8d bd fe ff ff    	jge    VESA_put_scanline_branch_10
    56f1:	e9 4a ff ff ff       	jmp    VESA_horizontal_line_branch_3
VESA_horizontal_line_branch_7:
    56f6:	31 d2                	xor    edx,edx
    56f8:	0f bf 05 c4 7f 01 00 	movsx  eax,WORD PTR ds:@obj3:VESA_writeable_window_position         ; fixup: num: 523, src obj: 1, src ofs: 0x56fb, dst obj: 3, dst ofs: 0x17fc4
    56ff:	66 8b 93 cc 7f 01 00 	mov    dx,WORD PTR [ebx+@obj3:line_start_table_window_offsets_variable_1]; fixup: num: 522, src obj: 1, src ofs: 0x5702, dst obj: 3, dst ofs: 0x17fcc
    5706:	39 d0                	cmp    eax,edx
    5708:	74 16                	je     VESA_horizontal_line_branch_8
    570a:	31 c0                	xor    eax,eax
    570c:	66 89 15 c4 7f 01 00 	mov    WORD PTR ds:@obj3:VESA_writeable_window_position,dx          ; fixup: num: 521, src obj: 1, src ofs: 0x570f, dst obj: 3, dst ofs: 0x17fc4
    5713:	a0 c1 7f 01 00       	mov    al,ds:@obj3:VESA_writeable_number                            ; fixup: num: 520, src obj: 1, src ofs: 0x5714, dst obj: 3, dst ofs: 0x17fc1
    5718:	0f bf d2             	movsx  edx,dx
    571b:	e8 80 f7 ff ff       	call   select_super_VGA_video_memory_window
VESA_horizontal_line_branch_8:
    5720:	0f bf 04 75 cc 97 01 00 	movsx  eax,WORD PTR [esi*2+@obj3:line_start_table_split]         ; fixup: num: 519, src obj: 1, src ofs: 0x5724, dst obj: 3, dst ofs: 0x197cc
    5728:	29 c7                	sub    edi,eax
    572a:	a1 bc 7f 01 00       	mov    eax,ds:@obj3:VESA_writeable_window                           ; fixup: num: 518, src obj: 1, src ofs: 0x572b, dst obj: 3, dst ofs: 0x17fbc
    572f:	8a 54 24 08          	mov    dl,BYTE PTR [esp+0x8]
    5733:	88 14 07             	mov    BYTE PTR [edi+eax*1],dl
    5736:	8b 34 24             	mov    esi,DWORD PTR [esp]
    5739:	41                   	inc    ecx
    573a:	39 f1                	cmp    ecx,esi
    573c:	0f 8d 6c fe ff ff    	jge    VESA_put_scanline_branch_10
    5742:	e9 f9 fe ff ff       	jmp    VESA_horizontal_line_branch_3
    5747:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    574d:	8d 52 00             	lea    edx,[edx+0x0]

;-------------------------------------------------
;  Function 'VESA_rectangle'                     -
;-------------------------------------------------
VESA_rectangle:
    5750:	56                   	push   esi
    5751:	57                   	push   edi
    5752:	55                   	push   ebp
    5753:	83 ec 1c             	sub    esp,0x1c
    5756:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
    575a:	89 5c 24 04          	mov    DWORD PTR [esp+0x4],ebx
    575e:	01 d1                	add    ecx,edx
    5760:	49                   	dec    ecx
    5761:	89 d5                	mov    ebp,edx
    5763:	89 0c 24             	mov    DWORD PTR [esp],ecx
    5766:	39 ca                	cmp    edx,ecx
    5768:	0f 8f 3a 02 00 00    	jg     VESA_rectangle_branch_13
    576e:	01 d8                	add    eax,ebx
    5770:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
    5774:	8d 04 55 00 00 00 00 	lea    eax,[edx*2+0x0]
    577b:	8d 14 95 00 00 00 00 	lea    edx,[edx*4+0x0]
    5782:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
    5786:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
VESA_rectangle_branch_1:
    578a:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
    578e:	0f bf 80 cc 97 01 00 	movsx  eax,WORD PTR [eax+@obj3:line_start_table_split]              ; fixup: num: 420, src obj: 1, src ofs: 0x5791, dst obj: 3, dst ofs: 0x197cc
    5795:	83 f8 ff             	cmp    eax,0xffffffff
    5798:	0f 85 85 00 00 00    	jne    VESA_rectangle_branch_4
    579e:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
    57a2:	31 d2                	xor    edx,edx
    57a4:	66 8b 90 ca 7f 01 00 	mov    dx,WORD PTR [eax+@obj3:line_start_table_window_offsets]      ; fixup: num: 419, src obj: 1, src ofs: 0x57a7, dst obj: 3, dst ofs: 0x17fca
    57ab:	0f bf 05 c4 7f 01 00 	movsx  eax,WORD PTR ds:@obj3:VESA_writeable_window_position         ; fixup: num: 418, src obj: 1, src ofs: 0x57ae, dst obj: 3, dst ofs: 0x17fc4
    57b2:	39 d0                	cmp    eax,edx
    57b4:	74 20                	je     VESA_rectangle_branch_2
    57b6:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
    57ba:	66 8b 80 ca 7f 01 00 	mov    ax,WORD PTR [eax+@obj3:line_start_table_window_offsets]      ; fixup: num: 417, src obj: 1, src ofs: 0x57bd, dst obj: 3, dst ofs: 0x17fca
    57c1:	66 a3 c4 7f 01 00    	mov    ds:@obj3:VESA_writeable_window_position,ax                   ; fixup: num: 416, src obj: 1, src ofs: 0x57c3, dst obj: 3, dst ofs: 0x17fc4
    57c7:	0f bf d0             	movsx  edx,ax
    57ca:	31 c0                	xor    eax,eax
    57cc:	a0 c1 7f 01 00       	mov    al,ds:@obj3:VESA_writeable_number                            ; fixup: num: 415, src obj: 1, src ofs: 0x57cd, dst obj: 3, dst ofs: 0x17fc1
    57d1:	e8 ca f6 ff ff       	call   select_super_VGA_video_memory_window
VESA_rectangle_branch_2:
    57d6:	8b 5c 24 08          	mov    ebx,DWORD PTR [esp+0x8]
    57da:	a1 bc 7f 01 00       	mov    eax,ds:@obj3:VESA_writeable_window                           ; fixup: num: 527, src obj: 1, src ofs: 0x57db, dst obj: 3, dst ofs: 0x17fbc
    57df:	31 d2                	xor    edx,edx
    57e1:	8b bb cc 87 01 00    	mov    edi,DWORD PTR [ebx+@obj3:line_start_table_offset_offsets]    ; fixup: num: 526, src obj: 1, src ofs: 0x57e3, dst obj: 3, dst ofs: 0x187cc
    57e7:	8b 5c 24 0c          	mov    ebx,DWORD PTR [esp+0xc]
    57eb:	01 f8                	add    eax,edi
    57ed:	8a 54 24 2c          	mov    dl,BYTE PTR [esp+0x2c]
    57f1:	01 d8                	add    eax,ebx
    57f3:	8b 5c 24 04          	mov    ebx,DWORD PTR [esp+0x4]
    57f7:	e8 d4 bb 06 00       	call   memset_
VESA_rectangle_branch_3:
    57fc:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
    5800:	8b 74 24 08          	mov    esi,DWORD PTR [esp+0x8]
    5804:	8b 3c 24             	mov    edi,DWORD PTR [esp]
    5807:	45                   	inc    ebp
    5808:	83 c1 02             	add    ecx,0x2
    580b:	83 c6 04             	add    esi,0x4
    580e:	89 4c 24 10          	mov    DWORD PTR [esp+0x10],ecx
    5812:	89 74 24 08          	mov    DWORD PTR [esp+0x8],esi
    5816:	39 fd                	cmp    ebp,edi
    5818:	0f 8f 8a 01 00 00    	jg     VESA_rectangle_branch_13
    581e:	e9 67 ff ff ff       	jmp    VESA_rectangle_branch_1
VESA_rectangle_branch_4:
    5823:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
    5827:	39 c8                	cmp    eax,ecx
    5829:	0f 8e 12 01 00 00    	jle    VESA_rectangle_branch_11
    582f:	3b 4c 24 14          	cmp    ecx,DWORD PTR [esp+0x14]
    5833:	7d c7                	jge    VESA_rectangle_branch_3
    5835:	8b 5c 24 10          	mov    ebx,DWORD PTR [esp+0x10]
VESA_rectangle_branch_5:
    5839:	8a 44 24 2c          	mov    al,BYTE PTR [esp+0x2c]
    583d:	89 cf                	mov    edi,ecx
    583f:	88 44 24 18          	mov    BYTE PTR [esp+0x18],al
    5843:	0f bf 83 cc 97 01 00 	movsx  eax,WORD PTR [ebx+@obj3:line_start_table_split]              ; fixup: num: 433, src obj: 1, src ofs: 0x5846, dst obj: 3, dst ofs: 0x197cc
    584a:	89 ee                	mov    esi,ebp
    584c:	83 f8 ff             	cmp    eax,0xffffffff
    584f:	75 4d                	jne    VESA_rectangle_branch_7
    5851:	31 c0                	xor    eax,eax
    5853:	0f bf 15 c4 7f 01 00 	movsx  edx,WORD PTR ds:@obj3:VESA_writeable_window_position         ; fixup: num: 432, src obj: 1, src ofs: 0x5856, dst obj: 3, dst ofs: 0x17fc4
    585a:	66 8b 83 ca 7f 01 00 	mov    ax,WORD PTR [ebx+@obj3:line_start_table_window_offsets]      ; fixup: num: 431, src obj: 1, src ofs: 0x585d, dst obj: 3, dst ofs: 0x17fca
    5861:	39 c2                	cmp    edx,eax
    5863:	74 15                	je     VESA_rectangle_branch_6
    5865:	66 a3 c4 7f 01 00    	mov    ds:@obj3:VESA_writeable_window_position,ax                   ; fixup: num: 430, src obj: 1, src ofs: 0x5867, dst obj: 3, dst ofs: 0x17fc4
    586b:	0f bf d0             	movsx  edx,ax
    586e:	31 c0                	xor    eax,eax
    5870:	a0 c1 7f 01 00       	mov    al,ds:@obj3:VESA_writeable_number                            ; fixup: num: 429, src obj: 1, src ofs: 0x5871, dst obj: 3, dst ofs: 0x17fc1
    5875:	e8 26 f6 ff ff       	call   select_super_VGA_video_memory_window
VESA_rectangle_branch_6:
    587a:	8b 14 b5 cc 87 01 00 	mov    edx,DWORD PTR [esi*4+@obj3:line_start_table_offset_offsets]  ; fixup: num: 428, src obj: 1, src ofs: 0x587d, dst obj: 3, dst ofs: 0x187cc
    5881:	a1 bc 7f 01 00       	mov    eax,ds:@obj3:VESA_writeable_window                           ; fixup: num: 427, src obj: 1, src ofs: 0x5882, dst obj: 3, dst ofs: 0x17fbc
    5886:	01 d7                	add    edi,edx
    5888:	8a 54 24 18          	mov    dl,BYTE PTR [esp+0x18]
    588c:	88 14 07             	mov    BYTE PTR [edi+eax*1],dl
    588f:	8b 74 24 14          	mov    esi,DWORD PTR [esp+0x14]
    5893:	41                   	inc    ecx
    5894:	39 f1                	cmp    ecx,esi
    5896:	0f 8d 60 ff ff ff    	jge    VESA_rectangle_branch_3
    589c:	eb 9b                	jmp    VESA_rectangle_branch_5
VESA_rectangle_branch_7:
    589e:	39 c1                	cmp    ecx,eax
    58a0:	7d 4e                	jge    VESA_rectangle_branch_9
    58a2:	31 c0                	xor    eax,eax
    58a4:	0f bf 15 c4 7f 01 00 	movsx  edx,WORD PTR ds:@obj3:VESA_writeable_window_position         ; fixup: num: 426, src obj: 1, src ofs: 0x58a7, dst obj: 3, dst ofs: 0x17fc4
    58ab:	66 8b 83 ca 7f 01 00 	mov    ax,WORD PTR [ebx+@obj3:line_start_table_window_offsets]      ; fixup: num: 425, src obj: 1, src ofs: 0x58ae, dst obj: 3, dst ofs: 0x17fca
    58b2:	39 c2                	cmp    edx,eax
    58b4:	74 15                	je     VESA_rectangle_branch_8
    58b6:	66 a3 c4 7f 01 00    	mov    ds:@obj3:VESA_writeable_window_position,ax                   ; fixup: num: 424, src obj: 1, src ofs: 0x58b8, dst obj: 3, dst ofs: 0x17fc4
    58bc:	0f bf d0             	movsx  edx,ax
    58bf:	31 c0                	xor    eax,eax
    58c1:	a0 c1 7f 01 00       	mov    al,ds:@obj3:VESA_writeable_number                            ; fixup: num: 423, src obj: 1, src ofs: 0x58c2, dst obj: 3, dst ofs: 0x17fc1
    58c6:	e8 d5 f5 ff ff       	call   select_super_VGA_video_memory_window
VESA_rectangle_branch_8:
    58cb:	03 3c b5 cc 87 01 00 	add    edi,DWORD PTR [esi*4+@obj3:line_start_table_offset_offsets]  ; fixup: num: 422, src obj: 1, src ofs: 0x58ce, dst obj: 3, dst ofs: 0x187cc
    58d2:	a1 bc 7f 01 00       	mov    eax,ds:@obj3:VESA_writeable_window                           ; fixup: num: 421, src obj: 1, src ofs: 0x58d3, dst obj: 3, dst ofs: 0x17fbc
    58d7:	8a 54 24 18          	mov    dl,BYTE PTR [esp+0x18]
    58db:	88 14 07             	mov    BYTE PTR [edi+eax*1],dl
    58de:	8b 74 24 14          	mov    esi,DWORD PTR [esp+0x14]
    58e2:	41                   	inc    ecx
    58e3:	39 f1                	cmp    ecx,esi
    58e5:	0f 8d 11 ff ff ff    	jge    VESA_rectangle_branch_3
    58eb:	e9 49 ff ff ff       	jmp    VESA_rectangle_branch_5
VESA_rectangle_branch_9:
    58f0:	31 c0                	xor    eax,eax
    58f2:	0f bf 15 c4 7f 01 00 	movsx  edx,WORD PTR ds:@obj3:VESA_writeable_window_position         ; fixup: num: 445, src obj: 1, src ofs: 0x58f5, dst obj: 3, dst ofs: 0x17fc4
    58f9:	66 8b 83 cc 7f 01 00 	mov    ax,WORD PTR [ebx+@obj3:line_start_table_window_offsets_variable_1]; fixup: num: 444, src obj: 1, src ofs: 0x58fc, dst obj: 3, dst ofs: 0x17fcc
    5900:	39 c2                	cmp    edx,eax
    5902:	74 15                	je     VESA_rectangle_branch_10
    5904:	66 a3 c4 7f 01 00    	mov    ds:@obj3:VESA_writeable_window_position,ax                   ; fixup: num: 443, src obj: 1, src ofs: 0x5906, dst obj: 3, dst ofs: 0x17fc4
    590a:	0f bf d0             	movsx  edx,ax
    590d:	31 c0                	xor    eax,eax
    590f:	a0 c1 7f 01 00       	mov    al,ds:@obj3:VESA_writeable_number                            ; fixup: num: 442, src obj: 1, src ofs: 0x5910, dst obj: 3, dst ofs: 0x17fc1
    5914:	e8 87 f5 ff ff       	call   select_super_VGA_video_memory_window
VESA_rectangle_branch_10:
    5919:	0f bf 04 75 cc 97 01 00 	movsx  eax,WORD PTR [esi*2+@obj3:line_start_table_split]         ; fixup: num: 441, src obj: 1, src ofs: 0x591d, dst obj: 3, dst ofs: 0x197cc
    5921:	29 c7                	sub    edi,eax
    5923:	a1 bc 7f 01 00       	mov    eax,ds:@obj3:VESA_writeable_window                           ; fixup: num: 440, src obj: 1, src ofs: 0x5924, dst obj: 3, dst ofs: 0x17fbc
    5928:	8a 54 24 18          	mov    dl,BYTE PTR [esp+0x18]
    592c:	88 14 07             	mov    BYTE PTR [edi+eax*1],dl
    592f:	8b 74 24 14          	mov    esi,DWORD PTR [esp+0x14]
    5933:	41                   	inc    ecx
    5934:	39 f1                	cmp    ecx,esi
    5936:	0f 8d c0 fe ff ff    	jge    VESA_rectangle_branch_3
    593c:	e9 f8 fe ff ff       	jmp    VESA_rectangle_branch_5
VESA_rectangle_branch_11:
    5941:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
    5945:	31 c0                	xor    eax,eax
    5947:	66 8b 82 cc 7f 01 00 	mov    ax,WORD PTR [edx+@obj3:line_start_table_window_offsets_variable_1]; fixup: num: 439, src obj: 1, src ofs: 0x594a, dst obj: 3, dst ofs: 0x17fcc
    594e:	0f bf 15 c4 7f 01 00 	movsx  edx,WORD PTR ds:@obj3:VESA_writeable_window_position         ; fixup: num: 438, src obj: 1, src ofs: 0x5951, dst obj: 3, dst ofs: 0x17fc4
    5955:	39 c2                	cmp    edx,eax
    5957:	74 20                	je     VESA_rectangle_branch_12
    5959:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
    595d:	66 8b 80 cc 7f 01 00 	mov    ax,WORD PTR [eax+@obj3:line_start_table_window_offsets_variable_1]; fixup: num: 437, src obj: 1, src ofs: 0x5960, dst obj: 3, dst ofs: 0x17fcc
    5964:	66 a3 c4 7f 01 00    	mov    ds:@obj3:VESA_writeable_window_position,ax                   ; fixup: num: 436, src obj: 1, src ofs: 0x5966, dst obj: 3, dst ofs: 0x17fc4
    596a:	0f bf d0             	movsx  edx,ax
    596d:	31 c0                	xor    eax,eax
    596f:	a0 c1 7f 01 00       	mov    al,ds:@obj3:VESA_writeable_number                            ; fixup: num: 435, src obj: 1, src ofs: 0x5970, dst obj: 3, dst ofs: 0x17fc1
    5974:	e8 27 f5 ff ff       	call   select_super_VGA_video_memory_window
VESA_rectangle_branch_12:
    5979:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
    597d:	8b 5c 24 0c          	mov    ebx,DWORD PTR [esp+0xc]
    5981:	0f bf 80 cc 97 01 00 	movsx  eax,WORD PTR [eax+@obj3:line_start_table_split]              ; fixup: num: 434, src obj: 1, src ofs: 0x5984, dst obj: 3, dst ofs: 0x197cc
    5988:	29 c3                	sub    ebx,eax
    598a:	31 d2                	xor    edx,edx
    598c:	89 d8                	mov    eax,ebx
    598e:	8b 1d bc 7f 01 00    	mov    ebx,DWORD PTR ds:@obj3:VESA_writeable_window                 ; fixup: num: 446, src obj: 1, src ofs: 0x5990, dst obj: 3, dst ofs: 0x17fbc
    5994:	8a 54 24 2c          	mov    dl,BYTE PTR [esp+0x2c]
    5998:	01 d8                	add    eax,ebx
    599a:	8b 5c 24 04          	mov    ebx,DWORD PTR [esp+0x4]
    599e:	e8 2d ba 06 00       	call   memset_
    59a3:	e9 54 fe ff ff       	jmp    VESA_rectangle_branch_3
VESA_rectangle_branch_13:
    59a8:	83 c4 1c             	add    esp,0x1c
    59ab:	5d                   	pop    ebp
    59ac:	5f                   	pop    edi
    59ad:	5e                   	pop    esi
    59ae:	c2 08 00             	ret    0x8
    59b1:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    59b7:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
    59bd:	8d 40 00             	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'VESA_transparent_blit'              -
;-------------------------------------------------
VESA_transparent_blit:
    59c0:	56                   	push   esi
    59c1:	57                   	push   edi
    59c2:	55                   	push   ebp
    59c3:	83 ec 18             	sub    esp,0x18
    59c6:	89 04 24             	mov    DWORD PTR [esp],eax
    59c9:	89 54 24 10          	mov    DWORD PTR [esp+0x10],edx
    59cd:	8d 04 0a             	lea    eax,[edx+ecx*1]
    59d0:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
    59d4:	89 d0                	mov    eax,edx
    59d6:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
    59da:	8b 74 24 28          	mov    esi,DWORD PTR [esp+0x28]
    59de:	39 d0                	cmp    eax,edx
    59e0:	0f 8d 4e 01 00 00    	jge    VESA_transparent_blit_branch_11
    59e6:	8b 04 24             	mov    eax,DWORD PTR [esp]
    59e9:	01 d8                	add    eax,ebx
    59eb:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
    59ef:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
    59f3:	01 c0                	add    eax,eax
    59f5:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
VESA_transparent_blit_branch_1:
    59f9:	8b 0c 24             	mov    ecx,DWORD PTR [esp]
    59fc:	3b 4c 24 0c          	cmp    ecx,DWORD PTR [esp+0xc]
    5a00:	7c 22                	jl     VESA_transparent_blit_branch_3
VESA_transparent_blit_branch_2:
    5a02:	8b 5c 24 08          	mov    ebx,DWORD PTR [esp+0x8]
    5a06:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
    5a0a:	8b 7c 24 04          	mov    edi,DWORD PTR [esp+0x4]
    5a0e:	83 c3 02             	add    ebx,0x2
    5a11:	41                   	inc    ecx
    5a12:	89 5c 24 08          	mov    DWORD PTR [esp+0x8],ebx
    5a16:	89 4c 24 10          	mov    DWORD PTR [esp+0x10],ecx
    5a1a:	39 f9                	cmp    ecx,edi
    5a1c:	0f 8d 12 01 00 00    	jge    VESA_transparent_blit_branch_11
    5a22:	eb d5                	jmp    VESA_transparent_blit_branch_1
VESA_transparent_blit_branch_3:
    5a24:	8b 5c 24 08          	mov    ebx,DWORD PTR [esp+0x8]
    5a28:	8b 7c 24 10          	mov    edi,DWORD PTR [esp+0x10]
VESA_transparent_blit_branch_4:
    5a2c:	8a 26                	mov    ah,BYTE PTR [esi]
    5a2e:	84 e4                	test   ah,ah
    5a30:	0f 84 eb 00 00 00    	je     VESA_transparent_blit_branch_10
    5a36:	88 64 24 14          	mov    BYTE PTR [esp+0x14],ah
    5a3a:	0f bf 83 cc 97 01 00 	movsx  eax,WORD PTR [ebx+@obj3:line_start_table_split]              ; fixup: num: 460, src obj: 1, src ofs: 0x5a3d, dst obj: 3, dst ofs: 0x197cc
    5a41:	89 cd                	mov    ebp,ecx
    5a43:	83 f8 ff             	cmp    eax,0xffffffff
    5a46:	75 44                	jne    VESA_transparent_blit_branch_6
    5a48:	31 d2                	xor    edx,edx
    5a4a:	0f bf 05 c4 7f 01 00 	movsx  eax,WORD PTR ds:@obj3:VESA_writeable_window_position         ; fixup: num: 459, src obj: 1, src ofs: 0x5a4d, dst obj: 3, dst ofs: 0x17fc4
    5a51:	66 8b 93 ca 7f 01 00 	mov    dx,WORD PTR [ebx+@obj3:line_start_table_window_offsets]      ; fixup: num: 458, src obj: 1, src ofs: 0x5a54, dst obj: 3, dst ofs: 0x17fca
    5a58:	39 d0                	cmp    eax,edx
    5a5a:	74 16                	je     VESA_transparent_blit_branch_5
    5a5c:	31 c0                	xor    eax,eax
    5a5e:	66 89 15 c4 7f 01 00 	mov    WORD PTR ds:@obj3:VESA_writeable_window_position,dx          ; fixup: num: 457, src obj: 1, src ofs: 0x5a61, dst obj: 3, dst ofs: 0x17fc4
    5a65:	a0 c1 7f 01 00       	mov    al,ds:@obj3:VESA_writeable_number                            ; fixup: num: 456, src obj: 1, src ofs: 0x5a66, dst obj: 3, dst ofs: 0x17fc1
    5a6a:	0f bf d2             	movsx  edx,dx
    5a6d:	e8 2e f4 ff ff       	call   select_super_VGA_video_memory_window
VESA_transparent_blit_branch_5:
    5a72:	8b 14 bd cc 87 01 00 	mov    edx,DWORD PTR [edi*4+@obj3:line_start_table_offset_offsets]  ; fixup: num: 455, src obj: 1, src ofs: 0x5a75, dst obj: 3, dst ofs: 0x187cc
    5a79:	a1 bc 7f 01 00       	mov    eax,ds:@obj3:VESA_writeable_window                           ; fixup: num: 454, src obj: 1, src ofs: 0x5a7a, dst obj: 3, dst ofs: 0x17fbc
    5a7e:	01 d5                	add    ebp,edx
    5a80:	8a 54 24 14          	mov    dl,BYTE PTR [esp+0x14]
    5a84:	88 14 28             	mov    BYTE PTR [eax+ebp*1],dl
    5a87:	e9 95 00 00 00       	jmp    VESA_transparent_blit_branch_10
VESA_transparent_blit_branch_6:
    5a8c:	39 c1                	cmp    ecx,eax
    5a8e:	7d 4f                	jge    VESA_transparent_blit_branch_8
    5a90:	31 c0                	xor    eax,eax
    5a92:	0f bf 15 c4 7f 01 00 	movsx  edx,WORD PTR ds:@obj3:VESA_writeable_window_position         ; fixup: num: 453, src obj: 1, src ofs: 0x5a95, dst obj: 3, dst ofs: 0x17fc4
    5a99:	66 8b 83 ca 7f 01 00 	mov    ax,WORD PTR [ebx+@obj3:line_start_table_window_offsets]      ; fixup: num: 452, src obj: 1, src ofs: 0x5a9c, dst obj: 3, dst ofs: 0x17fca
    5aa0:	39 d0                	cmp    eax,edx
    5aa2:	74 15                	je     VESA_transparent_blit_branch_7
    5aa4:	66 a3 c4 7f 01 00    	mov    ds:@obj3:VESA_writeable_window_position,ax                   ; fixup: num: 451, src obj: 1, src ofs: 0x5aa6, dst obj: 3, dst ofs: 0x17fc4
    5aaa:	0f bf d0             	movsx  edx,ax
    5aad:	31 c0                	xor    eax,eax
    5aaf:	a0 c1 7f 01 00       	mov    al,ds:@obj3:VESA_writeable_number                            ; fixup: num: 450, src obj: 1, src ofs: 0x5ab0, dst obj: 3, dst ofs: 0x17fc1
    5ab4:	e8 e7 f3 ff ff       	call   select_super_VGA_video_memory_window
VESA_transparent_blit_branch_7:
    5ab9:	03 2c bd cc 87 01 00 	add    ebp,DWORD PTR [edi*4+@obj3:line_start_table_offset_offsets]  ; fixup: num: 449, src obj: 1, src ofs: 0x5abc, dst obj: 3, dst ofs: 0x187cc
    5ac0:	a1 bc 7f 01 00       	mov    eax,ds:@obj3:VESA_writeable_window                           ; fixup: num: 448, src obj: 1, src ofs: 0x5ac1, dst obj: 3, dst ofs: 0x17fbc
    5ac5:	8a 54 24 14          	mov    dl,BYTE PTR [esp+0x14]
    5ac9:	88 14 28             	mov    BYTE PTR [eax+ebp*1],dl
    5acc:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
    5ad0:	41                   	inc    ecx
    5ad1:	46                   	inc    esi
    5ad2:	39 c1                	cmp    ecx,eax
    5ad4:	0f 8d 28 ff ff ff    	jge    VESA_transparent_blit_branch_2
    5ada:	e9 4d ff ff ff       	jmp    VESA_transparent_blit_branch_4
VESA_transparent_blit_branch_8:
    5adf:	31 c0                	xor    eax,eax
    5ae1:	0f bf 15 c4 7f 01 00 	movsx  edx,WORD PTR ds:@obj3:VESA_writeable_window_position         ; fixup: num: 447, src obj: 1, src ofs: 0x5ae4, dst obj: 3, dst ofs: 0x17fc4
    5ae8:	66 8b 83 cc 7f 01 00 	mov    ax,WORD PTR [ebx+@obj3:line_start_table_window_offsets_variable_1]; fixup: num: 465, src obj: 1, src ofs: 0x5aeb, dst obj: 3, dst ofs: 0x17fcc
    5aef:	39 d0                	cmp    eax,edx
    5af1:	74 15                	je     VESA_transparent_blit_branch_9
    5af3:	66 a3 c4 7f 01 00    	mov    ds:@obj3:VESA_writeable_window_position,ax                   ; fixup: num: 464, src obj: 1, src ofs: 0x5af5, dst obj: 3, dst ofs: 0x17fc4
    5af9:	0f bf d0             	movsx  edx,ax
    5afc:	31 c0                	xor    eax,eax
    5afe:	a0 c1 7f 01 00       	mov    al,ds:@obj3:VESA_writeable_number                            ; fixup: num: 463, src obj: 1, src ofs: 0x5aff, dst obj: 3, dst ofs: 0x17fc1
    5b03:	e8 98 f3 ff ff       	call   select_super_VGA_video_memory_window
VESA_transparent_blit_branch_9:
    5b08:	0f bf 04 7d cc 97 01 00 	movsx  eax,WORD PTR [edi*2+@obj3:line_start_table_split]         ; fixup: num: 462, src obj: 1, src ofs: 0x5b0c, dst obj: 3, dst ofs: 0x197cc
    5b10:	8b 15 bc 7f 01 00    	mov    edx,DWORD PTR ds:@obj3:VESA_writeable_window                 ; fixup: num: 461, src obj: 1, src ofs: 0x5b12, dst obj: 3, dst ofs: 0x17fbc
    5b16:	29 c5                	sub    ebp,eax
    5b18:	8d 04 2a             	lea    eax,[edx+ebp*1]
    5b1b:	8a 54 24 14          	mov    dl,BYTE PTR [esp+0x14]
    5b1f:	88 10                	mov    BYTE PTR [eax],dl
VESA_transparent_blit_branch_10:
    5b21:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
    5b25:	41                   	inc    ecx
    5b26:	46                   	inc    esi
    5b27:	39 c1                	cmp    ecx,eax
    5b29:	0f 8d d3 fe ff ff    	jge    VESA_transparent_blit_branch_2
    5b2f:	e9 f8 fe ff ff       	jmp    VESA_transparent_blit_branch_4
VESA_transparent_blit_branch_11:
    5b34:	83 c4 18             	add    esp,0x18
    5b37:	5d                   	pop    ebp
    5b38:	5f                   	pop    edi
    5b39:	5e                   	pop    esi
    5b3a:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'box_VESA_105'                       -
;-------------------------------------------------
box_VESA_105:

;-------------------------------------------------
;  Function 'line_VESA_105'                      -
;-------------------------------------------------
line_VESA_105:

;-------------------------------------------------
;  Function 'box_VESA_103'                       -
;-------------------------------------------------
box_VESA_103:

;-------------------------------------------------
;  Function 'line_VESA_103'                      -
;-------------------------------------------------
line_VESA_103:

;-------------------------------------------------
;  Function 'box_VESA_101'                       -
;-------------------------------------------------
box_VESA_101:

;-------------------------------------------------
;  Function 'line_VESA_101'                      -
;-------------------------------------------------
line_VESA_101:

;-------------------------------------------------
;  Function 'box_VESA_100'                       -
;-------------------------------------------------
box_VESA_100:

;-------------------------------------------------
;  Function 'line_VESA_100'                      -
;-------------------------------------------------
line_VESA_100:
    5b40:	c2 04 00             	ret    0x4
    5b43:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    5b49:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
    5b4f:	90                   	nop

;-------------------------------------------------
;  Function 'VESA_blit'                          -
;-------------------------------------------------
VESA_blit:
    5b50:	56                   	push   esi
    5b51:	57                   	push   edi
    5b52:	55                   	push   ebp
    5b53:	83 ec 34             	sub    esp,0x34
    5b56:	8b 7c 24 44          	mov    edi,DWORD PTR [esp+0x44]
    5b5a:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
    5b5e:	89 54 24 20          	mov    DWORD PTR [esp+0x20],edx
    5b62:	89 5c 24 10          	mov    DWORD PTR [esp+0x10],ebx
    5b66:	89 ca                	mov    edx,ecx
    5b68:	8b 44 24 48          	mov    eax,DWORD PTR [esp+0x48]
    5b6c:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
    5b70:	89 44 24 24          	mov    DWORD PTR [esp+0x24],eax
    5b74:	01 c9                	add    ecx,ecx
    5b76:	83 fb 01             	cmp    ebx,0x1
    5b79:	0f 85 0e 01 00 00    	jne    VESA_blit_branch_8
    5b7f:	8b 6c 24 20          	mov    ebp,DWORD PTR [esp+0x20]
    5b83:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
    5b87:	01 d5                	add    ebp,edx
    5b89:	39 c5                	cmp    ebp,eax
    5b8b:	0f 86 eb 01 00 00    	jbe    VESA_blit_branch_10
    5b91:	01 df                	add    edi,ebx
    5b93:	89 3c 24             	mov    DWORD PTR [esp],edi
    5b96:	89 cb                	mov    ebx,ecx
VESA_blit_branch_1:
    5b98:	8b 7c 24 18          	mov    edi,DWORD PTR [esp+0x18]
    5b9c:	8b 74 24 20          	mov    esi,DWORD PTR [esp+0x20]
    5ba0:	8b 4c 24 24          	mov    ecx,DWORD PTR [esp+0x24]
    5ba4:	0f bf 83 cc 97 01 00 	movsx  eax,WORD PTR [ebx+@obj3:line_start_table_split]              ; fixup: num: 365, src obj: 1, src ofs: 0x5ba7, dst obj: 3, dst ofs: 0x197cc
    5bab:	8a 09                	mov    cl,BYTE PTR [ecx]
    5bad:	83 f8 ff             	cmp    eax,0xffffffff
    5bb0:	75 5d                	jne    VESA_blit_branch_4
    5bb2:	31 c0                	xor    eax,eax
    5bb4:	0f bf 15 c4 7f 01 00 	movsx  edx,WORD PTR ds:@obj3:VESA_writeable_window_position         ; fixup: num: 364, src obj: 1, src ofs: 0x5bb7, dst obj: 3, dst ofs: 0x17fc4
    5bbb:	66 8b 83 ca 7f 01 00 	mov    ax,WORD PTR [ebx+@obj3:line_start_table_window_offsets]      ; fixup: num: 363, src obj: 1, src ofs: 0x5bbe, dst obj: 3, dst ofs: 0x17fca
    5bc2:	39 c2                	cmp    edx,eax
    5bc4:	74 15                	je     VESA_blit_branch_2
    5bc6:	66 a3 c4 7f 01 00    	mov    ds:@obj3:VESA_writeable_window_position,ax                   ; fixup: num: 362, src obj: 1, src ofs: 0x5bc8, dst obj: 3, dst ofs: 0x17fc4
    5bcc:	0f bf d0             	movsx  edx,ax
    5bcf:	31 c0                	xor    eax,eax
    5bd1:	a0 c1 7f 01 00       	mov    al,ds:@obj3:VESA_writeable_number                            ; fixup: num: 361, src obj: 1, src ofs: 0x5bd2, dst obj: 3, dst ofs: 0x17fc1
    5bd6:	e8 c5 f2 ff ff       	call   select_super_VGA_video_memory_window
VESA_blit_branch_2:
    5bdb:	8b 14 b5 cc 87 01 00 	mov    edx,DWORD PTR [esi*4+@obj3:line_start_table_offset_offsets]  ; fixup: num: 360, src obj: 1, src ofs: 0x5bde, dst obj: 3, dst ofs: 0x187cc
    5be2:	a1 bc 7f 01 00       	mov    eax,ds:@obj3:VESA_writeable_window                           ; fixup: num: 359, src obj: 1, src ofs: 0x5be3, dst obj: 3, dst ofs: 0x17fbc
    5be7:	01 d7                	add    edi,edx
    5be9:	88 0c 07             	mov    BYTE PTR [edi+eax*1],cl
VESA_blit_branch_3:
    5bec:	8b 04 24             	mov    eax,DWORD PTR [esp]
    5bef:	8b 7c 24 24          	mov    edi,DWORD PTR [esp+0x24]
    5bf3:	01 c7                	add    edi,eax
    5bf5:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
    5bf9:	83 c3 02             	add    ebx,0x2
    5bfc:	40                   	inc    eax
    5bfd:	89 7c 24 24          	mov    DWORD PTR [esp+0x24],edi
    5c01:	89 44 24 20          	mov    DWORD PTR [esp+0x20],eax
    5c05:	39 c5                	cmp    ebp,eax
    5c07:	0f 86 6f 01 00 00    	jbe    VESA_blit_branch_10
    5c0d:	eb 89                	jmp    VESA_blit_branch_1
VESA_blit_branch_4:
    5c0f:	39 f8                	cmp    eax,edi
    5c11:	7e 3a                	jle    VESA_blit_branch_6
    5c13:	31 c0                	xor    eax,eax
    5c15:	0f bf 15 c4 7f 01 00 	movsx  edx,WORD PTR ds:@obj3:VESA_writeable_window_position         ; fixup: num: 470, src obj: 1, src ofs: 0x5c18, dst obj: 3, dst ofs: 0x17fc4
    5c1c:	66 8b 83 ca 7f 01 00 	mov    ax,WORD PTR [ebx+@obj3:line_start_table_window_offsets]      ; fixup: num: 469, src obj: 1, src ofs: 0x5c1f, dst obj: 3, dst ofs: 0x17fca
    5c23:	39 c2                	cmp    edx,eax
    5c25:	74 15                	je     VESA_blit_branch_5
    5c27:	66 a3 c4 7f 01 00    	mov    ds:@obj3:VESA_writeable_window_position,ax                   ; fixup: num: 468, src obj: 1, src ofs: 0x5c29, dst obj: 3, dst ofs: 0x17fc4
    5c2d:	0f bf d0             	movsx  edx,ax
    5c30:	31 c0                	xor    eax,eax
    5c32:	a0 c1 7f 01 00       	mov    al,ds:@obj3:VESA_writeable_number                            ; fixup: num: 467, src obj: 1, src ofs: 0x5c33, dst obj: 3, dst ofs: 0x17fc1
    5c37:	e8 64 f2 ff ff       	call   select_super_VGA_video_memory_window
VESA_blit_branch_5:
    5c3c:	03 3c b5 cc 87 01 00 	add    edi,DWORD PTR [esi*4+@obj3:line_start_table_offset_offsets]  ; fixup: num: 466, src obj: 1, src ofs: 0x5c3f, dst obj: 3, dst ofs: 0x187cc
    5c43:	a1 bc 7f 01 00       	mov    eax,ds:@obj3:VESA_writeable_window                           ; fixup: num: 380, src obj: 1, src ofs: 0x5c44, dst obj: 3, dst ofs: 0x17fbc
    5c48:	88 0c 07             	mov    BYTE PTR [edi+eax*1],cl
    5c4b:	eb 9f                	jmp    VESA_blit_branch_3
VESA_blit_branch_6:
    5c4d:	31 c0                	xor    eax,eax
    5c4f:	0f bf 15 c4 7f 01 00 	movsx  edx,WORD PTR ds:@obj3:VESA_writeable_window_position         ; fixup: num: 379, src obj: 1, src ofs: 0x5c52, dst obj: 3, dst ofs: 0x17fc4
    5c56:	66 8b 83 cc 7f 01 00 	mov    ax,WORD PTR [ebx+@obj3:line_start_table_window_offsets_variable_1]; fixup: num: 378, src obj: 1, src ofs: 0x5c59, dst obj: 3, dst ofs: 0x17fcc
    5c5d:	39 c2                	cmp    edx,eax
    5c5f:	74 15                	je     VESA_blit_branch_7
    5c61:	66 a3 c4 7f 01 00    	mov    ds:@obj3:VESA_writeable_window_position,ax                   ; fixup: num: 377, src obj: 1, src ofs: 0x5c63, dst obj: 3, dst ofs: 0x17fc4
    5c67:	0f bf d0             	movsx  edx,ax
    5c6a:	31 c0                	xor    eax,eax
    5c6c:	a0 c1 7f 01 00       	mov    al,ds:@obj3:VESA_writeable_number                            ; fixup: num: 376, src obj: 1, src ofs: 0x5c6d, dst obj: 3, dst ofs: 0x17fc1
    5c71:	e8 2a f2 ff ff       	call   select_super_VGA_video_memory_window
VESA_blit_branch_7:
    5c76:	0f bf 04 75 cc 97 01 00 	movsx  eax,WORD PTR [esi*2+@obj3:line_start_table_split]         ; fixup: num: 375, src obj: 1, src ofs: 0x5c7a, dst obj: 3, dst ofs: 0x197cc
    5c7e:	29 c7                	sub    edi,eax
    5c80:	a1 bc 7f 01 00       	mov    eax,ds:@obj3:VESA_writeable_window                           ; fixup: num: 374, src obj: 1, src ofs: 0x5c81, dst obj: 3, dst ofs: 0x17fbc
    5c85:	88 0c 07             	mov    BYTE PTR [edi+eax*1],cl
    5c88:	e9 5f ff ff ff       	jmp    VESA_blit_branch_3
VESA_blit_branch_8:
    5c8d:	0f bf 2d c8 7f 01 00 	movsx  ebp,WORD PTR ds:@obj3:VESA_vertical_resolution               ; fixup: num: 373, src obj: 1, src ofs: 0x5c90, dst obj: 3, dst ofs: 0x17fc8
    5c94:	39 dd                	cmp    ebp,ebx
    5c96:	0f 85 e9 00 00 00    	jne    VESA_blit_branch_11
    5c9c:	0f bf 05 c6 7f 01 00 	movsx  eax,WORD PTR ds:@obj3:VESA_horizontal_resolution             ; fixup: num: 372, src obj: 1, src ofs: 0x5c9f, dst obj: 3, dst ofs: 0x17fc6
    5ca3:	39 c2                	cmp    edx,eax
    5ca5:	0f 85 da 00 00 00    	jne    VESA_blit_branch_11
    5cab:	85 ff                	test   edi,edi
    5cad:	0f 85 d2 00 00 00    	jne    VESA_blit_branch_11
    5cb3:	0f af e8             	imul   ebp,eax
    5cb6:	0f bf 15 b4 7f 01 00 	movsx  edx,WORD PTR ds:@obj3:VESA_window_size                       ; fixup: num: 371, src obj: 1, src ofs: 0x5cb9, dst obj: 3, dst ofs: 0x17fb4
    5cbd:	0f bf 35 b2 7f 01 00 	movsx  esi,WORD PTR ds:@obj3:VESA_window_granularity                ; fixup: num: 370, src obj: 1, src ofs: 0x5cc0, dst obj: 3, dst ofs: 0x17fb2
    5cc4:	89 d0                	mov    eax,edx
    5cc6:	c1 fa 1f             	sar    edx,0x1f
    5cc9:	f7 fe                	idiv   esi
    5ccb:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
    5ccf:	31 d2                	xor    edx,edx
    5cd1:	0f bf 05 c4 7f 01 00 	movsx  eax,WORD PTR ds:@obj3:VESA_writeable_window_position         ; fixup: num: 369, src obj: 1, src ofs: 0x5cd4, dst obj: 3, dst ofs: 0x17fc4
    5cd8:	66 8b 91 ca 7f 01 00 	mov    dx,WORD PTR [ecx+@obj3:line_start_table_window_offsets]      ; fixup: num: 368, src obj: 1, src ofs: 0x5cdb, dst obj: 3, dst ofs: 0x17fca
    5cdf:	31 db                	xor    ebx,ebx
    5ce1:	39 d0                	cmp    eax,edx
    5ce3:	74 16                	je     VESA_blit_branch_9
    5ce5:	31 c0                	xor    eax,eax
    5ce7:	66 89 15 c4 7f 01 00 	mov    WORD PTR ds:@obj3:VESA_writeable_window_position,dx          ; fixup: num: 367, src obj: 1, src ofs: 0x5cea, dst obj: 3, dst ofs: 0x17fc4
    5cee:	a0 c1 7f 01 00       	mov    al,ds:@obj3:VESA_writeable_number                            ; fixup: num: 366, src obj: 1, src ofs: 0x5cef, dst obj: 3, dst ofs: 0x17fc1
    5cf3:	0f bf d2             	movsx  edx,dx
    5cf6:	e8 a5 f1 ff ff       	call   select_super_VGA_video_memory_window
VESA_blit_branch_9:
    5cfb:	8b 74 24 24          	mov    esi,DWORD PTR [esp+0x24]
    5cff:	8b 0d cc 9f 01 00    	mov    ecx,DWORD PTR ds:@obj3:window_size                           ; fixup: num: 388, src obj: 1, src ofs: 0x5d01, dst obj: 3, dst ofs: 0x19fcc
    5d05:	8b 3d bc 7f 01 00    	mov    edi,DWORD PTR ds:@obj3:VESA_writeable_window                 ; fixup: num: 387, src obj: 1, src ofs: 0x5d07, dst obj: 3, dst ofs: 0x17fbc
    5d0b:	57                   	push   edi
    5d0c:	89 c8                	mov    eax,ecx
    5d0e:	c1 e9 02             	shr    ecx,0x2
    5d11:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
    5d13:	8a c8                	mov    cl,al
    5d15:	80 e1 03             	and    cl,0x3
    5d18:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
    5d1a:	5f                   	pop    edi
    5d1b:	8b 4c 24 24          	mov    ecx,DWORD PTR [esp+0x24]
    5d1f:	8b 15 cc 9f 01 00    	mov    edx,DWORD PTR ds:@obj3:window_size                           ; fixup: num: 386, src obj: 1, src ofs: 0x5d21, dst obj: 3, dst ofs: 0x19fcc
    5d25:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
    5d29:	01 d3                	add    ebx,edx
    5d2b:	01 d1                	add    ecx,edx
    5d2d:	66 8b 15 c4 7f 01 00 	mov    dx,WORD PTR ds:@obj3:VESA_writeable_window_position          ; fixup: num: 385, src obj: 1, src ofs: 0x5d30, dst obj: 3, dst ofs: 0x17fc4
    5d34:	01 c2                	add    edx,eax
    5d36:	31 c0                	xor    eax,eax
    5d38:	66 89 15 c4 7f 01 00 	mov    WORD PTR ds:@obj3:VESA_writeable_window_position,dx          ; fixup: num: 384, src obj: 1, src ofs: 0x5d3b, dst obj: 3, dst ofs: 0x17fc4
    5d3f:	a0 c1 7f 01 00       	mov    al,ds:@obj3:VESA_writeable_number                            ; fixup: num: 383, src obj: 1, src ofs: 0x5d40, dst obj: 3, dst ofs: 0x17fc1
    5d44:	0f bf d2             	movsx  edx,dx
    5d47:	e8 54 f1 ff ff       	call   select_super_VGA_video_memory_window
    5d4c:	8b 35 cc 9f 01 00    	mov    esi,DWORD PTR ds:@obj3:window_size                           ; fixup: num: 382, src obj: 1, src ofs: 0x5d4e, dst obj: 3, dst ofs: 0x19fcc
    5d52:	89 e8                	mov    eax,ebp
    5d54:	29 f0                	sub    eax,esi
    5d56:	89 4c 24 24          	mov    DWORD PTR [esp+0x24],ecx
    5d5a:	39 c3                	cmp    ebx,eax
    5d5c:	76 9d                	jbe    VESA_blit_branch_9
    5d5e:	8b 74 24 24          	mov    esi,DWORD PTR [esp+0x24]
    5d62:	89 e9                	mov    ecx,ebp
    5d64:	8b 3d bc 7f 01 00    	mov    edi,DWORD PTR ds:@obj3:VESA_writeable_window                 ; fixup: num: 381, src obj: 1, src ofs: 0x5d66, dst obj: 3, dst ofs: 0x17fbc
    5d6a:	29 d9                	sub    ecx,ebx
    5d6c:	57                   	push   edi
    5d6d:	89 c8                	mov    eax,ecx
    5d6f:	c1 e9 02             	shr    ecx,0x2
    5d72:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
    5d74:	8a c8                	mov    cl,al
    5d76:	80 e1 03             	and    cl,0x3
    5d79:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
    5d7b:	5f                   	pop    edi
VESA_blit_branch_10:
    5d7c:	83 c4 34             	add    esp,0x34
    5d7f:	5d                   	pop    ebp
    5d80:	5f                   	pop    edi
    5d81:	5e                   	pop    esi
    5d82:	c2 08 00             	ret    0x8
VESA_blit_branch_11:
    5d85:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
    5d89:	01 d0                	add    eax,edx
    5d8b:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
    5d8f:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
    5d93:	3b 44 24 0c          	cmp    eax,DWORD PTR [esp+0xc]
    5d97:	73 e3                	jae    VESA_blit_branch_10
    5d99:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
    5d9d:	01 f8                	add    eax,edi
    5d9f:	8b 6c 24 10          	mov    ebp,DWORD PTR [esp+0x10]
    5da3:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
    5da7:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
    5dab:	01 e8                	add    eax,ebp
    5dad:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
    5db1:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
    5db5:	01 c0                	add    eax,eax
    5db7:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
VESA_blit_branch_12:
    5dbb:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
    5dbf:	89 44 24 2c          	mov    DWORD PTR [esp+0x2c],eax
    5dc3:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
    5dc7:	8b 7c 24 18          	mov    edi,DWORD PTR [esp+0x18]
    5dcb:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
    5dcf:	0f bf 80 cc 97 01 00 	movsx  eax,WORD PTR [eax+@obj3:line_start_table_split]              ; fixup: num: 396, src obj: 1, src ofs: 0x5dd2, dst obj: 3, dst ofs: 0x197cc
    5dd6:	8b 6c 24 24          	mov    ebp,DWORD PTR [esp+0x24]
    5dda:	83 f8 ff             	cmp    eax,0xffffffff
    5ddd:	0f 85 8f 00 00 00    	jne    VESA_blit_branch_15
    5de3:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
    5de7:	31 c0                	xor    eax,eax
    5de9:	66 8b 82 ca 7f 01 00 	mov    ax,WORD PTR [edx+@obj3:line_start_table_window_offsets]      ; fixup: num: 395, src obj: 1, src ofs: 0x5dec, dst obj: 3, dst ofs: 0x17fca
    5df0:	0f bf 15 c4 7f 01 00 	movsx  edx,WORD PTR ds:@obj3:VESA_writeable_window_position         ; fixup: num: 394, src obj: 1, src ofs: 0x5df3, dst obj: 3, dst ofs: 0x17fc4
    5df7:	39 c2                	cmp    edx,eax
    5df9:	74 20                	je     VESA_blit_branch_13
    5dfb:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
    5dff:	66 8b 80 ca 7f 01 00 	mov    ax,WORD PTR [eax+@obj3:line_start_table_window_offsets]      ; fixup: num: 393, src obj: 1, src ofs: 0x5e02, dst obj: 3, dst ofs: 0x17fca
    5e06:	66 a3 c4 7f 01 00    	mov    ds:@obj3:VESA_writeable_window_position,ax                   ; fixup: num: 392, src obj: 1, src ofs: 0x5e08, dst obj: 3, dst ofs: 0x17fc4
    5e0c:	0f bf d0             	movsx  edx,ax
    5e0f:	31 c0                	xor    eax,eax
    5e11:	a0 c1 7f 01 00       	mov    al,ds:@obj3:VESA_writeable_number                            ; fixup: num: 391, src obj: 1, src ofs: 0x5e12, dst obj: 3, dst ofs: 0x17fc1
    5e16:	e8 85 f0 ff ff       	call   select_super_VGA_video_memory_window
VESA_blit_branch_13:
    5e1b:	8b 54 24 2c          	mov    edx,DWORD PTR [esp+0x2c]
    5e1f:	a1 bc 7f 01 00       	mov    eax,ds:@obj3:VESA_writeable_window                           ; fixup: num: 390, src obj: 1, src ofs: 0x5e20, dst obj: 3, dst ofs: 0x17fbc
    5e24:	03 04 95 cc 87 01 00 	add    eax,DWORD PTR [edx*4+@obj3:line_start_table_offset_offsets]  ; fixup: num: 389, src obj: 1, src ofs: 0x5e27, dst obj: 3, dst ofs: 0x187cc
    5e2b:	89 ee                	mov    esi,ebp
    5e2d:	01 c7                	add    edi,eax
    5e2f:	57                   	push   edi
    5e30:	89 c8                	mov    eax,ecx
    5e32:	c1 e9 02             	shr    ecx,0x2
    5e35:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
    5e37:	8a c8                	mov    cl,al
    5e39:	80 e1 03             	and    cl,0x3
    5e3c:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
    5e3e:	5f                   	pop    edi
VESA_blit_branch_14:
    5e3f:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
    5e43:	8b 5c 24 24          	mov    ebx,DWORD PTR [esp+0x24]
    5e47:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
    5e4b:	8b 74 24 20          	mov    esi,DWORD PTR [esp+0x20]
    5e4f:	8b 7c 24 0c          	mov    edi,DWORD PTR [esp+0xc]
    5e53:	83 c1 02             	add    ecx,0x2
    5e56:	01 c3                	add    ebx,eax
    5e58:	46                   	inc    esi
    5e59:	89 5c 24 24          	mov    DWORD PTR [esp+0x24],ebx
    5e5d:	89 4c 24 1c          	mov    DWORD PTR [esp+0x1c],ecx
    5e61:	89 74 24 20          	mov    DWORD PTR [esp+0x20],esi
    5e65:	39 fe                	cmp    esi,edi
    5e67:	0f 83 0f ff ff ff    	jae    VESA_blit_branch_10
    5e6d:	e9 49 ff ff ff       	jmp    VESA_blit_branch_12
VESA_blit_branch_15:
    5e72:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
    5e76:	89 f9                	mov    ecx,edi
    5e78:	89 44 24 28          	mov    DWORD PTR [esp+0x28],eax
    5e7c:	39 c7                	cmp    edi,eax
    5e7e:	7d bf                	jge    VESA_blit_branch_14
    5e80:	8b 5c 24 1c          	mov    ebx,DWORD PTR [esp+0x1c]
    5e84:	8b 7c 24 2c          	mov    edi,DWORD PTR [esp+0x2c]
VESA_blit_branch_16:
    5e88:	8a 45 00             	mov    al,BYTE PTR [ebp+0x0]
    5e8b:	88 44 24 30          	mov    BYTE PTR [esp+0x30],al
    5e8f:	0f bf 83 cc 97 01 00 	movsx  eax,WORD PTR [ebx+@obj3:line_start_table_split]              ; fixup: num: 404, src obj: 1, src ofs: 0x5e92, dst obj: 3, dst ofs: 0x197cc
    5e96:	89 ce                	mov    esi,ecx
    5e98:	83 f8 ff             	cmp    eax,0xffffffff
    5e9b:	75 4f                	jne    VESA_blit_branch_18
    5e9d:	31 d2                	xor    edx,edx
    5e9f:	0f bf 05 c4 7f 01 00 	movsx  eax,WORD PTR ds:@obj3:VESA_writeable_window_position         ; fixup: num: 403, src obj: 1, src ofs: 0x5ea2, dst obj: 3, dst ofs: 0x17fc4
    5ea6:	66 8b 93 ca 7f 01 00 	mov    dx,WORD PTR [ebx+@obj3:line_start_table_window_offsets]      ; fixup: num: 402, src obj: 1, src ofs: 0x5ea9, dst obj: 3, dst ofs: 0x17fca
    5ead:	39 d0                	cmp    eax,edx
    5eaf:	74 16                	je     VESA_blit_branch_17
    5eb1:	31 c0                	xor    eax,eax
    5eb3:	66 89 15 c4 7f 01 00 	mov    WORD PTR ds:@obj3:VESA_writeable_window_position,dx          ; fixup: num: 401, src obj: 1, src ofs: 0x5eb6, dst obj: 3, dst ofs: 0x17fc4
    5eba:	a0 c1 7f 01 00       	mov    al,ds:@obj3:VESA_writeable_number                            ; fixup: num: 400, src obj: 1, src ofs: 0x5ebb, dst obj: 3, dst ofs: 0x17fc1
    5ebf:	0f bf d2             	movsx  edx,dx
    5ec2:	e8 d9 ef ff ff       	call   select_super_VGA_video_memory_window
VESA_blit_branch_17:
    5ec7:	8b 14 bd cc 87 01 00 	mov    edx,DWORD PTR [edi*4+@obj3:line_start_table_offset_offsets]  ; fixup: num: 399, src obj: 1, src ofs: 0x5eca, dst obj: 3, dst ofs: 0x187cc
    5ece:	a1 bc 7f 01 00       	mov    eax,ds:@obj3:VESA_writeable_window                           ; fixup: num: 398, src obj: 1, src ofs: 0x5ecf, dst obj: 3, dst ofs: 0x17fbc
    5ed3:	01 d6                	add    esi,edx
    5ed5:	8a 54 24 30          	mov    dl,BYTE PTR [esp+0x30]
    5ed9:	88 14 06             	mov    BYTE PTR [esi+eax*1],dl
    5edc:	8b 74 24 28          	mov    esi,DWORD PTR [esp+0x28]
    5ee0:	41                   	inc    ecx
    5ee1:	45                   	inc    ebp
    5ee2:	39 f1                	cmp    ecx,esi
    5ee4:	0f 8d 55 ff ff ff    	jge    VESA_blit_branch_14
    5eea:	eb 9c                	jmp    VESA_blit_branch_16
VESA_blit_branch_18:
    5eec:	39 c1                	cmp    ecx,eax
    5eee:	7d 50                	jge    VESA_blit_branch_20
    5ef0:	31 d2                	xor    edx,edx
    5ef2:	0f bf 05 c4 7f 01 00 	movsx  eax,WORD PTR ds:@obj3:VESA_writeable_window_position         ; fixup: num: 397, src obj: 1, src ofs: 0x5ef5, dst obj: 3, dst ofs: 0x17fc4
    5ef9:	66 8b 93 ca 7f 01 00 	mov    dx,WORD PTR [ebx+@obj3:line_start_table_window_offsets]      ; fixup: num: 354, src obj: 1, src ofs: 0x5efc, dst obj: 3, dst ofs: 0x17fca
    5f00:	39 d0                	cmp    eax,edx
    5f02:	74 16                	je     VESA_blit_branch_19
    5f04:	31 c0                	xor    eax,eax
    5f06:	66 89 15 c4 7f 01 00 	mov    WORD PTR ds:@obj3:VESA_writeable_window_position,dx          ; fixup: num: 353, src obj: 1, src ofs: 0x5f09, dst obj: 3, dst ofs: 0x17fc4
    5f0d:	a0 c1 7f 01 00       	mov    al,ds:@obj3:VESA_writeable_number                            ; fixup: num: 414, src obj: 1, src ofs: 0x5f0e, dst obj: 3, dst ofs: 0x17fc1
    5f12:	0f bf d2             	movsx  edx,dx
    5f15:	e8 86 ef ff ff       	call   select_super_VGA_video_memory_window
VESA_blit_branch_19:
    5f1a:	03 34 bd cc 87 01 00 	add    esi,DWORD PTR [edi*4+@obj3:line_start_table_offset_offsets]  ; fixup: num: 413, src obj: 1, src ofs: 0x5f1d, dst obj: 3, dst ofs: 0x187cc
    5f21:	a1 bc 7f 01 00       	mov    eax,ds:@obj3:VESA_writeable_window                           ; fixup: num: 412, src obj: 1, src ofs: 0x5f22, dst obj: 3, dst ofs: 0x17fbc
    5f26:	8a 54 24 30          	mov    dl,BYTE PTR [esp+0x30]
    5f2a:	88 14 06             	mov    BYTE PTR [esi+eax*1],dl
    5f2d:	8b 74 24 28          	mov    esi,DWORD PTR [esp+0x28]
    5f31:	41                   	inc    ecx
    5f32:	45                   	inc    ebp
    5f33:	39 f1                	cmp    ecx,esi
    5f35:	0f 8d 04 ff ff ff    	jge    VESA_blit_branch_14
    5f3b:	e9 48 ff ff ff       	jmp    VESA_blit_branch_16
VESA_blit_branch_20:
    5f40:	31 d2                	xor    edx,edx
    5f42:	0f bf 05 c4 7f 01 00 	movsx  eax,WORD PTR ds:@obj3:VESA_writeable_window_position         ; fixup: num: 411, src obj: 1, src ofs: 0x5f45, dst obj: 3, dst ofs: 0x17fc4
    5f49:	66 8b 93 cc 7f 01 00 	mov    dx,WORD PTR [ebx+@obj3:line_start_table_window_offsets_variable_1]; fixup: num: 410, src obj: 1, src ofs: 0x5f4c, dst obj: 3, dst ofs: 0x17fcc
    5f50:	39 d0                	cmp    eax,edx
    5f52:	74 16                	je     VESA_blit_branch_21
    5f54:	31 c0                	xor    eax,eax
    5f56:	66 89 15 c4 7f 01 00 	mov    WORD PTR ds:@obj3:VESA_writeable_window_position,dx          ; fixup: num: 409, src obj: 1, src ofs: 0x5f59, dst obj: 3, dst ofs: 0x17fc4
    5f5d:	a0 c1 7f 01 00       	mov    al,ds:@obj3:VESA_writeable_number                            ; fixup: num: 408, src obj: 1, src ofs: 0x5f5e, dst obj: 3, dst ofs: 0x17fc1
    5f62:	0f bf d2             	movsx  edx,dx
    5f65:	e8 36 ef ff ff       	call   select_super_VGA_video_memory_window
VESA_blit_branch_21:
    5f6a:	0f bf 04 7d cc 97 01 00 	movsx  eax,WORD PTR [edi*2+@obj3:line_start_table_split]         ; fixup: num: 407, src obj: 1, src ofs: 0x5f6e, dst obj: 3, dst ofs: 0x197cc
    5f72:	29 c6                	sub    esi,eax
    5f74:	a1 bc 7f 01 00       	mov    eax,ds:@obj3:VESA_writeable_window                           ; fixup: num: 406, src obj: 1, src ofs: 0x5f75, dst obj: 3, dst ofs: 0x17fbc
    5f79:	8a 54 24 30          	mov    dl,BYTE PTR [esp+0x30]
    5f7d:	88 14 06             	mov    BYTE PTR [esi+eax*1],dl
    5f80:	8b 74 24 28          	mov    esi,DWORD PTR [esp+0x28]
    5f84:	41                   	inc    ecx
    5f85:	45                   	inc    ebp
    5f86:	39 f1                	cmp    ecx,esi
    5f88:	0f 8d b1 fe ff ff    	jge    VESA_blit_branch_14
    5f8e:	e9 f5 fe ff ff       	jmp    VESA_blit_branch_16
    5f93:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    5f99:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
    5f9f:	90                   	nop

;-------------------------------------------------
;  Function 'detect_VESA_100'                    -
;-------------------------------------------------
detect_VESA_100:
    5fa0:	52                   	push   edx
    5fa1:	80 3d 91 7e 01 00 00 	cmp    BYTE PTR ds:@obj3:detected,0x0                               ; fixup: num: 405, src obj: 1, src ofs: 0x5fa3, dst obj: 3, dst ofs: 0x17e91
    5fa8:	74 04                	je     detect_VESA_100_branch_1
    5faa:	b0 01                	mov    al,0x1
    5fac:	5a                   	pop    edx
    5fad:	c3                   	ret    
detect_VESA_100_branch_1:
    5fae:	b8 00 01 00 00       	mov    eax,0x100
    5fb3:	e8 f8 07 00 00       	call   VESA_graphics_mode
    5fb8:	84 c0                	test   al,al
    5fba:	74 0a                	je     detect_VESA_100_branch_2
    5fbc:	b2 01                	mov    dl,0x1
    5fbe:	88 15 91 7e 01 00    	mov    BYTE PTR ds:@obj3:detected,dl                                ; fixup: num: 358, src obj: 1, src ofs: 0x5fc0, dst obj: 3, dst ofs: 0x17e91
    5fc4:	88 d0                	mov    al,dl
detect_VESA_100_branch_2:
    5fc6:	5a                   	pop    edx
    5fc7:	c3                   	ret    
    5fc8:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    5fce:	8b d2                	mov    edx,edx

;-------------------------------------------------
;  Function 'initialize_VESA_100'                -
;-------------------------------------------------
initialize_VESA_100:
    5fd0:	b8 00 01 00 00       	mov    eax,0x100
    5fd5:	e9 d6 07 00 00       	jmp    VESA_graphics_mode
    5fda:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'deinitialize_VESA_103'              -
;-------------------------------------------------
deinitialize_VESA_103:

;-------------------------------------------------
;  Function 'deinitialize_VESA_101'              -
;-------------------------------------------------
deinitialize_VESA_101:

;-------------------------------------------------
;  Function 'deinitialize_VESA_100'              -
;-------------------------------------------------
deinitialize_VESA_100:
    5fe0:	b0 01                	mov    al,0x1
    5fe2:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    5fe8:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
    5fee:	8b c0                	mov    eax,eax

;-------------------------------------------------
;  Function 'set_active_page_VESA_100'           -
;-------------------------------------------------
set_active_page_VESA_100:
    5ff0:	c3                   	ret    
    5ff1:	8d 40 00             	lea    eax,[eax+0x0]
set_active_page_VESA_100_reference_1:                                                               ; access size: DWORDS
    5ff4:	22 60 00             	and    ah,BYTE PTR [eax+0x0]                                        ; fixup: num: 357, src obj: 1, src ofs: 0x5ff4, dst obj: 1, dst ofs: 0x6022
    5ff7:	00 2d 60 00 00 3b    	add    BYTE PTR ds:0x3b000060,ch                                    ; fixup: num: 356, src obj: 1, src ofs: 0x5ff8, dst obj: 1, dst ofs: 0x602d; fixup: num: 355, src obj: 1, src ofs: 0x5ffc, dst obj: 1, dst ofs: 0x603b
    5ffd:	60                   	pusha  
    5ffe:	00 00                	add    BYTE PTR [eax],al
    6000:	49                   	dec    ecx                                                          ; fixup: num: 789, src obj: 1, src ofs: 0x6000, dst obj: 1, dst ofs: 0x6049
    6001:	60                   	pusha  
    6002:	00 00                	add    BYTE PTR [eax],al
    6004:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    600a:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]

;-------------------------------------------------
;  Function 'set_visable_page_VESA_100'          -
;-------------------------------------------------
set_visable_page_VESA_100:
    6010:	52                   	push   edx
    6011:	3c 03                	cmp    al,0x3
    6013:	77 b1                	ja     detect_VESA_100_branch_2
    6015:	25 ff 00 00 00       	and    eax,0xff
    601a:	2e ff 24 85 f4 5f 00 00 	jmp    DWORD PTR cs:[eax*4+@obj1:set_active_page_VESA_100_reference_1]; fixup: num: 788, src obj: 1, src ofs: 0x601e, dst obj: 1, dst ofs: 0x5ff4
set_visable_page_VESA_100_reference_1:
    6022:	31 d2                	xor    edx,edx
    6024:	31 c0                	xor    eax,eax
    6026:	e8 a5 ee ff ff       	call   set_super_VGA_display_start
    602b:	5a                   	pop    edx
    602c:	c3                   	ret    
set_visable_page_VESA_100_reference_2:
    602d:	ba 90 01 00 00       	mov    edx,0x190
    6032:	31 c0                	xor    eax,eax
    6034:	e8 97 ee ff ff       	call   set_super_VGA_display_start
    6039:	5a                   	pop    edx
    603a:	c3                   	ret    
set_visable_page_VESA_100_reference_3:
    603b:	ba 20 03 00 00       	mov    edx,0x320
    6040:	31 c0                	xor    eax,eax
    6042:	e8 89 ee ff ff       	call   set_super_VGA_display_start
    6047:	5a                   	pop    edx
    6048:	c3                   	ret    
set_visable_page_VESA_100_reference_4:
    6049:	ba b0 04 00 00       	mov    edx,0x4b0
    604e:	31 c0                	xor    eax,eax
    6050:	e8 7b ee ff ff       	call   set_super_VGA_display_start
    6055:	5a                   	pop    edx
    6056:	c3                   	ret    
    6057:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    605d:	8d 52 00             	lea    edx,[edx+0x0]

;-------------------------------------------------
;  Function 'set_pixel_VESA_100'                 -
;-------------------------------------------------
set_pixel_VESA_100:
    6060:	51                   	push   ecx
    6061:	56                   	push   esi
    6062:	83 ec 08             	sub    esp,0x8
    6065:	89 c6                	mov    esi,eax
    6067:	89 1c 24             	mov    DWORD PTR [esp],ebx
    606a:	89 c3                	mov    ebx,eax
    606c:	8a 04 24             	mov    al,BYTE PTR [esp]
    606f:	89 d1                	mov    ecx,edx
    6071:	88 44 24 04          	mov    BYTE PTR [esp+0x4],al
    6075:	8d 04 55 00 00 00 00 	lea    eax,[edx*2+0x0]
    607c:	0f bf 90 cc 97 01 00 	movsx  edx,WORD PTR [eax+@obj3:line_start_table_split]              ; fixup: num: 802, src obj: 1, src ofs: 0x607f, dst obj: 3, dst ofs: 0x197cc
    6083:	83 fa ff             	cmp    edx,0xffffffff
    6086:	75 3d                	jne    set_pixel_VESA_100_branch_2
    6088:	31 d2                	xor    edx,edx
    608a:	0f bf 35 c4 7f 01 00 	movsx  esi,WORD PTR ds:@obj3:VESA_writeable_window_position         ; fixup: num: 801, src obj: 1, src ofs: 0x608d, dst obj: 3, dst ofs: 0x17fc4
    6091:	66 8b 90 ca 7f 01 00 	mov    dx,WORD PTR [eax+@obj3:line_start_table_window_offsets]      ; fixup: num: 800, src obj: 1, src ofs: 0x6094, dst obj: 3, dst ofs: 0x17fca
    6098:	39 d6                	cmp    esi,edx
    609a:	74 16                	je     set_pixel_VESA_100_branch_1
    609c:	31 c0                	xor    eax,eax
    609e:	66 89 15 c4 7f 01 00 	mov    WORD PTR ds:@obj3:VESA_writeable_window_position,dx          ; fixup: num: 799, src obj: 1, src ofs: 0x60a1, dst obj: 3, dst ofs: 0x17fc4
    60a5:	a0 c1 7f 01 00       	mov    al,ds:@obj3:VESA_writeable_number                            ; fixup: num: 798, src obj: 1, src ofs: 0x60a6, dst obj: 3, dst ofs: 0x17fc1
    60aa:	0f bf d2             	movsx  edx,dx
    60ad:	e8 ee ed ff ff       	call   select_super_VGA_video_memory_window
set_pixel_VESA_100_branch_1:
    60b2:	8b 34 8d cc 87 01 00 	mov    esi,DWORD PTR [ecx*4+@obj3:line_start_table_offset_offsets]  ; fixup: num: 797, src obj: 1, src ofs: 0x60b5, dst obj: 3, dst ofs: 0x187cc
    60b9:	a1 bc 7f 01 00       	mov    eax,ds:@obj3:VESA_writeable_window                           ; fixup: num: 796, src obj: 1, src ofs: 0x60ba, dst obj: 3, dst ofs: 0x17fbc
    60be:	01 f3                	add    ebx,esi
    60c0:	e9 82 00 00 00       	jmp    set_pixel_VESA_100_branch_6
set_pixel_VESA_100_branch_2:
    60c5:	39 d6                	cmp    esi,edx
    60c7:	7d 45                	jge    set_pixel_VESA_100_branch_4
    60c9:	31 f6                	xor    esi,esi
    60cb:	0f bf 15 c4 7f 01 00 	movsx  edx,WORD PTR ds:@obj3:VESA_writeable_window_position         ; fixup: num: 795, src obj: 1, src ofs: 0x60ce, dst obj: 3, dst ofs: 0x17fc4
    60d2:	66 8b b0 ca 7f 01 00 	mov    si,WORD PTR [eax+@obj3:line_start_table_window_offsets]      ; fixup: num: 794, src obj: 1, src ofs: 0x60d5, dst obj: 3, dst ofs: 0x17fca
    60d9:	39 f2                	cmp    edx,esi
    60db:	74 16                	je     set_pixel_VESA_100_branch_3
    60dd:	31 c0                	xor    eax,eax
    60df:	0f bf d6             	movsx  edx,si
    60e2:	a0 c1 7f 01 00       	mov    al,ds:@obj3:VESA_writeable_number                            ; fixup: num: 793, src obj: 1, src ofs: 0x60e3, dst obj: 3, dst ofs: 0x17fc1
    60e7:	66 89 35 c4 7f 01 00 	mov    WORD PTR ds:@obj3:VESA_writeable_window_position,si          ; fixup: num: 792, src obj: 1, src ofs: 0x60ea, dst obj: 3, dst ofs: 0x17fc4
    60ee:	e8 ad ed ff ff       	call   select_super_VGA_video_memory_window
set_pixel_VESA_100_branch_3:
    60f3:	8b 14 8d cc 87 01 00 	mov    edx,DWORD PTR [ecx*4+@obj3:line_start_table_offset_offsets]  ; fixup: num: 791, src obj: 1, src ofs: 0x60f6, dst obj: 3, dst ofs: 0x187cc
    60fa:	a1 bc 7f 01 00       	mov    eax,ds:@obj3:VESA_writeable_window                           ; fixup: num: 790, src obj: 1, src ofs: 0x60fb, dst obj: 3, dst ofs: 0x17fbc
    60ff:	01 d3                	add    ebx,edx
    6101:	8a 54 24 04          	mov    dl,BYTE PTR [esp+0x4]
    6105:	88 14 03             	mov    BYTE PTR [ebx+eax*1],dl
    6108:	83 c4 08             	add    esp,0x8
    610b:	5e                   	pop    esi
    610c:	59                   	pop    ecx
    610d:	c3                   	ret    
set_pixel_VESA_100_branch_4:
    610e:	31 d2                	xor    edx,edx
    6110:	0f bf 35 c4 7f 01 00 	movsx  esi,WORD PTR ds:@obj3:VESA_writeable_window_position         ; fixup: num: 814, src obj: 1, src ofs: 0x6113, dst obj: 3, dst ofs: 0x17fc4
    6117:	66 8b 90 cc 7f 01 00 	mov    dx,WORD PTR [eax+@obj3:line_start_table_window_offsets_variable_1]; fixup: num: 813, src obj: 1, src ofs: 0x611a, dst obj: 3, dst ofs: 0x17fcc
    611e:	39 d6                	cmp    esi,edx
    6120:	74 16                	je     set_pixel_VESA_100_branch_5
    6122:	31 c0                	xor    eax,eax
    6124:	66 89 15 c4 7f 01 00 	mov    WORD PTR ds:@obj3:VESA_writeable_window_position,dx          ; fixup: num: 812, src obj: 1, src ofs: 0x6127, dst obj: 3, dst ofs: 0x17fc4
    612b:	a0 c1 7f 01 00       	mov    al,ds:@obj3:VESA_writeable_number                            ; fixup: num: 811, src obj: 1, src ofs: 0x612c, dst obj: 3, dst ofs: 0x17fc1
    6130:	0f bf d2             	movsx  edx,dx
    6133:	e8 68 ed ff ff       	call   select_super_VGA_video_memory_window
set_pixel_VESA_100_branch_5:
    6138:	0f bf 04 4d cc 97 01 00 	movsx  eax,WORD PTR [ecx*2+@obj3:line_start_table_split]         ; fixup: num: 810, src obj: 1, src ofs: 0x613c, dst obj: 3, dst ofs: 0x197cc
    6140:	29 c3                	sub    ebx,eax
    6142:	a1 bc 7f 01 00       	mov    eax,ds:@obj3:VESA_writeable_window                           ; fixup: num: 809, src obj: 1, src ofs: 0x6143, dst obj: 3, dst ofs: 0x17fbc
set_pixel_VESA_100_branch_6:
    6147:	8a 54 24 04          	mov    dl,BYTE PTR [esp+0x4]
    614b:	88 14 03             	mov    BYTE PTR [ebx+eax*1],dl
    614e:	83 c4 08             	add    esp,0x8
    6151:	5e                   	pop    esi
    6152:	59                   	pop    ecx
    6153:	c3                   	ret    
    6154:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    615a:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]

;-------------------------------------------------
;  Function 'get_pixel_VESA_100'                 -
;-------------------------------------------------
get_pixel_VESA_100:
    6160:	53                   	push   ebx
    6161:	51                   	push   ecx
    6162:	56                   	push   esi
    6163:	89 c1                	mov    ecx,eax
    6165:	89 c6                	mov    esi,eax
    6167:	89 d3                	mov    ebx,edx
    6169:	8d 04 55 00 00 00 00 	lea    eax,[edx*2+0x0]
    6170:	0f bf 90 cc 97 01 00 	movsx  edx,WORD PTR [eax+@obj3:line_start_table_split]              ; fixup: num: 808, src obj: 1, src ofs: 0x6173, dst obj: 3, dst ofs: 0x197cc
    6177:	83 fa ff             	cmp    edx,0xffffffff
    617a:	75 3d                	jne    get_pixel_VESA_100_branch_2
    617c:	31 d2                	xor    edx,edx
    617e:	0f bf 0d c4 7f 01 00 	movsx  ecx,WORD PTR ds:@obj3:VESA_writeable_window_position         ; fixup: num: 807, src obj: 1, src ofs: 0x6181, dst obj: 3, dst ofs: 0x17fc4
    6185:	66 8b 90 ca 7f 01 00 	mov    dx,WORD PTR [eax+@obj3:line_start_table_window_offsets]      ; fixup: num: 806, src obj: 1, src ofs: 0x6188, dst obj: 3, dst ofs: 0x17fca
    618c:	39 d1                	cmp    ecx,edx
    618e:	74 16                	je     get_pixel_VESA_100_branch_1
    6190:	31 c0                	xor    eax,eax
    6192:	66 89 15 c4 7f 01 00 	mov    WORD PTR ds:@obj3:VESA_writeable_window_position,dx          ; fixup: num: 805, src obj: 1, src ofs: 0x6195, dst obj: 3, dst ofs: 0x17fc4
    6199:	a0 c1 7f 01 00       	mov    al,ds:@obj3:VESA_writeable_number                            ; fixup: num: 804, src obj: 1, src ofs: 0x619a, dst obj: 3, dst ofs: 0x17fc1
    619e:	0f bf d2             	movsx  edx,dx
    61a1:	e8 fa ec ff ff       	call   select_super_VGA_video_memory_window
get_pixel_VESA_100_branch_1:
    61a6:	8b 14 9d cc 87 01 00 	mov    edx,DWORD PTR [ebx*4+@obj3:line_start_table_offset_offsets]  ; fixup: num: 803, src obj: 1, src ofs: 0x61a9, dst obj: 3, dst ofs: 0x187cc
    61ad:	a1 bc 7f 01 00       	mov    eax,ds:@obj3:VESA_writeable_window                           ; fixup: num: 712, src obj: 1, src ofs: 0x61ae, dst obj: 3, dst ofs: 0x17fbc
    61b2:	01 d6                	add    esi,edx
    61b4:	e9 7b 00 00 00       	jmp    get_pixel_VESA_100_branch_6
get_pixel_VESA_100_branch_2:
    61b9:	39 d1                	cmp    ecx,edx
    61bb:	7d 3e                	jge    get_pixel_VESA_100_branch_4
    61bd:	31 d2                	xor    edx,edx
    61bf:	0f bf 0d c4 7f 01 00 	movsx  ecx,WORD PTR ds:@obj3:VESA_writeable_window_position         ; fixup: num: 711, src obj: 1, src ofs: 0x61c2, dst obj: 3, dst ofs: 0x17fc4
    61c6:	66 8b 90 ca 7f 01 00 	mov    dx,WORD PTR [eax+@obj3:line_start_table_window_offsets]      ; fixup: num: 710, src obj: 1, src ofs: 0x61c9, dst obj: 3, dst ofs: 0x17fca
    61cd:	39 d1                	cmp    ecx,edx
    61cf:	74 16                	je     get_pixel_VESA_100_branch_3
    61d1:	31 c0                	xor    eax,eax
    61d3:	66 89 15 c4 7f 01 00 	mov    WORD PTR ds:@obj3:VESA_writeable_window_position,dx          ; fixup: num: 825, src obj: 1, src ofs: 0x61d6, dst obj: 3, dst ofs: 0x17fc4
    61da:	a0 c1 7f 01 00       	mov    al,ds:@obj3:VESA_writeable_number                            ; fixup: num: 824, src obj: 1, src ofs: 0x61db, dst obj: 3, dst ofs: 0x17fc1
    61df:	0f bf d2             	movsx  edx,dx
    61e2:	e8 b9 ec ff ff       	call   select_super_VGA_video_memory_window
get_pixel_VESA_100_branch_3:
    61e7:	8b 04 9d cc 87 01 00 	mov    eax,DWORD PTR [ebx*4+@obj3:line_start_table_offset_offsets]  ; fixup: num: 823, src obj: 1, src ofs: 0x61ea, dst obj: 3, dst ofs: 0x187cc
    61ee:	8b 15 bc 7f 01 00    	mov    edx,DWORD PTR ds:@obj3:VESA_writeable_window                 ; fixup: num: 822, src obj: 1, src ofs: 0x61f0, dst obj: 3, dst ofs: 0x17fbc
    61f4:	01 f0                	add    eax,esi
    61f6:	8a 04 02             	mov    al,BYTE PTR [edx+eax*1]
    61f9:	eb 3c                	jmp    get_pixel_VESA_100_branch_7
get_pixel_VESA_100_branch_4:
    61fb:	31 d2                	xor    edx,edx
    61fd:	0f bf 0d c4 7f 01 00 	movsx  ecx,WORD PTR ds:@obj3:VESA_writeable_window_position         ; fixup: num: 821, src obj: 1, src ofs: 0x6200, dst obj: 3, dst ofs: 0x17fc4
    6204:	66 8b 90 cc 7f 01 00 	mov    dx,WORD PTR [eax+@obj3:line_start_table_window_offsets_variable_1]; fixup: num: 820, src obj: 1, src ofs: 0x6207, dst obj: 3, dst ofs: 0x17fcc
    620b:	39 d1                	cmp    ecx,edx
    620d:	74 16                	je     get_pixel_VESA_100_branch_5
    620f:	31 c0                	xor    eax,eax
    6211:	66 89 15 c4 7f 01 00 	mov    WORD PTR ds:@obj3:VESA_writeable_window_position,dx          ; fixup: num: 819, src obj: 1, src ofs: 0x6214, dst obj: 3, dst ofs: 0x17fc4
    6218:	a0 c1 7f 01 00       	mov    al,ds:@obj3:VESA_writeable_number                            ; fixup: num: 818, src obj: 1, src ofs: 0x6219, dst obj: 3, dst ofs: 0x17fc1
    621d:	0f bf d2             	movsx  edx,dx
    6220:	e8 7b ec ff ff       	call   select_super_VGA_video_memory_window
get_pixel_VESA_100_branch_5:
    6225:	0f bf 04 5d cc 97 01 00 	movsx  eax,WORD PTR [ebx*2+@obj3:line_start_table_split]         ; fixup: num: 817, src obj: 1, src ofs: 0x6229, dst obj: 3, dst ofs: 0x197cc
    622d:	29 c6                	sub    esi,eax
    622f:	a1 bc 7f 01 00       	mov    eax,ds:@obj3:VESA_writeable_window                           ; fixup: num: 816, src obj: 1, src ofs: 0x6230, dst obj: 3, dst ofs: 0x17fbc
get_pixel_VESA_100_branch_6:
    6234:	8a 04 06             	mov    al,BYTE PTR [esi+eax*1]
get_pixel_VESA_100_branch_7:
    6237:	25 ff 00 00 00       	and    eax,0xff
    623c:	5e                   	pop    esi
    623d:	59                   	pop    ecx
    623e:	5b                   	pop    ebx
    623f:	c3                   	ret    

;-------------------------------------------------
;  Function 'detect_VESA_101'                    -
;-------------------------------------------------
detect_VESA_101:
    6240:	52                   	push   edx
    6241:	80 3d 92 7e 01 00 00 	cmp    BYTE PTR ds:@obj3:detected_mod_4,0x0                         ; fixup: num: 815, src obj: 1, src ofs: 0x6243, dst obj: 3, dst ofs: 0x17e92
    6248:	74 04                	je     detect_VESA_101_branch_1
    624a:	b0 01                	mov    al,0x1
    624c:	5a                   	pop    edx
    624d:	c3                   	ret    
detect_VESA_101_branch_1:
    624e:	b8 01 01 00 00       	mov    eax,0x101
    6253:	e8 58 05 00 00       	call   VESA_graphics_mode
    6258:	84 c0                	test   al,al
    625a:	74 0a                	je     detect_VESA_101_branch_2
    625c:	b2 01                	mov    dl,0x1
    625e:	88 15 92 7e 01 00    	mov    BYTE PTR ds:@obj3:detected_mod_4,dl                          ; fixup: num: 722, src obj: 1, src ofs: 0x6260, dst obj: 3, dst ofs: 0x17e92
    6264:	88 d0                	mov    al,dl
detect_VESA_101_branch_2:
    6266:	5a                   	pop    edx
    6267:	c3                   	ret    
    6268:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    626e:	8b d2                	mov    edx,edx

;-------------------------------------------------
;  Function 'initialize_VESA_101'                -
;-------------------------------------------------
initialize_VESA_101:
    6270:	52                   	push   edx
    6271:	b8 01 01 00 00       	mov    eax,0x101
    6276:	e8 35 05 00 00       	call   VESA_graphics_mode
    627b:	8b 15 cc 9f 01 00    	mov    edx,DWORD PTR ds:@obj3:window_size                           ; fixup: num: 721, src obj: 1, src ofs: 0x627d, dst obj: 3, dst ofs: 0x19fcc
    6281:	89 15 28 2c 01 00    	mov    DWORD PTR ds:@obj3:mode_VESA_101_variable_1,edx              ; fixup: num: 720, src obj: 1, src ofs: 0x6283, dst obj: 3, dst ofs: 0x12c28
    6287:	8b 15 bc 7f 01 00    	mov    edx,DWORD PTR ds:@obj3:VESA_writeable_window                 ; fixup: num: 719, src obj: 1, src ofs: 0x6289, dst obj: 3, dst ofs: 0x17fbc
    628d:	89 15 2c 2c 01 00    	mov    DWORD PTR ds:@obj3:mode_VESA_101_variable_2,edx              ; fixup: num: 718, src obj: 1, src ofs: 0x628f, dst obj: 3, dst ofs: 0x12c2c
initialize_VESA_101_branch_1:
    6293:	5a                   	pop    edx
    6294:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    629a:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]

;-------------------------------------------------
;  Function 'set_active_page_VESA_101'           -
;-------------------------------------------------
set_active_page_VESA_101:
    62a0:	c3                   	ret    
    62a1:	8d 40 00             	lea    eax,[eax+0x0]
set_active_page_VESA_101_reference_1:                                                               ; access size: DWORDS
    62a4:	d2 62 00             	shl    BYTE PTR [edx+0x0],cl                                        ; fixup: num: 717, src obj: 1, src ofs: 0x62a4, dst obj: 1, dst ofs: 0x62d2
    62a7:	00 dd                	add    ch,bl                                                        ; fixup: num: 716, src obj: 1, src ofs: 0x62a8, dst obj: 1, dst ofs: 0x62dd
    62a9:	62 00                	bound  eax,QWORD PTR [eax]
    62ab:	00 eb                	add    bl,ch                                                        ; fixup: num: 715, src obj: 1, src ofs: 0x62ac, dst obj: 1, dst ofs: 0x62eb
    62ad:	62 00                	bound  eax,QWORD PTR [eax]
    62af:	00 f9                	add    cl,bh                                                        ; fixup: num: 714, src obj: 1, src ofs: 0x62b0, dst obj: 1, dst ofs: 0x62f9
    62b1:	62 00                	bound  eax,QWORD PTR [eax]
    62b3:	00 8d 80 00 00 00    	add    BYTE PTR [ebp+0x80],cl
    62b9:	00 8d 92 00 00 00    	add    BYTE PTR [ebp+0x92],cl
    62bf:	00               	add    BYTE PTR [edx+0x3c],dl

;-------------------------------------------------
;  Function 'set_visable_page_VESA_101'          -
;-------------------------------------------------
set_visable_page_VESA_101:
    62c0:	52                   	push   edx
    62c1:	3c 03                	cmp    al,0x3
    62c3:	77 ce                	ja     initialize_VESA_101_branch_1
    62c5:	25 ff 00 00 00       	and    eax,0xff
    62ca:	2e ff 24 85 a4 62 00 00 	jmp    DWORD PTR cs:[eax*4+@obj1:set_active_page_VESA_101_reference_1]; fixup: num: 713, src obj: 1, src ofs: 0x62ce, dst obj: 1, dst ofs: 0x62a4
set_visable_page_VESA_101_reference_1:
    62d2:	31 d2                	xor    edx,edx
    62d4:	31 c0                	xor    eax,eax
    62d6:	e8 f5 eb ff ff       	call   set_super_VGA_display_start
    62db:	5a                   	pop    edx
    62dc:	c3                   	ret    
set_visable_page_VESA_101_reference_2:
    62dd:	ba e0 01 00 00       	mov    edx,0x1e0
    62e2:	31 c0                	xor    eax,eax
    62e4:	e8 e7 eb ff ff       	call   set_super_VGA_display_start
    62e9:	5a                   	pop    edx
    62ea:	c3                   	ret    
set_visable_page_VESA_101_reference_3:
    62eb:	ba c0 03 00 00       	mov    edx,0x3c0
    62f0:	31 c0                	xor    eax,eax
    62f2:	e8 d9 eb ff ff       	call   set_super_VGA_display_start
    62f7:	5a                   	pop    edx
    62f8:	c3                   	ret    
set_visable_page_VESA_101_reference_4:
    62f9:	ba a0 05 00 00       	mov    edx,0x5a0
    62fe:	31 c0                	xor    eax,eax
    6300:	e8 cb eb ff ff       	call   set_super_VGA_display_start
    6305:	5a                   	pop    edx
    6306:	c3                   	ret    
    6307:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    630d:	8d 52 00             	lea    edx,[edx+0x0]

;-------------------------------------------------
;  Function 'set_pixel_VESA_101'                 -
;-------------------------------------------------
set_pixel_VESA_101:
    6310:	51                   	push   ecx
    6311:	56                   	push   esi
    6312:	83 ec 08             	sub    esp,0x8
    6315:	89 c6                	mov    esi,eax
    6317:	89 1c 24             	mov    DWORD PTR [esp],ebx
    631a:	89 c3                	mov    ebx,eax
    631c:	8a 04 24             	mov    al,BYTE PTR [esp]
    631f:	89 d1                	mov    ecx,edx
    6321:	88 44 24 04          	mov    BYTE PTR [esp+0x4],al
    6325:	8d 04 55 00 00 00 00 	lea    eax,[edx*2+0x0]
    632c:	0f bf 90 cc 97 01 00 	movsx  edx,WORD PTR [eax+@obj3:line_start_table_split]              ; fixup: num: 735, src obj: 1, src ofs: 0x632f, dst obj: 3, dst ofs: 0x197cc
    6333:	83 fa ff             	cmp    edx,0xffffffff
    6336:	75 3d                	jne    set_pixel_VESA_101_branch_2
    6338:	31 d2                	xor    edx,edx
    633a:	0f bf 35 c4 7f 01 00 	movsx  esi,WORD PTR ds:@obj3:VESA_writeable_window_position         ; fixup: num: 734, src obj: 1, src ofs: 0x633d, dst obj: 3, dst ofs: 0x17fc4
    6341:	66 8b 90 ca 7f 01 00 	mov    dx,WORD PTR [eax+@obj3:line_start_table_window_offsets]      ; fixup: num: 733, src obj: 1, src ofs: 0x6344, dst obj: 3, dst ofs: 0x17fca
    6348:	39 d6                	cmp    esi,edx
    634a:	74 16                	je     set_pixel_VESA_101_branch_1
    634c:	31 c0                	xor    eax,eax
    634e:	66 89 15 c4 7f 01 00 	mov    WORD PTR ds:@obj3:VESA_writeable_window_position,dx          ; fixup: num: 732, src obj: 1, src ofs: 0x6351, dst obj: 3, dst ofs: 0x17fc4
    6355:	a0 c1 7f 01 00       	mov    al,ds:@obj3:VESA_writeable_number                            ; fixup: num: 731, src obj: 1, src ofs: 0x6356, dst obj: 3, dst ofs: 0x17fc1
    635a:	0f bf d2             	movsx  edx,dx
    635d:	e8 3e eb ff ff       	call   select_super_VGA_video_memory_window
set_pixel_VESA_101_branch_1:
    6362:	8b 34 8d cc 87 01 00 	mov    esi,DWORD PTR [ecx*4+@obj3:line_start_table_offset_offsets]  ; fixup: num: 730, src obj: 1, src ofs: 0x6365, dst obj: 3, dst ofs: 0x187cc
    6369:	a1 bc 7f 01 00       	mov    eax,ds:@obj3:VESA_writeable_window                           ; fixup: num: 729, src obj: 1, src ofs: 0x636a, dst obj: 3, dst ofs: 0x17fbc
    636e:	01 f3                	add    ebx,esi
    6370:	e9 82 00 00 00       	jmp    set_pixel_VESA_101_branch_6
set_pixel_VESA_101_branch_2:
    6375:	39 d6                	cmp    esi,edx
    6377:	7d 45                	jge    set_pixel_VESA_101_branch_4
    6379:	31 f6                	xor    esi,esi
    637b:	0f bf 15 c4 7f 01 00 	movsx  edx,WORD PTR ds:@obj3:VESA_writeable_window_position         ; fixup: num: 728, src obj: 1, src ofs: 0x637e, dst obj: 3, dst ofs: 0x17fc4
    6382:	66 8b b0 ca 7f 01 00 	mov    si,WORD PTR [eax+@obj3:line_start_table_window_offsets]      ; fixup: num: 727, src obj: 1, src ofs: 0x6385, dst obj: 3, dst ofs: 0x17fca
    6389:	39 f2                	cmp    edx,esi
    638b:	74 16                	je     set_pixel_VESA_101_branch_3
    638d:	31 c0                	xor    eax,eax
    638f:	0f bf d6             	movsx  edx,si
    6392:	a0 c1 7f 01 00       	mov    al,ds:@obj3:VESA_writeable_number                            ; fixup: num: 726, src obj: 1, src ofs: 0x6393, dst obj: 3, dst ofs: 0x17fc1
    6397:	66 89 35 c4 7f 01 00 	mov    WORD PTR ds:@obj3:VESA_writeable_window_position,si          ; fixup: num: 725, src obj: 1, src ofs: 0x639a, dst obj: 3, dst ofs: 0x17fc4
    639e:	e8 fd ea ff ff       	call   select_super_VGA_video_memory_window
set_pixel_VESA_101_branch_3:
    63a3:	8b 14 8d cc 87 01 00 	mov    edx,DWORD PTR [ecx*4+@obj3:line_start_table_offset_offsets]  ; fixup: num: 724, src obj: 1, src ofs: 0x63a6, dst obj: 3, dst ofs: 0x187cc
    63aa:	a1 bc 7f 01 00       	mov    eax,ds:@obj3:VESA_writeable_window                           ; fixup: num: 723, src obj: 1, src ofs: 0x63ab, dst obj: 3, dst ofs: 0x17fbc
    63af:	01 d3                	add    ebx,edx
    63b1:	8a 54 24 04          	mov    dl,BYTE PTR [esp+0x4]
    63b5:	88 14 03             	mov    BYTE PTR [ebx+eax*1],dl
    63b8:	83 c4 08             	add    esp,0x8
    63bb:	5e                   	pop    esi
    63bc:	59                   	pop    ecx
    63bd:	c3                   	ret    
set_pixel_VESA_101_branch_4:
    63be:	31 d2                	xor    edx,edx
    63c0:	0f bf 35 c4 7f 01 00 	movsx  esi,WORD PTR ds:@obj3:VESA_writeable_window_position         ; fixup: num: 748, src obj: 1, src ofs: 0x63c3, dst obj: 3, dst ofs: 0x17fc4
    63c7:	66 8b 90 cc 7f 01 00 	mov    dx,WORD PTR [eax+@obj3:line_start_table_window_offsets_variable_1]; fixup: num: 747, src obj: 1, src ofs: 0x63ca, dst obj: 3, dst ofs: 0x17fcc
    63ce:	39 d6                	cmp    esi,edx
    63d0:	74 16                	je     set_pixel_VESA_101_branch_5
    63d2:	31 c0                	xor    eax,eax
    63d4:	66 89 15 c4 7f 01 00 	mov    WORD PTR ds:@obj3:VESA_writeable_window_position,dx          ; fixup: num: 746, src obj: 1, src ofs: 0x63d7, dst obj: 3, dst ofs: 0x17fc4
    63db:	a0 c1 7f 01 00       	mov    al,ds:@obj3:VESA_writeable_number                            ; fixup: num: 745, src obj: 1, src ofs: 0x63dc, dst obj: 3, dst ofs: 0x17fc1
    63e0:	0f bf d2             	movsx  edx,dx
    63e3:	e8 b8 ea ff ff       	call   select_super_VGA_video_memory_window
set_pixel_VESA_101_branch_5:
    63e8:	0f bf 04 4d cc 97 01 00 	movsx  eax,WORD PTR [ecx*2+@obj3:line_start_table_split]         ; fixup: num: 744, src obj: 1, src ofs: 0x63ec, dst obj: 3, dst ofs: 0x197cc
    63f0:	29 c3                	sub    ebx,eax
    63f2:	a1 bc 7f 01 00       	mov    eax,ds:@obj3:VESA_writeable_window                           ; fixup: num: 743, src obj: 1, src ofs: 0x63f3, dst obj: 3, dst ofs: 0x17fbc
set_pixel_VESA_101_branch_6:
    63f7:	8a 54 24 04          	mov    dl,BYTE PTR [esp+0x4]
    63fb:	88 14 03             	mov    BYTE PTR [ebx+eax*1],dl
    63fe:	83 c4 08             	add    esp,0x8
    6401:	5e                   	pop    esi
    6402:	59                   	pop    ecx
    6403:	c3                   	ret    
    6404:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    640a:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]

;-------------------------------------------------
;  Function 'get_pixel_VESA_101'                 -
;-------------------------------------------------
get_pixel_VESA_101:
    6410:	53                   	push   ebx
    6411:	51                   	push   ecx
    6412:	56                   	push   esi
    6413:	89 c1                	mov    ecx,eax
    6415:	89 c6                	mov    esi,eax
    6417:	89 d3                	mov    ebx,edx
    6419:	8d 04 55 00 00 00 00 	lea    eax,[edx*2+0x0]
    6420:	0f bf 90 cc 97 01 00 	movsx  edx,WORD PTR [eax+@obj3:line_start_table_split]              ; fixup: num: 742, src obj: 1, src ofs: 0x6423, dst obj: 3, dst ofs: 0x197cc
    6427:	83 fa ff             	cmp    edx,0xffffffff
    642a:	75 3d                	jne    get_pixel_VESA_101_branch_2
    642c:	31 d2                	xor    edx,edx
    642e:	0f bf 0d c4 7f 01 00 	movsx  ecx,WORD PTR ds:@obj3:VESA_writeable_window_position         ; fixup: num: 741, src obj: 1, src ofs: 0x6431, dst obj: 3, dst ofs: 0x17fc4
    6435:	66 8b 90 ca 7f 01 00 	mov    dx,WORD PTR [eax+@obj3:line_start_table_window_offsets]      ; fixup: num: 740, src obj: 1, src ofs: 0x6438, dst obj: 3, dst ofs: 0x17fca
    643c:	39 d1                	cmp    ecx,edx
    643e:	74 16                	je     get_pixel_VESA_101_branch_1
    6440:	31 c0                	xor    eax,eax
    6442:	66 89 15 c4 7f 01 00 	mov    WORD PTR ds:@obj3:VESA_writeable_window_position,dx          ; fixup: num: 739, src obj: 1, src ofs: 0x6445, dst obj: 3, dst ofs: 0x17fc4
    6449:	a0 c1 7f 01 00       	mov    al,ds:@obj3:VESA_writeable_number                            ; fixup: num: 738, src obj: 1, src ofs: 0x644a, dst obj: 3, dst ofs: 0x17fc1
    644e:	0f bf d2             	movsx  edx,dx
    6451:	e8 4a ea ff ff       	call   select_super_VGA_video_memory_window
get_pixel_VESA_101_branch_1:
    6456:	8b 14 9d cc 87 01 00 	mov    edx,DWORD PTR [ebx*4+@obj3:line_start_table_offset_offsets]  ; fixup: num: 737, src obj: 1, src ofs: 0x6459, dst obj: 3, dst ofs: 0x187cc
    645d:	a1 bc 7f 01 00       	mov    eax,ds:@obj3:VESA_writeable_window                           ; fixup: num: 736, src obj: 1, src ofs: 0x645e, dst obj: 3, dst ofs: 0x17fbc
    6462:	01 d6                	add    esi,edx
    6464:	e9 7b 00 00 00       	jmp    get_pixel_VESA_101_branch_6
get_pixel_VESA_101_branch_2:
    6469:	39 d1                	cmp    ecx,edx
    646b:	7d 3e                	jge    get_pixel_VESA_101_branch_4
    646d:	31 d2                	xor    edx,edx
    646f:	0f bf 0d c4 7f 01 00 	movsx  ecx,WORD PTR ds:@obj3:VESA_writeable_window_position         ; fixup: num: 760, src obj: 1, src ofs: 0x6472, dst obj: 3, dst ofs: 0x17fc4
    6476:	66 8b 90 ca 7f 01 00 	mov    dx,WORD PTR [eax+@obj3:line_start_table_window_offsets]      ; fixup: num: 759, src obj: 1, src ofs: 0x6479, dst obj: 3, dst ofs: 0x17fca
    647d:	39 d1                	cmp    ecx,edx
    647f:	74 16                	je     get_pixel_VESA_101_branch_3
    6481:	31 c0                	xor    eax,eax
    6483:	66 89 15 c4 7f 01 00 	mov    WORD PTR ds:@obj3:VESA_writeable_window_position,dx          ; fixup: num: 758, src obj: 1, src ofs: 0x6486, dst obj: 3, dst ofs: 0x17fc4
    648a:	a0 c1 7f 01 00       	mov    al,ds:@obj3:VESA_writeable_number                            ; fixup: num: 757, src obj: 1, src ofs: 0x648b, dst obj: 3, dst ofs: 0x17fc1
    648f:	0f bf d2             	movsx  edx,dx
    6492:	e8 09 ea ff ff       	call   select_super_VGA_video_memory_window
get_pixel_VESA_101_branch_3:
    6497:	8b 04 9d cc 87 01 00 	mov    eax,DWORD PTR [ebx*4+@obj3:line_start_table_offset_offsets]  ; fixup: num: 756, src obj: 1, src ofs: 0x649a, dst obj: 3, dst ofs: 0x187cc
    649e:	8b 15 bc 7f 01 00    	mov    edx,DWORD PTR ds:@obj3:VESA_writeable_window                 ; fixup: num: 755, src obj: 1, src ofs: 0x64a0, dst obj: 3, dst ofs: 0x17fbc
    64a4:	01 f0                	add    eax,esi
    64a6:	8a 04 02             	mov    al,BYTE PTR [edx+eax*1]
    64a9:	eb 3c                	jmp    get_pixel_VESA_101_branch_7
get_pixel_VESA_101_branch_4:
    64ab:	31 d2                	xor    edx,edx
    64ad:	0f bf 0d c4 7f 01 00 	movsx  ecx,WORD PTR ds:@obj3:VESA_writeable_window_position         ; fixup: num: 754, src obj: 1, src ofs: 0x64b0, dst obj: 3, dst ofs: 0x17fc4
    64b4:	66 8b 90 cc 7f 01 00 	mov    dx,WORD PTR [eax+@obj3:line_start_table_window_offsets_variable_1]; fixup: num: 753, src obj: 1, src ofs: 0x64b7, dst obj: 3, dst ofs: 0x17fcc
    64bb:	39 d1                	cmp    ecx,edx
    64bd:	74 16                	je     get_pixel_VESA_101_branch_5
    64bf:	31 c0                	xor    eax,eax
    64c1:	66 89 15 c4 7f 01 00 	mov    WORD PTR ds:@obj3:VESA_writeable_window_position,dx          ; fixup: num: 752, src obj: 1, src ofs: 0x64c4, dst obj: 3, dst ofs: 0x17fc4
    64c8:	a0 c1 7f 01 00       	mov    al,ds:@obj3:VESA_writeable_number                            ; fixup: num: 751, src obj: 1, src ofs: 0x64c9, dst obj: 3, dst ofs: 0x17fc1
    64cd:	0f bf d2             	movsx  edx,dx
    64d0:	e8 cb e9 ff ff       	call   select_super_VGA_video_memory_window
get_pixel_VESA_101_branch_5:
    64d5:	0f bf 04 5d cc 97 01 00 	movsx  eax,WORD PTR [ebx*2+@obj3:line_start_table_split]         ; fixup: num: 750, src obj: 1, src ofs: 0x64d9, dst obj: 3, dst ofs: 0x197cc
    64dd:	29 c6                	sub    esi,eax
    64df:	a1 bc 7f 01 00       	mov    eax,ds:@obj3:VESA_writeable_window                           ; fixup: num: 749, src obj: 1, src ofs: 0x64e0, dst obj: 3, dst ofs: 0x17fbc
get_pixel_VESA_101_branch_6:
    64e4:	8a 04 06             	mov    al,BYTE PTR [esi+eax*1]
get_pixel_VESA_101_branch_7:
    64e7:	25 ff 00 00 00       	and    eax,0xff
    64ec:	5e                   	pop    esi
    64ed:	59                   	pop    ecx
    64ee:	5b                   	pop    ebx
    64ef:	c3                   	ret    

;-------------------------------------------------
;  Function 'detect_VESA_103'                    -
;-------------------------------------------------
detect_VESA_103:
    64f0:	b8 03 01 00 00       	mov    eax,0x103
    64f5:	e8 b6 02 00 00       	call   VESA_graphics_mode
    64fa:	84 c0                	test   al,al
    64fc:	0f 95 c0             	setne  al
    64ff:	90                   	nop

;-------------------------------------------------
;  Function 'set_active_page_VESA_103'           -
;-------------------------------------------------
set_active_page_VESA_103:
    6500:	c3                   	ret    
    6501:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    6507:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
    650d:	8d 40 00             	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'initialize_VESA_103'                -
;-------------------------------------------------
initialize_VESA_103:
    6510:	b8 03 01 00 00       	mov    eax,0x103
    6515:	e9 96 02 00 00       	jmp    VESA_graphics_mode
    651a:	8b c0                	mov    eax,eax
initialize_VESA_103_reference_1:                                                                    ; access size: DWORDS
    651c:	46                   	inc    esi                                                          ; fixup: num: 768, src obj: 1, src ofs: 0x651c, dst obj: 1, dst ofs: 0x6546
    651d:	65 00 00             	add    BYTE PTR gs:[eax],al
    6520:	51                   	push   ecx                                                          ; fixup: num: 767, src obj: 1, src ofs: 0x6520, dst obj: 1, dst ofs: 0x6551
    6521:	65 00 00             	add    BYTE PTR gs:[eax],al
    6524:	5f                   	pop    edi                                                          ; fixup: num: 766, src obj: 1, src ofs: 0x6524, dst obj: 1, dst ofs: 0x655f
    6525:	65 00 00             	add    BYTE PTR gs:[eax],al
    6528:	6d                   	ins    DWORD PTR es:[edi],dx                                        ; fixup: num: 765, src obj: 1, src ofs: 0x6528, dst obj: 1, dst ofs: 0x656d
    6529:	65 00 00             	add    BYTE PTR gs:[eax],al
    652c:	8d 44 20 00          	lea    eax,[eax+eiz*1+0x0]

;-------------------------------------------------
;  Function 'set_visable_page_VESA_103'          -
;-------------------------------------------------
set_visable_page_VESA_103:
    6530:	52                   	push   edx
    6531:	3c 03                	cmp    al,0x3
    6533:	0f 87 5a fd ff ff    	ja     initialize_VESA_101_branch_1
    6539:	25 ff 00 00 00       	and    eax,0xff
    653e:	2e ff 24 85 1c 65 00 00 	jmp    DWORD PTR cs:[eax*4+@obj1:initialize_VESA_103_reference_1]; fixup: num: 764, src obj: 1, src ofs: 0x6542, dst obj: 1, dst ofs: 0x651c
set_visable_page_VESA_103_reference_1:
    6546:	31 d2                	xor    edx,edx
    6548:	31 c0                	xor    eax,eax
    654a:	e8 81 e9 ff ff       	call   set_super_VGA_display_start
    654f:	5a                   	pop    edx
    6550:	c3                   	ret    
set_visable_page_VESA_103_reference_2:
    6551:	ba 20 03 00 00       	mov    edx,0x320
    6556:	31 c0                	xor    eax,eax
    6558:	e8 73 e9 ff ff       	call   set_super_VGA_display_start
    655d:	5a                   	pop    edx
    655e:	c3                   	ret    
set_visable_page_VESA_103_reference_3:
    655f:	ba 40 06 00 00       	mov    edx,0x640
    6564:	31 c0                	xor    eax,eax
    6566:	e8 65 e9 ff ff       	call   set_super_VGA_display_start
    656b:	5a                   	pop    edx
    656c:	c3                   	ret    
set_visable_page_VESA_103_reference_4:
    656d:	ba 60 09 00 00       	mov    edx,0x960
    6572:	31 c0                	xor    eax,eax
    6574:	e8 57 e9 ff ff       	call   set_super_VGA_display_start
    6579:	5a                   	pop    edx
    657a:	c3                   	ret    
    657b:	8d 40 00             	lea    eax,[eax+0x0]
    657e:	8b c9                	mov    ecx,ecx

;-------------------------------------------------
;  Function 'set_pixel_VESA_103'                 -
;-------------------------------------------------
set_pixel_VESA_103:
    6580:	51                   	push   ecx
    6581:	56                   	push   esi
    6582:	83 ec 08             	sub    esp,0x8
    6585:	89 c6                	mov    esi,eax
    6587:	89 1c 24             	mov    DWORD PTR [esp],ebx
    658a:	89 c3                	mov    ebx,eax
    658c:	8a 04 24             	mov    al,BYTE PTR [esp]
    658f:	89 d1                	mov    ecx,edx
    6591:	88 44 24 04          	mov    BYTE PTR [esp+0x4],al
    6595:	8d 04 55 00 00 00 00 	lea    eax,[edx*2+0x0]
    659c:	0f bf 90 cc 97 01 00 	movsx  edx,WORD PTR [eax+@obj3:line_start_table_split]              ; fixup: num: 763, src obj: 1, src ofs: 0x659f, dst obj: 3, dst ofs: 0x197cc
    65a3:	83 fa ff             	cmp    edx,0xffffffff
    65a6:	75 3d                	jne    set_pixel_VESA_103_branch_2
    65a8:	31 d2                	xor    edx,edx
    65aa:	0f bf 35 c4 7f 01 00 	movsx  esi,WORD PTR ds:@obj3:VESA_writeable_window_position         ; fixup: num: 762, src obj: 1, src ofs: 0x65ad, dst obj: 3, dst ofs: 0x17fc4
    65b1:	66 8b 90 ca 7f 01 00 	mov    dx,WORD PTR [eax+@obj3:line_start_table_window_offsets]      ; fixup: num: 761, src obj: 1, src ofs: 0x65b4, dst obj: 3, dst ofs: 0x17fca
    65b8:	39 d6                	cmp    esi,edx
    65ba:	74 16                	je     set_pixel_VESA_103_branch_1
    65bc:	31 c0                	xor    eax,eax
    65be:	66 89 15 c4 7f 01 00 	mov    WORD PTR ds:@obj3:VESA_writeable_window_position,dx          ; fixup: num: 666, src obj: 1, src ofs: 0x65c1, dst obj: 3, dst ofs: 0x17fc4
    65c5:	a0 c1 7f 01 00       	mov    al,ds:@obj3:VESA_writeable_number                            ; fixup: num: 665, src obj: 1, src ofs: 0x65c6, dst obj: 3, dst ofs: 0x17fc1
    65ca:	0f bf d2             	movsx  edx,dx
    65cd:	e8 ce e8 ff ff       	call   select_super_VGA_video_memory_window
set_pixel_VESA_103_branch_1:
    65d2:	8b 34 8d cc 87 01 00 	mov    esi,DWORD PTR [ecx*4+@obj3:line_start_table_offset_offsets]  ; fixup: num: 664, src obj: 1, src ofs: 0x65d5, dst obj: 3, dst ofs: 0x187cc
    65d9:	a1 bc 7f 01 00       	mov    eax,ds:@obj3:VESA_writeable_window                           ; fixup: num: 663, src obj: 1, src ofs: 0x65da, dst obj: 3, dst ofs: 0x17fbc
    65de:	01 f3                	add    ebx,esi
    65e0:	e9 82 00 00 00       	jmp    set_pixel_VESA_103_branch_6
set_pixel_VESA_103_branch_2:
    65e5:	39 d6                	cmp    esi,edx
    65e7:	7d 45                	jge    set_pixel_VESA_103_branch_4
    65e9:	31 f6                	xor    esi,esi
    65eb:	0f bf 15 c4 7f 01 00 	movsx  edx,WORD PTR ds:@obj3:VESA_writeable_window_position         ; fixup: num: 662, src obj: 1, src ofs: 0x65ee, dst obj: 3, dst ofs: 0x17fc4
    65f2:	66 8b b0 ca 7f 01 00 	mov    si,WORD PTR [eax+@obj3:line_start_table_window_offsets]      ; fixup: num: 661, src obj: 1, src ofs: 0x65f5, dst obj: 3, dst ofs: 0x17fca
    65f9:	39 f2                	cmp    edx,esi
    65fb:	74 16                	je     set_pixel_VESA_103_branch_3
    65fd:	31 c0                	xor    eax,eax
    65ff:	0f bf d6             	movsx  edx,si
    6602:	a0 c1 7f 01 00       	mov    al,ds:@obj3:VESA_writeable_number                            ; fixup: num: 660, src obj: 1, src ofs: 0x6603, dst obj: 3, dst ofs: 0x17fc1
    6607:	66 89 35 c4 7f 01 00 	mov    WORD PTR ds:@obj3:VESA_writeable_window_position,si          ; fixup: num: 659, src obj: 1, src ofs: 0x660a, dst obj: 3, dst ofs: 0x17fc4
    660e:	e8 8d e8 ff ff       	call   select_super_VGA_video_memory_window
set_pixel_VESA_103_branch_3:
    6613:	8b 14 8d cc 87 01 00 	mov    edx,DWORD PTR [ecx*4+@obj3:line_start_table_offset_offsets]  ; fixup: num: 658, src obj: 1, src ofs: 0x6616, dst obj: 3, dst ofs: 0x187cc
    661a:	a1 bc 7f 01 00       	mov    eax,ds:@obj3:VESA_writeable_window                           ; fixup: num: 657, src obj: 1, src ofs: 0x661b, dst obj: 3, dst ofs: 0x17fbc
    661f:	01 d3                	add    ebx,edx
    6621:	8a 54 24 04          	mov    dl,BYTE PTR [esp+0x4]
    6625:	88 14 03             	mov    BYTE PTR [ebx+eax*1],dl
    6628:	83 c4 08             	add    esp,0x8
    662b:	5e                   	pop    esi
    662c:	59                   	pop    ecx
    662d:	c3                   	ret    
set_pixel_VESA_103_branch_4:
    662e:	31 d2                	xor    edx,edx
    6630:	0f bf 35 c4 7f 01 00 	movsx  esi,WORD PTR ds:@obj3:VESA_writeable_window_position         ; fixup: num: 656, src obj: 1, src ofs: 0x6633, dst obj: 3, dst ofs: 0x17fc4
    6637:	66 8b 90 cc 7f 01 00 	mov    dx,WORD PTR [eax+@obj3:line_start_table_window_offsets_variable_1]; fixup: num: 655, src obj: 1, src ofs: 0x663a, dst obj: 3, dst ofs: 0x17fcc
    663e:	39 d6                	cmp    esi,edx
    6640:	74 16                	je     set_pixel_VESA_103_branch_5
    6642:	31 c0                	xor    eax,eax
    6644:	66 89 15 c4 7f 01 00 	mov    WORD PTR ds:@obj3:VESA_writeable_window_position,dx          ; fixup: num: 654, src obj: 1, src ofs: 0x6647, dst obj: 3, dst ofs: 0x17fc4
    664b:	a0 c1 7f 01 00       	mov    al,ds:@obj3:VESA_writeable_number                            ; fixup: num: 653, src obj: 1, src ofs: 0x664c, dst obj: 3, dst ofs: 0x17fc1
    6650:	0f bf d2             	movsx  edx,dx
    6653:	e8 48 e8 ff ff       	call   select_super_VGA_video_memory_window
set_pixel_VESA_103_branch_5:
    6658:	0f bf 04 4d cc 97 01 00 	movsx  eax,WORD PTR [ecx*2+@obj3:line_start_table_split]         ; fixup: num: 652, src obj: 1, src ofs: 0x665c, dst obj: 3, dst ofs: 0x197cc
    6660:	29 c3                	sub    ebx,eax
    6662:	a1 bc 7f 01 00       	mov    eax,ds:@obj3:VESA_writeable_window                           ; fixup: num: 651, src obj: 1, src ofs: 0x6663, dst obj: 3, dst ofs: 0x17fbc
set_pixel_VESA_103_branch_6:
    6667:	8a 54 24 04          	mov    dl,BYTE PTR [esp+0x4]
    666b:	88 14 03             	mov    BYTE PTR [ebx+eax*1],dl
    666e:	83 c4 08             	add    esp,0x8
    6671:	5e                   	pop    esi
    6672:	59                   	pop    ecx
    6673:	c3                   	ret    
    6674:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    667a:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]

;-------------------------------------------------
;  Function 'get_pixel_VESA_103'                 -
;-------------------------------------------------
get_pixel_VESA_103:
    6680:	53                   	push   ebx
    6681:	51                   	push   ecx
    6682:	56                   	push   esi
    6683:	89 c1                	mov    ecx,eax
    6685:	89 c6                	mov    esi,eax
    6687:	89 d3                	mov    ebx,edx
    6689:	8d 04 55 00 00 00 00 	lea    eax,[edx*2+0x0]
    6690:	0f bf 90 cc 97 01 00 	movsx  edx,WORD PTR [eax+@obj3:line_start_table_split]              ; fixup: num: 679, src obj: 1, src ofs: 0x6693, dst obj: 3, dst ofs: 0x197cc
    6697:	83 fa ff             	cmp    edx,0xffffffff
    669a:	75 3d                	jne    get_pixel_VESA_103_branch_2
    669c:	31 d2                	xor    edx,edx
    669e:	0f bf 0d c4 7f 01 00 	movsx  ecx,WORD PTR ds:@obj3:VESA_writeable_window_position         ; fixup: num: 678, src obj: 1, src ofs: 0x66a1, dst obj: 3, dst ofs: 0x17fc4
    66a5:	66 8b 90 ca 7f 01 00 	mov    dx,WORD PTR [eax+@obj3:line_start_table_window_offsets]      ; fixup: num: 677, src obj: 1, src ofs: 0x66a8, dst obj: 3, dst ofs: 0x17fca
    66ac:	39 d1                	cmp    ecx,edx
    66ae:	74 16                	je     get_pixel_VESA_103_branch_1
    66b0:	31 c0                	xor    eax,eax
    66b2:	66 89 15 c4 7f 01 00 	mov    WORD PTR ds:@obj3:VESA_writeable_window_position,dx          ; fixup: num: 676, src obj: 1, src ofs: 0x66b5, dst obj: 3, dst ofs: 0x17fc4
    66b9:	a0 c1 7f 01 00       	mov    al,ds:@obj3:VESA_writeable_number                            ; fixup: num: 675, src obj: 1, src ofs: 0x66ba, dst obj: 3, dst ofs: 0x17fc1
    66be:	0f bf d2             	movsx  edx,dx
    66c1:	e8 da e7 ff ff       	call   select_super_VGA_video_memory_window
get_pixel_VESA_103_branch_1:
    66c6:	8b 14 9d cc 87 01 00 	mov    edx,DWORD PTR [ebx*4+@obj3:line_start_table_offset_offsets]  ; fixup: num: 674, src obj: 1, src ofs: 0x66c9, dst obj: 3, dst ofs: 0x187cc
    66cd:	a1 bc 7f 01 00       	mov    eax,ds:@obj3:VESA_writeable_window                           ; fixup: num: 673, src obj: 1, src ofs: 0x66ce, dst obj: 3, dst ofs: 0x17fbc
    66d2:	01 d6                	add    esi,edx
    66d4:	e9 7b 00 00 00       	jmp    get_pixel_VESA_103_branch_6
get_pixel_VESA_103_branch_2:
    66d9:	39 d1                	cmp    ecx,edx
    66db:	7d 3e                	jge    get_pixel_VESA_103_branch_4
    66dd:	31 d2                	xor    edx,edx
    66df:	0f bf 0d c4 7f 01 00 	movsx  ecx,WORD PTR ds:@obj3:VESA_writeable_window_position         ; fixup: num: 672, src obj: 1, src ofs: 0x66e2, dst obj: 3, dst ofs: 0x17fc4
    66e6:	66 8b 90 ca 7f 01 00 	mov    dx,WORD PTR [eax+@obj3:line_start_table_window_offsets]      ; fixup: num: 671, src obj: 1, src ofs: 0x66e9, dst obj: 3, dst ofs: 0x17fca
    66ed:	39 d1                	cmp    ecx,edx
    66ef:	74 16                	je     get_pixel_VESA_103_branch_3
    66f1:	31 c0                	xor    eax,eax
    66f3:	66 89 15 c4 7f 01 00 	mov    WORD PTR ds:@obj3:VESA_writeable_window_position,dx          ; fixup: num: 670, src obj: 1, src ofs: 0x66f6, dst obj: 3, dst ofs: 0x17fc4
    66fa:	a0 c1 7f 01 00       	mov    al,ds:@obj3:VESA_writeable_number                            ; fixup: num: 669, src obj: 1, src ofs: 0x66fb, dst obj: 3, dst ofs: 0x17fc1
    66ff:	0f bf d2             	movsx  edx,dx
    6702:	e8 99 e7 ff ff       	call   select_super_VGA_video_memory_window
get_pixel_VESA_103_branch_3:
    6707:	8b 04 9d cc 87 01 00 	mov    eax,DWORD PTR [ebx*4+@obj3:line_start_table_offset_offsets]  ; fixup: num: 668, src obj: 1, src ofs: 0x670a, dst obj: 3, dst ofs: 0x187cc
    670e:	8b 15 bc 7f 01 00    	mov    edx,DWORD PTR ds:@obj3:VESA_writeable_window                 ; fixup: num: 667, src obj: 1, src ofs: 0x6710, dst obj: 3, dst ofs: 0x17fbc
    6714:	01 f0                	add    eax,esi
    6716:	8a 04 02             	mov    al,BYTE PTR [edx+eax*1]
    6719:	eb 3c                	jmp    get_pixel_VESA_103_branch_7
get_pixel_VESA_103_branch_4:
    671b:	31 d2                	xor    edx,edx
    671d:	0f bf 0d c4 7f 01 00 	movsx  ecx,WORD PTR ds:@obj3:VESA_writeable_window_position         ; fixup: num: 686, src obj: 1, src ofs: 0x6720, dst obj: 3, dst ofs: 0x17fc4
    6724:	66 8b 90 cc 7f 01 00 	mov    dx,WORD PTR [eax+@obj3:line_start_table_window_offsets_variable_1]; fixup: num: 685, src obj: 1, src ofs: 0x6727, dst obj: 3, dst ofs: 0x17fcc
    672b:	39 d1                	cmp    ecx,edx
    672d:	74 16                	je     get_pixel_VESA_103_branch_5
    672f:	31 c0                	xor    eax,eax
    6731:	66 89 15 c4 7f 01 00 	mov    WORD PTR ds:@obj3:VESA_writeable_window_position,dx          ; fixup: num: 684, src obj: 1, src ofs: 0x6734, dst obj: 3, dst ofs: 0x17fc4
    6738:	a0 c1 7f 01 00       	mov    al,ds:@obj3:VESA_writeable_number                            ; fixup: num: 683, src obj: 1, src ofs: 0x6739, dst obj: 3, dst ofs: 0x17fc1
    673d:	0f bf d2             	movsx  edx,dx
    6740:	e8 5b e7 ff ff       	call   select_super_VGA_video_memory_window
get_pixel_VESA_103_branch_5:
    6745:	0f bf 04 5d cc 97 01 00 	movsx  eax,WORD PTR [ebx*2+@obj3:line_start_table_split]         ; fixup: num: 682, src obj: 1, src ofs: 0x6749, dst obj: 3, dst ofs: 0x197cc
    674d:	29 c6                	sub    esi,eax
    674f:	a1 bc 7f 01 00       	mov    eax,ds:@obj3:VESA_writeable_window                           ; fixup: num: 681, src obj: 1, src ofs: 0x6750, dst obj: 3, dst ofs: 0x17fbc
get_pixel_VESA_103_branch_6:
    6754:	8a 04 06             	mov    al,BYTE PTR [esi+eax*1]
get_pixel_VESA_103_branch_7:
    6757:	25 ff 00 00 00       	and    eax,0xff
    675c:	5e                   	pop    esi
    675d:	59                   	pop    ecx
    675e:	5b                   	pop    ebx
    675f:	c3                   	ret    

;-------------------------------------------------
;  Function 'detect_VESA_105'                    -
;-------------------------------------------------
detect_VESA_105:
    6760:	53                   	push   ebx
    6761:	52                   	push   edx
    6762:	83 ec 1c             	sub    esp,0x1c
    6765:	b8 05 01 00 00       	mov    eax,0x105
    676a:	e8 41 00 00 00       	call   VESA_graphics_mode
    676f:	84 c0                	test   al,al
    6771:	74 19                	je     detect_VESA_105_branch_1
    6773:	ba 03 00 00 00       	mov    edx,0x3
    6778:	89 e3                	mov    ebx,esp
    677a:	b8 10 00 00 00       	mov    eax,0x10
    677f:	66 89 14 24          	mov    WORD PTR [esp],dx
    6783:	89 e2                	mov    edx,esp
    6785:	e8 12 a9 06 00       	call   int386_
    678a:	b0 01                	mov    al,0x1
detect_VESA_105_branch_1:
    678c:	83 c4 1c             	add    esp,0x1c
    678f:	5a                   	pop    edx
    6790:	5b                   	pop    ebx
    6791:	c3                   	ret    
    6792:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    6798:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
    679e:	8b c0                	mov    eax,eax

;-------------------------------------------------
;  Function 'initialize_VESA_105'                -
;-------------------------------------------------
initialize_VESA_105:
    67a0:	b8 05 01 00 00       	mov    eax,0x105
    67a5:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    67ab:	8d 52 00             	lea    edx,[edx+0x0]
    67ae:	8b db                	mov    ebx,ebx

;-------------------------------------------------
;  Function 'VESA_graphics_mode'                 -
;-------------------------------------------------
VESA_graphics_mode:
    67b0:	53                   	push   ebx
    67b1:	51                   	push   ecx
    67b2:	52                   	push   edx
    67b3:	56                   	push   esi
    67b4:	57                   	push   edi
    67b5:	55                   	push   ebp
    67b6:	83 ec 48             	sub    esp,0x48
    67b9:	89 c6                	mov    esi,eax
    67bb:	80 3d 90 7e 01 00 00 	cmp    BYTE PTR ds:@obj3:been_here,0x0                              ; fixup: num: 680, src obj: 1, src ofs: 0x67bd, dst obj: 3, dst ofs: 0x17e90
    67c2:	0f 85 ce 00 00 00    	jne    VESA_graphics_mode_branch_1
    67c8:	68 00 40 00 00       	push   0x4000
    67cd:	68 b0 67 00 00       	push   @obj1:VESA_graphics_mode                                     ; fixup: num: 696, src obj: 1, src ofs: 0x67ce, dst obj: 1, dst ofs: 0x67b0
    67d2:	e8 20 a3 06 00       	call   _D32Lock
    67d7:	83 c4 08             	add    esp,0x8
    67da:	68 00 40 00 00       	push   0x4000
    67df:	68 e0 4b 00 00       	push   @obj1:return_super_VGA_information                           ; fixup: num: 695, src obj: 1, src ofs: 0x67e0, dst obj: 1, dst ofs: 0x4be0
    67e4:	e8 0e a3 06 00       	call   _D32Lock
    67e9:	83 c4 08             	add    esp,0x8
    67ec:	68 00 40 00 00       	push   0x4000
    67f1:	68 a0 4e 00 00       	push   @obj1:select_super_VGA_video_memory_window                   ; fixup: num: 694, src obj: 1, src ofs: 0x67f2, dst obj: 1, dst ofs: 0x4ea0
    67f6:	e8 fc a2 06 00       	call   _D32Lock
    67fb:	83 c4 08             	add    esp,0x8
    67fe:	68 00 40 00 00       	push   0x4000
    6803:	68 00 4f 00 00       	push   @obj1:VESA_bank_switch                                       ; fixup: num: 693, src obj: 1, src ofs: 0x6804, dst obj: 1, dst ofs: 0x4f00
    6808:	e8 ea a2 06 00       	call   _D32Lock
    680d:	83 c4 08             	add    esp,0x8
    6810:	68 00 40 00 00       	push   0x4000
    6815:	68 40 4f 00 00       	push   @obj1:VESA_bank_switch_short                                 ; fixup: num: 692, src obj: 1, src ofs: 0x6816, dst obj: 1, dst ofs: 0x4f40
    681a:	e8 d8 a2 06 00       	call   _D32Lock
    681f:	83 c4 08             	add    esp,0x8
    6822:	68 00 40 00 00       	push   0x4000
    6827:	68 d0 4e 00 00       	push   @obj1:set_super_VGA_display_start                            ; fixup: num: 691, src obj: 1, src ofs: 0x6828, dst obj: 1, dst ofs: 0x4ed0
    682c:	e8 c6 a2 06 00       	call   _D32Lock
    6831:	83 c4 08             	add    esp,0x8
    6834:	68 00 40 00 00       	push   0x4000
    6839:	68 a0 4d 00 00       	push   @obj1:set_super_VGA_video_mode                               ; fixup: num: 690, src obj: 1, src ofs: 0x683a, dst obj: 1, dst ofs: 0x4da0
    683e:	e8 b4 a2 06 00       	call   _D32Lock
    6843:	83 c4 08             	add    esp,0x8
    6846:	68 00 40 00 00       	push   0x4000
    684b:	68 50 5b 00 00       	push   @obj1:VESA_blit                                              ; fixup: num: 689, src obj: 1, src ofs: 0x684c, dst obj: 1, dst ofs: 0x5b50
    6850:	e8 a2 a2 06 00       	call   _D32Lock
    6855:	83 c4 08             	add    esp,0x8
    6858:	68 00 08 00 00       	push   0x800
    685d:	68 ca 7f 01 00       	push   @obj3:line_start_table_window_offsets                        ; fixup: num: 688, src obj: 1, src ofs: 0x685e, dst obj: 3, dst ofs: 0x17fca
    6862:	e8 90 a2 06 00       	call   _D32Lock
    6867:	83 c4 08             	add    esp,0x8
    686a:	68 00 10 00 00       	push   0x1000
    686f:	68 cc 87 01 00       	push   @obj3:line_start_table_offset_offsets                        ; fixup: num: 687, src obj: 1, src ofs: 0x6870, dst obj: 3, dst ofs: 0x187cc
    6874:	e8 7e a2 06 00       	call   _D32Lock
    6879:	83 c4 08             	add    esp,0x8
    687c:	68 00 08 00 00       	push   0x800
    6881:	68 cc 97 01 00       	push   @obj3:line_start_table_split                                 ; fixup: num: 705, src obj: 1, src ofs: 0x6882, dst obj: 3, dst ofs: 0x197cc
    6886:	e8 6c a2 06 00       	call   _D32Lock
    688b:	30 d2                	xor    dl,dl
    688d:	83 c4 08             	add    esp,0x8
    6890:	88 15 90 7e 01 00    	mov    BYTE PTR ds:@obj3:been_here,dl                               ; fixup: num: 704, src obj: 1, src ofs: 0x6892, dst obj: 3, dst ofs: 0x17e90
VESA_graphics_mode_branch_1:
    6896:	b8 94 7e 01 00       	mov    eax,@obj3:VESA_info_block                                    ; fixup: num: 703, src obj: 1, src ofs: 0x6897, dst obj: 3, dst ofs: 0x17e94
    689b:	8c da                	mov    edx,ds
    689d:	e8 3e e3 ff ff       	call   return_super_VGA_information
    68a2:	84 c0                	test   al,al
    68a4:	75 11                	jne    VESA_graphics_mode_branch_2
    68a6:	bb 64 05 00 00       	mov    ebx,@obj3:vesamode_cpp_variable_1                            ; fixup: num: 702, src obj: 1, src ofs: 0x68a7, dst obj: 3, dst ofs: 0x564
    68ab:	ba 63 01 00 00       	mov    edx,0x163
    68b0:	31 c0                	xor    eax,eax
    68b2:	e8 79 17 03 00       	call   _error_report
VESA_graphics_mode_branch_2:
    68b7:	83 3d a2 7e 01 00 00 	cmp    DWORD PTR ds:@obj3:VESA_info_block_variable_1,0x0            ; fixup: num: 701, src obj: 1, src ofs: 0x68b9, dst obj: 3, dst ofs: 0x17ea2
    68be:	0f 85 8e e6 ff ff    	jne    VESA_bank_switch_short_branch_1
    68c4:	30 c0                	xor    al,al
    68c6:	83 c4 48             	add    esp,0x48
    68c9:	5d                   	pop    ebp
    68ca:	5f                   	pop    edi
    68cb:	5e                   	pop    esi
    68cc:	5a                   	pop    edx
    68cd:	59                   	pop    ecx
    68ce:	5b                   	pop    ebx
    68cf:	c3                   	ret    

;-------------------------------------------------
;  Function 'deinitialize_VESA_105'              -
;-------------------------------------------------
deinitialize_VESA_105:
    68d0:	53                   	push   ebx
    68d1:	52                   	push   edx
    68d2:	83 ec 1c             	sub    esp,0x1c
    68d5:	ba 03 00 00 00       	mov    edx,0x3
    68da:	89 e3                	mov    ebx,esp
    68dc:	b8 10 00 00 00       	mov    eax,0x10
    68e1:	66 89 14 24          	mov    WORD PTR [esp],dx
    68e5:	89 e2                	mov    edx,esp
    68e7:	e8 b0 a7 06 00       	call   int386_
    68ec:	b0 01                	mov    al,0x1
    68ee:	83 c4 1c             	add    esp,0x1c
    68f1:	5a                   	pop    edx
    68f2:	5b                   	pop    ebx
    68f3:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    68f9:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
    68ff:	90                   	nop

;-------------------------------------------------
;  Function 'set_active_page_VESA_105'           -
;-------------------------------------------------
set_active_page_VESA_105:
    6900:	c3                   	ret    
    6901:	8d 40 00             	lea    eax,[eax+0x0]
set_active_page_VESA_105_reference_1:                                                               ; access size: DWORDS
    6904:	36 69 00 00 41 69 00 	imul   eax,DWORD PTR ss:[eax],@obj1:set_visable_page_VESA_105_reference_200; fixup: num: 700, src obj: 1, src ofs: 0x6904, dst obj: 1, dst ofs: 0x6936; fixup: num: 699, src obj: 1, src ofs: 0x6908, dst obj: 1, dst ofs: 0x6941
    690b:	00 4f 69             	add    BYTE PTR [edi+0x69],cl                                       ; fixup: num: 698, src obj: 1, src ofs: 0x690c, dst obj: 1, dst ofs: 0x694f
    690e:	00 00                	add    BYTE PTR [eax],al
    6910:	5d                   	pop    ebp                                                          ; fixup: num: 697, src obj: 1, src ofs: 0x6910, dst obj: 1, dst ofs: 0x695d
    6911:	69 00 00 8d 80 00    	imul   eax,DWORD PTR [eax],0x808d00
    6917:	00 00                	add    BYTE PTR [eax],al
    6919:	00 8d 92 00 00 00    	add    BYTE PTR [ebp+0x92],cl
    691f:	00               	add    BYTE PTR [edx+0x3c],dl

;-------------------------------------------------
;  Function 'set_visable_page_VESA_105'          -
;-------------------------------------------------
set_visable_page_VESA_105:
    6920:	52                   	push   edx
    6921:	3c 03                	cmp    al,0x3
    6923:	0f 87 6a f9 ff ff    	ja     initialize_VESA_101_branch_1
    6929:	25 ff 00 00 00       	and    eax,0xff
    692e:	2e ff 24 85 04 69 00 00 	jmp    DWORD PTR cs:[eax*4+@obj1:set_active_page_VESA_105_reference_1]; fixup: num: 597, src obj: 1, src ofs: 0x6932, dst obj: 1, dst ofs: 0x6904
set_visable_page_VESA_105_reference_1:
    6936:	31 d2                	xor    edx,edx
    6938:	31 c0                	xor    eax,eax
    693a:	e8 91 e5 ff ff       	call   set_super_VGA_display_start
    693f:	5a                   	pop    edx
    6940:	c3                   	ret    
set_visable_page_VESA_105_reference_2:
    6941:	ba 00 04 00 00       	mov    edx,0x400
    6946:	31 c0                	xor    eax,eax
    6948:	e8 83 e5 ff ff       	call   set_super_VGA_display_start
    694d:	5a                   	pop    edx
    694e:	c3                   	ret    
set_visable_page_VESA_105_reference_3:
    694f:	ba 00 08 00 00       	mov    edx,0x800
    6954:	31 c0                	xor    eax,eax
    6956:	e8 75 e5 ff ff       	call   set_super_VGA_display_start
    695b:	5a                   	pop    edx
    695c:	c3                   	ret    
set_visable_page_VESA_105_reference_4:
    695d:	ba 00 0c 00 00       	mov    edx,0xc00
    6962:	31 c0                	xor    eax,eax
    6964:	e8 67 e5 ff ff       	call   set_super_VGA_display_start
    6969:	5a                   	pop    edx
    696a:	c3                   	ret    
    696b:	8d 40 00             	lea    eax,[eax+0x0]
    696e:	8b c9                	mov    ecx,ecx

;-------------------------------------------------
;  Function 'set_pixel_VESA_105'                 -
;-------------------------------------------------
set_pixel_VESA_105:
    6970:	51                   	push   ecx
    6971:	56                   	push   esi
    6972:	83 ec 08             	sub    esp,0x8
    6975:	89 c6                	mov    esi,eax
    6977:	89 1c 24             	mov    DWORD PTR [esp],ebx
    697a:	89 c3                	mov    ebx,eax
    697c:	8a 04 24             	mov    al,BYTE PTR [esp]
    697f:	89 d1                	mov    ecx,edx
    6981:	88 44 24 04          	mov    BYTE PTR [esp+0x4],al
    6985:	8d 04 55 00 00 00 00 	lea    eax,[edx*2+0x0]
    698c:	0f bf 90 cc 97 01 00 	movsx  edx,WORD PTR [eax+@obj3:line_start_table_split]              ; fixup: num: 596, src obj: 1, src ofs: 0x698f, dst obj: 3, dst ofs: 0x197cc
    6993:	83 fa ff             	cmp    edx,0xffffffff
    6996:	75 3d                	jne    set_pixel_VESA_105_branch_2
    6998:	31 d2                	xor    edx,edx
    699a:	0f bf 35 c4 7f 01 00 	movsx  esi,WORD PTR ds:@obj3:VESA_writeable_window_position         ; fixup: num: 595, src obj: 1, src ofs: 0x699d, dst obj: 3, dst ofs: 0x17fc4
    69a1:	66 8b 90 ca 7f 01 00 	mov    dx,WORD PTR [eax+@obj3:line_start_table_window_offsets]      ; fixup: num: 594, src obj: 1, src ofs: 0x69a4, dst obj: 3, dst ofs: 0x17fca
    69a8:	39 d6                	cmp    esi,edx
    69aa:	74 16                	je     set_pixel_VESA_105_branch_1
    69ac:	31 c0                	xor    eax,eax
    69ae:	66 89 15 c4 7f 01 00 	mov    WORD PTR ds:@obj3:VESA_writeable_window_position,dx          ; fixup: num: 709, src obj: 1, src ofs: 0x69b1, dst obj: 3, dst ofs: 0x17fc4
    69b5:	a0 c1 7f 01 00       	mov    al,ds:@obj3:VESA_writeable_number                            ; fixup: num: 708, src obj: 1, src ofs: 0x69b6, dst obj: 3, dst ofs: 0x17fc1
    69ba:	0f bf d2             	movsx  edx,dx
    69bd:	e8 de e4 ff ff       	call   select_super_VGA_video_memory_window
set_pixel_VESA_105_branch_1:
    69c2:	8b 34 8d cc 87 01 00 	mov    esi,DWORD PTR [ecx*4+@obj3:line_start_table_offset_offsets]  ; fixup: num: 707, src obj: 1, src ofs: 0x69c5, dst obj: 3, dst ofs: 0x187cc
    69c9:	a1 bc 7f 01 00       	mov    eax,ds:@obj3:VESA_writeable_window                           ; fixup: num: 706, src obj: 1, src ofs: 0x69ca, dst obj: 3, dst ofs: 0x17fbc
    69ce:	01 f3                	add    ebx,esi
    69d0:	e9 82 00 00 00       	jmp    set_pixel_VESA_105_branch_6
set_pixel_VESA_105_branch_2:
    69d5:	39 d6                	cmp    esi,edx
    69d7:	7d 45                	jge    set_pixel_VESA_105_branch_4
    69d9:	31 f6                	xor    esi,esi
    69db:	0f bf 15 c4 7f 01 00 	movsx  edx,WORD PTR ds:@obj3:VESA_writeable_window_position         ; fixup: num: 609, src obj: 1, src ofs: 0x69de, dst obj: 3, dst ofs: 0x17fc4
    69e2:	66 8b b0 ca 7f 01 00 	mov    si,WORD PTR [eax+@obj3:line_start_table_window_offsets]      ; fixup: num: 608, src obj: 1, src ofs: 0x69e5, dst obj: 3, dst ofs: 0x17fca
    69e9:	39 f2                	cmp    edx,esi
    69eb:	74 16                	je     set_pixel_VESA_105_branch_3
    69ed:	31 c0                	xor    eax,eax
    69ef:	0f bf d6             	movsx  edx,si
    69f2:	a0 c1 7f 01 00       	mov    al,ds:@obj3:VESA_writeable_number                            ; fixup: num: 607, src obj: 1, src ofs: 0x69f3, dst obj: 3, dst ofs: 0x17fc1
    69f7:	66 89 35 c4 7f 01 00 	mov    WORD PTR ds:@obj3:VESA_writeable_window_position,si          ; fixup: num: 606, src obj: 1, src ofs: 0x69fa, dst obj: 3, dst ofs: 0x17fc4
    69fe:	e8 9d e4 ff ff       	call   select_super_VGA_video_memory_window
set_pixel_VESA_105_branch_3:
    6a03:	8b 14 8d cc 87 01 00 	mov    edx,DWORD PTR [ecx*4+@obj3:line_start_table_offset_offsets]  ; fixup: num: 605, src obj: 1, src ofs: 0x6a06, dst obj: 3, dst ofs: 0x187cc
    6a0a:	a1 bc 7f 01 00       	mov    eax,ds:@obj3:VESA_writeable_window                           ; fixup: num: 604, src obj: 1, src ofs: 0x6a0b, dst obj: 3, dst ofs: 0x17fbc
    6a0f:	01 d3                	add    ebx,edx
    6a11:	8a 54 24 04          	mov    dl,BYTE PTR [esp+0x4]
    6a15:	88 14 03             	mov    BYTE PTR [ebx+eax*1],dl
    6a18:	83 c4 08             	add    esp,0x8
    6a1b:	5e                   	pop    esi
    6a1c:	59                   	pop    ecx
    6a1d:	c3                   	ret    
set_pixel_VESA_105_branch_4:
    6a1e:	31 d2                	xor    edx,edx
    6a20:	0f bf 35 c4 7f 01 00 	movsx  esi,WORD PTR ds:@obj3:VESA_writeable_window_position         ; fixup: num: 603, src obj: 1, src ofs: 0x6a23, dst obj: 3, dst ofs: 0x17fc4
    6a27:	66 8b 90 cc 7f 01 00 	mov    dx,WORD PTR [eax+@obj3:line_start_table_window_offsets_variable_1]; fixup: num: 602, src obj: 1, src ofs: 0x6a2a, dst obj: 3, dst ofs: 0x17fcc
    6a2e:	39 d6                	cmp    esi,edx
    6a30:	74 16                	je     set_pixel_VESA_105_branch_5
    6a32:	31 c0                	xor    eax,eax
    6a34:	66 89 15 c4 7f 01 00 	mov    WORD PTR ds:@obj3:VESA_writeable_window_position,dx          ; fixup: num: 601, src obj: 1, src ofs: 0x6a37, dst obj: 3, dst ofs: 0x17fc4
    6a3b:	a0 c1 7f 01 00       	mov    al,ds:@obj3:VESA_writeable_number                            ; fixup: num: 600, src obj: 1, src ofs: 0x6a3c, dst obj: 3, dst ofs: 0x17fc1
    6a40:	0f bf d2             	movsx  edx,dx
    6a43:	e8 58 e4 ff ff       	call   select_super_VGA_video_memory_window
set_pixel_VESA_105_branch_5:
    6a48:	0f bf 04 4d cc 97 01 00 	movsx  eax,WORD PTR [ecx*2+@obj3:line_start_table_split]         ; fixup: num: 599, src obj: 1, src ofs: 0x6a4c, dst obj: 3, dst ofs: 0x197cc
    6a50:	29 c3                	sub    ebx,eax
    6a52:	a1 bc 7f 01 00       	mov    eax,ds:@obj3:VESA_writeable_window                           ; fixup: num: 598, src obj: 1, src ofs: 0x6a53, dst obj: 3, dst ofs: 0x17fbc
set_pixel_VESA_105_branch_6:
    6a57:	8a 54 24 04          	mov    dl,BYTE PTR [esp+0x4]
    6a5b:	88 14 03             	mov    BYTE PTR [ebx+eax*1],dl
    6a5e:	83 c4 08             	add    esp,0x8
    6a61:	5e                   	pop    esi
    6a62:	59                   	pop    ecx
    6a63:	c3                   	ret    
    6a64:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    6a6a:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]

;-------------------------------------------------
;  Function 'get_pixel_VESA_105'                 -
;-------------------------------------------------
get_pixel_VESA_105:
    6a70:	53                   	push   ebx
    6a71:	51                   	push   ecx
    6a72:	56                   	push   esi
    6a73:	89 c1                	mov    ecx,eax
    6a75:	89 c6                	mov    esi,eax
    6a77:	89 d3                	mov    ebx,edx
    6a79:	8d 04 55 00 00 00 00 	lea    eax,[edx*2+0x0]
    6a80:	0f bf 90 cc 97 01 00 	movsx  edx,WORD PTR [eax+@obj3:line_start_table_split]              ; fixup: num: 626, src obj: 1, src ofs: 0x6a83, dst obj: 3, dst ofs: 0x197cc
    6a87:	83 fa ff             	cmp    edx,0xffffffff
    6a8a:	75 3d                	jne    get_pixel_VESA_105_branch_2
    6a8c:	31 d2                	xor    edx,edx
    6a8e:	0f bf 0d c4 7f 01 00 	movsx  ecx,WORD PTR ds:@obj3:VESA_writeable_window_position         ; fixup: num: 625, src obj: 1, src ofs: 0x6a91, dst obj: 3, dst ofs: 0x17fc4
    6a95:	66 8b 90 ca 7f 01 00 	mov    dx,WORD PTR [eax+@obj3:line_start_table_window_offsets]      ; fixup: num: 624, src obj: 1, src ofs: 0x6a98, dst obj: 3, dst ofs: 0x17fca
    6a9c:	39 d1                	cmp    ecx,edx
    6a9e:	74 16                	je     get_pixel_VESA_105_branch_1
    6aa0:	31 c0                	xor    eax,eax
    6aa2:	66 89 15 c4 7f 01 00 	mov    WORD PTR ds:@obj3:VESA_writeable_window_position,dx          ; fixup: num: 623, src obj: 1, src ofs: 0x6aa5, dst obj: 3, dst ofs: 0x17fc4
    6aa9:	a0 c1 7f 01 00       	mov    al,ds:@obj3:VESA_writeable_number                            ; fixup: num: 622, src obj: 1, src ofs: 0x6aaa, dst obj: 3, dst ofs: 0x17fc1
    6aae:	0f bf d2             	movsx  edx,dx
    6ab1:	e8 ea e3 ff ff       	call   select_super_VGA_video_memory_window
get_pixel_VESA_105_branch_1:
    6ab6:	8b 14 9d cc 87 01 00 	mov    edx,DWORD PTR [ebx*4+@obj3:line_start_table_offset_offsets]  ; fixup: num: 621, src obj: 1, src ofs: 0x6ab9, dst obj: 3, dst ofs: 0x187cc
    6abd:	a1 bc 7f 01 00       	mov    eax,ds:@obj3:VESA_writeable_window                           ; fixup: num: 620, src obj: 1, src ofs: 0x6abe, dst obj: 3, dst ofs: 0x17fbc
    6ac2:	01 d6                	add    esi,edx
    6ac4:	e9 7b 00 00 00       	jmp    get_pixel_VESA_105_branch_6
get_pixel_VESA_105_branch_2:
    6ac9:	39 d1                	cmp    ecx,edx
    6acb:	7d 3e                	jge    get_pixel_VESA_105_branch_4
    6acd:	31 d2                	xor    edx,edx
    6acf:	0f bf 0d c4 7f 01 00 	movsx  ecx,WORD PTR ds:@obj3:VESA_writeable_window_position         ; fixup: num: 619, src obj: 1, src ofs: 0x6ad2, dst obj: 3, dst ofs: 0x17fc4
    6ad6:	66 8b 90 ca 7f 01 00 	mov    dx,WORD PTR [eax+@obj3:line_start_table_window_offsets]      ; fixup: num: 618, src obj: 1, src ofs: 0x6ad9, dst obj: 3, dst ofs: 0x17fca
    6add:	39 d1                	cmp    ecx,edx
    6adf:	74 16                	je     get_pixel_VESA_105_branch_3
    6ae1:	31 c0                	xor    eax,eax
    6ae3:	66 89 15 c4 7f 01 00 	mov    WORD PTR ds:@obj3:VESA_writeable_window_position,dx          ; fixup: num: 617, src obj: 1, src ofs: 0x6ae6, dst obj: 3, dst ofs: 0x17fc4
    6aea:	a0 c1 7f 01 00       	mov    al,ds:@obj3:VESA_writeable_number                            ; fixup: num: 616, src obj: 1, src ofs: 0x6aeb, dst obj: 3, dst ofs: 0x17fc1
    6aef:	0f bf d2             	movsx  edx,dx
    6af2:	e8 a9 e3 ff ff       	call   select_super_VGA_video_memory_window
get_pixel_VESA_105_branch_3:
    6af7:	8b 04 9d cc 87 01 00 	mov    eax,DWORD PTR [ebx*4+@obj3:line_start_table_offset_offsets]  ; fixup: num: 615, src obj: 1, src ofs: 0x6afa, dst obj: 3, dst ofs: 0x187cc
    6afe:	8b 15 bc 7f 01 00    	mov    edx,DWORD PTR ds:@obj3:VESA_writeable_window                 ; fixup: num: 614, src obj: 1, src ofs: 0x6b00, dst obj: 3, dst ofs: 0x17fbc
    6b04:	01 f0                	add    eax,esi
    6b06:	8a 04 02             	mov    al,BYTE PTR [edx+eax*1]
    6b09:	eb 3c                	jmp    get_pixel_VESA_105_branch_7
get_pixel_VESA_105_branch_4:
    6b0b:	31 d2                	xor    edx,edx
    6b0d:	0f bf 0d c4 7f 01 00 	movsx  ecx,WORD PTR ds:@obj3:VESA_writeable_window_position         ; fixup: num: 613, src obj: 1, src ofs: 0x6b10, dst obj: 3, dst ofs: 0x17fc4
    6b14:	66 8b 90 cc 7f 01 00 	mov    dx,WORD PTR [eax+@obj3:line_start_table_window_offsets_variable_1]; fixup: num: 612, src obj: 1, src ofs: 0x6b17, dst obj: 3, dst ofs: 0x17fcc
    6b1b:	39 d1                	cmp    ecx,edx
    6b1d:	74 16                	je     get_pixel_VESA_105_branch_5
    6b1f:	31 c0                	xor    eax,eax
    6b21:	66 89 15 c4 7f 01 00 	mov    WORD PTR ds:@obj3:VESA_writeable_window_position,dx          ; fixup: num: 611, src obj: 1, src ofs: 0x6b24, dst obj: 3, dst ofs: 0x17fc4
    6b28:	a0 c1 7f 01 00       	mov    al,ds:@obj3:VESA_writeable_number                            ; fixup: num: 610, src obj: 1, src ofs: 0x6b29, dst obj: 3, dst ofs: 0x17fc1
    6b2d:	0f bf d2             	movsx  edx,dx
    6b30:	e8 6b e3 ff ff       	call   select_super_VGA_video_memory_window
get_pixel_VESA_105_branch_5:
    6b35:	0f bf 04 5d cc 97 01 00 	movsx  eax,WORD PTR [ebx*2+@obj3:line_start_table_split]         ; fixup: num: 628, src obj: 1, src ofs: 0x6b39, dst obj: 3, dst ofs: 0x197cc
    6b3d:	29 c6                	sub    esi,eax
    6b3f:	a1 bc 7f 01 00       	mov    eax,ds:@obj3:VESA_writeable_window                           ; fixup: num: 627, src obj: 1, src ofs: 0x6b40, dst obj: 3, dst ofs: 0x17fbc
get_pixel_VESA_105_branch_6:
    6b44:	8a 04 06             	mov    al,BYTE PTR [esi+eax*1]
get_pixel_VESA_105_branch_7:
    6b47:	25 ff 00 00 00       	and    eax,0xff
    6b4c:	5e                   	pop    esi
    6b4d:	59                   	pop    ecx
    6b4e:	5b                   	pop    ebx
    6b4f:	c3                   	ret    

;-------------------------------------------------
;  Function 'VESA_put_pixel'                     -
;-------------------------------------------------
VESA_put_pixel:
    6b50:	51                   	push   ecx
    6b51:	56                   	push   esi
    6b52:	57                   	push   edi
    6b53:	89 c1                	mov    ecx,eax
    6b55:	89 d6                	mov    esi,edx
    6b57:	8d 04 55 00 00 00 00 	lea    eax,[edx*2+0x0]
    6b5e:	0f bf 90 cc 97 01 00 	movsx  edx,WORD PTR [eax+@obj3:line_start_table_split]              ; fixup: num: 774, src obj: 1, src ofs: 0x6b61, dst obj: 3, dst ofs: 0x197cc
    6b65:	83 fa ff             	cmp    edx,0xffffffff
    6b68:	75 3d                	jne    VESA_put_pixel_branch_2
    6b6a:	31 d2                	xor    edx,edx
    6b6c:	0f bf 3d c4 7f 01 00 	movsx  edi,WORD PTR ds:@obj3:VESA_writeable_window_position         ; fixup: num: 773, src obj: 1, src ofs: 0x6b6f, dst obj: 3, dst ofs: 0x17fc4
    6b73:	66 8b 90 ca 7f 01 00 	mov    dx,WORD PTR [eax+@obj3:line_start_table_window_offsets]      ; fixup: num: 772, src obj: 1, src ofs: 0x6b76, dst obj: 3, dst ofs: 0x17fca
    6b7a:	39 d7                	cmp    edi,edx
    6b7c:	74 16                	je     VESA_put_pixel_branch_1
    6b7e:	31 c0                	xor    eax,eax
    6b80:	66 89 15 c4 7f 01 00 	mov    WORD PTR ds:@obj3:VESA_writeable_window_position,dx          ; fixup: num: 771, src obj: 1, src ofs: 0x6b83, dst obj: 3, dst ofs: 0x17fc4
    6b87:	a0 c1 7f 01 00       	mov    al,ds:@obj3:VESA_writeable_number                            ; fixup: num: 770, src obj: 1, src ofs: 0x6b88, dst obj: 3, dst ofs: 0x17fc1
    6b8c:	0f bf d2             	movsx  edx,dx
    6b8f:	e8 0c e3 ff ff       	call   select_super_VGA_video_memory_window
VESA_put_pixel_branch_1:
    6b94:	8b 3c b5 cc 87 01 00 	mov    edi,DWORD PTR [esi*4+@obj3:line_start_table_offset_offsets]  ; fixup: num: 769, src obj: 1, src ofs: 0x6b97, dst obj: 3, dst ofs: 0x187cc
    6b9b:	a1 bc 7f 01 00       	mov    eax,ds:@obj3:VESA_writeable_window                           ; fixup: num: 787, src obj: 1, src ofs: 0x6b9c, dst obj: 3, dst ofs: 0x17fbc
    6ba0:	01 f9                	add    ecx,edi
    6ba2:	e9 7c 00 00 00       	jmp    VESA_put_pixel_branch_6
VESA_put_pixel_branch_2:
    6ba7:	39 d1                	cmp    ecx,edx
    6ba9:	7d 3f                	jge    VESA_put_pixel_branch_4
    6bab:	31 ff                	xor    edi,edi
    6bad:	0f bf 15 c4 7f 01 00 	movsx  edx,WORD PTR ds:@obj3:VESA_writeable_window_position         ; fixup: num: 786, src obj: 1, src ofs: 0x6bb0, dst obj: 3, dst ofs: 0x17fc4
    6bb4:	66 8b b8 ca 7f 01 00 	mov    di,WORD PTR [eax+@obj3:line_start_table_window_offsets]      ; fixup: num: 785, src obj: 1, src ofs: 0x6bb7, dst obj: 3, dst ofs: 0x17fca
    6bbb:	39 fa                	cmp    edx,edi
    6bbd:	74 16                	je     VESA_put_pixel_branch_3
    6bbf:	31 c0                	xor    eax,eax
    6bc1:	0f bf d7             	movsx  edx,di
    6bc4:	a0 c1 7f 01 00       	mov    al,ds:@obj3:VESA_writeable_number                            ; fixup: num: 784, src obj: 1, src ofs: 0x6bc5, dst obj: 3, dst ofs: 0x17fc1
    6bc9:	66 89 3d c4 7f 01 00 	mov    WORD PTR ds:@obj3:VESA_writeable_window_position,di          ; fixup: num: 783, src obj: 1, src ofs: 0x6bcc, dst obj: 3, dst ofs: 0x17fc4
    6bd0:	e8 cb e2 ff ff       	call   select_super_VGA_video_memory_window
VESA_put_pixel_branch_3:
    6bd5:	8b 14 b5 cc 87 01 00 	mov    edx,DWORD PTR [esi*4+@obj3:line_start_table_offset_offsets]  ; fixup: num: 782, src obj: 1, src ofs: 0x6bd8, dst obj: 3, dst ofs: 0x187cc
    6bdc:	a1 bc 7f 01 00       	mov    eax,ds:@obj3:VESA_writeable_window                           ; fixup: num: 781, src obj: 1, src ofs: 0x6bdd, dst obj: 3, dst ofs: 0x17fbc
    6be1:	01 d1                	add    ecx,edx
    6be3:	88 1c 01             	mov    BYTE PTR [ecx+eax*1],bl
    6be6:	5f                   	pop    edi
    6be7:	5e                   	pop    esi
    6be8:	59                   	pop    ecx
    6be9:	c3                   	ret    
VESA_put_pixel_branch_4:
    6bea:	31 d2                	xor    edx,edx
    6bec:	0f bf 3d c4 7f 01 00 	movsx  edi,WORD PTR ds:@obj3:VESA_writeable_window_position         ; fixup: num: 780, src obj: 1, src ofs: 0x6bef, dst obj: 3, dst ofs: 0x17fc4
    6bf3:	66 8b 90 cc 7f 01 00 	mov    dx,WORD PTR [eax+@obj3:line_start_table_window_offsets_variable_1]; fixup: num: 779, src obj: 1, src ofs: 0x6bf6, dst obj: 3, dst ofs: 0x17fcc
    6bfa:	39 d7                	cmp    edi,edx
    6bfc:	74 16                	je     VESA_put_pixel_branch_5
    6bfe:	31 c0                	xor    eax,eax
    6c00:	66 89 15 c4 7f 01 00 	mov    WORD PTR ds:@obj3:VESA_writeable_window_position,dx          ; fixup: num: 778, src obj: 1, src ofs: 0x6c03, dst obj: 3, dst ofs: 0x17fc4
    6c07:	a0 c1 7f 01 00       	mov    al,ds:@obj3:VESA_writeable_number                            ; fixup: num: 777, src obj: 1, src ofs: 0x6c08, dst obj: 3, dst ofs: 0x17fc1
    6c0c:	0f bf d2             	movsx  edx,dx
    6c0f:	e8 8c e2 ff ff       	call   select_super_VGA_video_memory_window
VESA_put_pixel_branch_5:
    6c14:	0f bf 04 75 cc 97 01 00 	movsx  eax,WORD PTR [esi*2+@obj3:line_start_table_split]         ; fixup: num: 776, src obj: 1, src ofs: 0x6c18, dst obj: 3, dst ofs: 0x197cc
    6c1c:	29 c1                	sub    ecx,eax
    6c1e:	a1 bc 7f 01 00       	mov    eax,ds:@obj3:VESA_writeable_window                           ; fixup: num: 775, src obj: 1, src ofs: 0x6c1f, dst obj: 3, dst ofs: 0x17fbc
VESA_put_pixel_branch_6:
    6c23:	88 1c 01             	mov    BYTE PTR [ecx+eax*1],bl
    6c26:	5f                   	pop    edi
    6c27:	5e                   	pop    esi
    6c28:	59                   	pop    ecx
    6c29:	c3                   	ret    
;-------------------------------------------------
;  Bad code 6 (zero after ret):                  -
;-------------------------------------------------
;   6c28:	59                   	pop    ecx
;   6c29:	c3                   	ret    
;   6c2a:	00 00                	add    BYTE PTR [eax],al
;   6c2c:	00 00                	add    BYTE PTR [eax],al
;-------------------------------------------------
;  Padding data (6 bytes):                       -
;-------------------------------------------------
    6c2a:	00 00 00 00 00 00    	db     6 dup(0x00)
;-------------------------------------------------
;  End of bad code 6                             -
;-------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 4 (D:\SOURCE\vesamode.cpp)                                    -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 4: D:\SOURCE\vesamode.cpp                                            -
;                                                                              -
;-------------------------------------------------------------------------------
vesamode_cpp_variable_1:
     564:	4e 6f 20 56 45 53 41 20 64 72 69 76 65 72 20 64 65 74 65 63 74 65 64 2e 00 	db     "No VESA driver detected.",0x00
vesamode_cpp_variable_2:
     57d:	55 6e 61 62 6c 65 20 74 6f 20 67 65 74 20 6d 6f 64 65 20 69 6e 66 6f 72 6d 61 74 69 6f 6e 20 66 6f 72 20 73 65 6c 65 63 74 65 64 20 56 45 53 41 20 6d 6f 64 65 2e 00 	db     "Unable to get mode information for selected VESA mode.",0x00
vesamode_cpp_variable_3:
     5b4:	44 65 73 69 72 65 64 20 56 45 53 41 20 6d 6f 64 65 20 61 76 61 69 6c 61 62 6c 65 20 62 75 74 20 6e 6f 74 20 73 75 70 70 6f 72 74 65 64 20 62 79 20 63 75 72 72 65 6e 74 20 68 61 72 64 77 61 72 65 00 	db     "Desired VESA mode available but not supported by current hardware",0x00
vesamode_cpp_variable_4:
     5f6:	44 65 73 69 72 65 64 20 6d 6f 64 65 20 69 73 20 61 20 6d 6f 6e 6f 63 68 72 6f 6d 65 20 6d 6f 64 65 2e 20 4d 75 73 74 20 62 65 20 32 35 36 20 63 6f 6c 6f 72 00 	db     "Desired mode is a monochrome mode. Must be 256 color",0x00
vesamode_cpp_variable_5:
     62b:	52 65 61 64 61 62 6c 65 20 6f 72 20 57 72 69 74 65 61 62 6c 65 20 77 69 6e 64 6f 77 20 69 73 20 4e 55 4c 4c 00 	db     "Readable or Writeable window is NULL",0x00
vesamode_cpp_variable_6:
     650:	55 6e 61 62 6c 65 20 74 6f 20 73 65 74 20 56 45 53 41 5f 4d 4f 44 45 2e 00 	db     "Unable to set VESA_MODE.",0x00
vesamode_cpp_variable_7:
     669:	55 6e 61 62 6c 65 20 74 6f 20 73 65 74 20 72 65 61 64 61 62 6c 65 20 6d 65 6d 6f 72 79 20 77 69 6e 64 6f 77 00 	db     "Unable to set readable memory window",0x00
vesamode_cpp_variable_8:
     68e:	55 6e 61 62 6c 65 20 74 6f 20 73 65 74 20 77 72 69 74 65 61 62 6c 65 20 6d 65 6d 6f 72 79 20 77 69 6e 64 6f 77 00 	db     "Unable to set writeable memory window",0x00

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 4 (D:\SOURCE\vesamode.cpp)                                    -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 4: D:\SOURCE\vesamode.cpp                                            -
;                                                                              -
;-------------------------------------------------------------------------------
mode_VESA_100:
   12bb4:	80                   	db     0x80                                                         ; dec: 128, chr: ''
   12bb5:	02                   	db     0x02                                                         ; dec:   2, chr: ''
   12bb6:	00 00                	db     2 dup(0x00)                                                  ; dec:   0, chr: '\0'
   12bb8:	90                   	db     0x90                                                         ; dec: 144, chr: ''
   12bb9:	01                   	db     0x01                                                         ; dec:   1, chr: ''
   12bba:	00 00                	db     2 dup(0x00)                                                  ; dec:   0, chr: '\0'
   12bbc:	08                   	db     0x08                                                         ; dec:   8, chr: '\b'
   12bbd:	01                   	db     0x01                                                         ; dec:   1, chr: ''
   12bbe:	00 00                	db     2 dup(0x00)                                                  ; dec:   0, chr: '\0'
   12bc0:	a0 5f 00 00          	dd     @obj1:detect_VESA_100                                        ; fixup: num: 21372, src obj: 3, src ofs: 0x12bc0, dst obj: 1, dst ofs: 0x5fa0
   12bc4:	d0 5f 00 00          	dd     @obj1:initialize_VESA_100                                    ; fixup: num: 21371, src obj: 3, src ofs: 0x12bc4, dst obj: 1, dst ofs: 0x5fd0
   12bc8:	e0 5f 00 00          	dd     @obj1:deinitialize_VESA_103                                  ; aliases: deinitialize_VESA_103, deinitialize_VESA_101, deinitialize_VESA_100; fixup: num: 21370, src obj: 3, src ofs: 0x12bc8, dst obj: 1, dst ofs: 0x5fe0
   12bcc:	f0 5f 00 00          	dd     @obj1:set_active_page_VESA_100                               ; fixup: num: 21369, src obj: 3, src ofs: 0x12bcc, dst obj: 1, dst ofs: 0x5ff0
   12bd0:	10 60 00 00          	dd     @obj1:set_visable_page_VESA_100                              ; fixup: num: 21368, src obj: 3, src ofs: 0x12bd0, dst obj: 1, dst ofs: 0x6010
   12bd4:	60 60 00 00          	dd     @obj1:set_pixel_VESA_100                                     ; fixup: num: 21367, src obj: 3, src ofs: 0x12bd4, dst obj: 1, dst ofs: 0x6060
   12bd8:	60 61 00 00          	dd     @obj1:get_pixel_VESA_100                                     ; fixup: num: 21366, src obj: 3, src ofs: 0x12bd8, dst obj: 1, dst ofs: 0x6160
   12bdc:	40 5b 00 00          	dd     @obj1:box_VESA_105                                           ; aliases: box_VESA_105, line_VESA_105, box_VESA_103, line_VESA_103, box_VESA_101, line_VESA_101, box_VESA_100, line_VESA_100; fixup: num: 21383, src obj: 3, src ofs: 0x12bdc, dst obj: 1, dst ofs: 0x5b40
   12be0:	40 5b 00 00          	dd     @obj1:box_VESA_105                                           ; aliases: box_VESA_105, line_VESA_105, box_VESA_103, line_VESA_103, box_VESA_101, line_VESA_101, box_VESA_100, line_VESA_100; fixup: num: 21382, src obj: 3, src ofs: 0x12be0, dst obj: 1, dst ofs: 0x5b40
   12be4:	50 5b 00 00          	dd     @obj1:VESA_blit                                              ; fixup: num: 21381, src obj: 3, src ofs: 0x12be4, dst obj: 1, dst ofs: 0x5b50
   12be8:	00 00 00 00 00 00 .. 	db     8 dup(0x00)                                                  ; dec:   0, chr: '\0'
   12bf0:	00 4f 00 00          	dd     @obj1:VESA_bank_switch                                       ; fixup: num: 21380, src obj: 3, src ofs: 0x12bf0, dst obj: 1, dst ofs: 0x4f00
mode_VESA_101:
   12bf4:	80                   	db     0x80                                                         ; dec: 128, chr: ''
   12bf5:	02                   	db     0x02                                                         ; dec:   2, chr: ''
   12bf6:	00 00                	db     2 dup(0x00)                                                  ; dec:   0, chr: '\0'
   12bf8:	e0                   	db     0xe0                                                         ; dec: 224, chr: ''
   12bf9:	01                   	db     0x01                                                         ; dec:   1, chr: ''
   12bfa:	00 00                	db     2 dup(0x00)                                                  ; dec:   0, chr: '\0'
   12bfc:	08                   	db     0x08                                                         ; dec:   8, chr: '\b'
   12bfd:	01                   	db     0x01                                                         ; dec:   1, chr: ''
   12bfe:	00 00                	db     2 dup(0x00)                                                  ; dec:   0, chr: '\0'
   12c00:	40 62 00 00          	dd     @obj1:detect_VESA_101                                        ; fixup: num: 21379, src obj: 3, src ofs: 0x12c00, dst obj: 1, dst ofs: 0x6240
   12c04:	70 62 00 00          	dd     @obj1:initialize_VESA_101                                    ; fixup: num: 21378, src obj: 3, src ofs: 0x12c04, dst obj: 1, dst ofs: 0x6270
   12c08:	e0 5f 00 00          	dd     @obj1:deinitialize_VESA_103                                  ; aliases: deinitialize_VESA_103, deinitialize_VESA_101, deinitialize_VESA_100; fixup: num: 21377, src obj: 3, src ofs: 0x12c08, dst obj: 1, dst ofs: 0x5fe0
   12c0c:	a0 62 00 00          	dd     @obj1:set_active_page_VESA_101                               ; fixup: num: 21376, src obj: 3, src ofs: 0x12c0c, dst obj: 1, dst ofs: 0x62a0
   12c10:	c0 62 00 00          	dd     @obj1:set_visable_page_VESA_101                              ; fixup: num: 21375, src obj: 3, src ofs: 0x12c10, dst obj: 1, dst ofs: 0x62c0
   12c14:	10 63 00 00          	dd     @obj1:set_pixel_VESA_101                                     ; fixup: num: 21374, src obj: 3, src ofs: 0x12c14, dst obj: 1, dst ofs: 0x6310
   12c18:	10 64 00 00          	dd     @obj1:get_pixel_VESA_101                                     ; fixup: num: 21373, src obj: 3, src ofs: 0x12c18, dst obj: 1, dst ofs: 0x6410
   12c1c:	40 5b 00 00          	dd     @obj1:box_VESA_105                                           ; aliases: box_VESA_105, line_VESA_105, box_VESA_103, line_VESA_103, box_VESA_101, line_VESA_101, box_VESA_100, line_VESA_100; fixup: num: 21393, src obj: 3, src ofs: 0x12c1c, dst obj: 1, dst ofs: 0x5b40
   12c20:	40 5b 00 00          	dd     @obj1:box_VESA_105                                           ; aliases: box_VESA_105, line_VESA_105, box_VESA_103, line_VESA_103, box_VESA_101, line_VESA_101, box_VESA_100, line_VESA_100; fixup: num: 21392, src obj: 3, src ofs: 0x12c20, dst obj: 1, dst ofs: 0x5b40
   12c24:	50 5b 00 00          	dd     @obj1:VESA_blit                                              ; fixup: num: 21391, src obj: 3, src ofs: 0x12c24, dst obj: 1, dst ofs: 0x5b50
mode_VESA_101_variable_1:                                                                           ; access size: DWORD
   12c28:	00 00 00 00          	dd     0x00000000
mode_VESA_101_variable_2:                                                                           ; access size: DWORD
   12c2c:	00 00 00 00          	dd     0x00000000
   12c30:	00 4f 00 00          	dd     @obj1:VESA_bank_switch                                       ; fixup: num: 21390, src obj: 3, src ofs: 0x12c30, dst obj: 1, dst ofs: 0x4f00
mode_VESA_103:
   12c34:	20                   	db     0x20                                                         ; dec:  32, chr: ' '
   12c35:	03                   	db     0x03                                                         ; dec:   3, chr: ''
   12c36:	00 00                	db     2 dup(0x00)                                                  ; dec:   0, chr: '\0'
   12c38:	58                   	db     0x58                                                         ; dec:  88, chr: 'X'
   12c39:	02                   	db     0x02                                                         ; dec:   2, chr: ''
   12c3a:	00 00                	db     2 dup(0x00)                                                  ; dec:   0, chr: '\0'
   12c3c:	08                   	db     0x08                                                         ; dec:   8, chr: '\b'
   12c3d:	01                   	db     0x01                                                         ; dec:   1, chr: ''
   12c3e:	00 00                	db     2 dup(0x00)                                                  ; dec:   0, chr: '\0'
   12c40:	f0 64 00 00          	dd     @obj1:detect_VESA_103                                        ; fixup: num: 21389, src obj: 3, src ofs: 0x12c40, dst obj: 1, dst ofs: 0x64f0
   12c44:	10 65 00 00          	dd     @obj1:initialize_VESA_103                                    ; fixup: num: 21388, src obj: 3, src ofs: 0x12c44, dst obj: 1, dst ofs: 0x6510
   12c48:	e0 5f 00 00          	dd     @obj1:deinitialize_VESA_103                                  ; aliases: deinitialize_VESA_103, deinitialize_VESA_101, deinitialize_VESA_100; fixup: num: 21387, src obj: 3, src ofs: 0x12c48, dst obj: 1, dst ofs: 0x5fe0
   12c4c:	00 65 00 00          	dd     @obj1:set_active_page_VESA_103                               ; fixup: num: 21386, src obj: 3, src ofs: 0x12c4c, dst obj: 1, dst ofs: 0x6500
   12c50:	30 65 00 00          	dd     @obj1:set_visable_page_VESA_103                              ; fixup: num: 21385, src obj: 3, src ofs: 0x12c50, dst obj: 1, dst ofs: 0x6530
   12c54:	80 65 00 00          	dd     @obj1:set_pixel_VESA_103                                     ; fixup: num: 21384, src obj: 3, src ofs: 0x12c54, dst obj: 1, dst ofs: 0x6580
   12c58:	80 66 00 00          	dd     @obj1:get_pixel_VESA_103                                     ; fixup: num: 21403, src obj: 3, src ofs: 0x12c58, dst obj: 1, dst ofs: 0x6680
   12c5c:	40 5b 00 00          	dd     @obj1:box_VESA_105                                           ; aliases: box_VESA_105, line_VESA_105, box_VESA_103, line_VESA_103, box_VESA_101, line_VESA_101, box_VESA_100, line_VESA_100; fixup: num: 21402, src obj: 3, src ofs: 0x12c5c, dst obj: 1, dst ofs: 0x5b40
   12c60:	40 5b 00 00          	dd     @obj1:box_VESA_105                                           ; aliases: box_VESA_105, line_VESA_105, box_VESA_103, line_VESA_103, box_VESA_101, line_VESA_101, box_VESA_100, line_VESA_100; fixup: num: 21401, src obj: 3, src ofs: 0x12c60, dst obj: 1, dst ofs: 0x5b40
   12c64:	50 5b 00 00          	dd     @obj1:VESA_blit                                              ; fixup: num: 21400, src obj: 3, src ofs: 0x12c64, dst obj: 1, dst ofs: 0x5b50
   12c68:	00 00 00 00 00 00 .. 	db     8 dup(0x00)                                                  ; dec:   0, chr: '\0'
   12c70:	00 4f 00 00          	dd     @obj1:VESA_bank_switch                                       ; fixup: num: 21399, src obj: 3, src ofs: 0x12c70, dst obj: 1, dst ofs: 0x4f00
mode_VESA_105:
   12c74:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
   12c75:	04                   	db     0x04                                                         ; dec:   4, chr: ''
   12c76:	00 00 00             	db     3 dup(0x00)                                                  ; dec:   0, chr: '\0'
   12c79:	03                   	db     0x03                                                         ; dec:   3, chr: ''
   12c7a:	00 00                	db     2 dup(0x00)                                                  ; dec:   0, chr: '\0'
   12c7c:	08                   	db     0x08                                                         ; dec:   8, chr: '\b'
   12c7d:	01                   	db     0x01                                                         ; dec:   1, chr: ''
   12c7e:	00 00                	db     2 dup(0x00)                                                  ; dec:   0, chr: '\0'
   12c80:	60 67 00 00          	dd     @obj1:detect_VESA_105                                        ; fixup: num: 21398, src obj: 3, src ofs: 0x12c80, dst obj: 1, dst ofs: 0x6760
   12c84:	a0 67 00 00          	dd     @obj1:initialize_VESA_105                                    ; fixup: num: 21397, src obj: 3, src ofs: 0x12c84, dst obj: 1, dst ofs: 0x67a0
   12c88:	d0 68 00 00          	dd     @obj1:deinitialize_VESA_105                                  ; fixup: num: 21396, src obj: 3, src ofs: 0x12c88, dst obj: 1, dst ofs: 0x68d0
   12c8c:	00 69 00 00          	dd     @obj1:set_active_page_VESA_105                               ; fixup: num: 21395, src obj: 3, src ofs: 0x12c8c, dst obj: 1, dst ofs: 0x6900
   12c90:	20 69 00 00          	dd     @obj1:set_visable_page_VESA_105                              ; fixup: num: 21394, src obj: 3, src ofs: 0x12c90, dst obj: 1, dst ofs: 0x6920
   12c94:	70 69 00 00          	dd     @obj1:set_pixel_VESA_105                                     ; fixup: num: 21409, src obj: 3, src ofs: 0x12c94, dst obj: 1, dst ofs: 0x6970
   12c98:	70 6a 00 00          	dd     @obj1:get_pixel_VESA_105                                     ; fixup: num: 21408, src obj: 3, src ofs: 0x12c98, dst obj: 1, dst ofs: 0x6a70
   12c9c:	40 5b 00 00          	dd     @obj1:box_VESA_105                                           ; aliases: box_VESA_105, line_VESA_105, box_VESA_103, line_VESA_103, box_VESA_101, line_VESA_101, box_VESA_100, line_VESA_100; fixup: num: 21407, src obj: 3, src ofs: 0x12c9c, dst obj: 1, dst ofs: 0x5b40
   12ca0:	40 5b 00 00          	dd     @obj1:box_VESA_105                                           ; aliases: box_VESA_105, line_VESA_105, box_VESA_103, line_VESA_103, box_VESA_101, line_VESA_101, box_VESA_100, line_VESA_100; fixup: num: 21406, src obj: 3, src ofs: 0x12ca0, dst obj: 1, dst ofs: 0x5b40
   12ca4:	50 5b 00 00          	dd     @obj1:VESA_blit                                              ; fixup: num: 21405, src obj: 3, src ofs: 0x12ca4, dst obj: 1, dst ofs: 0x5b50
   12ca8:	00 00 00 00 00 00 .. 	db     8 dup(0x00)                                                  ; dec:   0, chr: '\0'
   12cb0:	00 4f 00 00          	dd     @obj1:VESA_bank_switch                                       ; fixup: num: 21404, src obj: 3, src ofs: 0x12cb0, dst obj: 1, dst ofs: 0x4f00

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 4 (D:\SOURCE\vesamode.cpp)                                    -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 4: D:\SOURCE\vesamode.cpp                                            -
;                                                                              -
;-------------------------------------------------------------------------------
been_here:                                                                                          ; access size: BYTE
   17e90:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
detected:                                                                                           ; access size: BYTE
   17e91:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
detected_mod_4:                                                                                     ; access size: BYTE
   17e92:	00 00                	db     2 dup(0x00)                                                  ; dec:   0, chr: '\0'
VESA_info_block:
   17e94:	00 00 00 00 00 00 .. 	db     14 dup(0x00)                                                 ; dec:   0, chr: '\0'
VESA_info_block_variable_1:                                                                         ; access size: DWORD
   17ea2:	00 00 00 00 00 00 .. 	dd     60 dup(0x00000000)
   17f92:	00 00                	db     2 dup(0x00)                                                  ; dec:   0, chr: '\0'
VESA_mode_info_block:                                                                               ; access size: WORD
   17f94:	00 00                	dw     0x0000
VESA_mode_info_block_variable_1:                                                                    ; access size: BYTE
   17f96:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
VESA_mode_info_block_variable_2:                                                                    ; access size: BYTE
   17f97:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
VESA_mode_info_block_variable_3:                                                                    ; access size: WORD
   17f98:	00 00                	dw     0x0000
VESA_mode_info_block_variable_4:                                                                    ; access size: WORD
   17f9a:	00 00                	dw     0x0000
VESA_mode_info_block_variable_5:                                                                    ; access size: WORD
   17f9c:	00 00                	dw     0x0000
VESA_mode_info_block_variable_6:                                                                    ; access size: WORD
   17f9e:	00 00 00 00 00 00    	dw     3 dup(0x0000)
VESA_mode_info_block_variable_7:                                                                    ; access size: WORD
   17fa4:	00 00 00 00 00 00 .. 	dw     7 dup(0x0000)
VESA_window_granularity:                                                                            ; access size: WORD
   17fb2:	00 00                	dw     0x0000
VESA_window_size:                                                                                   ; access size: WORD
   17fb4:	00 00                	dw     0x0000
VESA_bytes_per_scan_line:                                                                           ; access size: WORD
   17fb6:	00 00                	dw     0x0000
VESA_readable_window:                                                                               ; access size: DWORD
   17fb8:	00 00 00 00          	dd     0x00000000
VESA_writeable_window:                                                                              ; access size: DWORD
   17fbc:	00 00 00 00          	dd     0x00000000
VESA_readable_number:                                                                               ; access size: BYTE
   17fc0:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
VESA_writeable_number:                                                                              ; access size: BYTE
   17fc1:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
VESA_readable_window_position:                                                                      ; access size: WORD
   17fc2:	00 00                	dw     0x0000
VESA_writeable_window_position:                                                                     ; access size: WORD
   17fc4:	00 00                	dw     0x0000
VESA_horizontal_resolution:                                                                         ; access size: WORD
   17fc6:	00 00                	dw     0x0000
VESA_vertical_resolution:                                                                           ; access size: WORD
   17fc8:	00 00                	dw     0x0000
line_start_table_window_offsets:                                                                    ; access size: WORDS
   17fca:	00 00                	dw     0x0000
line_start_table_window_offsets_variable_1:                                                         ; access size: WORDS
   17fcc:	00 00 00 00 00 00 .. 	dw     1024 dup(0x0000)
line_start_table_offset_offsets:                                                                    ; access size: DWORDS
   187cc:	00 00 00 00 00 00 .. 	dd     1024 dup(0x00000000)
line_start_table_split:                                                                             ; access size: WORDS
   197cc:	00 00                	dw     0x0000
line_start_table_split_variable_1:                                                                  ; access size: WORDS
   197ce:	00 00                	dw     0x0000
line_start_table_split_variable_2:                                                                  ; access size: WORDS
   197d0:	00 00                	dw     0x0000
line_start_table_split_variable_3:                                                                  ; access size: WORDS
   197d2:	00 00 00 00 00 00 .. 	dw     681 dup(0x0000)
line_start_table_split_variable_4:                                                                  ; access size: BYTES
   19d24:	00 00 00 00 00 00 .. 	db     680 dup(0x00)                                                ; dec:   0, chr: '\0'
window_size:                                                                                        ; access size: DWORD
   19fcc:	00 00                	db     2 dup(0x00)                                                  ; dec:   0, chr: '\0'
window_size_variable_1:                                                                             ; access size: WORDS
   19fce:	00 00                	dw     0x0000
switch_table:                                                                                       ; access size: WORD
   19fd0:	00 00 00 00 00 00 .. 	dw     200 dup(0x0000)

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 4 (D:\SOURCE\vesamode.cpp)                                    -
;                                                                              -
;-------------------------------------------------------------------------------