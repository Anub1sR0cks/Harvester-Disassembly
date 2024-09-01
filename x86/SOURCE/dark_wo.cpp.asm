;-------------------------------------------------------------------------------
;                                                                              -
;  Module 49: D:\SOURCE\dark_wo.cpp                                            -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function 'talk_to_DARK_WOMAN'                 -
;-------------------------------------------------
talk_to_DARK_WOMAN:
   23610:	53                   	push   ebx
   23611:	52                   	push   edx
   23612:	8b 15 bc 94 02 00    	mov    edx,DWORD PTR ds:@obj3:showing_item                          ; fixup: num: 5388, src obj: 1, src ofs: 0x23614, dst obj: 3, dst ofs: 0x294bc
   23618:	85 d2                	test   edx,edx
   2361a:	74 5d                	je     talk_to_DARK_WOMAN_branch_2
   2361c:	89 d0                	mov    eax,edx
   2361e:	ba 68 60 00 00       	mov    edx,@obj3:dark_wo_cpp_variable_1                             ; fixup: num: 5387, src obj: 1, src ofs: 0x2361f, dst obj: 3, dst ofs: 0x6068
   23623:	e8 08 2e 05 00       	call   strcmp_
   23628:	85 c0                	test   eax,eax
   2362a:	75 4d                	jne    talk_to_DARK_WOMAN_branch_2
talk_to_DARK_WOMAN_branch_1:
   2362c:	bb 02 00 00 00       	mov    ebx,0x2
   23631:	ba 73 60 00 00       	mov    edx,@obj3:dark_wo_cpp_variable_2                             ; fixup: num: 5386, src obj: 1, src ofs: 0x23632, dst obj: 3, dst ofs: 0x6073
   23636:	b8 03 4d 00 00       	mov    eax,0x4d03
   2363b:	e8 50 70 04 00       	call   play_wav
   23640:	e8 7b 54 00 00       	call   DARK_WOMAN_COMPULSIVELY_RIPS_CHUNKS_OF_FLESH_FROM
   23645:	bb 03 00 00 00       	mov    ebx,0x3
   2364a:	ba 7e 60 00 00       	mov    edx,@obj3:dark_wo_cpp_variable_3                             ; fixup: num: 5385, src obj: 1, src ofs: 0x2364b, dst obj: 3, dst ofs: 0x607e
   2364f:	b8 0d 4d 00 00       	mov    eax,0x4d0d
   23654:	e8 37 70 04 00       	call   play_wav
   23659:	ba 89 60 00 00       	mov    edx,@obj3:dark_wo_cpp_variable_4                             ; fixup: num: 5384, src obj: 1, src ofs: 0x2365a, dst obj: 3, dst ofs: 0x6089
   2365e:	b8 94 60 00 00       	mov    eax,@obj3:dark_wo_cpp_variable_5                             ; fixup: num: 5383, src obj: 1, src ofs: 0x2365f, dst obj: 3, dst ofs: 0x6094
   23663:	31 db                	xor    ebx,ebx
   23665:	e8 a6 f8 02 00       	call   set_object
   2366a:	b8 9e 60 00 00       	mov    eax,@obj3:dark_wo_cpp_variable_6                             ; fixup: num: 5382, src obj: 1, src ofs: 0x2366b, dst obj: 3, dst ofs: 0x609e
   2366f:	e8 0c 95 04 00       	call   ExecuteCommand
   23674:	31 c0                	xor    eax,eax
   23676:	5a                   	pop    edx
   23677:	5b                   	pop    ebx
   23678:	c3                   	ret    
