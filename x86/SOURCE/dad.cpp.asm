;-------------------------------------------------------------------------------
;                                                                              -
;  Module 30: D:\SOURCE\dad.cpp                                                -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function 'talk_to_DAD'                        -
;-------------------------------------------------
talk_to_DAD:
   1b020:	53                   	push   ebx
   1b021:	51                   	push   ecx
   1b022:	52                   	push   edx
   1b023:	56                   	push   esi
   1b024:	57                   	push   edi
   1b025:	b8 1c 3b 00 00       	mov    eax,@obj3:dad_cpp_variable_1                                 ; fixup: num: 3784, src obj: 1, src ofs: 0x1b026, dst obj: 3, dst ofs: 0x3b1c
   1b02a:	e8 61 17 05 00       	call   check_script_flag
   1b02f:	84 c0                	test   al,al
   1b031:	74 2e                	je     talk_to_DAD_branch_1
   1b033:	ba 2b 3b 00 00       	mov    edx,@obj3:dad_cpp_variable_2                                 ; fixup: num: 3783, src obj: 1, src ofs: 0x1b034, dst obj: 3, dst ofs: 0x3b2b
   1b038:	b8 61 3a 00 00       	mov    eax,0x3a61
   1b03d:	31 db                	xor    ebx,ebx
   1b03f:	e8 4c f6 04 00       	call   play_wav
   1b044:	e8 37 d9 00 00       	call   CAMERA_DOLLYS_IN_ON_DAD_S_DOOR_FROM_LOW_ANGLE
   1b049:	ba 2f 3b 00 00       	mov    edx,@obj3:dad_cpp_variable_3                                 ; fixup: num: 3782, src obj: 1, src ofs: 0x1b04a, dst obj: 3, dst ofs: 0x3b2f
   1b04e:	b8 6b 3a 00 00       	mov    eax,0x3a6b
   1b053:	31 db                	xor    ebx,ebx
   1b055:	e8 36 f6 04 00       	call   play_wav
   1b05a:	31 c0                	xor    eax,eax
   1b05c:	e9 1b 05 00 00       	jmp    talk_to_DAD_branch_26
talk_to_DAD_branch_1:
   1b061:	be 33 3b 00 00       	mov    esi,@obj3:dad_cpp_variable_4                                 ; fixup: num: 3781, src obj: 1, src ofs: 0x1b062, dst obj: 3, dst ofs: 0x3b33
   1b066:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 3780, src obj: 1, src ofs: 0x1b067, dst obj: 3, dst ofs: 0x295c0
   1b06b:	57                   	push   edi
talk_to_DAD_branch_2:
   1b06c:	8a 06                	mov    al,BYTE PTR [esi]
   1b06e:	88 07                	mov    BYTE PTR [edi],al
   1b070:	3c 00                	cmp    al,0x0
   1b072:	74 10                	je     talk_to_DAD_branch_3
   1b074:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   1b077:	83 c6 02             	add    esi,0x2
   1b07a:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   1b07d:	83 c7 02             	add    edi,0x2
   1b080:	3c 00                	cmp    al,0x0
   1b082:	75 e8                	jne    talk_to_DAD_branch_2
talk_to_DAD_branch_3:
   1b084:	5f                   	pop    edi
   1b085:	8b 15 bc 94 02 00    	mov    edx,DWORD PTR ds:@obj3:showing_item                          ; fixup: num: 3779, src obj: 1, src ofs: 0x1b087, dst obj: 3, dst ofs: 0x294bc
   1b08b:	85 d2                	test   edx,edx
   1b08d:	0f 84 b0 01 00 00    	je     talk_to_DAD_branch_14
   1b093:	89 d0                	mov    eax,edx
   1b095:	ba 34 3b 00 00       	mov    edx,@obj3:dad_cpp_variable_5                                 ; fixup: num: 3778, src obj: 1, src ofs: 0x1b096, dst obj: 3, dst ofs: 0x3b34
   1b09a:	e8 91 b3 05 00       	call   strcmp_
   1b09f:	85 c0                	test   eax,eax
   1b0a1:	74 13                	je     talk_to_DAD_branch_4
   1b0a3:	ba 41 3b 00 00       	mov    edx,@obj3:dad_cpp_variable_6                                 ; fixup: num: 3777, src obj: 1, src ofs: 0x1b0a4, dst obj: 3, dst ofs: 0x3b41
   1b0a8:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 3776, src obj: 1, src ofs: 0x1b0a9, dst obj: 3, dst ofs: 0x294bc
   1b0ad:	e8 7e b3 05 00       	call   strcmp_
   1b0b2:	85 c0                	test   eax,eax
   1b0b4:	75 0f                	jne    talk_to_DAD_branch_5
talk_to_DAD_branch_4:
   1b0b6:	ba 52 3b 00 00       	mov    edx,@obj3:dad_cpp_variable_7                                 ; fixup: num: 3775, src obj: 1, src ofs: 0x1b0b7, dst obj: 3, dst ofs: 0x3b52
   1b0bb:	b8 39 3a 00 00       	mov    eax,0x3a39
   1b0c0:	e9 6f 01 00 00       	jmp    talk_to_DAD_branch_12
