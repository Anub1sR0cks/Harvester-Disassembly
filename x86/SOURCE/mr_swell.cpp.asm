;-------------------------------------------------------------------------------
;                                                                              -
;  Module 23: D:\SOURCE\mr_swell.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function 'talk_to_MR_PETE_SWELL'              -
;-------------------------------------------------
talk_to_MR_PETE_SWELL:
   19110:	53                   	push   ebx
   19111:	51                   	push   ecx
   19112:	52                   	push   edx
   19113:	56                   	push   esi
   19114:	57                   	push   edi
   19115:	55                   	push   ebp
   19116:	be f8 30 00 00       	mov    esi,@obj3:mr_swell_cpp_variable_1                            ; fixup: num: 3374, src obj: 1, src ofs: 0x19117, dst obj: 3, dst ofs: 0x30f8
   1911b:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 3373, src obj: 1, src ofs: 0x1911c, dst obj: 3, dst ofs: 0x295c0
   19120:	57                   	push   edi
talk_to_MR_PETE_SWELL_branch_1:
   19121:	8a 06                	mov    al,BYTE PTR [esi]
   19123:	88 07                	mov    BYTE PTR [edi],al
   19125:	3c 00                	cmp    al,0x0
   19127:	74 10                	je     talk_to_MR_PETE_SWELL_branch_2
   19129:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   1912c:	83 c6 02             	add    esi,0x2
   1912f:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   19132:	83 c7 02             	add    edi,0x2
   19135:	3c 00                	cmp    al,0x0
   19137:	75 e8                	jne    talk_to_MR_PETE_SWELL_branch_1
talk_to_MR_PETE_SWELL_branch_2:
   19139:	5f                   	pop    edi
   1913a:	8b 15 bc 94 02 00    	mov    edx,DWORD PTR ds:@obj3:showing_item                          ; fixup: num: 3372, src obj: 1, src ofs: 0x1913c, dst obj: 3, dst ofs: 0x294bc
   19140:	85 d2                	test   edx,edx
   19142:	0f 84 76 01 00 00    	je     talk_to_MR_PETE_SWELL_branch_12
   19148:	89 d0                	mov    eax,edx
   1914a:	ba f9 30 00 00       	mov    edx,@obj3:mr_swell_cpp_variable_2                            ; fixup: num: 3371, src obj: 1, src ofs: 0x1914b, dst obj: 3, dst ofs: 0x30f9
   1914f:	e8 dc d2 05 00       	call   strcmp_
   19154:	85 c0                	test   eax,eax
   19156:	75 1e                	jne    talk_to_MR_PETE_SWELL_branch_3
   19158:	ba 01 00 00 00       	mov    edx,0x1
   1915d:	bb 01 00 00 00       	mov    ebx,0x1
   19162:	e8 09 f2 00 00       	call   SHOWN_PHOTO_OF_WHALEY_HERRILL_AROUND
   19167:	ba 11 31 00 00       	mov    edx,@obj3:mr_swell_cpp_variable_3                            ; fixup: num: 3370, src obj: 1, src ofs: 0x19168, dst obj: 3, dst ofs: 0x3111
   1916c:	b8 c6 0f 00 00       	mov    eax,0xfc6
   19171:	e9 3a 01 00 00       	jmp    talk_to_MR_PETE_SWELL_branch_11
talk_to_MR_PETE_SWELL_branch_3:
   19176:	ba 17 31 00 00       	mov    edx,@obj3:mr_swell_cpp_variable_4                            ; fixup: num: 3369, src obj: 1, src ofs: 0x19177, dst obj: 3, dst ofs: 0x3117
   1917b:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 3368, src obj: 1, src ofs: 0x1917c, dst obj: 3, dst ofs: 0x294bc
   19180:	e8 ab d2 05 00       	call   strcmp_
   19185:	85 c0                	test   eax,eax
   19187:	74 13                	je     talk_to_MR_PETE_SWELL_branch_4
   19189:	ba 24 31 00 00       	mov    edx,@obj3:mr_swell_cpp_variable_5                            ; fixup: num: 3367, src obj: 1, src ofs: 0x1918a, dst obj: 3, dst ofs: 0x3124
   1918e:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 3366, src obj: 1, src ofs: 0x1918f, dst obj: 3, dst ofs: 0x294bc
   19193:	e8 98 d2 05 00       	call   strcmp_
   19198:	85 c0                	test   eax,eax
   1919a:	75 22                	jne    talk_to_MR_PETE_SWELL_branch_5
talk_to_MR_PETE_SWELL_branch_4:
   1919c:	ba 01 00 00 00       	mov    edx,0x1
   191a1:	31 c0                	xor    eax,eax
   191a3:	e8 b8 f1 00 00       	call   SHOWN_PHOTO_OF_CORPSE_AROUND
   191a8:	31 db                	xor    ebx,ebx
   191aa:	ba 35 31 00 00       	mov    edx,@obj3:mr_swell_cpp_variable_6                            ; fixup: num: 3365, src obj: 1, src ofs: 0x191ab, dst obj: 3, dst ofs: 0x3135
   191af:	b8 cd 0f 00 00       	mov    eax,0xfcd
   191b4:	e8 d7 14 05 00       	call   play_wav
   191b9:	e9 0e 05 00 00       	jmp    talk_to_MR_PETE_SWELL_branch_38
talk_to_MR_PETE_SWELL_branch_5:
   191be:	ba 3b 31 00 00       	mov    edx,@obj3:mr_swell_cpp_variable_7                            ; fixup: num: 3389, src obj: 1, src ofs: 0x191bf, dst obj: 3, dst ofs: 0x313b
   191c3:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 3388, src obj: 1, src ofs: 0x191c4, dst obj: 3, dst ofs: 0x294bc
   191c8:	e8 63 d2 05 00       	call   strcmp_
   191cd:	85 c0                	test   eax,eax
   191cf:	74 13                	je     talk_to_MR_PETE_SWELL_branch_6
   191d1:	ba 42 31 00 00       	mov    edx,@obj3:mr_swell_cpp_variable_8                            ; fixup: num: 3387, src obj: 1, src ofs: 0x191d2, dst obj: 3, dst ofs: 0x3142
   191d6:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 3386, src obj: 1, src ofs: 0x191d7, dst obj: 3, dst ofs: 0x294bc
   191db:	e8 50 d2 05 00       	call   strcmp_
   191e0:	85 c0                	test   eax,eax
   191e2:	75 4b                	jne    talk_to_MR_PETE_SWELL_branch_7
