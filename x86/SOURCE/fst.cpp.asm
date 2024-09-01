;-------------------------------------------------------------------------------
;                                                                              -
;  Module 2: D:\SOURCE\fst.cpp                                                 -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function 'compress_fst'                       -
;-------------------------------------------------
compress_fst:
    11d0:	56                   	push   esi
    11d1:	57                   	push   edi
    11d2:	55                   	push   ebp
    11d3:	81 ec 78 09 00 00    	sub    esp,0x978
    11d9:	89 c6                	mov    esi,eax
    11db:	89 94 24 e8 08 00 00 	mov    DWORD PTR [esp+0x8e8],edx
    11e2:	89 df                	mov    edi,ebx
    11e4:	89 8c 24 ec 08 00 00 	mov    DWORD PTR [esp+0x8ec],ecx
    11eb:	8d 84 24 00 06 00 00 	lea    eax,[esp+0x600]
    11f2:	05 a8 00 00 00       	add    eax,0xa8
    11f7:	2d a8 00 00 00       	sub    eax,0xa8
    11fc:	c7 80 ac 00 00 00 00 00 00 00 	mov    DWORD PTR [eax+0xac],0x0
    1206:	c7 80 b0 00 00 00 00 00 00 00 	mov    DWORD PTR [eax+0xb0],0x0
    1210:	8b 90 ac 00 00 00    	mov    edx,DWORD PTR [eax+0xac]
    1216:	89 90 a8 00 00 00    	mov    DWORD PTR [eax+0xa8],edx
    121c:	c7 80 84 00 00 00 00 00 00 00 	mov    DWORD PTR [eax+0x84],0x0
    1226:	8b 90 84 00 00 00    	mov    edx,DWORD PTR [eax+0x84]
    122c:	89 90 80 00 00 00    	mov    DWORD PTR [eax+0x80],edx
    1232:	31 d2                	xor    edx,edx
    1234:	30 e4                	xor    ah,ah
    1236:	89 94 24 70 07 00 00 	mov    DWORD PTR [esp+0x770],edx
    123d:	89 94 24 6c 07 00 00 	mov    DWORD PTR [esp+0x76c],edx
    1244:	89 94 24 74 07 00 00 	mov    DWORD PTR [esp+0x774],edx
    124b:	88 a4 24 74 09 00 00 	mov    BYTE PTR [esp+0x974],ah
    1252:	8d 84 24 b4 06 00 00 	lea    eax,[esp+0x6b4]
    1259:	89 94 24 18 09 00 00 	mov    DWORD PTR [esp+0x918],edx
    1260:	e8 bb 71 00 00       	call   W?$ct:SOUND$n()_
    1265:	b8 00 59 02 00       	mov    eax,@obj3:keyboard                                           ; fixup: num: 199, src obj: 1, src ofs: 0x1266, dst obj: 3, dst ofs: 0x25900
    126a:	ba 4c 02 00 00       	mov    edx,@obj3:fst_cpp_variable_1                                 ; fixup: num: 198, src obj: 1, src ofs: 0x126b, dst obj: 3, dst ofs: 0x24c
    126f:	e8 3c 73 03 00       	call   remove_ISR
    1274:	8b 84 24 e8 08 00 00 	mov    eax,DWORD PTR [esp+0x8e8]
    127b:	e8 da 01 07 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
    1280:	85 c0                	test   eax,eax
    1282:	75 07                	jne    compress_fst_branch_1
    1284:	89 84 24 e8 08 00 00 	mov    DWORD PTR [esp+0x8e8],eax
compress_fst_branch_1:
    128b:	b9 ca 00 00 00       	mov    ecx,0xca
    1290:	bb 51 02 00 00       	mov    ebx,@obj3:fst_cpp_variable_2                                 ; fixup: num: 201, src obj: 1, src ofs: 0x1291, dst obj: 3, dst ofs: 0x251
    1295:	89 f0                	mov    eax,esi
    1297:	31 d2                	xor    edx,edx
    1299:	e8 42 bb 00 00       	call   XFILE_read2
    129e:	89 c6                	mov    esi,eax
    12a0:	85 c0                	test   eax,eax
    12a2:	75 0f                	jne    compress_fst_branch_2
    12a4:	bb 59 02 00 00       	mov    ebx,@obj3:fst_cpp_variable_3                                 ; fixup: num: 200, src obj: 1, src ofs: 0x12a5, dst obj: 3, dst ofs: 0x259
    12a9:	ba ca 00 00 00       	mov    edx,0xca
    12ae:	e8 7d 6d 03 00       	call   _error_report
compress_fst_branch_2:
    12b3:	8b 94 24 e8 08 00 00 	mov    edx,DWORD PTR [esp+0x8e8]
    12ba:	85 d2                	test   edx,edx
    12bc:	74 0c                	je     compress_fst_branch_3
    12be:	8d 84 24 b4 06 00 00 	lea    eax,[esp+0x6b4]
    12c5:	e8 06 7f 00 00       	call   load_from_file
compress_fst_branch_3:
    12ca:	bb 20 00 00 00       	mov    ebx,0x20
    12cf:	8d 84 24 3c 07 00 00 	lea    eax,[esp+0x73c]
    12d6:	31 d2                	xor    edx,edx
    12d8:	e8 f3 00 07 00       	call   memset_
    12dd:	31 c0                	xor    eax,eax
    12df:	66 8b 46 08          	mov    ax,WORD PTR [esi+0x8]
    12e3:	89 84 24 40 07 00 00 	mov    DWORD PTR [esp+0x740],eax
    12ea:	31 c0                	xor    eax,eax
    12ec:	66 8b 46 0a          	mov    ax,WORD PTR [esi+0xa]
    12f0:	8b 8c 24 e8 08 00 00 	mov    ecx,DWORD PTR [esp+0x8e8]
    12f7:	89 84 24 44 07 00 00 	mov    DWORD PTR [esp+0x744],eax
    12fe:	8b 84 24 ec 08 00 00 	mov    eax,DWORD PTR [esp+0x8ec]
    1305:	bb 32 54 53 46       	mov    ebx,0x46535432
    130a:	89 84 24 48 07 00 00 	mov    DWORD PTR [esp+0x748],eax
    1311:	8b 84 24 8c 09 00 00 	mov    eax,DWORD PTR [esp+0x98c]
    1318:	89 9c 24 3c 07 00 00 	mov    DWORD PTR [esp+0x73c],ebx
    131f:	89 84 24 50 07 00 00 	mov    DWORD PTR [esp+0x750],eax
    1326:	85 c9                	test   ecx,ecx
    1328:	74 1e                	je     compress_fst_branch_4
    132a:	8b 84 24 34 07 00 00 	mov    eax,DWORD PTR [esp+0x734]
    1331:	89 84 24 54 07 00 00 	mov    DWORD PTR [esp+0x754],eax
    1338:	8b 84 24 38 07 00 00 	mov    eax,DWORD PTR [esp+0x738]
    133f:	89 84 24 58 07 00 00 	mov    DWORD PTR [esp+0x758],eax
    1346:	eb 0e                	jmp    compress_fst_branch_5
compress_fst_branch_4:
    1348:	89 8c 24 58 07 00 00 	mov    DWORD PTR [esp+0x758],ecx
    134f:	89 8c 24 54 07 00 00 	mov    DWORD PTR [esp+0x754],ecx
compress_fst_branch_5:
    1356:	8b 84 24 94 06 00 00 	mov    eax,DWORD PTR [esp+0x694]
    135d:	31 d2                	xor    edx,edx
    135f:	89 84 24 50 08 00 00 	mov    DWORD PTR [esp+0x850],eax
    1366:	89 94 24 54 08 00 00 	mov    DWORD PTR [esp+0x854],edx
    136d:	df ac 24 50 08 00 00 	fild   QWORD PTR [esp+0x850]
    1374:	dc 3d c2 03 00 00    	fdivr  QWORD PTR ds:@obj3:fst_cpp_variable_16                       ; fixup: num: 204, src obj: 1, src ofs: 0x1376, dst obj: 3, dst ofs: 0x3c2
    137a:	83 ec 08             	sub    esp,0x8
    137d:	dd 1c 24             	fstp   QWORD PTR [esp]
    1380:	68 6e 02 00 00       	push   @obj3:fst_cpp_variable_4                                     ; fixup: num: 203, src obj: 1, src ofs: 0x1381, dst obj: 3, dst ofs: 0x26e
    1385:	e8 c8 f7 06 00       	call   printf_
    138a:	83 c4 0c             	add    esp,0xc
    138d:	b9 08 00 00 00       	mov    ecx,0x8
    1392:	b8 34 30 02 00       	mov    eax,@obj3:the_viewport                                       ; fixup: num: 202, src obj: 1, src ofs: 0x1393, dst obj: 3, dst ofs: 0x23034
    1397:	6a 01                	push   0x1
    1399:	8b 9c 24 48 07 00 00 	mov    ebx,DWORD PTR [esp+0x748]
    13a0:	8b 94 24 44 07 00 00 	mov    edx,DWORD PTR [esp+0x744]
    13a7:	e8 d4 b2 02 00       	call   resize
    13ac:	bb 01 00 00 00       	mov    ebx,0x1
    13b1:	8d 84 24 00 06 00 00 	lea    eax,[esp+0x600]
    13b8:	89 f2                	mov    edx,esi
    13ba:	e8 f1 ef 00 00       	call   load_from_buffer
    13bf:	31 c0                	xor    eax,eax
    13c1:	66 8b 84 24 06 06 00 00 	mov    ax,WORD PTR [esp+0x606]
    13c9:	89 84 24 4c 07 00 00 	mov    DWORD PTR [esp+0x74c],eax
    13d0:	89 c2                	mov    edx,eax
    13d2:	8d 04 85 00 00 00 00 	lea    eax,[eax*4+0x0]
    13d9:	29 d0                	sub    eax,edx
    13db:	01 c0                	add    eax,eax
    13dd:	e8 b1 00 07 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
    13e2:	89 84 24 0c 09 00 00 	mov    DWORD PTR [esp+0x90c],eax
    13e9:	85 c0                	test   eax,eax
    13eb:	75 0f                	jne    compress_fst_branch_6
    13ed:	bb 84 02 00 00       	mov    ebx,@obj3:fst_cpp_variable_5                                 ; fixup: num: 206, src obj: 1, src ofs: 0x13ee, dst obj: 3, dst ofs: 0x284
    13f2:	ba e7 00 00 00       	mov    edx,0xe7
    13f7:	e8 34 6c 03 00       	call   _error_report
compress_fst_branch_6:
    13fc:	bb 00 03 00 00       	mov    ebx,0x300
    1401:	8d 84 24 00 03 00 00 	lea    eax,[esp+0x300]
    1408:	31 d2                	xor    edx,edx
    140a:	e8 c1 ff 06 00       	call   memset_
    140f:	68 80 01 00 00       	push   0x180
    1414:	68 62 02 00 00       	push   0x262
    1419:	57                   	push   edi
    141a:	e8 57 01 07 00       	call   open_
    141f:	83 c4 0c             	add    esp,0xc
    1422:	89 84 24 e4 08 00 00 	mov    DWORD PTR [esp+0x8e4],eax
    1429:	83 f8 ff             	cmp    eax,0xffffffff
    142c:	75 11                	jne    compress_fst_branch_7
    142e:	bb a4 02 00 00       	mov    ebx,@obj3:fst_cpp_variable_6                                 ; fixup: num: 205, src obj: 1, src ofs: 0x142f, dst obj: 3, dst ofs: 0x2a4
    1433:	ba ec 00 00 00       	mov    edx,0xec
    1438:	31 c0                	xor    eax,eax
    143a:	e8 f1 6b 03 00       	call   _error_report
compress_fst_branch_7:
    143f:	bb 20 00 00 00       	mov    ebx,0x20
    1444:	8d 94 24 3c 07 00 00 	lea    edx,[esp+0x73c]
    144b:	8b 84 24 e4 08 00 00 	mov    eax,DWORD PTR [esp+0x8e4]
    1452:	e8 6d 03 07 00       	call   write_
    1457:	8b 94 24 4c 07 00 00 	mov    edx,DWORD PTR [esp+0x74c]
    145e:	8d 1c 95 00 00 00 00 	lea    ebx,[edx*4+0x0]
    1465:	8b 84 24 e4 08 00 00 	mov    eax,DWORD PTR [esp+0x8e4]
    146c:	29 d3                	sub    ebx,edx
    146e:	8b 94 24 0c 09 00 00 	mov    edx,DWORD PTR [esp+0x90c]
    1475:	01 db                	add    ebx,ebx
    1477:	e8 48 03 07 00       	call   write_
    147c:	8b 94 24 40 07 00 00 	mov    edx,DWORD PTR [esp+0x740]
    1483:	8b 84 24 44 07 00 00 	mov    eax,DWORD PTR [esp+0x744]
    148a:	c1 ea 02             	shr    edx,0x2
    148d:	c1 e8 02             	shr    eax,0x2
    1490:	0f af c2             	imul   eax,edx
    1493:	6b c0 2c             	imul   eax,eax,0x2c
    1496:	e8 f8 ff 06 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
    149b:	a3 70 7e 01 00       	mov    ds:@obj3:block_list,eax                                      ; fixup: num: 208, src obj: 1, src ofs: 0x149c, dst obj: 3, dst ofs: 0x17e70
    14a0:	85 c0                	test   eax,eax
    14a2:	75 0f                	jne    compress_fst_branch_8
    14a4:	bb c3 02 00 00       	mov    ebx,@obj3:fst_cpp_variable_7                                 ; fixup: num: 207, src obj: 1, src ofs: 0x14a5, dst obj: 3, dst ofs: 0x2c3
    14a9:	ba f3 00 00 00       	mov    edx,0xf3
    14ae:	e8 7d 6b 03 00       	call   _error_report
compress_fst_branch_8:
    14b3:	8b 94 24 40 07 00 00 	mov    edx,DWORD PTR [esp+0x740]
    14ba:	8b 84 24 6c 07 00 00 	mov    eax,DWORD PTR [esp+0x76c]
    14c1:	8b 9c 24 44 07 00 00 	mov    ebx,DWORD PTR [esp+0x744]
    14c8:	39 d0                	cmp    eax,edx
    14ca:	75 0d                	jne    compress_fst_branch_9
    14cc:	3b 9c 24 70 07 00 00 	cmp    ebx,DWORD PTR [esp+0x770]
    14d3:	0f 84 a2 00 00 00    	je     compress_fst_branch_12
compress_fst_branch_9:
    14d9:	89 94 24 6c 07 00 00 	mov    DWORD PTR [esp+0x76c],edx
    14e0:	89 9c 24 70 07 00 00 	mov    DWORD PTR [esp+0x770],ebx
    14e7:	85 d2                	test   edx,edx
    14e9:	75 23                	jne    compress_fst_branch_10
    14eb:	85 db                	test   ebx,ebx
    14ed:	75 1f                	jne    compress_fst_branch_10
    14ef:	8b b4 24 74 07 00 00 	mov    esi,DWORD PTR [esp+0x774]
    14f6:	85 f6                	test   esi,esi
    14f8:	0f 84 7d 00 00 00    	je     compress_fst_branch_12
    14fe:	89 f0                	mov    eax,esi
    1500:	e8 e3 fe 06 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
    1505:	89 94 24 74 07 00 00 	mov    DWORD PTR [esp+0x774],edx
    150c:	eb 6d                	jmp    compress_fst_branch_12
compress_fst_branch_10:
    150e:	8b bc 24 74 07 00 00 	mov    edi,DWORD PTR [esp+0x774]
    1515:	85 ff                	test   edi,edi
    1517:	74 07                	je     compress_fst_branch_11
    1519:	89 f8                	mov    eax,edi
    151b:	e8 c8 fe 06 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
compress_fst_branch_11:
    1520:	8b 84 24 6c 07 00 00 	mov    eax,DWORD PTR [esp+0x76c]
    1527:	0f af 84 24 70 07 00 00 	imul   eax,DWORD PTR [esp+0x770]
    152f:	31 ed                	xor    ebp,ebp
    1531:	89 ac 24 74 07 00 00 	mov    DWORD PTR [esp+0x774],ebp
    1538:	e8 56 ff 06 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
    153d:	89 84 24 74 07 00 00 	mov    DWORD PTR [esp+0x774],eax
    1544:	85 c0                	test   eax,eax
    1546:	75 33                	jne    compress_fst_branch_12
    1548:	8b 9c 24 6c 07 00 00 	mov    ebx,DWORD PTR [esp+0x76c]
    154f:	53                   	push   ebx
    1550:	8b 8c 24 74 07 00 00 	mov    ecx,DWORD PTR [esp+0x774]
    1557:	51                   	push   ecx
    1558:	68 df 02 00 00       	push   @obj3:fst_cpp_variable_8                                     ; fixup: num: 211, src obj: 1, src ofs: 0x1559, dst obj: 3, dst ofs: 0x2df
    155d:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 210, src obj: 1, src ofs: 0x155e, dst obj: 3, dst ofs: 0x237fc
    1562:	ba 96 00 00 00       	mov    edx,0x96
    1567:	e8 75 f6 06 00       	call   sprintf_
    156c:	83 c4 10             	add    esp,0x10
    156f:	bb fc 37 02 00       	mov    ebx,@obj3:log_buffer                                         ; fixup: num: 209, src obj: 1, src ofs: 0x1570, dst obj: 3, dst ofs: 0x237fc
    1574:	31 c0                	xor    eax,eax
    1576:	e8 b5 6a 03 00       	call   _error_report
compress_fst_branch_12:
    157b:	8b 9c 24 70 07 00 00 	mov    ebx,DWORD PTR [esp+0x770]
    1582:	0f af 9c 24 6c 07 00 00 	imul   ebx,DWORD PTR [esp+0x76c]
    158a:	31 d2                	xor    edx,edx
    158c:	8b 84 24 74 07 00 00 	mov    eax,DWORD PTR [esp+0x774]
    1593:	81 e2 ff 00 00 00    	and    edx,0xff
    1599:	e8 32 fe 06 00       	call   memset_
    159e:	31 c0                	xor    eax,eax
    15a0:	8b 94 24 4c 07 00 00 	mov    edx,DWORD PTR [esp+0x74c]
    15a7:	89 84 24 d4 08 00 00 	mov    DWORD PTR [esp+0x8d4],eax
    15ae:	85 d2                	test   edx,edx
    15b0:	0f 86 9b 14 00 00    	jbe    compress_fst_branch_96
    15b6:	8b 84 24 0c 09 00 00 	mov    eax,DWORD PTR [esp+0x90c]
    15bd:	89 84 24 24 09 00 00 	mov    DWORD PTR [esp+0x924],eax
compress_fst_branch_13:
    15c4:	83 bc 24 d4 08 00 00 00 	cmp    DWORD PTR [esp+0x8d4],0x0
    15cc:	74 14                	je     compress_fst_branch_14
    15ce:	8b 84 24 ec 08 00 00 	mov    eax,DWORD PTR [esp+0x8ec]
    15d5:	8b bc 24 50 07 00 00 	mov    edi,DWORD PTR [esp+0x750]
    15dc:	31 d2                	xor    edx,edx
    15de:	f7 f7                	div    edi
    15e0:	eb 1f                	jmp    compress_fst_branch_15
compress_fst_branch_14:
    15e2:	8b 84 24 ec 08 00 00 	mov    eax,DWORD PTR [esp+0x8ec]
    15e9:	8b 8c 24 50 07 00 00 	mov    ecx,DWORD PTR [esp+0x750]
    15f0:	31 d2                	xor    edx,edx
    15f2:	f7 f1                	div    ecx
    15f4:	8b b4 24 88 09 00 00 	mov    esi,DWORD PTR [esp+0x988]
    15fb:	39 f0                	cmp    eax,esi
    15fd:	77 02                	ja     compress_fst_branch_15
    15ff:	89 f0                	mov    eax,esi
compress_fst_branch_15:
    1601:	89 84 24 2c 09 00 00 	mov    DWORD PTR [esp+0x92c],eax
    1608:	8b 84 24 24 09 00 00 	mov    eax,DWORD PTR [esp+0x924]
    160f:	8b ac 24 e8 08 00 00 	mov    ebp,DWORD PTR [esp+0x8e8]
    1616:	66 c7 40 04 00 00    	mov    WORD PTR [eax+0x4],0x0
    161c:	85 ed                	test   ebp,ebp
    161e:	74 38                	je     compress_fst_branch_16
    1620:	8d 84 24 b4 06 00 00 	lea    eax,[esp+0x6b4]
    1627:	e8 f4 85 00 00       	call   bytes_per_second
    162c:	31 d2                	xor    edx,edx
    162e:	f7 b4 24 50 07 00 00 	div    DWORD PTR [esp+0x750]
    1635:	8b 94 24 24 09 00 00 	mov    edx,DWORD PTR [esp+0x924]
    163c:	8b 8c 24 d4 08 00 00 	mov    ecx,DWORD PTR [esp+0x8d4]
    1643:	66 89 42 04          	mov    WORD PTR [edx+0x4],ax
    1647:	85 c9                	test   ecx,ecx
    1649:	75 0d                	jne    compress_fst_branch_16
    164b:	89 d0                	mov    eax,edx
    164d:	66 8b 52 04          	mov    dx,WORD PTR [edx+0x4]
    1651:	c1 e2 03             	shl    edx,0x3
    1654:	66 89 50 04          	mov    WORD PTR [eax+0x4],dx
compress_fst_branch_16:
    1658:	8b 94 24 24 09 00 00 	mov    edx,DWORD PTR [esp+0x924]
    165f:	31 c0                	xor    eax,eax
    1661:	8b b4 24 44 07 00 00 	mov    esi,DWORD PTR [esp+0x744]
    1668:	66 8b 42 04          	mov    ax,WORD PTR [edx+0x4]
    166c:	8b 94 24 40 07 00 00 	mov    edx,DWORD PTR [esp+0x740]
    1673:	0f af d6             	imul   edx,esi
    1676:	b9 00 03 00 00       	mov    ecx,0x300
    167b:	8d bc 24 00 03 00 00 	lea    edi,[esp+0x300]
    1682:	89 e6                	mov    esi,esp
    1684:	01 c2                	add    edx,eax
    1686:	89 e0                	mov    eax,esp
    1688:	89 94 24 14 09 00 00 	mov    DWORD PTR [esp+0x914],edx
    168f:	e8 9c 6c 03 00       	call   get_all_palette_registers
    1694:	31 c0                	xor    eax,eax
    1696:	f3 a6                	repz cmps BYTE PTR ds:[esi],BYTE PTR es:[edi]
    1698:	74 05                	je     compress_fst_branch_17
    169a:	19 c0                	sbb    eax,eax
    169c:	83 d8 ff             	sbb    eax,0xffffffff
compress_fst_branch_17:
    169f:	85 c0                	test   eax,eax
    16a1:	74 3b                	je     compress_fst_branch_18
    16a3:	b9 00 03 00 00       	mov    ecx,0x300
    16a8:	89 e6                	mov    esi,esp
    16aa:	8d bc 24 00 03 00 00 	lea    edi,[esp+0x300]
    16b1:	57                   	push   edi
    16b2:	89 c8                	mov    eax,ecx
    16b4:	c1 e9 02             	shr    ecx,0x2
    16b7:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
    16b9:	8a c8                	mov    cl,al
    16bb:	80 e1 03             	and    cl,0x3
    16be:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
    16c0:	5f                   	pop    edi
    16c1:	8b bc 24 14 09 00 00 	mov    edi,DWORD PTR [esp+0x914]
    16c8:	b2 01                	mov    dl,0x1
    16ca:	81 c7 00 03 00 00    	add    edi,0x300
    16d0:	88 94 24 74 09 00 00 	mov    BYTE PTR [esp+0x974],dl
    16d7:	89 bc 24 14 09 00 00 	mov    DWORD PTR [esp+0x914],edi
compress_fst_branch_18:
    16de:	8b 94 24 40 07 00 00 	mov    edx,DWORD PTR [esp+0x740]
    16e5:	8b 84 24 44 07 00 00 	mov    eax,DWORD PTR [esp+0x744]
    16ec:	c1 ea 02             	shr    edx,0x2
    16ef:	c1 e8 02             	shr    eax,0x2
    16f2:	0f af c2             	imul   eax,edx
    16f5:	6b d8 2c             	imul   ebx,eax,0x2c
    16f8:	31 d2                	xor    edx,edx
    16fa:	a1 70 7e 01 00       	mov    eax,ds:@obj3:block_list                                      ; fixup: num: 213, src obj: 1, src ofs: 0x16fb, dst obj: 3, dst ofs: 0x17e70
    16ff:	e8 cc fc 06 00       	call   memset_
    1704:	8b 84 24 b0 06 00 00 	mov    eax,DWORD PTR [esp+0x6b0]
    170b:	89 84 24 dc 08 00 00 	mov    DWORD PTR [esp+0x8dc],eax
    1712:	8b 84 24 74 07 00 00 	mov    eax,DWORD PTR [esp+0x774]
    1719:	89 84 24 e0 08 00 00 	mov    DWORD PTR [esp+0x8e0],eax
    1720:	b8 04 00 00 00       	mov    eax,0x4
    1725:	e8 69 fd 06 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
    172a:	89 84 24 40 09 00 00 	mov    DWORD PTR [esp+0x940],eax
    1731:	85 c0                	test   eax,eax
    1733:	75 0f                	jne    compress_fst_branch_19
    1735:	bb 05 03 00 00       	mov    ebx,@obj3:fst_cpp_variable_9                                 ; fixup: num: 212, src obj: 1, src ofs: 0x1736, dst obj: 3, dst ofs: 0x305
    173a:	ba 18 01 00 00       	mov    edx,0x118
    173f:	e8 ec 68 03 00       	call   _error_report
compress_fst_branch_19:
    1744:	31 ed                	xor    ebp,ebp
    1746:	8b 94 24 44 07 00 00 	mov    edx,DWORD PTR [esp+0x744]
    174d:	89 ac 24 00 09 00 00 	mov    DWORD PTR [esp+0x900],ebp
    1754:	89 ac 24 d0 08 00 00 	mov    DWORD PTR [esp+0x8d0],ebp
    175b:	85 d2                	test   edx,edx
    175d:	0f 86 ff 0c 00 00    	jbe    compress_fst_branch_64
    1763:	8b 84 24 40 09 00 00 	mov    eax,DWORD PTR [esp+0x940]
    176a:	83 c0 02             	add    eax,0x2
    176d:	89 84 24 1c 09 00 00 	mov    DWORD PTR [esp+0x91c],eax
compress_fst_branch_20:
    1774:	31 c0                	xor    eax,eax
    1776:	8b 94 24 40 07 00 00 	mov    edx,DWORD PTR [esp+0x740]
    177d:	89 84 24 10 09 00 00 	mov    DWORD PTR [esp+0x910],eax
    1784:	85 d2                	test   edx,edx
    1786:	0f 87 4c 00 00 00    	ja     compress_fst_branch_22
compress_fst_branch_21:
    178c:	8b 84 24 40 07 00 00 	mov    eax,DWORD PTR [esp+0x740]
    1793:	8b 9c 24 00 09 00 00 	mov    ebx,DWORD PTR [esp+0x900]
    179a:	8b 8c 24 dc 08 00 00 	mov    ecx,DWORD PTR [esp+0x8dc]
    17a1:	8b b4 24 e0 08 00 00 	mov    esi,DWORD PTR [esp+0x8e0]
    17a8:	8b bc 24 44 07 00 00 	mov    edi,DWORD PTR [esp+0x744]
    17af:	83 c3 04             	add    ebx,0x4
    17b2:	8d 04 40             	lea    eax,[eax+eax*2]
    17b5:	89 9c 24 00 09 00 00 	mov    DWORD PTR [esp+0x900],ebx
    17bc:	01 c1                	add    ecx,eax
    17be:	01 c6                	add    esi,eax
    17c0:	89 8c 24 dc 08 00 00 	mov    DWORD PTR [esp+0x8dc],ecx
    17c7:	89 b4 24 e0 08 00 00 	mov    DWORD PTR [esp+0x8e0],esi
    17ce:	39 fb                	cmp    ebx,edi
    17d0:	0f 83 8c 0c 00 00    	jae    compress_fst_branch_64
    17d6:	eb 9c                	jmp    compress_fst_branch_20
compress_fst_branch_22:
    17d8:	8b 9c 24 d0 08 00 00 	mov    ebx,DWORD PTR [esp+0x8d0]
    17df:	6b c3 2c             	imul   eax,ebx,0x2c
    17e2:	89 84 24 34 09 00 00 	mov    DWORD PTR [esp+0x934],eax
compress_fst_branch_23:
    17e9:	8b 84 24 40 07 00 00 	mov    eax,DWORD PTR [esp+0x740]
    17f0:	89 84 24 f0 08 00 00 	mov    DWORD PTR [esp+0x8f0],eax
    17f7:	b8 10 00 00 00       	mov    eax,0x10
    17fc:	8b ac 24 dc 08 00 00 	mov    ebp,DWORD PTR [esp+0x8dc]
    1803:	e8 8b fc 06 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
    1808:	89 84 24 f4 08 00 00 	mov    DWORD PTR [esp+0x8f4],eax
    180f:	85 c0                	test   eax,eax
    1811:	75 0f                	jne    compress_fst_branch_24
    1813:	bb 1f 03 00 00       	mov    ebx,@obj3:fst_cpp_variable_10                                ; fixup: num: 214, src obj: 1, src ofs: 0x1814, dst obj: 3, dst ofs: 0x31f
    1818:	ba 25 03 00 00       	mov    edx,0x325
    181d:	e8 0e 68 03 00       	call   _error_report
compress_fst_branch_24:
    1822:	b9 04 00 00 00       	mov    ecx,0x4
    1827:	8b bc 24 f4 08 00 00 	mov    edi,DWORD PTR [esp+0x8f4]
    182e:	89 ee                	mov    esi,ebp
    1830:	57                   	push   edi
    1831:	89 c8                	mov    eax,ecx
    1833:	c1 e9 02             	shr    ecx,0x2
    1836:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
    1838:	8a c8                	mov    cl,al
    183a:	80 e1 03             	and    cl,0x3
    183d:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
    183f:	5f                   	pop    edi
    1840:	8b 8c 24 f0 08 00 00 	mov    ecx,DWORD PTR [esp+0x8f0]
    1847:	83 c7 04             	add    edi,0x4
    184a:	01 cd                	add    ebp,ecx
    184c:	b9 04 00 00 00       	mov    ecx,0x4
    1851:	89 ee                	mov    esi,ebp
    1853:	57                   	push   edi
    1854:	89 c8                	mov    eax,ecx
    1856:	c1 e9 02             	shr    ecx,0x2
    1859:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
    185b:	8a c8                	mov    cl,al
    185d:	80 e1 03             	and    cl,0x3
    1860:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
    1862:	5f                   	pop    edi
    1863:	8b b4 24 f0 08 00 00 	mov    esi,DWORD PTR [esp+0x8f0]
    186a:	8b bc 24 f4 08 00 00 	mov    edi,DWORD PTR [esp+0x8f4]
    1871:	b9 04 00 00 00       	mov    ecx,0x4
    1876:	01 f5                	add    ebp,esi
    1878:	83 c7 08             	add    edi,0x8
    187b:	89 ee                	mov    esi,ebp
    187d:	57                   	push   edi
    187e:	89 c8                	mov    eax,ecx
    1880:	c1 e9 02             	shr    ecx,0x2
    1883:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
    1885:	8a c8                	mov    cl,al
    1887:	80 e1 03             	and    cl,0x3
    188a:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
    188c:	5f                   	pop    edi
    188d:	8b bc 24 f0 08 00 00 	mov    edi,DWORD PTR [esp+0x8f0]
    1894:	8d 34 2f             	lea    esi,[edi+ebp*1]
    1897:	8b bc 24 f4 08 00 00 	mov    edi,DWORD PTR [esp+0x8f4]
    189e:	b9 04 00 00 00       	mov    ecx,0x4
    18a3:	83 c7 0c             	add    edi,0xc
    18a6:	8b ac 24 34 09 00 00 	mov    ebp,DWORD PTR [esp+0x934]
    18ad:	57                   	push   edi
    18ae:	89 c8                	mov    eax,ecx
    18b0:	c1 e9 02             	shr    ecx,0x2
    18b3:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
    18b5:	8a c8                	mov    cl,al
    18b7:	80 e1 03             	and    cl,0x3
    18ba:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
    18bc:	5f                   	pop    edi
    18bd:	a1 70 7e 01 00       	mov    eax,ds:@obj3:block_list                                      ; fixup: num: 216, src obj: 1, src ofs: 0x18be, dst obj: 3, dst ofs: 0x17e70
    18c2:	01 e8                	add    eax,ebp
    18c4:	8b 94 24 f4 08 00 00 	mov    edx,DWORD PTR [esp+0x8f4]
    18cb:	89 50 0c             	mov    DWORD PTR [eax+0xc],edx
    18ce:	8d 84 24 00 03 00 00 	lea    eax,[esp+0x300]
    18d5:	89 94 24 f8 08 00 00 	mov    DWORD PTR [esp+0x8f8],edx
    18dc:	89 84 24 20 09 00 00 	mov    DWORD PTR [esp+0x920],eax
    18e3:	b8 04 00 00 00       	mov    eax,0x4
    18e8:	30 c9                	xor    cl,cl
    18ea:	e8 a4 fb 06 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
    18ef:	89 84 24 fc 08 00 00 	mov    DWORD PTR [esp+0x8fc],eax
    18f6:	85 c0                	test   eax,eax
    18f8:	75 0f                	jne    compress_fst_branch_25
    18fa:	bb 3a 03 00 00       	mov    ebx,@obj3:fst_cpp_variable_11                                ; fixup: num: 215, src obj: 1, src ofs: 0x18fb, dst obj: 3, dst ofs: 0x33a
    18ff:	ba 36 03 00 00       	mov    edx,0x336
    1904:	e8 27 67 03 00       	call   _error_report
compress_fst_branch_25:
    1909:	8b ac 24 fc 08 00 00 	mov    ebp,DWORD PTR [esp+0x8fc]
    1910:	bb 10 00 00 00       	mov    ebx,0x10
    1915:	ba 01 00 00 00       	mov    edx,0x1
    191a:	8d 84 24 5c 07 00 00 	lea    eax,[esp+0x75c]
    1921:	8b bc 24 f8 08 00 00 	mov    edi,DWORD PTR [esp+0x8f8]
    1928:	e8 a3 fa 06 00       	call   memset_
    192d:	b8 01 00 00 00       	mov    eax,0x1
    1932:	83 c5 02             	add    ebp,0x2
    1935:	01 c7                	add    edi,eax
    1937:	31 d2                	xor    edx,edx
    1939:	85 c0                	test   eax,eax
    193b:	7f 0a                	jg     compress_fst_branch_27
    193d:	eb 31                	jmp    compress_fst_branch_29
