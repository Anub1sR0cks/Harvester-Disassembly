;-------------------------------------------------------------------------------
;                                                                              -
;  Module 27: D:\SOURCE\madam.cpp                                              -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function 'talk_to_MADAM'                      -
;-------------------------------------------------
talk_to_MADAM:
   1adc0:	53                   	push   ebx
   1adc1:	52                   	push   edx
   1adc2:	b8 ec 39 00 00       	mov    eax,@obj3:madam_cpp_variable_1                               ; fixup: num: 3492, src obj: 1, src ofs: 0x1adc3, dst obj: 3, dst ofs: 0x39ec
   1adc7:	e8 c4 19 05 00       	call   check_script_flag
   1adcc:	84 c0                	test   al,al
   1adce:	0f 84 8c 01 00 00    	je     talk_to_MADAM_branch_5
   1add4:	b8 09 3a 00 00       	mov    eax,@obj3:madam_cpp_variable_2                               ; fixup: num: 3491, src obj: 1, src ofs: 0x1add5, dst obj: 3, dst ofs: 0x3a09
   1add9:	31 d2                	xor    edx,edx
   1addb:	bb 01 00 00 00       	mov    ebx,0x1
   1ade0:	e8 fb 19 05 00       	call   set_script_flag
   1ade5:	ba 26 3a 00 00       	mov    edx,@obj3:madam_cpp_variable_3                               ; fixup: num: 3490, src obj: 1, src ofs: 0x1ade6, dst obj: 3, dst ofs: 0x3a26
   1adea:	b8 37 15 00 00       	mov    eax,0x1537
   1adef:	e8 9c f8 04 00       	call   play_wav
   1adf4:	b8 fb 00 00 00       	mov    eax,0xfb
   1adf9:	e8 a2 f3 00 00       	call   GetDlgFileString
   1adfe:	e8 0d 01 05 00       	call   get_response
   1ae03:	83 f8 01             	cmp    eax,0x1
   1ae06:	0f 85 25 01 00 00    	jne    talk_to_MADAM_branch_3
   1ae0c:	ba 2c 3a 00 00       	mov    edx,@obj3:madam_cpp_variable_4                               ; fixup: num: 3489, src obj: 1, src ofs: 0x1ae0d, dst obj: 3, dst ofs: 0x3a2c
   1ae11:	89 c3                	mov    ebx,eax
   1ae13:	b8 42 15 00 00       	mov    eax,0x1542
   1ae18:	e8 73 f8 04 00       	call   play_wav
   1ae1d:	b8 32 3a 00 00       	mov    eax,@obj3:madam_cpp_variable_5                               ; fixup: num: 3488, src obj: 1, src ofs: 0x1ae1e, dst obj: 3, dst ofs: 0x3a32
   1ae22:	e8 49 1a 05 00       	call   check_inventory
   1ae27:	84 c0                	test   al,al
   1ae29:	0f 84 bd 00 00 00    	je     talk_to_MADAM_branch_2
   1ae2f:	b8 fc 00 00 00       	mov    eax,0xfc
   1ae34:	e8 67 f3 00 00       	call   GetDlgFileString
   1ae39:	e8 d2 00 05 00       	call   get_response
   1ae3e:	83 f8 01             	cmp    eax,0x1
   1ae41:	75 2f                	jne    talk_to_MADAM_branch_1
   1ae43:	ba 3d 3a 00 00       	mov    edx,@obj3:madam_cpp_variable_6                               ; fixup: num: 3487, src obj: 1, src ofs: 0x1ae44, dst obj: 3, dst ofs: 0x3a3d
   1ae48:	b8 4e 15 00 00       	mov    eax,0x154e
   1ae4d:	31 db                	xor    ebx,ebx
   1ae4f:	e8 3c f8 04 00       	call   play_wav
   1ae54:	bb 02 00 00 00       	mov    ebx,0x2
   1ae59:	ba 43 3a 00 00       	mov    edx,@obj3:madam_cpp_variable_7                               ; fixup: num: 3486, src obj: 1, src ofs: 0x1ae5a, dst obj: 3, dst ofs: 0x3a43
   1ae5e:	b8 7b 15 00 00       	mov    eax,0x157b
   1ae63:	e8 28 f8 04 00       	call   play_wav
   1ae68:	b8 49 3a 00 00       	mov    eax,@obj3:madam_cpp_variable_8                               ; fixup: num: 3485, src obj: 1, src ofs: 0x1ae69, dst obj: 3, dst ofs: 0x3a49
   1ae6d:	e9 e9 00 00 00       	jmp    talk_to_MADAM_branch_4
