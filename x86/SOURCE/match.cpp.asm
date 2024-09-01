;-------------------------------------------------------------------------------
;                                                                              -
;  Module 6: D:\SOURCE\match.cpp                                               -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function 'is_pattern'                         -
;-------------------------------------------------
is_pattern:
    6e50:	52                   	push   edx
    6e51:	89 c2                	mov    edx,eax
    6e53:	80 38 00             	cmp    BYTE PTR [eax],0x0
    6e56:	75 08                	jne    is_pattern_branch_2
    6e58:	30 c0                	xor    al,al
    6e5a:	5a                   	pop    edx
    6e5b:	c3                   	ret    
is_pattern_branch_1:
    6e5c:	b0 01                	mov    al,0x1
    6e5e:	5a                   	pop    edx
    6e5f:	c3                   	ret    
is_pattern_branch_2:
    6e60:	8a 02                	mov    al,BYTE PTR [edx]
    6e62:	42                   	inc    edx
    6e63:	3c 3f                	cmp    al,0x3f
    6e65:	72 0c                	jb     is_pattern_branch_3
    6e67:	76 f3                	jbe    is_pattern_branch_1
    6e69:	3c 5b                	cmp    al,0x5b
    6e6b:	72 0a                	jb     is_pattern_branch_4
    6e6d:	3c 5c                	cmp    al,0x5c
    6e6f:	76 eb                	jbe    is_pattern_branch_1
    6e71:	eb 04                	jmp    is_pattern_branch_4
is_pattern_branch_3:
    6e73:	3c 2a                	cmp    al,0x2a
    6e75:	74 e5                	je     is_pattern_branch_1
is_pattern_branch_4:
    6e77:	80 3a 00             	cmp    BYTE PTR [edx],0x0
    6e7a:	75 e4                	jne    is_pattern_branch_2
    6e7c:	30 c0                	xor    al,al
    6e7e:	5a                   	pop    edx
    6e7f:	c3                   	ret    

;-------------------------------------------------
;  Function 'is_valid_pattern'                   -
;-------------------------------------------------
is_valid_pattern:
    6e80:	53                   	push   ebx
    6e81:	51                   	push   ecx
    6e82:	89 d1                	mov    ecx,edx
    6e84:	c7 02 00 00 00 00    	mov    DWORD PTR [edx],0x0
    6e8a:	80 38 00             	cmp    BYTE PTR [eax],0x0
    6e8d:	0f 85 ba 00 00 00    	jne    is_valid_pattern_branch_15
is_valid_pattern_branch_1:
    6e93:	b0 01                	mov    al,0x1
    6e95:	59                   	pop    ecx
    6e96:	5b                   	pop    ebx
    6e97:	c3                   	ret    
is_valid_pattern_branch_2:
    6e98:	8a 03                	mov    al,BYTE PTR [ebx]
    6e9a:	84 c0                	test   al,al
    6e9c:	75 09                	jne    is_valid_pattern_branch_3
    6e9e:	c7 01 ff ff ff ff    	mov    DWORD PTR [ecx],0xffffffff
    6ea4:	59                   	pop    ecx
    6ea5:	5b                   	pop    ebx
    6ea6:	c3                   	ret    
is_valid_pattern_branch_3:
    6ea7:	8d 43 01             	lea    eax,[ebx+0x1]
    6eaa:	e9 95 00 00 00       	jmp    is_valid_pattern_branch_14
is_valid_pattern_branch_4:
    6eaf:	8a 13                	mov    dl,BYTE PTR [ebx]
    6eb1:	89 d8                	mov    eax,ebx
    6eb3:	80 fa 5d             	cmp    dl,0x5d
    6eb6:	75 0b                	jne    is_valid_pattern_branch_5
    6eb8:	c7 01 fc ff ff ff    	mov    DWORD PTR [ecx],0xfffffffc
    6ebe:	30 d8                	xor    al,bl
    6ec0:	59                   	pop    ecx
    6ec1:	5b                   	pop    ebx
    6ec2:	c3                   	ret    
