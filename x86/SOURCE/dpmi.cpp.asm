;-------------------------------------------------------------------------------
;                                                                              -
;  Module 8: D:\SOURCE\dpmi.cpp                                                -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function 'allocate_dos_block'                 -
;-------------------------------------------------
allocate_dos_block:
    7230:	53                   	push   ebx
    7231:	51                   	push   ecx
    7232:	56                   	push   esi
    7233:	83 ec 28             	sub    esp,0x28
    7236:	89 c1                	mov    ecx,eax
    7238:	89 d6                	mov    esi,edx
    723a:	bb 0c 00 00 00       	mov    ebx,0xc
    723f:	8d 44 24 1c          	lea    eax,[esp+0x1c]
    7243:	31 d2                	xor    edx,edx
    7245:	e8 86 a1 06 00       	call   memset_
    724a:	ba 00 01 00 00       	mov    edx,0x100
    724f:	89 e3                	mov    ebx,esp
    7251:	b8 31 00 00 00       	mov    eax,0x31
    7256:	66 89 4c 24 04       	mov    WORD PTR [esp+0x4],cx
    725b:	8d 4c 24 1c          	lea    ecx,[esp+0x1c]
    725f:	66 89 14 24          	mov    WORD PTR [esp],dx
    7263:	89 e2                	mov    edx,esp
    7265:	e8 7f ae 06 00       	call   int386x_
    726a:	8b 04 24             	mov    eax,DWORD PTR [esp]
    726d:	66 89 06             	mov    WORD PTR [esi],ax
    7270:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
    7274:	31 c0                	xor    eax,eax
    7276:	83 c4 28             	add    esp,0x28
    7279:	5e                   	pop    esi
    727a:	59                   	pop    ecx
    727b:	5b                   	pop    ebx
    727c:	c3                   	ret    
    727d:	8d 40 00             	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'free_dos_block'                     -
;-------------------------------------------------
free_dos_block:
    7280:	53                   	push   ebx
    7281:	51                   	push   ecx
    7282:	56                   	push   esi
    7283:	83 ec 28             	sub    esp,0x28
    7286:	89 d6                	mov    esi,edx
    7288:	89 c1                	mov    ecx,eax
    728a:	bb 0c 00 00 00       	mov    ebx,0xc
    728f:	8d 44 24 1c          	lea    eax,[esp+0x1c]
    7293:	31 d2                	xor    edx,edx
    7295:	e8 36 a1 06 00       	call   memset_
    729a:	ba 01 01 00 00       	mov    edx,0x101
    729f:	89 e3                	mov    ebx,esp
    72a1:	89 c8                	mov    eax,ecx
    72a3:	66 89 14 24          	mov    WORD PTR [esp],dx
    72a7:	89 f2                	mov    edx,esi
    72a9:	8d 4c 24 1c          	lea    ecx,[esp+0x1c]
    72ad:	b8 31 00 00 00       	mov    eax,0x31
    72b2:	66 89 54 24 0c       	mov    WORD PTR [esp+0xc],dx
    72b7:	89 e2                	mov    edx,esp
    72b9:	e8 2b ae 06 00       	call   int386x_
    72be:	83 c4 28             	add    esp,0x28
    72c1:	5e                   	pop    esi
    72c2:	59                   	pop    ecx
    72c3:	5b                   	pop    ebx
    72c4:	c3                   	ret    
    72c5:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    72cb:	8d 52 00             	lea    edx,[edx+0x0]
    72ce:	8b db                	mov    ebx,ebx