compress_fst_branch_26:
    193f:	42                   	inc    edx
    1940:	43                   	inc    ebx
    1941:	39 c2                	cmp    edx,eax
    1943:	7c 0b                	jl     compress_fst_branch_28
    1945:	eb 29                	jmp    compress_fst_branch_29
compress_fst_branch_27:
    1947:	8b 9c 24 f8 08 00 00 	mov    ebx,DWORD PTR [esp+0x8f8]
    194e:	89 fe                	mov    esi,edi
compress_fst_branch_28:
    1950:	8a 2e                	mov    ch,BYTE PTR [esi]
    1952:	3a 2b                	cmp    ch,BYTE PTR [ebx]
    1954:	75 e9                	jne    compress_fst_branch_26
    1956:	30 ed                	xor    ch,ch
    1958:	88 ac 04 5c 07 00 00 	mov    BYTE PTR [esp+eax*1+0x75c],ch
    195f:	fe 84 14 5c 07 00 00 	inc    BYTE PTR [esp+edx*1+0x75c]
    1966:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    196c:	8d 54 22 00          	lea    edx,[edx+eiz*1+0x0]
compress_fst_branch_29:
    1970:	40                   	inc    eax
    1971:	47                   	inc    edi
    1972:	83 f8 10             	cmp    eax,0x10
    1975:	7d 08                	jge    compress_fst_branch_30
    1977:	31 d2                	xor    edx,edx
    1979:	85 c0                	test   eax,eax
    197b:	7f ca                	jg     compress_fst_branch_27
    197d:	eb f1                	jmp    compress_fst_branch_29
compress_fst_branch_30:
    197f:	8b b4 24 fc 08 00 00 	mov    esi,DWORD PTR [esp+0x8fc]
    1986:	8d 46 02             	lea    eax,[esi+0x2]
    1989:	89 84 24 30 09 00 00 	mov    DWORD PTR [esp+0x930],eax
    1990:	31 c0                	xor    eax,eax
    1992:	eb 3c                	jmp    compress_fst_branch_33
compress_fst_branch_31:
    1994:	31 c0                	xor    eax,eax
    1996:	8b 94 24 f8 08 00 00 	mov    edx,DWORD PTR [esp+0x8f8]
    199d:	88 c8                	mov    al,cl
    199f:	8a 14 02             	mov    dl,BYTE PTR [edx+eax*1]
    19a2:	30 ff                	xor    bh,bh
    19a4:	88 16                	mov    BYTE PTR [esi],dl
    19a6:	46                   	inc    esi
    19a7:	88 bc 04 5c 07 00 00 	mov    BYTE PTR [esp+eax*1+0x75c],bh
    19ae:	3b b4 24 30 09 00 00 	cmp    esi,DWORD PTR [esp+0x930]
    19b5:	74 31                	je     compress_fst_branch_34
    19b7:	31 c0                	xor    eax,eax
    19b9:	eb 15                	jmp    compress_fst_branch_33
    19bb:	8d 40 00             	lea    eax,[eax+0x0]
    19be:	8b c9                	mov    ecx,ecx
compress_fst_branch_32:
    19c0:	40                   	inc    eax
    19c1:	83 f8 10             	cmp    eax,0x10
    19c4:	7d ce                	jge    compress_fst_branch_31
    19c6:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    19cc:	8d 54 22 00          	lea    edx,[edx+eiz*1+0x0]
compress_fst_branch_33:
    19d0:	31 db                	xor    ebx,ebx
    19d2:	88 cb                	mov    bl,cl
    19d4:	8a 94 04 5c 07 00 00 	mov    dl,BYTE PTR [esp+eax*1+0x75c]
    19db:	3a 94 1c 5c 07 00 00 	cmp    dl,BYTE PTR [esp+ebx*1+0x75c]
    19e2:	76 dc                	jbe    compress_fst_branch_32
    19e4:	88 c1                	mov    cl,al
    19e6:	eb d8                	jmp    compress_fst_branch_32
compress_fst_branch_34:
    19e8:	8b 94 24 f8 08 00 00 	mov    edx,DWORD PTR [esp+0x8f8]
    19ef:	8d 4a 10             	lea    ecx,[edx+0x10]
    19f2:	e9 39 02 00 00       	jmp    compress_fst_branch_41
compress_fst_branch_35:
    19f7:	31 c0                	xor    eax,eax
    19f9:	8a 84 24 58 09 00 00 	mov    al,BYTE PTR [esp+0x958]
    1a00:	89 84 24 70 09 00 00 	mov    DWORD PTR [esp+0x970],eax
    1a07:	df 84 24 70 09 00 00 	fild   WORD PTR [esp+0x970]
    1a0e:	31 c0                	xor    eax,eax
    1a10:	8a 84 24 48 09 00 00 	mov    al,BYTE PTR [esp+0x948]
    1a17:	89 84 24 70 09 00 00 	mov    DWORD PTR [esp+0x970],eax
    1a1e:	df 84 24 70 09 00 00 	fild   WORD PTR [esp+0x970]
    1a25:	31 c0                	xor    eax,eax
    1a27:	8a 84 24 59 09 00 00 	mov    al,BYTE PTR [esp+0x959]
    1a2e:	89 84 24 70 09 00 00 	mov    DWORD PTR [esp+0x970],eax
    1a35:	df 84 24 70 09 00 00 	fild   WORD PTR [esp+0x970]
    1a3c:	31 c0                	xor    eax,eax
    1a3e:	8a 84 24 49 09 00 00 	mov    al,BYTE PTR [esp+0x949]
    1a45:	89 84 24 70 09 00 00 	mov    DWORD PTR [esp+0x970],eax
    1a4c:	df 84 24 70 09 00 00 	fild   WORD PTR [esp+0x970]
    1a53:	31 c0                	xor    eax,eax
    1a55:	8a 84 24 5a 09 00 00 	mov    al,BYTE PTR [esp+0x95a]
    1a5c:	89 84 24 70 09 00 00 	mov    DWORD PTR [esp+0x970],eax
    1a63:	df 84 24 70 09 00 00 	fild   WORD PTR [esp+0x970]
    1a6a:	31 c0                	xor    eax,eax
    1a6c:	8a 84 24 4a 09 00 00 	mov    al,BYTE PTR [esp+0x94a]
    1a73:	89 84 24 70 09 00 00 	mov    DWORD PTR [esp+0x970],eax
    1a7a:	df 84 24 70 09 00 00 	fild   WORD PTR [esp+0x970]
    1a81:	d9 cd                	fxch   st(5)
    1a83:	de e4                	fsubrp st(4),st
    1a85:	d9 cb                	fxch   st(3)
    1a87:	d8 c8                	fmul   st,st(0)
    1a89:	d9 ca                	fxch   st(2)
    1a8b:	de e1                	fsubrp st(1),st
    1a8d:	d8 c8                	fmul   st,st(0)
    1a8f:	de c1                	faddp  st(1),st
    1a91:	d9 c9                	fxch   st(1)
    1a93:	de e2                	fsubrp st(2),st
    1a95:	d9 c9                	fxch   st(1)
    1a97:	d8 c8                	fmul   st,st(0)
    1a99:	de c1                	faddp  st(1),st
    1a9b:	83 ec 08             	sub    esp,0x8
    1a9e:	dd 1c 24             	fstp   QWORD PTR [esp]
    1aa1:	e8 f0 fe 06 00       	call   sqrt_
    1aa6:	dd 9c 24 f0 07 00 00 	fstp   QWORD PTR [esp+0x7f0]
compress_fst_branch_36:
    1aad:	8b 84 24 f0 07 00 00 	mov    eax,DWORD PTR [esp+0x7f0]
    1ab4:	89 84 24 30 08 00 00 	mov    DWORD PTR [esp+0x830],eax
    1abb:	8b 84 24 f4 07 00 00 	mov    eax,DWORD PTR [esp+0x7f4]
    1ac2:	8b 9c 24 fc 08 00 00 	mov    ebx,DWORD PTR [esp+0x8fc]
    1ac9:	89 84 24 34 08 00 00 	mov    DWORD PTR [esp+0x834],eax
    1ad0:	31 c0                	xor    eax,eax
    1ad2:	8b b4 24 20 09 00 00 	mov    esi,DWORD PTR [esp+0x920]
    1ad9:	8a 43 01             	mov    al,BYTE PTR [ebx+0x1]
    1adc:	31 db                	xor    ebx,ebx
    1ade:	8d bc 24 64 09 00 00 	lea    edi,[esp+0x964]
    1ae5:	8a 1a                	mov    bl,BYTE PTR [edx]
    1ae7:	8d 04 40             	lea    eax,[eax+eax*2]
    1aea:	8d 1c 5b             	lea    ebx,[ebx+ebx*2]
    1aed:	01 f0                	add    eax,esi
    1aef:	01 de                	add    esi,ebx
    1af1:	66 a5                	movs   WORD PTR es:[edi],WORD PTR ds:[esi]
    1af3:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
    1af4:	8d bc 24 54 09 00 00 	lea    edi,[esp+0x954]
    1afb:	89 c6                	mov    esi,eax
    1afd:	8a 84 24 64 09 00 00 	mov    al,BYTE PTR [esp+0x964]
    1b04:	66 a5                	movs   WORD PTR es:[edi],WORD PTR ds:[esi]
    1b06:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
    1b07:	3a 84 24 54 09 00 00 	cmp    al,BYTE PTR [esp+0x954]
    1b0e:	75 35                	jne    compress_fst_branch_37
    1b10:	8a 84 24 65 09 00 00 	mov    al,BYTE PTR [esp+0x965]
    1b17:	3a 84 24 55 09 00 00 	cmp    al,BYTE PTR [esp+0x955]
    1b1e:	75 25                	jne    compress_fst_branch_37
    1b20:	8a 84 24 66 09 00 00 	mov    al,BYTE PTR [esp+0x966]
    1b27:	3a 84 24 56 09 00 00 	cmp    al,BYTE PTR [esp+0x956]
    1b2e:	75 15                	jne    compress_fst_branch_37
    1b30:	31 ff                	xor    edi,edi
    1b32:	89 bc 24 70 08 00 00 	mov    DWORD PTR [esp+0x870],edi
    1b39:	89 bc 24 74 08 00 00 	mov    DWORD PTR [esp+0x874],edi
    1b40:	e9 b6 00 00 00       	jmp    compress_fst_branch_38
compress_fst_branch_37:
    1b45:	31 c0                	xor    eax,eax
    1b47:	8a 84 24 64 09 00 00 	mov    al,BYTE PTR [esp+0x964]
    1b4e:	89 84 24 70 09 00 00 	mov    DWORD PTR [esp+0x970],eax
    1b55:	df 84 24 70 09 00 00 	fild   WORD PTR [esp+0x970]
    1b5c:	31 c0                	xor    eax,eax
    1b5e:	8a 84 24 54 09 00 00 	mov    al,BYTE PTR [esp+0x954]
    1b65:	89 84 24 70 09 00 00 	mov    DWORD PTR [esp+0x970],eax
    1b6c:	df 84 24 70 09 00 00 	fild   WORD PTR [esp+0x970]
    1b73:	31 c0                	xor    eax,eax
    1b75:	8a 84 24 65 09 00 00 	mov    al,BYTE PTR [esp+0x965]
    1b7c:	89 84 24 70 09 00 00 	mov    DWORD PTR [esp+0x970],eax
    1b83:	df 84 24 70 09 00 00 	fild   WORD PTR [esp+0x970]
    1b8a:	31 c0                	xor    eax,eax
    1b8c:	8a 84 24 55 09 00 00 	mov    al,BYTE PTR [esp+0x955]
    1b93:	89 84 24 70 09 00 00 	mov    DWORD PTR [esp+0x970],eax
    1b9a:	df 84 24 70 09 00 00 	fild   WORD PTR [esp+0x970]
    1ba1:	31 c0                	xor    eax,eax
    1ba3:	8a 84 24 66 09 00 00 	mov    al,BYTE PTR [esp+0x966]
    1baa:	89 84 24 70 09 00 00 	mov    DWORD PTR [esp+0x970],eax
    1bb1:	df 84 24 70 09 00 00 	fild   WORD PTR [esp+0x970]
    1bb8:	31 c0                	xor    eax,eax
    1bba:	8a 84 24 56 09 00 00 	mov    al,BYTE PTR [esp+0x956]
    1bc1:	89 84 24 70 09 00 00 	mov    DWORD PTR [esp+0x970],eax
    1bc8:	df 84 24 70 09 00 00 	fild   WORD PTR [esp+0x970]
    1bcf:	d9 cd                	fxch   st(5)
    1bd1:	de e4                	fsubrp st(4),st
    1bd3:	d9 cb                	fxch   st(3)
    1bd5:	d8 c8                	fmul   st,st(0)
    1bd7:	d9 ca                	fxch   st(2)
    1bd9:	de e1                	fsubrp st(1),st
    1bdb:	d8 c8                	fmul   st,st(0)
    1bdd:	de c1                	faddp  st(1),st
    1bdf:	d9 c9                	fxch   st(1)
    1be1:	de e2                	fsubrp st(2),st
    1be3:	d9 c9                	fxch   st(1)
    1be5:	d8 c8                	fmul   st,st(0)
    1be7:	de c1                	faddp  st(1),st
    1be9:	83 ec 08             	sub    esp,0x8
    1bec:	dd 1c 24             	fstp   QWORD PTR [esp]
    1bef:	e8 a2 fd 06 00       	call   sqrt_
    1bf4:	dd 9c 24 70 08 00 00 	fstp   QWORD PTR [esp+0x870]
compress_fst_branch_38:
    1bfb:	dd 84 24 30 08 00 00 	fld    QWORD PTR [esp+0x830]
    1c02:	dc 9c 24 70 08 00 00 	fcomp  QWORD PTR [esp+0x870]
    1c09:	df e0                	fnstsw ax
    1c0b:	9e                   	sahf   
    1c0c:	76 06                	jbe    compress_fst_branch_39
    1c0e:	80 4d 00 01          	or     BYTE PTR [ebp+0x0],0x1
    1c12:	eb 0c                	jmp    compress_fst_branch_40
compress_fst_branch_39:
    1c14:	80 65 00 fe          	and    BYTE PTR [ebp+0x0],0xfe
    1c18:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    1c1e:	8b d2                	mov    edx,edx
compress_fst_branch_40:
    1c20:	42                   	inc    edx
    1c21:	39 ca                	cmp    edx,ecx
    1c23:	0f 84 97 00 00 00    	je     compress_fst_branch_42
    1c29:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    1c2f:	90                   	nop
compress_fst_branch_41:
    1c30:	66 8b 5d 00          	mov    bx,WORD PTR [ebp+0x0]
    1c34:	01 db                	add    ebx,ebx
    1c36:	66 89 5d 00          	mov    WORD PTR [ebp+0x0],bx
    1c3a:	8b 9c 24 fc 08 00 00 	mov    ebx,DWORD PTR [esp+0x8fc]
    1c41:	0f b6 32             	movzx  esi,BYTE PTR [edx]
    1c44:	31 c0                	xor    eax,eax
    1c46:	8d 34 76             	lea    esi,[esi+esi*2]
    1c49:	8a 03                	mov    al,BYTE PTR [ebx]
    1c4b:	8b 9c 24 20 09 00 00 	mov    ebx,DWORD PTR [esp+0x920]
    1c52:	8d bc 24 58 09 00 00 	lea    edi,[esp+0x958]
    1c59:	01 de                	add    esi,ebx
    1c5b:	8d 04 40             	lea    eax,[eax+eax*2]
    1c5e:	66 a5                	movs   WORD PTR es:[edi],WORD PTR ds:[esi]
    1c60:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
    1c61:	01 d8                	add    eax,ebx
    1c63:	8d bc 24 48 09 00 00 	lea    edi,[esp+0x948]
    1c6a:	89 c6                	mov    esi,eax
    1c6c:	8a 84 24 58 09 00 00 	mov    al,BYTE PTR [esp+0x958]
    1c73:	66 a5                	movs   WORD PTR es:[edi],WORD PTR ds:[esi]
    1c75:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
    1c76:	3a 84 24 48 09 00 00 	cmp    al,BYTE PTR [esp+0x948]
    1c7d:	0f 85 74 fd ff ff    	jne    compress_fst_branch_35
    1c83:	8a 84 24 59 09 00 00 	mov    al,BYTE PTR [esp+0x959]
    1c8a:	3a 84 24 49 09 00 00 	cmp    al,BYTE PTR [esp+0x949]
    1c91:	0f 85 60 fd ff ff    	jne    compress_fst_branch_35
    1c97:	8a 84 24 5a 09 00 00 	mov    al,BYTE PTR [esp+0x95a]
    1c9e:	3a 84 24 4a 09 00 00 	cmp    al,BYTE PTR [esp+0x94a]
    1ca5:	0f 85 4c fd ff ff    	jne    compress_fst_branch_35
    1cab:	31 c0                	xor    eax,eax
    1cad:	89 84 24 f0 07 00 00 	mov    DWORD PTR [esp+0x7f0],eax
    1cb4:	89 84 24 f4 07 00 00 	mov    DWORD PTR [esp+0x7f4],eax
    1cbb:	e9 ed fd ff ff       	jmp    compress_fst_branch_36
compress_fst_branch_42:
    1cc0:	8b 94 24 34 09 00 00 	mov    edx,DWORD PTR [esp+0x934]
    1cc7:	a1 70 7e 01 00       	mov    eax,ds:@obj3:block_list                                      ; fixup: num: 219, src obj: 1, src ofs: 0x1cc8, dst obj: 3, dst ofs: 0x17e70
    1ccc:	b9 04 00 00 00       	mov    ecx,0x4
    1cd1:	01 d0                	add    eax,edx
    1cd3:	8b 94 24 fc 08 00 00 	mov    edx,DWORD PTR [esp+0x8fc]
    1cda:	8b bc 24 40 09 00 00 	mov    edi,DWORD PTR [esp+0x940]
    1ce1:	89 d6                	mov    esi,edx
    1ce3:	89 50 10             	mov    DWORD PTR [eax+0x10],edx
    1ce6:	57                   	push   edi
    1ce7:	89 c8                	mov    eax,ecx
    1ce9:	c1 e9 02             	shr    ecx,0x2
    1cec:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
    1cee:	8a c8                	mov    cl,al
    1cf0:	80 e1 03             	and    cl,0x3
    1cf3:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
    1cf5:	5f                   	pop    edi
    1cf6:	b8 10 00 00 00       	mov    eax,0x10
    1cfb:	8b b4 24 1c 09 00 00 	mov    esi,DWORD PTR [esp+0x91c]
    1d02:	e8 8c f7 06 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
    1d07:	89 c5                	mov    ebp,eax
    1d09:	85 c0                	test   eax,eax
    1d0b:	75 0f                	jne    compress_fst_branch_43
    1d0d:	bb 56 03 00 00       	mov    ebx,@obj3:fst_cpp_variable_12                                ; fixup: num: 218, src obj: 1, src ofs: 0x1d0e, dst obj: 3, dst ofs: 0x356
    1d12:	ba 5e 03 00 00       	mov    edx,0x35e
    1d17:	e8 14 63 03 00       	call   _error_report
compress_fst_branch_43:
    1d1c:	8d 45 0f             	lea    eax,[ebp+0xf]
    1d1f:	8d 4d ff             	lea    ecx,[ebp-0x1]
    1d22:	eb 1c                	jmp    compress_fst_branch_46
compress_fst_branch_44:
    1d24:	8a 17                	mov    dl,BYTE PTR [edi]
    1d26:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    1d2c:	8d 54 22 00          	lea    edx,[edx+eiz*1+0x0]
compress_fst_branch_45:
    1d30:	88 10                	mov    BYTE PTR [eax],dl
    1d32:	66 8b 16             	mov    dx,WORD PTR [esi]
    1d35:	66 d1 ea             	shr    dx,1
    1d38:	48                   	dec    eax
    1d39:	66 89 16             	mov    WORD PTR [esi],dx
    1d3c:	39 c8                	cmp    eax,ecx
    1d3e:	74 15                	je     compress_fst_branch_47
compress_fst_branch_46:
    1d40:	66 8b 16             	mov    dx,WORD PTR [esi]
    1d43:	30 f6                	xor    dh,dh
    1d45:	80 e2 01             	and    dl,0x1
    1d48:	81 e2 ff ff 00 00    	and    edx,0xffff
    1d4e:	74 d4                	je     compress_fst_branch_44
    1d50:	8a 57 01             	mov    dl,BYTE PTR [edi+0x1]
    1d53:	eb db                	jmp    compress_fst_branch_45
compress_fst_branch_47:
    1d55:	8b 94 24 34 09 00 00 	mov    edx,DWORD PTR [esp+0x934]
    1d5c:	a1 70 7e 01 00       	mov    eax,ds:@obj3:block_list                                      ; fixup: num: 217, src obj: 1, src ofs: 0x1d5d, dst obj: 3, dst ofs: 0x17e70
    1d61:	01 d0                	add    eax,edx
    1d63:	89 68 08             	mov    DWORD PTR [eax+0x8],ebp
    1d66:	8b 84 24 40 07 00 00 	mov    eax,DWORD PTR [esp+0x740]
    1d6d:	89 84 24 04 09 00 00 	mov    DWORD PTR [esp+0x904],eax
    1d74:	b8 10 00 00 00       	mov    eax,0x10
    1d79:	8b ac 24 e0 08 00 00 	mov    ebp,DWORD PTR [esp+0x8e0]
    1d80:	e8 0e f7 06 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
    1d85:	89 84 24 08 09 00 00 	mov    DWORD PTR [esp+0x908],eax
    1d8c:	85 c0                	test   eax,eax
    1d8e:	75 0f                	jne    compress_fst_branch_48
    1d90:	bb 1f 03 00 00       	mov    ebx,@obj3:fst_cpp_variable_10                                ; fixup: num: 220, src obj: 1, src ofs: 0x1d91, dst obj: 3, dst ofs: 0x31f
    1d95:	ba 25 03 00 00       	mov    edx,0x325
    1d9a:	e8 91 62 03 00       	call   _error_report
compress_fst_branch_48:
    1d9f:	b9 04 00 00 00       	mov    ecx,0x4
    1da4:	8b bc 24 08 09 00 00 	mov    edi,DWORD PTR [esp+0x908]
    1dab:	89 ee                	mov    esi,ebp
    1dad:	8b 9c 24 04 09 00 00 	mov    ebx,DWORD PTR [esp+0x904]
    1db4:	57                   	push   edi
    1db5:	89 c8                	mov    eax,ecx
    1db7:	c1 e9 02             	shr    ecx,0x2
    1dba:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
    1dbc:	8a c8                	mov    cl,al
    1dbe:	80 e1 03             	and    cl,0x3
    1dc1:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
    1dc3:	5f                   	pop    edi
    1dc4:	b9 04 00 00 00       	mov    ecx,0x4
    1dc9:	01 dd                	add    ebp,ebx
    1dcb:	83 c7 04             	add    edi,0x4
    1dce:	89 ee                	mov    esi,ebp
    1dd0:	57                   	push   edi
    1dd1:	89 c8                	mov    eax,ecx
    1dd3:	c1 e9 02             	shr    ecx,0x2
    1dd6:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
    1dd8:	8a c8                	mov    cl,al
    1dda:	80 e1 03             	and    cl,0x3
    1ddd:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
    1ddf:	5f                   	pop    edi
    1de0:	8b bc 24 08 09 00 00 	mov    edi,DWORD PTR [esp+0x908]
    1de7:	b9 04 00 00 00       	mov    ecx,0x4
    1dec:	01 dd                	add    ebp,ebx
    1dee:	83 c7 08             	add    edi,0x8
    1df1:	89 ee                	mov    esi,ebp
    1df3:	57                   	push   edi
    1df4:	89 c8                	mov    eax,ecx
    1df6:	c1 e9 02             	shr    ecx,0x2
    1df9:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
    1dfb:	8a c8                	mov    cl,al
    1dfd:	80 e1 03             	and    cl,0x3
    1e00:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
    1e02:	5f                   	pop    edi
    1e03:	8b bc 24 08 09 00 00 	mov    edi,DWORD PTR [esp+0x908]
    1e0a:	b9 04 00 00 00       	mov    ecx,0x4
    1e0f:	8d 34 2b             	lea    esi,[ebx+ebp*1]
    1e12:	83 c7 0c             	add    edi,0xc
    1e15:	57                   	push   edi
    1e16:	89 c8                	mov    eax,ecx
    1e18:	c1 e9 02             	shr    ecx,0x2
    1e1b:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
    1e1d:	8a c8                	mov    cl,al
    1e1f:	80 e1 03             	and    cl,0x3
    1e22:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
    1e24:	5f                   	pop    edi
    1e25:	8b 84 24 08 09 00 00 	mov    eax,DWORD PTR [esp+0x908]
    1e2c:	8b bc 24 34 09 00 00 	mov    edi,DWORD PTR [esp+0x934]
    1e33:	89 84 24 d8 08 00 00 	mov    DWORD PTR [esp+0x8d8],eax
    1e3a:	a1 70 7e 01 00       	mov    eax,ds:@obj3:block_list                                      ; fixup: num: 223, src obj: 1, src ofs: 0x1e3b, dst obj: 3, dst ofs: 0x17e70
    1e3f:	01 f8                	add    eax,edi
    1e41:	b9 10 00 00 00       	mov    ecx,0x10
    1e46:	c6 00 00             	mov    BYTE PTR [eax],0x0
    1e49:	8b bc 24 08 09 00 00 	mov    edi,DWORD PTR [esp+0x908]
    1e50:	8b 70 0c             	mov    esi,DWORD PTR [eax+0xc]
    1e53:	c7 40 04 10 00 00 00 	mov    DWORD PTR [eax+0x4],0x10
    1e5a:	31 c0                	xor    eax,eax
    1e5c:	f3 a6                	repz cmps BYTE PTR ds:[esi],BYTE PTR es:[edi]
    1e5e:	74 05                	je     compress_fst_branch_49
    1e60:	19 c0                	sbb    eax,eax
    1e62:	83 d8 ff             	sbb    eax,0xffffffff
compress_fst_branch_49:
    1e65:	85 c0                	test   eax,eax
    1e67:	0f 94 c0             	sete   al
    1e6a:	84 c0                	test   al,al
    1e6c:	74 2a                	je     compress_fst_branch_50
    1e6e:	8b 9c 24 34 09 00 00 	mov    ebx,DWORD PTR [esp+0x934]
    1e75:	a1 70 7e 01 00       	mov    eax,ds:@obj3:block_list                                      ; fixup: num: 222, src obj: 1, src ofs: 0x1e76, dst obj: 3, dst ofs: 0x17e70
    1e7a:	01 d8                	add    eax,ebx
    1e7c:	c6 40 01 00          	mov    BYTE PTR [eax+0x1],0x0
    1e80:	8b 8c 24 14 09 00 00 	mov    ecx,DWORD PTR [esp+0x914]
    1e87:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
    1e8a:	29 c1                	sub    ecx,eax
    1e8c:	89 8c 24 14 09 00 00 	mov    DWORD PTR [esp+0x914],ecx
    1e93:	e9 57 05 00 00       	jmp    compress_fst_branch_63
compress_fst_branch_50:
    1e98:	8b ac 24 34 09 00 00 	mov    ebp,DWORD PTR [esp+0x934]
    1e9f:	8d 8c 24 00 03 00 00 	lea    ecx,[esp+0x300]
    1ea6:	8b 1d 70 7e 01 00    	mov    ebx,DWORD PTR ds:@obj3:block_list                            ; fixup: num: 221, src obj: 1, src ofs: 0x1ea8, dst obj: 3, dst ofs: 0x17e70
    1eac:	31 c0                	xor    eax,eax
    1eae:	31 d2                	xor    edx,edx
    1eb0:	01 eb                	add    ebx,ebp
    1eb2:	89 84 24 b8 08 00 00 	mov    DWORD PTR [esp+0x8b8],eax
    1eb9:	89 84 24 bc 08 00 00 	mov    DWORD PTR [esp+0x8bc],eax
    1ec0:	c6 43 01 01          	mov    BYTE PTR [ebx+0x1],0x1
    1ec4:	8b ac 24 08 09 00 00 	mov    ebp,DWORD PTR [esp+0x908]
    1ecb:	8b 5b 0c             	mov    ebx,DWORD PTR [ebx+0xc]
    1ece:	e9 ed 00 00 00       	jmp    compress_fst_branch_53
compress_fst_branch_51:
    1ed3:	31 c0                	xor    eax,eax
    1ed5:	8a 84 24 44 09 00 00 	mov    al,BYTE PTR [esp+0x944]
    1edc:	89 84 24 70 09 00 00 	mov    DWORD PTR [esp+0x970],eax
    1ee3:	df 84 24 70 09 00 00 	fild   WORD PTR [esp+0x970]
    1eea:	31 c0                	xor    eax,eax
    1eec:	8a 84 24 5c 09 00 00 	mov    al,BYTE PTR [esp+0x95c]
    1ef3:	89 84 24 70 09 00 00 	mov    DWORD PTR [esp+0x970],eax
    1efa:	df 84 24 70 09 00 00 	fild   WORD PTR [esp+0x970]
    1f01:	31 c0                	xor    eax,eax
    1f03:	8a 84 24 45 09 00 00 	mov    al,BYTE PTR [esp+0x945]
    1f0a:	89 84 24 70 09 00 00 	mov    DWORD PTR [esp+0x970],eax
    1f11:	df 84 24 70 09 00 00 	fild   WORD PTR [esp+0x970]
    1f18:	31 c0                	xor    eax,eax
    1f1a:	8a 84 24 5d 09 00 00 	mov    al,BYTE PTR [esp+0x95d]
    1f21:	89 84 24 70 09 00 00 	mov    DWORD PTR [esp+0x970],eax
    1f28:	df 84 24 70 09 00 00 	fild   WORD PTR [esp+0x970]
    1f2f:	31 c0                	xor    eax,eax
    1f31:	8a 84 24 46 09 00 00 	mov    al,BYTE PTR [esp+0x946]
    1f38:	89 84 24 70 09 00 00 	mov    DWORD PTR [esp+0x970],eax
    1f3f:	df 84 24 70 09 00 00 	fild   WORD PTR [esp+0x970]
    1f46:	31 c0                	xor    eax,eax
    1f48:	8a 84 24 5e 09 00 00 	mov    al,BYTE PTR [esp+0x95e]
    1f4f:	89 84 24 70 09 00 00 	mov    DWORD PTR [esp+0x970],eax
    1f56:	df 84 24 70 09 00 00 	fild   WORD PTR [esp+0x970]
    1f5d:	d9 cd                	fxch   st(5)
    1f5f:	de e4                	fsubrp st(4),st
    1f61:	d9 cb                	fxch   st(3)
    1f63:	d8 c8                	fmul   st,st(0)
    1f65:	d9 ca                	fxch   st(2)
    1f67:	de e1                	fsubrp st(1),st
    1f69:	d8 c8                	fmul   st,st(0)
    1f6b:	de c1                	faddp  st(1),st
    1f6d:	d9 c9                	fxch   st(1)
    1f6f:	de e2                	fsubrp st(2),st
    1f71:	d9 c9                	fxch   st(1)
    1f73:	d8 c8                	fmul   st,st(0)
    1f75:	de c1                	faddp  st(1),st
    1f77:	83 ec 08             	sub    esp,0x8
    1f7a:	dd 1c 24             	fstp   QWORD PTR [esp]
    1f7d:	e8 14 fa 06 00       	call   sqrt_
    1f82:	dd 9c 24 38 08 00 00 	fstp   QWORD PTR [esp+0x838]
    1f89:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    1f8f:	90                   	nop
compress_fst_branch_52:
    1f90:	dd 84 24 b8 08 00 00 	fld    QWORD PTR [esp+0x8b8]
    1f97:	dc 84 24 38 08 00 00 	fadd   QWORD PTR [esp+0x838]
    1f9e:	43                   	inc    ebx
    1f9f:	45                   	inc    ebp
    1fa0:	42                   	inc    edx
    1fa1:	dd 9c 24 b8 08 00 00 	fstp   QWORD PTR [esp+0x8b8]
    1fa8:	83 fa 10             	cmp    edx,0x10
    1fab:	0f 8d 88 00 00 00    	jge    compress_fst_branch_54
    1fb1:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    1fb7:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
    1fbd:	8d 40 00             	lea    eax,[eax+0x0]
compress_fst_branch_53:
    1fc0:	8d bc 24 44 09 00 00 	lea    edi,[esp+0x944]
    1fc7:	0f b6 33             	movzx  esi,BYTE PTR [ebx]
    1fca:	31 c0                	xor    eax,eax
    1fcc:	8d 34 76             	lea    esi,[esi+esi*2]
    1fcf:	8a 45 00             	mov    al,BYTE PTR [ebp+0x0]
    1fd2:	01 ce                	add    esi,ecx
    1fd4:	8d 04 40             	lea    eax,[eax+eax*2]
    1fd7:	66 a5                	movs   WORD PTR es:[edi],WORD PTR ds:[esi]
    1fd9:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
    1fda:	01 c8                	add    eax,ecx
    1fdc:	8d bc 24 5c 09 00 00 	lea    edi,[esp+0x95c]
    1fe3:	89 c6                	mov    esi,eax
    1fe5:	8a 84 24 44 09 00 00 	mov    al,BYTE PTR [esp+0x944]
    1fec:	66 a5                	movs   WORD PTR es:[edi],WORD PTR ds:[esi]
    1fee:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
    1fef:	3a 84 24 5c 09 00 00 	cmp    al,BYTE PTR [esp+0x95c]
    1ff6:	0f 85 d7 fe ff ff    	jne    compress_fst_branch_51
    1ffc:	8a 84 24 45 09 00 00 	mov    al,BYTE PTR [esp+0x945]
    2003:	3a 84 24 5d 09 00 00 	cmp    al,BYTE PTR [esp+0x95d]
    200a:	0f 85 c3 fe ff ff    	jne    compress_fst_branch_51
    2010:	8a 84 24 46 09 00 00 	mov    al,BYTE PTR [esp+0x946]
    2017:	3a 84 24 5e 09 00 00 	cmp    al,BYTE PTR [esp+0x95e]
    201e:	0f 85 af fe ff ff    	jne    compress_fst_branch_51
    2024:	31 f6                	xor    esi,esi
    2026:	89 b4 24 38 08 00 00 	mov    DWORD PTR [esp+0x838],esi
    202d:	89 b4 24 3c 08 00 00 	mov    DWORD PTR [esp+0x83c],esi
    2034:	e9 57 ff ff ff       	jmp    compress_fst_branch_52
