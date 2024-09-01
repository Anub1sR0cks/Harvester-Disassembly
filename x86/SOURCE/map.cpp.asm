;-------------------------------------------------------------------------------
;                                                                              -
;  Module 87: D:\SOURCE\map.cpp                                                -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function 'overhead_map'                       -
;-------------------------------------------------
overhead_map:
   56460:	53                   	push   ebx
   56461:	51                   	push   ecx
   56462:	52                   	push   edx
   56463:	56                   	push   esi
   56464:	57                   	push   edi
   56465:	55                   	push   ebp
   56466:	89 e5                	mov    ebp,esp
   56468:	81 ec 84 00 00 00    	sub    esp,0x84
   5646e:	81 ed 82 00 00 00    	sub    ebp,0x82
   56474:	89 45 7a             	mov    DWORD PTR [ebp+0x7a],eax
   56477:	31 d2                	xor    edx,edx
   56479:	31 f6                	xor    esi,esi
   5647b:	89 55 66             	mov    DWORD PTR [ebp+0x66],edx
   5647e:	89 55 6a             	mov    DWORD PTR [ebp+0x6a],edx
   56481:	89 55 7e             	mov    DWORD PTR [ebp+0x7e],edx
   56484:	85 c0                	test   eax,eax
   56486:	75 0f                	jne    overhead_map_branch_1
   56488:	bb b4 d0 00 00       	mov    ebx,@obj3:map_cpp_variable_1                                 ; fixup: num: 13614, src obj: 1, src ofs: 0x56489, dst obj: 3, dst ofs: 0xd0b4
   5648d:	ba 25 00 00 00       	mov    edx,0x25
   56492:	e8 99 1b fe ff       	call   _error_report
overhead_map_branch_1:
   56497:	8b 7d 7a             	mov    edi,DWORD PTR [ebp+0x7a]
   5649a:	29 c9                	sub    ecx,ecx
   5649c:	49                   	dec    ecx
   5649d:	31 c0                	xor    eax,eax
   5649f:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
   564a1:	f7 d1                	not    ecx
   564a3:	49                   	dec    ecx
   564a4:	85 c9                	test   ecx,ecx
   564a6:	75 11                	jne    overhead_map_branch_2
   564a8:	bb c8 d0 00 00       	mov    ebx,@obj3:map_cpp_variable_2                                 ; fixup: num: 13613, src obj: 1, src ofs: 0x564a9, dst obj: 3, dst ofs: 0xd0c8
   564ad:	ba 27 00 00 00       	mov    edx,0x27
   564b2:	31 c0                	xor    eax,eax
   564b4:	e8 77 1b fe ff       	call   _error_report
overhead_map_branch_2:
   564b9:	83 3d 84 60 02 00 00 	cmp    DWORD PTR ds:@obj3:palette,0x0                               ; fixup: num: 13612, src obj: 1, src ofs: 0x564bb, dst obj: 3, dst ofs: 0x26084
   564c0:	74 59                	je     overhead_map_branch_5
   564c2:	68 cd cc 4c 3e       	push   0x3e4ccccd
   564c7:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 13611, src obj: 1, src ofs: 0x564c8, dst obj: 3, dst ofs: 0x1a1d4
   564cc:	e8 df 4e fb ff       	call   fade_out
   564d1:	b8 e3 d0 00 00       	mov    eax,@obj3:map_cpp_variable_3                                 ; fixup: num: 13610, src obj: 1, src ofs: 0x564d2, dst obj: 3, dst ofs: 0xd0e3
   564d6:	e8 b5 62 01 00       	call   check_script_flag
   564db:	84 c0                	test   al,al
   564dd:	75 18                	jne    overhead_map_branch_3
   564df:	dd 05 b4 0f 01 00    	fld    QWORD PTR ds:@obj3:pal_gamma                                 ; fixup: num: 13609, src obj: 1, src ofs: 0x564e1, dst obj: 3, dst ofs: 0x10fb4
   564e5:	dc 05 e1 d2 00 00    	fadd   QWORD PTR ds:@obj3:map_cpp_variable_41                       ; fixup: num: 13608, src obj: 1, src ofs: 0x564e7, dst obj: 3, dst ofs: 0xd2e1
   564eb:	6a 00                	push   0x0
   564ed:	6a 00                	push   0x0
   564ef:	83 ec 08             	sub    esp,0x8
   564f2:	dd 1c 24             	fstp   QWORD PTR [esp]
   564f5:	eb 12                	jmp    overhead_map_branch_4
overhead_map_branch_3:
   564f7:	6a 00                	push   0x0
   564f9:	6a 00                	push   0x0
   564fb:	8b 15 b8 0f 01 00    	mov    edx,DWORD PTR ds:@obj3:pal_gamma_variable_1                  ; fixup: num: 13607, src obj: 1, src ofs: 0x564fd, dst obj: 3, dst ofs: 0x10fb8
   56501:	52                   	push   edx
   56502:	8b 1d b4 0f 01 00    	mov    ebx,DWORD PTR ds:@obj3:pal_gamma                             ; fixup: num: 13606, src obj: 1, src ofs: 0x56504, dst obj: 3, dst ofs: 0x10fb4
   56508:	53                   	push   ebx
overhead_map_branch_4:
   56509:	a1 84 60 02 00       	mov    eax,ds:@obj3:palette                                         ; fixup: num: 13605, src obj: 1, src ofs: 0x5650a, dst obj: 3, dst ofs: 0x26084
   5650e:	e8 1d d5 fb ff       	call   fade
   56513:	30 e4                	xor    ah,ah
   56515:	88 25 7e 60 02 00    	mov    BYTE PTR ds:@obj3:faded_in,ah                                ; fixup: num: 13618, src obj: 1, src ofs: 0x56517, dst obj: 3, dst ofs: 0x2607e
overhead_map_branch_5:
   5651b:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 13617, src obj: 1, src ofs: 0x5651c, dst obj: 3, dst ofs: 0x25a88
   56520:	e8 bb 64 ff ff       	call   remove_all
   56525:	31 d2                	xor    edx,edx
   56527:	a1 94 60 02 00       	mov    eax,ds:@obj3:pointer                                         ; fixup: num: 13616, src obj: 1, src ofs: 0x56528, dst obj: 3, dst ofs: 0x26094
   5652c:	e8 5f 34 01 00       	call   set_pointer
   56531:	68 00 00 c8 42       	push   0x42c80000
   56536:	31 db                	xor    ebx,ebx
   56538:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 13615, src obj: 1, src ofs: 0x56539, dst obj: 3, dst ofs: 0x25bd4
   5653d:	31 d2                	xor    edx,edx
   5653f:	e8 ac 51 fe ff       	call   set_xyz
   56544:	8b 0d ac 5a 02 00    	mov    ecx,DWORD PTR ds:@obj3:map_entrance_list                     ; fixup: num: 13628, src obj: 1, src ofs: 0x56546, dst obj: 3, dst ofs: 0x25aac
   5654a:	85 c9                	test   ecx,ecx
   5654c:	74 38                	je     overhead_map_branch_9
overhead_map_branch_6:
   5654e:	83 79 0c 00          	cmp    DWORD PTR [ecx+0xc],0x0
   56552:	75 11                	jne    overhead_map_branch_7
   56554:	bb ec d0 00 00       	mov    ebx,@obj3:map_cpp_variable_4                                 ; fixup: num: 13627, src obj: 1, src ofs: 0x56555, dst obj: 3, dst ofs: 0xd0ec
   56559:	ba 3f 00 00 00       	mov    edx,0x3f
   5655e:	31 c0                	xor    eax,eax
   56560:	e8 cb 1a fe ff       	call   _error_report
overhead_map_branch_7:
   56565:	8b 55 7a             	mov    edx,DWORD PTR [ebp+0x7a]
   56568:	8b 41 0c             	mov    eax,DWORD PTR [ecx+0xc]
   5656b:	e8 c0 fe 01 00       	call   strcmp_
   56570:	85 c0                	test   eax,eax
   56572:	75 0b                	jne    overhead_map_branch_8
   56574:	8b 41 08             	mov    eax,DWORD PTR [ecx+0x8]
   56577:	89 45 6a             	mov    DWORD PTR [ebp+0x6a],eax
   5657a:	89 45 76             	mov    DWORD PTR [ebp+0x76],eax
   5657d:	eb 07                	jmp    overhead_map_branch_9
overhead_map_branch_8:
   5657f:	8b 49 10             	mov    ecx,DWORD PTR [ecx+0x10]
   56582:	85 c9                	test   ecx,ecx
   56584:	75 c8                	jne    overhead_map_branch_6
overhead_map_branch_9:
   56586:	85 c9                	test   ecx,ecx
   56588:	75 27                	jne    overhead_map_branch_10
   5658a:	8b 45 7a             	mov    eax,DWORD PTR [ebp+0x7a]
   5658d:	50                   	push   eax
   5658e:	68 09 d1 00 00       	push   @obj3:map_cpp_variable_5                                     ; fixup: num: 13626, src obj: 1, src ofs: 0x5658f, dst obj: 3, dst ofs: 0xd109
   56593:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 13625, src obj: 1, src ofs: 0x56594, dst obj: 3, dst ofs: 0x237fc
   56598:	bb fc 37 02 00       	mov    ebx,@obj3:log_buffer                                         ; fixup: num: 13624, src obj: 1, src ofs: 0x56599, dst obj: 3, dst ofs: 0x237fc
   5659d:	e8 3f a6 01 00       	call   sprintf_
   565a2:	83 c4 0c             	add    esp,0xc
   565a5:	ba 4c 00 00 00       	mov    edx,0x4c
   565aa:	31 c0                	xor    eax,eax
   565ac:	e8 7f 1a fe ff       	call   _error_report
overhead_map_branch_10:
   565b1:	b9 4f 00 00 00       	mov    ecx,0x4f
   565b6:	bb 24 d1 00 00       	mov    ebx,@obj3:map_cpp_variable_6                                 ; fixup: num: 13623, src obj: 1, src ofs: 0x565b7, dst obj: 3, dst ofs: 0xd124
   565bb:	b8 2c d1 00 00       	mov    eax,@obj3:map_cpp_variable_7                                 ; fixup: num: 13622, src obj: 1, src ofs: 0x565bc, dst obj: 3, dst ofs: 0xd12c
   565c0:	8b 15 84 60 02 00    	mov    edx,DWORD PTR ds:@obj3:palette                               ; fixup: num: 13621, src obj: 1, src ofs: 0x565c2, dst obj: 3, dst ofs: 0x26084
   565c6:	e8 15 68 fb ff       	call   XFILE_read2
   565cb:	a3 84 60 02 00       	mov    ds:@obj3:palette,eax                                         ; fixup: num: 13620, src obj: 1, src ofs: 0x565cc, dst obj: 3, dst ofs: 0x26084
   565d0:	85 c0                	test   eax,eax
   565d2:	75 0f                	jne    overhead_map_branch_11
   565d4:	bb 47 d1 00 00       	mov    ebx,@obj3:map_cpp_variable_8                                 ; fixup: num: 13619, src obj: 1, src ofs: 0x565d5, dst obj: 3, dst ofs: 0xd147
   565d9:	ba 51 00 00 00       	mov    edx,0x51
   565de:	e8 4d 1a fe ff       	call   _error_report
overhead_map_branch_11:
   565e3:	b8 4c 00 00 00       	mov    eax,0x4c
   565e8:	e8 2b b9 01 00       	call   W?$nwn(ui)pnv
   565ed:	85 c0                	test   eax,eax
   565ef:	74 25                	je     overhead_map_branch_12
   565f1:	6a 00                	push   0x0
   565f3:	68 93 14 07 00       	push   @obj1:_nmalloc_                                              ; aliases: _nmalloc_, malloc_; fixup: num: 13638, src obj: 1, src ofs: 0x565f4, dst obj: 1, dst ofs: 0x71493
   565f8:	6a 00                	push   0x0
   565fa:	6a 00                	push   0x0
   565fc:	6a 01                	push   0x1
   565fe:	68 00 00 48 42       	push   0x42480000
   56603:	bb 79 d1 00 00       	mov    ebx,@obj3:map_cpp_variable_9                                 ; fixup: num: 13637, src obj: 1, src ofs: 0x56604, dst obj: 3, dst ofs: 0xd179
   56608:	6a 00                	push   0x0
   5660a:	ba 80 d1 00 00       	mov    edx,@obj3:map_cpp_variable_10                                ; fixup: num: 13636, src obj: 1, src ofs: 0x5660b, dst obj: 3, dst ofs: 0xd180
   5660f:	31 c9                	xor    ecx,ecx
   56611:	e8 ca 46 fe ff       	call   W?$ct:BTMAP$n(pnapnaiibiucucpn(ui)pnvpnuc)_
overhead_map_branch_12:
   56616:	89 45 52             	mov    DWORD PTR [ebp+0x52],eax
   56619:	b8 4c 00 00 00       	mov    eax,0x4c
   5661e:	e8 f5 b8 01 00       	call   W?$nwn(ui)pnv
   56623:	85 c0                	test   eax,eax
   56625:	74 25                	je     overhead_map_branch_13
   56627:	6a 00                	push   0x0
   56629:	68 93 14 07 00       	push   @obj1:_nmalloc_                                              ; aliases: _nmalloc_, malloc_; fixup: num: 13635, src obj: 1, src ofs: 0x5662a, dst obj: 1, dst ofs: 0x71493
   5662e:	6a 00                	push   0x0
   56630:	6a 00                	push   0x0
   56632:	6a 01                	push   0x1
   56634:	68 00 00 48 42       	push   0x42480000
   56639:	bb 9c d1 00 00       	mov    ebx,@obj3:map_cpp_variable_11                                ; fixup: num: 13634, src obj: 1, src ofs: 0x5663a, dst obj: 3, dst ofs: 0xd19c
   5663e:	6a 00                	push   0x0
   56640:	ba a3 d1 00 00       	mov    edx,@obj3:map_cpp_variable_12                                ; fixup: num: 13633, src obj: 1, src ofs: 0x56641, dst obj: 3, dst ofs: 0xd1a3
   56645:	31 c9                	xor    ecx,ecx
   56647:	e8 94 46 fe ff       	call   W?$ct:BTMAP$n(pnapnaiibiucucpn(ui)pnvpnuc)_
