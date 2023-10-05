
main.exe:     file format pei-x86-64


Disassembly of section .text:

0000000000401000 <__mingw_invalidParameterHandler>:
  401000:	c3                   	retq   
  401001:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401006:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40100d:	00 00 00 

0000000000401010 <pre_c_init>:
  401010:	48 83 ec 28          	sub    $0x28,%rsp
  401014:	48 8b 05 a5 34 00 00 	mov    0x34a5(%rip),%rax        # 4044c0 <.refptr.mingw_initltsdrot_force>
  40101b:	31 d2                	xor    %edx,%edx
  40101d:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  401023:	48 8b 05 a6 34 00 00 	mov    0x34a6(%rip),%rax        # 4044d0 <.refptr.mingw_initltsdyn_force>
  40102a:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  401030:	48 8b 05 a9 34 00 00 	mov    0x34a9(%rip),%rax        # 4044e0 <.refptr.mingw_initltssuo_force>
  401037:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  40103d:	48 8b 05 6c 34 00 00 	mov    0x346c(%rip),%rax        # 4044b0 <.refptr.mingw_initcharmax>
  401044:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  40104a:	48 8b 05 4f 33 00 00 	mov    0x334f(%rip),%rax        # 4043a0 <.refptr.__image_base__>
  401051:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
  401056:	74 58                	je     4010b0 <pre_c_init+0xa0>
  401058:	48 8b 05 41 34 00 00 	mov    0x3441(%rip),%rax        # 4044a0 <.refptr.mingw_app_type>
  40105f:	89 15 a3 5f 00 00    	mov    %edx,0x5fa3(%rip)        # 407008 <managedapp>
  401065:	8b 00                	mov    (%rax),%eax
  401067:	85 c0                	test   %eax,%eax
  401069:	74 35                	je     4010a0 <pre_c_init+0x90>
  40106b:	b9 02 00 00 00       	mov    $0x2,%ecx
  401070:	e8 5b 1b 00 00       	callq  402bd0 <__set_app_type>
  401075:	e8 c6 1b 00 00       	callq  402c40 <__p__fmode>
  40107a:	48 8b 15 df 33 00 00 	mov    0x33df(%rip),%rdx        # 404460 <.refptr._fmode>
  401081:	8b 12                	mov    (%rdx),%edx
  401083:	89 10                	mov    %edx,(%rax)
  401085:	e8 d6 06 00 00       	callq  401760 <_setargv>
  40108a:	48 8b 05 bf 32 00 00 	mov    0x32bf(%rip),%rax        # 404350 <.refptr._MINGW_INSTALL_DEBUG_MATHERR>
  401091:	83 38 01             	cmpl   $0x1,(%rax)
  401094:	74 5a                	je     4010f0 <pre_c_init+0xe0>
  401096:	31 c0                	xor    %eax,%eax
  401098:	48 83 c4 28          	add    $0x28,%rsp
  40109c:	c3                   	retq   
  40109d:	0f 1f 00             	nopl   (%rax)
  4010a0:	b9 01 00 00 00       	mov    $0x1,%ecx
  4010a5:	e8 26 1b 00 00       	callq  402bd0 <__set_app_type>
  4010aa:	eb c9                	jmp    401075 <pre_c_init+0x65>
  4010ac:	0f 1f 40 00          	nopl   0x0(%rax)
  4010b0:	48 63 48 3c          	movslq 0x3c(%rax),%rcx
  4010b4:	48 01 c8             	add    %rcx,%rax
  4010b7:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
  4010bd:	75 99                	jne    401058 <pre_c_init+0x48>
  4010bf:	0f b7 48 18          	movzwl 0x18(%rax),%ecx
  4010c3:	66 81 f9 0b 01       	cmp    $0x10b,%cx
  4010c8:	74 39                	je     401103 <pre_c_init+0xf3>
  4010ca:	66 81 f9 0b 02       	cmp    $0x20b,%cx
  4010cf:	75 87                	jne    401058 <pre_c_init+0x48>
  4010d1:	83 b8 84 00 00 00 0e 	cmpl   $0xe,0x84(%rax)
  4010d8:	0f 86 7a ff ff ff    	jbe    401058 <pre_c_init+0x48>
  4010de:	8b 88 f8 00 00 00    	mov    0xf8(%rax),%ecx
  4010e4:	31 d2                	xor    %edx,%edx
  4010e6:	85 c9                	test   %ecx,%ecx
  4010e8:	0f 95 c2             	setne  %dl
  4010eb:	e9 68 ff ff ff       	jmpq   401058 <pre_c_init+0x48>
  4010f0:	48 8d 0d 79 09 00 00 	lea    0x979(%rip),%rcx        # 401a70 <_matherr>
  4010f7:	e8 64 09 00 00       	callq  401a60 <__mingw_setusermatherr>
  4010fc:	31 c0                	xor    %eax,%eax
  4010fe:	48 83 c4 28          	add    $0x28,%rsp
  401102:	c3                   	retq   
  401103:	83 78 74 0e          	cmpl   $0xe,0x74(%rax)
  401107:	0f 86 4b ff ff ff    	jbe    401058 <pre_c_init+0x48>
  40110d:	44 8b 80 e8 00 00 00 	mov    0xe8(%rax),%r8d
  401114:	31 d2                	xor    %edx,%edx
  401116:	45 85 c0             	test   %r8d,%r8d
  401119:	0f 95 c2             	setne  %dl
  40111c:	e9 37 ff ff ff       	jmpq   401058 <pre_c_init+0x48>
  401121:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401126:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40112d:	00 00 00 

0000000000401130 <pre_cpp_init>:
  401130:	48 83 ec 38          	sub    $0x38,%rsp
  401134:	48 8b 05 55 33 00 00 	mov    0x3355(%rip),%rax        # 404490 <.refptr._newmode>
  40113b:	4c 8d 05 ce 5e 00 00 	lea    0x5ece(%rip),%r8        # 407010 <envp>
  401142:	48 8d 15 cf 5e 00 00 	lea    0x5ecf(%rip),%rdx        # 407018 <argv>
  401149:	48 8d 0d d0 5e 00 00 	lea    0x5ed0(%rip),%rcx        # 407020 <argc>
  401150:	8b 00                	mov    (%rax),%eax
  401152:	89 05 a8 5e 00 00    	mov    %eax,0x5ea8(%rip)        # 407000 <__bss_start__>
  401158:	48 8d 05 a1 5e 00 00 	lea    0x5ea1(%rip),%rax        # 407000 <__bss_start__>
  40115f:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  401164:	48 8b 05 e5 32 00 00 	mov    0x32e5(%rip),%rax        # 404450 <.refptr._dowildcard>
  40116b:	44 8b 08             	mov    (%rax),%r9d
  40116e:	e8 6d 1a 00 00       	callq  402be0 <__getmainargs>
  401173:	90                   	nop
  401174:	48 83 c4 38          	add    $0x38,%rsp
  401178:	c3                   	retq   
  401179:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000401180 <__tmainCRTStartup>:
  401180:	41 55                	push   %r13
  401182:	41 54                	push   %r12
  401184:	55                   	push   %rbp
  401185:	57                   	push   %rdi
  401186:	56                   	push   %rsi
  401187:	53                   	push   %rbx
  401188:	48 81 ec 98 00 00 00 	sub    $0x98,%rsp
  40118f:	31 c0                	xor    %eax,%eax
  401191:	b9 0d 00 00 00       	mov    $0xd,%ecx
  401196:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
  40119b:	48 89 d7             	mov    %rdx,%rdi
  40119e:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  4011a1:	48 8b 3d f8 32 00 00 	mov    0x32f8(%rip),%rdi        # 4044a0 <.refptr.mingw_app_type>
  4011a8:	44 8b 0f             	mov    (%rdi),%r9d
  4011ab:	45 85 c9             	test   %r9d,%r9d
  4011ae:	0f 85 bc 02 00 00    	jne    401470 <__tmainCRTStartup+0x2f0>
  4011b4:	65 48 8b 04 25 30 00 	mov    %gs:0x30,%rax
  4011bb:	00 00 
  4011bd:	48 8b 1d 2c 32 00 00 	mov    0x322c(%rip),%rbx        # 4043f0 <.refptr.__native_startup_lock>
  4011c4:	31 ed                	xor    %ebp,%ebp
  4011c6:	48 8b 70 08          	mov    0x8(%rax),%rsi
  4011ca:	4c 8b 25 8b 70 00 00 	mov    0x708b(%rip),%r12        # 40825c <__imp_Sleep>
  4011d1:	eb 11                	jmp    4011e4 <__tmainCRTStartup+0x64>
  4011d3:	48 39 c6             	cmp    %rax,%rsi
  4011d6:	0f 84 34 02 00 00    	je     401410 <__tmainCRTStartup+0x290>
  4011dc:	b9 e8 03 00 00       	mov    $0x3e8,%ecx
  4011e1:	41 ff d4             	callq  *%r12
  4011e4:	48 89 e8             	mov    %rbp,%rax
  4011e7:	f0 48 0f b1 33       	lock cmpxchg %rsi,(%rbx)
  4011ec:	48 85 c0             	test   %rax,%rax
  4011ef:	75 e2                	jne    4011d3 <__tmainCRTStartup+0x53>
  4011f1:	48 8b 35 08 32 00 00 	mov    0x3208(%rip),%rsi        # 404400 <.refptr.__native_startup_state>
  4011f8:	31 ed                	xor    %ebp,%ebp
  4011fa:	8b 06                	mov    (%rsi),%eax
  4011fc:	83 f8 01             	cmp    $0x1,%eax
  4011ff:	0f 84 22 02 00 00    	je     401427 <__tmainCRTStartup+0x2a7>
  401205:	8b 06                	mov    (%rsi),%eax
  401207:	85 c0                	test   %eax,%eax
  401209:	0f 84 71 02 00 00    	je     401480 <__tmainCRTStartup+0x300>
  40120f:	c7 05 eb 5d 00 00 01 	movl   $0x1,0x5deb(%rip)        # 407004 <has_cctor>
  401216:	00 00 00 
  401219:	8b 06                	mov    (%rsi),%eax
  40121b:	83 f8 01             	cmp    $0x1,%eax
  40121e:	0f 84 18 02 00 00    	je     40143c <__tmainCRTStartup+0x2bc>
  401224:	85 ed                	test   %ebp,%ebp
  401226:	0f 84 31 02 00 00    	je     40145d <__tmainCRTStartup+0x2dd>
  40122c:	48 8b 05 5d 31 00 00 	mov    0x315d(%rip),%rax        # 404390 <.refptr.__dyn_tls_init_callback>
  401233:	48 8b 00             	mov    (%rax),%rax
  401236:	48 85 c0             	test   %rax,%rax
  401239:	74 0c                	je     401247 <__tmainCRTStartup+0xc7>
  40123b:	45 31 c0             	xor    %r8d,%r8d
  40123e:	ba 02 00 00 00       	mov    $0x2,%edx
  401243:	31 c9                	xor    %ecx,%ecx
  401245:	ff d0                	callq  *%rax
  401247:	e8 24 0b 00 00       	callq  401d70 <_pei386_runtime_relocator>
  40124c:	48 8d 0d 6d 10 00 00 	lea    0x106d(%rip),%rcx        # 4022c0 <_gnu_exception_handler>
  401253:	ff 15 fb 6f 00 00    	callq  *0x6ffb(%rip)        # 408254 <__imp_SetUnhandledExceptionFilter>
  401259:	48 8b 15 80 31 00 00 	mov    0x3180(%rip),%rdx        # 4043e0 <.refptr.__mingw_oldexcpt_handler>
  401260:	48 89 02             	mov    %rax,(%rdx)
  401263:	e8 68 0f 00 00       	callq  4021d0 <__mingw_init_ehandler>
  401268:	48 8d 0d 91 fd ff ff 	lea    -0x26f(%rip),%rcx        # 401000 <__mingw_invalidParameterHandler>
  40126f:	e8 ac 19 00 00       	callq  402c20 <_set_invalid_parameter_handler>
  401274:	e8 f7 08 00 00       	callq  401b70 <_fpreset>
  401279:	48 8b 05 20 31 00 00 	mov    0x3120(%rip),%rax        # 4043a0 <.refptr.__image_base__>
  401280:	48 89 05 e1 66 00 00 	mov    %rax,0x66e1(%rip)        # 407968 <__mingw_winmain_hInstance>
  401287:	e8 a4 19 00 00       	callq  402c30 <__p__acmdln>
  40128c:	31 c9                	xor    %ecx,%ecx
  40128e:	48 8b 00             	mov    (%rax),%rax
  401291:	48 85 c0             	test   %rax,%rax
  401294:	75 1c                	jne    4012b2 <__tmainCRTStartup+0x132>
  401296:	eb 5f                	jmp    4012f7 <__tmainCRTStartup+0x177>
  401298:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40129f:	00 
  4012a0:	84 d2                	test   %dl,%dl
  4012a2:	74 2c                	je     4012d0 <__tmainCRTStartup+0x150>
  4012a4:	83 e1 01             	and    $0x1,%ecx
  4012a7:	74 27                	je     4012d0 <__tmainCRTStartup+0x150>
  4012a9:	b9 01 00 00 00       	mov    $0x1,%ecx
  4012ae:	48 83 c0 01          	add    $0x1,%rax
  4012b2:	0f b6 10             	movzbl (%rax),%edx
  4012b5:	80 fa 20             	cmp    $0x20,%dl
  4012b8:	7e e6                	jle    4012a0 <__tmainCRTStartup+0x120>
  4012ba:	41 89 c8             	mov    %ecx,%r8d
  4012bd:	41 83 f0 01          	xor    $0x1,%r8d
  4012c1:	80 fa 22             	cmp    $0x22,%dl
  4012c4:	41 0f 44 c8          	cmove  %r8d,%ecx
  4012c8:	eb e4                	jmp    4012ae <__tmainCRTStartup+0x12e>
  4012ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4012d0:	84 d2                	test   %dl,%dl
  4012d2:	75 11                	jne    4012e5 <__tmainCRTStartup+0x165>
  4012d4:	eb 1a                	jmp    4012f0 <__tmainCRTStartup+0x170>
  4012d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4012dd:	00 00 00 
  4012e0:	80 fa 20             	cmp    $0x20,%dl
  4012e3:	7f 0b                	jg     4012f0 <__tmainCRTStartup+0x170>
  4012e5:	48 83 c0 01          	add    $0x1,%rax
  4012e9:	0f b6 10             	movzbl (%rax),%edx
  4012ec:	84 d2                	test   %dl,%dl
  4012ee:	75 f0                	jne    4012e0 <__tmainCRTStartup+0x160>
  4012f0:	48 89 05 69 66 00 00 	mov    %rax,0x6669(%rip)        # 407960 <__mingw_winmain_lpCmdLine>
  4012f7:	44 8b 07             	mov    (%rdi),%r8d
  4012fa:	45 85 c0             	test   %r8d,%r8d
  4012fd:	74 16                	je     401315 <__tmainCRTStartup+0x195>
  4012ff:	f6 44 24 5c 01       	testb  $0x1,0x5c(%rsp)
  401304:	b8 0a 00 00 00       	mov    $0xa,%eax
  401309:	0f 85 f1 00 00 00    	jne    401400 <__tmainCRTStartup+0x280>
  40130f:	89 05 eb 1c 00 00    	mov    %eax,0x1ceb(%rip)        # 403000 <__data_start__>
  401315:	8b 1d 05 5d 00 00    	mov    0x5d05(%rip),%ebx        # 407020 <argc>
  40131b:	44 8d 63 01          	lea    0x1(%rbx),%r12d
  40131f:	4d 63 e4             	movslq %r12d,%r12
  401322:	49 c1 e4 03          	shl    $0x3,%r12
  401326:	4c 89 e1             	mov    %r12,%rcx
  401329:	e8 42 18 00 00       	callq  402b70 <malloc>
  40132e:	85 db                	test   %ebx,%ebx
  401330:	48 8b 3d e1 5c 00 00 	mov    0x5ce1(%rip),%rdi        # 407018 <argv>
  401337:	48 89 c5             	mov    %rax,%rbp
  40133a:	7e 4b                	jle    401387 <__tmainCRTStartup+0x207>
  40133c:	8d 43 ff             	lea    -0x1(%rbx),%eax
  40133f:	31 db                	xor    %ebx,%ebx
  401341:	4c 8d 2c c5 08 00 00 	lea    0x8(,%rax,8),%r13
  401348:	00 
  401349:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401350:	48 8b 0c 1f          	mov    (%rdi,%rbx,1),%rcx
  401354:	e8 f7 17 00 00       	callq  402b50 <strlen>
  401359:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40135d:	48 89 f1             	mov    %rsi,%rcx
  401360:	e8 0b 18 00 00       	callq  402b70 <malloc>
  401365:	49 89 f0             	mov    %rsi,%r8
  401368:	48 89 44 1d 00       	mov    %rax,0x0(%rbp,%rbx,1)
  40136d:	48 8b 14 1f          	mov    (%rdi,%rbx,1),%rdx
  401371:	48 89 c1             	mov    %rax,%rcx
  401374:	48 83 c3 08          	add    $0x8,%rbx
  401378:	e8 eb 17 00 00       	callq  402b68 <memcpy>
  40137d:	49 39 dd             	cmp    %rbx,%r13
  401380:	75 ce                	jne    401350 <__tmainCRTStartup+0x1d0>
  401382:	4a 8d 44 25 f8       	lea    -0x8(%rbp,%r12,1),%rax
  401387:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
  40138e:	48 89 2d 83 5c 00 00 	mov    %rbp,0x5c83(%rip)        # 407018 <argv>
  401395:	e8 96 03 00 00       	callq  401730 <__main>
  40139a:	48 8b 05 0f 30 00 00 	mov    0x300f(%rip),%rax        # 4043b0 <.refptr.__imp___initenv>
  4013a1:	48 8b 15 68 5c 00 00 	mov    0x5c68(%rip),%rdx        # 407010 <envp>
  4013a8:	8b 0d 72 5c 00 00    	mov    0x5c72(%rip),%ecx        # 407020 <argc>
  4013ae:	48 8b 00             	mov    (%rax),%rax
  4013b1:	48 89 10             	mov    %rdx,(%rax)
  4013b4:	4c 8b 05 55 5c 00 00 	mov    0x5c55(%rip),%r8        # 407010 <envp>
  4013bb:	48 8b 15 56 5c 00 00 	mov    0x5c56(%rip),%rdx        # 407018 <argv>
  4013c2:	e8 89 01 00 00       	callq  401550 <main>
  4013c7:	8b 0d 3b 5c 00 00    	mov    0x5c3b(%rip),%ecx        # 407008 <managedapp>
  4013cd:	89 05 39 5c 00 00    	mov    %eax,0x5c39(%rip)        # 40700c <mainret>
  4013d3:	85 c9                	test   %ecx,%ecx
  4013d5:	0f 84 c3 00 00 00    	je     40149e <__tmainCRTStartup+0x31e>
  4013db:	8b 15 23 5c 00 00    	mov    0x5c23(%rip),%edx        # 407004 <has_cctor>
  4013e1:	85 d2                	test   %edx,%edx
  4013e3:	75 0b                	jne    4013f0 <__tmainCRTStartup+0x270>
  4013e5:	e8 ce 17 00 00       	callq  402bb8 <_cexit>
  4013ea:	8b 05 1c 5c 00 00    	mov    0x5c1c(%rip),%eax        # 40700c <mainret>
  4013f0:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
  4013f7:	5b                   	pop    %rbx
  4013f8:	5e                   	pop    %rsi
  4013f9:	5f                   	pop    %rdi
  4013fa:	5d                   	pop    %rbp
  4013fb:	41 5c                	pop    %r12
  4013fd:	41 5d                	pop    %r13
  4013ff:	c3                   	retq   
  401400:	0f b7 44 24 60       	movzwl 0x60(%rsp),%eax
  401405:	e9 05 ff ff ff       	jmpq   40130f <__tmainCRTStartup+0x18f>
  40140a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401410:	48 8b 35 e9 2f 00 00 	mov    0x2fe9(%rip),%rsi        # 404400 <.refptr.__native_startup_state>
  401417:	bd 01 00 00 00       	mov    $0x1,%ebp
  40141c:	8b 06                	mov    (%rsi),%eax
  40141e:	83 f8 01             	cmp    $0x1,%eax
  401421:	0f 85 de fd ff ff    	jne    401205 <__tmainCRTStartup+0x85>
  401427:	b9 1f 00 00 00       	mov    $0x1f,%ecx
  40142c:	e8 8f 17 00 00       	callq  402bc0 <_amsg_exit>
  401431:	8b 06                	mov    (%rsi),%eax
  401433:	83 f8 01             	cmp    $0x1,%eax
  401436:	0f 85 e8 fd ff ff    	jne    401224 <__tmainCRTStartup+0xa4>
  40143c:	48 8b 15 dd 2f 00 00 	mov    0x2fdd(%rip),%rdx        # 404420 <.refptr.__xc_z>
  401443:	48 8b 0d c6 2f 00 00 	mov    0x2fc6(%rip),%rcx        # 404410 <.refptr.__xc_a>
  40144a:	e8 61 17 00 00       	callq  402bb0 <_initterm>
  40144f:	85 ed                	test   %ebp,%ebp
  401451:	c7 06 02 00 00 00    	movl   $0x2,(%rsi)
  401457:	0f 85 cf fd ff ff    	jne    40122c <__tmainCRTStartup+0xac>
  40145d:	31 c0                	xor    %eax,%eax
  40145f:	48 87 03             	xchg   %rax,(%rbx)
  401462:	e9 c5 fd ff ff       	jmpq   40122c <__tmainCRTStartup+0xac>
  401467:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40146e:	00 00 
  401470:	48 89 d1             	mov    %rdx,%rcx
  401473:	ff 15 8b 6d 00 00    	callq  *0x6d8b(%rip)        # 408204 <__imp_GetStartupInfoA>
  401479:	e9 36 fd ff ff       	jmpq   4011b4 <__tmainCRTStartup+0x34>
  40147e:	66 90                	xchg   %ax,%ax
  401480:	48 8b 15 b9 2f 00 00 	mov    0x2fb9(%rip),%rdx        # 404440 <.refptr.__xi_z>
  401487:	c7 06 01 00 00 00    	movl   $0x1,(%rsi)
  40148d:	48 8b 0d 9c 2f 00 00 	mov    0x2f9c(%rip),%rcx        # 404430 <.refptr.__xi_a>
  401494:	e8 17 17 00 00       	callq  402bb0 <_initterm>
  401499:	e9 7b fd ff ff       	jmpq   401219 <__tmainCRTStartup+0x99>
  40149e:	89 c1                	mov    %eax,%ecx
  4014a0:	e8 eb 16 00 00       	callq  402b90 <exit>
  4014a5:	90                   	nop
  4014a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4014ad:	00 00 00 

