
../testcase/add:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <_start>:
   100b0:	00002197          	auipc	gp,0x2
   100b4:	5e818193          	addi	gp,gp,1512 # 12698 <__global_pointer$>
   100b8:	81818513          	addi	a0,gp,-2024 # 11eb0 <_edata>
   100bc:	85018613          	addi	a2,gp,-1968 # 11ee8 <_end>
   100c0:	40a60633          	sub	a2,a2,a0
   100c4:	00000593          	li	a1,0
   100c8:	35c000ef          	jal	ra,10424 <memset>
   100cc:	00000517          	auipc	a0,0x0
   100d0:	24850513          	addi	a0,a0,584 # 10314 <__libc_fini_array>
   100d4:	1f8000ef          	jal	ra,102cc <atexit>
   100d8:	2ac000ef          	jal	ra,10384 <__libc_init_array>
   100dc:	00012503          	lw	a0,0(sp)
   100e0:	00810593          	addi	a1,sp,8
   100e4:	00000613          	li	a2,0
   100e8:	104000ef          	jal	ra,101ec <main>
   100ec:	1f40006f          	j	102e0 <exit>

00000000000100f0 <_fini>:
   100f0:	00008067          	ret

00000000000100f4 <deregister_tm_clones>:
   100f4:	00012537          	lui	a0,0x12
   100f8:	000127b7          	lui	a5,0x12
   100fc:	e9850713          	addi	a4,a0,-360 # 11e98 <__TMC_END__>
   10100:	e9878793          	addi	a5,a5,-360 # 11e98 <__TMC_END__>
   10104:	00e78c63          	beq	a5,a4,1011c <deregister_tm_clones+0x28>
   10108:	00000337          	lui	t1,0x0
   1010c:	00030313          	mv	t1,t1
   10110:	00030663          	beqz	t1,1011c <deregister_tm_clones+0x28>
   10114:	e9850513          	addi	a0,a0,-360
   10118:	00030067          	jr	t1
   1011c:	00008067          	ret

0000000000010120 <register_tm_clones>:
   10120:	000127b7          	lui	a5,0x12
   10124:	00012537          	lui	a0,0x12
   10128:	e9878593          	addi	a1,a5,-360 # 11e98 <__TMC_END__>
   1012c:	e9850793          	addi	a5,a0,-360 # 11e98 <__TMC_END__>
   10130:	40f585b3          	sub	a1,a1,a5
   10134:	4035d593          	srai	a1,a1,0x3
   10138:	03f5d793          	srli	a5,a1,0x3f
   1013c:	00b785b3          	add	a1,a5,a1
   10140:	4015d593          	srai	a1,a1,0x1
   10144:	00058c63          	beqz	a1,1015c <register_tm_clones+0x3c>
   10148:	00000337          	lui	t1,0x0
   1014c:	00030313          	mv	t1,t1
   10150:	00030663          	beqz	t1,1015c <register_tm_clones+0x3c>
   10154:	e9850513          	addi	a0,a0,-360
   10158:	00030067          	jr	t1
   1015c:	00008067          	ret

0000000000010160 <__do_global_dtors_aux>:
   10160:	8181c703          	lbu	a4,-2024(gp) # 11eb0 <_edata>
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
   1018c:	71050513          	addi	a0,a0,1808 # 11710 <__EH_FRAME_BEGIN__>
   10190:	ffff0097          	auipc	ra,0xffff0
   10194:	e70080e7          	jalr	-400(ra) # 0 <_start-0x100b0>
   10198:	00100793          	li	a5,1
   1019c:	80f18c23          	sb	a5,-2024(gp) # 11eb0 <_edata>
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
   101c4:	00011537          	lui	a0,0x11
   101c8:	ff010113          	addi	sp,sp,-16
   101cc:	eb858593          	addi	a1,a1,-328 # 11eb8 <object.5215>
   101d0:	71050513          	addi	a0,a0,1808 # 11710 <__EH_FRAME_BEGIN__>
   101d4:	00113423          	sd	ra,8(sp)
   101d8:	ffff0097          	auipc	ra,0xffff0
   101dc:	e28080e7          	jalr	-472(ra) # 0 <_start-0x100b0>
   101e0:	00813083          	ld	ra,8(sp)
   101e4:	01010113          	addi	sp,sp,16
   101e8:	f39ff06f          	j	10120 <register_tm_clones>

