;-------------------------------------------------------------------------------
;                                                                              -
;  Module 75: D:\SOURCE\btmap.cpp                                              -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function 'btmap_cpp_'                         -
;-------------------------------------------------
btmap_cpp_:
   3ab00:	b8 e8 98 00 00       	mov    eax,@obj3:btmap_cpp_variable_1                               ; fixup: num: 10526, src obj: 1, src ofs: 0x3ab01, dst obj: 3, dst ofs: 0x98e8
   3ab05:	e9 65 65 03 00       	jmp    puts_
   3ab0a:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'W?$ct:BTMAP$n(pna)_'                -
;-------------------------------------------------
W?$ct:BTMAP$n(pna)_:
   3ab10:	c7 40 20 00 00 00 00 	mov    DWORD PTR [eax+0x20],0x0
   3ab17:	db 40 20             	fild   DWORD PTR [eax+0x20]
   3ab1a:	d9 50 1c             	fst    DWORD PTR [eax+0x1c]
   3ab1d:	e8 26 b2 03 00       	call   __CHP
   3ab22:	db 58 40             	fistp  DWORD PTR [eax+0x40]
   3ab25:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
   3ab2b:	c7 40 44 00 00 00 00 	mov    DWORD PTR [eax+0x44],0x0
   3ab32:	c7 40 28 00 00 00 00 	mov    DWORD PTR [eax+0x28],0x0
   3ab39:	c7 40 30 00 00 00 00 	mov    DWORD PTR [eax+0x30],0x0
   3ab40:	c6 40 0c 00          	mov    BYTE PTR [eax+0xc],0x0
   3ab44:	c6 40 08 00          	mov    BYTE PTR [eax+0x8],0x0
   3ab48:	c7 40 14 00 00 00 00 	mov    DWORD PTR [eax+0x14],0x0
   3ab4f:	89 50 10             	mov    DWORD PTR [eax+0x10],edx
   3ab52:	8b 50 40             	mov    edx,DWORD PTR [eax+0x40]
   3ab55:	89 50 3c             	mov    DWORD PTR [eax+0x3c],edx
   3ab58:	8b 10                	mov    edx,DWORD PTR [eax]
   3ab5a:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
   3ab5d:	8b 50 44             	mov    edx,DWORD PTR [eax+0x44]
   3ab60:	89 50 48             	mov    DWORD PTR [eax+0x48],edx
   3ab63:	8b 50 28             	mov    edx,DWORD PTR [eax+0x28]
   3ab66:	89 50 24             	mov    DWORD PTR [eax+0x24],edx
   3ab69:	8b 50 30             	mov    edx,DWORD PTR [eax+0x30]
   3ab6c:	89 50 2c             	mov    DWORD PTR [eax+0x2c],edx
   3ab6f:	c3                   	ret    

;-------------------------------------------------
;  Function 'W?$ct:BTMAP$n(pnaiibipna)_'         -
;-------------------------------------------------
W?$ct:BTMAP$n(pnaiibipna)_:
   3ab70:	c7 40 04 00 00 00 00 	mov    DWORD PTR [eax+0x4],0x0
   3ab77:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
   3ab7d:	c7 40 44 00 00 00 00 	mov    DWORD PTR [eax+0x44],0x0
   3ab84:	c7 40 38 00 00 00 00 	mov    DWORD PTR [eax+0x38],0x0
   3ab8b:	c7 40 28 00 00 00 00 	mov    DWORD PTR [eax+0x28],0x0
   3ab92:	c6 40 08 01          	mov    BYTE PTR [eax+0x8],0x1
   3ab96:	c6 40 0a 00          	mov    BYTE PTR [eax+0xa],0x0
   3ab9a:	c7 40 2c 00 00 00 00 	mov    DWORD PTR [eax+0x2c],0x0
   3aba1:	c7 40 30 00 00 00 00 	mov    DWORD PTR [eax+0x30],0x0
   3aba8:	c6 40 0c 00          	mov    BYTE PTR [eax+0xc],0x0
   3abac:	89 50 10             	mov    DWORD PTR [eax+0x10],edx
   3abaf:	89 58 3c             	mov    DWORD PTR [eax+0x3c],ebx
   3abb2:	89 48 40             	mov    DWORD PTR [eax+0x40],ecx
   3abb5:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
   3abb9:	89 50 1c             	mov    DWORD PTR [eax+0x1c],edx
   3abbc:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
   3abc0:	89 50 20             	mov    DWORD PTR [eax+0x20],edx
   3abc3:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
   3abc7:	89 50 14             	mov    DWORD PTR [eax+0x14],edx
   3abca:	8b 50 44             	mov    edx,DWORD PTR [eax+0x44]
   3abcd:	89 50 48             	mov    DWORD PTR [eax+0x48],edx
   3abd0:	8b 50 28             	mov    edx,DWORD PTR [eax+0x28]
   3abd3:	89 50 24             	mov    DWORD PTR [eax+0x24],edx
   3abd6:	c2 0c 00             	ret    0xc
   3abd9:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   3abdf:	90                   	nop

;-------------------------------------------------
;  Function 'W?$ct:BTMAP$n(pnaiiiibi)_'          -
;-------------------------------------------------
W?$ct:BTMAP$n(pnaiiiibi)_:
   3abe0:	56                   	push   esi
   3abe1:	89 c6                	mov    esi,eax
   3abe3:	89 50 10             	mov    DWORD PTR [eax+0x10],edx
   3abe6:	89 58 3c             	mov    DWORD PTR [eax+0x3c],ebx
   3abe9:	89 48 40             	mov    DWORD PTR [eax+0x40],ecx
   3abec:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
   3abf0:	89 46 1c             	mov    DWORD PTR [esi+0x1c],eax
   3abf3:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
   3abf7:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
   3abfa:	b8 0c 00 00 00       	mov    eax,0xc
   3abff:	e8 8f 68 03 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   3ac04:	89 06                	mov    DWORD PTR [esi],eax
   3ac06:	85 c0                	test   eax,eax
   3ac08:	75 0f                	jne    W?$ct:BTMAP$n(pnaiiiibi)__branch_1
   3ac0a:	bb f2 98 00 00       	mov    ebx,@obj3:btmap_cpp_variable_2                               ; fixup: num: 10527, src obj: 1, src ofs: 0x3ac0b, dst obj: 3, dst ofs: 0x98f2
   3ac0f:	ba 53 00 00 00       	mov    edx,0x53
   3ac14:	e8 17 d4 ff ff       	call   _error_report
W?$ct:BTMAP$n(pnaiiiibi)__branch_1:
   3ac19:	8b 06                	mov    eax,DWORD PTR [esi]
   3ac1b:	c7 40 08 00 00 00 00 	mov    DWORD PTR [eax+0x8],0x0
   3ac22:	8b 06                	mov    eax,DWORD PTR [esi]
   3ac24:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
   3ac28:	89 10                	mov    DWORD PTR [eax],edx
   3ac2a:	8b 06                	mov    eax,DWORD PTR [esi]
   3ac2c:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
   3ac30:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
   3ac33:	8b 06                	mov    eax,DWORD PTR [esi]
   3ac35:	89 46 04             	mov    DWORD PTR [esi+0x4],eax
   3ac38:	8b 00                	mov    eax,DWORD PTR [eax]
   3ac3a:	89 46 2c             	mov    DWORD PTR [esi+0x2c],eax
   3ac3d:	8b 06                	mov    eax,DWORD PTR [esi]
   3ac3f:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
   3ac42:	c7 46 44 00 00 00 00 	mov    DWORD PTR [esi+0x44],0x0
   3ac49:	c7 46 38 16 00 00 00 	mov    DWORD PTR [esi+0x38],0x16
   3ac50:	c6 46 08 01          	mov    BYTE PTR [esi+0x8],0x1
   3ac54:	c7 46 28 00 00 00 00 	mov    DWORD PTR [esi+0x28],0x0
   3ac5b:	c6 46 0a 00          	mov    BYTE PTR [esi+0xa],0x0
   3ac5f:	c7 46 14 00 00 00 00 	mov    DWORD PTR [esi+0x14],0x0
   3ac66:	89 46 30             	mov    DWORD PTR [esi+0x30],eax
   3ac69:	8b 46 44             	mov    eax,DWORD PTR [esi+0x44]
   3ac6c:	89 46 48             	mov    DWORD PTR [esi+0x48],eax
   3ac6f:	8b 46 28             	mov    eax,DWORD PTR [esi+0x28]
   3ac72:	89 46 24             	mov    DWORD PTR [esi+0x24],eax
   3ac75:	89 f0                	mov    eax,esi
   3ac77:	5e                   	pop    esi
   3ac78:	c2 10 00             	ret    0x10
   3ac7b:	8d 40 00             	lea    eax,[eax+0x0]
   3ac7e:	8b c9                	mov    ecx,ecx

;-------------------------------------------------
;  Function                                      -
;  'W?$ct:BTMAP$n(pn$bitmap$$pnaiibi)_'          -
;-------------------------------------------------
W?$ct:BTMAP$n(pn$bitmap$$pnaiibi)_:
   3ac80:	c7 40 38 00 00 00 00 	mov    DWORD PTR [eax+0x38],0x0
   3ac87:	89 58 10             	mov    DWORD PTR [eax+0x10],ebx
   3ac8a:	89 48 3c             	mov    DWORD PTR [eax+0x3c],ecx
   3ac8d:	89 10                	mov    DWORD PTR [eax],edx
   3ac8f:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
   3ac92:	8b 5c 24 04          	mov    ebx,DWORD PTR [esp+0x4]
   3ac96:	89 58 40             	mov    DWORD PTR [eax+0x40],ebx
   3ac99:	8b 5c 24 08          	mov    ebx,DWORD PTR [esp+0x8]
   3ac9d:	89 58 1c             	mov    DWORD PTR [eax+0x1c],ebx
   3aca0:	8b 5c 24 0c          	mov    ebx,DWORD PTR [esp+0xc]
   3aca4:	89 58 20             	mov    DWORD PTR [eax+0x20],ebx
   3aca7:	8b 12                	mov    edx,DWORD PTR [edx]
   3aca9:	89 50 2c             	mov    DWORD PTR [eax+0x2c],edx
   3acac:	8b 10                	mov    edx,DWORD PTR [eax]
   3acae:	8b 52 04             	mov    edx,DWORD PTR [edx+0x4]
   3acb1:	c7 40 28 00 00 00 00 	mov    DWORD PTR [eax+0x28],0x0
   3acb8:	c6 40 0a 00          	mov    BYTE PTR [eax+0xa],0x0
   3acbc:	c6 40 0c 00          	mov    BYTE PTR [eax+0xc],0x0
   3acc0:	c7 40 44 00 00 00 00 	mov    DWORD PTR [eax+0x44],0x0
   3acc7:	c7 40 14 00 00 00 00 	mov    DWORD PTR [eax+0x14],0x0
   3acce:	89 50 30             	mov    DWORD PTR [eax+0x30],edx
   3acd1:	8b 50 28             	mov    edx,DWORD PTR [eax+0x28]
   3acd4:	89 50 24             	mov    DWORD PTR [eax+0x24],edx
   3acd7:	8b 50 44             	mov    edx,DWORD PTR [eax+0x44]
   3acda:	89 50 48             	mov    DWORD PTR [eax+0x48],edx
   3acdd:	c2 0c 00             	ret    0xc

