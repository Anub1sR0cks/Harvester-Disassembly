;-------------------------------------------------------------------------------
;                                                                              -
;  Module 55: D:\SOURCE\dep_loom.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function 'talk_to_DEPUTY_LOOMIS'              -
;-------------------------------------------------
talk_to_DEPUTY_LOOMIS:
   24f80:	53                   	push   ebx
   24f81:	51                   	push   ecx
   24f82:	52                   	push   edx
   24f83:	56                   	push   esi
   24f84:	57                   	push   edi
   24f85:	55                   	push   ebp
   24f86:	be 4c 66 00 00       	mov    esi,@obj3:dep_loom_cpp_variable_1                            ; fixup: num: 5551, src obj: 1, src ofs: 0x24f87, dst obj: 3, dst ofs: 0x664c
   24f8b:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 5550, src obj: 1, src ofs: 0x24f8c, dst obj: 3, dst ofs: 0x295c0
   24f90:	57                   	push   edi
talk_to_DEPUTY_LOOMIS_branch_1:
   24f91:	8a 06                	mov    al,BYTE PTR [esi]
   24f93:	88 07                	mov    BYTE PTR [edi],al
   24f95:	3c 00                	cmp    al,0x0
   24f97:	74 10                	je     talk_to_DEPUTY_LOOMIS_branch_2
   24f99:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   24f9c:	83 c6 02             	add    esi,0x2
   24f9f:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   24fa2:	83 c7 02             	add    edi,0x2
   24fa5:	3c 00                	cmp    al,0x0
   24fa7:	75 e8                	jne    talk_to_DEPUTY_LOOMIS_branch_1
talk_to_DEPUTY_LOOMIS_branch_2:
   24fa9:	5f                   	pop    edi
   24faa:	8b 15 bc 94 02 00    	mov    edx,DWORD PTR ds:@obj3:showing_item                          ; fixup: num: 5549, src obj: 1, src ofs: 0x24fac, dst obj: 3, dst ofs: 0x294bc
   24fb0:	85 d2                	test   edx,edx
   24fb2:	0f 84 da 02 00 00    	je     talk_to_DEPUTY_LOOMIS_branch_17
   24fb8:	89 d0                	mov    eax,edx
   24fba:	ba 4d 66 00 00       	mov    edx,@obj3:dep_loom_cpp_variable_2                            ; fixup: num: 5548, src obj: 1, src ofs: 0x24fbb, dst obj: 3, dst ofs: 0x664d
   24fbf:	e8 6c 14 05 00       	call   strcmp_
   24fc4:	85 c0                	test   eax,eax
   24fc6:	74 63                	je     talk_to_DEPUTY_LOOMIS_branch_3
   24fc8:	ba 52 66 00 00       	mov    edx,@obj3:dep_loom_cpp_variable_3                            ; fixup: num: 5547, src obj: 1, src ofs: 0x24fc9, dst obj: 3, dst ofs: 0x6652
   24fcd:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 5546, src obj: 1, src ofs: 0x24fce, dst obj: 3, dst ofs: 0x294bc
   24fd2:	e8 59 14 05 00       	call   strcmp_
   24fd7:	85 c0                	test   eax,eax
   24fd9:	74 50                	je     talk_to_DEPUTY_LOOMIS_branch_3
   24fdb:	ba 61 66 00 00       	mov    edx,@obj3:dep_loom_cpp_variable_4                            ; fixup: num: 5545, src obj: 1, src ofs: 0x24fdc, dst obj: 3, dst ofs: 0x6661
   24fe0:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 5544, src obj: 1, src ofs: 0x24fe1, dst obj: 3, dst ofs: 0x294bc
   24fe5:	e8 46 14 05 00       	call   strcmp_
   24fea:	85 c0                	test   eax,eax
   24fec:	74 3d                	je     talk_to_DEPUTY_LOOMIS_branch_3
   24fee:	ba 6b 66 00 00       	mov    edx,@obj3:dep_loom_cpp_variable_5                            ; fixup: num: 5543, src obj: 1, src ofs: 0x24fef, dst obj: 3, dst ofs: 0x666b
   24ff3:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 5542, src obj: 1, src ofs: 0x24ff4, dst obj: 3, dst ofs: 0x294bc
   24ff8:	e8 33 14 05 00       	call   strcmp_
   24ffd:	85 c0                	test   eax,eax
   24fff:	74 2a                	je     talk_to_DEPUTY_LOOMIS_branch_3
   25001:	ba 7f 66 00 00       	mov    edx,@obj3:dep_loom_cpp_variable_6                            ; fixup: num: 5843, src obj: 1, src ofs: 0x25002, dst obj: 3, dst ofs: 0x667f
   25006:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 5842, src obj: 1, src ofs: 0x25007, dst obj: 3, dst ofs: 0x294bc
   2500b:	e8 20 14 05 00       	call   strcmp_
   25010:	85 c0                	test   eax,eax
   25012:	74 17                	je     talk_to_DEPUTY_LOOMIS_branch_3
   25014:	ba 87 66 00 00       	mov    edx,@obj3:dep_loom_cpp_variable_7                            ; fixup: num: 5841, src obj: 1, src ofs: 0x25015, dst obj: 3, dst ofs: 0x6687
   25019:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 5840, src obj: 1, src ofs: 0x2501a, dst obj: 3, dst ofs: 0x294bc
   2501e:	e8 0d 14 05 00       	call   strcmp_
   25023:	85 c0                	test   eax,eax
   25025:	0f 85 7a 00 00 00    	jne    talk_to_DEPUTY_LOOMIS_branch_7
talk_to_DEPUTY_LOOMIS_branch_3:
   2502b:	ba 01 00 00 00       	mov    edx,0x1
   25030:	31 c0                	xor    eax,eax
   25032:	e8 f9 32 00 00       	call   SHOWN_EVIDENCE_OF_BLACKMAIL_AROUND
   25037:	31 db                	xor    ebx,ebx
   25039:	ba 99 66 00 00       	mov    edx,@obj3:dep_loom_cpp_variable_8                            ; fixup: num: 5853, src obj: 1, src ofs: 0x2503a, dst obj: 3, dst ofs: 0x6699
   2503e:	b8 09 12 00 00       	mov    eax,0x1209
   25043:	e8 48 56 04 00       	call   play_wav
   25048:	b8 50 00 00 00       	mov    eax,0x50
   2504d:	e8 4e 51 00 00       	call   GetDlgFileString
   25052:	e8 b9 5e 04 00       	call   get_response
   25057:	83 f8 01             	cmp    eax,0x1
   2505a:	75 0c                	jne    talk_to_DEPUTY_LOOMIS_branch_4
   2505c:	ba a0 66 00 00       	mov    edx,@obj3:dep_loom_cpp_variable_9                            ; fixup: num: 5852, src obj: 1, src ofs: 0x2505d, dst obj: 3, dst ofs: 0x66a0
   25061:	b8 14 12 00 00       	mov    eax,0x1214
   25066:	eb 0f                	jmp    talk_to_DEPUTY_LOOMIS_branch_5
talk_to_DEPUTY_LOOMIS_branch_4:
   25068:	83 f8 02             	cmp    eax,0x2
   2506b:	75 11                	jne    talk_to_DEPUTY_LOOMIS_branch_6
   2506d:	ba a7 66 00 00       	mov    edx,@obj3:dep_loom_cpp_variable_10                           ; fixup: num: 5851, src obj: 1, src ofs: 0x2506e, dst obj: 3, dst ofs: 0x66a7
   25072:	b8 19 12 00 00       	mov    eax,0x1219
talk_to_DEPUTY_LOOMIS_branch_5:
   25077:	31 db                	xor    ebx,ebx
   25079:	e8 12 56 04 00       	call   play_wav
talk_to_DEPUTY_LOOMIS_branch_6:
   2507e:	bb 03 00 00 00       	mov    ebx,0x3
   25083:	ba ae 66 00 00       	mov    edx,@obj3:dep_loom_cpp_variable_11                           ; fixup: num: 5850, src obj: 1, src ofs: 0x25084, dst obj: 3, dst ofs: 0x66ae
   25088:	b8 1f 12 00 00       	mov    eax,0x121f
   2508d:	e8 fe 55 04 00       	call   play_wav
   25092:	b8 b5 66 00 00       	mov    eax,@obj3:dep_loom_cpp_variable_12                           ; fixup: num: 5849, src obj: 1, src ofs: 0x25093, dst obj: 3, dst ofs: 0x66b5
   25097:	e8 e4 7a 04 00       	call   ExecuteCommand
   2509c:	31 c0                	xor    eax,eax
   2509e:	5d                   	pop    ebp
   2509f:	5f                   	pop    edi
   250a0:	5e                   	pop    esi
   250a1:	5a                   	pop    edx
   250a2:	59                   	pop    ecx
   250a3:	5b                   	pop    ebx
   250a4:	c3                   	ret    
talk_to_DEPUTY_LOOMIS_branch_7:
   250a5:	ba c4 66 00 00       	mov    edx,@obj3:dep_loom_cpp_variable_13                           ; fixup: num: 5848, src obj: 1, src ofs: 0x250a6, dst obj: 3, dst ofs: 0x66c4
   250aa:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 5847, src obj: 1, src ofs: 0x250ab, dst obj: 3, dst ofs: 0x294bc
   250af:	e8 7c 13 05 00       	call   strcmp_
   250b4:	85 c0                	test   eax,eax
   250b6:	74 13                	je     talk_to_DEPUTY_LOOMIS_branch_8
   250b8:	ba cb 66 00 00       	mov    edx,@obj3:dep_loom_cpp_variable_14                           ; fixup: num: 5846, src obj: 1, src ofs: 0x250b9, dst obj: 3, dst ofs: 0x66cb
   250bd:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 5845, src obj: 1, src ofs: 0x250be, dst obj: 3, dst ofs: 0x294bc
   250c2:	e8 69 13 05 00       	call   strcmp_
   250c7:	85 c0                	test   eax,eax
   250c9:	75 2b                	jne    talk_to_DEPUTY_LOOMIS_branch_9
