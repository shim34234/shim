
main.exe:     file format pei-x86-64


Disassembly of section .text:

0000000000401000 <__mingw_invalidParameterHandler>:
  401000:	c3                   	retq   
  401001:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401006:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40100d:	00 00 00 

0000000000401010 <pre_c_init>:
  401010:	48 83 ec 28          	sub    $0x28,%rsp
  401014:	48 8b 05 45 34 00 00 	mov    0x3445(%rip),%rax        # 404460 <.refptr.mingw_initltsdrot_force>
  40101b:	31 d2                	xor    %edx,%edx
  40101d:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  401023:	48 8b 05 46 34 00 00 	mov    0x3446(%rip),%rax        # 404470 <.refptr.mingw_initltsdyn_force>
  40102a:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  401030:	48 8b 05 49 34 00 00 	mov    0x3449(%rip),%rax        # 404480 <.refptr.mingw_initltssuo_force>
  401037:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  40103d:	48 8b 05 0c 34 00 00 	mov    0x340c(%rip),%rax        # 404450 <.refptr.mingw_initcharmax>
  401044:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  40104a:	48 8b 05 ef 32 00 00 	mov    0x32ef(%rip),%rax        # 404340 <.refptr.__image_base__>
  401051:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
  401056:	74 58                	je     4010b0 <pre_c_init+0xa0>
  401058:	48 8b 05 e1 33 00 00 	mov    0x33e1(%rip),%rax        # 404440 <.refptr.mingw_app_type>
  40105f:	89 15 a3 5f 00 00    	mov    %edx,0x5fa3(%rip)        # 407008 <managedapp>
  401065:	8b 00                	mov    (%rax),%eax
  401067:	85 c0                	test   %eax,%eax
  401069:	74 35                	je     4010a0 <pre_c_init+0x90>
  40106b:	b9 02 00 00 00       	mov    $0x2,%ecx
  401070:	e8 9b 1a 00 00       	callq  402b10 <__set_app_type>
  401075:	e8 06 1b 00 00       	callq  402b80 <__p__fmode>
  40107a:	48 8b 15 7f 33 00 00 	mov    0x337f(%rip),%rdx        # 404400 <.refptr._fmode>
  401081:	8b 12                	mov    (%rdx),%edx
  401083:	89 10                	mov    %edx,(%rax)
  401085:	e8 16 06 00 00       	callq  4016a0 <_setargv>
  40108a:	48 8b 05 5f 32 00 00 	mov    0x325f(%rip),%rax        # 4042f0 <.refptr._MINGW_INSTALL_DEBUG_MATHERR>
  401091:	83 38 01             	cmpl   $0x1,(%rax)
  401094:	74 5a                	je     4010f0 <pre_c_init+0xe0>
  401096:	31 c0                	xor    %eax,%eax
  401098:	48 83 c4 28          	add    $0x28,%rsp
  40109c:	c3                   	retq   
  40109d:	0f 1f 00             	nopl   (%rax)
  4010a0:	b9 01 00 00 00       	mov    $0x1,%ecx
  4010a5:	e8 66 1a 00 00       	callq  402b10 <__set_app_type>
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
  4010f0:	48 8d 0d b9 08 00 00 	lea    0x8b9(%rip),%rcx        # 4019b0 <_matherr>
  4010f7:	e8 a4 08 00 00       	callq  4019a0 <__mingw_setusermatherr>
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
  401134:	48 8b 05 f5 32 00 00 	mov    0x32f5(%rip),%rax        # 404430 <.refptr._newmode>
  40113b:	4c 8d 05 ce 5e 00 00 	lea    0x5ece(%rip),%r8        # 407010 <envp>
  401142:	48 8d 15 cf 5e 00 00 	lea    0x5ecf(%rip),%rdx        # 407018 <argv>
  401149:	48 8d 0d d0 5e 00 00 	lea    0x5ed0(%rip),%rcx        # 407020 <argc>
  401150:	8b 00                	mov    (%rax),%eax
  401152:	89 05 a8 5e 00 00    	mov    %eax,0x5ea8(%rip)        # 407000 <__bss_start__>
  401158:	48 8d 05 a1 5e 00 00 	lea    0x5ea1(%rip),%rax        # 407000 <__bss_start__>
  40115f:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  401164:	48 8b 05 85 32 00 00 	mov    0x3285(%rip),%rax        # 4043f0 <.refptr._dowildcard>
  40116b:	44 8b 08             	mov    (%rax),%r9d
  40116e:	e8 ad 19 00 00       	callq  402b20 <__getmainargs>
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
  4011a1:	48 8b 3d 98 32 00 00 	mov    0x3298(%rip),%rdi        # 404440 <.refptr.mingw_app_type>
  4011a8:	44 8b 0f             	mov    (%rdi),%r9d
  4011ab:	45 85 c9             	test   %r9d,%r9d
  4011ae:	0f 85 bc 02 00 00    	jne    401470 <__tmainCRTStartup+0x2f0>
  4011b4:	65 48 8b 04 25 30 00 	mov    %gs:0x30,%rax
  4011bb:	00 00 
  4011bd:	48 8b 1d cc 31 00 00 	mov    0x31cc(%rip),%rbx        # 404390 <.refptr.__native_startup_lock>
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
  4011f1:	48 8b 35 a8 31 00 00 	mov    0x31a8(%rip),%rsi        # 4043a0 <.refptr.__native_startup_state>
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
  40122c:	48 8b 05 fd 30 00 00 	mov    0x30fd(%rip),%rax        # 404330 <.refptr.__dyn_tls_init_callback>
  401233:	48 8b 00             	mov    (%rax),%rax
  401236:	48 85 c0             	test   %rax,%rax
  401239:	74 0c                	je     401247 <__tmainCRTStartup+0xc7>
  40123b:	45 31 c0             	xor    %r8d,%r8d
  40123e:	ba 02 00 00 00       	mov    $0x2,%edx
  401243:	31 c9                	xor    %ecx,%ecx
  401245:	ff d0                	callq  *%rax
  401247:	e8 64 0a 00 00       	callq  401cb0 <_pei386_runtime_relocator>
  40124c:	48 8d 0d ad 0f 00 00 	lea    0xfad(%rip),%rcx        # 402200 <_gnu_exception_handler>
  401253:	ff 15 fb 6f 00 00    	callq  *0x6ffb(%rip)        # 408254 <__imp_SetUnhandledExceptionFilter>
  401259:	48 8b 15 20 31 00 00 	mov    0x3120(%rip),%rdx        # 404380 <.refptr.__mingw_oldexcpt_handler>
  401260:	48 89 02             	mov    %rax,(%rdx)
  401263:	e8 a8 0e 00 00       	callq  402110 <__mingw_init_ehandler>
  401268:	48 8d 0d 91 fd ff ff 	lea    -0x26f(%rip),%rcx        # 401000 <__mingw_invalidParameterHandler>
  40126f:	e8 ec 18 00 00       	callq  402b60 <_set_invalid_parameter_handler>
  401274:	e8 37 08 00 00       	callq  401ab0 <_fpreset>
  401279:	48 8b 05 c0 30 00 00 	mov    0x30c0(%rip),%rax        # 404340 <.refptr.__image_base__>
  401280:	48 89 05 e1 66 00 00 	mov    %rax,0x66e1(%rip)        # 407968 <__mingw_winmain_hInstance>
  401287:	e8 e4 18 00 00       	callq  402b70 <__p__acmdln>
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
  401329:	e8 82 17 00 00       	callq  402ab0 <malloc>
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
  401354:	e8 37 17 00 00       	callq  402a90 <strlen>
  401359:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40135d:	48 89 f1             	mov    %rsi,%rcx
  401360:	e8 4b 17 00 00       	callq  402ab0 <malloc>
  401365:	49 89 f0             	mov    %rsi,%r8
  401368:	48 89 44 1d 00       	mov    %rax,0x0(%rbp,%rbx,1)
  40136d:	48 8b 14 1f          	mov    (%rdi,%rbx,1),%rdx
  401371:	48 89 c1             	mov    %rax,%rcx
  401374:	48 83 c3 08          	add    $0x8,%rbx
  401378:	e8 2b 17 00 00       	callq  402aa8 <memcpy>
  40137d:	49 39 dd             	cmp    %rbx,%r13
  401380:	75 ce                	jne    401350 <__tmainCRTStartup+0x1d0>
  401382:	4a 8d 44 25 f8       	lea    -0x8(%rbp,%r12,1),%rax
  401387:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
  40138e:	48 89 2d 83 5c 00 00 	mov    %rbp,0x5c83(%rip)        # 407018 <argv>
  401395:	e8 d6 02 00 00       	callq  401670 <__main>
  40139a:	48 8b 05 af 2f 00 00 	mov    0x2faf(%rip),%rax        # 404350 <.refptr.__imp___initenv>
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
  4013e5:	e8 0e 17 00 00       	callq  402af8 <_cexit>
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
  401410:	48 8b 35 89 2f 00 00 	mov    0x2f89(%rip),%rsi        # 4043a0 <.refptr.__native_startup_state>
  401417:	bd 01 00 00 00       	mov    $0x1,%ebp
  40141c:	8b 06                	mov    (%rsi),%eax
  40141e:	83 f8 01             	cmp    $0x1,%eax
  401421:	0f 85 de fd ff ff    	jne    401205 <__tmainCRTStartup+0x85>
  401427:	b9 1f 00 00 00       	mov    $0x1f,%ecx
  40142c:	e8 cf 16 00 00       	callq  402b00 <_amsg_exit>
  401431:	8b 06                	mov    (%rsi),%eax
  401433:	83 f8 01             	cmp    $0x1,%eax
  401436:	0f 85 e8 fd ff ff    	jne    401224 <__tmainCRTStartup+0xa4>
  40143c:	48 8b 15 7d 2f 00 00 	mov    0x2f7d(%rip),%rdx        # 4043c0 <.refptr.__xc_z>
  401443:	48 8b 0d 66 2f 00 00 	mov    0x2f66(%rip),%rcx        # 4043b0 <.refptr.__xc_a>
  40144a:	e8 a1 16 00 00       	callq  402af0 <_initterm>
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
  401480:	48 8b 15 59 2f 00 00 	mov    0x2f59(%rip),%rdx        # 4043e0 <.refptr.__xi_z>
  401487:	c7 06 01 00 00 00    	movl   $0x1,(%rsi)
  40148d:	48 8b 0d 3c 2f 00 00 	mov    0x2f3c(%rip),%rcx        # 4043d0 <.refptr.__xi_a>
  401494:	e8 57 16 00 00       	callq  402af0 <_initterm>
  401499:	e9 7b fd ff ff       	jmpq   401219 <__tmainCRTStartup+0x99>
  40149e:	89 c1                	mov    %eax,%ecx
  4014a0:	e8 2b 16 00 00       	callq  402ad0 <exit>
  4014a5:	90                   	nop
  4014a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4014ad:	00 00 00 

00000000004014b0 <WinMainCRTStartup>:
  4014b0:	48 83 ec 28          	sub    $0x28,%rsp

00000000004014b4 <.l_startw>:
  4014b4:	48 8b 05 85 2f 00 00 	mov    0x2f85(%rip),%rax        # 404440 <.refptr.mingw_app_type>
  4014bb:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  4014c1:	e8 ea 01 00 00       	callq  4016b0 <__security_init_cookie>
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
  4014e4:	48 8b 05 55 2f 00 00 	mov    0x2f55(%rip),%rax        # 404440 <.refptr.mingw_app_type>
  4014eb:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
  4014f1:	e8 ba 01 00 00       	callq  4016b0 <__security_init_cookie>
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
  401514:	e8 cf 15 00 00       	callq  402ae8 <_onexit>
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
  401558:	e8 13 01 00 00       	callq  401670 <__main>
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
  401586:	e8 15 15 00 00       	callq  402aa0 <printf>
  40158b:	b8 00 00 00 00       	mov    $0x0,%eax
  401590:	48 83 c4 30          	add    $0x30,%rsp
  401594:	5d                   	pop    %rbp
  401595:	c3                   	retq   
  401596:	90                   	nop
  401597:	90                   	nop
  401598:	90                   	nop
  401599:	90                   	nop
  40159a:	90                   	nop
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

00000000004015c0 <__do_global_dtors>:
  4015c0:	48 83 ec 28          	sub    $0x28,%rsp
  4015c4:	48 8b 05 45 1a 00 00 	mov    0x1a45(%rip),%rax        # 403010 <p.93846>
  4015cb:	48 8b 00             	mov    (%rax),%rax
  4015ce:	48 85 c0             	test   %rax,%rax
  4015d1:	74 1d                	je     4015f0 <__do_global_dtors+0x30>
  4015d3:	ff d0                	callq  *%rax
  4015d5:	48 8b 05 34 1a 00 00 	mov    0x1a34(%rip),%rax        # 403010 <p.93846>
  4015dc:	48 8d 50 08          	lea    0x8(%rax),%rdx
  4015e0:	48 8b 40 08          	mov    0x8(%rax),%rax
  4015e4:	48 89 15 25 1a 00 00 	mov    %rdx,0x1a25(%rip)        # 403010 <p.93846>
  4015eb:	48 85 c0             	test   %rax,%rax
  4015ee:	75 e3                	jne    4015d3 <__do_global_dtors+0x13>
  4015f0:	48 83 c4 28          	add    $0x28,%rsp
  4015f4:	c3                   	retq   
  4015f5:	90                   	nop
  4015f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4015fd:	00 00 00 

0000000000401600 <__do_global_ctors>:
  401600:	56                   	push   %rsi
  401601:	53                   	push   %rbx
  401602:	48 83 ec 28          	sub    $0x28,%rsp
  401606:	48 8b 0d f3 2c 00 00 	mov    0x2cf3(%rip),%rcx        # 404300 <.refptr.__CTOR_LIST__>
  40160d:	48 8b 11             	mov    (%rcx),%rdx
  401610:	83 fa ff             	cmp    $0xffffffff,%edx
  401613:	89 d0                	mov    %edx,%eax
  401615:	74 39                	je     401650 <__do_global_ctors+0x50>
  401617:	85 c0                	test   %eax,%eax
  401619:	74 20                	je     40163b <__do_global_ctors+0x3b>
  40161b:	89 c2                	mov    %eax,%edx
  40161d:	83 e8 01             	sub    $0x1,%eax
  401620:	48 8d 1c d1          	lea    (%rcx,%rdx,8),%rbx
  401624:	48 29 c2             	sub    %rax,%rdx
  401627:	48 8d 74 d1 f8       	lea    -0x8(%rcx,%rdx,8),%rsi
  40162c:	0f 1f 40 00          	nopl   0x0(%rax)
  401630:	ff 13                	callq  *(%rbx)
  401632:	48 83 eb 08          	sub    $0x8,%rbx
  401636:	48 39 f3             	cmp    %rsi,%rbx
  401639:	75 f5                	jne    401630 <__do_global_ctors+0x30>
  40163b:	48 8d 0d 7e ff ff ff 	lea    -0x82(%rip),%rcx        # 4015c0 <__do_global_dtors>
  401642:	48 83 c4 28          	add    $0x28,%rsp
  401646:	5b                   	pop    %rbx
  401647:	5e                   	pop    %rsi
  401648:	e9 c3 fe ff ff       	jmpq   401510 <atexit>
  40164d:	0f 1f 00             	nopl   (%rax)
  401650:	31 c0                	xor    %eax,%eax
  401652:	eb 02                	jmp    401656 <__do_global_ctors+0x56>
  401654:	89 d0                	mov    %edx,%eax
  401656:	44 8d 40 01          	lea    0x1(%rax),%r8d
  40165a:	4a 83 3c c1 00       	cmpq   $0x0,(%rcx,%r8,8)
  40165f:	4c 89 c2             	mov    %r8,%rdx
  401662:	75 f0                	jne    401654 <__do_global_ctors+0x54>
  401664:	eb b1                	jmp    401617 <__do_global_ctors+0x17>
  401666:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40166d:	00 00 00 

0000000000401670 <__main>:
  401670:	8b 05 ba 59 00 00    	mov    0x59ba(%rip),%eax        # 407030 <initialized>
  401676:	85 c0                	test   %eax,%eax
  401678:	74 06                	je     401680 <__main+0x10>
  40167a:	c3                   	retq   
  40167b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401680:	c7 05 a6 59 00 00 01 	movl   $0x1,0x59a6(%rip)        # 407030 <initialized>
  401687:	00 00 00 
  40168a:	e9 71 ff ff ff       	jmpq   401600 <__do_global_ctors>
  40168f:	90                   	nop

0000000000401690 <my_lconv_init>:
  401690:	48 ff 25 1d 6c 00 00 	rex.W jmpq *0x6c1d(%rip)        # 4082b4 <__imp___lconv_init>
  401697:	90                   	nop
  401698:	90                   	nop
  401699:	90                   	nop
  40169a:	90                   	nop
  40169b:	90                   	nop
  40169c:	90                   	nop
  40169d:	90                   	nop
  40169e:	90                   	nop
  40169f:	90                   	nop

00000000004016a0 <_setargv>:
  4016a0:	31 c0                	xor    %eax,%eax
  4016a2:	c3                   	retq   
  4016a3:	90                   	nop
  4016a4:	90                   	nop
  4016a5:	90                   	nop
  4016a6:	90                   	nop
  4016a7:	90                   	nop
  4016a8:	90                   	nop
  4016a9:	90                   	nop
  4016aa:	90                   	nop
  4016ab:	90                   	nop
  4016ac:	90                   	nop
  4016ad:	90                   	nop
  4016ae:	90                   	nop
  4016af:	90                   	nop

