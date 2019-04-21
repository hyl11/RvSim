
double:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <_start>:
   100b0:	00003197          	auipc	gp,0x3
   100b4:	f2818193          	addi	gp,gp,-216 # 12fd8 <__global_pointer$>
   100b8:	81818513          	addi	a0,gp,-2024 # 127f0 <_edata>
   100bc:	85018613          	addi	a2,gp,-1968 # 12828 <_end>
   100c0:	40a60633          	sub	a2,a2,a0
   100c4:	00000593          	li	a1,0
   100c8:	47c010ef          	jal	ra,11544 <memset>
   100cc:	00001517          	auipc	a0,0x1
   100d0:	36850513          	addi	a0,a0,872 # 11434 <__libc_fini_array>
   100d4:	318010ef          	jal	ra,113ec <atexit>
   100d8:	3cc010ef          	jal	ra,114a4 <__libc_init_array>
   100dc:	00012503          	lw	a0,0(sp)
   100e0:	00810593          	addi	a1,sp,8
   100e4:	00000613          	li	a2,0
   100e8:	104000ef          	jal	ra,101ec <main>
   100ec:	3140106f          	j	11400 <exit>

00000000000100f0 <_fini>:
   100f0:	00008067          	ret

00000000000100f4 <deregister_tm_clones>:
   100f4:	00012537          	lui	a0,0x12
   100f8:	000127b7          	lui	a5,0x12
   100fc:	7d850713          	addi	a4,a0,2008 # 127d8 <__TMC_END__>
   10100:	7d878793          	addi	a5,a5,2008 # 127d8 <__TMC_END__>
   10104:	00e78c63          	beq	a5,a4,1011c <deregister_tm_clones+0x28>
   10108:	00000337          	lui	t1,0x0
   1010c:	00030313          	mv	t1,t1
   10110:	00030663          	beqz	t1,1011c <deregister_tm_clones+0x28>
   10114:	7d850513          	addi	a0,a0,2008
   10118:	00030067          	jr	t1
   1011c:	00008067          	ret

0000000000010120 <register_tm_clones>:
   10120:	000127b7          	lui	a5,0x12
   10124:	00012537          	lui	a0,0x12
   10128:	7d878593          	addi	a1,a5,2008 # 127d8 <__TMC_END__>
   1012c:	7d850793          	addi	a5,a0,2008 # 127d8 <__TMC_END__>
   10130:	40f585b3          	sub	a1,a1,a5
   10134:	4035d593          	srai	a1,a1,0x3
   10138:	03f5d793          	srli	a5,a1,0x3f
   1013c:	00b785b3          	add	a1,a5,a1
   10140:	4015d593          	srai	a1,a1,0x1
   10144:	00058c63          	beqz	a1,1015c <register_tm_clones+0x3c>
   10148:	00000337          	lui	t1,0x0
   1014c:	00030313          	mv	t1,t1
   10150:	00030663          	beqz	t1,1015c <register_tm_clones+0x3c>
   10154:	7d850513          	addi	a0,a0,2008
   10158:	00030067          	jr	t1
   1015c:	00008067          	ret

0000000000010160 <__do_global_dtors_aux>:
   10160:	8181c703          	lbu	a4,-2024(gp) # 127f0 <_edata>
   10164:	04071663          	bnez	a4,101b0 <__do_global_dtors_aux+0x50>
   10168:	ff010113          	addi	sp,sp,-16
   1016c:	00813023          	sd	s0,0(sp)
   10170:	00113423          	sd	ra,8(sp)
   10174:	00078413          	mv	s0,a5
   10178:	f7dff0ef          	jal	ra,100f4 <deregister_tm_clones>
   1017c:	000007b7          	lui	a5,0x0
   10180:	00078793          	mv	a5,a5
   10184:	00078a63          	beqz	a5,10198 <__do_global_dtors_aux+0x38>
   10188:	00012537          	lui	a0,0x12
   1018c:	00050513          	mv	a0,a0
   10190:	ffff0097          	auipc	ra,0xffff0
   10194:	e70080e7          	jalr	-400(ra) # 0 <_start-0x100b0>
   10198:	00100793          	li	a5,1
   1019c:	80f18c23          	sb	a5,-2024(gp) # 127f0 <_edata>
   101a0:	00813083          	ld	ra,8(sp)
   101a4:	00013403          	ld	s0,0(sp)
   101a8:	01010113          	addi	sp,sp,16
   101ac:	00008067          	ret
   101b0:	00008067          	ret

00000000000101b4 <frame_dummy>:
   101b4:	000007b7          	lui	a5,0x0
   101b8:	00078793          	mv	a5,a5
   101bc:	02078663          	beqz	a5,101e8 <frame_dummy+0x34>
   101c0:	000125b7          	lui	a1,0x12
   101c4:	00012537          	lui	a0,0x12
   101c8:	ff010113          	addi	sp,sp,-16
   101cc:	7f858593          	addi	a1,a1,2040 # 127f8 <object.5215>
   101d0:	00050513          	mv	a0,a0
   101d4:	00113423          	sd	ra,8(sp)
   101d8:	ffff0097          	auipc	ra,0xffff0
   101dc:	e28080e7          	jalr	-472(ra) # 0 <_start-0x100b0>
   101e0:	00813083          	ld	ra,8(sp)
   101e4:	01010113          	addi	sp,sp,16
   101e8:	f39ff06f          	j	10120 <register_tm_clones>

00000000000101ec <main>:
   101ec:	fd010113          	addi	sp,sp,-48
   101f0:	02113423          	sd	ra,40(sp)
   101f4:	02813023          	sd	s0,32(sp)
   101f8:	00913c23          	sd	s1,24(sp)
   101fc:	03010413          	addi	s0,sp,48
   10200:	fc042e23          	sw	zero,-36(s0)
   10204:	00400793          	li	a5,4
   10208:	fcf42e23          	sw	a5,-36(s0)
   1020c:	0740006f          	j	10280 <main+0x94>
   10210:	000127b7          	lui	a5,0x12
   10214:	fdc42703          	lw	a4,-36(s0)
   10218:	00371713          	slli	a4,a4,0x3
   1021c:	01878793          	addi	a5,a5,24 # 12018 <__fini_array_end>
   10220:	00f707b3          	add	a5,a4,a5
   10224:	0007b483          	ld	s1,0(a5)
   10228:	fdc42503          	lw	a0,-36(s0)
   1022c:	6c1000ef          	jal	ra,110ec <__floatsidf>
   10230:	00050713          	mv	a4,a0
   10234:	000127b7          	lui	a5,0x12
   10238:	8107b583          	ld	a1,-2032(a5) # 11810 <__errno+0xc>
   1023c:	00070513          	mv	a0,a4
   10240:	6ac000ef          	jal	ra,108ec <__muldf3>
   10244:	00050793          	mv	a5,a0
   10248:	00078593          	mv	a1,a5
   1024c:	00048513          	mv	a0,s1
   10250:	220000ef          	jal	ra,10470 <__adddf3>
   10254:	00050793          	mv	a5,a0
   10258:	00078693          	mv	a3,a5
   1025c:	000127b7          	lui	a5,0x12
   10260:	fdc42703          	lw	a4,-36(s0)
   10264:	00371713          	slli	a4,a4,0x3
   10268:	01878793          	addi	a5,a5,24 # 12018 <__fini_array_end>
   1026c:	00f707b3          	add	a5,a4,a5
   10270:	00d7b023          	sd	a3,0(a5)
   10274:	fdc42783          	lw	a5,-36(s0)
   10278:	fff7879b          	addiw	a5,a5,-1
   1027c:	fcf42e23          	sw	a5,-36(s0)
   10280:	fdc42783          	lw	a5,-36(s0)
   10284:	0007879b          	sext.w	a5,a5
   10288:	f807d4e3          	bgez	a5,10210 <main+0x24>
   1028c:	00500793          	li	a5,5
   10290:	fcf42e23          	sw	a5,-36(s0)
   10294:	0740006f          	j	10308 <main+0x11c>
   10298:	000127b7          	lui	a5,0x12
   1029c:	fdc42703          	lw	a4,-36(s0)
   102a0:	00371713          	slli	a4,a4,0x3
   102a4:	01878793          	addi	a5,a5,24 # 12018 <__fini_array_end>
   102a8:	00f707b3          	add	a5,a4,a5
   102ac:	0007b483          	ld	s1,0(a5)
   102b0:	fdc42503          	lw	a0,-36(s0)
   102b4:	639000ef          	jal	ra,110ec <__floatsidf>
   102b8:	00050713          	mv	a4,a0
   102bc:	000127b7          	lui	a5,0x12
   102c0:	8107b583          	ld	a1,-2032(a5) # 11810 <__errno+0xc>
   102c4:	00070513          	mv	a0,a4
   102c8:	624000ef          	jal	ra,108ec <__muldf3>
   102cc:	00050793          	mv	a5,a0
   102d0:	00078593          	mv	a1,a5
   102d4:	00048513          	mv	a0,s1
   102d8:	19d000ef          	jal	ra,10c74 <__subdf3>
   102dc:	00050793          	mv	a5,a0
   102e0:	00078693          	mv	a3,a5
   102e4:	000127b7          	lui	a5,0x12
   102e8:	fdc42703          	lw	a4,-36(s0)
   102ec:	00371713          	slli	a4,a4,0x3
   102f0:	01878793          	addi	a5,a5,24 # 12018 <__fini_array_end>
   102f4:	00f707b3          	add	a5,a4,a5
   102f8:	00d7b023          	sd	a3,0(a5)
   102fc:	fdc42783          	lw	a5,-36(s0)
   10300:	0017879b          	addiw	a5,a5,1
   10304:	fcf42e23          	sw	a5,-36(s0)
   10308:	fdc42783          	lw	a5,-36(s0)
   1030c:	0007871b          	sext.w	a4,a5
   10310:	00900793          	li	a5,9
   10314:	f8e7d2e3          	ble	a4,a5,10298 <main+0xac>
   10318:	00400793          	li	a5,4
   1031c:	fcf42e23          	sw	a5,-36(s0)
   10320:	0880006f          	j	103a8 <main+0x1bc>
   10324:	000127b7          	lui	a5,0x12
   10328:	fdc42703          	lw	a4,-36(s0)
   1032c:	00271713          	slli	a4,a4,0x2
   10330:	06878793          	addi	a5,a5,104 # 12068 <result_float>
   10334:	00f707b3          	add	a5,a4,a5
   10338:	0007a783          	lw	a5,0(a5)
   1033c:	00078513          	mv	a0,a5
   10340:	639000ef          	jal	ra,11178 <__extendsfdf2>
   10344:	00050493          	mv	s1,a0
   10348:	fdc42503          	lw	a0,-36(s0)
   1034c:	5a1000ef          	jal	ra,110ec <__floatsidf>
   10350:	00050713          	mv	a4,a0
   10354:	000127b7          	lui	a5,0x12
   10358:	8107b583          	ld	a1,-2032(a5) # 11810 <__errno+0xc>
   1035c:	00070513          	mv	a0,a4
   10360:	58c000ef          	jal	ra,108ec <__muldf3>
   10364:	00050793          	mv	a5,a0
   10368:	00078593          	mv	a1,a5
   1036c:	00048513          	mv	a0,s1
   10370:	100000ef          	jal	ra,10470 <__adddf3>
   10374:	00050793          	mv	a5,a0
   10378:	00078513          	mv	a0,a5
   1037c:	6bd000ef          	jal	ra,11238 <__truncdfsf2>
   10380:	00050693          	mv	a3,a0
   10384:	000127b7          	lui	a5,0x12
   10388:	fdc42703          	lw	a4,-36(s0)
   1038c:	00271713          	slli	a4,a4,0x2
   10390:	06878793          	addi	a5,a5,104 # 12068 <result_float>
   10394:	00f707b3          	add	a5,a4,a5
   10398:	00d7a023          	sw	a3,0(a5)
   1039c:	fdc42783          	lw	a5,-36(s0)
   103a0:	fff7879b          	addiw	a5,a5,-1
   103a4:	fcf42e23          	sw	a5,-36(s0)
   103a8:	fdc42783          	lw	a5,-36(s0)
   103ac:	0007879b          	sext.w	a5,a5
   103b0:	f607dae3          	bgez	a5,10324 <main+0x138>
   103b4:	00500793          	li	a5,5
   103b8:	fcf42e23          	sw	a5,-36(s0)
   103bc:	0880006f          	j	10444 <main+0x258>
   103c0:	000127b7          	lui	a5,0x12
   103c4:	fdc42703          	lw	a4,-36(s0)
   103c8:	00271713          	slli	a4,a4,0x2
   103cc:	06878793          	addi	a5,a5,104 # 12068 <result_float>
   103d0:	00f707b3          	add	a5,a4,a5
   103d4:	0007a783          	lw	a5,0(a5)
   103d8:	00078513          	mv	a0,a5
   103dc:	59d000ef          	jal	ra,11178 <__extendsfdf2>
   103e0:	00050493          	mv	s1,a0
   103e4:	fdc42503          	lw	a0,-36(s0)
   103e8:	505000ef          	jal	ra,110ec <__floatsidf>
   103ec:	00050713          	mv	a4,a0
   103f0:	000127b7          	lui	a5,0x12
   103f4:	8107b583          	ld	a1,-2032(a5) # 11810 <__errno+0xc>
   103f8:	00070513          	mv	a0,a4
   103fc:	4f0000ef          	jal	ra,108ec <__muldf3>
   10400:	00050793          	mv	a5,a0
   10404:	00078593          	mv	a1,a5
   10408:	00048513          	mv	a0,s1
   1040c:	069000ef          	jal	ra,10c74 <__subdf3>
   10410:	00050793          	mv	a5,a0
   10414:	00078513          	mv	a0,a5
   10418:	621000ef          	jal	ra,11238 <__truncdfsf2>
   1041c:	00050693          	mv	a3,a0
   10420:	000127b7          	lui	a5,0x12
   10424:	fdc42703          	lw	a4,-36(s0)
   10428:	00271713          	slli	a4,a4,0x2
   1042c:	06878793          	addi	a5,a5,104 # 12068 <result_float>
   10430:	00f707b3          	add	a5,a4,a5
   10434:	00d7a023          	sw	a3,0(a5)
   10438:	fdc42783          	lw	a5,-36(s0)
   1043c:	0017879b          	addiw	a5,a5,1
   10440:	fcf42e23          	sw	a5,-36(s0)
   10444:	fdc42783          	lw	a5,-36(s0)
   10448:	0007871b          	sext.w	a4,a5
   1044c:	00900793          	li	a5,9
   10450:	f6e7d8e3          	ble	a4,a5,103c0 <main+0x1d4>
   10454:	00000793          	li	a5,0
   10458:	00078513          	mv	a0,a5
   1045c:	02813083          	ld	ra,40(sp)
   10460:	02013403          	ld	s0,32(sp)
   10464:	01813483          	ld	s1,24(sp)
   10468:	03010113          	addi	sp,sp,48
   1046c:	00008067          	ret

