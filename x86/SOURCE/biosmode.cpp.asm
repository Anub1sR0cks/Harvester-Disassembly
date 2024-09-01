;-------------------------------------------------------------------------------
;                                                                              -
;  Module 1: D:\SOURCE\biosmode.cpp                                            -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function 'detect_13'                          -
;-------------------------------------------------
detect_13:
    1000:	b0 01                	mov    al,0x1
    1002:	c3                   	ret    
    1003:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    1009:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
    100f:	90                   	nop

;-------------------------------------------------
;  Function 'initialize_13'                      -
;-------------------------------------------------
initialize_13:
    1010:	b8 13 00 00 00       	mov    eax,0x13
    1015:	e8 86 3d 00 00       	call   set_super_VGA_video_mode
    101a:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'deinitialize_13'                    -
;-------------------------------------------------
deinitialize_13:
    1020:	b0 01                	mov    al,0x1
    1022:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    1028:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
    102e:	8b c0                	mov    eax,eax

;-------------------------------------------------
;  Function 'set_visable_page_13'                -
;-------------------------------------------------
set_visable_page_13:

;-------------------------------------------------
;  Function 'set_active_page_13'                 -
;-------------------------------------------------
set_active_page_13:
    1030:	c3                   	ret    
    1031:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    1037:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
    103d:	8d 40 00             	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'set_pixel_13'                       -
;-------------------------------------------------
set_pixel_13:
    1040:	51                   	push   ecx
    1041:	89 d1                	mov    ecx,edx
    1043:	c1 e1 08             	shl    ecx,0x8
    1046:	c1 e2 06             	shl    edx,0x6
    1049:	01 ca                	add    edx,ecx
    104b:	88 9c 02 00 00 0a 00 	mov    BYTE PTR [edx+eax*1+0xa0000],bl
    1052:	59                   	pop    ecx
    1053:	c3                   	ret    
    1054:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    105a:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]

;-------------------------------------------------
;  Function 'get_pixel_13'                       -
;-------------------------------------------------
get_pixel_13:
    1060:	53                   	push   ebx
    1061:	89 d3                	mov    ebx,edx
    1063:	c1 e3 08             	shl    ebx,0x8
    1066:	c1 e2 06             	shl    edx,0x6
    1069:	01 da                	add    edx,ebx
    106b:	8a 84 02 00 00 0a 00 	mov    al,BYTE PTR [edx+eax*1+0xa0000]
    1072:	25 ff 00 00 00       	and    eax,0xff
    1077:	5b                   	pop    ebx
    1078:	c3                   	ret    
    1079:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    107f:	90                   	nop

;-------------------------------------------------
;  Function 'line_13'                            -
;-------------------------------------------------
line_13:
    1080:	56                   	push   esi
    1081:	57                   	push   edi
    1082:	39 d8                	cmp    eax,ebx
    1084:	77 37                	ja     line_13_branch_1
    1086:	3d 40 01 00 00       	cmp    eax,0x140
    108b:	73 30                	jae    line_13_branch_1
    108d:	81 fb 40 01 00 00    	cmp    ebx,0x140
    1093:	73 28                	jae    line_13_branch_1
    1095:	39 ca                	cmp    edx,ecx
    1097:	75 24                	jne    line_13_branch_1
    1099:	89 d7                	mov    edi,edx
    109b:	89 d6                	mov    esi,edx
    109d:	29 c3                	sub    ebx,eax
    109f:	31 c9                	xor    ecx,ecx
    10a1:	c1 e7 08             	shl    edi,0x8
    10a4:	c1 e6 06             	shl    esi,0x6
    10a7:	8d 97 00 00 0a 00    	lea    edx,[edi+0xa0000]
    10ad:	8a 4c 24 0c          	mov    cl,BYTE PTR [esp+0xc]
    10b1:	01 f2                	add    edx,esi
    10b3:	43                   	inc    ebx
    10b4:	01 d0                	add    eax,edx
    10b6:	89 ca                	mov    edx,ecx
    10b8:	e8 13 03 07 00       	call   memset_
line_13_branch_1:
    10bd:	5f                   	pop    edi
    10be:	5e                   	pop    esi
    10bf:	c2 04 00             	ret    0x4
    10c2:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    10c8:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
    10ce:	8b c0                	mov    eax,eax