;-------------------------------------------------
;  Function 'W?$ct:BTMAP$n(pnapnaiibiucucpn(ui)  -
;  pnvpnuc)_'                                    -
;-------------------------------------------------
W?$ct:BTMAP$n(pnapnaiibiucucpn(ui)pnvpnuc)_:
   3ace0:	56                   	push   esi
   3ace1:	57                   	push   edi
   3ace2:	55                   	push   ebp
   3ace3:	83 ec 08             	sub    esp,0x8
   3ace6:	89 c5                	mov    ebp,eax
   3ace8:	89 d7                	mov    edi,edx
   3acea:	c7 40 38 00 00 00 00 	mov    DWORD PTR [eax+0x38],0x0
   3acf1:	89 58 10             	mov    DWORD PTR [eax+0x10],ebx
   3acf4:	89 48 3c             	mov    DWORD PTR [eax+0x3c],ecx
   3acf7:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
   3acfb:	89 45 40             	mov    DWORD PTR [ebp+0x40],eax
   3acfe:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
   3ad02:	89 45 1c             	mov    DWORD PTR [ebp+0x1c],eax
   3ad05:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
   3ad09:	8b 54 24 30          	mov    edx,DWORD PTR [esp+0x30]
   3ad0d:	89 45 20             	mov    DWORD PTR [ebp+0x20],eax
   3ad10:	85 d2                	test   edx,edx
   3ad12:	0f 85 c6 00 00 00    	jne    W?$ct:BTMAP$n(pnapnaiibiucucpn(ui)pnvpnuc)__branch_4
   3ad18:	b8 0c 00 00 00       	mov    eax,0xc
   3ad1d:	e8 71 67 03 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   3ad22:	89 45 00             	mov    DWORD PTR [ebp+0x0],eax
   3ad25:	85 c0                	test   eax,eax
   3ad27:	75 0f                	jne    W?$ct:BTMAP$n(pnapnaiibiucucpn(ui)pnvpnuc)__branch_1
   3ad29:	bb 0a 99 00 00       	mov    ebx,@obj3:btmap_cpp_variable_3                               ; fixup: num: 10533, src obj: 1, src ofs: 0x3ad2a, dst obj: 3, dst ofs: 0x990a
   3ad2e:	ba 8e 00 00 00       	mov    edx,0x8e
   3ad33:	e8 f8 d2 ff ff       	call   _error_report
W?$ct:BTMAP$n(pnapnaiibiucucpn(ui)pnvpnuc)__branch_1:
   3ad38:	b9 8f 00 00 00       	mov    ecx,0x8f
   3ad3d:	bb 22 99 00 00       	mov    ebx,@obj3:btmap_cpp_variable_4                               ; fixup: num: 10532, src obj: 1, src ofs: 0x3ad3e, dst obj: 3, dst ofs: 0x9922
   3ad42:	89 f8                	mov    eax,edi
   3ad44:	31 d2                	xor    edx,edx
   3ad46:	e8 95 20 fd ff       	call   XFILE_read2
   3ad4b:	89 04 24             	mov    DWORD PTR [esp],eax
   3ad4e:	89 c6                	mov    esi,eax
   3ad50:	85 c0                	test   eax,eax
   3ad52:	75 24                	jne    W?$ct:BTMAP$n(pnapnaiibiucucpn(ui)pnvpnuc)__branch_2
   3ad54:	57                   	push   edi
   3ad55:	68 2c 99 00 00       	push   @obj3:btmap_cpp_variable_5                                   ; fixup: num: 10531, src obj: 1, src ofs: 0x3ad56, dst obj: 3, dst ofs: 0x992c
   3ad5a:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 10530, src obj: 1, src ofs: 0x3ad5b, dst obj: 3, dst ofs: 0x237fc
   3ad5f:	bb fc 37 02 00       	mov    ebx,@obj3:log_buffer                                         ; fixup: num: 10529, src obj: 1, src ofs: 0x3ad60, dst obj: 3, dst ofs: 0x237fc
   3ad64:	e8 78 5e 03 00       	call   sprintf_
   3ad69:	83 c4 0c             	add    esp,0xc
   3ad6c:	ba 93 00 00 00       	mov    edx,0x93
   3ad71:	31 c0                	xor    eax,eax
   3ad73:	e8 b8 d2 ff ff       	call   _error_report
W?$ct:BTMAP$n(pnapnaiibiucucpn(ui)pnvpnuc)__branch_2:
   3ad78:	8b 45 00             	mov    eax,DWORD PTR [ebp+0x0]
   3ad7b:	8b 1e                	mov    ebx,DWORD PTR [esi]
   3ad7d:	89 18                	mov    DWORD PTR [eax],ebx
   3ad7f:	8b 45 00             	mov    eax,DWORD PTR [ebp+0x0]
   3ad82:	8b 5e 04             	mov    ebx,DWORD PTR [esi+0x4]
   3ad85:	89 58 04             	mov    DWORD PTR [eax+0x4],ebx
   3ad88:	8b 4d 00             	mov    ecx,DWORD PTR [ebp+0x0]
   3ad8b:	8b 01                	mov    eax,DWORD PTR [ecx]
   3ad8d:	0f af 41 04          	imul   eax,DWORD PTR [ecx+0x4]
   3ad91:	e8 fd 66 03 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   3ad96:	8b 5d 00             	mov    ebx,DWORD PTR [ebp+0x0]
   3ad99:	89 43 08             	mov    DWORD PTR [ebx+0x8],eax
   3ad9c:	8b 45 00             	mov    eax,DWORD PTR [ebp+0x0]
   3ad9f:	83 c6 0c             	add    esi,0xc
   3ada2:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
   3ada5:	85 d2                	test   edx,edx
   3ada7:	75 11                	jne    W?$ct:BTMAP$n(pnapnaiibiucucpn(ui)pnvpnuc)__branch_3
   3ada9:	bb 43 99 00 00       	mov    ebx,@obj3:btmap_cpp_variable_6                               ; fixup: num: 10528, src obj: 1, src ofs: 0x3adaa, dst obj: 3, dst ofs: 0x9943
   3adae:	ba a1 00 00 00       	mov    edx,0xa1
   3adb3:	31 c0                	xor    eax,eax
   3adb5:	e8 76 d2 ff ff       	call   _error_report
W?$ct:BTMAP$n(pnapnaiibiucucpn(ui)pnvpnuc)__branch_3:
   3adba:	8b 45 00             	mov    eax,DWORD PTR [ebp+0x0]
   3adbd:	8b 08                	mov    ecx,DWORD PTR [eax]
   3adbf:	0f af 48 04          	imul   ecx,DWORD PTR [eax+0x4]
   3adc3:	8b 78 08             	mov    edi,DWORD PTR [eax+0x8]
   3adc6:	57                   	push   edi
   3adc7:	89 c8                	mov    eax,ecx
   3adc9:	c1 e9 02             	shr    ecx,0x2
   3adcc:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
   3adce:	8a c8                	mov    cl,al
   3add0:	80 e1 03             	and    cl,0x3
   3add3:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
   3add5:	5f                   	pop    edi
   3add6:	8b 04 24             	mov    eax,DWORD PTR [esp]
   3add9:	e9 a0 00 00 00       	jmp    W?$ct:BTMAP$n(pnapnaiibiucucpn(ui)pnvpnuc)__branch_7
W?$ct:BTMAP$n(pnapnaiibiucucpn(ui)pnvpnuc)__branch_4:
   3adde:	b8 0c 00 00 00       	mov    eax,0xc
   3ade3:	e8 ab 66 03 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   3ade8:	89 45 00             	mov    DWORD PTR [ebp+0x0],eax
   3adeb:	85 c0                	test   eax,eax
   3aded:	75 0f                	jne    W?$ct:BTMAP$n(pnapnaiibiucucpn(ui)pnvpnuc)__branch_5
   3adef:	bb 5b 99 00 00       	mov    ebx,@obj3:btmap_cpp_variable_7                               ; fixup: num: 10538, src obj: 1, src ofs: 0x3adf0, dst obj: 3, dst ofs: 0x995b
   3adf4:	ba aa 00 00 00       	mov    edx,0xaa
   3adf9:	e8 32 d2 ff ff       	call   _error_report
W?$ct:BTMAP$n(pnapnaiibiucucpn(ui)pnvpnuc)__branch_5:
   3adfe:	b9 ac 00 00 00       	mov    ecx,0xac
   3ae03:	bb 73 99 00 00       	mov    ebx,@obj3:btmap_cpp_variable_8                               ; fixup: num: 10537, src obj: 1, src ofs: 0x3ae04, dst obj: 3, dst ofs: 0x9973
   3ae08:	89 f8                	mov    eax,edi
   3ae0a:	31 d2                	xor    edx,edx
   3ae0c:	e8 cf 1f fd ff       	call   XFILE_read2
   3ae11:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
   3ae15:	89 c6                	mov    esi,eax
   3ae17:	85 c0                	test   eax,eax
   3ae19:	75 24                	jne    W?$ct:BTMAP$n(pnapnaiibiucucpn(ui)pnvpnuc)__branch_6
   3ae1b:	57                   	push   edi
   3ae1c:	68 7d 99 00 00       	push   @obj3:btmap_cpp_variable_9                                   ; fixup: num: 10536, src obj: 1, src ofs: 0x3ae1d, dst obj: 3, dst ofs: 0x997d
   3ae21:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 10535, src obj: 1, src ofs: 0x3ae22, dst obj: 3, dst ofs: 0x237fc
   3ae26:	bb fc 37 02 00       	mov    ebx,@obj3:log_buffer                                         ; fixup: num: 10534, src obj: 1, src ofs: 0x3ae27, dst obj: 3, dst ofs: 0x237fc
   3ae2b:	e8 b1 5d 03 00       	call   sprintf_
   3ae30:	83 c4 0c             	add    esp,0xc
   3ae33:	ba b0 00 00 00       	mov    edx,0xb0
   3ae38:	31 c0                	xor    eax,eax
   3ae3a:	e8 f1 d1 ff ff       	call   _error_report
W?$ct:BTMAP$n(pnapnaiibiucucpn(ui)pnvpnuc)__branch_6:
   3ae3f:	8b 5d 00             	mov    ebx,DWORD PTR [ebp+0x0]
   3ae42:	8b 06                	mov    eax,DWORD PTR [esi]
   3ae44:	89 03                	mov    DWORD PTR [ebx],eax
   3ae46:	8b 45 00             	mov    eax,DWORD PTR [ebp+0x0]
   3ae49:	8b 5e 04             	mov    ebx,DWORD PTR [esi+0x4]
   3ae4c:	89 58 04             	mov    DWORD PTR [eax+0x4],ebx
   3ae4f:	8b 45 00             	mov    eax,DWORD PTR [ebp+0x0]
   3ae52:	8b 5c 24 30          	mov    ebx,DWORD PTR [esp+0x30]
   3ae56:	89 58 08             	mov    DWORD PTR [eax+0x8],ebx
   3ae59:	8b 7d 00             	mov    edi,DWORD PTR [ebp+0x0]
   3ae5c:	8b 07                	mov    eax,DWORD PTR [edi]
   3ae5e:	8b 4f 04             	mov    ecx,DWORD PTR [edi+0x4]
   3ae61:	0f af c8             	imul   ecx,eax
   3ae64:	83 c6 0c             	add    esi,0xc
   3ae67:	8b 7f 08             	mov    edi,DWORD PTR [edi+0x8]
   3ae6a:	57                   	push   edi
   3ae6b:	89 c8                	mov    eax,ecx
   3ae6d:	c1 e9 02             	shr    ecx,0x2
   3ae70:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
   3ae72:	8a c8                	mov    cl,al
   3ae74:	80 e1 03             	and    cl,0x3
   3ae77:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
   3ae79:	5f                   	pop    edi
   3ae7a:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
W?$ct:BTMAP$n(pnapnaiibiucucpn(ui)pnvpnuc)__branch_7:
   3ae7e:	e8 65 65 03 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   3ae83:	8b 45 00             	mov    eax,DWORD PTR [ebp+0x0]
   3ae86:	89 45 04             	mov    DWORD PTR [ebp+0x4],eax
   3ae89:	8b 00                	mov    eax,DWORD PTR [eax]
   3ae8b:	89 45 2c             	mov    DWORD PTR [ebp+0x2c],eax
   3ae8e:	8b 45 00             	mov    eax,DWORD PTR [ebp+0x0]
   3ae91:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
   3ae94:	c7 45 44 00 00 00 00 	mov    DWORD PTR [ebp+0x44],0x0
   3ae9b:	c7 45 28 00 00 00 00 	mov    DWORD PTR [ebp+0x28],0x0
   3aea2:	c6 45 0c 00          	mov    BYTE PTR [ebp+0xc],0x0
   3aea6:	c6 45 08 01          	mov    BYTE PTR [ebp+0x8],0x1
   3aeaa:	c6 45 0a 00          	mov    BYTE PTR [ebp+0xa],0x0
   3aeae:	c7 45 14 00 00 00 00 	mov    DWORD PTR [ebp+0x14],0x0
   3aeb5:	89 45 30             	mov    DWORD PTR [ebp+0x30],eax
   3aeb8:	8b 45 44             	mov    eax,DWORD PTR [ebp+0x44]
   3aebb:	89 45 48             	mov    DWORD PTR [ebp+0x48],eax
   3aebe:	8b 45 28             	mov    eax,DWORD PTR [ebp+0x28]
   3aec1:	89 45 24             	mov    DWORD PTR [ebp+0x24],eax
   3aec4:	8a 44 24 28          	mov    al,BYTE PTR [esp+0x28]
   3aec8:	88 45 0b             	mov    BYTE PTR [ebp+0xb],al
   3aecb:	89 e8                	mov    eax,ebp
   3aecd:	83 c4 08             	add    esp,0x8
   3aed0:	5d                   	pop    ebp
   3aed1:	5f                   	pop    edi
   3aed2:	5e                   	pop    esi
   3aed3:	c2 1c 00             	ret    0x1c
   3aed6:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   3aedc:	8d 54 22 00          	lea    edx,[edx+eiz*1+0x0]