talk_to_DARK_WOMAN_branch_2:
   23679:	a1 cc 2d 02 00       	mov    eax,ds:@obj3:DARK_WOMAN                                      ; fixup: num: 5381, src obj: 1, src ofs: 0x2367a, dst obj: 3, dst ofs: 0x22dcc
   2367e:	85 c0                	test   eax,eax
   23680:	0f 84 8f 01 00 00    	je     talk_to_DARK_WOMAN_branch_10
   23686:	ba ab 60 00 00       	mov    edx,@obj3:dark_wo_cpp_variable_7                             ; fixup: num: 5395, src obj: 1, src ofs: 0x23687, dst obj: 3, dst ofs: 0x60ab
   2368b:	31 db                	xor    ebx,ebx
   2368d:	b8 d5 4c 00 00       	mov    eax,0x4cd5
   23692:	89 1d cc 2d 02 00    	mov    DWORD PTR ds:@obj3:DARK_WOMAN,ebx                            ; fixup: num: 5394, src obj: 1, src ofs: 0x23694, dst obj: 3, dst ofs: 0x22dcc
   23698:	bb 01 00 00 00       	mov    ebx,0x1
   2369d:	e8 ee 6f 04 00       	call   play_wav
   236a2:	b8 4b 00 00 00       	mov    eax,0x4b
   236a7:	e8 f4 6a 00 00       	call   GetDlgFileString
   236ac:	e8 5f 78 04 00       	call   get_response
   236b1:	83 f8 01             	cmp    eax,0x1
   236b4:	75 1e                	jne    talk_to_DARK_WOMAN_branch_3
   236b6:	bb 02 00 00 00       	mov    ebx,0x2
   236bb:	ba b6 60 00 00       	mov    edx,@obj3:dark_wo_cpp_variable_8                             ; fixup: num: 5393, src obj: 1, src ofs: 0x236bc, dst obj: 3, dst ofs: 0x60b6
   236c0:	b8 e2 4c 00 00       	mov    eax,0x4ce2
   236c5:	e8 c6 6f 04 00       	call   play_wav
   236ca:	b8 c1 60 00 00       	mov    eax,@obj3:dark_wo_cpp_variable_9                             ; fixup: num: 5392, src obj: 1, src ofs: 0x236cb, dst obj: 3, dst ofs: 0x60c1
   236cf:	e9 3c 01 00 00       	jmp    talk_to_DARK_WOMAN_branch_9
talk_to_DARK_WOMAN_branch_3:
   236d4:	83 f8 02             	cmp    eax,0x2
   236d7:	0f 85 38 01 00 00    	jne    talk_to_DARK_WOMAN_branch_10
   236dd:	bb 04 00 00 00       	mov    ebx,0x4
   236e2:	ba cc 60 00 00       	mov    edx,@obj3:dark_wo_cpp_variable_10                            ; fixup: num: 5391, src obj: 1, src ofs: 0x236e3, dst obj: 3, dst ofs: 0x60cc
   236e7:	b8 e6 4c 00 00       	mov    eax,0x4ce6
   236ec:	e8 9f 6f 04 00       	call   play_wav
   236f1:	b8 4c 00 00 00       	mov    eax,0x4c
   236f6:	e8 a5 6a 00 00       	call   GetDlgFileString
   236fb:	e8 10 78 04 00       	call   get_response
   23700:	83 f8 01             	cmp    eax,0x1
   23703:	75 23                	jne    talk_to_DARK_WOMAN_branch_4
   23705:	bb 02 00 00 00       	mov    ebx,0x2
   2370a:	ba d7 60 00 00       	mov    edx,@obj3:dark_wo_cpp_variable_11                            ; fixup: num: 5390, src obj: 1, src ofs: 0x2370b, dst obj: 3, dst ofs: 0x60d7
   2370f:	b8 e2 4c 00 00       	mov    eax,0x4ce2
   23714:	e8 77 6f 04 00       	call   play_wav
   23719:	b8 e2 60 00 00       	mov    eax,@obj3:dark_wo_cpp_variable_12                            ; fixup: num: 5389, src obj: 1, src ofs: 0x2371a, dst obj: 3, dst ofs: 0x60e2
   2371e:	e8 6d 93 04 00       	call   MonsterfyNpc
   23723:	31 c0                	xor    eax,eax
   23725:	5a                   	pop    edx
   23726:	5b                   	pop    ebx
   23727:	c3                   	ret    
