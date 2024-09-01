;-------------------------------------------------------------------------------
;                                                                              -
;  Module 78: D:\SOURCE\textmenu.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function 'W?$ct:text_menu$n(pnpna)_'          -
;-------------------------------------------------
W?$ct:text_menu$n(pnpna)_:
   48e90:	e8 0b 07 00 00       	call   W?$ct:text_box$n()_
   48e95:	c7 80 1c 01 00 00 00 00 00 00 	mov    DWORD PTR [eax+0x11c],0x0
   48e9f:	89 90 18 01 00 00    	mov    DWORD PTR [eax+0x118],edx
   48ea5:	c3                   	ret    
   48ea6:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   48eac:	8d 54 22 00          	lea    edx,[edx+eiz*1+0x0]

;-------------------------------------------------
;  Function 'W?$ct:text_menu$n(pnapnpnaucucucuc  -
;  ucucucucucucucucucucucuc)_'                   -
;-------------------------------------------------
W?$ct:text_menu$n(pnapnpnaucucucucucucucucucucucucucucucuc)_:
   48eb0:	56                   	push   esi
   48eb1:	57                   	push   edi
   48eb2:	89 de                	mov    esi,ebx
   48eb4:	31 db                	xor    ebx,ebx
   48eb6:	8a 5c 24 3c          	mov    bl,BYTE PTR [esp+0x3c]
   48eba:	53                   	push   ebx
   48ebb:	31 db                	xor    ebx,ebx
   48ebd:	8a 5c 24 3c          	mov    bl,BYTE PTR [esp+0x3c]
   48ec1:	53                   	push   ebx
   48ec2:	31 db                	xor    ebx,ebx
   48ec4:	8a 5c 24 3c          	mov    bl,BYTE PTR [esp+0x3c]
   48ec8:	53                   	push   ebx
   48ec9:	31 db                	xor    ebx,ebx
   48ecb:	8a 5c 24 3c          	mov    bl,BYTE PTR [esp+0x3c]
   48ecf:	53                   	push   ebx
   48ed0:	31 db                	xor    ebx,ebx
   48ed2:	8a 5c 24 3c          	mov    bl,BYTE PTR [esp+0x3c]
   48ed6:	53                   	push   ebx
   48ed7:	31 db                	xor    ebx,ebx
   48ed9:	8a 5c 24 3c          	mov    bl,BYTE PTR [esp+0x3c]
   48edd:	53                   	push   ebx
   48ede:	31 db                	xor    ebx,ebx
   48ee0:	8a 5c 24 3c          	mov    bl,BYTE PTR [esp+0x3c]
   48ee4:	53                   	push   ebx
   48ee5:	31 db                	xor    ebx,ebx
   48ee7:	8a 5c 24 3c          	mov    bl,BYTE PTR [esp+0x3c]
   48eeb:	53                   	push   ebx
   48eec:	31 db                	xor    ebx,ebx
   48eee:	8a 5c 24 3c          	mov    bl,BYTE PTR [esp+0x3c]
   48ef2:	53                   	push   ebx
   48ef3:	31 db                	xor    ebx,ebx
   48ef5:	8a 5c 24 3c          	mov    bl,BYTE PTR [esp+0x3c]
   48ef9:	53                   	push   ebx
   48efa:	31 db                	xor    ebx,ebx
   48efc:	8a 5c 24 3c          	mov    bl,BYTE PTR [esp+0x3c]
   48f00:	53                   	push   ebx
   48f01:	31 db                	xor    ebx,ebx
   48f03:	8a 5c 24 3c          	mov    bl,BYTE PTR [esp+0x3c]
   48f07:	53                   	push   ebx
   48f08:	31 db                	xor    ebx,ebx
   48f0a:	0f b6 7c 24 3c       	movzx  edi,BYTE PTR [esp+0x3c]
   48f0f:	88 cb                	mov    bl,cl
   48f11:	89 f9                	mov    ecx,edi
   48f13:	e8 f8 06 00 00       	call   W?$ct:text_box$n(pnaucucucucucucucucucucucucucuc)_
   48f18:	c7 80 1c 01 00 00 00 00 00 00 	mov    DWORD PTR [eax+0x11c],0x0
   48f22:	8a 54 24 40          	mov    dl,BYTE PTR [esp+0x40]
   48f26:	89 b0 18 01 00 00    	mov    DWORD PTR [eax+0x118],esi
   48f2c:	88 90 24 01 00 00    	mov    BYTE PTR [eax+0x124],dl
   48f32:	8a 54 24 44          	mov    dl,BYTE PTR [esp+0x44]
   48f36:	88 90 25 01 00 00    	mov    BYTE PTR [eax+0x125],dl
   48f3c:	5f                   	pop    edi
   48f3d:	5e                   	pop    esi
   48f3e:	c2 3c 00             	ret    0x3c
   48f41:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   48f47:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
   48f4d:	8d 40 00             	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'show_mod_78'                        -