is_valid_pattern_branch_5:
    6ec3:	84 d2                	test   dl,dl
    6ec5:	75 0b                	jne    is_valid_pattern_branch_6
    6ec7:	c7 01 fd ff ff ff    	mov    DWORD PTR [ecx],0xfffffffd
    6ecd:	30 d8                	xor    al,bl
    6ecf:	59                   	pop    ecx
    6ed0:	5b                   	pop    ebx
    6ed1:	c3                   	ret    
is_valid_pattern_branch_6:
    6ed2:	8a 18                	mov    bl,BYTE PTR [eax]
    6ed4:	80 fb 5d             	cmp    bl,0x5d
    6ed7:	0f 84 67 00 00 00    	je     is_valid_pattern_branch_14
    6edd:	8d 50 01             	lea    edx,[eax+0x1]
    6ee0:	80 fb 5c             	cmp    bl,0x5c
    6ee3:	75 14                	jne    is_valid_pattern_branch_7
    6ee5:	8a 1a                	mov    bl,BYTE PTR [edx]
    6ee7:	8d 42 01             	lea    eax,[edx+0x1]
    6eea:	84 db                	test   bl,bl
    6eec:	75 0d                	jne    is_valid_pattern_branch_8
    6eee:	c7 01 ff ff ff ff    	mov    DWORD PTR [ecx],0xffffffff
    6ef4:	30 c0                	xor    al,al
    6ef6:	59                   	pop    ecx
    6ef7:	5b                   	pop    ebx
    6ef8:	c3                   	ret    
is_valid_pattern_branch_7:
    6ef9:	89 d0                	mov    eax,edx
is_valid_pattern_branch_8:
    6efb:	8a 38                	mov    bh,BYTE PTR [eax]
    6efd:	84 ff                	test   bh,bh
    6eff:	75 0b                	jne    is_valid_pattern_branch_9
    6f01:	c7 01 fd ff ff ff    	mov    DWORD PTR [ecx],0xfffffffd
    6f07:	30 c0                	xor    al,al
    6f09:	59                   	pop    ecx
    6f0a:	5b                   	pop    ebx
    6f0b:	c3                   	ret    
is_valid_pattern_branch_9:
    6f0c:	80 ff 2d             	cmp    bh,0x2d
    6f0f:	75 c1                	jne    is_valid_pattern_branch_6
    6f11:	8a 70 01             	mov    dh,BYTE PTR [eax+0x1]
    6f14:	40                   	inc    eax
    6f15:	84 f6                	test   dh,dh
    6f17:	74 05                	je     is_valid_pattern_branch_10
    6f19:	80 fe 5d             	cmp    dh,0x5d
    6f1c:	75 0b                	jne    is_valid_pattern_branch_11
is_valid_pattern_branch_10:
    6f1e:	c7 01 fe ff ff ff    	mov    DWORD PTR [ecx],0xfffffffe
    6f24:	30 c0                	xor    al,al
    6f26:	59                   	pop    ecx
    6f27:	5b                   	pop    ebx
    6f28:	c3                   	ret    
is_valid_pattern_branch_11:
    6f29:	80 fe 5c             	cmp    dh,0x5c
    6f2c:	75 01                	jne    is_valid_pattern_branch_12
    6f2e:	40                   	inc    eax
is_valid_pattern_branch_12:
    6f2f:	89 c2                	mov    edx,eax
    6f31:	8a 1a                	mov    bl,BYTE PTR [edx]
    6f33:	40                   	inc    eax
    6f34:	84 db                	test   bl,bl
    6f36:	75 9a                	jne    is_valid_pattern_branch_6
    6f38:	c7 01 ff ff ff ff    	mov    DWORD PTR [ecx],0xffffffff
    6f3e:	30 c0                	xor    al,al
    6f40:	59                   	pop    ecx
    6f41:	5b                   	pop    ebx
    6f42:	c3                   	ret    
