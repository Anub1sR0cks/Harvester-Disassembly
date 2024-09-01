;-------------------------------------------------------------------------------
;                                                                              -
;  Module 25: D:\SOURCE\ms_phelp.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function 'talk_to_MRS_PHELPS'                 -
;-------------------------------------------------
talk_to_MRS_PHELPS:
   19920:	53                   	push   ebx
   19921:	51                   	push   ecx
   19922:	52                   	push   edx
   19923:	56                   	push   esi
   19924:	57                   	push   edi
   19925:	55                   	push   ebp
   19926:	8b 15 bc 94 02 00    	mov    edx,DWORD PTR ds:@obj3:showing_item                          ; fixup: num: 3343, src obj: 1, src ofs: 0x19928, dst obj: 3, dst ofs: 0x294bc
   1992c:	85 d2                	test   edx,edx
   1992e:	0f 84 6a 02 00 00    	je     talk_to_MRS_PHELPS_branch_11
   19934:	89 d0                	mov    eax,edx
   19936:	ba 68 33 00 00       	mov    edx,@obj3:ms_phelp_cpp_variable_1                            ; fixup: num: 3342, src obj: 1, src ofs: 0x19937, dst obj: 3, dst ofs: 0x3368
   1993b:	e8 f0 ca 05 00       	call   strcmp_
   19940:	85 c0                	test   eax,eax
   19942:	75 43                	jne    talk_to_MRS_PHELPS_branch_1
   19944:	ba 01 00 00 00       	mov    edx,0x1
   19949:	bb 04 00 00 00       	mov    ebx,0x4
   1994e:	e8 1d ea 00 00       	call   SHOWN_PHOTO_OF_WHALEY_HERRILL_AROUND
   19953:	ba 80 33 00 00       	mov    edx,@obj3:ms_phelp_cpp_variable_2                            ; fixup: num: 3341, src obj: 1, src ofs: 0x19954, dst obj: 3, dst ofs: 0x3380
   19958:	b8 0c 1c 00 00       	mov    eax,0x1c0c
   1995d:	e8 2e 0d 05 00       	call   play_wav
   19962:	ba 87 33 00 00       	mov    edx,@obj3:ms_phelp_cpp_variable_3                            ; fixup: num: 3340, src obj: 1, src ofs: 0x19963, dst obj: 3, dst ofs: 0x3387
   19967:	b8 13 1c 00 00       	mov    eax,0x1c13
   1996c:	31 db                	xor    ebx,ebx
   1996e:	e8 1d 0d 05 00       	call   play_wav
   19973:	bb 04 00 00 00       	mov    ebx,0x4
   19978:	ba 8a 33 00 00       	mov    edx,@obj3:ms_phelp_cpp_variable_4                            ; fixup: num: 3339, src obj: 1, src ofs: 0x19979, dst obj: 3, dst ofs: 0x338a
   1997d:	b8 17 1c 00 00       	mov    eax,0x1c17
   19982:	e9 09 02 00 00       	jmp    talk_to_MRS_PHELPS_branch_10
talk_to_MRS_PHELPS_branch_1:
   19987:	ba 91 33 00 00       	mov    edx,@obj3:ms_phelp_cpp_variable_5                            ; fixup: num: 3338, src obj: 1, src ofs: 0x19988, dst obj: 3, dst ofs: 0x3391
   1998c:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 3337, src obj: 1, src ofs: 0x1998d, dst obj: 3, dst ofs: 0x294bc
   19991:	e8 9a ca 05 00       	call   strcmp_
   19996:	85 c0                	test   eax,eax
   19998:	74 13                	je     talk_to_MRS_PHELPS_branch_2
   1999a:	ba 9e 33 00 00       	mov    edx,@obj3:ms_phelp_cpp_variable_6                            ; fixup: num: 3336, src obj: 1, src ofs: 0x1999b, dst obj: 3, dst ofs: 0x339e
   1999f:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 3335, src obj: 1, src ofs: 0x199a0, dst obj: 3, dst ofs: 0x294bc
   199a4:	e8 87 ca 05 00       	call   strcmp_
   199a9:	85 c0                	test   eax,eax
   199ab:	75 6c                	jne    talk_to_MRS_PHELPS_branch_3
talk_to_MRS_PHELPS_branch_2:
   199ad:	ba 01 00 00 00       	mov    edx,0x1
   199b2:	31 c0                	xor    eax,eax
   199b4:	bb 02 00 00 00       	mov    ebx,0x2
   199b9:	e8 a2 e9 00 00       	call   SHOWN_PHOTO_OF_CORPSE_AROUND
   199be:	ba af 33 00 00       	mov    edx,@obj3:ms_phelp_cpp_variable_7                            ; fixup: num: 3334, src obj: 1, src ofs: 0x199bf, dst obj: 3, dst ofs: 0x33af
   199c3:	b8 1e 1c 00 00       	mov    eax,0x1c1e
   199c8:	e8 c3 0c 05 00       	call   play_wav
   199cd:	ba b6 33 00 00       	mov    edx,@obj3:ms_phelp_cpp_variable_8                            ; fixup: num: 3221, src obj: 1, src ofs: 0x199ce, dst obj: 3, dst ofs: 0x33b6
   199d2:	b8 22 1c 00 00       	mov    eax,0x1c22
   199d7:	31 db                	xor    ebx,ebx
   199d9:	e8 b2 0c 05 00       	call   play_wav
   199de:	ba b9 33 00 00       	mov    edx,@obj3:ms_phelp_cpp_variable_9                            ; fixup: num: 3220, src obj: 1, src ofs: 0x199df, dst obj: 3, dst ofs: 0x33b9
   199e3:	b8 27 1c 00 00       	mov    eax,0x1c27
   199e8:	31 db                	xor    ebx,ebx
   199ea:	e8 a1 0c 05 00       	call   play_wav
   199ef:	ba c0 33 00 00       	mov    edx,@obj3:ms_phelp_cpp_variable_10                           ; fixup: num: 3219, src obj: 1, src ofs: 0x199f0, dst obj: 3, dst ofs: 0x33c0
   199f4:	b8 2c 1c 00 00       	mov    eax,0x1c2c
   199f9:	31 db                	xor    ebx,ebx
   199fb:	e8 90 0c 05 00       	call   play_wav
   19a00:	bb 02 00 00 00       	mov    ebx,0x2
   19a05:	ba c3 33 00 00       	mov    edx,@obj3:ms_phelp_cpp_variable_11                           ; fixup: num: 3218, src obj: 1, src ofs: 0x19a06, dst obj: 3, dst ofs: 0x33c3
   19a0a:	b8 30 1c 00 00       	mov    eax,0x1c30
   19a0f:	e8 7c 0c 05 00       	call   play_wav
   19a14:	e9 ce 06 00 00       	jmp    talk_to_MRS_PHELPS_branch_35
talk_to_MRS_PHELPS_branch_3:
   19a19:	ba ca 33 00 00       	mov    edx,@obj3:ms_phelp_cpp_variable_12                           ; fixup: num: 3351, src obj: 1, src ofs: 0x19a1a, dst obj: 3, dst ofs: 0x33ca
   19a1e:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 3350, src obj: 1, src ofs: 0x19a1f, dst obj: 3, dst ofs: 0x294bc
   19a23:	e8 08 ca 05 00       	call   strcmp_
   19a28:	85 c0                	test   eax,eax
   19a2a:	74 13                	je     talk_to_MRS_PHELPS_branch_4
   19a2c:	ba d1 33 00 00       	mov    edx,@obj3:ms_phelp_cpp_variable_13                           ; fixup: num: 3349, src obj: 1, src ofs: 0x19a2d, dst obj: 3, dst ofs: 0x33d1
   19a31:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 3348, src obj: 1, src ofs: 0x19a32, dst obj: 3, dst ofs: 0x294bc
   19a36:	e8 f5 c9 05 00       	call   strcmp_
   19a3b:	85 c0                	test   eax,eax
   19a3d:	75 34                	jne    talk_to_MRS_PHELPS_branch_5
talk_to_MRS_PHELPS_branch_4:
   19a3f:	b8 d9 33 00 00       	mov    eax,@obj3:ms_phelp_cpp_variable_14                           ; fixup: num: 3347, src obj: 1, src ofs: 0x19a40, dst obj: 3, dst ofs: 0x33d9
   19a44:	e8 47 2d 05 00       	call   check_script_flag
   19a49:	84 c0                	test   al,al
   19a4b:	74 26                	je     talk_to_MRS_PHELPS_branch_5
   19a4d:	ba 01 00 00 00       	mov    edx,0x1
   19a52:	31 c0                	xor    eax,eax
   19a54:	e8 f7 e8 00 00       	call   SHOWN_LEDGERS_TO_ANYONE_OTHER_THAN_SHERIFF
   19a59:	31 db                	xor    ebx,ebx
   19a5b:	ba eb 33 00 00       	mov    edx,@obj3:ms_phelp_cpp_variable_15                           ; fixup: num: 3346, src obj: 1, src ofs: 0x19a5c, dst obj: 3, dst ofs: 0x33eb
   19a60:	b8 36 1c 00 00       	mov    eax,0x1c36
   19a65:	e8 26 0c 05 00       	call   play_wav
   19a6a:	31 c0                	xor    eax,eax
   19a6c:	5d                   	pop    ebp
   19a6d:	5f                   	pop    edi
   19a6e:	5e                   	pop    esi
   19a6f:	5a                   	pop    edx
   19a70:	59                   	pop    ecx
   19a71:	5b                   	pop    ebx
   19a72:	c3                   	ret    