;-------------------------------------------------
;  Function 'box_13'                             -
;-------------------------------------------------
box_13:
    10d0:	56                   	push   esi
    10d1:	57                   	push   edi
    10d2:	55                   	push   ebp
    10d3:	89 cd                	mov    ebp,ecx
    10d5:	29 c3                	sub    ebx,eax
    10d7:	8d 7b 01             	lea    edi,[ebx+0x1]
    10da:	89 d3                	mov    ebx,edx
    10dc:	89 d1                	mov    ecx,edx
    10de:	c1 e3 08             	shl    ebx,0x8
    10e1:	c1 e1 06             	shl    ecx,0x6
    10e4:	81 c3 00 00 0a 00    	add    ebx,0xa0000
    10ea:	01 cb                	add    ebx,ecx
    10ec:	89 d6                	mov    esi,edx
    10ee:	8d 0c 03             	lea    ecx,[ebx+eax*1]
    10f1:	39 ea                	cmp    edx,ebp
    10f3:	77 1a                	ja     box_13_branch_2
box_13_branch_1:
    10f5:	89 fb                	mov    ebx,edi
    10f7:	31 d2                	xor    edx,edx
    10f9:	89 c8                	mov    eax,ecx
    10fb:	8a 54 24 10          	mov    dl,BYTE PTR [esp+0x10]
    10ff:	46                   	inc    esi
    1100:	e8 cb 02 07 00       	call   memset_
    1105:	81 c1 40 01 00 00    	add    ecx,0x140
    110b:	39 ee                	cmp    esi,ebp
    110d:	76 e6                	jbe    box_13_branch_1
box_13_branch_2:
    110f:	5d                   	pop    ebp
    1110:	5f                   	pop    edi
    1111:	5e                   	pop    esi
    1112:	c2 04 00             	ret    0x4
    1115:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    111b:	8d 52 00             	lea    edx,[edx+0x0]
    111e:	8b db                	mov    ebx,ebx

;-------------------------------------------------
;  Function 'blit_13'                            -
;-------------------------------------------------
blit_13:
    1120:	56                   	push   esi
    1121:	57                   	push   edi
    1122:	55                   	push   ebp
    1123:	83 ec 0c             	sub    esp,0xc
    1126:	8b 74 24 20          	mov    esi,DWORD PTR [esp+0x20]
    112a:	89 5c 24 04          	mov    DWORD PTR [esp+0x4],ebx
    112e:	89 4c 24 08          	mov    DWORD PTR [esp+0x8],ecx
    1132:	89 d1                	mov    ecx,edx
    1134:	c1 e1 08             	shl    ecx,0x8
    1137:	c1 e2 06             	shl    edx,0x6
    113a:	81 c1 00 00 0a 00    	add    ecx,0xa0000
    1140:	89 f3                	mov    ebx,esi
    1142:	01 ca                	add    edx,ecx
    1144:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
    1148:	01 c2                	add    edx,eax
    114a:	81 f9 40 01 00 00    	cmp    ecx,0x140
    1150:	75 0b                	jne    blit_13_branch_1
    1152:	85 c0                	test   eax,eax
    1154:	75 07                	jne    blit_13_branch_1
    1156:	83 7c 24 1c 00       	cmp    DWORD PTR [esp+0x1c],0x0
    115b:	74 45                	je     blit_13_branch_3
blit_13_branch_1:
    115d:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
    1161:	31 ed                	xor    ebp,ebp
    1163:	85 c0                	test   eax,eax
    1165:	76 5d                	jbe    blit_13_branch_4
    1167:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
    116b:	8b 7c 24 1c          	mov    edi,DWORD PTR [esp+0x1c]
    116f:	01 f8                	add    eax,edi
    1171:	89 04 24             	mov    DWORD PTR [esp],eax
blit_13_branch_2:
    1174:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
    1178:	89 de                	mov    esi,ebx
    117a:	89 d7                	mov    edi,edx
    117c:	57                   	push   edi
    117d:	89 c8                	mov    eax,ecx
    117f:	c1 e9 02             	shr    ecx,0x2
    1182:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
    1184:	8a c8                	mov    cl,al
    1186:	80 e1 03             	and    cl,0x3
    1189:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
    118b:	5f                   	pop    edi
    118c:	45                   	inc    ebp
    118d:	8b 0c 24             	mov    ecx,DWORD PTR [esp]
    1190:	8b 74 24 08          	mov    esi,DWORD PTR [esp+0x8]
    1194:	81 c2 40 01 00 00    	add    edx,0x140
    119a:	01 cb                	add    ebx,ecx
    119c:	39 f5                	cmp    ebp,esi
    119e:	73 24                	jae    blit_13_branch_4
    11a0:	eb d2                	jmp    blit_13_branch_2
blit_13_branch_3:
    11a2:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
    11a6:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
    11aa:	c1 e0 08             	shl    eax,0x8
    11ad:	c1 e1 06             	shl    ecx,0x6
    11b0:	89 d7                	mov    edi,edx
    11b2:	01 c1                	add    ecx,eax
    11b4:	57                   	push   edi
    11b5:	89 c8                	mov    eax,ecx
    11b7:	c1 e9 02             	shr    ecx,0x2
    11ba:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
    11bc:	8a c8                	mov    cl,al
    11be:	80 e1 03             	and    cl,0x3
    11c1:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
    11c3:	5f                   	pop    edi
