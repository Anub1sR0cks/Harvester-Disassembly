;-------------------------------------------------------------------------------
;                                                                              -
;  Module 48: D:\SOURCE\mom.cpp                                                -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function 'talk_to_MOM'                        -
;-------------------------------------------------
talk_to_MOM:
   21140:	53                   	push   ebx
   21141:	51                   	push   ecx
   21142:	52                   	push   edx
   21143:	56                   	push   esi
   21144:	57                   	push   edi
   21145:	55                   	push   ebp
   21146:	8b 15 bc 94 02 00    	mov    edx,DWORD PTR ds:@obj3:showing_item                          ; fixup: num: 5115, src obj: 1, src ofs: 0x21148, dst obj: 3, dst ofs: 0x294bc
   2114c:	85 d2                	test   edx,edx
   2114e:	0f 84 5d 02 00 00    	je     talk_to_MOM_branch_11
   21154:	89 d0                	mov    eax,edx
   21156:	ba 9c 59 00 00       	mov    edx,@obj3:mom_cpp_variable_1                                 ; fixup: num: 5114, src obj: 1, src ofs: 0x21157, dst obj: 3, dst ofs: 0x599c
   2115b:	e8 d0 52 05 00       	call   strcmp_
   21160:	85 c0                	test   eax,eax
   21162:	74 39                	je     talk_to_MOM_branch_1
   21164:	ba a1 59 00 00       	mov    edx,@obj3:mom_cpp_variable_2                                 ; fixup: num: 5113, src obj: 1, src ofs: 0x21165, dst obj: 3, dst ofs: 0x59a1
   21169:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 5112, src obj: 1, src ofs: 0x2116a, dst obj: 3, dst ofs: 0x294bc
   2116e:	e8 bd 52 05 00       	call   strcmp_
   21173:	85 c0                	test   eax,eax
   21175:	74 26                	je     talk_to_MOM_branch_1
   21177:	ba b0 59 00 00       	mov    edx,@obj3:mom_cpp_variable_3                                 ; fixup: num: 5111, src obj: 1, src ofs: 0x21178, dst obj: 3, dst ofs: 0x59b0
   2117c:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 5110, src obj: 1, src ofs: 0x2117d, dst obj: 3, dst ofs: 0x294bc
   21181:	e8 aa 52 05 00       	call   strcmp_
   21186:	85 c0                	test   eax,eax
   21188:	74 13                	je     talk_to_MOM_branch_1
   2118a:	ba ba 59 00 00       	mov    edx,@obj3:mom_cpp_variable_4                                 ; fixup: num: 5109, src obj: 1, src ofs: 0x2118b, dst obj: 3, dst ofs: 0x59ba
   2118f:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 5108, src obj: 1, src ofs: 0x21190, dst obj: 3, dst ofs: 0x294bc
   21194:	e8 97 52 05 00       	call   strcmp_
   21199:	85 c0                	test   eax,eax
   2119b:	75 20                	jne    talk_to_MOM_branch_2
talk_to_MOM_branch_1:
   2119d:	ba 01 00 00 00       	mov    edx,0x1
   211a2:	31 c0                	xor    eax,eax
   211a4:	bb 01 00 00 00       	mov    ebx,0x1
   211a9:	e8 82 71 00 00       	call   SHOWN_EVIDENCE_OF_BLACKMAIL_AROUND
   211ae:	ba ce 59 00 00       	mov    edx,@obj3:mom_cpp_variable_5                                 ; fixup: num: 5107, src obj: 1, src ofs: 0x211af, dst obj: 3, dst ofs: 0x59ce
   211b3:	b8 17 23 00 00       	mov    eax,0x2317
   211b8:	e9 e6 01 00 00       	jmp    talk_to_MOM_branch_10
talk_to_MOM_branch_2:
   211bd:	ba d2 59 00 00       	mov    edx,@obj3:mom_cpp_variable_6                                 ; fixup: num: 5106, src obj: 1, src ofs: 0x211be, dst obj: 3, dst ofs: 0x59d2
   211c2:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 5105, src obj: 1, src ofs: 0x211c3, dst obj: 3, dst ofs: 0x294bc
   211c7:	e8 64 52 05 00       	call   strcmp_
   211cc:	85 c0                	test   eax,eax
   211ce:	74 17                	je     talk_to_MOM_branch_3
   211d0:	ba d9 59 00 00       	mov    edx,@obj3:mom_cpp_variable_7                                 ; fixup: num: 5104, src obj: 1, src ofs: 0x211d1, dst obj: 3, dst ofs: 0x59d9
   211d5:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 5103, src obj: 1, src ofs: 0x211d6, dst obj: 3, dst ofs: 0x294bc
   211da:	e8 51 52 05 00       	call   strcmp_
   211df:	85 c0                	test   eax,eax
   211e1:	0f 85 80 00 00 00    	jne    talk_to_MOM_branch_4
talk_to_MOM_branch_3:
   211e7:	b8 e1 59 00 00       	mov    eax,@obj3:mom_cpp_variable_8                                 ; fixup: num: 5102, src obj: 1, src ofs: 0x211e8, dst obj: 3, dst ofs: 0x59e1
   211ec:	e8 9f b5 04 00       	call   check_script_flag
   211f1:	84 c0                	test   al,al
   211f3:	74 72                	je     talk_to_MOM_branch_4
   211f5:	ba 01 00 00 00       	mov    edx,0x1
   211fa:	31 c0                	xor    eax,eax
   211fc:	bb 02 00 00 00       	mov    ebx,0x2
   21201:	e8 4a 71 00 00       	call   SHOWN_LEDGERS_TO_ANYONE_OTHER_THAN_SHERIFF
   21206:	ba f3 59 00 00       	mov    edx,@obj3:mom_cpp_variable_9                                 ; fixup: num: 5124, src obj: 1, src ofs: 0x21207, dst obj: 3, dst ofs: 0x59f3
   2120b:	b8 20 23 00 00       	mov    eax,0x2320
   21210:	e8 7b 94 04 00       	call   play_wav
   21215:	bb 02 00 00 00       	mov    ebx,0x2
   2121a:	ba f7 59 00 00       	mov    edx,@obj3:mom_cpp_variable_10                                ; fixup: num: 5123, src obj: 1, src ofs: 0x2121b, dst obj: 3, dst ofs: 0x59f7
   2121f:	b8 26 23 00 00       	mov    eax,0x2326
   21224:	e8 67 94 04 00       	call   play_wav
   21229:	bb 01 00 00 00       	mov    ebx,0x1
   2122e:	ba fa 59 00 00       	mov    edx,@obj3:mom_cpp_variable_11                                ; fixup: num: 5122, src obj: 1, src ofs: 0x2122f, dst obj: 3, dst ofs: 0x59fa
   21233:	b8 2b 23 00 00       	mov    eax,0x232b
   21238:	e8 53 94 04 00       	call   play_wav
   2123d:	ba fe 59 00 00       	mov    edx,@obj3:mom_cpp_variable_12                                ; fixup: num: 5121, src obj: 1, src ofs: 0x2123e, dst obj: 3, dst ofs: 0x59fe
   21242:	b8 31 23 00 00       	mov    eax,0x2331
   21247:	31 db                	xor    ebx,ebx
   21249:	e8 42 94 04 00       	call   play_wav
   2124e:	bb 01 00 00 00       	mov    ebx,0x1
   21253:	ba 01 5a 00 00       	mov    edx,@obj3:mom_cpp_variable_13                                ; fixup: num: 5120, src obj: 1, src ofs: 0x21254, dst obj: 3, dst ofs: 0x5a01
   21258:	b8 35 23 00 00       	mov    eax,0x2335
   2125d:	e8 2e 94 04 00       	call   play_wav
   21262:	e9 b4 22 00 00       	jmp    talk_to_MOM_branch_159
talk_to_MOM_branch_4:
   21267:	ba 05 5a 00 00       	mov    edx,@obj3:mom_cpp_variable_14                                ; fixup: num: 5119, src obj: 1, src ofs: 0x21268, dst obj: 3, dst ofs: 0x5a05
   2126c:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 5118, src obj: 1, src ofs: 0x2126d, dst obj: 3, dst ofs: 0x294bc
   21271:	e8 ba 51 05 00       	call   strcmp_
   21276:	85 c0                	test   eax,eax
   21278:	74 13                	je     talk_to_MOM_branch_5
   2127a:	ba 12 5a 00 00       	mov    edx,@obj3:mom_cpp_variable_15                                ; fixup: num: 5117, src obj: 1, src ofs: 0x2127b, dst obj: 3, dst ofs: 0x5a12
   2127f:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 5116, src obj: 1, src ofs: 0x21280, dst obj: 3, dst ofs: 0x294bc
   21284:	e8 a7 51 05 00       	call   strcmp_
   21289:	85 c0                	test   eax,eax
   2128b:	75 5c                	jne    talk_to_MOM_branch_6
talk_to_MOM_branch_5:
   2128d:	ba 01 00 00 00       	mov    edx,0x1
   21292:	31 c0                	xor    eax,eax
   21294:	e8 c7 70 00 00       	call   SHOWN_PHOTO_OF_CORPSE_AROUND
   21299:	31 db                	xor    ebx,ebx
   2129b:	ba 23 5a 00 00       	mov    edx,@obj3:mom_cpp_variable_16                                ; fixup: num: 5005, src obj: 1, src ofs: 0x2129c, dst obj: 3, dst ofs: 0x5a23
   212a0:	b8 3b 23 00 00       	mov    eax,0x233b
   212a5:	e8 e6 93 04 00       	call   play_wav
   212aa:	bb 01 00 00 00       	mov    ebx,0x1
   212af:	ba 26 5a 00 00       	mov    edx,@obj3:mom_cpp_variable_17                                ; fixup: num: 5004, src obj: 1, src ofs: 0x212b0, dst obj: 3, dst ofs: 0x5a26
   212b4:	b8 3f 23 00 00       	mov    eax,0x233f
   212b9:	e8 d2 93 04 00       	call   play_wav
   212be:	ba 2a 5a 00 00       	mov    edx,@obj3:mom_cpp_variable_18                                ; fixup: num: 5003, src obj: 1, src ofs: 0x212bf, dst obj: 3, dst ofs: 0x5a2a
   212c3:	b8 44 23 00 00       	mov    eax,0x2344
   212c8:	31 db                	xor    ebx,ebx
   212ca:	e8 c1 93 04 00       	call   play_wav
   212cf:	ba 2d 5a 00 00       	mov    edx,@obj3:mom_cpp_variable_19                                ; fixup: num: 5130, src obj: 1, src ofs: 0x212d0, dst obj: 3, dst ofs: 0x5a2d
   212d4:	b8 48 23 00 00       	mov    eax,0x2348
   212d9:	31 db                	xor    ebx,ebx
   212db:	e8 b0 93 04 00       	call   play_wav
   212e0:	31 c0                	xor    eax,eax
   212e2:	5d                   	pop    ebp
   212e3:	5f                   	pop    edi
   212e4:	5e                   	pop    esi
   212e5:	5a                   	pop    edx
   212e6:	59                   	pop    ecx
   212e7:	5b                   	pop    ebx
   212e8:	c3                   	ret    
talk_to_MOM_branch_6:
   212e9:	ba 31 5a 00 00       	mov    edx,@obj3:mom_cpp_variable_20                                ; fixup: num: 5129, src obj: 1, src ofs: 0x212ea, dst obj: 3, dst ofs: 0x5a31
   212ee:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 5128, src obj: 1, src ofs: 0x212ef, dst obj: 3, dst ofs: 0x294bc
   212f3:	e8 38 51 05 00       	call   strcmp_
   212f8:	85 c0                	test   eax,eax
   212fa:	75 49                	jne    talk_to_MOM_branch_7
   212fc:	ba 01 00 00 00       	mov    edx,0x1
   21301:	bb 02 00 00 00       	mov    ebx,0x2
   21306:	e8 65 70 00 00       	call   SHOWN_PHOTO_OF_WHALEY_HERRILL_AROUND
   2130b:	ba 49 5a 00 00       	mov    edx,@obj3:mom_cpp_variable_21                                ; fixup: num: 5127, src obj: 1, src ofs: 0x2130c, dst obj: 3, dst ofs: 0x5a49
   21310:	b8 9c 23 00 00       	mov    eax,0x239c
   21315:	e8 76 93 04 00       	call   play_wav
   2131a:	ba 4d 5a 00 00       	mov    edx,@obj3:mom_cpp_variable_22                                ; fixup: num: 5126, src obj: 1, src ofs: 0x2131b, dst obj: 3, dst ofs: 0x5a4d
   2131f:	b8 a0 23 00 00       	mov    eax,0x23a0
   21324:	31 db                	xor    ebx,ebx
   21326:	e8 65 93 04 00       	call   play_wav
   2132b:	ba 50 5a 00 00       	mov    edx,@obj3:mom_cpp_variable_23                                ; fixup: num: 5125, src obj: 1, src ofs: 0x2132c, dst obj: 3, dst ofs: 0x5a50
   21330:	b8 a5 23 00 00       	mov    eax,0x23a5
   21335:	31 db                	xor    ebx,ebx
   21337:	e8 54 93 04 00       	call   play_wav
   2133c:	31 c0                	xor    eax,eax
   2133e:	5d                   	pop    ebp
   2133f:	5f                   	pop    edi
   21340:	5e                   	pop    esi
   21341:	5a                   	pop    edx
   21342:	59                   	pop    ecx
   21343:	5b                   	pop    ebx
   21344:	c3                   	ret    
talk_to_MOM_branch_7:
   21345:	ba 54 5a 00 00       	mov    edx,@obj3:mom_cpp_variable_24                                ; fixup: num: 5017, src obj: 1, src ofs: 0x21346, dst obj: 3, dst ofs: 0x5a54
   2134a:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 5016, src obj: 1, src ofs: 0x2134b, dst obj: 3, dst ofs: 0x294bc
   2134f:	e8 dc 50 05 00       	call   strcmp_
   21354:	85 c0                	test   eax,eax
   21356:	74 13                	je     talk_to_MOM_branch_8
   21358:	ba 5c 5a 00 00       	mov    edx,@obj3:mom_cpp_variable_25                                ; fixup: num: 5015, src obj: 1, src ofs: 0x21359, dst obj: 3, dst ofs: 0x5a5c
   2135d:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 5014, src obj: 1, src ofs: 0x2135e, dst obj: 3, dst ofs: 0x294bc
   21362:	e8 c9 50 05 00       	call   strcmp_
   21367:	85 c0                	test   eax,eax
   21369:	75 29                	jne    talk_to_MOM_branch_9
talk_to_MOM_branch_8:
   2136b:	ba 01 00 00 00       	mov    edx,0x1
   21370:	31 c0                	xor    eax,eax
   21372:	bb 01 00 00 00       	mov    ebx,0x1
   21377:	e8 c4 6f 00 00       	call   SHOWN_EVIDENCE_SHERIFF_OWNS_TV_STATION_AROUND
   2137c:	ba 6e 5a 00 00       	mov    edx,@obj3:mom_cpp_variable_26                                ; fixup: num: 5013, src obj: 1, src ofs: 0x2137d, dst obj: 3, dst ofs: 0x5a6e
   21381:	b8 82 23 00 00       	mov    eax,0x2382
   21386:	e8 05 93 04 00       	call   play_wav
   2138b:	31 c0                	xor    eax,eax
   2138d:	5d                   	pop    ebp
   2138e:	5f                   	pop    edi
   2138f:	5e                   	pop    esi
   21390:	5a                   	pop    edx
   21391:	59                   	pop    ecx
   21392:	5b                   	pop    ebx
   21393:	c3                   	ret    
talk_to_MOM_branch_9:
   21394:	bb 02 00 00 00       	mov    ebx,0x2
   21399:	ba 72 5a 00 00       	mov    edx,@obj3:mom_cpp_variable_27                                ; fixup: num: 5012, src obj: 1, src ofs: 0x2139a, dst obj: 3, dst ofs: 0x5a72
   2139e:	b8 cc 26 00 00       	mov    eax,0x26cc
talk_to_MOM_branch_10:
   213a3:	e8 e8 92 04 00       	call   play_wav
   213a8:	31 c0                	xor    eax,eax
   213aa:	5d                   	pop    ebp
   213ab:	5f                   	pop    edi
   213ac:	5e                   	pop    esi
   213ad:	5a                   	pop    edx
   213ae:	59                   	pop    ecx
   213af:	5b                   	pop    ebx
   213b0:	c3                   	ret    
talk_to_MOM_branch_11:
   213b1:	a1 74 2d 02 00       	mov    eax,ds:@obj3:MOM                                             ; fixup: num: 5011, src obj: 1, src ofs: 0x213b2, dst obj: 3, dst ofs: 0x22d74
   213b6:	85 c0                	test   eax,eax
   213b8:	0f 84 7c 01 00 00    	je     talk_to_MOM_branch_14
   213be:	be 01 00 00 00       	mov    esi,0x1
   213c3:	89 15 74 2d 02 00    	mov    DWORD PTR ds:@obj3:MOM,edx                                   ; fixup: num: 5010, src obj: 1, src ofs: 0x213c5, dst obj: 3, dst ofs: 0x22d74
   213c9:	89 35 78 2d 02 00    	mov    DWORD PTR ds:@obj3:MOM_variable_1,esi                        ; fixup: num: 5009, src obj: 1, src ofs: 0x213cb, dst obj: 3, dst ofs: 0x22d78
   213cf:	89 35 7c 2d 02 00    	mov    DWORD PTR ds:@obj3:MOM_variable_2,esi                        ; fixup: num: 5008, src obj: 1, src ofs: 0x213d1, dst obj: 3, dst ofs: 0x22d7c
   213d5:	e8 e6 77 00 00       	call   get_day
   213da:	89 f2                	mov    edx,esi
   213dc:	a3 80 2d 02 00       	mov    ds:@obj3:MOM_variable_3,eax                                  ; fixup: num: 5007, src obj: 1, src ofs: 0x213dd, dst obj: 3, dst ofs: 0x22d80
   213e1:	31 c0                	xor    eax,eax
   213e3:	89 f3                	mov    ebx,esi
   213e5:	e8 b6 6f 00 00       	call   SPOKEN_WITH_MOM
   213ea:	ba 76 5a 00 00       	mov    edx,@obj3:mom_cpp_variable_28                                ; fixup: num: 5006, src obj: 1, src ofs: 0x213eb, dst obj: 3, dst ofs: 0x5a76
   213ef:	b8 d7 1d 00 00       	mov    eax,0x1dd7
   213f4:	e8 97 92 04 00       	call   play_wav
   213f9:	ba 7a 5a 00 00       	mov    edx,@obj3:mom_cpp_variable_29                                ; fixup: num: 5027, src obj: 1, src ofs: 0x213fa, dst obj: 3, dst ofs: 0x5a7a
   213fe:	b8 dc 1d 00 00       	mov    eax,0x1ddc
   21403:	31 db                	xor    ebx,ebx
   21405:	e8 86 92 04 00       	call   play_wav
   2140a:	bb 02 00 00 00       	mov    ebx,0x2
   2140f:	ba 7d 5a 00 00       	mov    edx,@obj3:mom_cpp_variable_30                                ; fixup: num: 5026, src obj: 1, src ofs: 0x21410, dst obj: 3, dst ofs: 0x5a7d
   21414:	b8 e0 1d 00 00       	mov    eax,0x1de0
   21419:	e8 72 92 04 00       	call   play_wav
   2141e:	bb 02 00 00 00       	mov    ebx,0x2
   21423:	ba 81 5a 00 00       	mov    edx,@obj3:mom_cpp_variable_31                                ; fixup: num: 5025, src obj: 1, src ofs: 0x21424, dst obj: 3, dst ofs: 0x5a81
   21428:	b8 e4 1d 00 00       	mov    eax,0x1de4
   2142d:	e8 5e 92 04 00       	call   play_wav
   21432:	ba 84 5a 00 00       	mov    edx,@obj3:mom_cpp_variable_32                                ; fixup: num: 5024, src obj: 1, src ofs: 0x21433, dst obj: 3, dst ofs: 0x5a84
   21437:	b8 e8 1d 00 00       	mov    eax,0x1de8
   2143c:	31 db                	xor    ebx,ebx
   2143e:	e8 4d 92 04 00       	call   play_wav
   21443:	ba 88 5a 00 00       	mov    edx,@obj3:mom_cpp_variable_33                                ; fixup: num: 5023, src obj: 1, src ofs: 0x21444, dst obj: 3, dst ofs: 0x5a88
   21448:	b8 ed 1d 00 00       	mov    eax,0x1ded
   2144d:	31 db                	xor    ebx,ebx
   2144f:	e8 3c 92 04 00       	call   play_wav
   21454:	ba 8b 5a 00 00       	mov    edx,@obj3:mom_cpp_variable_34                                ; fixup: num: 5022, src obj: 1, src ofs: 0x21455, dst obj: 3, dst ofs: 0x5a8b
   21459:	b8 f1 1d 00 00       	mov    eax,0x1df1
   2145e:	89 f3                	mov    ebx,esi
   21460:	e8 2b 92 04 00       	call   play_wav
   21465:	bb 02 00 00 00       	mov    ebx,0x2
   2146a:	ba 8f 5a 00 00       	mov    edx,@obj3:mom_cpp_variable_35                                ; fixup: num: 5021, src obj: 1, src ofs: 0x2146b, dst obj: 3, dst ofs: 0x5a8f
   2146f:	b8 f5 1d 00 00       	mov    eax,0x1df5
   21474:	e8 17 92 04 00       	call   play_wav
   21479:	ba 92 5a 00 00       	mov    edx,@obj3:mom_cpp_variable_36                                ; fixup: num: 5020, src obj: 1, src ofs: 0x2147a, dst obj: 3, dst ofs: 0x5a92
   2147e:	b8 fa 1d 00 00       	mov    eax,0x1dfa
   21483:	31 db                	xor    ebx,ebx
   21485:	e8 06 92 04 00       	call   play_wav
   2148a:	ba 96 5a 00 00       	mov    edx,@obj3:mom_cpp_variable_37                                ; fixup: num: 5019, src obj: 1, src ofs: 0x2148b, dst obj: 3, dst ofs: 0x5a96
   2148f:	b8 04 1e 00 00       	mov    eax,0x1e04
   21494:	31 db                	xor    ebx,ebx
   21496:	e8 f5 91 04 00       	call   play_wav
   2149b:	ba 9a 5a 00 00       	mov    edx,@obj3:mom_cpp_variable_38                                ; fixup: num: 5018, src obj: 1, src ofs: 0x2149c, dst obj: 3, dst ofs: 0x5a9a
   214a0:	b8 5d 1e 00 00       	mov    eax,0x1e5d
   214a5:	31 db                	xor    ebx,ebx
   214a7:	e8 e4 91 04 00       	call   play_wav
   214ac:	bb 02 00 00 00       	mov    ebx,0x2
   214b1:	ba 9d 5a 00 00       	mov    edx,@obj3:mom_cpp_variable_39                                ; fixup: num: 5035, src obj: 1, src ofs: 0x214b2, dst obj: 3, dst ofs: 0x5a9d
   214b6:	b8 61 1e 00 00       	mov    eax,0x1e61
   214bb:	e8 d0 91 04 00       	call   play_wav
   214c0:	ba a1 5a 00 00       	mov    edx,@obj3:mom_cpp_variable_40                                ; fixup: num: 5034, src obj: 1, src ofs: 0x214c1, dst obj: 3, dst ofs: 0x5aa1
   214c5:	b8 66 1e 00 00       	mov    eax,0x1e66
   214ca:	31 db                	xor    ebx,ebx
   214cc:	e8 bf 91 04 00       	call   play_wav
   214d1:	bb 03 00 00 00       	mov    ebx,0x3
   214d6:	ba a4 5a 00 00       	mov    edx,@obj3:mom_cpp_variable_41                                ; fixup: num: 5033, src obj: 1, src ofs: 0x214d7, dst obj: 3, dst ofs: 0x5aa4
   214db:	b8 6b 1e 00 00       	mov    eax,0x1e6b
   214e0:	e8 ab 91 04 00       	call   play_wav
   214e5:	bb 02 00 00 00       	mov    ebx,0x2
   214ea:	ba a8 5a 00 00       	mov    edx,@obj3:mom_cpp_variable_42                                ; fixup: num: 5032, src obj: 1, src ofs: 0x214eb, dst obj: 3, dst ofs: 0x5aa8
   214ef:	b8 6f 1e 00 00       	mov    eax,0x1e6f
   214f4:	e8 97 91 04 00       	call   play_wav
   214f9:	ba ab 5a 00 00       	mov    edx,@obj3:mom_cpp_variable_43                                ; fixup: num: 5031, src obj: 1, src ofs: 0x214fa, dst obj: 3, dst ofs: 0x5aab
   214fe:	b8 73 1e 00 00       	mov    eax,0x1e73
   21503:	31 db                	xor    ebx,ebx
   21505:	e8 86 91 04 00       	call   play_wav
   2150a:	b8 02 01 00 00       	mov    eax,0x102
   2150f:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 5030, src obj: 1, src ofs: 0x21510, dst obj: 3, dst ofs: 0x295c0
   21514:	e8 87 8c 00 00       	call   GetDlgFileString
   21519:	89 c6                	mov    esi,eax
   2151b:	57                   	push   edi
talk_to_MOM_branch_12:
   2151c:	8a 06                	mov    al,BYTE PTR [esi]
   2151e:	88 07                	mov    BYTE PTR [edi],al
   21520:	3c 00                	cmp    al,0x0
   21522:	74 10                	je     talk_to_MOM_branch_13
   21524:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   21527:	83 c6 02             	add    esi,0x2
   2152a:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   2152d:	83 c7 02             	add    edi,0x2
   21530:	3c 00                	cmp    al,0x0
   21532:	75 e8                	jne    talk_to_MOM_branch_12
talk_to_MOM_branch_13:
   21534:	5f                   	pop    edi
   21535:	e9 71 00 00 00       	jmp    talk_to_MOM_branch_18
talk_to_MOM_branch_14:
   2153a:	a1 78 2d 02 00       	mov    eax,ds:@obj3:MOM_variable_1                                  ; fixup: num: 5029, src obj: 1, src ofs: 0x2153b, dst obj: 3, dst ofs: 0x22d78
   2153f:	85 c0                	test   eax,eax
   21541:	74 4b                	je     talk_to_MOM_branch_17
   21543:	e8 78 76 00 00       	call   get_day
   21548:	3b 05 80 2d 02 00    	cmp    eax,DWORD PTR ds:@obj3:MOM_variable_3                        ; fixup: num: 5028, src obj: 1, src ofs: 0x2154a, dst obj: 3, dst ofs: 0x22d80
   2154e:	75 3e                	jne    talk_to_MOM_branch_17
   21550:	ba af 5a 00 00       	mov    edx,@obj3:mom_cpp_variable_44                                ; fixup: num: 5044, src obj: 1, src ofs: 0x21551, dst obj: 3, dst ofs: 0x5aaf
   21555:	b8 47 20 00 00       	mov    eax,0x2047
   2155a:	31 db                	xor    ebx,ebx
   2155c:	e8 2f 91 04 00       	call   play_wav
   21561:	b8 04 01 00 00       	mov    eax,0x104
   21566:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 5043, src obj: 1, src ofs: 0x21567, dst obj: 3, dst ofs: 0x295c0
   2156b:	e8 30 8c 00 00       	call   GetDlgFileString
   21570:	89 c6                	mov    esi,eax
   21572:	57                   	push   edi
talk_to_MOM_branch_15:
   21573:	8a 06                	mov    al,BYTE PTR [esi]
   21575:	88 07                	mov    BYTE PTR [edi],al
   21577:	3c 00                	cmp    al,0x0
   21579:	74 10                	je     talk_to_MOM_branch_16
   2157b:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   2157e:	83 c6 02             	add    esi,0x2
   21581:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   21584:	83 c7 02             	add    edi,0x2
   21587:	3c 00                	cmp    al,0x0
   21589:	75 e8                	jne    talk_to_MOM_branch_15
talk_to_MOM_branch_16:
   2158b:	5f                   	pop    edi
   2158c:	eb 1d                	jmp    talk_to_MOM_branch_18
talk_to_MOM_branch_17:
   2158e:	a1 7c 2d 02 00       	mov    eax,ds:@obj3:MOM_variable_2                                  ; fixup: num: 5042, src obj: 1, src ofs: 0x2158f, dst obj: 3, dst ofs: 0x22d7c
   21593:	85 c0                	test   eax,eax
   21595:	74 14                	je     talk_to_MOM_branch_18
   21597:	bb 01 00 00 00       	mov    ebx,0x1
   2159c:	ba b3 5a 00 00       	mov    edx,@obj3:mom_cpp_variable_45                                ; fixup: num: 5041, src obj: 1, src ofs: 0x2159d, dst obj: 3, dst ofs: 0x5ab3
   215a1:	b8 11 23 00 00       	mov    eax,0x2311
   215a6:	e8 e5 90 04 00       	call   play_wav
talk_to_MOM_branch_18:
   215ab:	b8 b7 5a 00 00       	mov    eax,@obj3:mom_cpp_variable_46                                ; fixup: num: 5040, src obj: 1, src ofs: 0x215ac, dst obj: 3, dst ofs: 0x5ab7
   215b0:	e8 db b1 04 00       	call   check_script_flag
   215b5:	84 c0                	test   al,al
   215b7:	0f 84 bc 00 00 00    	je     talk_to_MOM_branch_21
   215bd:	83 3d 88 2d 02 00 00 	cmp    DWORD PTR ds:@obj3:MOM_variable_5,0x0                        ; fixup: num: 5039, src obj: 1, src ofs: 0x215bf, dst obj: 3, dst ofs: 0x22d88
   215c4:	0f 85 af 00 00 00    	jne    talk_to_MOM_branch_21
   215ca:	b8 01 00 00 00       	mov    eax,0x1
   215cf:	bb 03 00 00 00       	mov    ebx,0x3
   215d4:	ba cc 5a 00 00       	mov    edx,@obj3:mom_cpp_variable_47                                ; fixup: num: 5038, src obj: 1, src ofs: 0x215d5, dst obj: 3, dst ofs: 0x5acc
   215d9:	a3 88 2d 02 00       	mov    ds:@obj3:MOM_variable_5,eax                                  ; fixup: num: 5037, src obj: 1, src ofs: 0x215da, dst obj: 3, dst ofs: 0x22d88
   215de:	b8 5a 20 00 00       	mov    eax,0x205a
   215e3:	e8 a8 90 04 00       	call   play_wav
   215e8:	bb 01 00 00 00       	mov    ebx,0x1
   215ed:	ba d0 5a 00 00       	mov    edx,@obj3:mom_cpp_variable_48                                ; fixup: num: 5036, src obj: 1, src ofs: 0x215ee, dst obj: 3, dst ofs: 0x5ad0
   215f2:	b8 5e 20 00 00       	mov    eax,0x205e
   215f7:	e8 94 90 04 00       	call   play_wav
   215fc:	e8 ef 72 00 00       	call   MOM_S_REFLECTION_IN_THE_TOASTER
   21601:	bb 03 00 00 00       	mov    ebx,0x3
   21606:	ba d4 5a 00 00       	mov    edx,@obj3:mom_cpp_variable_49                                ; fixup: num: 5052, src obj: 1, src ofs: 0x21607, dst obj: 3, dst ofs: 0x5ad4
   2160b:	b8 63 20 00 00       	mov    eax,0x2063
   21610:	e8 7b 90 04 00       	call   play_wav
   21615:	bb 01 00 00 00       	mov    ebx,0x1
   2161a:	ba d7 5a 00 00       	mov    edx,@obj3:mom_cpp_variable_50                                ; fixup: num: 5051, src obj: 1, src ofs: 0x2161b, dst obj: 3, dst ofs: 0x5ad7
   2161f:	b8 68 20 00 00       	mov    eax,0x2068
   21624:	e8 67 90 04 00       	call   play_wav
   21629:	bb 02 00 00 00       	mov    ebx,0x2
   2162e:	ba db 5a 00 00       	mov    edx,@obj3:mom_cpp_variable_51                                ; fixup: num: 5050, src obj: 1, src ofs: 0x2162f, dst obj: 3, dst ofs: 0x5adb
   21633:	b8 6d 20 00 00       	mov    eax,0x206d
   21638:	e8 53 90 04 00       	call   play_wav
   2163d:	ba de 5a 00 00       	mov    edx,@obj3:mom_cpp_variable_52                                ; fixup: num: 5049, src obj: 1, src ofs: 0x2163e, dst obj: 3, dst ofs: 0x5ade
   21642:	b8 71 20 00 00       	mov    eax,0x2071
   21647:	31 db                	xor    ebx,ebx
   21649:	e8 42 90 04 00       	call   play_wav
   2164e:	b8 05 01 00 00       	mov    eax,0x105
   21653:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 5048, src obj: 1, src ofs: 0x21654, dst obj: 3, dst ofs: 0x295c0
   21658:	e8 43 8b 00 00       	call   GetDlgFileString
   2165d:	89 c6                	mov    esi,eax
   2165f:	57                   	push   edi
