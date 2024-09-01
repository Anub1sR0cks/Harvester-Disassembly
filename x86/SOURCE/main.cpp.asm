;-------------------------------------------------------------------------------
;                                                                              -
;  Module 0: D:\SOURCE\main.cpp                                                -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function 'main_'                              -
;-------------------------------------------------
main_:
      10:	51                   	push   ecx
      11:	56                   	push   esi
      12:	57                   	push   edi
      13:	55                   	push   ebp
      14:	81 ec 3c 06 00 00    	sub    esp,0x63c
      1a:	89 c5                	mov    ebp,eax
      1c:	89 d7                	mov    edi,edx
      1e:	89 de                	mov    esi,ebx
      20:	68 00 00 10 00       	push   0x100000
      25:	6a 00                	push   0x0
      27:	e8 cb 0a 07 00       	call   _D32Lock
      2c:	83 c4 08             	add    esp,0x8
      2f:	89 2d 38 7e 01 00    	mov    DWORD PTR ds:@obj3:_argc,ebp                                 ; fixup: num: 140, src obj: 1, src ofs: 0x31, dst obj: 3, dst ofs: 0x17e38
      35:	89 3d 3c 7e 01 00    	mov    DWORD PTR ds:@obj3:_argv,edi                                 ; fixup: num: 139, src obj: 1, src ofs: 0x37, dst obj: 3, dst ofs: 0x17e3c
      3b:	89 35 40 7e 01 00    	mov    DWORD PTR ds:@obj3:_envp,esi                                 ; fixup: num: 138, src obj: 1, src ofs: 0x3d, dst obj: 3, dst ofs: 0x17e40
      41:	e8 8a 87 03 00       	call   MSCDEX_installed
      46:	84 c0                	test   al,al
      48:	74 38                	je     main__branch_2
      4a:	8d 84 24 38 06 00 00 	lea    eax,[esp+0x638]
      51:	e8 ba 87 03 00       	call   MSCDEX_get_CDROM
      56:	0f bf 84 24 38 06 00 00 	movsx  eax,WORD PTR [esp+0x638]
      5e:	83 f8 ff             	cmp    eax,0xffffffff
      61:	75 11                	jne    main__branch_1
      63:	bb 04 00 00 00       	mov    ebx,@obj3:main_cpp_variable_1                                ; fixup: num: 137, src obj: 1, src ofs: 0x64, dst obj: 3, dst ofs: 0x4
      68:	ba 8e 00 00 00       	mov    edx,0x8e
      6d:	31 c0                	xor    eax,eax
      6f:	e8 bc 7f 03 00       	call   _error_report
main__branch_1:
      74:	e8 e7 87 03 00       	call   MSCDEX_get_version
      79:	89 84 24 38 06 00 00 	mov    DWORD PTR [esp+0x638],eax
      80:	eb 0d                	jmp    main__branch_3
main__branch_2:
      82:	68 17 00 00 00       	push   @obj3:main_cpp_variable_2                                    ; fixup: num: 136, src obj: 1, src ofs: 0x83, dst obj: 3, dst ofs: 0x17
      87:	e8 c6 0a 07 00       	call   printf_
      8c:	83 c4 04             	add    esp,0x4
main__branch_3:
      8f:	b8 2c 00 00 00       	mov    eax,@obj3:main_cpp_variable_3                                ; fixup: num: 135, src obj: 1, src ofs: 0x90, dst obj: 3, dst ofs: 0x2c
      94:	e8 db 0a 07 00       	call   getenv_
      99:	89 c2                	mov    edx,eax
      9b:	89 c3                	mov    ebx,eax
      9d:	85 c0                	test   eax,eax
      9f:	75 07                	jne    main__branch_4
      a1:	30 c0                	xor    al,al
      a3:	e9 97 00 00 00       	jmp    main__branch_9
main__branch_4:
      a8:	8d bc 24 00 04 00 00 	lea    edi,[esp+0x400]
      af:	89 c6                	mov    esi,eax
      b1:	57                   	push   edi
main__branch_5:
      b2:	8a 06                	mov    al,BYTE PTR [esi]
      b4:	88 07                	mov    BYTE PTR [edi],al
      b6:	3c 00                	cmp    al,0x0
      b8:	74 10                	je     main__branch_6
      ba:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
      bd:	83 c6 02             	add    esi,0x2
      c0:	88 47 01             	mov    BYTE PTR [edi+0x1],al
      c3:	83 c7 02             	add    edi,0x2
      c6:	3c 00                	cmp    al,0x0
      c8:	75 e8                	jne    main__branch_5
main__branch_6:
      ca:	5f                   	pop    edi
      cb:	89 d7                	mov    edi,edx
      cd:	29 c9                	sub    ecx,ecx
      cf:	49                   	dec    ecx
      d0:	31 c0                	xor    eax,eax
      d2:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
      d4:	f7 d1                	not    ecx
      d6:	49                   	dec    ecx
      d7:	80 bc 0c ff 03 00 00 5c 	cmp    BYTE PTR [esp+ecx*1+0x3ff],0x5c
      df:	75 15                	jne    main__branch_7
      e1:	89 d7                	mov    edi,edx
      e3:	30 d2                	xor    dl,dl
      e5:	29 c9                	sub    ecx,ecx
      e7:	49                   	dec    ecx
      e8:	31 c0                	xor    eax,eax
      ea:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
      ec:	f7 d1                	not    ecx
      ee:	49                   	dec    ecx
      ef:	88 94 0c ff 03 00 00 	mov    BYTE PTR [esp+ecx*1+0x3ff],dl
main__branch_7:
      f6:	8d 84 24 00 04 00 00 	lea    eax,[esp+0x400]
      fd:	50                   	push   eax
      fe:	68 31 00 00 00       	push   @obj3:main_cpp_variable_4                                    ; fixup: num: 143, src obj: 1, src ofs: 0xff, dst obj: 3, dst ofs: 0x31
     103:	8d 84 24 08 01 00 00 	lea    eax,[esp+0x108]
     10a:	50                   	push   eax
     10b:	e8 d1 0a 07 00       	call   sprintf_
     110:	83 c4 0c             	add    esp,0xc
     113:	ba 3d 00 00 00       	mov    edx,@obj3:main_cpp_variable_5                                ; fixup: num: 142, src obj: 1, src ofs: 0x114, dst obj: 3, dst ofs: 0x3d
     118:	8d 84 24 00 01 00 00 	lea    eax,[esp+0x100]
     11f:	e8 84 0c 07 00       	call   fopen_
     124:	85 c0                	test   eax,eax
     126:	75 04                	jne    main__branch_8
     128:	30 c0                	xor    al,al
     12a:	eb 13                	jmp    main__branch_9
main__branch_8:
     12c:	e8 0d 0d 07 00       	call   fclose_
     131:	8d 84 24 00 01 00 00 	lea    eax,[esp+0x100]
     138:	e8 43 0e 07 00       	call   unlink_
     13d:	b0 01                	mov    al,0x1
main__branch_9:
     13f:	84 c0                	test   al,al
     141:	0f 85 57 01 00 00    	jne    main__branch_21
     147:	b8 41 00 00 00       	mov    eax,@obj3:main_cpp_variable_6                                ; fixup: num: 141, src obj: 1, src ofs: 0x148, dst obj: 3, dst ofs: 0x41
     14c:	e8 23 0a 07 00       	call   getenv_
     151:	89 c2                	mov    edx,eax
     153:	89 c3                	mov    ebx,eax
     155:	85 c0                	test   eax,eax
     157:	75 07                	jne    main__branch_10
     159:	30 c0                	xor    al,al
     15b:	e9 8a 00 00 00       	jmp    main__branch_15
main__branch_10:
     160:	8d bc 24 00 05 00 00 	lea    edi,[esp+0x500]
     167:	89 c6                	mov    esi,eax
     169:	57                   	push   edi
main__branch_11:
     16a:	8a 06                	mov    al,BYTE PTR [esi]
     16c:	88 07                	mov    BYTE PTR [edi],al
     16e:	3c 00                	cmp    al,0x0
     170:	74 10                	je     main__branch_12
     172:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
     175:	83 c6 02             	add    esi,0x2
     178:	88 47 01             	mov    BYTE PTR [edi+0x1],al
     17b:	83 c7 02             	add    edi,0x2
     17e:	3c 00                	cmp    al,0x0
     180:	75 e8                	jne    main__branch_11
main__branch_12:
     182:	5f                   	pop    edi
     183:	89 d7                	mov    edi,edx
     185:	29 c9                	sub    ecx,ecx
     187:	49                   	dec    ecx
     188:	31 c0                	xor    eax,eax
     18a:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
     18c:	f7 d1                	not    ecx
     18e:	49                   	dec    ecx
     18f:	80 bc 0c ff 04 00 00 5c 	cmp    BYTE PTR [esp+ecx*1+0x4ff],0x5c
     197:	75 15                	jne    main__branch_13
     199:	89 d7                	mov    edi,edx
     19b:	29 c9                	sub    ecx,ecx
     19d:	49                   	dec    ecx
     19e:	31 c0                	xor    eax,eax
     1a0:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
     1a2:	f7 d1                	not    ecx
     1a4:	49                   	dec    ecx
     1a5:	30 e4                	xor    ah,ah
     1a7:	88 a4 0c ff 04 00 00 	mov    BYTE PTR [esp+ecx*1+0x4ff],ah
main__branch_13:
     1ae:	8d 84 24 00 05 00 00 	lea    eax,[esp+0x500]
     1b5:	50                   	push   eax
     1b6:	68 31 00 00 00       	push   @obj3:main_cpp_variable_4                                    ; fixup: num: 146, src obj: 1, src ofs: 0x1b7, dst obj: 3, dst ofs: 0x31
     1bb:	8d 44 24 08          	lea    eax,[esp+0x8]
     1bf:	50                   	push   eax
     1c0:	e8 1c 0a 07 00       	call   sprintf_
     1c5:	83 c4 0c             	add    esp,0xc
     1c8:	ba 3d 00 00 00       	mov    edx,@obj3:main_cpp_variable_5                                ; fixup: num: 145, src obj: 1, src ofs: 0x1c9, dst obj: 3, dst ofs: 0x3d
     1cd:	89 e0                	mov    eax,esp
     1cf:	e8 d4 0b 07 00       	call   fopen_
     1d4:	85 c0                	test   eax,eax
     1d6:	75 04                	jne    main__branch_14
     1d8:	30 c0                	xor    al,al
     1da:	eb 0e                	jmp    main__branch_15
main__branch_14:
     1dc:	e8 5d 0c 07 00       	call   fclose_
     1e1:	89 e0                	mov    eax,esp
     1e3:	e8 98 0d 07 00       	call   unlink_
     1e8:	b0 01                	mov    al,0x1
main__branch_15:
     1ea:	84 c0                	test   al,al
     1ec:	0f 85 ac 00 00 00    	jne    main__branch_21
     1f2:	bb 45 00 00 00       	mov    ebx,@obj3:main_cpp_variable_7                                ; fixup: num: 144, src obj: 1, src ofs: 0x1f3, dst obj: 3, dst ofs: 0x45
     1f7:	85 db                	test   ebx,ebx
     1f9:	0f 84 97 00 00 00    	je     main__branch_20
     1ff:	8d bc 24 00 03 00 00 	lea    edi,[esp+0x300]
     206:	89 de                	mov    esi,ebx
     208:	57                   	push   edi
main__branch_16:
     209:	8a 06                	mov    al,BYTE PTR [esi]
     20b:	88 07                	mov    BYTE PTR [edi],al
     20d:	3c 00                	cmp    al,0x0
     20f:	74 10                	je     main__branch_17
     211:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
     214:	83 c6 02             	add    esi,0x2
     217:	88 47 01             	mov    BYTE PTR [edi+0x1],al
     21a:	83 c7 02             	add    edi,0x2
     21d:	3c 00                	cmp    al,0x0
     21f:	75 e8                	jne    main__branch_16
main__branch_17:
     221:	5f                   	pop    edi
     222:	89 df                	mov    edi,ebx
     224:	29 c9                	sub    ecx,ecx
     226:	49                   	dec    ecx
     227:	31 c0                	xor    eax,eax
     229:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
     22b:	f7 d1                	not    ecx
     22d:	49                   	dec    ecx
     22e:	80 bc 0c ff 02 00 00 5c 	cmp    BYTE PTR [esp+ecx*1+0x2ff],0x5c
     236:	75 15                	jne    main__branch_18
     238:	89 df                	mov    edi,ebx
     23a:	30 f6                	xor    dh,dh
     23c:	29 c9                	sub    ecx,ecx
     23e:	49                   	dec    ecx
     23f:	31 c0                	xor    eax,eax
     241:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
     243:	f7 d1                	not    ecx
     245:	49                   	dec    ecx
     246:	88 b4 0c ff 02 00 00 	mov    BYTE PTR [esp+ecx*1+0x2ff],dh
main__branch_18:
     24d:	8d 84 24 00 03 00 00 	lea    eax,[esp+0x300]
     254:	50                   	push   eax
     255:	68 31 00 00 00       	push   @obj3:main_cpp_variable_4                                    ; fixup: num: 153, src obj: 1, src ofs: 0x256, dst obj: 3, dst ofs: 0x31
     25a:	8d 84 24 08 02 00 00 	lea    eax,[esp+0x208]
     261:	50                   	push   eax
     262:	e8 7a 09 07 00       	call   sprintf_
     267:	83 c4 0c             	add    esp,0xc
     26a:	ba 3d 00 00 00       	mov    edx,@obj3:main_cpp_variable_5                                ; fixup: num: 152, src obj: 1, src ofs: 0x26b, dst obj: 3, dst ofs: 0x3d
     26f:	8d 84 24 00 02 00 00 	lea    eax,[esp+0x200]
     276:	e8 2d 0b 07 00       	call   fopen_
     27b:	85 c0                	test   eax,eax
     27d:	75 04                	jne    main__branch_19
     27f:	30 c0                	xor    al,al
     281:	eb 13                	jmp    main__branch_20