talk_to_MR_PETE_SWELL_branch_6:
   191e4:	b8 4a 31 00 00       	mov    eax,@obj3:mr_swell_cpp_variable_9                            ; fixup: num: 3385, src obj: 1, src ofs: 0x191e5, dst obj: 3, dst ofs: 0x314a
   191e9:	e8 a2 35 05 00       	call   check_script_flag
   191ee:	84 c0                	test   al,al
   191f0:	74 3d                	je     talk_to_MR_PETE_SWELL_branch_7
   191f2:	ba 01 00 00 00       	mov    edx,0x1
   191f7:	31 c0                	xor    eax,eax
   191f9:	e8 52 f1 00 00       	call   SHOWN_LEDGERS_TO_ANYONE_OTHER_THAN_SHERIFF
   191fe:	31 db                	xor    ebx,ebx
   19200:	ba 5c 31 00 00       	mov    edx,@obj3:mr_swell_cpp_variable_10                           ; fixup: num: 3384, src obj: 1, src ofs: 0x19201, dst obj: 3, dst ofs: 0x315c
   19205:	b8 d4 0f 00 00       	mov    eax,0xfd4
   1920a:	e8 81 14 05 00       	call   play_wav
   1920f:	ba 62 31 00 00       	mov    edx,@obj3:mr_swell_cpp_variable_11                           ; fixup: num: 3383, src obj: 1, src ofs: 0x19210, dst obj: 3, dst ofs: 0x3162
   19214:	b8 d9 0f 00 00       	mov    eax,0xfd9
   19219:	31 db                	xor    ebx,ebx
   1921b:	e8 70 14 05 00       	call   play_wav
   19220:	ba 65 31 00 00       	mov    edx,@obj3:mr_swell_cpp_variable_12                           ; fixup: num: 3382, src obj: 1, src ofs: 0x19221, dst obj: 3, dst ofs: 0x3165
   19225:	b8 de 0f 00 00       	mov    eax,0xfde
   1922a:	e9 7f 00 00 00       	jmp    talk_to_MR_PETE_SWELL_branch_10
talk_to_MR_PETE_SWELL_branch_7:
   1922f:	ba 6b 31 00 00       	mov    edx,@obj3:mr_swell_cpp_variable_13                           ; fixup: num: 3381, src obj: 1, src ofs: 0x19230, dst obj: 3, dst ofs: 0x316b
   19234:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 3380, src obj: 1, src ofs: 0x19235, dst obj: 3, dst ofs: 0x294bc
   19239:	e8 f2 d1 05 00       	call   strcmp_
   1923e:	85 c0                	test   eax,eax
   19240:	74 39                	je     talk_to_MR_PETE_SWELL_branch_8
   19242:	ba 70 31 00 00       	mov    edx,@obj3:mr_swell_cpp_variable_14                           ; fixup: num: 3379, src obj: 1, src ofs: 0x19243, dst obj: 3, dst ofs: 0x3170
   19247:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 3378, src obj: 1, src ofs: 0x19248, dst obj: 3, dst ofs: 0x294bc
   1924c:	e8 df d1 05 00       	call   strcmp_
   19251:	85 c0                	test   eax,eax
   19253:	74 26                	je     talk_to_MR_PETE_SWELL_branch_8
   19255:	ba 7f 31 00 00       	mov    edx,@obj3:mr_swell_cpp_variable_15                           ; fixup: num: 3377, src obj: 1, src ofs: 0x19256, dst obj: 3, dst ofs: 0x317f
   1925a:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 3376, src obj: 1, src ofs: 0x1925b, dst obj: 3, dst ofs: 0x294bc
   1925f:	e8 cc d1 05 00       	call   strcmp_
   19264:	85 c0                	test   eax,eax
   19266:	74 13                	je     talk_to_MR_PETE_SWELL_branch_8
   19268:	ba 89 31 00 00       	mov    edx,@obj3:mr_swell_cpp_variable_16                           ; fixup: num: 3375, src obj: 1, src ofs: 0x19269, dst obj: 3, dst ofs: 0x3189
   1926d:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 3398, src obj: 1, src ofs: 0x1926e, dst obj: 3, dst ofs: 0x294bc
   19272:	e8 b9 d1 05 00       	call   strcmp_
   19277:	85 c0                	test   eax,eax
   19279:	75 29                	jne    talk_to_MR_PETE_SWELL_branch_9
talk_to_MR_PETE_SWELL_branch_8:
   1927b:	ba 01 00 00 00       	mov    edx,0x1
   19280:	31 c0                	xor    eax,eax
   19282:	bb 01 00 00 00       	mov    ebx,0x1
   19287:	e8 a4 f0 00 00       	call   SHOWN_EVIDENCE_OF_BLACKMAIL_AROUND
   1928c:	ba 9d 31 00 00       	mov    edx,@obj3:mr_swell_cpp_variable_17                           ; fixup: num: 3397, src obj: 1, src ofs: 0x1928d, dst obj: 3, dst ofs: 0x319d
   19291:	b8 e6 0f 00 00       	mov    eax,0xfe6
   19296:	e8 f5 13 05 00       	call   play_wav
   1929b:	31 c0                	xor    eax,eax
   1929d:	5d                   	pop    ebp
   1929e:	5f                   	pop    edi
   1929f:	5e                   	pop    esi
   192a0:	5a                   	pop    edx
   192a1:	59                   	pop    ecx
   192a2:	5b                   	pop    ebx
   192a3:	c3                   	ret    
talk_to_MR_PETE_SWELL_branch_9:
   192a4:	ba a3 31 00 00       	mov    edx,@obj3:mr_swell_cpp_variable_18                           ; fixup: num: 3396, src obj: 1, src ofs: 0x192a5, dst obj: 3, dst ofs: 0x31a3
   192a9:	b8 c0 0f 00 00       	mov    eax,0xfc0
talk_to_MR_PETE_SWELL_branch_10:
   192ae:	31 db                	xor    ebx,ebx