talk_to_MOM_branch_19:
   21660:	8a 06                	mov    al,BYTE PTR [esi]
   21662:	88 07                	mov    BYTE PTR [edi],al
   21664:	3c 00                	cmp    al,0x0
   21666:	74 10                	je     talk_to_MOM_branch_20
   21668:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   2166b:	83 c6 02             	add    esi,0x2
   2166e:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   21671:	83 c7 02             	add    edi,0x2
   21674:	3c 00                	cmp    al,0x0
   21676:	75 e8                	jne    talk_to_MOM_branch_19
talk_to_MOM_branch_20:
   21678:	5f                   	pop    edi
talk_to_MOM_branch_21:
   21679:	b8 e2 5a 00 00       	mov    eax,@obj3:mom_cpp_variable_53                                ; fixup: num: 5047, src obj: 1, src ofs: 0x2167a, dst obj: 3, dst ofs: 0x5ae2
   2167e:	e8 0d b1 04 00       	call   check_script_flag
   21683:	84 c0                	test   al,al
   21685:	0f 84 a8 00 00 00    	je     talk_to_MOM_branch_25
   2168b:	b8 ef 5a 00 00       	mov    eax,@obj3:mom_cpp_variable_54                                ; fixup: num: 5046, src obj: 1, src ofs: 0x2168c, dst obj: 3, dst ofs: 0x5aef
   21690:	e8 fb b0 04 00       	call   check_script_flag
   21695:	84 c0                	test   al,al
   21697:	75 12                	jne    talk_to_MOM_branch_22
   21699:	b8 fe 5a 00 00       	mov    eax,@obj3:mom_cpp_variable_55                                ; fixup: num: 5045, src obj: 1, src ofs: 0x2169a, dst obj: 3, dst ofs: 0x5afe
   2169e:	e8 ed b0 04 00       	call   check_script_flag
   216a3:	84 c0                	test   al,al
   216a5:	0f 84 88 00 00 00    	je     talk_to_MOM_branch_25
talk_to_MOM_branch_22:
   216ab:	83 3d a0 2d 02 00 00 	cmp    DWORD PTR ds:@obj3:MOM_variable_11,0x0                       ; fixup: num: 5060, src obj: 1, src ofs: 0x216ad, dst obj: 3, dst ofs: 0x22da0
   216b2:	0f 85 7b 00 00 00    	jne    talk_to_MOM_branch_25
   216b8:	bb 01 00 00 00       	mov    ebx,0x1
   216bd:	ba 0f 5b 00 00       	mov    edx,@obj3:mom_cpp_variable_56                                ; fixup: num: 5059, src obj: 1, src ofs: 0x216be, dst obj: 3, dst ofs: 0x5b0f
   216c2:	b8 56 24 00 00       	mov    eax,0x2456
   216c7:	89 1d a0 2d 02 00    	mov    DWORD PTR ds:@obj3:MOM_variable_11,ebx                       ; fixup: num: 5058, src obj: 1, src ofs: 0x216c9, dst obj: 3, dst ofs: 0x22da0
   216cd:	31 db                	xor    ebx,ebx
   216cf:	e8 bc 8f 04 00       	call   play_wav
   216d4:	b8 01 00 00 00       	mov    eax,0x1
   216d9:	31 d2                	xor    edx,edx
   216db:	e8 90 6b 00 00       	call   DNA_DINER_LIGHT_MIDGAME_PLAYED
   216e0:	85 c0                	test   eax,eax
   216e2:	74 4f                	je     talk_to_MOM_branch_25
   216e4:	bb 01 00 00 00       	mov    ebx,0x1
   216e9:	ba 13 5b 00 00       	mov    edx,@obj3:mom_cpp_variable_57                                ; fixup: num: 5057, src obj: 1, src ofs: 0x216ea, dst obj: 3, dst ofs: 0x5b13
   216ee:	b8 5d 24 00 00       	mov    eax,0x245d
   216f3:	e8 98 8f 04 00       	call   play_wav
   216f8:	b8 06 01 00 00       	mov    eax,0x106
   216fd:	e8 9e 8a 00 00       	call   GetDlgFileString
   21702:	e8 09 98 04 00       	call   get_response
   21707:	83 f8 01             	cmp    eax,0x1
   2170a:	75 0e                	jne    talk_to_MOM_branch_23
   2170c:	ba 17 5b 00 00       	mov    edx,@obj3:mom_cpp_variable_58                                ; fixup: num: 5056, src obj: 1, src ofs: 0x2170d, dst obj: 3, dst ofs: 0x5b17
   21711:	b8 6b 24 00 00       	mov    eax,0x246b
   21716:	31 db                	xor    ebx,ebx
   21718:	eb 14                	jmp    talk_to_MOM_branch_24
talk_to_MOM_branch_23:
   2171a:	83 f8 02             	cmp    eax,0x2
   2171d:	75 14                	jne    talk_to_MOM_branch_25
   2171f:	bb 01 00 00 00       	mov    ebx,0x1
   21724:	ba 1b 5b 00 00       	mov    edx,@obj3:mom_cpp_variable_59                                ; fixup: num: 5055, src obj: 1, src ofs: 0x21725, dst obj: 3, dst ofs: 0x5b1b
   21729:	b8 6f 24 00 00       	mov    eax,0x246f
talk_to_MOM_branch_24:
   2172e:	e8 5d 8f 04 00       	call   play_wav
talk_to_MOM_branch_25:
   21733:	b8 1f 5b 00 00       	mov    eax,@obj3:mom_cpp_variable_60                                ; fixup: num: 5054, src obj: 1, src ofs: 0x21734, dst obj: 3, dst ofs: 0x5b1f
   21738:	e8 53 b0 04 00       	call   check_script_flag
   2173d:	84 c0                	test   al,al
   2173f:	0f 84 46 01 00 00    	je     talk_to_MOM_branch_27
   21745:	83 3d 8c 2d 02 00 00 	cmp    DWORD PTR ds:@obj3:MOM_variable_6,0x0                        ; fixup: num: 5053, src obj: 1, src ofs: 0x21747, dst obj: 3, dst ofs: 0x22d8c
   2174c:	0f 85 39 01 00 00    	jne    talk_to_MOM_branch_27
   21752:	be 01 00 00 00       	mov    esi,0x1
   21757:	bb 02 00 00 00       	mov    ebx,0x2
   2175c:	ba 31 5b 00 00       	mov    edx,@obj3:mom_cpp_variable_61                                ; fixup: num: 5069, src obj: 1, src ofs: 0x2175d, dst obj: 3, dst ofs: 0x5b31
   21761:	b8 20 22 00 00       	mov    eax,0x2220
   21766:	89 35 8c 2d 02 00    	mov    DWORD PTR ds:@obj3:MOM_variable_6,esi                        ; fixup: num: 5068, src obj: 1, src ofs: 0x21768, dst obj: 3, dst ofs: 0x22d8c
   2176c:	e8 1f 8f 04 00       	call   play_wav
   21771:	ba 35 5b 00 00       	mov    edx,@obj3:mom_cpp_variable_62                                ; fixup: num: 5067, src obj: 1, src ofs: 0x21772, dst obj: 3, dst ofs: 0x5b35
   21776:	b8 25 22 00 00       	mov    eax,0x2225
   2177b:	31 db                	xor    ebx,ebx
   2177d:	e8 0e 8f 04 00       	call   play_wav
   21782:	bb 02 00 00 00       	mov    ebx,0x2
   21787:	ba 38 5b 00 00       	mov    edx,@obj3:mom_cpp_variable_63                                ; fixup: num: 5066, src obj: 1, src ofs: 0x21788, dst obj: 3, dst ofs: 0x5b38
   2178c:	b8 2a 22 00 00       	mov    eax,0x222a
   21791:	e8 fa 8e 04 00       	call   play_wav
   21796:	b8 07 01 00 00       	mov    eax,0x107
   2179b:	e8 00 8a 00 00       	call   GetDlgFileString
   217a0:	e8 6b 97 04 00       	call   get_response
   217a5:	39 f0                	cmp    eax,esi
   217a7:	75 14                	jne    talk_to_MOM_branch_26
   217a9:	bb 02 00 00 00       	mov    ebx,0x2
   217ae:	ba 3c 5b 00 00       	mov    edx,@obj3:mom_cpp_variable_64                                ; fixup: num: 5065, src obj: 1, src ofs: 0x217af, dst obj: 3, dst ofs: 0x5b3c
   217b3:	b8 37 22 00 00       	mov    eax,0x2237
   217b8:	e8 d3 8e 04 00       	call   play_wav
talk_to_MOM_branch_26:
   217bd:	bb 03 00 00 00       	mov    ebx,0x3
   217c2:	ba 40 5b 00 00       	mov    edx,@obj3:mom_cpp_variable_65                                ; fixup: num: 5064, src obj: 1, src ofs: 0x217c3, dst obj: 3, dst ofs: 0x5b40
   217c7:	b8 3e 22 00 00       	mov    eax,0x223e
   217cc:	e8 bf 8e 04 00       	call   play_wav
   217d1:	b8 44 5b 00 00       	mov    eax,@obj3:mom_cpp_variable_66                                ; fixup: num: 5063, src obj: 1, src ofs: 0x217d2, dst obj: 3, dst ofs: 0x5b44
   217d6:	ba 50 5b 00 00       	mov    edx,@obj3:mom_cpp_variable_67                                ; fixup: num: 5062, src obj: 1, src ofs: 0x217d7, dst obj: 3, dst ofs: 0x5b50
   217db:	e8 a0 b3 04 00       	call   ExecuteCommand
   217e0:	31 db                	xor    ebx,ebx
   217e2:	b8 4e 22 00 00       	mov    eax,0x224e
   217e7:	e8 a4 8e 04 00       	call   play_wav
   217ec:	e8 0f 71 00 00       	call   BABY_IN_CRIB_PART_II
   217f1:	bb 01 00 00 00       	mov    ebx,0x1
   217f6:	ba 54 5b 00 00       	mov    edx,@obj3:mom_cpp_variable_68                                ; fixup: num: 5061, src obj: 1, src ofs: 0x217f7, dst obj: 3, dst ofs: 0x5b54
   217fb:	b8 72 22 00 00       	mov    eax,0x2272
   21800:	e8 8b 8e 04 00       	call   play_wav
   21805:	bb 02 00 00 00       	mov    ebx,0x2
   2180a:	ba 58 5b 00 00       	mov    edx,@obj3:mom_cpp_variable_69                                ; fixup: num: 4943, src obj: 1, src ofs: 0x2180b, dst obj: 3, dst ofs: 0x5b58
   2180f:	b8 57 22 00 00       	mov    eax,0x2257
   21814:	e8 77 8e 04 00       	call   play_wav
   21819:	bb 04 00 00 00       	mov    ebx,0x4
   2181e:	ba 5c 5b 00 00       	mov    edx,@obj3:mom_cpp_variable_70                                ; fixup: num: 4942, src obj: 1, src ofs: 0x2181f, dst obj: 3, dst ofs: 0x5b5c
   21823:	b8 76 22 00 00       	mov    eax,0x2276
   21828:	e8 63 8e 04 00       	call   play_wav
   2182d:	bb 01 00 00 00       	mov    ebx,0x1
   21832:	ba 5f 5b 00 00       	mov    edx,@obj3:mom_cpp_variable_71                                ; fixup: num: 4941, src obj: 1, src ofs: 0x21833, dst obj: 3, dst ofs: 0x5b5f
   21837:	b8 7b 22 00 00       	mov    eax,0x227b
   2183c:	e8 4f 8e 04 00       	call   play_wav
   21841:	bb 03 00 00 00       	mov    ebx,0x3
   21846:	ba 63 5b 00 00       	mov    edx,@obj3:mom_cpp_variable_72                                ; fixup: num: 4940, src obj: 1, src ofs: 0x21847, dst obj: 3, dst ofs: 0x5b63
   2184b:	b8 82 22 00 00       	mov    eax,0x2282
   21850:	e8 3b 8e 04 00       	call   play_wav
   21855:	ba 66 5b 00 00       	mov    edx,@obj3:mom_cpp_variable_73                                ; fixup: num: 4939, src obj: 1, src ofs: 0x21856, dst obj: 3, dst ofs: 0x5b66
   2185a:	b8 86 22 00 00       	mov    eax,0x2286
   2185f:	31 db                	xor    ebx,ebx
   21861:	e8 2a 8e 04 00       	call   play_wav
   21866:	bb 02 00 00 00       	mov    ebx,0x2
   2186b:	ba 6a 5b 00 00       	mov    edx,@obj3:mom_cpp_variable_74                                ; fixup: num: 4938, src obj: 1, src ofs: 0x2186c, dst obj: 3, dst ofs: 0x5b6a
   21870:	b8 8a 22 00 00       	mov    eax,0x228a
   21875:	e8 16 8e 04 00       	call   play_wav
   2187a:	ba 6e 5b 00 00       	mov    edx,@obj3:mom_cpp_variable_75                                ; fixup: num: 4937, src obj: 1, src ofs: 0x2187b, dst obj: 3, dst ofs: 0x5b6e
   2187f:	b8 93 22 00 00       	mov    eax,0x2293
   21884:	31 db                	xor    ebx,ebx
   21886:	e8 05 8e 04 00       	call   play_wav
talk_to_MOM_branch_27:
   2188b:	b8 72 5b 00 00       	mov    eax,@obj3:mom_cpp_variable_76                                ; fixup: num: 4936, src obj: 1, src ofs: 0x2188c, dst obj: 3, dst ofs: 0x5b72
   21890:	e8 fb ae 04 00       	call   check_script_flag
   21895:	84 c0                	test   al,al
   21897:	74 25                	je     talk_to_MOM_branch_28
   21899:	83 3d 90 2d 02 00 00 	cmp    DWORD PTR ds:@obj3:MOM_variable_7,0x0                        ; fixup: num: 4935, src obj: 1, src ofs: 0x2189b, dst obj: 3, dst ofs: 0x22d90
   218a0:	75 1c                	jne    talk_to_MOM_branch_28
   218a2:	bd 01 00 00 00       	mov    ebp,0x1
   218a7:	ba 83 5b 00 00       	mov    edx,@obj3:mom_cpp_variable_77                                ; fixup: num: 4934, src obj: 1, src ofs: 0x218a8, dst obj: 3, dst ofs: 0x5b83
   218ac:	b8 f3 23 00 00       	mov    eax,0x23f3
   218b1:	89 eb                	mov    ebx,ebp
   218b3:	89 2d 90 2d 02 00    	mov    DWORD PTR ds:@obj3:MOM_variable_7,ebp                        ; fixup: num: 4956, src obj: 1, src ofs: 0x218b5, dst obj: 3, dst ofs: 0x22d90
   218b9:	e8 d2 8d 04 00       	call   play_wav
talk_to_MOM_branch_28:
   218be:	b8 87 5b 00 00       	mov    eax,@obj3:mom_cpp_variable_78                                ; fixup: num: 4955, src obj: 1, src ofs: 0x218bf, dst obj: 3, dst ofs: 0x5b87
   218c3:	e8 c8 ae 04 00       	call   check_script_flag
   218c8:	84 c0                	test   al,al
   218ca:	74 4d                	je     talk_to_MOM_branch_29
   218cc:	83 3d 94 2d 02 00 00 	cmp    DWORD PTR ds:@obj3:MOM_variable_8,0x0                        ; fixup: num: 4954, src obj: 1, src ofs: 0x218ce, dst obj: 3, dst ofs: 0x22d94
   218d3:	75 44                	jne    talk_to_MOM_branch_29
   218d5:	ba 01 00 00 00       	mov    edx,0x1
   218da:	b8 fb 23 00 00       	mov    eax,0x23fb
   218df:	89 15 94 2d 02 00    	mov    DWORD PTR ds:@obj3:MOM_variable_8,edx                        ; fixup: num: 4953, src obj: 1, src ofs: 0x218e1, dst obj: 3, dst ofs: 0x22d94
   218e5:	89 d3                	mov    ebx,edx
   218e7:	ba 9a 5b 00 00       	mov    edx,@obj3:mom_cpp_variable_79                                ; fixup: num: 4952, src obj: 1, src ofs: 0x218e8, dst obj: 3, dst ofs: 0x5b9a
   218ec:	e8 9f 8d 04 00       	call   play_wav
   218f1:	bb 01 00 00 00       	mov    ebx,0x1
   218f6:	ba 9e 5b 00 00       	mov    edx,@obj3:mom_cpp_variable_80                                ; fixup: num: 4951, src obj: 1, src ofs: 0x218f7, dst obj: 3, dst ofs: 0x5b9e
   218fb:	b8 01 24 00 00       	mov    eax,0x2401
   21900:	e8 8b 8d 04 00       	call   play_wav
   21905:	bb 02 00 00 00       	mov    ebx,0x2
   2190a:	ba a2 5b 00 00       	mov    edx,@obj3:mom_cpp_variable_81                                ; fixup: num: 4950, src obj: 1, src ofs: 0x2190b, dst obj: 3, dst ofs: 0x5ba2
   2190f:	b8 0d 24 00 00       	mov    eax,0x240d
   21914:	e8 77 8d 04 00       	call   play_wav
talk_to_MOM_branch_29:
   21919:	b8 a6 5b 00 00       	mov    eax,@obj3:mom_cpp_variable_82                                ; fixup: num: 4949, src obj: 1, src ofs: 0x2191a, dst obj: 3, dst ofs: 0x5ba6
   2191e:	e8 6d ae 04 00       	call   check_script_flag
   21923:	84 c0                	test   al,al
   21925:	0f 84 74 00 00 00    	je     talk_to_MOM_branch_32
   2192b:	83 3d 98 2d 02 00 00 	cmp    DWORD PTR ds:@obj3:MOM_variable_9,0x0                        ; fixup: num: 4948, src obj: 1, src ofs: 0x2192d, dst obj: 3, dst ofs: 0x22d98
   21932:	75 6b                	jne    talk_to_MOM_branch_32
   21934:	b9 01 00 00 00       	mov    ecx,0x1
   21939:	b8 ba 5b 00 00       	mov    eax,@obj3:mom_cpp_variable_83                                ; fixup: num: 4947, src obj: 1, src ofs: 0x2193a, dst obj: 3, dst ofs: 0x5bba
   2193e:	89 0d 98 2d 02 00    	mov    DWORD PTR ds:@obj3:MOM_variable_9,ecx                        ; fixup: num: 4946, src obj: 1, src ofs: 0x21940, dst obj: 3, dst ofs: 0x22d98
   21944:	e8 f7 ae 04 00       	call   npc_alive
   21949:	84 c0                	test   al,al
   2194b:	74 1c                	je     talk_to_MOM_branch_30
   2194d:	b8 c1 5b 00 00       	mov    eax,@obj3:mom_cpp_variable_84                                ; fixup: num: 4945, src obj: 1, src ofs: 0x2194e, dst obj: 3, dst ofs: 0x5bc1
   21952:	e8 e9 ae 04 00       	call   npc_alive
   21957:	84 c0                	test   al,al
   21959:	74 0e                	je     talk_to_MOM_branch_30
   2195b:	ba ca 5b 00 00       	mov    edx,@obj3:mom_cpp_variable_85                                ; fixup: num: 4944, src obj: 1, src ofs: 0x2195c, dst obj: 3, dst ofs: 0x5bca
   21960:	b8 16 24 00 00       	mov    eax,0x2416
   21965:	89 cb                	mov    ebx,ecx
   21967:	eb 31                	jmp    talk_to_MOM_branch_31
talk_to_MOM_branch_30:
   21969:	bb 01 00 00 00       	mov    ebx,0x1
   2196e:	ba ce 5b 00 00       	mov    edx,@obj3:mom_cpp_variable_86                                ; fixup: num: 4965, src obj: 1, src ofs: 0x2196f, dst obj: 3, dst ofs: 0x5bce
   21973:	b8 20 24 00 00       	mov    eax,0x2420
   21978:	e8 13 8d 04 00       	call   play_wav
   2197d:	ba d2 5b 00 00       	mov    edx,@obj3:mom_cpp_variable_87                                ; fixup: num: 4964, src obj: 1, src ofs: 0x2197e, dst obj: 3, dst ofs: 0x5bd2
   21982:	b8 28 24 00 00       	mov    eax,0x2428
   21987:	31 db                	xor    ebx,ebx
   21989:	e8 02 8d 04 00       	call   play_wav
   2198e:	ba d5 5b 00 00       	mov    edx,@obj3:mom_cpp_variable_88                                ; fixup: num: 4963, src obj: 1, src ofs: 0x2198f, dst obj: 3, dst ofs: 0x5bd5
   21993:	b8 2c 24 00 00       	mov    eax,0x242c
   21998:	31 db                	xor    ebx,ebx
talk_to_MOM_branch_31:
   2199a:	e8 f1 8c 04 00       	call   play_wav
talk_to_MOM_branch_32:
   2199f:	b8 d9 5b 00 00       	mov    eax,@obj3:mom_cpp_variable_89                                ; fixup: num: 4962, src obj: 1, src ofs: 0x219a0, dst obj: 3, dst ofs: 0x5bd9
   219a4:	e8 e7 ad 04 00       	call   check_script_flag
   219a9:	84 c0                	test   al,al
   219ab:	0f 84 90 00 00 00    	je     talk_to_MOM_branch_35
   219b1:	b8 e6 5b 00 00       	mov    eax,@obj3:mom_cpp_variable_90                                ; fixup: num: 4961, src obj: 1, src ofs: 0x219b2, dst obj: 3, dst ofs: 0x5be6
   219b6:	e8 d5 ad 04 00       	call   check_script_flag
   219bb:	84 c0                	test   al,al
   219bd:	0f 84 7e 00 00 00    	je     talk_to_MOM_branch_35
   219c3:	83 3d 9c 2d 02 00 00 	cmp    DWORD PTR ds:@obj3:MOM_variable_10,0x0                       ; fixup: num: 4960, src obj: 1, src ofs: 0x219c5, dst obj: 3, dst ofs: 0x22d9c
   219ca:	0f 85 71 00 00 00    	jne    talk_to_MOM_branch_35
   219d0:	bf 01 00 00 00       	mov    edi,0x1
   219d5:	ba f8 5b 00 00       	mov    edx,@obj3:mom_cpp_variable_91                                ; fixup: num: 4959, src obj: 1, src ofs: 0x219d6, dst obj: 3, dst ofs: 0x5bf8
   219da:	b8 34 24 00 00       	mov    eax,0x2434
   219df:	31 db                	xor    ebx,ebx
   219e1:	89 3d 9c 2d 02 00    	mov    DWORD PTR ds:@obj3:MOM_variable_10,edi                       ; fixup: num: 4958, src obj: 1, src ofs: 0x219e3, dst obj: 3, dst ofs: 0x22d9c
   219e7:	e8 a4 8c 04 00       	call   play_wav
   219ec:	89 f8                	mov    eax,edi
   219ee:	31 d2                	xor    edx,edx
   219f0:	e8 7b 68 00 00       	call   DNA_DINER_LIGHT_MIDGAME_PLAYED
   219f5:	85 c0                	test   eax,eax
   219f7:	74 48                	je     talk_to_MOM_branch_35
   219f9:	ba fc 5b 00 00       	mov    edx,@obj3:mom_cpp_variable_92                                ; fixup: num: 4957, src obj: 1, src ofs: 0x219fa, dst obj: 3, dst ofs: 0x5bfc
   219fe:	b8 39 24 00 00       	mov    eax,0x2439
   21a03:	89 fb                	mov    ebx,edi
   21a05:	e8 86 8c 04 00       	call   play_wav
   21a0a:	b8 09 01 00 00       	mov    eax,0x109
   21a0f:	e8 8c 87 00 00       	call   GetDlgFileString
   21a14:	e8 f7 94 04 00       	call   get_response
   21a19:	39 f8                	cmp    eax,edi
   21a1b:	75 0e                	jne    talk_to_MOM_branch_33
   21a1d:	ba 00 5c 00 00       	mov    edx,@obj3:mom_cpp_variable_93                                ; fixup: num: 4976, src obj: 1, src ofs: 0x21a1e, dst obj: 3, dst ofs: 0x5c00
   21a22:	b8 48 24 00 00       	mov    eax,0x2448
   21a27:	31 db                	xor    ebx,ebx
   21a29:	eb 11                	jmp    talk_to_MOM_branch_34
talk_to_MOM_branch_33:
   21a2b:	83 f8 02             	cmp    eax,0x2
   21a2e:	75 11                	jne    talk_to_MOM_branch_35
   21a30:	ba 04 5c 00 00       	mov    edx,@obj3:mom_cpp_variable_94                                ; fixup: num: 4975, src obj: 1, src ofs: 0x21a31, dst obj: 3, dst ofs: 0x5c04
   21a35:	b8 4d 24 00 00       	mov    eax,0x244d
   21a3a:	89 fb                	mov    ebx,edi
talk_to_MOM_branch_34:
   21a3c:	e8 4f 8c 04 00       	call   play_wav
talk_to_MOM_branch_35:
   21a41:	b8 08 5c 00 00       	mov    eax,@obj3:mom_cpp_variable_95                                ; fixup: num: 4974, src obj: 1, src ofs: 0x21a42, dst obj: 3, dst ofs: 0x5c08
   21a46:	e8 45 ad 04 00       	call   check_script_flag
   21a4b:	84 c0                	test   al,al
   21a4d:	74 46                	je     talk_to_MOM_branch_36
   21a4f:	83 3d a4 2d 02 00 00 	cmp    DWORD PTR ds:@obj3:MOM_variable_12,0x0                       ; fixup: num: 4973, src obj: 1, src ofs: 0x21a51, dst obj: 3, dst ofs: 0x22da4
   21a56:	75 3d                	jne    talk_to_MOM_branch_36
   21a58:	b8 01 00 00 00       	mov    eax,0x1
   21a5d:	ba 18 5c 00 00       	mov    edx,@obj3:mom_cpp_variable_96                                ; fixup: num: 4972, src obj: 1, src ofs: 0x21a5e, dst obj: 3, dst ofs: 0x5c18
   21a62:	31 db                	xor    ebx,ebx
   21a64:	a3 a4 2d 02 00       	mov    ds:@obj3:MOM_variable_12,eax                                 ; fixup: num: 4971, src obj: 1, src ofs: 0x21a65, dst obj: 3, dst ofs: 0x22da4
   21a69:	b8 95 24 00 00       	mov    eax,0x2495
   21a6e:	e8 1d 8c 04 00       	call   play_wav
   21a73:	ba 1c 5c 00 00       	mov    edx,@obj3:mom_cpp_variable_97                                ; fixup: num: 4970, src obj: 1, src ofs: 0x21a74, dst obj: 3, dst ofs: 0x5c1c
   21a78:	b8 9b 24 00 00       	mov    eax,0x249b
   21a7d:	31 db                	xor    ebx,ebx
   21a7f:	e8 0c 8c 04 00       	call   play_wav
   21a84:	ba 1f 5c 00 00       	mov    edx,@obj3:mom_cpp_variable_98                                ; fixup: num: 4969, src obj: 1, src ofs: 0x21a85, dst obj: 3, dst ofs: 0x5c1f
   21a89:	b8 9f 24 00 00       	mov    eax,0x249f
   21a8e:	31 db                	xor    ebx,ebx
   21a90:	e8 fb 8b 04 00       	call   play_wav
talk_to_MOM_branch_36:
   21a95:	b8 23 5c 00 00       	mov    eax,@obj3:mom_cpp_variable_99                                ; fixup: num: 4968, src obj: 1, src ofs: 0x21a96, dst obj: 3, dst ofs: 0x5c23
   21a9a:	e8 f1 ac 04 00       	call   check_script_flag
   21a9f:	84 c0                	test   al,al
   21aa1:	0f 84 ef 00 00 00    	je     talk_to_MOM_branch_39
   21aa7:	b8 32 5c 00 00       	mov    eax,@obj3:mom_cpp_variable_100                               ; fixup: num: 4967, src obj: 1, src ofs: 0x21aa8, dst obj: 3, dst ofs: 0x5c32
   21aac:	e8 df ac 04 00       	call   check_script_flag
   21ab1:	84 c0                	test   al,al
   21ab3:	0f 85 dd 00 00 00    	jne    talk_to_MOM_branch_39
   21ab9:	b8 43 5c 00 00       	mov    eax,@obj3:mom_cpp_variable_101                               ; fixup: num: 4966, src obj: 1, src ofs: 0x21aba, dst obj: 3, dst ofs: 0x5c43
   21abe:	e8 cd ac 04 00       	call   check_script_flag
   21ac3:	84 c0                	test   al,al
   21ac5:	0f 85 cb 00 00 00    	jne    talk_to_MOM_branch_39
   21acb:	83 3d a8 2d 02 00 00 	cmp    DWORD PTR ds:@obj3:MOM_variable_13,0x0                       ; fixup: num: 4984, src obj: 1, src ofs: 0x21acd, dst obj: 3, dst ofs: 0x22da8
   21ad2:	0f 85 be 00 00 00    	jne    talk_to_MOM_branch_39
   21ad8:	bb 01 00 00 00       	mov    ebx,0x1
   21add:	ba 55 5c 00 00       	mov    edx,@obj3:mom_cpp_variable_102                               ; fixup: num: 4983, src obj: 1, src ofs: 0x21ade, dst obj: 3, dst ofs: 0x5c55
   21ae2:	b8 d7 24 00 00       	mov    eax,0x24d7
   21ae7:	89 1d a8 2d 02 00    	mov    DWORD PTR ds:@obj3:MOM_variable_13,ebx                       ; fixup: num: 4982, src obj: 1, src ofs: 0x21ae9, dst obj: 3, dst ofs: 0x22da8
   21aed:	31 db                	xor    ebx,ebx
   21aef:	e8 9c 8b 04 00       	call   play_wav
   21af4:	ba 01 00 00 00       	mov    edx,0x1
   21af9:	31 c0                	xor    eax,eax
   21afb:	e8 50 67 00 00       	call   PC_HEARD_OF_KARINS_KIDNAPPING
   21b00:	b8 0d 01 00 00       	mov    eax,0x10d
   21b05:	e8 96 86 00 00       	call   GetDlgFileString
   21b0a:	e8 01 94 04 00       	call   get_response
   21b0f:	83 f8 01             	cmp    eax,0x1
   21b12:	75 0e                	jne    talk_to_MOM_branch_37
   21b14:	ba 59 5c 00 00       	mov    edx,@obj3:mom_cpp_variable_103                               ; fixup: num: 4981, src obj: 1, src ofs: 0x21b15, dst obj: 3, dst ofs: 0x5c59
   21b19:	b8 e3 24 00 00       	mov    eax,0x24e3
   21b1e:	31 db                	xor    ebx,ebx
   21b20:	eb 6f                	jmp    talk_to_MOM_branch_38