main__branch_19:
     283:	e8 b6 0b 07 00       	call   fclose_
     288:	8d 84 24 00 02 00 00 	lea    eax,[esp+0x200]
     28f:	e8 ec 0c 07 00       	call   unlink_
     294:	b0 01                	mov    al,0x1
main__branch_20:
     296:	84 c0                	test   al,al
     298:	75 04                	jne    main__branch_21
     29a:	31 c0                	xor    eax,eax
     29c:	eb 07                	jmp    main__branch_22
main__branch_21:
     29e:	89 d8                	mov    eax,ebx
     2a0:	e8 fa 0c 07 00       	call   strdup_                                                      ; aliases: strdup_, _strdup_
main__branch_22:
     2a5:	a3 34 7e 01 00       	mov    ds:@obj3:temp_directory,eax                                  ; fixup: num: 151, src obj: 1, src ofs: 0x2a6, dst obj: 3, dst ofs: 0x17e34
     2aa:	e8 91 c3 00 00       	call   XFILE_init
     2af:	25 ff 00 00 00       	and    eax,0xff
     2b4:	75 0f                	jne    main__branch_23
     2b6:	bb 48 00 00 00       	mov    ebx,@obj3:main_cpp_variable_8                                ; fixup: num: 150, src obj: 1, src ofs: 0x2b7, dst obj: 3, dst ofs: 0x48
     2bb:	ba a4 00 00 00       	mov    edx,0xa4
     2c0:	e8 6b 7d 03 00       	call   _error_report
main__branch_23:
     2c5:	ba 77 00 00 00       	mov    edx,@obj3:main_cpp_variable_9                                ; fixup: num: 149, src obj: 1, src ofs: 0x2c6, dst obj: 3, dst ofs: 0x77
     2ca:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 148, src obj: 1, src ofs: 0x2cb, dst obj: 3, dst ofs: 0x32438
     2cf:	e8 2c d5 06 00       	call   getn
     2d4:	a3 ac 0f 01 00       	mov    ds:@obj3:fx_volume,eax                                       ; fixup: num: 147, src obj: 1, src ofs: 0x2d5, dst obj: 3, dst ofs: 0x10fac
     2d9:	83 f8 09             	cmp    eax,0x9
     2dc:	7e 1c                	jle    main__branch_24
     2de:	bb 09 00 00 00       	mov    ebx,0x9
     2e3:	ba 81 00 00 00       	mov    edx,@obj3:main_cpp_variable_10                               ; fixup: num: 171, src obj: 1, src ofs: 0x2e4, dst obj: 3, dst ofs: 0x81
     2e8:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 170, src obj: 1, src ofs: 0x2e9, dst obj: 3, dst ofs: 0x32438
     2ed:	89 1d ac 0f 01 00    	mov    DWORD PTR ds:@obj3:fx_volume,ebx                             ; fixup: num: 169, src obj: 1, src ofs: 0x2ef, dst obj: 3, dst ofs: 0x10fac
     2f3:	e8 88 d8 06 00       	call   set_mod_92
     2f8:	eb 23                	jmp    main__branch_25
main__branch_24:
     2fa:	83 f8 ff             	cmp    eax,0xffffffff
     2fd:	75 1e                	jne    main__branch_25
     2ff:	bb 09 00 00 00       	mov    ebx,0x9
     304:	ba 8b 00 00 00       	mov    edx,@obj3:main_cpp_variable_11                               ; fixup: num: 168, src obj: 1, src ofs: 0x305, dst obj: 3, dst ofs: 0x8b
     309:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 167, src obj: 1, src ofs: 0x30a, dst obj: 3, dst ofs: 0x32438
     30e:	e8 6d d8 06 00       	call   set_mod_92
     313:	c7 05 ac 0f 01 00 09 00 00 00 	mov    DWORD PTR ds:@obj3:fx_volume,0x9                    ; fixup: num: 166, src obj: 1, src ofs: 0x315, dst obj: 3, dst ofs: 0x10fac
main__branch_25:
     31d:	ba 95 00 00 00       	mov    edx,@obj3:main_cpp_variable_12                               ; fixup: num: 165, src obj: 1, src ofs: 0x31e, dst obj: 3, dst ofs: 0x95
     322:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 164, src obj: 1, src ofs: 0x323, dst obj: 3, dst ofs: 0x32438
     327:	e8 d4 d4 06 00       	call   getn
     32c:	a3 b0 0f 01 00       	mov    ds:@obj3:music_volume,eax                                    ; fixup: num: 163, src obj: 1, src ofs: 0x32d, dst obj: 3, dst ofs: 0x10fb0
     331:	83 f8 09             	cmp    eax,0x9
     334:	7e 1e                	jle    main__branch_26
     336:	be 09 00 00 00       	mov    esi,0x9
     33b:	ba a2 00 00 00       	mov    edx,@obj3:main_cpp_variable_13                               ; fixup: num: 162, src obj: 1, src ofs: 0x33c, dst obj: 3, dst ofs: 0xa2
     340:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 161, src obj: 1, src ofs: 0x341, dst obj: 3, dst ofs: 0x32438
     345:	89 f3                	mov    ebx,esi
     347:	89 35 b0 0f 01 00    	mov    DWORD PTR ds:@obj3:music_volume,esi                          ; fixup: num: 160, src obj: 1, src ofs: 0x349, dst obj: 3, dst ofs: 0x10fb0
     34d:	e8 2e d8 06 00       	call   set_mod_92
     352:	eb 24                	jmp    main__branch_27
main__branch_26:
     354:	83 f8 ff             	cmp    eax,0xffffffff
     357:	75 1f                	jne    main__branch_27
     359:	bb 04 00 00 00       	mov    ebx,0x4
     35e:	ba af 00 00 00       	mov    edx,@obj3:main_cpp_variable_14                               ; fixup: num: 159, src obj: 1, src ofs: 0x35f, dst obj: 3, dst ofs: 0xaf
     363:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 158, src obj: 1, src ofs: 0x364, dst obj: 3, dst ofs: 0x32438
     368:	b9 04 00 00 00       	mov    ecx,0x4
     36d:	e8 0e d8 06 00       	call   set_mod_92
     372:	89 0d b0 0f 01 00    	mov    DWORD PTR ds:@obj3:music_volume,ecx                          ; fixup: num: 157, src obj: 1, src ofs: 0x374, dst obj: 3, dst ofs: 0x10fb0
main__branch_27:
     378:	83 3d b0 0f 01 00 00 	cmp    DWORD PTR ds:@obj3:music_volume,0x0                          ; fixup: num: 156, src obj: 1, src ofs: 0x37a, dst obj: 3, dst ofs: 0x10fb0
     37f:	75 0a                	jne    main__branch_28
     381:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 155, src obj: 1, src ofs: 0x382, dst obj: 3, dst ofs: 0x1a1d4
     386:	e8 95 a2 00 00       	call   pause
main__branch_28:
     38b:	ba bc 00 00 00       	mov    edx,@obj3:main_cpp_variable_15                               ; fixup: num: 154, src obj: 1, src ofs: 0x38c, dst obj: 3, dst ofs: 0xbc
     390:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 188, src obj: 1, src ofs: 0x391, dst obj: 3, dst ofs: 0x32438
     395:	e8 66 d4 06 00       	call   getn
     39a:	a3 54 7e 01 00       	mov    ds:@obj3:gamma_correction,eax                                ; fixup: num: 187, src obj: 1, src ofs: 0x39b, dst obj: 3, dst ofs: 0x17e54
     39f:	83 f8 09             	cmp    eax,0x9
     3a2:	7e 1d                	jle    main__branch_29
     3a4:	b8 09 00 00 00       	mov    eax,0x9
     3a9:	ba c2 00 00 00       	mov    edx,@obj3:main_cpp_variable_16                               ; fixup: num: 186, src obj: 1, src ofs: 0x3aa, dst obj: 3, dst ofs: 0xc2
     3ae:	a3 54 7e 01 00       	mov    ds:@obj3:gamma_correction,eax                                ; fixup: num: 185, src obj: 1, src ofs: 0x3af, dst obj: 3, dst ofs: 0x17e54
     3b3:	89 c3                	mov    ebx,eax
     3b5:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 184, src obj: 1, src ofs: 0x3b6, dst obj: 3, dst ofs: 0x32438
     3ba:	e8 c1 d7 06 00       	call   set_mod_92
     3bf:	eb 1e                	jmp    main__branch_30
main__branch_29:
     3c1:	83 f8 ff             	cmp    eax,0xffffffff
     3c4:	75 19                	jne    main__branch_30
     3c6:	ba c8 00 00 00       	mov    edx,@obj3:main_cpp_variable_17                               ; fixup: num: 183, src obj: 1, src ofs: 0x3c7, dst obj: 3, dst ofs: 0xc8
     3cb:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 182, src obj: 1, src ofs: 0x3cc, dst obj: 3, dst ofs: 0x32438
     3d0:	31 db                	xor    ebx,ebx
     3d2:	31 ed                	xor    ebp,ebp
     3d4:	e8 a7 d7 06 00       	call   set_mod_92
     3d9:	89 2d 54 7e 01 00    	mov    DWORD PTR ds:@obj3:gamma_correction,ebp                      ; fixup: num: 181, src obj: 1, src ofs: 0x3db, dst obj: 3, dst ofs: 0x17e54
main__branch_30:
     3df:	e8 bc 22 01 00       	call   set_pal_gamma
     3e4:	b3 01                	mov    bl,0x1
     3e6:	ba ce 00 00 00       	mov    edx,@obj3:main_cpp_variable_18                               ; fixup: num: 180, src obj: 1, src ofs: 0x3e7, dst obj: 3, dst ofs: 0xce
     3eb:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 179, src obj: 1, src ofs: 0x3ec, dst obj: 3, dst ofs: 0x32438
     3f0:	88 1d 58 7e 01 00    	mov    BYTE PTR ds:@obj3:text_dialog,bl                             ; fixup: num: 178, src obj: 1, src ofs: 0x3f2, dst obj: 3, dst ofs: 0x17e58
     3f6:	e8 d5 d3 06 00       	call   get
     3fb:	85 c0                	test   eax,eax
     3fd:	0f 84 81 00 00 00    	je     main__branch_33
     403:	ba d6 00 00 00       	mov    edx,@obj3:main_cpp_variable_20                               ; fixup: num: 177, src obj: 1, src ofs: 0x404, dst obj: 3, dst ofs: 0xd6
     408:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 176, src obj: 1, src ofs: 0x409, dst obj: 3, dst ofs: 0x32438
     40d:	e8 be d3 06 00       	call   get
     412:	ba d3 00 00 00       	mov    edx,@obj3:main_cpp_variable_19                               ; fixup: num: 175, src obj: 1, src ofs: 0x413, dst obj: 3, dst ofs: 0xd3
     417:	e8 dc 0b 07 00       	call   strupr_
     41c:	e8 fc 0b 07 00       	call   strstr_
     421:	85 c0                	test   eax,eax
     423:	74 0a                	je     main__branch_31
     425:	30 ed                	xor    ch,ch
     427:	88 2d 58 7e 01 00    	mov    BYTE PTR ds:@obj3:text_dialog,ch                             ; fixup: num: 174, src obj: 1, src ofs: 0x429, dst obj: 3, dst ofs: 0x17e58
     42d:	eb 69                	jmp    main__branch_34
main__branch_31:
     42f:	ba df 00 00 00       	mov    edx,@obj3:main_cpp_variable_22                               ; fixup: num: 173, src obj: 1, src ofs: 0x430, dst obj: 3, dst ofs: 0xdf
     434:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 172, src obj: 1, src ofs: 0x435, dst obj: 3, dst ofs: 0x32438
     439:	e8 92 d3 06 00       	call   get
     43e:	ba db 00 00 00       	mov    edx,@obj3:main_cpp_variable_21                               ; fixup: num: 80, src obj: 1, src ofs: 0x43f, dst obj: 3, dst ofs: 0xdb
     443:	e8 b0 0b 07 00       	call   strupr_
     448:	e8 d0 0b 07 00       	call   strstr_
     44d:	85 c0                	test   eax,eax
     44f:	74 08                	je     main__branch_32
     451:	88 1d 58 7e 01 00    	mov    BYTE PTR ds:@obj3:text_dialog,bl                             ; fixup: num: 79, src obj: 1, src ofs: 0x453, dst obj: 3, dst ofs: 0x17e58
     457:	eb 3f                	jmp    main__branch_34
main__branch_32:
     459:	ba ea 00 00 00       	mov    edx,@obj3:main_cpp_variable_24                               ; fixup: num: 78, src obj: 1, src ofs: 0x45a, dst obj: 3, dst ofs: 0xea
     45e:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 77, src obj: 1, src ofs: 0x45f, dst obj: 3, dst ofs: 0x32438
     463:	e8 68 d3 06 00       	call   get
     468:	ba e4 00 00 00       	mov    edx,@obj3:main_cpp_variable_23                               ; fixup: num: 76, src obj: 1, src ofs: 0x469, dst obj: 3, dst ofs: 0xe4
     46d:	e8 86 0b 07 00       	call   strupr_
     472:	e8 a6 0b 07 00       	call   strstr_
     477:	85 c0                	test   eax,eax
     479:	74 1d                	je     main__branch_34
     47b:	c6 05 58 7e 01 00 02 	mov    BYTE PTR ds:@obj3:text_dialog,0x2                            ; fixup: num: 75, src obj: 1, src ofs: 0x47d, dst obj: 3, dst ofs: 0x17e58
     482:	eb 14                	jmp    main__branch_34
main__branch_33:
     484:	bb ef 00 00 00       	mov    ebx,@obj3:main_cpp_variable_25                               ; fixup: num: 74, src obj: 1, src ofs: 0x485, dst obj: 3, dst ofs: 0xef
     489:	ba f3 00 00 00       	mov    edx,@obj3:main_cpp_variable_26                               ; fixup: num: 73, src obj: 1, src ofs: 0x48a, dst obj: 3, dst ofs: 0xf3
     48e:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 72, src obj: 1, src ofs: 0x48f, dst obj: 3, dst ofs: 0x32438
     493:	e8 d8 d3 06 00       	call   set
