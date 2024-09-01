;-------------------------------------------------------------------------------
;                                                                              -
;  Module 36: D:\SOURCE\mr_mckni.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function 'talk_to_MR_MCKNIGHT'                -
;-------------------------------------------------
talk_to_MR_MCKNIGHT:
   1c770:	53                   	push   ebx
   1c771:	51                   	push   ecx
   1c772:	52                   	push   edx
   1c773:	b8 0c 42 00 00       	mov    eax,@obj3:mr_mckni_cpp_variable_1                            ; fixup: num: 3919, src obj: 1, src ofs: 0x1c774, dst obj: 3, dst ofs: 0x420c
   1c778:	e8 13 00 05 00       	call   check_script_flag
   1c77d:	84 c0                	test   al,al
   1c77f:	74 14                	je     talk_to_MR_MCKNIGHT_branch_1
   1c781:	bb 02 00 00 00       	mov    ebx,0x2
   1c786:	ba 1a 42 00 00       	mov    edx,@obj3:mr_mckni_cpp_variable_2                            ; fixup: num: 3918, src obj: 1, src ofs: 0x1c787, dst obj: 3, dst ofs: 0x421a
   1c78b:	b8 d0 15 00 00       	mov    eax,0x15d0
   1c790:	e9 54 03 00 00       	jmp    talk_to_MR_MCKNIGHT_branch_16
talk_to_MR_MCKNIGHT_branch_1:
   1c795:	b8 23 42 00 00       	mov    eax,@obj3:mr_mckni_cpp_variable_3                            ; fixup: num: 3917, src obj: 1, src ofs: 0x1c796, dst obj: 3, dst ofs: 0x4223
   1c79a:	e8 f1 ff 04 00       	call   check_script_flag
   1c79f:	84 c0                	test   al,al
   1c7a1:	74 2e                	je     talk_to_MR_MCKNIGHT_branch_2
   1c7a3:	83 3d b0 2c 02 00 00 	cmp    DWORD PTR ds:@obj3:MR_MCKNIGHT_variable_1,0x0                ; fixup: num: 3916, src obj: 1, src ofs: 0x1c7a5, dst obj: 3, dst ofs: 0x22cb0
   1c7aa:	75 25                	jne    talk_to_MR_MCKNIGHT_branch_2
   1c7ac:	bb 02 00 00 00       	mov    ebx,0x2
   1c7b1:	ba 31 42 00 00       	mov    edx,@obj3:mr_mckni_cpp_variable_4                            ; fixup: num: 3915, src obj: 1, src ofs: 0x1c7b2, dst obj: 3, dst ofs: 0x4231
   1c7b6:	b8 c9 15 00 00       	mov    eax,0x15c9
   1c7bb:	e8 d0 de 04 00       	call   play_wav
   1c7c0:	bb 01 00 00 00       	mov    ebx,0x1
   1c7c5:	31 c0                	xor    eax,eax
   1c7c7:	89 1d b0 2c 02 00    	mov    DWORD PTR ds:@obj3:MR_MCKNIGHT_variable_1,ebx                ; fixup: num: 3914, src obj: 1, src ofs: 0x1c7c9, dst obj: 3, dst ofs: 0x22cb0
   1c7cd:	5a                   	pop    edx
   1c7ce:	59                   	pop    ecx
   1c7cf:	5b                   	pop    ebx
   1c7d0:	c3                   	ret    
talk_to_MR_MCKNIGHT_branch_2:
   1c7d1:	8b 0d bc 94 02 00    	mov    ecx,DWORD PTR ds:@obj3:showing_item                          ; fixup: num: 3913, src obj: 1, src ofs: 0x1c7d3, dst obj: 3, dst ofs: 0x294bc
   1c7d7:	85 c9                	test   ecx,ecx
   1c7d9:	0f 84 f0 01 00 00    	je     talk_to_MR_MCKNIGHT_branch_12
   1c7df:	ba 3a 42 00 00       	mov    edx,@obj3:mr_mckni_cpp_variable_5                            ; fixup: num: 3912, src obj: 1, src ofs: 0x1c7e0, dst obj: 3, dst ofs: 0x423a
   1c7e4:	89 c8                	mov    eax,ecx
   1c7e6:	e8 45 9c 05 00       	call   strcmp_
   1c7eb:	85 c0                	test   eax,eax
   1c7ed:	75 24                	jne    talk_to_MR_MCKNIGHT_branch_3
   1c7ef:	ba 01 00 00 00       	mov    edx,0x1
   1c7f4:	bb 01 00 00 00       	mov    ebx,0x1
   1c7f9:	e8 72 bb 00 00       	call   SHOWN_PHOTO_OF_WHALEY_HERRILL_AROUND
   1c7fe:	ba 52 42 00 00       	mov    edx,@obj3:mr_mckni_cpp_variable_6                            ; fixup: num: 3911, src obj: 1, src ofs: 0x1c7ff, dst obj: 3, dst ofs: 0x4252
   1c803:	b8 ea 15 00 00       	mov    eax,0x15ea
   1c808:	e8 83 de 04 00       	call   play_wav
   1c80d:	31 c0                	xor    eax,eax
   1c80f:	5a                   	pop    edx
   1c810:	59                   	pop    ecx
   1c811:	5b                   	pop    ebx
   1c812:	c3                   	ret    
