
mul-div:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <_start>:
   100b0:	00002197          	auipc	gp,0x2
   100b4:	5f818193          	addi	gp,gp,1528 # 126a8 <__global_pointer$>
   100b8:	81818513          	addi	a0,gp,-2024 # 11ec0 <_edata>
   100bc:	85018613          	addi	a2,gp,-1968 # 11ef8 <_end>
   100c0:	40a60633          	sub	a2,a2,a0
   100c4:	00000593          	li	a1,0
   100c8:	370000ef          	jal	ra,10438 <memset>
   100cc:	00000517          	auipc	a0,0x0
   100d0:	25c50513          	addi	a0,a0,604 # 10328 <__libc_fini_array>
   100d4:	20c000ef          	jal	ra,102e0 <atexit>
   100d8:	2c0000ef          	jal	ra,10398 <__libc_init_array>
   100dc:	00012503          	lw	a0,0(sp)
   100e0:	00810593          	addi	a1,sp,8
   100e4:	00000613          	li	a2,0
   100e8:	104000ef          	jal	ra,101ec <main>
   100ec:	2080006f          	j	102f4 <exit>

00000000000100f0 <_fini>:
   100f0:	00008067          	ret

00000000000100f4 <deregister_tm_clones>:
   100f4:	00012537          	lui	a0,0x12
   100f8:	000127b7          	lui	a5,0x12
   100fc:	ea850713          	addi	a4,a0,-344 # 11ea8 <__TMC_END__>
   10100:	ea878793          	addi	a5,a5,-344 # 11ea8 <__TMC_END__>
   10104:	00e78c63          	beq	a5,a4,1011c <deregister_tm_clones+0x28>
   10108:	00000337          	lui	t1,0x0
   1010c:	00030313          	mv	t1,t1
   10110:	00030663          	beqz	t1,1011c <deregister_tm_clones+0x28>
   10114:	ea850513          	addi	a0,a0,-344
   10118:	00030067          	jr	t1
   1011c:	00008067          	ret

0000000000010120 <register_tm_clones>:
   10120:	000127b7          	lui	a5,0x12
   10124:	00012537          	lui	a0,0x12
   10128:	ea878593          	addi	a1,a5,-344 # 11ea8 <__TMC_END__>
   1012c:	ea850793          	addi	a5,a0,-344 # 11ea8 <__TMC_END__>
   10130:	40f585b3          	sub	a1,a1,a5
   10134:	4035d593          	srai	a1,a1,0x3
   10138:	03f5d793          	srli	a5,a1,0x3f
   1013c:	00b785b3          	add	a1,a5,a1
   10140:	4015d593          	srai	a1,a1,0x1
   10144:	00058c63          	beqz	a1,1015c <register_tm_clones+0x3c>
   10148:	00000337          	lui	t1,0x0
   1014c:	00030313          	mv	t1,t1
   10150:	00030663          	beqz	t1,1015c <register_tm_clones+0x3c>
   10154:	ea850513          	addi	a0,a0,-344
   10158:	00030067          	jr	t1
   1015c:	00008067          	ret

