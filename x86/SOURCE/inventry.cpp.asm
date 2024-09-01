;-------------------------------------------------------------------------------
;                                                                              -
;  Module 94: D:\SOURCE\inventry.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function 'inventry_cpp_'                      -
;-------------------------------------------------
inventry_cpp_:
   6df00:	b8 dc fc 00 00       	mov    eax,@obj3:inventry_cpp_variable_1                            ; fixup: num: 18827, src obj: 1, src ofs: 0x6df01, dst obj: 3, dst ofs: 0xfcdc
   6df05:	e9 65 31 00 00       	jmp    puts_
   6df0a:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'inventory'                          -
;-------------------------------------------------
inventory:
   6df10:	53                   	push   ebx
   6df11:	51                   	push   ecx
   6df12:	52                   	push   edx
   6df13:	56                   	push   esi
   6df14:	57                   	push   edi
   6df15:	55                   	push   ebp
   6df16:	83 ec 38             	sub    esp,0x38
   6df19:	31 d2                	xor    edx,edx
   6df1b:	30 e4                	xor    ah,ah
   6df1d:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
   6df21:	89 54 24 0c          	mov    DWORD PTR [esp+0xc],edx
   6df25:	89 54 24 10          	mov    DWORD PTR [esp+0x10],edx
   6df29:	89 54 24 18          	mov    DWORD PTR [esp+0x18],edx
   6df2d:	8b 15 c4 5a 02 00    	mov    edx,DWORD PTR ds:@obj3:current_room                          ; fixup: num: 18826, src obj: 1, src ofs: 0x6df2f, dst obj: 3, dst ofs: 0x25ac4
   6df33:	88 64 24 30          	mov    BYTE PTR [esp+0x30],ah
   6df37:	b8 e9 fc 00 00       	mov    eax,@obj3:inventry_cpp_variable_2                            ; fixup: num: 18825, src obj: 1, src ofs: 0x6df38, dst obj: 3, dst ofs: 0xfce9
   6df3c:	8b 52 2c             	mov    edx,DWORD PTR [edx+0x2c]
   6df3f:	e8 ec 84 00 00       	call   strcmp_
   6df44:	85 c0                	test   eax,eax
   6df46:	0f 84 f3 1f 00 00    	je     inventory_branch_227
   6df4c:	c6 05 94 24 03 00 01 	mov    BYTE PTR ds:@obj3:in_inventory,0x1                           ; fixup: num: 18824, src obj: 1, src ofs: 0x6df4e, dst obj: 3, dst ofs: 0x32494
   6df53:	8b 15 88 5a 02 00    	mov    edx,DWORD PTR ds:@obj3:the_list                              ; fixup: num: 18823, src obj: 1, src ofs: 0x6df55, dst obj: 3, dst ofs: 0x25a88
   6df59:	85 d2                	test   edx,edx
   6df5b:	74 24                	je     inventory_branch_3
inventory_branch_1:
   6df5d:	83 7a 38 17          	cmp    DWORD PTR [edx+0x38],0x17
   6df61:	75 17                	jne    inventory_branch_2
   6df63:	80 7a 60 00          	cmp    BYTE PTR [edx+0x60],0x0
   6df67:	75 11                	jne    inventory_branch_2
   6df69:	e8 94 41 00 00       	call   clock_
   6df6e:	c6 42 60 01          	mov    BYTE PTR [edx+0x60],0x1
   6df72:	a3 44 7e 01 00       	mov    ds:@obj3:current_time,eax                                    ; fixup: num: 18822, src obj: 1, src ofs: 0x6df73, dst obj: 3, dst ofs: 0x17e44
   6df77:	89 42 5c             	mov    DWORD PTR [edx+0x5c],eax
inventory_branch_2:
   6df7a:	8b 52 48             	mov    edx,DWORD PTR [edx+0x48]
   6df7d:	85 d2                	test   edx,edx
   6df7f:	75 dc                	jne    inventory_branch_1
inventory_branch_3:
   6df81:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 18821, src obj: 1, src ofs: 0x6df82, dst obj: 3, dst ofs: 0x25bd4
   6df86:	db 80 84 11 00 00    	fild   DWORD PTR [eax+0x1184]
   6df8c:	dd 14 24             	fst    QWORD PTR [esp]
   6df8f:	dc 1d ce 04 01 00    	fcomp  QWORD PTR ds:@obj3:inventry_cpp_variable_171                 ; fixup: num: 18820, src obj: 1, src ofs: 0x6df91, dst obj: 3, dst ofs: 0x104ce
   6df95:	df e0                	fnstsw ax
   6df97:	9e                   	sahf   
   6df98:	73 34                	jae    inventory_branch_4
   6df9a:	b8 f2 fc 00 00       	mov    eax,@obj3:inventry_cpp_variable_3                            ; fixup: num: 18819, src obj: 1, src ofs: 0x6df9b, dst obj: 3, dst ofs: 0xfcf2
   6df9f:	e8 dc 4c fe ff       	call   get_object
   6dfa4:	8b 15 2c 41 01 00    	mov    edx,DWORD PTR ds:@obj3:INVENTORY_ROOM                        ; fixup: num: 18835, src obj: 1, src ofs: 0x6dfa6, dst obj: 3, dst ofs: 0x1412c
   6dfaa:	bb 01 00 00 00       	mov    ebx,0x1
   6dfaf:	89 50 3c             	mov    DWORD PTR [eax+0x3c],edx
   6dfb2:	ba fc fc 00 00       	mov    edx,@obj3:inventry_cpp_variable_4                            ; fixup: num: 18834, src obj: 1, src ofs: 0x6dfb3, dst obj: 3, dst ofs: 0xfcfc
   6dfb7:	b8 06 fd 00 00       	mov    eax,@obj3:inventry_cpp_variable_5                            ; fixup: num: 18833, src obj: 1, src ofs: 0x6dfb8, dst obj: 3, dst ofs: 0xfd06
   6dfbc:	e8 4f 4f fe ff       	call   set_object
   6dfc1:	c7 44 24 1c 04 00 00 00 	mov    DWORD PTR [esp+0x1c],0x4
   6dfc9:	e9 aa 00 00 00       	jmp    inventory_branch_8
inventory_branch_4:
   6dfce:	dd 04 24             	fld    QWORD PTR [esp]
   6dfd1:	dc 1d d6 04 01 00    	fcomp  QWORD PTR ds:@obj3:inventry_cpp_variable_172                 ; fixup: num: 18832, src obj: 1, src ofs: 0x6dfd3, dst obj: 3, dst ofs: 0x104d6
   6dfd7:	df e0                	fnstsw ax
   6dfd9:	9e                   	sahf   
   6dfda:	73 31                	jae    inventory_branch_5
   6dfdc:	b8 10 fd 00 00       	mov    eax,@obj3:inventry_cpp_variable_6                            ; fixup: num: 18831, src obj: 1, src ofs: 0x6dfdd, dst obj: 3, dst ofs: 0xfd10
   6dfe1:	e8 9a 4c fe ff       	call   get_object
   6dfe6:	8b 15 2c 41 01 00    	mov    edx,DWORD PTR ds:@obj3:INVENTORY_ROOM                        ; fixup: num: 18830, src obj: 1, src ofs: 0x6dfe8, dst obj: 3, dst ofs: 0x1412c
   6dfec:	bb 01 00 00 00       	mov    ebx,0x1
   6dff1:	89 50 3c             	mov    DWORD PTR [eax+0x3c],edx
   6dff4:	ba 1a fd 00 00       	mov    edx,@obj3:inventry_cpp_variable_7                            ; fixup: num: 18829, src obj: 1, src ofs: 0x6dff5, dst obj: 3, dst ofs: 0xfd1a
   6dff9:	b8 24 fd 00 00       	mov    eax,@obj3:inventry_cpp_variable_8                            ; fixup: num: 18828, src obj: 1, src ofs: 0x6dffa, dst obj: 3, dst ofs: 0xfd24
   6dffe:	e8 0d 4f fe ff       	call   set_object
   6e003:	c7 44 24 1c 03 00 00 00 	mov    DWORD PTR [esp+0x1c],0x3
   6e00b:	eb 6b                	jmp    inventory_branch_8
inventory_branch_5:
   6e00d:	dd 04 24             	fld    QWORD PTR [esp]
   6e010:	dc 1d de 04 01 00    	fcomp  QWORD PTR ds:@obj3:inventry_cpp_variable_173                 ; fixup: num: 19089, src obj: 1, src ofs: 0x6e012, dst obj: 3, dst ofs: 0x104de
   6e016:	df e0                	fnstsw ax
   6e018:	9e                   	sahf   
   6e019:	73 2d                	jae    inventory_branch_6
   6e01b:	b8 2e fd 00 00       	mov    eax,@obj3:inventry_cpp_variable_9                            ; fixup: num: 19088, src obj: 1, src ofs: 0x6e01c, dst obj: 3, dst ofs: 0xfd2e
   6e020:	bb 01 00 00 00       	mov    ebx,0x1
   6e025:	e8 56 4c fe ff       	call   get_object
   6e02a:	8b 15 2c 41 01 00    	mov    edx,DWORD PTR ds:@obj3:INVENTORY_ROOM                        ; fixup: num: 19087, src obj: 1, src ofs: 0x6e02c, dst obj: 3, dst ofs: 0x1412c
   6e030:	bd 02 00 00 00       	mov    ebp,0x2
   6e035:	89 50 3c             	mov    DWORD PTR [eax+0x3c],edx
   6e038:	ba 38 fd 00 00       	mov    edx,@obj3:inventry_cpp_variable_10                           ; fixup: num: 19086, src obj: 1, src ofs: 0x6e039, dst obj: 3, dst ofs: 0xfd38
   6e03d:	b8 42 fd 00 00       	mov    eax,@obj3:inventry_cpp_variable_11                           ; fixup: num: 19085, src obj: 1, src ofs: 0x6e03e, dst obj: 3, dst ofs: 0xfd42
   6e042:	89 6c 24 1c          	mov    DWORD PTR [esp+0x1c],ebp
   6e046:	eb 2b                	jmp    inventory_branch_7
inventory_branch_6:
   6e048:	b8 4c fd 00 00       	mov    eax,@obj3:inventry_cpp_variable_12                           ; fixup: num: 19084, src obj: 1, src ofs: 0x6e049, dst obj: 3, dst ofs: 0xfd4c
   6e04d:	bb 01 00 00 00       	mov    ebx,0x1
   6e052:	e8 29 4c fe ff       	call   get_object
   6e057:	8b 15 2c 41 01 00    	mov    edx,DWORD PTR ds:@obj3:INVENTORY_ROOM                        ; fixup: num: 19101, src obj: 1, src ofs: 0x6e059, dst obj: 3, dst ofs: 0x1412c
   6e05d:	bf 01 00 00 00       	mov    edi,0x1
   6e062:	89 50 3c             	mov    DWORD PTR [eax+0x3c],edx
   6e065:	ba 56 fd 00 00       	mov    edx,@obj3:inventry_cpp_variable_13                           ; fixup: num: 19100, src obj: 1, src ofs: 0x6e066, dst obj: 3, dst ofs: 0xfd56
   6e06a:	b8 60 fd 00 00       	mov    eax,@obj3:inventry_cpp_variable_14                           ; fixup: num: 19099, src obj: 1, src ofs: 0x6e06b, dst obj: 3, dst ofs: 0xfd60
   6e06f:	89 7c 24 1c          	mov    DWORD PTR [esp+0x1c],edi
inventory_branch_7:
   6e073:	e8 98 4e fe ff       	call   set_object
inventory_branch_8:
   6e078:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 19098, src obj: 1, src ofs: 0x6e079, dst obj: 3, dst ofs: 0x1a1d4
   6e07d:	e8 1e d9 f9 ff       	call   update_mod_9
   6e082:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 19097, src obj: 1, src ofs: 0x6e083, dst obj: 3, dst ofs: 0x1a1d4
   6e087:	e8 14 d9 f9 ff       	call   update_mod_9
   6e08c:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 19096, src obj: 1, src ofs: 0x6e08d, dst obj: 3, dst ofs: 0x1a1d4
   6e091:	e8 0a d9 f9 ff       	call   update_mod_9
   6e096:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 19095, src obj: 1, src ofs: 0x6e097, dst obj: 3, dst ofs: 0x25a88
   6e09b:	8b 15 98 24 03 00    	mov    edx,DWORD PTR ds:@obj3:panel                                 ; fixup: num: 19094, src obj: 1, src ofs: 0x6e09d, dst obj: 3, dst ofs: 0x32498
   6e0a1:	e8 8a e0 fd ff       	call   insert_bitmap
   6e0a6:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 19093, src obj: 1, src ofs: 0x6e0a7, dst obj: 3, dst ofs: 0x1a1d4
   6e0ab:	e8 f0 d8 f9 ff       	call   update_mod_9
   6e0b0:	b8 6a fd 00 00       	mov    eax,@obj3:inventry_cpp_variable_15                           ; fixup: num: 19092, src obj: 1, src ofs: 0x6e0b1, dst obj: 3, dst ofs: 0xfd6a
   6e0b5:	e8 b6 e7 ff ff       	call   check_inventory
   6e0ba:	84 c0                	test   al,al
   6e0bc:	75 53                	jne    inventory_branch_10
   6e0be:	b8 50 00 00 00       	mov    eax,0x50
   6e0c3:	e8 50 3e 00 00       	call   W?$nwn(ui)pnv
   6e0c8:	89 c6                	mov    esi,eax
   6e0ca:	85 c0                	test   eax,eax
   6e0cc:	74 2c                	je     inventory_branch_9
   6e0ce:	6a 00                	push   0x0
   6e0d0:	6a f4                	push   0xfffffff4
   6e0d2:	68 8c 01 00 00       	push   0x18c
   6e0d7:	68 e0 01 00 00       	push   0x1e0
   6e0dc:	b9 78 fd 00 00       	mov    ecx,@obj3:inventry_cpp_variable_16                           ; fixup: num: 19091, src obj: 1, src ofs: 0x6e0dd, dst obj: 3, dst ofs: 0xfd78
   6e0e1:	8b 1d c4 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:textfont                              ; fixup: num: 19090, src obj: 1, src ofs: 0x6e0e3, dst obj: 3, dst ofs: 0x25bc4
   6e0e7:	e8 d4 aa fb ff       	call   get_day
   6e0ec:	8b 14 85 10 41 01 00 	mov    edx,DWORD PTR [eax*4+@obj3:item_closeup_command_variable_1]  ; fixup: num: 19109, src obj: 1, src ofs: 0x6e0ef, dst obj: 3, dst ofs: 0x14110
   6e0f3:	89 f0                	mov    eax,esi
   6e0f5:	e8 06 bb fd ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
inventory_branch_9:
   6e0fa:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
   6e0fe:	85 c0                	test   eax,eax
   6e100:	75 0f                	jne    inventory_branch_10
   6e102:	bb 82 fd 00 00       	mov    ebx,@obj3:inventry_cpp_variable_17                           ; fixup: num: 19108, src obj: 1, src ofs: 0x6e103, dst obj: 3, dst ofs: 0xfd82
   6e107:	ba af 00 00 00       	mov    edx,0xaf
   6e10c:	e8 1f 9f fc ff       	call   _error_report
inventory_branch_10:
   6e111:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 19107, src obj: 1, src ofs: 0x6e112, dst obj: 3, dst ofs: 0x1a1d4
   6e116:	e8 85 d8 f9 ff       	call   update_mod_9
   6e11b:	8b 0d bc 5a 02 00    	mov    ecx,DWORD PTR ds:@obj3:object_list                           ; fixup: num: 19106, src obj: 1, src ofs: 0x6e11d, dst obj: 3, dst ofs: 0x25abc
   6e121:	85 c9                	test   ecx,ecx
   6e123:	0f 84 89 00 00 00    	je     inventory_branch_15
inventory_branch_11:
   6e129:	8b 35 2c 41 01 00    	mov    esi,DWORD PTR ds:@obj3:INVENTORY_ROOM                        ; fixup: num: 19105, src obj: 1, src ofs: 0x6e12b, dst obj: 3, dst ofs: 0x1412c
   6e12f:	3b 71 3c             	cmp    esi,DWORD PTR [ecx+0x3c]
   6e132:	0f 85 6f 00 00 00    	jne    inventory_branch_14
   6e138:	80 79 4d 00          	cmp    BYTE PTR [ecx+0x4d],0x0
   6e13c:	74 69                	je     inventory_branch_14
   6e13e:	8b 79 30             	mov    edi,DWORD PTR [ecx+0x30]
   6e141:	85 ff                	test   edi,edi
   6e143:	74 62                	je     inventory_branch_14
   6e145:	ba 9a fd 00 00       	mov    edx,@obj3:inventry_cpp_variable_18                           ; fixup: num: 19104, src obj: 1, src ofs: 0x6e146, dst obj: 3, dst ofs: 0xfd9a
   6e14a:	89 f8                	mov    eax,edi
   6e14c:	e8 cc 2e 00 00       	call   strstr_
   6e151:	85 c0                	test   eax,eax
   6e153:	75 52                	jne    inventory_branch_14
   6e155:	b8 4c 00 00 00       	mov    eax,0x4c
   6e15a:	e8 b9 3d 00 00       	call   W?$nwn(ui)pnv
   6e15f:	85 c0                	test   eax,eax
   6e161:	74 07                	je     inventory_branch_12
   6e163:	89 ca                	mov    edx,ecx
   6e165:	e8 76 cd fc ff       	call   W?$ct:BTMAP$n(pn$_object_type$$)_
inventory_branch_12:
   6e16a:	89 c6                	mov    esi,eax
   6e16c:	85 f6                	test   esi,esi
   6e16e:	74 2d                	je     inventory_branch_13
   6e170:	a1 98 24 03 00       	mov    eax,ds:@obj3:panel                                           ; fixup: num: 19103, src obj: 1, src ofs: 0x6e171, dst obj: 3, dst ofs: 0x32498
   6e175:	d9 40 1c             	fld    DWORD PTR [eax+0x1c]
   6e178:	d8 05 e6 04 01 00    	fadd   DWORD PTR ds:@obj3:inventry_cpp_variable_174                 ; fixup: num: 19102, src obj: 1, src ofs: 0x6e17a, dst obj: 3, dst ofs: 0x104e6
   6e17e:	83 ec 04             	sub    esp,0x4
   6e181:	d9 1c 24             	fstp   DWORD PTR [esp]
   6e184:	89 f0                	mov    eax,esi
   6e186:	8b 5e 40             	mov    ebx,DWORD PTR [esi+0x40]
   6e189:	8b 56 3c             	mov    edx,DWORD PTR [esi+0x3c]
   6e18c:	e8 5f d5 fc ff       	call   set_xyz
   6e191:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 19118, src obj: 1, src ofs: 0x6e192, dst obj: 3, dst ofs: 0x25a88
   6e196:	89 f2                	mov    edx,esi
   6e198:	e8 93 df fd ff       	call   insert_bitmap
inventory_branch_13:
   6e19d:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 19117, src obj: 1, src ofs: 0x6e19e, dst obj: 3, dst ofs: 0x1a1d4
   6e1a2:	e8 f9 d7 f9 ff       	call   update_mod_9
inventory_branch_14:
   6e1a7:	8b 49 54             	mov    ecx,DWORD PTR [ecx+0x54]
   6e1aa:	85 c9                	test   ecx,ecx
   6e1ac:	0f 85 77 ff ff ff    	jne    inventory_branch_11
inventory_branch_15:
   6e1b2:	ba d4 a1 01 00       	mov    edx,@obj3:music                                              ; fixup: num: 19116, src obj: 1, src ofs: 0x6e1b3, dst obj: 3, dst ofs: 0x1a1d4
inventory_branch_16:
   6e1b7:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 19115, src obj: 1, src ofs: 0x6e1b9, dst obj: 3, dst ofs: 0x25974
   6e1be:	74 09                	je     inventory_branch_17
   6e1c0:	89 d0                	mov    eax,edx
   6e1c2:	e8 d9 d7 f9 ff       	call   update_mod_9
   6e1c7:	eb ee                	jmp    inventory_branch_16
inventory_branch_17:
   6e1c9:	31 ed                	xor    ebp,ebp
   6e1cb:	be 49 00 00 00       	mov    esi,0x49
   6e1d0:	89 6c 24 14          	mov    DWORD PTR [esp+0x14],ebp
   6e1d4:	8b 2d bc 5a 02 00    	mov    ebp,DWORD PTR ds:@obj3:object_list                           ; fixup: num: 19114, src obj: 1, src ofs: 0x6e1d6, dst obj: 3, dst ofs: 0x25abc
   6e1da:	bf 73 00 00 00       	mov    edi,0x73
   6e1df:	85 ed                	test   ebp,ebp
   6e1e1:	0f 84 1a 01 00 00    	je     inventory_branch_23
inventory_branch_18:
   6e1e7:	8b 15 2c 41 01 00    	mov    edx,DWORD PTR ds:@obj3:INVENTORY_ROOM                        ; fixup: num: 19113, src obj: 1, src ofs: 0x6e1e9, dst obj: 3, dst ofs: 0x1412c
   6e1ed:	3b 55 3c             	cmp    edx,DWORD PTR [ebp+0x3c]
   6e1f0:	0f 85 00 01 00 00    	jne    inventory_branch_22
   6e1f6:	80 7d 4d 00          	cmp    BYTE PTR [ebp+0x4d],0x0
   6e1fa:	0f 84 f6 00 00 00    	je     inventory_branch_22
   6e200:	ba a3 fd 00 00       	mov    edx,@obj3:inventry_cpp_variable_19                           ; fixup: num: 19112, src obj: 1, src ofs: 0x6e201, dst obj: 3, dst ofs: 0xfda3
   6e205:	8b 45 30             	mov    eax,DWORD PTR [ebp+0x30]
   6e208:	e8 23 82 00 00       	call   strcmp_
   6e20d:	85 c0                	test   eax,eax
   6e20f:	0f 84 e1 00 00 00    	je     inventory_branch_22
   6e215:	ba ac fd 00 00       	mov    edx,@obj3:inventry_cpp_variable_20                           ; fixup: num: 19111, src obj: 1, src ofs: 0x6e216, dst obj: 3, dst ofs: 0xfdac
   6e21a:	8b 45 30             	mov    eax,DWORD PTR [ebp+0x30]
   6e21d:	e8 0e 82 00 00       	call   strcmp_
   6e222:	85 c0                	test   eax,eax
   6e224:	0f 84 cc 00 00 00    	je     inventory_branch_22
   6e22a:	ba b6 fd 00 00       	mov    edx,@obj3:inventry_cpp_variable_21                           ; fixup: num: 19110, src obj: 1, src ofs: 0x6e22b, dst obj: 3, dst ofs: 0xfdb6
   6e22f:	8b 45 30             	mov    eax,DWORD PTR [ebp+0x30]
   6e232:	e8 f9 81 00 00       	call   strcmp_
   6e237:	85 c0                	test   eax,eax
   6e239:	0f 84 b7 00 00 00    	je     inventory_branch_22
   6e23f:	ba c0 fd 00 00       	mov    edx,@obj3:inventry_cpp_variable_22                           ; fixup: num: 19125, src obj: 1, src ofs: 0x6e240, dst obj: 3, dst ofs: 0xfdc0
   6e244:	8b 45 30             	mov    eax,DWORD PTR [ebp+0x30]
   6e247:	e8 e4 81 00 00       	call   strcmp_
   6e24c:	85 c0                	test   eax,eax
   6e24e:	0f 84 a2 00 00 00    	je     inventory_branch_22
   6e254:	ba ca fd 00 00       	mov    edx,@obj3:inventry_cpp_variable_23                           ; fixup: num: 19124, src obj: 1, src ofs: 0x6e255, dst obj: 3, dst ofs: 0xfdca
   6e259:	8b 45 30             	mov    eax,DWORD PTR [ebp+0x30]
   6e25c:	e8 cf 81 00 00       	call   strcmp_
   6e261:	85 c0                	test   eax,eax
   6e263:	0f 84 8d 00 00 00    	je     inventory_branch_22
   6e269:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 19123, src obj: 1, src ofs: 0x6e26a, dst obj: 3, dst ofs: 0x25a88
   6e26e:	8b 55 30             	mov    edx,DWORD PTR [ebp+0x30]
   6e271:	e8 7a de fd ff       	call   get_bitmap
   6e276:	89 c1                	mov    ecx,eax
   6e278:	85 c0                	test   eax,eax
   6e27a:	74 70                	je     inventory_branch_21
   6e27c:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
   6e27f:	01 f0                	add    eax,esi
   6e281:	3d 34 02 00 00       	cmp    eax,0x234
   6e286:	7e 0e                	jle    inventory_branch_19
   6e288:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
   6e28c:	83 c0 05             	add    eax,0x5
   6e28f:	be 49 00 00 00       	mov    esi,0x49
   6e294:	01 c7                	add    edi,eax
inventory_branch_19:
   6e296:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 19122, src obj: 1, src ofs: 0x6e297, dst obj: 3, dst ofs: 0x25a88
   6e29b:	89 ca                	mov    edx,ecx
   6e29d:	e8 4e e4 fd ff       	call   remove_bitmap
   6e2a2:	a1 98 24 03 00       	mov    eax,ds:@obj3:panel                                           ; fixup: num: 19121, src obj: 1, src ofs: 0x6e2a3, dst obj: 3, dst ofs: 0x32498
   6e2a7:	d9 40 1c             	fld    DWORD PTR [eax+0x1c]
   6e2aa:	d8 05 e6 04 01 00    	fadd   DWORD PTR ds:@obj3:inventry_cpp_variable_174                 ; fixup: num: 19120, src obj: 1, src ofs: 0x6e2ac, dst obj: 3, dst ofs: 0x104e6
   6e2b0:	83 ec 04             	sub    esp,0x4
   6e2b3:	d9 1c 24             	fstp   DWORD PTR [esp]
   6e2b6:	89 fb                	mov    ebx,edi
   6e2b8:	89 f2                	mov    edx,esi
   6e2ba:	89 c8                	mov    eax,ecx
   6e2bc:	e8 2f d4 fc ff       	call   set_xyz
   6e2c1:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 19119, src obj: 1, src ofs: 0x6e2c2, dst obj: 3, dst ofs: 0x25a88
   6e2c6:	89 ca                	mov    edx,ecx
   6e2c8:	e8 63 de fd ff       	call   insert_bitmap
   6e2cd:	89 75 0c             	mov    DWORD PTR [ebp+0xc],esi
   6e2d0:	89 7d 10             	mov    DWORD PTR [ebp+0x10],edi
   6e2d3:	8b 41 2c             	mov    eax,DWORD PTR [ecx+0x2c]
   6e2d6:	83 c0 05             	add    eax,0x5
   6e2d9:	8b 59 30             	mov    ebx,DWORD PTR [ecx+0x30]
   6e2dc:	01 c6                	add    esi,eax
   6e2de:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
   6e2e2:	39 d8                	cmp    eax,ebx
   6e2e4:	7f 02                	jg     inventory_branch_20
   6e2e6:	89 d8                	mov    eax,ebx
inventory_branch_20:
   6e2e8:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
inventory_branch_21:
   6e2ec:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 19135, src obj: 1, src ofs: 0x6e2ed, dst obj: 3, dst ofs: 0x1a1d4
   6e2f1:	e8 aa d6 f9 ff       	call   update_mod_9
inventory_branch_22:
   6e2f6:	8b 6d 54             	mov    ebp,DWORD PTR [ebp+0x54]
   6e2f9:	85 ed                	test   ebp,ebp
   6e2fb:	0f 85 e6 fe ff ff    	jne    inventory_branch_18
inventory_branch_23:
   6e301:	31 c0                	xor    eax,eax
   6e303:	31 d2                	xor    edx,edx
   6e305:	89 44 24 28          	mov    DWORD PTR [esp+0x28],eax
   6e309:	a1 94 60 02 00       	mov    eax,ds:@obj3:pointer                                         ; fixup: num: 19134, src obj: 1, src ofs: 0x6e30a, dst obj: 3, dst ofs: 0x26094
   6e30e:	8a 6c 24 30          	mov    ch,BYTE PTR [esp+0x30]
   6e312:	e8 79 b6 ff ff       	call   set_pointer
   6e317:	84 ed                	test   ch,ch
   6e319:	0f 85 2d 1b 00 00    	jne    inventory_branch_222
inventory_branch_24:
   6e31f:	30 d2                	xor    dl,dl
   6e321:	8b 1d 8c 5a 02 00    	mov    ebx,DWORD PTR ds:@obj3:the_list_variable_1                   ; fixup: num: 19133, src obj: 1, src ofs: 0x6e323, dst obj: 3, dst ofs: 0x25a8c
   6e327:	88 54 24 34          	mov    BYTE PTR [esp+0x34],dl
   6e32b:	85 db                	test   ebx,ebx
   6e32d:	0f 84 98 00 00 00    	je     inventory_branch_29
inventory_branch_25:
   6e333:	d9 43 1c             	fld    DWORD PTR [ebx+0x1c]
   6e336:	a1 98 24 03 00       	mov    eax,ds:@obj3:panel                                           ; fixup: num: 19132, src obj: 1, src ofs: 0x6e337, dst obj: 3, dst ofs: 0x32498
   6e33b:	d8 58 1c             	fcomp  DWORD PTR [eax+0x1c]
   6e33e:	df e0                	fnstsw ax
   6e340:	9e                   	sahf   
   6e341:	0f 83 84 00 00 00    	jae    inventory_branch_29
   6e347:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 19131, src obj: 1, src ofs: 0x6e348, dst obj: 3, dst ofs: 0x1a1d4
   6e34c:	e8 4f d6 f9 ff       	call   update_mod_9
   6e351:	8b 7b 44             	mov    edi,DWORD PTR [ebx+0x44]
   6e354:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 19130, src obj: 1, src ofs: 0x6e356, dst obj: 3, dst ofs: 0x25974
   6e35b:	74 36                	je     inventory_branch_27
   6e35d:	83 7c 24 28 00       	cmp    DWORD PTR [esp+0x28],0x0
   6e362:	75 2f                	jne    inventory_branch_27
   6e364:	83 3d 78 59 02 00 45 	cmp    DWORD PTR ds:@obj3:mouse_x,0x45                              ; fixup: num: 19129, src obj: 1, src ofs: 0x6e366, dst obj: 3, dst ofs: 0x25978
   6e36b:	7c 21                	jl     inventory_branch_26
   6e36d:	81 3d 78 59 02 00 38 02 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x238                    ; fixup: num: 19128, src obj: 1, src ofs: 0x6e36f, dst obj: 3, dst ofs: 0x25978
   6e377:	7f 15                	jg     inventory_branch_26
   6e379:	83 3d 7c 59 02 00 4b 	cmp    DWORD PTR ds:@obj3:mouse_y,0x4b                              ; fixup: num: 19127, src obj: 1, src ofs: 0x6e37b, dst obj: 3, dst ofs: 0x2597c
   6e380:	7c 0c                	jl     inventory_branch_26
   6e382:	81 3d 7c 59 02 00 b3 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x1b3                    ; fixup: num: 19126, src obj: 1, src ofs: 0x6e384, dst obj: 3, dst ofs: 0x2597c
   6e38c:	7e 05                	jle    inventory_branch_27
inventory_branch_26:
   6e38e:	c6 44 24 30 01       	mov    BYTE PTR [esp+0x30],0x1
inventory_branch_27:
   6e393:	89 d8                	mov    eax,ebx
   6e395:	e8 d6 d2 fc ff       	call   inv_mouse_hit
   6e39a:	84 c0                	test   al,al
   6e39c:	0f 84 1f 00 00 00    	je     inventory_branch_28
   6e3a2:	83 7c 24 28 00       	cmp    DWORD PTR [esp+0x28],0x0
   6e3a7:	0f 85 14 00 00 00    	jne    inventory_branch_28
   6e3ad:	8b 43 38             	mov    eax,DWORD PTR [ebx+0x38]
   6e3b0:	85 c0                	test   eax,eax
   6e3b2:	0f 86 df 01 00 00    	jbe    inventory_branch_40
   6e3b8:	83 f8 15             	cmp    eax,0x15
   6e3bb:	0f 84 9a 01 00 00    	je     inventory_branch_38
inventory_branch_28:
   6e3c1:	89 fb                	mov    ebx,edi
   6e3c3:	85 ff                	test   edi,edi
   6e3c5:	0f 85 68 ff ff ff    	jne    inventory_branch_25
inventory_branch_29:
   6e3cb:	80 7c 24 34 00       	cmp    BYTE PTR [esp+0x34],0x0
   6e3d0:	75 53                	jne    inventory_branch_33
   6e3d2:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
   6e3d6:	85 c9                	test   ecx,ecx
   6e3d8:	74 4b                	je     inventory_branch_33
   6e3da:	81 f9 a9 a9 a9 a9    	cmp    ecx,0xa9a9a9a9
   6e3e0:	75 11                	jne    inventory_branch_30
   6e3e2:	bb 0e fe 00 00       	mov    ebx,@obj3:inventry_cpp_variable_30                           ; fixup: num: 19138, src obj: 1, src ofs: 0x6e3e3, dst obj: 3, dst ofs: 0xfe0e
   6e3e7:	ba 6d 01 00 00       	mov    edx,0x16d
   6e3ec:	31 c0                	xor    eax,eax
   6e3ee:	e8 3d 9c fc ff       	call   _error_report
inventory_branch_30:
   6e3f3:	83 7c 24 08 ff       	cmp    DWORD PTR [esp+0x8],0xffffffff
   6e3f8:	75 11                	jne    inventory_branch_31
   6e3fa:	bb 28 fe 00 00       	mov    ebx,@obj3:inventry_cpp_variable_31                           ; fixup: num: 19137, src obj: 1, src ofs: 0x6e3fb, dst obj: 3, dst ofs: 0xfe28
   6e3ff:	ba 6f 01 00 00       	mov    edx,0x16f
   6e404:	31 c0                	xor    eax,eax
   6e406:	e8 25 9c fc ff       	call   _error_report
inventory_branch_31:
   6e40b:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
   6e40f:	85 c0                	test   eax,eax
   6e411:	74 0c                	je     inventory_branch_32
   6e413:	31 d2                	xor    edx,edx
   6e415:	e8 06 bb fd ff       	call   W?$dt:TEXTBM$n()_
   6e41a:	e8 59 3c 00 00       	call   W?$dln(pnv)v
inventory_branch_32:
   6e41f:	31 d2                	xor    edx,edx
   6e421:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