talk_to_DAD_branch_5:
   1b0c5:	ba 56 3b 00 00       	mov    edx,@obj3:dad_cpp_variable_8                                 ; fixup: num: 3774, src obj: 1, src ofs: 0x1b0c6, dst obj: 3, dst ofs: 0x3b56
   1b0ca:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 3773, src obj: 1, src ofs: 0x1b0cb, dst obj: 3, dst ofs: 0x294bc
   1b0cf:	e8 5c b3 05 00       	call   strcmp_
   1b0d4:	85 c0                	test   eax,eax
   1b0d6:	75 45                	jne    talk_to_DAD_branch_6
   1b0d8:	ba 01 00 00 00       	mov    edx,0x1
   1b0dd:	e8 8e d2 00 00       	call   SHOWN_PHOTO_OF_WHALEY_HERRILL_AROUND
   1b0e2:	31 db                	xor    ebx,ebx
   1b0e4:	ba 6e 3b 00 00       	mov    edx,@obj3:dad_cpp_variable_9                                 ; fixup: num: 3796, src obj: 1, src ofs: 0x1b0e5, dst obj: 3, dst ofs: 0x3b6e
   1b0e9:	b8 41 3a 00 00       	mov    eax,0x3a41
   1b0ee:	e8 9d f5 04 00       	call   play_wav
   1b0f3:	ba 72 3b 00 00       	mov    edx,@obj3:dad_cpp_variable_10                                ; fixup: num: 3795, src obj: 1, src ofs: 0x1b0f4, dst obj: 3, dst ofs: 0x3b72
   1b0f8:	b8 46 3a 00 00       	mov    eax,0x3a46
   1b0fd:	31 db                	xor    ebx,ebx
   1b0ff:	e8 8c f5 04 00       	call   play_wav
   1b104:	ba 75 3b 00 00       	mov    edx,@obj3:dad_cpp_variable_11                                ; fixup: num: 3794, src obj: 1, src ofs: 0x1b105, dst obj: 3, dst ofs: 0x3b75
   1b109:	b8 4a 3a 00 00       	mov    eax,0x3a4a
   1b10e:	31 db                	xor    ebx,ebx
   1b110:	e8 7b f5 04 00       	call   play_wav
   1b115:	31 c0                	xor    eax,eax
   1b117:	5f                   	pop    edi
   1b118:	5e                   	pop    esi
   1b119:	5a                   	pop    edx
   1b11a:	59                   	pop    ecx
   1b11b:	5b                   	pop    ebx
   1b11c:	c3                   	ret    
talk_to_DAD_branch_6:
   1b11d:	ba 79 3b 00 00       	mov    edx,@obj3:dad_cpp_variable_12                                ; fixup: num: 3793, src obj: 1, src ofs: 0x1b11e, dst obj: 3, dst ofs: 0x3b79
   1b122:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 3792, src obj: 1, src ofs: 0x1b123, dst obj: 3, dst ofs: 0x294bc
   1b127:	e8 04 b3 05 00       	call   strcmp_
   1b12c:	85 c0                	test   eax,eax
   1b12e:	74 39                	je     talk_to_DAD_branch_7
   1b130:	ba 7e 3b 00 00       	mov    edx,@obj3:dad_cpp_variable_13                                ; fixup: num: 3791, src obj: 1, src ofs: 0x1b131, dst obj: 3, dst ofs: 0x3b7e
   1b135:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 3790, src obj: 1, src ofs: 0x1b136, dst obj: 3, dst ofs: 0x294bc
   1b13a:	e8 f1 b2 05 00       	call   strcmp_
   1b13f:	85 c0                	test   eax,eax
   1b141:	74 26                	je     talk_to_DAD_branch_7
   1b143:	ba 8d 3b 00 00       	mov    edx,@obj3:dad_cpp_variable_14                                ; fixup: num: 3789, src obj: 1, src ofs: 0x1b144, dst obj: 3, dst ofs: 0x3b8d
   1b148:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 3788, src obj: 1, src ofs: 0x1b149, dst obj: 3, dst ofs: 0x294bc
   1b14d:	e8 de b2 05 00       	call   strcmp_
   1b152:	85 c0                	test   eax,eax
   1b154:	74 13                	je     talk_to_DAD_branch_7
   1b156:	ba 97 3b 00 00       	mov    edx,@obj3:dad_cpp_variable_15                                ; fixup: num: 3787, src obj: 1, src ofs: 0x1b157, dst obj: 3, dst ofs: 0x3b97
   1b15b:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 3786, src obj: 1, src ofs: 0x1b15c, dst obj: 3, dst ofs: 0x294bc
   1b160:	e8 cb b2 05 00       	call   strcmp_
   1b165:	85 c0                	test   eax,eax
   1b167:	75 47                	jne    talk_to_DAD_branch_8
talk_to_DAD_branch_7:
   1b169:	ba 01 00 00 00       	mov    edx,0x1
   1b16e:	31 c0                	xor    eax,eax
   1b170:	e8 bb d1 00 00       	call   SHOWN_EVIDENCE_OF_BLACKMAIL_AROUND
   1b175:	31 db                	xor    ebx,ebx
   1b177:	ba ab 3b 00 00       	mov    edx,@obj3:dad_cpp_variable_16                                ; fixup: num: 3785, src obj: 1, src ofs: 0x1b178, dst obj: 3, dst ofs: 0x3bab
   1b17c:	b8 51 3a 00 00       	mov    eax,0x3a51
   1b181:	e8 0a f5 04 00       	call   play_wav
   1b186:	ba af 3b 00 00       	mov    edx,@obj3:dad_cpp_variable_17                                ; fixup: num: 3806, src obj: 1, src ofs: 0x1b187, dst obj: 3, dst ofs: 0x3baf
   1b18b:	b8 55 3a 00 00       	mov    eax,0x3a55
   1b190:	31 db                	xor    ebx,ebx
   1b192:	e8 f9 f4 04 00       	call   play_wav
   1b197:	ba b2 3b 00 00       	mov    edx,@obj3:dad_cpp_variable_18                                ; fixup: num: 3805, src obj: 1, src ofs: 0x1b198, dst obj: 3, dst ofs: 0x3bb2
   1b19c:	b8 59 3a 00 00       	mov    eax,0x3a59
   1b1a1:	31 db                	xor    ebx,ebx
   1b1a3:	e8 e8 f4 04 00       	call   play_wav
   1b1a8:	31 c0                	xor    eax,eax
   1b1aa:	5f                   	pop    edi
   1b1ab:	5e                   	pop    esi
   1b1ac:	5a                   	pop    edx
   1b1ad:	59                   	pop    ecx
   1b1ae:	5b                   	pop    ebx
   1b1af:	c3                   	ret    