talk_to_MR_PETE_SWELL_branch_11:
   192b0:	e8 db 13 05 00       	call   play_wav
   192b5:	31 c0                	xor    eax,eax
   192b7:	5d                   	pop    ebp
   192b8:	5f                   	pop    edi
   192b9:	5e                   	pop    esi
   192ba:	5a                   	pop    edx
   192bb:	59                   	pop    ecx
   192bc:	5b                   	pop    ebx
   192bd:	c3                   	ret    
talk_to_MR_PETE_SWELL_branch_12:
   192be:	a1 30 2c 02 00       	mov    eax,ds:@obj3:MR_PETE_SWELL                                   ; fixup: num: 3395, src obj: 1, src ofs: 0x192bf, dst obj: 3, dst ofs: 0x22c30
   192c3:	85 c0                	test   eax,eax
   192c5:	0f 84 9d 00 00 00    	je     talk_to_MR_PETE_SWELL_branch_15
   192cb:	bb 01 00 00 00       	mov    ebx,0x1
   192d0:	b8 61 0f 00 00       	mov    eax,0xf61
   192d5:	89 15 30 2c 02 00    	mov    DWORD PTR ds:@obj3:MR_PETE_SWELL,edx                         ; fixup: num: 3394, src obj: 1, src ofs: 0x192d7, dst obj: 3, dst ofs: 0x22c30
   192db:	ba a9 31 00 00       	mov    edx,@obj3:mr_swell_cpp_variable_19                           ; fixup: num: 3393, src obj: 1, src ofs: 0x192dc, dst obj: 3, dst ofs: 0x31a9
   192e0:	e8 ab 13 05 00       	call   play_wav
   192e5:	ba af 31 00 00       	mov    edx,@obj3:mr_swell_cpp_variable_20                           ; fixup: num: 3392, src obj: 1, src ofs: 0x192e6, dst obj: 3, dst ofs: 0x31af
   192ea:	b8 65 0f 00 00       	mov    eax,0xf65
   192ef:	31 db                	xor    ebx,ebx
   192f1:	e8 9a 13 05 00       	call   play_wav
   192f6:	bb 01 00 00 00       	mov    ebx,0x1
   192fb:	ba b2 31 00 00       	mov    edx,@obj3:mr_swell_cpp_variable_21                           ; fixup: num: 3391, src obj: 1, src ofs: 0x192fc, dst obj: 3, dst ofs: 0x31b2
   19300:	b8 69 0f 00 00       	mov    eax,0xf69
   19305:	e8 86 13 05 00       	call   play_wav
   1930a:	ba b8 31 00 00       	mov    edx,@obj3:mr_swell_cpp_variable_22                           ; fixup: num: 3390, src obj: 1, src ofs: 0x1930b, dst obj: 3, dst ofs: 0x31b8
   1930f:	b8 50 3d 00 00       	mov    eax,0x3d50
   19314:	31 db                	xor    ebx,ebx
   19316:	e8 75 13 05 00       	call   play_wav
   1931b:	bb 01 00 00 00       	mov    ebx,0x1
   19320:	ba bb 31 00 00       	mov    edx,@obj3:mr_swell_cpp_variable_23                           ; fixup: num: 3407, src obj: 1, src ofs: 0x19321, dst obj: 3, dst ofs: 0x31bb
   19325:	b8 72 0f 00 00       	mov    eax,0xf72
   1932a:	e8 61 13 05 00       	call   play_wav
   1932f:	ba c1 31 00 00       	mov    edx,@obj3:mr_swell_cpp_variable_24                           ; fixup: num: 3406, src obj: 1, src ofs: 0x19330, dst obj: 3, dst ofs: 0x31c1
   19334:	b8 7f 0f 00 00       	mov    eax,0xf7f
   19339:	31 db                	xor    ebx,ebx
   1933b:	e8 50 13 05 00       	call   play_wav
   19340:	b8 1d 02 00 00       	mov    eax,0x21d
   19345:	e8 56 0e 01 00       	call   GetDlgFileString
   1934a:	89 c6                	mov    esi,eax
   1934c:	57                   	push   edi
talk_to_MR_PETE_SWELL_branch_13:
   1934d:	8a 06                	mov    al,BYTE PTR [esi]
   1934f:	88 07                	mov    BYTE PTR [edi],al
   19351:	3c 00                	cmp    al,0x0
   19353:	74 10                	je     talk_to_MR_PETE_SWELL_branch_14
   19355:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   19358:	83 c6 02             	add    esi,0x2
   1935b:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   1935e:	83 c7 02             	add    edi,0x2
   19361:	3c 00                	cmp    al,0x0
   19363:	75 e8                	jne    talk_to_MR_PETE_SWELL_branch_13
talk_to_MR_PETE_SWELL_branch_14:
   19365:	5f                   	pop    edi
   19366:	eb 11                	jmp    talk_to_MR_PETE_SWELL_branch_16
talk_to_MR_PETE_SWELL_branch_15:
   19368:	ba c7 31 00 00       	mov    edx,@obj3:mr_swell_cpp_variable_25                           ; fixup: num: 3405, src obj: 1, src ofs: 0x19369, dst obj: 3, dst ofs: 0x31c7
   1936d:	b8 b3 0f 00 00       	mov    eax,0xfb3
   19372:	31 db                	xor    ebx,ebx
   19374:	e8 17 13 05 00       	call   play_wav
