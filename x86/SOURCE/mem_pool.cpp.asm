;-------------------------------------------------------------------------------
;                                                                              -
;  Module 93: D:\SOURCE\mem_pool.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function 'mem_pool_cpp_'                      -
;-------------------------------------------------
mem_pool_cpp_:
   6dbc0:	b8 c8 fb 00 00       	mov    eax,@obj3:mem_pool_cpp_variable_1                            ; fixup: num: 18784, src obj: 1, src ofs: 0x6dbc1, dst obj: 3, dst ofs: 0xfbc8
   6dbc5:	e9 a5 34 00 00       	jmp    puts_
   6dbca:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'PoolInit'                           -
;-------------------------------------------------
PoolInit:
   6dbd0:	53                   	push   ebx
   6dbd1:	51                   	push   ecx
   6dbd2:	52                   	push   edx
   6dbd3:	89 c1                	mov    ecx,eax
   6dbd5:	83 3d 5c 24 03 00 00 	cmp    DWORD PTR ds:@obj3:initialized,0x0                           ; fixup: num: 18783, src obj: 1, src ofs: 0x6dbd7, dst obj: 3, dst ofs: 0x3245c
   6dbdc:	0f 85 8a 00 00 00    	jne    PoolInit_branch_3
   6dbe2:	c7 05 5c 24 03 00 01 00 00 00 	mov    DWORD PTR ds:@obj3:initialized,0x1                  ; fixup: num: 18782, src obj: 1, src ofs: 0x6dbe4, dst obj: 3, dst ofs: 0x3245c
   6dbec:	85 c0                	test   eax,eax
   6dbee:	7f 24                	jg     PoolInit_branch_1
   6dbf0:	50                   	push   eax
   6dbf1:	68 d5 fb 00 00       	push   @obj3:mem_pool_cpp_variable_2                                ; fixup: num: 18781, src obj: 1, src ofs: 0x6dbf2, dst obj: 3, dst ofs: 0xfbd5
   6dbf6:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 18780, src obj: 1, src ofs: 0x6dbf7, dst obj: 3, dst ofs: 0x237fc
   6dbfb:	bb fc 37 02 00       	mov    ebx,@obj3:log_buffer                                         ; fixup: num: 18895, src obj: 1, src ofs: 0x6dbfc, dst obj: 3, dst ofs: 0x237fc
   6dc00:	e8 dc 2f 00 00       	call   sprintf_
   6dc05:	83 c4 0c             	add    esp,0xc
   6dc08:	ba 43 00 00 00       	mov    edx,0x43
   6dc0d:	31 c0                	xor    eax,eax
   6dc0f:	e8 1c a4 fc ff       	call   _error_report
PoolInit_branch_1:
   6dc14:	89 c8                	mov    eax,ecx
   6dc16:	e8 78 38 00 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   6dc1b:	a3 54 24 03 00       	mov    ds:@obj3:buffer_mod_93,eax                                   ; fixup: num: 18894, src obj: 1, src ofs: 0x6dc1c, dst obj: 3, dst ofs: 0x32454
   6dc20:	a3 58 24 03 00       	mov    ds:@obj3:buffer_check,eax                                    ; fixup: num: 18893, src obj: 1, src ofs: 0x6dc21, dst obj: 3, dst ofs: 0x32458
   6dc25:	85 c0                	test   eax,eax
   6dc27:	75 24                	jne    PoolInit_branch_2
   6dc29:	51                   	push   ecx
   6dc2a:	68 f7 fb 00 00       	push   @obj3:mem_pool_cpp_variable_3                                ; fixup: num: 18892, src obj: 1, src ofs: 0x6dc2b, dst obj: 3, dst ofs: 0xfbf7
   6dc2f:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 18891, src obj: 1, src ofs: 0x6dc30, dst obj: 3, dst ofs: 0x237fc
   6dc34:	bb fc 37 02 00       	mov    ebx,@obj3:log_buffer                                         ; fixup: num: 18890, src obj: 1, src ofs: 0x6dc35, dst obj: 3, dst ofs: 0x237fc
   6dc39:	e8 a3 2f 00 00       	call   sprintf_
   6dc3e:	83 c4 0c             	add    esp,0xc
   6dc41:	ba 49 00 00 00       	mov    edx,0x49
   6dc46:	31 c0                	xor    eax,eax
   6dc48:	e8 e3 a3 fc ff       	call   _error_report
