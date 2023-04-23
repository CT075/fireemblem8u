	.section .data

	.global ProcScr_efxHPBarResire
ProcScr_efxHPBarResire:  @ 0x085B962C
        @ PROC_NAME
        .short 0x1, 0x0
        .word 0x80da3f0
        @ PROC_REPEAT
        .short 0x3, 0x0
        .word EfxHPBarResire_80526C8
        @ PROC_REPEAT
        .short 0x3, 0x0
        .word EfxHPBarResire_8052788
        @ PROC_REPEAT
        .short 0x3, 0x0
        .word EfxHPBarResire_805282C
        @ PROC_REPEAT
        .short 0x3, 0x0
        .word efxHPBar_8052504
        @ PROC_REPEAT
        .short 0x3, 0x0
        .word efxHPBar_80525A4
        @ PROC_END
        .short 0x0, 0x0
        .word 0x0


	.global gProc_efxAvoid
gProc_efxAvoid:  @ 0x085B9664
        @ PROC_NAME
        .short 0x1, 0x0
        .word 0x80da400
        @ PROC_REPEAT
        .short 0x3, 0x0
        .word EfxAvoid_80529F0
        @ PROC_REPEAT
        .short 0x3, 0x0
        .word efxHPBar_8052504
        @ PROC_REPEAT
        .short 0x3, 0x0
        .word efxHPBar_80525A4
        @ PROC_END
        .short 0x0, 0x0
        .word 0x0


	.global ProcScr_efxHPBarLive
ProcScr_efxHPBarLive:  @ 0x085B968C
        @ PROC_NAME
        .short 0x1, 0x0
        .word 0x80da40c
        @ PROC_REPEAT
        .short 0x3, 0x0
        .word EfxHPBarLive_8052AE4
        @ PROC_REPEAT
        .short 0x3, 0x0
        .word efxHPBar_8052504
        @ PROC_REPEAT
        .short 0x3, 0x0
        .word efxHPBar_80525A4
        @ PROC_END
        .short 0x0, 0x0
        .word 0x0


	.global gProc_efxNoDamage
gProc_efxNoDamage:  @ 0x085B96B4
        @ PROC_NAME
        .short 0x1, 0x0
        .word 0x80da41c
        @ PROC_REPEAT
        .short 0x3, 0x0
        .word EfxNoDamage_8052C24
        @ PROC_REPEAT
        .short 0x3, 0x0
        .word efxHPBar_8052504
        @ PROC_REPEAT
        .short 0x3, 0x0
        .word efxHPBar_80525A4
        @ PROC_END
        .short 0x0, 0x0
        .word 0x0


	.global gProc_efxNoDamageYure
gProc_efxNoDamageYure:  @ 0x085B96DC
        @ PROC_NAME
        .short 0x1, 0x0
        .word 0x80da428
        @ PROC_REPEAT
        .short 0x3, 0x0
        .word EfxNoDamageYure_8052CA0
        @ PROC_END
        .short 0x0, 0x0
        .word 0x0


	.global gProc_efxStatusCHG
gProc_efxStatusCHG:  @ 0x085B96F4
        @ PROC_NAME
        .short 0x1, 0x0
        .word 0x80da454
        @ PROC_MARK
        .short 0xf, 0xa
        .word 0x0
        @ PROC_REPEAT
        .short 0x3, 0x0
        .word EfxStatusCHG_8052CA0
        @ PROC_REPEAT
        .short 0x3, 0x0
        .word efxHPBar_8052504
        @ PROC_REPEAT
        .short 0x3, 0x0
        .word efxHPBar_80525A4
        @ PROC_END
        .short 0x0, 0x0
        .word 0x0


	.global gProc_efxDeadEvent