talk_to_DAD_branch_8:
   1b1b0:	ba b6 3b 00 00       	mov    edx,@obj3:dad_cpp_variable_19                                ; fixup: num: 3804, src obj: 1, src ofs: 0x1b1b1, dst obj: 3, dst ofs: 0x3bb6
   1b1b5:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 3803, src obj: 1, src ofs: 0x1b1b6, dst obj: 3, dst ofs: 0x294bc
   1b1ba:	e8 71 b2 05 00       	call   strcmp_
   1b1bf:	85 c0                	test   eax,eax
   1b1c1:	75 67                	jne    talk_to_DAD_branch_10
   1b1c3:	b8 01 00 00 00       	mov    eax,0x1
   1b1c8:	31 d2                	xor    edx,edx
   1b1ca:	e8 31 d2 00 00       	call   NEED_DADS_SIGNATURE
   1b1cf:	85 c0                	test   eax,eax
   1b1d1:	74 50                	je     talk_to_DAD_branch_9
   1b1d3:	ba c7 3b 00 00       	mov    edx,@obj3:dad_cpp_variable_20                                ; fixup: num: 3802, src obj: 1, src ofs: 0x1b1d4, dst obj: 3, dst ofs: 0x3bc7
   1b1d8:	b8 f2 39 00 00       	mov    eax,0x39f2
   1b1dd:	31 db                	xor    ebx,ebx
   1b1df:	e8 ac f4 04 00       	call   play_wav
   1b1e4:	ba ca 3b 00 00       	mov    edx,@obj3:dad_cpp_variable_21                                ; fixup: num: 3801, src obj: 1, src ofs: 0x1b1e5, dst obj: 3, dst ofs: 0x3bca
   1b1e9:	b8 f7 39 00 00       	mov    eax,0x39f7
   1b1ee:	31 db                	xor    ebx,ebx
   1b1f0:	e8 9b f4 04 00       	call   play_wav
   1b1f5:	e8 26 d9 00 00       	call   DAD_CLOSEUP_2
   1b1fa:	ba 01 00 00 00       	mov    edx,0x1
   1b1ff:	31 c0                	xor    eax,eax
   1b201:	e8 aa d0 00 00       	call   GOTTEN_FATHER_S_SIGNATURE
   1b206:	31 db                	xor    ebx,ebx
   1b208:	b8 ce 3b 00 00       	mov    eax,@obj3:dad_cpp_variable_22                                ; fixup: num: 3800, src obj: 1, src ofs: 0x1b209, dst obj: 3, dst ofs: 0x3bce
   1b20d:	ba de 3b 00 00       	mov    edx,@obj3:dad_cpp_variable_23                                ; fixup: num: 3799, src obj: 1, src ofs: 0x1b20e, dst obj: 3, dst ofs: 0x3bde
   1b212:	e8 99 16 05 00       	call   add_inventory
   1b217:	b8 ef 3b 00 00       	mov    eax,@obj3:dad_cpp_variable_24                                ; fixup: num: 3798, src obj: 1, src ofs: 0x1b218, dst obj: 3, dst ofs: 0x3bef
   1b21c:	e8 ef 7c 03 00       	call   set_object
   1b221:	eb 18                	jmp    talk_to_DAD_branch_13
talk_to_DAD_branch_9:
   1b223:	ba f9 3b 00 00       	mov    edx,@obj3:dad_cpp_variable_25                                ; fixup: num: 3797, src obj: 1, src ofs: 0x1b224, dst obj: 3, dst ofs: 0x3bf9
   1b228:	eb 05                	jmp    talk_to_DAD_branch_11
talk_to_DAD_branch_10:
   1b22a:	ba fd 3b 00 00       	mov    edx,@obj3:dad_cpp_variable_26                                ; fixup: num: 3815, src obj: 1, src ofs: 0x1b22b, dst obj: 3, dst ofs: 0x3bfd
talk_to_DAD_branch_11:
   1b22f:	b8 32 3a 00 00       	mov    eax,0x3a32
talk_to_DAD_branch_12:
   1b234:	31 db                	xor    ebx,ebx
   1b236:	e8 55 f4 04 00       	call   play_wav
talk_to_DAD_branch_13:
   1b23b:	31 c0                	xor    eax,eax
   1b23d:	5f                   	pop    edi
   1b23e:	5e                   	pop    esi
   1b23f:	5a                   	pop    edx
   1b240:	59                   	pop    ecx
   1b241:	5b                   	pop    ebx
   1b242:	c3                   	ret    
talk_to_DAD_branch_14:
   1b243:	a1 94 2c 02 00       	mov    eax,ds:@obj3:DAD                                             ; fixup: num: 3814, src obj: 1, src ofs: 0x1b244, dst obj: 3, dst ofs: 0x22c94
   1b248:	85 c0                	test   eax,eax
   1b24a:	74 78                	je     talk_to_DAD_branch_15
   1b24c:	ba 01 3c 00 00       	mov    edx,@obj3:dad_cpp_variable_27                                ; fixup: num: 3813, src obj: 1, src ofs: 0x1b24d, dst obj: 3, dst ofs: 0x3c01
   1b251:	b8 17 3a 00 00       	mov    eax,0x3a17
   1b256:	31 db                	xor    ebx,ebx
   1b258:	e8 33 f4 04 00       	call   play_wav
   1b25d:	b8 01 00 00 00       	mov    eax,0x1
   1b262:	31 d2                	xor    edx,edx
   1b264:	e8 97 d1 00 00       	call   NEED_DADS_SIGNATURE
   1b269:	85 c0                	test   eax,eax
   1b26b:	0f 84 39 02 00 00    	je     talk_to_DAD_branch_20
   1b271:	ba 05 3c 00 00       	mov    edx,@obj3:dad_cpp_variable_28                                ; fixup: num: 3812, src obj: 1, src ofs: 0x1b272, dst obj: 3, dst ofs: 0x3c05
   1b276:	b8 f2 39 00 00       	mov    eax,0x39f2
   1b27b:	31 db                	xor    ebx,ebx
   1b27d:	e8 0e f4 04 00       	call   play_wav
   1b282:	ba 08 3c 00 00       	mov    edx,@obj3:dad_cpp_variable_29                                ; fixup: num: 3811, src obj: 1, src ofs: 0x1b283, dst obj: 3, dst ofs: 0x3c08
   1b287:	b8 f7 39 00 00       	mov    eax,0x39f7
   1b28c:	31 db                	xor    ebx,ebx
   1b28e:	e8 fd f3 04 00       	call   play_wav
   1b293:	e8 88 d8 00 00       	call   DAD_CLOSEUP_2
   1b298:	ba 01 00 00 00       	mov    edx,0x1
   1b29d:	31 c0                	xor    eax,eax
   1b29f:	e8 0c d0 00 00       	call   GOTTEN_FATHER_S_SIGNATURE
   1b2a4:	31 db                	xor    ebx,ebx
   1b2a6:	b8 0c 3c 00 00       	mov    eax,@obj3:dad_cpp_variable_30                                ; fixup: num: 3810, src obj: 1, src ofs: 0x1b2a7, dst obj: 3, dst ofs: 0x3c0c
   1b2ab:	ba 1c 3c 00 00       	mov    edx,@obj3:dad_cpp_variable_31                                ; fixup: num: 3809, src obj: 1, src ofs: 0x1b2ac, dst obj: 3, dst ofs: 0x3c1c
   1b2b0:	e8 fb 15 05 00       	call   add_inventory
   1b2b5:	b8 2d 3c 00 00       	mov    eax,@obj3:dad_cpp_variable_32                                ; fixup: num: 3808, src obj: 1, src ofs: 0x1b2b6, dst obj: 3, dst ofs: 0x3c2d
   1b2ba:	e8 51 7c 03 00       	call   set_object
   1b2bf:	e9 e6 01 00 00       	jmp    talk_to_DAD_branch_20