inventory_branch_33:
   6e425:	8b 5c 24 28          	mov    ebx,DWORD PTR [esp+0x28]
   6e429:	85 db                	test   ebx,ebx
   6e42b:	0f 84 b0 00 00 00    	je     inventory_branch_36
   6e431:	80 7b 09 00          	cmp    BYTE PTR [ebx+0x9],0x0
   6e435:	0f 84 a6 00 00 00    	je     inventory_branch_36
   6e43b:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 19136, src obj: 1, src ofs: 0x6e43d, dst obj: 3, dst ofs: 0x25974
   6e442:	0f 84 99 00 00 00    	je     inventory_branch_36
   6e448:	80 3d b8 60 02 00 00 	cmp    BYTE PTR ds:@obj3:dragging,0x0                               ; fixup: num: 19028, src obj: 1, src ofs: 0x6e44a, dst obj: 3, dst ofs: 0x260b8
   6e44f:	0f 85 8c 00 00 00    	jne    inventory_branch_36
   6e455:	c6 05 b8 60 02 00 01 	mov    BYTE PTR ds:@obj3:dragging,0x1                               ; fixup: num: 19027, src obj: 1, src ofs: 0x6e457, dst obj: 3, dst ofs: 0x260b8
   6e45c:	e8 2f 9a ff ff       	call   Clear_using_on_bm
   6e461:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
   6e465:	8b 48 14             	mov    ecx,DWORD PTR [eax+0x14]
   6e468:	51                   	push   ecx
   6e469:	68 42 fe 00 00       	push   @obj3:inventry_cpp_variable_32                               ; fixup: num: 19026, src obj: 1, src ofs: 0x6e46a, dst obj: 3, dst ofs: 0xfe42
   6e46e:	8b 35 b0 24 03 00    	mov    esi,DWORD PTR ds:@obj3:using_on_text                         ; fixup: num: 19025, src obj: 1, src ofs: 0x6e470, dst obj: 3, dst ofs: 0x324b0
   6e474:	56                   	push   esi
   6e475:	e8 67 27 00 00       	call   sprintf_
   6e47a:	83 c4 0c             	add    esp,0xc
   6e47d:	b8 50 00 00 00       	mov    eax,0x50
   6e482:	e8 91 3a 00 00       	call   W?$nwn(ui)pnv
   6e487:	89 c6                	mov    esi,eax
   6e489:	85 c0                	test   eax,eax
   6e48b:	74 3d                	je     inventory_branch_34
   6e48d:	6a 00                	push   0x0
   6e48f:	6a 01                	push   0x1
   6e491:	6a ce                	push   0xffffffce
   6e493:	68 ce 01 00 00       	push   0x1ce
   6e498:	8b 15 cc 5b 02 00    	mov    edx,DWORD PTR ds:@obj3:medfont1                              ; fixup: num: 19024, src obj: 1, src ofs: 0x6e49a, dst obj: 3, dst ofs: 0x25bcc
   6e49e:	a1 b0 24 03 00       	mov    eax,ds:@obj3:using_on_text                                   ; fixup: num: 19143, src obj: 1, src ofs: 0x6e49f, dst obj: 3, dst ofs: 0x324b0
   6e4a3:	e8 88 a4 fd ff       	call   stringwidthCFN
   6e4a8:	ba 40 01 00 00       	mov    edx,0x140
   6e4ad:	d1 e8                	shr    eax,1
   6e4af:	b9 4c fe 00 00       	mov    ecx,@obj3:inventry_cpp_variable_33                           ; fixup: num: 19142, src obj: 1, src ofs: 0x6e4b0, dst obj: 3, dst ofs: 0xfe4c
   6e4b4:	29 c2                	sub    edx,eax
   6e4b6:	8b 1d cc 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:medfont1                              ; fixup: num: 19141, src obj: 1, src ofs: 0x6e4b8, dst obj: 3, dst ofs: 0x25bcc
   6e4bc:	52                   	push   edx
   6e4bd:	89 f0                	mov    eax,esi
   6e4bf:	8b 15 b0 24 03 00    	mov    edx,DWORD PTR ds:@obj3:using_on_text                         ; fixup: num: 19140, src obj: 1, src ofs: 0x6e4c1, dst obj: 3, dst ofs: 0x324b0
   6e4c5:	e8 76 ba fd ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiiii)_
inventory_branch_34:
   6e4ca:	a3 ac 24 03 00       	mov    ds:@obj3:using_on_bm,eax                                     ; fixup: num: 19139, src obj: 1, src ofs: 0x6e4cb, dst obj: 3, dst ofs: 0x324ac
   6e4cf:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 19035, src obj: 1, src ofs: 0x6e4d1, dst obj: 3, dst ofs: 0x25974
   6e4d6:	74 09                	je     inventory_branch_36
inventory_branch_35:
   6e4d8:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 19034, src obj: 1, src ofs: 0x6e4da, dst obj: 3, dst ofs: 0x25974
   6e4df:	75 f7                	jne    inventory_branch_35
inventory_branch_36:
   6e4e1:	83 7c 24 28 00       	cmp    DWORD PTR [esp+0x28],0x0
   6e4e6:	0f 84 b5 07 00 00    	je     inventory_branch_103
   6e4ec:	80 3d b8 60 02 00 00 	cmp    BYTE PTR ds:@obj3:dragging,0x0                               ; fixup: num: 19033, src obj: 1, src ofs: 0x6e4ee, dst obj: 3, dst ofs: 0x260b8
   6e4f3:	0f 84 a8 07 00 00    	je     inventory_branch_103
   6e4f9:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
   6e4fd:	80 78 09 00          	cmp    BYTE PTR [eax+0x9],0x0
   6e501:	0f 84 9a 07 00 00    	je     inventory_branch_103
   6e507:	a1 8c 5a 02 00       	mov    eax,ds:@obj3:the_list_variable_1                             ; fixup: num: 19032, src obj: 1, src ofs: 0x6e508, dst obj: 3, dst ofs: 0x25a8c
   6e50c:	89 44 24 2c          	mov    DWORD PTR [esp+0x2c],eax
   6e510:	85 c0                	test   eax,eax
   6e512:	0f 84 2d 03 00 00    	je     inventory_branch_61
inventory_branch_37:
   6e518:	8b 44 24 2c          	mov    eax,DWORD PTR [esp+0x2c]
   6e51c:	83 78 10 00          	cmp    DWORD PTR [eax+0x10],0x0
   6e520:	0f 84 0d 03 00 00    	je     inventory_branch_60
   6e526:	89 c2                	mov    edx,eax
   6e528:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
   6e52c:	e8 cf d1 fc ff       	call   bm_overlaps
   6e531:	84 c0                	test   al,al
   6e533:	0f 84 bf 01 00 00    	je     inventory_branch_53
   6e539:	8b 44 24 2c          	mov    eax,DWORD PTR [esp+0x2c]
   6e53d:	ba 58 fe 00 00       	mov    edx,@obj3:inventry_cpp_variable_34                           ; fixup: num: 19031, src obj: 1, src ofs: 0x6e53e, dst obj: 3, dst ofs: 0xfe58
   6e542:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
   6e545:	e8 e6 7e 00 00       	call   strcmp_
   6e54a:	85 c0                	test   eax,eax
   6e54c:	0f 85 a6 01 00 00    	jne    inventory_branch_53
   6e552:	89 44 24 2c          	mov    DWORD PTR [esp+0x2c],eax
   6e556:	e9 ea 02 00 00       	jmp    inventory_branch_61
inventory_branch_38:
   6e55b:	ba d4 fd 00 00       	mov    edx,@obj3:inventry_cpp_variable_24                           ; fixup: num: 19030, src obj: 1, src ofs: 0x6e55c, dst obj: 3, dst ofs: 0xfdd4
   6e560:	8b 43 10             	mov    eax,DWORD PTR [ebx+0x10]
   6e563:	e8 c8 7e 00 00       	call   strcmp_
   6e568:	85 c0                	test   eax,eax
   6e56a:	0f 85 51 fe ff ff    	jne    inventory_branch_28
   6e570:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 19029, src obj: 1, src ofs: 0x6e572, dst obj: 3, dst ofs: 0x25974
   6e577:	0f 84 44 fe ff ff    	je     inventory_branch_28
inventory_branch_39:
   6e57d:	8a 0d 74 59 02 00    	mov    cl,BYTE PTR ds:@obj3:left_button                             ; fixup: num: 19042, src obj: 1, src ofs: 0x6e57f, dst obj: 3, dst ofs: 0x25974
   6e583:	84 c9                	test   cl,cl
   6e585:	75 f6                	jne    inventory_branch_39
   6e587:	c6 44 24 30 01       	mov    BYTE PTR [esp+0x30],0x1
   6e58c:	88 0d b8 60 02 00    	mov    BYTE PTR ds:@obj3:dragging,cl                                ; fixup: num: 19041, src obj: 1, src ofs: 0x6e58e, dst obj: 3, dst ofs: 0x260b8
   6e592:	e9 2a fe ff ff       	jmp    inventory_branch_28
inventory_branch_40:
   6e597:	8b 4b 3c             	mov    ecx,DWORD PTR [ebx+0x3c]
   6e59a:	83 f9 49             	cmp    ecx,0x49
   6e59d:	7c 17                	jl     inventory_branch_41
   6e59f:	81 f9 34 02 00 00    	cmp    ecx,0x234
   6e5a5:	7f 0f                	jg     inventory_branch_41
   6e5a7:	8b 43 40             	mov    eax,DWORD PTR [ebx+0x40]
   6e5aa:	83 f8 73             	cmp    eax,0x73
   6e5ad:	7c 07                	jl     inventory_branch_41
   6e5af:	3d b3 01 00 00       	cmp    eax,0x1b3
   6e5b4:	7e 48                	jle    inventory_branch_43
inventory_branch_41:
   6e5b6:	ba dd fd 00 00       	mov    edx,@obj3:inventry_cpp_variable_25                           ; fixup: num: 19040, src obj: 1, src ofs: 0x6e5b7, dst obj: 3, dst ofs: 0xfddd
   6e5bb:	8b 43 10             	mov    eax,DWORD PTR [ebx+0x10]
   6e5be:	e8 6d 7e 00 00       	call   strcmp_
   6e5c3:	85 c0                	test   eax,eax
   6e5c5:	74 37                	je     inventory_branch_43
   6e5c7:	ba e7 fd 00 00       	mov    edx,@obj3:inventry_cpp_variable_26                           ; fixup: num: 19039, src obj: 1, src ofs: 0x6e5c8, dst obj: 3, dst ofs: 0xfde7
   6e5cc:	8b 43 10             	mov    eax,DWORD PTR [ebx+0x10]
   6e5cf:	e8 5c 7e 00 00       	call   strcmp_
   6e5d4:	85 c0                	test   eax,eax
   6e5d6:	75 11                	jne    inventory_branch_42
   6e5d8:	ba f1 fd 00 00       	mov    edx,@obj3:inventry_cpp_variable_27                           ; fixup: num: 19038, src obj: 1, src ofs: 0x6e5d9, dst obj: 3, dst ofs: 0xfdf1
   6e5dd:	8b 43 10             	mov    eax,DWORD PTR [ebx+0x10]
   6e5e0:	e8 4b 7e 00 00       	call   strcmp_
   6e5e5:	85 c0                	test   eax,eax
   6e5e7:	74 15                	je     inventory_branch_43
inventory_branch_42:
   6e5e9:	ba fb fd 00 00       	mov    edx,@obj3:inventry_cpp_variable_28                           ; fixup: num: 19037, src obj: 1, src ofs: 0x6e5ea, dst obj: 3, dst ofs: 0xfdfb
   6e5ee:	8b 43 10             	mov    eax,DWORD PTR [ebx+0x10]
   6e5f1:	e8 3a 7e 00 00       	call   strcmp_
   6e5f6:	85 c0                	test   eax,eax
   6e5f8:	0f 85 c3 fd ff ff    	jne    inventory_branch_28
inventory_branch_43:
   6e5fe:	8b 2d bc 5a 02 00    	mov    ebp,DWORD PTR ds:@obj3:object_list                           ; fixup: num: 19036, src obj: 1, src ofs: 0x6e600, dst obj: 3, dst ofs: 0x25abc
   6e604:	85 ed                	test   ebp,ebp
   6e606:	74 1a                	je     inventory_branch_46
inventory_branch_44:
   6e608:	8b 45 30             	mov    eax,DWORD PTR [ebp+0x30]
   6e60b:	85 c0                	test   eax,eax
   6e60d:	74 0c                	je     inventory_branch_45
   6e60f:	8b 53 10             	mov    edx,DWORD PTR [ebx+0x10]
   6e612:	e8 19 7e 00 00       	call   strcmp_
   6e617:	85 c0                	test   eax,eax
   6e619:	74 07                	je     inventory_branch_46
inventory_branch_45:
   6e61b:	8b 6d 54             	mov    ebp,DWORD PTR [ebp+0x54]
   6e61e:	85 ed                	test   ebp,ebp
   6e620:	75 e6                	jne    inventory_branch_44
inventory_branch_46:
   6e622:	85 ed                	test   ebp,ebp
   6e624:	0f 84 97 fd ff ff    	je     inventory_branch_28
   6e62a:	8b 15 2c 41 01 00    	mov    edx,DWORD PTR ds:@obj3:INVENTORY_ROOM                        ; fixup: num: 19048, src obj: 1, src ofs: 0x6e62c, dst obj: 3, dst ofs: 0x1412c
   6e630:	3b 55 3c             	cmp    edx,DWORD PTR [ebp+0x3c]
   6e633:	0f 85 88 fd ff ff    	jne    inventory_branch_28
   6e639:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 19047, src obj: 1, src ofs: 0x6e63b, dst obj: 3, dst ofs: 0x25974
   6e640:	75 09                	jne    inventory_branch_47
   6e642:	80 3d 72 59 02 00 00 	cmp    BYTE PTR ds:@obj3:right_button,0x0                           ; fixup: num: 19046, src obj: 1, src ofs: 0x6e644, dst obj: 3, dst ofs: 0x25972
   6e649:	74 09                	je     inventory_branch_48
inventory_branch_47:
   6e64b:	89 5c 24 28          	mov    DWORD PTR [esp+0x28],ebx
   6e64f:	e9 6d fd ff ff       	jmp    inventory_branch_28
inventory_branch_48:
   6e654:	8b 35 cc 5a 02 00    	mov    esi,DWORD PTR ds:@obj3:text_list                             ; fixup: num: 19045, src obj: 1, src ofs: 0x6e656, dst obj: 3, dst ofs: 0x25acc
   6e65a:	85 f6                	test   esi,esi
   6e65c:	0f 84 5f fd ff ff    	je     inventory_branch_28
inventory_branch_49:
   6e662:	8b 55 44             	mov    edx,DWORD PTR [ebp+0x44]
   6e665:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
   6e668:	e8 c3 7d 00 00       	call   strcmp_
   6e66d:	85 c0                	test   eax,eax
   6e66f:	0f 85 73 00 00 00    	jne    inventory_branch_52
   6e675:	b6 01                	mov    dh,0x1
   6e677:	8b 5c 24 08          	mov    ebx,DWORD PTR [esp+0x8]
   6e67b:	88 74 24 34          	mov    BYTE PTR [esp+0x34],dh
   6e67f:	85 db                	test   ebx,ebx
   6e681:	74 26                	je     inventory_branch_50
   6e683:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
   6e687:	8b 56 10             	mov    edx,DWORD PTR [esi+0x10]
   6e68a:	e8 a1 7d 00 00       	call   strcmp_
   6e68f:	85 c0                	test   eax,eax
   6e691:	0f 84 2a fd ff ff    	je     inventory_branch_28
   6e697:	85 db                	test   ebx,ebx
   6e699:	74 0e                	je     inventory_branch_50
   6e69b:	89 d8                	mov    eax,ebx
   6e69d:	31 d2                	xor    edx,edx
   6e69f:	e8 7c b8 fd ff       	call   W?$dt:TEXTBM$n()_
   6e6a4:	e8 cf 39 00 00       	call   W?$dln(pnv)v
inventory_branch_50:
   6e6a9:	b8 50 00 00 00       	mov    eax,0x50
   6e6ae:	e8 65 38 00 00       	call   W?$nwn(ui)pnv
   6e6b3:	85 c0                	test   eax,eax
   6e6b5:	74 21                	je     inventory_branch_51
   6e6b7:	6a 00                	push   0x0
   6e6b9:	6a f4                	push   0xfffffff4
   6e6bb:	68 9e 01 00 00       	push   0x19e
   6e6c0:	b9 05 fe 00 00       	mov    ecx,@obj3:inventry_cpp_variable_29                           ; fixup: num: 19044, src obj: 1, src ofs: 0x6e6c1, dst obj: 3, dst ofs: 0xfe05
   6e6c5:	68 bc 00 00 00       	push   0xbc
   6e6ca:	8b 1d c4 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:textfont                              ; fixup: num: 19043, src obj: 1, src ofs: 0x6e6cc, dst obj: 3, dst ofs: 0x25bc4
   6e6d0:	8b 56 10             	mov    edx,DWORD PTR [esi+0x10]
   6e6d3:	e8 28 b5 fd ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
inventory_branch_51:
   6e6d8:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
   6e6dc:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
   6e6df:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
   6e6e3:	e9 d9 fc ff ff       	jmp    inventory_branch_28
inventory_branch_52:
   6e6e8:	8b 76 14             	mov    esi,DWORD PTR [esi+0x14]
   6e6eb:	85 f6                	test   esi,esi
   6e6ed:	0f 85 6f ff ff ff    	jne    inventory_branch_49
   6e6f3:	e9 c9 fc ff ff       	jmp    inventory_branch_28
inventory_branch_53:
   6e6f8:	8b 54 24 2c          	mov    edx,DWORD PTR [esp+0x2c]
   6e6fc:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
   6e700:	e8 fb cf fc ff       	call   bm_overlaps
   6e705:	84 c0                	test   al,al
   6e707:	0f 84 22 01 00 00    	je     inventory_branch_59
   6e70d:	8b 44 24 2c          	mov    eax,DWORD PTR [esp+0x2c]
   6e711:	ba 62 fe 00 00       	mov    edx,@obj3:inventry_cpp_variable_35                           ; fixup: num: 19052, src obj: 1, src ofs: 0x6e712, dst obj: 3, dst ofs: 0xfe62
   6e716:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
   6e719:	e8 12 7d 00 00       	call   strcmp_
   6e71e:	85 c0                	test   eax,eax
   6e720:	0f 84 09 01 00 00    	je     inventory_branch_59
   6e726:	8b 54 24 28          	mov    edx,DWORD PTR [esp+0x28]
   6e72a:	8b 44 24 2c          	mov    eax,DWORD PTR [esp+0x2c]
   6e72e:	8b 52 10             	mov    edx,DWORD PTR [edx+0x10]
   6e731:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
   6e734:	e8 f7 7c 00 00       	call   strcmp_
   6e739:	85 c0                	test   eax,eax
   6e73b:	0f 84 ee 00 00 00    	je     inventory_branch_59
   6e741:	8b 44 24 2c          	mov    eax,DWORD PTR [esp+0x2c]
   6e745:	ba 68 fe 00 00       	mov    edx,@obj3:inventry_cpp_variable_36                           ; fixup: num: 19051, src obj: 1, src ofs: 0x6e746, dst obj: 3, dst ofs: 0xfe68
   6e74a:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
   6e74d:	e8 08 2d 00 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   6e752:	85 c0                	test   eax,eax
   6e754:	75 1e                	jne    inventory_branch_54
   6e756:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
   6e75a:	8b 70 14             	mov    esi,DWORD PTR [eax+0x14]
   6e75d:	56                   	push   esi
   6e75e:	68 70 fe 00 00       	push   @obj3:inventry_cpp_variable_37                               ; fixup: num: 19050, src obj: 1, src ofs: 0x6e75f, dst obj: 3, dst ofs: 0xfe70
   6e763:	8b 3d b4 24 03 00    	mov    edi,DWORD PTR ds:@obj3:using_on_temp_text                    ; fixup: num: 19049, src obj: 1, src ofs: 0x6e765, dst obj: 3, dst ofs: 0x324b4
   6e769:	57                   	push   edi
   6e76a:	e8 72 24 00 00       	call   sprintf_
   6e76f:	83 c4 0c             	add    esp,0xc
   6e772:	eb 24                	jmp    inventory_branch_55
inventory_branch_54:
   6e774:	8b 44 24 2c          	mov    eax,DWORD PTR [esp+0x2c]
   6e778:	8b 50 14             	mov    edx,DWORD PTR [eax+0x14]
   6e77b:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
   6e77f:	52                   	push   edx
   6e780:	8b 58 14             	mov    ebx,DWORD PTR [eax+0x14]
   6e783:	53                   	push   ebx
   6e784:	68 7a fe 00 00       	push   @obj3:inventry_cpp_variable_38                               ; fixup: num: 19064, src obj: 1, src ofs: 0x6e785, dst obj: 3, dst ofs: 0xfe7a
   6e789:	8b 0d b4 24 03 00    	mov    ecx,DWORD PTR ds:@obj3:using_on_temp_text                    ; fixup: num: 19063, src obj: 1, src ofs: 0x6e78b, dst obj: 3, dst ofs: 0x324b4
   6e78f:	51                   	push   ecx
   6e790:	e8 4c 24 00 00       	call   sprintf_
   6e795:	83 c4 10             	add    esp,0x10
inventory_branch_55:
   6e798:	8b 15 b0 24 03 00    	mov    edx,DWORD PTR ds:@obj3:using_on_text                         ; fixup: num: 19062, src obj: 1, src ofs: 0x6e79a, dst obj: 3, dst ofs: 0x324b0
   6e79e:	a1 b4 24 03 00       	mov    eax,ds:@obj3:using_on_temp_text                              ; fixup: num: 19061, src obj: 1, src ofs: 0x6e79f, dst obj: 3, dst ofs: 0x324b4
   6e7a3:	e8 88 7c 00 00       	call   strcmp_
   6e7a8:	85 c0                	test   eax,eax
   6e7aa:	0f 84 95 00 00 00    	je     inventory_branch_61
   6e7b0:	e8 db 96 ff ff       	call   Clear_using_on_bm
   6e7b5:	8b 35 b4 24 03 00    	mov    esi,DWORD PTR ds:@obj3:using_on_temp_text                    ; fixup: num: 19060, src obj: 1, src ofs: 0x6e7b7, dst obj: 3, dst ofs: 0x324b4
   6e7bb:	8b 3d b0 24 03 00    	mov    edi,DWORD PTR ds:@obj3:using_on_text                         ; fixup: num: 19059, src obj: 1, src ofs: 0x6e7bd, dst obj: 3, dst ofs: 0x324b0
   6e7c1:	57                   	push   edi
inventory_branch_56:
   6e7c2:	8a 06                	mov    al,BYTE PTR [esi]
   6e7c4:	88 07                	mov    BYTE PTR [edi],al
   6e7c6:	3c 00                	cmp    al,0x0
   6e7c8:	74 10                	je     inventory_branch_57
   6e7ca:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   6e7cd:	83 c6 02             	add    esi,0x2
   6e7d0:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   6e7d3:	83 c7 02             	add    edi,0x2
   6e7d6:	3c 00                	cmp    al,0x0
   6e7d8:	75 e8                	jne    inventory_branch_56
inventory_branch_57:
   6e7da:	5f                   	pop    edi
   6e7db:	b8 50 00 00 00       	mov    eax,0x50
   6e7e0:	e8 33 37 00 00       	call   W?$nwn(ui)pnv
   6e7e5:	89 c6                	mov    esi,eax
   6e7e7:	85 c0                	test   eax,eax
   6e7e9:	74 3d                	je     inventory_branch_58
   6e7eb:	6a 00                	push   0x0
   6e7ed:	6a 01                	push   0x1
   6e7ef:	6a ce                	push   0xffffffce
   6e7f1:	68 ce 01 00 00       	push   0x1ce
   6e7f6:	8b 15 cc 5b 02 00    	mov    edx,DWORD PTR ds:@obj3:medfont1                              ; fixup: num: 19058, src obj: 1, src ofs: 0x6e7f8, dst obj: 3, dst ofs: 0x25bcc
   6e7fc:	a1 b0 24 03 00       	mov    eax,ds:@obj3:using_on_text                                   ; fixup: num: 19057, src obj: 1, src ofs: 0x6e7fd, dst obj: 3, dst ofs: 0x324b0
   6e801:	e8 2a a1 fd ff       	call   stringwidthCFN
   6e806:	ba 40 01 00 00       	mov    edx,0x140
   6e80b:	d1 e8                	shr    eax,1
   6e80d:	b9 87 fe 00 00       	mov    ecx,@obj3:inventry_cpp_variable_39                           ; fixup: num: 19056, src obj: 1, src ofs: 0x6e80e, dst obj: 3, dst ofs: 0xfe87
   6e812:	29 c2                	sub    edx,eax
   6e814:	8b 1d cc 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:medfont1                              ; fixup: num: 19055, src obj: 1, src ofs: 0x6e816, dst obj: 3, dst ofs: 0x25bcc
   6e81a:	52                   	push   edx
   6e81b:	89 f0                	mov    eax,esi
   6e81d:	8b 15 b0 24 03 00    	mov    edx,DWORD PTR ds:@obj3:using_on_text                         ; fixup: num: 19054, src obj: 1, src ofs: 0x6e81f, dst obj: 3, dst ofs: 0x324b0
   6e823:	e8 18 b7 fd ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiiii)_
inventory_branch_58:
   6e828:	a3 ac 24 03 00       	mov    ds:@obj3:using_on_bm,eax                                     ; fixup: num: 19053, src obj: 1, src ofs: 0x6e829, dst obj: 3, dst ofs: 0x324ac
   6e82d:	eb 16                	jmp    inventory_branch_61
inventory_branch_59:
   6e82f:	8b 44 24 2c          	mov    eax,DWORD PTR [esp+0x2c]
inventory_branch_60:
   6e833:	8b 40 44             	mov    eax,DWORD PTR [eax+0x44]
   6e836:	89 44 24 2c          	mov    DWORD PTR [esp+0x2c],eax
   6e83a:	83 7c 24 2c 00       	cmp    DWORD PTR [esp+0x2c],0x0
   6e83f:	0f 85 d3 fc ff ff    	jne    inventory_branch_37
inventory_branch_61:
   6e845:	83 7c 24 2c 00       	cmp    DWORD PTR [esp+0x2c],0x0
   6e84a:	0f 85 be 00 00 00    	jne    inventory_branch_65
   6e850:	80 3d 72 59 02 00 00 	cmp    BYTE PTR ds:@obj3:right_button,0x0                           ; fixup: num: 19073, src obj: 1, src ofs: 0x6e852, dst obj: 3, dst ofs: 0x25972
   6e857:	0f 85 b1 00 00 00    	jne    inventory_branch_65
   6e85d:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
   6e861:	8b 58 14             	mov    ebx,DWORD PTR [eax+0x14]
   6e864:	53                   	push   ebx
   6e865:	68 93 fe 00 00       	push   @obj3:inventry_cpp_variable_40                               ; fixup: num: 19072, src obj: 1, src ofs: 0x6e866, dst obj: 3, dst ofs: 0xfe93
   6e86a:	8b 0d b4 24 03 00    	mov    ecx,DWORD PTR ds:@obj3:using_on_temp_text                    ; fixup: num: 19071, src obj: 1, src ofs: 0x6e86c, dst obj: 3, dst ofs: 0x324b4
   6e870:	51                   	push   ecx
   6e871:	e8 6b 23 00 00       	call   sprintf_
   6e876:	83 c4 0c             	add    esp,0xc
   6e879:	8b 15 b0 24 03 00    	mov    edx,DWORD PTR ds:@obj3:using_on_text                         ; fixup: num: 19070, src obj: 1, src ofs: 0x6e87b, dst obj: 3, dst ofs: 0x324b0
   6e87f:	a1 b4 24 03 00       	mov    eax,ds:@obj3:using_on_temp_text                              ; fixup: num: 19069, src obj: 1, src ofs: 0x6e880, dst obj: 3, dst ofs: 0x324b4
   6e884:	e8 a7 7b 00 00       	call   strcmp_
   6e889:	85 c0                	test   eax,eax
   6e88b:	0f 84 7d 00 00 00    	je     inventory_branch_65
   6e891:	e8 fa 95 ff ff       	call   Clear_using_on_bm
   6e896:	8b 35 b4 24 03 00    	mov    esi,DWORD PTR ds:@obj3:using_on_temp_text                    ; fixup: num: 19068, src obj: 1, src ofs: 0x6e898, dst obj: 3, dst ofs: 0x324b4
   6e89c:	8b 3d b0 24 03 00    	mov    edi,DWORD PTR ds:@obj3:using_on_text                         ; fixup: num: 19067, src obj: 1, src ofs: 0x6e89e, dst obj: 3, dst ofs: 0x324b0
   6e8a2:	57                   	push   edi
inventory_branch_62:
   6e8a3:	8a 06                	mov    al,BYTE PTR [esi]
   6e8a5:	88 07                	mov    BYTE PTR [edi],al
   6e8a7:	3c 00                	cmp    al,0x0
   6e8a9:	74 10                	je     inventory_branch_63
   6e8ab:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   6e8ae:	83 c6 02             	add    esi,0x2
   6e8b1:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   6e8b4:	83 c7 02             	add    edi,0x2
   6e8b7:	3c 00                	cmp    al,0x0
   6e8b9:	75 e8                	jne    inventory_branch_62
inventory_branch_63:
   6e8bb:	5f                   	pop    edi
   6e8bc:	b8 50 00 00 00       	mov    eax,0x50
   6e8c1:	e8 52 36 00 00       	call   W?$nwn(ui)pnv
   6e8c6:	89 c6                	mov    esi,eax
   6e8c8:	85 c0                	test   eax,eax
   6e8ca:	74 3d                	je     inventory_branch_64
   6e8cc:	6a 00                	push   0x0
   6e8ce:	6a 01                	push   0x1
   6e8d0:	6a ce                	push   0xffffffce
   6e8d2:	68 ce 01 00 00       	push   0x1ce
   6e8d7:	8b 15 cc 5b 02 00    	mov    edx,DWORD PTR ds:@obj3:medfont1                              ; fixup: num: 19066, src obj: 1, src ofs: 0x6e8d9, dst obj: 3, dst ofs: 0x25bcc
   6e8dd:	a1 b0 24 03 00       	mov    eax,ds:@obj3:using_on_text                                   ; fixup: num: 19065, src obj: 1, src ofs: 0x6e8de, dst obj: 3, dst ofs: 0x324b0
   6e8e2:	e8 49 a0 fd ff       	call   stringwidthCFN
   6e8e7:	ba 40 01 00 00       	mov    edx,0x140
   6e8ec:	d1 e8                	shr    eax,1
   6e8ee:	b9 9d fe 00 00       	mov    ecx,@obj3:inventry_cpp_variable_41                           ; fixup: num: 18965, src obj: 1, src ofs: 0x6e8ef, dst obj: 3, dst ofs: 0xfe9d
   6e8f3:	29 c2                	sub    edx,eax
   6e8f5:	8b 1d cc 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:medfont1                              ; fixup: num: 18964, src obj: 1, src ofs: 0x6e8f7, dst obj: 3, dst ofs: 0x25bcc
   6e8fb:	52                   	push   edx
   6e8fc:	89 f0                	mov    eax,esi
   6e8fe:	8b 15 b0 24 03 00    	mov    edx,DWORD PTR ds:@obj3:using_on_text                         ; fixup: num: 18963, src obj: 1, src ofs: 0x6e900, dst obj: 3, dst ofs: 0x324b0
   6e904:	e8 37 b6 fd ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiiii)_
inventory_branch_64:
   6e909:	a3 ac 24 03 00       	mov    ds:@obj3:using_on_bm,eax                                     ; fixup: num: 19083, src obj: 1, src ofs: 0x6e90a, dst obj: 3, dst ofs: 0x324ac
inventory_branch_65:
   6e90e:	80 3d 72 59 02 00 00 	cmp    BYTE PTR ds:@obj3:right_button,0x0                           ; fixup: num: 19082, src obj: 1, src ofs: 0x6e910, dst obj: 3, dst ofs: 0x25972
   6e915:	74 31                	je     inventory_branch_67
   6e917:	80 3d b8 60 02 00 00 	cmp    BYTE PTR ds:@obj3:dragging,0x0                               ; fixup: num: 19081, src obj: 1, src ofs: 0x6e919, dst obj: 3, dst ofs: 0x260b8
   6e91e:	74 28                	je     inventory_branch_67
   6e920:	30 db                	xor    bl,bl
   6e922:	88 1d b8 60 02 00    	mov    BYTE PTR ds:@obj3:dragging,bl                                ; fixup: num: 19080, src obj: 1, src ofs: 0x6e924, dst obj: 3, dst ofs: 0x260b8
   6e928:	e8 63 95 ff ff       	call   Clear_using_on_bm
   6e92d:	80 3d 72 59 02 00 00 	cmp    BYTE PTR ds:@obj3:right_button,0x0                           ; fixup: num: 19079, src obj: 1, src ofs: 0x6e92f, dst obj: 3, dst ofs: 0x25972
   6e934:	0f 84 8f f8 ff ff    	je     inventory_branch_17
inventory_branch_66:
   6e93a:	80 3d 72 59 02 00 00 	cmp    BYTE PTR ds:@obj3:right_button,0x0                           ; fixup: num: 19078, src obj: 1, src ofs: 0x6e93c, dst obj: 3, dst ofs: 0x25972
   6e941:	75 f7                	jne    inventory_branch_66
   6e943:	e9 81 f8 ff ff       	jmp    inventory_branch_17
inventory_branch_67:
   6e948:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 19077, src obj: 1, src ofs: 0x6e94a, dst obj: 3, dst ofs: 0x25974
   6e94f:	0f 84 4c 03 00 00    	je     inventory_branch_103
   6e955:	80 3d b8 60 02 00 00 	cmp    BYTE PTR ds:@obj3:dragging,0x0                               ; fixup: num: 19076, src obj: 1, src ofs: 0x6e957, dst obj: 3, dst ofs: 0x260b8
   6e95c:	0f 84 3f 03 00 00    	je     inventory_branch_103
   6e962:	8b 35 8c 5a 02 00    	mov    esi,DWORD PTR ds:@obj3:the_list_variable_1                   ; fixup: num: 19075, src obj: 1, src ofs: 0x6e964, dst obj: 3, dst ofs: 0x25a8c
   6e968:	8b 7c 24 28          	mov    edi,DWORD PTR [esp+0x28]
   6e96c:	85 f6                	test   esi,esi
   6e96e:	0f 84 a0 00 00 00    	je     inventory_branch_70
inventory_branch_68:
   6e974:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
   6e977:	85 c0                	test   eax,eax
   6e979:	0f 84 8a 00 00 00    	je     inventory_branch_69
   6e97f:	39 fe                	cmp    esi,edi
   6e981:	0f 84 82 00 00 00    	je     inventory_branch_69
   6e987:	3b 35 94 60 02 00    	cmp    esi,DWORD PTR ds:@obj3:pointer                               ; fixup: num: 19074, src obj: 1, src ofs: 0x6e989, dst obj: 3, dst ofs: 0x26094
   6e98d:	0f 84 76 00 00 00    	je     inventory_branch_69
   6e993:	83 7e 38 15          	cmp    DWORD PTR [esi+0x38],0x15
   6e997:	0f 8f 6c 00 00 00    	jg     inventory_branch_69
   6e99d:	ba a9 fe 00 00       	mov    edx,@obj3:inventry_cpp_variable_42                           ; fixup: num: 18970, src obj: 1, src ofs: 0x6e99e, dst obj: 3, dst ofs: 0xfea9
   6e9a2:	e8 89 7a 00 00       	call   strcmp_
   6e9a7:	85 c0                	test   eax,eax
   6e9a9:	74 5e                	je     inventory_branch_69
   6e9ab:	8b 46 3c             	mov    eax,DWORD PTR [esi+0x3c]
   6e9ae:	8b 4e 24             	mov    ecx,DWORD PTR [esi+0x24]
   6e9b1:	8b 5e 40             	mov    ebx,DWORD PTR [esi+0x40]
   6e9b4:	8b 56 28             	mov    edx,DWORD PTR [esi+0x28]
   6e9b7:	01 c8                	add    eax,ecx
   6e9b9:	01 d3                	add    ebx,edx
   6e9bb:	89 44 24 20          	mov    DWORD PTR [esp+0x20],eax
   6e9bf:	89 f2                	mov    edx,esi
   6e9c1:	89 f8                	mov    eax,edi
   6e9c3:	e8 38 cd fc ff       	call   bm_overlaps
   6e9c8:	84 c0                	test   al,al
   6e9ca:	74 3d                	je     inventory_branch_69
   6e9cc:	8b 47 40             	mov    eax,DWORD PTR [edi+0x40]
   6e9cf:	29 d8                	sub    eax,ebx
   6e9d1:	8b 57 3c             	mov    edx,DWORD PTR [edi+0x3c]
   6e9d4:	89 c3                	mov    ebx,eax
   6e9d6:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
   6e9da:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
   6e9dd:	29 c2                	sub    edx,eax
   6e9df:	8b 47 04             	mov    eax,DWORD PTR [edi+0x4]
   6e9e2:	e8 f9 bf fc ff       	call   collide
   6e9e7:	84 c0                	test   al,al
   6e9e9:	74 1e                	je     inventory_branch_69
   6e9eb:	80 3d 94 24 03 00 00 	cmp    BYTE PTR ds:@obj3:in_inventory,0x0                           ; fixup: num: 18969, src obj: 1, src ofs: 0x6e9ed, dst obj: 3, dst ofs: 0x32494
   6e9f2:	74 20                	je     inventory_branch_70
   6e9f4:	ba ae fe 00 00       	mov    edx,@obj3:inventry_cpp_variable_43                           ; fixup: num: 18968, src obj: 1, src ofs: 0x6e9f5, dst obj: 3, dst ofs: 0xfeae
   6e9f9:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
   6e9fc:	e8 2f 7a 00 00       	call   strcmp_
   6ea01:	85 c0                	test   eax,eax
   6ea03:	75 0f                	jne    inventory_branch_70
   6ea05:	31 f6                	xor    esi,esi
   6ea07:	eb 0b                	jmp    inventory_branch_70
