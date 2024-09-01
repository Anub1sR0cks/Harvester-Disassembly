;-------------------------------------------------------------------------------
;                                                                              -
;  Module 50: D:\SOURCE\fireman3.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function 'talk_to_FIRST_FIREMAN'              -
;-------------------------------------------------
talk_to_FIRST_FIREMAN:
   23850:	53                   	push   ebx
   23851:	51                   	push   ecx
   23852:	52                   	push   edx
   23853:	57                   	push   edi
   23854:	a1 d0 2d 02 00       	mov    eax,ds:@obj3:FIRST_FIREMAN                                   ; fixup: num: 5422, src obj: 1, src ofs: 0x23855, dst obj: 3, dst ofs: 0x22dd0
   23859:	85 c0                	test   eax,eax
   2385b:	74 16                	je     talk_to_FIRST_FIREMAN_branch_1
   2385d:	b8 53 04 00 00       	mov    eax,0x453
   23862:	31 d2                	xor    edx,edx
   23864:	31 db                	xor    ebx,ebx
   23866:	89 15 d0 2d 02 00    	mov    DWORD PTR ds:@obj3:FIRST_FIREMAN,edx                         ; fixup: num: 5421, src obj: 1, src ofs: 0x23868, dst obj: 3, dst ofs: 0x22dd0
   2386c:	ba 5c 61 00 00       	mov    edx,@obj3:fireman3_cpp_variable_1                            ; fixup: num: 5420, src obj: 1, src ofs: 0x2386d, dst obj: 3, dst ofs: 0x615c
   23871:	eb 0c                	jmp    talk_to_FIRST_FIREMAN_branch_2
talk_to_FIRST_FIREMAN_branch_1:
   23873:	ba 65 61 00 00       	mov    edx,@obj3:fireman3_cpp_variable_2                            ; fixup: num: 5419, src obj: 1, src ofs: 0x23874, dst obj: 3, dst ofs: 0x6165
   23878:	b8 63 04 00 00       	mov    eax,0x463
   2387d:	31 db                	xor    ebx,ebx
talk_to_FIRST_FIREMAN_branch_2:
   2387f:	e8 0c 6e 04 00       	call   play_wav
   23884:	b8 6e 61 00 00       	mov    eax,@obj3:fireman3_cpp_variable_3                            ; fixup: num: 5418, src obj: 1, src ofs: 0x23885, dst obj: 3, dst ofs: 0x616e
   23889:	e8 02 8f 04 00       	call   check_script_flag
   2388e:	84 c0                	test   al,al
   23890:	74 28                	je     talk_to_FIRST_FIREMAN_branch_3
   23892:	83 3d d4 2d 02 00 00 	cmp    DWORD PTR ds:@obj3:FIRST_FIREMAN_variable_1,0x0              ; fixup: num: 5417, src obj: 1, src ofs: 0x23894, dst obj: 3, dst ofs: 0x22dd4
   23899:	75 1f                	jne    talk_to_FIRST_FIREMAN_branch_3
   2389b:	b9 01 00 00 00       	mov    ecx,0x1
   238a0:	bb 03 00 00 00       	mov    ebx,0x3
   238a5:	ba 83 61 00 00       	mov    edx,@obj3:fireman3_cpp_variable_4                            ; fixup: num: 5416, src obj: 1, src ofs: 0x238a6, dst obj: 3, dst ofs: 0x6183
   238aa:	b8 5a 04 00 00       	mov    eax,0x45a
   238af:	89 0d d4 2d 02 00    	mov    DWORD PTR ds:@obj3:FIRST_FIREMAN_variable_1,ecx              ; fixup: num: 5415, src obj: 1, src ofs: 0x238b1, dst obj: 3, dst ofs: 0x22dd4
   238b5:	e8 d6 6d 04 00       	call   play_wav