talk_to_MOM_branch_37:
   21b22:	83 f8 02             	cmp    eax,0x2
   21b25:	75 6f                	jne    talk_to_MOM_branch_39
   21b27:	ba 5d 5c 00 00       	mov    edx,@obj3:mom_cpp_variable_104                               ; fixup: num: 4980, src obj: 1, src ofs: 0x21b28, dst obj: 3, dst ofs: 0x5c5d
   21b2c:	b8 e8 24 00 00       	mov    eax,0x24e8
   21b31:	31 db                	xor    ebx,ebx
   21b33:	e8 58 8b 04 00       	call   play_wav
   21b38:	bb 02 00 00 00       	mov    ebx,0x2
   21b3d:	ba 61 5c 00 00       	mov    edx,@obj3:mom_cpp_variable_105                               ; fixup: num: 4979, src obj: 1, src ofs: 0x21b3e, dst obj: 3, dst ofs: 0x5c61
   21b42:	b8 ed 24 00 00       	mov    eax,0x24ed
   21b47:	e8 44 8b 04 00       	call   play_wav
   21b4c:	ba 65 5c 00 00       	mov    edx,@obj3:mom_cpp_variable_106                               ; fixup: num: 4978, src obj: 1, src ofs: 0x21b4d, dst obj: 3, dst ofs: 0x5c65
   21b51:	b8 f3 24 00 00       	mov    eax,0x24f3
   21b56:	31 db                	xor    ebx,ebx
   21b58:	e8 33 8b 04 00       	call   play_wav
   21b5d:	bb 02 00 00 00       	mov    ebx,0x2
   21b62:	ba 68 5c 00 00       	mov    edx,@obj3:mom_cpp_variable_107                               ; fixup: num: 4977, src obj: 1, src ofs: 0x21b63, dst obj: 3, dst ofs: 0x5c68
   21b67:	b8 f7 24 00 00       	mov    eax,0x24f7
   21b6c:	e8 1f 8b 04 00       	call   play_wav
   21b71:	ba 6c 5c 00 00       	mov    edx,@obj3:mom_cpp_variable_108                               ; fixup: num: 4994, src obj: 1, src ofs: 0x21b72, dst obj: 3, dst ofs: 0x5c6c
   21b76:	b8 fd 24 00 00       	mov    eax,0x24fd
   21b7b:	31 db                	xor    ebx,ebx
   21b7d:	e8 0e 8b 04 00       	call   play_wav
   21b82:	bb 01 00 00 00       	mov    ebx,0x1
   21b87:	ba 6f 5c 00 00       	mov    edx,@obj3:mom_cpp_variable_109                               ; fixup: num: 4993, src obj: 1, src ofs: 0x21b88, dst obj: 3, dst ofs: 0x5c6f
   21b8c:	b8 01 25 00 00       	mov    eax,0x2501
talk_to_MOM_branch_38:
   21b91:	e8 fa 8a 04 00       	call   play_wav
talk_to_MOM_branch_39:
   21b96:	b8 73 5c 00 00       	mov    eax,@obj3:mom_cpp_variable_110                               ; fixup: num: 4992, src obj: 1, src ofs: 0x21b97, dst obj: 3, dst ofs: 0x5c73
   21b9b:	e8 f0 ab 04 00       	call   check_script_flag
   21ba0:	84 c0                	test   al,al
   21ba2:	0f 84 81 01 00 00    	je     talk_to_MOM_branch_43
   21ba8:	83 3d ac 2d 02 00 00 	cmp    DWORD PTR ds:@obj3:MOM_variable_14,0x0                       ; fixup: num: 4991, src obj: 1, src ofs: 0x21baa, dst obj: 3, dst ofs: 0x22dac
   21baf:	0f 85 74 01 00 00    	jne    talk_to_MOM_branch_43
   21bb5:	be 01 00 00 00       	mov    esi,0x1
   21bba:	ba 85 5c 00 00       	mov    edx,@obj3:mom_cpp_variable_111                               ; fixup: num: 4990, src obj: 1, src ofs: 0x21bbb, dst obj: 3, dst ofs: 0x5c85
   21bbf:	b8 05 25 00 00       	mov    eax,0x2505
   21bc4:	31 db                	xor    ebx,ebx
   21bc6:	89 35 ac 2d 02 00    	mov    DWORD PTR ds:@obj3:MOM_variable_14,esi                       ; fixup: num: 4989, src obj: 1, src ofs: 0x21bc8, dst obj: 3, dst ofs: 0x22dac
   21bcc:	e8 bf 8a 04 00       	call   play_wav
   21bd1:	ba 89 5c 00 00       	mov    edx,@obj3:mom_cpp_variable_112                               ; fixup: num: 4988, src obj: 1, src ofs: 0x21bd2, dst obj: 3, dst ofs: 0x5c89
   21bd6:	b8 09 25 00 00       	mov    eax,0x2509
   21bdb:	31 db                	xor    ebx,ebx
   21bdd:	e8 ae 8a 04 00       	call   play_wav
   21be2:	bb 02 00 00 00       	mov    ebx,0x2
   21be7:	ba 8c 5c 00 00       	mov    edx,@obj3:mom_cpp_variable_113                               ; fixup: num: 4987, src obj: 1, src ofs: 0x21be8, dst obj: 3, dst ofs: 0x5c8c
   21bec:	b8 0d 25 00 00       	mov    eax,0x250d
   21bf1:	e8 9a 8a 04 00       	call   play_wav
   21bf6:	bb 02 00 00 00       	mov    ebx,0x2
   21bfb:	ba 90 5c 00 00       	mov    edx,@obj3:mom_cpp_variable_114                               ; fixup: num: 4986, src obj: 1, src ofs: 0x21bfc, dst obj: 3, dst ofs: 0x5c90
   21c00:	b8 11 25 00 00       	mov    eax,0x2511
   21c05:	e8 86 8a 04 00       	call   play_wav
   21c0a:	bb 02 00 00 00       	mov    ebx,0x2
   21c0f:	ba 93 5c 00 00       	mov    edx,@obj3:mom_cpp_variable_115                               ; fixup: num: 4985, src obj: 1, src ofs: 0x21c10, dst obj: 3, dst ofs: 0x5c93
   21c14:	b8 15 25 00 00       	mov    eax,0x2515
   21c19:	e8 72 8a 04 00       	call   play_wav
   21c1e:	bb 02 00 00 00       	mov    ebx,0x2
   21c23:	ba 97 5c 00 00       	mov    edx,@obj3:mom_cpp_variable_116                               ; fixup: num: 5002, src obj: 1, src ofs: 0x21c24, dst obj: 3, dst ofs: 0x5c97
   21c28:	b8 19 25 00 00       	mov    eax,0x2519
   21c2d:	e8 5e 8a 04 00       	call   play_wav
   21c32:	bb 02 00 00 00       	mov    ebx,0x2
   21c37:	ba 9a 5c 00 00       	mov    edx,@obj3:mom_cpp_variable_117                               ; fixup: num: 5001, src obj: 1, src ofs: 0x21c38, dst obj: 3, dst ofs: 0x5c9a
   21c3c:	b8 1d 25 00 00       	mov    eax,0x251d
   21c41:	e8 4a 8a 04 00       	call   play_wav
   21c46:	b8 0e 01 00 00       	mov    eax,0x10e
   21c4b:	e8 50 85 00 00       	call   GetDlgFileString
   21c50:	e8 bb 92 04 00       	call   get_response
   21c55:	39 f0                	cmp    eax,esi
   21c57:	0f 85 b6 00 00 00    	jne    talk_to_MOM_branch_41
   21c5d:	bb 02 00 00 00       	mov    ebx,0x2
   21c62:	ba 9e 5c 00 00       	mov    edx,@obj3:mom_cpp_variable_118                               ; fixup: num: 5000, src obj: 1, src ofs: 0x21c63, dst obj: 3, dst ofs: 0x5c9e
   21c67:	b8 2a 25 00 00       	mov    eax,0x252a
   21c6c:	e8 1f 8a 04 00       	call   play_wav
   21c71:	b8 a2 5c 00 00       	mov    eax,@obj3:mom_cpp_variable_119                               ; fixup: num: 4999, src obj: 1, src ofs: 0x21c72, dst obj: 3, dst ofs: 0x5ca2
   21c76:	e8 15 ab 04 00       	call   check_script_flag
   21c7b:	84 c0                	test   al,al
   21c7d:	75 36                	jne    talk_to_MOM_branch_40
   21c7f:	bb 02 00 00 00       	mov    ebx,0x2
   21c84:	ba b7 5c 00 00       	mov    edx,@obj3:mom_cpp_variable_120                               ; fixup: num: 4998, src obj: 1, src ofs: 0x21c85, dst obj: 3, dst ofs: 0x5cb7
   21c89:	b8 2e 25 00 00       	mov    eax,0x252e
   21c8e:	e8 fd 89 04 00       	call   play_wav
   21c93:	ba bb 5c 00 00       	mov    edx,@obj3:mom_cpp_variable_121                               ; fixup: num: 4997, src obj: 1, src ofs: 0x21c94, dst obj: 3, dst ofs: 0x5cbb
   21c98:	b8 34 25 00 00       	mov    eax,0x2534
   21c9d:	31 db                	xor    ebx,ebx
   21c9f:	e8 ec 89 04 00       	call   play_wav
   21ca4:	bb 02 00 00 00       	mov    ebx,0x2
   21ca9:	ba be 5c 00 00       	mov    edx,@obj3:mom_cpp_variable_122                               ; fixup: num: 4996, src obj: 1, src ofs: 0x21caa, dst obj: 3, dst ofs: 0x5cbe
   21cae:	b8 38 25 00 00       	mov    eax,0x2538
   21cb3:	eb 6f                	jmp    talk_to_MOM_branch_42
talk_to_MOM_branch_40:
   21cb5:	bb 02 00 00 00       	mov    ebx,0x2
   21cba:	ba c2 5c 00 00       	mov    edx,@obj3:mom_cpp_variable_123                               ; fixup: num: 4995, src obj: 1, src ofs: 0x21cbb, dst obj: 3, dst ofs: 0x5cc2
   21cbf:	b8 43 25 00 00       	mov    eax,0x2543
   21cc4:	e8 c7 89 04 00       	call   play_wav
   21cc9:	ba c6 5c 00 00       	mov    edx,@obj3:mom_cpp_variable_124                               ; fixup: num: 4894, src obj: 1, src ofs: 0x21cca, dst obj: 3, dst ofs: 0x5cc6
   21cce:	b8 49 25 00 00       	mov    eax,0x2549
   21cd3:	31 db                	xor    ebx,ebx
   21cd5:	e8 b6 89 04 00       	call   play_wav
   21cda:	bb 02 00 00 00       	mov    ebx,0x2
   21cdf:	ba c9 5c 00 00       	mov    edx,@obj3:mom_cpp_variable_125                               ; fixup: num: 4893, src obj: 1, src ofs: 0x21ce0, dst obj: 3, dst ofs: 0x5cc9
   21ce4:	b8 4d 25 00 00       	mov    eax,0x254d
   21ce9:	e8 a2 89 04 00       	call   play_wav
   21cee:	bb 02 00 00 00       	mov    ebx,0x2
   21cf3:	ba cd 5c 00 00       	mov    edx,@obj3:mom_cpp_variable_126                               ; fixup: num: 4892, src obj: 1, src ofs: 0x21cf4, dst obj: 3, dst ofs: 0x5ccd
   21cf8:	b8 52 25 00 00       	mov    eax,0x2552
   21cfd:	e8 8e 89 04 00       	call   play_wav
   21d02:	bb 02 00 00 00       	mov    ebx,0x2
   21d07:	ba d0 5c 00 00       	mov    edx,@obj3:mom_cpp_variable_127                               ; fixup: num: 4891, src obj: 1, src ofs: 0x21d08, dst obj: 3, dst ofs: 0x5cd0
   21d0c:	b8 57 25 00 00       	mov    eax,0x2557
   21d11:	eb 11                	jmp    talk_to_MOM_branch_42
talk_to_MOM_branch_41:
   21d13:	83 f8 02             	cmp    eax,0x2
   21d16:	75 11                	jne    talk_to_MOM_branch_43
   21d18:	ba d4 5c 00 00       	mov    edx,@obj3:mom_cpp_variable_128                               ; fixup: num: 4890, src obj: 1, src ofs: 0x21d19, dst obj: 3, dst ofs: 0x5cd4
   21d1d:	89 c3                	mov    ebx,eax
   21d1f:	b8 60 25 00 00       	mov    eax,0x2560
talk_to_MOM_branch_42:
   21d24:	e8 67 89 04 00       	call   play_wav
talk_to_MOM_branch_43:
   21d29:	b8 d8 5c 00 00       	mov    eax,@obj3:mom_cpp_variable_129                               ; fixup: num: 4889, src obj: 1, src ofs: 0x21d2a, dst obj: 3, dst ofs: 0x5cd8
   21d2e:	e8 5d aa 04 00       	call   check_script_flag
   21d33:	84 c0                	test   al,al
   21d35:	0f 84 ef 00 00 00    	je     talk_to_MOM_branch_47
   21d3b:	83 3d b0 2d 02 00 00 	cmp    DWORD PTR ds:@obj3:MOM_variable_15,0x0                       ; fixup: num: 4888, src obj: 1, src ofs: 0x21d3d, dst obj: 3, dst ofs: 0x22db0
   21d42:	0f 85 e2 00 00 00    	jne    talk_to_MOM_branch_47
   21d48:	bd 01 00 00 00       	mov    ebp,0x1
   21d4d:	ba e9 5c 00 00       	mov    edx,@obj3:mom_cpp_variable_130                               ; fixup: num: 4887, src obj: 1, src ofs: 0x21d4e, dst obj: 3, dst ofs: 0x5ce9
   21d52:	b8 76 25 00 00       	mov    eax,0x2576
   21d57:	31 db                	xor    ebx,ebx
   21d59:	89 2d b0 2d 02 00    	mov    DWORD PTR ds:@obj3:MOM_variable_15,ebp                       ; fixup: num: 4886, src obj: 1, src ofs: 0x21d5b, dst obj: 3, dst ofs: 0x22db0
   21d5f:	e8 2c 89 04 00       	call   play_wav
   21d64:	b8 ed 5c 00 00       	mov    eax,@obj3:mom_cpp_variable_131                               ; fixup: num: 4885, src obj: 1, src ofs: 0x21d65, dst obj: 3, dst ofs: 0x5ced
   21d69:	e8 02 ab 04 00       	call   check_inventory
   21d6e:	84 c0                	test   al,al
   21d70:	74 0c                	je     talk_to_MOM_branch_44
   21d72:	ba f5 5c 00 00       	mov    edx,@obj3:mom_cpp_variable_132                               ; fixup: num: 4884, src obj: 1, src ofs: 0x21d73, dst obj: 3, dst ofs: 0x5cf5
   21d77:	b8 7b 25 00 00       	mov    eax,0x257b
   21d7c:	eb 0a                	jmp    talk_to_MOM_branch_45
talk_to_MOM_branch_44:
   21d7e:	ba f8 5c 00 00       	mov    edx,@obj3:mom_cpp_variable_133                               ; fixup: num: 4903, src obj: 1, src ofs: 0x21d7f, dst obj: 3, dst ofs: 0x5cf8
   21d83:	b8 80 25 00 00       	mov    eax,0x2580
talk_to_MOM_branch_45:
   21d88:	31 db                	xor    ebx,ebx
   21d8a:	e8 01 89 04 00       	call   play_wav
   21d8f:	bb 03 00 00 00       	mov    ebx,0x3
   21d94:	ba fb 5c 00 00       	mov    edx,@obj3:mom_cpp_variable_134                               ; fixup: num: 4902, src obj: 1, src ofs: 0x21d95, dst obj: 3, dst ofs: 0x5cfb
   21d99:	b8 85 25 00 00       	mov    eax,0x2585
   21d9e:	e8 ed 88 04 00       	call   play_wav
   21da3:	bb 03 00 00 00       	mov    ebx,0x3
   21da8:	ba fe 5c 00 00       	mov    edx,@obj3:mom_cpp_variable_135                               ; fixup: num: 4901, src obj: 1, src ofs: 0x21da9, dst obj: 3, dst ofs: 0x5cfe
   21dad:	b8 8b 25 00 00       	mov    eax,0x258b
   21db2:	e8 d9 88 04 00       	call   play_wav
   21db7:	e8 04 6e 00 00       	call   get_day
   21dbc:	83 f8 05             	cmp    eax,0x5
   21dbf:	7f 3c                	jg     talk_to_MOM_branch_46
   21dc1:	bb 03 00 00 00       	mov    ebx,0x3
   21dc6:	ba 02 5d 00 00       	mov    edx,@obj3:mom_cpp_variable_136                               ; fixup: num: 4900, src obj: 1, src ofs: 0x21dc7, dst obj: 3, dst ofs: 0x5d02
   21dcb:	b8 8f 25 00 00       	mov    eax,0x258f
   21dd0:	e8 bb 88 04 00       	call   play_wav
   21dd5:	bb 02 00 00 00       	mov    ebx,0x2
   21dda:	ba 06 5d 00 00       	mov    edx,@obj3:mom_cpp_variable_137                               ; fixup: num: 4899, src obj: 1, src ofs: 0x21ddb, dst obj: 3, dst ofs: 0x5d06
   21ddf:	b8 94 25 00 00       	mov    eax,0x2594
   21de4:	e8 a7 88 04 00       	call   play_wav
   21de9:	bb 01 00 00 00       	mov    ebx,0x1
   21dee:	ba 09 5d 00 00       	mov    edx,@obj3:mom_cpp_variable_138                               ; fixup: num: 4898, src obj: 1, src ofs: 0x21def, dst obj: 3, dst ofs: 0x5d09
   21df3:	b8 98 25 00 00       	mov    eax,0x2598
   21df8:	e8 93 88 04 00       	call   play_wav
talk_to_MOM_branch_46:
   21dfd:	b8 0d 5d 00 00       	mov    eax,@obj3:mom_cpp_variable_139                               ; fixup: num: 4897, src obj: 1, src ofs: 0x21dfe, dst obj: 3, dst ofs: 0x5d0d
   21e02:	e8 89 a9 04 00       	call   check_script_flag
   21e07:	84 c0                	test   al,al
   21e09:	74 1f                	je     talk_to_MOM_branch_47
   21e0b:	b8 1a 5d 00 00       	mov    eax,@obj3:mom_cpp_variable_140                               ; fixup: num: 4896, src obj: 1, src ofs: 0x21e0c, dst obj: 3, dst ofs: 0x5d1a
   21e10:	e8 2b aa 04 00       	call   npc_alive
   21e15:	84 c0                	test   al,al
   21e17:	75 11                	jne    talk_to_MOM_branch_47
   21e19:	ba 1f 5d 00 00       	mov    edx,@obj3:mom_cpp_variable_141                               ; fixup: num: 4895, src obj: 1, src ofs: 0x21e1a, dst obj: 3, dst ofs: 0x5d1f
   21e1e:	b8 a0 25 00 00       	mov    eax,0x25a0
   21e23:	31 db                	xor    ebx,ebx
   21e25:	e8 66 88 04 00       	call   play_wav
talk_to_MOM_branch_47:
   21e2a:	b8 23 5d 00 00       	mov    eax,@obj3:mom_cpp_variable_142                               ; fixup: num: 4915, src obj: 1, src ofs: 0x21e2b, dst obj: 3, dst ofs: 0x5d23
   21e2f:	e8 0c aa 04 00       	call   npc_alive
   21e34:	84 c0                	test   al,al
   21e36:	75 25                	jne    talk_to_MOM_branch_48
   21e38:	83 3d b4 2d 02 00 00 	cmp    DWORD PTR ds:@obj3:MOM_variable_16,0x0                       ; fixup: num: 4914, src obj: 1, src ofs: 0x21e3a, dst obj: 3, dst ofs: 0x22db4
   21e3f:	75 1c                	jne    talk_to_MOM_branch_48
   21e41:	ba 01 00 00 00       	mov    edx,0x1
   21e46:	b8 33 26 00 00       	mov    eax,0x2633
   21e4b:	31 db                	xor    ebx,ebx
   21e4d:	89 15 b4 2d 02 00    	mov    DWORD PTR ds:@obj3:MOM_variable_16,edx                       ; fixup: num: 4913, src obj: 1, src ofs: 0x21e4f, dst obj: 3, dst ofs: 0x22db4
   21e53:	ba 2b 5d 00 00       	mov    edx,@obj3:mom_cpp_variable_143                               ; fixup: num: 4912, src obj: 1, src ofs: 0x21e54, dst obj: 3, dst ofs: 0x5d2b
   21e58:	e8 33 88 04 00       	call   play_wav
talk_to_MOM_branch_48:
   21e5d:	b8 2f 5d 00 00       	mov    eax,@obj3:mom_cpp_variable_144                               ; fixup: num: 4911, src obj: 1, src ofs: 0x21e5e, dst obj: 3, dst ofs: 0x5d2f
   21e62:	e8 d9 a9 04 00       	call   npc_alive
   21e67:	84 c0                	test   al,al
   21e69:	75 4d                	jne    talk_to_MOM_branch_49
   21e6b:	83 3d b8 2d 02 00 00 	cmp    DWORD PTR ds:@obj3:MOM_variable_17,0x0                       ; fixup: num: 4910, src obj: 1, src ofs: 0x21e6d, dst obj: 3, dst ofs: 0x22db8
   21e72:	75 44                	jne    talk_to_MOM_branch_49
   21e74:	b9 01 00 00 00       	mov    ecx,0x1
   21e79:	bb 02 00 00 00       	mov    ebx,0x2
   21e7e:	ba 38 5d 00 00       	mov    edx,@obj3:mom_cpp_variable_145                               ; fixup: num: 4909, src obj: 1, src ofs: 0x21e7f, dst obj: 3, dst ofs: 0x5d38
   21e83:	b8 47 26 00 00       	mov    eax,0x2647
   21e88:	89 0d b8 2d 02 00    	mov    DWORD PTR ds:@obj3:MOM_variable_17,ecx                       ; fixup: num: 4908, src obj: 1, src ofs: 0x21e8a, dst obj: 3, dst ofs: 0x22db8
   21e8e:	e8 fd 87 04 00       	call   play_wav
   21e93:	ba 3c 5d 00 00       	mov    edx,@obj3:mom_cpp_variable_146                               ; fixup: num: 4907, src obj: 1, src ofs: 0x21e94, dst obj: 3, dst ofs: 0x5d3c
   21e98:	b8 4b 26 00 00       	mov    eax,0x264b
   21e9d:	31 db                	xor    ebx,ebx
   21e9f:	e8 ec 87 04 00       	call   play_wav
   21ea4:	bb 03 00 00 00       	mov    ebx,0x3
   21ea9:	ba 3f 5d 00 00       	mov    edx,@obj3:mom_cpp_variable_147                               ; fixup: num: 4906, src obj: 1, src ofs: 0x21eaa, dst obj: 3, dst ofs: 0x5d3f
   21eae:	b8 4f 26 00 00       	mov    eax,0x264f
   21eb3:	e8 d8 87 04 00       	call   play_wav
talk_to_MOM_branch_49:
   21eb8:	b8 43 5d 00 00       	mov    eax,@obj3:mom_cpp_variable_148                               ; fixup: num: 4905, src obj: 1, src ofs: 0x21eb9, dst obj: 3, dst ofs: 0x5d43
   21ebd:	e8 7e a9 04 00       	call   npc_alive
   21ec2:	84 c0                	test   al,al
   21ec4:	0f 85 ae 00 00 00    	jne    talk_to_MOM_branch_53
   21eca:	83 3d bc 2d 02 00 00 	cmp    DWORD PTR ds:@obj3:MOM_variable_18,0x0                       ; fixup: num: 4904, src obj: 1, src ofs: 0x21ecc, dst obj: 3, dst ofs: 0x22dbc
   21ed1:	0f 85 a1 00 00 00    	jne    talk_to_MOM_branch_53
   21ed7:	b8 49 5d 00 00       	mov    eax,@obj3:mom_cpp_variable_149                               ; fixup: num: 4924, src obj: 1, src ofs: 0x21ed8, dst obj: 3, dst ofs: 0x5d49
   21edc:	e8 af a8 04 00       	call   check_script_flag
   21ee1:	84 c0                	test   al,al
   21ee3:	74 36                	je     talk_to_MOM_branch_50
   21ee5:	bb 02 00 00 00       	mov    ebx,0x2
   21eea:	ba 58 5d 00 00       	mov    edx,@obj3:mom_cpp_variable_150                               ; fixup: num: 4923, src obj: 1, src ofs: 0x21eeb, dst obj: 3, dst ofs: 0x5d58
   21eef:	b8 59 26 00 00       	mov    eax,0x2659
   21ef4:	e8 97 87 04 00       	call   play_wav
   21ef9:	bb 02 00 00 00       	mov    ebx,0x2
   21efe:	ba 5c 5d 00 00       	mov    edx,@obj3:mom_cpp_variable_151                               ; fixup: num: 4922, src obj: 1, src ofs: 0x21eff, dst obj: 3, dst ofs: 0x5d5c
   21f03:	b8 5f 26 00 00       	mov    eax,0x265f
   21f08:	e8 83 87 04 00       	call   play_wav
   21f0d:	ba 5f 5d 00 00       	mov    edx,@obj3:mom_cpp_variable_152                               ; fixup: num: 4921, src obj: 1, src ofs: 0x21f0e, dst obj: 3, dst ofs: 0x5d5f
   21f12:	b8 63 26 00 00       	mov    eax,0x2663
   21f17:	31 db                	xor    ebx,ebx
   21f19:	eb 58                	jmp    talk_to_MOM_branch_52
talk_to_MOM_branch_50:
   21f1b:	ba 63 5d 00 00       	mov    edx,@obj3:mom_cpp_variable_153                               ; fixup: num: 4920, src obj: 1, src ofs: 0x21f1c, dst obj: 3, dst ofs: 0x5d63
   21f20:	b8 6c 26 00 00       	mov    eax,0x266c
   21f25:	31 db                	xor    ebx,ebx
   21f27:	e8 64 87 04 00       	call   play_wav
   21f2c:	b8 11 01 00 00       	mov    eax,0x111
   21f31:	e8 6a 82 00 00       	call   GetDlgFileString
   21f36:	e8 d5 8f 04 00       	call   get_response
   21f3b:	83 f8 01             	cmp    eax,0x1
   21f3e:	75 0e                	jne    talk_to_MOM_branch_51
   21f40:	ba 67 5d 00 00       	mov    edx,@obj3:mom_cpp_variable_154                               ; fixup: num: 4919, src obj: 1, src ofs: 0x21f41, dst obj: 3, dst ofs: 0x5d67
   21f45:	b8 77 26 00 00       	mov    eax,0x2677
   21f4a:	31 db                	xor    ebx,ebx
   21f4c:	eb 25                	jmp    talk_to_MOM_branch_52
talk_to_MOM_branch_51:
   21f4e:	83 f8 02             	cmp    eax,0x2
   21f51:	75 25                	jne    talk_to_MOM_branch_53
   21f53:	ba 6b 5d 00 00       	mov    edx,@obj3:mom_cpp_variable_155                               ; fixup: num: 4918, src obj: 1, src ofs: 0x21f54, dst obj: 3, dst ofs: 0x5d6b
   21f58:	89 c3                	mov    ebx,eax
   21f5a:	b8 7b 26 00 00       	mov    eax,0x267b
   21f5f:	e8 2c 87 04 00       	call   play_wav
   21f64:	bb 03 00 00 00       	mov    ebx,0x3
   21f69:	ba 6f 5d 00 00       	mov    edx,@obj3:mom_cpp_variable_156                               ; fixup: num: 4917, src obj: 1, src ofs: 0x21f6a, dst obj: 3, dst ofs: 0x5d6f
   21f6e:	b8 7f 26 00 00       	mov    eax,0x267f
talk_to_MOM_branch_52:
   21f73:	e8 18 87 04 00       	call   play_wav
talk_to_MOM_branch_53:
   21f78:	b8 73 5d 00 00       	mov    eax,@obj3:mom_cpp_variable_157                               ; fixup: num: 4916, src obj: 1, src ofs: 0x21f79, dst obj: 3, dst ofs: 0x5d73
   21f7d:	e8 be a8 04 00       	call   npc_alive
   21f82:	84 c0                	test   al,al
   21f84:	75 25                	jne    talk_to_MOM_branch_54
   21f86:	83 3d c0 2d 02 00 00 	cmp    DWORD PTR ds:@obj3:MOM_variable_19,0x0                       ; fixup: num: 4933, src obj: 1, src ofs: 0x21f88, dst obj: 3, dst ofs: 0x22dc0
   21f8d:	75 1c                	jne    talk_to_MOM_branch_54
   21f8f:	bd 01 00 00 00       	mov    ebp,0x1
   21f94:	ba 7e 5d 00 00       	mov    edx,@obj3:mom_cpp_variable_158                               ; fixup: num: 4932, src obj: 1, src ofs: 0x21f95, dst obj: 3, dst ofs: 0x5d7e
   21f99:	b8 89 26 00 00       	mov    eax,0x2689
   21f9e:	89 eb                	mov    ebx,ebp
   21fa0:	89 2d c0 2d 02 00    	mov    DWORD PTR ds:@obj3:MOM_variable_19,ebp                       ; fixup: num: 4931, src obj: 1, src ofs: 0x21fa2, dst obj: 3, dst ofs: 0x22dc0
   21fa6:	e8 e5 86 04 00       	call   play_wav