PoolInit_branch_2:
   6dc4d:	ba a9 00 00 00       	mov    edx,0xa9
   6dc52:	a1 54 24 03 00       	mov    eax,ds:@obj3:buffer_mod_93                                   ; fixup: num: 18889, src obj: 1, src ofs: 0x6dc53, dst obj: 3, dst ofs: 0x32454
   6dc57:	89 cb                	mov    ebx,ecx
   6dc59:	e8 72 37 00 00       	call   memset_
   6dc5e:	89 0d 48 24 03 00    	mov    DWORD PTR ds:@obj3:pool_size,ecx                             ; fixup: num: 18888, src obj: 1, src ofs: 0x6dc60, dst obj: 3, dst ofs: 0x32448
   6dc64:	31 c9                	xor    ecx,ecx
   6dc66:	89 0d 4c 24 03 00    	mov    DWORD PTR ds:@obj3:offset,ecx                                ; fixup: num: 18887, src obj: 1, src ofs: 0x6dc68, dst obj: 3, dst ofs: 0x3244c
PoolInit_branch_3:
   6dc6c:	5a                   	pop    edx
   6dc6d:	59                   	pop    ecx
   6dc6e:	5b                   	pop    ebx
   6dc6f:	c3                   	ret    

;-------------------------------------------------
;  Function 'PoolDeinit'                         -
;-------------------------------------------------
PoolDeinit:
   6dc70:	53                   	push   ebx
   6dc71:	52                   	push   edx
   6dc72:	57                   	push   edi
   6dc73:	a1 58 24 03 00       	mov    eax,ds:@obj3:buffer_check                                    ; fixup: num: 18798, src obj: 1, src ofs: 0x6dc74, dst obj: 3, dst ofs: 0x32458
   6dc78:	31 d2                	xor    edx,edx
   6dc7a:	8b 1d 54 24 03 00    	mov    ebx,DWORD PTR ds:@obj3:buffer_mod_93                         ; fixup: num: 18797, src obj: 1, src ofs: 0x6dc7c, dst obj: 3, dst ofs: 0x32454
   6dc80:	89 15 5c 24 03 00    	mov    DWORD PTR ds:@obj3:initialized,edx                           ; fixup: num: 18796, src obj: 1, src ofs: 0x6dc82, dst obj: 3, dst ofs: 0x3245c
   6dc86:	39 d8                	cmp    eax,ebx
   6dc88:	74 14                	je     PoolDeinit_branch_1
   6dc8a:	53                   	push   ebx
   6dc8b:	50                   	push   eax
   6dc8c:	68 1a fc 00 00       	push   @obj3:mem_pool_cpp_variable_4                                ; fixup: num: 18795, src obj: 1, src ofs: 0x6dc8d, dst obj: 3, dst ofs: 0xfc1a
   6dc91:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 18794, src obj: 1, src ofs: 0x6dc92, dst obj: 3, dst ofs: 0x237fc
   6dc96:	e8 46 2f 00 00       	call   sprintf_
   6dc9b:	83 c4 10             	add    esp,0x10
PoolDeinit_branch_1:
   6dc9e:	8b 3d 54 24 03 00    	mov    edi,DWORD PTR ds:@obj3:buffer_mod_93                         ; fixup: num: 18793, src obj: 1, src ofs: 0x6dca0, dst obj: 3, dst ofs: 0x32454
   6dca4:	85 ff                	test   edi,edi
   6dca6:	74 07                	je     PoolDeinit_branch_2
   6dca8:	89 f8                	mov    eax,edi
   6dcaa:	e8 39 37 00 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
PoolDeinit_branch_2:
   6dcaf:	5f                   	pop    edi
   6dcb0:	5a                   	pop    edx
   6dcb1:	5b                   	pop    ebx
   6dcb2:	c3                   	ret    
   6dcb3:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   6dcb9:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
   6dcbf:	90                   	nop

