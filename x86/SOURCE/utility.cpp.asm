;-------------------------------------------------------------------------------
;                                                                              -
;  Module 70: D:\SOURCE\utility.cpp                                            -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function 'benchmark_device'                   -
;-------------------------------------------------
benchmark_device:
   38090:	51                   	push   ecx
   38091:	56                   	push   esi
   38092:	57                   	push   edi
   38093:	55                   	push   ebp
   38094:	83 ec 24             	sub    esp,0x24
   38097:	89 c5                	mov    ebp,eax
   38099:	89 54 24 18          	mov    DWORD PTR [esp+0x18],edx
   3809d:	89 5c 24 14          	mov    DWORD PTR [esp+0x14],ebx
   380a1:	e8 da 4b fd ff       	call   XFILE_size
   380a6:	89 c7                	mov    edi,eax
   380a8:	83 f8 ff             	cmp    eax,0xffffffff
   380ab:	75 11                	jne    benchmark_device_branch_1
   380ad:	bb 48 93 00 00       	mov    ebx,@obj3:utility_cpp_variable_1                             ; fixup: num: 10330, src obj: 1, src ofs: 0x380ae, dst obj: 3, dst ofs: 0x9348
   380b2:	ba 43 00 00 00       	mov    edx,0x43
   380b7:	31 c0                	xor    eax,eax
   380b9:	e8 72 ff ff ff       	call   _error_report
benchmark_device_branch_1:
   380be:	68 00 02 00 00       	push   0x200
   380c3:	55                   	push   ebp
   380c4:	bb 9c 01 00 00       	mov    ebx,0x19c
   380c9:	e8 a8 94 03 00       	call   open_
   380ce:	83 c4 08             	add    esp,0x8
   380d1:	ba 00 39 02 00       	mov    edx,@obj3:sector_chunk                                       ; fixup: num: 10329, src obj: 1, src ofs: 0x380d2, dst obj: 3, dst ofs: 0x23900
   380d6:	89 c1                	mov    ecx,eax
   380d8:	e8 86 9e 03 00       	call   read_
   380dd:	89 c6                	mov    esi,eax
   380df:	39 f8                	cmp    eax,edi
   380e1:	7d 17                	jge    benchmark_device_branch_3
benchmark_device_branch_2:
   380e3:	bb 00 08 00 00       	mov    ebx,0x800
   380e8:	ba 00 39 02 00       	mov    edx,@obj3:sector_chunk                                       ; fixup: num: 10328, src obj: 1, src ofs: 0x380e9, dst obj: 3, dst ofs: 0x23900
   380ed:	89 c8                	mov    eax,ecx
   380ef:	e8 6f 9e 03 00       	call   read_
   380f4:	01 c6                	add    esi,eax
   380f6:	39 fe                	cmp    esi,edi
   380f8:	7c e9                	jl     benchmark_device_branch_2
benchmark_device_branch_3:
   380fa:	89 c8                	mov    eax,ecx
   380fc:	e8 0f 9e 03 00       	call   close_
   38101:	e8 fc 9f 03 00       	call   clock_
   38106:	68 00 02 00 00       	push   0x200
   3810b:	55                   	push   ebp
   3810c:	31 d2                	xor    edx,edx
   3810e:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
   38112:	e8 5f 94 03 00       	call   open_
   38117:	83 c4 08             	add    esp,0x8
   3811a:	89 c1                	mov    ecx,eax
   3811c:	89 54 24 20          	mov    DWORD PTR [esp+0x20],edx
   38120:	85 f6                	test   esi,esi
   38122:	7d 19                	jge    benchmark_device_branch_5
   38124:	bf 00 18 00 00       	mov    edi,0x1800