gProc_efxDeadEvent:  @ 0x085B9724
        @ PROC_NAME
        .short 0x1, 0x0
        .word 0x80da464
        @ PROC_REPEAT
        .short 0x3, 0x0
        .word sub_8052DFC
        @ PROC_REPEAT
        .short 0x3, 0x0
        .word sub_8052E7C
        @ PROC_REPEAT
        .short 0x3, 0x0
        .word sub_8052EAC
        @ PROC_REPEAT
        .short 0x3, 0x0
        .word sub_8052F24
        @ PROC_REPEAT
        .short 0x3, 0x0
        .word sub_8052F84
        @ PROC_END
        .short 0x0, 0x0
        .word 0x0


	.global gProc_efxDead
gProc_efxDead:  @ 0x085B975C
        @ PROC_NAME
        .short 0x1, 0x0
        .word 0x80da474
        @ PROC_REPEAT
        .short 0x3, 0x0
        .word sub_8052FEC
        @ PROC_REPEAT
        .short 0x3, 0x0
        .word sub_8053080
        @ PROC_END
        .short 0x0, 0x0
        .word 0x0


	.global gProc_efxDeadPika
gProc_efxDeadPika:  @ 0x085B977C
        @ PROC_NAME
        .short 0x1, 0x0
        .word 0x80da47c
        @ PROC_REPEAT
        .short 0x3, 0x0
        .word sub_8053144
        @ PROC_END
        .short 0x0, 0x0
        .word 0x0


	.global gProc_efxDeadAlpha
gProc_efxDeadAlpha:  @ 0x085B9794
        @ PROC_NAME
        .short 0x1, 0x0
        .word 0x80da488
        @ PROC_REPEAT
        .short 0x3, 0x0
        .word sub_805320C
        @ PROC_END
        .short 0x0, 0x0
        .word 0x0


	.global gProc_efxDeadDragonAlpha
gProc_efxDeadDragonAlpha:  @ 0x085B97AC
        @ PROC_NAME
        .short 0x1, 0x0
        .word 0x80da498
        @ PROC_REPEAT
        .short 0x3, 0x0
        .word sub_8053368
        @ PROC_END
        .short 0x0, 0x0
        .word 0x0


	.global gProc_efxFarAttack
gProc_efxFarAttack:  @ 0x085B97C4
        @ PROC_NAME
        .short 0x1, 0x0
        .word 0x80da4ac
        @ PROC_REPEAT
        .short 0x3, 0x0
        .word sub_80534E4
        @ PROC_REPEAT
        .short 0x3, 0x0
        .word sub_8053514
        @ PROC_REPEAT
        .short 0x3, 0x0
        .word sub_8053584
        @ PROC_END
        .short 0x0, 0x0
        .word 0x0


	.global gProc_efxQuakePure
gProc_efxQuakePure:  @ 0x085B97EC
        @ PROC_NAME
        .short 0x1, 0x0
        .word 0x80dabc0
        @ PROC_REPEAT
        .short 0x3, 0x0
        .word sub_80536B8
        @ PROC_END
        .short 0x0, 0x0
        .word 0x0


	.global gUnknown_085B9804
gUnknown_085B9804:  @ 0x085B9804
    .4byte gUnknown_080DA4BA
    .4byte 0
    .4byte gUnknown_080DA4DC
    .4byte 0
    .4byte gUnknown_080DA526
    .4byte 0
    .4byte gUnknown_080DA570
    .4byte 0
    .4byte gUnknown_080DA5BA
    .4byte 0
    .4byte gUnknown_080DA604
    .4byte 0
    .4byte gUnknown_080DA66E + 0xb2
    .4byte 0
    .4byte gUnknown_080DA66E + 0xc4
    .4byte 0
    .4byte gUnknown_080DA66E + 0xe6
    .4byte 0
    .4byte gUnknown_080DA66E + 0xf8
    .4byte 0
    .4byte gUnknown_080DA66E + 0x10a
    .4byte 0
    .4byte gUnknown_080DA66E + 0x11c
    .4byte 0
    .4byte gUnknown_080DA66E + 0x1d2
    .4byte 0
    .4byte gUnknown_080DA66E + 0x1e4
    .4byte 0
    .4byte gUnknown_080DA66E + 0x1f6
    .4byte 0
    .4byte gUnknown_080DA66E + 0x208
    .4byte 0

	.global gProc_efxHitQuakePure