;-------------------------------------------------
show_mod_78:
   48f50:	53                   	push   ebx
   48f51:	51                   	push   ecx
   48f52:	52                   	push   edx
   48f53:	56                   	push   esi
   48f54:	57                   	push   edi
   48f55:	83 ec 04             	sub    esp,0x4
   48f58:	89 c6                	mov    esi,eax
   48f5a:	8b b8 18 01 00 00    	mov    edi,DWORD PTR [eax+0x118]
   48f60:	31 d2                	xor    edx,edx
   48f62:	8b 3f                	mov    edi,DWORD PTR [edi]
   48f64:	89 14 24             	mov    DWORD PTR [esp],edx
   48f67:	29 c9                	sub    ecx,ecx
   48f69:	49                   	dec    ecx
   48f6a:	31 c0                	xor    eax,eax
   48f6c:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
   48f6e:	f7 d1                	not    ecx
   48f70:	49                   	dec    ecx
   48f71:	89 cb                	mov    ebx,ecx
show_mod_78_branch_1:
   48f73:	8b 86 18 01 00 00    	mov    eax,DWORD PTR [esi+0x118]
   48f79:	8b 3c 02             	mov    edi,DWORD PTR [edx+eax*1]
   48f7c:	29 c9                	sub    ecx,ecx
   48f7e:	49                   	dec    ecx
   48f7f:	31 c0                	xor    eax,eax
   48f81:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
   48f83:	f7 d1                	not    ecx
   48f85:	49                   	dec    ecx
   48f86:	39 cb                	cmp    ebx,ecx
   48f88:	73 15                	jae    show_mod_78_branch_2
   48f8a:	8b 86 18 01 00 00    	mov    eax,DWORD PTR [esi+0x118]
   48f90:	8b 3c 02             	mov    edi,DWORD PTR [edx+eax*1]
   48f93:	29 c9                	sub    ecx,ecx
   48f95:	49                   	dec    ecx
   48f96:	31 c0                	xor    eax,eax
   48f98:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
   48f9a:	f7 d1                	not    ecx
   48f9c:	49                   	dec    ecx
   48f9d:	89 cb                	mov    ebx,ecx
show_mod_78_branch_2:
   48f9f:	8b 0c 24             	mov    ecx,DWORD PTR [esp]
   48fa2:	83 c2 04             	add    edx,0x4
   48fa5:	8b 86 18 01 00 00    	mov    eax,DWORD PTR [esi+0x118]
   48fab:	41                   	inc    ecx
   48fac:	8b 3c 02             	mov    edi,DWORD PTR [edx+eax*1]
   48faf:	89 0c 24             	mov    DWORD PTR [esp],ecx
   48fb2:	85 ff                	test   edi,edi
   48fb4:	75 bd                	jne    show_mod_78_branch_1
   48fb6:	8d 41 ff             	lea    eax,[ecx-0x1]
   48fb9:	89 86 20 01 00 00    	mov    DWORD PTR [esi+0x120],eax
   48fbf:	8a 06                	mov    al,BYTE PTR [esi]
   48fc1:	00 d8                	add    al,bl
   48fc3:	fe c0                	inc    al
   48fc5:	88 46 02             	mov    BYTE PTR [esi+0x2],al
   48fc8:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   48fcb:	02 04 24             	add    al,BYTE PTR [esp]
   48fce:	fe c0                	inc    al
   48fd0:	88 46 03             	mov    BYTE PTR [esi+0x3],al
   48fd3:	89 f0                	mov    eax,esi
   48fd5:	e8 06 09 00 00       	call   save_background
   48fda:	89 f0                	mov    eax,esi
   48fdc:	31 c9                	xor    ecx,ecx
   48fde:	e8 ad 08 00 00       	call   erase
   48fe3:	89 f0                	mov    eax,esi
   48fe5:	89 3c 24             	mov    DWORD PTR [esp],edi
   48fe8:	e8 33 07 00 00       	call   display