overhead_map_branch_13:
   5664c:	89 45 56             	mov    DWORD PTR [ebp+0x56],eax
   5664f:	b8 4c 00 00 00       	mov    eax,0x4c
   56654:	e8 bf b8 01 00       	call   W?$nwn(ui)pnv
   56659:	85 c0                	test   eax,eax
   5665b:	74 25                	je     overhead_map_branch_14
   5665d:	6a 00                	push   0x0
   5665f:	68 93 14 07 00       	push   @obj1:_nmalloc_                                              ; aliases: _nmalloc_, malloc_; fixup: num: 13632, src obj: 1, src ofs: 0x56660, dst obj: 1, dst ofs: 0x71493
   56664:	6a 00                	push   0x0
   56666:	6a 00                	push   0x0
   56668:	6a 01                	push   0x1
   5666a:	68 00 00 48 42       	push   0x42480000
   5666f:	bb bf d1 00 00       	mov    ebx,@obj3:map_cpp_variable_13                                ; fixup: num: 13631, src obj: 1, src ofs: 0x56670, dst obj: 3, dst ofs: 0xd1bf
   56674:	6a 00                	push   0x0
   56676:	ba c6 d1 00 00       	mov    edx,@obj3:map_cpp_variable_14                                ; fixup: num: 13630, src obj: 1, src ofs: 0x56677, dst obj: 3, dst ofs: 0xd1c6
   5667b:	31 c9                	xor    ecx,ecx
   5667d:	e8 5e 46 fe ff       	call   W?$ct:BTMAP$n(pnapnaiibiucucpn(ui)pnvpnuc)_
overhead_map_branch_14:
   56682:	89 45 5a             	mov    DWORD PTR [ebp+0x5a],eax
   56685:	b8 4c 00 00 00       	mov    eax,0x4c
   5668a:	e8 89 b8 01 00       	call   W?$nwn(ui)pnv
   5668f:	85 c0                	test   eax,eax
   56691:	74 25                	je     overhead_map_branch_15
   56693:	6a 00                	push   0x0
   56695:	68 93 14 07 00       	push   @obj1:_nmalloc_                                              ; aliases: _nmalloc_, malloc_; fixup: num: 13629, src obj: 1, src ofs: 0x56696, dst obj: 1, dst ofs: 0x71493
   5669a:	6a 00                	push   0x0
   5669c:	6a 00                	push   0x0
   5669e:	6a 01                	push   0x1
   566a0:	68 00 00 48 42       	push   0x42480000
   566a5:	bb e2 d1 00 00       	mov    ebx,@obj3:map_cpp_variable_15                                ; fixup: num: 13650, src obj: 1, src ofs: 0x566a6, dst obj: 3, dst ofs: 0xd1e2
   566aa:	6a 00                	push   0x0
   566ac:	ba e9 d1 00 00       	mov    edx,@obj3:map_cpp_variable_16                                ; fixup: num: 13649, src obj: 1, src ofs: 0x566ad, dst obj: 3, dst ofs: 0xd1e9
   566b1:	31 c9                	xor    ecx,ecx
   566b3:	e8 28 46 fe ff       	call   W?$ct:BTMAP$n(pnapnaiibiucucpn(ui)pnvpnuc)_
overhead_map_branch_15:
   566b8:	8b 55 6a             	mov    edx,DWORD PTR [ebp+0x6a]
   566bb:	89 45 5e             	mov    DWORD PTR [ebp+0x5e],eax
   566be:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 13648, src obj: 1, src ofs: 0x566bf, dst obj: 3, dst ofs: 0x25a88
   566c3:	8b 54 95 52          	mov    edx,DWORD PTR [ebp+edx*4+0x52]
   566c7:	e8 64 5a ff ff       	call   insert_bitmap
   566cc:	ba 07 00 00 00       	mov    edx,0x7
   566d1:	a1 94 60 02 00       	mov    eax,ds:@obj3:pointer                                         ; fixup: num: 13647, src obj: 1, src ofs: 0x566d2, dst obj: 3, dst ofs: 0x26094
   566d6:	e8 b5 32 01 00       	call   set_pointer
   566db:	a1 c4 5a 02 00       	mov    eax,ds:@obj3:current_room                                    ; fixup: num: 13646, src obj: 1, src ofs: 0x566dc, dst obj: 3, dst ofs: 0x25ac4
   566e0:	8b 50 2c             	mov    edx,DWORD PTR [eax+0x2c]
   566e3:	85 d2                	test   edx,edx
   566e5:	75 4d                	jne    overhead_map_branch_16
   566e7:	c7 05 78 59 02 00 40 01 00 00 	mov    DWORD PTR ds:@obj3:mouse_x,0x140                    ; fixup: num: 13645, src obj: 1, src ofs: 0x566e9, dst obj: 3, dst ofs: 0x25978
   566f1:	c7 05 7c 59 02 00 f0 00 00 00 	mov    DWORD PTR ds:@obj3:mouse_y,0xf0                     ; fixup: num: 13644, src obj: 1, src ofs: 0x566f3, dst obj: 3, dst ofs: 0x2597c
   566fb:	a1 78 59 02 00       	mov    eax,ds:@obj3:mouse_x                                         ; fixup: num: 13643, src obj: 1, src ofs: 0x566fc, dst obj: 3, dst ofs: 0x25978
   56700:	8b 15 7c 59 02 00    	mov    edx,DWORD PTR ds:@obj3:mouse_y                               ; fixup: num: 13642, src obj: 1, src ofs: 0x56702, dst obj: 3, dst ofs: 0x2597c
   56706:	80 3d 71 59 02 00 00 	cmp    BYTE PTR ds:@obj3:mouse_initialized,0x0                      ; fixup: num: 13641, src obj: 1, src ofs: 0x56708, dst obj: 3, dst ofs: 0x25971
   5670d:	0f 84 d8 03 00 00    	je     overhead_map_branch_38
   56713:	b9 04 00 00 00       	mov    ecx,0x4
   56718:	8d 5d 1a             	lea    ebx,[ebp+0x1a]
   5671b:	66 89 45 22          	mov    WORD PTR [ebp+0x22],ax
   5671f:	66 89 55 26          	mov    WORD PTR [ebp+0x26],dx
   56723:	8d 55 1a             	lea    edx,[ebp+0x1a]
   56726:	b8 33 00 00 00       	mov    eax,0x33
   5672b:	66 89 4d 1a          	mov    WORD PTR [ebp+0x1a],cx
   5672f:	e9 b2 03 00 00       	jmp    overhead_map_branch_37
overhead_map_branch_16:
   56734:	89 d0                	mov    eax,edx
   56736:	ba 05 d2 00 00       	mov    edx,@obj3:map_cpp_variable_17                                ; fixup: num: 13640, src obj: 1, src ofs: 0x56737, dst obj: 3, dst ofs: 0xd205
   5673b:	e8 f0 fc 01 00       	call   strcmp_
   56740:	85 c0                	test   eax,eax
   56742:	75 19                	jne    overhead_map_branch_17
   56744:	c7 05 78 59 02 00 b2 01 00 00 	mov    DWORD PTR ds:@obj3:mouse_x,0x1b2                    ; fixup: num: 13639, src obj: 1, src ofs: 0x56746, dst obj: 3, dst ofs: 0x25978
   5674e:	c7 05 7c 59 02 00 63 00 00 00 	mov    DWORD PTR ds:@obj3:mouse_y,0x63                     ; fixup: num: 13544, src obj: 1, src ofs: 0x56750, dst obj: 3, dst ofs: 0x2597c
   56758:	e9 59 03 00 00       	jmp    overhead_map_branch_36
overhead_map_branch_17:
   5675d:	a1 c4 5a 02 00       	mov    eax,ds:@obj3:current_room                                    ; fixup: num: 13543, src obj: 1, src ofs: 0x5675e, dst obj: 3, dst ofs: 0x25ac4
   56762:	ba 0d d2 00 00       	mov    edx,@obj3:map_cpp_variable_18                                ; fixup: num: 13542, src obj: 1, src ofs: 0x56763, dst obj: 3, dst ofs: 0xd20d
   56767:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
   5676a:	e8 c1 fc 01 00       	call   strcmp_
   5676f:	85 c0                	test   eax,eax
   56771:	75 19                	jne    overhead_map_branch_18
   56773:	c7 05 78 59 02 00 fd 00 00 00 	mov    DWORD PTR ds:@obj3:mouse_x,0xfd                     ; fixup: num: 13541, src obj: 1, src ofs: 0x56775, dst obj: 3, dst ofs: 0x25978
   5677d:	c7 05 7c 59 02 00 4a 00 00 00 	mov    DWORD PTR ds:@obj3:mouse_y,0x4a                     ; fixup: num: 13540, src obj: 1, src ofs: 0x5677f, dst obj: 3, dst ofs: 0x2597c
   56787:	e9 2a 03 00 00       	jmp    overhead_map_branch_36
overhead_map_branch_18:
   5678c:	a1 c4 5a 02 00       	mov    eax,ds:@obj3:current_room                                    ; fixup: num: 13539, src obj: 1, src ofs: 0x5678d, dst obj: 3, dst ofs: 0x25ac4
   56791:	ba 17 d2 00 00       	mov    edx,@obj3:map_cpp_variable_19                                ; fixup: num: 13538, src obj: 1, src ofs: 0x56792, dst obj: 3, dst ofs: 0xd217
   56796:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
   56799:	e8 92 fc 01 00       	call   strcmp_
   5679e:	85 c0                	test   eax,eax
   567a0:	75 19                	jne    overhead_map_branch_19
   567a2:	c7 05 78 59 02 00 e9 00 00 00 	mov    DWORD PTR ds:@obj3:mouse_x,0xe9                     ; fixup: num: 13537, src obj: 1, src ofs: 0x567a4, dst obj: 3, dst ofs: 0x25978
   567ac:	c7 05 7c 59 02 00 cd 00 00 00 	mov    DWORD PTR ds:@obj3:mouse_y,0xcd                     ; fixup: num: 13536, src obj: 1, src ofs: 0x567ae, dst obj: 3, dst ofs: 0x2597c
   567b6:	e9 fb 02 00 00       	jmp    overhead_map_branch_36
overhead_map_branch_19:
   567bb:	a1 c4 5a 02 00       	mov    eax,ds:@obj3:current_room                                    ; fixup: num: 13535, src obj: 1, src ofs: 0x567bc, dst obj: 3, dst ofs: 0x25ac4
   567c0:	ba 1c d2 00 00       	mov    edx,@obj3:map_cpp_variable_20                                ; fixup: num: 13534, src obj: 1, src ofs: 0x567c1, dst obj: 3, dst ofs: 0xd21c
   567c5:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
   567c8:	e8 63 fc 01 00       	call   strcmp_
   567cd:	85 c0                	test   eax,eax
   567cf:	75 19                	jne    overhead_map_branch_20
   567d1:	c7 05 78 59 02 00 5c 00 00 00 	mov    DWORD PTR ds:@obj3:mouse_x,0x5c                     ; fixup: num: 13533, src obj: 1, src ofs: 0x567d3, dst obj: 3, dst ofs: 0x25978
   567db:	c7 05 7c 59 02 00 c4 00 00 00 	mov    DWORD PTR ds:@obj3:mouse_y,0xc4                     ; fixup: num: 13532, src obj: 1, src ofs: 0x567dd, dst obj: 3, dst ofs: 0x2597c
   567e5:	e9 cc 02 00 00       	jmp    overhead_map_branch_36
overhead_map_branch_20:
   567ea:	a1 c4 5a 02 00       	mov    eax,ds:@obj3:current_room                                    ; fixup: num: 13652, src obj: 1, src ofs: 0x567eb, dst obj: 3, dst ofs: 0x25ac4
   567ef:	ba 25 d2 00 00       	mov    edx,@obj3:map_cpp_variable_21                                ; fixup: num: 13651, src obj: 1, src ofs: 0x567f0, dst obj: 3, dst ofs: 0xd225
   567f4:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
   567f7:	e8 34 fc 01 00       	call   strcmp_
   567fc:	85 c0                	test   eax,eax
   567fe:	75 19                	jne    overhead_map_branch_21
   56800:	c7 05 78 59 02 00 b0 01 00 00 	mov    DWORD PTR ds:@obj3:mouse_x,0x1b0                    ; fixup: num: 13559, src obj: 1, src ofs: 0x56802, dst obj: 3, dst ofs: 0x25978
   5680a:	c7 05 7c 59 02 00 73 01 00 00 	mov    DWORD PTR ds:@obj3:mouse_y,0x173                    ; fixup: num: 13558, src obj: 1, src ofs: 0x5680c, dst obj: 3, dst ofs: 0x2597c
   56814:	e9 9d 02 00 00       	jmp    overhead_map_branch_36
overhead_map_branch_21:
   56819:	a1 c4 5a 02 00       	mov    eax,ds:@obj3:current_room                                    ; fixup: num: 13557, src obj: 1, src ofs: 0x5681a, dst obj: 3, dst ofs: 0x25ac4
   5681e:	ba 30 d2 00 00       	mov    edx,@obj3:map_cpp_variable_22                                ; fixup: num: 13556, src obj: 1, src ofs: 0x5681f, dst obj: 3, dst ofs: 0xd230
   56823:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
   56826:	e8 05 fc 01 00       	call   strcmp_
   5682b:	85 c0                	test   eax,eax
   5682d:	75 19                	jne    overhead_map_branch_22
   5682f:	c7 05 78 59 02 00 d3 00 00 00 	mov    DWORD PTR ds:@obj3:mouse_x,0xd3                     ; fixup: num: 13555, src obj: 1, src ofs: 0x56831, dst obj: 3, dst ofs: 0x25978
   56839:	c7 05 7c 59 02 00 5f 01 00 00 	mov    DWORD PTR ds:@obj3:mouse_y,0x15f                    ; fixup: num: 13554, src obj: 1, src ofs: 0x5683b, dst obj: 3, dst ofs: 0x2597c
   56843:	e9 6e 02 00 00       	jmp    overhead_map_branch_36