0000000000010160 <__do_global_dtors_aux>:
   10160:	8181c703          	lbu	a4,-2024(gp) # 11ec0 <_edata>
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
   1018c:	72450513          	addi	a0,a0,1828 # 11724 <__EH_FRAME_BEGIN__>
   10190:	ffff0097          	auipc	ra,0xffff0
   10194:	e70080e7          	jalr	-400(ra) # 0 <_start-0x100b0>
   10198:	00100793          	li	a5,1
   1019c:	80f18c23          	sb	a5,-2024(gp) # 11ec0 <_edata>
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
   101cc:	ec858593          	addi	a1,a1,-312 # 11ec8 <object.5215>
   101d0:	72450513          	addi	a0,a0,1828 # 11724 <__EH_FRAME_BEGIN__>
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
   10200:	0540006f          	j	10254 <main+0x68>
   10204:	000117b7          	lui	a5,0x11
   10208:	fec42703          	lw	a4,-20(s0)
   1020c:	00271713          	slli	a4,a4,0x2
   10210:	73878793          	addi	a5,a5,1848 # 11738 <__fini_array_end>
   10214:	00f707b3          	add	a5,a4,a5
   10218:	0007a783          	lw	a5,0(a5)
   1021c:	00078713          	mv	a4,a5
   10220:	00070793          	mv	a5,a4
   10224:	0027979b          	slliw	a5,a5,0x2
   10228:	00e787bb          	addw	a5,a5,a4
   1022c:	0007871b          	sext.w	a4,a5
   10230:	000117b7          	lui	a5,0x11
   10234:	fec42683          	lw	a3,-20(s0)
   10238:	00269693          	slli	a3,a3,0x2
   1023c:	73878793          	addi	a5,a5,1848 # 11738 <__fini_array_end>
   10240:	00f687b3          	add	a5,a3,a5
   10244:	00e7a023          	sw	a4,0(a5)
   10248:	fec42783          	lw	a5,-20(s0)
   1024c:	0017879b          	addiw	a5,a5,1
   10250:	fef42623          	sw	a5,-20(s0)
   10254:	fec42783          	lw	a5,-20(s0)
   10258:	0007871b          	sext.w	a4,a5
   1025c:	00400793          	li	a5,4
   10260:	fae7d2e3          	ble	a4,a5,10204 <main+0x18>
   10264:	00500793          	li	a5,5
   10268:	fef42623          	sw	a5,-20(s0)
   1026c:	0500006f          	j	102bc <main+0xd0>
   10270:	000117b7          	lui	a5,0x11
   10274:	fec42703          	lw	a4,-20(s0)
   10278:	00271713          	slli	a4,a4,0x2
   1027c:	73878793          	addi	a5,a5,1848 # 11738 <__fini_array_end>
   10280:	00f707b3          	add	a5,a4,a5
   10284:	0007a783          	lw	a5,0(a5)
   10288:	01f7d71b          	srliw	a4,a5,0x1f
   1028c:	00f707bb          	addw	a5,a4,a5
   10290:	4017d79b          	sraiw	a5,a5,0x1
   10294:	0007871b          	sext.w	a4,a5
   10298:	000117b7          	lui	a5,0x11
   1029c:	fec42683          	lw	a3,-20(s0)
   102a0:	00269693          	slli	a3,a3,0x2
   102a4:	73878793          	addi	a5,a5,1848 # 11738 <__fini_array_end>
   102a8:	00f687b3          	add	a5,a3,a5
   102ac:	00e7a023          	sw	a4,0(a5)
   102b0:	fec42783          	lw	a5,-20(s0)
   102b4:	0017879b          	addiw	a5,a5,1
   102b8:	fef42623          	sw	a5,-20(s0)
   102bc:	fec42783          	lw	a5,-20(s0)
   102c0:	0007871b          	sext.w	a4,a5
   102c4:	00900793          	li	a5,9
   102c8:	fae7d4e3          	ble	a4,a5,10270 <main+0x84>
   102cc:	00000793          	li	a5,0
   102d0:	00078513          	mv	a0,a5
   102d4:	01813403          	ld	s0,24(sp)
   102d8:	02010113          	addi	sp,sp,32
   102dc:	00008067          	ret

00000000000102e0 <atexit>:
   102e0:	00050593          	mv	a1,a0
   102e4:	00000693          	li	a3,0
   102e8:	00000613          	li	a2,0
   102ec:	00000513          	li	a0,0
   102f0:	2240006f          	j	10514 <__register_exitproc>

00000000000102f4 <exit>:
   102f4:	ff010113          	addi	sp,sp,-16
   102f8:	00000593          	li	a1,0
   102fc:	00813023          	sd	s0,0(sp)
   10300:	00113423          	sd	ra,8(sp)
   10304:	00050413          	mv	s0,a0
   10308:	294000ef          	jal	ra,1059c <__call_exitprocs>
   1030c:	000127b7          	lui	a5,0x12
   10310:	eb07b503          	ld	a0,-336(a5) # 11eb0 <_global_impure_ptr>
   10314:	05853783          	ld	a5,88(a0)
   10318:	00078463          	beqz	a5,10320 <exit+0x2c>
   1031c:	000780e7          	jalr	a5
   10320:	00040513          	mv	a0,s0
   10324:	390000ef          	jal	ra,106b4 <_exit>