compress_fst_branch_54:
    2039:	dd 84 24 b8 08 00 00 	fld    QWORD PTR [esp+0x8b8]
    2040:	dc 0d ca 03 00 00    	fmul   QWORD PTR ds:@obj3:fst_cpp_variable_17                       ; fixup: num: 225, src obj: 1, src ofs: 0x2042, dst obj: 3, dst ofs: 0x3ca
    2046:	dd 9c 24 48 08 00 00 	fstp   QWORD PTR [esp+0x848]
    204d:	8b b4 24 34 09 00 00 	mov    esi,DWORD PTR [esp+0x934]
    2054:	8d 8c 24 00 03 00 00 	lea    ecx,[esp+0x300]
    205b:	8b 2d 70 7e 01 00    	mov    ebp,DWORD PTR ds:@obj3:block_list                            ; fixup: num: 224, src obj: 1, src ofs: 0x205d, dst obj: 3, dst ofs: 0x17e70
    2061:	31 ff                	xor    edi,edi
    2063:	01 f5                	add    ebp,esi
    2065:	8b 84 24 48 08 00 00 	mov    eax,DWORD PTR [esp+0x848]
    206c:	31 d2                	xor    edx,edx
    206e:	89 45 14             	mov    DWORD PTR [ebp+0x14],eax
    2071:	8b 84 24 4c 08 00 00 	mov    eax,DWORD PTR [esp+0x84c]
    2078:	89 bc 24 28 08 00 00 	mov    DWORD PTR [esp+0x828],edi
    207f:	89 45 18             	mov    DWORD PTR [ebp+0x18],eax
    2082:	89 bc 24 2c 08 00 00 	mov    DWORD PTR [esp+0x82c],edi
    2089:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
    208c:	8b 6d 08             	mov    ebp,DWORD PTR [ebp+0x8]
    208f:	e9 ec 00 00 00       	jmp    compress_fst_branch_57
compress_fst_branch_55:
    2094:	31 c0                	xor    eax,eax
    2096:	8a 84 24 4c 09 00 00 	mov    al,BYTE PTR [esp+0x94c]
    209d:	89 84 24 70 09 00 00 	mov    DWORD PTR [esp+0x970],eax
    20a4:	df 84 24 70 09 00 00 	fild   WORD PTR [esp+0x970]
    20ab:	31 c0                	xor    eax,eax
    20ad:	8a 84 24 50 09 00 00 	mov    al,BYTE PTR [esp+0x950]
    20b4:	89 84 24 70 09 00 00 	mov    DWORD PTR [esp+0x970],eax
    20bb:	df 84 24 70 09 00 00 	fild   WORD PTR [esp+0x970]
    20c2:	31 c0                	xor    eax,eax
    20c4:	8a 84 24 4d 09 00 00 	mov    al,BYTE PTR [esp+0x94d]
    20cb:	89 84 24 70 09 00 00 	mov    DWORD PTR [esp+0x970],eax
    20d2:	df 84 24 70 09 00 00 	fild   WORD PTR [esp+0x970]
    20d9:	31 c0                	xor    eax,eax
    20db:	8a 84 24 51 09 00 00 	mov    al,BYTE PTR [esp+0x951]
    20e2:	89 84 24 70 09 00 00 	mov    DWORD PTR [esp+0x970],eax
    20e9:	df 84 24 70 09 00 00 	fild   WORD PTR [esp+0x970]
    20f0:	31 c0                	xor    eax,eax
    20f2:	8a 84 24 4e 09 00 00 	mov    al,BYTE PTR [esp+0x94e]
    20f9:	89 84 24 70 09 00 00 	mov    DWORD PTR [esp+0x970],eax
    2100:	df 84 24 70 09 00 00 	fild   WORD PTR [esp+0x970]
    2107:	31 c0                	xor    eax,eax
    2109:	8a 84 24 52 09 00 00 	mov    al,BYTE PTR [esp+0x952]
    2110:	89 84 24 70 09 00 00 	mov    DWORD PTR [esp+0x970],eax
    2117:	df 84 24 70 09 00 00 	fild   WORD PTR [esp+0x970]
    211e:	d9 cd                	fxch   st(5)
    2120:	de e4                	fsubrp st(4),st
    2122:	d9 cb                	fxch   st(3)
    2124:	d8 c8                	fmul   st,st(0)
    2126:	d9 ca                	fxch   st(2)
    2128:	de e1                	fsubrp st(1),st
    212a:	d8 c8                	fmul   st,st(0)
    212c:	de c1                	faddp  st(1),st
    212e:	d9 c9                	fxch   st(1)
    2130:	de e2                	fsubrp st(2),st
    2132:	d9 c9                	fxch   st(1)
    2134:	d8 c8                	fmul   st,st(0)
    2136:	de c1                	faddp  st(1),st
    2138:	83 ec 08             	sub    esp,0x8
    213b:	dd 1c 24             	fstp   QWORD PTR [esp]
    213e:	e8 53 f8 06 00       	call   sqrt_
    2143:	dd 9c 24 60 08 00 00 	fstp   QWORD PTR [esp+0x860]
    214a:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
compress_fst_branch_56:
    2150:	dd 84 24 28 08 00 00 	fld    QWORD PTR [esp+0x828]
    2157:	dc 84 24 60 08 00 00 	fadd   QWORD PTR [esp+0x860]
    215e:	43                   	inc    ebx
    215f:	45                   	inc    ebp
    2160:	42                   	inc    edx
    2161:	dd 9c 24 28 08 00 00 	fstp   QWORD PTR [esp+0x828]
    2168:	83 fa 10             	cmp    edx,0x10
    216b:	0f 8d 88 00 00 00    	jge    compress_fst_branch_58
    2171:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    2177:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
    217d:	8d 40 00             	lea    eax,[eax+0x0]
compress_fst_branch_57:
    2180:	8d bc 24 4c 09 00 00 	lea    edi,[esp+0x94c]
    2187:	0f b6 33             	movzx  esi,BYTE PTR [ebx]
    218a:	31 c0                	xor    eax,eax
    218c:	8d 34 76             	lea    esi,[esi+esi*2]
    218f:	8a 45 00             	mov    al,BYTE PTR [ebp+0x0]
    2192:	01 ce                	add    esi,ecx
    2194:	8d 04 40             	lea    eax,[eax+eax*2]
    2197:	66 a5                	movs   WORD PTR es:[edi],WORD PTR ds:[esi]
    2199:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
    219a:	01 c8                	add    eax,ecx
    219c:	8d bc 24 50 09 00 00 	lea    edi,[esp+0x950]
    21a3:	89 c6                	mov    esi,eax
    21a5:	8a 84 24 4c 09 00 00 	mov    al,BYTE PTR [esp+0x94c]
    21ac:	66 a5                	movs   WORD PTR es:[edi],WORD PTR ds:[esi]
    21ae:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
    21af:	3a 84 24 50 09 00 00 	cmp    al,BYTE PTR [esp+0x950]
    21b6:	0f 85 d8 fe ff ff    	jne    compress_fst_branch_55
    21bc:	8a 84 24 4d 09 00 00 	mov    al,BYTE PTR [esp+0x94d]
    21c3:	3a 84 24 51 09 00 00 	cmp    al,BYTE PTR [esp+0x951]
    21ca:	0f 85 c4 fe ff ff    	jne    compress_fst_branch_55
    21d0:	8a 84 24 4e 09 00 00 	mov    al,BYTE PTR [esp+0x94e]
    21d7:	3a 84 24 52 09 00 00 	cmp    al,BYTE PTR [esp+0x952]
    21de:	0f 85 b0 fe ff ff    	jne    compress_fst_branch_55
    21e4:	31 ff                	xor    edi,edi
    21e6:	89 bc 24 60 08 00 00 	mov    DWORD PTR [esp+0x860],edi
    21ed:	89 bc 24 64 08 00 00 	mov    DWORD PTR [esp+0x864],edi
    21f4:	e9 57 ff ff ff       	jmp    compress_fst_branch_56
compress_fst_branch_58:
    21f9:	dd 84 24 28 08 00 00 	fld    QWORD PTR [esp+0x828]
    2200:	dc 0d ca 03 00 00    	fmul   QWORD PTR ds:@obj3:fst_cpp_variable_17                       ; fixup: num: 227, src obj: 1, src ofs: 0x2202, dst obj: 3, dst ofs: 0x3ca
    2206:	dd 9c 24 a8 08 00 00 	fstp   QWORD PTR [esp+0x8a8]
    220d:	8b 84 24 34 09 00 00 	mov    eax,DWORD PTR [esp+0x934]
    2214:	8b 94 24 d8 08 00 00 	mov    edx,DWORD PTR [esp+0x8d8]
    221b:	8b 2d 70 7e 01 00    	mov    ebp,DWORD PTR ds:@obj3:block_list                            ; fixup: num: 226, src obj: 1, src ofs: 0x221d, dst obj: 3, dst ofs: 0x17e70
    2221:	8d 8c 24 00 03 00 00 	lea    ecx,[esp+0x300]
    2228:	01 c5                	add    ebp,eax
    222a:	8b 84 24 a8 08 00 00 	mov    eax,DWORD PTR [esp+0x8a8]
    2231:	31 db                	xor    ebx,ebx
    2233:	89 45 1c             	mov    DWORD PTR [ebp+0x1c],eax
    2236:	8b 84 24 ac 08 00 00 	mov    eax,DWORD PTR [esp+0x8ac]
    223d:	89 9c 24 90 08 00 00 	mov    DWORD PTR [esp+0x890],ebx
    2244:	89 45 20             	mov    DWORD PTR [ebp+0x20],eax
    2247:	89 9c 24 94 08 00 00 	mov    DWORD PTR [esp+0x894],ebx
    224e:	8b 6d 08             	mov    ebp,DWORD PTR [ebp+0x8]
    2251:	e9 ea 00 00 00       	jmp    compress_fst_branch_61
compress_fst_branch_59:
    2256:	31 c0                	xor    eax,eax
    2258:	8a 84 24 60 09 00 00 	mov    al,BYTE PTR [esp+0x960]
    225f:	89 84 24 70 09 00 00 	mov    DWORD PTR [esp+0x970],eax
    2266:	df 84 24 70 09 00 00 	fild   WORD PTR [esp+0x970]
    226d:	31 c0                	xor    eax,eax
    226f:	8a 84 24 68 09 00 00 	mov    al,BYTE PTR [esp+0x968]
    2276:	89 84 24 70 09 00 00 	mov    DWORD PTR [esp+0x970],eax
    227d:	df 84 24 70 09 00 00 	fild   WORD PTR [esp+0x970]
    2284:	31 c0                	xor    eax,eax
    2286:	8a 84 24 61 09 00 00 	mov    al,BYTE PTR [esp+0x961]
    228d:	89 84 24 70 09 00 00 	mov    DWORD PTR [esp+0x970],eax
    2294:	df 84 24 70 09 00 00 	fild   WORD PTR [esp+0x970]
    229b:	31 c0                	xor    eax,eax
    229d:	8a 84 24 69 09 00 00 	mov    al,BYTE PTR [esp+0x969]
    22a4:	89 84 24 70 09 00 00 	mov    DWORD PTR [esp+0x970],eax
    22ab:	df 84 24 70 09 00 00 	fild   WORD PTR [esp+0x970]
    22b2:	31 c0                	xor    eax,eax
    22b4:	8a 84 24 62 09 00 00 	mov    al,BYTE PTR [esp+0x962]
    22bb:	89 84 24 70 09 00 00 	mov    DWORD PTR [esp+0x970],eax
    22c2:	df 84 24 70 09 00 00 	fild   WORD PTR [esp+0x970]
    22c9:	31 c0                	xor    eax,eax
    22cb:	8a 84 24 6a 09 00 00 	mov    al,BYTE PTR [esp+0x96a]
    22d2:	89 84 24 70 09 00 00 	mov    DWORD PTR [esp+0x970],eax
    22d9:	df 84 24 70 09 00 00 	fild   WORD PTR [esp+0x970]
    22e0:	d9 cd                	fxch   st(5)
    22e2:	de e4                	fsubrp st(4),st
    22e4:	d9 cb                	fxch   st(3)
    22e6:	d8 c8                	fmul   st,st(0)
    22e8:	d9 ca                	fxch   st(2)
    22ea:	de e1                	fsubrp st(1),st
    22ec:	d8 c8                	fmul   st,st(0)
    22ee:	de c1                	faddp  st(1),st
    22f0:	d9 c9                	fxch   st(1)
    22f2:	de e2                	fsubrp st(2),st
    22f4:	d9 c9                	fxch   st(1)
    22f6:	d8 c8                	fmul   st,st(0)
    22f8:	de c1                	faddp  st(1),st
    22fa:	83 ec 08             	sub    esp,0x8
    22fd:	dd 1c 24             	fstp   QWORD PTR [esp]
    2300:	e8 91 f6 06 00       	call   sqrt_
    2305:	dd 9c 24 40 08 00 00 	fstp   QWORD PTR [esp+0x840]
    230c:	8d 44 20 00          	lea    eax,[eax+eiz*1+0x0]
compress_fst_branch_60:
    2310:	dd 84 24 90 08 00 00 	fld    QWORD PTR [esp+0x890]
    2317:	dc 84 24 40 08 00 00 	fadd   QWORD PTR [esp+0x840]
    231e:	45                   	inc    ebp
    231f:	42                   	inc    edx
    2320:	43                   	inc    ebx
    2321:	dd 9c 24 90 08 00 00 	fstp   QWORD PTR [esp+0x890]
    2328:	83 fb 10             	cmp    ebx,0x10
    232b:	0f 8d 88 00 00 00    	jge    compress_fst_branch_62
    2331:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    2337:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
    233d:	8d 40 00             	lea    eax,[eax+0x0]
compress_fst_branch_61:
    2340:	8d bc 24 60 09 00 00 	lea    edi,[esp+0x960]
    2347:	0f b6 75 00          	movzx  esi,BYTE PTR [ebp+0x0]
    234b:	31 c0                	xor    eax,eax
    234d:	8d 34 76             	lea    esi,[esi+esi*2]
    2350:	8a 02                	mov    al,BYTE PTR [edx]
    2352:	01 ce                	add    esi,ecx
    2354:	8d 04 40             	lea    eax,[eax+eax*2]
    2357:	66 a5                	movs   WORD PTR es:[edi],WORD PTR ds:[esi]
    2359:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
    235a:	01 c8                	add    eax,ecx
    235c:	8d bc 24 68 09 00 00 	lea    edi,[esp+0x968]
    2363:	89 c6                	mov    esi,eax
    2365:	8a 84 24 60 09 00 00 	mov    al,BYTE PTR [esp+0x960]
    236c:	66 a5                	movs   WORD PTR es:[edi],WORD PTR ds:[esi]
    236e:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
    236f:	3a 84 24 68 09 00 00 	cmp    al,BYTE PTR [esp+0x968]
    2376:	0f 85 da fe ff ff    	jne    compress_fst_branch_59
    237c:	8a 84 24 61 09 00 00 	mov    al,BYTE PTR [esp+0x961]
    2383:	3a 84 24 69 09 00 00 	cmp    al,BYTE PTR [esp+0x969]
    238a:	0f 85 c6 fe ff ff    	jne    compress_fst_branch_59
    2390:	8a 84 24 62 09 00 00 	mov    al,BYTE PTR [esp+0x962]
    2397:	3a 84 24 6a 09 00 00 	cmp    al,BYTE PTR [esp+0x96a]
    239e:	0f 85 b2 fe ff ff    	jne    compress_fst_branch_59
    23a4:	31 f6                	xor    esi,esi
    23a6:	89 b4 24 40 08 00 00 	mov    DWORD PTR [esp+0x840],esi
    23ad:	89 b4 24 44 08 00 00 	mov    DWORD PTR [esp+0x844],esi
    23b4:	e9 57 ff ff ff       	jmp    compress_fst_branch_60
compress_fst_branch_62:
    23b9:	dd 84 24 90 08 00 00 	fld    QWORD PTR [esp+0x890]
    23c0:	dc 0d ca 03 00 00    	fmul   QWORD PTR ds:@obj3:fst_cpp_variable_17                       ; fixup: num: 229, src obj: 1, src ofs: 0x23c2, dst obj: 3, dst ofs: 0x3ca
    23c6:	dd 9c 24 98 08 00 00 	fstp   QWORD PTR [esp+0x898]
    23cd:	8b 94 24 34 09 00 00 	mov    edx,DWORD PTR [esp+0x934]
    23d4:	a1 70 7e 01 00       	mov    eax,ds:@obj3:block_list                                      ; fixup: num: 228, src obj: 1, src ofs: 0x23d5, dst obj: 3, dst ofs: 0x17e70
    23d9:	01 d0                	add    eax,edx
    23db:	8b 94 24 98 08 00 00 	mov    edx,DWORD PTR [esp+0x898]
    23e2:	89 50 24             	mov    DWORD PTR [eax+0x24],edx
    23e5:	8b 94 24 9c 08 00 00 	mov    edx,DWORD PTR [esp+0x89c]
    23ec:	89 50 28             	mov    DWORD PTR [eax+0x28],edx
compress_fst_branch_63:
    23ef:	8b 84 24 d8 08 00 00 	mov    eax,DWORD PTR [esp+0x8d8]
    23f6:	8b 8c 24 10 09 00 00 	mov    ecx,DWORD PTR [esp+0x910]
    23fd:	8b b4 24 dc 08 00 00 	mov    esi,DWORD PTR [esp+0x8dc]
    2404:	8b bc 24 e0 08 00 00 	mov    edi,DWORD PTR [esp+0x8e0]
    240b:	8b ac 24 34 09 00 00 	mov    ebp,DWORD PTR [esp+0x934]
    2412:	e8 d1 ef 06 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
    2417:	8b 84 24 d0 08 00 00 	mov    eax,DWORD PTR [esp+0x8d0]
    241e:	8b 94 24 40 07 00 00 	mov    edx,DWORD PTR [esp+0x740]
    2425:	83 c1 04             	add    ecx,0x4
    2428:	83 c6 04             	add    esi,0x4
    242b:	83 c7 04             	add    edi,0x4
    242e:	83 c5 2c             	add    ebp,0x2c
    2431:	89 8c 24 10 09 00 00 	mov    DWORD PTR [esp+0x910],ecx
    2438:	89 b4 24 dc 08 00 00 	mov    DWORD PTR [esp+0x8dc],esi
    243f:	89 bc 24 e0 08 00 00 	mov    DWORD PTR [esp+0x8e0],edi
    2446:	40                   	inc    eax
    2447:	89 ac 24 34 09 00 00 	mov    DWORD PTR [esp+0x934],ebp
    244e:	89 84 24 d0 08 00 00 	mov    DWORD PTR [esp+0x8d0],eax
    2455:	39 d1                	cmp    ecx,edx
    2457:	0f 83 2f f3 ff ff    	jae    compress_fst_branch_21
    245d:	e9 87 f3 ff ff       	jmp    compress_fst_branch_23
compress_fst_branch_64:
    2462:	8b 84 24 40 09 00 00 	mov    eax,DWORD PTR [esp+0x940]
    2469:	8b ac 24 2c 09 00 00 	mov    ebp,DWORD PTR [esp+0x92c]
    2470:	e8 73 ef 06 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
    2475:	3b ac 24 14 09 00 00 	cmp    ebp,DWORD PTR [esp+0x914]
    247c:	0f 83 d3 01 00 00    	jae    compress_fst_branch_78
    2482:	8b 84 24 44 07 00 00 	mov    eax,DWORD PTR [esp+0x744]
    2489:	8b 94 24 40 07 00 00 	mov    edx,DWORD PTR [esp+0x740]
    2490:	c1 e8 02             	shr    eax,0x2
    2493:	c1 ea 02             	shr    edx,0x2
    2496:	0f af c2             	imul   eax,edx
    2499:	8d 04 85 00 00 00 00 	lea    eax,[eax*4+0x0]
    24a0:	e8 ee ef 06 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
    24a5:	89 c5                	mov    ebp,eax
    24a7:	85 c0                	test   eax,eax
    24a9:	75 0f                	jne    compress_fst_branch_65
    24ab:	bb 71 03 00 00       	mov    ebx,@obj3:fst_cpp_variable_13                                ; fixup: num: 231, src obj: 1, src ofs: 0x24ac, dst obj: 3, dst ofs: 0x371
    24b0:	ba 41 01 00 00       	mov    edx,0x141
    24b5:	e8 76 5b 03 00       	call   _error_report
compress_fst_branch_65:
    24ba:	89 ea                	mov    edx,ebp
    24bc:	31 f6                	xor    esi,esi
    24be:	31 c0                	xor    eax,eax
    24c0:	31 db                	xor    ebx,ebx
    24c2:	eb 04                	jmp    compress_fst_branch_67
compress_fst_branch_66:
    24c4:	83 c3 2c             	add    ebx,0x2c
    24c7:	40                   	inc    eax
compress_fst_branch_67:
    24c8:	8b 8c 24 44 07 00 00 	mov    ecx,DWORD PTR [esp+0x744]
    24cf:	8b bc 24 40 07 00 00 	mov    edi,DWORD PTR [esp+0x740]
    24d6:	c1 e9 02             	shr    ecx,0x2
    24d9:	c1 ef 02             	shr    edi,0x2
    24dc:	0f af cf             	imul   ecx,edi
    24df:	39 c8                	cmp    eax,ecx
    24e1:	73 16                	jae    compress_fst_branch_68
    24e3:	8b 0d 70 7e 01 00    	mov    ecx,DWORD PTR ds:@obj3:block_list                            ; fixup: num: 230, src obj: 1, src ofs: 0x24e5, dst obj: 3, dst ofs: 0x17e70
    24e9:	80 7c 19 01 00       	cmp    BYTE PTR [ecx+ebx*1+0x1],0x0
    24ee:	74 d4                	je     compress_fst_branch_66
    24f0:	83 c2 04             	add    edx,0x4
    24f3:	46                   	inc    esi
    24f4:	89 42 fc             	mov    DWORD PTR [edx-0x4],eax
    24f7:	eb cb                	jmp    compress_fst_branch_66
compress_fst_branch_68:
    24f9:	b9 10 43 00 00       	mov    ecx,@obj1:sort_by_compressed_error                           ; fixup: num: 234, src obj: 1, src ofs: 0x24fa, dst obj: 1, dst ofs: 0x4310
    24fe:	bb 04 00 00 00       	mov    ebx,0x4
    2503:	89 f2                	mov    edx,esi
    2505:	89 e8                	mov    eax,ebp
    2507:	e8 6f f5 06 00       	call   qsort_
    250c:	8b 84 24 14 09 00 00 	mov    eax,DWORD PTR [esp+0x914]
    2513:	8b 9c 24 2c 09 00 00 	mov    ebx,DWORD PTR [esp+0x92c]
    251a:	31 ff                	xor    edi,edi
    251c:	39 d8                	cmp    eax,ebx
    251e:	0f 86 76 00 00 00    	jbe    compress_fst_branch_72
    2524:	89 ea                	mov    edx,ebp
compress_fst_branch_69:
    2526:	39 f7                	cmp    edi,esi
    2528:	7d 70                	jge    compress_fst_branch_72
    252a:	6b 02 2c             	imul   eax,DWORD PTR [edx],0x2c
    252d:	8b 1d 70 7e 01 00    	mov    ebx,DWORD PTR ds:@obj3:block_list                            ; fixup: num: 233, src obj: 1, src ofs: 0x252f, dst obj: 3, dst ofs: 0x17e70
    2533:	c6 04 03 01          	mov    BYTE PTR [ebx+eax*1],0x1
    2537:	6b 0a 2c             	imul   ecx,DWORD PTR [edx],0x2c
    253a:	01 d9                	add    ecx,ebx
    253c:	dd 41 24             	fld    QWORD PTR [ecx+0x24]
    253f:	dc 1d d2 03 00 00    	fcomp  QWORD PTR ds:@obj3:fst_cpp_variable_18                       ; fixup: num: 232, src obj: 1, src ofs: 0x2541, dst obj: 3, dst ofs: 0x3d2
    2545:	df e0                	fnstsw ax
    2547:	9e                   	sahf   
    2548:	73 14                	jae    compress_fst_branch_70
    254a:	c6 41 01 00          	mov    BYTE PTR [ecx+0x1],0x0
    254e:	6b 02 2c             	imul   eax,DWORD PTR [edx],0x2c
    2551:	8b 44 03 04          	mov    eax,DWORD PTR [ebx+eax*1+0x4]
    2555:	29 84 24 14 09 00 00 	sub    DWORD PTR [esp+0x914],eax
    255c:	eb 26                	jmp    compress_fst_branch_71
compress_fst_branch_70:
    255e:	c7 41 04 04 00 00 00 	mov    DWORD PTR [ecx+0x4],0x4
    2565:	6b 02 2c             	imul   eax,DWORD PTR [edx],0x2c
    2568:	01 c3                	add    ebx,eax
    256a:	b8 10 00 00 00       	mov    eax,0x10
    256f:	8b 4b 04             	mov    ecx,DWORD PTR [ebx+0x4]
    2572:	8b 9c 24 14 09 00 00 	mov    ebx,DWORD PTR [esp+0x914]
    2579:	29 c8                	sub    eax,ecx
    257b:	29 c3                	sub    ebx,eax
    257d:	89 9c 24 14 09 00 00 	mov    DWORD PTR [esp+0x914],ebx
compress_fst_branch_71:
    2584:	8b 84 24 14 09 00 00 	mov    eax,DWORD PTR [esp+0x914]
    258b:	8b 8c 24 2c 09 00 00 	mov    ecx,DWORD PTR [esp+0x92c]
    2592:	83 c2 04             	add    edx,0x4
    2595:	47                   	inc    edi
    2596:	39 c8                	cmp    eax,ecx
    2598:	77 8c                	ja     compress_fst_branch_69
compress_fst_branch_72:
    259a:	8b 84 24 14 09 00 00 	mov    eax,DWORD PTR [esp+0x914]
    25a1:	3b 84 24 2c 09 00 00 	cmp    eax,DWORD PTR [esp+0x92c]
    25a8:	0f 86 a0 00 00 00    	jbe    compress_fst_branch_77
    25ae:	89 eb                	mov    ebx,ebp
    25b0:	31 f6                	xor    esi,esi
    25b2:	31 c0                	xor    eax,eax
    25b4:	31 d2                	xor    edx,edx
    25b6:	eb 04                	jmp    compress_fst_branch_74
compress_fst_branch_73:
    25b8:	83 c2 2c             	add    edx,0x2c
    25bb:	40                   	inc    eax
compress_fst_branch_74:
    25bc:	8b 8c 24 44 07 00 00 	mov    ecx,DWORD PTR [esp+0x744]
    25c3:	8b bc 24 40 07 00 00 	mov    edi,DWORD PTR [esp+0x740]
    25ca:	c1 e9 02             	shr    ecx,0x2
    25cd:	c1 ef 02             	shr    edi,0x2
    25d0:	0f af cf             	imul   ecx,edi
    25d3:	39 c8                	cmp    eax,ecx
    25d5:	73 16                	jae    compress_fst_branch_75
    25d7:	8b 0d 70 7e 01 00    	mov    ecx,DWORD PTR ds:@obj3:block_list                            ; fixup: num: 237, src obj: 1, src ofs: 0x25d9, dst obj: 3, dst ofs: 0x17e70
    25dd:	80 7c 11 01 00       	cmp    BYTE PTR [ecx+edx*1+0x1],0x0
    25e2:	74 d4                	je     compress_fst_branch_73
    25e4:	83 c3 04             	add    ebx,0x4
    25e7:	46                   	inc    esi
    25e8:	89 43 fc             	mov    DWORD PTR [ebx-0x4],eax
    25eb:	eb cb                	jmp    compress_fst_branch_73
compress_fst_branch_75:
    25ed:	b9 50 43 00 00       	mov    ecx,@obj1:sort_by_uncompressed_error                         ; fixup: num: 236, src obj: 1, src ofs: 0x25ee, dst obj: 1, dst ofs: 0x4350
    25f2:	bb 04 00 00 00       	mov    ebx,0x4
    25f7:	89 f2                	mov    edx,esi
    25f9:	89 e8                	mov    eax,ebp
    25fb:	8b bc 24 2c 09 00 00 	mov    edi,DWORD PTR [esp+0x92c]
    2602:	e8 74 f4 06 00       	call   qsort_
    2607:	8b 84 24 14 09 00 00 	mov    eax,DWORD PTR [esp+0x914]
    260e:	31 d2                	xor    edx,edx
    2610:	39 f8                	cmp    eax,edi
    2612:	76 3a                	jbe    compress_fst_branch_77
    2614:	89 e8                	mov    eax,ebp
compress_fst_branch_76:
    2616:	39 f2                	cmp    edx,esi
    2618:	7d 34                	jge    compress_fst_branch_77
    261a:	6b 08 2c             	imul   ecx,DWORD PTR [eax],0x2c
    261d:	8b 1d 70 7e 01 00    	mov    ebx,DWORD PTR ds:@obj3:block_list                            ; fixup: num: 235, src obj: 1, src ofs: 0x261f, dst obj: 3, dst ofs: 0x17e70
    2623:	c6 44 19 01 00       	mov    BYTE PTR [ecx+ebx*1+0x1],0x0
    2628:	6b 08 2c             	imul   ecx,DWORD PTR [eax],0x2c
    262b:	83 c0 04             	add    eax,0x4
    262e:	8b 5c 19 04          	mov    ebx,DWORD PTR [ecx+ebx*1+0x4]
    2632:	8b 8c 24 14 09 00 00 	mov    ecx,DWORD PTR [esp+0x914]
    2639:	42                   	inc    edx
    263a:	29 d9                	sub    ecx,ebx
    263c:	8b bc 24 2c 09 00 00 	mov    edi,DWORD PTR [esp+0x92c]
    2643:	89 8c 24 14 09 00 00 	mov    DWORD PTR [esp+0x914],ecx
    264a:	39 f9                	cmp    ecx,edi
    264c:	77 c8                	ja     compress_fst_branch_76
compress_fst_branch_77:
    264e:	89 e8                	mov    eax,ebp
    2650:	e8 93 ed 06 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
compress_fst_branch_78:
    2655:	8b 94 24 44 07 00 00 	mov    edx,DWORD PTR [esp+0x744]
    265c:	8b 84 24 40 07 00 00 	mov    eax,DWORD PTR [esp+0x740]
    2663:	c1 ea 02             	shr    edx,0x2
    2666:	c1 e8 02             	shr    eax,0x2
    2669:	0f af c2             	imul   eax,edx
    266c:	c7 84 24 6c 09 00 00 01 00 00 00 	mov    DWORD PTR [esp+0x96c],0x1
    2677:	e8 17 ee 06 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
    267c:	89 c6                	mov    esi,eax
    267e:	89 c7                	mov    edi,eax
    2680:	85 c0                	test   eax,eax
    2682:	75 0f                	jne    compress_fst_branch_79
    2684:	bb 91 03 00 00       	mov    ebx,@obj3:fst_cpp_variable_14                                ; fixup: num: 238, src obj: 1, src ofs: 0x2685, dst obj: 3, dst ofs: 0x391
    2689:	ba 7b 01 00 00       	mov    edx,0x17b
    268e:	e8 9d 59 03 00       	call   _error_report
compress_fst_branch_79:
    2693:	8a b4 24 74 09 00 00 	mov    dh,BYTE PTR [esp+0x974]
    269a:	bd 08 00 00 00       	mov    ebp,0x8
    269f:	31 c9                	xor    ecx,ecx
    26a1:	84 f6                	test   dh,dh
    26a3:	0f 95 c0             	setne  al
    26a6:	31 db                	xor    ebx,ebx
    26a8:	88 06                	mov    BYTE PTR [esi],al
    26aa:	eb 29                	jmp    compress_fst_branch_84
compress_fst_branch_80:
    26ac:	80 26 fe             	and    BYTE PTR [esi],0xfe
    26af:	ff 84 24 6c 09 00 00 	inc    DWORD PTR [esp+0x96c]
    26b6:	eb 03                	jmp    compress_fst_branch_82
compress_fst_branch_81:
    26b8:	80 26 fe             	and    BYTE PTR [esi],0xfe
compress_fst_branch_82:
    26bb:	31 d2                	xor    edx,edx
    26bd:	66 8b 94 24 6c 09 00 00 	mov    dx,WORD PTR [esp+0x96c]
    26c5:	89 d0                	mov    eax,edx
    26c7:	c1 fa 1f             	sar    edx,0x1f
    26ca:	f7 fd                	idiv   ebp
    26cc:	85 d2                	test   edx,edx
    26ce:	75 01                	jne    compress_fst_branch_83
    26d0:	46                   	inc    esi
compress_fst_branch_83:
    26d1:	83 c3 2c             	add    ebx,0x2c
    26d4:	41                   	inc    ecx
compress_fst_branch_84:
    26d5:	8b 94 24 44 07 00 00 	mov    edx,DWORD PTR [esp+0x744]
    26dc:	8b 84 24 40 07 00 00 	mov    eax,DWORD PTR [esp+0x740]
    26e3:	c1 ea 02             	shr    edx,0x2
    26e6:	c1 e8 02             	shr    eax,0x2
    26e9:	0f af c2             	imul   eax,edx
    26ec:	39 c1                	cmp    ecx,eax
    26ee:	73 61                	jae    compress_fst_branch_86
    26f0:	8a 06                	mov    al,BYTE PTR [esi]
    26f2:	00 c0                	add    al,al
    26f4:	88 06                	mov    BYTE PTR [esi],al
    26f6:	8b 94 24 6c 09 00 00 	mov    edx,DWORD PTR [esp+0x96c]
    26fd:	42                   	inc    edx
    26fe:	a1 70 7e 01 00       	mov    eax,ds:@obj3:block_list                                      ; fixup: num: 240, src obj: 1, src ofs: 0x26ff, dst obj: 3, dst ofs: 0x17e70
    2703:	89 94 24 6c 09 00 00 	mov    DWORD PTR [esp+0x96c],edx
    270a:	80 7c 03 01 00       	cmp    BYTE PTR [ebx+eax*1+0x1],0x0
    270f:	74 a7                	je     compress_fst_branch_81
    2711:	8a 06                	mov    al,BYTE PTR [esi]
    2713:	0c 01                	or     al,0x1
    2715:	31 d2                	xor    edx,edx
    2717:	88 06                	mov    BYTE PTR [esi],al
    2719:	66 8b 94 24 6c 09 00 00 	mov    dx,WORD PTR [esp+0x96c]
    2721:	89 d0                	mov    eax,edx
    2723:	c1 fa 1f             	sar    edx,0x1f
    2726:	f7 fd                	idiv   ebp
    2728:	85 d2                	test   edx,edx
    272a:	75 01                	jne    compress_fst_branch_85
    272c:	46                   	inc    esi