00000000004014b0 <WinMainCRTStartup>:
  4014b0:	48 83 ec 28          	sub    $0x28,%rsp

00000000004014b4 <.l_startw>:
  4014b4:	48 8b 05 e5 2f 00 00 	mov    0x2fe5(%rip),%rax        # 4044a0 <.refptr.mingw_app_type>
  4014bb:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  4014c1:	e8 aa 02 00 00       	callq  401770 <__security_init_cookie>
  4014c6:	e8 b5 fc ff ff       	callq  401180 <__tmainCRTStartup>
  4014cb:	90                   	nop

00000000004014cc <.l_endw>:
  4014cc:	90                   	nop
  4014cd:	48 83 c4 28          	add    $0x28,%rsp
  4014d1:	c3                   	retq   
  4014d2:	0f 1f 40 00          	nopl   0x0(%rax)
  4014d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4014dd:	00 00 00 

00000000004014e0 <mainCRTStartup>:
  4014e0:	48 83 ec 28          	sub    $0x28,%rsp

00000000004014e4 <.l_start>:
  4014e4:	48 8b 05 b5 2f 00 00 	mov    0x2fb5(%rip),%rax        # 4044a0 <.refptr.mingw_app_type>
  4014eb:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
  4014f1:	e8 7a 02 00 00       	callq  401770 <__security_init_cookie>
  4014f6:	e8 85 fc ff ff       	callq  401180 <__tmainCRTStartup>
  4014fb:	90                   	nop

00000000004014fc <.l_end>:
  4014fc:	90                   	nop
  4014fd:	48 83 c4 28          	add    $0x28,%rsp
  401501:	c3                   	retq   
  401502:	0f 1f 40 00          	nopl   0x0(%rax)
  401506:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40150d:	00 00 00 

0000000000401510 <atexit>:
  401510:	48 83 ec 28          	sub    $0x28,%rsp
  401514:	e8 8f 16 00 00       	callq  402ba8 <_onexit>
  401519:	48 85 c0             	test   %rax,%rax
  40151c:	0f 94 c0             	sete   %al
  40151f:	0f b6 c0             	movzbl %al,%eax
  401522:	f7 d8                	neg    %eax
  401524:	48 83 c4 28          	add    $0x28,%rsp
  401528:	c3                   	retq   
  401529:	90                   	nop
  40152a:	90                   	nop
  40152b:	90                   	nop
  40152c:	90                   	nop
  40152d:	90                   	nop
  40152e:	90                   	nop
  40152f:	90                   	nop

0000000000401530 <__gcc_register_frame>:
  401530:	48 8d 0d 09 00 00 00 	lea    0x9(%rip),%rcx        # 401540 <__gcc_deregister_frame>
  401537:	e9 d4 ff ff ff       	jmpq   401510 <atexit>
  40153c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401540 <__gcc_deregister_frame>:
  401540:	c3                   	retq   
  401541:	90                   	nop
  401542:	90                   	nop
  401543:	90                   	nop
  401544:	90                   	nop
  401545:	90                   	nop
  401546:	90                   	nop
  401547:	90                   	nop
  401548:	90                   	nop
  401549:	90                   	nop
  40154a:	90                   	nop
  40154b:	90                   	nop
  40154c:	90                   	nop
  40154d:	90                   	nop
  40154e:	90                   	nop
  40154f:	90                   	nop

0000000000401550 <main>:
  401550:	55                   	push   %rbp
  401551:	48 89 e5             	mov    %rsp,%rbp
  401554:	48 83 ec 30          	sub    $0x30,%rsp
  401558:	e8 d3 01 00 00       	callq  401730 <__main>
  40155d:	b9 64 00 00 00       	mov    $0x64,%ecx
  401562:	e8 39 00 00 00       	callq  4015a0 <foo>
  401567:	89 45 fc             	mov    %eax,-0x4(%rbp)
  40156a:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40156d:	89 c1                	mov    %eax,%ecx
  40156f:	e8 3c 00 00 00       	callq  4015b0 <incr>
  401574:	89 45 fc             	mov    %eax,-0x4(%rbp)
  401577:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40157a:	83 c0 7c             	add    $0x7c,%eax
  40157d:	89 c2                	mov    %eax,%edx
  40157f:	48 8d 0d 7a 2a 00 00 	lea    0x2a7a(%rip),%rcx        # 404000 <.rdata>
  401586:	e8 d5 15 00 00       	callq  402b60 <printf>
  40158b:	e8 30 00 00 00       	callq  4015c0 <on_blue_led>
  401590:	b8 00 00 00 00       	mov    $0x0,%eax
  401595:	48 83 c4 30          	add    $0x30,%rsp
  401599:	5d                   	pop    %rbp
  40159a:	c3                   	retq   
  40159b:	90                   	nop
  40159c:	90                   	nop
  40159d:	90                   	nop
  40159e:	90                   	nop
  40159f:	90                   	nop

00000000004015a0 <foo>:
  4015a0:	55                   	push   %rbp
  4015a1:	48 89 e5             	mov    %rsp,%rbp
  4015a4:	89 4d 10             	mov    %ecx,0x10(%rbp)
  4015a7:	8b 45 10             	mov    0x10(%rbp),%eax
  4015aa:	83 c0 01             	add    $0x1,%eax
  4015ad:	5d                   	pop    %rbp
  4015ae:	c3                   	retq   
  4015af:	90                   	nop

00000000004015b0 <incr>:
  4015b0:	55                   	push   %rbp
  4015b1:	48 89 e5             	mov    %rsp,%rbp
  4015b4:	89 4d 10             	mov    %ecx,0x10(%rbp)
  4015b7:	8b 45 10             	mov    0x10(%rbp),%eax
  4015ba:	83 c0 01             	add    $0x1,%eax
  4015bd:	5d                   	pop    %rbp
  4015be:	c3                   	retq   
  4015bf:	90                   	nop

00000000004015c0 <on_blue_led>:
  4015c0:	55                   	push   %rbp
  4015c1:	48 89 e5             	mov    %rsp,%rbp
  4015c4:	48 83 ec 20          	sub    $0x20,%rsp
  4015c8:	ba 01 00 00 00       	mov    $0x1,%edx
  4015cd:	b9 0e 00 00 00       	mov    $0xe,%ecx
  4015d2:	e8 79 00 00 00       	callq  401650 <drive_gpio>
  4015d7:	90                   	nop
  4015d8:	48 83 c4 20          	add    $0x20,%rsp
  4015dc:	5d                   	pop    %rbp
  4015dd:	c3                   	retq   

00000000004015de <off_blue_led>:
  4015de:	55                   	push   %rbp
  4015df:	48 89 e5             	mov    %rsp,%rbp
  4015e2:	48 83 ec 20          	sub    $0x20,%rsp
  4015e6:	ba 00 00 00 00       	mov    $0x0,%edx
  4015eb:	b9 0e 00 00 00       	mov    $0xe,%ecx
  4015f0:	e8 5b 00 00 00       	callq  401650 <drive_gpio>
  4015f5:	90                   	nop
  4015f6:	48 83 c4 20          	add    $0x20,%rsp
  4015fa:	5d                   	pop    %rbp
  4015fb:	c3                   	retq   

00000000004015fc <set_motor>:
  4015fc:	55                   	push   %rbp
  4015fd:	48 89 e5             	mov    %rsp,%rbp
  401600:	48 83 ec 20          	sub    $0x20,%rsp
  401604:	89 4d 10             	mov    %ecx,0x10(%rbp)
  401607:	8b 55 10             	mov    0x10(%rbp),%edx
  40160a:	b9 0a 00 00 00       	mov    $0xa,%ecx
  40160f:	e8 0c 00 00 00       	callq  401620 <set_pwm>
  401614:	90                   	nop
  401615:	48 83 c4 20          	add    $0x20,%rsp
  401619:	5d                   	pop    %rbp
  40161a:	c3                   	retq   
  40161b:	90                   	nop
  40161c:	90                   	nop
  40161d:	90                   	nop
  40161e:	90                   	nop
  40161f:	90                   	nop

0000000000401620 <set_pwm>:
  401620:	55                   	push   %rbp
  401621:	48 89 e5             	mov    %rsp,%rbp
  401624:	48 83 ec 20          	sub    $0x20,%rsp
  401628:	89 4d 10             	mov    %ecx,0x10(%rbp)
  40162b:	89 55 18             	mov    %edx,0x18(%rbp)
  40162e:	8b 45 18             	mov    0x18(%rbp),%eax
  401631:	41 89 c0             	mov    %eax,%r8d
  401634:	8b 55 10             	mov    0x10(%rbp),%edx
  401637:	48 8d 0d d2 29 00 00 	lea    0x29d2(%rip),%rcx        # 404010 <.rdata>
  40163e:	e8 1d 15 00 00       	callq  402b60 <printf>
  401643:	90                   	nop
  401644:	48 83 c4 20          	add    $0x20,%rsp
  401648:	5d                   	pop    %rbp
  401649:	c3                   	retq   
  40164a:	90                   	nop
  40164b:	90                   	nop
  40164c:	90                   	nop
  40164d:	90                   	nop
  40164e:	90                   	nop
  40164f:	90                   	nop

0000000000401650 <drive_gpio>:
  401650:	55                   	push   %rbp
  401651:	48 89 e5             	mov    %rsp,%rbp
  401654:	48 83 ec 20          	sub    $0x20,%rsp
  401658:	89 4d 10             	mov    %ecx,0x10(%rbp)
  40165b:	89 55 18             	mov    %edx,0x18(%rbp)
  40165e:	8b 45 18             	mov    0x18(%rbp),%eax
  401661:	41 89 c0             	mov    %eax,%r8d
  401664:	8b 55 10             	mov    0x10(%rbp),%edx
  401667:	48 8d 0d d2 29 00 00 	lea    0x29d2(%rip),%rcx        # 404040 <.rdata>
  40166e:	e8 ed 14 00 00       	callq  402b60 <printf>
  401673:	90                   	nop
  401674:	48 83 c4 20          	add    $0x20,%rsp
  401678:	5d                   	pop    %rbp
  401679:	c3                   	retq   
  40167a:	90                   	nop
  40167b:	90                   	nop
  40167c:	90                   	nop
  40167d:	90                   	nop
  40167e:	90                   	nop
  40167f:	90                   	nop

0000000000401680 <__do_global_dtors>:
  401680:	48 83 ec 28          	sub    $0x28,%rsp
  401684:	48 8b 05 85 19 00 00 	mov    0x1985(%rip),%rax        # 403010 <p.93846>
  40168b:	48 8b 00             	mov    (%rax),%rax
  40168e:	48 85 c0             	test   %rax,%rax
  401691:	74 1d                	je     4016b0 <__do_global_dtors+0x30>
  401693:	ff d0                	callq  *%rax
  401695:	48 8b 05 74 19 00 00 	mov    0x1974(%rip),%rax        # 403010 <p.93846>
  40169c:	48 8d 50 08          	lea    0x8(%rax),%rdx
  4016a0:	48 8b 40 08          	mov    0x8(%rax),%rax
  4016a4:	48 89 15 65 19 00 00 	mov    %rdx,0x1965(%rip)        # 403010 <p.93846>
  4016ab:	48 85 c0             	test   %rax,%rax
  4016ae:	75 e3                	jne    401693 <__do_global_dtors+0x13>
  4016b0:	48 83 c4 28          	add    $0x28,%rsp
  4016b4:	c3                   	retq   
  4016b5:	90                   	nop
  4016b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4016bd:	00 00 00 

00000000004016c0 <__do_global_ctors>:
  4016c0:	56                   	push   %rsi
  4016c1:	53                   	push   %rbx
  4016c2:	48 83 ec 28          	sub    $0x28,%rsp
  4016c6:	48 8b 0d 93 2c 00 00 	mov    0x2c93(%rip),%rcx        # 404360 <.refptr.__CTOR_LIST__>
  4016cd:	48 8b 11             	mov    (%rcx),%rdx
  4016d0:	83 fa ff             	cmp    $0xffffffff,%edx
  4016d3:	89 d0                	mov    %edx,%eax
  4016d5:	74 39                	je     401710 <__do_global_ctors+0x50>
  4016d7:	85 c0                	test   %eax,%eax
  4016d9:	74 20                	je     4016fb <__do_global_ctors+0x3b>
  4016db:	89 c2                	mov    %eax,%edx
  4016dd:	83 e8 01             	sub    $0x1,%eax
  4016e0:	48 8d 1c d1          	lea    (%rcx,%rdx,8),%rbx
  4016e4:	48 29 c2             	sub    %rax,%rdx
  4016e7:	48 8d 74 d1 f8       	lea    -0x8(%rcx,%rdx,8),%rsi
  4016ec:	0f 1f 40 00          	nopl   0x0(%rax)
  4016f0:	ff 13                	callq  *(%rbx)
  4016f2:	48 83 eb 08          	sub    $0x8,%rbx
  4016f6:	48 39 f3             	cmp    %rsi,%rbx
  4016f9:	75 f5                	jne    4016f0 <__do_global_ctors+0x30>
  4016fb:	48 8d 0d 7e ff ff ff 	lea    -0x82(%rip),%rcx        # 401680 <__do_global_dtors>
  401702:	48 83 c4 28          	add    $0x28,%rsp
  401706:	5b                   	pop    %rbx
  401707:	5e                   	pop    %rsi
  401708:	e9 03 fe ff ff       	jmpq   401510 <atexit>
  40170d:	0f 1f 00             	nopl   (%rax)
  401710:	31 c0                	xor    %eax,%eax
  401712:	eb 02                	jmp    401716 <__do_global_ctors+0x56>
  401714:	89 d0                	mov    %edx,%eax
  401716:	44 8d 40 01          	lea    0x1(%rax),%r8d
  40171a:	4a 83 3c c1 00       	cmpq   $0x0,(%rcx,%r8,8)
  40171f:	4c 89 c2             	mov    %r8,%rdx
  401722:	75 f0                	jne    401714 <__do_global_ctors+0x54>
  401724:	eb b1                	jmp    4016d7 <__do_global_ctors+0x17>
  401726:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40172d:	00 00 00 

0000000000401730 <__main>:
  401730:	8b 05 fa 58 00 00    	mov    0x58fa(%rip),%eax        # 407030 <initialized>
  401736:	85 c0                	test   %eax,%eax
  401738:	74 06                	je     401740 <__main+0x10>
  40173a:	c3                   	retq   
  40173b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401740:	c7 05 e6 58 00 00 01 	movl   $0x1,0x58e6(%rip)        # 407030 <initialized>
  401747:	00 00 00 
  40174a:	e9 71 ff ff ff       	jmpq   4016c0 <__do_global_ctors>
  40174f:	90                   	nop

0000000000401750 <my_lconv_init>:
  401750:	48 ff 25 5d 6b 00 00 	rex.W jmpq *0x6b5d(%rip)        # 4082b4 <__imp___lconv_init>
  401757:	90                   	nop
  401758:	90                   	nop
  401759:	90                   	nop
  40175a:	90                   	nop
  40175b:	90                   	nop
  40175c:	90                   	nop
  40175d:	90                   	nop
  40175e:	90                   	nop
  40175f:	90                   	nop

0000000000401760 <_setargv>:
  401760:	31 c0                	xor    %eax,%eax
  401762:	c3                   	retq   
  401763:	90                   	nop
  401764:	90                   	nop
  401765:	90                   	nop
  401766:	90                   	nop
  401767:	90                   	nop
  401768:	90                   	nop
  401769:	90                   	nop
  40176a:	90                   	nop
  40176b:	90                   	nop
  40176c:	90                   	nop
  40176d:	90                   	nop
  40176e:	90                   	nop
  40176f:	90                   	nop