;-------------------------------------------------
;  Function 'PoolAlloc'                          -
;-------------------------------------------------
PoolAlloc:
   6dcc0:	53                   	push   ebx
   6dcc1:	51                   	push   ecx
   6dcc2:	52                   	push   edx
   6dcc3:	56                   	push   esi
   6dcc4:	57                   	push   edi
   6dcc5:	8b 0d 4c 24 03 00    	mov    ecx,DWORD PTR ds:@obj3:offset                                ; fixup: num: 18792, src obj: 1, src ofs: 0x6dcc7, dst obj: 3, dst ofs: 0x3244c
   6dccb:	8b 35 54 24 03 00    	mov    esi,DWORD PTR ds:@obj3:buffer_mod_93                         ; fixup: num: 18791, src obj: 1, src ofs: 0x6dccd, dst obj: 3, dst ofs: 0x32454
   6dcd1:	8b 15 5c 24 03 00    	mov    edx,DWORD PTR ds:@obj3:initialized                           ; fixup: num: 18790, src obj: 1, src ofs: 0x6dcd3, dst obj: 3, dst ofs: 0x3245c
   6dcd7:	01 ce                	add    esi,ecx
   6dcd9:	85 d2                	test   edx,edx
   6dcdb:	75 04                	jne    PoolAlloc_branch_1
   6dcdd:	31 c0                	xor    eax,eax
   6dcdf:	eb 43                	jmp    PoolAlloc_branch_4
PoolAlloc_branch_1:
   6dce1:	8b 1d 50 24 03 00    	mov    ebx,DWORD PTR ds:@obj3:largest_offset                        ; fixup: num: 18789, src obj: 1, src ofs: 0x6dce3, dst obj: 3, dst ofs: 0x32450
   6dce7:	01 c1                	add    ecx,eax
   6dce9:	39 d9                	cmp    ecx,ebx
   6dceb:	7e 0e                	jle    PoolAlloc_branch_2
   6dced:	81 f9 90 aa 13 00    	cmp    ecx,0x13aa90
   6dcf3:	74 06                	je     PoolAlloc_branch_2
   6dcf5:	89 0d 50 24 03 00    	mov    DWORD PTR ds:@obj3:largest_offset,ecx                        ; fixup: num: 18788, src obj: 1, src ofs: 0x6dcf7, dst obj: 3, dst ofs: 0x32450
PoolAlloc_branch_2:
   6dcfb:	8b 3d 48 24 03 00    	mov    edi,DWORD PTR ds:@obj3:pool_size                             ; fixup: num: 18787, src obj: 1, src ofs: 0x6dcfd, dst obj: 3, dst ofs: 0x32448
   6dd01:	89 0d 4c 24 03 00    	mov    DWORD PTR ds:@obj3:offset,ecx                                ; fixup: num: 18786, src obj: 1, src ofs: 0x6dd03, dst obj: 3, dst ofs: 0x3244c
   6dd07:	39 f9                	cmp    ecx,edi
   6dd09:	7e 11                	jle    PoolAlloc_branch_3
   6dd0b:	bb 4e fc 00 00       	mov    ebx,@obj3:mem_pool_cpp_variable_5                            ; fixup: num: 18785, src obj: 1, src ofs: 0x6dd0c, dst obj: 3, dst ofs: 0xfc4e
   6dd10:	ba 7f 00 00 00       	mov    edx,0x7f
   6dd15:	31 c0                	xor    eax,eax
   6dd17:	e8 14 a3 fc ff       	call   _error_report
PoolAlloc_branch_3:
   6dd1c:	8b 0d 4c 24 03 00    	mov    ecx,DWORD PTR ds:@obj3:offset                                ; fixup: num: 18811, src obj: 1, src ofs: 0x6dd1e, dst obj: 3, dst ofs: 0x3244c
   6dd22:	89 f0                	mov    eax,esi
PoolAlloc_branch_4:
   6dd24:	89 0d 4c 24 03 00    	mov    DWORD PTR ds:@obj3:offset,ecx                                ; fixup: num: 18810, src obj: 1, src ofs: 0x6dd26, dst obj: 3, dst ofs: 0x3244c
   6dd2a:	5f                   	pop    edi
   6dd2b:	5e                   	pop    esi
   6dd2c:	5a                   	pop    edx
   6dd2d:	59                   	pop    ecx
   6dd2e:	5b                   	pop    ebx
   6dd2f:	c3                   	ret    