is_valid_pattern_branch_13:
    6f43:	40                   	inc    eax
is_valid_pattern_branch_14:
    6f44:	80 38 00             	cmp    BYTE PTR [eax],0x0
    6f47:	0f 84 46 ff ff ff    	je     is_valid_pattern_branch_1
is_valid_pattern_branch_15:
    6f4d:	8a 10                	mov    dl,BYTE PTR [eax]
    6f4f:	80 fa 3f             	cmp    dl,0x3f
    6f52:	72 ef                	jb     is_valid_pattern_branch_13
    6f54:	76 ed                	jbe    is_valid_pattern_branch_13
    6f56:	80 fa 5b             	cmp    dl,0x5b
    6f59:	72 e8                	jb     is_valid_pattern_branch_13
    6f5b:	8d 58 01             	lea    ebx,[eax+0x1]
    6f5e:	0f 86 4b ff ff ff    	jbe    is_valid_pattern_branch_4
    6f64:	80 fa 5c             	cmp    dl,0x5c
    6f67:	0f 84 2b ff ff ff    	je     is_valid_pattern_branch_2
    6f6d:	eb d4                	jmp    is_valid_pattern_branch_13
    6f6f:	90                   	nop

;-------------------------------------------------
;  Function 'matche'                             -
;-------------------------------------------------
matche:
    6f70:	53                   	push   ebx
    6f71:	51                   	push   ecx
    6f72:	83 ec 08             	sub    esp,0x8
    6f75:	89 d3                	mov    ebx,edx
    6f77:	80 38 00             	cmp    BYTE PTR [eax],0x0
    6f7a:	75 12                	jne    matche_branch_2
    6f7c:	e9 c4 01 00 00       	jmp    matche_branch_30
matche_branch_1:
    6f81:	8a 48 01             	mov    cl,BYTE PTR [eax+0x1]
    6f84:	40                   	inc    eax
    6f85:	43                   	inc    ebx
    6f86:	84 c9                	test   cl,cl
    6f88:	0f 84 b7 01 00 00    	je     matche_branch_30
matche_branch_2:
    6f8e:	8a 33                	mov    dh,BYTE PTR [ebx]
    6f90:	8d 48 01             	lea    ecx,[eax+0x1]
    6f93:	84 f6                	test   dh,dh
    6f95:	0f 85 80 01 00 00    	jne    matche_branch_28
    6f9b:	80 38 2a             	cmp    BYTE PTR [eax],0x2a
    6f9e:	75 09                	jne    matche_branch_3
    6fa0:	80 39 00             	cmp    BYTE PTR [ecx],0x0
    6fa3:	0f 84 ac 01 00 00    	je     matche_branch_31
matche_branch_3:
    6fa9:	b8 03 00 00 00       	mov    eax,0x3
    6fae:	83 c4 08             	add    esp,0x8
    6fb1:	59                   	pop    ecx
    6fb2:	5b                   	pop    ebx
    6fb3:	c3                   	ret    
matche_branch_4:
    6fb4:	89 da                	mov    edx,ebx
    6fb6:	e8 a5 01 00 00       	call   matche_after_star
    6fbb:	83 c4 08             	add    esp,0x8
    6fbe:	59                   	pop    ecx
    6fbf:	5b                   	pop    ebx
    6fc0:	c3                   	ret    
matche_branch_5:
    6fc1:	30 f6                	xor    dh,dh
    6fc3:	88 34 24             	mov    BYTE PTR [esp],dh
    6fc6:	8a 11                	mov    dl,BYTE PTR [ecx]
    6fc8:	89 c8                	mov    eax,ecx
    6fca:	80 fa 21             	cmp    dl,0x21
    6fcd:	74 05                	je     matche_branch_6
    6fcf:	80 fa 5e             	cmp    dl,0x5e
    6fd2:	75 06                	jne    matche_branch_7