00000000004016b0 <__security_init_cookie>:
  4016b0:	41 54                	push   %r12
  4016b2:	55                   	push   %rbp
  4016b3:	57                   	push   %rdi
  4016b4:	56                   	push   %rsi
  4016b5:	53                   	push   %rbx
  4016b6:	48 83 ec 30          	sub    $0x30,%rsp
  4016ba:	48 8b 1d ef 19 00 00 	mov    0x19ef(%rip),%rbx        # 4030b0 <__security_cookie>
  4016c1:	48 b8 32 a2 df 2d 99 	movabs $0x2b992ddfa232,%rax
  4016c8:	2b 00 00 
  4016cb:	48 39 c3             	cmp    %rax,%rbx
  4016ce:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
  4016d5:	00 00 
  4016d7:	74 17                	je     4016f0 <__security_init_cookie+0x40>
  4016d9:	48 f7 d3             	not    %rbx
  4016dc:	48 89 1d dd 19 00 00 	mov    %rbx,0x19dd(%rip)        # 4030c0 <__security_cookie_complement>
  4016e3:	48 83 c4 30          	add    $0x30,%rsp
  4016e7:	5b                   	pop    %rbx
  4016e8:	5e                   	pop    %rsi
  4016e9:	5f                   	pop    %rdi
  4016ea:	5d                   	pop    %rbp
  4016eb:	41 5c                	pop    %r12
  4016ed:	c3                   	retq   
  4016ee:	66 90                	xchg   %ax,%ax
  4016f0:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
  4016f5:	ff 15 11 6b 00 00    	callq  *0x6b11(%rip)        # 40820c <__imp_GetSystemTimeAsFileTime>
  4016fb:	48 8b 74 24 20       	mov    0x20(%rsp),%rsi
  401700:	ff 15 e6 6a 00 00    	callq  *0x6ae6(%rip)        # 4081ec <__imp_GetCurrentProcessId>
  401706:	41 89 c4             	mov    %eax,%r12d
  401709:	ff 15 e5 6a 00 00    	callq  *0x6ae5(%rip)        # 4081f4 <__imp_GetCurrentThreadId>
  40170f:	89 c5                	mov    %eax,%ebp
  401711:	ff 15 fd 6a 00 00    	callq  *0x6afd(%rip)        # 408214 <__imp_GetTickCount>
  401717:	48 8d 4c 24 28       	lea    0x28(%rsp),%rcx
  40171c:	89 c7                	mov    %eax,%edi
  40171e:	ff 15 08 6b 00 00    	callq  *0x6b08(%rip)        # 40822c <__imp_QueryPerformanceCounter>
  401724:	48 33 74 24 28       	xor    0x28(%rsp),%rsi
  401729:	44 89 e0             	mov    %r12d,%eax
  40172c:	48 ba ff ff ff ff ff 	movabs $0xffffffffffff,%rdx
  401733:	ff 00 00 
  401736:	48 31 f0             	xor    %rsi,%rax
  401739:	89 ee                	mov    %ebp,%esi
  40173b:	48 31 c6             	xor    %rax,%rsi
  40173e:	89 f8                	mov    %edi,%eax
  401740:	48 31 f0             	xor    %rsi,%rax
  401743:	48 21 d0             	and    %rdx,%rax
  401746:	48 39 d8             	cmp    %rbx,%rax
  401749:	74 25                	je     401770 <__security_init_cookie+0xc0>
  40174b:	48 89 c2             	mov    %rax,%rdx
  40174e:	48 f7 d2             	not    %rdx
  401751:	48 89 05 58 19 00 00 	mov    %rax,0x1958(%rip)        # 4030b0 <__security_cookie>
  401758:	48 89 15 61 19 00 00 	mov    %rdx,0x1961(%rip)        # 4030c0 <__security_cookie_complement>
  40175f:	48 83 c4 30          	add    $0x30,%rsp
  401763:	5b                   	pop    %rbx
  401764:	5e                   	pop    %rsi
  401765:	5f                   	pop    %rdi
  401766:	5d                   	pop    %rbp
  401767:	41 5c                	pop    %r12
  401769:	c3                   	retq   
  40176a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401770:	48 ba cc 5d 20 d2 66 	movabs $0xffffd466d2205dcc,%rdx
  401777:	d4 ff ff 
  40177a:	48 b8 33 a2 df 2d 99 	movabs $0x2b992ddfa233,%rax
  401781:	2b 00 00 
  401784:	eb cb                	jmp    401751 <__security_init_cookie+0xa1>
  401786:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40178d:	00 00 00 

0000000000401790 <__report_gsfailure>:
  401790:	55                   	push   %rbp
  401791:	56                   	push   %rsi
  401792:	53                   	push   %rbx
  401793:	48 89 e5             	mov    %rsp,%rbp
  401796:	48 83 ec 70          	sub    $0x70,%rsp
  40179a:	48 89 ce             	mov    %rcx,%rsi
  40179d:	48 8d 0d bc 58 00 00 	lea    0x58bc(%rip),%rcx        # 407060 <GS_ContextRecord>
  4017a4:	ff 15 92 6a 00 00    	callq  *0x6a92(%rip)        # 40823c <__imp_RtlCaptureContext>
  4017aa:	48 8b 1d a7 59 00 00 	mov    0x59a7(%rip),%rbx        # 407158 <GS_ContextRecord+0xf8>
  4017b1:	48 8d 55 d8          	lea    -0x28(%rbp),%rdx
  4017b5:	45 31 c0             	xor    %r8d,%r8d
  4017b8:	48 89 d9             	mov    %rbx,%rcx
  4017bb:	ff 15 83 6a 00 00    	callq  *0x6a83(%rip)        # 408244 <__imp_RtlLookupFunctionEntry>
  4017c1:	48 85 c0             	test   %rax,%rax
  4017c4:	0f 84 a3 00 00 00    	je     40186d <__report_gsfailure+0xdd>
  4017ca:	48 8d 55 e0          	lea    -0x20(%rbp),%rdx
  4017ce:	49 89 c1             	mov    %rax,%r9
  4017d1:	49 89 d8             	mov    %rbx,%r8
  4017d4:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
  4017db:	00 00 
  4017dd:	48 8d 0d 7c 58 00 00 	lea    0x587c(%rip),%rcx        # 407060 <GS_ContextRecord>
  4017e4:	48 89 54 24 30       	mov    %rdx,0x30(%rsp)
  4017e9:	48 8d 55 e8          	lea    -0x18(%rbp),%rdx
  4017ed:	48 89 4c 24 20       	mov    %rcx,0x20(%rsp)
  4017f2:	31 c9                	xor    %ecx,%ecx
  4017f4:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
  4017f9:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  4017fd:	ff 15 49 6a 00 00    	callq  *0x6a49(%rip)        # 40824c <__imp_RtlVirtualUnwind>
  401803:	48 8b 05 4e 59 00 00 	mov    0x594e(%rip),%rax        # 407158 <GS_ContextRecord+0xf8>
  40180a:	31 c9                	xor    %ecx,%ecx
  40180c:	48 89 35 cd 58 00 00 	mov    %rsi,0x58cd(%rip)        # 4070e0 <GS_ContextRecord+0x80>
  401813:	48 89 05 36 5d 00 00 	mov    %rax,0x5d36(%rip)        # 407550 <GS_ExceptionRecord+0x10>
  40181a:	48 b8 09 04 00 c0 01 	movabs $0x1c0000409,%rax
  401821:	00 00 00 
  401824:	48 89 05 15 5d 00 00 	mov    %rax,0x5d15(%rip)        # 407540 <GS_ExceptionRecord>
  40182b:	48 8b 05 7e 18 00 00 	mov    0x187e(%rip),%rax        # 4030b0 <__security_cookie>
  401832:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  401836:	48 8b 05 83 18 00 00 	mov    0x1883(%rip),%rax        # 4030c0 <__security_cookie_complement>
  40183d:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401841:	ff 15 0d 6a 00 00    	callq  *0x6a0d(%rip)        # 408254 <__imp_SetUnhandledExceptionFilter>
  401847:	48 8d 0d c2 27 00 00 	lea    0x27c2(%rip),%rcx        # 404010 <GS_ExceptionPointers>
  40184e:	ff 15 20 6a 00 00    	callq  *0x6a20(%rip)        # 408274 <__imp_UnhandledExceptionFilter>
  401854:	ff 15 8a 69 00 00    	callq  *0x698a(%rip)        # 4081e4 <__imp_GetCurrentProcess>
  40185a:	ba 09 04 00 c0       	mov    $0xc0000409,%edx
  40185f:	48 89 c1             	mov    %rax,%rcx
  401862:	ff 15 fc 69 00 00    	callq  *0x69fc(%rip)        # 408264 <__imp_TerminateProcess>
  401868:	e8 73 12 00 00       	callq  402ae0 <abort>
  40186d:	48 8b 45 18          	mov    0x18(%rbp),%rax
  401871:	48 89 05 e0 58 00 00 	mov    %rax,0x58e0(%rip)        # 407158 <GS_ContextRecord+0xf8>
  401878:	48 8d 45 08          	lea    0x8(%rbp),%rax
  40187c:	48 89 05 75 58 00 00 	mov    %rax,0x5875(%rip)        # 4070f8 <GS_ContextRecord+0x98>
  401883:	e9 7b ff ff ff       	jmpq   401803 <__report_gsfailure+0x73>
  401888:	90                   	nop
  401889:	90                   	nop
  40188a:	90                   	nop
  40188b:	90                   	nop
  40188c:	90                   	nop
  40188d:	90                   	nop
  40188e:	90                   	nop
  40188f:	90                   	nop

0000000000401890 <__dyn_tls_dtor>:
  401890:	48 83 ec 28          	sub    $0x28,%rsp
  401894:	83 fa 03             	cmp    $0x3,%edx
  401897:	74 17                	je     4018b0 <__dyn_tls_dtor+0x20>
  401899:	85 d2                	test   %edx,%edx
  40189b:	74 13                	je     4018b0 <__dyn_tls_dtor+0x20>
  40189d:	b8 01 00 00 00       	mov    $0x1,%eax
  4018a2:	48 83 c4 28          	add    $0x28,%rsp
  4018a6:	c3                   	retq   
  4018a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4018ae:	00 00 
  4018b0:	e8 cb 0c 00 00       	callq  402580 <__mingw_TLScallback>
  4018b5:	b8 01 00 00 00       	mov    $0x1,%eax
  4018ba:	48 83 c4 28          	add    $0x28,%rsp
  4018be:	c3                   	retq   
  4018bf:	90                   	nop

00000000004018c0 <__dyn_tls_init>:
  4018c0:	56                   	push   %rsi
  4018c1:	53                   	push   %rbx
  4018c2:	48 83 ec 28          	sub    $0x28,%rsp
  4018c6:	48 8b 05 13 2a 00 00 	mov    0x2a13(%rip),%rax        # 4042e0 <.refptr._CRT_MT>
  4018cd:	83 38 02             	cmpl   $0x2,(%rax)
  4018d0:	74 06                	je     4018d8 <__dyn_tls_init+0x18>
  4018d2:	c7 00 02 00 00 00    	movl   $0x2,(%rax)
  4018d8:	83 fa 02             	cmp    $0x2,%edx
  4018db:	74 13                	je     4018f0 <__dyn_tls_init+0x30>
  4018dd:	83 fa 01             	cmp    $0x1,%edx
  4018e0:	74 40                	je     401922 <__dyn_tls_init+0x62>
  4018e2:	b8 01 00 00 00       	mov    $0x1,%eax
  4018e7:	48 83 c4 28          	add    $0x28,%rsp
  4018eb:	5b                   	pop    %rbx
  4018ec:	5e                   	pop    %rsi
  4018ed:	c3                   	retq   
  4018ee:	66 90                	xchg   %ax,%ax
  4018f0:	48 8d 1d 69 77 00 00 	lea    0x7769(%rip),%rbx        # 409060 <__xd_z>
  4018f7:	48 8d 35 62 77 00 00 	lea    0x7762(%rip),%rsi        # 409060 <__xd_z>
  4018fe:	48 39 de             	cmp    %rbx,%rsi
  401901:	74 df                	je     4018e2 <__dyn_tls_init+0x22>
  401903:	48 8b 03             	mov    (%rbx),%rax
  401906:	48 85 c0             	test   %rax,%rax
  401909:	74 02                	je     40190d <__dyn_tls_init+0x4d>
  40190b:	ff d0                	callq  *%rax
  40190d:	48 83 c3 08          	add    $0x8,%rbx
  401911:	48 39 de             	cmp    %rbx,%rsi
  401914:	75 ed                	jne    401903 <__dyn_tls_init+0x43>
  401916:	b8 01 00 00 00       	mov    $0x1,%eax
  40191b:	48 83 c4 28          	add    $0x28,%rsp
  40191f:	5b                   	pop    %rbx
  401920:	5e                   	pop    %rsi
  401921:	c3                   	retq   
  401922:	e8 59 0c 00 00       	callq  402580 <__mingw_TLScallback>
  401927:	b8 01 00 00 00       	mov    $0x1,%eax
  40192c:	48 83 c4 28          	add    $0x28,%rsp
  401930:	5b                   	pop    %rbx
  401931:	5e                   	pop    %rsi
  401932:	c3                   	retq   
  401933:	0f 1f 00             	nopl   (%rax)
  401936:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40193d:	00 00 00 

0000000000401940 <__tlregdtor>:
  401940:	31 c0                	xor    %eax,%eax
  401942:	c3                   	retq   
  401943:	90                   	nop
  401944:	90                   	nop
  401945:	90                   	nop
  401946:	90                   	nop
  401947:	90                   	nop
  401948:	90                   	nop
  401949:	90                   	nop
  40194a:	90                   	nop
  40194b:	90                   	nop
  40194c:	90                   	nop
  40194d:	90                   	nop
  40194e:	90                   	nop
  40194f:	90                   	nop

0000000000401950 <__mingw_raise_matherr>:
  401950:	48 83 ec 58          	sub    $0x58,%rsp
  401954:	48 8b 05 a5 5c 00 00 	mov    0x5ca5(%rip),%rax        # 407600 <stUserMathErr>
  40195b:	48 85 c0             	test   %rax,%rax
  40195e:	74 2c                	je     40198c <__mingw_raise_matherr+0x3c>
  401960:	f2 0f 10 84 24 80 00 	movsd  0x80(%rsp),%xmm0
  401967:	00 00 
  401969:	89 4c 24 20          	mov    %ecx,0x20(%rsp)
  40196d:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
  401972:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
  401977:	f2 0f 11 54 24 30    	movsd  %xmm2,0x30(%rsp)
  40197d:	f2 0f 11 5c 24 38    	movsd  %xmm3,0x38(%rsp)
  401983:	f2 0f 11 44 24 40    	movsd  %xmm0,0x40(%rsp)
  401989:	ff d0                	callq  *%rax
  40198b:	90                   	nop
  40198c:	48 83 c4 58          	add    $0x58,%rsp
  401990:	c3                   	retq   
  401991:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401996:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40199d:	00 00 00 

