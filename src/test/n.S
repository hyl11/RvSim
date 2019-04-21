
n:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <_start>:
   100b0:	00002197          	auipc	gp,0x2
   100b4:	59018193          	addi	gp,gp,1424 # 12640 <__global_pointer$>
   100b8:	81818513          	addi	a0,gp,-2024 # 11e58 <_edata>
   100bc:	85818613          	addi	a2,gp,-1960 # 11e98 <_end>
   100c0:	40a60633          	sub	a2,a2,a0
   100c4:	00000593          	li	a1,0
   100c8:	354000ef          	jal	ra,1041c <memset>
   100cc:	00000517          	auipc	a0,0x0
   100d0:	24050513          	addi	a0,a0,576 # 1030c <__libc_fini_array>
   100d4:	1f0000ef          	jal	ra,102c4 <atexit>
   100d8:	2a4000ef          	jal	ra,1037c <__libc_init_array>
   100dc:	00012503          	lw	a0,0(sp)
   100e0:	00810593          	addi	a1,sp,8
   100e4:	00000613          	li	a2,0
   100e8:	17c000ef          	jal	ra,10264 <main>
   100ec:	1ec0006f          	j	102d8 <exit>

00000000000100f0 <_fini>:
   100f0:	00008067          	ret

00000000000100f4 <deregister_tm_clones>:
   100f4:	00012537          	lui	a0,0x12
   100f8:	000127b7          	lui	a5,0x12
   100fc:	e4050713          	addi	a4,a0,-448 # 11e40 <__TMC_END__>
   10100:	e4078793          	addi	a5,a5,-448 # 11e40 <__TMC_END__>
   10104:	00e78c63          	beq	a5,a4,1011c <deregister_tm_clones+0x28>
   10108:	00000337          	lui	t1,0x0
   1010c:	00030313          	mv	t1,t1
   10110:	00030663          	beqz	t1,1011c <deregister_tm_clones+0x28>
   10114:	e4050513          	addi	a0,a0,-448
   10118:	00030067          	jr	t1
   1011c:	00008067          	ret

0000000000010120 <register_tm_clones>:
   10120:	000127b7          	lui	a5,0x12
   10124:	00012537          	lui	a0,0x12
   10128:	e4078593          	addi	a1,a5,-448 # 11e40 <__TMC_END__>
   1012c:	e4050793          	addi	a5,a0,-448 # 11e40 <__TMC_END__>
   10130:	40f585b3          	sub	a1,a1,a5
   10134:	4035d593          	srai	a1,a1,0x3
   10138:	03f5d793          	srli	a5,a1,0x3f
   1013c:	00b785b3          	add	a1,a5,a1
   10140:	4015d593          	srai	a1,a1,0x1
   10144:	00058c63          	beqz	a1,1015c <register_tm_clones+0x3c>
   10148:	00000337          	lui	t1,0x0
   1014c:	00030313          	mv	t1,t1
   10150:	00030663          	beqz	t1,1015c <register_tm_clones+0x3c>
   10154:	e4050513          	addi	a0,a0,-448
   10158:	00030067          	jr	t1
   1015c:	00008067          	ret

0000000000010160 <__do_global_dtors_aux>:
   10160:	8201c703          	lbu	a4,-2016(gp) # 11e60 <completed.5210>
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
   1018c:	6e450513          	addi	a0,a0,1764 # 116e4 <__EH_FRAME_BEGIN__>
   10190:	ffff0097          	auipc	ra,0xffff0
   10194:	e70080e7          	jalr	-400(ra) # 0 <_start-0x100b0>
   10198:	00100793          	li	a5,1
   1019c:	82f18023          	sb	a5,-2016(gp) # 11e60 <completed.5210>
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
   101cc:	e6858593          	addi	a1,a1,-408 # 11e68 <object.5215>
   101d0:	6e450513          	addi	a0,a0,1764 # 116e4 <__EH_FRAME_BEGIN__>
   101d4:	00113423          	sd	ra,8(sp)
   101d8:	ffff0097          	auipc	ra,0xffff0
   101dc:	e28080e7          	jalr	-472(ra) # 0 <_start-0x100b0>
   101e0:	00813083          	ld	ra,8(sp)
   101e4:	01010113          	addi	sp,sp,16
   101e8:	f39ff06f          	j	10120 <register_tm_clones>