show_mod_78_branch_3:
   48fed:	31 d2                	xor    edx,edx
   48fef:	8b 04 24             	mov    eax,DWORD PTR [esp]
   48ff2:	8a 56 01             	mov    dl,BYTE PTR [esi+0x1]
   48ff5:	8b 9e 18 01 00 00    	mov    ebx,DWORD PTR [esi+0x118]
   48ffb:	01 c2                	add    edx,eax
   48ffd:	31 c0                	xor    eax,eax
   48fff:	8b 1c 19             	mov    ebx,DWORD PTR [ecx+ebx*1]
   49002:	8a 06                	mov    al,BYTE PTR [esi]
   49004:	42                   	inc    edx
   49005:	40                   	inc    eax
   49006:	83 c1 04             	add    ecx,0x4
   49009:	e8 82 04 00 00       	call   text_puts
   4900e:	8b 14 24             	mov    edx,DWORD PTR [esp]
   49011:	8b 86 18 01 00 00    	mov    eax,DWORD PTR [esi+0x118]
   49017:	42                   	inc    edx
   49018:	8b 1c 01             	mov    ebx,DWORD PTR [ecx+eax*1]
   4901b:	89 14 24             	mov    DWORD PTR [esp],edx
   4901e:	85 db                	test   ebx,ebx
   49020:	75 cb                	jne    show_mod_78_branch_3
   49022:	31 c0                	xor    eax,eax
   49024:	8a 86 25 01 00 00    	mov    al,BYTE PTR [esi+0x125]
   4902a:	50                   	push   eax
   4902b:	31 c0                	xor    eax,eax
   4902d:	8a 86 24 01 00 00    	mov    al,BYTE PTR [esi+0x124]
   49033:	50                   	push   eax
   49034:	31 c0                	xor    eax,eax
   49036:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   49039:	8b 96 1c 01 00 00    	mov    edx,DWORD PTR [esi+0x11c]
   4903f:	40                   	inc    eax
   49040:	8a 5e 02             	mov    bl,BYTE PTR [esi+0x2]
   49043:	01 c2                	add    edx,eax
   49045:	31 c0                	xor    eax,eax
   49047:	4b                   	dec    ebx
   49048:	8a 06                	mov    al,BYTE PTR [esi]
   4904a:	89 d1                	mov    ecx,edx
   4904c:	40                   	inc    eax
   4904d:	e8 9e 04 00 00       	call   text_color
   49052:	83 c4 04             	add    esp,0x4
   49055:	5f                   	pop    edi
   49056:	5e                   	pop    esi
   49057:	5a                   	pop    edx
   49058:	59                   	pop    ecx
   49059:	5b                   	pop    ebx
   4905a:	c3                   	ret    
   4905b:	8d 40 00             	lea    eax,[eax+0x0]
   4905e:	8b c9                	mov    ecx,ecx

;-------------------------------------------------
;  Function 'hide_mod_78'                        -
;-------------------------------------------------
hide_mod_78:
   49060:	e9 7b 09 00 00       	jmp    restore_background
   49065:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   4906b:	8d 52 00             	lea    edx,[edx+0x0]
   4906e:	8b db                	mov    ebx,ebx

;-------------------------------------------------
;  Function 'parse'                              -
;-------------------------------------------------
parse:
   49070:	53                   	push   ebx
   49071:	51                   	push   ecx
   49072:	52                   	push   edx
   49073:	56                   	push   esi
   49074:	57                   	push   edi
   49075:	55                   	push   ebp
   49076:	89 c6                	mov    esi,eax
   49078:	31 ed                	xor    ebp,ebp