talk_to_MADAM_branch_1:
   1ae72:	83 f8 02             	cmp    eax,0x2
   1ae75:	0f 85 e5 00 00 00    	jne    talk_to_MADAM_branch_5
   1ae7b:	bb 01 00 00 00       	mov    ebx,0x1
   1ae80:	ba 50 3a 00 00       	mov    edx,@obj3:madam_cpp_variable_9                               ; fixup: num: 3420, src obj: 1, src ofs: 0x1ae81, dst obj: 3, dst ofs: 0x3a50
   1ae85:	b8 55 15 00 00       	mov    eax,0x1555
   1ae8a:	e8 01 f8 04 00       	call   play_wav
   1ae8f:	ba 56 3a 00 00       	mov    edx,@obj3:madam_cpp_variable_10                              ; fixup: num: 3419, src obj: 1, src ofs: 0x1ae90, dst obj: 3, dst ofs: 0x3a56
   1ae94:	b8 61 3a 00 00       	mov    eax,@obj3:madam_cpp_variable_11                              ; fixup: num: 3501, src obj: 1, src ofs: 0x1ae95, dst obj: 3, dst ofs: 0x3a61
   1ae99:	31 db                	xor    ebx,ebx
   1ae9b:	e8 70 80 03 00       	call   set_object
   1aea0:	b8 6b 3a 00 00       	mov    eax,@obj3:madam_cpp_variable_12                              ; fixup: num: 3500, src obj: 1, src ofs: 0x1aea1, dst obj: 3, dst ofs: 0x3a6b
   1aea5:	31 d2                	xor    edx,edx
   1aea7:	e8 a4 76 04 00       	call   play_fvi
   1aeac:	31 db                	xor    ebx,ebx
   1aeae:	ba 84 3a 00 00       	mov    edx,@obj3:madam_cpp_variable_13                              ; fixup: num: 3499, src obj: 1, src ofs: 0x1aeaf, dst obj: 3, dst ofs: 0x3a84
   1aeb3:	b8 5a 15 00 00       	mov    eax,0x155a
   1aeb8:	e8 d3 f7 04 00       	call   play_wav
   1aebd:	ba 8a 3a 00 00       	mov    edx,@obj3:madam_cpp_variable_14                              ; fixup: num: 3498, src obj: 1, src ofs: 0x1aebe, dst obj: 3, dst ofs: 0x3a8a
   1aec2:	b8 63 15 00 00       	mov    eax,0x1563
   1aec7:	31 db                	xor    ebx,ebx
   1aec9:	e8 c2 f7 04 00       	call   play_wav
   1aece:	e8 ed d8 00 00       	call   CU_OF_THE_PROSTITUTE_S_THIGHS_WITH_WEIRD_SORES
   1aed3:	b8 90 3a 00 00       	mov    eax,@obj3:madam_cpp_variable_15                              ; fixup: num: 3497, src obj: 1, src ofs: 0x1aed4, dst obj: 3, dst ofs: 0x3a90
   1aed8:	e8 a3 1c 05 00       	call   ExecuteCommand
   1aedd:	b8 9a 3a 00 00       	mov    eax,@obj3:madam_cpp_variable_16                              ; fixup: num: 3496, src obj: 1, src ofs: 0x1aede, dst obj: 3, dst ofs: 0x3a9a
   1aee2:	e8 99 1c 05 00       	call   ExecuteCommand
   1aee7:	31 c0                	xor    eax,eax
   1aee9:	5a                   	pop    edx
   1aeea:	5b                   	pop    ebx
   1aeeb:	c3                   	ret    