00000000000101ec <cal_n>:
   101ec:	fe010113          	addi	sp,sp,-32
   101f0:	00113c23          	sd	ra,24(sp)
   101f4:	00813823          	sd	s0,16(sp)
   101f8:	02010413          	addi	s0,sp,32
   101fc:	00050793          	mv	a5,a0
   10200:	fef42623          	sw	a5,-20(s0)
   10204:	fec42783          	lw	a5,-20(s0)
   10208:	0007871b          	sext.w	a4,a5
   1020c:	00100793          	li	a5,1
   10210:	00f71663          	bne	a4,a5,1021c <cal_n+0x30>
   10214:	fec42783          	lw	a5,-20(s0)
   10218:	0380006f          	j	10250 <cal_n+0x64>
   1021c:	fec42783          	lw	a5,-20(s0)
   10220:	fff7879b          	addiw	a5,a5,-1
   10224:	0007879b          	sext.w	a5,a5
   10228:	00078513          	mv	a0,a5
   1022c:	fc1ff0ef          	jal	ra,101ec <cal_n>
   10230:	00050793          	mv	a5,a0
   10234:	00078713          	mv	a4,a5
   10238:	fec42783          	lw	a5,-20(s0)
   1023c:	00078593          	mv	a1,a5
   10240:	00070513          	mv	a0,a4
   10244:	05c000ef          	jal	ra,102a0 <__muldi3>
   10248:	00050793          	mv	a5,a0
   1024c:	0007879b          	sext.w	a5,a5
   10250:	00078513          	mv	a0,a5
   10254:	01813083          	ld	ra,24(sp)
   10258:	01013403          	ld	s0,16(sp)
   1025c:	02010113          	addi	sp,sp,32
   10260:	00008067          	ret

0000000000010264 <main>:
   10264:	ff010113          	addi	sp,sp,-16
   10268:	00113423          	sd	ra,8(sp)
   1026c:	00813023          	sd	s0,0(sp)
   10270:	01010413          	addi	s0,sp,16
   10274:	00a00513          	li	a0,10
   10278:	f75ff0ef          	jal	ra,101ec <cal_n>
   1027c:	00050793          	mv	a5,a0
   10280:	00078713          	mv	a4,a5
   10284:	80e1ac23          	sw	a4,-2024(gp) # 11e58 <_edata>
   10288:	00000793          	li	a5,0
   1028c:	00078513          	mv	a0,a5
   10290:	00813083          	ld	ra,8(sp)
   10294:	00013403          	ld	s0,0(sp)
   10298:	01010113          	addi	sp,sp,16
   1029c:	00008067          	ret

00000000000102a0 <__muldi3>:    # a0:1   a1:2   a2:1
   102a0:	00050613          	mv	a2,a0
   102a4:	00000513          	li	a0,0
   102a8:	0015f693          	andi	a3,a1,1
   102ac:	00068463          	beqz	a3,102b4 <__muldi3+0x14>
   102b0:	00c50533          	add	a0,a0,a2
   102b4:	0015d593          	srli	a1,a1,0x1
   102b8:	00161613          	slli	a2,a2,0x1
   102bc:	fe0596e3          	bnez	a1,102a8 <__muldi3+0x8>
   102c0:	00008067          	ret

00000000000102c4 <atexit>:
   102c4:	00050593          	mv	a1,a0
   102c8:	00000693          	li	a3,0
   102cc:	00000613          	li	a2,0
   102d0:	00000513          	li	a0,0
   102d4:	2240006f          	j	104f8 <__register_exitproc>

