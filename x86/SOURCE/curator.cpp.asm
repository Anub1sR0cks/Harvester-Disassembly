;-------------------------------------------------------------------------------
;                                                                              -
;  Module 52: D:\SOURCE\curator.cpp                                            -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function 'talk_to_CURATOR'                    -
;-------------------------------------------------
talk_to_CURATOR:
   24ca0:	53                   	push   ebx
   24ca1:	52                   	push   edx
   24ca2:	bb 01 00 00 00       	mov    ebx,0x1
   24ca7:	ba 20 65 00 00       	mov    edx,@obj3:curator_cpp_variable_1                             ; fixup: num: 5516, src obj: 1, src ofs: 0x24ca8, dst obj: 3, dst ofs: 0x6520
   24cac:	b8 25 04 00 00       	mov    eax,0x425
   24cb1:	e8 da 59 04 00       	call   play_wav
   24cb6:	b8 4a 00 00 00       	mov    eax,0x4a
   24cbb:	e8 e0 54 00 00       	call   GetDlgFileString
   24cc0:	e8 4b 62 04 00       	call   get_response
   24cc5:	83 f8 01             	cmp    eax,0x1
   24cc8:	75 11                	jne    talk_to_CURATOR_branch_1
   24cca:	bb 03 00 00 00       	mov    ebx,0x3
   24ccf:	ba 28 65 00 00       	mov    edx,@obj3:curator_cpp_variable_2                             ; fixup: num: 5515, src obj: 1, src ofs: 0x24cd0, dst obj: 3, dst ofs: 0x6528
   24cd4:	b8 30 04 00 00       	mov    eax,0x430
   24cd9:	eb 11                	jmp    talk_to_CURATOR_branch_2
talk_to_CURATOR_branch_1:
   24cdb:	83 f8 02             	cmp    eax,0x2
   24cde:	75 11                	jne    talk_to_CURATOR_branch_3
   24ce0:	ba 30 65 00 00       	mov    edx,@obj3:curator_cpp_variable_3                             ; fixup: num: 5514, src obj: 1, src ofs: 0x24ce1, dst obj: 3, dst ofs: 0x6530
   24ce5:	b8 35 04 00 00       	mov    eax,0x435
   24cea:	31 db                	xor    ebx,ebx
talk_to_CURATOR_branch_2:
   24cec:	e8 9f 59 04 00       	call   play_wav
talk_to_CURATOR_branch_3:
   24cf1:	ba 38 65 00 00       	mov    edx,@obj3:curator_cpp_variable_4                             ; fixup: num: 5513, src obj: 1, src ofs: 0x24cf2, dst obj: 3, dst ofs: 0x6538
   24cf6:	b8 3a 04 00 00       	mov    eax,0x43a
   24cfb:	31 db                	xor    ebx,ebx
   24cfd:	e8 8e 59 04 00       	call   play_wav
   24d02:	ba 40 65 00 00       	mov    edx,@obj3:curator_cpp_variable_5                             ; fixup: num: 5512, src obj: 1, src ofs: 0x24d03, dst obj: 3, dst ofs: 0x6540
   24d07:	b8 3b 04 00 00       	mov    eax,0x43b
   24d0c:	31 db                	xor    ebx,ebx
   24d0e:	e8 7d 59 04 00       	call   play_wav
   24d13:	ba 48 65 00 00       	mov    edx,@obj3:curator_cpp_variable_6                             ; fixup: num: 5511, src obj: 1, src ofs: 0x24d14, dst obj: 3, dst ofs: 0x6548
   24d18:	b8 47 04 00 00       	mov    eax,0x447
   24d1d:	31 db                	xor    ebx,ebx
   24d1f:	e8 6c 59 04 00       	call   play_wav
   24d24:	bb 03 00 00 00       	mov    ebx,0x3
   24d29:	ba 4b 65 00 00       	mov    edx,@obj3:curator_cpp_variable_7                             ; fixup: num: 5510, src obj: 1, src ofs: 0x24d2a, dst obj: 3, dst ofs: 0x654b
   24d2e:	b8 4b 04 00 00       	mov    eax,0x44b
   24d33:	e8 58 59 04 00       	call   play_wav
   24d38:	31 c0                	xor    eax,eax
   24d3a:	5a                   	pop    edx
   24d3b:	5b                   	pop    ebx
   24d3c:	c3                   	ret    
;-------------------------------------------------
;  Bad code 47 (zero after ret):                 -
;-------------------------------------------------
;  24d3b:	5b                   	pop    ebx
;  24d3c:	c3                   	ret    
;  24d3d:	00 00                	add    BYTE PTR [eax],al
;  24d3f:	00               	add    BYTE PTR [ebx+0x52],dl
;-------------------------------------------------
;  Padding data (3 bytes):                       -
;-------------------------------------------------
   24d3d:	00 00 00             	db     3 dup(0x00)
;-------------------------------------------------
;  End of bad code 47                            -
;-------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 52 (D:\SOURCE\curator.cpp)                                    -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 52: D:\SOURCE\curator.cpp                                            -
;                                                                              -
;-------------------------------------------------------------------------------
curator_cpp_variable_1:
    6520:	43 55 52 41 54 4f 52 00 	db     "CURATOR",0x00
curator_cpp_variable_2:
    6528:	43 55 52 41 54 4f 52 00 	db     "CURATOR",0x00
curator_cpp_variable_3:
    6530:	43 55 52 41 54 4f 52 00 	db     "CURATOR",0x00
curator_cpp_variable_4:
    6538:	43 55 52 41 54 4f 52 00 	db     "CURATOR",0x00
curator_cpp_variable_5:
    6540:	43 55 52 41 54 4f 52 00 	db     "CURATOR",0x00
curator_cpp_variable_6:
    6548:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    6549:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    654a:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
curator_cpp_variable_7:
    654b:	43 55 52 41 54 4f 52 00 	db     "CURATOR",0x00
    6553:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 52 (D:\SOURCE\curator.cpp)                                    -
;                                                                              -
;-------------------------------------------------------------------------------