inventory_branch_69:
   6ea09:	8b 76 44             	mov    esi,DWORD PTR [esi+0x44]
   6ea0c:	85 f6                	test   esi,esi
   6ea0e:	0f 85 60 ff ff ff    	jne    inventory_branch_68
inventory_branch_70:
   6ea14:	85 f6                	test   esi,esi
   6ea16:	75 07                	jne    inventory_branch_71
   6ea18:	30 c0                	xor    al,al
   6ea1a:	e9 37 01 00 00       	jmp    inventory_branch_85
inventory_branch_71:
   6ea1f:	83 7e 38 03          	cmp    DWORD PTR [esi+0x38],0x3
   6ea23:	74 29                	je     inventory_branch_75
   6ea25:	e9 63 00 00 00       	jmp    inventory_branch_79
inventory_branch_72:
   6ea2a:	b8 b8 fe 00 00       	mov    eax,@obj3:inventry_cpp_variable_44                           ; fixup: num: 18967, src obj: 1, src ofs: 0x6ea2b, dst obj: 3, dst ofs: 0xfeb8
   6ea2f:	e8 ac 24 fe ff       	call   execute_command
   6ea34:	eb 47                	jmp    inventory_branch_78
inventory_branch_73:
   6ea36:	b8 c3 fe 00 00       	mov    eax,@obj3:inventry_cpp_variable_45                           ; fixup: num: 18966, src obj: 1, src ofs: 0x6ea37, dst obj: 3, dst ofs: 0xfec3
   6ea3b:	e8 a0 24 fe ff       	call   execute_command
   6ea40:	eb 3b                	jmp    inventory_branch_78
inventory_branch_74:
   6ea42:	b8 ce fe 00 00       	mov    eax,@obj3:inventry_cpp_variable_46                           ; fixup: num: 18975, src obj: 1, src ofs: 0x6ea43, dst obj: 3, dst ofs: 0xfece
   6ea47:	e8 94 24 fe ff       	call   execute_command
   6ea4c:	eb 2f                	jmp    inventory_branch_78
inventory_branch_75:
   6ea4e:	e8 84 7a 00 00       	call   rand_
   6ea53:	89 c2                	mov    edx,eax
   6ea55:	bb 05 00 00 00       	mov    ebx,0x5
   6ea5a:	c1 fa 1f             	sar    edx,0x1f
   6ea5d:	f7 fb                	idiv   ebx
   6ea5f:	89 d0                	mov    eax,edx
   6ea61:	83 fa 01             	cmp    edx,0x1
   6ea64:	72 09                	jb     inventory_branch_76
   6ea66:	76 ce                	jbe    inventory_branch_73
   6ea68:	83 fa 02             	cmp    edx,0x2
   6ea6b:	74 d5                	je     inventory_branch_74
   6ea6d:	eb 04                	jmp    inventory_branch_77
inventory_branch_76:
   6ea6f:	85 d2                	test   edx,edx
   6ea71:	74 b7                	je     inventory_branch_72
inventory_branch_77:
   6ea73:	b8 d9 fe 00 00       	mov    eax,@obj3:inventry_cpp_variable_47                           ; fixup: num: 18974, src obj: 1, src ofs: 0x6ea74, dst obj: 3, dst ofs: 0xfed9
   6ea78:	e8 63 24 fe ff       	call   execute_command
inventory_branch_78:
   6ea7d:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 18973, src obj: 1, src ofs: 0x6ea7f, dst obj: 3, dst ofs: 0x25974
   6ea84:	75 f7                	jne    inventory_branch_78
   6ea86:	30 c0                	xor    al,al
   6ea88:	e9 c9 00 00 00       	jmp    inventory_branch_85
inventory_branch_79:
   6ea8d:	8b 47 10             	mov    eax,DWORD PTR [edi+0x10]
   6ea90:	e8 eb 41 fe ff       	call   get_object
   6ea95:	89 c3                	mov    ebx,eax
   6ea97:	89 c1                	mov    ecx,eax
   6ea99:	85 c0                	test   eax,eax
   6ea9b:	75 07                	jne    inventory_branch_80
   6ea9d:	30 c0                	xor    al,al
   6ea9f:	e9 b2 00 00 00       	jmp    inventory_branch_85
inventory_branch_80:
   6eaa4:	83 7e 38 04          	cmp    DWORD PTR [esi+0x38],0x4
   6eaa8:	0f 85 d8 00 00 00    	jne    inventory_branch_87
   6eaae:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
   6eab1:	e8 aa b6 fb ff       	call   FindHead
   6eab6:	84 c0                	test   al,al
   6eab8:	0f 84 c8 00 00 00    	je     inventory_branch_87
   6eabe:	80 be a0 11 00 00 38 	cmp    BYTE PTR [esi+0x11a0],0x38
   6eac5:	0f 84 bb 00 00 00    	je     inventory_branch_87
   6eacb:	e8 c0 93 ff ff       	call   Clear_using_on_bm
   6ead0:	8b 53 30             	mov    edx,DWORD PTR [ebx+0x30]
   6ead3:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
   6ead6:	e8 75 b3 ff ff       	call   start_dialog
   6eadb:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 18972, src obj: 1, src ofs: 0x6eadc, dst obj: 3, dst ofs: 0x25a84
   6eae0:	e8 bb f1 fd ff       	call   update_mod_84
   6eae5:	80 3d 7e 60 02 00 00 	cmp    BYTE PTR ds:@obj3:faded_in,0x0                               ; fixup: num: 18971, src obj: 1, src ofs: 0x6eae7, dst obj: 3, dst ofs: 0x2607e
   6eaec:	75 5d                	jne    inventory_branch_83
   6eaee:	83 3d 84 60 02 00 00 	cmp    DWORD PTR ds:@obj3:palette,0x0                               ; fixup: num: 18988, src obj: 1, src ofs: 0x6eaf0, dst obj: 3, dst ofs: 0x26084
   6eaf5:	74 54                	je     inventory_branch_83
   6eaf7:	8b 35 c4 5a 02 00    	mov    esi,DWORD PTR ds:@obj3:current_room                          ; fixup: num: 18987, src obj: 1, src ofs: 0x6eaf9, dst obj: 3, dst ofs: 0x25ac4
   6eafd:	85 f6                	test   esi,esi
   6eaff:	74 4a                	je     inventory_branch_83
   6eb01:	80 7e 44 00          	cmp    BYTE PTR [esi+0x44],0x0
   6eb05:	74 22                	je     inventory_branch_81
   6eb07:	b8 e4 fe 00 00       	mov    eax,@obj3:inventry_cpp_variable_48                           ; fixup: num: 18986, src obj: 1, src ofs: 0x6eb08, dst obj: 3, dst ofs: 0xfee4
   6eb0c:	e8 7f dc ff ff       	call   check_script_flag
   6eb11:	84 c0                	test   al,al
   6eb13:	75 14                	jne    inventory_branch_81
   6eb15:	dd 05 b4 0f 01 00    	fld    QWORD PTR ds:@obj3:pal_gamma                                 ; fixup: num: 18985, src obj: 1, src ofs: 0x6eb17, dst obj: 3, dst ofs: 0x10fb4
   6eb1b:	dc 05 ea 04 01 00    	fadd   QWORD PTR ds:@obj3:inventry_cpp_variable_175                 ; fixup: num: 18984, src obj: 1, src ofs: 0x6eb1d, dst obj: 3, dst ofs: 0x104ea
   6eb21:	83 ec 08             	sub    esp,0x8
   6eb24:	dd 1c 24             	fstp   QWORD PTR [esp]
   6eb27:	eb 0d                	jmp    inventory_branch_82
inventory_branch_81:
   6eb29:	8b 3d b8 0f 01 00    	mov    edi,DWORD PTR ds:@obj3:pal_gamma_variable_1                  ; fixup: num: 18983, src obj: 1, src ofs: 0x6eb2b, dst obj: 3, dst ofs: 0x10fb8
   6eb2f:	57                   	push   edi
   6eb30:	a1 b4 0f 01 00       	mov    eax,ds:@obj3:pal_gamma                                       ; fixup: num: 18982, src obj: 1, src ofs: 0x6eb31, dst obj: 3, dst ofs: 0x10fb4
   6eb35:	50                   	push   eax
inventory_branch_82:
   6eb36:	6a 00                	push   0x0
   6eb38:	6a 00                	push   0x0
   6eb3a:	a1 84 60 02 00       	mov    eax,ds:@obj3:palette                                         ; fixup: num: 18981, src obj: 1, src ofs: 0x6eb3b, dst obj: 3, dst ofs: 0x26084
   6eb3f:	e8 ec 4e fa ff       	call   fade
   6eb44:	c6 05 7e 60 02 00 01 	mov    BYTE PTR ds:@obj3:faded_in,0x1                               ; fixup: num: 18980, src obj: 1, src ofs: 0x6eb46, dst obj: 3, dst ofs: 0x2607e
inventory_branch_83:
   6eb4b:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 18979, src obj: 1, src ofs: 0x6eb4d, dst obj: 3, dst ofs: 0x25974
   6eb52:	75 f7                	jne    inventory_branch_83
inventory_branch_84:
   6eb54:	b0 01                	mov    al,0x1
inventory_branch_85:
   6eb56:	84 c0                	test   al,al
   6eb58:	0f 84 3a 01 00 00    	je     inventory_branch_102
   6eb5e:	30 d2                	xor    dl,dl
   6eb60:	88 15 b8 60 02 00    	mov    BYTE PTR ds:@obj3:dragging,dl                                ; fixup: num: 18978, src obj: 1, src ofs: 0x6eb62, dst obj: 3, dst ofs: 0x260b8
   6eb66:	e8 25 93 ff ff       	call   Clear_using_on_bm
   6eb6b:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 18977, src obj: 1, src ofs: 0x6eb6d, dst obj: 3, dst ofs: 0x25974
   6eb72:	0f 84 05 08 00 00    	je     inventory_branch_147
inventory_branch_86:
   6eb78:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 18976, src obj: 1, src ofs: 0x6eb7a, dst obj: 3, dst ofs: 0x25974
   6eb7f:	75 f7                	jne    inventory_branch_86
   6eb81:	e9 f7 07 00 00       	jmp    inventory_branch_147
inventory_branch_87:
   6eb86:	83 7e 38 05          	cmp    DWORD PTR [esi+0x38],0x5
   6eb8a:	75 41                	jne    inventory_branch_89
   6eb8c:	8b 47 10             	mov    eax,DWORD PTR [edi+0x10]
   6eb8f:	e8 ec 40 fe ff       	call   get_object
   6eb94:	89 c1                	mov    ecx,eax
   6eb96:	85 c0                	test   eax,eax
   6eb98:	74 33                	je     inventory_branch_89
   6eb9a:	8b 1d 2c 41 01 00    	mov    ebx,DWORD PTR ds:@obj3:INVENTORY_ROOM                        ; fixup: num: 18997, src obj: 1, src ofs: 0x6eb9c, dst obj: 3, dst ofs: 0x1412c
   6eba0:	3b 58 3c             	cmp    ebx,DWORD PTR [eax+0x3c]
   6eba3:	74 28                	je     inventory_branch_89
   6eba5:	89 fa                	mov    edx,edi
   6eba7:	89 58 3c             	mov    DWORD PTR [eax+0x3c],ebx
   6ebaa:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 18996, src obj: 1, src ofs: 0x6ebab, dst obj: 3, dst ofs: 0x25a88
   6ebaf:	e8 3c db fd ff       	call   remove_bitmap
   6ebb4:	89 f8                	mov    eax,edi
   6ebb6:	31 d2                	xor    edx,edx
   6ebb8:	e8 e3 c7 fc ff       	call   W?$dt:BTMAP$n()_
   6ebbd:	e8 b6 34 00 00       	call   W?$dln(pnv)v
inventory_branch_88:
   6ebc2:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 18995, src obj: 1, src ofs: 0x6ebc4, dst obj: 3, dst ofs: 0x25974
   6ebc9:	75 f7                	jne    inventory_branch_88
   6ebcb:	eb 87                	jmp    inventory_branch_84
inventory_branch_89:
   6ebcd:	8b 1d d4 5a 02 00    	mov    ebx,DWORD PTR ds:@obj3:useitem_list                          ; fixup: num: 18994, src obj: 1, src ofs: 0x6ebcf, dst obj: 3, dst ofs: 0x25ad4
   6ebd3:	85 db                	test   ebx,ebx
   6ebd5:	74 57                	je     inventory_branch_94
inventory_branch_90:
   6ebd7:	8b 13                	mov    edx,DWORD PTR [ebx]
   6ebd9:	8b 41 30             	mov    eax,DWORD PTR [ecx+0x30]
   6ebdc:	e8 4f 78 00 00       	call   strcmp_
   6ebe1:	85 c0                	test   eax,eax
   6ebe3:	75 42                	jne    inventory_branch_93
   6ebe5:	8b 53 08             	mov    edx,DWORD PTR [ebx+0x8]
   6ebe8:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
   6ebeb:	e8 40 78 00 00       	call   strcmp_
   6ebf0:	85 c0                	test   eax,eax
   6ebf2:	75 33                	jne    inventory_branch_93
   6ebf4:	8b 53 0c             	mov    edx,DWORD PTR [ebx+0xc]
   6ebf7:	85 d2                	test   edx,edx
   6ebf9:	74 07                	je     inventory_branch_91
   6ebfb:	89 d0                	mov    eax,edx
   6ebfd:	e8 de 22 fe ff       	call   execute_command
inventory_branch_91:
   6ec02:	c7 05 bc 60 02 00 01 00 00 00 	mov    DWORD PTR ds:@obj3:godeathflic_demands,0x1          ; fixup: num: 18993, src obj: 1, src ofs: 0x6ec04, dst obj: 3, dst ofs: 0x260bc
   6ec0c:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 18992, src obj: 1, src ofs: 0x6ec0e, dst obj: 3, dst ofs: 0x25974
   6ec13:	0f 84 3b ff ff ff    	je     inventory_branch_84
inventory_branch_92:
   6ec19:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 18991, src obj: 1, src ofs: 0x6ec1b, dst obj: 3, dst ofs: 0x25974
   6ec20:	75 f7                	jne    inventory_branch_92
   6ec22:	e9 2d ff ff ff       	jmp    inventory_branch_84
inventory_branch_93:
   6ec27:	8b 5b 10             	mov    ebx,DWORD PTR [ebx+0x10]
   6ec2a:	85 db                	test   ebx,ebx
   6ec2c:	75 a9                	jne    inventory_branch_90
inventory_branch_94:
   6ec2e:	74 29                	je     inventory_branch_98
   6ec30:	e9 1f ff ff ff       	jmp    inventory_branch_84
inventory_branch_95:
   6ec35:	b8 ed fe 00 00       	mov    eax,@obj3:inventry_cpp_variable_49                           ; fixup: num: 18990, src obj: 1, src ofs: 0x6ec36, dst obj: 3, dst ofs: 0xfeed
   6ec3a:	e8 a1 22 fe ff       	call   execute_command
   6ec3f:	eb 47                	jmp    inventory_branch_101
inventory_branch_96:
   6ec41:	b8 f8 fe 00 00       	mov    eax,@obj3:inventry_cpp_variable_50                           ; fixup: num: 18989, src obj: 1, src ofs: 0x6ec42, dst obj: 3, dst ofs: 0xfef8
   6ec46:	e8 95 22 fe ff       	call   execute_command
   6ec4b:	eb 3b                	jmp    inventory_branch_101
inventory_branch_97:
   6ec4d:	b8 03 ff 00 00       	mov    eax,@obj3:inventry_cpp_variable_51                           ; fixup: num: 19005, src obj: 1, src ofs: 0x6ec4e, dst obj: 3, dst ofs: 0xff03
   6ec52:	e8 89 22 fe ff       	call   execute_command
   6ec57:	eb 2f                	jmp    inventory_branch_101
inventory_branch_98:
   6ec59:	e8 79 78 00 00       	call   rand_
   6ec5e:	89 c2                	mov    edx,eax
   6ec60:	bb 05 00 00 00       	mov    ebx,0x5
   6ec65:	c1 fa 1f             	sar    edx,0x1f
   6ec68:	f7 fb                	idiv   ebx
   6ec6a:	89 d0                	mov    eax,edx
   6ec6c:	83 fa 01             	cmp    edx,0x1
   6ec6f:	72 09                	jb     inventory_branch_99
   6ec71:	76 ce                	jbe    inventory_branch_96
   6ec73:	83 fa 02             	cmp    edx,0x2
   6ec76:	74 d5                	je     inventory_branch_97
   6ec78:	eb 04                	jmp    inventory_branch_100
inventory_branch_99:
   6ec7a:	85 d2                	test   edx,edx
   6ec7c:	74 b7                	je     inventory_branch_95
inventory_branch_100:
   6ec7e:	b8 0e ff 00 00       	mov    eax,@obj3:inventry_cpp_variable_52                           ; fixup: num: 19004, src obj: 1, src ofs: 0x6ec7f, dst obj: 3, dst ofs: 0xff0e
   6ec83:	e8 58 22 fe ff       	call   execute_command
inventory_branch_101:
   6ec88:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 19003, src obj: 1, src ofs: 0x6ec8a, dst obj: 3, dst ofs: 0x25974
   6ec8f:	75 f7                	jne    inventory_branch_101
   6ec91:	30 c0                	xor    al,al
   6ec93:	e9 be fe ff ff       	jmp    inventory_branch_85
inventory_branch_102:
   6ec98:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 19002, src obj: 1, src ofs: 0x6ec9a, dst obj: 3, dst ofs: 0x25974
   6ec9f:	75 f7                	jne    inventory_branch_102
inventory_branch_103:
   6eca1:	8b 4c 24 28          	mov    ecx,DWORD PTR [esp+0x28]
   6eca5:	85 c9                	test   ecx,ecx
   6eca7:	0f 84 7c 0f 00 00    	je     inventory_branch_209
   6ecad:	80 79 09 00          	cmp    BYTE PTR [ecx+0x9],0x0
   6ecb1:	0f 84 72 0f 00 00    	je     inventory_branch_209
   6ecb7:	80 3d b8 60 02 00 00 	cmp    BYTE PTR ds:@obj3:dragging,0x0                               ; fixup: num: 19001, src obj: 1, src ofs: 0x6ecb9, dst obj: 3, dst ofs: 0x260b8
   6ecbe:	0f 84 ba 00 00 00    	je     inventory_branch_106
   6ecc4:	8b 54 24 28          	mov    edx,DWORD PTR [esp+0x28]
   6ecc8:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 19000, src obj: 1, src ofs: 0x6ecc9, dst obj: 3, dst ofs: 0x25a88
   6eccd:	e8 1e da fd ff       	call   remove_bitmap
   6ecd2:	a1 98 24 03 00       	mov    eax,ds:@obj3:panel                                           ; fixup: num: 18999, src obj: 1, src ofs: 0x6ecd3, dst obj: 3, dst ofs: 0x32498
   6ecd7:	d9 40 1c             	fld    DWORD PTR [eax+0x1c]
   6ecda:	d8 05 e6 04 01 00    	fadd   DWORD PTR ds:@obj3:inventry_cpp_variable_174                 ; fixup: num: 18998, src obj: 1, src ofs: 0x6ecdc, dst obj: 3, dst ofs: 0x104e6
   6ece0:	83 ec 04             	sub    esp,0x4
   6ece3:	d9 1c 24             	fstp   DWORD PTR [esp]
   6ece6:	8b 54 24 2c          	mov    edx,DWORD PTR [esp+0x2c]
   6ecea:	8b 44 24 2c          	mov    eax,DWORD PTR [esp+0x2c]
   6ecee:	8b 52 30             	mov    edx,DWORD PTR [edx+0x30]
   6ecf1:	8b 40 30             	mov    eax,DWORD PTR [eax+0x30]
   6ecf4:	c1 fa 1f             	sar    edx,0x1f
   6ecf7:	2b c2                	sub    eax,edx
   6ecf9:	d1 f8                	sar    eax,1
   6ecfb:	8b 1d 7c 59 02 00    	mov    ebx,DWORD PTR ds:@obj3:mouse_y                               ; fixup: num: 19015, src obj: 1, src ofs: 0x6ecfd, dst obj: 3, dst ofs: 0x2597c
   6ed01:	8b 54 24 2c          	mov    edx,DWORD PTR [esp+0x2c]
   6ed05:	29 c3                	sub    ebx,eax
   6ed07:	8b 52 2c             	mov    edx,DWORD PTR [edx+0x2c]
   6ed0a:	8b 44 24 2c          	mov    eax,DWORD PTR [esp+0x2c]
   6ed0e:	c1 fa 1f             	sar    edx,0x1f
   6ed11:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
   6ed14:	2b c2                	sub    eax,edx
   6ed16:	d1 f8                	sar    eax,1
   6ed18:	8b 15 78 59 02 00    	mov    edx,DWORD PTR ds:@obj3:mouse_x                               ; fixup: num: 19014, src obj: 1, src ofs: 0x6ed1a, dst obj: 3, dst ofs: 0x25978
   6ed1e:	29 c2                	sub    edx,eax
   6ed20:	8b 44 24 2c          	mov    eax,DWORD PTR [esp+0x2c]
   6ed24:	e8 c7 c9 fc ff       	call   set_xyz
   6ed29:	8b 54 24 28          	mov    edx,DWORD PTR [esp+0x28]
   6ed2d:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 19013, src obj: 1, src ofs: 0x6ed2e, dst obj: 3, dst ofs: 0x25a88
   6ed32:	e8 f9 d3 fd ff       	call   insert_bitmap
   6ed37:	83 3d 78 59 02 00 49 	cmp    DWORD PTR ds:@obj3:mouse_x,0x49                              ; fixup: num: 19012, src obj: 1, src ofs: 0x6ed39, dst obj: 3, dst ofs: 0x25978
   6ed3e:	7c 25                	jl     inventory_branch_104
   6ed40:	81 3d 78 59 02 00 34 02 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x234                    ; fixup: num: 19011, src obj: 1, src ofs: 0x6ed42, dst obj: 3, dst ofs: 0x25978
   6ed4a:	7f 19                	jg     inventory_branch_104
   6ed4c:	83 3d 7c 59 02 00 73 	cmp    DWORD PTR ds:@obj3:mouse_y,0x73                              ; fixup: num: 19010, src obj: 1, src ofs: 0x6ed4e, dst obj: 3, dst ofs: 0x2597c
   6ed53:	7c 10                	jl     inventory_branch_104
   6ed55:	81 3d 7c 59 02 00 9b 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x19b                    ; fixup: num: 19009, src obj: 1, src ofs: 0x6ed57, dst obj: 3, dst ofs: 0x2597c
   6ed5f:	0f 8e ca 0e 00 00    	jle    inventory_branch_210
inventory_branch_104:
   6ed65:	85 ed                	test   ebp,ebp
   6ed67:	74 0b                	je     inventory_branch_105
   6ed69:	a1 c4 5a 02 00       	mov    eax,ds:@obj3:current_room                                    ; fixup: num: 19008, src obj: 1, src ofs: 0x6ed6a, dst obj: 3, dst ofs: 0x25ac4
   6ed6e:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
   6ed71:	89 45 3c             	mov    DWORD PTR [ebp+0x3c],eax
inventory_branch_105:
   6ed74:	c6 44 24 30 01       	mov    BYTE PTR [esp+0x30],0x1
   6ed79:	e9 b1 0e 00 00       	jmp    inventory_branch_210
inventory_branch_106:
   6ed7e:	80 3d 72 59 02 00 00 	cmp    BYTE PTR ds:@obj3:right_button,0x0                           ; fixup: num: 19007, src obj: 1, src ofs: 0x6ed80, dst obj: 3, dst ofs: 0x25972
   6ed85:	0f 84 a4 0e 00 00    	je     inventory_branch_210
   6ed8b:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
   6ed8f:	ba 19 ff 00 00       	mov    edx,@obj3:inventry_cpp_variable_53                           ; fixup: num: 19006, src obj: 1, src ofs: 0x6ed90, dst obj: 3, dst ofs: 0xff19
   6ed94:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
   6ed97:	e8 94 76 00 00       	call   strcmp_
   6ed9c:	85 c0                	test   eax,eax
   6ed9e:	75 0d                	jne    inventory_branch_107
   6eda0:	c7 44 24 24 01 00 00 00 	mov    DWORD PTR [esp+0x24],0x1
   6eda8:	e9 cb 09 00 00       	jmp    inventory_branch_183
inventory_branch_107:
   6edad:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
   6edb1:	ba 21 ff 00 00       	mov    edx,@obj3:inventry_cpp_variable_54                           ; fixup: num: 19020, src obj: 1, src ofs: 0x6edb2, dst obj: 3, dst ofs: 0xff21
   6edb6:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
   6edb9:	e8 9c 26 00 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   6edbe:	85 c0                	test   eax,eax
   6edc0:	75 0d                	jne    inventory_branch_108
   6edc2:	c7 44 24 24 02 00 00 00 	mov    DWORD PTR [esp+0x24],0x2
   6edca:	e9 a9 09 00 00       	jmp    inventory_branch_183
inventory_branch_108:
   6edcf:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
   6edd3:	ba 29 ff 00 00       	mov    edx,@obj3:inventry_cpp_variable_55                           ; fixup: num: 19019, src obj: 1, src ofs: 0x6edd4, dst obj: 3, dst ofs: 0xff29
   6edd8:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
   6eddb:	e8 7a 26 00 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   6ede0:	85 c0                	test   eax,eax
   6ede2:	75 0d                	jne    inventory_branch_109
   6ede4:	c7 44 24 24 03 00 00 00 	mov    DWORD PTR [esp+0x24],0x3
   6edec:	e9 87 09 00 00       	jmp    inventory_branch_183
inventory_branch_109:
   6edf1:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
   6edf5:	ba 31 ff 00 00       	mov    edx,@obj3:inventry_cpp_variable_56                           ; fixup: num: 19018, src obj: 1, src ofs: 0x6edf6, dst obj: 3, dst ofs: 0xff31
   6edfa:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
   6edfd:	e8 58 26 00 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   6ee02:	85 c0                	test   eax,eax
   6ee04:	75 0d                	jne    inventory_branch_110
   6ee06:	c7 44 24 24 04 00 00 00 	mov    DWORD PTR [esp+0x24],0x4
   6ee0e:	e9 65 09 00 00       	jmp    inventory_branch_183
inventory_branch_110:
   6ee13:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
   6ee17:	ba 36 ff 00 00       	mov    edx,@obj3:inventry_cpp_variable_57                           ; fixup: num: 19017, src obj: 1, src ofs: 0x6ee18, dst obj: 3, dst ofs: 0xff36
   6ee1c:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
   6ee1f:	e8 36 26 00 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   6ee24:	85 c0                	test   eax,eax
   6ee26:	75 0d                	jne    inventory_branch_111
   6ee28:	c7 44 24 24 05 00 00 00 	mov    DWORD PTR [esp+0x24],0x5
   6ee30:	e9 43 09 00 00       	jmp    inventory_branch_183
inventory_branch_111:
   6ee35:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
   6ee39:	ba 3c ff 00 00       	mov    edx,@obj3:inventry_cpp_variable_58                           ; fixup: num: 19016, src obj: 1, src ofs: 0x6ee3a, dst obj: 3, dst ofs: 0xff3c
   6ee3e:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
   6ee41:	e8 14 26 00 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   6ee46:	85 c0                	test   eax,eax
   6ee48:	75 0d                	jne    inventory_branch_112
   6ee4a:	c7 44 24 24 06 00 00 00 	mov    DWORD PTR [esp+0x24],0x6
   6ee52:	e9 21 09 00 00       	jmp    inventory_branch_183
inventory_branch_112:
   6ee57:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
   6ee5b:	ba 45 ff 00 00       	mov    edx,@obj3:inventry_cpp_variable_59                           ; fixup: num: 18954, src obj: 1, src ofs: 0x6ee5c, dst obj: 3, dst ofs: 0xff45
   6ee60:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
   6ee63:	e8 f2 25 00 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   6ee68:	85 c0                	test   eax,eax
   6ee6a:	75 0d                	jne    inventory_branch_113
   6ee6c:	c7 44 24 24 07 00 00 00 	mov    DWORD PTR [esp+0x24],0x7
   6ee74:	e9 ff 08 00 00       	jmp    inventory_branch_183
inventory_branch_113:
   6ee79:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
   6ee7d:	ba 4b ff 00 00       	mov    edx,@obj3:inventry_cpp_variable_60                           ; fixup: num: 18953, src obj: 1, src ofs: 0x6ee7e, dst obj: 3, dst ofs: 0xff4b
   6ee82:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
   6ee85:	e8 d0 25 00 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   6ee8a:	85 c0                	test   eax,eax
   6ee8c:	75 0d                	jne    inventory_branch_114
   6ee8e:	c7 44 24 24 08 00 00 00 	mov    DWORD PTR [esp+0x24],0x8
   6ee96:	e9 dd 08 00 00       	jmp    inventory_branch_183
inventory_branch_114:
   6ee9b:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
   6ee9f:	ba 51 ff 00 00       	mov    edx,@obj3:inventry_cpp_variable_61                           ; fixup: num: 19023, src obj: 1, src ofs: 0x6eea0, dst obj: 3, dst ofs: 0xff51
   6eea4:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
   6eea7:	e8 ae 25 00 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   6eeac:	85 c0                	test   eax,eax
   6eeae:	75 0d                	jne    inventory_branch_115
   6eeb0:	c7 44 24 24 09 00 00 00 	mov    DWORD PTR [esp+0x24],0x9
   6eeb8:	e9 bb 08 00 00       	jmp    inventory_branch_183
inventory_branch_115:
   6eebd:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
   6eec1:	ba 59 ff 00 00       	mov    edx,@obj3:inventry_cpp_variable_62                           ; fixup: num: 19022, src obj: 1, src ofs: 0x6eec2, dst obj: 3, dst ofs: 0xff59
   6eec6:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
   6eec9:	e8 8c 25 00 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   6eece:	85 c0                	test   eax,eax
   6eed0:	75 0d                	jne    inventory_branch_116
   6eed2:	c7 44 24 24 0a 00 00 00 	mov    DWORD PTR [esp+0x24],0xa
   6eeda:	e9 99 08 00 00       	jmp    inventory_branch_183
inventory_branch_116:
   6eedf:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
   6eee3:	ba 60 ff 00 00       	mov    edx,@obj3:inventry_cpp_variable_63                           ; fixup: num: 19021, src obj: 1, src ofs: 0x6eee4, dst obj: 3, dst ofs: 0xff60
   6eee8:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
   6eeeb:	e8 6a 25 00 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   6eef0:	85 c0                	test   eax,eax
   6eef2:	75 0d                	jne    inventory_branch_117
   6eef4:	c7 44 24 24 0b 00 00 00 	mov    DWORD PTR [esp+0x24],0xb
   6eefc:	e9 77 08 00 00       	jmp    inventory_branch_183
inventory_branch_117:
   6ef01:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
   6ef05:	ba 6a ff 00 00       	mov    edx,@obj3:inventry_cpp_variable_64                           ; fixup: num: 18959, src obj: 1, src ofs: 0x6ef06, dst obj: 3, dst ofs: 0xff6a
   6ef0a:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
   6ef0d:	e8 48 25 00 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   6ef12:	85 c0                	test   eax,eax
   6ef14:	75 0d                	jne    inventory_branch_118
   6ef16:	c7 44 24 24 0c 00 00 00 	mov    DWORD PTR [esp+0x24],0xc
   6ef1e:	e9 55 08 00 00       	jmp    inventory_branch_183
inventory_branch_118:
   6ef23:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
   6ef27:	ba 71 ff 00 00       	mov    edx,@obj3:inventry_cpp_variable_65                           ; fixup: num: 18958, src obj: 1, src ofs: 0x6ef28, dst obj: 3, dst ofs: 0xff71
   6ef2c:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
   6ef2f:	e8 26 25 00 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   6ef34:	85 c0                	test   eax,eax
   6ef36:	75 0d                	jne    inventory_branch_119
   6ef38:	c7 44 24 24 0d 00 00 00 	mov    DWORD PTR [esp+0x24],0xd
   6ef40:	e9 33 08 00 00       	jmp    inventory_branch_183
inventory_branch_119:
   6ef45:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
   6ef49:	ba 77 ff 00 00       	mov    edx,@obj3:inventry_cpp_variable_66                           ; fixup: num: 18957, src obj: 1, src ofs: 0x6ef4a, dst obj: 3, dst ofs: 0xff77
   6ef4e:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
   6ef51:	e8 04 25 00 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   6ef56:	85 c0                	test   eax,eax
   6ef58:	75 0d                	jne    inventory_branch_120
   6ef5a:	c7 44 24 24 0e 00 00 00 	mov    DWORD PTR [esp+0x24],0xe
   6ef62:	e9 11 08 00 00       	jmp    inventory_branch_183
inventory_branch_120:
   6ef67:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
   6ef6b:	ba 80 ff 00 00       	mov    edx,@obj3:inventry_cpp_variable_67                           ; fixup: num: 18956, src obj: 1, src ofs: 0x6ef6c, dst obj: 3, dst ofs: 0xff80
   6ef70:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
   6ef73:	e8 e2 24 00 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   6ef78:	85 c0                	test   eax,eax
   6ef7a:	75 0d                	jne    inventory_branch_121
   6ef7c:	c7 44 24 24 0f 00 00 00 	mov    DWORD PTR [esp+0x24],0xf
   6ef84:	e9 ef 07 00 00       	jmp    inventory_branch_183
inventory_branch_121:
   6ef89:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
   6ef8d:	ba 8e ff 00 00       	mov    edx,@obj3:inventry_cpp_variable_68                           ; fixup: num: 18955, src obj: 1, src ofs: 0x6ef8e, dst obj: 3, dst ofs: 0xff8e
   6ef92:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
   6ef95:	e8 c0 24 00 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   6ef9a:	85 c0                	test   eax,eax
   6ef9c:	75 0d                	jne    inventory_branch_122
   6ef9e:	c7 44 24 24 10 00 00 00 	mov    DWORD PTR [esp+0x24],0x10
   6efa6:	e9 cd 07 00 00       	jmp    inventory_branch_183