00000000000102d8 <exit>:
   102d8:	ff010113          	addi	sp,sp,-16
   102dc:	00000593          	li	a1,0
   102e0:	00813023          	sd	s0,0(sp)
   102e4:	00113423          	sd	ra,8(sp)
   102e8:	00050413          	mv	s0,a0
   102ec:	294000ef          	jal	ra,10580 <__call_exitprocs>
   102f0:	000127b7          	lui	a5,0x12
   102f4:	e487b503          	ld	a0,-440(a5) # 11e48 <_global_impure_ptr>
   102f8:	05853783          	ld	a5,88(a0)
   102fc:	00078463          	beqz	a5,10304 <exit+0x2c>
   10300:	000780e7          	jalr	a5
   10304:	00040513          	mv	a0,s0
   10308:	390000ef          	jal	ra,10698 <_exit>

000000000001030c <__libc_fini_array>:
   1030c:	fe010113          	addi	sp,sp,-32
   10310:	000117b7          	lui	a5,0x11
   10314:	00011737          	lui	a4,0x11
   10318:	00813823          	sd	s0,16(sp)
   1031c:	6f070713          	addi	a4,a4,1776 # 116f0 <__init_array_end>
   10320:	6f878413          	addi	s0,a5,1784 # 116f8 <__fini_array_end>
   10324:	40e40433          	sub	s0,s0,a4
   10328:	00913423          	sd	s1,8(sp)
   1032c:	01213023          	sd	s2,0(sp)
   10330:	00113c23          	sd	ra,24(sp)
   10334:	40345413          	srai	s0,s0,0x3
   10338:	00000493          	li	s1,0
   1033c:	6f878913          	addi	s2,a5,1784
   10340:	00941e63          	bne	s0,s1,1035c <__libc_fini_array+0x50>
   10344:	01013403          	ld	s0,16(sp)
   10348:	01813083          	ld	ra,24(sp)
   1034c:	00813483          	ld	s1,8(sp)
   10350:	00013903          	ld	s2,0(sp)
   10354:	02010113          	addi	sp,sp,32
   10358:	d99ff06f          	j	100f0 <_fini>
   1035c:	ff800593          	li	a1,-8
   10360:	00048513          	mv	a0,s1
   10364:	f3dff0ef          	jal	ra,102a0 <__muldi3>
   10368:	00a90533          	add	a0,s2,a0
   1036c:	ff853783          	ld	a5,-8(a0)
   10370:	00148493          	addi	s1,s1,1
   10374:	000780e7          	jalr	a5
   10378:	fc9ff06f          	j	10340 <__libc_fini_array+0x34>

000000000001037c <__libc_init_array>:
   1037c:	fe010113          	addi	sp,sp,-32
   10380:	00813823          	sd	s0,16(sp)
   10384:	00913423          	sd	s1,8(sp)
   10388:	00011437          	lui	s0,0x11
   1038c:	000114b7          	lui	s1,0x11
   10390:	6e848793          	addi	a5,s1,1768 # 116e8 <__frame_dummy_init_array_entry>
   10394:	6e840413          	addi	s0,s0,1768 # 116e8 <__frame_dummy_init_array_entry>
   10398:	40f40433          	sub	s0,s0,a5
   1039c:	01213023          	sd	s2,0(sp)
   103a0:	00113c23          	sd	ra,24(sp)
   103a4:	40345413          	srai	s0,s0,0x3
   103a8:	6e848493          	addi	s1,s1,1768
   103ac:	00000913          	li	s2,0
   103b0:	04891263          	bne	s2,s0,103f4 <__libc_init_array+0x78>
   103b4:	000114b7          	lui	s1,0x11
   103b8:	d39ff0ef          	jal	ra,100f0 <_fini>
   103bc:	00011437          	lui	s0,0x11
   103c0:	6e848793          	addi	a5,s1,1768 # 116e8 <__frame_dummy_init_array_entry>
   103c4:	6f040413          	addi	s0,s0,1776 # 116f0 <__init_array_end>
   103c8:	40f40433          	sub	s0,s0,a5
   103cc:	40345413          	srai	s0,s0,0x3
   103d0:	6e848493          	addi	s1,s1,1768
   103d4:	00000913          	li	s2,0
   103d8:	02891863          	bne	s2,s0,10408 <__libc_init_array+0x8c>
   103dc:	01813083          	ld	ra,24(sp)
   103e0:	01013403          	ld	s0,16(sp)
   103e4:	00813483          	ld	s1,8(sp)
   103e8:	00013903          	ld	s2,0(sp)
   103ec:	02010113          	addi	sp,sp,32
   103f0:	00008067          	ret
   103f4:	0004b783          	ld	a5,0(s1)
   103f8:	00190913          	addi	s2,s2,1
   103fc:	00848493          	addi	s1,s1,8
   10400:	000780e7          	jalr	a5
   10404:	fadff06f          	j	103b0 <__libc_init_array+0x34>
   10408:	0004b783          	ld	a5,0(s1)
   1040c:	00190913          	addi	s2,s2,1
   10410:	00848493          	addi	s1,s1,8
   10414:	000780e7          	jalr	a5
   10418:	fc1ff06f          	j	103d8 <__libc_init_array+0x5c>