benchmark_device_branch_4:
   38129:	ba 00 39 02 00       	mov    edx,@obj3:sector_chunk                                       ; fixup: num: 10327, src obj: 1, src ofs: 0x3812a, dst obj: 3, dst ofs: 0x23900
   3812e:	89 fb                	mov    ebx,edi
   38130:	89 c8                	mov    eax,ecx
   38132:	e8 2c 9e 03 00       	call   read_
   38137:	01 c6                	add    esi,eax
   38139:	85 f6                	test   esi,esi
   3813b:	7c ec                	jl     benchmark_device_branch_4
benchmark_device_branch_5:
   3813d:	89 c8                	mov    eax,ecx
   3813f:	e8 cc 9d 03 00       	call   close_
   38144:	e8 b9 9f 03 00       	call   clock_
   38149:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
   3814d:	e8 b0 9f 03 00       	call   clock_
   38152:	68 00 02 00 00       	push   0x200
   38157:	55                   	push   ebp
   38158:	89 c7                	mov    edi,eax
   3815a:	e8 17 94 03 00       	call   open_
   3815f:	83 c4 08             	add    esp,0x8
   38162:	89 c6                	mov    esi,eax
   38164:	89 c1                	mov    ecx,eax
   38166:	e8 6c e3 03 00       	call   rand_
   3816b:	89 c2                	mov    edx,eax
   3816d:	bb 00 08 00 00       	mov    ebx,0x800
   38172:	c1 fa 1f             	sar    edx,0x1f
   38175:	f7 fb                	idiv   ebx
   38177:	8d 5a 01             	lea    ebx,[edx+0x1]
   3817a:	89 f0                	mov    eax,esi
   3817c:	ba 00 39 02 00       	mov    edx,@obj3:sector_chunk                                       ; fixup: num: 10333, src obj: 1, src ofs: 0x3817d, dst obj: 3, dst ofs: 0x23900
   38181:	e8 dd 9d 03 00       	call   read_
   38186:	8b 5c 24 20          	mov    ebx,DWORD PTR [esp+0x20]
   3818a:	89 c6                	mov    esi,eax
   3818c:	39 d8                	cmp    eax,ebx
   3818e:	7d 2d                	jge    benchmark_device_branch_7
   38190:	bd 00 39 02 00       	mov    ebp,@obj3:sector_chunk                                       ; fixup: num: 10332, src obj: 1, src ofs: 0x38191, dst obj: 3, dst ofs: 0x23900
benchmark_device_branch_6:
   38195:	e8 3d e3 03 00       	call   rand_
   3819a:	89 c2                	mov    edx,eax
   3819c:	bb 00 08 00 00       	mov    ebx,0x800
   381a1:	c1 fa 1f             	sar    edx,0x1f
   381a4:	f7 fb                	idiv   ebx
   381a6:	8d 9a 00 10 00 00    	lea    ebx,[edx+0x1000]
   381ac:	89 c8                	mov    eax,ecx
   381ae:	89 ea                	mov    edx,ebp
   381b0:	e8 ae 9d 03 00       	call   read_
   381b5:	01 c6                	add    esi,eax
   381b7:	3b 74 24 20          	cmp    esi,DWORD PTR [esp+0x20]
   381bb:	7c d8                	jl     benchmark_device_branch_6