talk_to_MADAM_branch_2:
   1aeec:	ba a9 3a 00 00       	mov    edx,@obj3:madam_cpp_variable_17                              ; fixup: num: 3495, src obj: 1, src ofs: 0x1aeed, dst obj: 3, dst ofs: 0x3aa9
   1aef1:	b8 6e 15 00 00       	mov    eax,0x156e
   1aef6:	31 db                	xor    ebx,ebx
   1aef8:	e8 93 f7 04 00       	call   play_wav
   1aefd:	ba ac 3a 00 00       	mov    edx,@obj3:madam_cpp_variable_18                              ; fixup: num: 3494, src obj: 1, src ofs: 0x1aefe, dst obj: 3, dst ofs: 0x3aac
   1af02:	b8 72 15 00 00       	mov    eax,0x1572
   1af07:	31 db                	xor    ebx,ebx
   1af09:	e8 82 f7 04 00       	call   play_wav
   1af0e:	bb 02 00 00 00       	mov    ebx,0x2
   1af13:	ba b2 3a 00 00       	mov    edx,@obj3:madam_cpp_variable_19                              ; fixup: num: 3493, src obj: 1, src ofs: 0x1af14, dst obj: 3, dst ofs: 0x3ab2
   1af18:	b8 7b 15 00 00       	mov    eax,0x157b
   1af1d:	e8 6e f7 04 00       	call   play_wav
   1af22:	b8 b8 3a 00 00       	mov    eax,@obj3:madam_cpp_variable_20                              ; fixup: num: 3424, src obj: 1, src ofs: 0x1af23, dst obj: 3, dst ofs: 0x3ab8
   1af27:	e8 64 1b 05 00       	call   MonsterfyNpc
   1af2c:	31 c0                	xor    eax,eax
   1af2e:	5a                   	pop    edx
   1af2f:	5b                   	pop    ebx
   1af30:	c3                   	ret    
talk_to_MADAM_branch_3:
   1af31:	ba bf 3a 00 00       	mov    edx,@obj3:madam_cpp_variable_21                              ; fixup: num: 3423, src obj: 1, src ofs: 0x1af32, dst obj: 3, dst ofs: 0x3abf
   1af36:	b8 77 15 00 00       	mov    eax,0x1577
   1af3b:	31 db                	xor    ebx,ebx
   1af3d:	e8 4e f7 04 00       	call   play_wav
   1af42:	bb 02 00 00 00       	mov    ebx,0x2
   1af47:	ba c5 3a 00 00       	mov    edx,@obj3:madam_cpp_variable_22                              ; fixup: num: 3422, src obj: 1, src ofs: 0x1af48, dst obj: 3, dst ofs: 0x3ac5
   1af4c:	b8 7b 15 00 00       	mov    eax,0x157b
   1af51:	e8 3a f7 04 00       	call   play_wav
   1af56:	b8 cb 3a 00 00       	mov    eax,@obj3:madam_cpp_variable_23                              ; fixup: num: 3421, src obj: 1, src ofs: 0x1af57, dst obj: 3, dst ofs: 0x3acb
talk_to_MADAM_branch_4:
   1af5b:	e8 30 1b 05 00       	call   MonsterfyNpc
talk_to_MADAM_branch_5:
   1af60:	31 c0                	xor    eax,eax
   1af62:	5a                   	pop    edx
   1af63:	5b                   	pop    ebx
   1af64:	c3                   	ret    
;-------------------------------------------------
;  Bad code 25 (zero after ret):                 -
;-------------------------------------------------
;  1af63:	5b                   	pop    ebx
;  1af64:	c3                   	ret    
;  1af65:	00 00                	add    BYTE PTR [eax],al
;  1af67:	00 00                	add    BYTE PTR [eax],al
;-------------------------------------------------
;  Padding data (11 bytes):                      -
;-------------------------------------------------
   1af65:	00 00 00 00 00 00 .. 	db     11 dup(0x00)
