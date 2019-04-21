
qsort:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <_start>:
   100b0:	00002197          	auipc	gp,0x2
   100b4:	eb018193          	addi	gp,gp,-336 # 11f60 <__global_pointer$>
   100b8:	81818513          	addi	a0,gp,-2024 # 11778 <_edata>
   100bc:	8f818613          	addi	a2,gp,-1800 # 11858 <_end>
   100c0:	40a60633          	sub	a2,a2,a0
   100c4:	00000593          	li	a1,0
   100c8:	4c4000ef          	jal	ra,1058c <memset>
   100cc:	00000517          	auipc	a0,0x0
   100d0:	3b050513          	addi	a0,a0,944 # 1047c <__libc_fini_array>
   100d4:	360000ef          	jal	ra,10434 <atexit>
   100d8:	414000ef          	jal	ra,104ec <__libc_init_array>
   100dc:	00012503          	lw	a0,0(sp)
   100e0:	00810593          	addi	a1,sp,8
   100e4:	00000613          	li	a2,0
   100e8:	2d8000ef          	jal	ra,103c0 <main>
   100ec:	35c0006f          	j	10448 <exit>

00000000000100f0 <_fini>:
   100f0:	00008067          	ret

00000000000100f4 <deregister_tm_clones>:
   100f4:	00011537          	lui	a0,0x11
   100f8:	000117b7          	lui	a5,0x11
   100fc:	76050713          	addi	a4,a0,1888 # 11760 <__TMC_END__>
   10100:	76078793          	addi	a5,a5,1888 # 11760 <__TMC_END__>
   10104:	00e78c63          	beq	a5,a4,1011c <deregister_tm_clones+0x28>
   10108:	00000337          	lui	t1,0x0
   1010c:	00030313          	mv	t1,t1
   10110:	00030663          	beqz	t1,1011c <deregister_tm_clones+0x28>
   10114:	76050513          	addi	a0,a0,1888
   10118:	00030067          	jr	t1
   1011c:	00008067          	ret

0000000000010120 <register_tm_clones>:
   10120:	000117b7          	lui	a5,0x11
   10124:	00011537          	lui	a0,0x11
   10128:	76078593          	addi	a1,a5,1888 # 11760 <__TMC_END__>
   1012c:	76050793          	addi	a5,a0,1888 # 11760 <__TMC_END__>
   10130:	40f585b3          	sub	a1,a1,a5
   10134:	4035d593          	srai	a1,a1,0x3
   10138:	03f5d793          	srli	a5,a1,0x3f
   1013c:	00b785b3          	add	a1,a5,a1
   10140:	4015d593          	srai	a1,a1,0x1
   10144:	00058c63          	beqz	a1,1015c <register_tm_clones+0x3c>
   10148:	00000337          	lui	t1,0x0
   1014c:	00030313          	mv	t1,t1
   10150:	00030663          	beqz	t1,1015c <register_tm_clones+0x3c>
   10154:	76050513          	addi	a0,a0,1888
   10158:	00030067          	jr	t1
   1015c:	00008067          	ret

0000000000010160 <__do_global_dtors_aux>:
   10160:	8181c703          	lbu	a4,-2024(gp) # 11778 <_edata>
   10164:	04071663          	bnez	a4,101b0 <__do_global_dtors_aux+0x50>
   10168:	ff010113          	addi	sp,sp,-16
   1016c:	00813023          	sd	s0,0(sp)
   10170:	00113423          	sd	ra,8(sp)
   10174:	00078413          	mv	s0,a5
   10178:	f7dff0ef          	jal	ra,100f4 <deregister_tm_clones>
   1017c:	000007b7          	lui	a5,0x0
   10180:	00078793          	mv	a5,a5
   10184:	00078a63          	beqz	a5,10198 <__do_global_dtors_aux+0x38>
   10188:	00011537          	lui	a0,0x11
   1018c:	00050513          	mv	a0,a0
   10190:	ffff0097          	auipc	ra,0xffff0
   10194:	e70080e7          	jalr	-400(ra) # 0 <_start-0x100b0>
   10198:	00100793          	li	a5,1
   1019c:	80f18c23          	sb	a5,-2024(gp) # 11778 <_edata>
   101a0:	00813083          	ld	ra,8(sp)
   101a4:	00013403          	ld	s0,0(sp)
   101a8:	01010113          	addi	sp,sp,16
   101ac:	00008067          	ret
   101b0:	00008067          	ret