benchmark_device_branch_7:
   381bd:	89 c8                	mov    eax,ecx
   381bf:	e8 4c 9d 03 00       	call   close_
   381c4:	e8 39 9f 03 00       	call   clock_
   381c9:	31 d2                	xor    edx,edx
   381cb:	29 f8                	sub    eax,edi
   381cd:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
   381d1:	89 04 24             	mov    DWORD PTR [esp],eax
   381d4:	dd 05 5d 93 00 00    	fld    QWORD PTR ds:@obj3:utility_cpp_variable_2                    ; fixup: num: 10331, src obj: 1, src ofs: 0x381d6, dst obj: 3, dst ofs: 0x935d
   381da:	df 2c 24             	fild   QWORD PTR [esp]
   381dd:	d8 c9                	fmul   st,st(1)
   381df:	db 44 24 20          	fild   DWORD PTR [esp+0x20]
   381e3:	d9 c9                	fxch   st(1)
   381e5:	d8 f9                	fdivr  st,st(1)
   381e7:	d9 c0                	fld    st(0)
   381e9:	e8 5a db 03 00       	call   __CHP
   381ee:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
   381f2:	db 18                	fistp  DWORD PTR [eax]
   381f4:	8b 5c 24 10          	mov    ebx,DWORD PTR [esp+0x10]
   381f8:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
   381fc:	29 d8                	sub    eax,ebx
   381fe:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
   38202:	89 04 24             	mov    DWORD PTR [esp],eax
   38205:	df 2c 24             	fild   QWORD PTR [esp]
   38208:	de cb                	fmulp  st(3),st
   3820a:	d9 ca                	fxch   st(2)
   3820c:	de f9                	fdivp  st(1),st
   3820e:	dd d9                	fstp   st(1)
   38210:	e8 33 db 03 00       	call   __CHP
   38215:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
   38219:	db 18                	fistp  DWORD PTR [eax]
   3821b:	83 c4 24             	add    esp,0x24
   3821e:	5d                   	pop    ebp
   3821f:	5f                   	pop    edi
   38220:	5e                   	pop    esi
   38221:	59                   	pop    ecx
   38222:	c3                   	ret    
   38223:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   38229:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
   3822f:	90                   	nop

;-------------------------------------------------
;  Function 'usqrt'                              -
;-------------------------------------------------
usqrt:
   38230:	53                   	push   ebx
   38231:	51                   	push   ecx
   38232:	56                   	push   esi
   38233:	57                   	push   edi
   38234:	89 c3                	mov    ebx,eax
   38236:	89 d7                	mov    edi,edx
   38238:	31 c0                	xor    eax,eax
   3823a:	31 d2                	xor    edx,edx
   3823c:	31 c9                	xor    ecx,ecx
   3823e:	eb 10                	jmp    usqrt_branch_2
usqrt_branch_1:
   38240:	41                   	inc    ecx
   38241:	83 f9 20             	cmp    ecx,0x20
   38244:	7d 38                	jge    usqrt_branch_3
   38246:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   3824c:	8d 54 22 00          	lea    edx,[edx+eiz*1+0x0]
usqrt_branch_2:
   38250:	89 de                	mov    esi,ebx
   38252:	81 e6 00 00 00 c0    	and    esi,0xc0000000
   38258:	8d 14 95 00 00 00 00 	lea    edx,[edx*4+0x0]
   3825f:	c1 ee 1e             	shr    esi,0x1e
   38262:	01 f2                	add    edx,esi
   38264:	8d 34 85 00 00 00 00 	lea    esi,[eax*4+0x0]
   3826b:	8d 1c 9d 00 00 00 00 	lea    ebx,[ebx*4+0x0]
   38272:	46                   	inc    esi
   38273:	01 c0                	add    eax,eax
   38275:	39 f2                	cmp    edx,esi
   38277:	72 c7                	jb     usqrt_branch_1
   38279:	40                   	inc    eax
   3827a:	29 f2                	sub    edx,esi
   3827c:	eb c2                	jmp    usqrt_branch_1
usqrt_branch_3:
   3827e:	89 c2                	mov    edx,eax
   38280:	81 e2 ff ff 00 00    	and    edx,0xffff
   38286:	c1 e8 10             	shr    eax,0x10
   38289:	89 17                	mov    DWORD PTR [edi],edx
   3828b:	5f                   	pop    edi
   3828c:	5e                   	pop    esi
   3828d:	59                   	pop    ecx
   3828e:	5b                   	pop    ebx
   3828f:	c3                   	ret    

