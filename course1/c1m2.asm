
c1m2.out:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	48 83 ec 08          	sub    $0x8,%rsp
    1004:	48 8b 05 dd 3f 00 00 	mov    0x3fdd(%rip),%rax        # 4fe8 <__gmon_start__>
    100b:	48 85 c0             	test   %rax,%rax
    100e:	74 02                	je     1012 <_init+0x12>
    1010:	ff d0                	callq  *%rax
    1012:	48 83 c4 08          	add    $0x8,%rsp
    1016:	c3                   	retq   

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 e2 3f 00 00    	pushq  0x3fe2(%rip)        # 5008 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 e4 3f 00 00    	jmpq   *0x3fe4(%rip)        # 5010 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001030 <free@plt>:
    1030:	ff 25 e2 3f 00 00    	jmpq   *0x3fe2(%rip)        # 5018 <free@GLIBC_2.2.5>
    1036:	68 00 00 00 00       	pushq  $0x0
    103b:	e9 e0 ff ff ff       	jmpq   1020 <.plt>

0000000000001040 <putchar@plt>:
    1040:	ff 25 da 3f 00 00    	jmpq   *0x3fda(%rip)        # 5020 <putchar@GLIBC_2.2.5>
    1046:	68 01 00 00 00       	pushq  $0x1
    104b:	e9 d0 ff ff ff       	jmpq   1020 <.plt>

0000000000001050 <puts@plt>:
    1050:	ff 25 d2 3f 00 00    	jmpq   *0x3fd2(%rip)        # 5028 <puts@GLIBC_2.2.5>
    1056:	68 02 00 00 00       	pushq  $0x2
    105b:	e9 c0 ff ff ff       	jmpq   1020 <.plt>

0000000000001060 <printf@plt>:
    1060:	ff 25 ca 3f 00 00    	jmpq   *0x3fca(%rip)        # 5030 <printf@GLIBC_2.2.5>
    1066:	68 03 00 00 00       	pushq  $0x3
    106b:	e9 b0 ff ff ff       	jmpq   1020 <.plt>

0000000000001070 <malloc@plt>:
    1070:	ff 25 c2 3f 00 00    	jmpq   *0x3fc2(%rip)        # 5038 <malloc@GLIBC_2.2.5>
    1076:	68 04 00 00 00       	pushq  $0x4
    107b:	e9 a0 ff ff ff       	jmpq   1020 <.plt>

Disassembly of section .plt.got:

0000000000001080 <__cxa_finalize@plt>:
    1080:	ff 25 72 3f 00 00    	jmpq   *0x3f72(%rip)        # 4ff8 <__cxa_finalize@GLIBC_2.2.5>
    1086:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000001090 <_start>:
    1090:	31 ed                	xor    %ebp,%ebp
    1092:	49 89 d1             	mov    %rdx,%r9
    1095:	5e                   	pop    %rsi
    1096:	48 89 e2             	mov    %rsp,%rdx
    1099:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    109d:	50                   	push   %rax
    109e:	54                   	push   %rsp
    109f:	4c 8d 05 ba 13 00 00 	lea    0x13ba(%rip),%r8        # 2460 <__libc_csu_fini>
    10a6:	48 8d 0d 53 13 00 00 	lea    0x1353(%rip),%rcx        # 2400 <__libc_csu_init>
    10ad:	48 8d 3d c1 00 00 00 	lea    0xc1(%rip),%rdi        # 1175 <main>
    10b4:	ff 15 26 3f 00 00    	callq  *0x3f26(%rip)        # 4fe0 <__libc_start_main@GLIBC_2.2.5>
    10ba:	f4                   	hlt    
    10bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010c0 <deregister_tm_clones>:
    10c0:	48 8d 3d 89 3f 00 00 	lea    0x3f89(%rip),%rdi        # 5050 <__TMC_END__>
    10c7:	48 8d 05 82 3f 00 00 	lea    0x3f82(%rip),%rax        # 5050 <__TMC_END__>
    10ce:	48 39 f8             	cmp    %rdi,%rax
    10d1:	74 15                	je     10e8 <deregister_tm_clones+0x28>
    10d3:	48 8b 05 fe 3e 00 00 	mov    0x3efe(%rip),%rax        # 4fd8 <_ITM_deregisterTMCloneTable>
    10da:	48 85 c0             	test   %rax,%rax
    10dd:	74 09                	je     10e8 <deregister_tm_clones+0x28>
    10df:	ff e0                	jmpq   *%rax
    10e1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    10e8:	c3                   	retq   
    10e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000010f0 <register_tm_clones>:
    10f0:	48 8d 3d 59 3f 00 00 	lea    0x3f59(%rip),%rdi        # 5050 <__TMC_END__>
    10f7:	48 8d 35 52 3f 00 00 	lea    0x3f52(%rip),%rsi        # 5050 <__TMC_END__>
    10fe:	48 29 fe             	sub    %rdi,%rsi
    1101:	48 c1 fe 03          	sar    $0x3,%rsi
    1105:	48 89 f0             	mov    %rsi,%rax
    1108:	48 c1 e8 3f          	shr    $0x3f,%rax
    110c:	48 01 c6             	add    %rax,%rsi
    110f:	48 d1 fe             	sar    %rsi
    1112:	74 14                	je     1128 <register_tm_clones+0x38>
    1114:	48 8b 05 d5 3e 00 00 	mov    0x3ed5(%rip),%rax        # 4ff0 <_ITM_registerTMCloneTable>
    111b:	48 85 c0             	test   %rax,%rax
    111e:	74 08                	je     1128 <register_tm_clones+0x38>
    1120:	ff e0                	jmpq   *%rax
    1122:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1128:	c3                   	retq   
    1129:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001130 <__do_global_dtors_aux>:
    1130:	80 3d 19 3f 00 00 00 	cmpb   $0x0,0x3f19(%rip)        # 5050 <__TMC_END__>
    1137:	75 2f                	jne    1168 <__do_global_dtors_aux+0x38>
    1139:	55                   	push   %rbp
    113a:	48 83 3d b6 3e 00 00 	cmpq   $0x0,0x3eb6(%rip)        # 4ff8 <__cxa_finalize@GLIBC_2.2.5>
    1141:	00 
    1142:	48 89 e5             	mov    %rsp,%rbp
    1145:	74 0c                	je     1153 <__do_global_dtors_aux+0x23>
    1147:	48 8b 3d fa 3e 00 00 	mov    0x3efa(%rip),%rdi        # 5048 <__dso_handle>
    114e:	e8 2d ff ff ff       	callq  1080 <__cxa_finalize@plt>
    1153:	e8 68 ff ff ff       	callq  10c0 <deregister_tm_clones>
    1158:	c6 05 f1 3e 00 00 01 	movb   $0x1,0x3ef1(%rip)        # 5050 <__TMC_END__>
    115f:	5d                   	pop    %rbp
    1160:	c3                   	retq   
    1161:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1168:	c3                   	retq   
    1169:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001170 <frame_dummy>:
    1170:	e9 7b ff ff ff       	jmpq   10f0 <register_tm_clones>

0000000000001175 <main>:
    1175:	55                   	push   %rbp
    1176:	48 89 e5             	mov    %rsp,%rbp
    1179:	48 83 ec 10          	sub    $0x10,%rsp
    117d:	be 0a 00 00 00       	mov    $0xa,%esi
    1182:	48 8d 3d cf 3e 00 00 	lea    0x3ecf(%rip),%rdi        # 5058 <buffer>
    1189:	e8 eb 01 00 00       	callq  1379 <clear_all>
    118e:	48 8d 05 cb 3e 00 00 	lea    0x3ecb(%rip),%rax        # 5060 <buffer+0x8>
    1195:	ba 02 00 00 00       	mov    $0x2,%edx
    119a:	be 2b 00 00 00       	mov    $0x2b,%esi
    119f:	48 89 c7             	mov    %rax,%rdi
    11a2:	e8 91 01 00 00       	callq  1338 <set_all>
    11a7:	ba 61 00 00 00       	mov    $0x61,%edx
    11ac:	be 00 00 00 00       	mov    $0x0,%esi
    11b1:	48 8d 3d a0 3e 00 00 	lea    0x3ea0(%rip),%rdi        # 5058 <buffer>
    11b8:	e8 16 01 00 00       	callq  12d3 <set_value>
    11bd:	be 09 00 00 00       	mov    $0x9,%esi
    11c2:	48 8d 3d 8f 3e 00 00 	lea    0x3e8f(%rip),%rdi        # 5058 <buffer>
    11c9:	e8 50 01 00 00       	callq  131e <get_value>
    11ce:	88 45 fb             	mov    %al,-0x5(%rbp)
    11d1:	0f b6 45 fb          	movzbl -0x5(%rbp),%eax
    11d5:	83 c0 27             	add    $0x27,%eax
    11d8:	0f be c0             	movsbl %al,%eax
    11db:	89 c2                	mov    %eax,%edx
    11dd:	be 09 00 00 00       	mov    $0x9,%esi
    11e2:	48 8d 3d 6f 3e 00 00 	lea    0x3e6f(%rip),%rdi        # 5058 <buffer>
    11e9:	e8 e5 00 00 00       	callq  12d3 <set_value>
    11ee:	ba 37 00 00 00       	mov    $0x37,%edx
    11f3:	be 03 00 00 00       	mov    $0x3,%esi
    11f8:	48 8d 3d 59 3e 00 00 	lea    0x3e59(%rip),%rdi        # 5058 <buffer>
    11ff:	e8 cf 00 00 00       	callq  12d3 <set_value>
    1204:	ba 58 00 00 00       	mov    $0x58,%edx
    1209:	be 01 00 00 00       	mov    $0x1,%esi
    120e:	48 8d 3d 43 3e 00 00 	lea    0x3e43(%rip),%rdi        # 5058 <buffer>
    1215:	e8 b9 00 00 00       	callq  12d3 <set_value>
    121a:	ba 32 00 00 00       	mov    $0x32,%edx
    121f:	be 04 00 00 00       	mov    $0x4,%esi
    1224:	48 8d 3d 2d 3e 00 00 	lea    0x3e2d(%rip),%rdi        # 5058 <buffer>
    122b:	e8 a3 00 00 00       	callq  12d3 <set_value>
    1230:	be 01 00 00 00       	mov    $0x1,%esi
    1235:	48 8d 3d 1c 3e 00 00 	lea    0x3e1c(%rip),%rdi        # 5058 <buffer>
    123c:	e8 dd 00 00 00       	callq  131e <get_value>
    1241:	88 45 fb             	mov    %al,-0x5(%rbp)
    1244:	ba 79 00 00 00       	mov    $0x79,%edx
    1249:	be 02 00 00 00       	mov    $0x2,%esi
    124e:	48 8d 3d 03 3e 00 00 	lea    0x3e03(%rip),%rdi        # 5058 <buffer>
    1255:	e8 79 00 00 00       	callq  12d3 <set_value>
    125a:	0f b6 45 fb          	movzbl -0x5(%rbp),%eax
    125e:	83 e8 0c             	sub    $0xc,%eax
    1261:	0f be c0             	movsbl %al,%eax
    1264:	89 c2                	mov    %eax,%edx
    1266:	be 07 00 00 00       	mov    $0x7,%esi
    126b:	48 8d 3d e6 3d 00 00 	lea    0x3de6(%rip),%rdi        # 5058 <buffer>
    1272:	e8 5c 00 00 00       	callq  12d3 <set_value>
    1277:	ba 5f 00 00 00       	mov    $0x5f,%edx
    127c:	be 05 00 00 00       	mov    $0x5,%esi
    1281:	48 8d 3d d0 3d 00 00 	lea    0x3dd0(%rip),%rdi        # 5058 <buffer>
    1288:	e8 46 00 00 00       	callq  12d3 <set_value>
    128d:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
    1294:	eb 1c                	jmp    12b2 <main+0x13d>
    1296:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1299:	48 8d 15 b8 3d 00 00 	lea    0x3db8(%rip),%rdx        # 5058 <buffer>
    12a0:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
    12a4:	0f be c0             	movsbl %al,%eax
    12a7:	89 c7                	mov    %eax,%edi
    12a9:	e8 92 fd ff ff       	callq  1040 <putchar@plt>
    12ae:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
    12b2:	83 7d fc 09          	cmpl   $0x9,-0x4(%rbp)
    12b6:	76 de                	jbe    1296 <main+0x121>
    12b8:	bf 0a 00 00 00       	mov    $0xa,%edi
    12bd:	e8 7e fd ff ff       	callq  1040 <putchar@plt>
    12c2:	b8 00 00 00 00       	mov    $0x0,%eax
    12c7:	e8 5c 0c 00 00       	callq  1f28 <course1>
    12cc:	b8 00 00 00 00       	mov    $0x0,%eax
    12d1:	c9                   	leaveq 
    12d2:	c3                   	retq   