;-------------------------------------------------
;  Function 'PoolReset'                          -
;-------------------------------------------------
PoolReset:
   6dd30:	53                   	push   ebx
   6dd31:	52                   	push   edx
   6dd32:	8b 1d 48 24 03 00    	mov    ebx,DWORD PTR ds:@obj3:pool_size                             ; fixup: num: 18809, src obj: 1, src ofs: 0x6dd34, dst obj: 3, dst ofs: 0x32448
   6dd38:	31 d2                	xor    edx,edx
   6dd3a:	a1 54 24 03 00       	mov    eax,ds:@obj3:buffer_mod_93                                   ; fixup: num: 18808, src obj: 1, src ofs: 0x6dd3b, dst obj: 3, dst ofs: 0x32454
   6dd3f:	89 15 4c 24 03 00    	mov    DWORD PTR ds:@obj3:offset,edx                                ; fixup: num: 18807, src obj: 1, src ofs: 0x6dd41, dst obj: 3, dst ofs: 0x3244c
   6dd45:	ba a9 00 00 00       	mov    edx,0xa9
   6dd4a:	e8 81 36 00 00       	call   memset_
   6dd4f:	5a                   	pop    edx
   6dd50:	5b                   	pop    ebx
   6dd51:	c3                   	ret    
   6dd52:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   6dd58:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
   6dd5e:	8b c0                	mov    eax,eax

;-------------------------------------------------
;  Function 'PoolUsed'                           -
;-------------------------------------------------
PoolUsed:
   6dd60:	a1 4c 24 03 00       	mov    eax,ds:@obj3:offset                                          ; fixup: num: 18806, src obj: 1, src ofs: 0x6dd61, dst obj: 3, dst ofs: 0x3244c
   6dd65:	c3                   	ret    
   6dd66:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   6dd6c:	8d 54 22 00          	lea    edx,[edx+eiz*1+0x0]

;-------------------------------------------------
;  Function 'PoolSize'                           -
;-------------------------------------------------
PoolSize:
   6dd70:	a1 48 24 03 00       	mov    eax,ds:@obj3:pool_size                                       ; fixup: num: 18805, src obj: 1, src ofs: 0x6dd71, dst obj: 3, dst ofs: 0x32448
   6dd75:	c3                   	ret    
   6dd76:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   6dd7c:	8d 54 22 00          	lea    edx,[edx+eiz*1+0x0]

;-------------------------------------------------
;  Function 'ValidPoolData'                      -
;-------------------------------------------------
ValidPoolData:
   6dd80:	52                   	push   edx
   6dd81:	8b 15 54 24 03 00    	mov    edx,DWORD PTR ds:@obj3:buffer_mod_93                         ; fixup: num: 18804, src obj: 1, src ofs: 0x6dd83, dst obj: 3, dst ofs: 0x32454
   6dd87:	39 d0                	cmp    eax,edx
   6dd89:	72 11                	jb     ValidPoolData_branch_1
   6dd8b:	03 15 4c 24 03 00    	add    edx,DWORD PTR ds:@obj3:offset                                ; fixup: num: 18803, src obj: 1, src ofs: 0x6dd8d, dst obj: 3, dst ofs: 0x3244c
   6dd91:	39 d0                	cmp    eax,edx
   6dd93:	73 07                	jae    ValidPoolData_branch_1
   6dd95:	b8 01 00 00 00       	mov    eax,0x1
   6dd9a:	5a                   	pop    edx
   6dd9b:	c3                   	ret    
ValidPoolData_branch_1:
   6dd9c:	31 c0                	xor    eax,eax
   6dd9e:	5a                   	pop    edx
   6dd9f:	c3                   	ret    

;-------------------------------------------------
;  Function 'ReserveData'                        -
;-------------------------------------------------
ReserveData:
   6dda0:	53                   	push   ebx
   6dda1:	52                   	push   edx
   6dda2:	89 c2                	mov    edx,eax
   6dda4:	a1 88 24 03 00       	mov    eax,ds:@obj3:num_pointers                                    ; fixup: num: 18802, src obj: 1, src ofs: 0x6dda5, dst obj: 3, dst ofs: 0x32488
   6dda9:	40                   	inc    eax
   6ddaa:	89 14 85 5c 24 03 00 	mov    DWORD PTR [eax*4+@obj3:initialized],edx                      ; fixup: num: 18801, src obj: 1, src ofs: 0x6ddad, dst obj: 3, dst ofs: 0x3245c
   6ddb1:	a3 88 24 03 00       	mov    ds:@obj3:num_pointers,eax                                    ; fixup: num: 18800, src obj: 1, src ofs: 0x6ddb2, dst obj: 3, dst ofs: 0x32488
   6ddb6:	83 f8 0a             	cmp    eax,0xa
   6ddb9:	7c 11                	jl     ReserveData_branch_1
   6ddbb:	bb 5f fc 00 00       	mov    ebx,@obj3:mem_pool_cpp_variable_6                            ; fixup: num: 18799, src obj: 1, src ofs: 0x6ddbc, dst obj: 3, dst ofs: 0xfc5f
   6ddc0:	ba ab 00 00 00       	mov    edx,0xab
   6ddc5:	31 c0                	xor    eax,eax
   6ddc7:	e8 64 a2 fc ff       	call   _error_report