talk_to_MRS_PHELPS_branch_5:
   19a73:	ba f2 33 00 00       	mov    edx,@obj3:ms_phelp_cpp_variable_16                           ; fixup: num: 3345, src obj: 1, src ofs: 0x19a74, dst obj: 3, dst ofs: 0x33f2
   19a78:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 3344, src obj: 1, src ofs: 0x19a79, dst obj: 3, dst ofs: 0x294bc
   19a7d:	e8 ae c9 05 00       	call   strcmp_
   19a82:	85 c0                	test   eax,eax
   19a84:	74 39                	je     talk_to_MRS_PHELPS_branch_6
   19a86:	ba f7 33 00 00       	mov    edx,@obj3:ms_phelp_cpp_variable_17                           ; fixup: num: 3233, src obj: 1, src ofs: 0x19a87, dst obj: 3, dst ofs: 0x33f7
   19a8b:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 3232, src obj: 1, src ofs: 0x19a8c, dst obj: 3, dst ofs: 0x294bc
   19a90:	e8 9b c9 05 00       	call   strcmp_
   19a95:	85 c0                	test   eax,eax
   19a97:	74 26                	je     talk_to_MRS_PHELPS_branch_6
   19a99:	ba 06 34 00 00       	mov    edx,@obj3:ms_phelp_cpp_variable_18                           ; fixup: num: 3231, src obj: 1, src ofs: 0x19a9a, dst obj: 3, dst ofs: 0x3406
   19a9e:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 3230, src obj: 1, src ofs: 0x19a9f, dst obj: 3, dst ofs: 0x294bc
   19aa3:	e8 88 c9 05 00       	call   strcmp_
   19aa8:	85 c0                	test   eax,eax
   19aaa:	74 13                	je     talk_to_MRS_PHELPS_branch_6
   19aac:	ba 10 34 00 00       	mov    edx,@obj3:ms_phelp_cpp_variable_19                           ; fixup: num: 3229, src obj: 1, src ofs: 0x19aad, dst obj: 3, dst ofs: 0x3410
   19ab1:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 3228, src obj: 1, src ofs: 0x19ab2, dst obj: 3, dst ofs: 0x294bc
   19ab6:	e8 75 c9 05 00       	call   strcmp_
   19abb:	85 c0                	test   eax,eax
   19abd:	75 29                	jne    talk_to_MRS_PHELPS_branch_7
talk_to_MRS_PHELPS_branch_6:
   19abf:	ba 01 00 00 00       	mov    edx,0x1
   19ac4:	31 c0                	xor    eax,eax
   19ac6:	bb 01 00 00 00       	mov    ebx,0x1
   19acb:	e8 60 e8 00 00       	call   SHOWN_EVIDENCE_OF_BLACKMAIL_AROUND
   19ad0:	ba 24 34 00 00       	mov    edx,@obj3:ms_phelp_cpp_variable_20                           ; fixup: num: 3227, src obj: 1, src ofs: 0x19ad1, dst obj: 3, dst ofs: 0x3424
   19ad5:	b8 3d 1c 00 00       	mov    eax,0x1c3d
   19ada:	e8 b1 0b 05 00       	call   play_wav
   19adf:	31 c0                	xor    eax,eax
   19ae1:	5d                   	pop    ebp
   19ae2:	5f                   	pop    edi
   19ae3:	5e                   	pop    esi
   19ae4:	5a                   	pop    edx
   19ae5:	59                   	pop    ecx
   19ae6:	5b                   	pop    ebx
   19ae7:	c3                   	ret    
talk_to_MRS_PHELPS_branch_7:
   19ae8:	ba 2b 34 00 00       	mov    edx,@obj3:ms_phelp_cpp_variable_21                           ; fixup: num: 3226, src obj: 1, src ofs: 0x19ae9, dst obj: 3, dst ofs: 0x342b
   19aed:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 3225, src obj: 1, src ofs: 0x19aee, dst obj: 3, dst ofs: 0x294bc
   19af2:	e8 39 c9 05 00       	call   strcmp_
   19af7:	85 c0                	test   eax,eax
   19af9:	75 56                	jne    talk_to_MRS_PHELPS_branch_8
   19afb:	b8 33 34 00 00       	mov    eax,@obj3:ms_phelp_cpp_variable_22                           ; fixup: num: 3224, src obj: 1, src ofs: 0x19afc, dst obj: 3, dst ofs: 0x3433
   19b00:	bb 04 00 00 00       	mov    ebx,0x4
   19b05:	ba 3f 34 00 00       	mov    edx,@obj3:ms_phelp_cpp_variable_23                           ; fixup: num: 3223, src obj: 1, src ofs: 0x19b06, dst obj: 3, dst ofs: 0x343f
   19b0a:	e8 71 30 05 00       	call   ExecuteCommand
   19b0f:	b8 a4 1b 00 00       	mov    eax,0x1ba4
   19b14:	e8 77 0b 05 00       	call   play_wav
   19b19:	ba 46 34 00 00       	mov    edx,@obj3:ms_phelp_cpp_variable_24                           ; fixup: num: 3222, src obj: 1, src ofs: 0x19b1a, dst obj: 3, dst ofs: 0x3446
   19b1e:	b8 ac 1b 00 00       	mov    eax,0x1bac
   19b23:	31 db                	xor    ebx,ebx
   19b25:	e8 66 0b 05 00       	call   play_wav
   19b2a:	bb 01 00 00 00       	mov    ebx,0x1
   19b2f:	ba 49 34 00 00       	mov    edx,@obj3:ms_phelp_cpp_variable_25                           ; fixup: num: 3244, src obj: 1, src ofs: 0x19b30, dst obj: 3, dst ofs: 0x3449
   19b34:	b8 b0 1b 00 00       	mov    eax,0x1bb0
   19b39:	e8 52 0b 05 00       	call   play_wav
   19b3e:	b8 50 34 00 00       	mov    eax,@obj3:ms_phelp_cpp_variable_26                           ; fixup: num: 3243, src obj: 1, src ofs: 0x19b3f, dst obj: 3, dst ofs: 0x3450
   19b43:	e8 38 30 05 00       	call   ExecuteCommand
   19b48:	31 c0                	xor    eax,eax
   19b4a:	5d                   	pop    ebp
   19b4b:	5f                   	pop    edi
   19b4c:	5e                   	pop    esi
   19b4d:	5a                   	pop    edx
   19b4e:	59                   	pop    ecx
   19b4f:	5b                   	pop    ebx
   19b50:	c3                   	ret    
talk_to_MRS_PHELPS_branch_8:
   19b51:	ba 5c 34 00 00       	mov    edx,@obj3:ms_phelp_cpp_variable_27                           ; fixup: num: 3242, src obj: 1, src ofs: 0x19b52, dst obj: 3, dst ofs: 0x345c
   19b56:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 3241, src obj: 1, src ofs: 0x19b57, dst obj: 3, dst ofs: 0x294bc
   19b5b:	e8 d0 c8 05 00       	call   strcmp_
   19b60:	85 c0                	test   eax,eax
   19b62:	75 1d                	jne    talk_to_MRS_PHELPS_branch_9
   19b64:	b8 69 34 00 00       	mov    eax,@obj3:ms_phelp_cpp_variable_28                           ; fixup: num: 3240, src obj: 1, src ofs: 0x19b65, dst obj: 3, dst ofs: 0x3469
   19b69:	e8 12 30 05 00       	call   ExecuteCommand
   19b6e:	b8 7d 34 00 00       	mov    eax,@obj3:ms_phelp_cpp_variable_29                           ; fixup: num: 3239, src obj: 1, src ofs: 0x19b6f, dst obj: 3, dst ofs: 0x347d
   19b73:	e8 08 30 05 00       	call   ExecuteCommand
   19b78:	31 c0                	xor    eax,eax
   19b7a:	5d                   	pop    ebp
   19b7b:	5f                   	pop    edi
   19b7c:	5e                   	pop    esi
   19b7d:	5a                   	pop    edx
   19b7e:	59                   	pop    ecx
   19b7f:	5b                   	pop    ebx
   19b80:	c3                   	ret    
talk_to_MRS_PHELPS_branch_9:
   19b81:	bb 01 00 00 00       	mov    ebx,0x1
   19b86:	ba 8e 34 00 00       	mov    edx,@obj3:ms_phelp_cpp_variable_30                           ; fixup: num: 3238, src obj: 1, src ofs: 0x19b87, dst obj: 3, dst ofs: 0x348e
   19b8b:	b8 06 1c 00 00       	mov    eax,0x1c06
talk_to_MRS_PHELPS_branch_10:
   19b90:	e8 fb 0a 05 00       	call   play_wav
   19b95:	31 c0                	xor    eax,eax
   19b97:	5d                   	pop    ebp
   19b98:	5f                   	pop    edi
   19b99:	5e                   	pop    esi
   19b9a:	5a                   	pop    edx
   19b9b:	59                   	pop    ecx
   19b9c:	5b                   	pop    ebx
   19b9d:	c3                   	ret    