0000000000010328 <__libc_fini_array>:
   10328:	fe010113          	addi	sp,sp,-32
   1032c:	000117b7          	lui	a5,0x11
   10330:	00011737          	lui	a4,0x11
   10334:	00813823          	sd	s0,16(sp)
   10338:	73070713          	addi	a4,a4,1840 # 11730 <__init_array_end>
   1033c:	73878413          	addi	s0,a5,1848 # 11738 <__fini_array_end>
   10340:	40e40433          	sub	s0,s0,a4
   10344:	00913423          	sd	s1,8(sp)
   10348:	01213023          	sd	s2,0(sp)
   1034c:	00113c23          	sd	ra,24(sp)
   10350:	40345413          	srai	s0,s0,0x3
   10354:	00000493          	li	s1,0
   10358:	73878913          	addi	s2,a5,1848
   1035c:	00941e63          	bne	s0,s1,10378 <__libc_fini_array+0x50>
   10360:	01013403          	ld	s0,16(sp)
   10364:	01813083          	ld	ra,24(sp)
   10368:	00813483          	ld	s1,8(sp)
   1036c:	00013903          	ld	s2,0(sp)
   10370:	02010113          	addi	sp,sp,32
   10374:	d7dff06f          	j	100f0 <_fini>
   10378:	ff800593          	li	a1,-8
   1037c:	00048513          	mv	a0,s1
   10380:	380000ef          	jal	ra,10700 <__muldi3>
   10384:	00a90533          	add	a0,s2,a0
   10388:	ff853783          	ld	a5,-8(a0)
   1038c:	00148493          	addi	s1,s1,1
   10390:	000780e7          	jalr	a5
   10394:	fc9ff06f          	j	1035c <__libc_fini_array+0x34>

0000000000010398 <__libc_init_array>:
   10398:	fe010113          	addi	sp,sp,-32
   1039c:	00813823          	sd	s0,16(sp)
   103a0:	00913423          	sd	s1,8(sp)
   103a4:	00011437          	lui	s0,0x11
   103a8:	000114b7          	lui	s1,0x11
   103ac:	72848793          	addi	a5,s1,1832 # 11728 <__frame_dummy_init_array_entry>
   103b0:	72840413          	addi	s0,s0,1832 # 11728 <__frame_dummy_init_array_entry>
   103b4:	40f40433          	sub	s0,s0,a5
   103b8:	01213023          	sd	s2,0(sp)
   103bc:	00113c23          	sd	ra,24(sp)
   103c0:	40345413          	srai	s0,s0,0x3
   103c4:	72848493          	addi	s1,s1,1832
   103c8:	00000913          	li	s2,0
   103cc:	04891263          	bne	s2,s0,10410 <__libc_init_array+0x78>
   103d0:	000114b7          	lui	s1,0x11
   103d4:	d1dff0ef          	jal	ra,100f0 <_fini>
   103d8:	00011437          	lui	s0,0x11
   103dc:	72848793          	addi	a5,s1,1832 # 11728 <__frame_dummy_init_array_entry>
   103e0:	73040413          	addi	s0,s0,1840 # 11730 <__init_array_end>
   103e4:	40f40433          	sub	s0,s0,a5
   103e8:	40345413          	srai	s0,s0,0x3
   103ec:	72848493          	addi	s1,s1,1832
   103f0:	00000913          	li	s2,0
   103f4:	02891863          	bne	s2,s0,10424 <__libc_init_array+0x8c>
   103f8:	01813083          	ld	ra,24(sp)
   103fc:	01013403          	ld	s0,16(sp)
   10400:	00813483          	ld	s1,8(sp)
   10404:	00013903          	ld	s2,0(sp)
   10408:	02010113          	addi	sp,sp,32
   1040c:	00008067          	ret
   10410:	0004b783          	ld	a5,0(s1)
   10414:	00190913          	addi	s2,s2,1
   10418:	00848493          	addi	s1,s1,8
   1041c:	000780e7          	jalr	a5
   10420:	fadff06f          	j	103cc <__libc_init_array+0x34>
   10424:	0004b783          	ld	a5,0(s1)
   10428:	00190913          	addi	s2,s2,1
   1042c:	00848493          	addi	s1,s1,8
   10430:	000780e7          	jalr	a5
   10434:	fc1ff06f          	j	103f4 <__libc_init_array+0x5c>