talk_to_MR_PETE_SWELL_branch_16:
   19379:	b8 cd 31 00 00       	mov    eax,@obj3:mr_swell_cpp_variable_26                           ; fixup: num: 3404, src obj: 1, src ofs: 0x1937a, dst obj: 3, dst ofs: 0x31cd
   1937e:	e8 0d 34 05 00       	call   check_script_flag
   19383:	84 c0                	test   al,al
   19385:	74 4d                	je     talk_to_MR_PETE_SWELL_branch_17
   19387:	83 3d 34 2c 02 00 00 	cmp    DWORD PTR ds:@obj3:MR_PETE_SWELL_variable_1,0x0              ; fixup: num: 3403, src obj: 1, src ofs: 0x19389, dst obj: 3, dst ofs: 0x22c34
   1938e:	75 44                	jne    talk_to_MR_PETE_SWELL_branch_17
   19390:	be 01 00 00 00       	mov    esi,0x1
   19395:	bb 03 00 00 00       	mov    ebx,0x3
   1939a:	ba e2 31 00 00       	mov    edx,@obj3:mr_swell_cpp_variable_27                           ; fixup: num: 3402, src obj: 1, src ofs: 0x1939b, dst obj: 3, dst ofs: 0x31e2
   1939f:	b8 f7 0f 00 00       	mov    eax,0xff7
   193a4:	89 35 34 2c 02 00    	mov    DWORD PTR ds:@obj3:MR_PETE_SWELL_variable_1,esi              ; fixup: num: 3401, src obj: 1, src ofs: 0x193a6, dst obj: 3, dst ofs: 0x22c34
   193aa:	e8 e1 12 05 00       	call   play_wav
   193af:	ba e8 31 00 00       	mov    edx,@obj3:mr_swell_cpp_variable_28                           ; fixup: num: 3400, src obj: 1, src ofs: 0x193b0, dst obj: 3, dst ofs: 0x31e8
   193b4:	b8 fc 0f 00 00       	mov    eax,0xffc
   193b9:	31 db                	xor    ebx,ebx
   193bb:	e8 d0 12 05 00       	call   play_wav
   193c0:	bb 03 00 00 00       	mov    ebx,0x3
   193c5:	ba eb 31 00 00       	mov    edx,@obj3:mr_swell_cpp_variable_29                           ; fixup: num: 3399, src obj: 1, src ofs: 0x193c6, dst obj: 3, dst ofs: 0x31eb
   193ca:	b8 01 10 00 00       	mov    eax,0x1001
   193cf:	e8 bc 12 05 00       	call   play_wav
talk_to_MR_PETE_SWELL_branch_17:
   193d4:	b8 f1 31 00 00       	mov    eax,@obj3:mr_swell_cpp_variable_30                           ; fixup: num: 3286, src obj: 1, src ofs: 0x193d5, dst obj: 3, dst ofs: 0x31f1
   193d9:	e8 b2 33 05 00       	call   check_script_flag
   193de:	84 c0                	test   al,al
   193e0:	74 39                	je     talk_to_MR_PETE_SWELL_branch_18
   193e2:	83 3d 38 2c 02 00 00 	cmp    DWORD PTR ds:@obj3:MR_PETE_SWELL_variable_2,0x0              ; fixup: num: 3418, src obj: 1, src ofs: 0x193e4, dst obj: 3, dst ofs: 0x22c38
   193e9:	75 30                	jne    talk_to_MR_PETE_SWELL_branch_18
   193eb:	bd 01 00 00 00       	mov    ebp,0x1
   193f0:	bb 03 00 00 00       	mov    ebx,0x3
   193f5:	ba 04 32 00 00       	mov    edx,@obj3:mr_swell_cpp_variable_31                           ; fixup: num: 3417, src obj: 1, src ofs: 0x193f6, dst obj: 3, dst ofs: 0x3204
   193fa:	b8 0b 10 00 00       	mov    eax,0x100b
   193ff:	89 2d 38 2c 02 00    	mov    DWORD PTR ds:@obj3:MR_PETE_SWELL_variable_2,ebp              ; fixup: num: 3416, src obj: 1, src ofs: 0x19401, dst obj: 3, dst ofs: 0x22c38
   19405:	e8 86 12 05 00       	call   play_wav
   1940a:	ba 0a 32 00 00       	mov    edx,@obj3:mr_swell_cpp_variable_32                           ; fixup: num: 3415, src obj: 1, src ofs: 0x1940b, dst obj: 3, dst ofs: 0x320a
   1940f:	b8 0c 10 00 00       	mov    eax,0x100c
   19414:	31 db                	xor    ebx,ebx
   19416:	e8 75 12 05 00       	call   play_wav
talk_to_MR_PETE_SWELL_branch_18:
   1941b:	b8 10 32 00 00       	mov    eax,@obj3:mr_swell_cpp_variable_33                           ; fixup: num: 3414, src obj: 1, src ofs: 0x1941c, dst obj: 3, dst ofs: 0x3210
   19420:	e8 6b 33 05 00       	call   check_script_flag
   19425:	84 c0                	test   al,al
   19427:	74 25                	je     talk_to_MR_PETE_SWELL_branch_19
   19429:	83 3d 3c 2c 02 00 00 	cmp    DWORD PTR ds:@obj3:MR_PETE_SWELL_variable_3,0x0              ; fixup: num: 3413, src obj: 1, src ofs: 0x1942b, dst obj: 3, dst ofs: 0x22c3c
   19430:	75 1c                	jne    talk_to_MR_PETE_SWELL_branch_19
   19432:	ba 01 00 00 00       	mov    edx,0x1
   19437:	b8 17 10 00 00       	mov    eax,0x1017
   1943c:	89 15 3c 2c 02 00    	mov    DWORD PTR ds:@obj3:MR_PETE_SWELL_variable_3,edx              ; fixup: num: 3412, src obj: 1, src ofs: 0x1943e, dst obj: 3, dst ofs: 0x22c3c
   19442:	89 d3                	mov    ebx,edx
   19444:	ba 24 32 00 00       	mov    edx,@obj3:mr_swell_cpp_variable_34                           ; fixup: num: 3411, src obj: 1, src ofs: 0x19445, dst obj: 3, dst ofs: 0x3224
   19449:	e8 42 12 05 00       	call   play_wav
talk_to_MR_PETE_SWELL_branch_19:
   1944e:	b8 2a 32 00 00       	mov    eax,@obj3:mr_swell_cpp_variable_35                           ; fixup: num: 3410, src obj: 1, src ofs: 0x1944f, dst obj: 3, dst ofs: 0x322a
   19453:	e8 38 33 05 00       	call   check_script_flag
   19458:	84 c0                	test   al,al
   1945a:	74 25                	je     talk_to_MR_PETE_SWELL_branch_20
   1945c:	83 3d 40 2c 02 00 00 	cmp    DWORD PTR ds:@obj3:MR_PETE_SWELL_variable_4,0x0              ; fixup: num: 3409, src obj: 1, src ofs: 0x1945e, dst obj: 3, dst ofs: 0x22c40
   19463:	75 1c                	jne    talk_to_MR_PETE_SWELL_branch_20
   19465:	b9 01 00 00 00       	mov    ecx,0x1
   1946a:	ba 3c 32 00 00       	mov    edx,@obj3:mr_swell_cpp_variable_36                           ; fixup: num: 3408, src obj: 1, src ofs: 0x1946b, dst obj: 3, dst ofs: 0x323c
   1946f:	b8 21 10 00 00       	mov    eax,0x1021
   19474:	89 cb                	mov    ebx,ecx
   19476:	89 0d 40 2c 02 00    	mov    DWORD PTR ds:@obj3:MR_PETE_SWELL_variable_4,ecx              ; fixup: num: 3294, src obj: 1, src ofs: 0x19478, dst obj: 3, dst ofs: 0x22c40
   1947c:	e8 0f 12 05 00       	call   play_wav