talk_to_MR_MCKNIGHT_branch_3:
   1c813:	ba 5b 42 00 00       	mov    edx,@obj3:mr_mckni_cpp_variable_7                            ; fixup: num: 3910, src obj: 1, src ofs: 0x1c814, dst obj: 3, dst ofs: 0x425b
   1c818:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 3909, src obj: 1, src ofs: 0x1c819, dst obj: 3, dst ofs: 0x294bc
   1c81d:	e8 0e 9c 05 00       	call   strcmp_
   1c822:	85 c0                	test   eax,eax
   1c824:	74 13                	je     talk_to_MR_MCKNIGHT_branch_4
   1c826:	ba 68 42 00 00       	mov    edx,@obj3:mr_mckni_cpp_variable_8                            ; fixup: num: 3930, src obj: 1, src ofs: 0x1c827, dst obj: 3, dst ofs: 0x4268
   1c82b:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 3929, src obj: 1, src ofs: 0x1c82c, dst obj: 3, dst ofs: 0x294bc
   1c830:	e8 fb 9b 05 00       	call   strcmp_
   1c835:	85 c0                	test   eax,eax
   1c837:	75 71                	jne    talk_to_MR_MCKNIGHT_branch_7
talk_to_MR_MCKNIGHT_branch_4:
   1c839:	ba 01 00 00 00       	mov    edx,0x1
   1c83e:	31 c0                	xor    eax,eax
   1c840:	e8 1b bb 00 00       	call   SHOWN_PHOTO_OF_CORPSE_AROUND
   1c845:	31 db                	xor    ebx,ebx
   1c847:	ba 79 42 00 00       	mov    edx,@obj3:mr_mckni_cpp_variable_9                            ; fixup: num: 3928, src obj: 1, src ofs: 0x1c848, dst obj: 3, dst ofs: 0x4279
   1c84c:	b8 f2 15 00 00       	mov    eax,0x15f2
   1c851:	e8 3a de 04 00       	call   play_wav
   1c856:	b8 01 00 00 00       	mov    eax,0x1
   1c85b:	31 d2                	xor    edx,edx
   1c85d:	e8 6e ba 00 00       	call   MOYNAHAN_SAID_CORPSE_DIED_OF_NATURAL_CAUSES
   1c862:	85 c0                	test   eax,eax
   1c864:	74 1d                	je     talk_to_MR_MCKNIGHT_branch_5
   1c866:	ba 82 42 00 00       	mov    edx,@obj3:mr_mckni_cpp_variable_10                           ; fixup: num: 3927, src obj: 1, src ofs: 0x1c867, dst obj: 3, dst ofs: 0x4282
   1c86b:	b8 f8 15 00 00       	mov    eax,0x15f8
   1c870:	31 db                	xor    ebx,ebx
   1c872:	e8 19 de 04 00       	call   play_wav
   1c877:	ba 85 42 00 00       	mov    edx,@obj3:mr_mckni_cpp_variable_11                           ; fixup: num: 3926, src obj: 1, src ofs: 0x1c878, dst obj: 3, dst ofs: 0x4285
   1c87c:	b8 fd 15 00 00       	mov    eax,0x15fd
   1c881:	eb 1b                	jmp    talk_to_MR_MCKNIGHT_branch_6
