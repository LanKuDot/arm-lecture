
pratice1：     檔案格式 elf32-littlearm


Disassembly of section .init:

000102cc <_init>:
   102cc:	e92d4008 	push	{r3, lr}
   102d0:	eb000039 	bl	103bc <call_weak_fn>
   102d4:	e8bd8008 	pop	{r3, pc}

Disassembly of section .plt:

000102d8 <__libc_start_main@plt-0x14>:
   102d8:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
   102dc:	e59fe004 	ldr	lr, [pc, #4]	; 102e8 <_init+0x1c>
   102e0:	e08fe00e 	add	lr, pc, lr
   102e4:	e5bef008 	ldr	pc, [lr, #8]!
   102e8:	00010d18 	.word	0x00010d18

000102ec <__libc_start_main@plt>:
   102ec:	e28fc600 	add	ip, pc, #0, 12
   102f0:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   102f4:	e5bcfd18 	ldr	pc, [ip, #3352]!	; 0xd18

000102f8 <__gmon_start__@plt>:
   102f8:	e28fc600 	add	ip, pc, #0, 12
   102fc:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   10300:	e5bcfd10 	ldr	pc, [ip, #3344]!	; 0xd10

00010304 <__printf_chk@plt>:
   10304:	e28fc600 	add	ip, pc, #0, 12
   10308:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   1030c:	e5bcfd08 	ldr	pc, [ip, #3336]!	; 0xd08

00010310 <abort@plt>:
   10310:	e28fc600 	add	ip, pc, #0, 12
   10314:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   10318:	e5bcfd00 	ldr	pc, [ip, #3328]!	; 0xd00

Disassembly of section .text:

0001031c <main>:
   1031c:	b508      	push	{r3, lr}
   1031e:	2101      	movs	r1, #1
   10320:	2005      	movs	r0, #5
   10322:	f000 e8aa 	blx	10478 <addCheckCarry>
   10326:	f240 41f4 	movw	r1, #1268	; 0x4f4
   1032a:	f2c0 0101 	movt	r1, #1
   1032e:	4602      	mov	r2, r0
   10330:	2001      	movs	r0, #1
   10332:	f7ff efe8 	blx	10304 <__printf_chk@plt>
   10336:	2101      	movs	r1, #1
   10338:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
   1033c:	f000 e89c 	blx	10478 <addCheckCarry>
   10340:	f240 5110 	movw	r1, #1296	; 0x510
   10344:	f2c0 0101 	movt	r1, #1
   10348:	4602      	mov	r2, r0
   1034a:	2001      	movs	r0, #1
   1034c:	f7ff efda 	blx	10304 <__printf_chk@plt>
   10350:	2201      	movs	r2, #1
   10352:	4610      	mov	r0, r2
   10354:	2105      	movs	r1, #5
   10356:	f000 e8a0 	blx	10498 <adc>
   1035a:	f240 5138 	movw	r1, #1336	; 0x538
   1035e:	f2c0 0101 	movt	r1, #1
   10362:	4602      	mov	r2, r0
   10364:	2001      	movs	r0, #1
   10366:	f7ff efce 	blx	10304 <__printf_chk@plt>
   1036a:	2201      	movs	r2, #1
   1036c:	4610      	mov	r0, r2
   1036e:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
   10372:	f000 e892 	blx	10498 <adc>
   10376:	f240 5150 	movw	r1, #1360	; 0x550
   1037a:	f2c0 0101 	movt	r1, #1
   1037e:	4602      	mov	r2, r0
   10380:	2001      	movs	r0, #1
   10382:	f7ff efc0 	blx	10304 <__printf_chk@plt>
   10386:	2000      	movs	r0, #0
   10388:	bd08      	pop	{r3, pc}
   1038a:	bf00      	nop

0001038c <_start>:
   1038c:	f04f 0b00 	mov.w	fp, #0
   10390:	f04f 0e00 	mov.w	lr, #0
   10394:	bc02      	pop	{r1}
   10396:	466a      	mov	r2, sp
   10398:	b404      	push	{r2}
   1039a:	b401      	push	{r0}
   1039c:	f8df c010 	ldr.w	ip, [pc, #16]	; 103b0 <_start+0x24>
   103a0:	f84d cd04 	str.w	ip, [sp, #-4]!
   103a4:	4803      	ldr	r0, [pc, #12]	; (103b4 <_start+0x28>)
   103a6:	4b04      	ldr	r3, [pc, #16]	; (103b8 <_start+0x2c>)
   103a8:	f7ff efa0 	blx	102ec <__libc_start_main@plt>
   103ac:	f7ff efb0 	blx	10310 <abort@plt>
   103b0:	000104e5 	.word	0x000104e5
   103b4:	0001031d 	.word	0x0001031d
   103b8:	000104a9 	.word	0x000104a9

000103bc <call_weak_fn>:
   103bc:	e59f3014 	ldr	r3, [pc, #20]	; 103d8 <call_weak_fn+0x1c>
   103c0:	e59f2014 	ldr	r2, [pc, #20]	; 103dc <call_weak_fn+0x20>
   103c4:	e08f3003 	add	r3, pc, r3
   103c8:	e7932002 	ldr	r2, [r3, r2]
   103cc:	e3520000 	cmp	r2, #0
   103d0:	012fff1e 	bxeq	lr
   103d4:	eaffffc7 	b	102f8 <__gmon_start__@plt>
   103d8:	00010c34 	.word	0x00010c34
   103dc:	0000001c 	.word	0x0000001c

000103e0 <deregister_tm_clones>:
   103e0:	4b07      	ldr	r3, [pc, #28]	; (10400 <deregister_tm_clones+0x20>)
   103e2:	f241 0028 	movw	r0, #4136	; 0x1028
   103e6:	f2c0 0002 	movt	r0, #2
   103ea:	1a1b      	subs	r3, r3, r0
   103ec:	2b06      	cmp	r3, #6
   103ee:	d905      	bls.n	103fc <deregister_tm_clones+0x1c>
   103f0:	f240 0300 	movw	r3, #0
   103f4:	f2c0 0300 	movt	r3, #0
   103f8:	b103      	cbz	r3, 103fc <deregister_tm_clones+0x1c>
   103fa:	4718      	bx	r3
   103fc:	4770      	bx	lr
   103fe:	bf00      	nop
   10400:	0002102b 	.word	0x0002102b

00010404 <register_tm_clones>:
   10404:	f241 0328 	movw	r3, #4136	; 0x1028
   10408:	f241 0028 	movw	r0, #4136	; 0x1028
   1040c:	f2c0 0302 	movt	r3, #2
   10410:	f2c0 0002 	movt	r0, #2
   10414:	1a19      	subs	r1, r3, r0
   10416:	1089      	asrs	r1, r1, #2
   10418:	eb01 71d1 	add.w	r1, r1, r1, lsr #31
   1041c:	1049      	asrs	r1, r1, #1
   1041e:	d005      	beq.n	1042c <register_tm_clones+0x28>
   10420:	f240 0300 	movw	r3, #0
   10424:	f2c0 0300 	movt	r3, #0
   10428:	b103      	cbz	r3, 1042c <register_tm_clones+0x28>
   1042a:	4718      	bx	r3
   1042c:	4770      	bx	lr
   1042e:	bf00      	nop

00010430 <__do_global_dtors_aux>:
   10430:	b510      	push	{r4, lr}
   10432:	f241 0428 	movw	r4, #4136	; 0x1028
   10436:	f2c0 0402 	movt	r4, #2
   1043a:	7823      	ldrb	r3, [r4, #0]
   1043c:	b91b      	cbnz	r3, 10446 <__do_global_dtors_aux+0x16>
   1043e:	f7ff ffcf 	bl	103e0 <deregister_tm_clones>
   10442:	2301      	movs	r3, #1
   10444:	7023      	strb	r3, [r4, #0]
   10446:	bd10      	pop	{r4, pc}

00010448 <frame_dummy>:
   10448:	f640 7014 	movw	r0, #3860	; 0xf14
   1044c:	b508      	push	{r3, lr}
   1044e:	f2c0 0002 	movt	r0, #2
   10452:	6803      	ldr	r3, [r0, #0]
   10454:	b913      	cbnz	r3, 1045c <frame_dummy+0x14>
   10456:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
   1045a:	e7d3      	b.n	10404 <register_tm_clones>
   1045c:	f240 0300 	movw	r3, #0
   10460:	f2c0 0300 	movt	r3, #0
   10464:	2b00      	cmp	r3, #0
   10466:	d0f6      	beq.n	10456 <frame_dummy+0xe>
   10468:	4798      	blx	r3
   1046a:	e7f4      	b.n	10456 <frame_dummy+0xe>

0001046c <add>:
   1046c:	e0810000 	add	r0, r1, r0
   10470:	e12fff1e 	bx	lr
   10474:	e1a00000 	nop			; (mov r0, r0)

00010478 <addCheckCarry>:
   10478:	e0911000 	adds	r1, r1, r0
   1047c:	3a000002 	bcc	1048c <CflagNSet>

00010480 <CflagSet>:
   10480:	e3a00001 	mov	r0, #1
   10484:	e12fff1e 	bx	lr
   10488:	e1a00000 	nop			; (mov r0, r0)

0001048c <CflagNSet>:
   1048c:	e3a00000 	mov	r0, #0
   10490:	e12fff1e 	bx	lr
   10494:	e1a00000 	nop			; (mov r0, r0)

00010498 <adc>:
   10498:	e0911002 	adds	r1, r1, r2
   1049c:	e0a00002 	adc	r0, r0, r2
   104a0:	e12fff1e 	bx	lr
   104a4:	e1a00000 	nop			; (mov r0, r0)

000104a8 <__libc_csu_init>:
   104a8:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
   104ac:	4607      	mov	r7, r0
   104ae:	4e0b      	ldr	r6, [pc, #44]	; (104dc <__libc_csu_init+0x34>)
   104b0:	4688      	mov	r8, r1
   104b2:	4d0b      	ldr	r5, [pc, #44]	; (104e0 <__libc_csu_init+0x38>)
   104b4:	4691      	mov	r9, r2
   104b6:	447e      	add	r6, pc
   104b8:	f7ff ef08 	blx	102cc <_init>
   104bc:	447d      	add	r5, pc
   104be:	1b76      	subs	r6, r6, r5
   104c0:	10b6      	asrs	r6, r6, #2
   104c2:	d009      	beq.n	104d8 <__libc_csu_init+0x30>
   104c4:	2400      	movs	r4, #0
   104c6:	3401      	adds	r4, #1
   104c8:	f855 3b04 	ldr.w	r3, [r5], #4
   104cc:	464a      	mov	r2, r9
   104ce:	4641      	mov	r1, r8
   104d0:	4638      	mov	r0, r7
   104d2:	4798      	blx	r3
   104d4:	42b4      	cmp	r4, r6
   104d6:	d1f6      	bne.n	104c6 <__libc_csu_init+0x1e>
   104d8:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
   104dc:	00010a56 	.word	0x00010a56
   104e0:	00010a4c 	.word	0x00010a4c

000104e4 <__libc_csu_fini>:
   104e4:	4770      	bx	lr
   104e6:	bf00      	nop

Disassembly of section .fini:

000104e8 <_fini>:
   104e8:	e92d4008 	push	{r3, lr}
   104ec:	e8bd8008 	pop	{r3, pc}