0000000000010470 <__adddf3>:
   10470:	fe010113          	addi	sp,sp,-32
   10474:	fff00813          	li	a6,-1
   10478:	00c85713          	srli	a4,a6,0xc
   1047c:	0345d613          	srli	a2,a1,0x34
   10480:	00813823          	sd	s0,16(sp)
   10484:	03455413          	srli	s0,a0,0x34
   10488:	00a777b3          	and	a5,a4,a0
   1048c:	01213023          	sd	s2,0(sp)
   10490:	00b77733          	and	a4,a4,a1
   10494:	7ff47413          	andi	s0,s0,2047
   10498:	7ff67613          	andi	a2,a2,2047
   1049c:	00113c23          	sd	ra,24(sp)
   104a0:	00913423          	sd	s1,8(sp)
   104a4:	03f55913          	srli	s2,a0,0x3f
   104a8:	03f5d593          	srli	a1,a1,0x3f
   104ac:	00379793          	slli	a5,a5,0x3
   104b0:	00371713          	slli	a4,a4,0x3
   104b4:	40c406bb          	subw	a3,s0,a2
   104b8:	18b91a63          	bne	s2,a1,1064c <__adddf3+0x1dc>
   104bc:	0006859b          	sext.w	a1,a3
   104c0:	0ab05863          	blez	a1,10570 <__adddf3+0x100>
   104c4:	06061663          	bnez	a2,10530 <__adddf3+0xc0>
   104c8:	04070663          	beqz	a4,10514 <__adddf3+0xa4>
   104cc:	fff6859b          	addiw	a1,a3,-1
   104d0:	02059e63          	bnez	a1,1050c <__adddf3+0x9c>
   104d4:	00e787b3          	add	a5,a5,a4
   104d8:	00879713          	slli	a4,a5,0x8
   104dc:	02075c63          	bgez	a4,10514 <__adddf3+0xa4>
   104e0:	00140413          	addi	s0,s0,1
   104e4:	7ff00713          	li	a4,2047
   104e8:	34e40c63          	beq	s0,a4,10840 <__adddf3+0x3d0>
   104ec:	1ff00713          	li	a4,511
   104f0:	03671713          	slli	a4,a4,0x36
   104f4:	0017f693          	andi	a3,a5,1
   104f8:	fff70713          	addi	a4,a4,-1
   104fc:	0017d793          	srli	a5,a5,0x1
   10500:	00e7f7b3          	and	a5,a5,a4
   10504:	00d7e7b3          	or	a5,a5,a3
   10508:	00c0006f          	j	10514 <__adddf3+0xa4>
   1050c:	7ff00693          	li	a3,2047
   10510:	02d41a63          	bne	s0,a3,10544 <__adddf3+0xd4>
   10514:	0077f713          	andi	a4,a5,7
   10518:	32070663          	beqz	a4,10844 <__adddf3+0x3d4>
   1051c:	00f7f713          	andi	a4,a5,15
   10520:	00400693          	li	a3,4
   10524:	32d70063          	beq	a4,a3,10844 <__adddf3+0x3d4>
   10528:	00478793          	addi	a5,a5,4
   1052c:	3180006f          	j	10844 <__adddf3+0x3d4>
   10530:	7ff00693          	li	a3,2047
   10534:	fed400e3          	beq	s0,a3,10514 <__adddf3+0xa4>
   10538:	00100693          	li	a3,1
   1053c:	03769693          	slli	a3,a3,0x37
   10540:	00d76733          	or	a4,a4,a3
   10544:	03800693          	li	a3,56
   10548:	00b6d663          	ble	a1,a3,10554 <__adddf3+0xe4>
   1054c:	00100713          	li	a4,1
   10550:	f85ff06f          	j	104d4 <__adddf3+0x64>
   10554:	04000693          	li	a3,64
   10558:	00b75633          	srl	a2,a4,a1
   1055c:	40b685bb          	subw	a1,a3,a1
   10560:	00b71733          	sll	a4,a4,a1
   10564:	00e03733          	snez	a4,a4
   10568:	00e66733          	or	a4,a2,a4
   1056c:	f69ff06f          	j	104d4 <__adddf3+0x64>
   10570:	06058863          	beqz	a1,105e0 <__adddf3+0x170>
   10574:	02041463          	bnez	s0,1059c <__adddf3+0x12c>
   10578:	2a078a63          	beqz	a5,1082c <__adddf3+0x3bc>
   1057c:	01059863          	bne	a1,a6,1058c <__adddf3+0x11c>
   10580:	00e787b3          	add	a5,a5,a4
   10584:	00060413          	mv	s0,a2
   10588:	f51ff06f          	j	104d8 <__adddf3+0x68>
   1058c:	7ff00593          	li	a1,2047
   10590:	34b61263          	bne	a2,a1,108d4 <__adddf3+0x464>
   10594:	00070793          	mv	a5,a4
   10598:	2100006f          	j	107a8 <__adddf3+0x338>
   1059c:	7ff00593          	li	a1,2047
   105a0:	feb60ae3          	beq	a2,a1,10594 <__adddf3+0x124>
   105a4:	00100593          	li	a1,1
   105a8:	03759593          	slli	a1,a1,0x37
   105ac:	40d006bb          	negw	a3,a3
   105b0:	00b7e7b3          	or	a5,a5,a1
   105b4:	03800593          	li	a1,56
   105b8:	00d5d663          	ble	a3,a1,105c4 <__adddf3+0x154>
   105bc:	00100793          	li	a5,1
   105c0:	fc1ff06f          	j	10580 <__adddf3+0x110>
   105c4:	04000593          	li	a1,64
   105c8:	00d7d533          	srl	a0,a5,a3
   105cc:	40d586bb          	subw	a3,a1,a3
   105d0:	00d797b3          	sll	a5,a5,a3
   105d4:	00f037b3          	snez	a5,a5
   105d8:	00f567b3          	or	a5,a0,a5
   105dc:	fa5ff06f          	j	10580 <__adddf3+0x110>
   105e0:	00140613          	addi	a2,s0,1
   105e4:	7ff67593          	andi	a1,a2,2047
   105e8:	00100693          	li	a3,1
   105ec:	04b6c463          	blt	a3,a1,10634 <__adddf3+0x1c4>
   105f0:	02041863          	bnez	s0,10620 <__adddf3+0x1b0>
   105f4:	24078063          	beqz	a5,10834 <__adddf3+0x3c4>
   105f8:	f0070ee3          	beqz	a4,10514 <__adddf3+0xa4>
   105fc:	00e787b3          	add	a5,a5,a4
   10600:	03769693          	slli	a3,a3,0x37
   10604:	00d7f6b3          	and	a3,a5,a3
   10608:	f00686e3          	beqz	a3,10514 <__adddf3+0xa4>
   1060c:	03781813          	slli	a6,a6,0x37
   10610:	fff80813          	addi	a6,a6,-1
   10614:	0107f7b3          	and	a5,a5,a6
   10618:	00100413          	li	s0,1
   1061c:	ef9ff06f          	j	10514 <__adddf3+0xa4>
   10620:	f6078ae3          	beqz	a5,10594 <__adddf3+0x124>
   10624:	18070263          	beqz	a4,107a8 <__adddf3+0x338>
   10628:	03669793          	slli	a5,a3,0x36
   1062c:	7ff00413          	li	s0,2047
   10630:	13c0006f          	j	1076c <__adddf3+0x2fc>
   10634:	7ff00693          	li	a3,2047
   10638:	20d60263          	beq	a2,a3,1083c <__adddf3+0x3cc>
   1063c:	00e787b3          	add	a5,a5,a4
   10640:	0017d793          	srli	a5,a5,0x1
   10644:	00060413          	mv	s0,a2
   10648:	ecdff06f          	j	10514 <__adddf3+0xa4>
   1064c:	0006851b          	sext.w	a0,a3
   10650:	08a05263          	blez	a0,106d4 <__adddf3+0x264>
   10654:	04061663          	bnez	a2,106a0 <__adddf3+0x230>
   10658:	ea070ee3          	beqz	a4,10514 <__adddf3+0xa4>
   1065c:	fff6851b          	addiw	a0,a3,-1
   10660:	02051463          	bnez	a0,10688 <__adddf3+0x218>
   10664:	40e787b3          	sub	a5,a5,a4
   10668:	00090593          	mv	a1,s2
   1066c:	00879713          	slli	a4,a5,0x8
   10670:	00058913          	mv	s2,a1
   10674:	ea0750e3          	bgez	a4,10514 <__adddf3+0xa4>
   10678:	fff00493          	li	s1,-1
   1067c:	0094d493          	srli	s1,s1,0x9
   10680:	0097f4b3          	and	s1,a5,s1
   10684:	1440006f          	j	107c8 <__adddf3+0x358>
   10688:	7ff00693          	li	a3,2047
   1068c:	e8d404e3          	beq	s0,a3,10514 <__adddf3+0xa4>
   10690:	03800693          	li	a3,56
   10694:	02a6d263          	ble	a0,a3,106b8 <__adddf3+0x248>
   10698:	00100713          	li	a4,1
   1069c:	fc9ff06f          	j	10664 <__adddf3+0x1f4>
   106a0:	7ff00693          	li	a3,2047
   106a4:	e6d408e3          	beq	s0,a3,10514 <__adddf3+0xa4>
   106a8:	00100693          	li	a3,1
   106ac:	03769693          	slli	a3,a3,0x37
   106b0:	00d76733          	or	a4,a4,a3
   106b4:	fddff06f          	j	10690 <__adddf3+0x220>
   106b8:	04000693          	li	a3,64
   106bc:	00a75633          	srl	a2,a4,a0
   106c0:	40a6853b          	subw	a0,a3,a0
   106c4:	00a71733          	sll	a4,a4,a0
   106c8:	00e03733          	snez	a4,a4
   106cc:	00e66733          	or	a4,a2,a4
   106d0:	f95ff06f          	j	10664 <__adddf3+0x1f4>
   106d4:	06050a63          	beqz	a0,10748 <__adddf3+0x2d8>
   106d8:	02041663          	bnez	s0,10704 <__adddf3+0x294>
   106dc:	1e078063          	beqz	a5,108bc <__adddf3+0x44c>
   106e0:	01051863          	bne	a0,a6,106f0 <__adddf3+0x280>
   106e4:	40f707b3          	sub	a5,a4,a5
   106e8:	00060413          	mv	s0,a2
   106ec:	f81ff06f          	j	1066c <__adddf3+0x1fc>
   106f0:	7ff00513          	li	a0,2047
   106f4:	1ea61663          	bne	a2,a0,108e0 <__adddf3+0x470>
   106f8:	00070793          	mv	a5,a4
   106fc:	7ff00413          	li	s0,2047
   10700:	1c40006f          	j	108c4 <__adddf3+0x454>
   10704:	7ff00513          	li	a0,2047
   10708:	fea608e3          	beq	a2,a0,106f8 <__adddf3+0x288>
   1070c:	00100513          	li	a0,1
   10710:	03751513          	slli	a0,a0,0x37
   10714:	40d006bb          	negw	a3,a3
   10718:	00a7e7b3          	or	a5,a5,a0
   1071c:	03800513          	li	a0,56
   10720:	00d55663          	ble	a3,a0,1072c <__adddf3+0x2bc>
   10724:	00100793          	li	a5,1
   10728:	fbdff06f          	j	106e4 <__adddf3+0x274>
   1072c:	04000513          	li	a0,64
   10730:	00d7d833          	srl	a6,a5,a3
   10734:	40d506bb          	subw	a3,a0,a3
   10738:	00d797b3          	sll	a5,a5,a3
   1073c:	00f037b3          	snez	a5,a5
   10740:	00f867b3          	or	a5,a6,a5
   10744:	fa1ff06f          	j	106e4 <__adddf3+0x274>
   10748:	00140613          	addi	a2,s0,1
   1074c:	7ff67613          	andi	a2,a2,2047
   10750:	00100693          	li	a3,1
   10754:	04c6ce63          	blt	a3,a2,107b0 <__adddf3+0x340>
   10758:	04041063          	bnez	s0,10798 <__adddf3+0x328>
   1075c:	00079c63          	bnez	a5,10774 <__adddf3+0x304>
   10760:	00070793          	mv	a5,a4
   10764:	16071063          	bnez	a4,108c4 <__adddf3+0x454>
   10768:	00000793          	li	a5,0
   1076c:	00000913          	li	s2,0
   10770:	0d40006f          	j	10844 <__adddf3+0x3d4>
   10774:	da0700e3          	beqz	a4,10514 <__adddf3+0xa4>
   10778:	40e78633          	sub	a2,a5,a4
   1077c:	03769693          	slli	a3,a3,0x37
   10780:	00d676b3          	and	a3,a2,a3
   10784:	40f707b3          	sub	a5,a4,a5
   10788:	12069e63          	bnez	a3,108c4 <__adddf3+0x454>
   1078c:	fc060ee3          	beqz	a2,10768 <__adddf3+0x2f8>
   10790:	00060793          	mv	a5,a2
   10794:	d81ff06f          	j	10514 <__adddf3+0xa4>
   10798:	e80796e3          	bnez	a5,10624 <__adddf3+0x1b4>
   1079c:	e80706e3          	beqz	a4,10628 <__adddf3+0x1b8>
   107a0:	00070793          	mv	a5,a4
   107a4:	00058913          	mv	s2,a1
   107a8:	7ff00413          	li	s0,2047
   107ac:	d69ff06f          	j	10514 <__adddf3+0xa4>
   107b0:	40e784b3          	sub	s1,a5,a4
   107b4:	03769693          	slli	a3,a3,0x37
   107b8:	00d4f6b3          	and	a3,s1,a3
   107bc:	04068463          	beqz	a3,10804 <__adddf3+0x394>
   107c0:	40f704b3          	sub	s1,a4,a5
   107c4:	00058913          	mv	s2,a1
   107c8:	00048513          	mv	a0,s1
   107cc:	3e5000ef          	jal	ra,113b0 <__clzdi2>
   107d0:	ff85079b          	addiw	a5,a0,-8
   107d4:	00f494b3          	sll	s1,s1,a5
   107d8:	0287ce63          	blt	a5,s0,10814 <__adddf3+0x3a4>
   107dc:	4087843b          	subw	s0,a5,s0
   107e0:	0014041b          	addiw	s0,s0,1
   107e4:	04000513          	li	a0,64
   107e8:	0084d7b3          	srl	a5,s1,s0
   107ec:	4085043b          	subw	s0,a0,s0
   107f0:	008494b3          	sll	s1,s1,s0
   107f4:	009034b3          	snez	s1,s1
   107f8:	0097e7b3          	or	a5,a5,s1
   107fc:	00000413          	li	s0,0
   10800:	d15ff06f          	j	10514 <__adddf3+0xa4>
   10804:	fc0492e3          	bnez	s1,107c8 <__adddf3+0x358>
   10808:	00000793          	li	a5,0
   1080c:	00000413          	li	s0,0
   10810:	f5dff06f          	j	1076c <__adddf3+0x2fc>
   10814:	40f40433          	sub	s0,s0,a5
   10818:	fff00793          	li	a5,-1
   1081c:	03779793          	slli	a5,a5,0x37
   10820:	fff78793          	addi	a5,a5,-1
   10824:	00f4f7b3          	and	a5,s1,a5
   10828:	cedff06f          	j	10514 <__adddf3+0xa4>
   1082c:	00070793          	mv	a5,a4
   10830:	e15ff06f          	j	10644 <__adddf3+0x1d4>
   10834:	00070793          	mv	a5,a4
   10838:	cddff06f          	j	10514 <__adddf3+0xa4>
   1083c:	7ff00413          	li	s0,2047
   10840:	00000793          	li	a5,0
   10844:	00879713          	slli	a4,a5,0x8
   10848:	02075063          	bgez	a4,10868 <__adddf3+0x3f8>
   1084c:	00140413          	addi	s0,s0,1
   10850:	7ff00713          	li	a4,2047
   10854:	06e40c63          	beq	s0,a4,108cc <__adddf3+0x45c>
   10858:	fff00713          	li	a4,-1
   1085c:	03771713          	slli	a4,a4,0x37
   10860:	fff70713          	addi	a4,a4,-1
   10864:	00e7f7b3          	and	a5,a5,a4
   10868:	7ff00713          	li	a4,2047
   1086c:	0037d793          	srli	a5,a5,0x3
   10870:	00e41a63          	bne	s0,a4,10884 <__adddf3+0x414>
   10874:	00078863          	beqz	a5,10884 <__adddf3+0x414>
   10878:	00100793          	li	a5,1
   1087c:	03379793          	slli	a5,a5,0x33
   10880:	00000913          	li	s2,0
   10884:	7ff47513          	andi	a0,s0,2047
   10888:	fff00413          	li	s0,-1
   1088c:	00c45413          	srli	s0,s0,0xc
   10890:	0087f7b3          	and	a5,a5,s0
   10894:	01813083          	ld	ra,24(sp)
   10898:	01013403          	ld	s0,16(sp)
   1089c:	03451513          	slli	a0,a0,0x34
   108a0:	03f91913          	slli	s2,s2,0x3f
   108a4:	00a7e533          	or	a0,a5,a0
   108a8:	01256533          	or	a0,a0,s2
   108ac:	00813483          	ld	s1,8(sp)
   108b0:	00013903          	ld	s2,0(sp)
   108b4:	02010113          	addi	sp,sp,32
   108b8:	00008067          	ret
   108bc:	00070793          	mv	a5,a4
   108c0:	00060413          	mv	s0,a2
   108c4:	00058913          	mv	s2,a1
   108c8:	c4dff06f          	j	10514 <__adddf3+0xa4>
   108cc:	00000793          	li	a5,0
   108d0:	f99ff06f          	j	10868 <__adddf3+0x3f8>
   108d4:	fff6c693          	not	a3,a3
   108d8:	0006869b          	sext.w	a3,a3
   108dc:	cd9ff06f          	j	105b4 <__adddf3+0x144>
   108e0:	fff6c693          	not	a3,a3
   108e4:	0006869b          	sext.w	a3,a3
   108e8:	e35ff06f          	j	1071c <__adddf3+0x2ac>