talk_to_MR_MCKNIGHT_branch_5:
   1c883:	ba 8e 42 00 00       	mov    edx,@obj3:mr_mckni_cpp_variable_12                           ; fixup: num: 3925, src obj: 1, src ofs: 0x1c884, dst obj: 3, dst ofs: 0x428e
   1c888:	b8 05 16 00 00       	mov    eax,0x1605
   1c88d:	31 db                	xor    ebx,ebx
   1c88f:	e8 fc dd 04 00       	call   play_wav
   1c894:	ba 91 42 00 00       	mov    edx,@obj3:mr_mckni_cpp_variable_13                           ; fixup: num: 3924, src obj: 1, src ofs: 0x1c895, dst obj: 3, dst ofs: 0x4291
   1c899:	b8 09 16 00 00       	mov    eax,0x1609
talk_to_MR_MCKNIGHT_branch_6:
   1c89e:	31 db                	xor    ebx,ebx
   1c8a0:	e8 eb dd 04 00       	call   play_wav
   1c8a5:	e9 44 02 00 00       	jmp    talk_to_MR_MCKNIGHT_branch_17
talk_to_MR_MCKNIGHT_branch_7:
   1c8aa:	ba 9a 42 00 00       	mov    edx,@obj3:mr_mckni_cpp_variable_14                           ; fixup: num: 3923, src obj: 1, src ofs: 0x1c8ab, dst obj: 3, dst ofs: 0x429a
   1c8af:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 3922, src obj: 1, src ofs: 0x1c8b0, dst obj: 3, dst ofs: 0x294bc
   1c8b4:	e8 77 9b 05 00       	call   strcmp_
   1c8b9:	85 c0                	test   eax,eax
   1c8bb:	74 13                	je     talk_to_MR_MCKNIGHT_branch_8
   1c8bd:	ba a1 42 00 00       	mov    edx,@obj3:mr_mckni_cpp_variable_15                           ; fixup: num: 3921, src obj: 1, src ofs: 0x1c8be, dst obj: 3, dst ofs: 0x42a1
   1c8c2:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 3920, src obj: 1, src ofs: 0x1c8c3, dst obj: 3, dst ofs: 0x294bc
   1c8c7:	e8 64 9b 05 00       	call   strcmp_
   1c8cc:	85 c0                	test   eax,eax
   1c8ce:	75 34                	jne    talk_to_MR_MCKNIGHT_branch_9
talk_to_MR_MCKNIGHT_branch_8:
   1c8d0:	b8 a9 42 00 00       	mov    eax,@obj3:mr_mckni_cpp_variable_16                           ; fixup: num: 3942, src obj: 1, src ofs: 0x1c8d1, dst obj: 3, dst ofs: 0x42a9
   1c8d5:	e8 b6 fe 04 00       	call   check_script_flag
   1c8da:	84 c0                	test   al,al
   1c8dc:	74 26                	je     talk_to_MR_MCKNIGHT_branch_9
   1c8de:	ba 01 00 00 00       	mov    edx,0x1
   1c8e3:	31 c0                	xor    eax,eax
   1c8e5:	bb 01 00 00 00       	mov    ebx,0x1
   1c8ea:	e8 61 ba 00 00       	call   SHOWN_LEDGERS_TO_ANYONE_OTHER_THAN_SHERIFF
   1c8ef:	ba bb 42 00 00       	mov    edx,@obj3:mr_mckni_cpp_variable_17                           ; fixup: num: 3941, src obj: 1, src ofs: 0x1c8f0, dst obj: 3, dst ofs: 0x42bb
   1c8f4:	b8 11 16 00 00       	mov    eax,0x1611
   1c8f9:	e8 92 dd 04 00       	call   play_wav
   1c8fe:	31 c0                	xor    eax,eax
   1c900:	5a                   	pop    edx
   1c901:	59                   	pop    ecx
   1c902:	5b                   	pop    ebx
   1c903:	c3                   	ret    