inventory_branch_122:
   6efab:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
   6efaf:	ba 95 ff 00 00       	mov    edx,@obj3:inventry_cpp_variable_69                           ; fixup: num: 18962, src obj: 1, src ofs: 0x6efb0, dst obj: 3, dst ofs: 0xff95
   6efb4:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
   6efb7:	e8 9e 24 00 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   6efbc:	85 c0                	test   eax,eax
   6efbe:	75 0d                	jne    inventory_branch_123
   6efc0:	c7 44 24 24 11 00 00 00 	mov    DWORD PTR [esp+0x24],0x11
   6efc8:	e9 ab 07 00 00       	jmp    inventory_branch_183
inventory_branch_123:
   6efcd:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
   6efd1:	ba 9d ff 00 00       	mov    edx,@obj3:inventry_cpp_variable_70                           ; fixup: num: 18961, src obj: 1, src ofs: 0x6efd2, dst obj: 3, dst ofs: 0xff9d
   6efd6:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
   6efd9:	e8 7c 24 00 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   6efde:	85 c0                	test   eax,eax
   6efe0:	75 0d                	jne    inventory_branch_124
   6efe2:	c7 44 24 24 12 00 00 00 	mov    DWORD PTR [esp+0x24],0x12
   6efea:	e9 89 07 00 00       	jmp    inventory_branch_183
inventory_branch_124:
   6efef:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
   6eff3:	ba a1 ff 00 00       	mov    edx,@obj3:inventry_cpp_variable_71                           ; fixup: num: 18960, src obj: 1, src ofs: 0x6eff4, dst obj: 3, dst ofs: 0xffa1
   6eff8:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
   6effb:	e8 5a 24 00 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   6f000:	85 c0                	test   eax,eax
   6f002:	75 0d                	jne    inventory_branch_125
   6f004:	c7 44 24 24 13 00 00 00 	mov    DWORD PTR [esp+0x24],0x13
   6f00c:	e9 67 07 00 00       	jmp    inventory_branch_183
inventory_branch_125:
   6f011:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
   6f015:	ba a7 ff 00 00       	mov    edx,@obj3:inventry_cpp_variable_72                           ; fixup: num: 19331, src obj: 1, src ofs: 0x6f016, dst obj: 3, dst ofs: 0xffa7
   6f01a:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
   6f01d:	e8 38 24 00 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   6f022:	85 c0                	test   eax,eax
   6f024:	75 0d                	jne    inventory_branch_126
   6f026:	c7 44 24 24 14 00 00 00 	mov    DWORD PTR [esp+0x24],0x14
   6f02e:	e9 45 07 00 00       	jmp    inventory_branch_183
inventory_branch_126:
   6f033:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
   6f037:	ba b1 ff 00 00       	mov    edx,@obj3:inventry_cpp_variable_73                           ; fixup: num: 19330, src obj: 1, src ofs: 0x6f038, dst obj: 3, dst ofs: 0xffb1
   6f03c:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
   6f03f:	e8 16 24 00 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   6f044:	85 c0                	test   eax,eax
   6f046:	75 0a                	jne    inventory_branch_127
   6f048:	a3 c4 40 01 00       	mov    ds:@obj3:item_closeup_index,eax                              ; fixup: num: 19329, src obj: 1, src ofs: 0x6f049, dst obj: 3, dst ofs: 0x140c4
   6f04d:	e9 26 07 00 00       	jmp    inventory_branch_183
inventory_branch_127:
   6f052:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
   6f056:	ba c0 ff 00 00       	mov    edx,@obj3:inventry_cpp_variable_74                           ; fixup: num: 19328, src obj: 1, src ofs: 0x6f057, dst obj: 3, dst ofs: 0xffc0
   6f05b:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
   6f05e:	e8 f7 23 00 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   6f063:	85 c0                	test   eax,eax
   6f065:	75 0f                	jne    inventory_branch_128
   6f067:	c7 05 c4 40 01 00 01 00 00 00 	mov    DWORD PTR ds:@obj3:item_closeup_index,0x1           ; fixup: num: 19340, src obj: 1, src ofs: 0x6f069, dst obj: 3, dst ofs: 0x140c4
   6f071:	e9 02 07 00 00       	jmp    inventory_branch_183
inventory_branch_128:
   6f076:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
   6f07a:	ba c5 ff 00 00       	mov    edx,@obj3:inventry_cpp_variable_75                           ; fixup: num: 19339, src obj: 1, src ofs: 0x6f07b, dst obj: 3, dst ofs: 0xffc5
   6f07f:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
   6f082:	e8 d3 23 00 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   6f087:	85 c0                	test   eax,eax
   6f089:	75 0f                	jne    inventory_branch_129
   6f08b:	c7 05 c4 40 01 00 02 00 00 00 	mov    DWORD PTR ds:@obj3:item_closeup_index,0x2           ; fixup: num: 19338, src obj: 1, src ofs: 0x6f08d, dst obj: 3, dst ofs: 0x140c4
   6f095:	e9 de 06 00 00       	jmp    inventory_branch_183
inventory_branch_129:
   6f09a:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
   6f09e:	ba e7 ff 00 00       	mov    edx,@obj3:inventry_cpp_variable_76                           ; fixup: num: 19337, src obj: 1, src ofs: 0x6f09f, dst obj: 3, dst ofs: 0xffe7
   6f0a3:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
   6f0a6:	e8 af 23 00 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   6f0ab:	85 c0                	test   eax,eax
   6f0ad:	75 0f                	jne    inventory_branch_130
   6f0af:	c7 05 c4 40 01 00 03 00 00 00 	mov    DWORD PTR ds:@obj3:item_closeup_index,0x3           ; fixup: num: 19336, src obj: 1, src ofs: 0x6f0b1, dst obj: 3, dst ofs: 0x140c4
   6f0b9:	e9 ba 06 00 00       	jmp    inventory_branch_183
inventory_branch_130:
   6f0be:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
   6f0c2:	ba ff ff 00 00       	mov    edx,@obj3:inventry_cpp_variable_77                           ; fixup: num: 19335, src obj: 1, src ofs: 0x6f0c3, dst obj: 3, dst ofs: 0xffff
   6f0c7:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
   6f0ca:	e8 8b 23 00 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   6f0cf:	85 c0                	test   eax,eax
   6f0d1:	75 0f                	jne    inventory_branch_131
   6f0d3:	c7 05 c4 40 01 00 04 00 00 00 	mov    DWORD PTR ds:@obj3:item_closeup_index,0x4           ; fixup: num: 19334, src obj: 1, src ofs: 0x6f0d5, dst obj: 3, dst ofs: 0x140c4
   6f0dd:	e9 96 06 00 00       	jmp    inventory_branch_183
inventory_branch_131:
   6f0e2:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
   6f0e6:	ba 10 00 01 00       	mov    edx,@obj3:inventry_cpp_variable_78                           ; fixup: num: 19333, src obj: 1, src ofs: 0x6f0e7, dst obj: 3, dst ofs: 0x10010
   6f0eb:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
   6f0ee:	e8 67 23 00 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   6f0f3:	85 c0                	test   eax,eax
   6f0f5:	75 0f                	jne    inventory_branch_132
   6f0f7:	c7 05 c4 40 01 00 05 00 00 00 	mov    DWORD PTR ds:@obj3:item_closeup_index,0x5           ; fixup: num: 19332, src obj: 1, src ofs: 0x6f0f9, dst obj: 3, dst ofs: 0x140c4
   6f101:	e9 72 06 00 00       	jmp    inventory_branch_183
inventory_branch_132:
   6f106:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
   6f10a:	ba 1d 00 01 00       	mov    edx,@obj3:inventry_cpp_variable_79                           ; fixup: num: 19350, src obj: 1, src ofs: 0x6f10b, dst obj: 3, dst ofs: 0x1001d
   6f10f:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
   6f112:	e8 43 23 00 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   6f117:	85 c0                	test   eax,eax
   6f119:	75 0f                	jne    inventory_branch_133
   6f11b:	c7 05 c4 40 01 00 06 00 00 00 	mov    DWORD PTR ds:@obj3:item_closeup_index,0x6           ; fixup: num: 19349, src obj: 1, src ofs: 0x6f11d, dst obj: 3, dst ofs: 0x140c4
   6f125:	e9 4e 06 00 00       	jmp    inventory_branch_183
inventory_branch_133:
   6f12a:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
   6f12e:	ba 2f 00 01 00       	mov    edx,@obj3:inventry_cpp_variable_80                           ; fixup: num: 19348, src obj: 1, src ofs: 0x6f12f, dst obj: 3, dst ofs: 0x1002f
   6f133:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
   6f136:	e8 1f 23 00 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   6f13b:	85 c0                	test   eax,eax
   6f13d:	75 0f                	jne    inventory_branch_134
   6f13f:	c7 05 c4 40 01 00 07 00 00 00 	mov    DWORD PTR ds:@obj3:item_closeup_index,0x7           ; fixup: num: 19347, src obj: 1, src ofs: 0x6f141, dst obj: 3, dst ofs: 0x140c4
   6f149:	e9 2a 06 00 00       	jmp    inventory_branch_183
inventory_branch_134:
   6f14e:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
   6f152:	ba 4b 00 01 00       	mov    edx,@obj3:inventry_cpp_variable_81                           ; fixup: num: 19346, src obj: 1, src ofs: 0x6f153, dst obj: 3, dst ofs: 0x1004b
   6f157:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
   6f15a:	e8 fb 22 00 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   6f15f:	85 c0                	test   eax,eax
   6f161:	75 0f                	jne    inventory_branch_135
   6f163:	c7 05 c4 40 01 00 08 00 00 00 	mov    DWORD PTR ds:@obj3:item_closeup_index,0x8           ; fixup: num: 19345, src obj: 1, src ofs: 0x6f165, dst obj: 3, dst ofs: 0x140c4
   6f16d:	e9 06 06 00 00       	jmp    inventory_branch_183
inventory_branch_135:
   6f172:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
   6f176:	ba 5c 00 01 00       	mov    edx,@obj3:inventry_cpp_variable_82                           ; fixup: num: 19344, src obj: 1, src ofs: 0x6f177, dst obj: 3, dst ofs: 0x1005c
   6f17b:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
   6f17e:	e8 d7 22 00 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   6f183:	85 c0                	test   eax,eax
   6f185:	75 0f                	jne    inventory_branch_136
   6f187:	c7 05 c4 40 01 00 09 00 00 00 	mov    DWORD PTR ds:@obj3:item_closeup_index,0x9           ; fixup: num: 19343, src obj: 1, src ofs: 0x6f189, dst obj: 3, dst ofs: 0x140c4
   6f191:	e9 e2 05 00 00       	jmp    inventory_branch_183
inventory_branch_136:
   6f196:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
   6f19a:	ba 6c 00 01 00       	mov    edx,@obj3:inventry_cpp_variable_83                           ; fixup: num: 19342, src obj: 1, src ofs: 0x6f19b, dst obj: 3, dst ofs: 0x1006c
   6f19f:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
   6f1a2:	e8 b3 22 00 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   6f1a7:	85 c0                	test   eax,eax
   6f1a9:	75 0f                	jne    inventory_branch_137
   6f1ab:	c7 05 c4 40 01 00 0a 00 00 00 	mov    DWORD PTR ds:@obj3:item_closeup_index,0xa           ; fixup: num: 19341, src obj: 1, src ofs: 0x6f1ad, dst obj: 3, dst ofs: 0x140c4
   6f1b5:	e9 be 05 00 00       	jmp    inventory_branch_183
inventory_branch_137:
   6f1ba:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
   6f1be:	ba 76 00 01 00       	mov    edx,@obj3:inventry_cpp_variable_84                           ; fixup: num: 19360, src obj: 1, src ofs: 0x6f1bf, dst obj: 3, dst ofs: 0x10076
   6f1c3:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
   6f1c6:	e8 8f 22 00 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   6f1cb:	85 c0                	test   eax,eax
   6f1cd:	75 0f                	jne    inventory_branch_138
   6f1cf:	c7 05 c4 40 01 00 0b 00 00 00 	mov    DWORD PTR ds:@obj3:item_closeup_index,0xb           ; fixup: num: 19359, src obj: 1, src ofs: 0x6f1d1, dst obj: 3, dst ofs: 0x140c4
   6f1d9:	e9 9a 05 00 00       	jmp    inventory_branch_183
inventory_branch_138:
   6f1de:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
   6f1e2:	ba 8a 00 01 00       	mov    edx,@obj3:inventry_cpp_variable_85                           ; fixup: num: 19358, src obj: 1, src ofs: 0x6f1e3, dst obj: 3, dst ofs: 0x1008a
   6f1e7:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
   6f1ea:	e8 6b 22 00 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   6f1ef:	85 c0                	test   eax,eax
   6f1f1:	75 0f                	jne    inventory_branch_139
   6f1f3:	c7 05 c4 40 01 00 0c 00 00 00 	mov    DWORD PTR ds:@obj3:item_closeup_index,0xc           ; fixup: num: 19357, src obj: 1, src ofs: 0x6f1f5, dst obj: 3, dst ofs: 0x140c4
   6f1fd:	e9 76 05 00 00       	jmp    inventory_branch_183
inventory_branch_139:
   6f202:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
   6f206:	ba 93 00 01 00       	mov    edx,@obj3:inventry_cpp_variable_86                           ; fixup: num: 19356, src obj: 1, src ofs: 0x6f207, dst obj: 3, dst ofs: 0x10093
   6f20b:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
   6f20e:	e8 47 22 00 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   6f213:	85 c0                	test   eax,eax
   6f215:	75 0f                	jne    inventory_branch_140
   6f217:	c7 05 c4 40 01 00 0d 00 00 00 	mov    DWORD PTR ds:@obj3:item_closeup_index,0xd           ; fixup: num: 19355, src obj: 1, src ofs: 0x6f219, dst obj: 3, dst ofs: 0x140c4
   6f221:	e9 52 05 00 00       	jmp    inventory_branch_183
inventory_branch_140:
   6f226:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
   6f22a:	ba a0 00 01 00       	mov    edx,@obj3:inventry_cpp_variable_87                           ; fixup: num: 19354, src obj: 1, src ofs: 0x6f22b, dst obj: 3, dst ofs: 0x100a0
   6f22f:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
   6f232:	e8 23 22 00 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   6f237:	85 c0                	test   eax,eax
   6f239:	75 0f                	jne    inventory_branch_141
   6f23b:	c7 05 c4 40 01 00 0e 00 00 00 	mov    DWORD PTR ds:@obj3:item_closeup_index,0xe           ; fixup: num: 19353, src obj: 1, src ofs: 0x6f23d, dst obj: 3, dst ofs: 0x140c4
   6f245:	e9 2e 05 00 00       	jmp    inventory_branch_183
inventory_branch_141:
   6f24a:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
   6f24e:	ba a8 00 01 00       	mov    edx,@obj3:inventry_cpp_variable_88                           ; fixup: num: 19352, src obj: 1, src ofs: 0x6f24f, dst obj: 3, dst ofs: 0x100a8
   6f253:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
   6f256:	e8 ff 21 00 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   6f25b:	85 c0                	test   eax,eax
   6f25d:	75 0f                	jne    inventory_branch_142
   6f25f:	c7 05 c4 40 01 00 0f 00 00 00 	mov    DWORD PTR ds:@obj3:item_closeup_index,0xf           ; fixup: num: 19351, src obj: 1, src ofs: 0x6f261, dst obj: 3, dst ofs: 0x140c4
   6f269:	e9 0a 05 00 00       	jmp    inventory_branch_183
inventory_branch_142:
   6f26e:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
   6f272:	ba ba 00 01 00       	mov    edx,@obj3:inventry_cpp_variable_89                           ; fixup: num: 19369, src obj: 1, src ofs: 0x6f273, dst obj: 3, dst ofs: 0x100ba
   6f277:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
   6f27a:	e8 db 21 00 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   6f27f:	85 c0                	test   eax,eax
   6f281:	75 0f                	jne    inventory_branch_143
   6f283:	c7 05 c4 40 01 00 10 00 00 00 	mov    DWORD PTR ds:@obj3:item_closeup_index,0x10          ; fixup: num: 19368, src obj: 1, src ofs: 0x6f285, dst obj: 3, dst ofs: 0x140c4
   6f28d:	e9 e6 04 00 00       	jmp    inventory_branch_183
inventory_branch_143:
   6f292:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
   6f296:	ba c1 00 01 00       	mov    edx,@obj3:inventry_cpp_variable_90                           ; fixup: num: 19367, src obj: 1, src ofs: 0x6f297, dst obj: 3, dst ofs: 0x100c1
   6f29b:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
   6f29e:	e8 b7 21 00 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   6f2a3:	85 c0                	test   eax,eax
   6f2a5:	75 0f                	jne    inventory_branch_144
   6f2a7:	c7 05 c4 40 01 00 11 00 00 00 	mov    DWORD PTR ds:@obj3:item_closeup_index,0x11          ; fixup: num: 19366, src obj: 1, src ofs: 0x6f2a9, dst obj: 3, dst ofs: 0x140c4
   6f2b1:	e9 c2 04 00 00       	jmp    inventory_branch_183
inventory_branch_144:
   6f2b6:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
   6f2ba:	ba c6 00 01 00       	mov    edx,@obj3:inventry_cpp_variable_91                           ; fixup: num: 19365, src obj: 1, src ofs: 0x6f2bb, dst obj: 3, dst ofs: 0x100c6
   6f2bf:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
   6f2c2:	e8 93 21 00 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   6f2c7:	85 c0                	test   eax,eax
   6f2c9:	0f 84 9f 04 00 00    	je     inventory_branch_182
   6f2cf:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
   6f2d3:	ba d0 00 01 00       	mov    edx,@obj3:inventry_cpp_variable_92                           ; fixup: num: 19364, src obj: 1, src ofs: 0x6f2d4, dst obj: 3, dst ofs: 0x100d0
   6f2d8:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
   6f2db:	e8 50 71 00 00       	call   strcmp_
   6f2e0:	85 c0                	test   eax,eax
   6f2e2:	74 6d                	je     inventory_branch_145
   6f2e4:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
   6f2e8:	ba d9 00 01 00       	mov    edx,@obj3:inventry_cpp_variable_93                           ; fixup: num: 19363, src obj: 1, src ofs: 0x6f2e9, dst obj: 3, dst ofs: 0x100d9
   6f2ed:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
   6f2f0:	e8 3b 71 00 00       	call   strcmp_
   6f2f5:	85 c0                	test   eax,eax
   6f2f7:	74 58                	je     inventory_branch_145
   6f2f9:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
   6f2fd:	ba e3 00 01 00       	mov    edx,@obj3:inventry_cpp_variable_94                           ; fixup: num: 19362, src obj: 1, src ofs: 0x6f2fe, dst obj: 3, dst ofs: 0x100e3
   6f302:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
   6f305:	e8 26 71 00 00       	call   strcmp_
   6f30a:	85 c0                	test   eax,eax
   6f30c:	74 43                	je     inventory_branch_145
   6f30e:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
   6f312:	ba eb 00 01 00       	mov    edx,@obj3:inventry_cpp_variable_95                           ; fixup: num: 19361, src obj: 1, src ofs: 0x6f313, dst obj: 3, dst ofs: 0x100eb
   6f317:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
   6f31a:	e8 11 71 00 00       	call   strcmp_
   6f31f:	85 c0                	test   eax,eax
   6f321:	74 2e                	je     inventory_branch_145
   6f323:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
   6f327:	ba f5 00 01 00       	mov    edx,@obj3:inventry_cpp_variable_96                           ; fixup: num: 19376, src obj: 1, src ofs: 0x6f328, dst obj: 3, dst ofs: 0x100f5
   6f32c:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
   6f32f:	e8 fc 70 00 00       	call   strcmp_
   6f334:	85 c0                	test   eax,eax
   6f336:	74 19                	je     inventory_branch_145
   6f338:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
   6f33c:	ba ff 00 01 00       	mov    edx,@obj3:inventry_cpp_variable_97                           ; fixup: num: 19375, src obj: 1, src ofs: 0x6f33d, dst obj: 3, dst ofs: 0x100ff
   6f341:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
   6f344:	e8 e7 70 00 00       	call   strcmp_
   6f349:	85 c0                	test   eax,eax
   6f34b:	0f 85 f3 03 00 00    	jne    inventory_branch_180
inventory_branch_145:
   6f351:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
   6f355:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
   6f358:	e8 23 39 fe ff       	call   get_object
   6f35d:	89 c2                	mov    edx,eax
   6f35f:	85 c0                	test   eax,eax
   6f361:	0f 84 dd 03 00 00    	je     inventory_branch_180
inventory_branch_146:
   6f367:	80 3d 72 59 02 00 00 	cmp    BYTE PTR ds:@obj3:right_button,0x0                           ; fixup: num: 19374, src obj: 1, src ofs: 0x6f369, dst obj: 3, dst ofs: 0x25972
   6f36e:	75 f7                	jne    inventory_branch_146
   6f370:	e8 1b 8b ff ff       	call   Clear_using_on_bm
   6f375:	8b 42 24             	mov    eax,DWORD PTR [edx+0x24]
   6f378:	e8 63 1b fe ff       	call   execute_command
inventory_branch_147:
   6f37d:	8b 15 d4 5b 02 00    	mov    edx,DWORD PTR ds:@obj3:pc                                    ; fixup: num: 19373, src obj: 1, src ofs: 0x6f37f, dst obj: 3, dst ofs: 0x25bd4
   6f383:	db 82 84 11 00 00    	fild   DWORD PTR [edx+0x1184]
   6f389:	dc 1d ce 04 01 00    	fcomp  QWORD PTR ds:@obj3:inventry_cpp_variable_171                 ; fixup: num: 19372, src obj: 1, src ofs: 0x6f38b, dst obj: 3, dst ofs: 0x104ce
   6f38f:	df e0                	fnstsw ax
   6f391:	9e                   	sahf   
   6f392:	0f 83 df 00 00 00    	jae    inventory_branch_155
   6f398:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
   6f39c:	83 f8 04             	cmp    eax,0x4
   6f39f:	0f 84 d2 00 00 00    	je     inventory_branch_155
   6f3a5:	50                   	push   eax
   6f3a6:	8b aa 84 11 00 00    	mov    ebp,DWORD PTR [edx+0x1184]
   6f3ac:	55                   	push   ebp
   6f3ad:	68 09 01 01 00       	push   @obj3:inventry_cpp_variable_98                               ; fixup: num: 19371, src obj: 1, src ofs: 0x6f3ae, dst obj: 3, dst ofs: 0x10109
   6f3b2:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 19370, src obj: 1, src ofs: 0x6f3b3, dst obj: 3, dst ofs: 0x237fc
   6f3b7:	89 c7                	mov    edi,eax
   6f3b9:	e8 23 18 00 00       	call   sprintf_
   6f3be:	89 f8                	mov    eax,edi
   6f3c0:	83 c4 10             	add    esp,0x10
   6f3c3:	83 f8 03             	cmp    eax,0x3
   6f3c6:	75 0c                	jne    inventory_branch_148
   6f3c8:	ba 24 01 01 00       	mov    edx,@obj3:inventry_cpp_variable_99                           ; fixup: num: 19273, src obj: 1, src ofs: 0x6f3c9, dst obj: 3, dst ofs: 0x10124
   6f3cd:	b8 2e 01 01 00       	mov    eax,@obj3:inventry_cpp_variable_100                          ; fixup: num: 19272, src obj: 1, src ofs: 0x6f3ce, dst obj: 3, dst ofs: 0x1012e
   6f3d2:	eb 20                	jmp    inventory_branch_150
inventory_branch_148:
   6f3d4:	83 f8 02             	cmp    eax,0x2
   6f3d7:	75 0c                	jne    inventory_branch_149
   6f3d9:	ba 38 01 01 00       	mov    edx,@obj3:inventry_cpp_variable_101                          ; fixup: num: 19385, src obj: 1, src ofs: 0x6f3da, dst obj: 3, dst ofs: 0x10138
   6f3de:	b8 42 01 01 00       	mov    eax,@obj3:inventry_cpp_variable_102                          ; fixup: num: 19384, src obj: 1, src ofs: 0x6f3df, dst obj: 3, dst ofs: 0x10142
   6f3e3:	eb 0f                	jmp    inventory_branch_150
inventory_branch_149:
   6f3e5:	83 f8 01             	cmp    eax,0x1
   6f3e8:	75 11                	jne    inventory_branch_151
   6f3ea:	ba 4c 01 01 00       	mov    edx,@obj3:inventry_cpp_variable_103                          ; fixup: num: 19383, src obj: 1, src ofs: 0x6f3eb, dst obj: 3, dst ofs: 0x1014c
   6f3ef:	b8 56 01 01 00       	mov    eax,@obj3:inventry_cpp_variable_104                          ; fixup: num: 19382, src obj: 1, src ofs: 0x6f3f0, dst obj: 3, dst ofs: 0x10156
inventory_branch_150:
   6f3f4:	31 db                	xor    ebx,ebx
   6f3f6:	e8 15 3b fe ff       	call   set_object
inventory_branch_151:
   6f3fb:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
   6f3ff:	85 c9                	test   ecx,ecx
   6f401:	74 0e                	je     inventory_branch_152
   6f403:	89 c8                	mov    eax,ecx
   6f405:	31 d2                	xor    edx,edx
   6f407:	e8 94 bf fc ff       	call   W?$dt:BTMAP$n()_
   6f40c:	e8 67 2c 00 00       	call   W?$dln(pnv)v
inventory_branch_152:
   6f411:	bb 01 00 00 00       	mov    ebx,0x1
   6f416:	ba 60 01 01 00       	mov    edx,@obj3:inventry_cpp_variable_105                          ; fixup: num: 19381, src obj: 1, src ofs: 0x6f417, dst obj: 3, dst ofs: 0x10160
   6f41b:	b8 6a 01 01 00       	mov    eax,@obj3:inventry_cpp_variable_106                          ; fixup: num: 19380, src obj: 1, src ofs: 0x6f41c, dst obj: 3, dst ofs: 0x1016a
   6f420:	e8 eb 3a fe ff       	call   set_object
   6f425:	b8 74 01 01 00       	mov    eax,@obj3:inventry_cpp_variable_107                          ; fixup: num: 19379, src obj: 1, src ofs: 0x6f426, dst obj: 3, dst ofs: 0x10174
   6f42a:	be 04 00 00 00       	mov    esi,0x4
   6f42f:	e8 4c 38 fe ff       	call   get_object
   6f434:	89 c2                	mov    edx,eax
   6f436:	b8 4c 00 00 00       	mov    eax,0x4c
   6f43b:	89 74 24 1c          	mov    DWORD PTR [esp+0x1c],esi
   6f43f:	e8 d4 2a 00 00       	call   W?$nwn(ui)pnv
   6f444:	85 c0                	test   eax,eax
   6f446:	74 05                	je     inventory_branch_153
   6f448:	e8 93 ba fc ff       	call   W?$ct:BTMAP$n(pn$_object_type$$)_
inventory_branch_153:
   6f44d:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
   6f451:	85 c0                	test   eax,eax
   6f453:	75 0f                	jne    inventory_branch_154
   6f455:	bb 7e 01 01 00       	mov    ebx,@obj3:inventry_cpp_variable_108                          ; fixup: num: 19378, src obj: 1, src ofs: 0x6f456, dst obj: 3, dst ofs: 0x1017e
   6f45a:	ba 51 02 00 00       	mov    edx,0x251
   6f45f:	e8 cc 8b fc ff       	call   _error_report
inventory_branch_154:
   6f464:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
   6f468:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 19377, src obj: 1, src ofs: 0x6f469, dst obj: 3, dst ofs: 0x25a88
   6f46d:	e8 be cc fd ff       	call   insert_bitmap
   6f472:	e9 cd 02 00 00       	jmp    inventory_branch_180
inventory_branch_155:
   6f477:	8b 15 d4 5b 02 00    	mov    edx,DWORD PTR ds:@obj3:pc                                    ; fixup: num: 19286, src obj: 1, src ofs: 0x6f479, dst obj: 3, dst ofs: 0x25bd4
   6f47d:	db 82 84 11 00 00    	fild   DWORD PTR [edx+0x1184]
   6f483:	dc 1d d6 04 01 00    	fcomp  QWORD PTR ds:@obj3:inventry_cpp_variable_172                 ; fixup: num: 19285, src obj: 1, src ofs: 0x6f485, dst obj: 3, dst ofs: 0x104d6
   6f489:	df e0                	fnstsw ax
   6f48b:	9e                   	sahf   
   6f48c:	0f 83 db 00 00 00    	jae    inventory_branch_163
   6f492:	8b 5c 24 1c          	mov    ebx,DWORD PTR [esp+0x1c]
   6f496:	83 fb 03             	cmp    ebx,0x3
   6f499:	0f 84 ce 00 00 00    	je     inventory_branch_163
   6f49f:	53                   	push   ebx
   6f4a0:	8b aa 84 11 00 00    	mov    ebp,DWORD PTR [edx+0x1184]
   6f4a6:	55                   	push   ebp
   6f4a7:	68 96 01 01 00       	push   @obj3:inventry_cpp_variable_109                              ; fixup: num: 19284, src obj: 1, src ofs: 0x6f4a8, dst obj: 3, dst ofs: 0x10196
   6f4ac:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 19283, src obj: 1, src ofs: 0x6f4ad, dst obj: 3, dst ofs: 0x237fc
   6f4b1:	e8 2b 17 00 00       	call   sprintf_
   6f4b6:	83 c4 10             	add    esp,0x10
   6f4b9:	83 fb 04             	cmp    ebx,0x4
   6f4bc:	75 0c                	jne    inventory_branch_156
   6f4be:	ba b0 01 01 00       	mov    edx,@obj3:inventry_cpp_variable_110                          ; fixup: num: 19282, src obj: 1, src ofs: 0x6f4bf, dst obj: 3, dst ofs: 0x101b0
   6f4c3:	b8 ba 01 01 00       	mov    eax,@obj3:inventry_cpp_variable_111                          ; fixup: num: 19281, src obj: 1, src ofs: 0x6f4c4, dst obj: 3, dst ofs: 0x101ba
   6f4c8:	eb 20                	jmp    inventory_branch_158
inventory_branch_156:
   6f4ca:	83 fb 02             	cmp    ebx,0x2
   6f4cd:	75 0c                	jne    inventory_branch_157
   6f4cf:	ba c4 01 01 00       	mov    edx,@obj3:inventry_cpp_variable_112                          ; fixup: num: 19280, src obj: 1, src ofs: 0x6f4d0, dst obj: 3, dst ofs: 0x101c4
   6f4d4:	b8 ce 01 01 00       	mov    eax,@obj3:inventry_cpp_variable_113                          ; fixup: num: 19279, src obj: 1, src ofs: 0x6f4d5, dst obj: 3, dst ofs: 0x101ce
   6f4d9:	eb 0f                	jmp    inventory_branch_158
inventory_branch_157:
   6f4db:	83 fb 01             	cmp    ebx,0x1
   6f4de:	75 11                	jne    inventory_branch_159
   6f4e0:	ba d8 01 01 00       	mov    edx,@obj3:inventry_cpp_variable_114                          ; fixup: num: 19278, src obj: 1, src ofs: 0x6f4e1, dst obj: 3, dst ofs: 0x101d8
   6f4e5:	b8 e2 01 01 00       	mov    eax,@obj3:inventry_cpp_variable_115                          ; fixup: num: 19277, src obj: 1, src ofs: 0x6f4e6, dst obj: 3, dst ofs: 0x101e2
inventory_branch_158:
   6f4ea:	31 db                	xor    ebx,ebx
   6f4ec:	e8 1f 3a fe ff       	call   set_object
inventory_branch_159:
   6f4f1:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
   6f4f5:	85 c9                	test   ecx,ecx
   6f4f7:	74 0e                	je     inventory_branch_160
   6f4f9:	89 c8                	mov    eax,ecx
   6f4fb:	31 d2                	xor    edx,edx
   6f4fd:	e8 9e be fc ff       	call   W?$dt:BTMAP$n()_
   6f502:	e8 71 2b 00 00       	call   W?$dln(pnv)v
inventory_branch_160:
   6f507:	bb 01 00 00 00       	mov    ebx,0x1
   6f50c:	ba ec 01 01 00       	mov    edx,@obj3:inventry_cpp_variable_116                          ; fixup: num: 19276, src obj: 1, src ofs: 0x6f50d, dst obj: 3, dst ofs: 0x101ec
   6f511:	b8 f6 01 01 00       	mov    eax,@obj3:inventry_cpp_variable_117                          ; fixup: num: 19275, src obj: 1, src ofs: 0x6f512, dst obj: 3, dst ofs: 0x101f6
   6f516:	e8 f5 39 fe ff       	call   set_object
   6f51b:	b8 00 02 01 00       	mov    eax,@obj3:inventry_cpp_variable_118                          ; fixup: num: 19274, src obj: 1, src ofs: 0x6f51c, dst obj: 3, dst ofs: 0x10200
   6f520:	be 03 00 00 00       	mov    esi,0x3
   6f525:	e8 56 37 fe ff       	call   get_object
   6f52a:	89 c2                	mov    edx,eax
   6f52c:	b8 4c 00 00 00       	mov    eax,0x4c
   6f531:	89 74 24 1c          	mov    DWORD PTR [esp+0x1c],esi
   6f535:	e8 de 29 00 00       	call   W?$nwn(ui)pnv
   6f53a:	85 c0                	test   eax,eax
   6f53c:	74 05                	je     inventory_branch_161
   6f53e:	e8 9d b9 fc ff       	call   W?$ct:BTMAP$n(pn$_object_type$$)_
inventory_branch_161:
   6f543:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
   6f547:	85 c0                	test   eax,eax
   6f549:	75 0f                	jne    inventory_branch_162
   6f54b:	bb 0a 02 01 00       	mov    ebx,@obj3:inventry_cpp_variable_119                          ; fixup: num: 19296, src obj: 1, src ofs: 0x6f54c, dst obj: 3, dst ofs: 0x1020a
   6f550:	ba 6a 02 00 00       	mov    edx,0x26a
   6f555:	e8 d6 8a fc ff       	call   _error_report
inventory_branch_162:
   6f55a:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
   6f55e:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 19295, src obj: 1, src ofs: 0x6f55f, dst obj: 3, dst ofs: 0x25a88
   6f563:	e8 c8 cb fd ff       	call   insert_bitmap
   6f568:	e9 d7 01 00 00       	jmp    inventory_branch_180
inventory_branch_163:
   6f56d:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 19294, src obj: 1, src ofs: 0x6f56e, dst obj: 3, dst ofs: 0x25bd4
   6f572:	db 80 84 11 00 00    	fild   DWORD PTR [eax+0x1184]
   6f578:	dc 1d de 04 01 00    	fcomp  QWORD PTR ds:@obj3:inventry_cpp_variable_173                 ; fixup: num: 19293, src obj: 1, src ofs: 0x6f57a, dst obj: 3, dst ofs: 0x104de
   6f57e:	df e0                	fnstsw ax
   6f580:	9e                   	sahf   
   6f581:	0f 83 c1 00 00 00    	jae    inventory_branch_171
   6f587:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
   6f58b:	83 f9 02             	cmp    ecx,0x2
   6f58e:	0f 84 b4 00 00 00    	je     inventory_branch_171
   6f594:	83 f9 04             	cmp    ecx,0x4
   6f597:	75 0c                	jne    inventory_branch_164
   6f599:	ba 22 02 01 00       	mov    edx,@obj3:inventry_cpp_variable_120                          ; fixup: num: 19292, src obj: 1, src ofs: 0x6f59a, dst obj: 3, dst ofs: 0x10222
   6f59e:	b8 2c 02 01 00       	mov    eax,@obj3:inventry_cpp_variable_121                          ; fixup: num: 19291, src obj: 1, src ofs: 0x6f59f, dst obj: 3, dst ofs: 0x1022c
   6f5a3:	eb 20                	jmp    inventory_branch_166
