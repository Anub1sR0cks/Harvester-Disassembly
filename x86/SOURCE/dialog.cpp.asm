;-------------------------------------------------------------------------------
;                                                                              -
;  Module 65: D:\SOURCE\dialog.cpp                                             -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function 'talk_to'                            -
;-------------------------------------------------
talk_to:
   29f80:	53                   	push   ebx
   29f81:	51                   	push   ecx
   29f82:	52                   	push   edx
   29f83:	56                   	push   esi
   29f84:	57                   	push   edi
   29f85:	89 c6                	mov    esi,eax
   29f87:	50                   	push   eax
   29f88:	68 e0 80 00 00       	push   @obj3:dialog_cpp_variable_1                                  ; fixup: num: 6601, src obj: 1, src ofs: 0x29f89, dst obj: 3, dst ofs: 0x80e0
   29f8d:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 6600, src obj: 1, src ofs: 0x29f8e, dst obj: 3, dst ofs: 0x237fc
   29f92:	bb 88 2e 01 00       	mov    ebx,@obj3:function_table                                     ; fixup: num: 6599, src obj: 1, src ofs: 0x29f93, dst obj: 3, dst ofs: 0x12e88
   29f97:	31 c9                	xor    ecx,ecx
   29f99:	e8 43 6c 04 00       	call   sprintf_
   29f9e:	83 c4 0c             	add    esp,0xc
talk_to_branch_1:
   29fa1:	6b f9 24             	imul   edi,ecx,0x24
   29fa4:	ba ec 80 00 00       	mov    edx,@obj3:dialog_cpp_variable_2                              ; fixup: num: 6666, src obj: 1, src ofs: 0x29fa5, dst obj: 3, dst ofs: 0x80ec
   29fa9:	89 d8                	mov    eax,ebx
   29fab:	e8 aa 74 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   29fb0:	85 c0                	test   eax,eax
   29fb2:	74 1d                	je     talk_to_branch_3
   29fb4:	89 f2                	mov    edx,esi
   29fb6:	89 d8                	mov    eax,ebx
   29fb8:	e8 73 c4 04 00       	call   strcmp_
   29fbd:	85 c0                	test   eax,eax
   29fbf:	75 0a                	jne    talk_to_branch_2
   29fc1:	ff 97 a8 2e 01 00    	call   DWORD PTR [edi+@obj3:function_table_variable_1]              ; fixup: num: 6665, src obj: 1, src ofs: 0x29fc3, dst obj: 3, dst ofs: 0x12ea8
   29fc7:	b0 01                	mov    al,0x1
   29fc9:	eb 08                	jmp    talk_to_branch_4
talk_to_branch_2:
   29fcb:	83 c3 24             	add    ebx,0x24
   29fce:	41                   	inc    ecx
   29fcf:	eb d0                	jmp    talk_to_branch_1
talk_to_branch_3:
   29fd1:	30 c0                	xor    al,al
talk_to_branch_4:
   29fd3:	5f                   	pop    edi
   29fd4:	5e                   	pop    esi
   29fd5:	5a                   	pop    edx
   29fd6:	59                   	pop    ecx
   29fd7:	5b                   	pop    ebx
   29fd8:	c3                   	ret    
   29fd9:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   29fdf:	90                   	nop

;-------------------------------------------------
;  Function 'check_dialog_flag'                  -
;-------------------------------------------------
check_dialog_flag:
   29fe0:	53                   	push   ebx
   29fe1:	51                   	push   ecx
   29fe2:	52                   	push   edx
   29fe3:	56                   	push   esi
   29fe4:	57                   	push   edi
   29fe5:	89 c6                	mov    esi,eax
   29fe7:	50                   	push   eax
   29fe8:	68 ed 80 00 00       	push   @obj3:dialog_cpp_variable_3                                  ; fixup: num: 6664, src obj: 1, src ofs: 0x29fe9, dst obj: 3, dst ofs: 0x80ed
   29fed:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 6663, src obj: 1, src ofs: 0x29fee, dst obj: 3, dst ofs: 0x237fc
   29ff2:	bb d0 37 01 00       	mov    ebx,@obj3:flag_table                                         ; fixup: num: 6662, src obj: 1, src ofs: 0x29ff3, dst obj: 3, dst ofs: 0x137d0
   29ff7:	31 c9                	xor    ecx,ecx
   29ff9:	e8 e3 6b 04 00       	call   sprintf_
   29ffe:	83 c4 0c             	add    esp,0xc
check_dialog_flag_branch_1:
   2a001:	6b f9 24             	imul   edi,ecx,0x24
   2a004:	85 db                	test   ebx,ebx
   2a006:	74 22                	je     check_dialog_flag_branch_3
   2a008:	89 f2                	mov    edx,esi
   2a00a:	89 d8                	mov    eax,ebx
   2a00c:	e8 1f c4 04 00       	call   strcmp_
   2a011:	85 c0                	test   eax,eax
   2a013:	75 0f                	jne    check_dialog_flag_branch_2
   2a015:	b8 01 00 00 00       	mov    eax,0x1
   2a01a:	31 d2                	xor    edx,edx
   2a01c:	ff 97 f0 37 01 00    	call   DWORD PTR [edi+@obj3:flag_table_variable_1]                  ; fixup: num: 6966, src obj: 1, src ofs: 0x2a01e, dst obj: 3, dst ofs: 0x137f0
   2a022:	eb 1b                	jmp    check_dialog_flag_branch_4
check_dialog_flag_branch_2:
   2a024:	83 c3 24             	add    ebx,0x24
   2a027:	41                   	inc    ecx
   2a028:	eb d7                	jmp    check_dialog_flag_branch_1
check_dialog_flag_branch_3:
   2a02a:	56                   	push   esi
   2a02b:	68 03 81 00 00       	push   @obj3:dialog_cpp_variable_4                                  ; fixup: num: 6965, src obj: 1, src ofs: 0x2a02c, dst obj: 3, dst ofs: 0x8103
   2a030:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 6973, src obj: 1, src ofs: 0x2a031, dst obj: 3, dst ofs: 0x237fc
   2a035:	e8 a7 6b 04 00       	call   sprintf_
   2a03a:	83 c4 0c             	add    esp,0xc
   2a03d:	30 c0                	xor    al,al
check_dialog_flag_branch_4:
   2a03f:	5f                   	pop    edi
   2a040:	5e                   	pop    esi
   2a041:	5a                   	pop    edx
   2a042:	59                   	pop    ecx
   2a043:	5b                   	pop    ebx
   2a044:	c3                   	ret    
   2a045:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   2a04b:	8d 52 00             	lea    edx,[edx+0x0]
   2a04e:	8b db                	mov    ebx,ebx

;-------------------------------------------------
;  Function 'set_dialog_flag'                    -
;-------------------------------------------------
set_dialog_flag:
   2a050:	53                   	push   ebx
   2a051:	51                   	push   ecx
   2a052:	56                   	push   esi
   2a053:	57                   	push   edi
   2a054:	55                   	push   ebp
   2a055:	89 c6                	mov    esi,eax
   2a057:	89 d5                	mov    ebp,edx
   2a059:	50                   	push   eax
   2a05a:	68 28 81 00 00       	push   @obj3:dialog_cpp_variable_5                                  ; fixup: num: 6972, src obj: 1, src ofs: 0x2a05b, dst obj: 3, dst ofs: 0x8128
   2a05f:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 6971, src obj: 1, src ofs: 0x2a060, dst obj: 3, dst ofs: 0x237fc
   2a064:	bb d0 37 01 00       	mov    ebx,@obj3:flag_table                                         ; fixup: num: 6970, src obj: 1, src ofs: 0x2a065, dst obj: 3, dst ofs: 0x137d0
   2a069:	31 c9                	xor    ecx,ecx
   2a06b:	e8 71 6b 04 00       	call   sprintf_
   2a070:	83 c4 0c             	add    esp,0xc
set_dialog_flag_branch_1:
   2a073:	6b f9 24             	imul   edi,ecx,0x24
   2a076:	85 db                	test   ebx,ebx
   2a078:	74 1d                	je     set_dialog_flag_branch_3
   2a07a:	89 f2                	mov    edx,esi
   2a07c:	89 d8                	mov    eax,ebx
   2a07e:	e8 ad c3 04 00       	call   strcmp_
   2a083:	85 c0                	test   eax,eax
   2a085:	75 0a                	jne    set_dialog_flag_branch_2
   2a087:	89 ea                	mov    edx,ebp
   2a089:	ff 97 f0 37 01 00    	call   DWORD PTR [edi+@obj3:flag_table_variable_1]                  ; fixup: num: 6969, src obj: 1, src ofs: 0x2a08b, dst obj: 3, dst ofs: 0x137f0
   2a08f:	eb 19                	jmp    set_dialog_flag_branch_4
set_dialog_flag_branch_2:
   2a091:	83 c3 24             	add    ebx,0x24
   2a094:	41                   	inc    ecx
   2a095:	eb dc                	jmp    set_dialog_flag_branch_1
set_dialog_flag_branch_3:
   2a097:	56                   	push   esi
   2a098:	68 3c 81 00 00       	push   @obj3:dialog_cpp_variable_6                                  ; fixup: num: 6968, src obj: 1, src ofs: 0x2a099, dst obj: 3, dst ofs: 0x813c
   2a09d:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 6967, src obj: 1, src ofs: 0x2a09e, dst obj: 3, dst ofs: 0x237fc
   2a0a2:	e8 3a 6b 04 00       	call   sprintf_
   2a0a7:	83 c4 0c             	add    esp,0xc