overhead_map_branch_22:
   56848:	a1 c4 5a 02 00       	mov    eax,ds:@obj3:current_room                                    ; fixup: num: 13553, src obj: 1, src ofs: 0x56849, dst obj: 3, dst ofs: 0x25ac4
   5684d:	ba 35 d2 00 00       	mov    edx,@obj3:map_cpp_variable_23                                ; fixup: num: 13552, src obj: 1, src ofs: 0x5684e, dst obj: 3, dst ofs: 0xd235
   56852:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
   56855:	e8 d6 fb 01 00       	call   strcmp_
   5685a:	85 c0                	test   eax,eax
   5685c:	75 19                	jne    overhead_map_branch_23
   5685e:	c7 05 78 59 02 00 0c 01 00 00 	mov    DWORD PTR ds:@obj3:mouse_x,0x10c                    ; fixup: num: 13551, src obj: 1, src ofs: 0x56860, dst obj: 3, dst ofs: 0x25978
   56868:	c7 05 7c 59 02 00 9e 01 00 00 	mov    DWORD PTR ds:@obj3:mouse_y,0x19e                    ; fixup: num: 13550, src obj: 1, src ofs: 0x5686a, dst obj: 3, dst ofs: 0x2597c
   56872:	e9 3f 02 00 00       	jmp    overhead_map_branch_36
overhead_map_branch_23:
   56877:	a1 c4 5a 02 00       	mov    eax,ds:@obj3:current_room                                    ; fixup: num: 13549, src obj: 1, src ofs: 0x56878, dst obj: 3, dst ofs: 0x25ac4
   5687c:	ba 39 d2 00 00       	mov    edx,@obj3:map_cpp_variable_24                                ; fixup: num: 13548, src obj: 1, src ofs: 0x5687d, dst obj: 3, dst ofs: 0xd239
   56881:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
   56884:	e8 a7 fb 01 00       	call   strcmp_
   56889:	85 c0                	test   eax,eax
   5688b:	75 19                	jne    overhead_map_branch_24
   5688d:	c7 05 78 59 02 00 4c 00 00 00 	mov    DWORD PTR ds:@obj3:mouse_x,0x4c                     ; fixup: num: 13547, src obj: 1, src ofs: 0x5688f, dst obj: 3, dst ofs: 0x25978
   56897:	c7 05 7c 59 02 00 7c 00 00 00 	mov    DWORD PTR ds:@obj3:mouse_y,0x7c                     ; fixup: num: 13546, src obj: 1, src ofs: 0x56899, dst obj: 3, dst ofs: 0x2597c
   568a1:	e9 10 02 00 00       	jmp    overhead_map_branch_36
overhead_map_branch_24:
   568a6:	a1 c4 5a 02 00       	mov    eax,ds:@obj3:current_room                                    ; fixup: num: 13545, src obj: 1, src ofs: 0x568a7, dst obj: 3, dst ofs: 0x25ac4
   568ab:	ba 41 d2 00 00       	mov    edx,@obj3:map_cpp_variable_25                                ; fixup: num: 13574, src obj: 1, src ofs: 0x568ac, dst obj: 3, dst ofs: 0xd241
   568b0:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
   568b3:	e8 78 fb 01 00       	call   strcmp_
   568b8:	85 c0                	test   eax,eax
   568ba:	75 19                	jne    overhead_map_branch_25
   568bc:	c7 05 78 59 02 00 d0 00 00 00 	mov    DWORD PTR ds:@obj3:mouse_x,0xd0                     ; fixup: num: 13573, src obj: 1, src ofs: 0x568be, dst obj: 3, dst ofs: 0x25978
   568c6:	c7 05 7c 59 02 00 9d 00 00 00 	mov    DWORD PTR ds:@obj3:mouse_y,0x9d                     ; fixup: num: 13572, src obj: 1, src ofs: 0x568c8, dst obj: 3, dst ofs: 0x2597c
   568d0:	e9 e1 01 00 00       	jmp    overhead_map_branch_36
overhead_map_branch_25:
   568d5:	a1 c4 5a 02 00       	mov    eax,ds:@obj3:current_room                                    ; fixup: num: 13571, src obj: 1, src ofs: 0x568d6, dst obj: 3, dst ofs: 0x25ac4
   568da:	ba 4c d2 00 00       	mov    edx,@obj3:map_cpp_variable_26                                ; fixup: num: 13570, src obj: 1, src ofs: 0x568db, dst obj: 3, dst ofs: 0xd24c
   568df:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
   568e2:	e8 49 fb 01 00       	call   strcmp_
   568e7:	85 c0                	test   eax,eax
   568e9:	75 19                	jne    overhead_map_branch_26
   568eb:	c7 05 78 59 02 00 60 01 00 00 	mov    DWORD PTR ds:@obj3:mouse_x,0x160                    ; fixup: num: 13569, src obj: 1, src ofs: 0x568ed, dst obj: 3, dst ofs: 0x25978
   568f5:	c7 05 7c 59 02 00 82 00 00 00 	mov    DWORD PTR ds:@obj3:mouse_y,0x82                     ; fixup: num: 13568, src obj: 1, src ofs: 0x568f7, dst obj: 3, dst ofs: 0x2597c
   568ff:	e9 b2 01 00 00       	jmp    overhead_map_branch_36
overhead_map_branch_26:
   56904:	a1 c4 5a 02 00       	mov    eax,ds:@obj3:current_room                                    ; fixup: num: 13567, src obj: 1, src ofs: 0x56905, dst obj: 3, dst ofs: 0x25ac4
   56909:	ba 55 d2 00 00       	mov    edx,@obj3:map_cpp_variable_27                                ; fixup: num: 13566, src obj: 1, src ofs: 0x5690a, dst obj: 3, dst ofs: 0xd255
   5690e:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
   56911:	e8 1a fb 01 00       	call   strcmp_
   56916:	85 c0                	test   eax,eax
   56918:	75 19                	jne    overhead_map_branch_27
   5691a:	c7 05 78 59 02 00 c2 01 00 00 	mov    DWORD PTR ds:@obj3:mouse_x,0x1c2                    ; fixup: num: 13565, src obj: 1, src ofs: 0x5691c, dst obj: 3, dst ofs: 0x25978
   56924:	c7 05 7c 59 02 00 81 01 00 00 	mov    DWORD PTR ds:@obj3:mouse_y,0x181                    ; fixup: num: 13564, src obj: 1, src ofs: 0x56926, dst obj: 3, dst ofs: 0x2597c
   5692e:	e9 83 01 00 00       	jmp    overhead_map_branch_36
overhead_map_branch_27:
   56933:	a1 c4 5a 02 00       	mov    eax,ds:@obj3:current_room                                    ; fixup: num: 13563, src obj: 1, src ofs: 0x56934, dst obj: 3, dst ofs: 0x25ac4
   56938:	ba 5a d2 00 00       	mov    edx,@obj3:map_cpp_variable_28                                ; fixup: num: 13562, src obj: 1, src ofs: 0x56939, dst obj: 3, dst ofs: 0xd25a
   5693d:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
   56940:	e8 eb fa 01 00       	call   strcmp_
   56945:	85 c0                	test   eax,eax
   56947:	75 19                	jne    overhead_map_branch_28
   56949:	c7 05 78 59 02 00 51 00 00 00 	mov    DWORD PTR ds:@obj3:mouse_x,0x51                     ; fixup: num: 13561, src obj: 1, src ofs: 0x5694b, dst obj: 3, dst ofs: 0x25978
   56953:	c7 05 7c 59 02 00 28 01 00 00 	mov    DWORD PTR ds:@obj3:mouse_y,0x128                    ; fixup: num: 13560, src obj: 1, src ofs: 0x56955, dst obj: 3, dst ofs: 0x2597c
   5695d:	e9 54 01 00 00       	jmp    overhead_map_branch_36
overhead_map_branch_28:
   56962:	a1 c4 5a 02 00       	mov    eax,ds:@obj3:current_room                                    ; fixup: num: 13589, src obj: 1, src ofs: 0x56963, dst obj: 3, dst ofs: 0x25ac4
   56967:	ba 61 d2 00 00       	mov    edx,@obj3:map_cpp_variable_29                                ; fixup: num: 13588, src obj: 1, src ofs: 0x56968, dst obj: 3, dst ofs: 0xd261
   5696c:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
   5696f:	e8 bc fa 01 00       	call   strcmp_
   56974:	85 c0                	test   eax,eax
   56976:	75 19                	jne    overhead_map_branch_29
   56978:	c7 05 78 59 02 00 ea 00 00 00 	mov    DWORD PTR ds:@obj3:mouse_x,0xea                     ; fixup: num: 13587, src obj: 1, src ofs: 0x5697a, dst obj: 3, dst ofs: 0x25978
   56982:	c7 05 7c 59 02 00 60 01 00 00 	mov    DWORD PTR ds:@obj3:mouse_y,0x160                    ; fixup: num: 13586, src obj: 1, src ofs: 0x56984, dst obj: 3, dst ofs: 0x2597c
   5698c:	e9 25 01 00 00       	jmp    overhead_map_branch_36
overhead_map_branch_29:
   56991:	a1 c4 5a 02 00       	mov    eax,ds:@obj3:current_room                                    ; fixup: num: 13585, src obj: 1, src ofs: 0x56992, dst obj: 3, dst ofs: 0x25ac4
   56996:	ba 66 d2 00 00       	mov    edx,@obj3:map_cpp_variable_30                                ; fixup: num: 13584, src obj: 1, src ofs: 0x56997, dst obj: 3, dst ofs: 0xd266
   5699b:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
   5699e:	e8 8d fa 01 00       	call   strcmp_
   569a3:	85 c0                	test   eax,eax
   569a5:	75 19                	jne    overhead_map_branch_30
   569a7:	c7 05 78 59 02 00 c4 01 00 00 	mov    DWORD PTR ds:@obj3:mouse_x,0x1c4                    ; fixup: num: 13583, src obj: 1, src ofs: 0x569a9, dst obj: 3, dst ofs: 0x25978
   569b1:	c7 05 7c 59 02 00 22 01 00 00 	mov    DWORD PTR ds:@obj3:mouse_y,0x122                    ; fixup: num: 13582, src obj: 1, src ofs: 0x569b3, dst obj: 3, dst ofs: 0x2597c
   569bb:	e9 f6 00 00 00       	jmp    overhead_map_branch_36
overhead_map_branch_30:
   569c0:	a1 c4 5a 02 00       	mov    eax,ds:@obj3:current_room                                    ; fixup: num: 13581, src obj: 1, src ofs: 0x569c1, dst obj: 3, dst ofs: 0x25ac4
   569c5:	ba 6d d2 00 00       	mov    edx,@obj3:map_cpp_variable_31                                ; fixup: num: 13580, src obj: 1, src ofs: 0x569c6, dst obj: 3, dst ofs: 0xd26d
   569ca:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
   569cd:	e8 5e fa 01 00       	call   strcmp_
   569d2:	85 c0                	test   eax,eax
   569d4:	75 19                	jne    overhead_map_branch_31
   569d6:	c7 05 78 59 02 00 4a 00 00 00 	mov    DWORD PTR ds:@obj3:mouse_x,0x4a                     ; fixup: num: 13579, src obj: 1, src ofs: 0x569d8, dst obj: 3, dst ofs: 0x25978
   569e0:	c7 05 7c 59 02 00 17 01 00 00 	mov    DWORD PTR ds:@obj3:mouse_y,0x117                    ; fixup: num: 13578, src obj: 1, src ofs: 0x569e2, dst obj: 3, dst ofs: 0x2597c
   569ea:	e9 c7 00 00 00       	jmp    overhead_map_branch_36
overhead_map_branch_31:
   569ef:	a1 c4 5a 02 00       	mov    eax,ds:@obj3:current_room                                    ; fixup: num: 13577, src obj: 1, src ofs: 0x569f0, dst obj: 3, dst ofs: 0x25ac4
   569f4:	ba 74 d2 00 00       	mov    edx,@obj3:map_cpp_variable_32                                ; fixup: num: 13576, src obj: 1, src ofs: 0x569f5, dst obj: 3, dst ofs: 0xd274
   569f9:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
   569fc:	e8 2f fa 01 00       	call   strcmp_
   56a01:	85 c0                	test   eax,eax
   56a03:	75 19                	jne    overhead_map_branch_32
   56a05:	c7 05 78 59 02 00 02 01 00 00 	mov    DWORD PTR ds:@obj3:mouse_x,0x102                    ; fixup: num: 13575, src obj: 1, src ofs: 0x56a07, dst obj: 3, dst ofs: 0x25978
   56a0f:	c7 05 7c 59 02 00 82 01 00 00 	mov    DWORD PTR ds:@obj3:mouse_y,0x182                    ; fixup: num: 13487, src obj: 1, src ofs: 0x56a11, dst obj: 3, dst ofs: 0x2597c
   56a19:	e9 98 00 00 00       	jmp    overhead_map_branch_36
overhead_map_branch_32:
   56a1e:	a1 c4 5a 02 00       	mov    eax,ds:@obj3:current_room                                    ; fixup: num: 13486, src obj: 1, src ofs: 0x56a1f, dst obj: 3, dst ofs: 0x25ac4
   56a23:	ba 79 d2 00 00       	mov    edx,@obj3:map_cpp_variable_33                                ; fixup: num: 13485, src obj: 1, src ofs: 0x56a24, dst obj: 3, dst ofs: 0xd279
   56a28:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
   56a2b:	e8 00 fa 01 00       	call   strcmp_
   56a30:	85 c0                	test   eax,eax
   56a32:	75 16                	jne    overhead_map_branch_33
   56a34:	c7 05 78 59 02 00 41 01 00 00 	mov    DWORD PTR ds:@obj3:mouse_x,0x141                    ; fixup: num: 13484, src obj: 1, src ofs: 0x56a36, dst obj: 3, dst ofs: 0x25978
   56a3e:	c7 05 7c 59 02 00 09 01 00 00 	mov    DWORD PTR ds:@obj3:mouse_y,0x109                    ; fixup: num: 13483, src obj: 1, src ofs: 0x56a40, dst obj: 3, dst ofs: 0x2597c
   56a48:	eb 6c                	jmp    overhead_map_branch_36
