	.arch armv8.5-a
	.build_version macos,  13, 0
	.text
	.section __TEXT,__text_startup,regular,pure_instructions
	.align	2
	.p2align 5,,15
	.globl _main
_main:
LFB2669:
	sub	sp, sp, #16
LCFI0:
	mov	w1, 4227
	mov	w0, 0
	str	w1, [sp, 12]
	add	sp, sp, 16
LCFI1:
	ret
LFE2669:
	.section	__TEXT,__StaticInit,regular,pure_instructions
	.align	2
	.p2align 5,,15
__GLOBAL__sub_I_compiletime_sieve.cpp:
LFB3364:
	adrp	x1, __ZStL8__ioinit@PAGE
	stp	x29, x30, [sp, -32]!
LCFI2:
	mov	x29, sp
LCFI3:
	add	x1, x1, __ZStL8__ioinit@PAGEOFF;
	mov	x0, x1
	str	x1, [x29, 24]
	bl	__ZNSt8ios_base4InitC1Ev
	adrp	x2, ___dso_handle@PAGE
	ldr	x1, [x29, 24]
	add	x2, x2, ___dso_handle@PAGEOFF;
	ldp	x29, x30, [sp], 32
LCFI4:
	adrp	x0, __ZNSt8ios_base4InitD1Ev@GOTPAGE
	ldr	x0, [x0, __ZNSt8ios_base4InitD1Ev@GOTPAGEOFF]
	b	___cxa_atexit
LFE3364:
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
	.quad	LFB2669-.
	.set L$set$2,LFE2669-LFB2669
	.quad L$set$2
	.uleb128 0
	.byte	0x4
	.set L$set$3,LCFI0-LFB2669
	.long L$set$3
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.set L$set$4,LCFI1-LCFI0
	.long L$set$4
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE1:
LSFDE3:
	.set L$set$5,LEFDE3-LASFDE3
	.long L$set$5
LASFDE3:
	.long	LASFDE3-EH_frame1
	.quad	LFB3364-.
	.set L$set$6,LFE3364-LFB3364
	.quad L$set$6
	.uleb128 0
	.byte	0x4
	.set L$set$7,LCFI2-LFB3364
	.long L$set$7
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$8,LCFI3-LCFI2
	.long L$set$8
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$9,LCFI4-LCFI3
	.long L$set$9
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
	.xword	__GLOBAL__sub_I_compiletime_sieve.cpp
	.subsections_via_symbols