00000000000108ec <__muldf3>:
   108ec:	fb010113          	addi	sp,sp,-80
   108f0:	03213823          	sd	s2,48(sp)
   108f4:	03455913          	srli	s2,a0,0x34
   108f8:	02913c23          	sd	s1,56(sp)
   108fc:	7ff97913          	andi	s2,s2,2047
   10900:	fff00493          	li	s1,-1
   10904:	03313423          	sd	s3,40(sp)
   10908:	01713423          	sd	s7,8(sp)
   1090c:	00c4d493          	srli	s1,s1,0xc
   10910:	04113423          	sd	ra,72(sp)
   10914:	04813023          	sd	s0,64(sp)
   10918:	03413023          	sd	s4,32(sp)
   1091c:	01513c23          	sd	s5,24(sp)
   10920:	01613823          	sd	s6,16(sp)
   10924:	0009079b          	sext.w	a5,s2
   10928:	00058b93          	mv	s7,a1
   1092c:	00a4f4b3          	and	s1,s1,a0
   10930:	03f55993          	srli	s3,a0,0x3f
   10934:	08078e63          	beqz	a5,109d0 <__muldf3+0xe4>
   10938:	7ff00713          	li	a4,2047
   1093c:	0ae78c63          	beq	a5,a4,109f4 <__muldf3+0x108>
   10940:	00100793          	li	a5,1
   10944:	00349493          	slli	s1,s1,0x3
   10948:	03779793          	slli	a5,a5,0x37
   1094c:	00f4e4b3          	or	s1,s1,a5
   10950:	c0190913          	addi	s2,s2,-1023
   10954:	00000a93          	li	s5,0
   10958:	034bd513          	srli	a0,s7,0x34
   1095c:	fff00413          	li	s0,-1
   10960:	7ff57513          	andi	a0,a0,2047
   10964:	00c45413          	srli	s0,s0,0xc
   10968:	0005079b          	sext.w	a5,a0
   1096c:	01747433          	and	s0,s0,s7
   10970:	03fbdb93          	srli	s7,s7,0x3f
   10974:	0a078063          	beqz	a5,10a14 <__muldf3+0x128>
   10978:	7ff00713          	li	a4,2047
   1097c:	0ae78e63          	beq	a5,a4,10a38 <__muldf3+0x14c>
   10980:	00100793          	li	a5,1
   10984:	00341413          	slli	s0,s0,0x3
   10988:	03779793          	slli	a5,a5,0x37
   1098c:	00f46433          	or	s0,s0,a5
   10990:	c0150513          	addi	a0,a0,-1023 # 11c01 <__clz_tab+0x3a9>
   10994:	00000693          	li	a3,0
   10998:	002a9793          	slli	a5,s5,0x2
   1099c:	00d7e7b3          	or	a5,a5,a3
   109a0:	00a90933          	add	s2,s2,a0
   109a4:	fff78793          	addi	a5,a5,-1
   109a8:	00e00713          	li	a4,14
   109ac:	0179ca33          	xor	s4,s3,s7
   109b0:	00190b13          	addi	s6,s2,1
   109b4:	0af76263          	bltu	a4,a5,10a58 <__muldf3+0x16c>
   109b8:	00012737          	lui	a4,0x12
   109bc:	00279793          	slli	a5,a5,0x2
   109c0:	81870713          	addi	a4,a4,-2024 # 11818 <__errno+0x14>
   109c4:	00e787b3          	add	a5,a5,a4
   109c8:	0007a783          	lw	a5,0(a5)
   109cc:	00078067          	jr	a5
   109d0:	02048c63          	beqz	s1,10a08 <__muldf3+0x11c>
   109d4:	00048513          	mv	a0,s1
   109d8:	1d9000ef          	jal	ra,113b0 <__clzdi2>
   109dc:	0005051b          	sext.w	a0,a0
   109e0:	ff85079b          	addiw	a5,a0,-8
   109e4:	c0d00913          	li	s2,-1011
   109e8:	00f494b3          	sll	s1,s1,a5
   109ec:	40a90933          	sub	s2,s2,a0
   109f0:	f65ff06f          	j	10954 <__muldf3+0x68>
   109f4:	7ff00913          	li	s2,2047
   109f8:	00200a93          	li	s5,2
   109fc:	f4048ee3          	beqz	s1,10958 <__muldf3+0x6c>
   10a00:	00300a93          	li	s5,3
   10a04:	f55ff06f          	j	10958 <__muldf3+0x6c>
   10a08:	00000913          	li	s2,0
   10a0c:	00100a93          	li	s5,1
   10a10:	f49ff06f          	j	10958 <__muldf3+0x6c>
   10a14:	02040c63          	beqz	s0,10a4c <__muldf3+0x160>
   10a18:	00040513          	mv	a0,s0
   10a1c:	195000ef          	jal	ra,113b0 <__clzdi2>
   10a20:	0005051b          	sext.w	a0,a0
   10a24:	ff85079b          	addiw	a5,a0,-8
   10a28:	00f41433          	sll	s0,s0,a5
   10a2c:	c0d00793          	li	a5,-1011
   10a30:	40a78533          	sub	a0,a5,a0
   10a34:	f61ff06f          	j	10994 <__muldf3+0xa8>
   10a38:	7ff00513          	li	a0,2047
   10a3c:	00200693          	li	a3,2
   10a40:	f4040ce3          	beqz	s0,10998 <__muldf3+0xac>
   10a44:	00300693          	li	a3,3
   10a48:	f51ff06f          	j	10998 <__muldf3+0xac>
   10a4c:	00000513          	li	a0,0
   10a50:	00100693          	li	a3,1
   10a54:	f45ff06f          	j	10998 <__muldf3+0xac>
   10a58:	fff00793          	li	a5,-1
   10a5c:	0207d793          	srli	a5,a5,0x20
   10a60:	0204da93          	srli	s5,s1,0x20
   10a64:	02045b93          	srli	s7,s0,0x20
   10a68:	00f4f4b3          	and	s1,s1,a5
   10a6c:	00f47433          	and	s0,s0,a5
   10a70:	00040593          	mv	a1,s0
   10a74:	00048513          	mv	a0,s1
   10a78:	115000ef          	jal	ra,1138c <__muldi3>
   10a7c:	00040593          	mv	a1,s0
   10a80:	00050993          	mv	s3,a0
   10a84:	000a8513          	mv	a0,s5
   10a88:	105000ef          	jal	ra,1138c <__muldi3>
   10a8c:	00050413          	mv	s0,a0
   10a90:	000b8593          	mv	a1,s7
   10a94:	000a8513          	mv	a0,s5
   10a98:	0f5000ef          	jal	ra,1138c <__muldi3>
   10a9c:	00050a93          	mv	s5,a0
   10aa0:	00048593          	mv	a1,s1
   10aa4:	000b8513          	mv	a0,s7
   10aa8:	0e5000ef          	jal	ra,1138c <__muldi3>
   10aac:	00850533          	add	a0,a0,s0
   10ab0:	0209d793          	srli	a5,s3,0x20
   10ab4:	00a78533          	add	a0,a5,a0
   10ab8:	00857863          	bleu	s0,a0,10ac8 <__muldf3+0x1dc>
   10abc:	00100793          	li	a5,1
   10ac0:	02079793          	slli	a5,a5,0x20
   10ac4:	00fa8ab3          	add	s5,s5,a5
   10ac8:	fff00713          	li	a4,-1
   10acc:	02075713          	srli	a4,a4,0x20
   10ad0:	00e577b3          	and	a5,a0,a4
   10ad4:	02079793          	slli	a5,a5,0x20
   10ad8:	00e9f9b3          	and	s3,s3,a4
   10adc:	013787b3          	add	a5,a5,s3
   10ae0:	00979413          	slli	s0,a5,0x9
   10ae4:	00803433          	snez	s0,s0
   10ae8:	0377d793          	srli	a5,a5,0x37
   10aec:	00f467b3          	or	a5,s0,a5
   10af0:	02055413          	srli	s0,a0,0x20
   10af4:	01540433          	add	s0,s0,s5
   10af8:	00941413          	slli	s0,s0,0x9
   10afc:	00f46433          	or	s0,s0,a5
   10b00:	00741793          	slli	a5,s0,0x7
   10b04:	0c07de63          	bgez	a5,10be0 <__muldf3+0x2f4>
   10b08:	00145793          	srli	a5,s0,0x1
   10b0c:	00147413          	andi	s0,s0,1
   10b10:	0087e433          	or	s0,a5,s0
   10b14:	3ffb0713          	addi	a4,s6,1023
   10b18:	0ce05863          	blez	a4,10be8 <__muldf3+0x2fc>
   10b1c:	00747793          	andi	a5,s0,7
   10b20:	00078a63          	beqz	a5,10b34 <__muldf3+0x248>
   10b24:	00f47793          	andi	a5,s0,15
   10b28:	00400693          	li	a3,4
   10b2c:	00d78463          	beq	a5,a3,10b34 <__muldf3+0x248>
   10b30:	00440413          	addi	s0,s0,4
   10b34:	00741793          	slli	a5,s0,0x7
   10b38:	0007dc63          	bgez	a5,10b50 <__muldf3+0x264>
   10b3c:	fff00793          	li	a5,-1
   10b40:	03879793          	slli	a5,a5,0x38
   10b44:	fff78793          	addi	a5,a5,-1
   10b48:	00f47433          	and	s0,s0,a5
   10b4c:	400b0713          	addi	a4,s6,1024
   10b50:	7fe00793          	li	a5,2046
   10b54:	10e7c063          	blt	a5,a4,10c54 <__muldf3+0x368>
   10b58:	00345793          	srli	a5,s0,0x3
   10b5c:	0300006f          	j	10b8c <__muldf3+0x2a0>
   10b60:	00098a13          	mv	s4,s3
   10b64:	00048413          	mv	s0,s1
   10b68:	000a8693          	mv	a3,s5
   10b6c:	00200793          	li	a5,2
   10b70:	0ef68263          	beq	a3,a5,10c54 <__muldf3+0x368>
   10b74:	00300793          	li	a5,3
   10b78:	0cf68463          	beq	a3,a5,10c40 <__muldf3+0x354>
   10b7c:	00100613          	li	a2,1
   10b80:	00000793          	li	a5,0
   10b84:	00000713          	li	a4,0
   10b88:	f8c696e3          	bne	a3,a2,10b14 <__muldf3+0x228>
   10b8c:	fff00513          	li	a0,-1
   10b90:	00c55513          	srli	a0,a0,0xc
   10b94:	04813083          	ld	ra,72(sp)
   10b98:	04013403          	ld	s0,64(sp)
   10b9c:	7ff77713          	andi	a4,a4,2047
   10ba0:	00a7f7b3          	and	a5,a5,a0
   10ba4:	03471713          	slli	a4,a4,0x34
   10ba8:	03fa1513          	slli	a0,s4,0x3f
   10bac:	00e7e7b3          	or	a5,a5,a4
   10bb0:	03813483          	ld	s1,56(sp)
   10bb4:	03013903          	ld	s2,48(sp)
   10bb8:	02813983          	ld	s3,40(sp)
   10bbc:	02013a03          	ld	s4,32(sp)
   10bc0:	01813a83          	ld	s5,24(sp)
   10bc4:	01013b03          	ld	s6,16(sp)
   10bc8:	00813b83          	ld	s7,8(sp)
   10bcc:	00a7e533          	or	a0,a5,a0
   10bd0:	05010113          	addi	sp,sp,80
   10bd4:	00008067          	ret
   10bd8:	000b8a13          	mv	s4,s7
   10bdc:	f91ff06f          	j	10b6c <__muldf3+0x280>
   10be0:	00090b13          	mv	s6,s2
   10be4:	f31ff06f          	j	10b14 <__muldf3+0x228>
   10be8:	00100793          	li	a5,1
   10bec:	40e78733          	sub	a4,a5,a4
   10bf0:	03800793          	li	a5,56
   10bf4:	06e7c663          	blt	a5,a4,10c60 <__muldf3+0x374>
   10bf8:	0007071b          	sext.w	a4,a4
   10bfc:	04000693          	li	a3,64
   10c00:	00e457b3          	srl	a5,s0,a4
   10c04:	40e6873b          	subw	a4,a3,a4
   10c08:	00e41433          	sll	s0,s0,a4
   10c0c:	00803433          	snez	s0,s0
   10c10:	0087e433          	or	s0,a5,s0
   10c14:	00747793          	andi	a5,s0,7
   10c18:	00078a63          	beqz	a5,10c2c <__muldf3+0x340>
   10c1c:	00f47793          	andi	a5,s0,15
   10c20:	00400713          	li	a4,4
   10c24:	00e78463          	beq	a5,a4,10c2c <__muldf3+0x340>
   10c28:	00440413          	addi	s0,s0,4
   10c2c:	00841793          	slli	a5,s0,0x8
   10c30:	0207cc63          	bltz	a5,10c68 <__muldf3+0x37c>
   10c34:	00345793          	srli	a5,s0,0x3
   10c38:	00000713          	li	a4,0
   10c3c:	f51ff06f          	j	10b8c <__muldf3+0x2a0>
   10c40:	00100793          	li	a5,1
   10c44:	03379793          	slli	a5,a5,0x33
   10c48:	7ff00713          	li	a4,2047
   10c4c:	00000a13          	li	s4,0
   10c50:	f3dff06f          	j	10b8c <__muldf3+0x2a0>
   10c54:	00000793          	li	a5,0
   10c58:	7ff00713          	li	a4,2047
   10c5c:	f31ff06f          	j	10b8c <__muldf3+0x2a0>
   10c60:	00000793          	li	a5,0
   10c64:	fd5ff06f          	j	10c38 <__muldf3+0x34c>
   10c68:	00000793          	li	a5,0
   10c6c:	00100713          	li	a4,1
   10c70:	f1dff06f          	j	10b8c <__muldf3+0x2a0>