overhead_map_branch_33:
   56a4a:	a1 c4 5a 02 00       	mov    eax,ds:@obj3:current_room                                    ; fixup: num: 13482, src obj: 1, src ofs: 0x56a4b, dst obj: 3, dst ofs: 0x25ac4
   56a4f:	ba 7e d2 00 00       	mov    edx,@obj3:map_cpp_variable_34                                ; fixup: num: 13481, src obj: 1, src ofs: 0x56a50, dst obj: 3, dst ofs: 0xd27e
   56a54:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
   56a57:	e8 d4 f9 01 00       	call   strcmp_
   56a5c:	85 c0                	test   eax,eax
   56a5e:	75 16                	jne    overhead_map_branch_34
   56a60:	c7 05 78 59 02 00 b2 00 00 00 	mov    DWORD PTR ds:@obj3:mouse_x,0xb2                     ; fixup: num: 13480, src obj: 1, src ofs: 0x56a62, dst obj: 3, dst ofs: 0x25978
   56a6a:	c7 05 7c 59 02 00 07 01 00 00 	mov    DWORD PTR ds:@obj3:mouse_y,0x107                    ; fixup: num: 13479, src obj: 1, src ofs: 0x56a6c, dst obj: 3, dst ofs: 0x2597c
   56a74:	eb 40                	jmp    overhead_map_branch_36
overhead_map_branch_34:
   56a76:	a1 c4 5a 02 00       	mov    eax,ds:@obj3:current_room                                    ; fixup: num: 13478, src obj: 1, src ofs: 0x56a77, dst obj: 3, dst ofs: 0x25ac4
   56a7b:	ba 83 d2 00 00       	mov    edx,@obj3:map_cpp_variable_35                                ; fixup: num: 13477, src obj: 1, src ofs: 0x56a7c, dst obj: 3, dst ofs: 0xd283
   56a80:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
   56a83:	e8 a8 f9 01 00       	call   strcmp_
   56a88:	85 c0                	test   eax,eax
   56a8a:	75 16                	jne    overhead_map_branch_35
   56a8c:	c7 05 78 59 02 00 ed 01 00 00 	mov    DWORD PTR ds:@obj3:mouse_x,0x1ed                    ; fixup: num: 13476, src obj: 1, src ofs: 0x56a8e, dst obj: 3, dst ofs: 0x25978
   56a96:	c7 05 7c 59 02 00 3a 00 00 00 	mov    DWORD PTR ds:@obj3:mouse_y,0x3a                     ; fixup: num: 13475, src obj: 1, src ofs: 0x56a98, dst obj: 3, dst ofs: 0x2597c
   56aa0:	eb 14                	jmp    overhead_map_branch_36
overhead_map_branch_35:
   56aa2:	c7 05 78 59 02 00 40 01 00 00 	mov    DWORD PTR ds:@obj3:mouse_x,0x140                    ; fixup: num: 13474, src obj: 1, src ofs: 0x56aa4, dst obj: 3, dst ofs: 0x25978
   56aac:	c7 05 7c 59 02 00 f0 00 00 00 	mov    DWORD PTR ds:@obj3:mouse_y,0xf0                     ; fixup: num: 13591, src obj: 1, src ofs: 0x56aae, dst obj: 3, dst ofs: 0x2597c
overhead_map_branch_36:
   56ab6:	a1 78 59 02 00       	mov    eax,ds:@obj3:mouse_x                                         ; fixup: num: 13590, src obj: 1, src ofs: 0x56ab7, dst obj: 3, dst ofs: 0x25978
   56abb:	8b 15 7c 59 02 00    	mov    edx,DWORD PTR ds:@obj3:mouse_y                               ; fixup: num: 13501, src obj: 1, src ofs: 0x56abd, dst obj: 3, dst ofs: 0x2597c
   56ac1:	80 3d 71 59 02 00 00 	cmp    BYTE PTR ds:@obj3:mouse_initialized,0x0                      ; fixup: num: 13500, src obj: 1, src ofs: 0x56ac3, dst obj: 3, dst ofs: 0x25971
   56ac8:	74 21                	je     overhead_map_branch_38
   56aca:	bb 04 00 00 00       	mov    ebx,0x4
   56acf:	66 89 45 06          	mov    WORD PTR [ebp+0x6],ax
   56ad3:	66 89 55 0a          	mov    WORD PTR [ebp+0xa],dx
   56ad7:	8d 55 fe             	lea    edx,[ebp-0x2]
   56ada:	b8 33 00 00 00       	mov    eax,0x33
   56adf:	66 89 5d fe          	mov    WORD PTR [ebp-0x2],bx
   56ae3:	8d 5d fe             	lea    ebx,[ebp-0x2]
overhead_map_branch_37:
   56ae6:	e8 b1 a5 01 00       	call   int386_
overhead_map_branch_38:
   56aeb:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 13499, src obj: 1, src ofs: 0x56aec, dst obj: 3, dst ofs: 0x25a84
   56af0:	ba 89 d2 00 00       	mov    edx,@obj3:map_cpp_variable_36                                ; fixup: num: 13498, src obj: 1, src ofs: 0x56af1, dst obj: 3, dst ofs: 0xd289
   56af5:	e8 a6 71 ff ff       	call   update_mod_84
   56afa:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 13497, src obj: 1, src ofs: 0x56afb, dst obj: 3, dst ofs: 0x1a1d4
   56aff:	e8 bc 54 fb ff       	call   change_music_file
   56b04:	68 cd cc cc 3d       	push   0x3dcccccd
   56b09:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 13496, src obj: 1, src ofs: 0x56b0a, dst obj: 3, dst ofs: 0x1a1d4
   56b0e:	e8 dd 42 fb ff       	call   fade_in
   56b13:	b8 a0 d2 00 00       	mov    eax,@obj3:map_cpp_variable_37                                ; fixup: num: 13495, src obj: 1, src ofs: 0x56b14, dst obj: 3, dst ofs: 0xd2a0
   56b18:	e8 73 5c 01 00       	call   check_script_flag
   56b1d:	84 c0                	test   al,al
   56b1f:	75 14                	jne    overhead_map_branch_39
   56b21:	dd 05 b4 0f 01 00    	fld    QWORD PTR ds:@obj3:pal_gamma                                 ; fixup: num: 13494, src obj: 1, src ofs: 0x56b23, dst obj: 3, dst ofs: 0x10fb4
   56b27:	dc 05 e1 d2 00 00    	fadd   QWORD PTR ds:@obj3:map_cpp_variable_41                       ; fixup: num: 13493, src obj: 1, src ofs: 0x56b29, dst obj: 3, dst ofs: 0xd2e1
   56b2d:	83 ec 08             	sub    esp,0x8
   56b30:	dd 1c 24             	fstp   QWORD PTR [esp]
   56b33:	eb 0d                	jmp    overhead_map_branch_40
overhead_map_branch_39:
   56b35:	8b 3d b8 0f 01 00    	mov    edi,DWORD PTR ds:@obj3:pal_gamma_variable_1                  ; fixup: num: 13492, src obj: 1, src ofs: 0x56b37, dst obj: 3, dst ofs: 0x10fb8
   56b3b:	57                   	push   edi
   56b3c:	a1 b4 0f 01 00       	mov    eax,ds:@obj3:pal_gamma                                       ; fixup: num: 13491, src obj: 1, src ofs: 0x56b3d, dst obj: 3, dst ofs: 0x10fb4
   56b41:	50                   	push   eax
overhead_map_branch_40:
   56b42:	6a 00                	push   0x0
   56b44:	6a 00                	push   0x0
   56b46:	a1 84 60 02 00       	mov    eax,ds:@obj3:palette                                         ; fixup: num: 13490, src obj: 1, src ofs: 0x56b47, dst obj: 3, dst ofs: 0x26084
   56b4b:	e8 e0 ce fb ff       	call   fade
   56b50:	c6 05 7e 60 02 00 01 	mov    BYTE PTR ds:@obj3:faded_in,0x1                               ; fixup: num: 13489, src obj: 1, src ofs: 0x56b52, dst obj: 3, dst ofs: 0x2607e
overhead_map_branch_41:
   56b57:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 13488, src obj: 1, src ofs: 0x56b59, dst obj: 3, dst ofs: 0x25974
   56b5e:	74 08                	je     overhead_map_branch_42
   56b60:	85 f6                	test   esi,esi
   56b62:	0f 85 58 02 00 00    	jne    overhead_map_branch_68
overhead_map_branch_42:
   56b68:	80 3d 57 59 02 00 00 	cmp    BYTE PTR ds:@obj3:ScanCode_variable_5,0x0                    ; fixup: num: 13509, src obj: 1, src ofs: 0x56b6a, dst obj: 3, dst ofs: 0x25957
   56b6f:	75 09                	jne    overhead_map_branch_43
   56b71:	83 3d 78 59 02 00 0a 	cmp    DWORD PTR ds:@obj3:mouse_x,0xa                               ; fixup: num: 13508, src obj: 1, src ofs: 0x56b73, dst obj: 3, dst ofs: 0x25978
   56b78:	7d 27                	jge    overhead_map_branch_45
overhead_map_branch_43:
   56b7a:	8b 7d 76             	mov    edi,DWORD PTR [ebp+0x76]
   56b7d:	83 ff 01             	cmp    edi,0x1
   56b80:	75 0a                	jne    overhead_map_branch_44
   56b82:	31 db                	xor    ebx,ebx
   56b84:	89 5d 6a             	mov    DWORD PTR [ebp+0x6a],ebx
   56b87:	e9 aa 00 00 00       	jmp    overhead_map_branch_54
overhead_map_branch_44:
   56b8c:	83 ff 03             	cmp    edi,0x3
   56b8f:	0f 85 a1 00 00 00    	jne    overhead_map_branch_54
   56b95:	c7 45 6a 02 00 00 00 	mov    DWORD PTR [ebp+0x6a],0x2
   56b9c:	e9 95 00 00 00       	jmp    overhead_map_branch_54
overhead_map_branch_45:
   56ba1:	80 3d 59 59 02 00 00 	cmp    BYTE PTR ds:@obj3:ScanCode_variable_6,0x0                    ; fixup: num: 13507, src obj: 1, src ofs: 0x56ba3, dst obj: 3, dst ofs: 0x25959
   56ba8:	75 0c                	jne    overhead_map_branch_46
   56baa:	81 3d 78 59 02 00 76 02 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x276                    ; fixup: num: 13506, src obj: 1, src ofs: 0x56bac, dst obj: 3, dst ofs: 0x25978
   56bb4:	7e 20                	jle    overhead_map_branch_47
overhead_map_branch_46:
   56bb6:	8b 55 76             	mov    edx,DWORD PTR [ebp+0x76]
   56bb9:	85 d2                	test   edx,edx
   56bbb:	0f 84 6e 00 00 00    	je     overhead_map_branch_53
   56bc1:	83 fa 02             	cmp    edx,0x2
   56bc4:	0f 85 6c 00 00 00    	jne    overhead_map_branch_54
   56bca:	c7 45 6a 03 00 00 00 	mov    DWORD PTR [ebp+0x6a],0x3
   56bd1:	e9 60 00 00 00       	jmp    overhead_map_branch_54
overhead_map_branch_47:
   56bd6:	80 3d 5c 59 02 00 00 	cmp    BYTE PTR ds:@obj3:ScanCode_variable_7,0x0                    ; fixup: num: 13505, src obj: 1, src ofs: 0x56bd8, dst obj: 3, dst ofs: 0x2595c
   56bdd:	75 0c                	jne    overhead_map_branch_48
   56bdf:	81 3d 7c 59 02 00 d6 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x1d6                    ; fixup: num: 13504, src obj: 1, src ofs: 0x56be1, dst obj: 3, dst ofs: 0x2597c
   56be9:	7e 1e                	jle    overhead_map_branch_50
overhead_map_branch_48:
   56beb:	8b 4d 76             	mov    ecx,DWORD PTR [ebp+0x76]
   56bee:	85 c9                	test   ecx,ecx
   56bf0:	75 09                	jne    overhead_map_branch_49
   56bf2:	c7 45 6a 02 00 00 00 	mov    DWORD PTR [ebp+0x6a],0x2
   56bf9:	eb 3b                	jmp    overhead_map_branch_54
overhead_map_branch_49:
   56bfb:	83 f9 01             	cmp    ecx,0x1
   56bfe:	75 36                	jne    overhead_map_branch_54
   56c00:	c7 45 6a 03 00 00 00 	mov    DWORD PTR [ebp+0x6a],0x3
   56c07:	eb 2d                	jmp    overhead_map_branch_54
overhead_map_branch_50:
   56c09:	80 3d 54 59 02 00 00 	cmp    BYTE PTR ds:@obj3:ScanCode_variable_4,0x0                    ; fixup: num: 13503, src obj: 1, src ofs: 0x56c0b, dst obj: 3, dst ofs: 0x25954
   56c10:	75 09                	jne    overhead_map_branch_51
   56c12:	83 3d 7c 59 02 00 0a 	cmp    DWORD PTR ds:@obj3:mouse_y,0xa                               ; fixup: num: 13502, src obj: 1, src ofs: 0x56c14, dst obj: 3, dst ofs: 0x2597c
   56c19:	7d 1b                	jge    overhead_map_branch_54
overhead_map_branch_51:
   56c1b:	8b 7d 76             	mov    edi,DWORD PTR [ebp+0x76]
   56c1e:	83 ff 02             	cmp    edi,0x2
   56c21:	75 07                	jne    overhead_map_branch_52
   56c23:	31 db                	xor    ebx,ebx
   56c25:	89 5d 6a             	mov    DWORD PTR [ebp+0x6a],ebx
   56c28:	eb 0c                	jmp    overhead_map_branch_54
overhead_map_branch_52:
   56c2a:	83 ff 03             	cmp    edi,0x3
   56c2d:	75 07                	jne    overhead_map_branch_54
overhead_map_branch_53:
   56c2f:	c7 45 6a 01 00 00 00 	mov    DWORD PTR [ebp+0x6a],0x1