talk_to_MR_PETE_SWELL_branch_20:
   19481:	b8 42 32 00 00       	mov    eax,@obj3:mr_swell_cpp_variable_37                           ; fixup: num: 3293, src obj: 1, src ofs: 0x19482, dst obj: 3, dst ofs: 0x3242
   19486:	e8 05 33 05 00       	call   check_script_flag
   1948b:	84 c0                	test   al,al
   1948d:	74 28                	je     talk_to_MR_PETE_SWELL_branch_21
   1948f:	83 3d 44 2c 02 00 00 	cmp    DWORD PTR ds:@obj3:MR_PETE_SWELL_variable_5,0x0              ; fixup: num: 3292, src obj: 1, src ofs: 0x19491, dst obj: 3, dst ofs: 0x22c44
   19496:	75 1f                	jne    talk_to_MR_PETE_SWELL_branch_21
   19498:	bf 01 00 00 00       	mov    edi,0x1
   1949d:	bb 03 00 00 00       	mov    ebx,0x3
   194a2:	ba 51 32 00 00       	mov    edx,@obj3:mr_swell_cpp_variable_38                           ; fixup: num: 3291, src obj: 1, src ofs: 0x194a3, dst obj: 3, dst ofs: 0x3251
   194a7:	b8 29 10 00 00       	mov    eax,0x1029
   194ac:	89 3d 44 2c 02 00    	mov    DWORD PTR ds:@obj3:MR_PETE_SWELL_variable_5,edi              ; fixup: num: 3290, src obj: 1, src ofs: 0x194ae, dst obj: 3, dst ofs: 0x22c44
   194b2:	e8 d9 11 05 00       	call   play_wav
talk_to_MR_PETE_SWELL_branch_21:
   194b7:	be 57 32 00 00       	mov    esi,@obj3:mr_swell_cpp_variable_39                           ; fixup: num: 3289, src obj: 1, src ofs: 0x194b8, dst obj: 3, dst ofs: 0x3257
   194bc:	bf c0 94 02 00       	mov    edi,@obj3:keyword                                            ; fixup: num: 3288, src obj: 1, src ofs: 0x194bd, dst obj: 3, dst ofs: 0x294c0
   194c1:	57                   	push   edi
talk_to_MR_PETE_SWELL_branch_22:
   194c2:	8a 06                	mov    al,BYTE PTR [esi]
   194c4:	88 07                	mov    BYTE PTR [edi],al
   194c6:	3c 00                	cmp    al,0x0
   194c8:	74 10                	je     talk_to_MR_PETE_SWELL_branch_23
   194ca:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   194cd:	83 c6 02             	add    esi,0x2
   194d0:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   194d3:	83 c7 02             	add    edi,0x2
   194d6:	3c 00                	cmp    al,0x0
   194d8:	75 e8                	jne    talk_to_MR_PETE_SWELL_branch_22
talk_to_MR_PETE_SWELL_branch_23:
   194da:	5f                   	pop    edi
   194db:	89 f9                	mov    ecx,edi
   194dd:	31 ed                	xor    ebp,ebp
talk_to_MR_PETE_SWELL_branch_24:
   194df:	b8 1e 02 00 00       	mov    eax,0x21e
   194e4:	e8 b7 0c 01 00       	call   GetDlgFileString
   194e9:	89 c2                	mov    edx,eax
   194eb:	89 c8                	mov    eax,ecx
   194ed:	e8 68 7f 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   194f2:	85 c0                	test   eax,eax
   194f4:	0f 84 be 01 00 00    	je     talk_to_MR_PETE_SWELL_branch_37
   194fa:	b8 c0 95 02 00       	mov    eax,@obj3:keystring                                          ; fixup: num: 3287, src obj: 1, src ofs: 0x194fb, dst obj: 3, dst ofs: 0x295c0
   194ff:	e8 3c 25 05 00       	call   show_keywords
   19504:	b8 1f 02 00 00       	mov    eax,0x21f
   19509:	e8 92 0c 01 00       	call   GetDlgFileString
   1950e:	89 c2                	mov    edx,eax
   19510:	89 c8                	mov    eax,ecx
   19512:	e8 43 7f 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   19517:	85 c0                	test   eax,eax
   19519:	74 17                	je     talk_to_MR_PETE_SWELL_branch_25
   1951b:	b8 20 02 00 00       	mov    eax,0x220
   19520:	e8 7b 0c 01 00       	call   GetDlgFileString
   19525:	89 c2                	mov    edx,eax
   19527:	89 c8                	mov    eax,ecx
   19529:	e8 2c 7f 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1952e:	85 c0                	test   eax,eax
   19530:	75 44                	jne    talk_to_MR_PETE_SWELL_branch_28
talk_to_MR_PETE_SWELL_branch_25:
   19532:	bb 03 00 00 00       	mov    ebx,0x3
   19537:	ba 58 32 00 00       	mov    edx,@obj3:mr_swell_cpp_variable_40                           ; fixup: num: 3298, src obj: 1, src ofs: 0x19538, dst obj: 3, dst ofs: 0x3258
   1953c:	b8 88 0f 00 00       	mov    eax,0xf88
   19541:	e8 4a 11 05 00       	call   play_wav
   19546:	b8 21 02 00 00       	mov    eax,0x221
   1954b:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 3297, src obj: 1, src ofs: 0x1954c, dst obj: 3, dst ofs: 0x295c0
   19550:	e8 4b 0c 01 00       	call   GetDlgFileString
   19555:	89 c6                	mov    esi,eax
   19557:	57                   	push   edi
talk_to_MR_PETE_SWELL_branch_26:
   19558:	8a 06                	mov    al,BYTE PTR [esi]
   1955a:	88 07                	mov    BYTE PTR [edi],al
   1955c:	3c 00                	cmp    al,0x0
   1955e:	74 10                	je     talk_to_MR_PETE_SWELL_branch_27
   19560:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   19563:	83 c6 02             	add    esi,0x2
   19566:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   19569:	83 c7 02             	add    edi,0x2
   1956c:	3c 00                	cmp    al,0x0
   1956e:	75 e8                	jne    talk_to_MR_PETE_SWELL_branch_26