set_dialog_flag_branch_4:
   2a0aa:	5d                   	pop    ebp
   2a0ab:	5f                   	pop    edi
   2a0ac:	5e                   	pop    esi
   2a0ad:	59                   	pop    ecx
   2a0ae:	5b                   	pop    ebx
   2a0af:	c3                   	ret    

;-------------------------------------------------
;  Function 'initialize_dialog_flags'            -
;-------------------------------------------------
initialize_dialog_flags:
   2a0b0:	e8 3b 3b ff ff       	call   CLOAK_ROOM_ATTENDANT_initialize
   2a0b5:	e8 46 25 ff ff       	call   COLONEL_BUSTER_MONRO_initialize
   2a0ba:	e8 e1 14 ff ff       	call   DAD_initialize
   2a0bf:	e8 7c 97 ff ff       	call   DARK_WOMAN_initialize
   2a0c4:	e8 a7 b7 ff ff       	call   DEPUTY_LOOMIS_initialize
   2a0c9:	e8 f2 c5 ff ff       	call   EDNA_FITZPATRICK_initialize
   2a0ce:	e8 bd f5 ff ff       	call   FIREMAN_SPARKY_initialize
   2a0d3:	e8 58 e4 ff ff       	call   global_initialize
   2a0d8:	e8 73 ab ff ff       	call   HANK_initialize
   2a0dd:	e8 2e 0f ff ff       	call   INQUISITOR_initialize
   2a0e2:	e8 39 ee fe ff       	call   JIMMY_JAMES_initialize
   2a0e7:	e8 b4 f6 ff ff       	call   MEMBERSHIP_DIRECTOR_initialize
   2a0ec:	e8 ff a8 fe ff       	call   MISS_WHALEY_initialize
   2a0f1:	e8 8a 94 ff ff       	call   MOM_initialize
   2a0f6:	e8 95 15 ff ff       	call   MOTHER_initialize
   2a0fb:	e8 10 00 ff ff       	call   MRS_PHELPS_initialize
   2a100:	e8 db 5b ff ff       	call   MRS_POTTSDAM_initialize
   2a105:	e8 36 fe ff ff       	call   MR_CLEM_PARSONS_initialize
   2a10a:	e8 11 e7 fe ff       	call   MR_JOHNSON_initialize
   2a10f:	e8 fc 29 ff ff       	call   MR_MCKNIGHT_initialize
   2a114:	e8 87 be fe ff       	call   MR_MOYNAHAN_initialize
   2a119:	e8 e2 f5 fe ff       	call   MR_PETE_SWELL_initialize
   2a11e:	e8 2d dc fe ff       	call   MR_POTTSDAM_initialize
   2a123:	e8 38 3a ff ff       	call   NUDE_MAN_initialize
   2a128:	e8 73 0c ff ff       	call   PAT_O_REILLY_BUTCHE_initialize
   2a12d:	e8 9e 37 ff ff       	call   POSTMASTER_BOYLE_initialize
   2a132:	e8 f9 48 ff ff       	call   PRINCIPAL_HERRILL_initialize
   2a137:	e8 e4 f0 ff ff       	call   RANGE_RYDER_initialize
   2a13c:	e8 af 6f ff ff       	call   SERGEANT_AT_ARMS_initialize
   2a141:	e8 4a 23 00 00       	call   SHERIFF_DWAYNE_initialize
   2a146:	e8 95 df ff ff       	call   STEPHANIE_initialize
   2a14b:	e8 e0 61 ff ff       	call   THE_WASP_WOMAN_initialize
   2a150:	e8 cb 97 ff ff       	call   FIRST_FIREMAN_initialize
   2a155:	e8 b6 98 ff ff       	call   SECOND_FIREMAN_initialize
   2a15a:	e9 01 4d ff ff       	jmp    VALET_initialize
   2a15f:	90                   	nop

;-------------------------------------------------
;  Function 'FindHead'                           -
;-------------------------------------------------
FindHead:
   2a160:	53                   	push   ebx
   2a161:	51                   	push   ecx
   2a162:	52                   	push   edx
   2a163:	89 c1                	mov    ecx,eax
   2a165:	bb 88 2e 01 00       	mov    ebx,@obj3:function_table                                     ; fixup: num: 6982, src obj: 1, src ofs: 0x2a166, dst obj: 3, dst ofs: 0x12e88
FindHead_branch_1:
   2a16a:	ba 61 81 00 00       	mov    edx,@obj3:dialog_cpp_variable_7                              ; fixup: num: 6981, src obj: 1, src ofs: 0x2a16b, dst obj: 3, dst ofs: 0x8161
   2a16f:	89 d8                	mov    eax,ebx
   2a171:	e8 e4 72 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   2a176:	85 c0                	test   eax,eax
   2a178:	74 18                	je     FindHead_branch_3
   2a17a:	89 ca                	mov    edx,ecx
   2a17c:	89 d8                	mov    eax,ebx
   2a17e:	e8 ad c2 04 00       	call   strcmp_
   2a183:	85 c0                	test   eax,eax
   2a185:	75 06                	jne    FindHead_branch_2
   2a187:	b0 01                	mov    al,0x1
   2a189:	5a                   	pop    edx
   2a18a:	59                   	pop    ecx
   2a18b:	5b                   	pop    ebx
   2a18c:	c3                   	ret    
FindHead_branch_2:
   2a18d:	83 c3 24             	add    ebx,0x24
   2a190:	eb d8                	jmp    FindHead_branch_1
FindHead_branch_3:
   2a192:	30 c0                	xor    al,al
   2a194:	5a                   	pop    edx
   2a195:	59                   	pop    ecx
   2a196:	5b                   	pop    ebx
   2a197:	c3                   	ret    
   2a198:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   2a19e:	8b d2                	mov    edx,edx

;-------------------------------------------------
;  Function 'GetDlgFileString'                   -
;-------------------------------------------------
GetDlgFileString:
   2a1a0:	53                   	push   ebx
   2a1a1:	51                   	push   ecx
   2a1a2:	52                   	push   edx
   2a1a3:	56                   	push   esi
   2a1a4:	57                   	push   edi
   2a1a5:	89 c7                	mov    edi,eax
   2a1a7:	83 3d 84 2e 01 00 00 	cmp    DWORD PTR ds:@obj3:first_time,0x0                            ; fixup: num: 6980, src obj: 1, src ofs: 0x2a1a9, dst obj: 3, dst ofs: 0x12e84
   2a1ae:	74 2a                	je     GetDlgFileString_branch_1
   2a1b0:	31 db                	xor    ebx,ebx
   2a1b2:	b8 88 13 00 00       	mov    eax,0x1388
   2a1b7:	89 1d 84 2e 01 00    	mov    DWORD PTR ds:@obj3:first_time,ebx                            ; fixup: num: 6979, src obj: 1, src ofs: 0x2a1b9, dst obj: 3, dst ofs: 0x12e84
   2a1bd:	e8 d1 72 04 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   2a1c2:	a3 84 2f 02 00       	mov    ds:@obj3:common_str,eax                                      ; fixup: num: 6978, src obj: 1, src ofs: 0x2a1c3, dst obj: 3, dst ofs: 0x22f84
   2a1c7:	85 c0                	test   eax,eax
   2a1c9:	75 0f                	jne    GetDlgFileString_branch_1
   2a1cb:	bb 62 81 00 00       	mov    ebx,@obj3:dialog_cpp_variable_8                              ; fixup: num: 6977, src obj: 1, src ofs: 0x2a1cc, dst obj: 3, dst ofs: 0x8162
   2a1d0:	ba 55 01 00 00       	mov    edx,0x155
   2a1d5:	e8 56 de 00 00       	call   _error_report
GetDlgFileString_branch_1:
   2a1da:	ba 7a 81 00 00       	mov    edx,@obj3:dialog_cpp_variable_9                              ; fixup: num: 6976, src obj: 1, src ofs: 0x2a1db, dst obj: 3, dst ofs: 0x817a
   2a1df:	b8 7d 81 00 00       	mov    eax,@obj3:dialog_cpp_variable_10                             ; fixup: num: 6975, src obj: 1, src ofs: 0x2a1e0, dst obj: 3, dst ofs: 0x817d
   2a1e4:	e8 bf 6b 04 00       	call   fopen_
   2a1e9:	89 c6                	mov    esi,eax
   2a1eb:	85 c0                	test   eax,eax
   2a1ed:	75 0f                	jne    GetDlgFileString_branch_2
   2a1ef:	bb 88 81 00 00       	mov    ebx,@obj3:dialog_cpp_variable_11                             ; fixup: num: 6974, src obj: 1, src ofs: 0x2a1f0, dst obj: 3, dst ofs: 0x8188
   2a1f4:	ba 5b 01 00 00       	mov    edx,0x15b
   2a1f9:	e8 32 de 00 00       	call   _error_report
GetDlgFileString_branch_2:
   2a1fe:	31 c9                	xor    ecx,ecx
   2a200:	85 ff                	test   edi,edi
   2a202:	7c 16                	jl     GetDlgFileString_branch_4