00000000000012d3 <set_value>:
    12d3:	55                   	push   %rbp
    12d4:	48 89 e5             	mov    %rsp,%rbp
    12d7:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    12db:	89 75 f4             	mov    %esi,-0xc(%rbp)
    12de:	89 d0                	mov    %edx,%eax
    12e0:	88 45 f0             	mov    %al,-0x10(%rbp)
    12e3:	8b 55 f4             	mov    -0xc(%rbp),%edx
    12e6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    12ea:	48 01 c2             	add    %rax,%rdx
    12ed:	0f b6 45 f0          	movzbl -0x10(%rbp),%eax
    12f1:	88 02                	mov    %al,(%rdx)
    12f3:	90                   	nop
    12f4:	5d                   	pop    %rbp
    12f5:	c3                   	retq   

00000000000012f6 <clear_value>:
    12f6:	55                   	push   %rbp
    12f7:	48 89 e5             	mov    %rsp,%rbp
    12fa:	48 83 ec 10          	sub    $0x10,%rsp
    12fe:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    1302:	89 75 f4             	mov    %esi,-0xc(%rbp)
    1305:	8b 4d f4             	mov    -0xc(%rbp),%ecx
    1308:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    130c:	ba 00 00 00 00       	mov    $0x0,%edx
    1311:	89 ce                	mov    %ecx,%esi
    1313:	48 89 c7             	mov    %rax,%rdi
    1316:	e8 b8 ff ff ff       	callq  12d3 <set_value>
    131b:	90                   	nop
    131c:	c9                   	leaveq 
    131d:	c3                   	retq   

000000000000131e <get_value>:
    131e:	55                   	push   %rbp
    131f:	48 89 e5             	mov    %rsp,%rbp
    1322:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    1326:	89 75 f4             	mov    %esi,-0xc(%rbp)
    1329:	8b 55 f4             	mov    -0xc(%rbp),%edx
    132c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1330:	48 01 d0             	add    %rdx,%rax
    1333:	0f b6 00             	movzbl (%rax),%eax
    1336:	5d                   	pop    %rbp
    1337:	c3                   	retq   

0000000000001338 <set_all>:
    1338:	55                   	push   %rbp
    1339:	48 89 e5             	mov    %rsp,%rbp
    133c:	48 83 ec 20          	sub    $0x20,%rsp
    1340:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    1344:	89 f0                	mov    %esi,%eax
    1346:	89 55 e0             	mov    %edx,-0x20(%rbp)
    1349:	88 45 e4             	mov    %al,-0x1c(%rbp)
    134c:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
    1353:	eb 19                	jmp    136e <set_all+0x36>
    1355:	0f be 55 e4          	movsbl -0x1c(%rbp),%edx
    1359:	8b 4d fc             	mov    -0x4(%rbp),%ecx
    135c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1360:	89 ce                	mov    %ecx,%esi
    1362:	48 89 c7             	mov    %rax,%rdi
    1365:	e8 69 ff ff ff       	callq  12d3 <set_value>
    136a:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
    136e:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1371:	3b 45 e0             	cmp    -0x20(%rbp),%eax
    1374:	72 df                	jb     1355 <set_all+0x1d>
    1376:	90                   	nop
    1377:	c9                   	leaveq 
    1378:	c3                   	retq   

0000000000001379 <clear_all>:
    1379:	55                   	push   %rbp
    137a:	48 89 e5             	mov    %rsp,%rbp
    137d:	48 83 ec 10          	sub    $0x10,%rsp
    1381:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    1385:	89 75 f4             	mov    %esi,-0xc(%rbp)
    1388:	8b 55 f4             	mov    -0xc(%rbp),%edx
    138b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    138f:	be 00 00 00 00       	mov    $0x0,%esi
    1394:	48 89 c7             	mov    %rax,%rdi
    1397:	e8 9c ff ff ff       	callq  1338 <set_all>
    139c:	90                   	nop
    139d:	c9                   	leaveq 
    139e:	c3                   	retq   

000000000000139f <my_memmove>:
    139f:	55                   	push   %rbp
    13a0:	48 89 e5             	mov    %rsp,%rbp
    13a3:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    13a7:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    13ab:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    13af:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    13b3:	48 3b 45 e0          	cmp    -0x20(%rbp),%rax
    13b7:	77 4e                	ja     1407 <my_memmove+0x68>
    13b9:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    13bd:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    13c1:	48 01 d0             	add    %rdx,%rax
    13c4:	48 39 45 e0          	cmp    %rax,-0x20(%rbp)
    13c8:	73 3d                	jae    1407 <my_memmove+0x68>
    13ca:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    13ce:	83 e8 01             	sub    $0x1,%eax
    13d1:	88 45 ff             	mov    %al,-0x1(%rbp)
    13d4:	eb 25                	jmp    13fb <my_memmove+0x5c>
    13d6:	0f b6 55 ff          	movzbl -0x1(%rbp),%edx
    13da:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    13de:	48 01 d0             	add    %rdx,%rax
    13e1:	0f b6 4d ff          	movzbl -0x1(%rbp),%ecx
    13e5:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    13e9:	48 01 ca             	add    %rcx,%rdx
    13ec:	0f b6 00             	movzbl (%rax),%eax
    13ef:	88 02                	mov    %al,(%rdx)
    13f1:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
    13f5:	83 e8 01             	sub    $0x1,%eax
    13f8:	88 45 ff             	mov    %al,-0x1(%rbp)
    13fb:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
    13ff:	48 39 45 d8          	cmp    %rax,-0x28(%rbp)
    1403:	77 d1                	ja     13d6 <my_memmove+0x37>
    1405:	eb 34                	jmp    143b <my_memmove+0x9c>
    1407:	48 c7 45 f0 00 00 00 	movq   $0x0,-0x10(%rbp)
    140e:	00 
    140f:	eb 20                	jmp    1431 <my_memmove+0x92>
    1411:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    1415:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1419:	48 01 d0             	add    %rdx,%rax
    141c:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    1420:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    1424:	48 01 ca             	add    %rcx,%rdx
    1427:	0f b6 00             	movzbl (%rax),%eax
    142a:	88 02                	mov    %al,(%rdx)
    142c:	48 83 45 f0 01       	addq   $0x1,-0x10(%rbp)
    1431:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1435:	48 3b 45 d8          	cmp    -0x28(%rbp),%rax
    1439:	72 d6                	jb     1411 <my_memmove+0x72>
    143b:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    143f:	5d                   	pop    %rbp
    1440:	c3                   	retq   

0000000000001441 <my_memcopy>:
    1441:	55                   	push   %rbp
    1442:	48 89 e5             	mov    %rsp,%rbp
    1445:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    1449:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    144d:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    1451:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
    1458:	00 
    1459:	eb 20                	jmp    147b <my_memcopy+0x3a>
    145b:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    145f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1463:	48 01 d0             	add    %rdx,%rax
    1466:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    146a:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    146e:	48 01 ca             	add    %rcx,%rdx
    1471:	0f b6 00             	movzbl (%rax),%eax
    1474:	88 02                	mov    %al,(%rdx)
    1476:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
    147b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    147f:	48 3b 45 d8          	cmp    -0x28(%rbp),%rax
    1483:	72 d6                	jb     145b <my_memcopy+0x1a>
    1485:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1489:	5d                   	pop    %rbp
    148a:	c3                   	retq   

000000000000148b <my_memset>:
    148b:	55                   	push   %rbp
    148c:	48 89 e5             	mov    %rsp,%rbp
    148f:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    1493:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    1497:	89 d0                	mov    %edx,%eax
    1499:	88 45 dc             	mov    %al,-0x24(%rbp)
    149c:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
    14a3:	00 
    14a4:	eb 16                	jmp    14bc <my_memset+0x31>
    14a6:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    14aa:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    14ae:	48 01 c2             	add    %rax,%rdx
    14b1:	0f b6 45 dc          	movzbl -0x24(%rbp),%eax
    14b5:	88 02                	mov    %al,(%rdx)
    14b7:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
    14bc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    14c0:	48 3b 45 e0          	cmp    -0x20(%rbp),%rax
    14c4:	72 e0                	jb     14a6 <my_memset+0x1b>
    14c6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    14ca:	5d                   	pop    %rbp
    14cb:	c3                   	retq   

00000000000014cc <my_memzero>:
    14cc:	55                   	push   %rbp
    14cd:	48 89 e5             	mov    %rsp,%rbp
    14d0:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    14d4:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    14d8:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
    14df:	00 
    14e0:	eb 13                	jmp    14f5 <my_memzero+0x29>
    14e2:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    14e6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    14ea:	48 01 d0             	add    %rdx,%rax
    14ed:	c6 00 00             	movb   $0x0,(%rax)
    14f0:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
    14f5:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    14f9:	48 3b 45 e0          	cmp    -0x20(%rbp),%rax
    14fd:	72 e3                	jb     14e2 <my_memzero+0x16>
    14ff:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1503:	5d                   	pop    %rbp
    1504:	c3                   	retq   

0000000000001505 <my_reverse>:
    1505:	55                   	push   %rbp
    1506:	48 89 e5             	mov    %rsp,%rbp
    1509:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    150d:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    1511:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
    1518:	00 
    1519:	eb 52                	jmp    156d <my_reverse+0x68>
    151b:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    151f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1523:	48 01 d0             	add    %rdx,%rax
    1526:	0f b6 00             	movzbl (%rax),%eax
    1529:	88 45 f7             	mov    %al,-0x9(%rbp)
    152c:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1530:	48 2b 45 f8          	sub    -0x8(%rbp),%rax
    1534:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
    1538:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    153c:	48 01 d0             	add    %rdx,%rax
    153f:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    1543:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    1547:	48 01 ca             	add    %rcx,%rdx
    154a:	0f b6 00             	movzbl (%rax),%eax
    154d:	88 02                	mov    %al,(%rdx)
    154f:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1553:	48 2b 45 f8          	sub    -0x8(%rbp),%rax
    1557:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
    155b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    155f:	48 01 c2             	add    %rax,%rdx
    1562:	0f b6 45 f7          	movzbl -0x9(%rbp),%eax
    1566:	88 02                	mov    %al,(%rdx)
    1568:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
    156d:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1571:	48 d1 e8             	shr    %rax
    1574:	48 39 45 f8          	cmp    %rax,-0x8(%rbp)
    1578:	72 a1                	jb     151b <my_reverse+0x16>
    157a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    157e:	5d                   	pop    %rbp
    157f:	c3                   	retq   

