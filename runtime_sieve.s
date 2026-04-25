	.arch armv8.5-a
	.build_version macos,  13, 0
	.text
	.section __TEXT,__text_startup,regular,pure_instructions
	.align	2
	.p2align 5,,15
	.globl _main
_main:
LFB2665:
	sub	sp, sp, #832
LCFI0:
	mov	w1, 1
	mov	x2, 804
	stp	x29, x30, [sp]
LCFI1:
	mov	x29, sp
LCFI2:
	add	x0, x29, 24
	bl	_memset
	mov	x3, x0
	mov	w0, 2
	lsl	w1, w0, 1
	cmp	w1, 200
	bgt	L4
	.p2align 5,,15
L7:
	ubfiz	x4, x0, 2, 32
	add	x2, x3, w1, uxtw 2
	.p2align 5,,15
L5:
	add	w1, w1, w0
	str	wzr, [x2]
	add	x2, x2, x4
	cmp	w1, 200
	ble	L5
	add	w2, w0, 1
	cmp	w2, 14
	bgt	L4
	ldr	w1, [x3, w2, sxtw 2]
	cbnz	w1, L19
	add	w1, w0, 2
	mov	w0, w2
	add	x1, x3, x1, lsl 2
	.p2align 5,,15
L3:
	ldr	w2, [x1], 4
	add	w0, w0, 1
	cbz	w2, L3
	lsl	w1, w0, 1
	cmp	w1, 200
	ble	L7
L4:
	add	x1, x29, 32
	mov	w0, 2
	str	wzr, [x29, 20]
	.p2align 5,,15
L9:
	ldr	w2, [x1]
	add	x1, x1, 4
	cbz	w2, L8
	ldr	w2, [x29, 20]
	add	w2, w2, w0
	str	w2, [x29, 20]
L8:
	add	w0, w0, 1
	cmp	w0, 201
	bne	L9
	ldp	x29, x30, [sp]
	mov	w0, 0
	add	sp, sp, 832
LCFI3:
	ret
L19:
LCFI4:
	lsl	w1, w2, 1
	mov	w0, w2
	b	L7
LFE2665:
	.section	__TEXT,__StaticInit,regular,pure_instructions
	.align	2
	.p2align 5,,15
__GLOBAL__sub_I_runtime_sieve.cpp:
LFB3360:
	adrp	x1, __ZStL8__ioinit@PAGE
	stp	x29, x30, [sp, -32]!
LCFI5:
	mov	x29, sp
LCFI6:
	add	x1, x1, __ZStL8__ioinit@PAGEOFF;
	mov	x0, x1
	str	x1, [x29, 24]
	bl	__ZNSt8ios_base4InitC1Ev
	adrp	x2, ___dso_handle@PAGE
	ldr	x1, [x29, 24]
	add	x2, x2, ___dso_handle@PAGEOFF;
	ldp	x29, x30, [sp], 32
LCFI7:
	adrp	x0, __ZNSt8ios_base4InitD1Ev@GOTPAGE
	ldr	x0, [x0, __ZNSt8ios_base4InitD1Ev@GOTPAGEOFF]
	b	___cxa_atexit
LFE3360:
	.zerofill __DATA,__bss,__ZStL8__ioinit,1,0
	.section __TEXT,__eh_frame,coalesced,no_toc+strip_static_syms+live_support
EH_frame1:
	.set L$set$0,LECIE1-LSCIE1
	.long L$set$0
LSCIE1:
	.long	0
	.byte	0x3
	.ascii "zR\0"
	.uleb128 0x1
	.sleb128 -8
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x10
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LECIE1:
LSFDE1:
	.set L$set$1,LEFDE1-LASFDE1
	.long L$set$1
LASFDE1:
	.long	LASFDE1-EH_frame1
	.quad	LFB2665-.
	.set L$set$2,LFE2665-LFB2665
	.quad L$set$2
	.uleb128 0
	.byte	0x4
	.set L$set$3,LCFI0-LFB2665
	.long L$set$3
	.byte	0xe
	.uleb128 0x340
	.byte	0x4
	.set L$set$4,LCFI1-LCFI0
	.long L$set$4
	.byte	0x9d
	.uleb128 0x68
	.byte	0x9e
	.uleb128 0x67
	.byte	0x4
	.set L$set$5,LCFI2-LCFI1
	.long L$set$5
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$6,LCFI3-LCFI2
	.long L$set$6
	.byte	0xa
	.byte	0xdd
	.byte	0xde
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$7,LCFI4-LCFI3
	.long L$set$7
	.byte	0xb
	.align	3
LEFDE1:
LSFDE3:
	.set L$set$8,LEFDE3-LASFDE3
	.long L$set$8
LASFDE3:
	.long	LASFDE3-EH_frame1
	.quad	LFB3360-.
	.set L$set$9,LFE3360-LFB3360
	.quad L$set$9
	.uleb128 0
	.byte	0x4
	.set L$set$10,LCFI5-LFB3360
	.long L$set$10
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$11,LCFI6-LCFI5
	.long L$set$11
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$12,LCFI7-LCFI6
	.long L$set$12
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE3:
	.private_extern ___dso_handle
	.ident	"GCC: (Homebrew GCC 15.2.0_1) 15.2.0"
	.mod_init_func
_Mod.init:
	.align	3
	.xword	__GLOBAL__sub_I_runtime_sieve.cpp
	.subsections_via_symbols