overhead_map_branch_54:
   56c36:	8b 45 76             	mov    eax,DWORD PTR [ebp+0x76]
   56c39:	8b 4d 6a             	mov    ecx,DWORD PTR [ebp+0x6a]
   56c3c:	39 c8                	cmp    eax,ecx
   56c3e:	74 69                	je     overhead_map_branch_55
   56c40:	8b 54 85 52          	mov    edx,DWORD PTR [ebp+eax*4+0x52]
   56c44:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 13518, src obj: 1, src ofs: 0x56c45, dst obj: 3, dst ofs: 0x25a88
   56c49:	be 40 01 00 00       	mov    esi,0x140
   56c4e:	e8 9d 5a ff ff       	call   remove_bitmap
   56c53:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 13517, src obj: 1, src ofs: 0x56c54, dst obj: 3, dst ofs: 0x25a88
   56c58:	8b 54 8d 52          	mov    edx,DWORD PTR [ebp+ecx*4+0x52]
   56c5c:	89 4d 76             	mov    DWORD PTR [ebp+0x76],ecx
   56c5f:	e8 cc 54 ff ff       	call   insert_bitmap
   56c64:	89 35 78 59 02 00    	mov    DWORD PTR ds:@obj3:mouse_x,esi                               ; fixup: num: 13516, src obj: 1, src ofs: 0x56c66, dst obj: 3, dst ofs: 0x25978
   56c6a:	c7 05 7c 59 02 00 f0 00 00 00 	mov    DWORD PTR ds:@obj3:mouse_y,0xf0                     ; fixup: num: 13515, src obj: 1, src ofs: 0x56c6c, dst obj: 3, dst ofs: 0x2597c
   56c74:	8b 15 78 59 02 00    	mov    edx,DWORD PTR ds:@obj3:mouse_x                               ; fixup: num: 13514, src obj: 1, src ofs: 0x56c76, dst obj: 3, dst ofs: 0x25978
   56c7a:	a1 7c 59 02 00       	mov    eax,ds:@obj3:mouse_y                                         ; fixup: num: 13513, src obj: 1, src ofs: 0x56c7b, dst obj: 3, dst ofs: 0x2597c
   56c7f:	80 3d 71 59 02 00 00 	cmp    BYTE PTR ds:@obj3:mouse_initialized,0x0                      ; fixup: num: 13512, src obj: 1, src ofs: 0x56c81, dst obj: 3, dst ofs: 0x25971
   56c86:	74 21                	je     overhead_map_branch_55
   56c88:	be 04 00 00 00       	mov    esi,0x4
   56c8d:	8d 5d 36             	lea    ebx,[ebp+0x36]
   56c90:	66 89 55 3e          	mov    WORD PTR [ebp+0x3e],dx
   56c94:	66 89 45 42          	mov    WORD PTR [ebp+0x42],ax
   56c98:	8d 55 36             	lea    edx,[ebp+0x36]
   56c9b:	b8 33 00 00 00       	mov    eax,0x33
   56ca0:	66 89 75 36          	mov    WORD PTR [ebp+0x36],si
   56ca4:	e8 f3 a3 01 00       	call   int386_
overhead_map_branch_55:
   56ca9:	8b 35 b0 5a 02 00    	mov    esi,DWORD PTR ds:@obj3:map_location_list                     ; fixup: num: 13511, src obj: 1, src ofs: 0x56cab, dst obj: 3, dst ofs: 0x25ab0
   56caf:	85 f6                	test   esi,esi
   56cb1:	0f 84 d0 00 00 00    	je     overhead_map_branch_65
overhead_map_branch_56:
   56cb7:	8b 55 76             	mov    edx,DWORD PTR [ebp+0x76]
   56cba:	3b 56 10             	cmp    edx,DWORD PTR [esi+0x10]
   56cbd:	0f 85 b9 00 00 00    	jne    overhead_map_branch_64
   56cc3:	a1 7c 59 02 00       	mov    eax,ds:@obj3:mouse_y                                         ; fixup: num: 13510, src obj: 1, src ofs: 0x56cc4, dst obj: 3, dst ofs: 0x2597c
   56cc8:	83 c0 05             	add    eax,0x5
   56ccb:	89 45 6e             	mov    DWORD PTR [ebp+0x6e],eax
   56cce:	8b 0d 78 59 02 00    	mov    ecx,DWORD PTR ds:@obj3:mouse_x                               ; fixup: num: 13523, src obj: 1, src ofs: 0x56cd0, dst obj: 3, dst ofs: 0x25978
   56cd4:	83 c1 05             	add    ecx,0x5
   56cd7:	8b 06                	mov    eax,DWORD PTR [esi]
   56cd9:	8b 5e 04             	mov    ebx,DWORD PTR [esi+0x4]
   56cdc:	89 45 62             	mov    DWORD PTR [ebp+0x62],eax
   56cdf:	8b 46 0c             	mov    eax,DWORD PTR [esi+0xc]
   56ce2:	8b 56 08             	mov    edx,DWORD PTR [esi+0x8]
   56ce5:	89 45 72             	mov    DWORD PTR [ebp+0x72],eax
   56ce8:	a1 78 59 02 00       	mov    eax,ds:@obj3:mouse_x                                         ; fixup: num: 13522, src obj: 1, src ofs: 0x56ce9, dst obj: 3, dst ofs: 0x25978
   56ced:	8b 3d 7c 59 02 00    	mov    edi,DWORD PTR ds:@obj3:mouse_y                               ; fixup: num: 13521, src obj: 1, src ofs: 0x56cef, dst obj: 3, dst ofs: 0x2597c
   56cf3:	39 c2                	cmp    edx,eax
   56cf5:	7d 04                	jge    overhead_map_branch_57
   56cf7:	30 c0                	xor    al,al
   56cf9:	eb 1d                	jmp    overhead_map_branch_61
overhead_map_branch_57:
   56cfb:	3b 4d 62             	cmp    ecx,DWORD PTR [ebp+0x62]
   56cfe:	7d 04                	jge    overhead_map_branch_58
   56d00:	30 c0                	xor    al,al
   56d02:	eb 14                	jmp    overhead_map_branch_61
overhead_map_branch_58:
   56d04:	3b 7d 72             	cmp    edi,DWORD PTR [ebp+0x72]
   56d07:	7e 04                	jle    overhead_map_branch_59
   56d09:	30 c0                	xor    al,al
   56d0b:	eb 0b                	jmp    overhead_map_branch_61
overhead_map_branch_59:
   56d0d:	3b 5d 6e             	cmp    ebx,DWORD PTR [ebp+0x6e]
   56d10:	7e 04                	jle    overhead_map_branch_60
   56d12:	30 c0                	xor    al,al
   56d14:	eb 02                	jmp    overhead_map_branch_61
overhead_map_branch_60:
   56d16:	b0 01                	mov    al,0x1
overhead_map_branch_61:
   56d18:	84 c0                	test   al,al
   56d1a:	74 60                	je     overhead_map_branch_64
   56d1c:	8b 7d 66             	mov    edi,DWORD PTR [ebp+0x66]
   56d1f:	85 ff                	test   edi,edi
   56d21:	74 21                	je     overhead_map_branch_62
   56d23:	8b 45 7e             	mov    eax,DWORD PTR [ebp+0x7e]
   56d26:	8b 56 1c             	mov    edx,DWORD PTR [esi+0x1c]
   56d29:	e8 02 f7 01 00       	call   strcmp_
   56d2e:	85 c0                	test   eax,eax
   56d30:	74 55                	je     overhead_map_branch_65
   56d32:	85 ff                	test   edi,edi
   56d34:	74 0e                	je     overhead_map_branch_62
   56d36:	89 f8                	mov    eax,edi
   56d38:	31 d2                	xor    edx,edx
   56d3a:	e8 e1 31 ff ff       	call   W?$dt:TEXTBM$n()_
   56d3f:	e8 34 b3 01 00       	call   W?$dln(pnv)v
overhead_map_branch_62:
   56d44:	b8 50 00 00 00       	mov    eax,0x50
   56d49:	e8 ca b1 01 00       	call   W?$nwn(ui)pnv
   56d4e:	85 c0                	test   eax,eax
   56d50:	74 1f                	je     overhead_map_branch_63
   56d52:	6a 00                	push   0x0
   56d54:	6a 28                	push   0x28
   56d56:	8b 56 18             	mov    edx,DWORD PTR [esi+0x18]
   56d59:	52                   	push   edx
   56d5a:	8b 5e 14             	mov    ebx,DWORD PTR [esi+0x14]
   56d5d:	b9 a9 d2 00 00       	mov    ecx,@obj3:map_cpp_variable_38                                ; fixup: num: 13520, src obj: 1, src ofs: 0x56d5e, dst obj: 3, dst ofs: 0xd2a9
   56d62:	53                   	push   ebx
   56d63:	8b 56 1c             	mov    edx,DWORD PTR [esi+0x1c]
   56d66:	8b 1d c4 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:textfont                              ; fixup: num: 13519, src obj: 1, src ofs: 0x56d68, dst obj: 3, dst ofs: 0x25bc4
   56d6c:	e8 8f 2e ff ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
overhead_map_branch_63:
   56d71:	89 45 66             	mov    DWORD PTR [ebp+0x66],eax
   56d74:	8b 46 1c             	mov    eax,DWORD PTR [esi+0x1c]
   56d77:	89 45 7e             	mov    DWORD PTR [ebp+0x7e],eax
   56d7a:	eb 0b                	jmp    overhead_map_branch_65
overhead_map_branch_64:
   56d7c:	8b 76 24             	mov    esi,DWORD PTR [esi+0x24]
   56d7f:	85 f6                	test   esi,esi
   56d81:	0f 85 30 ff ff ff    	jne    overhead_map_branch_56
overhead_map_branch_65:
   56d87:	85 f6                	test   esi,esi
   56d89:	75 1c                	jne    overhead_map_branch_67
   56d8b:	8b 4d 66             	mov    ecx,DWORD PTR [ebp+0x66]
   56d8e:	85 c9                	test   ecx,ecx
   56d90:	74 15                	je     overhead_map_branch_67
   56d92:	74 0e                	je     overhead_map_branch_66
   56d94:	89 c8                	mov    eax,ecx
   56d96:	31 d2                	xor    edx,edx
   56d98:	e8 83 31 ff ff       	call   W?$dt:TEXTBM$n()_
   56d9d:	e8 d6 b2 01 00       	call   W?$dln(pnv)v
overhead_map_branch_66:
   56da2:	31 c0                	xor    eax,eax
   56da4:	89 45 66             	mov    DWORD PTR [ebp+0x66],eax
overhead_map_branch_67:
   56da7:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 13530, src obj: 1, src ofs: 0x56da8, dst obj: 3, dst ofs: 0x25a84
   56dac:	e8 ef 6e ff ff       	call   update_mod_84
   56db1:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 13529, src obj: 1, src ofs: 0x56db2, dst obj: 3, dst ofs: 0x1a1d4
   56db6:	e8 e5 4b fb ff       	call   update_mod_9
   56dbb:	e9 97 fd ff ff       	jmp    overhead_map_branch_41
overhead_map_branch_68:
   56dc0:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 13528, src obj: 1, src ofs: 0x56dc2, dst obj: 3, dst ofs: 0x25974
   56dc7:	75 f7                	jne    overhead_map_branch_68
   56dc9:	8b 1d 98 5a 02 00    	mov    ebx,DWORD PTR ds:@obj3:entrance_list                         ; fixup: num: 13527, src obj: 1, src ofs: 0x56dcb, dst obj: 3, dst ofs: 0x25a98
   56dcf:	85 db                	test   ebx,ebx
   56dd1:	74 16                	je     overhead_map_branch_70
overhead_map_branch_69:
   56dd3:	8b 56 20             	mov    edx,DWORD PTR [esi+0x20]
   56dd6:	8b 43 14             	mov    eax,DWORD PTR [ebx+0x14]
   56dd9:	e8 52 f6 01 00       	call   strcmp_
   56dde:	85 c0                	test   eax,eax
   56de0:	74 07                	je     overhead_map_branch_70
   56de2:	8b 5b 18             	mov    ebx,DWORD PTR [ebx+0x18]
   56de5:	85 db                	test   ebx,ebx
   56de7:	75 ea                	jne    overhead_map_branch_69
overhead_map_branch_70:
   56de9:	85 db                	test   ebx,ebx
   56deb:	75 25                	jne    overhead_map_branch_71
   56ded:	8b 56 20             	mov    edx,DWORD PTR [esi+0x20]
   56df0:	52                   	push   edx
   56df1:	68 b2 d2 00 00       	push   @obj3:map_cpp_variable_39                                    ; fixup: num: 13526, src obj: 1, src ofs: 0x56df2, dst obj: 3, dst ofs: 0xd2b2
   56df6:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 13525, src obj: 1, src ofs: 0x56df7, dst obj: 3, dst ofs: 0x237fc
   56dfb:	e8 e1 9d 01 00       	call   sprintf_
   56e00:	83 c4 0c             	add    esp,0xc
   56e03:	b8 07 00 00 00       	mov    eax,0x7
   56e08:	e8 7f fe 01 00       	call   putch_
   56e0d:	e9 45 fd ff ff       	jmp    overhead_map_branch_41
overhead_map_branch_71:
   56e12:	8b 55 76             	mov    edx,DWORD PTR [ebp+0x76]
   56e15:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 13524, src obj: 1, src ofs: 0x56e16, dst obj: 3, dst ofs: 0x25a88
   56e1a:	8b 54 95 52          	mov    edx,DWORD PTR [ebp+edx*4+0x52]
   56e1e:	31 c9                	xor    ecx,ecx
   56e20:	e8 cb 58 ff ff       	call   remove_bitmap
   56e25:	31 f6                	xor    esi,esi
   56e27:	eb 0c                	jmp    overhead_map_branch_73
overhead_map_branch_72:
   56e29:	83 c1 04             	add    ecx,0x4
   56e2c:	89 74 29 4e          	mov    DWORD PTR [ecx+ebp*1+0x4e],esi
   56e30:	83 f9 10             	cmp    ecx,0x10
   56e33:	74 16                	je     overhead_map_branch_74
overhead_map_branch_73:
   56e35:	8b 44 29 52          	mov    eax,DWORD PTR [ecx+ebp*1+0x52]
   56e39:	85 c0                	test   eax,eax
   56e3b:	74 ec                	je     overhead_map_branch_72
   56e3d:	89 f2                	mov    edx,esi
   56e3f:	e8 5c 45 fe ff       	call   W?$dt:BTMAP$n()_
   56e44:	e8 2f b2 01 00       	call   W?$dln(pnv)v
   56e49:	eb de                	jmp    overhead_map_branch_72