talk_to_MRS_PHELPS_branch_11:
   19b9e:	a1 48 2c 02 00       	mov    eax,ds:@obj3:MRS_PHELPS                                      ; fixup: num: 3237, src obj: 1, src ofs: 0x19b9f, dst obj: 3, dst ofs: 0x22c48
   19ba3:	85 c0                	test   eax,eax
   19ba5:	0f 84 ee 00 00 00    	je     talk_to_MRS_PHELPS_branch_14
   19bab:	bb 01 00 00 00       	mov    ebx,0x1
   19bb0:	b8 44 1b 00 00       	mov    eax,0x1b44
   19bb5:	89 15 48 2c 02 00    	mov    DWORD PTR ds:@obj3:MRS_PHELPS,edx                            ; fixup: num: 3236, src obj: 1, src ofs: 0x19bb7, dst obj: 3, dst ofs: 0x22c48
   19bbb:	ba 95 34 00 00       	mov    edx,@obj3:ms_phelp_cpp_variable_31                           ; fixup: num: 3235, src obj: 1, src ofs: 0x19bbc, dst obj: 3, dst ofs: 0x3495
   19bc0:	e8 cb 0a 05 00       	call   play_wav
   19bc5:	ba 9c 34 00 00       	mov    edx,@obj3:ms_phelp_cpp_variable_32                           ; fixup: num: 3234, src obj: 1, src ofs: 0x19bc6, dst obj: 3, dst ofs: 0x349c
   19bca:	b8 48 1b 00 00       	mov    eax,0x1b48
   19bcf:	31 db                	xor    ebx,ebx
   19bd1:	e8 ba 0a 05 00       	call   play_wav
   19bd6:	ba 9f 34 00 00       	mov    edx,@obj3:ms_phelp_cpp_variable_33                           ; fixup: num: 3253, src obj: 1, src ofs: 0x19bd7, dst obj: 3, dst ofs: 0x349f
   19bdb:	b8 4c 1b 00 00       	mov    eax,0x1b4c
   19be0:	31 db                	xor    ebx,ebx
   19be2:	e8 a9 0a 05 00       	call   play_wav
   19be7:	ba a6 34 00 00       	mov    edx,@obj3:ms_phelp_cpp_variable_34                           ; fixup: num: 3252, src obj: 1, src ofs: 0x19be8, dst obj: 3, dst ofs: 0x34a6
   19bec:	b8 52 1b 00 00       	mov    eax,0x1b52
   19bf1:	31 db                	xor    ebx,ebx
   19bf3:	e8 98 0a 05 00       	call   play_wav
   19bf8:	bb 01 00 00 00       	mov    ebx,0x1
   19bfd:	ba a9 34 00 00       	mov    edx,@obj3:ms_phelp_cpp_variable_35                           ; fixup: num: 3251, src obj: 1, src ofs: 0x19bfe, dst obj: 3, dst ofs: 0x34a9
   19c02:	b8 56 1b 00 00       	mov    eax,0x1b56
   19c07:	e8 84 0a 05 00       	call   play_wav
   19c0c:	ba 01 00 00 00       	mov    edx,0x1
   19c11:	31 c0                	xor    eax,eax
   19c13:	e8 c8 e7 00 00       	call   IF_SOMEONE_ELSE_HAS_SAID_THAT
   19c18:	31 db                	xor    ebx,ebx
   19c1a:	ba b0 34 00 00       	mov    edx,@obj3:ms_phelp_cpp_variable_36                           ; fixup: num: 3250, src obj: 1, src ofs: 0x19c1b, dst obj: 3, dst ofs: 0x34b0
   19c1f:	b8 5a 1b 00 00       	mov    eax,0x1b5a
   19c24:	e8 67 0a 05 00       	call   play_wav
   19c29:	ba b3 34 00 00       	mov    edx,@obj3:ms_phelp_cpp_variable_37                           ; fixup: num: 3249, src obj: 1, src ofs: 0x19c2a, dst obj: 3, dst ofs: 0x34b3
   19c2e:	b8 5e 1b 00 00       	mov    eax,0x1b5e
   19c33:	31 db                	xor    ebx,ebx
   19c35:	e8 56 0a 05 00       	call   play_wav
   19c3a:	b8 01 00 00 00       	mov    eax,0x1
   19c3f:	31 d2                	xor    edx,edx
   19c41:	e8 ca e6 00 00       	call   SEEN_FATHER
   19c46:	85 c0                	test   eax,eax
   19c48:	75 2a                	jne    talk_to_MRS_PHELPS_branch_13
   19c4a:	b8 ba 34 00 00       	mov    eax,@obj3:ms_phelp_cpp_variable_38                           ; fixup: num: 3248, src obj: 1, src ofs: 0x19c4b, dst obj: 3, dst ofs: 0x34ba
   19c4f:	e8 3c 2b 05 00       	call   check_script_flag
   19c54:	84 c0                	test   al,al
   19c56:	74 0e                	je     talk_to_MRS_PHELPS_branch_12
   19c58:	ba c9 34 00 00       	mov    edx,@obj3:ms_phelp_cpp_variable_39                           ; fixup: num: 3247, src obj: 1, src ofs: 0x19c59, dst obj: 3, dst ofs: 0x34c9
   19c5d:	b8 6b 1b 00 00       	mov    eax,0x1b6b
   19c62:	31 db                	xor    ebx,ebx
   19c64:	eb 42                	jmp    talk_to_MRS_PHELPS_branch_15
talk_to_MRS_PHELPS_branch_12:
   19c66:	ba cc 34 00 00       	mov    edx,@obj3:ms_phelp_cpp_variable_40                           ; fixup: num: 3246, src obj: 1, src ofs: 0x19c67, dst obj: 3, dst ofs: 0x34cc
   19c6b:	b8 67 1b 00 00       	mov    eax,0x1b67
   19c70:	31 db                	xor    ebx,ebx
   19c72:	eb 34                	jmp    talk_to_MRS_PHELPS_branch_15
talk_to_MRS_PHELPS_branch_13:
   19c74:	bb 03 00 00 00       	mov    ebx,0x3
   19c79:	ba cf 34 00 00       	mov    edx,@obj3:ms_phelp_cpp_variable_41                           ; fixup: num: 3245, src obj: 1, src ofs: 0x19c7a, dst obj: 3, dst ofs: 0x34cf
   19c7e:	b8 70 1b 00 00       	mov    eax,0x1b70
   19c83:	e8 08 0a 05 00       	call   play_wav
   19c88:	bb 01 00 00 00       	mov    ebx,0x1
   19c8d:	ba d2 34 00 00       	mov    edx,@obj3:ms_phelp_cpp_variable_42                           ; fixup: num: 3261, src obj: 1, src ofs: 0x19c8e, dst obj: 3, dst ofs: 0x34d2
   19c92:	b8 75 1b 00 00       	mov    eax,0x1b75
   19c97:	eb 0f                	jmp    talk_to_MRS_PHELPS_branch_15
talk_to_MRS_PHELPS_branch_14:
   19c99:	bb 01 00 00 00       	mov    ebx,0x1
   19c9e:	ba d9 34 00 00       	mov    edx,@obj3:ms_phelp_cpp_variable_43                           ; fixup: num: 3260, src obj: 1, src ofs: 0x19c9f, dst obj: 3, dst ofs: 0x34d9
   19ca3:	b8 f4 1b 00 00       	mov    eax,0x1bf4
talk_to_MRS_PHELPS_branch_15:
   19ca8:	e8 e3 09 05 00       	call   play_wav
   19cad:	e8 0e ef 00 00       	call   get_day
   19cb2:	83 f8 05             	cmp    eax,0x5
   19cb5:	7d 5e                	jge    talk_to_MRS_PHELPS_branch_18
   19cb7:	bb 01 00 00 00       	mov    ebx,0x1
   19cbc:	ba e0 34 00 00       	mov    edx,@obj3:ms_phelp_cpp_variable_44                           ; fixup: num: 3259, src obj: 1, src ofs: 0x19cbd, dst obj: 3, dst ofs: 0x34e0
   19cc1:	b8 7b 1b 00 00       	mov    eax,0x1b7b
   19cc6:	e8 c5 09 05 00       	call   play_wav
   19ccb:	b8 2a 02 00 00       	mov    eax,0x22a
   19cd0:	e8 cb 04 01 00       	call   GetDlgFileString
   19cd5:	e8 36 12 05 00       	call   get_response
   19cda:	83 f8 01             	cmp    eax,0x1
   19cdd:	75 0e                	jne    talk_to_MRS_PHELPS_branch_16
   19cdf:	ba e7 34 00 00       	mov    edx,@obj3:ms_phelp_cpp_variable_45                           ; fixup: num: 3258, src obj: 1, src ofs: 0x19ce0, dst obj: 3, dst ofs: 0x34e7
   19ce4:	b8 85 1b 00 00       	mov    eax,0x1b85
   19ce9:	31 db                	xor    ebx,ebx
   19ceb:	eb 23                	jmp    talk_to_MRS_PHELPS_branch_17
talk_to_MRS_PHELPS_branch_16:
   19ced:	bb 01 00 00 00       	mov    ebx,0x1
   19cf2:	ba ee 34 00 00       	mov    edx,@obj3:ms_phelp_cpp_variable_46                           ; fixup: num: 3257, src obj: 1, src ofs: 0x19cf3, dst obj: 3, dst ofs: 0x34ee
   19cf7:	b8 bc 1b 00 00       	mov    eax,0x1bbc
   19cfc:	e8 8f 09 05 00       	call   play_wav
   19d01:	bb 01 00 00 00       	mov    ebx,0x1
   19d06:	ba f5 34 00 00       	mov    edx,@obj3:ms_phelp_cpp_variable_47                           ; fixup: num: 3256, src obj: 1, src ofs: 0x19d07, dst obj: 3, dst ofs: 0x34f5
   19d0b:	b8 44 1c 00 00       	mov    eax,0x1c44
talk_to_MRS_PHELPS_branch_17:
   19d10:	e8 7b 09 05 00       	call   play_wav
talk_to_MRS_PHELPS_branch_18:
   19d15:	b8 fc 34 00 00       	mov    eax,@obj3:ms_phelp_cpp_variable_48                           ; fixup: num: 3255, src obj: 1, src ofs: 0x19d16, dst obj: 3, dst ofs: 0x34fc
   19d1a:	e8 71 2a 05 00       	call   check_script_flag
   19d1f:	84 c0                	test   al,al
   19d21:	74 28                	je     talk_to_MRS_PHELPS_branch_19
   19d23:	83 3d 4c 2c 02 00 00 	cmp    DWORD PTR ds:@obj3:MRS_PHELPS_variable_1,0x0                 ; fixup: num: 3254, src obj: 1, src ofs: 0x19d25, dst obj: 3, dst ofs: 0x22c4c
   19d2a:	75 1f                	jne    talk_to_MRS_PHELPS_branch_19
   19d2c:	be 01 00 00 00       	mov    esi,0x1
   19d31:	bb 03 00 00 00       	mov    ebx,0x3
   19d36:	ba 11 35 00 00       	mov    edx,@obj3:ms_phelp_cpp_variable_49                           ; fixup: num: 3273, src obj: 1, src ofs: 0x19d37, dst obj: 3, dst ofs: 0x3511
   19d3b:	b8 4a 1c 00 00       	mov    eax,0x1c4a
   19d40:	89 35 4c 2c 02 00    	mov    DWORD PTR ds:@obj3:MRS_PHELPS_variable_1,esi                 ; fixup: num: 3272, src obj: 1, src ofs: 0x19d42, dst obj: 3, dst ofs: 0x22c4c
   19d46:	e8 45 09 05 00       	call   play_wav