talk_to_DARK_WOMAN_branch_4:
   23728:	83 f8 02             	cmp    eax,0x2
   2372b:	0f 85 e4 00 00 00    	jne    talk_to_DARK_WOMAN_branch_10
   23731:	bb 04 00 00 00       	mov    ebx,0x4
   23736:	ba ed 60 00 00       	mov    edx,@obj3:dark_wo_cpp_variable_13                            ; fixup: num: 5402, src obj: 1, src ofs: 0x23737, dst obj: 3, dst ofs: 0x60ed
   2373b:	b8 e6 4c 00 00       	mov    eax,0x4ce6
   23740:	e8 4b 6f 04 00       	call   play_wav
   23745:	b8 4d 00 00 00       	mov    eax,0x4d
   2374a:	e8 51 6a 00 00       	call   GetDlgFileString
   2374f:	e8 bc 77 04 00       	call   get_response
   23754:	83 f8 01             	cmp    eax,0x1
   23757:	75 23                	jne    talk_to_DARK_WOMAN_branch_5
   23759:	bb 02 00 00 00       	mov    ebx,0x2
   2375e:	ba f8 60 00 00       	mov    edx,@obj3:dark_wo_cpp_variable_14                            ; fixup: num: 5401, src obj: 1, src ofs: 0x2375f, dst obj: 3, dst ofs: 0x60f8
   23763:	b8 e2 4c 00 00       	mov    eax,0x4ce2
   23768:	e8 23 6f 04 00       	call   play_wav
   2376d:	b8 03 61 00 00       	mov    eax,@obj3:dark_wo_cpp_variable_15                            ; fixup: num: 5400, src obj: 1, src ofs: 0x2376e, dst obj: 3, dst ofs: 0x6103
   23772:	e8 19 93 04 00       	call   MonsterfyNpc
   23777:	31 c0                	xor    eax,eax
   23779:	5a                   	pop    edx
   2377a:	5b                   	pop    ebx
   2377b:	c3                   	ret    
talk_to_DARK_WOMAN_branch_5:
   2377c:	83 f8 02             	cmp    eax,0x2
   2377f:	0f 85 90 00 00 00    	jne    talk_to_DARK_WOMAN_branch_10
   23785:	bb 04 00 00 00       	mov    ebx,0x4
   2378a:	ba 0e 61 00 00       	mov    edx,@obj3:dark_wo_cpp_variable_16                            ; fixup: num: 5399, src obj: 1, src ofs: 0x2378b, dst obj: 3, dst ofs: 0x610e
   2378f:	b8 e6 4c 00 00       	mov    eax,0x4ce6
   23794:	e8 f7 6e 04 00       	call   play_wav
   23799:	b8 19 61 00 00       	mov    eax,@obj3:dark_wo_cpp_variable_17                            ; fixup: num: 5398, src obj: 1, src ofs: 0x2379a, dst obj: 3, dst ofs: 0x6119
   2379e:	e8 cd 90 04 00       	call   check_inventory
   237a3:	84 c0                	test   al,al
   237a5:	74 07                	je     talk_to_DARK_WOMAN_branch_6
   237a7:	b8 4e 00 00 00       	mov    eax,0x4e
   237ac:	eb 05                	jmp    talk_to_DARK_WOMAN_branch_7
talk_to_DARK_WOMAN_branch_6:
   237ae:	b8 4f 00 00 00       	mov    eax,0x4f
talk_to_DARK_WOMAN_branch_7:
   237b3:	e8 e8 69 00 00       	call   GetDlgFileString
   237b8:	e8 53 77 04 00       	call   get_response
   237bd:	83 f8 01             	cmp    eax,0x1
   237c0:	75 23                	jne    talk_to_DARK_WOMAN_branch_8
   237c2:	bb 02 00 00 00       	mov    ebx,0x2
   237c7:	ba 24 61 00 00       	mov    edx,@obj3:dark_wo_cpp_variable_18                            ; fixup: num: 5397, src obj: 1, src ofs: 0x237c8, dst obj: 3, dst ofs: 0x6124
   237cc:	b8 e2 4c 00 00       	mov    eax,0x4ce2
   237d1:	e8 ba 6e 04 00       	call   play_wav
   237d6:	b8 2f 61 00 00       	mov    eax,@obj3:dark_wo_cpp_variable_19                            ; fixup: num: 5396, src obj: 1, src ofs: 0x237d7, dst obj: 3, dst ofs: 0x612f
   237db:	e8 b0 92 04 00       	call   MonsterfyNpc
   237e0:	31 c0                	xor    eax,eax
   237e2:	5a                   	pop    edx
   237e3:	5b                   	pop    ebx
   237e4:	c3                   	ret    