talk_to_DEPUTY_LOOMIS_branch_8:
   250cb:	b8 d3 66 00 00       	mov    eax,@obj3:dep_loom_cpp_variable_15                           ; fixup: num: 5844, src obj: 1, src ofs: 0x250cc, dst obj: 3, dst ofs: 0x66d3
   250d0:	e8 bb 76 04 00       	call   check_script_flag
   250d5:	84 c0                	test   al,al
   250d7:	74 1d                	je     talk_to_DEPUTY_LOOMIS_branch_9
   250d9:	ba 01 00 00 00       	mov    edx,0x1
   250de:	31 c0                	xor    eax,eax
   250e0:	e8 6b 32 00 00       	call   SHOWN_LEDGERS_TO_ANYONE_OTHER_THAN_SHERIFF
   250e5:	31 db                	xor    ebx,ebx
   250e7:	ba e5 66 00 00       	mov    edx,@obj3:dep_loom_cpp_variable_16                           ; fixup: num: 5863, src obj: 1, src ofs: 0x250e8, dst obj: 3, dst ofs: 0x66e5
   250ec:	b8 29 12 00 00       	mov    eax,0x1229
   250f1:	e9 8e 01 00 00       	jmp    talk_to_DEPUTY_LOOMIS_branch_16
talk_to_DEPUTY_LOOMIS_branch_9:
   250f6:	ba ec 66 00 00       	mov    edx,@obj3:dep_loom_cpp_variable_17                           ; fixup: num: 5862, src obj: 1, src ofs: 0x250f7, dst obj: 3, dst ofs: 0x66ec
   250fb:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 5861, src obj: 1, src ofs: 0x250fc, dst obj: 3, dst ofs: 0x294bc
   25100:	e8 2b 13 05 00       	call   strcmp_
   25105:	85 c0                	test   eax,eax
   25107:	0f 85 c4 00 00 00    	jne    talk_to_DEPUTY_LOOMIS_branch_12
   2510d:	b8 f4 66 00 00       	mov    eax,@obj3:dep_loom_cpp_variable_18                           ; fixup: num: 5860, src obj: 1, src ofs: 0x2510e, dst obj: 3, dst ofs: 0x66f4
   25112:	e8 79 76 04 00       	call   check_script_flag
   25117:	84 c0                	test   al,al
   25119:	0f 84 b2 00 00 00    	je     talk_to_DEPUTY_LOOMIS_branch_12
   2511f:	ba 05 67 00 00       	mov    edx,@obj3:dep_loom_cpp_variable_19                           ; fixup: num: 5859, src obj: 1, src ofs: 0x25120, dst obj: 3, dst ofs: 0x6705
   25124:	b8 bb 11 00 00       	mov    eax,0x11bb
   25129:	31 db                	xor    ebx,ebx
   2512b:	e8 60 55 04 00       	call   play_wav
   25130:	b8 51 00 00 00       	mov    eax,0x51
   25135:	e8 66 50 00 00       	call   GetDlgFileString
   2513a:	e8 d1 5d 04 00       	call   get_response
   2513f:	83 f8 01             	cmp    eax,0x1
   25142:	75 33                	jne    talk_to_DEPUTY_LOOMIS_branch_10
   25144:	ba 0c 67 00 00       	mov    edx,@obj3:dep_loom_cpp_variable_20                           ; fixup: num: 5858, src obj: 1, src ofs: 0x25145, dst obj: 3, dst ofs: 0x670c
   25149:	89 c3                	mov    ebx,eax
   2514b:	b8 c6 11 00 00       	mov    eax,0x11c6
   25150:	e8 3b 55 04 00       	call   play_wav
   25155:	ba 01 00 00 00       	mov    edx,0x1
   2515a:	b8 13 67 00 00       	mov    eax,@obj3:dep_loom_cpp_variable_21                           ; fixup: num: 5857, src obj: 1, src ofs: 0x2515b, dst obj: 3, dst ofs: 0x6713
   2515f:	e8 7c 76 04 00       	call   set_script_flag
   25164:	31 db                	xor    ebx,ebx
   25166:	ba 2c 67 00 00       	mov    edx,@obj3:dep_loom_cpp_variable_22                           ; fixup: num: 5856, src obj: 1, src ofs: 0x25167, dst obj: 3, dst ofs: 0x672c
   2516b:	a1 2c 41 01 00       	mov    eax,ds:@obj3:INVENTORY_ROOM                                  ; fixup: num: 5855, src obj: 1, src ofs: 0x2516c, dst obj: 3, dst ofs: 0x1412c
   25170:	e8 9b dd 02 00       	call   set_object
   25175:	eb 19                	jmp    talk_to_DEPUTY_LOOMIS_branch_11
talk_to_DEPUTY_LOOMIS_branch_10:
   25177:	83 f8 02             	cmp    eax,0x2
   2517a:	75 14                	jne    talk_to_DEPUTY_LOOMIS_branch_11
   2517c:	bb 03 00 00 00       	mov    ebx,0x3
   25181:	ba 34 67 00 00       	mov    edx,@obj3:dep_loom_cpp_variable_23                           ; fixup: num: 5854, src obj: 1, src ofs: 0x25182, dst obj: 3, dst ofs: 0x6734
   25186:	b8 cc 11 00 00       	mov    eax,0x11cc
   2518b:	e9 89 06 00 00       	jmp    talk_to_DEPUTY_LOOMIS_branch_54
talk_to_DEPUTY_LOOMIS_branch_11:
   25190:	bb 01 00 00 00       	mov    ebx,0x1
   25195:	ba 3b 67 00 00       	mov    edx,@obj3:dep_loom_cpp_variable_24                           ; fixup: num: 5877, src obj: 1, src ofs: 0x25196, dst obj: 3, dst ofs: 0x673b
   2519a:	b8 48 67 00 00       	mov    eax,@obj3:dep_loom_cpp_variable_25                           ; fixup: num: 5876, src obj: 1, src ofs: 0x2519b, dst obj: 3, dst ofs: 0x6748
   2519f:	e8 6c dd 02 00       	call   set_object
   251a4:	ba 50 67 00 00       	mov    edx,@obj3:dep_loom_cpp_variable_26                           ; fixup: num: 5875, src obj: 1, src ofs: 0x251a5, dst obj: 3, dst ofs: 0x6750
   251a9:	b8 5e 67 00 00       	mov    eax,@obj3:dep_loom_cpp_variable_27                           ; fixup: num: 5874, src obj: 1, src ofs: 0x251aa, dst obj: 3, dst ofs: 0x675e
   251ae:	31 db                	xor    ebx,ebx
   251b0:	e8 5b dd 02 00       	call   set_object
   251b5:	b8 66 67 00 00       	mov    eax,@obj3:dep_loom_cpp_variable_28                           ; fixup: num: 5873, src obj: 1, src ofs: 0x251b6, dst obj: 3, dst ofs: 0x6766
   251ba:	31 db                	xor    ebx,ebx
   251bc:	31 d2                	xor    edx,edx
   251be:	e8 ed 78 04 00       	call   SetNpc
   251c3:	e8 88 35 00 00       	call   _LOOMIS
   251c8:	31 c0                	xor    eax,eax
   251ca:	5d                   	pop    ebp
   251cb:	5f                   	pop    edi
   251cc:	5e                   	pop    esi
   251cd:	5a                   	pop    edx
   251ce:	59                   	pop    ecx
   251cf:	5b                   	pop    ebx
   251d0:	c3                   	ret    
talk_to_DEPUTY_LOOMIS_branch_12:
   251d1:	ba 6d 67 00 00       	mov    edx,@obj3:dep_loom_cpp_variable_29                           ; fixup: num: 5872, src obj: 1, src ofs: 0x251d2, dst obj: 3, dst ofs: 0x676d
   251d6:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 5871, src obj: 1, src ofs: 0x251d7, dst obj: 3, dst ofs: 0x294bc
   251db:	e8 50 12 05 00       	call   strcmp_
   251e0:	85 c0                	test   eax,eax
   251e2:	75 64                	jne    talk_to_DEPUTY_LOOMIS_branch_14
   251e4:	b8 75 67 00 00       	mov    eax,@obj3:dep_loom_cpp_variable_30                           ; fixup: num: 5870, src obj: 1, src ofs: 0x251e5, dst obj: 3, dst ofs: 0x6775
   251e9:	e8 a2 75 04 00       	call   check_script_flag
   251ee:	84 c0                	test   al,al
   251f0:	75 56                	jne    talk_to_DEPUTY_LOOMIS_branch_14
   251f2:	ba 86 67 00 00       	mov    edx,@obj3:dep_loom_cpp_variable_31                           ; fixup: num: 5869, src obj: 1, src ofs: 0x251f3, dst obj: 3, dst ofs: 0x6786
   251f7:	b8 8e 67 00 00       	mov    eax,@obj3:dep_loom_cpp_variable_32                           ; fixup: num: 5868, src obj: 1, src ofs: 0x251f8, dst obj: 3, dst ofs: 0x678e
   251fc:	31 db                	xor    ebx,ebx
   251fe:	e8 0d dd 02 00       	call   set_object
   25203:	b8 96 67 00 00       	mov    eax,@obj3:dep_loom_cpp_variable_33                           ; fixup: num: 5867, src obj: 1, src ofs: 0x25204, dst obj: 3, dst ofs: 0x6796
   25208:	e8 73 da 02 00       	call   get_object
   2520d:	85 c0                	test   eax,eax
   2520f:	74 1a                	je     talk_to_DEPUTY_LOOMIS_branch_13
   25211:	8b 15 2c 41 01 00    	mov    edx,DWORD PTR ds:@obj3:INVENTORY_ROOM                        ; fixup: num: 5866, src obj: 1, src ofs: 0x25213, dst obj: 3, dst ofs: 0x1412c
   25217:	bb 01 00 00 00       	mov    ebx,0x1
   2521c:	89 50 3c             	mov    DWORD PTR [eax+0x3c],edx
   2521f:	89 d0                	mov    eax,edx
   25221:	ba 9e 67 00 00       	mov    edx,@obj3:dep_loom_cpp_variable_34                           ; fixup: num: 5865, src obj: 1, src ofs: 0x25222, dst obj: 3, dst ofs: 0x679e
   25226:	e8 e5 dc 02 00       	call   set_object