overhead_map_branch_74:
   56e4b:	8b 4b 14             	mov    ecx,DWORD PTR [ebx+0x14]
   56e4e:	51                   	push   ecx
   56e4f:	68 ca d2 00 00       	push   @obj3:map_cpp_variable_40                                    ; fixup: num: 13448, src obj: 1, src ofs: 0x56e50, dst obj: 3, dst ofs: 0xd2ca
   56e54:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 13447, src obj: 1, src ofs: 0x56e55, dst obj: 3, dst ofs: 0x237fc
   56e59:	e8 83 9d 01 00       	call   sprintf_
   56e5e:	83 c4 0c             	add    esp,0xc
   56e61:	89 d8                	mov    eax,ebx
   56e63:	8d a5 82 00 00 00    	lea    esp,[ebp+0x82]
   56e69:	5d                   	pop    ebp
   56e6a:	5f                   	pop    edi
   56e6b:	5e                   	pop    esi
   56e6c:	5a                   	pop    edx
   56e6d:	59                   	pop    ecx
   56e6e:	5b                   	pop    ebx
   56e6f:	c3                   	ret    

;-------------------------------------------------
;  Function 'set_mouse_to_entrance'              -
;-------------------------------------------------
set_mouse_to_entrance:
   56e70:	53                   	push   ebx
   56e71:	51                   	push   ecx
   56e72:	52                   	push   edx
   56e73:	83 ec 38             	sub    esp,0x38
   56e76:	a1 c4 5a 02 00       	mov    eax,ds:@obj3:current_room                                    ; fixup: num: 13446, src obj: 1, src ofs: 0x56e77, dst obj: 3, dst ofs: 0x25ac4
   56e7b:	8b 50 2c             	mov    edx,DWORD PTR [eax+0x2c]
   56e7e:	85 d2                	test   edx,edx
   56e80:	75 52                	jne    set_mouse_to_entrance_branch_1
   56e82:	c7 05 78 59 02 00 40 01 00 00 	mov    DWORD PTR ds:@obj3:mouse_x,0x140                    ; fixup: num: 13445, src obj: 1, src ofs: 0x56e84, dst obj: 3, dst ofs: 0x25978
   56e8c:	c7 05 7c 59 02 00 f0 00 00 00 	mov    DWORD PTR ds:@obj3:mouse_y,0xf0                     ; fixup: num: 13444, src obj: 1, src ofs: 0x56e8e, dst obj: 3, dst ofs: 0x2597c
   56e96:	8b 15 78 59 02 00    	mov    edx,DWORD PTR ds:@obj3:mouse_x                               ; fixup: num: 13443, src obj: 1, src ofs: 0x56e98, dst obj: 3, dst ofs: 0x25978
   56e9c:	a1 7c 59 02 00       	mov    eax,ds:@obj3:mouse_y                                         ; fixup: num: 13442, src obj: 1, src ofs: 0x56e9d, dst obj: 3, dst ofs: 0x2597c
   56ea1:	80 3d 71 59 02 00 00 	cmp    BYTE PTR ds:@obj3:mouse_initialized,0x0                      ; fixup: num: 13531, src obj: 1, src ofs: 0x56ea3, dst obj: 3, dst ofs: 0x25971
   56ea8:	0f 84 dd 03 00 00    	je     set_mouse_to_entrance_branch_23
   56eae:	b9 04 00 00 00       	mov    ecx,0x4
   56eb3:	8d 5c 24 1c          	lea    ebx,[esp+0x1c]
   56eb7:	66 89 54 24 24       	mov    WORD PTR [esp+0x24],dx
   56ebc:	66 89 44 24 28       	mov    WORD PTR [esp+0x28],ax
   56ec1:	8d 54 24 1c          	lea    edx,[esp+0x1c]
   56ec5:	b8 33 00 00 00       	mov    eax,0x33
   56eca:	66 89 4c 24 1c       	mov    WORD PTR [esp+0x1c],cx
   56ecf:	e9 b2 03 00 00       	jmp    set_mouse_to_entrance_branch_22
set_mouse_to_entrance_branch_1:
   56ed4:	89 d0                	mov    eax,edx
   56ed6:	ba 05 d2 00 00       	mov    edx,@obj3:map_cpp_variable_17                                ; fixup: num: 13462, src obj: 1, src ofs: 0x56ed7, dst obj: 3, dst ofs: 0xd205
   56edb:	e8 50 f5 01 00       	call   strcmp_
   56ee0:	85 c0                	test   eax,eax
   56ee2:	75 19                	jne    set_mouse_to_entrance_branch_2
   56ee4:	c7 05 78 59 02 00 b2 01 00 00 	mov    DWORD PTR ds:@obj3:mouse_x,0x1b2                    ; fixup: num: 13461, src obj: 1, src ofs: 0x56ee6, dst obj: 3, dst ofs: 0x25978
   56eee:	c7 05 7c 59 02 00 63 00 00 00 	mov    DWORD PTR ds:@obj3:mouse_y,0x63                     ; fixup: num: 13460, src obj: 1, src ofs: 0x56ef0, dst obj: 3, dst ofs: 0x2597c
   56ef8:	e9 59 03 00 00       	jmp    set_mouse_to_entrance_branch_21
set_mouse_to_entrance_branch_2:
   56efd:	a1 c4 5a 02 00       	mov    eax,ds:@obj3:current_room                                    ; fixup: num: 13459, src obj: 1, src ofs: 0x56efe, dst obj: 3, dst ofs: 0x25ac4
   56f02:	ba 0d d2 00 00       	mov    edx,@obj3:map_cpp_variable_18                                ; fixup: num: 13458, src obj: 1, src ofs: 0x56f03, dst obj: 3, dst ofs: 0xd20d
   56f07:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
   56f0a:	e8 21 f5 01 00       	call   strcmp_
   56f0f:	85 c0                	test   eax,eax
   56f11:	75 19                	jne    set_mouse_to_entrance_branch_3
   56f13:	c7 05 78 59 02 00 fd 00 00 00 	mov    DWORD PTR ds:@obj3:mouse_x,0xfd                     ; fixup: num: 13457, src obj: 1, src ofs: 0x56f15, dst obj: 3, dst ofs: 0x25978
   56f1d:	c7 05 7c 59 02 00 4a 00 00 00 	mov    DWORD PTR ds:@obj3:mouse_y,0x4a                     ; fixup: num: 13456, src obj: 1, src ofs: 0x56f1f, dst obj: 3, dst ofs: 0x2597c
   56f27:	e9 2a 03 00 00       	jmp    set_mouse_to_entrance_branch_21
set_mouse_to_entrance_branch_3:
   56f2c:	a1 c4 5a 02 00       	mov    eax,ds:@obj3:current_room                                    ; fixup: num: 13455, src obj: 1, src ofs: 0x56f2d, dst obj: 3, dst ofs: 0x25ac4
   56f31:	ba 17 d2 00 00       	mov    edx,@obj3:map_cpp_variable_19                                ; fixup: num: 13454, src obj: 1, src ofs: 0x56f32, dst obj: 3, dst ofs: 0xd217
   56f36:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
   56f39:	e8 f2 f4 01 00       	call   strcmp_
   56f3e:	85 c0                	test   eax,eax
   56f40:	75 19                	jne    set_mouse_to_entrance_branch_4
   56f42:	c7 05 78 59 02 00 e9 00 00 00 	mov    DWORD PTR ds:@obj3:mouse_x,0xe9                     ; fixup: num: 13453, src obj: 1, src ofs: 0x56f44, dst obj: 3, dst ofs: 0x25978
   56f4c:	c7 05 7c 59 02 00 cd 00 00 00 	mov    DWORD PTR ds:@obj3:mouse_y,0xcd                     ; fixup: num: 13452, src obj: 1, src ofs: 0x56f4e, dst obj: 3, dst ofs: 0x2597c
   56f56:	e9 fb 02 00 00       	jmp    set_mouse_to_entrance_branch_21
set_mouse_to_entrance_branch_4:
   56f5b:	a1 c4 5a 02 00       	mov    eax,ds:@obj3:current_room                                    ; fixup: num: 13451, src obj: 1, src ofs: 0x56f5c, dst obj: 3, dst ofs: 0x25ac4
   56f60:	ba 1c d2 00 00       	mov    edx,@obj3:map_cpp_variable_20                                ; fixup: num: 13450, src obj: 1, src ofs: 0x56f61, dst obj: 3, dst ofs: 0xd21c
   56f65:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
   56f68:	e8 c3 f4 01 00       	call   strcmp_
   56f6d:	85 c0                	test   eax,eax
   56f6f:	75 19                	jne    set_mouse_to_entrance_branch_5
   56f71:	c7 05 78 59 02 00 5c 00 00 00 	mov    DWORD PTR ds:@obj3:mouse_x,0x5c                     ; fixup: num: 13449, src obj: 1, src ofs: 0x56f73, dst obj: 3, dst ofs: 0x25978
   56f7b:	c7 05 7c 59 02 00 c4 00 00 00 	mov    DWORD PTR ds:@obj3:mouse_y,0xc4                     ; fixup: num: 13473, src obj: 1, src ofs: 0x56f7d, dst obj: 3, dst ofs: 0x2597c
   56f85:	e9 cc 02 00 00       	jmp    set_mouse_to_entrance_branch_21
set_mouse_to_entrance_branch_5:
   56f8a:	a1 c4 5a 02 00       	mov    eax,ds:@obj3:current_room                                    ; fixup: num: 13472, src obj: 1, src ofs: 0x56f8b, dst obj: 3, dst ofs: 0x25ac4
   56f8f:	ba 25 d2 00 00       	mov    edx,@obj3:map_cpp_variable_21                                ; fixup: num: 13471, src obj: 1, src ofs: 0x56f90, dst obj: 3, dst ofs: 0xd225
   56f94:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
   56f97:	e8 94 f4 01 00       	call   strcmp_
   56f9c:	85 c0                	test   eax,eax
   56f9e:	75 19                	jne    set_mouse_to_entrance_branch_6
   56fa0:	c7 05 78 59 02 00 b0 01 00 00 	mov    DWORD PTR ds:@obj3:mouse_x,0x1b0                    ; fixup: num: 13470, src obj: 1, src ofs: 0x56fa2, dst obj: 3, dst ofs: 0x25978
   56faa:	c7 05 7c 59 02 00 73 01 00 00 	mov    DWORD PTR ds:@obj3:mouse_y,0x173                    ; fixup: num: 13469, src obj: 1, src ofs: 0x56fac, dst obj: 3, dst ofs: 0x2597c
   56fb4:	e9 9d 02 00 00       	jmp    set_mouse_to_entrance_branch_21
set_mouse_to_entrance_branch_6:
   56fb9:	a1 c4 5a 02 00       	mov    eax,ds:@obj3:current_room                                    ; fixup: num: 13468, src obj: 1, src ofs: 0x56fba, dst obj: 3, dst ofs: 0x25ac4
   56fbe:	ba 30 d2 00 00       	mov    edx,@obj3:map_cpp_variable_22                                ; fixup: num: 13467, src obj: 1, src ofs: 0x56fbf, dst obj: 3, dst ofs: 0xd230
   56fc3:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
   56fc6:	e8 65 f4 01 00       	call   strcmp_
   56fcb:	85 c0                	test   eax,eax
   56fcd:	75 19                	jne    set_mouse_to_entrance_branch_7
   56fcf:	c7 05 78 59 02 00 d3 00 00 00 	mov    DWORD PTR ds:@obj3:mouse_x,0xd3                     ; fixup: num: 13466, src obj: 1, src ofs: 0x56fd1, dst obj: 3, dst ofs: 0x25978
   56fd9:	c7 05 7c 59 02 00 5f 01 00 00 	mov    DWORD PTR ds:@obj3:mouse_y,0x15f                    ; fixup: num: 13465, src obj: 1, src ofs: 0x56fdb, dst obj: 3, dst ofs: 0x2597c
   56fe3:	e9 6e 02 00 00       	jmp    set_mouse_to_entrance_branch_21
set_mouse_to_entrance_branch_7:
   56fe8:	a1 c4 5a 02 00       	mov    eax,ds:@obj3:current_room                                    ; fixup: num: 13464, src obj: 1, src ofs: 0x56fe9, dst obj: 3, dst ofs: 0x25ac4
   56fed:	ba 35 d2 00 00       	mov    edx,@obj3:map_cpp_variable_23                                ; fixup: num: 13463, src obj: 1, src ofs: 0x56fee, dst obj: 3, dst ofs: 0xd235
   56ff2:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
   56ff5:	e8 36 f4 01 00       	call   strcmp_
   56ffa:	85 c0                	test   eax,eax
   56ffc:	75 19                	jne    set_mouse_to_entrance_branch_8
   56ffe:	c7 05 78 59 02 00 0c 01 00 00 	mov    DWORD PTR ds:@obj3:mouse_x,0x10c                    ; fixup: num: 13891, src obj: 1, src ofs: 0x57000, dst obj: 3, dst ofs: 0x25978
   57008:	c7 05 7c 59 02 00 9e 01 00 00 	mov    DWORD PTR ds:@obj3:mouse_y,0x19e                    ; fixup: num: 13890, src obj: 1, src ofs: 0x5700a, dst obj: 3, dst ofs: 0x2597c
   57012:	e9 3f 02 00 00       	jmp    set_mouse_to_entrance_branch_21
set_mouse_to_entrance_branch_8:
   57017:	a1 c4 5a 02 00       	mov    eax,ds:@obj3:current_room                                    ; fixup: num: 13889, src obj: 1, src ofs: 0x57018, dst obj: 3, dst ofs: 0x25ac4
   5701c:	ba 39 d2 00 00       	mov    edx,@obj3:map_cpp_variable_24                                ; fixup: num: 13888, src obj: 1, src ofs: 0x5701d, dst obj: 3, dst ofs: 0xd239
   57021:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
   57024:	e8 07 f4 01 00       	call   strcmp_
   57029:	85 c0                	test   eax,eax
   5702b:	75 19                	jne    set_mouse_to_entrance_branch_9
   5702d:	c7 05 78 59 02 00 4c 00 00 00 	mov    DWORD PTR ds:@obj3:mouse_x,0x4c                     ; fixup: num: 13906, src obj: 1, src ofs: 0x5702f, dst obj: 3, dst ofs: 0x25978
   57037:	c7 05 7c 59 02 00 7c 00 00 00 	mov    DWORD PTR ds:@obj3:mouse_y,0x7c                     ; fixup: num: 13905, src obj: 1, src ofs: 0x57039, dst obj: 3, dst ofs: 0x2597c
   57041:	e9 10 02 00 00       	jmp    set_mouse_to_entrance_branch_21