;-------------------------------------------------
;  Function 'W?$ct:BTMAP$n(pn$_object_type$$)_'  -
;-------------------------------------------------
W?$ct:BTMAP$n(pn$_object_type$$)_:
   3aee0:	53                   	push   ebx
   3aee1:	51                   	push   ecx
   3aee2:	56                   	push   esi
   3aee3:	57                   	push   edi
   3aee4:	55                   	push   ebp
   3aee5:	83 ec 0c             	sub    esp,0xc
   3aee8:	89 c5                	mov    ebp,eax
   3aeea:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
   3aeee:	85 d2                	test   edx,edx
   3aef0:	75 11                	jne    W?$ct:BTMAP$n(pn$_object_type$$)__branch_1
   3aef2:	bb 94 99 00 00       	mov    ebx,@obj3:btmap_cpp_variable_10                              ; fixup: num: 10539, src obj: 1, src ofs: 0x3aef3, dst obj: 3, dst ofs: 0x9994
   3aef7:	ba e3 00 00 00       	mov    edx,0xe3
   3aefc:	31 c0                	xor    eax,eax
   3aefe:	e8 2d d1 ff ff       	call   _error_report
W?$ct:BTMAP$n(pn$_object_type$$)__branch_1:
   3af03:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
   3af07:	8b 40 30             	mov    eax,DWORD PTR [eax+0x30]
   3af0a:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
   3af0d:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
   3af11:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
   3af14:	89 45 3c             	mov    DWORD PTR [ebp+0x3c],eax
   3af17:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
   3af1b:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
   3af1e:	89 45 40             	mov    DWORD PTR [ebp+0x40],eax
   3af21:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
   3af25:	db 40 14             	fild   DWORD PTR [eax+0x14]
   3af28:	d9 5d 1c             	fstp   DWORD PTR [ebp+0x1c]
   3af2b:	8b 40 20             	mov    eax,DWORD PTR [eax+0x20]
   3af2e:	89 45 20             	mov    DWORD PTR [ebp+0x20],eax
   3af31:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
   3af35:	8b 40 50             	mov    eax,DWORD PTR [eax+0x50]
   3af38:	89 45 14             	mov    DWORD PTR [ebp+0x14],eax
   3af3b:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
   3af3f:	83 78 28 00          	cmp    DWORD PTR [eax+0x28],0x0
   3af43:	0f 85 c8 00 00 00    	jne    W?$ct:BTMAP$n(pn$_object_type$$)__branch_5
   3af49:	b8 0c 00 00 00       	mov    eax,0xc
   3af4e:	e8 40 65 03 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   3af53:	89 45 00             	mov    DWORD PTR [ebp+0x0],eax
   3af56:	85 c0                	test   eax,eax
   3af58:	75 0f                	jne    W?$ct:BTMAP$n(pn$_object_type$$)__branch_2
   3af5a:	bb b4 99 00 00       	mov    ebx,@obj3:btmap_cpp_variable_11                              ; fixup: num: 10540, src obj: 1, src ofs: 0x3af5b, dst obj: 3, dst ofs: 0x99b4
   3af5f:	ba f1 00 00 00       	mov    edx,0xf1
   3af64:	e8 c7 d0 ff ff       	call   _error_report
W?$ct:BTMAP$n(pn$_object_type$$)__branch_2:
   3af69:	8b 45 00             	mov    eax,DWORD PTR [ebp+0x0]
   3af6c:	c7 40 08 00 00 00 00 	mov    DWORD PTR [eax+0x8],0x0
   3af73:	8b 45 00             	mov    eax,DWORD PTR [ebp+0x0]
   3af76:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
   3af7a:	89 45 04             	mov    DWORD PTR [ebp+0x4],eax
   3af7d:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
   3af81:	8b 4a 0c             	mov    ecx,DWORD PTR [edx+0xc]
   3af84:	8b 40 18             	mov    eax,DWORD PTR [eax+0x18]
   3af87:	8b 55 00             	mov    edx,DWORD PTR [ebp+0x0]
   3af8a:	29 c8                	sub    eax,ecx
   3af8c:	89 02                	mov    DWORD PTR [edx],eax
   3af8e:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
   3af92:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
   3af96:	8b 40 1c             	mov    eax,DWORD PTR [eax+0x1c]
   3af99:	8b 72 10             	mov    esi,DWORD PTR [edx+0x10]
   3af9c:	8b 55 00             	mov    edx,DWORD PTR [ebp+0x0]
   3af9f:	29 f0                	sub    eax,esi
   3afa1:	89 42 04             	mov    DWORD PTR [edx+0x4],eax
   3afa4:	8b 7d 10             	mov    edi,DWORD PTR [ebp+0x10]
   3afa7:	c6 45 09 00          	mov    BYTE PTR [ebp+0x9],0x0
   3afab:	85 ff                	test   edi,edi
   3afad:	75 10                	jne    W?$ct:BTMAP$n(pn$_object_type$$)__branch_3
   3afaf:	c7 45 38 16 00 00 00 	mov    DWORD PTR [ebp+0x38],0x16
   3afb6:	c6 45 08 01          	mov    BYTE PTR [ebp+0x8],0x1
   3afba:	e9 cc 02 00 00       	jmp    W?$ct:BTMAP$n(pn$_object_type$$)__branch_17
W?$ct:BTMAP$n(pn$_object_type$$)__branch_3:
   3afbf:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
   3afc3:	83 78 40 00          	cmp    DWORD PTR [eax+0x40],0x0
   3afc7:	75 38                	jne    W?$ct:BTMAP$n(pn$_object_type$$)__branch_4
   3afc9:	83 78 44 00          	cmp    DWORD PTR [eax+0x44],0x0
   3afcd:	75 32                	jne    W?$ct:BTMAP$n(pn$_object_type$$)__branch_4
   3afcf:	83 78 34 00          	cmp    DWORD PTR [eax+0x34],0x0
   3afd3:	75 2c                	jne    W?$ct:BTMAP$n(pn$_object_type$$)__branch_4
   3afd5:	83 78 38 00          	cmp    DWORD PTR [eax+0x38],0x0
   3afd9:	75 26                	jne    W?$ct:BTMAP$n(pn$_object_type$$)__branch_4
   3afdb:	8b 7d 10             	mov    edi,DWORD PTR [ebp+0x10]
   3afde:	57                   	push   edi
   3afdf:	68 cc 99 00 00       	push   @obj3:btmap_cpp_variable_12                                  ; fixup: num: 10542, src obj: 1, src ofs: 0x3afe0, dst obj: 3, dst ofs: 0x99cc
   3afe4:	c7 45 38 15 00 00 00 	mov    DWORD PTR [ebp+0x38],0x15
   3afeb:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 10541, src obj: 1, src ofs: 0x3afec, dst obj: 3, dst ofs: 0x237fc
   3aff0:	c6 45 08 00          	mov    BYTE PTR [ebp+0x8],0x0
   3aff4:	e8 e8 5b 03 00       	call   sprintf_
   3aff9:	83 c4 0c             	add    esp,0xc
   3affc:	e9 8a 02 00 00       	jmp    W?$ct:BTMAP$n(pn$_object_type$$)__branch_17
W?$ct:BTMAP$n(pn$_object_type$$)__branch_4:
   3b001:	c7 45 38 15 00 00 00 	mov    DWORD PTR [ebp+0x38],0x15
   3b008:	c6 45 08 00          	mov    BYTE PTR [ebp+0x8],0x0
   3b00c:	e9 7a 02 00 00       	jmp    W?$ct:BTMAP$n(pn$_object_type$$)__branch_17
W?$ct:BTMAP$n(pn$_object_type$$)__branch_5:
   3b011:	8b 48 2c             	mov    ecx,DWORD PTR [eax+0x2c]
   3b014:	85 c9                	test   ecx,ecx
   3b016:	0f 95 c0             	setne  al
   3b019:	88 45 09             	mov    BYTE PTR [ebp+0x9],al
   3b01c:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
   3b020:	83 78 2c 00          	cmp    DWORD PTR [eax+0x2c],0x0
   3b024:	74 4b                	je     W?$ct:BTMAP$n(pn$_object_type$$)__branch_6
   3b026:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
   3b02a:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
   3b02d:	3b 02                	cmp    eax,DWORD PTR [edx]
   3b02f:	0f 85 27 01 00 00    	jne    W?$ct:BTMAP$n(pn$_object_type$$)__branch_10
   3b035:	8b 42 10             	mov    eax,DWORD PTR [edx+0x10]
   3b038:	3b 42 04             	cmp    eax,DWORD PTR [edx+0x4]
   3b03b:	0f 85 1b 01 00 00    	jne    W?$ct:BTMAP$n(pn$_object_type$$)__branch_10
   3b041:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
   3b045:	8b 52 48             	mov    edx,DWORD PTR [edx+0x48]
   3b048:	8b 40 3c             	mov    eax,DWORD PTR [eax+0x3c]
   3b04b:	e8 e0 b3 03 00       	call   strcmp_
   3b050:	85 c0                	test   eax,eax
   3b052:	0f 85 04 01 00 00    	jne    W?$ct:BTMAP$n(pn$_object_type$$)__branch_10
   3b058:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
   3b05c:	ba fa 99 00 00       	mov    edx,@obj3:btmap_cpp_variable_13                              ; fixup: num: 10558, src obj: 1, src ofs: 0x3b05d, dst obj: 3, dst ofs: 0x99fa
   3b061:	8b 40 3c             	mov    eax,DWORD PTR [eax+0x3c]
   3b064:	e8 c7 b3 03 00       	call   strcmp_
   3b069:	85 c0                	test   eax,eax
   3b06b:	0f 84 eb 00 00 00    	je     W?$ct:BTMAP$n(pn$_object_type$$)__branch_10
W?$ct:BTMAP$n(pn$_object_type$$)__branch_6:
   3b071:	b8 0c 00 00 00       	mov    eax,0xc
   3b076:	e8 18 64 03 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   3b07b:	89 45 00             	mov    DWORD PTR [ebp+0x0],eax
   3b07e:	85 c0                	test   eax,eax
   3b080:	75 0f                	jne    W?$ct:BTMAP$n(pn$_object_type$$)__branch_7
   3b082:	bb 04 9a 00 00       	mov    ebx,@obj3:btmap_cpp_variable_14                              ; fixup: num: 10563, src obj: 1, src ofs: 0x3b083, dst obj: 3, dst ofs: 0x9a04
   3b087:	ba 59 01 00 00       	mov    edx,0x159
   3b08c:	e8 9f cf ff ff       	call   _error_report