talk_to_MOM_branch_54:
   21fab:	b8 82 5d 00 00       	mov    eax,@obj3:mom_cpp_variable_159                               ; fixup: num: 4930, src obj: 1, src ofs: 0x21fac, dst obj: 3, dst ofs: 0x5d82
   21fb0:	e8 db a7 04 00       	call   check_script_flag
   21fb5:	84 c0                	test   al,al
   21fb7:	74 5b                	je     talk_to_MOM_branch_55
   21fb9:	b8 94 5d 00 00       	mov    eax,@obj3:mom_cpp_variable_160                               ; fixup: num: 4929, src obj: 1, src ofs: 0x21fba, dst obj: 3, dst ofs: 0x5d94
   21fbe:	e8 cd a7 04 00       	call   check_script_flag
   21fc3:	84 c0                	test   al,al
   21fc5:	75 4d                	jne    talk_to_MOM_branch_55
   21fc7:	83 3d 84 2d 02 00 00 	cmp    DWORD PTR ds:@obj3:MOM_variable_4,0x0                        ; fixup: num: 4928, src obj: 1, src ofs: 0x21fc9, dst obj: 3, dst ofs: 0x22d84
   21fce:	75 44                	jne    talk_to_MOM_branch_55
   21fd0:	ba 01 00 00 00       	mov    edx,0x1
   21fd5:	bb 03 00 00 00       	mov    ebx,0x3
   21fda:	b8 7c 21 00 00       	mov    eax,0x217c
   21fdf:	89 15 84 2d 02 00    	mov    DWORD PTR ds:@obj3:MOM_variable_4,edx                        ; fixup: num: 4927, src obj: 1, src ofs: 0x21fe1, dst obj: 3, dst ofs: 0x22d84
   21fe5:	ba a9 5d 00 00       	mov    edx,@obj3:mom_cpp_variable_161                               ; fixup: num: 4926, src obj: 1, src ofs: 0x21fe6, dst obj: 3, dst ofs: 0x5da9
   21fea:	e8 a1 86 04 00       	call   play_wav
   21fef:	ba ad 5d 00 00       	mov    edx,@obj3:mom_cpp_variable_162                               ; fixup: num: 4925, src obj: 1, src ofs: 0x21ff0, dst obj: 3, dst ofs: 0x5dad
   21ff4:	b8 80 21 00 00       	mov    eax,0x2180
   21ff9:	31 db                	xor    ebx,ebx
   21ffb:	e8 90 86 04 00       	call   play_wav
   22000:	bb 02 00 00 00       	mov    ebx,0x2
   22005:	ba b0 5d 00 00       	mov    edx,@obj3:mom_cpp_variable_163                               ; fixup: num: 5213, src obj: 1, src ofs: 0x22006, dst obj: 3, dst ofs: 0x5db0
   2200a:	b8 84 21 00 00       	mov    eax,0x2184
   2200f:	e9 02 15 00 00       	jmp    talk_to_MOM_branch_158
talk_to_MOM_branch_55:
   22014:	b8 b4 5d 00 00       	mov    eax,@obj3:mom_cpp_variable_164                               ; fixup: num: 5212, src obj: 1, src ofs: 0x22015, dst obj: 3, dst ofs: 0x5db4
   22019:	e8 72 a7 04 00       	call   check_script_flag
   2201e:	84 c0                	test   al,al
   22020:	0f 84 ad 00 00 00    	je     talk_to_MOM_branch_61
   22026:	83 3d c4 2d 02 00 00 	cmp    DWORD PTR ds:@obj3:MOM_variable_20,0x0                       ; fixup: num: 5211, src obj: 1, src ofs: 0x22028, dst obj: 3, dst ofs: 0x22dc4
   2202d:	0f 85 a0 00 00 00    	jne    talk_to_MOM_branch_61
   22033:	b9 01 00 00 00       	mov    ecx,0x1
   22038:	ba ba 5d 00 00       	mov    edx,@obj3:mom_cpp_variable_165                               ; fixup: num: 5221, src obj: 1, src ofs: 0x22039, dst obj: 3, dst ofs: 0x5dba
   2203d:	b8 8d 21 00 00       	mov    eax,0x218d
   22042:	89 cb                	mov    ebx,ecx
   22044:	89 0d c4 2d 02 00    	mov    DWORD PTR ds:@obj3:MOM_variable_20,ecx                       ; fixup: num: 5220, src obj: 1, src ofs: 0x22046, dst obj: 3, dst ofs: 0x22dc4
   2204a:	e8 41 86 04 00       	call   play_wav
   2204f:	ba be 5d 00 00       	mov    edx,@obj3:mom_cpp_variable_166                               ; fixup: num: 5219, src obj: 1, src ofs: 0x22050, dst obj: 3, dst ofs: 0x5dbe
   22054:	b8 92 21 00 00       	mov    eax,0x2192
   22059:	31 db                	xor    ebx,ebx
   2205b:	e8 30 86 04 00       	call   play_wav
   22060:	ba c1 5d 00 00       	mov    edx,@obj3:mom_cpp_variable_167                               ; fixup: num: 5218, src obj: 1, src ofs: 0x22061, dst obj: 3, dst ofs: 0x5dc1
   22065:	b8 97 21 00 00       	mov    eax,0x2197
   2206a:	89 cb                	mov    ebx,ecx
   2206c:	e8 1f 86 04 00       	call   play_wav
   22071:	b8 12 01 00 00       	mov    eax,0x112
   22076:	e8 25 81 00 00       	call   GetDlgFileString
   2207b:	e8 90 8e 04 00       	call   get_response
   22080:	39 c8                	cmp    eax,ecx
   22082:	75 0e                	jne    talk_to_MOM_branch_56
   22084:	ba c5 5d 00 00       	mov    edx,@obj3:mom_cpp_variable_168                               ; fixup: num: 5217, src obj: 1, src ofs: 0x22085, dst obj: 3, dst ofs: 0x5dc5
   22089:	b8 ce 20 00 00       	mov    eax,0x20ce
   2208e:	89 cb                	mov    ebx,ecx
   22090:	eb 11                	jmp    talk_to_MOM_branch_57
talk_to_MOM_branch_56:
   22092:	83 f8 02             	cmp    eax,0x2
   22095:	75 11                	jne    talk_to_MOM_branch_58
   22097:	ba c9 5d 00 00       	mov    edx,@obj3:mom_cpp_variable_169                               ; fixup: num: 5216, src obj: 1, src ofs: 0x22098, dst obj: 3, dst ofs: 0x5dc9
   2209c:	b8 01 22 00 00       	mov    eax,0x2201
   220a1:	31 db                	xor    ebx,ebx
talk_to_MOM_branch_57:
   220a3:	e8 e8 85 04 00       	call   play_wav
talk_to_MOM_branch_58:
   220a8:	b8 13 01 00 00       	mov    eax,0x113
   220ad:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 5215, src obj: 1, src ofs: 0x220ae, dst obj: 3, dst ofs: 0x295c0
   220b2:	e8 e9 80 00 00       	call   GetDlgFileString
   220b7:	89 c6                	mov    esi,eax
   220b9:	57                   	push   edi
talk_to_MOM_branch_59:
   220ba:	8a 06                	mov    al,BYTE PTR [esi]
   220bc:	88 07                	mov    BYTE PTR [edi],al
   220be:	3c 00                	cmp    al,0x0
   220c0:	74 10                	je     talk_to_MOM_branch_60
   220c2:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   220c5:	83 c6 02             	add    esi,0x2
   220c8:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   220cb:	83 c7 02             	add    edi,0x2
   220ce:	3c 00                	cmp    al,0x0
   220d0:	75 e8                	jne    talk_to_MOM_branch_59
talk_to_MOM_branch_60:
   220d2:	5f                   	pop    edi
talk_to_MOM_branch_61:
   220d3:	b8 cd 5d 00 00       	mov    eax,@obj3:mom_cpp_variable_170                               ; fixup: num: 5214, src obj: 1, src ofs: 0x220d4, dst obj: 3, dst ofs: 0x5dcd
   220d8:	e8 b3 a6 04 00       	call   check_script_flag
   220dd:	84 c0                	test   al,al
   220df:	74 67                	je     talk_to_MOM_branch_64
   220e1:	83 3d c8 2d 02 00 00 	cmp    DWORD PTR ds:@obj3:MOM_variable_21,0x0                       ; fixup: num: 5228, src obj: 1, src ofs: 0x220e3, dst obj: 3, dst ofs: 0x22dc8
   220e8:	75 5e                	jne    talk_to_MOM_branch_64
   220ea:	bf 01 00 00 00       	mov    edi,0x1
   220ef:	bb 03 00 00 00       	mov    ebx,0x3
   220f4:	ba d3 5d 00 00       	mov    edx,@obj3:mom_cpp_variable_171                               ; fixup: num: 5227, src obj: 1, src ofs: 0x220f5, dst obj: 3, dst ofs: 0x5dd3
   220f9:	b8 a8 22 00 00       	mov    eax,0x22a8
   220fe:	89 3d c8 2d 02 00    	mov    DWORD PTR ds:@obj3:MOM_variable_21,edi                       ; fixup: num: 5226, src obj: 1, src ofs: 0x22100, dst obj: 3, dst ofs: 0x22dc8
   22104:	e8 87 85 04 00       	call   play_wav
   22109:	bb 03 00 00 00       	mov    ebx,0x3
   2210e:	ba d7 5d 00 00       	mov    edx,@obj3:mom_cpp_variable_172                               ; fixup: num: 5225, src obj: 1, src ofs: 0x2210f, dst obj: 3, dst ofs: 0x5dd7
   22113:	b8 b1 22 00 00       	mov    eax,0x22b1
   22118:	e8 73 85 04 00       	call   play_wav
   2211d:	b8 14 01 00 00       	mov    eax,0x114
   22122:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 5224, src obj: 1, src ofs: 0x22123, dst obj: 3, dst ofs: 0x295c0
   22127:	e8 74 80 00 00       	call   GetDlgFileString
   2212c:	89 c6                	mov    esi,eax
   2212e:	57                   	push   edi
talk_to_MOM_branch_62:
   2212f:	8a 06                	mov    al,BYTE PTR [esi]
   22131:	88 07                	mov    BYTE PTR [edi],al
   22133:	3c 00                	cmp    al,0x0
   22135:	74 10                	je     talk_to_MOM_branch_63
   22137:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   2213a:	83 c6 02             	add    esi,0x2
   2213d:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   22140:	83 c7 02             	add    edi,0x2
   22143:	3c 00                	cmp    al,0x0
   22145:	75 e8                	jne    talk_to_MOM_branch_62
talk_to_MOM_branch_63:
   22147:	5f                   	pop    edi
talk_to_MOM_branch_64:
   22148:	be db 5d 00 00       	mov    esi,@obj3:mom_cpp_variable_173                               ; fixup: num: 5223, src obj: 1, src ofs: 0x22149, dst obj: 3, dst ofs: 0x5ddb
   2214d:	bf c0 94 02 00       	mov    edi,@obj3:keyword                                            ; fixup: num: 5222, src obj: 1, src ofs: 0x2214e, dst obj: 3, dst ofs: 0x294c0
   22152:	57                   	push   edi
talk_to_MOM_branch_65:
   22153:	8a 06                	mov    al,BYTE PTR [esi]
   22155:	88 07                	mov    BYTE PTR [edi],al
   22157:	3c 00                	cmp    al,0x0
   22159:	74 10                	je     talk_to_MOM_branch_66
   2215b:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   2215e:	83 c6 02             	add    esi,0x2
   22161:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   22164:	83 c7 02             	add    edi,0x2
   22167:	3c 00                	cmp    al,0x0
   22169:	75 e8                	jne    talk_to_MOM_branch_65
talk_to_MOM_branch_66:
   2216b:	5f                   	pop    edi
   2216c:	89 fd                	mov    ebp,edi
   2216e:	31 c9                	xor    ecx,ecx
talk_to_MOM_branch_67:
   22170:	b8 15 01 00 00       	mov    eax,0x115
   22175:	e8 26 80 00 00       	call   GetDlgFileString
   2217a:	89 c2                	mov    edx,eax
   2217c:	89 e8                	mov    eax,ebp
   2217e:	e8 d7 f2 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   22183:	85 c0                	test   eax,eax
   22185:	0f 84 43 13 00 00    	je     talk_to_MOM_branch_156
   2218b:	b8 c0 95 02 00       	mov    eax,@obj3:keystring                                          ; fixup: num: 5237, src obj: 1, src ofs: 0x2218c, dst obj: 3, dst ofs: 0x295c0
   22190:	e8 ab 98 04 00       	call   show_keywords
   22195:	b8 16 01 00 00       	mov    eax,0x116
   2219a:	e8 01 80 00 00       	call   GetDlgFileString
   2219f:	89 c2                	mov    edx,eax
   221a1:	89 e8                	mov    eax,ebp
   221a3:	e8 b2 f2 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   221a8:	85 c0                	test   eax,eax
   221aa:	0f 85 e0 00 00 00    	jne    talk_to_MOM_branch_70
   221b0:	ba dc 5d 00 00       	mov    edx,@obj3:mom_cpp_variable_174                               ; fixup: num: 5236, src obj: 1, src ofs: 0x221b1, dst obj: 3, dst ofs: 0x5ddc
   221b5:	b8 18 1e 00 00       	mov    eax,0x1e18
   221ba:	89 cb                	mov    ebx,ecx
   221bc:	e8 cf 84 04 00       	call   play_wav
   221c1:	bb 01 00 00 00       	mov    ebx,0x1
   221c6:	ba df 5d 00 00       	mov    edx,@obj3:mom_cpp_variable_175                               ; fixup: num: 5235, src obj: 1, src ofs: 0x221c7, dst obj: 3, dst ofs: 0x5ddf
   221cb:	b8 1d 1e 00 00       	mov    eax,0x1e1d
   221d0:	e8 bb 84 04 00       	call   play_wav
   221d5:	ba e3 5d 00 00       	mov    edx,@obj3:mom_cpp_variable_176                               ; fixup: num: 5234, src obj: 1, src ofs: 0x221d6, dst obj: 3, dst ofs: 0x5de3
   221da:	b8 21 1e 00 00       	mov    eax,0x1e21
   221df:	89 cb                	mov    ebx,ecx
   221e1:	e8 aa 84 04 00       	call   play_wav
   221e6:	ba e6 5d 00 00       	mov    edx,@obj3:mom_cpp_variable_177                               ; fixup: num: 5233, src obj: 1, src ofs: 0x221e7, dst obj: 3, dst ofs: 0x5de6
   221eb:	b8 25 1e 00 00       	mov    eax,0x1e25
   221f0:	89 cb                	mov    ebx,ecx
   221f2:	e8 99 84 04 00       	call   play_wav
   221f7:	ba ea 5d 00 00       	mov    edx,@obj3:mom_cpp_variable_178                               ; fixup: num: 5232, src obj: 1, src ofs: 0x221f8, dst obj: 3, dst ofs: 0x5dea
   221fc:	b8 29 1e 00 00       	mov    eax,0x1e29
   22201:	89 cb                	mov    ebx,ecx
   22203:	e8 88 84 04 00       	call   play_wav
   22208:	ba ed 5d 00 00       	mov    edx,@obj3:mom_cpp_variable_179                               ; fixup: num: 5231, src obj: 1, src ofs: 0x22209, dst obj: 3, dst ofs: 0x5ded
   2220d:	b8 2d 1e 00 00       	mov    eax,0x1e2d
   22212:	89 cb                	mov    ebx,ecx
   22214:	e8 77 84 04 00       	call   play_wav
   22219:	ba f1 5d 00 00       	mov    edx,@obj3:mom_cpp_variable_180                               ; fixup: num: 5230, src obj: 1, src ofs: 0x2221a, dst obj: 3, dst ofs: 0x5df1
   2221e:	b8 31 1e 00 00       	mov    eax,0x1e31
   22223:	89 cb                	mov    ebx,ecx
   22225:	e8 66 84 04 00       	call   play_wav
   2222a:	bb 01 00 00 00       	mov    ebx,0x1
   2222f:	ba f4 5d 00 00       	mov    edx,@obj3:mom_cpp_variable_181                               ; fixup: num: 5229, src obj: 1, src ofs: 0x22230, dst obj: 3, dst ofs: 0x5df4
   22234:	b8 35 1e 00 00       	mov    eax,0x1e35
   22239:	e8 52 84 04 00       	call   play_wav
   2223e:	ba f8 5d 00 00       	mov    edx,@obj3:mom_cpp_variable_182                               ; fixup: num: 5244, src obj: 1, src ofs: 0x2223f, dst obj: 3, dst ofs: 0x5df8
   22243:	b8 3a 1e 00 00       	mov    eax,0x1e3a
   22248:	89 cb                	mov    ebx,ecx
   2224a:	e8 41 84 04 00       	call   play_wav
   2224f:	ba fb 5d 00 00       	mov    edx,@obj3:mom_cpp_variable_183                               ; fixup: num: 5243, src obj: 1, src ofs: 0x22250, dst obj: 3, dst ofs: 0x5dfb
   22254:	b8 3e 1e 00 00       	mov    eax,0x1e3e
   22259:	89 cb                	mov    ebx,ecx
   2225b:	e8 30 84 04 00       	call   play_wav
   22260:	b8 18 01 00 00       	mov    eax,0x118
   22265:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 5242, src obj: 1, src ofs: 0x22266, dst obj: 3, dst ofs: 0x295c0
   2226a:	e8 31 7f 00 00       	call   GetDlgFileString
   2226f:	89 c6                	mov    esi,eax
   22271:	57                   	push   edi
talk_to_MOM_branch_68:
   22272:	8a 06                	mov    al,BYTE PTR [esi]
   22274:	88 07                	mov    BYTE PTR [edi],al
   22276:	3c 00                	cmp    al,0x0
   22278:	74 10                	je     talk_to_MOM_branch_69
   2227a:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   2227d:	83 c6 02             	add    esi,0x2
   22280:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   22283:	83 c7 02             	add    edi,0x2
   22286:	3c 00                	cmp    al,0x0
   22288:	75 e8                	jne    talk_to_MOM_branch_68
talk_to_MOM_branch_69:
   2228a:	5f                   	pop    edi
   2228b:	e9 e0 fe ff ff       	jmp    talk_to_MOM_branch_67
talk_to_MOM_branch_70:
   22290:	b8 19 01 00 00       	mov    eax,0x119
   22295:	e8 06 7f 00 00       	call   GetDlgFileString
   2229a:	89 c2                	mov    edx,eax
   2229c:	89 e8                	mov    eax,ebp
   2229e:	e8 b7 f1 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   222a3:	85 c0                	test   eax,eax
   222a5:	0f 85 88 00 00 00    	jne    talk_to_MOM_branch_73
   222ab:	ba ff 5d 00 00       	mov    edx,@obj3:mom_cpp_variable_184                               ; fixup: num: 5241, src obj: 1, src ofs: 0x222ac, dst obj: 3, dst ofs: 0x5dff
   222b0:	b8 47 1e 00 00       	mov    eax,0x1e47
   222b5:	89 cb                	mov    ebx,ecx
   222b7:	e8 d4 83 04 00       	call   play_wav
   222bc:	ba 02 5e 00 00       	mov    edx,@obj3:mom_cpp_variable_185                               ; fixup: num: 5240, src obj: 1, src ofs: 0x222bd, dst obj: 3, dst ofs: 0x5e02
   222c1:	b8 4b 1e 00 00       	mov    eax,0x1e4b
   222c6:	89 cb                	mov    ebx,ecx
   222c8:	e8 c3 83 04 00       	call   play_wav
   222cd:	ba 06 5e 00 00       	mov    edx,@obj3:mom_cpp_variable_186                               ; fixup: num: 5239, src obj: 1, src ofs: 0x222ce, dst obj: 3, dst ofs: 0x5e06
   222d2:	b8 4f 1e 00 00       	mov    eax,0x1e4f
   222d7:	89 cb                	mov    ebx,ecx
   222d9:	e8 b2 83 04 00       	call   play_wav
   222de:	ba 09 5e 00 00       	mov    edx,@obj3:mom_cpp_variable_187                               ; fixup: num: 5238, src obj: 1, src ofs: 0x222df, dst obj: 3, dst ofs: 0x5e09
   222e3:	b8 53 1e 00 00       	mov    eax,0x1e53
   222e8:	89 cb                	mov    ebx,ecx
   222ea:	e8 a1 83 04 00       	call   play_wav
   222ef:	bb 02 00 00 00       	mov    ebx,0x2
   222f4:	ba 0d 5e 00 00       	mov    edx,@obj3:mom_cpp_variable_188                               ; fixup: num: 5249, src obj: 1, src ofs: 0x222f5, dst obj: 3, dst ofs: 0x5e0d
   222f9:	b8 99 1f 00 00       	mov    eax,0x1f99
   222fe:	e8 8d 83 04 00       	call   play_wav
   22303:	b8 1a 01 00 00       	mov    eax,0x11a
   22308:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 5248, src obj: 1, src ofs: 0x22309, dst obj: 3, dst ofs: 0x295c0
   2230d:	e8 8e 7e 00 00       	call   GetDlgFileString
   22312:	89 c6                	mov    esi,eax
   22314:	57                   	push   edi
talk_to_MOM_branch_71:
   22315:	8a 06                	mov    al,BYTE PTR [esi]
   22317:	88 07                	mov    BYTE PTR [edi],al
   22319:	3c 00                	cmp    al,0x0
   2231b:	74 10                	je     talk_to_MOM_branch_72
   2231d:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   22320:	83 c6 02             	add    esi,0x2
   22323:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   22326:	83 c7 02             	add    edi,0x2
   22329:	3c 00                	cmp    al,0x0
   2232b:	75 e8                	jne    talk_to_MOM_branch_71
talk_to_MOM_branch_72:
   2232d:	5f                   	pop    edi
   2232e:	e9 3d fe ff ff       	jmp    talk_to_MOM_branch_67
talk_to_MOM_branch_73:
   22333:	b8 1d 01 00 00       	mov    eax,0x11d
   22338:	e8 63 7e 00 00       	call   GetDlgFileString
   2233d:	89 c2                	mov    edx,eax
   2233f:	89 e8                	mov    eax,ebp
   22341:	e8 14 f1 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   22346:	85 c0                	test   eax,eax
   22348:	0f 85 bc 00 00 00    	jne    talk_to_MOM_branch_76
   2234e:	bb 04 00 00 00       	mov    ebx,0x4
   22353:	ba 11 5e 00 00       	mov    edx,@obj3:mom_cpp_variable_189                               ; fixup: num: 5247, src obj: 1, src ofs: 0x22354, dst obj: 3, dst ofs: 0x5e11
   22358:	b8 7c 1e 00 00       	mov    eax,0x1e7c
   2235d:	e8 2e 83 04 00       	call   play_wav
   22362:	bb 02 00 00 00       	mov    ebx,0x2
   22367:	ba 14 5e 00 00       	mov    edx,@obj3:mom_cpp_variable_190                               ; fixup: num: 5246, src obj: 1, src ofs: 0x22368, dst obj: 3, dst ofs: 0x5e14
   2236c:	b8 80 1e 00 00       	mov    eax,0x1e80
   22371:	e8 1a 83 04 00       	call   play_wav
   22376:	e8 55 65 00 00       	call   BABY_IN_CRIB_SLEEPING
   2237b:	bb 02 00 00 00       	mov    ebx,0x2
   22380:	ba 18 5e 00 00       	mov    edx,@obj3:mom_cpp_variable_191                               ; fixup: num: 5245, src obj: 1, src ofs: 0x22381, dst obj: 3, dst ofs: 0x5e18
   22385:	b8 8e 1e 00 00       	mov    eax,0x1e8e
   2238a:	e8 01 83 04 00       	call   play_wav
   2238f:	bb 02 00 00 00       	mov    ebx,0x2
   22394:	ba 1c 5e 00 00       	mov    edx,@obj3:mom_cpp_variable_192                               ; fixup: num: 5256, src obj: 1, src ofs: 0x22395, dst obj: 3, dst ofs: 0x5e1c
   22399:	b8 94 1e 00 00       	mov    eax,0x1e94
   2239e:	e8 ed 82 04 00       	call   play_wav
   223a3:	b8 1f 5e 00 00       	mov    eax,@obj3:mom_cpp_variable_193                               ; fixup: num: 5255, src obj: 1, src ofs: 0x223a4, dst obj: 3, dst ofs: 0x5e1f
   223a8:	bb 03 00 00 00       	mov    ebx,0x3
   223ad:	ba 2b 5e 00 00       	mov    edx,@obj3:mom_cpp_variable_194                               ; fixup: num: 5254, src obj: 1, src ofs: 0x223ae, dst obj: 3, dst ofs: 0x5e2b
   223b2:	e8 c9 a7 04 00       	call   ExecuteCommand
   223b7:	b8 9d 1e 00 00       	mov    eax,0x1e9d
   223bc:	e8 cf 82 04 00       	call   play_wav
   223c1:	bb 03 00 00 00       	mov    ebx,0x3
   223c6:	ba 2f 5e 00 00       	mov    edx,@obj3:mom_cpp_variable_195                               ; fixup: num: 5253, src obj: 1, src ofs: 0x223c7, dst obj: 3, dst ofs: 0x5e2f
   223cb:	b8 a3 1e 00 00       	mov    eax,0x1ea3
   223d0:	e8 bb 82 04 00       	call   play_wav
   223d5:	e8 06 65 00 00       	call   BABY_IN_CRIB_EATING_SPIDER
   223da:	b8 20 01 00 00       	mov    eax,0x120
   223df:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 5252, src obj: 1, src ofs: 0x223e0, dst obj: 3, dst ofs: 0x295c0
   223e4:	e8 b7 7d 00 00       	call   GetDlgFileString
   223e9:	89 c6                	mov    esi,eax
   223eb:	57                   	push   edi
talk_to_MOM_branch_74:
   223ec:	8a 06                	mov    al,BYTE PTR [esi]
   223ee:	88 07                	mov    BYTE PTR [edi],al
   223f0:	3c 00                	cmp    al,0x0
   223f2:	74 10                	je     talk_to_MOM_branch_75
   223f4:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   223f7:	83 c6 02             	add    esi,0x2
   223fa:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   223fd:	83 c7 02             	add    edi,0x2
   22400:	3c 00                	cmp    al,0x0
   22402:	75 e8                	jne    talk_to_MOM_branch_74
talk_to_MOM_branch_75:
   22404:	5f                   	pop    edi
   22405:	e9 66 fd ff ff       	jmp    talk_to_MOM_branch_67
talk_to_MOM_branch_76:
   2240a:	b8 21 01 00 00       	mov    eax,0x121
   2240f:	e8 8c 7d 00 00       	call   GetDlgFileString
   22414:	89 c2                	mov    edx,eax
   22416:	89 e8                	mov    eax,ebp
   22418:	e8 3d f0 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   2241d:	85 c0                	test   eax,eax
   2241f:	0f 85 86 00 00 00    	jne    talk_to_MOM_branch_79
   22425:	ba 33 5e 00 00       	mov    edx,@obj3:mom_cpp_variable_196                               ; fixup: num: 5251, src obj: 1, src ofs: 0x22426, dst obj: 3, dst ofs: 0x5e33
   2242a:	b8 c0 1e 00 00       	mov    eax,0x1ec0
   2242f:	89 cb                	mov    ebx,ecx
   22431:	e8 5a 82 04 00       	call   play_wav
   22436:	bb 02 00 00 00       	mov    ebx,0x2
   2243b:	ba 36 5e 00 00       	mov    edx,@obj3:mom_cpp_variable_197                               ; fixup: num: 5250, src obj: 1, src ofs: 0x2243c, dst obj: 3, dst ofs: 0x5e36
   22440:	b8 c4 1e 00 00       	mov    eax,0x1ec4
   22445:	e8 46 82 04 00       	call   play_wav
   2244a:	ba 3a 5e 00 00       	mov    edx,@obj3:mom_cpp_variable_198                               ; fixup: num: 5262, src obj: 1, src ofs: 0x2244b, dst obj: 3, dst ofs: 0x5e3a
   2244f:	b8 c9 1e 00 00       	mov    eax,0x1ec9
   22454:	89 cb                	mov    ebx,ecx
   22456:	e8 35 82 04 00       	call   play_wav
   2245b:	bb 02 00 00 00       	mov    ebx,0x2
   22460:	ba 3d 5e 00 00       	mov    edx,@obj3:mom_cpp_variable_199                               ; fixup: num: 5261, src obj: 1, src ofs: 0x22461, dst obj: 3, dst ofs: 0x5e3d
   22465:	b8 cd 1e 00 00       	mov    eax,0x1ecd
   2246a:	e8 21 82 04 00       	call   play_wav
   2246f:	b8 22 01 00 00       	mov    eax,0x122
   22474:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 5260, src obj: 1, src ofs: 0x22475, dst obj: 3, dst ofs: 0x295c0
   22479:	e8 22 7d 00 00       	call   GetDlgFileString
   2247e:	89 c6                	mov    esi,eax
   22480:	ba 01 00 00 00       	mov    edx,0x1
   22485:	57                   	push   edi
talk_to_MOM_branch_77:
   22486:	8a 06                	mov    al,BYTE PTR [esi]
   22488:	88 07                	mov    BYTE PTR [edi],al
   2248a:	3c 00                	cmp    al,0x0
   2248c:	74 10                	je     talk_to_MOM_branch_78
   2248e:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   22491:	83 c6 02             	add    esi,0x2
   22494:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   22497:	83 c7 02             	add    edi,0x2
   2249a:	3c 00                	cmp    al,0x0
   2249c:	75 e8                	jne    talk_to_MOM_branch_77
talk_to_MOM_branch_78:
   2249e:	5f                   	pop    edi
   2249f:	89 c8                	mov    eax,ecx
   224a1:	e8 7a 5f 00 00       	call   IF_MOM_ASKED_YOU_TO_VISIT_WASP_WOMAN
   224a6:	e9 c5 fc ff ff       	jmp    talk_to_MOM_branch_67