;-------------------------------------------------
;  Function 'set_palette_register'               -
;-------------------------------------------------
set_palette_register:
   38290:	53                   	push   ebx
   38291:	51                   	push   ecx
   38292:	89 c1                	mov    ecx,eax
   38294:	89 d3                	mov    ebx,edx
   38296:	b0 ff                	mov    al,0xff
   38298:	ba c6 03 00 00       	mov    edx,0x3c6
   3829d:	ee                   	out    dx,al
   3829e:	ba c8 03 00 00       	mov    edx,0x3c8
   382a3:	88 c8                	mov    al,cl
   382a5:	ee                   	out    dx,al
   382a6:	ba c9 03 00 00       	mov    edx,0x3c9
   382ab:	8a 03                	mov    al,BYTE PTR [ebx]
   382ad:	ee                   	out    dx,al
   382ae:	8a 43 01             	mov    al,BYTE PTR [ebx+0x1]
   382b1:	ee                   	out    dx,al
   382b2:	8a 43 02             	mov    al,BYTE PTR [ebx+0x2]
   382b5:	ee                   	out    dx,al
   382b6:	59                   	pop    ecx
   382b7:	5b                   	pop    ebx
   382b8:	c3                   	ret    
   382b9:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   382bf:	90                   	nop

;-------------------------------------------------
;  Function 'set_all_palette_registers'          -
;-------------------------------------------------
set_all_palette_registers:
   382c0:	53                   	push   ebx
   382c1:	51                   	push   ecx
   382c2:	52                   	push   edx
   382c3:	56                   	push   esi
   382c4:	89 c3                	mov    ebx,eax
   382c6:	be c9 03 00 00       	mov    esi,0x3c9
   382cb:	31 c9                	xor    ecx,ecx
   382cd:	8d 40 00             	lea    eax,[eax+0x0]
set_all_palette_registers_branch_1:
   382d0:	b0 ff                	mov    al,0xff
   382d2:	ba c6 03 00 00       	mov    edx,0x3c6
   382d7:	ee                   	out    dx,al
   382d8:	ba c8 03 00 00       	mov    edx,0x3c8
   382dd:	88 c8                	mov    al,cl
   382df:	ee                   	out    dx,al
   382e0:	89 f2                	mov    edx,esi
   382e2:	8a 03                	mov    al,BYTE PTR [ebx]
   382e4:	ee                   	out    dx,al
   382e5:	8a 43 01             	mov    al,BYTE PTR [ebx+0x1]
   382e8:	83 c3 03             	add    ebx,0x3
   382eb:	ee                   	out    dx,al
   382ec:	8a 43 ff             	mov    al,BYTE PTR [ebx-0x1]
   382ef:	41                   	inc    ecx
   382f0:	ee                   	out    dx,al
   382f1:	81 f9 ff 00 00 00    	cmp    ecx,0xff
   382f7:	7e d7                	jle    set_all_palette_registers_branch_1
   382f9:	5e                   	pop    esi
   382fa:	5a                   	pop    edx
   382fb:	59                   	pop    ecx
   382fc:	5b                   	pop    ebx
   382fd:	c3                   	ret    
   382fe:	8b c0                	mov    eax,eax

;-------------------------------------------------
;  Function 'get_palette_register'               -
;-------------------------------------------------
get_palette_register:
   38300:	53                   	push   ebx
   38301:	51                   	push   ecx
   38302:	89 c1                	mov    ecx,eax
   38304:	89 d3                	mov    ebx,edx
   38306:	b0 ff                	mov    al,0xff
   38308:	ba c6 03 00 00       	mov    edx,0x3c6
   3830d:	ee                   	out    dx,al
   3830e:	ba c7 03 00 00       	mov    edx,0x3c7
   38313:	88 c8                	mov    al,cl
   38315:	ee                   	out    dx,al
   38316:	ba c9 03 00 00       	mov    edx,0x3c9
   3831b:	29 c0                	sub    eax,eax
   3831d:	ec                   	in     al,dx
   3831e:	88 03                	mov    BYTE PTR [ebx],al
   38320:	29 c0                	sub    eax,eax
   38322:	ec                   	in     al,dx
   38323:	88 43 01             	mov    BYTE PTR [ebx+0x1],al
   38326:	29 c0                	sub    eax,eax
   38328:	ec                   	in     al,dx
   38329:	88 43 02             	mov    BYTE PTR [ebx+0x2],al
   3832c:	59                   	pop    ecx
   3832d:	5b                   	pop    ebx
   3832e:	c3                   	ret    
   3832f:	90                   	nop