0000000000001580 <reserve_words>:
    1580:	55                   	push   %rbp
    1581:	48 89 e5             	mov    %rsp,%rbp
    1584:	48 83 ec 20          	sub    $0x20,%rsp
    1588:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    158c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1590:	48 01 c0             	add    %rax,%rax
    1593:	48 89 c7             	mov    %rax,%rdi
    1596:	e8 d5 fa ff ff       	callq  1070 <malloc@plt>
    159b:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    159f:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    15a4:	74 06                	je     15ac <reserve_words+0x2c>
    15a6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    15aa:	eb 05                	jmp    15b1 <reserve_words+0x31>
    15ac:	b8 00 00 00 00       	mov    $0x0,%eax
    15b1:	c9                   	leaveq 
    15b2:	c3                   	retq   

00000000000015b3 <free_words>:
    15b3:	55                   	push   %rbp
    15b4:	48 89 e5             	mov    %rsp,%rbp
    15b7:	48 83 ec 10          	sub    $0x10,%rsp
    15bb:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    15bf:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    15c3:	48 89 c7             	mov    %rax,%rdi
    15c6:	e8 65 fa ff ff       	callq  1030 <free@plt>
    15cb:	90                   	nop
    15cc:	c9                   	leaveq 
    15cd:	c3                   	retq   

00000000000015ce <my_itoa>:
    15ce:	55                   	push   %rbp
    15cf:	48 89 e5             	mov    %rsp,%rbp
    15d2:	89 7d dc             	mov    %edi,-0x24(%rbp)
    15d5:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    15d9:	89 55 d8             	mov    %edx,-0x28(%rbp)
    15dc:	c6 45 ff 00          	movb   $0x0,-0x1(%rbp)
    15e0:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
    15e7:	83 7d dc 00          	cmpl   $0x0,-0x24(%rbp)
    15eb:	75 1c                	jne    1609 <my_itoa+0x3b>
    15ed:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    15f1:	c6 00 30             	movb   $0x30,(%rax)
    15f4:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    15f8:	48 83 c0 01          	add    $0x1,%rax
    15fc:	c6 00 00             	movb   $0x0,(%rax)
    15ff:	b8 01 00 00 00       	mov    $0x1,%eax
    1604:	e9 f6 00 00 00       	jmpq   16ff <my_itoa+0x131>
    1609:	83 7d dc 00          	cmpl   $0x0,-0x24(%rbp)
    160d:	79 56                	jns    1665 <my_itoa+0x97>
    160f:	c6 45 ff 01          	movb   $0x1,-0x1(%rbp)
    1613:	f7 5d dc             	negl   -0x24(%rbp)
    1616:	eb 4d                	jmp    1665 <my_itoa+0x97>
    1618:	8b 45 dc             	mov    -0x24(%rbp),%eax
    161b:	ba 00 00 00 00       	mov    $0x0,%edx
    1620:	f7 75 d8             	divl   -0x28(%rbp)
    1623:	89 d0                	mov    %edx,%eax
    1625:	89 45 ec             	mov    %eax,-0x14(%rbp)
    1628:	83 7d ec 09          	cmpl   $0x9,-0x14(%rbp)
    162c:	7e 10                	jle    163e <my_itoa+0x70>
    162e:	8b 45 dc             	mov    -0x24(%rbp),%eax
    1631:	ba 00 00 00 00       	mov    $0x0,%edx
    1636:	f7 75 d8             	divl   -0x28(%rbp)
    1639:	83 c0 61             	add    $0x61,%eax
    163c:	eb 06                	jmp    1644 <my_itoa+0x76>
    163e:	8b 45 ec             	mov    -0x14(%rbp),%eax
    1641:	83 c0 30             	add    $0x30,%eax
    1644:	8b 55 f8             	mov    -0x8(%rbp),%edx
    1647:	48 63 ca             	movslq %edx,%rcx
    164a:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    164e:	48 01 ca             	add    %rcx,%rdx
    1651:	88 02                	mov    %al,(%rdx)
    1653:	8b 45 dc             	mov    -0x24(%rbp),%eax
    1656:	ba 00 00 00 00       	mov    $0x0,%edx
    165b:	f7 75 d8             	divl   -0x28(%rbp)
    165e:	89 45 dc             	mov    %eax,-0x24(%rbp)
    1661:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
    1665:	83 7d dc 00          	cmpl   $0x0,-0x24(%rbp)
    1669:	75 ad                	jne    1618 <my_itoa+0x4a>
    166b:	80 7d ff 00          	cmpb   $0x0,-0x1(%rbp)
    166f:	74 14                	je     1685 <my_itoa+0xb7>
    1671:	8b 45 f8             	mov    -0x8(%rbp),%eax
    1674:	48 63 d0             	movslq %eax,%rdx
    1677:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    167b:	48 01 d0             	add    %rdx,%rax
    167e:	c6 00 2d             	movb   $0x2d,(%rax)
    1681:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
    1685:	8b 45 f8             	mov    -0x8(%rbp),%eax
    1688:	48 63 d0             	movslq %eax,%rdx
    168b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    168f:	48 01 d0             	add    %rdx,%rax
    1692:	c6 00 00             	movb   $0x0,(%rax)
    1695:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
    169c:	8b 45 f8             	mov    -0x8(%rbp),%eax
    169f:	83 e8 01             	sub    $0x1,%eax
    16a2:	89 45 f0             	mov    %eax,-0x10(%rbp)
    16a5:	eb 4d                	jmp    16f4 <my_itoa+0x126>
    16a7:	8b 45 f4             	mov    -0xc(%rbp),%eax
    16aa:	48 63 d0             	movslq %eax,%rdx
    16ad:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    16b1:	48 01 d0             	add    %rdx,%rax
    16b4:	0f b6 00             	movzbl (%rax),%eax
    16b7:	88 45 eb             	mov    %al,-0x15(%rbp)
    16ba:	8b 45 f0             	mov    -0x10(%rbp),%eax
    16bd:	48 63 d0             	movslq %eax,%rdx
    16c0:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    16c4:	48 01 d0             	add    %rdx,%rax
    16c7:	8b 55 f4             	mov    -0xc(%rbp),%edx
    16ca:	48 63 ca             	movslq %edx,%rcx
    16cd:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    16d1:	48 01 ca             	add    %rcx,%rdx
    16d4:	0f b6 00             	movzbl (%rax),%eax
    16d7:	88 02                	mov    %al,(%rdx)
    16d9:	8b 45 f0             	mov    -0x10(%rbp),%eax
    16dc:	48 63 d0             	movslq %eax,%rdx
    16df:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    16e3:	48 01 c2             	add    %rax,%rdx
    16e6:	0f b6 45 eb          	movzbl -0x15(%rbp),%eax
    16ea:	88 02                	mov    %al,(%rdx)
    16ec:	83 45 f4 01          	addl   $0x1,-0xc(%rbp)
    16f0:	83 6d f0 01          	subl   $0x1,-0x10(%rbp)
    16f4:	8b 45 f4             	mov    -0xc(%rbp),%eax
    16f7:	3b 45 f0             	cmp    -0x10(%rbp),%eax
    16fa:	7c ab                	jl     16a7 <my_itoa+0xd9>
    16fc:	8b 45 f8             	mov    -0x8(%rbp),%eax
    16ff:	5d                   	pop    %rbp
    1700:	c3                   	retq   

0000000000001701 <my_atoi>:
    1701:	55                   	push   %rbp
    1702:	48 89 e5             	mov    %rsp,%rbp
    1705:	53                   	push   %rbx
    1706:	48 83 ec 28          	sub    $0x28,%rsp
    170a:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    170e:	89 f0                	mov    %esi,%eax
    1710:	89 55 d0             	mov    %edx,-0x30(%rbp)
    1713:	88 45 d4             	mov    %al,-0x2c(%rbp)
    1716:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
    171d:	c7 45 e8 01 00 00 00 	movl   $0x1,-0x18(%rbp)
    1724:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
    172b:	80 7d d4 00          	cmpb   $0x0,-0x2c(%rbp)
    172f:	75 07                	jne    1738 <my_atoi+0x37>
    1731:	b8 00 00 00 00       	mov    $0x0,%eax
    1736:	eb 5f                	jmp    1797 <my_atoi+0x96>
    1738:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    173c:	0f b6 00             	movzbl (%rax),%eax
    173f:	3c 2d                	cmp    $0x2d,%al
    1741:	75 39                	jne    177c <my_atoi+0x7b>
    1743:	c7 45 e8 ff ff ff ff 	movl   $0xffffffff,-0x18(%rbp)
    174a:	83 45 e4 01          	addl   $0x1,-0x1c(%rbp)
    174e:	eb 2c                	jmp    177c <my_atoi+0x7b>
    1750:	8b 45 ec             	mov    -0x14(%rbp),%eax
    1753:	0f af 45 d0          	imul   -0x30(%rbp),%eax
    1757:	89 c3                	mov    %eax,%ebx
    1759:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    175c:	48 63 d0             	movslq %eax,%rdx
    175f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1763:	48 01 d0             	add    %rdx,%rax
    1766:	0f b6 00             	movzbl (%rax),%eax
    1769:	0f be c0             	movsbl %al,%eax
    176c:	89 c7                	mov    %eax,%edi
    176e:	e8 2b 00 00 00       	callq  179e <val>
    1773:	01 d8                	add    %ebx,%eax
    1775:	89 45 ec             	mov    %eax,-0x14(%rbp)
    1778:	83 45 e4 01          	addl   $0x1,-0x1c(%rbp)
    177c:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    177f:	48 63 d0             	movslq %eax,%rdx
    1782:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1786:	48 01 d0             	add    %rdx,%rax
    1789:	0f b6 00             	movzbl (%rax),%eax
    178c:	84 c0                	test   %al,%al
    178e:	75 c0                	jne    1750 <my_atoi+0x4f>
    1790:	8b 45 e8             	mov    -0x18(%rbp),%eax
    1793:	0f af 45 ec          	imul   -0x14(%rbp),%eax
    1797:	48 83 c4 28          	add    $0x28,%rsp
    179b:	5b                   	pop    %rbx
    179c:	5d                   	pop    %rbp
    179d:	c3                   	retq   

000000000000179e <val>:
    179e:	55                   	push   %rbp
    179f:	48 89 e5             	mov    %rsp,%rbp
    17a2:	89 f8                	mov    %edi,%eax
    17a4:	88 45 fc             	mov    %al,-0x4(%rbp)
    17a7:	80 7d fc 2f          	cmpb   $0x2f,-0x4(%rbp)
    17ab:	7e 0f                	jle    17bc <val+0x1e>
    17ad:	80 7d fc 39          	cmpb   $0x39,-0x4(%rbp)
    17b1:	7f 09                	jg     17bc <val+0x1e>
    17b3:	0f be 45 fc          	movsbl -0x4(%rbp),%eax
    17b7:	83 e8 30             	sub    $0x30,%eax
    17ba:	eb 07                	jmp    17c3 <val+0x25>
    17bc:	0f be 45 fc          	movsbl -0x4(%rbp),%eax
    17c0:	83 e8 37             	sub    $0x37,%eax
    17c3:	5d                   	pop    %rbp
    17c4:	c3                   	retq   