00000000000101b4 <frame_dummy>:
   101b4:	000007b7          	lui	a5,0x0
   101b8:	00078793          	mv	a5,a5
   101bc:	02078663          	beqz	a5,101e8 <frame_dummy+0x34>
   101c0:	000115b7          	lui	a1,0x11
   101c4:	00011537          	lui	a0,0x11
   101c8:	ff010113          	addi	sp,sp,-16
   101cc:	78058593          	addi	a1,a1,1920 # 11780 <object.5215>
   101d0:	00050513          	mv	a0,a0
   101d4:	00113423          	sd	ra,8(sp)
   101d8:	ffff0097          	auipc	ra,0xffff0
   101dc:	e28080e7          	jalr	-472(ra) # 0 <_start-0x100b0>
   101e0:	00813083          	ld	ra,8(sp)
   101e4:	01010113          	addi	sp,sp,16
   101e8:	f39ff06f          	j	10120 <register_tm_clones>

00000000000101ec <qsort>:
   101ec:	fd010113          	addi	sp,sp,-48
   101f0:	02113423          	sd	ra,40(sp)
   101f4:	02813023          	sd	s0,32(sp)
   101f8:	03010413          	addi	s0,sp,48
   101fc:	00050793          	mv	a5,a0
   10200:	00058713          	mv	a4,a1
   10204:	fcf42e23          	sw	a5,-36(s0)
   10208:	00070793          	mv	a5,a4
   1020c:	fcf42c23          	sw	a5,-40(s0)
   10210:	000117b7          	lui	a5,0x11
   10214:	fdc42703          	lw	a4,-36(s0)
   10218:	00271713          	slli	a4,a4,0x2
   1021c:	7b078793          	addi	a5,a5,1968 # 117b0 <result>
   10220:	00f707b3          	add	a5,a4,a5
   10224:	0007a783          	lw	a5,0(a5)
   10228:	fef42223          	sw	a5,-28(s0)
   1022c:	fdc42783          	lw	a5,-36(s0)
   10230:	fef42623          	sw	a5,-20(s0)
   10234:	fd842783          	lw	a5,-40(s0)
   10238:	fef42423          	sw	a5,-24(s0)
   1023c:	fdc42703          	lw	a4,-36(s0)
   10240:	fd842783          	lw	a5,-40(s0)
   10244:	0007071b          	sext.w	a4,a4
   10248:	0007879b          	sext.w	a5,a5
   1024c:	16f75063          	ble	a5,a4,103ac <qsort+0x1c0>
   10250:	0f00006f          	j	10340 <qsort+0x154>
   10254:	fe842783          	lw	a5,-24(s0)
   10258:	fff7879b          	addiw	a5,a5,-1
   1025c:	fef42423          	sw	a5,-24(s0)
   10260:	fec42703          	lw	a4,-20(s0)
   10264:	fe842783          	lw	a5,-24(s0)
   10268:	0007071b          	sext.w	a4,a4
   1026c:	0007879b          	sext.w	a5,a5
   10270:	02f75463          	ble	a5,a4,10298 <qsort+0xac>
   10274:	000117b7          	lui	a5,0x11
   10278:	fe842703          	lw	a4,-24(s0)
   1027c:	00271713          	slli	a4,a4,0x2
   10280:	7b078793          	addi	a5,a5,1968 # 117b0 <result>
   10284:	00f707b3          	add	a5,a4,a5
   10288:	0007a703          	lw	a4,0(a5)
   1028c:	fe442783          	lw	a5,-28(s0)
   10290:	0007879b          	sext.w	a5,a5
   10294:	fcf750e3          	ble	a5,a4,10254 <qsort+0x68>
   10298:	000117b7          	lui	a5,0x11
   1029c:	fe842703          	lw	a4,-24(s0)
   102a0:	00271713          	slli	a4,a4,0x2
   102a4:	7b078793          	addi	a5,a5,1968 # 117b0 <result>
   102a8:	00f707b3          	add	a5,a4,a5
   102ac:	0007a703          	lw	a4,0(a5)
   102b0:	000117b7          	lui	a5,0x11
   102b4:	fec42683          	lw	a3,-20(s0)
   102b8:	00269693          	slli	a3,a3,0x2
   102bc:	7b078793          	addi	a5,a5,1968 # 117b0 <result>
   102c0:	00f687b3          	add	a5,a3,a5
   102c4:	00e7a023          	sw	a4,0(a5)
   102c8:	0100006f          	j	102d8 <qsort+0xec>
   102cc:	fec42783          	lw	a5,-20(s0)
   102d0:	0017879b          	addiw	a5,a5,1
   102d4:	fef42623          	sw	a5,-20(s0)
   102d8:	fec42703          	lw	a4,-20(s0)
   102dc:	fe842783          	lw	a5,-24(s0)
   102e0:	0007071b          	sext.w	a4,a4
   102e4:	0007879b          	sext.w	a5,a5
   102e8:	02f75463          	ble	a5,a4,10310 <qsort+0x124>
   102ec:	000117b7          	lui	a5,0x11
   102f0:	fec42703          	lw	a4,-20(s0)
   102f4:	00271713          	slli	a4,a4,0x2
   102f8:	7b078793          	addi	a5,a5,1968 # 117b0 <result>
   102fc:	00f707b3          	add	a5,a4,a5
   10300:	0007a703          	lw	a4,0(a5)
   10304:	fe442783          	lw	a5,-28(s0)
   10308:	0007879b          	sext.w	a5,a5
   1030c:	fce7d0e3          	ble	a4,a5,102cc <qsort+0xe0>
   10310:	000117b7          	lui	a5,0x11
   10314:	fec42703          	lw	a4,-20(s0)
   10318:	00271713          	slli	a4,a4,0x2
   1031c:	7b078793          	addi	a5,a5,1968 # 117b0 <result>
   10320:	00f707b3          	add	a5,a4,a5
   10324:	0007a703          	lw	a4,0(a5)
   10328:	000117b7          	lui	a5,0x11
   1032c:	fe842683          	lw	a3,-24(s0)
   10330:	00269693          	slli	a3,a3,0x2
   10334:	7b078793          	addi	a5,a5,1968 # 117b0 <result>
   10338:	00f687b3          	add	a5,a3,a5
   1033c:	00e7a023          	sw	a4,0(a5)
   10340:	fec42703          	lw	a4,-20(s0)
   10344:	fe842783          	lw	a5,-24(s0)
   10348:	0007071b          	sext.w	a4,a4
   1034c:	0007879b          	sext.w	a5,a5
   10350:	f0f748e3          	blt	a4,a5,10260 <qsort+0x74>
   10354:	000117b7          	lui	a5,0x11
   10358:	fec42703          	lw	a4,-20(s0)
   1035c:	00271713          	slli	a4,a4,0x2
   10360:	7b078793          	addi	a5,a5,1968 # 117b0 <result>
   10364:	00f707b3          	add	a5,a4,a5
   10368:	fe442703          	lw	a4,-28(s0)
   1036c:	00e7a023          	sw	a4,0(a5)
   10370:	fec42783          	lw	a5,-20(s0)
   10374:	fff7879b          	addiw	a5,a5,-1
   10378:	0007871b          	sext.w	a4,a5
   1037c:	fdc42783          	lw	a5,-36(s0)
   10380:	00070593          	mv	a1,a4
   10384:	00078513          	mv	a0,a5
   10388:	e65ff0ef          	jal	ra,101ec <qsort>
   1038c:	fec42783          	lw	a5,-20(s0)
   10390:	0017879b          	addiw	a5,a5,1
   10394:	0007879b          	sext.w	a5,a5
   10398:	fd842703          	lw	a4,-40(s0)
   1039c:	00070593          	mv	a1,a4
   103a0:	00078513          	mv	a0,a5
   103a4:	e49ff0ef          	jal	ra,101ec <qsort>
   103a8:	0080006f          	j	103b0 <qsort+0x1c4>
   103ac:	00000013          	nop
   103b0:	02813083          	ld	ra,40(sp)
   103b4:	02013403          	ld	s0,32(sp)
   103b8:	03010113          	addi	sp,sp,48
   103bc:	00008067          	ret