;-------------------------------------------------
;  End of bad code 25                            -
;-------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 27 (D:\SOURCE\madam.cpp)                                      -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 27: D:\SOURCE\madam.cpp                                              -
;                                                                              -
;-------------------------------------------------------------------------------
madam_cpp_variable_1:
    39ec:	4d 41 44 41 4d 5f 49 4e 54 45 52 52 55 50 54 5f 43 4f 4e 56 45 52 53 41 54 49 4f 4e 00 	db     "MADAM_INTERRUPT_CONVERSATION",0x00
madam_cpp_variable_2:
    3a09:	4d 41 44 41 4d 5f 49 4e 54 45 52 52 55 50 54 5f 43 4f 4e 56 45 52 53 41 54 49 4f 4e 00 	db     "MADAM_INTERRUPT_CONVERSATION",0x00
madam_cpp_variable_3:
    3a26:	4d 41 44 41 4d 00    	db     "MADAM",0x00
madam_cpp_variable_4:
    3a2c:	4d 41 44 41 4d 00    	db     "MADAM",0x00
madam_cpp_variable_5:
    3a32:	42 41 52 43 41 53 48 32 30 30 00 	db     "BARCASH200",0x00
madam_cpp_variable_6:
    3a3d:	4d 41 44 41 4d 00    	db     "MADAM",0x00
madam_cpp_variable_7:
    3a43:	4d 41 44 41 4d 00    	db     "MADAM",0x00
madam_cpp_variable_8:
    3a49:	48 4f 4f 4b 45 52 00 	db     "HOOKER",0x00
madam_cpp_variable_9:
    3a50:	4d 41 44 41 4d 00    	db     "MADAM",0x00
madam_cpp_variable_10:
    3a56:	42 41 52 43 41 53 48 32 30 30 00 	db     "BARCASH200",0x00
madam_cpp_variable_11:
    3a61:	49 4e 56 45 4e 54 4f 52 59 00 	db     "INVENTORY",0x00
madam_cpp_variable_12:
    3a6b:	47 52 41 50 48 49 43 5c 46 53 54 5c 48 4f 41 52 4c 4f 56 45 2e 46 53 54 00 	db     "GRAPHIC\FST\HOARLOVE.FST",0x00
madam_cpp_variable_13:
    3a84:	4d 41 44 41 4d 00    	db     "MADAM",0x00
madam_cpp_variable_14:
    3a8a:	4d 41 44 41 4d 00    	db     "MADAM",0x00
madam_cpp_variable_15:
    3a90:	48 55 52 54 5f 50 43 5f 30 00 	db     "HURT_PC_0",0x00
madam_cpp_variable_16:
    3a9a:	41 43 54 56 5f 4c 55 53 54 5f 45 58 49 54 00 	db     "ACTV_LUST_EXIT",0x00
madam_cpp_variable_17:
    3aa9:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    3aaa:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    3aab:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
madam_cpp_variable_18:
    3aac:	4d 41 44 41 4d 00    	db     "MADAM",0x00
madam_cpp_variable_19:
    3ab2:	4d 41 44 41 4d 00    	db     "MADAM",0x00
madam_cpp_variable_20:
    3ab8:	48 4f 4f 4b 45 52 00 	db     "HOOKER",0x00
madam_cpp_variable_21:
    3abf:	4d 41 44 41 4d 00    	db     "MADAM",0x00
madam_cpp_variable_22:
    3ac5:	4d 41 44 41 4d 00    	db     "MADAM",0x00
madam_cpp_variable_23:
    3acb:	48 4f 4f 4b 45 52 00 	db     "HOOKER",0x00
    3ad2:	00 00                	db     2 dup(0x00)                                                  ; dec:   0, chr: '\0'

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 27 (D:\SOURCE\madam.cpp)                                      -
;                                                                              -
;-------------------------------------------------------------------------------