main__branch_34:
     498:	b0 01                	mov    al,0x1
     49a:	ba f8 00 00 00       	mov    edx,@obj3:main_cpp_variable_27                               ; fixup: num: 71, src obj: 1, src ofs: 0x49b, dst obj: 3, dst ofs: 0xf8
     49f:	a2 bc 0f 01 00       	mov    ds:@obj3:gore,al                                             ; fixup: num: 197, src obj: 1, src ofs: 0x4a0, dst obj: 3, dst ofs: 0x10fbc
     4a4:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 196, src obj: 1, src ofs: 0x4a5, dst obj: 3, dst ofs: 0x32438
     4a9:	e8 22 d3 06 00       	call   get
     4ae:	85 c0                	test   eax,eax
     4b0:	74 2c                	je     main__branch_35
     4b2:	ba 00 01 00 00       	mov    edx,@obj3:main_cpp_variable_29                               ; fixup: num: 195, src obj: 1, src ofs: 0x4b3, dst obj: 3, dst ofs: 0x100
     4b7:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 194, src obj: 1, src ofs: 0x4b8, dst obj: 3, dst ofs: 0x32438
     4bc:	e8 0f d3 06 00       	call   get
     4c1:	ba fd 00 00 00       	mov    edx,@obj3:main_cpp_variable_28                               ; fixup: num: 193, src obj: 1, src ofs: 0x4c2, dst obj: 3, dst ofs: 0xfd
     4c6:	e8 2d 0b 07 00       	call   strupr_
     4cb:	e8 4d 0b 07 00       	call   strstr_
     4d0:	85 c0                	test   eax,eax
     4d2:	74 1e                	je     main__branch_36
     4d4:	30 e4                	xor    ah,ah
     4d6:	88 25 bc 0f 01 00    	mov    BYTE PTR ds:@obj3:gore,ah                                    ; fixup: num: 192, src obj: 1, src ofs: 0x4d8, dst obj: 3, dst ofs: 0x10fbc
     4dc:	eb 14                	jmp    main__branch_36
main__branch_35:
     4de:	bb 05 01 00 00       	mov    ebx,@obj3:main_cpp_variable_30                               ; fixup: num: 191, src obj: 1, src ofs: 0x4df, dst obj: 3, dst ofs: 0x105
     4e3:	ba 09 01 00 00       	mov    edx,@obj3:main_cpp_variable_31                               ; fixup: num: 190, src obj: 1, src ofs: 0x4e4, dst obj: 3, dst ofs: 0x109
     4e8:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 189, src obj: 1, src ofs: 0x4e9, dst obj: 3, dst ofs: 0x32438
     4ed:	e8 7e d3 06 00       	call   set
main__branch_36:
     4f2:	b2 01                	mov    dl,0x1
     4f4:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 95, src obj: 1, src ofs: 0x4f5, dst obj: 3, dst ofs: 0x32438
     4f9:	88 15 a6 0f 01 00    	mov    BYTE PTR ds:@obj3:use_quicktips,dl                           ; fixup: num: 94, src obj: 1, src ofs: 0x4fb, dst obj: 3, dst ofs: 0x10fa6
     4ff:	ba 0e 01 00 00       	mov    edx,@obj3:main_cpp_variable_32                               ; fixup: num: 93, src obj: 1, src ofs: 0x500, dst obj: 3, dst ofs: 0x10e
     504:	e8 c7 d2 06 00       	call   get
     509:	85 c0                	test   eax,eax
     50b:	74 2c                	je     main__branch_37
     50d:	ba 1d 01 00 00       	mov    edx,@obj3:main_cpp_variable_34                               ; fixup: num: 92, src obj: 1, src ofs: 0x50e, dst obj: 3, dst ofs: 0x11d
     512:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 91, src obj: 1, src ofs: 0x513, dst obj: 3, dst ofs: 0x32438
     517:	e8 b4 d2 06 00       	call   get
     51c:	ba 19 01 00 00       	mov    edx,@obj3:main_cpp_variable_33                               ; fixup: num: 90, src obj: 1, src ofs: 0x51d, dst obj: 3, dst ofs: 0x119
     521:	e8 d2 0a 07 00       	call   strupr_
     526:	e8 f2 0a 07 00       	call   strstr_
     52b:	85 c0                	test   eax,eax
     52d:	74 1e                	je     main__branch_38
     52f:	30 f6                	xor    dh,dh
     531:	88 35 a6 0f 01 00    	mov    BYTE PTR ds:@obj3:use_quicktips,dh                           ; fixup: num: 89, src obj: 1, src ofs: 0x533, dst obj: 3, dst ofs: 0x10fa6
     537:	eb 14                	jmp    main__branch_38
main__branch_37:
     539:	bb 28 01 00 00       	mov    ebx,@obj3:main_cpp_variable_35                               ; fixup: num: 88, src obj: 1, src ofs: 0x53a, dst obj: 3, dst ofs: 0x128
     53e:	ba 2b 01 00 00       	mov    edx,@obj3:main_cpp_variable_36                               ; fixup: num: 87, src obj: 1, src ofs: 0x53f, dst obj: 3, dst ofs: 0x12b
     543:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 86, src obj: 1, src ofs: 0x544, dst obj: 3, dst ofs: 0x32438
     548:	e8 23 d3 06 00       	call   set
main__branch_38:
     54d:	be 36 01 00 00       	mov    esi,@obj3:main_cpp_variable_37                               ; fixup: num: 85, src obj: 1, src ofs: 0x54e, dst obj: 3, dst ofs: 0x136
     552:	bf 5c 7e 01 00       	mov    edi,@obj3:parental_pw                                        ; fixup: num: 84, src obj: 1, src ofs: 0x553, dst obj: 3, dst ofs: 0x17e5c
     557:	57                   	push   edi
main__branch_39:
     558:	8a 06                	mov    al,BYTE PTR [esi]
     55a:	88 07                	mov    BYTE PTR [edi],al
     55c:	3c 00                	cmp    al,0x0
     55e:	74 10                	je     main__branch_40
     560:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
     563:	83 c6 02             	add    esi,0x2
     566:	88 47 01             	mov    BYTE PTR [edi+0x1],al
     569:	83 c7 02             	add    edi,0x2
     56c:	3c 00                	cmp    al,0x0
     56e:	75 e8                	jne    main__branch_39
main__branch_40:
     570:	5f                   	pop    edi
     571:	83 3d 38 7e 01 00 01 	cmp    DWORD PTR ds:@obj3:_argc,0x1                                 ; fixup: num: 83, src obj: 1, src ofs: 0x573, dst obj: 3, dst ofs: 0x17e38
     578:	74 6d                	je     main__branch_44
     57a:	a1 3c 7e 01 00       	mov    eax,ds:@obj3:_argv                                           ; fixup: num: 82, src obj: 1, src ofs: 0x57b, dst obj: 3, dst ofs: 0x17e3c
     57f:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
     582:	80 38 2e             	cmp    BYTE PTR [eax],0x2e
     585:	74 0d                	je     main__branch_42
main__branch_41:
     587:	8a 48 01             	mov    cl,BYTE PTR [eax+0x1]
     58a:	40                   	inc    eax
     58b:	84 c9                	test   cl,cl
     58d:	74 05                	je     main__branch_42
     58f:	80 38 2e             	cmp    BYTE PTR [eax],0x2e
     592:	75 f3                	jne    main__branch_41
main__branch_42:
     594:	b8 37 01 00 00       	mov    eax,@obj3:main_cpp_variable_38                               ; fixup: num: 81, src obj: 1, src ofs: 0x595, dst obj: 3, dst ofs: 0x137
     599:	e8 d1 0a 07 00       	call   puts_
     59e:	e8 dd c4 00 00       	call   XFILE_shutdown
     5a3:	31 c9                	xor    ecx,ecx
     5a5:	25 ff 00 00 00       	and    eax,0xff
     5aa:	75 0f                	jne    main__branch_43
     5ac:	bb 06 02 00 00       	mov    ebx,@obj3:main_cpp_variable_39                               ; fixup: num: 99, src obj: 1, src ofs: 0x5ad, dst obj: 3, dst ofs: 0x206
     5b1:	ba 7c 01 00 00       	mov    edx,0x17c
     5b6:	e8 75 7a 03 00       	call   _error_report
main__branch_43:
     5bb:	ba 03 00 00 00       	mov    edx,0x3
     5c0:	8d 9c 24 1c 06 00 00 	lea    ebx,[esp+0x61c]
     5c7:	b8 10 00 00 00       	mov    eax,0x10
     5cc:	66 89 94 24 1c 06 00 00 	mov    WORD PTR [esp+0x61c],dx
     5d4:	8d 94 24 1c 06 00 00 	lea    edx,[esp+0x61c]
     5db:	e8 bc 0a 07 00       	call   int386_
     5e0:	89 c8                	mov    eax,ecx
     5e2:	e8 d1 0a 07 00       	call   exit_
main__branch_44:
     5e7:	ba 37 02 00 00       	mov    edx,@obj3:main_cpp_variable_40                               ; fixup: num: 98, src obj: 1, src ofs: 0x5e8, dst obj: 3, dst ofs: 0x237
     5ec:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 97, src obj: 1, src ofs: 0x5ed, dst obj: 3, dst ofs: 0x32438
     5f1:	e8 da d1 06 00       	call   get
     5f6:	e8 c5 29 03 00       	call   cold
     5fb:	e8 70 d6 05 00       	call   application
     600:	e8 7b c4 00 00       	call   XFILE_shutdown
     605:	31 c9                	xor    ecx,ecx
     607:	25 ff 00 00 00       	and    eax,0xff
     60c:	75 0f                	jne    main__branch_45
     60e:	bb 06 02 00 00       	mov    ebx,@obj3:main_cpp_variable_39                               ; fixup: num: 96, src obj: 1, src ofs: 0x60f, dst obj: 3, dst ofs: 0x206
     613:	ba 7c 01 00 00       	mov    edx,0x17c
     618:	e8 13 7a 03 00       	call   _error_report
main__branch_45:
     61d:	bb 03 00 00 00       	mov    ebx,0x3
     622:	8d 94 24 00 06 00 00 	lea    edx,[esp+0x600]
     629:	b8 10 00 00 00       	mov    eax,0x10
     62e:	66 89 9c 24 00 06 00 00 	mov    WORD PTR [esp+0x600],bx
     636:	8d 9c 24 00 06 00 00 	lea    ebx,[esp+0x600]
     63d:	e8 5a 0a 07 00       	call   int386_
     642:	89 c8                	mov    eax,ecx
     644:	e8 6f 0a 07 00       	call   exit_
     649:	81 c4 3c 06 00 00    	add    esp,0x63c
     64f:	5d                   	pop    ebp
     650:	5f                   	pop    edi
     651:	5e                   	pop    esi
     652:	59                   	pop    ecx
     653:	c3                   	ret    
     654:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
     65a:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]

;-------------------------------------------------
;  Function 'initialize'                         -
;-------------------------------------------------
initialize:
     660:	53                   	push   ebx
     661:	51                   	push   ecx
     662:	52                   	push   edx
     663:	56                   	push   esi
     664:	57                   	push   edi
     665:	55                   	push   ebp
     666:	81 ec 20 06 00 00    	sub    esp,0x620
     66c:	e8 5f 81 03 00       	call   MSCDEX_installed
     671:	84 c0                	test   al,al
     673:	74 38                	je     initialize_branch_2
     675:	8d 84 24 1c 06 00 00 	lea    eax,[esp+0x61c]
     67c:	e8 8f 81 03 00       	call   MSCDEX_get_CDROM
     681:	0f bf 84 24 1c 06 00 00 	movsx  eax,WORD PTR [esp+0x61c]
     689:	83 f8 ff             	cmp    eax,0xffffffff
     68c:	75 11                	jne    initialize_branch_1
     68e:	bb 04 00 00 00       	mov    ebx,@obj3:main_cpp_variable_1                                ; fixup: num: 102, src obj: 1, src ofs: 0x68f, dst obj: 3, dst ofs: 0x4
     693:	ba 8e 00 00 00       	mov    edx,0x8e
     698:	31 c0                	xor    eax,eax
     69a:	e8 91 79 03 00       	call   _error_report
initialize_branch_1:
     69f:	e8 bc 81 03 00       	call   MSCDEX_get_version
     6a4:	89 84 24 1c 06 00 00 	mov    DWORD PTR [esp+0x61c],eax
     6ab:	eb 0d                	jmp    initialize_branch_3
initialize_branch_2:
     6ad:	68 17 00 00 00       	push   @obj3:main_cpp_variable_2                                    ; fixup: num: 101, src obj: 1, src ofs: 0x6ae, dst obj: 3, dst ofs: 0x17
     6b2:	e8 9b 04 07 00       	call   printf_
     6b7:	83 c4 04             	add    esp,0x4
initialize_branch_3:
     6ba:	b8 2c 00 00 00       	mov    eax,@obj3:main_cpp_variable_3                                ; fixup: num: 100, src obj: 1, src ofs: 0x6bb, dst obj: 3, dst ofs: 0x2c
     6bf:	e8 b0 04 07 00       	call   getenv_
     6c4:	89 c2                	mov    edx,eax
     6c6:	89 c3                	mov    ebx,eax
     6c8:	85 c0                	test   eax,eax
     6ca:	75 07                	jne    initialize_branch_4
     6cc:	30 c0                	xor    al,al
     6ce:	e9 97 00 00 00       	jmp    initialize_branch_9
initialize_branch_4:
     6d3:	8d bc 24 00 03 00 00 	lea    edi,[esp+0x300]
     6da:	89 c6                	mov    esi,eax
     6dc:	57                   	push   edi
