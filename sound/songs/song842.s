	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song842_1
song842_1:	@ 0x08584810
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 8
	.byte	VOL	, v080
	.byte	BEND	, c_v
	.byte		N96	, Cn3, v092
	.byte	W96
	.byte	FINE

	.align 2
	.global song842
song842:	@ 0x08584820
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	0		@ reverb

	.word	voicegroup039		@ voicegroup/tone

	.word	song842_1		@ track