;-------------------------------------------------
;  Function 'simulate_real_mode_interrupt'       -
;-------------------------------------------------
simulate_real_mode_interrupt:
    72d0:	52                   	push   edx
    72d1:	56                   	push   esi
    72d2:	83 ec 2c             	sub    esp,0x2c
    72d5:	88 44 24 28          	mov    BYTE PTR [esp+0x28],al
    72d9:	89 ce                	mov    esi,ecx
    72db:	89 d9                	mov    ecx,ebx
    72dd:	bb 0c 00 00 00       	mov    ebx,0xc
    72e2:	8d 44 24 1c          	lea    eax,[esp+0x1c]
    72e6:	31 d2                	xor    edx,edx
    72e8:	e8 e3 a0 06 00       	call   memset_
    72ed:	ba 00 03 00 00       	mov    edx,0x300
    72f2:	8a 44 24 28          	mov    al,BYTE PTR [esp+0x28]
    72f6:	31 db                	xor    ebx,ebx
    72f8:	66 89 14 24          	mov    WORD PTR [esp],dx
    72fc:	88 44 24 04          	mov    BYTE PTR [esp+0x4],al
    7300:	66 89 5c 24 08       	mov    WORD PTR [esp+0x8],bx
    7305:	30 e4                	xor    ah,ah
    7307:	89 f2                	mov    edx,esi
    7309:	88 64 24 05          	mov    BYTE PTR [esp+0x5],ah
    730d:	89 c8                	mov    eax,ecx
    730f:	89 e3                	mov    ebx,esp
    7311:	b8 31 00 00 00       	mov    eax,0x31
    7316:	66 89 54 24 1c       	mov    WORD PTR [esp+0x1c],dx
    731b:	89 4c 24 14          	mov    DWORD PTR [esp+0x14],ecx
    731f:	8d 4c 24 1c          	lea    ecx,[esp+0x1c]
    7323:	89 e2                	mov    edx,esp
    7325:	e8 bf ad 06 00       	call   int386x_
    732a:	83 c4 2c             	add    esp,0x2c
    732d:	5e                   	pop    esi
    732e:	5a                   	pop    edx
    732f:	c3                   	ret    

;-------------------------------------------------
;  Function                                      -
;  'simulate_real_mode_interrupt_mod_8'          -
;-------------------------------------------------
simulate_real_mode_interrupt_mod_8:
    7330:	56                   	push   esi
    7331:	57                   	push   edi
    7332:	83 ec 2c             	sub    esp,0x2c
    7335:	88 44 24 28          	mov    BYTE PTR [esp+0x28],al
    7339:	89 ce                	mov    esi,ecx
    733b:	89 d7                	mov    edi,edx
    733d:	89 d9                	mov    ecx,ebx
    733f:	bb 0c 00 00 00       	mov    ebx,0xc
    7344:	8d 44 24 1c          	lea    eax,[esp+0x1c]
    7348:	31 d2                	xor    edx,edx
    734a:	e8 81 a0 06 00       	call   memset_
    734f:	ba 00 03 00 00       	mov    edx,0x300
    7354:	8a 44 24 28          	mov    al,BYTE PTR [esp+0x28]
    7358:	89 e3                	mov    ebx,esp
    735a:	66 89 14 24          	mov    WORD PTR [esp],dx
    735e:	88 44 24 04          	mov    BYTE PTR [esp+0x4],al
    7362:	30 e4                	xor    ah,ah
    7364:	89 f2                	mov    edx,esi
    7366:	88 64 24 05          	mov    BYTE PTR [esp+0x5],ah
    736a:	89 c8                	mov    eax,ecx
    736c:	66 89 7c 24 08       	mov    WORD PTR [esp+0x8],di
    7371:	b8 31 00 00 00       	mov    eax,0x31
    7376:	66 89 54 24 1c       	mov    WORD PTR [esp+0x1c],dx
    737b:	89 4c 24 14          	mov    DWORD PTR [esp+0x14],ecx
    737f:	8d 4c 24 1c          	lea    ecx,[esp+0x1c]
    7383:	89 e2                	mov    edx,esp
    7385:	e8 5f ad 06 00       	call   int386x_
    738a:	83 c4 2c             	add    esp,0x2c
    738d:	5f                   	pop    edi
    738e:	5e                   	pop    esi
    738f:	c3                   	ret    

;-------------------------------------------------
;  Function 'get_memory_info'                    -
;-------------------------------------------------
get_memory_info:
    7390:	53                   	push   ebx
    7391:	51                   	push   ecx
    7392:	52                   	push   edx
    7393:	83 ec 28             	sub    esp,0x28
    7396:	89 c1                	mov    ecx,eax
    7398:	ba 00 05 00 00       	mov    edx,0x500
    739d:	bb 0c 00 00 00       	mov    ebx,0xc
    73a2:	8d 44 24 1c          	lea    eax,[esp+0x1c]
    73a6:	89 14 24             	mov    DWORD PTR [esp],edx
    73a9:	31 d2                	xor    edx,edx
    73ab:	e8 20 a0 06 00       	call   memset_
    73b0:	8c da                	mov    edx,ds
    73b2:	89 c8                	mov    eax,ecx
    73b4:	89 e3                	mov    ebx,esp
    73b6:	b8 31 00 00 00       	mov    eax,0x31
    73bb:	66 89 54 24 1c       	mov    WORD PTR [esp+0x1c],dx
    73c0:	89 4c 24 14          	mov    DWORD PTR [esp+0x14],ecx
    73c4:	8d 4c 24 1c          	lea    ecx,[esp+0x1c]
    73c8:	89 e2                	mov    edx,esp
    73ca:	e8 1a ad 06 00       	call   int386x_
    73cf:	83 c4 28             	add    esp,0x28
    73d2:	5a                   	pop    edx
    73d3:	59                   	pop    ecx
    73d4:	5b                   	pop    ebx
    73d5:	c3                   	ret    
    73d6:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    73dc:	8d 54 22 00          	lea    edx,[edx+eiz*1+0x0]