inventory_branch_164:
   6f5a5:	83 f9 03             	cmp    ecx,0x3
   6f5a8:	75 0c                	jne    inventory_branch_165
   6f5aa:	ba 36 02 01 00       	mov    edx,@obj3:inventry_cpp_variable_122                          ; fixup: num: 19290, src obj: 1, src ofs: 0x6f5ab, dst obj: 3, dst ofs: 0x10236
   6f5af:	b8 40 02 01 00       	mov    eax,@obj3:inventry_cpp_variable_123                          ; fixup: num: 19289, src obj: 1, src ofs: 0x6f5b0, dst obj: 3, dst ofs: 0x10240
   6f5b4:	eb 0f                	jmp    inventory_branch_166
inventory_branch_165:
   6f5b6:	83 f9 01             	cmp    ecx,0x1
   6f5b9:	75 11                	jne    inventory_branch_167
   6f5bb:	ba 4a 02 01 00       	mov    edx,@obj3:inventry_cpp_variable_124                          ; fixup: num: 19288, src obj: 1, src ofs: 0x6f5bc, dst obj: 3, dst ofs: 0x1024a
   6f5c0:	b8 54 02 01 00       	mov    eax,@obj3:inventry_cpp_variable_125                          ; fixup: num: 19287, src obj: 1, src ofs: 0x6f5c1, dst obj: 3, dst ofs: 0x10254
inventory_branch_166:
   6f5c5:	31 db                	xor    ebx,ebx
   6f5c7:	e8 44 39 fe ff       	call   set_object
inventory_branch_167:
   6f5cc:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
   6f5d0:	85 c9                	test   ecx,ecx
   6f5d2:	74 0e                	je     inventory_branch_168
   6f5d4:	89 c8                	mov    eax,ecx
   6f5d6:	31 d2                	xor    edx,edx
   6f5d8:	e8 c3 bd fc ff       	call   W?$dt:BTMAP$n()_
   6f5dd:	e8 96 2a 00 00       	call   W?$dln(pnv)v
inventory_branch_168:
   6f5e2:	bb 01 00 00 00       	mov    ebx,0x1
   6f5e7:	ba 5e 02 01 00       	mov    edx,@obj3:inventry_cpp_variable_126                          ; fixup: num: 19304, src obj: 1, src ofs: 0x6f5e8, dst obj: 3, dst ofs: 0x1025e
   6f5ec:	b8 68 02 01 00       	mov    eax,@obj3:inventry_cpp_variable_127                          ; fixup: num: 19303, src obj: 1, src ofs: 0x6f5ed, dst obj: 3, dst ofs: 0x10268
   6f5f1:	e8 1a 39 fe ff       	call   set_object
   6f5f6:	b8 72 02 01 00       	mov    eax,@obj3:inventry_cpp_variable_128                          ; fixup: num: 19302, src obj: 1, src ofs: 0x6f5f7, dst obj: 3, dst ofs: 0x10272
   6f5fb:	be 02 00 00 00       	mov    esi,0x2
   6f600:	e8 7b 36 fe ff       	call   get_object
   6f605:	89 c2                	mov    edx,eax
   6f607:	b8 4c 00 00 00       	mov    eax,0x4c
   6f60c:	89 74 24 1c          	mov    DWORD PTR [esp+0x1c],esi
   6f610:	e8 03 29 00 00       	call   W?$nwn(ui)pnv
   6f615:	85 c0                	test   eax,eax
   6f617:	74 05                	je     inventory_branch_169
   6f619:	e8 c2 b8 fc ff       	call   W?$ct:BTMAP$n(pn$_object_type$$)_
inventory_branch_169:
   6f61e:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
   6f622:	85 c0                	test   eax,eax
   6f624:	75 0f                	jne    inventory_branch_170
   6f626:	bb 7c 02 01 00       	mov    ebx,@obj3:inventry_cpp_variable_129                          ; fixup: num: 19301, src obj: 1, src ofs: 0x6f627, dst obj: 3, dst ofs: 0x1027c
   6f62b:	ba 84 02 00 00       	mov    edx,0x284
   6f630:	e8 fb 89 fc ff       	call   _error_report
inventory_branch_170:
   6f635:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
   6f639:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 19300, src obj: 1, src ofs: 0x6f63a, dst obj: 3, dst ofs: 0x25a88
   6f63e:	e8 ed ca fd ff       	call   insert_bitmap
   6f643:	e9 fc 00 00 00       	jmp    inventory_branch_180
inventory_branch_171:
   6f648:	8b 74 24 1c          	mov    esi,DWORD PTR [esp+0x1c]
   6f64c:	83 fe 01             	cmp    esi,0x1
   6f64f:	0f 84 d0 00 00 00    	je     inventory_branch_179
   6f655:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 19299, src obj: 1, src ofs: 0x6f656, dst obj: 3, dst ofs: 0x25bd4
   6f65a:	56                   	push   esi
   6f65b:	8b 90 84 11 00 00    	mov    edx,DWORD PTR [eax+0x1184]
   6f661:	52                   	push   edx
   6f662:	68 94 02 01 00       	push   @obj3:inventry_cpp_variable_130                              ; fixup: num: 19298, src obj: 1, src ofs: 0x6f663, dst obj: 3, dst ofs: 0x10294
   6f667:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 19297, src obj: 1, src ofs: 0x6f668, dst obj: 3, dst ofs: 0x237fc
   6f66c:	e8 70 15 00 00       	call   sprintf_
   6f671:	83 c4 10             	add    esp,0x10
   6f674:	83 fe 04             	cmp    esi,0x4
   6f677:	75 0c                	jne    inventory_branch_172
   6f679:	ba ad 02 01 00       	mov    edx,@obj3:inventry_cpp_variable_131                          ; fixup: num: 19315, src obj: 1, src ofs: 0x6f67a, dst obj: 3, dst ofs: 0x102ad
   6f67e:	b8 b7 02 01 00       	mov    eax,@obj3:inventry_cpp_variable_132                          ; fixup: num: 19314, src obj: 1, src ofs: 0x6f67f, dst obj: 3, dst ofs: 0x102b7
   6f683:	eb 20                	jmp    inventory_branch_174
inventory_branch_172:
   6f685:	83 fe 03             	cmp    esi,0x3
   6f688:	75 0c                	jne    inventory_branch_173
   6f68a:	ba c1 02 01 00       	mov    edx,@obj3:inventry_cpp_variable_133                          ; fixup: num: 19313, src obj: 1, src ofs: 0x6f68b, dst obj: 3, dst ofs: 0x102c1
   6f68f:	b8 cb 02 01 00       	mov    eax,@obj3:inventry_cpp_variable_134                          ; fixup: num: 19312, src obj: 1, src ofs: 0x6f690, dst obj: 3, dst ofs: 0x102cb
   6f694:	eb 0f                	jmp    inventory_branch_174
inventory_branch_173:
   6f696:	83 fe 02             	cmp    esi,0x2
   6f699:	75 11                	jne    inventory_branch_175
   6f69b:	ba d5 02 01 00       	mov    edx,@obj3:inventry_cpp_variable_135                          ; fixup: num: 19311, src obj: 1, src ofs: 0x6f69c, dst obj: 3, dst ofs: 0x102d5
   6f6a0:	b8 df 02 01 00       	mov    eax,@obj3:inventry_cpp_variable_136                          ; fixup: num: 19310, src obj: 1, src ofs: 0x6f6a1, dst obj: 3, dst ofs: 0x102df
inventory_branch_174:
   6f6a5:	31 db                	xor    ebx,ebx
   6f6a7:	e8 64 38 fe ff       	call   set_object
inventory_branch_175:
   6f6ac:	8b 7c 24 18          	mov    edi,DWORD PTR [esp+0x18]
   6f6b0:	85 ff                	test   edi,edi
   6f6b2:	74 0e                	je     inventory_branch_176
   6f6b4:	89 f8                	mov    eax,edi
   6f6b6:	31 d2                	xor    edx,edx
   6f6b8:	e8 e3 bc fc ff       	call   W?$dt:BTMAP$n()_
   6f6bd:	e8 b6 29 00 00       	call   W?$dln(pnv)v
inventory_branch_176:
   6f6c2:	bb 01 00 00 00       	mov    ebx,0x1
   6f6c7:	ba e9 02 01 00       	mov    edx,@obj3:inventry_cpp_variable_137                          ; fixup: num: 19309, src obj: 1, src ofs: 0x6f6c8, dst obj: 3, dst ofs: 0x102e9
   6f6cc:	b8 f3 02 01 00       	mov    eax,@obj3:inventry_cpp_variable_138                          ; fixup: num: 19308, src obj: 1, src ofs: 0x6f6cd, dst obj: 3, dst ofs: 0x102f3
   6f6d1:	e8 3a 38 fe ff       	call   set_object
   6f6d6:	b8 fd 02 01 00       	mov    eax,@obj3:inventry_cpp_variable_139                          ; fixup: num: 19307, src obj: 1, src ofs: 0x6f6d7, dst obj: 3, dst ofs: 0x102fd
   6f6db:	bd 01 00 00 00       	mov    ebp,0x1
   6f6e0:	e8 9b 35 fe ff       	call   get_object
   6f6e5:	89 c2                	mov    edx,eax
   6f6e7:	b8 4c 00 00 00       	mov    eax,0x4c
   6f6ec:	89 6c 24 1c          	mov    DWORD PTR [esp+0x1c],ebp
   6f6f0:	e8 23 28 00 00       	call   W?$nwn(ui)pnv
   6f6f5:	85 c0                	test   eax,eax
   6f6f7:	74 05                	je     inventory_branch_177
   6f6f9:	e8 e2 b7 fc ff       	call   W?$ct:BTMAP$n(pn$_object_type$$)_
inventory_branch_177:
   6f6fe:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
   6f702:	85 c0                	test   eax,eax
   6f704:	75 0f                	jne    inventory_branch_178
   6f706:	bb 07 03 01 00       	mov    ebx,@obj3:inventry_cpp_variable_140                          ; fixup: num: 19306, src obj: 1, src ofs: 0x6f707, dst obj: 3, dst ofs: 0x10307
   6f70b:	ba 9d 02 00 00       	mov    edx,0x29d
   6f710:	e8 1b 89 fc ff       	call   _error_report
inventory_branch_178:
   6f715:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
   6f719:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 19305, src obj: 1, src ofs: 0x6f71a, dst obj: 3, dst ofs: 0x25a88
   6f71e:	e8 0d ca fd ff       	call   insert_bitmap
   6f723:	eb 1f                	jmp    inventory_branch_180
inventory_branch_179:
   6f725:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 19327, src obj: 1, src ofs: 0x6f726, dst obj: 3, dst ofs: 0x25bd4
   6f72a:	56                   	push   esi
   6f72b:	8b a8 84 11 00 00    	mov    ebp,DWORD PTR [eax+0x1184]
   6f731:	55                   	push   ebp
   6f732:	68 1f 03 01 00       	push   @obj3:inventry_cpp_variable_141                              ; fixup: num: 19326, src obj: 1, src ofs: 0x6f733, dst obj: 3, dst ofs: 0x1031f
   6f737:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 19325, src obj: 1, src ofs: 0x6f738, dst obj: 3, dst ofs: 0x237fc
   6f73c:	e8 a0 14 00 00       	call   sprintf_
   6f741:	83 c4 10             	add    esp,0x10
inventory_branch_180:
   6f744:	bf ff ff ff ff       	mov    edi,0xffffffff
   6f749:	89 7c 24 24          	mov    DWORD PTR [esp+0x24],edi
   6f74d:	89 3d c4 40 01 00    	mov    DWORD PTR ds:@obj3:item_closeup_index,edi                    ; fixup: num: 19324, src obj: 1, src ofs: 0x6f74f, dst obj: 3, dst ofs: 0x140c4
   6f753:	80 3d 72 59 02 00 00 	cmp    BYTE PTR ds:@obj3:right_button,0x0                           ; fixup: num: 19323, src obj: 1, src ofs: 0x6f755, dst obj: 3, dst ofs: 0x25972
   6f75a:	0f 84 69 ea ff ff    	je     inventory_branch_17
inventory_branch_181:
   6f760:	80 3d 72 59 02 00 00 	cmp    BYTE PTR ds:@obj3:right_button,0x0                           ; fixup: num: 19322, src obj: 1, src ofs: 0x6f762, dst obj: 3, dst ofs: 0x25972
   6f767:	75 f7                	jne    inventory_branch_181
   6f769:	e9 5b ea ff ff       	jmp    inventory_branch_17
inventory_branch_182:
   6f76e:	c7 05 c4 40 01 00 12 00 00 00 	mov    DWORD PTR ds:@obj3:item_closeup_index,0x12          ; fixup: num: 19321, src obj: 1, src ofs: 0x6f770, dst obj: 3, dst ofs: 0x140c4
inventory_branch_183:
   6f778:	80 3d 72 59 02 00 00 	cmp    BYTE PTR ds:@obj3:right_button,0x0                           ; fixup: num: 19320, src obj: 1, src ofs: 0x6f77a, dst obj: 3, dst ofs: 0x25972
   6f77f:	75 f7                	jne    inventory_branch_183
   6f781:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
   6f785:	8b 50 10             	mov    edx,DWORD PTR [eax+0x10]
   6f788:	52                   	push   edx
   6f789:	8b 5c 24 28          	mov    ebx,DWORD PTR [esp+0x28]
   6f78d:	53                   	push   ebx
   6f78e:	68 3a 03 01 00       	push   @obj3:inventry_cpp_variable_142                              ; fixup: num: 19319, src obj: 1, src ofs: 0x6f78f, dst obj: 3, dst ofs: 0x1033a
   6f793:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 19318, src obj: 1, src ofs: 0x6f794, dst obj: 3, dst ofs: 0x237fc
   6f798:	e8 44 14 00 00       	call   sprintf_
   6f79d:	8b 0d c4 40 01 00    	mov    ecx,DWORD PTR ds:@obj3:item_closeup_index                    ; fixup: num: 19317, src obj: 1, src ofs: 0x6f79f, dst obj: 3, dst ofs: 0x140c4
   6f7a3:	83 c4 10             	add    esp,0x10
   6f7a6:	83 f9 ff             	cmp    ecx,0xffffffff
   6f7a9:	0f 8e a9 00 00 00    	jle    inventory_branch_188
   6f7af:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
   6f7b3:	85 d2                	test   edx,edx
   6f7b5:	74 12                	je     inventory_branch_184
   6f7b7:	74 10                	je     inventory_branch_184
   6f7b9:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
   6f7bd:	31 d2                	xor    edx,edx
   6f7bf:	e8 5c a7 fd ff       	call   W?$dt:TEXTBM$n()_
   6f7c4:	e8 af 28 00 00       	call   W?$dln(pnv)v
inventory_branch_184:
   6f7c9:	a1 c4 40 01 00       	mov    eax,ds:@obj3:item_closeup_index                              ; fixup: num: 19316, src obj: 1, src ofs: 0x6f7ca, dst obj: 3, dst ofs: 0x140c4
   6f7ce:	b9 ff ff ff ff       	mov    ecx,0xffffffff
   6f7d3:	8b 74 24 18          	mov    esi,DWORD PTR [esp+0x18]
   6f7d7:	8b 04 85 c8 40 01 00 	mov    eax,DWORD PTR [eax*4+@obj3:item_closeup_command]             ; fixup: num: 19224, src obj: 1, src ofs: 0x6f7da, dst obj: 3, dst ofs: 0x140c8
   6f7de:	30 f6                	xor    dh,dh
   6f7e0:	e8 fb 16 fe ff       	call   execute_command
   6f7e5:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 19223, src obj: 1, src ofs: 0x6f7e6, dst obj: 3, dst ofs: 0x1a1d4
   6f7ea:	89 0d c4 40 01 00    	mov    DWORD PTR ds:@obj3:item_closeup_index,ecx                    ; fixup: num: 19222, src obj: 1, src ofs: 0x6f7ec, dst obj: 3, dst ofs: 0x140c4
   6f7f0:	88 35 94 24 03 00    	mov    BYTE PTR ds:@obj3:in_inventory,dh                            ; fixup: num: 19221, src obj: 1, src ofs: 0x6f7f2, dst obj: 3, dst ofs: 0x32494
   6f7f6:	e8 a5 c1 f9 ff       	call   update_mod_9
   6f7fb:	85 f6                	test   esi,esi
   6f7fd:	74 0e                	je     inventory_branch_185
   6f7ff:	89 f0                	mov    eax,esi
   6f801:	31 d2                	xor    edx,edx
   6f803:	e8 98 bb fc ff       	call   W?$dt:BTMAP$n()_
   6f808:	e8 6b 28 00 00       	call   W?$dln(pnv)v
inventory_branch_185:
   6f80d:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 19220, src obj: 1, src ofs: 0x6f80e, dst obj: 3, dst ofs: 0x1a1d4
   6f812:	e8 89 c1 f9 ff       	call   update_mod_9
   6f817:	8b 15 88 5a 02 00    	mov    edx,DWORD PTR ds:@obj3:the_list                              ; fixup: num: 19219, src obj: 1, src ofs: 0x6f819, dst obj: 3, dst ofs: 0x25a88
   6f81d:	85 d2                	test   edx,edx
   6f81f:	0f 84 0e 07 00 00    	je     inventory_branch_226
inventory_branch_186:
   6f825:	83 7a 38 17          	cmp    DWORD PTR [edx+0x38],0x17
   6f829:	75 21                	jne    inventory_branch_187
   6f82b:	80 7a 60 00          	cmp    BYTE PTR [edx+0x60],0x0
   6f82f:	74 1b                	je     inventory_branch_187
   6f831:	c6 42 60 00          	mov    BYTE PTR [edx+0x60],0x0
   6f835:	e8 c8 28 00 00       	call   clock_
   6f83a:	a3 44 7e 01 00       	mov    ds:@obj3:current_time,eax                                    ; fixup: num: 19218, src obj: 1, src ofs: 0x6f83b, dst obj: 3, dst ofs: 0x17e44
   6f83f:	8b 6a 5c             	mov    ebp,DWORD PTR [edx+0x5c]
   6f842:	8b 5a 50             	mov    ebx,DWORD PTR [edx+0x50]
   6f845:	29 e8                	sub    eax,ebp
   6f847:	01 c3                	add    ebx,eax
   6f849:	89 5a 50             	mov    DWORD PTR [edx+0x50],ebx
inventory_branch_187:
   6f84c:	8b 52 48             	mov    edx,DWORD PTR [edx+0x48]
   6f84f:	85 d2                	test   edx,edx
   6f851:	75 d2                	jne    inventory_branch_186
   6f853:	e9 db 06 00 00       	jmp    inventory_branch_226
inventory_branch_188:
   6f858:	83 fb ff             	cmp    ebx,0xffffffff
   6f85b:	0f 8e ce 03 00 00    	jle    inventory_branch_210
   6f861:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 19217, src obj: 1, src ofs: 0x6f862, dst obj: 3, dst ofs: 0x1a1d4
   6f866:	e8 35 c1 f9 ff       	call   update_mod_9
   6f86b:	b8 80 00 00 00       	mov    eax,0x80
   6f870:	e8 1e 1c 00 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   6f875:	89 c6                	mov    esi,eax
   6f877:	85 c0                	test   eax,eax
   6f879:	75 0f                	jne    inventory_branch_189
   6f87b:	bb 51 03 01 00       	mov    ebx,@obj3:inventry_cpp_variable_143                          ; fixup: num: 19216, src obj: 1, src ofs: 0x6f87c, dst obj: 3, dst ofs: 0x10351
   6f880:	ba e3 02 00 00       	mov    edx,0x2e3
   6f885:	e8 a6 87 fc ff       	call   _error_report
inventory_branch_189:
   6f88a:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 19235, src obj: 1, src ofs: 0x6f88b, dst obj: 3, dst ofs: 0x1a1d4
   6f88f:	c6 06 00             	mov    BYTE PTR [esi],0x0
   6f892:	e8 09 c1 f9 ff       	call   update_mod_9
   6f897:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 19234, src obj: 1, src ofs: 0x6f898, dst obj: 3, dst ofs: 0x25bd4
   6f89c:	8b b8 bc 11 00 00    	mov    edi,DWORD PTR [eax+0x11bc]
   6f8a2:	83 ff 02             	cmp    edi,0x2
   6f8a5:	74 25                	je     inventory_branch_190
   6f8a7:	83 ff 03             	cmp    edi,0x3
   6f8aa:	74 20                	je     inventory_branch_190
   6f8ac:	83 ff 04             	cmp    edi,0x4
   6f8af:	74 1b                	je     inventory_branch_190
   6f8b1:	83 ff 05             	cmp    edi,0x5
   6f8b4:	74 16                	je     inventory_branch_190
   6f8b6:	83 ff 0e             	cmp    edi,0xe
   6f8b9:	0f 85 cd 00 00 00    	jne    inventory_branch_198
   6f8bf:	83 3d c0 61 02 00 00 	cmp    DWORD PTR ds:@obj3:num_ammo_on_screen,0x0                    ; fixup: num: 19233, src obj: 1, src ofs: 0x6f8c1, dst obj: 3, dst ofs: 0x261c0
   6f8c6:	0f 84 c0 00 00 00    	je     inventory_branch_198
inventory_branch_190:
   6f8cc:	8b 0d c0 61 02 00    	mov    ecx,DWORD PTR ds:@obj3:num_ammo_on_screen                    ; fixup: num: 19232, src obj: 1, src ofs: 0x6f8ce, dst obj: 3, dst ofs: 0x261c0
   6f8d2:	49                   	dec    ecx
   6f8d3:	85 c9                	test   ecx,ecx
   6f8d5:	0f 8c a9 00 00 00    	jl     inventory_branch_197
   6f8db:	8d 1c 8d 00 00 00 00 	lea    ebx,[ecx*4+0x0]
inventory_branch_191:
   6f8e2:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 19231, src obj: 1, src ofs: 0x6f8e3, dst obj: 3, dst ofs: 0x25bd4
   6f8e7:	83 b8 bc 11 00 00 02 	cmp    DWORD PTR [eax+0x11bc],0x2
   6f8ee:	75 10                	jne    inventory_branch_192
   6f8f0:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 19230, src obj: 1, src ofs: 0x6f8f1, dst obj: 3, dst ofs: 0x25a88
   6f8f5:	8b 93 20 61 02 00    	mov    edx,DWORD PTR [ebx+@obj3:nail]                               ; fixup: num: 19229, src obj: 1, src ofs: 0x6f8f7, dst obj: 3, dst ofs: 0x26120
   6f8fb:	e8 f0 cd fd ff       	call   remove_bitmap
inventory_branch_192:
   6f900:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 19228, src obj: 1, src ofs: 0x6f901, dst obj: 3, dst ofs: 0x25bd4
   6f905:	83 b8 bc 11 00 00 03 	cmp    DWORD PTR [eax+0x11bc],0x3
   6f90c:	75 10                	jne    inventory_branch_193
   6f90e:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 19227, src obj: 1, src ofs: 0x6f90f, dst obj: 3, dst ofs: 0x25a88
   6f913:	8b 93 e0 60 02 00    	mov    edx,DWORD PTR [ebx+@obj3:shotshel]                           ; fixup: num: 19226, src obj: 1, src ofs: 0x6f915, dst obj: 3, dst ofs: 0x260e0
   6f919:	e8 d2 cd fd ff       	call   remove_bitmap
inventory_branch_193:
   6f91e:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 19225, src obj: 1, src ofs: 0x6f91f, dst obj: 3, dst ofs: 0x25bd4
   6f923:	83 b8 bc 11 00 00 04 	cmp    DWORD PTR [eax+0x11bc],0x4
   6f92a:	75 10                	jne    inventory_branch_194
   6f92c:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 19248, src obj: 1, src ofs: 0x6f92d, dst obj: 3, dst ofs: 0x25a88
   6f931:	8b 93 a0 61 02 00    	mov    edx,DWORD PTR [ebx+@obj3:mmbullet]                           ; fixup: num: 19247, src obj: 1, src ofs: 0x6f933, dst obj: 3, dst ofs: 0x261a0
   6f937:	e8 b4 cd fd ff       	call   remove_bitmap
inventory_branch_194:
   6f93c:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 19246, src obj: 1, src ofs: 0x6f93d, dst obj: 3, dst ofs: 0x25bd4
   6f941:	83 b8 bc 11 00 00 05 	cmp    DWORD PTR [eax+0x11bc],0x5
   6f948:	75 10                	jne    inventory_branch_195
   6f94a:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 19245, src obj: 1, src ofs: 0x6f94b, dst obj: 3, dst ofs: 0x25a88
   6f94f:	8b 93 c8 60 02 00    	mov    edx,DWORD PTR [ebx+@obj3:bullet]                             ; fixup: num: 19244, src obj: 1, src ofs: 0x6f951, dst obj: 3, dst ofs: 0x260c8
   6f955:	e8 96 cd fd ff       	call   remove_bitmap
inventory_branch_195:
   6f95a:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 19243, src obj: 1, src ofs: 0x6f95b, dst obj: 3, dst ofs: 0x25bd4
   6f95f:	83 b8 bc 11 00 00 0e 	cmp    DWORD PTR [eax+0x11bc],0xe
   6f966:	75 10                	jne    inventory_branch_196
   6f968:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 19242, src obj: 1, src ofs: 0x6f969, dst obj: 3, dst ofs: 0x25a88
   6f96d:	8b 93 60 61 02 00    	mov    edx,DWORD PTR [ebx+@obj3:gascan]                             ; fixup: num: 19241, src obj: 1, src ofs: 0x6f96f, dst obj: 3, dst ofs: 0x26160
   6f973:	e8 78 cd fd ff       	call   remove_bitmap
inventory_branch_196:
   6f978:	83 eb 04             	sub    ebx,0x4
   6f97b:	49                   	dec    ecx
   6f97c:	85 db                	test   ebx,ebx
   6f97e:	0f 8d 5e ff ff ff    	jge    inventory_branch_191
inventory_branch_197:
   6f984:	31 ff                	xor    edi,edi
   6f986:	89 3d c0 61 02 00    	mov    DWORD PTR ds:@obj3:num_ammo_on_screen,edi                    ; fixup: num: 19240, src obj: 1, src ofs: 0x6f988, dst obj: 3, dst ofs: 0x261c0
inventory_branch_198:
   6f98c:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 19239, src obj: 1, src ofs: 0x6f98d, dst obj: 3, dst ofs: 0x1a1d4
   6f991:	e8 0a c0 f9 ff       	call   update_mod_9
   6f996:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 19238, src obj: 1, src ofs: 0x6f997, dst obj: 3, dst ofs: 0x25bd4
   6f99b:	8b 5c 24 24          	mov    ebx,DWORD PTR [esp+0x24]
   6f99f:	3b 98 bc 11 00 00    	cmp    ebx,DWORD PTR [eax+0x11bc]
   6f9a5:	75 6e                	jne    inventory_branch_199
   6f9a7:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 19237, src obj: 1, src ofs: 0x6f9a8, dst obj: 3, dst ofs: 0x1a1d4
   6f9ac:	e8 ef bf f9 ff       	call   update_mod_9
   6f9b1:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
   6f9b5:	8b 48 14             	mov    ecx,DWORD PTR [eax+0x14]
   6f9b8:	51                   	push   ecx
   6f9b9:	68 69 03 01 00       	push   @obj3:inventry_cpp_variable_144                              ; fixup: num: 19236, src obj: 1, src ofs: 0x6f9ba, dst obj: 3, dst ofs: 0x10369
   6f9be:	31 db                	xor    ebx,ebx
   6f9c0:	56                   	push   esi
   6f9c1:	89 5c 24 30          	mov    DWORD PTR [esp+0x30],ebx
   6f9c5:	e8 17 12 00 00       	call   sprintf_
   6f9ca:	83 c4 0c             	add    esp,0xc
   6f9cd:	b8 50 00 00 00       	mov    eax,0x50
   6f9d2:	e8 41 25 00 00       	call   W?$nwn(ui)pnv
   6f9d7:	85 c0                	test   eax,eax
   6f9d9:	0f 84 5a 01 00 00    	je     inventory_branch_206
   6f9df:	8b 15 9c 24 03 00    	mov    edx,DWORD PTR ds:@obj3:text_box1                             ; fixup: num: 19258, src obj: 1, src ofs: 0x6f9e1, dst obj: 3, dst ofs: 0x3249c
   6f9e5:	53                   	push   ebx
   6f9e6:	8b 1a                	mov    ebx,DWORD PTR [edx]
   6f9e8:	8b 1b                	mov    ebx,DWORD PTR [ebx]
   6f9ea:	83 eb 02             	sub    ebx,0x2
   6f9ed:	53                   	push   ebx
   6f9ee:	8b 5a 40             	mov    ebx,DWORD PTR [edx+0x40]
   6f9f1:	6a d3                	push   0xffffffd3
   6f9f3:	83 c3 05             	add    ebx,0x5
   6f9f6:	8b 52 3c             	mov    edx,DWORD PTR [edx+0x3c]
   6f9f9:	53                   	push   ebx
   6f9fa:	83 c2 0a             	add    edx,0xa
   6f9fd:	b9 79 03 01 00       	mov    ecx,@obj3:inventry_cpp_variable_145                          ; fixup: num: 19257, src obj: 1, src ofs: 0x6f9fe, dst obj: 3, dst ofs: 0x10379
   6fa02:	52                   	push   edx
   6fa03:	8b 1d c4 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:textfont                              ; fixup: num: 19256, src obj: 1, src ofs: 0x6fa05, dst obj: 3, dst ofs: 0x25bc4
   6fa09:	89 f2                	mov    edx,esi
   6fa0b:	e8 30 a5 fd ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiiii)_
   6fa10:	e9 24 01 00 00       	jmp    inventory_branch_206
inventory_branch_199:
   6fa15:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 19255, src obj: 1, src ofs: 0x6fa16, dst obj: 3, dst ofs: 0x1a1d4
   6fa1a:	e8 81 bf f9 ff       	call   update_mod_9
   6fa1f:	83 fb 02             	cmp    ebx,0x2
   6fa22:	75 22                	jne    inventory_branch_200
   6fa24:	8b 3d 5c 5b 02 00    	mov    edi,DWORD PTR ds:@obj3:nails                                 ; fixup: num: 19254, src obj: 1, src ofs: 0x6fa26, dst obj: 3, dst ofs: 0x25b5c
   6fa2a:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
   6fa2e:	57                   	push   edi
   6fa2f:	8b 50 14             	mov    edx,DWORD PTR [eax+0x14]
   6fa32:	52                   	push   edx
   6fa33:	68 7f 03 01 00       	push   @obj3:inventry_cpp_variable_146                              ; fixup: num: 19253, src obj: 1, src ofs: 0x6fa34, dst obj: 3, dst ofs: 0x1037f
   6fa38:	56                   	push   esi
   6fa39:	e8 a3 11 00 00       	call   sprintf_
   6fa3e:	83 c4 10             	add    esp,0x10
   6fa41:	e9 a9 00 00 00       	jmp    inventory_branch_205
inventory_branch_200:
   6fa46:	83 fb 03             	cmp    ebx,0x3
   6fa49:	75 22                	jne    inventory_branch_201
   6fa4b:	8b 1d 6c 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:shotgun_shells                        ; fixup: num: 19252, src obj: 1, src ofs: 0x6fa4d, dst obj: 3, dst ofs: 0x25b6c
   6fa51:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
   6fa55:	53                   	push   ebx
   6fa56:	8b 48 14             	mov    ecx,DWORD PTR [eax+0x14]
   6fa59:	51                   	push   ecx
   6fa5a:	68 96 03 01 00       	push   @obj3:inventry_cpp_variable_147                              ; fixup: num: 19251, src obj: 1, src ofs: 0x6fa5b, dst obj: 3, dst ofs: 0x10396
   6fa5f:	56                   	push   esi
   6fa60:	e8 7c 11 00 00       	call   sprintf_
   6fa65:	83 c4 10             	add    esp,0x10
   6fa68:	e9 82 00 00 00       	jmp    inventory_branch_205
inventory_branch_201:
   6fa6d:	83 fb 04             	cmp    ebx,0x4
   6fa70:	75 1f                	jne    inventory_branch_202
   6fa72:	8b 3d 68 5b 02 00    	mov    edi,DWORD PTR ds:@obj3:mmbullets                             ; fixup: num: 19250, src obj: 1, src ofs: 0x6fa74, dst obj: 3, dst ofs: 0x25b68
   6fa78:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
   6fa7c:	57                   	push   edi
   6fa7d:	8b 50 14             	mov    edx,DWORD PTR [eax+0x14]
   6fa80:	52                   	push   edx
   6fa81:	68 ae 03 01 00       	push   @obj3:inventry_cpp_variable_148                              ; fixup: num: 19249, src obj: 1, src ofs: 0x6fa82, dst obj: 3, dst ofs: 0x103ae
   6fa86:	56                   	push   esi
   6fa87:	e8 55 11 00 00       	call   sprintf_
   6fa8c:	83 c4 10             	add    esp,0x10
   6fa8f:	eb 5e                	jmp    inventory_branch_205
inventory_branch_202:
   6fa91:	83 fb 05             	cmp    ebx,0x5
   6fa94:	75 1f                	jne    inventory_branch_203
   6fa96:	8b 1d 64 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:bullets                               ; fixup: num: 19267, src obj: 1, src ofs: 0x6fa98, dst obj: 3, dst ofs: 0x25b64
   6fa9c:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
   6faa0:	53                   	push   ebx
   6faa1:	8b 48 14             	mov    ecx,DWORD PTR [eax+0x14]
   6faa4:	51                   	push   ecx
   6faa5:	68 c7 03 01 00       	push   @obj3:inventry_cpp_variable_149                              ; fixup: num: 19266, src obj: 1, src ofs: 0x6faa6, dst obj: 3, dst ofs: 0x103c7
   6faaa:	56                   	push   esi
   6faab:	e8 31 11 00 00       	call   sprintf_
   6fab0:	83 c4 10             	add    esp,0x10
   6fab3:	eb 3a                	jmp    inventory_branch_205
inventory_branch_203:
   6fab5:	83 fb 0e             	cmp    ebx,0xe
   6fab8:	75 1f                	jne    inventory_branch_204
   6faba:	8b 3d 60 5b 02 00    	mov    edi,DWORD PTR ds:@obj3:gascans                               ; fixup: num: 19265, src obj: 1, src ofs: 0x6fabc, dst obj: 3, dst ofs: 0x25b60
   6fac0:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
   6fac4:	57                   	push   edi
   6fac5:	8b 50 14             	mov    edx,DWORD PTR [eax+0x14]
   6fac8:	52                   	push   edx
   6fac9:	68 e0 03 01 00       	push   @obj3:inventry_cpp_variable_150                              ; fixup: num: 19264, src obj: 1, src ofs: 0x6faca, dst obj: 3, dst ofs: 0x103e0
   6face:	56                   	push   esi
   6facf:	e8 0d 11 00 00       	call   sprintf_
   6fad4:	83 c4 10             	add    esp,0x10
   6fad7:	eb 16                	jmp    inventory_branch_205