talk_to_MOM_branch_79:
   224ab:	b8 23 01 00 00       	mov    eax,0x123
   224b0:	e8 eb 7c 00 00       	call   GetDlgFileString
   224b5:	89 c2                	mov    edx,eax
   224b7:	89 e8                	mov    eax,ebp
   224b9:	e8 9c ef 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   224be:	85 c0                	test   eax,eax
   224c0:	75 7a                	jne    talk_to_MOM_branch_82
   224c2:	ba 41 5e 00 00       	mov    edx,@obj3:mom_cpp_variable_200                               ; fixup: num: 5259, src obj: 1, src ofs: 0x224c3, dst obj: 3, dst ofs: 0x5e41
   224c7:	b8 d7 1e 00 00       	mov    eax,0x1ed7
   224cc:	89 cb                	mov    ebx,ecx
   224ce:	e8 bd 81 04 00       	call   play_wav
   224d3:	bb 02 00 00 00       	mov    ebx,0x2
   224d8:	ba 44 5e 00 00       	mov    edx,@obj3:mom_cpp_variable_201                               ; fixup: num: 5258, src obj: 1, src ofs: 0x224d9, dst obj: 3, dst ofs: 0x5e44
   224dd:	b8 db 1e 00 00       	mov    eax,0x1edb
   224e2:	e8 a9 81 04 00       	call   play_wav
   224e7:	ba 48 5e 00 00       	mov    edx,@obj3:mom_cpp_variable_202                               ; fixup: num: 5257, src obj: 1, src ofs: 0x224e8, dst obj: 3, dst ofs: 0x5e48
   224ec:	b8 e1 1e 00 00       	mov    eax,0x1ee1
   224f1:	89 cb                	mov    ebx,ecx
   224f3:	e8 98 81 04 00       	call   play_wav
   224f8:	bb 02 00 00 00       	mov    ebx,0x2
   224fd:	ba 4b 5e 00 00       	mov    edx,@obj3:mom_cpp_variable_203                               ; fixup: num: 5264, src obj: 1, src ofs: 0x224fe, dst obj: 3, dst ofs: 0x5e4b
   22502:	b8 e5 1e 00 00       	mov    eax,0x1ee5
   22507:	e8 84 81 04 00       	call   play_wav
   2250c:	b8 24 01 00 00       	mov    eax,0x124
   22511:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 5263, src obj: 1, src ofs: 0x22512, dst obj: 3, dst ofs: 0x295c0
   22516:	e8 85 7c 00 00       	call   GetDlgFileString
   2251b:	89 c6                	mov    esi,eax
   2251d:	57                   	push   edi
talk_to_MOM_branch_80:
   2251e:	8a 06                	mov    al,BYTE PTR [esi]
   22520:	88 07                	mov    BYTE PTR [edi],al
   22522:	3c 00                	cmp    al,0x0
   22524:	74 10                	je     talk_to_MOM_branch_81
   22526:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   22529:	83 c6 02             	add    esi,0x2
   2252c:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   2252f:	83 c7 02             	add    edi,0x2
   22532:	3c 00                	cmp    al,0x0
   22534:	75 e8                	jne    talk_to_MOM_branch_80
talk_to_MOM_branch_81:
   22536:	5f                   	pop    edi
   22537:	e9 34 fc ff ff       	jmp    talk_to_MOM_branch_67
talk_to_MOM_branch_82:
   2253c:	b8 25 01 00 00       	mov    eax,0x125
   22541:	e8 5a 7c 00 00       	call   GetDlgFileString
   22546:	89 c2                	mov    edx,eax
   22548:	89 e8                	mov    eax,ebp
   2254a:	e8 0b ef 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   2254f:	85 c0                	test   eax,eax
   22551:	74 45                	je     talk_to_MOM_branch_83
   22553:	b8 26 01 00 00       	mov    eax,0x126
   22558:	e8 43 7c 00 00       	call   GetDlgFileString
   2255d:	89 c2                	mov    edx,eax
   2255f:	89 e8                	mov    eax,ebp
   22561:	e8 f4 ee 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   22566:	85 c0                	test   eax,eax
   22568:	74 2e                	je     talk_to_MOM_branch_83
   2256a:	b8 27 01 00 00       	mov    eax,0x127
   2256f:	e8 2c 7c 00 00       	call   GetDlgFileString
   22574:	89 c2                	mov    edx,eax
   22576:	89 e8                	mov    eax,ebp
   22578:	e8 dd ee 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   2257d:	85 c0                	test   eax,eax
   2257f:	74 17                	je     talk_to_MOM_branch_83
   22581:	b8 28 01 00 00       	mov    eax,0x128
   22586:	e8 15 7c 00 00       	call   GetDlgFileString
   2258b:	89 c2                	mov    edx,eax
   2258d:	89 e8                	mov    eax,ebp
   2258f:	e8 c6 ee 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   22594:	85 c0                	test   eax,eax
   22596:	75 55                	jne    talk_to_MOM_branch_86
talk_to_MOM_branch_83:
   22598:	bb 02 00 00 00       	mov    ebx,0x2
   2259d:	ba 4f 5e 00 00       	mov    edx,@obj3:mom_cpp_variable_204                               ; fixup: num: 5271, src obj: 1, src ofs: 0x2259e, dst obj: 3, dst ofs: 0x5e4f
   225a2:	b8 ee 1e 00 00       	mov    eax,0x1eee
   225a7:	e8 e4 80 04 00       	call   play_wav
   225ac:	ba 52 5e 00 00       	mov    edx,@obj3:mom_cpp_variable_205                               ; fixup: num: 5270, src obj: 1, src ofs: 0x225ad, dst obj: 3, dst ofs: 0x5e52
   225b1:	b8 f2 1e 00 00       	mov    eax,0x1ef2
   225b6:	89 cb                	mov    ebx,ecx
   225b8:	e8 d3 80 04 00       	call   play_wav
   225bd:	b8 2a 01 00 00       	mov    eax,0x12a
   225c2:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 5269, src obj: 1, src ofs: 0x225c3, dst obj: 3, dst ofs: 0x295c0
   225c7:	e8 d4 7b 00 00       	call   GetDlgFileString
   225cc:	89 c6                	mov    esi,eax
   225ce:	57                   	push   edi
talk_to_MOM_branch_84:
   225cf:	8a 06                	mov    al,BYTE PTR [esi]
   225d1:	88 07                	mov    BYTE PTR [edi],al
   225d3:	3c 00                	cmp    al,0x0
   225d5:	74 10                	je     talk_to_MOM_branch_85
   225d7:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   225da:	83 c6 02             	add    esi,0x2
   225dd:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   225e0:	83 c7 02             	add    edi,0x2
   225e3:	3c 00                	cmp    al,0x0
   225e5:	75 e8                	jne    talk_to_MOM_branch_84
talk_to_MOM_branch_85:
   225e7:	5f                   	pop    edi
   225e8:	e9 83 fb ff ff       	jmp    talk_to_MOM_branch_67
talk_to_MOM_branch_86:
   225ed:	b8 2b 01 00 00       	mov    eax,0x12b
   225f2:	e8 a9 7b 00 00       	call   GetDlgFileString
   225f7:	89 c2                	mov    edx,eax
   225f9:	89 e8                	mov    eax,ebp
   225fb:	e8 5a ee 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   22600:	85 c0                	test   eax,eax
   22602:	0f 85 99 00 00 00    	jne    talk_to_MOM_branch_89
   22608:	ba 56 5e 00 00       	mov    edx,@obj3:mom_cpp_variable_206                               ; fixup: num: 5268, src obj: 1, src ofs: 0x22609, dst obj: 3, dst ofs: 0x5e56
   2260d:	b8 fd 1e 00 00       	mov    eax,0x1efd
   22612:	89 cb                	mov    ebx,ecx
   22614:	e8 77 80 04 00       	call   play_wav
   22619:	ba 59 5e 00 00       	mov    edx,@obj3:mom_cpp_variable_207                               ; fixup: num: 5267, src obj: 1, src ofs: 0x2261a, dst obj: 3, dst ofs: 0x5e59
   2261e:	b8 01 1f 00 00       	mov    eax,0x1f01
   22623:	89 cb                	mov    ebx,ecx
   22625:	e8 66 80 04 00       	call   play_wav
   2262a:	ba 5d 5e 00 00       	mov    edx,@obj3:mom_cpp_variable_208                               ; fixup: num: 5266, src obj: 1, src ofs: 0x2262b, dst obj: 3, dst ofs: 0x5e5d
   2262f:	b8 07 1f 00 00       	mov    eax,0x1f07
   22634:	89 cb                	mov    ebx,ecx
   22636:	e8 55 80 04 00       	call   play_wav
   2263b:	ba 60 5e 00 00       	mov    edx,@obj3:mom_cpp_variable_209                               ; fixup: num: 5265, src obj: 1, src ofs: 0x2263c, dst obj: 3, dst ofs: 0x5e60
   22640:	b8 0b 1f 00 00       	mov    eax,0x1f0b
   22645:	89 cb                	mov    ebx,ecx
   22647:	e8 44 80 04 00       	call   play_wav
   2264c:	bb 02 00 00 00       	mov    ebx,0x2
   22651:	ba 64 5e 00 00       	mov    edx,@obj3:mom_cpp_variable_210                               ; fixup: num: 5278, src obj: 1, src ofs: 0x22652, dst obj: 3, dst ofs: 0x5e64
   22656:	b8 cd 22 00 00       	mov    eax,0x22cd
   2265b:	e8 30 80 04 00       	call   play_wav
   22660:	ba 67 5e 00 00       	mov    edx,@obj3:mom_cpp_variable_211                               ; fixup: num: 5277, src obj: 1, src ofs: 0x22661, dst obj: 3, dst ofs: 0x5e67
   22665:	b8 d1 22 00 00       	mov    eax,0x22d1
   2266a:	89 cb                	mov    ebx,ecx
   2266c:	e8 1f 80 04 00       	call   play_wav
   22671:	b8 2c 01 00 00       	mov    eax,0x12c
   22676:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 5276, src obj: 1, src ofs: 0x22677, dst obj: 3, dst ofs: 0x295c0
   2267b:	e8 20 7b 00 00       	call   GetDlgFileString
   22680:	89 c6                	mov    esi,eax
   22682:	57                   	push   edi
talk_to_MOM_branch_87:
   22683:	8a 06                	mov    al,BYTE PTR [esi]
   22685:	88 07                	mov    BYTE PTR [edi],al
   22687:	3c 00                	cmp    al,0x0
   22689:	74 10                	je     talk_to_MOM_branch_88
   2268b:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   2268e:	83 c6 02             	add    esi,0x2
   22691:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   22694:	83 c7 02             	add    edi,0x2
   22697:	3c 00                	cmp    al,0x0
   22699:	75 e8                	jne    talk_to_MOM_branch_87
talk_to_MOM_branch_88:
   2269b:	5f                   	pop    edi
   2269c:	e9 cf fa ff ff       	jmp    talk_to_MOM_branch_67
talk_to_MOM_branch_89:
   226a1:	b8 2d 01 00 00       	mov    eax,0x12d
   226a6:	e8 f5 7a 00 00       	call   GetDlgFileString
   226ab:	89 c2                	mov    edx,eax
   226ad:	89 e8                	mov    eax,ebp
   226af:	e8 a6 ed 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   226b4:	85 c0                	test   eax,eax
   226b6:	0f 85 c1 00 00 00    	jne    talk_to_MOM_branch_92
   226bc:	ba 6b 5e 00 00       	mov    edx,@obj3:mom_cpp_variable_212                               ; fixup: num: 5275, src obj: 1, src ofs: 0x226bd, dst obj: 3, dst ofs: 0x5e6b
   226c1:	b8 14 1f 00 00       	mov    eax,0x1f14
   226c6:	89 cb                	mov    ebx,ecx
   226c8:	e8 c3 7f 04 00       	call   play_wav
   226cd:	ba 6e 5e 00 00       	mov    edx,@obj3:mom_cpp_variable_213                               ; fixup: num: 5274, src obj: 1, src ofs: 0x226ce, dst obj: 3, dst ofs: 0x5e6e
   226d2:	b8 18 1f 00 00       	mov    eax,0x1f18
   226d7:	89 cb                	mov    ebx,ecx
   226d9:	e8 b2 7f 04 00       	call   play_wav
   226de:	ba 72 5e 00 00       	mov    edx,@obj3:mom_cpp_variable_214                               ; fixup: num: 5273, src obj: 1, src ofs: 0x226df, dst obj: 3, dst ofs: 0x5e72
   226e3:	b8 1d 1f 00 00       	mov    eax,0x1f1d
   226e8:	89 cb                	mov    ebx,ecx
   226ea:	e8 a1 7f 04 00       	call   play_wav
   226ef:	ba 75 5e 00 00       	mov    edx,@obj3:mom_cpp_variable_215                               ; fixup: num: 5272, src obj: 1, src ofs: 0x226f0, dst obj: 3, dst ofs: 0x5e75
   226f4:	b8 21 1f 00 00       	mov    eax,0x1f21
   226f9:	89 cb                	mov    ebx,ecx
   226fb:	e8 90 7f 04 00       	call   play_wav
   22700:	ba 79 5e 00 00       	mov    edx,@obj3:mom_cpp_variable_216                               ; fixup: num: 5146, src obj: 1, src ofs: 0x22701, dst obj: 3, dst ofs: 0x5e79
   22705:	b8 28 1f 00 00       	mov    eax,0x1f28
   2270a:	89 cb                	mov    ebx,ecx
   2270c:	e8 7f 7f 04 00       	call   play_wav
   22711:	bb 02 00 00 00       	mov    ebx,0x2
   22716:	ba 7c 5e 00 00       	mov    edx,@obj3:mom_cpp_variable_217                               ; fixup: num: 5145, src obj: 1, src ofs: 0x22717, dst obj: 3, dst ofs: 0x5e7c
   2271b:	b8 2c 1f 00 00       	mov    eax,0x1f2c
   22720:	e8 6b 7f 04 00       	call   play_wav
   22725:	bb 02 00 00 00       	mov    ebx,0x2
   2272a:	ba 80 5e 00 00       	mov    edx,@obj3:mom_cpp_variable_218                               ; fixup: num: 5144, src obj: 1, src ofs: 0x2272b, dst obj: 3, dst ofs: 0x5e80
   2272f:	b8 31 1f 00 00       	mov    eax,0x1f31
   22734:	e8 57 7f 04 00       	call   play_wav
   22739:	bb 02 00 00 00       	mov    ebx,0x2
   2273e:	ba 83 5e 00 00       	mov    edx,@obj3:mom_cpp_variable_219                               ; fixup: num: 5143, src obj: 1, src ofs: 0x2273f, dst obj: 3, dst ofs: 0x5e83
   22743:	b8 35 1f 00 00       	mov    eax,0x1f35
   22748:	e8 43 7f 04 00       	call   play_wav
   2274d:	b8 2e 01 00 00       	mov    eax,0x12e
   22752:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 5142, src obj: 1, src ofs: 0x22753, dst obj: 3, dst ofs: 0x295c0
   22757:	e8 44 7a 00 00       	call   GetDlgFileString
   2275c:	89 c6                	mov    esi,eax
   2275e:	57                   	push   edi
talk_to_MOM_branch_90:
   2275f:	8a 06                	mov    al,BYTE PTR [esi]
   22761:	88 07                	mov    BYTE PTR [edi],al
   22763:	3c 00                	cmp    al,0x0
   22765:	74 10                	je     talk_to_MOM_branch_91
   22767:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   2276a:	83 c6 02             	add    esi,0x2
   2276d:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   22770:	83 c7 02             	add    edi,0x2
   22773:	3c 00                	cmp    al,0x0
   22775:	75 e8                	jne    talk_to_MOM_branch_90
talk_to_MOM_branch_91:
   22777:	5f                   	pop    edi
   22778:	e9 f3 f9 ff ff       	jmp    talk_to_MOM_branch_67
talk_to_MOM_branch_92:
   2277d:	b8 2f 01 00 00       	mov    eax,0x12f
   22782:	e8 19 7a 00 00       	call   GetDlgFileString
   22787:	89 c2                	mov    edx,eax
   22789:	89 e8                	mov    eax,ebp
   2278b:	e8 ca ec 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   22790:	85 c0                	test   eax,eax
   22792:	75 7d                	jne    talk_to_MOM_branch_95
   22794:	bb 04 00 00 00       	mov    ebx,0x4
   22799:	ba 87 5e 00 00       	mov    edx,@obj3:mom_cpp_variable_220                               ; fixup: num: 5141, src obj: 1, src ofs: 0x2279a, dst obj: 3, dst ofs: 0x5e87
   2279e:	b8 41 1f 00 00       	mov    eax,0x1f41
   227a3:	e8 e8 7e 04 00       	call   play_wav
   227a8:	bb 03 00 00 00       	mov    ebx,0x3
   227ad:	ba 8a 5e 00 00       	mov    edx,@obj3:mom_cpp_variable_221                               ; fixup: num: 5150, src obj: 1, src ofs: 0x227ae, dst obj: 3, dst ofs: 0x5e8a
   227b2:	b8 45 1f 00 00       	mov    eax,0x1f45
   227b7:	e8 d4 7e 04 00       	call   play_wav
   227bc:	ba 8e 5e 00 00       	mov    edx,@obj3:mom_cpp_variable_222                               ; fixup: num: 5149, src obj: 1, src ofs: 0x227bd, dst obj: 3, dst ofs: 0x5e8e
   227c1:	b8 4b 1f 00 00       	mov    eax,0x1f4b
   227c6:	89 cb                	mov    ebx,ecx
   227c8:	e8 c3 7e 04 00       	call   play_wav
   227cd:	bb 02 00 00 00       	mov    ebx,0x2
   227d2:	ba 91 5e 00 00       	mov    edx,@obj3:mom_cpp_variable_223                               ; fixup: num: 5148, src obj: 1, src ofs: 0x227d3, dst obj: 3, dst ofs: 0x5e91
   227d7:	b8 4f 1f 00 00       	mov    eax,0x1f4f
   227dc:	e8 af 7e 04 00       	call   play_wav
   227e1:	b8 30 01 00 00       	mov    eax,0x130
   227e6:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 5147, src obj: 1, src ofs: 0x227e7, dst obj: 3, dst ofs: 0x295c0
   227eb:	e8 b0 79 00 00       	call   GetDlgFileString
   227f0:	89 c6                	mov    esi,eax
   227f2:	57                   	push   edi
talk_to_MOM_branch_93:
   227f3:	8a 06                	mov    al,BYTE PTR [esi]
   227f5:	88 07                	mov    BYTE PTR [edi],al
   227f7:	3c 00                	cmp    al,0x0
   227f9:	74 10                	je     talk_to_MOM_branch_94
   227fb:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   227fe:	83 c6 02             	add    esi,0x2
   22801:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   22804:	83 c7 02             	add    edi,0x2
   22807:	3c 00                	cmp    al,0x0
   22809:	75 e8                	jne    talk_to_MOM_branch_93
talk_to_MOM_branch_94:
   2280b:	5f                   	pop    edi
   2280c:	e9 5f f9 ff ff       	jmp    talk_to_MOM_branch_67
talk_to_MOM_branch_95:
   22811:	b8 31 01 00 00       	mov    eax,0x131
   22816:	e8 85 79 00 00       	call   GetDlgFileString
   2281b:	89 c2                	mov    edx,eax
   2281d:	89 e8                	mov    eax,ebp
   2281f:	e8 36 ec 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   22824:	85 c0                	test   eax,eax
   22826:	74 2e                	je     talk_to_MOM_branch_96
   22828:	b8 32 01 00 00       	mov    eax,0x132
   2282d:	e8 6e 79 00 00       	call   GetDlgFileString
   22832:	89 c2                	mov    edx,eax
   22834:	89 e8                	mov    eax,ebp
   22836:	e8 1f ec 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   2283b:	85 c0                	test   eax,eax
   2283d:	74 17                	je     talk_to_MOM_branch_96
   2283f:	b8 33 01 00 00       	mov    eax,0x133
   22844:	e8 57 79 00 00       	call   GetDlgFileString
   22849:	89 c2                	mov    edx,eax
   2284b:	89 e8                	mov    eax,ebp
   2284d:	e8 08 ec 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   22852:	85 c0                	test   eax,eax
   22854:	75 74                	jne    talk_to_MOM_branch_99
talk_to_MOM_branch_96:
   22856:	ba 95 5e 00 00       	mov    edx,@obj3:mom_cpp_variable_224                               ; fixup: num: 5157, src obj: 1, src ofs: 0x22857, dst obj: 3, dst ofs: 0x5e95
   2285b:	b8 58 1f 00 00       	mov    eax,0x1f58
   22860:	89 cb                	mov    ebx,ecx
   22862:	e8 29 7e 04 00       	call   play_wav
   22867:	ba 98 5e 00 00       	mov    edx,@obj3:mom_cpp_variable_225                               ; fixup: num: 5156, src obj: 1, src ofs: 0x22868, dst obj: 3, dst ofs: 0x5e98
   2286c:	b8 5c 1f 00 00       	mov    eax,0x1f5c
   22871:	89 cb                	mov    ebx,ecx
   22873:	e8 18 7e 04 00       	call   play_wav
   22878:	ba 9c 5e 00 00       	mov    edx,@obj3:mom_cpp_variable_226                               ; fixup: num: 5155, src obj: 1, src ofs: 0x22879, dst obj: 3, dst ofs: 0x5e9c
   2287d:	b8 63 1f 00 00       	mov    eax,0x1f63
   22882:	89 cb                	mov    ebx,ecx
   22884:	e8 07 7e 04 00       	call   play_wav
   22889:	ba 9f 5e 00 00       	mov    edx,@obj3:mom_cpp_variable_227                               ; fixup: num: 5154, src obj: 1, src ofs: 0x2288a, dst obj: 3, dst ofs: 0x5e9f
   2288e:	b8 68 1f 00 00       	mov    eax,0x1f68
   22893:	89 cb                	mov    ebx,ecx
   22895:	e8 f6 7d 04 00       	call   play_wav
   2289a:	b8 34 01 00 00       	mov    eax,0x134
   2289f:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 5153, src obj: 1, src ofs: 0x228a0, dst obj: 3, dst ofs: 0x295c0
   228a4:	e8 f7 78 00 00       	call   GetDlgFileString
   228a9:	89 c6                	mov    esi,eax
   228ab:	57                   	push   edi
talk_to_MOM_branch_97:
   228ac:	8a 06                	mov    al,BYTE PTR [esi]
   228ae:	88 07                	mov    BYTE PTR [edi],al
   228b0:	3c 00                	cmp    al,0x0
   228b2:	74 10                	je     talk_to_MOM_branch_98
   228b4:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   228b7:	83 c6 02             	add    esi,0x2
   228ba:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   228bd:	83 c7 02             	add    edi,0x2
   228c0:	3c 00                	cmp    al,0x0
   228c2:	75 e8                	jne    talk_to_MOM_branch_97
talk_to_MOM_branch_98:
   228c4:	5f                   	pop    edi
   228c5:	e9 a6 f8 ff ff       	jmp    talk_to_MOM_branch_67
talk_to_MOM_branch_99:
   228ca:	b8 35 01 00 00       	mov    eax,0x135
   228cf:	e8 cc 78 00 00       	call   GetDlgFileString
   228d4:	89 c2                	mov    edx,eax
   228d6:	89 e8                	mov    eax,ebp
   228d8:	e8 7d eb 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   228dd:	85 c0                	test   eax,eax
   228df:	75 55                	jne    talk_to_MOM_branch_102
   228e1:	ba a3 5e 00 00       	mov    edx,@obj3:mom_cpp_variable_228                               ; fixup: num: 5152, src obj: 1, src ofs: 0x228e2, dst obj: 3, dst ofs: 0x5ea3
   228e6:	b8 71 1f 00 00       	mov    eax,0x1f71
   228eb:	89 cb                	mov    ebx,ecx
   228ed:	e8 9e 7d 04 00       	call   play_wav
   228f2:	bb 02 00 00 00       	mov    ebx,0x2
   228f7:	ba a6 5e 00 00       	mov    edx,@obj3:mom_cpp_variable_229                               ; fixup: num: 5151, src obj: 1, src ofs: 0x228f8, dst obj: 3, dst ofs: 0x5ea6
   228fc:	b8 75 1f 00 00       	mov    eax,0x1f75
   22901:	e8 8a 7d 04 00       	call   play_wav
   22906:	b8 36 01 00 00       	mov    eax,0x136
   2290b:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 5162, src obj: 1, src ofs: 0x2290c, dst obj: 3, dst ofs: 0x295c0
   22910:	e8 8b 78 00 00       	call   GetDlgFileString
   22915:	89 c6                	mov    esi,eax
   22917:	57                   	push   edi
talk_to_MOM_branch_100:
   22918:	8a 06                	mov    al,BYTE PTR [esi]
   2291a:	88 07                	mov    BYTE PTR [edi],al
   2291c:	3c 00                	cmp    al,0x0
   2291e:	74 10                	je     talk_to_MOM_branch_101
   22920:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   22923:	83 c6 02             	add    esi,0x2
   22926:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   22929:	83 c7 02             	add    edi,0x2
   2292c:	3c 00                	cmp    al,0x0
   2292e:	75 e8                	jne    talk_to_MOM_branch_100
talk_to_MOM_branch_101:
   22930:	5f                   	pop    edi
   22931:	e9 3a f8 ff ff       	jmp    talk_to_MOM_branch_67
talk_to_MOM_branch_102:
   22936:	b8 37 01 00 00       	mov    eax,0x137
   2293b:	e8 60 78 00 00       	call   GetDlgFileString
   22940:	89 c2                	mov    edx,eax
   22942:	89 e8                	mov    eax,ebp
   22944:	e8 11 eb 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   22949:	85 c0                	test   eax,eax
   2294b:	75 55                	jne    talk_to_MOM_branch_103
   2294d:	bb 02 00 00 00       	mov    ebx,0x2
   22952:	ba aa 5e 00 00       	mov    edx,@obj3:mom_cpp_variable_230                               ; fixup: num: 5161, src obj: 1, src ofs: 0x22953, dst obj: 3, dst ofs: 0x5eaa
   22957:	b8 7f 1f 00 00       	mov    eax,0x1f7f
   2295c:	e8 2f 7d 04 00       	call   play_wav
   22961:	bb 03 00 00 00       	mov    ebx,0x3
   22966:	ba ad 5e 00 00       	mov    edx,@obj3:mom_cpp_variable_231                               ; fixup: num: 5160, src obj: 1, src ofs: 0x22967, dst obj: 3, dst ofs: 0x5ead
   2296b:	b8 84 1f 00 00       	mov    eax,0x1f84
   22970:	e8 1b 7d 04 00       	call   play_wav
   22975:	bb 02 00 00 00       	mov    ebx,0x2
   2297a:	ba b1 5e 00 00       	mov    edx,@obj3:mom_cpp_variable_232                               ; fixup: num: 5159, src obj: 1, src ofs: 0x2297b, dst obj: 3, dst ofs: 0x5eb1
   2297f:	b8 8a 1f 00 00       	mov    eax,0x1f8a
   22984:	e8 07 7d 04 00       	call   play_wav
   22989:	bb 02 00 00 00       	mov    ebx,0x2
   2298e:	ba b4 5e 00 00       	mov    edx,@obj3:mom_cpp_variable_233                               ; fixup: num: 5158, src obj: 1, src ofs: 0x2298f, dst obj: 3, dst ofs: 0x5eb4
   22993:	b8 8e 1f 00 00       	mov    eax,0x1f8e
   22998:	e8 f3 7c 04 00       	call   play_wav
   2299d:	e9 ce f7 ff ff       	jmp    talk_to_MOM_branch_67
talk_to_MOM_branch_103:
   229a2:	b8 3a 01 00 00       	mov    eax,0x13a
   229a7:	e8 f4 77 00 00       	call   GetDlgFileString
   229ac:	89 c2                	mov    edx,eax
   229ae:	89 e8                	mov    eax,ebp
   229b0:	e8 a5 ea 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   229b5:	85 c0                	test   eax,eax
   229b7:	75 41                	jne    talk_to_MOM_branch_106
   229b9:	ba b8 5e 00 00       	mov    edx,@obj3:mom_cpp_variable_234                               ; fixup: num: 5168, src obj: 1, src ofs: 0x229ba, dst obj: 3, dst ofs: 0x5eb8
   229be:	b8 a3 1f 00 00       	mov    eax,0x1fa3
   229c3:	89 cb                	mov    ebx,ecx
   229c5:	e8 c6 7c 04 00       	call   play_wav
   229ca:	b8 3b 01 00 00       	mov    eax,0x13b
   229cf:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 5167, src obj: 1, src ofs: 0x229d0, dst obj: 3, dst ofs: 0x295c0
   229d4:	e8 c7 77 00 00       	call   GetDlgFileString
   229d9:	89 c6                	mov    esi,eax
   229db:	57                   	push   edi
talk_to_MOM_branch_104:
   229dc:	8a 06                	mov    al,BYTE PTR [esi]
   229de:	88 07                	mov    BYTE PTR [edi],al
   229e0:	3c 00                	cmp    al,0x0
   229e2:	74 10                	je     talk_to_MOM_branch_105
   229e4:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   229e7:	83 c6 02             	add    esi,0x2
   229ea:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   229ed:	83 c7 02             	add    edi,0x2
   229f0:	3c 00                	cmp    al,0x0
   229f2:	75 e8                	jne    talk_to_MOM_branch_104
talk_to_MOM_branch_105:
   229f4:	5f                   	pop    edi
   229f5:	e9 76 f7 ff ff       	jmp    talk_to_MOM_branch_67
talk_to_MOM_branch_106:
   229fa:	b8 3c 01 00 00       	mov    eax,0x13c
   229ff:	e8 9c 77 00 00       	call   GetDlgFileString
   22a04:	89 c2                	mov    edx,eax
   22a06:	89 e8                	mov    eax,ebp
   22a08:	e8 4d ea 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   22a0d:	85 c0                	test   eax,eax
   22a0f:	75 7a                	jne    talk_to_MOM_branch_109
   22a11:	bb 04 00 00 00       	mov    ebx,0x4
   22a16:	ba bc 5e 00 00       	mov    edx,@obj3:mom_cpp_variable_235                               ; fixup: num: 5166, src obj: 1, src ofs: 0x22a17, dst obj: 3, dst ofs: 0x5ebc
   22a1b:	b8 af 1f 00 00       	mov    eax,0x1faf
   22a20:	e8 6b 7c 04 00       	call   play_wav
   22a25:	ba bf 5e 00 00       	mov    edx,@obj3:mom_cpp_variable_236                               ; fixup: num: 5165, src obj: 1, src ofs: 0x22a26, dst obj: 3, dst ofs: 0x5ebf
   22a2a:	b8 b4 1f 00 00       	mov    eax,0x1fb4
   22a2f:	89 cb                	mov    ebx,ecx
   22a31:	e8 5a 7c 04 00       	call   play_wav
   22a36:	bb 02 00 00 00       	mov    ebx,0x2
   22a3b:	ba c3 5e 00 00       	mov    edx,@obj3:mom_cpp_variable_237                               ; fixup: num: 5164, src obj: 1, src ofs: 0x22a3c, dst obj: 3, dst ofs: 0x5ec3
   22a40:	b8 b9 1f 00 00       	mov    eax,0x1fb9
   22a45:	e8 46 7c 04 00       	call   play_wav
   22a4a:	ba c6 5e 00 00       	mov    edx,@obj3:mom_cpp_variable_238                               ; fixup: num: 5163, src obj: 1, src ofs: 0x22a4b, dst obj: 3, dst ofs: 0x5ec6
   22a4f:	b8 bd 1f 00 00       	mov    eax,0x1fbd
   22a54:	89 cb                	mov    ebx,ecx
   22a56:	e8 35 7c 04 00       	call   play_wav
   22a5b:	b8 3e 01 00 00       	mov    eax,0x13e
   22a60:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 5174, src obj: 1, src ofs: 0x22a61, dst obj: 3, dst ofs: 0x295c0
   22a65:	e8 36 77 00 00       	call   GetDlgFileString
   22a6a:	89 c6                	mov    esi,eax
   22a6c:	57                   	push   edi