talk_to_MRS_PHELPS_branch_19:
   19d4b:	e8 70 ee 00 00       	call   get_day
   19d50:	83 f8 05             	cmp    eax,0x5
   19d53:	75 28                	jne    talk_to_MRS_PHELPS_branch_20
   19d55:	83 3d 50 2c 02 00 00 	cmp    DWORD PTR ds:@obj3:MRS_PHELPS_variable_2,0x0                 ; fixup: num: 3271, src obj: 1, src ofs: 0x19d57, dst obj: 3, dst ofs: 0x22c50
   19d5c:	75 1f                	jne    talk_to_MRS_PHELPS_branch_20
   19d5e:	bd 01 00 00 00       	mov    ebp,0x1
   19d63:	bb 02 00 00 00       	mov    ebx,0x2
   19d68:	ba 18 35 00 00       	mov    edx,@obj3:ms_phelp_cpp_variable_50                           ; fixup: num: 3270, src obj: 1, src ofs: 0x19d69, dst obj: 3, dst ofs: 0x3518
   19d6d:	b8 56 1c 00 00       	mov    eax,0x1c56
   19d72:	89 2d 50 2c 02 00    	mov    DWORD PTR ds:@obj3:MRS_PHELPS_variable_2,ebp                 ; fixup: num: 3269, src obj: 1, src ofs: 0x19d74, dst obj: 3, dst ofs: 0x22c50
   19d78:	e8 13 09 05 00       	call   play_wav
talk_to_MRS_PHELPS_branch_20:
   19d7d:	b8 1f 35 00 00       	mov    eax,@obj3:ms_phelp_cpp_variable_51                           ; fixup: num: 3268, src obj: 1, src ofs: 0x19d7e, dst obj: 3, dst ofs: 0x351f
   19d82:	e8 09 2a 05 00       	call   check_script_flag
   19d87:	84 c0                	test   al,al
   19d89:	74 28                	je     talk_to_MRS_PHELPS_branch_21
   19d8b:	83 3d 54 2c 02 00 00 	cmp    DWORD PTR ds:@obj3:MRS_PHELPS_variable_3,0x0                 ; fixup: num: 3267, src obj: 1, src ofs: 0x19d8d, dst obj: 3, dst ofs: 0x22c54
   19d92:	75 1f                	jne    talk_to_MRS_PHELPS_branch_21
   19d94:	ba 01 00 00 00       	mov    edx,0x1
   19d99:	bb 04 00 00 00       	mov    ebx,0x4
   19d9e:	b8 65 1c 00 00       	mov    eax,0x1c65
   19da3:	89 15 54 2c 02 00    	mov    DWORD PTR ds:@obj3:MRS_PHELPS_variable_3,edx                 ; fixup: num: 3266, src obj: 1, src ofs: 0x19da5, dst obj: 3, dst ofs: 0x22c54
   19da9:	ba 30 35 00 00       	mov    edx,@obj3:ms_phelp_cpp_variable_52                           ; fixup: num: 3265, src obj: 1, src ofs: 0x19daa, dst obj: 3, dst ofs: 0x3530
   19dae:	e8 dd 08 05 00       	call   play_wav
talk_to_MRS_PHELPS_branch_21:
   19db3:	b8 37 35 00 00       	mov    eax,@obj3:ms_phelp_cpp_variable_53                           ; fixup: num: 3264, src obj: 1, src ofs: 0x19db4, dst obj: 3, dst ofs: 0x3537
   19db8:	e8 d3 29 05 00       	call   check_script_flag
   19dbd:	84 c0                	test   al,al
   19dbf:	74 3c                	je     talk_to_MRS_PHELPS_branch_22
   19dc1:	83 3d 58 2c 02 00 00 	cmp    DWORD PTR ds:@obj3:MRS_PHELPS_variable_4,0x0                 ; fixup: num: 3263, src obj: 1, src ofs: 0x19dc3, dst obj: 3, dst ofs: 0x22c58
   19dc8:	75 33                	jne    talk_to_MRS_PHELPS_branch_22
   19dca:	b9 01 00 00 00       	mov    ecx,0x1
   19dcf:	bb 02 00 00 00       	mov    ebx,0x2
   19dd4:	ba 4a 35 00 00       	mov    edx,@obj3:ms_phelp_cpp_variable_54                           ; fixup: num: 3262, src obj: 1, src ofs: 0x19dd5, dst obj: 3, dst ofs: 0x354a
   19dd9:	b8 6e 1c 00 00       	mov    eax,0x1c6e
   19dde:	89 0d 58 2c 02 00    	mov    DWORD PTR ds:@obj3:MRS_PHELPS_variable_4,ecx                 ; fixup: num: 3191, src obj: 1, src ofs: 0x19de0, dst obj: 3, dst ofs: 0x22c58
   19de4:	e8 a7 08 05 00       	call   play_wav
   19de9:	bb 04 00 00 00       	mov    ebx,0x4
   19dee:	ba 51 35 00 00       	mov    edx,@obj3:ms_phelp_cpp_variable_55                           ; fixup: num: 3285, src obj: 1, src ofs: 0x19def, dst obj: 3, dst ofs: 0x3551
   19df3:	b8 73 1c 00 00       	mov    eax,0x1c73
   19df8:	e8 93 08 05 00       	call   play_wav
talk_to_MRS_PHELPS_branch_22:
   19dfd:	b8 58 35 00 00       	mov    eax,@obj3:ms_phelp_cpp_variable_56                           ; fixup: num: 3284, src obj: 1, src ofs: 0x19dfe, dst obj: 3, dst ofs: 0x3558
   19e02:	e8 89 29 05 00       	call   check_script_flag
   19e07:	84 c0                	test   al,al
   19e09:	74 52                	je     talk_to_MRS_PHELPS_branch_23
   19e0b:	83 3d 5c 2c 02 00 00 	cmp    DWORD PTR ds:@obj3:MRS_PHELPS_variable_5,0x0                 ; fixup: num: 3283, src obj: 1, src ofs: 0x19e0d, dst obj: 3, dst ofs: 0x22c5c
   19e12:	75 49                	jne    talk_to_MRS_PHELPS_branch_23
   19e14:	bf 01 00 00 00       	mov    edi,0x1
   19e19:	ba 6c 35 00 00       	mov    edx,@obj3:ms_phelp_cpp_variable_57                           ; fixup: num: 3282, src obj: 1, src ofs: 0x19e1a, dst obj: 3, dst ofs: 0x356c
   19e1e:	b8 80 1c 00 00       	mov    eax,0x1c80
   19e23:	31 db                	xor    ebx,ebx
   19e25:	89 3d 5c 2c 02 00    	mov    DWORD PTR ds:@obj3:MRS_PHELPS_variable_5,edi                 ; fixup: num: 3281, src obj: 1, src ofs: 0x19e27, dst obj: 3, dst ofs: 0x22c5c
   19e2b:	e8 60 08 05 00       	call   play_wav
   19e30:	b8 73 35 00 00       	mov    eax,@obj3:ms_phelp_cpp_variable_58                           ; fixup: num: 3280, src obj: 1, src ofs: 0x19e31, dst obj: 3, dst ofs: 0x3573
   19e35:	e8 06 2a 05 00       	call   npc_alive
   19e3a:	84 c0                	test   al,al
   19e3c:	74 1f                	je     talk_to_MRS_PHELPS_branch_23
   19e3e:	b8 7c 35 00 00       	mov    eax,@obj3:ms_phelp_cpp_variable_59                           ; fixup: num: 3279, src obj: 1, src ofs: 0x19e3f, dst obj: 3, dst ofs: 0x357c
   19e43:	e8 f8 29 05 00       	call   npc_alive
   19e48:	84 c0                	test   al,al
   19e4a:	74 11                	je     talk_to_MRS_PHELPS_branch_23
   19e4c:	ba 83 35 00 00       	mov    edx,@obj3:ms_phelp_cpp_variable_60                           ; fixup: num: 3278, src obj: 1, src ofs: 0x19e4d, dst obj: 3, dst ofs: 0x3583
   19e51:	b8 87 1c 00 00       	mov    eax,0x1c87
   19e56:	31 db                	xor    ebx,ebx
   19e58:	e8 33 08 05 00       	call   play_wav
talk_to_MRS_PHELPS_branch_23:
   19e5d:	b8 8a 35 00 00       	mov    eax,@obj3:ms_phelp_cpp_variable_61                           ; fixup: num: 3277, src obj: 1, src ofs: 0x19e5e, dst obj: 3, dst ofs: 0x358a
   19e62:	e8 29 29 05 00       	call   check_script_flag
   19e67:	84 c0                	test   al,al
   19e69:	74 24                	je     talk_to_MRS_PHELPS_branch_24
   19e6b:	83 3d 60 2c 02 00 00 	cmp    DWORD PTR ds:@obj3:MRS_PHELPS_variable_6,0x0                 ; fixup: num: 3276, src obj: 1, src ofs: 0x19e6d, dst obj: 3, dst ofs: 0x22c60
   19e72:	75 1b                	jne    talk_to_MRS_PHELPS_branch_24
   19e74:	b8 01 00 00 00       	mov    eax,0x1
   19e79:	ba 97 35 00 00       	mov    edx,@obj3:ms_phelp_cpp_variable_62                           ; fixup: num: 3275, src obj: 1, src ofs: 0x19e7a, dst obj: 3, dst ofs: 0x3597
   19e7e:	31 db                	xor    ebx,ebx
   19e80:	a3 60 2c 02 00       	mov    ds:@obj3:MRS_PHELPS_variable_6,eax                           ; fixup: num: 3274, src obj: 1, src ofs: 0x19e81, dst obj: 3, dst ofs: 0x22c60
   19e85:	b8 8f 1c 00 00       	mov    eax,0x1c8f
   19e8a:	e8 01 08 05 00       	call   play_wav