talk_to_DAD_branch_15:
   1b2c4:	ba 01 00 00 00       	mov    edx,0x1
   1b2c9:	bb 01 00 00 00       	mov    ebx,0x1
   1b2ce:	e8 3d d0 00 00       	call   SEEN_FATHER
   1b2d3:	ba 37 3c 00 00       	mov    edx,@obj3:dad_cpp_variable_33                                ; fixup: num: 3807, src obj: 1, src ofs: 0x1b2d4, dst obj: 3, dst ofs: 0x3c37
   1b2d8:	b8 a5 39 00 00       	mov    eax,0x39a5
   1b2dd:	89 1d 94 2c 02 00    	mov    DWORD PTR ds:@obj3:DAD,ebx                                   ; fixup: num: 3824, src obj: 1, src ofs: 0x1b2df, dst obj: 3, dst ofs: 0x22c94
   1b2e3:	31 db                	xor    ebx,ebx
   1b2e5:	e8 a6 f3 04 00       	call   play_wav
   1b2ea:	ba 3b 3c 00 00       	mov    edx,@obj3:dad_cpp_variable_34                                ; fixup: num: 3823, src obj: 1, src ofs: 0x1b2eb, dst obj: 3, dst ofs: 0x3c3b
   1b2ef:	b8 a9 39 00 00       	mov    eax,0x39a9
   1b2f4:	31 db                	xor    ebx,ebx
   1b2f6:	e8 95 f3 04 00       	call   play_wav
   1b2fb:	ba 3e 3c 00 00       	mov    edx,@obj3:dad_cpp_variable_35                                ; fixup: num: 3822, src obj: 1, src ofs: 0x1b2fc, dst obj: 3, dst ofs: 0x3c3e
   1b300:	b8 ad 39 00 00       	mov    eax,0x39ad
   1b305:	31 db                	xor    ebx,ebx
   1b307:	e8 84 f3 04 00       	call   play_wav
   1b30c:	bb 02 00 00 00       	mov    ebx,0x2
   1b311:	ba 42 3c 00 00       	mov    edx,@obj3:dad_cpp_variable_36                                ; fixup: num: 3821, src obj: 1, src ofs: 0x1b312, dst obj: 3, dst ofs: 0x3c42
   1b316:	b8 b1 39 00 00       	mov    eax,0x39b1
   1b31b:	e8 70 f3 04 00       	call   play_wav
   1b320:	ba 01 00 00 00       	mov    edx,0x1
   1b325:	31 c0                	xor    eax,eax
   1b327:	e8 b4 d0 00 00       	call   IF_SOMEONE_ELSE_HAS_SAID_THAT
   1b32c:	31 db                	xor    ebx,ebx
   1b32e:	ba 45 3c 00 00       	mov    edx,@obj3:dad_cpp_variable_37                                ; fixup: num: 3820, src obj: 1, src ofs: 0x1b32f, dst obj: 3, dst ofs: 0x3c45
   1b333:	b8 b5 39 00 00       	mov    eax,0x39b5
   1b338:	e8 53 f3 04 00       	call   play_wav
   1b33d:	bb 03 00 00 00       	mov    ebx,0x3
   1b342:	ba 49 3c 00 00       	mov    edx,@obj3:dad_cpp_variable_38                                ; fixup: num: 3819, src obj: 1, src ofs: 0x1b343, dst obj: 3, dst ofs: 0x3c49
   1b347:	b8 ba 39 00 00       	mov    eax,0x39ba
   1b34c:	e8 3f f3 04 00       	call   play_wav
   1b351:	e8 ba d7 00 00       	call   DAD_CLOSEUP_1
   1b356:	bb 02 00 00 00       	mov    ebx,0x2
   1b35b:	ba 4c 3c 00 00       	mov    edx,@obj3:dad_cpp_variable_39                                ; fixup: num: 3818, src obj: 1, src ofs: 0x1b35c, dst obj: 3, dst ofs: 0x3c4c
   1b360:	b8 c2 39 00 00       	mov    eax,0x39c2
   1b365:	e8 26 f3 04 00       	call   play_wav
   1b36a:	ba 4f 3c 00 00       	mov    edx,@obj3:dad_cpp_variable_40                                ; fixup: num: 3817, src obj: 1, src ofs: 0x1b36b, dst obj: 3, dst ofs: 0x3c4f
   1b36f:	b8 c6 39 00 00       	mov    eax,0x39c6
   1b374:	31 db                	xor    ebx,ebx
   1b376:	e8 15 f3 04 00       	call   play_wav
   1b37b:	b8 53 3c 00 00       	mov    eax,@obj3:dad_cpp_variable_41                                ; fixup: num: 3816, src obj: 1, src ofs: 0x1b37c, dst obj: 3, dst ofs: 0x3c53
   1b380:	e8 8b fb 04 00       	call   get_response
   1b385:	83 f8 01             	cmp    eax,0x1
   1b388:	75 50                	jne    talk_to_DAD_branch_16
   1b38a:	ba 78 3c 00 00       	mov    edx,@obj3:dad_cpp_variable_42                                ; fixup: num: 3833, src obj: 1, src ofs: 0x1b38b, dst obj: 3, dst ofs: 0x3c78
   1b38f:	b8 d3 39 00 00       	mov    eax,0x39d3
   1b394:	31 db                	xor    ebx,ebx
   1b396:	e8 f5 f2 04 00       	call   play_wav
   1b39b:	ba 7c 3c 00 00       	mov    edx,@obj3:dad_cpp_variable_43                                ; fixup: num: 3832, src obj: 1, src ofs: 0x1b39c, dst obj: 3, dst ofs: 0x3c7c
   1b3a0:	b8 d4 39 00 00       	mov    eax,0x39d4
   1b3a5:	31 db                	xor    ebx,ebx
   1b3a7:	e8 e4 f2 04 00       	call   play_wav
   1b3ac:	ba 80 3c 00 00       	mov    edx,@obj3:dad_cpp_variable_44                                ; fixup: num: 3831, src obj: 1, src ofs: 0x1b3ad, dst obj: 3, dst ofs: 0x3c80
   1b3b1:	b8 d5 39 00 00       	mov    eax,0x39d5
   1b3b6:	31 db                	xor    ebx,ebx
   1b3b8:	e8 d3 f2 04 00       	call   play_wav
   1b3bd:	ba 84 3c 00 00       	mov    edx,@obj3:dad_cpp_variable_45                                ; fixup: num: 3830, src obj: 1, src ofs: 0x1b3be, dst obj: 3, dst ofs: 0x3c84
   1b3c2:	b8 d6 39 00 00       	mov    eax,0x39d6
   1b3c7:	31 db                	xor    ebx,ebx
   1b3c9:	e8 c2 f2 04 00       	call   play_wav
   1b3ce:	ba 88 3c 00 00       	mov    edx,@obj3:dad_cpp_variable_46                                ; fixup: num: 3829, src obj: 1, src ofs: 0x1b3cf, dst obj: 3, dst ofs: 0x3c88
   1b3d3:	b8 d7 39 00 00       	mov    eax,0x39d7
   1b3d8:	eb 0f                	jmp    talk_to_DAD_branch_17