ReserveData_branch_1:
   6ddcc:	5a                   	pop    edx
   6ddcd:	5b                   	pop    ebx
   6ddce:	c3                   	ret    
   6ddcf:	90                   	nop

;-------------------------------------------------
;  Function 'DataReserved'                       -
;-------------------------------------------------
DataReserved:
   6ddd0:	53                   	push   ebx
   6ddd1:	52                   	push   edx
   6ddd2:	89 c3                	mov    ebx,eax
   6ddd4:	8b 15 88 24 03 00    	mov    edx,DWORD PTR ds:@obj3:num_pointers                          ; fixup: num: 18814, src obj: 1, src ofs: 0x6ddd6, dst obj: 3, dst ofs: 0x32488
   6ddda:	85 d2                	test   edx,edx
   6dddc:	7f 11                	jg     DataReserved_branch_2
   6ddde:	31 c0                	xor    eax,eax
   6dde0:	5a                   	pop    edx
   6dde1:	5b                   	pop    ebx
   6dde2:	c3                   	ret    
DataReserved_branch_1:
   6dde3:	83 c0 04             	add    eax,0x4
   6dde6:	39 d0                	cmp    eax,edx
   6dde8:	7c 0e                	jl     DataReserved_branch_3
   6ddea:	31 c0                	xor    eax,eax
   6ddec:	5a                   	pop    edx
   6dded:	5b                   	pop    ebx
   6ddee:	c3                   	ret    
DataReserved_branch_2:
   6ddef:	8d 14 95 00 00 00 00 	lea    edx,[edx*4+0x0]
   6ddf6:	31 c0                	xor    eax,eax
DataReserved_branch_3:
   6ddf8:	3b 98 60 24 03 00    	cmp    ebx,DWORD PTR [eax+@obj3:pointers]                           ; fixup: num: 18813, src obj: 1, src ofs: 0x6ddfa, dst obj: 3, dst ofs: 0x32460
   6ddfe:	75 e3                	jne    DataReserved_branch_1
   6de00:	b8 01 00 00 00       	mov    eax,0x1
   6de05:	5a                   	pop    edx
   6de06:	5b                   	pop    ebx
   6de07:	c3                   	ret    
   6de08:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   6de0e:	8b d2                	mov    edx,edx

;-------------------------------------------------
;  Function 'CheckHeapExit'                      -
;-------------------------------------------------
CheckHeapExit:
   6de10:	53                   	push   ebx
   6de11:	52                   	push   edx
   6de12:	b8 c0 d4 01 00       	mov    eax,0x1d4c0
   6de17:	e8 77 36 00 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   6de1c:	85 c0                	test   eax,eax
   6de1e:	74 59                	je     CheckHeapExit_branch_4
   6de20:	e8 c3 35 00 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   6de25:	b8 0c 00 00 00       	mov    eax,0xc
   6de2a:	e8 e9 40 00 00       	call   W?$nwn(ui)pnv
   6de2f:	85 c0                	test   eax,eax
   6de31:	74 13                	je     CheckHeapExit_branch_1
   6de33:	c7 40 04 00 00 00 00 	mov    DWORD PTR [eax+0x4],0x0
   6de3a:	c7 40 08 00 00 00 00 	mov    DWORD PTR [eax+0x8],0x0
   6de41:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
   6de44:	89 10                	mov    DWORD PTR [eax],edx
CheckHeapExit_branch_1:
   6de46:	74 31                	je     CheckHeapExit_branch_4
   6de48:	74 1e                	je     CheckHeapExit_branch_3
   6de4a:	8b 58 08             	mov    ebx,DWORD PTR [eax+0x8]
   6de4d:	89 c2                	mov    edx,eax
   6de4f:	85 db                	test   ebx,ebx
   6de51:	74 07                	je     CheckHeapExit_branch_2
   6de53:	89 d8                	mov    eax,ebx
   6de55:	e8 8e 35 00 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