initialize_branch_5:
     6dd:	8a 06                	mov    al,BYTE PTR [esi]
     6df:	88 07                	mov    BYTE PTR [edi],al
     6e1:	3c 00                	cmp    al,0x0
     6e3:	74 10                	je     initialize_branch_6
     6e5:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
     6e8:	83 c6 02             	add    esi,0x2
     6eb:	88 47 01             	mov    BYTE PTR [edi+0x1],al
     6ee:	83 c7 02             	add    edi,0x2
     6f1:	3c 00                	cmp    al,0x0
     6f3:	75 e8                	jne    initialize_branch_5
initialize_branch_6:
     6f5:	5f                   	pop    edi
     6f6:	89 d7                	mov    edi,edx
     6f8:	29 c9                	sub    ecx,ecx
     6fa:	49                   	dec    ecx
     6fb:	31 c0                	xor    eax,eax
     6fd:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
     6ff:	f7 d1                	not    ecx
     701:	49                   	dec    ecx
     702:	80 bc 0c ff 02 00 00 5c 	cmp    BYTE PTR [esp+ecx*1+0x2ff],0x5c
     70a:	75 15                	jne    initialize_branch_7
     70c:	89 d7                	mov    edi,edx
     70e:	30 d2                	xor    dl,dl
     710:	29 c9                	sub    ecx,ecx
     712:	49                   	dec    ecx
     713:	31 c0                	xor    eax,eax
     715:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
     717:	f7 d1                	not    ecx
     719:	49                   	dec    ecx
     71a:	88 94 0c ff 02 00 00 	mov    BYTE PTR [esp+ecx*1+0x2ff],dl
initialize_branch_7:
     721:	8d 84 24 00 03 00 00 	lea    eax,[esp+0x300]
     728:	50                   	push   eax
     729:	68 31 00 00 00       	push   @obj3:main_cpp_variable_4                                    ; fixup: num: 105, src obj: 1, src ofs: 0x72a, dst obj: 3, dst ofs: 0x31
     72e:	8d 84 24 08 05 00 00 	lea    eax,[esp+0x508]
     735:	50                   	push   eax
     736:	e8 a6 04 07 00       	call   sprintf_
     73b:	83 c4 0c             	add    esp,0xc
     73e:	ba 3d 00 00 00       	mov    edx,@obj3:main_cpp_variable_5                                ; fixup: num: 104, src obj: 1, src ofs: 0x73f, dst obj: 3, dst ofs: 0x3d
     743:	8d 84 24 00 05 00 00 	lea    eax,[esp+0x500]
     74a:	e8 59 06 07 00       	call   fopen_
     74f:	85 c0                	test   eax,eax
     751:	75 04                	jne    initialize_branch_8
     753:	30 c0                	xor    al,al
     755:	eb 13                	jmp    initialize_branch_9
initialize_branch_8:
     757:	e8 e2 06 07 00       	call   fclose_
     75c:	8d 84 24 00 05 00 00 	lea    eax,[esp+0x500]
     763:	e8 18 08 07 00       	call   unlink_
     768:	b0 01                	mov    al,0x1
initialize_branch_9:
     76a:	84 c0                	test   al,al
     76c:	0f 85 54 01 00 00    	jne    initialize_branch_21
     772:	b8 41 00 00 00       	mov    eax,@obj3:main_cpp_variable_6                                ; fixup: num: 103, src obj: 1, src ofs: 0x773, dst obj: 3, dst ofs: 0x41
     777:	e8 f8 03 07 00       	call   getenv_
     77c:	89 c2                	mov    edx,eax
     77e:	89 c3                	mov    ebx,eax
     780:	85 c0                	test   eax,eax
     782:	75 07                	jne    initialize_branch_10
     784:	30 c0                	xor    al,al
     786:	e9 87 00 00 00       	jmp    initialize_branch_15
initialize_branch_10:
     78b:	89 e7                	mov    edi,esp
     78d:	89 c6                	mov    esi,eax
     78f:	57                   	push   edi
initialize_branch_11:
     790:	8a 06                	mov    al,BYTE PTR [esi]
     792:	88 07                	mov    BYTE PTR [edi],al
     794:	3c 00                	cmp    al,0x0
     796:	74 10                	je     initialize_branch_12
     798:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
     79b:	83 c6 02             	add    esi,0x2
     79e:	88 47 01             	mov    BYTE PTR [edi+0x1],al
     7a1:	83 c7 02             	add    edi,0x2
     7a4:	3c 00                	cmp    al,0x0
     7a6:	75 e8                	jne    initialize_branch_11
initialize_branch_12:
     7a8:	5f                   	pop    edi
     7a9:	89 d7                	mov    edi,edx
     7ab:	29 c9                	sub    ecx,ecx
     7ad:	49                   	dec    ecx
     7ae:	31 c0                	xor    eax,eax
     7b0:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
     7b2:	f7 d1                	not    ecx
     7b4:	49                   	dec    ecx
     7b5:	80 7c 0c ff 5c       	cmp    BYTE PTR [esp+ecx*1-0x1],0x5c
     7ba:	75 12                	jne    initialize_branch_13
     7bc:	89 d7                	mov    edi,edx
     7be:	29 c9                	sub    ecx,ecx
     7c0:	49                   	dec    ecx
     7c1:	31 c0                	xor    eax,eax
     7c3:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
     7c5:	f7 d1                	not    ecx
     7c7:	49                   	dec    ecx
     7c8:	30 e4                	xor    ah,ah
     7ca:	88 64 0c ff          	mov    BYTE PTR [esp+ecx*1-0x1],ah
initialize_branch_13:
     7ce:	89 e0                	mov    eax,esp
     7d0:	50                   	push   eax
     7d1:	68 31 00 00 00       	push   @obj3:main_cpp_variable_4                                    ; fixup: num: 108, src obj: 1, src ofs: 0x7d2, dst obj: 3, dst ofs: 0x31
     7d6:	8d 84 24 08 01 00 00 	lea    eax,[esp+0x108]
     7dd:	50                   	push   eax
     7de:	e8 fe 03 07 00       	call   sprintf_
     7e3:	83 c4 0c             	add    esp,0xc
     7e6:	ba 3d 00 00 00       	mov    edx,@obj3:main_cpp_variable_5                                ; fixup: num: 107, src obj: 1, src ofs: 0x7e7, dst obj: 3, dst ofs: 0x3d
     7eb:	8d 84 24 00 01 00 00 	lea    eax,[esp+0x100]
     7f2:	e8 b1 05 07 00       	call   fopen_
     7f7:	85 c0                	test   eax,eax
     7f9:	75 04                	jne    initialize_branch_14
     7fb:	30 c0                	xor    al,al
     7fd:	eb 13                	jmp    initialize_branch_15
initialize_branch_14:
     7ff:	e8 3a 06 07 00       	call   fclose_
     804:	8d 84 24 00 01 00 00 	lea    eax,[esp+0x100]
     80b:	e8 70 07 07 00       	call   unlink_
     810:	b0 01                	mov    al,0x1
initialize_branch_15:
     812:	84 c0                	test   al,al
     814:	0f 85 ac 00 00 00    	jne    initialize_branch_21
     81a:	bb 45 00 00 00       	mov    ebx,@obj3:main_cpp_variable_7                                ; fixup: num: 106, src obj: 1, src ofs: 0x81b, dst obj: 3, dst ofs: 0x45
     81f:	85 db                	test   ebx,ebx
     821:	0f 84 97 00 00 00    	je     initialize_branch_20
     827:	8d bc 24 00 04 00 00 	lea    edi,[esp+0x400]
     82e:	89 de                	mov    esi,ebx
     830:	57                   	push   edi
initialize_branch_16:
     831:	8a 06                	mov    al,BYTE PTR [esi]
     833:	88 07                	mov    BYTE PTR [edi],al
     835:	3c 00                	cmp    al,0x0
     837:	74 10                	je     initialize_branch_17
     839:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
     83c:	83 c6 02             	add    esi,0x2
     83f:	88 47 01             	mov    BYTE PTR [edi+0x1],al
     842:	83 c7 02             	add    edi,0x2
     845:	3c 00                	cmp    al,0x0
     847:	75 e8                	jne    initialize_branch_16
initialize_branch_17:
     849:	5f                   	pop    edi
     84a:	89 df                	mov    edi,ebx
     84c:	29 c9                	sub    ecx,ecx
     84e:	49                   	dec    ecx
     84f:	31 c0                	xor    eax,eax
     851:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
     853:	f7 d1                	not    ecx
     855:	49                   	dec    ecx
     856:	80 bc 0c ff 03 00 00 5c 	cmp    BYTE PTR [esp+ecx*1+0x3ff],0x5c
     85e:	75 15                	jne    initialize_branch_18
     860:	89 df                	mov    edi,ebx
     862:	30 f6                	xor    dh,dh
     864:	29 c9                	sub    ecx,ecx
     866:	49                   	dec    ecx
     867:	31 c0                	xor    eax,eax
     869:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
     86b:	f7 d1                	not    ecx
     86d:	49                   	dec    ecx
     86e:	88 b4 0c ff 03 00 00 	mov    BYTE PTR [esp+ecx*1+0x3ff],dh
initialize_branch_18:
     875:	8d 84 24 00 04 00 00 	lea    eax,[esp+0x400]
     87c:	50                   	push   eax
     87d:	68 31 00 00 00       	push   @obj3:main_cpp_variable_4                                    ; fixup: num: 115, src obj: 1, src ofs: 0x87e, dst obj: 3, dst ofs: 0x31
     882:	8d 84 24 08 02 00 00 	lea    eax,[esp+0x208]
     889:	50                   	push   eax
     88a:	e8 52 03 07 00       	call   sprintf_
     88f:	83 c4 0c             	add    esp,0xc
     892:	ba 3d 00 00 00       	mov    edx,@obj3:main_cpp_variable_5                                ; fixup: num: 114, src obj: 1, src ofs: 0x893, dst obj: 3, dst ofs: 0x3d
     897:	8d 84 24 00 02 00 00 	lea    eax,[esp+0x200]
     89e:	e8 05 05 07 00       	call   fopen_
     8a3:	85 c0                	test   eax,eax
     8a5:	75 04                	jne    initialize_branch_19
     8a7:	30 c0                	xor    al,al
     8a9:	eb 13                	jmp    initialize_branch_20
initialize_branch_19:
     8ab:	e8 8e 05 07 00       	call   fclose_
     8b0:	8d 84 24 00 02 00 00 	lea    eax,[esp+0x200]
     8b7:	e8 c4 06 07 00       	call   unlink_
     8bc:	b0 01                	mov    al,0x1
initialize_branch_20:
     8be:	84 c0                	test   al,al
     8c0:	75 04                	jne    initialize_branch_21
     8c2:	31 c0                	xor    eax,eax
     8c4:	eb 07                	jmp    initialize_branch_22
initialize_branch_21:
     8c6:	89 d8                	mov    eax,ebx
     8c8:	e8 d2 06 07 00       	call   strdup_                                                      ; aliases: strdup_, _strdup_
initialize_branch_22:
     8cd:	a3 34 7e 01 00       	mov    ds:@obj3:temp_directory,eax                                  ; fixup: num: 113, src obj: 1, src ofs: 0x8ce, dst obj: 3, dst ofs: 0x17e34
     8d2:	e8 69 bd 00 00       	call   XFILE_init
     8d7:	25 ff 00 00 00       	and    eax,0xff
     8dc:	75 0f                	jne    initialize_branch_23
     8de:	bb 48 00 00 00       	mov    ebx,@obj3:main_cpp_variable_8                                ; fixup: num: 112, src obj: 1, src ofs: 0x8df, dst obj: 3, dst ofs: 0x48
     8e3:	ba a4 00 00 00       	mov    edx,0xa4
     8e8:	e8 43 77 03 00       	call   _error_report
initialize_branch_23:
     8ed:	ba 77 00 00 00       	mov    edx,@obj3:main_cpp_variable_9                                ; fixup: num: 111, src obj: 1, src ofs: 0x8ee, dst obj: 3, dst ofs: 0x77
     8f2:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 110, src obj: 1, src ofs: 0x8f3, dst obj: 3, dst ofs: 0x32438
     8f7:	e8 04 cf 06 00       	call   getn
     8fc:	a3 ac 0f 01 00       	mov    ds:@obj3:fx_volume,eax                                       ; fixup: num: 109, src obj: 1, src ofs: 0x8fd, dst obj: 3, dst ofs: 0x10fac
     901:	83 f8 09             	cmp    eax,0x9
     904:	7e 1c                	jle    initialize_branch_24
     906:	bb 09 00 00 00       	mov    ebx,0x9
     90b:	ba 81 00 00 00       	mov    edx,@obj3:main_cpp_variable_10                               ; fixup: num: 132, src obj: 1, src ofs: 0x90c, dst obj: 3, dst ofs: 0x81
     910:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 131, src obj: 1, src ofs: 0x911, dst obj: 3, dst ofs: 0x32438
     915:	89 1d ac 0f 01 00    	mov    DWORD PTR ds:@obj3:fx_volume,ebx                             ; fixup: num: 130, src obj: 1, src ofs: 0x917, dst obj: 3, dst ofs: 0x10fac
     91b:	e8 60 d2 06 00       	call   set_mod_92
     920:	eb 23                	jmp    initialize_branch_25
initialize_branch_24:
     922:	83 f8 ff             	cmp    eax,0xffffffff
     925:	75 1e                	jne    initialize_branch_25
     927:	bb 09 00 00 00       	mov    ebx,0x9
     92c:	ba 8b 00 00 00       	mov    edx,@obj3:main_cpp_variable_11                               ; fixup: num: 129, src obj: 1, src ofs: 0x92d, dst obj: 3, dst ofs: 0x8b
     931:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 128, src obj: 1, src ofs: 0x932, dst obj: 3, dst ofs: 0x32438
     936:	e8 45 d2 06 00       	call   set_mod_92
     93b:	c7 05 ac 0f 01 00 09 00 00 00 	mov    DWORD PTR ds:@obj3:fx_volume,0x9                    ; fixup: num: 127, src obj: 1, src ofs: 0x93d, dst obj: 3, dst ofs: 0x10fac