0000000000010c74 <__subdf3>:
   10c74:	fff00693          	li	a3,-1
   10c78:	fe010113          	addi	sp,sp,-32
   10c7c:	00c6d693          	srli	a3,a3,0xc
   10c80:	00a6f733          	and	a4,a3,a0
   10c84:	03455813          	srli	a6,a0,0x34
   10c88:	01213023          	sd	s2,0(sp)
   10c8c:	03f55913          	srli	s2,a0,0x3f
   10c90:	0345d513          	srli	a0,a1,0x34
   10c94:	00b6f7b3          	and	a5,a3,a1
   10c98:	00813823          	sd	s0,16(sp)
   10c9c:	7ff87813          	andi	a6,a6,2047
   10ca0:	00113c23          	sd	ra,24(sp)
   10ca4:	00913423          	sd	s1,8(sp)
   10ca8:	7ff57513          	andi	a0,a0,2047
   10cac:	7ff00693          	li	a3,2047
   10cb0:	00080413          	mv	s0,a6
   10cb4:	00371713          	slli	a4,a4,0x3
   10cb8:	03f5d593          	srli	a1,a1,0x3f
   10cbc:	00379793          	slli	a5,a5,0x3
   10cc0:	00d51463          	bne	a0,a3,10cc8 <__subdf3+0x54>
   10cc4:	00079463          	bnez	a5,10ccc <__subdf3+0x58>
   10cc8:	0015c593          	xori	a1,a1,1
   10ccc:	40a806bb          	subw	a3,a6,a0
   10cd0:	0006861b          	sext.w	a2,a3
   10cd4:	19259e63          	bne	a1,s2,10e70 <__subdf3+0x1fc>
   10cd8:	08c05e63          	blez	a2,10d74 <__subdf3+0x100>
   10cdc:	04051c63          	bnez	a0,10d34 <__subdf3+0xc0>
   10ce0:	04078663          	beqz	a5,10d2c <__subdf3+0xb8>
   10ce4:	fff6861b          	addiw	a2,a3,-1
   10ce8:	02061e63          	bnez	a2,10d24 <__subdf3+0xb0>
   10cec:	00e787b3          	add	a5,a5,a4
   10cf0:	00879713          	slli	a4,a5,0x8
   10cf4:	12075c63          	bgez	a4,10e2c <__subdf3+0x1b8>
   10cf8:	00140413          	addi	s0,s0,1
   10cfc:	7ff00713          	li	a4,2047
   10d00:	34e40a63          	beq	s0,a4,11054 <__subdf3+0x3e0>
   10d04:	1ff00713          	li	a4,511
   10d08:	03671713          	slli	a4,a4,0x36
   10d0c:	0017f693          	andi	a3,a5,1
   10d10:	fff70713          	addi	a4,a4,-1
   10d14:	0017d793          	srli	a5,a5,0x1
   10d18:	00e7f7b3          	and	a5,a5,a4
   10d1c:	00d7e7b3          	or	a5,a5,a3
   10d20:	10c0006f          	j	10e2c <__subdf3+0x1b8>
   10d24:	7ff00693          	li	a3,2047
   10d28:	02d81063          	bne	a6,a3,10d48 <__subdf3+0xd4>
   10d2c:	00070793          	mv	a5,a4
   10d30:	0fc0006f          	j	10e2c <__subdf3+0x1b8>
   10d34:	7ff00693          	li	a3,2047
   10d38:	fed80ae3          	beq	a6,a3,10d2c <__subdf3+0xb8>
   10d3c:	00100693          	li	a3,1
   10d40:	03769693          	slli	a3,a3,0x37
   10d44:	00d7e7b3          	or	a5,a5,a3
   10d48:	03800693          	li	a3,56
   10d4c:	00c6d663          	ble	a2,a3,10d58 <__subdf3+0xe4>
   10d50:	00100793          	li	a5,1
   10d54:	f99ff06f          	j	10cec <__subdf3+0x78>
   10d58:	04000693          	li	a3,64
   10d5c:	00c7d5b3          	srl	a1,a5,a2
   10d60:	40c6863b          	subw	a2,a3,a2
   10d64:	00c797b3          	sll	a5,a5,a2
   10d68:	00f037b3          	snez	a5,a5
   10d6c:	00f5e7b3          	or	a5,a1,a5
   10d70:	f7dff06f          	j	10cec <__subdf3+0x78>
   10d74:	06060c63          	beqz	a2,10dec <__subdf3+0x178>
   10d78:	02081863          	bnez	a6,10da8 <__subdf3+0x134>
   10d7c:	2c070663          	beqz	a4,11048 <__subdf3+0x3d4>
   10d80:	fff00593          	li	a1,-1
   10d84:	00b61863          	bne	a2,a1,10d94 <__subdf3+0x120>
   10d88:	00e787b3          	add	a5,a5,a4
   10d8c:	00050413          	mv	s0,a0
   10d90:	f61ff06f          	j	10cf0 <__subdf3+0x7c>
   10d94:	7ff00613          	li	a2,2047
   10d98:	fff6c693          	not	a3,a3
   10d9c:	02c51263          	bne	a0,a2,10dc0 <__subdf3+0x14c>
   10da0:	7ff00413          	li	s0,2047
   10da4:	0880006f          	j	10e2c <__subdf3+0x1b8>
   10da8:	7ff00613          	li	a2,2047
   10dac:	fec50ae3          	beq	a0,a2,10da0 <__subdf3+0x12c>
   10db0:	00100613          	li	a2,1
   10db4:	03761613          	slli	a2,a2,0x37
   10db8:	40d006bb          	negw	a3,a3
   10dbc:	00c76733          	or	a4,a4,a2
   10dc0:	03800613          	li	a2,56
   10dc4:	00d65663          	ble	a3,a2,10dd0 <__subdf3+0x15c>
   10dc8:	00100713          	li	a4,1
   10dcc:	fbdff06f          	j	10d88 <__subdf3+0x114>
   10dd0:	04000613          	li	a2,64
   10dd4:	00d755b3          	srl	a1,a4,a3
   10dd8:	40d606bb          	subw	a3,a2,a3
   10ddc:	00d71733          	sll	a4,a4,a3
   10de0:	00e03733          	snez	a4,a4
   10de4:	00e5e733          	or	a4,a1,a4
   10de8:	fa1ff06f          	j	10d88 <__subdf3+0x114>
   10dec:	00180613          	addi	a2,a6,1
   10df0:	7ff67593          	andi	a1,a2,2047
   10df4:	00100693          	li	a3,1
   10df8:	06b6c063          	blt	a3,a1,10e58 <__subdf3+0x1e4>
   10dfc:	04081663          	bnez	a6,10e48 <__subdf3+0x1d4>
   10e00:	02070663          	beqz	a4,10e2c <__subdf3+0x1b8>
   10e04:	f20784e3          	beqz	a5,10d2c <__subdf3+0xb8>
   10e08:	00e787b3          	add	a5,a5,a4
   10e0c:	03769693          	slli	a3,a3,0x37
   10e10:	00d7f6b3          	and	a3,a5,a3
   10e14:	00068c63          	beqz	a3,10e2c <__subdf3+0x1b8>
   10e18:	fff00713          	li	a4,-1
   10e1c:	03771713          	slli	a4,a4,0x37
   10e20:	fff70713          	addi	a4,a4,-1
   10e24:	00e7f7b3          	and	a5,a5,a4
   10e28:	00100413          	li	s0,1
   10e2c:	0077f713          	andi	a4,a5,7
   10e30:	22070463          	beqz	a4,11058 <__subdf3+0x3e4>
   10e34:	00f7f713          	andi	a4,a5,15
   10e38:	00400693          	li	a3,4
   10e3c:	20d70e63          	beq	a4,a3,11058 <__subdf3+0x3e4>
   10e40:	00478793          	addi	a5,a5,4
   10e44:	2140006f          	j	11058 <__subdf3+0x3e4>
   10e48:	f4070ce3          	beqz	a4,10da0 <__subdf3+0x12c>
   10e4c:	16079a63          	bnez	a5,10fc0 <__subdf3+0x34c>
   10e50:	00070793          	mv	a5,a4
   10e54:	f4dff06f          	j	10da0 <__subdf3+0x12c>
   10e58:	7ff00693          	li	a3,2047
   10e5c:	1ed60a63          	beq	a2,a3,11050 <__subdf3+0x3dc>
   10e60:	00f707b3          	add	a5,a4,a5
   10e64:	0017d793          	srli	a5,a5,0x1
   10e68:	00060413          	mv	s0,a2
   10e6c:	fc1ff06f          	j	10e2c <__subdf3+0x1b8>
   10e70:	08c05263          	blez	a2,10ef4 <__subdf3+0x280>
   10e74:	04051663          	bnez	a0,10ec0 <__subdf3+0x24c>
   10e78:	ea078ae3          	beqz	a5,10d2c <__subdf3+0xb8>
   10e7c:	fff6861b          	addiw	a2,a3,-1
   10e80:	02061463          	bnez	a2,10ea8 <__subdf3+0x234>
   10e84:	40f707b3          	sub	a5,a4,a5
   10e88:	00090593          	mv	a1,s2
   10e8c:	00879713          	slli	a4,a5,0x8
   10e90:	00058913          	mv	s2,a1
   10e94:	f8075ce3          	bgez	a4,10e2c <__subdf3+0x1b8>
   10e98:	fff00493          	li	s1,-1
   10e9c:	0094d493          	srli	s1,s1,0x9
   10ea0:	0097f4b3          	and	s1,a5,s1
   10ea4:	1400006f          	j	10fe4 <__subdf3+0x370>
   10ea8:	7ff00693          	li	a3,2047
   10eac:	e8d800e3          	beq	a6,a3,10d2c <__subdf3+0xb8>
   10eb0:	03800693          	li	a3,56
   10eb4:	02c6d263          	ble	a2,a3,10ed8 <__subdf3+0x264>
   10eb8:	00100793          	li	a5,1
   10ebc:	fc9ff06f          	j	10e84 <__subdf3+0x210>
   10ec0:	7ff00693          	li	a3,2047
   10ec4:	e6d804e3          	beq	a6,a3,10d2c <__subdf3+0xb8>
   10ec8:	00100693          	li	a3,1
   10ecc:	03769693          	slli	a3,a3,0x37
   10ed0:	00d7e7b3          	or	a5,a5,a3
   10ed4:	fddff06f          	j	10eb0 <__subdf3+0x23c>
   10ed8:	04000693          	li	a3,64
   10edc:	00c7d5b3          	srl	a1,a5,a2
   10ee0:	40c6863b          	subw	a2,a3,a2
   10ee4:	00c797b3          	sll	a5,a5,a2
   10ee8:	00f037b3          	snez	a5,a5
   10eec:	00f5e7b3          	or	a5,a1,a5
   10ef0:	f95ff06f          	j	10e84 <__subdf3+0x210>
   10ef4:	06060c63          	beqz	a2,10f6c <__subdf3+0x2f8>
   10ef8:	02081863          	bnez	a6,10f28 <__subdf3+0x2b4>
   10efc:	1c070a63          	beqz	a4,110d0 <__subdf3+0x45c>
   10f00:	fff00813          	li	a6,-1
   10f04:	01061863          	bne	a2,a6,10f14 <__subdf3+0x2a0>
   10f08:	40e787b3          	sub	a5,a5,a4
   10f0c:	00050413          	mv	s0,a0
   10f10:	f7dff06f          	j	10e8c <__subdf3+0x218>
   10f14:	7ff00613          	li	a2,2047
   10f18:	fff6c693          	not	a3,a3
   10f1c:	02c51263          	bne	a0,a2,10f40 <__subdf3+0x2cc>
   10f20:	7ff00413          	li	s0,2047
   10f24:	1b00006f          	j	110d4 <__subdf3+0x460>
   10f28:	7ff00613          	li	a2,2047
   10f2c:	fec50ae3          	beq	a0,a2,10f20 <__subdf3+0x2ac>
   10f30:	00100613          	li	a2,1
   10f34:	03761613          	slli	a2,a2,0x37
   10f38:	40d006bb          	negw	a3,a3
   10f3c:	00c76733          	or	a4,a4,a2
   10f40:	03800613          	li	a2,56
   10f44:	00d65663          	ble	a3,a2,10f50 <__subdf3+0x2dc>
   10f48:	00100713          	li	a4,1
   10f4c:	fbdff06f          	j	10f08 <__subdf3+0x294>
   10f50:	04000613          	li	a2,64
   10f54:	00d75833          	srl	a6,a4,a3
   10f58:	40d606bb          	subw	a3,a2,a3
   10f5c:	00d71733          	sll	a4,a4,a3
   10f60:	00e03733          	snez	a4,a4
   10f64:	00e86733          	or	a4,a6,a4
   10f68:	fa1ff06f          	j	10f08 <__subdf3+0x294>
   10f6c:	00180613          	addi	a2,a6,1
   10f70:	7ff67613          	andi	a2,a2,2047
   10f74:	00100693          	li	a3,1
   10f78:	04c6ca63          	blt	a3,a2,10fcc <__subdf3+0x358>
   10f7c:	02081e63          	bnez	a6,10fb8 <__subdf3+0x344>
   10f80:	00071863          	bnez	a4,10f90 <__subdf3+0x31c>
   10f84:	14079863          	bnez	a5,110d4 <__subdf3+0x460>
   10f88:	00000913          	li	s2,0
   10f8c:	0cc0006f          	j	11058 <__subdf3+0x3e4>
   10f90:	d8078ee3          	beqz	a5,10d2c <__subdf3+0xb8>
   10f94:	40f70633          	sub	a2,a4,a5
   10f98:	03769693          	slli	a3,a3,0x37
   10f9c:	00d676b3          	and	a3,a2,a3
   10fa0:	40e787b3          	sub	a5,a5,a4
   10fa4:	12069863          	bnez	a3,110d4 <__subdf3+0x460>
   10fa8:	00060793          	mv	a5,a2
   10fac:	e80610e3          	bnez	a2,10e2c <__subdf3+0x1b8>
   10fb0:	00000793          	li	a5,0
   10fb4:	fd5ff06f          	j	10f88 <__subdf3+0x314>
   10fb8:	e8071ae3          	bnez	a4,10e4c <__subdf3+0x1d8>
   10fbc:	12079063          	bnez	a5,110dc <__subdf3+0x468>
   10fc0:	03669793          	slli	a5,a3,0x36
   10fc4:	7ff00413          	li	s0,2047
   10fc8:	fc1ff06f          	j	10f88 <__subdf3+0x314>
   10fcc:	40f704b3          	sub	s1,a4,a5
   10fd0:	03769693          	slli	a3,a3,0x37
   10fd4:	00d4f6b3          	and	a3,s1,a3
   10fd8:	04068463          	beqz	a3,11020 <__subdf3+0x3ac>
   10fdc:	40e784b3          	sub	s1,a5,a4
   10fe0:	00058913          	mv	s2,a1
   10fe4:	00048513          	mv	a0,s1
   10fe8:	3c8000ef          	jal	ra,113b0 <__clzdi2>
   10fec:	ff85079b          	addiw	a5,a0,-8
   10ff0:	00f494b3          	sll	s1,s1,a5
   10ff4:	0287ce63          	blt	a5,s0,11030 <__subdf3+0x3bc>
   10ff8:	4087843b          	subw	s0,a5,s0
   10ffc:	0014041b          	addiw	s0,s0,1
   11000:	04000513          	li	a0,64
   11004:	0084d7b3          	srl	a5,s1,s0
   11008:	4085043b          	subw	s0,a0,s0
   1100c:	008494b3          	sll	s1,s1,s0
   11010:	009034b3          	snez	s1,s1
   11014:	0097e7b3          	or	a5,a5,s1
   11018:	00000413          	li	s0,0
   1101c:	e11ff06f          	j	10e2c <__subdf3+0x1b8>
   11020:	fc0492e3          	bnez	s1,10fe4 <__subdf3+0x370>
   11024:	00000793          	li	a5,0
   11028:	00000413          	li	s0,0
   1102c:	f5dff06f          	j	10f88 <__subdf3+0x314>
   11030:	40f40433          	sub	s0,s0,a5
   11034:	fff00793          	li	a5,-1
   11038:	03779793          	slli	a5,a5,0x37
   1103c:	fff78793          	addi	a5,a5,-1
   11040:	00f4f7b3          	and	a5,s1,a5
   11044:	de9ff06f          	j	10e2c <__subdf3+0x1b8>
   11048:	00050413          	mv	s0,a0
   1104c:	de1ff06f          	j	10e2c <__subdf3+0x1b8>
   11050:	7ff00413          	li	s0,2047
   11054:	00000793          	li	a5,0
   11058:	00879713          	slli	a4,a5,0x8
   1105c:	02075063          	bgez	a4,1107c <__subdf3+0x408>
   11060:	00140413          	addi	s0,s0,1
   11064:	7ff00713          	li	a4,2047
   11068:	06e40e63          	beq	s0,a4,110e4 <__subdf3+0x470>
   1106c:	fff00713          	li	a4,-1
   11070:	03771713          	slli	a4,a4,0x37
   11074:	fff70713          	addi	a4,a4,-1
   11078:	00e7f7b3          	and	a5,a5,a4
   1107c:	7ff00713          	li	a4,2047
   11080:	0037d793          	srli	a5,a5,0x3
   11084:	00e41a63          	bne	s0,a4,11098 <__subdf3+0x424>
   11088:	00078863          	beqz	a5,11098 <__subdf3+0x424>
   1108c:	00100793          	li	a5,1
   11090:	03379793          	slli	a5,a5,0x33
   11094:	00000913          	li	s2,0
   11098:	7ff47513          	andi	a0,s0,2047
   1109c:	fff00413          	li	s0,-1
   110a0:	00c45413          	srli	s0,s0,0xc
   110a4:	0087f7b3          	and	a5,a5,s0
   110a8:	01813083          	ld	ra,24(sp)
   110ac:	01013403          	ld	s0,16(sp)
   110b0:	03451513          	slli	a0,a0,0x34
   110b4:	03f91913          	slli	s2,s2,0x3f
   110b8:	00a7e533          	or	a0,a5,a0
   110bc:	01256533          	or	a0,a0,s2
   110c0:	00813483          	ld	s1,8(sp)
   110c4:	00013903          	ld	s2,0(sp)
   110c8:	02010113          	addi	sp,sp,32
   110cc:	00008067          	ret
   110d0:	00050413          	mv	s0,a0
   110d4:	00058913          	mv	s2,a1
   110d8:	d55ff06f          	j	10e2c <__subdf3+0x1b8>
   110dc:	00058913          	mv	s2,a1
   110e0:	cc1ff06f          	j	10da0 <__subdf3+0x12c>
   110e4:	00000793          	li	a5,0
   110e8:	f95ff06f          	j	1107c <__subdf3+0x408>