00000000004019a0 <__mingw_setusermatherr>:
  4019a0:	48 89 0d 59 5c 00 00 	mov    %rcx,0x5c59(%rip)        # 407600 <stUserMathErr>
  4019a7:	e9 5c 11 00 00       	jmpq   402b08 <__setusermatherr>
  4019ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004019b0 <_matherr>:
  4019b0:	56                   	push   %rsi
  4019b1:	53                   	push   %rbx
  4019b2:	48 83 ec 78          	sub    $0x78,%rsp
  4019b6:	0f 29 74 24 40       	movaps %xmm6,0x40(%rsp)
  4019bb:	0f 29 7c 24 50       	movaps %xmm7,0x50(%rsp)
  4019c0:	44 0f 29 44 24 60    	movaps %xmm8,0x60(%rsp)
  4019c6:	83 39 06             	cmpl   $0x6,(%rcx)
  4019c9:	0f 87 d1 00 00 00    	ja     401aa0 <_matherr+0xf0>
  4019cf:	8b 01                	mov    (%rcx),%eax
  4019d1:	48 8d 15 cc 27 00 00 	lea    0x27cc(%rip),%rdx        # 4041a4 <.rdata+0x124>
  4019d8:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
  4019dc:	48 01 d0             	add    %rdx,%rax
  4019df:	ff e0                	jmpq   *%rax
  4019e1:	48 8d 1d 98 26 00 00 	lea    0x2698(%rip),%rbx        # 404080 <.rdata>
  4019e8:	48 8b 71 08          	mov    0x8(%rcx),%rsi
  4019ec:	f2 44 0f 10 41 20    	movsd  0x20(%rcx),%xmm8
  4019f2:	f2 0f 10 79 18       	movsd  0x18(%rcx),%xmm7
  4019f7:	f2 0f 10 71 10       	movsd  0x10(%rcx),%xmm6
  4019fc:	b9 02 00 00 00       	mov    $0x2,%ecx
  401a01:	e8 2a 11 00 00       	callq  402b30 <__acrt_iob_func>
  401a06:	f2 44 0f 11 44 24 30 	movsd  %xmm8,0x30(%rsp)
  401a0d:	49 89 f1             	mov    %rsi,%r9
  401a10:	49 89 d8             	mov    %rbx,%r8
  401a13:	f2 0f 11 7c 24 28    	movsd  %xmm7,0x28(%rsp)
  401a19:	48 8d 15 58 27 00 00 	lea    0x2758(%rip),%rdx        # 404178 <.rdata+0xf8>
  401a20:	48 89 c1             	mov    %rax,%rcx
  401a23:	f2 0f 11 74 24 20    	movsd  %xmm6,0x20(%rsp)
  401a29:	e8 9a 10 00 00       	callq  402ac8 <fprintf>
  401a2e:	90                   	nop
  401a2f:	0f 28 74 24 40       	movaps 0x40(%rsp),%xmm6
  401a34:	31 c0                	xor    %eax,%eax
  401a36:	0f 28 7c 24 50       	movaps 0x50(%rsp),%xmm7
  401a3b:	44 0f 28 44 24 60    	movaps 0x60(%rsp),%xmm8
  401a41:	48 83 c4 78          	add    $0x78,%rsp
  401a45:	5b                   	pop    %rbx
  401a46:	5e                   	pop    %rsi
  401a47:	c3                   	retq   
  401a48:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  401a4f:	00 
  401a50:	48 8d 1d 48 26 00 00 	lea    0x2648(%rip),%rbx        # 40409f <.rdata+0x1f>
  401a57:	eb 8f                	jmp    4019e8 <_matherr+0x38>
  401a59:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401a60:	48 8d 1d 59 26 00 00 	lea    0x2659(%rip),%rbx        # 4040c0 <.rdata+0x40>
  401a67:	e9 7c ff ff ff       	jmpq   4019e8 <_matherr+0x38>
  401a6c:	0f 1f 40 00          	nopl   0x0(%rax)
  401a70:	48 8d 1d b9 26 00 00 	lea    0x26b9(%rip),%rbx        # 404130 <.rdata+0xb0>
  401a77:	e9 6c ff ff ff       	jmpq   4019e8 <_matherr+0x38>
  401a7c:	0f 1f 40 00          	nopl   0x0(%rax)
  401a80:	48 8d 1d 81 26 00 00 	lea    0x2681(%rip),%rbx        # 404108 <.rdata+0x88>
  401a87:	e9 5c ff ff ff       	jmpq   4019e8 <_matherr+0x38>
  401a8c:	0f 1f 40 00          	nopl   0x0(%rax)
  401a90:	48 8d 1d 49 26 00 00 	lea    0x2649(%rip),%rbx        # 4040e0 <.rdata+0x60>
  401a97:	e9 4c ff ff ff       	jmpq   4019e8 <_matherr+0x38>
  401a9c:	0f 1f 40 00          	nopl   0x0(%rax)
  401aa0:	48 8d 1d bf 26 00 00 	lea    0x26bf(%rip),%rbx        # 404166 <.rdata+0xe6>
  401aa7:	e9 3c ff ff ff       	jmpq   4019e8 <_matherr+0x38>
  401aac:	90                   	nop
  401aad:	90                   	nop
  401aae:	90                   	nop
  401aaf:	90                   	nop

0000000000401ab0 <_fpreset>:
  401ab0:	db e3                	fninit 
  401ab2:	c3                   	retq   
  401ab3:	90                   	nop
  401ab4:	90                   	nop
  401ab5:	90                   	nop
  401ab6:	90                   	nop
  401ab7:	90                   	nop
  401ab8:	90                   	nop
  401ab9:	90                   	nop
  401aba:	90                   	nop
  401abb:	90                   	nop
  401abc:	90                   	nop
  401abd:	90                   	nop
  401abe:	90                   	nop
  401abf:	90                   	nop

0000000000401ac0 <_decode_pointer>:
  401ac0:	48 89 c8             	mov    %rcx,%rax
  401ac3:	c3                   	retq   
  401ac4:	66 90                	xchg   %ax,%ax
  401ac6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401acd:	00 00 00 

0000000000401ad0 <_encode_pointer>:
  401ad0:	48 89 c8             	mov    %rcx,%rax
  401ad3:	c3                   	retq   
  401ad4:	90                   	nop
  401ad5:	90                   	nop
  401ad6:	90                   	nop
  401ad7:	90                   	nop
  401ad8:	90                   	nop
  401ad9:	90                   	nop
  401ada:	90                   	nop
  401adb:	90                   	nop
  401adc:	90                   	nop
  401add:	90                   	nop
  401ade:	90                   	nop
  401adf:	90                   	nop

0000000000401ae0 <__write_memory.part.0>:
  401ae0:	41 54                	push   %r12
  401ae2:	55                   	push   %rbp
  401ae3:	57                   	push   %rdi
  401ae4:	56                   	push   %rsi
  401ae5:	53                   	push   %rbx
  401ae6:	48 83 ec 50          	sub    $0x50,%rsp
  401aea:	48 63 35 33 5b 00 00 	movslq 0x5b33(%rip),%rsi        # 407624 <maxSections>
  401af1:	85 f6                	test   %esi,%esi
  401af3:	48 89 cb             	mov    %rcx,%rbx
  401af6:	48 89 d5             	mov    %rdx,%rbp
  401af9:	4c 89 c7             	mov    %r8,%rdi
  401afc:	0f 8e 66 01 00 00    	jle    401c68 <__write_memory.part.0+0x188>
  401b02:	48 8b 05 1f 5b 00 00 	mov    0x5b1f(%rip),%rax        # 407628 <the_secs>
  401b09:	31 c9                	xor    %ecx,%ecx
  401b0b:	48 83 c0 18          	add    $0x18,%rax
  401b0f:	90                   	nop
  401b10:	48 8b 10             	mov    (%rax),%rdx
  401b13:	48 39 d3             	cmp    %rdx,%rbx
  401b16:	72 14                	jb     401b2c <__write_memory.part.0+0x4c>
  401b18:	4c 8b 40 08          	mov    0x8(%rax),%r8
  401b1c:	45 8b 40 08          	mov    0x8(%r8),%r8d
  401b20:	4c 01 c2             	add    %r8,%rdx
  401b23:	48 39 d3             	cmp    %rdx,%rbx
  401b26:	0f 82 89 00 00 00    	jb     401bb5 <__write_memory.part.0+0xd5>
  401b2c:	83 c1 01             	add    $0x1,%ecx
  401b2f:	48 83 c0 28          	add    $0x28,%rax
  401b33:	39 f1                	cmp    %esi,%ecx
  401b35:	75 d9                	jne    401b10 <__write_memory.part.0+0x30>
  401b37:	48 89 d9             	mov    %rbx,%rcx
  401b3a:	e8 41 0c 00 00       	callq  402780 <__mingw_GetSectionForAddress>
  401b3f:	48 85 c0             	test   %rax,%rax
  401b42:	49 89 c4             	mov    %rax,%r12
  401b45:	0f 84 52 01 00 00    	je     401c9d <__write_memory.part.0+0x1bd>
  401b4b:	48 8b 05 d6 5a 00 00 	mov    0x5ad6(%rip),%rax        # 407628 <the_secs>
  401b52:	48 8d 34 b6          	lea    (%rsi,%rsi,4),%rsi
  401b56:	48 c1 e6 03          	shl    $0x3,%rsi
  401b5a:	48 01 f0             	add    %rsi,%rax
  401b5d:	4c 89 60 20          	mov    %r12,0x20(%rax)
  401b61:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
  401b67:	e8 44 0d 00 00       	callq  4028b0 <_GetPEImageBase>
  401b6c:	41 8b 4c 24 0c       	mov    0xc(%r12),%ecx
  401b71:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
  401b76:	41 b8 30 00 00 00    	mov    $0x30,%r8d
  401b7c:	48 01 c1             	add    %rax,%rcx
  401b7f:	48 8b 05 a2 5a 00 00 	mov    0x5aa2(%rip),%rax        # 407628 <the_secs>
  401b86:	48 89 4c 30 18       	mov    %rcx,0x18(%rax,%rsi,1)
  401b8b:	ff 15 f3 66 00 00    	callq  *0x66f3(%rip)        # 408284 <__imp_VirtualQuery>
  401b91:	48 85 c0             	test   %rax,%rax
  401b94:	0f 84 e6 00 00 00    	je     401c80 <__write_memory.part.0+0x1a0>
  401b9a:	8b 44 24 44          	mov    0x44(%rsp),%eax
  401b9e:	8d 50 fc             	lea    -0x4(%rax),%edx
  401ba1:	83 e2 fb             	and    $0xfffffffb,%edx
  401ba4:	74 08                	je     401bae <__write_memory.part.0+0xce>
  401ba6:	83 e8 40             	sub    $0x40,%eax
  401ba9:	83 e0 bf             	and    $0xffffffbf,%eax
  401bac:	75 62                	jne    401c10 <__write_memory.part.0+0x130>
  401bae:	83 05 6f 5a 00 00 01 	addl   $0x1,0x5a6f(%rip)        # 407624 <maxSections>
  401bb5:	83 ff 08             	cmp    $0x8,%edi
  401bb8:	73 29                	jae    401be3 <__write_memory.part.0+0x103>
  401bba:	40 f6 c7 04          	test   $0x4,%dil
  401bbe:	0f 85 90 00 00 00    	jne    401c54 <__write_memory.part.0+0x174>
  401bc4:	85 ff                	test   %edi,%edi
  401bc6:	74 10                	je     401bd8 <__write_memory.part.0+0xf8>
  401bc8:	0f b6 45 00          	movzbl 0x0(%rbp),%eax
  401bcc:	40 f6 c7 02          	test   $0x2,%dil
  401bd0:	88 03                	mov    %al,(%rbx)
  401bd2:	0f 85 97 00 00 00    	jne    401c6f <__write_memory.part.0+0x18f>
  401bd8:	48 83 c4 50          	add    $0x50,%rsp
  401bdc:	5b                   	pop    %rbx
  401bdd:	5e                   	pop    %rsi
  401bde:	5f                   	pop    %rdi
  401bdf:	5d                   	pop    %rbp
  401be0:	41 5c                	pop    %r12
  401be2:	c3                   	retq   
  401be3:	89 f8                	mov    %edi,%eax
  401be5:	83 ef 01             	sub    $0x1,%edi
  401be8:	48 8b 54 05 f8       	mov    -0x8(%rbp,%rax,1),%rdx
  401bed:	83 ff 08             	cmp    $0x8,%edi
  401bf0:	48 89 54 03 f8       	mov    %rdx,-0x8(%rbx,%rax,1)
  401bf5:	72 e1                	jb     401bd8 <__write_memory.part.0+0xf8>
  401bf7:	83 e7 f8             	and    $0xfffffff8,%edi
  401bfa:	31 c0                	xor    %eax,%eax
  401bfc:	89 c2                	mov    %eax,%edx
  401bfe:	83 c0 08             	add    $0x8,%eax
  401c01:	48 8b 4c 15 00       	mov    0x0(%rbp,%rdx,1),%rcx
  401c06:	39 f8                	cmp    %edi,%eax
  401c08:	48 89 0c 13          	mov    %rcx,(%rbx,%rdx,1)
  401c0c:	72 ee                	jb     401bfc <__write_memory.part.0+0x11c>
  401c0e:	eb c8                	jmp    401bd8 <__write_memory.part.0+0xf8>
  401c10:	48 03 35 11 5a 00 00 	add    0x5a11(%rip),%rsi        # 407628 <the_secs>
  401c17:	41 b8 40 00 00 00    	mov    $0x40,%r8d
  401c1d:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
  401c22:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
  401c27:	49 89 f1             	mov    %rsi,%r9
  401c2a:	48 89 4e 08          	mov    %rcx,0x8(%rsi)
  401c2e:	48 89 56 10          	mov    %rdx,0x10(%rsi)
  401c32:	ff 15 44 66 00 00    	callq  *0x6644(%rip)        # 40827c <__imp_VirtualProtect>
  401c38:	85 c0                	test   %eax,%eax
  401c3a:	0f 85 6e ff ff ff    	jne    401bae <__write_memory.part.0+0xce>
  401c40:	ff 15 b6 65 00 00    	callq  *0x65b6(%rip)        # 4081fc <__imp_GetLastError>
  401c46:	48 8d 0d eb 25 00 00 	lea    0x25eb(%rip),%rcx        # 404238 <.rdata+0x78>
  401c4d:	89 c2                	mov    %eax,%edx
  401c4f:	e8 0c 10 00 00       	callq  402c60 <__report_error>
  401c54:	8b 45 00             	mov    0x0(%rbp),%eax
  401c57:	89 ff                	mov    %edi,%edi
  401c59:	89 03                	mov    %eax,(%rbx)
  401c5b:	8b 44 3d fc          	mov    -0x4(%rbp,%rdi,1),%eax
  401c5f:	89 44 3b fc          	mov    %eax,-0x4(%rbx,%rdi,1)
  401c63:	e9 70 ff ff ff       	jmpq   401bd8 <__write_memory.part.0+0xf8>
  401c68:	31 f6                	xor    %esi,%esi
  401c6a:	e9 c8 fe ff ff       	jmpq   401b37 <__write_memory.part.0+0x57>
  401c6f:	89 ff                	mov    %edi,%edi
  401c71:	0f b7 44 3d fe       	movzwl -0x2(%rbp,%rdi,1),%eax
  401c76:	66 89 44 3b fe       	mov    %ax,-0x2(%rbx,%rdi,1)
  401c7b:	e9 58 ff ff ff       	jmpq   401bd8 <__write_memory.part.0+0xf8>
  401c80:	48 8b 05 a1 59 00 00 	mov    0x59a1(%rip),%rax        # 407628 <the_secs>
  401c87:	48 8d 0d 72 25 00 00 	lea    0x2572(%rip),%rcx        # 404200 <.rdata+0x40>
  401c8e:	41 8b 54 24 08       	mov    0x8(%r12),%edx
  401c93:	4c 8b 44 30 18       	mov    0x18(%rax,%rsi,1),%r8
  401c98:	e8 c3 0f 00 00       	callq  402c60 <__report_error>
  401c9d:	48 8d 0d 3c 25 00 00 	lea    0x253c(%rip),%rcx        # 4041e0 <.rdata+0x20>
  401ca4:	48 89 da             	mov    %rbx,%rdx
  401ca7:	e8 b4 0f 00 00       	callq  402c60 <__report_error>
  401cac:	90                   	nop
  401cad:	0f 1f 00             	nopl   (%rax)