00000000000101ec <main>:
   101ec:	fe010113          	addi	sp,sp,-32
   101f0:	00813c23          	sd	s0,24(sp)
   101f4:	02010413          	addi	s0,sp,32
   101f8:	fe042623          	sw	zero,-20(s0)
   101fc:	fe042623          	sw	zero,-20(s0)
   10200:	0480006f          	j	10248 <main+0x5c>
   10204:	000117b7          	lui	a5,0x11
   10208:	fec42703          	lw	a4,-20(s0)
   1020c:	00271713          	slli	a4,a4,0x2
   10210:	72878793          	addi	a5,a5,1832 # 11728 <__fini_array_end>
   10214:	00f707b3          	add	a5,a4,a5
   10218:	0007a783          	lw	a5,0(a5)
   1021c:	00a7879b          	addiw	a5,a5,10
   10220:	0007871b          	sext.w	a4,a5
   10224:	000117b7          	lui	a5,0x11
   10228:	fec42683          	lw	a3,-20(s0)
   1022c:	00269693          	slli	a3,a3,0x2
   10230:	72878793          	addi	a5,a5,1832 # 11728 <__fini_array_end>
   10234:	00f687b3          	add	a5,a3,a5
   10238:	00e7a023          	sw	a4,0(a5)
   1023c:	fec42783          	lw	a5,-20(s0)
   10240:	0017879b          	addiw	a5,a5,1
   10244:	fef42623          	sw	a5,-20(s0)
   10248:	fec42783          	lw	a5,-20(s0)
   1024c:	0007871b          	sext.w	a4,a5
   10250:	00400793          	li	a5,4
   10254:	fae7d8e3          	ble	a4,a5,10204 <main+0x18>
   10258:	00500793          	li	a5,5
   1025c:	fef42623          	sw	a5,-20(s0)
   10260:	0480006f          	j	102a8 <main+0xbc>
   10264:	000117b7          	lui	a5,0x11
   10268:	fec42703          	lw	a4,-20(s0)
   1026c:	00271713          	slli	a4,a4,0x2
   10270:	72878793          	addi	a5,a5,1832 # 11728 <__fini_array_end>
   10274:	00f707b3          	add	a5,a4,a5
   10278:	0007a783          	lw	a5,0(a5)
   1027c:	ffb7879b          	addiw	a5,a5,-5
   10280:	0007871b          	sext.w	a4,a5
   10284:	000117b7          	lui	a5,0x11
   10288:	fec42683          	lw	a3,-20(s0)
   1028c:	00269693          	slli	a3,a3,0x2
   10290:	72878793          	addi	a5,a5,1832 # 11728 <__fini_array_end>
   10294:	00f687b3          	add	a5,a3,a5
   10298:	00e7a023          	sw	a4,0(a5)
   1029c:	fec42783          	lw	a5,-20(s0)
   102a0:	0017879b          	addiw	a5,a5,1
   102a4:	fef42623          	sw	a5,-20(s0)
   102a8:	fec42783          	lw	a5,-20(s0)
   102ac:	0007871b          	sext.w	a4,a5
   102b0:	00900793          	li	a5,9
   102b4:	fae7d8e3          	ble	a4,a5,10264 <main+0x78>
   102b8:	00000793          	li	a5,0
   102bc:	00078513          	mv	a0,a5
   102c0:	01813403          	ld	s0,24(sp)
   102c4:	02010113          	addi	sp,sp,32
   102c8:	00008067          	ret

00000000000102cc <atexit>:
   102cc:	00050593          	mv	a1,a0
   102d0:	00000693          	li	a3,0
   102d4:	00000613          	li	a2,0
   102d8:	00000513          	li	a0,0
   102dc:	2240006f          	j	10500 <__register_exitproc>