talk_to_MRS_PHELPS_branch_24:
   19e8f:	b8 9e 35 00 00       	mov    eax,@obj3:ms_phelp_cpp_variable_63                           ; fixup: num: 3204, src obj: 1, src ofs: 0x19e90, dst obj: 3, dst ofs: 0x359e
   19e94:	e8 f7 28 05 00       	call   check_script_flag
   19e99:	84 c0                	test   al,al
   19e9b:	74 28                	je     talk_to_MRS_PHELPS_branch_25
   19e9d:	83 3d 64 2c 02 00 00 	cmp    DWORD PTR ds:@obj3:MRS_PHELPS_variable_7,0x0                 ; fixup: num: 3203, src obj: 1, src ofs: 0x19e9f, dst obj: 3, dst ofs: 0x22c64
   19ea4:	75 1f                	jne    talk_to_MRS_PHELPS_branch_25
   19ea6:	bb 01 00 00 00       	mov    ebx,0x1
   19eab:	ba ae 35 00 00       	mov    edx,@obj3:ms_phelp_cpp_variable_64                           ; fixup: num: 3202, src obj: 1, src ofs: 0x19eac, dst obj: 3, dst ofs: 0x35ae
   19eb0:	b8 98 1c 00 00       	mov    eax,0x1c98
   19eb5:	89 1d 64 2c 02 00    	mov    DWORD PTR ds:@obj3:MRS_PHELPS_variable_7,ebx                 ; fixup: num: 3201, src obj: 1, src ofs: 0x19eb7, dst obj: 3, dst ofs: 0x22c64
   19ebb:	bb 04 00 00 00       	mov    ebx,0x4
   19ec0:	e8 cb 07 05 00       	call   play_wav
talk_to_MRS_PHELPS_branch_25:
   19ec5:	b8 b5 35 00 00       	mov    eax,@obj3:ms_phelp_cpp_variable_65                           ; fixup: num: 3200, src obj: 1, src ofs: 0x19ec6, dst obj: 3, dst ofs: 0x35b5
   19eca:	e8 c1 28 05 00       	call   check_script_flag
   19ecf:	84 c0                	test   al,al
   19ed1:	74 36                	je     talk_to_MRS_PHELPS_branch_26
   19ed3:	b8 cb 35 00 00       	mov    eax,@obj3:ms_phelp_cpp_variable_66                           ; fixup: num: 3199, src obj: 1, src ofs: 0x19ed4, dst obj: 3, dst ofs: 0x35cb
   19ed8:	e8 63 29 05 00       	call   npc_alive
   19edd:	84 c0                	test   al,al
   19edf:	74 28                	je     talk_to_MRS_PHELPS_branch_26
   19ee1:	83 3d 68 2c 02 00 00 	cmp    DWORD PTR ds:@obj3:MRS_PHELPS_variable_8,0x0                 ; fixup: num: 3198, src obj: 1, src ofs: 0x19ee3, dst obj: 3, dst ofs: 0x22c68
   19ee8:	75 1f                	jne    talk_to_MRS_PHELPS_branch_26
   19eea:	be 01 00 00 00       	mov    esi,0x1
   19eef:	bb 03 00 00 00       	mov    ebx,0x3
   19ef4:	ba d4 35 00 00       	mov    edx,@obj3:ms_phelp_cpp_variable_67                           ; fixup: num: 3197, src obj: 1, src ofs: 0x19ef5, dst obj: 3, dst ofs: 0x35d4
   19ef9:	b8 a0 1c 00 00       	mov    eax,0x1ca0
   19efe:	89 35 68 2c 02 00    	mov    DWORD PTR ds:@obj3:MRS_PHELPS_variable_8,esi                 ; fixup: num: 3196, src obj: 1, src ofs: 0x19f00, dst obj: 3, dst ofs: 0x22c68
   19f04:	e8 87 07 05 00       	call   play_wav
talk_to_MRS_PHELPS_branch_26:
   19f09:	b8 db 35 00 00       	mov    eax,@obj3:ms_phelp_cpp_variable_68                           ; fixup: num: 3195, src obj: 1, src ofs: 0x19f0a, dst obj: 3, dst ofs: 0x35db
   19f0e:	e8 7d 28 05 00       	call   check_script_flag
   19f13:	84 c0                	test   al,al
   19f15:	74 25                	je     talk_to_MRS_PHELPS_branch_27
   19f17:	83 3d 6c 2c 02 00 00 	cmp    DWORD PTR ds:@obj3:MRS_PHELPS_variable_9,0x0                 ; fixup: num: 3194, src obj: 1, src ofs: 0x19f19, dst obj: 3, dst ofs: 0x22c6c
   19f1e:	75 1c                	jne    talk_to_MRS_PHELPS_branch_27
   19f20:	bd 01 00 00 00       	mov    ebp,0x1
   19f25:	ba ed 35 00 00       	mov    edx,@obj3:ms_phelp_cpp_variable_69                           ; fixup: num: 3193, src obj: 1, src ofs: 0x19f26, dst obj: 3, dst ofs: 0x35ed
   19f2a:	b8 b4 1c 00 00       	mov    eax,0x1cb4
   19f2f:	31 db                	xor    ebx,ebx
   19f31:	89 2d 6c 2c 02 00    	mov    DWORD PTR ds:@obj3:MRS_PHELPS_variable_9,ebp                 ; fixup: num: 3192, src obj: 1, src ofs: 0x19f33, dst obj: 3, dst ofs: 0x22c6c
   19f37:	e8 54 07 05 00       	call   play_wav
talk_to_MRS_PHELPS_branch_27:
   19f3c:	b8 f4 35 00 00       	mov    eax,@obj3:ms_phelp_cpp_variable_70                           ; fixup: num: 3216, src obj: 1, src ofs: 0x19f3d, dst obj: 3, dst ofs: 0x35f4
   19f41:	e8 fa 28 05 00       	call   npc_alive
   19f46:	84 c0                	test   al,al
   19f48:	75 28                	jne    talk_to_MRS_PHELPS_branch_28
   19f4a:	83 3d 70 2c 02 00 00 	cmp    DWORD PTR ds:@obj3:MRS_PHELPS_variable_10,0x0                ; fixup: num: 3215, src obj: 1, src ofs: 0x19f4c, dst obj: 3, dst ofs: 0x22c70
   19f51:	75 1f                	jne    talk_to_MRS_PHELPS_branch_28
   19f53:	ba 01 00 00 00       	mov    edx,0x1
   19f58:	bb 03 00 00 00       	mov    ebx,0x3
   19f5d:	b8 fe 1c 00 00       	mov    eax,0x1cfe
   19f62:	89 15 70 2c 02 00    	mov    DWORD PTR ds:@obj3:MRS_PHELPS_variable_10,edx                ; fixup: num: 3214, src obj: 1, src ofs: 0x19f64, dst obj: 3, dst ofs: 0x22c70
   19f68:	ba fc 35 00 00       	mov    edx,@obj3:ms_phelp_cpp_variable_71                           ; fixup: num: 3213, src obj: 1, src ofs: 0x19f69, dst obj: 3, dst ofs: 0x35fc
   19f6d:	e8 1e 07 05 00       	call   play_wav
talk_to_MRS_PHELPS_branch_28:
   19f72:	b8 03 36 00 00       	mov    eax,@obj3:ms_phelp_cpp_variable_72                           ; fixup: num: 3212, src obj: 1, src ofs: 0x19f73, dst obj: 3, dst ofs: 0x3603
   19f77:	e8 c4 28 05 00       	call   npc_alive
   19f7c:	84 c0                	test   al,al
   19f7e:	75 28                	jne    talk_to_MRS_PHELPS_branch_29
   19f80:	83 3d 74 2c 02 00 00 	cmp    DWORD PTR ds:@obj3:MRS_PHELPS_variable_11,0x0                ; fixup: num: 3211, src obj: 1, src ofs: 0x19f82, dst obj: 3, dst ofs: 0x22c74
   19f87:	75 1f                	jne    talk_to_MRS_PHELPS_branch_29
   19f89:	b9 01 00 00 00       	mov    ecx,0x1
   19f8e:	bb 03 00 00 00       	mov    ebx,0x3
   19f93:	ba 0c 36 00 00       	mov    edx,@obj3:ms_phelp_cpp_variable_73                           ; fixup: num: 3210, src obj: 1, src ofs: 0x19f94, dst obj: 3, dst ofs: 0x360c
   19f98:	b8 06 1d 00 00       	mov    eax,0x1d06
   19f9d:	89 0d 74 2c 02 00    	mov    DWORD PTR ds:@obj3:MRS_PHELPS_variable_11,ecx                ; fixup: num: 3209, src obj: 1, src ofs: 0x19f9f, dst obj: 3, dst ofs: 0x22c74
   19fa3:	e8 e8 06 05 00       	call   play_wav