talk_to_DARK_WOMAN_branch_8:
   237e5:	b8 3a 61 00 00       	mov    eax,@obj3:dark_wo_cpp_variable_20                            ; fixup: num: 5409, src obj: 1, src ofs: 0x237e6, dst obj: 3, dst ofs: 0x613a
   237ea:	e8 81 90 04 00       	call   check_inventory
   237ef:	84 c0                	test   al,al
   237f1:	0f 85 35 fe ff ff    	jne    talk_to_DARK_WOMAN_branch_1
   237f7:	bb 02 00 00 00       	mov    ebx,0x2
   237fc:	ba 45 61 00 00       	mov    edx,@obj3:dark_wo_cpp_variable_21                            ; fixup: num: 5408, src obj: 1, src ofs: 0x237fd, dst obj: 3, dst ofs: 0x6145
   23801:	b8 fc 4c 00 00       	mov    eax,0x4cfc
   23806:	e8 85 6e 04 00       	call   play_wav
   2380b:	b8 50 61 00 00       	mov    eax,@obj3:dark_wo_cpp_variable_22                            ; fixup: num: 5407, src obj: 1, src ofs: 0x2380c, dst obj: 3, dst ofs: 0x6150
talk_to_DARK_WOMAN_branch_9:
   23810:	e8 7b 92 04 00       	call   MonsterfyNpc
talk_to_DARK_WOMAN_branch_10:
   23815:	31 c0                	xor    eax,eax
   23817:	5a                   	pop    edx
   23818:	5b                   	pop    ebx
   23819:	c3                   	ret    
talk_to_DARK_WOMAN_branch_11:
   2381a:	89 15 cc 2d 02 00    	mov    DWORD PTR ds:@obj3:DARK_WOMAN,edx                            ; fixup: num: 5406, src obj: 1, src ofs: 0x2381c, dst obj: 3, dst ofs: 0x22dcc
   23820:	a1 cc 2d 02 00       	mov    eax,ds:@obj3:DARK_WOMAN                                      ; fixup: num: 5405, src obj: 1, src ofs: 0x23821, dst obj: 3, dst ofs: 0x22dcc
   23825:	c3                   	ret    
   23826:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   2382c:	8d 54 22 00          	lea    edx,[edx+eiz*1+0x0]

;-------------------------------------------------
;  Function 'DARK_WOMANS_FIRST_CONVERSATION'     -
;-------------------------------------------------
DARK_WOMANS_FIRST_CONVERSATION:
   23830:	85 c0                	test   eax,eax
   23832:	74 e6                	je     talk_to_DARK_WOMAN_branch_11
   23834:	a1 cc 2d 02 00       	mov    eax,ds:@obj3:DARK_WOMAN                                      ; fixup: num: 5404, src obj: 1, src ofs: 0x23835, dst obj: 3, dst ofs: 0x22dcc
   23839:	c3                   	ret    
   2383a:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'DARK_WOMAN_initialize'              -
;-------------------------------------------------
DARK_WOMAN_initialize:
   23840:	c7 05 cc 2d 02 00 01 00 00 00 	mov    DWORD PTR ds:@obj3:DARK_WOMAN,0x1                   ; fixup: num: 5403, src obj: 1, src ofs: 0x23842, dst obj: 3, dst ofs: 0x22dcc
   2384a:	c3                   	ret    
;-------------------------------------------------
;  Bad code 44 (zero after ret):                 -
;-------------------------------------------------
;  23840:	c7 05 cc 2d 02 00 01 00 00 00 	mov    DWORD PTR ds:0x22dcc,0x1
;  2384a:	c3                   	ret    
;  2384b:	00 00                	add    BYTE PTR [eax],al
;  2384d:	00 00                	add    BYTE PTR [eax],al
;-------------------------------------------------
;  Padding data (5 bytes):                       -
;-------------------------------------------------
   2384b:	00 00 00 00 00       	db     5 dup(0x00)