00000000000017c5 <test_data1>:
    17c5:	55                   	push   %rbp
    17c6:	48 89 e5             	mov    %rsp,%rbp
    17c9:	48 83 ec 20          	sub    $0x20,%rsp
    17cd:	c7 45 fc 00 f0 ff ff 	movl   $0xfffff000,-0x4(%rbp)
    17d4:	48 8d 3d 2d 18 00 00 	lea    0x182d(%rip),%rdi        # 3008 <_IO_stdin_used+0x8>
    17db:	e8 70 f8 ff ff       	callq  1050 <puts@plt>
    17e0:	bf 0a 00 00 00       	mov    $0xa,%edi
    17e5:	e8 96 fd ff ff       	callq  1580 <reserve_words>
    17ea:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    17ee:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
    17f3:	75 07                	jne    17fc <test_data1+0x37>
    17f5:	b8 01 00 00 00       	mov    $0x1,%eax
    17fa:	eb 58                	jmp    1854 <test_data1+0x8f>
    17fc:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    1800:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1803:	ba 10 00 00 00       	mov    $0x10,%edx
    1808:	48 89 ce             	mov    %rcx,%rsi
    180b:	89 c7                	mov    %eax,%edi
    180d:	e8 bc fd ff ff       	callq  15ce <my_itoa>
    1812:	0f b6 c0             	movzbl %al,%eax
    1815:	89 45 ec             	mov    %eax,-0x14(%rbp)
    1818:	8b 45 ec             	mov    -0x14(%rbp),%eax
    181b:	0f b6 c8             	movzbl %al,%ecx
    181e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1822:	ba 10 00 00 00       	mov    $0x10,%edx
    1827:	89 ce                	mov    %ecx,%esi
    1829:	48 89 c7             	mov    %rax,%rdi
    182c:	e8 d0 fe ff ff       	callq  1701 <my_atoi>
    1831:	89 45 e8             	mov    %eax,-0x18(%rbp)
    1834:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1838:	48 89 c7             	mov    %rax,%rdi
    183b:	e8 73 fd ff ff       	callq  15b3 <free_words>
    1840:	8b 45 e8             	mov    -0x18(%rbp),%eax
    1843:	3b 45 fc             	cmp    -0x4(%rbp),%eax
    1846:	74 07                	je     184f <test_data1+0x8a>
    1848:	b8 01 00 00 00       	mov    $0x1,%eax
    184d:	eb 05                	jmp    1854 <test_data1+0x8f>
    184f:	b8 00 00 00 00       	mov    $0x0,%eax
    1854:	c9                   	leaveq 
    1855:	c3                   	retq   

0000000000001856 <test_data2>:
    1856:	55                   	push   %rbp
    1857:	48 89 e5             	mov    %rsp,%rbp
    185a:	48 83 ec 20          	sub    $0x20,%rsp
    185e:	c7 45 fc 40 e2 01 00 	movl   $0x1e240,-0x4(%rbp)
    1865:	48 8d 3d ab 17 00 00 	lea    0x17ab(%rip),%rdi        # 3017 <_IO_stdin_used+0x17>
    186c:	e8 df f7 ff ff       	callq  1050 <puts@plt>
    1871:	bf 0a 00 00 00       	mov    $0xa,%edi
    1876:	e8 05 fd ff ff       	callq  1580 <reserve_words>
    187b:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    187f:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
    1884:	75 07                	jne    188d <test_data2+0x37>
    1886:	b8 01 00 00 00       	mov    $0x1,%eax
    188b:	eb 58                	jmp    18e5 <test_data2+0x8f>
    188d:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    1891:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1894:	ba 0a 00 00 00       	mov    $0xa,%edx
    1899:	48 89 ce             	mov    %rcx,%rsi
    189c:	89 c7                	mov    %eax,%edi
    189e:	e8 2b fd ff ff       	callq  15ce <my_itoa>
    18a3:	0f b6 c0             	movzbl %al,%eax
    18a6:	89 45 ec             	mov    %eax,-0x14(%rbp)
    18a9:	8b 45 ec             	mov    -0x14(%rbp),%eax
    18ac:	0f b6 c8             	movzbl %al,%ecx
    18af:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    18b3:	ba 0a 00 00 00       	mov    $0xa,%edx
    18b8:	89 ce                	mov    %ecx,%esi
    18ba:	48 89 c7             	mov    %rax,%rdi
    18bd:	e8 3f fe ff ff       	callq  1701 <my_atoi>
    18c2:	89 45 e8             	mov    %eax,-0x18(%rbp)
    18c5:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    18c9:	48 89 c7             	mov    %rax,%rdi
    18cc:	e8 e2 fc ff ff       	callq  15b3 <free_words>
    18d1:	8b 45 e8             	mov    -0x18(%rbp),%eax
    18d4:	3b 45 fc             	cmp    -0x4(%rbp),%eax
    18d7:	74 07                	je     18e0 <test_data2+0x8a>
    18d9:	b8 01 00 00 00       	mov    $0x1,%eax
    18de:	eb 05                	jmp    18e5 <test_data2+0x8f>
    18e0:	b8 00 00 00 00       	mov    $0x0,%eax
    18e5:	c9                   	leaveq 
    18e6:	c3                   	retq   

00000000000018e7 <test_memmove1>:
    18e7:	55                   	push   %rbp
    18e8:	48 89 e5             	mov    %rsp,%rbp
    18eb:	48 83 ec 20          	sub    $0x20,%rsp
    18ef:	c6 45 fe 00          	movb   $0x0,-0x2(%rbp)
    18f3:	48 8d 3d 2b 17 00 00 	lea    0x172b(%rip),%rdi        # 3025 <_IO_stdin_used+0x25>
    18fa:	e8 51 f7 ff ff       	callq  1050 <puts@plt>
    18ff:	bf 08 00 00 00       	mov    $0x8,%edi
    1904:	e8 77 fc ff ff       	callq  1580 <reserve_words>
    1909:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    190d:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
    1912:	75 0a                	jne    191e <test_memmove1+0x37>
    1914:	b8 01 00 00 00       	mov    $0x1,%eax
    1919:	e9 b6 00 00 00       	jmpq   19d4 <test_memmove1+0xed>
    191e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1922:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    1926:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    192a:	48 83 c0 10          	add    $0x10,%rax
    192e:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    1932:	c6 45 ff 00          	movb   $0x0,-0x1(%rbp)
    1936:	eb 1b                	jmp    1953 <test_memmove1+0x6c>
    1938:	0f b6 55 ff          	movzbl -0x1(%rbp),%edx
    193c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1940:	48 01 c2             	add    %rax,%rdx
    1943:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
    1947:	88 02                	mov    %al,(%rdx)
    1949:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
    194d:	83 c0 01             	add    $0x1,%eax
    1950:	88 45 ff             	mov    %al,-0x1(%rbp)
    1953:	80 7d ff 1f          	cmpb   $0x1f,-0x1(%rbp)
    1957:	76 df                	jbe    1938 <test_memmove1+0x51>
    1959:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    195d:	be 20 00 00 00       	mov    $0x20,%esi
    1962:	48 89 c7             	mov    %rax,%rdi
    1965:	e8 62 08 00 00       	callq  21cc <print_array>
    196a:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    196e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1972:	ba 10 00 00 00       	mov    $0x10,%edx
    1977:	48 89 ce             	mov    %rcx,%rsi
    197a:	48 89 c7             	mov    %rax,%rdi
    197d:	e8 1d fa ff ff       	callq  139f <my_memmove>
    1982:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1986:	be 20 00 00 00       	mov    $0x20,%esi
    198b:	48 89 c7             	mov    %rax,%rdi
    198e:	e8 39 08 00 00       	callq  21cc <print_array>
    1993:	c6 45 ff 00          	movb   $0x0,-0x1(%rbp)
    1997:	eb 25                	jmp    19be <test_memmove1+0xd7>
    1999:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
    199d:	48 8d 50 10          	lea    0x10(%rax),%rdx
    19a1:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    19a5:	48 01 d0             	add    %rdx,%rax
    19a8:	0f b6 00             	movzbl (%rax),%eax
    19ab:	38 45 ff             	cmp    %al,-0x1(%rbp)
    19ae:	74 04                	je     19b4 <test_memmove1+0xcd>
    19b0:	c6 45 fe 01          	movb   $0x1,-0x2(%rbp)
    19b4:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
    19b8:	83 c0 01             	add    $0x1,%eax
    19bb:	88 45 ff             	mov    %al,-0x1(%rbp)
    19be:	80 7d ff 0f          	cmpb   $0xf,-0x1(%rbp)
    19c2:	76 d5                	jbe    1999 <test_memmove1+0xb2>
    19c4:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    19c8:	48 89 c7             	mov    %rax,%rdi
    19cb:	e8 e3 fb ff ff       	callq  15b3 <free_words>
    19d0:	0f b6 45 fe          	movzbl -0x2(%rbp),%eax
    19d4:	c9                   	leaveq 
    19d5:	c3                   	retq   

00000000000019d6 <test_memmove2>:
    19d6:	55                   	push   %rbp
    19d7:	48 89 e5             	mov    %rsp,%rbp
    19da:	48 83 ec 20          	sub    $0x20,%rsp
    19de:	c6 45 fe 00          	movb   $0x0,-0x2(%rbp)
    19e2:	48 8d 3d 5f 16 00 00 	lea    0x165f(%rip),%rdi        # 3048 <_IO_stdin_used+0x48>
    19e9:	e8 62 f6 ff ff       	callq  1050 <puts@plt>
    19ee:	bf 08 00 00 00       	mov    $0x8,%edi
    19f3:	e8 88 fb ff ff       	callq  1580 <reserve_words>
    19f8:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    19fc:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
    1a01:	75 0a                	jne    1a0d <test_memmove2+0x37>
    1a03:	b8 01 00 00 00       	mov    $0x1,%eax
    1a08:	e9 b6 00 00 00       	jmpq   1ac3 <test_memmove2+0xed>
    1a0d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1a11:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    1a15:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1a19:	48 83 c0 08          	add    $0x8,%rax
    1a1d:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    1a21:	c6 45 ff 00          	movb   $0x0,-0x1(%rbp)
    1a25:	eb 1b                	jmp    1a42 <test_memmove2+0x6c>
    1a27:	0f b6 55 ff          	movzbl -0x1(%rbp),%edx
    1a2b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1a2f:	48 01 c2             	add    %rax,%rdx
    1a32:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
    1a36:	88 02                	mov    %al,(%rdx)
    1a38:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
    1a3c:	83 c0 01             	add    $0x1,%eax
    1a3f:	88 45 ff             	mov    %al,-0x1(%rbp)
    1a42:	80 7d ff 1f          	cmpb   $0x1f,-0x1(%rbp)
    1a46:	76 df                	jbe    1a27 <test_memmove2+0x51>
    1a48:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1a4c:	be 20 00 00 00       	mov    $0x20,%esi
    1a51:	48 89 c7             	mov    %rax,%rdi
    1a54:	e8 73 07 00 00       	callq  21cc <print_array>
    1a59:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    1a5d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1a61:	ba 10 00 00 00       	mov    $0x10,%edx
    1a66:	48 89 ce             	mov    %rcx,%rsi
    1a69:	48 89 c7             	mov    %rax,%rdi
    1a6c:	e8 2e f9 ff ff       	callq  139f <my_memmove>
    1a71:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1a75:	be 20 00 00 00       	mov    $0x20,%esi
    1a7a:	48 89 c7             	mov    %rax,%rdi
    1a7d:	e8 4a 07 00 00       	callq  21cc <print_array>
    1a82:	c6 45 ff 00          	movb   $0x0,-0x1(%rbp)
    1a86:	eb 25                	jmp    1aad <test_memmove2+0xd7>
    1a88:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
    1a8c:	48 8d 50 08          	lea    0x8(%rax),%rdx
    1a90:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1a94:	48 01 d0             	add    %rdx,%rax
    1a97:	0f b6 00             	movzbl (%rax),%eax
    1a9a:	38 45 ff             	cmp    %al,-0x1(%rbp)
    1a9d:	74 04                	je     1aa3 <test_memmove2+0xcd>
    1a9f:	c6 45 fe 01          	movb   $0x1,-0x2(%rbp)
    1aa3:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
    1aa7:	83 c0 01             	add    $0x1,%eax
    1aaa:	88 45 ff             	mov    %al,-0x1(%rbp)
    1aad:	80 7d ff 0f          	cmpb   $0xf,-0x1(%rbp)
    1ab1:	76 d5                	jbe    1a88 <test_memmove2+0xb2>
    1ab3:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1ab7:	48 89 c7             	mov    %rax,%rdi
    1aba:	e8 f4 fa ff ff       	callq  15b3 <free_words>
    1abf:	0f b6 45 fe          	movzbl -0x2(%rbp),%eax
    1ac3:	c9                   	leaveq 
    1ac4:	c3                   	retq   