W?$ct:BTMAP$n(pn$_object_type$$)__branch_7:
   3b091:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
   3b095:	b9 5a 01 00 00       	mov    ecx,0x15a
   3b09a:	bb 1c 9a 00 00       	mov    ebx,@obj3:btmap_cpp_variable_15                              ; fixup: num: 10562, src obj: 1, src ofs: 0x3b09b, dst obj: 3, dst ofs: 0x9a1c
   3b09f:	31 d2                	xor    edx,edx
   3b0a1:	8b 40 28             	mov    eax,DWORD PTR [eax+0x28]
   3b0a4:	e8 37 1d fd ff       	call   XFILE_read2
   3b0a9:	89 04 24             	mov    DWORD PTR [esp],eax
   3b0ac:	89 c6                	mov    esi,eax
   3b0ae:	85 c0                	test   eax,eax
   3b0b0:	75 2b                	jne    W?$ct:BTMAP$n(pn$_object_type$$)__branch_8
   3b0b2:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
   3b0b6:	8b 50 28             	mov    edx,DWORD PTR [eax+0x28]
   3b0b9:	52                   	push   edx
   3b0ba:	68 26 9a 00 00       	push   @obj3:btmap_cpp_variable_16                                  ; fixup: num: 10561, src obj: 1, src ofs: 0x3b0bb, dst obj: 3, dst ofs: 0x9a26
   3b0bf:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 10560, src obj: 1, src ofs: 0x3b0c0, dst obj: 3, dst ofs: 0x237fc
   3b0c4:	bb fc 37 02 00       	mov    ebx,@obj3:log_buffer                                         ; fixup: num: 10559, src obj: 1, src ofs: 0x3b0c5, dst obj: 3, dst ofs: 0x237fc
   3b0c9:	e8 13 5b 03 00       	call   sprintf_
   3b0ce:	83 c4 0c             	add    esp,0xc
   3b0d1:	ba 5e 01 00 00       	mov    edx,0x15e
   3b0d6:	31 c0                	xor    eax,eax
   3b0d8:	e8 53 cf ff ff       	call   _error_report
W?$ct:BTMAP$n(pn$_object_type$$)__branch_8:
   3b0dd:	8b 45 00             	mov    eax,DWORD PTR [ebp+0x0]
   3b0e0:	8b 16                	mov    edx,DWORD PTR [esi]
   3b0e2:	89 10                	mov    DWORD PTR [eax],edx
   3b0e4:	8b 45 00             	mov    eax,DWORD PTR [ebp+0x0]
   3b0e7:	8b 56 04             	mov    edx,DWORD PTR [esi+0x4]
   3b0ea:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
   3b0ed:	8b 55 00             	mov    edx,DWORD PTR [ebp+0x0]
   3b0f0:	8b 02                	mov    eax,DWORD PTR [edx]
   3b0f2:	0f af 42 04          	imul   eax,DWORD PTR [edx+0x4]
   3b0f6:	e8 98 63 03 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   3b0fb:	8b 55 00             	mov    edx,DWORD PTR [ebp+0x0]
   3b0fe:	89 42 08             	mov    DWORD PTR [edx+0x8],eax
   3b101:	8b 45 00             	mov    eax,DWORD PTR [ebp+0x0]
   3b104:	83 c6 0c             	add    esi,0xc
   3b107:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
   3b10a:	85 c9                	test   ecx,ecx
   3b10c:	75 2a                	jne    W?$ct:BTMAP$n(pn$_object_type$$)__branch_9
   3b10e:	8b 10                	mov    edx,DWORD PTR [eax]
   3b110:	0f af 50 04          	imul   edx,DWORD PTR [eax+0x4]
   3b114:	52                   	push   edx
   3b115:	68 3d 9a 00 00       	push   @obj3:btmap_cpp_variable_17                                  ; fixup: num: 10570, src obj: 1, src ofs: 0x3b116, dst obj: 3, dst ofs: 0x9a3d
   3b11a:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 10569, src obj: 1, src ofs: 0x3b11b, dst obj: 3, dst ofs: 0x237fc
   3b11f:	bb fc 37 02 00       	mov    ebx,@obj3:log_buffer                                         ; fixup: num: 10568, src obj: 1, src ofs: 0x3b120, dst obj: 3, dst ofs: 0x237fc
   3b124:	e8 b8 5a 03 00       	call   sprintf_
   3b129:	83 c4 0c             	add    esp,0xc
   3b12c:	ba 69 01 00 00       	mov    edx,0x169
   3b131:	31 c0                	xor    eax,eax
   3b133:	e8 f8 ce ff ff       	call   _error_report
W?$ct:BTMAP$n(pn$_object_type$$)__branch_9:
   3b138:	8b 55 00             	mov    edx,DWORD PTR [ebp+0x0]
   3b13b:	8b 0a                	mov    ecx,DWORD PTR [edx]
   3b13d:	0f af 4a 04          	imul   ecx,DWORD PTR [edx+0x4]
   3b141:	8b 7a 08             	mov    edi,DWORD PTR [edx+0x8]
   3b144:	57                   	push   edi
   3b145:	89 c8                	mov    eax,ecx
   3b147:	c1 e9 02             	shr    ecx,0x2
   3b14a:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
   3b14c:	8a c8                	mov    cl,al
   3b14e:	80 e1 03             	and    cl,0x3
   3b151:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
   3b153:	5f                   	pop    edi
   3b154:	8b 04 24             	mov    eax,DWORD PTR [esp]
   3b157:	e9 ed 00 00 00       	jmp    W?$ct:BTMAP$n(pn$_object_type$$)__branch_14
W?$ct:BTMAP$n(pn$_object_type$$)__branch_10:
   3b15c:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
   3b160:	8b 48 2c             	mov    ecx,DWORD PTR [eax+0x2c]
   3b163:	51                   	push   ecx
   3b164:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
   3b167:	56                   	push   esi
   3b168:	68 61 9a 00 00       	push   @obj3:btmap_cpp_variable_18                                  ; fixup: num: 10567, src obj: 1, src ofs: 0x3b169, dst obj: 3, dst ofs: 0x9a61
   3b16d:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 10566, src obj: 1, src ofs: 0x3b16e, dst obj: 3, dst ofs: 0x237fc
   3b172:	e8 6a 5a 03 00       	call   sprintf_
   3b177:	83 c4 10             	add    esp,0x10
   3b17a:	b8 0c 00 00 00       	mov    eax,0xc
   3b17f:	e8 0f 63 03 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   3b184:	89 45 00             	mov    DWORD PTR [ebp+0x0],eax
   3b187:	85 c0                	test   eax,eax
   3b189:	75 0f                	jne    W?$ct:BTMAP$n(pn$_object_type$$)__branch_11
   3b18b:	bb 7f 9a 00 00       	mov    ebx,@obj3:btmap_cpp_variable_19                              ; fixup: num: 10565, src obj: 1, src ofs: 0x3b18c, dst obj: 3, dst ofs: 0x9a7f
   3b190:	ba 77 01 00 00       	mov    edx,0x177
   3b195:	e8 96 ce ff ff       	call   _error_report
W?$ct:BTMAP$n(pn$_object_type$$)__branch_11:
   3b19a:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
   3b19e:	b9 79 01 00 00       	mov    ecx,0x179
   3b1a3:	bb 97 9a 00 00       	mov    ebx,@obj3:btmap_cpp_variable_20                              ; fixup: num: 10564, src obj: 1, src ofs: 0x3b1a4, dst obj: 3, dst ofs: 0x9a97
   3b1a8:	31 d2                	xor    edx,edx
   3b1aa:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
   3b1ad:	e8 2e 1c fd ff       	call   XFILE_read2
   3b1b2:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
   3b1b6:	89 c6                	mov    esi,eax
   3b1b8:	85 c0                	test   eax,eax
   3b1ba:	75 2b                	jne    W?$ct:BTMAP$n(pn$_object_type$$)__branch_12
   3b1bc:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
   3b1c0:	8b 50 2c             	mov    edx,DWORD PTR [eax+0x2c]
   3b1c3:	52                   	push   edx
   3b1c4:	68 a1 9a 00 00       	push   @obj3:btmap_cpp_variable_21                                  ; fixup: num: 10574, src obj: 1, src ofs: 0x3b1c5, dst obj: 3, dst ofs: 0x9aa1
   3b1c9:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 10573, src obj: 1, src ofs: 0x3b1ca, dst obj: 3, dst ofs: 0x237fc
   3b1ce:	bb fc 37 02 00       	mov    ebx,@obj3:log_buffer                                         ; fixup: num: 10572, src obj: 1, src ofs: 0x3b1cf, dst obj: 3, dst ofs: 0x237fc
   3b1d3:	e8 09 5a 03 00       	call   sprintf_
   3b1d8:	83 c4 0c             	add    esp,0xc
   3b1db:	ba 7d 01 00 00       	mov    edx,0x17d
   3b1e0:	31 c0                	xor    eax,eax
   3b1e2:	e8 49 ce ff ff       	call   _error_report
W?$ct:BTMAP$n(pn$_object_type$$)__branch_12:
   3b1e7:	8b 45 00             	mov    eax,DWORD PTR [ebp+0x0]
   3b1ea:	8b 16                	mov    edx,DWORD PTR [esi]
   3b1ec:	89 10                	mov    DWORD PTR [eax],edx
   3b1ee:	8b 45 00             	mov    eax,DWORD PTR [ebp+0x0]
   3b1f1:	8b 56 04             	mov    edx,DWORD PTR [esi+0x4]
   3b1f4:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
   3b1f7:	8b 55 00             	mov    edx,DWORD PTR [ebp+0x0]
   3b1fa:	8b 02                	mov    eax,DWORD PTR [edx]
   3b1fc:	0f af 42 04          	imul   eax,DWORD PTR [edx+0x4]
   3b200:	e8 8e 62 03 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   3b205:	8b 55 00             	mov    edx,DWORD PTR [ebp+0x0]
   3b208:	89 42 08             	mov    DWORD PTR [edx+0x8],eax
   3b20b:	8b 45 00             	mov    eax,DWORD PTR [ebp+0x0]
   3b20e:	83 c6 0c             	add    esi,0xc
   3b211:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
   3b214:	85 c9                	test   ecx,ecx
   3b216:	75 11                	jne    W?$ct:BTMAP$n(pn$_object_type$$)__branch_13
   3b218:	bb b8 9a 00 00       	mov    ebx,@obj3:btmap_cpp_variable_22                              ; fixup: num: 10571, src obj: 1, src ofs: 0x3b219, dst obj: 3, dst ofs: 0x9ab8
   3b21d:	ba 87 01 00 00       	mov    edx,0x187
   3b222:	31 c0                	xor    eax,eax
   3b224:	e8 07 ce ff ff       	call   _error_report
W?$ct:BTMAP$n(pn$_object_type$$)__branch_13:
   3b229:	8b 45 00             	mov    eax,DWORD PTR [ebp+0x0]
   3b22c:	8b 08                	mov    ecx,DWORD PTR [eax]
   3b22e:	0f af 48 04          	imul   ecx,DWORD PTR [eax+0x4]
   3b232:	8b 78 08             	mov    edi,DWORD PTR [eax+0x8]
   3b235:	57                   	push   edi
   3b236:	89 c8                	mov    eax,ecx
   3b238:	c1 e9 02             	shr    ecx,0x2
   3b23b:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
   3b23d:	8a c8                	mov    cl,al
   3b23f:	80 e1 03             	and    cl,0x3
   3b242:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
   3b244:	5f                   	pop    edi
   3b245:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
W?$ct:BTMAP$n(pn$_object_type$$)__branch_14:
   3b249:	e8 9a 61 03 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   3b24e:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
   3b252:	83 38 00             	cmp    DWORD PTR [eax],0x0
   3b255:	75 23                	jne    W?$ct:BTMAP$n(pn$_object_type$$)__branch_15
   3b257:	83 78 04 00          	cmp    DWORD PTR [eax+0x4],0x0
   3b25b:	75 1d                	jne    W?$ct:BTMAP$n(pn$_object_type$$)__branch_15
   3b25d:	8b 45 00             	mov    eax,DWORD PTR [ebp+0x0]
   3b260:	81 38 80 02 00 00    	cmp    DWORD PTR [eax],0x280
   3b266:	75 12                	jne    W?$ct:BTMAP$n(pn$_object_type$$)__branch_15
   3b268:	81 78 04 e0 01 00 00 	cmp    DWORD PTR [eax+0x4],0x1e0
   3b26f:	75 09                	jne    W?$ct:BTMAP$n(pn$_object_type$$)__branch_15
   3b271:	c7 45 38 03 00 00 00 	mov    DWORD PTR [ebp+0x38],0x3
   3b278:	eb 07                	jmp    W?$ct:BTMAP$n(pn$_object_type$$)__branch_16
W?$ct:BTMAP$n(pn$_object_type$$)__branch_15:
   3b27a:	c7 45 38 00 00 00 00 	mov    DWORD PTR [ebp+0x38],0x0
W?$ct:BTMAP$n(pn$_object_type$$)__branch_16:
   3b281:	8b 45 00             	mov    eax,DWORD PTR [ebp+0x0]
   3b284:	c6 45 08 01          	mov    BYTE PTR [ebp+0x8],0x1
   3b288:	89 45 04             	mov    DWORD PTR [ebp+0x4],eax