00000000000102e0 <exit>:
   102e0:	ff010113          	addi	sp,sp,-16
   102e4:	00000593          	li	a1,0
   102e8:	00813023          	sd	s0,0(sp)
   102ec:	00113423          	sd	ra,8(sp)
   102f0:	00050413          	mv	s0,a0
   102f4:	294000ef          	jal	ra,10588 <__call_exitprocs>
   102f8:	000127b7          	lui	a5,0x12
   102fc:	ea07b503          	ld	a0,-352(a5) # 11ea0 <_global_impure_ptr>
   10300:	05853783          	ld	a5,88(a0)
   10304:	00078463          	beqz	a5,1030c <exit+0x2c>
   10308:	000780e7          	jalr	a5
   1030c:	00040513          	mv	a0,s0
   10310:	390000ef          	jal	ra,106a0 <_exit>

0000000000010314 <__libc_fini_array>:
   10314:	fe010113          	addi	sp,sp,-32
   10318:	000117b7          	lui	a5,0x11
   1031c:	00011737          	lui	a4,0x11
   10320:	00813823          	sd	s0,16(sp)
   10324:	72070713          	addi	a4,a4,1824 # 11720 <__init_array_end>
   10328:	72878413          	addi	s0,a5,1832 # 11728 <__fini_array_end>
   1032c:	40e40433          	sub	s0,s0,a4
   10330:	00913423          	sd	s1,8(sp)
   10334:	01213023          	sd	s2,0(sp)
   10338:	00113c23          	sd	ra,24(sp)
   1033c:	40345413          	srai	s0,s0,0x3
   10340:	00000493          	li	s1,0
   10344:	72878913          	addi	s2,a5,1832
   10348:	00941e63          	bne	s0,s1,10364 <__libc_fini_array+0x50>
   1034c:	01013403          	ld	s0,16(sp)
   10350:	01813083          	ld	ra,24(sp)
   10354:	00813483          	ld	s1,8(sp)
   10358:	00013903          	ld	s2,0(sp)
   1035c:	02010113          	addi	sp,sp,32
   10360:	d91ff06f          	j	100f0 <_fini>
   10364:	ff800593          	li	a1,-8
   10368:	00048513          	mv	a0,s1
   1036c:	380000ef          	jal	ra,106ec <__muldi3>
   10370:	00a90533          	add	a0,s2,a0
   10374:	ff853783          	ld	a5,-8(a0)
   10378:	00148493          	addi	s1,s1,1
   1037c:	000780e7          	jalr	a5
   10380:	fc9ff06f          	j	10348 <__libc_fini_array+0x34>

0000000000010384 <__libc_init_array>:
   10384:	fe010113          	addi	sp,sp,-32
   10388:	00813823          	sd	s0,16(sp)
   1038c:	00913423          	sd	s1,8(sp)
   10390:	00011437          	lui	s0,0x11
   10394:	000114b7          	lui	s1,0x11
   10398:	71448793          	addi	a5,s1,1812 # 11714 <__preinit_array_end>
   1039c:	71440413          	addi	s0,s0,1812 # 11714 <__preinit_array_end>
   103a0:	40f40433          	sub	s0,s0,a5
   103a4:	01213023          	sd	s2,0(sp)
   103a8:	00113c23          	sd	ra,24(sp)
   103ac:	40345413          	srai	s0,s0,0x3
   103b0:	71448493          	addi	s1,s1,1812
   103b4:	00000913          	li	s2,0
   103b8:	04891263          	bne	s2,s0,103fc <__libc_init_array+0x78>
   103bc:	000114b7          	lui	s1,0x11
   103c0:	d31ff0ef          	jal	ra,100f0 <_fini>
   103c4:	00011437          	lui	s0,0x11
   103c8:	71848793          	addi	a5,s1,1816 # 11718 <__frame_dummy_init_array_entry>
   103cc:	72040413          	addi	s0,s0,1824 # 11720 <__init_array_end>
   103d0:	40f40433          	sub	s0,s0,a5
   103d4:	40345413          	srai	s0,s0,0x3
   103d8:	71848493          	addi	s1,s1,1816
   103dc:	00000913          	li	s2,0
   103e0:	02891863          	bne	s2,s0,10410 <__libc_init_array+0x8c>
   103e4:	01813083          	ld	ra,24(sp)
   103e8:	01013403          	ld	s0,16(sp)
   103ec:	00813483          	ld	s1,8(sp)
   103f0:	00013903          	ld	s2,0(sp)
   103f4:	02010113          	addi	sp,sp,32
   103f8:	00008067          	ret
   103fc:	0004b783          	ld	a5,0(s1)
   10400:	00190913          	addi	s2,s2,1
   10404:	00848493          	addi	s1,s1,8
   10408:	000780e7          	jalr	a5
   1040c:	fadff06f          	j	103b8 <__libc_init_array+0x34>
   10410:	0004b783          	ld	a5,0(s1)
   10414:	00190913          	addi	s2,s2,1
   10418:	00848493          	addi	s1,s1,8
   1041c:	000780e7          	jalr	a5
   10420:	fc1ff06f          	j	103e0 <__libc_init_array+0x5c>