00000000000103c0 <main>:
   103c0:	fe010113          	addi	sp,sp,-32
   103c4:	00113c23          	sd	ra,24(sp)
   103c8:	00813823          	sd	s0,16(sp)
   103cc:	02010413          	addi	s0,sp,32
   103d0:	02800793          	li	a5,40
   103d4:	fef42623          	sw	a5,-20(s0)
   103d8:	02c0006f          	j	10404 <main+0x44>
   103dc:	000117b7          	lui	a5,0x11
   103e0:	fec42703          	lw	a4,-20(s0)
   103e4:	00271713          	slli	a4,a4,0x2
   103e8:	7b078793          	addi	a5,a5,1968 # 117b0 <result>
   103ec:	00f707b3          	add	a5,a4,a5
   103f0:	fec42703          	lw	a4,-20(s0)
   103f4:	00e7a023          	sw	a4,0(a5)
   103f8:	fec42783          	lw	a5,-20(s0)
   103fc:	fff7879b          	addiw	a5,a5,-1
   10400:	fef42623          	sw	a5,-20(s0)
   10404:	fec42783          	lw	a5,-20(s0)
   10408:	0007879b          	sext.w	a5,a5
   1040c:	fcf048e3          	bgtz	a5,103dc <main+0x1c>
   10410:	02700593          	li	a1,39
   10414:	00000513          	li	a0,0
   10418:	dd5ff0ef          	jal	ra,101ec <qsort>
   1041c:	00000793          	li	a5,0
   10420:	00078513          	mv	a0,a5
   10424:	01813083          	ld	ra,24(sp)
   10428:	01013403          	ld	s0,16(sp)
   1042c:	02010113          	addi	sp,sp,32
   10430:	00008067          	ret

