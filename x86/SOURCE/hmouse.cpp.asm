;-------------------------------------------------------------------------------
;                                                                              -
;  Module 90: D:\SOURCE\hmouse.cpp                                             -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function 'W?$ct:hmouse$n(pnai)_'              -
;-------------------------------------------------
W?$ct:hmouse$n(pnai)_:
   69920:	51                   	push   ecx
   69921:	56                   	push   esi
   69922:	89 de                	mov    esi,ebx
   69924:	6a 00                	push   0x0
   69926:	6a 00                	push   0x0
   69928:	6a 00                	push   0x0
   6992a:	6a 00                	push   0x0
   6992c:	68 00 00 c8 c2       	push   0xc2c80000
   69931:	8b 1d 7c 59 02 00    	mov    ebx,DWORD PTR ds:@obj3:mouse_y                               ; fixup: num: 18085, src obj: 1, src ofs: 0x69933, dst obj: 3, dst ofs: 0x2597c
   69937:	53                   	push   ebx
   69938:	8b 1d 78 59 02 00    	mov    ebx,DWORD PTR ds:@obj3:mouse_x                               ; fixup: num: 18084, src obj: 1, src ofs: 0x6993a, dst obj: 3, dst ofs: 0x25978
   6993e:	53                   	push   ebx
   6993f:	b9 10 f1 00 00       	mov    ecx,@obj3:hmouse_cpp_variable_1                              ; fixup: num: 18083, src obj: 1, src ofs: 0x69940, dst obj: 3, dst ofs: 0xf110
   69944:	bb 0a 00 00 00       	mov    ebx,0xa
   69949:	e8 d2 20 fd ff       	call   W?$ct:ANIMATION$n(pnaipnaiibiucucuc)_
   6994e:	c7 40 38 02 00 00 00 	mov    DWORD PTR [eax+0x38],0x2
   69955:	c6 40 0c 00          	mov    BYTE PTR [eax+0xc],0x0
   69959:	c6 80 30 11 00 00 00 	mov    BYTE PTR [eax+0x1130],0x0
   69960:	c6 40 50 01          	mov    BYTE PTR [eax+0x50],0x1
   69964:	c7 80 2c 11 00 00 00 00 00 00 	mov    DWORD PTR [eax+0x112c],0x0
   6996e:	c7 80 78 10 00 00 00 00 00 00 	mov    DWORD PTR [eax+0x1078],0x0
   69978:	c7 80 6c 10 00 00 09 00 00 00 	mov    DWORD PTR [eax+0x106c],0x9
   69982:	89 b0 28 11 00 00    	mov    DWORD PTR [eax+0x1128],esi
   69988:	5e                   	pop    esi
   69989:	59                   	pop    ecx
   6998a:	c3                   	ret    
   6998b:	8d 40 00             	lea    eax,[eax+0x0]
   6998e:	8b c9                	mov    ecx,ecx

;-------------------------------------------------
;  Function 'set_pointer'                        -
;-------------------------------------------------
set_pointer:
   69990:	53                   	push   ebx
   69991:	51                   	push   ecx
   69992:	89 d3                	mov    ebx,edx
   69994:	3b 98 2c 11 00 00    	cmp    ebx,DWORD PTR [eax+0x112c]
   6999a:	74 38                	je     set_pointer_branch_1
   6999c:	89 d9                	mov    ecx,ebx
   6999e:	8d 14 8d 00 00 00 00 	lea    edx,[ecx*4+0x0]
   699a5:	c6 80 30 11 00 00 00 	mov    BYTE PTR [eax+0x1130],0x0
   699ac:	01 ca                	add    edx,ecx
   699ae:	c6 40 50 01          	mov    BYTE PTR [eax+0x50],0x1
   699b2:	01 d2                	add    edx,edx
   699b4:	89 90 78 10 00 00    	mov    DWORD PTR [eax+0x1078],edx
   699ba:	83 c2 09             	add    edx,0x9
   699bd:	89 90 6c 10 00 00    	mov    DWORD PTR [eax+0x106c],edx
   699c3:	8b 90 78 10 00 00    	mov    edx,DWORD PTR [eax+0x1078]
   699c9:	89 98 2c 11 00 00    	mov    DWORD PTR [eax+0x112c],ebx
   699cf:	e8 cc 2e fd ff       	call   go_to_frame_mod_76
set_pointer_branch_1:
   699d4:	59                   	pop    ecx
   699d5:	5b                   	pop    ebx
   699d6:	c3                   	ret    
   699d7:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   699dd:	8d 52 00             	lea    edx,[edx+0x0]

;-------------------------------------------------
;  Function 'update_mod_90'                      -
;-------------------------------------------------
update_mod_90:
   699e0:	53                   	push   ebx
   699e1:	51                   	push   ecx
   699e2:	52                   	push   edx
   699e3:	89 c1                	mov    ecx,eax
   699e5:	68 00 00 c8 c2       	push   0xc2c80000
   699ea:	8b 1d 7c 59 02 00    	mov    ebx,DWORD PTR ds:@obj3:mouse_y                               ; fixup: num: 17969, src obj: 1, src ofs: 0x699ec, dst obj: 3, dst ofs: 0x2597c
   699f0:	8b 15 78 59 02 00    	mov    edx,DWORD PTR ds:@obj3:mouse_x                               ; fixup: num: 18086, src obj: 1, src ofs: 0x699f2, dst obj: 3, dst ofs: 0x25978
   699f6:	e8 65 2e fd ff       	call   move_mod_76
   699fb:	89 c8                	mov    eax,ecx
   699fd:	e8 de 30 fd ff       	call   update_mod_76
   69a02:	5a                   	pop    edx
   69a03:	59                   	pop    ecx
   69a04:	5b                   	pop    ebx
   69a05:	c3                   	ret    
;-------------------------------------------------
;  Bad code 90 (zero after ret):                 -
;-------------------------------------------------
;  69a04:	5b                   	pop    ebx
;  69a05:	c3                   	ret    
;  69a06:	00 00                	add    BYTE PTR [eax],al
;  69a08:	00 00                	add    BYTE PTR [eax],al
;-------------------------------------------------
;  Padding data (10 bytes):                      -
;-------------------------------------------------
   69a06:	00 00 00 00 00 00 .. 	db     10 dup(0x00)
;-------------------------------------------------
;  End of bad code 90                            -
;-------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 90 (D:\SOURCE\hmouse.cpp)                                     -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 90: D:\SOURCE\hmouse.cpp                                             -
;                                                                              -
;-------------------------------------------------------------------------------
hmouse_cpp_variable_1:
    f110:	4d 4f 55 53 45 00    	db     "MOUSE",0x00
    f116:	00 00                	db     2 dup(0x00)                                                  ; dec:   0, chr: '\0'

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 90 (D:\SOURCE\hmouse.cpp)                                     -
;                                                                              -
;-------------------------------------------------------------------------------