0000000000010424 <memset>:
   10424:	00f00313          	li	t1,15
   10428:	00050713          	mv	a4,a0
   1042c:	02c37a63          	bleu	a2,t1,10460 <memset+0x3c>
   10430:	00f77793          	andi	a5,a4,15
   10434:	0a079063          	bnez	a5,104d4 <memset+0xb0>
   10438:	06059e63          	bnez	a1,104b4 <memset+0x90>
   1043c:	ff067693          	andi	a3,a2,-16
   10440:	00f67613          	andi	a2,a2,15
   10444:	00e686b3          	add	a3,a3,a4
   10448:	00b73023          	sd	a1,0(a4)
   1044c:	00b73423          	sd	a1,8(a4)
   10450:	01070713          	addi	a4,a4,16
   10454:	fed76ae3          	bltu	a4,a3,10448 <memset+0x24>
   10458:	00061463          	bnez	a2,10460 <memset+0x3c>
   1045c:	00008067          	ret
   10460:	40c306b3          	sub	a3,t1,a2
   10464:	00269693          	slli	a3,a3,0x2
   10468:	00000297          	auipc	t0,0x0
   1046c:	005686b3          	add	a3,a3,t0
   10470:	00c68067          	jr	12(a3)
   10474:	00b70723          	sb	a1,14(a4)
   10478:	00b706a3          	sb	a1,13(a4)
   1047c:	00b70623          	sb	a1,12(a4)
   10480:	00b705a3          	sb	a1,11(a4)
   10484:	00b70523          	sb	a1,10(a4)
   10488:	00b704a3          	sb	a1,9(a4)
   1048c:	00b70423          	sb	a1,8(a4)
   10490:	00b703a3          	sb	a1,7(a4)
   10494:	00b70323          	sb	a1,6(a4)
   10498:	00b702a3          	sb	a1,5(a4)
   1049c:	00b70223          	sb	a1,4(a4)
   104a0:	00b701a3          	sb	a1,3(a4)
   104a4:	00b70123          	sb	a1,2(a4)
   104a8:	00b700a3          	sb	a1,1(a4)
   104ac:	00b70023          	sb	a1,0(a4)
   104b0:	00008067          	ret
   104b4:	0ff5f593          	andi	a1,a1,255
   104b8:	00859693          	slli	a3,a1,0x8
   104bc:	00d5e5b3          	or	a1,a1,a3
   104c0:	01059693          	slli	a3,a1,0x10
   104c4:	00d5e5b3          	or	a1,a1,a3
   104c8:	02059693          	slli	a3,a1,0x20
   104cc:	00d5e5b3          	or	a1,a1,a3
   104d0:	f6dff06f          	j	1043c <memset+0x18>
   104d4:	00279693          	slli	a3,a5,0x2
   104d8:	00000297          	auipc	t0,0x0
   104dc:	005686b3          	add	a3,a3,t0
   104e0:	00008293          	mv	t0,ra
   104e4:	f98680e7          	jalr	-104(a3)
   104e8:	00028093          	mv	ra,t0
   104ec:	ff078793          	addi	a5,a5,-16
   104f0:	40f70733          	sub	a4,a4,a5
   104f4:	00f60633          	add	a2,a2,a5
   104f8:	f6c374e3          	bleu	a2,t1,10460 <memset+0x3c>
   104fc:	f3dff06f          	j	10438 <memset+0x14>