blit_13_branch_4:
    11c4:	83 c4 0c             	add    esp,0xc
    11c7:	5d                   	pop    ebp
    11c8:	5f                   	pop    edi
    11c9:	5e                   	pop    esi
    11ca:	c2 08 00             	ret    0x8
;-------------------------------------------------
;  Bad code 2 (zero after ret):                  -
;-------------------------------------------------
;   11c9:	5e                   	pop    esi
;   11ca:	c2 08 00             	ret    0x8
;   11cd:	00 00                	add    BYTE PTR [eax],al
;   11cf:	00               	add    BYTE PTR [esi+0x57],dl
;-------------------------------------------------
;  Padding data (3 bytes):                       -
;-------------------------------------------------
    11cd:	00 00 00             	db     3 dup(0x00)
;-------------------------------------------------
;  End of bad code 2                             -
;-------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 1 (D:\SOURCE\biosmode.cpp)                                    -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 1: D:\SOURCE\biosmode.cpp                                            -
;                                                                              -
;-------------------------------------------------------------------------------
mode_13:
   10fd4:	40                   	db     0x40                                                         ; dec:  64, chr: '@'
   10fd5:	01                   	db     0x01                                                         ; dec:   1, chr: ''
   10fd6:	00 00                	db     2 dup(0x00)                                                  ; dec:   0, chr: '\0'
   10fd8:	c8                   	db     0xc8                                                         ; dec: 200, chr: ''
   10fd9:	00 00 00             	db     3 dup(0x00)                                                  ; dec:   0, chr: '\0'
   10fdc:	08                   	db     0x08                                                         ; dec:   8, chr: '\b'
   10fdd:	01                   	db     0x01                                                         ; dec:   1, chr: ''
   10fde:	00 00                	db     2 dup(0x00)                                                  ; dec:   0, chr: '\0'
   10fe0:	00 10 00 00          	dd     @obj1:detect_13                                              ; fixup: num: 21302, src obj: 3, src ofs: 0x10fe0, dst obj: 1, dst ofs: 0x1000
   10fe4:	10 10 00 00          	dd     @obj1:initialize_13                                          ; fixup: num: 21301, src obj: 3, src ofs: 0x10fe4, dst obj: 1, dst ofs: 0x1010
   10fe8:	20 10 00 00          	dd     @obj1:deinitialize_13                                        ; fixup: num: 21300, src obj: 3, src ofs: 0x10fe8, dst obj: 1, dst ofs: 0x1020
   10fec:	30 10 00 00          	dd     @obj1:set_visable_page_13                                    ; aliases: set_visable_page_13, set_active_page_13; fixup: num: 21299, src obj: 3, src ofs: 0x10fec, dst obj: 1, dst ofs: 0x1030
   10ff0:	30 10 00 00          	dd     @obj1:set_visable_page_13                                    ; aliases: set_visable_page_13, set_active_page_13; fixup: num: 21298, src obj: 3, src ofs: 0x10ff0, dst obj: 1, dst ofs: 0x1030
   10ff4:	40 10 00 00          	dd     @obj1:set_pixel_13                                           ; fixup: num: 21297, src obj: 3, src ofs: 0x10ff4, dst obj: 1, dst ofs: 0x1040
   10ff8:	60 10 00 00          	dd     @obj1:get_pixel_13                                           ; fixup: num: 21296, src obj: 3, src ofs: 0x10ff8, dst obj: 1, dst ofs: 0x1060
   10ffc:	80 10 00 00          	dd     @obj1:line_13                                                ; fixup: num: 21295, src obj: 3, src ofs: 0x10ffc, dst obj: 1, dst ofs: 0x1080
   11000:	d0 10 00 00          	dd     @obj1:box_13                                                 ; fixup: num: 21357, src obj: 3, src ofs: 0x11000, dst obj: 1, dst ofs: 0x10d0
   11004:	20 11 00 00          	dd     @obj1:blit_13                                                ; fixup: num: 21356, src obj: 3, src ofs: 0x11004, dst obj: 1, dst ofs: 0x1120
   11008:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
   11009:	fa                   	db     0xfa                                                         ; dec: 250, chr: ''
   1100a:	00 00 00 00          	db     4 dup(0x00)                                                  ; dec:   0, chr: '\0'
   1100e:	0a                   	db     0x0a                                                         ; dec:  10, chr: '\n'
   1100f:	00 00 00 00 00       	db     5 dup(0x00)                                                  ; dec:   0, chr: '\0'

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 1 (D:\SOURCE\biosmode.cpp)                                    -
;                                                                              -
;-------------------------------------------------------------------------------