set_mouse_to_entrance_branch_9:
   57046:	a1 c4 5a 02 00       	mov    eax,ds:@obj3:current_room                                    ; fixup: num: 13904, src obj: 1, src ofs: 0x57047, dst obj: 3, dst ofs: 0x25ac4
   5704b:	ba 41 d2 00 00       	mov    edx,@obj3:map_cpp_variable_25                                ; fixup: num: 13903, src obj: 1, src ofs: 0x5704c, dst obj: 3, dst ofs: 0xd241
   57050:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
   57053:	e8 d8 f3 01 00       	call   strcmp_
   57058:	85 c0                	test   eax,eax
   5705a:	75 19                	jne    set_mouse_to_entrance_branch_10
   5705c:	c7 05 78 59 02 00 d0 00 00 00 	mov    DWORD PTR ds:@obj3:mouse_x,0xd0                     ; fixup: num: 13902, src obj: 1, src ofs: 0x5705e, dst obj: 3, dst ofs: 0x25978
   57066:	c7 05 7c 59 02 00 9d 00 00 00 	mov    DWORD PTR ds:@obj3:mouse_y,0x9d                     ; fixup: num: 13901, src obj: 1, src ofs: 0x57068, dst obj: 3, dst ofs: 0x2597c
   57070:	e9 e1 01 00 00       	jmp    set_mouse_to_entrance_branch_21
set_mouse_to_entrance_branch_10:
   57075:	a1 c4 5a 02 00       	mov    eax,ds:@obj3:current_room                                    ; fixup: num: 13900, src obj: 1, src ofs: 0x57076, dst obj: 3, dst ofs: 0x25ac4
   5707a:	ba 4c d2 00 00       	mov    edx,@obj3:map_cpp_variable_26                                ; fixup: num: 13899, src obj: 1, src ofs: 0x5707b, dst obj: 3, dst ofs: 0xd24c
   5707f:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
   57082:	e8 a9 f3 01 00       	call   strcmp_
   57087:	85 c0                	test   eax,eax
   57089:	75 19                	jne    set_mouse_to_entrance_branch_11
   5708b:	c7 05 78 59 02 00 60 01 00 00 	mov    DWORD PTR ds:@obj3:mouse_x,0x160                    ; fixup: num: 13898, src obj: 1, src ofs: 0x5708d, dst obj: 3, dst ofs: 0x25978
   57095:	c7 05 7c 59 02 00 82 00 00 00 	mov    DWORD PTR ds:@obj3:mouse_y,0x82                     ; fixup: num: 13897, src obj: 1, src ofs: 0x57097, dst obj: 3, dst ofs: 0x2597c
   5709f:	e9 b2 01 00 00       	jmp    set_mouse_to_entrance_branch_21
set_mouse_to_entrance_branch_11:
   570a4:	a1 c4 5a 02 00       	mov    eax,ds:@obj3:current_room                                    ; fixup: num: 13896, src obj: 1, src ofs: 0x570a5, dst obj: 3, dst ofs: 0x25ac4
   570a9:	ba 55 d2 00 00       	mov    edx,@obj3:map_cpp_variable_27                                ; fixup: num: 13895, src obj: 1, src ofs: 0x570aa, dst obj: 3, dst ofs: 0xd255
   570ae:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
   570b1:	e8 7a f3 01 00       	call   strcmp_
   570b6:	85 c0                	test   eax,eax
   570b8:	75 19                	jne    set_mouse_to_entrance_branch_12
   570ba:	c7 05 78 59 02 00 c2 01 00 00 	mov    DWORD PTR ds:@obj3:mouse_x,0x1c2                    ; fixup: num: 13894, src obj: 1, src ofs: 0x570bc, dst obj: 3, dst ofs: 0x25978
   570c4:	c7 05 7c 59 02 00 81 01 00 00 	mov    DWORD PTR ds:@obj3:mouse_y,0x181                    ; fixup: num: 13893, src obj: 1, src ofs: 0x570c6, dst obj: 3, dst ofs: 0x2597c
   570ce:	e9 83 01 00 00       	jmp    set_mouse_to_entrance_branch_21
set_mouse_to_entrance_branch_12:
   570d3:	a1 c4 5a 02 00       	mov    eax,ds:@obj3:current_room                                    ; fixup: num: 13892, src obj: 1, src ofs: 0x570d4, dst obj: 3, dst ofs: 0x25ac4
   570d8:	ba 5a d2 00 00       	mov    edx,@obj3:map_cpp_variable_28                                ; fixup: num: 13921, src obj: 1, src ofs: 0x570d9, dst obj: 3, dst ofs: 0xd25a
   570dd:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
   570e0:	e8 4b f3 01 00       	call   strcmp_
   570e5:	85 c0                	test   eax,eax
   570e7:	75 19                	jne    set_mouse_to_entrance_branch_13
   570e9:	c7 05 78 59 02 00 51 00 00 00 	mov    DWORD PTR ds:@obj3:mouse_x,0x51                     ; fixup: num: 13920, src obj: 1, src ofs: 0x570eb, dst obj: 3, dst ofs: 0x25978
   570f3:	c7 05 7c 59 02 00 28 01 00 00 	mov    DWORD PTR ds:@obj3:mouse_y,0x128                    ; fixup: num: 13919, src obj: 1, src ofs: 0x570f5, dst obj: 3, dst ofs: 0x2597c
   570fd:	e9 54 01 00 00       	jmp    set_mouse_to_entrance_branch_21
set_mouse_to_entrance_branch_13:
   57102:	a1 c4 5a 02 00       	mov    eax,ds:@obj3:current_room                                    ; fixup: num: 13918, src obj: 1, src ofs: 0x57103, dst obj: 3, dst ofs: 0x25ac4
   57107:	ba 61 d2 00 00       	mov    edx,@obj3:map_cpp_variable_29                                ; fixup: num: 13917, src obj: 1, src ofs: 0x57108, dst obj: 3, dst ofs: 0xd261
   5710c:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
   5710f:	e8 1c f3 01 00       	call   strcmp_
   57114:	85 c0                	test   eax,eax
   57116:	75 19                	jne    set_mouse_to_entrance_branch_14
   57118:	c7 05 78 59 02 00 ea 00 00 00 	mov    DWORD PTR ds:@obj3:mouse_x,0xea                     ; fixup: num: 13916, src obj: 1, src ofs: 0x5711a, dst obj: 3, dst ofs: 0x25978
   57122:	c7 05 7c 59 02 00 60 01 00 00 	mov    DWORD PTR ds:@obj3:mouse_y,0x160                    ; fixup: num: 13915, src obj: 1, src ofs: 0x57124, dst obj: 3, dst ofs: 0x2597c
   5712c:	e9 25 01 00 00       	jmp    set_mouse_to_entrance_branch_21
set_mouse_to_entrance_branch_14:
   57131:	a1 c4 5a 02 00       	mov    eax,ds:@obj3:current_room                                    ; fixup: num: 13914, src obj: 1, src ofs: 0x57132, dst obj: 3, dst ofs: 0x25ac4
   57136:	ba 66 d2 00 00       	mov    edx,@obj3:map_cpp_variable_30                                ; fixup: num: 13913, src obj: 1, src ofs: 0x57137, dst obj: 3, dst ofs: 0xd266
   5713b:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
   5713e:	e8 ed f2 01 00       	call   strcmp_
   57143:	85 c0                	test   eax,eax
   57145:	75 19                	jne    set_mouse_to_entrance_branch_15
   57147:	c7 05 78 59 02 00 c4 01 00 00 	mov    DWORD PTR ds:@obj3:mouse_x,0x1c4                    ; fixup: num: 13912, src obj: 1, src ofs: 0x57149, dst obj: 3, dst ofs: 0x25978
   57151:	c7 05 7c 59 02 00 22 01 00 00 	mov    DWORD PTR ds:@obj3:mouse_y,0x122                    ; fixup: num: 13911, src obj: 1, src ofs: 0x57153, dst obj: 3, dst ofs: 0x2597c
   5715b:	e9 f6 00 00 00       	jmp    set_mouse_to_entrance_branch_21
set_mouse_to_entrance_branch_15:
   57160:	a1 c4 5a 02 00       	mov    eax,ds:@obj3:current_room                                    ; fixup: num: 13910, src obj: 1, src ofs: 0x57161, dst obj: 3, dst ofs: 0x25ac4
   57165:	ba 6d d2 00 00       	mov    edx,@obj3:map_cpp_variable_31                                ; fixup: num: 13909, src obj: 1, src ofs: 0x57166, dst obj: 3, dst ofs: 0xd26d
   5716a:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
   5716d:	e8 be f2 01 00       	call   strcmp_
   57172:	85 c0                	test   eax,eax
   57174:	75 19                	jne    set_mouse_to_entrance_branch_16
   57176:	c7 05 78 59 02 00 4a 00 00 00 	mov    DWORD PTR ds:@obj3:mouse_x,0x4a                     ; fixup: num: 13908, src obj: 1, src ofs: 0x57178, dst obj: 3, dst ofs: 0x25978
   57180:	c7 05 7c 59 02 00 17 01 00 00 	mov    DWORD PTR ds:@obj3:mouse_y,0x117                    ; fixup: num: 13907, src obj: 1, src ofs: 0x57182, dst obj: 3, dst ofs: 0x2597c
   5718a:	e9 c7 00 00 00       	jmp    set_mouse_to_entrance_branch_21
set_mouse_to_entrance_branch_16:
   5718f:	a1 c4 5a 02 00       	mov    eax,ds:@obj3:current_room                                    ; fixup: num: 13936, src obj: 1, src ofs: 0x57190, dst obj: 3, dst ofs: 0x25ac4
   57194:	ba 74 d2 00 00       	mov    edx,@obj3:map_cpp_variable_32                                ; fixup: num: 13935, src obj: 1, src ofs: 0x57195, dst obj: 3, dst ofs: 0xd274
   57199:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
   5719c:	e8 8f f2 01 00       	call   strcmp_
   571a1:	85 c0                	test   eax,eax
   571a3:	75 19                	jne    set_mouse_to_entrance_branch_17
   571a5:	c7 05 78 59 02 00 02 01 00 00 	mov    DWORD PTR ds:@obj3:mouse_x,0x102                    ; fixup: num: 13934, src obj: 1, src ofs: 0x571a7, dst obj: 3, dst ofs: 0x25978
   571af:	c7 05 7c 59 02 00 82 01 00 00 	mov    DWORD PTR ds:@obj3:mouse_y,0x182                    ; fixup: num: 13933, src obj: 1, src ofs: 0x571b1, dst obj: 3, dst ofs: 0x2597c
   571b9:	e9 98 00 00 00       	jmp    set_mouse_to_entrance_branch_21
set_mouse_to_entrance_branch_17:
   571be:	a1 c4 5a 02 00       	mov    eax,ds:@obj3:current_room                                    ; fixup: num: 13932, src obj: 1, src ofs: 0x571bf, dst obj: 3, dst ofs: 0x25ac4
   571c3:	ba 79 d2 00 00       	mov    edx,@obj3:map_cpp_variable_33                                ; fixup: num: 13931, src obj: 1, src ofs: 0x571c4, dst obj: 3, dst ofs: 0xd279
   571c8:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
   571cb:	e8 60 f2 01 00       	call   strcmp_
   571d0:	85 c0                	test   eax,eax
   571d2:	75 16                	jne    set_mouse_to_entrance_branch_18
   571d4:	c7 05 78 59 02 00 41 01 00 00 	mov    DWORD PTR ds:@obj3:mouse_x,0x141                    ; fixup: num: 13930, src obj: 1, src ofs: 0x571d6, dst obj: 3, dst ofs: 0x25978
   571de:	c7 05 7c 59 02 00 09 01 00 00 	mov    DWORD PTR ds:@obj3:mouse_y,0x109                    ; fixup: num: 13929, src obj: 1, src ofs: 0x571e0, dst obj: 3, dst ofs: 0x2597c
   571e8:	eb 6c                	jmp    set_mouse_to_entrance_branch_21
set_mouse_to_entrance_branch_18:
   571ea:	a1 c4 5a 02 00       	mov    eax,ds:@obj3:current_room                                    ; fixup: num: 13928, src obj: 1, src ofs: 0x571eb, dst obj: 3, dst ofs: 0x25ac4
   571ef:	ba 7e d2 00 00       	mov    edx,@obj3:map_cpp_variable_34                                ; fixup: num: 13927, src obj: 1, src ofs: 0x571f0, dst obj: 3, dst ofs: 0xd27e
   571f4:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
   571f7:	e8 34 f2 01 00       	call   strcmp_
   571fc:	85 c0                	test   eax,eax
   571fe:	75 16                	jne    set_mouse_to_entrance_branch_19
   57200:	c7 05 78 59 02 00 b2 00 00 00 	mov    DWORD PTR ds:@obj3:mouse_x,0xb2                     ; fixup: num: 13926, src obj: 1, src ofs: 0x57202, dst obj: 3, dst ofs: 0x25978
   5720a:	c7 05 7c 59 02 00 07 01 00 00 	mov    DWORD PTR ds:@obj3:mouse_y,0x107                    ; fixup: num: 13925, src obj: 1, src ofs: 0x5720c, dst obj: 3, dst ofs: 0x2597c
   57214:	eb 40                	jmp    set_mouse_to_entrance_branch_21
set_mouse_to_entrance_branch_19:
   57216:	a1 c4 5a 02 00       	mov    eax,ds:@obj3:current_room                                    ; fixup: num: 13924, src obj: 1, src ofs: 0x57217, dst obj: 3, dst ofs: 0x25ac4
   5721b:	ba 83 d2 00 00       	mov    edx,@obj3:map_cpp_variable_35                                ; fixup: num: 13923, src obj: 1, src ofs: 0x5721c, dst obj: 3, dst ofs: 0xd283
   57220:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
   57223:	e8 08 f2 01 00       	call   strcmp_
   57228:	85 c0                	test   eax,eax
   5722a:	75 16                	jne    set_mouse_to_entrance_branch_20
   5722c:	c7 05 78 59 02 00 ed 01 00 00 	mov    DWORD PTR ds:@obj3:mouse_x,0x1ed                    ; fixup: num: 13922, src obj: 1, src ofs: 0x5722e, dst obj: 3, dst ofs: 0x25978
   57236:	c7 05 7c 59 02 00 3a 00 00 00 	mov    DWORD PTR ds:@obj3:mouse_y,0x3a                     ; fixup: num: 13946, src obj: 1, src ofs: 0x57238, dst obj: 3, dst ofs: 0x2597c
   57240:	eb 14                	jmp    set_mouse_to_entrance_branch_21