talk_to_MOM_branch_107:
   22a6d:	8a 06                	mov    al,BYTE PTR [esi]
   22a6f:	88 07                	mov    BYTE PTR [edi],al
   22a71:	3c 00                	cmp    al,0x0
   22a73:	74 10                	je     talk_to_MOM_branch_108
   22a75:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   22a78:	83 c6 02             	add    esi,0x2
   22a7b:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   22a7e:	83 c7 02             	add    edi,0x2
   22a81:	3c 00                	cmp    al,0x0
   22a83:	75 e8                	jne    talk_to_MOM_branch_107
talk_to_MOM_branch_108:
   22a85:	5f                   	pop    edi
   22a86:	e9 e5 f6 ff ff       	jmp    talk_to_MOM_branch_67
talk_to_MOM_branch_109:
   22a8b:	b8 3f 01 00 00       	mov    eax,0x13f
   22a90:	e8 0b 77 00 00       	call   GetDlgFileString
   22a95:	89 c2                	mov    edx,eax
   22a97:	89 e8                	mov    eax,ebp
   22a99:	e8 bc e9 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   22a9e:	85 c0                	test   eax,eax
   22aa0:	0f 85 8e 00 00 00    	jne    talk_to_MOM_branch_113
   22aa6:	ba 01 00 00 00       	mov    edx,0x1
   22aab:	89 c8                	mov    eax,ecx
   22aad:	e8 fe 58 00 00       	call   SPOKE_TO_MOM_ABOUT_DAD
   22ab2:	89 cb                	mov    ebx,ecx
   22ab4:	ba ca 5e 00 00       	mov    edx,@obj3:mom_cpp_variable_239                               ; fixup: num: 5173, src obj: 1, src ofs: 0x22ab5, dst obj: 3, dst ofs: 0x5eca
   22ab9:	b8 c8 1f 00 00       	mov    eax,0x1fc8
   22abe:	e8 cd 7b 04 00       	call   play_wav
   22ac3:	ba cd 5e 00 00       	mov    edx,@obj3:mom_cpp_variable_240                               ; fixup: num: 5172, src obj: 1, src ofs: 0x22ac4, dst obj: 3, dst ofs: 0x5ecd
   22ac8:	b8 cc 1f 00 00       	mov    eax,0x1fcc
   22acd:	89 cb                	mov    ebx,ecx
   22acf:	e8 bc 7b 04 00       	call   play_wav
   22ad4:	b8 d1 5e 00 00       	mov    eax,@obj3:mom_cpp_variable_241                               ; fixup: num: 5171, src obj: 1, src ofs: 0x22ad5, dst obj: 3, dst ofs: 0x5ed1
   22ad9:	e8 b2 9c 04 00       	call   check_script_flag
   22ade:	84 c0                	test   al,al
   22ae0:	74 22                	je     talk_to_MOM_branch_110
   22ae2:	ba e0 5e 00 00       	mov    edx,@obj3:mom_cpp_variable_242                               ; fixup: num: 5170, src obj: 1, src ofs: 0x22ae3, dst obj: 3, dst ofs: 0x5ee0
   22ae7:	b8 d3 1f 00 00       	mov    eax,0x1fd3
   22aec:	89 cb                	mov    ebx,ecx
   22aee:	e8 9d 7b 04 00       	call   play_wav
   22af3:	ba e3 5e 00 00       	mov    edx,@obj3:mom_cpp_variable_243                               ; fixup: num: 5169, src obj: 1, src ofs: 0x22af4, dst obj: 3, dst ofs: 0x5ee3
   22af8:	b8 d8 1f 00 00       	mov    eax,0x1fd8
   22afd:	89 cb                	mov    ebx,ecx
   22aff:	e8 8c 7b 04 00       	call   play_wav
talk_to_MOM_branch_110:
   22b04:	b8 40 01 00 00       	mov    eax,0x140
   22b09:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 5180, src obj: 1, src ofs: 0x22b0a, dst obj: 3, dst ofs: 0x295c0
   22b0e:	e8 8d 76 00 00       	call   GetDlgFileString
   22b13:	89 c6                	mov    esi,eax
   22b15:	57                   	push   edi
talk_to_MOM_branch_111:
   22b16:	8a 06                	mov    al,BYTE PTR [esi]
   22b18:	88 07                	mov    BYTE PTR [edi],al
   22b1a:	3c 00                	cmp    al,0x0
   22b1c:	74 10                	je     talk_to_MOM_branch_112
   22b1e:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   22b21:	83 c6 02             	add    esi,0x2
   22b24:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   22b27:	83 c7 02             	add    edi,0x2
   22b2a:	3c 00                	cmp    al,0x0
   22b2c:	75 e8                	jne    talk_to_MOM_branch_111
talk_to_MOM_branch_112:
   22b2e:	5f                   	pop    edi
   22b2f:	e9 3c f6 ff ff       	jmp    talk_to_MOM_branch_67
talk_to_MOM_branch_113:
   22b34:	b8 41 01 00 00       	mov    eax,0x141
   22b39:	e8 62 76 00 00       	call   GetDlgFileString
   22b3e:	89 c2                	mov    edx,eax
   22b40:	89 e8                	mov    eax,ebp
   22b42:	e8 13 e9 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   22b47:	85 c0                	test   eax,eax
   22b49:	0f 85 19 01 00 00    	jne    talk_to_MOM_branch_120
   22b4f:	b8 e7 5e 00 00       	mov    eax,@obj3:mom_cpp_variable_244                               ; fixup: num: 5179, src obj: 1, src ofs: 0x22b50, dst obj: 3, dst ofs: 0x5ee7
   22b54:	e8 37 9c 04 00       	call   check_script_flag
   22b59:	84 c0                	test   al,al
   22b5b:	0f 85 e0 00 00 00    	jne    talk_to_MOM_branch_119
   22b61:	ba 01 00 00 00       	mov    edx,0x1
   22b66:	89 c8                	mov    eax,ecx
   22b68:	e8 53 59 00 00       	call   ANYONE_ELSE_HAS_SPOKEN_TO_PC_ABOUT_LODGE
   22b6d:	89 cb                	mov    ebx,ecx
   22b6f:	ba fc 5e 00 00       	mov    edx,@obj3:mom_cpp_variable_245                               ; fixup: num: 5178, src obj: 1, src ofs: 0x22b70, dst obj: 3, dst ofs: 0x5efc
   22b74:	b8 e1 1f 00 00       	mov    eax,0x1fe1
   22b79:	e8 12 7b 04 00       	call   play_wav
   22b7e:	bb 01 00 00 00       	mov    ebx,0x1
   22b83:	ba ff 5e 00 00       	mov    edx,@obj3:mom_cpp_variable_246                               ; fixup: num: 5177, src obj: 1, src ofs: 0x22b84, dst obj: 3, dst ofs: 0x5eff
   22b88:	b8 e5 1f 00 00       	mov    eax,0x1fe5
   22b8d:	e8 fe 7a 04 00       	call   play_wav
   22b92:	ba 03 5f 00 00       	mov    edx,@obj3:mom_cpp_variable_247                               ; fixup: num: 5176, src obj: 1, src ofs: 0x22b93, dst obj: 3, dst ofs: 0x5f03
   22b97:	b8 eb 1f 00 00       	mov    eax,0x1feb
   22b9c:	89 cb                	mov    ebx,ecx
   22b9e:	e8 ed 7a 04 00       	call   play_wav
   22ba3:	bb 01 00 00 00       	mov    ebx,0x1
   22ba8:	ba 06 5f 00 00       	mov    edx,@obj3:mom_cpp_variable_248                               ; fixup: num: 5175, src obj: 1, src ofs: 0x22ba9, dst obj: 3, dst ofs: 0x5f06
   22bad:	b8 ef 1f 00 00       	mov    eax,0x1fef
   22bb2:	e8 d9 7a 04 00       	call   play_wav
   22bb7:	b8 42 01 00 00       	mov    eax,0x142
   22bbc:	e8 df 75 00 00       	call   GetDlgFileString
   22bc1:	e8 4a 83 04 00       	call   get_response
   22bc6:	83 f8 01             	cmp    eax,0x1
   22bc9:	75 0e                	jne    talk_to_MOM_branch_114
   22bcb:	ba 0a 5f 00 00       	mov    edx,@obj3:mom_cpp_variable_249                               ; fixup: num: 5187, src obj: 1, src ofs: 0x22bcc, dst obj: 3, dst ofs: 0x5f0a
   22bd0:	89 c3                	mov    ebx,eax
   22bd2:	b8 fe 1f 00 00       	mov    eax,0x1ffe
   22bd7:	eb 33                	jmp    talk_to_MOM_branch_115
talk_to_MOM_branch_114:
   22bd9:	83 f8 02             	cmp    eax,0x2
   22bdc:	75 33                	jne    talk_to_MOM_branch_116
   22bde:	ba 0e 5f 00 00       	mov    edx,@obj3:mom_cpp_variable_250                               ; fixup: num: 5186, src obj: 1, src ofs: 0x22bdf, dst obj: 3, dst ofs: 0x5f0e
   22be3:	89 c3                	mov    ebx,eax
   22be5:	b8 05 20 00 00       	mov    eax,0x2005
   22bea:	e8 a1 7a 04 00       	call   play_wav
   22bef:	ba 12 5f 00 00       	mov    edx,@obj3:mom_cpp_variable_251                               ; fixup: num: 5185, src obj: 1, src ofs: 0x22bf0, dst obj: 3, dst ofs: 0x5f12
   22bf4:	b8 0a 20 00 00       	mov    eax,0x200a
   22bf9:	89 cb                	mov    ebx,ecx
   22bfb:	e8 90 7a 04 00       	call   play_wav
   22c00:	ba 15 5f 00 00       	mov    edx,@obj3:mom_cpp_variable_252                               ; fixup: num: 5184, src obj: 1, src ofs: 0x22c01, dst obj: 3, dst ofs: 0x5f15
   22c05:	b8 0e 20 00 00       	mov    eax,0x200e
   22c0a:	89 cb                	mov    ebx,ecx
talk_to_MOM_branch_115:
   22c0c:	e8 7f 7a 04 00       	call   play_wav
talk_to_MOM_branch_116:
   22c11:	b8 44 01 00 00       	mov    eax,0x144
   22c16:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 5183, src obj: 1, src ofs: 0x22c17, dst obj: 3, dst ofs: 0x295c0
   22c1b:	e8 80 75 00 00       	call   GetDlgFileString
   22c20:	89 c6                	mov    esi,eax
   22c22:	57                   	push   edi
talk_to_MOM_branch_117:
   22c23:	8a 06                	mov    al,BYTE PTR [esi]
   22c25:	88 07                	mov    BYTE PTR [edi],al
   22c27:	3c 00                	cmp    al,0x0
   22c29:	74 10                	je     talk_to_MOM_branch_118
   22c2b:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   22c2e:	83 c6 02             	add    esi,0x2
   22c31:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   22c34:	83 c7 02             	add    edi,0x2
   22c37:	3c 00                	cmp    al,0x0
   22c39:	75 e8                	jne    talk_to_MOM_branch_117
talk_to_MOM_branch_118:
   22c3b:	5f                   	pop    edi
   22c3c:	e9 2f f5 ff ff       	jmp    talk_to_MOM_branch_67
talk_to_MOM_branch_119:
   22c41:	ba 19 5f 00 00       	mov    edx,@obj3:mom_cpp_variable_253                               ; fixup: num: 5182, src obj: 1, src ofs: 0x22c42, dst obj: 3, dst ofs: 0x5f19
   22c46:	b8 54 21 00 00       	mov    eax,0x2154
   22c4b:	89 cb                	mov    ebx,ecx
   22c4d:	e8 3e 7a 04 00       	call   play_wav
   22c52:	ba 1c 5f 00 00       	mov    edx,@obj3:mom_cpp_variable_254                               ; fixup: num: 5181, src obj: 1, src ofs: 0x22c53, dst obj: 3, dst ofs: 0x5f1c
   22c57:	b8 5a 21 00 00       	mov    eax,0x215a
   22c5c:	89 cb                	mov    ebx,ecx
   22c5e:	e8 2d 7a 04 00       	call   play_wav
   22c63:	e9 08 f5 ff ff       	jmp    talk_to_MOM_branch_67
talk_to_MOM_branch_120:
   22c68:	b8 45 01 00 00       	mov    eax,0x145
   22c6d:	e8 2e 75 00 00       	call   GetDlgFileString
   22c72:	89 c2                	mov    edx,eax
   22c74:	89 e8                	mov    eax,ebp
   22c76:	e8 df e7 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   22c7b:	85 c0                	test   eax,eax
   22c7d:	74 32                	je     talk_to_MOM_branch_121
   22c7f:	b8 46 01 00 00       	mov    eax,0x146
   22c84:	e8 17 75 00 00       	call   GetDlgFileString
   22c89:	89 c2                	mov    edx,eax
   22c8b:	89 e8                	mov    eax,ebp
   22c8d:	e8 c8 e7 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   22c92:	85 c0                	test   eax,eax
   22c94:	74 1b                	je     talk_to_MOM_branch_121
   22c96:	b8 47 01 00 00       	mov    eax,0x147
   22c9b:	e8 00 75 00 00       	call   GetDlgFileString
   22ca0:	89 c2                	mov    edx,eax
   22ca2:	89 e8                	mov    eax,ebp
   22ca4:	e8 b1 e7 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   22ca9:	85 c0                	test   eax,eax
   22cab:	0f 85 e0 00 00 00    	jne    talk_to_MOM_branch_124
talk_to_MOM_branch_121:
   22cb1:	ba 20 5f 00 00       	mov    edx,@obj3:mom_cpp_variable_255                               ; fixup: num: 5193, src obj: 1, src ofs: 0x22cb2, dst obj: 3, dst ofs: 0x5f20
   22cb6:	b8 17 20 00 00       	mov    eax,0x2017
   22cbb:	89 cb                	mov    ebx,ecx
   22cbd:	e8 ce 79 04 00       	call   play_wav
   22cc2:	bb 01 00 00 00       	mov    ebx,0x1
   22cc7:	ba 23 5f 00 00       	mov    edx,@obj3:mom_cpp_variable_256                               ; fixup: num: 5192, src obj: 1, src ofs: 0x22cc8, dst obj: 3, dst ofs: 0x5f23
   22ccc:	b8 1b 20 00 00       	mov    eax,0x201b
   22cd1:	e8 ba 79 04 00       	call   play_wav
   22cd6:	ba 27 5f 00 00       	mov    edx,@obj3:mom_cpp_variable_257                               ; fixup: num: 5191, src obj: 1, src ofs: 0x22cd7, dst obj: 3, dst ofs: 0x5f27
   22cdb:	b8 20 20 00 00       	mov    eax,0x2020
   22ce0:	89 cb                	mov    ebx,ecx
   22ce2:	e8 a9 79 04 00       	call   play_wav
   22ce7:	ba 2a 5f 00 00       	mov    edx,@obj3:mom_cpp_variable_258                               ; fixup: num: 5190, src obj: 1, src ofs: 0x22ce8, dst obj: 3, dst ofs: 0x5f2a
   22cec:	b8 24 20 00 00       	mov    eax,0x2024
   22cf1:	89 cb                	mov    ebx,ecx
   22cf3:	e8 98 79 04 00       	call   play_wav
   22cf8:	ba 2e 5f 00 00       	mov    edx,@obj3:mom_cpp_variable_259                               ; fixup: num: 5189, src obj: 1, src ofs: 0x22cf9, dst obj: 3, dst ofs: 0x5f2e
   22cfd:	b8 29 20 00 00       	mov    eax,0x2029
   22d02:	89 cb                	mov    ebx,ecx
   22d04:	e8 87 79 04 00       	call   play_wav
   22d09:	ba 31 5f 00 00       	mov    edx,@obj3:mom_cpp_variable_260                               ; fixup: num: 5188, src obj: 1, src ofs: 0x22d0a, dst obj: 3, dst ofs: 0x5f31
   22d0e:	b8 2d 20 00 00       	mov    eax,0x202d
   22d13:	89 cb                	mov    ebx,ecx
   22d15:	e8 76 79 04 00       	call   play_wav
   22d1a:	ba 35 5f 00 00       	mov    edx,@obj3:mom_cpp_variable_261                               ; fixup: num: 5200, src obj: 1, src ofs: 0x22d1b, dst obj: 3, dst ofs: 0x5f35
   22d1f:	b8 64 21 00 00       	mov    eax,0x2164
   22d24:	89 cb                	mov    ebx,ecx
   22d26:	e8 65 79 04 00       	call   play_wav
   22d2b:	bb 01 00 00 00       	mov    ebx,0x1
   22d30:	ba 38 5f 00 00       	mov    edx,@obj3:mom_cpp_variable_262                               ; fixup: num: 5199, src obj: 1, src ofs: 0x22d31, dst obj: 3, dst ofs: 0x5f38
   22d35:	b8 68 21 00 00       	mov    eax,0x2168
   22d3a:	e8 51 79 04 00       	call   play_wav
   22d3f:	ba 3c 5f 00 00       	mov    edx,@obj3:mom_cpp_variable_263                               ; fixup: num: 5198, src obj: 1, src ofs: 0x22d40, dst obj: 3, dst ofs: 0x5f3c
   22d44:	b8 6d 21 00 00       	mov    eax,0x216d
   22d49:	89 cb                	mov    ebx,ecx
   22d4b:	e8 40 79 04 00       	call   play_wav
   22d50:	ba 3f 5f 00 00       	mov    edx,@obj3:mom_cpp_variable_264                               ; fixup: num: 5197, src obj: 1, src ofs: 0x22d51, dst obj: 3, dst ofs: 0x5f3f
   22d55:	b8 71 21 00 00       	mov    eax,0x2171
   22d5a:	89 cb                	mov    ebx,ecx
   22d5c:	e8 2f 79 04 00       	call   play_wav
   22d61:	b8 48 01 00 00       	mov    eax,0x148
   22d66:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 5196, src obj: 1, src ofs: 0x22d67, dst obj: 3, dst ofs: 0x295c0
   22d6b:	e8 30 74 00 00       	call   GetDlgFileString
   22d70:	89 c6                	mov    esi,eax
   22d72:	57                   	push   edi
talk_to_MOM_branch_122:
   22d73:	8a 06                	mov    al,BYTE PTR [esi]
   22d75:	88 07                	mov    BYTE PTR [edi],al
   22d77:	3c 00                	cmp    al,0x0
   22d79:	74 10                	je     talk_to_MOM_branch_123
   22d7b:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   22d7e:	83 c6 02             	add    esi,0x2
   22d81:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   22d84:	83 c7 02             	add    edi,0x2
   22d87:	3c 00                	cmp    al,0x0
   22d89:	75 e8                	jne    talk_to_MOM_branch_122
talk_to_MOM_branch_123:
   22d8b:	5f                   	pop    edi
   22d8c:	e9 df f3 ff ff       	jmp    talk_to_MOM_branch_67
talk_to_MOM_branch_124:
   22d91:	b8 4a 01 00 00       	mov    eax,0x14a
   22d96:	e8 05 74 00 00       	call   GetDlgFileString
   22d9b:	89 c2                	mov    edx,eax
   22d9d:	89 e8                	mov    eax,ebp
   22d9f:	e8 b6 e6 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   22da4:	85 c0                	test   eax,eax
   22da6:	75 3b                	jne    talk_to_MOM_branch_125
   22da8:	ba 43 5f 00 00       	mov    edx,@obj3:mom_cpp_variable_265                               ; fixup: num: 5195, src obj: 1, src ofs: 0x22da9, dst obj: 3, dst ofs: 0x5f43
   22dad:	b8 36 20 00 00       	mov    eax,0x2036
   22db2:	89 cb                	mov    ebx,ecx
   22db4:	e8 d7 78 04 00       	call   play_wav
   22db9:	ba 47 5f 00 00       	mov    edx,@obj3:mom_cpp_variable_266                               ; fixup: num: 5194, src obj: 1, src ofs: 0x22dba, dst obj: 3, dst ofs: 0x5f47
   22dbe:	b8 3a 20 00 00       	mov    eax,0x203a
   22dc3:	89 cb                	mov    ebx,ecx
   22dc5:	e8 c6 78 04 00       	call   play_wav
   22dca:	bb 02 00 00 00       	mov    ebx,0x2
   22dcf:	ba 4a 5f 00 00       	mov    edx,@obj3:mom_cpp_variable_267                               ; fixup: num: 5205, src obj: 1, src ofs: 0x22dd0, dst obj: 3, dst ofs: 0x5f4a
   22dd4:	b8 3e 20 00 00       	mov    eax,0x203e
   22dd9:	e8 b2 78 04 00       	call   play_wav
   22dde:	e9 8d f3 ff ff       	jmp    talk_to_MOM_branch_67
talk_to_MOM_branch_125:
   22de3:	b8 4b 01 00 00       	mov    eax,0x14b
   22de8:	e8 b3 73 00 00       	call   GetDlgFileString
   22ded:	89 c2                	mov    edx,eax
   22def:	89 e8                	mov    eax,ebp
   22df1:	e8 64 e6 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   22df6:	85 c0                	test   eax,eax
   22df8:	74 1b                	je     talk_to_MOM_branch_126
   22dfa:	b8 4c 01 00 00       	mov    eax,0x14c
   22dff:	e8 9c 73 00 00       	call   GetDlgFileString
   22e04:	89 c2                	mov    edx,eax
   22e06:	89 e8                	mov    eax,ebp
   22e08:	e8 4d e6 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   22e0d:	85 c0                	test   eax,eax
   22e0f:	0f 85 b7 01 00 00    	jne    talk_to_MOM_branch_136
talk_to_MOM_branch_126:
   22e15:	b8 4e 5f 00 00       	mov    eax,@obj3:mom_cpp_variable_268                               ; fixup: num: 5204, src obj: 1, src ofs: 0x22e16, dst obj: 3, dst ofs: 0x5f4e
   22e1a:	e8 71 99 04 00       	call   check_script_flag
   22e1f:	84 c0                	test   al,al
   22e21:	0f 84 a5 01 00 00    	je     talk_to_MOM_branch_136
   22e27:	ba 63 5f 00 00       	mov    edx,@obj3:mom_cpp_variable_269                               ; fixup: num: 5203, src obj: 1, src ofs: 0x22e28, dst obj: 3, dst ofs: 0x5f63
   22e2c:	b8 86 20 00 00       	mov    eax,0x2086
   22e31:	89 cb                	mov    ebx,ecx
   22e33:	e8 58 78 04 00       	call   play_wav
   22e38:	b8 4d 01 00 00       	mov    eax,0x14d
   22e3d:	e8 5e 73 00 00       	call   GetDlgFileString
   22e42:	e8 c9 80 04 00       	call   get_response
   22e47:	83 f8 01             	cmp    eax,0x1
   22e4a:	75 0c                	jne    talk_to_MOM_branch_127
   22e4c:	ba 67 5f 00 00       	mov    edx,@obj3:mom_cpp_variable_270                               ; fixup: num: 5202, src obj: 1, src ofs: 0x22e4d, dst obj: 3, dst ofs: 0x5f67
   22e51:	b8 93 20 00 00       	mov    eax,0x2093
   22e56:	eb 0f                	jmp    talk_to_MOM_branch_128
talk_to_MOM_branch_127:
   22e58:	83 f8 02             	cmp    eax,0x2
   22e5b:	75 11                	jne    talk_to_MOM_branch_129
   22e5d:	ba 6b 5f 00 00       	mov    edx,@obj3:mom_cpp_variable_271                               ; fixup: num: 5201, src obj: 1, src ofs: 0x22e5e, dst obj: 3, dst ofs: 0x5f6b
   22e62:	b8 97 20 00 00       	mov    eax,0x2097
talk_to_MOM_branch_128:
   22e67:	89 cb                	mov    ebx,ecx
   22e69:	e8 22 78 04 00       	call   play_wav
talk_to_MOM_branch_129:
   22e6e:	bb 01 00 00 00       	mov    ebx,0x1
   22e73:	ba 6f 5f 00 00       	mov    edx,@obj3:mom_cpp_variable_272                               ; fixup: num: 5132, src obj: 1, src ofs: 0x22e74, dst obj: 3, dst ofs: 0x5f6f
   22e78:	b8 9c 20 00 00       	mov    eax,0x209c
   22e7d:	e8 0e 78 04 00       	call   play_wav
   22e82:	b8 4e 01 00 00       	mov    eax,0x14e
   22e87:	e8 14 73 00 00       	call   GetDlgFileString
   22e8c:	e8 7f 80 04 00       	call   get_response
   22e91:	83 f8 01             	cmp    eax,0x1
   22e94:	0f 85 9f 00 00 00    	jne    talk_to_MOM_branch_131
   22e9a:	ba 73 5f 00 00       	mov    edx,@obj3:mom_cpp_variable_273                               ; fixup: num: 5131, src obj: 1, src ofs: 0x22e9b, dst obj: 3, dst ofs: 0x5f73
   22e9f:	89 c3                	mov    ebx,eax
   22ea1:	b8 a6 20 00 00       	mov    eax,0x20a6
   22ea6:	e8 e5 77 04 00       	call   play_wav
   22eab:	bb 03 00 00 00       	mov    ebx,0x3
   22eb0:	ba 77 5f 00 00       	mov    edx,@obj3:mom_cpp_variable_274                               ; fixup: num: 5210, src obj: 1, src ofs: 0x22eb1, dst obj: 3, dst ofs: 0x5f77
   22eb5:	b8 ab 20 00 00       	mov    eax,0x20ab
   22eba:	e8 d1 77 04 00       	call   play_wav
   22ebf:	bb 02 00 00 00       	mov    ebx,0x2
   22ec4:	ba 7a 5f 00 00       	mov    edx,@obj3:mom_cpp_variable_275                               ; fixup: num: 5209, src obj: 1, src ofs: 0x22ec5, dst obj: 3, dst ofs: 0x5f7a
   22ec9:	b8 b0 20 00 00       	mov    eax,0x20b0
   22ece:	e8 bd 77 04 00       	call   play_wav
   22ed3:	b8 4f 01 00 00       	mov    eax,0x14f
   22ed8:	e8 c3 72 00 00       	call   GetDlgFileString
   22edd:	e8 2e 80 04 00       	call   get_response
   22ee2:	83 f8 01             	cmp    eax,0x1
   22ee5:	75 3c                	jne    talk_to_MOM_branch_130
   22ee7:	bb 02 00 00 00       	mov    ebx,0x2
   22eec:	ba 7e 5f 00 00       	mov    edx,@obj3:mom_cpp_variable_276                               ; fixup: num: 5208, src obj: 1, src ofs: 0x22eed, dst obj: 3, dst ofs: 0x5f7e
   22ef1:	b8 bb 20 00 00       	mov    eax,0x20bb
   22ef6:	e8 95 77 04 00       	call   play_wav
   22efb:	bb 02 00 00 00       	mov    ebx,0x2
   22f00:	ba 82 5f 00 00       	mov    edx,@obj3:mom_cpp_variable_277                               ; fixup: num: 5207, src obj: 1, src ofs: 0x22f01, dst obj: 3, dst ofs: 0x5f82
   22f05:	b8 bf 20 00 00       	mov    eax,0x20bf
   22f0a:	e8 81 77 04 00       	call   play_wav
   22f0f:	bb 01 00 00 00       	mov    ebx,0x1
   22f14:	ba 85 5f 00 00       	mov    edx,@obj3:mom_cpp_variable_278                               ; fixup: num: 5206, src obj: 1, src ofs: 0x22f15, dst obj: 3, dst ofs: 0x5f85
   22f19:	b8 c4 20 00 00       	mov    eax,0x20c4
   22f1e:	e9 74 00 00 00       	jmp    talk_to_MOM_branch_132
talk_to_MOM_branch_130:
   22f23:	83 f8 02             	cmp    eax,0x2
   22f26:	75 74                	jne    talk_to_MOM_branch_133
   22f28:	bb 01 00 00 00       	mov    ebx,0x1
   22f2d:	ba 89 5f 00 00       	mov    edx,@obj3:mom_cpp_variable_279                               ; fixup: num: 5139, src obj: 1, src ofs: 0x22f2e, dst obj: 3, dst ofs: 0x5f89
   22f32:	b8 ce 20 00 00       	mov    eax,0x20ce
   22f37:	eb 5e                	jmp    talk_to_MOM_branch_132
talk_to_MOM_branch_131:
   22f39:	83 f8 02             	cmp    eax,0x2
   22f3c:	75 5e                	jne    talk_to_MOM_branch_133
   22f3e:	ba 8d 5f 00 00       	mov    edx,@obj3:mom_cpp_variable_280                               ; fixup: num: 5138, src obj: 1, src ofs: 0x22f3f, dst obj: 3, dst ofs: 0x5f8d
   22f43:	b8 d5 20 00 00       	mov    eax,0x20d5
   22f48:	89 cb                	mov    ebx,ecx
   22f4a:	e8 41 77 04 00       	call   play_wav
   22f4f:	bb 04 00 00 00       	mov    ebx,0x4
   22f54:	ba 91 5f 00 00       	mov    edx,@obj3:mom_cpp_variable_281                               ; fixup: num: 5137, src obj: 1, src ofs: 0x22f55, dst obj: 3, dst ofs: 0x5f91
   22f59:	b8 da 20 00 00       	mov    eax,0x20da
   22f5e:	e8 2d 77 04 00       	call   play_wav
   22f63:	ba 94 5f 00 00       	mov    edx,@obj3:mom_cpp_variable_282                               ; fixup: num: 5136, src obj: 1, src ofs: 0x22f64, dst obj: 3, dst ofs: 0x5f94
   22f68:	b8 df 20 00 00       	mov    eax,0x20df
   22f6d:	89 cb                	mov    ebx,ecx
   22f6f:	e8 1c 77 04 00       	call   play_wav
   22f74:	bb 03 00 00 00       	mov    ebx,0x3
   22f79:	ba 98 5f 00 00       	mov    edx,@obj3:mom_cpp_variable_283                               ; fixup: num: 5135, src obj: 1, src ofs: 0x22f7a, dst obj: 3, dst ofs: 0x5f98
   22f7e:	b8 e3 20 00 00       	mov    eax,0x20e3
   22f83:	e8 08 77 04 00       	call   play_wav
   22f88:	bb 01 00 00 00       	mov    ebx,0x1
   22f8d:	ba 9b 5f 00 00       	mov    edx,@obj3:mom_cpp_variable_284                               ; fixup: num: 5134, src obj: 1, src ofs: 0x22f8e, dst obj: 3, dst ofs: 0x5f9b
   22f92:	b8 e8 20 00 00       	mov    eax,0x20e8
talk_to_MOM_branch_132:
   22f97:	e8 f4 76 04 00       	call   play_wav
talk_to_MOM_branch_133:
   22f9c:	b8 50 01 00 00       	mov    eax,0x150
   22fa1:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 5133, src obj: 1, src ofs: 0x22fa2, dst obj: 3, dst ofs: 0x295c0
   22fa6:	e8 f5 71 00 00       	call   GetDlgFileString
   22fab:	89 c6                	mov    esi,eax
   22fad:	57                   	push   edi