0000000000001ac5 <test_memmove3>:
    1ac5:	55                   	push   %rbp
    1ac6:	48 89 e5             	mov    %rsp,%rbp
    1ac9:	48 83 ec 20          	sub    $0x20,%rsp
    1acd:	c6 45 fe 00          	movb   $0x0,-0x2(%rbp)
    1ad1:	48 8d 3d a8 15 00 00 	lea    0x15a8(%rip),%rdi        # 3080 <_IO_stdin_used+0x80>
    1ad8:	e8 73 f5 ff ff       	callq  1050 <puts@plt>
    1add:	bf 08 00 00 00       	mov    $0x8,%edi
    1ae2:	e8 99 fa ff ff       	callq  1580 <reserve_words>
    1ae7:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    1aeb:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
    1af0:	75 0a                	jne    1afc <test_memmove3+0x37>
    1af2:	b8 01 00 00 00       	mov    $0x1,%eax
    1af7:	e9 bb 00 00 00       	jmpq   1bb7 <test_memmove3+0xf2>
    1afc:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1b00:	48 83 c0 08          	add    $0x8,%rax
    1b04:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    1b08:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1b0c:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    1b10:	c6 45 ff 00          	movb   $0x0,-0x1(%rbp)
    1b14:	eb 1b                	jmp    1b31 <test_memmove3+0x6c>
    1b16:	0f b6 55 ff          	movzbl -0x1(%rbp),%edx
    1b1a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1b1e:	48 01 c2             	add    %rax,%rdx
    1b21:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
    1b25:	88 02                	mov    %al,(%rdx)
    1b27:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
    1b2b:	83 c0 01             	add    $0x1,%eax
    1b2e:	88 45 ff             	mov    %al,-0x1(%rbp)
    1b31:	80 7d ff 1f          	cmpb   $0x1f,-0x1(%rbp)
    1b35:	76 df                	jbe    1b16 <test_memmove3+0x51>
    1b37:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1b3b:	be 20 00 00 00       	mov    $0x20,%esi
    1b40:	48 89 c7             	mov    %rax,%rdi
    1b43:	e8 84 06 00 00       	callq  21cc <print_array>
    1b48:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    1b4c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1b50:	ba 10 00 00 00       	mov    $0x10,%edx
    1b55:	48 89 ce             	mov    %rcx,%rsi
    1b58:	48 89 c7             	mov    %rax,%rdi
    1b5b:	e8 3f f8 ff ff       	callq  139f <my_memmove>
    1b60:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1b64:	be 20 00 00 00       	mov    $0x20,%esi
    1b69:	48 89 c7             	mov    %rax,%rdi
    1b6c:	e8 5b 06 00 00       	callq  21cc <print_array>
    1b71:	c6 45 ff 00          	movb   $0x0,-0x1(%rbp)
    1b75:	eb 2a                	jmp    1ba1 <test_memmove3+0xdc>
    1b77:	0f b6 55 ff          	movzbl -0x1(%rbp),%edx
    1b7b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1b7f:	48 01 d0             	add    %rdx,%rax
    1b82:	0f b6 00             	movzbl (%rax),%eax
    1b85:	0f b6 c0             	movzbl %al,%eax
    1b88:	0f b6 55 ff          	movzbl -0x1(%rbp),%edx
    1b8c:	83 c2 08             	add    $0x8,%edx
    1b8f:	39 d0                	cmp    %edx,%eax
    1b91:	74 04                	je     1b97 <test_memmove3+0xd2>
    1b93:	c6 45 fe 01          	movb   $0x1,-0x2(%rbp)
    1b97:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
    1b9b:	83 c0 01             	add    $0x1,%eax
    1b9e:	88 45 ff             	mov    %al,-0x1(%rbp)
    1ba1:	80 7d ff 0f          	cmpb   $0xf,-0x1(%rbp)
    1ba5:	76 d0                	jbe    1b77 <test_memmove3+0xb2>
    1ba7:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1bab:	48 89 c7             	mov    %rax,%rdi
    1bae:	e8 00 fa ff ff       	callq  15b3 <free_words>
    1bb3:	0f b6 45 fe          	movzbl -0x2(%rbp),%eax
    1bb7:	c9                   	leaveq 
    1bb8:	c3                   	retq   

0000000000001bb9 <test_memcopy>:
    1bb9:	55                   	push   %rbp
    1bba:	48 89 e5             	mov    %rsp,%rbp
    1bbd:	48 83 ec 20          	sub    $0x20,%rsp
    1bc1:	c6 45 fe 00          	movb   $0x0,-0x2(%rbp)
    1bc5:	48 8d 3d ea 14 00 00 	lea    0x14ea(%rip),%rdi        # 30b6 <_IO_stdin_used+0xb6>
    1bcc:	e8 7f f4 ff ff       	callq  1050 <puts@plt>
    1bd1:	bf 08 00 00 00       	mov    $0x8,%edi
    1bd6:	e8 a5 f9 ff ff       	callq  1580 <reserve_words>
    1bdb:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    1bdf:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
    1be4:	75 0a                	jne    1bf0 <test_memcopy+0x37>
    1be6:	b8 01 00 00 00       	mov    $0x1,%eax
    1beb:	e9 b6 00 00 00       	jmpq   1ca6 <test_memcopy+0xed>
    1bf0:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1bf4:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    1bf8:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1bfc:	48 83 c0 10          	add    $0x10,%rax
    1c00:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    1c04:	c6 45 ff 00          	movb   $0x0,-0x1(%rbp)
    1c08:	eb 1b                	jmp    1c25 <test_memcopy+0x6c>
    1c0a:	0f b6 55 ff          	movzbl -0x1(%rbp),%edx
    1c0e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1c12:	48 01 c2             	add    %rax,%rdx
    1c15:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
    1c19:	88 02                	mov    %al,(%rdx)
    1c1b:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
    1c1f:	83 c0 01             	add    $0x1,%eax
    1c22:	88 45 ff             	mov    %al,-0x1(%rbp)
    1c25:	80 7d ff 1f          	cmpb   $0x1f,-0x1(%rbp)
    1c29:	76 df                	jbe    1c0a <test_memcopy+0x51>
    1c2b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1c2f:	be 20 00 00 00       	mov    $0x20,%esi
    1c34:	48 89 c7             	mov    %rax,%rdi
    1c37:	e8 90 05 00 00       	callq  21cc <print_array>
    1c3c:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    1c40:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1c44:	ba 10 00 00 00       	mov    $0x10,%edx
    1c49:	48 89 ce             	mov    %rcx,%rsi
    1c4c:	48 89 c7             	mov    %rax,%rdi
    1c4f:	e8 ed f7 ff ff       	callq  1441 <my_memcopy>
    1c54:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1c58:	be 20 00 00 00       	mov    $0x20,%esi
    1c5d:	48 89 c7             	mov    %rax,%rdi
    1c60:	e8 67 05 00 00       	callq  21cc <print_array>
    1c65:	c6 45 ff 00          	movb   $0x0,-0x1(%rbp)
    1c69:	eb 25                	jmp    1c90 <test_memcopy+0xd7>
    1c6b:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
    1c6f:	48 8d 50 10          	lea    0x10(%rax),%rdx
    1c73:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1c77:	48 01 d0             	add    %rdx,%rax
    1c7a:	0f b6 00             	movzbl (%rax),%eax
    1c7d:	38 45 ff             	cmp    %al,-0x1(%rbp)
    1c80:	74 04                	je     1c86 <test_memcopy+0xcd>
    1c82:	c6 45 fe 01          	movb   $0x1,-0x2(%rbp)
    1c86:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
    1c8a:	83 c0 01             	add    $0x1,%eax
    1c8d:	88 45 ff             	mov    %al,-0x1(%rbp)
    1c90:	80 7d ff 0f          	cmpb   $0xf,-0x1(%rbp)
    1c94:	76 d5                	jbe    1c6b <test_memcopy+0xb2>
    1c96:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1c9a:	48 89 c7             	mov    %rax,%rdi
    1c9d:	e8 11 f9 ff ff       	callq  15b3 <free_words>
    1ca2:	0f b6 45 fe          	movzbl -0x2(%rbp),%eax
    1ca6:	c9                   	leaveq 
    1ca7:	c3                   	retq   

0000000000001ca8 <test_memset>:
    1ca8:	55                   	push   %rbp
    1ca9:	48 89 e5             	mov    %rsp,%rbp
    1cac:	48 83 ec 20          	sub    $0x20,%rsp
    1cb0:	c6 45 fe 00          	movb   $0x0,-0x2(%rbp)
    1cb4:	48 8d 3d 0a 14 00 00 	lea    0x140a(%rip),%rdi        # 30c5 <_IO_stdin_used+0xc5>
    1cbb:	e8 90 f3 ff ff       	callq  1050 <puts@plt>
    1cc0:	bf 08 00 00 00       	mov    $0x8,%edi
    1cc5:	e8 b6 f8 ff ff       	callq  1580 <reserve_words>
    1cca:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    1cce:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
    1cd3:	75 0a                	jne    1cdf <test_memset+0x37>
    1cd5:	b8 01 00 00 00       	mov    $0x1,%eax
    1cda:	e9 ed 00 00 00       	jmpq   1dcc <test_memset+0x124>
    1cdf:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1ce3:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    1ce7:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1ceb:	48 83 c0 10          	add    $0x10,%rax
    1cef:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    1cf3:	c6 45 ff 00          	movb   $0x0,-0x1(%rbp)
    1cf7:	eb 1b                	jmp    1d14 <test_memset+0x6c>
    1cf9:	0f b6 55 ff          	movzbl -0x1(%rbp),%edx
    1cfd:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1d01:	48 01 c2             	add    %rax,%rdx
    1d04:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
    1d08:	88 02                	mov    %al,(%rdx)
    1d0a:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
    1d0e:	83 c0 01             	add    $0x1,%eax
    1d11:	88 45 ff             	mov    %al,-0x1(%rbp)
    1d14:	80 7d ff 1f          	cmpb   $0x1f,-0x1(%rbp)
    1d18:	76 df                	jbe    1cf9 <test_memset+0x51>
    1d1a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1d1e:	be 20 00 00 00       	mov    $0x20,%esi
    1d23:	48 89 c7             	mov    %rax,%rdi
    1d26:	e8 a1 04 00 00       	callq  21cc <print_array>
    1d2b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1d2f:	ba ff 00 00 00       	mov    $0xff,%edx
    1d34:	be 20 00 00 00       	mov    $0x20,%esi
    1d39:	48 89 c7             	mov    %rax,%rdi
    1d3c:	e8 4a f7 ff ff       	callq  148b <my_memset>
    1d41:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1d45:	be 20 00 00 00       	mov    $0x20,%esi
    1d4a:	48 89 c7             	mov    %rax,%rdi
    1d4d:	e8 7a 04 00 00       	callq  21cc <print_array>
    1d52:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1d56:	be 10 00 00 00       	mov    $0x10,%esi
    1d5b:	48 89 c7             	mov    %rax,%rdi
    1d5e:	e8 69 f7 ff ff       	callq  14cc <my_memzero>
    1d63:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1d67:	be 20 00 00 00       	mov    $0x20,%esi
    1d6c:	48 89 c7             	mov    %rax,%rdi
    1d6f:	e8 58 04 00 00       	callq  21cc <print_array>
    1d74:	c6 45 ff 00          	movb   $0x0,-0x1(%rbp)
    1d78:	eb 3c                	jmp    1db6 <test_memset+0x10e>
    1d7a:	0f b6 55 ff          	movzbl -0x1(%rbp),%edx
    1d7e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1d82:	48 01 d0             	add    %rdx,%rax
    1d85:	0f b6 00             	movzbl (%rax),%eax
    1d88:	3c ff                	cmp    $0xff,%al
    1d8a:	74 04                	je     1d90 <test_memset+0xe8>
    1d8c:	c6 45 fe 01          	movb   $0x1,-0x2(%rbp)
    1d90:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
    1d94:	83 c0 10             	add    $0x10,%eax
    1d97:	48 63 d0             	movslq %eax,%rdx
    1d9a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1d9e:	48 01 d0             	add    %rdx,%rax
    1da1:	0f b6 00             	movzbl (%rax),%eax
    1da4:	84 c0                	test   %al,%al
    1da6:	74 04                	je     1dac <test_memset+0x104>
    1da8:	c6 45 fe 01          	movb   $0x1,-0x2(%rbp)
    1dac:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
    1db0:	83 c0 01             	add    $0x1,%eax
    1db3:	88 45 ff             	mov    %al,-0x1(%rbp)
    1db6:	80 7d ff 0f          	cmpb   $0xf,-0x1(%rbp)
    1dba:	76 be                	jbe    1d7a <test_memset+0xd2>
    1dbc:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1dc0:	48 89 c7             	mov    %rax,%rdi
    1dc3:	e8 eb f7 ff ff       	callq  15b3 <free_words>
    1dc8:	0f b6 45 fe          	movzbl -0x2(%rbp),%eax
    1dcc:	c9                   	leaveq 
    1dcd:	c3                   	retq   