0000000000401cb0 <_pei386_runtime_relocator>:
  401cb0:	55                   	push   %rbp
  401cb1:	41 57                	push   %r15
  401cb3:	41 56                	push   %r14
  401cb5:	41 55                	push   %r13
  401cb7:	41 54                	push   %r12
  401cb9:	57                   	push   %rdi
  401cba:	56                   	push   %rsi
  401cbb:	53                   	push   %rbx
  401cbc:	48 83 ec 38          	sub    $0x38,%rsp
  401cc0:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
  401cc7:	00 
  401cc8:	8b 1d 52 59 00 00    	mov    0x5952(%rip),%ebx        # 407620 <was_init.95174>
  401cce:	85 db                	test   %ebx,%ebx
  401cd0:	74 11                	je     401ce3 <_pei386_runtime_relocator+0x33>
  401cd2:	48 8d 65 b8          	lea    -0x48(%rbp),%rsp
  401cd6:	5b                   	pop    %rbx
  401cd7:	5e                   	pop    %rsi
  401cd8:	5f                   	pop    %rdi
  401cd9:	41 5c                	pop    %r12
  401cdb:	41 5d                	pop    %r13
  401cdd:	41 5e                	pop    %r14
  401cdf:	41 5f                	pop    %r15
  401ce1:	5d                   	pop    %rbp
  401ce2:	c3                   	retq   
  401ce3:	c7 05 33 59 00 00 01 	movl   $0x1,0x5933(%rip)        # 407620 <was_init.95174>
  401cea:	00 00 00 
  401ced:	e8 0e 0b 00 00       	callq  402800 <__mingw_GetSectionCount>
  401cf2:	48 98                	cltq   
  401cf4:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  401cf8:	48 8d 04 c5 1e 00 00 	lea    0x1e(,%rax,8),%rax
  401cff:	00 
  401d00:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  401d04:	e8 37 0d 00 00       	callq  402a40 <___chkstk_ms>
  401d09:	4c 8b 25 00 26 00 00 	mov    0x2600(%rip),%r12        # 404310 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST_END__>
  401d10:	c7 05 0a 59 00 00 00 	movl   $0x0,0x590a(%rip)        # 407624 <maxSections>
  401d17:	00 00 00 
  401d1a:	48 8b 35 ff 25 00 00 	mov    0x25ff(%rip),%rsi        # 404320 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST__>
  401d21:	48 29 c4             	sub    %rax,%rsp
  401d24:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
  401d29:	48 89 05 f8 58 00 00 	mov    %rax,0x58f8(%rip)        # 407628 <the_secs>
  401d30:	4c 89 e0             	mov    %r12,%rax
  401d33:	48 29 f0             	sub    %rsi,%rax
  401d36:	48 83 f8 07          	cmp    $0x7,%rax
  401d3a:	7e 96                	jle    401cd2 <_pei386_runtime_relocator+0x22>
  401d3c:	48 83 f8 0b          	cmp    $0xb,%rax
  401d40:	8b 16                	mov    (%rsi),%edx
  401d42:	0f 8e c8 00 00 00    	jle    401e10 <_pei386_runtime_relocator+0x160>
  401d48:	85 d2                	test   %edx,%edx
  401d4a:	0f 84 a4 00 00 00    	je     401df4 <_pei386_runtime_relocator+0x144>
  401d50:	4c 39 e6             	cmp    %r12,%rsi
  401d53:	0f 83 79 ff ff ff    	jae    401cd2 <_pei386_runtime_relocator+0x22>
  401d59:	4c 8d 76 08          	lea    0x8(%rsi),%r14
  401d5d:	49 83 c4 07          	add    $0x7,%r12
  401d61:	4c 8b 2d d8 25 00 00 	mov    0x25d8(%rip),%r13        # 404340 <.refptr.__image_base__>
  401d68:	48 8d 7d a8          	lea    -0x58(%rbp),%rdi
  401d6c:	4d 29 f4             	sub    %r14,%r12
  401d6f:	49 c1 ec 03          	shr    $0x3,%r12
  401d73:	4e 8d 64 e6 08       	lea    0x8(%rsi,%r12,8),%r12
  401d78:	eb 0a                	jmp    401d84 <_pei386_runtime_relocator+0xd4>
  401d7a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401d80:	49 83 c6 08          	add    $0x8,%r14
  401d84:	8b 4e 04             	mov    0x4(%rsi),%ecx
  401d87:	41 b8 04 00 00 00    	mov    $0x4,%r8d
  401d8d:	48 89 fa             	mov    %rdi,%rdx
  401d90:	8b 06                	mov    (%rsi),%eax
  401d92:	4c 89 f6             	mov    %r14,%rsi
  401d95:	4c 01 e9             	add    %r13,%rcx
  401d98:	03 01                	add    (%rcx),%eax
  401d9a:	89 45 a8             	mov    %eax,-0x58(%rbp)
  401d9d:	e8 3e fd ff ff       	callq  401ae0 <__write_memory.part.0>
  401da2:	4d 39 e6             	cmp    %r12,%r14
  401da5:	75 d9                	jne    401d80 <_pei386_runtime_relocator+0xd0>
  401da7:	8b 05 77 58 00 00    	mov    0x5877(%rip),%eax        # 407624 <maxSections>
  401dad:	31 f6                	xor    %esi,%esi
  401daf:	4c 8b 25 c6 64 00 00 	mov    0x64c6(%rip),%r12        # 40827c <__imp_VirtualProtect>
  401db6:	85 c0                	test   %eax,%eax
  401db8:	0f 8e 14 ff ff ff    	jle    401cd2 <_pei386_runtime_relocator+0x22>
  401dbe:	66 90                	xchg   %ax,%ax
  401dc0:	48 8b 05 61 58 00 00 	mov    0x5861(%rip),%rax        # 407628 <the_secs>
  401dc7:	48 01 f0             	add    %rsi,%rax
  401dca:	44 8b 00             	mov    (%rax),%r8d
  401dcd:	45 85 c0             	test   %r8d,%r8d
  401dd0:	74 0e                	je     401de0 <_pei386_runtime_relocator+0x130>
  401dd2:	48 8b 50 10          	mov    0x10(%rax),%rdx
  401dd6:	49 89 f9             	mov    %rdi,%r9
  401dd9:	48 8b 48 08          	mov    0x8(%rax),%rcx
  401ddd:	41 ff d4             	callq  *%r12
  401de0:	83 c3 01             	add    $0x1,%ebx
  401de3:	48 83 c6 28          	add    $0x28,%rsi
  401de7:	3b 1d 37 58 00 00    	cmp    0x5837(%rip),%ebx        # 407624 <maxSections>
  401ded:	7c d1                	jl     401dc0 <_pei386_runtime_relocator+0x110>
  401def:	e9 de fe ff ff       	jmpq   401cd2 <_pei386_runtime_relocator+0x22>
  401df4:	8b 4e 04             	mov    0x4(%rsi),%ecx
  401df7:	85 c9                	test   %ecx,%ecx
  401df9:	0f 85 51 ff ff ff    	jne    401d50 <_pei386_runtime_relocator+0xa0>
  401dff:	8b 56 08             	mov    0x8(%rsi),%edx
  401e02:	85 d2                	test   %edx,%edx
  401e04:	75 1d                	jne    401e23 <_pei386_runtime_relocator+0x173>
  401e06:	8b 56 0c             	mov    0xc(%rsi),%edx
  401e09:	48 83 c6 0c          	add    $0xc,%rsi
  401e0d:	0f 1f 00             	nopl   (%rax)
  401e10:	85 d2                	test   %edx,%edx
  401e12:	0f 85 38 ff ff ff    	jne    401d50 <_pei386_runtime_relocator+0xa0>
  401e18:	8b 46 04             	mov    0x4(%rsi),%eax
  401e1b:	85 c0                	test   %eax,%eax
  401e1d:	0f 85 2d ff ff ff    	jne    401d50 <_pei386_runtime_relocator+0xa0>
  401e23:	8b 56 08             	mov    0x8(%rsi),%edx
  401e26:	83 fa 01             	cmp    $0x1,%edx
  401e29:	0f 85 2f 01 00 00    	jne    401f5e <_pei386_runtime_relocator+0x2ae>
  401e2f:	4c 8b 2d 0a 25 00 00 	mov    0x250a(%rip),%r13        # 404340 <.refptr.__image_base__>
  401e36:	48 83 c6 0c          	add    $0xc,%rsi
  401e3a:	49 bf 00 00 00 00 ff 	movabs $0xffffffff00000000,%r15
  401e41:	ff ff ff 
  401e44:	4c 8d 75 a8          	lea    -0x58(%rbp),%r14
  401e48:	4c 39 e6             	cmp    %r12,%rsi
  401e4b:	72 48                	jb     401e95 <_pei386_runtime_relocator+0x1e5>
  401e4d:	e9 80 fe ff ff       	jmpq   401cd2 <_pei386_runtime_relocator+0x22>
  401e52:	0f 86 b8 00 00 00    	jbe    401f10 <_pei386_runtime_relocator+0x260>
  401e58:	83 fa 20             	cmp    $0x20,%edx
  401e5b:	0f 84 7f 00 00 00    	je     401ee0 <_pei386_runtime_relocator+0x230>
  401e61:	83 fa 40             	cmp    $0x40,%edx
  401e64:	0f 85 e0 00 00 00    	jne    401f4a <_pei386_runtime_relocator+0x29a>
  401e6a:	48 8b 11             	mov    (%rcx),%rdx
  401e6d:	41 b8 08 00 00 00    	mov    $0x8,%r8d
  401e73:	4c 89 f7             	mov    %r14,%rdi
  401e76:	48 29 c2             	sub    %rax,%rdx
  401e79:	4c 01 ca             	add    %r9,%rdx
  401e7c:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
  401e80:	4c 89 f2             	mov    %r14,%rdx
  401e83:	e8 58 fc ff ff       	callq  401ae0 <__write_memory.part.0>
  401e88:	48 83 c6 0c          	add    $0xc,%rsi
  401e8c:	4c 39 e6             	cmp    %r12,%rsi
  401e8f:	0f 83 12 ff ff ff    	jae    401da7 <_pei386_runtime_relocator+0xf7>
  401e95:	8b 4e 04             	mov    0x4(%rsi),%ecx
  401e98:	8b 06                	mov    (%rsi),%eax
  401e9a:	0f b6 56 08          	movzbl 0x8(%rsi),%edx
  401e9e:	4c 01 e9             	add    %r13,%rcx
  401ea1:	4c 01 e8             	add    %r13,%rax
  401ea4:	83 fa 10             	cmp    $0x10,%edx
  401ea7:	4c 8b 08             	mov    (%rax),%r9
  401eaa:	75 a6                	jne    401e52 <_pei386_runtime_relocator+0x1a2>
  401eac:	44 0f b7 01          	movzwl (%rcx),%r8d
  401eb0:	4c 89 f2             	mov    %r14,%rdx
  401eb3:	4c 89 f7             	mov    %r14,%rdi
  401eb6:	4d 89 c2             	mov    %r8,%r10
  401eb9:	49 81 ca 00 00 ff ff 	or     $0xffffffffffff0000,%r10
  401ec0:	66 45 85 c0          	test   %r8w,%r8w
  401ec4:	4d 0f 48 c2          	cmovs  %r10,%r8
  401ec8:	49 29 c0             	sub    %rax,%r8
  401ecb:	4d 01 c8             	add    %r9,%r8
  401ece:	4c 89 45 a8          	mov    %r8,-0x58(%rbp)
  401ed2:	41 b8 02 00 00 00    	mov    $0x2,%r8d
  401ed8:	e8 03 fc ff ff       	callq  401ae0 <__write_memory.part.0>
  401edd:	eb a9                	jmp    401e88 <_pei386_runtime_relocator+0x1d8>
  401edf:	90                   	nop
  401ee0:	8b 11                	mov    (%rcx),%edx
  401ee2:	4c 89 f7             	mov    %r14,%rdi
  401ee5:	49 89 d0             	mov    %rdx,%r8
  401ee8:	4c 09 fa             	or     %r15,%rdx
  401eeb:	45 85 c0             	test   %r8d,%r8d
  401eee:	49 0f 49 d0          	cmovns %r8,%rdx
  401ef2:	41 b8 04 00 00 00    	mov    $0x4,%r8d
  401ef8:	48 29 c2             	sub    %rax,%rdx
  401efb:	4c 01 ca             	add    %r9,%rdx
  401efe:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
  401f02:	4c 89 f2             	mov    %r14,%rdx
  401f05:	e8 d6 fb ff ff       	callq  401ae0 <__write_memory.part.0>
  401f0a:	e9 79 ff ff ff       	jmpq   401e88 <_pei386_runtime_relocator+0x1d8>
  401f0f:	90                   	nop
  401f10:	83 fa 08             	cmp    $0x8,%edx
  401f13:	75 35                	jne    401f4a <_pei386_runtime_relocator+0x29a>
  401f15:	44 0f b6 01          	movzbl (%rcx),%r8d
  401f19:	4c 89 f2             	mov    %r14,%rdx
  401f1c:	4c 89 f7             	mov    %r14,%rdi
  401f1f:	4d 89 c2             	mov    %r8,%r10
  401f22:	49 81 ca 00 ff ff ff 	or     $0xffffffffffffff00,%r10
  401f29:	45 84 c0             	test   %r8b,%r8b
  401f2c:	4d 0f 48 c2          	cmovs  %r10,%r8
  401f30:	49 29 c0             	sub    %rax,%r8
  401f33:	4d 01 c8             	add    %r9,%r8
  401f36:	4c 89 45 a8          	mov    %r8,-0x58(%rbp)
  401f3a:	41 b8 01 00 00 00    	mov    $0x1,%r8d
  401f40:	e8 9b fb ff ff       	callq  401ae0 <__write_memory.part.0>
  401f45:	e9 3e ff ff ff       	jmpq   401e88 <_pei386_runtime_relocator+0x1d8>
  401f4a:	48 8d 0d 47 23 00 00 	lea    0x2347(%rip),%rcx        # 404298 <.rdata+0xd8>
  401f51:	48 c7 45 a8 00 00 00 	movq   $0x0,-0x58(%rbp)
  401f58:	00 
  401f59:	e8 02 0d 00 00       	callq  402c60 <__report_error>
  401f5e:	48 8d 0d fb 22 00 00 	lea    0x22fb(%rip),%rcx        # 404260 <.rdata+0xa0>
  401f65:	e8 f6 0c 00 00       	callq  402c60 <__report_error>
  401f6a:	90                   	nop
  401f6b:	90                   	nop
  401f6c:	90                   	nop
  401f6d:	90                   	nop
  401f6e:	90                   	nop
  401f6f:	90                   	nop

0000000000401f70 <__mingw_SEH_error_handler>:
  401f70:	48 83 ec 28          	sub    $0x28,%rsp
  401f74:	8b 01                	mov    (%rcx),%eax
  401f76:	3d 91 00 00 c0       	cmp    $0xc0000091,%eax
  401f7b:	77 63                	ja     401fe0 <__mingw_SEH_error_handler+0x70>
  401f7d:	3d 8d 00 00 c0       	cmp    $0xc000008d,%eax
  401f82:	73 7b                	jae    401fff <__mingw_SEH_error_handler+0x8f>
  401f84:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
  401f89:	0f 84 05 01 00 00    	je     402094 <__mingw_SEH_error_handler+0x124>
  401f8f:	0f 87 cb 00 00 00    	ja     402060 <__mingw_SEH_error_handler+0xf0>
  401f95:	3d 02 00 00 80       	cmp    $0x80000002,%eax
  401f9a:	0f 84 f4 00 00 00    	je     402094 <__mingw_SEH_error_handler+0x124>
  401fa0:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
  401fa5:	0f 85 c3 00 00 00    	jne    40206e <__mingw_SEH_error_handler+0xfe>
  401fab:	31 d2                	xor    %edx,%edx
  401fad:	b9 0b 00 00 00       	mov    $0xb,%ecx
  401fb2:	e8 e1 0a 00 00       	callq  402a98 <signal>
  401fb7:	48 83 f8 01          	cmp    $0x1,%rax
  401fbb:	0f 84 2f 01 00 00    	je     4020f0 <__mingw_SEH_error_handler+0x180>
  401fc1:	48 85 c0             	test   %rax,%rax
  401fc4:	0f 84 3c 01 00 00    	je     402106 <__mingw_SEH_error_handler+0x196>
  401fca:	b9 0b 00 00 00       	mov    $0xb,%ecx
  401fcf:	ff d0                	callq  *%rax
  401fd1:	31 c0                	xor    %eax,%eax
  401fd3:	48 83 c4 28          	add    $0x28,%rsp
  401fd7:	c3                   	retq   
  401fd8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  401fdf:	00 
  401fe0:	3d 94 00 00 c0       	cmp    $0xc0000094,%eax
  401fe5:	0f 84 b5 00 00 00    	je     4020a0 <__mingw_SEH_error_handler+0x130>
  401feb:	77 37                	ja     402024 <__mingw_SEH_error_handler+0xb4>
  401fed:	3d 92 00 00 c0       	cmp    $0xc0000092,%eax
  401ff2:	0f 84 9c 00 00 00    	je     402094 <__mingw_SEH_error_handler+0x124>
  401ff8:	3d 93 00 00 c0       	cmp    $0xc0000093,%eax
  401ffd:	75 6f                	jne    40206e <__mingw_SEH_error_handler+0xfe>
  401fff:	31 d2                	xor    %edx,%edx
  402001:	b9 08 00 00 00       	mov    $0x8,%ecx
  402006:	e8 8d 0a 00 00       	callq  402a98 <signal>
  40200b:	48 83 f8 01          	cmp    $0x1,%rax
  40200f:	74 6f                	je     402080 <__mingw_SEH_error_handler+0x110>
  402011:	48 85 c0             	test   %rax,%rax
  402014:	74 58                	je     40206e <__mingw_SEH_error_handler+0xfe>
  402016:	b9 08 00 00 00       	mov    $0x8,%ecx
  40201b:	ff d0                	callq  *%rax
  40201d:	31 c0                	xor    %eax,%eax
  40201f:	48 83 c4 28          	add    $0x28,%rsp
  402023:	c3                   	retq   
  402024:	3d 95 00 00 c0       	cmp    $0xc0000095,%eax
  402029:	74 69                	je     402094 <__mingw_SEH_error_handler+0x124>
  40202b:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
  402030:	75 3c                	jne    40206e <__mingw_SEH_error_handler+0xfe>
  402032:	31 d2                	xor    %edx,%edx
  402034:	b9 04 00 00 00       	mov    $0x4,%ecx
  402039:	e8 5a 0a 00 00       	callq  402a98 <signal>
  40203e:	48 83 f8 01          	cmp    $0x1,%rax
  402042:	0f 84 88 00 00 00    	je     4020d0 <__mingw_SEH_error_handler+0x160>
  402048:	48 85 c0             	test   %rax,%rax
  40204b:	0f 84 b5 00 00 00    	je     402106 <__mingw_SEH_error_handler+0x196>
  402051:	b9 04 00 00 00       	mov    $0x4,%ecx
  402056:	ff d0                	callq  *%rax
  402058:	31 c0                	xor    %eax,%eax
  40205a:	48 83 c4 28          	add    $0x28,%rsp
  40205e:	c3                   	retq   
  40205f:	90                   	nop
  402060:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
  402065:	74 cb                	je     402032 <__mingw_SEH_error_handler+0xc2>
  402067:	3d 8c 00 00 c0       	cmp    $0xc000008c,%eax
  40206c:	74 26                	je     402094 <__mingw_SEH_error_handler+0x124>
  40206e:	b8 01 00 00 00       	mov    $0x1,%eax
  402073:	48 83 c4 28          	add    $0x28,%rsp
  402077:	c3                   	retq   
  402078:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40207f:	00 
  402080:	ba 01 00 00 00       	mov    $0x1,%edx
  402085:	b9 08 00 00 00       	mov    $0x8,%ecx
  40208a:	e8 09 0a 00 00       	callq  402a98 <signal>
  40208f:	e8 1c fa ff ff       	callq  401ab0 <_fpreset>
  402094:	31 c0                	xor    %eax,%eax
  402096:	48 83 c4 28          	add    $0x28,%rsp
  40209a:	c3                   	retq   
  40209b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4020a0:	31 d2                	xor    %edx,%edx
  4020a2:	b9 08 00 00 00       	mov    $0x8,%ecx
  4020a7:	e8 ec 09 00 00       	callq  402a98 <signal>
  4020ac:	48 83 f8 01          	cmp    $0x1,%rax
  4020b0:	0f 85 5b ff ff ff    	jne    402011 <__mingw_SEH_error_handler+0xa1>
  4020b6:	ba 01 00 00 00       	mov    $0x1,%edx
  4020bb:	b9 08 00 00 00       	mov    $0x8,%ecx
  4020c0:	e8 d3 09 00 00       	callq  402a98 <signal>
  4020c5:	31 c0                	xor    %eax,%eax
  4020c7:	e9 07 ff ff ff       	jmpq   401fd3 <__mingw_SEH_error_handler+0x63>
  4020cc:	0f 1f 40 00          	nopl   0x0(%rax)
  4020d0:	ba 01 00 00 00       	mov    $0x1,%edx
  4020d5:	b9 04 00 00 00       	mov    $0x4,%ecx
  4020da:	e8 b9 09 00 00       	callq  402a98 <signal>
  4020df:	31 c0                	xor    %eax,%eax
  4020e1:	e9 ed fe ff ff       	jmpq   401fd3 <__mingw_SEH_error_handler+0x63>
  4020e6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4020ed:	00 00 00 
  4020f0:	ba 01 00 00 00       	mov    $0x1,%edx
  4020f5:	b9 0b 00 00 00       	mov    $0xb,%ecx
  4020fa:	e8 99 09 00 00       	callq  402a98 <signal>
  4020ff:	31 c0                	xor    %eax,%eax
  402101:	e9 cd fe ff ff       	jmpq   401fd3 <__mingw_SEH_error_handler+0x63>
  402106:	b8 04 00 00 00       	mov    $0x4,%eax
  40210b:	e9 c3 fe ff ff       	jmpq   401fd3 <__mingw_SEH_error_handler+0x63>