talk_to_DAD_branch_16:
   1b3da:	83 f8 02             	cmp    eax,0x2
   1b3dd:	75 11                	jne    talk_to_DAD_branch_18
   1b3df:	ba 8c 3c 00 00       	mov    edx,@obj3:dad_cpp_variable_47                                ; fixup: num: 3828, src obj: 1, src ofs: 0x1b3e0, dst obj: 3, dst ofs: 0x3c8c
   1b3e4:	b8 e0 39 00 00       	mov    eax,0x39e0
talk_to_DAD_branch_17:
   1b3e9:	31 db                	xor    ebx,ebx
   1b3eb:	e8 a0 f2 04 00       	call   play_wav
talk_to_DAD_branch_18:
   1b3f0:	ba 90 3c 00 00       	mov    edx,@obj3:dad_cpp_variable_48                                ; fixup: num: 3827, src obj: 1, src ofs: 0x1b3f1, dst obj: 3, dst ofs: 0x3c90
   1b3f5:	b8 e6 39 00 00       	mov    eax,0x39e6
   1b3fa:	31 db                	xor    ebx,ebx
   1b3fc:	e8 8f f2 04 00       	call   play_wav
   1b401:	ba 93 3c 00 00       	mov    edx,@obj3:dad_cpp_variable_49                                ; fixup: num: 3826, src obj: 1, src ofs: 0x1b402, dst obj: 3, dst ofs: 0x3c93
   1b406:	b8 eb 39 00 00       	mov    eax,0x39eb
   1b40b:	31 db                	xor    ebx,ebx
   1b40d:	e8 7e f2 04 00       	call   play_wav
   1b412:	b8 01 00 00 00       	mov    eax,0x1
   1b417:	31 d2                	xor    edx,edx
   1b419:	e8 e2 cf 00 00       	call   NEED_DADS_SIGNATURE
   1b41e:	85 c0                	test   eax,eax
   1b420:	74 50                	je     talk_to_DAD_branch_19
   1b422:	ba 97 3c 00 00       	mov    edx,@obj3:dad_cpp_variable_50                                ; fixup: num: 3825, src obj: 1, src ofs: 0x1b423, dst obj: 3, dst ofs: 0x3c97
   1b427:	b8 f2 39 00 00       	mov    eax,0x39f2
   1b42c:	31 db                	xor    ebx,ebx
   1b42e:	e8 5d f2 04 00       	call   play_wav
   1b433:	ba 9a 3c 00 00       	mov    edx,@obj3:dad_cpp_variable_51                                ; fixup: num: 3708, src obj: 1, src ofs: 0x1b434, dst obj: 3, dst ofs: 0x3c9a
   1b438:	b8 f7 39 00 00       	mov    eax,0x39f7
   1b43d:	31 db                	xor    ebx,ebx
   1b43f:	e8 4c f2 04 00       	call   play_wav
   1b444:	e8 d7 d6 00 00       	call   DAD_CLOSEUP_2
   1b449:	ba 01 00 00 00       	mov    edx,0x1
   1b44e:	31 c0                	xor    eax,eax
   1b450:	e8 5b ce 00 00       	call   GOTTEN_FATHER_S_SIGNATURE
   1b455:	31 db                	xor    ebx,ebx
   1b457:	b8 9e 3c 00 00       	mov    eax,@obj3:dad_cpp_variable_52                                ; fixup: num: 3707, src obj: 1, src ofs: 0x1b458, dst obj: 3, dst ofs: 0x3c9e
   1b45c:	ba ae 3c 00 00       	mov    edx,@obj3:dad_cpp_variable_53                                ; fixup: num: 3706, src obj: 1, src ofs: 0x1b45d, dst obj: 3, dst ofs: 0x3cae
   1b461:	e8 4a 14 05 00       	call   add_inventory
   1b466:	b8 bf 3c 00 00       	mov    eax,@obj3:dad_cpp_variable_54                                ; fixup: num: 3705, src obj: 1, src ofs: 0x1b467, dst obj: 3, dst ofs: 0x3cbf
   1b46b:	e8 a0 7a 03 00       	call   set_object
   1b470:	eb 38                	jmp    talk_to_DAD_branch_20