initialize_branch_25:
     945:	ba 95 00 00 00       	mov    edx,@obj3:main_cpp_variable_12                               ; fixup: num: 126, src obj: 1, src ofs: 0x946, dst obj: 3, dst ofs: 0x95
     94a:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 125, src obj: 1, src ofs: 0x94b, dst obj: 3, dst ofs: 0x32438
     94f:	e8 ac ce 06 00       	call   getn
     954:	a3 b0 0f 01 00       	mov    ds:@obj3:music_volume,eax                                    ; fixup: num: 124, src obj: 1, src ofs: 0x955, dst obj: 3, dst ofs: 0x10fb0
     959:	83 f8 09             	cmp    eax,0x9
     95c:	7e 1e                	jle    initialize_branch_26
     95e:	be 09 00 00 00       	mov    esi,0x9
     963:	ba a2 00 00 00       	mov    edx,@obj3:main_cpp_variable_13                               ; fixup: num: 123, src obj: 1, src ofs: 0x964, dst obj: 3, dst ofs: 0xa2
     968:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 122, src obj: 1, src ofs: 0x969, dst obj: 3, dst ofs: 0x32438
     96d:	89 f3                	mov    ebx,esi
     96f:	89 35 b0 0f 01 00    	mov    DWORD PTR ds:@obj3:music_volume,esi                          ; fixup: num: 121, src obj: 1, src ofs: 0x971, dst obj: 3, dst ofs: 0x10fb0
     975:	e8 06 d2 06 00       	call   set_mod_92
     97a:	eb 24                	jmp    initialize_branch_27
initialize_branch_26:
     97c:	83 f8 ff             	cmp    eax,0xffffffff
     97f:	75 1f                	jne    initialize_branch_27
     981:	bb 04 00 00 00       	mov    ebx,0x4
     986:	ba af 00 00 00       	mov    edx,@obj3:main_cpp_variable_14                               ; fixup: num: 120, src obj: 1, src ofs: 0x987, dst obj: 3, dst ofs: 0xaf
     98b:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 119, src obj: 1, src ofs: 0x98c, dst obj: 3, dst ofs: 0x32438
     990:	b9 04 00 00 00       	mov    ecx,0x4
     995:	e8 e6 d1 06 00       	call   set_mod_92
     99a:	89 0d b0 0f 01 00    	mov    DWORD PTR ds:@obj3:music_volume,ecx                          ; fixup: num: 118, src obj: 1, src ofs: 0x99c, dst obj: 3, dst ofs: 0x10fb0
initialize_branch_27:
     9a0:	83 3d b0 0f 01 00 00 	cmp    DWORD PTR ds:@obj3:music_volume,0x0                          ; fixup: num: 117, src obj: 1, src ofs: 0x9a2, dst obj: 3, dst ofs: 0x10fb0
     9a7:	75 0a                	jne    initialize_branch_28
     9a9:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 116, src obj: 1, src ofs: 0x9aa, dst obj: 3, dst ofs: 0x1a1d4
     9ae:	e8 6d 9c 00 00       	call   pause
initialize_branch_28:
     9b3:	ba bc 00 00 00       	mov    edx,@obj3:main_cpp_variable_15                               ; fixup: num: 22, src obj: 1, src ofs: 0x9b4, dst obj: 3, dst ofs: 0xbc
     9b8:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 21, src obj: 1, src ofs: 0x9b9, dst obj: 3, dst ofs: 0x32438
     9bd:	e8 3e ce 06 00       	call   getn
     9c2:	a3 54 7e 01 00       	mov    ds:@obj3:gamma_correction,eax                                ; fixup: num: 20, src obj: 1, src ofs: 0x9c3, dst obj: 3, dst ofs: 0x17e54
     9c7:	83 f8 09             	cmp    eax,0x9
     9ca:	7e 1d                	jle    initialize_branch_29
     9cc:	b8 09 00 00 00       	mov    eax,0x9
     9d1:	ba c2 00 00 00       	mov    edx,@obj3:main_cpp_variable_16                               ; fixup: num: 19, src obj: 1, src ofs: 0x9d2, dst obj: 3, dst ofs: 0xc2
     9d6:	a3 54 7e 01 00       	mov    ds:@obj3:gamma_correction,eax                                ; fixup: num: 18, src obj: 1, src ofs: 0x9d7, dst obj: 3, dst ofs: 0x17e54
     9db:	89 c3                	mov    ebx,eax
     9dd:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 17, src obj: 1, src ofs: 0x9de, dst obj: 3, dst ofs: 0x32438
     9e2:	e8 99 d1 06 00       	call   set_mod_92
     9e7:	eb 1e                	jmp    initialize_branch_30
initialize_branch_29:
     9e9:	83 f8 ff             	cmp    eax,0xffffffff
     9ec:	75 19                	jne    initialize_branch_30
     9ee:	ba c8 00 00 00       	mov    edx,@obj3:main_cpp_variable_17                               ; fixup: num: 16, src obj: 1, src ofs: 0x9ef, dst obj: 3, dst ofs: 0xc8
     9f3:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 15, src obj: 1, src ofs: 0x9f4, dst obj: 3, dst ofs: 0x32438
     9f8:	31 db                	xor    ebx,ebx
     9fa:	31 ed                	xor    ebp,ebp
     9fc:	e8 7f d1 06 00       	call   set_mod_92
     a01:	89 2d 54 7e 01 00    	mov    DWORD PTR ds:@obj3:gamma_correction,ebp                      ; fixup: num: 14, src obj: 1, src ofs: 0xa03, dst obj: 3, dst ofs: 0x17e54
initialize_branch_30:
     a07:	e8 94 1c 01 00       	call   set_pal_gamma
     a0c:	b3 01                	mov    bl,0x1
     a0e:	ba ce 00 00 00       	mov    edx,@obj3:main_cpp_variable_18                               ; fixup: num: 13, src obj: 1, src ofs: 0xa0f, dst obj: 3, dst ofs: 0xce
     a13:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 12, src obj: 1, src ofs: 0xa14, dst obj: 3, dst ofs: 0x32438
     a18:	88 1d 58 7e 01 00    	mov    BYTE PTR ds:@obj3:text_dialog,bl                             ; fixup: num: 11, src obj: 1, src ofs: 0xa1a, dst obj: 3, dst ofs: 0x17e58
     a1e:	e8 ad cd 06 00       	call   get
     a23:	85 c0                	test   eax,eax
     a25:	0f 84 81 00 00 00    	je     initialize_branch_33
     a2b:	ba d6 00 00 00       	mov    edx,@obj3:main_cpp_variable_20                               ; fixup: num: 10, src obj: 1, src ofs: 0xa2c, dst obj: 3, dst ofs: 0xd6
     a30:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 9, src obj: 1, src ofs: 0xa31, dst obj: 3, dst ofs: 0x32438
     a35:	e8 96 cd 06 00       	call   get
     a3a:	ba d3 00 00 00       	mov    edx,@obj3:main_cpp_variable_19                               ; fixup: num: 8, src obj: 1, src ofs: 0xa3b, dst obj: 3, dst ofs: 0xd3
     a3f:	e8 b4 05 07 00       	call   strupr_
     a44:	e8 d4 05 07 00       	call   strstr_
     a49:	85 c0                	test   eax,eax
     a4b:	74 0a                	je     initialize_branch_31
     a4d:	30 ed                	xor    ch,ch
     a4f:	88 2d 58 7e 01 00    	mov    BYTE PTR ds:@obj3:text_dialog,ch                             ; fixup: num: 7, src obj: 1, src ofs: 0xa51, dst obj: 3, dst ofs: 0x17e58
     a55:	eb 69                	jmp    initialize_branch_34
initialize_branch_31:
     a57:	ba df 00 00 00       	mov    edx,@obj3:main_cpp_variable_22                               ; fixup: num: 134, src obj: 1, src ofs: 0xa58, dst obj: 3, dst ofs: 0xdf
     a5c:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 133, src obj: 1, src ofs: 0xa5d, dst obj: 3, dst ofs: 0x32438
     a61:	e8 6a cd 06 00       	call   get
     a66:	ba db 00 00 00       	mov    edx,@obj3:main_cpp_variable_21                               ; fixup: num: 40, src obj: 1, src ofs: 0xa67, dst obj: 3, dst ofs: 0xdb
     a6b:	e8 88 05 07 00       	call   strupr_
     a70:	e8 a8 05 07 00       	call   strstr_
     a75:	85 c0                	test   eax,eax
     a77:	74 08                	je     initialize_branch_32
     a79:	88 1d 58 7e 01 00    	mov    BYTE PTR ds:@obj3:text_dialog,bl                             ; fixup: num: 39, src obj: 1, src ofs: 0xa7b, dst obj: 3, dst ofs: 0x17e58
     a7f:	eb 3f                	jmp    initialize_branch_34
initialize_branch_32:
     a81:	ba ea 00 00 00       	mov    edx,@obj3:main_cpp_variable_24                               ; fixup: num: 38, src obj: 1, src ofs: 0xa82, dst obj: 3, dst ofs: 0xea
     a86:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 37, src obj: 1, src ofs: 0xa87, dst obj: 3, dst ofs: 0x32438
     a8b:	e8 40 cd 06 00       	call   get
     a90:	ba e4 00 00 00       	mov    edx,@obj3:main_cpp_variable_23                               ; fixup: num: 36, src obj: 1, src ofs: 0xa91, dst obj: 3, dst ofs: 0xe4
     a95:	e8 5e 05 07 00       	call   strupr_
     a9a:	e8 7e 05 07 00       	call   strstr_
     a9f:	85 c0                	test   eax,eax
     aa1:	74 1d                	je     initialize_branch_34
     aa3:	c6 05 58 7e 01 00 02 	mov    BYTE PTR ds:@obj3:text_dialog,0x2                            ; fixup: num: 35, src obj: 1, src ofs: 0xaa5, dst obj: 3, dst ofs: 0x17e58
     aaa:	eb 14                	jmp    initialize_branch_34
initialize_branch_33:
     aac:	bb ef 00 00 00       	mov    ebx,@obj3:main_cpp_variable_25                               ; fixup: num: 34, src obj: 1, src ofs: 0xaad, dst obj: 3, dst ofs: 0xef
     ab1:	ba f3 00 00 00       	mov    edx,@obj3:main_cpp_variable_26                               ; fixup: num: 33, src obj: 1, src ofs: 0xab2, dst obj: 3, dst ofs: 0xf3
     ab6:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 32, src obj: 1, src ofs: 0xab7, dst obj: 3, dst ofs: 0x32438
     abb:	e8 b0 cd 06 00       	call   set
initialize_branch_34:
     ac0:	b0 01                	mov    al,0x1
     ac2:	ba f8 00 00 00       	mov    edx,@obj3:main_cpp_variable_27                               ; fixup: num: 31, src obj: 1, src ofs: 0xac3, dst obj: 3, dst ofs: 0xf8
     ac7:	a2 bc 0f 01 00       	mov    ds:@obj3:gore,al                                             ; fixup: num: 30, src obj: 1, src ofs: 0xac8, dst obj: 3, dst ofs: 0x10fbc
     acc:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 29, src obj: 1, src ofs: 0xacd, dst obj: 3, dst ofs: 0x32438
     ad1:	e8 fa cc 06 00       	call   get
     ad6:	85 c0                	test   eax,eax
     ad8:	74 2c                	je     initialize_branch_35
     ada:	ba 00 01 00 00       	mov    edx,@obj3:main_cpp_variable_29                               ; fixup: num: 28, src obj: 1, src ofs: 0xadb, dst obj: 3, dst ofs: 0x100
     adf:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 27, src obj: 1, src ofs: 0xae0, dst obj: 3, dst ofs: 0x32438
     ae4:	e8 e7 cc 06 00       	call   get
     ae9:	ba fd 00 00 00       	mov    edx,@obj3:main_cpp_variable_28                               ; fixup: num: 26, src obj: 1, src ofs: 0xaea, dst obj: 3, dst ofs: 0xfd
     aee:	e8 05 05 07 00       	call   strupr_
     af3:	e8 25 05 07 00       	call   strstr_
     af8:	85 c0                	test   eax,eax
     afa:	74 1e                	je     initialize_branch_36
     afc:	30 e4                	xor    ah,ah
     afe:	88 25 bc 0f 01 00    	mov    BYTE PTR ds:@obj3:gore,ah                                    ; fixup: num: 25, src obj: 1, src ofs: 0xb00, dst obj: 3, dst ofs: 0x10fbc
     b04:	eb 14                	jmp    initialize_branch_36
initialize_branch_35:
     b06:	bb 05 01 00 00       	mov    ebx,@obj3:main_cpp_variable_30                               ; fixup: num: 24, src obj: 1, src ofs: 0xb07, dst obj: 3, dst ofs: 0x105
     b0b:	ba 09 01 00 00       	mov    edx,@obj3:main_cpp_variable_31                               ; fixup: num: 23, src obj: 1, src ofs: 0xb0c, dst obj: 3, dst ofs: 0x109
     b10:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 55, src obj: 1, src ofs: 0xb11, dst obj: 3, dst ofs: 0x32438
     b15:	e8 56 cd 06 00       	call   set