00000000000110ec <__floatsidf>:
   110ec:	fe010113          	addi	sp,sp,-32
   110f0:	00113c23          	sd	ra,24(sp)
   110f4:	00813823          	sd	s0,16(sp)
   110f8:	00913423          	sd	s1,8(sp)
   110fc:	06050663          	beqz	a0,11168 <__floatsidf+0x7c>
   11100:	0005079b          	sext.w	a5,a0
   11104:	03f55493          	srli	s1,a0,0x3f
   11108:	00055463          	bgez	a0,11110 <__floatsidf+0x24>
   1110c:	40f007bb          	negw	a5,a5
   11110:	02079413          	slli	s0,a5,0x20
   11114:	02045413          	srli	s0,s0,0x20
   11118:	00040513          	mv	a0,s0
   1111c:	294000ef          	jal	ra,113b0 <__clzdi2>
   11120:	43e00793          	li	a5,1086
   11124:	40a7873b          	subw	a4,a5,a0
   11128:	43300793          	li	a5,1075
   1112c:	40e787bb          	subw	a5,a5,a4
   11130:	00f417b3          	sll	a5,s0,a5
   11134:	fff00413          	li	s0,-1
   11138:	00c45413          	srli	s0,s0,0xc
   1113c:	0087f7b3          	and	a5,a5,s0
   11140:	01813083          	ld	ra,24(sp)
   11144:	01013403          	ld	s0,16(sp)
   11148:	7ff77713          	andi	a4,a4,2047
   1114c:	03471713          	slli	a4,a4,0x34
   11150:	03f49513          	slli	a0,s1,0x3f
   11154:	00e7e7b3          	or	a5,a5,a4
   11158:	00813483          	ld	s1,8(sp)
   1115c:	00a7e533          	or	a0,a5,a0
   11160:	02010113          	addi	sp,sp,32
   11164:	00008067          	ret
   11168:	00000793          	li	a5,0
   1116c:	00000713          	li	a4,0
   11170:	00000493          	li	s1,0
   11174:	fc1ff06f          	j	11134 <__floatsidf+0x48>