set_mouse_to_entrance_branch_20:
   57242:	c7 05 78 59 02 00 40 01 00 00 	mov    DWORD PTR ds:@obj3:mouse_x,0x140                    ; fixup: num: 13945, src obj: 1, src ofs: 0x57244, dst obj: 3, dst ofs: 0x25978
   5724c:	c7 05 7c 59 02 00 f0 00 00 00 	mov    DWORD PTR ds:@obj3:mouse_y,0xf0                     ; fixup: num: 13944, src obj: 1, src ofs: 0x5724e, dst obj: 3, dst ofs: 0x2597c
set_mouse_to_entrance_branch_21:
   57256:	8b 15 78 59 02 00    	mov    edx,DWORD PTR ds:@obj3:mouse_x                               ; fixup: num: 13943, src obj: 1, src ofs: 0x57258, dst obj: 3, dst ofs: 0x25978
   5725c:	a1 7c 59 02 00       	mov    eax,ds:@obj3:mouse_y                                         ; fixup: num: 13942, src obj: 1, src ofs: 0x5725d, dst obj: 3, dst ofs: 0x2597c
   57261:	80 3d 71 59 02 00 00 	cmp    BYTE PTR ds:@obj3:mouse_initialized,0x0                      ; fixup: num: 13941, src obj: 1, src ofs: 0x57263, dst obj: 3, dst ofs: 0x25971
   57268:	74 21                	je     set_mouse_to_entrance_branch_23
   5726a:	bb 04 00 00 00       	mov    ebx,0x4
   5726f:	66 89 54 24 08       	mov    WORD PTR [esp+0x8],dx
   57274:	66 89 44 24 0c       	mov    WORD PTR [esp+0xc],ax
   57279:	89 e2                	mov    edx,esp
   5727b:	b8 33 00 00 00       	mov    eax,0x33
   57280:	66 89 1c 24          	mov    WORD PTR [esp],bx
   57284:	89 e3                	mov    ebx,esp
set_mouse_to_entrance_branch_22:
   57286:	e8 11 9e 01 00       	call   int386_
set_mouse_to_entrance_branch_23:
   5728b:	83 c4 38             	add    esp,0x38
   5728e:	5a                   	pop    edx
   5728f:	59                   	pop    ecx
   57290:	5b                   	pop    ebx
   57291:	c3                   	ret    
   57292:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   57298:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
   5729e:	8b c0                	mov    eax,eax

;-------------------------------------------------
;  Function 'MOUSE_mapshow'                      -
;-------------------------------------------------
MOUSE_mapshow:
   572a0:	53                   	push   ebx
   572a1:	51                   	push   ecx
   572a2:	52                   	push   edx
   572a3:	56                   	push   esi
   572a4:	57                   	push   edi
   572a5:	83 ec 14             	sub    esp,0x14
   572a8:	a1 7c 59 02 00       	mov    eax,ds:@obj3:mouse_y                                         ; fixup: num: 13940, src obj: 1, src ofs: 0x572a9, dst obj: 3, dst ofs: 0x2597c
   572ad:	50                   	push   eax
   572ae:	a1 78 59 02 00       	mov    eax,ds:@obj3:mouse_x                                         ; fixup: num: 13939, src obj: 1, src ofs: 0x572af, dst obj: 3, dst ofs: 0x25978
   572b3:	50                   	push   eax
   572b4:	68 e9 d2 00 00       	push   @obj3:map_cpp_variable_42                                    ; fixup: num: 13938, src obj: 1, src ofs: 0x572b5, dst obj: 3, dst ofs: 0xd2e9
   572b9:	8d 44 24 0c          	lea    eax,[esp+0xc]
   572bd:	50                   	push   eax
   572be:	e8 1e 99 01 00       	call   sprintf_
   572c3:	8d 44 24 10          	lea    eax,[esp+0x10]
   572c7:	83 c4 10             	add    esp,0x10
   572ca:	8b 15 c4 5b 02 00    	mov    edx,DWORD PTR ds:@obj3:textfont                              ; fixup: num: 13937, src obj: 1, src ofs: 0x572cc, dst obj: 3, dst ofs: 0x25bc4
   572d0:	bb 01 00 00 00       	mov    ebx,0x1
   572d5:	e8 56 16 ff ff       	call   stringwidthCFN
   572da:	ba 0f 00 00 00       	mov    edx,0xf
   572df:	83 c0 14             	add    eax,0x14
   572e2:	e8 99 b5 fb ff       	call   build_bm
   572e7:	6a 01                	push   0x1
   572e9:	31 c9                	xor    ecx,ecx
   572eb:	50                   	push   eax
   572ec:	8b 15 c4 5b 02 00    	mov    edx,DWORD PTR ds:@obj3:textfont                              ; fixup: num: 13830, src obj: 1, src ofs: 0x572ee, dst obj: 3, dst ofs: 0x25bc4
   572f2:	89 c6                	mov    esi,eax
   572f4:	6a 01                	push   0x1
   572f6:	31 db                	xor    ebx,ebx
   572f8:	8d 44 24 0c          	lea    eax,[esp+0xc]
   572fc:	e8 ff 10 ff ff       	call   bm_draw_string_CFONT
   57301:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
   57304:	8b 3d 34 30 02 00    	mov    edi,DWORD PTR ds:@obj3:the_viewport                          ; fixup: num: 13829, src obj: 1, src ofs: 0x57306, dst obj: 3, dst ofs: 0x23034
   5730a:	50                   	push   eax
   5730b:	8b 1e                	mov    ebx,DWORD PTR [esi]
   5730d:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
   57310:	6a 00                	push   0x0
   57312:	31 d2                	xor    edx,edx
   57314:	31 c0                	xor    eax,eax
   57316:	ff 57 30             	call   DWORD PTR [edi+0x30]
   57319:	8b 5e 08             	mov    ebx,DWORD PTR [esi+0x8]
   5731c:	89 f2                	mov    edx,esi
   5731e:	85 db                	test   ebx,ebx
   57320:	74 07                	je     MOUSE_mapshow_branch_1
   57322:	89 d8                	mov    eax,ebx
   57324:	e8 bf a0 01 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
MOUSE_mapshow_branch_1:
   57329:	89 d0                	mov    eax,edx
   5732b:	c7 42 08 00 00 00 00 	mov    DWORD PTR [edx+0x8],0x0
   57332:	e8 41 ad 01 00       	call   W?$dln(pnv)v
   57337:	83 c4 14             	add    esp,0x14
   5733a:	5f                   	pop    edi
   5733b:	5e                   	pop    esi
   5733c:	5a                   	pop    edx
   5733d:	59                   	pop    ecx
   5733e:	5b                   	pop    ebx
   5733f:	c3                   	ret    

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 87 (D:\SOURCE\map.cpp)                                        -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 87: D:\SOURCE\map.cpp                                                -
;                                                                              -
;-------------------------------------------------------------------------------
map_cpp_variable_1:
    d0b4:	65 6e 74 72 61 6e 63 65 5f 69 64 20 3d 3d 20 4e 55 4c 4c 00 	db     "entrance_id == NULL",0x00
map_cpp_variable_2:
    d0c8:	73 74 72 6c 65 6e 28 20 65 6e 74 72 61 6e 63 65 5f 69 64 20 29 20 3d 3d 20 30 00 	db     "strlen( entrance_id ) == 0",0x00
map_cpp_variable_3:
    d0e3:	44 41 59 5f 46 4c 41 47 00 	db     "DAY_FLAG",0x00
map_cpp_variable_4:
    d0ec:	6d 61 70 5f 65 6e 74 72 61 6e 63 65 5f 70 74 72 2d 3e 69 64 20 3d 3d 20 4e 55 4c 4c 00 	db     "map_entrance_ptr->id == NULL",0x00
map_cpp_variable_5:
    d109:	4d 41 50 3a 49 6e 76 61 6c 69 64 20 65 6e 74 72 61 6e 63 65 20 69 64 20 25 73 00 	db     "MAP:Invalid entrance id %s",0x00
map_cpp_variable_6:
    d124:	6d 61 70 2e 63 70 70 00 	db     "map.cpp",0x00
map_cpp_variable_7:
    d12c:	31 3a 5c 67 72 61 70 68 69 63 5c 70 61 6c 5c 68 61 72 76 6d 61 70 2e 70 61 6c 00 	db     "1:\graphic\pal\harvmap.pal",0x00
map_cpp_variable_8:
    d147:	43 6f 75 6c 64 20 6e 6f 74 20 66 69 6e 64 20 66 69 6c 65 3a 20 27 31 3a 5c 67 72 61 70 68 69 63 5c 70 61 6c 5c 68 61 72 76 6d 61 70 2e 70 61 6c 27 00 	db     "Could not find file: '1:\graphic\pal\harvmap.pal'",0x00
map_cpp_variable_9:
    d179:	4d 41 50 5f 55 4c 00 	db     "MAP_UL",0x00
map_cpp_variable_10:
    d180:	31 3a 5c 67 72 61 70 68 69 63 5c 74 6f 77 6e 5c 68 61 72 76 6d 61 70 31 2e 62 6d 00 	db     "1:\graphic\town\harvmap1.bm",0x00
map_cpp_variable_11:
    d19c:	4d 41 50 5f 55 52 00 	db     "MAP_UR",0x00
map_cpp_variable_12:
    d1a3:	31 3a 5c 67 72 61 70 68 69 63 5c 74 6f 77 6e 5c 68 61 72 76 6d 61 70 32 2e 62 6d 00 	db     "1:\graphic\town\harvmap2.bm",0x00
map_cpp_variable_13:
    d1bf:	4d 41 50 5f 4c 4c 00 	db     "MAP_LL",0x00
map_cpp_variable_14:
    d1c6:	31 3a 5c 67 72 61 70 68 69 63 5c 74 6f 77 6e 5c 68 61 72 76 6d 61 70 33 2e 62 6d 00 	db     "1:\graphic\town\harvmap3.bm",0x00
map_cpp_variable_15:
    d1e2:	4d 41 50 5f 4c 52 00 	db     "MAP_LR",0x00
map_cpp_variable_16:
    d1e9:	31 3a 5c 67 72 61 70 68 69 63 5c 74 6f 77 6e 5c 68 61 72 76 6d 61 70 34 2e 62 6d 00 	db     "1:\graphic\town\harvmap4.bm",0x00
map_cpp_variable_17:
    d205:	50 43 48 4f 55 53 45 00 	db     "PCHOUSE",0x00
map_cpp_variable_18:
    d20d:	53 54 4f 52 45 5f 4f 55 54 00 	db     "STORE_OUT",0x00
map_cpp_variable_19:
    d217:	50 4f 53 54 00       	db     "POST",0x00
map_cpp_variable_20:
    d21c:	42 41 52 42 5f 4f 55 54 00 	db     "BARB_OUT",0x00
map_cpp_variable_21:
    d225:	53 45 52 47 45 41 4e 54 52 4d 00 	db     "SERGEANTRM",0x00
map_cpp_variable_22:
    d230:	4e 55 4b 45 00       	db     "NUKE",0x00
map_cpp_variable_23:
    d235:	43 45 4d 00          	db     "CEM",0x00
map_cpp_variable_24:
    d239:	53 54 48 4f 55 53 45 00 	db     "STHOUSE",0x00
map_cpp_variable_25:
    d241:	57 41 53 50 5f 48 4f 55 53 45 00 	db     "WASP_HOUSE",0x00
map_cpp_variable_26:
    d24c:	4d 52 5f 4a 4f 48 4e 53 00 	db     "MR_JOHNS",0x00
map_cpp_variable_27:
    d255:	4d 4f 52 54 00       	db     "MORT",0x00
map_cpp_variable_28:
    d25a:	4d 54 50 4c 4e 54 00 	db     "MTPLNT",0x00
map_cpp_variable_29:
    d261:	53 43 48 4c 00       	db     "SCHL",0x00
map_cpp_variable_30:
    d266:	54 56 5f 4f 55 54 00 	db     "TV_OUT",0x00
map_cpp_variable_31:
    d26d:	44 4e 41 45 58 54 00 	db     "DNAEXT",0x00
map_cpp_variable_32:
    d274:	4e 45 57 53 00       	db     "NEWS",0x00
map_cpp_variable_33:
    d279:	46 49 52 45 00       	db     "FIRE",0x00
map_cpp_variable_34:
    d27e:	53 48 52 46 00       	db     "SHRF",0x00
map_cpp_variable_35:
    d283:	48 4f 54 45 4c 00    	db     "HOTEL",0x00
map_cpp_variable_36:
    d289:	53 4f 55 4e 44 5c 4d 55 53 49 43 5c 4d 45 4e 41 43 45 2e 43 4d 50 00 	db     "SOUND\MUSIC\MENACE.CMP",0x00
map_cpp_variable_37:
    d2a0:	44 41 59 5f 46 4c 41 47 00 	db     "DAY_FLAG",0x00
map_cpp_variable_38:
    d2a9:	4d 41 50 5f 54 45 58 54 00 	db     "MAP_TEXT",0x00
map_cpp_variable_39:
    d2b2:	45 6e 74 72 61 6e 63 65 20 6e 6f 74 20 66 6f 75 6e 64 21 20 20 25 73 00 	db     "Entrance not found!  %s",0x00
map_cpp_variable_40:
    d2ca:	72 65 74 75 72 6e 69 6e 67 20 65 6e 74 72 61 6e 63 65 3a 20 25 73 00 	db     "returning entrance: %s",0x00
map_cpp_variable_41:                                                                                ; access size: QWORD
    d2e1:	9a 99 99 99 99 99 d9 bf 	dq     0xbfd999999999999a
map_cpp_variable_42:
    d2e9:	58 3a 25 30 33 69 20 20 59 3a 25 30 33 69 00 	db     "X:%03i  Y:%03i",0x00

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 87 (D:\SOURCE\map.cpp)                                        -
;                                                                              -
;-------------------------------------------------------------------------------