talk_to_DEPUTY_LOOMIS_branch_13:
   2522b:	bb 01 00 00 00       	mov    ebx,0x1
   25230:	ba a6 67 00 00       	mov    edx,@obj3:dep_loom_cpp_variable_35                           ; fixup: num: 5864, src obj: 1, src ofs: 0x25231, dst obj: 3, dst ofs: 0x67a6
   25235:	b8 db 11 00 00       	mov    eax,0x11db
   2523a:	e8 51 54 04 00       	call   play_wav
   2523f:	31 c0                	xor    eax,eax
   25241:	5d                   	pop    ebp
   25242:	5f                   	pop    edi
   25243:	5e                   	pop    esi
   25244:	5a                   	pop    edx
   25245:	59                   	pop    ecx
   25246:	5b                   	pop    ebx
   25247:	c3                   	ret    
talk_to_DEPUTY_LOOMIS_branch_14:
   25248:	ba ad 67 00 00       	mov    edx,@obj3:dep_loom_cpp_variable_36                           ; fixup: num: 5888, src obj: 1, src ofs: 0x25249, dst obj: 3, dst ofs: 0x67ad
   2524d:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 5887, src obj: 1, src ofs: 0x2524e, dst obj: 3, dst ofs: 0x294bc
   25252:	e8 d9 11 05 00       	call   strcmp_
   25257:	85 c0                	test   eax,eax
   25259:	75 1d                	jne    talk_to_DEPUTY_LOOMIS_branch_15
   2525b:	bb 01 00 00 00       	mov    ebx,0x1
   25260:	ba c5 67 00 00       	mov    edx,@obj3:dep_loom_cpp_variable_37                           ; fixup: num: 5886, src obj: 1, src ofs: 0x25261, dst obj: 3, dst ofs: 0x67c5
   25265:	b8 43 11 00 00       	mov    eax,0x1143
   2526a:	e8 21 54 04 00       	call   play_wav
   2526f:	31 c0                	xor    eax,eax
   25271:	5d                   	pop    ebp
   25272:	5f                   	pop    edi
   25273:	5e                   	pop    esi
   25274:	5a                   	pop    edx
   25275:	59                   	pop    ecx
   25276:	5b                   	pop    ebx
   25277:	c3                   	ret    
talk_to_DEPUTY_LOOMIS_branch_15:
   25278:	ba cc 67 00 00       	mov    edx,@obj3:dep_loom_cpp_variable_38                           ; fixup: num: 5885, src obj: 1, src ofs: 0x25279, dst obj: 3, dst ofs: 0x67cc
   2527d:	b8 02 12 00 00       	mov    eax,0x1202
   25282:	31 db                	xor    ebx,ebx
talk_to_DEPUTY_LOOMIS_branch_16:
   25284:	e8 07 54 04 00       	call   play_wav
   25289:	31 c0                	xor    eax,eax
   2528b:	5d                   	pop    ebp
   2528c:	5f                   	pop    edi
   2528d:	5e                   	pop    esi
   2528e:	5a                   	pop    edx
   2528f:	59                   	pop    ecx
   25290:	5b                   	pop    ebx
   25291:	c3                   	ret    
talk_to_DEPUTY_LOOMIS_branch_17:
   25292:	a1 14 2e 02 00       	mov    eax,ds:@obj3:DEPUTY_LOOMIS                                   ; fixup: num: 5884, src obj: 1, src ofs: 0x25293, dst obj: 3, dst ofs: 0x22e14
   25297:	85 c0                	test   eax,eax
   25299:	0f 84 12 01 00 00    	je     talk_to_DEPUTY_LOOMIS_branch_21
   2529f:	be 01 00 00 00       	mov    esi,0x1
   252a4:	b8 d3 67 00 00       	mov    eax,@obj3:dep_loom_cpp_variable_39                           ; fixup: num: 5883, src obj: 1, src ofs: 0x252a5, dst obj: 3, dst ofs: 0x67d3
   252a9:	89 15 14 2e 02 00    	mov    DWORD PTR ds:@obj3:DEPUTY_LOOMIS,edx                         ; fixup: num: 5882, src obj: 1, src ofs: 0x252ab, dst obj: 3, dst ofs: 0x22e14
   252af:	89 35 18 2e 02 00    	mov    DWORD PTR ds:@obj3:DEPUTY_LOOMIS_variable_1,esi              ; fixup: num: 5881, src obj: 1, src ofs: 0x252b1, dst obj: 3, dst ofs: 0x22e18
   252b5:	e8 d6 74 04 00       	call   check_script_flag
   252ba:	84 c0                	test   al,al
   252bc:	0f 85 8e 00 00 00    	jne    talk_to_DEPUTY_LOOMIS_branch_18
   252c2:	ba e5 67 00 00       	mov    edx,@obj3:dep_loom_cpp_variable_40                           ; fixup: num: 5880, src obj: 1, src ofs: 0x252c3, dst obj: 3, dst ofs: 0x67e5
   252c7:	b8 fd 10 00 00       	mov    eax,0x10fd
   252cc:	31 db                	xor    ebx,ebx
   252ce:	e8 bd 53 04 00       	call   play_wav
   252d3:	ba ec 67 00 00       	mov    edx,@obj3:dep_loom_cpp_variable_41                           ; fixup: num: 5879, src obj: 1, src ofs: 0x252d4, dst obj: 3, dst ofs: 0x67ec
   252d8:	b8 01 11 00 00       	mov    eax,0x1101
   252dd:	31 db                	xor    ebx,ebx
   252df:	e8 ac 53 04 00       	call   play_wav
   252e4:	ba ef 67 00 00       	mov    edx,@obj3:dep_loom_cpp_variable_42                           ; fixup: num: 5878, src obj: 1, src ofs: 0x252e5, dst obj: 3, dst ofs: 0x67ef
   252e9:	b8 05 11 00 00       	mov    eax,0x1105
   252ee:	31 db                	xor    ebx,ebx
   252f0:	e8 9b 53 04 00       	call   play_wav
   252f5:	ba f6 67 00 00       	mov    edx,@obj3:dep_loom_cpp_variable_43                           ; fixup: num: 5896, src obj: 1, src ofs: 0x252f6, dst obj: 3, dst ofs: 0x67f6
   252fa:	b8 0a 11 00 00       	mov    eax,0x110a
   252ff:	31 db                	xor    ebx,ebx
   25301:	e8 8a 53 04 00       	call   play_wav
   25306:	ba f9 67 00 00       	mov    edx,@obj3:dep_loom_cpp_variable_44                           ; fixup: num: 5895, src obj: 1, src ofs: 0x25307, dst obj: 3, dst ofs: 0x67f9
   2530b:	b8 0e 11 00 00       	mov    eax,0x110e
   25310:	31 db                	xor    ebx,ebx
   25312:	e8 79 53 04 00       	call   play_wav
   25317:	89 f2                	mov    edx,esi
   25319:	31 c0                	xor    eax,eax
   2531b:	e8 c0 30 00 00       	call   IF_SOMEONE_ELSE_HAS_SAID_THAT
   25320:	b8 00 68 00 00       	mov    eax,@obj3:dep_loom_cpp_variable_45                           ; fixup: num: 5894, src obj: 1, src ofs: 0x25321, dst obj: 3, dst ofs: 0x6800
   25325:	e8 66 74 04 00       	call   check_script_flag
   2532a:	84 c0                	test   al,al
   2532c:	74 22                	je     talk_to_DEPUTY_LOOMIS_branch_18
   2532e:	ba 11 68 00 00       	mov    edx,@obj3:dep_loom_cpp_variable_46                           ; fixup: num: 5893, src obj: 1, src ofs: 0x2532f, dst obj: 3, dst ofs: 0x6811
   25333:	b8 12 11 00 00       	mov    eax,0x1112
   25338:	31 db                	xor    ebx,ebx
   2533a:	e8 51 53 04 00       	call   play_wav
   2533f:	ba 14 68 00 00       	mov    edx,@obj3:dep_loom_cpp_variable_47                           ; fixup: num: 5892, src obj: 1, src ofs: 0x25340, dst obj: 3, dst ofs: 0x6814
   25344:	b8 18 11 00 00       	mov    eax,0x1118
   25349:	31 db                	xor    ebx,ebx
   2534b:	e8 40 53 04 00       	call   play_wav