W?$ct:BTMAP$n(pn$_object_type$$)__branch_17:
   3b28b:	8b 45 00             	mov    eax,DWORD PTR [ebp+0x0]
   3b28e:	8b 00                	mov    eax,DWORD PTR [eax]
   3b290:	89 45 2c             	mov    DWORD PTR [ebp+0x2c],eax
   3b293:	8b 45 00             	mov    eax,DWORD PTR [ebp+0x0]
   3b296:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
   3b299:	c7 45 44 00 00 00 00 	mov    DWORD PTR [ebp+0x44],0x0
   3b2a0:	c7 45 28 00 00 00 00 	mov    DWORD PTR [ebp+0x28],0x0
   3b2a7:	89 45 30             	mov    DWORD PTR [ebp+0x30],eax
   3b2aa:	8b 45 44             	mov    eax,DWORD PTR [ebp+0x44]
   3b2ad:	89 45 48             	mov    DWORD PTR [ebp+0x48],eax
   3b2b0:	8b 45 28             	mov    eax,DWORD PTR [ebp+0x28]
   3b2b3:	89 45 24             	mov    DWORD PTR [ebp+0x24],eax
   3b2b6:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
   3b2ba:	8a 40 4f             	mov    al,BYTE PTR [eax+0x4f]
   3b2bd:	88 45 0a             	mov    BYTE PTR [ebp+0xa],al
   3b2c0:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
   3b2c4:	8a 40 4c             	mov    al,BYTE PTR [eax+0x4c]
   3b2c7:	c6 45 0c 00          	mov    BYTE PTR [ebp+0xc],0x0
   3b2cb:	88 45 0b             	mov    BYTE PTR [ebp+0xb],al
   3b2ce:	89 e8                	mov    eax,ebp
   3b2d0:	83 c4 0c             	add    esp,0xc
   3b2d3:	5d                   	pop    ebp
   3b2d4:	5f                   	pop    edi
   3b2d5:	5e                   	pop    esi
   3b2d6:	59                   	pop    ecx
   3b2d7:	5b                   	pop    ebx
   3b2d8:	c3                   	ret    
   3b2d9:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   3b2df:	90                   	nop

;-------------------------------------------------
;  Function 'W?$ct:BTMAP$n(pn$_region_type$$)_'  -
;-------------------------------------------------
W?$ct:BTMAP$n(pn$_region_type$$)_:
   3b2e0:	53                   	push   ebx
   3b2e1:	51                   	push   ecx
   3b2e2:	56                   	push   esi
   3b2e3:	57                   	push   edi
   3b2e4:	89 c1                	mov    ecx,eax
   3b2e6:	89 d6                	mov    esi,edx
   3b2e8:	8b 42 1c             	mov    eax,DWORD PTR [edx+0x1c]
   3b2eb:	89 41 10             	mov    DWORD PTR [ecx+0x10],eax
   3b2ee:	8b 02                	mov    eax,DWORD PTR [edx]
   3b2f0:	89 41 3c             	mov    DWORD PTR [ecx+0x3c],eax
   3b2f3:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
   3b2f6:	89 41 40             	mov    DWORD PTR [ecx+0x40],eax
   3b2f9:	db 42 10             	fild   DWORD PTR [edx+0x10]
   3b2fc:	d9 59 1c             	fstp   DWORD PTR [ecx+0x1c]
   3b2ff:	8b 42 14             	mov    eax,DWORD PTR [edx+0x14]
   3b302:	8b 52 10             	mov    edx,DWORD PTR [edx+0x10]
   3b305:	29 d0                	sub    eax,edx
   3b307:	89 41 20             	mov    DWORD PTR [ecx+0x20],eax
   3b30a:	8b 59 3c             	mov    ebx,DWORD PTR [ecx+0x3c]
   3b30d:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
   3b310:	29 d8                	sub    eax,ebx
   3b312:	89 41 2c             	mov    DWORD PTR [ecx+0x2c],eax
   3b315:	8b 79 40             	mov    edi,DWORD PTR [ecx+0x40]
   3b318:	8b 46 0c             	mov    eax,DWORD PTR [esi+0xc]
   3b31b:	29 f8                	sub    eax,edi
   3b31d:	89 41 30             	mov    DWORD PTR [ecx+0x30],eax
   3b320:	b8 0c 00 00 00       	mov    eax,0xc
   3b325:	e8 69 61 03 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   3b32a:	89 01                	mov    DWORD PTR [ecx],eax
   3b32c:	85 c0                	test   eax,eax
   3b32e:	75 0f                	jne    W?$ct:BTMAP$n(pn$_region_type$$)__branch_1
   3b330:	bb d0 9a 00 00       	mov    ebx,@obj3:btmap_cpp_variable_23                              ; fixup: num: 10575, src obj: 1, src ofs: 0x3b331, dst obj: 3, dst ofs: 0x9ad0
   3b335:	ba b2 01 00 00       	mov    edx,0x1b2
   3b33a:	e8 f1 cc ff ff       	call   _error_report
W?$ct:BTMAP$n(pn$_region_type$$)__branch_1:
   3b33f:	8b 01                	mov    eax,DWORD PTR [ecx]
   3b341:	c7 40 08 00 00 00 00 	mov    DWORD PTR [eax+0x8],0x0
   3b348:	8b 01                	mov    eax,DWORD PTR [ecx]
   3b34a:	89 41 04             	mov    DWORD PTR [ecx+0x4],eax
   3b34d:	89 c2                	mov    edx,eax
   3b34f:	8b 41 2c             	mov    eax,DWORD PTR [ecx+0x2c]
   3b352:	89 02                	mov    DWORD PTR [edx],eax
   3b354:	8b 11                	mov    edx,DWORD PTR [ecx]
   3b356:	8b 41 30             	mov    eax,DWORD PTR [ecx+0x30]
   3b359:	89 42 04             	mov    DWORD PTR [edx+0x4],eax
   3b35c:	8b 46 18             	mov    eax,DWORD PTR [esi+0x18]
   3b35f:	c7 41 44 00 00 00 00 	mov    DWORD PTR [ecx+0x44],0x0
   3b366:	c7 41 28 00 00 00 00 	mov    DWORD PTR [ecx+0x28],0x0
   3b36d:	c6 41 0c 00          	mov    BYTE PTR [ecx+0xc],0x0
   3b371:	c7 41 38 19 00 00 00 	mov    DWORD PTR [ecx+0x38],0x19
   3b378:	89 41 34             	mov    DWORD PTR [ecx+0x34],eax
   3b37b:	8b 41 44             	mov    eax,DWORD PTR [ecx+0x44]
   3b37e:	89 41 48             	mov    DWORD PTR [ecx+0x48],eax
   3b381:	8b 41 28             	mov    eax,DWORD PTR [ecx+0x28]
   3b384:	89 41 24             	mov    DWORD PTR [ecx+0x24],eax
   3b387:	80 7e 2a 00          	cmp    BYTE PTR [esi+0x2a],0x0
   3b38b:	0f 95 c0             	setne  al
   3b38e:	c6 41 0c 00          	mov    BYTE PTR [ecx+0xc],0x0
   3b392:	88 41 0b             	mov    BYTE PTR [ecx+0xb],al
   3b395:	89 c8                	mov    eax,ecx
   3b397:	5f                   	pop    edi
   3b398:	5e                   	pop    esi
   3b399:	59                   	pop    ecx
   3b39a:	5b                   	pop    ebx
   3b39b:	c3                   	ret    
   3b39c:	8d 44 20 00          	lea    eax,[eax+eiz*1+0x0]

;-------------------------------------------------
;  Function 'W?$dt:BTMAP$n()_'                   -
;-------------------------------------------------
W?$dt:BTMAP$n()_:
   3b3a0:	53                   	push   ebx
   3b3a1:	56                   	push   esi
   3b3a2:	57                   	push   edi
   3b3a3:	89 c3                	mov    ebx,eax
   3b3a5:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
   3b3a8:	85 d2                	test   edx,edx
   3b3aa:	74 2d                	je     W?$dt:BTMAP$n()__branch_2
   3b3ac:	3b 10                	cmp    edx,DWORD PTR [eax]
   3b3ae:	74 29                	je     W?$dt:BTMAP$n()__branch_2
   3b3b0:	8b 72 08             	mov    esi,DWORD PTR [edx+0x8]
   3b3b3:	89 d0                	mov    eax,edx
   3b3b5:	85 f6                	test   esi,esi
   3b3b7:	74 07                	je     W?$dt:BTMAP$n()__branch_1
   3b3b9:	89 f0                	mov    eax,esi
   3b3bb:	e8 28 60 03 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
W?$dt:BTMAP$n()__branch_1:
   3b3c0:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
   3b3c3:	c7 40 08 00 00 00 00 	mov    DWORD PTR [eax+0x8],0x0
   3b3ca:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
   3b3cd:	e8 16 60 03 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   3b3d2:	c7 43 04 00 00 00 00 	mov    DWORD PTR [ebx+0x4],0x0
W?$dt:BTMAP$n()__branch_2:
   3b3d9:	8b 3b                	mov    edi,DWORD PTR [ebx]
   3b3db:	85 ff                	test   edi,edi
   3b3dd:	74 3f                	je     W?$dt:BTMAP$n()__branch_4
   3b3df:	83 7f 08 00          	cmp    DWORD PTR [edi+0x8],0x0
   3b3e3:	74 2c                	je     W?$dt:BTMAP$n()__branch_3
   3b3e5:	b8 e8 9a 00 00       	mov    eax,@obj3:btmap_cpp_variable_24                              ; fixup: num: 10578, src obj: 1, src ofs: 0x3b3e6, dst obj: 3, dst ofs: 0x9ae8
   3b3ea:	8b 53 10             	mov    edx,DWORD PTR [ebx+0x10]
   3b3ed:	e8 3e b0 03 00       	call   strcmp_
   3b3f2:	85 c0                	test   eax,eax
   3b3f4:	74 1b                	je     W?$dt:BTMAP$n()__branch_3
   3b3f6:	b8 ed 9a 00 00       	mov    eax,@obj3:btmap_cpp_variable_25                              ; fixup: num: 10577, src obj: 1, src ofs: 0x3b3f7, dst obj: 3, dst ofs: 0x9aed
   3b3fb:	8b 53 10             	mov    edx,DWORD PTR [ebx+0x10]
   3b3fe:	e8 2d b0 03 00       	call   strcmp_
   3b403:	85 c0                	test   eax,eax
   3b405:	74 0a                	je     W?$dt:BTMAP$n()__branch_3
   3b407:	8b 03                	mov    eax,DWORD PTR [ebx]
   3b409:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
   3b40c:	e8 d7 5f 03 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
W?$dt:BTMAP$n()__branch_3:
   3b411:	8b 03                	mov    eax,DWORD PTR [ebx]
   3b413:	e8 d0 5f 03 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   3b418:	c7 03 00 00 00 00    	mov    DWORD PTR [ebx],0x0
W?$dt:BTMAP$n()__branch_4:
   3b41e:	c7 43 48 00 00 00 00 	mov    DWORD PTR [ebx+0x48],0x0
   3b425:	89 d8                	mov    eax,ebx
   3b427:	c7 43 44 00 00 00 00 	mov    DWORD PTR [ebx+0x44],0x0
   3b42e:	5f                   	pop    edi
   3b42f:	5e                   	pop    esi
   3b430:	5b                   	pop    ebx
   3b431:	c3                   	ret    
   3b432:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   3b438:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
   3b43e:	8b c0                	mov    eax,eax