compress_fst_branch_85:
    272d:	8a 26                	mov    ah,BYTE PTR [esi]
    272f:	00 e4                	add    ah,ah
    2731:	88 26                	mov    BYTE PTR [esi],ah
    2733:	a1 70 7e 01 00       	mov    eax,ds:@obj3:block_list                                      ; fixup: num: 239, src obj: 1, src ofs: 0x2734, dst obj: 3, dst ofs: 0x17e70
    2738:	80 3c 03 00          	cmp    BYTE PTR [ebx+eax*1],0x0
    273c:	0f 84 6a ff ff ff    	je     compress_fst_branch_80
    2742:	80 0e 01             	or     BYTE PTR [esi],0x1
    2745:	ff 84 24 6c 09 00 00 	inc    DWORD PTR [esp+0x96c]
    274c:	e9 6a ff ff ff       	jmp    compress_fst_branch_82
compress_fst_branch_86:
    2751:	bb 02 00 00 00       	mov    ebx,0x2
    2756:	8d 94 24 6c 09 00 00 	lea    edx,[esp+0x96c]
    275d:	8b 84 24 e4 08 00 00 	mov    eax,DWORD PTR [esp+0x8e4]
    2764:	e8 5b f0 06 00       	call   write_
    2769:	31 d2                	xor    edx,edx
    276b:	66 8b 94 24 6c 09 00 00 	mov    dx,WORD PTR [esp+0x96c]
    2773:	89 d0                	mov    eax,edx
    2775:	c1 fa 1f             	sar    edx,0x1f
    2778:	c1 e2 03             	shl    edx,0x3
    277b:	1b c2                	sbb    eax,edx
    277d:	c1 f8 03             	sar    eax,0x3
    2780:	8d 58 01             	lea    ebx,[eax+0x1]
    2783:	89 fa                	mov    edx,edi
    2785:	8b 84 24 e4 08 00 00 	mov    eax,DWORD PTR [esp+0x8e4]
    278c:	e8 33 f0 06 00       	call   write_
    2791:	31 d2                	xor    edx,edx
    2793:	66 8b 94 24 6c 09 00 00 	mov    dx,WORD PTR [esp+0x96c]
    279b:	89 d0                	mov    eax,edx
    279d:	c1 fa 1f             	sar    edx,0x1f
    27a0:	c1 e2 03             	shl    edx,0x3
    27a3:	1b c2                	sbb    eax,edx
    27a5:	c1 f8 03             	sar    eax,0x3
    27a8:	8b ac 24 14 09 00 00 	mov    ebp,DWORD PTR [esp+0x914]
    27af:	83 c0 03             	add    eax,0x3
    27b2:	8a 9c 24 74 09 00 00 	mov    bl,BYTE PTR [esp+0x974]
    27b9:	01 c5                	add    ebp,eax
    27bb:	89 f8                	mov    eax,edi
    27bd:	89 ac 24 14 09 00 00 	mov    DWORD PTR [esp+0x914],ebp
    27c4:	e8 1f ec 06 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
    27c9:	84 db                	test   bl,bl
    27cb:	74 18                	je     compress_fst_branch_87
    27cd:	bb 00 03 00 00       	mov    ebx,0x300
    27d2:	8d 94 24 00 03 00 00 	lea    edx,[esp+0x300]
    27d9:	8b 84 24 e4 08 00 00 	mov    eax,DWORD PTR [esp+0x8e4]
    27e0:	e8 df ef 06 00       	call   write_
compress_fst_branch_87:
    27e5:	8b 94 24 24 09 00 00 	mov    edx,DWORD PTR [esp+0x924]
    27ec:	31 c0                	xor    eax,eax
    27ee:	66 8b 42 04          	mov    ax,WORD PTR [edx+0x4]
    27f2:	8b 94 24 14 09 00 00 	mov    edx,DWORD PTR [esp+0x914]
    27f9:	29 c2                	sub    edx,eax
    27fb:	89 d0                	mov    eax,edx
    27fd:	8b 94 24 24 09 00 00 	mov    edx,DWORD PTR [esp+0x924]
    2804:	89 02                	mov    DWORD PTR [edx],eax
    2806:	8b b4 24 74 07 00 00 	mov    esi,DWORD PTR [esp+0x774]
    280d:	31 c0                	xor    eax,eax
    280f:	8b 9c 24 44 07 00 00 	mov    ebx,DWORD PTR [esp+0x744]
    2816:	89 84 24 28 09 00 00 	mov    DWORD PTR [esp+0x928],eax
    281d:	89 84 24 38 09 00 00 	mov    DWORD PTR [esp+0x938],eax
    2824:	85 db                	test   ebx,ebx
    2826:	0f 86 5d 01 00 00    	jbe    compress_fst_branch_93
    282c:	eb 2c                	jmp    compress_fst_branch_89
compress_fst_branch_88:
    282e:	8b 84 24 40 07 00 00 	mov    eax,DWORD PTR [esp+0x740]
    2835:	8b 8c 24 28 09 00 00 	mov    ecx,DWORD PTR [esp+0x928]
    283c:	8b bc 24 44 07 00 00 	mov    edi,DWORD PTR [esp+0x744]
    2843:	83 c1 04             	add    ecx,0x4
    2846:	8d 04 40             	lea    eax,[eax+eax*2]
    2849:	89 8c 24 28 09 00 00 	mov    DWORD PTR [esp+0x928],ecx
    2850:	01 c6                	add    esi,eax
    2852:	39 f9                	cmp    ecx,edi
    2854:	0f 83 2f 01 00 00    	jae    compress_fst_branch_93
compress_fst_branch_89:
    285a:	31 db                	xor    ebx,ebx
    285c:	8b 8c 24 40 07 00 00 	mov    ecx,DWORD PTR [esp+0x740]
    2863:	89 9c 24 3c 09 00 00 	mov    DWORD PTR [esp+0x93c],ebx
    286a:	85 c9                	test   ecx,ecx
    286c:	76 c0                	jbe    compress_fst_branch_88
    286e:	6b 8c 24 38 09 00 00 2c 	imul   ecx,DWORD PTR [esp+0x938],0x2c
compress_fst_branch_90:
    2876:	8b 15 70 7e 01 00    	mov    edx,DWORD PTR ds:@obj3:block_list                            ; fixup: num: 244, src obj: 1, src ofs: 0x2878, dst obj: 3, dst ofs: 0x17e70
    287c:	01 ca                	add    edx,ecx
    287e:	80 7a 01 00          	cmp    BYTE PTR [edx+0x1],0x0
    2882:	74 44                	je     compress_fst_branch_91
    2884:	80 3a 00             	cmp    BYTE PTR [edx],0x0
    2887:	0f 84 bc 00 00 00    	je     compress_fst_branch_92
    288d:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
    2890:	8b bc 24 6c 07 00 00 	mov    edi,DWORD PTR [esp+0x76c]
    2897:	8b 18                	mov    ebx,DWORD PTR [eax]
    2899:	83 c0 04             	add    eax,0x4
    289c:	89 1e                	mov    DWORD PTR [esi],ebx
    289e:	8d 1c 3e             	lea    ebx,[esi+edi*1]
    28a1:	8b 28                	mov    ebp,DWORD PTR [eax]
    28a3:	83 c0 04             	add    eax,0x4
    28a6:	89 2b                	mov    DWORD PTR [ebx],ebp
    28a8:	01 fb                	add    ebx,edi
    28aa:	8b 28                	mov    ebp,DWORD PTR [eax]
    28ac:	83 c0 04             	add    eax,0x4
    28af:	89 2b                	mov    DWORD PTR [ebx],ebp
    28b1:	8b 00                	mov    eax,DWORD PTR [eax]
    28b3:	89 04 1f             	mov    DWORD PTR [edi+ebx*1],eax
    28b6:	8b 84 24 e4 08 00 00 	mov    eax,DWORD PTR [esp+0x8e4]
    28bd:	8b 5a 04             	mov    ebx,DWORD PTR [edx+0x4]
    28c0:	8b 52 10             	mov    edx,DWORD PTR [edx+0x10]
    28c3:	e8 fc ee 06 00       	call   write_
compress_fst_branch_91:
    28c8:	a1 70 7e 01 00       	mov    eax,ds:@obj3:block_list                                      ; fixup: num: 243, src obj: 1, src ofs: 0x28c9, dst obj: 3, dst ofs: 0x17e70
    28cd:	8b 44 01 08          	mov    eax,DWORD PTR [ecx+eax*1+0x8]
    28d1:	e8 12 eb 06 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
    28d6:	a1 70 7e 01 00       	mov    eax,ds:@obj3:block_list                                      ; fixup: num: 242, src obj: 1, src ofs: 0x28d7, dst obj: 3, dst ofs: 0x17e70
    28db:	c7 44 01 08 00 00 00 00 	mov    DWORD PTR [ecx+eax*1+0x8],0x0
    28e3:	8b 44 01 0c          	mov    eax,DWORD PTR [ecx+eax*1+0xc]
    28e7:	83 c1 2c             	add    ecx,0x2c
    28ea:	e8 f9 ea 06 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
    28ef:	a1 70 7e 01 00       	mov    eax,ds:@obj3:block_list                                      ; fixup: num: 241, src obj: 1, src ofs: 0x28f0, dst obj: 3, dst ofs: 0x17e70
    28f4:	8b bc 24 3c 09 00 00 	mov    edi,DWORD PTR [esp+0x93c]
    28fb:	c7 44 01 e0 00 00 00 00 	mov    DWORD PTR [ecx+eax*1-0x20],0x0
    2903:	8b ac 24 38 09 00 00 	mov    ebp,DWORD PTR [esp+0x938]
    290a:	8b 44 01 e4          	mov    eax,DWORD PTR [ecx+eax*1-0x1c]
    290e:	83 c6 04             	add    esi,0x4
    2911:	e8 d2 ea 06 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
    2916:	a1 70 7e 01 00       	mov    eax,ds:@obj3:block_list                                      ; fixup: num: 246, src obj: 1, src ofs: 0x2917, dst obj: 3, dst ofs: 0x17e70
    291b:	83 c7 04             	add    edi,0x4
    291e:	45                   	inc    ebp
    291f:	c7 44 01 e4 00 00 00 00 	mov    DWORD PTR [ecx+eax*1-0x1c],0x0
    2927:	89 bc 24 3c 09 00 00 	mov    DWORD PTR [esp+0x93c],edi
    292e:	8b 94 24 40 07 00 00 	mov    edx,DWORD PTR [esp+0x740]
    2935:	89 ac 24 38 09 00 00 	mov    DWORD PTR [esp+0x938],ebp
    293c:	39 d7                	cmp    edi,edx
    293e:	0f 83 ea fe ff ff    	jae    compress_fst_branch_88
    2944:	e9 2d ff ff ff       	jmp    compress_fst_branch_90
compress_fst_branch_92:
    2949:	8b 42 0c             	mov    eax,DWORD PTR [edx+0xc]
    294c:	8b bc 24 6c 07 00 00 	mov    edi,DWORD PTR [esp+0x76c]
    2953:	8b 18                	mov    ebx,DWORD PTR [eax]
    2955:	83 c0 04             	add    eax,0x4
    2958:	89 1e                	mov    DWORD PTR [esi],ebx
    295a:	8d 1c 3e             	lea    ebx,[esi+edi*1]
    295d:	8b 28                	mov    ebp,DWORD PTR [eax]
    295f:	83 c0 04             	add    eax,0x4
    2962:	89 2b                	mov    DWORD PTR [ebx],ebp
    2964:	01 fb                	add    ebx,edi
    2966:	8b 28                	mov    ebp,DWORD PTR [eax]
    2968:	83 c0 04             	add    eax,0x4
    296b:	89 2b                	mov    DWORD PTR [ebx],ebp
    296d:	8b 00                	mov    eax,DWORD PTR [eax]
    296f:	89 04 1f             	mov    DWORD PTR [edi+ebx*1],eax
    2972:	8b 84 24 e4 08 00 00 	mov    eax,DWORD PTR [esp+0x8e4]
    2979:	8b 5a 04             	mov    ebx,DWORD PTR [edx+0x4]
    297c:	8b 52 0c             	mov    edx,DWORD PTR [edx+0xc]
    297f:	e8 40 ee 06 00       	call   write_
    2984:	e9 3f ff ff ff       	jmp    compress_fst_branch_91
compress_fst_branch_93:
    2989:	8b ac 24 74 07 00 00 	mov    ebp,DWORD PTR [esp+0x774]
    2990:	8b 8c 24 70 07 00 00 	mov    ecx,DWORD PTR [esp+0x770]
    2997:	55                   	push   ebp
    2998:	8b 9c 24 70 07 00 00 	mov    ebx,DWORD PTR [esp+0x770]
    299f:	8b 35 34 30 02 00    	mov    esi,DWORD PTR ds:@obj3:the_viewport                          ; fixup: num: 245, src obj: 1, src ofs: 0x29a1, dst obj: 3, dst ofs: 0x23034
    29a5:	6a 00                	push   0x0
    29a7:	31 d2                	xor    edx,edx
    29a9:	31 c0                	xor    eax,eax
    29ab:	ff 56 30             	call   DWORD PTR [esi+0x30]
    29ae:	8b 84 24 24 09 00 00 	mov    eax,DWORD PTR [esp+0x924]
    29b5:	66 8b 50 04          	mov    dx,WORD PTR [eax+0x4]
    29b9:	66 85 d2             	test   dx,dx
    29bc:	74 35                	je     compress_fst_branch_94
    29be:	31 db                	xor    ebx,ebx
    29c0:	8b 84 24 18 09 00 00 	mov    eax,DWORD PTR [esp+0x918]
    29c7:	66 89 d3             	mov    bx,dx
    29ca:	8b 94 24 c0 06 00 00 	mov    edx,DWORD PTR [esp+0x6c0]
    29d1:	01 c2                	add    edx,eax
    29d3:	8b 84 24 e4 08 00 00 	mov    eax,DWORD PTR [esp+0x8e4]
    29da:	e8 e5 ed 06 00       	call   write_
    29df:	8b 94 24 24 09 00 00 	mov    edx,DWORD PTR [esp+0x924]
    29e6:	31 c0                	xor    eax,eax
    29e8:	66 8b 42 04          	mov    ax,WORD PTR [edx+0x4]
    29ec:	01 84 24 18 09 00 00 	add    DWORD PTR [esp+0x918],eax
compress_fst_branch_94:
    29f3:	30 e4                	xor    ah,ah
    29f5:	88 a4 24 74 09 00 00 	mov    BYTE PTR [esp+0x974],ah
    29fc:	8d 84 24 00 06 00 00 	lea    eax,[esp+0x600]
    2a03:	e8 08 dc 00 00       	call   next_frame
    2a08:	e8 ab f4 06 00       	call   kbhit_
    2a0d:	85 c0                	test   eax,eax
    2a0f:	74 11                	je     compress_fst_branch_95
    2a11:	bb af 03 00 00       	mov    ebx,@obj3:fst_cpp_variable_15                                ; fixup: num: 247, src obj: 1, src ofs: 0x2a12, dst obj: 3, dst ofs: 0x3af
    2a16:	ba c4 01 00 00       	mov    edx,0x1c4
    2a1b:	31 c0                	xor    eax,eax
    2a1d:	e8 0e 56 03 00       	call   _error_report
compress_fst_branch_95:
    2a22:	8b 9c 24 24 09 00 00 	mov    ebx,DWORD PTR [esp+0x924]
    2a29:	8b 8c 24 d4 08 00 00 	mov    ecx,DWORD PTR [esp+0x8d4]
    2a30:	8b b4 24 4c 07 00 00 	mov    esi,DWORD PTR [esp+0x74c]
    2a37:	83 c3 06             	add    ebx,0x6
    2a3a:	41                   	inc    ecx
    2a3b:	89 9c 24 24 09 00 00 	mov    DWORD PTR [esp+0x924],ebx
    2a42:	89 8c 24 d4 08 00 00 	mov    DWORD PTR [esp+0x8d4],ecx
    2a49:	39 f1                	cmp    ecx,esi
    2a4b:	0f 82 73 eb ff ff    	jb     compress_fst_branch_13
compress_fst_branch_96:
    2a51:	ba 20 00 00 00       	mov    edx,0x20
    2a56:	8b 84 24 e4 08 00 00 	mov    eax,DWORD PTR [esp+0x8e4]
    2a5d:	31 db                	xor    ebx,ebx
    2a5f:	e8 6b f4 06 00       	call   lseek_                                                       ; aliases: lseek_, _lseek_
    2a64:	8b 94 24 4c 07 00 00 	mov    edx,DWORD PTR [esp+0x74c]
    2a6b:	8d 1c 95 00 00 00 00 	lea    ebx,[edx*4+0x0]
    2a72:	8b 84 24 e4 08 00 00 	mov    eax,DWORD PTR [esp+0x8e4]
    2a79:	29 d3                	sub    ebx,edx
    2a7b:	8b 94 24 0c 09 00 00 	mov    edx,DWORD PTR [esp+0x90c]
    2a82:	01 db                	add    ebx,ebx
    2a84:	e8 3b ed 06 00       	call   write_
    2a89:	8b 84 24 e4 08 00 00 	mov    eax,DWORD PTR [esp+0x8e4]
    2a90:	e8 7b f4 06 00       	call   close_
    2a95:	31 d2                	xor    edx,edx
    2a97:	8d 84 24 b4 06 00 00 	lea    eax,[esp+0x6b4]
    2a9e:	e8 8d 5f 00 00       	call   W?$dt:SOUND$n()_
    2aa3:	8b bc 24 74 07 00 00 	mov    edi,DWORD PTR [esp+0x774]
    2aaa:	85 ff                	test   edi,edi
    2aac:	74 07                	je     compress_fst_branch_97
    2aae:	89 f8                	mov    eax,edi
    2ab0:	e8 33 e9 06 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
compress_fst_branch_97:
    2ab5:	31 ed                	xor    ebp,ebp
    2ab7:	8b 84 24 80 06 00 00 	mov    eax,DWORD PTR [esp+0x680]
    2abe:	89 ac 24 74 07 00 00 	mov    DWORD PTR [esp+0x774],ebp
    2ac5:	85 c0                	test   eax,eax
    2ac7:	74 05                	je     compress_fst_branch_98
    2ac9:	e8 1a e9 06 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
compress_fst_branch_98:
    2ace:	8b 94 24 b0 06 00 00 	mov    edx,DWORD PTR [esp+0x6b0]
    2ad5:	85 d2                	test   edx,edx
    2ad7:	74 07                	je     compress_fst_branch_99
    2ad9:	89 d0                	mov    eax,edx
    2adb:	e8 08 e9 06 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
compress_fst_branch_99:
    2ae0:	31 ed                	xor    ebp,ebp
    2ae2:	89 ac 24 b0 06 00 00 	mov    DWORD PTR [esp+0x6b0],ebp
    2ae9:	81 c4 78 09 00 00    	add    esp,0x978
    2aef:	5d                   	pop    ebp
    2af0:	5f                   	pop    edi
    2af1:	5e                   	pop    esi
    2af2:	c2 08 00             	ret    0x8
    2af5:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    2afb:	8d 52 00             	lea    edx,[edx+0x0]
    2afe:	8b db                	mov    ebx,ebx

;-------------------------------------------------
;  Function 'decompress_fst'                     -
;-------------------------------------------------
decompress_fst:
    2b00:	53                   	push   ebx
    2b01:	51                   	push   ecx
    2b02:	52                   	push   edx
    2b03:	56                   	push   esi
    2b04:	57                   	push   edi
    2b05:	55                   	push   ebp
    2b06:	81 ec 48 01 00 00    	sub    esp,0x148
    2b0c:	89 c6                	mov    esi,eax
    2b0e:	31 d2                	xor    edx,edx
    2b10:	89 e0                	mov    eax,esp
    2b12:	89 94 24 ac 00 00 00 	mov    DWORD PTR [esp+0xac],edx
    2b19:	89 94 24 a8 00 00 00 	mov    DWORD PTR [esp+0xa8],edx
    2b20:	89 94 24 b0 00 00 00 	mov    DWORD PTR [esp+0xb0],edx
    2b27:	89 94 24 04 01 00 00 	mov    DWORD PTR [esp+0x104],edx
    2b2e:	89 94 24 08 01 00 00 	mov    DWORD PTR [esp+0x108],edx
    2b35:	89 94 24 0c 01 00 00 	mov    DWORD PTR [esp+0x10c],edx
    2b3c:	e8 df 58 00 00       	call   W?$ct:SOUND$n()_
    2b41:	89 f0                	mov    eax,esi
    2b43:	89 94 24 10 01 00 00 	mov    DWORD PTR [esp+0x110],edx
    2b4a:	e8 31 a1 00 00       	call   XFILE_size
    2b4f:	83 f8 ff             	cmp    eax,0xffffffff
    2b52:	75 3c                	jne    decompress_fst_branch_2
    2b54:	56                   	push   esi
    2b55:	68 da 03 00 00       	push   @obj3:fst_cpp_variable_19                                    ; fixup: num: 250, src obj: 1, src ofs: 0x2b56, dst obj: 3, dst ofs: 0x3da
    2b5a:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 249, src obj: 1, src ofs: 0x2b5b, dst obj: 3, dst ofs: 0x237fc
    2b5f:	e8 7d e0 06 00       	call   sprintf_
    2b64:	83 c4 0c             	add    esp,0xc
    2b67:	89 e0                	mov    eax,esp
    2b69:	e8 c2 5e 00 00       	call   W?$dt:SOUND$n()_
    2b6e:	8b b4 24 b0 00 00 00 	mov    esi,DWORD PTR [esp+0xb0]
    2b75:	b3 01                	mov    bl,0x1
    2b77:	85 f6                	test   esi,esi
    2b79:	74 07                	je     decompress_fst_branch_1
    2b7b:	89 f0                	mov    eax,esi
    2b7d:	e8 66 e8 06 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
decompress_fst_branch_1:
    2b82:	31 ff                	xor    edi,edi
    2b84:	89 bc 24 b0 00 00 00 	mov    DWORD PTR [esp+0xb0],edi
    2b8b:	e9 27 11 00 00       	jmp    decompress_fst_branch_125
decompress_fst_branch_2:
    2b90:	b8 80 1a 06 00       	mov    eax,0x61a80
    2b95:	e8 f9 e8 06 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
    2b9a:	89 84 24 c8 00 00 00 	mov    DWORD PTR [esp+0xc8],eax
    2ba1:	85 c0                	test   eax,eax
    2ba3:	75 0f                	jne    decompress_fst_branch_3
    2ba5:	bb ed 03 00 00       	mov    ebx,@obj3:fst_cpp_variable_20                                ; fixup: num: 248, src obj: 1, src ofs: 0x2ba6, dst obj: 3, dst ofs: 0x3ed
    2baa:	ba 1a 02 00 00       	mov    edx,0x21a
    2baf:	e8 7c 54 03 00       	call   _error_report
decompress_fst_branch_3:
    2bb4:	68 80 1a 06 00       	push   0x61a80
    2bb9:	8b 8c 24 cc 00 00 00 	mov    ecx,DWORD PTR [esp+0xcc]
    2bc0:	51                   	push   ecx
    2bc1:	e8 31 df 06 00       	call   _D32Lock
    2bc6:	83 c4 08             	add    esp,0x8
    2bc9:	68 00 02 00 00       	push   0x200
    2bce:	89 f0                	mov    eax,esi
    2bd0:	e8 ab c1 00 00       	call   XFILE_map_cd
    2bd5:	50                   	push   eax
    2bd6:	e8 9b e9 06 00       	call   open_
    2bdb:	83 c4 08             	add    esp,0x8
    2bde:	89 84 24 e0 00 00 00 	mov    DWORD PTR [esp+0xe0],eax
    2be5:	83 f8 ff             	cmp    eax,0xffffffff
    2be8:	75 24                	jne    decompress_fst_branch_4
    2bea:	56                   	push   esi
    2beb:	68 08 04 00 00       	push   @obj3:fst_cpp_variable_21                                    ; fixup: num: 256, src obj: 1, src ofs: 0x2bec, dst obj: 3, dst ofs: 0x408
    2bf0:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 255, src obj: 1, src ofs: 0x2bf1, dst obj: 3, dst ofs: 0x237fc
    2bf5:	bb fc 37 02 00       	mov    ebx,@obj3:log_buffer                                         ; fixup: num: 254, src obj: 1, src ofs: 0x2bf6, dst obj: 3, dst ofs: 0x237fc
    2bfa:	e8 e2 df 06 00       	call   sprintf_
    2bff:	83 c4 0c             	add    esp,0xc
    2c02:	ba 20 02 00 00       	mov    edx,0x220
    2c07:	31 c0                	xor    eax,eax
    2c09:	e8 22 54 03 00       	call   _error_report
decompress_fst_branch_4:
    2c0e:	8a 25 bc 0f 01 00    	mov    ah,BYTE PTR ds:@obj3:gore                                    ; fixup: num: 253, src obj: 1, src ofs: 0x2c10, dst obj: 3, dst ofs: 0x10fbc
    2c14:	bf ff ff ff ff       	mov    edi,0xffffffff
    2c19:	84 e4                	test   ah,ah
    2c1b:	0f 85 7c 00 00 00    	jne    decompress_fst_branch_9
    2c21:	bb 14 10 01 00       	mov    ebx,@obj3:fst_censor                                         ; fixup: num: 252, src obj: 1, src ofs: 0x2c22, dst obj: 3, dst ofs: 0x11014
    2c26:	31 c9                	xor    ecx,ecx
decompress_fst_branch_5:
    2c28:	89 da                	mov    edx,ebx
    2c2a:	89 f0                	mov    eax,esi
    2c2c:	e8 ec e3 06 00       	call   strstr_
    2c31:	85 c0                	test   eax,eax
    2c33:	0f 84 a3 01 00 00    	je     decompress_fst_branch_12
    2c39:	89 cf                	mov    edi,ecx
decompress_fst_branch_6:
    2c3b:	83 ff ff             	cmp    edi,0xffffffff
    2c3e:	74 5d                	je     decompress_fst_branch_9
    2c40:	b8 0c 00 00 00       	mov    eax,0xc
    2c45:	e8 ce f2 06 00       	call   W?$nwn(ui)pnv
    2c4a:	85 c0                	test   eax,eax
    2c4c:	74 13                	je     decompress_fst_branch_7
    2c4e:	c7 40 04 00 00 00 00 	mov    DWORD PTR [eax+0x4],0x0
    2c55:	c7 40 08 00 00 00 00 	mov    DWORD PTR [eax+0x8],0x0
    2c5c:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
    2c5f:	89 10                	mov    DWORD PTR [eax],edx
decompress_fst_branch_7:
    2c61:	89 84 24 0c 01 00 00 	mov    DWORD PTR [esp+0x10c],eax
    2c68:	75 0f                	jne    decompress_fst_branch_8
    2c6a:	bb 1b 04 00 00       	mov    ebx,@obj3:fst_cpp_variable_22                                ; fixup: num: 251, src obj: 1, src ofs: 0x2c6b, dst obj: 3, dst ofs: 0x41b
    2c6f:	ba 39 02 00 00       	mov    edx,0x239
    2c74:	e8 b7 53 03 00       	call   _error_report
decompress_fst_branch_8:
    2c79:	b8 00 03 00 00       	mov    eax,0x300
    2c7e:	e8 10 e8 06 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
    2c83:	89 84 24 10 01 00 00 	mov    DWORD PTR [esp+0x110],eax
    2c8a:	85 c0                	test   eax,eax
    2c8c:	75 0f                	jne    decompress_fst_branch_9
    2c8e:	bb 33 04 00 00       	mov    ebx,@obj3:fst_cpp_variable_23                                ; fixup: num: 258, src obj: 1, src ofs: 0x2c8f, dst obj: 3, dst ofs: 0x433
    2c93:	ba 3b 02 00 00       	mov    edx,0x23b
    2c98:	e8 93 53 03 00       	call   _error_report
decompress_fst_branch_9:
    2c9d:	bb 20 00 00 00       	mov    ebx,0x20
    2ca2:	8d 94 24 88 00 00 00 	lea    edx,[esp+0x88]
    2ca9:	8b 84 24 e0 00 00 00 	mov    eax,DWORD PTR [esp+0xe0]
    2cb0:	e8 ae f2 06 00       	call   read_
    2cb5:	8b 94 24 98 00 00 00 	mov    edx,DWORD PTR [esp+0x98]
    2cbc:	8d 04 95 00 00 00 00 	lea    eax,[edx*4+0x0]
    2cc3:	29 d0                	sub    eax,edx
    2cc5:	01 c0                	add    eax,eax
    2cc7:	e8 c7 e7 06 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
    2ccc:	89 84 24 c4 00 00 00 	mov    DWORD PTR [esp+0xc4],eax
    2cd3:	85 c0                	test   eax,eax
    2cd5:	75 0f                	jne    decompress_fst_branch_10
    2cd7:	bb 4b 04 00 00       	mov    ebx,@obj3:fst_cpp_variable_24                                ; fixup: num: 257, src obj: 1, src ofs: 0x2cd8, dst obj: 3, dst ofs: 0x44b
    2cdc:	ba 43 02 00 00       	mov    edx,0x243
    2ce1:	e8 4a 53 03 00       	call   _error_report
decompress_fst_branch_10:
    2ce6:	8b 94 24 98 00 00 00 	mov    edx,DWORD PTR [esp+0x98]
    2ced:	8d 1c 95 00 00 00 00 	lea    ebx,[edx*4+0x0]
    2cf4:	8b 84 24 e0 00 00 00 	mov    eax,DWORD PTR [esp+0xe0]
    2cfb:	29 d3                	sub    ebx,edx
    2cfd:	8b 94 24 c4 00 00 00 	mov    edx,DWORD PTR [esp+0xc4]
    2d04:	01 db                	add    ebx,ebx
    2d06:	e8 58 f2 06 00       	call   read_
    2d0b:	8b 94 24 98 00 00 00 	mov    edx,DWORD PTR [esp+0x98]
    2d12:	8d 04 95 00 00 00 00 	lea    eax,[edx*4+0x0]
    2d19:	29 d0                	sub    eax,edx
    2d1b:	01 c0                	add    eax,eax
    2d1d:	50                   	push   eax
    2d1e:	8b 84 24 c8 00 00 00 	mov    eax,DWORD PTR [esp+0xc8]
    2d25:	50                   	push   eax
    2d26:	e8 cc dd 06 00       	call   _D32Lock
    2d2b:	83 c4 08             	add    esp,0x8
    2d2e:	b9 08 00 00 00       	mov    ecx,0x8
    2d33:	b8 34 30 02 00       	mov    eax,@obj3:the_viewport                                       ; fixup: num: 259, src obj: 1, src ofs: 0x2d34, dst obj: 3, dst ofs: 0x23034
    2d38:	6a 01                	push   0x1
    2d3a:	8b 9c 24 94 00 00 00 	mov    ebx,DWORD PTR [esp+0x94]
    2d41:	8b 94 24 90 00 00 00 	mov    edx,DWORD PTR [esp+0x90]
    2d48:	e8 33 99 02 00       	call   resize
    2d4d:	8b 84 24 c8 00 00 00 	mov    eax,DWORD PTR [esp+0xc8]
    2d54:	8b 94 24 a0 00 00 00 	mov    edx,DWORD PTR [esp+0xa0]
    2d5b:	89 84 24 d8 00 00 00 	mov    DWORD PTR [esp+0xd8],eax
    2d62:	85 d2                	test   edx,edx
    2d64:	74 56                	je     decompress_fst_branch_11
    2d66:	8b 84 24 c4 00 00 00 	mov    eax,DWORD PTR [esp+0xc4]
    2d6d:	31 c9                	xor    ecx,ecx
    2d6f:	8b 94 24 c4 00 00 00 	mov    edx,DWORD PTR [esp+0xc4]
    2d76:	66 8b 48 04          	mov    cx,WORD PTR [eax+0x4]
    2d7a:	31 c0                	xor    eax,eax
    2d7c:	8b 9c 24 a4 00 00 00 	mov    ebx,DWORD PTR [esp+0xa4]
    2d83:	66 8b 42 0a          	mov    ax,WORD PTR [edx+0xa]
    2d87:	8b 94 24 a0 00 00 00 	mov    edx,DWORD PTR [esp+0xa0]
    2d8e:	01 c1                	add    ecx,eax
    2d90:	89 e0                	mov    eax,esp
    2d92:	e8 59 5f 00 00       	call   initialize_buffer
    2d97:	ba 10 27 00 00       	mov    edx,0x2710
    2d9c:	89 e0                	mov    eax,esp
    2d9e:	e8 7d 6a 00 00       	call   set_loop_count
    2da3:	89 e0                	mov    eax,esp
    2da5:	e8 76 6e 00 00       	call   bytes_per_second
    2daa:	31 d2                	xor    edx,edx
    2dac:	8b 9c 24 9c 00 00 00 	mov    ebx,DWORD PTR [esp+0x9c]
    2db3:	f7 f3                	div    ebx
    2db5:	89 84 24 14 01 00 00 	mov    DWORD PTR [esp+0x114],eax
decompress_fst_branch_11:
    2dbc:	81 bc 24 8c 00 00 00 40 01 00 00 	cmp    DWORD PTR [esp+0x8c],0x140
    2dc7:	75 28                	jne    decompress_fst_branch_13
    2dc9:	bb 00 fa 00 00       	mov    ebx,0xfa00
    2dce:	b8 00 00 0a 00       	mov    eax,0xa0000
    2dd3:	31 d2                	xor    edx,edx
    2dd5:	e8 f6 e5 06 00       	call   memset_
    2dda:	eb 32                	jmp    decompress_fst_branch_14
decompress_fst_branch_12:
    2ddc:	41                   	inc    ecx
    2ddd:	81 c3 18 01 00 00    	add    ebx,0x118
    2de3:	83 f9 19             	cmp    ecx,0x19
    2de6:	0f 8c 3c fe ff ff    	jl     decompress_fst_branch_5
    2dec:	e9 4a fe ff ff       	jmp    decompress_fst_branch_6
decompress_fst_branch_13:
    2df1:	6a 01                	push   0x1
    2df3:	8b 8c 24 94 00 00 00 	mov    ecx,DWORD PTR [esp+0x94]
    2dfa:	8b 9c 24 90 00 00 00 	mov    ebx,DWORD PTR [esp+0x90]
    2e01:	31 d2                	xor    edx,edx
    2e03:	31 c0                	xor    eax,eax
    2e05:	6a 00                	push   0x0
    2e07:	49                   	dec    ecx
    2e08:	4b                   	dec    ebx
    2e09:	e8 42 29 00 00       	call   VESA_rectangle