0000000000010438 <memset>:
   10438:	00f00313          	li	t1,15
   1043c:	00050713          	mv	a4,a0
   10440:	02c37a63          	bleu	a2,t1,10474 <memset+0x3c>
   10444:	00f77793          	andi	a5,a4,15
   10448:	0a079063          	bnez	a5,104e8 <memset+0xb0>
   1044c:	06059e63          	bnez	a1,104c8 <memset+0x90>
   10450:	ff067693          	andi	a3,a2,-16
   10454:	00f67613          	andi	a2,a2,15
   10458:	00e686b3          	add	a3,a3,a4
   1045c:	00b73023          	sd	a1,0(a4)
   10460:	00b73423          	sd	a1,8(a4)
   10464:	01070713          	addi	a4,a4,16
   10468:	fed76ae3          	bltu	a4,a3,1045c <memset+0x24>
   1046c:	00061463          	bnez	a2,10474 <memset+0x3c>
   10470:	00008067          	ret
   10474:	40c306b3          	sub	a3,t1,a2
   10478:	00269693          	slli	a3,a3,0x2
   1047c:	00000297          	auipc	t0,0x0
   10480:	005686b3          	add	a3,a3,t0
   10484:	00c68067          	jr	12(a3)
   10488:	00b70723          	sb	a1,14(a4)
   1048c:	00b706a3          	sb	a1,13(a4)
   10490:	00b70623          	sb	a1,12(a4)
   10494:	00b705a3          	sb	a1,11(a4)
   10498:	00b70523          	sb	a1,10(a4)
   1049c:	00b704a3          	sb	a1,9(a4)
   104a0:	00b70423          	sb	a1,8(a4)
   104a4:	00b703a3          	sb	a1,7(a4)
   104a8:	00b70323          	sb	a1,6(a4)
   104ac:	00b702a3          	sb	a1,5(a4)
   104b0:	00b70223          	sb	a1,4(a4)
   104b4:	00b701a3          	sb	a1,3(a4)
   104b8:	00b70123          	sb	a1,2(a4)
   104bc:	00b700a3          	sb	a1,1(a4)
   104c0:	00b70023          	sb	a1,0(a4)
   104c4:	00008067          	ret
   104c8:	0ff5f593          	andi	a1,a1,255
   104cc:	00859693          	slli	a3,a1,0x8
   104d0:	00d5e5b3          	or	a1,a1,a3
   104d4:	01059693          	slli	a3,a1,0x10
   104d8:	00d5e5b3          	or	a1,a1,a3
   104dc:	02059693          	slli	a3,a1,0x20
   104e0:	00d5e5b3          	or	a1,a1,a3
   104e4:	f6dff06f          	j	10450 <memset+0x18>
   104e8:	00279693          	slli	a3,a5,0x2
   104ec:	00000297          	auipc	t0,0x0
   104f0:	005686b3          	add	a3,a3,t0
   104f4:	00008293          	mv	t0,ra
   104f8:	f98680e7          	jalr	-104(a3)
   104fc:	00028093          	mv	ra,t0
   10500:	ff078793          	addi	a5,a5,-16
   10504:	40f70733          	sub	a4,a4,a5
   10508:	00f60633          	add	a2,a2,a5
   1050c:	f6c374e3          	bleu	a2,t1,10474 <memset+0x3c>
   10510:	f3dff06f          	j	1044c <memset+0x14>