CheckHeapExit_branch_2:
   6de5a:	89 d0                	mov    eax,edx
   6de5c:	c7 42 08 00 00 00 00 	mov    DWORD PTR [edx+0x8],0x0
   6de63:	e8 10 42 00 00       	call   W?$dln(pnv)v
CheckHeapExit_branch_3:
   6de68:	bb 84 fc 00 00       	mov    ebx,@obj3:mem_pool_cpp_variable_7                            ; fixup: num: 18812, src obj: 1, src ofs: 0x6de69, dst obj: 3, dst ofs: 0xfc84
   6de6d:	ba 3a 01 00 00       	mov    edx,0x13a
   6de72:	31 c0                	xor    eax,eax
   6de74:	e8 b7 a1 fc ff       	call   _error_report
CheckHeapExit_branch_4:
   6de79:	5a                   	pop    edx
   6de7a:	5b                   	pop    ebx
   6de7b:	c3                   	ret    
   6de7c:	8d 44 20 00          	lea    eax,[eax+eiz*1+0x0]

;-------------------------------------------------
;  Function 'CheckHeap'                          -
;-------------------------------------------------
CheckHeap:
   6de80:	53                   	push   ebx
   6de81:	51                   	push   ecx
   6de82:	52                   	push   edx
   6de83:	b8 c0 d4 01 00       	mov    eax,0x1d4c0
   6de88:	e8 06 36 00 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   6de8d:	89 c1                	mov    ecx,eax
   6de8f:	85 c0                	test   eax,eax
   6de91:	75 0f                	jne    CheckHeap_branch_1
   6de93:	bb 94 fc 00 00       	mov    ebx,@obj3:mem_pool_cpp_variable_8                            ; fixup: num: 18818, src obj: 1, src ofs: 0x6de94, dst obj: 3, dst ofs: 0xfc94
   6de98:	ba 43 01 00 00       	mov    edx,0x143
   6de9d:	e8 8e a1 fc ff       	call   _error_report
CheckHeap_branch_1:
   6dea2:	89 c8                	mov    eax,ecx
   6dea4:	e8 3f 35 00 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   6dea9:	b8 4c 00 00 00       	mov    eax,0x4c
   6deae:	e8 65 40 00 00       	call   W?$nwn(ui)pnv
   6deb3:	85 c0                	test   eax,eax
   6deb5:	74 17                	je     CheckHeap_branch_2
   6deb7:	68 ac fc 00 00       	push   @obj3:mem_pool_cpp_variable_9                                ; fixup: num: 18817, src obj: 1, src ofs: 0x6deb8, dst obj: 3, dst ofs: 0xfcac
   6debc:	6a 00                	push   0x0
   6debe:	6a 00                	push   0x0
   6dec0:	ba b7 fc 00 00       	mov    edx,@obj3:mem_pool_cpp_variable_10                           ; fixup: num: 18816, src obj: 1, src ofs: 0x6dec1, dst obj: 3, dst ofs: 0xfcb7
   6dec5:	31 c9                	xor    ecx,ecx
   6dec7:	31 db                	xor    ebx,ebx
   6dec9:	e8 a2 cc fc ff       	call   W?$ct:BTMAP$n(pnaiibipna)_
CheckHeap_branch_2:
   6dece:	89 c1                	mov    ecx,eax
   6ded0:	85 c0                	test   eax,eax
   6ded2:	75 0f                	jne    CheckHeap_branch_3
   6ded4:	bb c1 fc 00 00       	mov    ebx,@obj3:mem_pool_cpp_variable_11                           ; fixup: num: 18815, src obj: 1, src ofs: 0x6ded5, dst obj: 3, dst ofs: 0xfcc1
   6ded9:	ba 48 01 00 00       	mov    edx,0x148
   6dede:	e8 4d a1 fc ff       	call   _error_report
CheckHeap_branch_3:
   6dee3:	85 c9                	test   ecx,ecx
   6dee5:	74 0e                	je     CheckHeap_branch_4
   6dee7:	89 c8                	mov    eax,ecx
   6dee9:	31 d2                	xor    edx,edx
   6deeb:	e8 b0 d4 fc ff       	call   W?$dt:BTMAP$n()_
   6def0:	e8 83 41 00 00       	call   W?$dln(pnv)v
CheckHeap_branch_4:
   6def5:	5a                   	pop    edx
   6def6:	59                   	pop    ecx
   6def7:	5b                   	pop    ebx
   6def8:	c3                   	ret    