talk_to_MR_MCKNIGHT_branch_9:
   1c904:	ba c4 42 00 00       	mov    edx,@obj3:mr_mckni_cpp_variable_18                           ; fixup: num: 3940, src obj: 1, src ofs: 0x1c905, dst obj: 3, dst ofs: 0x42c4
   1c909:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 3939, src obj: 1, src ofs: 0x1c90a, dst obj: 3, dst ofs: 0x294bc
   1c90e:	e8 1d 9b 05 00       	call   strcmp_
   1c913:	85 c0                	test   eax,eax
   1c915:	74 39                	je     talk_to_MR_MCKNIGHT_branch_10
   1c917:	ba c9 42 00 00       	mov    edx,@obj3:mr_mckni_cpp_variable_19                           ; fixup: num: 3938, src obj: 1, src ofs: 0x1c918, dst obj: 3, dst ofs: 0x42c9
   1c91c:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 3937, src obj: 1, src ofs: 0x1c91d, dst obj: 3, dst ofs: 0x294bc
   1c921:	e8 0a 9b 05 00       	call   strcmp_
   1c926:	85 c0                	test   eax,eax
   1c928:	74 26                	je     talk_to_MR_MCKNIGHT_branch_10
   1c92a:	ba d8 42 00 00       	mov    edx,@obj3:mr_mckni_cpp_variable_20                           ; fixup: num: 3936, src obj: 1, src ofs: 0x1c92b, dst obj: 3, dst ofs: 0x42d8
   1c92f:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 3935, src obj: 1, src ofs: 0x1c930, dst obj: 3, dst ofs: 0x294bc
   1c934:	e8 f7 9a 05 00       	call   strcmp_
   1c939:	85 c0                	test   eax,eax
   1c93b:	74 13                	je     talk_to_MR_MCKNIGHT_branch_10
   1c93d:	ba e2 42 00 00       	mov    edx,@obj3:mr_mckni_cpp_variable_21                           ; fixup: num: 3934, src obj: 1, src ofs: 0x1c93e, dst obj: 3, dst ofs: 0x42e2
   1c942:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 3933, src obj: 1, src ofs: 0x1c943, dst obj: 3, dst ofs: 0x294bc
   1c947:	e8 e4 9a 05 00       	call   strcmp_
   1c94c:	85 c0                	test   eax,eax
   1c94e:	75 68                	jne    talk_to_MR_MCKNIGHT_branch_11
talk_to_MR_MCKNIGHT_branch_10:
   1c950:	ba 01 00 00 00       	mov    edx,0x1
   1c955:	31 c0                	xor    eax,eax
   1c957:	bb 01 00 00 00       	mov    ebx,0x1
   1c95c:	e8 cf b9 00 00       	call   SHOWN_EVIDENCE_OF_BLACKMAIL_AROUND
   1c961:	ba f6 42 00 00       	mov    edx,@obj3:mr_mckni_cpp_variable_22                           ; fixup: num: 3932, src obj: 1, src ofs: 0x1c962, dst obj: 3, dst ofs: 0x42f6
   1c966:	b8 1b 16 00 00       	mov    eax,0x161b
   1c96b:	e8 20 dd 04 00       	call   play_wav
   1c970:	ba ff 42 00 00       	mov    edx,@obj3:mr_mckni_cpp_variable_23                           ; fixup: num: 3931, src obj: 1, src ofs: 0x1c971, dst obj: 3, dst ofs: 0x42ff
   1c975:	b8 21 16 00 00       	mov    eax,0x1621
   1c97a:	31 db                	xor    ebx,ebx
   1c97c:	e8 0f dd 04 00       	call   play_wav
   1c981:	bb 03 00 00 00       	mov    ebx,0x3
   1c986:	ba 02 43 00 00       	mov    edx,@obj3:mr_mckni_cpp_variable_24                           ; fixup: num: 3952, src obj: 1, src ofs: 0x1c987, dst obj: 3, dst ofs: 0x4302
   1c98b:	b8 26 16 00 00       	mov    eax,0x1626
   1c990:	e8 fb dc 04 00       	call   play_wav
   1c995:	bb 04 00 00 00       	mov    ebx,0x4
   1c99a:	ba 0b 43 00 00       	mov    edx,@obj3:mr_mckni_cpp_variable_25                           ; fixup: num: 3951, src obj: 1, src ofs: 0x1c99b, dst obj: 3, dst ofs: 0x430b
   1c99f:	b8 2b 16 00 00       	mov    eax,0x162b
   1c9a4:	e8 e7 dc 04 00       	call   play_wav
   1c9a9:	ba 0e 43 00 00       	mov    edx,@obj3:mr_mckni_cpp_variable_26                           ; fixup: num: 3950, src obj: 1, src ofs: 0x1c9aa, dst obj: 3, dst ofs: 0x430e
   1c9ae:	b8 31 16 00 00       	mov    eax,0x1631
   1c9b3:	e9 2f 01 00 00       	jmp    talk_to_MR_MCKNIGHT_branch_15