talk_to_DEPUTY_LOOMIS_branch_18:
   25350:	ba 1b 68 00 00       	mov    edx,@obj3:dep_loom_cpp_variable_48                           ; fixup: num: 5891, src obj: 1, src ofs: 0x25351, dst obj: 3, dst ofs: 0x681b
   25355:	b8 21 11 00 00       	mov    eax,0x1121
   2535a:	31 db                	xor    ebx,ebx
   2535c:	e8 2f 53 04 00       	call   play_wav
   25361:	b8 53 00 00 00       	mov    eax,0x53
   25366:	bb 03 00 00 00       	mov    ebx,0x3
   2536b:	ba 22 68 00 00       	mov    edx,@obj3:dep_loom_cpp_variable_49                           ; fixup: num: 5890, src obj: 1, src ofs: 0x2536c, dst obj: 3, dst ofs: 0x6822
   25370:	e8 2b 4e 00 00       	call   GetDlgFileString
   25375:	e8 96 5b 04 00       	call   get_response
   2537a:	b8 30 11 00 00       	mov    eax,0x1130
   2537f:	e8 0c 53 04 00       	call   play_wav
   25384:	b8 54 00 00 00       	mov    eax,0x54
   25389:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 5889, src obj: 1, src ofs: 0x2538a, dst obj: 3, dst ofs: 0x295c0
   2538e:	e8 0d 4e 00 00       	call   GetDlgFileString
   25393:	89 c6                	mov    esi,eax
   25395:	57                   	push   edi
talk_to_DEPUTY_LOOMIS_branch_19:
   25396:	8a 06                	mov    al,BYTE PTR [esi]
   25398:	88 07                	mov    BYTE PTR [edi],al
   2539a:	3c 00                	cmp    al,0x0
   2539c:	74 10                	je     talk_to_DEPUTY_LOOMIS_branch_20
   2539e:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   253a1:	83 c6 02             	add    esi,0x2
   253a4:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   253a7:	83 c7 02             	add    edi,0x2
   253aa:	3c 00                	cmp    al,0x0
   253ac:	75 e8                	jne    talk_to_DEPUTY_LOOMIS_branch_19
talk_to_DEPUTY_LOOMIS_branch_20:
   253ae:	5f                   	pop    edi
   253af:	eb 56                	jmp    talk_to_DEPUTY_LOOMIS_branch_24
talk_to_DEPUTY_LOOMIS_branch_21:
   253b1:	a1 18 2e 02 00       	mov    eax,ds:@obj3:DEPUTY_LOOMIS_variable_1                        ; fixup: num: 5906, src obj: 1, src ofs: 0x253b2, dst obj: 3, dst ofs: 0x22e18
   253b6:	85 c0                	test   eax,eax
   253b8:	74 3c                	je     talk_to_DEPUTY_LOOMIS_branch_22
   253ba:	bb 01 00 00 00       	mov    ebx,0x1
   253bf:	b8 a8 11 00 00       	mov    eax,0x11a8
   253c4:	89 15 18 2e 02 00    	mov    DWORD PTR ds:@obj3:DEPUTY_LOOMIS_variable_1,edx              ; fixup: num: 5905, src obj: 1, src ofs: 0x253c6, dst obj: 3, dst ofs: 0x22e18
   253ca:	ba 29 68 00 00       	mov    edx,@obj3:dep_loom_cpp_variable_50                           ; fixup: num: 5904, src obj: 1, src ofs: 0x253cb, dst obj: 3, dst ofs: 0x6829
   253cf:	e8 bc 52 04 00       	call   play_wav
   253d4:	ba 30 68 00 00       	mov    edx,@obj3:dep_loom_cpp_variable_51                           ; fixup: num: 5903, src obj: 1, src ofs: 0x253d5, dst obj: 3, dst ofs: 0x6830
   253d9:	b8 ac 11 00 00       	mov    eax,0x11ac
   253de:	31 db                	xor    ebx,ebx
   253e0:	e8 ab 52 04 00       	call   play_wav
   253e5:	bb 03 00 00 00       	mov    ebx,0x3
   253ea:	ba 33 68 00 00       	mov    edx,@obj3:dep_loom_cpp_variable_52                           ; fixup: num: 5902, src obj: 1, src ofs: 0x253eb, dst obj: 3, dst ofs: 0x6833
   253ef:	b8 b0 11 00 00       	mov    eax,0x11b0
   253f4:	eb 0c                	jmp    talk_to_DEPUTY_LOOMIS_branch_23
talk_to_DEPUTY_LOOMIS_branch_22:
   253f6:	ba 3a 68 00 00       	mov    edx,@obj3:dep_loom_cpp_variable_53                           ; fixup: num: 5901, src obj: 1, src ofs: 0x253f7, dst obj: 3, dst ofs: 0x683a
   253fb:	b8 f6 11 00 00       	mov    eax,0x11f6
   25400:	31 db                	xor    ebx,ebx
talk_to_DEPUTY_LOOMIS_branch_23:
   25402:	e8 89 52 04 00       	call   play_wav
talk_to_DEPUTY_LOOMIS_branch_24:
   25407:	b8 41 68 00 00       	mov    eax,@obj3:dep_loom_cpp_variable_54                           ; fixup: num: 5900, src obj: 1, src ofs: 0x25408, dst obj: 3, dst ofs: 0x6841
   2540c:	e8 7f 73 04 00       	call   check_script_flag
   25411:	84 c0                	test   al,al
   25413:	74 28                	je     talk_to_DEPUTY_LOOMIS_branch_25
   25415:	83 3d 1c 2e 02 00 00 	cmp    DWORD PTR ds:@obj3:DEPUTY_LOOMIS_variable_2,0x0              ; fixup: num: 5899, src obj: 1, src ofs: 0x25417, dst obj: 3, dst ofs: 0x22e1c
   2541c:	75 1f                	jne    talk_to_DEPUTY_LOOMIS_branch_25
   2541e:	bd 01 00 00 00       	mov    ebp,0x1
   25423:	bb 03 00 00 00       	mov    ebx,0x3
   25428:	ba 56 68 00 00       	mov    edx,@obj3:dep_loom_cpp_variable_55                           ; fixup: num: 5898, src obj: 1, src ofs: 0x25429, dst obj: 3, dst ofs: 0x6856
   2542d:	b8 30 12 00 00       	mov    eax,0x1230
   25432:	89 2d 1c 2e 02 00    	mov    DWORD PTR ds:@obj3:DEPUTY_LOOMIS_variable_2,ebp              ; fixup: num: 5897, src obj: 1, src ofs: 0x25434, dst obj: 3, dst ofs: 0x22e1c
   25438:	e8 53 52 04 00       	call   play_wav
talk_to_DEPUTY_LOOMIS_branch_25:
   2543d:	e8 7e 37 00 00       	call   get_day
   25442:	83 f8 05             	cmp    eax,0x5
   25445:	75 25                	jne    talk_to_DEPUTY_LOOMIS_branch_26
   25447:	83 3d 20 2e 02 00 00 	cmp    DWORD PTR ds:@obj3:DEPUTY_LOOMIS_variable_3,0x0              ; fixup: num: 5781, src obj: 1, src ofs: 0x25449, dst obj: 3, dst ofs: 0x22e20
   2544e:	75 1c                	jne    talk_to_DEPUTY_LOOMIS_branch_26
   25450:	ba 01 00 00 00       	mov    edx,0x1
   25455:	b8 3c 12 00 00       	mov    eax,0x123c
   2545a:	31 db                	xor    ebx,ebx
   2545c:	89 15 20 2e 02 00    	mov    DWORD PTR ds:@obj3:DEPUTY_LOOMIS_variable_3,edx              ; fixup: num: 5780, src obj: 1, src ofs: 0x2545e, dst obj: 3, dst ofs: 0x22e20
   25462:	ba 5d 68 00 00       	mov    edx,@obj3:dep_loom_cpp_variable_56                           ; fixup: num: 5779, src obj: 1, src ofs: 0x25463, dst obj: 3, dst ofs: 0x685d
   25467:	e8 24 52 04 00       	call   play_wav
talk_to_DEPUTY_LOOMIS_branch_26:
   2546c:	be 64 68 00 00       	mov    esi,@obj3:dep_loom_cpp_variable_57                           ; fixup: num: 5778, src obj: 1, src ofs: 0x2546d, dst obj: 3, dst ofs: 0x6864
   25471:	bf c0 94 02 00       	mov    edi,@obj3:keyword                                            ; fixup: num: 5777, src obj: 1, src ofs: 0x25472, dst obj: 3, dst ofs: 0x294c0
   25476:	57                   	push   edi
talk_to_DEPUTY_LOOMIS_branch_27:
   25477:	8a 06                	mov    al,BYTE PTR [esi]
   25479:	88 07                	mov    BYTE PTR [edi],al
   2547b:	3c 00                	cmp    al,0x0
   2547d:	74 10                	je     talk_to_DEPUTY_LOOMIS_branch_28
   2547f:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   25482:	83 c6 02             	add    esi,0x2
   25485:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   25488:	83 c7 02             	add    edi,0x2
   2548b:	3c 00                	cmp    al,0x0
   2548d:	75 e8                	jne    talk_to_DEPUTY_LOOMIS_branch_27
talk_to_DEPUTY_LOOMIS_branch_28:
   2548f:	5f                   	pop    edi
   25490:	89 f9                	mov    ecx,edi
   25492:	31 ed                	xor    ebp,ebp
