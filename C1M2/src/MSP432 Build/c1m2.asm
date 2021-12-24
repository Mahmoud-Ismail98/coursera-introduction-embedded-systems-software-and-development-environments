
c1m2.out:     file format elf32-littlearm


Disassembly of section .text:

00000140 <__do_global_dtors_aux>:
 140:	b510      	push	{r4, lr}
 142:	4c05      	ldr	r4, [pc, #20]	; (158 <__do_global_dtors_aux+0x18>)
 144:	7823      	ldrb	r3, [r4, #0]
 146:	b933      	cbnz	r3, 156 <__do_global_dtors_aux+0x16>
 148:	4b04      	ldr	r3, [pc, #16]	; (15c <__do_global_dtors_aux+0x1c>)
 14a:	b113      	cbz	r3, 152 <__do_global_dtors_aux+0x12>
 14c:	4804      	ldr	r0, [pc, #16]	; (160 <__do_global_dtors_aux+0x20>)
 14e:	f3af 8000 	nop.w
 152:	2301      	movs	r3, #1
 154:	7023      	strb	r3, [r4, #0]
 156:	bd10      	pop	{r4, pc}
 158:	2000043c 	.word	0x2000043c
 15c:	00000000 	.word	0x00000000
 160:	00000ad0 	.word	0x00000ad0

00000164 <frame_dummy>:
 164:	b508      	push	{r3, lr}
 166:	4b03      	ldr	r3, [pc, #12]	; (174 <frame_dummy+0x10>)
 168:	b11b      	cbz	r3, 172 <frame_dummy+0xe>
 16a:	4903      	ldr	r1, [pc, #12]	; (178 <frame_dummy+0x14>)
 16c:	4803      	ldr	r0, [pc, #12]	; (17c <frame_dummy+0x18>)
 16e:	f3af 8000 	nop.w
 172:	bd08      	pop	{r3, pc}
 174:	00000000 	.word	0x00000000
 178:	20000440 	.word	0x20000440
 17c:	00000ad0 	.word	0x00000ad0

00000180 <_stack_init>:
 180:	f5a3 3a80 	sub.w	sl, r3, #65536	; 0x10000
 184:	4770      	bx	lr
 186:	bf00      	nop

00000188 <_mainCRTStartup>:
 188:	4b17      	ldr	r3, [pc, #92]	; (1e8 <_mainCRTStartup+0x60>)
 18a:	2b00      	cmp	r3, #0
 18c:	bf08      	it	eq
 18e:	4b13      	ldreq	r3, [pc, #76]	; (1dc <_mainCRTStartup+0x54>)
 190:	469d      	mov	sp, r3
 192:	f7ff fff5 	bl	180 <_stack_init>
 196:	2100      	movs	r1, #0
 198:	468b      	mov	fp, r1
 19a:	460f      	mov	r7, r1
 19c:	4813      	ldr	r0, [pc, #76]	; (1ec <_mainCRTStartup+0x64>)
 19e:	4a14      	ldr	r2, [pc, #80]	; (1f0 <_mainCRTStartup+0x68>)
 1a0:	1a12      	subs	r2, r2, r0
 1a2:	f000 fad7 	bl	754 <memset>
 1a6:	4b0e      	ldr	r3, [pc, #56]	; (1e0 <_mainCRTStartup+0x58>)
 1a8:	2b00      	cmp	r3, #0
 1aa:	d000      	beq.n	1ae <_mainCRTStartup+0x26>
 1ac:	4798      	blx	r3
 1ae:	4b0d      	ldr	r3, [pc, #52]	; (1e4 <_mainCRTStartup+0x5c>)
 1b0:	2b00      	cmp	r3, #0
 1b2:	d000      	beq.n	1b6 <_mainCRTStartup+0x2e>
 1b4:	4798      	blx	r3
 1b6:	2000      	movs	r0, #0
 1b8:	2100      	movs	r1, #0
 1ba:	0004      	movs	r4, r0
 1bc:	000d      	movs	r5, r1
 1be:	480d      	ldr	r0, [pc, #52]	; (1f4 <_mainCRTStartup+0x6c>)
 1c0:	2800      	cmp	r0, #0
 1c2:	d002      	beq.n	1ca <_mainCRTStartup+0x42>
 1c4:	480c      	ldr	r0, [pc, #48]	; (1f8 <_mainCRTStartup+0x70>)
 1c6:	f000 fb87 	bl	8d8 <atexit>
 1ca:	f000 fa9f 	bl	70c <__libc_init_array>
 1ce:	0020      	movs	r0, r4
 1d0:	0029      	movs	r1, r5
 1d2:	f000 f813 	bl	1fc <main>
 1d6:	f000 fa89 	bl	6ec <exit>
 1da:	bf00      	nop
 1dc:	00080000 	.word	0x00080000
	...
 1e8:	20000488 	.word	0x20000488
 1ec:	2000043c 	.word	0x2000043c
 1f0:	20000488 	.word	0x20000488
 1f4:	000008d9 	.word	0x000008d9
 1f8:	000008e5 	.word	0x000008e5

000001fc <main>:
 1fc:	b580      	push	{r7, lr}
 1fe:	b082      	sub	sp, #8
 200:	af00      	add	r7, sp, #0
 202:	210a      	movs	r1, #10
 204:	4828      	ldr	r0, [pc, #160]	; (2a8 <main+0xac>)
 206:	f000 f89e 	bl	346 <clear_all>
 20a:	4b28      	ldr	r3, [pc, #160]	; (2ac <main+0xb0>)
 20c:	2202      	movs	r2, #2
 20e:	212b      	movs	r1, #43	; 0x2b
 210:	4618      	mov	r0, r3
 212:	f000 f87c 	bl	30e <set_all>
 216:	2261      	movs	r2, #97	; 0x61
 218:	2100      	movs	r1, #0
 21a:	4823      	ldr	r0, [pc, #140]	; (2a8 <main+0xac>)
 21c:	f000 f848 	bl	2b0 <set_value>
 220:	2109      	movs	r1, #9
 222:	4821      	ldr	r0, [pc, #132]	; (2a8 <main+0xac>)
 224:	f000 f864 	bl	2f0 <get_value>
 228:	4603      	mov	r3, r0
 22a:	70fb      	strb	r3, [r7, #3]
 22c:	78fb      	ldrb	r3, [r7, #3]
 22e:	3327      	adds	r3, #39	; 0x27
 230:	b2db      	uxtb	r3, r3
 232:	461a      	mov	r2, r3
 234:	2109      	movs	r1, #9
 236:	481c      	ldr	r0, [pc, #112]	; (2a8 <main+0xac>)
 238:	f000 f83a 	bl	2b0 <set_value>
 23c:	2237      	movs	r2, #55	; 0x37
 23e:	2103      	movs	r1, #3
 240:	4819      	ldr	r0, [pc, #100]	; (2a8 <main+0xac>)
 242:	f000 f835 	bl	2b0 <set_value>
 246:	2258      	movs	r2, #88	; 0x58
 248:	2101      	movs	r1, #1
 24a:	4817      	ldr	r0, [pc, #92]	; (2a8 <main+0xac>)
 24c:	f000 f830 	bl	2b0 <set_value>
 250:	2232      	movs	r2, #50	; 0x32
 252:	2104      	movs	r1, #4
 254:	4814      	ldr	r0, [pc, #80]	; (2a8 <main+0xac>)
 256:	f000 f82b 	bl	2b0 <set_value>
 25a:	2101      	movs	r1, #1
 25c:	4812      	ldr	r0, [pc, #72]	; (2a8 <main+0xac>)
 25e:	f000 f847 	bl	2f0 <get_value>
 262:	4603      	mov	r3, r0
 264:	70fb      	strb	r3, [r7, #3]
 266:	2279      	movs	r2, #121	; 0x79
 268:	2102      	movs	r1, #2
 26a:	480f      	ldr	r0, [pc, #60]	; (2a8 <main+0xac>)
 26c:	f000 f820 	bl	2b0 <set_value>
 270:	78fb      	ldrb	r3, [r7, #3]
 272:	3b0c      	subs	r3, #12
 274:	b2db      	uxtb	r3, r3
 276:	461a      	mov	r2, r3
 278:	2107      	movs	r1, #7
 27a:	480b      	ldr	r0, [pc, #44]	; (2a8 <main+0xac>)
 27c:	f000 f818 	bl	2b0 <set_value>
 280:	225f      	movs	r2, #95	; 0x5f
 282:	2105      	movs	r1, #5
 284:	4808      	ldr	r0, [pc, #32]	; (2a8 <main+0xac>)
 286:	f000 f813 	bl	2b0 <set_value>
 28a:	2300      	movs	r3, #0
 28c:	607b      	str	r3, [r7, #4]
 28e:	e002      	b.n	296 <main+0x9a>
 290:	687b      	ldr	r3, [r7, #4]
 292:	3301      	adds	r3, #1
 294:	607b      	str	r3, [r7, #4]
 296:	687b      	ldr	r3, [r7, #4]
 298:	2b09      	cmp	r3, #9
 29a:	d9f9      	bls.n	290 <main+0x94>
 29c:	2300      	movs	r3, #0
 29e:	4618      	mov	r0, r3
 2a0:	3708      	adds	r7, #8
 2a2:	46bd      	mov	sp, r7
 2a4:	bd80      	pop	{r7, pc}
 2a6:	bf00      	nop
 2a8:	20000458 	.word	0x20000458
 2ac:	20000460 	.word	0x20000460

000002b0 <set_value>:
 2b0:	b480      	push	{r7}
 2b2:	b085      	sub	sp, #20
 2b4:	af00      	add	r7, sp, #0
 2b6:	60f8      	str	r0, [r7, #12]
 2b8:	60b9      	str	r1, [r7, #8]
 2ba:	4613      	mov	r3, r2
 2bc:	71fb      	strb	r3, [r7, #7]
 2be:	68fa      	ldr	r2, [r7, #12]
 2c0:	68bb      	ldr	r3, [r7, #8]
 2c2:	4413      	add	r3, r2
 2c4:	79fa      	ldrb	r2, [r7, #7]
 2c6:	701a      	strb	r2, [r3, #0]
 2c8:	bf00      	nop
 2ca:	3714      	adds	r7, #20
 2cc:	46bd      	mov	sp, r7
 2ce:	f85d 7b04 	ldr.w	r7, [sp], #4
 2d2:	4770      	bx	lr

000002d4 <clear_value>:
 2d4:	b580      	push	{r7, lr}
 2d6:	b082      	sub	sp, #8
 2d8:	af00      	add	r7, sp, #0
 2da:	6078      	str	r0, [r7, #4]
 2dc:	6039      	str	r1, [r7, #0]
 2de:	2200      	movs	r2, #0
 2e0:	6839      	ldr	r1, [r7, #0]
 2e2:	6878      	ldr	r0, [r7, #4]
 2e4:	f7ff ffe4 	bl	2b0 <set_value>
 2e8:	bf00      	nop
 2ea:	3708      	adds	r7, #8
 2ec:	46bd      	mov	sp, r7
 2ee:	bd80      	pop	{r7, pc}

000002f0 <get_value>:
 2f0:	b480      	push	{r7}
 2f2:	b083      	sub	sp, #12
 2f4:	af00      	add	r7, sp, #0
 2f6:	6078      	str	r0, [r7, #4]
 2f8:	6039      	str	r1, [r7, #0]
 2fa:	687a      	ldr	r2, [r7, #4]
 2fc:	683b      	ldr	r3, [r7, #0]
 2fe:	4413      	add	r3, r2
 300:	781b      	ldrb	r3, [r3, #0]
 302:	4618      	mov	r0, r3
 304:	370c      	adds	r7, #12
 306:	46bd      	mov	sp, r7
 308:	f85d 7b04 	ldr.w	r7, [sp], #4
 30c:	4770      	bx	lr

0000030e <set_all>:
 30e:	b580      	push	{r7, lr}
 310:	b086      	sub	sp, #24
 312:	af00      	add	r7, sp, #0
 314:	60f8      	str	r0, [r7, #12]
 316:	460b      	mov	r3, r1
 318:	607a      	str	r2, [r7, #4]
 31a:	72fb      	strb	r3, [r7, #11]
 31c:	2300      	movs	r3, #0
 31e:	617b      	str	r3, [r7, #20]
 320:	e008      	b.n	334 <set_all+0x26>
 322:	7afb      	ldrb	r3, [r7, #11]
 324:	461a      	mov	r2, r3
 326:	6979      	ldr	r1, [r7, #20]
 328:	68f8      	ldr	r0, [r7, #12]
 32a:	f7ff ffc1 	bl	2b0 <set_value>
 32e:	697b      	ldr	r3, [r7, #20]
 330:	3301      	adds	r3, #1
 332:	617b      	str	r3, [r7, #20]
 334:	697a      	ldr	r2, [r7, #20]
 336:	687b      	ldr	r3, [r7, #4]
 338:	429a      	cmp	r2, r3
 33a:	d3f2      	bcc.n	322 <set_all+0x14>
 33c:	bf00      	nop
 33e:	bf00      	nop
 340:	3718      	adds	r7, #24
 342:	46bd      	mov	sp, r7
 344:	bd80      	pop	{r7, pc}

00000346 <clear_all>:
 346:	b580      	push	{r7, lr}
 348:	b082      	sub	sp, #8
 34a:	af00      	add	r7, sp, #0
 34c:	6078      	str	r0, [r7, #4]
 34e:	6039      	str	r1, [r7, #0]
 350:	683a      	ldr	r2, [r7, #0]
 352:	2100      	movs	r1, #0
 354:	6878      	ldr	r0, [r7, #4]
 356:	f7ff ffda 	bl	30e <set_all>
 35a:	bf00      	nop
 35c:	3708      	adds	r7, #8
 35e:	46bd      	mov	sp, r7
 360:	bd80      	pop	{r7, pc}
	...

00000364 <SystemCoreClockUpdate>:
 364:	b480      	push	{r7}
 366:	b089      	sub	sp, #36	; 0x24
 368:	af00      	add	r7, sp, #0
 36a:	4ba4      	ldr	r3, [pc, #656]	; (5fc <SystemCoreClockUpdate+0x298>)
 36c:	689b      	ldr	r3, [r3, #8]
 36e:	0c1b      	lsrs	r3, r3, #16
 370:	f003 0307 	and.w	r3, r3, #7
 374:	60fb      	str	r3, [r7, #12]
 376:	2201      	movs	r2, #1
 378:	68fb      	ldr	r3, [r7, #12]
 37a:	fa02 f303 	lsl.w	r3, r2, r3
 37e:	72fb      	strb	r3, [r7, #11]
 380:	4b9e      	ldr	r3, [pc, #632]	; (5fc <SystemCoreClockUpdate+0x298>)
 382:	689b      	ldr	r3, [r3, #8]
 384:	f003 0307 	and.w	r3, r3, #7
 388:	607b      	str	r3, [r7, #4]
 38a:	687b      	ldr	r3, [r7, #4]
 38c:	2b05      	cmp	r3, #5
 38e:	f200 8163 	bhi.w	658 <SystemCoreClockUpdate+0x2f4>
 392:	a201      	add	r2, pc, #4	; (adr r2, 398 <SystemCoreClockUpdate+0x34>)
 394:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 398:	000003b1 	.word	0x000003b1
 39c:	00000431 	.word	0x00000431
 3a0:	00000443 	.word	0x00000443
 3a4:	00000471 	.word	0x00000471
 3a8:	00000591 	.word	0x00000591
 3ac:	000005a1 	.word	0x000005a1
 3b0:	4b93      	ldr	r3, [pc, #588]	; (600 <SystemCoreClockUpdate+0x29c>)
 3b2:	781b      	ldrb	r3, [r3, #0]
 3b4:	b2db      	uxtb	r3, r3
 3b6:	2b00      	cmp	r3, #0
 3b8:	d031      	beq.n	41e <SystemCoreClockUpdate+0xba>
 3ba:	4b90      	ldr	r3, [pc, #576]	; (5fc <SystemCoreClockUpdate+0x298>)
 3bc:	f646 125a 	movw	r2, #26970	; 0x695a
 3c0:	601a      	str	r2, [r3, #0]
 3c2:	4b8e      	ldr	r3, [pc, #568]	; (5fc <SystemCoreClockUpdate+0x298>)
 3c4:	6d1b      	ldr	r3, [r3, #80]	; 0x50
 3c6:	4a8d      	ldr	r2, [pc, #564]	; (5fc <SystemCoreClockUpdate+0x298>)
 3c8:	f043 0301 	orr.w	r3, r3, #1
 3cc:	6513      	str	r3, [r2, #80]	; 0x50
 3ce:	4b8b      	ldr	r3, [pc, #556]	; (5fc <SystemCoreClockUpdate+0x298>)
 3d0:	2201      	movs	r2, #1
 3d2:	601a      	str	r2, [r3, #0]
 3d4:	4b8a      	ldr	r3, [pc, #552]	; (600 <SystemCoreClockUpdate+0x29c>)
 3d6:	781b      	ldrb	r3, [r3, #0]
 3d8:	b2db      	uxtb	r3, r3
 3da:	2b00      	cmp	r3, #0
 3dc:	d016      	beq.n	40c <SystemCoreClockUpdate+0xa8>
 3de:	4b89      	ldr	r3, [pc, #548]	; (604 <SystemCoreClockUpdate+0x2a0>)
 3e0:	781b      	ldrb	r3, [r3, #0]
 3e2:	b2db      	uxtb	r3, r3
 3e4:	2b00      	cmp	r3, #0
 3e6:	d008      	beq.n	3fa <SystemCoreClockUpdate+0x96>
 3e8:	7afb      	ldrb	r3, [r7, #11]
 3ea:	f44f 32fa 	mov.w	r2, #128000	; 0x1f400
 3ee:	fb92 f3f3 	sdiv	r3, r2, r3
 3f2:	461a      	mov	r2, r3
 3f4:	4b84      	ldr	r3, [pc, #528]	; (608 <SystemCoreClockUpdate+0x2a4>)
 3f6:	601a      	str	r2, [r3, #0]
 3f8:	e12e      	b.n	658 <SystemCoreClockUpdate+0x2f4>
 3fa:	7afb      	ldrb	r3, [r7, #11]
 3fc:	f44f 42fa 	mov.w	r2, #32000	; 0x7d00
 400:	fb92 f3f3 	sdiv	r3, r2, r3
 404:	461a      	mov	r2, r3
 406:	4b80      	ldr	r3, [pc, #512]	; (608 <SystemCoreClockUpdate+0x2a4>)
 408:	601a      	str	r2, [r3, #0]
 40a:	e125      	b.n	658 <SystemCoreClockUpdate+0x2f4>
 40c:	7afb      	ldrb	r3, [r7, #11]
 40e:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 412:	fb92 f3f3 	sdiv	r3, r2, r3
 416:	461a      	mov	r2, r3
 418:	4b7b      	ldr	r3, [pc, #492]	; (608 <SystemCoreClockUpdate+0x2a4>)
 41a:	601a      	str	r2, [r3, #0]
 41c:	e11c      	b.n	658 <SystemCoreClockUpdate+0x2f4>
 41e:	7afb      	ldrb	r3, [r7, #11]
 420:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 424:	fb92 f3f3 	sdiv	r3, r2, r3
 428:	461a      	mov	r2, r3
 42a:	4b77      	ldr	r3, [pc, #476]	; (608 <SystemCoreClockUpdate+0x2a4>)
 42c:	601a      	str	r2, [r3, #0]
 42e:	e113      	b.n	658 <SystemCoreClockUpdate+0x2f4>
 430:	7afb      	ldrb	r3, [r7, #11]
 432:	f242 7210 	movw	r2, #10000	; 0x2710
 436:	fb92 f3f3 	sdiv	r3, r2, r3
 43a:	461a      	mov	r2, r3
 43c:	4b72      	ldr	r3, [pc, #456]	; (608 <SystemCoreClockUpdate+0x2a4>)
 43e:	601a      	str	r2, [r3, #0]
 440:	e10a      	b.n	658 <SystemCoreClockUpdate+0x2f4>
 442:	4b70      	ldr	r3, [pc, #448]	; (604 <SystemCoreClockUpdate+0x2a0>)
 444:	781b      	ldrb	r3, [r3, #0]
 446:	b2db      	uxtb	r3, r3
 448:	2b00      	cmp	r3, #0
 44a:	d008      	beq.n	45e <SystemCoreClockUpdate+0xfa>
 44c:	7afb      	ldrb	r3, [r7, #11]
 44e:	f44f 32fa 	mov.w	r2, #128000	; 0x1f400
 452:	fb92 f3f3 	sdiv	r3, r2, r3
 456:	461a      	mov	r2, r3
 458:	4b6b      	ldr	r3, [pc, #428]	; (608 <SystemCoreClockUpdate+0x2a4>)
 45a:	601a      	str	r2, [r3, #0]
 45c:	e0fc      	b.n	658 <SystemCoreClockUpdate+0x2f4>
 45e:	7afb      	ldrb	r3, [r7, #11]
 460:	f44f 42fa 	mov.w	r2, #32000	; 0x7d00
 464:	fb92 f3f3 	sdiv	r3, r2, r3
 468:	461a      	mov	r2, r3
 46a:	4b67      	ldr	r3, [pc, #412]	; (608 <SystemCoreClockUpdate+0x2a4>)
 46c:	601a      	str	r2, [r3, #0]
 46e:	e0f3      	b.n	658 <SystemCoreClockUpdate+0x2f4>
 470:	4b62      	ldr	r3, [pc, #392]	; (5fc <SystemCoreClockUpdate+0x298>)
 472:	685b      	ldr	r3, [r3, #4]
 474:	b21b      	sxth	r3, r3
 476:	f3c3 0309 	ubfx	r3, r3, #0, #10
 47a:	827b      	strh	r3, [r7, #18]
 47c:	4b5f      	ldr	r3, [pc, #380]	; (5fc <SystemCoreClockUpdate+0x298>)
 47e:	685b      	ldr	r3, [r3, #4]
 480:	f403 23e0 	and.w	r3, r3, #458752	; 0x70000
 484:	f5b3 2fa0 	cmp.w	r3, #327680	; 0x50000
 488:	d029      	beq.n	4de <SystemCoreClockUpdate+0x17a>
 48a:	f5b3 2fa0 	cmp.w	r3, #327680	; 0x50000
 48e:	d829      	bhi.n	4e4 <SystemCoreClockUpdate+0x180>
 490:	f5b3 2f80 	cmp.w	r3, #262144	; 0x40000
 494:	d020      	beq.n	4d8 <SystemCoreClockUpdate+0x174>
 496:	f5b3 2f80 	cmp.w	r3, #262144	; 0x40000
 49a:	d823      	bhi.n	4e4 <SystemCoreClockUpdate+0x180>
 49c:	f5b3 3f40 	cmp.w	r3, #196608	; 0x30000
 4a0:	d017      	beq.n	4d2 <SystemCoreClockUpdate+0x16e>
 4a2:	f5b3 3f40 	cmp.w	r3, #196608	; 0x30000
 4a6:	d81d      	bhi.n	4e4 <SystemCoreClockUpdate+0x180>
 4a8:	f5b3 3f00 	cmp.w	r3, #131072	; 0x20000
 4ac:	d00e      	beq.n	4cc <SystemCoreClockUpdate+0x168>
 4ae:	f5b3 3f00 	cmp.w	r3, #131072	; 0x20000
 4b2:	d817      	bhi.n	4e4 <SystemCoreClockUpdate+0x180>
 4b4:	2b00      	cmp	r3, #0
 4b6:	d003      	beq.n	4c0 <SystemCoreClockUpdate+0x15c>
 4b8:	f5b3 3f80 	cmp.w	r3, #65536	; 0x10000
 4bc:	d003      	beq.n	4c6 <SystemCoreClockUpdate+0x162>
 4be:	e011      	b.n	4e4 <SystemCoreClockUpdate+0x180>
 4c0:	4b52      	ldr	r3, [pc, #328]	; (60c <SystemCoreClockUpdate+0x2a8>)
 4c2:	617b      	str	r3, [r7, #20]
 4c4:	e00e      	b.n	4e4 <SystemCoreClockUpdate+0x180>
 4c6:	4b52      	ldr	r3, [pc, #328]	; (610 <SystemCoreClockUpdate+0x2ac>)
 4c8:	617b      	str	r3, [r7, #20]
 4ca:	e00b      	b.n	4e4 <SystemCoreClockUpdate+0x180>
 4cc:	4b51      	ldr	r3, [pc, #324]	; (614 <SystemCoreClockUpdate+0x2b0>)
 4ce:	617b      	str	r3, [r7, #20]
 4d0:	e008      	b.n	4e4 <SystemCoreClockUpdate+0x180>
 4d2:	4b51      	ldr	r3, [pc, #324]	; (618 <SystemCoreClockUpdate+0x2b4>)
 4d4:	617b      	str	r3, [r7, #20]
 4d6:	e005      	b.n	4e4 <SystemCoreClockUpdate+0x180>
 4d8:	4b50      	ldr	r3, [pc, #320]	; (61c <SystemCoreClockUpdate+0x2b8>)
 4da:	617b      	str	r3, [r7, #20]
 4dc:	e002      	b.n	4e4 <SystemCoreClockUpdate+0x180>
 4de:	4b50      	ldr	r3, [pc, #320]	; (620 <SystemCoreClockUpdate+0x2bc>)
 4e0:	617b      	str	r3, [r7, #20]
 4e2:	bf00      	nop
 4e4:	f9b7 3012 	ldrsh.w	r3, [r7, #18]
 4e8:	2b00      	cmp	r3, #0
 4ea:	d103      	bne.n	4f4 <SystemCoreClockUpdate+0x190>
 4ec:	4a46      	ldr	r2, [pc, #280]	; (608 <SystemCoreClockUpdate+0x2a4>)
 4ee:	697b      	ldr	r3, [r7, #20]
 4f0:	6013      	str	r3, [r2, #0]
 4f2:	e0b1      	b.n	658 <SystemCoreClockUpdate+0x2f4>
 4f4:	8a7b      	ldrh	r3, [r7, #18]
 4f6:	f403 5380 	and.w	r3, r3, #4096	; 0x1000
 4fa:	2b00      	cmp	r3, #0
 4fc:	d005      	beq.n	50a <SystemCoreClockUpdate+0x1a6>
 4fe:	8a7b      	ldrh	r3, [r7, #18]
 500:	ea6f 5303 	mvn.w	r3, r3, lsl #20
 504:	ea6f 5313 	mvn.w	r3, r3, lsr #20
 508:	827b      	strh	r3, [r7, #18]
 50a:	4b46      	ldr	r3, [pc, #280]	; (624 <SystemCoreClockUpdate+0x2c0>)
 50c:	781b      	ldrb	r3, [r3, #0]
 50e:	b2db      	uxtb	r3, r3
 510:	2b00      	cmp	r3, #0
 512:	d006      	beq.n	522 <SystemCoreClockUpdate+0x1be>
 514:	4b44      	ldr	r3, [pc, #272]	; (628 <SystemCoreClockUpdate+0x2c4>)
 516:	681b      	ldr	r3, [r3, #0]
 518:	61fb      	str	r3, [r7, #28]
 51a:	4b44      	ldr	r3, [pc, #272]	; (62c <SystemCoreClockUpdate+0x2c8>)
 51c:	6edb      	ldr	r3, [r3, #108]	; 0x6c
 51e:	61bb      	str	r3, [r7, #24]
 520:	e005      	b.n	52e <SystemCoreClockUpdate+0x1ca>
 522:	4b43      	ldr	r3, [pc, #268]	; (630 <SystemCoreClockUpdate+0x2cc>)
 524:	681b      	ldr	r3, [r3, #0]
 526:	61fb      	str	r3, [r7, #28]
 528:	4b40      	ldr	r3, [pc, #256]	; (62c <SystemCoreClockUpdate+0x2c8>)
 52a:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
 52c:	61bb      	str	r3, [r7, #24]
 52e:	697b      	ldr	r3, [r7, #20]
 530:	ee07 3a90 	vmov	s15, r3
 534:	eef8 6a67 	vcvt.f32.u32	s13, s15
 538:	f9b7 3012 	ldrsh.w	r3, [r7, #18]
 53c:	ee07 3a90 	vmov	s15, r3
 540:	eeb8 7ae7 	vcvt.f32.s32	s14, s15
 544:	edd7 7a07 	vldr	s15, [r7, #28]
 548:	ee27 6a27 	vmul.f32	s12, s14, s15
 54c:	69bb      	ldr	r3, [r7, #24]
 54e:	f5c3 7340 	rsb	r3, r3, #768	; 0x300
 552:	ee07 3a90 	vmov	s15, r3
 556:	eeb8 7ae7 	vcvt.f32.s32	s14, s15
 55a:	edd7 7a07 	vldr	s15, [r7, #28]
 55e:	ee67 7a27 	vmul.f32	s15, s14, s15
 562:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
 566:	ee77 7a87 	vadd.f32	s15, s15, s14
 56a:	eeb2 7a00 	vmov.f32	s14, #32	; 0x41000000  8.0
 56e:	ee27 7a87 	vmul.f32	s14, s15, s14
 572:	eec6 7a07 	vdiv.f32	s15, s12, s14
 576:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
 57a:	ee37 7a67 	vsub.f32	s14, s14, s15
 57e:	eec6 7a87 	vdiv.f32	s15, s13, s14
 582:	eefc 7ae7 	vcvt.u32.f32	s15, s15
 586:	ee17 2a90 	vmov	r2, s15
 58a:	4b1f      	ldr	r3, [pc, #124]	; (608 <SystemCoreClockUpdate+0x2a4>)
 58c:	601a      	str	r2, [r3, #0]
 58e:	e063      	b.n	658 <SystemCoreClockUpdate+0x2f4>
 590:	7afb      	ldrb	r3, [r7, #11]
 592:	4a22      	ldr	r2, [pc, #136]	; (61c <SystemCoreClockUpdate+0x2b8>)
 594:	fb92 f3f3 	sdiv	r3, r2, r3
 598:	461a      	mov	r2, r3
 59a:	4b1b      	ldr	r3, [pc, #108]	; (608 <SystemCoreClockUpdate+0x2a4>)
 59c:	601a      	str	r2, [r3, #0]
 59e:	e05b      	b.n	658 <SystemCoreClockUpdate+0x2f4>
 5a0:	4b24      	ldr	r3, [pc, #144]	; (634 <SystemCoreClockUpdate+0x2d0>)
 5a2:	781b      	ldrb	r3, [r3, #0]
 5a4:	b2db      	uxtb	r3, r3
 5a6:	2b00      	cmp	r3, #0
 5a8:	d04e      	beq.n	648 <SystemCoreClockUpdate+0x2e4>
 5aa:	4b14      	ldr	r3, [pc, #80]	; (5fc <SystemCoreClockUpdate+0x298>)
 5ac:	f646 125a 	movw	r2, #26970	; 0x695a
 5b0:	601a      	str	r2, [r3, #0]
 5b2:	4b12      	ldr	r3, [pc, #72]	; (5fc <SystemCoreClockUpdate+0x298>)
 5b4:	6d1b      	ldr	r3, [r3, #80]	; 0x50
 5b6:	4a11      	ldr	r2, [pc, #68]	; (5fc <SystemCoreClockUpdate+0x298>)
 5b8:	f043 0302 	orr.w	r3, r3, #2
 5bc:	6513      	str	r3, [r2, #80]	; 0x50
 5be:	4b0f      	ldr	r3, [pc, #60]	; (5fc <SystemCoreClockUpdate+0x298>)
 5c0:	2201      	movs	r2, #1
 5c2:	601a      	str	r2, [r3, #0]
 5c4:	4b1b      	ldr	r3, [pc, #108]	; (634 <SystemCoreClockUpdate+0x2d0>)
 5c6:	781b      	ldrb	r3, [r3, #0]
 5c8:	b2db      	uxtb	r3, r3
 5ca:	2b00      	cmp	r3, #0
 5cc:	d034      	beq.n	638 <SystemCoreClockUpdate+0x2d4>
 5ce:	4b0d      	ldr	r3, [pc, #52]	; (604 <SystemCoreClockUpdate+0x2a0>)
 5d0:	781b      	ldrb	r3, [r3, #0]
 5d2:	b2db      	uxtb	r3, r3
 5d4:	2b00      	cmp	r3, #0
 5d6:	d008      	beq.n	5ea <SystemCoreClockUpdate+0x286>
 5d8:	7afb      	ldrb	r3, [r7, #11]
 5da:	f44f 32fa 	mov.w	r2, #128000	; 0x1f400
 5de:	fb92 f3f3 	sdiv	r3, r2, r3
 5e2:	461a      	mov	r2, r3
 5e4:	4b08      	ldr	r3, [pc, #32]	; (608 <SystemCoreClockUpdate+0x2a4>)
 5e6:	601a      	str	r2, [r3, #0]
 5e8:	e035      	b.n	656 <SystemCoreClockUpdate+0x2f2>
 5ea:	7afb      	ldrb	r3, [r7, #11]
 5ec:	f44f 42fa 	mov.w	r2, #32000	; 0x7d00
 5f0:	fb92 f3f3 	sdiv	r3, r2, r3
 5f4:	461a      	mov	r2, r3
 5f6:	4b04      	ldr	r3, [pc, #16]	; (608 <SystemCoreClockUpdate+0x2a4>)
 5f8:	601a      	str	r2, [r3, #0]
 5fa:	e02c      	b.n	656 <SystemCoreClockUpdate+0x2f2>
 5fc:	40010400 	.word	0x40010400
 600:	42208900 	.word	0x42208900
 604:	4220863c 	.word	0x4220863c
 608:	20000004 	.word	0x20000004
 60c:	0016e360 	.word	0x0016e360
 610:	002dc6c0 	.word	0x002dc6c0
 614:	005b8d80 	.word	0x005b8d80
 618:	00b71b00 	.word	0x00b71b00
 61c:	016e3600 	.word	0x016e3600
 620:	02dc6c00 	.word	0x02dc6c00
 624:	422080d8 	.word	0x422080d8
 628:	00201084 	.word	0x00201084
 62c:	00201000 	.word	0x00201000
 630:	00201064 	.word	0x00201064
 634:	42208904 	.word	0x42208904
 638:	7afb      	ldrb	r3, [r7, #11]
 63a:	4a0a      	ldr	r2, [pc, #40]	; (664 <SystemCoreClockUpdate+0x300>)
 63c:	fb92 f3f3 	sdiv	r3, r2, r3
 640:	461a      	mov	r2, r3
 642:	4b09      	ldr	r3, [pc, #36]	; (668 <SystemCoreClockUpdate+0x304>)
 644:	601a      	str	r2, [r3, #0]
 646:	e006      	b.n	656 <SystemCoreClockUpdate+0x2f2>
 648:	7afb      	ldrb	r3, [r7, #11]
 64a:	4a06      	ldr	r2, [pc, #24]	; (664 <SystemCoreClockUpdate+0x300>)
 64c:	fb92 f3f3 	sdiv	r3, r2, r3
 650:	461a      	mov	r2, r3
 652:	4b05      	ldr	r3, [pc, #20]	; (668 <SystemCoreClockUpdate+0x304>)
 654:	601a      	str	r2, [r3, #0]
 656:	bf00      	nop
 658:	bf00      	nop
 65a:	3724      	adds	r7, #36	; 0x24
 65c:	46bd      	mov	sp, r7
 65e:	f85d 7b04 	ldr.w	r7, [sp], #4
 662:	4770      	bx	lr
 664:	02dc6c00 	.word	0x02dc6c00
 668:	20000004 	.word	0x20000004

0000066c <SystemInit>:
 66c:	b480      	push	{r7}
 66e:	af00      	add	r7, sp, #0
 670:	4b19      	ldr	r3, [pc, #100]	; (6d8 <SystemInit+0x6c>)
 672:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 676:	4a18      	ldr	r2, [pc, #96]	; (6d8 <SystemInit+0x6c>)
 678:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 67c:	f8c2 3088 	str.w	r3, [r2, #136]	; 0x88
 680:	4b16      	ldr	r3, [pc, #88]	; (6dc <SystemInit+0x70>)
 682:	f44f 42b5 	mov.w	r2, #23168	; 0x5a80
 686:	819a      	strh	r2, [r3, #12]
 688:	4b15      	ldr	r3, [pc, #84]	; (6e0 <SystemInit+0x74>)
 68a:	2280      	movs	r2, #128	; 0x80
 68c:	615a      	str	r2, [r3, #20]
 68e:	4b15      	ldr	r3, [pc, #84]	; (6e4 <SystemInit+0x78>)
 690:	f646 125a 	movw	r2, #26970	; 0x695a
 694:	601a      	str	r2, [r3, #0]
 696:	4b13      	ldr	r3, [pc, #76]	; (6e4 <SystemInit+0x78>)
 698:	f44f 3280 	mov.w	r2, #65536	; 0x10000
 69c:	605a      	str	r2, [r3, #4]
 69e:	4b11      	ldr	r3, [pc, #68]	; (6e4 <SystemInit+0x78>)
 6a0:	689b      	ldr	r3, [r3, #8]
 6a2:	f023 1307 	bic.w	r3, r3, #458759	; 0x70007
 6a6:	4a0f      	ldr	r2, [pc, #60]	; (6e4 <SystemInit+0x78>)
 6a8:	f043 0303 	orr.w	r3, r3, #3
 6ac:	6093      	str	r3, [r2, #8]
 6ae:	4b0d      	ldr	r3, [pc, #52]	; (6e4 <SystemInit+0x78>)
 6b0:	2200      	movs	r2, #0
 6b2:	601a      	str	r2, [r3, #0]
 6b4:	4b0c      	ldr	r3, [pc, #48]	; (6e8 <SystemInit+0x7c>)
 6b6:	691b      	ldr	r3, [r3, #16]
 6b8:	4a0b      	ldr	r2, [pc, #44]	; (6e8 <SystemInit+0x7c>)
 6ba:	f023 0330 	bic.w	r3, r3, #48	; 0x30
 6be:	6113      	str	r3, [r2, #16]
 6c0:	4b09      	ldr	r3, [pc, #36]	; (6e8 <SystemInit+0x7c>)
 6c2:	695b      	ldr	r3, [r3, #20]
 6c4:	4a08      	ldr	r2, [pc, #32]	; (6e8 <SystemInit+0x7c>)
 6c6:	f023 0330 	bic.w	r3, r3, #48	; 0x30
 6ca:	6153      	str	r3, [r2, #20]
 6cc:	bf00      	nop
 6ce:	46bd      	mov	sp, r7
 6d0:	f85d 7b04 	ldr.w	r7, [sp], #4
 6d4:	4770      	bx	lr
 6d6:	bf00      	nop
 6d8:	e000ed00 	.word	0xe000ed00
 6dc:	40004800 	.word	0x40004800
 6e0:	e0043000 	.word	0xe0043000
 6e4:	40010400 	.word	0x40010400
 6e8:	40011000 	.word	0x40011000

000006ec <exit>:
 6ec:	b508      	push	{r3, lr}
 6ee:	2100      	movs	r1, #0
 6f0:	4604      	mov	r4, r0
 6f2:	f000 f88b 	bl	80c <__call_exitprocs>
 6f6:	4b04      	ldr	r3, [pc, #16]	; (708 <exit+0x1c>)
 6f8:	6818      	ldr	r0, [r3, #0]
 6fa:	6bc3      	ldr	r3, [r0, #60]	; 0x3c
 6fc:	b103      	cbz	r3, 700 <exit+0x14>
 6fe:	4798      	blx	r3
 700:	4620      	mov	r0, r4
 702:	f000 f95f 	bl	9c4 <_exit>
 706:	bf00      	nop
 708:	00000acc 	.word	0x00000acc

0000070c <__libc_init_array>:
 70c:	b570      	push	{r4, r5, r6, lr}
 70e:	4e0d      	ldr	r6, [pc, #52]	; (744 <__libc_init_array+0x38>)
 710:	4d0d      	ldr	r5, [pc, #52]	; (748 <__libc_init_array+0x3c>)
 712:	1b76      	subs	r6, r6, r5
 714:	10b6      	asrs	r6, r6, #2
 716:	d006      	beq.n	726 <__libc_init_array+0x1a>
 718:	2400      	movs	r4, #0
 71a:	f855 3b04 	ldr.w	r3, [r5], #4
 71e:	3401      	adds	r4, #1
 720:	4798      	blx	r3
 722:	42a6      	cmp	r6, r4
 724:	d1f9      	bne.n	71a <__libc_init_array+0xe>
 726:	4e09      	ldr	r6, [pc, #36]	; (74c <__libc_init_array+0x40>)
 728:	4d09      	ldr	r5, [pc, #36]	; (750 <__libc_init_array+0x44>)
 72a:	1b76      	subs	r6, r6, r5
 72c:	f000 f950 	bl	9d0 <_init>
 730:	10b6      	asrs	r6, r6, #2
 732:	d006      	beq.n	742 <__libc_init_array+0x36>
 734:	2400      	movs	r4, #0
 736:	f855 3b04 	ldr.w	r3, [r5], #4
 73a:	3401      	adds	r4, #1
 73c:	4798      	blx	r3
 73e:	42a6      	cmp	r6, r4
 740:	d1f9      	bne.n	736 <__libc_init_array+0x2a>
 742:	bd70      	pop	{r4, r5, r6, pc}
	...
 74c:	000009d0 	.word	0x000009d0
 750:	000009c8 	.word	0x000009c8

00000754 <memset>:
 754:	0783      	lsls	r3, r0, #30
 756:	b530      	push	{r4, r5, lr}
 758:	d048      	beq.n	7ec <memset+0x98>
 75a:	1e54      	subs	r4, r2, #1
 75c:	2a00      	cmp	r2, #0
 75e:	d03f      	beq.n	7e0 <memset+0x8c>
 760:	b2ca      	uxtb	r2, r1
 762:	4603      	mov	r3, r0
 764:	e001      	b.n	76a <memset+0x16>
 766:	3c01      	subs	r4, #1
 768:	d33a      	bcc.n	7e0 <memset+0x8c>
 76a:	f803 2b01 	strb.w	r2, [r3], #1
 76e:	079d      	lsls	r5, r3, #30
 770:	d1f9      	bne.n	766 <memset+0x12>
 772:	2c03      	cmp	r4, #3
 774:	d92d      	bls.n	7d2 <memset+0x7e>
 776:	b2cd      	uxtb	r5, r1
 778:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 77c:	2c0f      	cmp	r4, #15
 77e:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 782:	d936      	bls.n	7f2 <memset+0x9e>
 784:	f1a4 0210 	sub.w	r2, r4, #16
 788:	f022 0c0f 	bic.w	ip, r2, #15
 78c:	f103 0e20 	add.w	lr, r3, #32
 790:	44e6      	add	lr, ip
 792:	ea4f 1c12 	mov.w	ip, r2, lsr #4
 796:	f103 0210 	add.w	r2, r3, #16
 79a:	e942 5504 	strd	r5, r5, [r2, #-16]
 79e:	e942 5502 	strd	r5, r5, [r2, #-8]
 7a2:	3210      	adds	r2, #16
 7a4:	4572      	cmp	r2, lr
 7a6:	d1f8      	bne.n	79a <memset+0x46>
 7a8:	f10c 0201 	add.w	r2, ip, #1
 7ac:	f014 0f0c 	tst.w	r4, #12
 7b0:	eb03 1202 	add.w	r2, r3, r2, lsl #4
 7b4:	f004 0c0f 	and.w	ip, r4, #15
 7b8:	d013      	beq.n	7e2 <memset+0x8e>
 7ba:	f1ac 0304 	sub.w	r3, ip, #4
 7be:	f023 0303 	bic.w	r3, r3, #3
 7c2:	3304      	adds	r3, #4
 7c4:	4413      	add	r3, r2
 7c6:	f842 5b04 	str.w	r5, [r2], #4
 7ca:	4293      	cmp	r3, r2
 7cc:	d1fb      	bne.n	7c6 <memset+0x72>
 7ce:	f00c 0403 	and.w	r4, ip, #3
 7d2:	b12c      	cbz	r4, 7e0 <memset+0x8c>
 7d4:	b2ca      	uxtb	r2, r1
 7d6:	441c      	add	r4, r3
 7d8:	f803 2b01 	strb.w	r2, [r3], #1
 7dc:	429c      	cmp	r4, r3
 7de:	d1fb      	bne.n	7d8 <memset+0x84>
 7e0:	bd30      	pop	{r4, r5, pc}
 7e2:	4664      	mov	r4, ip
 7e4:	4613      	mov	r3, r2
 7e6:	2c00      	cmp	r4, #0
 7e8:	d1f4      	bne.n	7d4 <memset+0x80>
 7ea:	e7f9      	b.n	7e0 <memset+0x8c>
 7ec:	4603      	mov	r3, r0
 7ee:	4614      	mov	r4, r2
 7f0:	e7bf      	b.n	772 <memset+0x1e>
 7f2:	461a      	mov	r2, r3
 7f4:	46a4      	mov	ip, r4
 7f6:	e7e0      	b.n	7ba <memset+0x66>

000007f8 <register_fini>:
 7f8:	4b02      	ldr	r3, [pc, #8]	; (804 <register_fini+0xc>)
 7fa:	b113      	cbz	r3, 802 <register_fini+0xa>
 7fc:	4802      	ldr	r0, [pc, #8]	; (808 <register_fini+0x10>)
 7fe:	f000 b86b 	b.w	8d8 <atexit>
 802:	4770      	bx	lr
 804:	00000000 	.word	0x00000000
 808:	000008e5 	.word	0x000008e5

0000080c <__call_exitprocs>:
 80c:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 810:	4b2f      	ldr	r3, [pc, #188]	; (8d0 <__call_exitprocs+0xc4>)
 812:	ed2d 8b02 	vpush	{d8}
 816:	4683      	mov	fp, r0
 818:	6818      	ldr	r0, [r3, #0]
 81a:	460f      	mov	r7, r1
 81c:	f000 f882 	bl	924 <__retarget_lock_acquire_recursive>
 820:	4b2c      	ldr	r3, [pc, #176]	; (8d4 <__call_exitprocs+0xc8>)
 822:	f8d3 8000 	ldr.w	r8, [r3]
 826:	f8d8 6148 	ldr.w	r6, [r8, #328]	; 0x148
 82a:	b1ae      	cbz	r6, 858 <__call_exitprocs+0x4c>
 82c:	ee08 ba10 	vmov	s16, fp
 830:	f04f 0901 	mov.w	r9, #1
 834:	f04f 0a00 	mov.w	sl, #0
 838:	6874      	ldr	r4, [r6, #4]
 83a:	1e65      	subs	r5, r4, #1
 83c:	d40c      	bmi.n	858 <__call_exitprocs+0x4c>
 83e:	3401      	adds	r4, #1
 840:	eb06 0484 	add.w	r4, r6, r4, lsl #2
 844:	b187      	cbz	r7, 868 <__call_exitprocs+0x5c>
 846:	f8d4 3100 	ldr.w	r3, [r4, #256]	; 0x100
 84a:	42bb      	cmp	r3, r7
 84c:	d00c      	beq.n	868 <__call_exitprocs+0x5c>
 84e:	3d01      	subs	r5, #1
 850:	1c6b      	adds	r3, r5, #1
 852:	f1a4 0404 	sub.w	r4, r4, #4
 856:	d1f5      	bne.n	844 <__call_exitprocs+0x38>
 858:	ecbd 8b02 	vpop	{d8}
 85c:	4b1c      	ldr	r3, [pc, #112]	; (8d0 <__call_exitprocs+0xc4>)
 85e:	6818      	ldr	r0, [r3, #0]
 860:	e8bd 4ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 864:	f000 b866 	b.w	934 <__retarget_lock_release_recursive>
 868:	6873      	ldr	r3, [r6, #4]
 86a:	6822      	ldr	r2, [r4, #0]
 86c:	3b01      	subs	r3, #1
 86e:	42ab      	cmp	r3, r5
 870:	bf0c      	ite	eq
 872:	6075      	streq	r5, [r6, #4]
 874:	f8c4 a000 	strne.w	sl, [r4]
 878:	2a00      	cmp	r2, #0
 87a:	d0e8      	beq.n	84e <__call_exitprocs+0x42>
 87c:	f8d6 0188 	ldr.w	r0, [r6, #392]	; 0x188
 880:	f8d6 b004 	ldr.w	fp, [r6, #4]
 884:	fa09 f105 	lsl.w	r1, r9, r5
 888:	4201      	tst	r1, r0
 88a:	d10b      	bne.n	8a4 <__call_exitprocs+0x98>
 88c:	4790      	blx	r2
 88e:	6872      	ldr	r2, [r6, #4]
 890:	455a      	cmp	r2, fp
 892:	d113      	bne.n	8bc <__call_exitprocs+0xb0>
 894:	f8d8 3148 	ldr.w	r3, [r8, #328]	; 0x148
 898:	42b3      	cmp	r3, r6
 89a:	d0d8      	beq.n	84e <__call_exitprocs+0x42>
 89c:	461e      	mov	r6, r3
 89e:	2e00      	cmp	r6, #0
 8a0:	d1ca      	bne.n	838 <__call_exitprocs+0x2c>
 8a2:	e7d9      	b.n	858 <__call_exitprocs+0x4c>
 8a4:	f8d6 018c 	ldr.w	r0, [r6, #396]	; 0x18c
 8a8:	4201      	tst	r1, r0
 8aa:	d10c      	bne.n	8c6 <__call_exitprocs+0xba>
 8ac:	f8d4 1080 	ldr.w	r1, [r4, #128]	; 0x80
 8b0:	ee18 0a10 	vmov	r0, s16
 8b4:	4790      	blx	r2
 8b6:	6872      	ldr	r2, [r6, #4]
 8b8:	455a      	cmp	r2, fp
 8ba:	d0eb      	beq.n	894 <__call_exitprocs+0x88>
 8bc:	f8d8 6148 	ldr.w	r6, [r8, #328]	; 0x148
 8c0:	2e00      	cmp	r6, #0
 8c2:	d1b9      	bne.n	838 <__call_exitprocs+0x2c>
 8c4:	e7c8      	b.n	858 <__call_exitprocs+0x4c>
 8c6:	f8d4 0080 	ldr.w	r0, [r4, #128]	; 0x80
 8ca:	4790      	blx	r2
 8cc:	e7df      	b.n	88e <__call_exitprocs+0x82>
 8ce:	bf00      	nop
 8d0:	20000438 	.word	0x20000438
 8d4:	00000acc 	.word	0x00000acc

000008d8 <atexit>:
 8d8:	2300      	movs	r3, #0
 8da:	4601      	mov	r1, r0
 8dc:	461a      	mov	r2, r3
 8de:	4618      	mov	r0, r3
 8e0:	f000 b82a 	b.w	938 <__register_exitproc>

000008e4 <__libc_fini_array>:
 8e4:	b538      	push	{r3, r4, r5, lr}
 8e6:	4b08      	ldr	r3, [pc, #32]	; (908 <__libc_fini_array+0x24>)
 8e8:	4d08      	ldr	r5, [pc, #32]	; (90c <__libc_fini_array+0x28>)
 8ea:	1b5b      	subs	r3, r3, r5
 8ec:	109c      	asrs	r4, r3, #2
 8ee:	d007      	beq.n	900 <__libc_fini_array+0x1c>
 8f0:	3b04      	subs	r3, #4
 8f2:	441d      	add	r5, r3
 8f4:	3c01      	subs	r4, #1
 8f6:	f855 3904 	ldr.w	r3, [r5], #-4
 8fa:	4798      	blx	r3
 8fc:	2c00      	cmp	r4, #0
 8fe:	d1f9      	bne.n	8f4 <__libc_fini_array+0x10>
 900:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 904:	f000 b86a 	b.w	9dc <_fini>
	...

00000910 <__retarget_lock_init>:
 910:	4770      	bx	lr
 912:	bf00      	nop

00000914 <__retarget_lock_init_recursive>:
 914:	4770      	bx	lr
 916:	bf00      	nop

00000918 <__retarget_lock_close>:
 918:	4770      	bx	lr
 91a:	bf00      	nop

0000091c <__retarget_lock_close_recursive>:
 91c:	4770      	bx	lr
 91e:	bf00      	nop

00000920 <__retarget_lock_acquire>:
 920:	4770      	bx	lr
 922:	bf00      	nop

00000924 <__retarget_lock_acquire_recursive>:
 924:	4770      	bx	lr
 926:	bf00      	nop

00000928 <__retarget_lock_try_acquire>:
 928:	2001      	movs	r0, #1
 92a:	4770      	bx	lr

0000092c <__retarget_lock_try_acquire_recursive>:
 92c:	2001      	movs	r0, #1
 92e:	4770      	bx	lr

00000930 <__retarget_lock_release>:
 930:	4770      	bx	lr
 932:	bf00      	nop

00000934 <__retarget_lock_release_recursive>:
 934:	4770      	bx	lr
 936:	bf00      	nop

00000938 <__register_exitproc>:
 938:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 93c:	f8df a080 	ldr.w	sl, [pc, #128]	; 9c0 <__register_exitproc+0x88>
 940:	4606      	mov	r6, r0
 942:	f8da 0000 	ldr.w	r0, [sl]
 946:	4698      	mov	r8, r3
 948:	460f      	mov	r7, r1
 94a:	4691      	mov	r9, r2
 94c:	f7ff ffea 	bl	924 <__retarget_lock_acquire_recursive>
 950:	4b1a      	ldr	r3, [pc, #104]	; (9bc <__register_exitproc+0x84>)
 952:	681b      	ldr	r3, [r3, #0]
 954:	f8d3 4148 	ldr.w	r4, [r3, #328]	; 0x148
 958:	b324      	cbz	r4, 9a4 <__register_exitproc+0x6c>
 95a:	6865      	ldr	r5, [r4, #4]
 95c:	2d1f      	cmp	r5, #31
 95e:	dc26      	bgt.n	9ae <__register_exitproc+0x76>
 960:	b95e      	cbnz	r6, 97a <__register_exitproc+0x42>
 962:	1c6b      	adds	r3, r5, #1
 964:	3502      	adds	r5, #2
 966:	f8da 0000 	ldr.w	r0, [sl]
 96a:	6063      	str	r3, [r4, #4]
 96c:	f844 7025 	str.w	r7, [r4, r5, lsl #2]
 970:	f7ff ffe0 	bl	934 <__retarget_lock_release_recursive>
 974:	2000      	movs	r0, #0
 976:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 97a:	eb04 0185 	add.w	r1, r4, r5, lsl #2
 97e:	2301      	movs	r3, #1
 980:	f8c1 9088 	str.w	r9, [r1, #136]	; 0x88
 984:	f8d4 2188 	ldr.w	r2, [r4, #392]	; 0x188
 988:	40ab      	lsls	r3, r5
 98a:	431a      	orrs	r2, r3
 98c:	2e02      	cmp	r6, #2
 98e:	f8c4 2188 	str.w	r2, [r4, #392]	; 0x188
 992:	f8c1 8108 	str.w	r8, [r1, #264]	; 0x108
 996:	d1e4      	bne.n	962 <__register_exitproc+0x2a>
 998:	f8d4 218c 	ldr.w	r2, [r4, #396]	; 0x18c
 99c:	4313      	orrs	r3, r2
 99e:	f8c4 318c 	str.w	r3, [r4, #396]	; 0x18c
 9a2:	e7de      	b.n	962 <__register_exitproc+0x2a>
 9a4:	f503 74a6 	add.w	r4, r3, #332	; 0x14c
 9a8:	f8c3 4148 	str.w	r4, [r3, #328]	; 0x148
 9ac:	e7d5      	b.n	95a <__register_exitproc+0x22>
 9ae:	f8da 0000 	ldr.w	r0, [sl]
 9b2:	f7ff ffbf 	bl	934 <__retarget_lock_release_recursive>
 9b6:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 9ba:	e7dc      	b.n	976 <__register_exitproc+0x3e>
 9bc:	00000acc 	.word	0x00000acc
 9c0:	20000438 	.word	0x20000438

000009c4 <_exit>:
 9c4:	e7fe      	b.n	9c4 <_exit>
 9c6:	bf00      	nop

000009c8 <__frame_dummy_init_array_entry>:
 9c8:	0165 0000 07f9 0000                         e.......

000009d0 <_init>:
 9d0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 9d2:	bf00      	nop
 9d4:	bcf8      	pop	{r3, r4, r5, r6, r7}
 9d6:	bc08      	pop	{r3}
 9d8:	469e      	mov	lr, r3
 9da:	4770      	bx	lr

000009dc <_fini>:
 9dc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 9de:	bf00      	nop

000009e0 <__do_global_dtors_aux_fini_array_entry>:
 9e0:	0141 0000 bcf8 bc08 469e 4770               A........FpG

Disassembly of section .text:Reset_Handler:

000009ec <Reset_Handler>:
 9ec:	4668      	mov	r0, sp
 9ee:	f020 0107 	bic.w	r1, r0, #7
 9f2:	468d      	mov	sp, r1
 9f4:	b581      	push	{r0, r7, lr}
 9f6:	b083      	sub	sp, #12
 9f8:	af00      	add	r7, sp, #0
 9fa:	4b12      	ldr	r3, [pc, #72]	; (a44 <zero_loop+0x20>)
 9fc:	607b      	str	r3, [r7, #4]
 9fe:	4b12      	ldr	r3, [pc, #72]	; (a48 <zero_loop+0x24>)
 a00:	603b      	str	r3, [r7, #0]
 a02:	e007      	b.n	a14 <Reset_Handler+0x28>
 a04:	687a      	ldr	r2, [r7, #4]
 a06:	1d13      	adds	r3, r2, #4
 a08:	607b      	str	r3, [r7, #4]
 a0a:	683b      	ldr	r3, [r7, #0]
 a0c:	1d19      	adds	r1, r3, #4
 a0e:	6039      	str	r1, [r7, #0]
 a10:	6812      	ldr	r2, [r2, #0]
 a12:	601a      	str	r2, [r3, #0]
 a14:	683b      	ldr	r3, [r7, #0]
 a16:	4a0d      	ldr	r2, [pc, #52]	; (a4c <zero_loop+0x28>)
 a18:	4293      	cmp	r3, r2
 a1a:	d3f3      	bcc.n	a04 <Reset_Handler+0x18>
 a1c:	480c      	ldr	r0, [pc, #48]	; (a50 <zero_loop+0x2c>)
 a1e:	490d      	ldr	r1, [pc, #52]	; (a54 <zero_loop+0x30>)
 a20:	f04f 0200 	mov.w	r2, #0

00000a24 <zero_loop>:
 a24:	4288      	cmp	r0, r1
 a26:	bfb8      	it	lt
 a28:	f840 2b04 	strlt.w	r2, [r0], #4
 a2c:	dbfa      	blt.n	a24 <zero_loop>
 a2e:	f7ff fe1d 	bl	66c <SystemInit>
 a32:	f7ff fbe3 	bl	1fc <main>
 a36:	bf00      	nop
 a38:	370c      	adds	r7, #12
 a3a:	46bd      	mov	sp, r7
 a3c:	e8bd 4081 	ldmia.w	sp!, {r0, r7, lr}
 a40:	4685      	mov	sp, r0
 a42:	4770      	bx	lr
 a44:	00000adc 	.word	0x00000adc
 a48:	20000000 	.word	0x20000000
 a4c:	2000043c 	.word	0x2000043c
 a50:	2000043c 	.word	0x2000043c
 a54:	20000488 	.word	0x20000488

Disassembly of section .text:NMI_Handler:

00000a58 <NMI_Handler>:
 a58:	4668      	mov	r0, sp
 a5a:	f020 0107 	bic.w	r1, r0, #7
 a5e:	468d      	mov	sp, r1
 a60:	b481      	push	{r0, r7}
 a62:	af00      	add	r7, sp, #0
 a64:	e7fe      	b.n	a64 <NMI_Handler+0xc>

Disassembly of section .text:HardFault_Handler:

00000a66 <HardFault_Handler>:
 a66:	4668      	mov	r0, sp
 a68:	f020 0107 	bic.w	r1, r0, #7
 a6c:	468d      	mov	sp, r1
 a6e:	b481      	push	{r0, r7}
 a70:	af00      	add	r7, sp, #0
 a72:	e7fe      	b.n	a72 <HardFault_Handler+0xc>

Disassembly of section .text:Default_Handler:

00000a74 <Default_Handler>:
 a74:	4668      	mov	r0, sp
 a76:	f020 0107 	bic.w	r1, r0, #7
 a7a:	468d      	mov	sp, r1
 a7c:	b481      	push	{r0, r7}
 a7e:	af00      	add	r7, sp, #0
 a80:	e7fe      	b.n	a80 <Default_Handler+0xc>