0000000000010434 <atexit>:
   10434:	00050593          	mv	a1,a0
   10438:	00000693          	li	a3,0
   1043c:	00000613          	li	a2,0
   10440:	00000513          	li	a0,0
   10444:	2240006f          	j	10668 <__register_exitproc>

0000000000010448 <exit>:
   10448:	ff010113          	addi	sp,sp,-16
   1044c:	00000593          	li	a1,0
   10450:	00813023          	sd	s0,0(sp)
   10454:	00113423          	sd	ra,8(sp)
   10458:	00050413          	mv	s0,a0
   1045c:	294000ef          	jal	ra,106f0 <__call_exitprocs>
   10460:	000117b7          	lui	a5,0x11
   10464:	7687b503          	ld	a0,1896(a5) # 11768 <_global_impure_ptr>
   10468:	05853783          	ld	a5,88(a0) # 11058 <__fini_array_end+0x40>
   1046c:	00078463          	beqz	a5,10474 <exit+0x2c>
   10470:	000780e7          	jalr	a5
   10474:	00040513          	mv	a0,s0
   10478:	390000ef          	jal	ra,10808 <_exit>

000000000001047c <__libc_fini_array>:
   1047c:	fe010113          	addi	sp,sp,-32
   10480:	000117b7          	lui	a5,0x11
   10484:	00011737          	lui	a4,0x11
   10488:	00813823          	sd	s0,16(sp)
   1048c:	01070713          	addi	a4,a4,16 # 11010 <__init_array_end>
   10490:	01878413          	addi	s0,a5,24 # 11018 <__fini_array_end>
   10494:	40e40433          	sub	s0,s0,a4
   10498:	00913423          	sd	s1,8(sp)
   1049c:	01213023          	sd	s2,0(sp)
   104a0:	00113c23          	sd	ra,24(sp)
   104a4:	40345413          	srai	s0,s0,0x3
   104a8:	00000493          	li	s1,0
   104ac:	01878913          	addi	s2,a5,24
   104b0:	00941e63          	bne	s0,s1,104cc <__libc_fini_array+0x50>
   104b4:	01013403          	ld	s0,16(sp)
   104b8:	01813083          	ld	ra,24(sp)
   104bc:	00813483          	ld	s1,8(sp)
   104c0:	00013903          	ld	s2,0(sp)
   104c4:	02010113          	addi	sp,sp,32
   104c8:	c29ff06f          	j	100f0 <_fini>
   104cc:	ff800593          	li	a1,-8
   104d0:	00048513          	mv	a0,s1
   104d4:	380000ef          	jal	ra,10854 <__muldi3>
   104d8:	00a90533          	add	a0,s2,a0
   104dc:	ff853783          	ld	a5,-8(a0)
   104e0:	00148493          	addi	s1,s1,1
   104e4:	000780e7          	jalr	a5
   104e8:	fc9ff06f          	j	104b0 <__libc_fini_array+0x34>