inventory_branch_204:
   6fad9:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
   6fadd:	8b 48 14             	mov    ecx,DWORD PTR [eax+0x14]
   6fae0:	51                   	push   ecx
   6fae1:	68 f5 03 01 00       	push   @obj3:inventry_cpp_variable_151                              ; fixup: num: 19263, src obj: 1, src ofs: 0x6fae2, dst obj: 3, dst ofs: 0x103f5
   6fae6:	56                   	push   esi
   6fae7:	e8 f5 10 00 00       	call   sprintf_
   6faec:	83 c4 0c             	add    esp,0xc
inventory_branch_205:
   6faef:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 19262, src obj: 1, src ofs: 0x6faf0, dst obj: 3, dst ofs: 0x1a1d4
   6faf4:	e8 a7 be f9 ff       	call   update_mod_9
   6faf9:	b8 50 00 00 00       	mov    eax,0x50
   6fafe:	e8 15 24 00 00       	call   W?$nwn(ui)pnv
   6fb03:	85 c0                	test   eax,eax
   6fb05:	74 32                	je     inventory_branch_206
   6fb07:	8b 15 9c 24 03 00    	mov    edx,DWORD PTR ds:@obj3:text_box1                             ; fixup: num: 19261, src obj: 1, src ofs: 0x6fb09, dst obj: 3, dst ofs: 0x3249c
   6fb0d:	8b 1a                	mov    ebx,DWORD PTR [edx]
   6fb0f:	8b 1b                	mov    ebx,DWORD PTR [ebx]
   6fb11:	6a 00                	push   0x0
   6fb13:	83 eb 02             	sub    ebx,0x2
   6fb16:	53                   	push   ebx
   6fb17:	8b 5a 40             	mov    ebx,DWORD PTR [edx+0x40]
   6fb1a:	6a d3                	push   0xffffffd3
   6fb1c:	83 c3 05             	add    ebx,0x5
   6fb1f:	8b 52 3c             	mov    edx,DWORD PTR [edx+0x3c]
   6fb22:	53                   	push   ebx
   6fb23:	83 c2 0a             	add    edx,0xa
   6fb26:	b9 02 04 01 00       	mov    ecx,@obj3:inventry_cpp_variable_152                          ; fixup: num: 19260, src obj: 1, src ofs: 0x6fb27, dst obj: 3, dst ofs: 0x10402
   6fb2b:	52                   	push   edx
   6fb2c:	8b 1d c4 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:textfont                              ; fixup: num: 19259, src obj: 1, src ofs: 0x6fb2e, dst obj: 3, dst ofs: 0x25bc4
   6fb32:	89 f2                	mov    edx,esi
   6fb34:	e8 07 a4 fd ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiiii)_
inventory_branch_206:
   6fb39:	89 c1                	mov    ecx,eax
   6fb3b:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 19167, src obj: 1, src ofs: 0x6fb3c, dst obj: 3, dst ofs: 0x1a1d4
   6fb40:	e8 5b be f9 ff       	call   update_mod_9
   6fb45:	85 c9                	test   ecx,ecx
   6fb47:	75 11                	jne    inventory_branch_207
   6fb49:	bb 08 04 01 00       	mov    ebx,@obj3:inventry_cpp_variable_153                          ; fixup: num: 19166, src obj: 1, src ofs: 0x6fb4a, dst obj: 3, dst ofs: 0x10408
   6fb4e:	ba 21 03 00 00       	mov    edx,0x321
   6fb53:	31 c0                	xor    eax,eax
   6fb55:	e8 d6 84 fc ff       	call   _error_report
inventory_branch_207:
   6fb5a:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 19165, src obj: 1, src ofs: 0x6fb5b, dst obj: 3, dst ofs: 0x1a1d4
   6fb5f:	e8 3c be f9 ff       	call   update_mod_9
   6fb64:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 19164, src obj: 1, src ofs: 0x6fb65, dst obj: 3, dst ofs: 0x25a88
   6fb69:	8b 15 9c 24 03 00    	mov    edx,DWORD PTR ds:@obj3:text_box1                             ; fixup: num: 19163, src obj: 1, src ofs: 0x6fb6b, dst obj: 3, dst ofs: 0x3249c
   6fb6f:	e8 bc c5 fd ff       	call   insert_bitmap
   6fb74:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 19162, src obj: 1, src ofs: 0x6fb75, dst obj: 3, dst ofs: 0x25a84
   6fb79:	e8 22 e1 fd ff       	call   update_mod_84
   6fb7e:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 19161, src obj: 1, src ofs: 0x6fb7f, dst obj: 3, dst ofs: 0x1a1d4
   6fb83:	e8 18 be f9 ff       	call   update_mod_9
   6fb88:	89 f0                	mov    eax,esi
   6fb8a:	e8 59 18 00 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   6fb8f:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 19160, src obj: 1, src ofs: 0x6fb90, dst obj: 3, dst ofs: 0x1a1d4
   6fb94:	8b 54 24 24          	mov    edx,DWORD PTR [esp+0x24]
   6fb98:	e8 03 be f9 ff       	call   update_mod_9
   6fb9d:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 19271, src obj: 1, src ofs: 0x6fb9e, dst obj: 3, dst ofs: 0x25bd4
   6fba2:	e8 69 60 fd ff       	call   change_weapon
   6fba7:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 19270, src obj: 1, src ofs: 0x6fba8, dst obj: 3, dst ofs: 0x1a1d4
   6fbac:	e8 ef bd f9 ff       	call   update_mod_9
   6fbb1:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 19269, src obj: 1, src ofs: 0x6fbb2, dst obj: 3, dst ofs: 0x25bd4
   6fbb6:	b3 01                	mov    bl,0x1
   6fbb8:	ba 3b 00 00 00       	mov    edx,0x3b
   6fbbd:	c6 80 a0 11 00 00 00 	mov    BYTE PTR [eax+0x11a0],0x0
   6fbc4:	e8 d7 cc fc ff       	call   go_to_frame_mod_76
   6fbc9:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 19268, src obj: 1, src ofs: 0x6fbca, dst obj: 3, dst ofs: 0x25bd4
   6fbce:	88 5c 24 30          	mov    BYTE PTR [esp+0x30],bl
   6fbd2:	30 ff                	xor    bh,bh
   6fbd4:	c7 80 78 10 00 00 3b 00 00 00 	mov    DWORD PTR [eax+0x1078],0x3b
   6fbde:	31 f6                	xor    esi,esi
   6fbe0:	8b 90 78 10 00 00    	mov    edx,DWORD PTR [eax+0x1078]
   6fbe6:	89 74 24 28          	mov    DWORD PTR [esp+0x28],esi
   6fbea:	89 90 6c 10 00 00    	mov    DWORD PTR [eax+0x106c],edx
   6fbf0:	e8 9b 82 ff ff       	call   Clear_using_on_bm
   6fbf5:	88 3d b8 60 02 00    	mov    BYTE PTR ds:@obj3:dragging,bh                                ; fixup: num: 19177, src obj: 1, src ofs: 0x6fbf7, dst obj: 3, dst ofs: 0x260b8
   6fbfb:	85 c9                	test   ecx,ecx
   6fbfd:	74 0e                	je     inventory_branch_208
   6fbff:	89 c8                	mov    eax,ecx
   6fc01:	31 d2                	xor    edx,edx
   6fc03:	e8 18 a3 fd ff       	call   W?$dt:TEXTBM$n()_
   6fc08:	e8 6b 24 00 00       	call   W?$dln(pnv)v
inventory_branch_208:
   6fc0d:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 19176, src obj: 1, src ofs: 0x6fc0e, dst obj: 3, dst ofs: 0x1a1d4
   6fc12:	e8 89 bd f9 ff       	call   update_mod_9
   6fc17:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 19175, src obj: 1, src ofs: 0x6fc18, dst obj: 3, dst ofs: 0x25a88
   6fc1c:	8b 15 9c 24 03 00    	mov    edx,DWORD PTR ds:@obj3:text_box1                             ; fixup: num: 19174, src obj: 1, src ofs: 0x6fc1e, dst obj: 3, dst ofs: 0x3249c
   6fc22:	e8 c9 ca fd ff       	call   remove_bitmap
   6fc27:	eb 06                	jmp    inventory_branch_210
inventory_branch_209:
   6fc29:	31 f6                	xor    esi,esi
   6fc2b:	89 74 24 28          	mov    DWORD PTR [esp+0x28],esi
inventory_branch_210:
   6fc2f:	0f bf 05 08 59 02 00 	movsx  eax,WORD PTR ds:@obj3:raw_key                                ; fixup: num: 19173, src obj: 1, src ofs: 0x6fc32, dst obj: 3, dst ofs: 0x25908
   6fc36:	83 f8 01             	cmp    eax,0x1
   6fc39:	74 0b                	je     inventory_branch_211
   6fc3b:	80 7c 24 30 00       	cmp    BYTE PTR [esp+0x30],0x0
   6fc40:	0f 84 dd 01 00 00    	je     inventory_branch_221
inventory_branch_211:
   6fc46:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 19172, src obj: 1, src ofs: 0x6fc47, dst obj: 3, dst ofs: 0x25a88
   6fc4b:	8b 15 98 24 03 00    	mov    edx,DWORD PTR ds:@obj3:panel                                 ; fixup: num: 19171, src obj: 1, src ofs: 0x6fc4d, dst obj: 3, dst ofs: 0x32498
   6fc51:	e8 9a ca fd ff       	call   remove_bitmap
   6fc56:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 19170, src obj: 1, src ofs: 0x6fc57, dst obj: 3, dst ofs: 0x1a1d4
   6fc5b:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
   6fc5f:	e8 3c bd f9 ff       	call   update_mod_9
   6fc64:	85 c9                	test   ecx,ecx
   6fc66:	74 10                	je     inventory_branch_212
   6fc68:	74 0e                	je     inventory_branch_212
   6fc6a:	89 c8                	mov    eax,ecx
   6fc6c:	31 d2                	xor    edx,edx
   6fc6e:	e8 ad a2 fd ff       	call   W?$dt:TEXTBM$n()_
   6fc73:	e8 00 24 00 00       	call   W?$dln(pnv)v
inventory_branch_212:
   6fc78:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 19169, src obj: 1, src ofs: 0x6fc79, dst obj: 3, dst ofs: 0x1a1d4
   6fc7d:	e8 1e bd f9 ff       	call   update_mod_9
   6fc82:	8b 0d bc 5a 02 00    	mov    ecx,DWORD PTR ds:@obj3:object_list                           ; fixup: num: 19168, src obj: 1, src ofs: 0x6fc84, dst obj: 3, dst ofs: 0x25abc
   6fc88:	85 c9                	test   ecx,ecx
   6fc8a:	74 59                	je     inventory_branch_215
inventory_branch_213:
   6fc8c:	8b 15 2c 41 01 00    	mov    edx,DWORD PTR ds:@obj3:INVENTORY_ROOM                        ; fixup: num: 19187, src obj: 1, src ofs: 0x6fc8e, dst obj: 3, dst ofs: 0x1412c
   6fc92:	3b 51 3c             	cmp    edx,DWORD PTR [ecx+0x3c]
   6fc95:	75 3d                	jne    inventory_branch_214
   6fc97:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 19186, src obj: 1, src ofs: 0x6fc98, dst obj: 3, dst ofs: 0x25a88
   6fc9c:	8b 51 30             	mov    edx,DWORD PTR [ecx+0x30]
   6fc9f:	e8 4c c4 fd ff       	call   get_bitmap
   6fca4:	89 c3                	mov    ebx,eax
   6fca6:	85 c0                	test   eax,eax
   6fca8:	74 2a                	je     inventory_branch_214
   6fcaa:	8b 40 3c             	mov    eax,DWORD PTR [eax+0x3c]
   6fcad:	89 41 0c             	mov    DWORD PTR [ecx+0xc],eax
   6fcb0:	8b 43 40             	mov    eax,DWORD PTR [ebx+0x40]
   6fcb3:	89 da                	mov    edx,ebx
   6fcb5:	89 41 10             	mov    DWORD PTR [ecx+0x10],eax
   6fcb8:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 19185, src obj: 1, src ofs: 0x6fcb9, dst obj: 3, dst ofs: 0x25a88
   6fcbd:	e8 2e ca fd ff       	call   remove_bitmap
   6fcc2:	85 db                	test   ebx,ebx
   6fcc4:	74 0e                	je     inventory_branch_214
   6fcc6:	89 d8                	mov    eax,ebx
   6fcc8:	31 d2                	xor    edx,edx
   6fcca:	e8 d1 b6 fc ff       	call   W?$dt:BTMAP$n()_
   6fccf:	e8 a4 23 00 00       	call   W?$dln(pnv)v
inventory_branch_214:
   6fcd4:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 19184, src obj: 1, src ofs: 0x6fcd5, dst obj: 3, dst ofs: 0x1a1d4
   6fcd9:	e8 c2 bc f9 ff       	call   update_mod_9
   6fcde:	8b 49 54             	mov    ecx,DWORD PTR [ecx+0x54]
   6fce1:	85 c9                	test   ecx,ecx
   6fce3:	75 a7                	jne    inventory_branch_213
inventory_branch_215:
   6fce5:	83 7c 24 28 00       	cmp    DWORD PTR [esp+0x28],0x0
   6fcea:	0f 84 5c 01 00 00    	je     inventory_branch_222
   6fcf0:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 19183, src obj: 1, src ofs: 0x6fcf1, dst obj: 3, dst ofs: 0x1a1d4
   6fcf5:	8b 6c 24 18          	mov    ebp,DWORD PTR [esp+0x18]
   6fcf9:	e8 a2 bc f9 ff       	call   update_mod_9
   6fcfe:	85 ed                	test   ebp,ebp
   6fd00:	74 0e                	je     inventory_branch_216
   6fd02:	89 e8                	mov    eax,ebp
   6fd04:	31 d2                	xor    edx,edx
   6fd06:	e8 95 b6 fc ff       	call   W?$dt:BTMAP$n()_
   6fd0b:	e8 68 23 00 00       	call   W?$dln(pnv)v
inventory_branch_216:
   6fd10:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 19182, src obj: 1, src ofs: 0x6fd11, dst obj: 3, dst ofs: 0x1a1d4
   6fd15:	ba 20 04 01 00       	mov    edx,@obj3:inventry_cpp_variable_154                          ; fixup: num: 19181, src obj: 1, src ofs: 0x6fd16, dst obj: 3, dst ofs: 0x10420
   6fd1a:	e8 81 bc f9 ff       	call   update_mod_9
   6fd1f:	30 c0                	xor    al,al
   6fd21:	31 db                	xor    ebx,ebx
   6fd23:	a2 94 24 03 00       	mov    ds:@obj3:in_inventory,al                                     ; fixup: num: 19180, src obj: 1, src ofs: 0x6fd24, dst obj: 3, dst ofs: 0x32494
   6fd28:	b8 2a 04 01 00       	mov    eax,@obj3:inventry_cpp_variable_155                          ; fixup: num: 19179, src obj: 1, src ofs: 0x6fd29, dst obj: 3, dst ofs: 0x1042a
   6fd2d:	e8 de 31 fe ff       	call   set_object
   6fd32:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 19178, src obj: 1, src ofs: 0x6fd33, dst obj: 3, dst ofs: 0x1a1d4
   6fd37:	ba 34 04 01 00       	mov    edx,@obj3:inventry_cpp_variable_156                          ; fixup: num: 19202, src obj: 1, src ofs: 0x6fd38, dst obj: 3, dst ofs: 0x10434
   6fd3c:	e8 5f bc f9 ff       	call   update_mod_9
   6fd41:	31 db                	xor    ebx,ebx
   6fd43:	b8 3e 04 01 00       	mov    eax,@obj3:inventry_cpp_variable_157                          ; fixup: num: 19201, src obj: 1, src ofs: 0x6fd44, dst obj: 3, dst ofs: 0x1043e
   6fd48:	e8 c3 31 fe ff       	call   set_object
   6fd4d:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 19200, src obj: 1, src ofs: 0x6fd4e, dst obj: 3, dst ofs: 0x1a1d4
   6fd52:	ba 48 04 01 00       	mov    edx,@obj3:inventry_cpp_variable_158                          ; fixup: num: 19199, src obj: 1, src ofs: 0x6fd53, dst obj: 3, dst ofs: 0x10448
   6fd57:	e8 44 bc f9 ff       	call   update_mod_9
   6fd5c:	31 db                	xor    ebx,ebx
   6fd5e:	b8 52 04 01 00       	mov    eax,@obj3:inventry_cpp_variable_159                          ; fixup: num: 19198, src obj: 1, src ofs: 0x6fd5f, dst obj: 3, dst ofs: 0x10452
   6fd63:	e8 a8 31 fe ff       	call   set_object
   6fd68:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 19197, src obj: 1, src ofs: 0x6fd69, dst obj: 3, dst ofs: 0x1a1d4
   6fd6d:	ba 5c 04 01 00       	mov    edx,@obj3:inventry_cpp_variable_160                          ; fixup: num: 19196, src obj: 1, src ofs: 0x6fd6e, dst obj: 3, dst ofs: 0x1045c
   6fd72:	e8 29 bc f9 ff       	call   update_mod_9
   6fd77:	31 db                	xor    ebx,ebx
   6fd79:	b8 66 04 01 00       	mov    eax,@obj3:inventry_cpp_variable_161                          ; fixup: num: 19195, src obj: 1, src ofs: 0x6fd7a, dst obj: 3, dst ofs: 0x10466
   6fd7e:	e8 8d 31 fe ff       	call   set_object
   6fd83:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 19194, src obj: 1, src ofs: 0x6fd84, dst obj: 3, dst ofs: 0x1a1d4
   6fd88:	e8 13 bc f9 ff       	call   update_mod_9
   6fd8d:	8b 15 88 5a 02 00    	mov    edx,DWORD PTR ds:@obj3:the_list                              ; fixup: num: 19193, src obj: 1, src ofs: 0x6fd8f, dst obj: 3, dst ofs: 0x25a88
   6fd93:	85 d2                	test   edx,edx
   6fd95:	74 2e                	je     inventory_branch_219
inventory_branch_217:
   6fd97:	83 7a 38 17          	cmp    DWORD PTR [edx+0x38],0x17
   6fd9b:	75 21                	jne    inventory_branch_218
   6fd9d:	80 7a 60 00          	cmp    BYTE PTR [edx+0x60],0x0
   6fda1:	74 1b                	je     inventory_branch_218
   6fda3:	c6 42 60 00          	mov    BYTE PTR [edx+0x60],0x0
   6fda7:	e8 56 23 00 00       	call   clock_
   6fdac:	a3 44 7e 01 00       	mov    ds:@obj3:current_time,eax                                    ; fixup: num: 19192, src obj: 1, src ofs: 0x6fdad, dst obj: 3, dst ofs: 0x17e44
   6fdb1:	8b 7a 5c             	mov    edi,DWORD PTR [edx+0x5c]
   6fdb4:	8b 6a 50             	mov    ebp,DWORD PTR [edx+0x50]
   6fdb7:	29 f8                	sub    eax,edi
   6fdb9:	01 c5                	add    ebp,eax
   6fdbb:	89 6a 50             	mov    DWORD PTR [edx+0x50],ebp
inventory_branch_218:
   6fdbe:	8b 52 48             	mov    edx,DWORD PTR [edx+0x48]
   6fdc1:	85 d2                	test   edx,edx
   6fdc3:	75 d2                	jne    inventory_branch_217
inventory_branch_219:
   6fdc5:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 19191, src obj: 1, src ofs: 0x6fdc6, dst obj: 3, dst ofs: 0x1a1d4
   6fdca:	e8 d1 bb f9 ff       	call   update_mod_9
   6fdcf:	31 c0                	xor    eax,eax
   6fdd1:	a0 b8 60 02 00       	mov    al,ds:@obj3:dragging                                         ; fixup: num: 19190, src obj: 1, src ofs: 0x6fdd2, dst obj: 3, dst ofs: 0x260b8
   6fdd6:	50                   	push   eax
   6fdd7:	68 70 04 01 00       	push   @obj3:inventry_cpp_variable_162                              ; fixup: num: 19189, src obj: 1, src ofs: 0x6fdd8, dst obj: 3, dst ofs: 0x10470
   6fddc:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 19188, src obj: 1, src ofs: 0x6fddd, dst obj: 3, dst ofs: 0x237fc
   6fde1:	e8 fb 0d 00 00       	call   sprintf_
   6fde6:	83 c4 0c             	add    esp,0xc
   6fde9:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 19215, src obj: 1, src ofs: 0x6fdea, dst obj: 3, dst ofs: 0x1a1d4
   6fdee:	8b 5c 24 0c          	mov    ebx,DWORD PTR [esp+0xc]
   6fdf2:	e8 a9 bb f9 ff       	call   update_mod_9
   6fdf7:	85 db                	test   ebx,ebx
   6fdf9:	74 10                	je     inventory_branch_220
   6fdfb:	74 0e                	je     inventory_branch_220
   6fdfd:	89 d8                	mov    eax,ebx
   6fdff:	31 d2                	xor    edx,edx
   6fe01:	e8 1a a1 fd ff       	call   W?$dt:TEXTBM$n()_
   6fe06:	e8 6d 22 00 00       	call   W?$dln(pnv)v
inventory_branch_220:
   6fe0b:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 19214, src obj: 1, src ofs: 0x6fe0c, dst obj: 3, dst ofs: 0x1a1d4
   6fe10:	e8 8b bb f9 ff       	call   update_mod_9
   6fe15:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
   6fe19:	83 c4 38             	add    esp,0x38
   6fe1c:	5d                   	pop    ebp
   6fe1d:	5f                   	pop    edi
   6fe1e:	5e                   	pop    esi
   6fe1f:	5a                   	pop    edx
   6fe20:	59                   	pop    ecx
   6fe21:	5b                   	pop    ebx
   6fe22:	c3                   	ret    
inventory_branch_221:
   6fe23:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 19213, src obj: 1, src ofs: 0x6fe24, dst obj: 3, dst ofs: 0x1a1d4
   6fe28:	e8 73 bb f9 ff       	call   update_mod_9
   6fe2d:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 19212, src obj: 1, src ofs: 0x6fe2e, dst obj: 3, dst ofs: 0x25a84
   6fe32:	e8 69 de fd ff       	call   update_mod_84
   6fe37:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 19211, src obj: 1, src ofs: 0x6fe38, dst obj: 3, dst ofs: 0x1a1d4
   6fe3c:	e8 5f bb f9 ff       	call   update_mod_9
   6fe41:	80 7c 24 30 00       	cmp    BYTE PTR [esp+0x30],0x0
   6fe46:	0f 84 d3 e4 ff ff    	je     inventory_branch_24
inventory_branch_222:
   6fe4c:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 19210, src obj: 1, src ofs: 0x6fe4d, dst obj: 3, dst ofs: 0x1a1d4
   6fe51:	ba 7e 04 01 00       	mov    edx,@obj3:inventry_cpp_variable_163                          ; fixup: num: 19209, src obj: 1, src ofs: 0x6fe52, dst obj: 3, dst ofs: 0x1047e
   6fe56:	e8 45 bb f9 ff       	call   update_mod_9
   6fe5b:	e8 60 94 ff ff       	call   ShowAmmo
   6fe60:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 19208, src obj: 1, src ofs: 0x6fe61, dst obj: 3, dst ofs: 0x1a1d4
   6fe65:	30 db                	xor    bl,bl
   6fe67:	e8 34 bb f9 ff       	call   update_mod_9
   6fe6c:	b8 88 04 01 00       	mov    eax,@obj3:inventry_cpp_variable_164                          ; fixup: num: 19207, src obj: 1, src ofs: 0x6fe6d, dst obj: 3, dst ofs: 0x10488
   6fe71:	88 1d 94 24 03 00    	mov    BYTE PTR ds:@obj3:in_inventory,bl                            ; fixup: num: 19206, src obj: 1, src ofs: 0x6fe73, dst obj: 3, dst ofs: 0x32494
   6fe77:	31 db                	xor    ebx,ebx
   6fe79:	e8 92 30 fe ff       	call   set_object
   6fe7e:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 19205, src obj: 1, src ofs: 0x6fe7f, dst obj: 3, dst ofs: 0x1a1d4
   6fe83:	ba 92 04 01 00       	mov    edx,@obj3:inventry_cpp_variable_165                          ; fixup: num: 19204, src obj: 1, src ofs: 0x6fe84, dst obj: 3, dst ofs: 0x10492
   6fe88:	e8 13 bb f9 ff       	call   update_mod_9
   6fe8d:	31 db                	xor    ebx,ebx
   6fe8f:	b8 9c 04 01 00       	mov    eax,@obj3:inventry_cpp_variable_166                          ; fixup: num: 19203, src obj: 1, src ofs: 0x6fe90, dst obj: 3, dst ofs: 0x1049c
   6fe94:	e8 77 30 fe ff       	call   set_object
   6fe99:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 19154, src obj: 1, src ofs: 0x6fe9a, dst obj: 3, dst ofs: 0x1a1d4
   6fe9e:	ba a6 04 01 00       	mov    edx,@obj3:inventry_cpp_variable_167                          ; fixup: num: 19153, src obj: 1, src ofs: 0x6fe9f, dst obj: 3, dst ofs: 0x104a6
   6fea3:	e8 f8 ba f9 ff       	call   update_mod_9
   6fea8:	31 db                	xor    ebx,ebx
   6feaa:	b8 b0 04 01 00       	mov    eax,@obj3:inventry_cpp_variable_168                          ; fixup: num: 19152, src obj: 1, src ofs: 0x6feab, dst obj: 3, dst ofs: 0x104b0
   6feaf:	e8 5c 30 fe ff       	call   set_object
   6feb4:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 19151, src obj: 1, src ofs: 0x6feb5, dst obj: 3, dst ofs: 0x1a1d4
   6feb9:	ba ba 04 01 00       	mov    edx,@obj3:inventry_cpp_variable_169                          ; fixup: num: 19150, src obj: 1, src ofs: 0x6feba, dst obj: 3, dst ofs: 0x104ba
   6febe:	e8 dd ba f9 ff       	call   update_mod_9
   6fec3:	31 db                	xor    ebx,ebx
   6fec5:	b8 c4 04 01 00       	mov    eax,@obj3:inventry_cpp_variable_170                          ; fixup: num: 19149, src obj: 1, src ofs: 0x6fec6, dst obj: 3, dst ofs: 0x104c4
   6feca:	e8 41 30 fe ff       	call   set_object
   6fecf:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 19148, src obj: 1, src ofs: 0x6fed0, dst obj: 3, dst ofs: 0x1a1d4
   6fed4:	e8 c7 ba f9 ff       	call   update_mod_9
   6fed9:	8b 15 88 5a 02 00    	mov    edx,DWORD PTR ds:@obj3:the_list                              ; fixup: num: 19147, src obj: 1, src ofs: 0x6fedb, dst obj: 3, dst ofs: 0x25a88
   6fedf:	85 d2                	test   edx,edx
   6fee1:	74 2e                	je     inventory_branch_225
inventory_branch_223:
   6fee3:	83 7a 38 17          	cmp    DWORD PTR [edx+0x38],0x17
   6fee7:	75 21                	jne    inventory_branch_224
   6fee9:	80 7a 60 00          	cmp    BYTE PTR [edx+0x60],0x0
   6feed:	74 1b                	je     inventory_branch_224
   6feef:	c6 42 60 00          	mov    BYTE PTR [edx+0x60],0x0
   6fef3:	e8 0a 22 00 00       	call   clock_
   6fef8:	a3 44 7e 01 00       	mov    ds:@obj3:current_time,eax                                    ; fixup: num: 19146, src obj: 1, src ofs: 0x6fef9, dst obj: 3, dst ofs: 0x17e44
   6fefd:	8b 5a 5c             	mov    ebx,DWORD PTR [edx+0x5c]
   6ff00:	8b 4a 50             	mov    ecx,DWORD PTR [edx+0x50]
   6ff03:	29 d8                	sub    eax,ebx
   6ff05:	01 c1                	add    ecx,eax
   6ff07:	89 4a 50             	mov    DWORD PTR [edx+0x50],ecx
inventory_branch_224:
   6ff0a:	8b 52 48             	mov    edx,DWORD PTR [edx+0x48]
   6ff0d:	85 d2                	test   edx,edx
   6ff0f:	75 d2                	jne    inventory_branch_223
inventory_branch_225:
   6ff11:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 19145, src obj: 1, src ofs: 0x6ff12, dst obj: 3, dst ofs: 0x1a1d4
   6ff16:	8b 74 24 0c          	mov    esi,DWORD PTR [esp+0xc]
   6ff1a:	e8 81 ba f9 ff       	call   update_mod_9
   6ff1f:	85 f6                	test   esi,esi
   6ff21:	74 10                	je     inventory_branch_226
   6ff23:	74 0e                	je     inventory_branch_226
   6ff25:	89 f0                	mov    eax,esi
   6ff27:	31 d2                	xor    edx,edx
   6ff29:	e8 f2 9f fd ff       	call   W?$dt:TEXTBM$n()_
   6ff2e:	e8 45 21 00 00       	call   W?$dln(pnv)v
inventory_branch_226:
   6ff33:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 19144, src obj: 1, src ofs: 0x6ff34, dst obj: 3, dst ofs: 0x1a1d4
   6ff38:	e8 63 ba f9 ff       	call   update_mod_9
   6ff3d:	31 c0                	xor    eax,eax
inventory_branch_227:
   6ff3f:	83 c4 38             	add    esp,0x38
   6ff42:	5d                   	pop    ebp
   6ff43:	5f                   	pop    edi
   6ff44:	5e                   	pop    esi
   6ff45:	5a                   	pop    edx
   6ff46:	59                   	pop    ecx
   6ff47:	5b                   	pop    ebx
   6ff48:	c3                   	ret    
   6ff49:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   6ff4f:	90                   	nop

;-------------------------------------------------
;  Function 'check_special_bm'                   -
;-------------------------------------------------
check_special_bm:
   6ff50:	53                   	push   ebx
   6ff51:	51                   	push   ecx
   6ff52:	52                   	push   edx
   6ff53:	56                   	push   esi
   6ff54:	57                   	push   edi
   6ff55:	55                   	push   ebp
   6ff56:	89 c7                	mov    edi,eax
   6ff58:	8b 35 8c 5a 02 00    	mov    esi,DWORD PTR ds:@obj3:the_list_variable_1                   ; fixup: num: 19159, src obj: 1, src ofs: 0x6ff5a, dst obj: 3, dst ofs: 0x25a8c
   6ff5e:	85 f6                	test   esi,esi
   6ff60:	0f 84 96 00 00 00    	je     check_special_bm_branch_3
check_special_bm_branch_1:
   6ff66:	8b 56 10             	mov    edx,DWORD PTR [esi+0x10]
   6ff69:	85 d2                	test   edx,edx
   6ff6b:	0f 84 80 00 00 00    	je     check_special_bm_branch_2
   6ff71:	39 fe                	cmp    esi,edi
   6ff73:	0f 84 78 00 00 00    	je     check_special_bm_branch_2
   6ff79:	3b 35 94 60 02 00    	cmp    esi,DWORD PTR ds:@obj3:pointer                               ; fixup: num: 19158, src obj: 1, src ofs: 0x6ff7b, dst obj: 3, dst ofs: 0x26094
   6ff7f:	0f 84 6c 00 00 00    	je     check_special_bm_branch_2
   6ff85:	83 7e 38 15          	cmp    DWORD PTR [esi+0x38],0x15
   6ff89:	7f 66                	jg     check_special_bm_branch_2
   6ff8b:	89 d0                	mov    eax,edx
   6ff8d:	ba a9 fe 00 00       	mov    edx,@obj3:inventry_cpp_variable_42                           ; fixup: num: 19157, src obj: 1, src ofs: 0x6ff8e, dst obj: 3, dst ofs: 0xfea9
   6ff92:	e8 99 64 00 00       	call   strcmp_
   6ff97:	85 c0                	test   eax,eax
   6ff99:	74 56                	je     check_special_bm_branch_2
   6ff9b:	8b 46 3c             	mov    eax,DWORD PTR [esi+0x3c]
   6ff9e:	8b 6e 24             	mov    ebp,DWORD PTR [esi+0x24]
   6ffa1:	8b 5e 40             	mov    ebx,DWORD PTR [esi+0x40]
   6ffa4:	8b 56 28             	mov    edx,DWORD PTR [esi+0x28]
   6ffa7:	01 c5                	add    ebp,eax
   6ffa9:	01 d3                	add    ebx,edx
   6ffab:	89 f2                	mov    edx,esi
   6ffad:	89 f8                	mov    eax,edi
   6ffaf:	e8 4c b7 fc ff       	call   bm_overlaps
   6ffb4:	84 c0                	test   al,al
   6ffb6:	74 39                	je     check_special_bm_branch_2
   6ffb8:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
   6ffbb:	8b 47 40             	mov    eax,DWORD PTR [edi+0x40]
   6ffbe:	8b 57 3c             	mov    edx,DWORD PTR [edi+0x3c]
   6ffc1:	29 d8                	sub    eax,ebx
   6ffc3:	29 ea                	sub    edx,ebp
   6ffc5:	89 c3                	mov    ebx,eax
   6ffc7:	8b 47 04             	mov    eax,DWORD PTR [edi+0x4]
   6ffca:	e8 11 aa fc ff       	call   collide
   6ffcf:	84 c0                	test   al,al
   6ffd1:	74 1e                	je     check_special_bm_branch_2
   6ffd3:	80 3d 94 24 03 00 00 	cmp    BYTE PTR ds:@obj3:in_inventory,0x0                           ; fixup: num: 19156, src obj: 1, src ofs: 0x6ffd5, dst obj: 3, dst ofs: 0x32494
   6ffda:	74 20                	je     check_special_bm_branch_3
   6ffdc:	ba ae fe 00 00       	mov    edx,@obj3:inventry_cpp_variable_43                           ; fixup: num: 19155, src obj: 1, src ofs: 0x6ffdd, dst obj: 3, dst ofs: 0xfeae
   6ffe1:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
   6ffe4:	e8 47 64 00 00       	call   strcmp_
   6ffe9:	85 c0                	test   eax,eax
   6ffeb:	75 0f                	jne    check_special_bm_branch_3
   6ffed:	31 f6                	xor    esi,esi
   6ffef:	eb 0b                	jmp    check_special_bm_branch_3
check_special_bm_branch_2:
   6fff1:	8b 76 44             	mov    esi,DWORD PTR [esi+0x44]
   6fff4:	85 f6                	test   esi,esi
   6fff6:	0f 85 6a ff ff ff    	jne    check_special_bm_branch_1
check_special_bm_branch_3:
   6fffc:	85 f6                	test   esi,esi
   6fffe:	75 07                	jne    check_special_bm_branch_4
   70000:	30 c0                	xor    al,al
   70002:	e9 3b 01 00 00       	jmp    check_special_bm_branch_18
check_special_bm_branch_4:
   70007:	83 7e 38 03          	cmp    DWORD PTR [esi+0x38],0x3
   7000b:	74 29                	je     check_special_bm_branch_8
   7000d:	e9 65 00 00 00       	jmp    check_special_bm_branch_12
check_special_bm_branch_5:
   70012:	b8 b8 fe 00 00       	mov    eax,@obj3:inventry_cpp_variable_44                           ; fixup: num: 19420, src obj: 1, src ofs: 0x70013, dst obj: 3, dst ofs: 0xfeb8
   70017:	e8 c4 0e fe ff       	call   execute_command
   7001c:	eb 47                	jmp    check_special_bm_branch_11
check_special_bm_branch_6:
   7001e:	b8 c3 fe 00 00       	mov    eax,@obj3:inventry_cpp_variable_45                           ; fixup: num: 19419, src obj: 1, src ofs: 0x7001f, dst obj: 3, dst ofs: 0xfec3
   70023:	e8 b8 0e fe ff       	call   execute_command
   70028:	eb 3b                	jmp    check_special_bm_branch_11