parse_branch_1:
   4907a:	e8 39 8e 02 00       	call   kbhit_
   4907f:	85 c0                	test   eax,eax
   49081:	74 f7                	je     parse_branch_1
   49083:	e8 e0 d4 02 00       	call   getch_
   49088:	89 c7                	mov    edi,eax
   4908a:	85 c0                	test   eax,eax
   4908c:	0f 85 07 00 00 00    	jne    parse_branch_2
   49092:	e8 d1 d4 02 00       	call   getch_
   49097:	89 c7                	mov    edi,eax
parse_branch_2:
   49099:	31 c0                	xor    eax,eax
   4909b:	8a 86 08 01 00 00    	mov    al,BYTE PTR [esi+0x108]
   490a1:	50                   	push   eax
   490a2:	31 c0                	xor    eax,eax
   490a4:	8a 86 09 01 00 00    	mov    al,BYTE PTR [esi+0x109]
   490aa:	50                   	push   eax
   490ab:	31 c0                	xor    eax,eax
   490ad:	8b 96 1c 01 00 00    	mov    edx,DWORD PTR [esi+0x11c]
   490b3:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   490b6:	31 db                	xor    ebx,ebx
   490b8:	40                   	inc    eax
   490b9:	8a 5e 02             	mov    bl,BYTE PTR [esi+0x2]
   490bc:	01 c2                	add    edx,eax
   490be:	31 c0                	xor    eax,eax
   490c0:	4b                   	dec    ebx
   490c1:	8a 06                	mov    al,BYTE PTR [esi]
   490c3:	89 d1                	mov    ecx,edx
   490c5:	40                   	inc    eax
   490c6:	e8 25 04 00 00       	call   text_color
   490cb:	83 ff 48             	cmp    edi,0x48
   490ce:	0f 82 e9 00 00 00    	jb     parse_branch_8
   490d4:	76 13                	jbe    parse_branch_3
   490d6:	83 ff 4d             	cmp    edi,0x4d
   490d9:	0f 82 d3 00 00 00    	jb     parse_branch_7
   490df:	76 2e                	jbe    parse_branch_4
   490e1:	83 ff 50             	cmp    edi,0x50
   490e4:	e9 e9 00 00 00       	jmp    parse_branch_10
parse_branch_3:
   490e9:	8b 96 1c 01 00 00    	mov    edx,DWORD PTR [esi+0x11c]
   490ef:	4a                   	dec    edx
   490f0:	89 96 1c 01 00 00    	mov    DWORD PTR [esi+0x11c],edx
   490f6:	39 d5                	cmp    ebp,edx
   490f8:	0f 8e da 00 00 00    	jle    parse_branch_11
   490fe:	8b 86 20 01 00 00    	mov    eax,DWORD PTR [esi+0x120]
   49104:	89 86 1c 01 00 00    	mov    DWORD PTR [esi+0x11c],eax
   4910a:	e9 c9 00 00 00       	jmp    parse_branch_11
parse_branch_4:
   4910f:	8b be 1c 01 00 00    	mov    edi,DWORD PTR [esi+0x11c]
   49115:	47                   	inc    edi
   49116:	8b 96 20 01 00 00    	mov    edx,DWORD PTR [esi+0x120]
   4911c:	89 be 1c 01 00 00    	mov    DWORD PTR [esi+0x11c],edi
   49122:	39 d7                	cmp    edi,edx
   49124:	0f 8e ae 00 00 00    	jle    parse_branch_11
   4912a:	89 ae 1c 01 00 00    	mov    DWORD PTR [esi+0x11c],ebp
   49130:	e9 a3 00 00 00       	jmp    parse_branch_11