;-------------------------------------------------
;  Function 'scale_mod_75'                       -
;-------------------------------------------------
scale_mod_75:
   3b440:	53                   	push   ebx
   3b441:	51                   	push   ecx
   3b442:	52                   	push   edx
   3b443:	56                   	push   esi
   3b444:	57                   	push   edi
   3b445:	55                   	push   ebp
   3b446:	83 ec 10             	sub    esp,0x10
   3b449:	89 c6                	mov    esi,eax
   3b44b:	80 78 0c 00          	cmp    BYTE PTR [eax+0xc],0x0
   3b44f:	0f 84 45 01 00 00    	je     scale_mod_75_branch_6
   3b455:	83 7e 04 00          	cmp    DWORD PTR [esi+0x4],0x0
   3b459:	75 3d                	jne    scale_mod_75_branch_2
   3b45b:	b8 0c 00 00 00       	mov    eax,0xc
   3b460:	e8 2e 60 03 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   3b465:	89 46 04             	mov    DWORD PTR [esi+0x4],eax
   3b468:	85 c0                	test   eax,eax
   3b46a:	75 0f                	jne    scale_mod_75_branch_1
   3b46c:	bb f2 9a 00 00       	mov    ebx,@obj3:btmap_cpp_variable_26                              ; fixup: num: 10576, src obj: 1, src ofs: 0x3b46d, dst obj: 3, dst ofs: 0x9af2
   3b471:	ba 67 02 00 00       	mov    edx,0x267
   3b476:	e8 b5 cb ff ff       	call   _error_report
scale_mod_75_branch_1:
   3b47b:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
   3b47e:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
   3b484:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
   3b487:	c7 40 04 00 00 00 00 	mov    DWORD PTR [eax+0x4],0x0
   3b48e:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
   3b491:	c7 40 08 00 00 00 00 	mov    DWORD PTR [eax+0x8],0x0
scale_mod_75_branch_2:
   3b498:	db 05 98 60 02 00    	fild   DWORD PTR ds:@obj3:scale_displacement_factor                 ; fixup: num: 10582, src obj: 1, src ofs: 0x3b49a, dst obj: 3, dst ofs: 0x26098
   3b49e:	d8 6e 1c             	fsubr  DWORD PTR [esi+0x1c]
   3b4a1:	d8 0d 88 60 02 00    	fmul   DWORD PTR ds:@obj3:global_scale_factor                       ; fixup: num: 10581, src obj: 1, src ofs: 0x3b4a3, dst obj: 3, dst ofs: 0x26088
   3b4a7:	d9 e8                	fld1   
   3b4a9:	de e1                	fsubrp st(1),st
   3b4ab:	d9 5e 18             	fstp   DWORD PTR [esi+0x18]
   3b4ae:	d9 ee                	fldz   
   3b4b0:	d8 5e 18             	fcomp  DWORD PTR [esi+0x18]
   3b4b3:	df e0                	fnstsw ax
   3b4b5:	9e                   	sahf   
   3b4b6:	76 32                	jbe    scale_mod_75_branch_3
   3b4b8:	8b 4e 10             	mov    ecx,DWORD PTR [esi+0x10]
   3b4bb:	c7 46 18 00 00 80 3f 	mov    DWORD PTR [esi+0x18],0x3f800000
   3b4c2:	85 c9                	test   ecx,ecx
   3b4c4:	74 24                	je     scale_mod_75_branch_3
   3b4c6:	83 ec 08             	sub    esp,0x8
   3b4c9:	d9 46 1c             	fld    DWORD PTR [esi+0x1c]
   3b4cc:	dd 1c 24             	fstp   QWORD PTR [esp]
   3b4cf:	8b 7e 40             	mov    edi,DWORD PTR [esi+0x40]
   3b4d2:	57                   	push   edi
   3b4d3:	8b 6e 3c             	mov    ebp,DWORD PTR [esi+0x3c]
   3b4d6:	55                   	push   ebp
   3b4d7:	51                   	push   ecx
   3b4d8:	68 0a 9b 00 00       	push   @obj3:btmap_cpp_variable_27                                  ; fixup: num: 10580, src obj: 1, src ofs: 0x3b4d9, dst obj: 3, dst ofs: 0x9b0a
   3b4dd:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 10579, src obj: 1, src ofs: 0x3b4de, dst obj: 3, dst ofs: 0x237fc
   3b4e2:	e8 fa 56 03 00       	call   sprintf_
   3b4e7:	83 c4 1c             	add    esp,0x1c
scale_mod_75_branch_3:
   3b4ea:	8b 06                	mov    eax,DWORD PTR [esi]
   3b4ec:	31 d2                	xor    edx,edx
   3b4ee:	8b 00                	mov    eax,DWORD PTR [eax]
   3b4f0:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
   3b4f4:	89 04 24             	mov    DWORD PTR [esp],eax
   3b4f7:	df 2c 24             	fild   QWORD PTR [esp]
   3b4fa:	d8 4e 18             	fmul   DWORD PTR [esi+0x18]
   3b4fd:	e8 46 a8 03 00       	call   __CHP
   3b502:	db 5e 2c             	fistp  DWORD PTR [esi+0x2c]
   3b505:	8b 06                	mov    eax,DWORD PTR [esi]
   3b507:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
   3b50a:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
   3b50e:	89 04 24             	mov    DWORD PTR [esp],eax
   3b511:	df 2c 24             	fild   QWORD PTR [esp]
   3b514:	d8 4e 18             	fmul   DWORD PTR [esi+0x18]
   3b517:	e8 2c a8 03 00       	call   __CHP
   3b51c:	db 5e 30             	fistp  DWORD PTR [esi+0x30]
   3b51f:	83 7e 30 00          	cmp    DWORD PTR [esi+0x30],0x0
   3b523:	7f 07                	jg     scale_mod_75_branch_4
   3b525:	c7 46 30 01 00 00 00 	mov    DWORD PTR [esi+0x30],0x1
scale_mod_75_branch_4:
   3b52c:	83 7e 2c 00          	cmp    DWORD PTR [esi+0x2c],0x0
   3b530:	7f 07                	jg     scale_mod_75_branch_5
   3b532:	c7 46 2c 01 00 00 00 	mov    DWORD PTR [esi+0x2c],0x1
scale_mod_75_branch_5:
   3b539:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
   3b53c:	8b 1e                	mov    ebx,DWORD PTR [esi]
   3b53e:	8b 56 30             	mov    edx,DWORD PTR [esi+0x30]
   3b541:	8b 46 2c             	mov    eax,DWORD PTR [esi+0x2c]
   3b544:	e8 77 82 fd ff       	call   scale_bitmap
   3b549:	8b 46 24             	mov    eax,DWORD PTR [esi+0x24]
   3b54c:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
   3b550:	db 44 24 08          	fild   DWORD PTR [esp+0x8]
   3b554:	d9 c0                	fld    st(0)
   3b556:	d8 4e 18             	fmul   DWORD PTR [esi+0x18]
   3b559:	dd d9                	fstp   st(1)
   3b55b:	e8 e8 a7 03 00       	call   __CHP
   3b560:	db 5e 24             	fistp  DWORD PTR [esi+0x24]
   3b563:	db 46 28             	fild   DWORD PTR [esi+0x28]
   3b566:	d9 c0                	fld    st(0)
   3b568:	d8 4e 18             	fmul   DWORD PTR [esi+0x18]
   3b56b:	dd d9                	fstp   st(1)
   3b56d:	e8 d6 a7 03 00       	call   __CHP
   3b572:	8b 6e 24             	mov    ebp,DWORD PTR [esi+0x24]
   3b575:	29 e8                	sub    eax,ebp
   3b577:	8d 14 28             	lea    edx,[eax+ebp*1]
   3b57a:	89 56 24             	mov    DWORD PTR [esi+0x24],edx
   3b57d:	8b 5e 04             	mov    ebx,DWORD PTR [esi+0x4]
   3b580:	db 5e 28             	fistp  DWORD PTR [esi+0x28]
   3b583:	85 db                	test   ebx,ebx
   3b585:	75 18                	jne    scale_mod_75_branch_7
   3b587:	bb 27 9b 00 00       	mov    ebx,@obj3:btmap_cpp_variable_28                              ; fixup: num: 10583, src obj: 1, src ofs: 0x3b588, dst obj: 3, dst ofs: 0x9b27
   3b58c:	ba a2 02 00 00       	mov    edx,0x2a2
   3b591:	31 c0                	xor    eax,eax
   3b593:	e8 98 ca ff ff       	call   _error_report
   3b598:	eb 05                	jmp    scale_mod_75_branch_7
scale_mod_75_branch_6:
   3b59a:	8b 06                	mov    eax,DWORD PTR [esi]
   3b59c:	89 46 04             	mov    DWORD PTR [esi+0x4],eax
scale_mod_75_branch_7:
   3b59f:	83 c4 10             	add    esp,0x10
   3b5a2:	5d                   	pop    ebp
   3b5a3:	5f                   	pop    edi
   3b5a4:	5e                   	pop    esi
   3b5a5:	5a                   	pop    edx
   3b5a6:	59                   	pop    ecx
   3b5a7:	5b                   	pop    ebx
   3b5a8:	c3                   	ret    
   3b5a9:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   3b5af:	90                   	nop

;-------------------------------------------------
;  Function 'mouse_hit'                          -
;-------------------------------------------------
mouse_hit:
   3b5b0:	53                   	push   ebx
   3b5b1:	51                   	push   ecx
   3b5b2:	52                   	push   edx
   3b5b3:	55                   	push   ebp
   3b5b4:	8b 50 38             	mov    edx,DWORD PTR [eax+0x38]
   3b5b7:	83 fa 03             	cmp    edx,0x3
   3b5ba:	0f 84 9d 00 00 00    	je     mouse_hit_branch_6
   3b5c0:	83 fa 16             	cmp    edx,0x16
   3b5c3:	75 07                	jne    mouse_hit_branch_1
   3b5c5:	30 c0                	xor    al,al
   3b5c7:	5d                   	pop    ebp
   3b5c8:	5a                   	pop    edx
   3b5c9:	59                   	pop    ecx
   3b5ca:	5b                   	pop    ebx
   3b5cb:	c3                   	ret    
mouse_hit_branch_1:
   3b5cc:	8b 58 3c             	mov    ebx,DWORD PTR [eax+0x3c]
   3b5cf:	03 58 24             	add    ebx,DWORD PTR [eax+0x24]
   3b5d2:	3b 1d 78 59 02 00    	cmp    ebx,DWORD PTR ds:@obj3:mouse_x                               ; fixup: num: 10589, src obj: 1, src ofs: 0x3b5d4, dst obj: 3, dst ofs: 0x25978
   3b5d8:	7e 07                	jle    mouse_hit_branch_2
   3b5da:	30 c0                	xor    al,al
   3b5dc:	5d                   	pop    ebp
   3b5dd:	5a                   	pop    edx
   3b5de:	59                   	pop    ecx
   3b5df:	5b                   	pop    ebx
   3b5e0:	c3                   	ret    
mouse_hit_branch_2:
   3b5e1:	8b 50 40             	mov    edx,DWORD PTR [eax+0x40]
   3b5e4:	03 50 28             	add    edx,DWORD PTR [eax+0x28]
   3b5e7:	3b 15 7c 59 02 00    	cmp    edx,DWORD PTR ds:@obj3:mouse_y                               ; fixup: num: 10588, src obj: 1, src ofs: 0x3b5e9, dst obj: 3, dst ofs: 0x2597c
   3b5ed:	7e 07                	jle    mouse_hit_branch_3
   3b5ef:	30 c0                	xor    al,al
   3b5f1:	5d                   	pop    ebp
   3b5f2:	5a                   	pop    edx
   3b5f3:	59                   	pop    ecx
   3b5f4:	5b                   	pop    ebx
   3b5f5:	c3                   	ret    
mouse_hit_branch_3:
   3b5f6:	8b 48 2c             	mov    ecx,DWORD PTR [eax+0x2c]
   3b5f9:	01 d9                	add    ecx,ebx
   3b5fb:	3b 0d 78 59 02 00    	cmp    ecx,DWORD PTR ds:@obj3:mouse_x                               ; fixup: num: 10587, src obj: 1, src ofs: 0x3b5fd, dst obj: 3, dst ofs: 0x25978
   3b601:	7d 07                	jge    mouse_hit_branch_4
   3b603:	30 c0                	xor    al,al
   3b605:	5d                   	pop    ebp
   3b606:	5a                   	pop    edx
   3b607:	59                   	pop    ecx
   3b608:	5b                   	pop    ebx
   3b609:	c3                   	ret    