talk_to_DEPUTY_LOOMIS_branch_29:
   25494:	b8 56 00 00 00       	mov    eax,0x56
   25499:	e8 02 4d 00 00       	call   GetDlgFileString
   2549e:	89 c2                	mov    edx,eax
   254a0:	89 c8                	mov    eax,ecx
   254a2:	e8 b3 bf 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   254a7:	85 c0                	test   eax,eax
   254a9:	0f 84 5b 03 00 00    	je     talk_to_DEPUTY_LOOMIS_branch_53
   254af:	b8 c0 95 02 00       	mov    eax,@obj3:keystring                                          ; fixup: num: 5776, src obj: 1, src ofs: 0x254b0, dst obj: 3, dst ofs: 0x295c0
   254b4:	e8 87 65 04 00       	call   show_keywords
   254b9:	b8 57 00 00 00       	mov    eax,0x57
   254be:	e8 dd 4c 00 00       	call   GetDlgFileString
   254c3:	89 c2                	mov    edx,eax
   254c5:	89 c8                	mov    eax,ecx
   254c7:	e8 8e bf 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   254cc:	85 c0                	test   eax,eax
   254ce:	75 41                	jne    talk_to_DEPUTY_LOOMIS_branch_32
   254d0:	bb 01 00 00 00       	mov    ebx,0x1
   254d5:	ba 65 68 00 00       	mov    edx,@obj3:dep_loom_cpp_variable_58                           ; fixup: num: 5775, src obj: 1, src ofs: 0x254d6, dst obj: 3, dst ofs: 0x6865
   254da:	b8 43 11 00 00       	mov    eax,0x1143
   254df:	e8 ac 51 04 00       	call   play_wav
   254e4:	b8 58 00 00 00       	mov    eax,0x58
   254e9:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 5907, src obj: 1, src ofs: 0x254ea, dst obj: 3, dst ofs: 0x295c0
   254ee:	e8 ad 4c 00 00       	call   GetDlgFileString
   254f3:	89 c6                	mov    esi,eax
   254f5:	57                   	push   edi
talk_to_DEPUTY_LOOMIS_branch_30:
   254f6:	8a 06                	mov    al,BYTE PTR [esi]
   254f8:	88 07                	mov    BYTE PTR [edi],al
   254fa:	3c 00                	cmp    al,0x0
   254fc:	74 10                	je     talk_to_DEPUTY_LOOMIS_branch_31
   254fe:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   25501:	83 c6 02             	add    esi,0x2
   25504:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   25507:	83 c7 02             	add    edi,0x2
   2550a:	3c 00                	cmp    al,0x0
   2550c:	75 e8                	jne    talk_to_DEPUTY_LOOMIS_branch_30
talk_to_DEPUTY_LOOMIS_branch_31:
   2550e:	5f                   	pop    edi
   2550f:	eb 83                	jmp    talk_to_DEPUTY_LOOMIS_branch_29
talk_to_DEPUTY_LOOMIS_branch_32:
   25511:	b8 59 00 00 00       	mov    eax,0x59
   25516:	e8 85 4c 00 00       	call   GetDlgFileString
   2551b:	89 c2                	mov    edx,eax
   2551d:	89 c8                	mov    eax,ecx
   2551f:	e8 36 bf 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   25524:	85 c0                	test   eax,eax
   25526:	74 14                	je     talk_to_DEPUTY_LOOMIS_branch_33
   25528:	ba 6c 68 00 00       	mov    edx,@obj3:dep_loom_cpp_variable_59                           ; fixup: num: 5787, src obj: 1, src ofs: 0x25529, dst obj: 3, dst ofs: 0x686c
   2552d:	89 c8                	mov    eax,ecx
   2552f:	e8 26 bf 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   25534:	85 c0                	test   eax,eax
   25536:	0f 85 94 00 00 00    	jne    talk_to_DEPUTY_LOOMIS_branch_36
talk_to_DEPUTY_LOOMIS_branch_33:
   2553c:	bb 01 00 00 00       	mov    ebx,0x1
   25541:	ba 73 68 00 00       	mov    edx,@obj3:dep_loom_cpp_variable_60                           ; fixup: num: 5786, src obj: 1, src ofs: 0x25542, dst obj: 3, dst ofs: 0x6873
   25546:	b8 4f 11 00 00       	mov    eax,0x114f
   2554b:	e8 40 51 04 00       	call   play_wav
   25550:	bb 02 00 00 00       	mov    ebx,0x2
   25555:	ba 7a 68 00 00       	mov    edx,@obj3:dep_loom_cpp_variable_61                           ; fixup: num: 5785, src obj: 1, src ofs: 0x25556, dst obj: 3, dst ofs: 0x687a
   2555a:	b8 50 11 00 00       	mov    eax,0x1150
   2555f:	e8 2c 51 04 00       	call   play_wav
   25564:	bb 02 00 00 00       	mov    ebx,0x2
   25569:	ba 81 68 00 00       	mov    edx,@obj3:dep_loom_cpp_variable_62                           ; fixup: num: 5784, src obj: 1, src ofs: 0x2556a, dst obj: 3, dst ofs: 0x6881
   2556e:	b8 51 11 00 00       	mov    eax,0x1151
   25573:	e8 18 51 04 00       	call   play_wav
   25578:	bb 02 00 00 00       	mov    ebx,0x2
   2557d:	ba 88 68 00 00       	mov    edx,@obj3:dep_loom_cpp_variable_63                           ; fixup: num: 5783, src obj: 1, src ofs: 0x2557e, dst obj: 3, dst ofs: 0x6888
   25582:	b8 52 11 00 00       	mov    eax,0x1152
   25587:	e8 04 51 04 00       	call   play_wav
   2558c:	bb 03 00 00 00       	mov    ebx,0x3
   25591:	ba 8f 68 00 00       	mov    edx,@obj3:dep_loom_cpp_variable_64                           ; fixup: num: 5782, src obj: 1, src ofs: 0x25592, dst obj: 3, dst ofs: 0x688f
   25596:	b8 53 11 00 00       	mov    eax,0x1153
   2559b:	e8 f0 50 04 00       	call   play_wav
   255a0:	b8 5a 00 00 00       	mov    eax,0x5a
   255a5:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 5793, src obj: 1, src ofs: 0x255a6, dst obj: 3, dst ofs: 0x295c0
   255aa:	e8 f1 4b 00 00       	call   GetDlgFileString
   255af:	89 c6                	mov    esi,eax
   255b1:	57                   	push   edi
talk_to_DEPUTY_LOOMIS_branch_34:
   255b2:	8a 06                	mov    al,BYTE PTR [esi]
   255b4:	88 07                	mov    BYTE PTR [edi],al
   255b6:	3c 00                	cmp    al,0x0
   255b8:	74 10                	je     talk_to_DEPUTY_LOOMIS_branch_35
   255ba:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   255bd:	83 c6 02             	add    esi,0x2
   255c0:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   255c3:	83 c7 02             	add    edi,0x2
   255c6:	3c 00                	cmp    al,0x0
   255c8:	75 e8                	jne    talk_to_DEPUTY_LOOMIS_branch_34
talk_to_DEPUTY_LOOMIS_branch_35:
   255ca:	5f                   	pop    edi
   255cb:	e9 c4 fe ff ff       	jmp    talk_to_DEPUTY_LOOMIS_branch_29
talk_to_DEPUTY_LOOMIS_branch_36:
   255d0:	b8 5b 00 00 00       	mov    eax,0x5b
   255d5:	e8 c6 4b 00 00       	call   GetDlgFileString
   255da:	89 c2                	mov    edx,eax
   255dc:	89 c8                	mov    eax,ecx
   255de:	e8 77 be 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   255e3:	85 c0                	test   eax,eax
   255e5:	74 10                	je     talk_to_DEPUTY_LOOMIS_branch_37
   255e7:	ba 96 68 00 00       	mov    edx,@obj3:dep_loom_cpp_variable_65                           ; fixup: num: 5792, src obj: 1, src ofs: 0x255e8, dst obj: 3, dst ofs: 0x6896
   255ec:	89 c8                	mov    eax,ecx
   255ee:	e8 67 be 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   255f3:	85 c0                	test   eax,eax
   255f5:	75 69                	jne    talk_to_DEPUTY_LOOMIS_branch_40
talk_to_DEPUTY_LOOMIS_branch_37:
   255f7:	ba 9d 68 00 00       	mov    edx,@obj3:dep_loom_cpp_variable_66                           ; fixup: num: 5791, src obj: 1, src ofs: 0x255f8, dst obj: 3, dst ofs: 0x689d
   255fc:	b8 61 11 00 00       	mov    eax,0x1161
   25601:	89 eb                	mov    ebx,ebp
   25603:	e8 88 50 04 00       	call   play_wav
   25608:	bb 03 00 00 00       	mov    ebx,0x3
   2560d:	ba a4 68 00 00       	mov    edx,@obj3:dep_loom_cpp_variable_67                           ; fixup: num: 5790, src obj: 1, src ofs: 0x2560e, dst obj: 3, dst ofs: 0x68a4
   25612:	b8 62 11 00 00       	mov    eax,0x1162
   25617:	e8 74 50 04 00       	call   play_wav
   2561c:	bb 03 00 00 00       	mov    ebx,0x3
   25621:	ba ab 68 00 00       	mov    edx,@obj3:dep_loom_cpp_variable_68                           ; fixup: num: 5789, src obj: 1, src ofs: 0x25622, dst obj: 3, dst ofs: 0x68ab
   25626:	b8 63 11 00 00       	mov    eax,0x1163
   2562b:	e8 60 50 04 00       	call   play_wav
   25630:	b8 5c 00 00 00       	mov    eax,0x5c
   25635:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 5788, src obj: 1, src ofs: 0x25636, dst obj: 3, dst ofs: 0x295c0
   2563a:	e8 61 4b 00 00       	call   GetDlgFileString
   2563f:	89 c6                	mov    esi,eax
   25641:	57                   	push   edi