initialize_branch_36:
     b1a:	b2 01                	mov    dl,0x1
     b1c:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 54, src obj: 1, src ofs: 0xb1d, dst obj: 3, dst ofs: 0x32438
     b21:	88 15 a6 0f 01 00    	mov    BYTE PTR ds:@obj3:use_quicktips,dl                           ; fixup: num: 53, src obj: 1, src ofs: 0xb23, dst obj: 3, dst ofs: 0x10fa6
     b27:	ba 0e 01 00 00       	mov    edx,@obj3:main_cpp_variable_32                               ; fixup: num: 52, src obj: 1, src ofs: 0xb28, dst obj: 3, dst ofs: 0x10e
     b2c:	e8 9f cc 06 00       	call   get
     b31:	85 c0                	test   eax,eax
     b33:	74 2c                	je     initialize_branch_37
     b35:	ba 1d 01 00 00       	mov    edx,@obj3:main_cpp_variable_34                               ; fixup: num: 51, src obj: 1, src ofs: 0xb36, dst obj: 3, dst ofs: 0x11d
     b3a:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 50, src obj: 1, src ofs: 0xb3b, dst obj: 3, dst ofs: 0x32438
     b3f:	e8 8c cc 06 00       	call   get
     b44:	ba 19 01 00 00       	mov    edx,@obj3:main_cpp_variable_33                               ; fixup: num: 49, src obj: 1, src ofs: 0xb45, dst obj: 3, dst ofs: 0x119
     b49:	e8 aa 04 07 00       	call   strupr_
     b4e:	e8 ca 04 07 00       	call   strstr_
     b53:	85 c0                	test   eax,eax
     b55:	74 1e                	je     initialize_branch_38
     b57:	30 f6                	xor    dh,dh
     b59:	88 35 a6 0f 01 00    	mov    BYTE PTR ds:@obj3:use_quicktips,dh                           ; fixup: num: 48, src obj: 1, src ofs: 0xb5b, dst obj: 3, dst ofs: 0x10fa6
     b5f:	eb 14                	jmp    initialize_branch_38
initialize_branch_37:
     b61:	bb 28 01 00 00       	mov    ebx,@obj3:main_cpp_variable_35                               ; fixup: num: 47, src obj: 1, src ofs: 0xb62, dst obj: 3, dst ofs: 0x128
     b66:	ba 2b 01 00 00       	mov    edx,@obj3:main_cpp_variable_36                               ; fixup: num: 46, src obj: 1, src ofs: 0xb67, dst obj: 3, dst ofs: 0x12b
     b6b:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 45, src obj: 1, src ofs: 0xb6c, dst obj: 3, dst ofs: 0x32438
     b70:	e8 fb cc 06 00       	call   set
initialize_branch_38:
     b75:	be 36 01 00 00       	mov    esi,@obj3:main_cpp_variable_37                               ; fixup: num: 44, src obj: 1, src ofs: 0xb76, dst obj: 3, dst ofs: 0x136
     b7a:	bf 5c 7e 01 00       	mov    edi,@obj3:parental_pw                                        ; fixup: num: 43, src obj: 1, src ofs: 0xb7b, dst obj: 3, dst ofs: 0x17e5c
     b7f:	57                   	push   edi
initialize_branch_39:
     b80:	8a 06                	mov    al,BYTE PTR [esi]
     b82:	88 07                	mov    BYTE PTR [edi],al
     b84:	3c 00                	cmp    al,0x0
     b86:	74 10                	je     initialize_branch_40
     b88:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
     b8b:	83 c6 02             	add    esi,0x2
     b8e:	88 47 01             	mov    BYTE PTR [edi+0x1],al
     b91:	83 c7 02             	add    edi,0x2
     b94:	3c 00                	cmp    al,0x0
     b96:	75 e8                	jne    initialize_branch_39
initialize_branch_40:
     b98:	5f                   	pop    edi
     b99:	83 3d 38 7e 01 00 01 	cmp    DWORD PTR ds:@obj3:_argc,0x1                                 ; fixup: num: 42, src obj: 1, src ofs: 0xb9b, dst obj: 3, dst ofs: 0x17e38
     ba0:	74 6d                	je     initialize_branch_44
     ba2:	a1 3c 7e 01 00       	mov    eax,ds:@obj3:_argv                                           ; fixup: num: 41, src obj: 1, src ofs: 0xba3, dst obj: 3, dst ofs: 0x17e3c
     ba7:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
     baa:	80 38 2e             	cmp    BYTE PTR [eax],0x2e
     bad:	74 0d                	je     initialize_branch_42
initialize_branch_41:
     baf:	8a 48 01             	mov    cl,BYTE PTR [eax+0x1]
     bb2:	40                   	inc    eax
     bb3:	84 c9                	test   cl,cl
     bb5:	74 05                	je     initialize_branch_42
     bb7:	80 38 2e             	cmp    BYTE PTR [eax],0x2e
     bba:	75 f3                	jne    initialize_branch_41
initialize_branch_42:
     bbc:	b8 37 01 00 00       	mov    eax,@obj3:main_cpp_variable_38                               ; fixup: num: 60, src obj: 1, src ofs: 0xbbd, dst obj: 3, dst ofs: 0x137
     bc1:	e8 a9 04 07 00       	call   puts_
     bc6:	e8 b5 be 00 00       	call   XFILE_shutdown
     bcb:	31 c9                	xor    ecx,ecx
     bcd:	25 ff 00 00 00       	and    eax,0xff
     bd2:	75 0f                	jne    initialize_branch_43
     bd4:	bb 06 02 00 00       	mov    ebx,@obj3:main_cpp_variable_39                               ; fixup: num: 59, src obj: 1, src ofs: 0xbd5, dst obj: 3, dst ofs: 0x206
     bd9:	ba 7c 01 00 00       	mov    edx,0x17c
     bde:	e8 4d 74 03 00       	call   _error_report
initialize_branch_43:
     be3:	ba 03 00 00 00       	mov    edx,0x3
     be8:	8d 9c 24 00 06 00 00 	lea    ebx,[esp+0x600]
     bef:	b8 10 00 00 00       	mov    eax,0x10
     bf4:	66 89 94 24 00 06 00 00 	mov    WORD PTR [esp+0x600],dx
     bfc:	8d 94 24 00 06 00 00 	lea    edx,[esp+0x600]
     c03:	e8 94 04 07 00       	call   int386_
     c08:	89 c8                	mov    eax,ecx
     c0a:	e8 a9 04 07 00       	call   exit_
initialize_branch_44:
     c0f:	ba 37 02 00 00       	mov    edx,@obj3:main_cpp_variable_40                               ; fixup: num: 58, src obj: 1, src ofs: 0xc10, dst obj: 3, dst ofs: 0x237
     c14:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 57, src obj: 1, src ofs: 0xc15, dst obj: 3, dst ofs: 0x32438
     c19:	e8 b2 cb 06 00       	call   get
     c1e:	e8 9d 23 03 00       	call   cold
     c23:	81 c4 20 06 00 00    	add    esp,0x620
     c29:	5d                   	pop    ebp
     c2a:	5f                   	pop    edi
     c2b:	5e                   	pop    esi
     c2c:	5a                   	pop    edx
     c2d:	59                   	pop    ecx
     c2e:	5b                   	pop    ebx
     c2f:	c3                   	ret    

;-------------------------------------------------
;  Function 'shut_down'                          -
;-------------------------------------------------
shut_down:
     c30:	53                   	push   ebx
     c31:	51                   	push   ecx
     c32:	52                   	push   edx
     c33:	83 ec 1c             	sub    esp,0x1c
     c36:	89 c1                	mov    ecx,eax
     c38:	31 d2                	xor    edx,edx
     c3a:	e8 41 be 00 00       	call   XFILE_shutdown
     c3f:	88 c2                	mov    dl,al
     c41:	85 d2                	test   edx,edx
     c43:	75 11                	jne    shut_down_branch_1
     c45:	bb 06 02 00 00       	mov    ebx,@obj3:main_cpp_variable_39                               ; fixup: num: 56, src obj: 1, src ofs: 0xc46, dst obj: 3, dst ofs: 0x206
     c4a:	ba 7c 01 00 00       	mov    edx,0x17c
     c4f:	31 c0                	xor    eax,eax
     c51:	e8 da 73 03 00       	call   _error_report
shut_down_branch_1:
     c56:	ba 03 00 00 00       	mov    edx,0x3
     c5b:	89 e3                	mov    ebx,esp
     c5d:	b8 10 00 00 00       	mov    eax,0x10
     c62:	66 89 14 24          	mov    WORD PTR [esp],dx
     c66:	89 e2                	mov    edx,esp
     c68:	e8 2f 04 07 00       	call   int386_
     c6d:	89 c8                	mov    eax,ecx
     c6f:	e8 44 04 07 00       	call   exit_
     c74:	83 c4 1c             	add    esp,0x1c
     c77:	5a                   	pop    edx
     c78:	59                   	pop    ecx
     c79:	5b                   	pop    ebx
     c7a:	c3                   	ret    
     c7b:	8d 40 00             	lea    eax,[eax+0x0]
     c7e:	8b c9                	mov    ecx,ecx

;-------------------------------------------------
;  Function 'parse_command_line'                 -
;-------------------------------------------------
parse_command_line:
     c80:	53                   	push   ebx
     c81:	51                   	push   ecx
     c82:	52                   	push   edx
     c83:	83 ec 1c             	sub    esp,0x1c
     c86:	83 3d 38 7e 01 00 01 	cmp    DWORD PTR ds:@obj3:_argc,0x1                                 ; fixup: num: 65, src obj: 1, src ofs: 0xc88, dst obj: 3, dst ofs: 0x17e38
     c8d:	74 5f                	je     parse_command_line_branch_4
     c8f:	a1 3c 7e 01 00       	mov    eax,ds:@obj3:_argv                                           ; fixup: num: 64, src obj: 1, src ofs: 0xc90, dst obj: 3, dst ofs: 0x17e3c
     c94:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
     c97:	80 38 2e             	cmp    BYTE PTR [eax],0x2e
     c9a:	74 0d                	je     parse_command_line_branch_2
parse_command_line_branch_1:
     c9c:	8a 58 01             	mov    bl,BYTE PTR [eax+0x1]
     c9f:	40                   	inc    eax
     ca0:	84 db                	test   bl,bl
     ca2:	74 05                	je     parse_command_line_branch_2
     ca4:	80 38 2e             	cmp    BYTE PTR [eax],0x2e
     ca7:	75 f3                	jne    parse_command_line_branch_1
parse_command_line_branch_2:
     ca9:	b8 37 01 00 00       	mov    eax,@obj3:main_cpp_variable_38                               ; fixup: num: 63, src obj: 1, src ofs: 0xcaa, dst obj: 3, dst ofs: 0x137
     cae:	e8 bc 03 07 00       	call   puts_
     cb3:	e8 c8 bd 00 00       	call   XFILE_shutdown
     cb8:	31 c9                	xor    ecx,ecx
     cba:	25 ff 00 00 00       	and    eax,0xff
     cbf:	75 0f                	jne    parse_command_line_branch_3
     cc1:	bb 06 02 00 00       	mov    ebx,@obj3:main_cpp_variable_39                               ; fixup: num: 62, src obj: 1, src ofs: 0xcc2, dst obj: 3, dst ofs: 0x206
     cc6:	ba 7c 01 00 00       	mov    edx,0x17c
     ccb:	e8 60 73 03 00       	call   _error_report
parse_command_line_branch_3:
     cd0:	ba 03 00 00 00       	mov    edx,0x3
     cd5:	89 e3                	mov    ebx,esp
     cd7:	b8 10 00 00 00       	mov    eax,0x10
     cdc:	66 89 14 24          	mov    WORD PTR [esp],dx
     ce0:	89 e2                	mov    edx,esp
     ce2:	e8 b5 03 07 00       	call   int386_
     ce7:	89 c8                	mov    eax,ecx
     ce9:	e8 ca 03 07 00       	call   exit_
parse_command_line_branch_4:
     cee:	83 c4 1c             	add    esp,0x1c
     cf1:	5a                   	pop    edx
     cf2:	59                   	pop    ecx
     cf3:	5b                   	pop    ebx
     cf4:	c3                   	ret    
     cf5:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
     cfb:	8d 52 00             	lea    edx,[edx+0x0]
     cfe:	8b db                	mov    ebx,ebx

;-------------------------------------------------
;  Function 'get_temp_directory'                 -
;-------------------------------------------------
get_temp_directory:
     d00:	53                   	push   ebx
     d01:	51                   	push   ecx
     d02:	52                   	push   edx
     d03:	56                   	push   esi
     d04:	57                   	push   edi
     d05:	81 ec 00 06 00 00    	sub    esp,0x600
     d0b:	b8 2c 00 00 00       	mov    eax,@obj3:main_cpp_variable_3                                ; fixup: num: 61, src obj: 1, src ofs: 0xd0c, dst obj: 3, dst ofs: 0x2c
     d10:	e8 5f fe 06 00       	call   getenv_
     d15:	89 c2                	mov    edx,eax
     d17:	89 c3                	mov    ebx,eax
     d19:	85 c0                	test   eax,eax
     d1b:	75 07                	jne    get_temp_directory_branch_1
     d1d:	30 c0                	xor    al,al
     d1f:	e9 87 00 00 00       	jmp    get_temp_directory_branch_6
get_temp_directory_branch_1:
     d24:	89 e7                	mov    edi,esp
     d26:	89 c6                	mov    esi,eax
     d28:	57                   	push   edi
get_temp_directory_branch_2:
     d29:	8a 06                	mov    al,BYTE PTR [esi]
     d2b:	88 07                	mov    BYTE PTR [edi],al
     d2d:	3c 00                	cmp    al,0x0
     d2f:	74 10                	je     get_temp_directory_branch_3
     d31:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
     d34:	83 c6 02             	add    esi,0x2
     d37:	88 47 01             	mov    BYTE PTR [edi+0x1],al
     d3a:	83 c7 02             	add    edi,0x2
     d3d:	3c 00                	cmp    al,0x0
     d3f:	75 e8                	jne    get_temp_directory_branch_2
get_temp_directory_branch_3:
     d41:	5f                   	pop    edi
     d42:	89 d7                	mov    edi,edx
     d44:	29 c9                	sub    ecx,ecx
     d46:	49                   	dec    ecx
     d47:	31 c0                	xor    eax,eax
     d49:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
     d4b:	f7 d1                	not    ecx
     d4d:	49                   	dec    ecx
     d4e:	80 7c 0c ff 5c       	cmp    BYTE PTR [esp+ecx*1-0x1],0x5c
     d53:	75 12                	jne    get_temp_directory_branch_4
     d55:	89 d7                	mov    edi,edx
     d57:	30 d2                	xor    dl,dl
     d59:	29 c9                	sub    ecx,ecx
     d5b:	49                   	dec    ecx
     d5c:	31 c0                	xor    eax,eax
     d5e:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
     d60:	f7 d1                	not    ecx
     d62:	49                   	dec    ecx
     d63:	88 54 0c ff          	mov    BYTE PTR [esp+ecx*1-0x1],dl