0000000000401770 <__security_init_cookie>:
  401770:	41 54                	push   %r12
  401772:	55                   	push   %rbp
  401773:	57                   	push   %rdi
  401774:	56                   	push   %rsi
  401775:	53                   	push   %rbx
  401776:	48 83 ec 30          	sub    $0x30,%rsp
  40177a:	48 8b 1d 2f 19 00 00 	mov    0x192f(%rip),%rbx        # 4030b0 <__security_cookie>
  401781:	48 b8 32 a2 df 2d 99 	movabs $0x2b992ddfa232,%rax
  401788:	2b 00 00 
  40178b:	48 39 c3             	cmp    %rax,%rbx
  40178e:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
  401795:	00 00 
  401797:	74 17                	je     4017b0 <__security_init_cookie+0x40>
  401799:	48 f7 d3             	not    %rbx
  40179c:	48 89 1d 1d 19 00 00 	mov    %rbx,0x191d(%rip)        # 4030c0 <__security_cookie_complement>
  4017a3:	48 83 c4 30          	add    $0x30,%rsp
  4017a7:	5b                   	pop    %rbx
  4017a8:	5e                   	pop    %rsi
  4017a9:	5f                   	pop    %rdi
  4017aa:	5d                   	pop    %rbp
  4017ab:	41 5c                	pop    %r12
  4017ad:	c3                   	retq   
  4017ae:	66 90                	xchg   %ax,%ax
  4017b0:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
  4017b5:	ff 15 51 6a 00 00    	callq  *0x6a51(%rip)        # 40820c <__imp_GetSystemTimeAsFileTime>
  4017bb:	48 8b 74 24 20       	mov    0x20(%rsp),%rsi
  4017c0:	ff 15 26 6a 00 00    	callq  *0x6a26(%rip)        # 4081ec <__imp_GetCurrentProcessId>
  4017c6:	41 89 c4             	mov    %eax,%r12d
  4017c9:	ff 15 25 6a 00 00    	callq  *0x6a25(%rip)        # 4081f4 <__imp_GetCurrentThreadId>
  4017cf:	89 c5                	mov    %eax,%ebp
  4017d1:	ff 15 3d 6a 00 00    	callq  *0x6a3d(%rip)        # 408214 <__imp_GetTickCount>
  4017d7:	48 8d 4c 24 28       	lea    0x28(%rsp),%rcx
  4017dc:	89 c7                	mov    %eax,%edi
  4017de:	ff 15 48 6a 00 00    	callq  *0x6a48(%rip)        # 40822c <__imp_QueryPerformanceCounter>
  4017e4:	48 33 74 24 28       	xor    0x28(%rsp),%rsi
  4017e9:	44 89 e0             	mov    %r12d,%eax
  4017ec:	48 ba ff ff ff ff ff 	movabs $0xffffffffffff,%rdx
  4017f3:	ff 00 00 
  4017f6:	48 31 f0             	xor    %rsi,%rax
  4017f9:	89 ee                	mov    %ebp,%esi
  4017fb:	48 31 c6             	xor    %rax,%rsi
  4017fe:	89 f8                	mov    %edi,%eax
  401800:	48 31 f0             	xor    %rsi,%rax
  401803:	48 21 d0             	and    %rdx,%rax
  401806:	48 39 d8             	cmp    %rbx,%rax
  401809:	74 25                	je     401830 <__security_init_cookie+0xc0>
  40180b:	48 89 c2             	mov    %rax,%rdx
  40180e:	48 f7 d2             	not    %rdx
  401811:	48 89 05 98 18 00 00 	mov    %rax,0x1898(%rip)        # 4030b0 <__security_cookie>
  401818:	48 89 15 a1 18 00 00 	mov    %rdx,0x18a1(%rip)        # 4030c0 <__security_cookie_complement>
  40181f:	48 83 c4 30          	add    $0x30,%rsp
  401823:	5b                   	pop    %rbx
  401824:	5e                   	pop    %rsi
  401825:	5f                   	pop    %rdi
  401826:	5d                   	pop    %rbp
  401827:	41 5c                	pop    %r12
  401829:	c3                   	retq   
  40182a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401830:	48 ba cc 5d 20 d2 66 	movabs $0xffffd466d2205dcc,%rdx
  401837:	d4 ff ff 
  40183a:	48 b8 33 a2 df 2d 99 	movabs $0x2b992ddfa233,%rax
  401841:	2b 00 00 
  401844:	eb cb                	jmp    401811 <__security_init_cookie+0xa1>
  401846:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40184d:	00 00 00 

0000000000401850 <__report_gsfailure>:
  401850:	55                   	push   %rbp
  401851:	56                   	push   %rsi
  401852:	53                   	push   %rbx
  401853:	48 89 e5             	mov    %rsp,%rbp
  401856:	48 83 ec 70          	sub    $0x70,%rsp
  40185a:	48 89 ce             	mov    %rcx,%rsi
  40185d:	48 8d 0d fc 57 00 00 	lea    0x57fc(%rip),%rcx        # 407060 <GS_ContextRecord>
  401864:	ff 15 d2 69 00 00    	callq  *0x69d2(%rip)        # 40823c <__imp_RtlCaptureContext>
  40186a:	48 8b 1d e7 58 00 00 	mov    0x58e7(%rip),%rbx        # 407158 <GS_ContextRecord+0xf8>
  401871:	48 8d 55 d8          	lea    -0x28(%rbp),%rdx
  401875:	45 31 c0             	xor    %r8d,%r8d
  401878:	48 89 d9             	mov    %rbx,%rcx
  40187b:	ff 15 c3 69 00 00    	callq  *0x69c3(%rip)        # 408244 <__imp_RtlLookupFunctionEntry>
  401881:	48 85 c0             	test   %rax,%rax
  401884:	0f 84 a3 00 00 00    	je     40192d <__report_gsfailure+0xdd>
  40188a:	48 8d 55 e0          	lea    -0x20(%rbp),%rdx
  40188e:	49 89 c1             	mov    %rax,%r9
  401891:	49 89 d8             	mov    %rbx,%r8
  401894:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
  40189b:	00 00 
  40189d:	48 8d 0d bc 57 00 00 	lea    0x57bc(%rip),%rcx        # 407060 <GS_ContextRecord>
  4018a4:	48 89 54 24 30       	mov    %rdx,0x30(%rsp)
  4018a9:	48 8d 55 e8          	lea    -0x18(%rbp),%rdx
  4018ad:	48 89 4c 24 20       	mov    %rcx,0x20(%rsp)
  4018b2:	31 c9                	xor    %ecx,%ecx
  4018b4:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
  4018b9:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  4018bd:	ff 15 89 69 00 00    	callq  *0x6989(%rip)        # 40824c <__imp_RtlVirtualUnwind>
  4018c3:	48 8b 05 8e 58 00 00 	mov    0x588e(%rip),%rax        # 407158 <GS_ContextRecord+0xf8>
  4018ca:	31 c9                	xor    %ecx,%ecx
  4018cc:	48 89 35 0d 58 00 00 	mov    %rsi,0x580d(%rip)        # 4070e0 <GS_ContextRecord+0x80>
  4018d3:	48 89 05 76 5c 00 00 	mov    %rax,0x5c76(%rip)        # 407550 <GS_ExceptionRecord+0x10>
  4018da:	48 b8 09 04 00 c0 01 	movabs $0x1c0000409,%rax
  4018e1:	00 00 00 
  4018e4:	48 89 05 55 5c 00 00 	mov    %rax,0x5c55(%rip)        # 407540 <GS_ExceptionRecord>
  4018eb:	48 8b 05 be 17 00 00 	mov    0x17be(%rip),%rax        # 4030b0 <__security_cookie>
  4018f2:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  4018f6:	48 8b 05 c3 17 00 00 	mov    0x17c3(%rip),%rax        # 4030c0 <__security_cookie_complement>
  4018fd:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401901:	ff 15 4d 69 00 00    	callq  *0x694d(%rip)        # 408254 <__imp_SetUnhandledExceptionFilter>
  401907:	48 8d 0d 62 27 00 00 	lea    0x2762(%rip),%rcx        # 404070 <GS_ExceptionPointers>
  40190e:	ff 15 60 69 00 00    	callq  *0x6960(%rip)        # 408274 <__imp_UnhandledExceptionFilter>
  401914:	ff 15 ca 68 00 00    	callq  *0x68ca(%rip)        # 4081e4 <__imp_GetCurrentProcess>
  40191a:	ba 09 04 00 c0       	mov    $0xc0000409,%edx
  40191f:	48 89 c1             	mov    %rax,%rcx
  401922:	ff 15 3c 69 00 00    	callq  *0x693c(%rip)        # 408264 <__imp_TerminateProcess>
  401928:	e8 73 12 00 00       	callq  402ba0 <abort>
  40192d:	48 8b 45 18          	mov    0x18(%rbp),%rax
  401931:	48 89 05 20 58 00 00 	mov    %rax,0x5820(%rip)        # 407158 <GS_ContextRecord+0xf8>
  401938:	48 8d 45 08          	lea    0x8(%rbp),%rax
  40193c:	48 89 05 b5 57 00 00 	mov    %rax,0x57b5(%rip)        # 4070f8 <GS_ContextRecord+0x98>
  401943:	e9 7b ff ff ff       	jmpq   4018c3 <__report_gsfailure+0x73>
  401948:	90                   	nop
  401949:	90                   	nop
  40194a:	90                   	nop
  40194b:	90                   	nop
  40194c:	90                   	nop
  40194d:	90                   	nop
  40194e:	90                   	nop
  40194f:	90                   	nop

0000000000401950 <__dyn_tls_dtor>:
  401950:	48 83 ec 28          	sub    $0x28,%rsp
  401954:	83 fa 03             	cmp    $0x3,%edx
  401957:	74 17                	je     401970 <__dyn_tls_dtor+0x20>
  401959:	85 d2                	test   %edx,%edx
  40195b:	74 13                	je     401970 <__dyn_tls_dtor+0x20>
  40195d:	b8 01 00 00 00       	mov    $0x1,%eax
  401962:	48 83 c4 28          	add    $0x28,%rsp
  401966:	c3                   	retq   
  401967:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40196e:	00 00 
  401970:	e8 cb 0c 00 00       	callq  402640 <__mingw_TLScallback>
  401975:	b8 01 00 00 00       	mov    $0x1,%eax
  40197a:	48 83 c4 28          	add    $0x28,%rsp
  40197e:	c3                   	retq   
  40197f:	90                   	nop

0000000000401980 <__dyn_tls_init>:
  401980:	56                   	push   %rsi
  401981:	53                   	push   %rbx
  401982:	48 83 ec 28          	sub    $0x28,%rsp
  401986:	48 8b 05 b3 29 00 00 	mov    0x29b3(%rip),%rax        # 404340 <.refptr._CRT_MT>
  40198d:	83 38 02             	cmpl   $0x2,(%rax)
  401990:	74 06                	je     401998 <__dyn_tls_init+0x18>
  401992:	c7 00 02 00 00 00    	movl   $0x2,(%rax)
  401998:	83 fa 02             	cmp    $0x2,%edx
  40199b:	74 13                	je     4019b0 <__dyn_tls_init+0x30>
  40199d:	83 fa 01             	cmp    $0x1,%edx
  4019a0:	74 40                	je     4019e2 <__dyn_tls_init+0x62>
  4019a2:	b8 01 00 00 00       	mov    $0x1,%eax
  4019a7:	48 83 c4 28          	add    $0x28,%rsp
  4019ab:	5b                   	pop    %rbx
  4019ac:	5e                   	pop    %rsi
  4019ad:	c3                   	retq   
  4019ae:	66 90                	xchg   %ax,%ax
  4019b0:	48 8d 1d a9 76 00 00 	lea    0x76a9(%rip),%rbx        # 409060 <__xd_z>
  4019b7:	48 8d 35 a2 76 00 00 	lea    0x76a2(%rip),%rsi        # 409060 <__xd_z>
  4019be:	48 39 de             	cmp    %rbx,%rsi
  4019c1:	74 df                	je     4019a2 <__dyn_tls_init+0x22>
  4019c3:	48 8b 03             	mov    (%rbx),%rax
  4019c6:	48 85 c0             	test   %rax,%rax
  4019c9:	74 02                	je     4019cd <__dyn_tls_init+0x4d>
  4019cb:	ff d0                	callq  *%rax
  4019cd:	48 83 c3 08          	add    $0x8,%rbx
  4019d1:	48 39 de             	cmp    %rbx,%rsi
  4019d4:	75 ed                	jne    4019c3 <__dyn_tls_init+0x43>
  4019d6:	b8 01 00 00 00       	mov    $0x1,%eax
  4019db:	48 83 c4 28          	add    $0x28,%rsp
  4019df:	5b                   	pop    %rbx
  4019e0:	5e                   	pop    %rsi
  4019e1:	c3                   	retq   
  4019e2:	e8 59 0c 00 00       	callq  402640 <__mingw_TLScallback>
  4019e7:	b8 01 00 00 00       	mov    $0x1,%eax
  4019ec:	48 83 c4 28          	add    $0x28,%rsp
  4019f0:	5b                   	pop    %rbx
  4019f1:	5e                   	pop    %rsi
  4019f2:	c3                   	retq   
  4019f3:	0f 1f 00             	nopl   (%rax)
  4019f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4019fd:	00 00 00 

0000000000401a00 <__tlregdtor>:
  401a00:	31 c0                	xor    %eax,%eax
  401a02:	c3                   	retq   
  401a03:	90                   	nop
  401a04:	90                   	nop
  401a05:	90                   	nop
  401a06:	90                   	nop
  401a07:	90                   	nop
  401a08:	90                   	nop
  401a09:	90                   	nop
  401a0a:	90                   	nop
  401a0b:	90                   	nop
  401a0c:	90                   	nop
  401a0d:	90                   	nop
  401a0e:	90                   	nop
  401a0f:	90                   	nop

0000000000401a10 <__mingw_raise_matherr>:
  401a10:	48 83 ec 58          	sub    $0x58,%rsp
  401a14:	48 8b 05 e5 5b 00 00 	mov    0x5be5(%rip),%rax        # 407600 <stUserMathErr>
  401a1b:	48 85 c0             	test   %rax,%rax
  401a1e:	74 2c                	je     401a4c <__mingw_raise_matherr+0x3c>
  401a20:	f2 0f 10 84 24 80 00 	movsd  0x80(%rsp),%xmm0
  401a27:	00 00 
  401a29:	89 4c 24 20          	mov    %ecx,0x20(%rsp)
  401a2d:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
  401a32:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
  401a37:	f2 0f 11 54 24 30    	movsd  %xmm2,0x30(%rsp)
  401a3d:	f2 0f 11 5c 24 38    	movsd  %xmm3,0x38(%rsp)
  401a43:	f2 0f 11 44 24 40    	movsd  %xmm0,0x40(%rsp)
  401a49:	ff d0                	callq  *%rax
  401a4b:	90                   	nop
  401a4c:	48 83 c4 58          	add    $0x58,%rsp
  401a50:	c3                   	retq   
  401a51:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401a56:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401a5d:	00 00 00 

0000000000401a60 <__mingw_setusermatherr>:
  401a60:	48 89 0d 99 5b 00 00 	mov    %rcx,0x5b99(%rip)        # 407600 <stUserMathErr>
  401a67:	e9 5c 11 00 00       	jmpq   402bc8 <__setusermatherr>
  401a6c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401a70 <_matherr>:
  401a70:	56                   	push   %rsi
  401a71:	53                   	push   %rbx
  401a72:	48 83 ec 78          	sub    $0x78,%rsp
  401a76:	0f 29 74 24 40       	movaps %xmm6,0x40(%rsp)
  401a7b:	0f 29 7c 24 50       	movaps %xmm7,0x50(%rsp)
  401a80:	44 0f 29 44 24 60    	movaps %xmm8,0x60(%rsp)
  401a86:	83 39 06             	cmpl   $0x6,(%rcx)
  401a89:	0f 87 d1 00 00 00    	ja     401b60 <_matherr+0xf0>
  401a8f:	8b 01                	mov    (%rcx),%eax
  401a91:	48 8d 15 6c 27 00 00 	lea    0x276c(%rip),%rdx        # 404204 <.rdata+0x124>
  401a98:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
  401a9c:	48 01 d0             	add    %rdx,%rax
  401a9f:	ff e0                	jmpq   *%rax
  401aa1:	48 8d 1d 38 26 00 00 	lea    0x2638(%rip),%rbx        # 4040e0 <.rdata>
  401aa8:	48 8b 71 08          	mov    0x8(%rcx),%rsi
  401aac:	f2 44 0f 10 41 20    	movsd  0x20(%rcx),%xmm8
  401ab2:	f2 0f 10 79 18       	movsd  0x18(%rcx),%xmm7
  401ab7:	f2 0f 10 71 10       	movsd  0x10(%rcx),%xmm6
  401abc:	b9 02 00 00 00       	mov    $0x2,%ecx
  401ac1:	e8 2a 11 00 00       	callq  402bf0 <__acrt_iob_func>
  401ac6:	f2 44 0f 11 44 24 30 	movsd  %xmm8,0x30(%rsp)
  401acd:	49 89 f1             	mov    %rsi,%r9
  401ad0:	49 89 d8             	mov    %rbx,%r8
  401ad3:	f2 0f 11 7c 24 28    	movsd  %xmm7,0x28(%rsp)
  401ad9:	48 8d 15 f8 26 00 00 	lea    0x26f8(%rip),%rdx        # 4041d8 <.rdata+0xf8>
  401ae0:	48 89 c1             	mov    %rax,%rcx
  401ae3:	f2 0f 11 74 24 20    	movsd  %xmm6,0x20(%rsp)
  401ae9:	e8 9a 10 00 00       	callq  402b88 <fprintf>
  401aee:	90                   	nop
  401aef:	0f 28 74 24 40       	movaps 0x40(%rsp),%xmm6
  401af4:	31 c0                	xor    %eax,%eax
  401af6:	0f 28 7c 24 50       	movaps 0x50(%rsp),%xmm7
  401afb:	44 0f 28 44 24 60    	movaps 0x60(%rsp),%xmm8
  401b01:	48 83 c4 78          	add    $0x78,%rsp
  401b05:	5b                   	pop    %rbx
  401b06:	5e                   	pop    %rsi
  401b07:	c3                   	retq   
  401b08:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  401b0f:	00 
  401b10:	48 8d 1d e8 25 00 00 	lea    0x25e8(%rip),%rbx        # 4040ff <.rdata+0x1f>
  401b17:	eb 8f                	jmp    401aa8 <_matherr+0x38>
  401b19:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401b20:	48 8d 1d f9 25 00 00 	lea    0x25f9(%rip),%rbx        # 404120 <.rdata+0x40>
  401b27:	e9 7c ff ff ff       	jmpq   401aa8 <_matherr+0x38>
  401b2c:	0f 1f 40 00          	nopl   0x0(%rax)
  401b30:	48 8d 1d 59 26 00 00 	lea    0x2659(%rip),%rbx        # 404190 <.rdata+0xb0>
  401b37:	e9 6c ff ff ff       	jmpq   401aa8 <_matherr+0x38>
  401b3c:	0f 1f 40 00          	nopl   0x0(%rax)
  401b40:	48 8d 1d 21 26 00 00 	lea    0x2621(%rip),%rbx        # 404168 <.rdata+0x88>
  401b47:	e9 5c ff ff ff       	jmpq   401aa8 <_matherr+0x38>
  401b4c:	0f 1f 40 00          	nopl   0x0(%rax)
  401b50:	48 8d 1d e9 25 00 00 	lea    0x25e9(%rip),%rbx        # 404140 <.rdata+0x60>
  401b57:	e9 4c ff ff ff       	jmpq   401aa8 <_matherr+0x38>
  401b5c:	0f 1f 40 00          	nopl   0x0(%rax)
  401b60:	48 8d 1d 5f 26 00 00 	lea    0x265f(%rip),%rbx        # 4041c6 <.rdata+0xe6>
  401b67:	e9 3c ff ff ff       	jmpq   401aa8 <_matherr+0x38>
  401b6c:	90                   	nop
  401b6d:	90                   	nop
  401b6e:	90                   	nop
  401b6f:	90                   	nop

0000000000401b70 <_fpreset>:
  401b70:	db e3                	fninit 
  401b72:	c3                   	retq   
  401b73:	90                   	nop
  401b74:	90                   	nop
  401b75:	90                   	nop
  401b76:	90                   	nop
  401b77:	90                   	nop
  401b78:	90                   	nop
  401b79:	90                   	nop
  401b7a:	90                   	nop
  401b7b:	90                   	nop
  401b7c:	90                   	nop
  401b7d:	90                   	nop
  401b7e:	90                   	nop
  401b7f:	90                   	nop

0000000000401b80 <_decode_pointer>:
  401b80:	48 89 c8             	mov    %rcx,%rax
  401b83:	c3                   	retq   
  401b84:	66 90                	xchg   %ax,%ax
  401b86:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401b8d:	00 00 00 

0000000000401b90 <_encode_pointer>:
  401b90:	48 89 c8             	mov    %rcx,%rax
  401b93:	c3                   	retq   
  401b94:	90                   	nop
  401b95:	90                   	nop
  401b96:	90                   	nop
  401b97:	90                   	nop
  401b98:	90                   	nop
  401b99:	90                   	nop
  401b9a:	90                   	nop
  401b9b:	90                   	nop
  401b9c:	90                   	nop
  401b9d:	90                   	nop
  401b9e:	90                   	nop
  401b9f:	90                   	nop