0000000000011178 <__extendsfdf2>:
   11178:	fe010113          	addi	sp,sp,-32
   1117c:	0175579b          	srliw	a5,a0,0x17
   11180:	00813823          	sd	s0,16(sp)
   11184:	00800437          	lui	s0,0x800
   11188:	fff40413          	addi	s0,s0,-1 # 7fffff <__global_pointer$+0x7ed027>
   1118c:	0ff7f793          	andi	a5,a5,255
   11190:	00a47433          	and	s0,s0,a0
   11194:	00178693          	addi	a3,a5,1
   11198:	00913423          	sd	s1,8(sp)
   1119c:	02041413          	slli	s0,s0,0x20
   111a0:	01f5551b          	srliw	a0,a0,0x1f
   111a4:	00113c23          	sd	ra,24(sp)
   111a8:	0ff6f693          	andi	a3,a3,255
   111ac:	00100713          	li	a4,1
   111b0:	02045413          	srli	s0,s0,0x20
   111b4:	0ff57493          	andi	s1,a0,255
   111b8:	04d75063          	ble	a3,a4,111f8 <__extendsfdf2+0x80>
   111bc:	38078513          	addi	a0,a5,896
   111c0:	01d41413          	slli	s0,s0,0x1d
   111c4:	7ff57513          	andi	a0,a0,2047
   111c8:	03451793          	slli	a5,a0,0x34
   111cc:	fff00513          	li	a0,-1
   111d0:	00c55513          	srli	a0,a0,0xc
   111d4:	00a47433          	and	s0,s0,a0
   111d8:	00f46433          	or	s0,s0,a5
   111dc:	03f49513          	slli	a0,s1,0x3f
   111e0:	00a46533          	or	a0,s0,a0
   111e4:	01813083          	ld	ra,24(sp)
   111e8:	01013403          	ld	s0,16(sp)
   111ec:	00813483          	ld	s1,8(sp)
   111f0:	02010113          	addi	sp,sp,32
   111f4:	00008067          	ret
   111f8:	02079463          	bnez	a5,11220 <__extendsfdf2+0xa8>
   111fc:	00000513          	li	a0,0
   11200:	fc0402e3          	beqz	s0,111c4 <__extendsfdf2+0x4c>
   11204:	00040513          	mv	a0,s0
   11208:	1a8000ef          	jal	ra,113b0 <__clzdi2>
   1120c:	ff55079b          	addiw	a5,a0,-11
   11210:	00f41433          	sll	s0,s0,a5
   11214:	3a900793          	li	a5,937
   11218:	40a7853b          	subw	a0,a5,a0
   1121c:	fa9ff06f          	j	111c4 <__extendsfdf2+0x4c>
   11220:	7ff00513          	li	a0,2047
   11224:	fa0400e3          	beqz	s0,111c4 <__extendsfdf2+0x4c>
   11228:	01d41413          	slli	s0,s0,0x1d
   1122c:	03371713          	slli	a4,a4,0x33
   11230:	00e46433          	or	s0,s0,a4
   11234:	f91ff06f          	j	111c4 <__extendsfdf2+0x4c>