gProc_efxHitQuakePure:  @ 0x085B9884
        @ PROC_NAME
        .short 0x1, 0x0
        .word 0x80dabd0
        @ PROC_REPEAT
        .short 0x3, 0x0
        .word nullsub_56
        @ PROC_END
        .short 0x0, 0x0
        .word 0x0


	.global gProc_efxQuake
gProc_efxQuake:  @ 0x085B989C
        @ PROC_NAME
        .short 0x1, 0x0
        .word 0x80dabe0
        @ PROC_REPEAT
        .short 0x3, 0x0
        .word sub_805382C
        @ PROC_END
        .short 0x0, 0x0
        .word 0x0


	.global gProc_efxHitQuake
gProc_efxHitQuake:  @ 0x085B98B4
        @ PROC_NAME
        .short 0x1, 0x0
        .word 0x80dabec
        @ PROC_REPEAT
        .short 0x3, 0x0
        .word sub_8053BBC
        @ PROC_END
        .short 0x0, 0x0
        .word 0x0


	.global gProc_efxFlashBG
gProc_efxFlashBG:  @ 0x085B98CC
        @ PROC_NAME
        .short 0x1, 0x0
        .word 0x80dabf8
        @ PROC_MARK
        .short 0xf, 0xa
        .word 0x0
        @ PROC_REPEAT
        .short 0x3, 0x0
        .word sub_8053FE4
        @ PROC_REPEAT
        .short 0x3, 0x0
        .word sub_805401C
        @ PROC_END
        .short 0x0, 0x0
        .word 0x0


	.global gProc_efxWhiteOUT
gProc_efxWhiteOUT:  @ 0x085B98F4
        @ PROC_NAME
        .short 0x1, 0x0
        .word 0x80dac04
        @ PROC_REPEAT
        .short 0x3, 0x0
        .word sub_8054054
        @ PROC_REPEAT
        .short 0x3, 0x0
        .word sub_80540B0
        @ PROC_REPEAT
        .short 0x3, 0x0
        .word sub_8054120
        @ PROC_END
        .short 0x0, 0x0
        .word 0x0


	.global gProc_efxWhiteIN
gProc_efxWhiteIN:  @ 0x085B991C
        @ PROC_NAME
        .short 0x1, 0x0
        .word 0x80dac10
        @ PROC_REPEAT
        .short 0x3, 0x0
        .word sub_8054158
        @ PROC_REPEAT
        .short 0x3, 0x0
        .word sub_80541B4
        @ PROC_REPEAT
        .short 0x3, 0x0
        .word sub_8054224
        @ PROC_END
        .short 0x0, 0x0
        .word 0x0


	.global gProc_efxBlackOUT
gProc_efxBlackOUT:  @ 0x085B9944
        @ PROC_NAME
        .short 0x1, 0x0
        .word 0x80dac1c
        @ PROC_REPEAT
        .short 0x3, 0x0
        .word sub_805425C
        @ PROC_REPEAT
        .short 0x3, 0x0
        .word sub_80542B8
        @ PROC_REPEAT
        .short 0x3, 0x0
        .word sub_8054328
        @ PROC_END
        .short 0x0, 0x0
        .word 0x0


	.global gProc_efxBlackIN
gProc_efxBlackIN:  @ 0x085B996C
        @ PROC_NAME
        .short 0x1, 0x0
        .word 0x80dac28
        @ PROC_REPEAT
        .short 0x3, 0x0
        .word sub_8054360
        @ PROC_REPEAT
        .short 0x3, 0x0
        .word sub_80543BC
        @ PROC_REPEAT
        .short 0x3, 0x0
        .word sub_805442C
        @ PROC_END
        .short 0x0, 0x0
        .word 0x0


	.global gProc_efxFlashHPBar