00000000000104ec <__libc_init_array>:
   104ec:	fe010113          	addi	sp,sp,-32
   104f0:	00813823          	sd	s0,16(sp)
   104f4:	00913423          	sd	s1,8(sp)
   104f8:	00011437          	lui	s0,0x11
   104fc:	000114b7          	lui	s1,0x11
   10500:	00448793          	addi	a5,s1,4 # 11004 <__preinit_array_end>
   10504:	00440413          	addi	s0,s0,4 # 11004 <__preinit_array_end>
   10508:	40f40433          	sub	s0,s0,a5
   1050c:	01213023          	sd	s2,0(sp)
   10510:	00113c23          	sd	ra,24(sp)
   10514:	40345413          	srai	s0,s0,0x3
   10518:	00448493          	addi	s1,s1,4
   1051c:	00000913          	li	s2,0
   10520:	04891263          	bne	s2,s0,10564 <__libc_init_array+0x78>
   10524:	000114b7          	lui	s1,0x11
   10528:	bc9ff0ef          	jal	ra,100f0 <_fini>
   1052c:	00011437          	lui	s0,0x11
   10530:	00848793          	addi	a5,s1,8 # 11008 <__frame_dummy_init_array_entry>
   10534:	01040413          	addi	s0,s0,16 # 11010 <__init_array_end>
   10538:	40f40433          	sub	s0,s0,a5
   1053c:	40345413          	srai	s0,s0,0x3
   10540:	00848493          	addi	s1,s1,8
   10544:	00000913          	li	s2,0
   10548:	02891863          	bne	s2,s0,10578 <__libc_init_array+0x8c>
   1054c:	01813083          	ld	ra,24(sp)
   10550:	01013403          	ld	s0,16(sp)
   10554:	00813483          	ld	s1,8(sp)
   10558:	00013903          	ld	s2,0(sp)
   1055c:	02010113          	addi	sp,sp,32
   10560:	00008067          	ret
   10564:	0004b783          	ld	a5,0(s1)
   10568:	00190913          	addi	s2,s2,1
   1056c:	00848493          	addi	s1,s1,8
   10570:	000780e7          	jalr	a5
   10574:	fadff06f          	j	10520 <__libc_init_array+0x34>
   10578:	0004b783          	ld	a5,0(s1)
   1057c:	00190913          	addi	s2,s2,1
   10580:	00848493          	addi	s1,s1,8
   10584:	000780e7          	jalr	a5
   10588:	fc1ff06f          	j	10548 <__libc_init_array+0x5c>