GetDlgFileString_branch_3:
   2a204:	ba 88 13 00 00       	mov    edx,0x1388
   2a209:	a1 84 2f 02 00       	mov    eax,ds:@obj3:common_str                                      ; fixup: num: 6985, src obj: 1, src ofs: 0x2a20a, dst obj: 3, dst ofs: 0x22f84
   2a20e:	89 f3                	mov    ebx,esi
   2a210:	41                   	inc    ecx
   2a211:	e8 da 8b 04 00       	call   fgets_
   2a216:	39 f9                	cmp    ecx,edi
   2a218:	7e ea                	jle    GetDlgFileString_branch_3
GetDlgFileString_branch_4:
   2a21a:	89 f0                	mov    eax,esi
   2a21c:	e8 1d 6c 04 00       	call   fclose_
   2a221:	8b 3d 84 2f 02 00    	mov    edi,DWORD PTR ds:@obj3:common_str                            ; fixup: num: 6984, src obj: 1, src ofs: 0x2a223, dst obj: 3, dst ofs: 0x22f84
   2a227:	29 c9                	sub    ecx,ecx
   2a229:	49                   	dec    ecx
   2a22a:	31 c0                	xor    eax,eax
   2a22c:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
   2a22e:	f7 d1                	not    ecx
   2a230:	49                   	dec    ecx
   2a231:	a1 84 2f 02 00       	mov    eax,ds:@obj3:common_str                                      ; fixup: num: 6983, src obj: 1, src ofs: 0x2a232, dst obj: 3, dst ofs: 0x22f84
   2a236:	c6 44 01 ff 00       	mov    BYTE PTR [ecx+eax*1-0x1],0x0
   2a23b:	5f                   	pop    edi
   2a23c:	5e                   	pop    esi
   2a23d:	5a                   	pop    edx
   2a23e:	59                   	pop    ecx
   2a23f:	5b                   	pop    ebx
   2a240:	c3                   	ret    
;-------------------------------------------------
;  Bad code 60 (zero after ret):                 -
;-------------------------------------------------
;  2a23f:	5b                   	pop    ebx
;  2a240:	c3                   	ret    
;  2a241:	00 00                	add    BYTE PTR [eax],al
;  2a243:	00 00                	add    BYTE PTR [eax],al
;-------------------------------------------------
;  Padding data (15 bytes):                      -
;-------------------------------------------------
   2a241:	00 00 00 00 00 00 .. 	db     15 dup(0x00)
;-------------------------------------------------
;  End of bad code 60                            -
;-------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 65 (D:\SOURCE\dialog.cpp)                                     -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 65: D:\SOURCE\dialog.cpp                                             -
;                                                                              -
;-------------------------------------------------------------------------------
dialog_cpp_variable_1:
    80e0:	74 61 6c 6b 5f 74 6f 28 25 73 29 00 	db     "talk_to(%s)",0x00
dialog_cpp_variable_2:
    80ec:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
dialog_cpp_variable_3:
    80ed:	63 68 65 63 6b 5f 64 69 61 6c 6f 67 5f 66 6c 61 67 28 25 73 29 00 	db     "check_dialog_flag(%s)",0x00
dialog_cpp_variable_4:
    8103:	57 41 52 4e 49 4e 47 3a 20 64 69 61 6c 6f 67 20 66 6c 61 67 20 28 25 73 29 20 6e 6f 74 20 66 6f 75 6e 64 21 00 	db     "WARNING: dialog flag (%s) not found!",0x00
dialog_cpp_variable_5:
    8128:	73 65 74 5f 64 69 61 6c 6f 67 5f 66 6c 61 67 28 25 73 29 00 	db     "set_dialog_flag(%s)",0x00
dialog_cpp_variable_6:
    813c:	57 41 52 4e 49 4e 47 3a 20 64 69 61 6c 6f 67 20 66 6c 61 67 20 28 25 73 29 20 6e 6f 74 20 66 6f 75 6e 64 21 00 	db     "WARNING: dialog flag (%s) not found!",0x00
dialog_cpp_variable_7:
    8161:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
dialog_cpp_variable_8:
    8162:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
dialog_cpp_variable_9:
    817a:	72                   	db     0x72                                                         ; dec: 114, chr: 'r'
    817b:	74                   	db     0x74                                                         ; dec: 116, chr: 't'
    817c:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
dialog_cpp_variable_10:
    817d:	64 69 61 6c 6f 67 2e 72 73 70 00 	db     "dialog.rsp",0x00
dialog_cpp_variable_11:
    8188:	75 6e 61 62 6c 65 20 74 6f 20 6f 70 65 6e 20 66 69 6c 65 3a 20 64 69 61 6c 6f 67 2e 72 73 70 00 	db     "unable to open file: dialog.rsp",0x00

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 65 (D:\SOURCE\dialog.cpp)                                     -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 65: D:\SOURCE\dialog.cpp                                             -
;                                                                              -
;-------------------------------------------------------------------------------
first_time:                                                                                         ; access size: DWORD
   12e84:	01 00 00 00          	dd     0x00000001
function_table:
   12e88:	41 55 54 48 4f 52 49 54 59 00 	db     "AUTHORITY",0x00
   12e92:	00 00 00 00 00 00 .. 	db     22 dup(0x00)                                                 ; dec:   0, chr: '\0'