gProc_efxFlashHPBar:  @ 0x085B9994
        @ PROC_NAME
        .short 0x1, 0x0
        .word 0x80dac34
        @ PROC_MARK
        .short 0xf, 0xa
        .word 0x0
        @ PROC_REPEAT
        .short 0x3, 0x0
        .word sub_8054478
        @ PROC_REPEAT
        .short 0x3, 0x0
        .word sub_8054498
        @ PROC_REPEAT
        .short 0x3, 0x0
        .word sub_805452C
        @ PROC_END
        .short 0x0, 0x0
        .word 0x0


	.global ProcScr_efxHPBarColorChange
ProcScr_efxHPBarColorChange:  @ 0x085B99C4
        @ PROC_NAME
        .short 0x1, 0x0
        .word 0x80dac44
        @ PROC_MARK
        .short 0xf, 0xa
        .word 0x0
        @ PROC_REPEAT
        .short 0x3, 0x0
        .word sub_80546E4
        @ PROC_END
        .short 0x0, 0x0
        .word 0x0


	.global gProc_efxFlashUnit
gProc_efxFlashUnit:  @ 0x085B99E4
        @ PROC_NAME
        .short 0x1, 0x0
        .word 0x80daca4
        @ PROC_MARK
        .short 0xf, 0xa
        .word 0x0
        @ PROC_REPEAT
        .short 0x3, 0x0
        .word sub_8054818
        @ PROC_REPEAT
        .short 0x3, 0x0
        .word sub_8054888
        @ PROC_END
        .short 0x0, 0x0
        .word 0x0


	.global gProc_efxFlashUnitEffect
gProc_efxFlashUnitEffect:  @ 0x085B9A0C
        @ PROC_NAME
        .short 0x1, 0x0
        .word 0x80dacb4
        @ PROC_MARK
        .short 0xf, 0xa
        .word 0x0
        @ PROC_REPEAT
        .short 0x3, 0x0
        .word sub_8054930
        @ PROC_REPEAT
        .short 0x3, 0x0
        .word sub_80549BC
        @ PROC_END
        .short 0x0, 0x0
        .word 0x0


	.global gProc_efxStatusUnit
gProc_efxStatusUnit:  @ 0x085B9A34
        @ PROC_NAME
        .short 0x1, 0x0
        .word 0x80daccc
        @ PROC_MARK
        .short 0xf, 0xa
        .word 0x0
        @ PROC_SET_END_CB
        .short 0x4, 0x0
        .word sub_8054E4C
        @ PROC_REPEAT
        .short 0x3, 0x0
        .word sub_8054C94
        @ PROC_END
        .short 0x0, 0x0
        .word 0x0


	.global gProc_efxWeaponIcon
gProc_efxWeaponIcon:  @ 0x085B9A5C
        @ PROC_NAME
        .short 0x1, 0x0
        .word 0x80dacfc
        @ PROC_MARK
        .short 0xf, 0xa
        .word 0x0
        @ PROC_SET_END_CB
        .short 0x4, 0x0
        .word sub_8054F78
        @ PROC_REPEAT
        .short 0x3, 0x0
        .word sub_8054F10
        @ PROC_END
        .short 0x0, 0x0
        .word 0x0


	.global gProc_efxSpellCast
gProc_efxSpellCast:  @ 0x085B9A84
        @ PROC_NAME
        .short 0x1, 0x0
        .word 0x80dad38
        @ PROC_MARK
        .short 0xf, 0xa
        .word 0x0
        @ PROC_REPEAT
        .short 0x3, 0x0
        .word sub_8055038
        @ PROC_REPEAT
        .short 0x3, 0x0
        .word sub_805509C
        @ PROC_REPEAT
        .short 0x3, 0x0
        .word sub_80550DC
        @ PROC_END
        .short 0x0, 0x0
        .word 0x0


	.global gProc_efxspdquake
gProc_efxspdquake:  @ 0x085B9AB4
        @ PROC_NAME
        .short 0x1, 0x0
        .word 0x80dad48
        @ PROC_REPEAT
        .short 0x3, 0x0
        .word sub_8055A64
        @ PROC_REPEAT
        .short 0x3, 0x0
        .word sub_8055B38
        @ PROC_END
        .short 0x0, 0x0
        .word 0x0