talk_to_FIRST_FIREMAN_branch_3:
   238ba:	b8 8c 61 00 00       	mov    eax,@obj3:fireman3_cpp_variable_5                            ; fixup: num: 5414, src obj: 1, src ofs: 0x238bb, dst obj: 3, dst ofs: 0x618c
   238bf:	e8 cc 8e 04 00       	call   check_script_flag
   238c4:	84 c0                	test   al,al
   238c6:	74 28                	je     talk_to_FIRST_FIREMAN_branch_4
   238c8:	83 3d d8 2d 02 00 00 	cmp    DWORD PTR ds:@obj3:FIRST_FIREMAN_variable_2,0x0              ; fixup: num: 5413, src obj: 1, src ofs: 0x238ca, dst obj: 3, dst ofs: 0x22dd8
   238cf:	75 1f                	jne    talk_to_FIRST_FIREMAN_branch_4
   238d1:	bf 01 00 00 00       	mov    edi,0x1
   238d6:	bb 02 00 00 00       	mov    ebx,0x2
   238db:	ba a0 61 00 00       	mov    edx,@obj3:fireman3_cpp_variable_6                            ; fixup: num: 5412, src obj: 1, src ofs: 0x238dc, dst obj: 3, dst ofs: 0x61a0
   238e0:	b8 6a 04 00 00       	mov    eax,0x46a
   238e5:	89 3d d8 2d 02 00    	mov    DWORD PTR ds:@obj3:FIRST_FIREMAN_variable_2,edi              ; fixup: num: 5411, src obj: 1, src ofs: 0x238e7, dst obj: 3, dst ofs: 0x22dd8
   238eb:	e8 a0 6d 04 00       	call   play_wav
talk_to_FIRST_FIREMAN_branch_4:
   238f0:	31 c0                	xor    eax,eax
   238f2:	5f                   	pop    edi
   238f3:	5a                   	pop    edx
   238f4:	59                   	pop    ecx
   238f5:	5b                   	pop    ebx
   238f6:	c3                   	ret    
talk_to_FIRST_FIREMAN_branch_5:
   238f7:	89 15 d0 2d 02 00    	mov    DWORD PTR ds:@obj3:FIRST_FIREMAN,edx                         ; fixup: num: 5410, src obj: 1, src ofs: 0x238f9, dst obj: 3, dst ofs: 0x22dd0
   238fd:	a1 d0 2d 02 00       	mov    eax,ds:@obj3:FIRST_FIREMAN                                   ; fixup: num: 5307, src obj: 1, src ofs: 0x238fe, dst obj: 3, dst ofs: 0x22dd0
   23902:	c3                   	ret    
   23903:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   23909:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
   2390f:	90                   	nop

;-------------------------------------------------
;  Function 'FIRST_FIREMAN_FIRST_CONVERSATION'   -
;-------------------------------------------------
FIRST_FIREMAN_FIRST_CONVERSATION:
   23910:	85 c0                	test   eax,eax
   23912:	74 e3                	je     talk_to_FIRST_FIREMAN_branch_5
   23914:	a1 d0 2d 02 00       	mov    eax,ds:@obj3:FIRST_FIREMAN                                   ; fixup: num: 5306, src obj: 1, src ofs: 0x23915, dst obj: 3, dst ofs: 0x22dd0
   23919:	c3                   	ret    
   2391a:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'FIRST_FIREMAN_initialize'           -
;-------------------------------------------------
FIRST_FIREMAN_initialize:
   23920:	53                   	push   ebx
   23921:	52                   	push   edx
   23922:	ba 01 00 00 00       	mov    edx,0x1
   23927:	31 db                	xor    ebx,ebx
   23929:	89 15 d0 2d 02 00    	mov    DWORD PTR ds:@obj3:FIRST_FIREMAN,edx                         ; fixup: num: 5433, src obj: 1, src ofs: 0x2392b, dst obj: 3, dst ofs: 0x22dd0
   2392f:	89 1d d4 2d 02 00    	mov    DWORD PTR ds:@obj3:FIRST_FIREMAN_variable_1,ebx              ; fixup: num: 5432, src obj: 1, src ofs: 0x23931, dst obj: 3, dst ofs: 0x22dd4
   23935:	89 1d d8 2d 02 00    	mov    DWORD PTR ds:@obj3:FIRST_FIREMAN_variable_2,ebx              ; fixup: num: 5431, src obj: 1, src ofs: 0x23937, dst obj: 3, dst ofs: 0x22dd8
   2393b:	5a                   	pop    edx
   2393c:	5b                   	pop    ebx
   2393d:	c3                   	ret    
   2393e:	8b c0                	mov    eax,eax