talk_to_MOM_branch_134:
   22fae:	8a 06                	mov    al,BYTE PTR [esi]
   22fb0:	88 07                	mov    BYTE PTR [edi],al
   22fb2:	3c 00                	cmp    al,0x0
   22fb4:	74 10                	je     talk_to_MOM_branch_135
   22fb6:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   22fb9:	83 c6 02             	add    esi,0x2
   22fbc:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   22fbf:	83 c7 02             	add    edi,0x2
   22fc2:	3c 00                	cmp    al,0x0
   22fc4:	75 e8                	jne    talk_to_MOM_branch_134
talk_to_MOM_branch_135:
   22fc6:	5f                   	pop    edi
   22fc7:	e9 a4 f1 ff ff       	jmp    talk_to_MOM_branch_67
talk_to_MOM_branch_136:
   22fcc:	b8 51 01 00 00       	mov    eax,0x151
   22fd1:	e8 ca 71 00 00       	call   GetDlgFileString
   22fd6:	89 c2                	mov    edx,eax
   22fd8:	89 e8                	mov    eax,ebp
   22fda:	e8 7b e4 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   22fdf:	85 c0                	test   eax,eax
   22fe1:	74 1b                	je     talk_to_MOM_branch_137
   22fe3:	b8 52 01 00 00       	mov    eax,0x152
   22fe8:	e8 b3 71 00 00       	call   GetDlgFileString
   22fed:	89 c2                	mov    edx,eax
   22fef:	89 e8                	mov    eax,ebp
   22ff1:	e8 64 e4 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   22ff6:	85 c0                	test   eax,eax
   22ff8:	0f 85 e0 00 00 00    	jne    talk_to_MOM_branch_141
talk_to_MOM_branch_137:
   22ffe:	ba 9f 5f 00 00       	mov    edx,@obj3:mom_cpp_variable_285                               ; fixup: num: 5140, src obj: 1, src ofs: 0x22fff, dst obj: 3, dst ofs: 0x5f9f; fixup: num: 5439, src obj: 1, src ofs: 0x22fff, dst obj: 3, dst ofs: 0x5f9f
   23003:	b8 f7 20 00 00       	mov    eax,0x20f7
   23008:	89 cb                	mov    ebx,ecx
   2300a:	e8 81 76 04 00       	call   play_wav
   2300f:	ba a2 5f 00 00       	mov    edx,@obj3:mom_cpp_variable_286                               ; fixup: num: 5438, src obj: 1, src ofs: 0x23010, dst obj: 3, dst ofs: 0x5fa2
   23014:	b8 fb 20 00 00       	mov    eax,0x20fb
   23019:	89 cb                	mov    ebx,ecx
   2301b:	e8 70 76 04 00       	call   play_wav
   23020:	b8 53 01 00 00       	mov    eax,0x153
   23025:	e8 76 71 00 00       	call   GetDlgFileString
   2302a:	e8 e1 7e 04 00       	call   get_response
   2302f:	83 f8 01             	cmp    eax,0x1
   23032:	75 38                	jne    talk_to_MOM_branch_138
   23034:	ba a6 5f 00 00       	mov    edx,@obj3:mom_cpp_variable_287                               ; fixup: num: 5437, src obj: 1, src ofs: 0x23035, dst obj: 3, dst ofs: 0x5fa6
   23039:	b8 06 21 00 00       	mov    eax,0x2106
   2303e:	89 cb                	mov    ebx,ecx
   23040:	e8 4b 76 04 00       	call   play_wav
   23045:	ba aa 5f 00 00       	mov    edx,@obj3:mom_cpp_variable_288                               ; fixup: num: 5436, src obj: 1, src ofs: 0x23046, dst obj: 3, dst ofs: 0x5faa
   2304a:	b8 0a 21 00 00       	mov    eax,0x210a
   2304f:	89 cb                	mov    ebx,ecx
   23051:	e8 3a 76 04 00       	call   play_wav
   23056:	ba ad 5f 00 00       	mov    edx,@obj3:mom_cpp_variable_289                               ; fixup: num: 5435, src obj: 1, src ofs: 0x23057, dst obj: 3, dst ofs: 0x5fad
   2305b:	b8 0e 21 00 00       	mov    eax,0x210e
   23060:	89 cb                	mov    ebx,ecx
   23062:	e8 29 76 04 00       	call   play_wav
   23067:	e9 04 f1 ff ff       	jmp    talk_to_MOM_branch_67
talk_to_MOM_branch_138:
   2306c:	83 f8 02             	cmp    eax,0x2
   2306f:	0f 85 fb f0 ff ff    	jne    talk_to_MOM_branch_67
   23075:	bb 01 00 00 00       	mov    ebx,0x1
   2307a:	ba b1 5f 00 00       	mov    edx,@obj3:mom_cpp_variable_290                               ; fixup: num: 5434, src obj: 1, src ofs: 0x2307b, dst obj: 3, dst ofs: 0x5fb1
   2307f:	b8 14 21 00 00       	mov    eax,0x2114
   23084:	e8 07 76 04 00       	call   play_wav
   23089:	ba b5 5f 00 00       	mov    edx,@obj3:mom_cpp_variable_291                               ; fixup: num: 5445, src obj: 1, src ofs: 0x2308a, dst obj: 3, dst ofs: 0x5fb5
   2308e:	b8 19 21 00 00       	mov    eax,0x2119
   23093:	89 cb                	mov    ebx,ecx
   23095:	e8 f6 75 04 00       	call   play_wav
   2309a:	bb 01 00 00 00       	mov    ebx,0x1
   2309f:	ba b8 5f 00 00       	mov    edx,@obj3:mom_cpp_variable_292                               ; fixup: num: 5444, src obj: 1, src ofs: 0x230a0, dst obj: 3, dst ofs: 0x5fb8
   230a4:	b8 1d 21 00 00       	mov    eax,0x211d
   230a9:	e8 e2 75 04 00       	call   play_wav
   230ae:	b8 54 01 00 00       	mov    eax,0x154
   230b3:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 5443, src obj: 1, src ofs: 0x230b4, dst obj: 3, dst ofs: 0x295c0
   230b8:	e8 e3 70 00 00       	call   GetDlgFileString
   230bd:	89 c6                	mov    esi,eax
   230bf:	57                   	push   edi
talk_to_MOM_branch_139:
   230c0:	8a 06                	mov    al,BYTE PTR [esi]
   230c2:	88 07                	mov    BYTE PTR [edi],al
   230c4:	3c 00                	cmp    al,0x0
   230c6:	74 10                	je     talk_to_MOM_branch_140
   230c8:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   230cb:	83 c6 02             	add    esi,0x2
   230ce:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   230d1:	83 c7 02             	add    edi,0x2
   230d4:	3c 00                	cmp    al,0x0
   230d6:	75 e8                	jne    talk_to_MOM_branch_139
talk_to_MOM_branch_140:
   230d8:	5f                   	pop    edi
   230d9:	e9 92 f0 ff ff       	jmp    talk_to_MOM_branch_67
talk_to_MOM_branch_141:
   230de:	b8 55 01 00 00       	mov    eax,0x155
   230e3:	e8 b8 70 00 00       	call   GetDlgFileString
   230e8:	89 c2                	mov    edx,eax
   230ea:	89 e8                	mov    eax,ebp
   230ec:	e8 69 e3 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   230f1:	85 c0                	test   eax,eax
   230f3:	75 63                	jne    talk_to_MOM_branch_142
   230f5:	bb 01 00 00 00       	mov    ebx,0x1
   230fa:	ba bc 5f 00 00       	mov    edx,@obj3:mom_cpp_variable_293                               ; fixup: num: 5442, src obj: 1, src ofs: 0x230fb, dst obj: 3, dst ofs: 0x5fbc
   230ff:	b8 25 21 00 00       	mov    eax,0x2125
   23104:	e8 87 75 04 00       	call   play_wav
   23109:	ba c0 5f 00 00       	mov    edx,@obj3:mom_cpp_variable_294                               ; fixup: num: 5441, src obj: 1, src ofs: 0x2310a, dst obj: 3, dst ofs: 0x5fc0
   2310e:	b8 2a 21 00 00       	mov    eax,0x212a
   23113:	89 cb                	mov    ebx,ecx
   23115:	e8 76 75 04 00       	call   play_wav
   2311a:	bb 01 00 00 00       	mov    ebx,0x1
   2311f:	ba c3 5f 00 00       	mov    edx,@obj3:mom_cpp_variable_295                               ; fixup: num: 5440, src obj: 1, src ofs: 0x23120, dst obj: 3, dst ofs: 0x5fc3
   23124:	b8 2e 21 00 00       	mov    eax,0x212e
   23129:	e8 62 75 04 00       	call   play_wav
   2312e:	ba c7 5f 00 00       	mov    edx,@obj3:mom_cpp_variable_296                               ; fixup: num: 5450, src obj: 1, src ofs: 0x2312f, dst obj: 3, dst ofs: 0x5fc7
   23133:	b8 34 21 00 00       	mov    eax,0x2134
   23138:	89 cb                	mov    ebx,ecx
   2313a:	e8 51 75 04 00       	call   play_wav
   2313f:	bb 01 00 00 00       	mov    ebx,0x1
   23144:	ba ca 5f 00 00       	mov    edx,@obj3:mom_cpp_variable_297                               ; fixup: num: 5449, src obj: 1, src ofs: 0x23145, dst obj: 3, dst ofs: 0x5fca
   23149:	b8 38 21 00 00       	mov    eax,0x2138
   2314e:	e8 3d 75 04 00       	call   play_wav
   23153:	e9 18 f0 ff ff       	jmp    talk_to_MOM_branch_67
talk_to_MOM_branch_142:
   23158:	b8 56 01 00 00       	mov    eax,0x156
   2315d:	e8 3e 70 00 00       	call   GetDlgFileString
   23162:	89 c2                	mov    edx,eax
   23164:	89 e8                	mov    eax,ebp
   23166:	e8 ef e2 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   2316b:	85 c0                	test   eax,eax
   2316d:	75 38                	jne    talk_to_MOM_branch_143
   2316f:	ba ce 5f 00 00       	mov    edx,@obj3:mom_cpp_variable_298                               ; fixup: num: 5448, src obj: 1, src ofs: 0x23170, dst obj: 3, dst ofs: 0x5fce
   23174:	b8 42 21 00 00       	mov    eax,0x2142
   23179:	89 cb                	mov    ebx,ecx
   2317b:	e8 10 75 04 00       	call   play_wav
   23180:	ba d2 5f 00 00       	mov    edx,@obj3:mom_cpp_variable_299                               ; fixup: num: 5447, src obj: 1, src ofs: 0x23181, dst obj: 3, dst ofs: 0x5fd2
   23185:	b8 47 21 00 00       	mov    eax,0x2147
   2318a:	89 cb                	mov    ebx,ecx
   2318c:	e8 ff 74 04 00       	call   play_wav
   23191:	ba d5 5f 00 00       	mov    edx,@obj3:mom_cpp_variable_300                               ; fixup: num: 5446, src obj: 1, src ofs: 0x23192, dst obj: 3, dst ofs: 0x5fd5
   23196:	b8 4b 21 00 00       	mov    eax,0x214b
   2319b:	89 cb                	mov    ebx,ecx
   2319d:	e8 ee 74 04 00       	call   play_wav
   231a2:	e9 c9 ef ff ff       	jmp    talk_to_MOM_branch_67
talk_to_MOM_branch_143:
   231a7:	b8 5b 01 00 00       	mov    eax,0x15b
   231ac:	e8 ef 6f 00 00       	call   GetDlgFileString
   231b1:	89 c2                	mov    edx,eax
   231b3:	89 e8                	mov    eax,ebp
   231b5:	e8 a0 e2 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   231ba:	85 c0                	test   eax,eax
   231bc:	0f 85 41 01 00 00    	jne    talk_to_MOM_branch_147
   231c2:	e8 f9 59 00 00       	call   get_day
   231c7:	83 f8 05             	cmp    eax,0x5
   231ca:	0f 85 33 01 00 00    	jne    talk_to_MOM_branch_147
   231d0:	b8 01 00 00 00       	mov    eax,0x1
   231d5:	89 ca                	mov    edx,ecx
   231d7:	e8 e4 51 00 00       	call   TALKED_TO_MR_MOYNAHAN_ABOUT_BAKE_SALE
   231dc:	85 c0                	test   eax,eax
   231de:	0f 84 cd 00 00 00    	je     talk_to_MOM_branch_144
   231e4:	ba d9 5f 00 00       	mov    edx,@obj3:mom_cpp_variable_301                               ; fixup: num: 5460, src obj: 1, src ofs: 0x231e5, dst obj: 3, dst ofs: 0x5fd9
   231e9:	b8 a3 21 00 00       	mov    eax,0x21a3
   231ee:	89 cb                	mov    ebx,ecx
   231f0:	e8 9b 74 04 00       	call   play_wav
   231f5:	bb 01 00 00 00       	mov    ebx,0x1
   231fa:	ba dc 5f 00 00       	mov    edx,@obj3:mom_cpp_variable_302                               ; fixup: num: 5459, src obj: 1, src ofs: 0x231fb, dst obj: 3, dst ofs: 0x5fdc
   231ff:	b8 a8 21 00 00       	mov    eax,0x21a8
   23204:	e8 87 74 04 00       	call   play_wav
   23209:	ba e0 5f 00 00       	mov    edx,@obj3:mom_cpp_variable_303                               ; fixup: num: 5458, src obj: 1, src ofs: 0x2320a, dst obj: 3, dst ofs: 0x5fe0
   2320e:	b8 ad 21 00 00       	mov    eax,0x21ad
   23213:	89 cb                	mov    ebx,ecx
   23215:	e8 76 74 04 00       	call   play_wav
   2321a:	ba e3 5f 00 00       	mov    edx,@obj3:mom_cpp_variable_304                               ; fixup: num: 5457, src obj: 1, src ofs: 0x2321b, dst obj: 3, dst ofs: 0x5fe3
   2321f:	b8 b2 21 00 00       	mov    eax,0x21b2
   23224:	89 cb                	mov    ebx,ecx
   23226:	e8 65 74 04 00       	call   play_wav
   2322b:	ba e7 5f 00 00       	mov    edx,@obj3:mom_cpp_variable_305                               ; fixup: num: 5456, src obj: 1, src ofs: 0x2322c, dst obj: 3, dst ofs: 0x5fe7
   23230:	b8 b7 21 00 00       	mov    eax,0x21b7
   23235:	89 cb                	mov    ebx,ecx
   23237:	e8 54 74 04 00       	call   play_wav
   2323c:	bb 01 00 00 00       	mov    ebx,0x1
   23241:	ba ea 5f 00 00       	mov    edx,@obj3:mom_cpp_variable_306                               ; fixup: num: 5455, src obj: 1, src ofs: 0x23242, dst obj: 3, dst ofs: 0x5fea
   23246:	b8 bc 21 00 00       	mov    eax,0x21bc
   2324b:	e8 40 74 04 00       	call   play_wav
   23250:	b8 ee 5f 00 00       	mov    eax,@obj3:mom_cpp_variable_307                               ; fixup: num: 5454, src obj: 1, src ofs: 0x23251, dst obj: 3, dst ofs: 0x5fee
   23255:	e8 36 95 04 00       	call   check_script_flag
   2325a:	84 c0                	test   al,al
   2325c:	0f 84 0e ef ff ff    	je     talk_to_MOM_branch_67
   23262:	ba 0d 60 00 00       	mov    edx,@obj3:mom_cpp_variable_308                               ; fixup: num: 5453, src obj: 1, src ofs: 0x23263, dst obj: 3, dst ofs: 0x600d
   23267:	b8 c4 21 00 00       	mov    eax,0x21c4
   2326c:	89 cb                	mov    ebx,ecx
   2326e:	e8 1d 74 04 00       	call   play_wav
   23273:	bb 02 00 00 00       	mov    ebx,0x2
   23278:	ba 10 60 00 00       	mov    edx,@obj3:mom_cpp_variable_309                               ; fixup: num: 5452, src obj: 1, src ofs: 0x23279, dst obj: 3, dst ofs: 0x6010
   2327d:	b8 ca 21 00 00       	mov    eax,0x21ca
   23282:	e8 09 74 04 00       	call   play_wav
   23287:	ba 14 60 00 00       	mov    edx,@obj3:mom_cpp_variable_310                               ; fixup: num: 5451, src obj: 1, src ofs: 0x23288, dst obj: 3, dst ofs: 0x6014
   2328c:	b8 cf 21 00 00       	mov    eax,0x21cf
   23291:	89 cb                	mov    ebx,ecx
   23293:	e8 f8 73 04 00       	call   play_wav
   23298:	bb 02 00 00 00       	mov    ebx,0x2
   2329d:	ba 17 60 00 00       	mov    edx,@obj3:mom_cpp_variable_311                               ; fixup: num: 5465, src obj: 1, src ofs: 0x2329e, dst obj: 3, dst ofs: 0x6017
   232a2:	b8 d3 21 00 00       	mov    eax,0x21d3
   232a7:	e8 e4 73 04 00       	call   play_wav
   232ac:	e9 bf ee ff ff       	jmp    talk_to_MOM_branch_67
talk_to_MOM_branch_144:
   232b1:	ba 1b 60 00 00       	mov    edx,@obj3:mom_cpp_variable_312                               ; fixup: num: 5464, src obj: 1, src ofs: 0x232b2, dst obj: 3, dst ofs: 0x601b
   232b6:	b8 dd 21 00 00       	mov    eax,0x21dd
   232bb:	89 cb                	mov    ebx,ecx
   232bd:	e8 ce 73 04 00       	call   play_wav
   232c2:	ba 1e 60 00 00       	mov    edx,@obj3:mom_cpp_variable_313                               ; fixup: num: 5463, src obj: 1, src ofs: 0x232c3, dst obj: 3, dst ofs: 0x601e
   232c7:	b8 e2 21 00 00       	mov    eax,0x21e2
   232cc:	89 cb                	mov    ebx,ecx
   232ce:	e8 bd 73 04 00       	call   play_wav
   232d3:	b8 5c 01 00 00       	mov    eax,0x15c
   232d8:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 5462, src obj: 1, src ofs: 0x232d9, dst obj: 3, dst ofs: 0x295c0
   232dd:	e8 be 6e 00 00       	call   GetDlgFileString
   232e2:	89 c6                	mov    esi,eax
   232e4:	57                   	push   edi
talk_to_MOM_branch_145:
   232e5:	8a 06                	mov    al,BYTE PTR [esi]
   232e7:	88 07                	mov    BYTE PTR [edi],al
   232e9:	3c 00                	cmp    al,0x0
   232eb:	74 10                	je     talk_to_MOM_branch_146
   232ed:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   232f0:	83 c6 02             	add    esi,0x2
   232f3:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   232f6:	83 c7 02             	add    edi,0x2
   232f9:	3c 00                	cmp    al,0x0
   232fb:	75 e8                	jne    talk_to_MOM_branch_145
talk_to_MOM_branch_146:
   232fd:	5f                   	pop    edi
   232fe:	e9 6d ee ff ff       	jmp    talk_to_MOM_branch_67
talk_to_MOM_branch_147:
   23303:	b8 60 01 00 00       	mov    eax,0x160
   23308:	e8 93 6e 00 00       	call   GetDlgFileString
   2330d:	89 c2                	mov    edx,eax
   2330f:	89 e8                	mov    eax,ebp
   23311:	e8 44 e1 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   23316:	85 c0                	test   eax,eax
   23318:	74 17                	je     talk_to_MOM_branch_148
   2331a:	b8 61 01 00 00       	mov    eax,0x161
   2331f:	e8 7c 6e 00 00       	call   GetDlgFileString
   23324:	89 c2                	mov    edx,eax
   23326:	89 e8                	mov    eax,ebp
   23328:	e8 2d e1 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   2332d:	85 c0                	test   eax,eax
   2332f:	75 49                	jne    talk_to_MOM_branch_149
talk_to_MOM_branch_148:
   23331:	ba 22 60 00 00       	mov    edx,@obj3:mom_cpp_variable_314                               ; fixup: num: 5461, src obj: 1, src ofs: 0x23332, dst obj: 3, dst ofs: 0x6022
   23336:	b8 0a 22 00 00       	mov    eax,0x220a
   2333b:	89 cb                	mov    ebx,ecx
   2333d:	e8 4e 73 04 00       	call   play_wav
   23342:	ba 25 60 00 00       	mov    edx,@obj3:mom_cpp_variable_315                               ; fixup: num: 5471, src obj: 1, src ofs: 0x23343, dst obj: 3, dst ofs: 0x6025
   23347:	b8 0e 22 00 00       	mov    eax,0x220e
   2334c:	89 cb                	mov    ebx,ecx
   2334e:	e8 3d 73 04 00       	call   play_wav
   23353:	ba 29 60 00 00       	mov    edx,@obj3:mom_cpp_variable_316                               ; fixup: num: 5470, src obj: 1, src ofs: 0x23354, dst obj: 3, dst ofs: 0x6029
   23358:	b8 12 22 00 00       	mov    eax,0x2212
   2335d:	89 cb                	mov    ebx,ecx
   2335f:	e8 2c 73 04 00       	call   play_wav
   23364:	ba 2c 60 00 00       	mov    edx,@obj3:mom_cpp_variable_317                               ; fixup: num: 5469, src obj: 1, src ofs: 0x23365, dst obj: 3, dst ofs: 0x602c
   23369:	b8 16 22 00 00       	mov    eax,0x2216
   2336e:	89 cb                	mov    ebx,ecx
   23370:	e8 1b 73 04 00       	call   play_wav
   23375:	e9 f6 ed ff ff       	jmp    talk_to_MOM_branch_67
talk_to_MOM_branch_149:
   2337a:	b8 62 01 00 00       	mov    eax,0x162
   2337f:	e8 1c 6e 00 00       	call   GetDlgFileString
   23384:	89 c2                	mov    edx,eax
   23386:	89 e8                	mov    eax,ebp
   23388:	e8 cd e0 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   2338d:	85 c0                	test   eax,eax
   2338f:	74 17                	je     talk_to_MOM_branch_150
   23391:	b8 63 01 00 00       	mov    eax,0x163
   23396:	e8 05 6e 00 00       	call   GetDlgFileString
   2339b:	89 c2                	mov    edx,eax
   2339d:	89 e8                	mov    eax,ebp
   2339f:	e8 b6 e0 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   233a4:	85 c0                	test   eax,eax
   233a6:	75 16                	jne    talk_to_MOM_branch_151
talk_to_MOM_branch_150:
   233a8:	ba 30 60 00 00       	mov    edx,@obj3:mom_cpp_variable_318                               ; fixup: num: 5468, src obj: 1, src ofs: 0x233a9, dst obj: 3, dst ofs: 0x6030
   233ad:	b8 9e 22 00 00       	mov    eax,0x229e
   233b2:	89 cb                	mov    ebx,ecx
   233b4:	e8 d7 72 04 00       	call   play_wav
   233b9:	e9 b2 ed ff ff       	jmp    talk_to_MOM_branch_67
talk_to_MOM_branch_151:
   233be:	b8 6d 01 00 00       	mov    eax,0x16d
   233c3:	e8 d8 6d 00 00       	call   GetDlgFileString
   233c8:	89 c2                	mov    edx,eax
   233ca:	89 e8                	mov    eax,ebp
   233cc:	e8 89 e0 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   233d1:	85 c0                	test   eax,eax
   233d3:	75 27                	jne    talk_to_MOM_branch_152
   233d5:	ba 34 60 00 00       	mov    edx,@obj3:mom_cpp_variable_319                               ; fixup: num: 5467, src obj: 1, src ofs: 0x233d6, dst obj: 3, dst ofs: 0x6034
   233da:	b8 96 26 00 00       	mov    eax,0x2696
   233df:	89 cb                	mov    ebx,ecx
   233e1:	e8 aa 72 04 00       	call   play_wav
   233e6:	ba 38 60 00 00       	mov    edx,@obj3:mom_cpp_variable_320                               ; fixup: num: 5466, src obj: 1, src ofs: 0x233e7, dst obj: 3, dst ofs: 0x6038
   233eb:	b8 97 26 00 00       	mov    eax,0x2697
   233f0:	89 cb                	mov    ebx,ecx
   233f2:	e8 99 72 04 00       	call   play_wav
   233f7:	e9 74 ed ff ff       	jmp    talk_to_MOM_branch_67
talk_to_MOM_branch_152:
   233fc:	b8 6e 01 00 00       	mov    eax,0x16e
   23401:	e8 9a 6d 00 00       	call   GetDlgFileString
   23406:	89 c2                	mov    edx,eax
   23408:	89 e8                	mov    eax,ebp
   2340a:	e8 4b e0 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   2340f:	85 c0                	test   eax,eax
   23411:	75 57                	jne    talk_to_MOM_branch_154
   23413:	ba 3c 60 00 00       	mov    edx,@obj3:mom_cpp_variable_321                               ; fixup: num: 5475, src obj: 1, src ofs: 0x23414, dst obj: 3, dst ofs: 0x603c
   23418:	b8 a3 26 00 00       	mov    eax,0x26a3
   2341d:	31 db                	xor    ebx,ebx
   2341f:	e8 6c 72 04 00       	call   play_wav
   23424:	b8 6f 01 00 00       	mov    eax,0x16f
   23429:	e8 72 6d 00 00       	call   GetDlgFileString
   2342e:	e8 dd 7a 04 00       	call   get_response
   23433:	83 f8 01             	cmp    eax,0x1
   23436:	75 16                	jne    talk_to_MOM_branch_153
   23438:	ba 40 60 00 00       	mov    edx,@obj3:mom_cpp_variable_322                               ; fixup: num: 5474, src obj: 1, src ofs: 0x23439, dst obj: 3, dst ofs: 0x6040
   2343d:	b8 ae 26 00 00       	mov    eax,0x26ae
   23442:	31 db                	xor    ebx,ebx
   23444:	e8 47 72 04 00       	call   play_wav
   23449:	e9 80 00 00 00       	jmp    talk_to_MOM_branch_156
talk_to_MOM_branch_153:
   2344e:	83 f8 02             	cmp    eax,0x2
   23451:	0f 85 77 00 00 00    	jne    talk_to_MOM_branch_156
   23457:	ba 44 60 00 00       	mov    edx,@obj3:mom_cpp_variable_323                               ; fixup: num: 5473, src obj: 1, src ofs: 0x23458, dst obj: 3, dst ofs: 0x6044
   2345c:	89 c3                	mov    ebx,eax
   2345e:	b8 b3 26 00 00       	mov    eax,0x26b3
   23463:	e8 28 72 04 00       	call   play_wav
   23468:	eb 64                	jmp    talk_to_MOM_branch_156
talk_to_MOM_branch_154:
   2346a:	b8 70 01 00 00       	mov    eax,0x170
   2346f:	e8 2c 6d 00 00       	call   GetDlgFileString
   23474:	89 c2                	mov    edx,eax
   23476:	89 e8                	mov    eax,ebp
   23478:	e8 dd df 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   2347d:	85 c0                	test   eax,eax
   2347f:	75 19                	jne    talk_to_MOM_branch_155
   23481:	bb 02 00 00 00       	mov    ebx,0x2
   23486:	ba 48 60 00 00       	mov    edx,@obj3:mom_cpp_variable_324                               ; fixup: num: 5472, src obj: 1, src ofs: 0x23487, dst obj: 3, dst ofs: 0x6048
   2348b:	b8 bc 26 00 00       	mov    eax,0x26bc
   23490:	e8 fb 71 04 00       	call   play_wav
   23495:	e9 d6 ec ff ff       	jmp    talk_to_MOM_branch_67
talk_to_MOM_branch_155:
   2349a:	b8 71 01 00 00       	mov    eax,0x171
   2349f:	e8 fc 6c 00 00       	call   GetDlgFileString
   234a4:	89 c2                	mov    edx,eax
   234a6:	89 e8                	mov    eax,ebp
   234a8:	e8 ad df 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   234ad:	85 c0                	test   eax,eax
   234af:	0f 84 bb ec ff ff    	je     talk_to_MOM_branch_67
   234b5:	bb 01 00 00 00       	mov    ebx,0x1
   234ba:	ba 4c 60 00 00       	mov    edx,@obj3:mom_cpp_variable_325                               ; fixup: num: 5485, src obj: 1, src ofs: 0x234bb, dst obj: 3, dst ofs: 0x604c
   234bf:	b8 c6 26 00 00       	mov    eax,0x26c6
   234c4:	e8 c7 71 04 00       	call   play_wav
   234c9:	e9 a2 ec ff ff       	jmp    talk_to_MOM_branch_67
talk_to_MOM_branch_156:
   234ce:	b8 50 60 00 00       	mov    eax,@obj3:mom_cpp_variable_326                               ; fixup: num: 5484, src obj: 1, src ofs: 0x234cf, dst obj: 3, dst ofs: 0x6050
   234d3:	e8 b8 92 04 00       	call   check_script_flag
   234d8:	84 c0                	test   al,al
   234da:	74 2b                	je     talk_to_MOM_branch_157
   234dc:	b8 59 60 00 00       	mov    eax,@obj3:mom_cpp_variable_327                               ; fixup: num: 5483, src obj: 1, src ofs: 0x234dd, dst obj: 3, dst ofs: 0x6059
   234e1:	e8 5a 93 04 00       	call   npc_alive
   234e6:	84 c0                	test   al,al
   234e8:	74 31                	je     talk_to_MOM_branch_159
   234ea:	bb 01 00 00 00       	mov    ebx,0x1
   234ef:	ba 5f 60 00 00       	mov    edx,@obj3:mom_cpp_variable_328                               ; fixup: num: 5482, src obj: 1, src ofs: 0x234f0, dst obj: 3, dst ofs: 0x605f
   234f4:	b8 51 20 00 00       	mov    eax,0x2051
   234f9:	e8 92 71 04 00       	call   play_wav
   234fe:	31 c0                	xor    eax,eax
   23500:	5d                   	pop    ebp
   23501:	5f                   	pop    edi
   23502:	5e                   	pop    esi
   23503:	5a                   	pop    edx
   23504:	59                   	pop    ecx
   23505:	5b                   	pop    ebx
   23506:	c3                   	ret    
talk_to_MOM_branch_157:
   23507:	bb 01 00 00 00       	mov    ebx,0x1
   2350c:	ba 63 60 00 00       	mov    edx,@obj3:mom_cpp_variable_329                               ; fixup: num: 5481, src obj: 1, src ofs: 0x2350d, dst obj: 3, dst ofs: 0x6063
   23511:	b8 6e 25 00 00       	mov    eax,0x256e
talk_to_MOM_branch_158:
   23516:	e8 75 71 04 00       	call   play_wav
talk_to_MOM_branch_159:
   2351b:	31 c0                	xor    eax,eax
   2351d:	5d                   	pop    ebp
   2351e:	5f                   	pop    edi
   2351f:	5e                   	pop    esi
   23520:	5a                   	pop    edx
   23521:	59                   	pop    ecx
   23522:	5b                   	pop    ebx
   23523:	c3                   	ret    