decompress_fst_branch_14:
    2e0e:	8b 94 24 8c 00 00 00 	mov    edx,DWORD PTR [esp+0x8c]
    2e15:	8d 04 95 00 00 00 00 	lea    eax,[edx*4+0x0]
    2e1c:	29 d0                	sub    eax,edx
    2e1e:	89 84 24 f0 00 00 00 	mov    DWORD PTR [esp+0xf0],eax
    2e25:	01 d0                	add    eax,edx
    2e27:	89 84 24 f4 00 00 00 	mov    DWORD PTR [esp+0xf4],eax
    2e2e:	89 d0                	mov    eax,edx
    2e30:	c1 e8 02             	shr    eax,0x2
    2e33:	89 84 24 f8 00 00 00 	mov    DWORD PTR [esp+0xf8],eax
    2e3a:	8b 84 24 90 00 00 00 	mov    eax,DWORD PTR [esp+0x90]
    2e41:	c1 e8 02             	shr    eax,0x2
    2e44:	48                   	dec    eax
    2e45:	89 d6                	mov    esi,edx
    2e47:	89 84 24 fc 00 00 00 	mov    DWORD PTR [esp+0xfc],eax
    2e4e:	89 d0                	mov    eax,edx
    2e50:	0f af 84 24 90 00 00 00 	imul   eax,DWORD PTR [esp+0x90]
    2e58:	8b 1d 34 30 02 00    	mov    ebx,DWORD PTR ds:@obj3:the_viewport                          ; fixup: num: 260, src obj: 1, src ofs: 0x2e5a, dst obj: 3, dst ofs: 0x23034
    2e5e:	8b 4b 34             	mov    ecx,DWORD PTR [ebx+0x34]
    2e61:	31 d2                	xor    edx,edx
    2e63:	f7 f1                	div    ecx
    2e65:	8d 04 85 00 00 00 00 	lea    eax,[eax*4+0x0]
    2e6c:	8d 58 04             	lea    ebx,[eax+0x4]
    2e6f:	89 f2                	mov    edx,esi
    2e71:	8b 84 24 a8 00 00 00 	mov    eax,DWORD PTR [esp+0xa8]
    2e78:	89 d9                	mov    ecx,ebx
    2e7a:	39 f0                	cmp    eax,esi
    2e7c:	75 0d                	jne    decompress_fst_branch_15
    2e7e:	3b 9c 24 ac 00 00 00 	cmp    ebx,DWORD PTR [esp+0xac]
    2e85:	0f 84 a4 00 00 00    	je     decompress_fst_branch_18
decompress_fst_branch_15:
    2e8b:	89 94 24 a8 00 00 00 	mov    DWORD PTR [esp+0xa8],edx
    2e92:	89 8c 24 ac 00 00 00 	mov    DWORD PTR [esp+0xac],ecx
    2e99:	85 d2                	test   edx,edx
    2e9b:	75 25                	jne    decompress_fst_branch_16
    2e9d:	85 c9                	test   ecx,ecx
    2e9f:	75 21                	jne    decompress_fst_branch_16
    2ea1:	8b 94 24 b0 00 00 00 	mov    edx,DWORD PTR [esp+0xb0]
    2ea8:	85 d2                	test   edx,edx
    2eaa:	0f 84 7f 00 00 00    	je     decompress_fst_branch_18
    2eb0:	89 d0                	mov    eax,edx
    2eb2:	31 db                	xor    ebx,ebx
    2eb4:	e8 2f e5 06 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
    2eb9:	89 9c 24 b0 00 00 00 	mov    DWORD PTR [esp+0xb0],ebx
    2ec0:	eb 6d                	jmp    decompress_fst_branch_18
decompress_fst_branch_16:
    2ec2:	8b 94 24 b0 00 00 00 	mov    edx,DWORD PTR [esp+0xb0]
    2ec9:	85 d2                	test   edx,edx
    2ecb:	74 07                	je     decompress_fst_branch_17
    2ecd:	89 d0                	mov    eax,edx
    2ecf:	e8 14 e5 06 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
decompress_fst_branch_17:
    2ed4:	8b 84 24 a8 00 00 00 	mov    eax,DWORD PTR [esp+0xa8]
    2edb:	0f af 84 24 ac 00 00 00 	imul   eax,DWORD PTR [esp+0xac]
    2ee3:	31 db                	xor    ebx,ebx
    2ee5:	89 9c 24 b0 00 00 00 	mov    DWORD PTR [esp+0xb0],ebx
    2eec:	e8 a2 e5 06 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
    2ef1:	89 84 24 b0 00 00 00 	mov    DWORD PTR [esp+0xb0],eax
    2ef8:	85 c0                	test   eax,eax
    2efa:	75 33                	jne    decompress_fst_branch_18
    2efc:	8b b4 24 a8 00 00 00 	mov    esi,DWORD PTR [esp+0xa8]
    2f03:	56                   	push   esi
    2f04:	8b 84 24 b0 00 00 00 	mov    eax,DWORD PTR [esp+0xb0]
    2f0b:	50                   	push   eax
    2f0c:	68 df 02 00 00       	push   @obj3:fst_cpp_variable_8                                     ; fixup: num: 263, src obj: 1, src ofs: 0x2f0d, dst obj: 3, dst ofs: 0x2df
    2f11:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 262, src obj: 1, src ofs: 0x2f12, dst obj: 3, dst ofs: 0x237fc
    2f16:	bb fc 37 02 00       	mov    ebx,@obj3:log_buffer                                         ; fixup: num: 261, src obj: 1, src ofs: 0x2f17, dst obj: 3, dst ofs: 0x237fc
    2f1b:	e8 c1 dc 06 00       	call   sprintf_
    2f20:	83 c4 10             	add    esp,0x10
    2f23:	ba 96 00 00 00       	mov    edx,0x96
    2f28:	31 c0                	xor    eax,eax
    2f2a:	e8 01 51 03 00       	call   _error_report
decompress_fst_branch_18:
    2f2f:	8b 9c 24 ac 00 00 00 	mov    ebx,DWORD PTR [esp+0xac]
    2f36:	0f af 9c 24 a8 00 00 00 	imul   ebx,DWORD PTR [esp+0xa8]
    2f3e:	31 d2                	xor    edx,edx
    2f40:	8b 84 24 b0 00 00 00 	mov    eax,DWORD PTR [esp+0xb0]
    2f47:	81 e2 ff 00 00 00    	and    edx,0xff
    2f4d:	e8 7e e4 06 00       	call   memset_
    2f52:	31 d2                	xor    edx,edx
    2f54:	66 89 15 08 59 02 00 	mov    WORD PTR ds:@obj3:raw_key,dx                                 ; fixup: num: 264, src obj: 1, src ofs: 0x2f57, dst obj: 3, dst ofs: 0x25908
    2f5b:	52                   	push   edx
    2f5c:	ba da 03 00 00       	mov    edx,0x3da
decompress_fst_branch_19:
    2f61:	29 c0                	sub    eax,eax
    2f63:	ec                   	in     al,dx
    2f64:	a8 08                	test   al,0x8
    2f66:	75 f9                	jne    decompress_fst_branch_19
    2f68:	ba da 03 00 00       	mov    edx,0x3da
decompress_fst_branch_20:
    2f6d:	29 c0                	sub    eax,eax
    2f6f:	ec                   	in     al,dx
    2f70:	a8 08                	test   al,0x8
    2f72:	75 f9                	jne    decompress_fst_branch_20
    2f74:	5a                   	pop    edx
    2f75:	8b 84 24 c8 00 00 00 	mov    eax,DWORD PTR [esp+0xc8]
    2f7c:	83 c0 02             	add    eax,0x2
    2f7f:	89 84 24 c0 00 00 00 	mov    DWORD PTR [esp+0xc0],eax
    2f86:	8b 84 24 c4 00 00 00 	mov    eax,DWORD PTR [esp+0xc4]
    2f8d:	89 84 24 b8 00 00 00 	mov    DWORD PTR [esp+0xb8],eax
    2f94:	8b 84 24 14 01 00 00 	mov    eax,DWORD PTR [esp+0x114]
    2f9b:	31 f6                	xor    esi,esi
    2f9d:	89 84 24 3c 01 00 00 	mov    DWORD PTR [esp+0x13c],eax
    2fa4:	0f af c6             	imul   eax,esi
    2fa7:	8d 14 fd 00 00 00 00 	lea    edx,[edi*8+0x0]
    2fae:	01 fa                	add    edx,edi
    2fb0:	8d 14 95 00 00 00 00 	lea    edx,[edx*4+0x0]
    2fb7:	29 fa                	sub    edx,edi
    2fb9:	89 84 24 bc 00 00 00 	mov    DWORD PTR [esp+0xbc],eax
    2fc0:	8b 84 24 08 01 00 00 	mov    eax,DWORD PTR [esp+0x108]
    2fc7:	8d 14 d5 00 00 00 00 	lea    edx,[edx*8+0x0]
    2fce:	8d 04 85 00 00 00 00 	lea    eax,[eax*4+0x0]
    2fd5:	01 d0                	add    eax,edx
    2fd7:	89 b4 24 dc 00 00 00 	mov    DWORD PTR [esp+0xdc],esi
    2fde:	89 84 24 40 01 00 00 	mov    DWORD PTR [esp+0x140],eax
    2fe5:	eb 37                	jmp    decompress_fst_branch_22
decompress_fst_branch_21:
    2fe7:	8b 9c 24 b8 00 00 00 	mov    ebx,DWORD PTR [esp+0xb8]
    2fee:	8b 84 24 3c 01 00 00 	mov    eax,DWORD PTR [esp+0x13c]
    2ff5:	8b 8c 24 bc 00 00 00 	mov    ecx,DWORD PTR [esp+0xbc]
    2ffc:	8b b4 24 dc 00 00 00 	mov    esi,DWORD PTR [esp+0xdc]
    3003:	83 c3 06             	add    ebx,0x6
    3006:	46                   	inc    esi
    3007:	01 c1                	add    ecx,eax
    3009:	89 9c 24 b8 00 00 00 	mov    DWORD PTR [esp+0xb8],ebx
    3010:	89 8c 24 bc 00 00 00 	mov    DWORD PTR [esp+0xbc],ecx
    3017:	89 b4 24 dc 00 00 00 	mov    DWORD PTR [esp+0xdc],esi
decompress_fst_branch_22:
    301e:	8b 84 24 98 00 00 00 	mov    eax,DWORD PTR [esp+0x98]
    3025:	8b 94 24 dc 00 00 00 	mov    edx,DWORD PTR [esp+0xdc]
    302c:	48                   	dec    eax
    302d:	39 d0                	cmp    eax,edx
    302f:	0f 86 bc 0b 00 00    	jbe    decompress_fst_branch_119
    3035:	85 d2                	test   edx,edx
    3037:	74 2a                	je     decompress_fst_branch_23
    3039:	0f bf 05 08 59 02 00 	movsx  eax,WORD PTR ds:@obj3:raw_key                                ; fixup: num: 267, src obj: 1, src ofs: 0x303c, dst obj: 3, dst ofs: 0x25908
    3040:	83 f8 01             	cmp    eax,0x1
    3043:	0f 84 a8 0b 00 00    	je     decompress_fst_branch_119
    3049:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 266, src obj: 1, src ofs: 0x304b, dst obj: 3, dst ofs: 0x25974
    3050:	0f 85 9b 0b 00 00    	jne    decompress_fst_branch_119
    3056:	80 3d 72 59 02 00 00 	cmp    BYTE PTR ds:@obj3:right_button,0x0                           ; fixup: num: 265, src obj: 1, src ofs: 0x3058, dst obj: 3, dst ofs: 0x25972
    305d:	0f 85 8e 0b 00 00    	jne    decompress_fst_branch_119
decompress_fst_branch_23:
    3063:	8b 84 24 b8 00 00 00 	mov    eax,DWORD PTR [esp+0xb8]
    306a:	31 db                	xor    ebx,ebx
    306c:	8b 94 24 c8 00 00 00 	mov    edx,DWORD PTR [esp+0xc8]
    3073:	66 8b 58 04          	mov    bx,WORD PTR [eax+0x4]
    3077:	8b 08                	mov    ecx,DWORD PTR [eax]
    3079:	8b 84 24 e0 00 00 00 	mov    eax,DWORD PTR [esp+0xe0]
    3080:	01 cb                	add    ebx,ecx
    3082:	e8 dc ee 06 00       	call   read_
    3087:	8b 84 24 b8 00 00 00 	mov    eax,DWORD PTR [esp+0xb8]
    308e:	66 83 78 04 00       	cmp    WORD PTR [eax+0x4],0x0
    3093:	74 2f                	je     decompress_fst_branch_25
    3095:	89 c1                	mov    ecx,eax
decompress_fst_branch_24:
    3097:	8b 94 24 c8 00 00 00 	mov    edx,DWORD PTR [esp+0xc8]
    309e:	89 e0                	mov    eax,esp
    30a0:	31 db                	xor    ebx,ebx
    30a2:	8b 31                	mov    esi,DWORD PTR [ecx]
    30a4:	66 8b 59 04          	mov    bx,WORD PTR [ecx+0x4]
    30a8:	01 f2                	add    edx,esi
    30aa:	e8 91 5e 00 00       	call   insert_into_buffer
    30af:	84 c0                	test   al,al
    30b1:	74 e4                	je     decompress_fst_branch_24
    30b3:	83 bc 24 dc 00 00 00 00 	cmp    DWORD PTR [esp+0xdc],0x0
    30bb:	75 07                	jne    decompress_fst_branch_25
    30bd:	89 e0                	mov    eax,esp
    30bf:	e8 ec 66 00 00       	call   play
decompress_fst_branch_25:
    30c4:	83 bc 24 a0 00 00 00 00 	cmp    DWORD PTR [esp+0xa0],0x0
    30cc:	74 12                	je     decompress_fst_branch_27
    30ce:	8b 94 24 bc 00 00 00 	mov    edx,DWORD PTR [esp+0xbc]
decompress_fst_branch_26:
    30d5:	89 e0                	mov    eax,esp
    30d7:	e8 14 69 00 00       	call   get_bytes_processed
    30dc:	39 d0                	cmp    eax,edx
    30de:	72 f5                	jb     decompress_fst_branch_26
decompress_fst_branch_27:
    30e0:	8b 84 24 c0 00 00 00 	mov    eax,DWORD PTR [esp+0xc0]
    30e7:	89 84 24 d0 00 00 00 	mov    DWORD PTR [esp+0xd0],eax
    30ee:	8b 84 24 d8 00 00 00 	mov    eax,DWORD PTR [esp+0xd8]
    30f5:	31 d2                	xor    edx,edx
    30f7:	66 8b 10             	mov    dx,WORD PTR [eax]
    30fa:	89 d0                	mov    eax,edx
    30fc:	c1 fa 1f             	sar    edx,0x1f
    30ff:	c1 e2 03             	shl    edx,0x3
    3102:	1b c2                	sbb    eax,edx
    3104:	c1 f8 03             	sar    eax,0x3
    3107:	03 84 24 c0 00 00 00 	add    eax,DWORD PTR [esp+0xc0]
    310e:	40                   	inc    eax
    310f:	8b 15 34 30 02 00    	mov    edx,DWORD PTR ds:@obj3:the_viewport                          ; fixup: num: 269, src obj: 1, src ofs: 0x3111, dst obj: 3, dst ofs: 0x23034
    3115:	89 84 24 cc 00 00 00 	mov    DWORD PTR [esp+0xcc],eax
    311c:	8b 42 38             	mov    eax,DWORD PTR [edx+0x38]
    311f:	89 84 24 d4 00 00 00 	mov    DWORD PTR [esp+0xd4],eax
    3126:	83 7a 3c 00          	cmp    DWORD PTR [edx+0x3c],0x0
    312a:	74 15                	je     decompress_fst_branch_28
    312c:	31 c0                	xor    eax,eax
    312e:	ff 52 3c             	call   DWORD PTR [edx+0x3c]
    3131:	31 c0                	xor    eax,eax
    3133:	31 d2                	xor    edx,edx
    3135:	a0 c0 7f 01 00       	mov    al,ds:@obj3:VESA_readable_number                             ; fixup: num: 268, src obj: 1, src ofs: 0x3136, dst obj: 3, dst ofs: 0x17fc0
    313a:	31 ed                	xor    ebp,ebp
    313c:	e8 5f 1d 00 00       	call   select_super_VGA_video_memory_window
decompress_fst_branch_28:
    3141:	80 3d bc 0f 01 00 00 	cmp    BYTE PTR ds:@obj3:gore,0x0                                   ; fixup: num: 273, src obj: 1, src ofs: 0x3143, dst obj: 3, dst ofs: 0x10fbc
    3148:	0f 85 c2 00 00 00    	jne    decompress_fst_branch_30
    314e:	8b 94 24 40 01 00 00 	mov    edx,DWORD PTR [esp+0x140]
    3155:	8b 84 24 dc 00 00 00 	mov    eax,DWORD PTR [esp+0xdc]
    315c:	3b 82 14 11 01 00    	cmp    eax,DWORD PTR [edx+@obj3:fst_censor_variable_1]              ; fixup: num: 272, src obj: 1, src ofs: 0x315e, dst obj: 3, dst ofs: 0x11114
    3162:	0f 85 a8 00 00 00    	jne    decompress_fst_branch_30
    3168:	8a bc 24 04 01 00 00 	mov    bh,BYTE PTR [esp+0x104]
    316f:	8b bc 24 08 01 00 00 	mov    edi,DWORD PTR [esp+0x108]
    3176:	8d 72 04             	lea    esi,[edx+0x4]
    3179:	80 f7 01             	xor    bh,0x1
    317c:	89 b4 24 40 01 00 00 	mov    DWORD PTR [esp+0x140],esi
    3183:	88 bc 24 04 01 00 00 	mov    BYTE PTR [esp+0x104],bh
    318a:	47                   	inc    edi
    318b:	8b 84 24 04 01 00 00 	mov    eax,DWORD PTR [esp+0x104]
    3192:	89 bc 24 08 01 00 00 	mov    DWORD PTR [esp+0x108],edi
    3199:	85 c0                	test   eax,eax
    319b:	74 56                	je     decompress_fst_branch_29
    319d:	bb 00 fa 00 00       	mov    ebx,0xfa00
    31a2:	b8 00 00 0a 00       	mov    eax,0xa0000
    31a7:	31 d2                	xor    edx,edx
    31a9:	e8 22 e2 06 00       	call   memset_
    31ae:	bb 01 00 00 00       	mov    ebx,0x1
    31b3:	ba 6b 04 00 00       	mov    edx,@obj3:fst_cpp_variable_25                                ; fixup: num: 271, src obj: 1, src ofs: 0x31b4, dst obj: 3, dst ofs: 0x46b
    31b8:	8b 84 24 0c 01 00 00 	mov    eax,DWORD PTR [esp+0x10c]
    31bf:	e8 6c 70 03 00       	call   load_from_pcx_file
    31c4:	8b 84 24 0c 01 00 00 	mov    eax,DWORD PTR [esp+0x10c]
    31cb:	8b 8c 24 0c 01 00 00 	mov    ecx,DWORD PTR [esp+0x10c]
    31d2:	8b 9c 24 0c 01 00 00 	mov    ebx,DWORD PTR [esp+0x10c]
    31d9:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
    31dc:	8b 35 34 30 02 00    	mov    esi,DWORD PTR ds:@obj3:the_viewport                          ; fixup: num: 270, src obj: 1, src ofs: 0x31de, dst obj: 3, dst ofs: 0x23034
    31e2:	50                   	push   eax
    31e3:	8b 49 04             	mov    ecx,DWORD PTR [ecx+0x4]
    31e6:	31 d2                	xor    edx,edx
    31e8:	6a 00                	push   0x0
    31ea:	8b 1b                	mov    ebx,DWORD PTR [ebx]
    31ec:	31 c0                	xor    eax,eax
    31ee:	ff 56 30             	call   DWORD PTR [esi+0x30]
    31f1:	eb 1d                	jmp    decompress_fst_branch_30
decompress_fst_branch_29:
    31f3:	bb 00 fa 00 00       	mov    ebx,0xfa00
    31f8:	b8 00 00 0a 00       	mov    eax,0xa0000
    31fd:	31 d2                	xor    edx,edx
    31ff:	e8 cc e1 06 00       	call   memset_
    3204:	8b 84 24 10 01 00 00 	mov    eax,DWORD PTR [esp+0x110]
    320b:	e8 b0 50 03 00       	call   set_all_palette_registers
decompress_fst_branch_30:
    3210:	8b 84 24 d0 00 00 00 	mov    eax,DWORD PTR [esp+0xd0]
    3217:	8a 00                	mov    al,BYTE PTR [eax]
    3219:	24 80                	and    al,0x80
    321b:	25 ff 00 00 00       	and    eax,0xff
    3220:	74 4a                	je     decompress_fst_branch_32
    3222:	8b 94 24 10 01 00 00 	mov    edx,DWORD PTR [esp+0x110]
    3229:	85 d2                	test   edx,edx
    322b:	74 1e                	je     decompress_fst_branch_31
    322d:	b9 00 03 00 00       	mov    ecx,0x300
    3232:	8b b4 24 cc 00 00 00 	mov    esi,DWORD PTR [esp+0xcc]
    3239:	89 d7                	mov    edi,edx
    323b:	57                   	push   edi
    323c:	89 c8                	mov    eax,ecx
    323e:	c1 e9 02             	shr    ecx,0x2
    3241:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
    3243:	8a c8                	mov    cl,al
    3245:	80 e1 03             	and    cl,0x3
    3248:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
    324a:	5f                   	pop    edi
decompress_fst_branch_31:
    324b:	83 bc 24 04 01 00 00 00 	cmp    DWORD PTR [esp+0x104],0x0
    3253:	75 17                	jne    decompress_fst_branch_32
    3255:	8b 84 24 cc 00 00 00 	mov    eax,DWORD PTR [esp+0xcc]
    325c:	e8 5f 50 03 00       	call   set_all_palette_registers
    3261:	81 84 24 cc 00 00 00 00 03 00 00 	add    DWORD PTR [esp+0xcc],0x300
decompress_fst_branch_32:
    326c:	8b b4 24 04 01 00 00 	mov    esi,DWORD PTR [esp+0x104]
    3273:	85 f6                	test   esi,esi
    3275:	0f 85 6c fd ff ff    	jne    decompress_fst_branch_21
    327b:	bf 01 00 00 00       	mov    edi,0x1
    3280:	8b 84 24 d0 00 00 00 	mov    eax,DWORD PTR [esp+0xd0]
    3287:	89 bc 24 e4 00 00 00 	mov    DWORD PTR [esp+0xe4],edi
    328e:	89 b4 24 ec 00 00 00 	mov    DWORD PTR [esp+0xec],esi
    3295:	8a 08                	mov    cl,BYTE PTR [eax]
    3297:	89 b4 24 e8 00 00 00 	mov    DWORD PTR [esp+0xe8],esi
    329e:	00 c9                	add    cl,cl
    32a0:	89 b4 24 38 01 00 00 	mov    DWORD PTR [esp+0x138],esi
    32a7:	88 08                	mov    BYTE PTR [eax],cl
decompress_fst_branch_33:
    32a9:	a1 34 30 02 00       	mov    eax,ds:@obj3:the_viewport                                    ; fixup: num: 278, src obj: 1, src ofs: 0x32aa, dst obj: 3, dst ofs: 0x23034
    32ae:	83 78 3c 00          	cmp    DWORD PTR [eax+0x3c],0x0
    32b2:	74 5c                	je     decompress_fst_branch_34
    32b4:	8b 84 24 38 01 00 00 	mov    eax,DWORD PTR [esp+0x138]
    32bb:	0f bf 80 cc 97 01 00 	movsx  eax,WORD PTR [eax+@obj3:line_start_table_split]              ; fixup: num: 277, src obj: 1, src ofs: 0x32be, dst obj: 3, dst ofs: 0x197cc
    32c2:	83 f8 ff             	cmp    eax,0xffffffff
    32c5:	0f 85 e2 03 00 00    	jne    decompress_fst_branch_75
    32cb:	8b 84 24 38 01 00 00 	mov    eax,DWORD PTR [esp+0x138]
    32d2:	0f bf 80 ce 97 01 00 	movsx  eax,WORD PTR [eax+@obj3:line_start_table_split_variable_1]   ; fixup: num: 276, src obj: 1, src ofs: 0x32d5, dst obj: 3, dst ofs: 0x197ce
    32d9:	83 f8 ff             	cmp    eax,0xffffffff
    32dc:	0f 85 cb 03 00 00    	jne    decompress_fst_branch_75
    32e2:	8b 84 24 38 01 00 00 	mov    eax,DWORD PTR [esp+0x138]
    32e9:	0f bf 80 d0 97 01 00 	movsx  eax,WORD PTR [eax+@obj3:line_start_table_split_variable_2]   ; fixup: num: 275, src obj: 1, src ofs: 0x32ec, dst obj: 3, dst ofs: 0x197d0
    32f0:	83 f8 ff             	cmp    eax,0xffffffff
    32f3:	0f 85 b4 03 00 00    	jne    decompress_fst_branch_75
    32f9:	8b 84 24 38 01 00 00 	mov    eax,DWORD PTR [esp+0x138]
    3300:	0f bf 80 d2 97 01 00 	movsx  eax,WORD PTR [eax+@obj3:line_start_table_split_variable_3]   ; fixup: num: 274, src obj: 1, src ofs: 0x3303, dst obj: 3, dst ofs: 0x197d2
    3307:	83 f8 ff             	cmp    eax,0xffffffff
    330a:	0f 85 9d 03 00 00    	jne    decompress_fst_branch_75
decompress_fst_branch_34:
    3310:	8b 84 24 8c 00 00 00 	mov    eax,DWORD PTR [esp+0x8c]
    3317:	31 d2                	xor    edx,edx
    3319:	89 84 24 18 01 00 00 	mov    DWORD PTR [esp+0x118],eax
    3320:	8b 84 24 f8 00 00 00 	mov    eax,DWORD PTR [esp+0xf8]
    3327:	89 94 24 20 01 00 00 	mov    DWORD PTR [esp+0x120],edx
    332e:	89 84 24 1c 01 00 00 	mov    DWORD PTR [esp+0x11c],eax
    3335:	85 c0                	test   eax,eax
    3337:	0f 8e 1d 03 00 00    	jle    decompress_fst_branch_73
    333d:	31 ff                	xor    edi,edi
decompress_fst_branch_35:
    333f:	8b 84 24 d0 00 00 00 	mov    eax,DWORD PTR [esp+0xd0]
    3346:	8a 00                	mov    al,BYTE PTR [eax]
    3348:	8b 94 24 18 01 00 00 	mov    edx,DWORD PTR [esp+0x118]
    334f:	24 80                	and    al,0x80
    3351:	25 ff 00 00 00       	and    eax,0xff
    3356:	0f 84 96 02 00 00    	je     decompress_fst_branch_70
    335c:	8b b4 24 e4 00 00 00 	mov    esi,DWORD PTR [esp+0xe4]
    3363:	46                   	inc    esi
    3364:	89 b4 24 e4 00 00 00 	mov    DWORD PTR [esp+0xe4],esi
    336b:	83 fe 08             	cmp    esi,0x8
    336e:	75 18                	jne    decompress_fst_branch_36
    3370:	8b 9c 24 d0 00 00 00 	mov    ebx,DWORD PTR [esp+0xd0]
    3377:	43                   	inc    ebx
    3378:	89 bc 24 e4 00 00 00 	mov    DWORD PTR [esp+0xe4],edi
    337f:	89 9c 24 d0 00 00 00 	mov    DWORD PTR [esp+0xd0],ebx
    3386:	eb 0d                	jmp    decompress_fst_branch_37
decompress_fst_branch_36:
    3388:	8b 84 24 d0 00 00 00 	mov    eax,DWORD PTR [esp+0xd0]
    338f:	8a 18                	mov    bl,BYTE PTR [eax]
    3391:	00 db                	add    bl,bl
    3393:	88 18                	mov    BYTE PTR [eax],bl
decompress_fst_branch_37:
    3395:	8b 84 24 d0 00 00 00 	mov    eax,DWORD PTR [esp+0xd0]
    339c:	8a 00                	mov    al,BYTE PTR [eax]
    339e:	24 80                	and    al,0x80
    33a0:	25 ff 00 00 00       	and    eax,0xff
    33a5:	0f 84 13 02 00 00    	je     decompress_fst_branch_69
    33ab:	89 d6                	mov    esi,edx
    33ad:	8b 94 24 cc 00 00 00 	mov    edx,DWORD PTR [esp+0xcc]
    33b4:	8b 84 24 cc 00 00 00 	mov    eax,DWORD PTR [esp+0xcc]
    33bb:	8b 8c 24 cc 00 00 00 	mov    ecx,DWORD PTR [esp+0xcc]
    33c2:	8a 72 01             	mov    dh,BYTE PTR [edx+0x1]
    33c5:	66 8b 40 02          	mov    ax,WORD PTR [eax+0x2]
    33c9:	8a 11                	mov    dl,BYTE PTR [ecx]
    33cb:	89 c1                	mov    ecx,eax
    33cd:	30 c1                	xor    cl,al
    33cf:	8b 9c 24 d4 00 00 00 	mov    ebx,DWORD PTR [esp+0xd4]
    33d6:	80 e5 10             	and    ch,0x10
    33d9:	81 e1 ff ff 00 00    	and    ecx,0xffff
    33df:	74 04                	je     decompress_fst_branch_38
    33e1:	88 f1                	mov    cl,dh
    33e3:	eb 02                	jmp    decompress_fst_branch_39
decompress_fst_branch_38:
    33e5:	88 d1                	mov    cl,dl
decompress_fst_branch_39:
    33e7:	88 8c 24 27 01 00 00 	mov    BYTE PTR [esp+0x127],cl
    33ee:	89 c1                	mov    ecx,eax
    33f0:	30 c1                	xor    cl,al
    33f2:	80 e5 20             	and    ch,0x20
    33f5:	81 e1 ff ff 00 00    	and    ecx,0xffff
    33fb:	74 04                	je     decompress_fst_branch_40
    33fd:	88 f1                	mov    cl,dh
    33ff:	eb 02                	jmp    decompress_fst_branch_41
decompress_fst_branch_40:
    3401:	88 d1                	mov    cl,dl
decompress_fst_branch_41:
    3403:	88 8c 24 26 01 00 00 	mov    BYTE PTR [esp+0x126],cl
    340a:	89 c1                	mov    ecx,eax
    340c:	30 c1                	xor    cl,al
    340e:	80 e5 40             	and    ch,0x40
    3411:	81 e1 ff ff 00 00    	and    ecx,0xffff
    3417:	74 04                	je     decompress_fst_branch_42
    3419:	88 f1                	mov    cl,dh
    341b:	eb 02                	jmp    decompress_fst_branch_43
decompress_fst_branch_42:
    341d:	88 d1                	mov    cl,dl
decompress_fst_branch_43:
    341f:	88 8c 24 25 01 00 00 	mov    BYTE PTR [esp+0x125],cl
    3426:	89 c1                	mov    ecx,eax
    3428:	30 c1                	xor    cl,al
    342a:	80 e5 80             	and    ch,0x80
    342d:	81 e1 ff ff 00 00    	and    ecx,0xffff
    3433:	74 04                	je     decompress_fst_branch_44
    3435:	88 f1                	mov    cl,dh
    3437:	eb 02                	jmp    decompress_fst_branch_45
decompress_fst_branch_44:
    3439:	88 d1                	mov    cl,dl
decompress_fst_branch_45:
    343b:	88 8c 24 24 01 00 00 	mov    BYTE PTR [esp+0x124],cl
    3442:	8b 8c 24 24 01 00 00 	mov    ecx,DWORD PTR [esp+0x124]
    3449:	89 0b                	mov    DWORD PTR [ebx],ecx
    344b:	89 c1                	mov    ecx,eax
    344d:	30 c1                	xor    cl,al
    344f:	01 f3                	add    ebx,esi
    3451:	80 e5 01             	and    ch,0x1
    3454:	81 e1 ff ff 00 00    	and    ecx,0xffff
    345a:	74 04                	je     decompress_fst_branch_46
    345c:	88 f1                	mov    cl,dh
    345e:	eb 02                	jmp    decompress_fst_branch_47
decompress_fst_branch_46:
    3460:	88 d1                	mov    cl,dl
decompress_fst_branch_47:
    3462:	88 8c 24 27 01 00 00 	mov    BYTE PTR [esp+0x127],cl
    3469:	89 c1                	mov    ecx,eax
    346b:	30 c1                	xor    cl,al
    346d:	80 e5 02             	and    ch,0x2
    3470:	81 e1 ff ff 00 00    	and    ecx,0xffff
    3476:	74 04                	je     decompress_fst_branch_48
    3478:	88 f1                	mov    cl,dh
    347a:	eb 02                	jmp    decompress_fst_branch_49
decompress_fst_branch_48:
    347c:	88 d1                	mov    cl,dl
decompress_fst_branch_49:
    347e:	88 8c 24 26 01 00 00 	mov    BYTE PTR [esp+0x126],cl
    3485:	89 c1                	mov    ecx,eax
    3487:	30 c1                	xor    cl,al
    3489:	80 e5 04             	and    ch,0x4
    348c:	81 e1 ff ff 00 00    	and    ecx,0xffff
    3492:	74 04                	je     decompress_fst_branch_50
    3494:	88 f1                	mov    cl,dh
    3496:	eb 02                	jmp    decompress_fst_branch_51
decompress_fst_branch_50:
    3498:	88 d1                	mov    cl,dl
decompress_fst_branch_51:
    349a:	88 8c 24 25 01 00 00 	mov    BYTE PTR [esp+0x125],cl
    34a1:	89 c1                	mov    ecx,eax
    34a3:	30 c1                	xor    cl,al
    34a5:	80 e5 08             	and    ch,0x8
    34a8:	81 e1 ff ff 00 00    	and    ecx,0xffff
    34ae:	74 04                	je     decompress_fst_branch_52
    34b0:	88 f1                	mov    cl,dh
    34b2:	eb 02                	jmp    decompress_fst_branch_53
decompress_fst_branch_52:
    34b4:	88 d1                	mov    cl,dl
decompress_fst_branch_53:
    34b6:	88 8c 24 24 01 00 00 	mov    BYTE PTR [esp+0x124],cl
    34bd:	8b 8c 24 24 01 00 00 	mov    ecx,DWORD PTR [esp+0x124]
    34c4:	89 0b                	mov    DWORD PTR [ebx],ecx
    34c6:	89 c1                	mov    ecx,eax
    34c8:	30 e5                	xor    ch,ah
    34ca:	01 f3                	add    ebx,esi
    34cc:	80 e1 10             	and    cl,0x10
    34cf:	81 e1 ff ff 00 00    	and    ecx,0xffff
    34d5:	74 04                	je     decompress_fst_branch_54
    34d7:	88 f1                	mov    cl,dh
    34d9:	eb 02                	jmp    decompress_fst_branch_55
decompress_fst_branch_54:
    34db:	88 d1                	mov    cl,dl
