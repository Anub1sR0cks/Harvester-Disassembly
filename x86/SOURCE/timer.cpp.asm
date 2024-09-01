;-------------------------------------------------------------------------------
;                                                                              -
;  Module 79: D:\SOURCE\timer.cpp                                              -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function 'W?$ct:TIMER$n(pnaiucucuc)_'         -
;-------------------------------------------------
W?$ct:TIMER$n(pnaiucucuc)_:
   49330:	56                   	push   esi
   49331:	57                   	push   edi
   49332:	89 c6                	mov    esi,eax
   49334:	89 df                	mov    edi,ebx
   49336:	e8 d5 17 ff ff       	call   W?$ct:BTMAP$n(pna)_
   4933b:	c7 40 38 17 00 00 00 	mov    DWORD PTR [eax+0x38],0x17
   49342:	89 c3                	mov    ebx,eax
   49344:	89 78 4c             	mov    DWORD PTR [eax+0x4c],edi
   49347:	89 c6                	mov    esi,eax
   49349:	88 48 54             	mov    BYTE PTR [eax+0x54],cl
   4934c:	8a 44 24 0c          	mov    al,BYTE PTR [esp+0xc]
   49350:	88 43 55             	mov    BYTE PTR [ebx+0x55],al
   49353:	8a 44 24 10          	mov    al,BYTE PTR [esp+0x10]
   49357:	89 da                	mov    edx,ebx
   49359:	88 43 56             	mov    BYTE PTR [ebx+0x56],al
   4935c:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 11591, src obj: 1, src ofs: 0x4935d, dst obj: 3, dst ofs: 0x25a88
   49361:	e8 ca 2d 00 00       	call   insert_bitmap
   49366:	80 7b 54 00          	cmp    BYTE PTR [ebx+0x54],0x0
   4936a:	74 19                	je     W?$ct:TIMER$n(pnaiucucuc)__branch_1
   4936c:	6b 53 4c 64          	imul   edx,DWORD PTR [ebx+0x4c],0x64
   49370:	c6 43 54 01          	mov    BYTE PTR [ebx+0x54],0x1
   49374:	a1 44 7e 01 00       	mov    eax,ds:@obj3:current_time                                    ; fixup: num: 11590, src obj: 1, src ofs: 0x49375, dst obj: 3, dst ofs: 0x17e44
   49379:	c6 43 60 00          	mov    BYTE PTR [ebx+0x60],0x0
   4937d:	89 43 58             	mov    DWORD PTR [ebx+0x58],eax
   49380:	01 d0                	add    eax,edx
   49382:	89 43 50             	mov    DWORD PTR [ebx+0x50],eax
W?$ct:TIMER$n(pnaiucucuc)__branch_1:
   49385:	89 f0                	mov    eax,esi
   49387:	c6 46 60 00          	mov    BYTE PTR [esi+0x60],0x0
   4938b:	5f                   	pop    edi
   4938c:	5e                   	pop    esi
   4938d:	c2 08 00             	ret    0x8

;-------------------------------------------------
;  Function 'W?$ct:TIMER$n(pn$_timer_type$$)_'   -
;-------------------------------------------------
W?$ct:TIMER$n(pn$_timer_type$$)_:
   49390:	53                   	push   ebx
   49391:	51                   	push   ecx
   49392:	56                   	push   esi
   49393:	89 c1                	mov    ecx,eax
   49395:	89 d6                	mov    esi,edx
   49397:	8b 52 08             	mov    edx,DWORD PTR [edx+0x8]
   4939a:	e8 71 17 ff ff       	call   W?$ct:BTMAP$n(pna)_
   4939f:	c7 40 38 17 00 00 00 	mov    DWORD PTR [eax+0x38],0x17
   493a6:	8b 16                	mov    edx,DWORD PTR [esi]
   493a8:	89 50 4c             	mov    DWORD PTR [eax+0x4c],edx
   493ab:	8a 56 14             	mov    dl,BYTE PTR [esi+0x14]
   493ae:	88 50 54             	mov    BYTE PTR [eax+0x54],dl
   493b1:	8a 56 15             	mov    dl,BYTE PTR [esi+0x15]
   493b4:	88 50 55             	mov    BYTE PTR [eax+0x55],dl
   493b7:	89 c3                	mov    ebx,eax
   493b9:	8a 56 16             	mov    dl,BYTE PTR [esi+0x16]
   493bc:	89 c1                	mov    ecx,eax
   493be:	88 50 56             	mov    BYTE PTR [eax+0x56],dl
   493c1:	89 c2                	mov    edx,eax
   493c3:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 11589, src obj: 1, src ofs: 0x493c4, dst obj: 3, dst ofs: 0x25a88
   493c8:	e8 63 2d 00 00       	call   insert_bitmap
   493cd:	80 7b 54 00          	cmp    BYTE PTR [ebx+0x54],0x0
   493d1:	74 1f                	je     W?$ct:TIMER$n(pn$_timer_type$$)__branch_1
   493d3:	8b 15 44 7e 01 00    	mov    edx,DWORD PTR ds:@obj3:current_time                          ; fixup: num: 11588, src obj: 1, src ofs: 0x493d5, dst obj: 3, dst ofs: 0x17e44
   493d9:	8b 73 4c             	mov    esi,DWORD PTR [ebx+0x4c]
   493dc:	89 53 58             	mov    DWORD PTR [ebx+0x58],edx
   493df:	6b d6 64             	imul   edx,esi,0x64
   493e2:	c6 43 54 01          	mov    BYTE PTR [ebx+0x54],0x1
   493e6:	8b 73 58             	mov    esi,DWORD PTR [ebx+0x58]
   493e9:	c6 43 60 00          	mov    BYTE PTR [ebx+0x60],0x0
   493ed:	01 d6                	add    esi,edx
   493ef:	89 73 50             	mov    DWORD PTR [ebx+0x50],esi
W?$ct:TIMER$n(pn$_timer_type$$)__branch_1:
   493f2:	89 c8                	mov    eax,ecx
   493f4:	c6 41 60 00          	mov    BYTE PTR [ecx+0x60],0x0
   493f8:	5e                   	pop    esi
   493f9:	59                   	pop    ecx
   493fa:	5b                   	pop    ebx
   493fb:	c3                   	ret    
;-------------------------------------------------
;  Bad code 80 (zero after ret):                 -
;-------------------------------------------------
;  493fa:	5b                   	pop    ebx
;  493fb:	c3                   	ret    
;  493fc:	00 00                	add    BYTE PTR [eax],al
;  493fe:	00 00                	add    BYTE PTR [eax],al
;-------------------------------------------------
;  Padding data (4 bytes):                       -
;-------------------------------------------------
   493fc:	00 00 00 00          	db     4 dup(0x00)
;-------------------------------------------------
;  End of bad code 80                            -
;-------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 79 (D:\SOURCE\timer.cpp)                                      -
;                                                                              -
;-------------------------------------------------------------------------------