talk_to_DEPUTY_LOOMIS_branch_38:
   25642:	8a 06                	mov    al,BYTE PTR [esi]
   25644:	88 07                	mov    BYTE PTR [edi],al
   25646:	3c 00                	cmp    al,0x0
   25648:	74 10                	je     talk_to_DEPUTY_LOOMIS_branch_39
   2564a:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   2564d:	83 c6 02             	add    esi,0x2
   25650:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   25653:	83 c7 02             	add    edi,0x2
   25656:	3c 00                	cmp    al,0x0
   25658:	75 e8                	jne    talk_to_DEPUTY_LOOMIS_branch_38
talk_to_DEPUTY_LOOMIS_branch_39:
   2565a:	5f                   	pop    edi
   2565b:	e9 34 fe ff ff       	jmp    talk_to_DEPUTY_LOOMIS_branch_29
talk_to_DEPUTY_LOOMIS_branch_40:
   25660:	b8 5d 00 00 00       	mov    eax,0x5d
   25665:	e8 36 4b 00 00       	call   GetDlgFileString
   2566a:	89 c2                	mov    edx,eax
   2566c:	89 c8                	mov    eax,ecx
   2566e:	e8 e7 bd 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   25673:	85 c0                	test   eax,eax
   25675:	74 10                	je     talk_to_DEPUTY_LOOMIS_branch_41
   25677:	ba b2 68 00 00       	mov    edx,@obj3:dep_loom_cpp_variable_69                           ; fixup: num: 5796, src obj: 1, src ofs: 0x25678, dst obj: 3, dst ofs: 0x68b2
   2567c:	89 c8                	mov    eax,ecx
   2567e:	e8 d7 bd 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   25683:	85 c0                	test   eax,eax
   25685:	75 44                	jne    talk_to_DEPUTY_LOOMIS_branch_44
talk_to_DEPUTY_LOOMIS_branch_41:
   25687:	bb 01 00 00 00       	mov    ebx,0x1
   2568c:	ba be 68 00 00       	mov    edx,@obj3:dep_loom_cpp_variable_70                           ; fixup: num: 5795, src obj: 1, src ofs: 0x2568d, dst obj: 3, dst ofs: 0x68be
   25691:	b8 70 11 00 00       	mov    eax,0x1170
   25696:	e8 f5 4f 04 00       	call   play_wav
   2569b:	b8 5e 00 00 00       	mov    eax,0x5e
   256a0:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 5794, src obj: 1, src ofs: 0x256a1, dst obj: 3, dst ofs: 0x295c0
   256a5:	e8 f6 4a 00 00       	call   GetDlgFileString
   256aa:	89 c6                	mov    esi,eax
   256ac:	57                   	push   edi
talk_to_DEPUTY_LOOMIS_branch_42:
   256ad:	8a 06                	mov    al,BYTE PTR [esi]
   256af:	88 07                	mov    BYTE PTR [edi],al
   256b1:	3c 00                	cmp    al,0x0
   256b3:	74 10                	je     talk_to_DEPUTY_LOOMIS_branch_43
   256b5:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   256b8:	83 c6 02             	add    esi,0x2
   256bb:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   256be:	83 c7 02             	add    edi,0x2
   256c1:	3c 00                	cmp    al,0x0
   256c3:	75 e8                	jne    talk_to_DEPUTY_LOOMIS_branch_42
talk_to_DEPUTY_LOOMIS_branch_43:
   256c5:	5f                   	pop    edi
   256c6:	e9 c9 fd ff ff       	jmp    talk_to_DEPUTY_LOOMIS_branch_29
talk_to_DEPUTY_LOOMIS_branch_44:
   256cb:	b8 5f 00 00 00       	mov    eax,0x5f
   256d0:	e8 cb 4a 00 00       	call   GetDlgFileString
   256d5:	89 c2                	mov    edx,eax
   256d7:	89 c8                	mov    eax,ecx
   256d9:	e8 7c bd 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   256de:	85 c0                	test   eax,eax
   256e0:	74 2e                	je     talk_to_DEPUTY_LOOMIS_branch_45
   256e2:	b8 60 00 00 00       	mov    eax,0x60
   256e7:	e8 b4 4a 00 00       	call   GetDlgFileString
   256ec:	89 c2                	mov    edx,eax
   256ee:	89 c8                	mov    eax,ecx
   256f0:	e8 65 bd 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   256f5:	85 c0                	test   eax,eax
   256f7:	74 17                	je     talk_to_DEPUTY_LOOMIS_branch_45
   256f9:	b8 61 00 00 00       	mov    eax,0x61
   256fe:	e8 9d 4a 00 00       	call   GetDlgFileString
   25703:	89 c2                	mov    edx,eax
   25705:	89 c8                	mov    eax,ecx
   25707:	e8 4e bd 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   2570c:	85 c0                	test   eax,eax
   2570e:	75 41                	jne    talk_to_DEPUTY_LOOMIS_branch_48
talk_to_DEPUTY_LOOMIS_branch_45:
   25710:	ba c5 68 00 00       	mov    edx,@obj3:dep_loom_cpp_variable_71                           ; fixup: num: 5800, src obj: 1, src ofs: 0x25711, dst obj: 3, dst ofs: 0x68c5
   25715:	b8 7e 11 00 00       	mov    eax,0x117e
   2571a:	89 eb                	mov    ebx,ebp
   2571c:	e8 6f 4f 04 00       	call   play_wav
   25721:	b8 62 00 00 00       	mov    eax,0x62
   25726:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 5799, src obj: 1, src ofs: 0x25727, dst obj: 3, dst ofs: 0x295c0
   2572b:	e8 70 4a 00 00       	call   GetDlgFileString
   25730:	89 c6                	mov    esi,eax
   25732:	57                   	push   edi
talk_to_DEPUTY_LOOMIS_branch_46:
   25733:	8a 06                	mov    al,BYTE PTR [esi]
   25735:	88 07                	mov    BYTE PTR [edi],al
   25737:	3c 00                	cmp    al,0x0
   25739:	74 10                	je     talk_to_DEPUTY_LOOMIS_branch_47
   2573b:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   2573e:	83 c6 02             	add    esi,0x2
   25741:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   25744:	83 c7 02             	add    edi,0x2
   25747:	3c 00                	cmp    al,0x0
   25749:	75 e8                	jne    talk_to_DEPUTY_LOOMIS_branch_46
talk_to_DEPUTY_LOOMIS_branch_47:
   2574b:	5f                   	pop    edi
   2574c:	e9 43 fd ff ff       	jmp    talk_to_DEPUTY_LOOMIS_branch_29
talk_to_DEPUTY_LOOMIS_branch_48:
   25751:	b8 63 00 00 00       	mov    eax,0x63
   25756:	e8 45 4a 00 00       	call   GetDlgFileString
   2575b:	89 c2                	mov    edx,eax
   2575d:	89 c8                	mov    eax,ecx
   2575f:	e8 f6 bc 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   25764:	85 c0                	test   eax,eax
   25766:	75 41                	jne    talk_to_DEPUTY_LOOMIS_branch_51
   25768:	ba cc 68 00 00       	mov    edx,@obj3:dep_loom_cpp_variable_72                           ; fixup: num: 5798, src obj: 1, src ofs: 0x25769, dst obj: 3, dst ofs: 0x68cc
   2576d:	b8 8a 11 00 00       	mov    eax,0x118a
   25772:	89 eb                	mov    ebx,ebp
   25774:	e8 17 4f 04 00       	call   play_wav
   25779:	b8 64 00 00 00       	mov    eax,0x64
   2577e:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 5797, src obj: 1, src ofs: 0x2577f, dst obj: 3, dst ofs: 0x295c0
   25783:	e8 18 4a 00 00       	call   GetDlgFileString
   25788:	89 c6                	mov    esi,eax
   2578a:	57                   	push   edi
talk_to_DEPUTY_LOOMIS_branch_49:
   2578b:	8a 06                	mov    al,BYTE PTR [esi]
   2578d:	88 07                	mov    BYTE PTR [edi],al
   2578f:	3c 00                	cmp    al,0x0
   25791:	74 10                	je     talk_to_DEPUTY_LOOMIS_branch_50
   25793:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   25796:	83 c6 02             	add    esi,0x2
   25799:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   2579c:	83 c7 02             	add    edi,0x2
   2579f:	3c 00                	cmp    al,0x0
   257a1:	75 e8                	jne    talk_to_DEPUTY_LOOMIS_branch_49
talk_to_DEPUTY_LOOMIS_branch_50:
   257a3:	5f                   	pop    edi
   257a4:	e9 eb fc ff ff       	jmp    talk_to_DEPUTY_LOOMIS_branch_29