000000000001058c <memset>:
   1058c:	00f00313          	li	t1,15
   10590:	00050713          	mv	a4,a0
   10594:	02c37a63          	bleu	a2,t1,105c8 <memset+0x3c>
   10598:	00f77793          	andi	a5,a4,15
   1059c:	0a079063          	bnez	a5,1063c <memset+0xb0>
   105a0:	06059e63          	bnez	a1,1061c <memset+0x90>
   105a4:	ff067693          	andi	a3,a2,-16
   105a8:	00f67613          	andi	a2,a2,15
   105ac:	00e686b3          	add	a3,a3,a4
   105b0:	00b73023          	sd	a1,0(a4)
   105b4:	00b73423          	sd	a1,8(a4)
   105b8:	01070713          	addi	a4,a4,16
   105bc:	fed76ae3          	bltu	a4,a3,105b0 <memset+0x24>
   105c0:	00061463          	bnez	a2,105c8 <memset+0x3c>
   105c4:	00008067          	ret
   105c8:	40c306b3          	sub	a3,t1,a2
   105cc:	00269693          	slli	a3,a3,0x2
   105d0:	00000297          	auipc	t0,0x0
   105d4:	005686b3          	add	a3,a3,t0
   105d8:	00c68067          	jr	12(a3)
   105dc:	00b70723          	sb	a1,14(a4)
   105e0:	00b706a3          	sb	a1,13(a4)
   105e4:	00b70623          	sb	a1,12(a4)
   105e8:	00b705a3          	sb	a1,11(a4)
   105ec:	00b70523          	sb	a1,10(a4)
   105f0:	00b704a3          	sb	a1,9(a4)
   105f4:	00b70423          	sb	a1,8(a4)
   105f8:	00b703a3          	sb	a1,7(a4)
   105fc:	00b70323          	sb	a1,6(a4)
   10600:	00b702a3          	sb	a1,5(a4)
   10604:	00b70223          	sb	a1,4(a4)
   10608:	00b701a3          	sb	a1,3(a4)
   1060c:	00b70123          	sb	a1,2(a4)
   10610:	00b700a3          	sb	a1,1(a4)
   10614:	00b70023          	sb	a1,0(a4)
   10618:	00008067          	ret
   1061c:	0ff5f593          	andi	a1,a1,255
   10620:	00859693          	slli	a3,a1,0x8
   10624:	00d5e5b3          	or	a1,a1,a3
   10628:	01059693          	slli	a3,a1,0x10
   1062c:	00d5e5b3          	or	a1,a1,a3
   10630:	02059693          	slli	a3,a1,0x20
   10634:	00d5e5b3          	or	a1,a1,a3
   10638:	f6dff06f          	j	105a4 <memset+0x18>
   1063c:	00279693          	slli	a3,a5,0x2
   10640:	00000297          	auipc	t0,0x0
   10644:	005686b3          	add	a3,a3,t0
   10648:	00008293          	mv	t0,ra
   1064c:	f98680e7          	jalr	-104(a3)
   10650:	00028093          	mv	ra,t0
   10654:	ff078793          	addi	a5,a5,-16
   10658:	40f70733          	sub	a4,a4,a5
   1065c:	00f60633          	add	a2,a2,a5
   10660:	f6c374e3          	bleu	a2,t1,105c8 <memset+0x3c>
   10664:	f3dff06f          	j	105a0 <memset+0x14>