0000000000402110 <__mingw_init_ehandler>:
  402110:	41 54                	push   %r12
  402112:	55                   	push   %rbp
  402113:	57                   	push   %rdi
  402114:	56                   	push   %rsi
  402115:	53                   	push   %rbx
  402116:	48 83 ec 20          	sub    $0x20,%rsp
  40211a:	e8 91 07 00 00       	callq  4028b0 <_GetPEImageBase>
  40211f:	48 89 c5             	mov    %rax,%rbp
  402122:	8b 05 20 55 00 00    	mov    0x5520(%rip),%eax        # 407648 <was_here.95013>
  402128:	85 c0                	test   %eax,%eax
  40212a:	75 25                	jne    402151 <__mingw_init_ehandler+0x41>
  40212c:	48 85 ed             	test   %rbp,%rbp
  40212f:	74 20                	je     402151 <__mingw_init_ehandler+0x41>
  402131:	48 8d 0d 98 21 00 00 	lea    0x2198(%rip),%rcx        # 4042d0 <.rdata>
  402138:	c7 05 06 55 00 00 01 	movl   $0x1,0x5506(%rip)        # 407648 <was_here.95013>
  40213f:	00 00 00 
  402142:	e8 a9 05 00 00       	callq  4026f0 <_FindPESectionByName>
  402147:	48 85 c0             	test   %rax,%rax
  40214a:	74 14                	je     402160 <__mingw_init_ehandler+0x50>
  40214c:	b8 01 00 00 00       	mov    $0x1,%eax
  402151:	48 83 c4 20          	add    $0x20,%rsp
  402155:	5b                   	pop    %rbx
  402156:	5e                   	pop    %rsi
  402157:	5f                   	pop    %rdi
  402158:	5d                   	pop    %rbp
  402159:	41 5c                	pop    %r12
  40215b:	c3                   	retq   
  40215c:	0f 1f 40 00          	nopl   0x0(%rax)
  402160:	48 8d 1d f9 55 00 00 	lea    0x55f9(%rip),%rbx        # 407760 <emu_pdata>
  402167:	b9 30 00 00 00       	mov    $0x30,%ecx
  40216c:	31 f6                	xor    %esi,%esi
  40216e:	48 8d 15 eb 54 00 00 	lea    0x54eb(%rip),%rdx        # 407660 <emu_xdata>
  402175:	48 89 df             	mov    %rbx,%rdi
  402178:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  40217b:	4c 8d 25 ee fd ff ff 	lea    -0x212(%rip),%r12        # 401f70 <__mingw_SEH_error_handler>
  402182:	b9 20 00 00 00       	mov    $0x20,%ecx
  402187:	48 89 d7             	mov    %rdx,%rdi
  40218a:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  40218d:	49 29 ec             	sub    %rbp,%r12
  402190:	48 89 d7             	mov    %rdx,%rdi
  402193:	eb 2e                	jmp    4021c3 <__mingw_init_ehandler+0xb3>
  402195:	c6 07 09             	movb   $0x9,(%rdi)
  402198:	48 83 c6 01          	add    $0x1,%rsi
  40219c:	48 83 c3 0c          	add    $0xc,%rbx
  4021a0:	44 89 67 04          	mov    %r12d,0x4(%rdi)
  4021a4:	8b 48 0c             	mov    0xc(%rax),%ecx
  4021a7:	89 4b f4             	mov    %ecx,-0xc(%rbx)
  4021aa:	03 48 08             	add    0x8(%rax),%ecx
  4021ad:	48 89 f8             	mov    %rdi,%rax
  4021b0:	48 83 c7 08          	add    $0x8,%rdi
  4021b4:	48 29 e8             	sub    %rbp,%rax
  4021b7:	89 43 fc             	mov    %eax,-0x4(%rbx)
  4021ba:	89 4b f8             	mov    %ecx,-0x8(%rbx)
  4021bd:	48 83 fe 20          	cmp    $0x20,%rsi
  4021c1:	74 32                	je     4021f5 <__mingw_init_ehandler+0xe5>
  4021c3:	48 89 f1             	mov    %rsi,%rcx
  4021c6:	e8 75 06 00 00       	callq  402840 <_FindPESectionExec>
  4021cb:	48 85 c0             	test   %rax,%rax
  4021ce:	75 c5                	jne    402195 <__mingw_init_ehandler+0x85>
  4021d0:	48 85 f6             	test   %rsi,%rsi
  4021d3:	89 f2                	mov    %esi,%edx
  4021d5:	0f 84 71 ff ff ff    	je     40214c <__mingw_init_ehandler+0x3c>
  4021db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4021e0:	48 8d 0d 79 55 00 00 	lea    0x5579(%rip),%rcx        # 407760 <emu_pdata>
  4021e7:	49 89 e8             	mov    %rbp,%r8
  4021ea:	ff 15 44 60 00 00    	callq  *0x6044(%rip)        # 408234 <__imp_RtlAddFunctionTable>
  4021f0:	e9 57 ff ff ff       	jmpq   40214c <__mingw_init_ehandler+0x3c>
  4021f5:	ba 20 00 00 00       	mov    $0x20,%edx
  4021fa:	eb e4                	jmp    4021e0 <__mingw_init_ehandler+0xd0>
  4021fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000402200 <_gnu_exception_handler>:
  402200:	53                   	push   %rbx
  402201:	48 83 ec 20          	sub    $0x20,%rsp
  402205:	48 8b 11             	mov    (%rcx),%rdx
  402208:	8b 02                	mov    (%rdx),%eax
  40220a:	48 89 cb             	mov    %rcx,%rbx
  40220d:	89 c1                	mov    %eax,%ecx
  40220f:	81 e1 ff ff ff 20    	and    $0x20ffffff,%ecx
  402215:	81 f9 43 43 47 20    	cmp    $0x20474343,%ecx
  40221b:	0f 84 bf 00 00 00    	je     4022e0 <_gnu_exception_handler+0xe0>
  402221:	3d 91 00 00 c0       	cmp    $0xc0000091,%eax
  402226:	77 68                	ja     402290 <_gnu_exception_handler+0x90>
  402228:	3d 8d 00 00 c0       	cmp    $0xc000008d,%eax
  40222d:	73 7c                	jae    4022ab <_gnu_exception_handler+0xab>
  40222f:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
  402234:	0f 84 b0 00 00 00    	je     4022ea <_gnu_exception_handler+0xea>
  40223a:	0f 87 f4 00 00 00    	ja     402334 <_gnu_exception_handler+0x134>
  402240:	3d 02 00 00 80       	cmp    $0x80000002,%eax
  402245:	0f 84 9f 00 00 00    	je     4022ea <_gnu_exception_handler+0xea>
  40224b:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
  402250:	75 1f                	jne    402271 <_gnu_exception_handler+0x71>
  402252:	31 d2                	xor    %edx,%edx
  402254:	b9 0b 00 00 00       	mov    $0xb,%ecx
  402259:	e8 3a 08 00 00       	callq  402a98 <signal>
  40225e:	48 83 f8 01          	cmp    $0x1,%rax
  402262:	0f 84 51 01 00 00    	je     4023b9 <_gnu_exception_handler+0x1b9>
  402268:	48 85 c0             	test   %rax,%rax
  40226b:	0f 85 0f 01 00 00    	jne    402380 <_gnu_exception_handler+0x180>
  402271:	48 8b 05 c8 53 00 00 	mov    0x53c8(%rip),%rax        # 407640 <__mingw_oldexcpt_handler>
  402278:	48 85 c0             	test   %rax,%rax
  40227b:	0f 84 10 01 00 00    	je     402391 <_gnu_exception_handler+0x191>
  402281:	48 89 d9             	mov    %rbx,%rcx
  402284:	48 83 c4 20          	add    $0x20,%rsp
  402288:	5b                   	pop    %rbx
  402289:	48 ff e0             	rex.W jmpq *%rax
  40228c:	0f 1f 40 00          	nopl   0x0(%rax)
  402290:	3d 94 00 00 c0       	cmp    $0xc0000094,%eax
  402295:	0f 84 b5 00 00 00    	je     402350 <_gnu_exception_handler+0x150>
  40229b:	77 58                	ja     4022f5 <_gnu_exception_handler+0xf5>
  40229d:	3d 92 00 00 c0       	cmp    $0xc0000092,%eax
  4022a2:	74 46                	je     4022ea <_gnu_exception_handler+0xea>
  4022a4:	3d 93 00 00 c0       	cmp    $0xc0000093,%eax
  4022a9:	75 c6                	jne    402271 <_gnu_exception_handler+0x71>
  4022ab:	31 d2                	xor    %edx,%edx
  4022ad:	b9 08 00 00 00       	mov    $0x8,%ecx
  4022b2:	e8 e1 07 00 00       	callq  402a98 <signal>
  4022b7:	48 83 f8 01          	cmp    $0x1,%rax
  4022bb:	0f 84 df 00 00 00    	je     4023a0 <_gnu_exception_handler+0x1a0>
  4022c1:	48 85 c0             	test   %rax,%rax
  4022c4:	74 ab                	je     402271 <_gnu_exception_handler+0x71>
  4022c6:	b9 08 00 00 00       	mov    $0x8,%ecx
  4022cb:	ff d0                	callq  *%rax
  4022cd:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4022d2:	48 83 c4 20          	add    $0x20,%rsp
  4022d6:	5b                   	pop    %rbx
  4022d7:	c3                   	retq   
  4022d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4022df:	00 
  4022e0:	f6 42 04 01          	testb  $0x1,0x4(%rdx)
  4022e4:	0f 85 37 ff ff ff    	jne    402221 <_gnu_exception_handler+0x21>
  4022ea:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4022ef:	48 83 c4 20          	add    $0x20,%rsp
  4022f3:	5b                   	pop    %rbx
  4022f4:	c3                   	retq   
  4022f5:	3d 95 00 00 c0       	cmp    $0xc0000095,%eax
  4022fa:	74 ee                	je     4022ea <_gnu_exception_handler+0xea>
  4022fc:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
  402301:	0f 85 6a ff ff ff    	jne    402271 <_gnu_exception_handler+0x71>
  402307:	31 d2                	xor    %edx,%edx
  402309:	b9 04 00 00 00       	mov    $0x4,%ecx
  40230e:	e8 85 07 00 00       	callq  402a98 <signal>
  402313:	48 83 f8 01          	cmp    $0x1,%rax
  402317:	0f 84 b3 00 00 00    	je     4023d0 <_gnu_exception_handler+0x1d0>
  40231d:	48 85 c0             	test   %rax,%rax
  402320:	0f 84 4b ff ff ff    	je     402271 <_gnu_exception_handler+0x71>
  402326:	b9 04 00 00 00       	mov    $0x4,%ecx
  40232b:	ff d0                	callq  *%rax
  40232d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402332:	eb 9e                	jmp    4022d2 <_gnu_exception_handler+0xd2>
  402334:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
  402339:	74 cc                	je     402307 <_gnu_exception_handler+0x107>
  40233b:	3d 8c 00 00 c0       	cmp    $0xc000008c,%eax
  402340:	0f 85 2b ff ff ff    	jne    402271 <_gnu_exception_handler+0x71>
  402346:	eb a2                	jmp    4022ea <_gnu_exception_handler+0xea>
  402348:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40234f:	00 
  402350:	31 d2                	xor    %edx,%edx
  402352:	b9 08 00 00 00       	mov    $0x8,%ecx
  402357:	e8 3c 07 00 00       	callq  402a98 <signal>
  40235c:	48 83 f8 01          	cmp    $0x1,%rax
  402360:	0f 85 5b ff ff ff    	jne    4022c1 <_gnu_exception_handler+0xc1>
  402366:	ba 01 00 00 00       	mov    $0x1,%edx
  40236b:	b9 08 00 00 00       	mov    $0x8,%ecx
  402370:	e8 23 07 00 00       	callq  402a98 <signal>
  402375:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40237a:	e9 53 ff ff ff       	jmpq   4022d2 <_gnu_exception_handler+0xd2>
  40237f:	90                   	nop
  402380:	b9 0b 00 00 00       	mov    $0xb,%ecx
  402385:	ff d0                	callq  *%rax
  402387:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40238c:	e9 41 ff ff ff       	jmpq   4022d2 <_gnu_exception_handler+0xd2>
  402391:	31 c0                	xor    %eax,%eax
  402393:	e9 3a ff ff ff       	jmpq   4022d2 <_gnu_exception_handler+0xd2>
  402398:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40239f:	00 
  4023a0:	ba 01 00 00 00       	mov    $0x1,%edx
  4023a5:	b9 08 00 00 00       	mov    $0x8,%ecx
  4023aa:	e8 e9 06 00 00       	callq  402a98 <signal>
  4023af:	e8 fc f6 ff ff       	callq  401ab0 <_fpreset>
  4023b4:	e9 31 ff ff ff       	jmpq   4022ea <_gnu_exception_handler+0xea>
  4023b9:	ba 01 00 00 00       	mov    $0x1,%edx
  4023be:	b9 0b 00 00 00       	mov    $0xb,%ecx
  4023c3:	e8 d0 06 00 00       	callq  402a98 <signal>
  4023c8:	83 c8 ff             	or     $0xffffffff,%eax
  4023cb:	e9 02 ff ff ff       	jmpq   4022d2 <_gnu_exception_handler+0xd2>
  4023d0:	ba 01 00 00 00       	mov    $0x1,%edx
  4023d5:	b9 04 00 00 00       	mov    $0x4,%ecx
  4023da:	e8 b9 06 00 00       	callq  402a98 <signal>
  4023df:	83 c8 ff             	or     $0xffffffff,%eax
  4023e2:	e9 eb fe ff ff       	jmpq   4022d2 <_gnu_exception_handler+0xd2>
  4023e7:	90                   	nop
  4023e8:	90                   	nop
  4023e9:	90                   	nop
  4023ea:	90                   	nop
  4023eb:	90                   	nop
  4023ec:	90                   	nop
  4023ed:	90                   	nop
  4023ee:	90                   	nop
  4023ef:	90                   	nop