0000000000001dce <test_reverse>:
    1dce:	55                   	push   %rbp
    1dcf:	48 89 e5             	mov    %rsp,%rbp
    1dd2:	48 83 ec 30          	sub    $0x30,%rsp
    1dd6:	c6 45 fe 00          	movb   $0x0,-0x2(%rbp)
    1dda:	c6 45 d0 3f          	movb   $0x3f,-0x30(%rbp)
    1dde:	c6 45 d1 73          	movb   $0x73,-0x2f(%rbp)
    1de2:	c6 45 d2 72          	movb   $0x72,-0x2e(%rbp)
    1de6:	c6 45 d3 33          	movb   $0x33,-0x2d(%rbp)
    1dea:	c6 45 d4 54          	movb   $0x54,-0x2c(%rbp)
    1dee:	c6 45 d5 43          	movb   $0x43,-0x2b(%rbp)
    1df2:	c6 45 d6 72          	movb   $0x72,-0x2a(%rbp)
    1df6:	c6 45 d7 26          	movb   $0x26,-0x29(%rbp)
    1dfa:	c6 45 d8 48          	movb   $0x48,-0x28(%rbp)
    1dfe:	c6 45 d9 63          	movb   $0x63,-0x27(%rbp)
    1e02:	c6 45 da 20          	movb   $0x20,-0x26(%rbp)
    1e06:	c6 45 db 66          	movb   $0x66,-0x25(%rbp)
    1e0a:	c6 45 dc 6f          	movb   $0x6f,-0x24(%rbp)
    1e0e:	c6 45 dd 00          	movb   $0x0,-0x23(%rbp)
    1e12:	c6 45 de 20          	movb   $0x20,-0x22(%rbp)
    1e16:	c6 45 df 33          	movb   $0x33,-0x21(%rbp)
    1e1a:	c6 45 e0 72          	movb   $0x72,-0x20(%rbp)
    1e1e:	c6 45 e1 75          	movb   $0x75,-0x1f(%rbp)
    1e22:	c6 45 e2 74          	movb   $0x74,-0x1e(%rbp)
    1e26:	c6 45 e3 78          	movb   $0x78,-0x1d(%rbp)
    1e2a:	c6 45 e4 21          	movb   $0x21,-0x1c(%rbp)
    1e2e:	c6 45 e5 4d          	movb   $0x4d,-0x1b(%rbp)
    1e32:	c6 45 e6 20          	movb   $0x20,-0x1a(%rbp)
    1e36:	c6 45 e7 40          	movb   $0x40,-0x19(%rbp)
    1e3a:	c6 45 e8 20          	movb   $0x20,-0x18(%rbp)
    1e3e:	c6 45 e9 24          	movb   $0x24,-0x17(%rbp)
    1e42:	c6 45 ea 7c          	movb   $0x7c,-0x16(%rbp)
    1e46:	c6 45 eb 20          	movb   $0x20,-0x15(%rbp)
    1e4a:	c6 45 ec 24          	movb   $0x24,-0x14(%rbp)
    1e4e:	c6 45 ed 69          	movb   $0x69,-0x13(%rbp)
    1e52:	c6 45 ee 68          	movb   $0x68,-0x12(%rbp)
    1e56:	c6 45 ef 54          	movb   $0x54,-0x11(%rbp)
    1e5a:	48 8d 3d 72 12 00 00 	lea    0x1272(%rip),%rdi        # 30d3 <_IO_stdin_used+0xd3>
    1e61:	e8 ea f1 ff ff       	callq  1050 <puts@plt>
    1e66:	bf 08 00 00 00       	mov    $0x8,%edi
    1e6b:	e8 10 f7 ff ff       	callq  1580 <reserve_words>
    1e70:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    1e74:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
    1e79:	75 0a                	jne    1e85 <test_reverse+0xb7>
    1e7b:	b8 01 00 00 00       	mov    $0x1,%eax
    1e80:	e9 a1 00 00 00       	jmpq   1f26 <test_reverse+0x158>
    1e85:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    1e89:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
    1e8d:	ba 20 00 00 00       	mov    $0x20,%edx
    1e92:	48 89 ce             	mov    %rcx,%rsi
    1e95:	48 89 c7             	mov    %rax,%rdi
    1e98:	e8 a4 f5 ff ff       	callq  1441 <my_memcopy>
    1e9d:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
    1ea1:	be 20 00 00 00       	mov    $0x20,%esi
    1ea6:	48 89 c7             	mov    %rax,%rdi
    1ea9:	e8 1e 03 00 00       	callq  21cc <print_array>
    1eae:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
    1eb2:	be 20 00 00 00       	mov    $0x20,%esi
    1eb7:	48 89 c7             	mov    %rax,%rdi
    1eba:	e8 46 f6 ff ff       	callq  1505 <my_reverse>
    1ebf:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
    1ec3:	be 20 00 00 00       	mov    $0x20,%esi
    1ec8:	48 89 c7             	mov    %rax,%rdi
    1ecb:	e8 fc 02 00 00       	callq  21cc <print_array>
    1ed0:	c6 45 ff 00          	movb   $0x0,-0x1(%rbp)
    1ed4:	eb 3a                	jmp    1f10 <test_reverse+0x142>
    1ed6:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
    1eda:	48 98                	cltq   
    1edc:	0f b6 54 05 d0       	movzbl -0x30(%rbp,%rax,1),%edx
    1ee1:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
    1ee5:	b9 20 00 00 00       	mov    $0x20,%ecx
    1eea:	29 c1                	sub    %eax,%ecx
    1eec:	89 c8                	mov    %ecx,%eax
    1eee:	48 98                	cltq   
    1ef0:	48 8d 48 ff          	lea    -0x1(%rax),%rcx
    1ef4:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1ef8:	48 01 c8             	add    %rcx,%rax
    1efb:	0f b6 00             	movzbl (%rax),%eax
    1efe:	38 c2                	cmp    %al,%dl
    1f00:	74 04                	je     1f06 <test_reverse+0x138>
    1f02:	c6 45 fe 01          	movb   $0x1,-0x2(%rbp)
    1f06:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
    1f0a:	83 c0 01             	add    $0x1,%eax
    1f0d:	88 45 ff             	mov    %al,-0x1(%rbp)
    1f10:	80 7d ff 1f          	cmpb   $0x1f,-0x1(%rbp)
    1f14:	76 c0                	jbe    1ed6 <test_reverse+0x108>
    1f16:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1f1a:	48 89 c7             	mov    %rax,%rdi
    1f1d:	e8 91 f6 ff ff       	callq  15b3 <free_words>
    1f22:	0f b6 45 fe          	movzbl -0x2(%rbp),%eax
    1f26:	c9                   	leaveq 
    1f27:	c3                   	retq   