talk_to_MR_PETE_SWELL_branch_27:
   19570:	5f                   	pop    edi
   19571:	e9 69 ff ff ff       	jmp    talk_to_MR_PETE_SWELL_branch_24
talk_to_MR_PETE_SWELL_branch_28:
   19576:	b8 22 02 00 00       	mov    eax,0x222
   1957b:	e8 20 0c 01 00       	call   GetDlgFileString
   19580:	89 c2                	mov    edx,eax
   19582:	89 c8                	mov    eax,ecx
   19584:	e8 d1 7e 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   19589:	85 c0                	test   eax,eax
   1958b:	75 41                	jne    talk_to_MR_PETE_SWELL_branch_31
   1958d:	ba 5e 32 00 00       	mov    edx,@obj3:mr_swell_cpp_variable_41                           ; fixup: num: 3296, src obj: 1, src ofs: 0x1958e, dst obj: 3, dst ofs: 0x325e
   19592:	b8 95 0f 00 00       	mov    eax,0xf95
   19597:	89 eb                	mov    ebx,ebp
   19599:	e8 f2 10 05 00       	call   play_wav
   1959e:	b8 23 02 00 00       	mov    eax,0x223
   195a3:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 3295, src obj: 1, src ofs: 0x195a4, dst obj: 3, dst ofs: 0x295c0
   195a8:	e8 f3 0b 01 00       	call   GetDlgFileString
   195ad:	89 c6                	mov    esi,eax
   195af:	57                   	push   edi
talk_to_MR_PETE_SWELL_branch_29:
   195b0:	8a 06                	mov    al,BYTE PTR [esi]
   195b2:	88 07                	mov    BYTE PTR [edi],al
   195b4:	3c 00                	cmp    al,0x0
   195b6:	74 10                	je     talk_to_MR_PETE_SWELL_branch_30
   195b8:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   195bb:	83 c6 02             	add    esi,0x2
   195be:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   195c1:	83 c7 02             	add    edi,0x2
   195c4:	3c 00                	cmp    al,0x0
   195c6:	75 e8                	jne    talk_to_MR_PETE_SWELL_branch_29
talk_to_MR_PETE_SWELL_branch_30:
   195c8:	5f                   	pop    edi
   195c9:	e9 11 ff ff ff       	jmp    talk_to_MR_PETE_SWELL_branch_24
talk_to_MR_PETE_SWELL_branch_31:
   195ce:	b8 24 02 00 00       	mov    eax,0x224
   195d3:	e8 c8 0b 01 00       	call   GetDlgFileString
   195d8:	89 c2                	mov    edx,eax
   195da:	89 c8                	mov    eax,ecx
   195dc:	e8 79 7e 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   195e1:	85 c0                	test   eax,eax
   195e3:	74 2e                	je     talk_to_MR_PETE_SWELL_branch_32
   195e5:	b8 25 02 00 00       	mov    eax,0x225
   195ea:	e8 b1 0b 01 00       	call   GetDlgFileString
   195ef:	89 c2                	mov    edx,eax
   195f1:	89 c8                	mov    eax,ecx
   195f3:	e8 62 7e 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   195f8:	85 c0                	test   eax,eax
   195fa:	74 17                	je     talk_to_MR_PETE_SWELL_branch_32
   195fc:	b8 26 02 00 00       	mov    eax,0x226
   19601:	e8 9a 0b 01 00       	call   GetDlgFileString
   19606:	89 c2                	mov    edx,eax
   19608:	89 c8                	mov    eax,ecx
   1960a:	e8 4b 7e 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1960f:	85 c0                	test   eax,eax
   19611:	75 41                	jne    talk_to_MR_PETE_SWELL_branch_35
talk_to_MR_PETE_SWELL_branch_32:
   19613:	ba 64 32 00 00       	mov    edx,@obj3:mr_swell_cpp_variable_42                           ; fixup: num: 3301, src obj: 1, src ofs: 0x19614, dst obj: 3, dst ofs: 0x3264
   19618:	b8 a0 0f 00 00       	mov    eax,0xfa0
   1961d:	89 eb                	mov    ebx,ebp
   1961f:	e8 6c 10 05 00       	call   play_wav
   19624:	b8 27 02 00 00       	mov    eax,0x227
   19629:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 3300, src obj: 1, src ofs: 0x1962a, dst obj: 3, dst ofs: 0x295c0
   1962e:	e8 6d 0b 01 00       	call   GetDlgFileString
   19633:	89 c6                	mov    esi,eax
   19635:	57                   	push   edi
talk_to_MR_PETE_SWELL_branch_33:
   19636:	8a 06                	mov    al,BYTE PTR [esi]
   19638:	88 07                	mov    BYTE PTR [edi],al
   1963a:	3c 00                	cmp    al,0x0
   1963c:	74 10                	je     talk_to_MR_PETE_SWELL_branch_34
   1963e:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   19641:	83 c6 02             	add    esi,0x2
   19644:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   19647:	83 c7 02             	add    edi,0x2
   1964a:	3c 00                	cmp    al,0x0
   1964c:	75 e8                	jne    talk_to_MR_PETE_SWELL_branch_33
talk_to_MR_PETE_SWELL_branch_34:
   1964e:	5f                   	pop    edi
   1964f:	e9 8b fe ff ff       	jmp    talk_to_MR_PETE_SWELL_branch_24
talk_to_MR_PETE_SWELL_branch_35:
   19654:	b8 28 02 00 00       	mov    eax,0x228
   19659:	e8 42 0b 01 00       	call   GetDlgFileString
   1965e:	89 c2                	mov    edx,eax
   19660:	89 c8                	mov    eax,ecx
   19662:	e8 f3 7d 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   19667:	85 c0                	test   eax,eax
   19669:	75 19                	jne    talk_to_MR_PETE_SWELL_branch_36
   1966b:	bb 01 00 00 00       	mov    ebx,0x1
   19670:	ba 6a 32 00 00       	mov    edx,@obj3:mr_swell_cpp_variable_43                           ; fixup: num: 3299, src obj: 1, src ofs: 0x19671, dst obj: 3, dst ofs: 0x326a
   19675:	b8 aa 0f 00 00       	mov    eax,0xfaa
   1967a:	e8 11 10 05 00       	call   play_wav
   1967f:	e9 5b fe ff ff       	jmp    talk_to_MR_PETE_SWELL_branch_24