0000000000011238 <__truncdfsf2>:
   11238:	03455713          	srli	a4,a0,0x34
   1123c:	fff00693          	li	a3,-1
   11240:	7ff77713          	andi	a4,a4,2047
   11244:	00c6d693          	srli	a3,a3,0xc
   11248:	00170593          	addi	a1,a4,1
   1124c:	00a6f6b3          	and	a3,a3,a0
   11250:	7ff5f593          	andi	a1,a1,2047
   11254:	00100613          	li	a2,1
   11258:	03f55513          	srli	a0,a0,0x3f
   1125c:	00369793          	slli	a5,a3,0x3
   11260:	06b65463          	ble	a1,a2,112c8 <__truncdfsf2+0x90>
   11264:	c8070713          	addi	a4,a4,-896
   11268:	0fe00593          	li	a1,254
   1126c:	08e5c063          	blt	a1,a4,112ec <__truncdfsf2+0xb4>
   11270:	04e04263          	bgtz	a4,112b4 <__truncdfsf2+0x7c>
   11274:	fe900693          	li	a3,-23
   11278:	0ed74863          	blt	a4,a3,11368 <__truncdfsf2+0x130>
   1127c:	0007071b          	sext.w	a4,a4
   11280:	03761613          	slli	a2,a2,0x37
   11284:	01e00693          	li	a3,30
   11288:	00c7e7b3          	or	a5,a5,a2
   1128c:	40e686bb          	subw	a3,a3,a4
   11290:	0227071b          	addiw	a4,a4,34
   11294:	00d7d6b3          	srl	a3,a5,a3
   11298:	00e797b3          	sll	a5,a5,a4
   1129c:	00f037b3          	snez	a5,a5
   112a0:	00f6e7b3          	or	a5,a3,a5
   112a4:	00000713          	li	a4,0
   112a8:	0077f693          	andi	a3,a5,7
   112ac:	04068463          	beqz	a3,112f4 <__truncdfsf2+0xbc>
   112b0:	0c00006f          	j	11370 <__truncdfsf2+0x138>
   112b4:	02669693          	slli	a3,a3,0x26
   112b8:	01d7d793          	srli	a5,a5,0x1d
   112bc:	00d036b3          	snez	a3,a3
   112c0:	00d7e7b3          	or	a5,a5,a3
   112c4:	fe5ff06f          	j	112a8 <__truncdfsf2+0x70>
   112c8:	00071663          	bnez	a4,112d4 <__truncdfsf2+0x9c>
   112cc:	00f037b3          	snez	a5,a5
   112d0:	fd9ff06f          	j	112a8 <__truncdfsf2+0x70>
   112d4:	0ff00713          	li	a4,255
   112d8:	00078e63          	beqz	a5,112f4 <__truncdfsf2+0xbc>
   112dc:	01d7d793          	srli	a5,a5,0x1d
   112e0:	ff87f793          	andi	a5,a5,-8
   112e4:	020006b7          	lui	a3,0x2000
   112e8:	fd9ff06f          	j	112c0 <__truncdfsf2+0x88>
   112ec:	00000793          	li	a5,0
   112f0:	0ff00713          	li	a4,255
   112f4:	02579693          	slli	a3,a5,0x25
   112f8:	0006de63          	bgez	a3,11314 <__truncdfsf2+0xdc>
   112fc:	00170713          	addi	a4,a4,1
   11300:	0ff00693          	li	a3,255
   11304:	08d70063          	beq	a4,a3,11384 <__truncdfsf2+0x14c>
   11308:	fc0006b7          	lui	a3,0xfc000
   1130c:	fff68693          	addi	a3,a3,-1 # fffffffffbffffff <__global_pointer$+0xfffffffffbfed027>
   11310:	00d7f7b3          	and	a5,a5,a3
   11314:	0ff00693          	li	a3,255
   11318:	0037d793          	srli	a5,a5,0x3
   1131c:	00d71863          	bne	a4,a3,1132c <__truncdfsf2+0xf4>
   11320:	00078663          	beqz	a5,1132c <__truncdfsf2+0xf4>
   11324:	004007b7          	lui	a5,0x400
   11328:	00000513          	li	a0,0
   1132c:	008006b7          	lui	a3,0x800
   11330:	fff68693          	addi	a3,a3,-1 # 7fffff <__global_pointer$+0x7ed027>
   11334:	00d7f7b3          	and	a5,a5,a3
   11338:	808006b7          	lui	a3,0x80800
   1133c:	fff68693          	addi	a3,a3,-1 # ffffffff807fffff <__global_pointer$+0xffffffff807ed027>
   11340:	0ff77713          	andi	a4,a4,255
   11344:	0177171b          	slliw	a4,a4,0x17
   11348:	00d7f7b3          	and	a5,a5,a3
   1134c:	00e7e7b3          	or	a5,a5,a4
   11350:	80000737          	lui	a4,0x80000
   11354:	fff74713          	not	a4,a4
   11358:	00e7f7b3          	and	a5,a5,a4
   1135c:	01f5151b          	slliw	a0,a0,0x1f
   11360:	00a7e533          	or	a0,a5,a0
   11364:	00008067          	ret
   11368:	00100793          	li	a5,1
   1136c:	00000713          	li	a4,0
   11370:	00f7f693          	andi	a3,a5,15
   11374:	00400613          	li	a2,4
   11378:	f6c68ee3          	beq	a3,a2,112f4 <__truncdfsf2+0xbc>
   1137c:	00478793          	addi	a5,a5,4 # 400004 <__global_pointer$+0x3ed02c>
   11380:	f75ff06f          	j	112f4 <__truncdfsf2+0xbc>
   11384:	00000793          	li	a5,0
   11388:	f8dff06f          	j	11314 <__truncdfsf2+0xdc>

000000000001138c <__muldi3>:
   1138c:	00050613          	mv	a2,a0
   11390:	00000513          	li	a0,0
   11394:	0015f693          	andi	a3,a1,1
   11398:	00068463          	beqz	a3,113a0 <__muldi3+0x14>
   1139c:	00c50533          	add	a0,a0,a2
   113a0:	0015d593          	srli	a1,a1,0x1
   113a4:	00161613          	slli	a2,a2,0x1
   113a8:	fe0596e3          	bnez	a1,11394 <__muldi3+0x8>
   113ac:	00008067          	ret

00000000000113b0 <__clzdi2>:
   113b0:	03800793          	li	a5,56
   113b4:	00f55733          	srl	a4,a0,a5
   113b8:	0ff77713          	andi	a4,a4,255
   113bc:	00071663          	bnez	a4,113c8 <__clzdi2+0x18>
   113c0:	ff878793          	addi	a5,a5,-8
   113c4:	fe0798e3          	bnez	a5,113b4 <__clzdi2+0x4>
   113c8:	04000713          	li	a4,64
   113cc:	40f70733          	sub	a4,a4,a5
   113d0:	00f557b3          	srl	a5,a0,a5
   113d4:	00012537          	lui	a0,0x12
   113d8:	85850513          	addi	a0,a0,-1960 # 11858 <__clz_tab>
   113dc:	00a787b3          	add	a5,a5,a0
   113e0:	0007c503          	lbu	a0,0(a5)
   113e4:	40a7053b          	subw	a0,a4,a0
   113e8:	00008067          	ret

00000000000113ec <atexit>:
   113ec:	00050593          	mv	a1,a0
   113f0:	00000693          	li	a3,0
   113f4:	00000613          	li	a2,0
   113f8:	00000513          	li	a0,0
   113fc:	2240006f          	j	11620 <__register_exitproc>

0000000000011400 <exit>:
   11400:	ff010113          	addi	sp,sp,-16
   11404:	00000593          	li	a1,0
   11408:	00813023          	sd	s0,0(sp)
   1140c:	00113423          	sd	ra,8(sp)
   11410:	00050413          	mv	s0,a0
   11414:	294000ef          	jal	ra,116a8 <__call_exitprocs>
   11418:	000127b7          	lui	a5,0x12
   1141c:	7e07b503          	ld	a0,2016(a5) # 127e0 <_global_impure_ptr>
   11420:	05853783          	ld	a5,88(a0)
   11424:	00078463          	beqz	a5,1142c <exit+0x2c>
   11428:	000780e7          	jalr	a5
   1142c:	00040513          	mv	a0,s0
   11430:	390000ef          	jal	ra,117c0 <_exit>

0000000000011434 <__libc_fini_array>:
   11434:	fe010113          	addi	sp,sp,-32
   11438:	000127b7          	lui	a5,0x12
   1143c:	00012737          	lui	a4,0x12
   11440:	00813823          	sd	s0,16(sp)
   11444:	01070713          	addi	a4,a4,16 # 12010 <__init_array_end>
   11448:	01878413          	addi	s0,a5,24 # 12018 <__fini_array_end>
   1144c:	40e40433          	sub	s0,s0,a4
   11450:	00913423          	sd	s1,8(sp)
   11454:	01213023          	sd	s2,0(sp)
   11458:	00113c23          	sd	ra,24(sp)
   1145c:	40345413          	srai	s0,s0,0x3
   11460:	00000493          	li	s1,0
   11464:	01878913          	addi	s2,a5,24
   11468:	00941e63          	bne	s0,s1,11484 <__libc_fini_array+0x50>
   1146c:	01013403          	ld	s0,16(sp)
   11470:	01813083          	ld	ra,24(sp)
   11474:	00813483          	ld	s1,8(sp)
   11478:	00013903          	ld	s2,0(sp)
   1147c:	02010113          	addi	sp,sp,32
   11480:	c71fe06f          	j	100f0 <_fini>
   11484:	ff800593          	li	a1,-8
   11488:	00048513          	mv	a0,s1
   1148c:	f01ff0ef          	jal	ra,1138c <__muldi3>
   11490:	00a90533          	add	a0,s2,a0
   11494:	ff853783          	ld	a5,-8(a0)
   11498:	00148493          	addi	s1,s1,1
   1149c:	000780e7          	jalr	a5
   114a0:	fc9ff06f          	j	11468 <__libc_fini_array+0x34>

00000000000114a4 <__libc_init_array>:
   114a4:	fe010113          	addi	sp,sp,-32
   114a8:	00813823          	sd	s0,16(sp)
   114ac:	00913423          	sd	s1,8(sp)
   114b0:	00012437          	lui	s0,0x12
   114b4:	000124b7          	lui	s1,0x12
   114b8:	00448793          	addi	a5,s1,4 # 12004 <__preinit_array_end>
   114bc:	00440413          	addi	s0,s0,4 # 12004 <__preinit_array_end>
   114c0:	40f40433          	sub	s0,s0,a5
   114c4:	01213023          	sd	s2,0(sp)
   114c8:	00113c23          	sd	ra,24(sp)
   114cc:	40345413          	srai	s0,s0,0x3
   114d0:	00448493          	addi	s1,s1,4
   114d4:	00000913          	li	s2,0
   114d8:	04891263          	bne	s2,s0,1151c <__libc_init_array+0x78>
   114dc:	000124b7          	lui	s1,0x12
   114e0:	c11fe0ef          	jal	ra,100f0 <_fini>
   114e4:	00012437          	lui	s0,0x12
   114e8:	00848793          	addi	a5,s1,8 # 12008 <__frame_dummy_init_array_entry>
   114ec:	01040413          	addi	s0,s0,16 # 12010 <__init_array_end>
   114f0:	40f40433          	sub	s0,s0,a5
   114f4:	40345413          	srai	s0,s0,0x3
   114f8:	00848493          	addi	s1,s1,8
   114fc:	00000913          	li	s2,0
   11500:	02891863          	bne	s2,s0,11530 <__libc_init_array+0x8c>
   11504:	01813083          	ld	ra,24(sp)
   11508:	01013403          	ld	s0,16(sp)
   1150c:	00813483          	ld	s1,8(sp)
   11510:	00013903          	ld	s2,0(sp)
   11514:	02010113          	addi	sp,sp,32
   11518:	00008067          	ret
   1151c:	0004b783          	ld	a5,0(s1)
   11520:	00190913          	addi	s2,s2,1
   11524:	00848493          	addi	s1,s1,8
   11528:	000780e7          	jalr	a5
   1152c:	fadff06f          	j	114d8 <__libc_init_array+0x34>
   11530:	0004b783          	ld	a5,0(s1)
   11534:	00190913          	addi	s2,s2,1
   11538:	00848493          	addi	s1,s1,8
   1153c:	000780e7          	jalr	a5
   11540:	fc1ff06f          	j	11500 <__libc_init_array+0x5c>