talk_to_MOM_branch_160:
   23524:	89 15 74 2d 02 00    	mov    DWORD PTR ds:@obj3:MOM,edx                                   ; fixup: num: 5480, src obj: 1, src ofs: 0x23526, dst obj: 3, dst ofs: 0x22d74
   2352a:	a1 74 2d 02 00       	mov    eax,ds:@obj3:MOM                                             ; fixup: num: 5479, src obj: 1, src ofs: 0x2352b, dst obj: 3, dst ofs: 0x22d74
   2352f:	c3                   	ret    

;-------------------------------------------------
;  Function 'MOM_FIRST_CONVERSATION'             -
;-------------------------------------------------
MOM_FIRST_CONVERSATION:
   23530:	85 c0                	test   eax,eax
   23532:	74 f0                	je     talk_to_MOM_branch_160
   23534:	a1 74 2d 02 00       	mov    eax,ds:@obj3:MOM                                             ; fixup: num: 5478, src obj: 1, src ofs: 0x23535, dst obj: 3, dst ofs: 0x22d74
   23539:	c3                   	ret    
MOM_FIRST_CONVERSATION_branch_1:
   2353a:	89 15 78 2d 02 00    	mov    DWORD PTR ds:@obj3:MOM_variable_1,edx                        ; fixup: num: 5477, src obj: 1, src ofs: 0x2353c, dst obj: 3, dst ofs: 0x22d78
   23540:	a1 78 2d 02 00       	mov    eax,ds:@obj3:MOM_variable_1                                  ; fixup: num: 5476, src obj: 1, src ofs: 0x23541, dst obj: 3, dst ofs: 0x22d78
   23545:	c3                   	ret    
   23546:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   2354c:	8d 54 22 00          	lea    edx,[edx+eiz*1+0x0]

;-------------------------------------------------
;  Function 'MOM_SAME_DAY_ALTERNATE_GREETING'    -
;-------------------------------------------------
MOM_SAME_DAY_ALTERNATE_GREETING:
   23550:	85 c0                	test   eax,eax
   23552:	74 e6                	je     MOM_FIRST_CONVERSATION_branch_1
   23554:	a1 78 2d 02 00       	mov    eax,ds:@obj3:MOM_variable_1                                  ; fixup: num: 5377, src obj: 1, src ofs: 0x23555, dst obj: 3, dst ofs: 0x22d78
   23559:	c3                   	ret    
MOM_SAME_DAY_ALTERNATE_GREETING_branch_1:
   2355a:	89 15 7c 2d 02 00    	mov    DWORD PTR ds:@obj3:MOM_variable_2,edx                        ; fixup: num: 5376, src obj: 1, src ofs: 0x2355c, dst obj: 3, dst ofs: 0x22d7c
   23560:	a1 7c 2d 02 00       	mov    eax,ds:@obj3:MOM_variable_2                                  ; fixup: num: 5375, src obj: 1, src ofs: 0x23561, dst obj: 3, dst ofs: 0x22d7c
   23565:	c3                   	ret    
   23566:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   2356c:	8d 54 22 00          	lea    edx,[edx+eiz*1+0x0]

;-------------------------------------------------
;  Function 'MOM_DEFAULT_CONVERSATION'           -
;-------------------------------------------------
MOM_DEFAULT_CONVERSATION:
   23570:	85 c0                	test   eax,eax
   23572:	74 e6                	je     MOM_SAME_DAY_ALTERNATE_GREETING_branch_1
   23574:	a1 7c 2d 02 00       	mov    eax,ds:@obj3:MOM_variable_2                                  ; fixup: num: 5374, src obj: 1, src ofs: 0x23575, dst obj: 3, dst ofs: 0x22d7c
   23579:	c3                   	ret    
   2357a:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'MOM_initialize'                     -
;-------------------------------------------------
MOM_initialize:
   23580:	53                   	push   ebx
   23581:	52                   	push   edx
   23582:	ba 01 00 00 00       	mov    edx,0x1
   23587:	31 db                	xor    ebx,ebx
   23589:	89 15 74 2d 02 00    	mov    DWORD PTR ds:@obj3:MOM,edx                                   ; fixup: num: 5373, src obj: 1, src ofs: 0x2358b, dst obj: 3, dst ofs: 0x22d74
   2358f:	89 1d 78 2d 02 00    	mov    DWORD PTR ds:@obj3:MOM_variable_1,ebx                        ; fixup: num: 5372, src obj: 1, src ofs: 0x23591, dst obj: 3, dst ofs: 0x22d78
   23595:	89 1d 7c 2d 02 00    	mov    DWORD PTR ds:@obj3:MOM_variable_2,ebx                        ; fixup: num: 5371, src obj: 1, src ofs: 0x23597, dst obj: 3, dst ofs: 0x22d7c
   2359b:	89 1d 84 2d 02 00    	mov    DWORD PTR ds:@obj3:MOM_variable_4,ebx                        ; fixup: num: 5370, src obj: 1, src ofs: 0x2359d, dst obj: 3, dst ofs: 0x22d84
   235a1:	89 1d 88 2d 02 00    	mov    DWORD PTR ds:@obj3:MOM_variable_5,ebx                        ; fixup: num: 5499, src obj: 1, src ofs: 0x235a3, dst obj: 3, dst ofs: 0x22d88
   235a7:	89 1d 8c 2d 02 00    	mov    DWORD PTR ds:@obj3:MOM_variable_6,ebx                        ; fixup: num: 5498, src obj: 1, src ofs: 0x235a9, dst obj: 3, dst ofs: 0x22d8c
   235ad:	89 1d 90 2d 02 00    	mov    DWORD PTR ds:@obj3:MOM_variable_7,ebx                        ; fixup: num: 5497, src obj: 1, src ofs: 0x235af, dst obj: 3, dst ofs: 0x22d90
   235b3:	89 1d 94 2d 02 00    	mov    DWORD PTR ds:@obj3:MOM_variable_8,ebx                        ; fixup: num: 5496, src obj: 1, src ofs: 0x235b5, dst obj: 3, dst ofs: 0x22d94
   235b9:	89 1d 98 2d 02 00    	mov    DWORD PTR ds:@obj3:MOM_variable_9,ebx                        ; fixup: num: 5495, src obj: 1, src ofs: 0x235bb, dst obj: 3, dst ofs: 0x22d98
   235bf:	89 1d 9c 2d 02 00    	mov    DWORD PTR ds:@obj3:MOM_variable_10,ebx                       ; fixup: num: 5494, src obj: 1, src ofs: 0x235c1, dst obj: 3, dst ofs: 0x22d9c
   235c5:	89 1d a0 2d 02 00    	mov    DWORD PTR ds:@obj3:MOM_variable_11,ebx                       ; fixup: num: 5493, src obj: 1, src ofs: 0x235c7, dst obj: 3, dst ofs: 0x22da0
   235cb:	89 1d a4 2d 02 00    	mov    DWORD PTR ds:@obj3:MOM_variable_12,ebx                       ; fixup: num: 5492, src obj: 1, src ofs: 0x235cd, dst obj: 3, dst ofs: 0x22da4
   235d1:	89 1d a8 2d 02 00    	mov    DWORD PTR ds:@obj3:MOM_variable_13,ebx                       ; fixup: num: 5491, src obj: 1, src ofs: 0x235d3, dst obj: 3, dst ofs: 0x22da8
   235d7:	89 1d ac 2d 02 00    	mov    DWORD PTR ds:@obj3:MOM_variable_14,ebx                       ; fixup: num: 5490, src obj: 1, src ofs: 0x235d9, dst obj: 3, dst ofs: 0x22dac
   235dd:	89 1d b0 2d 02 00    	mov    DWORD PTR ds:@obj3:MOM_variable_15,ebx                       ; fixup: num: 5489, src obj: 1, src ofs: 0x235df, dst obj: 3, dst ofs: 0x22db0
   235e3:	89 1d b4 2d 02 00    	mov    DWORD PTR ds:@obj3:MOM_variable_16,ebx                       ; fixup: num: 5488, src obj: 1, src ofs: 0x235e5, dst obj: 3, dst ofs: 0x22db4
   235e9:	89 1d b8 2d 02 00    	mov    DWORD PTR ds:@obj3:MOM_variable_17,ebx                       ; fixup: num: 5487, src obj: 1, src ofs: 0x235eb, dst obj: 3, dst ofs: 0x22db8
   235ef:	89 1d bc 2d 02 00    	mov    DWORD PTR ds:@obj3:MOM_variable_18,ebx                       ; fixup: num: 5486, src obj: 1, src ofs: 0x235f1, dst obj: 3, dst ofs: 0x22dbc
   235f5:	89 1d c0 2d 02 00    	mov    DWORD PTR ds:@obj3:MOM_variable_19,ebx                       ; fixup: num: 5380, src obj: 1, src ofs: 0x235f7, dst obj: 3, dst ofs: 0x22dc0
   235fb:	89 1d c4 2d 02 00    	mov    DWORD PTR ds:@obj3:MOM_variable_20,ebx                       ; fixup: num: 5379, src obj: 1, src ofs: 0x235fd, dst obj: 3, dst ofs: 0x22dc4
   23601:	89 1d c8 2d 02 00    	mov    DWORD PTR ds:@obj3:MOM_variable_21,ebx                       ; fixup: num: 5378, src obj: 1, src ofs: 0x23603, dst obj: 3, dst ofs: 0x22dc8
   23607:	5a                   	pop    edx
   23608:	5b                   	pop    ebx
   23609:	c3                   	ret    
;-------------------------------------------------
;  Bad code 43 (zero after ret):                 -
;-------------------------------------------------
;  23608:	5b                   	pop    ebx
;  23609:	c3                   	ret    
;  2360a:	00 00                	add    BYTE PTR [eax],al
;  2360c:	00 00                	add    BYTE PTR [eax],al
;-------------------------------------------------
;  Padding data (6 bytes):                       -
;-------------------------------------------------
   2360a:	00 00 00 00 00 00    	db     6 dup(0x00)
;-------------------------------------------------
;  End of bad code 43                            -
;-------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 48 (D:\SOURCE\mom.cpp)                                        -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 48: D:\SOURCE\mom.cpp                                                -
;                                                                              -
;-------------------------------------------------------------------------------
mom_cpp_variable_1:
    599c:	4e 4f 54 45 00       	db     "NOTE",0x00
mom_cpp_variable_2:
    59a1:	4e 4f 54 45 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "NOTE_PHOTOCOPY",0x00
mom_cpp_variable_3:
    59b0:	43 48 45 43 4b 42 4f 4f 4b 00 	db     "CHECKBOOK",0x00
mom_cpp_variable_4:
    59ba:	43 48 45 43 4b 42 4f 4f 4b 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "CHECKBOOK_PHOTOCOPY",0x00
mom_cpp_variable_5:
    59ce:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_6:
    59d2:	4c 45 44 47 45 52 00 	db     "LEDGER",0x00
mom_cpp_variable_7:
    59d9:	4c 45 44 47 45 52 32 00 	db     "LEDGER2",0x00
mom_cpp_variable_8:
    59e1:	48 41 56 45 5f 42 4f 54 48 5f 4c 45 44 47 45 52 53 00 	db     "HAVE_BOTH_LEDGERS",0x00
mom_cpp_variable_9:
    59f3:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_10:
    59f7:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    59f8:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    59f9:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_11:
    59fa:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_12:
    59fe:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    59ff:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5a00:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_13:
    5a01:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_14:
    5a05:	43 41 53 4b 45 54 5f 50 48 4f 54 4f 00 	db     "CASKET_PHOTO",0x00
mom_cpp_variable_15:
    5a12:	43 41 53 4b 45 54 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "CASKET_PHOTOCOPY",0x00
mom_cpp_variable_16:
    5a23:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5a24:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5a25:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_17:
    5a26:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_18:
    5a2a:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5a2b:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5a2c:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_19:
    5a2d:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_20:
    5a31:	50 48 4f 54 4f 5f 4f 46 5f 57 48 41 4c 45 59 5f 48 45 52 52 49 4c 4c 00 	db     "PHOTO_OF_WHALEY_HERRILL",0x00
mom_cpp_variable_21:
    5a49:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_22:
    5a4d:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5a4e:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5a4f:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_23:
    5a50:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_24:
    5a54:	54 56 5f 44 45 45 44 00 	db     "TV_DEED",0x00
mom_cpp_variable_25:
    5a5c:	54 56 5f 44 45 45 44 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "TV_DEED_PHOTOCOPY",0x00
mom_cpp_variable_26:
    5a6e:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_27:
    5a72:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_28:
    5a76:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_29:
    5a7a:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5a7b:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5a7c:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_30:
    5a7d:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_31:
    5a81:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5a82:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5a83:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_32:
    5a84:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_33:
    5a88:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5a89:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5a8a:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_34:
    5a8b:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_35:
    5a8f:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5a90:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5a91:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_36:
    5a92:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_37:
    5a96:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_38:
    5a9a:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5a9b:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5a9c:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_39:
    5a9d:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_40:
    5aa1:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5aa2:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5aa3:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_41:
    5aa4:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_42:
    5aa8:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5aa9:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5aaa:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_43:
    5aab:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_44:
    5aaf:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_45:
    5ab3:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_46:
    5ab7:	53 54 45 50 48 5f 4d 49 44 47 41 4d 45 5f 50 4c 41 59 45 44 00 	db     "STEPH_MIDGAME_PLAYED",0x00
mom_cpp_variable_47:
    5acc:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_48:
    5ad0:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_49:
    5ad4:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5ad5:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5ad6:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_50:
    5ad7:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_51:
    5adb:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5adc:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5add:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_52:
    5ade:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_53:
    5ae2:	44 49 4e 45 52 5f 42 55 52 4e 45 44 00 	db     "DINER_BURNED",0x00
mom_cpp_variable_54:
    5aef:	4b 41 52 49 4e 5f 4b 49 44 4e 41 50 45 44 00 	db     "KARIN_KIDNAPED",0x00
mom_cpp_variable_55:
    5afe:	4b 41 52 49 4e 5f 46 4f 55 4e 44 5f 44 45 41 44 00 	db     "KARIN_FOUND_DEAD",0x00
mom_cpp_variable_56:
    5b0f:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_57:
    5b13:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_58:
    5b17:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_59:
    5b1b:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_60:
    5b1f:	42 55 52 4e 45 44 5f 54 56 5f 53 54 41 54 49 4f 4e 00 	db     "BURNED_TV_STATION",0x00
mom_cpp_variable_61:
    5b31:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_62:
    5b35:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5b36:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5b37:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_63:
    5b38:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_64:
    5b3c:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_65:
    5b40:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_66:
    5b44:	42 41 42 59 5f 53 43 52 45 41 4d 00 	db     "BABY_SCREAM",0x00
mom_cpp_variable_67:
    5b50:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_68:
    5b54:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_69:
    5b58:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_70:
    5b5c:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5b5d:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5b5e:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_71:
    5b5f:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_72:
    5b63:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5b64:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5b65:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_73:
    5b66:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_74:
    5b6a:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_75:
    5b6e:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_76:
    5b72:	53 43 52 41 54 43 48 45 44 5f 54 55 43 4b 45 52 00 	db     "SCRATCHED_TUCKER",0x00
mom_cpp_variable_77:
    5b83:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_78:
    5b87:	42 41 52 42 45 52 5f 50 4f 4c 45 5f 53 54 4f 4c 45 4e 00 	db     "BARBER_POLE_STOLEN",0x00
mom_cpp_variable_79:
    5b9a:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_80:
    5b9e:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_81:
    5ba2:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_82:
    5ba6:	42 4f 4c 54 5f 4f 46 5f 43 4c 4f 54 48 5f 54 41 4b 45 4e 00 	db     "BOLT_OF_CLOTH_TAKEN",0x00
mom_cpp_variable_83:
    5bba:	53 50 41 52 4b 59 00 	db     "SPARKY",0x00
mom_cpp_variable_84:
    5bc1:	46 49 52 45 4d 41 4e 32 00 	db     "FIREMAN2",0x00
mom_cpp_variable_85:
    5bca:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_86:
    5bce:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_87:
    5bd2:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5bd3:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5bd4:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_88:
    5bd5:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_89:
    5bd9:	44 49 4e 45 52 5f 42 55 52 4e 45 44 00 	db     "DINER_BURNED",0x00
mom_cpp_variable_90:
    5be6:	4b 41 52 49 4e 5f 46 4f 55 4e 44 5f 41 4c 49 56 45 00 	db     "KARIN_FOUND_ALIVE",0x00
mom_cpp_variable_91:
    5bf8:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_92:
    5bfc:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_93:
    5c00:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_94:
    5c04:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_95:
    5c08:	50 43 5f 45 53 43 41 50 45 44 5f 4a 41 49 4c 00 	db     "PC_ESCAPED_JAIL",0x00
mom_cpp_variable_96:
    5c18:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_97:
    5c1c:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5c1d:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5c1e:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_98:
    5c1f:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_99:
    5c23:	4b 41 52 49 4e 5f 4b 49 44 4e 41 50 45 44 00 	db     "KARIN_KIDNAPED",0x00
mom_cpp_variable_100:
    5c32:	4b 41 52 49 4e 5f 46 4f 55 4e 44 5f 44 45 41 44 00 	db     "KARIN_FOUND_DEAD",0x00
mom_cpp_variable_101:
    5c43:	4b 41 52 49 4e 5f 46 4f 55 4e 44 5f 41 4c 49 56 45 00 	db     "KARIN_FOUND_ALIVE",0x00
mom_cpp_variable_102:
    5c55:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_103:
    5c59:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_104:
    5c5d:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_105:
    5c61:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_106:
    5c65:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5c66:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5c67:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_107:
    5c68:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_108:
    5c6c:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5c6d:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5c6e:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_109:
    5c6f:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_110:
    5c73:	4b 41 52 49 4e 5f 46 4f 55 4e 44 5f 41 4c 49 56 45 00 	db     "KARIN_FOUND_ALIVE",0x00
mom_cpp_variable_111:
    5c85:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_112:
    5c89:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5c8a:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5c8b:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_113:
    5c8c:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_114:
    5c90:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5c91:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5c92:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_115:
    5c93:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_116:
    5c97:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5c98:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5c99:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_117:
    5c9a:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_118:
    5c9e:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_119:
    5ca2:	53 54 45 50 48 5f 4d 49 44 47 41 4d 45 5f 50 4c 41 59 45 44 00 	db     "STEPH_MIDGAME_PLAYED",0x00
mom_cpp_variable_120:
    5cb7:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_121:
    5cbb:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5cbc:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5cbd:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_122:
    5cbe:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_123:
    5cc2:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_124:
    5cc6:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5cc7:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5cc8:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_125:
    5cc9:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_126:
    5ccd:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5cce:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5ccf:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_127:
    5cd0:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_128:
    5cd4:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_129:
    5cd8:	4b 41 52 49 4e 5f 46 4f 55 4e 44 5f 44 45 41 44 00 	db     "KARIN_FOUND_DEAD",0x00
mom_cpp_variable_130:
    5ce9:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_131:
    5ced:	4b 5f 50 55 52 53 45 00 	db     "K_PURSE",0x00
mom_cpp_variable_132:
    5cf5:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5cf6:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5cf7:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_133:
    5cf8:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5cf9:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5cfa:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_134:
    5cfb:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5cfc:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5cfd:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_135:
    5cfe:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_136:
    5d02:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_137:
    5d06:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5d07:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5d08:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_138:
    5d09:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_139:
    5d0d:	44 49 4e 45 52 5f 42 55 52 4e 45 44 00 	db     "DINER_BURNED",0x00
mom_cpp_variable_140:
    5d1a:	45 44 4e 41 00       	db     "EDNA",0x00
mom_cpp_variable_141:
    5d1f:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_142:
    5d23:	42 55 54 43 48 45 52 00 	db     "BUTCHER",0x00
mom_cpp_variable_143:
    5d2b:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_144:
    5d2f:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mom_cpp_variable_145:
    5d38:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_146:
    5d3c:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5d3d:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5d3e:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_147:
    5d3f:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_148:
    5d43:	4a 49 4d 4d 59 00    	db     "JIMMY",0x00
mom_cpp_variable_149:
    5d49:	4a 49 4d 4d 59 5f 41 54 54 41 43 4b 45 44 00 	db     "JIMMY_ATTACKED",0x00
mom_cpp_variable_150:
    5d58:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_151:
    5d5c:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5d5d:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5d5e:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_152:
    5d5f:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_153:
    5d63:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_154:
    5d67:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_155:
    5d6b:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_156:
    5d6f:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_157:
    5d73:	57 41 53 50 5f 57 4f 4d 41 4e 00 	db     "WASP_WOMAN",0x00
mom_cpp_variable_158:
    5d7e:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_159:
    5d82:	53 54 45 50 48 41 4e 49 45 5f 49 53 5f 44 45 41 44 00 	db     "STEPHANIE_IS_DEAD",0x00
mom_cpp_variable_160:
    5d94:	53 54 45 50 48 5f 4d 49 44 47 41 4d 45 5f 50 4c 41 59 45 44 00 	db     "STEPH_MIDGAME_PLAYED",0x00
mom_cpp_variable_161:
    5da9:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_162:
    5dad:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5dae:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5daf:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_163:
    5db0:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_164:
    5db4:	44 41 59 5f 35 00    	db     "DAY_5",0x00
mom_cpp_variable_165:
    5dba:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_166:
    5dbe:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5dbf:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5dc0:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_167:
    5dc1:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_168:
    5dc5:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_169:
    5dc9:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_170:
    5dcd:	44 41 59 5f 36 00    	db     "DAY_6",0x00
mom_cpp_variable_171:
    5dd3:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_172:
    5dd7:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_173:
    5ddb:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_174:
    5ddc:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5ddd:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5dde:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_175:
    5ddf:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_176:
    5de3:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5de4:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5de5:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_177:
    5de6:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_178:
    5dea:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5deb:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5dec:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_179:
    5ded:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_180:
    5df1:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5df2:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5df3:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_181:
    5df4:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_182:
    5df8:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5df9:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5dfa:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_183:
    5dfb:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_184:
    5dff:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5e00:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5e01:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_185:
    5e02:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_186:
    5e06:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5e07:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5e08:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_187:
    5e09:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_188:
    5e0d:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_189:
    5e11:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5e12:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5e13:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_190:
    5e14:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_191:
    5e18:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_192:
    5e1c:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5e1d:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5e1e:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_193:
    5e1f:	42 41 42 59 5f 47 55 52 47 4c 45 00 	db     "BABY_GURGLE",0x00
mom_cpp_variable_194:
    5e2b:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_195:
    5e2f:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_196:
    5e33:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5e34:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5e35:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_197:
    5e36:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_198:
    5e3a:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5e3b:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5e3c:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_199:
    5e3d:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_200:
    5e41:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5e42:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5e43:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_201:
    5e44:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_202:
    5e48:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5e49:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5e4a:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_203:
    5e4b:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_204:
    5e4f:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5e50:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5e51:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_205:
    5e52:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_206:
    5e56:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5e57:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5e58:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_207:
    5e59:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_208:
    5e5d:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5e5e:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5e5f:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_209:
    5e60:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_210:
    5e64:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5e65:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5e66:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_211:
    5e67:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_212:
    5e6b:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5e6c:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5e6d:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_213:
    5e6e:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_214:
    5e72:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5e73:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5e74:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_215:
    5e75:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_216:
    5e79:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5e7a:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5e7b:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_217:
    5e7c:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_218:
    5e80:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5e81:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5e82:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_219:
    5e83:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_220:
    5e87:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5e88:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5e89:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_221:
    5e8a:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_222:
    5e8e:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5e8f:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5e90:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_223:
    5e91:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_224:
    5e95:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5e96:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5e97:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_225:
    5e98:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_226:
    5e9c:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5e9d:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5e9e:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_227:
    5e9f:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_228:
    5ea3:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5ea4:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5ea5:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_229:
    5ea6:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_230:
    5eaa:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5eab:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5eac:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_231:
    5ead:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_232:
    5eb1:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5eb2:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5eb3:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_233:
    5eb4:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_234:
    5eb8:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_235:
    5ebc:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5ebd:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5ebe:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_236:
    5ebf:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_237:
    5ec3:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5ec4:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5ec5:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_238:
    5ec6:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_239:
    5eca:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5ecb:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5ecc:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_240:
    5ecd:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_241:
    5ed1:	48 45 41 52 44 5f 44 41 44 5f 4d 4f 41 4e 00 	db     "HEARD_DAD_MOAN",0x00
mom_cpp_variable_242:
    5ee0:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5ee1:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5ee2:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_243:
    5ee3:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_244:
    5ee7:	53 54 45 50 48 5f 4d 49 44 47 41 4d 45 5f 50 4c 41 59 45 44 00 	db     "STEPH_MIDGAME_PLAYED",0x00
mom_cpp_variable_245:
    5efc:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5efd:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5efe:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_246:
    5eff:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_247:
    5f03:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5f04:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5f05:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_248:
    5f06:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_249:
    5f0a:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_250:
    5f0e:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_251:
    5f12:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5f13:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5f14:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_252:
    5f15:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_253:
    5f19:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5f1a:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5f1b:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_254:
    5f1c:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_255:
    5f20:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5f21:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5f22:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_256:
    5f23:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_257:
    5f27:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5f28:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5f29:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_258:
    5f2a:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_259:
    5f2e:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5f2f:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5f30:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_260:
    5f31:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_261:
    5f35:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5f36:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5f37:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_262:
    5f38:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_263:
    5f3c:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5f3d:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5f3e:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_264:
    5f3f:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_265:
    5f43:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_266:
    5f47:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5f48:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5f49:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_267:
    5f4a:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_268:
    5f4e:	53 54 45 50 48 5f 4d 49 44 47 41 4d 45 5f 50 4c 41 59 45 44 00 	db     "STEPH_MIDGAME_PLAYED",0x00
mom_cpp_variable_269:
    5f63:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_270:
    5f67:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_271:
    5f6b:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_272:
    5f6f:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_273:
    5f73:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_274:
    5f77:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5f78:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5f79:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_275:
    5f7a:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_276:
    5f7e:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_277:
    5f82:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5f83:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5f84:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_278:
    5f85:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_279:
    5f89:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_280:
    5f8d:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_281:
    5f91:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5f92:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5f93:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_282:
    5f94:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_283:
    5f98:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5f99:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5f9a:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_284:
    5f9b:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_285:
    5f9f:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5fa0:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5fa1:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_286:
    5fa2:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_287:
    5fa6:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_288:
    5faa:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5fab:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5fac:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_289:
    5fad:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_290:
    5fb1:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_291:
    5fb5:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5fb6:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5fb7:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_292:
    5fb8:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_293:
    5fbc:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_294:
    5fc0:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5fc1:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5fc2:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_295:
    5fc3:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_296:
    5fc7:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5fc8:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5fc9:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_297:
    5fca:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_298:
    5fce:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_299:
    5fd2:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5fd3:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5fd4:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_300:
    5fd5:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_301:
    5fd9:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5fda:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5fdb:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_302:
    5fdc:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_303:
    5fe0:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5fe1:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5fe2:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_304:
    5fe3:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_305:
    5fe7:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5fe8:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5fe9:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_306:
    5fea:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_307:
    5fee:	49 46 5f 53 41 57 5f 54 48 45 5f 53 4c 41 53 48 45 53 5f 4f 4e 5f 54 48 45 5f 42 4f 44 59 00 	db     "IF_SAW_THE_SLASHES_ON_THE_BODY",0x00
mom_cpp_variable_308:
    600d:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    600e:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    600f:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_309:
    6010:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_310:
    6014:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    6015:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    6016:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_311:
    6017:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_312:
    601b:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    601c:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    601d:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_313:
    601e:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_314:
    6022:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    6023:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    6024:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_315:
    6025:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_316:
    6029:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    602a:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    602b:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mom_cpp_variable_317:
    602c:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_318:
    6030:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_319:
    6034:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_320:
    6038:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_321:
    603c:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_322:
    6040:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_323:
    6044:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_324:
    6048:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_325:
    604c:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_326:
    6050:	44 41 59 5f 46 4c 41 47 00 	db     "DAY_FLAG",0x00
mom_cpp_variable_327:
    6059:	4a 49 4d 4d 59 00    	db     "JIMMY",0x00
mom_cpp_variable_328:
    605f:	4d 4f 4d 00          	db     "MOM",0x00
mom_cpp_variable_329:
    6063:	4d 4f 4d 00          	db     "MOM",0x00
    6067:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 48 (D:\SOURCE\mom.cpp)                                        -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 48: D:\SOURCE\mom.cpp                                                -
;                                                                              -
;-------------------------------------------------------------------------------
MOM:                                                                                                ; access size: DWORD
   22d74:	00 00 00 00          	dd     0x00000000
MOM_variable_1:                                                                                     ; access size: DWORD
   22d78:	00 00 00 00          	dd     0x00000000
MOM_variable_2:                                                                                     ; access size: DWORD
   22d7c:	00 00 00 00          	dd     0x00000000
MOM_variable_3:                                                                                     ; access size: DWORD
   22d80:	00 00 00 00          	dd     0x00000000
MOM_variable_4:                                                                                     ; access size: DWORD
   22d84:	00 00 00 00          	dd     0x00000000
MOM_variable_5:                                                                                     ; access size: DWORD
   22d88:	00 00 00 00          	dd     0x00000000
MOM_variable_6:                                                                                     ; access size: DWORD
   22d8c:	00 00 00 00          	dd     0x00000000
MOM_variable_7:                                                                                     ; access size: DWORD
   22d90:	00 00 00 00          	dd     0x00000000
MOM_variable_8:                                                                                     ; access size: DWORD
   22d94:	00 00 00 00          	dd     0x00000000
MOM_variable_9:                                                                                     ; access size: DWORD
   22d98:	00 00 00 00          	dd     0x00000000
MOM_variable_10:                                                                                    ; access size: DWORD
   22d9c:	00 00 00 00          	dd     0x00000000
MOM_variable_11:                                                                                    ; access size: DWORD
   22da0:	00 00 00 00          	dd     0x00000000
MOM_variable_12:                                                                                    ; access size: DWORD
   22da4:	00 00 00 00          	dd     0x00000000
MOM_variable_13:                                                                                    ; access size: DWORD
   22da8:	00 00 00 00          	dd     0x00000000
MOM_variable_14:                                                                                    ; access size: DWORD
   22dac:	00 00 00 00          	dd     0x00000000
MOM_variable_15:                                                                                    ; access size: DWORD
   22db0:	00 00 00 00          	dd     0x00000000
MOM_variable_16:                                                                                    ; access size: DWORD
   22db4:	00 00 00 00          	dd     0x00000000
MOM_variable_17:                                                                                    ; access size: DWORD
   22db8:	00 00 00 00          	dd     0x00000000
MOM_variable_18:                                                                                    ; access size: DWORD
   22dbc:	00 00 00 00          	dd     0x00000000
MOM_variable_19:                                                                                    ; access size: DWORD
   22dc0:	00 00 00 00          	dd     0x00000000
MOM_variable_20:                                                                                    ; access size: DWORD
   22dc4:	00 00 00 00          	dd     0x00000000
MOM_variable_21:                                                                                    ; access size: DWORD
   22dc8:	00 00 00 00          	dd     0x00000000

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 48 (D:\SOURCE\mom.cpp)                                        -
;                                                                              -
;-------------------------------------------------------------------------------