matche_branch_6:
    6fd4:	b1 01                	mov    cl,0x1
    6fd6:	40                   	inc    eax
    6fd7:	88 0c 24             	mov    BYTE PTR [esp],cl
matche_branch_7:
    6fda:	80 38 5d             	cmp    BYTE PTR [eax],0x5d
    6fdd:	75 0b                	jne    matche_branch_8
    6fdf:	b8 06 00 00 00       	mov    eax,0x6
    6fe4:	83 c4 08             	add    esp,0x8
    6fe7:	59                   	pop    ecx
    6fe8:	5b                   	pop    ebx
    6fe9:	c3                   	ret    
matche_branch_8:
    6fea:	30 d2                	xor    dl,dl
    6fec:	b1 01                	mov    cl,0x1
    6fee:	88 54 24 04          	mov    BYTE PTR [esp+0x4],dl
matche_branch_9:
    6ff2:	8a 28                	mov    ch,BYTE PTR [eax]
    6ff4:	80 fd 5d             	cmp    ch,0x5d
    6ff7:	75 07                	jne    matche_branch_10
    6ff9:	30 c9                	xor    cl,cl
    6ffb:	e9 84 00 00 00       	jmp    matche_branch_19
matche_branch_10:
    7000:	80 fd 5c             	cmp    ch,0x5c
    7003:	75 08                	jne    matche_branch_11
    7005:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
    7008:	40                   	inc    eax
    7009:	88 d6                	mov    dh,dl
    700b:	eb 04                	jmp    matche_branch_12
matche_branch_11:
    700d:	88 ea                	mov    dl,ch
    700f:	88 ee                	mov    dh,ch
matche_branch_12:
    7011:	80 38 00             	cmp    BYTE PTR [eax],0x0
    7014:	75 0b                	jne    matche_branch_13
    7016:	b8 06 00 00 00       	mov    eax,0x6
    701b:	83 c4 08             	add    esp,0x8
    701e:	59                   	pop    ecx
    701f:	5b                   	pop    ebx
    7020:	c3                   	ret    
matche_branch_13:
    7021:	8a 68 01             	mov    ch,BYTE PTR [eax+0x1]
    7024:	40                   	inc    eax
    7025:	80 fd 2d             	cmp    ch,0x2d
    7028:	75 31                	jne    matche_branch_17
    702a:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
    702d:	40                   	inc    eax
    702e:	84 d2                	test   dl,dl
    7030:	74 05                	je     matche_branch_14
    7032:	80 fa 5d             	cmp    dl,0x5d
    7035:	75 0b                	jne    matche_branch_15
matche_branch_14:
    7037:	b8 06 00 00 00       	mov    eax,0x6
    703c:	83 c4 08             	add    esp,0x8
    703f:	59                   	pop    ecx
    7040:	5b                   	pop    ebx
    7041:	c3                   	ret    
matche_branch_15:
    7042:	80 fa 5c             	cmp    dl,0x5c
    7045:	75 13                	jne    matche_branch_16
    7047:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
    704a:	40                   	inc    eax
    704b:	84 d2                	test   dl,dl
    704d:	75 0b                	jne    matche_branch_16
    704f:	b8 06 00 00 00       	mov    eax,0x6
    7054:	83 c4 08             	add    esp,0x8
    7057:	59                   	pop    ecx
    7058:	5b                   	pop    ebx
    7059:	c3                   	ret    
matche_branch_16:
    705a:	40                   	inc    eax