;-------------------------------------------------
;  Function 'talk_to_SECOND_FIREMAN'             -
;-------------------------------------------------
talk_to_SECOND_FIREMAN:
   23940:	53                   	push   ebx
   23941:	51                   	push   ecx
   23942:	52                   	push   edx
   23943:	57                   	push   edi
   23944:	a1 dc 2d 02 00       	mov    eax,ds:@obj3:SECOND_FIREMAN                                  ; fixup: num: 5430, src obj: 1, src ofs: 0x23945, dst obj: 3, dst ofs: 0x22ddc
   23949:	85 c0                	test   eax,eax
   2394b:	74 19                	je     talk_to_SECOND_FIREMAN_branch_1
   2394d:	bb 02 00 00 00       	mov    ebx,0x2
   23952:	31 d2                	xor    edx,edx
   23954:	b8 b9 05 00 00       	mov    eax,0x5b9
   23959:	89 15 dc 2d 02 00    	mov    DWORD PTR ds:@obj3:SECOND_FIREMAN,edx                        ; fixup: num: 5429, src obj: 1, src ofs: 0x2395b, dst obj: 3, dst ofs: 0x22ddc
   2395f:	ba a9 61 00 00       	mov    edx,@obj3:fireman3_cpp_variable_7                            ; fixup: num: 5428, src obj: 1, src ofs: 0x23960, dst obj: 3, dst ofs: 0x61a9
   23964:	eb 0f                	jmp    talk_to_SECOND_FIREMAN_branch_2
talk_to_SECOND_FIREMAN_branch_1:
   23966:	bb 02 00 00 00       	mov    ebx,0x2
   2396b:	ba b2 61 00 00       	mov    edx,@obj3:fireman3_cpp_variable_8                            ; fixup: num: 5427, src obj: 1, src ofs: 0x2396c, dst obj: 3, dst ofs: 0x61b2
   23970:	b8 c7 05 00 00       	mov    eax,0x5c7
talk_to_SECOND_FIREMAN_branch_2:
   23975:	e8 16 6d 04 00       	call   play_wav
   2397a:	b8 bb 61 00 00       	mov    eax,@obj3:fireman3_cpp_variable_9                            ; fixup: num: 5426, src obj: 1, src ofs: 0x2397b, dst obj: 3, dst ofs: 0x61bb
   2397f:	e8 0c 8e 04 00       	call   check_script_flag
   23984:	84 c0                	test   al,al
   23986:	74 25                	je     talk_to_SECOND_FIREMAN_branch_3
   23988:	83 3d e0 2d 02 00 00 	cmp    DWORD PTR ds:@obj3:SECOND_FIREMAN_variable_1,0x0             ; fixup: num: 5425, src obj: 1, src ofs: 0x2398a, dst obj: 3, dst ofs: 0x22de0
   2398f:	75 1c                	jne    talk_to_SECOND_FIREMAN_branch_3
   23991:	b9 01 00 00 00       	mov    ecx,0x1
   23996:	ba d0 61 00 00       	mov    edx,@obj3:fireman3_cpp_variable_10                           ; fixup: num: 5424, src obj: 1, src ofs: 0x23997, dst obj: 3, dst ofs: 0x61d0
   2399b:	b8 c0 05 00 00       	mov    eax,0x5c0
   239a0:	89 cb                	mov    ebx,ecx
   239a2:	89 0d e0 2d 02 00    	mov    DWORD PTR ds:@obj3:SECOND_FIREMAN_variable_1,ecx             ; fixup: num: 5423, src obj: 1, src ofs: 0x239a4, dst obj: 3, dst ofs: 0x22de0
   239a8:	e8 e3 6c 04 00       	call   play_wav