0000000000401ba0 <__write_memory.part.0>:
  401ba0:	41 54                	push   %r12
  401ba2:	55                   	push   %rbp
  401ba3:	57                   	push   %rdi
  401ba4:	56                   	push   %rsi
  401ba5:	53                   	push   %rbx
  401ba6:	48 83 ec 50          	sub    $0x50,%rsp
  401baa:	48 63 35 73 5a 00 00 	movslq 0x5a73(%rip),%rsi        # 407624 <maxSections>
  401bb1:	85 f6                	test   %esi,%esi
  401bb3:	48 89 cb             	mov    %rcx,%rbx
  401bb6:	48 89 d5             	mov    %rdx,%rbp
  401bb9:	4c 89 c7             	mov    %r8,%rdi
  401bbc:	0f 8e 66 01 00 00    	jle    401d28 <__write_memory.part.0+0x188>
  401bc2:	48 8b 05 5f 5a 00 00 	mov    0x5a5f(%rip),%rax        # 407628 <the_secs>
  401bc9:	31 c9                	xor    %ecx,%ecx
  401bcb:	48 83 c0 18          	add    $0x18,%rax
  401bcf:	90                   	nop
  401bd0:	48 8b 10             	mov    (%rax),%rdx
  401bd3:	48 39 d3             	cmp    %rdx,%rbx
  401bd6:	72 14                	jb     401bec <__write_memory.part.0+0x4c>
  401bd8:	4c 8b 40 08          	mov    0x8(%rax),%r8
  401bdc:	45 8b 40 08          	mov    0x8(%r8),%r8d
  401be0:	4c 01 c2             	add    %r8,%rdx
  401be3:	48 39 d3             	cmp    %rdx,%rbx
  401be6:	0f 82 89 00 00 00    	jb     401c75 <__write_memory.part.0+0xd5>
  401bec:	83 c1 01             	add    $0x1,%ecx
  401bef:	48 83 c0 28          	add    $0x28,%rax
  401bf3:	39 f1                	cmp    %esi,%ecx
  401bf5:	75 d9                	jne    401bd0 <__write_memory.part.0+0x30>
  401bf7:	48 89 d9             	mov    %rbx,%rcx
  401bfa:	e8 41 0c 00 00       	callq  402840 <__mingw_GetSectionForAddress>
  401bff:	48 85 c0             	test   %rax,%rax
  401c02:	49 89 c4             	mov    %rax,%r12
  401c05:	0f 84 52 01 00 00    	je     401d5d <__write_memory.part.0+0x1bd>
  401c0b:	48 8b 05 16 5a 00 00 	mov    0x5a16(%rip),%rax        # 407628 <the_secs>
  401c12:	48 8d 34 b6          	lea    (%rsi,%rsi,4),%rsi
  401c16:	48 c1 e6 03          	shl    $0x3,%rsi
  401c1a:	48 01 f0             	add    %rsi,%rax
  401c1d:	4c 89 60 20          	mov    %r12,0x20(%rax)
  401c21:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
  401c27:	e8 44 0d 00 00       	callq  402970 <_GetPEImageBase>
  401c2c:	41 8b 4c 24 0c       	mov    0xc(%r12),%ecx
  401c31:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
  401c36:	41 b8 30 00 00 00    	mov    $0x30,%r8d
  401c3c:	48 01 c1             	add    %rax,%rcx
  401c3f:	48 8b 05 e2 59 00 00 	mov    0x59e2(%rip),%rax        # 407628 <the_secs>
  401c46:	48 89 4c 30 18       	mov    %rcx,0x18(%rax,%rsi,1)
  401c4b:	ff 15 33 66 00 00    	callq  *0x6633(%rip)        # 408284 <__imp_VirtualQuery>
  401c51:	48 85 c0             	test   %rax,%rax
  401c54:	0f 84 e6 00 00 00    	je     401d40 <__write_memory.part.0+0x1a0>
  401c5a:	8b 44 24 44          	mov    0x44(%rsp),%eax
  401c5e:	8d 50 fc             	lea    -0x4(%rax),%edx
  401c61:	83 e2 fb             	and    $0xfffffffb,%edx
  401c64:	74 08                	je     401c6e <__write_memory.part.0+0xce>
  401c66:	83 e8 40             	sub    $0x40,%eax
  401c69:	83 e0 bf             	and    $0xffffffbf,%eax
  401c6c:	75 62                	jne    401cd0 <__write_memory.part.0+0x130>
  401c6e:	83 05 af 59 00 00 01 	addl   $0x1,0x59af(%rip)        # 407624 <maxSections>
  401c75:	83 ff 08             	cmp    $0x8,%edi
  401c78:	73 29                	jae    401ca3 <__write_memory.part.0+0x103>
  401c7a:	40 f6 c7 04          	test   $0x4,%dil
  401c7e:	0f 85 90 00 00 00    	jne    401d14 <__write_memory.part.0+0x174>
  401c84:	85 ff                	test   %edi,%edi
  401c86:	74 10                	je     401c98 <__write_memory.part.0+0xf8>
  401c88:	0f b6 45 00          	movzbl 0x0(%rbp),%eax
  401c8c:	40 f6 c7 02          	test   $0x2,%dil
  401c90:	88 03                	mov    %al,(%rbx)
  401c92:	0f 85 97 00 00 00    	jne    401d2f <__write_memory.part.0+0x18f>
  401c98:	48 83 c4 50          	add    $0x50,%rsp
  401c9c:	5b                   	pop    %rbx
  401c9d:	5e                   	pop    %rsi
  401c9e:	5f                   	pop    %rdi
  401c9f:	5d                   	pop    %rbp
  401ca0:	41 5c                	pop    %r12
  401ca2:	c3                   	retq   
  401ca3:	89 f8                	mov    %edi,%eax
  401ca5:	83 ef 01             	sub    $0x1,%edi
  401ca8:	48 8b 54 05 f8       	mov    -0x8(%rbp,%rax,1),%rdx
  401cad:	83 ff 08             	cmp    $0x8,%edi
  401cb0:	48 89 54 03 f8       	mov    %rdx,-0x8(%rbx,%rax,1)
  401cb5:	72 e1                	jb     401c98 <__write_memory.part.0+0xf8>
  401cb7:	83 e7 f8             	and    $0xfffffff8,%edi
  401cba:	31 c0                	xor    %eax,%eax
  401cbc:	89 c2                	mov    %eax,%edx
  401cbe:	83 c0 08             	add    $0x8,%eax
  401cc1:	48 8b 4c 15 00       	mov    0x0(%rbp,%rdx,1),%rcx
  401cc6:	39 f8                	cmp    %edi,%eax
  401cc8:	48 89 0c 13          	mov    %rcx,(%rbx,%rdx,1)
  401ccc:	72 ee                	jb     401cbc <__write_memory.part.0+0x11c>
  401cce:	eb c8                	jmp    401c98 <__write_memory.part.0+0xf8>
  401cd0:	48 03 35 51 59 00 00 	add    0x5951(%rip),%rsi        # 407628 <the_secs>
  401cd7:	41 b8 40 00 00 00    	mov    $0x40,%r8d
  401cdd:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
  401ce2:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
  401ce7:	49 89 f1             	mov    %rsi,%r9
  401cea:	48 89 4e 08          	mov    %rcx,0x8(%rsi)
  401cee:	48 89 56 10          	mov    %rdx,0x10(%rsi)
  401cf2:	ff 15 84 65 00 00    	callq  *0x6584(%rip)        # 40827c <__imp_VirtualProtect>
  401cf8:	85 c0                	test   %eax,%eax
  401cfa:	0f 85 6e ff ff ff    	jne    401c6e <__write_memory.part.0+0xce>
  401d00:	ff 15 f6 64 00 00    	callq  *0x64f6(%rip)        # 4081fc <__imp_GetLastError>
  401d06:	48 8d 0d 8b 25 00 00 	lea    0x258b(%rip),%rcx        # 404298 <.rdata+0x78>
  401d0d:	89 c2                	mov    %eax,%edx
  401d0f:	e8 0c 10 00 00       	callq  402d20 <__report_error>
  401d14:	8b 45 00             	mov    0x0(%rbp),%eax
  401d17:	89 ff                	mov    %edi,%edi
  401d19:	89 03                	mov    %eax,(%rbx)
  401d1b:	8b 44 3d fc          	mov    -0x4(%rbp,%rdi,1),%eax
  401d1f:	89 44 3b fc          	mov    %eax,-0x4(%rbx,%rdi,1)
  401d23:	e9 70 ff ff ff       	jmpq   401c98 <__write_memory.part.0+0xf8>
  401d28:	31 f6                	xor    %esi,%esi
  401d2a:	e9 c8 fe ff ff       	jmpq   401bf7 <__write_memory.part.0+0x57>
  401d2f:	89 ff                	mov    %edi,%edi
  401d31:	0f b7 44 3d fe       	movzwl -0x2(%rbp,%rdi,1),%eax
  401d36:	66 89 44 3b fe       	mov    %ax,-0x2(%rbx,%rdi,1)
  401d3b:	e9 58 ff ff ff       	jmpq   401c98 <__write_memory.part.0+0xf8>
  401d40:	48 8b 05 e1 58 00 00 	mov    0x58e1(%rip),%rax        # 407628 <the_secs>
  401d47:	48 8d 0d 12 25 00 00 	lea    0x2512(%rip),%rcx        # 404260 <.rdata+0x40>
  401d4e:	41 8b 54 24 08       	mov    0x8(%r12),%edx
  401d53:	4c 8b 44 30 18       	mov    0x18(%rax,%rsi,1),%r8
  401d58:	e8 c3 0f 00 00       	callq  402d20 <__report_error>
  401d5d:	48 8d 0d dc 24 00 00 	lea    0x24dc(%rip),%rcx        # 404240 <.rdata+0x20>
  401d64:	48 89 da             	mov    %rbx,%rdx
  401d67:	e8 b4 0f 00 00       	callq  402d20 <__report_error>
  401d6c:	90                   	nop
  401d6d:	0f 1f 00             	nopl   (%rax)

0000000000401d70 <_pei386_runtime_relocator>:
  401d70:	55                   	push   %rbp
  401d71:	41 57                	push   %r15
  401d73:	41 56                	push   %r14
  401d75:	41 55                	push   %r13
  401d77:	41 54                	push   %r12
  401d79:	57                   	push   %rdi
  401d7a:	56                   	push   %rsi
  401d7b:	53                   	push   %rbx
  401d7c:	48 83 ec 38          	sub    $0x38,%rsp
  401d80:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
  401d87:	00 
  401d88:	8b 1d 92 58 00 00    	mov    0x5892(%rip),%ebx        # 407620 <was_init.95174>
  401d8e:	85 db                	test   %ebx,%ebx
  401d90:	74 11                	je     401da3 <_pei386_runtime_relocator+0x33>
  401d92:	48 8d 65 b8          	lea    -0x48(%rbp),%rsp
  401d96:	5b                   	pop    %rbx
  401d97:	5e                   	pop    %rsi
  401d98:	5f                   	pop    %rdi
  401d99:	41 5c                	pop    %r12
  401d9b:	41 5d                	pop    %r13
  401d9d:	41 5e                	pop    %r14
  401d9f:	41 5f                	pop    %r15
  401da1:	5d                   	pop    %rbp
  401da2:	c3                   	retq   
  401da3:	c7 05 73 58 00 00 01 	movl   $0x1,0x5873(%rip)        # 407620 <was_init.95174>
  401daa:	00 00 00 
  401dad:	e8 0e 0b 00 00       	callq  4028c0 <__mingw_GetSectionCount>
  401db2:	48 98                	cltq   
  401db4:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  401db8:	48 8d 04 c5 1e 00 00 	lea    0x1e(,%rax,8),%rax
  401dbf:	00 
  401dc0:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  401dc4:	e8 37 0d 00 00       	callq  402b00 <___chkstk_ms>
  401dc9:	4c 8b 25 a0 25 00 00 	mov    0x25a0(%rip),%r12        # 404370 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST_END__>
  401dd0:	c7 05 4a 58 00 00 00 	movl   $0x0,0x584a(%rip)        # 407624 <maxSections>
  401dd7:	00 00 00 
  401dda:	48 8b 35 9f 25 00 00 	mov    0x259f(%rip),%rsi        # 404380 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST__>
  401de1:	48 29 c4             	sub    %rax,%rsp
  401de4:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
  401de9:	48 89 05 38 58 00 00 	mov    %rax,0x5838(%rip)        # 407628 <the_secs>
  401df0:	4c 89 e0             	mov    %r12,%rax
  401df3:	48 29 f0             	sub    %rsi,%rax
  401df6:	48 83 f8 07          	cmp    $0x7,%rax
  401dfa:	7e 96                	jle    401d92 <_pei386_runtime_relocator+0x22>
  401dfc:	48 83 f8 0b          	cmp    $0xb,%rax
  401e00:	8b 16                	mov    (%rsi),%edx
  401e02:	0f 8e c8 00 00 00    	jle    401ed0 <_pei386_runtime_relocator+0x160>
  401e08:	85 d2                	test   %edx,%edx
  401e0a:	0f 84 a4 00 00 00    	je     401eb4 <_pei386_runtime_relocator+0x144>
  401e10:	4c 39 e6             	cmp    %r12,%rsi
  401e13:	0f 83 79 ff ff ff    	jae    401d92 <_pei386_runtime_relocator+0x22>
  401e19:	4c 8d 76 08          	lea    0x8(%rsi),%r14
  401e1d:	49 83 c4 07          	add    $0x7,%r12
  401e21:	4c 8b 2d 78 25 00 00 	mov    0x2578(%rip),%r13        # 4043a0 <.refptr.__image_base__>
  401e28:	48 8d 7d a8          	lea    -0x58(%rbp),%rdi
  401e2c:	4d 29 f4             	sub    %r14,%r12
  401e2f:	49 c1 ec 03          	shr    $0x3,%r12
  401e33:	4e 8d 64 e6 08       	lea    0x8(%rsi,%r12,8),%r12
  401e38:	eb 0a                	jmp    401e44 <_pei386_runtime_relocator+0xd4>
  401e3a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401e40:	49 83 c6 08          	add    $0x8,%r14
  401e44:	8b 4e 04             	mov    0x4(%rsi),%ecx
  401e47:	41 b8 04 00 00 00    	mov    $0x4,%r8d
  401e4d:	48 89 fa             	mov    %rdi,%rdx
  401e50:	8b 06                	mov    (%rsi),%eax
  401e52:	4c 89 f6             	mov    %r14,%rsi
  401e55:	4c 01 e9             	add    %r13,%rcx
  401e58:	03 01                	add    (%rcx),%eax
  401e5a:	89 45 a8             	mov    %eax,-0x58(%rbp)
  401e5d:	e8 3e fd ff ff       	callq  401ba0 <__write_memory.part.0>
  401e62:	4d 39 e6             	cmp    %r12,%r14
  401e65:	75 d9                	jne    401e40 <_pei386_runtime_relocator+0xd0>
  401e67:	8b 05 b7 57 00 00    	mov    0x57b7(%rip),%eax        # 407624 <maxSections>
  401e6d:	31 f6                	xor    %esi,%esi
  401e6f:	4c 8b 25 06 64 00 00 	mov    0x6406(%rip),%r12        # 40827c <__imp_VirtualProtect>
  401e76:	85 c0                	test   %eax,%eax
  401e78:	0f 8e 14 ff ff ff    	jle    401d92 <_pei386_runtime_relocator+0x22>
  401e7e:	66 90                	xchg   %ax,%ax
  401e80:	48 8b 05 a1 57 00 00 	mov    0x57a1(%rip),%rax        # 407628 <the_secs>
  401e87:	48 01 f0             	add    %rsi,%rax
  401e8a:	44 8b 00             	mov    (%rax),%r8d
  401e8d:	45 85 c0             	test   %r8d,%r8d
  401e90:	74 0e                	je     401ea0 <_pei386_runtime_relocator+0x130>
  401e92:	48 8b 50 10          	mov    0x10(%rax),%rdx
  401e96:	49 89 f9             	mov    %rdi,%r9
  401e99:	48 8b 48 08          	mov    0x8(%rax),%rcx
  401e9d:	41 ff d4             	callq  *%r12
  401ea0:	83 c3 01             	add    $0x1,%ebx
  401ea3:	48 83 c6 28          	add    $0x28,%rsi
  401ea7:	3b 1d 77 57 00 00    	cmp    0x5777(%rip),%ebx        # 407624 <maxSections>
  401ead:	7c d1                	jl     401e80 <_pei386_runtime_relocator+0x110>
  401eaf:	e9 de fe ff ff       	jmpq   401d92 <_pei386_runtime_relocator+0x22>
  401eb4:	8b 4e 04             	mov    0x4(%rsi),%ecx
  401eb7:	85 c9                	test   %ecx,%ecx
  401eb9:	0f 85 51 ff ff ff    	jne    401e10 <_pei386_runtime_relocator+0xa0>
  401ebf:	8b 56 08             	mov    0x8(%rsi),%edx
  401ec2:	85 d2                	test   %edx,%edx
  401ec4:	75 1d                	jne    401ee3 <_pei386_runtime_relocator+0x173>
  401ec6:	8b 56 0c             	mov    0xc(%rsi),%edx
  401ec9:	48 83 c6 0c          	add    $0xc,%rsi
  401ecd:	0f 1f 00             	nopl   (%rax)
  401ed0:	85 d2                	test   %edx,%edx
  401ed2:	0f 85 38 ff ff ff    	jne    401e10 <_pei386_runtime_relocator+0xa0>
  401ed8:	8b 46 04             	mov    0x4(%rsi),%eax
  401edb:	85 c0                	test   %eax,%eax
  401edd:	0f 85 2d ff ff ff    	jne    401e10 <_pei386_runtime_relocator+0xa0>
  401ee3:	8b 56 08             	mov    0x8(%rsi),%edx
  401ee6:	83 fa 01             	cmp    $0x1,%edx
  401ee9:	0f 85 2f 01 00 00    	jne    40201e <_pei386_runtime_relocator+0x2ae>
  401eef:	4c 8b 2d aa 24 00 00 	mov    0x24aa(%rip),%r13        # 4043a0 <.refptr.__image_base__>
  401ef6:	48 83 c6 0c          	add    $0xc,%rsi
  401efa:	49 bf 00 00 00 00 ff 	movabs $0xffffffff00000000,%r15
  401f01:	ff ff ff 
  401f04:	4c 8d 75 a8          	lea    -0x58(%rbp),%r14
  401f08:	4c 39 e6             	cmp    %r12,%rsi
  401f0b:	72 48                	jb     401f55 <_pei386_runtime_relocator+0x1e5>
  401f0d:	e9 80 fe ff ff       	jmpq   401d92 <_pei386_runtime_relocator+0x22>
  401f12:	0f 86 b8 00 00 00    	jbe    401fd0 <_pei386_runtime_relocator+0x260>
  401f18:	83 fa 20             	cmp    $0x20,%edx
  401f1b:	0f 84 7f 00 00 00    	je     401fa0 <_pei386_runtime_relocator+0x230>
  401f21:	83 fa 40             	cmp    $0x40,%edx
  401f24:	0f 85 e0 00 00 00    	jne    40200a <_pei386_runtime_relocator+0x29a>
  401f2a:	48 8b 11             	mov    (%rcx),%rdx
  401f2d:	41 b8 08 00 00 00    	mov    $0x8,%r8d
  401f33:	4c 89 f7             	mov    %r14,%rdi
  401f36:	48 29 c2             	sub    %rax,%rdx
  401f39:	4c 01 ca             	add    %r9,%rdx
  401f3c:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
  401f40:	4c 89 f2             	mov    %r14,%rdx
  401f43:	e8 58 fc ff ff       	callq  401ba0 <__write_memory.part.0>
  401f48:	48 83 c6 0c          	add    $0xc,%rsi
  401f4c:	4c 39 e6             	cmp    %r12,%rsi
  401f4f:	0f 83 12 ff ff ff    	jae    401e67 <_pei386_runtime_relocator+0xf7>
  401f55:	8b 4e 04             	mov    0x4(%rsi),%ecx
  401f58:	8b 06                	mov    (%rsi),%eax
  401f5a:	0f b6 56 08          	movzbl 0x8(%rsi),%edx
  401f5e:	4c 01 e9             	add    %r13,%rcx
  401f61:	4c 01 e8             	add    %r13,%rax
  401f64:	83 fa 10             	cmp    $0x10,%edx
  401f67:	4c 8b 08             	mov    (%rax),%r9
  401f6a:	75 a6                	jne    401f12 <_pei386_runtime_relocator+0x1a2>
  401f6c:	44 0f b7 01          	movzwl (%rcx),%r8d
  401f70:	4c 89 f2             	mov    %r14,%rdx
  401f73:	4c 89 f7             	mov    %r14,%rdi
  401f76:	4d 89 c2             	mov    %r8,%r10
  401f79:	49 81 ca 00 00 ff ff 	or     $0xffffffffffff0000,%r10
  401f80:	66 45 85 c0          	test   %r8w,%r8w
  401f84:	4d 0f 48 c2          	cmovs  %r10,%r8
  401f88:	49 29 c0             	sub    %rax,%r8
  401f8b:	4d 01 c8             	add    %r9,%r8
  401f8e:	4c 89 45 a8          	mov    %r8,-0x58(%rbp)
  401f92:	41 b8 02 00 00 00    	mov    $0x2,%r8d
  401f98:	e8 03 fc ff ff       	callq  401ba0 <__write_memory.part.0>
  401f9d:	eb a9                	jmp    401f48 <_pei386_runtime_relocator+0x1d8>
  401f9f:	90                   	nop
  401fa0:	8b 11                	mov    (%rcx),%edx
  401fa2:	4c 89 f7             	mov    %r14,%rdi
  401fa5:	49 89 d0             	mov    %rdx,%r8
  401fa8:	4c 09 fa             	or     %r15,%rdx
  401fab:	45 85 c0             	test   %r8d,%r8d
  401fae:	49 0f 49 d0          	cmovns %r8,%rdx
  401fb2:	41 b8 04 00 00 00    	mov    $0x4,%r8d
  401fb8:	48 29 c2             	sub    %rax,%rdx
  401fbb:	4c 01 ca             	add    %r9,%rdx
  401fbe:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
  401fc2:	4c 89 f2             	mov    %r14,%rdx
  401fc5:	e8 d6 fb ff ff       	callq  401ba0 <__write_memory.part.0>
  401fca:	e9 79 ff ff ff       	jmpq   401f48 <_pei386_runtime_relocator+0x1d8>
  401fcf:	90                   	nop
  401fd0:	83 fa 08             	cmp    $0x8,%edx
  401fd3:	75 35                	jne    40200a <_pei386_runtime_relocator+0x29a>
  401fd5:	44 0f b6 01          	movzbl (%rcx),%r8d
  401fd9:	4c 89 f2             	mov    %r14,%rdx
  401fdc:	4c 89 f7             	mov    %r14,%rdi
  401fdf:	4d 89 c2             	mov    %r8,%r10
  401fe2:	49 81 ca 00 ff ff ff 	or     $0xffffffffffffff00,%r10
  401fe9:	45 84 c0             	test   %r8b,%r8b
  401fec:	4d 0f 48 c2          	cmovs  %r10,%r8
  401ff0:	49 29 c0             	sub    %rax,%r8
  401ff3:	4d 01 c8             	add    %r9,%r8
  401ff6:	4c 89 45 a8          	mov    %r8,-0x58(%rbp)
  401ffa:	41 b8 01 00 00 00    	mov    $0x1,%r8d
  402000:	e8 9b fb ff ff       	callq  401ba0 <__write_memory.part.0>
  402005:	e9 3e ff ff ff       	jmpq   401f48 <_pei386_runtime_relocator+0x1d8>
  40200a:	48 8d 0d e7 22 00 00 	lea    0x22e7(%rip),%rcx        # 4042f8 <.rdata+0xd8>
  402011:	48 c7 45 a8 00 00 00 	movq   $0x0,-0x58(%rbp)
  402018:	00 
  402019:	e8 02 0d 00 00       	callq  402d20 <__report_error>
  40201e:	48 8d 0d 9b 22 00 00 	lea    0x229b(%rip),%rcx        # 4042c0 <.rdata+0xa0>
  402025:	e8 f6 0c 00 00       	callq  402d20 <__report_error>
  40202a:	90                   	nop
  40202b:	90                   	nop
  40202c:	90                   	nop
  40202d:	90                   	nop
  40202e:	90                   	nop
  40202f:	90                   	nop