00000000004023f0 <__mingwthr_run_key_dtors.part.0>:
  4023f0:	55                   	push   %rbp
  4023f1:	57                   	push   %rdi
  4023f2:	56                   	push   %rsi
  4023f3:	53                   	push   %rbx
  4023f4:	48 83 ec 28          	sub    $0x28,%rsp
  4023f8:	48 8d 0d 01 55 00 00 	lea    0x5501(%rip),%rcx        # 407900 <__mingwthr_cs>
  4023ff:	ff 15 d7 5d 00 00    	callq  *0x5dd7(%rip)        # 4081dc <__imp_EnterCriticalSection>
  402405:	48 8b 1d d4 54 00 00 	mov    0x54d4(%rip),%rbx        # 4078e0 <key_dtor_list>
  40240c:	48 85 db             	test   %rbx,%rbx
  40240f:	74 33                	je     402444 <__mingwthr_run_key_dtors.part.0+0x54>
  402411:	48 8b 2d 54 5e 00 00 	mov    0x5e54(%rip),%rbp        # 40826c <__imp_TlsGetValue>
  402418:	48 8b 3d dd 5d 00 00 	mov    0x5ddd(%rip),%rdi        # 4081fc <__imp_GetLastError>
  40241f:	90                   	nop
  402420:	8b 0b                	mov    (%rbx),%ecx
  402422:	ff d5                	callq  *%rbp
  402424:	48 89 c6             	mov    %rax,%rsi
  402427:	ff d7                	callq  *%rdi
  402429:	85 c0                	test   %eax,%eax
  40242b:	75 0e                	jne    40243b <__mingwthr_run_key_dtors.part.0+0x4b>
  40242d:	48 85 f6             	test   %rsi,%rsi
  402430:	74 09                	je     40243b <__mingwthr_run_key_dtors.part.0+0x4b>
  402432:	48 8b 43 08          	mov    0x8(%rbx),%rax
  402436:	48 89 f1             	mov    %rsi,%rcx
  402439:	ff d0                	callq  *%rax
  40243b:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  40243f:	48 85 db             	test   %rbx,%rbx
  402442:	75 dc                	jne    402420 <__mingwthr_run_key_dtors.part.0+0x30>
  402444:	48 8d 0d b5 54 00 00 	lea    0x54b5(%rip),%rcx        # 407900 <__mingwthr_cs>
  40244b:	48 83 c4 28          	add    $0x28,%rsp
  40244f:	5b                   	pop    %rbx
  402450:	5e                   	pop    %rsi
  402451:	5f                   	pop    %rdi
  402452:	5d                   	pop    %rbp
  402453:	48 ff 25 ca 5d 00 00 	rex.W jmpq *0x5dca(%rip)        # 408224 <__imp_LeaveCriticalSection>
  40245a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000402460 <___w64_mingwthr_add_key_dtor>:
  402460:	55                   	push   %rbp
  402461:	57                   	push   %rdi
  402462:	56                   	push   %rsi
  402463:	53                   	push   %rbx
  402464:	48 83 ec 28          	sub    $0x28,%rsp
  402468:	8b 05 7a 54 00 00    	mov    0x547a(%rip),%eax        # 4078e8 <__mingwthr_cs_init>
  40246e:	31 f6                	xor    %esi,%esi
  402470:	85 c0                	test   %eax,%eax
  402472:	89 cd                	mov    %ecx,%ebp
  402474:	48 89 d7             	mov    %rdx,%rdi
  402477:	75 0b                	jne    402484 <___w64_mingwthr_add_key_dtor+0x24>
  402479:	89 f0                	mov    %esi,%eax
  40247b:	48 83 c4 28          	add    $0x28,%rsp
  40247f:	5b                   	pop    %rbx
  402480:	5e                   	pop    %rsi
  402481:	5f                   	pop    %rdi
  402482:	5d                   	pop    %rbp
  402483:	c3                   	retq   
  402484:	ba 18 00 00 00       	mov    $0x18,%edx
  402489:	b9 01 00 00 00       	mov    $0x1,%ecx
  40248e:	e8 45 06 00 00       	callq  402ad8 <calloc>
  402493:	48 85 c0             	test   %rax,%rax
  402496:	48 89 c3             	mov    %rax,%rbx
  402499:	74 3d                	je     4024d8 <___w64_mingwthr_add_key_dtor+0x78>
  40249b:	89 28                	mov    %ebp,(%rax)
  40249d:	48 8d 0d 5c 54 00 00 	lea    0x545c(%rip),%rcx        # 407900 <__mingwthr_cs>
  4024a4:	48 89 78 08          	mov    %rdi,0x8(%rax)
  4024a8:	ff 15 2e 5d 00 00    	callq  *0x5d2e(%rip)        # 4081dc <__imp_EnterCriticalSection>
  4024ae:	48 8b 05 2b 54 00 00 	mov    0x542b(%rip),%rax        # 4078e0 <key_dtor_list>
  4024b5:	48 8d 0d 44 54 00 00 	lea    0x5444(%rip),%rcx        # 407900 <__mingwthr_cs>
  4024bc:	48 89 1d 1d 54 00 00 	mov    %rbx,0x541d(%rip)        # 4078e0 <key_dtor_list>
  4024c3:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4024c7:	ff 15 57 5d 00 00    	callq  *0x5d57(%rip)        # 408224 <__imp_LeaveCriticalSection>
  4024cd:	89 f0                	mov    %esi,%eax
  4024cf:	48 83 c4 28          	add    $0x28,%rsp
  4024d3:	5b                   	pop    %rbx
  4024d4:	5e                   	pop    %rsi
  4024d5:	5f                   	pop    %rdi
  4024d6:	5d                   	pop    %rbp
  4024d7:	c3                   	retq   
  4024d8:	be ff ff ff ff       	mov    $0xffffffff,%esi
  4024dd:	eb 9a                	jmp    402479 <___w64_mingwthr_add_key_dtor+0x19>
  4024df:	90                   	nop

00000000004024e0 <___w64_mingwthr_remove_key_dtor>:
  4024e0:	53                   	push   %rbx
  4024e1:	48 83 ec 20          	sub    $0x20,%rsp
  4024e5:	8b 05 fd 53 00 00    	mov    0x53fd(%rip),%eax        # 4078e8 <__mingwthr_cs_init>
  4024eb:	85 c0                	test   %eax,%eax
  4024ed:	89 cb                	mov    %ecx,%ebx
  4024ef:	75 0f                	jne    402500 <___w64_mingwthr_remove_key_dtor+0x20>
  4024f1:	31 c0                	xor    %eax,%eax
  4024f3:	48 83 c4 20          	add    $0x20,%rsp
  4024f7:	5b                   	pop    %rbx
  4024f8:	c3                   	retq   
  4024f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402500:	48 8d 0d f9 53 00 00 	lea    0x53f9(%rip),%rcx        # 407900 <__mingwthr_cs>
  402507:	ff 15 cf 5c 00 00    	callq  *0x5ccf(%rip)        # 4081dc <__imp_EnterCriticalSection>
  40250d:	48 8b 05 cc 53 00 00 	mov    0x53cc(%rip),%rax        # 4078e0 <key_dtor_list>
  402514:	48 85 c0             	test   %rax,%rax
  402517:	74 1a                	je     402533 <___w64_mingwthr_remove_key_dtor+0x53>
  402519:	8b 10                	mov    (%rax),%edx
  40251b:	39 d3                	cmp    %edx,%ebx
  40251d:	75 0b                	jne    40252a <___w64_mingwthr_remove_key_dtor+0x4a>
  40251f:	eb 4f                	jmp    402570 <___w64_mingwthr_remove_key_dtor+0x90>
  402521:	8b 11                	mov    (%rcx),%edx
  402523:	39 da                	cmp    %ebx,%edx
  402525:	74 29                	je     402550 <___w64_mingwthr_remove_key_dtor+0x70>
  402527:	48 89 c8             	mov    %rcx,%rax
  40252a:	48 8b 48 10          	mov    0x10(%rax),%rcx
  40252e:	48 85 c9             	test   %rcx,%rcx
  402531:	75 ee                	jne    402521 <___w64_mingwthr_remove_key_dtor+0x41>
  402533:	48 8d 0d c6 53 00 00 	lea    0x53c6(%rip),%rcx        # 407900 <__mingwthr_cs>
  40253a:	ff 15 e4 5c 00 00    	callq  *0x5ce4(%rip)        # 408224 <__imp_LeaveCriticalSection>
  402540:	31 c0                	xor    %eax,%eax
  402542:	48 83 c4 20          	add    $0x20,%rsp
  402546:	5b                   	pop    %rbx
  402547:	c3                   	retq   
  402548:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40254f:	00 
  402550:	48 8b 51 10          	mov    0x10(%rcx),%rdx
  402554:	48 89 50 10          	mov    %rdx,0x10(%rax)
  402558:	e8 63 05 00 00       	callq  402ac0 <free>
  40255d:	48 8d 0d 9c 53 00 00 	lea    0x539c(%rip),%rcx        # 407900 <__mingwthr_cs>
  402564:	ff 15 ba 5c 00 00    	callq  *0x5cba(%rip)        # 408224 <__imp_LeaveCriticalSection>
  40256a:	eb d4                	jmp    402540 <___w64_mingwthr_remove_key_dtor+0x60>
  40256c:	0f 1f 40 00          	nopl   0x0(%rax)
  402570:	48 8b 50 10          	mov    0x10(%rax),%rdx
  402574:	48 89 c1             	mov    %rax,%rcx
  402577:	48 89 15 62 53 00 00 	mov    %rdx,0x5362(%rip)        # 4078e0 <key_dtor_list>
  40257e:	eb d8                	jmp    402558 <___w64_mingwthr_remove_key_dtor+0x78>

0000000000402580 <__mingw_TLScallback>:
  402580:	53                   	push   %rbx
  402581:	48 83 ec 20          	sub    $0x20,%rsp
  402585:	83 fa 01             	cmp    $0x1,%edx
  402588:	0f 84 92 00 00 00    	je     402620 <__mingw_TLScallback+0xa0>
  40258e:	72 30                	jb     4025c0 <__mingw_TLScallback+0x40>
  402590:	83 fa 02             	cmp    $0x2,%edx
  402593:	74 1b                	je     4025b0 <__mingw_TLScallback+0x30>
  402595:	83 fa 03             	cmp    $0x3,%edx
  402598:	75 1b                	jne    4025b5 <__mingw_TLScallback+0x35>
  40259a:	8b 05 48 53 00 00    	mov    0x5348(%rip),%eax        # 4078e8 <__mingwthr_cs_init>
  4025a0:	85 c0                	test   %eax,%eax
  4025a2:	74 11                	je     4025b5 <__mingw_TLScallback+0x35>
  4025a4:	e8 47 fe ff ff       	callq  4023f0 <__mingwthr_run_key_dtors.part.0>
  4025a9:	eb 0a                	jmp    4025b5 <__mingw_TLScallback+0x35>
  4025ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4025b0:	e8 fb f4 ff ff       	callq  401ab0 <_fpreset>
  4025b5:	b8 01 00 00 00       	mov    $0x1,%eax
  4025ba:	48 83 c4 20          	add    $0x20,%rsp
  4025be:	5b                   	pop    %rbx
  4025bf:	c3                   	retq   
  4025c0:	8b 05 22 53 00 00    	mov    0x5322(%rip),%eax        # 4078e8 <__mingwthr_cs_init>
  4025c6:	85 c0                	test   %eax,%eax
  4025c8:	0f 85 82 00 00 00    	jne    402650 <__mingw_TLScallback+0xd0>
  4025ce:	8b 05 14 53 00 00    	mov    0x5314(%rip),%eax        # 4078e8 <__mingwthr_cs_init>
  4025d4:	83 f8 01             	cmp    $0x1,%eax
  4025d7:	75 dc                	jne    4025b5 <__mingw_TLScallback+0x35>
  4025d9:	48 8b 0d 00 53 00 00 	mov    0x5300(%rip),%rcx        # 4078e0 <key_dtor_list>
  4025e0:	48 85 c9             	test   %rcx,%rcx
  4025e3:	74 11                	je     4025f6 <__mingw_TLScallback+0x76>
  4025e5:	48 8b 59 10          	mov    0x10(%rcx),%rbx
  4025e9:	e8 d2 04 00 00       	callq  402ac0 <free>
  4025ee:	48 85 db             	test   %rbx,%rbx
  4025f1:	48 89 d9             	mov    %rbx,%rcx
  4025f4:	75 ef                	jne    4025e5 <__mingw_TLScallback+0x65>
  4025f6:	48 8d 0d 03 53 00 00 	lea    0x5303(%rip),%rcx        # 407900 <__mingwthr_cs>
  4025fd:	48 c7 05 d8 52 00 00 	movq   $0x0,0x52d8(%rip)        # 4078e0 <key_dtor_list>
  402604:	00 00 00 00 
  402608:	c7 05 d6 52 00 00 00 	movl   $0x0,0x52d6(%rip)        # 4078e8 <__mingwthr_cs_init>
  40260f:	00 00 00 
  402612:	ff 15 bc 5b 00 00    	callq  *0x5bbc(%rip)        # 4081d4 <__IAT_start__>
  402618:	eb 9b                	jmp    4025b5 <__mingw_TLScallback+0x35>
  40261a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402620:	8b 05 c2 52 00 00    	mov    0x52c2(%rip),%eax        # 4078e8 <__mingwthr_cs_init>
  402626:	85 c0                	test   %eax,%eax
  402628:	74 16                	je     402640 <__mingw_TLScallback+0xc0>
  40262a:	c7 05 b4 52 00 00 01 	movl   $0x1,0x52b4(%rip)        # 4078e8 <__mingwthr_cs_init>
  402631:	00 00 00 
  402634:	b8 01 00 00 00       	mov    $0x1,%eax
  402639:	48 83 c4 20          	add    $0x20,%rsp
  40263d:	5b                   	pop    %rbx
  40263e:	c3                   	retq   
  40263f:	90                   	nop
  402640:	48 8d 0d b9 52 00 00 	lea    0x52b9(%rip),%rcx        # 407900 <__mingwthr_cs>
  402647:	ff 15 cf 5b 00 00    	callq  *0x5bcf(%rip)        # 40821c <__imp_InitializeCriticalSection>
  40264d:	eb db                	jmp    40262a <__mingw_TLScallback+0xaa>
  40264f:	90                   	nop
  402650:	e8 9b fd ff ff       	callq  4023f0 <__mingwthr_run_key_dtors.part.0>
  402655:	e9 74 ff ff ff       	jmpq   4025ce <__mingw_TLScallback+0x4e>
  40265a:	90                   	nop
  40265b:	90                   	nop
  40265c:	90                   	nop
  40265d:	90                   	nop
  40265e:	90                   	nop
  40265f:	90                   	nop

0000000000402660 <_ValidateImageBase.part.0>:
  402660:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
  402664:	48 01 c1             	add    %rax,%rcx
  402667:	31 c0                	xor    %eax,%eax
  402669:	81 39 50 45 00 00    	cmpl   $0x4550,(%rcx)
  40266f:	74 01                	je     402672 <_ValidateImageBase.part.0+0x12>
  402671:	c3                   	retq   
  402672:	31 c0                	xor    %eax,%eax
  402674:	66 81 79 18 0b 02    	cmpw   $0x20b,0x18(%rcx)
  40267a:	0f 94 c0             	sete   %al
  40267d:	c3                   	retq   
  40267e:	66 90                	xchg   %ax,%ax

0000000000402680 <_ValidateImageBase>:
  402680:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
  402685:	74 09                	je     402690 <_ValidateImageBase+0x10>
  402687:	31 c0                	xor    %eax,%eax
  402689:	c3                   	retq   
  40268a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402690:	eb ce                	jmp    402660 <_ValidateImageBase.part.0>
  402692:	0f 1f 40 00          	nopl   0x0(%rax)
  402696:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40269d:	00 00 00 

00000000004026a0 <_FindPESection>:
  4026a0:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
  4026a4:	48 01 c1             	add    %rax,%rcx
  4026a7:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
  4026ab:	48 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%rax
  4026b0:	0f b7 49 06          	movzwl 0x6(%rcx),%ecx
  4026b4:	85 c9                	test   %ecx,%ecx
  4026b6:	74 29                	je     4026e1 <_FindPESection+0x41>
  4026b8:	83 e9 01             	sub    $0x1,%ecx
  4026bb:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
  4026bf:	4c 8d 4c c8 28       	lea    0x28(%rax,%rcx,8),%r9
  4026c4:	44 8b 40 0c          	mov    0xc(%rax),%r8d
  4026c8:	49 39 d0             	cmp    %rdx,%r8
  4026cb:	4c 89 c1             	mov    %r8,%rcx
  4026ce:	77 08                	ja     4026d8 <_FindPESection+0x38>
  4026d0:	03 48 08             	add    0x8(%rax),%ecx
  4026d3:	48 39 d1             	cmp    %rdx,%rcx
  4026d6:	77 0b                	ja     4026e3 <_FindPESection+0x43>
  4026d8:	48 83 c0 28          	add    $0x28,%rax
  4026dc:	4c 39 c8             	cmp    %r9,%rax
  4026df:	75 e3                	jne    4026c4 <_FindPESection+0x24>
  4026e1:	31 c0                	xor    %eax,%eax
  4026e3:	c3                   	retq   
  4026e4:	66 90                	xchg   %ax,%ax
  4026e6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4026ed:	00 00 00 

00000000004026f0 <_FindPESectionByName>:
  4026f0:	57                   	push   %rdi
  4026f1:	56                   	push   %rsi
  4026f2:	53                   	push   %rbx
  4026f3:	48 83 ec 20          	sub    $0x20,%rsp
  4026f7:	48 89 ce             	mov    %rcx,%rsi
  4026fa:	e8 91 03 00 00       	callq  402a90 <strlen>
  4026ff:	48 83 f8 08          	cmp    $0x8,%rax
  402703:	77 6b                	ja     402770 <_FindPESectionByName+0x80>
  402705:	48 8b 15 34 1c 00 00 	mov    0x1c34(%rip),%rdx        # 404340 <.refptr.__image_base__>
  40270c:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
  402711:	75 5d                	jne    402770 <_FindPESectionByName+0x80>
  402713:	48 89 d1             	mov    %rdx,%rcx
  402716:	e8 45 ff ff ff       	callq  402660 <_ValidateImageBase.part.0>
  40271b:	85 c0                	test   %eax,%eax
  40271d:	74 51                	je     402770 <_FindPESectionByName+0x80>
  40271f:	48 63 4a 3c          	movslq 0x3c(%rdx),%rcx
  402723:	48 01 d1             	add    %rdx,%rcx
  402726:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
  40272a:	48 8d 5c 01 18       	lea    0x18(%rcx,%rax,1),%rbx
  40272f:	0f b7 41 06          	movzwl 0x6(%rcx),%eax
  402733:	85 c0                	test   %eax,%eax
  402735:	74 39                	je     402770 <_FindPESectionByName+0x80>
  402737:	83 e8 01             	sub    $0x1,%eax
  40273a:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  40273e:	48 8d 7c c3 28       	lea    0x28(%rbx,%rax,8),%rdi
  402743:	eb 09                	jmp    40274e <_FindPESectionByName+0x5e>
  402745:	48 83 c3 28          	add    $0x28,%rbx
  402749:	48 39 fb             	cmp    %rdi,%rbx
  40274c:	74 22                	je     402770 <_FindPESectionByName+0x80>
  40274e:	41 b8 08 00 00 00    	mov    $0x8,%r8d
  402754:	48 89 f2             	mov    %rsi,%rdx
  402757:	48 89 d9             	mov    %rbx,%rcx
  40275a:	e8 29 03 00 00       	callq  402a88 <strncmp>
  40275f:	85 c0                	test   %eax,%eax
  402761:	75 e2                	jne    402745 <_FindPESectionByName+0x55>
  402763:	48 89 d8             	mov    %rbx,%rax
  402766:	48 83 c4 20          	add    $0x20,%rsp
  40276a:	5b                   	pop    %rbx
  40276b:	5e                   	pop    %rsi
  40276c:	5f                   	pop    %rdi
  40276d:	c3                   	retq   
  40276e:	66 90                	xchg   %ax,%ax
  402770:	31 db                	xor    %ebx,%ebx
  402772:	48 89 d8             	mov    %rbx,%rax
  402775:	48 83 c4 20          	add    $0x20,%rsp
  402779:	5b                   	pop    %rbx
  40277a:	5e                   	pop    %rsi
  40277b:	5f                   	pop    %rdi
  40277c:	c3                   	retq   
  40277d:	0f 1f 00             	nopl   (%rax)