0000000000010668 <__register_exitproc>:
   10668:	000117b7          	lui	a5,0x11
   1066c:	7687b703          	ld	a4,1896(a5) # 11768 <_global_impure_ptr>
   10670:	00050313          	mv	t1,a0
   10674:	1f873783          	ld	a5,504(a4)
   10678:	00079663          	bnez	a5,10684 <__register_exitproc+0x1c>
   1067c:	20070793          	addi	a5,a4,512
   10680:	1ef73c23          	sd	a5,504(a4)
   10684:	0087a703          	lw	a4,8(a5)
   10688:	01f00813          	li	a6,31
   1068c:	fff00513          	li	a0,-1
   10690:	04e84e63          	blt	a6,a4,106ec <__register_exitproc+0x84>
   10694:	02030e63          	beqz	t1,106d0 <__register_exitproc+0x68>
   10698:	00371813          	slli	a6,a4,0x3
   1069c:	01078833          	add	a6,a5,a6
   106a0:	10c83823          	sd	a2,272(a6)
   106a4:	3107a883          	lw	a7,784(a5)
   106a8:	00100613          	li	a2,1
   106ac:	00e6163b          	sllw	a2,a2,a4
   106b0:	00c8e8b3          	or	a7,a7,a2
   106b4:	3117a823          	sw	a7,784(a5)
   106b8:	20d83823          	sd	a3,528(a6)
   106bc:	00200693          	li	a3,2
   106c0:	00d31863          	bne	t1,a3,106d0 <__register_exitproc+0x68>
   106c4:	3147a683          	lw	a3,788(a5)
   106c8:	00c6e633          	or	a2,a3,a2
   106cc:	30c7aa23          	sw	a2,788(a5)
   106d0:	0017069b          	addiw	a3,a4,1
   106d4:	00270713          	addi	a4,a4,2
   106d8:	00371713          	slli	a4,a4,0x3
   106dc:	00d7a423          	sw	a3,8(a5)
   106e0:	00e787b3          	add	a5,a5,a4
   106e4:	00b7b023          	sd	a1,0(a5)
   106e8:	00000513          	li	a0,0
   106ec:	00008067          	ret

00000000000106f0 <__call_exitprocs>:
   106f0:	fb010113          	addi	sp,sp,-80
   106f4:	000117b7          	lui	a5,0x11
   106f8:	03313423          	sd	s3,40(sp)
   106fc:	7687b983          	ld	s3,1896(a5) # 11768 <_global_impure_ptr>
   10700:	03413023          	sd	s4,32(sp)
   10704:	01513c23          	sd	s5,24(sp)
   10708:	01613823          	sd	s6,16(sp)
   1070c:	04113423          	sd	ra,72(sp)
   10710:	04813023          	sd	s0,64(sp)
   10714:	02913c23          	sd	s1,56(sp)
   10718:	03213823          	sd	s2,48(sp)
   1071c:	01713423          	sd	s7,8(sp)
   10720:	00050a93          	mv	s5,a0
   10724:	00058a13          	mv	s4,a1
   10728:	00100b13          	li	s6,1
   1072c:	1f89b403          	ld	s0,504(s3)
   10730:	00040c63          	beqz	s0,10748 <__call_exitprocs+0x58>
   10734:	00842483          	lw	s1,8(s0)
   10738:	fff4849b          	addiw	s1,s1,-1
   1073c:	00349913          	slli	s2,s1,0x3
   10740:	01240933          	add	s2,s0,s2
   10744:	0204d863          	bgez	s1,10774 <__call_exitprocs+0x84>
   10748:	04813083          	ld	ra,72(sp)
   1074c:	04013403          	ld	s0,64(sp)
   10750:	03813483          	ld	s1,56(sp)
   10754:	03013903          	ld	s2,48(sp)
   10758:	02813983          	ld	s3,40(sp)
   1075c:	02013a03          	ld	s4,32(sp)
   10760:	01813a83          	ld	s5,24(sp)
   10764:	01013b03          	ld	s6,16(sp)
   10768:	00813b83          	ld	s7,8(sp)
   1076c:	05010113          	addi	sp,sp,80
   10770:	00008067          	ret
   10774:	000a0c63          	beqz	s4,1078c <__call_exitprocs+0x9c>
   10778:	21093783          	ld	a5,528(s2)
   1077c:	01478863          	beq	a5,s4,1078c <__call_exitprocs+0x9c>
   10780:	fff4849b          	addiw	s1,s1,-1
   10784:	ff890913          	addi	s2,s2,-8
   10788:	fbdff06f          	j	10744 <__call_exitprocs+0x54>
   1078c:	00842783          	lw	a5,8(s0)
   10790:	01093683          	ld	a3,16(s2)
   10794:	fff7879b          	addiw	a5,a5,-1
   10798:	02979e63          	bne	a5,s1,107d4 <__call_exitprocs+0xe4>
   1079c:	00942423          	sw	s1,8(s0)
   107a0:	fe0680e3          	beqz	a3,10780 <__call_exitprocs+0x90>
   107a4:	31042703          	lw	a4,784(s0)
   107a8:	009b163b          	sllw	a2,s6,s1
   107ac:	00842b83          	lw	s7,8(s0)
   107b0:	00c77733          	and	a4,a4,a2
   107b4:	0007071b          	sext.w	a4,a4
   107b8:	02071263          	bnez	a4,107dc <__call_exitprocs+0xec>
   107bc:	000680e7          	jalr	a3
   107c0:	00842703          	lw	a4,8(s0)
   107c4:	1f89b783          	ld	a5,504(s3)
   107c8:	f77712e3          	bne	a4,s7,1072c <__call_exitprocs+0x3c>
   107cc:	faf40ae3          	beq	s0,a5,10780 <__call_exitprocs+0x90>
   107d0:	f5dff06f          	j	1072c <__call_exitprocs+0x3c>
   107d4:	00093823          	sd	zero,16(s2)
   107d8:	fc9ff06f          	j	107a0 <__call_exitprocs+0xb0>
   107dc:	31442783          	lw	a5,788(s0)
   107e0:	11093583          	ld	a1,272(s2)
   107e4:	00c7f7b3          	and	a5,a5,a2
   107e8:	0007879b          	sext.w	a5,a5
   107ec:	00079863          	bnez	a5,107fc <__call_exitprocs+0x10c>
   107f0:	000a8513          	mv	a0,s5
   107f4:	000680e7          	jalr	a3
   107f8:	fc9ff06f          	j	107c0 <__call_exitprocs+0xd0>
   107fc:	00058513          	mv	a0,a1
   10800:	000680e7          	jalr	a3
   10804:	fbdff06f          	j	107c0 <__call_exitprocs+0xd0>