get_temp_directory_branch_4:
     d67:	89 e0                	mov    eax,esp
     d69:	50                   	push   eax
     d6a:	68 31 00 00 00       	push   @obj3:main_cpp_variable_4                                    ; fixup: num: 68, src obj: 1, src ofs: 0xd6b, dst obj: 3, dst ofs: 0x31
     d6f:	8d 84 24 08 01 00 00 	lea    eax,[esp+0x108]
     d76:	50                   	push   eax
     d77:	e8 65 fe 06 00       	call   sprintf_
     d7c:	83 c4 0c             	add    esp,0xc
     d7f:	ba 3d 00 00 00       	mov    edx,@obj3:main_cpp_variable_5                                ; fixup: num: 67, src obj: 1, src ofs: 0xd80, dst obj: 3, dst ofs: 0x3d
     d84:	8d 84 24 00 01 00 00 	lea    eax,[esp+0x100]
     d8b:	e8 18 00 07 00       	call   fopen_
     d90:	85 c0                	test   eax,eax
     d92:	75 04                	jne    get_temp_directory_branch_5
     d94:	30 c0                	xor    al,al
     d96:	eb 13                	jmp    get_temp_directory_branch_6
get_temp_directory_branch_5:
     d98:	e8 a1 00 07 00       	call   fclose_
     d9d:	8d 84 24 00 01 00 00 	lea    eax,[esp+0x100]
     da4:	e8 d7 01 07 00       	call   unlink_
     da9:	b0 01                	mov    al,0x1
get_temp_directory_branch_6:
     dab:	84 c0                	test   al,al
     dad:	0f 85 64 01 00 00    	jne    get_temp_directory_branch_18
     db3:	b8 41 00 00 00       	mov    eax,@obj3:main_cpp_variable_6                                ; fixup: num: 66, src obj: 1, src ofs: 0xdb4, dst obj: 3, dst ofs: 0x41
     db8:	e8 b7 fd 06 00       	call   getenv_
     dbd:	89 c2                	mov    edx,eax
     dbf:	89 c3                	mov    ebx,eax
     dc1:	85 c0                	test   eax,eax
     dc3:	75 07                	jne    get_temp_directory_branch_7
     dc5:	30 c0                	xor    al,al
     dc7:	e9 97 00 00 00       	jmp    get_temp_directory_branch_12
get_temp_directory_branch_7:
     dcc:	8d bc 24 00 04 00 00 	lea    edi,[esp+0x400]
     dd3:	89 c6                	mov    esi,eax
     dd5:	57                   	push   edi
get_temp_directory_branch_8:
     dd6:	8a 06                	mov    al,BYTE PTR [esi]
     dd8:	88 07                	mov    BYTE PTR [edi],al
     dda:	3c 00                	cmp    al,0x0
     ddc:	74 10                	je     get_temp_directory_branch_9
     dde:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
     de1:	83 c6 02             	add    esi,0x2
     de4:	88 47 01             	mov    BYTE PTR [edi+0x1],al
     de7:	83 c7 02             	add    edi,0x2
     dea:	3c 00                	cmp    al,0x0
     dec:	75 e8                	jne    get_temp_directory_branch_8
get_temp_directory_branch_9:
     dee:	5f                   	pop    edi
     def:	89 d7                	mov    edi,edx
     df1:	29 c9                	sub    ecx,ecx
     df3:	49                   	dec    ecx
     df4:	31 c0                	xor    eax,eax
     df6:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
     df8:	f7 d1                	not    ecx
     dfa:	49                   	dec    ecx
     dfb:	80 bc 0c ff 03 00 00 5c 	cmp    BYTE PTR [esp+ecx*1+0x3ff],0x5c
     e03:	75 15                	jne    get_temp_directory_branch_10
     e05:	89 d7                	mov    edi,edx
     e07:	29 c9                	sub    ecx,ecx
     e09:	49                   	dec    ecx
     e0a:	31 c0                	xor    eax,eax
     e0c:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
     e0e:	f7 d1                	not    ecx
     e10:	49                   	dec    ecx
     e11:	30 e4                	xor    ah,ah
     e13:	88 a4 0c ff 03 00 00 	mov    BYTE PTR [esp+ecx*1+0x3ff],ah
get_temp_directory_branch_10:
     e1a:	8d 84 24 00 04 00 00 	lea    eax,[esp+0x400]
     e21:	50                   	push   eax
     e22:	68 31 00 00 00       	push   @obj3:main_cpp_variable_4                                    ; fixup: num: 1, src obj: 1, src ofs: 0xe23, dst obj: 3, dst ofs: 0x31
     e27:	8d 84 24 08 02 00 00 	lea    eax,[esp+0x208]
     e2e:	50                   	push   eax
     e2f:	e8 ad fd 06 00       	call   sprintf_
     e34:	83 c4 0c             	add    esp,0xc
     e37:	ba 3d 00 00 00       	mov    edx,@obj3:main_cpp_variable_5                                ; fixup: num: 70, src obj: 1, src ofs: 0xe38, dst obj: 3, dst ofs: 0x3d
     e3c:	8d 84 24 00 02 00 00 	lea    eax,[esp+0x200]
     e43:	e8 60 ff 06 00       	call   fopen_
     e48:	85 c0                	test   eax,eax
     e4a:	75 04                	jne    get_temp_directory_branch_11
     e4c:	30 c0                	xor    al,al
     e4e:	eb 13                	jmp    get_temp_directory_branch_12
get_temp_directory_branch_11:
     e50:	e8 e9 ff 06 00       	call   fclose_
     e55:	8d 84 24 00 02 00 00 	lea    eax,[esp+0x200]
     e5c:	e8 1f 01 07 00       	call   unlink_
     e61:	b0 01                	mov    al,0x1
get_temp_directory_branch_12:
     e63:	84 c0                	test   al,al
     e65:	0f 85 ac 00 00 00    	jne    get_temp_directory_branch_18
     e6b:	bb 45 00 00 00       	mov    ebx,@obj3:main_cpp_variable_7                                ; fixup: num: 69, src obj: 1, src ofs: 0xe6c, dst obj: 3, dst ofs: 0x45
     e70:	85 db                	test   ebx,ebx
     e72:	0f 84 97 00 00 00    	je     get_temp_directory_branch_17
     e78:	8d bc 24 00 03 00 00 	lea    edi,[esp+0x300]
     e7f:	89 de                	mov    esi,ebx
     e81:	57                   	push   edi
get_temp_directory_branch_13:
     e82:	8a 06                	mov    al,BYTE PTR [esi]
     e84:	88 07                	mov    BYTE PTR [edi],al
     e86:	3c 00                	cmp    al,0x0
     e88:	74 10                	je     get_temp_directory_branch_14
     e8a:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
     e8d:	83 c6 02             	add    esi,0x2
     e90:	88 47 01             	mov    BYTE PTR [edi+0x1],al
     e93:	83 c7 02             	add    edi,0x2
     e96:	3c 00                	cmp    al,0x0
     e98:	75 e8                	jne    get_temp_directory_branch_13
get_temp_directory_branch_14:
     e9a:	5f                   	pop    edi
     e9b:	89 df                	mov    edi,ebx
     e9d:	29 c9                	sub    ecx,ecx
     e9f:	49                   	dec    ecx
     ea0:	31 c0                	xor    eax,eax
     ea2:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
     ea4:	f7 d1                	not    ecx
     ea6:	49                   	dec    ecx
     ea7:	80 bc 0c ff 02 00 00 5c 	cmp    BYTE PTR [esp+ecx*1+0x2ff],0x5c
     eaf:	75 15                	jne    get_temp_directory_branch_15
     eb1:	89 df                	mov    edi,ebx
     eb3:	30 f6                	xor    dh,dh
     eb5:	29 c9                	sub    ecx,ecx
     eb7:	49                   	dec    ecx
     eb8:	31 c0                	xor    eax,eax
     eba:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
     ebc:	f7 d1                	not    ecx
     ebe:	49                   	dec    ecx
     ebf:	88 b4 0c ff 02 00 00 	mov    BYTE PTR [esp+ecx*1+0x2ff],dh
get_temp_directory_branch_15:
     ec6:	8d 84 24 00 03 00 00 	lea    eax,[esp+0x300]
     ecd:	50                   	push   eax
     ece:	68 31 00 00 00       	push   @obj3:main_cpp_variable_4                                    ; fixup: num: 3, src obj: 1, src ofs: 0xecf, dst obj: 3, dst ofs: 0x31
     ed3:	8d 84 24 08 05 00 00 	lea    eax,[esp+0x508]
     eda:	50                   	push   eax
     edb:	e8 01 fd 06 00       	call   sprintf_
     ee0:	83 c4 0c             	add    esp,0xc
     ee3:	ba 3d 00 00 00       	mov    edx,@obj3:main_cpp_variable_5                                ; fixup: num: 2, src obj: 1, src ofs: 0xee4, dst obj: 3, dst ofs: 0x3d
     ee8:	8d 84 24 00 05 00 00 	lea    eax,[esp+0x500]
     eef:	e8 b4 fe 06 00       	call   fopen_
     ef4:	85 c0                	test   eax,eax
     ef6:	75 04                	jne    get_temp_directory_branch_16
     ef8:	30 c0                	xor    al,al
     efa:	eb 13                	jmp    get_temp_directory_branch_17
get_temp_directory_branch_16:
     efc:	e8 3d ff 06 00       	call   fclose_
     f01:	8d 84 24 00 05 00 00 	lea    eax,[esp+0x500]
     f08:	e8 73 00 07 00       	call   unlink_
     f0d:	b0 01                	mov    al,0x1
get_temp_directory_branch_17:
     f0f:	84 c0                	test   al,al
     f11:	75 04                	jne    get_temp_directory_branch_18
     f13:	31 c0                	xor    eax,eax
     f15:	eb 07                	jmp    get_temp_directory_branch_19
get_temp_directory_branch_18:
     f17:	89 d8                	mov    eax,ebx
     f19:	e8 81 00 07 00       	call   strdup_                                                      ; aliases: strdup_, _strdup_
get_temp_directory_branch_19:
     f1e:	81 c4 00 06 00 00    	add    esp,0x600
     f24:	5f                   	pop    edi
     f25:	5e                   	pop    esi
     f26:	5a                   	pop    edx
     f27:	59                   	pop    ecx
     f28:	5b                   	pop    ebx
     f29:	c3                   	ret    
     f2a:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'verify_path'                        -
;-------------------------------------------------
verify_path:
     f30:	51                   	push   ecx
     f31:	52                   	push   edx
     f32:	56                   	push   esi
     f33:	57                   	push   edi
     f34:	81 ec 00 02 00 00    	sub    esp,0x200
     f3a:	89 c2                	mov    edx,eax
     f3c:	85 c0                	test   eax,eax
     f3e:	75 07                	jne    verify_path_branch_1
     f40:	30 c0                	xor    al,al
     f42:	e9 90 00 00 00       	jmp    verify_path_branch_6
verify_path_branch_1:
     f47:	89 e7                	mov    edi,esp
     f49:	89 c6                	mov    esi,eax
     f4b:	57                   	push   edi
verify_path_branch_2:
     f4c:	8a 06                	mov    al,BYTE PTR [esi]
     f4e:	88 07                	mov    BYTE PTR [edi],al
     f50:	3c 00                	cmp    al,0x0
     f52:	74 10                	je     verify_path_branch_3
     f54:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
     f57:	83 c6 02             	add    esi,0x2
     f5a:	88 47 01             	mov    BYTE PTR [edi+0x1],al
     f5d:	83 c7 02             	add    edi,0x2
     f60:	3c 00                	cmp    al,0x0
     f62:	75 e8                	jne    verify_path_branch_2
verify_path_branch_3:
     f64:	5f                   	pop    edi
     f65:	89 d7                	mov    edi,edx
     f67:	29 c9                	sub    ecx,ecx
     f69:	49                   	dec    ecx
     f6a:	31 c0                	xor    eax,eax
     f6c:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
     f6e:	f7 d1                	not    ecx
     f70:	49                   	dec    ecx
     f71:	80 7c 0c ff 5c       	cmp    BYTE PTR [esp+ecx*1-0x1],0x5c
     f76:	75 12                	jne    verify_path_branch_4
     f78:	89 d7                	mov    edi,edx
     f7a:	30 d2                	xor    dl,dl
     f7c:	29 c9                	sub    ecx,ecx
     f7e:	49                   	dec    ecx
     f7f:	31 c0                	xor    eax,eax
     f81:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
     f83:	f7 d1                	not    ecx
     f85:	49                   	dec    ecx
     f86:	88 54 0c ff          	mov    BYTE PTR [esp+ecx*1-0x1],dl
verify_path_branch_4:
     f8a:	89 e0                	mov    eax,esp
     f8c:	50                   	push   eax
     f8d:	68 31 00 00 00       	push   @obj3:main_cpp_variable_4                                    ; fixup: num: 5, src obj: 1, src ofs: 0xf8e, dst obj: 3, dst ofs: 0x31
     f92:	8d 84 24 08 01 00 00 	lea    eax,[esp+0x108]
     f99:	50                   	push   eax
     f9a:	e8 42 fc 06 00       	call   sprintf_
     f9f:	83 c4 0c             	add    esp,0xc
     fa2:	ba 3d 00 00 00       	mov    edx,@obj3:main_cpp_variable_5                                ; fixup: num: 4, src obj: 1, src ofs: 0xfa3, dst obj: 3, dst ofs: 0x3d
     fa7:	8d 84 24 00 01 00 00 	lea    eax,[esp+0x100]
     fae:	e8 f5 fd 06 00       	call   fopen_
     fb3:	85 c0                	test   eax,eax
     fb5:	75 0d                	jne    verify_path_branch_5
     fb7:	30 c0                	xor    al,al
     fb9:	81 c4 00 02 00 00    	add    esp,0x200
     fbf:	5f                   	pop    edi
     fc0:	5e                   	pop    esi
     fc1:	5a                   	pop    edx
     fc2:	59                   	pop    ecx
     fc3:	c3                   	ret    