talk_to_MR_MCKNIGHT_branch_11:
   1c9b8:	ba 17 43 00 00       	mov    edx,@obj3:mr_mckni_cpp_variable_27                           ; fixup: num: 3949, src obj: 1, src ofs: 0x1c9b9, dst obj: 3, dst ofs: 0x4317
   1c9bd:	b8 de 15 00 00       	mov    eax,0x15de
   1c9c2:	31 db                	xor    ebx,ebx
   1c9c4:	e8 c7 dc 04 00       	call   play_wav
   1c9c9:	31 c0                	xor    eax,eax
   1c9cb:	5a                   	pop    edx
   1c9cc:	59                   	pop    ecx
   1c9cd:	5b                   	pop    ebx
   1c9ce:	c3                   	ret    
talk_to_MR_MCKNIGHT_branch_12:
   1c9cf:	a1 ac 2c 02 00       	mov    eax,ds:@obj3:MR_MCKNIGHT                                     ; fixup: num: 3948, src obj: 1, src ofs: 0x1c9d0, dst obj: 3, dst ofs: 0x22cac
   1c9d4:	85 c0                	test   eax,eax
   1c9d6:	0f 84 01 01 00 00    	je     talk_to_MR_MCKNIGHT_branch_14
   1c9dc:	bb 02 00 00 00       	mov    ebx,0x2
   1c9e1:	ba 20 43 00 00       	mov    edx,@obj3:mr_mckni_cpp_variable_28                           ; fixup: num: 3947, src obj: 1, src ofs: 0x1c9e2, dst obj: 3, dst ofs: 0x4320
   1c9e6:	b8 87 15 00 00       	mov    eax,0x1587
   1c9eb:	89 0d ac 2c 02 00    	mov    DWORD PTR ds:@obj3:MR_MCKNIGHT,ecx                           ; fixup: num: 3946, src obj: 1, src ofs: 0x1c9ed, dst obj: 3, dst ofs: 0x22cac
   1c9f1:	e8 9a dc 04 00       	call   play_wav
   1c9f6:	ba 29 43 00 00       	mov    edx,@obj3:mr_mckni_cpp_variable_29                           ; fixup: num: 3945, src obj: 1, src ofs: 0x1c9f7, dst obj: 3, dst ofs: 0x4329
   1c9fb:	b8 8b 15 00 00       	mov    eax,0x158b
   1ca00:	31 db                	xor    ebx,ebx
   1ca02:	e8 89 dc 04 00       	call   play_wav
   1ca07:	ba 2c 43 00 00       	mov    edx,@obj3:mr_mckni_cpp_variable_30                           ; fixup: num: 3944, src obj: 1, src ofs: 0x1ca08, dst obj: 3, dst ofs: 0x432c
   1ca0c:	b8 8f 15 00 00       	mov    eax,0x158f
   1ca11:	31 db                	xor    ebx,ebx
   1ca13:	e8 78 dc 04 00       	call   play_wav
   1ca18:	ba 35 43 00 00       	mov    edx,@obj3:mr_mckni_cpp_variable_31                           ; fixup: num: 3943, src obj: 1, src ofs: 0x1ca19, dst obj: 3, dst ofs: 0x4335
   1ca1d:	b8 94 15 00 00       	mov    eax,0x1594
   1ca22:	31 db                	xor    ebx,ebx
   1ca24:	e8 67 dc 04 00       	call   play_wav
   1ca29:	bb 02 00 00 00       	mov    ebx,0x2
   1ca2e:	ba 38 43 00 00       	mov    edx,@obj3:mr_mckni_cpp_variable_32                           ; fixup: num: 3959, src obj: 1, src ofs: 0x1ca2f, dst obj: 3, dst ofs: 0x4338
   1ca33:	b8 98 15 00 00       	mov    eax,0x1598
   1ca38:	e8 53 dc 04 00       	call   play_wav
   1ca3d:	ba 01 00 00 00       	mov    edx,0x1
   1ca42:	31 c0                	xor    eax,eax
   1ca44:	e8 97 b9 00 00       	call   IF_SOMEONE_ELSE_HAS_SAID_THAT
   1ca49:	31 db                	xor    ebx,ebx
   1ca4b:	ba 41 43 00 00       	mov    edx,@obj3:mr_mckni_cpp_variable_33                           ; fixup: num: 3958, src obj: 1, src ofs: 0x1ca4c, dst obj: 3, dst ofs: 0x4341
   1ca50:	b8 9d 15 00 00       	mov    eax,0x159d
   1ca55:	e8 36 dc 04 00       	call   play_wav
   1ca5a:	bb 01 00 00 00       	mov    ebx,0x1
   1ca5f:	ba 44 43 00 00       	mov    edx,@obj3:mr_mckni_cpp_variable_34                           ; fixup: num: 3957, src obj: 1, src ofs: 0x1ca60, dst obj: 3, dst ofs: 0x4344
   1ca64:	b8 a2 15 00 00       	mov    eax,0x15a2
   1ca69:	e8 22 dc 04 00       	call   play_wav
   1ca6e:	b8 8a 01 00 00       	mov    eax,0x18a
   1ca73:	e8 28 d7 00 00       	call   GetDlgFileString
   1ca78:	e8 93 e4 04 00       	call   get_response
   1ca7d:	83 f8 01             	cmp    eax,0x1
   1ca80:	75 17                	jne    talk_to_MR_MCKNIGHT_branch_13
   1ca82:	ba 4d 43 00 00       	mov    edx,@obj3:mr_mckni_cpp_variable_35                           ; fixup: num: 3956, src obj: 1, src ofs: 0x1ca83, dst obj: 3, dst ofs: 0x434d
   1ca87:	b8 af 15 00 00       	mov    eax,0x15af
   1ca8c:	31 db                	xor    ebx,ebx
   1ca8e:	e8 fd db 04 00       	call   play_wav
   1ca93:	31 c0                	xor    eax,eax
   1ca95:	5a                   	pop    edx
   1ca96:	59                   	pop    ecx
   1ca97:	5b                   	pop    ebx
   1ca98:	c3                   	ret    