000000000001041c <memset>:
   1041c:	00f00313          	li	t1,15
   10420:	00050713          	mv	a4,a0
   10424:	02c37a63          	bleu	a2,t1,10458 <memset+0x3c>
   10428:	00f77793          	andi	a5,a4,15
   1042c:	0a079063          	bnez	a5,104cc <memset+0xb0>
   10430:	06059e63          	bnez	a1,104ac <memset+0x90>
   10434:	ff067693          	andi	a3,a2,-16
   10438:	00f67613          	andi	a2,a2,15
   1043c:	00e686b3          	add	a3,a3,a4
   10440:	00b73023          	sd	a1,0(a4)
   10444:	00b73423          	sd	a1,8(a4)
   10448:	01070713          	addi	a4,a4,16
   1044c:	fed76ae3          	bltu	a4,a3,10440 <memset+0x24>
   10450:	00061463          	bnez	a2,10458 <memset+0x3c>
   10454:	00008067          	ret
   10458:	40c306b3          	sub	a3,t1,a2
   1045c:	00269693          	slli	a3,a3,0x2
   10460:	00000297          	auipc	t0,0x0
   10464:	005686b3          	add	a3,a3,t0
   10468:	00c68067          	jr	12(a3)
   1046c:	00b70723          	sb	a1,14(a4)
   10470:	00b706a3          	sb	a1,13(a4)
   10474:	00b70623          	sb	a1,12(a4)
   10478:	00b705a3          	sb	a1,11(a4)
   1047c:	00b70523          	sb	a1,10(a4)
   10480:	00b704a3          	sb	a1,9(a4)
   10484:	00b70423          	sb	a1,8(a4)
   10488:	00b703a3          	sb	a1,7(a4)
   1048c:	00b70323          	sb	a1,6(a4)
   10490:	00b702a3          	sb	a1,5(a4)
   10494:	00b70223          	sb	a1,4(a4)
   10498:	00b701a3          	sb	a1,3(a4)
   1049c:	00b70123          	sb	a1,2(a4)
   104a0:	00b700a3          	sb	a1,1(a4)
   104a4:	00b70023          	sb	a1,0(a4)
   104a8:	00008067          	ret
   104ac:	0ff5f593          	andi	a1,a1,255
   104b0:	00859693          	slli	a3,a1,0x8
   104b4:	00d5e5b3          	or	a1,a1,a3
   104b8:	01059693          	slli	a3,a1,0x10
   104bc:	00d5e5b3          	or	a1,a1,a3
   104c0:	02059693          	slli	a3,a1,0x20
   104c4:	00d5e5b3          	or	a1,a1,a3
   104c8:	f6dff06f          	j	10434 <memset+0x18>
   104cc:	00279693          	slli	a3,a5,0x2
   104d0:	00000297          	auipc	t0,0x0
   104d4:	005686b3          	add	a3,a3,t0
   104d8:	00008293          	mv	t0,ra
   104dc:	f98680e7          	jalr	-104(a3)
   104e0:	00028093          	mv	ra,t0
   104e4:	ff078793          	addi	a5,a5,-16
   104e8:	40f70733          	sub	a4,a4,a5
   104ec:	00f60633          	add	a2,a2,a5
   104f0:	f6c374e3          	bleu	a2,t1,10458 <memset+0x3c>
   104f4:	f3dff06f          	j	10430 <memset+0x14>