;-------------------------------------------------
;  End of bad code 44                            -
;-------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 49 (D:\SOURCE\dark_wo.cpp)                                    -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 49: D:\SOURCE\dark_wo.cpp                                            -
;                                                                              -
;-------------------------------------------------------------------------------
dark_wo_cpp_variable_1:
    6068:	48 41 4e 44 4d 49 52 52 4f 52 00 	db     "HANDMIRROR",0x00
dark_wo_cpp_variable_2:
    6073:	44 41 52 4b 5f 57 4f 4d 41 4e 00 	db     "DARK_WOMAN",0x00
dark_wo_cpp_variable_3:
    607e:	44 41 52 4b 5f 57 4f 4d 41 4e 00 	db     "DARK_WOMAN",0x00
dark_wo_cpp_variable_4:
    6089:	48 41 4e 44 4d 49 52 52 4f 52 00 	db     "HANDMIRROR",0x00
dark_wo_cpp_variable_5:
    6094:	49 4e 56 45 4e 54 4f 52 59 00 	db     "INVENTORY",0x00
dark_wo_cpp_variable_6:
    609e:	53 45 54 5f 44 5f 57 5f 46 4c 41 47 00 	db     "SET_D_W_FLAG",0x00
dark_wo_cpp_variable_7:
    60ab:	44 41 52 4b 5f 57 4f 4d 41 4e 00 	db     "DARK_WOMAN",0x00
dark_wo_cpp_variable_8:
    60b6:	44 41 52 4b 5f 57 4f 4d 41 4e 00 	db     "DARK_WOMAN",0x00
dark_wo_cpp_variable_9:
    60c1:	44 41 52 4b 5f 57 4f 4d 41 4e 00 	db     "DARK_WOMAN",0x00
dark_wo_cpp_variable_10:
    60cc:	44 41 52 4b 5f 57 4f 4d 41 4e 00 	db     "DARK_WOMAN",0x00
dark_wo_cpp_variable_11:
    60d7:	44 41 52 4b 5f 57 4f 4d 41 4e 00 	db     "DARK_WOMAN",0x00
dark_wo_cpp_variable_12:
    60e2:	44 41 52 4b 5f 57 4f 4d 41 4e 00 	db     "DARK_WOMAN",0x00
dark_wo_cpp_variable_13:
    60ed:	44 41 52 4b 5f 57 4f 4d 41 4e 00 	db     "DARK_WOMAN",0x00
dark_wo_cpp_variable_14:
    60f8:	44 41 52 4b 5f 57 4f 4d 41 4e 00 	db     "DARK_WOMAN",0x00
dark_wo_cpp_variable_15:
    6103:	44 41 52 4b 5f 57 4f 4d 41 4e 00 	db     "DARK_WOMAN",0x00
dark_wo_cpp_variable_16:
    610e:	44 41 52 4b 5f 57 4f 4d 41 4e 00 	db     "DARK_WOMAN",0x00
dark_wo_cpp_variable_17:
    6119:	48 41 4e 44 4d 49 52 52 4f 52 00 	db     "HANDMIRROR",0x00
dark_wo_cpp_variable_18:
    6124:	44 41 52 4b 5f 57 4f 4d 41 4e 00 	db     "DARK_WOMAN",0x00
dark_wo_cpp_variable_19:
    612f:	44 41 52 4b 5f 57 4f 4d 41 4e 00 	db     "DARK_WOMAN",0x00
dark_wo_cpp_variable_20:
    613a:	48 41 4e 44 4d 49 52 52 4f 52 00 	db     "HANDMIRROR",0x00
dark_wo_cpp_variable_21:
    6145:	44 41 52 4b 5f 57 4f 4d 41 4e 00 	db     "DARK_WOMAN",0x00
dark_wo_cpp_variable_22:
    6150:	44 41 52 4b 5f 57 4f 4d 41 4e 00 	db     "DARK_WOMAN",0x00
    615b:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 49 (D:\SOURCE\dark_wo.cpp)                                    -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 49: D:\SOURCE\dark_wo.cpp                                            -
;                                                                              -
;-------------------------------------------------------------------------------
DARK_WOMAN:                                                                                         ; access size: DWORD
   22dcc:	00 00 00 00          	dd     0x00000000

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 49 (D:\SOURCE\dark_wo.cpp)                                    -
;                                                                              -
;-------------------------------------------------------------------------------