;-------------------------------------------------
;  Function 'get_all_palette_registers'          -
;-------------------------------------------------
get_all_palette_registers:
   38330:	53                   	push   ebx
   38331:	51                   	push   ecx
   38332:	52                   	push   edx
   38333:	56                   	push   esi
   38334:	be c9 03 00 00       	mov    esi,0x3c9
   38339:	89 c3                	mov    ebx,eax
   3833b:	31 c9                	xor    ecx,ecx
   3833d:	8d 40 00             	lea    eax,[eax+0x0]
get_all_palette_registers_branch_1:
   38340:	b0 ff                	mov    al,0xff
   38342:	ba c6 03 00 00       	mov    edx,0x3c6
   38347:	ee                   	out    dx,al
   38348:	ba c7 03 00 00       	mov    edx,0x3c7
   3834d:	88 c8                	mov    al,cl
   3834f:	ee                   	out    dx,al
   38350:	89 f2                	mov    edx,esi
   38352:	83 c3 03             	add    ebx,0x3
   38355:	29 c0                	sub    eax,eax
   38357:	ec                   	in     al,dx
   38358:	41                   	inc    ecx
   38359:	88 43 fd             	mov    BYTE PTR [ebx-0x3],al
   3835c:	29 c0                	sub    eax,eax
   3835e:	ec                   	in     al,dx
   3835f:	88 43 fe             	mov    BYTE PTR [ebx-0x2],al
   38362:	29 c0                	sub    eax,eax
   38364:	ec                   	in     al,dx
   38365:	88 43 ff             	mov    BYTE PTR [ebx-0x1],al
   38368:	81 f9 ff 00 00 00    	cmp    ecx,0xff
   3836e:	7e d0                	jle    get_all_palette_registers_branch_1
   38370:	5e                   	pop    esi
   38371:	5a                   	pop    edx
   38372:	59                   	pop    ecx
   38373:	5b                   	pop    ebx
   38374:	c3                   	ret    
;-------------------------------------------------
;  Bad code 68 (zero after ret):                 -
;-------------------------------------------------
;  38373:	5b                   	pop    ebx
;  38374:	c3                   	ret    
;  38375:	00 00                	add    BYTE PTR [eax],al
;  38377:	00 00                	add    BYTE PTR [eax],al
;-------------------------------------------------
;  Padding data (11 bytes):                      -
;-------------------------------------------------
   38375:	00 00 00 00 00 00 .. 	db     11 dup(0x00)
;-------------------------------------------------
;  End of bad code 68                            -
;-------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 70 (D:\SOURCE\utility.cpp)                                    -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 70: D:\SOURCE\utility.cpp                                            -
;                                                                              -
;-------------------------------------------------------------------------------
utility_cpp_variable_1:
    9348:	43 6f 75 6c 64 20 6e 6f 74 20 6f 70 65 6e 20 66 69 6c 65 2e 00 	db     "Could not open file.",0x00
utility_cpp_variable_2:                                                                             ; access size: QWORD
    935d:	7b 14 ae 47 e1 7a 84 3f 	dq     0x3f847ae147ae147b
    9365:	00 00 00             	db     3 dup(0x00)                                                  ; dec:   0, chr: '\0'

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 70 (D:\SOURCE\utility.cpp)                                    -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 70: D:\SOURCE\utility.cpp                                            -
;                                                                              -
;-------------------------------------------------------------------------------
sector_chunk:
   23900:	00 00 00 00 00 00 .. 	db     8192 dup(0x00)                                               ; dec:   0, chr: '\0'

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 70 (D:\SOURCE\utility.cpp)                                    -
;                                                                              -
;-------------------------------------------------------------------------------