0000000000010808 <_exit>:
   10808:	00000593          	li	a1,0
   1080c:	00000613          	li	a2,0
   10810:	00000693          	li	a3,0
   10814:	00000713          	li	a4,0
   10818:	00000793          	li	a5,0
   1081c:	05d00893          	li	a7,93
   10820:	00000073          	ecall
   10824:	02055263          	bgez	a0,10848 <_exit+0x40>
   10828:	ff010113          	addi	sp,sp,-16
   1082c:	00813023          	sd	s0,0(sp)
   10830:	00050413          	mv	s0,a0
   10834:	00113423          	sd	ra,8(sp)
   10838:	4080043b          	negw	s0,s0
   1083c:	010000ef          	jal	ra,1084c <__errno>
   10840:	00852023          	sw	s0,0(a0)
   10844:	0000006f          	j	10844 <_exit+0x3c>
   10848:	0000006f          	j	10848 <_exit+0x40>

000000000001084c <__errno>:
   1084c:	8101b503          	ld	a0,-2032(gp) # 11770 <_impure_ptr>
   10850:	00008067          	ret

0000000000010854 <__muldi3>:
   10854:	00050613          	mv	a2,a0
   10858:	00000513          	li	a0,0
   1085c:	0015f693          	andi	a3,a1,1
   10860:	00068463          	beqz	a3,10868 <__muldi3+0x14>
   10864:	00c50533          	add	a0,a0,a2
   10868:	0015d593          	srli	a1,a1,0x1
   1086c:	00161613          	slli	a2,a2,0x1
   10870:	fe0596e3          	bnez	a1,1085c <__muldi3+0x8>
   10874:	00008067          	ret