0000000000001f28 <course1>:
    1f28:	55                   	push   %rbp
    1f29:	48 89 e5             	mov    %rsp,%rbp
    1f2c:	48 83 ec 10          	sub    $0x10,%rsp
    1f30:	c6 45 fe 00          	movb   $0x0,-0x2(%rbp)
    1f34:	b8 00 00 00 00       	mov    $0x0,%eax
    1f39:	e8 87 f8 ff ff       	callq  17c5 <test_data1>
    1f3e:	88 45 f6             	mov    %al,-0xa(%rbp)
    1f41:	b8 00 00 00 00       	mov    $0x0,%eax
    1f46:	e8 0b f9 ff ff       	callq  1856 <test_data2>
    1f4b:	88 45 f7             	mov    %al,-0x9(%rbp)
    1f4e:	b8 00 00 00 00       	mov    $0x0,%eax
    1f53:	e8 8f f9 ff ff       	callq  18e7 <test_memmove1>
    1f58:	88 45 f8             	mov    %al,-0x8(%rbp)
    1f5b:	b8 00 00 00 00       	mov    $0x0,%eax
    1f60:	e8 71 fa ff ff       	callq  19d6 <test_memmove2>
    1f65:	88 45 f9             	mov    %al,-0x7(%rbp)
    1f68:	b8 00 00 00 00       	mov    $0x0,%eax
    1f6d:	e8 53 fb ff ff       	callq  1ac5 <test_memmove3>
    1f72:	88 45 fa             	mov    %al,-0x6(%rbp)
    1f75:	b8 00 00 00 00       	mov    $0x0,%eax
    1f7a:	e8 3a fc ff ff       	callq  1bb9 <test_memcopy>
    1f7f:	88 45 fb             	mov    %al,-0x5(%rbp)
    1f82:	b8 00 00 00 00       	mov    $0x0,%eax
    1f87:	e8 1c fd ff ff       	callq  1ca8 <test_memset>
    1f8c:	88 45 fc             	mov    %al,-0x4(%rbp)
    1f8f:	b8 00 00 00 00       	mov    $0x0,%eax
    1f94:	e8 35 fe ff ff       	callq  1dce <test_reverse>
    1f99:	88 45 fd             	mov    %al,-0x3(%rbp)
    1f9c:	c6 45 ff 00          	movb   $0x0,-0x1(%rbp)
    1fa0:	eb 20                	jmp    1fc2 <course1+0x9a>
    1fa2:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
    1fa6:	48 98                	cltq   
    1fa8:	0f b6 44 05 f6       	movzbl -0xa(%rbp,%rax,1),%eax
    1fad:	89 c2                	mov    %eax,%edx
    1faf:	0f b6 45 fe          	movzbl -0x2(%rbp),%eax
    1fb3:	01 d0                	add    %edx,%eax
    1fb5:	88 45 fe             	mov    %al,-0x2(%rbp)
    1fb8:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
    1fbc:	83 c0 01             	add    $0x1,%eax
    1fbf:	88 45 ff             	mov    %al,-0x1(%rbp)
    1fc2:	80 7d ff 07          	cmpb   $0x7,-0x1(%rbp)
    1fc6:	76 da                	jbe    1fa2 <course1+0x7a>
    1fc8:	48 8d 3d 19 11 00 00 	lea    0x1119(%rip),%rdi        # 30e8 <_IO_stdin_used+0xe8>
    1fcf:	e8 7c f0 ff ff       	callq  1050 <puts@plt>
    1fd4:	48 8d 3d 2e 11 00 00 	lea    0x112e(%rip),%rdi        # 3109 <_IO_stdin_used+0x109>
    1fdb:	e8 70 f0 ff ff       	callq  1050 <puts@plt>
    1fe0:	0f be 45 fe          	movsbl -0x2(%rbp),%eax
    1fe4:	ba 08 00 00 00       	mov    $0x8,%edx
    1fe9:	29 c2                	sub    %eax,%edx
    1feb:	89 d0                	mov    %edx,%eax
    1fed:	ba 08 00 00 00       	mov    $0x8,%edx
    1ff2:	89 c6                	mov    %eax,%esi
    1ff4:	48 8d 3d 1c 11 00 00 	lea    0x111c(%rip),%rdi        # 3117 <_IO_stdin_used+0x117>
    1ffb:	b8 00 00 00 00       	mov    $0x0,%eax
    2000:	e8 5b f0 ff ff       	callq  1060 <printf@plt>
    2005:	0f be 45 fe          	movsbl -0x2(%rbp),%eax
    2009:	ba 08 00 00 00       	mov    $0x8,%edx
    200e:	89 c6                	mov    %eax,%esi
    2010:	48 8d 3d 13 11 00 00 	lea    0x1113(%rip),%rdi        # 312a <_IO_stdin_used+0x12a>
    2017:	b8 00 00 00 00       	mov    $0x0,%eax
    201c:	e8 3f f0 ff ff       	callq  1060 <printf@plt>
    2021:	48 8d 3d c0 10 00 00 	lea    0x10c0(%rip),%rdi        # 30e8 <_IO_stdin_used+0xe8>
    2028:	e8 23 f0 ff ff       	callq  1050 <puts@plt>
    202d:	90                   	nop
    202e:	c9                   	leaveq 
    202f:	c3                   	retq   

0000000000002030 <mainn>:
    2030:	55                   	push   %rbp
    2031:	48 89 e5             	mov    %rsp,%rbp
    2034:	48 83 ec 30          	sub    $0x30,%rsp
    2038:	c6 45 d0 22          	movb   $0x22,-0x30(%rbp)
    203c:	c6 45 d1 c9          	movb   $0xc9,-0x2f(%rbp)
    2040:	c6 45 d2 be          	movb   $0xbe,-0x2e(%rbp)
    2044:	c6 45 d3 9a          	movb   $0x9a,-0x2d(%rbp)
    2048:	c6 45 d4 08          	movb   $0x8,-0x2c(%rbp)
    204c:	c6 45 d5 c2          	movb   $0xc2,-0x2b(%rbp)
    2050:	c6 45 d6 02          	movb   $0x2,-0x2a(%rbp)
    2054:	c6 45 d7 06          	movb   $0x6,-0x29(%rbp)
    2058:	c6 45 d8 72          	movb   $0x72,-0x28(%rbp)
    205c:	c6 45 d9 58          	movb   $0x58,-0x27(%rbp)
    2060:	c6 45 da 2d          	movb   $0x2d,-0x26(%rbp)
    2064:	c6 45 db 4c          	movb   $0x4c,-0x25(%rbp)
    2068:	c6 45 dc 7b          	movb   $0x7b,-0x24(%rbp)
    206c:	c6 45 dd 57          	movb   $0x57,-0x23(%rbp)
    2070:	c6 45 de 19          	movb   $0x19,-0x22(%rbp)
    2074:	c6 45 df 17          	movb   $0x17,-0x21(%rbp)
    2078:	c6 45 e0 c8          	movb   $0xc8,-0x20(%rbp)
    207c:	c6 45 e1 7a          	movb   $0x7a,-0x1f(%rbp)
    2080:	c6 45 e2 96          	movb   $0x96,-0x1e(%rbp)
    2084:	c6 45 e3 5a          	movb   $0x5a,-0x1d(%rbp)
    2088:	c6 45 e4 5c          	movb   $0x5c,-0x1c(%rbp)
    208c:	c6 45 e5 57          	movb   $0x57,-0x1b(%rbp)
    2090:	c6 45 e6 b1          	movb   $0xb1,-0x1a(%rbp)
    2094:	c6 45 e7 f4          	movb   $0xf4,-0x19(%rbp)
    2098:	c6 45 e8 c9          	movb   $0xc9,-0x18(%rbp)
    209c:	c6 45 e9 06          	movb   $0x6,-0x17(%rbp)
    20a0:	c6 45 ea 0c          	movb   $0xc,-0x16(%rbp)
    20a4:	c6 45 eb 3c          	movb   $0x3c,-0x15(%rbp)
    20a8:	c6 45 ec 08          	movb   $0x8,-0x14(%rbp)
    20ac:	c6 45 ed 02          	movb   $0x2,-0x13(%rbp)
    20b0:	c6 45 ee 05          	movb   $0x5,-0x12(%rbp)
    20b4:	c6 45 ef 43          	movb   $0x43,-0x11(%rbp)
    20b8:	c6 45 f0 07          	movb   $0x7,-0x10(%rbp)
    20bc:	c6 45 f1 57          	movb   $0x57,-0xf(%rbp)
    20c0:	c6 45 f2 fa          	movb   $0xfa,-0xe(%rbp)
    20c4:	c6 45 f3 e6          	movb   $0xe6,-0xd(%rbp)
    20c8:	c6 45 f4 63          	movb   $0x63,-0xc(%rbp)
    20cc:	c6 45 f5 03          	movb   $0x3,-0xb(%rbp)
    20d0:	c6 45 f6 64          	movb   $0x64,-0xa(%rbp)
    20d4:	c6 45 f7 5a          	movb   $0x5a,-0x9(%rbp)
    20d8:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
    20dc:	be 28 00 00 00       	mov    $0x28,%esi
    20e1:	48 89 c7             	mov    %rax,%rdi
    20e4:	e8 25 00 00 00       	callq  210e <print_statistics>
    20e9:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
    20ed:	be 28 00 00 00       	mov    $0x28,%esi
    20f2:	48 89 c7             	mov    %rax,%rdi
    20f5:	e8 6f 02 00 00       	callq  2369 <sort_array>
    20fa:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
    20fe:	be 28 00 00 00       	mov    $0x28,%esi
    2103:	48 89 c7             	mov    %rax,%rdi
    2106:	e8 c1 00 00 00       	callq  21cc <print_array>
    210b:	90                   	nop
    210c:	c9                   	leaveq 
    210d:	c3                   	retq   

000000000000210e <print_statistics>:
    210e:	55                   	push   %rbp
    210f:	48 89 e5             	mov    %rsp,%rbp
    2112:	48 83 ec 20          	sub    $0x20,%rsp
    2116:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    211a:	89 75 e4             	mov    %esi,-0x1c(%rbp)
    211d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2121:	be 28 00 00 00       	mov    $0x28,%esi
    2126:	48 89 c7             	mov    %rax,%rdi
    2129:	e8 97 01 00 00       	callq  22c5 <find_maximum>
    212e:	88 45 ff             	mov    %al,-0x1(%rbp)
    2131:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
    2135:	89 c6                	mov    %eax,%esi
    2137:	48 8d 3d 02 10 00 00 	lea    0x1002(%rip),%rdi        # 3140 <_IO_stdin_used+0x140>
    213e:	b8 00 00 00 00       	mov    $0x0,%eax
    2143:	e8 18 ef ff ff       	callq  1060 <printf@plt>
    2148:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    214c:	be 28 00 00 00       	mov    $0x28,%esi
    2151:	48 89 c7             	mov    %rax,%rdi
    2154:	e8 be 01 00 00       	callq  2317 <find_minimum>
    2159:	88 45 fe             	mov    %al,-0x2(%rbp)
    215c:	0f b6 45 fe          	movzbl -0x2(%rbp),%eax
    2160:	89 c6                	mov    %eax,%esi
    2162:	48 8d 3d ff 0f 00 00 	lea    0xfff(%rip),%rdi        # 3168 <_IO_stdin_used+0x168>
    2169:	b8 00 00 00 00       	mov    $0x0,%eax
    216e:	e8 ed ee ff ff       	callq  1060 <printf@plt>
    2173:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2177:	be 28 00 00 00       	mov    $0x28,%esi
    217c:	48 89 c7             	mov    %rax,%rdi
    217f:	e8 fa 00 00 00       	callq  227e <find_mean>
    2184:	88 45 fd             	mov    %al,-0x3(%rbp)
    2187:	0f b6 45 fd          	movzbl -0x3(%rbp),%eax
    218b:	89 c6                	mov    %eax,%esi
    218d:	48 8d 3d f5 0f 00 00 	lea    0xff5(%rip),%rdi        # 3189 <_IO_stdin_used+0x189>
    2194:	b8 00 00 00 00       	mov    $0x0,%eax
    2199:	e8 c2 ee ff ff       	callq  1060 <printf@plt>
    219e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    21a2:	be 28 00 00 00       	mov    $0x28,%esi
    21a7:	48 89 c7             	mov    %rax,%rdi
    21aa:	e8 2b 00 00 00       	callq  21da <find_median>
    21af:	88 45 fc             	mov    %al,-0x4(%rbp)
    21b2:	0f b6 45 fc          	movzbl -0x4(%rbp),%eax
    21b6:	89 c6                	mov    %eax,%esi
    21b8:	48 8d 3d e9 0f 00 00 	lea    0xfe9(%rip),%rdi        # 31a8 <_IO_stdin_used+0x1a8>
    21bf:	b8 00 00 00 00       	mov    $0x0,%eax
    21c4:	e8 97 ee ff ff       	callq  1060 <printf@plt>
    21c9:	90                   	nop
    21ca:	c9                   	leaveq 
    21cb:	c3                   	retq   

00000000000021cc <print_array>:
    21cc:	55                   	push   %rbp
    21cd:	48 89 e5             	mov    %rsp,%rbp
    21d0:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    21d4:	89 75 f4             	mov    %esi,-0xc(%rbp)
    21d7:	90                   	nop
    21d8:	5d                   	pop    %rbp
    21d9:	c3                   	retq   