0000000000010500 <__register_exitproc>:
   10500:	000127b7          	lui	a5,0x12
   10504:	ea07b703          	ld	a4,-352(a5) # 11ea0 <_global_impure_ptr>
   10508:	00050313          	mv	t1,a0
   1050c:	1f873783          	ld	a5,504(a4)
   10510:	00079663          	bnez	a5,1051c <__register_exitproc+0x1c>
   10514:	20070793          	addi	a5,a4,512
   10518:	1ef73c23          	sd	a5,504(a4)
   1051c:	0087a703          	lw	a4,8(a5)
   10520:	01f00813          	li	a6,31
   10524:	fff00513          	li	a0,-1
   10528:	04e84e63          	blt	a6,a4,10584 <__register_exitproc+0x84>
   1052c:	02030e63          	beqz	t1,10568 <__register_exitproc+0x68>
   10530:	00371813          	slli	a6,a4,0x3
   10534:	01078833          	add	a6,a5,a6
   10538:	10c83823          	sd	a2,272(a6)
   1053c:	3107a883          	lw	a7,784(a5)
   10540:	00100613          	li	a2,1
   10544:	00e6163b          	sllw	a2,a2,a4
   10548:	00c8e8b3          	or	a7,a7,a2
   1054c:	3117a823          	sw	a7,784(a5)
   10550:	20d83823          	sd	a3,528(a6)
   10554:	00200693          	li	a3,2
   10558:	00d31863          	bne	t1,a3,10568 <__register_exitproc+0x68>
   1055c:	3147a683          	lw	a3,788(a5)
   10560:	00c6e633          	or	a2,a3,a2
   10564:	30c7aa23          	sw	a2,788(a5)
   10568:	0017069b          	addiw	a3,a4,1
   1056c:	00270713          	addi	a4,a4,2
   10570:	00371713          	slli	a4,a4,0x3
   10574:	00d7a423          	sw	a3,8(a5)
   10578:	00e787b3          	add	a5,a5,a4
   1057c:	00b7b023          	sd	a1,0(a5)
   10580:	00000513          	li	a0,0
   10584:	00008067          	ret