check_special_bm_branch_7:
   7002a:	b8 ce fe 00 00       	mov    eax,@obj3:inventry_cpp_variable_46                           ; fixup: num: 19418, src obj: 1, src ofs: 0x7002b, dst obj: 3, dst ofs: 0xfece
   7002f:	e8 ac 0e fe ff       	call   execute_command
   70034:	eb 2f                	jmp    check_special_bm_branch_11
check_special_bm_branch_8:
   70036:	e8 9c 64 00 00       	call   rand_
   7003b:	89 c2                	mov    edx,eax
   7003d:	bb 05 00 00 00       	mov    ebx,0x5
   70042:	c1 fa 1f             	sar    edx,0x1f
   70045:	f7 fb                	idiv   ebx
   70047:	89 d0                	mov    eax,edx
   70049:	83 fa 01             	cmp    edx,0x1
   7004c:	72 09                	jb     check_special_bm_branch_9
   7004e:	76 ce                	jbe    check_special_bm_branch_6
   70050:	83 fa 02             	cmp    edx,0x2
   70053:	74 d5                	je     check_special_bm_branch_7
   70055:	eb 04                	jmp    check_special_bm_branch_10
check_special_bm_branch_9:
   70057:	85 d2                	test   edx,edx
   70059:	74 b7                	je     check_special_bm_branch_5
check_special_bm_branch_10:
   7005b:	b8 d9 fe 00 00       	mov    eax,@obj3:inventry_cpp_variable_47                           ; fixup: num: 19417, src obj: 1, src ofs: 0x7005c, dst obj: 3, dst ofs: 0xfed9
   70060:	e8 7b 0e fe ff       	call   execute_command
check_special_bm_branch_11:
   70065:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 19416, src obj: 1, src ofs: 0x70067, dst obj: 3, dst ofs: 0x25974
   7006c:	75 f7                	jne    check_special_bm_branch_11
   7006e:	30 c0                	xor    al,al
   70070:	5d                   	pop    ebp
   70071:	5f                   	pop    edi
   70072:	5e                   	pop    esi
   70073:	5a                   	pop    edx
   70074:	59                   	pop    ecx
   70075:	5b                   	pop    ebx
   70076:	c3                   	ret    
check_special_bm_branch_12:
   70077:	8b 47 10             	mov    eax,DWORD PTR [edi+0x10]
   7007a:	e8 01 2c fe ff       	call   get_object
   7007f:	89 c2                	mov    edx,eax
   70081:	89 c3                	mov    ebx,eax
   70083:	85 c0                	test   eax,eax
   70085:	75 09                	jne    check_special_bm_branch_13
   70087:	30 c0                	xor    al,al
   70089:	5d                   	pop    ebp
   7008a:	5f                   	pop    edi
   7008b:	5e                   	pop    esi
   7008c:	5a                   	pop    edx
   7008d:	59                   	pop    ecx
   7008e:	5b                   	pop    ebx
   7008f:	c3                   	ret    
check_special_bm_branch_13:
   70090:	83 7e 38 04          	cmp    DWORD PTR [esi+0x38],0x4
   70094:	0f 85 af 00 00 00    	jne    check_special_bm_branch_20
   7009a:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
   7009d:	e8 be a0 fb ff       	call   FindHead
   700a2:	84 c0                	test   al,al
   700a4:	0f 84 9f 00 00 00    	je     check_special_bm_branch_20
   700aa:	80 be a0 11 00 00 38 	cmp    BYTE PTR [esi+0x11a0],0x38
   700b1:	0f 84 92 00 00 00    	je     check_special_bm_branch_20
   700b7:	e8 d4 7d ff ff       	call   Clear_using_on_bm
   700bc:	8b 52 30             	mov    edx,DWORD PTR [edx+0x30]
   700bf:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
   700c2:	e8 89 9d ff ff       	call   start_dialog
   700c7:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 19432, src obj: 1, src ofs: 0x700c8, dst obj: 3, dst ofs: 0x25a84
   700cc:	e8 cf db fd ff       	call   update_mod_84
   700d1:	80 3d 7e 60 02 00 00 	cmp    BYTE PTR ds:@obj3:faded_in,0x0                               ; fixup: num: 19431, src obj: 1, src ofs: 0x700d3, dst obj: 3, dst ofs: 0x2607e
   700d8:	75 5d                	jne    check_special_bm_branch_16
   700da:	83 3d 84 60 02 00 00 	cmp    DWORD PTR ds:@obj3:palette,0x0                               ; fixup: num: 19430, src obj: 1, src ofs: 0x700dc, dst obj: 3, dst ofs: 0x26084
   700e1:	74 54                	je     check_special_bm_branch_16
   700e3:	8b 3d c4 5a 02 00    	mov    edi,DWORD PTR ds:@obj3:current_room                          ; fixup: num: 19429, src obj: 1, src ofs: 0x700e5, dst obj: 3, dst ofs: 0x25ac4
   700e9:	85 ff                	test   edi,edi
   700eb:	74 4a                	je     check_special_bm_branch_16
   700ed:	80 7f 44 00          	cmp    BYTE PTR [edi+0x44],0x0
   700f1:	74 22                	je     check_special_bm_branch_14
   700f3:	b8 e4 fe 00 00       	mov    eax,@obj3:inventry_cpp_variable_48                           ; fixup: num: 19428, src obj: 1, src ofs: 0x700f4, dst obj: 3, dst ofs: 0xfee4
   700f8:	e8 93 c6 ff ff       	call   check_script_flag
   700fd:	84 c0                	test   al,al
   700ff:	75 14                	jne    check_special_bm_branch_14
   70101:	dd 05 b4 0f 01 00    	fld    QWORD PTR ds:@obj3:pal_gamma                                 ; fixup: num: 19427, src obj: 1, src ofs: 0x70103, dst obj: 3, dst ofs: 0x10fb4
   70107:	dc 05 f2 04 01 00    	fadd   QWORD PTR ds:@obj3:inventry_cpp_variable_176                 ; fixup: num: 19426, src obj: 1, src ofs: 0x70109, dst obj: 3, dst ofs: 0x104f2
   7010d:	83 ec 08             	sub    esp,0x8
   70110:	dd 1c 24             	fstp   QWORD PTR [esp]
   70113:	eb 0d                	jmp    check_special_bm_branch_15
check_special_bm_branch_14:
   70115:	8b 2d b8 0f 01 00    	mov    ebp,DWORD PTR ds:@obj3:pal_gamma_variable_1                  ; fixup: num: 19425, src obj: 1, src ofs: 0x70117, dst obj: 3, dst ofs: 0x10fb8
   7011b:	55                   	push   ebp
   7011c:	a1 b4 0f 01 00       	mov    eax,ds:@obj3:pal_gamma                                       ; fixup: num: 19424, src obj: 1, src ofs: 0x7011d, dst obj: 3, dst ofs: 0x10fb4
   70121:	50                   	push   eax
check_special_bm_branch_15:
   70122:	6a 00                	push   0x0
   70124:	6a 00                	push   0x0
   70126:	a1 84 60 02 00       	mov    eax,ds:@obj3:palette                                         ; fixup: num: 19423, src obj: 1, src ofs: 0x70127, dst obj: 3, dst ofs: 0x26084
   7012b:	e8 00 39 fa ff       	call   fade
   70130:	c6 05 7e 60 02 00 01 	mov    BYTE PTR ds:@obj3:faded_in,0x1                               ; fixup: num: 19422, src obj: 1, src ofs: 0x70132, dst obj: 3, dst ofs: 0x2607e
check_special_bm_branch_16:
   70137:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 19421, src obj: 1, src ofs: 0x70139, dst obj: 3, dst ofs: 0x25974
   7013e:	75 f7                	jne    check_special_bm_branch_16
check_special_bm_branch_17:
   70140:	b0 01                	mov    al,0x1
check_special_bm_branch_18:
   70142:	5d                   	pop    ebp
check_special_bm_branch_19:
   70143:	5f                   	pop    edi
   70144:	5e                   	pop    esi
   70145:	5a                   	pop    edx
   70146:	59                   	pop    ecx
   70147:	5b                   	pop    ebx
   70148:	c3                   	ret    
check_special_bm_branch_20:
   70149:	83 7e 38 05          	cmp    DWORD PTR [esi+0x38],0x5
   7014d:	75 48                	jne    check_special_bm_branch_22
   7014f:	8b 47 10             	mov    eax,DWORD PTR [edi+0x10]
   70152:	e8 29 2b fe ff       	call   get_object
   70157:	89 c3                	mov    ebx,eax
   70159:	85 c0                	test   eax,eax
   7015b:	74 3a                	je     check_special_bm_branch_22
   7015d:	8b 0d 2c 41 01 00    	mov    ecx,DWORD PTR ds:@obj3:INVENTORY_ROOM                        ; fixup: num: 19439, src obj: 1, src ofs: 0x7015f, dst obj: 3, dst ofs: 0x1412c
   70163:	3b 48 3c             	cmp    ecx,DWORD PTR [eax+0x3c]
   70166:	74 2f                	je     check_special_bm_branch_22
   70168:	89 fa                	mov    edx,edi
   7016a:	89 48 3c             	mov    DWORD PTR [eax+0x3c],ecx
   7016d:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 19438, src obj: 1, src ofs: 0x7016e, dst obj: 3, dst ofs: 0x25a88
   70172:	e8 79 c5 fd ff       	call   remove_bitmap
   70177:	89 f8                	mov    eax,edi
   70179:	31 d2                	xor    edx,edx
   7017b:	e8 20 b2 fc ff       	call   W?$dt:BTMAP$n()_
   70180:	e8 f3 1e 00 00       	call   W?$dln(pnv)v
check_special_bm_branch_21:
   70185:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 19437, src obj: 1, src ofs: 0x70187, dst obj: 3, dst ofs: 0x25974
   7018c:	75 f7                	jne    check_special_bm_branch_21
   7018e:	b0 01                	mov    al,0x1
   70190:	5d                   	pop    ebp
   70191:	5f                   	pop    edi
   70192:	5e                   	pop    esi
   70193:	5a                   	pop    edx
   70194:	59                   	pop    ecx
   70195:	5b                   	pop    ebx
   70196:	c3                   	ret    
check_special_bm_branch_22:
   70197:	8b 3d d4 5a 02 00    	mov    edi,DWORD PTR ds:@obj3:useitem_list                          ; fixup: num: 19436, src obj: 1, src ofs: 0x70199, dst obj: 3, dst ofs: 0x25ad4
   7019d:	85 ff                	test   edi,edi
   7019f:	74 5b                	je     check_special_bm_branch_27
check_special_bm_branch_23:
   701a1:	8b 17                	mov    edx,DWORD PTR [edi]
   701a3:	8b 43 30             	mov    eax,DWORD PTR [ebx+0x30]
   701a6:	e8 85 62 00 00       	call   strcmp_
   701ab:	85 c0                	test   eax,eax
   701ad:	75 46                	jne    check_special_bm_branch_26
   701af:	8b 57 08             	mov    edx,DWORD PTR [edi+0x8]
   701b2:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
   701b5:	e8 76 62 00 00       	call   strcmp_
   701ba:	85 c0                	test   eax,eax
   701bc:	75 37                	jne    check_special_bm_branch_26
   701be:	8b 57 0c             	mov    edx,DWORD PTR [edi+0xc]
   701c1:	85 d2                	test   edx,edx
   701c3:	74 07                	je     check_special_bm_branch_24
   701c5:	89 d0                	mov    eax,edx
   701c7:	e8 14 0d fe ff       	call   execute_command
check_special_bm_branch_24:
   701cc:	c7 05 bc 60 02 00 01 00 00 00 	mov    DWORD PTR ds:@obj3:godeathflic_demands,0x1          ; fixup: num: 19435, src obj: 1, src ofs: 0x701ce, dst obj: 3, dst ofs: 0x260bc
   701d6:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 19434, src obj: 1, src ofs: 0x701d8, dst obj: 3, dst ofs: 0x25974
   701dd:	0f 84 5d ff ff ff    	je     check_special_bm_branch_17
check_special_bm_branch_25:
   701e3:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 19433, src obj: 1, src ofs: 0x701e5, dst obj: 3, dst ofs: 0x25974
   701ea:	75 f7                	jne    check_special_bm_branch_25
   701ec:	b0 01                	mov    al,0x1
   701ee:	5d                   	pop    ebp
   701ef:	5f                   	pop    edi
   701f0:	5e                   	pop    esi
   701f1:	5a                   	pop    edx
   701f2:	59                   	pop    ecx
   701f3:	5b                   	pop    ebx
   701f4:	c3                   	ret    
check_special_bm_branch_26:
   701f5:	8b 7f 10             	mov    edi,DWORD PTR [edi+0x10]
   701f8:	85 ff                	test   edi,edi
   701fa:	75 a5                	jne    check_special_bm_branch_23
check_special_bm_branch_27:
   701fc:	74 2d                	je     check_special_bm_branch_31
   701fe:	b0 01                	mov    al,0x1
   70200:	5d                   	pop    ebp
   70201:	5f                   	pop    edi
   70202:	5e                   	pop    esi
   70203:	5a                   	pop    edx
   70204:	59                   	pop    ecx
   70205:	5b                   	pop    ebx
   70206:	c3                   	ret    
check_special_bm_branch_28:
   70207:	b8 ed fe 00 00       	mov    eax,@obj3:inventry_cpp_variable_49                           ; fixup: num: 19444, src obj: 1, src ofs: 0x70208, dst obj: 3, dst ofs: 0xfeed
   7020c:	e8 cf 0c fe ff       	call   execute_command
   70211:	eb 47                	jmp    check_special_bm_branch_34
check_special_bm_branch_29:
   70213:	b8 f8 fe 00 00       	mov    eax,@obj3:inventry_cpp_variable_50                           ; fixup: num: 19443, src obj: 1, src ofs: 0x70214, dst obj: 3, dst ofs: 0xfef8
   70218:	e8 c3 0c fe ff       	call   execute_command
   7021d:	eb 3b                	jmp    check_special_bm_branch_34
check_special_bm_branch_30:
   7021f:	b8 03 ff 00 00       	mov    eax,@obj3:inventry_cpp_variable_51                           ; fixup: num: 19442, src obj: 1, src ofs: 0x70220, dst obj: 3, dst ofs: 0xff03
   70224:	e8 b7 0c fe ff       	call   execute_command
   70229:	eb 2f                	jmp    check_special_bm_branch_34
check_special_bm_branch_31:
   7022b:	e8 a7 62 00 00       	call   rand_
   70230:	89 c2                	mov    edx,eax
   70232:	bb 05 00 00 00       	mov    ebx,0x5
   70237:	c1 fa 1f             	sar    edx,0x1f
   7023a:	f7 fb                	idiv   ebx
   7023c:	89 d0                	mov    eax,edx
   7023e:	83 fa 01             	cmp    edx,0x1
   70241:	72 09                	jb     check_special_bm_branch_32
   70243:	76 ce                	jbe    check_special_bm_branch_29
   70245:	83 fa 02             	cmp    edx,0x2
   70248:	74 d5                	je     check_special_bm_branch_30
   7024a:	eb 04                	jmp    check_special_bm_branch_33
check_special_bm_branch_32:
   7024c:	85 d2                	test   edx,edx
   7024e:	74 b7                	je     check_special_bm_branch_28
check_special_bm_branch_33:
   70250:	b8 0e ff 00 00       	mov    eax,@obj3:inventry_cpp_variable_52                           ; fixup: num: 19441, src obj: 1, src ofs: 0x70251, dst obj: 3, dst ofs: 0xff0e
   70255:	e8 86 0c fe ff       	call   execute_command
check_special_bm_branch_34:
   7025a:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 19440, src obj: 1, src ofs: 0x7025c, dst obj: 3, dst ofs: 0x25974
   70261:	75 f7                	jne    check_special_bm_branch_34
   70263:	30 c0                	xor    al,al
   70265:	5d                   	pop    ebp
   70266:	5f                   	pop    edi
   70267:	5e                   	pop    esi
   70268:	5a                   	pop    edx
   70269:	59                   	pop    ecx
   7026a:	5b                   	pop    ebx
   7026b:	c3                   	ret    
   7026c:	8d 44 20 00          	lea    eax,[eax+eiz*1+0x0]

;-------------------------------------------------
;  Function 'show_description'                   -
;-------------------------------------------------
show_description:
   70270:	53                   	push   ebx
   70271:	51                   	push   ecx
   70272:	52                   	push   edx
   70273:	56                   	push   esi
   70274:	57                   	push   edi
   70275:	31 c9                	xor    ecx,ecx
   70277:	31 f6                	xor    esi,esi
   70279:	31 db                	xor    ebx,ebx
   7027b:	85 c0                	test   eax,eax
   7027d:	0f 84 c0 fe ff ff    	je     check_special_bm_branch_19
   70283:	8b 50 38             	mov    edx,DWORD PTR [eax+0x38]
   70286:	85 d2                	test   edx,edx
   70288:	76 0b                	jbe    show_description_branch_1
   7028a:	83 fa 15             	cmp    edx,0x15
   7028d:	74 06                	je     show_description_branch_1
   7028f:	5f                   	pop    edi
   70290:	5e                   	pop    esi
   70291:	5a                   	pop    edx
   70292:	59                   	pop    ecx
   70293:	5b                   	pop    ebx
   70294:	c3                   	ret    
show_description_branch_1:
   70295:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
   70298:	e8 e3 29 fe ff       	call   get_object
   7029d:	85 c0                	test   eax,eax
   7029f:	74 03                	je     show_description_branch_2
   702a1:	8b 48 38             	mov    ecx,DWORD PTR [eax+0x38]
show_description_branch_2:
   702a4:	85 c9                	test   ecx,ecx
   702a6:	0f 84 da 00 00 00    	je     show_description_branch_10
   702ac:	8b 1d cc 5a 02 00    	mov    ebx,DWORD PTR ds:@obj3:text_list                             ; fixup: num: 19453, src obj: 1, src ofs: 0x702ae, dst obj: 3, dst ofs: 0x25acc
   702b2:	85 db                	test   ebx,ebx
   702b4:	0f 84 85 00 00 00    	je     show_description_branch_8
show_description_branch_3:
   702ba:	89 ca                	mov    edx,ecx
   702bc:	8b 43 08             	mov    eax,DWORD PTR [ebx+0x8]
   702bf:	e8 6c 61 00 00       	call   strcmp_
   702c4:	85 c0                	test   eax,eax
   702c6:	0f 85 68 00 00 00    	jne    show_description_branch_7
   702cc:	ba fa 04 01 00       	mov    edx,@obj3:inventry_cpp_variable_177                          ; fixup: num: 19452, src obj: 1, src ofs: 0x702cd, dst obj: 3, dst ofs: 0x104fa
   702d1:	8b 43 0c             	mov    eax,DWORD PTR [ebx+0xc]
   702d4:	e8 57 61 00 00       	call   strcmp_
   702d9:	85 c0                	test   eax,eax
   702db:	75 08                	jne    show_description_branch_4
   702dd:	8b 35 9c 24 03 00    	mov    esi,DWORD PTR ds:@obj3:text_box1                             ; fixup: num: 19451, src obj: 1, src ofs: 0x702df, dst obj: 3, dst ofs: 0x3249c
   702e3:	eb 5a                	jmp    show_description_branch_8
show_description_branch_4:
   702e5:	ba ff 04 01 00       	mov    edx,@obj3:inventry_cpp_variable_178                          ; fixup: num: 19450, src obj: 1, src ofs: 0x702e6, dst obj: 3, dst ofs: 0x104ff
   702ea:	8b 43 0c             	mov    eax,DWORD PTR [ebx+0xc]
   702ed:	e8 3e 61 00 00       	call   strcmp_
   702f2:	85 c0                	test   eax,eax
   702f4:	75 08                	jne    show_description_branch_5
   702f6:	8b 35 a0 24 03 00    	mov    esi,DWORD PTR ds:@obj3:text_box2                             ; fixup: num: 19449, src obj: 1, src ofs: 0x702f8, dst obj: 3, dst ofs: 0x324a0
   702fc:	eb 41                	jmp    show_description_branch_8
show_description_branch_5:
   702fe:	ba 04 05 01 00       	mov    edx,@obj3:inventry_cpp_variable_179                          ; fixup: num: 19448, src obj: 1, src ofs: 0x702ff, dst obj: 3, dst ofs: 0x10504
   70303:	8b 43 0c             	mov    eax,DWORD PTR [ebx+0xc]
   70306:	e8 25 61 00 00       	call   strcmp_
   7030b:	85 c0                	test   eax,eax
   7030d:	75 08                	jne    show_description_branch_6
   7030f:	8b 35 a4 24 03 00    	mov    esi,DWORD PTR ds:@obj3:text_box3                             ; fixup: num: 19447, src obj: 1, src ofs: 0x70311, dst obj: 3, dst ofs: 0x324a4
   70315:	eb 28                	jmp    show_description_branch_8
show_description_branch_6:
   70317:	ba 09 05 01 00       	mov    edx,@obj3:inventry_cpp_variable_180                          ; fixup: num: 19446, src obj: 1, src ofs: 0x70318, dst obj: 3, dst ofs: 0x10509
   7031c:	8b 43 0c             	mov    eax,DWORD PTR [ebx+0xc]
   7031f:	e8 0c 61 00 00       	call   strcmp_
   70324:	85 c0                	test   eax,eax
   70326:	0f 85 17 fe ff ff    	jne    check_special_bm_branch_19
   7032c:	8b 35 a8 24 03 00    	mov    esi,DWORD PTR ds:@obj3:text_box4                             ; fixup: num: 19445, src obj: 1, src ofs: 0x7032e, dst obj: 3, dst ofs: 0x324a8
   70332:	eb 0b                	jmp    show_description_branch_8
show_description_branch_7:
   70334:	8b 5b 14             	mov    ebx,DWORD PTR [ebx+0x14]
   70337:	85 db                	test   ebx,ebx
   70339:	0f 85 7b ff ff ff    	jne    show_description_branch_3
show_description_branch_8:
   7033f:	85 db                	test   ebx,ebx
   70341:	0f 84 fc fd ff ff    	je     check_special_bm_branch_19
   70347:	b8 50 00 00 00       	mov    eax,0x50
   7034c:	e8 c7 1b 00 00       	call   W?$nwn(ui)pnv
   70351:	85 c0                	test   eax,eax
   70353:	74 2f                	je     show_description_branch_9
   70355:	8b 16                	mov    edx,DWORD PTR [esi]
   70357:	8b 12                	mov    edx,DWORD PTR [edx]
   70359:	83 ea 02             	sub    edx,0x2
   7035c:	52                   	push   edx
   7035d:	8b 56 40             	mov    edx,DWORD PTR [esi+0x40]
   70360:	6a d3                	push   0xffffffd3
   70362:	83 c2 05             	add    edx,0x5
   70365:	52                   	push   edx
   70366:	8b 56 3c             	mov    edx,DWORD PTR [esi+0x3c]
   70369:	83 c2 0a             	add    edx,0xa
   7036c:	b9 0e 05 01 00       	mov    ecx,@obj3:inventry_cpp_variable_181                          ; fixup: num: 19464, src obj: 1, src ofs: 0x7036d, dst obj: 3, dst ofs: 0x1050e
   70371:	52                   	push   edx
   70372:	8b 15 c4 5b 02 00    	mov    edx,DWORD PTR ds:@obj3:textfont                              ; fixup: num: 19463, src obj: 1, src ofs: 0x70374, dst obj: 3, dst ofs: 0x25bc4
   70378:	8b 7b 10             	mov    edi,DWORD PTR [ebx+0x10]
   7037b:	89 d3                	mov    ebx,edx
   7037d:	89 fa                	mov    edx,edi
   7037f:	e8 7c 98 fd ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
show_description_branch_9:
   70384:	89 c3                	mov    ebx,eax
show_description_branch_10:
   70386:	ba 07 00 00 00       	mov    edx,0x7
   7038b:	a1 94 60 02 00       	mov    eax,ds:@obj3:pointer                                         ; fixup: num: 19462, src obj: 1, src ofs: 0x7038c, dst obj: 3, dst ofs: 0x26094
   70390:	e8 fb 95 ff ff       	call   set_pointer
   70395:	85 db                	test   ebx,ebx
   70397:	0f 84 a6 fd ff ff    	je     check_special_bm_branch_19
   7039d:	85 f6                	test   esi,esi
   7039f:	74 0c                	je     show_description_branch_11
   703a1:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 19461, src obj: 1, src ofs: 0x703a2, dst obj: 3, dst ofs: 0x25a88
   703a6:	89 f2                	mov    edx,esi
   703a8:	e8 83 bd fd ff       	call   insert_bitmap
show_description_branch_11:
   703ad:	ba d4 a1 01 00       	mov    edx,@obj3:music                                              ; fixup: num: 19460, src obj: 1, src ofs: 0x703ae, dst obj: 3, dst ofs: 0x1a1d4
   703b2:	b9 84 5a 02 00       	mov    ecx,@obj3:the_screen                                         ; fixup: num: 19459, src obj: 1, src ofs: 0x703b3, dst obj: 3, dst ofs: 0x25a84
show_description_branch_12:
   703b7:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 19458, src obj: 1, src ofs: 0x703b9, dst obj: 3, dst ofs: 0x25974
   703be:	74 10                	je     show_description_branch_13
   703c0:	89 c8                	mov    eax,ecx
   703c2:	e8 d9 d8 fd ff       	call   update_mod_84
   703c7:	89 d0                	mov    eax,edx
   703c9:	e8 d2 b5 f9 ff       	call   update_mod_9
   703ce:	eb e7                	jmp    show_description_branch_12
show_description_branch_13:
   703d0:	b9 d4 a1 01 00       	mov    ecx,@obj3:music                                              ; fixup: num: 19457, src obj: 1, src ofs: 0x703d1, dst obj: 3, dst ofs: 0x1a1d4
   703d5:	ba 84 5a 02 00       	mov    edx,@obj3:the_screen                                         ; fixup: num: 19456, src obj: 1, src ofs: 0x703d6, dst obj: 3, dst ofs: 0x25a84
show_description_branch_14:
   703da:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 19455, src obj: 1, src ofs: 0x703dc, dst obj: 3, dst ofs: 0x25974
   703e1:	75 1c                	jne    show_description_branch_15
   703e3:	0f bf 05 08 59 02 00 	movsx  eax,WORD PTR ds:@obj3:raw_key                                ; fixup: num: 19454, src obj: 1, src ofs: 0x703e6, dst obj: 3, dst ofs: 0x25908
   703ea:	83 f8 01             	cmp    eax,0x1
   703ed:	74 10                	je     show_description_branch_15
   703ef:	89 d0                	mov    eax,edx
   703f1:	e8 aa d8 fd ff       	call   update_mod_84
   703f6:	89 c8                	mov    eax,ecx
   703f8:	e8 a3 b5 f9 ff       	call   update_mod_9
   703fd:	eb db                	jmp    show_description_branch_14
show_description_branch_15:
   703ff:	85 db                	test   ebx,ebx
   70401:	74 10                	je     show_description_branch_16
   70403:	74 0e                	je     show_description_branch_16
   70405:	89 d8                	mov    eax,ebx
   70407:	31 d2                	xor    edx,edx
   70409:	e8 12 9b fd ff       	call   W?$dt:TEXTBM$n()_
   7040e:	e8 65 1c 00 00       	call   W?$dln(pnv)v
show_description_branch_16:
   70413:	85 f6                	test   esi,esi
   70415:	74 0c                	je     show_description_branch_17
   70417:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 19472, src obj: 1, src ofs: 0x70418, dst obj: 3, dst ofs: 0x25a88
   7041c:	89 f2                	mov    edx,esi
   7041e:	e8 cd c2 fd ff       	call   remove_bitmap
show_description_branch_17:
   70423:	bb d4 a1 01 00       	mov    ebx,@obj3:music                                              ; fixup: num: 19471, src obj: 1, src ofs: 0x70424, dst obj: 3, dst ofs: 0x1a1d4
   70428:	ba 84 5a 02 00       	mov    edx,@obj3:the_screen                                         ; fixup: num: 19470, src obj: 1, src ofs: 0x70429, dst obj: 3, dst ofs: 0x25a84
show_description_branch_18:
   7042d:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 19469, src obj: 1, src ofs: 0x7042f, dst obj: 3, dst ofs: 0x25974
   70434:	75 10                	jne    show_description_branch_19
   70436:	0f bf 05 08 59 02 00 	movsx  eax,WORD PTR ds:@obj3:raw_key                                ; fixup: num: 19468, src obj: 1, src ofs: 0x70439, dst obj: 3, dst ofs: 0x25908
   7043d:	83 f8 01             	cmp    eax,0x1
   70440:	0f 85 fd fc ff ff    	jne    check_special_bm_branch_19
show_description_branch_19:
   70446:	89 d0                	mov    eax,edx
   70448:	e8 53 d8 fd ff       	call   update_mod_84
   7044d:	89 d8                	mov    eax,ebx
   7044f:	e8 4c b5 f9 ff       	call   update_mod_9
   70454:	eb d7                	jmp    show_description_branch_18
   70456:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   7045c:	8d 54 22 00          	lea    edx,[edx+eiz*1+0x0]

;-------------------------------------------------
;  Function 'PauseActiveTimers'                  -
;-------------------------------------------------
PauseActiveTimers:
   70460:	52                   	push   edx
   70461:	8b 15 88 5a 02 00    	mov    edx,DWORD PTR ds:@obj3:the_list                              ; fixup: num: 19467, src obj: 1, src ofs: 0x70463, dst obj: 3, dst ofs: 0x25a88
   70467:	85 d2                	test   edx,edx
   70469:	74 24                	je     PauseActiveTimers_branch_3
PauseActiveTimers_branch_1:
   7046b:	83 7a 38 17          	cmp    DWORD PTR [edx+0x38],0x17
   7046f:	75 17                	jne    PauseActiveTimers_branch_2
   70471:	80 7a 60 00          	cmp    BYTE PTR [edx+0x60],0x0
   70475:	75 11                	jne    PauseActiveTimers_branch_2
   70477:	e8 86 1c 00 00       	call   clock_
   7047c:	c6 42 60 01          	mov    BYTE PTR [edx+0x60],0x1
   70480:	a3 44 7e 01 00       	mov    ds:@obj3:current_time,eax                                    ; fixup: num: 19466, src obj: 1, src ofs: 0x70481, dst obj: 3, dst ofs: 0x17e44
   70485:	89 42 5c             	mov    DWORD PTR [edx+0x5c],eax
PauseActiveTimers_branch_2:
   70488:	8b 52 48             	mov    edx,DWORD PTR [edx+0x48]
   7048b:	85 d2                	test   edx,edx
   7048d:	75 dc                	jne    PauseActiveTimers_branch_1
PauseActiveTimers_branch_3:
   7048f:	5a                   	pop    edx
   70490:	c3                   	ret    
   70491:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   70497:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
   7049d:	8d 40 00             	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'ResumeActiveTimers'                 -
;-------------------------------------------------
ResumeActiveTimers:
   704a0:	51                   	push   ecx
   704a1:	52                   	push   edx
   704a2:	56                   	push   esi
   704a3:	8b 15 88 5a 02 00    	mov    edx,DWORD PTR ds:@obj3:the_list                              ; fixup: num: 19465, src obj: 1, src ofs: 0x704a5, dst obj: 3, dst ofs: 0x25a88
   704a9:	85 d2                	test   edx,edx
   704ab:	74 2e                	je     ResumeActiveTimers_branch_3
ResumeActiveTimers_branch_1:
   704ad:	83 7a 38 17          	cmp    DWORD PTR [edx+0x38],0x17
   704b1:	75 21                	jne    ResumeActiveTimers_branch_2
   704b3:	80 7a 60 00          	cmp    BYTE PTR [edx+0x60],0x0
   704b7:	74 1b                	je     ResumeActiveTimers_branch_2
   704b9:	c6 42 60 00          	mov    BYTE PTR [edx+0x60],0x0
   704bd:	e8 40 1c 00 00       	call   clock_
   704c2:	a3 44 7e 01 00       	mov    ds:@obj3:current_time,eax                                    ; fixup: num: 19473, src obj: 1, src ofs: 0x704c3, dst obj: 3, dst ofs: 0x17e44
   704c7:	8b 4a 5c             	mov    ecx,DWORD PTR [edx+0x5c]
   704ca:	8b 72 50             	mov    esi,DWORD PTR [edx+0x50]
   704cd:	29 c8                	sub    eax,ecx
   704cf:	01 c6                	add    esi,eax
   704d1:	89 72 50             	mov    DWORD PTR [edx+0x50],esi
ResumeActiveTimers_branch_2:
   704d4:	8b 52 48             	mov    edx,DWORD PTR [edx+0x48]
   704d7:	85 d2                	test   edx,edx
   704d9:	75 d2                	jne    ResumeActiveTimers_branch_1
ResumeActiveTimers_branch_3:
   704db:	5e                   	pop    esi
   704dc:	5a                   	pop    edx
   704dd:	59                   	pop    ecx
   704de:	c3                   	ret    
;-------------------------------------------------
;  Bad code 94 (zero after ret):                 -
;-------------------------------------------------
;  704dd:	59                   	pop    ecx
;  704de:	c3                   	ret    
;  704df:	00                 	add    al,cl
;-------------------------------------------------
;  Padding data (1 bytes):                       -
;-------------------------------------------------
   704df:	00                   	db     0x00