talk_to_MR_MCKNIGHT_branch_13:
   1ca99:	83 f8 02             	cmp    eax,0x2
   1ca9c:	75 3f                	jne    talk_to_MR_MCKNIGHT_branch_14
   1ca9e:	bb 04 00 00 00       	mov    ebx,0x4
   1caa3:	ba 56 43 00 00       	mov    edx,@obj3:mr_mckni_cpp_variable_36                           ; fixup: num: 3955, src obj: 1, src ofs: 0x1caa4, dst obj: 3, dst ofs: 0x4356
   1caa8:	b8 b5 15 00 00       	mov    eax,0x15b5
   1caad:	e8 de db 04 00       	call   play_wav
   1cab2:	ba 5f 43 00 00       	mov    edx,@obj3:mr_mckni_cpp_variable_37                           ; fixup: num: 3954, src obj: 1, src ofs: 0x1cab3, dst obj: 3, dst ofs: 0x435f
   1cab7:	b8 bd 15 00 00       	mov    eax,0x15bd
   1cabc:	31 db                	xor    ebx,ebx
   1cabe:	e8 cd db 04 00       	call   play_wav
   1cac3:	bb 02 00 00 00       	mov    ebx,0x2
   1cac8:	ba 62 43 00 00       	mov    edx,@obj3:mr_mckni_cpp_variable_38                           ; fixup: num: 3953, src obj: 1, src ofs: 0x1cac9, dst obj: 3, dst ofs: 0x4362
   1cacd:	b8 c1 15 00 00       	mov    eax,0x15c1
   1cad2:	e8 b9 db 04 00       	call   play_wav
   1cad7:	31 c0                	xor    eax,eax
   1cad9:	5a                   	pop    edx
   1cada:	59                   	pop    ecx
   1cadb:	5b                   	pop    ebx
   1cadc:	c3                   	ret    
talk_to_MR_MCKNIGHT_branch_14:
   1cadd:	ba 6b 43 00 00       	mov    edx,@obj3:mr_mckni_cpp_variable_39                           ; fixup: num: 3964, src obj: 1, src ofs: 0x1cade, dst obj: 3, dst ofs: 0x436b
   1cae2:	b8 e4 15 00 00       	mov    eax,0x15e4
talk_to_MR_MCKNIGHT_branch_15:
   1cae7:	31 db                	xor    ebx,ebx
talk_to_MR_MCKNIGHT_branch_16:
   1cae9:	e8 a2 db 04 00       	call   play_wav