talk_to_DAD_branch_19:
   1b472:	ba c9 3c 00 00       	mov    edx,@obj3:dad_cpp_variable_55                                ; fixup: num: 3704, src obj: 1, src ofs: 0x1b473, dst obj: 3, dst ofs: 0x3cc9
   1b477:	b8 fe 39 00 00       	mov    eax,0x39fe
   1b47c:	31 db                	xor    ebx,ebx
   1b47e:	e8 0d f2 04 00       	call   play_wav
   1b483:	ba cc 3c 00 00       	mov    edx,@obj3:dad_cpp_variable_56                                ; fixup: num: 3838, src obj: 1, src ofs: 0x1b484, dst obj: 3, dst ofs: 0x3ccc
   1b488:	b8 02 3a 00 00       	mov    eax,0x3a02
   1b48d:	31 db                	xor    ebx,ebx
   1b48f:	e8 fc f1 04 00       	call   play_wav
   1b494:	e8 e7 d4 00 00       	call   CAMERA_DOLLYS_IN_ON_DAD_S_DOOR_FROM_LOW_ANGLE
   1b499:	ba d0 3c 00 00       	mov    edx,@obj3:dad_cpp_variable_57                                ; fixup: num: 3837, src obj: 1, src ofs: 0x1b49a, dst obj: 3, dst ofs: 0x3cd0
   1b49e:	b8 0f 3a 00 00       	mov    eax,0x3a0f
   1b4a3:	31 db                	xor    ebx,ebx
   1b4a5:	e8 e6 f1 04 00       	call   play_wav
talk_to_DAD_branch_20:
   1b4aa:	be d4 3c 00 00       	mov    esi,@obj3:dad_cpp_variable_58                                ; fixup: num: 3836, src obj: 1, src ofs: 0x1b4ab, dst obj: 3, dst ofs: 0x3cd4
   1b4af:	bf c0 94 02 00       	mov    edi,@obj3:keyword                                            ; fixup: num: 3835, src obj: 1, src ofs: 0x1b4b0, dst obj: 3, dst ofs: 0x294c0
   1b4b4:	57                   	push   edi
talk_to_DAD_branch_21:
   1b4b5:	8a 06                	mov    al,BYTE PTR [esi]
   1b4b7:	88 07                	mov    BYTE PTR [edi],al
   1b4b9:	3c 00                	cmp    al,0x0
   1b4bb:	74 10                	je     talk_to_DAD_branch_22
   1b4bd:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   1b4c0:	83 c6 02             	add    esi,0x2
   1b4c3:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   1b4c6:	83 c7 02             	add    edi,0x2
   1b4c9:	3c 00                	cmp    al,0x0
   1b4cb:	75 e8                	jne    talk_to_DAD_branch_21
talk_to_DAD_branch_22:
   1b4cd:	5f                   	pop    edi
   1b4ce:	89 fe                	mov    esi,edi
   1b4d0:	31 c9                	xor    ecx,ecx
talk_to_DAD_branch_23:
   1b4d2:	8b 15 30 24 03 00    	mov    edx,DWORD PTR ds:@obj3:bye_str                               ; fixup: num: 3834, src obj: 1, src ofs: 0x1b4d4, dst obj: 3, dst ofs: 0x32430
   1b4d8:	89 f0                	mov    eax,esi
   1b4da:	e8 7b 5f 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1b4df:	85 c0                	test   eax,eax
   1b4e1:	0f 84 95 00 00 00    	je     talk_to_DAD_branch_26
   1b4e7:	b8 c0 95 02 00       	mov    eax,@obj3:keystring                                          ; fixup: num: 3718, src obj: 1, src ofs: 0x1b4e8, dst obj: 3, dst ofs: 0x295c0
   1b4ec:	ba d5 3c 00 00       	mov    edx,@obj3:dad_cpp_variable_59                                ; fixup: num: 3717, src obj: 1, src ofs: 0x1b4ed, dst obj: 3, dst ofs: 0x3cd5
   1b4f1:	e8 4a 05 05 00       	call   show_keywords
   1b4f6:	89 f0                	mov    eax,esi
   1b4f8:	e8 5d 5f 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1b4fd:	85 c0                	test   eax,eax
   1b4ff:	74 10                	je     talk_to_DAD_branch_24
   1b501:	ba db 3c 00 00       	mov    edx,@obj3:dad_cpp_variable_60                                ; fixup: num: 3716, src obj: 1, src ofs: 0x1b502, dst obj: 3, dst ofs: 0x3cdb
   1b506:	89 f0                	mov    eax,esi
   1b508:	e8 4d 5f 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1b50d:	85 c0                	test   eax,eax
   1b50f:	75 41                	jne    talk_to_DAD_branch_25
talk_to_DAD_branch_24:
   1b511:	ba 01 00 00 00       	mov    edx,0x1
   1b516:	89 c8                	mov    eax,ecx
   1b518:	e8 a3 cf 00 00       	call   ANYONE_ELSE_HAS_SPOKEN_TO_PC_ABOUT_LODGE
   1b51d:	89 cb                	mov    ebx,ecx
   1b51f:	ba e5 3c 00 00       	mov    edx,@obj3:dad_cpp_variable_61                                ; fixup: num: 3715, src obj: 1, src ofs: 0x1b520, dst obj: 3, dst ofs: 0x3ce5
   1b524:	b8 7d 3a 00 00       	mov    eax,0x3a7d
   1b529:	e8 62 f1 04 00       	call   play_wav
   1b52e:	ba e9 3c 00 00       	mov    edx,@obj3:dad_cpp_variable_62                                ; fixup: num: 3714, src obj: 1, src ofs: 0x1b52f, dst obj: 3, dst ofs: 0x3ce9
   1b533:	b8 83 3a 00 00       	mov    eax,0x3a83
   1b538:	89 cb                	mov    ebx,ecx
   1b53a:	e8 51 f1 04 00       	call   play_wav
   1b53f:	ba ec 3c 00 00       	mov    edx,@obj3:dad_cpp_variable_63                                ; fixup: num: 3713, src obj: 1, src ofs: 0x1b540, dst obj: 3, dst ofs: 0x3cec
   1b544:	b8 88 3a 00 00       	mov    eax,0x3a88
   1b549:	89 cb                	mov    ebx,ecx
   1b54b:	e8 40 f1 04 00       	call   play_wav
   1b550:	eb 80                	jmp    talk_to_DAD_branch_23