0000000000010514 <__register_exitproc>:
   10514:	000127b7          	lui	a5,0x12
   10518:	eb07b703          	ld	a4,-336(a5) # 11eb0 <_global_impure_ptr>
   1051c:	00050313          	mv	t1,a0
   10520:	1f873783          	ld	a5,504(a4)
   10524:	00079663          	bnez	a5,10530 <__register_exitproc+0x1c>
   10528:	20070793          	addi	a5,a4,512
   1052c:	1ef73c23          	sd	a5,504(a4)
   10530:	0087a703          	lw	a4,8(a5)
   10534:	01f00813          	li	a6,31
   10538:	fff00513          	li	a0,-1
   1053c:	04e84e63          	blt	a6,a4,10598 <__register_exitproc+0x84>
   10540:	02030e63          	beqz	t1,1057c <__register_exitproc+0x68>
   10544:	00371813          	slli	a6,a4,0x3
   10548:	01078833          	add	a6,a5,a6
   1054c:	10c83823          	sd	a2,272(a6)
   10550:	3107a883          	lw	a7,784(a5)
   10554:	00100613          	li	a2,1
   10558:	00e6163b          	sllw	a2,a2,a4
   1055c:	00c8e8b3          	or	a7,a7,a2
   10560:	3117a823          	sw	a7,784(a5)
   10564:	20d83823          	sd	a3,528(a6)
   10568:	00200693          	li	a3,2
   1056c:	00d31863          	bne	t1,a3,1057c <__register_exitproc+0x68>
   10570:	3147a683          	lw	a3,788(a5)
   10574:	00c6e633          	or	a2,a3,a2
   10578:	30c7aa23          	sw	a2,788(a5)
   1057c:	0017069b          	addiw	a3,a4,1
   10580:	00270713          	addi	a4,a4,2
   10584:	00371713          	slli	a4,a4,0x3
   10588:	00d7a423          	sw	a3,8(a5)
   1058c:	00e787b3          	add	a5,a5,a4
   10590:	00b7b023          	sd	a1,0(a5)
   10594:	00000513          	li	a0,0
   10598:	00008067          	ret