mouse_hit_branch_4:
   3b60a:	8b 48 30             	mov    ecx,DWORD PTR [eax+0x30]
   3b60d:	01 d1                	add    ecx,edx
   3b60f:	3b 0d 7c 59 02 00    	cmp    ecx,DWORD PTR ds:@obj3:mouse_y                               ; fixup: num: 10586, src obj: 1, src ofs: 0x3b611, dst obj: 3, dst ofs: 0x2597c
   3b615:	7d 07                	jge    mouse_hit_branch_5
   3b617:	30 c0                	xor    al,al
   3b619:	5d                   	pop    ebp
   3b61a:	5a                   	pop    edx
   3b61b:	59                   	pop    ecx
   3b61c:	5b                   	pop    ebx
   3b61d:	c3                   	ret    
mouse_hit_branch_5:
   3b61e:	8b 68 38             	mov    ebp,DWORD PTR [eax+0x38]
   3b621:	83 fd 15             	cmp    ebp,0x15
   3b624:	74 37                	je     mouse_hit_branch_6
   3b626:	83 fd 18             	cmp    ebp,0x18
   3b629:	74 32                	je     mouse_hit_branch_6
   3b62b:	83 fd 19             	cmp    ebp,0x19
   3b62e:	74 2d                	je     mouse_hit_branch_6
   3b630:	8b 0d 7c 59 02 00    	mov    ecx,DWORD PTR ds:@obj3:mouse_y                               ; fixup: num: 10585, src obj: 1, src ofs: 0x3b632, dst obj: 3, dst ofs: 0x2597c
   3b636:	29 d1                	sub    ecx,edx
   3b638:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
   3b63b:	89 ca                	mov    edx,ecx
   3b63d:	0f af 10             	imul   edx,DWORD PTR [eax]
   3b640:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
   3b643:	01 c2                	add    edx,eax
   3b645:	a1 78 59 02 00       	mov    eax,ds:@obj3:mouse_x                                         ; fixup: num: 10584, src obj: 1, src ofs: 0x3b646, dst obj: 3, dst ofs: 0x25978
   3b64a:	29 d8                	sub    eax,ebx
   3b64c:	8a 04 02             	mov    al,BYTE PTR [edx+eax*1]
   3b64f:	25 ff 00 00 00       	and    eax,0xff
   3b654:	75 07                	jne    mouse_hit_branch_6
   3b656:	30 c0                	xor    al,al
   3b658:	5d                   	pop    ebp
   3b659:	5a                   	pop    edx
   3b65a:	59                   	pop    ecx
   3b65b:	5b                   	pop    ebx
   3b65c:	c3                   	ret    
mouse_hit_branch_6:
   3b65d:	b0 01                	mov    al,0x1
   3b65f:	5d                   	pop    ebp
   3b660:	5a                   	pop    edx
   3b661:	59                   	pop    ecx
   3b662:	5b                   	pop    ebx
   3b663:	c3                   	ret    
   3b664:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   3b66a:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]

;-------------------------------------------------
;  Function 'inv_mouse_hit'                      -
;-------------------------------------------------
inv_mouse_hit:
   3b670:	53                   	push   ebx
   3b671:	52                   	push   edx
   3b672:	8b 50 38             	mov    edx,DWORD PTR [eax+0x38]
   3b675:	83 fa 03             	cmp    edx,0x3
   3b678:	0f 84 60 00 00 00    	je     inv_mouse_hit_branch_6
   3b67e:	83 fa 16             	cmp    edx,0x16
   3b681:	75 05                	jne    inv_mouse_hit_branch_1
   3b683:	30 c0                	xor    al,al
   3b685:	5a                   	pop    edx
   3b686:	5b                   	pop    ebx
   3b687:	c3                   	ret    
inv_mouse_hit_branch_1:
   3b688:	8b 58 3c             	mov    ebx,DWORD PTR [eax+0x3c]
   3b68b:	03 58 24             	add    ebx,DWORD PTR [eax+0x24]
   3b68e:	3b 1d 78 59 02 00    	cmp    ebx,DWORD PTR ds:@obj3:mouse_x                               ; fixup: num: 10593, src obj: 1, src ofs: 0x3b690, dst obj: 3, dst ofs: 0x25978
   3b694:	7e 05                	jle    inv_mouse_hit_branch_2
   3b696:	30 c0                	xor    al,al
   3b698:	5a                   	pop    edx
   3b699:	5b                   	pop    ebx
   3b69a:	c3                   	ret    
inv_mouse_hit_branch_2:
   3b69b:	8b 50 40             	mov    edx,DWORD PTR [eax+0x40]
   3b69e:	03 50 28             	add    edx,DWORD PTR [eax+0x28]
   3b6a1:	3b 15 7c 59 02 00    	cmp    edx,DWORD PTR ds:@obj3:mouse_y                               ; fixup: num: 10592, src obj: 1, src ofs: 0x3b6a3, dst obj: 3, dst ofs: 0x2597c
   3b6a7:	7e 05                	jle    inv_mouse_hit_branch_3
   3b6a9:	30 c0                	xor    al,al
   3b6ab:	5a                   	pop    edx
   3b6ac:	5b                   	pop    ebx
   3b6ad:	c3                   	ret    
inv_mouse_hit_branch_3:
   3b6ae:	03 58 2c             	add    ebx,DWORD PTR [eax+0x2c]
   3b6b1:	3b 1d 78 59 02 00    	cmp    ebx,DWORD PTR ds:@obj3:mouse_x                               ; fixup: num: 10591, src obj: 1, src ofs: 0x3b6b3, dst obj: 3, dst ofs: 0x25978
   3b6b7:	7d 05                	jge    inv_mouse_hit_branch_4
   3b6b9:	30 c0                	xor    al,al
   3b6bb:	5a                   	pop    edx
   3b6bc:	5b                   	pop    ebx
   3b6bd:	c3                   	ret    
inv_mouse_hit_branch_4:
   3b6be:	03 50 30             	add    edx,DWORD PTR [eax+0x30]
   3b6c1:	3b 15 7c 59 02 00    	cmp    edx,DWORD PTR ds:@obj3:mouse_y                               ; fixup: num: 10590, src obj: 1, src ofs: 0x3b6c3, dst obj: 3, dst ofs: 0x2597c
   3b6c7:	7d 05                	jge    inv_mouse_hit_branch_5
   3b6c9:	30 c0                	xor    al,al
   3b6cb:	5a                   	pop    edx
   3b6cc:	5b                   	pop    ebx
   3b6cd:	c3                   	ret    
inv_mouse_hit_branch_5:
   3b6ce:	8b 50 38             	mov    edx,DWORD PTR [eax+0x38]
   3b6d1:	83 fa 15             	cmp    edx,0x15
   3b6d4:	74 08                	je     inv_mouse_hit_branch_6
   3b6d6:	83 fa 18             	cmp    edx,0x18
   3b6d9:	74 03                	je     inv_mouse_hit_branch_6
   3b6db:	83 fa 19             	cmp    edx,0x19
inv_mouse_hit_branch_6:
   3b6de:	b0 01                	mov    al,0x1
   3b6e0:	5a                   	pop    edx
   3b6e1:	5b                   	pop    ebx
   3b6e2:	c3                   	ret    
   3b6e3:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   3b6e9:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
   3b6ef:	90                   	nop

;-------------------------------------------------
;  Function 'set_xyz'                            -
;-------------------------------------------------
set_xyz:
   3b6f0:	89 50 3c             	mov    DWORD PTR [eax+0x3c],edx
   3b6f3:	89 58 40             	mov    DWORD PTR [eax+0x40],ebx
   3b6f6:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
   3b6fa:	89 50 1c             	mov    DWORD PTR [eax+0x1c],edx
   3b6fd:	c2 04 00             	ret    0x4

;-------------------------------------------------
;  Function 'bm_overlaps'                        -
;-------------------------------------------------
bm_overlaps:
   3b700:	53                   	push   ebx
   3b701:	51                   	push   ecx
   3b702:	56                   	push   esi
   3b703:	57                   	push   edi
   3b704:	55                   	push   ebp
   3b705:	83 ec 08             	sub    esp,0x8
   3b708:	8b 5a 40             	mov    ebx,DWORD PTR [edx+0x40]
   3b70b:	8b 4a 30             	mov    ecx,DWORD PTR [edx+0x30]
   3b70e:	8b 72 2c             	mov    esi,DWORD PTR [edx+0x2c]
   3b711:	8b 6a 24             	mov    ebp,DWORD PTR [edx+0x24]
   3b714:	01 cb                	add    ebx,ecx
   3b716:	8b 4a 28             	mov    ecx,DWORD PTR [edx+0x28]
   3b719:	8b 7a 28             	mov    edi,DWORD PTR [edx+0x28]
   3b71c:	01 d9                	add    ecx,ebx
   3b71e:	8b 5a 3c             	mov    ebx,DWORD PTR [edx+0x3c]
   3b721:	89 4c 24 04          	mov    DWORD PTR [esp+0x4],ecx
   3b725:	01 f3                	add    ebx,esi
   3b727:	8b 4a 24             	mov    ecx,DWORD PTR [edx+0x24]
   3b72a:	01 dd                	add    ebp,ebx
   3b72c:	8b 5a 40             	mov    ebx,DWORD PTR [edx+0x40]
   3b72f:	8b 70 30             	mov    esi,DWORD PTR [eax+0x30]
   3b732:	01 df                	add    edi,ebx
   3b734:	8b 5a 3c             	mov    ebx,DWORD PTR [edx+0x3c]
   3b737:	8b 50 40             	mov    edx,DWORD PTR [eax+0x40]
   3b73a:	01 cb                	add    ebx,ecx
   3b73c:	8b 48 28             	mov    ecx,DWORD PTR [eax+0x28]
   3b73f:	01 f2                	add    edx,esi
   3b741:	01 d1                	add    ecx,edx
   3b743:	89 0c 24             	mov    DWORD PTR [esp],ecx
   3b746:	8b 50 3c             	mov    edx,DWORD PTR [eax+0x3c]
   3b749:	03 50 2c             	add    edx,DWORD PTR [eax+0x2c]
   3b74c:	8b 48 24             	mov    ecx,DWORD PTR [eax+0x24]
   3b74f:	8b 70 28             	mov    esi,DWORD PTR [eax+0x28]
   3b752:	01 d1                	add    ecx,edx
   3b754:	03 70 40             	add    esi,DWORD PTR [eax+0x40]
   3b757:	8b 50 3c             	mov    edx,DWORD PTR [eax+0x3c]
   3b75a:	03 50 24             	add    edx,DWORD PTR [eax+0x24]
   3b75d:	39 d9                	cmp    ecx,ebx
   3b75f:	7d 04                	jge    bm_overlaps_branch_1
   3b761:	30 c0                	xor    al,al
   3b763:	eb 32                	jmp    bm_overlaps_branch_5
bm_overlaps_branch_1:
   3b765:	39 ea                	cmp    edx,ebp
   3b767:	7e 0b                	jle    bm_overlaps_branch_2
   3b769:	30 c0                	xor    al,al
   3b76b:	83 c4 08             	add    esp,0x8
   3b76e:	5d                   	pop    ebp
   3b76f:	5f                   	pop    edi
   3b770:	5e                   	pop    esi
   3b771:	59                   	pop    ecx
   3b772:	5b                   	pop    ebx
   3b773:	c3                   	ret    
bm_overlaps_branch_2:
   3b774:	3b 3c 24             	cmp    edi,DWORD PTR [esp]
   3b777:	7e 0b                	jle    bm_overlaps_branch_3
   3b779:	30 c0                	xor    al,al
   3b77b:	83 c4 08             	add    esp,0x8
   3b77e:	5d                   	pop    ebp
   3b77f:	5f                   	pop    edi
   3b780:	5e                   	pop    esi
   3b781:	59                   	pop    ecx
   3b782:	5b                   	pop    ebx
   3b783:	c3                   	ret    
bm_overlaps_branch_3:
   3b784:	3b 74 24 04          	cmp    esi,DWORD PTR [esp+0x4]
   3b788:	7e 0b                	jle    bm_overlaps_branch_4
   3b78a:	30 c0                	xor    al,al
   3b78c:	83 c4 08             	add    esp,0x8
   3b78f:	5d                   	pop    ebp
   3b790:	5f                   	pop    edi
   3b791:	5e                   	pop    esi
   3b792:	59                   	pop    ecx
   3b793:	5b                   	pop    ebx
   3b794:	c3                   	ret    
bm_overlaps_branch_4:
   3b795:	b0 01                	mov    al,0x1