0000000000402780 <__mingw_GetSectionForAddress>:
  402780:	48 83 ec 28          	sub    $0x28,%rsp
  402784:	4c 8b 05 b5 1b 00 00 	mov    0x1bb5(%rip),%r8        # 404340 <.refptr.__image_base__>
  40278b:	66 41 81 38 4d 5a    	cmpw   $0x5a4d,(%r8)
  402791:	48 89 ca             	mov    %rcx,%rdx
  402794:	75 57                	jne    4027ed <__mingw_GetSectionForAddress+0x6d>
  402796:	4c 89 c1             	mov    %r8,%rcx
  402799:	e8 c2 fe ff ff       	callq  402660 <_ValidateImageBase.part.0>
  40279e:	85 c0                	test   %eax,%eax
  4027a0:	74 4b                	je     4027ed <__mingw_GetSectionForAddress+0x6d>
  4027a2:	49 63 40 3c          	movslq 0x3c(%r8),%rax
  4027a6:	48 89 d1             	mov    %rdx,%rcx
  4027a9:	4c 29 c1             	sub    %r8,%rcx
  4027ac:	49 01 c0             	add    %rax,%r8
  4027af:	41 0f b7 50 06       	movzwl 0x6(%r8),%edx
  4027b4:	41 0f b7 40 14       	movzwl 0x14(%r8),%eax
  4027b9:	85 d2                	test   %edx,%edx
  4027bb:	49 8d 44 00 18       	lea    0x18(%r8,%rax,1),%rax
  4027c0:	74 2b                	je     4027ed <__mingw_GetSectionForAddress+0x6d>
  4027c2:	83 ea 01             	sub    $0x1,%edx
  4027c5:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
  4027c9:	4c 8d 4c d0 28       	lea    0x28(%rax,%rdx,8),%r9
  4027ce:	66 90                	xchg   %ax,%ax
  4027d0:	44 8b 40 0c          	mov    0xc(%rax),%r8d
  4027d4:	4c 39 c1             	cmp    %r8,%rcx
  4027d7:	4c 89 c2             	mov    %r8,%rdx
  4027da:	72 08                	jb     4027e4 <__mingw_GetSectionForAddress+0x64>
  4027dc:	03 50 08             	add    0x8(%rax),%edx
  4027df:	48 39 d1             	cmp    %rdx,%rcx
  4027e2:	72 0b                	jb     4027ef <__mingw_GetSectionForAddress+0x6f>
  4027e4:	48 83 c0 28          	add    $0x28,%rax
  4027e8:	4c 39 c8             	cmp    %r9,%rax
  4027eb:	75 e3                	jne    4027d0 <__mingw_GetSectionForAddress+0x50>
  4027ed:	31 c0                	xor    %eax,%eax
  4027ef:	48 83 c4 28          	add    $0x28,%rsp
  4027f3:	c3                   	retq   
  4027f4:	66 90                	xchg   %ax,%ax
  4027f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4027fd:	00 00 00 

0000000000402800 <__mingw_GetSectionCount>:
  402800:	48 83 ec 28          	sub    $0x28,%rsp
  402804:	48 8b 15 35 1b 00 00 	mov    0x1b35(%rip),%rdx        # 404340 <.refptr.__image_base__>
  40280b:	45 31 c0             	xor    %r8d,%r8d
  40280e:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
  402813:	74 0b                	je     402820 <__mingw_GetSectionCount+0x20>
  402815:	44 89 c0             	mov    %r8d,%eax
  402818:	48 83 c4 28          	add    $0x28,%rsp
  40281c:	c3                   	retq   
  40281d:	0f 1f 00             	nopl   (%rax)
  402820:	48 89 d1             	mov    %rdx,%rcx
  402823:	e8 38 fe ff ff       	callq  402660 <_ValidateImageBase.part.0>
  402828:	85 c0                	test   %eax,%eax
  40282a:	74 e9                	je     402815 <__mingw_GetSectionCount+0x15>
  40282c:	48 63 42 3c          	movslq 0x3c(%rdx),%rax
  402830:	44 0f b7 44 10 06    	movzwl 0x6(%rax,%rdx,1),%r8d
  402836:	44 89 c0             	mov    %r8d,%eax
  402839:	48 83 c4 28          	add    $0x28,%rsp
  40283d:	c3                   	retq   
  40283e:	66 90                	xchg   %ax,%ax

0000000000402840 <_FindPESectionExec>:
  402840:	48 83 ec 28          	sub    $0x28,%rsp
  402844:	4c 8b 05 f5 1a 00 00 	mov    0x1af5(%rip),%r8        # 404340 <.refptr.__image_base__>
  40284b:	66 41 81 38 4d 5a    	cmpw   $0x5a4d,(%r8)
  402851:	48 89 ca             	mov    %rcx,%rdx
  402854:	75 52                	jne    4028a8 <_FindPESectionExec+0x68>
  402856:	4c 89 c1             	mov    %r8,%rcx
  402859:	e8 02 fe ff ff       	callq  402660 <_ValidateImageBase.part.0>
  40285e:	85 c0                	test   %eax,%eax
  402860:	74 46                	je     4028a8 <_FindPESectionExec+0x68>
  402862:	49 63 48 3c          	movslq 0x3c(%r8),%rcx
  402866:	4c 01 c1             	add    %r8,%rcx
  402869:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
  40286d:	48 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%rax
  402872:	0f b7 49 06          	movzwl 0x6(%rcx),%ecx
  402876:	85 c9                	test   %ecx,%ecx
  402878:	74 2e                	je     4028a8 <_FindPESectionExec+0x68>
  40287a:	83 e9 01             	sub    $0x1,%ecx
  40287d:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
  402881:	48 8d 4c c8 28       	lea    0x28(%rax,%rcx,8),%rcx
  402886:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40288d:	00 00 00 
  402890:	f6 40 27 20          	testb  $0x20,0x27(%rax)
  402894:	74 09                	je     40289f <_FindPESectionExec+0x5f>
  402896:	48 85 d2             	test   %rdx,%rdx
  402899:	74 0f                	je     4028aa <_FindPESectionExec+0x6a>
  40289b:	48 83 ea 01          	sub    $0x1,%rdx
  40289f:	48 83 c0 28          	add    $0x28,%rax
  4028a3:	48 39 c8             	cmp    %rcx,%rax
  4028a6:	75 e8                	jne    402890 <_FindPESectionExec+0x50>
  4028a8:	31 c0                	xor    %eax,%eax
  4028aa:	48 83 c4 28          	add    $0x28,%rsp
  4028ae:	c3                   	retq   
  4028af:	90                   	nop

00000000004028b0 <_GetPEImageBase>:
  4028b0:	48 83 ec 28          	sub    $0x28,%rsp
  4028b4:	48 8b 15 85 1a 00 00 	mov    0x1a85(%rip),%rdx        # 404340 <.refptr.__image_base__>
  4028bb:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
  4028c0:	75 1e                	jne    4028e0 <_GetPEImageBase+0x30>
  4028c2:	48 89 d1             	mov    %rdx,%rcx
  4028c5:	e8 96 fd ff ff       	callq  402660 <_ValidateImageBase.part.0>
  4028ca:	85 c0                	test   %eax,%eax
  4028cc:	b8 00 00 00 00       	mov    $0x0,%eax
  4028d1:	48 0f 45 c2          	cmovne %rdx,%rax
  4028d5:	48 83 c4 28          	add    $0x28,%rsp
  4028d9:	c3                   	retq   
  4028da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4028e0:	31 c0                	xor    %eax,%eax
  4028e2:	48 83 c4 28          	add    $0x28,%rsp
  4028e6:	c3                   	retq   
  4028e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4028ee:	00 00 

00000000004028f0 <_IsNonwritableInCurrentImage>:
  4028f0:	48 83 ec 28          	sub    $0x28,%rsp
  4028f4:	4c 8b 05 45 1a 00 00 	mov    0x1a45(%rip),%r8        # 404340 <.refptr.__image_base__>
  4028fb:	31 c0                	xor    %eax,%eax
  4028fd:	66 41 81 38 4d 5a    	cmpw   $0x5a4d,(%r8)
  402903:	48 89 ca             	mov    %rcx,%rdx
  402906:	74 08                	je     402910 <_IsNonwritableInCurrentImage+0x20>
  402908:	48 83 c4 28          	add    $0x28,%rsp
  40290c:	c3                   	retq   
  40290d:	0f 1f 00             	nopl   (%rax)
  402910:	4c 89 c1             	mov    %r8,%rcx
  402913:	e8 48 fd ff ff       	callq  402660 <_ValidateImageBase.part.0>
  402918:	85 c0                	test   %eax,%eax
  40291a:	74 ec                	je     402908 <_IsNonwritableInCurrentImage+0x18>
  40291c:	49 63 40 3c          	movslq 0x3c(%r8),%rax
  402920:	48 89 d1             	mov    %rdx,%rcx
  402923:	4c 29 c1             	sub    %r8,%rcx
  402926:	49 01 c0             	add    %rax,%r8
  402929:	41 0f b7 50 06       	movzwl 0x6(%r8),%edx
  40292e:	41 0f b7 40 14       	movzwl 0x14(%r8),%eax
  402933:	85 d2                	test   %edx,%edx
  402935:	49 8d 44 00 18       	lea    0x18(%r8,%rax,1),%rax
  40293a:	74 31                	je     40296d <_IsNonwritableInCurrentImage+0x7d>
  40293c:	83 ea 01             	sub    $0x1,%edx
  40293f:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
  402943:	4c 8d 4c d0 28       	lea    0x28(%rax,%rdx,8),%r9
  402948:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40294f:	00 
  402950:	44 8b 40 0c          	mov    0xc(%rax),%r8d
  402954:	4c 39 c1             	cmp    %r8,%rcx
  402957:	4c 89 c2             	mov    %r8,%rdx
  40295a:	72 08                	jb     402964 <_IsNonwritableInCurrentImage+0x74>
  40295c:	03 50 08             	add    0x8(%rax),%edx
  40295f:	48 39 d1             	cmp    %rdx,%rcx
  402962:	72 10                	jb     402974 <_IsNonwritableInCurrentImage+0x84>
  402964:	48 83 c0 28          	add    $0x28,%rax
  402968:	4c 39 c8             	cmp    %r9,%rax
  40296b:	75 e3                	jne    402950 <_IsNonwritableInCurrentImage+0x60>
  40296d:	31 c0                	xor    %eax,%eax
  40296f:	48 83 c4 28          	add    $0x28,%rsp
  402973:	c3                   	retq   
  402974:	8b 40 24             	mov    0x24(%rax),%eax
  402977:	f7 d0                	not    %eax
  402979:	c1 e8 1f             	shr    $0x1f,%eax
  40297c:	48 83 c4 28          	add    $0x28,%rsp
  402980:	c3                   	retq   
  402981:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402986:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40298d:	00 00 00 

0000000000402990 <__mingw_enum_import_library_names>:
  402990:	48 83 ec 28          	sub    $0x28,%rsp
  402994:	4c 8b 1d a5 19 00 00 	mov    0x19a5(%rip),%r11        # 404340 <.refptr.__image_base__>
  40299b:	66 41 81 3b 4d 5a    	cmpw   $0x5a4d,(%r11)
  4029a1:	41 89 c9             	mov    %ecx,%r9d
  4029a4:	75 58                	jne    4029fe <__mingw_enum_import_library_names+0x6e>
  4029a6:	4c 89 d9             	mov    %r11,%rcx
  4029a9:	e8 b2 fc ff ff       	callq  402660 <_ValidateImageBase.part.0>
  4029ae:	85 c0                	test   %eax,%eax
  4029b0:	74 4c                	je     4029fe <__mingw_enum_import_library_names+0x6e>
  4029b2:	49 63 43 3c          	movslq 0x3c(%r11),%rax
  4029b6:	4c 01 d8             	add    %r11,%rax
  4029b9:	8b 90 90 00 00 00    	mov    0x90(%rax),%edx
  4029bf:	85 d2                	test   %edx,%edx
  4029c1:	74 3b                	je     4029fe <__mingw_enum_import_library_names+0x6e>
  4029c3:	0f b7 48 14          	movzwl 0x14(%rax),%ecx
  4029c7:	48 8d 4c 08 18       	lea    0x18(%rax,%rcx,1),%rcx
  4029cc:	0f b7 40 06          	movzwl 0x6(%rax),%eax
  4029d0:	85 c0                	test   %eax,%eax
  4029d2:	74 2a                	je     4029fe <__mingw_enum_import_library_names+0x6e>
  4029d4:	83 e8 01             	sub    $0x1,%eax
  4029d7:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  4029db:	48 8d 44 c1 28       	lea    0x28(%rcx,%rax,8),%rax
  4029e0:	44 8b 51 0c          	mov    0xc(%rcx),%r10d
  4029e4:	4c 39 d2             	cmp    %r10,%rdx
  4029e7:	4d 89 d0             	mov    %r10,%r8
  4029ea:	72 09                	jb     4029f5 <__mingw_enum_import_library_names+0x65>
  4029ec:	44 03 41 08          	add    0x8(%rcx),%r8d
  4029f0:	4c 39 c2             	cmp    %r8,%rdx
  4029f3:	72 10                	jb     402a05 <__mingw_enum_import_library_names+0x75>
  4029f5:	48 83 c1 28          	add    $0x28,%rcx
  4029f9:	48 39 c1             	cmp    %rax,%rcx
  4029fc:	75 e2                	jne    4029e0 <__mingw_enum_import_library_names+0x50>
  4029fe:	31 c0                	xor    %eax,%eax
  402a00:	48 83 c4 28          	add    $0x28,%rsp
  402a04:	c3                   	retq   
  402a05:	4c 01 da             	add    %r11,%rdx
  402a08:	75 0e                	jne    402a18 <__mingw_enum_import_library_names+0x88>
  402a0a:	eb f2                	jmp    4029fe <__mingw_enum_import_library_names+0x6e>
  402a0c:	0f 1f 40 00          	nopl   0x0(%rax)
  402a10:	41 83 e9 01          	sub    $0x1,%r9d
  402a14:	48 83 c2 14          	add    $0x14,%rdx
  402a18:	8b 4a 04             	mov    0x4(%rdx),%ecx
  402a1b:	85 c9                	test   %ecx,%ecx
  402a1d:	75 07                	jne    402a26 <__mingw_enum_import_library_names+0x96>
  402a1f:	8b 42 0c             	mov    0xc(%rdx),%eax
  402a22:	85 c0                	test   %eax,%eax
  402a24:	74 d8                	je     4029fe <__mingw_enum_import_library_names+0x6e>
  402a26:	45 85 c9             	test   %r9d,%r9d
  402a29:	7f e5                	jg     402a10 <__mingw_enum_import_library_names+0x80>
  402a2b:	8b 42 0c             	mov    0xc(%rdx),%eax
  402a2e:	4c 01 d8             	add    %r11,%rax
  402a31:	48 83 c4 28          	add    $0x28,%rsp
  402a35:	c3                   	retq   
  402a36:	90                   	nop
  402a37:	90                   	nop
  402a38:	90                   	nop
  402a39:	90                   	nop
  402a3a:	90                   	nop
  402a3b:	90                   	nop
  402a3c:	90                   	nop
  402a3d:	90                   	nop
  402a3e:	90                   	nop
  402a3f:	90                   	nop

0000000000402a40 <___chkstk_ms>:
  402a40:	51                   	push   %rcx
  402a41:	50                   	push   %rax
  402a42:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
  402a48:	48 8d 4c 24 18       	lea    0x18(%rsp),%rcx
  402a4d:	72 19                	jb     402a68 <___chkstk_ms+0x28>
  402a4f:	48 81 e9 00 10 00 00 	sub    $0x1000,%rcx
  402a56:	48 83 09 00          	orq    $0x0,(%rcx)
  402a5a:	48 2d 00 10 00 00    	sub    $0x1000,%rax
  402a60:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
  402a66:	77 e7                	ja     402a4f <___chkstk_ms+0xf>
  402a68:	48 29 c1             	sub    %rax,%rcx
  402a6b:	48 83 09 00          	orq    $0x0,(%rcx)
  402a6f:	58                   	pop    %rax
  402a70:	59                   	pop    %rcx
  402a71:	c3                   	retq   
  402a72:	90                   	nop
  402a73:	90                   	nop
  402a74:	90                   	nop
  402a75:	90                   	nop
  402a76:	90                   	nop
  402a77:	90                   	nop
  402a78:	90                   	nop
  402a79:	90                   	nop
  402a7a:	90                   	nop
  402a7b:	90                   	nop
  402a7c:	90                   	nop
  402a7d:	90                   	nop
  402a7e:	90                   	nop
  402a7f:	90                   	nop