talk_to_MRS_PHELPS_branch_29:
   19fa8:	b8 13 36 00 00       	mov    eax,@obj3:ms_phelp_cpp_variable_74                           ; fixup: num: 3208, src obj: 1, src ofs: 0x19fa9, dst obj: 3, dst ofs: 0x3613
   19fad:	e8 8e 28 05 00       	call   npc_alive
   19fb2:	84 c0                	test   al,al
   19fb4:	75 5c                	jne    talk_to_MRS_PHELPS_branch_32
   19fb6:	83 3d 78 2c 02 00 00 	cmp    DWORD PTR ds:@obj3:MRS_PHELPS_variable_12,0x0                ; fixup: num: 3207, src obj: 1, src ofs: 0x19fb8, dst obj: 3, dst ofs: 0x22c78
   19fbd:	75 53                	jne    talk_to_MRS_PHELPS_branch_32
   19fbf:	bf 01 00 00 00       	mov    edi,0x1
   19fc4:	ba 19 36 00 00       	mov    edx,@obj3:ms_phelp_cpp_variable_75                           ; fixup: num: 3206, src obj: 1, src ofs: 0x19fc5, dst obj: 3, dst ofs: 0x3619
   19fc9:	b8 0f 1d 00 00       	mov    eax,0x1d0f
   19fce:	31 db                	xor    ebx,ebx
   19fd0:	89 3d 78 2c 02 00    	mov    DWORD PTR ds:@obj3:MRS_PHELPS_variable_12,edi                ; fixup: num: 3205, src obj: 1, src ofs: 0x19fd2, dst obj: 3, dst ofs: 0x22c78
   19fd6:	e8 b5 06 05 00       	call   play_wav
   19fdb:	b8 2c 02 00 00       	mov    eax,0x22c
   19fe0:	e8 bb 01 01 00       	call   GetDlgFileString
   19fe5:	e8 26 0f 05 00       	call   get_response
   19fea:	39 f8                	cmp    eax,edi
   19fec:	75 0e                	jne    talk_to_MRS_PHELPS_branch_30
   19fee:	ba 20 36 00 00       	mov    edx,@obj3:ms_phelp_cpp_variable_76                           ; fixup: num: 3217, src obj: 1, src ofs: 0x19fef, dst obj: 3, dst ofs: 0x3620
   19ff3:	b8 1c 1d 00 00       	mov    eax,0x1d1c
   19ff8:	89 fb                	mov    ebx,edi
   19ffa:	eb 11                	jmp    talk_to_MRS_PHELPS_branch_31
talk_to_MRS_PHELPS_branch_30:
   19ffc:	83 f8 02             	cmp    eax,0x2
   19fff:	75 11                	jne    talk_to_MRS_PHELPS_branch_32
   1a001:	ba 27 36 00 00       	mov    edx,@obj3:ms_phelp_cpp_variable_77                           ; fixup: num: 3578, src obj: 1, src ofs: 0x1a002, dst obj: 3, dst ofs: 0x3627
   1a006:	b8 21 1d 00 00       	mov    eax,0x1d21
   1a00b:	31 db                	xor    ebx,ebx
talk_to_MRS_PHELPS_branch_31:
   1a00d:	e8 7e 06 05 00       	call   play_wav
talk_to_MRS_PHELPS_branch_32:
   1a012:	b8 2e 36 00 00       	mov    eax,@obj3:ms_phelp_cpp_variable_78                           ; fixup: num: 3577, src obj: 1, src ofs: 0x1a013, dst obj: 3, dst ofs: 0x362e
   1a017:	e8 74 27 05 00       	call   check_script_flag
   1a01c:	84 c0                	test   al,al
   1a01e:	74 48                	je     talk_to_MRS_PHELPS_branch_33
   1a020:	83 3d 7c 2c 02 00 00 	cmp    DWORD PTR ds:@obj3:MRS_PHELPS_variable_13,0x0                ; fixup: num: 3576, src obj: 1, src ofs: 0x1a022, dst obj: 3, dst ofs: 0x22c7c
   1a027:	75 3f                	jne    talk_to_MRS_PHELPS_branch_33
   1a029:	bb 01 00 00 00       	mov    ebx,0x1
   1a02e:	ba 3f 36 00 00       	mov    edx,@obj3:ms_phelp_cpp_variable_79                           ; fixup: num: 3575, src obj: 1, src ofs: 0x1a02f, dst obj: 3, dst ofs: 0x363f
   1a033:	b8 2a 1d 00 00       	mov    eax,0x1d2a
   1a038:	89 1d 7c 2c 02 00    	mov    DWORD PTR ds:@obj3:MRS_PHELPS_variable_13,ebx                ; fixup: num: 3574, src obj: 1, src ofs: 0x1a03a, dst obj: 3, dst ofs: 0x22c7c
   1a03e:	bb 03 00 00 00       	mov    ebx,0x3
   1a043:	e8 48 06 05 00       	call   play_wav
   1a048:	ba 46 36 00 00       	mov    edx,@obj3:ms_phelp_cpp_variable_80                           ; fixup: num: 3573, src obj: 1, src ofs: 0x1a049, dst obj: 3, dst ofs: 0x3646
   1a04d:	b8 33 1d 00 00       	mov    eax,0x1d33
   1a052:	31 db                	xor    ebx,ebx
   1a054:	e8 37 06 05 00       	call   play_wav
   1a059:	ba 4d 36 00 00       	mov    edx,@obj3:ms_phelp_cpp_variable_81                           ; fixup: num: 3572, src obj: 1, src ofs: 0x1a05a, dst obj: 3, dst ofs: 0x364d
   1a05e:	b8 3a 1d 00 00       	mov    eax,0x1d3a
   1a063:	e9 78 00 00 00       	jmp    talk_to_MRS_PHELPS_branch_34
talk_to_MRS_PHELPS_branch_33:
   1a068:	b8 54 36 00 00       	mov    eax,@obj3:ms_phelp_cpp_variable_82                           ; fixup: num: 3571, src obj: 1, src ofs: 0x1a069, dst obj: 3, dst ofs: 0x3654
   1a06d:	e8 1e 27 05 00       	call   check_script_flag
   1a072:	84 c0                	test   al,al
   1a074:	74 71                	je     talk_to_MRS_PHELPS_branch_35
   1a076:	a1 80 2c 02 00       	mov    eax,ds:@obj3:MRS_PHELPS_variable_14                          ; fixup: num: 3570, src obj: 1, src ofs: 0x1a077, dst obj: 3, dst ofs: 0x22c80
   1a07b:	85 c0                	test   eax,eax
   1a07d:	75 68                	jne    talk_to_MRS_PHELPS_branch_35
   1a07f:	ba 01 00 00 00       	mov    edx,0x1
   1a084:	bb 04 00 00 00       	mov    ebx,0x4
   1a089:	89 15 80 2c 02 00    	mov    DWORD PTR ds:@obj3:MRS_PHELPS_variable_14,edx                ; fixup: num: 3569, src obj: 1, src ofs: 0x1a08b, dst obj: 3, dst ofs: 0x22c80
   1a08f:	e8 bc e1 00 00       	call   PC_HEARD_OF_KARINS_KIDNAPPING
   1a094:	ba 63 36 00 00       	mov    edx,@obj3:ms_phelp_cpp_variable_83                           ; fixup: num: 3593, src obj: 1, src ofs: 0x1a095, dst obj: 3, dst ofs: 0x3663
   1a099:	b8 40 1d 00 00       	mov    eax,0x1d40
   1a09e:	e8 ed 05 05 00       	call   play_wav
   1a0a3:	ba 6a 36 00 00       	mov    edx,@obj3:ms_phelp_cpp_variable_84                           ; fixup: num: 3592, src obj: 1, src ofs: 0x1a0a4, dst obj: 3, dst ofs: 0x366a
   1a0a8:	b8 46 1d 00 00       	mov    eax,0x1d46
   1a0ad:	31 db                	xor    ebx,ebx
   1a0af:	e8 dc 05 05 00       	call   play_wav
   1a0b4:	ba 6d 36 00 00       	mov    edx,@obj3:ms_phelp_cpp_variable_85                           ; fixup: num: 3591, src obj: 1, src ofs: 0x1a0b5, dst obj: 3, dst ofs: 0x366d
   1a0b9:	b8 4a 1d 00 00       	mov    eax,0x1d4a
   1a0be:	31 db                	xor    ebx,ebx
   1a0c0:	e8 cb 05 05 00       	call   play_wav
   1a0c5:	ba 74 36 00 00       	mov    edx,@obj3:ms_phelp_cpp_variable_86                           ; fixup: num: 3590, src obj: 1, src ofs: 0x1a0c6, dst obj: 3, dst ofs: 0x3674
   1a0ca:	b8 4f 1d 00 00       	mov    eax,0x1d4f
   1a0cf:	31 db                	xor    ebx,ebx
   1a0d1:	e8 ba 05 05 00       	call   play_wav
   1a0d6:	ba 77 36 00 00       	mov    edx,@obj3:ms_phelp_cpp_variable_87                           ; fixup: num: 3589, src obj: 1, src ofs: 0x1a0d7, dst obj: 3, dst ofs: 0x3677
   1a0db:	b8 53 1d 00 00       	mov    eax,0x1d53
talk_to_MRS_PHELPS_branch_34:
   1a0e0:	31 db                	xor    ebx,ebx
   1a0e2:	e8 a9 05 05 00       	call   play_wav
talk_to_MRS_PHELPS_branch_35:
   1a0e7:	31 c0                	xor    eax,eax
   1a0e9:	5d                   	pop    ebp
   1a0ea:	5f                   	pop    edi
   1a0eb:	5e                   	pop    esi
   1a0ec:	5a                   	pop    edx
   1a0ed:	59                   	pop    ecx
   1a0ee:	5b                   	pop    ebx
   1a0ef:	c3                   	ret    
talk_to_MRS_PHELPS_branch_36:
   1a0f0:	89 15 48 2c 02 00    	mov    DWORD PTR ds:@obj3:MRS_PHELPS,edx                            ; fixup: num: 3588, src obj: 1, src ofs: 0x1a0f2, dst obj: 3, dst ofs: 0x22c48
   1a0f6:	a1 48 2c 02 00       	mov    eax,ds:@obj3:MRS_PHELPS                                      ; fixup: num: 3587, src obj: 1, src ofs: 0x1a0f7, dst obj: 3, dst ofs: 0x22c48
   1a0fb:	c3                   	ret    
   1a0fc:	8d 44 20 00          	lea    eax,[eax+eiz*1+0x0]