talk_to_MR_PETE_SWELL_branch_36:
   19684:	b8 29 02 00 00       	mov    eax,0x229
   19689:	e8 12 0b 01 00       	call   GetDlgFileString
   1968e:	89 c2                	mov    edx,eax
   19690:	89 c8                	mov    eax,ecx
   19692:	e8 c3 7d 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   19697:	85 c0                	test   eax,eax
   19699:	0f 84 40 fe ff ff    	je     talk_to_MR_PETE_SWELL_branch_24
   1969f:	bb 02 00 00 00       	mov    ebx,0x2
   196a4:	ba 70 32 00 00       	mov    edx,@obj3:mr_swell_cpp_variable_44                           ; fixup: num: 3312, src obj: 1, src ofs: 0x196a5, dst obj: 3, dst ofs: 0x3270
   196a9:	b8 ba 0f 00 00       	mov    eax,0xfba
   196ae:	e8 dd 0f 05 00       	call   play_wav
   196b3:	e9 27 fe ff ff       	jmp    talk_to_MR_PETE_SWELL_branch_24
talk_to_MR_PETE_SWELL_branch_37:
   196b8:	bb 01 00 00 00       	mov    ebx,0x1
   196bd:	ba 76 32 00 00       	mov    edx,@obj3:mr_swell_cpp_variable_45                           ; fixup: num: 3311, src obj: 1, src ofs: 0x196be, dst obj: 3, dst ofs: 0x3276
   196c2:	b8 f1 0f 00 00       	mov    eax,0xff1
   196c7:	e8 c4 0f 05 00       	call   play_wav
talk_to_MR_PETE_SWELL_branch_38:
   196cc:	31 c0                	xor    eax,eax
   196ce:	5d                   	pop    ebp
   196cf:	5f                   	pop    edi
   196d0:	5e                   	pop    esi
   196d1:	5a                   	pop    edx
   196d2:	59                   	pop    ecx
   196d3:	5b                   	pop    ebx
   196d4:	c3                   	ret    
talk_to_MR_PETE_SWELL_branch_39:
   196d5:	89 15 30 2c 02 00    	mov    DWORD PTR ds:@obj3:MR_PETE_SWELL,edx                         ; fixup: num: 3310, src obj: 1, src ofs: 0x196d7, dst obj: 3, dst ofs: 0x22c30
   196db:	a1 30 2c 02 00       	mov    eax,ds:@obj3:MR_PETE_SWELL                                   ; fixup: num: 3309, src obj: 1, src ofs: 0x196dc, dst obj: 3, dst ofs: 0x22c30
   196e0:	c3                   	ret    
   196e1:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   196e7:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
   196ed:	8d 40 00             	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'MR_PETE_SWELL_FIRST_CONVERSATION'   -
;-------------------------------------------------
MR_PETE_SWELL_FIRST_CONVERSATION:
   196f0:	85 c0                	test   eax,eax
   196f2:	74 e1                	je     talk_to_MR_PETE_SWELL_branch_39
   196f4:	a1 30 2c 02 00       	mov    eax,ds:@obj3:MR_PETE_SWELL                                   ; fixup: num: 3308, src obj: 1, src ofs: 0x196f5, dst obj: 3, dst ofs: 0x22c30
   196f9:	c3                   	ret    
   196fa:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'MR_PETE_SWELL_initialize'           -