function_table_variable_1:                                                                          ; access size: DWORDS
   12ea8:	30 b7 01 00          	dd     @obj1:talk_to_AUTHORITY_FIGURE                               ; fixup: num: 21430, src obj: 3, src ofs: 0x12ea8, dst obj: 1, dst ofs: 0x1b730
   12eac:	41 55 54 48          	dd     0x48545541
   12eb0:	4f 52 49 54          	dd     0x5449524f
   12eb4:	59 32 00 00          	dd     0x00003259
   12eb8:	00 00 00 00 00 00 .. 	dd     5 dup(0x00000000)
   12ecc:	30 b7 01 00          	dd     @obj1:talk_to_AUTHORITY_FIGURE                               ; fixup: num: 21431, src obj: 3, src ofs: 0x12ecc, dst obj: 1, dst ofs: 0x1b730
   12ed0:	42 45 47 47          	dd     0x47474542
   12ed4:	41 52 00 00          	dd     0x00005241
   12ed8:	00 00 00 00 00 00 .. 	dd     6 dup(0x00000000)
   12ef0:	40 4d 02 00          	dd     @obj1:talk_to_BEGGAR                                         ; fixup: num: 21432, src obj: 3, src ofs: 0x12ef0, dst obj: 1, dst ofs: 0x24d40
   12ef4:	42 4f 59 4c          	dd     0x4c594f42
   12ef8:	45 00 00 00          	dd     0x00000045
   12efc:	00 00 00 00 00 00 .. 	dd     6 dup(0x00000000)
   12f14:	20 cb 01 00          	dd     @obj1:talk_to_POSTMASTER_BOYLE                               ; fixup: num: 21433, src obj: 3, src ofs: 0x12f14, dst obj: 1, dst ofs: 0x1cb20
   12f18:	42 55 53 54          	dd     0x54535542
   12f1c:	45 52 00 00          	dd     0x00005245
   12f20:	00 00 00 00 00 00 .. 	dd     6 dup(0x00000000)
   12f38:	c0 b7 01 00          	dd     @obj1:talk_to_COLONEL_BUSTER_MONRO                           ; fixup: num: 21434, src obj: 3, src ofs: 0x12f38, dst obj: 1, dst ofs: 0x1b7c0
   12f3c:	42 55 54 43          	dd     0x43545542
   12f40:	48 45 52 00          	dd     0x00524548
   12f44:	00 00 00 00 00 00 .. 	dd     6 dup(0x00000000)
   12f5c:	80 a1 01 00          	dd     @obj1:talk_to_PAT_O_REILLY_BUTCHE                            ; fixup: num: 21360, src obj: 3, src ofs: 0x12f5c, dst obj: 1, dst ofs: 0x1a180
   12f60:	4c 4f 44 47          	dd     0x47444f4c
   12f64:	45 5f 43 48          	dd     0x48435f45
   12f68:	45 46 00 00          	dd     0x00004645
   12f6c:	00 00 00 00 00 00 .. 	dd     5 dup(0x00000000)
   12f80:	70 81 02 00          	dd     @obj1:talk_to_LODGE_CHEF                                     ; fixup: num: 21361, src obj: 3, src ofs: 0x12f80, dst obj: 1, dst ofs: 0x28170
   12f84:	43 48 45 53          	dd     0x53454843
   12f88:	53 4d 41 53          	dd     0x53414d53
   12f8c:	54 45 52 00          	dd     0x00524554
   12f90:	00 00 00 00 00 00 .. 	dd     5 dup(0x00000000)
   12fa4:	00 d9 01 00          	dd     @obj1:talk_to_CHESSMASTER                                    ; fixup: num: 21362, src obj: 3, src ofs: 0x12fa4, dst obj: 1, dst ofs: 0x1d900
   12fa8:	43 4c 4f 41          	dd     0x414f4c43
   12fac:	4b 5f 41 54          	dd     0x54415f4b
   12fb0:	4e 44 00 00          	dd     0x0000444e
   12fb4:	00 00 00 00 00 00 .. 	dd     5 dup(0x00000000)
   12fc8:	80 db 01 00          	dd     @obj1:talk_to_CLOAK_ROOM_ATTENDANT                           ; fixup: num: 21363, src obj: 3, src ofs: 0x12fc8, dst obj: 1, dst ofs: 0x1db80
   12fcc:	43 55 52 41          	dd     0x41525543
   12fd0:	54 4f 52 00          	dd     0x00524f54
   12fd4:	00 00 00 00 00 00 .. 	dd     6 dup(0x00000000)
   12fec:	a0 4c 02 00          	dd     @obj1:talk_to_CURATOR                                        ; fixup: num: 21364, src obj: 3, src ofs: 0x12fec, dst obj: 1, dst ofs: 0x24ca0
   12ff0:	44 41 44 00          	dd     0x00444144
   12ff4:	00 00 00 00 00 00 .. 	dd     7 dup(0x00000000)
   13010:	20 b0 01 00          	dd     @obj1:talk_to_DAD                                            ; fixup: num: 21519, src obj: 3, src ofs: 0x13010, dst obj: 1, dst ofs: 0x1b020
   13014:	44 41 52 4b          	dd     0x4b524144
   13018:	5f 57 4f 4d          	dd     0x4d4f575f
   1301c:	41 4e 00 00          	dd     0x00004e41
   13020:	00 00 00 00 00 00 .. 	dd     5 dup(0x00000000)
   13034:	10 36 02 00          	dd     @obj1:talk_to_DARK_WOMAN                                     ; fixup: num: 21520, src obj: 3, src ofs: 0x13034, dst obj: 1, dst ofs: 0x23610
   13038:	44 57 41 59          	dd     0x59415744
   1303c:	4e 45 00 00          	dd     0x0000454e
   13040:	00 00 00 00 00 00 .. 	dd     6 dup(0x00000000)
   13058:	10 a3 02 00          	dd     @obj1:talk_to_SHERIFF_DWAYNE                                 ; fixup: num: 21521, src obj: 3, src ofs: 0x13058, dst obj: 1, dst ofs: 0x2a310
   1305c:	44 57 41 59          	dd     0x59415744
   13060:	4e 45 5f 44          	dd     0x445f454e
   13064:	4e 41 4c 46          	dd     0x464c414e
   13068:	54 00 00 00          	dd     0x00000054
   1306c:	00 00 00 00 00 00 .. 	dd     4 dup(0x00000000)
   1307c:	10 a3 02 00          	dd     @obj1:talk_to_SHERIFF_DWAYNE                                 ; fixup: num: 21522, src obj: 3, src ofs: 0x1307c, dst obj: 1, dst ofs: 0x2a310
   13080:	44 57 41 59          	dd     0x59415744
   13084:	4e 45 5f 53          	dd     0x535f454e
   13088:	54 5f 42 45          	dd     0x45425f54
   1308c:	44 52 4d 00          	dd     0x004d5244
   13090:	00 00 00 00 00 00 .. 	dd     4 dup(0x00000000)
   130a0:	10 a3 02 00          	dd     @obj1:talk_to_SHERIFF_DWAYNE                                 ; fixup: num: 21523, src obj: 3, src ofs: 0x130a0, dst obj: 1, dst ofs: 0x2a310
   130a4:	45 44 4e 41          	dd     0x414e4445
   130a8:	00 00 00 00 00 00 .. 	dd     7 dup(0x00000000)
   130c4:	a0 58 02 00          	dd     @obj1:talk_to_EDNA_FITZPATRICK                               ; fixup: num: 21524, src obj: 3, src ofs: 0x130c4, dst obj: 1, dst ofs: 0x258a0
   130c8:	46 49 52 45          	dd     0x45524946
   130cc:	4d 41 4e 31          	dd     0x314e414d
   130d0:	00 00 00 00 00 00 .. 	dd     6 dup(0x00000000)
   130e8:	50 38 02 00          	dd     @obj1:talk_to_FIRST_FIREMAN                                  ; fixup: num: 21525, src obj: 3, src ofs: 0x130e8, dst obj: 1, dst ofs: 0x23850
   130ec:	46 49 52 45          	dd     0x45524946
   130f0:	4d 41 4e 32          	dd     0x324e414d
   130f4:	00 00 00 00 00 00 .. 	dd     6 dup(0x00000000)
   1310c:	40 39 02 00          	dd     @obj1:talk_to_SECOND_FIREMAN                                 ; fixup: num: 21526, src obj: 3, src ofs: 0x1310c, dst obj: 1, dst ofs: 0x23940
   13110:	47 4c 41 44          	dd     0x44414c47
   13114:	49 41 54 4f          	dd     0x4f544149
   13118:	52 00 00 00          	dd     0x00000052
   1311c:	00 00 00 00 00 00 .. 	dd     5 dup(0x00000000)
   13130:	30 c6 01 00          	dd     @obj1:talk_to_GLADIATOR                                      ; fixup: num: 21527, src obj: 3, src ofs: 0x13130, dst obj: 1, dst ofs: 0x1c630
   13134:	48 41 4e 4b          	dd     0x4b4e4148
   13138:	00 00 00 00 00 00 .. 	dd     7 dup(0x00000000)
   13154:	30 3a 02 00          	dd     @obj1:talk_to_HANK                                           ; fixup: num: 21528, src obj: 3, src ofs: 0x13154, dst obj: 1, dst ofs: 0x23a30
   13158:	48 45 52 52          	dd     0x52524548
   1315c:	49 4c 4c 00          	dd     0x004c4c49
   13160:	00 00 00 00 00 00 .. 	dd     6 dup(0x00000000)
   13178:	00 dc 01 00          	dd     @obj1:talk_to_PRINCIPAL_HERRILL                              ; fixup: num: 21529, src obj: 3, src ofs: 0x13178, dst obj: 1, dst ofs: 0x1dc00
   1317c:	48 45 52 52          	dd     0x52524548
   13180:	49 4c 4c 5f          	dd     0x5f4c4c49
   13184:	4c 4f 47 00          	dd     0x00474f4c
   13188:	00 00 00 00 00 00 .. 	dd     5 dup(0x00000000)
   1319c:	00 dc 01 00          	dd     @obj1:talk_to_PRINCIPAL_HERRILL                              ; fixup: num: 21530, src obj: 3, src ofs: 0x1319c, dst obj: 1, dst ofs: 0x1dc00
   131a0:	49 4e 51 55          	dd     0x55514e49
   131a4:	49 53 49 54          	dd     0x54495349
   131a8:	4f 52 00 00          	dd     0x0000524f
   131ac:	00 00 00 00 00 00 .. 	dd     5 dup(0x00000000)
   131c0:	70 af 01 00          	dd     @obj1:talk_to_INQUISITOR                                     ; fixup: num: 21531, src obj: 3, src ofs: 0x131c0, dst obj: 1, dst ofs: 0x1af70
   131c4:	4a 49 4d 4d          	dd     0x4d4d494a
   131c8:	59 00 00 00          	dd     0x00000059
   131cc:	00 00 00 00 00 00 .. 	dd     6 dup(0x00000000)
   131e4:	80 88 01 00          	dd     @obj1:talk_to_JIMMY_JAMES                                    ; fixup: num: 21532, src obj: 3, src ofs: 0x131e4, dst obj: 1, dst ofs: 0x18880
   131e8:	4a 4f 48 4e          	dd     0x4e484f4a
   131ec:	53 4f 4e 00          	dd     0x004e4f53
   131f0:	00 00 00 00 00 00 .. 	dd     6 dup(0x00000000)
   13208:	d0 7d 01 00          	dd     @obj1:talk_to_MR_JOHNSON                                     ; fixup: num: 21533, src obj: 3, src ofs: 0x13208, dst obj: 1, dst ofs: 0x17dd0
   1320c:	4b 41 52 49          	dd     0x4952414b
   13210:	4e 00 00 00          	dd     0x0000004e
   13214:	00 00 00 00 00 00 .. 	dd     6 dup(0x00000000)
   1322c:	90 ea 01 00          	dd     @obj1:talk_to_KARIN                                          ; fixup: num: 21534, src obj: 3, src ofs: 0x1322c, dst obj: 1, dst ofs: 0x1ea90
   13230:	4b 41 52 49          	dd     0x4952414b
   13234:	4e 5f 43 45          	dd     0x45435f4e
   13238:	4d 31 30 00          	dd     0x0030314d
   1323c:	00 00 00 00 00 00 .. 	dd     5 dup(0x00000000)
   13250:	90 ea 01 00          	dd     @obj1:talk_to_KARIN                                          ; fixup: num: 21535, src obj: 3, src ofs: 0x13250, dst obj: 1, dst ofs: 0x1ea90
   13254:	4b 41 52 49          	dd     0x4952414b
   13258:	4e 5f 53 54          	dd     0x54535f4e
   1325c:	41 4e 44 49          	dd     0x49444e41
   13260:	4e 47 00 00          	dd     0x0000474e
   13264:	00 00 00 00 00 00 .. 	dd     4 dup(0x00000000)
   13274:	90 ea 01 00          	dd     @obj1:talk_to_KARIN                                          ; fixup: num: 21536, src obj: 3, src ofs: 0x13274, dst obj: 1, dst ofs: 0x1ea90
   13278:	4b 41 52 49          	dd     0x4952414b
   1327c:	4e 5f 4f 46          	dd     0x464f5f4e
   13280:	46 49 43 45          	dd     0x45434946
   13284:	00 00 00 00 00 00 .. 	dd     5 dup(0x00000000)
   13298:	90 ea 01 00          	dd     @obj1:talk_to_KARIN                                          ; fixup: num: 21537, src obj: 3, src ofs: 0x13298, dst obj: 1, dst ofs: 0x1ea90
   1329c:	4c 49 42 52          	dd     0x5242494c
   132a0:	41 52 49 41          	dd     0x41495241
   132a4:	4e 00 00 00          	dd     0x0000004e
   132a8:	00 00 00 00 00 00 .. 	dd     5 dup(0x00000000)
   132bc:	40 8f 01 00          	dd     @obj1:talk_to_LIBRARIAN                                      ; fixup: num: 21538, src obj: 3, src ofs: 0x132bc, dst obj: 1, dst ofs: 0x18f40
   132c0:	4c 4f 4f 4d          	dd     0x4d4f4f4c
   132c4:	49 53 00 00          	dd     0x00005349
   132c8:	00 00 00 00 00 00 .. 	dd     6 dup(0x00000000)
   132e0:	80 4f 02 00          	dd     @obj1:talk_to_DEPUTY_LOOMIS                                  ; fixup: num: 21539, src obj: 3, src ofs: 0x132e0, dst obj: 1, dst ofs: 0x24f80
   132e4:	4d 41 44 41          	dd     0x4144414d
   132e8:	4d 00 00 00          	dd     0x0000004d
   132ec:	00 00 00 00 00 00 .. 	dd     6 dup(0x00000000)
   13304:	c0 ad 01 00          	dd     @obj1:talk_to_MADAM                                          ; fixup: num: 21540, src obj: 3, src ofs: 0x13304, dst obj: 1, dst ofs: 0x1adc0
   13308:	4d 41 49 4e          	dd     0x4e49414d
   1330c:	54 5f 4d 41          	dd     0x414d5f54
   13310:	4e 00 00 00          	dd     0x0000004e
   13314:	00 00 00 00 00 00 .. 	dd     5 dup(0x00000000)
   13328:	a0 b6 01 00          	dd     @obj1:talk_to_MAINTENANCE_MAN                                ; fixup: num: 21541, src obj: 3, src ofs: 0x13328, dst obj: 1, dst ofs: 0x1b6a0
   1332c:	4d 43 4b 4e          	dd     0x4e4b434d
   13330:	49 47 48 54          	dd     0x54484749
   13334:	00 00 00 00 00 00 .. 	dd     6 dup(0x00000000)
   1334c:	70 c7 01 00          	dd     @obj1:talk_to_MR_MCKNIGHT                                    ; fixup: num: 21542, src obj: 3, src ofs: 0x1334c, dst obj: 1, dst ofs: 0x1c770
   13350:	4d 45 4d 42          	dd     0x424d454d
   13354:	5f 44 49 52          	dd     0x5249445f
   13358:	00 00 00 00 00 00 .. 	dd     6 dup(0x00000000)
   13370:	d0 96 02 00          	dd     @obj1:talk_to_MEMBERSHIP_DIRECTOR                            ; fixup: num: 21543, src obj: 3, src ofs: 0x13370, dst obj: 1, dst ofs: 0x296d0
   13374:	4d 4f 4d 00          	dd     0x004d4f4d
   13378:	00 00 00 00 00 00 .. 	dd     7 dup(0x00000000)
   13394:	40 11 02 00          	dd     @obj1:talk_to_MOM                                            ; fixup: num: 21544, src obj: 3, src ofs: 0x13394, dst obj: 1, dst ofs: 0x21140
   13398:	4d 4f 54 48          	dd     0x48544f4d
   1339c:	45 52 00 00          	dd     0x00005245
   133a0:	00 00 00 00 00 00 .. 	dd     6 dup(0x00000000)
   133b8:	b0 b5 01 00          	dd     @obj1:talk_to_MOTHER                                         ; fixup: num: 21545, src obj: 3, src ofs: 0x133b8, dst obj: 1, dst ofs: 0x1b5b0
   133bc:	4d 4f 59 4e          	dd     0x4e594f4d
   133c0:	41 48 41 4e          	dd     0x4e414841
   133c4:	00 00 00 00 00 00 .. 	dd     6 dup(0x00000000)
   133dc:	20 4a 01 00          	dd     @obj1:talk_to_MR_MOYNAHAN                                    ; fixup: num: 21546, src obj: 3, src ofs: 0x133dc, dst obj: 1, dst ofs: 0x14a20
   133e0:	4d 4f 59 4e          	dd     0x4e594f4d
   133e4:	41 48 41 4e          	dd     0x4e414841
   133e8:	5f 4d 42 4c          	dd     0x4c424d5f
   133ec:	4d 00 00 00          	dd     0x0000004d
   133f0:	00 00 00 00 00 00 .. 	dd     4 dup(0x00000000)
   13400:	20 4a 01 00          	dd     @obj1:talk_to_MR_MOYNAHAN                                    ; fixup: num: 21547, src obj: 3, src ofs: 0x13400, dst obj: 1, dst ofs: 0x14a20
   13404:	50 4f 54 54          	dd     0x54544f50
   13408:	53 5f 46 4c          	dd     0x4c465f53
   1340c:	45 53 48 00          	dd     0x00485345
   13410:	00 00 00 00 00 00 .. 	dd     5 dup(0x00000000)
   13424:	00 60 01 00          	dd     @obj1:talk_to_MR_POTTSDAM                                    ; fixup: num: 21548, src obj: 3, src ofs: 0x13424, dst obj: 1, dst ofs: 0x16000
   13428:	4d 52 5f 50          	dd     0x505f524d
   1342c:	4f 54 54 53          	dd     0x5354544f
   13430:	00 00 00 00 00 00 .. 	dd     6 dup(0x00000000)
   13448:	00 60 01 00          	dd     @obj1:talk_to_MR_POTTSDAM                                    ; fixup: num: 21549, src obj: 3, src ofs: 0x13448, dst obj: 1, dst ofs: 0x16000
   1344c:	4d 52 5f 50          	dd     0x505f524d
   13450:	4f 54 54 53          	dd     0x5354544f
   13454:	5f 43 45 4d          	dd     0x4d45435f
   13458:	31 30 00 00          	dd     0x00003031
   1345c:	00 00 00 00 00 00 .. 	dd     4 dup(0x00000000)
   1346c:	00 60 01 00          	dd     @obj1:talk_to_MR_POTTSDAM                                    ; fixup: num: 21550, src obj: 3, src ofs: 0x1346c, dst obj: 1, dst ofs: 0x16000
   13470:	4d 52 5f 50          	dd     0x505f524d
   13474:	4f 54 54 53          	dd     0x5354544f
   13478:	5f 48 41 4c          	dd     0x4c41485f
   1347c:	4c 00 00 00          	dd     0x0000004c
   13480:	00 00 00 00 00 00 .. 	dd     4 dup(0x00000000)
   13490:	00 60 01 00          	dd     @obj1:talk_to_MR_POTTSDAM                                    ; fixup: num: 21551, src obj: 3, src ofs: 0x13490, dst obj: 1, dst ofs: 0x16000
   13494:	4d 52 53 5f          	dd     0x5f53524d
   13498:	50 4f 54 54          	dd     0x54544f50
   1349c:	53 00 00 00          	dd     0x00000053
   134a0:	00 00 00 00 00 00 .. 	dd     5 dup(0x00000000)
   134b4:	70 ee 01 00          	dd     @obj1:talk_to_MRS_POTTSDAM                                   ; fixup: num: 21553, src obj: 3, src ofs: 0x134b4, dst obj: 1, dst ofs: 0x1ee70
   134b8:	4d 52 53 5f          	dd     0x5f53524d
   134bc:	50 4f 54 54          	dd     0x54544f50
   134c0:	53 5f 53 54          	dd     0x54535f53
   134c4:	5f 42 45 44          	dd     0x4445425f
   134c8:	52 4d 00 00          	dd     0x00004d52
   134cc:	00 00 00 00 00 00 .. 	dd     3 dup(0x00000000)
   134d8:	70 ee 01 00          	dd     @obj1:talk_to_MRS_POTTSDAM                                   ; fixup: num: 21552, src obj: 3, src ofs: 0x134d8, dst obj: 1, dst ofs: 0x1ee70
   134dc:	4e 55 44 45          	dd     0x4544554e
   134e0:	5f 4d 41 4e          	dd     0x4e414d5f
   134e4:	00 00 00 00 00 00 .. 	dd     6 dup(0x00000000)
   134fc:	b0 d9 01 00          	dd     @obj1:talk_to_NUDE_MAN                                       ; fixup: num: 21554, src obj: 3, src ofs: 0x134fc, dst obj: 1, dst ofs: 0x1d9b0
   13500:	50 41 52 53          	dd     0x53524150
   13504:	4f 4e 53 00          	dd     0x00534e4f
   13508:	00 00 00 00 00 00 .. 	dd     6 dup(0x00000000)
   13520:	c0 97 02 00          	dd     @obj1:talk_to_MR_CLEM_PARSONS                                ; fixup: num: 21555, src obj: 3, src ofs: 0x13520, dst obj: 1, dst ofs: 0x297c0
   13524:	50 54 41 5f          	dd     0x5f415450
   13528:	4d 4f 4d 31          	dd     0x314d4f4d
   1352c:	00 00 00 00 00 00 .. 	dd     6 dup(0x00000000)
   13544:	30 4e 02 00          	dd     @obj1:talk_to_GENERIC_MOMS_AT_PTA                            ; fixup: num: 21556, src obj: 3, src ofs: 0x13544, dst obj: 1, dst ofs: 0x24e30
   13548:	50 54 41 5f          	dd     0x5f415450
   1354c:	4d 4f 4d 32          	dd     0x324d4f4d
   13550:	00 00 00 00 00 00 .. 	dd     6 dup(0x00000000)
   13568:	30 4e 02 00          	dd     @obj1:talk_to_GENERIC_MOMS_AT_PTA                            ; fixup: num: 21557, src obj: 3, src ofs: 0x13568, dst obj: 1, dst ofs: 0x24e30
   1356c:	50 54 41 5f          	dd     0x5f415450
   13570:	4d 4f 4d 33          	dd     0x334d4f4d
   13574:	00 00 00 00 00 00 .. 	dd     6 dup(0x00000000)
   1358c:	30 4e 02 00          	dd     @obj1:talk_to_GENERIC_MOMS_AT_PTA                            ; fixup: num: 21558, src obj: 3, src ofs: 0x1358c, dst obj: 1, dst ofs: 0x24e30
   13590:	50 54 41 5f          	dd     0x5f415450
   13594:	4d 4f 4d 34          	dd     0x344d4f4d
   13598:	00 00 00 00 00 00 .. 	dd     6 dup(0x00000000)
   135b0:	30 4e 02 00          	dd     @obj1:talk_to_GENERIC_MOMS_AT_PTA                            ; fixup: num: 21559, src obj: 3, src ofs: 0x135b0, dst obj: 1, dst ofs: 0x24e30
   135b4:	50 54 41 5f          	dd     0x5f415450
   135b8:	4d 4f 4d 35          	dd     0x354d4f4d
   135bc:	00 00 00 00 00 00 .. 	dd     6 dup(0x00000000)
   135d4:	30 4e 02 00          	dd     @obj1:talk_to_GENERIC_MOMS_AT_PTA                            ; fixup: num: 21560, src obj: 3, src ofs: 0x135d4, dst obj: 1, dst ofs: 0x24e30
   135d8:	50 41 53 54          	dd     0x54534150
   135dc:	4f 52 45 4c          	dd     0x4c45524f
   135e0:	4c 49 00 00          	dd     0x0000494c
   135e4:	00 00 00 00 00 00 .. 	dd     5 dup(0x00000000)
   135f8:	60 81 02 00          	dd     @obj1:talk_to_MR_PASTORELLI                                  ; fixup: num: 21561, src obj: 3, src ofs: 0x135f8, dst obj: 1, dst ofs: 0x28160
   135fc:	53 57 45 4c          	dd     0x4c455753
   13600:	4c 00 00 00          	dd     0x0000004c
   13604:	00 00 00 00 00 00 .. 	dd     6 dup(0x00000000)
   1361c:	10 91 01 00          	dd     @obj1:talk_to_MR_PETE_SWELL                                  ; fixup: num: 21562, src obj: 3, src ofs: 0x1361c, dst obj: 1, dst ofs: 0x19110
   13620:	50 48 45 4c          	dd     0x4c454850
   13624:	50 53 00 00          	dd     0x00005350
   13628:	00 00 00 00 00 00 .. 	dd     6 dup(0x00000000)
   13640:	20 99 01 00          	dd     @obj1:talk_to_MRS_PHELPS                                     ; fixup: num: 21563, src obj: 3, src ofs: 0x13640, dst obj: 1, dst ofs: 0x19920
   13644:	50 52 49 45          	dd     0x45495250
   13648:	53 54 00 00          	dd     0x00005453
   1364c:	00 00 00 00 00 00 .. 	dd     6 dup(0x00000000)
   13664:	30 97 01 00          	dd     @obj1:talk_to_PRIEST                                         ; fixup: num: 21564, src obj: 3, src ofs: 0x13664, dst obj: 1, dst ofs: 0x19730
   13668:	52 59 44 45          	dd     0x45445952
   1366c:	52 00 00 00          	dd     0x00000052
   13670:	00 00 00 00 00 00 .. 	dd     6 dup(0x00000000)
   13688:	80 8c 02 00          	dd     @obj1:talk_to_RANGE_RYDER                                    ; fixup: num: 21565, src obj: 3, src ofs: 0x13688, dst obj: 1, dst ofs: 0x28c80
   1368c:	52 59 44 45          	dd     0x45445952
   13690:	52 5f 54 56          	dd     0x56545f52
   13694:	5f 4f 55 54          	dd     0x54554f5f
   13698:	00 00 00 00 00 00 .. 	dd     5 dup(0x00000000)
   136ac:	80 8c 02 00          	dd     @obj1:talk_to_RANGE_RYDER                                    ; fixup: num: 21566, src obj: 3, src ofs: 0x136ac, dst obj: 1, dst ofs: 0x28c80
   136b0:	53 45 52 47          	dd     0x47524553
   136b4:	45 41 4e 54          	dd     0x544e4145
   136b8:	00 00 00 00 00 00 .. 	dd     6 dup(0x00000000)
   136d0:	40 03 02 00          	dd     @obj1:talk_to_SERGEANT_AT_ARMS                               ; fixup: num: 21567, src obj: 3, src ofs: 0x136d0, dst obj: 1, dst ofs: 0x20340
   136d4:	53 50 41 52          	dd     0x52415053
   136d8:	4b 59 00 00          	dd     0x0000594b
   136dc:	00 00 00 00 00 00 .. 	dd     6 dup(0x00000000)
   136f4:	40 92 02 00          	dd     @obj1:talk_to_FIREMAN_SPARKY                                 ; fixup: num: 21568, src obj: 3, src ofs: 0x136f4, dst obj: 1, dst ofs: 0x29240
   136f8:	53 54 45 50          	dd     0x50455453
   136fc:	48 41 4e 49          	dd     0x494e4148
   13700:	45 00 00 00          	dd     0x00000045
   13704:	00 00 00 00 00 00 .. 	dd     5 dup(0x00000000)
   13718:	10 67 02 00          	dd     @obj1:talk_to_STEPHANIE                                      ; fixup: num: 21569, src obj: 3, src ofs: 0x13718, dst obj: 1, dst ofs: 0x26710
   1371c:	56 45 54 00          	dd     0x00544556
   13720:	00 00 00 00 00 00 .. 	dd     7 dup(0x00000000)
   1373c:	20 fd 01 00          	dd     @obj1:talk_to_WAR_VETERAN                                    ; fixup: num: 21570, src obj: 3, src ofs: 0x1373c, dst obj: 1, dst ofs: 0x1fd20
   13740:	56 41 4c 45          	dd     0x454c4156
   13744:	54 00 00 00          	dd     0x00000054
   13748:	00 00 00 00 00 00 .. 	dd     6 dup(0x00000000)
   13760:	a0 ed 01 00          	dd     @obj1:talk_to_VALET                                          ; fixup: num: 21571, src obj: 3, src ofs: 0x13760, dst obj: 1, dst ofs: 0x1eda0
   13764:	57 41 53 50          	dd     0x50534157
   13768:	5f 57 4f 4d          	dd     0x4d4f575f
   1376c:	41 4e 00 00          	dd     0x00004e41
   13770:	00 00 00 00 00 00 .. 	dd     5 dup(0x00000000)
   13784:	e0 fd 01 00          	dd     @obj1:talk_to_THE_WASP_WOMAN                                 ; fixup: num: 21572, src obj: 3, src ofs: 0x13784, dst obj: 1, dst ofs: 0x1fde0
   13788:	57 48 41 4c          	dd     0x4c414857
   1378c:	45 59 00 00          	dd     0x00005945
   13790:	00 00 00 00 00 00 .. 	dd     6 dup(0x00000000)
   137a8:	c0 3e 01 00          	dd     @obj1:talk_to_MISS_WHALEY                                    ; fixup: num: 21573, src obj: 3, src ofs: 0x137a8, dst obj: 1, dst ofs: 0x13ec0
   137ac:	00 00 00 00 00 00 .. 	dd     9 dup(0x00000000)