parse_branch_5:
   49135:	31 c0                	xor    eax,eax
   49137:	8a 86 25 01 00 00    	mov    al,BYTE PTR [esi+0x125]
   4913d:	50                   	push   eax
   4913e:	31 c0                	xor    eax,eax
   49140:	8a 86 24 01 00 00    	mov    al,BYTE PTR [esi+0x124]
   49146:	50                   	push   eax
   49147:	31 c0                	xor    eax,eax
   49149:	8b 96 1c 01 00 00    	mov    edx,DWORD PTR [esi+0x11c]
   4914f:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   49152:	31 db                	xor    ebx,ebx
   49154:	40                   	inc    eax
   49155:	8a 5e 02             	mov    bl,BYTE PTR [esi+0x2]
   49158:	01 c2                	add    edx,eax
   4915a:	31 c0                	xor    eax,eax
   4915c:	4b                   	dec    ebx
   4915d:	8a 06                	mov    al,BYTE PTR [esi]
   4915f:	89 d1                	mov    ecx,edx
   49161:	40                   	inc    eax
   49162:	e8 89 03 00 00       	call   text_color
   49167:	8b 86 1c 01 00 00    	mov    eax,DWORD PTR [esi+0x11c]
   4916d:	5d                   	pop    ebp
   4916e:	5f                   	pop    edi
   4916f:	5e                   	pop    esi
   49170:	5a                   	pop    edx
   49171:	59                   	pop    ecx
   49172:	5b                   	pop    ebx
   49173:	c3                   	ret    
parse_branch_6:
   49174:	8b 8e 1c 01 00 00    	mov    ecx,DWORD PTR [esi+0x11c]
   4917a:	31 c0                	xor    eax,eax
   4917c:	31 d2                	xor    edx,edx
   4917e:	31 db                	xor    ebx,ebx
   49180:	8a 86 25 01 00 00    	mov    al,BYTE PTR [esi+0x125]
   49186:	8a 56 01             	mov    dl,BYTE PTR [esi+0x1]
   49189:	8a 5e 02             	mov    bl,BYTE PTR [esi+0x2]
   4918c:	50                   	push   eax
   4918d:	31 c0                	xor    eax,eax
   4918f:	42                   	inc    edx
   49190:	8a 86 24 01 00 00    	mov    al,BYTE PTR [esi+0x124]
   49196:	4b                   	dec    ebx
   49197:	50                   	push   eax
   49198:	31 c0                	xor    eax,eax
   4919a:	01 ca                	add    edx,ecx
   4919c:	8a 06                	mov    al,BYTE PTR [esi]
   4919e:	89 d1                	mov    ecx,edx
   491a0:	40                   	inc    eax
   491a1:	e8 4a 03 00 00       	call   text_color
   491a6:	b8 ff ff ff ff       	mov    eax,0xffffffff
   491ab:	5d                   	pop    ebp
   491ac:	5f                   	pop    edi
   491ad:	5e                   	pop    esi
   491ae:	5a                   	pop    edx
   491af:	59                   	pop    ecx
   491b0:	5b                   	pop    ebx
   491b1:	c3                   	ret    
parse_branch_7:
   491b2:	83 ff 4b             	cmp    edi,0x4b
   491b5:	0f 84 2e ff ff ff    	je     parse_branch_3
   491bb:	eb 1b                	jmp    parse_branch_11
parse_branch_8:
   491bd:	83 ff 0d             	cmp    edi,0xd
   491c0:	72 0d                	jb     parse_branch_9
   491c2:	0f 86 6d ff ff ff    	jbe    parse_branch_5
   491c8:	83 ff 1b             	cmp    edi,0x1b
   491cb:	74 a7                	je     parse_branch_6
   491cd:	eb 09                	jmp    parse_branch_11
parse_branch_9:
   491cf:	83 ff 09             	cmp    edi,0x9
parse_branch_10:
   491d2:	0f 84 37 ff ff ff    	je     parse_branch_4