;-------------------------------------------------
MR_PETE_SWELL_initialize:
   19700:	53                   	push   ebx
   19701:	52                   	push   edx
   19702:	ba 01 00 00 00       	mov    edx,0x1
   19707:	31 db                	xor    ebx,ebx
   19709:	89 15 30 2c 02 00    	mov    DWORD PTR ds:@obj3:MR_PETE_SWELL,edx                         ; fixup: num: 3307, src obj: 1, src ofs: 0x1970b, dst obj: 3, dst ofs: 0x22c30
   1970f:	89 1d 34 2c 02 00    	mov    DWORD PTR ds:@obj3:MR_PETE_SWELL_variable_1,ebx              ; fixup: num: 3306, src obj: 1, src ofs: 0x19711, dst obj: 3, dst ofs: 0x22c34
   19715:	89 1d 38 2c 02 00    	mov    DWORD PTR ds:@obj3:MR_PETE_SWELL_variable_2,ebx              ; fixup: num: 3305, src obj: 1, src ofs: 0x19717, dst obj: 3, dst ofs: 0x22c38
   1971b:	89 1d 3c 2c 02 00    	mov    DWORD PTR ds:@obj3:MR_PETE_SWELL_variable_3,ebx              ; fixup: num: 3304, src obj: 1, src ofs: 0x1971d, dst obj: 3, dst ofs: 0x22c3c
   19721:	89 1d 40 2c 02 00    	mov    DWORD PTR ds:@obj3:MR_PETE_SWELL_variable_4,ebx              ; fixup: num: 3303, src obj: 1, src ofs: 0x19723, dst obj: 3, dst ofs: 0x22c40
   19727:	89 1d 44 2c 02 00    	mov    DWORD PTR ds:@obj3:MR_PETE_SWELL_variable_5,ebx              ; fixup: num: 3302, src obj: 1, src ofs: 0x19729, dst obj: 3, dst ofs: 0x22c44
   1972d:	5a                   	pop    edx
   1972e:	5b                   	pop    ebx
   1972f:	c3                   	ret    

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 23 (D:\SOURCE\mr_swell.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 23: D:\SOURCE\mr_swell.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------
mr_swell_cpp_variable_1:
    30f8:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_swell_cpp_variable_2:
    30f9:	50 48 4f 54 4f 5f 4f 46 5f 57 48 41 4c 45 59 5f 48 45 52 52 49 4c 4c 00 	db     "PHOTO_OF_WHALEY_HERRILL",0x00
mr_swell_cpp_variable_3:
    3111:	53 57 45 4c 4c 00    	db     "SWELL",0x00
mr_swell_cpp_variable_4:
    3117:	43 41 53 4b 45 54 5f 50 48 4f 54 4f 00 	db     "CASKET_PHOTO",0x00
mr_swell_cpp_variable_5:
    3124:	43 41 53 4b 45 54 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "CASKET_PHOTOCOPY",0x00
mr_swell_cpp_variable_6:
    3135:	53 57 45 4c 4c 00    	db     "SWELL",0x00
mr_swell_cpp_variable_7:
    313b:	4c 45 44 47 45 52 00 	db     "LEDGER",0x00
mr_swell_cpp_variable_8:
    3142:	4c 45 44 47 45 52 32 00 	db     "LEDGER2",0x00
mr_swell_cpp_variable_9:
    314a:	48 41 56 45 5f 42 4f 54 48 5f 4c 45 44 47 45 52 53 00 	db     "HAVE_BOTH_LEDGERS",0x00
mr_swell_cpp_variable_10:
    315c:	53 57 45 4c 4c 00    	db     "SWELL",0x00
mr_swell_cpp_variable_11:
    3162:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    3163:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    3164:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_swell_cpp_variable_12:
    3165:	53 57 45 4c 4c 00    	db     "SWELL",0x00
mr_swell_cpp_variable_13:
    316b:	4e 4f 54 45 00       	db     "NOTE",0x00
mr_swell_cpp_variable_14:
    3170:	4e 4f 54 45 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "NOTE_PHOTOCOPY",0x00
mr_swell_cpp_variable_15:
    317f:	43 48 45 43 4b 42 4f 4f 4b 00 	db     "CHECKBOOK",0x00
mr_swell_cpp_variable_16:
    3189:	43 48 45 43 4b 42 4f 4f 4b 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "CHECKBOOK_PHOTOCOPY",0x00
mr_swell_cpp_variable_17:
    319d:	53 57 45 4c 4c 00    	db     "SWELL",0x00
mr_swell_cpp_variable_18:
    31a3:	53 57 45 4c 4c 00    	db     "SWELL",0x00
mr_swell_cpp_variable_19:
    31a9:	53 57 45 4c 4c 00    	db     "SWELL",0x00
mr_swell_cpp_variable_20:
    31af:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    31b0:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    31b1:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_swell_cpp_variable_21:
    31b2:	53 57 45 4c 4c 00    	db     "SWELL",0x00
mr_swell_cpp_variable_22:
    31b8:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    31b9:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    31ba:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_swell_cpp_variable_23:
    31bb:	53 57 45 4c 4c 00    	db     "SWELL",0x00
mr_swell_cpp_variable_24:
    31c1:	53 57 45 4c 4c 00    	db     "SWELL",0x00
mr_swell_cpp_variable_25:
    31c7:	53 57 45 4c 4c 00    	db     "SWELL",0x00
mr_swell_cpp_variable_26:
    31cd:	53 54 45 50 48 5f 4d 49 44 47 41 4d 45 5f 50 4c 41 59 45 44 00 	db     "STEPH_MIDGAME_PLAYED",0x00
mr_swell_cpp_variable_27:
    31e2:	53 57 45 4c 4c 00    	db     "SWELL",0x00
mr_swell_cpp_variable_28:
    31e8:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    31e9:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    31ea:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_swell_cpp_variable_29:
    31eb:	53 57 45 4c 4c 00    	db     "SWELL",0x00
mr_swell_cpp_variable_30:
    31f1:	42 41 52 42 45 52 5f 50 4f 4c 45 5f 53 54 4f 4c 45 4e 00 	db     "BARBER_POLE_STOLEN",0x00
mr_swell_cpp_variable_31:
    3204:	53 57 45 4c 4c 00    	db     "SWELL",0x00
mr_swell_cpp_variable_32:
    320a:	53 57 45 4c 4c 00    	db     "SWELL",0x00
mr_swell_cpp_variable_33:
    3210:	42 4f 4c 54 5f 4f 46 5f 43 4c 4f 54 48 5f 54 41 4b 45 4e 00 	db     "BOLT_OF_CLOTH_TAKEN",0x00
mr_swell_cpp_variable_34:
    3224:	53 57 45 4c 4c 00    	db     "SWELL",0x00
mr_swell_cpp_variable_35:
    322a:	42 55 52 4e 45 44 5f 54 56 5f 53 54 41 54 49 4f 4e 00 	db     "BURNED_TV_STATION",0x00
mr_swell_cpp_variable_36:
    323c:	53 57 45 4c 4c 00    	db     "SWELL",0x00
mr_swell_cpp_variable_37:
    3242:	4b 41 52 49 4e 5f 4b 49 44 4e 41 50 45 44 00 	db     "KARIN_KIDNAPED",0x00
mr_swell_cpp_variable_38:
    3251:	53 57 45 4c 4c 00    	db     "SWELL",0x00
mr_swell_cpp_variable_39:
    3257:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_swell_cpp_variable_40:
    3258:	53 57 45 4c 4c 00    	db     "SWELL",0x00
mr_swell_cpp_variable_41:
    325e:	53 57 45 4c 4c 00    	db     "SWELL",0x00
mr_swell_cpp_variable_42:
    3264:	53 57 45 4c 4c 00    	db     "SWELL",0x00
mr_swell_cpp_variable_43:
    326a:	53 57 45 4c 4c 00    	db     "SWELL",0x00
mr_swell_cpp_variable_44:
    3270:	53 57 45 4c 4c 00    	db     "SWELL",0x00
mr_swell_cpp_variable_45:
    3276:	53 57 45 4c 4c 00    	db     "SWELL",0x00

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 23 (D:\SOURCE\mr_swell.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 23: D:\SOURCE\mr_swell.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------
MR_PETE_SWELL:                                                                                      ; access size: DWORD
   22c30:	00 00 00 00          	dd     0x00000000
MR_PETE_SWELL_variable_1:                                                                           ; access size: DWORD
   22c34:	00 00 00 00          	dd     0x00000000
MR_PETE_SWELL_variable_2:                                                                           ; access size: DWORD
   22c38:	00 00 00 00          	dd     0x00000000
MR_PETE_SWELL_variable_3:                                                                           ; access size: DWORD
   22c3c:	00 00 00 00          	dd     0x00000000
MR_PETE_SWELL_variable_4:                                                                           ; access size: DWORD
   22c40:	00 00 00 00          	dd     0x00000000
MR_PETE_SWELL_variable_5:                                                                           ; access size: DWORD
   22c44:	00 00 00 00          	dd     0x00000000

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 23 (D:\SOURCE\mr_swell.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------