flag_table:
   137d0:	42 4f 59 4c 45 5f 41 44 4d 49 54 54 45 44 5f 42 55 52 4e 49 4e 47 5f 44 4f 57 4e 00 	db     "BOYLE_ADMITTED_BURNING_DOWN",0x00
   137ec:	00 00 00 00          	db     4 dup(0x00)                                                  ; dec:   0, chr: '\0'
flag_table_variable_1:                                                                              ; access size: DWORDS
   137f0:	30 82 02 00          	dd     @obj1:BOYLE_ADMITTED_BURNING_DOWN_THE_NEWSPAPER_BLDG         ; fixup: num: 21459, src obj: 3, src ofs: 0x137f0, dst obj: 1, dst ofs: 0x28230
   137f4:	42 4f 59 4c          	dd     0x4c594f42
   137f8:	45 5f 53 50          	dd     0x50535f45
   137fc:	4f 4b 45 5f          	dd     0x5f454b4f
   13800:	4f 46 5f 47          	dd     0x475f464f
   13804:	41 53 5f 43          	dd     0x435f5341
   13808:	41 4e 00 00          	dd     0x00004e41
   1380c:	00 00 00 00 00 00 .. 	dd     2 dup(0x00000000)
   13814:	40 82 02 00          	dd     @obj1:BOYLE_SPOKE_OF_GAS_CAN                                 ; fixup: num: 21458, src obj: 3, src ofs: 0x13814, dst obj: 1, dst ofs: 0x28240
   13818:	44 41 59 5f          	dd     0x5f594144
   1381c:	41 46 54 45          	dd     0x45544641
   13820:	52 5f 50 43          	dd     0x43505f52
   13824:	5f 52 45 53          	dd     0x5345525f
   13828:	43 55 45 44          	dd     0x44455543
   1382c:	5f 4b 41 52          	dd     0x52414b5f
   13830:	49 4e 00 00          	dd     0x00004e49
   13834:	00 00 00 00          	dd     0x00000000
   13838:	60 82 02 00          	dd     @obj1:DAY_AFTER_PC_RESCUED_KARIN                             ; fixup: num: 21457, src obj: 3, src ofs: 0x13838, dst obj: 1, dst ofs: 0x28260
   1383c:	44 4e 41 5f          	dd     0x5f414e44
   13840:	44 49 4e 45          	dd     0x454e4944
   13844:	52 5f 4c 49          	dd     0x494c5f52
   13848:	47 48 54 5f          	dd     0x5f544847
   1384c:	4d 49 44 47          	dd     0x4744494d
   13850:	41 4d 45 5f          	dd     0x5f454d41
   13854:	50 4c 41 00          	dd     0x00414c50
   13858:	00 00 00 00          	dd     0x00000000
   1385c:	70 82 02 00          	dd     @obj1:DNA_DINER_LIGHT_MIDGAME_PLAYED                         ; fixup: num: 21574, src obj: 3, src ofs: 0x1385c, dst obj: 1, dst ofs: 0x28270
   13860:	44 4e 41 5f          	dd     0x5f414e44
   13864:	53 55 49 43          	dd     0x43495553
   13868:	49 44 45 5f          	dd     0x5f454449
   1386c:	4d 49 44 47          	dd     0x4744494d
   13870:	41 4d 45 5f          	dd     0x5f454d41
   13874:	50 4c 41 59          	dd     0x59414c50
   13878:	45 44 00 00          	dd     0x00004445
   1387c:	00 00 00 00          	dd     0x00000000
   13880:	80 82 02 00          	dd     @obj1:DNA_SUICIDE_MIDGAME_PLAYED                             ; fixup: num: 21464, src obj: 3, src ofs: 0x13880, dst obj: 1, dst ofs: 0x28280
   13884:	46 4f 55 4e          	dd     0x4e554f46
   13888:	44 5f 42 4f          	dd     0x4f425f44
   1388c:	59 4c 45 53          	dd     0x53454c59
   13890:	5f 42 55 54          	dd     0x5455425f
   13894:	54 4f 4e 00          	dd     0x004e4f54
   13898:	00 00 00 00 00 00 .. 	dd     3 dup(0x00000000)
   138a4:	90 82 02 00          	dd     @obj1:FOUND_BOYLES_BUTTON                                    ; fixup: num: 21463, src obj: 3, src ofs: 0x138a4, dst obj: 1, dst ofs: 0x28290
   138a8:	47 49 56 45          	dd     0x45564947
   138ac:	4e 5f 42 55          	dd     0x55425f4e
   138b0:	54 54 4f 4e          	dd     0x4e4f5454
   138b4:	5f 42 41 43          	dd     0x4341425f
   138b8:	4b 00 00 00          	dd     0x0000004b
   138bc:	00 00 00 00 00 00 .. 	dd     3 dup(0x00000000)
   138c8:	a0 82 02 00          	dd     @obj1:GIVEN_BUTTON_BACK                                      ; fixup: num: 21462, src obj: 3, src ofs: 0x138c8, dst obj: 1, dst ofs: 0x282a0
   138cc:	47 4f 54 54          	dd     0x54544f47
   138d0:	45 4e 5f 46          	dd     0x465f4e45
   138d4:	41 54 48 45          	dd     0x45485441
   138d8:	52 5f 53 5f          	dd     0x5f535f52
   138dc:	53 49 47 4e          	dd     0x4e474953
   138e0:	41 54 55 52          	dd     0x52555441
   138e4:	45 00 00 00          	dd     0x00000045
   138e8:	00 00 00 00          	dd     0x00000000
   138ec:	b0 82 02 00          	dd     @obj1:GOTTEN_FATHER_S_SIGNATURE                              ; fixup: num: 21461, src obj: 3, src ofs: 0x138ec, dst obj: 1, dst ofs: 0x282b0
   138f0:	4d 49 44 47          	dd     0x4744494d
   138f4:	41 4d 45 5f          	dd     0x5f454d41
   138f8:	4f 4e 45 5f          	dd     0x5f454e4f
   138fc:	50 4c 41 59          	dd     0x59414c50
   13900:	45 44 00 00          	dd     0x00004445
   13904:	00 00 00 00 00 00 .. 	dd     3 dup(0x00000000)
   13910:	c0 82 02 00          	dd     @obj1:MIDGAME_ONE_PLAYED                                     ; fixup: num: 21460, src obj: 3, src ofs: 0x13910, dst obj: 1, dst ofs: 0x282c0
   13914:	4d 4f 59 4e          	dd     0x4e594f4d
   13918:	41 48 41 4e          	dd     0x4e414841
   1391c:	5f 53 41 49          	dd     0x4941535f
   13920:	44 5f 43 4f          	dd     0x4f435f44
   13924:	52 50 53 45          	dd     0x45535052
   13928:	5f 44 49 45          	dd     0x4549445f
   1392c:	44 5f 4f 00          	dd     0x004f5f44
   13930:	00 00 00 00          	dd     0x00000000
   13934:	d0 82 02 00          	dd     @obj1:MOYNAHAN_SAID_CORPSE_DIED_OF_NATURAL_CAUSES            ; fixup: num: 21468, src obj: 3, src ofs: 0x13934, dst obj: 1, dst ofs: 0x282d0
   13938:	4d 4f 59 4e          	dd     0x4e594f4d
   1393c:	41 48 41 4e          	dd     0x4e414841
   13940:	5f 53 41 49          	dd     0x4941535f
   13944:	44 5f 43 4f          	dd     0x4f435f44
   13948:	52 50 53 45          	dd     0x45535052
   1394c:	5f 49 53 5f          	dd     0x5f53495f
   13950:	41 5f 48 00          	dd     0x00485f41
   13954:	00 00 00 00          	dd     0x00000000
   13958:	e0 82 02 00          	dd     @obj1:MOYNAHAN_SAID_CORPSE_IS_A_HOBO                         ; fixup: num: 21467, src obj: 3, src ofs: 0x13958, dst obj: 1, dst ofs: 0x282e0
   1395c:	4d 4f 59 4e          	dd     0x4e594f4d
   13960:	41 48 41 4e          	dd     0x4e414841
   13964:	5f 53 41 49          	dd     0x4941535f
   13968:	44 5f 48 45          	dd     0x45485f44
   1396c:	5f 53 41 57          	dd     0x5741535f
   13970:	5f 50 4f 54          	dd     0x544f505f
   13974:	54 53 44 00          	dd     0x00445354
   13978:	00 00 00 00          	dd     0x00000000
   1397c:	f0 82 02 00          	dd     @obj1:MOYNAHAN_SAID_HE_SAW_POTTSDAM_AT_CEMETARY              ; fixup: num: 21466, src obj: 3, src ofs: 0x1397c, dst obj: 1, dst ofs: 0x282f0
   13980:	4d 4f 59 4e          	dd     0x4e594f4d
   13984:	41 48 41 4e          	dd     0x4e414841
   13988:	5f 54 4f 4c          	dd     0x4c4f545f
   1398c:	44 5f 59 4f          	dd     0x4f595f44
   13990:	55 5f 41 42          	dd     0x42415f55
   13994:	4f 55 54 5f          	dd     0x5f54554f
   13998:	43 4f 52 00          	dd     0x00524f43
   1399c:	00 00 00 00          	dd     0x00000000
   139a0:	00 83 02 00          	dd     @obj1:MOYNAHAN_TOLD_YOU_ABOUT_CORPSE_IN_MORTUARY             ; fixup: num: 21465, src obj: 3, src ofs: 0x139a0, dst obj: 1, dst ofs: 0x28300
   139a4:	50 43 5f 48          	dd     0x485f4350
   139a8:	45 41 52 44          	dd     0x44524145
   139ac:	5f 4f 46 5f          	dd     0x5f464f5f
   139b0:	4b 41 52 49          	dd     0x4952414b
   139b4:	4e 53 5f 4b          	dd     0x4b5f534e
   139b8:	49 44 4e 41          	dd     0x414e4449
   139bc:	50 50 49 4e          	dd     0x4e495050
   139c0:	47 00 00 00          	dd     0x00000047
   139c4:	50 82 02 00          	dd     @obj1:PC_HEARD_OF_KARINS_KIDNAPPING                          ; fixup: num: 21469, src obj: 3, src ofs: 0x139c4, dst obj: 1, dst ofs: 0x28250
   139c8:	53 45 45 4e          	dd     0x4e454553
   139cc:	5f 46 41 54          	dd     0x5441465f
   139d0:	48 45 52 00          	dd     0x00524548
   139d4:	00 00 00 00 00 00 .. 	dd     5 dup(0x00000000)
   139e8:	10 83 02 00          	dd     @obj1:SEEN_FATHER                                            ; fixup: num: 21474, src obj: 3, src ofs: 0x139e8, dst obj: 1, dst ofs: 0x28310
   139ec:	53 48 4f 57          	dd     0x574f4853
   139f0:	4e 5f 42 55          	dd     0x55425f4e
   139f4:	54 54 4f 4e          	dd     0x4e4f5454
   139f8:	5f 41 52 4f          	dd     0x4f52415f
   139fc:	55 4e 44 00          	dd     0x00444e55
   13a00:	00 00 00 00 00 00 .. 	dd     3 dup(0x00000000)
   13a0c:	20 83 02 00          	dd     @obj1:SHOWN_BUTTON_AROUND                                    ; fixup: num: 21473, src obj: 3, src ofs: 0x13a0c, dst obj: 1, dst ofs: 0x28320
   13a10:	53 48 4f 57          	dd     0x574f4853
   13a14:	4e 5f 45 56          	dd     0x56455f4e
   13a18:	49 44 45 4e          	dd     0x4e454449
   13a1c:	43 45 5f 4f          	dd     0x4f5f4543
   13a20:	46 5f 42 4c          	dd     0x4c425f46
   13a24:	41 43 4b 4d          	dd     0x4d4b4341
   13a28:	41 49 4c 00          	dd     0x004c4941
   13a2c:	00 00 00 00          	dd     0x00000000
   13a30:	30 83 02 00          	dd     @obj1:SHOWN_EVIDENCE_OF_BLACKMAIL_AROUND                     ; fixup: num: 21472, src obj: 3, src ofs: 0x13a30, dst obj: 1, dst ofs: 0x28330
   13a34:	53 48 4f 57          	dd     0x574f4853
   13a38:	4e 5f 45 56          	dd     0x56455f4e
   13a3c:	49 44 45 4e          	dd     0x4e454449
   13a40:	43 45 5f 53          	dd     0x535f4543
   13a44:	48 45 52 49          	dd     0x49524548
   13a48:	46 46 5f 4f          	dd     0x4f5f4646
   13a4c:	57 4e 53 00          	dd     0x00534e57
   13a50:	00 00 00 00          	dd     0x00000000
   13a54:	40 83 02 00          	dd     @obj1:SHOWN_EVIDENCE_SHERIFF_OWNS_TV_STATION_AROUND          ; fixup: num: 21471, src obj: 3, src ofs: 0x13a54, dst obj: 1, dst ofs: 0x28340
   13a58:	53 48 4f 57          	dd     0x574f4853
   13a5c:	4e 5f 4c 45          	dd     0x454c5f4e
   13a60:	44 47 45 52          	dd     0x52454744
   13a64:	53 5f 54 4f          	dd     0x4f545f53
   13a68:	5f 41 4e 59          	dd     0x594e415f
   13a6c:	4f 4e 45 5f          	dd     0x5f454e4f
   13a70:	4f 54 48 00          	dd     0x0048544f
   13a74:	00 00 00 00          	dd     0x00000000
   13a78:	50 83 02 00          	dd     @obj1:SHOWN_LEDGERS_TO_ANYONE_OTHER_THAN_SHERIFF             ; fixup: num: 21470, src obj: 3, src ofs: 0x13a78, dst obj: 1, dst ofs: 0x28350
   13a7c:	53 48 4f 57          	dd     0x574f4853
   13a80:	4e 5f 50 48          	dd     0x48505f4e
   13a84:	4f 54 4f 5f          	dd     0x5f4f544f
   13a88:	4f 46 5f 43          	dd     0x435f464f
   13a8c:	4f 52 50 53          	dd     0x5350524f
   13a90:	45 5f 41 52          	dd     0x52415f45
   13a94:	4f 55 4e 00          	dd     0x004e554f
   13a98:	00 00 00 00          	dd     0x00000000
   13a9c:	60 83 02 00          	dd     @obj1:SHOWN_PHOTO_OF_CORPSE_AROUND                           ; fixup: num: 21478, src obj: 3, src ofs: 0x13a9c, dst obj: 1, dst ofs: 0x28360
   13aa0:	53 48 4f 57          	dd     0x574f4853
   13aa4:	4e 5f 50 48          	dd     0x48505f4e
   13aa8:	4f 54 4f 5f          	dd     0x5f4f544f
   13aac:	4f 46 5f 57          	dd     0x575f464f
   13ab0:	48 41 4c 45          	dd     0x454c4148
   13ab4:	59 5f 48 45          	dd     0x45485f59
   13ab8:	52 52 49 00          	dd     0x00495252
   13abc:	00 00 00 00          	dd     0x00000000
   13ac0:	70 83 02 00          	dd     @obj1:SHOWN_PHOTO_OF_WHALEY_HERRILL_AROUND                   ; fixup: num: 21477, src obj: 3, src ofs: 0x13ac0, dst obj: 1, dst ofs: 0x28370
   13ac4:	53 48 4f 57          	dd     0x574f4853
   13ac8:	4e 5f 45 56          	dd     0x56455f4e
   13acc:	49 44 45 4e          	dd     0x4e454449
   13ad0:	43 45 5f 53          	dd     0x535f4543
   13ad4:	48 45 52 49          	dd     0x49524548
   13ad8:	46 46 5f 4f          	dd     0x4f5f4646
   13adc:	57 4e 53 00          	dd     0x00534e57
   13ae0:	00 00 00 00          	dd     0x00000000
   13ae4:	40 83 02 00          	dd     @obj1:SHOWN_EVIDENCE_SHERIFF_OWNS_TV_STATION_AROUND          ; fixup: num: 21476, src obj: 3, src ofs: 0x13ae4, dst obj: 1, dst ofs: 0x28340
   13ae8:	53 48 4f 57          	dd     0x574f4853
   13aec:	5f 53 48 45          	dd     0x4548535f
   13af0:	52 49 46 46          	dd     0x46464952
   13af4:	5f 4b 41 52          	dd     0x52414b5f
   13af8:	49 4e 5f 53          	dd     0x535f4e49
   13afc:	5f 50 55 52          	dd     0x5255505f
   13b00:	53 45 00 00          	dd     0x00004553
   13b04:	00 00 00 00          	dd     0x00000000
   13b08:	90 83 02 00          	dd     @obj1:SHOW_SHERIFF_KARIN_S_PURSE                             ; fixup: num: 21475, src obj: 3, src ofs: 0x13b08, dst obj: 1, dst ofs: 0x28390
   13b0c:	53 50 4f 4b          	dd     0x4b4f5053
   13b10:	45 4e 5f 57          	dd     0x575f4e45
   13b14:	49 54 48 5f          	dd     0x5f485449
   13b18:	4d 4f 4d 00          	dd     0x004d4f4d
   13b1c:	00 00 00 00 00 00 .. 	dd     4 dup(0x00000000)
   13b2c:	a0 83 02 00          	dd     @obj1:SPOKEN_WITH_MOM                                        ; fixup: num: 21482, src obj: 3, src ofs: 0x13b2c, dst obj: 1, dst ofs: 0x283a0
   13b30:	53 50 4f 4b          	dd     0x4b4f5053
   13b34:	45 5f 54 4f          	dd     0x4f545f45
   13b38:	5f 4d 4f 4d          	dd     0x4d4f4d5f
   13b3c:	5f 41 42 4f          	dd     0x4f42415f
   13b40:	55 54 5f 44          	dd     0x445f5455
   13b44:	41 44 00 00          	dd     0x00004441
   13b48:	00 00 00 00 00 00 .. 	dd     2 dup(0x00000000)
   13b50:	b0 83 02 00          	dd     @obj1:SPOKE_TO_MOM_ABOUT_DAD                                 ; fixup: num: 21481, src obj: 3, src ofs: 0x13b50, dst obj: 1, dst ofs: 0x283b0
   13b54:	54 41 4c 4b          	dd     0x4b4c4154
   13b58:	45 44 5f 54          	dd     0x545f4445
   13b5c:	4f 5f 4d 52          	dd     0x524d5f4f
   13b60:	5f 4d 4f 59          	dd     0x594f4d5f
   13b64:	4e 41 48 41          	dd     0x4148414e
   13b68:	4e 5f 41 42          	dd     0x42415f4e
   13b6c:	4f 55 54 00          	dd     0x0054554f
   13b70:	00 00 00 00          	dd     0x00000000
   13b74:	c0 83 02 00          	dd     @obj1:TALKED_TO_MR_MOYNAHAN_ABOUT_BAKE_SALE                  ; fixup: num: 21480, src obj: 3, src ofs: 0x13b74, dst obj: 1, dst ofs: 0x283c0
   13b78:	54 55 52 4e          	dd     0x4e525554
   13b7c:	45 44 5f 49          	dd     0x495f4445
   13b80:	4e 5f 41 50          	dd     0x50415f4e
   13b84:	50 4c 49 43          	dd     0x43494c50
   13b88:	41 54 49 4f          	dd     0x4f495441
   13b8c:	4e 00 00 00          	dd     0x0000004e
   13b90:	00 00 00 00 00 00 .. 	dd     2 dup(0x00000000)
   13b98:	d0 83 02 00          	dd     @obj1:TURNED_IN_APPLICATION                                  ; fixup: num: 21479, src obj: 3, src ofs: 0x13b98, dst obj: 1, dst ofs: 0x283d0
   13b9c:	00 00 00 00 00 00 .. 	dd     9 dup(0x00000000)

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 65 (D:\SOURCE\dialog.cpp)                                     -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 65: D:\SOURCE\dialog.cpp                                             -
;                                                                              -
;-------------------------------------------------------------------------------
common_str:                                                                                         ; access size: DWORD
   22f84:	00 00 00 00          	dd     0x00000000

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 65 (D:\SOURCE\dialog.cpp)                                     -
;                                                                              -
;-------------------------------------------------------------------------------