parse_branch_11:
   491d8:	8b 9e 1c 01 00 00    	mov    ebx,DWORD PTR [esi+0x11c]
   491de:	31 d2                	xor    edx,edx
   491e0:	31 c0                	xor    eax,eax
   491e2:	8a 56 01             	mov    dl,BYTE PTR [esi+0x1]
   491e5:	8a 86 25 01 00 00    	mov    al,BYTE PTR [esi+0x125]
   491eb:	42                   	inc    edx
   491ec:	50                   	push   eax
   491ed:	01 da                	add    edx,ebx
   491ef:	31 c0                	xor    eax,eax
   491f1:	89 d1                	mov    ecx,edx
   491f3:	8a 86 24 01 00 00    	mov    al,BYTE PTR [esi+0x124]
   491f9:	31 db                	xor    ebx,ebx
   491fb:	50                   	push   eax
   491fc:	31 c0                	xor    eax,eax
   491fe:	8a 5e 02             	mov    bl,BYTE PTR [esi+0x2]
   49201:	8a 06                	mov    al,BYTE PTR [esi]
   49203:	4b                   	dec    ebx
   49204:	40                   	inc    eax
   49205:	e8 e6 02 00 00       	call   text_color
   4920a:	e9 6b fe ff ff       	jmp    parse_branch_1
   4920f:	90                   	nop

;-------------------------------------------------
;  Function 'update_mod_78'                      -
;-------------------------------------------------
update_mod_78:
   49210:	53                   	push   ebx
   49211:	51                   	push   ecx
   49212:	52                   	push   edx
   49213:	56                   	push   esi
   49214:	57                   	push   edi
   49215:	83 ec 04             	sub    esp,0x4
   49218:	89 c2                	mov    edx,eax
   4921a:	e8 c1 07 00 00       	call   restore_background
   4921f:	8b ba 18 01 00 00    	mov    edi,DWORD PTR [edx+0x118]
   49225:	89 d6                	mov    esi,edx
   49227:	31 db                	xor    ebx,ebx
   49229:	8b 3f                	mov    edi,DWORD PTR [edi]
   4922b:	89 1c 24             	mov    DWORD PTR [esp],ebx
   4922e:	29 c9                	sub    ecx,ecx
   49230:	49                   	dec    ecx
   49231:	31 c0                	xor    eax,eax
   49233:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
   49235:	f7 d1                	not    ecx
   49237:	49                   	dec    ecx
   49238:	31 d2                	xor    edx,edx
   4923a:	89 cb                	mov    ebx,ecx
update_mod_78_branch_1:
   4923c:	8b 86 18 01 00 00    	mov    eax,DWORD PTR [esi+0x118]
   49242:	8b 3c 02             	mov    edi,DWORD PTR [edx+eax*1]
   49245:	29 c9                	sub    ecx,ecx
   49247:	49                   	dec    ecx
   49248:	31 c0                	xor    eax,eax
   4924a:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
   4924c:	f7 d1                	not    ecx
   4924e:	49                   	dec    ecx
   4924f:	39 cb                	cmp    ebx,ecx
   49251:	73 15                	jae    update_mod_78_branch_2
   49253:	8b 86 18 01 00 00    	mov    eax,DWORD PTR [esi+0x118]
   49259:	8b 3c 02             	mov    edi,DWORD PTR [edx+eax*1]
   4925c:	29 c9                	sub    ecx,ecx
   4925e:	49                   	dec    ecx
   4925f:	31 c0                	xor    eax,eax
   49261:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
   49263:	f7 d1                	not    ecx
   49265:	49                   	dec    ecx
   49266:	89 cb                	mov    ebx,ecx
update_mod_78_branch_2:
   49268:	8b 0c 24             	mov    ecx,DWORD PTR [esp]
   4926b:	83 c2 04             	add    edx,0x4
   4926e:	8b 86 18 01 00 00    	mov    eax,DWORD PTR [esi+0x118]
   49274:	41                   	inc    ecx
   49275:	8b 3c 02             	mov    edi,DWORD PTR [edx+eax*1]
   49278:	89 0c 24             	mov    DWORD PTR [esp],ecx
   4927b:	85 ff                	test   edi,edi
   4927d:	75 bd                	jne    update_mod_78_branch_1
   4927f:	8d 41 ff             	lea    eax,[ecx-0x1]
   49282:	89 86 20 01 00 00    	mov    DWORD PTR [esi+0x120],eax
   49288:	8a 06                	mov    al,BYTE PTR [esi]
   4928a:	00 d8                	add    al,bl
   4928c:	fe c0                	inc    al
   4928e:	88 46 02             	mov    BYTE PTR [esi+0x2],al
   49291:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   49294:	02 04 24             	add    al,BYTE PTR [esp]
   49297:	fe c0                	inc    al
   49299:	88 46 03             	mov    BYTE PTR [esi+0x3],al
   4929c:	89 f0                	mov    eax,esi
   4929e:	e8 3d 06 00 00       	call   save_background
   492a3:	89 f0                	mov    eax,esi
   492a5:	31 c9                	xor    ecx,ecx
   492a7:	e8 e4 05 00 00       	call   erase
   492ac:	89 f0                	mov    eax,esi
   492ae:	89 3c 24             	mov    DWORD PTR [esp],edi
   492b1:	e8 6a 04 00 00       	call   display