matche_branch_17:
    705b:	38 d6                	cmp    dh,dl
    705d:	73 13                	jae    matche_branch_18
    705f:	8a 2b                	mov    ch,BYTE PTR [ebx]
    7061:	38 ee                	cmp    dh,ch
    7063:	77 1f                	ja     matche_branch_19
    7065:	38 ea                	cmp    dl,ch
    7067:	72 1b                	jb     matche_branch_19
    7069:	c6 44 24 04 01       	mov    BYTE PTR [esp+0x4],0x1
    706e:	30 c9                	xor    cl,cl
    7070:	eb 12                	jmp    matche_branch_19
matche_branch_18:
    7072:	8a 2b                	mov    ch,BYTE PTR [ebx]
    7074:	38 ea                	cmp    dl,ch
    7076:	77 0c                	ja     matche_branch_19
    7078:	38 ee                	cmp    dh,ch
    707a:	72 08                	jb     matche_branch_19
    707c:	b6 01                	mov    dh,0x1
    707e:	30 c9                	xor    cl,cl
    7080:	88 74 24 04          	mov    BYTE PTR [esp+0x4],dh
matche_branch_19:
    7084:	84 c9                	test   cl,cl
    7086:	0f 85 66 ff ff ff    	jne    matche_branch_9
    708c:	80 3c 24 00          	cmp    BYTE PTR [esp],0x0
    7090:	74 07                	je     matche_branch_20
    7092:	80 7c 24 04 00       	cmp    BYTE PTR [esp+0x4],0x0
    7097:	75 0d                	jne    matche_branch_21
matche_branch_20:
    7099:	80 3c 24 00          	cmp    BYTE PTR [esp],0x0
    709d:	75 12                	jne    matche_branch_22
    709f:	80 7c 24 04 00       	cmp    BYTE PTR [esp+0x4],0x0
    70a4:	75 0b                	jne    matche_branch_22
matche_branch_21:
    70a6:	b8 04 00 00 00       	mov    eax,0x4
    70ab:	83 c4 08             	add    esp,0x8
    70ae:	59                   	pop    ecx
    70af:	5b                   	pop    ebx
    70b0:	c3                   	ret    
matche_branch_22:
    70b1:	80 7c 24 04 00       	cmp    BYTE PTR [esp+0x4],0x0
    70b6:	0f 84 c5 fe ff ff    	je     matche_branch_1
    70bc:	30 d2                	xor    dl,dl
matche_branch_23:
    70be:	8a 30                	mov    dh,BYTE PTR [eax]
    70c0:	80 fe 5d             	cmp    dh,0x5d
    70c3:	0f 84 b8 fe ff ff    	je     matche_branch_1
    70c9:	38 f2                	cmp    dl,dh
    70cb:	75 0b                	jne    matche_branch_24
    70cd:	b8 06 00 00 00       	mov    eax,0x6
    70d2:	83 c4 08             	add    esp,0x8
    70d5:	59                   	pop    ecx
    70d6:	5b                   	pop    ebx
    70d7:	c3                   	ret    
matche_branch_24:
    70d8:	80 fe 5c             	cmp    dh,0x5c
    70db:	75 13                	jne    matche_branch_25
    70dd:	8a 70 01             	mov    dh,BYTE PTR [eax+0x1]
    70e0:	40                   	inc    eax
    70e1:	38 f2                	cmp    dl,dh
    70e3:	75 0b                	jne    matche_branch_25
    70e5:	b8 06 00 00 00       	mov    eax,0x6
    70ea:	83 c4 08             	add    esp,0x8
    70ed:	59                   	pop    ecx
    70ee:	5b                   	pop    ebx
    70ef:	c3                   	ret    
matche_branch_25:
    70f0:	40                   	inc    eax
    70f1:	eb cb                	jmp    matche_branch_23
matche_branch_26:
    70f3:	8a 11                	mov    dl,BYTE PTR [ecx]
    70f5:	89 c8                	mov    eax,ecx
    70f7:	84 d2                	test   dl,dl
    70f9:	75 0b                	jne    matche_branch_27
    70fb:	b8 06 00 00 00       	mov    eax,0x6
    7100:	83 c4 08             	add    esp,0x8
    7103:	59                   	pop    ecx
    7104:	5b                   	pop    ebx
    7105:	c3                   	ret    