000000000001059c <__call_exitprocs>:
   1059c:	fb010113          	addi	sp,sp,-80
   105a0:	000127b7          	lui	a5,0x12
   105a4:	03313423          	sd	s3,40(sp)
   105a8:	eb07b983          	ld	s3,-336(a5) # 11eb0 <_global_impure_ptr>
   105ac:	03413023          	sd	s4,32(sp)
   105b0:	01513c23          	sd	s5,24(sp)
   105b4:	01613823          	sd	s6,16(sp)
   105b8:	04113423          	sd	ra,72(sp)
   105bc:	04813023          	sd	s0,64(sp)
   105c0:	02913c23          	sd	s1,56(sp)
   105c4:	03213823          	sd	s2,48(sp)
   105c8:	01713423          	sd	s7,8(sp)
   105cc:	00050a93          	mv	s5,a0
   105d0:	00058a13          	mv	s4,a1
   105d4:	00100b13          	li	s6,1
   105d8:	1f89b403          	ld	s0,504(s3)
   105dc:	00040c63          	beqz	s0,105f4 <__call_exitprocs+0x58>
   105e0:	00842483          	lw	s1,8(s0)
   105e4:	fff4849b          	addiw	s1,s1,-1
   105e8:	00349913          	slli	s2,s1,0x3
   105ec:	01240933          	add	s2,s0,s2
   105f0:	0204d863          	bgez	s1,10620 <__call_exitprocs+0x84>
   105f4:	04813083          	ld	ra,72(sp)
   105f8:	04013403          	ld	s0,64(sp)
   105fc:	03813483          	ld	s1,56(sp)
   10600:	03013903          	ld	s2,48(sp)
   10604:	02813983          	ld	s3,40(sp)
   10608:	02013a03          	ld	s4,32(sp)
   1060c:	01813a83          	ld	s5,24(sp)
   10610:	01013b03          	ld	s6,16(sp)
   10614:	00813b83          	ld	s7,8(sp)
   10618:	05010113          	addi	sp,sp,80
   1061c:	00008067          	ret
   10620:	000a0c63          	beqz	s4,10638 <__call_exitprocs+0x9c>
   10624:	21093783          	ld	a5,528(s2)
   10628:	01478863          	beq	a5,s4,10638 <__call_exitprocs+0x9c>
   1062c:	fff4849b          	addiw	s1,s1,-1
   10630:	ff890913          	addi	s2,s2,-8
   10634:	fbdff06f          	j	105f0 <__call_exitprocs+0x54>
   10638:	00842783          	lw	a5,8(s0)
   1063c:	01093683          	ld	a3,16(s2)
   10640:	fff7879b          	addiw	a5,a5,-1
   10644:	02979e63          	bne	a5,s1,10680 <__call_exitprocs+0xe4>
   10648:	00942423          	sw	s1,8(s0)
   1064c:	fe0680e3          	beqz	a3,1062c <__call_exitprocs+0x90>
   10650:	31042703          	lw	a4,784(s0)
   10654:	009b163b          	sllw	a2,s6,s1
   10658:	00842b83          	lw	s7,8(s0)
   1065c:	00c77733          	and	a4,a4,a2
   10660:	0007071b          	sext.w	a4,a4
   10664:	02071263          	bnez	a4,10688 <__call_exitprocs+0xec>
   10668:	000680e7          	jalr	a3
   1066c:	00842703          	lw	a4,8(s0)
   10670:	1f89b783          	ld	a5,504(s3)
   10674:	f77712e3          	bne	a4,s7,105d8 <__call_exitprocs+0x3c>
   10678:	faf40ae3          	beq	s0,a5,1062c <__call_exitprocs+0x90>
   1067c:	f5dff06f          	j	105d8 <__call_exitprocs+0x3c>
   10680:	00093823          	sd	zero,16(s2)
   10684:	fc9ff06f          	j	1064c <__call_exitprocs+0xb0>
   10688:	31442783          	lw	a5,788(s0)
   1068c:	11093583          	ld	a1,272(s2)
   10690:	00c7f7b3          	and	a5,a5,a2
   10694:	0007879b          	sext.w	a5,a5
   10698:	00079863          	bnez	a5,106a8 <__call_exitprocs+0x10c>
   1069c:	000a8513          	mv	a0,s5
   106a0:	000680e7          	jalr	a3
   106a4:	fc9ff06f          	j	1066c <__call_exitprocs+0xd0>
   106a8:	00058513          	mv	a0,a1
   106ac:	000680e7          	jalr	a3
   106b0:	fbdff06f          	j	1066c <__call_exitprocs+0xd0>

00000000000106b4 <_exit>:
   106b4:	00000593          	li	a1,0
   106b8:	00000613          	li	a2,0
   106bc:	00000693          	li	a3,0
   106c0:	00000713          	li	a4,0
   106c4:	00000793          	li	a5,0
   106c8:	05d00893          	li	a7,93
   106cc:	00000073          	ecall
   106d0:	02055263          	bgez	a0,106f4 <_exit+0x40>
   106d4:	ff010113          	addi	sp,sp,-16
   106d8:	00813023          	sd	s0,0(sp)
   106dc:	00050413          	mv	s0,a0
   106e0:	00113423          	sd	ra,8(sp)
   106e4:	4080043b          	negw	s0,s0
   106e8:	010000ef          	jal	ra,106f8 <__errno>
   106ec:	00852023          	sw	s0,0(a0)
   106f0:	0000006f          	j	106f0 <_exit+0x3c>
   106f4:	0000006f          	j	106f4 <_exit+0x40>

00000000000106f8 <__errno>:
   106f8:	8101b503          	ld	a0,-2032(gp) # 11eb8 <_impure_ptr>
   106fc:	00008067          	ret

0000000000010700 <__muldi3>:
   10700:	00050613          	mv	a2,a0
   10704:	00000513          	li	a0,0
   10708:	0015f693          	andi	a3,a1,1
   1070c:	00068463          	beqz	a3,10714 <__muldi3+0x14>
   10710:	00c50533          	add	a0,a0,a2
   10714:	0015d593          	srli	a1,a1,0x1
   10718:	00161613          	slli	a2,a2,0x1
   1071c:	fe0596e3          	bnez	a1,10708 <__muldi3+0x8>
   10720:	00008067          	ret