;-------------------------------------------------
;  Function 'MRS_PHELPS_FIRST_CONVERSATION'      -
;-------------------------------------------------
MRS_PHELPS_FIRST_CONVERSATION:
   1a100:	85 c0                	test   eax,eax
   1a102:	74 ec                	je     talk_to_MRS_PHELPS_branch_36
   1a104:	a1 48 2c 02 00       	mov    eax,ds:@obj3:MRS_PHELPS                                      ; fixup: num: 3586, src obj: 1, src ofs: 0x1a105, dst obj: 3, dst ofs: 0x22c48
   1a109:	c3                   	ret    
   1a10a:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'MRS_PHELPS_initialize'              -
;-------------------------------------------------
MRS_PHELPS_initialize:
   1a110:	53                   	push   ebx
   1a111:	52                   	push   edx
   1a112:	ba 01 00 00 00       	mov    edx,0x1
   1a117:	31 db                	xor    ebx,ebx
   1a119:	89 15 48 2c 02 00    	mov    DWORD PTR ds:@obj3:MRS_PHELPS,edx                            ; fixup: num: 3585, src obj: 1, src ofs: 0x1a11b, dst obj: 3, dst ofs: 0x22c48
   1a11f:	89 1d 4c 2c 02 00    	mov    DWORD PTR ds:@obj3:MRS_PHELPS_variable_1,ebx                 ; fixup: num: 3584, src obj: 1, src ofs: 0x1a121, dst obj: 3, dst ofs: 0x22c4c
   1a125:	89 1d 50 2c 02 00    	mov    DWORD PTR ds:@obj3:MRS_PHELPS_variable_2,ebx                 ; fixup: num: 3583, src obj: 1, src ofs: 0x1a127, dst obj: 3, dst ofs: 0x22c50
   1a12b:	89 1d 54 2c 02 00    	mov    DWORD PTR ds:@obj3:MRS_PHELPS_variable_3,ebx                 ; fixup: num: 3582, src obj: 1, src ofs: 0x1a12d, dst obj: 3, dst ofs: 0x22c54
   1a131:	89 1d 58 2c 02 00    	mov    DWORD PTR ds:@obj3:MRS_PHELPS_variable_4,ebx                 ; fixup: num: 3581, src obj: 1, src ofs: 0x1a133, dst obj: 3, dst ofs: 0x22c58
   1a137:	89 1d 5c 2c 02 00    	mov    DWORD PTR ds:@obj3:MRS_PHELPS_variable_5,ebx                 ; fixup: num: 3580, src obj: 1, src ofs: 0x1a139, dst obj: 3, dst ofs: 0x22c5c
   1a13d:	89 1d 60 2c 02 00    	mov    DWORD PTR ds:@obj3:MRS_PHELPS_variable_6,ebx                 ; fixup: num: 3579, src obj: 1, src ofs: 0x1a13f, dst obj: 3, dst ofs: 0x22c60
   1a143:	89 1d 64 2c 02 00    	mov    DWORD PTR ds:@obj3:MRS_PHELPS_variable_7,ebx                 ; fixup: num: 3601, src obj: 1, src ofs: 0x1a145, dst obj: 3, dst ofs: 0x22c64
   1a149:	89 1d 68 2c 02 00    	mov    DWORD PTR ds:@obj3:MRS_PHELPS_variable_8,ebx                 ; fixup: num: 3600, src obj: 1, src ofs: 0x1a14b, dst obj: 3, dst ofs: 0x22c68
   1a14f:	89 1d 6c 2c 02 00    	mov    DWORD PTR ds:@obj3:MRS_PHELPS_variable_9,ebx                 ; fixup: num: 3599, src obj: 1, src ofs: 0x1a151, dst obj: 3, dst ofs: 0x22c6c
   1a155:	89 1d 70 2c 02 00    	mov    DWORD PTR ds:@obj3:MRS_PHELPS_variable_10,ebx                ; fixup: num: 3598, src obj: 1, src ofs: 0x1a157, dst obj: 3, dst ofs: 0x22c70
   1a15b:	89 1d 74 2c 02 00    	mov    DWORD PTR ds:@obj3:MRS_PHELPS_variable_11,ebx                ; fixup: num: 3597, src obj: 1, src ofs: 0x1a15d, dst obj: 3, dst ofs: 0x22c74
   1a161:	89 1d 78 2c 02 00    	mov    DWORD PTR ds:@obj3:MRS_PHELPS_variable_12,ebx                ; fixup: num: 3596, src obj: 1, src ofs: 0x1a163, dst obj: 3, dst ofs: 0x22c78
   1a167:	89 1d 7c 2c 02 00    	mov    DWORD PTR ds:@obj3:MRS_PHELPS_variable_13,ebx                ; fixup: num: 3595, src obj: 1, src ofs: 0x1a169, dst obj: 3, dst ofs: 0x22c7c
   1a16d:	89 1d 80 2c 02 00    	mov    DWORD PTR ds:@obj3:MRS_PHELPS_variable_14,ebx                ; fixup: num: 3594, src obj: 1, src ofs: 0x1a16f, dst obj: 3, dst ofs: 0x22c80
   1a173:	5a                   	pop    edx
   1a174:	5b                   	pop    ebx
   1a175:	c3                   	ret    
;-------------------------------------------------
;  Bad code 23 (zero after ret):                 -
;-------------------------------------------------
;  1a174:	5b                   	pop    ebx
;  1a175:	c3                   	ret    
;  1a176:	00 00                	add    BYTE PTR [eax],al
;  1a178:	00 00                	add    BYTE PTR [eax],al
;-------------------------------------------------
;  Padding data (10 bytes):                      -
;-------------------------------------------------
   1a176:	00 00 00 00 00 00 .. 	db     10 dup(0x00)