00000000000104f8 <__register_exitproc>:
   104f8:	000127b7          	lui	a5,0x12
   104fc:	e487b703          	ld	a4,-440(a5) # 11e48 <_global_impure_ptr>
   10500:	00050313          	mv	t1,a0
   10504:	1f873783          	ld	a5,504(a4)
   10508:	00079663          	bnez	a5,10514 <__register_exitproc+0x1c>
   1050c:	20070793          	addi	a5,a4,512
   10510:	1ef73c23          	sd	a5,504(a4)
   10514:	0087a703          	lw	a4,8(a5)
   10518:	01f00813          	li	a6,31
   1051c:	fff00513          	li	a0,-1
   10520:	04e84e63          	blt	a6,a4,1057c <__register_exitproc+0x84>
   10524:	02030e63          	beqz	t1,10560 <__register_exitproc+0x68>
   10528:	00371813          	slli	a6,a4,0x3
   1052c:	01078833          	add	a6,a5,a6
   10530:	10c83823          	sd	a2,272(a6)
   10534:	3107a883          	lw	a7,784(a5)
   10538:	00100613          	li	a2,1
   1053c:	00e6163b          	sllw	a2,a2,a4
   10540:	00c8e8b3          	or	a7,a7,a2
   10544:	3117a823          	sw	a7,784(a5)
   10548:	20d83823          	sd	a3,528(a6)
   1054c:	00200693          	li	a3,2
   10550:	00d31863          	bne	t1,a3,10560 <__register_exitproc+0x68>
   10554:	3147a683          	lw	a3,788(a5)
   10558:	00c6e633          	or	a2,a3,a2
   1055c:	30c7aa23          	sw	a2,788(a5)
   10560:	0017069b          	addiw	a3,a4,1
   10564:	00270713          	addi	a4,a4,2
   10568:	00371713          	slli	a4,a4,0x3
   1056c:	00d7a423          	sw	a3,8(a5)
   10570:	00e787b3          	add	a5,a5,a4
   10574:	00b7b023          	sd	a1,0(a5)
   10578:	00000513          	li	a0,0
   1057c:	00008067          	ret