talk_to_DEPUTY_LOOMIS_branch_51:
   257a9:	b8 65 00 00 00       	mov    eax,0x65
   257ae:	e8 ed 49 00 00       	call   GetDlgFileString
   257b3:	89 c2                	mov    edx,eax
   257b5:	89 c8                	mov    eax,ecx
   257b7:	e8 9e bc 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   257bc:	85 c0                	test   eax,eax
   257be:	75 19                	jne    talk_to_DEPUTY_LOOMIS_branch_52
   257c0:	bb 01 00 00 00       	mov    ebx,0x1
   257c5:	ba d3 68 00 00       	mov    edx,@obj3:dep_loom_cpp_variable_73                           ; fixup: num: 5808, src obj: 1, src ofs: 0x257c6, dst obj: 3, dst ofs: 0x68d3
   257ca:	b8 96 11 00 00       	mov    eax,0x1196
   257cf:	e8 bc 4e 04 00       	call   play_wav
   257d4:	e9 bb fc ff ff       	jmp    talk_to_DEPUTY_LOOMIS_branch_29
talk_to_DEPUTY_LOOMIS_branch_52:
   257d9:	b8 66 00 00 00       	mov    eax,0x66
   257de:	e8 bd 49 00 00       	call   GetDlgFileString
   257e3:	89 c2                	mov    edx,eax
   257e5:	89 c8                	mov    eax,ecx
   257e7:	e8 6e bc 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   257ec:	85 c0                	test   eax,eax
   257ee:	0f 84 a0 fc ff ff    	je     talk_to_DEPUTY_LOOMIS_branch_29
   257f4:	ba da 68 00 00       	mov    edx,@obj3:dep_loom_cpp_variable_74                           ; fixup: num: 5807, src obj: 1, src ofs: 0x257f5, dst obj: 3, dst ofs: 0x68da
   257f9:	b8 fc 11 00 00       	mov    eax,0x11fc
   257fe:	89 eb                	mov    ebx,ebp
   25800:	e8 8b 4e 04 00       	call   play_wav
   25805:	e9 8a fc ff ff       	jmp    talk_to_DEPUTY_LOOMIS_branch_29
talk_to_DEPUTY_LOOMIS_branch_53:
   2580a:	bb 01 00 00 00       	mov    ebx,0x1
   2580f:	ba e1 68 00 00       	mov    edx,@obj3:dep_loom_cpp_variable_75                           ; fixup: num: 5806, src obj: 1, src ofs: 0x25810, dst obj: 3, dst ofs: 0x68e1
   25814:	b8 a1 11 00 00       	mov    eax,0x11a1
talk_to_DEPUTY_LOOMIS_branch_54:
   25819:	e8 72 4e 04 00       	call   play_wav
   2581e:	31 c0                	xor    eax,eax
   25820:	5d                   	pop    ebp
   25821:	5f                   	pop    edi
   25822:	5e                   	pop    esi
   25823:	5a                   	pop    edx
   25824:	59                   	pop    ecx
   25825:	5b                   	pop    ebx
   25826:	c3                   	ret    
talk_to_DEPUTY_LOOMIS_branch_55:
   25827:	89 15 14 2e 02 00    	mov    DWORD PTR ds:@obj3:DEPUTY_LOOMIS,edx                         ; fixup: num: 5805, src obj: 1, src ofs: 0x25829, dst obj: 3, dst ofs: 0x22e14
   2582d:	a1 14 2e 02 00       	mov    eax,ds:@obj3:DEPUTY_LOOMIS                                   ; fixup: num: 5804, src obj: 1, src ofs: 0x2582e, dst obj: 3, dst ofs: 0x22e14
   25832:	c3                   	ret    
   25833:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   25839:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
   2583f:	90                   	nop

;-------------------------------------------------
;  Function 'DEPUTY_LOOMIS_FIRST_CONVERSATION'   -
;-------------------------------------------------
DEPUTY_LOOMIS_FIRST_CONVERSATION:
   25840:	85 c0                	test   eax,eax
   25842:	74 e3                	je     talk_to_DEPUTY_LOOMIS_branch_55
   25844:	a1 14 2e 02 00       	mov    eax,ds:@obj3:DEPUTY_LOOMIS                                   ; fixup: num: 5803, src obj: 1, src ofs: 0x25845, dst obj: 3, dst ofs: 0x22e14
   25849:	c3                   	ret    
DEPUTY_LOOMIS_FIRST_CONVERSATION_branch_1:
   2584a:	89 15 18 2e 02 00    	mov    DWORD PTR ds:@obj3:DEPUTY_LOOMIS_variable_1,edx              ; fixup: num: 5802, src obj: 1, src ofs: 0x2584c, dst obj: 3, dst ofs: 0x22e18
   25850:	a1 18 2e 02 00       	mov    eax,ds:@obj3:DEPUTY_LOOMIS_variable_1                        ; fixup: num: 5801, src obj: 1, src ofs: 0x25851, dst obj: 3, dst ofs: 0x22e18
   25855:	c3                   	ret    
   25856:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   2585c:	8d 54 22 00          	lea    edx,[edx+eiz*1+0x0]

;-------------------------------------------------
;  Function                                      -
;  'DEPUTY_LOOMIS_FOLLOW_UP_CONVERSATION'        -
;-------------------------------------------------
DEPUTY_LOOMIS_FOLLOW_UP_CONVERSATION:
   25860:	85 c0                	test   eax,eax
   25862:	74 e6                	je     DEPUTY_LOOMIS_FIRST_CONVERSATION_branch_1
   25864:	a1 18 2e 02 00       	mov    eax,ds:@obj3:DEPUTY_LOOMIS_variable_1                        ; fixup: num: 5813, src obj: 1, src ofs: 0x25865, dst obj: 3, dst ofs: 0x22e18
   25869:	c3                   	ret    
   2586a:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'DEPUTY_LOOMIS_initialize'           -
;-------------------------------------------------
DEPUTY_LOOMIS_initialize:
   25870:	53                   	push   ebx
   25871:	52                   	push   edx
   25872:	ba 01 00 00 00       	mov    edx,0x1
   25877:	31 db                	xor    ebx,ebx
   25879:	89 15 14 2e 02 00    	mov    DWORD PTR ds:@obj3:DEPUTY_LOOMIS,edx                         ; fixup: num: 5812, src obj: 1, src ofs: 0x2587b, dst obj: 3, dst ofs: 0x22e14
   2587f:	89 1d 18 2e 02 00    	mov    DWORD PTR ds:@obj3:DEPUTY_LOOMIS_variable_1,ebx              ; fixup: num: 5811, src obj: 1, src ofs: 0x25881, dst obj: 3, dst ofs: 0x22e18
   25885:	89 1d 1c 2e 02 00    	mov    DWORD PTR ds:@obj3:DEPUTY_LOOMIS_variable_2,ebx              ; fixup: num: 5810, src obj: 1, src ofs: 0x25887, dst obj: 3, dst ofs: 0x22e1c
   2588b:	89 1d 20 2e 02 00    	mov    DWORD PTR ds:@obj3:DEPUTY_LOOMIS_variable_3,ebx              ; fixup: num: 5809, src obj: 1, src ofs: 0x2588d, dst obj: 3, dst ofs: 0x22e20
   25891:	5a                   	pop    edx
   25892:	5b                   	pop    ebx
   25893:	c3                   	ret    
;-------------------------------------------------
;  Bad code 50 (zero after ret):                 -
;-------------------------------------------------
;  25892:	5b                   	pop    ebx
;  25893:	c3                   	ret    
;  25894:	00 00                	add    BYTE PTR [eax],al
;  25896:	00 00                	add    BYTE PTR [eax],al
;-------------------------------------------------
;  Padding data (12 bytes):                      -
;-------------------------------------------------
   25894:	00 00 00 00 00 00 .. 	db     12 dup(0x00)