0000000000402a80 <vfprintf>:
  402a80:	ff 25 d6 58 00 00    	jmpq   *0x58d6(%rip)        # 40835c <__imp_vfprintf>
  402a86:	90                   	nop
  402a87:	90                   	nop

0000000000402a88 <strncmp>:
  402a88:	ff 25 c6 58 00 00    	jmpq   *0x58c6(%rip)        # 408354 <__imp_strncmp>
  402a8e:	90                   	nop
  402a8f:	90                   	nop

0000000000402a90 <strlen>:
  402a90:	ff 25 b6 58 00 00    	jmpq   *0x58b6(%rip)        # 40834c <__imp_strlen>
  402a96:	90                   	nop
  402a97:	90                   	nop

0000000000402a98 <signal>:
  402a98:	ff 25 a6 58 00 00    	jmpq   *0x58a6(%rip)        # 408344 <__imp_signal>
  402a9e:	90                   	nop
  402a9f:	90                   	nop

0000000000402aa0 <printf>:
  402aa0:	ff 25 96 58 00 00    	jmpq   *0x5896(%rip)        # 40833c <__imp_printf>
  402aa6:	90                   	nop
  402aa7:	90                   	nop

0000000000402aa8 <memcpy>:
  402aa8:	ff 25 86 58 00 00    	jmpq   *0x5886(%rip)        # 408334 <__imp_memcpy>
  402aae:	90                   	nop
  402aaf:	90                   	nop

0000000000402ab0 <malloc>:
  402ab0:	ff 25 76 58 00 00    	jmpq   *0x5876(%rip)        # 40832c <__imp_malloc>
  402ab6:	90                   	nop
  402ab7:	90                   	nop

0000000000402ab8 <fwrite>:
  402ab8:	ff 25 66 58 00 00    	jmpq   *0x5866(%rip)        # 408324 <__imp_fwrite>
  402abe:	90                   	nop
  402abf:	90                   	nop

0000000000402ac0 <free>:
  402ac0:	ff 25 56 58 00 00    	jmpq   *0x5856(%rip)        # 40831c <__imp_free>
  402ac6:	90                   	nop
  402ac7:	90                   	nop

0000000000402ac8 <fprintf>:
  402ac8:	ff 25 46 58 00 00    	jmpq   *0x5846(%rip)        # 408314 <__imp_fprintf>
  402ace:	90                   	nop
  402acf:	90                   	nop

0000000000402ad0 <exit>:
  402ad0:	ff 25 36 58 00 00    	jmpq   *0x5836(%rip)        # 40830c <__imp_exit>
  402ad6:	90                   	nop
  402ad7:	90                   	nop

0000000000402ad8 <calloc>:
  402ad8:	ff 25 26 58 00 00    	jmpq   *0x5826(%rip)        # 408304 <__imp_calloc>
  402ade:	90                   	nop
  402adf:	90                   	nop

0000000000402ae0 <abort>:
  402ae0:	ff 25 16 58 00 00    	jmpq   *0x5816(%rip)        # 4082fc <__imp_abort>
  402ae6:	90                   	nop
  402ae7:	90                   	nop

0000000000402ae8 <_onexit>:
  402ae8:	ff 25 06 58 00 00    	jmpq   *0x5806(%rip)        # 4082f4 <__imp__onexit>
  402aee:	90                   	nop
  402aef:	90                   	nop

0000000000402af0 <_initterm>:
  402af0:	ff 25 f6 57 00 00    	jmpq   *0x57f6(%rip)        # 4082ec <__imp__initterm>
  402af6:	90                   	nop
  402af7:	90                   	nop

0000000000402af8 <_cexit>:
  402af8:	ff 25 de 57 00 00    	jmpq   *0x57de(%rip)        # 4082dc <__imp__cexit>
  402afe:	90                   	nop
  402aff:	90                   	nop

0000000000402b00 <_amsg_exit>:
  402b00:	ff 25 ce 57 00 00    	jmpq   *0x57ce(%rip)        # 4082d4 <__imp__amsg_exit>
  402b06:	90                   	nop
  402b07:	90                   	nop

0000000000402b08 <__setusermatherr>:
  402b08:	ff 25 b6 57 00 00    	jmpq   *0x57b6(%rip)        # 4082c4 <__imp___setusermatherr>
  402b0e:	90                   	nop
  402b0f:	90                   	nop

0000000000402b10 <__set_app_type>:
  402b10:	ff 25 a6 57 00 00    	jmpq   *0x57a6(%rip)        # 4082bc <__imp___set_app_type>
  402b16:	90                   	nop
  402b17:	90                   	nop

0000000000402b18 <__lconv_init>:
  402b18:	ff 25 96 57 00 00    	jmpq   *0x5796(%rip)        # 4082b4 <__imp___lconv_init>
  402b1e:	90                   	nop
  402b1f:	90                   	nop

0000000000402b20 <__getmainargs>:
  402b20:	ff 25 76 57 00 00    	jmpq   *0x5776(%rip)        # 40829c <__imp___getmainargs>
  402b26:	90                   	nop
  402b27:	90                   	nop

0000000000402b28 <__C_specific_handler>:
  402b28:	ff 25 66 57 00 00    	jmpq   *0x5766(%rip)        # 408294 <__imp___C_specific_handler>
  402b2e:	90                   	nop
  402b2f:	90                   	nop

0000000000402b30 <__acrt_iob_func>:
  402b30:	53                   	push   %rbx
  402b31:	48 83 ec 20          	sub    $0x20,%rsp
  402b35:	89 cb                	mov    %ecx,%ebx
  402b37:	e8 54 00 00 00       	callq  402b90 <__iob_func>
  402b3c:	89 d9                	mov    %ebx,%ecx
  402b3e:	48 8d 14 49          	lea    (%rcx,%rcx,2),%rdx
  402b42:	48 c1 e2 04          	shl    $0x4,%rdx
  402b46:	48 01 d0             	add    %rdx,%rax
  402b49:	48 83 c4 20          	add    $0x20,%rsp
  402b4d:	5b                   	pop    %rbx
  402b4e:	c3                   	retq   
  402b4f:	90                   	nop

0000000000402b50 <_get_invalid_parameter_handler>:
  402b50:	48 8b 05 f9 4d 00 00 	mov    0x4df9(%rip),%rax        # 407950 <handler>
  402b57:	c3                   	retq   
  402b58:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402b5f:	00 

0000000000402b60 <_set_invalid_parameter_handler>:
  402b60:	48 89 c8             	mov    %rcx,%rax
  402b63:	48 87 05 e6 4d 00 00 	xchg   %rax,0x4de6(%rip)        # 407950 <handler>
  402b6a:	c3                   	retq   
  402b6b:	90                   	nop
  402b6c:	90                   	nop
  402b6d:	90                   	nop
  402b6e:	90                   	nop
  402b6f:	90                   	nop

0000000000402b70 <__p__acmdln>:
  402b70:	48 8b 05 e9 17 00 00 	mov    0x17e9(%rip),%rax        # 404360 <.refptr.__imp__acmdln>
  402b77:	48 8b 00             	mov    (%rax),%rax
  402b7a:	c3                   	retq   
  402b7b:	90                   	nop
  402b7c:	90                   	nop
  402b7d:	90                   	nop
  402b7e:	90                   	nop
  402b7f:	90                   	nop

0000000000402b80 <__p__fmode>:
  402b80:	48 8b 05 e9 17 00 00 	mov    0x17e9(%rip),%rax        # 404370 <.refptr.__imp__fmode>
  402b87:	48 8b 00             	mov    (%rax),%rax
  402b8a:	c3                   	retq   
  402b8b:	90                   	nop
  402b8c:	90                   	nop
  402b8d:	90                   	nop
  402b8e:	90                   	nop
  402b8f:	90                   	nop

0000000000402b90 <__iob_func>:
  402b90:	ff 25 16 57 00 00    	jmpq   *0x5716(%rip)        # 4082ac <__imp___iob_func>
  402b96:	90                   	nop
  402b97:	90                   	nop
  402b98:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402b9f:	00 

0000000000402ba0 <VirtualQuery>:
  402ba0:	ff 25 de 56 00 00    	jmpq   *0x56de(%rip)        # 408284 <__imp_VirtualQuery>
  402ba6:	90                   	nop
  402ba7:	90                   	nop

0000000000402ba8 <VirtualProtect>:
  402ba8:	ff 25 ce 56 00 00    	jmpq   *0x56ce(%rip)        # 40827c <__imp_VirtualProtect>
  402bae:	90                   	nop
  402baf:	90                   	nop

0000000000402bb0 <UnhandledExceptionFilter>:
  402bb0:	ff 25 be 56 00 00    	jmpq   *0x56be(%rip)        # 408274 <__imp_UnhandledExceptionFilter>
  402bb6:	90                   	nop
  402bb7:	90                   	nop

0000000000402bb8 <TlsGetValue>:
  402bb8:	ff 25 ae 56 00 00    	jmpq   *0x56ae(%rip)        # 40826c <__imp_TlsGetValue>
  402bbe:	90                   	nop
  402bbf:	90                   	nop

0000000000402bc0 <TerminateProcess>:
  402bc0:	ff 25 9e 56 00 00    	jmpq   *0x569e(%rip)        # 408264 <__imp_TerminateProcess>
  402bc6:	90                   	nop
  402bc7:	90                   	nop

0000000000402bc8 <Sleep>:
  402bc8:	ff 25 8e 56 00 00    	jmpq   *0x568e(%rip)        # 40825c <__imp_Sleep>
  402bce:	90                   	nop
  402bcf:	90                   	nop

0000000000402bd0 <SetUnhandledExceptionFilter>:
  402bd0:	ff 25 7e 56 00 00    	jmpq   *0x567e(%rip)        # 408254 <__imp_SetUnhandledExceptionFilter>
  402bd6:	90                   	nop
  402bd7:	90                   	nop

0000000000402bd8 <RtlVirtualUnwind>:
  402bd8:	ff 25 6e 56 00 00    	jmpq   *0x566e(%rip)        # 40824c <__imp_RtlVirtualUnwind>
  402bde:	90                   	nop
  402bdf:	90                   	nop

0000000000402be0 <RtlLookupFunctionEntry>:
  402be0:	ff 25 5e 56 00 00    	jmpq   *0x565e(%rip)        # 408244 <__imp_RtlLookupFunctionEntry>
  402be6:	90                   	nop
  402be7:	90                   	nop

0000000000402be8 <RtlCaptureContext>:
  402be8:	ff 25 4e 56 00 00    	jmpq   *0x564e(%rip)        # 40823c <__imp_RtlCaptureContext>
  402bee:	90                   	nop
  402bef:	90                   	nop

0000000000402bf0 <RtlAddFunctionTable>:
  402bf0:	ff 25 3e 56 00 00    	jmpq   *0x563e(%rip)        # 408234 <__imp_RtlAddFunctionTable>
  402bf6:	90                   	nop
  402bf7:	90                   	nop

0000000000402bf8 <QueryPerformanceCounter>:
  402bf8:	ff 25 2e 56 00 00    	jmpq   *0x562e(%rip)        # 40822c <__imp_QueryPerformanceCounter>
  402bfe:	90                   	nop
  402bff:	90                   	nop

0000000000402c00 <LeaveCriticalSection>:
  402c00:	ff 25 1e 56 00 00    	jmpq   *0x561e(%rip)        # 408224 <__imp_LeaveCriticalSection>
  402c06:	90                   	nop
  402c07:	90                   	nop

0000000000402c08 <InitializeCriticalSection>:
  402c08:	ff 25 0e 56 00 00    	jmpq   *0x560e(%rip)        # 40821c <__imp_InitializeCriticalSection>
  402c0e:	90                   	nop
  402c0f:	90                   	nop

0000000000402c10 <GetTickCount>:
  402c10:	ff 25 fe 55 00 00    	jmpq   *0x55fe(%rip)        # 408214 <__imp_GetTickCount>
  402c16:	90                   	nop
  402c17:	90                   	nop

0000000000402c18 <GetSystemTimeAsFileTime>:
  402c18:	ff 25 ee 55 00 00    	jmpq   *0x55ee(%rip)        # 40820c <__imp_GetSystemTimeAsFileTime>
  402c1e:	90                   	nop
  402c1f:	90                   	nop

0000000000402c20 <GetStartupInfoA>:
  402c20:	ff 25 de 55 00 00    	jmpq   *0x55de(%rip)        # 408204 <__imp_GetStartupInfoA>
  402c26:	90                   	nop
  402c27:	90                   	nop

0000000000402c28 <GetLastError>:
  402c28:	ff 25 ce 55 00 00    	jmpq   *0x55ce(%rip)        # 4081fc <__imp_GetLastError>
  402c2e:	90                   	nop
  402c2f:	90                   	nop

0000000000402c30 <GetCurrentThreadId>:
  402c30:	ff 25 be 55 00 00    	jmpq   *0x55be(%rip)        # 4081f4 <__imp_GetCurrentThreadId>
  402c36:	90                   	nop
  402c37:	90                   	nop

0000000000402c38 <GetCurrentProcessId>:
  402c38:	ff 25 ae 55 00 00    	jmpq   *0x55ae(%rip)        # 4081ec <__imp_GetCurrentProcessId>
  402c3e:	90                   	nop
  402c3f:	90                   	nop

0000000000402c40 <GetCurrentProcess>:
  402c40:	ff 25 9e 55 00 00    	jmpq   *0x559e(%rip)        # 4081e4 <__imp_GetCurrentProcess>
  402c46:	90                   	nop
  402c47:	90                   	nop

0000000000402c48 <EnterCriticalSection>:
  402c48:	ff 25 8e 55 00 00    	jmpq   *0x558e(%rip)        # 4081dc <__imp_EnterCriticalSection>
  402c4e:	90                   	nop
  402c4f:	90                   	nop

0000000000402c50 <DeleteCriticalSection>:
  402c50:	ff 25 7e 55 00 00    	jmpq   *0x557e(%rip)        # 4081d4 <__IAT_start__>
  402c56:	90                   	nop
  402c57:	90                   	nop
  402c58:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402c5f:	00 

0000000000402c60 <__report_error>:
  402c60:	56                   	push   %rsi
  402c61:	53                   	push   %rbx
  402c62:	48 83 ec 38          	sub    $0x38,%rsp
  402c66:	48 8d 44 24 58       	lea    0x58(%rsp),%rax
  402c6b:	48 89 cb             	mov    %rcx,%rbx
  402c6e:	b9 02 00 00 00       	mov    $0x2,%ecx
  402c73:	48 89 54 24 58       	mov    %rdx,0x58(%rsp)
  402c78:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
  402c7d:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
  402c82:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  402c87:	e8 a4 fe ff ff       	callq  402b30 <__acrt_iob_func>
  402c8c:	41 b8 1b 00 00 00    	mov    $0x1b,%r8d
  402c92:	ba 01 00 00 00       	mov    $0x1,%edx
  402c97:	48 8d 0d 22 15 00 00 	lea    0x1522(%rip),%rcx        # 4041c0 <.rdata>
  402c9e:	49 89 c1             	mov    %rax,%r9
  402ca1:	e8 12 fe ff ff       	callq  402ab8 <fwrite>
  402ca6:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
  402cab:	b9 02 00 00 00       	mov    $0x2,%ecx
  402cb0:	e8 7b fe ff ff       	callq  402b30 <__acrt_iob_func>
  402cb5:	48 89 da             	mov    %rbx,%rdx
  402cb8:	48 89 c1             	mov    %rax,%rcx
  402cbb:	49 89 f0             	mov    %rsi,%r8
  402cbe:	e8 bd fd ff ff       	callq  402a80 <vfprintf>
  402cc3:	e8 18 fe ff ff       	callq  402ae0 <abort>
  402cc8:	90                   	nop
  402cc9:	90                   	nop
  402cca:	90                   	nop
  402ccb:	90                   	nop
  402ccc:	90                   	nop
  402ccd:	90                   	nop
  402cce:	90                   	nop
  402ccf:	90                   	nop

0000000000402cd0 <register_frame_ctor>:
  402cd0:	e9 5b e8 ff ff       	jmpq   401530 <__gcc_register_frame>
  402cd5:	90                   	nop
  402cd6:	90                   	nop
  402cd7:	90                   	nop
  402cd8:	90                   	nop
  402cd9:	90                   	nop
  402cda:	90                   	nop
  402cdb:	90                   	nop
  402cdc:	90                   	nop
  402cdd:	90                   	nop
  402cde:	90                   	nop
  402cdf:	90                   	nop

0000000000402ce0 <__CTOR_LIST__>:
  402ce0:	ff                   	(bad)  
  402ce1:	ff                   	(bad)  
  402ce2:	ff                   	(bad)  
  402ce3:	ff                   	(bad)  
  402ce4:	ff                   	(bad)  
  402ce5:	ff                   	(bad)  
  402ce6:	ff                   	(bad)  
  402ce7:	ff                   	.byte 0xff

0000000000402ce8 <.ctors.65535>:
  402ce8:	d0 2c 40             	shrb   (%rax,%rax,2)
	...

0000000000402cf8 <__DTOR_LIST__>:
  402cf8:	ff                   	(bad)  
  402cf9:	ff                   	(bad)  
  402cfa:	ff                   	(bad)  
  402cfb:	ff                   	(bad)  
  402cfc:	ff                   	(bad)  
  402cfd:	ff                   	(bad)  
  402cfe:	ff                   	(bad)  
  402cff:	ff 00                	incl   (%rax)
  402d01:	00 00                	add    %al,(%rax)
  402d03:	00 00                	add    %al,(%rax)
  402d05:	00 00                	add    %al,(%rax)
	...