00000000000021da <find_median>:
    21da:	55                   	push   %rbp
    21db:	48 89 e5             	mov    %rsp,%rbp
    21de:	48 83 ec 20          	sub    $0x20,%rsp
    21e2:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    21e6:	89 75 e4             	mov    %esi,-0x1c(%rbp)
    21e9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    21ed:	be 28 00 00 00       	mov    $0x28,%esi
    21f2:	48 89 c7             	mov    %rax,%rdi
    21f5:	e8 6f 01 00 00       	callq  2369 <sort_array>
    21fa:	66 0f ef c0          	pxor   %xmm0,%xmm0
    21fe:	f3 0f 11 45 fc       	movss  %xmm0,-0x4(%rbp)
    2203:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    2206:	83 e0 01             	and    $0x1,%eax
    2209:	85 c0                	test   %eax,%eax
    220b:	75 4d                	jne    225a <find_median+0x80>
    220d:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    2210:	83 e8 01             	sub    $0x1,%eax
    2213:	d1 e8                	shr    %eax
    2215:	89 c2                	mov    %eax,%edx
    2217:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    221b:	48 01 d0             	add    %rdx,%rax
    221e:	0f b6 00             	movzbl (%rax),%eax
    2221:	0f b6 c0             	movzbl %al,%eax
    2224:	89 45 f8             	mov    %eax,-0x8(%rbp)
    2227:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    222a:	d1 e8                	shr    %eax
    222c:	89 c2                	mov    %eax,%edx
    222e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2232:	48 01 d0             	add    %rdx,%rax
    2235:	0f b6 00             	movzbl (%rax),%eax
    2238:	0f b6 c0             	movzbl %al,%eax
    223b:	89 45 f4             	mov    %eax,-0xc(%rbp)
    223e:	8b 55 f8             	mov    -0x8(%rbp),%edx
    2241:	8b 45 f4             	mov    -0xc(%rbp),%eax
    2244:	01 d0                	add    %edx,%eax
    2246:	89 c2                	mov    %eax,%edx
    2248:	c1 ea 1f             	shr    $0x1f,%edx
    224b:	01 d0                	add    %edx,%eax
    224d:	d1 f8                	sar    %eax
    224f:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
    2253:	f3 0f 11 45 fc       	movss  %xmm0,-0x4(%rbp)
    2258:	eb 1d                	jmp    2277 <find_median+0x9d>
    225a:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    225d:	d1 e8                	shr    %eax
    225f:	89 c2                	mov    %eax,%edx
    2261:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2265:	48 01 d0             	add    %rdx,%rax
    2268:	0f b6 00             	movzbl (%rax),%eax
    226b:	0f b6 c0             	movzbl %al,%eax
    226e:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
    2272:	f3 0f 11 45 fc       	movss  %xmm0,-0x4(%rbp)
    2277:	f3 0f 2c 45 fc       	cvttss2si -0x4(%rbp),%eax
    227c:	c9                   	leaveq 
    227d:	c3                   	retq   

000000000000227e <find_mean>:
    227e:	55                   	push   %rbp
    227f:	48 89 e5             	mov    %rsp,%rbp
    2282:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    2286:	89 75 e4             	mov    %esi,-0x1c(%rbp)
    2289:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
    2290:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
    2297:	eb 17                	jmp    22b0 <find_mean+0x32>
    2299:	8b 55 f8             	mov    -0x8(%rbp),%edx
    229c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    22a0:	48 01 d0             	add    %rdx,%rax
    22a3:	0f b6 00             	movzbl (%rax),%eax
    22a6:	0f b6 c0             	movzbl %al,%eax
    22a9:	01 45 fc             	add    %eax,-0x4(%rbp)
    22ac:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
    22b0:	8b 45 f8             	mov    -0x8(%rbp),%eax
    22b3:	3b 45 e4             	cmp    -0x1c(%rbp),%eax
    22b6:	72 e1                	jb     2299 <find_mean+0x1b>
    22b8:	8b 45 fc             	mov    -0x4(%rbp),%eax
    22bb:	ba 00 00 00 00       	mov    $0x0,%edx
    22c0:	f7 75 e4             	divl   -0x1c(%rbp)
    22c3:	5d                   	pop    %rbp
    22c4:	c3                   	retq   

00000000000022c5 <find_maximum>:
    22c5:	55                   	push   %rbp
    22c6:	48 89 e5             	mov    %rsp,%rbp
    22c9:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    22cd:	89 75 e4             	mov    %esi,-0x1c(%rbp)
    22d0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    22d4:	0f b6 00             	movzbl (%rax),%eax
    22d7:	88 45 ff             	mov    %al,-0x1(%rbp)
    22da:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
    22e1:	eb 26                	jmp    2309 <find_maximum+0x44>
    22e3:	8b 55 f8             	mov    -0x8(%rbp),%edx
    22e6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    22ea:	48 01 d0             	add    %rdx,%rax
    22ed:	0f b6 00             	movzbl (%rax),%eax
    22f0:	38 45 ff             	cmp    %al,-0x1(%rbp)
    22f3:	73 10                	jae    2305 <find_maximum+0x40>
    22f5:	8b 55 f8             	mov    -0x8(%rbp),%edx
    22f8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    22fc:	48 01 d0             	add    %rdx,%rax
    22ff:	0f b6 00             	movzbl (%rax),%eax
    2302:	88 45 ff             	mov    %al,-0x1(%rbp)
    2305:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
    2309:	8b 45 f8             	mov    -0x8(%rbp),%eax
    230c:	3b 45 e4             	cmp    -0x1c(%rbp),%eax
    230f:	72 d2                	jb     22e3 <find_maximum+0x1e>
    2311:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
    2315:	5d                   	pop    %rbp
    2316:	c3                   	retq   

0000000000002317 <find_minimum>:
    2317:	55                   	push   %rbp
    2318:	48 89 e5             	mov    %rsp,%rbp
    231b:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    231f:	89 75 e4             	mov    %esi,-0x1c(%rbp)
    2322:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2326:	0f b6 00             	movzbl (%rax),%eax
    2329:	88 45 ff             	mov    %al,-0x1(%rbp)
    232c:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
    2333:	eb 26                	jmp    235b <find_minimum+0x44>
    2335:	8b 55 f8             	mov    -0x8(%rbp),%edx
    2338:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    233c:	48 01 d0             	add    %rdx,%rax
    233f:	0f b6 00             	movzbl (%rax),%eax
    2342:	38 45 ff             	cmp    %al,-0x1(%rbp)
    2345:	76 10                	jbe    2357 <find_minimum+0x40>
    2347:	8b 55 f8             	mov    -0x8(%rbp),%edx
    234a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    234e:	48 01 d0             	add    %rdx,%rax
    2351:	0f b6 00             	movzbl (%rax),%eax
    2354:	88 45 ff             	mov    %al,-0x1(%rbp)
    2357:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
    235b:	8b 45 f8             	mov    -0x8(%rbp),%eax
    235e:	3b 45 e4             	cmp    -0x1c(%rbp),%eax
    2361:	72 d2                	jb     2335 <find_minimum+0x1e>
    2363:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
    2367:	5d                   	pop    %rbp
    2368:	c3                   	retq   

0000000000002369 <sort_array>:
    2369:	55                   	push   %rbp
    236a:	48 89 e5             	mov    %rsp,%rbp
    236d:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    2371:	89 75 e4             	mov    %esi,-0x1c(%rbp)
    2374:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
    237b:	eb 72                	jmp    23ef <sort_array+0x86>
    237d:	8b 45 fc             	mov    -0x4(%rbp),%eax
    2380:	83 c0 01             	add    $0x1,%eax
    2383:	89 45 f8             	mov    %eax,-0x8(%rbp)
    2386:	eb 5b                	jmp    23e3 <sort_array+0x7a>
    2388:	8b 55 fc             	mov    -0x4(%rbp),%edx
    238b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    238f:	48 01 d0             	add    %rdx,%rax
    2392:	0f b6 10             	movzbl (%rax),%edx
    2395:	8b 4d f8             	mov    -0x8(%rbp),%ecx
    2398:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    239c:	48 01 c8             	add    %rcx,%rax
    239f:	0f b6 00             	movzbl (%rax),%eax
    23a2:	38 c2                	cmp    %al,%dl
    23a4:	73 39                	jae    23df <sort_array+0x76>
    23a6:	8b 55 fc             	mov    -0x4(%rbp),%edx
    23a9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    23ad:	48 01 d0             	add    %rdx,%rax
    23b0:	0f b6 00             	movzbl (%rax),%eax
    23b3:	88 45 f7             	mov    %al,-0x9(%rbp)
    23b6:	8b 55 f8             	mov    -0x8(%rbp),%edx
    23b9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    23bd:	48 01 d0             	add    %rdx,%rax
    23c0:	8b 4d fc             	mov    -0x4(%rbp),%ecx
    23c3:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    23c7:	48 01 ca             	add    %rcx,%rdx
    23ca:	0f b6 00             	movzbl (%rax),%eax
    23cd:	88 02                	mov    %al,(%rdx)
    23cf:	8b 55 f8             	mov    -0x8(%rbp),%edx
    23d2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    23d6:	48 01 c2             	add    %rax,%rdx
    23d9:	0f b6 45 f7          	movzbl -0x9(%rbp),%eax
    23dd:	88 02                	mov    %al,(%rdx)
    23df:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
    23e3:	8b 45 f8             	mov    -0x8(%rbp),%eax
    23e6:	3b 45 e4             	cmp    -0x1c(%rbp),%eax
    23e9:	72 9d                	jb     2388 <sort_array+0x1f>
    23eb:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
    23ef:	8b 45 fc             	mov    -0x4(%rbp),%eax
    23f2:	3b 45 e4             	cmp    -0x1c(%rbp),%eax
    23f5:	72 86                	jb     237d <sort_array+0x14>
    23f7:	90                   	nop
    23f8:	5d                   	pop    %rbp
    23f9:	c3                   	retq   
    23fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000002400 <__libc_csu_init>:
    2400:	41 57                	push   %r15
    2402:	49 89 d7             	mov    %rdx,%r15
    2405:	41 56                	push   %r14
    2407:	49 89 f6             	mov    %rsi,%r14
    240a:	41 55                	push   %r13
    240c:	41 89 fd             	mov    %edi,%r13d
    240f:	41 54                	push   %r12
    2411:	4c 8d 25 d0 29 00 00 	lea    0x29d0(%rip),%r12        # 4de8 <__frame_dummy_init_array_entry>
    2418:	55                   	push   %rbp
    2419:	48 8d 2d d0 29 00 00 	lea    0x29d0(%rip),%rbp        # 4df0 <__init_array_end>
    2420:	53                   	push   %rbx
    2421:	4c 29 e5             	sub    %r12,%rbp
    2424:	48 83 ec 08          	sub    $0x8,%rsp
    2428:	e8 d3 eb ff ff       	callq  1000 <_init>
    242d:	48 c1 fd 03          	sar    $0x3,%rbp
    2431:	74 1b                	je     244e <__libc_csu_init+0x4e>
    2433:	31 db                	xor    %ebx,%ebx
    2435:	0f 1f 00             	nopl   (%rax)
    2438:	4c 89 fa             	mov    %r15,%rdx
    243b:	4c 89 f6             	mov    %r14,%rsi
    243e:	44 89 ef             	mov    %r13d,%edi
    2441:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
    2445:	48 83 c3 01          	add    $0x1,%rbx
    2449:	48 39 dd             	cmp    %rbx,%rbp
    244c:	75 ea                	jne    2438 <__libc_csu_init+0x38>
    244e:	48 83 c4 08          	add    $0x8,%rsp
    2452:	5b                   	pop    %rbx
    2453:	5d                   	pop    %rbp
    2454:	41 5c                	pop    %r12
    2456:	41 5d                	pop    %r13
    2458:	41 5e                	pop    %r14
    245a:	41 5f                	pop    %r15
    245c:	c3                   	retq   
    245d:	0f 1f 00             	nopl   (%rax)

0000000000002460 <__libc_csu_fini>:
    2460:	c3                   	retq   

Disassembly of section .fini:

0000000000002464 <_fini>:
    2464:	48 83 ec 08          	sub    $0x8,%rsp
    2468:	48 83 c4 08          	add    $0x8,%rsp
    246c:	c3                   	retq   