update_mod_78_branch_3:
   492b6:	31 d2                	xor    edx,edx
   492b8:	8b 04 24             	mov    eax,DWORD PTR [esp]
   492bb:	8a 56 01             	mov    dl,BYTE PTR [esi+0x1]
   492be:	8b 9e 18 01 00 00    	mov    ebx,DWORD PTR [esi+0x118]
   492c4:	01 c2                	add    edx,eax
   492c6:	31 c0                	xor    eax,eax
   492c8:	8b 1c 19             	mov    ebx,DWORD PTR [ecx+ebx*1]
   492cb:	8a 06                	mov    al,BYTE PTR [esi]
   492cd:	42                   	inc    edx
   492ce:	40                   	inc    eax
   492cf:	83 c1 04             	add    ecx,0x4
   492d2:	e8 b9 01 00 00       	call   text_puts
   492d7:	8b 14 24             	mov    edx,DWORD PTR [esp]
   492da:	8b 86 18 01 00 00    	mov    eax,DWORD PTR [esi+0x118]
   492e0:	42                   	inc    edx
   492e1:	8b 1c 01             	mov    ebx,DWORD PTR [ecx+eax*1]
   492e4:	89 14 24             	mov    DWORD PTR [esp],edx
   492e7:	85 db                	test   ebx,ebx
   492e9:	75 cb                	jne    update_mod_78_branch_3
   492eb:	8b 8e 1c 01 00 00    	mov    ecx,DWORD PTR [esi+0x11c]
   492f1:	8a 5e 02             	mov    bl,BYTE PTR [esi+0x2]
   492f4:	31 c0                	xor    eax,eax
   492f6:	31 d2                	xor    edx,edx
   492f8:	8a 86 25 01 00 00    	mov    al,BYTE PTR [esi+0x125]
   492fe:	4b                   	dec    ebx
   492ff:	50                   	push   eax
   49300:	31 c0                	xor    eax,eax
   49302:	8a 56 01             	mov    dl,BYTE PTR [esi+0x1]
   49305:	8a 86 24 01 00 00    	mov    al,BYTE PTR [esi+0x124]
   4930b:	42                   	inc    edx
   4930c:	50                   	push   eax
   4930d:	31 c0                	xor    eax,eax
   4930f:	01 ca                	add    edx,ecx
   49311:	8a 06                	mov    al,BYTE PTR [esi]
   49313:	89 d1                	mov    ecx,edx
   49315:	40                   	inc    eax
   49316:	e8 d5 01 00 00       	call   text_color
   4931b:	83 c4 04             	add    esp,0x4
   4931e:	5f                   	pop    edi
   4931f:	5e                   	pop    esi
   49320:	5a                   	pop    edx
   49321:	59                   	pop    ecx
   49322:	5b                   	pop    ebx
   49323:	c3                   	ret    
;-------------------------------------------------
;  Bad code 79 (zero after ret):                 -
;-------------------------------------------------
;  49322:	5b                   	pop    ebx
;  49323:	c3                   	ret    
;  49324:	00 00                	add    BYTE PTR [eax],al
;  49326:	00 00                	add    BYTE PTR [eax],al
;-------------------------------------------------
;  Padding data (12 bytes):                      -
;-------------------------------------------------
   49324:	00 00 00 00 00 00 .. 	db     12 dup(0x00)
;-------------------------------------------------
;  End of bad code 79                            -
;-------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 78 (D:\SOURCE\textmenu.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------