0000000000402030 <__mingw_SEH_error_handler>:
  402030:	48 83 ec 28          	sub    $0x28,%rsp
  402034:	8b 01                	mov    (%rcx),%eax
  402036:	3d 91 00 00 c0       	cmp    $0xc0000091,%eax
  40203b:	77 63                	ja     4020a0 <__mingw_SEH_error_handler+0x70>
  40203d:	3d 8d 00 00 c0       	cmp    $0xc000008d,%eax
  402042:	73 7b                	jae    4020bf <__mingw_SEH_error_handler+0x8f>
  402044:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
  402049:	0f 84 05 01 00 00    	je     402154 <__mingw_SEH_error_handler+0x124>
  40204f:	0f 87 cb 00 00 00    	ja     402120 <__mingw_SEH_error_handler+0xf0>
  402055:	3d 02 00 00 80       	cmp    $0x80000002,%eax
  40205a:	0f 84 f4 00 00 00    	je     402154 <__mingw_SEH_error_handler+0x124>
  402060:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
  402065:	0f 85 c3 00 00 00    	jne    40212e <__mingw_SEH_error_handler+0xfe>
  40206b:	31 d2                	xor    %edx,%edx
  40206d:	b9 0b 00 00 00       	mov    $0xb,%ecx
  402072:	e8 e1 0a 00 00       	callq  402b58 <signal>
  402077:	48 83 f8 01          	cmp    $0x1,%rax
  40207b:	0f 84 2f 01 00 00    	je     4021b0 <__mingw_SEH_error_handler+0x180>
  402081:	48 85 c0             	test   %rax,%rax
  402084:	0f 84 3c 01 00 00    	je     4021c6 <__mingw_SEH_error_handler+0x196>
  40208a:	b9 0b 00 00 00       	mov    $0xb,%ecx
  40208f:	ff d0                	callq  *%rax
  402091:	31 c0                	xor    %eax,%eax
  402093:	48 83 c4 28          	add    $0x28,%rsp
  402097:	c3                   	retq   
  402098:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40209f:	00 
  4020a0:	3d 94 00 00 c0       	cmp    $0xc0000094,%eax
  4020a5:	0f 84 b5 00 00 00    	je     402160 <__mingw_SEH_error_handler+0x130>
  4020ab:	77 37                	ja     4020e4 <__mingw_SEH_error_handler+0xb4>
  4020ad:	3d 92 00 00 c0       	cmp    $0xc0000092,%eax
  4020b2:	0f 84 9c 00 00 00    	je     402154 <__mingw_SEH_error_handler+0x124>
  4020b8:	3d 93 00 00 c0       	cmp    $0xc0000093,%eax
  4020bd:	75 6f                	jne    40212e <__mingw_SEH_error_handler+0xfe>
  4020bf:	31 d2                	xor    %edx,%edx
  4020c1:	b9 08 00 00 00       	mov    $0x8,%ecx
  4020c6:	e8 8d 0a 00 00       	callq  402b58 <signal>
  4020cb:	48 83 f8 01          	cmp    $0x1,%rax
  4020cf:	74 6f                	je     402140 <__mingw_SEH_error_handler+0x110>
  4020d1:	48 85 c0             	test   %rax,%rax
  4020d4:	74 58                	je     40212e <__mingw_SEH_error_handler+0xfe>
  4020d6:	b9 08 00 00 00       	mov    $0x8,%ecx
  4020db:	ff d0                	callq  *%rax
  4020dd:	31 c0                	xor    %eax,%eax
  4020df:	48 83 c4 28          	add    $0x28,%rsp
  4020e3:	c3                   	retq   
  4020e4:	3d 95 00 00 c0       	cmp    $0xc0000095,%eax
  4020e9:	74 69                	je     402154 <__mingw_SEH_error_handler+0x124>
  4020eb:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
  4020f0:	75 3c                	jne    40212e <__mingw_SEH_error_handler+0xfe>
  4020f2:	31 d2                	xor    %edx,%edx
  4020f4:	b9 04 00 00 00       	mov    $0x4,%ecx
  4020f9:	e8 5a 0a 00 00       	callq  402b58 <signal>
  4020fe:	48 83 f8 01          	cmp    $0x1,%rax
  402102:	0f 84 88 00 00 00    	je     402190 <__mingw_SEH_error_handler+0x160>
  402108:	48 85 c0             	test   %rax,%rax
  40210b:	0f 84 b5 00 00 00    	je     4021c6 <__mingw_SEH_error_handler+0x196>
  402111:	b9 04 00 00 00       	mov    $0x4,%ecx
  402116:	ff d0                	callq  *%rax
  402118:	31 c0                	xor    %eax,%eax
  40211a:	48 83 c4 28          	add    $0x28,%rsp
  40211e:	c3                   	retq   
  40211f:	90                   	nop
  402120:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
  402125:	74 cb                	je     4020f2 <__mingw_SEH_error_handler+0xc2>
  402127:	3d 8c 00 00 c0       	cmp    $0xc000008c,%eax
  40212c:	74 26                	je     402154 <__mingw_SEH_error_handler+0x124>
  40212e:	b8 01 00 00 00       	mov    $0x1,%eax
  402133:	48 83 c4 28          	add    $0x28,%rsp
  402137:	c3                   	retq   
  402138:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40213f:	00 
  402140:	ba 01 00 00 00       	mov    $0x1,%edx
  402145:	b9 08 00 00 00       	mov    $0x8,%ecx
  40214a:	e8 09 0a 00 00       	callq  402b58 <signal>
  40214f:	e8 1c fa ff ff       	callq  401b70 <_fpreset>
  402154:	31 c0                	xor    %eax,%eax
  402156:	48 83 c4 28          	add    $0x28,%rsp
  40215a:	c3                   	retq   
  40215b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402160:	31 d2                	xor    %edx,%edx
  402162:	b9 08 00 00 00       	mov    $0x8,%ecx
  402167:	e8 ec 09 00 00       	callq  402b58 <signal>
  40216c:	48 83 f8 01          	cmp    $0x1,%rax
  402170:	0f 85 5b ff ff ff    	jne    4020d1 <__mingw_SEH_error_handler+0xa1>
  402176:	ba 01 00 00 00       	mov    $0x1,%edx
  40217b:	b9 08 00 00 00       	mov    $0x8,%ecx
  402180:	e8 d3 09 00 00       	callq  402b58 <signal>
  402185:	31 c0                	xor    %eax,%eax
  402187:	e9 07 ff ff ff       	jmpq   402093 <__mingw_SEH_error_handler+0x63>
  40218c:	0f 1f 40 00          	nopl   0x0(%rax)
  402190:	ba 01 00 00 00       	mov    $0x1,%edx
  402195:	b9 04 00 00 00       	mov    $0x4,%ecx
  40219a:	e8 b9 09 00 00       	callq  402b58 <signal>
  40219f:	31 c0                	xor    %eax,%eax
  4021a1:	e9 ed fe ff ff       	jmpq   402093 <__mingw_SEH_error_handler+0x63>
  4021a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4021ad:	00 00 00 
  4021b0:	ba 01 00 00 00       	mov    $0x1,%edx
  4021b5:	b9 0b 00 00 00       	mov    $0xb,%ecx
  4021ba:	e8 99 09 00 00       	callq  402b58 <signal>
  4021bf:	31 c0                	xor    %eax,%eax
  4021c1:	e9 cd fe ff ff       	jmpq   402093 <__mingw_SEH_error_handler+0x63>
  4021c6:	b8 04 00 00 00       	mov    $0x4,%eax
  4021cb:	e9 c3 fe ff ff       	jmpq   402093 <__mingw_SEH_error_handler+0x63>

00000000004021d0 <__mingw_init_ehandler>:
  4021d0:	41 54                	push   %r12
  4021d2:	55                   	push   %rbp
  4021d3:	57                   	push   %rdi
  4021d4:	56                   	push   %rsi
  4021d5:	53                   	push   %rbx
  4021d6:	48 83 ec 20          	sub    $0x20,%rsp
  4021da:	e8 91 07 00 00       	callq  402970 <_GetPEImageBase>
  4021df:	48 89 c5             	mov    %rax,%rbp
  4021e2:	8b 05 60 54 00 00    	mov    0x5460(%rip),%eax        # 407648 <was_here.95013>
  4021e8:	85 c0                	test   %eax,%eax
  4021ea:	75 25                	jne    402211 <__mingw_init_ehandler+0x41>
  4021ec:	48 85 ed             	test   %rbp,%rbp
  4021ef:	74 20                	je     402211 <__mingw_init_ehandler+0x41>
  4021f1:	48 8d 0d 38 21 00 00 	lea    0x2138(%rip),%rcx        # 404330 <.rdata>
  4021f8:	c7 05 46 54 00 00 01 	movl   $0x1,0x5446(%rip)        # 407648 <was_here.95013>
  4021ff:	00 00 00 
  402202:	e8 a9 05 00 00       	callq  4027b0 <_FindPESectionByName>
  402207:	48 85 c0             	test   %rax,%rax
  40220a:	74 14                	je     402220 <__mingw_init_ehandler+0x50>
  40220c:	b8 01 00 00 00       	mov    $0x1,%eax
  402211:	48 83 c4 20          	add    $0x20,%rsp
  402215:	5b                   	pop    %rbx
  402216:	5e                   	pop    %rsi
  402217:	5f                   	pop    %rdi
  402218:	5d                   	pop    %rbp
  402219:	41 5c                	pop    %r12
  40221b:	c3                   	retq   
  40221c:	0f 1f 40 00          	nopl   0x0(%rax)
  402220:	48 8d 1d 39 55 00 00 	lea    0x5539(%rip),%rbx        # 407760 <emu_pdata>
  402227:	b9 30 00 00 00       	mov    $0x30,%ecx
  40222c:	31 f6                	xor    %esi,%esi
  40222e:	48 8d 15 2b 54 00 00 	lea    0x542b(%rip),%rdx        # 407660 <emu_xdata>
  402235:	48 89 df             	mov    %rbx,%rdi
  402238:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  40223b:	4c 8d 25 ee fd ff ff 	lea    -0x212(%rip),%r12        # 402030 <__mingw_SEH_error_handler>
  402242:	b9 20 00 00 00       	mov    $0x20,%ecx
  402247:	48 89 d7             	mov    %rdx,%rdi
  40224a:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  40224d:	49 29 ec             	sub    %rbp,%r12
  402250:	48 89 d7             	mov    %rdx,%rdi
  402253:	eb 2e                	jmp    402283 <__mingw_init_ehandler+0xb3>
  402255:	c6 07 09             	movb   $0x9,(%rdi)
  402258:	48 83 c6 01          	add    $0x1,%rsi
  40225c:	48 83 c3 0c          	add    $0xc,%rbx
  402260:	44 89 67 04          	mov    %r12d,0x4(%rdi)
  402264:	8b 48 0c             	mov    0xc(%rax),%ecx
  402267:	89 4b f4             	mov    %ecx,-0xc(%rbx)
  40226a:	03 48 08             	add    0x8(%rax),%ecx
  40226d:	48 89 f8             	mov    %rdi,%rax
  402270:	48 83 c7 08          	add    $0x8,%rdi
  402274:	48 29 e8             	sub    %rbp,%rax
  402277:	89 43 fc             	mov    %eax,-0x4(%rbx)
  40227a:	89 4b f8             	mov    %ecx,-0x8(%rbx)
  40227d:	48 83 fe 20          	cmp    $0x20,%rsi
  402281:	74 32                	je     4022b5 <__mingw_init_ehandler+0xe5>
  402283:	48 89 f1             	mov    %rsi,%rcx
  402286:	e8 75 06 00 00       	callq  402900 <_FindPESectionExec>
  40228b:	48 85 c0             	test   %rax,%rax
  40228e:	75 c5                	jne    402255 <__mingw_init_ehandler+0x85>
  402290:	48 85 f6             	test   %rsi,%rsi
  402293:	89 f2                	mov    %esi,%edx
  402295:	0f 84 71 ff ff ff    	je     40220c <__mingw_init_ehandler+0x3c>
  40229b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4022a0:	48 8d 0d b9 54 00 00 	lea    0x54b9(%rip),%rcx        # 407760 <emu_pdata>
  4022a7:	49 89 e8             	mov    %rbp,%r8
  4022aa:	ff 15 84 5f 00 00    	callq  *0x5f84(%rip)        # 408234 <__imp_RtlAddFunctionTable>
  4022b0:	e9 57 ff ff ff       	jmpq   40220c <__mingw_init_ehandler+0x3c>
  4022b5:	ba 20 00 00 00       	mov    $0x20,%edx
  4022ba:	eb e4                	jmp    4022a0 <__mingw_init_ehandler+0xd0>
  4022bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004022c0 <_gnu_exception_handler>:
  4022c0:	53                   	push   %rbx
  4022c1:	48 83 ec 20          	sub    $0x20,%rsp
  4022c5:	48 8b 11             	mov    (%rcx),%rdx
  4022c8:	8b 02                	mov    (%rdx),%eax
  4022ca:	48 89 cb             	mov    %rcx,%rbx
  4022cd:	89 c1                	mov    %eax,%ecx
  4022cf:	81 e1 ff ff ff 20    	and    $0x20ffffff,%ecx
  4022d5:	81 f9 43 43 47 20    	cmp    $0x20474343,%ecx
  4022db:	0f 84 bf 00 00 00    	je     4023a0 <_gnu_exception_handler+0xe0>
  4022e1:	3d 91 00 00 c0       	cmp    $0xc0000091,%eax
  4022e6:	77 68                	ja     402350 <_gnu_exception_handler+0x90>
  4022e8:	3d 8d 00 00 c0       	cmp    $0xc000008d,%eax
  4022ed:	73 7c                	jae    40236b <_gnu_exception_handler+0xab>
  4022ef:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
  4022f4:	0f 84 b0 00 00 00    	je     4023aa <_gnu_exception_handler+0xea>
  4022fa:	0f 87 f4 00 00 00    	ja     4023f4 <_gnu_exception_handler+0x134>
  402300:	3d 02 00 00 80       	cmp    $0x80000002,%eax
  402305:	0f 84 9f 00 00 00    	je     4023aa <_gnu_exception_handler+0xea>
  40230b:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
  402310:	75 1f                	jne    402331 <_gnu_exception_handler+0x71>
  402312:	31 d2                	xor    %edx,%edx
  402314:	b9 0b 00 00 00       	mov    $0xb,%ecx
  402319:	e8 3a 08 00 00       	callq  402b58 <signal>
  40231e:	48 83 f8 01          	cmp    $0x1,%rax
  402322:	0f 84 51 01 00 00    	je     402479 <_gnu_exception_handler+0x1b9>
  402328:	48 85 c0             	test   %rax,%rax
  40232b:	0f 85 0f 01 00 00    	jne    402440 <_gnu_exception_handler+0x180>
  402331:	48 8b 05 08 53 00 00 	mov    0x5308(%rip),%rax        # 407640 <__mingw_oldexcpt_handler>
  402338:	48 85 c0             	test   %rax,%rax
  40233b:	0f 84 10 01 00 00    	je     402451 <_gnu_exception_handler+0x191>
  402341:	48 89 d9             	mov    %rbx,%rcx
  402344:	48 83 c4 20          	add    $0x20,%rsp
  402348:	5b                   	pop    %rbx
  402349:	48 ff e0             	rex.W jmpq *%rax
  40234c:	0f 1f 40 00          	nopl   0x0(%rax)
  402350:	3d 94 00 00 c0       	cmp    $0xc0000094,%eax
  402355:	0f 84 b5 00 00 00    	je     402410 <_gnu_exception_handler+0x150>
  40235b:	77 58                	ja     4023b5 <_gnu_exception_handler+0xf5>
  40235d:	3d 92 00 00 c0       	cmp    $0xc0000092,%eax
  402362:	74 46                	je     4023aa <_gnu_exception_handler+0xea>
  402364:	3d 93 00 00 c0       	cmp    $0xc0000093,%eax
  402369:	75 c6                	jne    402331 <_gnu_exception_handler+0x71>
  40236b:	31 d2                	xor    %edx,%edx
  40236d:	b9 08 00 00 00       	mov    $0x8,%ecx
  402372:	e8 e1 07 00 00       	callq  402b58 <signal>
  402377:	48 83 f8 01          	cmp    $0x1,%rax
  40237b:	0f 84 df 00 00 00    	je     402460 <_gnu_exception_handler+0x1a0>
  402381:	48 85 c0             	test   %rax,%rax
  402384:	74 ab                	je     402331 <_gnu_exception_handler+0x71>
  402386:	b9 08 00 00 00       	mov    $0x8,%ecx
  40238b:	ff d0                	callq  *%rax
  40238d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402392:	48 83 c4 20          	add    $0x20,%rsp
  402396:	5b                   	pop    %rbx
  402397:	c3                   	retq   
  402398:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40239f:	00 
  4023a0:	f6 42 04 01          	testb  $0x1,0x4(%rdx)
  4023a4:	0f 85 37 ff ff ff    	jne    4022e1 <_gnu_exception_handler+0x21>
  4023aa:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4023af:	48 83 c4 20          	add    $0x20,%rsp
  4023b3:	5b                   	pop    %rbx
  4023b4:	c3                   	retq   
  4023b5:	3d 95 00 00 c0       	cmp    $0xc0000095,%eax
  4023ba:	74 ee                	je     4023aa <_gnu_exception_handler+0xea>
  4023bc:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
  4023c1:	0f 85 6a ff ff ff    	jne    402331 <_gnu_exception_handler+0x71>
  4023c7:	31 d2                	xor    %edx,%edx
  4023c9:	b9 04 00 00 00       	mov    $0x4,%ecx
  4023ce:	e8 85 07 00 00       	callq  402b58 <signal>
  4023d3:	48 83 f8 01          	cmp    $0x1,%rax
  4023d7:	0f 84 b3 00 00 00    	je     402490 <_gnu_exception_handler+0x1d0>
  4023dd:	48 85 c0             	test   %rax,%rax
  4023e0:	0f 84 4b ff ff ff    	je     402331 <_gnu_exception_handler+0x71>
  4023e6:	b9 04 00 00 00       	mov    $0x4,%ecx
  4023eb:	ff d0                	callq  *%rax
  4023ed:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4023f2:	eb 9e                	jmp    402392 <_gnu_exception_handler+0xd2>
  4023f4:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
  4023f9:	74 cc                	je     4023c7 <_gnu_exception_handler+0x107>
  4023fb:	3d 8c 00 00 c0       	cmp    $0xc000008c,%eax
  402400:	0f 85 2b ff ff ff    	jne    402331 <_gnu_exception_handler+0x71>
  402406:	eb a2                	jmp    4023aa <_gnu_exception_handler+0xea>
  402408:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40240f:	00 
  402410:	31 d2                	xor    %edx,%edx
  402412:	b9 08 00 00 00       	mov    $0x8,%ecx
  402417:	e8 3c 07 00 00       	callq  402b58 <signal>
  40241c:	48 83 f8 01          	cmp    $0x1,%rax
  402420:	0f 85 5b ff ff ff    	jne    402381 <_gnu_exception_handler+0xc1>
  402426:	ba 01 00 00 00       	mov    $0x1,%edx
  40242b:	b9 08 00 00 00       	mov    $0x8,%ecx
  402430:	e8 23 07 00 00       	callq  402b58 <signal>
  402435:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40243a:	e9 53 ff ff ff       	jmpq   402392 <_gnu_exception_handler+0xd2>
  40243f:	90                   	nop
  402440:	b9 0b 00 00 00       	mov    $0xb,%ecx
  402445:	ff d0                	callq  *%rax
  402447:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40244c:	e9 41 ff ff ff       	jmpq   402392 <_gnu_exception_handler+0xd2>
  402451:	31 c0                	xor    %eax,%eax
  402453:	e9 3a ff ff ff       	jmpq   402392 <_gnu_exception_handler+0xd2>
  402458:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40245f:	00 
  402460:	ba 01 00 00 00       	mov    $0x1,%edx
  402465:	b9 08 00 00 00       	mov    $0x8,%ecx
  40246a:	e8 e9 06 00 00       	callq  402b58 <signal>
  40246f:	e8 fc f6 ff ff       	callq  401b70 <_fpreset>
  402474:	e9 31 ff ff ff       	jmpq   4023aa <_gnu_exception_handler+0xea>
  402479:	ba 01 00 00 00       	mov    $0x1,%edx
  40247e:	b9 0b 00 00 00       	mov    $0xb,%ecx
  402483:	e8 d0 06 00 00       	callq  402b58 <signal>
  402488:	83 c8 ff             	or     $0xffffffff,%eax
  40248b:	e9 02 ff ff ff       	jmpq   402392 <_gnu_exception_handler+0xd2>
  402490:	ba 01 00 00 00       	mov    $0x1,%edx
  402495:	b9 04 00 00 00       	mov    $0x4,%ecx
  40249a:	e8 b9 06 00 00       	callq  402b58 <signal>
  40249f:	83 c8 ff             	or     $0xffffffff,%eax
  4024a2:	e9 eb fe ff ff       	jmpq   402392 <_gnu_exception_handler+0xd2>
  4024a7:	90                   	nop
  4024a8:	90                   	nop
  4024a9:	90                   	nop
  4024aa:	90                   	nop
  4024ab:	90                   	nop
  4024ac:	90                   	nop
  4024ad:	90                   	nop
  4024ae:	90                   	nop
  4024af:	90                   	nop