;-------------------------------------------------
;  End of bad code 23                            -
;-------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 25 (D:\SOURCE\ms_phelp.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 25: D:\SOURCE\ms_phelp.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------
ms_phelp_cpp_variable_1:
    3368:	50 48 4f 54 4f 5f 4f 46 5f 57 48 41 4c 45 59 5f 48 45 52 52 49 4c 4c 00 	db     "PHOTO_OF_WHALEY_HERRILL",0x00
ms_phelp_cpp_variable_2:
    3380:	50 48 45 4c 50 53 00 	db     "PHELPS",0x00
ms_phelp_cpp_variable_3:
    3387:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    3388:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    3389:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
ms_phelp_cpp_variable_4:
    338a:	50 48 45 4c 50 53 00 	db     "PHELPS",0x00
ms_phelp_cpp_variable_5:
    3391:	43 41 53 4b 45 54 5f 50 48 4f 54 4f 00 	db     "CASKET_PHOTO",0x00
ms_phelp_cpp_variable_6:
    339e:	43 41 53 4b 45 54 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "CASKET_PHOTOCOPY",0x00
ms_phelp_cpp_variable_7:
    33af:	50 48 45 4c 50 53 00 	db     "PHELPS",0x00
ms_phelp_cpp_variable_8:
    33b6:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    33b7:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    33b8:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
ms_phelp_cpp_variable_9:
    33b9:	50 48 45 4c 50 53 00 	db     "PHELPS",0x00
ms_phelp_cpp_variable_10:
    33c0:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    33c1:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    33c2:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
ms_phelp_cpp_variable_11:
    33c3:	50 48 45 4c 50 53 00 	db     "PHELPS",0x00
ms_phelp_cpp_variable_12:
    33ca:	4c 45 44 47 45 52 00 	db     "LEDGER",0x00
ms_phelp_cpp_variable_13:
    33d1:	4c 45 44 47 45 52 32 00 	db     "LEDGER2",0x00
ms_phelp_cpp_variable_14:
    33d9:	48 41 56 45 5f 42 4f 54 48 5f 4c 45 44 47 45 52 53 00 	db     "HAVE_BOTH_LEDGERS",0x00
ms_phelp_cpp_variable_15:
    33eb:	50 48 45 4c 50 53 00 	db     "PHELPS",0x00
ms_phelp_cpp_variable_16:
    33f2:	4e 4f 54 45 00       	db     "NOTE",0x00
ms_phelp_cpp_variable_17:
    33f7:	4e 4f 54 45 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "NOTE_PHOTOCOPY",0x00
ms_phelp_cpp_variable_18:
    3406:	43 48 45 43 4b 42 4f 4f 4b 00 	db     "CHECKBOOK",0x00
ms_phelp_cpp_variable_19:
    3410:	43 48 45 43 4b 42 4f 4f 4b 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "CHECKBOOK_PHOTOCOPY",0x00
ms_phelp_cpp_variable_20:
    3424:	50 48 45 4c 50 53 00 	db     "PHELPS",0x00
ms_phelp_cpp_variable_21:
    342b:	51 55 41 52 54 45 52 00 	db     "QUARTER",0x00
ms_phelp_cpp_variable_22:
    3433:	47 45 54 5f 50 52 4e 5f 4d 41 47 00 	db     "GET_PRN_MAG",0x00
ms_phelp_cpp_variable_23:
    343f:	50 48 45 4c 50 53 00 	db     "PHELPS",0x00
ms_phelp_cpp_variable_24:
    3446:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    3447:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    3448:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
ms_phelp_cpp_variable_25:
    3449:	50 48 45 4c 50 53 00 	db     "PHELPS",0x00
ms_phelp_cpp_variable_26:
    3450:	44 45 4c 5f 44 52 54 5f 4d 41 47 00 	db     "DEL_DRT_MAG",0x00
ms_phelp_cpp_variable_27:
    345c:	52 45 57 41 52 44 5f 4d 4f 4e 45 59 00 	db     "REWARD_MONEY",0x00
ms_phelp_cpp_variable_28:
    3469:	55 53 45 5f 52 45 57 41 52 44 5f 41 54 5f 53 54 4f 52 45 00 	db     "USE_REWARD_AT_STORE",0x00
ms_phelp_cpp_variable_29:
    347d:	53 45 54 5f 47 45 4e 5f 43 55 5f 53 54 55 46 46 00 	db     "SET_GEN_CU_STUFF",0x00
ms_phelp_cpp_variable_30:
    348e:	50 48 45 4c 50 53 00 	db     "PHELPS",0x00
ms_phelp_cpp_variable_31:
    3495:	50 48 45 4c 50 53 00 	db     "PHELPS",0x00
ms_phelp_cpp_variable_32:
    349c:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    349d:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    349e:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
ms_phelp_cpp_variable_33:
    349f:	50 48 45 4c 50 53 00 	db     "PHELPS",0x00
ms_phelp_cpp_variable_34:
    34a6:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    34a7:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    34a8:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
ms_phelp_cpp_variable_35:
    34a9:	50 48 45 4c 50 53 00 	db     "PHELPS",0x00
ms_phelp_cpp_variable_36:
    34b0:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    34b1:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    34b2:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
ms_phelp_cpp_variable_37:
    34b3:	50 48 45 4c 50 53 00 	db     "PHELPS",0x00
ms_phelp_cpp_variable_38:
    34ba:	48 45 41 52 44 5f 44 41 44 5f 4d 4f 41 4e 00 	db     "HEARD_DAD_MOAN",0x00
ms_phelp_cpp_variable_39:
    34c9:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    34ca:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    34cb:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
ms_phelp_cpp_variable_40:
    34cc:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    34cd:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    34ce:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
ms_phelp_cpp_variable_41:
    34cf:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    34d0:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    34d1:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
ms_phelp_cpp_variable_42:
    34d2:	50 48 45 4c 50 53 00 	db     "PHELPS",0x00
ms_phelp_cpp_variable_43:
    34d9:	50 48 45 4c 50 53 00 	db     "PHELPS",0x00
ms_phelp_cpp_variable_44:
    34e0:	50 48 45 4c 50 53 00 	db     "PHELPS",0x00
ms_phelp_cpp_variable_45:
    34e7:	50 48 45 4c 50 53 00 	db     "PHELPS",0x00
ms_phelp_cpp_variable_46:
    34ee:	50 48 45 4c 50 53 00 	db     "PHELPS",0x00
ms_phelp_cpp_variable_47:
    34f5:	50 48 45 4c 50 53 00 	db     "PHELPS",0x00
ms_phelp_cpp_variable_48:
    34fc:	53 54 45 50 48 5f 4d 49 44 47 41 4d 45 5f 50 4c 41 59 45 44 00 	db     "STEPH_MIDGAME_PLAYED",0x00
ms_phelp_cpp_variable_49:
    3511:	50 48 45 4c 50 53 00 	db     "PHELPS",0x00
ms_phelp_cpp_variable_50:
    3518:	50 48 45 4c 50 53 00 	db     "PHELPS",0x00
ms_phelp_cpp_variable_51:
    351f:	53 43 52 41 54 43 48 45 44 5f 54 55 43 4b 45 52 00 	db     "SCRATCHED_TUCKER",0x00
ms_phelp_cpp_variable_52:
    3530:	50 48 45 4c 50 53 00 	db     "PHELPS",0x00
ms_phelp_cpp_variable_53:
    3537:	42 41 52 42 45 52 5f 50 4f 4c 45 5f 53 54 4f 4c 45 4e 00 	db     "BARBER_POLE_STOLEN",0x00
ms_phelp_cpp_variable_54:
    354a:	50 48 45 4c 50 53 00 	db     "PHELPS",0x00
ms_phelp_cpp_variable_55:
    3551:	50 48 45 4c 50 53 00 	db     "PHELPS",0x00
ms_phelp_cpp_variable_56:
    3558:	42 4f 4c 54 5f 4f 46 5f 43 4c 4f 54 48 5f 54 41 4b 45 4e 00 	db     "BOLT_OF_CLOTH_TAKEN",0x00
ms_phelp_cpp_variable_57:
    356c:	50 48 45 4c 50 53 00 	db     "PHELPS",0x00
ms_phelp_cpp_variable_58:
    3573:	46 49 52 45 4d 41 4e 32 00 	db     "FIREMAN2",0x00
ms_phelp_cpp_variable_59:
    357c:	53 50 41 52 4b 59 00 	db     "SPARKY",0x00
ms_phelp_cpp_variable_60:
    3583:	50 48 45 4c 50 53 00 	db     "PHELPS",0x00
ms_phelp_cpp_variable_61:
    358a:	44 49 4e 45 52 5f 42 55 52 4e 45 44 00 	db     "DINER_BURNED",0x00
ms_phelp_cpp_variable_62:
    3597:	50 48 45 4c 50 53 00 	db     "PHELPS",0x00
ms_phelp_cpp_variable_63:
    359e:	50 43 5f 45 53 43 41 50 45 44 5f 4a 41 49 4c 00 	db     "PC_ESCAPED_JAIL",0x00
ms_phelp_cpp_variable_64:
    35ae:	50 48 45 4c 50 53 00 	db     "PHELPS",0x00
ms_phelp_cpp_variable_65:
    35b5:	47 4f 54 5f 52 45 4d 41 49 4e 53 5f 46 4f 52 5f 4c 4f 44 47 45 00 	db     "GOT_REMAINS_FOR_LODGE",0x00
ms_phelp_cpp_variable_66:
    35cb:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
ms_phelp_cpp_variable_67:
    35d4:	50 48 45 4c 50 53 00 	db     "PHELPS",0x00
ms_phelp_cpp_variable_68:
    35db:	42 55 52 4e 45 44 5f 54 56 5f 53 54 41 54 49 4f 4e 00 	db     "BURNED_TV_STATION",0x00
ms_phelp_cpp_variable_69:
    35ed:	50 48 45 4c 50 53 00 	db     "PHELPS",0x00
ms_phelp_cpp_variable_70:
    35f4:	42 55 54 43 48 45 52 00 	db     "BUTCHER",0x00
ms_phelp_cpp_variable_71:
    35fc:	50 48 45 4c 50 53 00 	db     "PHELPS",0x00
ms_phelp_cpp_variable_72:
    3603:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
ms_phelp_cpp_variable_73:
    360c:	50 48 45 4c 50 53 00 	db     "PHELPS",0x00
ms_phelp_cpp_variable_74:
    3613:	4a 49 4d 4d 59 00    	db     "JIMMY",0x00
ms_phelp_cpp_variable_75:
    3619:	50 48 45 4c 50 53 00 	db     "PHELPS",0x00
ms_phelp_cpp_variable_76:
    3620:	50 48 45 4c 50 53 00 	db     "PHELPS",0x00
ms_phelp_cpp_variable_77:
    3627:	50 48 45 4c 50 53 00 	db     "PHELPS",0x00
ms_phelp_cpp_variable_78:
    362e:	4b 41 52 49 4e 5f 46 4f 55 4e 44 5f 44 45 41 44 00 	db     "KARIN_FOUND_DEAD",0x00
ms_phelp_cpp_variable_79:
    363f:	50 48 45 4c 50 53 00 	db     "PHELPS",0x00
ms_phelp_cpp_variable_80:
    3646:	50 48 45 4c 50 53 00 	db     "PHELPS",0x00
ms_phelp_cpp_variable_81:
    364d:	50 48 45 4c 50 53 00 	db     "PHELPS",0x00
ms_phelp_cpp_variable_82:
    3654:	4b 41 52 49 4e 5f 4b 49 44 4e 41 50 45 44 00 	db     "KARIN_KIDNAPED",0x00
ms_phelp_cpp_variable_83:
    3663:	50 48 45 4c 50 53 00 	db     "PHELPS",0x00
ms_phelp_cpp_variable_84:
    366a:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    366b:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    366c:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
ms_phelp_cpp_variable_85:
    366d:	50 48 45 4c 50 53 00 	db     "PHELPS",0x00
ms_phelp_cpp_variable_86:
    3674:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    3675:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    3676:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
ms_phelp_cpp_variable_87:
    3677:	50 48 45 4c 50 53 00 	db     "PHELPS",0x00
    367e:	00 00                	db     2 dup(0x00)                                                  ; dec:   0, chr: '\0'

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 25 (D:\SOURCE\ms_phelp.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 25: D:\SOURCE\ms_phelp.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------
MRS_PHELPS:                                                                                         ; access size: DWORD
   22c48:	00 00 00 00          	dd     0x00000000
MRS_PHELPS_variable_1:                                                                              ; access size: DWORD
   22c4c:	00 00 00 00          	dd     0x00000000
MRS_PHELPS_variable_2:                                                                              ; access size: DWORD
   22c50:	00 00 00 00          	dd     0x00000000
MRS_PHELPS_variable_3:                                                                              ; access size: DWORD
   22c54:	00 00 00 00          	dd     0x00000000
MRS_PHELPS_variable_4:                                                                              ; access size: DWORD
   22c58:	00 00 00 00          	dd     0x00000000
MRS_PHELPS_variable_5:                                                                              ; access size: DWORD
   22c5c:	00 00 00 00          	dd     0x00000000
MRS_PHELPS_variable_6:                                                                              ; access size: DWORD
   22c60:	00 00 00 00          	dd     0x00000000
MRS_PHELPS_variable_7:                                                                              ; access size: DWORD
   22c64:	00 00 00 00          	dd     0x00000000
MRS_PHELPS_variable_8:                                                                              ; access size: DWORD
   22c68:	00 00 00 00          	dd     0x00000000
MRS_PHELPS_variable_9:                                                                              ; access size: DWORD
   22c6c:	00 00 00 00          	dd     0x00000000
MRS_PHELPS_variable_10:                                                                             ; access size: DWORD
   22c70:	00 00 00 00          	dd     0x00000000
MRS_PHELPS_variable_11:                                                                             ; access size: DWORD
   22c74:	00 00 00 00          	dd     0x00000000
MRS_PHELPS_variable_12:                                                                             ; access size: DWORD
   22c78:	00 00 00 00          	dd     0x00000000
MRS_PHELPS_variable_13:                                                                             ; access size: DWORD
   22c7c:	00 00 00 00          	dd     0x00000000
MRS_PHELPS_variable_14:                                                                             ; access size: DWORD
   22c80:	00 00 00 00          	dd     0x00000000

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 25 (D:\SOURCE\ms_phelp.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------