decompress_fst_branch_55:
    34dd:	88 8c 24 27 01 00 00 	mov    BYTE PTR [esp+0x127],cl
    34e4:	89 c1                	mov    ecx,eax
    34e6:	30 e5                	xor    ch,ah
    34e8:	80 e1 20             	and    cl,0x20
    34eb:	81 e1 ff ff 00 00    	and    ecx,0xffff
    34f1:	74 04                	je     decompress_fst_branch_56
    34f3:	88 f1                	mov    cl,dh
    34f5:	eb 02                	jmp    decompress_fst_branch_57
decompress_fst_branch_56:
    34f7:	88 d1                	mov    cl,dl
decompress_fst_branch_57:
    34f9:	88 8c 24 26 01 00 00 	mov    BYTE PTR [esp+0x126],cl
    3500:	89 c1                	mov    ecx,eax
    3502:	30 e5                	xor    ch,ah
    3504:	80 e1 40             	and    cl,0x40
    3507:	81 e1 ff ff 00 00    	and    ecx,0xffff
    350d:	74 04                	je     decompress_fst_branch_58
    350f:	88 f1                	mov    cl,dh
    3511:	eb 02                	jmp    decompress_fst_branch_59
decompress_fst_branch_58:
    3513:	88 d1                	mov    cl,dl
decompress_fst_branch_59:
    3515:	88 8c 24 25 01 00 00 	mov    BYTE PTR [esp+0x125],cl
    351c:	89 c1                	mov    ecx,eax
    351e:	30 e5                	xor    ch,ah
    3520:	80 e1 80             	and    cl,0x80
    3523:	81 e1 ff ff 00 00    	and    ecx,0xffff
    3529:	74 04                	je     decompress_fst_branch_60
    352b:	88 f1                	mov    cl,dh
    352d:	eb 02                	jmp    decompress_fst_branch_61
decompress_fst_branch_60:
    352f:	88 d1                	mov    cl,dl
decompress_fst_branch_61:
    3531:	88 8c 24 24 01 00 00 	mov    BYTE PTR [esp+0x124],cl
    3538:	8b 8c 24 24 01 00 00 	mov    ecx,DWORD PTR [esp+0x124]
    353f:	89 0b                	mov    DWORD PTR [ebx],ecx
    3541:	89 c1                	mov    ecx,eax
    3543:	30 e5                	xor    ch,ah
    3545:	01 f3                	add    ebx,esi
    3547:	80 e1 01             	and    cl,0x1
    354a:	81 e1 ff ff 00 00    	and    ecx,0xffff
    3550:	74 04                	je     decompress_fst_branch_62
    3552:	88 f1                	mov    cl,dh
    3554:	eb 02                	jmp    decompress_fst_branch_63
decompress_fst_branch_62:
    3556:	88 d1                	mov    cl,dl
decompress_fst_branch_63:
    3558:	88 8c 24 27 01 00 00 	mov    BYTE PTR [esp+0x127],cl
    355f:	89 c1                	mov    ecx,eax
    3561:	30 e5                	xor    ch,ah
    3563:	80 e1 02             	and    cl,0x2
    3566:	81 e1 ff ff 00 00    	and    ecx,0xffff
    356c:	74 04                	je     decompress_fst_branch_64
    356e:	88 f1                	mov    cl,dh
    3570:	eb 02                	jmp    decompress_fst_branch_65
decompress_fst_branch_64:
    3572:	88 d1                	mov    cl,dl
decompress_fst_branch_65:
    3574:	88 8c 24 26 01 00 00 	mov    BYTE PTR [esp+0x126],cl
    357b:	89 c1                	mov    ecx,eax
    357d:	30 e5                	xor    ch,ah
    357f:	80 e1 04             	and    cl,0x4
    3582:	81 e1 ff ff 00 00    	and    ecx,0xffff
    3588:	74 04                	je     decompress_fst_branch_66
    358a:	88 f1                	mov    cl,dh
    358c:	eb 02                	jmp    decompress_fst_branch_67
decompress_fst_branch_66:
    358e:	88 d1                	mov    cl,dl
decompress_fst_branch_67:
    3590:	30 e4                	xor    ah,ah
    3592:	88 8c 24 25 01 00 00 	mov    BYTE PTR [esp+0x125],cl
    3599:	24 08                	and    al,0x8
    359b:	25 ff ff 00 00       	and    eax,0xffff
    35a0:	74 02                	je     decompress_fst_branch_68
    35a2:	88 f2                	mov    dl,dh
decompress_fst_branch_68:
    35a4:	88 94 24 24 01 00 00 	mov    BYTE PTR [esp+0x124],dl
    35ab:	8b 84 24 24 01 00 00 	mov    eax,DWORD PTR [esp+0x124]
    35b2:	89 03                	mov    DWORD PTR [ebx],eax
    35b4:	83 84 24 cc 00 00 00 04 	add    DWORD PTR [esp+0xcc],0x4
    35bc:	eb 34                	jmp    decompress_fst_branch_70
decompress_fst_branch_69:
    35be:	8b 84 24 cc 00 00 00 	mov    eax,DWORD PTR [esp+0xcc]
    35c5:	8b 9c 24 d4 00 00 00 	mov    ebx,DWORD PTR [esp+0xd4]
    35cc:	8b 30                	mov    esi,DWORD PTR [eax]
    35ce:	83 c0 04             	add    eax,0x4
    35d1:	89 33                	mov    DWORD PTR [ebx],esi
    35d3:	01 d3                	add    ebx,edx
    35d5:	8b 08                	mov    ecx,DWORD PTR [eax]
    35d7:	83 c0 04             	add    eax,0x4
    35da:	89 0b                	mov    DWORD PTR [ebx],ecx
    35dc:	01 d3                	add    ebx,edx
    35de:	8b 08                	mov    ecx,DWORD PTR [eax]
    35e0:	83 c0 04             	add    eax,0x4
    35e3:	89 0b                	mov    DWORD PTR [ebx],ecx
    35e5:	8b 00                	mov    eax,DWORD PTR [eax]
    35e7:	89 04 1a             	mov    DWORD PTR [edx+ebx*1],eax
    35ea:	83 84 24 cc 00 00 00 10 	add    DWORD PTR [esp+0xcc],0x10
decompress_fst_branch_70:
    35f2:	8b 84 24 e4 00 00 00 	mov    eax,DWORD PTR [esp+0xe4]
    35f9:	40                   	inc    eax
    35fa:	89 84 24 e4 00 00 00 	mov    DWORD PTR [esp+0xe4],eax
    3601:	83 f8 08             	cmp    eax,0x8
    3604:	75 18                	jne    decompress_fst_branch_71
    3606:	8b 9c 24 d0 00 00 00 	mov    ebx,DWORD PTR [esp+0xd0]
    360d:	43                   	inc    ebx
    360e:	89 bc 24 e4 00 00 00 	mov    DWORD PTR [esp+0xe4],edi
    3615:	89 9c 24 d0 00 00 00 	mov    DWORD PTR [esp+0xd0],ebx
    361c:	eb 0d                	jmp    decompress_fst_branch_72
decompress_fst_branch_71:
    361e:	8b 84 24 d0 00 00 00 	mov    eax,DWORD PTR [esp+0xd0]
    3625:	8a 38                	mov    bh,BYTE PTR [eax]
    3627:	00 ff                	add    bh,bh
    3629:	88 38                	mov    BYTE PTR [eax],bh
decompress_fst_branch_72:
    362b:	8b 8c 24 d4 00 00 00 	mov    ecx,DWORD PTR [esp+0xd4]
    3632:	8b b4 24 20 01 00 00 	mov    esi,DWORD PTR [esp+0x120]
    3639:	8b 94 24 1c 01 00 00 	mov    edx,DWORD PTR [esp+0x11c]
    3640:	83 c1 04             	add    ecx,0x4
    3643:	46                   	inc    esi
    3644:	89 8c 24 d4 00 00 00 	mov    DWORD PTR [esp+0xd4],ecx
    364b:	89 b4 24 20 01 00 00 	mov    DWORD PTR [esp+0x120],esi
    3652:	39 d6                	cmp    esi,edx
    3654:	0f 8c e5 fc ff ff    	jl     decompress_fst_branch_35
decompress_fst_branch_73:
    365a:	8b 84 24 f0 00 00 00 	mov    eax,DWORD PTR [esp+0xf0]
    3661:	01 84 24 d4 00 00 00 	add    DWORD PTR [esp+0xd4],eax
decompress_fst_branch_74:
    3668:	8b 8c 24 e8 00 00 00 	mov    ecx,DWORD PTR [esp+0xe8]
    366f:	8b b4 24 38 01 00 00 	mov    esi,DWORD PTR [esp+0x138]
    3676:	8b bc 24 ec 00 00 00 	mov    edi,DWORD PTR [esp+0xec]
    367d:	8b 94 24 fc 00 00 00 	mov    edx,DWORD PTR [esp+0xfc]
    3684:	41                   	inc    ecx
    3685:	83 c6 08             	add    esi,0x8
    3688:	83 c7 04             	add    edi,0x4
    368b:	89 8c 24 e8 00 00 00 	mov    DWORD PTR [esp+0xe8],ecx
    3692:	89 b4 24 38 01 00 00 	mov    DWORD PTR [esp+0x138],esi
    3699:	89 bc 24 ec 00 00 00 	mov    DWORD PTR [esp+0xec],edi
    36a0:	39 d1                	cmp    ecx,edx
    36a2:	0f 8d 3f f9 ff ff    	jge    decompress_fst_branch_21
    36a8:	e9 fc fb ff ff       	jmp    decompress_fst_branch_33
decompress_fst_branch_75:
    36ad:	a1 34 30 02 00       	mov    eax,ds:@obj3:the_viewport                                    ; fixup: num: 279, src obj: 1, src ofs: 0x36ae, dst obj: 3, dst ofs: 0x23034
    36b2:	83 78 3c 00          	cmp    DWORD PTR [eax+0x3c],0x0
    36b6:	74 b0                	je     decompress_fst_branch_74
    36b8:	8b 84 24 f4 00 00 00 	mov    eax,DWORD PTR [esp+0xf4]
    36bf:	0f af c5             	imul   eax,ebp
    36c2:	31 ff                	xor    edi,edi
    36c4:	8b 94 24 b0 00 00 00 	mov    edx,DWORD PTR [esp+0xb0]
    36cb:	89 bc 24 30 01 00 00 	mov    DWORD PTR [esp+0x130],edi
    36d2:	01 c2                	add    edx,eax
    36d4:	8b 84 24 8c 00 00 00 	mov    eax,DWORD PTR [esp+0x8c]
    36db:	89 94 24 00 01 00 00 	mov    DWORD PTR [esp+0x100],edx
    36e2:	89 84 24 28 01 00 00 	mov    DWORD PTR [esp+0x128],eax
    36e9:	8b 84 24 f8 00 00 00 	mov    eax,DWORD PTR [esp+0xf8]
    36f0:	89 d3                	mov    ebx,edx
    36f2:	89 84 24 2c 01 00 00 	mov    DWORD PTR [esp+0x12c],eax
    36f9:	85 c0                	test   eax,eax
    36fb:	0f 8e c8 03 00 00    	jle    decompress_fst_branch_114
    3701:	e9 75 03 00 00       	jmp    decompress_fst_branch_113
decompress_fst_branch_76:
    3706:	8b 84 24 d0 00 00 00 	mov    eax,DWORD PTR [esp+0xd0]
    370d:	8a 28                	mov    ch,BYTE PTR [eax]
    370f:	00 ed                	add    ch,ch
    3711:	88 28                	mov    BYTE PTR [eax],ch
decompress_fst_branch_77:
    3713:	8b 84 24 d0 00 00 00 	mov    eax,DWORD PTR [esp+0xd0]
    371a:	8a 00                	mov    al,BYTE PTR [eax]
    371c:	24 80                	and    al,0x80
    371e:	25 ff 00 00 00       	and    eax,0xff
    3723:	0f 84 b1 02 00 00    	je     decompress_fst_branch_109
    3729:	8b 84 24 cc 00 00 00 	mov    eax,DWORD PTR [esp+0xcc]
    3730:	89 d7                	mov    edi,edx
    3732:	8b 94 24 cc 00 00 00 	mov    edx,DWORD PTR [esp+0xcc]
    3739:	8b 8c 24 cc 00 00 00 	mov    ecx,DWORD PTR [esp+0xcc]
    3740:	8a 40 01             	mov    al,BYTE PTR [eax+0x1]
    3743:	66 8b 52 02          	mov    dx,WORD PTR [edx+0x2]
    3747:	8a 21                	mov    ah,BYTE PTR [ecx]
    3749:	89 d1                	mov    ecx,edx
    374b:	30 d1                	xor    cl,dl
    374d:	80 e5 10             	and    ch,0x10
    3750:	89 8c 24 44 01 00 00 	mov    DWORD PTR [esp+0x144],ecx
    3757:	31 c9                	xor    ecx,ecx
    3759:	66 8b 8c 24 44 01 00 00 	mov    cx,WORD PTR [esp+0x144]
    3761:	8b b4 24 00 01 00 00 	mov    esi,DWORD PTR [esp+0x100]
    3768:	85 c9                	test   ecx,ecx
    376a:	74 04                	je     decompress_fst_branch_78
    376c:	88 c1                	mov    cl,al
    376e:	eb 02                	jmp    decompress_fst_branch_79
decompress_fst_branch_78:
    3770:	88 e1                	mov    cl,ah
decompress_fst_branch_79:
    3772:	88 8c 24 37 01 00 00 	mov    BYTE PTR [esp+0x137],cl
    3779:	89 d1                	mov    ecx,edx
    377b:	30 d1                	xor    cl,dl
    377d:	80 e5 20             	and    ch,0x20
    3780:	89 8c 24 44 01 00 00 	mov    DWORD PTR [esp+0x144],ecx
    3787:	31 c9                	xor    ecx,ecx
    3789:	66 8b 8c 24 44 01 00 00 	mov    cx,WORD PTR [esp+0x144]
    3791:	85 c9                	test   ecx,ecx
    3793:	74 04                	je     decompress_fst_branch_80
    3795:	88 c1                	mov    cl,al
    3797:	eb 02                	jmp    decompress_fst_branch_81
decompress_fst_branch_80:
    3799:	88 e1                	mov    cl,ah
decompress_fst_branch_81:
    379b:	88 8c 24 36 01 00 00 	mov    BYTE PTR [esp+0x136],cl
    37a2:	89 d1                	mov    ecx,edx
    37a4:	30 d1                	xor    cl,dl
    37a6:	80 e5 40             	and    ch,0x40
    37a9:	89 8c 24 44 01 00 00 	mov    DWORD PTR [esp+0x144],ecx
    37b0:	31 c9                	xor    ecx,ecx
    37b2:	66 8b 8c 24 44 01 00 00 	mov    cx,WORD PTR [esp+0x144]
    37ba:	85 c9                	test   ecx,ecx
    37bc:	74 04                	je     decompress_fst_branch_82
    37be:	88 c1                	mov    cl,al
    37c0:	eb 02                	jmp    decompress_fst_branch_83
decompress_fst_branch_82:
    37c2:	88 e1                	mov    cl,ah
decompress_fst_branch_83:
    37c4:	88 8c 24 35 01 00 00 	mov    BYTE PTR [esp+0x135],cl
    37cb:	89 d1                	mov    ecx,edx
    37cd:	30 d1                	xor    cl,dl
    37cf:	80 e5 80             	and    ch,0x80
    37d2:	89 8c 24 44 01 00 00 	mov    DWORD PTR [esp+0x144],ecx
    37d9:	31 c9                	xor    ecx,ecx
    37db:	66 8b 8c 24 44 01 00 00 	mov    cx,WORD PTR [esp+0x144]
    37e3:	85 c9                	test   ecx,ecx
    37e5:	74 04                	je     decompress_fst_branch_84
    37e7:	88 c1                	mov    cl,al
    37e9:	eb 02                	jmp    decompress_fst_branch_85
decompress_fst_branch_84:
    37eb:	88 e1                	mov    cl,ah
decompress_fst_branch_85:
    37ed:	88 8c 24 34 01 00 00 	mov    BYTE PTR [esp+0x134],cl
    37f4:	8b 8c 24 34 01 00 00 	mov    ecx,DWORD PTR [esp+0x134]
    37fb:	89 0e                	mov    DWORD PTR [esi],ecx
    37fd:	89 d1                	mov    ecx,edx
    37ff:	30 d1                	xor    cl,dl
    3801:	80 e5 01             	and    ch,0x1
    3804:	89 8c 24 44 01 00 00 	mov    DWORD PTR [esp+0x144],ecx
    380b:	31 c9                	xor    ecx,ecx
    380d:	66 8b 8c 24 44 01 00 00 	mov    cx,WORD PTR [esp+0x144]
    3815:	01 fe                	add    esi,edi
    3817:	85 c9                	test   ecx,ecx
    3819:	74 04                	je     decompress_fst_branch_86
    381b:	88 c1                	mov    cl,al
    381d:	eb 02                	jmp    decompress_fst_branch_87
decompress_fst_branch_86:
    381f:	88 e1                	mov    cl,ah
decompress_fst_branch_87:
    3821:	88 8c 24 37 01 00 00 	mov    BYTE PTR [esp+0x137],cl
    3828:	89 d1                	mov    ecx,edx
    382a:	30 d1                	xor    cl,dl
    382c:	80 e5 02             	and    ch,0x2
    382f:	89 8c 24 44 01 00 00 	mov    DWORD PTR [esp+0x144],ecx
    3836:	31 c9                	xor    ecx,ecx
    3838:	66 8b 8c 24 44 01 00 00 	mov    cx,WORD PTR [esp+0x144]
    3840:	85 c9                	test   ecx,ecx
    3842:	74 04                	je     decompress_fst_branch_88
    3844:	88 c1                	mov    cl,al
    3846:	eb 02                	jmp    decompress_fst_branch_89
decompress_fst_branch_88:
    3848:	88 e1                	mov    cl,ah
decompress_fst_branch_89:
    384a:	88 8c 24 36 01 00 00 	mov    BYTE PTR [esp+0x136],cl
    3851:	89 d1                	mov    ecx,edx
    3853:	30 d1                	xor    cl,dl
    3855:	80 e5 04             	and    ch,0x4
    3858:	89 8c 24 44 01 00 00 	mov    DWORD PTR [esp+0x144],ecx
    385f:	31 c9                	xor    ecx,ecx
    3861:	66 8b 8c 24 44 01 00 00 	mov    cx,WORD PTR [esp+0x144]
    3869:	85 c9                	test   ecx,ecx
    386b:	74 04                	je     decompress_fst_branch_90
    386d:	88 c1                	mov    cl,al
    386f:	eb 02                	jmp    decompress_fst_branch_91
decompress_fst_branch_90:
    3871:	88 e1                	mov    cl,ah
decompress_fst_branch_91:
    3873:	88 8c 24 35 01 00 00 	mov    BYTE PTR [esp+0x135],cl
    387a:	89 d1                	mov    ecx,edx
    387c:	30 d1                	xor    cl,dl
    387e:	80 e5 08             	and    ch,0x8
    3881:	89 8c 24 44 01 00 00 	mov    DWORD PTR [esp+0x144],ecx
    3888:	31 c9                	xor    ecx,ecx
    388a:	66 8b 8c 24 44 01 00 00 	mov    cx,WORD PTR [esp+0x144]
    3892:	85 c9                	test   ecx,ecx
    3894:	74 04                	je     decompress_fst_branch_92
    3896:	88 c1                	mov    cl,al
    3898:	eb 02                	jmp    decompress_fst_branch_93
decompress_fst_branch_92:
    389a:	88 e1                	mov    cl,ah
decompress_fst_branch_93:
    389c:	88 8c 24 34 01 00 00 	mov    BYTE PTR [esp+0x134],cl
    38a3:	8b 8c 24 34 01 00 00 	mov    ecx,DWORD PTR [esp+0x134]
    38aa:	89 0e                	mov    DWORD PTR [esi],ecx
    38ac:	89 d1                	mov    ecx,edx
    38ae:	30 f5                	xor    ch,dh
    38b0:	80 e1 10             	and    cl,0x10
    38b3:	89 8c 24 44 01 00 00 	mov    DWORD PTR [esp+0x144],ecx
    38ba:	31 c9                	xor    ecx,ecx
    38bc:	66 8b 8c 24 44 01 00 00 	mov    cx,WORD PTR [esp+0x144]
    38c4:	01 fe                	add    esi,edi
    38c6:	85 c9                	test   ecx,ecx
    38c8:	74 04                	je     decompress_fst_branch_94
    38ca:	88 c1                	mov    cl,al
    38cc:	eb 02                	jmp    decompress_fst_branch_95
decompress_fst_branch_94:
    38ce:	88 e1                	mov    cl,ah
decompress_fst_branch_95:
    38d0:	88 8c 24 37 01 00 00 	mov    BYTE PTR [esp+0x137],cl
    38d7:	89 d1                	mov    ecx,edx
    38d9:	30 f5                	xor    ch,dh
    38db:	80 e1 20             	and    cl,0x20
    38de:	89 8c 24 44 01 00 00 	mov    DWORD PTR [esp+0x144],ecx
    38e5:	31 c9                	xor    ecx,ecx
    38e7:	66 8b 8c 24 44 01 00 00 	mov    cx,WORD PTR [esp+0x144]
    38ef:	85 c9                	test   ecx,ecx
    38f1:	74 04                	je     decompress_fst_branch_96
    38f3:	88 c1                	mov    cl,al
    38f5:	eb 02                	jmp    decompress_fst_branch_97
decompress_fst_branch_96:
    38f7:	88 e1                	mov    cl,ah
decompress_fst_branch_97:
    38f9:	88 8c 24 36 01 00 00 	mov    BYTE PTR [esp+0x136],cl
    3900:	89 d1                	mov    ecx,edx
    3902:	30 f5                	xor    ch,dh
    3904:	80 e1 40             	and    cl,0x40
    3907:	89 8c 24 44 01 00 00 	mov    DWORD PTR [esp+0x144],ecx
    390e:	31 c9                	xor    ecx,ecx
    3910:	66 8b 8c 24 44 01 00 00 	mov    cx,WORD PTR [esp+0x144]
    3918:	85 c9                	test   ecx,ecx
    391a:	74 04                	je     decompress_fst_branch_98
    391c:	88 c1                	mov    cl,al
    391e:	eb 02                	jmp    decompress_fst_branch_99
decompress_fst_branch_98:
    3920:	88 e1                	mov    cl,ah
decompress_fst_branch_99:
    3922:	88 8c 24 35 01 00 00 	mov    BYTE PTR [esp+0x135],cl
    3929:	89 d1                	mov    ecx,edx
    392b:	30 f5                	xor    ch,dh
    392d:	80 e1 80             	and    cl,0x80
    3930:	89 8c 24 44 01 00 00 	mov    DWORD PTR [esp+0x144],ecx
    3937:	31 c9                	xor    ecx,ecx
    3939:	66 8b 8c 24 44 01 00 00 	mov    cx,WORD PTR [esp+0x144]
    3941:	85 c9                	test   ecx,ecx
    3943:	74 04                	je     decompress_fst_branch_100
    3945:	88 c1                	mov    cl,al
    3947:	eb 02                	jmp    decompress_fst_branch_101
decompress_fst_branch_100:
    3949:	88 e1                	mov    cl,ah
decompress_fst_branch_101:
    394b:	88 8c 24 34 01 00 00 	mov    BYTE PTR [esp+0x134],cl
    3952:	8b 8c 24 34 01 00 00 	mov    ecx,DWORD PTR [esp+0x134]
    3959:	89 0e                	mov    DWORD PTR [esi],ecx
    395b:	89 d1                	mov    ecx,edx
    395d:	30 f5                	xor    ch,dh
    395f:	01 fe                	add    esi,edi
    3961:	80 e1 01             	and    cl,0x1
    3964:	81 e1 ff ff 00 00    	and    ecx,0xffff
    396a:	74 04                	je     decompress_fst_branch_102
    396c:	88 c1                	mov    cl,al
    396e:	eb 02                	jmp    decompress_fst_branch_103
decompress_fst_branch_102:
    3970:	88 e1                	mov    cl,ah
decompress_fst_branch_103:
    3972:	88 8c 24 37 01 00 00 	mov    BYTE PTR [esp+0x137],cl
    3979:	89 d1                	mov    ecx,edx
    397b:	30 f5                	xor    ch,dh
    397d:	80 e1 02             	and    cl,0x2
    3980:	81 e1 ff ff 00 00    	and    ecx,0xffff
    3986:	74 04                	je     decompress_fst_branch_104
    3988:	88 c1                	mov    cl,al
    398a:	eb 02                	jmp    decompress_fst_branch_105
decompress_fst_branch_104:
    398c:	88 e1                	mov    cl,ah
decompress_fst_branch_105:
    398e:	88 8c 24 36 01 00 00 	mov    BYTE PTR [esp+0x136],cl
    3995:	89 d1                	mov    ecx,edx
    3997:	30 f5                	xor    ch,dh
    3999:	80 e1 04             	and    cl,0x4
    399c:	81 e1 ff ff 00 00    	and    ecx,0xffff
    39a2:	74 04                	je     decompress_fst_branch_106
    39a4:	88 c1                	mov    cl,al
    39a6:	eb 02                	jmp    decompress_fst_branch_107
decompress_fst_branch_106:
    39a8:	88 e1                	mov    cl,ah
decompress_fst_branch_107:
    39aa:	30 f6                	xor    dh,dh
    39ac:	88 8c 24 35 01 00 00 	mov    BYTE PTR [esp+0x135],cl
    39b3:	80 e2 08             	and    dl,0x8
    39b6:	81 e2 ff ff 00 00    	and    edx,0xffff
    39bc:	75 02                	jne    decompress_fst_branch_108
    39be:	88 e0                	mov    al,ah
decompress_fst_branch_108:
    39c0:	88 84 24 34 01 00 00 	mov    BYTE PTR [esp+0x134],al
    39c7:	8b 84 24 34 01 00 00 	mov    eax,DWORD PTR [esp+0x134]
    39ce:	89 06                	mov    DWORD PTR [esi],eax
    39d0:	83 84 24 cc 00 00 00 04 	add    DWORD PTR [esp+0xcc],0x4
    39d8:	eb 3b                	jmp    decompress_fst_branch_110
decompress_fst_branch_109:
    39da:	8b b4 24 cc 00 00 00 	mov    esi,DWORD PTR [esp+0xcc]
    39e1:	8b 84 24 00 01 00 00 	mov    eax,DWORD PTR [esp+0x100]
    39e8:	8b 0e                	mov    ecx,DWORD PTR [esi]
    39ea:	89 08                	mov    DWORD PTR [eax],ecx
    39ec:	01 d0                	add    eax,edx
    39ee:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
    39f1:	89 08                	mov    DWORD PTR [eax],ecx
    39f3:	01 d0                	add    eax,edx
    39f5:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
    39f8:	89 08                	mov    DWORD PTR [eax],ecx
    39fa:	01 d0                	add    eax,edx
    39fc:	8b 56 0c             	mov    edx,DWORD PTR [esi+0xc]
    39ff:	89 10                	mov    DWORD PTR [eax],edx
    3a01:	83 c6 0c             	add    esi,0xc
    3a04:	8b 94 24 cc 00 00 00 	mov    edx,DWORD PTR [esp+0xcc]
    3a0b:	83 c2 10             	add    edx,0x10
    3a0e:	89 94 24 cc 00 00 00 	mov    DWORD PTR [esp+0xcc],edx
decompress_fst_branch_110:
    3a15:	8b bc 24 e4 00 00 00 	mov    edi,DWORD PTR [esp+0xe4]
    3a1c:	47                   	inc    edi
    3a1d:	89 bc 24 e4 00 00 00 	mov    DWORD PTR [esp+0xe4],edi
    3a24:	83 ff 08             	cmp    edi,0x8
    3a27:	75 1a                	jne    decompress_fst_branch_111
    3a29:	8b 8c 24 d0 00 00 00 	mov    ecx,DWORD PTR [esp+0xd0]
    3a30:	31 d2                	xor    edx,edx
    3a32:	41                   	inc    ecx
    3a33:	89 94 24 e4 00 00 00 	mov    DWORD PTR [esp+0xe4],edx
    3a3a:	89 8c 24 d0 00 00 00 	mov    DWORD PTR [esp+0xd0],ecx
    3a41:	eb 0d                	jmp    decompress_fst_branch_112
decompress_fst_branch_111:
    3a43:	8b 84 24 d0 00 00 00 	mov    eax,DWORD PTR [esp+0xd0]
    3a4a:	8a 10                	mov    dl,BYTE PTR [eax]
    3a4c:	00 d2                	add    dl,dl
    3a4e:	88 10                	mov    BYTE PTR [eax],dl
decompress_fst_branch_112:
    3a50:	8b b4 24 00 01 00 00 	mov    esi,DWORD PTR [esp+0x100]
    3a57:	8b bc 24 30 01 00 00 	mov    edi,DWORD PTR [esp+0x130]
    3a5e:	8b 94 24 2c 01 00 00 	mov    edx,DWORD PTR [esp+0x12c]
    3a65:	83 c6 04             	add    esi,0x4
    3a68:	47                   	inc    edi
    3a69:	89 b4 24 00 01 00 00 	mov    DWORD PTR [esp+0x100],esi
    3a70:	89 bc 24 30 01 00 00 	mov    DWORD PTR [esp+0x130],edi
    3a77:	39 d7                	cmp    edi,edx
    3a79:	7d 4e                	jge    decompress_fst_branch_114
decompress_fst_branch_113:
    3a7b:	8b 84 24 d0 00 00 00 	mov    eax,DWORD PTR [esp+0xd0]
    3a82:	8a 00                	mov    al,BYTE PTR [eax]
    3a84:	8b 94 24 28 01 00 00 	mov    edx,DWORD PTR [esp+0x128]
    3a8b:	24 80                	and    al,0x80
    3a8d:	25 ff 00 00 00       	and    eax,0xff
    3a92:	74 81                	je     decompress_fst_branch_110
    3a94:	8b 8c 24 e4 00 00 00 	mov    ecx,DWORD PTR [esp+0xe4]
    3a9b:	41                   	inc    ecx
    3a9c:	89 8c 24 e4 00 00 00 	mov    DWORD PTR [esp+0xe4],ecx
    3aa3:	83 f9 08             	cmp    ecx,0x8
    3aa6:	0f 85 5a fc ff ff    	jne    decompress_fst_branch_76
    3aac:	8b 84 24 d0 00 00 00 	mov    eax,DWORD PTR [esp+0xd0]
    3ab3:	31 ff                	xor    edi,edi
    3ab5:	40                   	inc    eax
    3ab6:	89 bc 24 e4 00 00 00 	mov    DWORD PTR [esp+0xe4],edi
    3abd:	89 84 24 d0 00 00 00 	mov    DWORD PTR [esp+0xd0],eax
    3ac4:	e9 4a fc ff ff       	jmp    decompress_fst_branch_77
decompress_fst_branch_114:
    3ac9:	8b 8c 24 ec 00 00 00 	mov    ecx,DWORD PTR [esp+0xec]
    3ad0:	8b 84 24 ec 00 00 00 	mov    eax,DWORD PTR [esp+0xec]
    3ad7:	83 c1 04             	add    ecx,0x4
    3ada:	01 c0                	add    eax,eax
    3adc:	01 c9                	add    ecx,ecx
    3ade:	89 c2                	mov    edx,eax
    3ae0:	89 8c 24 b4 00 00 00 	mov    DWORD PTR [esp+0xb4],ecx
    3ae7:	39 c8                	cmp    eax,ecx
    3ae9:	e9 b2 00 00 00       	jmp    decompress_fst_branch_118
decompress_fst_branch_115:
    3aee:	85 c0                	test   eax,eax
    3af0:	74 29                	je     decompress_fst_branch_116
    3af2:	8b bc 24 d4 00 00 00 	mov    edi,DWORD PTR [esp+0xd4]
    3af9:	89 de                	mov    esi,ebx
    3afb:	0f bf 8a cc 97 01 00 	movsx  ecx,WORD PTR [edx+@obj3:line_start_table_split]              ; fixup: num: 284, src obj: 1, src ofs: 0x3afe, dst obj: 3, dst ofs: 0x197cc
    3b02:	57                   	push   edi
    3b03:	89 c8                	mov    eax,ecx
    3b05:	c1 e9 02             	shr    ecx,0x2
    3b08:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
    3b0a:	8a c8                	mov    cl,al
    3b0c:	80 e1 03             	and    cl,0x3
    3b0f:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
    3b11:	5f                   	pop    edi
    3b12:	0f bf 82 cc 97 01 00 	movsx  eax,WORD PTR [edx+@obj3:line_start_table_split]              ; fixup: num: 283, src obj: 1, src ofs: 0x3b15, dst obj: 3, dst ofs: 0x197cc
    3b19:	01 c3                	add    ebx,eax
decompress_fst_branch_116:
    3b1b:	8b 84 24 8c 00 00 00 	mov    eax,DWORD PTR [esp+0x8c]
    3b22:	8b bc 24 d4 00 00 00 	mov    edi,DWORD PTR [esp+0xd4]
    3b29:	8b 0d 34 30 02 00    	mov    ecx,DWORD PTR ds:@obj3:the_viewport                          ; fixup: num: 282, src obj: 1, src ofs: 0x3b2b, dst obj: 3, dst ofs: 0x23034
    3b2f:	01 c7                	add    edi,eax
    3b31:	45                   	inc    ebp
    3b32:	89 bc 24 d4 00 00 00 	mov    DWORD PTR [esp+0xd4],edi
    3b39:	89 e8                	mov    eax,ebp
    3b3b:	ff 51 3c             	call   DWORD PTR [ecx+0x3c]
    3b3e:	8b 35 34 30 02 00    	mov    esi,DWORD PTR ds:@obj3:the_viewport                          ; fixup: num: 281, src obj: 1, src ofs: 0x3b40, dst obj: 3, dst ofs: 0x23034
    3b44:	8b 8c 24 d4 00 00 00 	mov    ecx,DWORD PTR [esp+0xd4]
    3b4b:	8b 46 34             	mov    eax,DWORD PTR [esi+0x34]
    3b4e:	8b bc 24 8c 00 00 00 	mov    edi,DWORD PTR [esp+0x8c]
    3b55:	29 c1                	sub    ecx,eax
    3b57:	0f bf 82 cc 97 01 00 	movsx  eax,WORD PTR [edx+@obj3:line_start_table_split]              ; fixup: num: 280, src obj: 1, src ofs: 0x3b5a, dst obj: 3, dst ofs: 0x197cc
    3b5e:	89 8c 24 d4 00 00 00 	mov    DWORD PTR [esp+0xd4],ecx
    3b65:	39 f8                	cmp    eax,edi
    3b67:	73 2b                	jae    decompress_fst_branch_117
    3b69:	89 f9                	mov    ecx,edi
    3b6b:	8b 7e 38             	mov    edi,DWORD PTR [esi+0x38]
    3b6e:	29 c1                	sub    ecx,eax
    3b70:	89 de                	mov    esi,ebx
    3b72:	57                   	push   edi
    3b73:	89 c8                	mov    eax,ecx
    3b75:	c1 e9 02             	shr    ecx,0x2
    3b78:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
    3b7a:	8a c8                	mov    cl,al
    3b7c:	80 e1 03             	and    cl,0x3
    3b7f:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
    3b81:	5f                   	pop    edi
    3b82:	8b 8c 24 8c 00 00 00 	mov    ecx,DWORD PTR [esp+0x8c]
    3b89:	0f bf 82 cc 97 01 00 	movsx  eax,WORD PTR [edx+@obj3:line_start_table_split]              ; fixup: num: 286, src obj: 1, src ofs: 0x3b8c, dst obj: 3, dst ofs: 0x197cc
    3b90:	29 c1                	sub    ecx,eax
    3b92:	01 cb                	add    ebx,ecx