0000000000010580 <__call_exitprocs>:
   10580:	fb010113          	addi	sp,sp,-80
   10584:	000127b7          	lui	a5,0x12
   10588:	03313423          	sd	s3,40(sp)
   1058c:	e487b983          	ld	s3,-440(a5) # 11e48 <_global_impure_ptr>
   10590:	03413023          	sd	s4,32(sp)
   10594:	01513c23          	sd	s5,24(sp)
   10598:	01613823          	sd	s6,16(sp)
   1059c:	04113423          	sd	ra,72(sp)
   105a0:	04813023          	sd	s0,64(sp)
   105a4:	02913c23          	sd	s1,56(sp)
   105a8:	03213823          	sd	s2,48(sp)
   105ac:	01713423          	sd	s7,8(sp)
   105b0:	00050a93          	mv	s5,a0
   105b4:	00058a13          	mv	s4,a1
   105b8:	00100b13          	li	s6,1
   105bc:	1f89b403          	ld	s0,504(s3)
   105c0:	00040c63          	beqz	s0,105d8 <__call_exitprocs+0x58>
   105c4:	00842483          	lw	s1,8(s0)
   105c8:	fff4849b          	addiw	s1,s1,-1
   105cc:	00349913          	slli	s2,s1,0x3
   105d0:	01240933          	add	s2,s0,s2
   105d4:	0204d863          	bgez	s1,10604 <__call_exitprocs+0x84>
   105d8:	04813083          	ld	ra,72(sp)
   105dc:	04013403          	ld	s0,64(sp)
   105e0:	03813483          	ld	s1,56(sp)
   105e4:	03013903          	ld	s2,48(sp)
   105e8:	02813983          	ld	s3,40(sp)
   105ec:	02013a03          	ld	s4,32(sp)
   105f0:	01813a83          	ld	s5,24(sp)
   105f4:	01013b03          	ld	s6,16(sp)
   105f8:	00813b83          	ld	s7,8(sp)
   105fc:	05010113          	addi	sp,sp,80
   10600:	00008067          	ret
   10604:	000a0c63          	beqz	s4,1061c <__call_exitprocs+0x9c>
   10608:	21093783          	ld	a5,528(s2)
   1060c:	01478863          	beq	a5,s4,1061c <__call_exitprocs+0x9c>
   10610:	fff4849b          	addiw	s1,s1,-1
   10614:	ff890913          	addi	s2,s2,-8
   10618:	fbdff06f          	j	105d4 <__call_exitprocs+0x54>
   1061c:	00842783          	lw	a5,8(s0)
   10620:	01093683          	ld	a3,16(s2)
   10624:	fff7879b          	addiw	a5,a5,-1
   10628:	02979e63          	bne	a5,s1,10664 <__call_exitprocs+0xe4>
   1062c:	00942423          	sw	s1,8(s0)
   10630:	fe0680e3          	beqz	a3,10610 <__call_exitprocs+0x90>
   10634:	31042703          	lw	a4,784(s0)
   10638:	009b163b          	sllw	a2,s6,s1
   1063c:	00842b83          	lw	s7,8(s0)
   10640:	00c77733          	and	a4,a4,a2
   10644:	0007071b          	sext.w	a4,a4
   10648:	02071263          	bnez	a4,1066c <__call_exitprocs+0xec>
   1064c:	000680e7          	jalr	a3
   10650:	00842703          	lw	a4,8(s0)
   10654:	1f89b783          	ld	a5,504(s3)
   10658:	f77712e3          	bne	a4,s7,105bc <__call_exitprocs+0x3c>
   1065c:	faf40ae3          	beq	s0,a5,10610 <__call_exitprocs+0x90>
   10660:	f5dff06f          	j	105bc <__call_exitprocs+0x3c>
   10664:	00093823          	sd	zero,16(s2)
   10668:	fc9ff06f          	j	10630 <__call_exitprocs+0xb0>
   1066c:	31442783          	lw	a5,788(s0)
   10670:	11093583          	ld	a1,272(s2)
   10674:	00c7f7b3          	and	a5,a5,a2
   10678:	0007879b          	sext.w	a5,a5
   1067c:	00079863          	bnez	a5,1068c <__call_exitprocs+0x10c>
   10680:	000a8513          	mv	a0,s5
   10684:	000680e7          	jalr	a3
   10688:	fc9ff06f          	j	10650 <__call_exitprocs+0xd0>
   1068c:	00058513          	mv	a0,a1
   10690:	000680e7          	jalr	a3
   10694:	fbdff06f          	j	10650 <__call_exitprocs+0xd0>

0000000000010698 <_exit>:
   10698:	00000593          	li	a1,0
   1069c:	00000613          	li	a2,0
   106a0:	00000693          	li	a3,0
   106a4:	00000713          	li	a4,0
   106a8:	00000793          	li	a5,0
   106ac:	05d00893          	li	a7,93
   106b0:	00000073          	ecall
   106b4:	02055263          	bgez	a0,106d8 <_exit+0x40>
   106b8:	ff010113          	addi	sp,sp,-16
   106bc:	00813023          	sd	s0,0(sp)
   106c0:	00050413          	mv	s0,a0
   106c4:	00113423          	sd	ra,8(sp)
   106c8:	4080043b          	negw	s0,s0
   106cc:	010000ef          	jal	ra,106dc <__errno>
   106d0:	00852023          	sw	s0,0(a0)
   106d4:	0000006f          	j	106d4 <_exit+0x3c>
   106d8:	0000006f          	j	106d8 <_exit+0x40>

00000000000106dc <__errno>:
   106dc:	8101b503          	ld	a0,-2032(gp) # 11e50 <_impure_ptr>
   106e0:	00008067          	ret