talk_to_MR_MCKNIGHT_branch_17:
   1caee:	31 c0                	xor    eax,eax
   1caf0:	5a                   	pop    edx
   1caf1:	59                   	pop    ecx
   1caf2:	5b                   	pop    ebx
   1caf3:	c3                   	ret    
talk_to_MR_MCKNIGHT_branch_18:
   1caf4:	89 15 ac 2c 02 00    	mov    DWORD PTR ds:@obj3:MR_MCKNIGHT,edx                           ; fixup: num: 3963, src obj: 1, src ofs: 0x1caf6, dst obj: 3, dst ofs: 0x22cac
   1cafa:	a1 ac 2c 02 00       	mov    eax,ds:@obj3:MR_MCKNIGHT                                     ; fixup: num: 3962, src obj: 1, src ofs: 0x1cafb, dst obj: 3, dst ofs: 0x22cac
   1caff:	c3                   	ret    

;-------------------------------------------------
;  Function 'MR_MCKNIGHT_FIRST_CONVERSATION'     -
;-------------------------------------------------
MR_MCKNIGHT_FIRST_CONVERSATION:
   1cb00:	85 c0                	test   eax,eax
   1cb02:	74 f0                	je     talk_to_MR_MCKNIGHT_branch_18
   1cb04:	a1 ac 2c 02 00       	mov    eax,ds:@obj3:MR_MCKNIGHT                                     ; fixup: num: 3961, src obj: 1, src ofs: 0x1cb05, dst obj: 3, dst ofs: 0x22cac
   1cb09:	c3                   	ret    
   1cb0a:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'MR_MCKNIGHT_initialize'             -
;-------------------------------------------------
MR_MCKNIGHT_initialize:
   1cb10:	c7 05 ac 2c 02 00 01 00 00 00 	mov    DWORD PTR ds:@obj3:MR_MCKNIGHT,0x1                  ; fixup: num: 3960, src obj: 1, src ofs: 0x1cb12, dst obj: 3, dst ofs: 0x22cac
   1cb1a:	c3                   	ret    
;-------------------------------------------------
;  Bad code 33 (zero after ret):                 -
;-------------------------------------------------
;  1cb10:	c7 05 ac 2c 02 00 01 00 00 00 	mov    DWORD PTR ds:0x22cac,0x1
;  1cb1a:	c3                   	ret    
;  1cb1b:	00 00                	add    BYTE PTR [eax],al
;  1cb1d:	00 00                	add    BYTE PTR [eax],al
;-------------------------------------------------
;  Padding data (5 bytes):                       -
;-------------------------------------------------
   1cb1b:	00 00 00 00 00       	db     5 dup(0x00)