;-------------------------------------------------
;  End of bad code 50                            -
;-------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 55 (D:\SOURCE\dep_loom.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 55: D:\SOURCE\dep_loom.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------
dep_loom_cpp_variable_1:
    664c:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
dep_loom_cpp_variable_2:
    664d:	4e 4f 54 45 00       	db     "NOTE",0x00
dep_loom_cpp_variable_3:
    6652:	4e 4f 54 45 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "NOTE_PHOTOCOPY",0x00
dep_loom_cpp_variable_4:
    6661:	43 48 45 43 4b 42 4f 4f 4b 00 	db     "CHECKBOOK",0x00
dep_loom_cpp_variable_5:
    666b:	43 48 45 43 4b 42 4f 4f 4b 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "CHECKBOOK_PHOTOCOPY",0x00
dep_loom_cpp_variable_6:
    667f:	54 56 5f 44 45 45 44 00 	db     "TV_DEED",0x00
dep_loom_cpp_variable_7:
    6687:	54 56 5f 44 45 45 44 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "TV_DEED_PHOTOCOPY",0x00
dep_loom_cpp_variable_8:
    6699:	4c 4f 4f 4d 49 53 00 	db     "LOOMIS",0x00
dep_loom_cpp_variable_9:
    66a0:	4c 4f 4f 4d 49 53 00 	db     "LOOMIS",0x00
dep_loom_cpp_variable_10:
    66a7:	4c 4f 4f 4d 49 53 00 	db     "LOOMIS",0x00
dep_loom_cpp_variable_11:
    66ae:	4c 4f 4f 4d 49 53 00 	db     "LOOMIS",0x00
dep_loom_cpp_variable_12:
    66b5:	50 43 5f 46 52 59 5f 44 41 44 44 59 5f 31 00 	db     "PC_FRY_DADDY_1",0x00
dep_loom_cpp_variable_13:
    66c4:	4c 45 44 47 45 52 00 	db     "LEDGER",0x00
dep_loom_cpp_variable_14:
    66cb:	4c 45 44 47 45 52 32 00 	db     "LEDGER2",0x00
dep_loom_cpp_variable_15:
    66d3:	48 41 56 45 5f 42 4f 54 48 5f 4c 45 44 47 45 52 53 00 	db     "HAVE_BOTH_LEDGERS",0x00
dep_loom_cpp_variable_16:
    66e5:	4c 4f 4f 4d 49 53 00 	db     "LOOMIS",0x00
dep_loom_cpp_variable_17:
    66ec:	49 4e 56 5f 4d 41 47 00 	db     "INV_MAG",0x00
dep_loom_cpp_variable_18:
    66f4:	53 48 45 52 49 46 46 5f 49 4e 5f 44 49 4e 45 52 00 	db     "SHERIFF_IN_DINER",0x00
dep_loom_cpp_variable_19:
    6705:	4c 4f 4f 4d 49 53 00 	db     "LOOMIS",0x00
dep_loom_cpp_variable_20:
    670c:	4c 4f 4f 4d 49 53 00 	db     "LOOMIS",0x00
dep_loom_cpp_variable_21:
    6713:	47 41 56 45 5f 4d 41 47 5f 54 4f 5f 4c 4f 4f 4d 49 53 5f 54 4f 44 41 59 00 	db     "GAVE_MAG_TO_LOOMIS_TODAY",0x00
dep_loom_cpp_variable_22:
    672c:	49 4e 56 5f 4d 41 47 00 	db     "INV_MAG",0x00
dep_loom_cpp_variable_23:
    6734:	4c 4f 4f 4d 49 53 00 	db     "LOOMIS",0x00
dep_loom_cpp_variable_24:
    673b:	53 48 45 52 49 46 5f 44 52 41 57 52 00 	db     "SHERIF_DRAWR",0x00
dep_loom_cpp_variable_25:
    6748:	53 48 52 46 4f 46 43 00 	db     "SHRFOFC",0x00
dep_loom_cpp_variable_26:
    6750:	53 48 45 52 49 46 5f 44 52 41 57 52 32 00 	db     "SHERIF_DRAWR2",0x00
dep_loom_cpp_variable_27:
    675e:	53 48 52 46 4f 46 43 00 	db     "SHRFOFC",0x00
dep_loom_cpp_variable_28:
    6766:	4c 4f 4f 4d 49 53 00 	db     "LOOMIS",0x00
dep_loom_cpp_variable_29:
    676d:	49 4e 56 5f 4d 41 47 00 	db     "INV_MAG",0x00
dep_loom_cpp_variable_30:
    6775:	53 48 45 52 49 46 46 5f 49 4e 5f 44 49 4e 45 52 00 	db     "SHERIFF_IN_DINER",0x00
dep_loom_cpp_variable_31:
    6786:	49 4e 56 5f 4d 41 47 00 	db     "INV_MAG",0x00
dep_loom_cpp_variable_32:
    678e:	53 48 52 46 4f 46 43 00 	db     "SHRFOFC",0x00
dep_loom_cpp_variable_33:
    6796:	49 4e 56 5f 4d 41 47 00 	db     "INV_MAG",0x00
dep_loom_cpp_variable_34:
    679e:	49 4e 56 5f 4d 41 47 00 	db     "INV_MAG",0x00
dep_loom_cpp_variable_35:
    67a6:	4c 4f 4f 4d 49 53 00 	db     "LOOMIS",0x00
dep_loom_cpp_variable_36:
    67ad:	50 48 4f 54 4f 5f 4f 46 5f 57 48 41 4c 45 59 5f 48 45 52 52 49 4c 4c 00 	db     "PHOTO_OF_WHALEY_HERRILL",0x00
dep_loom_cpp_variable_37:
    67c5:	4c 4f 4f 4d 49 53 00 	db     "LOOMIS",0x00
dep_loom_cpp_variable_38:
    67cc:	4c 4f 4f 4d 49 53 00 	db     "LOOMIS",0x00
dep_loom_cpp_variable_39:
    67d3:	44 57 41 59 4e 45 5f 49 4e 54 52 4f 44 55 43 45 44 00 	db     "DWAYNE_INTRODUCED",0x00
dep_loom_cpp_variable_40:
    67e5:	4c 4f 4f 4d 49 53 00 	db     "LOOMIS",0x00
dep_loom_cpp_variable_41:
    67ec:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    67ed:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    67ee:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
dep_loom_cpp_variable_42:
    67ef:	4c 4f 4f 4d 49 53 00 	db     "LOOMIS",0x00
dep_loom_cpp_variable_43:
    67f6:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    67f7:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    67f8:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
dep_loom_cpp_variable_44:
    67f9:	4c 4f 4f 4d 49 53 00 	db     "LOOMIS",0x00
dep_loom_cpp_variable_45:
    6800:	53 48 45 52 49 46 46 5f 49 4e 5f 44 49 4e 45 52 00 	db     "SHERIFF_IN_DINER",0x00
dep_loom_cpp_variable_46:
    6811:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    6812:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    6813:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
dep_loom_cpp_variable_47:
    6814:	4c 4f 4f 4d 49 53 00 	db     "LOOMIS",0x00
dep_loom_cpp_variable_48:
    681b:	4c 4f 4f 4d 49 53 00 	db     "LOOMIS",0x00
dep_loom_cpp_variable_49:
    6822:	4c 4f 4f 4d 49 53 00 	db     "LOOMIS",0x00
dep_loom_cpp_variable_50:
    6829:	4c 4f 4f 4d 49 53 00 	db     "LOOMIS",0x00
dep_loom_cpp_variable_51:
    6830:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    6831:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    6832:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
dep_loom_cpp_variable_52:
    6833:	4c 4f 4f 4d 49 53 00 	db     "LOOMIS",0x00
dep_loom_cpp_variable_53:
    683a:	4c 4f 4f 4d 49 53 00 	db     "LOOMIS",0x00
dep_loom_cpp_variable_54:
    6841:	53 54 45 50 48 5f 4d 49 44 47 41 4d 45 5f 50 4c 41 59 45 44 00 	db     "STEPH_MIDGAME_PLAYED",0x00
dep_loom_cpp_variable_55:
    6856:	4c 4f 4f 4d 49 53 00 	db     "LOOMIS",0x00
dep_loom_cpp_variable_56:
    685d:	4c 4f 4f 4d 49 53 00 	db     "LOOMIS",0x00
dep_loom_cpp_variable_57:
    6864:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
dep_loom_cpp_variable_58:
    6865:	4c 4f 4f 4d 49 53 00 	db     "LOOMIS",0x00
dep_loom_cpp_variable_59:
    686c:	4c 4f 4f 4d 49 53 00 	db     "LOOMIS",0x00
dep_loom_cpp_variable_60:
    6873:	4c 4f 4f 4d 49 53 00 	db     "LOOMIS",0x00
dep_loom_cpp_variable_61:
    687a:	4c 4f 4f 4d 49 53 00 	db     "LOOMIS",0x00
dep_loom_cpp_variable_62:
    6881:	4c 4f 4f 4d 49 53 00 	db     "LOOMIS",0x00
dep_loom_cpp_variable_63:
    6888:	4c 4f 4f 4d 49 53 00 	db     "LOOMIS",0x00
dep_loom_cpp_variable_64:
    688f:	4c 4f 4f 4d 49 53 00 	db     "LOOMIS",0x00
dep_loom_cpp_variable_65:
    6896:	50 68 65 6c 70 73 00 	db     "Phelps",0x00
dep_loom_cpp_variable_66:
    689d:	4c 4f 4f 4d 49 53 00 	db     "LOOMIS",0x00
dep_loom_cpp_variable_67:
    68a4:	4c 4f 4f 4d 49 53 00 	db     "LOOMIS",0x00
dep_loom_cpp_variable_68:
    68ab:	4c 4f 4f 4d 49 53 00 	db     "LOOMIS",0x00
dep_loom_cpp_variable_69:
    68b2:	4d 61 6e 27 73 20 4e 65 65 64 73 00 	db     "Man's Needs",0x00
dep_loom_cpp_variable_70:
    68be:	4c 4f 4f 4d 49 53 00 	db     "LOOMIS",0x00
dep_loom_cpp_variable_71:
    68c5:	4c 4f 4f 4d 49 53 00 	db     "LOOMIS",0x00
dep_loom_cpp_variable_72:
    68cc:	4c 4f 4f 4d 49 53 00 	db     "LOOMIS",0x00
dep_loom_cpp_variable_73:
    68d3:	4c 4f 4f 4d 49 53 00 	db     "LOOMIS",0x00
dep_loom_cpp_variable_74:
    68da:	4c 4f 4f 4d 49 53 00 	db     "LOOMIS",0x00
dep_loom_cpp_variable_75:
    68e1:	4c 4f 4f 4d 49 53 00 	db     "LOOMIS",0x00

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 55 (D:\SOURCE\dep_loom.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 55: D:\SOURCE\dep_loom.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------
DEPUTY_LOOMIS:                                                                                      ; access size: DWORD
   22e14:	00 00 00 00          	dd     0x00000000
DEPUTY_LOOMIS_variable_1:                                                                           ; access size: DWORD
   22e18:	00 00 00 00          	dd     0x00000000
DEPUTY_LOOMIS_variable_2:                                                                           ; access size: DWORD
   22e1c:	00 00 00 00          	dd     0x00000000
DEPUTY_LOOMIS_variable_3:                                                                           ; access size: DWORD
   22e20:	00 00 00 00          	dd     0x00000000

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 55 (D:\SOURCE\dep_loom.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------