bm_overlaps_branch_5:
   3b797:	83 c4 08             	add    esp,0x8
   3b79a:	5d                   	pop    ebp
   3b79b:	5f                   	pop    edi
   3b79c:	5e                   	pop    esi
   3b79d:	59                   	pop    ecx
   3b79e:	5b                   	pop    ebx
   3b79f:	c3                   	ret    

;-------------------------------------------------
;  Function 'swap_bm'                            -
;-------------------------------------------------
swap_bm:
   3b7a0:	53                   	push   ebx
   3b7a1:	51                   	push   ecx
   3b7a2:	56                   	push   esi
   3b7a3:	57                   	push   edi
   3b7a4:	55                   	push   ebp
   3b7a5:	83 ec 04             	sub    esp,0x4
   3b7a8:	89 c7                	mov    edi,eax
   3b7aa:	89 d5                	mov    ebp,edx
   3b7ac:	8b 10                	mov    edx,DWORD PTR [eax]
   3b7ae:	85 d2                	test   edx,edx
   3b7b0:	0f 84 b7 00 00 00    	je     swap_bm_branch_4
   3b7b6:	83 7a 08 00          	cmp    DWORD PTR [edx+0x8],0x0
   3b7ba:	0f 84 ad 00 00 00    	je     swap_bm_branch_4
   3b7c0:	b9 15 03 00 00       	mov    ecx,0x315
   3b7c5:	bb 34 9b 00 00       	mov    ebx,@obj3:btmap_cpp_variable_29                              ; fixup: num: 10594, src obj: 1, src ofs: 0x3b7c6, dst obj: 3, dst ofs: 0x9b34
   3b7ca:	89 e8                	mov    eax,ebp
   3b7cc:	31 d2                	xor    edx,edx
   3b7ce:	e8 0d 16 fd ff       	call   XFILE_read2
   3b7d3:	89 04 24             	mov    DWORD PTR [esp],eax
   3b7d6:	89 c6                	mov    esi,eax
   3b7d8:	85 c0                	test   eax,eax
   3b7da:	75 24                	jne    swap_bm_branch_1
   3b7dc:	55                   	push   ebp
   3b7dd:	68 3e 9b 00 00       	push   @obj3:btmap_cpp_variable_30                                  ; fixup: num: 10599, src obj: 1, src ofs: 0x3b7de, dst obj: 3, dst ofs: 0x9b3e
   3b7e2:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 10598, src obj: 1, src ofs: 0x3b7e3, dst obj: 3, dst ofs: 0x237fc
   3b7e7:	bb fc 37 02 00       	mov    ebx,@obj3:log_buffer                                         ; fixup: num: 10597, src obj: 1, src ofs: 0x3b7e8, dst obj: 3, dst ofs: 0x237fc
   3b7ec:	e8 f0 53 03 00       	call   sprintf_
   3b7f1:	83 c4 0c             	add    esp,0xc
   3b7f4:	ba 19 03 00 00       	mov    edx,0x319
   3b7f9:	31 c0                	xor    eax,eax
   3b7fb:	e8 30 c8 ff ff       	call   _error_report
swap_bm_branch_1:
   3b800:	8b 07                	mov    eax,DWORD PTR [edi]
   3b802:	8b 16                	mov    edx,DWORD PTR [esi]
   3b804:	8b 28                	mov    ebp,DWORD PTR [eax]
   3b806:	89 10                	mov    DWORD PTR [eax],edx
   3b808:	8b 07                	mov    eax,DWORD PTR [edi]
   3b80a:	3b 28                	cmp    ebp,DWORD PTR [eax]
   3b80c:	74 11                	je     swap_bm_branch_2
   3b80e:	bb 55 9b 00 00       	mov    ebx,@obj3:btmap_cpp_variable_31                              ; fixup: num: 10596, src obj: 1, src ofs: 0x3b80f, dst obj: 3, dst ofs: 0x9b55
   3b813:	ba 1d 03 00 00       	mov    edx,0x31d
   3b818:	31 c0                	xor    eax,eax
   3b81a:	e8 11 c8 ff ff       	call   _error_report
swap_bm_branch_2:
   3b81f:	8b 07                	mov    eax,DWORD PTR [edi]
   3b821:	8b 6e 04             	mov    ebp,DWORD PTR [esi+0x4]
   3b824:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
   3b827:	89 68 04             	mov    DWORD PTR [eax+0x4],ebp
   3b82a:	8b 07                	mov    eax,DWORD PTR [edi]
   3b82c:	8b 68 04             	mov    ebp,DWORD PTR [eax+0x4]
   3b82f:	83 c6 04             	add    esi,0x4
   3b832:	39 ea                	cmp    edx,ebp
   3b834:	74 11                	je     swap_bm_branch_3
   3b836:	bb 6c 9b 00 00       	mov    ebx,@obj3:btmap_cpp_variable_32                              ; fixup: num: 10595, src obj: 1, src ofs: 0x3b837, dst obj: 3, dst ofs: 0x9b6c
   3b83b:	ba 21 03 00 00       	mov    edx,0x321
   3b840:	31 c0                	xor    eax,eax
   3b842:	e8 e9 c7 ff ff       	call   _error_report
swap_bm_branch_3:
   3b847:	8b 3f                	mov    edi,DWORD PTR [edi]
   3b849:	8b 0f                	mov    ecx,DWORD PTR [edi]
   3b84b:	0f af 4f 04          	imul   ecx,DWORD PTR [edi+0x4]
   3b84f:	83 c6 08             	add    esi,0x8
   3b852:	8b 7f 08             	mov    edi,DWORD PTR [edi+0x8]
   3b855:	57                   	push   edi
   3b856:	89 c8                	mov    eax,ecx
   3b858:	c1 e9 02             	shr    ecx,0x2
   3b85b:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
   3b85d:	8a c8                	mov    cl,al
   3b85f:	80 e1 03             	and    cl,0x3
   3b862:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
   3b864:	5f                   	pop    edi
   3b865:	8b 04 24             	mov    eax,DWORD PTR [esp]
   3b868:	e8 7b 5b 03 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
swap_bm_branch_4:
   3b86d:	83 c4 04             	add    esp,0x4
   3b870:	5d                   	pop    ebp
   3b871:	5f                   	pop    edi
   3b872:	5e                   	pop    esi
   3b873:	59                   	pop    ecx
   3b874:	5b                   	pop    ebx
   3b875:	c3                   	ret    
;-------------------------------------------------
;  Bad code 74 (zero after ret):                 -
;-------------------------------------------------
;  3b874:	5b                   	pop    ebx
;  3b875:	c3                   	ret    
;  3b876:	00 00                	add    BYTE PTR [eax],al
;  3b878:	00 00                	add    BYTE PTR [eax],al
;-------------------------------------------------
;  Padding data (10 bytes):                      -
;-------------------------------------------------
   3b876:	00 00 00 00 00 00 .. 	db     10 dup(0x00)
;-------------------------------------------------
;  End of bad code 74                            -
;-------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 75 (D:\SOURCE\btmap.cpp)                                      -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 75: D:\SOURCE\btmap.cpp                                              -
;                                                                              -
;-------------------------------------------------------------------------------
btmap_cpp_variable_1:
    98e8:	42 74 6d 61 70 5f 63 70 70 00 	db     "Btmap_cpp",0x00
btmap_cpp_variable_2:
    98f2:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
btmap_cpp_variable_3:
    990a:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
btmap_cpp_variable_4:
    9922:	62 74 6d 61 70 2e 63 70 70 00 	db     "btmap.cpp",0x00
btmap_cpp_variable_5:
    992c:	45 72 72 6f 72 20 72 65 61 64 69 6e 67 20 66 69 6c 65 3a 20 25 73 00 	db     "Error reading file: %s",0x00
btmap_cpp_variable_6:
    9943:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
btmap_cpp_variable_7:
    995b:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
btmap_cpp_variable_8:
    9973:	62 74 6d 61 70 2e 63 70 70 00 	db     "btmap.cpp",0x00
btmap_cpp_variable_9:
    997d:	45 72 72 6f 72 20 72 65 61 64 69 6e 67 20 66 69 6c 65 3a 20 25 73 00 	db     "Error reading file: %s",0x00
btmap_cpp_variable_10:
    9994:	49 6e 74 65 72 6e 61 6c 20 65 72 72 6f 72 3a 20 4e 55 4c 4c 20 6f 62 6a 20 70 61 73 73 65 64 00 	db     "Internal error: NULL obj passed",0x00
btmap_cpp_variable_11:
    99b4:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
btmap_cpp_variable_12:
    99cc:	4e 4f 20 44 45 53 43 52 49 50 54 49 4f 4e 20 3f 20 2d 2d 2d 20 61 73 73 69 67 6e 69 6e 67 20 25 73 20 74 6f 20 48 4f 54 5f 53 50 4f 54 00 	db     "NO DESCRIPTION ? --- assigning %s to HOT_SPOT",0x00
btmap_cpp_variable_13:
    99fa:	49 4e 56 45 4e 54 4f 52 59 00 	db     "INVENTORY",0x00
btmap_cpp_variable_14:
    9a04:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
btmap_cpp_variable_15:
    9a1c:	62 74 6d 61 70 2e 63 70 70 00 	db     "btmap.cpp",0x00
btmap_cpp_variable_16:
    9a26:	45 72 72 6f 72 20 72 65 61 64 69 6e 67 20 66 69 6c 65 3a 20 25 73 00 	db     "Error reading file: %s",0x00
btmap_cpp_variable_17:
    9a3d:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 20 6f 66 20 25 69 20 62 79 74 65 73 00 	db     "Memory allocation error of %i bytes",0x00
btmap_cpp_variable_18:
    9a61:	42 54 4d 41 50 3a 55 6e 61 62 6c 65 20 74 6f 20 6c 6f 61 64 32 20 25 73 20 28 25 73 29 00 	db     "BTMAP:Unable to load2 %s (%s)",0x00
btmap_cpp_variable_19:
    9a7f:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
btmap_cpp_variable_20:
    9a97:	62 74 6d 61 70 2e 63 70 70 00 	db     "btmap.cpp",0x00
btmap_cpp_variable_21:
    9aa1:	45 72 72 6f 72 20 72 65 61 64 69 6e 67 20 66 69 6c 65 3a 20 25 73 00 	db     "Error reading file: %s",0x00
btmap_cpp_variable_22:
    9ab8:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
btmap_cpp_variable_23:
    9ad0:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
btmap_cpp_variable_24:
    9ae8:	53 54 41 54 00       	db     "STAT",0x00
btmap_cpp_variable_25:
    9aed:	4c 4f 47 4f 00       	db     "LOGO",0x00
btmap_cpp_variable_26:
    9af2:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
btmap_cpp_variable_27:
    9b0a:	69 64 20 69 73 20 25 73 20 20 78 3d 25 69 20 20 79 3d 25 69 20 20 7a 3d 25 2e 32 66 00 	db     "id is %s  x=%i  y=%i  z=%.2f",0x00
btmap_cpp_variable_28:
    9b27:	42 54 4d 41 50 3a 3a 73 63 61 6c 65 00 	db     "BTMAP::scale",0x00
btmap_cpp_variable_29:
    9b34:	62 74 6d 61 70 2e 63 70 70 00 	db     "btmap.cpp",0x00
btmap_cpp_variable_30:
    9b3e:	45 72 72 6f 72 20 72 65 61 64 69 6e 67 20 66 69 6c 65 3a 20 25 73 00 	db     "Error reading file: %s",0x00
btmap_cpp_variable_31:
    9b55:	6f 6c 64 5f 77 20 21 3d 20 68 65 61 64 65 72 2d 3e 77 69 64 74 68 00 	db     "old_w != header->width",0x00
btmap_cpp_variable_32:
    9b6c:	6f 6c 64 5f 68 20 21 3d 20 68 65 61 64 65 72 2d 3e 68 65 69 67 68 74 00 	db     "old_h != header->height",0x00

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 75 (D:\SOURCE\btmap.cpp)                                      -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 75: D:\SOURCE\btmap.cpp                                              -
;                                                                              -
;-------------------------------------------------------------------------------
_id_hold:
   25988:	00 00 00 00 00 00 .. 	db     112 dup(0x00)                                                ; dec:   0, chr: '\0'

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 75 (D:\SOURCE\btmap.cpp)                                      -
;                                                                              -
;-------------------------------------------------------------------------------