talk_to_SECOND_FIREMAN_branch_3:
   239ad:	b8 d9 61 00 00       	mov    eax,@obj3:fireman3_cpp_variable_11                           ; fixup: num: 5317, src obj: 1, src ofs: 0x239ae, dst obj: 3, dst ofs: 0x61d9
   239b2:	e8 d9 8d 04 00       	call   check_script_flag
   239b7:	84 c0                	test   al,al
   239b9:	74 28                	je     talk_to_SECOND_FIREMAN_branch_4
   239bb:	83 3d e4 2d 02 00 00 	cmp    DWORD PTR ds:@obj3:SECOND_FIREMAN_variable_2,0x0             ; fixup: num: 5316, src obj: 1, src ofs: 0x239bd, dst obj: 3, dst ofs: 0x22de4
   239c2:	75 1f                	jne    talk_to_SECOND_FIREMAN_branch_4
   239c4:	bf 01 00 00 00       	mov    edi,0x1
   239c9:	bb 03 00 00 00       	mov    ebx,0x3
   239ce:	ba ed 61 00 00       	mov    edx,@obj3:fireman3_cpp_variable_12                           ; fixup: num: 5315, src obj: 1, src ofs: 0x239cf, dst obj: 3, dst ofs: 0x61ed
   239d3:	b8 cd 05 00 00       	mov    eax,0x5cd
   239d8:	89 3d e4 2d 02 00    	mov    DWORD PTR ds:@obj3:SECOND_FIREMAN_variable_2,edi             ; fixup: num: 5314, src obj: 1, src ofs: 0x239da, dst obj: 3, dst ofs: 0x22de4
   239de:	e8 ad 6c 04 00       	call   play_wav
talk_to_SECOND_FIREMAN_branch_4:
   239e3:	31 c0                	xor    eax,eax
   239e5:	5f                   	pop    edi
   239e6:	5a                   	pop    edx
   239e7:	59                   	pop    ecx
   239e8:	5b                   	pop    ebx
   239e9:	c3                   	ret    
talk_to_SECOND_FIREMAN_branch_5:
   239ea:	89 15 dc 2d 02 00    	mov    DWORD PTR ds:@obj3:SECOND_FIREMAN,edx                        ; fixup: num: 5313, src obj: 1, src ofs: 0x239ec, dst obj: 3, dst ofs: 0x22ddc
   239f0:	a1 dc 2d 02 00       	mov    eax,ds:@obj3:SECOND_FIREMAN                                  ; fixup: num: 5312, src obj: 1, src ofs: 0x239f1, dst obj: 3, dst ofs: 0x22ddc
   239f5:	c3                   	ret    
   239f6:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   239fc:	8d 54 22 00          	lea    edx,[edx+eiz*1+0x0]

;-------------------------------------------------
;  Function 'SECOND_FIREMAN_FIRST_CONVERSATION'  -
;-------------------------------------------------
SECOND_FIREMAN_FIRST_CONVERSATION:
   23a00:	85 c0                	test   eax,eax
   23a02:	74 e6                	je     talk_to_SECOND_FIREMAN_branch_5
   23a04:	a1 dc 2d 02 00       	mov    eax,ds:@obj3:SECOND_FIREMAN                                  ; fixup: num: 5311, src obj: 1, src ofs: 0x23a05, dst obj: 3, dst ofs: 0x22ddc
   23a09:	c3                   	ret    
   23a0a:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'SECOND_FIREMAN_initialize'          -
;-------------------------------------------------
SECOND_FIREMAN_initialize:
   23a10:	53                   	push   ebx
   23a11:	52                   	push   edx
   23a12:	ba 01 00 00 00       	mov    edx,0x1
   23a17:	31 db                	xor    ebx,ebx
   23a19:	89 15 dc 2d 02 00    	mov    DWORD PTR ds:@obj3:SECOND_FIREMAN,edx                        ; fixup: num: 5310, src obj: 1, src ofs: 0x23a1b, dst obj: 3, dst ofs: 0x22ddc
   23a1f:	89 1d e0 2d 02 00    	mov    DWORD PTR ds:@obj3:SECOND_FIREMAN_variable_1,ebx             ; fixup: num: 5309, src obj: 1, src ofs: 0x23a21, dst obj: 3, dst ofs: 0x22de0
   23a25:	89 1d e4 2d 02 00    	mov    DWORD PTR ds:@obj3:SECOND_FIREMAN_variable_2,ebx             ; fixup: num: 5308, src obj: 1, src ofs: 0x23a27, dst obj: 3, dst ofs: 0x22de4
   23a2b:	5a                   	pop    edx
   23a2c:	5b                   	pop    ebx
   23a2d:	c3                   	ret    