00000000004024b0 <__mingwthr_run_key_dtors.part.0>:
  4024b0:	55                   	push   %rbp
  4024b1:	57                   	push   %rdi
  4024b2:	56                   	push   %rsi
  4024b3:	53                   	push   %rbx
  4024b4:	48 83 ec 28          	sub    $0x28,%rsp
  4024b8:	48 8d 0d 41 54 00 00 	lea    0x5441(%rip),%rcx        # 407900 <__mingwthr_cs>
  4024bf:	ff 15 17 5d 00 00    	callq  *0x5d17(%rip)        # 4081dc <__imp_EnterCriticalSection>
  4024c5:	48 8b 1d 14 54 00 00 	mov    0x5414(%rip),%rbx        # 4078e0 <key_dtor_list>
  4024cc:	48 85 db             	test   %rbx,%rbx
  4024cf:	74 33                	je     402504 <__mingwthr_run_key_dtors.part.0+0x54>
  4024d1:	48 8b 2d 94 5d 00 00 	mov    0x5d94(%rip),%rbp        # 40826c <__imp_TlsGetValue>
  4024d8:	48 8b 3d 1d 5d 00 00 	mov    0x5d1d(%rip),%rdi        # 4081fc <__imp_GetLastError>
  4024df:	90                   	nop
  4024e0:	8b 0b                	mov    (%rbx),%ecx
  4024e2:	ff d5                	callq  *%rbp
  4024e4:	48 89 c6             	mov    %rax,%rsi
  4024e7:	ff d7                	callq  *%rdi
  4024e9:	85 c0                	test   %eax,%eax
  4024eb:	75 0e                	jne    4024fb <__mingwthr_run_key_dtors.part.0+0x4b>
  4024ed:	48 85 f6             	test   %rsi,%rsi
  4024f0:	74 09                	je     4024fb <__mingwthr_run_key_dtors.part.0+0x4b>
  4024f2:	48 8b 43 08          	mov    0x8(%rbx),%rax
  4024f6:	48 89 f1             	mov    %rsi,%rcx
  4024f9:	ff d0                	callq  *%rax
  4024fb:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  4024ff:	48 85 db             	test   %rbx,%rbx
  402502:	75 dc                	jne    4024e0 <__mingwthr_run_key_dtors.part.0+0x30>
  402504:	48 8d 0d f5 53 00 00 	lea    0x53f5(%rip),%rcx        # 407900 <__mingwthr_cs>
  40250b:	48 83 c4 28          	add    $0x28,%rsp
  40250f:	5b                   	pop    %rbx
  402510:	5e                   	pop    %rsi
  402511:	5f                   	pop    %rdi
  402512:	5d                   	pop    %rbp
  402513:	48 ff 25 0a 5d 00 00 	rex.W jmpq *0x5d0a(%rip)        # 408224 <__imp_LeaveCriticalSection>
  40251a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000402520 <___w64_mingwthr_add_key_dtor>:
  402520:	55                   	push   %rbp
  402521:	57                   	push   %rdi
  402522:	56                   	push   %rsi
  402523:	53                   	push   %rbx
  402524:	48 83 ec 28          	sub    $0x28,%rsp
  402528:	8b 05 ba 53 00 00    	mov    0x53ba(%rip),%eax        # 4078e8 <__mingwthr_cs_init>
  40252e:	31 f6                	xor    %esi,%esi
  402530:	85 c0                	test   %eax,%eax
  402532:	89 cd                	mov    %ecx,%ebp
  402534:	48 89 d7             	mov    %rdx,%rdi
  402537:	75 0b                	jne    402544 <___w64_mingwthr_add_key_dtor+0x24>
  402539:	89 f0                	mov    %esi,%eax
  40253b:	48 83 c4 28          	add    $0x28,%rsp
  40253f:	5b                   	pop    %rbx
  402540:	5e                   	pop    %rsi
  402541:	5f                   	pop    %rdi
  402542:	5d                   	pop    %rbp
  402543:	c3                   	retq   
  402544:	ba 18 00 00 00       	mov    $0x18,%edx
  402549:	b9 01 00 00 00       	mov    $0x1,%ecx
  40254e:	e8 45 06 00 00       	callq  402b98 <calloc>
  402553:	48 85 c0             	test   %rax,%rax
  402556:	48 89 c3             	mov    %rax,%rbx
  402559:	74 3d                	je     402598 <___w64_mingwthr_add_key_dtor+0x78>
  40255b:	89 28                	mov    %ebp,(%rax)
  40255d:	48 8d 0d 9c 53 00 00 	lea    0x539c(%rip),%rcx        # 407900 <__mingwthr_cs>
  402564:	48 89 78 08          	mov    %rdi,0x8(%rax)
  402568:	ff 15 6e 5c 00 00    	callq  *0x5c6e(%rip)        # 4081dc <__imp_EnterCriticalSection>
  40256e:	48 8b 05 6b 53 00 00 	mov    0x536b(%rip),%rax        # 4078e0 <key_dtor_list>
  402575:	48 8d 0d 84 53 00 00 	lea    0x5384(%rip),%rcx        # 407900 <__mingwthr_cs>
  40257c:	48 89 1d 5d 53 00 00 	mov    %rbx,0x535d(%rip)        # 4078e0 <key_dtor_list>
  402583:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402587:	ff 15 97 5c 00 00    	callq  *0x5c97(%rip)        # 408224 <__imp_LeaveCriticalSection>
  40258d:	89 f0                	mov    %esi,%eax
  40258f:	48 83 c4 28          	add    $0x28,%rsp
  402593:	5b                   	pop    %rbx
  402594:	5e                   	pop    %rsi
  402595:	5f                   	pop    %rdi
  402596:	5d                   	pop    %rbp
  402597:	c3                   	retq   
  402598:	be ff ff ff ff       	mov    $0xffffffff,%esi
  40259d:	eb 9a                	jmp    402539 <___w64_mingwthr_add_key_dtor+0x19>
  40259f:	90                   	nop

00000000004025a0 <___w64_mingwthr_remove_key_dtor>:
  4025a0:	53                   	push   %rbx
  4025a1:	48 83 ec 20          	sub    $0x20,%rsp
  4025a5:	8b 05 3d 53 00 00    	mov    0x533d(%rip),%eax        # 4078e8 <__mingwthr_cs_init>
  4025ab:	85 c0                	test   %eax,%eax
  4025ad:	89 cb                	mov    %ecx,%ebx
  4025af:	75 0f                	jne    4025c0 <___w64_mingwthr_remove_key_dtor+0x20>
  4025b1:	31 c0                	xor    %eax,%eax
  4025b3:	48 83 c4 20          	add    $0x20,%rsp
  4025b7:	5b                   	pop    %rbx
  4025b8:	c3                   	retq   
  4025b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4025c0:	48 8d 0d 39 53 00 00 	lea    0x5339(%rip),%rcx        # 407900 <__mingwthr_cs>
  4025c7:	ff 15 0f 5c 00 00    	callq  *0x5c0f(%rip)        # 4081dc <__imp_EnterCriticalSection>
  4025cd:	48 8b 05 0c 53 00 00 	mov    0x530c(%rip),%rax        # 4078e0 <key_dtor_list>
  4025d4:	48 85 c0             	test   %rax,%rax
  4025d7:	74 1a                	je     4025f3 <___w64_mingwthr_remove_key_dtor+0x53>
  4025d9:	8b 10                	mov    (%rax),%edx
  4025db:	39 d3                	cmp    %edx,%ebx
  4025dd:	75 0b                	jne    4025ea <___w64_mingwthr_remove_key_dtor+0x4a>
  4025df:	eb 4f                	jmp    402630 <___w64_mingwthr_remove_key_dtor+0x90>
  4025e1:	8b 11                	mov    (%rcx),%edx
  4025e3:	39 da                	cmp    %ebx,%edx
  4025e5:	74 29                	je     402610 <___w64_mingwthr_remove_key_dtor+0x70>
  4025e7:	48 89 c8             	mov    %rcx,%rax
  4025ea:	48 8b 48 10          	mov    0x10(%rax),%rcx
  4025ee:	48 85 c9             	test   %rcx,%rcx
  4025f1:	75 ee                	jne    4025e1 <___w64_mingwthr_remove_key_dtor+0x41>
  4025f3:	48 8d 0d 06 53 00 00 	lea    0x5306(%rip),%rcx        # 407900 <__mingwthr_cs>
  4025fa:	ff 15 24 5c 00 00    	callq  *0x5c24(%rip)        # 408224 <__imp_LeaveCriticalSection>
  402600:	31 c0                	xor    %eax,%eax
  402602:	48 83 c4 20          	add    $0x20,%rsp
  402606:	5b                   	pop    %rbx
  402607:	c3                   	retq   
  402608:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40260f:	00 
  402610:	48 8b 51 10          	mov    0x10(%rcx),%rdx
  402614:	48 89 50 10          	mov    %rdx,0x10(%rax)
  402618:	e8 63 05 00 00       	callq  402b80 <free>
  40261d:	48 8d 0d dc 52 00 00 	lea    0x52dc(%rip),%rcx        # 407900 <__mingwthr_cs>
  402624:	ff 15 fa 5b 00 00    	callq  *0x5bfa(%rip)        # 408224 <__imp_LeaveCriticalSection>
  40262a:	eb d4                	jmp    402600 <___w64_mingwthr_remove_key_dtor+0x60>
  40262c:	0f 1f 40 00          	nopl   0x0(%rax)
  402630:	48 8b 50 10          	mov    0x10(%rax),%rdx
  402634:	48 89 c1             	mov    %rax,%rcx
  402637:	48 89 15 a2 52 00 00 	mov    %rdx,0x52a2(%rip)        # 4078e0 <key_dtor_list>
  40263e:	eb d8                	jmp    402618 <___w64_mingwthr_remove_key_dtor+0x78>

0000000000402640 <__mingw_TLScallback>:
  402640:	53                   	push   %rbx
  402641:	48 83 ec 20          	sub    $0x20,%rsp
  402645:	83 fa 01             	cmp    $0x1,%edx
  402648:	0f 84 92 00 00 00    	je     4026e0 <__mingw_TLScallback+0xa0>
  40264e:	72 30                	jb     402680 <__mingw_TLScallback+0x40>
  402650:	83 fa 02             	cmp    $0x2,%edx
  402653:	74 1b                	je     402670 <__mingw_TLScallback+0x30>
  402655:	83 fa 03             	cmp    $0x3,%edx
  402658:	75 1b                	jne    402675 <__mingw_TLScallback+0x35>
  40265a:	8b 05 88 52 00 00    	mov    0x5288(%rip),%eax        # 4078e8 <__mingwthr_cs_init>
  402660:	85 c0                	test   %eax,%eax
  402662:	74 11                	je     402675 <__mingw_TLScallback+0x35>
  402664:	e8 47 fe ff ff       	callq  4024b0 <__mingwthr_run_key_dtors.part.0>
  402669:	eb 0a                	jmp    402675 <__mingw_TLScallback+0x35>
  40266b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402670:	e8 fb f4 ff ff       	callq  401b70 <_fpreset>
  402675:	b8 01 00 00 00       	mov    $0x1,%eax
  40267a:	48 83 c4 20          	add    $0x20,%rsp
  40267e:	5b                   	pop    %rbx
  40267f:	c3                   	retq   
  402680:	8b 05 62 52 00 00    	mov    0x5262(%rip),%eax        # 4078e8 <__mingwthr_cs_init>
  402686:	85 c0                	test   %eax,%eax
  402688:	0f 85 82 00 00 00    	jne    402710 <__mingw_TLScallback+0xd0>
  40268e:	8b 05 54 52 00 00    	mov    0x5254(%rip),%eax        # 4078e8 <__mingwthr_cs_init>
  402694:	83 f8 01             	cmp    $0x1,%eax
  402697:	75 dc                	jne    402675 <__mingw_TLScallback+0x35>
  402699:	48 8b 0d 40 52 00 00 	mov    0x5240(%rip),%rcx        # 4078e0 <key_dtor_list>
  4026a0:	48 85 c9             	test   %rcx,%rcx
  4026a3:	74 11                	je     4026b6 <__mingw_TLScallback+0x76>
  4026a5:	48 8b 59 10          	mov    0x10(%rcx),%rbx
  4026a9:	e8 d2 04 00 00       	callq  402b80 <free>
  4026ae:	48 85 db             	test   %rbx,%rbx
  4026b1:	48 89 d9             	mov    %rbx,%rcx
  4026b4:	75 ef                	jne    4026a5 <__mingw_TLScallback+0x65>
  4026b6:	48 8d 0d 43 52 00 00 	lea    0x5243(%rip),%rcx        # 407900 <__mingwthr_cs>
  4026bd:	48 c7 05 18 52 00 00 	movq   $0x0,0x5218(%rip)        # 4078e0 <key_dtor_list>
  4026c4:	00 00 00 00 
  4026c8:	c7 05 16 52 00 00 00 	movl   $0x0,0x5216(%rip)        # 4078e8 <__mingwthr_cs_init>
  4026cf:	00 00 00 
  4026d2:	ff 15 fc 5a 00 00    	callq  *0x5afc(%rip)        # 4081d4 <__IAT_start__>
  4026d8:	eb 9b                	jmp    402675 <__mingw_TLScallback+0x35>
  4026da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4026e0:	8b 05 02 52 00 00    	mov    0x5202(%rip),%eax        # 4078e8 <__mingwthr_cs_init>
  4026e6:	85 c0                	test   %eax,%eax
  4026e8:	74 16                	je     402700 <__mingw_TLScallback+0xc0>
  4026ea:	c7 05 f4 51 00 00 01 	movl   $0x1,0x51f4(%rip)        # 4078e8 <__mingwthr_cs_init>
  4026f1:	00 00 00 
  4026f4:	b8 01 00 00 00       	mov    $0x1,%eax
  4026f9:	48 83 c4 20          	add    $0x20,%rsp
  4026fd:	5b                   	pop    %rbx
  4026fe:	c3                   	retq   
  4026ff:	90                   	nop
  402700:	48 8d 0d f9 51 00 00 	lea    0x51f9(%rip),%rcx        # 407900 <__mingwthr_cs>
  402707:	ff 15 0f 5b 00 00    	callq  *0x5b0f(%rip)        # 40821c <__imp_InitializeCriticalSection>
  40270d:	eb db                	jmp    4026ea <__mingw_TLScallback+0xaa>
  40270f:	90                   	nop
  402710:	e8 9b fd ff ff       	callq  4024b0 <__mingwthr_run_key_dtors.part.0>
  402715:	e9 74 ff ff ff       	jmpq   40268e <__mingw_TLScallback+0x4e>
  40271a:	90                   	nop
  40271b:	90                   	nop
  40271c:	90                   	nop
  40271d:	90                   	nop
  40271e:	90                   	nop
  40271f:	90                   	nop