;-------------------------------------------------
;  End of bad code 33                            -
;-------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 36 (D:\SOURCE\mr_mckni.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 36: D:\SOURCE\mr_mckni.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------
mr_mckni_cpp_variable_1:
    420c:	4c 4f 4f 4b 5f 53 41 46 45 5f 32 4e 44 00 	db     "LOOK_SAFE_2ND",0x00
mr_mckni_cpp_variable_2:
    421a:	4d 43 4b 4e 49 47 48 54 00 	db     "MCKNIGHT",0x00
mr_mckni_cpp_variable_3:
    4223:	4c 4f 4f 4b 5f 53 41 46 45 5f 31 53 54 00 	db     "LOOK_SAFE_1ST",0x00
mr_mckni_cpp_variable_4:
    4231:	4d 43 4b 4e 49 47 48 54 00 	db     "MCKNIGHT",0x00
mr_mckni_cpp_variable_5:
    423a:	50 48 4f 54 4f 5f 4f 46 5f 57 48 41 4c 45 59 5f 48 45 52 52 49 4c 4c 00 	db     "PHOTO_OF_WHALEY_HERRILL",0x00
mr_mckni_cpp_variable_6:
    4252:	4d 43 4b 4e 49 47 48 54 00 	db     "MCKNIGHT",0x00
mr_mckni_cpp_variable_7:
    425b:	43 41 53 4b 45 54 5f 50 48 4f 54 4f 00 	db     "CASKET_PHOTO",0x00
mr_mckni_cpp_variable_8:
    4268:	43 41 53 4b 45 54 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "CASKET_PHOTOCOPY",0x00
mr_mckni_cpp_variable_9:
    4279:	4d 43 4b 4e 49 47 48 54 00 	db     "MCKNIGHT",0x00
mr_mckni_cpp_variable_10:
    4282:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    4283:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    4284:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_mckni_cpp_variable_11:
    4285:	4d 43 4b 4e 49 47 48 54 00 	db     "MCKNIGHT",0x00
mr_mckni_cpp_variable_12:
    428e:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    428f:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    4290:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_mckni_cpp_variable_13:
    4291:	4d 43 4b 4e 49 47 48 54 00 	db     "MCKNIGHT",0x00
mr_mckni_cpp_variable_14:
    429a:	4c 45 44 47 45 52 00 	db     "LEDGER",0x00
mr_mckni_cpp_variable_15:
    42a1:	4c 45 44 47 45 52 32 00 	db     "LEDGER2",0x00
mr_mckni_cpp_variable_16:
    42a9:	48 41 56 45 5f 42 4f 54 48 5f 4c 45 44 47 45 52 53 00 	db     "HAVE_BOTH_LEDGERS",0x00
mr_mckni_cpp_variable_17:
    42bb:	4d 43 4b 4e 49 47 48 54 00 	db     "MCKNIGHT",0x00
mr_mckni_cpp_variable_18:
    42c4:	4e 4f 54 45 00       	db     "NOTE",0x00
mr_mckni_cpp_variable_19:
    42c9:	4e 4f 54 45 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "NOTE_PHOTOCOPY",0x00
mr_mckni_cpp_variable_20:
    42d8:	43 48 45 43 4b 42 4f 4f 4b 00 	db     "CHECKBOOK",0x00
mr_mckni_cpp_variable_21:
    42e2:	43 48 45 43 4b 42 4f 4f 4b 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "CHECKBOOK_PHOTOCOPY",0x00
mr_mckni_cpp_variable_22:
    42f6:	4d 43 4b 4e 49 47 48 54 00 	db     "MCKNIGHT",0x00
mr_mckni_cpp_variable_23:
    42ff:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    4300:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    4301:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_mckni_cpp_variable_24:
    4302:	4d 43 4b 4e 49 47 48 54 00 	db     "MCKNIGHT",0x00
mr_mckni_cpp_variable_25:
    430b:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    430c:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    430d:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_mckni_cpp_variable_26:
    430e:	4d 43 4b 4e 49 47 48 54 00 	db     "MCKNIGHT",0x00
mr_mckni_cpp_variable_27:
    4317:	4d 43 4b 4e 49 47 48 54 00 	db     "MCKNIGHT",0x00
mr_mckni_cpp_variable_28:
    4320:	4d 43 4b 4e 49 47 48 54 00 	db     "MCKNIGHT",0x00
mr_mckni_cpp_variable_29:
    4329:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    432a:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    432b:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_mckni_cpp_variable_30:
    432c:	4d 43 4b 4e 49 47 48 54 00 	db     "MCKNIGHT",0x00
mr_mckni_cpp_variable_31:
    4335:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    4336:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    4337:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_mckni_cpp_variable_32:
    4338:	4d 43 4b 4e 49 47 48 54 00 	db     "MCKNIGHT",0x00
mr_mckni_cpp_variable_33:
    4341:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    4342:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    4343:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_mckni_cpp_variable_34:
    4344:	4d 43 4b 4e 49 47 48 54 00 	db     "MCKNIGHT",0x00
mr_mckni_cpp_variable_35:
    434d:	4d 43 4b 4e 49 47 48 54 00 	db     "MCKNIGHT",0x00
mr_mckni_cpp_variable_36:
    4356:	4d 43 4b 4e 49 47 48 54 00 	db     "MCKNIGHT",0x00
mr_mckni_cpp_variable_37:
    435f:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    4360:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    4361:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_mckni_cpp_variable_38:
    4362:	4d 43 4b 4e 49 47 48 54 00 	db     "MCKNIGHT",0x00
mr_mckni_cpp_variable_39:
    436b:	4d 43 4b 4e 49 47 48 54 00 	db     "MCKNIGHT",0x00

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 36 (D:\SOURCE\mr_mckni.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 36: D:\SOURCE\mr_mckni.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------
MR_MCKNIGHT:                                                                                        ; access size: DWORD
   22cac:	00 00 00 00          	dd     0x00000000
MR_MCKNIGHT_variable_1:                                                                             ; access size: DWORD
   22cb0:	00 00 00 00 00 00 .. 	dd     2 dup(0x00000000)

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 36 (D:\SOURCE\mr_mckni.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------