;-------------------------------------------------
;  End of bad code 94                            -
;-------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 94 (D:\SOURCE\inventry.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 94: D:\SOURCE\inventry.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------
inventry_cpp_variable_1:
    fcdc:	69 6e 76 65 6e 74 72 79 5f 63 70 70 00 	db     "inventry_cpp",0x00
inventry_cpp_variable_2:
    fce9:	43 48 41 50 4c 4f 56 45 00 	db     "CHAPLOVE",0x00
inventry_cpp_variable_3:
    fcf2:	49 4e 56 5f 53 54 41 54 34 00 	db     "INV_STAT4",0x00
inventry_cpp_variable_4:
    fcfc:	49 4e 56 5f 53 54 41 54 34 00 	db     "INV_STAT4",0x00
inventry_cpp_variable_5:
    fd06:	49 4e 56 45 4e 54 4f 52 59 00 	db     "INVENTORY",0x00
inventry_cpp_variable_6:
    fd10:	49 4e 56 5f 53 54 41 54 33 00 	db     "INV_STAT3",0x00
inventry_cpp_variable_7:
    fd1a:	49 4e 56 5f 53 54 41 54 33 00 	db     "INV_STAT3",0x00
inventry_cpp_variable_8:
    fd24:	49 4e 56 45 4e 54 4f 52 59 00 	db     "INVENTORY",0x00
inventry_cpp_variable_9:
    fd2e:	49 4e 56 5f 53 54 41 54 32 00 	db     "INV_STAT2",0x00
inventry_cpp_variable_10:
    fd38:	49 4e 56 5f 53 54 41 54 32 00 	db     "INV_STAT2",0x00
inventry_cpp_variable_11:
    fd42:	49 4e 56 45 4e 54 4f 52 59 00 	db     "INVENTORY",0x00
inventry_cpp_variable_12:
    fd4c:	49 4e 56 5f 53 54 41 54 31 00 	db     "INV_STAT1",0x00
inventry_cpp_variable_13:
    fd56:	49 4e 56 5f 53 54 41 54 31 00 	db     "INV_STAT1",0x00
inventry_cpp_variable_14:
    fd60:	49 4e 56 45 4e 54 4f 52 59 00 	db     "INVENTORY",0x00
inventry_cpp_variable_15:
    fd6a:	48 41 52 56 45 53 54 5f 42 4c 41 44 45 00 	db     "HARVEST_BLADE",0x00
inventry_cpp_variable_16:
    fd78:	44 41 59 53 5f 54 45 58 54 00 	db     "DAYS_TEXT",0x00
inventry_cpp_variable_17:
    fd82:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
inventry_cpp_variable_18:
    fd9a:	49 4e 56 5f 53 54 41 54 00 	db     "INV_STAT",0x00
inventry_cpp_variable_19:
    fda3:	49 4e 56 5f 45 58 49 54 00 	db     "INV_EXIT",0x00
inventry_cpp_variable_20:
    fdac:	49 4e 56 5f 53 54 41 54 31 00 	db     "INV_STAT1",0x00
inventry_cpp_variable_21:
    fdb6:	49 4e 56 5f 53 54 41 54 32 00 	db     "INV_STAT2",0x00
inventry_cpp_variable_22:
    fdc0:	49 4e 56 5f 53 54 41 54 33 00 	db     "INV_STAT3",0x00
inventry_cpp_variable_23:
    fdca:	49 4e 56 5f 53 54 41 54 34 00 	db     "INV_STAT4",0x00
inventry_cpp_variable_24:
    fdd4:	49 4e 56 5f 45 58 49 54 00 	db     "INV_EXIT",0x00
inventry_cpp_variable_25:
    fddd:	49 4e 56 5f 53 54 41 54 31 00 	db     "INV_STAT1",0x00
inventry_cpp_variable_26:
    fde7:	49 4e 56 5f 53 54 41 54 32 00 	db     "INV_STAT2",0x00
inventry_cpp_variable_27:
    fdf1:	49 4e 56 5f 53 54 41 54 33 00 	db     "INV_STAT3",0x00
inventry_cpp_variable_28:
    fdfb:	49 4e 56 5f 53 54 41 54 34 00 	db     "INV_STAT4",0x00
inventry_cpp_variable_29:
    fe05:	49 4e 56 5f 54 45 58 54 00 	db     "INV_TEXT",0x00
inventry_cpp_variable_30:
    fe0e:	64 65 73 63 72 69 70 74 69 6f 6e 20 3d 3d 20 30 78 61 39 61 39 61 39 61 39 00 	db     "description == 0xa9a9a9a9",0x00
inventry_cpp_variable_31:
    fe28:	64 65 73 63 72 69 70 74 69 6f 6e 20 3d 3d 20 30 78 66 66 66 66 66 66 66 66 00 	db     "description == 0xffffffff",0x00
inventry_cpp_variable_32:
    fe42:	55 73 65 20 25 73 20 6f 6e 00 	db     "Use %s on",0x00
inventry_cpp_variable_33:
    fe4c:	55 53 49 4e 47 5f 4f 4e 5f 49 44 00 	db     "USING_ON_ID",0x00
inventry_cpp_variable_34:
    fe58:	49 4e 56 5f 50 41 4e 45 4c 00 	db     "INV_PANEL",0x00
inventry_cpp_variable_35:
    fe62:	4d 4f 55 53 45 00    	db     "MOUSE",0x00
inventry_cpp_variable_36:
    fe68:	4e 55 4c 4c 5f 49 44 00 	db     "NULL_ID",0x00
inventry_cpp_variable_37:
    fe70:	55 73 65 20 25 73 20 6f 6e 00 	db     "Use %s on",0x00
inventry_cpp_variable_38:
    fe7a:	55 73 65 20 25 73 20 6f 6e 20 25 73 00 	db     "Use %s on %s",0x00
inventry_cpp_variable_39:
    fe87:	55 53 49 4e 47 5f 4f 4e 5f 49 44 00 	db     "USING_ON_ID",0x00
inventry_cpp_variable_40:
    fe93:	55 73 65 20 25 73 20 6f 6e 00 	db     "Use %s on",0x00
inventry_cpp_variable_41:
    fe9d:	55 53 49 4e 47 5f 4f 4e 5f 49 44 00 	db     "USING_ON_ID",0x00
inventry_cpp_variable_42:
    fea9:	53 54 41 54 00       	db     "STAT",0x00
inventry_cpp_variable_43:
    feae:	49 4e 56 5f 50 41 4e 45 4c 00 	db     "INV_PANEL",0x00
inventry_cpp_variable_44:
    feb8:	47 45 4e 5f 52 45 53 50 5f 33 00 	db     "GEN_RESP_3",0x00
inventry_cpp_variable_45:
    fec3:	47 45 4e 5f 52 45 53 50 5f 32 00 	db     "GEN_RESP_2",0x00
inventry_cpp_variable_46:
    fece:	47 45 4e 5f 52 45 53 50 5f 34 00 	db     "GEN_RESP_4",0x00
inventry_cpp_variable_47:
    fed9:	47 45 4e 5f 52 45 53 50 5f 31 00 	db     "GEN_RESP_1",0x00
inventry_cpp_variable_48:
    fee4:	44 41 59 5f 46 4c 41 47 00 	db     "DAY_FLAG",0x00
inventry_cpp_variable_49:
    feed:	47 45 4e 5f 52 45 53 50 5f 33 00 	db     "GEN_RESP_3",0x00
inventry_cpp_variable_50:
    fef8:	47 45 4e 5f 52 45 53 50 5f 32 00 	db     "GEN_RESP_2",0x00
inventry_cpp_variable_51:
    ff03:	47 45 4e 5f 52 45 53 50 5f 34 00 	db     "GEN_RESP_4",0x00
inventry_cpp_variable_52:
    ff0e:	47 45 4e 5f 52 45 53 50 5f 31 00 	db     "GEN_RESP_1",0x00
inventry_cpp_variable_53:
    ff19:	43 4c 45 41 56 45 52 00 	db     "CLEAVER",0x00
inventry_cpp_variable_54:
    ff21:	4e 41 49 4c 47 55 4e 00 	db     "NAILGUN",0x00
inventry_cpp_variable_55:
    ff29:	53 48 4f 54 47 55 4e 00 	db     "SHOTGUN",0x00
inventry_cpp_variable_56:
    ff31:	39 47 55 4e 00       	db     "9GUN",0x00
inventry_cpp_variable_57:
    ff36:	33 38 47 55 4e 00    	db     "38GUN",0x00
inventry_cpp_variable_58:
    ff3c:	54 4f 4d 41 48 41 57 4b 00 	db     "TOMAHAWK",0x00
inventry_cpp_variable_59:
    ff45:	4b 4e 49 46 45 00    	db     "KNIFE",0x00
inventry_cpp_variable_60:
    ff4b:	46 4c 41 49 4c 00    	db     "FLAIL",0x00
inventry_cpp_variable_61:
    ff51:	48 41 4e 44 41 58 45 00 	db     "HANDAXE",0x00
inventry_cpp_variable_62:
    ff59:	57 52 45 4e 43 48 00 	db     "WRENCH",0x00
inventry_cpp_variable_63:
    ff60:	50 49 54 43 48 46 4f 52 4b 00 	db     "PITCHFORK",0x00
inventry_cpp_variable_64:
    ff6a:	53 43 59 54 48 45 00 	db     "SCYTHE",0x00
inventry_cpp_variable_65:
    ff71:	53 57 4f 52 44 00    	db     "SWORD",0x00
inventry_cpp_variable_66:
    ff77:	43 48 41 49 4e 53 41 57 00 	db     "CHAINSAW",0x00
inventry_cpp_variable_67:
    ff80:	48 41 52 56 45 53 54 5f 42 4c 41 44 45 00 	db     "HARVEST_BLADE",0x00
inventry_cpp_variable_68:
    ff8e:	53 48 4f 56 45 4c 00 	db     "SHOVEL",0x00
inventry_cpp_variable_69:
    ff95:	46 49 52 45 41 58 45 00 	db     "FIREAXE",0x00
inventry_cpp_variable_70:
    ff9d:	42 41 54 00          	db     "BAT",0x00
inventry_cpp_variable_71:
    ffa1:	52 41 5a 4f 52 00    	db     "RAZOR",0x00
inventry_cpp_variable_72:
    ffa7:	50 4f 4f 4c 53 54 49 43 4b 00 	db     "POOLSTICK",0x00
inventry_cpp_variable_73:
    ffb1:	4e 4f 54 45 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "NOTE_PHOTOCOPY",0x00
inventry_cpp_variable_74:
    ffc0:	4e 4f 54 45 00       	db     "NOTE",0x00
inventry_cpp_variable_75:
    ffc5:	50 48 4f 54 4f 5f 4f 46 5f 57 48 41 4c 45 59 5f 48 45 52 52 49 4c 4c 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "PHOTO_OF_WHALEY_HERRILL_PHOTOCOPY",0x00
inventry_cpp_variable_76:
    ffe7:	50 48 4f 54 4f 5f 4f 46 5f 57 48 41 4c 45 59 5f 48 45 52 52 49 4c 4c 00 	db     "PHOTO_OF_WHALEY_HERRILL",0x00
inventry_cpp_variable_77:
    ffff:	43 41 53 4b 45 54 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "CASKET_PHOTOCOPY",0x00
inventry_cpp_variable_78:
   10010:	43 41 53 4b 45 54 5f 50 48 4f 54 4f 00 	db     "CASKET_PHOTO",0x00
inventry_cpp_variable_79:
   1001d:	4c 4f 44 47 45 5f 41 50 50 4c 49 43 41 54 49 4f 4e 00 	db     "LODGE_APPLICATION",0x00
inventry_cpp_variable_80:
   1002f:	43 4f 4d 50 4c 45 54 45 44 5f 4c 4f 44 47 45 5f 41 50 50 4c 49 43 41 54 49 4f 4e 00 	db     "COMPLETED_LODGE_APPLICATION",0x00
inventry_cpp_variable_81:
   1004b:	4d 45 41 54 5f 50 45 52 4d 49 53 53 49 4f 4e 30 00 	db     "MEAT_PERMISSION0",0x00
inventry_cpp_variable_82:
   1005c:	4d 45 41 54 5f 50 45 52 4d 49 53 53 49 4f 4e 00 	db     "MEAT_PERMISSION",0x00
inventry_cpp_variable_83:
   1006c:	43 48 45 43 4b 42 4f 4f 4b 00 	db     "CHECKBOOK",0x00
inventry_cpp_variable_84:
   10076:	43 48 45 43 4b 42 4f 4f 4b 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "CHECKBOOK_PHOTOCOPY",0x00
inventry_cpp_variable_85:
   1008a:	53 41 46 45 42 4f 4f 4b 00 	db     "SAFEBOOK",0x00
inventry_cpp_variable_86:
   10093:	50 41 54 52 4f 4c 5f 53 43 48 45 44 00 	db     "PATROL_SCHED",0x00
inventry_cpp_variable_87:
   100a0:	54 56 5f 44 45 45 44 00 	db     "TV_DEED",0x00
inventry_cpp_variable_88:
   100a8:	54 56 5f 44 45 45 44 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "TV_DEED_PHOTOCOPY",0x00
inventry_cpp_variable_89:
   100ba:	49 4e 56 49 54 45 00 	db     "INVITE",0x00
inventry_cpp_variable_90:
   100c1:	43 4c 55 45 00       	db     "CLUE",0x00
inventry_cpp_variable_91:
   100c6:	41 55 54 4f 47 52 41 50 48 00 	db     "AUTOGRAPH",0x00
inventry_cpp_variable_92:
   100d0:	53 41 4e 44 57 49 43 48 00 	db     "SANDWICH",0x00
inventry_cpp_variable_93:
   100d9:	53 41 4e 44 57 49 43 48 32 00 	db     "SANDWICH2",0x00
inventry_cpp_variable_94:
   100e3:	53 59 52 49 4e 47 45 00 	db     "SYRINGE",0x00
inventry_cpp_variable_95:
   100eb:	53 54 5f 41 53 50 52 49 4e 00 	db     "ST_ASPRIN",0x00
inventry_cpp_variable_96:
   100f5:	53 54 5f 43 4f 55 47 48 4d 00 	db     "ST_COUGHM",0x00
inventry_cpp_variable_97:
   100ff:	53 54 5f 56 49 54 41 4d 4e 00 	db     "ST_VITAMN",0x00
inventry_cpp_variable_98:
   10109:	2e 32 35 2d 68 70 3d 25 69 20 20 63 75 72 72 65 6e 74 5f 73 74 61 74 3d 25 69 00 	db     ".25-hp=%i  current_stat=%i",0x00
inventry_cpp_variable_99:
   10124:	49 4e 56 5f 53 54 41 54 33 00 	db     "INV_STAT3",0x00
inventry_cpp_variable_100:
   1012e:	49 4e 56 45 4e 54 52 4f 59 00 	db     "INVENTROY",0x00
inventry_cpp_variable_101:
   10138:	49 4e 56 5f 53 54 41 54 32 00 	db     "INV_STAT2",0x00
inventry_cpp_variable_102:
   10142:	49 4e 56 45 4e 54 52 4f 59 00 	db     "INVENTROY",0x00
inventry_cpp_variable_103:
   1014c:	49 4e 56 5f 53 54 41 54 31 00 	db     "INV_STAT1",0x00
inventry_cpp_variable_104:
   10156:	49 4e 56 45 4e 54 52 4f 59 00 	db     "INVENTROY",0x00
inventry_cpp_variable_105:
   10160:	49 4e 56 5f 53 54 41 54 34 00 	db     "INV_STAT4",0x00
inventry_cpp_variable_106:
   1016a:	49 4e 56 45 4e 54 52 4f 59 00 	db     "INVENTROY",0x00
inventry_cpp_variable_107:
   10174:	49 4e 56 5f 53 54 41 54 34 00 	db     "INV_STAT4",0x00
inventry_cpp_variable_108:
   1017e:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
inventry_cpp_variable_109:
   10196:	2e 35 2d 68 70 3d 25 69 20 20 63 75 72 72 65 6e 74 5f 73 74 61 74 3d 25 69 00 	db     ".5-hp=%i  current_stat=%i",0x00
inventry_cpp_variable_110:
   101b0:	49 4e 56 5f 53 54 41 54 34 00 	db     "INV_STAT4",0x00
inventry_cpp_variable_111:
   101ba:	49 4e 56 45 4e 54 52 4f 59 00 	db     "INVENTROY",0x00
inventry_cpp_variable_112:
   101c4:	49 4e 56 5f 53 54 41 54 32 00 	db     "INV_STAT2",0x00
inventry_cpp_variable_113:
   101ce:	49 4e 56 45 4e 54 52 4f 59 00 	db     "INVENTROY",0x00
inventry_cpp_variable_114:
   101d8:	49 4e 56 5f 53 54 41 54 31 00 	db     "INV_STAT1",0x00
inventry_cpp_variable_115:
   101e2:	49 4e 56 45 4e 54 52 4f 59 00 	db     "INVENTROY",0x00
inventry_cpp_variable_116:
   101ec:	49 4e 56 5f 53 54 41 54 33 00 	db     "INV_STAT3",0x00
inventry_cpp_variable_117:
   101f6:	49 4e 56 45 4e 54 52 4f 59 00 	db     "INVENTROY",0x00
inventry_cpp_variable_118:
   10200:	49 4e 56 5f 53 54 41 54 33 00 	db     "INV_STAT3",0x00
inventry_cpp_variable_119:
   1020a:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
inventry_cpp_variable_120:
   10222:	49 4e 56 5f 53 54 41 54 34 00 	db     "INV_STAT4",0x00
inventry_cpp_variable_121:
   1022c:	49 4e 56 45 4e 54 52 4f 59 00 	db     "INVENTROY",0x00
inventry_cpp_variable_122:
   10236:	49 4e 56 5f 53 54 41 54 33 00 	db     "INV_STAT3",0x00
inventry_cpp_variable_123:
   10240:	49 4e 56 45 4e 54 52 4f 59 00 	db     "INVENTROY",0x00
inventry_cpp_variable_124:
   1024a:	49 4e 56 5f 53 54 41 54 31 00 	db     "INV_STAT1",0x00
inventry_cpp_variable_125:
   10254:	49 4e 56 45 4e 54 52 4f 59 00 	db     "INVENTROY",0x00
inventry_cpp_variable_126:
   1025e:	49 4e 56 5f 53 54 41 54 32 00 	db     "INV_STAT2",0x00
inventry_cpp_variable_127:
   10268:	49 4e 56 45 4e 54 52 4f 59 00 	db     "INVENTROY",0x00
inventry_cpp_variable_128:
   10272:	49 4e 56 5f 53 54 41 54 32 00 	db     "INV_STAT2",0x00
inventry_cpp_variable_129:
   1027c:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
inventry_cpp_variable_130:
   10294:	31 2d 68 70 3d 25 69 20 20 63 75 72 72 65 6e 74 5f 73 74 61 74 3d 25 69 00 	db     "1-hp=%i  current_stat=%i",0x00
inventry_cpp_variable_131:
   102ad:	49 4e 56 5f 53 54 41 54 34 00 	db     "INV_STAT4",0x00
inventry_cpp_variable_132:
   102b7:	49 4e 56 45 4e 54 52 4f 59 00 	db     "INVENTROY",0x00
inventry_cpp_variable_133:
   102c1:	49 4e 56 5f 53 54 41 54 33 00 	db     "INV_STAT3",0x00
inventry_cpp_variable_134:
   102cb:	49 4e 56 45 4e 54 52 4f 59 00 	db     "INVENTROY",0x00
inventry_cpp_variable_135:
   102d5:	49 4e 56 5f 53 54 41 54 32 00 	db     "INV_STAT2",0x00
inventry_cpp_variable_136:
   102df:	49 4e 56 45 4e 54 52 4f 59 00 	db     "INVENTROY",0x00
inventry_cpp_variable_137:
   102e9:	49 4e 56 5f 53 54 41 54 31 00 	db     "INV_STAT1",0x00
inventry_cpp_variable_138:
   102f3:	49 4e 56 45 4e 54 52 4f 59 00 	db     "INVENTROY",0x00
inventry_cpp_variable_139:
   102fd:	49 4e 56 5f 53 54 41 54 31 00 	db     "INV_STAT1",0x00
inventry_cpp_variable_140:
   10307:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
inventry_cpp_variable_141:
   1031f:	68 6d 6d 2d 68 70 3d 25 69 20 20 63 75 72 72 65 6e 74 5f 73 74 61 74 3d 25 69 00 	db     "hmm-hp=%i  current_stat=%i",0x00
inventry_cpp_variable_142:
   1033a:	6e 65 77 5f 77 65 61 70 6f 6e 20 3d 20 25 69 20 20 20 20 20 25 73 00 	db     "new_weapon = %i     %s",0x00
inventry_cpp_variable_143:
   10351:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
inventry_cpp_variable_144:
   10369:	44 69 73 61 72 6d 69 6e 67 20 25 73 2e 2e 2e 00 	db     "Disarming %s...",0x00
inventry_cpp_variable_145:
   10379:	49 44 45 4e 54 00    	db     "IDENT",0x00
inventry_cpp_variable_146:
   1037f:	41 72 6d 69 6e 67 20 25 73 2c 20 25 69 20 6e 61 69 6c 73 2e 2e 2e 00 	db     "Arming %s, %i nails...",0x00
inventry_cpp_variable_147:
   10396:	41 72 6d 69 6e 67 20 25 73 2c 20 25 69 20 73 68 65 6c 6c 73 2e 2e 2e 00 	db     "Arming %s, %i shells...",0x00
inventry_cpp_variable_148:
   103ae:	41 72 6d 69 6e 67 20 25 73 2c 20 25 69 20 62 75 6c 6c 65 74 73 2e 2e 2e 00 	db     "Arming %s, %i bullets...",0x00
inventry_cpp_variable_149:
   103c7:	41 72 6d 69 6e 67 20 25 73 2c 20 25 69 20 62 75 6c 6c 65 74 73 2e 2e 2e 00 	db     "Arming %s, %i bullets...",0x00
inventry_cpp_variable_150:
   103e0:	41 72 6d 69 6e 67 20 25 73 2c 20 25 69 20 67 61 73 2e 2e 2e 00 	db     "Arming %s, %i gas...",0x00
inventry_cpp_variable_151:
   103f5:	41 72 6d 69 6e 67 20 25 73 2e 2e 2e 00 	db     "Arming %s...",0x00
inventry_cpp_variable_152:
   10402:	49 44 45 4e 54 00    	db     "IDENT",0x00
inventry_cpp_variable_153:
   10408:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
inventry_cpp_variable_154:
   10420:	49 4e 56 5f 53 54 41 54 31 00 	db     "INV_STAT1",0x00
inventry_cpp_variable_155:
   1042a:	49 4e 56 45 4e 54 52 4f 59 00 	db     "INVENTROY",0x00
inventry_cpp_variable_156:
   10434:	49 4e 56 5f 53 54 41 54 32 00 	db     "INV_STAT2",0x00
inventry_cpp_variable_157:
   1043e:	49 4e 56 45 4e 54 52 4f 59 00 	db     "INVENTROY",0x00
inventry_cpp_variable_158:
   10448:	49 4e 56 5f 53 54 41 54 33 00 	db     "INV_STAT3",0x00
inventry_cpp_variable_159:
   10452:	49 4e 56 45 4e 54 52 4f 59 00 	db     "INVENTROY",0x00
inventry_cpp_variable_160:
   1045c:	49 4e 56 5f 53 54 41 54 34 00 	db     "INV_STAT4",0x00
inventry_cpp_variable_161:
   10466:	49 4e 56 45 4e 54 52 4f 59 00 	db     "INVENTROY",0x00
inventry_cpp_variable_162:
   10470:	64 72 61 67 67 69 6e 67 20 3d 20 25 69 00 	db     "dragging = %i",0x00
inventry_cpp_variable_163:
   1047e:	49 4e 56 5f 53 54 41 54 31 00 	db     "INV_STAT1",0x00
inventry_cpp_variable_164:
   10488:	49 4e 56 45 4e 54 52 4f 59 00 	db     "INVENTROY",0x00
inventry_cpp_variable_165:
   10492:	49 4e 56 5f 53 54 41 54 32 00 	db     "INV_STAT2",0x00
inventry_cpp_variable_166:
   1049c:	49 4e 56 45 4e 54 52 4f 59 00 	db     "INVENTROY",0x00
inventry_cpp_variable_167:
   104a6:	49 4e 56 5f 53 54 41 54 33 00 	db     "INV_STAT3",0x00
inventry_cpp_variable_168:
   104b0:	49 4e 56 45 4e 54 52 4f 59 00 	db     "INVENTROY",0x00
inventry_cpp_variable_169:
   104ba:	49 4e 56 5f 53 54 41 54 34 00 	db     "INV_STAT4",0x00
inventry_cpp_variable_170:
   104c4:	49 4e 56 45 4e 54 52 4f 59 00 	db     "INVENTROY",0x00
inventry_cpp_variable_171:                                                                          ; access size: QWORD
   104ce:	00 00 00 00 00 00 1e 40 	dq     0x401e000000000000
inventry_cpp_variable_172:                                                                          ; access size: QWORD
   104d6:	00 00 00 00 00 00 2e 40 	dq     0x402e000000000000
inventry_cpp_variable_173:                                                                          ; access size: QWORD
   104de:	00 00 00 00 00 80 36 40 	dq     0x4036800000000000
inventry_cpp_variable_174:                                                                          ; access size: DWORD
   104e6:	00 00 a0 c0          	dd     0xc0a00000
inventry_cpp_variable_175:                                                                          ; access size: QWORD
   104ea:	9a 99 99 99 99 99 d9 bf 	dq     0xbfd999999999999a
inventry_cpp_variable_176:                                                                          ; access size: QWORD
   104f2:	9a 99 99 99 99 99 d9 bf 	dq     0xbfd999999999999a
inventry_cpp_variable_177:
   104fa:	42 4f 58 31 00       	db     "BOX1",0x00
inventry_cpp_variable_178:
   104ff:	42 4f 58 32 00       	db     "BOX2",0x00
inventry_cpp_variable_179:
   10504:	42 4f 58 33 00       	db     "BOX3",0x00
inventry_cpp_variable_180:
   10509:	42 4f 58 34 00       	db     "BOX4",0x00
inventry_cpp_variable_181:
   1050e:	49 44 45 4e 54 00    	db     "IDENT",0x00
inventry_cpp_variable_182:
   10514:	47 4f 5f 42 4f 59 4c 43 4f 50 59 43 55 00 	db     "GO_BOYLCOPYCU",0x00
inventry_cpp_variable_183:
   10522:	47 4f 5f 42 4f 59 4c 4e 4f 54 45 43 55 00 	db     "GO_BOYLNOTECU",0x00
inventry_cpp_variable_184:
   10530:	47 4f 5f 42 52 4f 4f 4d 43 50 59 43 55 00 	db     "GO_BROOMCPYCU",0x00
inventry_cpp_variable_185:
   1053e:	47 4f 5f 42 52 4f 4f 4d 50 49 43 43 55 00 	db     "GO_BROOMPICCU",0x00
inventry_cpp_variable_186:
   1054c:	47 4f 5f 43 41 53 4b 54 43 50 59 43 55 00 	db     "GO_CASKTCPYCU",0x00
inventry_cpp_variable_187:
   1055a:	47 4f 5f 43 41 53 4b 54 50 49 43 43 55 00 	db     "GO_CASKTPICCU",0x00
inventry_cpp_variable_188:
   10568:	47 4f 5f 4c 4f 44 47 41 50 50 31 43 55 00 	db     "GO_LODGAPP1CU",0x00
inventry_cpp_variable_189:
   10576:	47 4f 5f 4c 4f 44 47 41 50 50 32 43 55 00 	db     "GO_LODGAPP2CU",0x00
inventry_cpp_variable_190:
   10584:	47 4f 5f 50 45 52 4d 49 54 31 43 55 00 	db     "GO_PERMIT1CU",0x00
inventry_cpp_variable_191:
   10591:	47 4f 5f 50 45 52 4d 49 54 32 43 55 00 	db     "GO_PERMIT2CU",0x00
inventry_cpp_variable_192:
   1059e:	47 4f 5f 52 45 47 49 53 54 45 52 43 55 00 	db     "GO_REGISTERCU",0x00
inventry_cpp_variable_193:
   105ac:	47 4f 5f 52 47 53 54 52 43 50 59 43 55 00 	db     "GO_RGSTRCPYCU",0x00
inventry_cpp_variable_194:
   105ba:	47 4f 5f 53 41 46 45 42 4f 4f 4b 43 55 00 	db     "GO_SAFEBOOKCU",0x00
inventry_cpp_variable_195:
   105c8:	47 4f 5f 53 43 48 45 44 55 4c 45 43 55 00 	db     "GO_SCHEDULECU",0x00
inventry_cpp_variable_196:
   105d6:	47 4f 5f 54 56 44 45 45 44 31 43 55 00 	db     "GO_TVDEED1CU",0x00
inventry_cpp_variable_197:
   105e3:	47 4f 5f 54 56 44 45 45 44 32 43 55 00 	db     "GO_TVDEED2CU",0x00
inventry_cpp_variable_198:
   105f0:	47 4f 5f 49 4e 56 49 54 45 43 55 00 	db     "GO_INVITECU",0x00
inventry_cpp_variable_199:
   105fc:	47 4f 54 4f 5f 43 4c 55 45 5f 43 55 00 	db     "GOTO_CLUE_CU",0x00
inventry_cpp_variable_200:
   10609:	47 4f 5f 41 55 54 4f 47 52 50 48 43 55 00 	db     "GO_AUTOGRPHCU",0x00
inventry_cpp_variable_201:
   10617:	4d 6f 6e 64 61 79 00 	db     "Monday",0x00
inventry_cpp_variable_202:
   1061e:	54 75 65 73 64 61 79 00 	db     "Tuesday",0x00
inventry_cpp_variable_203:
   10626:	57 65 64 6e 65 73 64 61 79 00 	db     "Wednesday",0x00
inventry_cpp_variable_204:
   10630:	54 68 75 72 73 64 61 79 00 	db     "Thursday",0x00
inventry_cpp_variable_205:
   10639:	46 72 69 64 61 79 00 	db     "Friday",0x00
inventry_cpp_variable_206:
   10640:	53 61 74 75 72 64 61 79 00 	db     "Saturday",0x00
inventry_cpp_variable_207:
   10649:	49 4e 56 45 4e 54 4f 52 59 00 	db     "INVENTORY",0x00
   10653:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 94 (D:\SOURCE\inventry.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 94: D:\SOURCE\inventry.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------
item_closeup_index:                                                                                 ; access size: DWORD
   140c4:	ff ff ff ff          	dd     0xffffffff
item_closeup_command:                                                                               ; access size: DWORDS
   140c8:	14 05 01 00          	dd     @obj3:inventry_cpp_variable_182                              ; fixup: num: 21617, src obj: 3, src ofs: 0x140c8, dst obj: 3, dst ofs: 0x10514
   140cc:	22 05 01 00          	dd     @obj3:inventry_cpp_variable_183                              ; fixup: num: 21616, src obj: 3, src ofs: 0x140cc, dst obj: 3, dst ofs: 0x10522
   140d0:	30 05 01 00          	dd     @obj3:inventry_cpp_variable_184                              ; fixup: num: 21615, src obj: 3, src ofs: 0x140d0, dst obj: 3, dst ofs: 0x10530
   140d4:	3e 05 01 00          	dd     @obj3:inventry_cpp_variable_185                              ; fixup: num: 21614, src obj: 3, src ofs: 0x140d4, dst obj: 3, dst ofs: 0x1053e
   140d8:	4c 05 01 00          	dd     @obj3:inventry_cpp_variable_186                              ; fixup: num: 21613, src obj: 3, src ofs: 0x140d8, dst obj: 3, dst ofs: 0x1054c
   140dc:	5a 05 01 00          	dd     @obj3:inventry_cpp_variable_187                              ; fixup: num: 21612, src obj: 3, src ofs: 0x140dc, dst obj: 3, dst ofs: 0x1055a
   140e0:	68 05 01 00          	dd     @obj3:inventry_cpp_variable_188                              ; fixup: num: 21611, src obj: 3, src ofs: 0x140e0, dst obj: 3, dst ofs: 0x10568
   140e4:	76 05 01 00          	dd     @obj3:inventry_cpp_variable_189                              ; fixup: num: 21610, src obj: 3, src ofs: 0x140e4, dst obj: 3, dst ofs: 0x10576
   140e8:	84 05 01 00          	dd     @obj3:inventry_cpp_variable_190                              ; fixup: num: 21609, src obj: 3, src ofs: 0x140e8, dst obj: 3, dst ofs: 0x10584
   140ec:	91 05 01 00          	dd     @obj3:inventry_cpp_variable_191                              ; fixup: num: 21608, src obj: 3, src ofs: 0x140ec, dst obj: 3, dst ofs: 0x10591
   140f0:	9e 05 01 00          	dd     @obj3:inventry_cpp_variable_192                              ; fixup: num: 21607, src obj: 3, src ofs: 0x140f0, dst obj: 3, dst ofs: 0x1059e
   140f4:	ac 05 01 00          	dd     @obj3:inventry_cpp_variable_193                              ; fixup: num: 21606, src obj: 3, src ofs: 0x140f4, dst obj: 3, dst ofs: 0x105ac
   140f8:	ba 05 01 00          	dd     @obj3:inventry_cpp_variable_194                              ; fixup: num: 21605, src obj: 3, src ofs: 0x140f8, dst obj: 3, dst ofs: 0x105ba
   140fc:	c8 05 01 00          	dd     @obj3:inventry_cpp_variable_195                              ; fixup: num: 21604, src obj: 3, src ofs: 0x140fc, dst obj: 3, dst ofs: 0x105c8
   14100:	d6 05 01 00          	dd     @obj3:inventry_cpp_variable_196                              ; fixup: num: 21603, src obj: 3, src ofs: 0x14100, dst obj: 3, dst ofs: 0x105d6
   14104:	e3 05 01 00          	dd     @obj3:inventry_cpp_variable_197                              ; fixup: num: 21602, src obj: 3, src ofs: 0x14104, dst obj: 3, dst ofs: 0x105e3
   14108:	f0 05 01 00          	dd     @obj3:inventry_cpp_variable_198                              ; fixup: num: 21601, src obj: 3, src ofs: 0x14108, dst obj: 3, dst ofs: 0x105f0
   1410c:	fc 05 01 00          	dd     @obj3:inventry_cpp_variable_199                              ; fixup: num: 21600, src obj: 3, src ofs: 0x1410c, dst obj: 3, dst ofs: 0x105fc
item_closeup_command_variable_1:                                                                    ; access size: DWORDS
   14110:	09 06 01 00          	dd     @obj3:inventry_cpp_variable_200                              ; fixup: num: 21599, src obj: 3, src ofs: 0x14110, dst obj: 3, dst ofs: 0x10609
days_text:
   14114:	17 06 01 00          	dd     @obj3:inventry_cpp_variable_201                              ; fixup: num: 21598, src obj: 3, src ofs: 0x14114, dst obj: 3, dst ofs: 0x10617
   14118:	1e 06 01 00          	dd     @obj3:inventry_cpp_variable_202                              ; fixup: num: 21597, src obj: 3, src ofs: 0x14118, dst obj: 3, dst ofs: 0x1061e
   1411c:	26 06 01 00          	dd     @obj3:inventry_cpp_variable_203                              ; fixup: num: 21596, src obj: 3, src ofs: 0x1411c, dst obj: 3, dst ofs: 0x10626
   14120:	30 06 01 00          	dd     @obj3:inventry_cpp_variable_204                              ; fixup: num: 21595, src obj: 3, src ofs: 0x14120, dst obj: 3, dst ofs: 0x10630
   14124:	39 06 01 00          	dd     @obj3:inventry_cpp_variable_205                              ; fixup: num: 21594, src obj: 3, src ofs: 0x14124, dst obj: 3, dst ofs: 0x10639
   14128:	40 06 01 00          	dd     @obj3:inventry_cpp_variable_206                              ; fixup: num: 21593, src obj: 3, src ofs: 0x14128, dst obj: 3, dst ofs: 0x10640
INVENTORY_ROOM:                                                                                     ; access size: DWORD
   1412c:	49 06 01 00          	dd     @obj3:inventry_cpp_variable_207                              ; fixup: num: 21592, src obj: 3, src ofs: 0x1412c, dst obj: 3, dst ofs: 0x10649

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 94 (D:\SOURCE\inventry.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 94: D:\SOURCE\inventry.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------
in_inventory:                                                                                       ; access size: BYTE
   32494:	00 00 00 00          	db     4 dup(0x00)                                                  ; dec:   0, chr: '\0'
panel:                                                                                              ; access size: DWORD
   32498:	00 00 00 00          	dd     0x00000000
text_box1:                                                                                          ; access size: DWORD
   3249c:	00 00 00 00          	dd     0x00000000
text_box2:                                                                                          ; access size: DWORD
   324a0:	00 00 00 00          	dd     0x00000000
text_box3:                                                                                          ; access size: DWORD
   324a4:	00 00 00 00          	dd     0x00000000
text_box4:                                                                                          ; access size: DWORD
   324a8:	00 00 00 00          	dd     0x00000000
using_on_bm:                                                                                        ; access size: DWORD
   324ac:	00 00 00 00          	dd     0x00000000
using_on_text:                                                                                      ; access size: DWORD
   324b0:	00 00 00 00          	dd     0x00000000
using_on_temp_text:                                                                                 ; access size: DWORD
   324b4:	00 00 00 00          	dd     0x00000000

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 94 (D:\SOURCE\inventry.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------