verify_path_branch_5:
     fc4:	e8 75 fe 06 00       	call   fclose_
     fc9:	8d 84 24 00 01 00 00 	lea    eax,[esp+0x100]
     fd0:	e8 ab ff 06 00       	call   unlink_
     fd5:	b0 01                	mov    al,0x1
verify_path_branch_6:
     fd7:	81 c4 00 02 00 00    	add    esp,0x200
     fdd:	5f                   	pop    edi
     fde:	5e                   	pop    esi
     fdf:	5a                   	pop    edx
     fe0:	59                   	pop    ecx
     fe1:	c3                   	ret    
     fe2:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
     fe8:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
     fee:	8b c0                	mov    eax,eax

;-------------------------------------------------
;  Function 'bogus'                              -
;-------------------------------------------------
bogus:
     ff0:	b8 3c 02 00 00       	mov    eax,@obj3:main_cpp_variable_41                               ; fixup: num: 6, src obj: 1, src ofs: 0xff1, dst obj: 3, dst ofs: 0x23c
     ff5:	e9 75 00 07 00       	jmp    puts_
;-------------------------------------------------
;  Bad code 1 (zero after jmp):                  -
;-------------------------------------------------
;    ff0:	b8 3c 02 00 00       	mov    eax,0x23c
;    ff5:	e9 75 00 07 00       	jmp    0x7106f
;    ffa:	00 00                	add    BYTE PTR [eax],al
;    ffc:	00 00                	add    BYTE PTR [eax],al
;-------------------------------------------------
;  Padding data (6 bytes):                       -
;-------------------------------------------------
     ffa:	00 00 00 00 00 00    	db     6 dup(0x00)
;-------------------------------------------------
;  End of bad code 1                             -
;-------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 0 (D:\SOURCE\main.cpp)                                        -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 0: D:\SOURCE\main.cpp                                                -
;                                                                              -
;-------------------------------------------------------------------------------
main_cpp_variable_1:
       4:	4e 6f 20 43 44 52 4f 4d 20 64 65 74 65 63 74 65 64 21 00 	db     "No CDROM detected!",0x00
main_cpp_variable_2:
      17:	4d 53 43 44 45 58 20 6e 6f 74 20 64 65 74 65 63 74 65 64 0a 00 	db     "MSCDEX not detected",0x0a,0x00
main_cpp_variable_3:
      2c:	54 45 4d 50 00       	db     "TEMP",0x00
main_cpp_variable_4:
      31:	25 73 5c 74 65 6d 70 2e 66 69 6c 00 	db     "%s\temp.fil",0x00
main_cpp_variable_5:
      3d:	77 62 2b 00          	db     "wb+",0x00
main_cpp_variable_6:
      41:	54 4d 50 00          	db     "TMP",0x00
main_cpp_variable_7:
      45:	2e                   	db     0x2e                                                         ; dec:  46, chr: '.'
      46:	5c                   	db     0x5c                                                         ; dec:  92, chr: '\'
      47:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
main_cpp_variable_8:
      48:	43 6f 75 6c 64 20 6e 6f 74 20 69 6e 69 74 69 61 6c 69 7a 65 20 74 68 65 20 65 78 74 65 6e 64 65 64 20 66 69 6c 65 20 73 79 73 74 65 6d 2e 00 	db     "Could not initialize the extended file system.",0x00
main_cpp_variable_9:
      77:	46 58 5f 56 4f 4c 55 4d 45 00 	db     "FX_VOLUME",0x00
main_cpp_variable_10:
      81:	46 58 5f 56 4f 4c 55 4d 45 00 	db     "FX_VOLUME",0x00
main_cpp_variable_11:
      8b:	46 58 5f 56 4f 4c 55 4d 45 00 	db     "FX_VOLUME",0x00
main_cpp_variable_12:
      95:	4d 55 53 49 43 5f 56 4f 4c 55 4d 45 00 	db     "MUSIC_VOLUME",0x00
main_cpp_variable_13:
      a2:	4d 55 53 49 43 5f 56 4f 4c 55 4d 45 00 	db     "MUSIC_VOLUME",0x00
main_cpp_variable_14:
      af:	4d 55 53 49 43 5f 56 4f 4c 55 4d 45 00 	db     "MUSIC_VOLUME",0x00
main_cpp_variable_15:
      bc:	47 41 4d 4d 41 00    	db     "GAMMA",0x00
main_cpp_variable_16:
      c2:	47 41 4d 4d 41 00    	db     "GAMMA",0x00
main_cpp_variable_17:
      c8:	47 41 4d 4d 41 00    	db     "GAMMA",0x00
main_cpp_variable_18:
      ce:	54 45 58 54 00       	db     "TEXT",0x00
main_cpp_variable_19:
      d3:	4e                   	db     0x4e                                                         ; dec:  78, chr: 'N'
      d4:	4f                   	db     0x4f                                                         ; dec:  79, chr: 'O'
      d5:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
main_cpp_variable_20:
      d6:	54 45 58 54 00       	db     "TEXT",0x00
main_cpp_variable_21:
      db:	59 45 53 00          	db     "YES",0x00
main_cpp_variable_22:
      df:	54 45 58 54 00       	db     "TEXT",0x00
main_cpp_variable_23:
      e4:	43 4c 49 43 4b 00    	db     "CLICK",0x00
main_cpp_variable_24:
      ea:	54 45 58 54 00       	db     "TEXT",0x00
main_cpp_variable_25:
      ef:	59 45 53 00          	db     "YES",0x00
main_cpp_variable_26:
      f3:	54 45 58 54 00       	db     "TEXT",0x00
main_cpp_variable_27:
      f8:	47 4f 52 45 00       	db     "GORE",0x00
main_cpp_variable_28:
      fd:	4e                   	db     0x4e                                                         ; dec:  78, chr: 'N'
      fe:	4f                   	db     0x4f                                                         ; dec:  79, chr: 'O'
      ff:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
main_cpp_variable_29:
     100:	47 4f 52 45 00       	db     "GORE",0x00
main_cpp_variable_30:
     105:	59 45 53 00          	db     "YES",0x00
main_cpp_variable_31:
     109:	47 4f 52 45 00       	db     "GORE",0x00
main_cpp_variable_32:
     10e:	51 55 49 43 4b 5f 54 49 50 53 00 	db     "QUICK_TIPS",0x00
main_cpp_variable_33:
     119:	4f 46 46 00          	db     "OFF",0x00
main_cpp_variable_34:
     11d:	51 55 49 43 4b 5f 54 49 50 53 00 	db     "QUICK_TIPS",0x00
main_cpp_variable_35:
     128:	4f                   	db     0x4f                                                         ; dec:  79, chr: 'O'
     129:	4e                   	db     0x4e                                                         ; dec:  78, chr: 'N'
     12a:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
main_cpp_variable_36:
     12b:	51 55 49 43 4b 5f 54 49 50 53 00 	db     "QUICK_TIPS",0x00
main_cpp_variable_37:
     136:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
main_cpp_variable_38:
     137:	5a 2e 45 58 45 20 76 31 2e 31 20 2d 20 62 79 3a 20 4e 69 63 6b 20 53 68 61 66 66 6e 65 72 0a 55 53 41 47 45 3a 20 5a 2e 45 58 45 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 2d 20 52 75 6e 73 20 5a 2e 0a 20 20 20 20 20 20 20 5a 2e 45 58 45 20 5b 2f 3f 7c 48 45 4c 50 5d 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 2d 20 54 68 69 73 20 68 65 6c 70 20 73 63 72 65 65 6e 0a 20 20 20 20 20 20 20 5a 2e 45 58 45 20 78 42 45 4e 43 48 4d 41 52 4b 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 2d 20 72 75 6e 73 20 62 65 6e 63 68 6d 61 72 6b 73 20 6f 6e 20 74 68 65 20 73 79 73 74 65 6d 0a 00 	db     "Z.EXE v1.1 - by: Nick Shaffner",0x0a,"USAGE: Z.EXE                          - Runs Z.",0x0a,"       Z.EXE [/?|HELP]                - This help screen",0x0a,"       Z.EXE xBENCHMARK               - runs benchmarks on the system",0x0a,0x00
main_cpp_variable_39:
     206:	43 6f 75 6c 64 20 6e 6f 74 20 75 6e 69 6e 69 74 69 61 6c 69 7a 65 20 74 68 65 20 65 78 74 65 6e 64 65 64 20 66 69 6c 65 20 73 79 73 74 65 6d 2e 00 	db     "Could not uninitialize the extended file system.",0x00
main_cpp_variable_40:
     237:	54 4f 57 4e 00       	db     "TOWN",0x00
main_cpp_variable_41:
     23c:	54 68 69 73 20 62 69 74 65 73 21 21 21 21 21 00 	db     "This bites!!!!!",0x00

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 0 (D:\SOURCE\main.cpp)                                        -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 0: D:\SOURCE\main.cpp                                                -
;                                                                              -
;-------------------------------------------------------------------------------
future_vision_library_id_string:
   10f38:	54 68 65 20 46 75 74 75 72 65 20 56 69 73 69 6f 6e 20 4c 69 62 72 61 72 79 20 76 31 2e 32 20 43 6f 70 79 72 69 67 68 74 20 46 75 74 75 72 65 20 56 69 73 69 6f 6e 61 72 79 20 49 6e 63 2e 20 31 31 2f 32 30 2f 39 34 00 	db     "The Future Vision Library v1.2 Copyright Future Visionary Inc. 11/20/94",0x00
future_vision_library_alternate_id_string:
   10f80:	6b 6a 6b 0d 39 38 4d 39 74 30 32 6b 3b 67 42 0a 31 69 6f 32 79 35 38 38 79 0d 32 6b 4a 68 71 77 38 52 37 2e 0a 00 	db     "kjk",0x0d,"98M9t02k;gB",0x0a,"1io2y588y",0x0d,"2kJhqw8R7.",0x0a,0x00
use_quicktips:                                                                                      ; access size: BYTE
   10fa6:	01                   	db     0x01                                                         ; dec:   1, chr: ''
play_intro:                                                                                         ; access size: BYTE
   10fa7:	01                   	db     0x01                                                         ; dec:   1, chr: ''
current_cd:                                                                                         ; access size: DWORD
   10fa8:	01 00 00 00          	dd     0x00000001
fx_volume:                                                                                          ; access size: DWORD
   10fac:	09 00 00 00          	dd     0x00000009
music_volume:                                                                                       ; access sizes: DWORD, WORD
   10fb0:	06 00                	dw     0x0006
   10fb2:	00 00                	dw     0x0000
pal_gamma:                                                                                          ; access sizes: QWORD, DWORD
   10fb4:	00 00 00 00          	dd     0x00000000
pal_gamma_variable_1:                                                                               ; access size: DWORD
   10fb8:	00 00 f0 3f          	dd     0x3ff00000
gore:                                                                                               ; access size: BYTE
   10fbc:	01                   	db     0x01                                                         ; dec:   1, chr: ''
   10fbd:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
volume_table:                                                                                       ; access sizes: WORDS, WORD
   10fbe:	00 00                	dw     0x0000
   10fc0:	38 0e                	dw     0x0e38
   10fc2:	70 1c                	dw     0x1c70
   10fc4:	a8 2a                	dw     0x2aa8
   10fc6:	e0 38                	dw     0x38e0
   10fc8:	18 47                	dw     0x4718
   10fca:	50 55                	dw     0x5550
   10fcc:	88 63                	dw     0x6388
   10fce:	c0 71                	dw     0x71c0
volume_table_variable_1:                                                                            ; access size: WORD
   10fd0:	ff 7f                	dw     0x7fff
   10fd2:	00 00                	dw     0x0000

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 0 (D:\SOURCE\main.cpp)                                        -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 0: D:\SOURCE\main.cpp                                                -
;                                                                              -
;-------------------------------------------------------------------------------
temp_directory:                                                                                     ; access size: DWORD
   17e34:	00 00 00 00          	dd     0x00000000
_argc:                                                                                              ; access size: DWORD
   17e38:	00 00 00 00          	dd     0x00000000
_argv:                                                                                              ; access size: DWORD
   17e3c:	00 00 00 00          	dd     0x00000000
_envp:                                                                                              ; access size: DWORD
   17e40:	00 00 00 00          	dd     0x00000000
current_time:                                                                                       ; access size: DWORD
   17e44:	00 00 00 00          	dd     0x00000000
script_check:                                                                                       ; access size: BYTE
   17e48:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
restart_harvest_loop:                                                                               ; access size: BYTE
   17e49:	00 00 00             	db     3 dup(0x00)                                                  ; dec:   0, chr: '\0'
starting_new_game:                                                                                  ; access size: DWORD
   17e4c:	00 00 00 00          	dd     0x00000000
language:
   17e50:	00 00 00 00          	db     4 dup(0x00)                                                  ; dec:   0, chr: '\0'
gamma_correction:                                                                                   ; access size: DWORD
   17e54:	00 00 00 00          	dd     0x00000000
text_dialog:                                                                                        ; access size: BYTE
   17e58:	00 00 00 00          	db     4 dup(0x00)                                                  ; dec:   0, chr: '\0'
parental_pw:
   17e5c:	00 00 00 00 00 00 .. 	db     12 dup(0x00)                                                 ; dec:   0, chr: '\0'
start_for_playback_dialog:
   17e68:	00 00 00 00          	db     4 dup(0x00)                                                  ; dec:   0, chr: '\0'
playback_dialog:
   17e6c:	00 00 00 00          	db     4 dup(0x00)                                                  ; dec:   0, chr: '\0'

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 0 (D:\SOURCE\main.cpp)                                        -
;                                                                              -
;-------------------------------------------------------------------------------