matche_branch_27:
    7106:	8a 10                	mov    dl,BYTE PTR [eax]
    7108:	3a 13                	cmp    dl,BYTE PTR [ebx]
    710a:	0f 84 71 fe ff ff    	je     matche_branch_1
    7110:	b8 05 00 00 00       	mov    eax,0x5
    7115:	83 c4 08             	add    esp,0x8
    7118:	59                   	pop    ecx
    7119:	5b                   	pop    ebx
    711a:	c3                   	ret    
matche_branch_28:
    711b:	8a 10                	mov    dl,BYTE PTR [eax]
    711d:	80 fa 3f             	cmp    dl,0x3f
    7120:	72 18                	jb     matche_branch_29
    7122:	0f 86 59 fe ff ff    	jbe    matche_branch_1
    7128:	80 fa 5b             	cmp    dl,0x5b
    712b:	72 d9                	jb     matche_branch_27
    712d:	0f 86 8e fe ff ff    	jbe    matche_branch_5
    7133:	80 fa 5c             	cmp    dl,0x5c
    7136:	74 bb                	je     matche_branch_26
    7138:	eb cc                	jmp    matche_branch_27
matche_branch_29:
    713a:	80 fa 2a             	cmp    dl,0x2a
    713d:	0f 84 71 fe ff ff    	je     matche_branch_4
    7143:	eb c1                	jmp    matche_branch_27
matche_branch_30:
    7145:	80 3b 00             	cmp    BYTE PTR [ebx],0x0
    7148:	74 0b                	je     matche_branch_31
    714a:	b8 02 00 00 00       	mov    eax,0x2
    714f:	83 c4 08             	add    esp,0x8
    7152:	59                   	pop    ecx
    7153:	5b                   	pop    ebx
    7154:	c3                   	ret    
matche_branch_31:
    7155:	b8 01 00 00 00       	mov    eax,0x1
    715a:	83 c4 08             	add    esp,0x8
    715d:	59                   	pop    ecx
    715e:	5b                   	pop    ebx
    715f:	c3                   	ret    

;-------------------------------------------------
;  Function 'matche_after_star'                  -
;-------------------------------------------------
matche_after_star:
    7160:	53                   	push   ebx
    7161:	51                   	push   ecx
    7162:	56                   	push   esi
    7163:	57                   	push   edi
    7164:	89 c1                	mov    ecx,eax
    7166:	89 d3                	mov    ebx,edx
    7168:	31 c0                	xor    eax,eax
    716a:	b2 3f                	mov    dl,0x3f
matche_after_star_branch_1:
    716c:	8a 31                	mov    dh,BYTE PTR [ecx]
    716e:	38 f2                	cmp    dl,dh
    7170:	74 05                	je     matche_after_star_branch_2
    7172:	80 fe 2a             	cmp    dh,0x2a
    7175:	75 1a                	jne    matche_after_star_branch_4
matche_after_star_branch_2:
    7177:	3a 11                	cmp    dl,BYTE PTR [ecx]
    7179:	75 13                	jne    matche_after_star_branch_3
    717b:	89 de                	mov    esi,ebx
    717d:	8a 36                	mov    dh,BYTE PTR [esi]
    717f:	43                   	inc    ebx
    7180:	84 f6                	test   dh,dh
    7182:	75 0a                	jne    matche_after_star_branch_3
    7184:	b8 03 00 00 00       	mov    eax,0x3
    7189:	5f                   	pop    edi
    718a:	5e                   	pop    esi
    718b:	59                   	pop    ecx
    718c:	5b                   	pop    ebx
    718d:	c3                   	ret    
matche_after_star_branch_3:
    718e:	41                   	inc    ecx
    718f:	eb db                	jmp    matche_after_star_branch_1