;-------------------------------------------------
;  Bad code 45 (zero after ret):                 -
;-------------------------------------------------
;  23a2c:	5b                   	pop    ebx
;  23a2d:	c3                   	ret    
;  23a2e:	00 00                	add    BYTE PTR [eax],al
;-------------------------------------------------
;  Padding data (2 bytes):                       -
;-------------------------------------------------
   23a2e:	00 00                	db     2 dup(0x00)
;-------------------------------------------------
;  End of bad code 45                            -
;-------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 50 (D:\SOURCE\fireman3.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 50: D:\SOURCE\fireman3.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------
fireman3_cpp_variable_1:
    615c:	46 49 52 45 4d 41 4e 31 00 	db     "FIREMAN1",0x00
fireman3_cpp_variable_2:
    6165:	46 49 52 45 4d 41 4e 31 00 	db     "FIREMAN1",0x00
fireman3_cpp_variable_3:
    616e:	53 54 45 50 48 5f 4d 49 44 47 41 4d 45 5f 50 4c 41 59 45 44 00 	db     "STEPH_MIDGAME_PLAYED",0x00
fireman3_cpp_variable_4:
    6183:	46 49 52 45 4d 41 4e 31 00 	db     "FIREMAN1",0x00
fireman3_cpp_variable_5:
    618c:	42 4f 4c 54 5f 4f 46 5f 43 4c 4f 54 48 5f 54 41 4b 45 4e 00 	db     "BOLT_OF_CLOTH_TAKEN",0x00
fireman3_cpp_variable_6:
    61a0:	46 49 52 45 4d 41 4e 31 00 	db     "FIREMAN1",0x00
fireman3_cpp_variable_7:
    61a9:	46 49 52 45 4d 41 4e 32 00 	db     "FIREMAN2",0x00
fireman3_cpp_variable_8:
    61b2:	46 49 52 45 4d 41 4e 32 00 	db     "FIREMAN2",0x00
fireman3_cpp_variable_9:
    61bb:	53 54 45 50 48 5f 4d 49 44 47 41 4d 45 5f 50 4c 41 59 45 44 00 	db     "STEPH_MIDGAME_PLAYED",0x00
fireman3_cpp_variable_10:
    61d0:	46 49 52 45 4d 41 4e 32 00 	db     "FIREMAN2",0x00
fireman3_cpp_variable_11:
    61d9:	42 4f 4c 54 5f 4f 46 5f 43 4c 4f 54 48 5f 54 41 4b 45 4e 00 	db     "BOLT_OF_CLOTH_TAKEN",0x00
fireman3_cpp_variable_12:
    61ed:	46 49 52 45 4d 41 4e 32 00 	db     "FIREMAN2",0x00
    61f6:	00 00                	db     2 dup(0x00)                                                  ; dec:   0, chr: '\0'

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 50 (D:\SOURCE\fireman3.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 50: D:\SOURCE\fireman3.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------
FIRST_FIREMAN:                                                                                      ; access size: DWORD
   22dd0:	00 00 00 00          	dd     0x00000000
FIRST_FIREMAN_variable_1:                                                                           ; access size: DWORD
   22dd4:	00 00 00 00          	dd     0x00000000
FIRST_FIREMAN_variable_2:                                                                           ; access size: DWORD
   22dd8:	00 00 00 00          	dd     0x00000000
SECOND_FIREMAN:                                                                                     ; access size: DWORD
   22ddc:	00 00 00 00          	dd     0x00000000
SECOND_FIREMAN_variable_1:                                                                          ; access size: DWORD
   22de0:	00 00 00 00          	dd     0x00000000
SECOND_FIREMAN_variable_2:                                                                          ; access size: DWORD
   22de4:	00 00 00 00          	dd     0x00000000

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 50 (D:\SOURCE\fireman3.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------