0000000000402720 <_ValidateImageBase.part.0>:
  402720:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
  402724:	48 01 c1             	add    %rax,%rcx
  402727:	31 c0                	xor    %eax,%eax
  402729:	81 39 50 45 00 00    	cmpl   $0x4550,(%rcx)
  40272f:	74 01                	je     402732 <_ValidateImageBase.part.0+0x12>
  402731:	c3                   	retq   
  402732:	31 c0                	xor    %eax,%eax
  402734:	66 81 79 18 0b 02    	cmpw   $0x20b,0x18(%rcx)
  40273a:	0f 94 c0             	sete   %al
  40273d:	c3                   	retq   
  40273e:	66 90                	xchg   %ax,%ax

0000000000402740 <_ValidateImageBase>:
  402740:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
  402745:	74 09                	je     402750 <_ValidateImageBase+0x10>
  402747:	31 c0                	xor    %eax,%eax
  402749:	c3                   	retq   
  40274a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402750:	eb ce                	jmp    402720 <_ValidateImageBase.part.0>
  402752:	0f 1f 40 00          	nopl   0x0(%rax)
  402756:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40275d:	00 00 00 

0000000000402760 <_FindPESection>:
  402760:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
  402764:	48 01 c1             	add    %rax,%rcx
  402767:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
  40276b:	48 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%rax
  402770:	0f b7 49 06          	movzwl 0x6(%rcx),%ecx
  402774:	85 c9                	test   %ecx,%ecx
  402776:	74 29                	je     4027a1 <_FindPESection+0x41>
  402778:	83 e9 01             	sub    $0x1,%ecx
  40277b:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
  40277f:	4c 8d 4c c8 28       	lea    0x28(%rax,%rcx,8),%r9
  402784:	44 8b 40 0c          	mov    0xc(%rax),%r8d
  402788:	49 39 d0             	cmp    %rdx,%r8
  40278b:	4c 89 c1             	mov    %r8,%rcx
  40278e:	77 08                	ja     402798 <_FindPESection+0x38>
  402790:	03 48 08             	add    0x8(%rax),%ecx
  402793:	48 39 d1             	cmp    %rdx,%rcx
  402796:	77 0b                	ja     4027a3 <_FindPESection+0x43>
  402798:	48 83 c0 28          	add    $0x28,%rax
  40279c:	4c 39 c8             	cmp    %r9,%rax
  40279f:	75 e3                	jne    402784 <_FindPESection+0x24>
  4027a1:	31 c0                	xor    %eax,%eax
  4027a3:	c3                   	retq   
  4027a4:	66 90                	xchg   %ax,%ax
  4027a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4027ad:	00 00 00 

00000000004027b0 <_FindPESectionByName>:
  4027b0:	57                   	push   %rdi
  4027b1:	56                   	push   %rsi
  4027b2:	53                   	push   %rbx
  4027b3:	48 83 ec 20          	sub    $0x20,%rsp
  4027b7:	48 89 ce             	mov    %rcx,%rsi
  4027ba:	e8 91 03 00 00       	callq  402b50 <strlen>
  4027bf:	48 83 f8 08          	cmp    $0x8,%rax
  4027c3:	77 6b                	ja     402830 <_FindPESectionByName+0x80>
  4027c5:	48 8b 15 d4 1b 00 00 	mov    0x1bd4(%rip),%rdx        # 4043a0 <.refptr.__image_base__>
  4027cc:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
  4027d1:	75 5d                	jne    402830 <_FindPESectionByName+0x80>
  4027d3:	48 89 d1             	mov    %rdx,%rcx
  4027d6:	e8 45 ff ff ff       	callq  402720 <_ValidateImageBase.part.0>
  4027db:	85 c0                	test   %eax,%eax
  4027dd:	74 51                	je     402830 <_FindPESectionByName+0x80>
  4027df:	48 63 4a 3c          	movslq 0x3c(%rdx),%rcx
  4027e3:	48 01 d1             	add    %rdx,%rcx
  4027e6:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
  4027ea:	48 8d 5c 01 18       	lea    0x18(%rcx,%rax,1),%rbx
  4027ef:	0f b7 41 06          	movzwl 0x6(%rcx),%eax
  4027f3:	85 c0                	test   %eax,%eax
  4027f5:	74 39                	je     402830 <_FindPESectionByName+0x80>
  4027f7:	83 e8 01             	sub    $0x1,%eax
  4027fa:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  4027fe:	48 8d 7c c3 28       	lea    0x28(%rbx,%rax,8),%rdi
  402803:	eb 09                	jmp    40280e <_FindPESectionByName+0x5e>
  402805:	48 83 c3 28          	add    $0x28,%rbx
  402809:	48 39 fb             	cmp    %rdi,%rbx
  40280c:	74 22                	je     402830 <_FindPESectionByName+0x80>
  40280e:	41 b8 08 00 00 00    	mov    $0x8,%r8d
  402814:	48 89 f2             	mov    %rsi,%rdx
  402817:	48 89 d9             	mov    %rbx,%rcx
  40281a:	e8 29 03 00 00       	callq  402b48 <strncmp>
  40281f:	85 c0                	test   %eax,%eax
  402821:	75 e2                	jne    402805 <_FindPESectionByName+0x55>
  402823:	48 89 d8             	mov    %rbx,%rax
  402826:	48 83 c4 20          	add    $0x20,%rsp
  40282a:	5b                   	pop    %rbx
  40282b:	5e                   	pop    %rsi
  40282c:	5f                   	pop    %rdi
  40282d:	c3                   	retq   
  40282e:	66 90                	xchg   %ax,%ax
  402830:	31 db                	xor    %ebx,%ebx
  402832:	48 89 d8             	mov    %rbx,%rax
  402835:	48 83 c4 20          	add    $0x20,%rsp
  402839:	5b                   	pop    %rbx
  40283a:	5e                   	pop    %rsi
  40283b:	5f                   	pop    %rdi
  40283c:	c3                   	retq   
  40283d:	0f 1f 00             	nopl   (%rax)

0000000000402840 <__mingw_GetSectionForAddress>:
  402840:	48 83 ec 28          	sub    $0x28,%rsp
  402844:	4c 8b 05 55 1b 00 00 	mov    0x1b55(%rip),%r8        # 4043a0 <.refptr.__image_base__>
  40284b:	66 41 81 38 4d 5a    	cmpw   $0x5a4d,(%r8)
  402851:	48 89 ca             	mov    %rcx,%rdx
  402854:	75 57                	jne    4028ad <__mingw_GetSectionForAddress+0x6d>
  402856:	4c 89 c1             	mov    %r8,%rcx
  402859:	e8 c2 fe ff ff       	callq  402720 <_ValidateImageBase.part.0>
  40285e:	85 c0                	test   %eax,%eax
  402860:	74 4b                	je     4028ad <__mingw_GetSectionForAddress+0x6d>
  402862:	49 63 40 3c          	movslq 0x3c(%r8),%rax
  402866:	48 89 d1             	mov    %rdx,%rcx
  402869:	4c 29 c1             	sub    %r8,%rcx
  40286c:	49 01 c0             	add    %rax,%r8
  40286f:	41 0f b7 50 06       	movzwl 0x6(%r8),%edx
  402874:	41 0f b7 40 14       	movzwl 0x14(%r8),%eax
  402879:	85 d2                	test   %edx,%edx
  40287b:	49 8d 44 00 18       	lea    0x18(%r8,%rax,1),%rax
  402880:	74 2b                	je     4028ad <__mingw_GetSectionForAddress+0x6d>
  402882:	83 ea 01             	sub    $0x1,%edx
  402885:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
  402889:	4c 8d 4c d0 28       	lea    0x28(%rax,%rdx,8),%r9
  40288e:	66 90                	xchg   %ax,%ax
  402890:	44 8b 40 0c          	mov    0xc(%rax),%r8d
  402894:	4c 39 c1             	cmp    %r8,%rcx
  402897:	4c 89 c2             	mov    %r8,%rdx
  40289a:	72 08                	jb     4028a4 <__mingw_GetSectionForAddress+0x64>
  40289c:	03 50 08             	add    0x8(%rax),%edx
  40289f:	48 39 d1             	cmp    %rdx,%rcx
  4028a2:	72 0b                	jb     4028af <__mingw_GetSectionForAddress+0x6f>
  4028a4:	48 83 c0 28          	add    $0x28,%rax
  4028a8:	4c 39 c8             	cmp    %r9,%rax
  4028ab:	75 e3                	jne    402890 <__mingw_GetSectionForAddress+0x50>
  4028ad:	31 c0                	xor    %eax,%eax
  4028af:	48 83 c4 28          	add    $0x28,%rsp
  4028b3:	c3                   	retq   
  4028b4:	66 90                	xchg   %ax,%ax
  4028b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4028bd:	00 00 00 

00000000004028c0 <__mingw_GetSectionCount>:
  4028c0:	48 83 ec 28          	sub    $0x28,%rsp
  4028c4:	48 8b 15 d5 1a 00 00 	mov    0x1ad5(%rip),%rdx        # 4043a0 <.refptr.__image_base__>
  4028cb:	45 31 c0             	xor    %r8d,%r8d
  4028ce:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
  4028d3:	74 0b                	je     4028e0 <__mingw_GetSectionCount+0x20>
  4028d5:	44 89 c0             	mov    %r8d,%eax
  4028d8:	48 83 c4 28          	add    $0x28,%rsp
  4028dc:	c3                   	retq   
  4028dd:	0f 1f 00             	nopl   (%rax)
  4028e0:	48 89 d1             	mov    %rdx,%rcx
  4028e3:	e8 38 fe ff ff       	callq  402720 <_ValidateImageBase.part.0>
  4028e8:	85 c0                	test   %eax,%eax
  4028ea:	74 e9                	je     4028d5 <__mingw_GetSectionCount+0x15>
  4028ec:	48 63 42 3c          	movslq 0x3c(%rdx),%rax
  4028f0:	44 0f b7 44 10 06    	movzwl 0x6(%rax,%rdx,1),%r8d
  4028f6:	44 89 c0             	mov    %r8d,%eax
  4028f9:	48 83 c4 28          	add    $0x28,%rsp
  4028fd:	c3                   	retq   
  4028fe:	66 90                	xchg   %ax,%ax

0000000000402900 <_FindPESectionExec>:
  402900:	48 83 ec 28          	sub    $0x28,%rsp
  402904:	4c 8b 05 95 1a 00 00 	mov    0x1a95(%rip),%r8        # 4043a0 <.refptr.__image_base__>
  40290b:	66 41 81 38 4d 5a    	cmpw   $0x5a4d,(%r8)
  402911:	48 89 ca             	mov    %rcx,%rdx
  402914:	75 52                	jne    402968 <_FindPESectionExec+0x68>
  402916:	4c 89 c1             	mov    %r8,%rcx
  402919:	e8 02 fe ff ff       	callq  402720 <_ValidateImageBase.part.0>
  40291e:	85 c0                	test   %eax,%eax
  402920:	74 46                	je     402968 <_FindPESectionExec+0x68>
  402922:	49 63 48 3c          	movslq 0x3c(%r8),%rcx
  402926:	4c 01 c1             	add    %r8,%rcx
  402929:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
  40292d:	48 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%rax
  402932:	0f b7 49 06          	movzwl 0x6(%rcx),%ecx
  402936:	85 c9                	test   %ecx,%ecx
  402938:	74 2e                	je     402968 <_FindPESectionExec+0x68>
  40293a:	83 e9 01             	sub    $0x1,%ecx
  40293d:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
  402941:	48 8d 4c c8 28       	lea    0x28(%rax,%rcx,8),%rcx
  402946:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40294d:	00 00 00 
  402950:	f6 40 27 20          	testb  $0x20,0x27(%rax)
  402954:	74 09                	je     40295f <_FindPESectionExec+0x5f>
  402956:	48 85 d2             	test   %rdx,%rdx
  402959:	74 0f                	je     40296a <_FindPESectionExec+0x6a>
  40295b:	48 83 ea 01          	sub    $0x1,%rdx
  40295f:	48 83 c0 28          	add    $0x28,%rax
  402963:	48 39 c8             	cmp    %rcx,%rax
  402966:	75 e8                	jne    402950 <_FindPESectionExec+0x50>
  402968:	31 c0                	xor    %eax,%eax
  40296a:	48 83 c4 28          	add    $0x28,%rsp
  40296e:	c3                   	retq   
  40296f:	90                   	nop

0000000000402970 <_GetPEImageBase>:
  402970:	48 83 ec 28          	sub    $0x28,%rsp
  402974:	48 8b 15 25 1a 00 00 	mov    0x1a25(%rip),%rdx        # 4043a0 <.refptr.__image_base__>
  40297b:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
  402980:	75 1e                	jne    4029a0 <_GetPEImageBase+0x30>
  402982:	48 89 d1             	mov    %rdx,%rcx
  402985:	e8 96 fd ff ff       	callq  402720 <_ValidateImageBase.part.0>
  40298a:	85 c0                	test   %eax,%eax
  40298c:	b8 00 00 00 00       	mov    $0x0,%eax
  402991:	48 0f 45 c2          	cmovne %rdx,%rax
  402995:	48 83 c4 28          	add    $0x28,%rsp
  402999:	c3                   	retq   
  40299a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4029a0:	31 c0                	xor    %eax,%eax
  4029a2:	48 83 c4 28          	add    $0x28,%rsp
  4029a6:	c3                   	retq   
  4029a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4029ae:	00 00 

00000000004029b0 <_IsNonwritableInCurrentImage>:
  4029b0:	48 83 ec 28          	sub    $0x28,%rsp
  4029b4:	4c 8b 05 e5 19 00 00 	mov    0x19e5(%rip),%r8        # 4043a0 <.refptr.__image_base__>
  4029bb:	31 c0                	xor    %eax,%eax
  4029bd:	66 41 81 38 4d 5a    	cmpw   $0x5a4d,(%r8)
  4029c3:	48 89 ca             	mov    %rcx,%rdx
  4029c6:	74 08                	je     4029d0 <_IsNonwritableInCurrentImage+0x20>
  4029c8:	48 83 c4 28          	add    $0x28,%rsp
  4029cc:	c3                   	retq   
  4029cd:	0f 1f 00             	nopl   (%rax)
  4029d0:	4c 89 c1             	mov    %r8,%rcx
  4029d3:	e8 48 fd ff ff       	callq  402720 <_ValidateImageBase.part.0>
  4029d8:	85 c0                	test   %eax,%eax
  4029da:	74 ec                	je     4029c8 <_IsNonwritableInCurrentImage+0x18>
  4029dc:	49 63 40 3c          	movslq 0x3c(%r8),%rax
  4029e0:	48 89 d1             	mov    %rdx,%rcx
  4029e3:	4c 29 c1             	sub    %r8,%rcx
  4029e6:	49 01 c0             	add    %rax,%r8
  4029e9:	41 0f b7 50 06       	movzwl 0x6(%r8),%edx
  4029ee:	41 0f b7 40 14       	movzwl 0x14(%r8),%eax
  4029f3:	85 d2                	test   %edx,%edx
  4029f5:	49 8d 44 00 18       	lea    0x18(%r8,%rax,1),%rax
  4029fa:	74 31                	je     402a2d <_IsNonwritableInCurrentImage+0x7d>
  4029fc:	83 ea 01             	sub    $0x1,%edx
  4029ff:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
  402a03:	4c 8d 4c d0 28       	lea    0x28(%rax,%rdx,8),%r9
  402a08:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402a0f:	00 
  402a10:	44 8b 40 0c          	mov    0xc(%rax),%r8d
  402a14:	4c 39 c1             	cmp    %r8,%rcx
  402a17:	4c 89 c2             	mov    %r8,%rdx
  402a1a:	72 08                	jb     402a24 <_IsNonwritableInCurrentImage+0x74>
  402a1c:	03 50 08             	add    0x8(%rax),%edx
  402a1f:	48 39 d1             	cmp    %rdx,%rcx
  402a22:	72 10                	jb     402a34 <_IsNonwritableInCurrentImage+0x84>
  402a24:	48 83 c0 28          	add    $0x28,%rax
  402a28:	4c 39 c8             	cmp    %r9,%rax
  402a2b:	75 e3                	jne    402a10 <_IsNonwritableInCurrentImage+0x60>
  402a2d:	31 c0                	xor    %eax,%eax
  402a2f:	48 83 c4 28          	add    $0x28,%rsp
  402a33:	c3                   	retq   
  402a34:	8b 40 24             	mov    0x24(%rax),%eax
  402a37:	f7 d0                	not    %eax
  402a39:	c1 e8 1f             	shr    $0x1f,%eax
  402a3c:	48 83 c4 28          	add    $0x28,%rsp
  402a40:	c3                   	retq   
  402a41:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402a46:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402a4d:	00 00 00 

0000000000402a50 <__mingw_enum_import_library_names>:
  402a50:	48 83 ec 28          	sub    $0x28,%rsp
  402a54:	4c 8b 1d 45 19 00 00 	mov    0x1945(%rip),%r11        # 4043a0 <.refptr.__image_base__>
  402a5b:	66 41 81 3b 4d 5a    	cmpw   $0x5a4d,(%r11)
  402a61:	41 89 c9             	mov    %ecx,%r9d
  402a64:	75 58                	jne    402abe <__mingw_enum_import_library_names+0x6e>
  402a66:	4c 89 d9             	mov    %r11,%rcx
  402a69:	e8 b2 fc ff ff       	callq  402720 <_ValidateImageBase.part.0>
  402a6e:	85 c0                	test   %eax,%eax
  402a70:	74 4c                	je     402abe <__mingw_enum_import_library_names+0x6e>
  402a72:	49 63 43 3c          	movslq 0x3c(%r11),%rax
  402a76:	4c 01 d8             	add    %r11,%rax
  402a79:	8b 90 90 00 00 00    	mov    0x90(%rax),%edx
  402a7f:	85 d2                	test   %edx,%edx
  402a81:	74 3b                	je     402abe <__mingw_enum_import_library_names+0x6e>
  402a83:	0f b7 48 14          	movzwl 0x14(%rax),%ecx
  402a87:	48 8d 4c 08 18       	lea    0x18(%rax,%rcx,1),%rcx
  402a8c:	0f b7 40 06          	movzwl 0x6(%rax),%eax
  402a90:	85 c0                	test   %eax,%eax
  402a92:	74 2a                	je     402abe <__mingw_enum_import_library_names+0x6e>
  402a94:	83 e8 01             	sub    $0x1,%eax
  402a97:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  402a9b:	48 8d 44 c1 28       	lea    0x28(%rcx,%rax,8),%rax
  402aa0:	44 8b 51 0c          	mov    0xc(%rcx),%r10d
  402aa4:	4c 39 d2             	cmp    %r10,%rdx
  402aa7:	4d 89 d0             	mov    %r10,%r8
  402aaa:	72 09                	jb     402ab5 <__mingw_enum_import_library_names+0x65>
  402aac:	44 03 41 08          	add    0x8(%rcx),%r8d
  402ab0:	4c 39 c2             	cmp    %r8,%rdx
  402ab3:	72 10                	jb     402ac5 <__mingw_enum_import_library_names+0x75>
  402ab5:	48 83 c1 28          	add    $0x28,%rcx
  402ab9:	48 39 c1             	cmp    %rax,%rcx
  402abc:	75 e2                	jne    402aa0 <__mingw_enum_import_library_names+0x50>
  402abe:	31 c0                	xor    %eax,%eax
  402ac0:	48 83 c4 28          	add    $0x28,%rsp
  402ac4:	c3                   	retq   
  402ac5:	4c 01 da             	add    %r11,%rdx
  402ac8:	75 0e                	jne    402ad8 <__mingw_enum_import_library_names+0x88>
  402aca:	eb f2                	jmp    402abe <__mingw_enum_import_library_names+0x6e>
  402acc:	0f 1f 40 00          	nopl   0x0(%rax)
  402ad0:	41 83 e9 01          	sub    $0x1,%r9d
  402ad4:	48 83 c2 14          	add    $0x14,%rdx
  402ad8:	8b 4a 04             	mov    0x4(%rdx),%ecx
  402adb:	85 c9                	test   %ecx,%ecx
  402add:	75 07                	jne    402ae6 <__mingw_enum_import_library_names+0x96>
  402adf:	8b 42 0c             	mov    0xc(%rdx),%eax
  402ae2:	85 c0                	test   %eax,%eax
  402ae4:	74 d8                	je     402abe <__mingw_enum_import_library_names+0x6e>
  402ae6:	45 85 c9             	test   %r9d,%r9d
  402ae9:	7f e5                	jg     402ad0 <__mingw_enum_import_library_names+0x80>
  402aeb:	8b 42 0c             	mov    0xc(%rdx),%eax
  402aee:	4c 01 d8             	add    %r11,%rax
  402af1:	48 83 c4 28          	add    $0x28,%rsp
  402af5:	c3                   	retq   
  402af6:	90                   	nop
  402af7:	90                   	nop
  402af8:	90                   	nop
  402af9:	90                   	nop
  402afa:	90                   	nop
  402afb:	90                   	nop
  402afc:	90                   	nop
  402afd:	90                   	nop
  402afe:	90                   	nop
  402aff:	90                   	nop