matche_after_star_branch_4:
    7191:	84 f6                	test   dh,dh
    7193:	75 0a                	jne    matche_after_star_branch_5
    7195:	b8 01 00 00 00       	mov    eax,0x1
    719a:	5f                   	pop    edi
    719b:	5e                   	pop    esi
    719c:	59                   	pop    ecx
    719d:	5b                   	pop    ebx
    719e:	c3                   	ret    
matche_after_star_branch_5:
    719f:	0f b6 f6             	movzx  esi,dh
    71a2:	83 fe 5c             	cmp    esi,0x5c
    71a5:	75 12                	jne    matche_after_star_branch_6
    71a7:	0f b6 71 01          	movzx  esi,BYTE PTR [ecx+0x1]
    71ab:	85 f6                	test   esi,esi
    71ad:	75 0a                	jne    matche_after_star_branch_6
    71af:	b8 06 00 00 00       	mov    eax,0x6
    71b4:	5f                   	pop    edi
    71b5:	5e                   	pop    esi
    71b6:	59                   	pop    ecx
    71b7:	5b                   	pop    ebx
    71b8:	c3                   	ret    
matche_after_star_branch_6:
    71b9:	0f b6 3b             	movzx  edi,BYTE PTR [ebx]
    71bc:	39 fe                	cmp    esi,edi
    71be:	74 05                	je     matche_after_star_branch_7
    71c0:	83 fe 5b             	cmp    esi,0x5b
    71c3:	75 09                	jne    matche_after_star_branch_8
matche_after_star_branch_7:
    71c5:	89 da                	mov    edx,ebx
    71c7:	89 c8                	mov    eax,ecx
    71c9:	e8 a2 fd ff ff       	call   matche
matche_after_star_branch_8:
    71ce:	89 df                	mov    edi,ebx
    71d0:	8a 17                	mov    dl,BYTE PTR [edi]
    71d2:	43                   	inc    ebx
    71d3:	84 d2                	test   dl,dl
    71d5:	75 05                	jne    matche_after_star_branch_9
    71d7:	b8 03 00 00 00       	mov    eax,0x3
matche_after_star_branch_9:
    71dc:	83 f8 01             	cmp    eax,0x1
    71df:	74 0a                	je     matche_after_star_branch_10
    71e1:	83 f8 03             	cmp    eax,0x3
    71e4:	74 05                	je     matche_after_star_branch_10
    71e6:	83 f8 06             	cmp    eax,0x6
    71e9:	75 ce                	jne    matche_after_star_branch_6
matche_after_star_branch_10:
    71eb:	5f                   	pop    edi
    71ec:	5e                   	pop    esi
    71ed:	59                   	pop    ecx
    71ee:	5b                   	pop    ebx
    71ef:	c3                   	ret    

;-------------------------------------------------
;  Function 'match'                              -
;-------------------------------------------------
match:
    71f0:	e8 7b fd ff ff       	call   matche
    71f5:	83 f8 01             	cmp    eax,0x1
    71f8:	0f 94 c0             	sete   al
    71fb:	25 ff 00 00 00       	and    eax,0xff
    7200:	c3                   	ret    
;-------------------------------------------------
;  Bad code 8 (zero after ret):                  -
;-------------------------------------------------
;   71fb:	25 ff 00 00 00       	and    eax,0xff
;   7200:	c3                   	ret    
;   7201:	00 00                	add    BYTE PTR [eax],al
;   7203:	00 00                	add    BYTE PTR [eax],al
;-------------------------------------------------
;  Padding data (15 bytes):                      -
;-------------------------------------------------
    7201:	00 00 00 00 00 00 .. 	db     15 dup(0x00)
;-------------------------------------------------
;  End of bad code 8                             -
;-------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 6 (D:\SOURCE\match.cpp)                                       -
;                                                                              -
;-------------------------------------------------------------------------------