0000000000011544 <memset>:
   11544:	00f00313          	li	t1,15
   11548:	00050713          	mv	a4,a0
   1154c:	02c37a63          	bleu	a2,t1,11580 <memset+0x3c>
   11550:	00f77793          	andi	a5,a4,15
   11554:	0a079063          	bnez	a5,115f4 <memset+0xb0>
   11558:	06059e63          	bnez	a1,115d4 <memset+0x90>
   1155c:	ff067693          	andi	a3,a2,-16
   11560:	00f67613          	andi	a2,a2,15
   11564:	00e686b3          	add	a3,a3,a4
   11568:	00b73023          	sd	a1,0(a4)
   1156c:	00b73423          	sd	a1,8(a4)
   11570:	01070713          	addi	a4,a4,16
   11574:	fed76ae3          	bltu	a4,a3,11568 <memset+0x24>
   11578:	00061463          	bnez	a2,11580 <memset+0x3c>
   1157c:	00008067          	ret
   11580:	40c306b3          	sub	a3,t1,a2
   11584:	00269693          	slli	a3,a3,0x2
   11588:	00000297          	auipc	t0,0x0
   1158c:	005686b3          	add	a3,a3,t0
   11590:	00c68067          	jr	12(a3)
   11594:	00b70723          	sb	a1,14(a4)
   11598:	00b706a3          	sb	a1,13(a4)
   1159c:	00b70623          	sb	a1,12(a4)
   115a0:	00b705a3          	sb	a1,11(a4)
   115a4:	00b70523          	sb	a1,10(a4)
   115a8:	00b704a3          	sb	a1,9(a4)
   115ac:	00b70423          	sb	a1,8(a4)
   115b0:	00b703a3          	sb	a1,7(a4)
   115b4:	00b70323          	sb	a1,6(a4)
   115b8:	00b702a3          	sb	a1,5(a4)
   115bc:	00b70223          	sb	a1,4(a4)
   115c0:	00b701a3          	sb	a1,3(a4)
   115c4:	00b70123          	sb	a1,2(a4)
   115c8:	00b700a3          	sb	a1,1(a4)
   115cc:	00b70023          	sb	a1,0(a4)
   115d0:	00008067          	ret
   115d4:	0ff5f593          	andi	a1,a1,255
   115d8:	00859693          	slli	a3,a1,0x8
   115dc:	00d5e5b3          	or	a1,a1,a3
   115e0:	01059693          	slli	a3,a1,0x10
   115e4:	00d5e5b3          	or	a1,a1,a3
   115e8:	02059693          	slli	a3,a1,0x20
   115ec:	00d5e5b3          	or	a1,a1,a3
   115f0:	f6dff06f          	j	1155c <memset+0x18>
   115f4:	00279693          	slli	a3,a5,0x2
   115f8:	00000297          	auipc	t0,0x0
   115fc:	005686b3          	add	a3,a3,t0
   11600:	00008293          	mv	t0,ra
   11604:	f98680e7          	jalr	-104(a3)
   11608:	00028093          	mv	ra,t0
   1160c:	ff078793          	addi	a5,a5,-16
   11610:	40f70733          	sub	a4,a4,a5
   11614:	00f60633          	add	a2,a2,a5
   11618:	f6c374e3          	bleu	a2,t1,11580 <memset+0x3c>
   1161c:	f3dff06f          	j	11558 <memset+0x14>

0000000000011620 <__register_exitproc>:
   11620:	000127b7          	lui	a5,0x12
   11624:	7e07b703          	ld	a4,2016(a5) # 127e0 <_global_impure_ptr>
   11628:	00050313          	mv	t1,a0
   1162c:	1f873783          	ld	a5,504(a4)
   11630:	00079663          	bnez	a5,1163c <__register_exitproc+0x1c>
   11634:	20070793          	addi	a5,a4,512
   11638:	1ef73c23          	sd	a5,504(a4)
   1163c:	0087a703          	lw	a4,8(a5)
   11640:	01f00813          	li	a6,31
   11644:	fff00513          	li	a0,-1
   11648:	04e84e63          	blt	a6,a4,116a4 <__register_exitproc+0x84>
   1164c:	02030e63          	beqz	t1,11688 <__register_exitproc+0x68>
   11650:	00371813          	slli	a6,a4,0x3
   11654:	01078833          	add	a6,a5,a6
   11658:	10c83823          	sd	a2,272(a6)
   1165c:	3107a883          	lw	a7,784(a5)
   11660:	00100613          	li	a2,1
   11664:	00e6163b          	sllw	a2,a2,a4
   11668:	00c8e8b3          	or	a7,a7,a2
   1166c:	3117a823          	sw	a7,784(a5)
   11670:	20d83823          	sd	a3,528(a6)
   11674:	00200693          	li	a3,2
   11678:	00d31863          	bne	t1,a3,11688 <__register_exitproc+0x68>
   1167c:	3147a683          	lw	a3,788(a5)
   11680:	00c6e633          	or	a2,a3,a2
   11684:	30c7aa23          	sw	a2,788(a5)
   11688:	0017069b          	addiw	a3,a4,1
   1168c:	00270713          	addi	a4,a4,2
   11690:	00371713          	slli	a4,a4,0x3
   11694:	00d7a423          	sw	a3,8(a5)
   11698:	00e787b3          	add	a5,a5,a4
   1169c:	00b7b023          	sd	a1,0(a5)
   116a0:	00000513          	li	a0,0
   116a4:	00008067          	ret

00000000000116a8 <__call_exitprocs>:
   116a8:	fb010113          	addi	sp,sp,-80
   116ac:	000127b7          	lui	a5,0x12
   116b0:	03313423          	sd	s3,40(sp)
   116b4:	7e07b983          	ld	s3,2016(a5) # 127e0 <_global_impure_ptr>
   116b8:	03413023          	sd	s4,32(sp)
   116bc:	01513c23          	sd	s5,24(sp)
   116c0:	01613823          	sd	s6,16(sp)
   116c4:	04113423          	sd	ra,72(sp)
   116c8:	04813023          	sd	s0,64(sp)
   116cc:	02913c23          	sd	s1,56(sp)
   116d0:	03213823          	sd	s2,48(sp)
   116d4:	01713423          	sd	s7,8(sp)
   116d8:	00050a93          	mv	s5,a0
   116dc:	00058a13          	mv	s4,a1
   116e0:	00100b13          	li	s6,1
   116e4:	1f89b403          	ld	s0,504(s3)
   116e8:	00040c63          	beqz	s0,11700 <__call_exitprocs+0x58>
   116ec:	00842483          	lw	s1,8(s0)
   116f0:	fff4849b          	addiw	s1,s1,-1
   116f4:	00349913          	slli	s2,s1,0x3
   116f8:	01240933          	add	s2,s0,s2
   116fc:	0204d863          	bgez	s1,1172c <__call_exitprocs+0x84>
   11700:	04813083          	ld	ra,72(sp)
   11704:	04013403          	ld	s0,64(sp)
   11708:	03813483          	ld	s1,56(sp)
   1170c:	03013903          	ld	s2,48(sp)
   11710:	02813983          	ld	s3,40(sp)
   11714:	02013a03          	ld	s4,32(sp)
   11718:	01813a83          	ld	s5,24(sp)
   1171c:	01013b03          	ld	s6,16(sp)
   11720:	00813b83          	ld	s7,8(sp)
   11724:	05010113          	addi	sp,sp,80
   11728:	00008067          	ret
   1172c:	000a0c63          	beqz	s4,11744 <__call_exitprocs+0x9c>
   11730:	21093783          	ld	a5,528(s2)
   11734:	01478863          	beq	a5,s4,11744 <__call_exitprocs+0x9c>
   11738:	fff4849b          	addiw	s1,s1,-1
   1173c:	ff890913          	addi	s2,s2,-8
   11740:	fbdff06f          	j	116fc <__call_exitprocs+0x54>
   11744:	00842783          	lw	a5,8(s0)
   11748:	01093683          	ld	a3,16(s2)
   1174c:	fff7879b          	addiw	a5,a5,-1
   11750:	02979e63          	bne	a5,s1,1178c <__call_exitprocs+0xe4>
   11754:	00942423          	sw	s1,8(s0)
   11758:	fe0680e3          	beqz	a3,11738 <__call_exitprocs+0x90>
   1175c:	31042703          	lw	a4,784(s0)
   11760:	009b163b          	sllw	a2,s6,s1
   11764:	00842b83          	lw	s7,8(s0)
   11768:	00c77733          	and	a4,a4,a2
   1176c:	0007071b          	sext.w	a4,a4
   11770:	02071263          	bnez	a4,11794 <__call_exitprocs+0xec>
   11774:	000680e7          	jalr	a3
   11778:	00842703          	lw	a4,8(s0)
   1177c:	1f89b783          	ld	a5,504(s3)
   11780:	f77712e3          	bne	a4,s7,116e4 <__call_exitprocs+0x3c>
   11784:	faf40ae3          	beq	s0,a5,11738 <__call_exitprocs+0x90>
   11788:	f5dff06f          	j	116e4 <__call_exitprocs+0x3c>
   1178c:	00093823          	sd	zero,16(s2)
   11790:	fc9ff06f          	j	11758 <__call_exitprocs+0xb0>
   11794:	31442783          	lw	a5,788(s0)
   11798:	11093583          	ld	a1,272(s2)
   1179c:	00c7f7b3          	and	a5,a5,a2
   117a0:	0007879b          	sext.w	a5,a5
   117a4:	00079863          	bnez	a5,117b4 <__call_exitprocs+0x10c>
   117a8:	000a8513          	mv	a0,s5
   117ac:	000680e7          	jalr	a3
   117b0:	fc9ff06f          	j	11778 <__call_exitprocs+0xd0>
   117b4:	00058513          	mv	a0,a1
   117b8:	000680e7          	jalr	a3
   117bc:	fbdff06f          	j	11778 <__call_exitprocs+0xd0>

00000000000117c0 <_exit>:
   117c0:	00000593          	li	a1,0
   117c4:	00000613          	li	a2,0
   117c8:	00000693          	li	a3,0
   117cc:	00000713          	li	a4,0
   117d0:	00000793          	li	a5,0
   117d4:	05d00893          	li	a7,93
   117d8:	00000073          	ecall
   117dc:	02055263          	bgez	a0,11800 <_exit+0x40>
   117e0:	ff010113          	addi	sp,sp,-16
   117e4:	00813023          	sd	s0,0(sp)
   117e8:	00050413          	mv	s0,a0
   117ec:	00113423          	sd	ra,8(sp)
   117f0:	4080043b          	negw	s0,s0
   117f4:	010000ef          	jal	ra,11804 <__errno>
   117f8:	00852023          	sw	s0,0(a0)
   117fc:	0000006f          	j	117fc <_exit+0x3c>
   11800:	0000006f          	j	11800 <_exit+0x40>

0000000000011804 <__errno>:
   11804:	8101b503          	ld	a0,-2032(gp) # 127e8 <_impure_ptr>
   11808:	00008067          	ret