decompress_fst_branch_117:
    3b94:	8b b4 24 b4 00 00 00 	mov    esi,DWORD PTR [esp+0xb4]
    3b9b:	83 c2 02             	add    edx,0x2
    3b9e:	39 f2                	cmp    edx,esi
decompress_fst_branch_118:
    3ba0:	0f 8d c2 fa ff ff    	jge    decompress_fst_branch_74
    3ba6:	0f bf 82 cc 97 01 00 	movsx  eax,WORD PTR [edx+@obj3:line_start_table_split]              ; fixup: num: 285, src obj: 1, src ofs: 0x3ba9, dst obj: 3, dst ofs: 0x197cc
    3bad:	83 f8 ff             	cmp    eax,0xffffffff
    3bb0:	0f 85 38 ff ff ff    	jne    decompress_fst_branch_115
    3bb6:	8b 8c 24 8c 00 00 00 	mov    ecx,DWORD PTR [esp+0x8c]
    3bbd:	8b bc 24 d4 00 00 00 	mov    edi,DWORD PTR [esp+0xd4]
    3bc4:	89 de                	mov    esi,ebx
    3bc6:	57                   	push   edi
    3bc7:	89 c8                	mov    eax,ecx
    3bc9:	c1 e9 02             	shr    ecx,0x2
    3bcc:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
    3bce:	8a c8                	mov    cl,al
    3bd0:	80 e1 03             	and    cl,0x3
    3bd3:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
    3bd5:	5f                   	pop    edi
    3bd6:	8b 84 24 8c 00 00 00 	mov    eax,DWORD PTR [esp+0x8c]
    3bdd:	8b 8c 24 d4 00 00 00 	mov    ecx,DWORD PTR [esp+0xd4]
    3be4:	01 c1                	add    ecx,eax
    3be6:	01 c3                	add    ebx,eax
    3be8:	89 8c 24 d4 00 00 00 	mov    DWORD PTR [esp+0xd4],ecx
    3bef:	eb a3                	jmp    decompress_fst_branch_117
decompress_fst_branch_119:
    3bf1:	83 bc 24 a0 00 00 00 00 	cmp    DWORD PTR [esp+0xa0],0x0
    3bf9:	74 07                	je     decompress_fst_branch_120
    3bfb:	89 e0                	mov    eax,esp
    3bfd:	e8 3e 5c 00 00       	call   stop
decompress_fst_branch_120:
    3c02:	8b bc 24 0c 01 00 00 	mov    edi,DWORD PTR [esp+0x10c]
    3c09:	85 ff                	test   edi,edi
    3c0b:	74 20                	je     decompress_fst_branch_122
    3c0d:	74 1e                	je     decompress_fst_branch_122
    3c0f:	8b 5f 08             	mov    ebx,DWORD PTR [edi+0x8]
    3c12:	89 fa                	mov    edx,edi
    3c14:	85 db                	test   ebx,ebx
    3c16:	74 07                	je     decompress_fst_branch_121
    3c18:	89 d8                	mov    eax,ebx
    3c1a:	e8 c9 d7 06 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
decompress_fst_branch_121:
    3c1f:	89 d0                	mov    eax,edx
    3c21:	c7 42 08 00 00 00 00 	mov    DWORD PTR [edx+0x8],0x0
    3c28:	e8 4b e4 06 00       	call   W?$dln(pnv)v
decompress_fst_branch_122:
    3c2d:	8b 8c 24 10 01 00 00 	mov    ecx,DWORD PTR [esp+0x110]
    3c34:	85 c9                	test   ecx,ecx
    3c36:	74 07                	je     decompress_fst_branch_123
    3c38:	89 c8                	mov    eax,ecx
    3c3a:	e8 a9 d7 06 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
decompress_fst_branch_123:
    3c3f:	8b 94 24 98 00 00 00 	mov    edx,DWORD PTR [esp+0x98]
    3c46:	8d 04 95 00 00 00 00 	lea    eax,[edx*4+0x0]
    3c4d:	29 d0                	sub    eax,edx
    3c4f:	01 c0                	add    eax,eax
    3c51:	50                   	push   eax
    3c52:	8b b4 24 c8 00 00 00 	mov    esi,DWORD PTR [esp+0xc8]
    3c59:	56                   	push   esi
    3c5a:	e8 62 ce 06 00       	call   _D32Unlock
    3c5f:	83 c4 08             	add    esp,0x8
    3c62:	89 f0                	mov    eax,esi
    3c64:	e8 7f d7 06 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
    3c69:	68 80 1a 06 00       	push   0x61a80
    3c6e:	8b bc 24 cc 00 00 00 	mov    edi,DWORD PTR [esp+0xcc]
    3c75:	57                   	push   edi
    3c76:	e8 46 ce 06 00       	call   _D32Unlock
    3c7b:	83 c4 08             	add    esp,0x8
    3c7e:	89 f8                	mov    eax,edi
    3c80:	e8 63 d7 06 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
    3c85:	8b 84 24 e0 00 00 00 	mov    eax,DWORD PTR [esp+0xe0]
    3c8c:	31 d2                	xor    edx,edx
    3c8e:	e8 7d e2 06 00       	call   close_
    3c93:	89 e0                	mov    eax,esp
    3c95:	e8 96 4d 00 00       	call   W?$dt:SOUND$n()_
    3c9a:	8b ac 24 b0 00 00 00 	mov    ebp,DWORD PTR [esp+0xb0]
    3ca1:	b3 01                	mov    bl,0x1
    3ca3:	85 ed                	test   ebp,ebp
    3ca5:	74 07                	je     decompress_fst_branch_124
    3ca7:	89 e8                	mov    eax,ebp
    3ca9:	e8 3a d7 06 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
decompress_fst_branch_124:
    3cae:	31 c0                	xor    eax,eax
    3cb0:	89 84 24 b0 00 00 00 	mov    DWORD PTR [esp+0xb0],eax
decompress_fst_branch_125:
    3cb7:	88 d8                	mov    al,bl
    3cb9:	81 c4 48 01 00 00    	add    esp,0x148
    3cbf:	5d                   	pop    ebp
    3cc0:	5f                   	pop    edi
    3cc1:	5e                   	pop    esi
    3cc2:	5a                   	pop    edx
    3cc3:	59                   	pop    ecx
    3cc4:	5b                   	pop    ebx
    3cc5:	c3                   	ret    
    3cc6:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    3ccc:	8d 54 22 00          	lea    edx,[edx+eiz*1+0x0]

;-------------------------------------------------
;  Function 'get_block'                          -
;-------------------------------------------------
get_block:
    3cd0:	53                   	push   ebx
    3cd1:	51                   	push   ecx
    3cd2:	56                   	push   esi
    3cd3:	57                   	push   edi
    3cd4:	55                   	push   ebp
    3cd5:	83 ec 08             	sub    esp,0x8
    3cd8:	89 c5                	mov    ebp,eax
    3cda:	89 14 24             	mov    DWORD PTR [esp],edx
    3cdd:	b8 10 00 00 00       	mov    eax,0x10
    3ce2:	e8 ac d7 06 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
    3ce7:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
    3ceb:	85 c0                	test   eax,eax
    3ced:	75 0f                	jne    get_block_branch_1
    3cef:	bb 1f 03 00 00       	mov    ebx,@obj3:fst_cpp_variable_10                                ; fixup: num: 287, src obj: 1, src ofs: 0x3cf0, dst obj: 3, dst ofs: 0x31f
    3cf4:	ba 25 03 00 00       	mov    edx,0x325
    3cf9:	e8 32 43 03 00       	call   _error_report
get_block_branch_1:
    3cfe:	b9 04 00 00 00       	mov    ecx,0x4
    3d03:	8b 7c 24 04          	mov    edi,DWORD PTR [esp+0x4]
    3d07:	89 ee                	mov    esi,ebp
    3d09:	8b 14 24             	mov    edx,DWORD PTR [esp]
    3d0c:	57                   	push   edi
    3d0d:	89 c8                	mov    eax,ecx
    3d0f:	c1 e9 02             	shr    ecx,0x2
    3d12:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
    3d14:	8a c8                	mov    cl,al
    3d16:	80 e1 03             	and    cl,0x3
    3d19:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
    3d1b:	5f                   	pop    edi
    3d1c:	b9 04 00 00 00       	mov    ecx,0x4
    3d21:	01 d5                	add    ebp,edx
    3d23:	83 c7 04             	add    edi,0x4
    3d26:	89 ee                	mov    esi,ebp
    3d28:	57                   	push   edi
    3d29:	89 c8                	mov    eax,ecx
    3d2b:	c1 e9 02             	shr    ecx,0x2
    3d2e:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
    3d30:	8a c8                	mov    cl,al
    3d32:	80 e1 03             	and    cl,0x3
    3d35:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
    3d37:	5f                   	pop    edi
    3d38:	8b 7c 24 04          	mov    edi,DWORD PTR [esp+0x4]
    3d3c:	b9 04 00 00 00       	mov    ecx,0x4
    3d41:	01 d5                	add    ebp,edx
    3d43:	83 c7 08             	add    edi,0x8
    3d46:	89 ee                	mov    esi,ebp
    3d48:	57                   	push   edi
    3d49:	89 c8                	mov    eax,ecx
    3d4b:	c1 e9 02             	shr    ecx,0x2
    3d4e:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
    3d50:	8a c8                	mov    cl,al
    3d52:	80 e1 03             	and    cl,0x3
    3d55:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
    3d57:	5f                   	pop    edi
    3d58:	8b 7c 24 04          	mov    edi,DWORD PTR [esp+0x4]
    3d5c:	b9 04 00 00 00       	mov    ecx,0x4
    3d61:	8d 34 2a             	lea    esi,[edx+ebp*1]
    3d64:	83 c7 0c             	add    edi,0xc
    3d67:	57                   	push   edi
    3d68:	89 c8                	mov    eax,ecx
    3d6a:	c1 e9 02             	shr    ecx,0x2
    3d6d:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
    3d6f:	8a c8                	mov    cl,al
    3d71:	80 e1 03             	and    cl,0x3
    3d74:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
    3d76:	5f                   	pop    edi
    3d77:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
    3d7b:	83 c4 08             	add    esp,0x8
    3d7e:	5d                   	pop    ebp
    3d7f:	5f                   	pop    edi
    3d80:	5e                   	pop    esi
    3d81:	59                   	pop    ecx
    3d82:	5b                   	pop    ebx
    3d83:	c3                   	ret    
    3d84:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    3d8a:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]

;-------------------------------------------------
;  Function 'fst_encode'                         -
;-------------------------------------------------
fst_encode:
    3d90:	53                   	push   ebx
    3d91:	51                   	push   ecx
    3d92:	56                   	push   esi
    3d93:	57                   	push   edi
    3d94:	55                   	push   ebp
    3d95:	81 ec a8 00 00 00    	sub    esp,0xa8
    3d9b:	89 84 24 8c 00 00 00 	mov    DWORD PTR [esp+0x8c],eax
    3da2:	89 94 24 90 00 00 00 	mov    DWORD PTR [esp+0x90],edx
    3da9:	b8 04 00 00 00       	mov    eax,0x4
    3dae:	e8 e0 d6 06 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
    3db3:	30 c9                	xor    cl,cl
    3db5:	89 84 24 88 00 00 00 	mov    DWORD PTR [esp+0x88],eax
    3dbc:	85 c0                	test   eax,eax
    3dbe:	75 0f                	jne    fst_encode_branch_1
    3dc0:	bb 3a 03 00 00       	mov    ebx,@obj3:fst_cpp_variable_11                                ; fixup: num: 288, src obj: 1, src ofs: 0x3dc1, dst obj: 3, dst ofs: 0x33a
    3dc5:	ba 36 03 00 00       	mov    edx,0x336
    3dca:	e8 61 42 03 00       	call   _error_report
fst_encode_branch_1:
    3dcf:	8b ac 24 88 00 00 00 	mov    ebp,DWORD PTR [esp+0x88]
    3dd6:	bb 10 00 00 00       	mov    ebx,0x10
    3ddb:	ba 01 00 00 00       	mov    edx,0x1
    3de0:	89 e0                	mov    eax,esp
    3de2:	8b bc 24 8c 00 00 00 	mov    edi,DWORD PTR [esp+0x8c]
    3de9:	e8 e2 d5 06 00       	call   memset_
    3dee:	b8 01 00 00 00       	mov    eax,0x1
    3df3:	83 c5 02             	add    ebp,0x2
    3df6:	01 c7                	add    edi,eax
    3df8:	31 d2                	xor    edx,edx
    3dfa:	85 c0                	test   eax,eax
    3dfc:	7f 0a                	jg     fst_encode_branch_3
    3dfe:	eb 20                	jmp    fst_encode_branch_5
fst_encode_branch_2:
    3e00:	42                   	inc    edx
    3e01:	43                   	inc    ebx
    3e02:	39 c2                	cmp    edx,eax
    3e04:	7c 0b                	jl     fst_encode_branch_4
    3e06:	eb 18                	jmp    fst_encode_branch_5
fst_encode_branch_3:
    3e08:	8b 9c 24 8c 00 00 00 	mov    ebx,DWORD PTR [esp+0x8c]
    3e0f:	89 fe                	mov    esi,edi
fst_encode_branch_4:
    3e11:	8a 2e                	mov    ch,BYTE PTR [esi]
    3e13:	3a 2b                	cmp    ch,BYTE PTR [ebx]
    3e15:	75 e9                	jne    fst_encode_branch_2
    3e17:	30 db                	xor    bl,bl
    3e19:	88 1c 04             	mov    BYTE PTR [esp+eax*1],bl
    3e1c:	fe 04 14             	inc    BYTE PTR [esp+edx*1]
    3e1f:	90                   	nop
fst_encode_branch_5:
    3e20:	40                   	inc    eax
    3e21:	47                   	inc    edi
    3e22:	83 f8 10             	cmp    eax,0x10
    3e25:	7d 08                	jge    fst_encode_branch_6
    3e27:	31 d2                	xor    edx,edx
    3e29:	85 c0                	test   eax,eax
    3e2b:	7f db                	jg     fst_encode_branch_3
    3e2d:	eb f1                	jmp    fst_encode_branch_5
fst_encode_branch_6:
    3e2f:	8b b4 24 88 00 00 00 	mov    esi,DWORD PTR [esp+0x88]
    3e36:	8d 7e 02             	lea    edi,[esi+0x2]
    3e39:	31 c0                	xor    eax,eax
    3e3b:	eb 33                	jmp    fst_encode_branch_9
fst_encode_branch_7:
    3e3d:	31 c0                	xor    eax,eax
    3e3f:	8b 94 24 8c 00 00 00 	mov    edx,DWORD PTR [esp+0x8c]
    3e46:	88 c8                	mov    al,cl
    3e48:	8a 14 02             	mov    dl,BYTE PTR [edx+eax*1]
    3e4b:	30 ed                	xor    ch,ch
    3e4d:	88 16                	mov    BYTE PTR [esi],dl
    3e4f:	46                   	inc    esi
    3e50:	88 2c 04             	mov    BYTE PTR [esp+eax*1],ch
    3e53:	39 fe                	cmp    esi,edi
    3e55:	74 29                	je     fst_encode_branch_10
    3e57:	31 c0                	xor    eax,eax
    3e59:	eb 15                	jmp    fst_encode_branch_9
    3e5b:	8d 40 00             	lea    eax,[eax+0x0]
    3e5e:	8b c9                	mov    ecx,ecx
fst_encode_branch_8:
    3e60:	40                   	inc    eax
    3e61:	83 f8 10             	cmp    eax,0x10
    3e64:	7d d7                	jge    fst_encode_branch_7
    3e66:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    3e6c:	8d 54 22 00          	lea    edx,[edx+eiz*1+0x0]
fst_encode_branch_9:
    3e70:	31 db                	xor    ebx,ebx
    3e72:	88 cb                	mov    bl,cl
    3e74:	8a 14 04             	mov    dl,BYTE PTR [esp+eax*1]
    3e77:	3a 14 1c             	cmp    dl,BYTE PTR [esp+ebx*1]
    3e7a:	76 e4                	jbe    fst_encode_branch_8
    3e7c:	88 c1                	mov    cl,al
    3e7e:	eb e0                	jmp    fst_encode_branch_8
fst_encode_branch_10:
    3e80:	8b 94 24 8c 00 00 00 	mov    edx,DWORD PTR [esp+0x8c]
    3e87:	8d 4a 10             	lea    ecx,[edx+0x10]
    3e8a:	e9 31 02 00 00       	jmp    fst_encode_branch_17
fst_encode_branch_11:
    3e8f:	31 c0                	xor    eax,eax
    3e91:	8a 84 24 a0 00 00 00 	mov    al,BYTE PTR [esp+0xa0]
    3e98:	89 84 24 a4 00 00 00 	mov    DWORD PTR [esp+0xa4],eax
    3e9f:	df 84 24 a4 00 00 00 	fild   WORD PTR [esp+0xa4]
    3ea6:	31 c0                	xor    eax,eax
    3ea8:	8a 84 24 9c 00 00 00 	mov    al,BYTE PTR [esp+0x9c]
    3eaf:	89 84 24 a4 00 00 00 	mov    DWORD PTR [esp+0xa4],eax
    3eb6:	df 84 24 a4 00 00 00 	fild   WORD PTR [esp+0xa4]
    3ebd:	31 c0                	xor    eax,eax
    3ebf:	8a 84 24 a1 00 00 00 	mov    al,BYTE PTR [esp+0xa1]
    3ec6:	89 84 24 a4 00 00 00 	mov    DWORD PTR [esp+0xa4],eax
    3ecd:	df 84 24 a4 00 00 00 	fild   WORD PTR [esp+0xa4]
    3ed4:	31 c0                	xor    eax,eax
    3ed6:	8a 84 24 9d 00 00 00 	mov    al,BYTE PTR [esp+0x9d]
    3edd:	89 84 24 a4 00 00 00 	mov    DWORD PTR [esp+0xa4],eax
    3ee4:	df 84 24 a4 00 00 00 	fild   WORD PTR [esp+0xa4]
    3eeb:	31 c0                	xor    eax,eax
    3eed:	8a 84 24 a2 00 00 00 	mov    al,BYTE PTR [esp+0xa2]
    3ef4:	89 84 24 a4 00 00 00 	mov    DWORD PTR [esp+0xa4],eax
    3efb:	df 84 24 a4 00 00 00 	fild   WORD PTR [esp+0xa4]
    3f02:	31 c0                	xor    eax,eax
    3f04:	8a 84 24 9e 00 00 00 	mov    al,BYTE PTR [esp+0x9e]
    3f0b:	89 84 24 a4 00 00 00 	mov    DWORD PTR [esp+0xa4],eax
    3f12:	df 84 24 a4 00 00 00 	fild   WORD PTR [esp+0xa4]
    3f19:	d9 cd                	fxch   st(5)
    3f1b:	de e4                	fsubrp st(4),st
    3f1d:	d9 cb                	fxch   st(3)
    3f1f:	d8 c8                	fmul   st,st(0)
    3f21:	d9 ca                	fxch   st(2)
    3f23:	de e1                	fsubrp st(1),st
    3f25:	d8 c8                	fmul   st,st(0)
    3f27:	de c1                	faddp  st(1),st
    3f29:	d9 c9                	fxch   st(1)
    3f2b:	de e2                	fsubrp st(2),st
    3f2d:	d9 c9                	fxch   st(1)
    3f2f:	d8 c8                	fmul   st,st(0)
    3f31:	de c1                	faddp  st(1),st
    3f33:	83 ec 08             	sub    esp,0x8
    3f36:	dd 1c 24             	fstp   QWORD PTR [esp]
    3f39:	e8 58 da 06 00       	call   sqrt_
    3f3e:	dd 5c 24 68          	fstp   QWORD PTR [esp+0x68]
fst_encode_branch_12:
    3f42:	8b 44 24 68          	mov    eax,DWORD PTR [esp+0x68]
    3f46:	89 44 24 78          	mov    DWORD PTR [esp+0x78],eax
    3f4a:	8b 44 24 6c          	mov    eax,DWORD PTR [esp+0x6c]
    3f4e:	8b 9c 24 88 00 00 00 	mov    ebx,DWORD PTR [esp+0x88]
    3f55:	89 44 24 7c          	mov    DWORD PTR [esp+0x7c],eax
    3f59:	31 c0                	xor    eax,eax
    3f5b:	8a 43 01             	mov    al,BYTE PTR [ebx+0x1]
    3f5e:	8b 9c 24 90 00 00 00 	mov    ebx,DWORD PTR [esp+0x90]
    3f65:	8d 04 40             	lea    eax,[eax+eax*2]
    3f68:	01 d8                	add    eax,ebx
    3f6a:	31 db                	xor    ebx,ebx
    3f6c:	8a 1a                	mov    bl,BYTE PTR [edx]
    3f6e:	8b b4 24 90 00 00 00 	mov    esi,DWORD PTR [esp+0x90]
    3f75:	8d 1c 5b             	lea    ebx,[ebx+ebx*2]
    3f78:	8d bc 24 98 00 00 00 	lea    edi,[esp+0x98]
    3f7f:	01 de                	add    esi,ebx
    3f81:	66 a5                	movs   WORD PTR es:[edi],WORD PTR ds:[esi]
    3f83:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
    3f84:	8d bc 24 94 00 00 00 	lea    edi,[esp+0x94]
    3f8b:	89 c6                	mov    esi,eax
    3f8d:	8a 84 24 98 00 00 00 	mov    al,BYTE PTR [esp+0x98]
    3f94:	66 a5                	movs   WORD PTR es:[edi],WORD PTR ds:[esi]
    3f96:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
    3f97:	3a 84 24 94 00 00 00 	cmp    al,BYTE PTR [esp+0x94]
    3f9e:	75 35                	jne    fst_encode_branch_13
    3fa0:	8a 84 24 99 00 00 00 	mov    al,BYTE PTR [esp+0x99]
    3fa7:	3a 84 24 95 00 00 00 	cmp    al,BYTE PTR [esp+0x95]
    3fae:	75 25                	jne    fst_encode_branch_13
    3fb0:	8a 84 24 9a 00 00 00 	mov    al,BYTE PTR [esp+0x9a]
    3fb7:	3a 84 24 96 00 00 00 	cmp    al,BYTE PTR [esp+0x96]
    3fbe:	75 15                	jne    fst_encode_branch_13
    3fc0:	31 f6                	xor    esi,esi
    3fc2:	89 b4 24 80 00 00 00 	mov    DWORD PTR [esp+0x80],esi
    3fc9:	89 b4 24 84 00 00 00 	mov    DWORD PTR [esp+0x84],esi
    3fd0:	e9 b6 00 00 00       	jmp    fst_encode_branch_14
fst_encode_branch_13:
    3fd5:	31 c0                	xor    eax,eax
    3fd7:	8a 84 24 98 00 00 00 	mov    al,BYTE PTR [esp+0x98]
    3fde:	89 84 24 a4 00 00 00 	mov    DWORD PTR [esp+0xa4],eax
    3fe5:	df 84 24 a4 00 00 00 	fild   WORD PTR [esp+0xa4]
    3fec:	31 c0                	xor    eax,eax
    3fee:	8a 84 24 94 00 00 00 	mov    al,BYTE PTR [esp+0x94]
    3ff5:	89 84 24 a4 00 00 00 	mov    DWORD PTR [esp+0xa4],eax
    3ffc:	df 84 24 a4 00 00 00 	fild   WORD PTR [esp+0xa4]
    4003:	31 c0                	xor    eax,eax
    4005:	8a 84 24 99 00 00 00 	mov    al,BYTE PTR [esp+0x99]
    400c:	89 84 24 a4 00 00 00 	mov    DWORD PTR [esp+0xa4],eax
    4013:	df 84 24 a4 00 00 00 	fild   WORD PTR [esp+0xa4]
    401a:	31 c0                	xor    eax,eax
    401c:	8a 84 24 95 00 00 00 	mov    al,BYTE PTR [esp+0x95]
    4023:	89 84 24 a4 00 00 00 	mov    DWORD PTR [esp+0xa4],eax
    402a:	df 84 24 a4 00 00 00 	fild   WORD PTR [esp+0xa4]
    4031:	31 c0                	xor    eax,eax
    4033:	8a 84 24 9a 00 00 00 	mov    al,BYTE PTR [esp+0x9a]
    403a:	89 84 24 a4 00 00 00 	mov    DWORD PTR [esp+0xa4],eax
    4041:	df 84 24 a4 00 00 00 	fild   WORD PTR [esp+0xa4]
    4048:	31 c0                	xor    eax,eax
    404a:	8a 84 24 96 00 00 00 	mov    al,BYTE PTR [esp+0x96]
    4051:	89 84 24 a4 00 00 00 	mov    DWORD PTR [esp+0xa4],eax
    4058:	df 84 24 a4 00 00 00 	fild   WORD PTR [esp+0xa4]
    405f:	d9 cd                	fxch   st(5)
    4061:	de e4                	fsubrp st(4),st
    4063:	d9 cb                	fxch   st(3)
    4065:	d8 c8                	fmul   st,st(0)
    4067:	d9 ca                	fxch   st(2)
    4069:	de e1                	fsubrp st(1),st
    406b:	d8 c8                	fmul   st,st(0)
    406d:	de c1                	faddp  st(1),st
    406f:	d9 c9                	fxch   st(1)
    4071:	de e2                	fsubrp st(2),st
    4073:	d9 c9                	fxch   st(1)
    4075:	d8 c8                	fmul   st,st(0)
    4077:	de c1                	faddp  st(1),st
    4079:	83 ec 08             	sub    esp,0x8
    407c:	dd 1c 24             	fstp   QWORD PTR [esp]
    407f:	e8 12 d9 06 00       	call   sqrt_
    4084:	dd 9c 24 80 00 00 00 	fstp   QWORD PTR [esp+0x80]
fst_encode_branch_14:
    408b:	dd 44 24 78          	fld    QWORD PTR [esp+0x78]
    408f:	dc 9c 24 80 00 00 00 	fcomp  QWORD PTR [esp+0x80]
    4096:	df e0                	fnstsw ax
    4098:	9e                   	sahf   
    4099:	76 06                	jbe    fst_encode_branch_15
    409b:	80 4d 00 01          	or     BYTE PTR [ebp+0x0],0x1
    409f:	eb 0f                	jmp    fst_encode_branch_16
fst_encode_branch_15:
    40a1:	80 65 00 fe          	and    BYTE PTR [ebp+0x0],0xfe
    40a5:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    40ab:	8d 52 00             	lea    edx,[edx+0x0]
    40ae:	8b db                	mov    ebx,ebx
fst_encode_branch_16:
    40b0:	42                   	inc    edx
    40b1:	39 ca                	cmp    edx,ecx
    40b3:	0f 84 99 00 00 00    	je     fst_encode_branch_18
    40b9:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    40bf:	90                   	nop
fst_encode_branch_17:
    40c0:	66 8b 5d 00          	mov    bx,WORD PTR [ebp+0x0]
    40c4:	01 db                	add    ebx,ebx
    40c6:	66 89 5d 00          	mov    WORD PTR [ebp+0x0],bx
    40ca:	8b 9c 24 88 00 00 00 	mov    ebx,DWORD PTR [esp+0x88]
    40d1:	31 c0                	xor    eax,eax
    40d3:	8a 03                	mov    al,BYTE PTR [ebx]
    40d5:	8b 9c 24 90 00 00 00 	mov    ebx,DWORD PTR [esp+0x90]
    40dc:	8d 04 40             	lea    eax,[eax+eax*2]
    40df:	01 d8                	add    eax,ebx
    40e1:	31 db                	xor    ebx,ebx
    40e3:	8a 1a                	mov    bl,BYTE PTR [edx]
    40e5:	8b b4 24 90 00 00 00 	mov    esi,DWORD PTR [esp+0x90]
    40ec:	8d 1c 5b             	lea    ebx,[ebx+ebx*2]
    40ef:	8d bc 24 a0 00 00 00 	lea    edi,[esp+0xa0]
    40f6:	01 de                	add    esi,ebx
    40f8:	66 a5                	movs   WORD PTR es:[edi],WORD PTR ds:[esi]
    40fa:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
    40fb:	8d bc 24 9c 00 00 00 	lea    edi,[esp+0x9c]
    4102:	89 c6                	mov    esi,eax
    4104:	8a 84 24 a0 00 00 00 	mov    al,BYTE PTR [esp+0xa0]
    410b:	66 a5                	movs   WORD PTR es:[edi],WORD PTR ds:[esi]
    410d:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
    410e:	3a 84 24 9c 00 00 00 	cmp    al,BYTE PTR [esp+0x9c]
    4115:	0f 85 74 fd ff ff    	jne    fst_encode_branch_11
    411b:	8a 84 24 a1 00 00 00 	mov    al,BYTE PTR [esp+0xa1]
    4122:	3a 84 24 9d 00 00 00 	cmp    al,BYTE PTR [esp+0x9d]
    4129:	0f 85 60 fd ff ff    	jne    fst_encode_branch_11
    412f:	8a 84 24 a2 00 00 00 	mov    al,BYTE PTR [esp+0xa2]
    4136:	3a 84 24 9e 00 00 00 	cmp    al,BYTE PTR [esp+0x9e]
    413d:	0f 85 4c fd ff ff    	jne    fst_encode_branch_11
    4143:	31 f6                	xor    esi,esi
    4145:	89 74 24 68          	mov    DWORD PTR [esp+0x68],esi
    4149:	89 74 24 6c          	mov    DWORD PTR [esp+0x6c],esi
    414d:	e9 f0 fd ff ff       	jmp    fst_encode_branch_12
fst_encode_branch_18:
    4152:	8b 84 24 88 00 00 00 	mov    eax,DWORD PTR [esp+0x88]
    4159:	81 c4 a8 00 00 00    	add    esp,0xa8
    415f:	5d                   	pop    ebp
    4160:	5f                   	pop    edi
    4161:	5e                   	pop    esi
    4162:	59                   	pop    ecx
    4163:	5b                   	pop    ebx
    4164:	c3                   	ret    
    4165:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    416b:	8d 52 00             	lea    edx,[edx+0x0]
    416e:	8b db                	mov    ebx,ebx

;-------------------------------------------------
;  Function 'fst_decode'                         -
;-------------------------------------------------
fst_decode:
    4170:	53                   	push   ebx
    4171:	51                   	push   ecx
    4172:	52                   	push   edx
    4173:	56                   	push   esi
    4174:	57                   	push   edi
    4175:	89 c6                	mov    esi,eax
    4177:	8d 48 02             	lea    ecx,[eax+0x2]
    417a:	b8 10 00 00 00       	mov    eax,0x10
    417f:	e8 0f d3 06 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
    4184:	89 c7                	mov    edi,eax
    4186:	85 c0                	test   eax,eax
    4188:	75 0f                	jne    fst_decode_branch_1
    418a:	bb 56 03 00 00       	mov    ebx,@obj3:fst_cpp_variable_12                                ; fixup: num: 291, src obj: 1, src ofs: 0x418b, dst obj: 3, dst ofs: 0x356
    418f:	ba 5e 03 00 00       	mov    edx,0x35e
    4194:	e8 97 3e 03 00       	call   _error_report
fst_decode_branch_1:
    4199:	8d 47 0f             	lea    eax,[edi+0xf]
    419c:	8d 5f ff             	lea    ebx,[edi-0x1]
    419f:	eb 1f                	jmp    fst_decode_branch_4
fst_decode_branch_2:
    41a1:	8a 16                	mov    dl,BYTE PTR [esi]
    41a3:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    41a9:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
    41af:	90                   	nop
fst_decode_branch_3:
    41b0:	88 10                	mov    BYTE PTR [eax],dl
    41b2:	66 8b 11             	mov    dx,WORD PTR [ecx]
    41b5:	66 d1 ea             	shr    dx,1
    41b8:	48                   	dec    eax
    41b9:	66 89 11             	mov    WORD PTR [ecx],dx
    41bc:	39 d8                	cmp    eax,ebx
    41be:	74 15                	je     fst_decode_branch_5
fst_decode_branch_4:
    41c0:	66 8b 11             	mov    dx,WORD PTR [ecx]
    41c3:	30 f6                	xor    dh,dh
    41c5:	80 e2 01             	and    dl,0x1
    41c8:	81 e2 ff ff 00 00    	and    edx,0xffff
    41ce:	74 d1                	je     fst_decode_branch_2
    41d0:	8a 56 01             	mov    dl,BYTE PTR [esi+0x1]
    41d3:	eb db                	jmp    fst_decode_branch_3
fst_decode_branch_5:
    41d5:	89 f8                	mov    eax,edi
    41d7:	5f                   	pop    edi
    41d8:	5e                   	pop    esi
    41d9:	5a                   	pop    edx
    41da:	59                   	pop    ecx
    41db:	5b                   	pop    ebx
    41dc:	c3                   	ret    
    41dd:	8d 40 00             	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'mean_square_error'                  -
;-------------------------------------------------
mean_square_error:
    41e0:	51                   	push   ecx
    41e1:	56                   	push   esi
    41e2:	57                   	push   edi
    41e3:	55                   	push   ebp
    41e4:	83 ec 4c             	sub    esp,0x4c
    41e7:	89 c1                	mov    ecx,eax
    41e9:	89 dd                	mov    ebp,ebx
    41eb:	31 db                	xor    ebx,ebx
    41ed:	89 5c 24 30          	mov    DWORD PTR [esp+0x30],ebx
    41f1:	89 5c 24 34          	mov    DWORD PTR [esp+0x34],ebx
    41f5:	e9 a6 00 00 00       	jmp    mean_square_error_branch_3