;-------------------------------------------------
;  Bad code 93 (zero after ret):                 -
;-------------------------------------------------
;  6def7:	5b                   	pop    ebx
;  6def8:	c3                   	ret    
;  6def9:	00 00                	add    BYTE PTR [eax],al
;  6defb:	00 00                	add    BYTE PTR [eax],al
;-------------------------------------------------
;  Padding data (7 bytes):                       -
;-------------------------------------------------
   6def9:	00 00 00 00 00 00 .. 	db     7 dup(0x00)
;-------------------------------------------------
;  End of bad code 93                            -
;-------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 93 (D:\SOURCE\mem_pool.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 93: D:\SOURCE\mem_pool.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------
mem_pool_cpp_variable_1:
    fbc8:	6d 65 6d 5f 70 6f 6f 6c 2e 63 70 70 00 	db     "mem_pool.cpp",0x00
mem_pool_cpp_variable_2:
    fbd5:	49 6e 76 61 6c 69 64 20 73 69 7a 65 20 66 6f 72 20 6d 65 6d 6f 72 79 20 70 6f 6f 6c 20 5b 25 69 5d 00 	db     "Invalid size for memory pool [%i]",0x00
mem_pool_cpp_variable_3:
    fbf7:	6d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 20 6f 66 20 73 69 7a 65 20 25 69 00 	db     "memory allocation error of size %i",0x00
mem_pool_cpp_variable_4:
    fc1a:	73 6f 6d 65 6f 6e 65 20 73 74 65 70 65 64 20 6f 6e 20 6d 65 2c 20 62 75 66 66 65 72 5f 63 68 65 63 6b 20 21 3d 20 62 75 66 66 65 72 20 25 70 21 3d 25 70 00 	db     "someone steped on me, buffer_check != buffer %p!=%p",0x00
mem_pool_cpp_variable_5:
    fc4e:	4d 45 4d 20 50 4f 4f 4c 20 6f 76 65 72 72 75 6e 00 	db     "MEM POOL overrun",0x00
mem_pool_cpp_variable_6:
    fc5f:	6e 75 6d 5f 70 6f 69 6e 74 65 72 73 20 3e 3d 20 4d 41 58 5f 52 45 53 45 52 56 45 44 5f 42 55 46 46 45 52 53 00 	db     "num_pointers >= MAX_RESERVED_BUFFERS",0x00
mem_pool_cpp_variable_7:
    fc84:	43 68 65 63 6b 48 65 61 70 45 78 69 74 28 29 00 	db     "CheckHeapExit()",0x00
mem_pool_cpp_variable_8:
    fc94:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
mem_pool_cpp_variable_9:
    fcac:	48 45 41 50 43 48 45 43 4b 32 00 	db     "HEAPCHECK2",0x00
mem_pool_cpp_variable_10:
    fcb7:	48 45 41 50 43 48 45 43 4b 00 	db     "HEAPCHECK",0x00
mem_pool_cpp_variable_11:
    fcc1:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
    fcd9:	00 00 00             	db     3 dup(0x00)                                                  ; dec:   0, chr: '\0'

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 93 (D:\SOURCE\mem_pool.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 93: D:\SOURCE\mem_pool.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------
pool_size:                                                                                          ; access size: DWORD
   32448:	00 00 00 00          	dd     0x00000000
offset:                                                                                             ; access size: DWORD
   3244c:	00 00 00 00          	dd     0x00000000
largest_offset:                                                                                     ; access size: DWORD
   32450:	00 00 00 00          	dd     0x00000000
buffer_mod_93:                                                                                      ; access size: DWORD
   32454:	00 00 00 00          	dd     0x00000000
buffer_check:                                                                                       ; access size: DWORD
   32458:	00 00 00 00          	dd     0x00000000
initialized:                                                                                        ; access sizes: DWORD, DWORDS
   3245c:	00 00 00 00          	dd     0x00000000
pointers:                                                                                           ; access size: DWORDS
   32460:	00 00 00 00 00 00 .. 	dd     10 dup(0x00000000)
num_pointers:                                                                                       ; access size: DWORD
   32488:	00 00 00 00          	dd     0x00000000
_data_holder:
   3248c:	00 00 00 00          	db     4 dup(0x00)                                                  ; dec:   0, chr: '\0'
pc_buffer_used:
   32490:	00 00 00 00          	db     4 dup(0x00)                                                  ; dec:   0, chr: '\0'

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 93 (D:\SOURCE\mem_pool.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------