;-------------------------------------------------
;  Function 'lock_memory'                        -
;-------------------------------------------------
lock_memory:
    73e0:	53                   	push   ebx
    73e1:	51                   	push   ecx
    73e2:	83 ec 1c             	sub    esp,0x1c
    73e5:	bb 00 06 00 00       	mov    ebx,0x600
    73ea:	89 54 24 14          	mov    DWORD PTR [esp+0x14],edx
    73ee:	31 c9                	xor    ecx,ecx
    73f0:	89 1c 24             	mov    DWORD PTR [esp],ebx
    73f3:	89 c3                	mov    ebx,eax
    73f5:	89 e2                	mov    edx,esp
    73f7:	c1 eb 10             	shr    ebx,0x10
    73fa:	25 ff ff 00 00       	and    eax,0xffff
    73ff:	89 5c 24 04          	mov    DWORD PTR [esp+0x4],ebx
    7403:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
    7407:	89 e3                	mov    ebx,esp
    7409:	b8 31 00 00 00       	mov    eax,0x31
    740e:	89 4c 24 10          	mov    DWORD PTR [esp+0x10],ecx
    7412:	e8 85 9c 06 00       	call   int386_
    7417:	83 c4 1c             	add    esp,0x1c
    741a:	59                   	pop    ecx
    741b:	5b                   	pop    ebx
    741c:	c3                   	ret    
    741d:	8d 40 00             	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'unlock_memory'                      -
;-------------------------------------------------
unlock_memory:
    7420:	53                   	push   ebx
    7421:	51                   	push   ecx
    7422:	83 ec 1c             	sub    esp,0x1c
    7425:	bb 01 06 00 00       	mov    ebx,0x601
    742a:	89 54 24 14          	mov    DWORD PTR [esp+0x14],edx
    742e:	31 c9                	xor    ecx,ecx
    7430:	89 1c 24             	mov    DWORD PTR [esp],ebx
    7433:	89 c3                	mov    ebx,eax
    7435:	89 e2                	mov    edx,esp
    7437:	c1 eb 10             	shr    ebx,0x10
    743a:	25 ff ff 00 00       	and    eax,0xffff
    743f:	89 5c 24 04          	mov    DWORD PTR [esp+0x4],ebx
    7443:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
    7447:	89 e3                	mov    ebx,esp
    7449:	b8 31 00 00 00       	mov    eax,0x31
    744e:	89 4c 24 10          	mov    DWORD PTR [esp+0x10],ecx
    7452:	e8 45 9c 06 00       	call   int386_
    7457:	83 c4 1c             	add    esp,0x1c
    745a:	59                   	pop    ecx
    745b:	5b                   	pop    ebx
    745c:	8d 44 20 00          	lea    eax,[eax+eiz*1+0x0]

;-------------------------------------------------
;  Function 'dump_rmi'                           -
;-------------------------------------------------
dump_rmi:
    7460:	c3                   	ret    
;-------------------------------------------------
;  Bad code 10 (zero after ret):                 -
;-------------------------------------------------
;   7460:	c3                   	ret    
;   7461:	00 00                	add    BYTE PTR [eax],al
;   7463:	00 00                	add    BYTE PTR [eax],al
;-------------------------------------------------
;  Padding data (15 bytes):                      -
;-------------------------------------------------
    7461:	00 00 00 00 00 00 .. 	db     15 dup(0x00)
;-------------------------------------------------
;  End of bad code 10                            -
;-------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 8 (D:\SOURCE\dpmi.cpp)                                        -
;                                                                              -
;-------------------------------------------------------------------------------