talk_to_DAD_branch_25:
   1b552:	ba f0 3c 00 00       	mov    edx,@obj3:dad_cpp_variable_64                                ; fixup: num: 3712, src obj: 1, src ofs: 0x1b553, dst obj: 3, dst ofs: 0x3cf0
   1b557:	89 f0                	mov    eax,esi
   1b559:	e8 fc 5e 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1b55e:	85 c0                	test   eax,eax
   1b560:	0f 84 6c ff ff ff    	je     talk_to_DAD_branch_23
   1b566:	ba f4 3c 00 00       	mov    edx,@obj3:dad_cpp_variable_65                                ; fixup: num: 3711, src obj: 1, src ofs: 0x1b567, dst obj: 3, dst ofs: 0x3cf4
   1b56b:	b8 2c 3a 00 00       	mov    eax,0x3a2c
   1b570:	89 cb                	mov    ebx,ecx
   1b572:	e8 19 f1 04 00       	call   play_wav
   1b577:	e9 56 ff ff ff       	jmp    talk_to_DAD_branch_23
talk_to_DAD_branch_26:
   1b57c:	5f                   	pop    edi
   1b57d:	5e                   	pop    esi
   1b57e:	5a                   	pop    edx
   1b57f:	59                   	pop    ecx
   1b580:	5b                   	pop    ebx
   1b581:	c3                   	ret    
talk_to_DAD_branch_27:
   1b582:	89 15 94 2c 02 00    	mov    DWORD PTR ds:@obj3:DAD,edx                                   ; fixup: num: 3710, src obj: 1, src ofs: 0x1b584, dst obj: 3, dst ofs: 0x22c94
   1b588:	a1 94 2c 02 00       	mov    eax,ds:@obj3:DAD                                             ; fixup: num: 3709, src obj: 1, src ofs: 0x1b589, dst obj: 3, dst ofs: 0x22c94
   1b58d:	c3                   	ret    
   1b58e:	8b c0                	mov    eax,eax

;-------------------------------------------------
;  Function 'SECOND_CONVERSATION_AND_BEYOND'     -
;-------------------------------------------------
SECOND_CONVERSATION_AND_BEYOND:
   1b590:	85 c0                	test   eax,eax
   1b592:	74 ee                	je     talk_to_DAD_branch_27
   1b594:	a1 94 2c 02 00       	mov    eax,ds:@obj3:DAD                                             ; fixup: num: 3720, src obj: 1, src ofs: 0x1b595, dst obj: 3, dst ofs: 0x22c94
   1b599:	c3                   	ret    
   1b59a:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'DAD_initialize'                     -
;-------------------------------------------------
DAD_initialize:
   1b5a0:	52                   	push   edx
   1b5a1:	31 d2                	xor    edx,edx
   1b5a3:	89 15 94 2c 02 00    	mov    DWORD PTR ds:@obj3:DAD,edx                                   ; fixup: num: 3719, src obj: 1, src ofs: 0x1b5a5, dst obj: 3, dst ofs: 0x22c94
   1b5a9:	5a                   	pop    edx
   1b5aa:	c3                   	ret    
;-------------------------------------------------
;  Bad code 27 (zero after ret):                 -
;-------------------------------------------------
;  1b5a9:	5a                   	pop    edx
;  1b5aa:	c3                   	ret    
;  1b5ab:	00 00                	add    BYTE PTR [eax],al
;  1b5ad:	00 00                	add    BYTE PTR [eax],al
;-------------------------------------------------
;  Padding data (5 bytes):                       -
;-------------------------------------------------
   1b5ab:	00 00 00 00 00       	db     5 dup(0x00)
;-------------------------------------------------
;  End of bad code 27                            -
;-------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 30 (D:\SOURCE\dad.cpp)                                        -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 30: D:\SOURCE\dad.cpp                                                -
;                                                                              -
;-------------------------------------------------------------------------------
dad_cpp_variable_1:
    3b1c:	54 41 4b 49 4e 47 5f 42 4f 4e 44 41 47 45 00 	db     "TAKING_BONDAGE",0x00
dad_cpp_variable_2:
    3b2b:	44 41 44 00          	db     "DAD",0x00
dad_cpp_variable_3:
    3b2f:	44 41 44 00          	db     "DAD",0x00
dad_cpp_variable_4:
    3b33:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
dad_cpp_variable_5:
    3b34:	43 41 53 4b 45 54 5f 50 48 4f 54 4f 00 	db     "CASKET_PHOTO",0x00
dad_cpp_variable_6:
    3b41:	43 41 53 4b 45 54 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "CASKET_PHOTOCOPY",0x00
dad_cpp_variable_7:
    3b52:	44 41 44 00          	db     "DAD",0x00
dad_cpp_variable_8:
    3b56:	50 48 4f 54 4f 5f 4f 46 5f 57 48 41 4c 45 59 5f 48 45 52 52 49 4c 4c 00 	db     "PHOTO_OF_WHALEY_HERRILL",0x00
dad_cpp_variable_9:
    3b6e:	44 41 44 00          	db     "DAD",0x00
dad_cpp_variable_10:
    3b72:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    3b73:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    3b74:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
dad_cpp_variable_11:
    3b75:	44 41 44 00          	db     "DAD",0x00
dad_cpp_variable_12:
    3b79:	4e 4f 54 45 00       	db     "NOTE",0x00
dad_cpp_variable_13:
    3b7e:	4e 4f 54 45 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "NOTE_PHOTOCOPY",0x00
dad_cpp_variable_14:
    3b8d:	43 48 45 43 4b 42 4f 4f 4b 00 	db     "CHECKBOOK",0x00
dad_cpp_variable_15:
    3b97:	43 48 45 43 4b 42 4f 4f 4b 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "CHECKBOOK_PHOTOCOPY",0x00
