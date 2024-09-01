;-------------------------------------------------------------------------------
;                                                                              -
;  Module 9: D:\SOURCE\sound.cpp                                               -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function '.fn_init_mod_9'                     -
;-------------------------------------------------
.fn_init_mod_9:
    7470:	53                   	push   ebx
    7471:	51                   	push   ecx
    7472:	52                   	push   edx
    7473:	56                   	push   esi
    7474:	57                   	push   edi
    7475:	55                   	push   ebp
    7476:	b8 c8 2c 01 00       	mov    eax,@obj3:sound_cpp_variable_82                              ; fixup: num: 949, src obj: 1, src ofs: 0x7477, dst obj: 3, dst ofs: 0x12cc8
    747b:	e8 52 ac 06 00       	call   __wcpp_2_mod_register__
    7480:	b8 94 a1 01 00       	mov    eax,@obj3:the_sound_system                                   ; fixup: num: 948, src obj: 1, src ofs: 0x7481, dst obj: 3, dst ofs: 0x1a194
    7485:	ba 01 00 00 00       	mov    edx,0x1
    748a:	bb 74 00 00 00       	mov    ebx,0x74
    748f:	e8 6c 07 00 00       	call   W?$ct:sound_system$n()_
    7494:	b8 e0 a1 01 00       	mov    eax,@obj3:music_variable_2                                   ; fixup: num: 947, src obj: 1, src ofs: 0x7495, dst obj: 3, dst ofs: 0x1a1e0
    7499:	89 15 d0 2c 01 00    	mov    DWORD PTR ds:@obj3:sound_cpp_variable_83,edx                 ; fixup: num: 946, src obj: 1, src ofs: 0x749b, dst obj: 3, dst ofs: 0x12cd0
    749f:	31 d2                	xor    edx,edx
    74a1:	e8 2a 9f 06 00       	call   memset_
    74a6:	bb 02 00 00 00       	mov    ebx,0x2
    74ab:	a1 ac 0f 01 00       	mov    eax,ds:@obj3:fx_volume                                       ; fixup: num: 945, src obj: 1, src ofs: 0x74ac, dst obj: 3, dst ofs: 0x10fac
    74b0:	89 1d f0 a1 01 00    	mov    DWORD PTR ds:@obj3:music_variable_4,ebx                      ; fixup: num: 944, src obj: 1, src ofs: 0x74b2, dst obj: 3, dst ofs: 0x1a1f0
    74b6:	66 8b 04 45 be 0f 01 00 	mov    ax,WORD PTR [eax*2+@obj3:volume_table]                    ; fixup: num: 943, src obj: 1, src ofs: 0x74ba, dst obj: 3, dst ofs: 0x10fbe
    74be:	b9 00 01 00 00       	mov    ecx,0x100
    74c3:	bf 00 40 06 00       	mov    edi,0x64000
    74c8:	25 ff ff 00 00       	and    eax,0xffff
    74cd:	31 f6                	xor    esi,esi
    74cf:	31 d2                	xor    edx,edx
    74d1:	a3 f4 a1 01 00       	mov    ds:@obj3:music_variable_5,eax                                ; fixup: num: 942, src obj: 1, src ofs: 0x74d2, dst obj: 3, dst ofs: 0x1a1f4
    74d6:	89 0d 08 a2 01 00    	mov    DWORD PTR ds:@obj3:music_variable_6,ecx                      ; fixup: num: 941, src obj: 1, src ofs: 0x74d8, dst obj: 3, dst ofs: 0x1a208
    74dc:	89 35 d4 a1 01 00    	mov    DWORD PTR ds:@obj3:music,esi                                 ; fixup: num: 940, src obj: 1, src ofs: 0x74de, dst obj: 3, dst ofs: 0x1a1d4
    74e2:	30 e4                	xor    ah,ah
    74e4:	66 89 15 dc a1 01 00 	mov    WORD PTR ds:@obj3:music_variable_1,dx                        ; fixup: num: 939, src obj: 1, src ofs: 0x74e7, dst obj: 3, dst ofs: 0x1a1dc
    74eb:	88 25 8c a2 01 00    	mov    BYTE PTR ds:@obj3:music_variable_15,ah                       ; fixup: num: 938, src obj: 1, src ofs: 0x74ed, dst obj: 3, dst ofs: 0x1a28c
    74f1:	b8 00 80 00 00       	mov    eax,0x8000
    74f6:	89 3d 80 a2 01 00    	mov    DWORD PTR ds:@obj3:music_variable_12,edi                     ; fixup: num: 937, src obj: 1, src ofs: 0x74f8, dst obj: 3, dst ofs: 0x1a280
    74fc:	e8 92 9f 06 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
    7501:	a3 84 a2 01 00       	mov    ds:@obj3:music_variable_13,eax                               ; fixup: num: 936, src obj: 1, src ofs: 0x7502, dst obj: 3, dst ofs: 0x1a284
    7506:	85 c0                	test   eax,eax
    7508:	75 0f                	jne    .fn_init_mod_9_branch_1
    750a:	bb fc 06 00 00       	mov    ebx,@obj3:sound_cpp_variable_1                               ; fixup: num: 935, src obj: 1, src ofs: 0x750b, dst obj: 3, dst ofs: 0x6fc
    750f:	ba f7 03 00 00       	mov    edx,0x3f7
    7514:	e8 17 0b 03 00       	call   _error_report
.fn_init_mod_9_branch_1:
    7519:	b8 00 20 00 00       	mov    eax,0x2000
    751e:	e8 70 9f 06 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
    7523:	a3 d0 a2 01 00       	mov    ds:@obj3:music_variable_16,eax                               ; fixup: num: 962, src obj: 1, src ofs: 0x7524, dst obj: 3, dst ofs: 0x1a2d0
    7528:	85 c0                	test   eax,eax
    752a:	75 0f                	jne    .fn_init_mod_9_branch_2
    752c:	bb 14 07 00 00       	mov    ebx,@obj3:sound_cpp_variable_2                               ; fixup: num: 961, src obj: 1, src ofs: 0x752d, dst obj: 3, dst ofs: 0x714
    7531:	ba f9 03 00 00       	mov    edx,0x3f9
    7536:	e8 f5 0a 03 00       	call   _error_report
.fn_init_mod_9_branch_2:
    753b:	68 00 80 00 00       	push   0x8000
    7540:	8b 2d 84 a2 01 00    	mov    ebp,DWORD PTR ds:@obj3:music_variable_13                     ; fixup: num: 960, src obj: 1, src ofs: 0x7542, dst obj: 3, dst ofs: 0x1a284
    7546:	55                   	push   ebp
    7547:	e8 ab 95 06 00       	call   _D32Lock
    754c:	83 c4 08             	add    esp,0x8
    754f:	68 00 20 00 00       	push   0x2000
    7554:	a1 d0 a2 01 00       	mov    eax,ds:@obj3:music_variable_16                               ; fixup: num: 959, src obj: 1, src ofs: 0x7555, dst obj: 3, dst ofs: 0x1a2d0
    7559:	50                   	push   eax
    755a:	e8 98 95 06 00       	call   _D32Lock
    755f:	83 c4 08             	add    esp,0x8
    7562:	b8 80 00 00 00       	mov    eax,0x80
    7567:	e8 27 9f 06 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
    756c:	a3 d4 a2 01 00       	mov    ds:@obj3:music_variable_17,eax                               ; fixup: num: 958, src obj: 1, src ofs: 0x756d, dst obj: 3, dst ofs: 0x1a2d4
    7571:	85 c0                	test   eax,eax
    7573:	75 0f                	jne    .fn_init_mod_9_branch_3
    7575:	bb 39 07 00 00       	mov    ebx,@obj3:sound_cpp_variable_3                               ; fixup: num: 957, src obj: 1, src ofs: 0x7576, dst obj: 3, dst ofs: 0x739
    757a:	ba fc 03 00 00       	mov    edx,0x3fc
    757f:	e8 ac 0a 03 00       	call   _error_report
.fn_init_mod_9_branch_3:
    7584:	a1 d4 a2 01 00       	mov    eax,ds:@obj3:music_variable_17                               ; fixup: num: 956, src obj: 1, src ofs: 0x7585, dst obj: 3, dst ofs: 0x1a2d4
    7589:	bb 10 00 00 00       	mov    ebx,0x10
    758e:	ba 22 56 00 00       	mov    edx,0x5622
    7593:	c6 00 00             	mov    BYTE PTR [eax],0x0
    7596:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 955, src obj: 1, src ofs: 0x7597, dst obj: 3, dst ofs: 0x1a1d4
    759b:	8b 0d 80 a2 01 00    	mov    ecx,DWORD PTR ds:@obj3:music_variable_12                     ; fixup: num: 954, src obj: 1, src ofs: 0x759d, dst obj: 3, dst ofs: 0x1a280
    75a1:	e8 4a 17 00 00       	call   initialize_buffer
    75a6:	80 3d b4 a1 01 00 00 	cmp    BYTE PTR ds:@obj3:the_sound_system_variable_3,0x0            ; fixup: num: 953, src obj: 1, src ofs: 0x75a8, dst obj: 3, dst ofs: 0x1a1b4
    75ad:	74 11                	je     .fn_init_mod_9_branch_4
    75af:	c7 05 ec a1 01 00 ff ff ff ff 	mov    DWORD PTR ds:@obj3:music_variable_3,0xffffffff      ; fixup: num: 952, src obj: 1, src ofs: 0x75b1, dst obj: 3, dst ofs: 0x1a1ec
    75b9:	80 0d 09 a2 01 00 40 	or     BYTE PTR ds:@obj3:music_variable_7,0x40                      ; fixup: num: 951, src obj: 1, src ofs: 0x75bb, dst obj: 3, dst ofs: 0x1a209
.fn_init_mod_9_branch_4:
    75c0:	bf 02 00 00 00       	mov    edi,0x2
    75c5:	30 db                	xor    bl,bl
    75c7:	31 c9                	xor    ecx,ecx
    75c9:	88 1d 65 a2 01 00    	mov    BYTE PTR ds:@obj3:music_variable_9,bl                        ; fixup: num: 950, src obj: 1, src ofs: 0x75cb, dst obj: 3, dst ofs: 0x1a265
    75cf:	89 0d 6c a2 01 00    	mov    DWORD PTR ds:@obj3:music_variable_11,ecx                     ; fixup: num: 975, src obj: 1, src ofs: 0x75d1, dst obj: 3, dst ofs: 0x1a26c
    75d5:	bb ff ff ff ff       	mov    ebx,0xffffffff
    75da:	89 0d 68 a2 01 00    	mov    DWORD PTR ds:@obj3:music_variable_10,ecx                     ; fixup: num: 974, src obj: 1, src ofs: 0x75dc, dst obj: 3, dst ofs: 0x1a268
    75e0:	89 1d 5c a2 01 00    	mov    DWORD PTR ds:@obj3:music_variable_8,ebx                      ; fixup: num: 973, src obj: 1, src ofs: 0x75e2, dst obj: 3, dst ofs: 0x1a25c
    75e6:	e8 17 ab 06 00       	call   clock_
    75eb:	a3 88 a2 01 00       	mov    ds:@obj3:music_variable_14,eax                               ; fixup: num: 972, src obj: 1, src ofs: 0x75ec, dst obj: 3, dst ofs: 0x1a288
    75f0:	89 3d d0 2c 01 00    	mov    DWORD PTR ds:@obj3:sound_cpp_variable_83,edi                 ; fixup: num: 971, src obj: 1, src ofs: 0x75f2, dst obj: 3, dst ofs: 0x12cd0
    75f6:	5d                   	pop    ebp
    75f7:	5f                   	pop    edi
    75f8:	5e                   	pop    esi
    75f9:	5a                   	pop    edx
    75fa:	59                   	pop    ecx
    75fb:	5b                   	pop    ebx
    75fc:	c3                   	ret    
    75fd:	8d 40 00             	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'sound_cpp_'                         -
;-------------------------------------------------
sound_cpp_:
    7600:	b8 51 07 00 00       	mov    eax,@obj3:sound_cpp_variable_4                               ; fixup: num: 970, src obj: 1, src ofs: 0x7601, dst obj: 3, dst ofs: 0x751
    7605:	e9 65 9a 06 00       	jmp    puts_
    760a:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'SOUND_detect_first'                 -
;-------------------------------------------------
SOUND_detect_first:
    7610:	56                   	push   esi
    7611:	57                   	push   edi
    7612:	55                   	push   ebp
    7613:	83 ec 10             	sub    esp,0x10
    7616:	89 c5                	mov    ebp,eax
    7618:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
    761c:	89 5c 24 0c          	mov    DWORD PTR [esp+0xc],ebx
    7620:	89 0c 24             	mov    DWORD PTR [esp],ecx
    7623:	31 d2                	xor    edx,edx
    7625:	31 c0                	xor    eax,eax
    7627:	e8 f0 aa 06 00       	call   sosDIGIDetectInit_
    762c:	85 c0                	test   eax,eax
    762e:	74 11                	je     SOUND_detect_first_branch_1
    7630:	bb 5b 07 00 00       	mov    ebx,@obj3:sound_cpp_variable_5                               ; fixup: num: 969, src obj: 1, src ofs: 0x7631, dst obj: 3, dst ofs: 0x75b
    7635:	ba a8 00 00 00       	mov    edx,0xa8
    763a:	31 c0                	xor    eax,eax
    763c:	e8 ef 09 03 00       	call   _error_report
SOUND_detect_first_branch_1:
    7641:	ba 8c 07 00 00       	mov    edx,@obj3:sound_cpp_variable_6                               ; fixup: num: 968, src obj: 1, src ofs: 0x7642, dst obj: 3, dst ofs: 0x78c
    7646:	b8 8f 07 00 00       	mov    eax,@obj3:sound_cpp_variable_7                               ; fixup: num: 967, src obj: 1, src ofs: 0x7647, dst obj: 3, dst ofs: 0x78f
    764b:	e8 58 97 06 00       	call   fopen_
    7650:	89 c7                	mov    edi,eax
    7652:	85 c0                	test   eax,eax
    7654:	0f 84 ed 01 00 00    	je     SOUND_detect_first_branch_23
    765a:	68 99 07 00 00       	push   @obj3:sound_cpp_variable_8                                   ; fixup: num: 966, src obj: 1, src ofs: 0x765b, dst obj: 3, dst ofs: 0x799
    765f:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
    7663:	be b4 07 00 00       	mov    esi,@obj3:sound_cpp_variable_10                              ; fixup: num: 965, src obj: 1, src ofs: 0x7664, dst obj: 3, dst ofs: 0x7b4
    7668:	68 a3 07 00 00       	push   @obj3:sound_cpp_variable_9                                   ; fixup: num: 964, src obj: 1, src ofs: 0x7669, dst obj: 3, dst ofs: 0x7a3
    766d:	b9 fc 37 02 00       	mov    ecx,@obj3:log_buffer                                         ; fixup: num: 963, src obj: 1, src ofs: 0x766e, dst obj: 3, dst ofs: 0x237fc
    7672:	c6 00 01             	mov    BYTE PTR [eax],0x1
    7675:	e8 d8 94 06 00       	call   printf_
    767a:	83 c4 08             	add    esp,0x8
SOUND_detect_first_branch_2:
    767d:	ba ff 00 00 00       	mov    edx,0xff
    7682:	89 fb                	mov    ebx,edi
    7684:	89 c8                	mov    eax,ecx
    7686:	e8 65 b7 06 00       	call   fgets_
    768b:	bb 09 00 00 00       	mov    ebx,0x9
    7690:	89 f2                	mov    edx,esi
    7692:	89 c8                	mov    eax,ecx
    7694:	e8 ba b7 06 00       	call   strncmp_
    7699:	85 c0                	test   eax,eax
    769b:	75 e0                	jne    SOUND_detect_first_branch_2
    769d:	b9 fc 37 02 00       	mov    ecx,@obj3:log_buffer                                         ; fixup: num: 980, src obj: 1, src ofs: 0x769e, dst obj: 3, dst ofs: 0x237fc
SOUND_detect_first_branch_3:
    76a2:	ba ff 00 00 00       	mov    edx,0xff
    76a7:	89 fb                	mov    ebx,edi
    76a9:	89 c8                	mov    eax,ecx
    76ab:	e8 40 b7 06 00       	call   fgets_
    76b0:	bb 06 00 00 00       	mov    ebx,0x6
    76b5:	ba be 07 00 00       	mov    edx,@obj3:sound_cpp_variable_11                              ; fixup: num: 979, src obj: 1, src ofs: 0x76b6, dst obj: 3, dst ofs: 0x7be
    76ba:	89 c8                	mov    eax,ecx
    76bc:	e8 92 b7 06 00       	call   strncmp_
    76c1:	85 c0                	test   eax,eax
    76c3:	0f 84 4a 01 00 00    	je     SOUND_detect_first_branch_21
    76c9:	bb 08 00 00 00       	mov    ebx,0x8
    76ce:	ba c5 07 00 00       	mov    edx,@obj3:sound_cpp_variable_12                              ; fixup: num: 978, src obj: 1, src ofs: 0x76cf, dst obj: 3, dst ofs: 0x7c5
    76d3:	89 c8                	mov    eax,ecx
    76d5:	e8 79 b7 06 00       	call   strncmp_
    76da:	85 c0                	test   eax,eax
    76dc:	75 3d                	jne    SOUND_detect_first_branch_7
    76de:	8d 44 24 04          	lea    eax,[esp+0x4]
    76e2:	50                   	push   eax
    76e3:	68 ce 07 00 00       	push   @obj3:sound_cpp_variable_13                                  ; fixup: num: 977, src obj: 1, src ofs: 0x76e4, dst obj: 3, dst ofs: 0x7ce
    76e8:	b2 78                	mov    dl,0x78
    76ea:	89 ce                	mov    esi,ecx
SOUND_detect_first_branch_4:
    76ec:	8a 06                	mov    al,BYTE PTR [esi]
    76ee:	3a c2                	cmp    al,dl
    76f0:	74 12                	je     SOUND_detect_first_branch_6
    76f2:	3c 00                	cmp    al,0x0
    76f4:	74 0c                	je     SOUND_detect_first_branch_5
    76f6:	46                   	inc    esi
    76f7:	8a 06                	mov    al,BYTE PTR [esi]
    76f9:	3a c2                	cmp    al,dl
    76fb:	74 07                	je     SOUND_detect_first_branch_6
    76fd:	46                   	inc    esi
    76fe:	3c 00                	cmp    al,0x0
    7700:	75 ea                	jne    SOUND_detect_first_branch_4
SOUND_detect_first_branch_5:
    7702:	2b f6                	sub    esi,esi
SOUND_detect_first_branch_6:
    7704:	46                   	inc    esi
    7705:	56                   	push   esi
    7706:	e8 c5 b7 06 00       	call   sscanf_
    770b:	83 c4 0c             	add    esp,0xc
    770e:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
    7712:	66 89 45 00          	mov    WORD PTR [ebp+0x0],ax
    7716:	e9 ee 00 00 00       	jmp    SOUND_detect_first_branch_20
SOUND_detect_first_branch_7:
    771b:	bb 0a 00 00 00       	mov    ebx,0xa
    7720:	ba d1 07 00 00       	mov    edx,@obj3:sound_cpp_variable_14                              ; fixup: num: 976, src obj: 1, src ofs: 0x7721, dst obj: 3, dst ofs: 0x7d1
    7725:	89 c8                	mov    eax,ecx
    7727:	e8 27 b7 06 00       	call   strncmp_
    772c:	85 c0                	test   eax,eax
    772e:	75 40                	jne    SOUND_detect_first_branch_11
    7730:	8d 44 24 04          	lea    eax,[esp+0x4]
    7734:	50                   	push   eax
    7735:	68 dc 07 00 00       	push   @obj3:sound_cpp_variable_15                                  ; fixup: num: 985, src obj: 1, src ofs: 0x7736, dst obj: 3, dst ofs: 0x7dc
    773a:	b2 78                	mov    dl,0x78
    773c:	89 ce                	mov    esi,ecx
SOUND_detect_first_branch_8:
    773e:	8a 06                	mov    al,BYTE PTR [esi]
    7740:	3a c2                	cmp    al,dl
    7742:	74 12                	je     SOUND_detect_first_branch_10
    7744:	3c 00                	cmp    al,0x0
    7746:	74 0c                	je     SOUND_detect_first_branch_9
    7748:	46                   	inc    esi
    7749:	8a 06                	mov    al,BYTE PTR [esi]
    774b:	3a c2                	cmp    al,dl
    774d:	74 07                	je     SOUND_detect_first_branch_10
    774f:	46                   	inc    esi
    7750:	3c 00                	cmp    al,0x0
    7752:	75 ea                	jne    SOUND_detect_first_branch_8
SOUND_detect_first_branch_9:
    7754:	2b f6                	sub    esi,esi
SOUND_detect_first_branch_10:
    7756:	46                   	inc    esi
    7757:	56                   	push   esi
    7758:	e8 73 b7 06 00       	call   sscanf_
    775d:	83 c4 0c             	add    esp,0xc
    7760:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
    7764:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
    7768:	66 89 02             	mov    WORD PTR [edx],ax
    776b:	e9 99 00 00 00       	jmp    SOUND_detect_first_branch_20
SOUND_detect_first_branch_11:
    7770:	bb 09 00 00 00       	mov    ebx,0x9
    7775:	ba df 07 00 00       	mov    edx,@obj3:sound_cpp_variable_16                              ; fixup: num: 984, src obj: 1, src ofs: 0x7776, dst obj: 3, dst ofs: 0x7df
    777a:	89 c8                	mov    eax,ecx
    777c:	e8 d2 b6 06 00       	call   strncmp_
    7781:	85 c0                	test   eax,eax
    7783:	75 36                	jne    SOUND_detect_first_branch_15
    7785:	8d 44 24 04          	lea    eax,[esp+0x4]
    7789:	50                   	push   eax
    778a:	68 e9 07 00 00       	push   @obj3:sound_cpp_variable_17                                  ; fixup: num: 983, src obj: 1, src ofs: 0x778b, dst obj: 3, dst ofs: 0x7e9
    778f:	b2 3d                	mov    dl,0x3d
    7791:	89 ce                	mov    esi,ecx
SOUND_detect_first_branch_12:
    7793:	8a 06                	mov    al,BYTE PTR [esi]
    7795:	3a c2                	cmp    al,dl
    7797:	74 12                	je     SOUND_detect_first_branch_14
    7799:	3c 00                	cmp    al,0x0
    779b:	74 0c                	je     SOUND_detect_first_branch_13
    779d:	46                   	inc    esi
    779e:	8a 06                	mov    al,BYTE PTR [esi]
    77a0:	3a c2                	cmp    al,dl
    77a2:	74 07                	je     SOUND_detect_first_branch_14
    77a4:	46                   	inc    esi
    77a5:	3c 00                	cmp    al,0x0
    77a7:	75 ea                	jne    SOUND_detect_first_branch_12
SOUND_detect_first_branch_13:
    77a9:	2b f6                	sub    esi,esi
SOUND_detect_first_branch_14:
    77ab:	46                   	inc    esi
    77ac:	56                   	push   esi
    77ad:	e8 1e b7 06 00       	call   sscanf_
    77b2:	83 c4 0c             	add    esp,0xc
    77b5:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
    77b9:	eb 48                	jmp    SOUND_detect_first_branch_19
SOUND_detect_first_branch_15:
    77bb:	bb 09 00 00 00       	mov    ebx,0x9
    77c0:	ba ec 07 00 00       	mov    edx,@obj3:sound_cpp_variable_18                              ; fixup: num: 982, src obj: 1, src ofs: 0x77c1, dst obj: 3, dst ofs: 0x7ec
    77c5:	89 c8                	mov    eax,ecx
    77c7:	e8 87 b6 06 00       	call   strncmp_
    77cc:	85 c0                	test   eax,eax
    77ce:	75 39                	jne    SOUND_detect_first_branch_20
    77d0:	8d 44 24 04          	lea    eax,[esp+0x4]
    77d4:	50                   	push   eax
    77d5:	68 f6 07 00 00       	push   @obj3:sound_cpp_variable_19                                  ; fixup: num: 981, src obj: 1, src ofs: 0x77d6, dst obj: 3, dst ofs: 0x7f6
    77da:	b2 3d                	mov    dl,0x3d
    77dc:	89 ce                	mov    esi,ecx
SOUND_detect_first_branch_16:
    77de:	8a 06                	mov    al,BYTE PTR [esi]
    77e0:	3a c2                	cmp    al,dl
    77e2:	74 12                	je     SOUND_detect_first_branch_18
    77e4:	3c 00                	cmp    al,0x0
    77e6:	74 0c                	je     SOUND_detect_first_branch_17
    77e8:	46                   	inc    esi
    77e9:	8a 06                	mov    al,BYTE PTR [esi]
    77eb:	3a c2                	cmp    al,dl
    77ed:	74 07                	je     SOUND_detect_first_branch_18
    77ef:	46                   	inc    esi
    77f0:	3c 00                	cmp    al,0x0
    77f2:	75 ea                	jne    SOUND_detect_first_branch_16
SOUND_detect_first_branch_17:
    77f4:	2b f6                	sub    esi,esi
SOUND_detect_first_branch_18:
    77f6:	46                   	inc    esi
    77f7:	56                   	push   esi
    77f8:	e8 d3 b6 06 00       	call   sscanf_
    77fd:	83 c4 0c             	add    esp,0xc
    7800:	8b 14 24             	mov    edx,DWORD PTR [esp]
SOUND_detect_first_branch_19:
    7803:	8a 44 24 04          	mov    al,BYTE PTR [esp+0x4]
    7807:	88 02                	mov    BYTE PTR [edx],al
SOUND_detect_first_branch_20:
    7809:	f6 47 0c 10          	test   BYTE PTR [edi+0xc],0x10
    780d:	0f 84 8f fe ff ff    	je     SOUND_detect_first_branch_3
SOUND_detect_first_branch_21:
    7813:	bb e8 a2 01 00       	mov    ebx,@obj3:capabilities                                       ; fixup: num: 990, src obj: 1, src ofs: 0x7814, dst obj: 3, dst ofs: 0x1a2e8
    7818:	31 c0                	xor    eax,eax
    781a:	8c d9                	mov    ecx,ds
    781c:	66 8b 45 00          	mov    ax,WORD PTR [ebp+0x0]
    7820:	8b 54 24 20          	mov    edx,DWORD PTR [esp+0x20]
    7824:	e8 4b ad 06 00       	call   sosDIGIDetectGetCaps_
    7829:	a0 0c a3 01 00       	mov    al,ds:@obj3:capabilities_variable_1                          ; fixup: num: 989, src obj: 1, src ofs: 0x782a, dst obj: 3, dst ofs: 0x1a30c
    782e:	88 02                	mov    BYTE PTR [edx],al
    7830:	89 f8                	mov    eax,edi
    7832:	e8 07 96 06 00       	call   fclose_
SOUND_detect_first_branch_22:
    7837:	e8 2a aa 06 00       	call   sosDIGIDetectUnInit_
    783c:	b0 01                	mov    al,0x1
    783e:	83 c4 10             	add    esp,0x10
    7841:	5d                   	pop    ebp
    7842:	5f                   	pop    edi
    7843:	5e                   	pop    esi
    7844:	c2 08 00             	ret    0x8
SOUND_detect_first_branch_23:
    7847:	bb c0 a3 01 00       	mov    ebx,@obj3:bogus_mod_9                                        ; fixup: num: 988, src obj: 1, src ofs: 0x7848, dst obj: 3, dst ofs: 0x1a3c0
    784c:	b8 e8 a2 01 00       	mov    eax,@obj3:capabilities                                       ; fixup: num: 987, src obj: 1, src ofs: 0x784d, dst obj: 3, dst ofs: 0x1a2e8
    7851:	8c d9                	mov    ecx,ds
    7853:	8c da                	mov    edx,ds
    7855:	e8 b0 ae 06 00       	call   sosDIGIDetectFindFirst_
    785a:	a3 c4 a3 01 00       	mov    ds:@obj3:return_code,eax                                     ; fixup: num: 986, src obj: 1, src ofs: 0x785b, dst obj: 3, dst ofs: 0x1a3c4
    785f:	83 f8 07             	cmp    eax,0x7
    7862:	75 33                	jne    SOUND_detect_first_branch_24
    7864:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
    7868:	66 c7 45 00 00 00    	mov    WORD PTR [ebp+0x0],0x0
    786e:	66 c7 00 00 00       	mov    WORD PTR [eax],0x0
    7873:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
    7877:	c6 00 00             	mov    BYTE PTR [eax],0x0
    787a:	8b 04 24             	mov    eax,DWORD PTR [esp]
    787d:	c6 00 00             	mov    BYTE PTR [eax],0x0
    7880:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
    7884:	c6 00 00             	mov    BYTE PTR [eax],0x0
    7887:	e8 da a9 06 00       	call   sosDIGIDetectUnInit_
    788c:	30 c0                	xor    al,al
    788e:	83 c4 10             	add    esp,0x10
    7891:	5d                   	pop    ebp
    7892:	5f                   	pop    edi
    7893:	5e                   	pop    esi
    7894:	c2 08 00             	ret    0x8
SOUND_detect_first_branch_24:
    7897:	85 c0                	test   eax,eax
    7899:	74 0b                	je     SOUND_detect_first_branch_25
    789b:	30 c0                	xor    al,al
    789d:	83 c4 10             	add    esp,0x10
    78a0:	5d                   	pop    ebp
    78a1:	5f                   	pop    edi
    78a2:	5e                   	pop    esi
    78a3:	c2 08 00             	ret    0x8
SOUND_detect_first_branch_25:
    78a6:	b9 6c 00 00 00       	mov    ecx,0x6c
    78ab:	be e8 a2 01 00       	mov    esi,@obj3:capabilities                                       ; fixup: num: 883, src obj: 1, src ofs: 0x78ac, dst obj: 3, dst ofs: 0x1a2e8
    78b0:	bf 54 a3 01 00       	mov    edi,@obj3:temp_capabilities                                  ; fixup: num: 882, src obj: 1, src ofs: 0x78b1, dst obj: 3, dst ofs: 0x1a354
    78b5:	66 a1 4c a3 01 00    	mov    ax,ds:@obj3:capabilities_variable_3                          ; fixup: num: 881, src obj: 1, src ofs: 0x78b7, dst obj: 3, dst ofs: 0x1a34c
    78bb:	31 d2                	xor    edx,edx
    78bd:	66 89 45 00          	mov    WORD PTR [ebp+0x0],ax
    78c1:	57                   	push   edi
    78c2:	89 c8                	mov    eax,ecx
    78c4:	c1 e9 02             	shr    ecx,0x2
    78c7:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
    78c9:	8a c8                	mov    cl,al
    78cb:	80 e1 03             	and    cl,0x3
    78ce:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
    78d0:	5f                   	pop    edi
    78d1:	8b 1d b8 a3 01 00    	mov    ebx,DWORD PTR ds:@obj3:temp_capabilities_variable_3          ; fixup: num: 880, src obj: 1, src ofs: 0x78d3, dst obj: 3, dst ofs: 0x1a3b8
    78d7:	89 15 c8 a3 01 00    	mov    DWORD PTR ds:@obj3:iterator,edx                              ; fixup: num: 879, src obj: 1, src ofs: 0x78d9, dst obj: 3, dst ofs: 0x1a3c8
    78dd:	31 c0                	xor    eax,eax
SOUND_detect_first_branch_26:
    78df:	31 d2                	xor    edx,edx
    78e1:	66 8b 90 d8 2c 01 00 	mov    dx,WORD PTR [eax+@obj3:supported_cards]                      ; fixup: num: 878, src obj: 1, src ofs: 0x78e4, dst obj: 3, dst ofs: 0x12cd8
    78e8:	85 d2                	test   edx,edx
    78ea:	0f 84 db 01 00 00    	je     SOUND_detect_first_branch_34
    78f0:	31 d2                	xor    edx,edx
    78f2:	66 8b 90 d8 2c 01 00 	mov    dx,WORD PTR [eax+@obj3:supported_cards]                      ; fixup: num: 995, src obj: 1, src ofs: 0x78f5, dst obj: 3, dst ofs: 0x12cd8
    78f9:	39 da                	cmp    edx,ebx
    78fb:	0f 85 87 00 00 00    	jne    SOUND_detect_first_branch_28
    7901:	b9 6c 00 00 00       	mov    ecx,0x6c
    7906:	be 54 a3 01 00       	mov    esi,@obj3:temp_capabilities                                  ; fixup: num: 994, src obj: 1, src ofs: 0x7907, dst obj: 3, dst ofs: 0x1a354
    790b:	bf e8 a2 01 00       	mov    edi,@obj3:capabilities                                       ; fixup: num: 993, src obj: 1, src ofs: 0x790c, dst obj: 3, dst ofs: 0x1a2e8
    7910:	57                   	push   edi
    7911:	89 c8                	mov    eax,ecx
    7913:	c1 e9 02             	shr    ecx,0x2
    7916:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
    7918:	8a c8                	mov    cl,al
    791a:	80 e1 03             	and    cl,0x3
    791d:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
    791f:	5f                   	pop    edi
    7920:	8c da                	mov    edx,ds
    7922:	b8 d8 a2 01 00       	mov    eax,@obj3:hardware                                           ; fixup: num: 992, src obj: 1, src ofs: 0x7923, dst obj: 3, dst ofs: 0x1a2d8
    7927:	e8 56 b2 06 00       	call   sosDIGIDetectGetSettings_
    792c:	85 c0                	test   eax,eax
    792e:	74 11                	je     SOUND_detect_first_branch_27
    7930:	bb f9 07 00 00       	mov    ebx,@obj3:sound_cpp_variable_20                              ; fixup: num: 991, src obj: 1, src ofs: 0x7931, dst obj: 3, dst ofs: 0x7f9
    7935:	ba f4 00 00 00       	mov    edx,0xf4
    793a:	31 c0                	xor    eax,eax
    793c:	e8 ef 06 03 00       	call   _error_report
SOUND_detect_first_branch_27:
    7941:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
    7945:	a0 dc a2 01 00       	mov    al,ds:@obj3:hardware_variable_1                              ; fixup: num: 895, src obj: 1, src ofs: 0x7946, dst obj: 3, dst ofs: 0x1a2dc
    794a:	88 02                	mov    BYTE PTR [edx],al
    794c:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
    7950:	66 a1 d8 a2 01 00    	mov    ax,ds:@obj3:hardware                                         ; fixup: num: 894, src obj: 1, src ofs: 0x7952, dst obj: 3, dst ofs: 0x1a2d8
    7956:	66 89 02             	mov    WORD PTR [edx],ax
    7959:	8b 14 24             	mov    edx,DWORD PTR [esp]
    795c:	a0 e0 a2 01 00       	mov    al,ds:@obj3:hardware_variable_2                              ; fixup: num: 893, src obj: 1, src ofs: 0x795d, dst obj: 3, dst ofs: 0x1a2e0
    7961:	88 02                	mov    BYTE PTR [edx],al
    7963:	66 a1 4c a3 01 00    	mov    ax,ds:@obj3:capabilities_variable_3                          ; fixup: num: 892, src obj: 1, src ofs: 0x7965, dst obj: 3, dst ofs: 0x1a34c
    7969:	66 89 45 00          	mov    WORD PTR [ebp+0x0],ax
    796d:	8b 54 24 20          	mov    edx,DWORD PTR [esp+0x20]
    7971:	a0 0c a3 01 00       	mov    al,ds:@obj3:capabilities_variable_1                          ; fixup: num: 891, src obj: 1, src ofs: 0x7972, dst obj: 3, dst ofs: 0x1a30c
    7976:	88 02                	mov    BYTE PTR [edx],al
    7978:	e8 e9 a8 06 00       	call   sosDIGIDetectUnInit_
    797d:	b0 01                	mov    al,0x1
    797f:	83 c4 10             	add    esp,0x10
    7982:	5d                   	pop    ebp
    7983:	5f                   	pop    edi
    7984:	5e                   	pop    esi
    7985:	c2 08 00             	ret    0x8
SOUND_detect_first_branch_28:
    7988:	8b 0d c8 a3 01 00    	mov    ecx,DWORD PTR ds:@obj3:iterator                              ; fixup: num: 890, src obj: 1, src ofs: 0x798a, dst obj: 3, dst ofs: 0x1a3c8
    798e:	41                   	inc    ecx
    798f:	83 c0 02             	add    eax,0x2
    7992:	89 0d c8 a3 01 00    	mov    DWORD PTR ds:@obj3:iterator,ecx                              ; fixup: num: 889, src obj: 1, src ofs: 0x7994, dst obj: 3, dst ofs: 0x1a3c8
    7998:	e9 42 ff ff ff       	jmp    SOUND_detect_first_branch_26
SOUND_detect_first_branch_29:
    799d:	8b 35 c8 a3 01 00    	mov    esi,DWORD PTR ds:@obj3:iterator                              ; fixup: num: 888, src obj: 1, src ofs: 0x799f, dst obj: 3, dst ofs: 0x1a3c8
    79a3:	46                   	inc    esi
    79a4:	83 c0 02             	add    eax,0x2
    79a7:	e9 5f 01 00 00       	jmp    SOUND_detect_first_branch_36
SOUND_detect_first_branch_30:
    79ac:	0f 84 19 01 00 00    	je     SOUND_detect_first_branch_34
    79b2:	a1 78 a3 01 00       	mov    eax,ds:@obj3:temp_capabilities_variable_1                    ; fixup: num: 887, src obj: 1, src ofs: 0x79b3, dst obj: 3, dst ofs: 0x1a378
    79b7:	8b 3d 0c a3 01 00    	mov    edi,DWORD PTR ds:@obj3:capabilities_variable_1               ; fixup: num: 886, src obj: 1, src ofs: 0x79b9, dst obj: 3, dst ofs: 0x1a30c
    79bd:	39 f8                	cmp    eax,edi
    79bf:	0f 86 7c 00 00 00    	jbe    SOUND_detect_first_branch_32
    79c5:	b9 6c 00 00 00       	mov    ecx,0x6c
    79ca:	be 54 a3 01 00       	mov    esi,@obj3:temp_capabilities                                  ; fixup: num: 885, src obj: 1, src ofs: 0x79cb, dst obj: 3, dst ofs: 0x1a354
    79cf:	bf e8 a2 01 00       	mov    edi,@obj3:capabilities                                       ; fixup: num: 884, src obj: 1, src ofs: 0x79d0, dst obj: 3, dst ofs: 0x1a2e8
    79d4:	57                   	push   edi
    79d5:	89 c8                	mov    eax,ecx
    79d7:	c1 e9 02             	shr    ecx,0x2
    79da:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
    79dc:	8a c8                	mov    cl,al
    79de:	80 e1 03             	and    cl,0x3
    79e1:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
    79e3:	5f                   	pop    edi
    79e4:	8c da                	mov    edx,ds
    79e6:	b8 d8 a2 01 00       	mov    eax,@obj3:hardware                                           ; fixup: num: 908, src obj: 1, src ofs: 0x79e7, dst obj: 3, dst ofs: 0x1a2d8
    79eb:	e8 92 b1 06 00       	call   sosDIGIDetectGetSettings_
    79f0:	85 c0                	test   eax,eax
    79f2:	74 11                	je     SOUND_detect_first_branch_31
    79f4:	bb fd 08 00 00       	mov    ebx,@obj3:sound_cpp_variable_23                              ; fixup: num: 907, src obj: 1, src ofs: 0x79f5, dst obj: 3, dst ofs: 0x8fd
    79f9:	ba 25 01 00 00       	mov    edx,0x125
    79fe:	31 c0                	xor    eax,eax
    7a00:	e8 2b 06 03 00       	call   _error_report
SOUND_detect_first_branch_31:
    7a05:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
    7a09:	a0 dc a2 01 00       	mov    al,ds:@obj3:hardware_variable_1                              ; fixup: num: 906, src obj: 1, src ofs: 0x7a0a, dst obj: 3, dst ofs: 0x1a2dc
    7a0e:	88 02                	mov    BYTE PTR [edx],al
    7a10:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
    7a14:	66 a1 d8 a2 01 00    	mov    ax,ds:@obj3:hardware                                         ; fixup: num: 905, src obj: 1, src ofs: 0x7a16, dst obj: 3, dst ofs: 0x1a2d8
    7a1a:	66 89 02             	mov    WORD PTR [edx],ax
    7a1d:	8b 14 24             	mov    edx,DWORD PTR [esp]
    7a20:	a0 e0 a2 01 00       	mov    al,ds:@obj3:hardware_variable_2                              ; fixup: num: 904, src obj: 1, src ofs: 0x7a21, dst obj: 3, dst ofs: 0x1a2e0
    7a25:	88 02                	mov    BYTE PTR [edx],al
    7a27:	66 a1 4c a3 01 00    	mov    ax,ds:@obj3:capabilities_variable_3                          ; fixup: num: 903, src obj: 1, src ofs: 0x7a29, dst obj: 3, dst ofs: 0x1a34c
    7a2d:	66 89 45 00          	mov    WORD PTR [ebp+0x0],ax
    7a31:	8b 54 24 20          	mov    edx,DWORD PTR [esp+0x20]
    7a35:	a0 0c a3 01 00       	mov    al,ds:@obj3:capabilities_variable_1                          ; fixup: num: 902, src obj: 1, src ofs: 0x7a36, dst obj: 3, dst ofs: 0x1a30c
    7a3a:	88 02                	mov    BYTE PTR [edx],al
    7a3c:	e9 8a 00 00 00       	jmp    SOUND_detect_first_branch_34
SOUND_detect_first_branch_32:
    7a41:	0f 85 84 00 00 00    	jne    SOUND_detect_first_branch_34
    7a47:	a1 7c a3 01 00       	mov    eax,ds:@obj3:temp_capabilities_variable_2                    ; fixup: num: 901, src obj: 1, src ofs: 0x7a48, dst obj: 3, dst ofs: 0x1a37c
    7a4c:	3b 05 10 a3 01 00    	cmp    eax,DWORD PTR ds:@obj3:capabilities_variable_2               ; fixup: num: 900, src obj: 1, src ofs: 0x7a4e, dst obj: 3, dst ofs: 0x1a310
    7a52:	72 77                	jb     SOUND_detect_first_branch_34
    7a54:	b9 6c 00 00 00       	mov    ecx,0x6c
    7a59:	be 54 a3 01 00       	mov    esi,@obj3:temp_capabilities                                  ; fixup: num: 899, src obj: 1, src ofs: 0x7a5a, dst obj: 3, dst ofs: 0x1a354
    7a5e:	bf e8 a2 01 00       	mov    edi,@obj3:capabilities                                       ; fixup: num: 898, src obj: 1, src ofs: 0x7a5f, dst obj: 3, dst ofs: 0x1a2e8
    7a63:	57                   	push   edi
    7a64:	89 c8                	mov    eax,ecx
    7a66:	c1 e9 02             	shr    ecx,0x2
    7a69:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
    7a6b:	8a c8                	mov    cl,al
    7a6d:	80 e1 03             	and    cl,0x3
    7a70:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
    7a72:	5f                   	pop    edi
    7a73:	8c da                	mov    edx,ds
    7a75:	b8 d8 a2 01 00       	mov    eax,@obj3:hardware                                           ; fixup: num: 897, src obj: 1, src ofs: 0x7a76, dst obj: 3, dst ofs: 0x1a2d8
    7a7a:	e8 03 b1 06 00       	call   sosDIGIDetectGetSettings_
    7a7f:	85 c0                	test   eax,eax
    7a81:	74 11                	je     SOUND_detect_first_branch_33
    7a83:	bb 67 09 00 00       	mov    ebx,@obj3:sound_cpp_variable_24                              ; fixup: num: 896, src obj: 1, src ofs: 0x7a84, dst obj: 3, dst ofs: 0x967
    7a88:	ba 32 01 00 00       	mov    edx,0x132
    7a8d:	31 c0                	xor    eax,eax
    7a8f:	e8 9c 05 03 00       	call   _error_report
SOUND_detect_first_branch_33:
    7a94:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
    7a98:	a0 dc a2 01 00       	mov    al,ds:@obj3:hardware_variable_1                              ; fixup: num: 923, src obj: 1, src ofs: 0x7a99, dst obj: 3, dst ofs: 0x1a2dc
    7a9d:	88 02                	mov    BYTE PTR [edx],al
    7a9f:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
    7aa3:	66 a1 d8 a2 01 00    	mov    ax,ds:@obj3:hardware                                         ; fixup: num: 922, src obj: 1, src ofs: 0x7aa5, dst obj: 3, dst ofs: 0x1a2d8
    7aa9:	66 89 02             	mov    WORD PTR [edx],ax
    7aac:	8b 14 24             	mov    edx,DWORD PTR [esp]
    7aaf:	a0 e0 a2 01 00       	mov    al,ds:@obj3:hardware_variable_2                              ; fixup: num: 921, src obj: 1, src ofs: 0x7ab0, dst obj: 3, dst ofs: 0x1a2e0
    7ab4:	88 02                	mov    BYTE PTR [edx],al
    7ab6:	66 a1 4c a3 01 00    	mov    ax,ds:@obj3:capabilities_variable_3                          ; fixup: num: 920, src obj: 1, src ofs: 0x7ab8, dst obj: 3, dst ofs: 0x1a34c
    7abc:	66 89 45 00          	mov    WORD PTR [ebp+0x0],ax
    7ac0:	8b 54 24 20          	mov    edx,DWORD PTR [esp+0x20]
    7ac4:	a0 0c a3 01 00       	mov    al,ds:@obj3:capabilities_variable_1                          ; fixup: num: 919, src obj: 1, src ofs: 0x7ac5, dst obj: 3, dst ofs: 0x1a30c
    7ac9:	88 02                	mov    BYTE PTR [edx],al
SOUND_detect_first_branch_34:
    7acb:	bb c0 a3 01 00       	mov    ebx,@obj3:bogus_mod_9                                        ; fixup: num: 918, src obj: 1, src ofs: 0x7acc, dst obj: 3, dst ofs: 0x1a3c0
    7ad0:	b8 54 a3 01 00       	mov    eax,@obj3:temp_capabilities                                  ; fixup: num: 917, src obj: 1, src ofs: 0x7ad1, dst obj: 3, dst ofs: 0x1a354
    7ad5:	8c d9                	mov    ecx,ds
    7ad7:	8c da                	mov    edx,ds
    7ad9:	e8 7e ae 06 00       	call   sosDIGIDetectFindNext_
    7ade:	a3 c4 a3 01 00       	mov    ds:@obj3:return_code,eax                                     ; fixup: num: 916, src obj: 1, src ofs: 0x7adf, dst obj: 3, dst ofs: 0x1a3c4
    7ae3:	83 f8 07             	cmp    eax,0x7
    7ae6:	0f 84 4b fd ff ff    	je     SOUND_detect_first_branch_22
    7aec:	85 c0                	test   eax,eax
    7aee:	74 11                	je     SOUND_detect_first_branch_35
    7af0:	bb 63 08 00 00       	mov    ebx,@obj3:sound_cpp_variable_21                              ; fixup: num: 915, src obj: 1, src ofs: 0x7af1, dst obj: 3, dst ofs: 0x863
    7af5:	ba 05 01 00 00       	mov    edx,0x105
    7afa:	31 c0                	xor    eax,eax
    7afc:	e8 2f 05 03 00       	call   _error_report
SOUND_detect_first_branch_35:
    7b01:	8b 0d b8 a3 01 00    	mov    ecx,DWORD PTR ds:@obj3:temp_capabilities_variable_3          ; fixup: num: 914, src obj: 1, src ofs: 0x7b03, dst obj: 3, dst ofs: 0x1a3b8
    7b07:	31 f6                	xor    esi,esi
    7b09:	31 c0                	xor    eax,eax
SOUND_detect_first_branch_36:
    7b0b:	89 35 c8 a3 01 00    	mov    DWORD PTR ds:@obj3:iterator,esi                              ; fixup: num: 913, src obj: 1, src ofs: 0x7b0d, dst obj: 3, dst ofs: 0x1a3c8
    7b11:	31 d2                	xor    edx,edx
    7b13:	66 8b 90 d8 2c 01 00 	mov    dx,WORD PTR [eax+@obj3:supported_cards]                      ; fixup: num: 912, src obj: 1, src ofs: 0x7b16, dst obj: 3, dst ofs: 0x12cd8
    7b1a:	85 d2                	test   edx,edx
    7b1c:	0f 84 8a fe ff ff    	je     SOUND_detect_first_branch_30
    7b22:	31 d2                	xor    edx,edx
    7b24:	66 8b 90 d8 2c 01 00 	mov    dx,WORD PTR [eax+@obj3:supported_cards]                      ; fixup: num: 911, src obj: 1, src ofs: 0x7b27, dst obj: 3, dst ofs: 0x12cd8
    7b2b:	39 ca                	cmp    edx,ecx
    7b2d:	0f 85 6a fe ff ff    	jne    SOUND_detect_first_branch_29
    7b33:	b9 6c 00 00 00       	mov    ecx,0x6c
    7b38:	be 54 a3 01 00       	mov    esi,@obj3:temp_capabilities                                  ; fixup: num: 910, src obj: 1, src ofs: 0x7b39, dst obj: 3, dst ofs: 0x1a354
    7b3d:	bf e8 a2 01 00       	mov    edi,@obj3:capabilities                                       ; fixup: num: 909, src obj: 1, src ofs: 0x7b3e, dst obj: 3, dst ofs: 0x1a2e8
    7b42:	57                   	push   edi
    7b43:	89 c8                	mov    eax,ecx
    7b45:	c1 e9 02             	shr    ecx,0x2
    7b48:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
    7b4a:	8a c8                	mov    cl,al
    7b4c:	80 e1 03             	and    cl,0x3
    7b4f:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
    7b51:	5f                   	pop    edi
    7b52:	8c da                	mov    edx,ds
    7b54:	b8 d8 a2 01 00       	mov    eax,@obj3:hardware                                           ; fixup: num: 827, src obj: 1, src ofs: 0x7b55, dst obj: 3, dst ofs: 0x1a2d8
    7b59:	e8 24 b0 06 00       	call   sosDIGIDetectGetSettings_
    7b5e:	85 c0                	test   eax,eax
    7b60:	74 11                	je     SOUND_detect_first_branch_37
    7b62:	bb 93 08 00 00       	mov    ebx,@obj3:sound_cpp_variable_22                              ; fixup: num: 826, src obj: 1, src ofs: 0x7b63, dst obj: 3, dst ofs: 0x893
    7b67:	ba 11 01 00 00       	mov    edx,0x111
    7b6c:	31 c0                	xor    eax,eax
    7b6e:	e8 bd 04 03 00       	call   _error_report
SOUND_detect_first_branch_37:
    7b73:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
    7b77:	a0 dc a2 01 00       	mov    al,ds:@obj3:hardware_variable_1                              ; fixup: num: 934, src obj: 1, src ofs: 0x7b78, dst obj: 3, dst ofs: 0x1a2dc
    7b7c:	88 02                	mov    BYTE PTR [edx],al
    7b7e:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
    7b82:	66 a1 d8 a2 01 00    	mov    ax,ds:@obj3:hardware                                         ; fixup: num: 933, src obj: 1, src ofs: 0x7b84, dst obj: 3, dst ofs: 0x1a2d8
    7b88:	66 89 02             	mov    WORD PTR [edx],ax
    7b8b:	8b 14 24             	mov    edx,DWORD PTR [esp]
    7b8e:	a0 e0 a2 01 00       	mov    al,ds:@obj3:hardware_variable_2                              ; fixup: num: 932, src obj: 1, src ofs: 0x7b8f, dst obj: 3, dst ofs: 0x1a2e0
    7b93:	88 02                	mov    BYTE PTR [edx],al
    7b95:	66 a1 4c a3 01 00    	mov    ax,ds:@obj3:capabilities_variable_3                          ; fixup: num: 931, src obj: 1, src ofs: 0x7b97, dst obj: 3, dst ofs: 0x1a34c
    7b9b:	66 89 45 00          	mov    WORD PTR [ebp+0x0],ax
    7b9f:	8b 54 24 20          	mov    edx,DWORD PTR [esp+0x20]
    7ba3:	a0 0c a3 01 00       	mov    al,ds:@obj3:capabilities_variable_1                          ; fixup: num: 930, src obj: 1, src ofs: 0x7ba4, dst obj: 3, dst ofs: 0x1a30c
    7ba8:	88 02                	mov    BYTE PTR [edx],al
    7baa:	e8 b7 a6 06 00       	call   sosDIGIDetectUnInit_
    7baf:	b0 01                	mov    al,0x1
    7bb1:	83 c4 10             	add    esp,0x10
    7bb4:	5d                   	pop    ebp
    7bb5:	5f                   	pop    edi
    7bb6:	5e                   	pop    esi
    7bb7:	c2 08 00             	ret    0x8
    7bba:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'sosDIGISampleCallback'              -
;-------------------------------------------------
sosDIGISampleCallback:
    7bc0:	56                   	push   esi
    7bc1:	6b 1d c8 a1 01 00 74 	imul   ebx,DWORD PTR ds:@obj3:wSOSActiveSample,0x74                 ; fixup: num: 929, src obj: 1, src ofs: 0x7bc3, dst obj: 3, dst ofs: 0x1a1c8
    7bc8:	83 bb 80 2d 01 00 00 	cmp    DWORD PTR [ebx+@obj3:sSOSSampleData_variable_1],0x0          ; fixup: num: 928, src obj: 1, src ofs: 0x7bca, dst obj: 3, dst ofs: 0x12d80
    7bcf:	74 18                	je     sosDIGISampleCallback_branch_1
    7bd1:	8b 15 b8 a1 01 00    	mov    edx,DWORD PTR ds:@obj3:hSOSSampleHandle                      ; fixup: num: 927, src obj: 1, src ofs: 0x7bd3, dst obj: 3, dst ofs: 0x1a1b8
    7bd7:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 926, src obj: 1, src ofs: 0x7bd8, dst obj: 3, dst ofs: 0x1a1ac
    7bdc:	81 c3 78 2d 01 00    	add    ebx,@obj3:sSOSSampleData                                     ; fixup: num: 925, src obj: 1, src ofs: 0x7bde, dst obj: 3, dst ofs: 0x12d78
    7be2:	8c d9                	mov    ecx,ds
    7be4:	e8 e4 b9 06 00       	call   sosDIGIContinueSample_
sosDIGISampleCallback_branch_1:
    7be9:	31 f6                	xor    esi,esi
    7beb:	89 35 d0 a1 01 00    	mov    DWORD PTR ds:@obj3:wSOSSamplePending,esi                     ; fixup: num: 924, src obj: 1, src ofs: 0x7bed, dst obj: 3, dst ofs: 0x1a1d0
    7bf1:	5e                   	pop    esi
    7bf2:	cb                   	retf   
    7bf3:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    7bf9:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
    7bff:	90                   	nop

;-------------------------------------------------
;  Function 'W?$ct:sound_system$n()_'            -
;-------------------------------------------------
W?$ct:sound_system$n()_:
    7c00:	53                   	push   ebx
    7c01:	51                   	push   ecx
    7c02:	52                   	push   edx
    7c03:	56                   	push   esi
    7c04:	57                   	push   edi
    7c05:	55                   	push   ebp
    7c06:	83 ec 1c             	sub    esp,0x1c
    7c09:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
    7c0d:	8b 6c 24 08          	mov    ebp,DWORD PTR [esp+0x8]
    7c11:	ba d8 a2 01 00       	mov    edx,@obj3:hardware                                           ; fixup: num: 836, src obj: 1, src ofs: 0x7c12, dst obj: 3, dst ofs: 0x1a2d8
    7c16:	bb dc a2 01 00       	mov    ebx,@obj3:hardware_variable_1                                ; fixup: num: 835, src obj: 1, src ofs: 0x7c17, dst obj: 3, dst ofs: 0x1a2dc
    7c1b:	30 e4                	xor    ah,ah
    7c1d:	b9 e0 a2 01 00       	mov    ecx,@obj3:hardware_variable_2                                ; fixup: num: 834, src obj: 1, src ofs: 0x7c1e, dst obj: 3, dst ofs: 0x1a2e0
    7c22:	88 64 24 18          	mov    BYTE PTR [esp+0x18],ah
    7c26:	83 c5 10             	add    ebp,0x10
    7c29:	89 54 24 14          	mov    DWORD PTR [esp+0x14],edx
    7c2d:	89 1c 24             	mov    DWORD PTR [esp],ebx
    7c30:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
    7c34:	89 4c 24 0c          	mov    DWORD PTR [esp+0xc],ecx
    7c38:	83 c0 1c             	add    eax,0x1c
    7c3b:	31 d2                	xor    edx,edx
    7c3d:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
    7c41:	31 c0                	xor    eax,eax
    7c43:	8d 4c 24 18          	lea    ecx,[esp+0x18]
    7c47:	e8 d0 a4 06 00       	call   sosDIGIDetectInit_
    7c4c:	85 c0                	test   eax,eax
    7c4e:	74 11                	je     W?$ct:sound_system$n()__branch_1
    7c50:	bb 5b 07 00 00       	mov    ebx,@obj3:sound_cpp_variable_5                               ; fixup: num: 833, src obj: 1, src ofs: 0x7c51, dst obj: 3, dst ofs: 0x75b
    7c55:	ba a8 00 00 00       	mov    edx,0xa8
    7c5a:	31 c0                	xor    eax,eax
    7c5c:	e8 cf 03 03 00       	call   _error_report
W?$ct:sound_system$n()__branch_1:
    7c61:	ba 8c 07 00 00       	mov    edx,@obj3:sound_cpp_variable_6                               ; fixup: num: 832, src obj: 1, src ofs: 0x7c62, dst obj: 3, dst ofs: 0x78c
    7c66:	b8 8f 07 00 00       	mov    eax,@obj3:sound_cpp_variable_7                               ; fixup: num: 831, src obj: 1, src ofs: 0x7c67, dst obj: 3, dst ofs: 0x78f
    7c6b:	e8 38 91 06 00       	call   fopen_
    7c70:	89 c7                	mov    edi,eax
    7c72:	85 c0                	test   eax,eax
    7c74:	0f 84 0b 02 00 00    	je     W?$ct:sound_system$n()__branch_24
    7c7a:	68 99 07 00 00       	push   @obj3:sound_cpp_variable_8                                   ; fixup: num: 830, src obj: 1, src ofs: 0x7c7b, dst obj: 3, dst ofs: 0x799
    7c7f:	68 a3 07 00 00       	push   @obj3:sound_cpp_variable_9                                   ; fixup: num: 829, src obj: 1, src ofs: 0x7c80, dst obj: 3, dst ofs: 0x7a3
    7c84:	c6 01 01             	mov    BYTE PTR [ecx],0x1
    7c87:	e8 c6 8e 06 00       	call   printf_
    7c8c:	83 c4 08             	add    esp,0x8
    7c8f:	b9 fc 37 02 00       	mov    ecx,@obj3:log_buffer                                         ; fixup: num: 828, src obj: 1, src ofs: 0x7c90, dst obj: 3, dst ofs: 0x237fc
    7c94:	be 09 00 00 00       	mov    esi,0x9
W?$ct:sound_system$n()__branch_2:
    7c99:	ba ff 00 00 00       	mov    edx,0xff
    7c9e:	89 fb                	mov    ebx,edi
    7ca0:	89 c8                	mov    eax,ecx
    7ca2:	e8 49 b1 06 00       	call   fgets_
    7ca7:	ba b4 07 00 00       	mov    edx,@obj3:sound_cpp_variable_10                              ; fixup: num: 842, src obj: 1, src ofs: 0x7ca8, dst obj: 3, dst ofs: 0x7b4
    7cac:	89 f3                	mov    ebx,esi
    7cae:	89 c8                	mov    eax,ecx
    7cb0:	e8 9e b1 06 00       	call   strncmp_
    7cb5:	85 c0                	test   eax,eax
    7cb7:	75 e0                	jne    W?$ct:sound_system$n()__branch_2
    7cb9:	b9 fc 37 02 00       	mov    ecx,@obj3:log_buffer                                         ; fixup: num: 841, src obj: 1, src ofs: 0x7cba, dst obj: 3, dst ofs: 0x237fc
W?$ct:sound_system$n()__branch_3:
    7cbe:	ba ff 00 00 00       	mov    edx,0xff
    7cc3:	89 fb                	mov    ebx,edi
    7cc5:	89 c8                	mov    eax,ecx
    7cc7:	e8 24 b1 06 00       	call   fgets_
    7ccc:	bb 06 00 00 00       	mov    ebx,0x6
    7cd1:	ba be 07 00 00       	mov    edx,@obj3:sound_cpp_variable_11                              ; fixup: num: 840, src obj: 1, src ofs: 0x7cd2, dst obj: 3, dst ofs: 0x7be
    7cd6:	89 c8                	mov    eax,ecx
    7cd8:	e8 76 b1 06 00       	call   strncmp_
    7cdd:	85 c0                	test   eax,eax
    7cdf:	0f 84 4a 01 00 00    	je     W?$ct:sound_system$n()__branch_21
    7ce5:	bb 08 00 00 00       	mov    ebx,0x8
    7cea:	ba c5 07 00 00       	mov    edx,@obj3:sound_cpp_variable_12                              ; fixup: num: 839, src obj: 1, src ofs: 0x7ceb, dst obj: 3, dst ofs: 0x7c5
    7cef:	89 c8                	mov    eax,ecx
    7cf1:	e8 5d b1 06 00       	call   strncmp_
    7cf6:	85 c0                	test   eax,eax
    7cf8:	75 3d                	jne    W?$ct:sound_system$n()__branch_7
    7cfa:	8d 44 24 04          	lea    eax,[esp+0x4]
    7cfe:	50                   	push   eax
    7cff:	68 ce 07 00 00       	push   @obj3:sound_cpp_variable_13                                  ; fixup: num: 838, src obj: 1, src ofs: 0x7d00, dst obj: 3, dst ofs: 0x7ce
    7d04:	b2 78                	mov    dl,0x78
    7d06:	89 ce                	mov    esi,ecx
W?$ct:sound_system$n()__branch_4:
    7d08:	8a 06                	mov    al,BYTE PTR [esi]
    7d0a:	3a c2                	cmp    al,dl
    7d0c:	74 12                	je     W?$ct:sound_system$n()__branch_6
    7d0e:	3c 00                	cmp    al,0x0
    7d10:	74 0c                	je     W?$ct:sound_system$n()__branch_5
    7d12:	46                   	inc    esi
    7d13:	8a 06                	mov    al,BYTE PTR [esi]
    7d15:	3a c2                	cmp    al,dl
    7d17:	74 07                	je     W?$ct:sound_system$n()__branch_6
    7d19:	46                   	inc    esi
    7d1a:	3c 00                	cmp    al,0x0
    7d1c:	75 ea                	jne    W?$ct:sound_system$n()__branch_4
W?$ct:sound_system$n()__branch_5:
    7d1e:	2b f6                	sub    esi,esi
W?$ct:sound_system$n()__branch_6:
    7d20:	46                   	inc    esi
    7d21:	56                   	push   esi
    7d22:	e8 a9 b1 06 00       	call   sscanf_
    7d27:	83 c4 0c             	add    esp,0xc
    7d2a:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
    7d2e:	66 89 45 00          	mov    WORD PTR [ebp+0x0],ax
    7d32:	e9 ee 00 00 00       	jmp    W?$ct:sound_system$n()__branch_20
W?$ct:sound_system$n()__branch_7:
    7d37:	bb 0a 00 00 00       	mov    ebx,0xa
    7d3c:	ba d1 07 00 00       	mov    edx,@obj3:sound_cpp_variable_14                              ; fixup: num: 837, src obj: 1, src ofs: 0x7d3d, dst obj: 3, dst ofs: 0x7d1
    7d41:	89 c8                	mov    eax,ecx
    7d43:	e8 0b b1 06 00       	call   strncmp_
    7d48:	85 c0                	test   eax,eax
    7d4a:	75 40                	jne    W?$ct:sound_system$n()__branch_11
    7d4c:	8d 44 24 04          	lea    eax,[esp+0x4]
    7d50:	50                   	push   eax
    7d51:	68 dc 07 00 00       	push   @obj3:sound_cpp_variable_15                                  ; fixup: num: 847, src obj: 1, src ofs: 0x7d52, dst obj: 3, dst ofs: 0x7dc
    7d56:	b2 78                	mov    dl,0x78
    7d58:	89 ce                	mov    esi,ecx
W?$ct:sound_system$n()__branch_8:
    7d5a:	8a 06                	mov    al,BYTE PTR [esi]
    7d5c:	3a c2                	cmp    al,dl
    7d5e:	74 12                	je     W?$ct:sound_system$n()__branch_10
    7d60:	3c 00                	cmp    al,0x0
    7d62:	74 0c                	je     W?$ct:sound_system$n()__branch_9
    7d64:	46                   	inc    esi
    7d65:	8a 06                	mov    al,BYTE PTR [esi]
    7d67:	3a c2                	cmp    al,dl
    7d69:	74 07                	je     W?$ct:sound_system$n()__branch_10
    7d6b:	46                   	inc    esi
    7d6c:	3c 00                	cmp    al,0x0
    7d6e:	75 ea                	jne    W?$ct:sound_system$n()__branch_8
W?$ct:sound_system$n()__branch_9:
    7d70:	2b f6                	sub    esi,esi
W?$ct:sound_system$n()__branch_10:
    7d72:	46                   	inc    esi
    7d73:	56                   	push   esi
    7d74:	e8 57 b1 06 00       	call   sscanf_
    7d79:	83 c4 0c             	add    esp,0xc
    7d7c:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
    7d80:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
    7d84:	66 89 02             	mov    WORD PTR [edx],ax
    7d87:	e9 99 00 00 00       	jmp    W?$ct:sound_system$n()__branch_20
W?$ct:sound_system$n()__branch_11:
    7d8c:	bb 09 00 00 00       	mov    ebx,0x9
    7d91:	ba df 07 00 00       	mov    edx,@obj3:sound_cpp_variable_16                              ; fixup: num: 846, src obj: 1, src ofs: 0x7d92, dst obj: 3, dst ofs: 0x7df
    7d96:	89 c8                	mov    eax,ecx
    7d98:	e8 b6 b0 06 00       	call   strncmp_
    7d9d:	85 c0                	test   eax,eax
    7d9f:	75 35                	jne    W?$ct:sound_system$n()__branch_15
    7da1:	8d 44 24 04          	lea    eax,[esp+0x4]
    7da5:	50                   	push   eax
    7da6:	68 e9 07 00 00       	push   @obj3:sound_cpp_variable_17                                  ; fixup: num: 845, src obj: 1, src ofs: 0x7da7, dst obj: 3, dst ofs: 0x7e9
    7dab:	b2 3d                	mov    dl,0x3d
    7dad:	89 ce                	mov    esi,ecx
W?$ct:sound_system$n()__branch_12:
    7daf:	8a 06                	mov    al,BYTE PTR [esi]
    7db1:	3a c2                	cmp    al,dl
    7db3:	74 12                	je     W?$ct:sound_system$n()__branch_14
    7db5:	3c 00                	cmp    al,0x0
    7db7:	74 0c                	je     W?$ct:sound_system$n()__branch_13
    7db9:	46                   	inc    esi
    7dba:	8a 06                	mov    al,BYTE PTR [esi]
    7dbc:	3a c2                	cmp    al,dl
    7dbe:	74 07                	je     W?$ct:sound_system$n()__branch_14
    7dc0:	46                   	inc    esi
    7dc1:	3c 00                	cmp    al,0x0
    7dc3:	75 ea                	jne    W?$ct:sound_system$n()__branch_12
W?$ct:sound_system$n()__branch_13:
    7dc5:	2b f6                	sub    esi,esi
W?$ct:sound_system$n()__branch_14:
    7dc7:	46                   	inc    esi
    7dc8:	56                   	push   esi
    7dc9:	e8 02 b1 06 00       	call   sscanf_
    7dce:	83 c4 0c             	add    esp,0xc
    7dd1:	8b 14 24             	mov    edx,DWORD PTR [esp]
    7dd4:	eb 49                	jmp    W?$ct:sound_system$n()__branch_19
W?$ct:sound_system$n()__branch_15:
    7dd6:	bb 09 00 00 00       	mov    ebx,0x9
    7ddb:	ba ec 07 00 00       	mov    edx,@obj3:sound_cpp_variable_18                              ; fixup: num: 844, src obj: 1, src ofs: 0x7ddc, dst obj: 3, dst ofs: 0x7ec
    7de0:	89 c8                	mov    eax,ecx
    7de2:	e8 6c b0 06 00       	call   strncmp_
    7de7:	85 c0                	test   eax,eax
    7de9:	75 3a                	jne    W?$ct:sound_system$n()__branch_20
    7deb:	8d 44 24 04          	lea    eax,[esp+0x4]
    7def:	50                   	push   eax
    7df0:	68 f6 07 00 00       	push   @obj3:sound_cpp_variable_19                                  ; fixup: num: 843, src obj: 1, src ofs: 0x7df1, dst obj: 3, dst ofs: 0x7f6
    7df5:	b2 3d                	mov    dl,0x3d
    7df7:	89 ce                	mov    esi,ecx
W?$ct:sound_system$n()__branch_16:
    7df9:	8a 06                	mov    al,BYTE PTR [esi]
    7dfb:	3a c2                	cmp    al,dl
    7dfd:	74 12                	je     W?$ct:sound_system$n()__branch_18
    7dff:	3c 00                	cmp    al,0x0
    7e01:	74 0c                	je     W?$ct:sound_system$n()__branch_17
    7e03:	46                   	inc    esi
    7e04:	8a 06                	mov    al,BYTE PTR [esi]
    7e06:	3a c2                	cmp    al,dl
    7e08:	74 07                	je     W?$ct:sound_system$n()__branch_18
    7e0a:	46                   	inc    esi
    7e0b:	3c 00                	cmp    al,0x0
    7e0d:	75 ea                	jne    W?$ct:sound_system$n()__branch_16
W?$ct:sound_system$n()__branch_17:
    7e0f:	2b f6                	sub    esi,esi
W?$ct:sound_system$n()__branch_18:
    7e11:	46                   	inc    esi
    7e12:	56                   	push   esi
    7e13:	e8 b8 b0 06 00       	call   sscanf_
    7e18:	83 c4 0c             	add    esp,0xc
    7e1b:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
W?$ct:sound_system$n()__branch_19:
    7e1f:	8a 44 24 04          	mov    al,BYTE PTR [esp+0x4]
    7e23:	88 02                	mov    BYTE PTR [edx],al
W?$ct:sound_system$n()__branch_20:
    7e25:	f6 47 0c 10          	test   BYTE PTR [edi+0xc],0x10
    7e29:	0f 84 8f fe ff ff    	je     W?$ct:sound_system$n()__branch_3
W?$ct:sound_system$n()__branch_21:
    7e2f:	bb e8 a2 01 00       	mov    ebx,@obj3:capabilities                                       ; fixup: num: 853, src obj: 1, src ofs: 0x7e30, dst obj: 3, dst ofs: 0x1a2e8
    7e34:	31 c0                	xor    eax,eax
    7e36:	8c d9                	mov    ecx,ds
    7e38:	66 8b 45 00          	mov    ax,WORD PTR [ebp+0x0]
    7e3c:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
    7e40:	e8 2f a7 06 00       	call   sosDIGIDetectGetCaps_
    7e45:	a0 0c a3 01 00       	mov    al,ds:@obj3:capabilities_variable_1                          ; fixup: num: 852, src obj: 1, src ofs: 0x7e46, dst obj: 3, dst ofs: 0x1a30c
    7e4a:	88 02                	mov    BYTE PTR [edx],al
    7e4c:	89 f8                	mov    eax,edi
    7e4e:	e8 eb 8f 06 00       	call   fclose_
W?$ct:sound_system$n()__branch_22:
    7e53:	e8 0e a4 06 00       	call   sosDIGIDetectUnInit_
    7e58:	b0 01                	mov    al,0x1
W?$ct:sound_system$n()__branch_23:
    7e5a:	25 ff 00 00 00       	and    eax,0xff
    7e5f:	0f 85 75 03 00 00    	jne    W?$ct:sound_system$n()__branch_39
    7e65:	b8 d1 09 00 00       	mov    eax,@obj3:sound_cpp_variable_25                              ; fixup: num: 851, src obj: 1, src ofs: 0x7e66, dst obj: 3, dst ofs: 0x9d1
    7e6a:	e8 00 92 06 00       	call   puts_
    7e6f:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
    7e73:	c6 40 20 00          	mov    BYTE PTR [eax+0x20],0x0
    7e77:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
    7e7b:	83 c4 1c             	add    esp,0x1c
    7e7e:	5d                   	pop    ebp
    7e7f:	5f                   	pop    edi
    7e80:	5e                   	pop    esi
    7e81:	5a                   	pop    edx
    7e82:	59                   	pop    ecx
    7e83:	5b                   	pop    ebx
    7e84:	c3                   	ret    
W?$ct:sound_system$n()__branch_24:
    7e85:	bb c0 a3 01 00       	mov    ebx,@obj3:bogus_mod_9                                        ; fixup: num: 850, src obj: 1, src ofs: 0x7e86, dst obj: 3, dst ofs: 0x1a3c0
    7e8a:	b8 e8 a2 01 00       	mov    eax,@obj3:capabilities                                       ; fixup: num: 849, src obj: 1, src ofs: 0x7e8b, dst obj: 3, dst ofs: 0x1a2e8
    7e8f:	8c d9                	mov    ecx,ds
    7e91:	8c da                	mov    edx,ds
    7e93:	e8 72 a8 06 00       	call   sosDIGIDetectFindFirst_
    7e98:	a3 c4 a3 01 00       	mov    ds:@obj3:return_code,eax                                     ; fixup: num: 848, src obj: 1, src ofs: 0x7e99, dst obj: 3, dst ofs: 0x1a3c4
    7e9d:	83 f8 07             	cmp    eax,0x7
    7ea0:	75 2c                	jne    W?$ct:sound_system$n()__branch_25
    7ea2:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
    7ea6:	66 c7 45 00 00 00    	mov    WORD PTR [ebp+0x0],0x0
    7eac:	66 c7 00 00 00       	mov    WORD PTR [eax],0x0
    7eb1:	8b 04 24             	mov    eax,DWORD PTR [esp]
    7eb4:	c6 00 00             	mov    BYTE PTR [eax],0x0
    7eb7:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
    7ebb:	c6 00 00             	mov    BYTE PTR [eax],0x0
    7ebe:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
    7ec2:	c6 00 00             	mov    BYTE PTR [eax],0x0
    7ec5:	e8 9c a3 06 00       	call   sosDIGIDetectUnInit_
    7eca:	30 c0                	xor    al,al
    7ecc:	eb 8c                	jmp    W?$ct:sound_system$n()__branch_23
W?$ct:sound_system$n()__branch_25:
    7ece:	85 c0                	test   eax,eax
    7ed0:	74 04                	je     W?$ct:sound_system$n()__branch_26
    7ed2:	30 c0                	xor    al,al
    7ed4:	eb 84                	jmp    W?$ct:sound_system$n()__branch_23
W?$ct:sound_system$n()__branch_26:
    7ed6:	b9 6c 00 00 00       	mov    ecx,0x6c
    7edb:	be e8 a2 01 00       	mov    esi,@obj3:capabilities                                       ; fixup: num: 862, src obj: 1, src ofs: 0x7edc, dst obj: 3, dst ofs: 0x1a2e8
    7ee0:	66 a1 4c a3 01 00    	mov    ax,ds:@obj3:capabilities_variable_3                          ; fixup: num: 861, src obj: 1, src ofs: 0x7ee2, dst obj: 3, dst ofs: 0x1a34c
    7ee6:	bf 54 a3 01 00       	mov    edi,@obj3:temp_capabilities                                  ; fixup: num: 860, src obj: 1, src ofs: 0x7ee7, dst obj: 3, dst ofs: 0x1a354
    7eeb:	66 89 45 00          	mov    WORD PTR [ebp+0x0],ax
    7eef:	57                   	push   edi
    7ef0:	89 c8                	mov    eax,ecx
    7ef2:	c1 e9 02             	shr    ecx,0x2
    7ef5:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
    7ef7:	8a c8                	mov    cl,al
    7ef9:	80 e1 03             	and    cl,0x3
    7efc:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
    7efe:	5f                   	pop    edi
    7eff:	8b 3d b8 a3 01 00    	mov    edi,DWORD PTR ds:@obj3:temp_capabilities_variable_3          ; fixup: num: 859, src obj: 1, src ofs: 0x7f01, dst obj: 3, dst ofs: 0x1a3b8
    7f05:	31 f6                	xor    esi,esi
    7f07:	31 c0                	xor    eax,eax
    7f09:	89 35 c8 a3 01 00    	mov    DWORD PTR ds:@obj3:iterator,esi                              ; fixup: num: 858, src obj: 1, src ofs: 0x7f0b, dst obj: 3, dst ofs: 0x1a3c8
W?$ct:sound_system$n()__branch_27:
    7f0f:	31 d2                	xor    edx,edx
    7f11:	66 8b 90 d8 2c 01 00 	mov    dx,WORD PTR [eax+@obj3:supported_cards]                      ; fixup: num: 857, src obj: 1, src ofs: 0x7f14, dst obj: 3, dst ofs: 0x12cd8
    7f18:	85 d2                	test   edx,edx
    7f1a:	0f 84 d6 01 00 00    	je     W?$ct:sound_system$n()__branch_35
    7f20:	31 d2                	xor    edx,edx
    7f22:	66 8b 90 d8 2c 01 00 	mov    dx,WORD PTR [eax+@obj3:supported_cards]                      ; fixup: num: 856, src obj: 1, src ofs: 0x7f25, dst obj: 3, dst ofs: 0x12cd8
    7f29:	39 fa                	cmp    edx,edi
    7f2b:	0f 85 7c 00 00 00    	jne    W?$ct:sound_system$n()__branch_29
    7f31:	b9 6c 00 00 00       	mov    ecx,0x6c
    7f36:	be 54 a3 01 00       	mov    esi,@obj3:temp_capabilities                                  ; fixup: num: 855, src obj: 1, src ofs: 0x7f37, dst obj: 3, dst ofs: 0x1a354
    7f3b:	bf e8 a2 01 00       	mov    edi,@obj3:capabilities                                       ; fixup: num: 854, src obj: 1, src ofs: 0x7f3c, dst obj: 3, dst ofs: 0x1a2e8
    7f40:	57                   	push   edi
    7f41:	89 c8                	mov    eax,ecx
    7f43:	c1 e9 02             	shr    ecx,0x2
    7f46:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
    7f48:	8a c8                	mov    cl,al
    7f4a:	80 e1 03             	and    cl,0x3
    7f4d:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
    7f4f:	5f                   	pop    edi
    7f50:	8c da                	mov    edx,ds
    7f52:	b8 d8 a2 01 00       	mov    eax,@obj3:hardware                                           ; fixup: num: 877, src obj: 1, src ofs: 0x7f53, dst obj: 3, dst ofs: 0x1a2d8
    7f57:	e8 26 ac 06 00       	call   sosDIGIDetectGetSettings_
    7f5c:	85 c0                	test   eax,eax
    7f5e:	74 11                	je     W?$ct:sound_system$n()__branch_28
    7f60:	bb f9 07 00 00       	mov    ebx,@obj3:sound_cpp_variable_20                              ; fixup: num: 876, src obj: 1, src ofs: 0x7f61, dst obj: 3, dst ofs: 0x7f9
    7f65:	ba f4 00 00 00       	mov    edx,0xf4
    7f6a:	31 c0                	xor    eax,eax
    7f6c:	e8 bf 00 03 00       	call   _error_report
W?$ct:sound_system$n()__branch_28:
    7f71:	8b 14 24             	mov    edx,DWORD PTR [esp]
    7f74:	a0 dc a2 01 00       	mov    al,ds:@obj3:hardware_variable_1                              ; fixup: num: 875, src obj: 1, src ofs: 0x7f75, dst obj: 3, dst ofs: 0x1a2dc
    7f79:	88 02                	mov    BYTE PTR [edx],al
    7f7b:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
    7f7f:	66 a1 d8 a2 01 00    	mov    ax,ds:@obj3:hardware                                         ; fixup: num: 874, src obj: 1, src ofs: 0x7f81, dst obj: 3, dst ofs: 0x1a2d8
    7f85:	66 89 02             	mov    WORD PTR [edx],ax
    7f88:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
    7f8c:	a0 e0 a2 01 00       	mov    al,ds:@obj3:hardware_variable_2                              ; fixup: num: 873, src obj: 1, src ofs: 0x7f8d, dst obj: 3, dst ofs: 0x1a2e0
    7f91:	88 02                	mov    BYTE PTR [edx],al
    7f93:	66 a1 4c a3 01 00    	mov    ax,ds:@obj3:capabilities_variable_3                          ; fixup: num: 872, src obj: 1, src ofs: 0x7f95, dst obj: 3, dst ofs: 0x1a34c
    7f99:	66 89 45 00          	mov    WORD PTR [ebp+0x0],ax
    7f9d:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
    7fa1:	a0 0c a3 01 00       	mov    al,ds:@obj3:capabilities_variable_1                          ; fixup: num: 871, src obj: 1, src ofs: 0x7fa2, dst obj: 3, dst ofs: 0x1a30c
    7fa6:	88 02                	mov    BYTE PTR [edx],al
    7fa8:	e9 a6 fe ff ff       	jmp    W?$ct:sound_system$n()__branch_22
W?$ct:sound_system$n()__branch_29:
    7fad:	8b 15 c8 a3 01 00    	mov    edx,DWORD PTR ds:@obj3:iterator                              ; fixup: num: 870, src obj: 1, src ofs: 0x7faf, dst obj: 3, dst ofs: 0x1a3c8
    7fb3:	42                   	inc    edx
    7fb4:	83 c0 02             	add    eax,0x2
    7fb7:	89 15 c8 a3 01 00    	mov    DWORD PTR ds:@obj3:iterator,edx                              ; fixup: num: 869, src obj: 1, src ofs: 0x7fb9, dst obj: 3, dst ofs: 0x1a3c8
    7fbd:	e9 4d ff ff ff       	jmp    W?$ct:sound_system$n()__branch_27
W?$ct:sound_system$n()__branch_30:
    7fc2:	8b 0d c8 a3 01 00    	mov    ecx,DWORD PTR ds:@obj3:iterator                              ; fixup: num: 868, src obj: 1, src ofs: 0x7fc4, dst obj: 3, dst ofs: 0x1a3c8
    7fc8:	41                   	inc    ecx
    7fc9:	83 c0 02             	add    eax,0x2
    7fcc:	89 0d c8 a3 01 00    	mov    DWORD PTR ds:@obj3:iterator,ecx                              ; fixup: num: 867, src obj: 1, src ofs: 0x7fce, dst obj: 3, dst ofs: 0x1a3c8
    7fd2:	e9 65 01 00 00       	jmp    W?$ct:sound_system$n()__branch_37
W?$ct:sound_system$n()__branch_31:
    7fd7:	0f 84 19 01 00 00    	je     W?$ct:sound_system$n()__branch_35
    7fdd:	a1 78 a3 01 00       	mov    eax,ds:@obj3:temp_capabilities_variable_1                    ; fixup: num: 866, src obj: 1, src ofs: 0x7fde, dst obj: 3, dst ofs: 0x1a378
    7fe2:	8b 0d 0c a3 01 00    	mov    ecx,DWORD PTR ds:@obj3:capabilities_variable_1               ; fixup: num: 865, src obj: 1, src ofs: 0x7fe4, dst obj: 3, dst ofs: 0x1a30c
    7fe8:	39 c8                	cmp    eax,ecx
    7fea:	0f 86 7c 00 00 00    	jbe    W?$ct:sound_system$n()__branch_33
    7ff0:	b9 6c 00 00 00       	mov    ecx,0x6c
    7ff5:	be 54 a3 01 00       	mov    esi,@obj3:temp_capabilities                                  ; fixup: num: 864, src obj: 1, src ofs: 0x7ff6, dst obj: 3, dst ofs: 0x1a354
    7ffa:	bf e8 a2 01 00       	mov    edi,@obj3:capabilities                                       ; fixup: num: 863, src obj: 1, src ofs: 0x7ffb, dst obj: 3, dst ofs: 0x1a2e8
    7fff:	57                   	push   edi
    8000:	89 c8                	mov    eax,ecx
    8002:	c1 e9 02             	shr    ecx,0x2
    8005:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
    8007:	8a c8                	mov    cl,al
    8009:	80 e1 03             	and    cl,0x3
    800c:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
    800e:	5f                   	pop    edi
    800f:	8c da                	mov    edx,ds
    8011:	b8 d8 a2 01 00       	mov    eax,@obj3:hardware                                           ; fixup: num: 1088, src obj: 1, src ofs: 0x8012, dst obj: 3, dst ofs: 0x1a2d8
    8016:	e8 67 ab 06 00       	call   sosDIGIDetectGetSettings_
    801b:	85 c0                	test   eax,eax
    801d:	74 11                	je     W?$ct:sound_system$n()__branch_32
    801f:	bb fd 08 00 00       	mov    ebx,@obj3:sound_cpp_variable_23                              ; fixup: num: 1087, src obj: 1, src ofs: 0x8020, dst obj: 3, dst ofs: 0x8fd
    8024:	ba 25 01 00 00       	mov    edx,0x125
    8029:	31 c0                	xor    eax,eax
    802b:	e8 00 00 03 00       	call   _error_report
W?$ct:sound_system$n()__branch_32:
    8030:	8b 14 24             	mov    edx,DWORD PTR [esp]
    8033:	a0 dc a2 01 00       	mov    al,ds:@obj3:hardware_variable_1                              ; fixup: num: 1086, src obj: 1, src ofs: 0x8034, dst obj: 3, dst ofs: 0x1a2dc
    8038:	88 02                	mov    BYTE PTR [edx],al
    803a:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
    803e:	66 a1 d8 a2 01 00    	mov    ax,ds:@obj3:hardware                                         ; fixup: num: 1085, src obj: 1, src ofs: 0x8040, dst obj: 3, dst ofs: 0x1a2d8
    8044:	66 89 02             	mov    WORD PTR [edx],ax
    8047:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
    804b:	a0 e0 a2 01 00       	mov    al,ds:@obj3:hardware_variable_2                              ; fixup: num: 1084, src obj: 1, src ofs: 0x804c, dst obj: 3, dst ofs: 0x1a2e0
    8050:	88 02                	mov    BYTE PTR [edx],al
    8052:	66 a1 4c a3 01 00    	mov    ax,ds:@obj3:capabilities_variable_3                          ; fixup: num: 1083, src obj: 1, src ofs: 0x8054, dst obj: 3, dst ofs: 0x1a34c
    8058:	66 89 45 00          	mov    WORD PTR [ebp+0x0],ax
    805c:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
    8060:	a0 0c a3 01 00       	mov    al,ds:@obj3:capabilities_variable_1                          ; fixup: num: 1082, src obj: 1, src ofs: 0x8061, dst obj: 3, dst ofs: 0x1a30c
    8065:	88 02                	mov    BYTE PTR [edx],al
    8067:	e9 8a 00 00 00       	jmp    W?$ct:sound_system$n()__branch_35
W?$ct:sound_system$n()__branch_33:
    806c:	0f 85 84 00 00 00    	jne    W?$ct:sound_system$n()__branch_35
    8072:	a1 7c a3 01 00       	mov    eax,ds:@obj3:temp_capabilities_variable_2                    ; fixup: num: 1081, src obj: 1, src ofs: 0x8073, dst obj: 3, dst ofs: 0x1a37c
    8077:	3b 05 10 a3 01 00    	cmp    eax,DWORD PTR ds:@obj3:capabilities_variable_2               ; fixup: num: 1080, src obj: 1, src ofs: 0x8079, dst obj: 3, dst ofs: 0x1a310
    807d:	72 77                	jb     W?$ct:sound_system$n()__branch_35
    807f:	b9 6c 00 00 00       	mov    ecx,0x6c
    8084:	be 54 a3 01 00       	mov    esi,@obj3:temp_capabilities                                  ; fixup: num: 1079, src obj: 1, src ofs: 0x8085, dst obj: 3, dst ofs: 0x1a354
    8089:	bf e8 a2 01 00       	mov    edi,@obj3:capabilities                                       ; fixup: num: 1078, src obj: 1, src ofs: 0x808a, dst obj: 3, dst ofs: 0x1a2e8
    808e:	57                   	push   edi
    808f:	89 c8                	mov    eax,ecx
    8091:	c1 e9 02             	shr    ecx,0x2
    8094:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
    8096:	8a c8                	mov    cl,al
    8098:	80 e1 03             	and    cl,0x3
    809b:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
    809d:	5f                   	pop    edi
    809e:	8c da                	mov    edx,ds
    80a0:	b8 d8 a2 01 00       	mov    eax,@obj3:hardware                                           ; fixup: num: 1077, src obj: 1, src ofs: 0x80a1, dst obj: 3, dst ofs: 0x1a2d8
    80a5:	e8 d8 aa 06 00       	call   sosDIGIDetectGetSettings_
    80aa:	85 c0                	test   eax,eax
    80ac:	74 11                	je     W?$ct:sound_system$n()__branch_34
    80ae:	bb 67 09 00 00       	mov    ebx,@obj3:sound_cpp_variable_24                              ; fixup: num: 1102, src obj: 1, src ofs: 0x80af, dst obj: 3, dst ofs: 0x967
    80b3:	ba 32 01 00 00       	mov    edx,0x132
    80b8:	31 c0                	xor    eax,eax
    80ba:	e8 71 ff 02 00       	call   _error_report
W?$ct:sound_system$n()__branch_34:
    80bf:	8b 14 24             	mov    edx,DWORD PTR [esp]
    80c2:	a0 dc a2 01 00       	mov    al,ds:@obj3:hardware_variable_1                              ; fixup: num: 1101, src obj: 1, src ofs: 0x80c3, dst obj: 3, dst ofs: 0x1a2dc
    80c7:	88 02                	mov    BYTE PTR [edx],al
    80c9:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
    80cd:	66 a1 d8 a2 01 00    	mov    ax,ds:@obj3:hardware                                         ; fixup: num: 1100, src obj: 1, src ofs: 0x80cf, dst obj: 3, dst ofs: 0x1a2d8
    80d3:	66 89 02             	mov    WORD PTR [edx],ax
    80d6:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
    80da:	a0 e0 a2 01 00       	mov    al,ds:@obj3:hardware_variable_2                              ; fixup: num: 1099, src obj: 1, src ofs: 0x80db, dst obj: 3, dst ofs: 0x1a2e0
    80df:	88 02                	mov    BYTE PTR [edx],al
    80e1:	66 a1 4c a3 01 00    	mov    ax,ds:@obj3:capabilities_variable_3                          ; fixup: num: 1098, src obj: 1, src ofs: 0x80e3, dst obj: 3, dst ofs: 0x1a34c
    80e7:	66 89 45 00          	mov    WORD PTR [ebp+0x0],ax
    80eb:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
    80ef:	a0 0c a3 01 00       	mov    al,ds:@obj3:capabilities_variable_1                          ; fixup: num: 1097, src obj: 1, src ofs: 0x80f0, dst obj: 3, dst ofs: 0x1a30c
    80f4:	88 02                	mov    BYTE PTR [edx],al
W?$ct:sound_system$n()__branch_35:
    80f6:	bb c0 a3 01 00       	mov    ebx,@obj3:bogus_mod_9                                        ; fixup: num: 1096, src obj: 1, src ofs: 0x80f7, dst obj: 3, dst ofs: 0x1a3c0
    80fb:	b8 54 a3 01 00       	mov    eax,@obj3:temp_capabilities                                  ; fixup: num: 1095, src obj: 1, src ofs: 0x80fc, dst obj: 3, dst ofs: 0x1a354
    8100:	8c d9                	mov    ecx,ds
    8102:	8c da                	mov    edx,ds
    8104:	e8 53 a8 06 00       	call   sosDIGIDetectFindNext_
    8109:	a3 c4 a3 01 00       	mov    ds:@obj3:return_code,eax                                     ; fixup: num: 1094, src obj: 1, src ofs: 0x810a, dst obj: 3, dst ofs: 0x1a3c4
    810e:	83 f8 07             	cmp    eax,0x7
    8111:	0f 84 3c fd ff ff    	je     W?$ct:sound_system$n()__branch_22
    8117:	85 c0                	test   eax,eax
    8119:	74 11                	je     W?$ct:sound_system$n()__branch_36
    811b:	bb 63 08 00 00       	mov    ebx,@obj3:sound_cpp_variable_21                              ; fixup: num: 1093, src obj: 1, src ofs: 0x811c, dst obj: 3, dst ofs: 0x863
    8120:	ba 05 01 00 00       	mov    edx,0x105
    8125:	31 c0                	xor    eax,eax
    8127:	e8 04 ff 02 00       	call   _error_report
W?$ct:sound_system$n()__branch_36:
    812c:	31 db                	xor    ebx,ebx
    812e:	31 c0                	xor    eax,eax
    8130:	89 1d c8 a3 01 00    	mov    DWORD PTR ds:@obj3:iterator,ebx                              ; fixup: num: 1092, src obj: 1, src ofs: 0x8132, dst obj: 3, dst ofs: 0x1a3c8
    8136:	8b 1d b8 a3 01 00    	mov    ebx,DWORD PTR ds:@obj3:temp_capabilities_variable_3          ; fixup: num: 1091, src obj: 1, src ofs: 0x8138, dst obj: 3, dst ofs: 0x1a3b8
W?$ct:sound_system$n()__branch_37:
    813c:	31 d2                	xor    edx,edx
    813e:	66 8b 90 d8 2c 01 00 	mov    dx,WORD PTR [eax+@obj3:supported_cards]                      ; fixup: num: 1090, src obj: 1, src ofs: 0x8141, dst obj: 3, dst ofs: 0x12cd8
    8145:	85 d2                	test   edx,edx
    8147:	0f 84 8a fe ff ff    	je     W?$ct:sound_system$n()__branch_31
    814d:	31 d2                	xor    edx,edx
    814f:	66 8b 90 d8 2c 01 00 	mov    dx,WORD PTR [eax+@obj3:supported_cards]                      ; fixup: num: 1089, src obj: 1, src ofs: 0x8152, dst obj: 3, dst ofs: 0x12cd8
    8156:	39 da                	cmp    edx,ebx
    8158:	0f 85 64 fe ff ff    	jne    W?$ct:sound_system$n()__branch_30
    815e:	b9 6c 00 00 00       	mov    ecx,0x6c
    8163:	be 54 a3 01 00       	mov    esi,@obj3:temp_capabilities                                  ; fixup: num: 1113, src obj: 1, src ofs: 0x8164, dst obj: 3, dst ofs: 0x1a354
    8168:	bf e8 a2 01 00       	mov    edi,@obj3:capabilities                                       ; fixup: num: 1112, src obj: 1, src ofs: 0x8169, dst obj: 3, dst ofs: 0x1a2e8
    816d:	57                   	push   edi
    816e:	89 c8                	mov    eax,ecx
    8170:	c1 e9 02             	shr    ecx,0x2
    8173:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
    8175:	8a c8                	mov    cl,al
    8177:	80 e1 03             	and    cl,0x3
    817a:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
    817c:	5f                   	pop    edi
    817d:	8c da                	mov    edx,ds
    817f:	b8 d8 a2 01 00       	mov    eax,@obj3:hardware                                           ; fixup: num: 1111, src obj: 1, src ofs: 0x8180, dst obj: 3, dst ofs: 0x1a2d8
    8184:	e8 f9 a9 06 00       	call   sosDIGIDetectGetSettings_
    8189:	85 c0                	test   eax,eax
    818b:	74 11                	je     W?$ct:sound_system$n()__branch_38
    818d:	bb 93 08 00 00       	mov    ebx,@obj3:sound_cpp_variable_22                              ; fixup: num: 1110, src obj: 1, src ofs: 0x818e, dst obj: 3, dst ofs: 0x893
    8192:	ba 11 01 00 00       	mov    edx,0x111
    8197:	31 c0                	xor    eax,eax
    8199:	e8 92 fe 02 00       	call   _error_report
W?$ct:sound_system$n()__branch_38:
    819e:	8b 14 24             	mov    edx,DWORD PTR [esp]
    81a1:	a0 dc a2 01 00       	mov    al,ds:@obj3:hardware_variable_1                              ; fixup: num: 1109, src obj: 1, src ofs: 0x81a2, dst obj: 3, dst ofs: 0x1a2dc
    81a6:	88 02                	mov    BYTE PTR [edx],al
    81a8:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
    81ac:	66 a1 d8 a2 01 00    	mov    ax,ds:@obj3:hardware                                         ; fixup: num: 1108, src obj: 1, src ofs: 0x81ae, dst obj: 3, dst ofs: 0x1a2d8
    81b2:	66 89 02             	mov    WORD PTR [edx],ax
    81b5:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
    81b9:	a0 e0 a2 01 00       	mov    al,ds:@obj3:hardware_variable_2                              ; fixup: num: 1107, src obj: 1, src ofs: 0x81ba, dst obj: 3, dst ofs: 0x1a2e0
    81be:	88 02                	mov    BYTE PTR [edx],al
    81c0:	66 a1 4c a3 01 00    	mov    ax,ds:@obj3:capabilities_variable_3                          ; fixup: num: 1106, src obj: 1, src ofs: 0x81c2, dst obj: 3, dst ofs: 0x1a34c
    81c6:	66 89 45 00          	mov    WORD PTR [ebp+0x0],ax
    81ca:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
    81ce:	a0 0c a3 01 00       	mov    al,ds:@obj3:capabilities_variable_1                          ; fixup: num: 1105, src obj: 1, src ofs: 0x81cf, dst obj: 3, dst ofs: 0x1a30c
    81d3:	88 02                	mov    BYTE PTR [edx],al
    81d5:	e9 79 fc ff ff       	jmp    W?$ct:sound_system$n()__branch_22
W?$ct:sound_system$n()__branch_39:
    81da:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
    81de:	31 db                	xor    ebx,ebx
    81e0:	31 c0                	xor    eax,eax
W?$ct:sound_system$n()__branch_40:
    81e2:	31 d2                	xor    edx,edx
    81e4:	8b 71 10             	mov    esi,DWORD PTR [ecx+0x10]
    81e7:	66 8b 90 d8 2c 01 00 	mov    dx,WORD PTR [eax+@obj3:supported_cards]                      ; fixup: num: 1104, src obj: 1, src ofs: 0x81ea, dst obj: 3, dst ofs: 0x12cd8
    81ee:	39 f2                	cmp    edx,esi
    81f0:	74 06                	je     W?$ct:sound_system$n()__branch_41
    81f2:	83 c0 02             	add    eax,0x2
    81f5:	43                   	inc    ebx
    81f6:	eb ea                	jmp    W?$ct:sound_system$n()__branch_40
W?$ct:sound_system$n()__branch_41:
    81f8:	8b 3d dc a2 01 00    	mov    edi,DWORD PTR ds:@obj3:hardware_variable_1                   ; fixup: num: 1103, src obj: 1, src ofs: 0x81fa, dst obj: 3, dst ofs: 0x1a2dc
    81fe:	8d 04 9d 00 00 00 00 	lea    eax,[ebx*4+0x0]
    8205:	83 ff 32             	cmp    edi,0x32
    8208:	73 2f                	jae    W?$ct:sound_system$n()__branch_42
    820a:	8b 71 1c             	mov    esi,DWORD PTR [ecx+0x1c]
    820d:	56                   	push   esi
    820e:	8b 3d e0 a2 01 00    	mov    edi,DWORD PTR ds:@obj3:hardware_variable_2                   ; fixup: num: 1126, src obj: 1, src ofs: 0x8210, dst obj: 3, dst ofs: 0x1a2e0
    8214:	57                   	push   edi
    8215:	8b 2d dc a2 01 00    	mov    ebp,DWORD PTR ds:@obj3:hardware_variable_1                   ; fixup: num: 1125, src obj: 1, src ofs: 0x8217, dst obj: 3, dst ofs: 0x1a2dc
    821b:	55                   	push   ebp
    821c:	8b 15 d8 a2 01 00    	mov    edx,DWORD PTR ds:@obj3:hardware                              ; fixup: num: 1124, src obj: 1, src ofs: 0x821e, dst obj: 3, dst ofs: 0x1a2d8
    8222:	52                   	push   edx
    8223:	8b 98 f4 2c 01 00    	mov    ebx,DWORD PTR [eax+@obj3:card_names]                         ; fixup: num: 1123, src obj: 1, src ofs: 0x8225, dst obj: 3, dst ofs: 0x12cf4
    8229:	53                   	push   ebx
    822a:	68 1a 0a 00 00       	push   @obj3:sound_cpp_variable_26                                  ; fixup: num: 1122, src obj: 1, src ofs: 0x822b, dst obj: 3, dst ofs: 0xa1a
    822f:	e8 1e 89 06 00       	call   printf_
    8234:	83 c4 18             	add    esp,0x18
    8237:	eb 26                	jmp    W?$ct:sound_system$n()__branch_43
W?$ct:sound_system$n()__branch_42:
    8239:	8b 69 1c             	mov    ebp,DWORD PTR [ecx+0x1c]
    823c:	55                   	push   ebp
    823d:	8b 15 e0 a2 01 00    	mov    edx,DWORD PTR ds:@obj3:hardware_variable_2                   ; fixup: num: 1121, src obj: 1, src ofs: 0x823f, dst obj: 3, dst ofs: 0x1a2e0
    8243:	52                   	push   edx
    8244:	8b 1d d8 a2 01 00    	mov    ebx,DWORD PTR ds:@obj3:hardware                              ; fixup: num: 1120, src obj: 1, src ofs: 0x8246, dst obj: 3, dst ofs: 0x1a2d8
    824a:	53                   	push   ebx
    824b:	8b 88 f4 2c 01 00    	mov    ecx,DWORD PTR [eax+@obj3:card_names]                         ; fixup: num: 1119, src obj: 1, src ofs: 0x824d, dst obj: 3, dst ofs: 0x12cf4
    8251:	51                   	push   ecx
    8252:	68 48 0a 00 00       	push   @obj3:sound_cpp_variable_27                                  ; fixup: num: 1118, src obj: 1, src ofs: 0x8253, dst obj: 3, dst ofs: 0xa48
    8257:	e8 f6 88 06 00       	call   printf_
    825c:	83 c4 14             	add    esp,0x14
W?$ct:sound_system$n()__branch_43:
    825f:	31 c0                	xor    eax,eax
    8261:	8a 44 24 18          	mov    al,BYTE PTR [esp+0x18]
    8265:	85 c0                	test   eax,eax
    8267:	75 2c                	jne    W?$ct:sound_system$n()__branch_45
    8269:	83 3d d8 a2 01 00 00 	cmp    DWORD PTR ds:@obj3:hardware,0x0                              ; fixup: num: 1117, src obj: 1, src ofs: 0x826b, dst obj: 3, dst ofs: 0x1a2d8
    8270:	74 12                	je     W?$ct:sound_system$n()__branch_44
    8272:	83 3d dc a2 01 00 00 	cmp    DWORD PTR ds:@obj3:hardware_variable_1,0x0                   ; fixup: num: 1116, src obj: 1, src ofs: 0x8274, dst obj: 3, dst ofs: 0x1a2dc
    8279:	74 09                	je     W?$ct:sound_system$n()__branch_44
    827b:	83 3d e0 a2 01 00 00 	cmp    DWORD PTR ds:@obj3:hardware_variable_2,0x0                   ; fixup: num: 1115, src obj: 1, src ofs: 0x827d, dst obj: 3, dst ofs: 0x1a2e0
    8282:	75 11                	jne    W?$ct:sound_system$n()__branch_45
W?$ct:sound_system$n()__branch_44:
    8284:	bb 6f 0a 00 00       	mov    ebx,@obj3:sound_cpp_variable_28                              ; fixup: num: 1114, src obj: 1, src ofs: 0x8285, dst obj: 3, dst ofs: 0xa6f
    8289:	ba 95 01 00 00       	mov    edx,0x195
    828e:	31 c0                	xor    eax,eax
    8290:	e8 9b fd 02 00       	call   _error_report
W?$ct:sound_system$n()__branch_45:
    8295:	31 db                	xor    ebx,ebx
    8297:	31 d2                	xor    edx,edx
    8299:	31 c0                	xor    eax,eax
    829b:	e8 5a bc 06 00       	call   sosDIGIInitSystem_
    82a0:	b8 00 ff 00 00       	mov    eax,0xff00
    82a5:	31 d2                	xor    edx,edx
    82a7:	bd 22 56 00 00       	mov    ebp,0x5622
    82ac:	e8 7c ca 06 00       	call   sosTIMERInitSystem_
    82b1:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
    82b5:	89 2d 3c 2d 01 00    	mov    DWORD PTR ds:@obj3:sSOSInitDriver_variable_1,ebp             ; fixup: num: 1133, src obj: 1, src ofs: 0x82b7, dst obj: 3, dst ofs: 0x12d3c
    82bb:	8c d8                	mov    eax,ds
    82bd:	83 c2 18             	add    edx,0x18
    82c0:	25 ff ff 00 00       	and    eax,0xffff
    82c5:	50                   	push   eax
    82c6:	52                   	push   edx
    82c7:	1e                   	push   ds
    82c8:	bb d8 a2 01 00       	mov    ebx,@obj3:hardware                                           ; fixup: num: 1132, src obj: 1, src ofs: 0x82c9, dst obj: 3, dst ofs: 0x1a2d8
    82cd:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
    82d1:	68 2c 2d 01 00       	push   @obj3:sSOSInitDriver                                         ; fixup: num: 1131, src obj: 1, src ofs: 0x82d2, dst obj: 3, dst ofs: 0x12d2c
    82d6:	8c d9                	mov    ecx,ds
    82d8:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
    82db:	e8 d3 bc 06 00       	call   sosDIGIInitDriver_
    82e0:	85 c0                	test   eax,eax
    82e2:	74 27                	je     W?$ct:sound_system$n()__branch_46
    82e4:	31 c0                	xor    eax,eax
    82e6:	bb 11 0b 00 00       	mov    ebx,@obj3:sound_cpp_variable_29                              ; fixup: num: 1130, src obj: 1, src ofs: 0x82e7, dst obj: 3, dst ofs: 0xb11
    82eb:	e8 19 cb 06 00       	call   sosTIMERUnInitSystem_
    82f0:	e8 7e bc 06 00       	call   sosDIGIUnInitSystem_
    82f5:	b8 01 00 00 00       	mov    eax,0x1
    82fa:	ba a1 01 00 00       	mov    edx,0x1a1
    82ff:	e8 b4 8d 06 00       	call   exit_
    8304:	31 c0                	xor    eax,eax
    8306:	e8 25 fd 02 00       	call   _error_report
W?$ct:sound_system$n()__branch_46:
    830b:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
    830f:	8c d8                	mov    eax,ds
    8311:	83 c2 14             	add    edx,0x14
    8314:	25 ff ff 00 00       	and    eax,0xffff
    8319:	50                   	push   eax
    831a:	66 8b 0d 4c 2d 01 00 	mov    cx,WORD PTR ds:@obj3:sSOSInitDriver_variable_3               ; fixup: num: 1129, src obj: 1, src ofs: 0x831d, dst obj: 3, dst ofs: 0x12d4c
    8321:	52                   	push   edx
    8322:	8b 1d 48 2d 01 00    	mov    ebx,DWORD PTR ds:@obj3:sSOSInitDriver_variable_2             ; fixup: num: 1128, src obj: 1, src ofs: 0x8324, dst obj: 3, dst ofs: 0x12d48
    8328:	b8 28 00 00 00       	mov    eax,0x28
    832d:	e8 11 cb 06 00       	call   sosTIMERRegisterEvent_
    8332:	85 c0                	test   eax,eax
    8334:	74 2b                	je     W?$ct:sound_system$n()__branch_47
    8336:	31 c0                	xor    eax,eax
    8338:	bb 01 00 00 00       	mov    ebx,0x1
    833d:	e8 c7 ca 06 00       	call   sosTIMERUnInitSystem_
    8342:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
    8346:	89 da                	mov    edx,ebx
    8348:	8b 40 18             	mov    eax,DWORD PTR [eax+0x18]
    834b:	e8 23 c5 06 00       	call   sosDIGIUnInitDriver_
    8350:	bb 34 0b 00 00       	mov    ebx,@obj3:sound_cpp_variable_30                              ; fixup: num: 1127, src obj: 1, src ofs: 0x8351, dst obj: 3, dst ofs: 0xb34
    8355:	ba a9 01 00 00       	mov    edx,0x1a9
    835a:	31 c0                	xor    eax,eax
    835c:	e8 cf fc 02 00       	call   _error_report
W?$ct:sound_system$n()__branch_47:
    8361:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
    8365:	c6 40 20 01          	mov    BYTE PTR [eax+0x20],0x1
    8369:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
    836d:	83 c4 1c             	add    esp,0x1c
    8370:	5d                   	pop    ebp
    8371:	5f                   	pop    edi
    8372:	5e                   	pop    esi
    8373:	5a                   	pop    edx
    8374:	59                   	pop    ecx
    8375:	5b                   	pop    ebx
    8376:	c3                   	ret    
    8377:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    837d:	8d 52 00             	lea    edx,[edx+0x0]

;-------------------------------------------------
;  Function 'W?$dt:sound_system$n()_'            -
;-------------------------------------------------
W?$dt:sound_system$n()_:
    8380:	53                   	push   ebx
    8381:	51                   	push   ecx
    8382:	89 c1                	mov    ecx,eax
    8384:	80 78 20 00          	cmp    BYTE PTR [eax+0x20],0x0
    8388:	74 23                	je     W?$dt:sound_system$n()__branch_1
    838a:	8b 41 14             	mov    eax,DWORD PTR [ecx+0x14]
    838d:	bb 01 00 00 00       	mov    ebx,0x1
    8392:	e8 31 ce 06 00       	call   sosTIMERRemoveEvent_
    8397:	89 da                	mov    edx,ebx
    8399:	8b 41 18             	mov    eax,DWORD PTR [ecx+0x18]
    839c:	e8 d2 c4 06 00       	call   sosDIGIUnInitDriver_
    83a1:	31 c0                	xor    eax,eax
    83a3:	e8 61 ca 06 00       	call   sosTIMERUnInitSystem_
    83a8:	e8 c6 bb 06 00       	call   sosDIGIUnInitSystem_
W?$dt:sound_system$n()__branch_1:
    83ad:	89 c8                	mov    eax,ecx
    83af:	59                   	pop    ecx
    83b0:	5b                   	pop    ebx
    83b1:	c3                   	ret    
    83b2:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    83b8:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
    83be:	8b c0                	mov    eax,eax

;-------------------------------------------------
;  Function 'change_call_rate'                   -
;-------------------------------------------------
change_call_rate:
    83c0:	53                   	push   ebx
    83c1:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
    83c4:	e8 87 cc 06 00       	call   sosTIMERAlterEventRate_
    83c9:	85 c0                	test   eax,eax
    83cb:	74 11                	je     change_call_rate_branch_1
    83cd:	bb 4d 0b 00 00       	mov    ebx,@obj3:sound_cpp_variable_31                              ; fixup: num: 1134, src obj: 1, src ofs: 0x83ce, dst obj: 3, dst ofs: 0xb4d
    83d2:	ba c0 01 00 00       	mov    edx,0x1c0
    83d7:	31 c0                	xor    eax,eax
    83d9:	e8 52 fc 02 00       	call   _error_report
change_call_rate_branch_1:
    83de:	5b                   	pop    ebx
change_call_rate_branch_2:
    83df:	c3                   	ret    

;-------------------------------------------------
;  Function 'set_master_volume'                  -
;-------------------------------------------------
set_master_volume:
    83e0:	80 78 20 00          	cmp    BYTE PTR [eax+0x20],0x0
    83e4:	74 f9                	je     change_call_rate_branch_2
    83e6:	81 e2 ff ff 00 00    	and    edx,0xffff
    83ec:	8b 40 18             	mov    eax,DWORD PTR [eax+0x18]
    83ef:	e9 14 d7 06 00       	jmp    sosDIGISetMasterVolume_
    83f4:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    83fa:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]

;-------------------------------------------------
;  Function 'samples_playing'                    -
;-------------------------------------------------
samples_playing:
    8400:	80 78 20 00          	cmp    BYTE PTR [eax+0x20],0x0
    8404:	75 03                	jne    samples_playing_branch_1
    8406:	31 c0                	xor    eax,eax
    8408:	c3                   	ret    
samples_playing_branch_1:
    8409:	8b 40 18             	mov    eax,DWORD PTR [eax+0x18]
    840c:	e9 57 d7 06 00       	jmp    sosDIGISamplesPlaying_
    8411:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    8417:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
    841d:	8d 40 00             	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'W?$ct:SOUND$n()_'                   -
;-------------------------------------------------
W?$ct:SOUND$n()_:
    8420:	53                   	push   ebx
    8421:	51                   	push   ecx
    8422:	52                   	push   edx
    8423:	89 c1                	mov    ecx,eax
    8425:	bb 74 00 00 00       	mov    ebx,0x74
    842a:	83 c0 0c             	add    eax,0xc
    842d:	31 d2                	xor    edx,edx
    842f:	e8 9c 8f 06 00       	call   memset_
    8434:	a1 ac 0f 01 00       	mov    eax,ds:@obj3:fx_volume                                       ; fixup: num: 1019, src obj: 1, src ofs: 0x8435, dst obj: 3, dst ofs: 0x10fac
    8439:	c7 41 1c 02 00 00 00 	mov    DWORD PTR [ecx+0x1c],0x2
    8440:	66 8b 04 45 be 0f 01 00 	mov    ax,WORD PTR [eax*2+@obj3:volume_table]                    ; fixup: num: 1018, src obj: 1, src ofs: 0x8444, dst obj: 3, dst ofs: 0x10fbe
    8448:	c7 41 34 00 01 00 00 	mov    DWORD PTR [ecx+0x34],0x100
    844f:	c7 01 00 00 00 00    	mov    DWORD PTR [ecx],0x0
    8455:	25 ff ff 00 00       	and    eax,0xffff
    845a:	66 c7 41 08 00 00    	mov    WORD PTR [ecx+0x8],0x0
    8460:	89 41 20             	mov    DWORD PTR [ecx+0x20],eax
    8463:	89 c8                	mov    eax,ecx
    8465:	5a                   	pop    edx
    8466:	59                   	pop    ecx
    8467:	5b                   	pop    ebx
    8468:	c3                   	ret    
    8469:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    846f:	90                   	nop

;-------------------------------------------------
;  Function 'W?$ct:SOUND$n(pna)_'                -
;-------------------------------------------------
W?$ct:SOUND$n(pna)_:
    8470:	53                   	push   ebx
    8471:	51                   	push   ecx
    8472:	56                   	push   esi
    8473:	57                   	push   edi
    8474:	55                   	push   ebp
    8475:	83 ec 60             	sub    esp,0x60
    8478:	89 44 24 4c          	mov    DWORD PTR [esp+0x4c],eax
    847c:	89 d7                	mov    edi,edx
    847e:	bb 74 00 00 00       	mov    ebx,0x74
    8483:	83 c0 0c             	add    eax,0xc
    8486:	31 d2                	xor    edx,edx
    8488:	e8 43 8f 06 00       	call   memset_
    848d:	8b 44 24 4c          	mov    eax,DWORD PTR [esp+0x4c]
    8491:	c7 40 1c 02 00 00 00 	mov    DWORD PTR [eax+0x1c],0x2
    8498:	a1 ac 0f 01 00       	mov    eax,ds:@obj3:fx_volume                                       ; fixup: num: 1017, src obj: 1, src ofs: 0x8499, dst obj: 3, dst ofs: 0x10fac
    849d:	66 8b 04 45 be 0f 01 00 	mov    ax,WORD PTR [eax*2+@obj3:volume_table]                    ; fixup: num: 1135, src obj: 1, src ofs: 0x84a1, dst obj: 3, dst ofs: 0x10fbe
    84a5:	8b 54 24 4c          	mov    edx,DWORD PTR [esp+0x4c]
    84a9:	c7 42 34 00 01 00 00 	mov    DWORD PTR [edx+0x34],0x100
    84b0:	c7 02 00 00 00 00    	mov    DWORD PTR [edx],0x0
    84b6:	25 ff ff 00 00       	and    eax,0xffff
    84bb:	66 c7 42 08 00 00    	mov    WORD PTR [edx+0x8],0x0
    84c1:	89 d6                	mov    esi,edx
    84c3:	89 42 20             	mov    DWORD PTR [edx+0x20],eax
    84c6:	89 54 24 54          	mov    DWORD PTR [esp+0x54],edx
    84ca:	8b 42 0c             	mov    eax,DWORD PTR [edx+0xc]
    84cd:	c7 42 04 00 00 00 00 	mov    DWORD PTR [edx+0x4],0x0
    84d4:	85 c0                	test   eax,eax
    84d6:	0f 84 d7 00 00 00    	je     W?$ct:SOUND$n(pna)__branch_6
    84dc:	80 3d b4 a1 01 00 00 	cmp    BYTE PTR ds:@obj3:the_sound_system_variable_3,0x0            ; fixup: num: 1027, src obj: 1, src ofs: 0x84de, dst obj: 3, dst ofs: 0x1a1b4
    84e3:	74 56                	je     W?$ct:SOUND$n(pna)__branch_3
    84e5:	8b 12                	mov    edx,DWORD PTR [edx]
    84e7:	8d 04 95 00 00 00 00 	lea    eax,[edx*4+0x0]
    84ee:	29 d0                	sub    eax,edx
    84f0:	01 c0                	add    eax,eax
    84f2:	83 b8 5c 44 01 00 00 	cmp    DWORD PTR [eax+@obj3:__lpSOSSampleList],0x0                  ; fixup: num: 1026, src obj: 1, src ofs: 0x84f4, dst obj: 3, dst ofs: 0x1445c
    84f9:	75 0a                	jne    W?$ct:SOUND$n(pna)__branch_1
    84fb:	66 83 b8 60 44 01 00 00 	cmp    WORD PTR [eax+@obj3:__lpSOSSampleList_variable_1],0x0     ; fixup: num: 1025, src obj: 1, src ofs: 0x84fe, dst obj: 3, dst ofs: 0x14460
    8503:	74 36                	je     W?$ct:SOUND$n(pna)__branch_3
W?$ct:SOUND$n(pna)__branch_1:
    8505:	0f b5 80 5c 44 01 00 	lgs    eax,FWORD PTR [eax+@obj3:__lpSOSSampleList]                  ; fixup: num: 1024, src obj: 1, src ofs: 0x8508, dst obj: 3, dst ofs: 0x1445c
    850c:	65 0f bf 58 34       	movsx  ebx,WORD PTR gs:[eax+0x34]
    8511:	89 f0                	mov    eax,esi
    8513:	0f bf 40 08          	movsx  eax,WORD PTR [eax+0x8]
    8517:	39 d8                	cmp    eax,ebx
    8519:	75 20                	jne    W?$ct:SOUND$n(pna)__branch_3
    851b:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 1023, src obj: 1, src ofs: 0x851c, dst obj: 3, dst ofs: 0x1a1ac
    8520:	e8 cc d6 06 00       	call   sosDIGISampleDone_
    8525:	83 f8 01             	cmp    eax,0x1
    8528:	75 0d                	jne    W?$ct:SOUND$n(pna)__branch_2
    852a:	89 f0                	mov    eax,esi
    852c:	66 c7 40 08 00 00    	mov    WORD PTR [eax+0x8],0x0
    8532:	8a 40 08             	mov    al,BYTE PTR [eax+0x8]
    8535:	eb 06                	jmp    W?$ct:SOUND$n(pna)__branch_4
W?$ct:SOUND$n(pna)__branch_2:
    8537:	b0 01                	mov    al,0x1
    8539:	eb 02                	jmp    W?$ct:SOUND$n(pna)__branch_4
W?$ct:SOUND$n(pna)__branch_3:
    853b:	30 c0                	xor    al,al
W?$ct:SOUND$n(pna)__branch_4:
    853d:	84 c0                	test   al,al
    853f:	74 3c                	je     W?$ct:SOUND$n(pna)__branch_5
    8541:	80 3d b4 a1 01 00 00 	cmp    BYTE PTR ds:@obj3:the_sound_system_variable_3,0x0            ; fixup: num: 1022, src obj: 1, src ofs: 0x8543, dst obj: 3, dst ofs: 0x1a1b4
    8548:	74 33                	je     W?$ct:SOUND$n(pna)__branch_5
    854a:	89 f0                	mov    eax,esi
    854c:	e8 8f 13 00 00       	call   playing
    8551:	84 c0                	test   al,al
    8553:	74 28                	je     W?$ct:SOUND$n(pna)__branch_5
    8555:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 1021, src obj: 1, src ofs: 0x8556, dst obj: 3, dst ofs: 0x1a1ac
    855a:	8b 16                	mov    edx,DWORD PTR [esi]
    855c:	66 c7 46 08 00 00    	mov    WORD PTR [esi+0x8],0x0
    8562:	e8 b8 af 06 00       	call   sosDIGIStopSample_
    8567:	83 f8 0a             	cmp    eax,0xa
    856a:	75 11                	jne    W?$ct:SOUND$n(pna)__branch_5
    856c:	bb 69 0b 00 00       	mov    ebx,@obj3:sound_cpp_variable_32                              ; fixup: num: 1020, src obj: 1, src ofs: 0x856d, dst obj: 3, dst ofs: 0xb69
    8571:	ba fd 02 00 00       	mov    edx,0x2fd
    8576:	31 c0                	xor    eax,eax
    8578:	e8 b3 fa 02 00       	call   _error_report
W?$ct:SOUND$n(pna)__branch_5:
    857d:	8b 4e 14             	mov    ecx,DWORD PTR [esi+0x14]
    8580:	51                   	push   ecx
    8581:	8b 46 0c             	mov    eax,DWORD PTR [esi+0xc]
    8584:	50                   	push   eax
    8585:	e8 37 85 06 00       	call   _D32Unlock
    858a:	8b 6e 0c             	mov    ebp,DWORD PTR [esi+0xc]
    858d:	66 8b 46 10          	mov    ax,WORD PTR [esi+0x10]
    8591:	83 ed 2c             	sub    ebp,0x2c
    8594:	66 89 46 10          	mov    WORD PTR [esi+0x10],ax
    8598:	89 6e 0c             	mov    DWORD PTR [esi+0xc],ebp
    859b:	83 c4 08             	add    esp,0x8
    859e:	8b 46 0c             	mov    eax,DWORD PTR [esi+0xc]
    85a1:	e8 42 8e 06 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
    85a6:	66 c7 46 10 00 00    	mov    WORD PTR [esi+0x10],0x0
    85ac:	c7 46 0c 00 00 00 00 	mov    DWORD PTR [esi+0xc],0x0
W?$ct:SOUND$n(pna)__branch_6:
    85b3:	b2 2e                	mov    dl,0x2e
    85b5:	66 c7 46 08 00 00    	mov    WORD PTR [esi+0x8],0x0
    85bb:	89 fe                	mov    esi,edi
W?$ct:SOUND$n(pna)__branch_7:
    85bd:	8a 06                	mov    al,BYTE PTR [esi]
    85bf:	3a c2                	cmp    al,dl
    85c1:	74 12                	je     W?$ct:SOUND$n(pna)__branch_9
    85c3:	3c 00                	cmp    al,0x0
    85c5:	74 0c                	je     W?$ct:SOUND$n(pna)__branch_8
    85c7:	46                   	inc    esi
    85c8:	8a 06                	mov    al,BYTE PTR [esi]
    85ca:	3a c2                	cmp    al,dl
    85cc:	74 07                	je     W?$ct:SOUND$n(pna)__branch_9
    85ce:	46                   	inc    esi
    85cf:	3c 00                	cmp    al,0x0
    85d1:	75 ea                	jne    W?$ct:SOUND$n(pna)__branch_7
W?$ct:SOUND$n(pna)__branch_8:
    85d3:	2b f6                	sub    esi,esi
W?$ct:SOUND$n(pna)__branch_9:
    85d5:	ba 8c 0b 00 00       	mov    edx,@obj3:sound_cpp_variable_33                              ; fixup: num: 1031, src obj: 1, src ofs: 0x85d6, dst obj: 3, dst ofs: 0xb8c
    85da:	89 f0                	mov    eax,esi
    85dc:	e8 79 8e 06 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
    85e1:	85 c0                	test   eax,eax
    85e3:	0f 85 e9 02 00 00    	jne    W?$ct:SOUND$n(pna)__branch_18
    85e9:	bb 65 03 00 00       	mov    ebx,0x365
    85ee:	ba 91 0b 00 00       	mov    edx,@obj3:sound_cpp_variable_34                              ; fixup: num: 1030, src obj: 1, src ofs: 0x85ef, dst obj: 3, dst ofs: 0xb91
    85f3:	89 f8                	mov    eax,edi
    85f5:	89 fe                	mov    esi,edi
    85f7:	e8 34 5f 00 00       	call   XFILE_open2
    85fc:	89 44 24 50          	mov    DWORD PTR [esp+0x50],eax
    8600:	83 f8 ff             	cmp    eax,0xffffffff
    8603:	75 11                	jne    W?$ct:SOUND$n(pna)__branch_10
    8605:	bb 9b 0b 00 00       	mov    ebx,@obj3:sound_cpp_variable_35                              ; fixup: num: 1029, src obj: 1, src ofs: 0x8606, dst obj: 3, dst ofs: 0xb9b
    860a:	ba 66 03 00 00       	mov    edx,0x366
    860f:	31 c0                	xor    eax,eax
    8611:	e8 1a fa 02 00       	call   _error_report
W?$ct:SOUND$n(pna)__branch_10:
    8616:	b9 b6 0b 00 00       	mov    ecx,@obj3:sound_cpp_variable_36                              ; fixup: num: 1028, src obj: 1, src ofs: 0x8617, dst obj: 3, dst ofs: 0xbb6
    861b:	bb 0e 00 00 00       	mov    ebx,0xe
    8620:	89 f0                	mov    eax,esi
    8622:	8d 54 24 30          	lea    edx,[esp+0x30]
    8626:	e8 55 46 00 00       	call   XFILE_size
    862b:	83 e8 0e             	sub    eax,0xe
    862e:	68 6d 03 00 00       	push   0x36d
    8633:	89 44 24 60          	mov    DWORD PTR [esp+0x60],eax
    8637:	8b 44 24 54          	mov    eax,DWORD PTR [esp+0x54]
    863b:	e8 10 61 00 00       	call   XFILE_read_chunk2
    8640:	31 c0                	xor    eax,eax
    8642:	8a 44 24 30          	mov    al,BYTE PTR [esp+0x30]
    8646:	83 f8 46             	cmp    eax,0x46
    8649:	75 21                	jne    W?$ct:SOUND$n(pna)__branch_11
    864b:	31 c0                	xor    eax,eax
    864d:	8a 44 24 31          	mov    al,BYTE PTR [esp+0x31]
    8651:	83 f8 43             	cmp    eax,0x43
    8654:	75 16                	jne    W?$ct:SOUND$n(pna)__branch_11
    8656:	31 c0                	xor    eax,eax
    8658:	8a 44 24 32          	mov    al,BYTE PTR [esp+0x32]
    865c:	83 f8 4d             	cmp    eax,0x4d
    865f:	75 0b                	jne    W?$ct:SOUND$n(pna)__branch_11
    8661:	31 c0                	xor    eax,eax
    8663:	8a 44 24 33          	mov    al,BYTE PTR [esp+0x33]
    8667:	83 f8 50             	cmp    eax,0x50
    866a:	74 11                	je     W?$ct:SOUND$n(pna)__branch_12
W?$ct:SOUND$n(pna)__branch_11:
    866c:	bb c0 0b 00 00       	mov    ebx,@obj3:sound_cpp_variable_37                              ; fixup: num: 1033, src obj: 1, src ofs: 0x866d, dst obj: 3, dst ofs: 0xbc0
    8671:	ba 72 03 00 00       	mov    edx,0x372
    8676:	31 c0                	xor    eax,eax
    8678:	e8 b3 f9 02 00       	call   _error_report
W?$ct:SOUND$n(pna)__branch_12:
    867d:	b8 00 20 00 00       	mov    eax,0x2000
    8682:	e8 0c 8e 06 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
    8687:	89 c7                	mov    edi,eax
    8689:	85 c0                	test   eax,eax
    868b:	75 0f                	jne    W?$ct:SOUND$n(pna)__branch_13
    868d:	bb f0 0b 00 00       	mov    ebx,@obj3:sound_cpp_variable_38                              ; fixup: num: 1032, src obj: 1, src ofs: 0x868e, dst obj: 3, dst ofs: 0xbf0
    8692:	ba 76 03 00 00       	mov    edx,0x376
    8697:	e8 94 f9 02 00       	call   _error_report
W?$ct:SOUND$n(pna)__branch_13:
    869c:	68 00 20 00 00       	push   0x2000
    86a1:	57                   	push   edi
    86a2:	e8 50 84 06 00       	call   _D32Lock
    86a7:	83 c4 08             	add    esp,0x8
    86aa:	31 d2                	xor    edx,edx
    86ac:	66 8b 54 24 3c       	mov    dx,WORD PTR [esp+0x3c]
    86b1:	89 d0                	mov    eax,edx
    86b3:	c1 fa 1f             	sar    edx,0x1f
    86b6:	c1 e2 02             	shl    edx,0x2
    86b9:	1b c2                	sbb    eax,edx
    86bb:	c1 f8 02             	sar    eax,0x2
    86be:	8b 5c 24 5c          	mov    ebx,DWORD PTR [esp+0x5c]
    86c2:	0f af c3             	imul   eax,ebx
    86c5:	05 00 10 00 00       	add    eax,0x1000
    86ca:	e8 c4 8d 06 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
    86cf:	89 44 24 58          	mov    DWORD PTR [esp+0x58],eax
    86d3:	89 c5                	mov    ebp,eax
    86d5:	85 c0                	test   eax,eax
    86d7:	75 40                	jne    W?$ct:SOUND$n(pna)__branch_14
    86d9:	31 d2                	xor    edx,edx
    86db:	66 8b 54 24 3c       	mov    dx,WORD PTR [esp+0x3c]
    86e0:	89 d0                	mov    eax,edx
    86e2:	c1 fa 1f             	sar    edx,0x1f
    86e5:	c1 e2 02             	shl    edx,0x2
    86e8:	1b c2                	sbb    eax,edx
    86ea:	c1 f8 02             	sar    eax,0x2
    86ed:	0f af c3             	imul   eax,ebx
    86f0:	05 00 10 00 00       	add    eax,0x1000
    86f5:	50                   	push   eax
    86f6:	68 24 0c 00 00       	push   @obj3:sound_cpp_variable_39                                  ; fixup: num: 1036, src obj: 1, src ofs: 0x86f7, dst obj: 3, dst ofs: 0xc24
    86fb:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 1035, src obj: 1, src ofs: 0x86fc, dst obj: 3, dst ofs: 0x237fc
    8700:	ba 7c 03 00 00       	mov    edx,0x37c
    8705:	e8 d7 84 06 00       	call   sprintf_
    870a:	83 c4 0c             	add    esp,0xc
    870d:	bb fc 37 02 00       	mov    ebx,@obj3:log_buffer                                         ; fixup: num: 1034, src obj: 1, src ofs: 0x870e, dst obj: 3, dst ofs: 0x237fc
    8712:	31 c0                	xor    eax,eax
    8714:	e8 17 f9 02 00       	call   _error_report
W?$ct:SOUND$n(pna)__branch_14:
    8719:	31 d2                	xor    edx,edx
    871b:	66 8b 54 24 3c       	mov    dx,WORD PTR [esp+0x3c]
    8720:	89 d0                	mov    eax,edx
    8722:	c1 fa 1f             	sar    edx,0x1f
    8725:	c1 e2 02             	shl    edx,0x2
    8728:	1b c2                	sbb    eax,edx
    872a:	c1 f8 02             	sar    eax,0x2
    872d:	8b 74 24 5c          	mov    esi,DWORD PTR [esp+0x5c]
    8731:	0f af c6             	imul   eax,esi
    8734:	05 00 10 00 00       	add    eax,0x1000
    8739:	50                   	push   eax
    873a:	8b 44 24 5c          	mov    eax,DWORD PTR [esp+0x5c]
    873e:	50                   	push   eax
    873f:	e8 b3 83 06 00       	call   _D32Lock
    8744:	83 c4 08             	add    esp,0x8
    8747:	31 d2                	xor    edx,edx
    8749:	66 8b 54 24 3c       	mov    dx,WORD PTR [esp+0x3c]
    874e:	89 d0                	mov    eax,edx
    8750:	c1 fa 1f             	sar    edx,0x1f
    8753:	c1 e2 02             	shl    edx,0x2
    8756:	1b c2                	sbb    eax,edx
    8758:	c1 f8 02             	sar    eax,0x2
    875b:	0f af c6             	imul   eax,esi
    875e:	89 f2                	mov    edx,esi
    8760:	8d 98 00 10 00 00    	lea    ebx,[eax+0x1000]
    8766:	31 f2                	xor    edx,esi
    8768:	8b 44 24 58          	mov    eax,DWORD PTR [esp+0x58]
    876c:	e8 5f 8c 06 00       	call   memset_
    8771:	31 d2                	xor    edx,edx
    8773:	66 8b 54 24 3c       	mov    dx,WORD PTR [esp+0x3c]
    8778:	89 d0                	mov    eax,edx
    877a:	c1 fa 1f             	sar    edx,0x1f
    877d:	c1 e2 02             	shl    edx,0x2
    8780:	1b c2                	sbb    eax,edx
    8782:	c1 f8 02             	sar    eax,0x2
    8785:	89 f2                	mov    edx,esi
    8787:	0f af d0             	imul   edx,eax
    878a:	8b 44 24 3c          	mov    eax,DWORD PTR [esp+0x3c]
    878e:	66 89 44 24 2c       	mov    WORD PTR [esp+0x2c],ax
    8793:	98                   	cwde   
    8794:	89 44 24 48          	mov    DWORD PTR [esp+0x48],eax
    8798:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
    879c:	89 44 24 44          	mov    DWORD PTR [esp+0x44],eax
    87a0:	89 e0                	mov    eax,esp
    87a2:	89 74 24 10          	mov    DWORD PTR [esp+0x10],esi
    87a6:	50                   	push   eax
    87a7:	89 54 24 18          	mov    DWORD PTR [esp+0x18],edx
    87ab:	89 54 24 44          	mov    DWORD PTR [esp+0x44],edx
    87af:	e8 2c 7d 06 00       	call   _sosCODECInitStream
    87b4:	83 c4 04             	add    esp,0x4
W?$ct:SOUND$n(pna)__branch_15:
    87b7:	68 8e 03 00 00       	push   0x38e
    87bc:	b9 37 0c 00 00       	mov    ecx,@obj3:sound_cpp_variable_40                              ; fixup: num: 1037, src obj: 1, src ofs: 0x87bd, dst obj: 3, dst ofs: 0xc37
    87c1:	bb 00 20 00 00       	mov    ebx,0x2000
    87c6:	8b 44 24 54          	mov    eax,DWORD PTR [esp+0x54]
    87ca:	89 fa                	mov    edx,edi
    87cc:	e8 7f 5f 00 00       	call   XFILE_read_chunk2
    87d1:	31 d2                	xor    edx,edx
    87d3:	66 8b 54 24 3c       	mov    dx,WORD PTR [esp+0x3c]
    87d8:	89 c6                	mov    esi,eax
    87da:	89 d0                	mov    eax,edx
    87dc:	c1 fa 1f             	sar    edx,0x1f
    87df:	c1 e2 02             	shl    edx,0x2
    87e2:	1b c2                	sbb    eax,edx
    87e4:	c1 f8 02             	sar    eax,0x2
    87e7:	0f af c6             	imul   eax,esi
    87ea:	8c 5c 24 04          	mov    WORD PTR [esp+0x4],ds
    87ee:	50                   	push   eax
    87ef:	8d 44 24 04          	lea    eax,[esp+0x4]
    87f3:	89 7c 24 04          	mov    DWORD PTR [esp+0x4],edi
    87f7:	50                   	push   eax
    87f8:	8c 5c 24 14          	mov    WORD PTR [esp+0x14],ds
    87fc:	89 6c 24 10          	mov    DWORD PTR [esp+0x10],ebp
    8800:	e8 00 7d 06 00       	call   _sosCODECDecompressData
    8805:	83 c4 08             	add    esp,0x8
    8808:	01 c5                	add    ebp,eax
    880a:	81 fe 00 20 00 00    	cmp    esi,0x2000
    8810:	74 a5                	je     W?$ct:SOUND$n(pna)__branch_15
    8812:	8b 44 24 50          	mov    eax,DWORD PTR [esp+0x50]
    8816:	e8 f5 5e 00 00       	call   XFILE_close
    881b:	68 00 20 00 00       	push   0x2000
    8820:	57                   	push   edi
    8821:	e8 9b 82 06 00       	call   _D32Unlock
    8826:	83 c4 08             	add    esp,0x8
    8829:	89 f8                	mov    eax,edi
    882b:	31 d2                	xor    edx,edx
    882d:	e8 b6 8b 06 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
    8832:	66 8b 54 24 3c       	mov    dx,WORD PTR [esp+0x3c]
    8837:	89 d0                	mov    eax,edx
    8839:	c1 fa 1f             	sar    edx,0x1f
    883c:	c1 e2 02             	shl    edx,0x2
    883f:	1b c2                	sbb    eax,edx
    8841:	c1 f8 02             	sar    eax,0x2
    8844:	0f af 44 24 5c       	imul   eax,DWORD PTR [esp+0x5c]
    8849:	05 00 10 00 00       	add    eax,0x1000
    884e:	50                   	push   eax
    884f:	8b 4c 24 5c          	mov    ecx,DWORD PTR [esp+0x5c]
    8853:	51                   	push   ecx
    8854:	e8 68 82 06 00       	call   _D32Unlock
    8859:	83 c4 08             	add    esp,0x8
    885c:	8b 74 24 58          	mov    esi,DWORD PTR [esp+0x58]
    8860:	85 f6                	test   esi,esi
    8862:	75 11                	jne    W?$ct:SOUND$n(pna)__branch_16
    8864:	bb 41 0c 00 00       	mov    ebx,@obj3:sound_cpp_variable_41                              ; fixup: num: 1039, src obj: 1, src ofs: 0x8865, dst obj: 3, dst ofs: 0xc41
    8869:	ba 88 02 00 00       	mov    edx,0x288
    886e:	31 c0                	xor    eax,eax
    8870:	e8 bb f7 02 00       	call   _error_report
W?$ct:SOUND$n(pna)__branch_16:
    8875:	8b 4c 24 40          	mov    ecx,DWORD PTR [esp+0x40]
    8879:	8b 5c 24 48          	mov    ebx,DWORD PTR [esp+0x48]
    887d:	8b 54 24 44          	mov    edx,DWORD PTR [esp+0x44]
    8881:	8b 44 24 54          	mov    eax,DWORD PTR [esp+0x54]
    8885:	81 c1 00 08 00 00    	add    ecx,0x800
    888b:	e8 60 04 00 00       	call   initialize_buffer
    8890:	8b 5c 24 40          	mov    ebx,DWORD PTR [esp+0x40]
    8894:	8b 44 24 54          	mov    eax,DWORD PTR [esp+0x54]
    8898:	8d 96 f4 01 00 00    	lea    edx,[esi+0x1f4]
    889e:	81 eb f4 01 00 00    	sub    ebx,0x1f4
    88a4:	e8 97 06 00 00       	call   insert_into_buffer
    88a9:	84 c0                	test   al,al
    88ab:	75 11                	jne    W?$ct:SOUND$n(pna)__branch_17
    88ad:	bb 5f 0c 00 00       	mov    ebx,@obj3:sound_cpp_variable_42                              ; fixup: num: 1038, src obj: 1, src ofs: 0x88ae, dst obj: 3, dst ofs: 0xc5f
    88b2:	ba 8d 02 00 00       	mov    edx,0x28d
    88b7:	31 c0                	xor    eax,eax
    88b9:	e8 72 f7 02 00       	call   _error_report
W?$ct:SOUND$n(pna)__branch_17:
    88be:	89 f0                	mov    eax,esi
    88c0:	e8 23 8b 06 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
    88c5:	8b 44 24 4c          	mov    eax,DWORD PTR [esp+0x4c]
    88c9:	83 c4 60             	add    esp,0x60
    88cc:	5d                   	pop    ebp
    88cd:	5f                   	pop    edi
    88ce:	5e                   	pop    esi
    88cf:	59                   	pop    ecx
    88d0:	5b                   	pop    ebx
    88d1:	c3                   	ret    
W?$ct:SOUND$n(pna)__branch_18:
    88d2:	b9 93 02 00 00       	mov    ecx,0x293
    88d7:	bb 83 0c 00 00       	mov    ebx,@obj3:sound_cpp_variable_43                              ; fixup: num: 1044, src obj: 1, src ofs: 0x88d8, dst obj: 3, dst ofs: 0xc83
    88dc:	89 f8                	mov    eax,edi
    88de:	31 d2                	xor    edx,edx
    88e0:	e8 fb 44 00 00       	call   XFILE_read2
    88e5:	8b 54 24 54          	mov    edx,DWORD PTR [esp+0x54]
    88e9:	8c 5a 10             	mov    WORD PTR [edx+0x10],ds
    88ec:	89 c6                	mov    esi,eax
    88ee:	89 42 0c             	mov    DWORD PTR [edx+0xc],eax
    88f1:	85 c0                	test   eax,eax
    88f3:	75 0f                	jne    W?$ct:SOUND$n(pna)__branch_19
    88f5:	bb 8d 0c 00 00       	mov    ebx,@obj3:sound_cpp_variable_44                              ; fixup: num: 1043, src obj: 1, src ofs: 0x88f6, dst obj: 3, dst ofs: 0xc8d
    88fa:	ba 94 02 00 00       	mov    edx,0x294
    88ff:	e8 2c f7 02 00       	call   _error_report
W?$ct:SOUND$n(pna)__branch_19:
    8904:	8b 54 24 54          	mov    edx,DWORD PTR [esp+0x54]
    8908:	8b 44 24 54          	mov    eax,DWORD PTR [esp+0x54]
    890c:	8b 5a 0c             	mov    ebx,DWORD PTR [edx+0xc]
    890f:	66 8b 40 10          	mov    ax,WORD PTR [eax+0x10]
    8913:	83 c3 2c             	add    ebx,0x2c
    8916:	66 89 42 10          	mov    WORD PTR [edx+0x10],ax
    891a:	31 c0                	xor    eax,eax
    891c:	89 5a 0c             	mov    DWORD PTR [edx+0xc],ebx
    891f:	8a 46 08             	mov    al,BYTE PTR [esi+0x8]
    8922:	83 f8 57             	cmp    eax,0x57
    8925:	75 1e                	jne    W?$ct:SOUND$n(pna)__branch_20
    8927:	31 c0                	xor    eax,eax
    8929:	8a 46 09             	mov    al,BYTE PTR [esi+0x9]
    892c:	83 f8 41             	cmp    eax,0x41
    892f:	75 14                	jne    W?$ct:SOUND$n(pna)__branch_20
    8931:	31 c0                	xor    eax,eax
    8933:	8a 46 0a             	mov    al,BYTE PTR [esi+0xa]
    8936:	83 f8 56             	cmp    eax,0x56
    8939:	75 0a                	jne    W?$ct:SOUND$n(pna)__branch_20
    893b:	31 c0                	xor    eax,eax
    893d:	8a 46 0b             	mov    al,BYTE PTR [esi+0xb]
    8940:	83 f8 45             	cmp    eax,0x45
    8943:	74 31                	je     W?$ct:SOUND$n(pna)__branch_21
W?$ct:SOUND$n(pna)__branch_20:
    8945:	57                   	push   edi
    8946:	68 af 0c 00 00       	push   @obj3:sound_cpp_variable_45                                  ; fixup: num: 1042, src obj: 1, src ofs: 0x8947, dst obj: 3, dst ofs: 0xcaf
    894b:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 1041, src obj: 1, src ofs: 0x894c, dst obj: 3, dst ofs: 0x237fc
    8950:	bb fc 37 02 00       	mov    ebx,@obj3:log_buffer                                         ; fixup: num: 1040, src obj: 1, src ofs: 0x8951, dst obj: 3, dst ofs: 0x237fc
    8955:	e8 87 82 06 00       	call   sprintf_
    895a:	83 c4 0c             	add    esp,0xc
    895d:	ba 99 02 00 00       	mov    edx,0x299
    8962:	31 c0                	xor    eax,eax
    8964:	e8 c7 f6 02 00       	call   _error_report
    8969:	8b 44 24 4c          	mov    eax,DWORD PTR [esp+0x4c]
    896d:	83 c4 60             	add    esp,0x60
    8970:	5d                   	pop    ebp
    8971:	5f                   	pop    edi
    8972:	5e                   	pop    esi
    8973:	59                   	pop    ecx
    8974:	5b                   	pop    ebx
    8975:	c3                   	ret    
W?$ct:SOUND$n(pna)__branch_21:
    8976:	8b 46 28             	mov    eax,DWORD PTR [esi+0x28]
    8979:	89 42 14             	mov    DWORD PTR [edx+0x14],eax
    897c:	89 d0                	mov    eax,edx
    897e:	c7 42 34 00 01 00 00 	mov    DWORD PTR [edx+0x34],0x100
    8985:	31 d0                	xor    eax,edx
    8987:	66 8b 46 22          	mov    ax,WORD PTR [esi+0x22]
    898b:	89 82 84 00 00 00    	mov    DWORD PTR [edx+0x84],eax
    8991:	31 c0                	xor    eax,eax
    8993:	66 8b 46 22          	mov    ax,WORD PTR [esi+0x22]
    8997:	83 f8 08             	cmp    eax,0x8
    899a:	75 0f                	jne    W?$ct:SOUND$n(pna)__branch_22
    899c:	83 3d b0 a1 01 00 10 	cmp    DWORD PTR ds:@obj3:the_sound_system_variable_2,0x10          ; fixup: num: 1046, src obj: 1, src ofs: 0x899e, dst obj: 3, dst ofs: 0x1a1b0
    89a3:	75 06                	jne    W?$ct:SOUND$n(pna)__branch_22
    89a5:	80 4a 34 20          	or     BYTE PTR [edx+0x34],0x20
    89a9:	eb 1c                	jmp    W?$ct:SOUND$n(pna)__branch_23
W?$ct:SOUND$n(pna)__branch_22:
    89ab:	31 c0                	xor    eax,eax
    89ad:	66 8b 46 22          	mov    ax,WORD PTR [esi+0x22]
    89b1:	83 f8 10             	cmp    eax,0x10
    89b4:	75 11                	jne    W?$ct:SOUND$n(pna)__branch_23
    89b6:	83 3d b0 a1 01 00 08 	cmp    DWORD PTR ds:@obj3:the_sound_system_variable_2,0x8           ; fixup: num: 1045, src obj: 1, src ofs: 0x89b8, dst obj: 3, dst ofs: 0x1a1b0
    89bd:	75 08                	jne    W?$ct:SOUND$n(pna)__branch_23
    89bf:	8b 44 24 54          	mov    eax,DWORD PTR [esp+0x54]
    89c3:	80 48 34 80          	or     BYTE PTR [eax+0x34],0x80
W?$ct:SOUND$n(pna)__branch_23:
    89c7:	8b 54 24 54          	mov    edx,DWORD PTR [esp+0x54]
    89cb:	8b 46 18             	mov    eax,DWORD PTR [esi+0x18]
    89ce:	89 82 80 00 00 00    	mov    DWORD PTR [edx+0x80],eax
    89d4:	3d 11 2b 00 00       	cmp    eax,0x2b11
    89d9:	75 12                	jne    W?$ct:SOUND$n(pna)__branch_24
    89db:	8a 4a 35             	mov    cl,BYTE PTR [edx+0x35]
    89de:	c7 42 44 00 80 00 00 	mov    DWORD PTR [edx+0x44],0x8000
    89e5:	80 c9 04             	or     cl,0x4
    89e8:	88 4a 35             	mov    BYTE PTR [edx+0x35],cl
    89eb:	eb 17                	jmp    W?$ct:SOUND$n(pna)__branch_25
W?$ct:SOUND$n(pna)__branch_24:
    89ed:	3d 44 ac 00 00       	cmp    eax,0xac44
    89f2:	75 10                	jne    W?$ct:SOUND$n(pna)__branch_25
    89f4:	8a 7a 35             	mov    bh,BYTE PTR [edx+0x35]
    89f7:	c7 42 44 00 00 02 00 	mov    DWORD PTR [edx+0x44],0x20000
    89fe:	80 cf 04             	or     bh,0x4
    8a01:	88 7a 35             	mov    BYTE PTR [edx+0x35],bh
W?$ct:SOUND$n(pna)__branch_25:
    8a04:	8b 44 24 54          	mov    eax,DWORD PTR [esp+0x54]
    8a08:	8b 50 14             	mov    edx,DWORD PTR [eax+0x14]
    8a0b:	52                   	push   edx
    8a0c:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
    8a0f:	50                   	push   eax
    8a10:	e8 e2 80 06 00       	call   _D32Lock
    8a15:	83 c4 08             	add    esp,0x8
    8a18:	8b 44 24 4c          	mov    eax,DWORD PTR [esp+0x4c]
    8a1c:	83 c4 60             	add    esp,0x60
    8a1f:	5d                   	pop    ebp
    8a20:	5f                   	pop    edi
    8a21:	5e                   	pop    esi
    8a22:	59                   	pop    ecx
    8a23:	5b                   	pop    ebx
    8a24:	c3                   	ret    
    8a25:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    8a2b:	8d 52 00             	lea    edx,[edx+0x0]
    8a2e:	8b db                	mov    ebx,ebx

;-------------------------------------------------
;  Function 'W?$dt:SOUND$n()_'                   -
;-------------------------------------------------
W?$dt:SOUND$n()_:
    8a30:	53                   	push   ebx
    8a31:	51                   	push   ecx
    8a32:	56                   	push   esi
    8a33:	57                   	push   edi
    8a34:	55                   	push   ebp
    8a35:	89 c7                	mov    edi,eax
    8a37:	c7 40 04 00 00 00 00 	mov    DWORD PTR [eax+0x4],0x0
    8a3e:	89 c6                	mov    esi,eax
    8a40:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
    8a43:	85 c0                	test   eax,eax
    8a45:	0f 84 2d 01 00 00    	je     W?$dt:SOUND$n()__branch_10
    8a4b:	80 3d b4 a1 01 00 00 	cmp    BYTE PTR ds:@obj3:the_sound_system_variable_3,0x0            ; fixup: num: 1054, src obj: 1, src ofs: 0x8a4d, dst obj: 3, dst ofs: 0x1a1b4
    8a52:	74 52                	je     W?$dt:SOUND$n()__branch_3
    8a54:	8b 17                	mov    edx,DWORD PTR [edi]
    8a56:	8d 04 95 00 00 00 00 	lea    eax,[edx*4+0x0]
    8a5d:	29 d0                	sub    eax,edx
    8a5f:	01 c0                	add    eax,eax
    8a61:	83 b8 5c 44 01 00 00 	cmp    DWORD PTR [eax+@obj3:__lpSOSSampleList],0x0                  ; fixup: num: 1053, src obj: 1, src ofs: 0x8a63, dst obj: 3, dst ofs: 0x1445c
    8a68:	75 0a                	jne    W?$dt:SOUND$n()__branch_1
    8a6a:	66 83 b8 60 44 01 00 00 	cmp    WORD PTR [eax+@obj3:__lpSOSSampleList_variable_1],0x0     ; fixup: num: 1052, src obj: 1, src ofs: 0x8a6d, dst obj: 3, dst ofs: 0x14460
    8a72:	74 32                	je     W?$dt:SOUND$n()__branch_3
W?$dt:SOUND$n()__branch_1:
    8a74:	0f b5 80 5c 44 01 00 	lgs    eax,FWORD PTR [eax+@obj3:__lpSOSSampleList]                  ; fixup: num: 1051, src obj: 1, src ofs: 0x8a77, dst obj: 3, dst ofs: 0x1445c
    8a7b:	0f bf 5f 08          	movsx  ebx,WORD PTR [edi+0x8]
    8a7f:	65 0f bf 40 34       	movsx  eax,WORD PTR gs:[eax+0x34]
    8a84:	39 c3                	cmp    ebx,eax
    8a86:	75 1e                	jne    W?$dt:SOUND$n()__branch_3
    8a88:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 1050, src obj: 1, src ofs: 0x8a89, dst obj: 3, dst ofs: 0x1a1ac
    8a8d:	e8 5f d1 06 00       	call   sosDIGISampleDone_
    8a92:	83 f8 01             	cmp    eax,0x1
    8a95:	75 0b                	jne    W?$dt:SOUND$n()__branch_2
    8a97:	66 c7 47 08 00 00    	mov    WORD PTR [edi+0x8],0x0
    8a9d:	8a 47 08             	mov    al,BYTE PTR [edi+0x8]
    8aa0:	eb 06                	jmp    W?$dt:SOUND$n()__branch_4
W?$dt:SOUND$n()__branch_2:
    8aa2:	b0 01                	mov    al,0x1
    8aa4:	eb 02                	jmp    W?$dt:SOUND$n()__branch_4
W?$dt:SOUND$n()__branch_3:
    8aa6:	30 c0                	xor    al,al
W?$dt:SOUND$n()__branch_4:
    8aa8:	84 c0                	test   al,al
    8aaa:	0f 84 92 00 00 00    	je     W?$dt:SOUND$n()__branch_9
    8ab0:	8a 15 b4 a1 01 00    	mov    dl,BYTE PTR ds:@obj3:the_sound_system_variable_3             ; fixup: num: 1049, src obj: 1, src ofs: 0x8ab2, dst obj: 3, dst ofs: 0x1a1b4
    8ab6:	89 f3                	mov    ebx,esi
    8ab8:	84 d2                	test   dl,dl
    8aba:	0f 84 82 00 00 00    	je     W?$dt:SOUND$n()__branch_9
    8ac0:	74 52                	je     W?$dt:SOUND$n()__branch_7
    8ac2:	8b 16                	mov    edx,DWORD PTR [esi]
    8ac4:	8d 04 95 00 00 00 00 	lea    eax,[edx*4+0x0]
    8acb:	29 d0                	sub    eax,edx
    8acd:	01 c0                	add    eax,eax
    8acf:	83 b8 5c 44 01 00 00 	cmp    DWORD PTR [eax+@obj3:__lpSOSSampleList],0x0                  ; fixup: num: 1048, src obj: 1, src ofs: 0x8ad1, dst obj: 3, dst ofs: 0x1445c
    8ad6:	75 0a                	jne    W?$dt:SOUND$n()__branch_5
    8ad8:	66 83 b8 60 44 01 00 00 	cmp    WORD PTR [eax+@obj3:__lpSOSSampleList_variable_1],0x0     ; fixup: num: 1047, src obj: 1, src ofs: 0x8adb, dst obj: 3, dst ofs: 0x14460
    8ae0:	74 32                	je     W?$dt:SOUND$n()__branch_7
W?$dt:SOUND$n()__branch_5:
    8ae2:	0f b5 80 5c 44 01 00 	lgs    eax,FWORD PTR [eax+@obj3:__lpSOSSampleList]                  ; fixup: num: 1058, src obj: 1, src ofs: 0x8ae5, dst obj: 3, dst ofs: 0x1445c
    8ae9:	0f bf 4e 08          	movsx  ecx,WORD PTR [esi+0x8]
    8aed:	65 0f bf 40 34       	movsx  eax,WORD PTR gs:[eax+0x34]
    8af2:	39 c1                	cmp    ecx,eax
    8af4:	75 1e                	jne    W?$dt:SOUND$n()__branch_7
    8af6:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 1057, src obj: 1, src ofs: 0x8af7, dst obj: 3, dst ofs: 0x1a1ac
    8afb:	e8 f1 d0 06 00       	call   sosDIGISampleDone_
    8b00:	83 f8 01             	cmp    eax,0x1
    8b03:	75 0b                	jne    W?$dt:SOUND$n()__branch_6
    8b05:	66 c7 46 08 00 00    	mov    WORD PTR [esi+0x8],0x0
    8b0b:	8a 46 08             	mov    al,BYTE PTR [esi+0x8]
    8b0e:	eb 06                	jmp    W?$dt:SOUND$n()__branch_8
W?$dt:SOUND$n()__branch_6:
    8b10:	b0 01                	mov    al,0x1
    8b12:	eb 02                	jmp    W?$dt:SOUND$n()__branch_8
W?$dt:SOUND$n()__branch_7:
    8b14:	30 c0                	xor    al,al
W?$dt:SOUND$n()__branch_8:
    8b16:	84 c0                	test   al,al
    8b18:	74 28                	je     W?$dt:SOUND$n()__branch_9
    8b1a:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 1056, src obj: 1, src ofs: 0x8b1b, dst obj: 3, dst ofs: 0x1a1ac
    8b1f:	8b 13                	mov    edx,DWORD PTR [ebx]
    8b21:	66 c7 43 08 00 00    	mov    WORD PTR [ebx+0x8],0x0
    8b27:	e8 f3 a9 06 00       	call   sosDIGIStopSample_
    8b2c:	83 f8 0a             	cmp    eax,0xa
    8b2f:	75 11                	jne    W?$dt:SOUND$n()__branch_9
    8b31:	bb 69 0b 00 00       	mov    ebx,@obj3:sound_cpp_variable_32                              ; fixup: num: 1055, src obj: 1, src ofs: 0x8b32, dst obj: 3, dst ofs: 0xb69
    8b36:	ba fd 02 00 00       	mov    edx,0x2fd
    8b3b:	31 c0                	xor    eax,eax
    8b3d:	e8 ee f4 02 00       	call   _error_report
W?$dt:SOUND$n()__branch_9:
    8b42:	8b 6e 14             	mov    ebp,DWORD PTR [esi+0x14]
    8b45:	55                   	push   ebp
    8b46:	8b 46 0c             	mov    eax,DWORD PTR [esi+0xc]
    8b49:	50                   	push   eax
    8b4a:	e8 72 7f 06 00       	call   _D32Unlock
    8b4f:	8b 56 0c             	mov    edx,DWORD PTR [esi+0xc]
    8b52:	66 8b 46 10          	mov    ax,WORD PTR [esi+0x10]
    8b56:	83 ea 2c             	sub    edx,0x2c
    8b59:	66 89 46 10          	mov    WORD PTR [esi+0x10],ax
    8b5d:	89 56 0c             	mov    DWORD PTR [esi+0xc],edx
    8b60:	83 c4 08             	add    esp,0x8
    8b63:	8b 46 0c             	mov    eax,DWORD PTR [esi+0xc]
    8b66:	e8 7d 88 06 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
    8b6b:	66 c7 46 10 00 00    	mov    WORD PTR [esi+0x10],0x0
    8b71:	c7 46 0c 00 00 00 00 	mov    DWORD PTR [esi+0xc],0x0
W?$dt:SOUND$n()__branch_10:
    8b78:	89 f8                	mov    eax,edi
    8b7a:	66 c7 46 08 00 00    	mov    WORD PTR [esi+0x8],0x0
    8b80:	5d                   	pop    ebp
    8b81:	5f                   	pop    edi
    8b82:	5e                   	pop    esi
    8b83:	59                   	pop    ecx
    8b84:	5b                   	pop    ebx
    8b85:	c3                   	ret    
    8b86:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    8b8c:	8d 54 22 00          	lea    edx,[edx+eiz*1+0x0]

;-------------------------------------------------
;  Function 'unload'                             -
;-------------------------------------------------
unload:
    8b90:	53                   	push   ebx
    8b91:	51                   	push   ecx
    8b92:	52                   	push   edx
    8b93:	56                   	push   esi
    8b94:	57                   	push   edi
    8b95:	55                   	push   ebp
    8b96:	89 c6                	mov    esi,eax
    8b98:	c7 40 04 00 00 00 00 	mov    DWORD PTR [eax+0x4],0x0
    8b9f:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
    8ba2:	85 c0                	test   eax,eax
    8ba4:	0f 84 2d 01 00 00    	je     unload_branch_10
    8baa:	80 3d b4 a1 01 00 00 	cmp    BYTE PTR ds:@obj3:the_sound_system_variable_3,0x0            ; fixup: num: 1066, src obj: 1, src ofs: 0x8bac, dst obj: 3, dst ofs: 0x1a1b4
    8bb1:	74 52                	je     unload_branch_3
    8bb3:	8b 16                	mov    edx,DWORD PTR [esi]
    8bb5:	8d 04 95 00 00 00 00 	lea    eax,[edx*4+0x0]
    8bbc:	29 d0                	sub    eax,edx
    8bbe:	01 c0                	add    eax,eax
    8bc0:	83 b8 5c 44 01 00 00 	cmp    DWORD PTR [eax+@obj3:__lpSOSSampleList],0x0                  ; fixup: num: 1065, src obj: 1, src ofs: 0x8bc2, dst obj: 3, dst ofs: 0x1445c
    8bc7:	75 0a                	jne    unload_branch_1
    8bc9:	66 83 b8 60 44 01 00 00 	cmp    WORD PTR [eax+@obj3:__lpSOSSampleList_variable_1],0x0     ; fixup: num: 1064, src obj: 1, src ofs: 0x8bcc, dst obj: 3, dst ofs: 0x14460
    8bd1:	74 32                	je     unload_branch_3
unload_branch_1:
    8bd3:	0f b5 80 5c 44 01 00 	lgs    eax,FWORD PTR [eax+@obj3:__lpSOSSampleList]                  ; fixup: num: 1063, src obj: 1, src ofs: 0x8bd6, dst obj: 3, dst ofs: 0x1445c
    8bda:	0f bf 5e 08          	movsx  ebx,WORD PTR [esi+0x8]
    8bde:	65 0f bf 40 34       	movsx  eax,WORD PTR gs:[eax+0x34]
    8be3:	39 c3                	cmp    ebx,eax
    8be5:	75 1e                	jne    unload_branch_3
    8be7:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 1062, src obj: 1, src ofs: 0x8be8, dst obj: 3, dst ofs: 0x1a1ac
    8bec:	e8 00 d0 06 00       	call   sosDIGISampleDone_
    8bf1:	83 f8 01             	cmp    eax,0x1
    8bf4:	75 0b                	jne    unload_branch_2
    8bf6:	66 c7 46 08 00 00    	mov    WORD PTR [esi+0x8],0x0
    8bfc:	8a 46 08             	mov    al,BYTE PTR [esi+0x8]
    8bff:	eb 06                	jmp    unload_branch_4
unload_branch_2:
    8c01:	b0 01                	mov    al,0x1
    8c03:	eb 02                	jmp    unload_branch_4
unload_branch_3:
    8c05:	30 c0                	xor    al,al
unload_branch_4:
    8c07:	84 c0                	test   al,al
    8c09:	0f 84 92 00 00 00    	je     unload_branch_9
    8c0f:	8a 15 b4 a1 01 00    	mov    dl,BYTE PTR ds:@obj3:the_sound_system_variable_3             ; fixup: num: 1061, src obj: 1, src ofs: 0x8c11, dst obj: 3, dst ofs: 0x1a1b4
    8c15:	89 f3                	mov    ebx,esi
    8c17:	84 d2                	test   dl,dl
    8c19:	0f 84 82 00 00 00    	je     unload_branch_9
    8c1f:	74 52                	je     unload_branch_7
    8c21:	8b 16                	mov    edx,DWORD PTR [esi]
    8c23:	8d 04 95 00 00 00 00 	lea    eax,[edx*4+0x0]
    8c2a:	29 d0                	sub    eax,edx
    8c2c:	01 c0                	add    eax,eax
    8c2e:	83 b8 5c 44 01 00 00 	cmp    DWORD PTR [eax+@obj3:__lpSOSSampleList],0x0                  ; fixup: num: 1060, src obj: 1, src ofs: 0x8c30, dst obj: 3, dst ofs: 0x1445c
    8c35:	75 0a                	jne    unload_branch_5
    8c37:	66 83 b8 60 44 01 00 00 	cmp    WORD PTR [eax+@obj3:__lpSOSSampleList_variable_1],0x0     ; fixup: num: 1059, src obj: 1, src ofs: 0x8c3a, dst obj: 3, dst ofs: 0x14460
    8c3f:	74 32                	je     unload_branch_7
unload_branch_5:
    8c41:	0f b5 80 5c 44 01 00 	lgs    eax,FWORD PTR [eax+@obj3:__lpSOSSampleList]                  ; fixup: num: 1070, src obj: 1, src ofs: 0x8c44, dst obj: 3, dst ofs: 0x1445c
    8c48:	0f bf 4e 08          	movsx  ecx,WORD PTR [esi+0x8]
    8c4c:	65 0f bf 40 34       	movsx  eax,WORD PTR gs:[eax+0x34]
    8c51:	39 c1                	cmp    ecx,eax
    8c53:	75 1e                	jne    unload_branch_7
    8c55:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 1069, src obj: 1, src ofs: 0x8c56, dst obj: 3, dst ofs: 0x1a1ac
    8c5a:	e8 92 cf 06 00       	call   sosDIGISampleDone_
    8c5f:	83 f8 01             	cmp    eax,0x1
    8c62:	75 0b                	jne    unload_branch_6
    8c64:	66 c7 46 08 00 00    	mov    WORD PTR [esi+0x8],0x0
    8c6a:	8a 46 08             	mov    al,BYTE PTR [esi+0x8]
    8c6d:	eb 06                	jmp    unload_branch_8
unload_branch_6:
    8c6f:	b0 01                	mov    al,0x1
    8c71:	eb 02                	jmp    unload_branch_8
unload_branch_7:
    8c73:	30 c0                	xor    al,al
unload_branch_8:
    8c75:	84 c0                	test   al,al
    8c77:	74 28                	je     unload_branch_9
    8c79:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 1068, src obj: 1, src ofs: 0x8c7a, dst obj: 3, dst ofs: 0x1a1ac
    8c7e:	8b 13                	mov    edx,DWORD PTR [ebx]
    8c80:	66 c7 43 08 00 00    	mov    WORD PTR [ebx+0x8],0x0
    8c86:	e8 94 a8 06 00       	call   sosDIGIStopSample_
    8c8b:	83 f8 0a             	cmp    eax,0xa
    8c8e:	75 11                	jne    unload_branch_9
    8c90:	bb 69 0b 00 00       	mov    ebx,@obj3:sound_cpp_variable_32                              ; fixup: num: 1067, src obj: 1, src ofs: 0x8c91, dst obj: 3, dst ofs: 0xb69
    8c95:	ba fd 02 00 00       	mov    edx,0x2fd
    8c9a:	31 c0                	xor    eax,eax
    8c9c:	e8 8f f3 02 00       	call   _error_report
unload_branch_9:
    8ca1:	8b 7e 14             	mov    edi,DWORD PTR [esi+0x14]
    8ca4:	57                   	push   edi
    8ca5:	8b 46 0c             	mov    eax,DWORD PTR [esi+0xc]
    8ca8:	50                   	push   eax
    8ca9:	e8 13 7e 06 00       	call   _D32Unlock
    8cae:	8b 6e 0c             	mov    ebp,DWORD PTR [esi+0xc]
    8cb1:	66 8b 46 10          	mov    ax,WORD PTR [esi+0x10]
    8cb5:	83 ed 2c             	sub    ebp,0x2c
    8cb8:	66 89 46 10          	mov    WORD PTR [esi+0x10],ax
    8cbc:	89 6e 0c             	mov    DWORD PTR [esi+0xc],ebp
    8cbf:	83 c4 08             	add    esp,0x8
    8cc2:	8b 46 0c             	mov    eax,DWORD PTR [esi+0xc]
    8cc5:	e8 1e 87 06 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
    8cca:	66 c7 46 10 00 00    	mov    WORD PTR [esi+0x10],0x0
    8cd0:	c7 46 0c 00 00 00 00 	mov    DWORD PTR [esi+0xc],0x0
unload_branch_10:
    8cd7:	66 c7 46 08 00 00    	mov    WORD PTR [esi+0x8],0x0
    8cdd:	5d                   	pop    ebp
    8cde:	5f                   	pop    edi
    8cdf:	5e                   	pop    esi
    8ce0:	5a                   	pop    edx
    8ce1:	59                   	pop    ecx
    8ce2:	5b                   	pop    ebx
    8ce3:	c3                   	ret    
    8ce4:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    8cea:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]

;-------------------------------------------------
;  Function 'initialize_buffer'                  -
;-------------------------------------------------
initialize_buffer:
    8cf0:	56                   	push   esi
    8cf1:	57                   	push   edi
    8cf2:	55                   	push   ebp
    8cf3:	83 ec 0c             	sub    esp,0xc
    8cf6:	89 c6                	mov    esi,eax
    8cf8:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
    8cfc:	89 5c 24 04          	mov    DWORD PTR [esp+0x4],ebx
    8d00:	89 cd                	mov    ebp,ecx
    8d02:	c7 40 04 00 00 00 00 	mov    DWORD PTR [eax+0x4],0x0
    8d09:	89 c7                	mov    edi,eax
    8d0b:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
    8d0e:	85 c0                	test   eax,eax
    8d10:	0f 84 33 01 00 00    	je     initialize_buffer_branch_10
    8d16:	80 3d b4 a1 01 00 00 	cmp    BYTE PTR ds:@obj3:the_sound_system_variable_3,0x0            ; fixup: num: 996, src obj: 1, src ofs: 0x8d18, dst obj: 3, dst ofs: 0x1a1b4
    8d1d:	74 52                	je     initialize_buffer_branch_3
    8d1f:	8b 16                	mov    edx,DWORD PTR [esi]
    8d21:	8d 04 95 00 00 00 00 	lea    eax,[edx*4+0x0]
    8d28:	29 d0                	sub    eax,edx
    8d2a:	01 c0                	add    eax,eax
    8d2c:	83 b8 5c 44 01 00 00 	cmp    DWORD PTR [eax+@obj3:__lpSOSSampleList],0x0                  ; fixup: num: 1076, src obj: 1, src ofs: 0x8d2e, dst obj: 3, dst ofs: 0x1445c
    8d33:	75 0a                	jne    initialize_buffer_branch_1
    8d35:	66 83 b8 60 44 01 00 00 	cmp    WORD PTR [eax+@obj3:__lpSOSSampleList_variable_1],0x0     ; fixup: num: 1075, src obj: 1, src ofs: 0x8d38, dst obj: 3, dst ofs: 0x14460
    8d3d:	74 32                	je     initialize_buffer_branch_3
initialize_buffer_branch_1:
    8d3f:	0f b5 80 5c 44 01 00 	lgs    eax,FWORD PTR [eax+@obj3:__lpSOSSampleList]                  ; fixup: num: 1074, src obj: 1, src ofs: 0x8d42, dst obj: 3, dst ofs: 0x1445c
    8d46:	65 0f bf 58 34       	movsx  ebx,WORD PTR gs:[eax+0x34]
    8d4b:	0f bf 46 08          	movsx  eax,WORD PTR [esi+0x8]
    8d4f:	39 d8                	cmp    eax,ebx
    8d51:	75 1e                	jne    initialize_buffer_branch_3
    8d53:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 1073, src obj: 1, src ofs: 0x8d54, dst obj: 3, dst ofs: 0x1a1ac
    8d58:	e8 94 ce 06 00       	call   sosDIGISampleDone_
    8d5d:	83 f8 01             	cmp    eax,0x1
    8d60:	75 0b                	jne    initialize_buffer_branch_2
    8d62:	66 c7 46 08 00 00    	mov    WORD PTR [esi+0x8],0x0
    8d68:	8a 46 08             	mov    al,BYTE PTR [esi+0x8]
    8d6b:	eb 06                	jmp    initialize_buffer_branch_4
initialize_buffer_branch_2:
    8d6d:	b0 01                	mov    al,0x1
    8d6f:	eb 02                	jmp    initialize_buffer_branch_4
initialize_buffer_branch_3:
    8d71:	30 c0                	xor    al,al
initialize_buffer_branch_4:
    8d73:	84 c0                	test   al,al
    8d75:	0f 84 98 00 00 00    	je     initialize_buffer_branch_9
    8d7b:	8a 15 b4 a1 01 00    	mov    dl,BYTE PTR ds:@obj3:the_sound_system_variable_3             ; fixup: num: 1072, src obj: 1, src ofs: 0x8d7d, dst obj: 3, dst ofs: 0x1a1b4
    8d81:	89 fb                	mov    ebx,edi
    8d83:	84 d2                	test   dl,dl
    8d85:	0f 84 88 00 00 00    	je     initialize_buffer_branch_9
    8d8b:	74 58                	je     initialize_buffer_branch_7
    8d8d:	8b 17                	mov    edx,DWORD PTR [edi]
    8d8f:	8d 04 95 00 00 00 00 	lea    eax,[edx*4+0x0]
    8d96:	29 d0                	sub    eax,edx
    8d98:	01 c0                	add    eax,eax
    8d9a:	83 b8 5c 44 01 00 00 	cmp    DWORD PTR [eax+@obj3:__lpSOSSampleList],0x0                  ; fixup: num: 1071, src obj: 1, src ofs: 0x8d9c, dst obj: 3, dst ofs: 0x1445c
    8da1:	75 0a                	jne    initialize_buffer_branch_5
    8da3:	66 83 b8 60 44 01 00 00 	cmp    WORD PTR [eax+@obj3:__lpSOSSampleList_variable_1],0x0     ; fixup: num: 1001, src obj: 1, src ofs: 0x8da6, dst obj: 3, dst ofs: 0x14460
    8dab:	74 38                	je     initialize_buffer_branch_7
initialize_buffer_branch_5:
    8dad:	0f b5 80 5c 44 01 00 	lgs    eax,FWORD PTR [eax+@obj3:__lpSOSSampleList]                  ; fixup: num: 1000, src obj: 1, src ofs: 0x8db0, dst obj: 3, dst ofs: 0x1445c
    8db4:	65 0f bf 40 34       	movsx  eax,WORD PTR gs:[eax+0x34]
    8db9:	89 04 24             	mov    DWORD PTR [esp],eax
    8dbc:	8b 0c 24             	mov    ecx,DWORD PTR [esp]
    8dbf:	0f bf 47 08          	movsx  eax,WORD PTR [edi+0x8]
    8dc3:	39 c8                	cmp    eax,ecx
    8dc5:	75 1e                	jne    initialize_buffer_branch_7
    8dc7:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 999, src obj: 1, src ofs: 0x8dc8, dst obj: 3, dst ofs: 0x1a1ac
    8dcc:	e8 20 ce 06 00       	call   sosDIGISampleDone_
    8dd1:	83 f8 01             	cmp    eax,0x1
    8dd4:	75 0b                	jne    initialize_buffer_branch_6
    8dd6:	66 c7 47 08 00 00    	mov    WORD PTR [edi+0x8],0x0
    8ddc:	8a 47 08             	mov    al,BYTE PTR [edi+0x8]
    8ddf:	eb 06                	jmp    initialize_buffer_branch_8
initialize_buffer_branch_6:
    8de1:	b0 01                	mov    al,0x1
    8de3:	eb 02                	jmp    initialize_buffer_branch_8
initialize_buffer_branch_7:
    8de5:	30 c0                	xor    al,al
initialize_buffer_branch_8:
    8de7:	84 c0                	test   al,al
    8de9:	74 28                	je     initialize_buffer_branch_9
    8deb:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 998, src obj: 1, src ofs: 0x8dec, dst obj: 3, dst ofs: 0x1a1ac
    8df0:	8b 13                	mov    edx,DWORD PTR [ebx]
    8df2:	66 c7 43 08 00 00    	mov    WORD PTR [ebx+0x8],0x0
    8df8:	e8 22 a7 06 00       	call   sosDIGIStopSample_
    8dfd:	83 f8 0a             	cmp    eax,0xa
    8e00:	75 11                	jne    initialize_buffer_branch_9
    8e02:	bb 69 0b 00 00       	mov    ebx,@obj3:sound_cpp_variable_32                              ; fixup: num: 997, src obj: 1, src ofs: 0x8e03, dst obj: 3, dst ofs: 0xb69
    8e07:	ba fd 02 00 00       	mov    edx,0x2fd
    8e0c:	31 c0                	xor    eax,eax
    8e0e:	e8 1d f2 02 00       	call   _error_report
initialize_buffer_branch_9:
    8e13:	8b 47 14             	mov    eax,DWORD PTR [edi+0x14]
    8e16:	50                   	push   eax
    8e17:	8b 47 0c             	mov    eax,DWORD PTR [edi+0xc]
    8e1a:	50                   	push   eax
    8e1b:	e8 a1 7c 06 00       	call   _D32Unlock
    8e20:	8b 57 0c             	mov    edx,DWORD PTR [edi+0xc]
    8e23:	66 8b 47 10          	mov    ax,WORD PTR [edi+0x10]
    8e27:	83 ea 2c             	sub    edx,0x2c
    8e2a:	66 89 47 10          	mov    WORD PTR [edi+0x10],ax
    8e2e:	89 57 0c             	mov    DWORD PTR [edi+0xc],edx
    8e31:	83 c4 08             	add    esp,0x8
    8e34:	8b 47 0c             	mov    eax,DWORD PTR [edi+0xc]
    8e37:	e8 ac 85 06 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
    8e3c:	66 c7 47 10 00 00    	mov    WORD PTR [edi+0x10],0x0
    8e42:	c7 47 0c 00 00 00 00 	mov    DWORD PTR [edi+0xc],0x0
initialize_buffer_branch_10:
    8e49:	83 c5 02             	add    ebp,0x2
    8e4c:	83 e5 fe             	and    ebp,0xfffffffe
    8e4f:	8d 5d 2c             	lea    ebx,[ebp+0x2c]
    8e52:	b8 01 00 00 00       	mov    eax,0x1
    8e57:	89 da                	mov    edx,ebx
    8e59:	66 c7 47 08 00 00    	mov    WORD PTR [edi+0x8],0x0
    8e5f:	e8 78 ce 06 00       	call   calloc_
    8e64:	89 c7                	mov    edi,eax
    8e66:	85 c0                	test   eax,eax
    8e68:	75 24                	jne    initialize_buffer_branch_11
    8e6a:	53                   	push   ebx
    8e6b:	68 e7 0c 00 00       	push   @obj3:sound_cpp_variable_46                                  ; fixup: num: 1008, src obj: 1, src ofs: 0x8e6c, dst obj: 3, dst ofs: 0xce7
    8e70:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 1007, src obj: 1, src ofs: 0x8e71, dst obj: 3, dst ofs: 0x237fc
    8e75:	ba 08 02 00 00       	mov    edx,0x208
    8e7a:	e8 62 7d 06 00       	call   sprintf_
    8e7f:	83 c4 0c             	add    esp,0xc
    8e82:	bb fc 37 02 00       	mov    ebx,@obj3:log_buffer                                         ; fixup: num: 1006, src obj: 1, src ofs: 0x8e83, dst obj: 3, dst ofs: 0x237fc
    8e87:	31 c0                	xor    eax,eax
    8e89:	e8 a2 f1 02 00       	call   _error_report
initialize_buffer_branch_11:
    8e8e:	c7 46 34 00 01 00 00 	mov    DWORD PTR [esi+0x34],0x100
    8e95:	8c 5e 10             	mov    WORD PTR [esi+0x10],ds
    8e98:	83 c7 2c             	add    edi,0x2c
    8e9b:	89 6e 14             	mov    DWORD PTR [esi+0x14],ebp
    8e9e:	a1 ac 0f 01 00       	mov    eax,ds:@obj3:fx_volume                                       ; fixup: num: 1005, src obj: 1, src ofs: 0x8e9f, dst obj: 3, dst ofs: 0x10fac
    8ea3:	89 7e 0c             	mov    DWORD PTR [esi+0xc],edi
    8ea6:	66 8b 04 45 be 0f 01 00 	mov    ax,WORD PTR [eax*2+@obj3:volume_table]                    ; fixup: num: 1004, src obj: 1, src ofs: 0x8eaa, dst obj: 3, dst ofs: 0x10fbe
    8eae:	25 ff ff 00 00       	and    eax,0xffff
    8eb3:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
    8eb6:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
    8eba:	89 86 84 00 00 00    	mov    DWORD PTR [esi+0x84],eax
    8ec0:	83 f8 08             	cmp    eax,0x8
    8ec3:	75 0f                	jne    initialize_buffer_branch_12
    8ec5:	83 3d b0 a1 01 00 10 	cmp    DWORD PTR ds:@obj3:the_sound_system_variable_2,0x10          ; fixup: num: 1003, src obj: 1, src ofs: 0x8ec7, dst obj: 3, dst ofs: 0x1a1b0
    8ecc:	75 06                	jne    initialize_buffer_branch_12
    8ece:	80 4e 34 20          	or     BYTE PTR [esi+0x34],0x20
    8ed2:	eb 16                	jmp    initialize_buffer_branch_13
initialize_buffer_branch_12:
    8ed4:	83 be 84 00 00 00 10 	cmp    DWORD PTR [esi+0x84],0x10
    8edb:	75 0d                	jne    initialize_buffer_branch_13
    8edd:	83 3d b0 a1 01 00 08 	cmp    DWORD PTR ds:@obj3:the_sound_system_variable_2,0x8           ; fixup: num: 1002, src obj: 1, src ofs: 0x8edf, dst obj: 3, dst ofs: 0x1a1b0
    8ee4:	75 04                	jne    initialize_buffer_branch_13
    8ee6:	80 4e 34 80          	or     BYTE PTR [esi+0x34],0x80
initialize_buffer_branch_13:
    8eea:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
    8eee:	89 86 80 00 00 00    	mov    DWORD PTR [esi+0x80],eax
    8ef4:	3d 11 2b 00 00       	cmp    eax,0x2b11
    8ef9:	75 12                	jne    initialize_buffer_branch_14
    8efb:	8a 6e 35             	mov    ch,BYTE PTR [esi+0x35]
    8efe:	c7 46 44 00 80 00 00 	mov    DWORD PTR [esi+0x44],0x8000
    8f05:	80 cd 04             	or     ch,0x4
    8f08:	88 6e 35             	mov    BYTE PTR [esi+0x35],ch
    8f0b:	eb 17                	jmp    initialize_buffer_branch_15
initialize_buffer_branch_14:
    8f0d:	3d 44 ac 00 00       	cmp    eax,0xac44
    8f12:	75 10                	jne    initialize_buffer_branch_15
    8f14:	8a 4e 35             	mov    cl,BYTE PTR [esi+0x35]
    8f17:	c7 46 44 00 00 02 00 	mov    DWORD PTR [esi+0x44],0x20000
    8f1e:	80 c9 04             	or     cl,0x4
    8f21:	88 4e 35             	mov    BYTE PTR [esi+0x35],cl
initialize_buffer_branch_15:
    8f24:	8b 5e 14             	mov    ebx,DWORD PTR [esi+0x14]
    8f27:	53                   	push   ebx
    8f28:	8b 46 0c             	mov    eax,DWORD PTR [esi+0xc]
    8f2b:	50                   	push   eax
    8f2c:	e8 c6 7b 06 00       	call   _D32Lock
    8f31:	83 c4 08             	add    esp,0x8
    8f34:	83 c4 0c             	add    esp,0xc
    8f37:	5d                   	pop    ebp
    8f38:	5f                   	pop    edi
    8f39:	5e                   	pop    esi
    8f3a:	c3                   	ret    
    8f3b:	8d 40 00             	lea    eax,[eax+0x0]
    8f3e:	8b c9                	mov    ecx,ecx

;-------------------------------------------------
;  Function 'insert_into_buffer'                 -
;-------------------------------------------------
insert_into_buffer:
    8f40:	51                   	push   ecx
    8f41:	56                   	push   esi
    8f42:	57                   	push   edi
    8f43:	55                   	push   ebp
    8f44:	83 ec 0c             	sub    esp,0xc
    8f47:	89 c5                	mov    ebp,eax
    8f49:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
    8f4d:	89 5c 24 08          	mov    DWORD PTR [esp+0x8],ebx
    8f51:	8a 25 b4 a1 01 00    	mov    ah,BYTE PTR ds:@obj3:the_sound_system_variable_3             ; fixup: num: 1011, src obj: 1, src ofs: 0x8f53, dst obj: 3, dst ofs: 0x1a1b4
    8f57:	31 ff                	xor    edi,edi
    8f59:	84 e4                	test   ah,ah
    8f5b:	75 07                	jne    insert_into_buffer_branch_1
    8f5d:	30 c0                	xor    al,al
    8f5f:	e9 47 02 00 00       	jmp    insert_into_buffer_branch_25
insert_into_buffer_branch_1:
    8f64:	85 db                	test   ebx,ebx
    8f66:	75 0a                	jne    insert_into_buffer_branch_2
    8f68:	b0 01                	mov    al,0x1
    8f6a:	83 c4 0c             	add    esp,0xc
    8f6d:	5d                   	pop    ebp
    8f6e:	5f                   	pop    edi
    8f6f:	5e                   	pop    esi
    8f70:	59                   	pop    ecx
    8f71:	c3                   	ret    
insert_into_buffer_branch_2:
    8f72:	89 d8                	mov    eax,ebx
    8f74:	3b 45 14             	cmp    eax,DWORD PTR [ebp+0x14]
    8f77:	72 11                	jb     insert_into_buffer_branch_3
    8f79:	bb 0a 0d 00 00       	mov    ebx,@obj3:sound_cpp_variable_47                              ; fixup: num: 1010, src obj: 1, src ofs: 0x8f7a, dst obj: 3, dst ofs: 0xd0a
    8f7e:	ba 32 02 00 00       	mov    edx,0x232
    8f83:	31 c0                	xor    eax,eax
    8f85:	e8 a6 f0 02 00       	call   _error_report
insert_into_buffer_branch_3:
    8f8a:	8a 15 b4 a1 01 00    	mov    dl,BYTE PTR ds:@obj3:the_sound_system_variable_3             ; fixup: num: 1009, src obj: 1, src ofs: 0x8f8c, dst obj: 3, dst ofs: 0x1a1b4
    8f90:	89 ee                	mov    esi,ebp
    8f92:	84 d2                	test   dl,dl
    8f94:	0f 84 7b 00 00 00    	je     insert_into_buffer_branch_8
    8f9a:	74 5c                	je     insert_into_buffer_branch_6
    8f9c:	8b 45 00             	mov    eax,DWORD PTR [ebp+0x0]
    8f9f:	8d 14 85 00 00 00 00 	lea    edx,[eax*4+0x0]
    8fa6:	29 c2                	sub    edx,eax
    8fa8:	01 d2                	add    edx,edx
    8faa:	8b 8a 5c 44 01 00    	mov    ecx,DWORD PTR [edx+@obj3:__lpSOSSampleList]                  ; fixup: num: 1016, src obj: 1, src ofs: 0x8fac, dst obj: 3, dst ofs: 0x1445c
    8fb0:	66 8b 9a 60 44 01 00 	mov    bx,WORD PTR [edx+@obj3:__lpSOSSampleList_variable_1]         ; fixup: num: 1015, src obj: 1, src ofs: 0x8fb3, dst obj: 3, dst ofs: 0x14460
    8fb7:	85 c9                	test   ecx,ecx
    8fb9:	75 05                	jne    insert_into_buffer_branch_4
    8fbb:	66 85 db             	test   bx,bx
    8fbe:	74 38                	je     insert_into_buffer_branch_6
insert_into_buffer_branch_4:
    8fc0:	8e aa 60 44 01 00    	mov    gs,WORD PTR [edx+@obj3:__lpSOSSampleList_variable_1]         ; fixup: num: 1014, src obj: 1, src ofs: 0x8fc2, dst obj: 3, dst ofs: 0x14460
    8fc6:	89 ca                	mov    edx,ecx
    8fc8:	0f bf 5d 08          	movsx  ebx,WORD PTR [ebp+0x8]
    8fcc:	65 0f bf 52 34       	movsx  edx,WORD PTR gs:[edx+0x34]
    8fd1:	39 d3                	cmp    ebx,edx
    8fd3:	75 23                	jne    insert_into_buffer_branch_6
    8fd5:	8b 1d ac a1 01 00    	mov    ebx,DWORD PTR ds:@obj3:the_sound_system_variable_1           ; fixup: num: 1013, src obj: 1, src ofs: 0x8fd7, dst obj: 3, dst ofs: 0x1a1ac
    8fdb:	89 c2                	mov    edx,eax
    8fdd:	89 d8                	mov    eax,ebx
    8fdf:	e8 0d cc 06 00       	call   sosDIGISampleDone_
    8fe4:	83 f8 01             	cmp    eax,0x1
    8fe7:	75 0b                	jne    insert_into_buffer_branch_5
    8fe9:	66 c7 45 08 00 00    	mov    WORD PTR [ebp+0x8],0x0
    8fef:	8a 45 08             	mov    al,BYTE PTR [ebp+0x8]
    8ff2:	eb 06                	jmp    insert_into_buffer_branch_7
insert_into_buffer_branch_5:
    8ff4:	b0 01                	mov    al,0x1
    8ff6:	eb 02                	jmp    insert_into_buffer_branch_7
insert_into_buffer_branch_6:
    8ff8:	30 c0                	xor    al,al
insert_into_buffer_branch_7:
    8ffa:	84 c0                	test   al,al
    8ffc:	74 17                	je     insert_into_buffer_branch_8
    8ffe:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 1012, src obj: 1, src ofs: 0x8fff, dst obj: 3, dst ofs: 0x1a1ac; fixup: num: 1187, src obj: 1, src ofs: 0x8fff, dst obj: 3, dst ofs: 0x1a1ac
    9003:	8b 16                	mov    edx,DWORD PTR [esi]
    9005:	e8 dc c6 06 00       	call   sosDIGIGetBytesProcessed_
    900a:	3d 00 ca 9a 3b       	cmp    eax,0x3b9aca00
    900f:	76 06                	jbe    insert_into_buffer_branch_9
    9011:	31 c0                	xor    eax,eax
    9013:	eb 02                	jmp    insert_into_buffer_branch_9
insert_into_buffer_branch_8:
    9015:	31 c0                	xor    eax,eax
insert_into_buffer_branch_9:
    9017:	8b 75 14             	mov    esi,DWORD PTR [ebp+0x14]
    901a:	31 d2                	xor    edx,edx
    901c:	f7 f6                	div    esi
    901e:	8b 45 04             	mov    eax,DWORD PTR [ebp+0x4]
    9021:	89 d3                	mov    ebx,edx
    9023:	39 c2                	cmp    edx,eax
    9025:	76 12                	jbe    insert_into_buffer_branch_10
    9027:	03 44 24 08          	add    eax,DWORD PTR [esp+0x8]
    902b:	39 d8                	cmp    eax,ebx
    902d:	72 0a                	jb     insert_into_buffer_branch_10
    902f:	30 c0                	xor    al,al
    9031:	83 c4 0c             	add    esp,0xc
    9034:	5d                   	pop    ebp
    9035:	5f                   	pop    edi
    9036:	5e                   	pop    esi
    9037:	59                   	pop    ecx
    9038:	c3                   	ret    
insert_into_buffer_branch_10:
    9039:	83 7d 04 00          	cmp    DWORD PTR [ebp+0x4],0x0
    903d:	0f 84 9c 00 00 00    	je     insert_into_buffer_branch_17
    9043:	a0 b4 a1 01 00       	mov    al,ds:@obj3:the_sound_system_variable_3                      ; fixup: num: 1186, src obj: 1, src ofs: 0x9044, dst obj: 3, dst ofs: 0x1a1b4
    9048:	89 e9                	mov    ecx,ebp
    904a:	84 c0                	test   al,al
    904c:	0f 84 7d 00 00 00    	je     insert_into_buffer_branch_15
    9052:	74 60                	je     insert_into_buffer_branch_14
    9054:	8b 45 00             	mov    eax,DWORD PTR [ebp+0x0]
    9057:	8d 14 85 00 00 00 00 	lea    edx,[eax*4+0x0]
    905e:	29 c2                	sub    edx,eax
    9060:	01 d2                	add    edx,edx
    9062:	83 ba 5c 44 01 00 00 	cmp    DWORD PTR [edx+@obj3:__lpSOSSampleList],0x0                  ; fixup: num: 1192, src obj: 1, src ofs: 0x9064, dst obj: 3, dst ofs: 0x1445c
    9069:	75 0a                	jne    insert_into_buffer_branch_11
    906b:	66 83 ba 60 44 01 00 00 	cmp    WORD PTR [edx+@obj3:__lpSOSSampleList_variable_1],0x0     ; fixup: num: 1191, src obj: 1, src ofs: 0x906e, dst obj: 3, dst ofs: 0x14460
    9073:	74 3d                	je     insert_into_buffer_branch_13
insert_into_buffer_branch_11:
    9075:	0f b5 92 5c 44 01 00 	lgs    edx,FWORD PTR [edx+@obj3:__lpSOSSampleList]                  ; fixup: num: 1190, src obj: 1, src ofs: 0x9078, dst obj: 3, dst ofs: 0x1445c
    907c:	65 0f bf 52 34       	movsx  edx,WORD PTR gs:[edx+0x34]
    9081:	89 14 24             	mov    DWORD PTR [esp],edx
    9084:	8b 34 24             	mov    esi,DWORD PTR [esp]
    9087:	0f bf 55 08          	movsx  edx,WORD PTR [ebp+0x8]
    908b:	39 f2                	cmp    edx,esi
    908d:	75 23                	jne    insert_into_buffer_branch_13
    908f:	8b 35 ac a1 01 00    	mov    esi,DWORD PTR ds:@obj3:the_sound_system_variable_1           ; fixup: num: 1189, src obj: 1, src ofs: 0x9091, dst obj: 3, dst ofs: 0x1a1ac
    9095:	89 c2                	mov    edx,eax
    9097:	89 f0                	mov    eax,esi
    9099:	e8 53 cb 06 00       	call   sosDIGISampleDone_
    909e:	83 f8 01             	cmp    eax,0x1
    90a1:	75 0b                	jne    insert_into_buffer_branch_12
    90a3:	66 c7 45 08 00 00    	mov    WORD PTR [ebp+0x8],0x0
    90a9:	8a 45 08             	mov    al,BYTE PTR [ebp+0x8]
    90ac:	eb 06                	jmp    insert_into_buffer_branch_14
insert_into_buffer_branch_12:
    90ae:	b0 01                	mov    al,0x1
    90b0:	eb 02                	jmp    insert_into_buffer_branch_14
insert_into_buffer_branch_13:
    90b2:	30 c0                	xor    al,al
insert_into_buffer_branch_14:
    90b4:	84 c0                	test   al,al
    90b6:	74 17                	je     insert_into_buffer_branch_15
    90b8:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 1188, src obj: 1, src ofs: 0x90b9, dst obj: 3, dst ofs: 0x1a1ac
    90bd:	8b 11                	mov    edx,DWORD PTR [ecx]
    90bf:	e8 22 c6 06 00       	call   sosDIGIGetBytesProcessed_
    90c4:	3d 00 ca 9a 3b       	cmp    eax,0x3b9aca00
    90c9:	76 06                	jbe    insert_into_buffer_branch_16
    90cb:	31 c0                	xor    eax,eax
    90cd:	eb 02                	jmp    insert_into_buffer_branch_16
insert_into_buffer_branch_15:
    90cf:	31 c0                	xor    eax,eax
insert_into_buffer_branch_16:
    90d1:	85 c0                	test   eax,eax
    90d3:	75 0a                	jne    insert_into_buffer_branch_17
    90d5:	30 c0                	xor    al,al
    90d7:	83 c4 0c             	add    esp,0xc
    90da:	5d                   	pop    ebp
    90db:	5f                   	pop    edi
    90dc:	5e                   	pop    esi
    90dd:	59                   	pop    ecx
    90de:	c3                   	ret    
insert_into_buffer_branch_17:
    90df:	3b 5d 04             	cmp    ebx,DWORD PTR [ebp+0x4]
    90e2:	0f 87 7d 00 00 00    	ja     insert_into_buffer_branch_22
    90e8:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
    90eb:	2b 45 04             	sub    eax,DWORD PTR [ebp+0x4]
    90ee:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
    90f2:	89 c2                	mov    edx,eax
    90f4:	39 c8                	cmp    eax,ecx
    90f6:	76 02                	jbe    insert_into_buffer_branch_18
    90f8:	89 ca                	mov    edx,ecx
insert_into_buffer_branch_18:
    90fa:	8b 74 24 08          	mov    esi,DWORD PTR [esp+0x8]
    90fe:	39 f2                	cmp    edx,esi
    9100:	73 13                	jae    insert_into_buffer_branch_19
    9102:	8d 43 ff             	lea    eax,[ebx-0x1]
    9105:	01 d0                	add    eax,edx
    9107:	39 f0                	cmp    eax,esi
    9109:	73 0a                	jae    insert_into_buffer_branch_19
    910b:	30 c0                	xor    al,al
    910d:	83 c4 0c             	add    esp,0xc
    9110:	5d                   	pop    ebp
    9111:	5f                   	pop    edi
    9112:	5e                   	pop    esi
    9113:	59                   	pop    ecx
    9114:	c3                   	ret    
insert_into_buffer_branch_19:
    9115:	8b 74 24 04          	mov    esi,DWORD PTR [esp+0x4]
    9119:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
    911c:	8b 45 04             	mov    eax,DWORD PTR [ebp+0x4]
    911f:	89 d1                	mov    ecx,edx
    9121:	01 c7                	add    edi,eax
    9123:	57                   	push   edi
    9124:	89 c8                	mov    eax,ecx
    9126:	c1 e9 02             	shr    ecx,0x2
    9129:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
    912b:	8a c8                	mov    cl,al
    912d:	80 e1 03             	and    cl,0x3
    9130:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
    9132:	5f                   	pop    edi
    9133:	8b 4d 04             	mov    ecx,DWORD PTR [ebp+0x4]
    9136:	01 d1                	add    ecx,edx
    9138:	8b 75 14             	mov    esi,DWORD PTR [ebp+0x14]
    913b:	89 4d 04             	mov    DWORD PTR [ebp+0x4],ecx
    913e:	39 f1                	cmp    ecx,esi
    9140:	72 07                	jb     insert_into_buffer_branch_20
    9142:	c7 45 04 00 00 00 00 	mov    DWORD PTR [ebp+0x4],0x0
insert_into_buffer_branch_20:
    9149:	8b 7c 24 08          	mov    edi,DWORD PTR [esp+0x8]
    914d:	39 fa                	cmp    edx,edi
    914f:	75 0a                	jne    insert_into_buffer_branch_21
    9151:	b0 01                	mov    al,0x1
    9153:	83 c4 0c             	add    esp,0xc
    9156:	5d                   	pop    ebp
    9157:	5f                   	pop    edi
    9158:	5e                   	pop    esi
    9159:	59                   	pop    ecx
    915a:	c3                   	ret    
insert_into_buffer_branch_21:
    915b:	89 f8                	mov    eax,edi
    915d:	29 d0                	sub    eax,edx
    915f:	89 d7                	mov    edi,edx
    9161:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
insert_into_buffer_branch_22:
    9165:	2b 5d 04             	sub    ebx,DWORD PTR [ebp+0x4]
    9168:	8d 53 ff             	lea    edx,[ebx-0x1]
    916b:	8b 5c 24 08          	mov    ebx,DWORD PTR [esp+0x8]
    916f:	39 da                	cmp    edx,ebx
    9171:	73 0a                	jae    insert_into_buffer_branch_23
    9173:	30 c0                	xor    al,al
    9175:	83 c4 0c             	add    esp,0xc
    9178:	5d                   	pop    ebp
    9179:	5f                   	pop    edi
    917a:	5e                   	pop    esi
    917b:	59                   	pop    ecx
    917c:	c3                   	ret    
insert_into_buffer_branch_23:
    917d:	76 02                	jbe    insert_into_buffer_branch_24
    917f:	89 da                	mov    edx,ebx
insert_into_buffer_branch_24:
    9181:	8b 74 24 04          	mov    esi,DWORD PTR [esp+0x4]
    9185:	8b 45 04             	mov    eax,DWORD PTR [ebp+0x4]
    9188:	01 fe                	add    esi,edi
    918a:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
    918d:	89 d1                	mov    ecx,edx
    918f:	01 c7                	add    edi,eax
    9191:	57                   	push   edi
    9192:	89 c8                	mov    eax,ecx
    9194:	c1 e9 02             	shr    ecx,0x2
    9197:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
    9199:	8a c8                	mov    cl,al
    919b:	80 e1 03             	and    cl,0x3
    919e:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
    91a0:	5f                   	pop    edi
    91a1:	8b 5d 04             	mov    ebx,DWORD PTR [ebp+0x4]
    91a4:	01 d3                	add    ebx,edx
    91a6:	b0 01                	mov    al,0x1
    91a8:	89 5d 04             	mov    DWORD PTR [ebp+0x4],ebx
insert_into_buffer_branch_25:
    91ab:	83 c4 0c             	add    esp,0xc
    91ae:	5d                   	pop    ebp
    91af:	5f                   	pop    edi
    91b0:	5e                   	pop    esi
    91b1:	59                   	pop    ecx
    91b2:	c3                   	ret    
    91b3:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    91b9:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
    91bf:	90                   	nop

;-------------------------------------------------
;  Function 'clear_buffer'                       -
;-------------------------------------------------
clear_buffer:
    91c0:	c7 40 04 00 00 00 00 	mov    DWORD PTR [eax+0x4],0x0
    91c7:	c3                   	ret    
    91c8:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    91ce:	8b d2                	mov    edx,edx

;-------------------------------------------------
;  Function 'load_from_file'                     -
;-------------------------------------------------
load_from_file:
    91d0:	53                   	push   ebx
    91d1:	51                   	push   ecx
    91d2:	56                   	push   esi
    91d3:	57                   	push   edi
    91d4:	55                   	push   ebp
    91d5:	83 ec 5c             	sub    esp,0x5c
    91d8:	89 44 24 58          	mov    DWORD PTR [esp+0x58],eax
    91dc:	89 d7                	mov    edi,edx
    91de:	c7 40 04 00 00 00 00 	mov    DWORD PTR [eax+0x4],0x0
    91e5:	89 c6                	mov    esi,eax
    91e7:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
    91ea:	85 c0                	test   eax,eax
    91ec:	0f 84 33 01 00 00    	je     load_from_file_branch_10
    91f2:	80 3d b4 a1 01 00 00 	cmp    BYTE PTR ds:@obj3:the_sound_system_variable_3,0x0            ; fixup: num: 1197, src obj: 1, src ofs: 0x91f4, dst obj: 3, dst ofs: 0x1a1b4
    91f9:	74 58                	je     load_from_file_branch_3
    91fb:	89 f2                	mov    edx,esi
    91fd:	8b 12                	mov    edx,DWORD PTR [edx]
    91ff:	8d 04 95 00 00 00 00 	lea    eax,[edx*4+0x0]
    9206:	29 d0                	sub    eax,edx
    9208:	01 c0                	add    eax,eax
    920a:	83 b8 5c 44 01 00 00 	cmp    DWORD PTR [eax+@obj3:__lpSOSSampleList],0x0                  ; fixup: num: 1196, src obj: 1, src ofs: 0x920c, dst obj: 3, dst ofs: 0x1445c
    9211:	75 0a                	jne    load_from_file_branch_1
    9213:	66 83 b8 60 44 01 00 00 	cmp    WORD PTR [eax+@obj3:__lpSOSSampleList_variable_1],0x0     ; fixup: num: 1195, src obj: 1, src ofs: 0x9216, dst obj: 3, dst ofs: 0x14460
    921b:	74 36                	je     load_from_file_branch_3
load_from_file_branch_1:
    921d:	89 f3                	mov    ebx,esi
    921f:	0f b5 80 5c 44 01 00 	lgs    eax,FWORD PTR [eax+@obj3:__lpSOSSampleList]                  ; fixup: num: 1194, src obj: 1, src ofs: 0x9222, dst obj: 3, dst ofs: 0x1445c
    9226:	0f bf 5b 08          	movsx  ebx,WORD PTR [ebx+0x8]
    922a:	65 0f bf 40 34       	movsx  eax,WORD PTR gs:[eax+0x34]
    922f:	39 c3                	cmp    ebx,eax
    9231:	75 20                	jne    load_from_file_branch_3
    9233:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 1193, src obj: 1, src ofs: 0x9234, dst obj: 3, dst ofs: 0x1a1ac
    9238:	e8 b4 c9 06 00       	call   sosDIGISampleDone_
    923d:	83 f8 01             	cmp    eax,0x1
    9240:	75 0d                	jne    load_from_file_branch_2
    9242:	89 f0                	mov    eax,esi
    9244:	66 c7 40 08 00 00    	mov    WORD PTR [eax+0x8],0x0
    924a:	8a 40 08             	mov    al,BYTE PTR [eax+0x8]
    924d:	eb 06                	jmp    load_from_file_branch_4
load_from_file_branch_2:
    924f:	b0 01                	mov    al,0x1
    9251:	eb 02                	jmp    load_from_file_branch_4
load_from_file_branch_3:
    9253:	30 c0                	xor    al,al
load_from_file_branch_4:
    9255:	84 c0                	test   al,al
    9257:	0f 84 92 00 00 00    	je     load_from_file_branch_9
    925d:	8a 15 b4 a1 01 00    	mov    dl,BYTE PTR ds:@obj3:the_sound_system_variable_3             ; fixup: num: 1204, src obj: 1, src ofs: 0x925f, dst obj: 3, dst ofs: 0x1a1b4
    9263:	89 f3                	mov    ebx,esi
    9265:	84 d2                	test   dl,dl
    9267:	0f 84 82 00 00 00    	je     load_from_file_branch_9
    926d:	74 52                	je     load_from_file_branch_7
    926f:	8b 16                	mov    edx,DWORD PTR [esi]
    9271:	8d 04 95 00 00 00 00 	lea    eax,[edx*4+0x0]
    9278:	29 d0                	sub    eax,edx
    927a:	01 c0                	add    eax,eax
    927c:	83 b8 5c 44 01 00 00 	cmp    DWORD PTR [eax+@obj3:__lpSOSSampleList],0x0                  ; fixup: num: 1203, src obj: 1, src ofs: 0x927e, dst obj: 3, dst ofs: 0x1445c
    9283:	75 0a                	jne    load_from_file_branch_5
    9285:	66 83 b8 60 44 01 00 00 	cmp    WORD PTR [eax+@obj3:__lpSOSSampleList_variable_1],0x0     ; fixup: num: 1202, src obj: 1, src ofs: 0x9288, dst obj: 3, dst ofs: 0x14460
    928d:	74 32                	je     load_from_file_branch_7
load_from_file_branch_5:
    928f:	0f b5 80 5c 44 01 00 	lgs    eax,FWORD PTR [eax+@obj3:__lpSOSSampleList]                  ; fixup: num: 1201, src obj: 1, src ofs: 0x9292, dst obj: 3, dst ofs: 0x1445c
    9296:	0f bf 4e 08          	movsx  ecx,WORD PTR [esi+0x8]
    929a:	65 0f bf 40 34       	movsx  eax,WORD PTR gs:[eax+0x34]
    929f:	39 c1                	cmp    ecx,eax
    92a1:	75 1e                	jne    load_from_file_branch_7
    92a3:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 1200, src obj: 1, src ofs: 0x92a4, dst obj: 3, dst ofs: 0x1a1ac
    92a8:	e8 44 c9 06 00       	call   sosDIGISampleDone_
    92ad:	83 f8 01             	cmp    eax,0x1
    92b0:	75 0b                	jne    load_from_file_branch_6
    92b2:	66 c7 46 08 00 00    	mov    WORD PTR [esi+0x8],0x0
    92b8:	8a 46 08             	mov    al,BYTE PTR [esi+0x8]
    92bb:	eb 06                	jmp    load_from_file_branch_8
load_from_file_branch_6:
    92bd:	b0 01                	mov    al,0x1
    92bf:	eb 02                	jmp    load_from_file_branch_8
load_from_file_branch_7:
    92c1:	30 c0                	xor    al,al
load_from_file_branch_8:
    92c3:	84 c0                	test   al,al
    92c5:	74 28                	je     load_from_file_branch_9
    92c7:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 1199, src obj: 1, src ofs: 0x92c8, dst obj: 3, dst ofs: 0x1a1ac
    92cc:	8b 13                	mov    edx,DWORD PTR [ebx]
    92ce:	66 c7 43 08 00 00    	mov    WORD PTR [ebx+0x8],0x0
    92d4:	e8 46 a2 06 00       	call   sosDIGIStopSample_
    92d9:	83 f8 0a             	cmp    eax,0xa
    92dc:	75 11                	jne    load_from_file_branch_9
    92de:	bb 69 0b 00 00       	mov    ebx,@obj3:sound_cpp_variable_32                              ; fixup: num: 1198, src obj: 1, src ofs: 0x92df, dst obj: 3, dst ofs: 0xb69
    92e3:	ba fd 02 00 00       	mov    edx,0x2fd
    92e8:	31 c0                	xor    eax,eax
    92ea:	e8 41 ed 02 00       	call   _error_report
load_from_file_branch_9:
    92ef:	8b 6e 14             	mov    ebp,DWORD PTR [esi+0x14]
    92f2:	55                   	push   ebp
    92f3:	8b 46 0c             	mov    eax,DWORD PTR [esi+0xc]
    92f6:	50                   	push   eax
    92f7:	e8 c5 77 06 00       	call   _D32Unlock
    92fc:	8b 56 0c             	mov    edx,DWORD PTR [esi+0xc]
    92ff:	66 8b 46 10          	mov    ax,WORD PTR [esi+0x10]
    9303:	83 ea 2c             	sub    edx,0x2c
    9306:	66 89 46 10          	mov    WORD PTR [esi+0x10],ax
    930a:	89 56 0c             	mov    DWORD PTR [esi+0xc],edx
    930d:	83 c4 08             	add    esp,0x8
    9310:	8b 46 0c             	mov    eax,DWORD PTR [esi+0xc]
    9313:	e8 d0 80 06 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
    9318:	66 c7 46 10 00 00    	mov    WORD PTR [esi+0x10],0x0
    931e:	c7 46 0c 00 00 00 00 	mov    DWORD PTR [esi+0xc],0x0
load_from_file_branch_10:
    9325:	b2 2e                	mov    dl,0x2e
    9327:	66 c7 46 08 00 00    	mov    WORD PTR [esi+0x8],0x0
    932d:	89 fe                	mov    esi,edi
load_from_file_branch_11:
    932f:	8a 06                	mov    al,BYTE PTR [esi]
    9331:	3a c2                	cmp    al,dl
    9333:	74 12                	je     load_from_file_branch_13
    9335:	3c 00                	cmp    al,0x0
    9337:	74 0c                	je     load_from_file_branch_12
    9339:	46                   	inc    esi
    933a:	8a 06                	mov    al,BYTE PTR [esi]
    933c:	3a c2                	cmp    al,dl
    933e:	74 07                	je     load_from_file_branch_13
    9340:	46                   	inc    esi
    9341:	3c 00                	cmp    al,0x0
    9343:	75 ea                	jne    load_from_file_branch_11
load_from_file_branch_12:
    9345:	2b f6                	sub    esi,esi
load_from_file_branch_13:
    9347:	ba 8c 0b 00 00       	mov    edx,@obj3:sound_cpp_variable_33                              ; fixup: num: 1208, src obj: 1, src ofs: 0x9348, dst obj: 3, dst ofs: 0xb8c
    934c:	89 f0                	mov    eax,esi
    934e:	e8 07 81 06 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
    9353:	85 c0                	test   eax,eax
    9355:	0f 85 e5 02 00 00    	jne    load_from_file_branch_22
    935b:	bb 65 03 00 00       	mov    ebx,0x365
    9360:	ba 91 0b 00 00       	mov    edx,@obj3:sound_cpp_variable_34                              ; fixup: num: 1207, src obj: 1, src ofs: 0x9361, dst obj: 3, dst ofs: 0xb91
    9365:	89 f8                	mov    eax,edi
    9367:	89 f9                	mov    ecx,edi
    9369:	e8 c2 51 00 00       	call   XFILE_open2
    936e:	89 44 24 54          	mov    DWORD PTR [esp+0x54],eax
    9372:	83 f8 ff             	cmp    eax,0xffffffff
    9375:	75 11                	jne    load_from_file_branch_14
    9377:	bb 9b 0b 00 00       	mov    ebx,@obj3:sound_cpp_variable_35                              ; fixup: num: 1206, src obj: 1, src ofs: 0x9378, dst obj: 3, dst ofs: 0xb9b
    937c:	ba 66 03 00 00       	mov    edx,0x366
    9381:	31 c0                	xor    eax,eax
    9383:	e8 a8 ec 02 00       	call   _error_report
load_from_file_branch_14:
    9388:	bb 0e 00 00 00       	mov    ebx,0xe
    938d:	89 c8                	mov    eax,ecx
    938f:	8d 54 24 30          	lea    edx,[esp+0x30]
    9393:	e8 e8 38 00 00       	call   XFILE_size
    9398:	68 6d 03 00 00       	push   0x36d
    939d:	83 e8 0e             	sub    eax,0xe
    93a0:	b9 b6 0b 00 00       	mov    ecx,@obj3:sound_cpp_variable_36                              ; fixup: num: 1205, src obj: 1, src ofs: 0x93a1, dst obj: 3, dst ofs: 0xbb6
    93a5:	89 44 24 54          	mov    DWORD PTR [esp+0x54],eax
    93a9:	8b 44 24 58          	mov    eax,DWORD PTR [esp+0x58]
    93ad:	e8 9e 53 00 00       	call   XFILE_read_chunk2
    93b2:	31 c0                	xor    eax,eax
    93b4:	8a 44 24 30          	mov    al,BYTE PTR [esp+0x30]
    93b8:	83 f8 46             	cmp    eax,0x46
    93bb:	75 21                	jne    load_from_file_branch_15
    93bd:	31 c0                	xor    eax,eax
    93bf:	8a 44 24 31          	mov    al,BYTE PTR [esp+0x31]
    93c3:	83 f8 43             	cmp    eax,0x43
    93c6:	75 16                	jne    load_from_file_branch_15
    93c8:	31 c0                	xor    eax,eax
    93ca:	8a 44 24 32          	mov    al,BYTE PTR [esp+0x32]
    93ce:	83 f8 4d             	cmp    eax,0x4d
    93d1:	75 0b                	jne    load_from_file_branch_15
    93d3:	31 c0                	xor    eax,eax
    93d5:	8a 44 24 33          	mov    al,BYTE PTR [esp+0x33]
    93d9:	83 f8 50             	cmp    eax,0x50
    93dc:	74 11                	je     load_from_file_branch_16
load_from_file_branch_15:
    93de:	bb c0 0b 00 00       	mov    ebx,@obj3:sound_cpp_variable_37                              ; fixup: num: 1210, src obj: 1, src ofs: 0x93df, dst obj: 3, dst ofs: 0xbc0
    93e3:	ba 72 03 00 00       	mov    edx,0x372
    93e8:	31 c0                	xor    eax,eax
    93ea:	e8 41 ec 02 00       	call   _error_report
load_from_file_branch_16:
    93ef:	b8 00 20 00 00       	mov    eax,0x2000
    93f4:	e8 9a 80 06 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
    93f9:	89 c7                	mov    edi,eax
    93fb:	85 c0                	test   eax,eax
    93fd:	75 0f                	jne    load_from_file_branch_17
    93ff:	bb f0 0b 00 00       	mov    ebx,@obj3:sound_cpp_variable_38                              ; fixup: num: 1209, src obj: 1, src ofs: 0x9400, dst obj: 3, dst ofs: 0xbf0
    9404:	ba 76 03 00 00       	mov    edx,0x376
    9409:	e8 22 ec 02 00       	call   _error_report
load_from_file_branch_17:
    940e:	68 00 20 00 00       	push   0x2000
    9413:	57                   	push   edi
    9414:	e8 de 76 06 00       	call   _D32Lock
    9419:	83 c4 08             	add    esp,0x8
    941c:	31 d2                	xor    edx,edx
    941e:	66 8b 54 24 3c       	mov    dx,WORD PTR [esp+0x3c]
    9423:	89 d0                	mov    eax,edx
    9425:	c1 fa 1f             	sar    edx,0x1f
    9428:	c1 e2 02             	shl    edx,0x2
    942b:	1b c2                	sbb    eax,edx
    942d:	c1 f8 02             	sar    eax,0x2
    9430:	8b 5c 24 50          	mov    ebx,DWORD PTR [esp+0x50]
    9434:	0f af c3             	imul   eax,ebx
    9437:	05 00 10 00 00       	add    eax,0x1000
    943c:	e8 52 80 06 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
    9441:	89 44 24 4c          	mov    DWORD PTR [esp+0x4c],eax
    9445:	89 c5                	mov    ebp,eax
    9447:	85 c0                	test   eax,eax
    9449:	75 40                	jne    load_from_file_branch_18
    944b:	31 d2                	xor    edx,edx
    944d:	66 8b 54 24 3c       	mov    dx,WORD PTR [esp+0x3c]
    9452:	89 d0                	mov    eax,edx
    9454:	c1 fa 1f             	sar    edx,0x1f
    9457:	c1 e2 02             	shl    edx,0x2
    945a:	1b c2                	sbb    eax,edx
    945c:	c1 f8 02             	sar    eax,0x2
    945f:	0f af c3             	imul   eax,ebx
    9462:	05 00 10 00 00       	add    eax,0x1000
    9467:	50                   	push   eax
    9468:	68 24 0c 00 00       	push   @obj3:sound_cpp_variable_39                                  ; fixup: num: 1213, src obj: 1, src ofs: 0x9469, dst obj: 3, dst ofs: 0xc24
    946d:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 1212, src obj: 1, src ofs: 0x946e, dst obj: 3, dst ofs: 0x237fc
    9472:	ba 7c 03 00 00       	mov    edx,0x37c
    9477:	e8 65 77 06 00       	call   sprintf_
    947c:	83 c4 0c             	add    esp,0xc
    947f:	bb fc 37 02 00       	mov    ebx,@obj3:log_buffer                                         ; fixup: num: 1211, src obj: 1, src ofs: 0x9480, dst obj: 3, dst ofs: 0x237fc
    9484:	31 c0                	xor    eax,eax
    9486:	e8 a5 eb 02 00       	call   _error_report
load_from_file_branch_18:
    948b:	31 d2                	xor    edx,edx
    948d:	66 8b 54 24 3c       	mov    dx,WORD PTR [esp+0x3c]
    9492:	89 d0                	mov    eax,edx
    9494:	c1 fa 1f             	sar    edx,0x1f
    9497:	c1 e2 02             	shl    edx,0x2
    949a:	1b c2                	sbb    eax,edx
    949c:	c1 f8 02             	sar    eax,0x2
    949f:	8b 74 24 50          	mov    esi,DWORD PTR [esp+0x50]
    94a3:	0f af c6             	imul   eax,esi
    94a6:	05 00 10 00 00       	add    eax,0x1000
    94ab:	50                   	push   eax
    94ac:	8b 44 24 50          	mov    eax,DWORD PTR [esp+0x50]
    94b0:	50                   	push   eax
    94b1:	e8 41 76 06 00       	call   _D32Lock
    94b6:	83 c4 08             	add    esp,0x8
    94b9:	31 d2                	xor    edx,edx
    94bb:	66 8b 54 24 3c       	mov    dx,WORD PTR [esp+0x3c]
    94c0:	89 d0                	mov    eax,edx
    94c2:	c1 fa 1f             	sar    edx,0x1f
    94c5:	c1 e2 02             	shl    edx,0x2
    94c8:	1b c2                	sbb    eax,edx
    94ca:	c1 f8 02             	sar    eax,0x2
    94cd:	0f af c6             	imul   eax,esi
    94d0:	89 f2                	mov    edx,esi
    94d2:	8d 98 00 10 00 00    	lea    ebx,[eax+0x1000]
    94d8:	31 f2                	xor    edx,esi
    94da:	8b 44 24 4c          	mov    eax,DWORD PTR [esp+0x4c]
    94de:	e8 ed 7e 06 00       	call   memset_
    94e3:	31 d2                	xor    edx,edx
    94e5:	66 8b 54 24 3c       	mov    dx,WORD PTR [esp+0x3c]
    94ea:	89 d0                	mov    eax,edx
    94ec:	c1 fa 1f             	sar    edx,0x1f
    94ef:	c1 e2 02             	shl    edx,0x2
    94f2:	1b c2                	sbb    eax,edx
    94f4:	c1 f8 02             	sar    eax,0x2
    94f7:	89 f2                	mov    edx,esi
    94f9:	0f af d0             	imul   edx,eax
    94fc:	8b 44 24 3c          	mov    eax,DWORD PTR [esp+0x3c]
    9500:	66 89 44 24 2c       	mov    WORD PTR [esp+0x2c],ax
    9505:	98                   	cwde   
    9506:	89 44 24 48          	mov    DWORD PTR [esp+0x48],eax
    950a:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
    950e:	89 44 24 44          	mov    DWORD PTR [esp+0x44],eax
    9512:	89 e0                	mov    eax,esp
    9514:	89 74 24 10          	mov    DWORD PTR [esp+0x10],esi
    9518:	50                   	push   eax
    9519:	89 54 24 18          	mov    DWORD PTR [esp+0x18],edx
    951d:	89 54 24 44          	mov    DWORD PTR [esp+0x44],edx
    9521:	e8 ba 6f 06 00       	call   _sosCODECInitStream
    9526:	83 c4 04             	add    esp,0x4
load_from_file_branch_19:
    9529:	68 8e 03 00 00       	push   0x38e
    952e:	b9 37 0c 00 00       	mov    ecx,@obj3:sound_cpp_variable_40                              ; fixup: num: 1214, src obj: 1, src ofs: 0x952f, dst obj: 3, dst ofs: 0xc37
    9533:	bb 00 20 00 00       	mov    ebx,0x2000
    9538:	8b 44 24 58          	mov    eax,DWORD PTR [esp+0x58]
    953c:	89 fa                	mov    edx,edi
    953e:	e8 0d 52 00 00       	call   XFILE_read_chunk2
    9543:	31 d2                	xor    edx,edx
    9545:	66 8b 54 24 3c       	mov    dx,WORD PTR [esp+0x3c]
    954a:	89 c6                	mov    esi,eax
    954c:	89 d0                	mov    eax,edx
    954e:	c1 fa 1f             	sar    edx,0x1f
    9551:	c1 e2 02             	shl    edx,0x2
    9554:	1b c2                	sbb    eax,edx
    9556:	c1 f8 02             	sar    eax,0x2
    9559:	0f af c6             	imul   eax,esi
    955c:	8c 5c 24 04          	mov    WORD PTR [esp+0x4],ds
    9560:	50                   	push   eax
    9561:	8d 44 24 04          	lea    eax,[esp+0x4]
    9565:	89 7c 24 04          	mov    DWORD PTR [esp+0x4],edi
    9569:	50                   	push   eax
    956a:	8c 5c 24 14          	mov    WORD PTR [esp+0x14],ds
    956e:	89 6c 24 10          	mov    DWORD PTR [esp+0x10],ebp
    9572:	e8 8e 6f 06 00       	call   _sosCODECDecompressData
    9577:	83 c4 08             	add    esp,0x8
    957a:	01 c5                	add    ebp,eax
    957c:	81 fe 00 20 00 00    	cmp    esi,0x2000
    9582:	74 a5                	je     load_from_file_branch_19
    9584:	8b 44 24 54          	mov    eax,DWORD PTR [esp+0x54]
    9588:	e8 83 51 00 00       	call   XFILE_close
    958d:	68 00 20 00 00       	push   0x2000
    9592:	57                   	push   edi
    9593:	e8 29 75 06 00       	call   _D32Unlock
    9598:	83 c4 08             	add    esp,0x8
    959b:	89 f8                	mov    eax,edi
    959d:	31 d2                	xor    edx,edx
    959f:	e8 44 7e 06 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
    95a4:	66 8b 54 24 3c       	mov    dx,WORD PTR [esp+0x3c]
    95a9:	89 d0                	mov    eax,edx
    95ab:	c1 fa 1f             	sar    edx,0x1f
    95ae:	c1 e2 02             	shl    edx,0x2
    95b1:	1b c2                	sbb    eax,edx
    95b3:	c1 f8 02             	sar    eax,0x2
    95b6:	0f af 44 24 50       	imul   eax,DWORD PTR [esp+0x50]
    95bb:	05 00 10 00 00       	add    eax,0x1000
    95c0:	50                   	push   eax
    95c1:	8b 4c 24 50          	mov    ecx,DWORD PTR [esp+0x50]
    95c5:	51                   	push   ecx
    95c6:	e8 f6 74 06 00       	call   _D32Unlock
    95cb:	83 c4 08             	add    esp,0x8
    95ce:	8b 74 24 4c          	mov    esi,DWORD PTR [esp+0x4c]
    95d2:	85 f6                	test   esi,esi
    95d4:	75 11                	jne    load_from_file_branch_20
    95d6:	bb 41 0c 00 00       	mov    ebx,@obj3:sound_cpp_variable_41                              ; fixup: num: 1218, src obj: 1, src ofs: 0x95d7, dst obj: 3, dst ofs: 0xc41
    95db:	ba 88 02 00 00       	mov    edx,0x288
    95e0:	31 c0                	xor    eax,eax
    95e2:	e8 49 ea 02 00       	call   _error_report
load_from_file_branch_20:
    95e7:	8b 4c 24 40          	mov    ecx,DWORD PTR [esp+0x40]
    95eb:	8b 5c 24 48          	mov    ebx,DWORD PTR [esp+0x48]
    95ef:	8b 54 24 44          	mov    edx,DWORD PTR [esp+0x44]
    95f3:	8b 44 24 58          	mov    eax,DWORD PTR [esp+0x58]
    95f7:	81 c1 00 08 00 00    	add    ecx,0x800
    95fd:	e8 ee f6 ff ff       	call   initialize_buffer
    9602:	8b 5c 24 40          	mov    ebx,DWORD PTR [esp+0x40]
    9606:	8b 44 24 58          	mov    eax,DWORD PTR [esp+0x58]
    960a:	8d 96 f4 01 00 00    	lea    edx,[esi+0x1f4]
    9610:	81 eb f4 01 00 00    	sub    ebx,0x1f4
    9616:	e8 25 f9 ff ff       	call   insert_into_buffer
    961b:	84 c0                	test   al,al
    961d:	75 11                	jne    load_from_file_branch_21
    961f:	bb 5f 0c 00 00       	mov    ebx,@obj3:sound_cpp_variable_42                              ; fixup: num: 1217, src obj: 1, src ofs: 0x9620, dst obj: 3, dst ofs: 0xc5f
    9624:	ba 8d 02 00 00       	mov    edx,0x28d
    9629:	31 c0                	xor    eax,eax
    962b:	e8 00 ea 02 00       	call   _error_report
load_from_file_branch_21:
    9630:	89 f0                	mov    eax,esi
    9632:	e8 b1 7d 06 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
    9637:	83 c4 5c             	add    esp,0x5c
    963a:	5d                   	pop    ebp
    963b:	5f                   	pop    edi
    963c:	5e                   	pop    esi
    963d:	59                   	pop    ecx
    963e:	5b                   	pop    ebx
    963f:	c3                   	ret    
load_from_file_branch_22:
    9640:	b9 93 02 00 00       	mov    ecx,0x293
    9645:	bb 83 0c 00 00       	mov    ebx,@obj3:sound_cpp_variable_43                              ; fixup: num: 1216, src obj: 1, src ofs: 0x9646, dst obj: 3, dst ofs: 0xc83
    964a:	89 f8                	mov    eax,edi
    964c:	31 d2                	xor    edx,edx
    964e:	e8 8d 37 00 00       	call   XFILE_read2
    9653:	8b 54 24 58          	mov    edx,DWORD PTR [esp+0x58]
    9657:	8c 5a 10             	mov    WORD PTR [edx+0x10],ds
    965a:	89 c6                	mov    esi,eax
    965c:	89 42 0c             	mov    DWORD PTR [edx+0xc],eax
    965f:	85 c0                	test   eax,eax
    9661:	75 0f                	jne    load_from_file_branch_23
    9663:	bb 8d 0c 00 00       	mov    ebx,@obj3:sound_cpp_variable_44                              ; fixup: num: 1215, src obj: 1, src ofs: 0x9664, dst obj: 3, dst ofs: 0xc8d
    9668:	ba 94 02 00 00       	mov    edx,0x294
    966d:	e8 be e9 02 00       	call   _error_report
load_from_file_branch_23:
    9672:	8b 54 24 58          	mov    edx,DWORD PTR [esp+0x58]
    9676:	8b 44 24 58          	mov    eax,DWORD PTR [esp+0x58]
    967a:	8b 5a 0c             	mov    ebx,DWORD PTR [edx+0xc]
    967d:	66 8b 40 10          	mov    ax,WORD PTR [eax+0x10]
    9681:	83 c3 2c             	add    ebx,0x2c
    9684:	66 89 42 10          	mov    WORD PTR [edx+0x10],ax
    9688:	31 c0                	xor    eax,eax
    968a:	89 5a 0c             	mov    DWORD PTR [edx+0xc],ebx
    968d:	8a 46 08             	mov    al,BYTE PTR [esi+0x8]
    9690:	83 f8 57             	cmp    eax,0x57
    9693:	75 1e                	jne    load_from_file_branch_24
    9695:	31 c0                	xor    eax,eax
    9697:	8a 46 09             	mov    al,BYTE PTR [esi+0x9]
    969a:	83 f8 41             	cmp    eax,0x41
    969d:	75 14                	jne    load_from_file_branch_24
    969f:	31 c0                	xor    eax,eax
    96a1:	8a 46 0a             	mov    al,BYTE PTR [esi+0xa]
    96a4:	83 f8 56             	cmp    eax,0x56
    96a7:	75 0a                	jne    load_from_file_branch_24
    96a9:	31 c0                	xor    eax,eax
    96ab:	8a 46 0b             	mov    al,BYTE PTR [esi+0xb]
    96ae:	83 f8 45             	cmp    eax,0x45
    96b1:	74 2d                	je     load_from_file_branch_25
load_from_file_branch_24:
    96b3:	57                   	push   edi
    96b4:	68 af 0c 00 00       	push   @obj3:sound_cpp_variable_45                                  ; fixup: num: 1222, src obj: 1, src ofs: 0x96b5, dst obj: 3, dst ofs: 0xcaf
    96b9:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 1221, src obj: 1, src ofs: 0x96ba, dst obj: 3, dst ofs: 0x237fc
    96be:	bb fc 37 02 00       	mov    ebx,@obj3:log_buffer                                         ; fixup: num: 1220, src obj: 1, src ofs: 0x96bf, dst obj: 3, dst ofs: 0x237fc
    96c3:	e8 19 75 06 00       	call   sprintf_
    96c8:	83 c4 0c             	add    esp,0xc
    96cb:	ba 99 02 00 00       	mov    edx,0x299
    96d0:	31 c0                	xor    eax,eax
    96d2:	e8 59 e9 02 00       	call   _error_report
    96d7:	83 c4 5c             	add    esp,0x5c
    96da:	5d                   	pop    ebp
    96db:	5f                   	pop    edi
    96dc:	5e                   	pop    esi
    96dd:	59                   	pop    ecx
    96de:	5b                   	pop    ebx
    96df:	c3                   	ret    
load_from_file_branch_25:
    96e0:	8b 46 28             	mov    eax,DWORD PTR [esi+0x28]
    96e3:	89 42 14             	mov    DWORD PTR [edx+0x14],eax
    96e6:	89 d0                	mov    eax,edx
    96e8:	c7 42 34 00 01 00 00 	mov    DWORD PTR [edx+0x34],0x100
    96ef:	31 d0                	xor    eax,edx
    96f1:	66 8b 46 22          	mov    ax,WORD PTR [esi+0x22]
    96f5:	89 82 84 00 00 00    	mov    DWORD PTR [edx+0x84],eax
    96fb:	31 c0                	xor    eax,eax
    96fd:	66 8b 46 22          	mov    ax,WORD PTR [esi+0x22]
    9701:	83 f8 08             	cmp    eax,0x8
    9704:	75 0f                	jne    load_from_file_branch_26
    9706:	83 3d b0 a1 01 00 10 	cmp    DWORD PTR ds:@obj3:the_sound_system_variable_2,0x10          ; fixup: num: 1219, src obj: 1, src ofs: 0x9708, dst obj: 3, dst ofs: 0x1a1b0
    970d:	75 06                	jne    load_from_file_branch_26
    970f:	80 4a 34 20          	or     BYTE PTR [edx+0x34],0x20
    9713:	eb 1c                	jmp    load_from_file_branch_27
load_from_file_branch_26:
    9715:	31 c0                	xor    eax,eax
    9717:	66 8b 46 22          	mov    ax,WORD PTR [esi+0x22]
    971b:	83 f8 10             	cmp    eax,0x10
    971e:	75 11                	jne    load_from_file_branch_27
    9720:	83 3d b0 a1 01 00 08 	cmp    DWORD PTR ds:@obj3:the_sound_system_variable_2,0x8           ; fixup: num: 1226, src obj: 1, src ofs: 0x9722, dst obj: 3, dst ofs: 0x1a1b0
    9727:	75 08                	jne    load_from_file_branch_27
    9729:	8b 44 24 58          	mov    eax,DWORD PTR [esp+0x58]
    972d:	80 48 34 80          	or     BYTE PTR [eax+0x34],0x80
load_from_file_branch_27:
    9731:	8b 54 24 58          	mov    edx,DWORD PTR [esp+0x58]
    9735:	8b 46 18             	mov    eax,DWORD PTR [esi+0x18]
    9738:	89 82 80 00 00 00    	mov    DWORD PTR [edx+0x80],eax
    973e:	3d 11 2b 00 00       	cmp    eax,0x2b11
    9743:	75 12                	jne    load_from_file_branch_28
    9745:	8a 6a 35             	mov    ch,BYTE PTR [edx+0x35]
    9748:	c7 42 44 00 80 00 00 	mov    DWORD PTR [edx+0x44],0x8000
    974f:	80 cd 04             	or     ch,0x4
    9752:	88 6a 35             	mov    BYTE PTR [edx+0x35],ch
    9755:	eb 17                	jmp    load_from_file_branch_29
load_from_file_branch_28:
    9757:	3d 44 ac 00 00       	cmp    eax,0xac44
    975c:	75 10                	jne    load_from_file_branch_29
    975e:	8a 4a 35             	mov    cl,BYTE PTR [edx+0x35]
    9761:	c7 42 44 00 00 02 00 	mov    DWORD PTR [edx+0x44],0x20000
    9768:	80 c9 04             	or     cl,0x4
    976b:	88 4a 35             	mov    BYTE PTR [edx+0x35],cl
load_from_file_branch_29:
    976e:	8b 44 24 58          	mov    eax,DWORD PTR [esp+0x58]
    9772:	8b 50 14             	mov    edx,DWORD PTR [eax+0x14]
    9775:	52                   	push   edx
    9776:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
    9779:	50                   	push   eax
    977a:	e8 78 73 06 00       	call   _D32Lock
    977f:	83 c4 08             	add    esp,0x8
    9782:	83 c4 5c             	add    esp,0x5c
    9785:	5d                   	pop    ebp
    9786:	5f                   	pop    edi
    9787:	5e                   	pop    esi
    9788:	59                   	pop    ecx
    9789:	5b                   	pop    ebx
    978a:	c3                   	ret    
    978b:	8d 40 00             	lea    eax,[eax+0x0]
    978e:	8b c9                	mov    ecx,ecx

;-------------------------------------------------
;  Function 'write_to_file'                      -
;-------------------------------------------------
write_to_file:
    9790:	53                   	push   ebx
    9791:	51                   	push   ecx
    9792:	56                   	push   esi
    9793:	89 d6                	mov    esi,edx
    9795:	8b 58 14             	mov    ebx,DWORD PTR [eax+0x14]
    9798:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
    979b:	31 c9                	xor    ecx,ecx
    979d:	83 c3 2c             	add    ebx,0x2c
    97a0:	83 ea 2c             	sub    edx,0x2c
    97a3:	89 f0                	mov    eax,esi
    97a5:	e8 d6 3a 00 00       	call   XFILE_write
    97aa:	5e                   	pop    esi
    97ab:	59                   	pop    ecx
    97ac:	5b                   	pop    ebx
    97ad:	c3                   	ret    
    97ae:	8b c0                	mov    eax,eax

;-------------------------------------------------
;  Function 'play'                               -
;-------------------------------------------------
play:
    97b0:	53                   	push   ebx
    97b1:	51                   	push   ecx
    97b2:	52                   	push   edx
    97b3:	56                   	push   esi
    97b4:	89 c6                	mov    esi,eax
    97b6:	80 3d b4 a1 01 00 00 	cmp    BYTE PTR ds:@obj3:the_sound_system_variable_3,0x0            ; fixup: num: 1225, src obj: 1, src ofs: 0x97b8, dst obj: 3, dst ofs: 0x1a1b4
    97bd:	74 58                	je     play_branch_2
    97bf:	8b 15 d4 2c 01 00    	mov    edx,DWORD PTR ds:@obj3:id_counter                            ; fixup: num: 1224, src obj: 1, src ofs: 0x97c1, dst obj: 3, dst ofs: 0x12cd4
    97c5:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 1223, src obj: 1, src ofs: 0x97c6, dst obj: 3, dst ofs: 0x1a1ac
    97ca:	8d 5e 0c             	lea    ebx,[esi+0xc]
    97cd:	42                   	inc    edx
    97ce:	8c d9                	mov    ecx,ds
    97d0:	89 15 d4 2c 01 00    	mov    DWORD PTR ds:@obj3:id_counter,edx                            ; fixup: num: 1234, src obj: 1, src ofs: 0x97d2, dst obj: 3, dst ofs: 0x12cd4
    97d6:	e8 2b 97 06 00       	call   sosDIGIStartSample_
    97db:	89 06                	mov    DWORD PTR [esi],eax
    97dd:	83 f8 ff             	cmp    eax,0xffffffff
    97e0:	75 13                	jne    play_branch_1
    97e2:	e8 22 c5 06 00       	call   sosGetErrorString_
    97e7:	ba da 02 00 00       	mov    edx,0x2da
    97ec:	89 c3                	mov    ebx,eax
    97ee:	31 c0                	xor    eax,eax
    97f0:	e8 3b e8 02 00       	call   _error_report
play_branch_1:
    97f5:	8b 1e                	mov    ebx,DWORD PTR [esi]
    97f7:	8d 04 9d 00 00 00 00 	lea    eax,[ebx*4+0x0]
    97fe:	29 d8                	sub    eax,ebx
    9800:	0f b5 1c 45 5c 44 01 00 	lgs    ebx,FWORD PTR [eax*2+@obj3:__lpSOSSampleList]             ; fixup: num: 1233, src obj: 1, src ofs: 0x9804, dst obj: 3, dst ofs: 0x1445c
    9808:	66 a1 d4 2c 01 00    	mov    ax,ds:@obj3:id_counter                                       ; fixup: num: 1232, src obj: 1, src ofs: 0x980a, dst obj: 3, dst ofs: 0x12cd4
    980e:	66 65 89 43 34       	mov    WORD PTR gs:[ebx+0x34],ax
    9813:	66 89 46 08          	mov    WORD PTR [esi+0x8],ax
play_branch_2:
    9817:	5e                   	pop    esi
    9818:	5a                   	pop    edx
    9819:	59                   	pop    ecx
    981a:	5b                   	pop    ebx
    981b:	c3                   	ret    
    981c:	8d 44 20 00          	lea    eax,[eax+eiz*1+0x0]

;-------------------------------------------------
;  Function 'set_loop_count'                     -
;-------------------------------------------------
set_loop_count:
    9820:	80 3d b4 a1 01 00 00 	cmp    BYTE PTR ds:@obj3:the_sound_system_variable_3,0x0            ; fixup: num: 1231, src obj: 1, src ofs: 0x9822, dst obj: 3, dst ofs: 0x1a1b4
    9827:	74 0b                	je     set_loop_count_branch_1
    9829:	89 50 18             	mov    DWORD PTR [eax+0x18],edx
    982c:	85 d2                	test   edx,edx
    982e:	74 04                	je     set_loop_count_branch_1
    9830:	80 48 35 40          	or     BYTE PTR [eax+0x35],0x40
set_loop_count_branch_1:
    9834:	c3                   	ret    
    9835:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    983b:	8d 52 00             	lea    edx,[edx+0x0]
    983e:	8b db                	mov    ebx,ebx

;-------------------------------------------------
;  Function 'stop'                               -
;-------------------------------------------------
stop:
    9840:	53                   	push   ebx
    9841:	51                   	push   ecx
    9842:	52                   	push   edx
    9843:	89 c3                	mov    ebx,eax
    9845:	8a 25 b4 a1 01 00    	mov    ah,BYTE PTR ds:@obj3:the_sound_system_variable_3             ; fixup: num: 1230, src obj: 1, src ofs: 0x9847, dst obj: 3, dst ofs: 0x1a1b4
    984b:	84 e4                	test   ah,ah
    984d:	0f 84 82 00 00 00    	je     stop_branch_5
    9853:	74 52                	je     stop_branch_3
    9855:	8b 13                	mov    edx,DWORD PTR [ebx]
    9857:	8d 04 95 00 00 00 00 	lea    eax,[edx*4+0x0]
    985e:	29 d0                	sub    eax,edx
    9860:	01 c0                	add    eax,eax
    9862:	83 b8 5c 44 01 00 00 	cmp    DWORD PTR [eax+@obj3:__lpSOSSampleList],0x0                  ; fixup: num: 1229, src obj: 1, src ofs: 0x9864, dst obj: 3, dst ofs: 0x1445c
    9869:	75 0a                	jne    stop_branch_1
    986b:	66 83 b8 60 44 01 00 00 	cmp    WORD PTR [eax+@obj3:__lpSOSSampleList_variable_1],0x0     ; fixup: num: 1228, src obj: 1, src ofs: 0x986e, dst obj: 3, dst ofs: 0x14460
    9873:	74 32                	je     stop_branch_3
stop_branch_1:
    9875:	0f b5 80 5c 44 01 00 	lgs    eax,FWORD PTR [eax+@obj3:__lpSOSSampleList]                  ; fixup: num: 1227, src obj: 1, src ofs: 0x9878, dst obj: 3, dst ofs: 0x1445c
    987c:	0f bf 4b 08          	movsx  ecx,WORD PTR [ebx+0x8]
    9880:	65 0f bf 40 34       	movsx  eax,WORD PTR gs:[eax+0x34]
    9885:	39 c1                	cmp    ecx,eax
    9887:	75 1e                	jne    stop_branch_3
    9889:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 1242, src obj: 1, src ofs: 0x988a, dst obj: 3, dst ofs: 0x1a1ac
    988e:	e8 5e c3 06 00       	call   sosDIGISampleDone_
    9893:	83 f8 01             	cmp    eax,0x1
    9896:	75 0b                	jne    stop_branch_2
    9898:	66 c7 43 08 00 00    	mov    WORD PTR [ebx+0x8],0x0
    989e:	8a 43 08             	mov    al,BYTE PTR [ebx+0x8]
    98a1:	eb 06                	jmp    stop_branch_4
stop_branch_2:
    98a3:	b0 01                	mov    al,0x1
    98a5:	eb 02                	jmp    stop_branch_4
stop_branch_3:
    98a7:	30 c0                	xor    al,al
stop_branch_4:
    98a9:	84 c0                	test   al,al
    98ab:	74 28                	je     stop_branch_5
    98ad:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 1241, src obj: 1, src ofs: 0x98ae, dst obj: 3, dst ofs: 0x1a1ac
    98b2:	8b 13                	mov    edx,DWORD PTR [ebx]
    98b4:	66 c7 43 08 00 00    	mov    WORD PTR [ebx+0x8],0x0
    98ba:	e8 60 9c 06 00       	call   sosDIGIStopSample_
    98bf:	83 f8 0a             	cmp    eax,0xa
    98c2:	75 11                	jne    stop_branch_5
    98c4:	bb 69 0b 00 00       	mov    ebx,@obj3:sound_cpp_variable_32                              ; fixup: num: 1240, src obj: 1, src ofs: 0x98c5, dst obj: 3, dst ofs: 0xb69
    98c9:	ba fd 02 00 00       	mov    edx,0x2fd
    98ce:	31 c0                	xor    eax,eax
    98d0:	e8 5b e7 02 00       	call   _error_report
stop_branch_5:
    98d5:	5a                   	pop    edx
    98d6:	59                   	pop    ecx
    98d7:	5b                   	pop    ebx
    98d8:	c3                   	ret    
    98d9:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    98df:	90                   	nop

;-------------------------------------------------
;  Function 'playing'                            -
;-------------------------------------------------
playing:
    98e0:	53                   	push   ebx
    98e1:	51                   	push   ecx
    98e2:	52                   	push   edx
    98e3:	89 c3                	mov    ebx,eax
    98e5:	80 3d b4 a1 01 00 00 	cmp    BYTE PTR ds:@obj3:the_sound_system_variable_3,0x0            ; fixup: num: 1239, src obj: 1, src ofs: 0x98e7, dst obj: 3, dst ofs: 0x1a1b4
    98ec:	74 56                	je     playing_branch_3
    98ee:	8b 13                	mov    edx,DWORD PTR [ebx]
    98f0:	8d 04 95 00 00 00 00 	lea    eax,[edx*4+0x0]
    98f7:	29 d0                	sub    eax,edx
    98f9:	01 c0                	add    eax,eax
    98fb:	83 b8 5c 44 01 00 00 	cmp    DWORD PTR [eax+@obj3:__lpSOSSampleList],0x0                  ; fixup: num: 1238, src obj: 1, src ofs: 0x98fd, dst obj: 3, dst ofs: 0x1445c
    9902:	75 0a                	jne    playing_branch_1
    9904:	66 83 b8 60 44 01 00 00 	cmp    WORD PTR [eax+@obj3:__lpSOSSampleList_variable_1],0x0     ; fixup: num: 1237, src obj: 1, src ofs: 0x9907, dst obj: 3, dst ofs: 0x14460
    990c:	74 36                	je     playing_branch_3
playing_branch_1:
    990e:	0f b5 80 5c 44 01 00 	lgs    eax,FWORD PTR [eax+@obj3:__lpSOSSampleList]                  ; fixup: num: 1236, src obj: 1, src ofs: 0x9911, dst obj: 3, dst ofs: 0x1445c
    9915:	65 0f bf 48 34       	movsx  ecx,WORD PTR gs:[eax+0x34]
    991a:	0f bf 43 08          	movsx  eax,WORD PTR [ebx+0x8]
    991e:	39 c8                	cmp    eax,ecx
    9920:	75 22                	jne    playing_branch_3
    9922:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 1235, src obj: 1, src ofs: 0x9923, dst obj: 3, dst ofs: 0x1a1ac
    9927:	e8 c5 c2 06 00       	call   sosDIGISampleDone_
    992c:	83 f8 01             	cmp    eax,0x1
    992f:	75 0d                	jne    playing_branch_2
    9931:	66 c7 43 08 00 00    	mov    WORD PTR [ebx+0x8],0x0
    9937:	8a 43 08             	mov    al,BYTE PTR [ebx+0x8]
    993a:	5a                   	pop    edx
    993b:	59                   	pop    ecx
    993c:	5b                   	pop    ebx
    993d:	c3                   	ret    
playing_branch_2:
    993e:	b0 01                	mov    al,0x1
    9940:	5a                   	pop    edx
    9941:	59                   	pop    ecx
    9942:	5b                   	pop    ebx
    9943:	c3                   	ret    
playing_branch_3:
    9944:	30 c0                	xor    al,al
    9946:	5a                   	pop    edx
    9947:	59                   	pop    ecx
    9948:	5b                   	pop    ebx
    9949:	c3                   	ret    
    994a:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'set_volume'                         -
;-------------------------------------------------
set_volume:
    9950:	53                   	push   ebx
    9951:	51                   	push   ecx
    9952:	56                   	push   esi
    9953:	89 c3                	mov    ebx,eax
    9955:	89 d1                	mov    ecx,edx
    9957:	31 c0                	xor    eax,eax
    9959:	66 89 d0             	mov    ax,dx
    995c:	89 43 20             	mov    DWORD PTR [ebx+0x20],eax
    995f:	8a 63 35             	mov    ah,BYTE PTR [ebx+0x35]
    9962:	80 cc 01             	or     ah,0x1
    9965:	8a 15 b4 a1 01 00    	mov    dl,BYTE PTR ds:@obj3:the_sound_system_variable_3             ; fixup: num: 1138, src obj: 1, src ofs: 0x9967, dst obj: 3, dst ofs: 0x1a1b4
    996b:	88 63 35             	mov    BYTE PTR [ebx+0x35],ah
    996e:	84 d2                	test   dl,dl
    9970:	75 04                	jne    set_volume_branch_1
    9972:	30 c8                	xor    al,cl
    9974:	eb 54                	jmp    set_volume_branch_5
set_volume_branch_1:
    9976:	8b 13                	mov    edx,DWORD PTR [ebx]
    9978:	8d 04 95 00 00 00 00 	lea    eax,[edx*4+0x0]
    997f:	29 d0                	sub    eax,edx
    9981:	01 c0                	add    eax,eax
    9983:	83 b8 5c 44 01 00 00 	cmp    DWORD PTR [eax+@obj3:__lpSOSSampleList],0x0                  ; fixup: num: 1137, src obj: 1, src ofs: 0x9985, dst obj: 3, dst ofs: 0x1445c
    998a:	75 0a                	jne    set_volume_branch_2
    998c:	66 83 b8 60 44 01 00 00 	cmp    WORD PTR [eax+@obj3:__lpSOSSampleList_variable_1],0x0     ; fixup: num: 1136, src obj: 1, src ofs: 0x998f, dst obj: 3, dst ofs: 0x14460
    9994:	74 32                	je     set_volume_branch_4
set_volume_branch_2:
    9996:	0f b5 b0 5c 44 01 00 	lgs    esi,FWORD PTR [eax+@obj3:__lpSOSSampleList]                  ; fixup: num: 1245, src obj: 1, src ofs: 0x9999, dst obj: 3, dst ofs: 0x1445c
    999d:	65 0f bf 76 34       	movsx  esi,WORD PTR gs:[esi+0x34]
    99a2:	0f bf 43 08          	movsx  eax,WORD PTR [ebx+0x8]
    99a6:	39 f0                	cmp    eax,esi
    99a8:	75 1e                	jne    set_volume_branch_4
    99aa:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 1244, src obj: 1, src ofs: 0x99ab, dst obj: 3, dst ofs: 0x1a1ac
    99af:	e8 3d c2 06 00       	call   sosDIGISampleDone_
    99b4:	83 f8 01             	cmp    eax,0x1
    99b7:	75 0b                	jne    set_volume_branch_3
    99b9:	66 c7 43 08 00 00    	mov    WORD PTR [ebx+0x8],0x0
    99bf:	8a 43 08             	mov    al,BYTE PTR [ebx+0x8]
    99c2:	eb 06                	jmp    set_volume_branch_5
set_volume_branch_3:
    99c4:	b0 01                	mov    al,0x1
    99c6:	eb 02                	jmp    set_volume_branch_5
set_volume_branch_4:
    99c8:	30 c0                	xor    al,al
set_volume_branch_5:
    99ca:	84 c0                	test   al,al
    99cc:	74 16                	je     set_volume_branch_6
    99ce:	31 c0                	xor    eax,eax
    99d0:	8b 13                	mov    edx,DWORD PTR [ebx]
    99d2:	66 89 c8             	mov    ax,cx
    99d5:	8b 0d ac a1 01 00    	mov    ecx,DWORD PTR ds:@obj3:the_sound_system_variable_1           ; fixup: num: 1243, src obj: 1, src ofs: 0x99d7, dst obj: 3, dst ofs: 0x1a1ac
    99db:	89 c3                	mov    ebx,eax
    99dd:	89 c8                	mov    eax,ecx
    99df:	e8 2c bb 06 00       	call   sosDIGISetSampleVolume_
set_volume_branch_6:
    99e4:	5e                   	pop    esi
    99e5:	59                   	pop    ecx
    99e6:	5b                   	pop    ebx
    99e7:	c3                   	ret    
    99e8:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    99ee:	8b d2                	mov    edx,edx

;-------------------------------------------------
;  Function 'get_bytes_processed'                -
;-------------------------------------------------
get_bytes_processed:
    99f0:	53                   	push   ebx
    99f1:	51                   	push   ecx
    99f2:	52                   	push   edx
    99f3:	89 c3                	mov    ebx,eax
    99f5:	8a 25 b4 a1 01 00    	mov    ah,BYTE PTR ds:@obj3:the_sound_system_variable_3             ; fixup: num: 1144, src obj: 1, src ofs: 0x99f7, dst obj: 3, dst ofs: 0x1a1b4
    99fb:	84 e4                	test   ah,ah
    99fd:	0f 84 73 00 00 00    	je     get_bytes_processed_branch_5
    9a03:	74 52                	je     get_bytes_processed_branch_3
    9a05:	8b 13                	mov    edx,DWORD PTR [ebx]
    9a07:	8d 04 95 00 00 00 00 	lea    eax,[edx*4+0x0]
    9a0e:	29 d0                	sub    eax,edx
    9a10:	01 c0                	add    eax,eax
    9a12:	83 b8 5c 44 01 00 00 	cmp    DWORD PTR [eax+@obj3:__lpSOSSampleList],0x0                  ; fixup: num: 1143, src obj: 1, src ofs: 0x9a14, dst obj: 3, dst ofs: 0x1445c
    9a19:	75 0a                	jne    get_bytes_processed_branch_1
    9a1b:	66 83 b8 60 44 01 00 00 	cmp    WORD PTR [eax+@obj3:__lpSOSSampleList_variable_1],0x0     ; fixup: num: 1142, src obj: 1, src ofs: 0x9a1e, dst obj: 3, dst ofs: 0x14460
    9a23:	74 32                	je     get_bytes_processed_branch_3
get_bytes_processed_branch_1:
    9a25:	0f b5 80 5c 44 01 00 	lgs    eax,FWORD PTR [eax+@obj3:__lpSOSSampleList]                  ; fixup: num: 1141, src obj: 1, src ofs: 0x9a28, dst obj: 3, dst ofs: 0x1445c
    9a2c:	65 0f bf 48 34       	movsx  ecx,WORD PTR gs:[eax+0x34]
    9a31:	0f bf 43 08          	movsx  eax,WORD PTR [ebx+0x8]
    9a35:	39 c8                	cmp    eax,ecx
    9a37:	75 1e                	jne    get_bytes_processed_branch_3
    9a39:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 1140, src obj: 1, src ofs: 0x9a3a, dst obj: 3, dst ofs: 0x1a1ac
    9a3e:	e8 ae c1 06 00       	call   sosDIGISampleDone_
    9a43:	83 f8 01             	cmp    eax,0x1
    9a46:	75 0b                	jne    get_bytes_processed_branch_2
    9a48:	66 c7 43 08 00 00    	mov    WORD PTR [ebx+0x8],0x0
    9a4e:	8a 43 08             	mov    al,BYTE PTR [ebx+0x8]
    9a51:	eb 06                	jmp    get_bytes_processed_branch_4
get_bytes_processed_branch_2:
    9a53:	b0 01                	mov    al,0x1
    9a55:	eb 02                	jmp    get_bytes_processed_branch_4
get_bytes_processed_branch_3:
    9a57:	30 c0                	xor    al,al
get_bytes_processed_branch_4:
    9a59:	84 c0                	test   al,al
    9a5b:	74 19                	je     get_bytes_processed_branch_5
    9a5d:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 1139, src obj: 1, src ofs: 0x9a5e, dst obj: 3, dst ofs: 0x1a1ac
    9a62:	8b 13                	mov    edx,DWORD PTR [ebx]
    9a64:	e8 7d bc 06 00       	call   sosDIGIGetBytesProcessed_
    9a69:	3d 00 ca 9a 3b       	cmp    eax,0x3b9aca00
    9a6e:	76 08                	jbe    get_bytes_processed_branch_6
    9a70:	31 c0                	xor    eax,eax
    9a72:	5a                   	pop    edx
    9a73:	59                   	pop    ecx
    9a74:	5b                   	pop    ebx
    9a75:	c3                   	ret    
get_bytes_processed_branch_5:
    9a76:	31 c0                	xor    eax,eax
get_bytes_processed_branch_6:
    9a78:	5a                   	pop    edx
    9a79:	59                   	pop    ecx
    9a7a:	5b                   	pop    ebx
    9a7b:	c3                   	ret    
    9a7c:	8d 44 20 00          	lea    eax,[eax+eiz*1+0x0]

;-------------------------------------------------
;  Function 'is_blank_space'                     -
;-------------------------------------------------
is_blank_space:
    9a80:	53                   	push   ebx
    9a81:	51                   	push   ecx
    9a82:	56                   	push   esi
    9a83:	57                   	push   edi
    9a84:	55                   	push   ebp
    9a85:	89 c3                	mov    ebx,eax
    9a87:	80 3d b4 a1 01 00 00 	cmp    BYTE PTR ds:@obj3:the_sound_system_variable_3,0x0            ; fixup: num: 1151, src obj: 1, src ofs: 0x9a89, dst obj: 3, dst ofs: 0x1a1b4
    9a8e:	0f 84 d7 00 00 00    	je     is_blank_space_branch_12
    9a94:	8b 83 80 00 00 00    	mov    eax,DWORD PTR [ebx+0x80]
    9a9a:	0f af c2             	imul   eax,edx
    9a9d:	b9 64 00 00 00       	mov    ecx,0x64
    9aa2:	31 d2                	xor    edx,edx
    9aa4:	f7 f1                	div    ecx
    9aa6:	8b 93 84 00 00 00    	mov    edx,DWORD PTR [ebx+0x84]
    9aac:	89 c1                	mov    ecx,eax
    9aae:	83 fa 10             	cmp    edx,0x10
    9ab1:	75 05                	jne    is_blank_space_branch_1
    9ab3:	8d 0c 00             	lea    ecx,[eax+eax*1]
    9ab6:	eb 07                	jmp    is_blank_space_branch_2
is_blank_space_branch_1:
    9ab8:	83 fa 08             	cmp    edx,0x8
    9abb:	75 02                	jne    is_blank_space_branch_2
    9abd:	d1 e9                	shr    ecx,1
is_blank_space_branch_2:
    9abf:	8a 15 b4 a1 01 00    	mov    dl,BYTE PTR ds:@obj3:the_sound_system_variable_3             ; fixup: num: 1150, src obj: 1, src ofs: 0x9ac1, dst obj: 3, dst ofs: 0x1a1b4
    9ac5:	89 df                	mov    edi,ebx
    9ac7:	84 d2                	test   dl,dl
    9ac9:	0f 84 75 00 00 00    	je     is_blank_space_branch_7
    9acf:	74 56                	je     is_blank_space_branch_5
    9ad1:	8b 13                	mov    edx,DWORD PTR [ebx]
    9ad3:	8d 04 95 00 00 00 00 	lea    eax,[edx*4+0x0]
    9ada:	29 d0                	sub    eax,edx
    9adc:	01 c0                	add    eax,eax
    9ade:	8b a8 5c 44 01 00    	mov    ebp,DWORD PTR [eax+@obj3:__lpSOSSampleList]                  ; fixup: num: 1149, src obj: 1, src ofs: 0x9ae0, dst obj: 3, dst ofs: 0x1445c
    9ae4:	66 8b b0 60 44 01 00 	mov    si,WORD PTR [eax+@obj3:__lpSOSSampleList_variable_1]         ; fixup: num: 1148, src obj: 1, src ofs: 0x9ae7, dst obj: 3, dst ofs: 0x14460
    9aeb:	85 ed                	test   ebp,ebp
    9aed:	75 05                	jne    is_blank_space_branch_3
    9aef:	66 85 f6             	test   si,si
    9af2:	74 33                	je     is_blank_space_branch_5
is_blank_space_branch_3:
    9af4:	8e a8 60 44 01 00    	mov    gs,WORD PTR [eax+@obj3:__lpSOSSampleList_variable_1]         ; fixup: num: 1147, src obj: 1, src ofs: 0x9af6, dst obj: 3, dst ofs: 0x14460
    9afa:	89 e8                	mov    eax,ebp
    9afc:	0f bf 73 08          	movsx  esi,WORD PTR [ebx+0x8]
    9b00:	65 0f bf 40 34       	movsx  eax,WORD PTR gs:[eax+0x34]
    9b05:	39 c6                	cmp    esi,eax
    9b07:	75 1e                	jne    is_blank_space_branch_5
    9b09:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 1146, src obj: 1, src ofs: 0x9b0a, dst obj: 3, dst ofs: 0x1a1ac
    9b0e:	e8 de c0 06 00       	call   sosDIGISampleDone_
    9b13:	83 f8 01             	cmp    eax,0x1
    9b16:	75 0b                	jne    is_blank_space_branch_4
    9b18:	66 c7 43 08 00 00    	mov    WORD PTR [ebx+0x8],0x0
    9b1e:	8a 43 08             	mov    al,BYTE PTR [ebx+0x8]
    9b21:	eb 06                	jmp    is_blank_space_branch_6
is_blank_space_branch_4:
    9b23:	b0 01                	mov    al,0x1
    9b25:	eb 02                	jmp    is_blank_space_branch_6
is_blank_space_branch_5:
    9b27:	30 c0                	xor    al,al
is_blank_space_branch_6:
    9b29:	84 c0                	test   al,al
    9b2b:	74 17                	je     is_blank_space_branch_7
    9b2d:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 1145, src obj: 1, src ofs: 0x9b2e, dst obj: 3, dst ofs: 0x1a1ac
    9b32:	8b 17                	mov    edx,DWORD PTR [edi]
    9b34:	e8 ad bb 06 00       	call   sosDIGIGetBytesProcessed_
    9b39:	3d 00 ca 9a 3b       	cmp    eax,0x3b9aca00
    9b3e:	77 04                	ja     is_blank_space_branch_7
    9b40:	89 c2                	mov    edx,eax
    9b42:	eb 02                	jmp    is_blank_space_branch_8
is_blank_space_branch_7:
    9b44:	31 d2                	xor    edx,edx
is_blank_space_branch_8:
    9b46:	01 d1                	add    ecx,edx
    9b48:	89 d0                	mov    eax,edx
    9b4a:	39 ca                	cmp    edx,ecx
    9b4c:	72 0a                	jb     is_blank_space_branch_10
    9b4e:	eb 1b                	jmp    is_blank_space_branch_12
is_blank_space_branch_9:
    9b50:	40                   	inc    eax
    9b51:	42                   	inc    edx
    9b52:	39 c8                	cmp    eax,ecx
    9b54:	72 08                	jb     is_blank_space_branch_11
    9b56:	eb 13                	jmp    is_blank_space_branch_12
is_blank_space_branch_10:
    9b58:	0f b5 5b 0c          	lgs    ebx,FWORD PTR [ebx+0xc]
    9b5c:	01 da                	add    edx,ebx
is_blank_space_branch_11:
    9b5e:	31 db                	xor    ebx,ebx
    9b60:	65 8a 1a             	mov    bl,BYTE PTR gs:[edx]
    9b63:	85 db                	test   ebx,ebx
    9b65:	74 e9                	je     is_blank_space_branch_9
    9b67:	30 c0                	xor    al,al
    9b69:	eb 02                	jmp    is_blank_space_branch_13
is_blank_space_branch_12:
    9b6b:	b0 01                	mov    al,0x1
is_blank_space_branch_13:
    9b6d:	5d                   	pop    ebp
    9b6e:	5f                   	pop    edi
    9b6f:	5e                   	pop    esi
    9b70:	59                   	pop    ecx
    9b71:	5b                   	pop    ebx
    9b72:	c3                   	ret    
    9b73:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    9b79:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
    9b7f:	90                   	nop

;-------------------------------------------------
;  Function 'set_pan_location'                   -
;-------------------------------------------------
set_pan_location:
    9b80:	53                   	push   ebx
    9b81:	51                   	push   ecx
    9b82:	56                   	push   esi
    9b83:	89 c3                	mov    ebx,eax
    9b85:	89 d1                	mov    ecx,edx
    9b87:	8a 25 b4 a1 01 00    	mov    ah,BYTE PTR ds:@obj3:the_sound_system_variable_3             ; fixup: num: 1155, src obj: 1, src ofs: 0x9b89, dst obj: 3, dst ofs: 0x1a1b4
    9b8d:	84 e4                	test   ah,ah
    9b8f:	0f 84 7d 00 00 00    	je     set_pan_location_branch_5
    9b95:	c7 43 1c 02 00 00 00 	mov    DWORD PTR [ebx+0x1c],0x2
    9b9c:	8a 53 35             	mov    dl,BYTE PTR [ebx+0x35]
    9b9f:	89 4b 4c             	mov    DWORD PTR [ebx+0x4c],ecx
    9ba2:	80 ca 02             	or     dl,0x2
    9ba5:	88 53 35             	mov    BYTE PTR [ebx+0x35],dl
    9ba8:	84 e4                	test   ah,ah
    9baa:	74 52                	je     set_pan_location_branch_3
    9bac:	8b 13                	mov    edx,DWORD PTR [ebx]
    9bae:	8d 04 95 00 00 00 00 	lea    eax,[edx*4+0x0]
    9bb5:	29 d0                	sub    eax,edx
    9bb7:	01 c0                	add    eax,eax
    9bb9:	83 b8 5c 44 01 00 00 	cmp    DWORD PTR [eax+@obj3:__lpSOSSampleList],0x0                  ; fixup: num: 1154, src obj: 1, src ofs: 0x9bbb, dst obj: 3, dst ofs: 0x1445c
    9bc0:	75 0a                	jne    set_pan_location_branch_1
    9bc2:	66 83 b8 60 44 01 00 00 	cmp    WORD PTR [eax+@obj3:__lpSOSSampleList_variable_1],0x0     ; fixup: num: 1153, src obj: 1, src ofs: 0x9bc5, dst obj: 3, dst ofs: 0x14460
    9bca:	74 32                	je     set_pan_location_branch_3
set_pan_location_branch_1:
    9bcc:	0f b5 80 5c 44 01 00 	lgs    eax,FWORD PTR [eax+@obj3:__lpSOSSampleList]                  ; fixup: num: 1152, src obj: 1, src ofs: 0x9bcf, dst obj: 3, dst ofs: 0x1445c
    9bd3:	65 0f bf 70 34       	movsx  esi,WORD PTR gs:[eax+0x34]
    9bd8:	0f bf 43 08          	movsx  eax,WORD PTR [ebx+0x8]
    9bdc:	39 f0                	cmp    eax,esi
    9bde:	75 1e                	jne    set_pan_location_branch_3
    9be0:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 1161, src obj: 1, src ofs: 0x9be1, dst obj: 3, dst ofs: 0x1a1ac
    9be5:	e8 07 c0 06 00       	call   sosDIGISampleDone_
    9bea:	83 f8 01             	cmp    eax,0x1
    9bed:	75 0b                	jne    set_pan_location_branch_2
    9bef:	66 c7 43 08 00 00    	mov    WORD PTR [ebx+0x8],0x0
    9bf5:	8a 43 08             	mov    al,BYTE PTR [ebx+0x8]
    9bf8:	eb 06                	jmp    set_pan_location_branch_4
set_pan_location_branch_2:
    9bfa:	b0 01                	mov    al,0x1
    9bfc:	eb 02                	jmp    set_pan_location_branch_4
set_pan_location_branch_3:
    9bfe:	30 c0                	xor    al,al
set_pan_location_branch_4:
    9c00:	84 c0                	test   al,al
    9c02:	74 0e                	je     set_pan_location_branch_5
    9c04:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 1160, src obj: 1, src ofs: 0x9c05, dst obj: 3, dst ofs: 0x1a1ac
    9c09:	8b 13                	mov    edx,DWORD PTR [ebx]
    9c0b:	89 cb                	mov    ebx,ecx
    9c0d:	e8 a1 bb 06 00       	call   sosDIGISetPanLocation_
set_pan_location_branch_5:
    9c12:	5e                   	pop    esi
    9c13:	59                   	pop    ecx
    9c14:	5b                   	pop    ebx
    9c15:	c3                   	ret    
    9c16:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    9c1c:	8d 54 22 00          	lea    edx,[edx+eiz*1+0x0]

;-------------------------------------------------
;  Function 'bytes_per_second'                   -
;-------------------------------------------------
bytes_per_second:
    9c20:	52                   	push   edx
    9c21:	83 78 0c 00          	cmp    DWORD PTR [eax+0xc],0x0
    9c25:	75 0b                	jne    bytes_per_second_branch_1
    9c27:	66 83 78 10 00       	cmp    WORD PTR [eax+0x10],0x0
    9c2c:	75 04                	jne    bytes_per_second_branch_1
    9c2e:	31 c0                	xor    eax,eax
    9c30:	5a                   	pop    edx
    9c31:	c3                   	ret    
bytes_per_second_branch_1:
    9c32:	8b 90 84 00 00 00    	mov    edx,DWORD PTR [eax+0x84]
    9c38:	c1 ea 03             	shr    edx,0x3
    9c3b:	8b 80 80 00 00 00    	mov    eax,DWORD PTR [eax+0x80]
    9c41:	0f af c2             	imul   eax,edx
    9c44:	5a                   	pop    edx
    9c45:	c3                   	ret    
    9c46:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    9c4c:	8d 54 22 00          	lea    edx,[edx+eiz*1+0x0]

;-------------------------------------------------
;  Function 'bytes_left_to_play'                 -
;-------------------------------------------------
bytes_left_to_play:
    9c50:	53                   	push   ebx
    9c51:	51                   	push   ecx
    9c52:	52                   	push   edx
    9c53:	56                   	push   esi
    9c54:	57                   	push   edi
    9c55:	55                   	push   ebp
    9c56:	89 c3                	mov    ebx,eax
    9c58:	89 c1                	mov    ecx,eax
    9c5a:	8a 25 b4 a1 01 00    	mov    ah,BYTE PTR ds:@obj3:the_sound_system_variable_3             ; fixup: num: 1159, src obj: 1, src ofs: 0x9c5c, dst obj: 3, dst ofs: 0x1a1b4
    9c60:	84 e4                	test   ah,ah
    9c62:	0f 84 71 00 00 00    	je     bytes_left_to_play_branch_5
    9c68:	74 52                	je     bytes_left_to_play_branch_3
    9c6a:	8b 13                	mov    edx,DWORD PTR [ebx]
    9c6c:	8d 04 95 00 00 00 00 	lea    eax,[edx*4+0x0]
    9c73:	29 d0                	sub    eax,edx
    9c75:	01 c0                	add    eax,eax
    9c77:	83 b8 5c 44 01 00 00 	cmp    DWORD PTR [eax+@obj3:__lpSOSSampleList],0x0                  ; fixup: num: 1158, src obj: 1, src ofs: 0x9c79, dst obj: 3, dst ofs: 0x1445c
    9c7e:	75 0a                	jne    bytes_left_to_play_branch_1
    9c80:	66 83 b8 60 44 01 00 00 	cmp    WORD PTR [eax+@obj3:__lpSOSSampleList_variable_1],0x0     ; fixup: num: 1157, src obj: 1, src ofs: 0x9c83, dst obj: 3, dst ofs: 0x14460
    9c88:	74 32                	je     bytes_left_to_play_branch_3
bytes_left_to_play_branch_1:
    9c8a:	0f b5 80 5c 44 01 00 	lgs    eax,FWORD PTR [eax+@obj3:__lpSOSSampleList]                  ; fixup: num: 1156, src obj: 1, src ofs: 0x9c8d, dst obj: 3, dst ofs: 0x1445c
    9c91:	0f bf 73 08          	movsx  esi,WORD PTR [ebx+0x8]
    9c95:	65 0f bf 40 34       	movsx  eax,WORD PTR gs:[eax+0x34]
    9c9a:	39 c6                	cmp    esi,eax
    9c9c:	75 1e                	jne    bytes_left_to_play_branch_3
    9c9e:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 1167, src obj: 1, src ofs: 0x9c9f, dst obj: 3, dst ofs: 0x1a1ac
    9ca3:	e8 49 bf 06 00       	call   sosDIGISampleDone_
    9ca8:	83 f8 01             	cmp    eax,0x1
    9cab:	75 0b                	jne    bytes_left_to_play_branch_2
    9cad:	66 c7 43 08 00 00    	mov    WORD PTR [ebx+0x8],0x0
    9cb3:	8a 43 08             	mov    al,BYTE PTR [ebx+0x8]
    9cb6:	eb 06                	jmp    bytes_left_to_play_branch_4
bytes_left_to_play_branch_2:
    9cb8:	b0 01                	mov    al,0x1
    9cba:	eb 02                	jmp    bytes_left_to_play_branch_4
bytes_left_to_play_branch_3:
    9cbc:	30 c0                	xor    al,al
bytes_left_to_play_branch_4:
    9cbe:	84 c0                	test   al,al
    9cc0:	74 17                	je     bytes_left_to_play_branch_5
    9cc2:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 1166, src obj: 1, src ofs: 0x9cc3, dst obj: 3, dst ofs: 0x1a1ac
    9cc7:	8b 11                	mov    edx,DWORD PTR [ecx]
    9cc9:	e8 18 ba 06 00       	call   sosDIGIGetBytesProcessed_
    9cce:	3d 00 ca 9a 3b       	cmp    eax,0x3b9aca00
    9cd3:	76 06                	jbe    bytes_left_to_play_branch_6
    9cd5:	31 c0                	xor    eax,eax
    9cd7:	eb 02                	jmp    bytes_left_to_play_branch_6
bytes_left_to_play_branch_5:
    9cd9:	31 c0                	xor    eax,eax
bytes_left_to_play_branch_6:
    9cdb:	8b 7b 14             	mov    edi,DWORD PTR [ebx+0x14]
    9cde:	31 d2                	xor    edx,edx
    9ce0:	f7 f7                	div    edi
    9ce2:	8b 6b 04             	mov    ebp,DWORD PTR [ebx+0x4]
    9ce5:	39 ea                	cmp    edx,ebp
    9ce7:	73 06                	jae    bytes_left_to_play_branch_7
    9ce9:	89 e8                	mov    eax,ebp
    9ceb:	29 d0                	sub    eax,edx
    9ced:	eb 06                	jmp    bytes_left_to_play_branch_8
bytes_left_to_play_branch_7:
    9cef:	89 f8                	mov    eax,edi
    9cf1:	29 d0                	sub    eax,edx
    9cf3:	01 e8                	add    eax,ebp
bytes_left_to_play_branch_8:
    9cf5:	5d                   	pop    ebp
    9cf6:	5f                   	pop    edi
    9cf7:	5e                   	pop    esi
    9cf8:	5a                   	pop    edx
    9cf9:	59                   	pop    ecx
    9cfa:	5b                   	pop    ebx
    9cfb:	c3                   	ret    
    9cfc:	8d 44 20 00          	lea    eax,[eax+eiz*1+0x0]

;-------------------------------------------------
;  Function 'reset_data_pointers'                -
;-------------------------------------------------
reset_data_pointers:
    9d00:	53                   	push   ebx
    9d01:	51                   	push   ecx
    9d02:	52                   	push   edx
    9d03:	56                   	push   esi
    9d04:	89 c3                	mov    ebx,eax
    9d06:	89 c1                	mov    ecx,eax
    9d08:	8a 25 b4 a1 01 00    	mov    ah,BYTE PTR ds:@obj3:the_sound_system_variable_3             ; fixup: num: 1165, src obj: 1, src ofs: 0x9d0a, dst obj: 3, dst ofs: 0x1a1b4
    9d0e:	84 e4                	test   ah,ah
    9d10:	0f 84 71 00 00 00    	je     reset_data_pointers_branch_5
    9d16:	74 52                	je     reset_data_pointers_branch_3
    9d18:	8b 13                	mov    edx,DWORD PTR [ebx]
    9d1a:	8d 04 95 00 00 00 00 	lea    eax,[edx*4+0x0]
    9d21:	29 d0                	sub    eax,edx
    9d23:	01 c0                	add    eax,eax
    9d25:	83 b8 5c 44 01 00 00 	cmp    DWORD PTR [eax+@obj3:__lpSOSSampleList],0x0                  ; fixup: num: 1164, src obj: 1, src ofs: 0x9d27, dst obj: 3, dst ofs: 0x1445c
    9d2c:	75 0a                	jne    reset_data_pointers_branch_1
    9d2e:	66 83 b8 60 44 01 00 00 	cmp    WORD PTR [eax+@obj3:__lpSOSSampleList_variable_1],0x0     ; fixup: num: 1163, src obj: 1, src ofs: 0x9d31, dst obj: 3, dst ofs: 0x14460
    9d36:	74 32                	je     reset_data_pointers_branch_3
reset_data_pointers_branch_1:
    9d38:	0f b5 80 5c 44 01 00 	lgs    eax,FWORD PTR [eax+@obj3:__lpSOSSampleList]                  ; fixup: num: 1162, src obj: 1, src ofs: 0x9d3b, dst obj: 3, dst ofs: 0x1445c
    9d3f:	65 0f bf 70 34       	movsx  esi,WORD PTR gs:[eax+0x34]
    9d44:	0f bf 43 08          	movsx  eax,WORD PTR [ebx+0x8]
    9d48:	39 f0                	cmp    eax,esi
    9d4a:	75 1e                	jne    reset_data_pointers_branch_3
    9d4c:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 1173, src obj: 1, src ofs: 0x9d4d, dst obj: 3, dst ofs: 0x1a1ac
    9d51:	e8 9b be 06 00       	call   sosDIGISampleDone_
    9d56:	83 f8 01             	cmp    eax,0x1
    9d59:	75 0b                	jne    reset_data_pointers_branch_2
    9d5b:	66 c7 43 08 00 00    	mov    WORD PTR [ebx+0x8],0x0
    9d61:	8a 43 08             	mov    al,BYTE PTR [ebx+0x8]
    9d64:	eb 06                	jmp    reset_data_pointers_branch_4
reset_data_pointers_branch_2:
    9d66:	b0 01                	mov    al,0x1
    9d68:	eb 02                	jmp    reset_data_pointers_branch_4
reset_data_pointers_branch_3:
    9d6a:	30 c0                	xor    al,al
reset_data_pointers_branch_4:
    9d6c:	84 c0                	test   al,al
    9d6e:	74 17                	je     reset_data_pointers_branch_5
    9d70:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 1172, src obj: 1, src ofs: 0x9d71, dst obj: 3, dst ofs: 0x1a1ac
    9d75:	8b 11                	mov    edx,DWORD PTR [ecx]
    9d77:	e8 6a b9 06 00       	call   sosDIGIGetBytesProcessed_
    9d7c:	3d 00 ca 9a 3b       	cmp    eax,0x3b9aca00
    9d81:	76 06                	jbe    reset_data_pointers_branch_6
    9d83:	31 c0                	xor    eax,eax
    9d85:	eb 02                	jmp    reset_data_pointers_branch_6
reset_data_pointers_branch_5:
    9d87:	31 c0                	xor    eax,eax
reset_data_pointers_branch_6:
    9d89:	8b 4b 14             	mov    ecx,DWORD PTR [ebx+0x14]
    9d8c:	31 d2                	xor    edx,edx
    9d8e:	f7 f1                	div    ecx
    9d90:	89 53 04             	mov    DWORD PTR [ebx+0x4],edx
    9d93:	5e                   	pop    esi
    9d94:	5a                   	pop    edx
    9d95:	59                   	pop    ecx
    9d96:	5b                   	pop    ebx
    9d97:	c3                   	ret    
    9d98:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    9d9e:	8b d2                	mov    edx,edx

;-------------------------------------------------
;  Function 'log_data_pointers'                  -
;-------------------------------------------------
log_data_pointers:
    9da0:	53                   	push   ebx
    9da1:	51                   	push   ecx
    9da2:	52                   	push   edx
    9da3:	56                   	push   esi
    9da4:	57                   	push   edi
    9da5:	55                   	push   ebp
    9da6:	89 c3                	mov    ebx,eax
    9da8:	89 c1                	mov    ecx,eax
    9daa:	8a 25 b4 a1 01 00    	mov    ah,BYTE PTR ds:@obj3:the_sound_system_variable_3             ; fixup: num: 1171, src obj: 1, src ofs: 0x9dac, dst obj: 3, dst ofs: 0x1a1b4
    9db0:	84 e4                	test   ah,ah
    9db2:	0f 84 71 00 00 00    	je     log_data_pointers_branch_5
    9db8:	74 52                	je     log_data_pointers_branch_3
    9dba:	8b 13                	mov    edx,DWORD PTR [ebx]
    9dbc:	8d 04 95 00 00 00 00 	lea    eax,[edx*4+0x0]
    9dc3:	29 d0                	sub    eax,edx
    9dc5:	01 c0                	add    eax,eax
    9dc7:	83 b8 5c 44 01 00 00 	cmp    DWORD PTR [eax+@obj3:__lpSOSSampleList],0x0                  ; fixup: num: 1170, src obj: 1, src ofs: 0x9dc9, dst obj: 3, dst ofs: 0x1445c
    9dce:	75 0a                	jne    log_data_pointers_branch_1
    9dd0:	66 83 b8 60 44 01 00 00 	cmp    WORD PTR [eax+@obj3:__lpSOSSampleList_variable_1],0x0     ; fixup: num: 1169, src obj: 1, src ofs: 0x9dd3, dst obj: 3, dst ofs: 0x14460
    9dd8:	74 32                	je     log_data_pointers_branch_3
log_data_pointers_branch_1:
    9dda:	0f b5 80 5c 44 01 00 	lgs    eax,FWORD PTR [eax+@obj3:__lpSOSSampleList]                  ; fixup: num: 1168, src obj: 1, src ofs: 0x9ddd, dst obj: 3, dst ofs: 0x1445c
    9de1:	65 0f bf 70 34       	movsx  esi,WORD PTR gs:[eax+0x34]
    9de6:	0f bf 43 08          	movsx  eax,WORD PTR [ebx+0x8]
    9dea:	39 f0                	cmp    eax,esi
    9dec:	75 1e                	jne    log_data_pointers_branch_3
    9dee:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 1180, src obj: 1, src ofs: 0x9def, dst obj: 3, dst ofs: 0x1a1ac
    9df3:	e8 f9 bd 06 00       	call   sosDIGISampleDone_
    9df8:	83 f8 01             	cmp    eax,0x1
    9dfb:	75 0b                	jne    log_data_pointers_branch_2
    9dfd:	66 c7 43 08 00 00    	mov    WORD PTR [ebx+0x8],0x0
    9e03:	8a 43 08             	mov    al,BYTE PTR [ebx+0x8]
    9e06:	eb 06                	jmp    log_data_pointers_branch_4
log_data_pointers_branch_2:
    9e08:	b0 01                	mov    al,0x1
    9e0a:	eb 02                	jmp    log_data_pointers_branch_4
log_data_pointers_branch_3:
    9e0c:	30 c0                	xor    al,al
log_data_pointers_branch_4:
    9e0e:	84 c0                	test   al,al
    9e10:	74 17                	je     log_data_pointers_branch_5
    9e12:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 1179, src obj: 1, src ofs: 0x9e13, dst obj: 3, dst ofs: 0x1a1ac
    9e17:	8b 11                	mov    edx,DWORD PTR [ecx]
    9e19:	e8 c8 b8 06 00       	call   sosDIGIGetBytesProcessed_
    9e1e:	3d 00 ca 9a 3b       	cmp    eax,0x3b9aca00
    9e23:	76 06                	jbe    log_data_pointers_branch_6
    9e25:	31 c0                	xor    eax,eax
    9e27:	eb 02                	jmp    log_data_pointers_branch_6
log_data_pointers_branch_5:
    9e29:	31 c0                	xor    eax,eax
log_data_pointers_branch_6:
    9e2b:	8b 7b 14             	mov    edi,DWORD PTR [ebx+0x14]
    9e2e:	31 d2                	xor    edx,edx
    9e30:	f7 f7                	div    edi
    9e32:	52                   	push   edx
    9e33:	8b 6b 04             	mov    ebp,DWORD PTR [ebx+0x4]
    9e36:	55                   	push   ebp
    9e37:	68 1d 0d 00 00       	push   @obj3:sound_cpp_variable_48                                  ; fixup: num: 1178, src obj: 1, src ofs: 0x9e38, dst obj: 3, dst ofs: 0xd1d
    9e3c:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 1177, src obj: 1, src ofs: 0x9e3d, dst obj: 3, dst ofs: 0x237fc
    9e41:	e8 9b 6d 06 00       	call   sprintf_
    9e46:	83 c4 10             	add    esp,0x10
    9e49:	5d                   	pop    ebp
    9e4a:	5f                   	pop    edi
    9e4b:	5e                   	pop    esi
    9e4c:	5a                   	pop    edx
    9e4d:	59                   	pop    ecx
    9e4e:	5b                   	pop    ebx
    9e4f:	c3                   	ret    

;-------------------------------------------------
;  Function 'sosDIGIDeCompressFile'              -
;-------------------------------------------------
sosDIGIDeCompressFile:
    9e50:	56                   	push   esi
    9e51:	57                   	push   edi
    9e52:	55                   	push   ebp
    9e53:	83 ec 58             	sub    esp,0x58
    9e56:	89 c6                	mov    esi,eax
    9e58:	89 54 24 48          	mov    DWORD PTR [esp+0x48],edx
    9e5c:	89 5c 24 44          	mov    DWORD PTR [esp+0x44],ebx
    9e60:	89 4c 24 4c          	mov    DWORD PTR [esp+0x4c],ecx
    9e64:	bb 65 03 00 00       	mov    ebx,0x365
    9e69:	ba 91 0b 00 00       	mov    edx,@obj3:sound_cpp_variable_34                              ; fixup: num: 1176, src obj: 1, src ofs: 0x9e6a, dst obj: 3, dst ofs: 0xb91
    9e6e:	e8 bd 46 00 00       	call   XFILE_open2
    9e73:	89 44 24 54          	mov    DWORD PTR [esp+0x54],eax
    9e77:	83 f8 ff             	cmp    eax,0xffffffff
    9e7a:	75 11                	jne    sosDIGIDeCompressFile_branch_1
    9e7c:	bb 9b 0b 00 00       	mov    ebx,@obj3:sound_cpp_variable_35                              ; fixup: num: 1175, src obj: 1, src ofs: 0x9e7d, dst obj: 3, dst ofs: 0xb9b
    9e81:	ba 66 03 00 00       	mov    edx,0x366
    9e86:	31 c0                	xor    eax,eax
    9e88:	e8 a3 e1 02 00       	call   _error_report
sosDIGIDeCompressFile_branch_1:
    9e8d:	b9 b6 0b 00 00       	mov    ecx,@obj3:sound_cpp_variable_36                              ; fixup: num: 1174, src obj: 1, src ofs: 0x9e8e, dst obj: 3, dst ofs: 0xbb6
    9e92:	bb 0e 00 00 00       	mov    ebx,0xe
    9e97:	89 f0                	mov    eax,esi
    9e99:	8d 54 24 30          	lea    edx,[esp+0x30]
    9e9d:	e8 de 2d 00 00       	call   XFILE_size
    9ea2:	83 e8 0e             	sub    eax,0xe
    9ea5:	68 6d 03 00 00       	push   0x36d
    9eaa:	89 44 24 44          	mov    DWORD PTR [esp+0x44],eax
    9eae:	8b 44 24 58          	mov    eax,DWORD PTR [esp+0x58]
    9eb2:	e8 99 48 00 00       	call   XFILE_read_chunk2
    9eb7:	31 c0                	xor    eax,eax
    9eb9:	8a 44 24 30          	mov    al,BYTE PTR [esp+0x30]
    9ebd:	83 f8 46             	cmp    eax,0x46
    9ec0:	75 21                	jne    sosDIGIDeCompressFile_branch_2
    9ec2:	31 c0                	xor    eax,eax
    9ec4:	8a 44 24 31          	mov    al,BYTE PTR [esp+0x31]
    9ec8:	83 f8 43             	cmp    eax,0x43
    9ecb:	75 16                	jne    sosDIGIDeCompressFile_branch_2
    9ecd:	31 c0                	xor    eax,eax
    9ecf:	8a 44 24 32          	mov    al,BYTE PTR [esp+0x32]
    9ed3:	83 f8 4d             	cmp    eax,0x4d
    9ed6:	75 0b                	jne    sosDIGIDeCompressFile_branch_2
    9ed8:	31 c0                	xor    eax,eax
    9eda:	8a 44 24 33          	mov    al,BYTE PTR [esp+0x33]
    9ede:	83 f8 50             	cmp    eax,0x50
    9ee1:	74 11                	je     sosDIGIDeCompressFile_branch_3
sosDIGIDeCompressFile_branch_2:
    9ee3:	bb c0 0b 00 00       	mov    ebx,@obj3:sound_cpp_variable_37                              ; fixup: num: 1182, src obj: 1, src ofs: 0x9ee4, dst obj: 3, dst ofs: 0xbc0
    9ee8:	ba 72 03 00 00       	mov    edx,0x372
    9eed:	31 c0                	xor    eax,eax
    9eef:	e8 3c e1 02 00       	call   _error_report
sosDIGIDeCompressFile_branch_3:
    9ef4:	b8 00 20 00 00       	mov    eax,0x2000
    9ef9:	e8 95 75 06 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
    9efe:	89 c7                	mov    edi,eax
    9f00:	85 c0                	test   eax,eax
    9f02:	75 0f                	jne    sosDIGIDeCompressFile_branch_4
    9f04:	bb f0 0b 00 00       	mov    ebx,@obj3:sound_cpp_variable_38                              ; fixup: num: 1181, src obj: 1, src ofs: 0x9f05, dst obj: 3, dst ofs: 0xbf0
    9f09:	ba 76 03 00 00       	mov    edx,0x376
    9f0e:	e8 1d e1 02 00       	call   _error_report
sosDIGIDeCompressFile_branch_4:
    9f13:	68 00 20 00 00       	push   0x2000
    9f18:	57                   	push   edi
    9f19:	e8 d9 6b 06 00       	call   _D32Lock
    9f1e:	83 c4 08             	add    esp,0x8
    9f21:	31 d2                	xor    edx,edx
    9f23:	66 8b 54 24 3c       	mov    dx,WORD PTR [esp+0x3c]
    9f28:	89 d0                	mov    eax,edx
    9f2a:	c1 fa 1f             	sar    edx,0x1f
    9f2d:	c1 e2 02             	shl    edx,0x2
    9f30:	1b c2                	sbb    eax,edx
    9f32:	c1 f8 02             	sar    eax,0x2
    9f35:	0f af 44 24 40       	imul   eax,DWORD PTR [esp+0x40]
    9f3a:	05 00 10 00 00       	add    eax,0x1000
    9f3f:	e8 4f 75 06 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
    9f44:	89 44 24 50          	mov    DWORD PTR [esp+0x50],eax
    9f48:	89 c5                	mov    ebp,eax
    9f4a:	85 c0                	test   eax,eax
    9f4c:	75 42                	jne    sosDIGIDeCompressFile_branch_5
    9f4e:	31 d2                	xor    edx,edx
    9f50:	66 8b 54 24 3c       	mov    dx,WORD PTR [esp+0x3c]
    9f55:	89 d0                	mov    eax,edx
    9f57:	c1 fa 1f             	sar    edx,0x1f
    9f5a:	c1 e2 02             	shl    edx,0x2
    9f5d:	1b c2                	sbb    eax,edx
    9f5f:	c1 f8 02             	sar    eax,0x2
    9f62:	0f af 44 24 40       	imul   eax,DWORD PTR [esp+0x40]
    9f67:	05 00 10 00 00       	add    eax,0x1000
    9f6c:	50                   	push   eax
    9f6d:	68 24 0c 00 00       	push   @obj3:sound_cpp_variable_39                                  ; fixup: num: 1185, src obj: 1, src ofs: 0x9f6e, dst obj: 3, dst ofs: 0xc24
    9f72:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 1184, src obj: 1, src ofs: 0x9f73, dst obj: 3, dst ofs: 0x237fc
    9f77:	ba 7c 03 00 00       	mov    edx,0x37c
    9f7c:	e8 60 6c 06 00       	call   sprintf_
    9f81:	83 c4 0c             	add    esp,0xc
    9f84:	bb fc 37 02 00       	mov    ebx,@obj3:log_buffer                                         ; fixup: num: 1183, src obj: 1, src ofs: 0x9f85, dst obj: 3, dst ofs: 0x237fc
    9f89:	31 c0                	xor    eax,eax
    9f8b:	e8 a0 e0 02 00       	call   _error_report
sosDIGIDeCompressFile_branch_5:
    9f90:	31 d2                	xor    edx,edx
    9f92:	66 8b 54 24 3c       	mov    dx,WORD PTR [esp+0x3c]
    9f97:	89 d0                	mov    eax,edx
    9f99:	c1 fa 1f             	sar    edx,0x1f
    9f9c:	c1 e2 02             	shl    edx,0x2
    9f9f:	1b c2                	sbb    eax,edx
    9fa1:	c1 f8 02             	sar    eax,0x2
    9fa4:	0f af 44 24 40       	imul   eax,DWORD PTR [esp+0x40]
    9fa9:	05 00 10 00 00       	add    eax,0x1000
    9fae:	50                   	push   eax
    9faf:	8b 74 24 54          	mov    esi,DWORD PTR [esp+0x54]
    9fb3:	56                   	push   esi
    9fb4:	e8 3e 6b 06 00       	call   _D32Lock
    9fb9:	83 c4 08             	add    esp,0x8
    9fbc:	31 d2                	xor    edx,edx
    9fbe:	66 8b 54 24 3c       	mov    dx,WORD PTR [esp+0x3c]
    9fc3:	89 d0                	mov    eax,edx
    9fc5:	c1 fa 1f             	sar    edx,0x1f
    9fc8:	c1 e2 02             	shl    edx,0x2
    9fcb:	1b c2                	sbb    eax,edx
    9fcd:	c1 f8 02             	sar    eax,0x2
    9fd0:	0f af 44 24 40       	imul   eax,DWORD PTR [esp+0x40]
    9fd5:	8d 98 00 10 00 00    	lea    ebx,[eax+0x1000]
    9fdb:	31 d2                	xor    edx,edx
    9fdd:	89 f0                	mov    eax,esi
    9fdf:	e8 ec 73 06 00       	call   memset_
    9fe4:	31 d2                	xor    edx,edx
    9fe6:	8b 44 24 40          	mov    eax,DWORD PTR [esp+0x40]
    9fea:	66 8b 54 24 3c       	mov    dx,WORD PTR [esp+0x3c]
    9fef:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
    9ff3:	89 d0                	mov    eax,edx
    9ff5:	c1 fa 1f             	sar    edx,0x1f
    9ff8:	c1 e2 02             	shl    edx,0x2
    9ffb:	1b c2                	sbb    eax,edx
    9ffd:	c1 f8 02             	sar    eax,0x2
    a000:	8b 54 24 40          	mov    edx,DWORD PTR [esp+0x40]
    a004:	0f af d0             	imul   edx,eax
    a007:	89 54 24 14          	mov    DWORD PTR [esp+0x14],edx
    a00b:	89 d0                	mov    eax,edx
    a00d:	8b 54 24 48          	mov    edx,DWORD PTR [esp+0x48]
    a011:	89 02                	mov    DWORD PTR [edx],eax
    a013:	8b 44 24 3c          	mov    eax,DWORD PTR [esp+0x3c]
    a017:	8b 54 24 4c          	mov    edx,DWORD PTR [esp+0x4c]
    a01b:	66 89 44 24 2c       	mov    WORD PTR [esp+0x2c],ax
    a020:	98                   	cwde   
    a021:	89 02                	mov    DWORD PTR [edx],eax
    a023:	8b 54 24 44          	mov    edx,DWORD PTR [esp+0x44]
    a027:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
    a02b:	89 02                	mov    DWORD PTR [edx],eax
    a02d:	89 e0                	mov    eax,esp
    a02f:	50                   	push   eax
    a030:	e8 ab 64 06 00       	call   _sosCODECInitStream
    a035:	83 c4 04             	add    esp,0x4
sosDIGIDeCompressFile_branch_6:
    a038:	68 8e 03 00 00       	push   0x38e
    a03d:	b9 37 0c 00 00       	mov    ecx,@obj3:sound_cpp_variable_40                              ; fixup: num: 1303, src obj: 1, src ofs: 0xa03e, dst obj: 3, dst ofs: 0xc37
    a042:	bb 00 20 00 00       	mov    ebx,0x2000
    a047:	8b 44 24 58          	mov    eax,DWORD PTR [esp+0x58]
    a04b:	89 fa                	mov    edx,edi
    a04d:	e8 fe 46 00 00       	call   XFILE_read_chunk2
    a052:	31 d2                	xor    edx,edx
    a054:	66 8b 54 24 3c       	mov    dx,WORD PTR [esp+0x3c]
    a059:	89 c6                	mov    esi,eax
    a05b:	89 d0                	mov    eax,edx
    a05d:	c1 fa 1f             	sar    edx,0x1f
    a060:	c1 e2 02             	shl    edx,0x2
    a063:	1b c2                	sbb    eax,edx
    a065:	c1 f8 02             	sar    eax,0x2
    a068:	0f af c6             	imul   eax,esi
    a06b:	8c 5c 24 04          	mov    WORD PTR [esp+0x4],ds
    a06f:	50                   	push   eax
    a070:	8d 44 24 04          	lea    eax,[esp+0x4]
    a074:	89 7c 24 04          	mov    DWORD PTR [esp+0x4],edi
    a078:	50                   	push   eax
    a079:	8c 5c 24 14          	mov    WORD PTR [esp+0x14],ds
    a07d:	89 6c 24 10          	mov    DWORD PTR [esp+0x10],ebp
    a081:	e8 7f 64 06 00       	call   _sosCODECDecompressData
    a086:	83 c4 08             	add    esp,0x8
    a089:	01 c5                	add    ebp,eax
    a08b:	81 fe 00 20 00 00    	cmp    esi,0x2000
    a091:	74 a5                	je     sosDIGIDeCompressFile_branch_6
    a093:	8b 44 24 54          	mov    eax,DWORD PTR [esp+0x54]
    a097:	e8 74 46 00 00       	call   XFILE_close
    a09c:	68 00 20 00 00       	push   0x2000
    a0a1:	57                   	push   edi
    a0a2:	e8 1a 6a 06 00       	call   _D32Unlock
    a0a7:	83 c4 08             	add    esp,0x8
    a0aa:	89 f8                	mov    eax,edi
    a0ac:	31 d2                	xor    edx,edx
    a0ae:	e8 35 73 06 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
    a0b3:	66 8b 54 24 3c       	mov    dx,WORD PTR [esp+0x3c]
    a0b8:	89 d0                	mov    eax,edx
    a0ba:	c1 fa 1f             	sar    edx,0x1f
    a0bd:	c1 e2 02             	shl    edx,0x2
    a0c0:	1b c2                	sbb    eax,edx
    a0c2:	c1 f8 02             	sar    eax,0x2
    a0c5:	0f af 44 24 40       	imul   eax,DWORD PTR [esp+0x40]
    a0ca:	05 00 10 00 00       	add    eax,0x1000
    a0cf:	50                   	push   eax
    a0d0:	8b 4c 24 54          	mov    ecx,DWORD PTR [esp+0x54]
    a0d4:	51                   	push   ecx
    a0d5:	e8 e7 69 06 00       	call   _D32Unlock
    a0da:	83 c4 08             	add    esp,0x8
    a0dd:	8b 44 24 50          	mov    eax,DWORD PTR [esp+0x50]
    a0e1:	83 c4 58             	add    esp,0x58
    a0e4:	5d                   	pop    ebp
    a0e5:	5f                   	pop    edi
    a0e6:	5e                   	pop    esi
    a0e7:	c3                   	ret    
    a0e8:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    a0ee:	8b d2                	mov    edx,edx

;-------------------------------------------------
;  Function 'sosDIGICompressFile'                -
;-------------------------------------------------
sosDIGICompressFile:
    a0f0:	56                   	push   esi
    a0f1:	57                   	push   edi
    a0f2:	55                   	push   ebp
    a0f3:	83 ec 4c             	sub    esp,0x4c
    a0f6:	89 c6                	mov    esi,eax
    a0f8:	89 d7                	mov    edi,edx
    a0fa:	89 5c 24 48          	mov    DWORD PTR [esp+0x48],ebx
    a0fe:	89 cd                	mov    ebp,ecx
    a100:	31 c0                	xor    eax,eax
    a102:	66 89 d8             	mov    ax,bx
    a105:	50                   	push   eax
    a106:	68 3a 0d 00 00       	push   @obj3:sound_cpp_variable_49                                  ; fixup: num: 1305, src obj: 1, src ofs: 0xa107, dst obj: 3, dst ofs: 0xd3a
    a10b:	e8 42 6a 06 00       	call   printf_
    a110:	83 c4 08             	add    esp,0x8
    a113:	68 00 02 00 00       	push   0x200
    a118:	56                   	push   esi
    a119:	e8 58 74 06 00       	call   open_
    a11e:	83 c4 08             	add    esp,0x8
    a121:	89 44 24 40          	mov    DWORD PTR [esp+0x40],eax
    a125:	83 f8 ff             	cmp    eax,0xffffffff
    a128:	75 11                	jne    sosDIGICompressFile_branch_1
    a12a:	bb 59 0d 00 00       	mov    ebx,@obj3:sound_cpp_variable_50                              ; fixup: num: 1304, src obj: 1, src ofs: 0xa12b, dst obj: 3, dst ofs: 0xd59
    a12f:	ba b4 03 00 00       	mov    edx,0x3b4
    a134:	31 c0                	xor    eax,eax
    a136:	e8 f5 de 02 00       	call   _error_report
sosDIGICompressFile_branch_1:
    a13b:	6a 00                	push   0x0
    a13d:	68 62 02 00 00       	push   0x262
    a142:	57                   	push   edi
    a143:	bb 02 00 00 00       	mov    ebx,0x2
    a148:	31 d2                	xor    edx,edx
    a14a:	e8 27 74 06 00       	call   open_
    a14f:	83 c4 0c             	add    esp,0xc
    a152:	89 c6                	mov    esi,eax
    a154:	89 44 24 44          	mov    DWORD PTR [esp+0x44],eax
    a158:	8b 44 24 40          	mov    eax,DWORD PTR [esp+0x40]
    a15c:	e8 6e 7d 06 00       	call   lseek_                                                       ; aliases: lseek_, _lseek_
    a161:	89 c7                	mov    edi,eax
    a163:	89 c1                	mov    ecx,eax
    a165:	31 db                	xor    ebx,ebx
    a167:	31 d2                	xor    edx,edx
    a169:	8b 44 24 40          	mov    eax,DWORD PTR [esp+0x40]
    a16d:	e8 5d 7d 06 00       	call   lseek_                                                       ; aliases: lseek_, _lseek_
    a172:	c6 44 24 31 43       	mov    BYTE PTR [esp+0x31],0x43
    a177:	c6 44 24 32 4d       	mov    BYTE PTR [esp+0x32],0x4d
    a17c:	31 d2                	xor    edx,edx
    a17e:	b4 46                	mov    ah,0x46
    a180:	66 8b 54 24 48       	mov    dx,WORD PTR [esp+0x48]
    a185:	88 64 24 30          	mov    BYTE PTR [esp+0x30],ah
    a189:	89 d0                	mov    eax,edx
    a18b:	c1 fa 1f             	sar    edx,0x1f
    a18e:	c1 e2 02             	shl    edx,0x2
    a191:	1b c2                	sbb    eax,edx
    a193:	c1 f8 02             	sar    eax,0x2
    a196:	c6 44 24 33 50       	mov    BYTE PTR [esp+0x33],0x50
    a19b:	89 c3                	mov    ebx,eax
    a19d:	31 d2                	xor    edx,edx
    a19f:	89 f8                	mov    eax,edi
    a1a1:	f7 f3                	div    ebx
    a1a3:	bb 0e 00 00 00       	mov    ebx,0xe
    a1a8:	89 44 24 34          	mov    DWORD PTR [esp+0x34],eax
    a1ac:	8b 44 24 48          	mov    eax,DWORD PTR [esp+0x48]
    a1b0:	8d 54 24 30          	lea    edx,[esp+0x30]
    a1b4:	66 89 44 24 3c       	mov    WORD PTR [esp+0x3c],ax
    a1b9:	89 f0                	mov    eax,esi
    a1bb:	89 6c 24 38          	mov    DWORD PTR [esp+0x38],ebp
    a1bf:	e8 00 76 06 00       	call   write_
    a1c4:	b8 00 20 00 00       	mov    eax,0x2000
    a1c9:	e8 c5 72 06 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
    a1ce:	89 c7                	mov    edi,eax
    a1d0:	85 c0                	test   eax,eax
    a1d2:	75 0f                	jne    sosDIGICompressFile_branch_2
    a1d4:	bb 72 0d 00 00       	mov    ebx,@obj3:sound_cpp_variable_51                              ; fixup: num: 1306, src obj: 1, src ofs: 0xa1d5, dst obj: 3, dst ofs: 0xd72
    a1d9:	ba ca 03 00 00       	mov    edx,0x3ca
    a1de:	e8 4d de 02 00       	call   _error_report
sosDIGICompressFile_branch_2:
    a1e3:	31 d2                	xor    edx,edx
    a1e5:	66 8b 54 24 48       	mov    dx,WORD PTR [esp+0x48]
    a1ea:	89 d0                	mov    eax,edx
    a1ec:	c1 fa 1f             	sar    edx,0x1f
    a1ef:	c1 e2 02             	shl    edx,0x2
    a1f2:	1b c2                	sbb    eax,edx
    a1f4:	c1 f8 02             	sar    eax,0x2
    a1f7:	89 c3                	mov    ebx,eax
    a1f9:	b8 00 20 00 00       	mov    eax,0x2000
    a1fe:	89 c2                	mov    edx,eax
    a200:	c1 fa 1f             	sar    edx,0x1f
    a203:	f7 fb                	idiv   ebx
    a205:	e8 89 72 06 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
    a20a:	89 c5                	mov    ebp,eax
    a20c:	85 c0                	test   eax,eax
    a20e:	75 0f                	jne    sosDIGICompressFile_branch_3
    a210:	bb 8a 0d 00 00       	mov    ebx,@obj3:sound_cpp_variable_52                              ; fixup: num: 1307, src obj: 1, src ofs: 0xa211, dst obj: 3, dst ofs: 0xd8a
    a215:	ba cc 03 00 00       	mov    edx,0x3cc
    a21a:	e8 11 de 02 00       	call   _error_report
sosDIGICompressFile_branch_3:
    a21f:	31 d2                	xor    edx,edx
    a221:	66 8b 54 24 48       	mov    dx,WORD PTR [esp+0x48]
    a226:	89 d0                	mov    eax,edx
    a228:	c1 fa 1f             	sar    edx,0x1f
    a22b:	c1 e2 02             	shl    edx,0x2
    a22e:	1b c2                	sbb    eax,edx
    a230:	c1 f8 02             	sar    eax,0x2
    a233:	89 c3                	mov    ebx,eax
    a235:	31 d2                	xor    edx,edx
    a237:	89 c8                	mov    eax,ecx
    a239:	f7 f3                	div    ebx
    a23b:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
    a23f:	8b 44 24 48          	mov    eax,DWORD PTR [esp+0x48]
    a243:	66 89 44 24 2c       	mov    WORD PTR [esp+0x2c],ax
    a248:	89 e0                	mov    eax,esp
    a24a:	50                   	push   eax
    a24b:	89 4c 24 18          	mov    DWORD PTR [esp+0x18],ecx
    a24f:	e8 8c 62 06 00       	call   _sosCODECInitStream
    a254:	83 c4 04             	add    esp,0x4
sosDIGICompressFile_branch_4:
    a257:	bb 00 20 00 00       	mov    ebx,0x2000
    a25c:	8b 44 24 40          	mov    eax,DWORD PTR [esp+0x40]
    a260:	89 fa                	mov    edx,edi
    a262:	e8 fc 7c 06 00       	call   read_
    a267:	89 c6                	mov    esi,eax
    a269:	8c 5c 24 04          	mov    WORD PTR [esp+0x4],ds
    a26d:	50                   	push   eax
    a26e:	8d 44 24 04          	lea    eax,[esp+0x4]
    a272:	89 7c 24 04          	mov    DWORD PTR [esp+0x4],edi
    a276:	50                   	push   eax
    a277:	8c 5c 24 14          	mov    WORD PTR [esp+0x14],ds
    a27b:	89 6c 24 10          	mov    DWORD PTR [esp+0x10],ebp
    a27f:	e8 ad 63 06 00       	call   _sosCODECCompressData
    a284:	83 c4 08             	add    esp,0x8
    a287:	31 d2                	xor    edx,edx
    a289:	66 8b 54 24 48       	mov    dx,WORD PTR [esp+0x48]
    a28e:	89 d0                	mov    eax,edx
    a290:	c1 fa 1f             	sar    edx,0x1f
    a293:	c1 e2 02             	shl    edx,0x2
    a296:	1b c2                	sbb    eax,edx
    a298:	c1 f8 02             	sar    eax,0x2
    a29b:	89 c3                	mov    ebx,eax
    a29d:	31 d2                	xor    edx,edx
    a29f:	89 f0                	mov    eax,esi
    a2a1:	f7 f3                	div    ebx
    a2a3:	89 c3                	mov    ebx,eax
    a2a5:	89 ea                	mov    edx,ebp
    a2a7:	8b 44 24 44          	mov    eax,DWORD PTR [esp+0x44]
    a2ab:	e8 14 75 06 00       	call   write_
    a2b0:	56                   	push   esi
    a2b1:	68 a2 0d 00 00       	push   @obj3:sound_cpp_variable_53                                  ; fixup: num: 1311, src obj: 1, src ofs: 0xa2b2, dst obj: 3, dst ofs: 0xda2
    a2b6:	e8 97 68 06 00       	call   printf_
    a2bb:	83 c4 08             	add    esp,0x8
    a2be:	81 fe 00 20 00 00    	cmp    esi,0x2000
    a2c4:	74 91                	je     sosDIGICompressFile_branch_4
    a2c6:	8b 44 24 40          	mov    eax,DWORD PTR [esp+0x40]
    a2ca:	e8 41 7c 06 00       	call   close_
    a2cf:	8b 44 24 44          	mov    eax,DWORD PTR [esp+0x44]
    a2d3:	e8 38 7c 06 00       	call   close_
    a2d8:	83 c4 4c             	add    esp,0x4c
    a2db:	5d                   	pop    ebp
    a2dc:	5f                   	pop    edi
    a2dd:	5e                   	pop    esi
    a2de:	c3                   	ret    
    a2df:	90                   	nop

;-------------------------------------------------
;  Function 'W?$ct:SOUND_SPOOL$n(i)_'            -
;-------------------------------------------------
W?$ct:SOUND_SPOOL$n(i)_:
    a2e0:	53                   	push   ebx
    a2e1:	51                   	push   ecx
    a2e2:	56                   	push   esi
    a2e3:	57                   	push   edi
    a2e4:	89 c6                	mov    esi,eax
    a2e6:	89 d1                	mov    ecx,edx
    a2e8:	bb 74 00 00 00       	mov    ebx,0x74
    a2ed:	83 c0 0c             	add    eax,0xc
    a2f0:	31 d2                	xor    edx,edx
    a2f2:	e8 d9 70 06 00       	call   memset_
    a2f7:	a1 ac 0f 01 00       	mov    eax,ds:@obj3:fx_volume                                       ; fixup: num: 1310, src obj: 1, src ofs: 0xa2f8, dst obj: 3, dst ofs: 0x10fac
    a2fc:	c7 46 1c 02 00 00 00 	mov    DWORD PTR [esi+0x1c],0x2
    a303:	66 8b 04 45 be 0f 01 00 	mov    ax,WORD PTR [eax*2+@obj3:volume_table]                    ; fixup: num: 1309, src obj: 1, src ofs: 0xa307, dst obj: 3, dst ofs: 0x10fbe
    a30b:	c7 46 34 00 01 00 00 	mov    DWORD PTR [esi+0x34],0x100
    a312:	c7 06 00 00 00 00    	mov    DWORD PTR [esi],0x0
    a318:	66 c7 46 08 00 00    	mov    WORD PTR [esi+0x8],0x0
    a31e:	25 ff ff 00 00       	and    eax,0xffff
    a323:	c6 86 b8 00 00 00 00 	mov    BYTE PTR [esi+0xb8],0x0
    a32a:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
    a32d:	b8 00 80 00 00       	mov    eax,0x8000
    a332:	89 8e ac 00 00 00    	mov    DWORD PTR [esi+0xac],ecx
    a338:	e8 56 71 06 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
    a33d:	89 86 b0 00 00 00    	mov    DWORD PTR [esi+0xb0],eax
    a343:	85 c0                	test   eax,eax
    a345:	75 0f                	jne    W?$ct:SOUND_SPOOL$n(i)__branch_1
    a347:	bb fc 06 00 00       	mov    ebx,@obj3:sound_cpp_variable_1                               ; fixup: num: 1308, src obj: 1, src ofs: 0xa348, dst obj: 3, dst ofs: 0x6fc
    a34c:	ba f7 03 00 00       	mov    edx,0x3f7
    a351:	e8 da dc 02 00       	call   _error_report
W?$ct:SOUND_SPOOL$n(i)__branch_1:
    a356:	b8 00 20 00 00       	mov    eax,0x2000
    a35b:	e8 33 71 06 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
    a360:	89 86 fc 00 00 00    	mov    DWORD PTR [esi+0xfc],eax
    a366:	85 c0                	test   eax,eax
    a368:	75 0f                	jne    W?$ct:SOUND_SPOOL$n(i)__branch_2
    a36a:	bb 14 07 00 00       	mov    ebx,@obj3:sound_cpp_variable_2                               ; fixup: num: 1314, src obj: 1, src ofs: 0xa36b, dst obj: 3, dst ofs: 0x714
    a36f:	ba f9 03 00 00       	mov    edx,0x3f9
    a374:	e8 b7 dc 02 00       	call   _error_report
W?$ct:SOUND_SPOOL$n(i)__branch_2:
    a379:	68 00 80 00 00       	push   0x8000
    a37e:	8b 8e b0 00 00 00    	mov    ecx,DWORD PTR [esi+0xb0]
    a384:	51                   	push   ecx
    a385:	e8 6d 67 06 00       	call   _D32Lock
    a38a:	83 c4 08             	add    esp,0x8
    a38d:	68 00 20 00 00       	push   0x2000
    a392:	8b be fc 00 00 00    	mov    edi,DWORD PTR [esi+0xfc]
    a398:	57                   	push   edi
    a399:	e8 59 67 06 00       	call   _D32Lock
    a39e:	83 c4 08             	add    esp,0x8
    a3a1:	b8 80 00 00 00       	mov    eax,0x80
    a3a6:	e8 e8 70 06 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
    a3ab:	89 86 00 01 00 00    	mov    DWORD PTR [esi+0x100],eax
    a3b1:	85 c0                	test   eax,eax
    a3b3:	75 0f                	jne    W?$ct:SOUND_SPOOL$n(i)__branch_3
    a3b5:	bb 39 07 00 00       	mov    ebx,@obj3:sound_cpp_variable_3                               ; fixup: num: 1313, src obj: 1, src ofs: 0xa3b6, dst obj: 3, dst ofs: 0x739
    a3ba:	ba fc 03 00 00       	mov    edx,0x3fc
    a3bf:	e8 6c dc 02 00       	call   _error_report
W?$ct:SOUND_SPOOL$n(i)__branch_3:
    a3c4:	8b 86 00 01 00 00    	mov    eax,DWORD PTR [esi+0x100]
    a3ca:	bb 10 00 00 00       	mov    ebx,0x10
    a3cf:	ba 22 56 00 00       	mov    edx,0x5622
    a3d4:	c6 00 00             	mov    BYTE PTR [eax],0x0
    a3d7:	89 f0                	mov    eax,esi
    a3d9:	8b 8e ac 00 00 00    	mov    ecx,DWORD PTR [esi+0xac]
    a3df:	e8 0c e9 ff ff       	call   initialize_buffer
    a3e4:	80 3d b4 a1 01 00 00 	cmp    BYTE PTR ds:@obj3:the_sound_system_variable_3,0x0            ; fixup: num: 1312, src obj: 1, src ofs: 0xa3e6, dst obj: 3, dst ofs: 0x1a1b4
    a3eb:	74 10                	je     W?$ct:SOUND_SPOOL$n(i)__branch_4
    a3ed:	8a 56 35             	mov    dl,BYTE PTR [esi+0x35]
    a3f0:	c7 46 18 ff ff ff ff 	mov    DWORD PTR [esi+0x18],0xffffffff
    a3f7:	80 ca 40             	or     dl,0x40
    a3fa:	88 56 35             	mov    BYTE PTR [esi+0x35],dl
W?$ct:SOUND_SPOOL$n(i)__branch_4:
    a3fd:	c6 86 91 00 00 00 00 	mov    BYTE PTR [esi+0x91],0x0
    a404:	c7 86 88 00 00 00 ff ff ff ff 	mov    DWORD PTR [esi+0x88],0xffffffff
    a40e:	c7 86 98 00 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x98],0x0
    a418:	8b 86 98 00 00 00    	mov    eax,DWORD PTR [esi+0x98]
    a41e:	89 86 94 00 00 00    	mov    DWORD PTR [esi+0x94],eax
    a424:	e8 d9 7c 06 00       	call   clock_
    a429:	89 86 b4 00 00 00    	mov    DWORD PTR [esi+0xb4],eax
    a42f:	89 f0                	mov    eax,esi
    a431:	5f                   	pop    edi
    a432:	5e                   	pop    esi
    a433:	59                   	pop    ecx
    a434:	5b                   	pop    ebx
    a435:	c3                   	ret    
    a436:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    a43c:	8d 54 22 00          	lea    edx,[edx+eiz*1+0x0]

;-------------------------------------------------
;  Function 'W?$dt:SOUND_SPOOL$n()_'             -
;-------------------------------------------------
W?$dt:SOUND_SPOOL$n()_:
    a440:	53                   	push   ebx
    a441:	51                   	push   ecx
    a442:	56                   	push   esi
    a443:	57                   	push   edi
    a444:	55                   	push   ebp
    a445:	89 c6                	mov    esi,eax
    a447:	89 c7                	mov    edi,eax
    a449:	8a 25 b4 a1 01 00    	mov    ah,BYTE PTR ds:@obj3:the_sound_system_variable_3             ; fixup: num: 1320, src obj: 1, src ofs: 0xa44b, dst obj: 3, dst ofs: 0x1a1b4
    a44f:	84 e4                	test   ah,ah
    a451:	0f 84 82 00 00 00    	je     W?$dt:SOUND_SPOOL$n()__branch_5
    a457:	74 52                	je     W?$dt:SOUND_SPOOL$n()__branch_3
    a459:	8b 16                	mov    edx,DWORD PTR [esi]
    a45b:	8d 04 95 00 00 00 00 	lea    eax,[edx*4+0x0]
    a462:	29 d0                	sub    eax,edx
    a464:	01 c0                	add    eax,eax
    a466:	83 b8 5c 44 01 00 00 	cmp    DWORD PTR [eax+@obj3:__lpSOSSampleList],0x0                  ; fixup: num: 1319, src obj: 1, src ofs: 0xa468, dst obj: 3, dst ofs: 0x1445c
    a46d:	75 0a                	jne    W?$dt:SOUND_SPOOL$n()__branch_1
    a46f:	66 83 b8 60 44 01 00 00 	cmp    WORD PTR [eax+@obj3:__lpSOSSampleList_variable_1],0x0     ; fixup: num: 1318, src obj: 1, src ofs: 0xa472, dst obj: 3, dst ofs: 0x14460
    a477:	74 32                	je     W?$dt:SOUND_SPOOL$n()__branch_3
W?$dt:SOUND_SPOOL$n()__branch_1:
    a479:	0f b5 80 5c 44 01 00 	lgs    eax,FWORD PTR [eax+@obj3:__lpSOSSampleList]                  ; fixup: num: 1317, src obj: 1, src ofs: 0xa47c, dst obj: 3, dst ofs: 0x1445c
    a480:	0f bf 5e 08          	movsx  ebx,WORD PTR [esi+0x8]
    a484:	65 0f bf 40 34       	movsx  eax,WORD PTR gs:[eax+0x34]
    a489:	39 c3                	cmp    ebx,eax
    a48b:	75 1e                	jne    W?$dt:SOUND_SPOOL$n()__branch_3
    a48d:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 1316, src obj: 1, src ofs: 0xa48e, dst obj: 3, dst ofs: 0x1a1ac
    a492:	e8 5a b7 06 00       	call   sosDIGISampleDone_
    a497:	83 f8 01             	cmp    eax,0x1
    a49a:	75 0b                	jne    W?$dt:SOUND_SPOOL$n()__branch_2
    a49c:	66 c7 46 08 00 00    	mov    WORD PTR [esi+0x8],0x0
    a4a2:	8a 46 08             	mov    al,BYTE PTR [esi+0x8]
    a4a5:	eb 06                	jmp    W?$dt:SOUND_SPOOL$n()__branch_4
W?$dt:SOUND_SPOOL$n()__branch_2:
    a4a7:	b0 01                	mov    al,0x1
    a4a9:	eb 02                	jmp    W?$dt:SOUND_SPOOL$n()__branch_4
W?$dt:SOUND_SPOOL$n()__branch_3:
    a4ab:	30 c0                	xor    al,al
W?$dt:SOUND_SPOOL$n()__branch_4:
    a4ad:	84 c0                	test   al,al
    a4af:	74 28                	je     W?$dt:SOUND_SPOOL$n()__branch_5
    a4b1:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 1315, src obj: 1, src ofs: 0xa4b2, dst obj: 3, dst ofs: 0x1a1ac
    a4b6:	8b 17                	mov    edx,DWORD PTR [edi]
    a4b8:	66 c7 47 08 00 00    	mov    WORD PTR [edi+0x8],0x0
    a4be:	e8 5c 90 06 00       	call   sosDIGIStopSample_
    a4c3:	83 f8 0a             	cmp    eax,0xa
    a4c6:	75 11                	jne    W?$dt:SOUND_SPOOL$n()__branch_5
    a4c8:	bb 69 0b 00 00       	mov    ebx,@obj3:sound_cpp_variable_32                              ; fixup: num: 1325, src obj: 1, src ofs: 0xa4c9, dst obj: 3, dst ofs: 0xb69
    a4cd:	ba fd 02 00 00       	mov    edx,0x2fd
    a4d2:	31 c0                	xor    eax,eax
    a4d4:	e8 57 db 02 00       	call   _error_report
W?$dt:SOUND_SPOOL$n()__branch_5:
    a4d9:	68 00 80 00 00       	push   0x8000
    a4de:	8b 8e b0 00 00 00    	mov    ecx,DWORD PTR [esi+0xb0]
    a4e4:	51                   	push   ecx
    a4e5:	e8 d7 65 06 00       	call   _D32Unlock
    a4ea:	83 c4 08             	add    esp,0x8
    a4ed:	68 00 20 00 00       	push   0x2000
    a4f2:	8b be fc 00 00 00    	mov    edi,DWORD PTR [esi+0xfc]
    a4f8:	57                   	push   edi
    a4f9:	e8 c3 65 06 00       	call   _D32Unlock
    a4fe:	83 c4 08             	add    esp,0x8
    a501:	8b 86 b0 00 00 00    	mov    eax,DWORD PTR [esi+0xb0]
    a507:	e8 dc 6e 06 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
    a50c:	8b 86 fc 00 00 00    	mov    eax,DWORD PTR [esi+0xfc]
    a512:	89 f5                	mov    ebp,esi
    a514:	e8 cf 6e 06 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
    a519:	8b 86 00 01 00 00    	mov    eax,DWORD PTR [esi+0x100]
    a51f:	89 f7                	mov    edi,esi
    a521:	e8 c2 6e 06 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
    a526:	8b 46 0c             	mov    eax,DWORD PTR [esi+0xc]
    a529:	c7 46 04 00 00 00 00 	mov    DWORD PTR [esi+0x4],0x0
    a530:	85 c0                	test   eax,eax
    a532:	0f 84 d7 00 00 00    	je     W?$dt:SOUND_SPOOL$n()__branch_11
    a538:	80 3d b4 a1 01 00 00 	cmp    BYTE PTR ds:@obj3:the_sound_system_variable_3,0x0            ; fixup: num: 1324, src obj: 1, src ofs: 0xa53a, dst obj: 3, dst ofs: 0x1a1b4
    a53f:	74 56                	je     W?$dt:SOUND_SPOOL$n()__branch_8
    a541:	8b 16                	mov    edx,DWORD PTR [esi]
    a543:	8d 04 95 00 00 00 00 	lea    eax,[edx*4+0x0]
    a54a:	29 d0                	sub    eax,edx
    a54c:	01 c0                	add    eax,eax
    a54e:	8b 98 5c 44 01 00    	mov    ebx,DWORD PTR [eax+@obj3:__lpSOSSampleList]                  ; fixup: num: 1323, src obj: 1, src ofs: 0xa550, dst obj: 3, dst ofs: 0x1445c
    a554:	66 8b 88 60 44 01 00 	mov    cx,WORD PTR [eax+@obj3:__lpSOSSampleList_variable_1]         ; fixup: num: 1322, src obj: 1, src ofs: 0xa557, dst obj: 3, dst ofs: 0x14460
    a55b:	85 db                	test   ebx,ebx
    a55d:	75 05                	jne    W?$dt:SOUND_SPOOL$n()__branch_6
    a55f:	66 85 c9             	test   cx,cx
    a562:	74 33                	je     W?$dt:SOUND_SPOOL$n()__branch_8
W?$dt:SOUND_SPOOL$n()__branch_6:
    a564:	8e a8 60 44 01 00    	mov    gs,WORD PTR [eax+@obj3:__lpSOSSampleList_variable_1]         ; fixup: num: 1321, src obj: 1, src ofs: 0xa566, dst obj: 3, dst ofs: 0x14460
    a56a:	89 d8                	mov    eax,ebx
    a56c:	65 0f bf 40 34       	movsx  eax,WORD PTR gs:[eax+0x34]
    a571:	0f bf 5e 08          	movsx  ebx,WORD PTR [esi+0x8]
    a575:	39 c3                	cmp    ebx,eax
    a577:	75 1e                	jne    W?$dt:SOUND_SPOOL$n()__branch_8
    a579:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 1329, src obj: 1, src ofs: 0xa57a, dst obj: 3, dst ofs: 0x1a1ac
    a57e:	e8 6e b6 06 00       	call   sosDIGISampleDone_
    a583:	83 f8 01             	cmp    eax,0x1
    a586:	75 0b                	jne    W?$dt:SOUND_SPOOL$n()__branch_7
    a588:	66 c7 46 08 00 00    	mov    WORD PTR [esi+0x8],0x0
    a58e:	8a 46 08             	mov    al,BYTE PTR [esi+0x8]
    a591:	eb 06                	jmp    W?$dt:SOUND_SPOOL$n()__branch_9
W?$dt:SOUND_SPOOL$n()__branch_7:
    a593:	b0 01                	mov    al,0x1
    a595:	eb 02                	jmp    W?$dt:SOUND_SPOOL$n()__branch_9
W?$dt:SOUND_SPOOL$n()__branch_8:
    a597:	30 c0                	xor    al,al
W?$dt:SOUND_SPOOL$n()__branch_9:
    a599:	84 c0                	test   al,al
    a59b:	74 3c                	je     W?$dt:SOUND_SPOOL$n()__branch_10
    a59d:	80 3d b4 a1 01 00 00 	cmp    BYTE PTR ds:@obj3:the_sound_system_variable_3,0x0            ; fixup: num: 1328, src obj: 1, src ofs: 0xa59f, dst obj: 3, dst ofs: 0x1a1b4
    a5a4:	74 33                	je     W?$dt:SOUND_SPOOL$n()__branch_10
    a5a6:	89 f8                	mov    eax,edi
    a5a8:	e8 33 f3 ff ff       	call   playing
    a5ad:	84 c0                	test   al,al
    a5af:	74 28                	je     W?$dt:SOUND_SPOOL$n()__branch_10
    a5b1:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 1327, src obj: 1, src ofs: 0xa5b2, dst obj: 3, dst ofs: 0x1a1ac
    a5b6:	8b 17                	mov    edx,DWORD PTR [edi]
    a5b8:	66 c7 47 08 00 00    	mov    WORD PTR [edi+0x8],0x0
    a5be:	e8 5c 8f 06 00       	call   sosDIGIStopSample_
    a5c3:	83 f8 0a             	cmp    eax,0xa
    a5c6:	75 11                	jne    W?$dt:SOUND_SPOOL$n()__branch_10
    a5c8:	bb 69 0b 00 00       	mov    ebx,@obj3:sound_cpp_variable_32                              ; fixup: num: 1326, src obj: 1, src ofs: 0xa5c9, dst obj: 3, dst ofs: 0xb69
    a5cd:	ba fd 02 00 00       	mov    edx,0x2fd
    a5d2:	31 c0                	xor    eax,eax
    a5d4:	e8 57 da 02 00       	call   _error_report
W?$dt:SOUND_SPOOL$n()__branch_10:
    a5d9:	8b 4f 14             	mov    ecx,DWORD PTR [edi+0x14]
    a5dc:	51                   	push   ecx
    a5dd:	8b 47 0c             	mov    eax,DWORD PTR [edi+0xc]
    a5e0:	50                   	push   eax
    a5e1:	e8 db 64 06 00       	call   _D32Unlock
    a5e6:	8b 77 0c             	mov    esi,DWORD PTR [edi+0xc]
    a5e9:	66 8b 47 10          	mov    ax,WORD PTR [edi+0x10]
    a5ed:	83 ee 2c             	sub    esi,0x2c
    a5f0:	66 89 47 10          	mov    WORD PTR [edi+0x10],ax
    a5f4:	89 77 0c             	mov    DWORD PTR [edi+0xc],esi
    a5f7:	83 c4 08             	add    esp,0x8
    a5fa:	8b 47 0c             	mov    eax,DWORD PTR [edi+0xc]
    a5fd:	e8 e6 6d 06 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
    a602:	66 c7 47 10 00 00    	mov    WORD PTR [edi+0x10],0x0
    a608:	c7 47 0c 00 00 00 00 	mov    DWORD PTR [edi+0xc],0x0
W?$dt:SOUND_SPOOL$n()__branch_11:
    a60f:	89 e8                	mov    eax,ebp
    a611:	66 c7 47 08 00 00    	mov    WORD PTR [edi+0x8],0x0
    a617:	5d                   	pop    ebp
    a618:	5f                   	pop    edi
    a619:	5e                   	pop    esi
    a61a:	59                   	pop    ecx
    a61b:	5b                   	pop    ebx
    a61c:	c3                   	ret    
    a61d:	8d 40 00             	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'pause'                              -
;-------------------------------------------------
pause:
    a620:	53                   	push   ebx
    a621:	51                   	push   ecx
    a622:	52                   	push   edx
    a623:	56                   	push   esi
    a624:	89 c3                	mov    ebx,eax
    a626:	83 b8 88 00 00 00 ff 	cmp    DWORD PTR [eax+0x88],0xffffffff
    a62d:	0f 84 fe 00 00 00    	je     pause_branch_9
    a633:	c6 80 91 00 00 00 01 	mov    BYTE PTR [eax+0x91],0x1
    a63a:	80 3d b4 a1 01 00 00 	cmp    BYTE PTR ds:@obj3:the_sound_system_variable_3,0x0            ; fixup: num: 1336, src obj: 1, src ofs: 0xa63c, dst obj: 3, dst ofs: 0x1a1b4
    a641:	74 52                	je     pause_branch_3
    a643:	8b 13                	mov    edx,DWORD PTR [ebx]
    a645:	8d 04 95 00 00 00 00 	lea    eax,[edx*4+0x0]
    a64c:	29 d0                	sub    eax,edx
    a64e:	01 c0                	add    eax,eax
    a650:	83 b8 5c 44 01 00 00 	cmp    DWORD PTR [eax+@obj3:__lpSOSSampleList],0x0                  ; fixup: num: 1335, src obj: 1, src ofs: 0xa652, dst obj: 3, dst ofs: 0x1445c
    a657:	75 0a                	jne    pause_branch_1
    a659:	66 83 b8 60 44 01 00 00 	cmp    WORD PTR [eax+@obj3:__lpSOSSampleList_variable_1],0x0     ; fixup: num: 1334, src obj: 1, src ofs: 0xa65c, dst obj: 3, dst ofs: 0x14460
    a661:	74 32                	je     pause_branch_3
pause_branch_1:
    a663:	0f b5 80 5c 44 01 00 	lgs    eax,FWORD PTR [eax+@obj3:__lpSOSSampleList]                  ; fixup: num: 1333, src obj: 1, src ofs: 0xa666, dst obj: 3, dst ofs: 0x1445c
    a66a:	0f bf 4b 08          	movsx  ecx,WORD PTR [ebx+0x8]
    a66e:	65 0f bf 40 34       	movsx  eax,WORD PTR gs:[eax+0x34]
    a673:	39 c1                	cmp    ecx,eax
    a675:	75 1e                	jne    pause_branch_3
    a677:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 1332, src obj: 1, src ofs: 0xa678, dst obj: 3, dst ofs: 0x1a1ac
    a67c:	e8 70 b5 06 00       	call   sosDIGISampleDone_
    a681:	83 f8 01             	cmp    eax,0x1
    a684:	75 0b                	jne    pause_branch_2
    a686:	66 c7 43 08 00 00    	mov    WORD PTR [ebx+0x8],0x0
    a68c:	8a 43 08             	mov    al,BYTE PTR [ebx+0x8]
    a68f:	eb 06                	jmp    pause_branch_4
pause_branch_2:
    a691:	b0 01                	mov    al,0x1
    a693:	eb 02                	jmp    pause_branch_4
pause_branch_3:
    a695:	30 c0                	xor    al,al
pause_branch_4:
    a697:	84 c0                	test   al,al
    a699:	0f 84 92 00 00 00    	je     pause_branch_9
    a69f:	8a 15 b4 a1 01 00    	mov    dl,BYTE PTR ds:@obj3:the_sound_system_variable_3             ; fixup: num: 1331, src obj: 1, src ofs: 0xa6a1, dst obj: 3, dst ofs: 0x1a1b4
    a6a5:	89 d9                	mov    ecx,ebx
    a6a7:	84 d2                	test   dl,dl
    a6a9:	0f 84 82 00 00 00    	je     pause_branch_9
    a6af:	74 52                	je     pause_branch_7
    a6b1:	8b 13                	mov    edx,DWORD PTR [ebx]
    a6b3:	8d 04 95 00 00 00 00 	lea    eax,[edx*4+0x0]
    a6ba:	29 d0                	sub    eax,edx
    a6bc:	01 c0                	add    eax,eax
    a6be:	83 b8 5c 44 01 00 00 	cmp    DWORD PTR [eax+@obj3:__lpSOSSampleList],0x0                  ; fixup: num: 1330, src obj: 1, src ofs: 0xa6c0, dst obj: 3, dst ofs: 0x1445c
    a6c5:	75 0a                	jne    pause_branch_5
    a6c7:	66 83 b8 60 44 01 00 00 	cmp    WORD PTR [eax+@obj3:__lpSOSSampleList_variable_1],0x0     ; fixup: num: 1342, src obj: 1, src ofs: 0xa6ca, dst obj: 3, dst ofs: 0x14460
    a6cf:	74 32                	je     pause_branch_7
pause_branch_5:
    a6d1:	0f b5 80 5c 44 01 00 	lgs    eax,FWORD PTR [eax+@obj3:__lpSOSSampleList]                  ; fixup: num: 1341, src obj: 1, src ofs: 0xa6d4, dst obj: 3, dst ofs: 0x1445c
    a6d8:	65 0f bf 70 34       	movsx  esi,WORD PTR gs:[eax+0x34]
    a6dd:	0f bf 43 08          	movsx  eax,WORD PTR [ebx+0x8]
    a6e1:	39 f0                	cmp    eax,esi
    a6e3:	75 1e                	jne    pause_branch_7
    a6e5:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 1340, src obj: 1, src ofs: 0xa6e6, dst obj: 3, dst ofs: 0x1a1ac
    a6ea:	e8 02 b5 06 00       	call   sosDIGISampleDone_
    a6ef:	83 f8 01             	cmp    eax,0x1
    a6f2:	75 0b                	jne    pause_branch_6
    a6f4:	66 c7 43 08 00 00    	mov    WORD PTR [ebx+0x8],0x0
    a6fa:	8a 43 08             	mov    al,BYTE PTR [ebx+0x8]
    a6fd:	eb 06                	jmp    pause_branch_8
pause_branch_6:
    a6ff:	b0 01                	mov    al,0x1
    a701:	eb 02                	jmp    pause_branch_8
pause_branch_7:
    a703:	30 c0                	xor    al,al
pause_branch_8:
    a705:	84 c0                	test   al,al
    a707:	74 28                	je     pause_branch_9
    a709:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 1339, src obj: 1, src ofs: 0xa70a, dst obj: 3, dst ofs: 0x1a1ac
    a70e:	8b 11                	mov    edx,DWORD PTR [ecx]
    a710:	66 c7 41 08 00 00    	mov    WORD PTR [ecx+0x8],0x0
    a716:	e8 04 8e 06 00       	call   sosDIGIStopSample_
    a71b:	83 f8 0a             	cmp    eax,0xa
    a71e:	75 11                	jne    pause_branch_9
    a720:	bb 69 0b 00 00       	mov    ebx,@obj3:sound_cpp_variable_32                              ; fixup: num: 1338, src obj: 1, src ofs: 0xa721, dst obj: 3, dst ofs: 0xb69
    a725:	ba fd 02 00 00       	mov    edx,0x2fd
    a72a:	31 c0                	xor    eax,eax
    a72c:	e8 ff d8 02 00       	call   _error_report
pause_branch_9:
    a731:	5e                   	pop    esi
    a732:	5a                   	pop    edx
    a733:	59                   	pop    ecx
    a734:	5b                   	pop    ebx
    a735:	c3                   	ret    
    a736:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    a73c:	8d 54 22 00          	lea    edx,[edx+eiz*1+0x0]

;-------------------------------------------------
;  Function 'resume'                             -
;-------------------------------------------------
resume:
    a740:	53                   	push   ebx
    a741:	51                   	push   ecx
    a742:	52                   	push   edx
    a743:	56                   	push   esi
    a744:	57                   	push   edi
    a745:	55                   	push   ebp
    a746:	83 ec 04             	sub    esp,0x4
    a749:	89 c7                	mov    edi,eax
    a74b:	83 3d b0 0f 01 00 00 	cmp    DWORD PTR ds:@obj3:music_volume,0x0                          ; fixup: num: 1337, src obj: 1, src ofs: 0xa74d, dst obj: 3, dst ofs: 0x10fb0
    a752:	0f 84 7f 06 00 00    	je     resume_branch_43
    a758:	80 b8 91 00 00 00 00 	cmp    BYTE PTR [eax+0x91],0x0
    a75f:	0f 84 72 06 00 00    	je     resume_branch_43
    a765:	89 fe                	mov    esi,edi
    a767:	8b 9f 88 00 00 00    	mov    ebx,DWORD PTR [edi+0x88]
    a76d:	c7 47 04 00 00 00 00 	mov    DWORD PTR [edi+0x4],0x0
    a774:	83 fb ff             	cmp    ebx,0xffffffff
    a777:	0f 85 9f 00 00 00    	jne    resume_branch_5
    a77d:	8a 15 b4 a1 01 00    	mov    dl,BYTE PTR ds:@obj3:the_sound_system_variable_3             ; fixup: num: 1350, src obj: 1, src ofs: 0xa77f, dst obj: 3, dst ofs: 0x1a1b4
    a783:	89 fb                	mov    ebx,edi
    a785:	84 d2                	test   dl,dl
    a787:	0f 84 df 05 00 00    	je     resume_branch_40
    a78d:	74 52                	je     resume_branch_3
    a78f:	8b 17                	mov    edx,DWORD PTR [edi]
    a791:	8d 04 95 00 00 00 00 	lea    eax,[edx*4+0x0]
    a798:	29 d0                	sub    eax,edx
    a79a:	01 c0                	add    eax,eax
    a79c:	83 b8 5c 44 01 00 00 	cmp    DWORD PTR [eax+@obj3:__lpSOSSampleList],0x0                  ; fixup: num: 1349, src obj: 1, src ofs: 0xa79e, dst obj: 3, dst ofs: 0x1445c
    a7a3:	75 0a                	jne    resume_branch_1
    a7a5:	66 83 b8 60 44 01 00 00 	cmp    WORD PTR [eax+@obj3:__lpSOSSampleList_variable_1],0x0     ; fixup: num: 1348, src obj: 1, src ofs: 0xa7a8, dst obj: 3, dst ofs: 0x14460
    a7ad:	74 32                	je     resume_branch_3
resume_branch_1:
    a7af:	0f b5 80 5c 44 01 00 	lgs    eax,FWORD PTR [eax+@obj3:__lpSOSSampleList]                  ; fixup: num: 1347, src obj: 1, src ofs: 0xa7b2, dst obj: 3, dst ofs: 0x1445c
    a7b6:	65 0f bf 48 34       	movsx  ecx,WORD PTR gs:[eax+0x34]
    a7bb:	0f bf 47 08          	movsx  eax,WORD PTR [edi+0x8]
    a7bf:	39 c8                	cmp    eax,ecx
    a7c1:	75 1e                	jne    resume_branch_3
    a7c3:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 1346, src obj: 1, src ofs: 0xa7c4, dst obj: 3, dst ofs: 0x1a1ac
    a7c8:	e8 24 b4 06 00       	call   sosDIGISampleDone_
    a7cd:	83 f8 01             	cmp    eax,0x1
    a7d0:	75 0b                	jne    resume_branch_2
    a7d2:	66 c7 47 08 00 00    	mov    WORD PTR [edi+0x8],0x0
    a7d8:	8a 47 08             	mov    al,BYTE PTR [edi+0x8]
    a7db:	eb 06                	jmp    resume_branch_4
resume_branch_2:
    a7dd:	b0 01                	mov    al,0x1
    a7df:	eb 02                	jmp    resume_branch_4
resume_branch_3:
    a7e1:	30 c0                	xor    al,al
resume_branch_4:
    a7e3:	84 c0                	test   al,al
    a7e5:	0f 84 81 05 00 00    	je     resume_branch_40
    a7eb:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 1345, src obj: 1, src ofs: 0xa7ec, dst obj: 3, dst ofs: 0x1a1ac
    a7f0:	8b 13                	mov    edx,DWORD PTR [ebx]
    a7f2:	66 c7 43 08 00 00    	mov    WORD PTR [ebx+0x8],0x0
    a7f8:	e8 22 8d 06 00       	call   sosDIGIStopSample_
    a7fd:	83 f8 0a             	cmp    eax,0xa
    a800:	0f 85 66 05 00 00    	jne    resume_branch_40
    a806:	bb 69 0b 00 00       	mov    ebx,@obj3:sound_cpp_variable_32                              ; fixup: num: 1344, src obj: 1, src ofs: 0xa807, dst obj: 3, dst ofs: 0xb69
    a80b:	ba fd 02 00 00       	mov    edx,0x2fd
    a810:	31 c0                	xor    eax,eax
    a812:	e8 19 d8 02 00       	call   _error_report
    a817:	e9 50 05 00 00       	jmp    resume_branch_40
resume_branch_5:
    a81c:	80 3d b4 a1 01 00 00 	cmp    BYTE PTR ds:@obj3:the_sound_system_variable_3,0x0            ; fixup: num: 1343, src obj: 1, src ofs: 0xa81e, dst obj: 3, dst ofs: 0x1a1b4
    a823:	74 56                	je     resume_branch_8
    a825:	8b 17                	mov    edx,DWORD PTR [edi]
    a827:	8d 04 95 00 00 00 00 	lea    eax,[edx*4+0x0]
    a82e:	29 d0                	sub    eax,edx
    a830:	01 c0                	add    eax,eax
    a832:	8b 88 5c 44 01 00    	mov    ecx,DWORD PTR [eax+@obj3:__lpSOSSampleList]                  ; fixup: num: 1356, src obj: 1, src ofs: 0xa834, dst obj: 3, dst ofs: 0x1445c
    a838:	66 8b 98 60 44 01 00 	mov    bx,WORD PTR [eax+@obj3:__lpSOSSampleList_variable_1]         ; fixup: num: 1355, src obj: 1, src ofs: 0xa83b, dst obj: 3, dst ofs: 0x14460
    a83f:	85 c9                	test   ecx,ecx
    a841:	75 05                	jne    resume_branch_6
    a843:	66 85 db             	test   bx,bx
    a846:	74 33                	je     resume_branch_8
resume_branch_6:
    a848:	8e a8 60 44 01 00    	mov    gs,WORD PTR [eax+@obj3:__lpSOSSampleList_variable_1]         ; fixup: num: 1354, src obj: 1, src ofs: 0xa84a, dst obj: 3, dst ofs: 0x14460
    a84e:	89 c8                	mov    eax,ecx
    a850:	0f bf 5f 08          	movsx  ebx,WORD PTR [edi+0x8]
    a854:	65 0f bf 40 34       	movsx  eax,WORD PTR gs:[eax+0x34]
    a859:	39 c3                	cmp    ebx,eax
    a85b:	75 1e                	jne    resume_branch_8
    a85d:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 1353, src obj: 1, src ofs: 0xa85e, dst obj: 3, dst ofs: 0x1a1ac
    a862:	e8 8a b3 06 00       	call   sosDIGISampleDone_
    a867:	83 f8 01             	cmp    eax,0x1
    a86a:	75 0b                	jne    resume_branch_7
    a86c:	66 c7 47 08 00 00    	mov    WORD PTR [edi+0x8],0x0
    a872:	8a 47 08             	mov    al,BYTE PTR [edi+0x8]
    a875:	eb 06                	jmp    resume_branch_9
resume_branch_7:
    a877:	b0 01                	mov    al,0x1
    a879:	eb 02                	jmp    resume_branch_9
resume_branch_8:
    a87b:	30 c0                	xor    al,al
resume_branch_9:
    a87d:	84 c0                	test   al,al
    a87f:	0f 84 e7 04 00 00    	je     resume_branch_40
    a885:	80 be 91 00 00 00 00 	cmp    BYTE PTR [esi+0x91],0x0
    a88c:	0f 85 da 04 00 00    	jne    resume_branch_40
    a892:	80 be 90 00 00 00 00 	cmp    BYTE PTR [esi+0x90],0x0
    a899:	0f 84 6b 01 00 00    	je     resume_branch_14
    a89f:	80 be b8 00 00 00 00 	cmp    BYTE PTR [esi+0xb8],0x0
    a8a6:	0f 84 0f 01 00 00    	je     resume_branch_12
    a8ac:	bb 00 20 00 00       	mov    ebx,0x2000
    a8b1:	8b 96 fc 00 00 00    	mov    edx,DWORD PTR [esi+0xfc]
    a8b7:	8b 86 88 00 00 00    	mov    eax,DWORD PTR [esi+0x88]
    a8bd:	e8 a1 76 06 00       	call   read_
    a8c2:	a3 cc a1 01 00       	mov    ds:@obj3:wBytesRead,eax                                      ; fixup: num: 1352, src obj: 1, src ofs: 0xa8c3, dst obj: 3, dst ofs: 0x1a1cc
    a8c7:	83 f8 ff             	cmp    eax,0xffffffff
    a8ca:	75 11                	jne    resume_branch_10
    a8cc:	bb b2 0d 00 00       	mov    ebx,@obj3:sound_cpp_variable_54                              ; fixup: num: 1351, src obj: 1, src ofs: 0xa8cd, dst obj: 3, dst ofs: 0xdb2
    a8d1:	ba 6c 04 00 00       	mov    edx,0x46c
    a8d6:	31 c0                	xor    eax,eax
    a8d8:	e8 53 d7 02 00       	call   _error_report
resume_branch_10:
    a8dd:	a1 cc a1 01 00       	mov    eax,ds:@obj3:wBytesRead                                      ; fixup: num: 1359, src obj: 1, src ofs: 0xa8de, dst obj: 3, dst ofs: 0x1a1cc
    a8e2:	8d 8e bc 00 00 00    	lea    ecx,[esi+0xbc]
    a8e8:	3d 00 20 00 00       	cmp    eax,0x2000
    a8ed:	75 55                	jne    resume_branch_11
    a8ef:	8b 96 fc 00 00 00    	mov    edx,DWORD PTR [esi+0xfc]
    a8f5:	89 96 bc 00 00 00    	mov    DWORD PTR [esi+0xbc],edx
    a8fb:	8b 96 b0 00 00 00    	mov    edx,DWORD PTR [esi+0xb0]
    a901:	89 96 c4 00 00 00    	mov    DWORD PTR [esi+0xc4],edx
    a907:	31 d2                	xor    edx,edx
    a909:	66 8b 96 f8 00 00 00 	mov    dx,WORD PTR [esi+0xf8]
    a910:	89 d0                	mov    eax,edx
    a912:	c1 fa 1f             	sar    edx,0x1f
    a915:	c1 e2 02             	shl    edx,0x2
    a918:	1b c2                	sbb    eax,edx
    a91a:	c1 f8 02             	sar    eax,0x2
    a91d:	0f af 05 cc a1 01 00 	imul   eax,DWORD PTR ds:@obj3:wBytesRead                            ; fixup: num: 1358, src obj: 1, src ofs: 0xa920, dst obj: 3, dst ofs: 0x1a1cc
    a924:	50                   	push   eax
    a925:	8c 9e c0 00 00 00    	mov    WORD PTR [esi+0xc0],ds
    a92b:	51                   	push   ecx
    a92c:	8c 9e c8 00 00 00    	mov    WORD PTR [esi+0xc8],ds
    a932:	e8 ce 5b 06 00       	call   _sosCODECDecompressData
    a937:	83 c4 08             	add    esp,0x8
    a93a:	a3 cc a1 01 00       	mov    ds:@obj3:wBytesRead,eax                                      ; fixup: num: 1357, src obj: 1, src ofs: 0xa93b, dst obj: 3, dst ofs: 0x1a1cc
    a93f:	e9 c6 00 00 00       	jmp    resume_branch_14
resume_branch_11:
    a944:	ba 0e 00 00 00       	mov    edx,0xe
    a949:	8b 86 88 00 00 00    	mov    eax,DWORD PTR [esi+0x88]
    a94f:	31 db                	xor    ebx,ebx
    a951:	e8 79 75 06 00       	call   lseek_                                                       ; aliases: lseek_, _lseek_
    a956:	bb 30 00 00 00       	mov    ebx,0x30
    a95b:	89 c8                	mov    eax,ecx
    a95d:	31 d2                	xor    edx,edx
    a95f:	e8 6c 6a 06 00       	call   memset_
    a964:	8b 86 8c 00 00 00    	mov    eax,DWORD PTR [esi+0x8c]
    a96a:	31 d2                	xor    edx,edx
    a96c:	83 e8 0e             	sub    eax,0xe
    a96f:	66 8b 96 f8 00 00 00 	mov    dx,WORD PTR [esi+0xf8]
    a976:	89 86 cc 00 00 00    	mov    DWORD PTR [esi+0xcc],eax
    a97c:	89 d0                	mov    eax,edx
    a97e:	c1 fa 1f             	sar    edx,0x1f
    a981:	c1 e2 02             	shl    edx,0x2
    a984:	1b c2                	sbb    eax,edx
    a986:	c1 f8 02             	sar    eax,0x2
    a989:	89 c2                	mov    edx,eax
    a98b:	8b 86 cc 00 00 00    	mov    eax,DWORD PTR [esi+0xcc]
    a991:	0f af c2             	imul   eax,edx
    a994:	89 86 d0 00 00 00    	mov    DWORD PTR [esi+0xd0],eax
    a99a:	66 8b 86 f8 00 00 00 	mov    ax,WORD PTR [esi+0xf8]
    a9a1:	51                   	push   ecx
    a9a2:	66 89 86 e8 00 00 00 	mov    WORD PTR [esi+0xe8],ax
    a9a9:	e8 32 5b 06 00       	call   _sosCODECInitStream
    a9ae:	31 d2                	xor    edx,edx
    a9b0:	83 c4 04             	add    esp,0x4
    a9b3:	89 15 cc a1 01 00    	mov    DWORD PTR ds:@obj3:wBytesRead,edx                            ; fixup: num: 1247, src obj: 1, src ofs: 0xa9b5, dst obj: 3, dst ofs: 0x1a1cc
    a9b9:	eb 4f                	jmp    resume_branch_14
resume_branch_12:
    a9bb:	bb 00 20 00 00       	mov    ebx,0x2000
    a9c0:	8b 96 b0 00 00 00    	mov    edx,DWORD PTR [esi+0xb0]
    a9c6:	8b 86 88 00 00 00    	mov    eax,DWORD PTR [esi+0x88]
    a9cc:	e8 92 75 06 00       	call   read_
    a9d1:	a3 cc a1 01 00       	mov    ds:@obj3:wBytesRead,eax                                      ; fixup: num: 1246, src obj: 1, src ofs: 0xa9d2, dst obj: 3, dst ofs: 0x1a1cc
    a9d6:	83 f8 ff             	cmp    eax,0xffffffff
    a9d9:	75 11                	jne    resume_branch_13
    a9db:	bb d6 0d 00 00       	mov    ebx,@obj3:sound_cpp_variable_55                              ; fixup: num: 1362, src obj: 1, src ofs: 0xa9dc, dst obj: 3, dst ofs: 0xdd6
    a9e0:	ba 85 04 00 00       	mov    edx,0x485
    a9e5:	31 c0                	xor    eax,eax
    a9e7:	e8 44 d6 02 00       	call   _error_report
resume_branch_13:
    a9ec:	81 3d cc a1 01 00 00 20 00 00 	cmp    DWORD PTR ds:@obj3:wBytesRead,0x2000                ; fixup: num: 1361, src obj: 1, src ofs: 0xa9ee, dst obj: 3, dst ofs: 0x1a1cc
    a9f6:	74 12                	je     resume_branch_14
    a9f8:	ba 2c 00 00 00       	mov    edx,0x2c
    a9fd:	8b 86 88 00 00 00    	mov    eax,DWORD PTR [esi+0x88]
    aa03:	31 db                	xor    ebx,ebx
    aa05:	e8 c5 74 06 00       	call   lseek_                                                       ; aliases: lseek_, _lseek_
resume_branch_14:
    aa0a:	8b 8e 94 00 00 00    	mov    ecx,DWORD PTR [esi+0x94]
    aa10:	85 c9                	test   ecx,ecx
    aa12:	0f 84 99 01 00 00    	je     resume_branch_26
    aa18:	d9 86 a4 00 00 00    	fld    DWORD PTR [esi+0xa4]
    aa1e:	d8 0d ef 0d 00 00    	fmul   DWORD PTR ds:@obj3:sound_cpp_variable_56                     ; fixup: num: 1360, src obj: 1, src ofs: 0xaa20, dst obj: 3, dst ofs: 0xdef
    aa24:	e8 1f b3 06 00       	call   __CHP
    aa29:	db 1c 24             	fistp  DWORD PTR [esp]
    aa2c:	8b 96 a8 00 00 00    	mov    edx,DWORD PTR [esi+0xa8]
    aa32:	03 14 24             	add    edx,DWORD PTR [esp]
    aa35:	e8 c8 76 06 00       	call   clock_
    aa3a:	39 d0                	cmp    eax,edx
    aa3c:	0f 86 11 03 00 00    	jbe    resume_branch_39
    aa42:	e8 bb 76 06 00       	call   clock_
    aa47:	8b ae 94 00 00 00    	mov    ebp,DWORD PTR [esi+0x94]
    aa4d:	89 86 a8 00 00 00    	mov    DWORD PTR [esi+0xa8],eax
    aa53:	4d                   	dec    ebp
    aa54:	89 ae 94 00 00 00    	mov    DWORD PTR [esi+0x94],ebp
    aa5a:	0f 85 87 00 00 00    	jne    resume_branch_19
    aa60:	8b 0d b0 0f 01 00    	mov    ecx,DWORD PTR ds:@obj3:music_volume                          ; fixup: num: 1254, src obj: 1, src ofs: 0xaa62, dst obj: 3, dst ofs: 0x10fb0
    aa66:	31 c0                	xor    eax,eax
    aa68:	66 8b 0c 4d be 0f 01 00 	mov    cx,WORD PTR [ecx*2+@obj3:volume_table]                    ; fixup: num: 1253, src obj: 1, src ofs: 0xaa6c, dst obj: 3, dst ofs: 0x10fbe
    aa70:	66 89 c8             	mov    ax,cx
    aa73:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
    aa76:	80 4e 35 01          	or     BYTE PTR [esi+0x35],0x1
    aa7a:	8a 25 b4 a1 01 00    	mov    ah,BYTE PTR ds:@obj3:the_sound_system_variable_3             ; fixup: num: 1252, src obj: 1, src ofs: 0xaa7c, dst obj: 3, dst ofs: 0x1a1b4
    aa80:	89 f5                	mov    ebp,esi
    aa82:	84 e4                	test   ah,ah
    aa84:	74 52                	je     resume_branch_17
    aa86:	8b 16                	mov    edx,DWORD PTR [esi]
    aa88:	8d 04 95 00 00 00 00 	lea    eax,[edx*4+0x0]
    aa8f:	29 d0                	sub    eax,edx
    aa91:	01 c0                	add    eax,eax
    aa93:	83 b8 5c 44 01 00 00 	cmp    DWORD PTR [eax+@obj3:__lpSOSSampleList],0x0                  ; fixup: num: 1251, src obj: 1, src ofs: 0xaa95, dst obj: 3, dst ofs: 0x1445c
    aa9a:	75 0a                	jne    resume_branch_15
    aa9c:	66 83 b8 60 44 01 00 00 	cmp    WORD PTR [eax+@obj3:__lpSOSSampleList_variable_1],0x0     ; fixup: num: 1250, src obj: 1, src ofs: 0xaa9f, dst obj: 3, dst ofs: 0x14460
    aaa4:	74 32                	je     resume_branch_17
resume_branch_15:
    aaa6:	0f b5 80 5c 44 01 00 	lgs    eax,FWORD PTR [eax+@obj3:__lpSOSSampleList]                  ; fixup: num: 1249, src obj: 1, src ofs: 0xaaa9, dst obj: 3, dst ofs: 0x1445c
    aaad:	65 0f bf 58 34       	movsx  ebx,WORD PTR gs:[eax+0x34]
    aab2:	0f bf 46 08          	movsx  eax,WORD PTR [esi+0x8]
    aab6:	39 d8                	cmp    eax,ebx
    aab8:	75 1e                	jne    resume_branch_17
    aaba:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 1248, src obj: 1, src ofs: 0xaabb, dst obj: 3, dst ofs: 0x1a1ac
    aabf:	e8 2d b1 06 00       	call   sosDIGISampleDone_
    aac4:	83 f8 01             	cmp    eax,0x1
    aac7:	75 0b                	jne    resume_branch_16
    aac9:	66 c7 46 08 00 00    	mov    WORD PTR [esi+0x8],0x0
    aacf:	8a 46 08             	mov    al,BYTE PTR [esi+0x8]
    aad2:	eb 06                	jmp    resume_branch_18
resume_branch_16:
    aad4:	b0 01                	mov    al,0x1
    aad6:	eb 02                	jmp    resume_branch_18
resume_branch_17:
    aad8:	30 c0                	xor    al,al
resume_branch_18:
    aada:	84 c0                	test   al,al
    aadc:	0f 84 71 02 00 00    	je     resume_branch_39
    aae2:	e9 5a 02 00 00       	jmp    resume_branch_38
resume_branch_19:
    aae7:	8b 86 a0 00 00 00    	mov    eax,DWORD PTR [esi+0xa0]
    aaed:	8b 96 9c 00 00 00    	mov    edx,DWORD PTR [esi+0x9c]
    aaf3:	01 c2                	add    edx,eax
    aaf5:	8b 1d b0 0f 01 00    	mov    ebx,DWORD PTR ds:@obj3:music_volume                          ; fixup: num: 1261, src obj: 1, src ofs: 0xaaf7, dst obj: 3, dst ofs: 0x10fb0
    aafb:	89 96 9c 00 00 00    	mov    DWORD PTR [esi+0x9c],edx
    ab01:	39 da                	cmp    edx,ebx
    ab03:	7e 06                	jle    resume_branch_20
    ab05:	89 9e 9c 00 00 00    	mov    DWORD PTR [esi+0x9c],ebx
resume_branch_20:
    ab0b:	89 f5                	mov    ebp,esi
    ab0d:	8b 8e 9c 00 00 00    	mov    ecx,DWORD PTR [esi+0x9c]
    ab13:	8a 5e 35             	mov    bl,BYTE PTR [esi+0x35]
    ab16:	31 c0                	xor    eax,eax
    ab18:	66 8b 0c 4d be 0f 01 00 	mov    cx,WORD PTR [ecx*2+@obj3:volume_table]                    ; fixup: num: 1260, src obj: 1, src ofs: 0xab1c, dst obj: 3, dst ofs: 0x10fbe
    ab20:	80 cb 01             	or     bl,0x1
    ab23:	66 89 c8             	mov    ax,cx
    ab26:	88 5e 35             	mov    BYTE PTR [esi+0x35],bl
    ab29:	8a 3d b4 a1 01 00    	mov    bh,BYTE PTR ds:@obj3:the_sound_system_variable_3             ; fixup: num: 1259, src obj: 1, src ofs: 0xab2b, dst obj: 3, dst ofs: 0x1a1b4
    ab2f:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
    ab32:	84 ff                	test   bh,bh
    ab34:	75 04                	jne    resume_branch_21
    ab36:	30 c8                	xor    al,cl
    ab38:	eb 6a                	jmp    resume_branch_25
resume_branch_21:
    ab3a:	8b 16                	mov    edx,DWORD PTR [esi]
    ab3c:	8d 04 95 00 00 00 00 	lea    eax,[edx*4+0x0]
    ab43:	29 d0                	sub    eax,edx
    ab45:	01 c0                	add    eax,eax
    ab47:	83 b8 5c 44 01 00 00 	cmp    DWORD PTR [eax+@obj3:__lpSOSSampleList],0x0                  ; fixup: num: 1258, src obj: 1, src ofs: 0xab49, dst obj: 3, dst ofs: 0x1445c
    ab4e:	75 0a                	jne    resume_branch_22
    ab50:	66 83 b8 60 44 01 00 00 	cmp    WORD PTR [eax+@obj3:__lpSOSSampleList_variable_1],0x0     ; fixup: num: 1257, src obj: 1, src ofs: 0xab53, dst obj: 3, dst ofs: 0x14460
    ab58:	74 48                	je     resume_branch_24
resume_branch_22:
    ab5a:	0f b5 80 5c 44 01 00 	lgs    eax,FWORD PTR [eax+@obj3:__lpSOSSampleList]                  ; fixup: num: 1256, src obj: 1, src ofs: 0xab5d, dst obj: 3, dst ofs: 0x1445c
    ab61:	0f bf 5e 08          	movsx  ebx,WORD PTR [esi+0x8]
    ab65:	65 0f bf 40 34       	movsx  eax,WORD PTR gs:[eax+0x34]
    ab6a:	39 d8                	cmp    eax,ebx
    ab6c:	75 34                	jne    resume_branch_24
    ab6e:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 1255, src obj: 1, src ofs: 0xab6f, dst obj: 3, dst ofs: 0x1a1ac
    ab73:	e8 79 b0 06 00       	call   sosDIGISampleDone_
    ab78:	83 f8 01             	cmp    eax,0x1
    ab7b:	75 16                	jne    resume_branch_23
    ab7d:	66 c7 46 08 00 00    	mov    WORD PTR [esi+0x8],0x0
    ab83:	8a 46 08             	mov    al,BYTE PTR [esi+0x8]
    ab86:	84 c0                	test   al,al
    ab88:	0f 84 c5 01 00 00    	je     resume_branch_39
    ab8e:	e9 ae 01 00 00       	jmp    resume_branch_38
resume_branch_23:
    ab93:	b0 01                	mov    al,0x1
    ab95:	84 c0                	test   al,al
    ab97:	0f 84 b6 01 00 00    	je     resume_branch_39
    ab9d:	e9 9f 01 00 00       	jmp    resume_branch_38
resume_branch_24:
    aba2:	30 c0                	xor    al,al
resume_branch_25:
    aba4:	84 c0                	test   al,al
    aba6:	0f 84 a7 01 00 00    	je     resume_branch_39
    abac:	e9 90 01 00 00       	jmp    resume_branch_38
resume_branch_26:
    abb1:	83 be 98 00 00 00 00 	cmp    DWORD PTR [esi+0x98],0x0
    abb8:	0f 84 95 01 00 00    	je     resume_branch_39
    abbe:	d9 86 a4 00 00 00    	fld    DWORD PTR [esi+0xa4]
    abc4:	d8 0d ef 0d 00 00    	fmul   DWORD PTR ds:@obj3:sound_cpp_variable_56                     ; fixup: num: 1263, src obj: 1, src ofs: 0xabc6, dst obj: 3, dst ofs: 0xdef
    abca:	e8 79 b1 06 00       	call   __CHP
    abcf:	db 1c 24             	fistp  DWORD PTR [esp]
    abd2:	8b 96 a8 00 00 00    	mov    edx,DWORD PTR [esi+0xa8]
    abd8:	03 14 24             	add    edx,DWORD PTR [esp]
    abdb:	e8 22 75 06 00       	call   clock_
    abe0:	39 d0                	cmp    eax,edx
    abe2:	0f 86 6b 01 00 00    	jbe    resume_branch_39
    abe8:	e8 15 75 06 00       	call   clock_
    abed:	89 86 a8 00 00 00    	mov    DWORD PTR [esi+0xa8],eax
    abf3:	8b 96 98 00 00 00    	mov    edx,DWORD PTR [esi+0x98]
    abf9:	8b 9e 9c 00 00 00    	mov    ebx,DWORD PTR [esi+0x9c]
    abff:	8b 86 a0 00 00 00    	mov    eax,DWORD PTR [esi+0xa0]
    ac05:	4a                   	dec    edx
    ac06:	29 c3                	sub    ebx,eax
    ac08:	89 96 98 00 00 00    	mov    DWORD PTR [esi+0x98],edx
    ac0e:	89 9e 9c 00 00 00    	mov    DWORD PTR [esi+0x9c],ebx
    ac14:	85 db                	test   ebx,ebx
    ac16:	7d 06                	jge    resume_branch_27
    ac18:	89 8e 9c 00 00 00    	mov    DWORD PTR [esi+0x9c],ecx
resume_branch_27:
    ac1e:	8b 8e 9c 00 00 00    	mov    ecx,DWORD PTR [esi+0x9c]
    ac24:	31 c0                	xor    eax,eax
    ac26:	66 8b 0c 4d be 0f 01 00 	mov    cx,WORD PTR [ecx*2+@obj3:volume_table]                    ; fixup: num: 1262, src obj: 1, src ofs: 0xac2a, dst obj: 3, dst ofs: 0x10fbe
    ac2e:	66 89 c8             	mov    ax,cx
    ac31:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
    ac34:	80 4e 35 01          	or     BYTE PTR [esi+0x35],0x1
    ac38:	8a 25 b4 a1 01 00    	mov    ah,BYTE PTR ds:@obj3:the_sound_system_variable_3             ; fixup: num: 1271, src obj: 1, src ofs: 0xac3a, dst obj: 3, dst ofs: 0x1a1b4
    ac3e:	89 f5                	mov    ebp,esi
    ac40:	84 e4                	test   ah,ah
    ac42:	74 58                	je     resume_branch_30
    ac44:	8b 16                	mov    edx,DWORD PTR [esi]
    ac46:	8d 04 95 00 00 00 00 	lea    eax,[edx*4+0x0]
    ac4d:	29 d0                	sub    eax,edx
    ac4f:	01 c0                	add    eax,eax
    ac51:	83 b8 5c 44 01 00 00 	cmp    DWORD PTR [eax+@obj3:__lpSOSSampleList],0x0                  ; fixup: num: 1270, src obj: 1, src ofs: 0xac53, dst obj: 3, dst ofs: 0x1445c
    ac58:	75 0a                	jne    resume_branch_28
    ac5a:	66 83 b8 60 44 01 00 00 	cmp    WORD PTR [eax+@obj3:__lpSOSSampleList_variable_1],0x0     ; fixup: num: 1269, src obj: 1, src ofs: 0xac5d, dst obj: 3, dst ofs: 0x14460
    ac62:	74 38                	je     resume_branch_30
resume_branch_28:
    ac64:	0f b5 80 5c 44 01 00 	lgs    eax,FWORD PTR [eax+@obj3:__lpSOSSampleList]                  ; fixup: num: 1268, src obj: 1, src ofs: 0xac67, dst obj: 3, dst ofs: 0x1445c
    ac6b:	65 0f bf 40 34       	movsx  eax,WORD PTR gs:[eax+0x34]
    ac70:	89 04 24             	mov    DWORD PTR [esp],eax
    ac73:	8b 1c 24             	mov    ebx,DWORD PTR [esp]
    ac76:	0f bf 46 08          	movsx  eax,WORD PTR [esi+0x8]
    ac7a:	39 d8                	cmp    eax,ebx
    ac7c:	75 1e                	jne    resume_branch_30
    ac7e:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 1267, src obj: 1, src ofs: 0xac7f, dst obj: 3, dst ofs: 0x1a1ac
    ac83:	e8 69 af 06 00       	call   sosDIGISampleDone_
    ac88:	83 f8 01             	cmp    eax,0x1
    ac8b:	75 0b                	jne    resume_branch_29
    ac8d:	66 c7 46 08 00 00    	mov    WORD PTR [esi+0x8],0x0
    ac93:	8a 46 08             	mov    al,BYTE PTR [esi+0x8]
    ac96:	eb 06                	jmp    resume_branch_31
resume_branch_29:
    ac98:	b0 01                	mov    al,0x1
    ac9a:	eb 02                	jmp    resume_branch_31
resume_branch_30:
    ac9c:	30 c0                	xor    al,al
resume_branch_31:
    ac9e:	84 c0                	test   al,al
    aca0:	74 12                	je     resume_branch_32
    aca2:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 1266, src obj: 1, src ofs: 0xaca3, dst obj: 3, dst ofs: 0x1a1ac
    aca7:	31 db                	xor    ebx,ebx
    aca9:	8b 55 00             	mov    edx,DWORD PTR [ebp+0x0]
    acac:	66 89 cb             	mov    bx,cx
    acaf:	e8 5c a8 06 00       	call   sosDIGISetSampleVolume_
resume_branch_32:
    acb4:	83 be 98 00 00 00 00 	cmp    DWORD PTR [esi+0x98],0x0
    acbb:	0f 85 92 00 00 00    	jne    resume_branch_39
    acc1:	66 8b 0d be 0f 01 00 	mov    cx,WORD PTR ds:@obj3:volume_table                            ; fixup: num: 1265, src obj: 1, src ofs: 0xacc4, dst obj: 3, dst ofs: 0x10fbe
    acc8:	89 f5                	mov    ebp,esi
    acca:	8a 56 35             	mov    dl,BYTE PTR [esi+0x35]
    accd:	31 c0                	xor    eax,eax
    accf:	80 ca 01             	or     dl,0x1
    acd2:	66 89 c8             	mov    ax,cx
    acd5:	88 56 35             	mov    BYTE PTR [esi+0x35],dl
    acd8:	8a 35 b4 a1 01 00    	mov    dh,BYTE PTR ds:@obj3:the_sound_system_variable_3             ; fixup: num: 1264, src obj: 1, src ofs: 0xacda, dst obj: 3, dst ofs: 0x1a1b4
    acde:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
    ace1:	84 f6                	test   dh,dh
    ace3:	75 04                	jne    resume_branch_33
    ace5:	30 c8                	xor    al,cl
    ace7:	eb 54                	jmp    resume_branch_37
resume_branch_33:
    ace9:	8b 16                	mov    edx,DWORD PTR [esi]
    aceb:	8d 04 95 00 00 00 00 	lea    eax,[edx*4+0x0]
    acf2:	29 d0                	sub    eax,edx
    acf4:	01 c0                	add    eax,eax
    acf6:	83 b8 5c 44 01 00 00 	cmp    DWORD PTR [eax+@obj3:__lpSOSSampleList],0x0                  ; fixup: num: 1281, src obj: 1, src ofs: 0xacf8, dst obj: 3, dst ofs: 0x1445c
    acfd:	75 0a                	jne    resume_branch_34
    acff:	66 83 b8 60 44 01 00 00 	cmp    WORD PTR [eax+@obj3:__lpSOSSampleList_variable_1],0x0     ; fixup: num: 1280, src obj: 1, src ofs: 0xad02, dst obj: 3, dst ofs: 0x14460
    ad07:	74 32                	je     resume_branch_36
resume_branch_34:
    ad09:	0f b5 80 5c 44 01 00 	lgs    eax,FWORD PTR [eax+@obj3:__lpSOSSampleList]                  ; fixup: num: 1279, src obj: 1, src ofs: 0xad0c, dst obj: 3, dst ofs: 0x1445c
    ad10:	0f bf 5e 08          	movsx  ebx,WORD PTR [esi+0x8]
    ad14:	65 0f bf 40 34       	movsx  eax,WORD PTR gs:[eax+0x34]
    ad19:	39 d8                	cmp    eax,ebx
    ad1b:	75 1e                	jne    resume_branch_36
    ad1d:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 1278, src obj: 1, src ofs: 0xad1e, dst obj: 3, dst ofs: 0x1a1ac
    ad22:	e8 ca ae 06 00       	call   sosDIGISampleDone_
    ad27:	83 f8 01             	cmp    eax,0x1
    ad2a:	75 0b                	jne    resume_branch_35
    ad2c:	66 c7 46 08 00 00    	mov    WORD PTR [esi+0x8],0x0
    ad32:	8a 46 08             	mov    al,BYTE PTR [esi+0x8]
    ad35:	eb 06                	jmp    resume_branch_37
resume_branch_35:
    ad37:	b0 01                	mov    al,0x1
    ad39:	eb 02                	jmp    resume_branch_37
resume_branch_36:
    ad3b:	30 c0                	xor    al,al
resume_branch_37:
    ad3d:	84 c0                	test   al,al
    ad3f:	74 12                	je     resume_branch_39
resume_branch_38:
    ad41:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 1277, src obj: 1, src ofs: 0xad42, dst obj: 3, dst ofs: 0x1a1ac
    ad46:	31 db                	xor    ebx,ebx
    ad48:	8b 55 00             	mov    edx,DWORD PTR [ebp+0x0]
    ad4b:	66 89 cb             	mov    bx,cx
    ad4e:	e8 bd a7 06 00       	call   sosDIGISetSampleVolume_
resume_branch_39:
    ad53:	8b 1d cc a1 01 00    	mov    ebx,DWORD PTR ds:@obj3:wBytesRead                            ; fixup: num: 1276, src obj: 1, src ofs: 0xad55, dst obj: 3, dst ofs: 0x1a1cc
    ad59:	89 f0                	mov    eax,esi
    ad5b:	8b 96 b0 00 00 00    	mov    edx,DWORD PTR [esi+0xb0]
    ad61:	e8 da e1 ff ff       	call   insert_into_buffer
    ad66:	88 86 90 00 00 00    	mov    BYTE PTR [esi+0x90],al
resume_branch_40:
    ad6c:	8a 1d b4 a1 01 00    	mov    bl,BYTE PTR ds:@obj3:the_sound_system_variable_3             ; fixup: num: 1275, src obj: 1, src ofs: 0xad6e, dst obj: 3, dst ofs: 0x1a1b4
    ad72:	89 fe                	mov    esi,edi
    ad74:	84 db                	test   bl,bl
    ad76:	74 58                	je     resume_branch_42
    ad78:	8b 2d d4 2c 01 00    	mov    ebp,DWORD PTR ds:@obj3:id_counter                            ; fixup: num: 1274, src obj: 1, src ofs: 0xad7a, dst obj: 3, dst ofs: 0x12cd4
    ad7e:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 1273, src obj: 1, src ofs: 0xad7f, dst obj: 3, dst ofs: 0x1a1ac
    ad83:	8d 5f 0c             	lea    ebx,[edi+0xc]
    ad86:	45                   	inc    ebp
    ad87:	8c d9                	mov    ecx,ds
    ad89:	89 2d d4 2c 01 00    	mov    DWORD PTR ds:@obj3:id_counter,ebp                            ; fixup: num: 1272, src obj: 1, src ofs: 0xad8b, dst obj: 3, dst ofs: 0x12cd4
    ad8f:	e8 72 81 06 00       	call   sosDIGIStartSample_
    ad94:	89 07                	mov    DWORD PTR [edi],eax
    ad96:	83 f8 ff             	cmp    eax,0xffffffff
    ad99:	75 13                	jne    resume_branch_41
    ad9b:	e8 69 af 06 00       	call   sosGetErrorString_
    ada0:	ba da 02 00 00       	mov    edx,0x2da
    ada5:	89 c3                	mov    ebx,eax
    ada7:	31 c0                	xor    eax,eax
    ada9:	e8 82 d2 02 00       	call   _error_report
resume_branch_41:
    adae:	8b 16                	mov    edx,DWORD PTR [esi]
    adb0:	8d 04 95 00 00 00 00 	lea    eax,[edx*4+0x0]
    adb7:	29 d0                	sub    eax,edx
    adb9:	0f b5 14 45 5c 44 01 00 	lgs    edx,FWORD PTR [eax*2+@obj3:__lpSOSSampleList]             ; fixup: num: 1285, src obj: 1, src ofs: 0xadbd, dst obj: 3, dst ofs: 0x1445c
    adc1:	66 a1 d4 2c 01 00    	mov    ax,ds:@obj3:id_counter                                       ; fixup: num: 1284, src obj: 1, src ofs: 0xadc3, dst obj: 3, dst ofs: 0x12cd4
    adc7:	66 65 89 42 34       	mov    WORD PTR gs:[edx+0x34],ax
    adcc:	66 89 46 08          	mov    WORD PTR [esi+0x8],ax
resume_branch_42:
    add0:	c6 87 91 00 00 00 00 	mov    BYTE PTR [edi+0x91],0x0
resume_branch_43:
    add7:	83 c4 04             	add    esp,0x4
    adda:	5d                   	pop    ebp
    addb:	5f                   	pop    edi
    addc:	5e                   	pop    esi
    addd:	5a                   	pop    edx
    adde:	59                   	pop    ecx
    addf:	5b                   	pop    ebx
    ade0:	c3                   	ret    
    ade1:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    ade7:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
    aded:	8d 40 00             	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'fade_in'                            -
;-------------------------------------------------
fade_in:
    adf0:	53                   	push   ebx
    adf1:	51                   	push   ecx
    adf2:	52                   	push   edx
    adf3:	56                   	push   esi
    adf4:	57                   	push   edi
    adf5:	55                   	push   ebp
    adf6:	83 ec 04             	sub    esp,0x4
    adf9:	89 c7                	mov    edi,eax
    adfb:	83 b8 88 00 00 00 ff 	cmp    DWORD PTR [eax+0x88],0xffffffff
    ae02:	0f 84 99 05 00 00    	je     fade_in_branch_31
    ae08:	66 8b 1d be 0f 01 00 	mov    bx,WORD PTR ds:@obj3:volume_table                            ; fixup: num: 1283, src obj: 1, src ofs: 0xae0b, dst obj: 3, dst ofs: 0x10fbe
    ae0f:	89 c1                	mov    ecx,eax
    ae11:	31 c0                	xor    eax,eax
    ae13:	66 89 d8             	mov    ax,bx
    ae16:	89 47 20             	mov    DWORD PTR [edi+0x20],eax
    ae19:	8a 67 35             	mov    ah,BYTE PTR [edi+0x35]
    ae1c:	80 cc 01             	or     ah,0x1
    ae1f:	8a 15 b4 a1 01 00    	mov    dl,BYTE PTR ds:@obj3:the_sound_system_variable_3             ; fixup: num: 1282, src obj: 1, src ofs: 0xae21, dst obj: 3, dst ofs: 0x1a1b4
    ae25:	88 67 35             	mov    BYTE PTR [edi+0x35],ah
    ae28:	84 d2                	test   dl,dl
    ae2a:	75 04                	jne    fade_in_branch_1
    ae2c:	30 d8                	xor    al,bl
    ae2e:	eb 54                	jmp    fade_in_branch_5
fade_in_branch_1:
    ae30:	8b 17                	mov    edx,DWORD PTR [edi]
    ae32:	8d 04 95 00 00 00 00 	lea    eax,[edx*4+0x0]
    ae39:	29 d0                	sub    eax,edx
    ae3b:	01 c0                	add    eax,eax
    ae3d:	83 b8 5c 44 01 00 00 	cmp    DWORD PTR [eax+@obj3:__lpSOSSampleList],0x0                  ; fixup: num: 1293, src obj: 1, src ofs: 0xae3f, dst obj: 3, dst ofs: 0x1445c
    ae44:	75 0a                	jne    fade_in_branch_2
    ae46:	66 83 b8 60 44 01 00 00 	cmp    WORD PTR [eax+@obj3:__lpSOSSampleList_variable_1],0x0     ; fixup: num: 1292, src obj: 1, src ofs: 0xae49, dst obj: 3, dst ofs: 0x14460
    ae4e:	74 32                	je     fade_in_branch_4
fade_in_branch_2:
    ae50:	0f b5 80 5c 44 01 00 	lgs    eax,FWORD PTR [eax+@obj3:__lpSOSSampleList]                  ; fixup: num: 1291, src obj: 1, src ofs: 0xae53, dst obj: 3, dst ofs: 0x1445c
    ae57:	0f bf 77 08          	movsx  esi,WORD PTR [edi+0x8]
    ae5b:	65 0f bf 40 34       	movsx  eax,WORD PTR gs:[eax+0x34]
    ae60:	39 c6                	cmp    esi,eax
    ae62:	75 1e                	jne    fade_in_branch_4
    ae64:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 1290, src obj: 1, src ofs: 0xae65, dst obj: 3, dst ofs: 0x1a1ac
    ae69:	e8 83 ad 06 00       	call   sosDIGISampleDone_
    ae6e:	83 f8 01             	cmp    eax,0x1
    ae71:	75 0b                	jne    fade_in_branch_3
    ae73:	66 c7 47 08 00 00    	mov    WORD PTR [edi+0x8],0x0
    ae79:	8a 47 08             	mov    al,BYTE PTR [edi+0x8]
    ae7c:	eb 06                	jmp    fade_in_branch_5
fade_in_branch_3:
    ae7e:	b0 01                	mov    al,0x1
    ae80:	eb 02                	jmp    fade_in_branch_5
fade_in_branch_4:
    ae82:	30 c0                	xor    al,al
fade_in_branch_5:
    ae84:	84 c0                	test   al,al
    ae86:	74 12                	je     fade_in_branch_6
    ae88:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 1289, src obj: 1, src ofs: 0xae89, dst obj: 3, dst ofs: 0x1a1ac
    ae8d:	81 e3 ff ff 00 00    	and    ebx,0xffff
    ae93:	8b 11                	mov    edx,DWORD PTR [ecx]
    ae95:	e8 76 a6 06 00       	call   sosDIGISetSampleVolume_
fade_in_branch_6:
    ae9a:	a1 b0 0f 01 00       	mov    eax,ds:@obj3:music_volume                                    ; fixup: num: 1288, src obj: 1, src ofs: 0xae9b, dst obj: 3, dst ofs: 0x10fb0
    ae9f:	89 fd                	mov    ebp,edi
    aea1:	85 c0                	test   eax,eax
    aea3:	0f 84 8b 04 00 00    	je     fade_in_branch_27
    aea9:	80 bf 91 00 00 00 00 	cmp    BYTE PTR [edi+0x91],0x0
    aeb0:	0f 84 7e 04 00 00    	je     fade_in_branch_27
    aeb6:	89 fe                	mov    esi,edi
    aeb8:	8b 97 88 00 00 00    	mov    edx,DWORD PTR [edi+0x88]
    aebe:	c7 47 04 00 00 00 00 	mov    DWORD PTR [edi+0x4],0x0
    aec5:	83 fa ff             	cmp    edx,0xffffffff
    aec8:	75 4d                	jne    fade_in_branch_7
    aeca:	80 3d b4 a1 01 00 00 	cmp    BYTE PTR ds:@obj3:the_sound_system_variable_3,0x0            ; fixup: num: 1287, src obj: 1, src ofs: 0xaecc, dst obj: 3, dst ofs: 0x1a1b4
    aed1:	0f 84 f1 03 00 00    	je     fade_in_branch_24
    aed7:	89 f8                	mov    eax,edi
    aed9:	e8 02 ea ff ff       	call   playing
    aede:	84 c0                	test   al,al
    aee0:	0f 84 e2 03 00 00    	je     fade_in_branch_24
    aee6:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 1286, src obj: 1, src ofs: 0xaee7, dst obj: 3, dst ofs: 0x1a1ac
    aeeb:	8b 17                	mov    edx,DWORD PTR [edi]
    aeed:	66 c7 47 08 00 00    	mov    WORD PTR [edi+0x8],0x0
    aef3:	e8 27 86 06 00       	call   sosDIGIStopSample_
    aef8:	83 f8 0a             	cmp    eax,0xa
    aefb:	0f 85 c7 03 00 00    	jne    fade_in_branch_24
    af01:	bb 69 0b 00 00       	mov    ebx,@obj3:sound_cpp_variable_32                              ; fixup: num: 1299, src obj: 1, src ofs: 0xaf02, dst obj: 3, dst ofs: 0xb69
    af06:	ba fd 02 00 00       	mov    edx,0x2fd
    af0b:	31 c0                	xor    eax,eax
    af0d:	e8 1e d1 02 00       	call   _error_report
    af12:	e9 b1 03 00 00       	jmp    fade_in_branch_24
fade_in_branch_7:
    af17:	80 3d b4 a1 01 00 00 	cmp    BYTE PTR ds:@obj3:the_sound_system_variable_3,0x0            ; fixup: num: 1298, src obj: 1, src ofs: 0xaf19, dst obj: 3, dst ofs: 0x1a1b4
    af1e:	74 52                	je     fade_in_branch_10
    af20:	8b 17                	mov    edx,DWORD PTR [edi]
    af22:	8d 04 95 00 00 00 00 	lea    eax,[edx*4+0x0]
    af29:	29 d0                	sub    eax,edx
    af2b:	01 c0                	add    eax,eax
    af2d:	83 b8 5c 44 01 00 00 	cmp    DWORD PTR [eax+@obj3:__lpSOSSampleList],0x0                  ; fixup: num: 1297, src obj: 1, src ofs: 0xaf2f, dst obj: 3, dst ofs: 0x1445c
    af34:	75 0a                	jne    fade_in_branch_8
    af36:	66 83 b8 60 44 01 00 00 	cmp    WORD PTR [eax+@obj3:__lpSOSSampleList_variable_1],0x0     ; fixup: num: 1296, src obj: 1, src ofs: 0xaf39, dst obj: 3, dst ofs: 0x14460
    af3e:	74 32                	je     fade_in_branch_10
fade_in_branch_8:
    af40:	0f b5 80 5c 44 01 00 	lgs    eax,FWORD PTR [eax+@obj3:__lpSOSSampleList]                  ; fixup: num: 1295, src obj: 1, src ofs: 0xaf43, dst obj: 3, dst ofs: 0x1445c
    af47:	65 0f bf 58 34       	movsx  ebx,WORD PTR gs:[eax+0x34]
    af4c:	0f bf 47 08          	movsx  eax,WORD PTR [edi+0x8]
    af50:	39 d8                	cmp    eax,ebx
    af52:	75 1e                	jne    fade_in_branch_10
    af54:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 1294, src obj: 1, src ofs: 0xaf55, dst obj: 3, dst ofs: 0x1a1ac
    af59:	e8 93 ac 06 00       	call   sosDIGISampleDone_
    af5e:	83 f8 01             	cmp    eax,0x1
    af61:	75 0b                	jne    fade_in_branch_9
    af63:	66 c7 47 08 00 00    	mov    WORD PTR [edi+0x8],0x0
    af69:	8a 47 08             	mov    al,BYTE PTR [edi+0x8]
    af6c:	eb 06                	jmp    fade_in_branch_11
fade_in_branch_9:
    af6e:	b0 01                	mov    al,0x1
    af70:	eb 02                	jmp    fade_in_branch_11
fade_in_branch_10:
    af72:	30 c0                	xor    al,al
fade_in_branch_11:
    af74:	84 c0                	test   al,al
    af76:	0f 84 4c 03 00 00    	je     fade_in_branch_24
    af7c:	80 be 91 00 00 00 00 	cmp    BYTE PTR [esi+0x91],0x0
    af83:	0f 85 3f 03 00 00    	jne    fade_in_branch_24
    af89:	80 be 90 00 00 00 00 	cmp    BYTE PTR [esi+0x90],0x0
    af90:	0f 84 6b 01 00 00    	je     fade_in_branch_16
    af96:	80 be b8 00 00 00 00 	cmp    BYTE PTR [esi+0xb8],0x0
    af9d:	0f 84 0f 01 00 00    	je     fade_in_branch_14
    afa3:	bb 00 20 00 00       	mov    ebx,0x2000
    afa8:	8b 96 fc 00 00 00    	mov    edx,DWORD PTR [esi+0xfc]
    afae:	8b 86 88 00 00 00    	mov    eax,DWORD PTR [esi+0x88]
    afb4:	e8 aa 6f 06 00       	call   read_
    afb9:	a3 cc a1 01 00       	mov    ds:@obj3:wBytesRead,eax                                      ; fixup: num: 1302, src obj: 1, src ofs: 0xafba, dst obj: 3, dst ofs: 0x1a1cc
    afbe:	83 f8 ff             	cmp    eax,0xffffffff
    afc1:	75 11                	jne    fade_in_branch_12
    afc3:	bb b2 0d 00 00       	mov    ebx,@obj3:sound_cpp_variable_54                              ; fixup: num: 1301, src obj: 1, src ofs: 0xafc4, dst obj: 3, dst ofs: 0xdb2
    afc8:	ba 6c 04 00 00       	mov    edx,0x46c
    afcd:	31 c0                	xor    eax,eax
    afcf:	e8 5c d0 02 00       	call   _error_report
fade_in_branch_12:
    afd4:	a1 cc a1 01 00       	mov    eax,ds:@obj3:wBytesRead                                      ; fixup: num: 1300, src obj: 1, src ofs: 0xafd5, dst obj: 3, dst ofs: 0x1a1cc
    afd9:	8d 8e bc 00 00 00    	lea    ecx,[esi+0xbc]
    afdf:	3d 00 20 00 00       	cmp    eax,0x2000
    afe4:	75 55                	jne    fade_in_branch_13
    afe6:	8b 96 fc 00 00 00    	mov    edx,DWORD PTR [esi+0xfc]
    afec:	89 96 bc 00 00 00    	mov    DWORD PTR [esi+0xbc],edx
    aff2:	8b 96 b0 00 00 00    	mov    edx,DWORD PTR [esi+0xb0]
    aff8:	89 96 c4 00 00 00    	mov    DWORD PTR [esi+0xc4],edx
    affe:	31 d2                	xor    edx,edx
    b000:	66 8b 96 f8 00 00 00 	mov    dx,WORD PTR [esi+0xf8]
    b007:	89 d0                	mov    eax,edx
    b009:	c1 fa 1f             	sar    edx,0x1f
    b00c:	c1 e2 02             	shl    edx,0x2
    b00f:	1b c2                	sbb    eax,edx
    b011:	c1 f8 02             	sar    eax,0x2
    b014:	0f af 05 cc a1 01 00 	imul   eax,DWORD PTR ds:@obj3:wBytesRead                            ; fixup: num: 1433, src obj: 1, src ofs: 0xb017, dst obj: 3, dst ofs: 0x1a1cc
    b01b:	50                   	push   eax
    b01c:	8c 9e c0 00 00 00    	mov    WORD PTR [esi+0xc0],ds
    b022:	51                   	push   ecx
    b023:	8c 9e c8 00 00 00    	mov    WORD PTR [esi+0xc8],ds
    b029:	e8 d7 54 06 00       	call   _sosCODECDecompressData
    b02e:	83 c4 08             	add    esp,0x8
    b031:	a3 cc a1 01 00       	mov    ds:@obj3:wBytesRead,eax                                      ; fixup: num: 1432, src obj: 1, src ofs: 0xb032, dst obj: 3, dst ofs: 0x1a1cc
    b036:	e9 c6 00 00 00       	jmp    fade_in_branch_16
fade_in_branch_13:
    b03b:	ba 0e 00 00 00       	mov    edx,0xe
    b040:	8b 86 88 00 00 00    	mov    eax,DWORD PTR [esi+0x88]
    b046:	31 db                	xor    ebx,ebx
    b048:	e8 82 6e 06 00       	call   lseek_                                                       ; aliases: lseek_, _lseek_
    b04d:	bb 30 00 00 00       	mov    ebx,0x30
    b052:	89 c8                	mov    eax,ecx
    b054:	31 d2                	xor    edx,edx
    b056:	e8 75 63 06 00       	call   memset_
    b05b:	8b 86 8c 00 00 00    	mov    eax,DWORD PTR [esi+0x8c]
    b061:	31 d2                	xor    edx,edx
    b063:	83 e8 0e             	sub    eax,0xe
    b066:	66 8b 96 f8 00 00 00 	mov    dx,WORD PTR [esi+0xf8]
    b06d:	89 86 cc 00 00 00    	mov    DWORD PTR [esi+0xcc],eax
    b073:	89 d0                	mov    eax,edx
    b075:	c1 fa 1f             	sar    edx,0x1f
    b078:	c1 e2 02             	shl    edx,0x2
    b07b:	1b c2                	sbb    eax,edx
    b07d:	c1 f8 02             	sar    eax,0x2
    b080:	89 c2                	mov    edx,eax
    b082:	8b 86 cc 00 00 00    	mov    eax,DWORD PTR [esi+0xcc]
    b088:	0f af c2             	imul   eax,edx
    b08b:	89 86 d0 00 00 00    	mov    DWORD PTR [esi+0xd0],eax
    b091:	66 8b 86 f8 00 00 00 	mov    ax,WORD PTR [esi+0xf8]
    b098:	51                   	push   ecx
    b099:	66 89 86 e8 00 00 00 	mov    WORD PTR [esi+0xe8],ax
    b0a0:	e8 3b 54 06 00       	call   _sosCODECInitStream
    b0a5:	31 d2                	xor    edx,edx
    b0a7:	83 c4 04             	add    esp,0x4
    b0aa:	89 15 cc a1 01 00    	mov    DWORD PTR ds:@obj3:wBytesRead,edx                            ; fixup: num: 1437, src obj: 1, src ofs: 0xb0ac, dst obj: 3, dst ofs: 0x1a1cc
    b0b0:	eb 4f                	jmp    fade_in_branch_16
fade_in_branch_14:
    b0b2:	bb 00 20 00 00       	mov    ebx,0x2000
    b0b7:	8b 96 b0 00 00 00    	mov    edx,DWORD PTR [esi+0xb0]
    b0bd:	8b 86 88 00 00 00    	mov    eax,DWORD PTR [esi+0x88]
    b0c3:	e8 9b 6e 06 00       	call   read_
    b0c8:	a3 cc a1 01 00       	mov    ds:@obj3:wBytesRead,eax                                      ; fixup: num: 1436, src obj: 1, src ofs: 0xb0c9, dst obj: 3, dst ofs: 0x1a1cc
    b0cd:	83 f8 ff             	cmp    eax,0xffffffff
    b0d0:	75 11                	jne    fade_in_branch_15
    b0d2:	bb d6 0d 00 00       	mov    ebx,@obj3:sound_cpp_variable_55                              ; fixup: num: 1435, src obj: 1, src ofs: 0xb0d3, dst obj: 3, dst ofs: 0xdd6
    b0d7:	ba 85 04 00 00       	mov    edx,0x485
    b0dc:	31 c0                	xor    eax,eax
    b0de:	e8 4d cf 02 00       	call   _error_report
fade_in_branch_15:
    b0e3:	81 3d cc a1 01 00 00 20 00 00 	cmp    DWORD PTR ds:@obj3:wBytesRead,0x2000                ; fixup: num: 1434, src obj: 1, src ofs: 0xb0e5, dst obj: 3, dst ofs: 0x1a1cc
    b0ed:	74 12                	je     fade_in_branch_16
    b0ef:	ba 2c 00 00 00       	mov    edx,0x2c
    b0f4:	8b 86 88 00 00 00    	mov    eax,DWORD PTR [esi+0x88]
    b0fa:	31 db                	xor    ebx,ebx
    b0fc:	e8 ce 6d 06 00       	call   lseek_                                                       ; aliases: lseek_, _lseek_
fade_in_branch_16:
    b101:	83 be 94 00 00 00 00 	cmp    DWORD PTR [esi+0x94],0x0
    b108:	0f 84 cd 00 00 00    	je     fade_in_branch_19
    b10e:	d9 86 a4 00 00 00    	fld    DWORD PTR [esi+0xa4]
    b114:	d8 0d f3 0d 00 00    	fmul   DWORD PTR ds:@obj3:sound_cpp_variable_57                     ; fixup: num: 1441, src obj: 1, src ofs: 0xb116, dst obj: 3, dst ofs: 0xdf3
    b11a:	e8 29 ac 06 00       	call   __CHP
    b11f:	db 1c 24             	fistp  DWORD PTR [esp]
    b122:	8b 96 a8 00 00 00    	mov    edx,DWORD PTR [esi+0xa8]
    b128:	03 14 24             	add    edx,DWORD PTR [esp]
    b12b:	e8 d2 6f 06 00       	call   clock_
    b130:	39 d0                	cmp    eax,edx
    b132:	0f 86 77 01 00 00    	jbe    fade_in_branch_23
    b138:	e8 c5 6f 06 00       	call   clock_
    b13d:	8b 96 94 00 00 00    	mov    edx,DWORD PTR [esi+0x94]
    b143:	89 86 a8 00 00 00    	mov    DWORD PTR [esi+0xa8],eax
    b149:	4a                   	dec    edx
    b14a:	89 96 94 00 00 00    	mov    DWORD PTR [esi+0x94],edx
    b150:	75 32                	jne    fade_in_branch_17
    b152:	a1 b0 0f 01 00       	mov    eax,ds:@obj3:music_volume                                    ; fixup: num: 1440, src obj: 1, src ofs: 0xb153, dst obj: 3, dst ofs: 0x10fb0
    b157:	8a 76 35             	mov    dh,BYTE PTR [esi+0x35]
    b15a:	31 db                	xor    ebx,ebx
    b15c:	66 8b 04 45 be 0f 01 00 	mov    ax,WORD PTR [eax*2+@obj3:volume_table]                    ; fixup: num: 1439, src obj: 1, src ofs: 0xb160, dst obj: 3, dst ofs: 0x10fbe
    b164:	80 ce 01             	or     dh,0x1
    b167:	66 89 c3             	mov    bx,ax
    b16a:	88 76 35             	mov    BYTE PTR [esi+0x35],dh
    b16d:	89 f0                	mov    eax,esi
    b16f:	89 5e 20             	mov    DWORD PTR [esi+0x20],ebx
    b172:	e8 69 e7 ff ff       	call   playing
    b177:	84 c0                	test   al,al
    b179:	0f 84 30 01 00 00    	je     fade_in_branch_23
    b17f:	e9 1f 01 00 00       	jmp    fade_in_branch_22
fade_in_branch_17:
    b184:	8b 86 a0 00 00 00    	mov    eax,DWORD PTR [esi+0xa0]
    b18a:	8b 8e 9c 00 00 00    	mov    ecx,DWORD PTR [esi+0x9c]
    b190:	01 c1                	add    ecx,eax
    b192:	8b 15 b0 0f 01 00    	mov    edx,DWORD PTR ds:@obj3:music_volume                          ; fixup: num: 1438, src obj: 1, src ofs: 0xb194, dst obj: 3, dst ofs: 0x10fb0
    b198:	89 8e 9c 00 00 00    	mov    DWORD PTR [esi+0x9c],ecx
    b19e:	39 d1                	cmp    ecx,edx
    b1a0:	7e 06                	jle    fade_in_branch_18
    b1a2:	89 96 9c 00 00 00    	mov    DWORD PTR [esi+0x9c],edx
fade_in_branch_18:
    b1a8:	8b 86 9c 00 00 00    	mov    eax,DWORD PTR [esi+0x9c]
    b1ae:	8a 56 35             	mov    dl,BYTE PTR [esi+0x35]
    b1b1:	31 db                	xor    ebx,ebx
    b1b3:	66 8b 04 45 be 0f 01 00 	mov    ax,WORD PTR [eax*2+@obj3:volume_table]                    ; fixup: num: 1443, src obj: 1, src ofs: 0xb1b7, dst obj: 3, dst ofs: 0x10fbe
    b1bb:	80 ca 01             	or     dl,0x1
    b1be:	66 89 c3             	mov    bx,ax
    b1c1:	88 56 35             	mov    BYTE PTR [esi+0x35],dl
    b1c4:	89 f0                	mov    eax,esi
    b1c6:	89 5e 20             	mov    DWORD PTR [esi+0x20],ebx
    b1c9:	e8 12 e7 ff ff       	call   playing
    b1ce:	84 c0                	test   al,al
    b1d0:	0f 84 d9 00 00 00    	je     fade_in_branch_23
    b1d6:	e9 c8 00 00 00       	jmp    fade_in_branch_22
fade_in_branch_19:
    b1db:	83 be 98 00 00 00 00 	cmp    DWORD PTR [esi+0x98],0x0
    b1e2:	0f 84 c7 00 00 00    	je     fade_in_branch_23
    b1e8:	d9 86 a4 00 00 00    	fld    DWORD PTR [esi+0xa4]
    b1ee:	d8 0d f3 0d 00 00    	fmul   DWORD PTR ds:@obj3:sound_cpp_variable_57                     ; fixup: num: 1442, src obj: 1, src ofs: 0xb1f0, dst obj: 3, dst ofs: 0xdf3
    b1f4:	e8 4f ab 06 00       	call   __CHP
    b1f9:	db 1c 24             	fistp  DWORD PTR [esp]
    b1fc:	8b 96 a8 00 00 00    	mov    edx,DWORD PTR [esi+0xa8]
    b202:	03 14 24             	add    edx,DWORD PTR [esp]
    b205:	e8 f8 6e 06 00       	call   clock_
    b20a:	39 d0                	cmp    eax,edx
    b20c:	0f 86 9d 00 00 00    	jbe    fade_in_branch_23
    b212:	e8 eb 6e 06 00       	call   clock_
    b217:	89 86 a8 00 00 00    	mov    DWORD PTR [esi+0xa8],eax
    b21d:	8b 8e 98 00 00 00    	mov    ecx,DWORD PTR [esi+0x98]
    b223:	8b 96 9c 00 00 00    	mov    edx,DWORD PTR [esi+0x9c]
    b229:	8b 86 a0 00 00 00    	mov    eax,DWORD PTR [esi+0xa0]
    b22f:	49                   	dec    ecx
    b230:	29 c2                	sub    edx,eax
    b232:	89 8e 98 00 00 00    	mov    DWORD PTR [esi+0x98],ecx
    b238:	89 96 9c 00 00 00    	mov    DWORD PTR [esi+0x9c],edx
    b23e:	85 d2                	test   edx,edx
    b240:	7d 0a                	jge    fade_in_branch_20
    b242:	c7 86 9c 00 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x9c],0x0
fade_in_branch_20:
    b24c:	8b 86 9c 00 00 00    	mov    eax,DWORD PTR [esi+0x9c]
    b252:	31 db                	xor    ebx,ebx
    b254:	66 8b 04 45 be 0f 01 00 	mov    ax,WORD PTR [eax*2+@obj3:volume_table]                    ; fixup: num: 1452, src obj: 1, src ofs: 0xb258, dst obj: 3, dst ofs: 0x10fbe
    b25c:	66 89 c3             	mov    bx,ax
    b25f:	80 4e 35 01          	or     BYTE PTR [esi+0x35],0x1
    b263:	89 f0                	mov    eax,esi
    b265:	89 5e 20             	mov    DWORD PTR [esi+0x20],ebx
    b268:	e8 73 e6 ff ff       	call   playing
    b26d:	84 c0                	test   al,al
    b26f:	74 0c                	je     fade_in_branch_21
    b271:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 1451, src obj: 1, src ofs: 0xb272, dst obj: 3, dst ofs: 0x1a1ac
    b276:	8b 16                	mov    edx,DWORD PTR [esi]
    b278:	e8 93 a2 06 00       	call   sosDIGISetSampleVolume_
fade_in_branch_21:
    b27d:	83 be 98 00 00 00 00 	cmp    DWORD PTR [esi+0x98],0x0
    b284:	75 29                	jne    fade_in_branch_23
    b286:	66 a1 be 0f 01 00    	mov    ax,ds:@obj3:volume_table                                     ; fixup: num: 1450, src obj: 1, src ofs: 0xb288, dst obj: 3, dst ofs: 0x10fbe
    b28c:	31 db                	xor    ebx,ebx
    b28e:	66 89 c3             	mov    bx,ax
    b291:	80 4e 35 01          	or     BYTE PTR [esi+0x35],0x1
    b295:	89 f0                	mov    eax,esi
    b297:	89 5e 20             	mov    DWORD PTR [esi+0x20],ebx
    b29a:	e8 41 e6 ff ff       	call   playing
    b29f:	84 c0                	test   al,al
    b2a1:	74 0c                	je     fade_in_branch_23
fade_in_branch_22:
    b2a3:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 1449, src obj: 1, src ofs: 0xb2a4, dst obj: 3, dst ofs: 0x1a1ac
    b2a8:	8b 16                	mov    edx,DWORD PTR [esi]
    b2aa:	e8 61 a2 06 00       	call   sosDIGISetSampleVolume_
fade_in_branch_23:
    b2af:	8b 1d cc a1 01 00    	mov    ebx,DWORD PTR ds:@obj3:wBytesRead                            ; fixup: num: 1448, src obj: 1, src ofs: 0xb2b1, dst obj: 3, dst ofs: 0x1a1cc
    b2b5:	89 f0                	mov    eax,esi
    b2b7:	8b 96 b0 00 00 00    	mov    edx,DWORD PTR [esi+0xb0]
    b2bd:	e8 7e dc ff ff       	call   insert_into_buffer
    b2c2:	88 86 90 00 00 00    	mov    BYTE PTR [esi+0x90],al
fade_in_branch_24:
    b2c8:	8a 3d b4 a1 01 00    	mov    bh,BYTE PTR ds:@obj3:the_sound_system_variable_3             ; fixup: num: 1447, src obj: 1, src ofs: 0xb2ca, dst obj: 3, dst ofs: 0x1a1b4
    b2ce:	89 ee                	mov    esi,ebp
    b2d0:	84 ff                	test   bh,bh
    b2d2:	74 59                	je     fade_in_branch_26
    b2d4:	8b 1d d4 2c 01 00    	mov    ebx,DWORD PTR ds:@obj3:id_counter                            ; fixup: num: 1446, src obj: 1, src ofs: 0xb2d6, dst obj: 3, dst ofs: 0x12cd4
    b2da:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 1445, src obj: 1, src ofs: 0xb2db, dst obj: 3, dst ofs: 0x1a1ac
    b2df:	43                   	inc    ebx
    b2e0:	8c d9                	mov    ecx,ds
    b2e2:	89 1d d4 2c 01 00    	mov    DWORD PTR ds:@obj3:id_counter,ebx                            ; fixup: num: 1444, src obj: 1, src ofs: 0xb2e4, dst obj: 3, dst ofs: 0x12cd4
    b2e8:	8d 5d 0c             	lea    ebx,[ebp+0xc]
    b2eb:	e8 16 7c 06 00       	call   sosDIGIStartSample_
    b2f0:	89 45 00             	mov    DWORD PTR [ebp+0x0],eax
    b2f3:	83 f8 ff             	cmp    eax,0xffffffff
    b2f6:	75 13                	jne    fade_in_branch_25
    b2f8:	e8 0c aa 06 00       	call   sosGetErrorString_
    b2fd:	ba da 02 00 00       	mov    edx,0x2da
    b302:	89 c3                	mov    ebx,eax
    b304:	31 c0                	xor    eax,eax
    b306:	e8 25 cd 02 00       	call   _error_report
fade_in_branch_25:
    b30b:	8b 16                	mov    edx,DWORD PTR [esi]
    b30d:	8d 04 95 00 00 00 00 	lea    eax,[edx*4+0x0]
    b314:	29 d0                	sub    eax,edx
    b316:	0f b5 14 45 5c 44 01 00 	lgs    edx,FWORD PTR [eax*2+@obj3:__lpSOSSampleList]             ; fixup: num: 1457, src obj: 1, src ofs: 0xb31a, dst obj: 3, dst ofs: 0x1445c
    b31e:	66 a1 d4 2c 01 00    	mov    ax,ds:@obj3:id_counter                                       ; fixup: num: 1456, src obj: 1, src ofs: 0xb320, dst obj: 3, dst ofs: 0x12cd4
    b324:	66 65 89 42 34       	mov    WORD PTR gs:[edx+0x34],ax
    b329:	66 89 46 08          	mov    WORD PTR [esi+0x8],ax
fade_in_branch_26:
    b32d:	c6 85 91 00 00 00 00 	mov    BYTE PTR [ebp+0x91],0x0
fade_in_branch_27:
    b334:	c7 87 98 00 00 00 00 00 00 00 	mov    DWORD PTR [edi+0x98],0x0
    b33e:	8b 35 b0 0f 01 00    	mov    esi,DWORD PTR ds:@obj3:music_volume                          ; fixup: num: 1455, src obj: 1, src ofs: 0xb340, dst obj: 3, dst ofs: 0x10fb0
    b344:	c7 87 94 00 00 00 06 00 00 00 	mov    DWORD PTR [edi+0x94],0x6
    b34e:	83 fe 09             	cmp    esi,0x9
    b351:	7e 0a                	jle    fade_in_branch_28
    b353:	c7 05 b0 0f 01 00 09 00 00 00 	mov    DWORD PTR ds:@obj3:music_volume,0x9                 ; fixup: num: 1454, src obj: 1, src ofs: 0xb355, dst obj: 3, dst ofs: 0x10fb0
fade_in_branch_28:
    b35d:	a1 b0 0f 01 00       	mov    eax,ds:@obj3:music_volume                                    ; fixup: num: 1453, src obj: 1, src ofs: 0xb35e, dst obj: 3, dst ofs: 0x10fb0
    b362:	83 f8 07             	cmp    eax,0x7
    b365:	7e 0c                	jle    fade_in_branch_29
    b367:	c7 87 a0 00 00 00 02 00 00 00 	mov    DWORD PTR [edi+0xa0],0x2
    b371:	eb 0f                	jmp    fade_in_branch_30
fade_in_branch_29:
    b373:	83 f8 03             	cmp    eax,0x3
    b376:	7e 0a                	jle    fade_in_branch_30
    b378:	c7 87 a0 00 00 00 01 00 00 00 	mov    DWORD PTR [edi+0xa0],0x1
fade_in_branch_30:
    b382:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
    b386:	c7 87 9c 00 00 00 00 00 00 00 	mov    DWORD PTR [edi+0x9c],0x0
    b390:	89 87 a4 00 00 00    	mov    DWORD PTR [edi+0xa4],eax
    b396:	e8 67 6d 06 00       	call   clock_
    b39b:	89 87 a8 00 00 00    	mov    DWORD PTR [edi+0xa8],eax
fade_in_branch_31:
    b3a1:	83 c4 04             	add    esp,0x4
    b3a4:	5d                   	pop    ebp
    b3a5:	5f                   	pop    edi
    b3a6:	5e                   	pop    esi
    b3a7:	5a                   	pop    edx
    b3a8:	59                   	pop    ecx
    b3a9:	5b                   	pop    ebx
    b3aa:	c2 04 00             	ret    0x4
    b3ad:	8d 40 00             	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'fade_out'                           -
;-------------------------------------------------
fade_out:
    b3b0:	53                   	push   ebx
    b3b1:	51                   	push   ecx
    b3b2:	52                   	push   edx
    b3b3:	56                   	push   esi
    b3b4:	57                   	push   edi
    b3b5:	55                   	push   ebp
    b3b6:	83 ec 04             	sub    esp,0x4
    b3b9:	89 c7                	mov    edi,eax
    b3bb:	83 b8 88 00 00 00 ff 	cmp    DWORD PTR [eax+0x88],0xffffffff
    b3c2:	0f 84 c7 05 00 00    	je     fade_out_branch_30
    b3c8:	8b 1d b0 0f 01 00    	mov    ebx,DWORD PTR ds:@obj3:music_volume                          ; fixup: num: 1462, src obj: 1, src ofs: 0xb3ca, dst obj: 3, dst ofs: 0x10fb0
    b3ce:	89 c5                	mov    ebp,eax
    b3d0:	85 db                	test   ebx,ebx
    b3d2:	0f 84 8b 04 00 00    	je     fade_out_branch_21
    b3d8:	80 b8 91 00 00 00 00 	cmp    BYTE PTR [eax+0x91],0x0
    b3df:	0f 84 7e 04 00 00    	je     fade_out_branch_21
    b3e5:	89 fe                	mov    esi,edi
    b3e7:	8b 8f 88 00 00 00    	mov    ecx,DWORD PTR [edi+0x88]
    b3ed:	c7 47 04 00 00 00 00 	mov    DWORD PTR [edi+0x4],0x0
    b3f4:	83 f9 ff             	cmp    ecx,0xffffffff
    b3f7:	75 4d                	jne    fade_out_branch_1
    b3f9:	80 3d b4 a1 01 00 00 	cmp    BYTE PTR ds:@obj3:the_sound_system_variable_3,0x0            ; fixup: num: 1461, src obj: 1, src ofs: 0xb3fb, dst obj: 3, dst ofs: 0x1a1b4
    b400:	0f 84 f1 03 00 00    	je     fade_out_branch_18
    b406:	89 f8                	mov    eax,edi
    b408:	e8 d3 e4 ff ff       	call   playing
    b40d:	84 c0                	test   al,al
    b40f:	0f 84 e2 03 00 00    	je     fade_out_branch_18
    b415:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 1460, src obj: 1, src ofs: 0xb416, dst obj: 3, dst ofs: 0x1a1ac
    b41a:	8b 17                	mov    edx,DWORD PTR [edi]
    b41c:	66 c7 47 08 00 00    	mov    WORD PTR [edi+0x8],0x0
    b422:	e8 f8 80 06 00       	call   sosDIGIStopSample_
    b427:	83 f8 0a             	cmp    eax,0xa
    b42a:	0f 85 c7 03 00 00    	jne    fade_out_branch_18
    b430:	bb 69 0b 00 00       	mov    ebx,@obj3:sound_cpp_variable_32                              ; fixup: num: 1459, src obj: 1, src ofs: 0xb431, dst obj: 3, dst ofs: 0xb69
    b435:	ba fd 02 00 00       	mov    edx,0x2fd
    b43a:	31 c0                	xor    eax,eax
    b43c:	e8 ef cb 02 00       	call   _error_report
    b441:	e9 b1 03 00 00       	jmp    fade_out_branch_18
fade_out_branch_1:
    b446:	80 3d b4 a1 01 00 00 	cmp    BYTE PTR ds:@obj3:the_sound_system_variable_3,0x0            ; fixup: num: 1458, src obj: 1, src ofs: 0xb448, dst obj: 3, dst ofs: 0x1a1b4
    b44d:	74 52                	je     fade_out_branch_4
    b44f:	8b 17                	mov    edx,DWORD PTR [edi]
    b451:	8d 04 95 00 00 00 00 	lea    eax,[edx*4+0x0]
    b458:	29 d0                	sub    eax,edx
    b45a:	01 c0                	add    eax,eax
    b45c:	83 b8 5c 44 01 00 00 	cmp    DWORD PTR [eax+@obj3:__lpSOSSampleList],0x0                  ; fixup: num: 1469, src obj: 1, src ofs: 0xb45e, dst obj: 3, dst ofs: 0x1445c
    b463:	75 0a                	jne    fade_out_branch_2
    b465:	66 83 b8 60 44 01 00 00 	cmp    WORD PTR [eax+@obj3:__lpSOSSampleList_variable_1],0x0     ; fixup: num: 1468, src obj: 1, src ofs: 0xb468, dst obj: 3, dst ofs: 0x14460
    b46d:	74 32                	je     fade_out_branch_4
fade_out_branch_2:
    b46f:	0f b5 80 5c 44 01 00 	lgs    eax,FWORD PTR [eax+@obj3:__lpSOSSampleList]                  ; fixup: num: 1467, src obj: 1, src ofs: 0xb472, dst obj: 3, dst ofs: 0x1445c
    b476:	0f bf 5f 08          	movsx  ebx,WORD PTR [edi+0x8]
    b47a:	65 0f bf 40 34       	movsx  eax,WORD PTR gs:[eax+0x34]
    b47f:	39 c3                	cmp    ebx,eax
    b481:	75 1e                	jne    fade_out_branch_4
    b483:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 1466, src obj: 1, src ofs: 0xb484, dst obj: 3, dst ofs: 0x1a1ac
    b488:	e8 64 a7 06 00       	call   sosDIGISampleDone_
    b48d:	83 f8 01             	cmp    eax,0x1
    b490:	75 0b                	jne    fade_out_branch_3
    b492:	66 c7 47 08 00 00    	mov    WORD PTR [edi+0x8],0x0
    b498:	8a 47 08             	mov    al,BYTE PTR [edi+0x8]
    b49b:	eb 06                	jmp    fade_out_branch_5
fade_out_branch_3:
    b49d:	b0 01                	mov    al,0x1
    b49f:	eb 02                	jmp    fade_out_branch_5
fade_out_branch_4:
    b4a1:	30 c0                	xor    al,al
fade_out_branch_5:
    b4a3:	84 c0                	test   al,al
    b4a5:	0f 84 4c 03 00 00    	je     fade_out_branch_18
    b4ab:	80 be 91 00 00 00 00 	cmp    BYTE PTR [esi+0x91],0x0
    b4b2:	0f 85 3f 03 00 00    	jne    fade_out_branch_18
    b4b8:	80 be 90 00 00 00 00 	cmp    BYTE PTR [esi+0x90],0x0
    b4bf:	0f 84 6b 01 00 00    	je     fade_out_branch_10
    b4c5:	80 be b8 00 00 00 00 	cmp    BYTE PTR [esi+0xb8],0x0
    b4cc:	0f 84 0f 01 00 00    	je     fade_out_branch_8
    b4d2:	bb 00 20 00 00       	mov    ebx,0x2000
    b4d7:	8b 96 fc 00 00 00    	mov    edx,DWORD PTR [esi+0xfc]
    b4dd:	8b 86 88 00 00 00    	mov    eax,DWORD PTR [esi+0x88]
    b4e3:	e8 7b 6a 06 00       	call   read_
    b4e8:	a3 cc a1 01 00       	mov    ds:@obj3:wBytesRead,eax                                      ; fixup: num: 1465, src obj: 1, src ofs: 0xb4e9, dst obj: 3, dst ofs: 0x1a1cc
    b4ed:	83 f8 ff             	cmp    eax,0xffffffff
    b4f0:	75 11                	jne    fade_out_branch_6
    b4f2:	bb b2 0d 00 00       	mov    ebx,@obj3:sound_cpp_variable_54                              ; fixup: num: 1464, src obj: 1, src ofs: 0xb4f3, dst obj: 3, dst ofs: 0xdb2
    b4f7:	ba 6c 04 00 00       	mov    edx,0x46c
    b4fc:	31 c0                	xor    eax,eax
    b4fe:	e8 2d cb 02 00       	call   _error_report
fade_out_branch_6:
    b503:	a1 cc a1 01 00       	mov    eax,ds:@obj3:wBytesRead                                      ; fixup: num: 1463, src obj: 1, src ofs: 0xb504, dst obj: 3, dst ofs: 0x1a1cc
    b508:	8d 8e bc 00 00 00    	lea    ecx,[esi+0xbc]
    b50e:	3d 00 20 00 00       	cmp    eax,0x2000
    b513:	75 55                	jne    fade_out_branch_7
    b515:	8b 96 fc 00 00 00    	mov    edx,DWORD PTR [esi+0xfc]
    b51b:	89 96 bc 00 00 00    	mov    DWORD PTR [esi+0xbc],edx
    b521:	8b 96 b0 00 00 00    	mov    edx,DWORD PTR [esi+0xb0]
    b527:	89 96 c4 00 00 00    	mov    DWORD PTR [esi+0xc4],edx
    b52d:	31 d2                	xor    edx,edx
    b52f:	66 8b 96 f8 00 00 00 	mov    dx,WORD PTR [esi+0xf8]
    b536:	89 d0                	mov    eax,edx
    b538:	c1 fa 1f             	sar    edx,0x1f
    b53b:	c1 e2 02             	shl    edx,0x2
    b53e:	1b c2                	sbb    eax,edx
    b540:	c1 f8 02             	sar    eax,0x2
    b543:	0f af 05 cc a1 01 00 	imul   eax,DWORD PTR ds:@obj3:wBytesRead                            ; fixup: num: 1471, src obj: 1, src ofs: 0xb546, dst obj: 3, dst ofs: 0x1a1cc
    b54a:	50                   	push   eax
    b54b:	8c 9e c0 00 00 00    	mov    WORD PTR [esi+0xc0],ds
    b551:	51                   	push   ecx
    b552:	8c 9e c8 00 00 00    	mov    WORD PTR [esi+0xc8],ds
    b558:	e8 a8 4f 06 00       	call   _sosCODECDecompressData
    b55d:	83 c4 08             	add    esp,0x8
    b560:	a3 cc a1 01 00       	mov    ds:@obj3:wBytesRead,eax                                      ; fixup: num: 1470, src obj: 1, src ofs: 0xb561, dst obj: 3, dst ofs: 0x1a1cc
    b565:	e9 c6 00 00 00       	jmp    fade_out_branch_10
fade_out_branch_7:
    b56a:	ba 0e 00 00 00       	mov    edx,0xe
    b56f:	8b 86 88 00 00 00    	mov    eax,DWORD PTR [esi+0x88]
    b575:	31 db                	xor    ebx,ebx
    b577:	e8 53 69 06 00       	call   lseek_                                                       ; aliases: lseek_, _lseek_
    b57c:	bb 30 00 00 00       	mov    ebx,0x30
    b581:	89 c8                	mov    eax,ecx
    b583:	31 d2                	xor    edx,edx
    b585:	e8 46 5e 06 00       	call   memset_
    b58a:	8b 86 8c 00 00 00    	mov    eax,DWORD PTR [esi+0x8c]
    b590:	31 d2                	xor    edx,edx
    b592:	83 e8 0e             	sub    eax,0xe
    b595:	66 8b 96 f8 00 00 00 	mov    dx,WORD PTR [esi+0xf8]
    b59c:	89 86 cc 00 00 00    	mov    DWORD PTR [esi+0xcc],eax
    b5a2:	89 d0                	mov    eax,edx
    b5a4:	c1 fa 1f             	sar    edx,0x1f
    b5a7:	c1 e2 02             	shl    edx,0x2
    b5aa:	1b c2                	sbb    eax,edx
    b5ac:	c1 f8 02             	sar    eax,0x2
    b5af:	89 c2                	mov    edx,eax
    b5b1:	8b 86 cc 00 00 00    	mov    eax,DWORD PTR [esi+0xcc]
    b5b7:	0f af c2             	imul   eax,edx
    b5ba:	89 86 d0 00 00 00    	mov    DWORD PTR [esi+0xd0],eax
    b5c0:	66 8b 86 f8 00 00 00 	mov    ax,WORD PTR [esi+0xf8]
    b5c7:	51                   	push   ecx
    b5c8:	66 89 86 e8 00 00 00 	mov    WORD PTR [esi+0xe8],ax
    b5cf:	e8 0c 4f 06 00       	call   _sosCODECInitStream
    b5d4:	31 d2                	xor    edx,edx
    b5d6:	83 c4 04             	add    esp,0x4
    b5d9:	89 15 cc a1 01 00    	mov    DWORD PTR ds:@obj3:wBytesRead,edx                            ; fixup: num: 1476, src obj: 1, src ofs: 0xb5db, dst obj: 3, dst ofs: 0x1a1cc
    b5df:	eb 4f                	jmp    fade_out_branch_10
fade_out_branch_8:
    b5e1:	bb 00 20 00 00       	mov    ebx,0x2000
    b5e6:	8b 96 b0 00 00 00    	mov    edx,DWORD PTR [esi+0xb0]
    b5ec:	8b 86 88 00 00 00    	mov    eax,DWORD PTR [esi+0x88]
    b5f2:	e8 6c 69 06 00       	call   read_
    b5f7:	a3 cc a1 01 00       	mov    ds:@obj3:wBytesRead,eax                                      ; fixup: num: 1475, src obj: 1, src ofs: 0xb5f8, dst obj: 3, dst ofs: 0x1a1cc
    b5fc:	83 f8 ff             	cmp    eax,0xffffffff
    b5ff:	75 11                	jne    fade_out_branch_9
    b601:	bb d6 0d 00 00       	mov    ebx,@obj3:sound_cpp_variable_55                              ; fixup: num: 1474, src obj: 1, src ofs: 0xb602, dst obj: 3, dst ofs: 0xdd6
    b606:	ba 85 04 00 00       	mov    edx,0x485
    b60b:	31 c0                	xor    eax,eax
    b60d:	e8 1e ca 02 00       	call   _error_report
fade_out_branch_9:
    b612:	81 3d cc a1 01 00 00 20 00 00 	cmp    DWORD PTR ds:@obj3:wBytesRead,0x2000                ; fixup: num: 1473, src obj: 1, src ofs: 0xb614, dst obj: 3, dst ofs: 0x1a1cc
    b61c:	74 12                	je     fade_out_branch_10
    b61e:	ba 2c 00 00 00       	mov    edx,0x2c
    b623:	8b 86 88 00 00 00    	mov    eax,DWORD PTR [esi+0x88]
    b629:	31 db                	xor    ebx,ebx
    b62b:	e8 9f 68 06 00       	call   lseek_                                                       ; aliases: lseek_, _lseek_
fade_out_branch_10:
    b630:	83 be 94 00 00 00 00 	cmp    DWORD PTR [esi+0x94],0x0
    b637:	0f 84 c3 00 00 00    	je     fade_out_branch_13
    b63d:	d9 86 a4 00 00 00    	fld    DWORD PTR [esi+0xa4]
    b643:	d8 0d 24 0e 00 00    	fmul   DWORD PTR ds:@obj3:sound_cpp_variable_59                     ; fixup: num: 1472, src obj: 1, src ofs: 0xb645, dst obj: 3, dst ofs: 0xe24
    b649:	e8 fa a6 06 00       	call   __CHP
    b64e:	db 1c 24             	fistp  DWORD PTR [esp]
    b651:	8b 96 a8 00 00 00    	mov    edx,DWORD PTR [esi+0xa8]
    b657:	03 14 24             	add    edx,DWORD PTR [esp]
    b65a:	e8 a3 6a 06 00       	call   clock_
    b65f:	39 d0                	cmp    eax,edx
    b661:	0f 86 77 01 00 00    	jbe    fade_out_branch_17
    b667:	e8 96 6a 06 00       	call   clock_
    b66c:	8b 96 94 00 00 00    	mov    edx,DWORD PTR [esi+0x94]
    b672:	89 86 a8 00 00 00    	mov    DWORD PTR [esi+0xa8],eax
    b678:	4a                   	dec    edx
    b679:	89 96 94 00 00 00    	mov    DWORD PTR [esi+0x94],edx
    b67f:	75 2d                	jne    fade_out_branch_11
    b681:	a1 b0 0f 01 00       	mov    eax,ds:@obj3:music_volume                                    ; fixup: num: 1480, src obj: 1, src ofs: 0xb682, dst obj: 3, dst ofs: 0x10fb0
    b686:	31 db                	xor    ebx,ebx
    b688:	66 8b 04 45 be 0f 01 00 	mov    ax,WORD PTR [eax*2+@obj3:volume_table]                    ; fixup: num: 1479, src obj: 1, src ofs: 0xb68c, dst obj: 3, dst ofs: 0x10fbe
    b690:	66 89 c3             	mov    bx,ax
    b693:	80 4e 35 01          	or     BYTE PTR [esi+0x35],0x1
    b697:	89 f0                	mov    eax,esi
    b699:	89 5e 20             	mov    DWORD PTR [esi+0x20],ebx
    b69c:	e8 3f e2 ff ff       	call   playing
    b6a1:	84 c0                	test   al,al
    b6a3:	0f 84 35 01 00 00    	je     fade_out_branch_17
    b6a9:	e9 24 01 00 00       	jmp    fade_out_branch_16
fade_out_branch_11:
    b6ae:	8b 86 a0 00 00 00    	mov    eax,DWORD PTR [esi+0xa0]
    b6b4:	8b 8e 9c 00 00 00    	mov    ecx,DWORD PTR [esi+0x9c]
    b6ba:	01 c1                	add    ecx,eax
    b6bc:	8b 15 b0 0f 01 00    	mov    edx,DWORD PTR ds:@obj3:music_volume                          ; fixup: num: 1478, src obj: 1, src ofs: 0xb6be, dst obj: 3, dst ofs: 0x10fb0
    b6c2:	89 8e 9c 00 00 00    	mov    DWORD PTR [esi+0x9c],ecx
    b6c8:	39 d1                	cmp    ecx,edx
    b6ca:	7e 06                	jle    fade_out_branch_12
    b6cc:	89 96 9c 00 00 00    	mov    DWORD PTR [esi+0x9c],edx
fade_out_branch_12:
    b6d2:	8b 86 9c 00 00 00    	mov    eax,DWORD PTR [esi+0x9c]
    b6d8:	31 db                	xor    ebx,ebx
    b6da:	66 8b 04 45 be 0f 01 00 	mov    ax,WORD PTR [eax*2+@obj3:volume_table]                    ; fixup: num: 1477, src obj: 1, src ofs: 0xb6de, dst obj: 3, dst ofs: 0x10fbe
    b6e2:	66 89 c3             	mov    bx,ax
    b6e5:	80 4e 35 01          	or     BYTE PTR [esi+0x35],0x1
    b6e9:	89 f0                	mov    eax,esi
    b6eb:	89 5e 20             	mov    DWORD PTR [esi+0x20],ebx
    b6ee:	e8 ed e1 ff ff       	call   playing
    b6f3:	84 c0                	test   al,al
    b6f5:	0f 84 e3 00 00 00    	je     fade_out_branch_17
    b6fb:	e9 d2 00 00 00       	jmp    fade_out_branch_16
fade_out_branch_13:
    b700:	83 be 98 00 00 00 00 	cmp    DWORD PTR [esi+0x98],0x0
    b707:	0f 84 d1 00 00 00    	je     fade_out_branch_17
    b70d:	d9 86 a4 00 00 00    	fld    DWORD PTR [esi+0xa4]
    b713:	d8 0d 24 0e 00 00    	fmul   DWORD PTR ds:@obj3:sound_cpp_variable_59                     ; fixup: num: 1484, src obj: 1, src ofs: 0xb715, dst obj: 3, dst ofs: 0xe24
    b719:	e8 2a a6 06 00       	call   __CHP
    b71e:	db 1c 24             	fistp  DWORD PTR [esp]
    b721:	8b 96 a8 00 00 00    	mov    edx,DWORD PTR [esi+0xa8]
    b727:	03 14 24             	add    edx,DWORD PTR [esp]
    b72a:	e8 d3 69 06 00       	call   clock_
    b72f:	39 d0                	cmp    eax,edx
    b731:	0f 86 a7 00 00 00    	jbe    fade_out_branch_17
    b737:	e8 c6 69 06 00       	call   clock_
    b73c:	89 86 a8 00 00 00    	mov    DWORD PTR [esi+0xa8],eax
    b742:	8b 8e 98 00 00 00    	mov    ecx,DWORD PTR [esi+0x98]
    b748:	8b 96 9c 00 00 00    	mov    edx,DWORD PTR [esi+0x9c]
    b74e:	8b 86 a0 00 00 00    	mov    eax,DWORD PTR [esi+0xa0]
    b754:	49                   	dec    ecx
    b755:	29 c2                	sub    edx,eax
    b757:	89 8e 98 00 00 00    	mov    DWORD PTR [esi+0x98],ecx
    b75d:	89 96 9c 00 00 00    	mov    DWORD PTR [esi+0x9c],edx
    b763:	85 d2                	test   edx,edx
    b765:	7d 0a                	jge    fade_out_branch_14
    b767:	c7 86 9c 00 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x9c],0x0
fade_out_branch_14:
    b771:	8b 86 9c 00 00 00    	mov    eax,DWORD PTR [esi+0x9c]
    b777:	8a 4e 35             	mov    cl,BYTE PTR [esi+0x35]
    b77a:	31 db                	xor    ebx,ebx
    b77c:	66 8b 04 45 be 0f 01 00 	mov    ax,WORD PTR [eax*2+@obj3:volume_table]                    ; fixup: num: 1483, src obj: 1, src ofs: 0xb780, dst obj: 3, dst ofs: 0x10fbe
    b784:	80 c9 01             	or     cl,0x1
    b787:	66 89 c3             	mov    bx,ax
    b78a:	88 4e 35             	mov    BYTE PTR [esi+0x35],cl
    b78d:	89 f0                	mov    eax,esi
    b78f:	89 5e 20             	mov    DWORD PTR [esi+0x20],ebx
    b792:	e8 49 e1 ff ff       	call   playing
    b797:	84 c0                	test   al,al
    b799:	74 0c                	je     fade_out_branch_15
    b79b:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 1482, src obj: 1, src ofs: 0xb79c, dst obj: 3, dst ofs: 0x1a1ac
    b7a0:	8b 16                	mov    edx,DWORD PTR [esi]
    b7a2:	e8 69 9d 06 00       	call   sosDIGISetSampleVolume_
fade_out_branch_15:
    b7a7:	83 be 98 00 00 00 00 	cmp    DWORD PTR [esi+0x98],0x0
    b7ae:	75 2e                	jne    fade_out_branch_17
    b7b0:	66 a1 be 0f 01 00    	mov    ax,ds:@obj3:volume_table                                     ; fixup: num: 1481, src obj: 1, src ofs: 0xb7b2, dst obj: 3, dst ofs: 0x10fbe
    b7b6:	31 db                	xor    ebx,ebx
    b7b8:	8a 6e 35             	mov    ch,BYTE PTR [esi+0x35]
    b7bb:	66 89 c3             	mov    bx,ax
    b7be:	80 cd 01             	or     ch,0x1
    b7c1:	89 5e 20             	mov    DWORD PTR [esi+0x20],ebx
    b7c4:	89 f0                	mov    eax,esi
    b7c6:	88 6e 35             	mov    BYTE PTR [esi+0x35],ch
    b7c9:	e8 12 e1 ff ff       	call   playing
    b7ce:	84 c0                	test   al,al
    b7d0:	74 0c                	je     fade_out_branch_17
fade_out_branch_16:
    b7d2:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 1376, src obj: 1, src ofs: 0xb7d3, dst obj: 3, dst ofs: 0x1a1ac
    b7d7:	8b 16                	mov    edx,DWORD PTR [esi]
    b7d9:	e8 32 9d 06 00       	call   sosDIGISetSampleVolume_
fade_out_branch_17:
    b7de:	8b 1d cc a1 01 00    	mov    ebx,DWORD PTR ds:@obj3:wBytesRead                            ; fixup: num: 1375, src obj: 1, src ofs: 0xb7e0, dst obj: 3, dst ofs: 0x1a1cc
    b7e4:	89 f0                	mov    eax,esi
    b7e6:	8b 96 b0 00 00 00    	mov    edx,DWORD PTR [esi+0xb0]
    b7ec:	e8 4f d7 ff ff       	call   insert_into_buffer
    b7f1:	88 86 90 00 00 00    	mov    BYTE PTR [esi+0x90],al
fade_out_branch_18:
    b7f7:	8a 35 b4 a1 01 00    	mov    dh,BYTE PTR ds:@obj3:the_sound_system_variable_3             ; fixup: num: 1374, src obj: 1, src ofs: 0xb7f9, dst obj: 3, dst ofs: 0x1a1b4
    b7fd:	89 ee                	mov    esi,ebp
    b7ff:	84 f6                	test   dh,dh
    b801:	74 59                	je     fade_out_branch_20
    b803:	8b 1d d4 2c 01 00    	mov    ebx,DWORD PTR ds:@obj3:id_counter                            ; fixup: num: 1489, src obj: 1, src ofs: 0xb805, dst obj: 3, dst ofs: 0x12cd4
    b809:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 1488, src obj: 1, src ofs: 0xb80a, dst obj: 3, dst ofs: 0x1a1ac
    b80e:	43                   	inc    ebx
    b80f:	8c d9                	mov    ecx,ds
    b811:	89 1d d4 2c 01 00    	mov    DWORD PTR ds:@obj3:id_counter,ebx                            ; fixup: num: 1487, src obj: 1, src ofs: 0xb813, dst obj: 3, dst ofs: 0x12cd4
    b817:	8d 5d 0c             	lea    ebx,[ebp+0xc]
    b81a:	e8 e7 76 06 00       	call   sosDIGIStartSample_
    b81f:	89 45 00             	mov    DWORD PTR [ebp+0x0],eax
    b822:	83 f8 ff             	cmp    eax,0xffffffff
    b825:	75 13                	jne    fade_out_branch_19
    b827:	e8 dd a4 06 00       	call   sosGetErrorString_
    b82c:	ba da 02 00 00       	mov    edx,0x2da
    b831:	89 c3                	mov    ebx,eax
    b833:	31 c0                	xor    eax,eax
    b835:	e8 f6 c7 02 00       	call   _error_report
fade_out_branch_19:
    b83a:	8b 16                	mov    edx,DWORD PTR [esi]
    b83c:	8d 04 95 00 00 00 00 	lea    eax,[edx*4+0x0]
    b843:	29 d0                	sub    eax,edx
    b845:	0f b5 14 45 5c 44 01 00 	lgs    edx,FWORD PTR [eax*2+@obj3:__lpSOSSampleList]             ; fixup: num: 1486, src obj: 1, src ofs: 0xb849, dst obj: 3, dst ofs: 0x1445c
    b84d:	66 a1 d4 2c 01 00    	mov    ax,ds:@obj3:id_counter                                       ; fixup: num: 1485, src obj: 1, src ofs: 0xb84f, dst obj: 3, dst ofs: 0x12cd4
    b853:	66 65 89 42 34       	mov    WORD PTR gs:[edx+0x34],ax
    b858:	66 89 46 08          	mov    WORD PTR [esi+0x8],ax
fade_out_branch_20:
    b85c:	c6 85 91 00 00 00 00 	mov    BYTE PTR [ebp+0x91],0x0
fade_out_branch_21:
    b863:	c7 87 98 00 00 00 06 00 00 00 	mov    DWORD PTR [edi+0x98],0x6
    b86d:	8b 35 b0 0f 01 00    	mov    esi,DWORD PTR ds:@obj3:music_volume                          ; fixup: num: 1386, src obj: 1, src ofs: 0xb86f, dst obj: 3, dst ofs: 0x10fb0
    b873:	c7 87 94 00 00 00 00 00 00 00 	mov    DWORD PTR [edi+0x94],0x0
    b87d:	83 fe 09             	cmp    esi,0x9
    b880:	7e 0a                	jle    fade_out_branch_22
    b882:	c7 05 b0 0f 01 00 09 00 00 00 	mov    DWORD PTR ds:@obj3:music_volume,0x9                 ; fixup: num: 1385, src obj: 1, src ofs: 0xb884, dst obj: 3, dst ofs: 0x10fb0
fade_out_branch_22:
    b88c:	8b 0d b0 0f 01 00    	mov    ecx,DWORD PTR ds:@obj3:music_volume                          ; fixup: num: 1384, src obj: 1, src ofs: 0xb88e, dst obj: 3, dst ofs: 0x10fb0
    b892:	89 fe                	mov    esi,edi
    b894:	8a 5f 35             	mov    bl,BYTE PTR [edi+0x35]
    b897:	31 c0                	xor    eax,eax
    b899:	66 8b 0c 4d be 0f 01 00 	mov    cx,WORD PTR [ecx*2+@obj3:volume_table]                    ; fixup: num: 1383, src obj: 1, src ofs: 0xb89d, dst obj: 3, dst ofs: 0x10fbe
    b8a1:	80 cb 01             	or     bl,0x1
    b8a4:	66 89 c8             	mov    ax,cx
    b8a7:	88 5f 35             	mov    BYTE PTR [edi+0x35],bl
    b8aa:	8a 3d b4 a1 01 00    	mov    bh,BYTE PTR ds:@obj3:the_sound_system_variable_3             ; fixup: num: 1382, src obj: 1, src ofs: 0xb8ac, dst obj: 3, dst ofs: 0x1a1b4
    b8b0:	89 47 20             	mov    DWORD PTR [edi+0x20],eax
    b8b3:	84 ff                	test   bh,bh
    b8b5:	75 04                	jne    fade_out_branch_23
    b8b7:	30 c8                	xor    al,cl
    b8b9:	eb 54                	jmp    fade_out_branch_27
fade_out_branch_23:
    b8bb:	8b 17                	mov    edx,DWORD PTR [edi]
    b8bd:	8d 04 95 00 00 00 00 	lea    eax,[edx*4+0x0]
    b8c4:	29 d0                	sub    eax,edx
    b8c6:	01 c0                	add    eax,eax
    b8c8:	83 b8 5c 44 01 00 00 	cmp    DWORD PTR [eax+@obj3:__lpSOSSampleList],0x0                  ; fixup: num: 1381, src obj: 1, src ofs: 0xb8ca, dst obj: 3, dst ofs: 0x1445c
    b8cf:	75 0a                	jne    fade_out_branch_24
    b8d1:	66 83 b8 60 44 01 00 00 	cmp    WORD PTR [eax+@obj3:__lpSOSSampleList_variable_1],0x0     ; fixup: num: 1380, src obj: 1, src ofs: 0xb8d4, dst obj: 3, dst ofs: 0x14460
    b8d9:	74 32                	je     fade_out_branch_26
fade_out_branch_24:
    b8db:	0f b5 80 5c 44 01 00 	lgs    eax,FWORD PTR [eax+@obj3:__lpSOSSampleList]                  ; fixup: num: 1379, src obj: 1, src ofs: 0xb8de, dst obj: 3, dst ofs: 0x1445c
    b8e2:	0f bf 5f 08          	movsx  ebx,WORD PTR [edi+0x8]
    b8e6:	65 0f bf 40 34       	movsx  eax,WORD PTR gs:[eax+0x34]
    b8eb:	39 c3                	cmp    ebx,eax
    b8ed:	75 1e                	jne    fade_out_branch_26
    b8ef:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 1378, src obj: 1, src ofs: 0xb8f0, dst obj: 3, dst ofs: 0x1a1ac
    b8f4:	e8 f8 a2 06 00       	call   sosDIGISampleDone_
    b8f9:	83 f8 01             	cmp    eax,0x1
    b8fc:	75 0b                	jne    fade_out_branch_25
    b8fe:	66 c7 47 08 00 00    	mov    WORD PTR [edi+0x8],0x0
    b904:	8a 47 08             	mov    al,BYTE PTR [edi+0x8]
    b907:	eb 06                	jmp    fade_out_branch_27
fade_out_branch_25:
    b909:	b0 01                	mov    al,0x1
    b90b:	eb 02                	jmp    fade_out_branch_27
fade_out_branch_26:
    b90d:	30 c0                	xor    al,al
fade_out_branch_27:
    b90f:	84 c0                	test   al,al
    b911:	74 11                	je     fade_out_branch_28
    b913:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 1377, src obj: 1, src ofs: 0xb914, dst obj: 3, dst ofs: 0x1a1ac
    b918:	31 db                	xor    ebx,ebx
    b91a:	8b 16                	mov    edx,DWORD PTR [esi]
    b91c:	66 89 cb             	mov    bx,cx
    b91f:	e8 ec 9b 06 00       	call   sosDIGISetSampleVolume_
fade_out_branch_28:
    b924:	a1 b0 0f 01 00       	mov    eax,ds:@obj3:music_volume                                    ; fixup: num: 1392, src obj: 1, src ofs: 0xb925, dst obj: 3, dst ofs: 0x10fb0
    b929:	89 87 9c 00 00 00    	mov    DWORD PTR [edi+0x9c],eax
    b92f:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
    b933:	89 87 a4 00 00 00    	mov    DWORD PTR [edi+0xa4],eax
    b939:	d9 87 a4 00 00 00    	fld    DWORD PTR [edi+0xa4]
    b93f:	c7 87 a0 00 00 00 02 00 00 00 	mov    DWORD PTR [edi+0xa0],0x2
    b949:	dc 1d 28 0e 00 00    	fcomp  QWORD PTR ds:@obj3:sound_cpp_variable_60                     ; fixup: num: 1391, src obj: 1, src ofs: 0xb94b, dst obj: 3, dst ofs: 0xe28
    b94f:	df e0                	fnstsw ax
    b951:	9e                   	sahf   
    b952:	73 0a                	jae    fade_out_branch_29
    b954:	c7 87 a4 00 00 00 cd cc cc 3d 	mov    DWORD PTR [edi+0xa4],0x3dcccccd
fade_out_branch_29:
    b95e:	e8 9f 67 06 00       	call   clock_
    b963:	8b 8f a0 00 00 00    	mov    ecx,DWORD PTR [edi+0xa0]
    b969:	51                   	push   ecx
    b96a:	8b 35 b0 0f 01 00    	mov    esi,DWORD PTR ds:@obj3:music_volume                          ; fixup: num: 1390, src obj: 1, src ofs: 0xb96c, dst obj: 3, dst ofs: 0x10fb0
    b970:	56                   	push   esi
    b971:	89 87 a8 00 00 00    	mov    DWORD PTR [edi+0xa8],eax
    b977:	e8 86 67 06 00       	call   clock_
    b97c:	50                   	push   eax
    b97d:	68 f7 0d 00 00       	push   @obj3:sound_cpp_variable_58                                  ; fixup: num: 1389, src obj: 1, src ofs: 0xb97e, dst obj: 3, dst ofs: 0xdf7
    b982:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 1388, src obj: 1, src ofs: 0xb983, dst obj: 3, dst ofs: 0x237fc
    b987:	e8 55 52 06 00       	call   sprintf_
    b98c:	83 c4 14             	add    esp,0x14
fade_out_branch_30:
    b98f:	83 c4 04             	add    esp,0x4
    b992:	5d                   	pop    ebp
    b993:	5f                   	pop    edi
    b994:	5e                   	pop    esi
    b995:	5a                   	pop    edx
    b996:	59                   	pop    ecx
    b997:	5b                   	pop    ebx
    b998:	c2 04 00             	ret    0x4
    b99b:	8d 40 00             	lea    eax,[eax+0x0]
    b99e:	8b c9                	mov    ecx,ecx

;-------------------------------------------------
;  Function 'update_mod_9'                       -
;-------------------------------------------------
update_mod_9:
    b9a0:	53                   	push   ebx
    b9a1:	51                   	push   ecx
    b9a2:	52                   	push   edx
    b9a3:	56                   	push   esi
    b9a4:	57                   	push   edi
    b9a5:	55                   	push   ebp
    b9a6:	83 ec 04             	sub    esp,0x4
    b9a9:	89 c6                	mov    esi,eax
    b9ab:	83 b8 88 00 00 00 ff 	cmp    DWORD PTR [eax+0x88],0xffffffff
    b9b2:	0f 85 9e 00 00 00    	jne    update_mod_9_branch_6
    b9b8:	89 c3                	mov    ebx,eax
    b9ba:	8a 25 b4 a1 01 00    	mov    ah,BYTE PTR ds:@obj3:the_sound_system_variable_3             ; fixup: num: 1387, src obj: 1, src ofs: 0xb9bc, dst obj: 3, dst ofs: 0x1a1b4
    b9c0:	84 e4                	test   ah,ah
    b9c2:	0f 84 82 00 00 00    	je     update_mod_9_branch_5
    b9c8:	74 52                	je     update_mod_9_branch_3
    b9ca:	8b 16                	mov    edx,DWORD PTR [esi]
    b9cc:	8d 04 95 00 00 00 00 	lea    eax,[edx*4+0x0]
    b9d3:	29 d0                	sub    eax,edx
    b9d5:	01 c0                	add    eax,eax
    b9d7:	83 b8 5c 44 01 00 00 	cmp    DWORD PTR [eax+@obj3:__lpSOSSampleList],0x0                  ; fixup: num: 1400, src obj: 1, src ofs: 0xb9d9, dst obj: 3, dst ofs: 0x1445c
    b9de:	75 0a                	jne    update_mod_9_branch_1
    b9e0:	66 83 b8 60 44 01 00 00 	cmp    WORD PTR [eax+@obj3:__lpSOSSampleList_variable_1],0x0     ; fixup: num: 1399, src obj: 1, src ofs: 0xb9e3, dst obj: 3, dst ofs: 0x14460
    b9e8:	74 32                	je     update_mod_9_branch_3
update_mod_9_branch_1:
    b9ea:	0f b5 80 5c 44 01 00 	lgs    eax,FWORD PTR [eax+@obj3:__lpSOSSampleList]                  ; fixup: num: 1398, src obj: 1, src ofs: 0xb9ed, dst obj: 3, dst ofs: 0x1445c
    b9f1:	65 0f bf 48 34       	movsx  ecx,WORD PTR gs:[eax+0x34]
    b9f6:	0f bf 46 08          	movsx  eax,WORD PTR [esi+0x8]
    b9fa:	39 c8                	cmp    eax,ecx
    b9fc:	75 1e                	jne    update_mod_9_branch_3
    b9fe:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 1397, src obj: 1, src ofs: 0xb9ff, dst obj: 3, dst ofs: 0x1a1ac
    ba03:	e8 e9 a1 06 00       	call   sosDIGISampleDone_
    ba08:	83 f8 01             	cmp    eax,0x1
    ba0b:	75 0b                	jne    update_mod_9_branch_2
    ba0d:	66 c7 46 08 00 00    	mov    WORD PTR [esi+0x8],0x0
    ba13:	8a 46 08             	mov    al,BYTE PTR [esi+0x8]
    ba16:	eb 06                	jmp    update_mod_9_branch_4
update_mod_9_branch_2:
    ba18:	b0 01                	mov    al,0x1
    ba1a:	eb 02                	jmp    update_mod_9_branch_4
update_mod_9_branch_3:
    ba1c:	30 c0                	xor    al,al
update_mod_9_branch_4:
    ba1e:	84 c0                	test   al,al
    ba20:	74 28                	je     update_mod_9_branch_5
    ba22:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 1396, src obj: 1, src ofs: 0xba23, dst obj: 3, dst ofs: 0x1a1ac
    ba27:	8b 13                	mov    edx,DWORD PTR [ebx]
    ba29:	66 c7 43 08 00 00    	mov    WORD PTR [ebx+0x8],0x0
    ba2f:	e8 eb 7a 06 00       	call   sosDIGIStopSample_
    ba34:	83 f8 0a             	cmp    eax,0xa
    ba37:	75 11                	jne    update_mod_9_branch_5
    ba39:	bb 69 0b 00 00       	mov    ebx,@obj3:sound_cpp_variable_32                              ; fixup: num: 1395, src obj: 1, src ofs: 0xba3a, dst obj: 3, dst ofs: 0xb69
    ba3e:	ba fd 02 00 00       	mov    edx,0x2fd
    ba43:	31 c0                	xor    eax,eax
    ba45:	e8 e6 c5 02 00       	call   _error_report
update_mod_9_branch_5:
    ba4a:	30 c0                	xor    al,al
    ba4c:	83 c4 04             	add    esp,0x4
    ba4f:	5d                   	pop    ebp
    ba50:	5f                   	pop    edi
    ba51:	5e                   	pop    esi
    ba52:	5a                   	pop    edx
    ba53:	59                   	pop    ecx
    ba54:	5b                   	pop    ebx
    ba55:	c3                   	ret    
update_mod_9_branch_6:
    ba56:	80 3d b4 a1 01 00 00 	cmp    BYTE PTR ds:@obj3:the_sound_system_variable_3,0x0            ; fixup: num: 1394, src obj: 1, src ofs: 0xba58, dst obj: 3, dst ofs: 0x1a1b4
    ba5d:	74 52                	je     update_mod_9_branch_9
    ba5f:	8b 16                	mov    edx,DWORD PTR [esi]
    ba61:	8d 04 95 00 00 00 00 	lea    eax,[edx*4+0x0]
    ba68:	29 d0                	sub    eax,edx
    ba6a:	01 c0                	add    eax,eax
    ba6c:	83 b8 5c 44 01 00 00 	cmp    DWORD PTR [eax+@obj3:__lpSOSSampleList],0x0                  ; fixup: num: 1393, src obj: 1, src ofs: 0xba6e, dst obj: 3, dst ofs: 0x1445c
    ba73:	75 0a                	jne    update_mod_9_branch_7
    ba75:	66 83 b8 60 44 01 00 00 	cmp    WORD PTR [eax+@obj3:__lpSOSSampleList_variable_1],0x0     ; fixup: num: 1406, src obj: 1, src ofs: 0xba78, dst obj: 3, dst ofs: 0x14460
    ba7d:	74 32                	je     update_mod_9_branch_9
update_mod_9_branch_7:
    ba7f:	0f b5 80 5c 44 01 00 	lgs    eax,FWORD PTR [eax+@obj3:__lpSOSSampleList]                  ; fixup: num: 1405, src obj: 1, src ofs: 0xba82, dst obj: 3, dst ofs: 0x1445c
    ba86:	65 0f bf 58 34       	movsx  ebx,WORD PTR gs:[eax+0x34]
    ba8b:	0f bf 46 08          	movsx  eax,WORD PTR [esi+0x8]
    ba8f:	39 d8                	cmp    eax,ebx
    ba91:	75 1e                	jne    update_mod_9_branch_9
    ba93:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 1404, src obj: 1, src ofs: 0xba94, dst obj: 3, dst ofs: 0x1a1ac
    ba98:	e8 54 a1 06 00       	call   sosDIGISampleDone_
    ba9d:	83 f8 01             	cmp    eax,0x1
    baa0:	75 0b                	jne    update_mod_9_branch_8
    baa2:	66 c7 46 08 00 00    	mov    WORD PTR [esi+0x8],0x0
    baa8:	8a 46 08             	mov    al,BYTE PTR [esi+0x8]
    baab:	eb 06                	jmp    update_mod_9_branch_10
update_mod_9_branch_8:
    baad:	b0 01                	mov    al,0x1
    baaf:	eb 02                	jmp    update_mod_9_branch_10
update_mod_9_branch_9:
    bab1:	30 c0                	xor    al,al
update_mod_9_branch_10:
    bab3:	84 c0                	test   al,al
    bab5:	74 09                	je     update_mod_9_branch_11
    bab7:	80 be 91 00 00 00 00 	cmp    BYTE PTR [esi+0x91],0x0
    babe:	74 0c                	je     update_mod_9_branch_12
update_mod_9_branch_11:
    bac0:	30 c0                	xor    al,al
    bac2:	83 c4 04             	add    esp,0x4
    bac5:	5d                   	pop    ebp
    bac6:	5f                   	pop    edi
    bac7:	5e                   	pop    esi
    bac8:	5a                   	pop    edx
    bac9:	59                   	pop    ecx
    baca:	5b                   	pop    ebx
    bacb:	c3                   	ret    
update_mod_9_branch_12:
    bacc:	80 be 90 00 00 00 00 	cmp    BYTE PTR [esi+0x90],0x0
    bad3:	0f 84 69 01 00 00    	je     update_mod_9_branch_17
    bad9:	80 be b8 00 00 00 00 	cmp    BYTE PTR [esi+0xb8],0x0
    bae0:	0f 84 0d 01 00 00    	je     update_mod_9_branch_15
    bae6:	bb 00 20 00 00       	mov    ebx,0x2000
    baeb:	8b 96 fc 00 00 00    	mov    edx,DWORD PTR [esi+0xfc]
    baf1:	8b 86 88 00 00 00    	mov    eax,DWORD PTR [esi+0x88]
    baf7:	e8 67 64 06 00       	call   read_
    bafc:	a3 cc a1 01 00       	mov    ds:@obj3:wBytesRead,eax                                      ; fixup: num: 1403, src obj: 1, src ofs: 0xbafd, dst obj: 3, dst ofs: 0x1a1cc
    bb01:	83 f8 ff             	cmp    eax,0xffffffff
    bb04:	75 11                	jne    update_mod_9_branch_13
    bb06:	bb b2 0d 00 00       	mov    ebx,@obj3:sound_cpp_variable_54                              ; fixup: num: 1402, src obj: 1, src ofs: 0xbb07, dst obj: 3, dst ofs: 0xdb2
    bb0b:	ba 6c 04 00 00       	mov    edx,0x46c
    bb10:	31 c0                	xor    eax,eax
    bb12:	e8 19 c5 02 00       	call   _error_report
update_mod_9_branch_13:
    bb17:	8b 3d cc a1 01 00    	mov    edi,DWORD PTR ds:@obj3:wBytesRead                            ; fixup: num: 1401, src obj: 1, src ofs: 0xbb19, dst obj: 3, dst ofs: 0x1a1cc
    bb1d:	8d 8e bc 00 00 00    	lea    ecx,[esi+0xbc]
    bb23:	81 ff 00 20 00 00    	cmp    edi,0x2000
    bb29:	75 51                	jne    update_mod_9_branch_14
    bb2b:	8b 96 fc 00 00 00    	mov    edx,DWORD PTR [esi+0xfc]
    bb31:	89 96 bc 00 00 00    	mov    DWORD PTR [esi+0xbc],edx
    bb37:	8b 96 b0 00 00 00    	mov    edx,DWORD PTR [esi+0xb0]
    bb3d:	89 96 c4 00 00 00    	mov    DWORD PTR [esi+0xc4],edx
    bb43:	31 d2                	xor    edx,edx
    bb45:	66 8b 96 f8 00 00 00 	mov    dx,WORD PTR [esi+0xf8]
    bb4c:	89 d0                	mov    eax,edx
    bb4e:	c1 fa 1f             	sar    edx,0x1f
    bb51:	c1 e2 02             	shl    edx,0x2
    bb54:	1b c2                	sbb    eax,edx
    bb56:	c1 f8 02             	sar    eax,0x2
    bb59:	0f af c7             	imul   eax,edi
    bb5c:	50                   	push   eax
    bb5d:	8c 9e c0 00 00 00    	mov    WORD PTR [esi+0xc0],ds
    bb63:	51                   	push   ecx
    bb64:	8c 9e c8 00 00 00    	mov    WORD PTR [esi+0xc8],ds
    bb6a:	e8 96 49 06 00       	call   _sosCODECDecompressData
    bb6f:	83 c4 08             	add    esp,0x8
    bb72:	a3 cc a1 01 00       	mov    ds:@obj3:wBytesRead,eax                                      ; fixup: num: 1407, src obj: 1, src ofs: 0xbb73, dst obj: 3, dst ofs: 0x1a1cc
    bb77:	e9 c6 00 00 00       	jmp    update_mod_9_branch_17
update_mod_9_branch_14:
    bb7c:	ba 0e 00 00 00       	mov    edx,0xe
    bb81:	8b 86 88 00 00 00    	mov    eax,DWORD PTR [esi+0x88]
    bb87:	31 db                	xor    ebx,ebx
    bb89:	e8 41 63 06 00       	call   lseek_                                                       ; aliases: lseek_, _lseek_
    bb8e:	bb 30 00 00 00       	mov    ebx,0x30
    bb93:	89 c8                	mov    eax,ecx
    bb95:	31 d2                	xor    edx,edx
    bb97:	e8 34 58 06 00       	call   memset_
    bb9c:	8b 86 8c 00 00 00    	mov    eax,DWORD PTR [esi+0x8c]
    bba2:	31 d2                	xor    edx,edx
    bba4:	83 e8 0e             	sub    eax,0xe
    bba7:	66 8b 96 f8 00 00 00 	mov    dx,WORD PTR [esi+0xf8]
    bbae:	89 86 cc 00 00 00    	mov    DWORD PTR [esi+0xcc],eax
    bbb4:	89 d0                	mov    eax,edx
    bbb6:	c1 fa 1f             	sar    edx,0x1f
    bbb9:	c1 e2 02             	shl    edx,0x2
    bbbc:	1b c2                	sbb    eax,edx
    bbbe:	c1 f8 02             	sar    eax,0x2
    bbc1:	89 c2                	mov    edx,eax
    bbc3:	8b 86 cc 00 00 00    	mov    eax,DWORD PTR [esi+0xcc]
    bbc9:	0f af c2             	imul   eax,edx
    bbcc:	89 86 d0 00 00 00    	mov    DWORD PTR [esi+0xd0],eax
    bbd2:	51                   	push   ecx
    bbd3:	66 8b 86 f8 00 00 00 	mov    ax,WORD PTR [esi+0xf8]
    bbda:	31 ed                	xor    ebp,ebp
    bbdc:	66 89 86 e8 00 00 00 	mov    WORD PTR [esi+0xe8],ax
    bbe3:	e8 f8 48 06 00       	call   _sosCODECInitStream
    bbe8:	83 c4 04             	add    esp,0x4
    bbeb:	89 2d cc a1 01 00    	mov    DWORD PTR ds:@obj3:wBytesRead,ebp                            ; fixup: num: 1412, src obj: 1, src ofs: 0xbbed, dst obj: 3, dst ofs: 0x1a1cc
    bbf1:	eb 4f                	jmp    update_mod_9_branch_17
update_mod_9_branch_15:
    bbf3:	bb 00 20 00 00       	mov    ebx,0x2000
    bbf8:	8b 96 b0 00 00 00    	mov    edx,DWORD PTR [esi+0xb0]
    bbfe:	8b 86 88 00 00 00    	mov    eax,DWORD PTR [esi+0x88]
    bc04:	e8 5a 63 06 00       	call   read_
    bc09:	a3 cc a1 01 00       	mov    ds:@obj3:wBytesRead,eax                                      ; fixup: num: 1411, src obj: 1, src ofs: 0xbc0a, dst obj: 3, dst ofs: 0x1a1cc
    bc0e:	83 f8 ff             	cmp    eax,0xffffffff
    bc11:	75 11                	jne    update_mod_9_branch_16
    bc13:	bb d6 0d 00 00       	mov    ebx,@obj3:sound_cpp_variable_55                              ; fixup: num: 1410, src obj: 1, src ofs: 0xbc14, dst obj: 3, dst ofs: 0xdd6
    bc18:	ba 85 04 00 00       	mov    edx,0x485
    bc1d:	31 c0                	xor    eax,eax
    bc1f:	e8 0c c4 02 00       	call   _error_report
update_mod_9_branch_16:
    bc24:	81 3d cc a1 01 00 00 20 00 00 	cmp    DWORD PTR ds:@obj3:wBytesRead,0x2000                ; fixup: num: 1409, src obj: 1, src ofs: 0xbc26, dst obj: 3, dst ofs: 0x1a1cc
    bc2e:	74 12                	je     update_mod_9_branch_17
    bc30:	ba 2c 00 00 00       	mov    edx,0x2c
    bc35:	8b 86 88 00 00 00    	mov    eax,DWORD PTR [esi+0x88]
    bc3b:	31 db                	xor    ebx,ebx
    bc3d:	e8 8d 62 06 00       	call   lseek_                                                       ; aliases: lseek_, _lseek_
update_mod_9_branch_17:
    bc42:	8b 9e 94 00 00 00    	mov    ebx,DWORD PTR [esi+0x94]
    bc48:	85 db                	test   ebx,ebx
    bc4a:	0f 84 a4 01 00 00    	je     update_mod_9_branch_29
    bc50:	d9 86 a4 00 00 00    	fld    DWORD PTR [esi+0xa4]
    bc56:	d8 0d 30 0e 00 00    	fmul   DWORD PTR ds:@obj3:sound_cpp_variable_61                     ; fixup: num: 1408, src obj: 1, src ofs: 0xbc58, dst obj: 3, dst ofs: 0xe30
    bc5c:	e8 e7 a0 06 00       	call   __CHP
    bc61:	db 1c 24             	fistp  DWORD PTR [esp]
    bc64:	8b 96 a8 00 00 00    	mov    edx,DWORD PTR [esi+0xa8]
    bc6a:	03 14 24             	add    edx,DWORD PTR [esp]
    bc6d:	e8 90 64 06 00       	call   clock_
    bc72:	39 d0                	cmp    eax,edx
    bc74:	0f 86 1b 03 00 00    	jbe    update_mod_9_branch_42
    bc7a:	e8 83 64 06 00       	call   clock_
    bc7f:	8b be 94 00 00 00    	mov    edi,DWORD PTR [esi+0x94]
    bc85:	89 86 a8 00 00 00    	mov    DWORD PTR [esi+0xa8],eax
    bc8b:	4f                   	dec    edi
    bc8c:	89 be 94 00 00 00    	mov    DWORD PTR [esi+0x94],edi
    bc92:	0f 85 8b 00 00 00    	jne    update_mod_9_branch_22
    bc98:	8b 0d b0 0f 01 00    	mov    ecx,DWORD PTR ds:@obj3:music_volume                          ; fixup: num: 1419, src obj: 1, src ofs: 0xbc9a, dst obj: 3, dst ofs: 0x10fb0
    bc9e:	89 f7                	mov    edi,esi
    bca0:	31 c0                	xor    eax,eax
    bca2:	66 8b 0c 4d be 0f 01 00 	mov    cx,WORD PTR [ecx*2+@obj3:volume_table]                    ; fixup: num: 1418, src obj: 1, src ofs: 0xbca6, dst obj: 3, dst ofs: 0x10fbe
    bcaa:	8a 7e 35             	mov    bh,BYTE PTR [esi+0x35]
    bcad:	66 89 c8             	mov    ax,cx
    bcb0:	80 cf 01             	or     bh,0x1
    bcb3:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
    bcb6:	a0 b4 a1 01 00       	mov    al,ds:@obj3:the_sound_system_variable_3                      ; fixup: num: 1417, src obj: 1, src ofs: 0xbcb7, dst obj: 3, dst ofs: 0x1a1b4
    bcbb:	88 7e 35             	mov    BYTE PTR [esi+0x35],bh
    bcbe:	84 c0                	test   al,al
    bcc0:	74 54                	je     update_mod_9_branch_21
    bcc2:	8b 16                	mov    edx,DWORD PTR [esi]
    bcc4:	8d 04 95 00 00 00 00 	lea    eax,[edx*4+0x0]
    bccb:	29 d0                	sub    eax,edx
    bccd:	01 c0                	add    eax,eax
    bccf:	83 b8 5c 44 01 00 00 	cmp    DWORD PTR [eax+@obj3:__lpSOSSampleList],0x0                  ; fixup: num: 1416, src obj: 1, src ofs: 0xbcd1, dst obj: 3, dst ofs: 0x1445c
    bcd6:	75 0a                	jne    update_mod_9_branch_18
    bcd8:	66 83 b8 60 44 01 00 00 	cmp    WORD PTR [eax+@obj3:__lpSOSSampleList_variable_1],0x0     ; fixup: num: 1415, src obj: 1, src ofs: 0xbcdb, dst obj: 3, dst ofs: 0x14460
    bce0:	74 32                	je     update_mod_9_branch_20
update_mod_9_branch_18:
    bce2:	0f b5 80 5c 44 01 00 	lgs    eax,FWORD PTR [eax+@obj3:__lpSOSSampleList]                  ; fixup: num: 1414, src obj: 1, src ofs: 0xbce5, dst obj: 3, dst ofs: 0x1445c
    bce9:	0f bf 5e 08          	movsx  ebx,WORD PTR [esi+0x8]
    bced:	65 0f bf 40 34       	movsx  eax,WORD PTR gs:[eax+0x34]
    bcf2:	39 c3                	cmp    ebx,eax
    bcf4:	75 1e                	jne    update_mod_9_branch_20
    bcf6:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 1413, src obj: 1, src ofs: 0xbcf7, dst obj: 3, dst ofs: 0x1a1ac
    bcfb:	e8 f1 9e 06 00       	call   sosDIGISampleDone_
    bd00:	83 f8 01             	cmp    eax,0x1
    bd03:	75 0b                	jne    update_mod_9_branch_19
    bd05:	66 c7 46 08 00 00    	mov    WORD PTR [esi+0x8],0x0
    bd0b:	8a 46 08             	mov    al,BYTE PTR [esi+0x8]
    bd0e:	eb 06                	jmp    update_mod_9_branch_21
update_mod_9_branch_19:
    bd10:	b0 01                	mov    al,0x1
    bd12:	eb 02                	jmp    update_mod_9_branch_21
update_mod_9_branch_20:
    bd14:	30 c0                	xor    al,al
update_mod_9_branch_21:
    bd16:	84 c0                	test   al,al
    bd18:	0f 84 77 02 00 00    	je     update_mod_9_branch_42
    bd1e:	e9 61 02 00 00       	jmp    update_mod_9_branch_41
update_mod_9_branch_22:
    bd23:	8b 86 a0 00 00 00    	mov    eax,DWORD PTR [esi+0xa0]
    bd29:	8b 96 9c 00 00 00    	mov    edx,DWORD PTR [esi+0x9c]
    bd2f:	01 c2                	add    edx,eax
    bd31:	8b 1d b0 0f 01 00    	mov    ebx,DWORD PTR ds:@obj3:music_volume                          ; fixup: num: 1426, src obj: 1, src ofs: 0xbd33, dst obj: 3, dst ofs: 0x10fb0
    bd37:	89 96 9c 00 00 00    	mov    DWORD PTR [esi+0x9c],edx
    bd3d:	39 da                	cmp    edx,ebx
    bd3f:	7e 06                	jle    update_mod_9_branch_23
    bd41:	89 9e 9c 00 00 00    	mov    DWORD PTR [esi+0x9c],ebx
update_mod_9_branch_23:
    bd47:	8a 1d b4 a1 01 00    	mov    bl,BYTE PTR ds:@obj3:the_sound_system_variable_3             ; fixup: num: 1425, src obj: 1, src ofs: 0xbd49, dst obj: 3, dst ofs: 0x1a1b4
    bd4d:	8b 8e 9c 00 00 00    	mov    ecx,DWORD PTR [esi+0x9c]
    bd53:	8a 76 35             	mov    dh,BYTE PTR [esi+0x35]
    bd56:	31 c0                	xor    eax,eax
    bd58:	66 8b 0c 4d be 0f 01 00 	mov    cx,WORD PTR [ecx*2+@obj3:volume_table]                    ; fixup: num: 1424, src obj: 1, src ofs: 0xbd5c, dst obj: 3, dst ofs: 0x10fbe
    bd60:	80 ce 01             	or     dh,0x1
    bd63:	66 89 c8             	mov    ax,cx
    bd66:	88 76 35             	mov    BYTE PTR [esi+0x35],dh
    bd69:	89 f7                	mov    edi,esi
    bd6b:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
    bd6e:	84 db                	test   bl,bl
    bd70:	75 07                	jne    update_mod_9_branch_24
    bd72:	30 c8                	xor    al,cl
    bd74:	e9 6e 00 00 00       	jmp    update_mod_9_branch_28
update_mod_9_branch_24:
    bd79:	8b 16                	mov    edx,DWORD PTR [esi]
    bd7b:	8d 04 95 00 00 00 00 	lea    eax,[edx*4+0x0]
    bd82:	29 d0                	sub    eax,edx
    bd84:	01 c0                	add    eax,eax
    bd86:	8b a8 5c 44 01 00    	mov    ebp,DWORD PTR [eax+@obj3:__lpSOSSampleList]                  ; fixup: num: 1423, src obj: 1, src ofs: 0xbd88, dst obj: 3, dst ofs: 0x1445c
    bd8c:	66 8b 98 60 44 01 00 	mov    bx,WORD PTR [eax+@obj3:__lpSOSSampleList_variable_1]         ; fixup: num: 1422, src obj: 1, src ofs: 0xbd8f, dst obj: 3, dst ofs: 0x14460
    bd93:	85 ed                	test   ebp,ebp
    bd95:	75 05                	jne    update_mod_9_branch_25
    bd97:	66 85 db             	test   bx,bx
    bd9a:	74 49                	je     update_mod_9_branch_27
update_mod_9_branch_25:
    bd9c:	8e a8 60 44 01 00    	mov    gs,WORD PTR [eax+@obj3:__lpSOSSampleList_variable_1]         ; fixup: num: 1421, src obj: 1, src ofs: 0xbd9e, dst obj: 3, dst ofs: 0x14460
    bda2:	89 e8                	mov    eax,ebp
    bda4:	65 0f bf 58 34       	movsx  ebx,WORD PTR gs:[eax+0x34]
    bda9:	0f bf 46 08          	movsx  eax,WORD PTR [esi+0x8]
    bdad:	39 d8                	cmp    eax,ebx
    bdaf:	75 34                	jne    update_mod_9_branch_27
    bdb1:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 1420, src obj: 1, src ofs: 0xbdb2, dst obj: 3, dst ofs: 0x1a1ac
    bdb6:	e8 36 9e 06 00       	call   sosDIGISampleDone_
    bdbb:	83 f8 01             	cmp    eax,0x1
    bdbe:	75 16                	jne    update_mod_9_branch_26
    bdc0:	66 c7 46 08 00 00    	mov    WORD PTR [esi+0x8],0x0
    bdc6:	8a 46 08             	mov    al,BYTE PTR [esi+0x8]
    bdc9:	84 c0                	test   al,al
    bdcb:	0f 84 c4 01 00 00    	je     update_mod_9_branch_42
    bdd1:	e9 ae 01 00 00       	jmp    update_mod_9_branch_41
update_mod_9_branch_26:
    bdd6:	b0 01                	mov    al,0x1
    bdd8:	84 c0                	test   al,al
    bdda:	0f 84 b5 01 00 00    	je     update_mod_9_branch_42
    bde0:	e9 9f 01 00 00       	jmp    update_mod_9_branch_41
update_mod_9_branch_27:
    bde5:	30 c0                	xor    al,al
update_mod_9_branch_28:
    bde7:	84 c0                	test   al,al
    bde9:	0f 84 a6 01 00 00    	je     update_mod_9_branch_42
    bdef:	e9 90 01 00 00       	jmp    update_mod_9_branch_41
update_mod_9_branch_29:
    bdf4:	83 be 98 00 00 00 00 	cmp    DWORD PTR [esi+0x98],0x0
    bdfb:	0f 84 94 01 00 00    	je     update_mod_9_branch_42
    be01:	d9 86 a4 00 00 00    	fld    DWORD PTR [esi+0xa4]
    be07:	d8 0d 30 0e 00 00    	fmul   DWORD PTR ds:@obj3:sound_cpp_variable_61                     ; fixup: num: 1429, src obj: 1, src ofs: 0xbe09, dst obj: 3, dst ofs: 0xe30
    be0d:	e8 36 9f 06 00       	call   __CHP
    be12:	db 1c 24             	fistp  DWORD PTR [esp]
    be15:	8b 96 a8 00 00 00    	mov    edx,DWORD PTR [esi+0xa8]
    be1b:	03 14 24             	add    edx,DWORD PTR [esp]
    be1e:	e8 df 62 06 00       	call   clock_
    be23:	39 d0                	cmp    eax,edx
    be25:	0f 86 6a 01 00 00    	jbe    update_mod_9_branch_42
    be2b:	e8 d2 62 06 00       	call   clock_
    be30:	89 86 a8 00 00 00    	mov    DWORD PTR [esi+0xa8],eax
    be36:	8b ae 98 00 00 00    	mov    ebp,DWORD PTR [esi+0x98]
    be3c:	8b 96 9c 00 00 00    	mov    edx,DWORD PTR [esi+0x9c]
    be42:	8b 86 a0 00 00 00    	mov    eax,DWORD PTR [esi+0xa0]
    be48:	4d                   	dec    ebp
    be49:	29 c2                	sub    edx,eax
    be4b:	89 ae 98 00 00 00    	mov    DWORD PTR [esi+0x98],ebp
    be51:	89 96 9c 00 00 00    	mov    DWORD PTR [esi+0x9c],edx
    be57:	85 d2                	test   edx,edx
    be59:	7d 06                	jge    update_mod_9_branch_30
    be5b:	89 9e 9c 00 00 00    	mov    DWORD PTR [esi+0x9c],ebx
update_mod_9_branch_30:
    be61:	8b 8e 9c 00 00 00    	mov    ecx,DWORD PTR [esi+0x9c]
    be67:	89 f7                	mov    edi,esi
    be69:	31 c0                	xor    eax,eax
    be6b:	66 8b 0c 4d be 0f 01 00 	mov    cx,WORD PTR [ecx*2+@obj3:volume_table]                    ; fixup: num: 1428, src obj: 1, src ofs: 0xbe6f, dst obj: 3, dst ofs: 0x10fbe
    be73:	8a 7e 35             	mov    bh,BYTE PTR [esi+0x35]
    be76:	66 89 c8             	mov    ax,cx
    be79:	80 cf 01             	or     bh,0x1
    be7c:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
    be7f:	a0 b4 a1 01 00       	mov    al,ds:@obj3:the_sound_system_variable_3                      ; fixup: num: 1427, src obj: 1, src ofs: 0xbe80, dst obj: 3, dst ofs: 0x1a1b4
    be84:	88 7e 35             	mov    BYTE PTR [esi+0x35],bh
    be87:	84 c0                	test   al,al
    be89:	74 58                	je     update_mod_9_branch_34
    be8b:	8b 16                	mov    edx,DWORD PTR [esi]
    be8d:	8d 04 95 00 00 00 00 	lea    eax,[edx*4+0x0]
    be94:	29 d0                	sub    eax,edx
    be96:	01 c0                	add    eax,eax
    be98:	8b a8 5c 44 01 00    	mov    ebp,DWORD PTR [eax+@obj3:__lpSOSSampleList]                  ; fixup: num: 1367, src obj: 1, src ofs: 0xbe9a, dst obj: 3, dst ofs: 0x1445c
    be9e:	66 8b 98 60 44 01 00 	mov    bx,WORD PTR [eax+@obj3:__lpSOSSampleList_variable_1]         ; fixup: num: 1366, src obj: 1, src ofs: 0xbea1, dst obj: 3, dst ofs: 0x14460
    bea5:	85 ed                	test   ebp,ebp
    bea7:	75 05                	jne    update_mod_9_branch_31
    bea9:	66 85 db             	test   bx,bx
    beac:	74 33                	je     update_mod_9_branch_33
update_mod_9_branch_31:
    beae:	8e a8 60 44 01 00    	mov    gs,WORD PTR [eax+@obj3:__lpSOSSampleList_variable_1]         ; fixup: num: 1365, src obj: 1, src ofs: 0xbeb0, dst obj: 3, dst ofs: 0x14460
    beb4:	89 e8                	mov    eax,ebp
    beb6:	0f bf 5e 08          	movsx  ebx,WORD PTR [esi+0x8]
    beba:	65 0f bf 40 34       	movsx  eax,WORD PTR gs:[eax+0x34]
    bebf:	39 c3                	cmp    ebx,eax
    bec1:	75 1e                	jne    update_mod_9_branch_33
    bec3:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 1364, src obj: 1, src ofs: 0xbec4, dst obj: 3, dst ofs: 0x1a1ac
    bec8:	e8 24 9d 06 00       	call   sosDIGISampleDone_
    becd:	83 f8 01             	cmp    eax,0x1
    bed0:	75 0b                	jne    update_mod_9_branch_32
    bed2:	66 c7 46 08 00 00    	mov    WORD PTR [esi+0x8],0x0
    bed8:	8a 46 08             	mov    al,BYTE PTR [esi+0x8]
    bedb:	eb 06                	jmp    update_mod_9_branch_34
update_mod_9_branch_32:
    bedd:	b0 01                	mov    al,0x1
    bedf:	eb 02                	jmp    update_mod_9_branch_34
update_mod_9_branch_33:
    bee1:	30 c0                	xor    al,al
update_mod_9_branch_34:
    bee3:	84 c0                	test   al,al
    bee5:	74 11                	je     update_mod_9_branch_35
    bee7:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 1363, src obj: 1, src ofs: 0xbee8, dst obj: 3, dst ofs: 0x1a1ac
    beec:	31 db                	xor    ebx,ebx
    beee:	8b 17                	mov    edx,DWORD PTR [edi]
    bef0:	66 89 cb             	mov    bx,cx
    bef3:	e8 18 96 06 00       	call   sosDIGISetSampleVolume_
update_mod_9_branch_35:
    bef8:	8b 86 98 00 00 00    	mov    eax,DWORD PTR [esi+0x98]
    befe:	85 c0                	test   eax,eax
    bf00:	0f 85 8f 00 00 00    	jne    update_mod_9_branch_42
    bf06:	66 8b 0d be 0f 01 00 	mov    cx,WORD PTR ds:@obj3:volume_table                            ; fixup: num: 1431, src obj: 1, src ofs: 0xbf09, dst obj: 3, dst ofs: 0x10fbe
    bf0d:	66 89 c8             	mov    ax,cx
    bf10:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
    bf13:	8a 66 35             	mov    ah,BYTE PTR [esi+0x35]
    bf16:	8a 15 b4 a1 01 00    	mov    dl,BYTE PTR ds:@obj3:the_sound_system_variable_3             ; fixup: num: 1430, src obj: 1, src ofs: 0xbf18, dst obj: 3, dst ofs: 0x1a1b4
    bf1c:	80 cc 01             	or     ah,0x1
    bf1f:	89 f7                	mov    edi,esi
    bf21:	88 66 35             	mov    BYTE PTR [esi+0x35],ah
    bf24:	84 d2                	test   dl,dl
    bf26:	75 04                	jne    update_mod_9_branch_36
    bf28:	30 c8                	xor    al,cl
    bf2a:	eb 54                	jmp    update_mod_9_branch_40
update_mod_9_branch_36:
    bf2c:	8b 16                	mov    edx,DWORD PTR [esi]
    bf2e:	8d 04 95 00 00 00 00 	lea    eax,[edx*4+0x0]
    bf35:	29 d0                	sub    eax,edx
    bf37:	01 c0                	add    eax,eax
    bf39:	83 b8 5c 44 01 00 00 	cmp    DWORD PTR [eax+@obj3:__lpSOSSampleList],0x0                  ; fixup: num: 1373, src obj: 1, src ofs: 0xbf3b, dst obj: 3, dst ofs: 0x1445c
    bf40:	75 0a                	jne    update_mod_9_branch_37
    bf42:	66 83 b8 60 44 01 00 00 	cmp    WORD PTR [eax+@obj3:__lpSOSSampleList_variable_1],0x0     ; fixup: num: 1372, src obj: 1, src ofs: 0xbf45, dst obj: 3, dst ofs: 0x14460
    bf4a:	74 32                	je     update_mod_9_branch_39
update_mod_9_branch_37:
    bf4c:	0f b5 80 5c 44 01 00 	lgs    eax,FWORD PTR [eax+@obj3:__lpSOSSampleList]                  ; fixup: num: 1371, src obj: 1, src ofs: 0xbf4f, dst obj: 3, dst ofs: 0x1445c
    bf53:	0f bf 5e 08          	movsx  ebx,WORD PTR [esi+0x8]
    bf57:	65 0f bf 40 34       	movsx  eax,WORD PTR gs:[eax+0x34]
    bf5c:	39 c3                	cmp    ebx,eax
    bf5e:	75 1e                	jne    update_mod_9_branch_39
    bf60:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 1370, src obj: 1, src ofs: 0xbf61, dst obj: 3, dst ofs: 0x1a1ac
    bf65:	e8 87 9c 06 00       	call   sosDIGISampleDone_
    bf6a:	83 f8 01             	cmp    eax,0x1
    bf6d:	75 0b                	jne    update_mod_9_branch_38
    bf6f:	66 c7 46 08 00 00    	mov    WORD PTR [esi+0x8],0x0
    bf75:	8a 46 08             	mov    al,BYTE PTR [esi+0x8]
    bf78:	eb 06                	jmp    update_mod_9_branch_40
update_mod_9_branch_38:
    bf7a:	b0 01                	mov    al,0x1
    bf7c:	eb 02                	jmp    update_mod_9_branch_40
update_mod_9_branch_39:
    bf7e:	30 c0                	xor    al,al
update_mod_9_branch_40:
    bf80:	84 c0                	test   al,al
    bf82:	74 11                	je     update_mod_9_branch_42
update_mod_9_branch_41:
    bf84:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 1369, src obj: 1, src ofs: 0xbf85, dst obj: 3, dst ofs: 0x1a1ac
    bf89:	31 db                	xor    ebx,ebx
    bf8b:	8b 17                	mov    edx,DWORD PTR [edi]
    bf8d:	66 89 cb             	mov    bx,cx
    bf90:	e8 7b 95 06 00       	call   sosDIGISetSampleVolume_
update_mod_9_branch_42:
    bf95:	8b 1d cc a1 01 00    	mov    ebx,DWORD PTR ds:@obj3:wBytesRead                            ; fixup: num: 1368, src obj: 1, src ofs: 0xbf97, dst obj: 3, dst ofs: 0x1a1cc
    bf9b:	89 f0                	mov    eax,esi
    bf9d:	8b 96 b0 00 00 00    	mov    edx,DWORD PTR [esi+0xb0]
    bfa3:	e8 98 cf ff ff       	call   insert_into_buffer
    bfa8:	88 86 90 00 00 00    	mov    BYTE PTR [esi+0x90],al
    bfae:	83 c4 04             	add    esp,0x4
    bfb1:	5d                   	pop    ebp
    bfb2:	5f                   	pop    edi
    bfb3:	5e                   	pop    esi
    bfb4:	5a                   	pop    edx
    bfb5:	59                   	pop    ecx
    bfb6:	5b                   	pop    ebx
    bfb7:	c3                   	ret    
    bfb8:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    bfbe:	8b d2                	mov    edx,edx

;-------------------------------------------------
;  Function 'change_music_file'                  -
;-------------------------------------------------
change_music_file:
    bfc0:	53                   	push   ebx
    bfc1:	51                   	push   ecx
    bfc2:	56                   	push   esi
    bfc3:	57                   	push   edi
    bfc4:	55                   	push   ebp
    bfc5:	89 c5                	mov    ebp,eax
    bfc7:	89 d1                	mov    ecx,edx
    bfc9:	c6 80 91 00 00 00 00 	mov    BYTE PTR [eax+0x91],0x0
    bfd0:	85 d2                	test   edx,edx
    bfd2:	0f 84 f5 04 00 00    	je     change_music_file_branch_35
    bfd8:	8b 80 00 01 00 00    	mov    eax,DWORD PTR [eax+0x100]
    bfde:	e8 77 54 06 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
    bfe3:	85 c0                	test   eax,eax
    bfe5:	0f 84 e2 04 00 00    	je     change_music_file_branch_35
    bfeb:	89 ce                	mov    esi,ecx
    bfed:	8b bd 00 01 00 00    	mov    edi,DWORD PTR [ebp+0x100]
    bff3:	57                   	push   edi
change_music_file_branch_1:
    bff4:	8a 06                	mov    al,BYTE PTR [esi]
    bff6:	88 07                	mov    BYTE PTR [edi],al
    bff8:	3c 00                	cmp    al,0x0
    bffa:	74 10                	je     change_music_file_branch_2
    bffc:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
    bfff:	83 c6 02             	add    esi,0x2
    c002:	88 47 01             	mov    BYTE PTR [edi+0x1],al
    c005:	83 c7 02             	add    edi,0x2
    c008:	3c 00                	cmp    al,0x0
    c00a:	75 e8                	jne    change_music_file_branch_1
change_music_file_branch_2:
    c00c:	5f                   	pop    edi
    c00d:	8b 95 88 00 00 00    	mov    edx,DWORD PTR [ebp+0x88]
    c013:	83 fa ff             	cmp    edx,0xffffffff
    c016:	74 07                	je     change_music_file_branch_3
    c018:	89 d0                	mov    eax,edx
    c01a:	e8 f1 5e 06 00       	call   close_
change_music_file_branch_3:
    c01f:	8a 25 b4 a1 01 00    	mov    ah,BYTE PTR ds:@obj3:the_sound_system_variable_3             ; fixup: num: 1575, src obj: 1, src ofs: 0xc021, dst obj: 3, dst ofs: 0x1a1b4
    c025:	c7 85 88 00 00 00 ff ff ff ff 	mov    DWORD PTR [ebp+0x88],0xffffffff
    c02f:	84 e4                	test   ah,ah
    c031:	74 53                	je     change_music_file_branch_6
    c033:	8b 55 00             	mov    edx,DWORD PTR [ebp+0x0]
    c036:	8d 04 95 00 00 00 00 	lea    eax,[edx*4+0x0]
    c03d:	29 d0                	sub    eax,edx
    c03f:	01 c0                	add    eax,eax
    c041:	83 b8 5c 44 01 00 00 	cmp    DWORD PTR [eax+@obj3:__lpSOSSampleList],0x0                  ; fixup: num: 1574, src obj: 1, src ofs: 0xc043, dst obj: 3, dst ofs: 0x1445c
    c048:	75 0a                	jne    change_music_file_branch_4
    c04a:	66 83 b8 60 44 01 00 00 	cmp    WORD PTR [eax+@obj3:__lpSOSSampleList_variable_1],0x0     ; fixup: num: 1573, src obj: 1, src ofs: 0xc04d, dst obj: 3, dst ofs: 0x14460
    c052:	74 32                	je     change_music_file_branch_6
change_music_file_branch_4:
    c054:	0f b5 80 5c 44 01 00 	lgs    eax,FWORD PTR [eax+@obj3:__lpSOSSampleList]                  ; fixup: num: 1572, src obj: 1, src ofs: 0xc057, dst obj: 3, dst ofs: 0x1445c
    c05b:	0f bf 5d 08          	movsx  ebx,WORD PTR [ebp+0x8]
    c05f:	65 0f bf 40 34       	movsx  eax,WORD PTR gs:[eax+0x34]
    c064:	39 c3                	cmp    ebx,eax
    c066:	75 1e                	jne    change_music_file_branch_6
    c068:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 1571, src obj: 1, src ofs: 0xc069, dst obj: 3, dst ofs: 0x1a1ac
    c06d:	e8 7f 9b 06 00       	call   sosDIGISampleDone_
    c072:	83 f8 01             	cmp    eax,0x1
    c075:	75 0b                	jne    change_music_file_branch_5
    c077:	66 c7 45 08 00 00    	mov    WORD PTR [ebp+0x8],0x0
    c07d:	8a 45 08             	mov    al,BYTE PTR [ebp+0x8]
    c080:	eb 06                	jmp    change_music_file_branch_7
change_music_file_branch_5:
    c082:	b0 01                	mov    al,0x1
    c084:	eb 02                	jmp    change_music_file_branch_7
change_music_file_branch_6:
    c086:	30 c0                	xor    al,al
change_music_file_branch_7:
    c088:	84 c0                	test   al,al
    c08a:	0f 84 f0 00 00 00    	je     change_music_file_branch_18
    c090:	8a 15 b4 a1 01 00    	mov    dl,BYTE PTR ds:@obj3:the_sound_system_variable_3             ; fixup: num: 1570, src obj: 1, src ofs: 0xc092, dst obj: 3, dst ofs: 0x1a1b4
    c096:	89 eb                	mov    ebx,ebp
    c098:	84 d2                	test   dl,dl
    c09a:	0f 84 83 00 00 00    	je     change_music_file_branch_12
    c0a0:	74 53                	je     change_music_file_branch_10
    c0a2:	8b 55 00             	mov    edx,DWORD PTR [ebp+0x0]
    c0a5:	8d 04 95 00 00 00 00 	lea    eax,[edx*4+0x0]
    c0ac:	29 d0                	sub    eax,edx
    c0ae:	01 c0                	add    eax,eax
    c0b0:	83 b8 5c 44 01 00 00 	cmp    DWORD PTR [eax+@obj3:__lpSOSSampleList],0x0                  ; fixup: num: 1584, src obj: 1, src ofs: 0xc0b2, dst obj: 3, dst ofs: 0x1445c
    c0b7:	75 0a                	jne    change_music_file_branch_8
    c0b9:	66 83 b8 60 44 01 00 00 	cmp    WORD PTR [eax+@obj3:__lpSOSSampleList_variable_1],0x0     ; fixup: num: 1583, src obj: 1, src ofs: 0xc0bc, dst obj: 3, dst ofs: 0x14460
    c0c1:	74 32                	je     change_music_file_branch_10
change_music_file_branch_8:
    c0c3:	0f b5 80 5c 44 01 00 	lgs    eax,FWORD PTR [eax+@obj3:__lpSOSSampleList]                  ; fixup: num: 1582, src obj: 1, src ofs: 0xc0c6, dst obj: 3, dst ofs: 0x1445c
    c0ca:	0f bf 7d 08          	movsx  edi,WORD PTR [ebp+0x8]
    c0ce:	65 0f bf 40 34       	movsx  eax,WORD PTR gs:[eax+0x34]
    c0d3:	39 c7                	cmp    edi,eax
    c0d5:	75 1e                	jne    change_music_file_branch_10
    c0d7:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 1581, src obj: 1, src ofs: 0xc0d8, dst obj: 3, dst ofs: 0x1a1ac
    c0dc:	e8 10 9b 06 00       	call   sosDIGISampleDone_
    c0e1:	83 f8 01             	cmp    eax,0x1
    c0e4:	75 0b                	jne    change_music_file_branch_9
    c0e6:	66 c7 45 08 00 00    	mov    WORD PTR [ebp+0x8],0x0
    c0ec:	8a 45 08             	mov    al,BYTE PTR [ebp+0x8]
    c0ef:	eb 06                	jmp    change_music_file_branch_11
change_music_file_branch_9:
    c0f1:	b0 01                	mov    al,0x1
    c0f3:	eb 02                	jmp    change_music_file_branch_11
change_music_file_branch_10:
    c0f5:	30 c0                	xor    al,al
change_music_file_branch_11:
    c0f7:	84 c0                	test   al,al
    c0f9:	74 28                	je     change_music_file_branch_12
    c0fb:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 1580, src obj: 1, src ofs: 0xc0fc, dst obj: 3, dst ofs: 0x1a1ac
    c100:	8b 13                	mov    edx,DWORD PTR [ebx]
    c102:	66 c7 43 08 00 00    	mov    WORD PTR [ebx+0x8],0x0
    c108:	e8 12 74 06 00       	call   sosDIGIStopSample_
    c10d:	83 f8 0a             	cmp    eax,0xa
    c110:	75 11                	jne    change_music_file_branch_12
    c112:	bb 69 0b 00 00       	mov    ebx,@obj3:sound_cpp_variable_32                              ; fixup: num: 1579, src obj: 1, src ofs: 0xc113, dst obj: 3, dst ofs: 0xb69
    c117:	ba fd 02 00 00       	mov    edx,0x2fd
    c11c:	31 c0                	xor    eax,eax
    c11e:	e8 0d bf 02 00       	call   _error_report
change_music_file_branch_12:
    c123:	31 db                	xor    ebx,ebx
change_music_file_branch_13:
    c125:	a0 b4 a1 01 00       	mov    al,ds:@obj3:the_sound_system_variable_3                      ; fixup: num: 1578, src obj: 1, src ofs: 0xc126, dst obj: 3, dst ofs: 0x1a1b4
    c12a:	38 c3                	cmp    bl,al
    c12c:	74 4e                	je     change_music_file_branch_17
    c12e:	6b 45 00 06          	imul   eax,DWORD PTR [ebp+0x0],0x6
    c132:	8b 90 5c 44 01 00    	mov    edx,DWORD PTR [eax+@obj3:__lpSOSSampleList]                  ; fixup: num: 1577, src obj: 1, src ofs: 0xc134, dst obj: 3, dst ofs: 0x1445c
    c138:	66 8b b8 60 44 01 00 	mov    di,WORD PTR [eax+@obj3:__lpSOSSampleList_variable_1]         ; fixup: num: 1576, src obj: 1, src ofs: 0xc13b, dst obj: 3, dst ofs: 0x14460
    c13f:	39 d3                	cmp    ebx,edx
    c141:	75 05                	jne    change_music_file_branch_14
    c143:	66 85 ff             	test   di,di
    c146:	74 32                	je     change_music_file_branch_16
change_music_file_branch_14:
    c148:	8e a8 60 44 01 00    	mov    gs,WORD PTR [eax+@obj3:__lpSOSSampleList_variable_1]         ; fixup: num: 1587, src obj: 1, src ofs: 0xc14a, dst obj: 3, dst ofs: 0x14460
    c14e:	65 0f bf 52 34       	movsx  edx,WORD PTR gs:[edx+0x34]
    c153:	0f bf 45 08          	movsx  eax,WORD PTR [ebp+0x8]
    c157:	39 d0                	cmp    eax,edx
    c159:	75 1f                	jne    change_music_file_branch_16
    c15b:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 1586, src obj: 1, src ofs: 0xc15c, dst obj: 3, dst ofs: 0x1a1ac
    c160:	8b 55 00             	mov    edx,DWORD PTR [ebp+0x0]
    c163:	e8 89 9a 06 00       	call   sosDIGISampleDone_
    c168:	83 f8 01             	cmp    eax,0x1
    c16b:	75 09                	jne    change_music_file_branch_15
    c16d:	66 89 5d 08          	mov    WORD PTR [ebp+0x8],bx
    c171:	8a 45 08             	mov    al,BYTE PTR [ebp+0x8]
    c174:	eb 06                	jmp    change_music_file_branch_17
change_music_file_branch_15:
    c176:	b0 01                	mov    al,0x1
    c178:	eb 02                	jmp    change_music_file_branch_17
change_music_file_branch_16:
    c17a:	88 d8                	mov    al,bl
change_music_file_branch_17:
    c17c:	84 c0                	test   al,al
    c17e:	75 a5                	jne    change_music_file_branch_13
change_music_file_branch_18:
    c180:	8b 9d ac 00 00 00    	mov    ebx,DWORD PTR [ebp+0xac]
    c186:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
    c189:	31 d2                	xor    edx,edx
    c18b:	e8 40 52 06 00       	call   memset_
    c190:	89 ce                	mov    esi,ecx
    c192:	b2 2e                	mov    dl,0x2e
    c194:	c7 45 04 00 00 00 00 	mov    DWORD PTR [ebp+0x4],0x0
change_music_file_branch_19:
    c19b:	8a 06                	mov    al,BYTE PTR [esi]
    c19d:	3a c2                	cmp    al,dl
    c19f:	74 12                	je     change_music_file_branch_21
    c1a1:	3c 00                	cmp    al,0x0
    c1a3:	74 0c                	je     change_music_file_branch_20
    c1a5:	46                   	inc    esi
    c1a6:	8a 06                	mov    al,BYTE PTR [esi]
    c1a8:	3a c2                	cmp    al,dl
    c1aa:	74 07                	je     change_music_file_branch_21
    c1ac:	46                   	inc    esi
    c1ad:	3c 00                	cmp    al,0x0
    c1af:	75 ea                	jne    change_music_file_branch_19
change_music_file_branch_20:
    c1b1:	2b f6                	sub    esi,esi
change_music_file_branch_21:
    c1b3:	ba 34 0e 00 00       	mov    edx,@obj3:sound_cpp_variable_62                              ; fixup: num: 1585, src obj: 1, src ofs: 0xc1b4, dst obj: 3, dst ofs: 0xe34
    c1b8:	89 f0                	mov    eax,esi
    c1ba:	e8 9b 52 06 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
    c1bf:	85 c0                	test   eax,eax
    c1c1:	0f 94 c0             	sete   al
    c1c4:	88 85 b8 00 00 00    	mov    BYTE PTR [ebp+0xb8],al
    c1ca:	89 c8                	mov    eax,ecx
    c1cc:	e8 af 0a 00 00       	call   XFILE_size
    c1d1:	68 00 02 00 00       	push   0x200
    c1d6:	89 85 8c 00 00 00    	mov    DWORD PTR [ebp+0x8c],eax
    c1dc:	89 c8                	mov    eax,ecx
    c1de:	e8 9d 2b 00 00       	call   XFILE_map_cd
    c1e3:	50                   	push   eax
    c1e4:	e8 8d 53 06 00       	call   open_
    c1e9:	83 c4 08             	add    esp,0x8
    c1ec:	89 85 88 00 00 00    	mov    DWORD PTR [ebp+0x88],eax
    c1f2:	83 f8 ff             	cmp    eax,0xffffffff
    c1f5:	75 24                	jne    change_music_file_branch_22
    c1f7:	51                   	push   ecx
    c1f8:	68 39 0e 00 00       	push   @obj3:sound_cpp_variable_63                                  ; fixup: num: 1597, src obj: 1, src ofs: 0xc1f9, dst obj: 3, dst ofs: 0xe39
    c1fd:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 1596, src obj: 1, src ofs: 0xc1fe, dst obj: 3, dst ofs: 0x237fc
    c202:	bb fc 37 02 00       	mov    ebx,@obj3:log_buffer                                         ; fixup: num: 1595, src obj: 1, src ofs: 0xc203, dst obj: 3, dst ofs: 0x237fc
    c207:	e8 d5 49 06 00       	call   sprintf_
    c20c:	83 c4 0c             	add    esp,0xc
    c20f:	ba d9 04 00 00       	mov    edx,0x4d9
    c214:	31 c0                	xor    eax,eax
    c216:	e8 15 be 02 00       	call   _error_report
change_music_file_branch_22:
    c21b:	8b 0d b0 0f 01 00    	mov    ecx,DWORD PTR ds:@obj3:music_volume                          ; fixup: num: 1594, src obj: 1, src ofs: 0xc21d, dst obj: 3, dst ofs: 0x10fb0
    c221:	31 c0                	xor    eax,eax
    c223:	66 8b 0c 4d be 0f 01 00 	mov    cx,WORD PTR [ecx*2+@obj3:volume_table]                    ; fixup: num: 1593, src obj: 1, src ofs: 0xc227, dst obj: 3, dst ofs: 0x10fbe
    c22b:	66 89 c8             	mov    ax,cx
    c22e:	89 45 20             	mov    DWORD PTR [ebp+0x20],eax
    c231:	8a 65 35             	mov    ah,BYTE PTR [ebp+0x35]
    c234:	8a 15 b4 a1 01 00    	mov    dl,BYTE PTR ds:@obj3:the_sound_system_variable_3             ; fixup: num: 1592, src obj: 1, src ofs: 0xc236, dst obj: 3, dst ofs: 0x1a1b4
    c23a:	80 cc 01             	or     ah,0x1
    c23d:	89 ef                	mov    edi,ebp
    c23f:	88 65 35             	mov    BYTE PTR [ebp+0x35],ah
    c242:	84 d2                	test   dl,dl
    c244:	75 04                	jne    change_music_file_branch_23
    c246:	30 c8                	xor    al,cl
    c248:	eb 59                	jmp    change_music_file_branch_27
change_music_file_branch_23:
    c24a:	8b 55 00             	mov    edx,DWORD PTR [ebp+0x0]
    c24d:	8d 04 95 00 00 00 00 	lea    eax,[edx*4+0x0]
    c254:	29 d0                	sub    eax,edx
    c256:	01 c0                	add    eax,eax
    c258:	8b b0 5c 44 01 00    	mov    esi,DWORD PTR [eax+@obj3:__lpSOSSampleList]                  ; fixup: num: 1591, src obj: 1, src ofs: 0xc25a, dst obj: 3, dst ofs: 0x1445c
    c25e:	66 8b 98 60 44 01 00 	mov    bx,WORD PTR [eax+@obj3:__lpSOSSampleList_variable_1]         ; fixup: num: 1590, src obj: 1, src ofs: 0xc261, dst obj: 3, dst ofs: 0x14460
    c265:	85 f6                	test   esi,esi
    c267:	75 05                	jne    change_music_file_branch_24
    c269:	66 85 db             	test   bx,bx
    c26c:	74 33                	je     change_music_file_branch_26
change_music_file_branch_24:
    c26e:	8e a8 60 44 01 00    	mov    gs,WORD PTR [eax+@obj3:__lpSOSSampleList_variable_1]         ; fixup: num: 1589, src obj: 1, src ofs: 0xc270, dst obj: 3, dst ofs: 0x14460
    c274:	89 f0                	mov    eax,esi
    c276:	0f bf 5d 08          	movsx  ebx,WORD PTR [ebp+0x8]
    c27a:	65 0f bf 40 34       	movsx  eax,WORD PTR gs:[eax+0x34]
    c27f:	39 c3                	cmp    ebx,eax
    c281:	75 1e                	jne    change_music_file_branch_26
    c283:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 1588, src obj: 1, src ofs: 0xc284, dst obj: 3, dst ofs: 0x1a1ac
    c288:	e8 64 99 06 00       	call   sosDIGISampleDone_
    c28d:	83 f8 01             	cmp    eax,0x1
    c290:	75 0b                	jne    change_music_file_branch_25
    c292:	66 c7 45 08 00 00    	mov    WORD PTR [ebp+0x8],0x0
    c298:	8a 45 08             	mov    al,BYTE PTR [ebp+0x8]
    c29b:	eb 06                	jmp    change_music_file_branch_27
change_music_file_branch_25:
    c29d:	b0 01                	mov    al,0x1
    c29f:	eb 02                	jmp    change_music_file_branch_27
change_music_file_branch_26:
    c2a1:	30 c0                	xor    al,al
change_music_file_branch_27:
    c2a3:	84 c0                	test   al,al
    c2a5:	74 11                	je     change_music_file_branch_28
    c2a7:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 1599, src obj: 1, src ofs: 0xc2a8, dst obj: 3, dst ofs: 0x1a1ac
    c2ac:	31 db                	xor    ebx,ebx
    c2ae:	8b 17                	mov    edx,DWORD PTR [edi]
    c2b0:	66 89 cb             	mov    bx,cx
    c2b3:	e8 58 92 06 00       	call   sosDIGISetSampleVolume_
change_music_file_branch_28:
    c2b8:	80 bd b8 00 00 00 00 	cmp    BYTE PTR [ebp+0xb8],0x0
    c2bf:	0f 84 49 01 00 00    	je     change_music_file_branch_32
    c2c5:	bb 0e 00 00 00       	mov    ebx,0xe
    c2ca:	8d 95 ec 00 00 00    	lea    edx,[ebp+0xec]
    c2d0:	8b 85 88 00 00 00    	mov    eax,DWORD PTR [ebp+0x88]
    c2d6:	e8 88 5c 06 00       	call   read_
    c2db:	31 c0                	xor    eax,eax
    c2dd:	8a 85 ec 00 00 00    	mov    al,BYTE PTR [ebp+0xec]
    c2e3:	83 f8 46             	cmp    eax,0x46
    c2e6:	75 27                	jne    change_music_file_branch_29
    c2e8:	31 c0                	xor    eax,eax
    c2ea:	8a 85 ed 00 00 00    	mov    al,BYTE PTR [ebp+0xed]
    c2f0:	83 f8 43             	cmp    eax,0x43
    c2f3:	75 1a                	jne    change_music_file_branch_29
    c2f5:	31 c0                	xor    eax,eax
    c2f7:	8a 85 ee 00 00 00    	mov    al,BYTE PTR [ebp+0xee]
    c2fd:	83 f8 4d             	cmp    eax,0x4d
    c300:	75 0d                	jne    change_music_file_branch_29
    c302:	31 c0                	xor    eax,eax
    c304:	8a 85 ef 00 00 00    	mov    al,BYTE PTR [ebp+0xef]
    c30a:	83 f8 50             	cmp    eax,0x50
    c30d:	74 11                	je     change_music_file_branch_30
change_music_file_branch_29:
    c30f:	bb 53 0e 00 00       	mov    ebx,@obj3:sound_cpp_variable_64                              ; fixup: num: 1598, src obj: 1, src ofs: 0xc310, dst obj: 3, dst ofs: 0xe53
    c314:	ba e5 04 00 00       	mov    edx,0x4e5
    c319:	31 c0                	xor    eax,eax
    c31b:	e8 10 bd 02 00       	call   _error_report
change_music_file_branch_30:
    c320:	8b 85 8c 00 00 00    	mov    eax,DWORD PTR [ebp+0x8c]
    c326:	31 d2                	xor    edx,edx
    c328:	83 e8 0e             	sub    eax,0xe
    c32b:	66 8b 95 f8 00 00 00 	mov    dx,WORD PTR [ebp+0xf8]
    c332:	89 85 cc 00 00 00    	mov    DWORD PTR [ebp+0xcc],eax
    c338:	89 d0                	mov    eax,edx
    c33a:	c1 fa 1f             	sar    edx,0x1f
    c33d:	c1 e2 02             	shl    edx,0x2
    c340:	1b c2                	sbb    eax,edx
    c342:	c1 f8 02             	sar    eax,0x2
    c345:	89 c2                	mov    edx,eax
    c347:	8b 85 cc 00 00 00    	mov    eax,DWORD PTR [ebp+0xcc]
    c34d:	0f af c2             	imul   eax,edx
    c350:	89 85 d0 00 00 00    	mov    DWORD PTR [ebp+0xd0],eax
    c356:	66 8b 85 f8 00 00 00 	mov    ax,WORD PTR [ebp+0xf8]
    c35d:	66 89 85 e8 00 00 00 	mov    WORD PTR [ebp+0xe8],ax
    c364:	8d 85 bc 00 00 00    	lea    eax,[ebp+0xbc]
    c36a:	50                   	push   eax
    c36b:	e8 70 41 06 00       	call   _sosCODECInitStream
    c370:	bb f2 1f 00 00       	mov    ebx,0x1ff2
    c375:	83 c4 04             	add    esp,0x4
    c378:	8b 95 fc 00 00 00    	mov    edx,DWORD PTR [ebp+0xfc]
    c37e:	8b 85 88 00 00 00    	mov    eax,DWORD PTR [ebp+0x88]
    c384:	e8 da 5b 06 00       	call   read_
    c389:	a3 cc a1 01 00       	mov    ds:@obj3:wBytesRead,eax                                      ; fixup: num: 1602, src obj: 1, src ofs: 0xc38a, dst obj: 3, dst ofs: 0x1a1cc
    c38e:	83 f8 ff             	cmp    eax,0xffffffff
    c391:	75 11                	jne    change_music_file_branch_31
    c393:	bb 6c 0e 00 00       	mov    ebx,@obj3:sound_cpp_variable_65                              ; fixup: num: 1601, src obj: 1, src ofs: 0xc394, dst obj: 3, dst ofs: 0xe6c
    c398:	ba ed 04 00 00       	mov    edx,0x4ed
    c39d:	31 c0                	xor    eax,eax
    c39f:	e8 8c bc 02 00       	call   _error_report
change_music_file_branch_31:
    c3a4:	8b 95 fc 00 00 00    	mov    edx,DWORD PTR [ebp+0xfc]
    c3aa:	89 95 bc 00 00 00    	mov    DWORD PTR [ebp+0xbc],edx
    c3b0:	8b 95 b0 00 00 00    	mov    edx,DWORD PTR [ebp+0xb0]
    c3b6:	89 95 c4 00 00 00    	mov    DWORD PTR [ebp+0xc4],edx
    c3bc:	31 d2                	xor    edx,edx
    c3be:	66 8b 95 f8 00 00 00 	mov    dx,WORD PTR [ebp+0xf8]
    c3c5:	89 d0                	mov    eax,edx
    c3c7:	c1 fa 1f             	sar    edx,0x1f
    c3ca:	c1 e2 02             	shl    edx,0x2
    c3cd:	1b c2                	sbb    eax,edx
    c3cf:	c1 f8 02             	sar    eax,0x2
    c3d2:	0f af 05 cc a1 01 00 	imul   eax,DWORD PTR ds:@obj3:wBytesRead                            ; fixup: num: 1600, src obj: 1, src ofs: 0xc3d5, dst obj: 3, dst ofs: 0x1a1cc
    c3d9:	50                   	push   eax
    c3da:	8d 85 bc 00 00 00    	lea    eax,[ebp+0xbc]
    c3e0:	8c 9d c0 00 00 00    	mov    WORD PTR [ebp+0xc0],ds
    c3e6:	50                   	push   eax
    c3e7:	8c 9d c8 00 00 00    	mov    WORD PTR [ebp+0xc8],ds
    c3ed:	e8 13 41 06 00       	call   _sosCODECDecompressData
    c3f2:	bb 64 00 00 00       	mov    ebx,0x64
    c3f7:	83 c4 08             	add    esp,0x8
    c3fa:	a3 cc a1 01 00       	mov    ds:@obj3:wBytesRead,eax                                      ; fixup: num: 1610, src obj: 1, src ofs: 0xc3fb, dst obj: 3, dst ofs: 0x1a1cc
    c3ff:	31 d2                	xor    edx,edx
    c401:	8b 85 b0 00 00 00    	mov    eax,DWORD PTR [ebp+0xb0]
    c407:	e8 c4 4f 06 00       	call   memset_
    c40c:	eb 43                	jmp    change_music_file_branch_33
change_music_file_branch_32:
    c40e:	ba 2c 00 00 00       	mov    edx,0x2c
    c413:	8b 85 88 00 00 00    	mov    eax,DWORD PTR [ebp+0x88]
    c419:	31 db                	xor    ebx,ebx
    c41b:	e8 af 5a 06 00       	call   lseek_                                                       ; aliases: lseek_, _lseek_
    c420:	bb d4 1f 00 00       	mov    ebx,0x1fd4
    c425:	8b 95 b0 00 00 00    	mov    edx,DWORD PTR [ebp+0xb0]
    c42b:	8b 85 88 00 00 00    	mov    eax,DWORD PTR [ebp+0x88]
    c431:	e8 2d 5b 06 00       	call   read_
    c436:	a3 cc a1 01 00       	mov    ds:@obj3:wBytesRead,eax                                      ; fixup: num: 1609, src obj: 1, src ofs: 0xc437, dst obj: 3, dst ofs: 0x1a1cc
    c43b:	83 f8 ff             	cmp    eax,0xffffffff
    c43e:	75 11                	jne    change_music_file_branch_33
    c440:	bb 90 0e 00 00       	mov    ebx,@obj3:sound_cpp_variable_66                              ; fixup: num: 1608, src obj: 1, src ofs: 0xc441, dst obj: 3, dst ofs: 0xe90
    c445:	ba f6 04 00 00       	mov    edx,0x4f6
    c44a:	31 c0                	xor    eax,eax
    c44c:	e8 df bb 02 00       	call   _error_report
change_music_file_branch_33:
    c451:	8b 1d cc a1 01 00    	mov    ebx,DWORD PTR ds:@obj3:wBytesRead                            ; fixup: num: 1607, src obj: 1, src ofs: 0xc453, dst obj: 3, dst ofs: 0x1a1cc
    c457:	89 e8                	mov    eax,ebp
    c459:	8b 95 b0 00 00 00    	mov    edx,DWORD PTR [ebp+0xb0]
    c45f:	e8 dc ca ff ff       	call   insert_into_buffer
    c464:	89 ef                	mov    edi,ebp
    c466:	8a 1d b4 a1 01 00    	mov    bl,BYTE PTR ds:@obj3:the_sound_system_variable_3             ; fixup: num: 1606, src obj: 1, src ofs: 0xc468, dst obj: 3, dst ofs: 0x1a1b4
    c46c:	88 85 90 00 00 00    	mov    BYTE PTR [ebp+0x90],al
    c472:	84 db                	test   bl,bl
    c474:	74 57                	je     change_music_file_branch_35
    c476:	a1 d4 2c 01 00       	mov    eax,ds:@obj3:id_counter                                      ; fixup: num: 1605, src obj: 1, src ofs: 0xc477, dst obj: 3, dst ofs: 0x12cd4
    c47b:	8d 5d 0c             	lea    ebx,[ebp+0xc]
    c47e:	40                   	inc    eax
    c47f:	8c d9                	mov    ecx,ds
    c481:	a3 d4 2c 01 00       	mov    ds:@obj3:id_counter,eax                                      ; fixup: num: 1604, src obj: 1, src ofs: 0xc482, dst obj: 3, dst ofs: 0x12cd4
    c486:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 1603, src obj: 1, src ofs: 0xc487, dst obj: 3, dst ofs: 0x1a1ac
    c48b:	e8 76 6a 06 00       	call   sosDIGIStartSample_
    c490:	89 45 00             	mov    DWORD PTR [ebp+0x0],eax
    c493:	83 f8 ff             	cmp    eax,0xffffffff
    c496:	75 13                	jne    change_music_file_branch_34
    c498:	e8 6c 98 06 00       	call   sosGetErrorString_
    c49d:	ba da 02 00 00       	mov    edx,0x2da
    c4a2:	89 c3                	mov    ebx,eax
    c4a4:	31 c0                	xor    eax,eax
    c4a6:	e8 85 bb 02 00       	call   _error_report
change_music_file_branch_34:
    c4ab:	8b 17                	mov    edx,DWORD PTR [edi]
    c4ad:	8d 04 95 00 00 00 00 	lea    eax,[edx*4+0x0]
    c4b4:	29 d0                	sub    eax,edx
    c4b6:	0f b5 14 45 5c 44 01 00 	lgs    edx,FWORD PTR [eax*2+@obj3:__lpSOSSampleList]             ; fixup: num: 1618, src obj: 1, src ofs: 0xc4ba, dst obj: 3, dst ofs: 0x1445c
    c4be:	66 a1 d4 2c 01 00    	mov    ax,ds:@obj3:id_counter                                       ; fixup: num: 1617, src obj: 1, src ofs: 0xc4c0, dst obj: 3, dst ofs: 0x12cd4
    c4c4:	66 65 89 42 34       	mov    WORD PTR gs:[edx+0x34],ax
    c4c9:	66 89 47 08          	mov    WORD PTR [edi+0x8],ax
change_music_file_branch_35:
    c4cd:	5d                   	pop    ebp
    c4ce:	5f                   	pop    edi
    c4cf:	5e                   	pop    esi
    c4d0:	59                   	pop    ecx
    c4d1:	5b                   	pop    ebx
    c4d2:	c3                   	ret    
    c4d3:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    c4d9:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
    c4df:	90                   	nop

;-------------------------------------------------
;  Function 'close'                              -
;-------------------------------------------------
close:
    c4e0:	53                   	push   ebx
    c4e1:	51                   	push   ecx
    c4e2:	52                   	push   edx
    c4e3:	56                   	push   esi
    c4e4:	57                   	push   edi
    c4e5:	89 c1                	mov    ecx,eax
    c4e7:	80 3d b4 a1 01 00 00 	cmp    BYTE PTR ds:@obj3:the_sound_system_variable_3,0x0            ; fixup: num: 1616, src obj: 1, src ofs: 0xc4e9, dst obj: 3, dst ofs: 0x1a1b4
    c4ee:	74 52                	je     close_branch_3
    c4f0:	8b 11                	mov    edx,DWORD PTR [ecx]
    c4f2:	8d 04 95 00 00 00 00 	lea    eax,[edx*4+0x0]
    c4f9:	29 d0                	sub    eax,edx
    c4fb:	01 c0                	add    eax,eax
    c4fd:	83 b8 5c 44 01 00 00 	cmp    DWORD PTR [eax+@obj3:__lpSOSSampleList],0x0                  ; fixup: num: 1615, src obj: 1, src ofs: 0xc4ff, dst obj: 3, dst ofs: 0x1445c
    c504:	75 0a                	jne    close_branch_1
    c506:	66 83 b8 60 44 01 00 00 	cmp    WORD PTR [eax+@obj3:__lpSOSSampleList_variable_1],0x0     ; fixup: num: 1614, src obj: 1, src ofs: 0xc509, dst obj: 3, dst ofs: 0x14460
    c50e:	74 32                	je     close_branch_3
close_branch_1:
    c510:	0f b5 80 5c 44 01 00 	lgs    eax,FWORD PTR [eax+@obj3:__lpSOSSampleList]                  ; fixup: num: 1613, src obj: 1, src ofs: 0xc513, dst obj: 3, dst ofs: 0x1445c
    c517:	0f bf 59 08          	movsx  ebx,WORD PTR [ecx+0x8]
    c51b:	65 0f bf 40 34       	movsx  eax,WORD PTR gs:[eax+0x34]
    c520:	39 c3                	cmp    ebx,eax
    c522:	75 1e                	jne    close_branch_3
    c524:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 1612, src obj: 1, src ofs: 0xc525, dst obj: 3, dst ofs: 0x1a1ac
    c529:	e8 c3 96 06 00       	call   sosDIGISampleDone_
    c52e:	83 f8 01             	cmp    eax,0x1
    c531:	75 0b                	jne    close_branch_2
    c533:	66 c7 41 08 00 00    	mov    WORD PTR [ecx+0x8],0x0
    c539:	8a 41 08             	mov    al,BYTE PTR [ecx+0x8]
    c53c:	eb 06                	jmp    close_branch_4
close_branch_2:
    c53e:	b0 01                	mov    al,0x1
    c540:	eb 02                	jmp    close_branch_4
close_branch_3:
    c542:	30 c0                	xor    al,al
close_branch_4:
    c544:	84 c0                	test   al,al
    c546:	0f 84 92 00 00 00    	je     close_branch_9
    c54c:	8a 15 b4 a1 01 00    	mov    dl,BYTE PTR ds:@obj3:the_sound_system_variable_3             ; fixup: num: 1611, src obj: 1, src ofs: 0xc54e, dst obj: 3, dst ofs: 0x1a1b4
    c552:	89 cb                	mov    ebx,ecx
    c554:	84 d2                	test   dl,dl
    c556:	0f 84 82 00 00 00    	je     close_branch_9
    c55c:	74 52                	je     close_branch_7
    c55e:	8b 11                	mov    edx,DWORD PTR [ecx]
    c560:	8d 04 95 00 00 00 00 	lea    eax,[edx*4+0x0]
    c567:	29 d0                	sub    eax,edx
    c569:	01 c0                	add    eax,eax
    c56b:	83 b8 5c 44 01 00 00 	cmp    DWORD PTR [eax+@obj3:__lpSOSSampleList],0x0                  ; fixup: num: 1624, src obj: 1, src ofs: 0xc56d, dst obj: 3, dst ofs: 0x1445c
    c572:	75 0a                	jne    close_branch_5
    c574:	66 83 b8 60 44 01 00 00 	cmp    WORD PTR [eax+@obj3:__lpSOSSampleList_variable_1],0x0     ; fixup: num: 1623, src obj: 1, src ofs: 0xc577, dst obj: 3, dst ofs: 0x14460
    c57c:	74 32                	je     close_branch_7
close_branch_5:
    c57e:	0f b5 80 5c 44 01 00 	lgs    eax,FWORD PTR [eax+@obj3:__lpSOSSampleList]                  ; fixup: num: 1622, src obj: 1, src ofs: 0xc581, dst obj: 3, dst ofs: 0x1445c
    c585:	65 0f bf 70 34       	movsx  esi,WORD PTR gs:[eax+0x34]
    c58a:	0f bf 41 08          	movsx  eax,WORD PTR [ecx+0x8]
    c58e:	39 f0                	cmp    eax,esi
    c590:	75 1e                	jne    close_branch_7
    c592:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 1621, src obj: 1, src ofs: 0xc593, dst obj: 3, dst ofs: 0x1a1ac
    c597:	e8 55 96 06 00       	call   sosDIGISampleDone_
    c59c:	83 f8 01             	cmp    eax,0x1
    c59f:	75 0b                	jne    close_branch_6
    c5a1:	66 c7 41 08 00 00    	mov    WORD PTR [ecx+0x8],0x0
    c5a7:	8a 41 08             	mov    al,BYTE PTR [ecx+0x8]
    c5aa:	eb 06                	jmp    close_branch_8
close_branch_6:
    c5ac:	b0 01                	mov    al,0x1
    c5ae:	eb 02                	jmp    close_branch_8
close_branch_7:
    c5b0:	30 c0                	xor    al,al
close_branch_8:
    c5b2:	84 c0                	test   al,al
    c5b4:	74 28                	je     close_branch_9
    c5b6:	a1 ac a1 01 00       	mov    eax,ds:@obj3:the_sound_system_variable_1                     ; fixup: num: 1620, src obj: 1, src ofs: 0xc5b7, dst obj: 3, dst ofs: 0x1a1ac
    c5bb:	8b 13                	mov    edx,DWORD PTR [ebx]
    c5bd:	66 c7 43 08 00 00    	mov    WORD PTR [ebx+0x8],0x0
    c5c3:	e8 57 6f 06 00       	call   sosDIGIStopSample_
    c5c8:	83 f8 0a             	cmp    eax,0xa
    c5cb:	75 11                	jne    close_branch_9
    c5cd:	bb 69 0b 00 00       	mov    ebx,@obj3:sound_cpp_variable_32                              ; fixup: num: 1619, src obj: 1, src ofs: 0xc5ce, dst obj: 3, dst ofs: 0xb69
    c5d2:	ba fd 02 00 00       	mov    edx,0x2fd
    c5d7:	31 c0                	xor    eax,eax
    c5d9:	e8 52 ba 02 00       	call   _error_report
close_branch_9:
    c5de:	8b b9 88 00 00 00    	mov    edi,DWORD PTR [ecx+0x88]
    c5e4:	83 ff ff             	cmp    edi,0xffffffff
    c5e7:	74 07                	je     close_branch_10
    c5e9:	89 f8                	mov    eax,edi
    c5eb:	e8 20 59 06 00       	call   close_
close_branch_10:
    c5f0:	c7 81 88 00 00 00 ff ff ff ff 	mov    DWORD PTR [ecx+0x88],0xffffffff
    c5fa:	5f                   	pop    edi
    c5fb:	5e                   	pop    esi
    c5fc:	5a                   	pop    edx
    c5fd:	59                   	pop    ecx
    c5fe:	5b                   	pop    ebx
    c5ff:	c3                   	ret    

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 9 (D:\SOURCE\sound.cpp)                                       -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 9: D:\SOURCE\sound.cpp                                               -
;                                                                              -
;-------------------------------------------------------------------------------
sound_cpp_variable_1:
     6fc:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
sound_cpp_variable_2:
     714:	55 6e 61 62 6c 65 20 74 6f 20 61 6c 6c 6f 63 61 74 65 20 63 6f 6d 70 72 65 73 73 65 64 20 62 75 66 66 65 72 00 	db     "Unable to allocate compressed buffer",0x00
sound_cpp_variable_3:
     739:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
sound_cpp_variable_4:
     751:	73 6f 75 6e 64 5f 63 70 70 00 	db     "sound_cpp",0x00
sound_cpp_variable_5:
     75b:	43 6f 75 6c 64 20 6e 6f 74 20 69 6e 69 74 69 61 6c 69 7a 65 20 74 68 65 20 73 6f 75 6e 64 20 64 65 74 65 63 74 69 6f 6e 20 73 79 73 74 65 6d 2e 00 	db     "Could not initialize the sound detection system.",0x00
sound_cpp_variable_6:
     78c:	72                   	db     0x72                                                         ; dec: 114, chr: 'r'
     78d:	74                   	db     0x74                                                         ; dec: 116, chr: 't'
     78e:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
sound_cpp_variable_7:
     78f:	53 4f 55 4e 44 2e 43 46 47 00 	db     "SOUND.CFG",0x00
sound_cpp_variable_8:
     799:	53 4f 55 4e 44 2e 43 46 47 00 	db     "SOUND.CFG",0x00
sound_cpp_variable_9:
     7a3:	0a 52 65 61 64 69 6e 67 20 25 73 2e 2e 2e 0a 0a 00 	db     0x0a,"Reading %s...",0x0a,0x0a,0x00
sound_cpp_variable_10:
     7b4:	5b 44 49 47 49 54 41 4c 5d 00 	db     "[DIGITAL]",0x00
sound_cpp_variable_11:
     7be:	5b 4d 49 44 49 5d 00 	db     "[MIDI]",0x00
sound_cpp_variable_12:
     7c5:	44 65 76 69 63 65 49 44 00 	db     "DeviceID",0x00
sound_cpp_variable_13:
     7ce:	25                   	db     0x25                                                         ; dec:  37, chr: '%'
     7cf:	78                   	db     0x78                                                         ; dec: 120, chr: 'x'
     7d0:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
sound_cpp_variable_14:
     7d1:	44 65 76 69 63 65 50 6f 72 74 00 	db     "DevicePort",0x00
sound_cpp_variable_15:
     7dc:	25                   	db     0x25                                                         ; dec:  37, chr: '%'
     7dd:	78                   	db     0x78                                                         ; dec: 120, chr: 'x'
     7de:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
sound_cpp_variable_16:
     7df:	44 65 76 69 63 65 49 52 51 00 	db     "DeviceIRQ",0x00
sound_cpp_variable_17:
     7e9:	25                   	db     0x25                                                         ; dec:  37, chr: '%'
     7ea:	69                   	db     0x69                                                         ; dec: 105, chr: 'i'
     7eb:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
sound_cpp_variable_18:
     7ec:	44 65 76 69 63 65 44 4d 41 00 	db     "DeviceDMA",0x00
sound_cpp_variable_19:
     7f6:	25                   	db     0x25                                                         ; dec:  37, chr: '%'
     7f7:	69                   	db     0x69                                                         ; dec: 105, chr: 'i'
     7f8:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
sound_cpp_variable_20:
     7f9:	43 6f 75 6c 64 20 6e 6f 74 20 67 65 74 20 74 68 65 20 73 65 74 74 69 6e 67 73 20 66 6f 72 20 74 68 65 20 73 6f 75 6e 64 20 64 65 76 69 63 65 2e 20 20 52 75 6e 20 53 45 54 53 4f 55 4e 44 2e 45 58 45 20 74 6f 20 6d 61 6e 75 61 6c 6c 79 20 63 6f 6e 66 69 67 75 72 65 20 79 6f 75 72 20 73 6f 75 6e 64 20 63 61 72 64 2e 00 	db     "Could not get the settings for the sound device.  Run SETSOUND.EXE to manually configure your sound card.",0x00
sound_cpp_variable_21:
     863:	41 6e 20 65 72 72 6f 72 20 6f 63 63 75 72 65 64 20 77 68 69 6c 73 74 20 74 72 61 76 65 72 73 69 6e 67 20 73 6f 75 6e 64 20 63 61 72 64 73 2e 00 	db     "An error occured whilst traversing sound cards.",0x00
sound_cpp_variable_22:
     893:	43 6f 75 6c 64 20 6e 6f 74 20 67 65 74 20 74 68 65 20 73 65 74 74 69 6e 67 73 20 66 6f 72 20 74 68 65 20 73 6f 75 6e 64 20 64 65 76 69 63 65 2e 20 20 52 75 6e 20 53 45 54 53 4f 55 4e 44 2e 45 58 45 20 6d 61 6e 75 61 6c 6c 79 20 74 6f 20 63 6f 6e 66 69 67 75 72 65 20 79 6f 75 72 20 73 6f 75 6e 64 20 63 61 72 64 2e 00 	db     "Could not get the settings for the sound device.  Run SETSOUND.EXE manually to configure your sound card.",0x00
sound_cpp_variable_23:
     8fd:	43 6f 75 6c 64 20 6e 6f 74 20 67 65 74 20 74 68 65 20 73 65 74 74 69 6e 67 73 20 66 6f 72 20 74 68 65 20 73 6f 75 6e 64 20 64 65 76 69 63 65 2e 20 20 52 75 6e 20 53 45 54 53 4f 55 4e 44 2e 45 58 45 20 74 6f 20 6d 61 6e 75 61 6c 6c 79 20 63 6f 6e 66 69 67 75 72 65 20 79 6f 75 72 20 73 6f 75 6e 64 20 63 61 72 64 2e 00 	db     "Could not get the settings for the sound device.  Run SETSOUND.EXE to manually configure your sound card.",0x00
sound_cpp_variable_24:
     967:	43 6f 75 6c 64 20 6e 6f 74 20 67 65 74 20 74 68 65 20 73 65 74 74 69 6e 67 73 20 66 6f 72 20 74 68 65 20 73 6f 75 6e 64 20 64 65 76 69 63 65 2e 20 20 52 75 6e 20 53 45 54 53 4f 55 4e 44 2e 45 58 45 20 74 6f 20 6d 61 6e 75 61 6c 6c 79 20 63 6f 6e 66 69 67 75 72 65 20 79 6f 75 72 20 73 6f 75 6e 64 20 63 61 72 64 2e 00 	db     "Could not get the settings for the sound device.  Run SETSOUND.EXE to manually configure your sound card.",0x00
sound_cpp_variable_25:
     9d1:	4e 6f 20 73 6f 75 6e 64 20 63 61 72 64 20 64 65 74 65 63 74 65 64 2e 20 20 52 75 6e 20 53 45 54 53 4f 55 4e 44 2e 45 58 45 20 61 6e 64 20 73 65 6c 65 63 74 20 79 6f 75 72 20 63 61 72 64 20 6d 61 6e 75 61 6c 6c 79 2e 00 	db     "No sound card detected.  Run SETSOUND.EXE and select your card manually.",0x00
sound_cpp_variable_26:
     a1a:	53 6f 75 6e 64 20 43 61 72 64 3a 25 73 20 49 4f 3a 25 30 33 78 20 49 52 51 3a 25 69 20 44 4d 41 3a 25 69 20 28 25 69 20 62 69 74 29 0a 00 	db     "Sound Card:%s IO:%03x IRQ:%i DMA:%i (%i bit)",0x0a,0x00
sound_cpp_variable_27:
     a48:	53 6f 75 6e 64 20 43 61 72 64 3a 25 73 20 49 4f 3a 25 30 33 78 20 44 4d 41 3a 25 69 20 28 25 69 20 62 69 74 29 0a 00 	db     "Sound Card:%s IO:%03x DMA:%i (%i bit)",0x0a,0x00
sound_cpp_variable_28:
     a6f:	45 72 72 6f 72 20 64 65 74 65 63 74 69 6e 67 20 73 6f 75 6e 64 20 63 61 72 64 2e 20 20 54 68 69 73 20 63 61 6e 20 73 6f 6d 65 74 69 6d 65 73 20 62 65 20 63 61 75 73 65 64 20 62 79 20 64 72 69 76 65 72 73 20 6e 6f 74 20 62 65 69 6e 67 20 6c 6f 61 64 65 64 2e 20 20 49 66 20 44 4d 41 20 69 73 20 30 2c 20 70 6c 65 61 73 65 20 63 6f 6e 66 69 67 75 72 65 20 79 6f 75 72 20 73 6f 75 6e 64 20 63 61 72 64 20 6d 61 6e 75 61 6c 6c 79 20 77 69 74 68 20 53 45 54 53 4f 55 4e 44 2e 45 58 45 2e 00 	db     "Error detecting sound card.  This can sometimes be caused by drivers not being loaded.  If DMA is 0, please configure your sound card manually with SETSOUND.EXE.",0x00
sound_cpp_variable_29:
     b11:	43 6f 75 6c 64 20 6e 6f 74 20 69 6e 69 74 69 61 6c 69 7a 65 20 73 6f 75 6e 64 20 64 72 69 76 65 72 2e 00 	db     "Could not initialize sound driver.",0x00
sound_cpp_variable_30:
     b34:	43 6f 75 6c 64 20 6e 6f 74 20 72 65 67 69 73 74 65 72 20 74 69 6d 65 72 00 	db     "Could not register timer",0x00
sound_cpp_variable_31:
     b4d:	43 6f 75 6c 64 20 6e 6f 74 20 61 6c 74 65 72 20 65 76 65 6e 74 20 72 61 74 65 21 00 	db     "Could not alter event rate!",0x00
sound_cpp_variable_32:
     b69:	44 69 67 69 74 61 6c 20 64 72 69 76 65 72 20 68 61 6e 64 6c 65 20 77 61 73 20 69 6e 76 61 6c 69 64 2e 00 	db     "Digital driver handle was invalid.",0x00
sound_cpp_variable_33:
     b8c:	2e 43 4d 50 00       	db     ".CMP",0x00
sound_cpp_variable_34:
     b91:	73 6f 75 6e 64 2e 63 70 70 00 	db     "sound.cpp",0x00
sound_cpp_variable_35:
     b9b:	63 6f 6d 70 72 65 73 73 65 64 20 66 69 6c 65 20 6e 6f 74 20 66 6f 75 6e 64 2e 00 	db     "compressed file not found.",0x00
sound_cpp_variable_36:
     bb6:	73 6f 75 6e 64 2e 63 70 70 00 	db     "sound.cpp",0x00
sound_cpp_variable_37:
     bc0:	41 74 74 65 6d 70 74 65 64 20 74 6f 20 20 64 65 63 6f 6d 70 72 65 73 73 20 61 20 6e 6f 6e 20 63 6f 6d 70 72 65 73 73 65 64 20 66 69 6c 65 2e 00 	db     "Attempted to  decompress a non compressed file.",0x00
sound_cpp_variable_38:
     bf0:	46 61 69 6c 65 64 20 74 6f 20 61 6c 6c 6f 63 61 74 65 20 73 6f 75 72 63 65 20 62 75 66 66 65 72 20 28 5f 53 4f 53 5f 53 4f 55 52 43 45 5f 53 49 5a 45 29 00 	db     "Failed to allocate source buffer (_SOS_SOURCE_SIZE)",0x00
sound_cpp_variable_39:
     c24:	6d 61 6c 6c 6f 63 28 25 69 29 20 66 61 69 6c 65 64 2e 00 	db     "malloc(%i) failed.",0x00
sound_cpp_variable_40:
     c37:	73 6f 75 6e 64 2e 63 70 70 00 	db     "sound.cpp",0x00
sound_cpp_variable_41:
     c41:	73 6f 73 44 49 47 49 44 65 43 6f 6d 70 72 65 73 73 46 69 6c 65 20 66 61 69 6c 65 64 21 00 	db     "sosDIGIDeCompressFile failed!",0x00
sound_cpp_variable_42:
     c5f:	57 68 6f 61 21 20 75 6e 61 62 6c 65 20 74 6f 20 69 6e 73 65 72 74 20 69 6e 74 6f 20 62 75 66 66 65 72 2e 00 	db     "Whoa! unable to insert into buffer.",0x00
sound_cpp_variable_43:
     c83:	73 6f 75 6e 64 2e 63 70 70 00 	db     "sound.cpp",0x00
sound_cpp_variable_44:
     c8d:	43 6f 75 6c 64 20 6e 6f 74 20 67 65 74 20 74 68 65 20 6e 61 6d 65 64 20 72 65 73 6f 75 72 63 65 21 00 	db     "Could not get the named resource!",0x00
sound_cpp_variable_45:
     caf:	54 72 69 65 64 20 74 6f 20 6c 6f 61 64 20 61 20 6e 6f 6e 20 77 61 76 65 20 66 69 6c 65 20 6f 72 20 66 69 6c 65 20 64 6f 65 73 6e 27 74 20 65 78 69 73 74 3a 20 25 73 00 	db     "Tried to load a non wave file or file doesn't exist: %s",0x00
sound_cpp_variable_46:
     ce7:	43 6f 75 6c 64 20 6e 6f 74 20 61 6c 6c 6f 63 61 74 65 20 62 75 66 66 65 72 20 73 69 7a 65 20 25 69 2e 00 	db     "Could not allocate buffer size %i.",0x00
sound_cpp_variable_47:
     d0a:	53 69 7a 65 20 69 73 20 74 6f 6f 20 6c 61 72 67 65 2e 00 	db     "Size is too large.",0x00
sound_cpp_variable_48:
     d1d:	62 75 66 5f 69 6e 64 65 78 20 3d 20 25 69 20 20 63 75 72 5f 70 6f 73 20 3d 20 25 69 00 	db     "buf_index = %i  cur_pos = %i",0x00
sound_cpp_variable_49:
     d3a:	43 6f 6d 70 72 65 73 73 69 6e 67 20 66 69 6c 65 20 66 72 6f 6d 20 25 64 20 62 69 74 2e 0a 00 	db     "Compressing file from %d bit.",0x0a,0x00
sound_cpp_variable_50:
     d59:	45 52 52 4f 52 3a 20 25 73 20 77 61 73 20 6e 6f 74 20 66 6f 75 6e 64 2e 00 	db     "ERROR: %s was not found.",0x00
sound_cpp_variable_51:
     d72:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
sound_cpp_variable_52:
     d8a:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
sound_cpp_variable_53:
     da2:	77 42 79 74 65 73 52 65 61 64 3a 25 6c 69 0a 00 	db     "wBytesRead:%li",0x0a,0x00
sound_cpp_variable_54:
     db2:	45 72 72 6f 72 20 72 65 61 64 69 6e 67 20 63 6f 6d 70 72 65 73 73 65 64 20 6d 75 73 69 63 20 66 69 6c 65 00 	db     "Error reading compressed music file",0x00
sound_cpp_variable_55:
     dd6:	45 72 72 6f 72 20 72 65 61 64 69 6e 67 20 6d 75 73 69 63 20 66 69 6c 65 00 	db     "Error reading music file",0x00
sound_cpp_variable_56:                                                                              ; access size: DWORD
     def:	00 00 c8 42          	dd     0x42c80000
sound_cpp_variable_57:                                                                              ; access size: DWORD
     df3:	00 00 c8 42          	dd     0x42c80000
sound_cpp_variable_58:
     df7:	66 61 64 65 5f 73 74 61 72 74 3d 25 69 20 6d 75 73 69 63 5f 76 6f 6c 75 6d 65 3d 25 69 20 66 61 64 65 5f 61 6d 6f 75 6e 74 3d 25 69 00 	db     "fade_start=%i music_volume=%i fade_amount=%i",0x00
sound_cpp_variable_59:                                                                              ; access size: DWORD
     e24:	00 00 c8 42          	dd     0x42c80000
sound_cpp_variable_60:                                                                              ; access size: QWORD
     e28:	9a 99 99 99 99 99 b9 3f 	dq     0x3fb999999999999a
sound_cpp_variable_61:                                                                              ; access size: DWORD
     e30:	00 00 c8 42          	dd     0x42c80000
sound_cpp_variable_62:
     e34:	2e 43 4d 50 00       	db     ".CMP",0x00
sound_cpp_variable_63:
     e39:	55 6e 61 62 6c 65 20 74 6f 20 6f 70 65 6e 20 66 69 6c 65 3a 20 27 25 73 27 00 	db     "Unable to open file: '%s'",0x00
sound_cpp_variable_64:
     e53:	49 6e 76 61 6c 69 64 20 63 6f 6d 70 72 65 73 73 65 64 20 66 69 6c 65 21 00 	db     "Invalid compressed file!",0x00
sound_cpp_variable_65:
     e6c:	45 72 72 6f 72 20 72 65 61 64 69 6e 67 20 63 6f 6d 70 72 65 73 73 65 64 20 6d 75 73 69 63 20 66 69 6c 65 00 	db     "Error reading compressed music file",0x00
sound_cpp_variable_66:
     e90:	45 72 72 6f 72 20 72 65 61 64 69 6e 67 20 6d 75 73 69 63 20 66 69 6c 65 00 	db     "Error reading music file",0x00
sound_cpp_variable_67:
     ea9:	4d 69 63 72 6f 73 6f 66 74 00 	db     "Microsoft",0x00
sound_cpp_variable_68:
     eb3:	53 6f 75 6e 64 20 42 6c 61 73 74 65 72 00 	db     "Sound Blaster",0x00
sound_cpp_variable_69:
     ec1:	53 6f 75 6e 64 20 42 6c 61 73 74 65 72 20 50 72 6f 00 	db     "Sound Blaster Pro",0x00
sound_cpp_variable_70:
     ed3:	45 53 53 20 41 75 64 69 6f 20 44 72 69 76 65 00 	db     "ESS Audio Drive",0x00
sound_cpp_variable_71:
     ee3:	45 53 53 20 41 75 64 69 6f 20 44 72 69 76 65 00 	db     "ESS Audio Drive",0x00
sound_cpp_variable_72:
     ef3:	4d 65 64 69 61 20 56 69 73 69 6f 6e 20 50 72 6f 20 41 75 64 69 6f 20 53 70 65 63 74 72 75 6d 00 	db     "Media Vision Pro Audio Spectrum",0x00
sound_cpp_variable_73:
     f13:	4d 65 64 69 61 20 56 69 73 69 6f 6e 20 50 72 6f 20 41 75 64 69 6f 20 53 70 65 63 74 72 75 6d 00 	db     "Media Vision Pro Audio Spectrum",0x00
sound_cpp_variable_74:
     f33:	4d 65 64 69 61 20 56 69 73 69 6f 6e 20 50 72 6f 20 41 75 64 69 6f 20 53 70 65 63 74 72 75 6d 00 	db     "Media Vision Pro Audio Spectrum",0x00
sound_cpp_variable_75:
     f53:	4d 65 64 69 61 20 56 69 73 69 6f 6e 20 50 72 6f 20 41 75 64 69 6f 20 53 70 65 63 74 72 75 6d 00 	db     "Media Vision Pro Audio Spectrum",0x00
sound_cpp_variable_76:
     f73:	53 6f 75 6e 64 20 42 6c 61 73 74 65 72 20 31 36 2f 41 57 45 00 	db     "Sound Blaster 16/AWE",0x00
sound_cpp_variable_77:
     f88:	45 53 53 20 41 75 64 69 6f 20 44 72 69 76 65 00 	db     "ESS Audio Drive",0x00
sound_cpp_variable_78:
     f98:	45 53 53 20 41 75 64 69 6f 20 44 72 69 76 65 00 	db     "ESS Audio Drive",0x00
sound_cpp_variable_79:
     fa8:	47 72 61 76 69 73 20 55 6c 74 72 61 73 6f 75 6e 64 20 4d 41 58 00 	db     "Gravis Ultrasound MAX",0x00
sound_cpp_variable_80:
     fbe:	4e 6f 6e 65 00       	db     "None",0x00
     fc3:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 9 (D:\SOURCE\sound.cpp)                                       -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 9: D:\SOURCE\sound.cpp                                               -
;                                                                              -
;-------------------------------------------------------------------------------
sound_cpp_variable_81:
   10c90:	03                   	db     0x03                                                         ; dec:   3, chr: ''
   10c91:	00 00 00             	db     3 dup(0x00)                                                  ; dec:   0, chr: '\0'
   10c94:	80 83 00 00          	dd     @obj1:W?$dt:sound_system$n()_                                ; fixup: num: 21320, src obj: 3, src ofs: 0x10c94, dst obj: 1, dst ofs: 0x8380
   10c98:	94 a1 01 00          	dd     @obj3:the_sound_system                                       ; fixup: num: 21319, src obj: 3, src ofs: 0x10c98, dst obj: 3, dst ofs: 0x1a194
   10c9c:	40 a4 00 00          	dd     @obj1:W?$dt:SOUND_SPOOL$n()_                                 ; fixup: num: 21318, src obj: 3, src ofs: 0x10c9c, dst obj: 1, dst ofs: 0xa440
   10ca0:	d4 a1 01 00          	dd     @obj3:music                                                  ; fixup: num: 21317, src obj: 3, src ofs: 0x10ca0, dst obj: 3, dst ofs: 0x1a1d4
W?$Wts0fn$SOUND_SPOOL$$$nx[]uc:
   10ca4:	00 00 00 00 00       	db     5 dup(0x00)                                                  ; dec:   0, chr: '\0'
   10ca9:	48 14 07 00          	dd     @obj1:__wcpp_2_undefed_cdtor__                               ; fixup: num: 21325, src obj: 3, src ofs: 0x10ca9, dst obj: 1, dst ofs: 0x71448
   10cad:	40 a4 00 00          	dd     @obj1:W?$dt:SOUND_SPOOL$n()_                                 ; fixup: num: 21324, src obj: 3, src ofs: 0x10cad, dst obj: 1, dst ofs: 0xa440
   10cb1:	04                   	db     0x04                                                         ; dec:   4, chr: ''
   10cb2:	01                   	db     0x01                                                         ; dec:   1, chr: ''
   10cb3:	00 00 00 00 00       	db     5 dup(0x00)                                                  ; dec:   0, chr: '\0'
W?$Wts0gn$sound_system$$$nx[]uc:
   10cb8:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
   10cb9:	00 7c 00 00          	dd     @obj1:W?$ct:sound_system$n()_                                ; fixup: num: 21323, src obj: 3, src ofs: 0x10cb9, dst obj: 1, dst ofs: 0x7c00
   10cbd:	48 14 07 00          	dd     @obj1:__wcpp_2_undefed_cdtor__                               ; fixup: num: 21322, src obj: 3, src ofs: 0x10cbd, dst obj: 1, dst ofs: 0x71448
   10cc1:	80 83 00 00          	dd     @obj1:W?$dt:sound_system$n()_                                ; fixup: num: 21321, src obj: 3, src ofs: 0x10cc1, dst obj: 1, dst ofs: 0x8380
   10cc5:	24                   	db     0x24                                                         ; dec:  36, chr: '$'
   10cc6:	00 00 00 00 00 00    	db     6 dup(0x00)                                                  ; dec:   0, chr: '\0'

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 9 (D:\SOURCE\sound.cpp)                                       -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 9: D:\SOURCE\sound.cpp                                               -
;                                                                              -
;-------------------------------------------------------------------------------
sound_cpp_variable_82:
   12cc8:	00 00 00 00          	db     4 dup(0x00)                                                  ; dec:   0, chr: '\0'
   12ccc:	90 0c 01 00          	dd     @obj3:sound_cpp_variable_81                                  ; fixup: num: 21429, src obj: 3, src ofs: 0x12ccc, dst obj: 3, dst ofs: 0x10c90
sound_cpp_variable_83:                                                                              ; access size: DWORD
   12cd0:	00 00 00 00          	dd     0x00000000
id_counter:                                                                                         ; access sizes: DWORD, WORD
   12cd4:	01 00                	dw     0x0001
   12cd6:	00 00                	dw     0x0000
supported_cards:                                                                                    ; access size: WORDS
   12cd8:	0e e0                	dw     0xe00e
   12cda:	00 e0                	dw     0xe000
   12cdc:	01 e0                	dw     0xe001
   12cde:	19 e0                	dw     0xe019
   12ce0:	1a e0                	dw     0xe01a
   12ce2:	03 e0                	dw     0xe003
   12ce4:	04 e0                	dw     0xe004
   12ce6:	05 e0                	dw     0xe005
   12ce8:	06 e0                	dw     0xe006
   12cea:	18 e0                	dw     0xe018
   12cec:	1b e0                	dw     0xe01b
   12cee:	1c e0                	dw     0xe01c
   12cf0:	2a e0                	dw     0xe02a
   12cf2:	00 00                	dw     0x0000
card_names:                                                                                         ; access size: DWORDS
   12cf4:	a9 0e 00 00          	dd     @obj3:sound_cpp_variable_67                                  ; fixup: num: 21428, src obj: 3, src ofs: 0x12cf4, dst obj: 3, dst ofs: 0xea9
   12cf8:	b3 0e 00 00          	dd     @obj3:sound_cpp_variable_68                                  ; fixup: num: 21427, src obj: 3, src ofs: 0x12cf8, dst obj: 3, dst ofs: 0xeb3
   12cfc:	c1 0e 00 00          	dd     @obj3:sound_cpp_variable_69                                  ; fixup: num: 21426, src obj: 3, src ofs: 0x12cfc, dst obj: 3, dst ofs: 0xec1
   12d00:	d3 0e 00 00          	dd     @obj3:sound_cpp_variable_70                                  ; fixup: num: 21425, src obj: 3, src ofs: 0x12d00, dst obj: 3, dst ofs: 0xed3
   12d04:	e3 0e 00 00          	dd     @obj3:sound_cpp_variable_71                                  ; fixup: num: 21424, src obj: 3, src ofs: 0x12d04, dst obj: 3, dst ofs: 0xee3
   12d08:	f3 0e 00 00          	dd     @obj3:sound_cpp_variable_72                                  ; fixup: num: 21423, src obj: 3, src ofs: 0x12d08, dst obj: 3, dst ofs: 0xef3
   12d0c:	13 0f 00 00          	dd     @obj3:sound_cpp_variable_73                                  ; fixup: num: 21422, src obj: 3, src ofs: 0x12d0c, dst obj: 3, dst ofs: 0xf13
   12d10:	33 0f 00 00          	dd     @obj3:sound_cpp_variable_74                                  ; fixup: num: 21421, src obj: 3, src ofs: 0x12d10, dst obj: 3, dst ofs: 0xf33
   12d14:	53 0f 00 00          	dd     @obj3:sound_cpp_variable_75                                  ; fixup: num: 21420, src obj: 3, src ofs: 0x12d14, dst obj: 3, dst ofs: 0xf53
   12d18:	73 0f 00 00          	dd     @obj3:sound_cpp_variable_76                                  ; fixup: num: 21419, src obj: 3, src ofs: 0x12d18, dst obj: 3, dst ofs: 0xf73
   12d1c:	88 0f 00 00          	dd     @obj3:sound_cpp_variable_77                                  ; fixup: num: 21418, src obj: 3, src ofs: 0x12d1c, dst obj: 3, dst ofs: 0xf88
   12d20:	98 0f 00 00          	dd     @obj3:sound_cpp_variable_78                                  ; fixup: num: 21417, src obj: 3, src ofs: 0x12d20, dst obj: 3, dst ofs: 0xf98
   12d24:	a8 0f 00 00          	dd     @obj3:sound_cpp_variable_79                                  ; fixup: num: 21416, src obj: 3, src ofs: 0x12d24, dst obj: 3, dst ofs: 0xfa8
   12d28:	be 0f 00 00          	dd     @obj3:sound_cpp_variable_80                                  ; fixup: num: 21415, src obj: 3, src ofs: 0x12d28, dst obj: 3, dst ofs: 0xfbe
sSOSInitDriver:
   12d2c:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
   12d2d:	20                   	db     0x20                                                         ; dec:  32, chr: ' '
   12d2e:	00 00 00 00 00 00 .. 	db     10 dup(0x00)                                                 ; dec:   0, chr: '\0'
   12d38:	01                   	db     0x01                                                         ; dec:   1, chr: ''
   12d39:	00 00 00             	db     3 dup(0x00)                                                  ; dec:   0, chr: '\0'
sSOSInitDriver_variable_1:                                                                          ; access size: DWORD
   12d3c:	00 00 00 00 00 00 .. 	dd     3 dup(0x00000000)
sSOSInitDriver_variable_2:                                                                          ; access size: DWORD
   12d48:	00 00 00 00          	dd     0x00000000
sSOSInitDriver_variable_3:                                                                          ; access size: WORD
   12d4c:	00 00 00 00 00 00 .. 	dw     22 dup(0x0000)
sSOSSampleData:
   12d78:	00 00 00 00 00 00 .. 	db     8 dup(0x00)                                                  ; dec:   0, chr: '\0'
sSOSSampleData_variable_1:                                                                          ; access size: DWORDS
   12d80:	00 00 00 00 00 00 .. 	dd     2 dup(0x00000000)
   12d88:	02 00 00 00          	dd     0x00000002
   12d8c:	ff 7f 00 00          	dd     0x00007fff
   12d90:	00 20 00 00          	dd     0x00002000
   12d94:	00 00 00 00          	dd     0x00000000                                                   ; fixup: num: 21359, src obj: 3, src ofs: 0x12d94, dst obj: 1, dst ofs: 0x7bc0
   12d98:	00 00 00 00 00 00 .. 	dd     25 dup(0x00000000)
   12dfc:	02 00 00 00          	dd     0x00000002
   12e00:	ff 7f 00 00          	dd     0x00007fff
   12e04:	00 20 00 00          	dd     0x00002000
   12e08:	00 00 00 00          	dd     0x00000000                                                   ; fixup: num: 21358, src obj: 3, src ofs: 0x12e08, dst obj: 1, dst ofs: 0x7bc0
   12e0c:	00 00 00 00 00 00 .. 	dd     21 dup(0x00000000)
hFileHandle:
   12e60:	ff ff ff ff          	db     4 dup(0xff)                                                  ; dec: 255, chr: ''

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 9 (D:\SOURCE\sound.cpp)                                       -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 9: D:\SOURCE\sound.cpp                                               -
;                                                                              -
;-------------------------------------------------------------------------------
.mod_init_mod_9:
   16d98:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
   16d99:	40                   	db     0x40                                                         ; dec:  64, chr: '@'
   16d9a:	70 74 00 00          	dd     @obj1:.fn_init_mod_9                                         ; fixup: num: 21649, src obj: 3, src ofs: 0x16d9a, dst obj: 1, dst ofs: 0x7470

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 9 (D:\SOURCE\sound.cpp)                                       -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 9: D:\SOURCE\sound.cpp                                               -
;                                                                              -
;-------------------------------------------------------------------------------
spool_stopped:
   1a190:	00 00 00 00          	db     4 dup(0x00)                                                  ; dec:   0, chr: '\0'
the_sound_system:
   1a194:	00 00 00 00 00 00 .. 	db     24 dup(0x00)                                                 ; dec:   0, chr: '\0'
the_sound_system_variable_1:                                                                        ; access sizes: DWORD, BYTE
   1a1ac:	00 00 00 00          	db     4 dup(0x00)                                                  ; dec:   0, chr: '\0'
the_sound_system_variable_2:                                                                        ; access size: DWORD
   1a1b0:	00 00 00 00          	dd     0x00000000
the_sound_system_variable_3:                                                                        ; access size: BYTE
   1a1b4:	00 00 00 00          	db     4 dup(0x00)                                                  ; dec:   0, chr: '\0'
hSOSSampleHandle:                                                                                   ; access size: DWORD
   1a1b8:	00 00 00 00          	dd     0x00000000
lpSampleBuffer:
   1a1bc:	00 00 00 00 00 00 .. 	db     12 dup(0x00)                                                 ; dec:   0, chr: '\0'
wSOSActiveSample:                                                                                   ; access size: DWORD
   1a1c8:	00 00 00 00          	dd     0x00000000
wBytesRead:                                                                                         ; access size: DWORD
   1a1cc:	00 00 00 00          	dd     0x00000000
wSOSSamplePending:                                                                                  ; access size: DWORD
   1a1d0:	00 00 00 00          	dd     0x00000000
music:                                                                                              ; access size: DWORD
   1a1d4:	00 00 00 00 00 00 .. 	dd     2 dup(0x00000000)
music_variable_1:                                                                                   ; access size: WORD
   1a1dc:	00 00 00 00          	dw     2 dup(0x0000)
music_variable_2:
   1a1e0:	00 00 00 00 00 00 .. 	db     12 dup(0x00)                                                 ; dec:   0, chr: '\0'
music_variable_3:                                                                                   ; access size: DWORD
   1a1ec:	00 00 00 00          	dd     0x00000000
music_variable_4:                                                                                   ; access size: DWORD
   1a1f0:	00 00 00 00          	dd     0x00000000
music_variable_5:                                                                                   ; access size: DWORD
   1a1f4:	00 00 00 00 00 00 .. 	dd     5 dup(0x00000000)
music_variable_6:                                                                                   ; access size: DWORD
   1a208:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
music_variable_7:                                                                                   ; access size: BYTE
   1a209:	00 00 00 00 00 00 .. 	db     83 dup(0x00)                                                 ; dec:   0, chr: '\0'
music_variable_8:                                                                                   ; access size: DWORD
   1a25c:	00 00 00 00 00 00 .. 	dd     2 dup(0x00000000)
   1a264:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
music_variable_9:                                                                                   ; access size: BYTE
   1a265:	00 00 00             	db     3 dup(0x00)                                                  ; dec:   0, chr: '\0'
music_variable_10:                                                                                  ; access size: DWORD
   1a268:	00 00 00 00          	dd     0x00000000
music_variable_11:                                                                                  ; access size: DWORD
   1a26c:	00 00 00 00 00 00 .. 	dd     5 dup(0x00000000)
music_variable_12:                                                                                  ; access size: DWORD
   1a280:	00 00 00 00          	dd     0x00000000
music_variable_13:                                                                                  ; access size: DWORD
   1a284:	00 00 00 00          	dd     0x00000000
music_variable_14:                                                                                  ; access size: DWORD
   1a288:	00 00 00 00          	dd     0x00000000
music_variable_15:                                                                                  ; access size: BYTE
   1a28c:	00 00 00 00 00 00 .. 	db     68 dup(0x00)                                                 ; dec:   0, chr: '\0'
music_variable_16:                                                                                  ; access size: DWORD
   1a2d0:	00 00 00 00          	dd     0x00000000
music_variable_17:                                                                                  ; access size: DWORD
   1a2d4:	00 00 00 00          	dd     0x00000000
hardware:                                                                                           ; access sizes: WORD, DWORD
   1a2d8:	00 00 00 00          	dw     2 dup(0x0000)
hardware_variable_1:                                                                                ; access sizes: BYTE, DWORD
   1a2dc:	00 00 00 00          	db     4 dup(0x00)                                                  ; dec:   0, chr: '\0'
hardware_variable_2:                                                                                ; access sizes: BYTE, DWORD
   1a2e0:	00 00 00 00 00 00 .. 	db     8 dup(0x00)                                                  ; dec:   0, chr: '\0'
capabilities:
   1a2e8:	00 00 00 00 00 00 .. 	db     36 dup(0x00)                                                 ; dec:   0, chr: '\0'
capabilities_variable_1:                                                                            ; access sizes: BYTE, DWORD
   1a30c:	00 00 00 00          	db     4 dup(0x00)                                                  ; dec:   0, chr: '\0'
capabilities_variable_2:                                                                            ; access size: DWORD
   1a310:	00 00 00 00 00 00 .. 	dd     15 dup(0x00000000)
capabilities_variable_3:                                                                            ; access size: WORD
   1a34c:	00 00 00 00 00 00 .. 	dw     4 dup(0x0000)
temp_capabilities:
   1a354:	00 00 00 00 00 00 .. 	db     36 dup(0x00)                                                 ; dec:   0, chr: '\0'
temp_capabilities_variable_1:                                                                       ; access size: DWORD
   1a378:	00 00 00 00          	dd     0x00000000
temp_capabilities_variable_2:                                                                       ; access size: DWORD
   1a37c:	00 00 00 00 00 00 .. 	dd     15 dup(0x00000000)
temp_capabilities_variable_3:                                                                       ; access size: DWORD
   1a3b8:	00 00 00 00 00 00 .. 	dd     2 dup(0x00000000)
bogus_mod_9:
   1a3c0:	00 00 00 00          	db     4 dup(0x00)                                                  ; dec:   0, chr: '\0'
return_code:                                                                                        ; access size: DWORD
   1a3c4:	00 00 00 00          	dd     0x00000000
iterator:                                                                                           ; access size: DWORD
   1a3c8:	00 00 00 00          	dd     0x00000000

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 9 (D:\SOURCE\sound.cpp)                                       -
;                                                                              -
;-------------------------------------------------------------------------------