mean_square_error_branch_1:
    41fa:	31 c0                	xor    eax,eax
    41fc:	8a 44 24 40          	mov    al,BYTE PTR [esp+0x40]
    4200:	89 44 24 48          	mov    DWORD PTR [esp+0x48],eax
    4204:	df 44 24 48          	fild   WORD PTR [esp+0x48]
    4208:	31 c0                	xor    eax,eax
    420a:	8a 44 24 44          	mov    al,BYTE PTR [esp+0x44]
    420e:	89 44 24 48          	mov    DWORD PTR [esp+0x48],eax
    4212:	df 44 24 48          	fild   WORD PTR [esp+0x48]
    4216:	31 c0                	xor    eax,eax
    4218:	8a 44 24 41          	mov    al,BYTE PTR [esp+0x41]
    421c:	89 44 24 48          	mov    DWORD PTR [esp+0x48],eax
    4220:	df 44 24 48          	fild   WORD PTR [esp+0x48]
    4224:	31 c0                	xor    eax,eax
    4226:	8a 44 24 45          	mov    al,BYTE PTR [esp+0x45]
    422a:	89 44 24 48          	mov    DWORD PTR [esp+0x48],eax
    422e:	df 44 24 48          	fild   WORD PTR [esp+0x48]
    4232:	31 c0                	xor    eax,eax
    4234:	8a 44 24 42          	mov    al,BYTE PTR [esp+0x42]
    4238:	89 44 24 48          	mov    DWORD PTR [esp+0x48],eax
    423c:	df 44 24 48          	fild   WORD PTR [esp+0x48]
    4240:	31 c0                	xor    eax,eax
    4242:	8a 44 24 46          	mov    al,BYTE PTR [esp+0x46]
    4246:	89 44 24 48          	mov    DWORD PTR [esp+0x48],eax
    424a:	df 44 24 48          	fild   WORD PTR [esp+0x48]
    424e:	d9 cd                	fxch   st(5)
    4250:	de e4                	fsubrp st(4),st
    4252:	d9 cb                	fxch   st(3)
    4254:	d8 c8                	fmul   st,st(0)
    4256:	d9 ca                	fxch   st(2)
    4258:	de e1                	fsubrp st(1),st
    425a:	d8 c8                	fmul   st,st(0)
    425c:	de c1                	faddp  st(1),st
    425e:	d9 c9                	fxch   st(1)
    4260:	de e2                	fsubrp st(2),st
    4262:	d9 c9                	fxch   st(1)
    4264:	d8 c8                	fmul   st,st(0)
    4266:	de c1                	faddp  st(1),st
    4268:	83 ec 08             	sub    esp,0x8
    426b:	dd 1c 24             	fstp   QWORD PTR [esp]
    426e:	e8 23 d7 06 00       	call   sqrt_
    4273:	dd 5c 24 38          	fstp   QWORD PTR [esp+0x38]
    4277:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    427d:	8d 52 00             	lea    edx,[edx+0x0]
mean_square_error_branch_2:
    4280:	dd 44 24 30          	fld    QWORD PTR [esp+0x30]
    4284:	dc 44 24 38          	fadd   QWORD PTR [esp+0x38]
    4288:	41                   	inc    ecx
    4289:	42                   	inc    edx
    428a:	43                   	inc    ebx
    428b:	dd 5c 24 30          	fstp   QWORD PTR [esp+0x30]
    428f:	83 fb 10             	cmp    ebx,0x10
    4292:	7d 63                	jge    mean_square_error_branch_4
    4294:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    429a:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
mean_square_error_branch_3:
    42a0:	8d 7c 24 40          	lea    edi,[esp+0x40]
    42a4:	0f b6 31             	movzx  esi,BYTE PTR [ecx]
    42a7:	31 c0                	xor    eax,eax
    42a9:	8d 34 76             	lea    esi,[esi+esi*2]
    42ac:	8a 02                	mov    al,BYTE PTR [edx]
    42ae:	01 ee                	add    esi,ebp
    42b0:	8d 04 40             	lea    eax,[eax+eax*2]
    42b3:	66 a5                	movs   WORD PTR es:[edi],WORD PTR ds:[esi]
    42b5:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
    42b6:	01 e8                	add    eax,ebp
    42b8:	8d 7c 24 44          	lea    edi,[esp+0x44]
    42bc:	89 c6                	mov    esi,eax
    42be:	8a 44 24 40          	mov    al,BYTE PTR [esp+0x40]
    42c2:	66 a5                	movs   WORD PTR es:[edi],WORD PTR ds:[esi]
    42c4:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
    42c5:	3a 44 24 44          	cmp    al,BYTE PTR [esp+0x44]
    42c9:	0f 85 2b ff ff ff    	jne    mean_square_error_branch_1
    42cf:	8a 44 24 41          	mov    al,BYTE PTR [esp+0x41]
    42d3:	3a 44 24 45          	cmp    al,BYTE PTR [esp+0x45]
    42d7:	0f 85 1d ff ff ff    	jne    mean_square_error_branch_1
    42dd:	8a 44 24 42          	mov    al,BYTE PTR [esp+0x42]
    42e1:	3a 44 24 46          	cmp    al,BYTE PTR [esp+0x46]
    42e5:	0f 85 0f ff ff ff    	jne    mean_square_error_branch_1
    42eb:	31 ff                	xor    edi,edi
    42ed:	89 7c 24 38          	mov    DWORD PTR [esp+0x38],edi
    42f1:	89 7c 24 3c          	mov    DWORD PTR [esp+0x3c],edi
    42f5:	eb 89                	jmp    mean_square_error_branch_2
mean_square_error_branch_4:
    42f7:	dd 44 24 30          	fld    QWORD PTR [esp+0x30]
    42fb:	dc 0d 86 04 00 00    	fmul   QWORD PTR ds:@obj3:fst_cpp_variable_26                       ; fixup: num: 292, src obj: 1, src ofs: 0x42fd, dst obj: 3, dst ofs: 0x486
    4301:	83 c4 4c             	add    esp,0x4c
    4304:	5d                   	pop    ebp
    4305:	5f                   	pop    edi
    4306:	5e                   	pop    esi
    4307:	59                   	pop    ecx
    4308:	c3                   	ret    
    4309:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    430f:	90                   	nop

;-------------------------------------------------
;  Function 'sort_by_compressed_error'           -
;-------------------------------------------------
sort_by_compressed_error:
    4310:	53                   	push   ebx
    4311:	6b 18 2c             	imul   ebx,DWORD PTR [eax],0x2c
    4314:	6b 12 2c             	imul   edx,DWORD PTR [edx],0x2c
    4317:	a1 70 7e 01 00       	mov    eax,ds:@obj3:block_list                                      ; fixup: num: 294, src obj: 1, src ofs: 0x4318, dst obj: 3, dst ofs: 0x17e70
    431c:	01 c3                	add    ebx,eax
    431e:	dd 43 1c             	fld    QWORD PTR [ebx+0x1c]
    4321:	01 c2                	add    edx,eax
    4323:	dc 5a 1c             	fcomp  QWORD PTR [edx+0x1c]
    4326:	df e0                	fnstsw ax
    4328:	9e                   	sahf   
    4329:	73 07                	jae    sort_by_compressed_error_branch_1
    432b:	b8 ff ff ff ff       	mov    eax,0xffffffff
    4330:	5b                   	pop    ebx
    4331:	c3                   	ret    
sort_by_compressed_error_branch_1:
    4332:	dd 43 1c             	fld    QWORD PTR [ebx+0x1c]
    4335:	dc 5a 1c             	fcomp  QWORD PTR [edx+0x1c]
    4338:	df e0                	fnstsw ax
    433a:	9e                   	sahf   
    433b:	76 07                	jbe    sort_by_compressed_error_branch_2
    433d:	b8 01 00 00 00       	mov    eax,0x1
    4342:	5b                   	pop    ebx
    4343:	c3                   	ret    
sort_by_compressed_error_branch_2:
    4344:	31 c0                	xor    eax,eax
    4346:	5b                   	pop    ebx
    4347:	c3                   	ret    
    4348:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    434e:	8b d2                	mov    edx,edx

;-------------------------------------------------
;  Function 'sort_by_uncompressed_error'         -
;-------------------------------------------------
sort_by_uncompressed_error:
    4350:	53                   	push   ebx
    4351:	6b 18 2c             	imul   ebx,DWORD PTR [eax],0x2c
    4354:	6b 12 2c             	imul   edx,DWORD PTR [edx],0x2c
    4357:	a1 70 7e 01 00       	mov    eax,ds:@obj3:block_list                                      ; fixup: num: 293, src obj: 1, src ofs: 0x4358, dst obj: 3, dst ofs: 0x17e70
    435c:	01 c3                	add    ebx,eax
    435e:	dd 43 14             	fld    QWORD PTR [ebx+0x14]
    4361:	01 c2                	add    edx,eax
    4363:	dc 5a 14             	fcomp  QWORD PTR [edx+0x14]
    4366:	df e0                	fnstsw ax
    4368:	9e                   	sahf   
    4369:	73 07                	jae    sort_by_uncompressed_error_branch_1
    436b:	b8 ff ff ff ff       	mov    eax,0xffffffff
    4370:	5b                   	pop    ebx
    4371:	c3                   	ret    
sort_by_uncompressed_error_branch_1:
    4372:	dd 43 14             	fld    QWORD PTR [ebx+0x14]
    4375:	dc 5a 14             	fcomp  QWORD PTR [edx+0x14]
    4378:	df e0                	fnstsw ax
    437a:	9e                   	sahf   
    437b:	76 07                	jbe    sort_by_uncompressed_error_branch_2
    437d:	b8 01 00 00 00       	mov    eax,0x1
    4382:	5b                   	pop    ebx
    4383:	c3                   	ret    
sort_by_uncompressed_error_branch_2:
    4384:	31 c0                	xor    eax,eax
    4386:	5b                   	pop    ebx
    4387:	c3                   	ret    
    4388:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    438e:	8b d2                	mov    edx,edx

;-------------------------------------------------
;  Function 'compare_blocks'                     -
;-------------------------------------------------
compare_blocks:
    4390:	51                   	push   ecx
    4391:	56                   	push   esi
    4392:	57                   	push   edi
    4393:	b9 10 00 00 00       	mov    ecx,0x10
    4398:	89 d7                	mov    edi,edx
    439a:	89 c6                	mov    esi,eax
    439c:	31 c0                	xor    eax,eax
    439e:	f3 a6                	repz cmps BYTE PTR ds:[esi],BYTE PTR es:[edi]
    43a0:	74 05                	je     compare_blocks_branch_1
    43a2:	19 c0                	sbb    eax,eax
    43a4:	83 d8 ff             	sbb    eax,0xffffffff
compare_blocks_branch_1:
    43a7:	85 c0                	test   eax,eax
    43a9:	0f 94 c0             	sete   al
    43ac:	5f                   	pop    edi
    43ad:	5e                   	pop    esi
    43ae:	59                   	pop    ecx
    43af:	c3                   	ret    

;-------------------------------------------------
;  Function 'WaitVS'                             -
;-------------------------------------------------
WaitVS:
    43b0:	52                   	push   edx
    43b1:	ba da 03 00 00       	mov    edx,0x3da
WaitVS_branch_1:
    43b6:	29 c0                	sub    eax,eax
    43b8:	ec                   	in     al,dx
    43b9:	a8 08                	test   al,0x8
    43bb:	75 f9                	jne    WaitVS_branch_1
    43bd:	5a                   	pop    edx
    43be:	c3                   	ret    
;-------------------------------------------------
;  Bad code 3 (zero after ret):                  -
;-------------------------------------------------
;   43bd:	5a                   	pop    edx
;   43be:	c3                   	ret    
;   43bf:	00               	add    BYTE PTR [ebx+0x51],dl
;-------------------------------------------------
;  Padding data (1 bytes):                       -
;-------------------------------------------------
    43bf:	00                   	db     0x00
;-------------------------------------------------
;  End of bad code 3                             -
;-------------------------------------------------

;-------------------------------------------------
;  Function 'W?$dt:flic$n()_'                    -
;-------------------------------------------------
W?$dt:flic$n()_:
    43c0:	53                   	push   ebx
    43c1:	51                   	push   ecx
    43c2:	89 c3                	mov    ebx,eax
    43c4:	8b 90 80 00 00 00    	mov    edx,DWORD PTR [eax+0x80]
    43ca:	85 d2                	test   edx,edx
    43cc:	74 07                	je     W?$dt:flic$n()__branch_1
    43ce:	89 d0                	mov    eax,edx
    43d0:	e8 13 d0 06 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
W?$dt:flic$n()__branch_1:
    43d5:	81 c3 a8 00 00 00    	add    ebx,0xa8
    43db:	8b 4b 08             	mov    ecx,DWORD PTR [ebx+0x8]
    43de:	89 da                	mov    edx,ebx
    43e0:	85 c9                	test   ecx,ecx
    43e2:	74 07                	je     W?$dt:flic$n()__branch_2
    43e4:	89 c8                	mov    eax,ecx
    43e6:	e8 fd cf 06 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
W?$dt:flic$n()__branch_2:
    43eb:	8d 82 58 ff ff ff    	lea    eax,[edx-0xa8]
    43f1:	c7 42 08 00 00 00 00 	mov    DWORD PTR [edx+0x8],0x0
    43f8:	59                   	pop    ecx
    43f9:	5b                   	pop    ebx
    43fa:	c3                   	ret    
;-------------------------------------------------
;  Bad code 4 (zero after ret):                  -
;-------------------------------------------------
;   43f9:	5b                   	pop    ebx
;   43fa:	c3                   	ret    
;   43fb:	00 00                	add    BYTE PTR [eax],al
;   43fd:	00 00                	add    BYTE PTR [eax],al
;-------------------------------------------------
;  Padding data (5 bytes):                       -
;-------------------------------------------------
    43fb:	00 00 00 00 00       	db     5 dup(0x00)
;-------------------------------------------------
;  End of bad code 4                             -
;-------------------------------------------------

;-------------------------------------------------
;  Function 'W?$ct:flic$n()_'                    -
;-------------------------------------------------
W?$ct:flic$n()_:
    4400:	52                   	push   edx
    4401:	05 a8 00 00 00       	add    eax,0xa8
    4406:	2d a8 00 00 00       	sub    eax,0xa8
    440b:	c7 80 ac 00 00 00 00 00 00 00 	mov    DWORD PTR [eax+0xac],0x0
    4415:	c7 80 b0 00 00 00 00 00 00 00 	mov    DWORD PTR [eax+0xb0],0x0
    441f:	8b 90 ac 00 00 00    	mov    edx,DWORD PTR [eax+0xac]
    4425:	89 90 a8 00 00 00    	mov    DWORD PTR [eax+0xa8],edx
    442b:	c7 80 84 00 00 00 00 00 00 00 	mov    DWORD PTR [eax+0x84],0x0
    4435:	8b 90 84 00 00 00    	mov    edx,DWORD PTR [eax+0x84]
    443b:	89 90 80 00 00 00    	mov    DWORD PTR [eax+0x80],edx
    4441:	5a                   	pop    edx
    4442:	c3                   	ret    
    4443:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    4449:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
    444f:	90                   	nop

;-------------------------------------------------
;  Function 'W?$dt:bitmap$n()_'                  -
;-------------------------------------------------
W?$dt:bitmap$n()_:
    4450:	53                   	push   ebx
    4451:	89 c3                	mov    ebx,eax
    4453:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
    4456:	85 d2                	test   edx,edx
    4458:	74 07                	je     W?$dt:bitmap$n()__branch_1
    445a:	89 d0                	mov    eax,edx
    445c:	e8 87 cf 06 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
W?$dt:bitmap$n()__branch_1:
    4461:	89 d8                	mov    eax,ebx
    4463:	c7 43 08 00 00 00 00 	mov    DWORD PTR [ebx+0x8],0x0
    446a:	5b                   	pop    ebx
    446b:	c3                   	ret    
    446c:	8d 44 20 00          	lea    eax,[eax+eiz*1+0x0]

;-------------------------------------------------
;  Function 'W?$ct:bitmap$n()_'                  -
;-------------------------------------------------
W?$ct:bitmap$n()_:
    4470:	52                   	push   edx
    4471:	c7 40 04 00 00 00 00 	mov    DWORD PTR [eax+0x4],0x0
    4478:	c7 40 08 00 00 00 00 	mov    DWORD PTR [eax+0x8],0x0
    447f:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
    4482:	89 10                	mov    DWORD PTR [eax],edx
    4484:	5a                   	pop    edx
    4485:	c3                   	ret    
    4486:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    448c:	8d 54 22 00          	lea    edx,[edx+eiz*1+0x0]

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 2 (D:\SOURCE\fst.cpp)                                         -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 2: D:\SOURCE\fst.cpp                                                 -
;                                                                              -
;-------------------------------------------------------------------------------
fst_cpp_variable_1:
     24c:	6e 75 6c 6c 00       	db     "null",0x00
fst_cpp_variable_2:
     251:	66 73 74 2e 63 70 70 00 	db     "fst.cpp",0x00
fst_cpp_variable_3:
     259:	43 6f 75 6c 64 20 6e 6f 74 20 6c 6f 61 64 20 66 6c 69 63 2e 00 	db     "Could not load flic.",0x00
fst_cpp_variable_4:
     26e:	66 72 61 6d 65 73 5f 70 65 72 5f 73 65 63 6f 6e 64 3a 25 66 0a 00 	db     "frames_per_second:%f",0x0a,0x00
fst_cpp_variable_5:
     284:	66 61 69 6c 65 64 20 74 6f 20 61 6c 6c 6f 63 61 74 65 20 66 72 61 6d 65 20 74 61 62 6c 65 2e 00 	db     "failed to allocate frame table.",0x00
fst_cpp_variable_6:
     2a4:	55 6e 61 62 6c 65 20 74 6f 20 6f 70 65 6e 20 6f 75 74 70 75 74 5f 66 69 6c 65 6e 61 6d 65 00 	db     "Unable to open output_filename",0x00
fst_cpp_variable_7:
     2c3:	55 6e 61 62 6c 65 20 74 6f 20 6d 61 6c 6c 6f 63 20 62 6c 6f 63 6b 20 6c 69 73 74 00 	db     "Unable to malloc block list",0x00
fst_cpp_variable_8:
     2df:	43 6f 75 6c 64 20 6e 6f 74 20 61 6c 6c 6f 63 61 74 65 20 61 20 62 75 66 66 65 72 20 6f 66 20 25 69 78 25 69 00 	db     "Could not allocate a buffer of %ix%i",0x00
     304:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
fst_cpp_variable_9:
     305:	43 6f 75 6c 64 20 6e 6f 74 20 6d 61 6c 6c 6f 63 20 34 20 62 79 74 65 73 21 00 	db     "Could not malloc 4 bytes!",0x00
fst_cpp_variable_10:
     31f:	43 6f 75 6c 64 20 6e 6f 74 20 6d 61 6c 6c 6f 63 20 31 36 20 62 79 74 65 73 21 00 	db     "Could not malloc 16 bytes!",0x00
fst_cpp_variable_11:
     33a:	43 6f 75 6c 64 20 6e 6f 74 20 61 6c 6c 6f 63 61 74 65 20 34 20 62 79 74 65 73 21 00 	db     "Could not allocate 4 bytes!",0x00
fst_cpp_variable_12:
     356:	55 6e 61 62 6c 65 20 74 6f 20 6d 61 6c 6c 6f 63 20 31 36 20 62 79 74 65 73 2e 00 	db     "Unable to malloc 16 bytes.",0x00
fst_cpp_variable_13:
     371:	55 6e 61 62 6c 65 20 74 6f 20 61 6c 6c 6f 63 61 74 65 20 73 6f 72 74 65 64 20 6c 69 73 74 2e 00 	db     "Unable to allocate sorted list.",0x00
fst_cpp_variable_14:
     391:	55 6e 61 62 6c 65 20 74 6f 20 61 6c 6c 6f 63 61 74 65 20 75 73 61 67 65 20 6d 61 70 2e 00 	db     "Unable to allocate usage map.",0x00
fst_cpp_variable_15:
     3af:	41 20 6b 65 79 20 77 61 73 20 70 72 65 73 73 65 64 2e 00 	db     "A key was pressed.",0x00
fst_cpp_variable_16:                                                                                ; access size: QWORD
     3c2:	00 00 00 00 00 00 59 40 	dq     0x4059000000000000
fst_cpp_variable_17:                                                                                ; access size: QWORD
     3ca:	00 00 00 00 00 00 b0 3f 	dq     0x3fb0000000000000
fst_cpp_variable_18:                                                                                ; access size: QWORD
     3d2:	00 00 00 00 00 00 e0 3f 	dq     0x3fe0000000000000
fst_cpp_variable_19:
     3da:	55 6e 61 62 6c 65 20 74 6f 20 6f 70 65 6e 3a 20 25 73 00 	db     "Unable to open: %s",0x00
fst_cpp_variable_20:
     3ed:	55 6e 61 62 6c 65 20 74 6f 20 61 6c 6c 6f 63 61 74 65 20 62 75 66 66 65 72 2e 00 	db     "Unable to allocate buffer.",0x00
fst_cpp_variable_21:
     408:	55 6e 61 62 6c 65 20 74 6f 20 6f 70 65 6e 3a 20 25 73 00 	db     "Unable to open: %s",0x00
fst_cpp_variable_22:
     41b:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
fst_cpp_variable_23:
     433:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
fst_cpp_variable_24:
     44b:	55 6e 61 62 6c 65 20 74 6f 20 61 6c 6c 6f 63 61 74 65 20 66 72 61 6d 65 20 74 61 62 6c 65 2e 00 	db     "Unable to allocate frame table.",0x00
fst_cpp_variable_25:
     46b:	47 52 41 50 48 49 43 5c 4f 54 48 45 52 5c 43 45 4e 53 4f 52 45 44 2e 50 43 58 00 	db     "GRAPHIC\OTHER\CENSORED.PCX",0x00
fst_cpp_variable_26:                                                                                ; access size: QWORD
     486:	00 00 00 00 00 00 b0 3f 	dq     0x3fb0000000000000
     48e:	00 00                	db     2 dup(0x00)                                                  ; dec:   0, chr: '\0'

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 2 (D:\SOURCE\fst.cpp)                                         -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 2: D:\SOURCE\fst.cpp                                                 -
;                                                                              -
;-------------------------------------------------------------------------------
W?$Wts09n$SOUND$$$nx[]uc:
   10c34:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
   10c35:	20 84 00 00          	dd     @obj1:W?$ct:SOUND$n()_                                       ; fixup: num: 21311, src obj: 3, src ofs: 0x10c35, dst obj: 1, dst ofs: 0x8420
   10c39:	48 14 07 00          	dd     @obj1:__wcpp_2_undefed_cdtor__                               ; fixup: num: 21310, src obj: 3, src ofs: 0x10c39, dst obj: 1, dst ofs: 0x71448
   10c3d:	30 8a 00 00          	dd     @obj1:W?$dt:SOUND$n()_                                       ; fixup: num: 21309, src obj: 3, src ofs: 0x10c3d, dst obj: 1, dst ofs: 0x8a30
   10c41:	88                   	db     0x88                                                         ; dec: 136, chr: ''
   10c42:	00 00 00 00 00 00    	db     6 dup(0x00)                                                  ; dec:   0, chr: '\0'
W?$Wts0an$bitmap$$$nx[]uc:
   10c48:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
   10c49:	70 44 00 00          	dd     @obj1:W?$ct:bitmap$n()_                                      ; fixup: num: 21308, src obj: 3, src ofs: 0x10c49, dst obj: 1, dst ofs: 0x4470
   10c4d:	48 14 07 00          	dd     @obj1:__wcpp_2_undefed_cdtor__                               ; fixup: num: 21307, src obj: 3, src ofs: 0x10c4d, dst obj: 1, dst ofs: 0x71448
   10c51:	50 44 00 00          	dd     @obj1:W?$dt:bitmap$n()_                                      ; fixup: num: 21306, src obj: 3, src ofs: 0x10c51, dst obj: 1, dst ofs: 0x4450
   10c55:	0c                   	db     0x0c                                                         ; dec:  12, chr: '\f'
   10c56:	00 00 00 00 00 00    	db     6 dup(0x00)                                                  ; dec:   0, chr: '\0'
W?$Wts08n$flic$$$nx[]uc:
   10c5c:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
   10c5d:	00 44 00 00          	dd     @obj1:W?$ct:flic$n()_                                        ; fixup: num: 21305, src obj: 3, src ofs: 0x10c5d, dst obj: 1, dst ofs: 0x4400
   10c61:	48 14 07 00          	dd     @obj1:__wcpp_2_undefed_cdtor__                               ; fixup: num: 21304, src obj: 3, src ofs: 0x10c61, dst obj: 1, dst ofs: 0x71448
   10c65:	c0 43 00 00          	dd     @obj1:W?$dt:flic$n()_                                        ; fixup: num: 21303, src obj: 3, src ofs: 0x10c65, dst obj: 1, dst ofs: 0x43c0
   10c69:	b4                   	db     0xb4                                                         ; dec: 180, chr: ''
   10c6a:	00 00 00 00 00 00    	db     6 dup(0x00)                                                  ; dec:   0, chr: '\0'

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 2 (D:\SOURCE\fst.cpp)                                         -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 2: D:\SOURCE\fst.cpp                                                 -
;                                                                              -
;-------------------------------------------------------------------------------
fst_censor:
   11014:	43 30 30 31 42 2e 46 53 54 00 	db     "C001B.FST",0x00
   1101e:	00 00 00 00 00 00 .. 	db     246 dup(0x00)                                                ; dec:   0, chr: '\0'
fst_censor_variable_1:                                                                              ; access size: DWORDS
   11114:	aa 00 00 00          	dd     0x000000aa
   11118:	71 01 00 00          	dd     0x00000171
   1111c:	ff ff ff ff ff ff .. 	dd     4 dup(0xffffffff)
   1112c:	43 30 30 34          	dd     0x34303043
   11130:	2e 46 53 54          	dd     0x5453462e
   11134:	00 00 00 00 00 00 .. 	dd     62 dup(0x00000000)
   1122c:	17 00 00 00          	dd     0x00000017
   11230:	ae 00 00 00          	dd     0x000000ae
   11234:	5c 03 00 00          	dd     0x0000035c
   11238:	e3 03 00 00          	dd     0x000003e3
   1123c:	2a 07 00 00          	dd     0x0000072a
   11240:	ff ff ff ff          	dd     0xffffffff
   11244:	43 30 30 35          	dd     0x35303043
   11248:	2e 46 53 54          	dd     0x5453462e
   1124c:	00 00 00 00 00 00 .. 	dd     62 dup(0x00000000)
   11344:	db 01 00 00          	dd     0x000001db
   11348:	26 02 00 00          	dd     0x00000226
   1134c:	ff ff ff ff ff ff .. 	dd     4 dup(0xffffffff)
   1135c:	43 30 30 36          	dd     0x36303043
   11360:	2e 46 53 54          	dd     0x5453462e
   11364:	00 00 00 00 00 00 .. 	dd     62 dup(0x00000000)
   1145c:	bb 02 00 00          	dd     0x000002bb
   11460:	53 03 00 00          	dd     0x00000353
   11464:	ff ff ff ff ff ff .. 	dd     4 dup(0xffffffff)
   11474:	43 30 32 38          	dd     0x38323043
   11478:	2e 46 53 54          	dd     0x5453462e
   1147c:	00 00 00 00 00 00 .. 	dd     63 dup(0x00000000)
   11578:	ff ff ff ff ff ff .. 	dd     5 dup(0xffffffff)
   1158c:	43 30 35 37          	dd     0x37353043
   11590:	2e 46 53 54          	dd     0x5453462e
   11594:	00 00 00 00 00 00 .. 	dd     63 dup(0x00000000)
   11690:	ff ff ff ff ff ff .. 	dd     5 dup(0xffffffff)
   116a4:	43 30 38 36          	dd     0x36383043
   116a8:	2e 46 53 54          	dd     0x5453462e
   116ac:	00 00 00 00 00 00 .. 	dd     62 dup(0x00000000)
   117a4:	30 00 00 00          	dd     0x00000030
   117a8:	41 00 00 00          	dd     0x00000041
   117ac:	ff ff ff ff ff ff .. 	dd     4 dup(0xffffffff)
   117bc:	43 31 30 39          	dd     0x39303143
   117c0:	2e 46 53 54          	dd     0x5453462e
   117c4:	00 00 00 00 00 00 .. 	dd     62 dup(0x00000000)
   118bc:	2c 00 00 00          	dd     0x0000002c
   118c0:	ff ff ff ff ff ff .. 	dd     5 dup(0xffffffff)
   118d4:	43 31 32 35          	dd     0x35323143
   118d8:	2e 46 53 54          	dd     0x5453462e
   118dc:	00 00 00 00 00 00 .. 	dd     62 dup(0x00000000)
   119d4:	07 00 00 00          	dd     0x00000007
   119d8:	ff ff ff ff ff ff .. 	dd     5 dup(0xffffffff)
   119ec:	43 31 33 36          	dd     0x36333143
   119f0:	2e 46 53 54          	dd     0x5453462e
   119f4:	00 00 00 00 00 00 .. 	dd     62 dup(0x00000000)
   11aec:	80 00 00 00          	dd     0x00000080
   11af0:	ff ff ff ff ff ff .. 	dd     5 dup(0xffffffff)
   11b04:	43 4c 4f 4b          	dd     0x4b4f4c43
   11b08:	42 4c 53 54          	dd     0x54534c42
   11b0c:	2e 46 53 54          	dd     0x5453462e
   11b10:	00 00 00 00 00 00 .. 	dd     62 dup(0x00000000)
   11c08:	ff ff ff ff ff ff .. 	dd     5 dup(0xffffffff)
   11c1c:	48 45 41 44          	dd     0x44414548
   11c20:	54 52 41 50          	dd     0x50415254
   11c24:	2e 46 53 54          	dd     0x5453462e
   11c28:	00 00 00 00 00 00 .. 	dd     62 dup(0x00000000)
   11d20:	ff ff ff ff ff ff .. 	dd     5 dup(0xffffffff)
   11d34:	50 43 50 4c          	dd     0x4c504350
   11d38:	41 4e 54 2e          	dd     0x2e544e41
   11d3c:	46 53 54 00          	dd     0x00545346
   11d40:	00 00 00 00 00 00 .. 	dd     61 dup(0x00000000)
   11e34:	14 00 00 00          	dd     0x00000014
   11e38:	ff ff ff ff ff ff .. 	dd     5 dup(0xffffffff)
   11e4c:	43 30 37 32          	dd     0x32373043
   11e50:	2e 46 53 54          	dd     0x5453462e
   11e54:	00 00 00 00 00 00 .. 	dd     63 dup(0x00000000)
   11f50:	ff ff ff ff ff ff .. 	dd     5 dup(0xffffffff)
   11f64:	43 30 37 33          	dd     0x33373043
   11f68:	2e 46 53 54          	dd     0x5453462e
   11f6c:	00 00 00 00 00 00 .. 	dd     62 dup(0x00000000)
   12064:	1e 00 00 00          	dd     0x0000001e
   12068:	ff ff ff ff ff ff .. 	dd     5 dup(0xffffffff)
   1207c:	43 31 34 35          	dd     0x35343143
   12080:	41 2e 46 53          	dd     0x53462e41
   12084:	54 00 00 00          	dd     0x00000054
   12088:	00 00 00 00 00 00 .. 	dd     61 dup(0x00000000)
   1217c:	09 00 00 00          	dd     0x00000009
   12180:	ff ff ff ff ff ff .. 	dd     5 dup(0xffffffff)
   12194:	43 31 34 35          	dd     0x35343143
   12198:	42 2e 46 53          	dd     0x53462e42
   1219c:	54 00 00 00          	dd     0x00000054
   121a0:	00 00 00 00 00 00 .. 	dd     61 dup(0x00000000)
   12294:	09 00 00 00          	dd     0x00000009
   12298:	ff ff ff ff ff ff .. 	dd     5 dup(0xffffffff)
   122ac:	43 31 31 39          	dd     0x39313143
   122b0:	2e 46 53 54          	dd     0x5453462e
   122b4:	00 00 00 00 00 00 .. 	dd     63 dup(0x00000000)
   123b0:	ff ff ff ff ff ff .. 	dd     5 dup(0xffffffff)
   123c4:	43 31 31 39          	dd     0x39313143
   123c8:	41 2e 46 53          	dd     0x53462e41
   123cc:	54 00 00 00          	dd     0x00000054
   123d0:	00 00 00 00 00 00 .. 	dd     62 dup(0x00000000)
   124c8:	ff ff ff ff ff ff .. 	dd     5 dup(0xffffffff)
   124dc:	43 31 31 39          	dd     0x39313143
   124e0:	42 2e 46 53          	dd     0x53462e42
   124e4:	54 00 00 00          	dd     0x00000054
   124e8:	00 00 00 00 00 00 .. 	dd     62 dup(0x00000000)
   125e0:	ff ff ff ff ff ff .. 	dd     5 dup(0xffffffff)
   125f4:	43 31 31 39          	dd     0x39313143
   125f8:	43 2e 46 53          	dd     0x53462e43
   125fc:	54 00 00 00          	dd     0x00000054
   12600:	00 00 00 00 00 00 .. 	dd     62 dup(0x00000000)
   126f8:	ff ff ff ff ff ff .. 	dd     5 dup(0xffffffff)
   1270c:	43 31 31 37          	dd     0x37313143
   12710:	2e 46 53 54          	dd     0x5453462e
   12714:	00 00 00 00 00 00 .. 	dd     63 dup(0x00000000)
   12810:	ff ff ff ff ff ff .. 	dd     5 dup(0xffffffff)
   12824:	43 30 36 35          	dd     0x35363043
   12828:	2e 46 53 54          	dd     0x5453462e
   1282c:	00 00 00 00 00 00 .. 	dd     63 dup(0x00000000)
   12928:	ff ff ff ff ff ff .. 	dd     5 dup(0xffffffff)
   1293c:	43 30 31 30          	dd     0x30313043
   12940:	2e 46 53 54          	dd     0x5453462e
   12944:	00 00 00 00 00 00 .. 	dd     62 dup(0x00000000)
   12a3c:	2f 00 00 00          	dd     0x0000002f
   12a40:	6d 00 00 00          	dd     0x0000006d
   12a44:	a9 00 00 00          	dd     0x000000a9
   12a48:	ff ff ff ff ff ff .. 	dd     3 dup(0xffffffff)
   12a54:	52 41 4e 47          	dd     0x474e4152
   12a58:	53 48 4f 54          	dd     0x544f4853
   12a5c:	2e 46 53 54          	dd     0x5453462e
   12a60:	00 00 00 00 00 00 .. 	dd     62 dup(0x00000000)
   12b58:	ff ff ff ff ff ff .. 	dd     5 dup(0xffffffff)

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 2 (D:\SOURCE\fst.cpp)                                         -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 2: D:\SOURCE\fst.cpp                                                 -
;                                                                              -
;-------------------------------------------------------------------------------
block_list:                                                                                         ; access size: DWORD
   17e70:	00 00 00 00          	dd     0x00000000

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 2 (D:\SOURCE\fst.cpp)                                         -
;                                                                              -
;-------------------------------------------------------------------------------