0000000000010588 <__call_exitprocs>:
   10588:	fb010113          	addi	sp,sp,-80
   1058c:	000127b7          	lui	a5,0x12
   10590:	03313423          	sd	s3,40(sp)
   10594:	ea07b983          	ld	s3,-352(a5) # 11ea0 <_global_impure_ptr>
   10598:	03413023          	sd	s4,32(sp)
   1059c:	01513c23          	sd	s5,24(sp)
   105a0:	01613823          	sd	s6,16(sp)
   105a4:	04113423          	sd	ra,72(sp)
   105a8:	04813023          	sd	s0,64(sp)
   105ac:	02913c23          	sd	s1,56(sp)
   105b0:	03213823          	sd	s2,48(sp)
   105b4:	01713423          	sd	s7,8(sp)
   105b8:	00050a93          	mv	s5,a0
   105bc:	00058a13          	mv	s4,a1
   105c0:	00100b13          	li	s6,1
   105c4:	1f89b403          	ld	s0,504(s3)
   105c8:	00040c63          	beqz	s0,105e0 <__call_exitprocs+0x58>
   105cc:	00842483          	lw	s1,8(s0)
   105d0:	fff4849b          	addiw	s1,s1,-1
   105d4:	00349913          	slli	s2,s1,0x3
   105d8:	01240933          	add	s2,s0,s2
   105dc:	0204d863          	bgez	s1,1060c <__call_exitprocs+0x84>
   105e0:	04813083          	ld	ra,72(sp)
   105e4:	04013403          	ld	s0,64(sp)
   105e8:	03813483          	ld	s1,56(sp)
   105ec:	03013903          	ld	s2,48(sp)
   105f0:	02813983          	ld	s3,40(sp)
   105f4:	02013a03          	ld	s4,32(sp)
   105f8:	01813a83          	ld	s5,24(sp)
   105fc:	01013b03          	ld	s6,16(sp)
   10600:	00813b83          	ld	s7,8(sp)
   10604:	05010113          	addi	sp,sp,80
   10608:	00008067          	ret
   1060c:	000a0c63          	beqz	s4,10624 <__call_exitprocs+0x9c>
   10610:	21093783          	ld	a5,528(s2)
   10614:	01478863          	beq	a5,s4,10624 <__call_exitprocs+0x9c>
   10618:	fff4849b          	addiw	s1,s1,-1
   1061c:	ff890913          	addi	s2,s2,-8
   10620:	fbdff06f          	j	105dc <__call_exitprocs+0x54>
   10624:	00842783          	lw	a5,8(s0)
   10628:	01093683          	ld	a3,16(s2)
   1062c:	fff7879b          	addiw	a5,a5,-1
   10630:	02979e63          	bne	a5,s1,1066c <__call_exitprocs+0xe4>
   10634:	00942423          	sw	s1,8(s0)
   10638:	fe0680e3          	beqz	a3,10618 <__call_exitprocs+0x90>
   1063c:	31042703          	lw	a4,784(s0)
   10640:	009b163b          	sllw	a2,s6,s1
   10644:	00842b83          	lw	s7,8(s0)
   10648:	00c77733          	and	a4,a4,a2
   1064c:	0007071b          	sext.w	a4,a4
   10650:	02071263          	bnez	a4,10674 <__call_exitprocs+0xec>
   10654:	000680e7          	jalr	a3
   10658:	00842703          	lw	a4,8(s0)
   1065c:	1f89b783          	ld	a5,504(s3)
   10660:	f77712e3          	bne	a4,s7,105c4 <__call_exitprocs+0x3c>
   10664:	faf40ae3          	beq	s0,a5,10618 <__call_exitprocs+0x90>
   10668:	f5dff06f          	j	105c4 <__call_exitprocs+0x3c>
   1066c:	00093823          	sd	zero,16(s2)
   10670:	fc9ff06f          	j	10638 <__call_exitprocs+0xb0>
   10674:	31442783          	lw	a5,788(s0)
   10678:	11093583          	ld	a1,272(s2)
   1067c:	00c7f7b3          	and	a5,a5,a2
   10680:	0007879b          	sext.w	a5,a5
   10684:	00079863          	bnez	a5,10694 <__call_exitprocs+0x10c>
   10688:	000a8513          	mv	a0,s5
   1068c:	000680e7          	jalr	a3
   10690:	fc9ff06f          	j	10658 <__call_exitprocs+0xd0>
   10694:	00058513          	mv	a0,a1
   10698:	000680e7          	jalr	a3
   1069c:	fbdff06f          	j	10658 <__call_exitprocs+0xd0>

00000000000106a0 <_exit>:
   106a0:	00000593          	li	a1,0
   106a4:	00000613          	li	a2,0
   106a8:	00000693          	li	a3,0
   106ac:	00000713          	li	a4,0
   106b0:	00000793          	li	a5,0
   106b4:	05d00893          	li	a7,93
   106b8:	00000073          	ecall
   106bc:	02055263          	bgez	a0,106e0 <_exit+0x40>
   106c0:	ff010113          	addi	sp,sp,-16
   106c4:	00813023          	sd	s0,0(sp)
   106c8:	00050413          	mv	s0,a0
   106cc:	00113423          	sd	ra,8(sp)
   106d0:	4080043b          	negw	s0,s0
   106d4:	010000ef          	jal	ra,106e4 <__errno>
   106d8:	00852023          	sw	s0,0(a0)
   106dc:	0000006f          	j	106dc <_exit+0x3c>
   106e0:	0000006f          	j	106e0 <_exit+0x40>

00000000000106e4 <__errno>:
   106e4:	8101b503          	ld	a0,-2032(gp) # 11ea8 <_impure_ptr>
   106e8:	00008067          	ret

00000000000106ec <__muldi3>:
   106ec:	00050613          	mv	a2,a0
   106f0:	00000513          	li	a0,0
   106f4:	0015f693          	andi	a3,a1,1
   106f8:	00068463          	beqz	a3,10700 <__muldi3+0x14>
   106fc:	00c50533          	add	a0,a0,a2
   10700:	0015d593          	srli	a1,a1,0x1
   10704:	00161613          	slli	a2,a2,0x1
   10708:	fe0596e3          	bnez	a1,106f4 <__muldi3+0x8>
   1070c:	00008067          	ret