dad_cpp_variable_16:
    3bab:	44 41 44 00          	db     "DAD",0x00
dad_cpp_variable_17:
    3baf:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    3bb0:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    3bb1:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
dad_cpp_variable_18:
    3bb2:	44 41 44 00          	db     "DAD",0x00
dad_cpp_variable_19:
    3bb6:	4d 45 41 54 5f 50 45 52 4d 49 53 53 49 4f 4e 30 00 	db     "MEAT_PERMISSION0",0x00
dad_cpp_variable_20:
    3bc7:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    3bc8:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    3bc9:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
dad_cpp_variable_21:
    3bca:	44 41 44 00          	db     "DAD",0x00
dad_cpp_variable_22:
    3bce:	4d 45 41 54 5f 50 45 52 4d 49 53 53 49 4f 4e 00 	db     "MEAT_PERMISSION",0x00
dad_cpp_variable_23:
    3bde:	4d 45 41 54 5f 50 45 52 4d 49 53 53 49 4f 4e 30 00 	db     "MEAT_PERMISSION0",0x00
dad_cpp_variable_24:
    3bef:	49 4e 56 45 4e 54 4f 52 59 00 	db     "INVENTORY",0x00
dad_cpp_variable_25:
    3bf9:	44 41 44 00          	db     "DAD",0x00
dad_cpp_variable_26:
    3bfd:	44 41 44 00          	db     "DAD",0x00
dad_cpp_variable_27:
    3c01:	44 41 44 00          	db     "DAD",0x00
dad_cpp_variable_28:
    3c05:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    3c06:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    3c07:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
dad_cpp_variable_29:
    3c08:	44 41 44 00          	db     "DAD",0x00
dad_cpp_variable_30:
    3c0c:	4d 45 41 54 5f 50 45 52 4d 49 53 53 49 4f 4e 00 	db     "MEAT_PERMISSION",0x00
dad_cpp_variable_31:
    3c1c:	4d 45 41 54 5f 50 45 52 4d 49 53 53 49 4f 4e 30 00 	db     "MEAT_PERMISSION0",0x00
dad_cpp_variable_32:
    3c2d:	49 4e 56 45 4e 54 4f 52 59 00 	db     "INVENTORY",0x00
dad_cpp_variable_33:
    3c37:	44 41 44 00          	db     "DAD",0x00
dad_cpp_variable_34:
    3c3b:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    3c3c:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    3c3d:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
dad_cpp_variable_35:
    3c3e:	44 41 44 00          	db     "DAD",0x00
dad_cpp_variable_36:
    3c42:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    3c43:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    3c44:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
dad_cpp_variable_37:
    3c45:	44 41 44 00          	db     "DAD",0x00
dad_cpp_variable_38:
    3c49:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    3c4a:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    3c4b:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
dad_cpp_variable_39:
    3c4c:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    3c4d:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    3c4e:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
dad_cpp_variable_40:
    3c4f:	44 41 44 00          	db     "DAD",0x00
dad_cpp_variable_41:
    3c53:	31 2e 20 49 27 64 20 6c 69 6b 65 20 74 68 61 74 2e 2f 32 2e 20 49 27 64 20 72 61 74 68 65 72 20 6e 6f 74 2e 00 	db     "1. I'd like that./2. I'd rather not.",0x00
dad_cpp_variable_42:
    3c78:	44 41 44 00          	db     "DAD",0x00
dad_cpp_variable_43:
    3c7c:	44 41 44 00          	db     "DAD",0x00
dad_cpp_variable_44:
    3c80:	44 41 44 00          	db     "DAD",0x00
dad_cpp_variable_45:
    3c84:	44 41 44 00          	db     "DAD",0x00
dad_cpp_variable_46:
    3c88:	44 41 44 00          	db     "DAD",0x00
dad_cpp_variable_47:
    3c8c:	44 41 44 00          	db     "DAD",0x00
dad_cpp_variable_48:
    3c90:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    3c91:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    3c92:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
dad_cpp_variable_49:
    3c93:	44 41 44 00          	db     "DAD",0x00
dad_cpp_variable_50:
    3c97:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    3c98:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    3c99:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
dad_cpp_variable_51:
    3c9a:	44 41 44 00          	db     "DAD",0x00
dad_cpp_variable_52:
    3c9e:	4d 45 41 54 5f 50 45 52 4d 49 53 53 49 4f 4e 00 	db     "MEAT_PERMISSION",0x00
dad_cpp_variable_53:
    3cae:	4d 45 41 54 5f 50 45 52 4d 49 53 53 49 4f 4e 30 00 	db     "MEAT_PERMISSION0",0x00
dad_cpp_variable_54:
    3cbf:	49 4e 56 45 4e 54 4f 52 59 00 	db     "INVENTORY",0x00
dad_cpp_variable_55:
    3cc9:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    3cca:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    3ccb:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
dad_cpp_variable_56:
    3ccc:	44 41 44 00          	db     "DAD",0x00
dad_cpp_variable_57:
    3cd0:	44 41 44 00          	db     "DAD",0x00
dad_cpp_variable_58:
    3cd4:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
dad_cpp_variable_59:
    3cd5:	4c 6f 64 67 65 00    	db     "Lodge",0x00
dad_cpp_variable_60:
    3cdb:	54 68 65 20 4c 6f 64 67 65 00 	db     "The Lodge",0x00
dad_cpp_variable_61:
    3ce5:	44 41 44 00          	db     "DAD",0x00
dad_cpp_variable_62:
    3ce9:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    3cea:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    3ceb:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
dad_cpp_variable_63:
    3cec:	44 41 44 00          	db     "DAD",0x00
dad_cpp_variable_64:
    3cf0:	42 59 45 00          	db     "BYE",0x00
dad_cpp_variable_65:
    3cf4:	44 41 44 00          	db     "DAD",0x00

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 30 (D:\SOURCE\dad.cpp)                                        -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 30: D:\SOURCE\dad.cpp                                                -
;                                                                              -
;-------------------------------------------------------------------------------
DAD:                                                                                                ; access size: DWORD
   22c94:	00 00 00 00          	dd     0x00000000

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 30 (D:\SOURCE\dad.cpp)                                        -
;                                                                              -
;-------------------------------------------------------------------------------