0000000000402b00 <___chkstk_ms>:
  402b00:	51                   	push   %rcx
  402b01:	50                   	push   %rax
  402b02:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
  402b08:	48 8d 4c 24 18       	lea    0x18(%rsp),%rcx
  402b0d:	72 19                	jb     402b28 <___chkstk_ms+0x28>
  402b0f:	48 81 e9 00 10 00 00 	sub    $0x1000,%rcx
  402b16:	48 83 09 00          	orq    $0x0,(%rcx)
  402b1a:	48 2d 00 10 00 00    	sub    $0x1000,%rax
  402b20:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
  402b26:	77 e7                	ja     402b0f <___chkstk_ms+0xf>
  402b28:	48 29 c1             	sub    %rax,%rcx
  402b2b:	48 83 09 00          	orq    $0x0,(%rcx)
  402b2f:	58                   	pop    %rax
  402b30:	59                   	pop    %rcx
  402b31:	c3                   	retq   
  402b32:	90                   	nop
  402b33:	90                   	nop
  402b34:	90                   	nop
  402b35:	90                   	nop
  402b36:	90                   	nop
  402b37:	90                   	nop
  402b38:	90                   	nop
  402b39:	90                   	nop
  402b3a:	90                   	nop
  402b3b:	90                   	nop
  402b3c:	90                   	nop
  402b3d:	90                   	nop
  402b3e:	90                   	nop
  402b3f:	90                   	nop

0000000000402b40 <vfprintf>:
  402b40:	ff 25 16 58 00 00    	jmpq   *0x5816(%rip)        # 40835c <__imp_vfprintf>
  402b46:	90                   	nop
  402b47:	90                   	nop

0000000000402b48 <strncmp>:
  402b48:	ff 25 06 58 00 00    	jmpq   *0x5806(%rip)        # 408354 <__imp_strncmp>
  402b4e:	90                   	nop
  402b4f:	90                   	nop

0000000000402b50 <strlen>:
  402b50:	ff 25 f6 57 00 00    	jmpq   *0x57f6(%rip)        # 40834c <__imp_strlen>
  402b56:	90                   	nop
  402b57:	90                   	nop

0000000000402b58 <signal>:
  402b58:	ff 25 e6 57 00 00    	jmpq   *0x57e6(%rip)        # 408344 <__imp_signal>
  402b5e:	90                   	nop
  402b5f:	90                   	nop

0000000000402b60 <printf>:
  402b60:	ff 25 d6 57 00 00    	jmpq   *0x57d6(%rip)        # 40833c <__imp_printf>
  402b66:	90                   	nop
  402b67:	90                   	nop

0000000000402b68 <memcpy>:
  402b68:	ff 25 c6 57 00 00    	jmpq   *0x57c6(%rip)        # 408334 <__imp_memcpy>
  402b6e:	90                   	nop
  402b6f:	90                   	nop

0000000000402b70 <malloc>:
  402b70:	ff 25 b6 57 00 00    	jmpq   *0x57b6(%rip)        # 40832c <__imp_malloc>
  402b76:	90                   	nop
  402b77:	90                   	nop

0000000000402b78 <fwrite>:
  402b78:	ff 25 a6 57 00 00    	jmpq   *0x57a6(%rip)        # 408324 <__imp_fwrite>
  402b7e:	90                   	nop
  402b7f:	90                   	nop

0000000000402b80 <free>:
  402b80:	ff 25 96 57 00 00    	jmpq   *0x5796(%rip)        # 40831c <__imp_free>
  402b86:	90                   	nop
  402b87:	90                   	nop

0000000000402b88 <fprintf>:
  402b88:	ff 25 86 57 00 00    	jmpq   *0x5786(%rip)        # 408314 <__imp_fprintf>
  402b8e:	90                   	nop
  402b8f:	90                   	nop

0000000000402b90 <exit>:
  402b90:	ff 25 76 57 00 00    	jmpq   *0x5776(%rip)        # 40830c <__imp_exit>
  402b96:	90                   	nop
  402b97:	90                   	nop

0000000000402b98 <calloc>:
  402b98:	ff 25 66 57 00 00    	jmpq   *0x5766(%rip)        # 408304 <__imp_calloc>
  402b9e:	90                   	nop
  402b9f:	90                   	nop

0000000000402ba0 <abort>:
  402ba0:	ff 25 56 57 00 00    	jmpq   *0x5756(%rip)        # 4082fc <__imp_abort>
  402ba6:	90                   	nop
  402ba7:	90                   	nop

0000000000402ba8 <_onexit>:
  402ba8:	ff 25 46 57 00 00    	jmpq   *0x5746(%rip)        # 4082f4 <__imp__onexit>
  402bae:	90                   	nop
  402baf:	90                   	nop

0000000000402bb0 <_initterm>:
  402bb0:	ff 25 36 57 00 00    	jmpq   *0x5736(%rip)        # 4082ec <__imp__initterm>
  402bb6:	90                   	nop
  402bb7:	90                   	nop

0000000000402bb8 <_cexit>:
  402bb8:	ff 25 1e 57 00 00    	jmpq   *0x571e(%rip)        # 4082dc <__imp__cexit>
  402bbe:	90                   	nop
  402bbf:	90                   	nop

0000000000402bc0 <_amsg_exit>:
  402bc0:	ff 25 0e 57 00 00    	jmpq   *0x570e(%rip)        # 4082d4 <__imp__amsg_exit>
  402bc6:	90                   	nop
  402bc7:	90                   	nop

0000000000402bc8 <__setusermatherr>:
  402bc8:	ff 25 f6 56 00 00    	jmpq   *0x56f6(%rip)        # 4082c4 <__imp___setusermatherr>
  402bce:	90                   	nop
  402bcf:	90                   	nop

0000000000402bd0 <__set_app_type>:
  402bd0:	ff 25 e6 56 00 00    	jmpq   *0x56e6(%rip)        # 4082bc <__imp___set_app_type>
  402bd6:	90                   	nop
  402bd7:	90                   	nop

0000000000402bd8 <__lconv_init>:
  402bd8:	ff 25 d6 56 00 00    	jmpq   *0x56d6(%rip)        # 4082b4 <__imp___lconv_init>
  402bde:	90                   	nop
  402bdf:	90                   	nop

0000000000402be0 <__getmainargs>:
  402be0:	ff 25 b6 56 00 00    	jmpq   *0x56b6(%rip)        # 40829c <__imp___getmainargs>
  402be6:	90                   	nop
  402be7:	90                   	nop

0000000000402be8 <__C_specific_handler>:
  402be8:	ff 25 a6 56 00 00    	jmpq   *0x56a6(%rip)        # 408294 <__imp___C_specific_handler>
  402bee:	90                   	nop
  402bef:	90                   	nop

0000000000402bf0 <__acrt_iob_func>:
  402bf0:	53                   	push   %rbx
  402bf1:	48 83 ec 20          	sub    $0x20,%rsp
  402bf5:	89 cb                	mov    %ecx,%ebx
  402bf7:	e8 54 00 00 00       	callq  402c50 <__iob_func>
  402bfc:	89 d9                	mov    %ebx,%ecx
  402bfe:	48 8d 14 49          	lea    (%rcx,%rcx,2),%rdx
  402c02:	48 c1 e2 04          	shl    $0x4,%rdx
  402c06:	48 01 d0             	add    %rdx,%rax
  402c09:	48 83 c4 20          	add    $0x20,%rsp
  402c0d:	5b                   	pop    %rbx
  402c0e:	c3                   	retq   
  402c0f:	90                   	nop

0000000000402c10 <_get_invalid_parameter_handler>:
  402c10:	48 8b 05 39 4d 00 00 	mov    0x4d39(%rip),%rax        # 407950 <handler>
  402c17:	c3                   	retq   
  402c18:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402c1f:	00 

0000000000402c20 <_set_invalid_parameter_handler>:
  402c20:	48 89 c8             	mov    %rcx,%rax
  402c23:	48 87 05 26 4d 00 00 	xchg   %rax,0x4d26(%rip)        # 407950 <handler>
  402c2a:	c3                   	retq   
  402c2b:	90                   	nop
  402c2c:	90                   	nop
  402c2d:	90                   	nop
  402c2e:	90                   	nop
  402c2f:	90                   	nop

0000000000402c30 <__p__acmdln>:
  402c30:	48 8b 05 89 17 00 00 	mov    0x1789(%rip),%rax        # 4043c0 <.refptr.__imp__acmdln>
  402c37:	48 8b 00             	mov    (%rax),%rax
  402c3a:	c3                   	retq   
  402c3b:	90                   	nop
  402c3c:	90                   	nop
  402c3d:	90                   	nop
  402c3e:	90                   	nop
  402c3f:	90                   	nop

0000000000402c40 <__p__fmode>:
  402c40:	48 8b 05 89 17 00 00 	mov    0x1789(%rip),%rax        # 4043d0 <.refptr.__imp__fmode>
  402c47:	48 8b 00             	mov    (%rax),%rax
  402c4a:	c3                   	retq   
  402c4b:	90                   	nop
  402c4c:	90                   	nop
  402c4d:	90                   	nop
  402c4e:	90                   	nop
  402c4f:	90                   	nop

0000000000402c50 <__iob_func>:
  402c50:	ff 25 56 56 00 00    	jmpq   *0x5656(%rip)        # 4082ac <__imp___iob_func>
  402c56:	90                   	nop
  402c57:	90                   	nop
  402c58:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402c5f:	00 

0000000000402c60 <VirtualQuery>:
  402c60:	ff 25 1e 56 00 00    	jmpq   *0x561e(%rip)        # 408284 <__imp_VirtualQuery>
  402c66:	90                   	nop
  402c67:	90                   	nop

0000000000402c68 <VirtualProtect>:
  402c68:	ff 25 0e 56 00 00    	jmpq   *0x560e(%rip)        # 40827c <__imp_VirtualProtect>
  402c6e:	90                   	nop
  402c6f:	90                   	nop

0000000000402c70 <UnhandledExceptionFilter>:
  402c70:	ff 25 fe 55 00 00    	jmpq   *0x55fe(%rip)        # 408274 <__imp_UnhandledExceptionFilter>
  402c76:	90                   	nop
  402c77:	90                   	nop

0000000000402c78 <TlsGetValue>:
  402c78:	ff 25 ee 55 00 00    	jmpq   *0x55ee(%rip)        # 40826c <__imp_TlsGetValue>
  402c7e:	90                   	nop
  402c7f:	90                   	nop

0000000000402c80 <TerminateProcess>:
  402c80:	ff 25 de 55 00 00    	jmpq   *0x55de(%rip)        # 408264 <__imp_TerminateProcess>
  402c86:	90                   	nop
  402c87:	90                   	nop

0000000000402c88 <Sleep>:
  402c88:	ff 25 ce 55 00 00    	jmpq   *0x55ce(%rip)        # 40825c <__imp_Sleep>
  402c8e:	90                   	nop
  402c8f:	90                   	nop

0000000000402c90 <SetUnhandledExceptionFilter>:
  402c90:	ff 25 be 55 00 00    	jmpq   *0x55be(%rip)        # 408254 <__imp_SetUnhandledExceptionFilter>
  402c96:	90                   	nop
  402c97:	90                   	nop

0000000000402c98 <RtlVirtualUnwind>:
  402c98:	ff 25 ae 55 00 00    	jmpq   *0x55ae(%rip)        # 40824c <__imp_RtlVirtualUnwind>
  402c9e:	90                   	nop
  402c9f:	90                   	nop

0000000000402ca0 <RtlLookupFunctionEntry>:
  402ca0:	ff 25 9e 55 00 00    	jmpq   *0x559e(%rip)        # 408244 <__imp_RtlLookupFunctionEntry>
  402ca6:	90                   	nop
  402ca7:	90                   	nop

0000000000402ca8 <RtlCaptureContext>:
  402ca8:	ff 25 8e 55 00 00    	jmpq   *0x558e(%rip)        # 40823c <__imp_RtlCaptureContext>
  402cae:	90                   	nop
  402caf:	90                   	nop

0000000000402cb0 <RtlAddFunctionTable>:
  402cb0:	ff 25 7e 55 00 00    	jmpq   *0x557e(%rip)        # 408234 <__imp_RtlAddFunctionTable>
  402cb6:	90                   	nop
  402cb7:	90                   	nop

0000000000402cb8 <QueryPerformanceCounter>:
  402cb8:	ff 25 6e 55 00 00    	jmpq   *0x556e(%rip)        # 40822c <__imp_QueryPerformanceCounter>
  402cbe:	90                   	nop
  402cbf:	90                   	nop

0000000000402cc0 <LeaveCriticalSection>:
  402cc0:	ff 25 5e 55 00 00    	jmpq   *0x555e(%rip)        # 408224 <__imp_LeaveCriticalSection>
  402cc6:	90                   	nop
  402cc7:	90                   	nop

0000000000402cc8 <InitializeCriticalSection>:
  402cc8:	ff 25 4e 55 00 00    	jmpq   *0x554e(%rip)        # 40821c <__imp_InitializeCriticalSection>
  402cce:	90                   	nop
  402ccf:	90                   	nop

0000000000402cd0 <GetTickCount>:
  402cd0:	ff 25 3e 55 00 00    	jmpq   *0x553e(%rip)        # 408214 <__imp_GetTickCount>
  402cd6:	90                   	nop
  402cd7:	90                   	nop

0000000000402cd8 <GetSystemTimeAsFileTime>:
  402cd8:	ff 25 2e 55 00 00    	jmpq   *0x552e(%rip)        # 40820c <__imp_GetSystemTimeAsFileTime>
  402cde:	90                   	nop
  402cdf:	90                   	nop

0000000000402ce0 <GetStartupInfoA>:
  402ce0:	ff 25 1e 55 00 00    	jmpq   *0x551e(%rip)        # 408204 <__imp_GetStartupInfoA>
  402ce6:	90                   	nop
  402ce7:	90                   	nop

0000000000402ce8 <GetLastError>:
  402ce8:	ff 25 0e 55 00 00    	jmpq   *0x550e(%rip)        # 4081fc <__imp_GetLastError>
  402cee:	90                   	nop
  402cef:	90                   	nop

0000000000402cf0 <GetCurrentThreadId>:
  402cf0:	ff 25 fe 54 00 00    	jmpq   *0x54fe(%rip)        # 4081f4 <__imp_GetCurrentThreadId>
  402cf6:	90                   	nop
  402cf7:	90                   	nop

0000000000402cf8 <GetCurrentProcessId>:
  402cf8:	ff 25 ee 54 00 00    	jmpq   *0x54ee(%rip)        # 4081ec <__imp_GetCurrentProcessId>
  402cfe:	90                   	nop
  402cff:	90                   	nop

0000000000402d00 <GetCurrentProcess>:
  402d00:	ff 25 de 54 00 00    	jmpq   *0x54de(%rip)        # 4081e4 <__imp_GetCurrentProcess>
  402d06:	90                   	nop
  402d07:	90                   	nop

0000000000402d08 <EnterCriticalSection>:
  402d08:	ff 25 ce 54 00 00    	jmpq   *0x54ce(%rip)        # 4081dc <__imp_EnterCriticalSection>
  402d0e:	90                   	nop
  402d0f:	90                   	nop

0000000000402d10 <DeleteCriticalSection>:
  402d10:	ff 25 be 54 00 00    	jmpq   *0x54be(%rip)        # 4081d4 <__IAT_start__>
  402d16:	90                   	nop
  402d17:	90                   	nop
  402d18:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402d1f:	00 

0000000000402d20 <__report_error>:
  402d20:	56                   	push   %rsi
  402d21:	53                   	push   %rbx
  402d22:	48 83 ec 38          	sub    $0x38,%rsp
  402d26:	48 8d 44 24 58       	lea    0x58(%rsp),%rax
  402d2b:	48 89 cb             	mov    %rcx,%rbx
  402d2e:	b9 02 00 00 00       	mov    $0x2,%ecx
  402d33:	48 89 54 24 58       	mov    %rdx,0x58(%rsp)
  402d38:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
  402d3d:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
  402d42:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  402d47:	e8 a4 fe ff ff       	callq  402bf0 <__acrt_iob_func>
  402d4c:	41 b8 1b 00 00 00    	mov    $0x1b,%r8d
  402d52:	ba 01 00 00 00       	mov    $0x1,%edx
  402d57:	48 8d 0d c2 14 00 00 	lea    0x14c2(%rip),%rcx        # 404220 <.rdata>
  402d5e:	49 89 c1             	mov    %rax,%r9
  402d61:	e8 12 fe ff ff       	callq  402b78 <fwrite>
  402d66:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
  402d6b:	b9 02 00 00 00       	mov    $0x2,%ecx
  402d70:	e8 7b fe ff ff       	callq  402bf0 <__acrt_iob_func>
  402d75:	48 89 da             	mov    %rbx,%rdx
  402d78:	48 89 c1             	mov    %rax,%rcx
  402d7b:	49 89 f0             	mov    %rsi,%r8
  402d7e:	e8 bd fd ff ff       	callq  402b40 <vfprintf>
  402d83:	e8 18 fe ff ff       	callq  402ba0 <abort>
  402d88:	90                   	nop
  402d89:	90                   	nop
  402d8a:	90                   	nop
  402d8b:	90                   	nop
  402d8c:	90                   	nop
  402d8d:	90                   	nop
  402d8e:	90                   	nop
  402d8f:	90                   	nop

0000000000402d90 <register_frame_ctor>:
  402d90:	e9 9b e7 ff ff       	jmpq   401530 <__gcc_register_frame>
  402d95:	90                   	nop
  402d96:	90                   	nop
  402d97:	90                   	nop
  402d98:	90                   	nop
  402d99:	90                   	nop
  402d9a:	90                   	nop
  402d9b:	90                   	nop
  402d9c:	90                   	nop
  402d9d:	90                   	nop
  402d9e:	90                   	nop
  402d9f:	90                   	nop

0000000000402da0 <__CTOR_LIST__>:
  402da0:	ff                   	(bad)  
  402da1:	ff                   	(bad)  
  402da2:	ff                   	(bad)  
  402da3:	ff                   	(bad)  
  402da4:	ff                   	(bad)  
  402da5:	ff                   	(bad)  
  402da6:	ff                   	(bad)  
  402da7:	ff                   	.byte 0xff

0000000000402da8 <.ctors.65535>:
  402da8:	90                   	nop
  402da9:	2d 40 00 00 00       	sub    $0x40,%eax
	...

0000000000402db8 <__DTOR_LIST__>:
  402db8:	ff                   	(bad)  
  402db9:	ff                   	(bad)  
  402dba:	ff                   	(bad)  
  402dbb:	ff                   	(bad)  
  402dbc:	ff                   	(bad)  
  402dbd:	ff                   	(bad)  
  402dbe:	ff                   	(bad)  
  402dbf:	ff 00                	incl   (%rax)
  402dc1:	00 00                	add    %al,(%rax)
  402dc3:	00 00                	add    %al,(%rax)
  402dc5:	00 00                	add    %al,(%rax)
	...
